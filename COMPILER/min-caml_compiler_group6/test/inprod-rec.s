.section	".rodata"
.align	8
l.466:	! 1000000.000000
l.464:	! 4.560000
l.462:	! 1.230000
l.458:	! 0.000000
.section	".text"
mul_abs.201:
	addi	%x24, %x0, -1
	beq	%x7, %x24, 12  #57
	j	be_else.481
	nop
	mv	%x5, %x9  #58
	ret
	nop
be_else.481:
	addi	%x10, %x0, 1  #0
	sll	%x10, %x10, %x7  #60
	and	%x10, %x6, %x10  #60
	beq	%x10, %x0, 12  #60
	j	be_else.482
	nop
	addi	%x7, %x7, -1  #61
	j	mul_abs.201  #61
	nop
be_else.482:
	addi	%x10, %x7, -1  #63
	sll	%x7, %x5, %x7  #63
	add	%x9, %x9, %x7  #63
	mv	%x7, %x10
	j	mul_abs.201  #63
	nop
mul.206:
	bge	%x5, %x0, 12  #67
	j	bge_else.483
	nop
	mv	%x7, %x5  #67
	j	bge_cont.484
	nop
bge_else.483:
	sub	%x7, %x0, %x5  #67
bge_cont.484:
	bge	%x6, %x0, 12  #68
	j	bge_else.485
	nop
	mv	%x9, %x6  #68
	j	bge_cont.486
	nop
bge_else.485:
	sub	%x9, %x0, %x6  #68
bge_cont.486:
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
	jal	%x1, mul_abs.201  #69
	addi	%x2, %x2, -16  #69
	lw	%x1, 12(%x2) #69
	lw	%x6, 4(%x2)  #70
	srli	%x6, %x6, 31  #70
	lw	%x7, 0(%x2)  #70
	srli	%x7, %x7, 31  #70
	beq	%x6, %x7, 12  #70
	j	be_else.487
	nop
	ret
	nop
be_else.487:
	sub	%x5, %x0, %x5  #73
	ret
	nop
div_abs.209:
	addi	%x24, %x0, -1
	beq	%x7, %x24, 12  #77
	j	be_else.488
	nop
	mv	%x5, %x9  #78
	ret
	nop
be_else.488:
	srl	%x10, %x5, %x7  #80
	bge	%x10, %x6, 12  #80
	j	ble_else.489
	nop
	sll	%x10, %x6, %x7  #81
	sub	%x5, %x5, %x10  #81
	addi	%x10, %x7, -1  #81
	addi	%x11, %x0, 1  #0
	sll	%x7, %x11, %x7  #81
	add	%x9, %x9, %x7  #81
	mv	%x7, %x10
	j	div_abs.209  #81
	nop
ble_else.489:
	addi	%x7, %x7, -1  #83
	j	div_abs.209  #83
	nop
div.214:
	bge	%x5, %x0, 12  #87
	j	bge_else.490
	nop
	mv	%x7, %x5  #87
	j	bge_cont.491
	nop
bge_else.490:
	sub	%x7, %x0, %x5  #87
bge_cont.491:
	bge	%x6, %x0, 12  #88
	j	bge_else.492
	nop
	mv	%x9, %x6  #88
	j	bge_cont.493
	nop
bge_else.492:
	sub	%x9, %x0, %x6  #88
bge_cont.493:
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
	jal	%x1, div_abs.209  #89
	addi	%x2, %x2, -16  #89
	lw	%x1, 12(%x2) #89
	lw	%x6, 4(%x2)  #90
	srli	%x6, %x6, 31  #90
	lw	%x7, 0(%x2)  #90
	srli	%x7, %x7, 31  #90
	beq	%x6, %x7, 12  #90
	j	be_else.494
	nop
	ret
	nop
be_else.494:
	sub	%x5, %x0, %x5  #93
	ret
	nop
print_int.219:
	bge	%x5, %x0, 12  #100
	j	bge_else.495
	nop
	addi	%x24, %x0, 10
	bge	%x5, %x24, 12  #104
	j	bge_else.496
	nop
	addi	%x6, %x0, 10  #0
	sw	%x5, 0(%x2)  #107
	sw	%x1, 4(%x2)  #107
	addi	%x2, %x2, 8  #107
	jal	%x1, div.214  #107
	addi	%x2, %x2, -8  #107
	lw	%x1, 4(%x2) #107
	sw	%x5, 4(%x2)  #108
	sw	%x1, 12(%x2)  #108
	addi	%x2, %x2, 16  #108
	jal	%x1, print_int.219  #108
	addi	%x2, %x2, -16  #108
	lw	%x1, 12(%x2) #108
	addi	%x6, %x0, 10  #0
	lw	%x5, 4(%x2)  #109
	sw	%x1, 12(%x2)  #109
	addi	%x2, %x2, 16  #109
	jal	%x1, mul.206  #109
	addi	%x2, %x2, -16  #109
	lw	%x1, 12(%x2) #109
	lw	%x6, 0(%x2)  #109
	sub	%x5, %x6, %x5  #109
	addi	%x5, %x5, 48  #109
	out	%x5  #109
	ret
	nop
bge_else.496:
	addi	%x5, %x5, 48  #105
	out	%x5  #105
	ret
	nop
bge_else.495:
	sub	%x5, %x0, %x5  #102
	j	print_int.219  #102
	nop
assign_farray.240:
	beq	%x6, %x0, 12  #176
	j	be_else.499
	nop
	slli	%x6, %x6, 3  #177
	fsw	%f0, %x6(%x5) #177
	ret
	nop
be_else.499:
	slli	%x7, %x6, 3  #179
	fsw	%f0, %x7(%x5) #179
	addi	%x6, %x6, -1  #180
	j	assign_farray.240  #180
	nop
create_float_array.244:
	mv	%x6, %x3  #184
	sw	%x6, 0(%x2)  #187
	mv	%x23, %x6
	mv	%x6, %x5
	mv	%x5, %x23
	sw	%x1, 4(%x2)  #187
	addi	%x2, %x2, 8  #187
	jal	%x1, assign_farray.240  #187
	addi	%x2, %x2, -8  #187
	lw	%x1, 4(%x2) #187
	lw	%x5, 0(%x2)  #188
	ret
	nop
inprod.247:
	bge	%x7, %x0, 12  #192
	j	bge_else.501
	nop
	slli	%x9, %x7, 3  #193
	flw	%f0, %x9(%x5)  #193
	slli	%x9, %x7, 3  #193
	flw	%f2, %x9(%x6)  #193
	fmul	%f0, %f0, %f2  #193
	addi	%x7, %x7, -1  #193
	fsw	%f0, 0(%x2)  #193
	sw	%x1, 12(%x2)  #193
	addi	%x2, %x2, 16  #193
	jal	%x1, inprod.247  #193
	addi	%x2, %x2, -16  #193
	lw	%x1, 12(%x2) #193
	flw	%f2, 0(%x2)  #193
	fadd	%f0, %f2, %f0  #193
	ret
	nop
bge_else.501:
	mv	%x5, l.458  #0
	ret
	nop
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 3  #0
	mv	%f0, l.462  #0
	sw	%x1, 12(%x2)  #194
	addi	%x2, %x2, 16  #194
	jal	%x1, create_float_array.244  #194
	addi	%x2, %x2, -16  #194
	lw	%x1, 12(%x2) #194
	addi	%x6, %x0, 3  #0
	mv	%f0, l.464  #0
	sw	%x5, 8(%x2)  #195
	mv	%x5, %x6
	sw	%x1, 12(%x2)  #195
	addi	%x2, %x2, 16  #195
	jal	%x1, create_float_array.244  #195
	addi	%x2, %x2, -16  #195
	lw	%x1, 12(%x2) #195
	mv	%x6, %x5  #195
	mv	%f0, l.466  #0
	addi	%x7, %x0, 2  #0
	lw	%x5, 8(%x2)  #196
	fsw	%f0, 16(%x2)  #196
	sw	%x1, 28(%x2)  #196
	addi	%x2, %x2, 32  #196
	jal	%x1, inprod.247  #196
	addi	%x2, %x2, -32  #196
	lw	%x1, 28(%x2) #196
	flw	%f2, 16(%x2)  #196
	fmul	%f0, %f2, %f0  #196
	sw	%x1, 28(%x2)  #196
	addi	%x2, %x2, 32  #196
	jal	%x1, min_caml_truncate  #196
	addi	%x2, %x2, -32  #196
	lw	%x1, 28(%x2) #196
	sw	%x1, 28(%x2)  #196
	addi	%x2, %x2, 32  #196
	jal	%x1, print_int.219  #196
	addi	%x2, %x2, -32  #196
	lw	%x1, 28(%x2) #196
	addi	%x2, %x2, 112