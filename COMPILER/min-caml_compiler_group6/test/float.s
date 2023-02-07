.section	".rodata"
.align	8
l.412:	! 48.300300
l.410:	! 4.500000
l.408:	! -12.300000
l.406:	! 0.001389
l.404:	! 0.041667
l.402:	! 0.500000
l.400:	! 1.000000
l.398:	! 0.000198
l.396:	! 0.008333
l.394:	! 0.166667
.section	".text"
sin.168:
	fmul	%f2, %f0, %f0  #16
	fmul	%f4, %f0, %f2  #17
	fmul	%f6, %f4, %f2  #18
	fmul	%f2, %f6, %f2  #19
	mv	%f8, l.394  #0
	fmul	%f4, %f8, %f4  #20
	fsub	%f0, %f0, %f4  #20
	mv	%f4, l.396  #0
	fmul	%f4, %f4, %f6  #20
	fadd	%f0, %f0, %f4  #20
	mv	%f4, l.398  #0
	fmul	%f2, %f4, %f2  #20
	fsub	%f0, %f0, %f2  #20
	ret
	nop
cos.170:
	fmul	%f0, %f0, %f0  #24
	fmul	%f2, %f0, %f0  #25
	fmul	%f4, %f2, %f0  #26
	mv	%f6, l.400  #0
	mv	%f8, l.402  #0
	fmul	%f0, %f8, %f0  #27
	fsub	%f0, %f6, %f0  #27
	mv	%f6, l.404  #0
	fmul	%f2, %f6, %f2  #27
	fadd	%f0, %f0, %f2  #27
	mv	%f2, l.406  #0
	fmul	%f2, %f2, %f4  #27
	fsub	%f0, %f0, %f2  #27
	ret
	nop
abs_float.176:
	fabs	%f0, %f0  #47
	ret
	nop
float_of_int.178:
	itof	%f0, %x5  #50
	ret
	nop
int_of_float.180:
	ftoi	%x5, %f0  #53
	ret
	nop
mul_abs.182:
	addi	%x24, %x0, -1
	beq	%x7, %x24, 12  #57
	j	be_else.423
	nop
	mv	%x5, %x9  #58
	ret
	nop
be_else.423:
	addi	%x10, %x0, 1  #0
	sll	%x10, %x10, %x7  #60
	and	%x10, %x6, %x10  #60
	beq	%x10, %x0, 12  #60
	j	be_else.424
	nop
	addi	%x7, %x7, -1  #61
	j	mul_abs.182  #61
	nop
be_else.424:
	addi	%x10, %x7, -1  #63
	sll	%x7, %x5, %x7  #63
	add	%x9, %x9, %x7  #63
	mv	%x7, %x10
	j	mul_abs.182  #63
	nop
mul.187:
	bge	%x5, %x0, 12  #67
	j	bge_else.425
	nop
	mv	%x7, %x5  #67
	j	bge_cont.426
	nop
bge_else.425:
	sub	%x7, %x0, %x5  #67
bge_cont.426:
	bge	%x6, %x0, 12  #68
	j	bge_else.427
	nop
	mv	%x9, %x6  #68
	j	bge_cont.428
	nop
bge_else.427:
	sub	%x9, %x0, %x6  #68
bge_cont.428:
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
	jal	%x1, mul_abs.182  #69
	addi	%x2, %x2, -16  #69
	lw	%x1, 12(%x2) #69
	lw	%x6, 4(%x2)  #70
	srli	%x6, %x6, 31  #70
	lw	%x7, 0(%x2)  #70
	srli	%x7, %x7, 31  #70
	beq	%x6, %x7, 12  #70
	j	be_else.429
	nop
	ret
	nop
be_else.429:
	sub	%x5, %x0, %x5  #73
	ret
	nop
div_abs.190:
	addi	%x24, %x0, -1
	beq	%x7, %x24, 12  #77
	j	be_else.430
	nop
	mv	%x5, %x9  #78
	ret
	nop
be_else.430:
	srl	%x10, %x5, %x7  #80
	bge	%x10, %x6, 12  #80
	j	ble_else.431
	nop
	sll	%x10, %x6, %x7  #81
	sub	%x5, %x5, %x10  #81
	addi	%x10, %x7, -1  #81
	addi	%x11, %x0, 1  #0
	sll	%x7, %x11, %x7  #81
	add	%x9, %x9, %x7  #81
	mv	%x7, %x10
	j	div_abs.190  #81
	nop
ble_else.431:
	addi	%x7, %x7, -1  #83
	j	div_abs.190  #83
	nop
div.195:
	bge	%x5, %x0, 12  #87
	j	bge_else.432
	nop
	mv	%x7, %x5  #87
	j	bge_cont.433
	nop
bge_else.432:
	sub	%x7, %x0, %x5  #87
bge_cont.433:
	bge	%x6, %x0, 12  #88
	j	bge_else.434
	nop
	mv	%x9, %x6  #88
	j	bge_cont.435
	nop
bge_else.434:
	sub	%x9, %x0, %x6  #88
bge_cont.435:
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
	jal	%x1, div_abs.190  #89
	addi	%x2, %x2, -16  #89
	lw	%x1, 12(%x2) #89
	lw	%x6, 4(%x2)  #90
	srli	%x6, %x6, 31  #90
	lw	%x7, 0(%x2)  #90
	srli	%x7, %x7, 31  #90
	beq	%x6, %x7, 12  #90
	j	be_else.436
	nop
	ret
	nop
be_else.436:
	sub	%x5, %x0, %x5  #93
	ret
	nop
print_int.200:
	bge	%x5, %x0, 12  #100
	j	bge_else.437
	nop
	addi	%x24, %x0, 10
	bge	%x5, %x24, 12  #104
	j	bge_else.438
	nop
	addi	%x6, %x0, 10  #0
	sw	%x5, 0(%x2)  #107
	sw	%x1, 4(%x2)  #107
	addi	%x2, %x2, 8  #107
	jal	%x1, div.195  #107
	addi	%x2, %x2, -8  #107
	lw	%x1, 4(%x2) #107
	sw	%x5, 4(%x2)  #108
	sw	%x1, 12(%x2)  #108
	addi	%x2, %x2, 16  #108
	jal	%x1, print_int.200  #108
	addi	%x2, %x2, -16  #108
	lw	%x1, 12(%x2) #108
	addi	%x6, %x0, 10  #0
	lw	%x5, 4(%x2)  #109
	sw	%x1, 12(%x2)  #109
	addi	%x2, %x2, 16  #109
	jal	%x1, mul.187  #109
	addi	%x2, %x2, -16  #109
	lw	%x1, 12(%x2) #109
	lw	%x6, 0(%x2)  #109
	sub	%x5, %x6, %x5  #109
	addi	%x5, %x5, 48  #109
	out	%x5  #109
	ret
	nop
bge_else.438:
	addi	%x5, %x5, 48  #105
	out	%x5  #105
	ret
	nop
bge_else.437:
	sub	%x5, %x0, %x5  #102
	j	print_int.200  #102
	nop
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	mv	%f0, l.408  #0
	sw	%x1, 12(%x2)  #165
	addi	%x2, %x2, 16  #165
	jal	%x1, abs_float.176  #165
	addi	%x2, %x2, -16  #165
	lw	%x1, 12(%x2) #165
	fsqrt	%f0, %f0  #165
	sw	%x1, 12(%x2)  #165
	addi	%x2, %x2, 16  #165
	jal	%x1, cos.170  #165
	addi	%x2, %x2, -16  #165
	lw	%x1, 12(%x2) #165
	sw	%x1, 12(%x2)  #165
	addi	%x2, %x2, 16  #165
	jal	%x1, sin.168  #165
	addi	%x2, %x2, -16  #165
	lw	%x1, 12(%x2) #165
	mv	%f2, l.410  #0
	fadd	%f0, %f0, %f2  #165
	mv	%f2, l.412  #0
	fsub	%f0, %f0, %f2  #165
	addi	%x5, %x0, 1000000  #0
	fsw	%f0, 8(%x2)  #167
	sw	%x1, 20(%x2)  #167
	addi	%x2, %x2, 24  #167
	jal	%x1, float_of_int.178  #167
	addi	%x2, %x2, -24  #167
	lw	%x1, 20(%x2) #167
	flw	%f2, 8(%x2)  #165
	fmul	%f0, %f2, %f0  #165
	sw	%x1, 20(%x2)  #164
	addi	%x2, %x2, 24  #164
	jal	%x1, int_of_float.180  #164
	addi	%x2, %x2, -24  #164
	lw	%x1, 20(%x2) #164
	sw	%x1, 20(%x2)  #163
	addi	%x2, %x2, 24  #163
	jal	%x1, print_int.200  #163
	addi	%x2, %x2, -24  #163
	lw	%x1, 20(%x2) #163
	addi	%x2, %x2, 112
