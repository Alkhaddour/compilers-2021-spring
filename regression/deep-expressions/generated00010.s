	.global	main
	.data
global_x0:	.int	0
global_x1:	.int	0
global_x2:	.int	0
global_x3:	.int	0
global_y:	.int	0
	.text
main:
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$20,	%esp
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
# READ
	call	Lread
	movl	%eax,	%ebx
# ST x2
	movl	%ebx,	global_x2
# READ
	call	Lread
	movl	%eax,	%ebx
# ST x3
	movl	%ebx,	global_x3
# CONST 833
	movl	$833,	%ebx
# CONST 158
	movl	$158,	%ecx
# BINOP *
	movl	%ecx,	%eax
	imull	%ebx,	%eax
	movl	%eax,	%ebx
# LD x0
	movl	global_x0,	%ecx
# CONST 656
	movl	$656,	%esi
# BINOP >=
	movl	%esi,	%eax
	cmpl	%eax,	%ecx
	movl	$0,	%eax
	setge	%al
	movl	%eax,	%ecx
# BINOP !!
	movl	$0,	%eax
	cmpl	%ecx,	%eax
	setne	%al
	movl	%eax,	%ecx
	movl	$0,	%eax
	cmpl	%ebx,	%eax
	setne	%al
	orl	%ecx,	%eax
	movl	%eax,	%ebx
# CONST 866
	movl	$866,	%ecx
# LD x3
	movl	global_x3,	%esi
# BINOP +
	movl	%esi,	%eax
	addl	%eax,	%ecx
# CONST 743
	movl	$743,	%esi
# LD x0
	movl	global_x0,	%edi
# BINOP ==
	movl	%edi,	%eax
	cmpl	%eax,	%esi
	movl	$0,	%eax
	sete	%al
	movl	%eax,	%esi
# BINOP >
	movl	%esi,	%eax
	cmpl	%eax,	%ecx
	movl	$0,	%eax
	setg	%al
	movl	%eax,	%ecx
# BINOP +
	movl	%ecx,	%eax
	addl	%eax,	%ebx
# CONST 744
	movl	$744,	%ecx
# LD x1
	movl	global_x1,	%esi
# BINOP ==
	movl	%esi,	%eax
	cmpl	%eax,	%ecx
	movl	$0,	%eax
	sete	%al
	movl	%eax,	%ecx
# LD x3
	movl	global_x3,	%esi
# LD x1
	movl	global_x1,	%edi
# BINOP *
	movl	%edi,	%eax
	imull	%esi,	%eax
	movl	%eax,	%esi
# BINOP >=
	movl	%esi,	%eax
	cmpl	%eax,	%ecx
	movl	$0,	%eax
	setge	%al
	movl	%eax,	%ecx
# LD x1
	movl	global_x1,	%esi
# CONST 123
	movl	$123,	%edi
# BINOP >
	movl	%edi,	%eax
	cmpl	%eax,	%esi
	movl	$0,	%eax
	setg	%al
	movl	%eax,	%esi
# CONST 348
	movl	$348,	%edi
# CONST 185
	movl	$185,	-4(%ebp)
# BINOP >
	movl	-4(%ebp),	%eax
	cmpl	%eax,	%edi
	movl	$0,	%eax
	setg	%al
	movl	%eax,	%edi
# BINOP ==
	movl	%edi,	%eax
	cmpl	%eax,	%esi
	movl	$0,	%eax
	sete	%al
	movl	%eax,	%esi
# BINOP <=
	movl	%esi,	%eax
	cmpl	%eax,	%ecx
	movl	$0,	%eax
	setle	%al
	movl	%eax,	%ecx
# BINOP *
	movl	%ecx,	%eax
	imull	%ebx,	%eax
	movl	%eax,	%ebx
# CONST 607
	movl	$607,	%ecx
# LD x1
	movl	global_x1,	%esi
# BINOP >=
	movl	%esi,	%eax
	cmpl	%eax,	%ecx
	movl	$0,	%eax
	setge	%al
	movl	%eax,	%ecx
# LD x2
	movl	global_x2,	%esi
# LD x2
	movl	global_x2,	%edi
# BINOP &&
	movl	$0,	%eax
	cmpl	%edi,	%eax
	setne	%al
	movl	%eax,	%edi
	movl	$0,	%eax
	cmpl	%esi,	%eax
	setne	%al
	andl	%edi,	%eax
	movl	%eax,	%esi
# BINOP !!
	movl	$0,	%eax
	cmpl	%esi,	%eax
	setne	%al
	movl	%eax,	%esi
	movl	$0,	%eax
	cmpl	%ecx,	%eax
	setne	%al
	orl	%esi,	%eax
	movl	%eax,	%ecx
# CONST 6
	movl	$6,	%esi
# CONST 729
	movl	$729,	%edi
# BINOP ==
	movl	%edi,	%eax
	cmpl	%eax,	%esi
	movl	$0,	%eax
	sete	%al
	movl	%eax,	%esi
# LD x2
	movl	global_x2,	%edi
# CONST 151
	movl	$151,	-4(%ebp)
# BINOP !!
	movl	$0,	%eax
	cmpl	-4(%ebp),	%eax
	setne	%al
	movl	%eax,	-4(%ebp)
	movl	$0,	%eax
	cmpl	%edi,	%eax
	setne	%al
	orl	-4(%ebp),	%eax
	movl	%eax,	%edi
# BINOP ==
	movl	%edi,	%eax
	cmpl	%eax,	%esi
	movl	$0,	%eax
	sete	%al
	movl	%eax,	%esi
# BINOP >=
	movl	%esi,	%eax
	cmpl	%eax,	%ecx
	movl	$0,	%eax
	setge	%al
	movl	%eax,	%ecx
# LD x3
	movl	global_x3,	%esi
# LD x2
	movl	global_x2,	%edi
# BINOP +
	movl	%edi,	%eax
	addl	%eax,	%esi
# LD x3
	movl	global_x3,	%edi
# CONST 770
	movl	$770,	-4(%ebp)
# BINOP +
	movl	-4(%ebp),	%eax
	addl	%eax,	%edi
# BINOP -
	movl	%edi,	%eax
	subl	%eax,	%esi
# LD x1
	movl	global_x1,	%edi
# CONST 237
	movl	$237,	-4(%ebp)
# BINOP *
	movl	-4(%ebp),	%eax
	imull	%edi,	%eax
	movl	%eax,	%edi
# LD x0
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
# CONST 326
	movl	$326,	-8(%ebp)
# BINOP &&
	movl	$0,	%eax
	cmpl	-8(%ebp),	%eax
	setne	%al
	movl	%eax,	-8(%ebp)
	movl	$0,	%eax
	cmpl	-4(%ebp),	%eax
	setne	%al
	andl	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
# BINOP !!
	movl	$0,	%eax
	cmpl	-4(%ebp),	%eax
	setne	%al
	movl	%eax,	-4(%ebp)
	movl	$0,	%eax
	cmpl	%edi,	%eax
	setne	%al
	orl	-4(%ebp),	%eax
	movl	%eax,	%edi
# BINOP >=
	movl	%edi,	%eax
	cmpl	%eax,	%esi
	movl	$0,	%eax
	setge	%al
	movl	%eax,	%esi
# BINOP &&
	movl	$0,	%eax
	cmpl	%esi,	%eax
	setne	%al
	movl	%eax,	%esi
	movl	$0,	%eax
	cmpl	%ecx,	%eax
	setne	%al
	andl	%esi,	%eax
	movl	%eax,	%ecx
# BINOP *
	movl	%ecx,	%eax
	imull	%ebx,	%eax
	movl	%eax,	%ebx
# LD x1
	movl	global_x1,	%ecx
# LD x1
	movl	global_x1,	%esi
# BINOP !=
	movl	%esi,	%eax
	cmpl	%eax,	%ecx
	movl	$0,	%eax
	setne	%al
	movl	%eax,	%ecx
# LD x3
	movl	global_x3,	%esi
# CONST 933
	movl	$933,	%edi
# BINOP !!
	movl	$0,	%eax
	cmpl	%edi,	%eax
	setne	%al
	movl	%eax,	%edi
	movl	$0,	%eax
	cmpl	%esi,	%eax
	setne	%al
	orl	%edi,	%eax
	movl	%eax,	%esi
# BINOP !!
	movl	$0,	%eax
	cmpl	%esi,	%eax
	setne	%al
	movl	%eax,	%esi
	movl	$0,	%eax
	cmpl	%ecx,	%eax
	setne	%al
	orl	%esi,	%eax
	movl	%eax,	%ecx
# LD x0
	movl	global_x0,	%esi
# LD x1
	movl	global_x1,	%edi
# BINOP <=
	movl	%edi,	%eax
	cmpl	%eax,	%esi
	movl	$0,	%eax
	setle	%al
	movl	%eax,	%esi
# CONST 528
	movl	$528,	%edi
# CONST 165
	movl	$165,	-4(%ebp)
# BINOP !!
	movl	$0,	%eax
	cmpl	-4(%ebp),	%eax
	setne	%al
	movl	%eax,	-4(%ebp)
	movl	$0,	%eax
	cmpl	%edi,	%eax
	setne	%al
	orl	-4(%ebp),	%eax
	movl	%eax,	%edi
# BINOP +
	movl	%edi,	%eax
	addl	%eax,	%esi
# BINOP !=
	movl	%esi,	%eax
	cmpl	%eax,	%ecx
	movl	$0,	%eax
	setne	%al
	movl	%eax,	%ecx
# CONST 323
	movl	$323,	%esi
# LD x3
	movl	global_x3,	%edi
# BINOP *
	movl	%edi,	%eax
	imull	%esi,	%eax
	movl	%eax,	%esi
# CONST 517
	movl	$517,	%edi
# LD x1
	movl	global_x1,	%eax
	movl	%eax,	-4(%ebp)
# BINOP >=
	movl	-4(%ebp),	%eax
	cmpl	%eax,	%edi
	movl	$0,	%eax
	setge	%al
	movl	%eax,	%edi
# BINOP ==
	movl	%edi,	%eax
	cmpl	%eax,	%esi
	movl	$0,	%eax
	sete	%al
	movl	%eax,	%esi
# LD x2
	movl	global_x2,	%edi
# LD x1
	movl	global_x1,	%eax
	movl	%eax,	-4(%ebp)
# BINOP >=
	movl	-4(%ebp),	%eax
	cmpl	%eax,	%edi
	movl	$0,	%eax
	setge	%al
	movl	%eax,	%edi
# CONST 425
	movl	$425,	-4(%ebp)
# LD x3
	movl	global_x3,	%eax
	movl	%eax,	-8(%ebp)
# BINOP <
	movl	-8(%ebp),	%eax
	cmpl	%eax,	-4(%ebp)
	movl	$0,	%eax
	setl	%al
	movl	%eax,	-4(%ebp)
# BINOP <=
	movl	-4(%ebp),	%eax
	cmpl	%eax,	%edi
	movl	$0,	%eax
	setle	%al
	movl	%eax,	%edi
# BINOP *
	movl	%edi,	%eax
	imull	%esi,	%eax
	movl	%eax,	%esi
# BINOP !!
	movl	$0,	%eax
	cmpl	%esi,	%eax
	setne	%al
	movl	%eax,	%esi
	movl	$0,	%eax
	cmpl	%ecx,	%eax
	setne	%al
	orl	%esi,	%eax
	movl	%eax,	%ecx
# CONST 621
	movl	$621,	%esi
# CONST 867
	movl	$867,	%edi
# BINOP &&
	movl	$0,	%eax
	cmpl	%edi,	%eax
	setne	%al
	movl	%eax,	%edi
	movl	$0,	%eax
	cmpl	%esi,	%eax
	setne	%al
	andl	%edi,	%eax
	movl	%eax,	%esi
# CONST 459
	movl	$459,	%edi
# LD x2
	movl	global_x2,	%eax
	movl	%eax,	-4(%ebp)
# BINOP -
	movl	-4(%ebp),	%eax
	subl	%eax,	%edi
# BINOP !!
	movl	$0,	%eax
	cmpl	%edi,	%eax
	setne	%al
	movl	%eax,	%edi
	movl	$0,	%eax
	cmpl	%esi,	%eax
	setne	%al
	orl	%edi,	%eax
	movl	%eax,	%esi
# LD x1
	movl	global_x1,	%edi
# LD x2
	movl	global_x2,	%eax
	movl	%eax,	-4(%ebp)
# BINOP !=
	movl	-4(%ebp),	%eax
	cmpl	%eax,	%edi
	movl	$0,	%eax
	setne	%al
	movl	%eax,	%edi
# LD x0
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
# LD x0
	movl	global_x0,	%eax
	movl	%eax,	-8(%ebp)
# BINOP &&
	movl	$0,	%eax
	cmpl	-8(%ebp),	%eax
	setne	%al
	movl	%eax,	-8(%ebp)
	movl	$0,	%eax
	cmpl	-4(%ebp),	%eax
	setne	%al
	andl	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
# BINOP -
	movl	-4(%ebp),	%eax
	subl	%eax,	%edi
# BINOP <=
	movl	%edi,	%eax
	cmpl	%eax,	%esi
	movl	$0,	%eax
	setle	%al
	movl	%eax,	%esi
# LD x3
	movl	global_x3,	%edi
# LD x0
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
# BINOP &&
	movl	$0,	%eax
	cmpl	-4(%ebp),	%eax
	setne	%al
	movl	%eax,	-4(%ebp)
	movl	$0,	%eax
	cmpl	%edi,	%eax
	setne	%al
	andl	-4(%ebp),	%eax
	movl	%eax,	%edi
# LD x0
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
# LD x0
	movl	global_x0,	%eax
	movl	%eax,	-8(%ebp)
# BINOP ==
	movl	-8(%ebp),	%eax
	cmpl	%eax,	-4(%ebp)
	movl	$0,	%eax
	sete	%al
	movl	%eax,	-4(%ebp)
# BINOP >=
	movl	-4(%ebp),	%eax
	cmpl	%eax,	%edi
	movl	$0,	%eax
	setge	%al
	movl	%eax,	%edi
# LD x0
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
# CONST 860
	movl	$860,	-8(%ebp)
# BINOP !!
	movl	$0,	%eax
	cmpl	-8(%ebp),	%eax
	setne	%al
	movl	%eax,	-8(%ebp)
	movl	$0,	%eax
	cmpl	-4(%ebp),	%eax
	setne	%al
	orl	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
# LD x0
	movl	global_x0,	%eax
	movl	%eax,	-8(%ebp)
# LD x0
	movl	global_x0,	%eax
	movl	%eax,	-12(%ebp)
# BINOP -
	movl	-12(%ebp),	%eax
	subl	%eax,	-8(%ebp)
# BINOP !=
	movl	-8(%ebp),	%eax
	cmpl	%eax,	-4(%ebp)
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-4(%ebp)
# BINOP -
	movl	-4(%ebp),	%eax
	subl	%eax,	%edi
# BINOP !=
	movl	%edi,	%eax
	cmpl	%eax,	%esi
	movl	$0,	%eax
	setne	%al
	movl	%eax,	%esi
# BINOP &&
	movl	$0,	%eax
	cmpl	%esi,	%eax
	setne	%al
	movl	%eax,	%esi
	movl	$0,	%eax
	cmpl	%ecx,	%eax
	setne	%al
	andl	%esi,	%eax
	movl	%eax,	%ecx
# BINOP *
	movl	%ecx,	%eax
	imull	%ebx,	%eax
	movl	%eax,	%ebx
# CONST 68
	movl	$68,	%ecx
# LD x0
	movl	global_x0,	%esi
# BINOP !=
	movl	%esi,	%eax
	cmpl	%eax,	%ecx
	movl	$0,	%eax
	setne	%al
	movl	%eax,	%ecx
# CONST 598
	movl	$598,	%esi
# LD x2
	movl	global_x2,	%edi
# BINOP >
	movl	%edi,	%eax
	cmpl	%eax,	%esi
	movl	$0,	%eax
	setg	%al
	movl	%eax,	%esi
# BINOP >
	movl	%esi,	%eax
	cmpl	%eax,	%ecx
	movl	$0,	%eax
	setg	%al
	movl	%eax,	%ecx
# CONST 553
	movl	$553,	%esi
# LD x3
	movl	global_x3,	%edi
# BINOP &&
	movl	$0,	%eax
	cmpl	%edi,	%eax
	setne	%al
	movl	%eax,	%edi
	movl	$0,	%eax
	cmpl	%esi,	%eax
	setne	%al
	andl	%edi,	%eax
	movl	%eax,	%esi
# LD x1
	movl	global_x1,	%edi
# LD x3
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
# BINOP *
	movl	-4(%ebp),	%eax
	imull	%edi,	%eax
	movl	%eax,	%edi
# BINOP <=
	movl	%edi,	%eax
	cmpl	%eax,	%esi
	movl	$0,	%eax
	setle	%al
	movl	%eax,	%esi
# BINOP +
	movl	%esi,	%eax
	addl	%eax,	%ecx
# LD x0
	movl	global_x0,	%esi
# CONST 114
	movl	$114,	%edi
# BINOP +
	movl	%edi,	%eax
	addl	%eax,	%esi
# CONST 979
	movl	$979,	%edi
# CONST 565
	movl	$565,	-4(%ebp)
# BINOP <
	movl	-4(%ebp),	%eax
	cmpl	%eax,	%edi
	movl	$0,	%eax
	setl	%al
	movl	%eax,	%edi
# BINOP >
	movl	%edi,	%eax
	cmpl	%eax,	%esi
	movl	$0,	%eax
	setg	%al
	movl	%eax,	%esi
# CONST 996
	movl	$996,	%edi
# CONST 800
	movl	$800,	-4(%ebp)
# BINOP !=
	movl	-4(%ebp),	%eax
	cmpl	%eax,	%edi
	movl	$0,	%eax
	setne	%al
	movl	%eax,	%edi
# LD x0
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
# CONST 56
	movl	$56,	-8(%ebp)
# BINOP -
	movl	-8(%ebp),	%eax
	subl	%eax,	-4(%ebp)
# BINOP >=
	movl	-4(%ebp),	%eax
	cmpl	%eax,	%edi
	movl	$0,	%eax
	setge	%al
	movl	%eax,	%edi
# BINOP &&
	movl	$0,	%eax
	cmpl	%edi,	%eax
	setne	%al
	movl	%eax,	%edi
	movl	$0,	%eax
	cmpl	%esi,	%eax
	setne	%al
	andl	%edi,	%eax
	movl	%eax,	%esi
# BINOP <=
	movl	%esi,	%eax
	cmpl	%eax,	%ecx
	movl	$0,	%eax
	setle	%al
	movl	%eax,	%ecx
# CONST 387
	movl	$387,	%esi
# CONST 818
	movl	$818,	%edi
# BINOP *
	movl	%edi,	%eax
	imull	%esi,	%eax
	movl	%eax,	%esi
# CONST 541
	movl	$541,	%edi
# LD x3
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
# BINOP <
	movl	-4(%ebp),	%eax
	cmpl	%eax,	%edi
	movl	$0,	%eax
	setl	%al
	movl	%eax,	%edi
# BINOP -
	movl	%edi,	%eax
	subl	%eax,	%esi
# LD x0
	movl	global_x0,	%edi
# LD x0
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
# BINOP +
	movl	-4(%ebp),	%eax
	addl	%eax,	%edi
# CONST 807
	movl	$807,	-4(%ebp)
# LD x3
	movl	global_x3,	%eax
	movl	%eax,	-8(%ebp)
# BINOP !=
	movl	-8(%ebp),	%eax
	cmpl	%eax,	-4(%ebp)
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-4(%ebp)
# BINOP +
	movl	-4(%ebp),	%eax
	addl	%eax,	%edi
# BINOP ==
	movl	%edi,	%eax
	cmpl	%eax,	%esi
	movl	$0,	%eax
	sete	%al
	movl	%eax,	%esi
# LD x2
	movl	global_x2,	%edi
# CONST 446
	movl	$446,	-4(%ebp)
# BINOP -
	movl	-4(%ebp),	%eax
	subl	%eax,	%edi
# LD x2
	movl	global_x2,	%eax
	movl	%eax,	-4(%ebp)
# LD x2
	movl	global_x2,	%eax
	movl	%eax,	-8(%ebp)
# BINOP !=
	movl	-8(%ebp),	%eax
	cmpl	%eax,	-4(%ebp)
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-4(%ebp)
# BINOP &&
	movl	$0,	%eax
	cmpl	-4(%ebp),	%eax
	setne	%al
	movl	%eax,	-4(%ebp)
	movl	$0,	%eax
	cmpl	%edi,	%eax
	setne	%al
	andl	-4(%ebp),	%eax
	movl	%eax,	%edi
# CONST 623
	movl	$623,	-4(%ebp)
# CONST 98
	movl	$98,	-8(%ebp)
# BINOP <
	movl	-8(%ebp),	%eax
	cmpl	%eax,	-4(%ebp)
	movl	$0,	%eax
	setl	%al
	movl	%eax,	-4(%ebp)
# CONST 819
	movl	$819,	-8(%ebp)
# LD x2
	movl	global_x2,	%eax
	movl	%eax,	-12(%ebp)
# BINOP >
	movl	-12(%ebp),	%eax
	cmpl	%eax,	-8(%ebp)
	movl	$0,	%eax
	setg	%al
	movl	%eax,	-8(%ebp)
# BINOP &&
	movl	$0,	%eax
	cmpl	-8(%ebp),	%eax
	setne	%al
	movl	%eax,	-8(%ebp)
	movl	$0,	%eax
	cmpl	-4(%ebp),	%eax
	setne	%al
	andl	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
# BINOP >
	movl	-4(%ebp),	%eax
	cmpl	%eax,	%edi
	movl	$0,	%eax
	setg	%al
	movl	%eax,	%edi
# BINOP >
	movl	%edi,	%eax
	cmpl	%eax,	%esi
	movl	$0,	%eax
	setg	%al
	movl	%eax,	%esi
# BINOP <=
	movl	%esi,	%eax
	cmpl	%eax,	%ecx
	movl	$0,	%eax
	setle	%al
	movl	%eax,	%ecx
# CONST 716
	movl	$716,	%esi
# CONST 244
	movl	$244,	%edi
# BINOP -
	movl	%edi,	%eax
	subl	%eax,	%esi
# LD x1
	movl	global_x1,	%edi
# LD x0
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
# BINOP <
	movl	-4(%ebp),	%eax
	cmpl	%eax,	%edi
	movl	$0,	%eax
	setl	%al
	movl	%eax,	%edi
# BINOP *
	movl	%edi,	%eax
	imull	%esi,	%eax
	movl	%eax,	%esi
# CONST 197
	movl	$197,	%edi
# LD x3
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
# BINOP >=
	movl	-4(%ebp),	%eax
	cmpl	%eax,	%edi
	movl	$0,	%eax
	setge	%al
	movl	%eax,	%edi
# CONST 152
	movl	$152,	-4(%ebp)
# CONST 7
	movl	$7,	-8(%ebp)
# BINOP <=
	movl	-8(%ebp),	%eax
	cmpl	%eax,	-4(%ebp)
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-4(%ebp)
# BINOP >=
	movl	-4(%ebp),	%eax
	cmpl	%eax,	%edi
	movl	$0,	%eax
	setge	%al
	movl	%eax,	%edi
# BINOP &&
	movl	$0,	%eax
	cmpl	%edi,	%eax
	setne	%al
	movl	%eax,	%edi
	movl	$0,	%eax
	cmpl	%esi,	%eax
	setne	%al
	andl	%edi,	%eax
	movl	%eax,	%esi
# LD x2
	movl	global_x2,	%edi
# CONST 56
	movl	$56,	-4(%ebp)
# BINOP <
	movl	-4(%ebp),	%eax
	cmpl	%eax,	%edi
	movl	$0,	%eax
	setl	%al
	movl	%eax,	%edi
# LD x3
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
# CONST 461
	movl	$461,	-8(%ebp)
# BINOP +
	movl	-8(%ebp),	%eax
	addl	%eax,	-4(%ebp)
# BINOP -
	movl	-4(%ebp),	%eax
	subl	%eax,	%edi
# CONST 663
	movl	$663,	-4(%ebp)
# LD x2
	movl	global_x2,	%eax
	movl	%eax,	-8(%ebp)
# BINOP >=
	movl	-8(%ebp),	%eax
	cmpl	%eax,	-4(%ebp)
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-4(%ebp)
# LD x2
	movl	global_x2,	%eax
	movl	%eax,	-8(%ebp)
# CONST 683
	movl	$683,	-12(%ebp)
# BINOP &&
	movl	$0,	%eax
	cmpl	-12(%ebp),	%eax
	setne	%al
	movl	%eax,	-12(%ebp)
	movl	$0,	%eax
	cmpl	-8(%ebp),	%eax
	setne	%al
	andl	-12(%ebp),	%eax
	movl	%eax,	-8(%ebp)
# BINOP -
	movl	-8(%ebp),	%eax
	subl	%eax,	-4(%ebp)
# BINOP &&
	movl	$0,	%eax
	cmpl	-4(%ebp),	%eax
	setne	%al
	movl	%eax,	-4(%ebp)
	movl	$0,	%eax
	cmpl	%edi,	%eax
	setne	%al
	andl	-4(%ebp),	%eax
	movl	%eax,	%edi
# BINOP *
	movl	%edi,	%eax
	imull	%esi,	%eax
	movl	%eax,	%esi
# LD x1
	movl	global_x1,	%edi
# CONST 502
	movl	$502,	-4(%ebp)
# BINOP +
	movl	-4(%ebp),	%eax
	addl	%eax,	%edi
# LD x3
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
# LD x1
	movl	global_x1,	%eax
	movl	%eax,	-8(%ebp)
# BINOP >
	movl	-8(%ebp),	%eax
	cmpl	%eax,	-4(%ebp)
	movl	$0,	%eax
	setg	%al
	movl	%eax,	-4(%ebp)
# BINOP <=
	movl	-4(%ebp),	%eax
	cmpl	%eax,	%edi
	movl	$0,	%eax
	setle	%al
	movl	%eax,	%edi
# LD x0
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
# CONST 215
	movl	$215,	-8(%ebp)
# BINOP -
	movl	-8(%ebp),	%eax
	subl	%eax,	-4(%ebp)
# CONST 985
	movl	$985,	-8(%ebp)
# LD x1
	movl	global_x1,	%eax
	movl	%eax,	-12(%ebp)
# BINOP +
	movl	-12(%ebp),	%eax
	addl	%eax,	-8(%ebp)
# BINOP <=
	movl	-8(%ebp),	%eax
	cmpl	%eax,	-4(%ebp)
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-4(%ebp)
# BINOP !!
	movl	$0,	%eax
	cmpl	-4(%ebp),	%eax
	setne	%al
	movl	%eax,	-4(%ebp)
	movl	$0,	%eax
	cmpl	%edi,	%eax
	setne	%al
	orl	-4(%ebp),	%eax
	movl	%eax,	%edi
# LD x1
	movl	global_x1,	%eax
	movl	%eax,	-4(%ebp)
# CONST 210
	movl	$210,	-8(%ebp)
# BINOP >
	movl	-8(%ebp),	%eax
	cmpl	%eax,	-4(%ebp)
	movl	$0,	%eax
	setg	%al
	movl	%eax,	-4(%ebp)
# CONST 446
	movl	$446,	-8(%ebp)
# CONST 903
	movl	$903,	-12(%ebp)
# BINOP &&
	movl	$0,	%eax
	cmpl	-12(%ebp),	%eax
	setne	%al
	movl	%eax,	-12(%ebp)
	movl	$0,	%eax
	cmpl	-8(%ebp),	%eax
	setne	%al
	andl	-12(%ebp),	%eax
	movl	%eax,	-8(%ebp)
# BINOP &&
	movl	$0,	%eax
	cmpl	-8(%ebp),	%eax
	setne	%al
	movl	%eax,	-8(%ebp)
	movl	$0,	%eax
	cmpl	-4(%ebp),	%eax
	setne	%al
	andl	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
# LD x2
	movl	global_x2,	%eax
	movl	%eax,	-8(%ebp)
# LD x2
	movl	global_x2,	%eax
	movl	%eax,	-12(%ebp)
# BINOP ==
	movl	-12(%ebp),	%eax
	cmpl	%eax,	-8(%ebp)
	movl	$0,	%eax
	sete	%al
	movl	%eax,	-8(%ebp)
# LD x3
	movl	global_x3,	%eax
	movl	%eax,	-12(%ebp)
# LD x2
	movl	global_x2,	%eax
	movl	%eax,	-16(%ebp)
# BINOP <=
	movl	-16(%ebp),	%eax
	cmpl	%eax,	-12(%ebp)
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-12(%ebp)
# BINOP *
	movl	-12(%ebp),	%eax
	imull	-8(%ebp),	%eax
	movl	%eax,	-8(%ebp)
# BINOP !!
	movl	$0,	%eax
	cmpl	-8(%ebp),	%eax
	setne	%al
	movl	%eax,	-8(%ebp)
	movl	$0,	%eax
	cmpl	-4(%ebp),	%eax
	setne	%al
	orl	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
# BINOP >=
	movl	-4(%ebp),	%eax
	cmpl	%eax,	%edi
	movl	$0,	%eax
	setge	%al
	movl	%eax,	%edi
# BINOP *
	movl	%edi,	%eax
	imull	%esi,	%eax
	movl	%eax,	%esi
# BINOP <
	movl	%esi,	%eax
	cmpl	%eax,	%ecx
	movl	$0,	%eax
	setl	%al
	movl	%eax,	%ecx
# BINOP !=
	movl	%ecx,	%eax
	cmpl	%eax,	%ebx
	movl	$0,	%eax
	setne	%al
	movl	%eax,	%ebx
# CONST 997
	movl	$997,	%ecx
# LD x3
	movl	global_x3,	%esi
# BINOP -
	movl	%esi,	%eax
	subl	%eax,	%ecx
# LD x1
	movl	global_x1,	%esi
# LD x0
	movl	global_x0,	%edi
# BINOP >
	movl	%edi,	%eax
	cmpl	%eax,	%esi
	movl	$0,	%eax
	setg	%al
	movl	%eax,	%esi
# BINOP ==
	movl	%esi,	%eax
	cmpl	%eax,	%ecx
	movl	$0,	%eax
	sete	%al
	movl	%eax,	%ecx
# LD x2
	movl	global_x2,	%esi
# CONST 189
	movl	$189,	%edi
# BINOP ==
	movl	%edi,	%eax
	cmpl	%eax,	%esi
	movl	$0,	%eax
	sete	%al
	movl	%eax,	%esi
# LD x3
	movl	global_x3,	%edi
# CONST 744
	movl	$744,	-4(%ebp)
# BINOP <=
	movl	-4(%ebp),	%eax
	cmpl	%eax,	%edi
	movl	$0,	%eax
	setle	%al
	movl	%eax,	%edi
# BINOP ==
	movl	%edi,	%eax
	cmpl	%eax,	%esi
	movl	$0,	%eax
	sete	%al
	movl	%eax,	%esi
# BINOP <
	movl	%esi,	%eax
	cmpl	%eax,	%ecx
	movl	$0,	%eax
	setl	%al
	movl	%eax,	%ecx
# CONST 29
	movl	$29,	%esi
# CONST 296
	movl	$296,	%edi
# BINOP <=
	movl	%edi,	%eax
	cmpl	%eax,	%esi
	movl	$0,	%eax
	setle	%al
	movl	%eax,	%esi
# LD x3
	movl	global_x3,	%edi
# LD x2
	movl	global_x2,	%eax
	movl	%eax,	-4(%ebp)
# BINOP +
	movl	-4(%ebp),	%eax
	addl	%eax,	%edi
# BINOP >
	movl	%edi,	%eax
	cmpl	%eax,	%esi
	movl	$0,	%eax
	setg	%al
	movl	%eax,	%esi
# CONST 687
	movl	$687,	%edi
# LD x1
	movl	global_x1,	%eax
	movl	%eax,	-4(%ebp)
# BINOP +
	movl	-4(%ebp),	%eax
	addl	%eax,	%edi
# LD x1
	movl	global_x1,	%eax
	movl	%eax,	-4(%ebp)
# LD x1
	movl	global_x1,	%eax
	movl	%eax,	-8(%ebp)
# BINOP +
	movl	-8(%ebp),	%eax
	addl	%eax,	-4(%ebp)
# BINOP -
	movl	-4(%ebp),	%eax
	subl	%eax,	%edi
# BINOP +
	movl	%edi,	%eax
	addl	%eax,	%esi
# BINOP ==
	movl	%esi,	%eax
	cmpl	%eax,	%ecx
	movl	$0,	%eax
	sete	%al
	movl	%eax,	%ecx
# CONST 534
	movl	$534,	%esi
# CONST 167
	movl	$167,	%edi
# BINOP !!
	movl	$0,	%eax
	cmpl	%edi,	%eax
	setne	%al
	movl	%eax,	%edi
	movl	$0,	%eax
	cmpl	%esi,	%eax
	setne	%al
	orl	%edi,	%eax
	movl	%eax,	%esi
# CONST 246
	movl	$246,	%edi
# CONST 884
	movl	$884,	-4(%ebp)
# BINOP *
	movl	-4(%ebp),	%eax
	imull	%edi,	%eax
	movl	%eax,	%edi
# BINOP &&
	movl	$0,	%eax
	cmpl	%edi,	%eax
	setne	%al
	movl	%eax,	%edi
	movl	$0,	%eax
	cmpl	%esi,	%eax
	setne	%al
	andl	%edi,	%eax
	movl	%eax,	%esi
# LD x2
	movl	global_x2,	%edi
# CONST 675
	movl	$675,	-4(%ebp)
# BINOP <=
	movl	-4(%ebp),	%eax
	cmpl	%eax,	%edi
	movl	$0,	%eax
	setle	%al
	movl	%eax,	%edi
# LD x3
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
# CONST 241
	movl	$241,	-8(%ebp)
# BINOP *
	movl	-8(%ebp),	%eax
	imull	-4(%ebp),	%eax
	movl	%eax,	-4(%ebp)
# BINOP !!
	movl	$0,	%eax
	cmpl	-4(%ebp),	%eax
	setne	%al
	movl	%eax,	-4(%ebp)
	movl	$0,	%eax
	cmpl	%edi,	%eax
	setne	%al
	orl	-4(%ebp),	%eax
	movl	%eax,	%edi
# BINOP !!
	movl	$0,	%eax
	cmpl	%edi,	%eax
	setne	%al
	movl	%eax,	%edi
	movl	$0,	%eax
	cmpl	%esi,	%eax
	setne	%al
	orl	%edi,	%eax
	movl	%eax,	%esi
# CONST 335
	movl	$335,	%edi
# LD x3
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
# BINOP <
	movl	-4(%ebp),	%eax
	cmpl	%eax,	%edi
	movl	$0,	%eax
	setl	%al
	movl	%eax,	%edi
# LD x1
	movl	global_x1,	%eax
	movl	%eax,	-4(%ebp)
# LD x3
	movl	global_x3,	%eax
	movl	%eax,	-8(%ebp)
# BINOP >=
	movl	-8(%ebp),	%eax
	cmpl	%eax,	-4(%ebp)
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-4(%ebp)
# BINOP <=
	movl	-4(%ebp),	%eax
	cmpl	%eax,	%edi
	movl	$0,	%eax
	setle	%al
	movl	%eax,	%edi
# CONST 125
	movl	$125,	-4(%ebp)
# CONST 400
	movl	$400,	-8(%ebp)
# BINOP >
	movl	-8(%ebp),	%eax
	cmpl	%eax,	-4(%ebp)
	movl	$0,	%eax
	setg	%al
	movl	%eax,	-4(%ebp)
# LD x2
	movl	global_x2,	%eax
	movl	%eax,	-8(%ebp)
# CONST 750
	movl	$750,	-12(%ebp)
# BINOP +
	movl	-12(%ebp),	%eax
	addl	%eax,	-8(%ebp)
# BINOP *
	movl	-8(%ebp),	%eax
	imull	-4(%ebp),	%eax
	movl	%eax,	-4(%ebp)
# BINOP &&
	movl	$0,	%eax
	cmpl	-4(%ebp),	%eax
	setne	%al
	movl	%eax,	-4(%ebp)
	movl	$0,	%eax
	cmpl	%edi,	%eax
	setne	%al
	andl	-4(%ebp),	%eax
	movl	%eax,	%edi
# BINOP !!
	movl	$0,	%eax
	cmpl	%edi,	%eax
	setne	%al
	movl	%eax,	%edi
	movl	$0,	%eax
	cmpl	%esi,	%eax
	setne	%al
	orl	%edi,	%eax
	movl	%eax,	%esi
# BINOP >
	movl	%esi,	%eax
	cmpl	%eax,	%ecx
	movl	$0,	%eax
	setg	%al
	movl	%eax,	%ecx
# CONST 610
	movl	$610,	%esi
# CONST 681
	movl	$681,	%edi
# BINOP <=
	movl	%edi,	%eax
	cmpl	%eax,	%esi
	movl	$0,	%eax
	setle	%al
	movl	%eax,	%esi
# LD x2
	movl	global_x2,	%edi
# CONST 215
	movl	$215,	-4(%ebp)
# BINOP !=
	movl	-4(%ebp),	%eax
	cmpl	%eax,	%edi
	movl	$0,	%eax
	setne	%al
	movl	%eax,	%edi
# BINOP +
	movl	%edi,	%eax
	addl	%eax,	%esi
# CONST 890
	movl	$890,	%edi
# CONST 177
	movl	$177,	-4(%ebp)
# BINOP !!
	movl	$0,	%eax
	cmpl	-4(%ebp),	%eax
	setne	%al
	movl	%eax,	-4(%ebp)
	movl	$0,	%eax
	cmpl	%edi,	%eax
	setne	%al
	orl	-4(%ebp),	%eax
	movl	%eax,	%edi
# CONST 211
	movl	$211,	-4(%ebp)
# LD x3
	movl	global_x3,	%eax
	movl	%eax,	-8(%ebp)
# BINOP !=
	movl	-8(%ebp),	%eax
	cmpl	%eax,	-4(%ebp)
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-4(%ebp)
# BINOP <
	movl	-4(%ebp),	%eax
	cmpl	%eax,	%edi
	movl	$0,	%eax
	setl	%al
	movl	%eax,	%edi
# BINOP !=
	movl	%edi,	%eax
	cmpl	%eax,	%esi
	movl	$0,	%eax
	setne	%al
	movl	%eax,	%esi
# CONST 782
	movl	$782,	%edi
# CONST 575
	movl	$575,	-4(%ebp)
# BINOP &&
	movl	$0,	%eax
	cmpl	-4(%ebp),	%eax
	setne	%al
	movl	%eax,	-4(%ebp)
	movl	$0,	%eax
	cmpl	%edi,	%eax
	setne	%al
	andl	-4(%ebp),	%eax
	movl	%eax,	%edi
# LD x3
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
# CONST 832
	movl	$832,	-8(%ebp)
# BINOP ==
	movl	-8(%ebp),	%eax
	cmpl	%eax,	-4(%ebp)
	movl	$0,	%eax
	sete	%al
	movl	%eax,	-4(%ebp)
# BINOP ==
	movl	-4(%ebp),	%eax
	cmpl	%eax,	%edi
	movl	$0,	%eax
	sete	%al
	movl	%eax,	%edi
# LD x3
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
# CONST 184
	movl	$184,	-8(%ebp)
# BINOP &&
	movl	$0,	%eax
	cmpl	-8(%ebp),	%eax
	setne	%al
	movl	%eax,	-8(%ebp)
	movl	$0,	%eax
	cmpl	-4(%ebp),	%eax
	setne	%al
	andl	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
# LD x2
	movl	global_x2,	%eax
	movl	%eax,	-8(%ebp)
# CONST 834
	movl	$834,	-12(%ebp)
# BINOP >
	movl	-12(%ebp),	%eax
	cmpl	%eax,	-8(%ebp)
	movl	$0,	%eax
	setg	%al
	movl	%eax,	-8(%ebp)
# BINOP <=
	movl	-8(%ebp),	%eax
	cmpl	%eax,	-4(%ebp)
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-4(%ebp)
# BINOP !!
	movl	$0,	%eax
	cmpl	-4(%ebp),	%eax
	setne	%al
	movl	%eax,	-4(%ebp)
	movl	$0,	%eax
	cmpl	%edi,	%eax
	setne	%al
	orl	-4(%ebp),	%eax
	movl	%eax,	%edi
# BINOP ==
	movl	%edi,	%eax
	cmpl	%eax,	%esi
	movl	$0,	%eax
	sete	%al
	movl	%eax,	%esi
# LD x3
	movl	global_x3,	%edi
# LD x3
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
# BINOP >
	movl	-4(%ebp),	%eax
	cmpl	%eax,	%edi
	movl	$0,	%eax
	setg	%al
	movl	%eax,	%edi
# CONST 84
	movl	$84,	-4(%ebp)
# LD x2
	movl	global_x2,	%eax
	movl	%eax,	-8(%ebp)
# BINOP >
	movl	-8(%ebp),	%eax
	cmpl	%eax,	-4(%ebp)
	movl	$0,	%eax
	setg	%al
	movl	%eax,	-4(%ebp)
# BINOP +
	movl	-4(%ebp),	%eax
	addl	%eax,	%edi
# CONST 982
	movl	$982,	-4(%ebp)
# LD x3
	movl	global_x3,	%eax
	movl	%eax,	-8(%ebp)
# BINOP &&
	movl	$0,	%eax
	cmpl	-8(%ebp),	%eax
	setne	%al
	movl	%eax,	-8(%ebp)
	movl	$0,	%eax
	cmpl	-4(%ebp),	%eax
	setne	%al
	andl	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
# CONST 702
	movl	$702,	-8(%ebp)
# CONST 134
	movl	$134,	-12(%ebp)
# BINOP <=
	movl	-12(%ebp),	%eax
	cmpl	%eax,	-8(%ebp)
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-8(%ebp)
# BINOP >=
	movl	-8(%ebp),	%eax
	cmpl	%eax,	-4(%ebp)
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-4(%ebp)
# BINOP <
	movl	-4(%ebp),	%eax
	cmpl	%eax,	%edi
	movl	$0,	%eax
	setl	%al
	movl	%eax,	%edi
# LD x2
	movl	global_x2,	%eax
	movl	%eax,	-4(%ebp)
# LD x3
	movl	global_x3,	%eax
	movl	%eax,	-8(%ebp)
# BINOP <=
	movl	-8(%ebp),	%eax
	cmpl	%eax,	-4(%ebp)
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-4(%ebp)
# CONST 775
	movl	$775,	-8(%ebp)
# CONST 117
	movl	$117,	-12(%ebp)
# BINOP !!
	movl	$0,	%eax
	cmpl	-12(%ebp),	%eax
	setne	%al
	movl	%eax,	-12(%ebp)
	movl	$0,	%eax
	cmpl	-8(%ebp),	%eax
	setne	%al
	orl	-12(%ebp),	%eax
	movl	%eax,	-8(%ebp)
# BINOP !=
	movl	-8(%ebp),	%eax
	cmpl	%eax,	-4(%ebp)
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-4(%ebp)
# CONST 422
	movl	$422,	-8(%ebp)
# LD x1
	movl	global_x1,	%eax
	movl	%eax,	-12(%ebp)
# BINOP <=
	movl	-12(%ebp),	%eax
	cmpl	%eax,	-8(%ebp)
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-8(%ebp)
# CONST 998
	movl	$998,	-12(%ebp)
# CONST 972
	movl	$972,	-16(%ebp)
# BINOP ==
	movl	-16(%ebp),	%eax
	cmpl	%eax,	-12(%ebp)
	movl	$0,	%eax
	sete	%al
	movl	%eax,	-12(%ebp)
# BINOP >
	movl	-12(%ebp),	%eax
	cmpl	%eax,	-8(%ebp)
	movl	$0,	%eax
	setg	%al
	movl	%eax,	-8(%ebp)
# BINOP >=
	movl	-8(%ebp),	%eax
	cmpl	%eax,	-4(%ebp)
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-4(%ebp)
# BINOP +
	movl	-4(%ebp),	%eax
	addl	%eax,	%edi
# BINOP *
	movl	%edi,	%eax
	imull	%esi,	%eax
	movl	%eax,	%esi
# BINOP >=
	movl	%esi,	%eax
	cmpl	%eax,	%ecx
	movl	$0,	%eax
	setge	%al
	movl	%eax,	%ecx
# LD x2
	movl	global_x2,	%esi
# LD x2
	movl	global_x2,	%edi
# BINOP >
	movl	%edi,	%eax
	cmpl	%eax,	%esi
	movl	$0,	%eax
	setg	%al
	movl	%eax,	%esi
# LD x1
	movl	global_x1,	%edi
# LD x2
	movl	global_x2,	%eax
	movl	%eax,	-4(%ebp)
# BINOP +
	movl	-4(%ebp),	%eax
	addl	%eax,	%edi
# BINOP &&
	movl	$0,	%eax
	cmpl	%edi,	%eax
	setne	%al
	movl	%eax,	%edi
	movl	$0,	%eax
	cmpl	%esi,	%eax
	setne	%al
	andl	%edi,	%eax
	movl	%eax,	%esi
# CONST 168
	movl	$168,	%edi
# LD x3
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
# BINOP >=
	movl	-4(%ebp),	%eax
	cmpl	%eax,	%edi
	movl	$0,	%eax
	setge	%al
	movl	%eax,	%edi
# LD x2
	movl	global_x2,	%eax
	movl	%eax,	-4(%ebp)
# LD x1
	movl	global_x1,	%eax
	movl	%eax,	-8(%ebp)
# BINOP *
	movl	-8(%ebp),	%eax
	imull	-4(%ebp),	%eax
	movl	%eax,	-4(%ebp)
# BINOP >
	movl	-4(%ebp),	%eax
	cmpl	%eax,	%edi
	movl	$0,	%eax
	setg	%al
	movl	%eax,	%edi
# BINOP ==
	movl	%edi,	%eax
	cmpl	%eax,	%esi
	movl	$0,	%eax
	sete	%al
	movl	%eax,	%esi
# CONST 558
	movl	$558,	%edi
# LD x1
	movl	global_x1,	%eax
	movl	%eax,	-4(%ebp)
# BINOP <
	movl	-4(%ebp),	%eax
	cmpl	%eax,	%edi
	movl	$0,	%eax
	setl	%al
	movl	%eax,	%edi
# CONST 342
	movl	$342,	-4(%ebp)
# LD x3
	movl	global_x3,	%eax
	movl	%eax,	-8(%ebp)
# BINOP <
	movl	-8(%ebp),	%eax
	cmpl	%eax,	-4(%ebp)
	movl	$0,	%eax
	setl	%al
	movl	%eax,	-4(%ebp)
# BINOP >=
	movl	-4(%ebp),	%eax
	cmpl	%eax,	%edi
	movl	$0,	%eax
	setge	%al
	movl	%eax,	%edi
# LD x3
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
# LD x2
	movl	global_x2,	%eax
	movl	%eax,	-8(%ebp)
# BINOP +
	movl	-8(%ebp),	%eax
	addl	%eax,	-4(%ebp)
# CONST 578
	movl	$578,	-8(%ebp)
# CONST 572
	movl	$572,	-12(%ebp)
# BINOP >=
	movl	-12(%ebp),	%eax
	cmpl	%eax,	-8(%ebp)
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-8(%ebp)
# BINOP *
	movl	-8(%ebp),	%eax
	imull	-4(%ebp),	%eax
	movl	%eax,	-4(%ebp)
# BINOP <
	movl	-4(%ebp),	%eax
	cmpl	%eax,	%edi
	movl	$0,	%eax
	setl	%al
	movl	%eax,	%edi
# BINOP !=
	movl	%edi,	%eax
	cmpl	%eax,	%esi
	movl	$0,	%eax
	setne	%al
	movl	%eax,	%esi
# LD x1
	movl	global_x1,	%edi
# LD x2
	movl	global_x2,	%eax
	movl	%eax,	-4(%ebp)
# BINOP -
	movl	-4(%ebp),	%eax
	subl	%eax,	%edi
# LD x3
	movl	global_x3,	%eax
	movl	%eax,	-4(%ebp)
# CONST 356
	movl	$356,	-8(%ebp)
# BINOP >=
	movl	-8(%ebp),	%eax
	cmpl	%eax,	-4(%ebp)
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-4(%ebp)
# BINOP <
	movl	-4(%ebp),	%eax
	cmpl	%eax,	%edi
	movl	$0,	%eax
	setl	%al
	movl	%eax,	%edi
# LD x0
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
# LD x0
	movl	global_x0,	%eax
	movl	%eax,	-8(%ebp)
# BINOP <
	movl	-8(%ebp),	%eax
	cmpl	%eax,	-4(%ebp)
	movl	$0,	%eax
	setl	%al
	movl	%eax,	-4(%ebp)
# LD x1
	movl	global_x1,	%eax
	movl	%eax,	-8(%ebp)
# LD x0
	movl	global_x0,	%eax
	movl	%eax,	-12(%ebp)
# BINOP !!
	movl	$0,	%eax
	cmpl	-12(%ebp),	%eax
	setne	%al
	movl	%eax,	-12(%ebp)
	movl	$0,	%eax
	cmpl	-8(%ebp),	%eax
	setne	%al
	orl	-12(%ebp),	%eax
	movl	%eax,	-8(%ebp)
# BINOP +
	movl	-8(%ebp),	%eax
	addl	%eax,	-4(%ebp)
# BINOP *
	movl	-4(%ebp),	%eax
	imull	%edi,	%eax
	movl	%eax,	%edi
# CONST 249
	movl	$249,	-4(%ebp)
# CONST 561
	movl	$561,	-8(%ebp)
# BINOP >=
	movl	-8(%ebp),	%eax
	cmpl	%eax,	-4(%ebp)
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-4(%ebp)
# CONST 35
	movl	$35,	-8(%ebp)
# CONST 912
	movl	$912,	-12(%ebp)
# BINOP >=
	movl	-12(%ebp),	%eax
	cmpl	%eax,	-8(%ebp)
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-8(%ebp)
# BINOP *
	movl	-8(%ebp),	%eax
	imull	-4(%ebp),	%eax
	movl	%eax,	-4(%ebp)
# LD x2
	movl	global_x2,	%eax
	movl	%eax,	-8(%ebp)
# LD x2
	movl	global_x2,	%eax
	movl	%eax,	-12(%ebp)
# BINOP !=
	movl	-12(%ebp),	%eax
	cmpl	%eax,	-8(%ebp)
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-8(%ebp)
# LD x0
	movl	global_x0,	%eax
	movl	%eax,	-12(%ebp)
# LD x2
	movl	global_x2,	%eax
	movl	%eax,	-16(%ebp)
# BINOP <
	movl	-16(%ebp),	%eax
	cmpl	%eax,	-12(%ebp)
	movl	$0,	%eax
	setl	%al
	movl	%eax,	-12(%ebp)
# BINOP <=
	movl	-12(%ebp),	%eax
	cmpl	%eax,	-8(%ebp)
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-8(%ebp)
# BINOP <=
	movl	-8(%ebp),	%eax
	cmpl	%eax,	-4(%ebp)
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-4(%ebp)
# BINOP <=
	movl	-4(%ebp),	%eax
	cmpl	%eax,	%edi
	movl	$0,	%eax
	setle	%al
	movl	%eax,	%edi
# BINOP >
	movl	%edi,	%eax
	cmpl	%eax,	%esi
	movl	$0,	%eax
	setg	%al
	movl	%eax,	%esi
# CONST 695
	movl	$695,	%edi
# CONST 58
	movl	$58,	-4(%ebp)
# BINOP <
	movl	-4(%ebp),	%eax
	cmpl	%eax,	%edi
	movl	$0,	%eax
	setl	%al
	movl	%eax,	%edi
# CONST 837
	movl	$837,	-4(%ebp)
# LD x2
	movl	global_x2,	%eax
	movl	%eax,	-8(%ebp)
# BINOP >=
	movl	-8(%ebp),	%eax
	cmpl	%eax,	-4(%ebp)
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-4(%ebp)
# BINOP *
	movl	-4(%ebp),	%eax
	imull	%edi,	%eax
	movl	%eax,	%edi
# LD x0
	movl	global_x0,	%eax
	movl	%eax,	-4(%ebp)
# CONST 184
	movl	$184,	-8(%ebp)
# BINOP !=
	movl	-8(%ebp),	%eax
	cmpl	%eax,	-4(%ebp)
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-4(%ebp)
# CONST 400
	movl	$400,	-8(%ebp)
# CONST 149
	movl	$149,	-12(%ebp)
# BINOP -
	movl	-12(%ebp),	%eax
	subl	%eax,	-8(%ebp)
# BINOP *
	movl	-8(%ebp),	%eax
	imull	-4(%ebp),	%eax
	movl	%eax,	-4(%ebp)
# BINOP <
	movl	-4(%ebp),	%eax
	cmpl	%eax,	%edi
	movl	$0,	%eax
	setl	%al
	movl	%eax,	%edi
# CONST 132
	movl	$132,	-4(%ebp)
# LD x3
	movl	global_x3,	%eax
	movl	%eax,	-8(%ebp)
# BINOP <
	movl	-8(%ebp),	%eax
	cmpl	%eax,	-4(%ebp)
	movl	$0,	%eax
	setl	%al
	movl	%eax,	-4(%ebp)
# LD x3
	movl	global_x3,	%eax
	movl	%eax,	-8(%ebp)
# CONST 231
	movl	$231,	-12(%ebp)
# BINOP <=
	movl	-12(%ebp),	%eax
	cmpl	%eax,	-8(%ebp)
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-8(%ebp)
# BINOP !!
	movl	$0,	%eax
	cmpl	-8(%ebp),	%eax
	setne	%al
	movl	%eax,	-8(%ebp)
	movl	$0,	%eax
	cmpl	-4(%ebp),	%eax
	setne	%al
	orl	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
# CONST 696
	movl	$696,	-8(%ebp)
# LD x3
	movl	global_x3,	%eax
	movl	%eax,	-12(%ebp)
# BINOP <
	movl	-12(%ebp),	%eax
	cmpl	%eax,	-8(%ebp)
	movl	$0,	%eax
	setl	%al
	movl	%eax,	-8(%ebp)
# CONST 895
	movl	$895,	-12(%ebp)
# CONST 162
	movl	$162,	-16(%ebp)
# BINOP >
	movl	-16(%ebp),	%eax
	cmpl	%eax,	-12(%ebp)
	movl	$0,	%eax
	setg	%al
	movl	%eax,	-12(%ebp)
# BINOP >=
	movl	-12(%ebp),	%eax
	cmpl	%eax,	-8(%ebp)
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-8(%ebp)
# BINOP -
	movl	-8(%ebp),	%eax
	subl	%eax,	-4(%ebp)
# BINOP ==
	movl	-4(%ebp),	%eax
	cmpl	%eax,	%edi
	movl	$0,	%eax
	sete	%al
	movl	%eax,	%edi
# CONST 163
	movl	$163,	-4(%ebp)
# LD x3
	movl	global_x3,	%eax
	movl	%eax,	-8(%ebp)
# BINOP ==
	movl	-8(%ebp),	%eax
	cmpl	%eax,	-4(%ebp)
	movl	$0,	%eax
	sete	%al
	movl	%eax,	-4(%ebp)
# CONST 360
	movl	$360,	-8(%ebp)
# LD x0
	movl	global_x0,	%eax
	movl	%eax,	-12(%ebp)
# BINOP <=
	movl	-12(%ebp),	%eax
	cmpl	%eax,	-8(%ebp)
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-8(%ebp)
# BINOP >=
	movl	-8(%ebp),	%eax
	cmpl	%eax,	-4(%ebp)
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-4(%ebp)
# LD x3
	movl	global_x3,	%eax
	movl	%eax,	-8(%ebp)
# LD x0
	movl	global_x0,	%eax
	movl	%eax,	-12(%ebp)
# BINOP !!
	movl	$0,	%eax
	cmpl	-12(%ebp),	%eax
	setne	%al
	movl	%eax,	-12(%ebp)
	movl	$0,	%eax
	cmpl	-8(%ebp),	%eax
	setne	%al
	orl	-12(%ebp),	%eax
	movl	%eax,	-8(%ebp)
# CONST 623
	movl	$623,	-12(%ebp)
# LD x3
	movl	global_x3,	%eax
	movl	%eax,	-16(%ebp)
# BINOP >=
	movl	-16(%ebp),	%eax
	cmpl	%eax,	-12(%ebp)
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-12(%ebp)
# BINOP !=
	movl	-12(%ebp),	%eax
	cmpl	%eax,	-8(%ebp)
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-8(%ebp)
# BINOP !!
	movl	$0,	%eax
	cmpl	-8(%ebp),	%eax
	setne	%al
	movl	%eax,	-8(%ebp)
	movl	$0,	%eax
	cmpl	-4(%ebp),	%eax
	setne	%al
	orl	-8(%ebp),	%eax
	movl	%eax,	-4(%ebp)
# CONST 278
	movl	$278,	-8(%ebp)
# LD x2
	movl	global_x2,	%eax
	movl	%eax,	-12(%ebp)
# BINOP !!
	movl	$0,	%eax
	cmpl	-12(%ebp),	%eax
	setne	%al
	movl	%eax,	-12(%ebp)
	movl	$0,	%eax
	cmpl	-8(%ebp),	%eax
	setne	%al
	orl	-12(%ebp),	%eax
	movl	%eax,	-8(%ebp)
# LD x0
	movl	global_x0,	%eax
	movl	%eax,	-12(%ebp)
# CONST 317
	movl	$317,	-16(%ebp)
# BINOP >=
	movl	-16(%ebp),	%eax
	cmpl	%eax,	-12(%ebp)
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-12(%ebp)
# BINOP ==
	movl	-12(%ebp),	%eax
	cmpl	%eax,	-8(%ebp)
	movl	$0,	%eax
	sete	%al
	movl	%eax,	-8(%ebp)
# LD x3
	movl	global_x3,	%eax
	movl	%eax,	-12(%ebp)
# LD x0
	movl	global_x0,	%eax
	movl	%eax,	-16(%ebp)
# BINOP !!
	movl	$0,	%eax
	cmpl	-16(%ebp),	%eax
	setne	%al
	movl	%eax,	-16(%ebp)
	movl	$0,	%eax
	cmpl	-12(%ebp),	%eax
	setne	%al
	orl	-16(%ebp),	%eax
	movl	%eax,	-12(%ebp)
# CONST 443
	movl	$443,	-16(%ebp)
# LD x0
	movl	global_x0,	%eax
	movl	%eax,	-20(%ebp)
# BINOP >
	movl	-20(%ebp),	%eax
	cmpl	%eax,	-16(%ebp)
	movl	$0,	%eax
	setg	%al
	movl	%eax,	-16(%ebp)
# BINOP &&
	movl	$0,	%eax
	cmpl	-16(%ebp),	%eax
	setne	%al
	movl	%eax,	-16(%ebp)
	movl	$0,	%eax
	cmpl	-12(%ebp),	%eax
	setne	%al
	andl	-16(%ebp),	%eax
	movl	%eax,	-12(%ebp)
# BINOP !!
	movl	$0,	%eax
	cmpl	-12(%ebp),	%eax
	setne	%al
	movl	%eax,	-12(%ebp)
	movl	$0,	%eax
	cmpl	-8(%ebp),	%eax
	setne	%al
	orl	-12(%ebp),	%eax
	movl	%eax,	-8(%ebp)
# BINOP *
	movl	-8(%ebp),	%eax
	imull	-4(%ebp),	%eax
	movl	%eax,	-4(%ebp)
# BINOP <=
	movl	-4(%ebp),	%eax
	cmpl	%eax,	%edi
	movl	$0,	%eax
	setle	%al
	movl	%eax,	%edi
# BINOP >=
	movl	%edi,	%eax
	cmpl	%eax,	%esi
	movl	$0,	%eax
	setge	%al
	movl	%eax,	%esi
# BINOP -
	movl	%esi,	%eax
	subl	%eax,	%ecx
# BINOP !!
	movl	$0,	%eax
	cmpl	%ecx,	%eax
	setne	%al
	movl	%eax,	%ecx
	movl	$0,	%eax
	cmpl	%ebx,	%eax
	setne	%al
	orl	%ecx,	%eax
	movl	%eax,	%ebx
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