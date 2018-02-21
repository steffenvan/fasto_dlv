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
# Function no_way
no_way:
	sw	$31, -4($29)
	addi	$29, $29, -8
	jal	no_way
# was:	jal	no_way, 
# 	ori	_no_wayres_1_,2,0
# 	ori	2,_no_wayres_1_,0
	addi	$29, $29, 8
	lw	$31, -4($29)
	jr	$31
# Function main
main:
	sw	$31, -4($29)
	addi	$29, $29, -8
	ori	$10, $0, 0
# was:	ori	_tmp_4_, 0, 0
	beq	$10, $0, _false_5_
# was:	beq	_tmp_4_, 0, _false_5_
	jal	no_way
# was:	jal	no_way, 
	ori	$10, $2, 0
# was:	ori	_tmp_4_, 2, 0
_false_5_:
# 	ori	_letBind_3_,_tmp_4_,0
	la	$2, _true
# was:	la	2, _true
	bne	$10, $0, _wBoolF_6_
# was:	bne	_letBind_3_, 0, _wBoolF_6_
	la	$2, _false
# was:	la	2, _false
_wBoolF_6_:
	jal	putstring
# was:	jal	putstring, 2
	ori	$10, $0, 1
# was:	ori	_tmp_8_, 0, 1
	bne	$10, $0, _true_9_
# was:	bne	_tmp_8_, 0, _true_9_
	jal	no_way
# was:	jal	no_way, 
	ori	$10, $2, 0
# was:	ori	_tmp_8_, 2, 0
_true_9_:
# 	ori	_letBind_7_,_tmp_8_,0
	la	$2, _true
# was:	la	2, _true
	bne	$10, $0, _wBoolF_10_
# was:	bne	_letBind_7_, 0, _wBoolF_10_
	la	$2, _false
# was:	la	2, _false
_wBoolF_10_:
	jal	putstring
# was:	jal	putstring, 2
	ori	$2, $0, 1
# was:	ori	_mainres_2_, 0, 1
# 	ori	2,_mainres_2_,0
	addi	$29, $29, 8
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