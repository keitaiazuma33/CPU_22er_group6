.section	".rodata"
.align	8
.section	".text"
mul_abs.193:
	addi	%x24, %x0, -1
	beq	%x7, %x24, 12  #57
	j	be_else.455
	nop
	mv	%x5, %x9  #58
	ret
	nop
be_else.455:
	addi	%x10, %x0, 1  #0
	sll	%x10, %x10, %x7  #60
	and	%x10, %x6, %x10  #60
	beq	%x10, %x0, 12  #60
	j	be_else.456
	nop
	addi	%x7, %x7, -1  #61
	j	mul_abs.193  #61
	nop
be_else.456:
	addi	%x10, %x7, -1  #63
	sll	%x7, %x5, %x7  #63
	add	%x9, %x9, %x7  #63
	mv	%x7, %x10
	j	mul_abs.193  #63
	nop
mul.198:
	bge	%x5, %x0, 12  #67
	j	bge_else.457
	nop
	mv	%x7, %x5  #67
	j	bge_cont.458
	nop
bge_else.457:
	sub	%x7, %x0, %x5  #67
bge_cont.458:
	bge	%x6, %x0, 12  #68
	j	bge_else.459
	nop
	mv	%x9, %x6  #68
	j	bge_cont.460
	nop
bge_else.459:
	sub	%x9, %x0, %x6  #68
bge_cont.460:
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
	jal	%x1, mul_abs.193  #69
	addi	%x2, %x2, -16  #69
	lw	%x1, 12(%x2) #69
	lw	%x6, 4(%x2)  #70
	srli	%x6, %x6, 31  #70
	lw	%x7, 0(%x2)  #70
	srli	%x7, %x7, 31  #70
	beq	%x6, %x7, 12  #70
	j	be_else.461
	nop
	ret
	nop
be_else.461:
	sub	%x5, %x0, %x5  #73
	ret
	nop
div_abs.201:
	addi	%x24, %x0, -1
	beq	%x7, %x24, 12  #77
	j	be_else.462
	nop
	mv	%x5, %x9  #78
	ret
	nop
be_else.462:
	srl	%x10, %x5, %x7  #80
	bge	%x10, %x6, 12  #80
	j	ble_else.463
	nop
	sll	%x10, %x6, %x7  #81
	sub	%x5, %x5, %x10  #81
	addi	%x10, %x7, -1  #81
	addi	%x11, %x0, 1  #0
	sll	%x7, %x11, %x7  #81
	add	%x9, %x9, %x7  #81
	mv	%x7, %x10
	j	div_abs.201  #81
	nop
ble_else.463:
	addi	%x7, %x7, -1  #83
	j	div_abs.201  #83
	nop
div.206:
	bge	%x5, %x0, 12  #87
	j	bge_else.464
	nop
	mv	%x7, %x5  #87
	j	bge_cont.465
	nop
bge_else.464:
	sub	%x7, %x0, %x5  #87
bge_cont.465:
	bge	%x6, %x0, 12  #88
	j	bge_else.466
	nop
	mv	%x9, %x6  #88
	j	bge_cont.467
	nop
bge_else.466:
	sub	%x9, %x0, %x6  #88
bge_cont.467:
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
	jal	%x1, div_abs.201  #89
	addi	%x2, %x2, -16  #89
	lw	%x1, 12(%x2) #89
	lw	%x6, 4(%x2)  #90
	srli	%x6, %x6, 31  #90
	lw	%x7, 0(%x2)  #90
	srli	%x7, %x7, 31  #90
	beq	%x6, %x7, 12  #90
	j	be_else.468
	nop
	ret
	nop
be_else.468:
	sub	%x5, %x0, %x5  #93
	ret
	nop
print_int.211:
	bge	%x5, %x0, 12  #100
	j	bge_else.469
	nop
	addi	%x24, %x0, 10
	bge	%x5, %x24, 12  #104
	j	bge_else.470
	nop
	addi	%x6, %x0, 10  #0
	sw	%x5, 0(%x2)  #107
	sw	%x1, 4(%x2)  #107
	addi	%x2, %x2, 8  #107
	jal	%x1, div.206  #107
	addi	%x2, %x2, -8  #107
	lw	%x1, 4(%x2) #107
	sw	%x5, 4(%x2)  #108
	sw	%x1, 12(%x2)  #108
	addi	%x2, %x2, 16  #108
	jal	%x1, print_int.211  #108
	addi	%x2, %x2, -16  #108
	lw	%x1, 12(%x2) #108
	addi	%x6, %x0, 10  #0
	lw	%x5, 4(%x2)  #109
	sw	%x1, 12(%x2)  #109
	addi	%x2, %x2, 16  #109
	jal	%x1, mul.198  #109
	addi	%x2, %x2, -16  #109
	lw	%x1, 12(%x2) #109
	lw	%x6, 0(%x2)  #109
	sub	%x5, %x6, %x5  #109
	addi	%x5, %x5, 48  #109
	out	%x5  #109
	ret
	nop
bge_else.470:
	addi	%x5, %x5, 48  #105
	out	%x5  #105
	ret
	nop
bge_else.469:
	sub	%x5, %x0, %x5  #102
	j	print_int.211  #102
	nop
assign_array.225:
	beq	%x7, %x0, 12  #160
	j	be_else.473
	nop
	slli	%x7, %x7, 2  #161
	sw	%x6, %x7(%x5)  #161
	ret
	nop
be_else.473:
	slli	%x9, %x7, 2  #163
	sw	%x6, %x9(%x5)  #163
	addi	%x7, %x7, -1  #164
	j	assign_array.225  #164
	nop
create_array.229:
	mv	%x7, %x3  #168
	sw	%x7, 0(%x2)  #171
	mv	%x23, %x7
	mv	%x7, %x5
	mv	%x5, %x23
	sw	%x1, 4(%x2)  #171
	addi	%x2, %x2, 8  #171
	jal	%x1, assign_array.225  #171
	addi	%x2, %x2, -8  #171
	lw	%x1, 4(%x2) #171
	lw	%x5, 0(%x2)  #172
	ret
	nop
f.239:
	bge	%x5, %x0, 12  #194
	j	bge_else.475
	nop
	sw	%x5, 0(%x2)  #195
	sw	%x22, 4(%x2)  #195
	sw	%x1, 12(%x2)  #195
	addi	%x2, %x2, 16  #195
	jal	%x1, print_int.211  #195
	addi	%x2, %x2, -16  #195
	lw	%x1, 12(%x2) #195
	addi	%x5, %x0, 1  #0
	lw	%x6, 4(%x2)  #196
	sw	%x1, 12(%x2)  #196
	addi	%x2, %x2, 16  #196
	jal	%x1, create_array.229  #196
	addi	%x2, %x2, -16  #196
	lw	%x1, 12(%x2) #196
	lw	%x22, 0(%x5)  #197
	lw	%x5, 0(%x2)  #197
	addi	%x5, %x5, -1  #197
	lw	0(%x23), %x22  #197
	j	%x23  #197
	nop
bge_else.475:
	ret
	nop
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	mv	%x22, %x3  #193
	addi	%x3, %x3, 8  #193
	addi	%x24, %x0, 852  #193 f.239
	mv	%x5, %x24  #193
	sw	%x5, 0(%x22)  #193
	addi	%x5, %x0, 9  #0
	sw	%x1, 12(%x2)  #198
	lw	%x23, 0(%x22)  #198
	addi	%x2, %x2, 16  #198
	jal	%x1, %x23  #198
	addi	%x2, %x2, -16  #198
	lw	%x1, 12(%x2)  #198
	addi	%x2, %x2, 112
