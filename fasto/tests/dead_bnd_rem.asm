	.text	0x00400000
	.globl	main
	la	$28, _heap_
	la	$11, _true
# was:	la	_true_addr, _true
	ori	$10, $0, 4
# was:	ori	_true_init, 0, 4
	sw	$10, 0($11)
# was:	sw	_true_init, 0(_true_addr)
	la	$10, _false
# was:	la	_false_addr, _false
	ori	$11, $0, 5
# was:	ori	_false_init, 0, 5
	sw	$11, 0($10)
# was:	sw	_false_init, 0(_false_addr)
	jal	main
_stop_:
	ori	$2, $0, 10
	syscall
# Function main
main:
	sw	$31, -4($29)
	sw	$16, -8($29)
	addi	$29, $29, -12
	jal	getint
# was:	jal	getint, 2
# 	ori	_letBind_2_,2,0
# 	ori	_mult_L_4_,_letBind_2_,0
	ori	$10, $2, 0
# was:	ori	_mult_R_5_, _letBind_2_, 0
	mul	$11, $2, $10
# was:	mul	_letBind_3_, _mult_L_4_, _mult_R_5_
# 	ori	_plus_L_9_,_letBind_3_,0
	ori	$10, $0, 3
# was:	ori	_plus_R_10_, 0, 3
	add	$10, $11, $10
# was:	add	_letBind_8_, _plus_L_9_, _plus_R_10_
# 	ori	_plus_L_12_,_letBind_8_,0
# 	ori	_plus_R_13_,_letBind_2_,0
	add	$11, $10, $2
# was:	add	_letBind_11_, _plus_L_12_, _plus_R_13_
# 	ori	_plus_L_14_,_letBind_11_,0
	ori	$10, $0, 8
# was:	ori	_plus_R_15_, 0, 8
	add	$0, $11, $10
# was:	add	_letBind_7_, _plus_L_14_, _plus_R_15_
# 	ori	_letBind_6_,_letBind_2_,0
	ori	$11, $2, 0
# was:	ori	_plus_L_17_, _letBind_2_, 0
	ori	$10, $0, 2
# was:	ori	_plus_R_18_, 0, 2
	add	$10, $11, $10
# was:	add	_letBind_16_, _plus_L_17_, _plus_R_18_
# 	ori	_plus_L_22_,_letBind_16_,0
	ori	$11, $0, 2
# was:	ori	_plus_R_23_, 0, 2
	add	$11, $10, $11
# was:	add	_plus_L_20_, _plus_L_22_, _plus_R_23_
	ori	$12, $2, 0
# was:	ori	_plus_R_21_, _letBind_6_, 0
	add	$0, $11, $12
# was:	add	_letBind_19_, _plus_L_20_, _plus_R_21_
# 	ori	_plus_L_26_,_letBind_2_,0
	ori	$11, $0, 3
# was:	ori	_plus_R_27_, 0, 3
	add	$11, $2, $11
# was:	add	_letBind_25_, _plus_L_26_, _plus_R_27_
# 	ori	_mult_L_28_,_letBind_16_,0
# 	ori	_mult_R_29_,_letBind_25_,0
	mul	$16, $10, $11
# was:	mul	_letBind_24_, _mult_L_28_, _mult_R_29_
# 	ori	_tmp_30_,_letBind_24_,0
# 	ori	_mainres_1_,_tmp_30_,0
	ori	$2, $16, 0
# was:	ori	2, _mainres_1_, 0
	jal	putint
# was:	jal	putint, 2
	ori	$2, $16, 0
# was:	ori	2, _mainres_1_, 0
	addi	$29, $29, 12
	lw	$16, -8($29)
	lw	$31, -4($29)
	jr	$31
ord:
	jr	$31
chr:
	andi	$2, $2, 255
	jr	$31
putint:
	addi	$29, $29, -8
	sw	$2, 0($29)
	sw	$4, 4($29)
	ori	$4, $2, 0
	ori	$2, $0, 1
	syscall
	ori	$2, $0, 4
	la	$4, _space_
	syscall
	lw	$2, 0($29)
	lw	$4, 4($29)
	addi	$29, $29, 8
	jr	$31
getint:
	ori	$2, $0, 5
	syscall
	jr	$31
putchar:
	addi	$29, $29, -8
	sw	$2, 0($29)
	sw	$4, 4($29)
	ori	$4, $2, 0
	ori	$2, $0, 11
	syscall
	ori	$2, $0, 4
	la	$4, _space_
	syscall
	lw	$2, 0($29)
	lw	$4, 4($29)
	addi	$29, $29, 8
	jr	$31
getchar:
	addi	$29, $29, -8
	sw	$4, 0($29)
	sw	$5, 4($29)
	ori	$2, $0, 12
	syscall
	ori	$5, $2, 0
	ori	$2, $0, 4
	la	$4, _cr_
	syscall
	ori	$2, $5, 0
	lw	$4, 0($29)
	lw	$5, 4($29)
	addi	$29, $29, 8
	jr	$31
putstring:
	addi	$29, $29, -16
	sw	$2, 0($29)
	sw	$4, 4($29)
	sw	$5, 8($29)
	sw	$6, 12($29)
	lw	$4, 0($2)
	addi	$5, $2, 4
	add	$6, $5, $4
	ori	$2, $0, 11
putstring_begin:
	sub	$4, $5, $6
	bgez	$4, putstring_done
	lb	$4, 0($5)
	syscall
	addi	$5, $5, 1
	j	putstring_begin
putstring_done:
	lw	$2, 0($29)
	lw	$4, 4($29)
	lw	$5, 8($29)
	lw	$6, 12($29)
	addi	$29, $29, 16
	jr	$31
_IllegalArrSizeError_:
	la	$4, _IllegalArrSizeString_
	ori	$2, $0, 4
	syscall
	ori	$4, $5, 0
	ori	$2, $0, 1
	syscall
	la	$4, _cr_
	ori	$2, $0, 4
	syscall
	j	_stop_
	.data	
_cr_:
	.asciiz	"\n"
_space_:
	.asciiz	" "
_IllegalArrSizeString_:
	.asciiz	"Error: Array size less or equal to 0 at line "
# String Literals
	.align	2
_true:
	.space	4
	.asciiz	"true"
	.align	2
_false:
	.space	4
	.asciiz	"false"
	.align	2
_heap_:
	.space	100000