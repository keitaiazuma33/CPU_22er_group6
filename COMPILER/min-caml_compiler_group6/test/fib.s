.section	".rodata"
.align	8
.section	".text"
mul_abs.174:
	addi	%x24, %x0, -1
	beq	%x7, %x24, 12  #57
	j	be_else.390
	nop
	mv	%x5, %x9  #58
	ret
	nop
be_else.390:
	addi	%x10, %x0, 1  #0
	sll	%x10, %x10, %x7  #60
	and	%x10, %x6, %x10  #60
	beq	%x10, %x0, 12  #60
	j	be_else.391
	nop
	addi	%x7, %x7, -1  #61
	j	mul_abs.174  #61
	nop
be_else.391:
	addi	%x10, %x7, -1  #63
	sll	%x7, %x5, %x7  #63
	add	%x9, %x9, %x7  #63
	mv	%x7, %x10
	j	mul_abs.174  #63
	nop
mul.179:
	bge	%x5, %x0, 12  #67
	j	bge_else.392
	nop
	mv	%x7, %x5  #67
	j	bge_cont.393
	nop
bge_else.392:
	sub	%x7, %x0, %x5  #67
bge_cont.393:
	bge	%x6, %x0, 12  #68
	j	bge_else.394
	nop
	mv	%x9, %x6  #68
	j	bge_cont.395
	nop
bge_else.394:
	sub	%x9, %x0, %x6  #68
bge_cont.395:
	addi	%x10, %x0, 30  #0
	addi	%x11, %x0, 0  #0
	sw	%x6, 0(%x2)  #69
	sw	%x5, 4(%x2)  #69
	mv	%x6, %x9
	mv	%x5, %x7
	mv	%x9, %x11
	mv	%x7, %x10
	sw	%x1, 12(%x2)  #69
	addi	%x2, %x2, 16  #69
	jal	%x1, mul_abs.174  #69
	addi	%x2, %x2, -16  #69
	lw	%x1, 12(%x2) #69
	lw	%x6, 4(%x2)  #70
	srli	%x6, %x6, 31  #70
	lw	%x7, 0(%x2)  #70
	srli	%x7, %x7, 31  #70
	beq	%x6, %x7, 12  #70
	j	be_else.396
	nop
	ret
	nop
be_else.396:
	sub	%x5, %x0, %x5  #73
	ret
	nop
div_abs.182:
	addi	%x24, %x0, -1
	beq	%x7, %x24, 12  #77
	j	be_else.397
	nop
	mv	%x5, %x9  #78
	ret
	nop
be_else.397:
	srl	%x10, %x5, %x7  #80
	bge	%x10, %x6, 12  #80
	j	ble_else.398
	nop
	sll	%x10, %x6, %x7  #81
	sub	%x5, %x5, %x10  #81
	addi	%x10, %x7, -1  #81
	addi	%x11, %x0, 1  #0
	sll	%x7, %x11, %x7  #81
	add	%x9, %x9, %x7  #81
	mv	%x7, %x10
	j	div_abs.182  #81
	nop
ble_else.398:
	addi	%x7, %x7, -1  #83
	j	div_abs.182  #83
	nop
div.187:
	bge	%x5, %x0, 12  #87
	j	bge_else.399
	nop
	mv	%x7, %x5  #87
	j	bge_cont.400
	nop
bge_else.399:
	sub	%x7, %x0, %x5  #87
bge_cont.400:
	bge	%x6, %x0, 12  #88
	j	bge_else.401
	nop
	mv	%x9, %x6  #88
	j	bge_cont.402
	nop
bge_else.401:
	sub	%x9, %x0, %x6  #88
bge_cont.402:
	addi	%x10, %x0, 30  #0
	addi	%x11, %x0, 0  #0
	sw	%x6, 0(%x2)  #89
	sw	%x5, 4(%x2)  #89
	mv	%x6, %x9
	mv	%x5, %x7
	mv	%x9, %x11
	mv	%x7, %x10
	sw	%x1, 12(%x2)  #89
	addi	%x2, %x2, 16  #89
	jal	%x1, div_abs.182  #89
	addi	%x2, %x2, -16  #89
	lw	%x1, 12(%x2) #89
	lw	%x6, 4(%x2)  #90
	srli	%x6, %x6, 31  #90
	lw	%x7, 0(%x2)  #90
	srli	%x7, %x7, 31  #90
	beq	%x6, %x7, 12  #90
	j	be_else.403
	nop
	ret
	nop
be_else.403:
	sub	%x5, %x0, %x5  #93
	ret
	nop
print_int.192:
	bge	%x5, %x0, 12  #100
	j	bge_else.404
	nop
	addi	%x24, %x0, 10
	bge	%x5, %x24, 12  #104
	j	bge_else.405
	nop
	addi	%x6, %x0, 10  #0
	sw	%x5, 0(%x2)  #107
	sw	%x1, 4(%x2)  #107
	addi	%x2, %x2, 8  #107
	jal	%x1, div.187  #107
	addi	%x2, %x2, -8  #107
	lw	%x1, 4(%x2) #107
	sw	%x5, 4(%x2)  #108
	sw	%x1, 12(%x2)  #108
	addi	%x2, %x2, 16  #108
	jal	%x1, print_int.192  #108
	addi	%x2, %x2, -16  #108
	lw	%x1, 12(%x2) #108
	addi	%x6, %x0, 10  #0
	lw	%x5, 4(%x2)  #109
	sw	%x1, 12(%x2)  #109
	addi	%x2, %x2, 16  #109
	jal	%x1, mul.179  #109
	addi	%x2, %x2, -16  #109
	lw	%x1, 12(%x2) #109
	lw	%x6, 0(%x2)  #109
	sub	%x5, %x6, %x5  #109
	addi	%x5, %x5, 48  #109
	out	%x5  #109
	ret
	nop
bge_else.405:
	addi	%x5, %x5, 48  #105
	out	%x5  #105
	ret
	nop
bge_else.404:
	sub	%x5, %x0, %x5  #102
	j	print_int.192  #102
	nop
fib.206:
	addi	%x24, %x0, 1
	bge	%x24, %x5, 12  #161
	j	ble_else.408
	nop
	ret
	nop
ble_else.408:
	addi	%x6, %x5, -1  #162
	sw	%x5, 0(%x2)  #162
	mv	%x5, %x6
	sw	%x1, 4(%x2)  #162
	addi	%x2, %x2, 8  #162
	jal	%x1, fib.206  #162
	addi	%x2, %x2, -8  #162
	lw	%x1, 4(%x2) #162
	lw	%x6, 0(%x2)  #162
	addi	%x6, %x6, -2  #162
	sw	%x5, 4(%x2)  #162
	mv	%x5, %x6
	sw	%x1, 12(%x2)  #162
	addi	%x2, %x2, 16  #162
	jal	%x1, fib.206  #162
	addi	%x2, %x2, -16  #162
	lw	%x1, 12(%x2) #162
	lw	%x6, 4(%x2)  #162
	add	%x5, %x6, %x5  #162
	ret
	nop
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 30  #0
	sw	%x1, 12(%x2)  #163
	addi	%x2, %x2, 16  #163
	jal	%x1, fib.206  #163
	addi	%x2, %x2, -16  #163
	lw	%x1, 12(%x2) #163
	sw	%x1, 12(%x2)  #163
	addi	%x2, %x2, 16  #163
	jal	%x1, print_int.192  #163
	addi	%x2, %x2, -16  #163
	lw	%x1, 12(%x2) #163
	addi	%x2, %x2, 112
