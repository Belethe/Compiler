	.text	0x00400000
	.globl	main
	la	$28, _heap_
	la	$4, _true
# was:	la	_true_addr, _true
	ori	$3, $0, 4
# was:	ori	_true_init, 0, 4
	sw	$3, 0($4)
# was:	sw	_true_init, 0(_true_addr)
	la	$3, _false
# was:	la	_false_addr, _false
	ori	$4, $0, 5
# was:	ori	_false_init, 0, 5
	sw	$4, 0($3)
# was:	sw	_false_init, 0(_false_addr)
	jal	main
_stop_:
	ori	$2, $0, 10
	syscall
# Function main
main:
	sw	$31, -4($29)
	addi	$29, $29, -8
	ori	$2, $0, 1
# was:	ori	_and_L_4_, 0, 1
	ori	$3, $0, 1
# was:	ori	_and_R_5_, 0, 1
	and	$3, $2, $3
# was:	and	_tmp_3_, _and_L_4_, _and_R_5_
# 	ori	_letBind_2_,_tmp_3_,0
	la	$2, _true
# was:	la	2, _true
	bne	$3, $0, _wBoolF_6_
# was:	bne	_letBind_2_, 0, _wBoolF_6_
	la	$2, _false
# was:	la	2, _false
_wBoolF_6_:
	jal	putstring
# was:	jal	putstring, 2
	ori	$3, $0, 0
# was:	ori	_and_L_9_, 0, 0
	ori	$2, $0, 1
# was:	ori	_and_R_10_, 0, 1
	and	$3, $3, $2
# was:	and	_tmp_8_, _and_L_9_, _and_R_10_
# 	ori	_letBind_7_,_tmp_8_,0
	la	$2, _true
# was:	la	2, _true
	bne	$3, $0, _wBoolF_11_
# was:	bne	_letBind_7_, 0, _wBoolF_11_
	la	$2, _false
# was:	la	2, _false
_wBoolF_11_:
	jal	putstring
# was:	jal	putstring, 2
	ori	$2, $0, 1
# was:	ori	_and_L_14_, 0, 1
	ori	$3, $0, 0
# was:	ori	_and_R_15_, 0, 0
	and	$3, $2, $3
# was:	and	_tmp_13_, _and_L_14_, _and_R_15_
# 	ori	_letBind_12_,_tmp_13_,0
	la	$2, _true
# was:	la	2, _true
	bne	$3, $0, _wBoolF_16_
# was:	bne	_letBind_12_, 0, _wBoolF_16_
	la	$2, _false
# was:	la	2, _false
_wBoolF_16_:
	jal	putstring
# was:	jal	putstring, 2
	ori	$2, $0, 0
# was:	ori	_mainres_1_, 0, 0
# 	ori	2,_mainres_1_,0
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
dynalloc:
	ori	$4, $2, 0
	ori	$2, $0, 9
	syscall
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
	.asciiz	"True"
	.align	2
_false:
	.space	4
	.asciiz	"False"
	.align	2
_heap_:
	.space	100000
