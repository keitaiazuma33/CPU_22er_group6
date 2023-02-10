.section	".rodata"
.align	8
.section	".text"
mul_abs.210:  #0
	addi	%x24, %x0, -1
	beq	%x7, %x24, 12  #57
	j	be_else.506
	nop
	mv	%x5, %x9  #58
	ret
	nop
be_else.506:
	addi	%x10, %x0, 1  #0
	sll	%x10, %x10, %x7  #60
	and	%x10, %x6, %x10  #60
	beq	%x10, %x0, 12  #60
	j	be_else.507
	nop
	addi	%x7, %x7, -1  #61
	j	mul_abs.210  #61
	nop
be_else.507:
	addi	%x10, %x7, -1  #63
	sll	%x7, %x5, %x7  #63
	add	%x9, %x9, %x7  #63
	mv	%x7, %x10
	j	mul_abs.210  #63
	nop
mul.215:  #92
	bge	%x5, %x0, 12  #67
	j	bge_else.508
	nop
	mv	%x7, %x5  #67
	j	bge_cont.509
	nop
bge_else.508:
	sub	%x7, %x0, %x5  #67
bge_cont.509:
	bge	%x6, %x0, 12  #68
	j	bge_else.510
	nop
	mv	%x9, %x6  #68
	j	bge_cont.511
	nop
bge_else.510:
	sub	%x9, %x0, %x6  #68
bge_cont.511:
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
	jal	%x1, mul_abs.210  #69
	addi	%x2, %x2, -16  #69
	lw	%x1, 12(%x2) #69
	lw	%x6, 4(%x2)  #70
	srli	%x6, %x6, 31  #70
	lw	%x7, 0(%x2)  #70
	srli	%x7, %x7, 31  #70
	beq	%x6, %x7, 12  #70
	j	be_else.512
	nop
	ret
	nop
be_else.512:
	sub	%x5, %x0, %x5  #73
	ret
	nop
div_abs.218:  #268
	addi	%x24, %x0, -1
	beq	%x7, %x24, 12  #77
	j	be_else.513
	nop
	mv	%x5, %x9  #78
	ret
	nop
be_else.513:
	srl	%x10, %x5, %x7  #80
	bge	%x10, %x6, 12  #80
	j	ble_else.514
	nop
	sll	%x10, %x6, %x7  #81
	sub	%x5, %x5, %x10  #81
	addi	%x10, %x7, -1  #81
	addi	%x11, %x0, 1  #0
	sll	%x7, %x11, %x7  #81
	add	%x9, %x9, %x7  #81
	mv	%x7, %x10
	j	div_abs.218  #81
	nop
ble_else.514:
	addi	%x7, %x7, -1  #83
	j	div_abs.218  #83
	nop
div.223:  #364
	bge	%x5, %x0, 12  #87
	j	bge_else.515
	nop
	mv	%x7, %x5  #87
	j	bge_cont.516
	nop
bge_else.515:
	sub	%x7, %x0, %x5  #87
bge_cont.516:
	bge	%x6, %x0, 12  #88
	j	bge_else.517
	nop
	mv	%x9, %x6  #88
	j	bge_cont.518
	nop
bge_else.517:
	sub	%x9, %x0, %x6  #88
bge_cont.518:
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
	jal	%x1, div_abs.218  #89
	addi	%x2, %x2, -16  #89
	lw	%x1, 12(%x2) #89
	lw	%x6, 4(%x2)  #90
	srli	%x6, %x6, 31  #90
	lw	%x7, 0(%x2)  #90
	srli	%x7, %x7, 31  #90
	beq	%x6, %x7, 12  #90
	j	be_else.519
	nop
	ret
	nop
be_else.519:
	sub	%x5, %x0, %x5  #93
	ret
	nop
print_int.228:  #540
	bge	%x5, %x0, 12  #100
	j	bge_else.520
	nop
	addi	%x24, %x0, 10
	bge	%x5, %x24, 12  #104
	j	bge_else.521
	nop
	addi	%x6, %x0, 10  #0
	sw	%x5, 0(%x2)  #107
	sw	%x1, 4(%x2)  #107
	addi	%x2, %x2, 8  #107
	jal	%x1, div.223  #107
	addi	%x2, %x2, -8  #107
	lw	%x1, 4(%x2) #107
	sw	%x5, 4(%x2)  #108
	sw	%x1, 12(%x2)  #108
	addi	%x2, %x2, 16  #108
	jal	%x1, print_int.228  #108
	addi	%x2, %x2, -16  #108
	lw	%x1, 12(%x2) #108
	addi	%x6, %x0, 10  #0
	lw	%x5, 4(%x2)  #109
	sw	%x1, 12(%x2)  #109
	addi	%x2, %x2, 16  #109
	jal	%x1, mul.215  #109
	addi	%x2, %x2, -16  #109
	lw	%x1, 12(%x2) #109
	lw	%x6, 0(%x2)  #109
	sub	%x5, %x6, %x5  #109
	addi	%x5, %x5, 48  #109
	out	%x5  #109
	ret
	nop
bge_else.521:
	addi	%x5, %x5, 48  #105
	out	%x5  #105
	ret
	nop
bge_else.520:
	sub	%x5, %x0, %x5  #102
	j	print_int.228  #102
	nop
assign_array.242:  #704
	beq	%x7, %x0, 12  #160
	j	be_else.524
	nop
	slli	%x7, %x7, 2  #161
	sw	%x6, %x7(%x5)  #161
	ret
	nop
be_else.524:
	slli	%x9, %x7, 2  #163
	sw	%x6, %x9(%x5)  #163
	addi	%x7, %x7, -1  #164
	j	assign_array.242  #164
	nop
create_array.246:  #756
	mv	%x7, %x3  #168
	sw	%x7, 0(%x2)  #171
	mv	%x23, %x7
	mv	%x7, %x5
	mv	%x5, %x23
	sw	%x1, 4(%x2)  #171
	addi	%x2, %x2, 8  #171
	jal	%x1, assign_array.242  #171
	addi	%x2, %x2, -8  #171
	lw	%x1, 4(%x2) #171
	lw	%x5, 0(%x2)  #172
	ret
	nop
f.256:  #808
	addi	%x5, %x0, 12345  #0
	ret
	nop
g.258:  #820
	addi	%x5, %x5, 1  #193
	ret
	nop
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 10  #0
	addi	%x6, %x0, 1  #0
	sw	%x1, 12(%x2)  #194
	addi	%x2, %x2, 16  #194
	jal	%x1, create_array.246  #194
	addi	%x2, %x2, -16  #194
	lw	%x1, 12(%x2) #194
	sw	%x5, 8(%x2)  #195
	mv	%x5, %g0
	sw	%x1, 12(%x2)  #195
	addi	%x2, %x2, 16  #195
	jal	%x1, f.256  #195
	addi	%x2, %x2, -16  #195
	lw	%x1, 12(%x2) #195
	addi	%x6, %x0, 67890  #0
	lw	%x7, 8(%x2)  #197
	lw	%x9, 0(%x7)  #197
	add	%x10, %x9, %x9  #198
	add	%x11, %x10, %x10  #199
	add	%x12, %x11, %x11  #200
	add	%x13, %x12, %x12  #201
	add	%x14, %x13, %x13  #202
	add	%x15, %x14, %x14  #203
	add	%x16, %x15, %x15  #204
	add	%x17, %x16, %x16  #205
	add	%x18, %x17, %x17  #206
	add	%x19, %x18, %x18  #207
	add	%x20, %x19, %x19  #208
	add	%x21, %x20, %x20  #209
	add	%x22, %x21, %x21  #210
	add	%x23, %x22, %x22  #211
	sw	%x5, 12(%x2)  #212
	add	%x5, %x23, %x23  #212
	lw	%x7, 4(%x7)  #214
	beq	%x7, %x0, 12  #214
	j	be_else.526
	nop
	mv	%x5, %x6
	sw	%x1, 20(%x2)  #214
	addi	%x2, %x2, 24  #214
	jal	%x1, g.258  #214
	addi	%x2, %x2, -24  #214
	lw	%x1, 20(%x2) #214
	j	be_cont.527
	nop
be_else.526:
	add	%x6, %x9, %x10  #215
	add	%x6, %x6, %x11  #215
	add	%x6, %x6, %x12  #215
	add	%x6, %x6, %x13  #215
	add	%x6, %x6, %x14  #215
	add	%x6, %x6, %x15  #215
	add	%x6, %x6, %x16  #215
	add	%x6, %x6, %x17  #215
	add	%x6, %x6, %x18  #215
	add	%x6, %x6, %x19  #215
	add	%x6, %x6, %x20  #215
	add	%x6, %x6, %x21  #215
	add	%x6, %x6, %x22  #215
	add	%x6, %x6, %x23  #215
	add	%x5, %x6, %x5  #215
	lw	%x6, 12(%x2)  #215
	add	%x5, %x5, %x6  #215
be_cont.527:
	sw	%x1, 20(%x2)  #213
	addi	%x2, %x2, 24  #213
	jal	%x1, print_int.228  #213
	addi	%x2, %x2, -24  #213
	lw	%x1, 20(%x2) #213
	addi	%x2, %x2, 112
