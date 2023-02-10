.section	".rodata"
.align	8
l.7053:	! 128.000000
l.7004:	! 0.900000
l.6893:	! 150.000000
l.6890:	! -150.000000
l.6871:	! 0.100000
l.6867:	! -2.000000
l.6864:	! 0.003906
l.6832:	! 20.000000
l.6830:	! 0.050000
l.6822:	! 0.250000
l.6809:	! 0.300000
l.6807:	! 255.000000
l.6802:	! 0.150000
l.6795:	! 3.141593
l.6793:	! 30.000000
l.6791:	! 15.000000
l.6789:	! 0.000100
l.6740:	! 100000000.000000
l.6734:	! 1000000000.000000
l.6711:	! -0.100000
l.6697:	! 0.010000
l.6695:	! -0.200000
l.6476:	! 2.000000
l.6439:	! -200.000000
l.6436:	! 200.000000
l.6431:	! 0.017453
l.6343:	! -1.000000
l.6333:	! 10.000000
l.6320:	! 0.090909
l.6318:	! 0.111111
l.6316:	! 0.142857
l.6314:	! 0.200000
l.6312:	! 0.333333
l.6310:	! 0.001389
l.6308:	! 0.041667
l.6305:	! 1.000000
l.6303:	! 0.000198
l.6301:	! 0.008333
l.6299:	! 0.166667
l.6297:	! 0.500000
l.6293:	! 0.000000
.section	".text"
fiszero.2528:  #0
	mv	%f2, l.6293  #0
	feq	%f31, %f0, %f2  #1
	bge	%f30, %f31, 12  #1
	j	fbe_else.9177
	nop
	addi	%x5, %x0, 1  #0
	ret
	nop
fbe_else.9177:
	addi	%x5, %x0, 0  #0
	ret
	nop
fispos.2530:  #44
	mv	%f2, l.6293  #0
	fle	%f31, %f0, %f2  #3
	bge	%f30, %f31, 12  #3
	j	fble_else.9178
	nop
	addi	%x5, %x0, 0  #0
	ret
	nop
fble_else.9178:
	addi	%x5, %x0, 1  #0
	ret
	nop
fisneg.2532:  #88
	mv	%f2, l.6293  #0
	fle	%f31, %f2, %f0  #5
	bge	%f30, %f31, 12  #5
	j	fble_else.9179
	nop
	addi	%x5, %x0, 0  #0
	ret
	nop
fble_else.9179:
	addi	%x5, %x0, 1  #0
	ret
	nop
fneg.2534:  #132
	fsub	%f0, %f30, %f0  #7
	ret
	nop
fsqr.2536:  #144
	fmul	%f0, %f0, %f0  #9
	ret
	nop
fhalf.2538:  #156
	mv	%f2, l.6297  #0
	fmul	%f0, %f2, %f0  #11
	ret
	nop
fless.2540:  #172
	fle	%f31, %f2, %f0  #13
	bge	%f30, %f31, 12  #13
	j	fble_else.9180
	nop
	addi	%x5, %x0, 0  #0
	ret
	nop
fble_else.9180:
	addi	%x5, %x0, 1  #0
	ret
	nop
sin.2543:  #212
	fmul	%f2, %f0, %f0  #16
	fmul	%f4, %f0, %f2  #17
	fmul	%f6, %f4, %f2  #18
	fmul	%f2, %f6, %f2  #19
	mv	%f8, l.6299  #0
	fmul	%f4, %f8, %f4  #20
	fsub	%f0, %f0, %f4  #20
	mv	%f4, l.6301  #0
	fmul	%f4, %f4, %f6  #20
	fadd	%f0, %f0, %f4  #20
	mv	%f4, l.6303  #0
	fmul	%f2, %f4, %f2  #20
	fsub	%f0, %f0, %f2  #20
	ret
	nop
cos.2545:  #272
	fmul	%f0, %f0, %f0  #24
	fmul	%f2, %f0, %f0  #25
	fmul	%f4, %f2, %f0  #26
	mv	%f6, l.6305  #0
	mv	%f8, l.6297  #0
	fmul	%f0, %f8, %f0  #27
	fsub	%f0, %f6, %f0  #27
	mv	%f6, l.6308  #0
	fmul	%f2, %f6, %f2  #27
	fadd	%f0, %f0, %f2  #27
	mv	%f2, l.6310  #0
	fmul	%f2, %f2, %f4  #27
	fsub	%f0, %f0, %f2  #27
	ret
	nop
atan.2547:  #332
	fmul	%f2, %f0, %f0  #31
	fmul	%f4, %f0, %f2  #32
	fmul	%f6, %f4, %f2  #33
	fmul	%f8, %f6, %f2  #34
	fmul	%f10, %f8, %f2  #35
	fmul	%f2, %f10, %f2  #36
	mv	%f12, l.6312  #0
	fmul	%f4, %f12, %f4  #37
	fsub	%f0, %f0, %f4  #37
	mv	%f4, l.6314  #0
	fmul	%f4, %f4, %f6  #37
	fadd	%f0, %f0, %f4  #37
	mv	%f4, l.6316  #0
	fmul	%f4, %f4, %f8  #37
	fsub	%f0, %f0, %f4  #37
	mv	%f4, l.6318  #0
	fmul	%f4, %f4, %f10  #37
	fadd	%f0, %f0, %f4  #37
	mv	%f4, l.6320  #0
	fmul	%f2, %f4, %f2  #37
	fsub	%f0, %f0, %f2  #37
	ret
	nop
floor.2549:  #424
	mv	%f2, l.6293  #0
	fle	%f31, %f2, %f0  #41
	bge	%f30, %f31, 12  #41
	j	fble_else.9181
	nop
	ftoi	%x5, %f0  #42
	itof	%f0, %x5  #42
	ret
	nop
fble_else.9181:
	mv	%f2, l.6305  #0
	fsub	%f0, %f0, %f2  #44
	ftoi	%x5, %f0  #44
	itof	%f0, %x5  #44
	ret
	nop
float_of_int.2553:  #484
	itof	%f0, %x5  #50
	ret
	nop
int_of_float.2555:  #496
	ftoi	%x5, %f0  #53
	ret
	nop
mul_abs.2557:  #508
	addi	%x24, %x0, -1
	beq	%x7, %x24, 12  #57
	j	be_else.9182
	nop
	mv	%x5, %x9  #58
	ret
	nop
be_else.9182:
	addi	%x10, %x0, 1  #0
	sll	%x10, %x10, %x7  #60
	and	%x10, %x6, %x10  #60
	beq	%x10, %x0, 12  #60
	j	be_else.9183
	nop
	addi	%x7, %x7, -1  #61
	j	mul_abs.2557  #61
	nop
be_else.9183:
	addi	%x10, %x7, -1  #63
	sll	%x7, %x5, %x7  #63
	add	%x9, %x9, %x7  #63
	mv	%x7, %x10
	j	mul_abs.2557  #63
	nop
mul.2562:  #592
	bge	%x5, %x0, 12  #67
	j	bge_else.9184
	nop
	mv	%x7, %x5  #67
	j	bge_cont.9185
	nop
bge_else.9184:
	sub	%x7, %x0, %x5  #67
bge_cont.9185:
	bge	%x6, %x0, 12  #68
	j	bge_else.9186
	nop
	mv	%x9, %x6  #68
	j	bge_cont.9187
	nop
bge_else.9186:
	sub	%x9, %x0, %x6  #68
bge_cont.9187:
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
	jal	%x1, mul_abs.2557  #69
	addi	%x2, %x2, -16  #69
	lw	%x1, 12(%x2) #69
	lw	%x6, 4(%x2)  #70
	srli	%x6, %x6, 31  #70
	lw	%x7, 0(%x2)  #70
	srli	%x7, %x7, 31  #70
	beq	%x6, %x7, 12  #70
	j	be_else.9188
	nop
	ret
	nop
be_else.9188:
	sub	%x5, %x0, %x5  #73
	ret
	nop
div_abs.2565:  #748
	addi	%x24, %x0, -1
	beq	%x7, %x24, 12  #77
	j	be_else.9189
	nop
	mv	%x5, %x9  #78
	ret
	nop
be_else.9189:
	srl	%x10, %x5, %x7  #80
	bge	%x10, %x6, 12  #80
	j	ble_else.9190
	nop
	sll	%x10, %x6, %x7  #81
	sub	%x5, %x5, %x10  #81
	addi	%x10, %x7, -1  #81
	addi	%x11, %x0, 1  #0
	sll	%x7, %x11, %x7  #81
	add	%x9, %x9, %x7  #81
	mv	%x7, %x10
	j	div_abs.2565  #81
	nop
ble_else.9190:
	addi	%x7, %x7, -1  #83
	j	div_abs.2565  #83
	nop
div.2570:  #836
	bge	%x5, %x0, 12  #87
	j	bge_else.9191
	nop
	mv	%x7, %x5  #87
	j	bge_cont.9192
	nop
bge_else.9191:
	sub	%x7, %x0, %x5  #87
bge_cont.9192:
	bge	%x6, %x0, 12  #88
	j	bge_else.9193
	nop
	mv	%x9, %x6  #88
	j	bge_cont.9194
	nop
bge_else.9193:
	sub	%x9, %x0, %x6  #88
bge_cont.9194:
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
	jal	%x1, div_abs.2565  #89
	addi	%x2, %x2, -16  #89
	lw	%x1, 12(%x2) #89
	lw	%x6, 4(%x2)  #90
	srli	%x6, %x6, 31  #90
	lw	%x7, 0(%x2)  #90
	srli	%x7, %x7, 31  #90
	beq	%x6, %x7, 12  #90
	j	be_else.9195
	nop
	ret
	nop
be_else.9195:
	sub	%x5, %x0, %x5  #93
	ret
	nop
print_char.2573:  #992
	out	%x5  #96
	ret
	nop
print_int.2575:  #1004
	bge	%x5, %x0, 12  #100
	j	bge_else.9197
	nop
	addi	%x24, %x0, 10
	bge	%x5, %x24, 12  #104
	j	bge_else.9198
	nop
	addi	%x6, %x0, 10  #0
	sw	%x5, 0(%x2)  #107
	sw	%x1, 4(%x2)  #107
	addi	%x2, %x2, 8  #107
	jal	%x1, div.2570  #107
	addi	%x2, %x2, -8  #107
	lw	%x1, 4(%x2) #107
	sw	%x5, 4(%x2)  #108
	sw	%x1, 12(%x2)  #108
	addi	%x2, %x2, 16  #108
	jal	%x1, print_int.2575  #108
	addi	%x2, %x2, -16  #108
	lw	%x1, 12(%x2) #108
	addi	%x6, %x0, 10  #0
	lw	%x5, 4(%x2)  #109
	sw	%x1, 12(%x2)  #109
	addi	%x2, %x2, 16  #109
	jal	%x1, mul.2562  #109
	addi	%x2, %x2, -16  #109
	lw	%x1, 12(%x2) #109
	lw	%x6, 0(%x2)  #109
	sub	%x5, %x6, %x5  #109
	addi	%x5, %x5, 48  #109
	out	%x5  #109
	ret
	nop
bge_else.9198:
	addi	%x5, %x5, 48  #105
	out	%x5  #105
	ret
	nop
bge_else.9197:
	sub	%x5, %x0, %x5  #102
	j	print_int.2575  #102
	nop
read_int_sub.2577:  #1160
	in	%x7  #113
	addi	%x24, %x0, 48
	bge	%x7, %x24, 12  #114
	j	bge_else.9201
	nop
	addi	%x24, %x0, 57
	bge	%x24, %x7, 12  #115
	j	ble_else.9202
	nop
	addi	%x9, %x0, 10  #0
	sw	%x6, 0(%x2)  #116
	sw	%x7, 4(%x2)  #116
	mv	%x6, %x9
	sw	%x1, 12(%x2)  #116
	addi	%x2, %x2, 16  #116
	jal	%x1, mul.2562  #116
	addi	%x2, %x2, -16  #116
	lw	%x1, 12(%x2) #116
	lw	%x6, 4(%x2)  #116
	addi	%x6, %x6, -48  #116
	add	%x5, %x5, %x6  #116
	lw	%x6, 0(%x2)  #116
	addi	%x6, %x6, 1  #116
	j	read_int_sub.2577  #116
	nop
ble_else.9202:
	addi	%x24, %x0, 45
	beq	%x7, %x24, 12  #118
	j	be_else.9203
	nop
	sw	%x1, 12(%x2)  #119
	addi	%x2, %x2, 16  #119
	jal	%x1, read_int_sub.2577  #119
	addi	%x2, %x2, -16  #119
	lw	%x1, 12(%x2) #119
	lw	%x6, 4(%x5)  #119
	lw	%x5, 0(%x5)  #119
	sub	%x5, %x0, %x5  #120
	mv	%x7, %x3  #120
	addi	%x3, %x3, 8  #120
	sw	%x6, 4(%x7)  #120
	sw	%x5, 0(%x7)  #120
	mv	%x5, %x7  #120
	ret
	nop
be_else.9203:
	mv	%x7, %x3  #121
	addi	%x3, %x3, 8  #121
	sw	%x6, 4(%x7)  #121
	sw	%x5, 0(%x7)  #121
	mv	%x5, %x7  #121
	ret
	nop
bge_else.9201:
	mv	%x7, %x3  #123
	addi	%x3, %x3, 8  #123
	sw	%x6, 4(%x7)  #123
	sw	%x5, 0(%x7)  #123
	mv	%x5, %x7  #123
	ret
	nop
read_int.2580:  #1380
	addi	%x5, %x0, 0  #0
	addi	%x6, %x0, 0  #0
	sw	%x1, 4(%x2)  #127
	addi	%x2, %x2, 8  #127
	jal	%x1, read_int_sub.2577  #127
	addi	%x2, %x2, -8  #127
	lw	%x1, 4(%x2) #127
	lw	%x5, 0(%x5)  #127
	ret
	nop
pow.2582:  #1420
	bge	%x0, %x5, 12  #132
	j	ble_else.9204
	nop
	ret
	nop
ble_else.9204:
	itof	%f2, %x5  #135
	fmul	%f0, %f0, %f2  #135
	addi	%x5, %x5, -1  #135
	j	pow.2582  #135
	nop
read_float_sub.2585:  #1460
	in	%x5  #139
	addi	%x24, %x0, 48
	bge	%x5, %x24, 12  #140
	j	bge_else.9205
	nop
	addi	%x24, %x0, 57
	bge	%x24, %x5, 12  #141
	j	ble_else.9206
	nop
	mv	%f2, l.6333  #0
	fmul	%f0, %f0, %f2  #142
	addi	%x5, %x5, -48  #142
	itof	%f2, %x5  #142
	fadd	%f0, %f0, %f2  #142
	j	read_float_sub.2585  #142
	nop
ble_else.9206:
	addi	%x24, %x0, 45
	beq	%x5, %x24, 12  #144
	j	be_else.9207
	nop
	sw	%x1, 4(%x2)  #145
	addi	%x2, %x2, 8  #145
	jal	%x1, read_float_sub.2585  #145
	addi	%x2, %x2, -8  #145
	lw	%x1, 4(%x2) #145
	fsub	%f0, %f30, %f0  #145
	ret
	nop
be_else.9207:
	addi	%x24, %x0, 46
	beq	%x5, %x24, 12  #147
	j	be_else.9208
	nop
	addi	%x5, %x0, 0  #0
	addi	%x6, %x0, 0  #0
	fsw	%f0, 0(%x2)  #148
	sw	%x1, 12(%x2)  #148
	addi	%x2, %x2, 16  #148
	jal	%x1, read_int_sub.2577  #148
	addi	%x2, %x2, -16  #148
	lw	%x1, 12(%x2) #148
	lw	%x6, 4(%x5)  #148
	lw	%x5, 0(%x5)  #148
	itof	%f0, %x5  #149
	mv	%f2, l.6333  #0
	fsw	%f0, 8(%x2)  #149
	mv	%x5, %x6
	mv	%f0, %f2
	mv	%f1, %f3
	sw	%x1, 20(%x2)  #149
	addi	%x2, %x2, 24  #149
	jal	%x1, pow.2582  #149
	addi	%x2, %x2, -24  #149
	lw	%x1, 20(%x2) #149
	flw	%f2, 8(%x2)  #149
	fdiv	%f0, %f2, %f0  #149
	flw	%f2, 0(%x2)  #149
	fadd	%f0, %f2, %f0  #149
	ret
	nop
be_else.9208:
	ret
	nop
bge_else.9205:
	ret
	nop
read_float.2587:  #1696
	mv	%f0, l.6293  #0
	j	read_float_sub.2585  #156
	nop
assign_array.2589:  #1708
	beq	%x7, %x0, 12  #160
	j	be_else.9209
	nop
	slli	%x7, %x7, 2  #161
	sw	%x6, %x7(%x5)  #161
	ret
	nop
be_else.9209:
	slli	%x9, %x7, 2  #163
	sw	%x6, %x9(%x5)  #163
	addi	%x7, %x7, -1  #164
	j	assign_array.2589  #164
	nop
create_array.2593:  #1756
	mv	%x7, %x3  #168
	sw	%x7, 0(%x2)  #171
	mv	%x23, %x7
	mv	%x7, %x5
	mv	%x5, %x23
	sw	%x1, 4(%x2)  #171
	addi	%x2, %x2, 8  #171
	jal	%x1, assign_array.2589  #171
	addi	%x2, %x2, -8  #171
	lw	%x1, 4(%x2) #171
	lw	%x5, 0(%x2)  #172
	ret
	nop
assign_farray.2596:  #1808
	beq	%x6, %x0, 12  #176
	j	be_else.9211
	nop
	slli	%x6, %x6, 3  #177
	fsw	%f0, %x6(%x5) #177
	ret
	nop
be_else.9211:
	slli	%x7, %x6, 3  #179
	fsw	%f0, %x7(%x5) #179
	addi	%x6, %x6, -1  #180
	j	assign_farray.2596  #180
	nop
create_float_array.2600:  #1856
	mv	%x6, %x3  #184
	sw	%x6, 0(%x2)  #187
	mv	%x23, %x6
	mv	%x6, %x5
	mv	%x5, %x23
	sw	%x1, 4(%x2)  #187
	addi	%x2, %x2, 8  #187
	jal	%x1, assign_farray.2596  #187
	addi	%x2, %x2, -8  #187
	lw	%x1, 4(%x2) #187
	lw	%x5, 0(%x2)  #188
	ret
	nop
xor.2633:  #1908
	beq	%x5, %x0, 12  #326
	j	be_else.9213
	nop
	mv	%x5, %x6  #326
	ret
	nop
be_else.9213:
	beq	%x6, %x0, 12  #326
	j	be_else.9214
	nop
	addi	%x5, %x0, 1  #0
	ret
	nop
be_else.9214:
	addi	%x5, %x0, 0  #0
	ret
	nop
sgn.2636:  #1968
	fsw	%f0, 0(%x2)  #334
	sw	%x1, 12(%x2)  #334
	addi	%x2, %x2, 16  #334
	jal	%x1, fiszero.2528  #334
	addi	%x2, %x2, -16  #334
	lw	%x1, 12(%x2) #334
	beq	%x5, %x0, 12  #334
	j	be_else.9215
	nop
	flw	%f0, 0(%x2)  #335
	sw	%x1, 12(%x2)  #335
	addi	%x2, %x2, 16  #335
	jal	%x1, fispos.2530  #335
	addi	%x2, %x2, -16  #335
	lw	%x1, 12(%x2) #335
	beq	%x5, %x0, 12  #335
	j	be_else.9216
	nop
	mv	%x5, l.6343  #0
	ret
	nop
be_else.9216:
	mv	%x5, l.6305  #0
	ret
	nop
be_else.9215:
	mv	%x5, l.6293  #0
	ret
	nop
fneg_cond.2638:  #2076
	beq	%x5, %x0, 12  #341
	j	be_else.9217
	nop
	j	fneg.2534  #341
	nop
be_else.9217:
	ret
	nop
add_mod5.2641:  #2104
	add	%x5, %x5, %x6  #346
	addi	%x24, %x0, 5
	bge	%x5, %x24, 12  #347
	j	bge_else.9218
	nop
	addi	%x5, %x5, -5  #347
	ret
	nop
bge_else.9218:
	ret
	nop
vecset.2644:  #2140
	fsw	%f0, 0(%x5) #362
	fsw	%f2, 8(%x5) #363
	fsw	%f4, 16(%x5) #364
	ret
	nop
vecfill.2649:  #2160
	fsw	%f0, 0(%x5) #369
	fsw	%f0, 8(%x5) #370
	fsw	%f0, 16(%x5) #371
	ret
	nop
vecbzero.2652:  #2180
	mv	%f0, l.6293  #0
	j	vecfill.2649  #376
	nop
veccpy.2654:  #2192
	flw	%f0, 0(%x6)  #381
	fsw	%f0, 0(%x5) #381
	flw	%f0, 8(%x6)  #382
	fsw	%f0, 8(%x5) #382
	flw	%f0, 16(%x6)  #383
	fsw	%f0, 16(%x5) #383
	ret
	nop
vecunit_sgn.2657:  #2224
	flw	%f0, 0(%x5)  #405
	sw	%x6, 0(%x2)  #405
	sw	%x5, 4(%x2)  #405
	sw	%x1, 12(%x2)  #405
	addi	%x2, %x2, 16  #405
	jal	%x1, fsqr.2536  #405
	addi	%x2, %x2, -16  #405
	lw	%x1, 12(%x2) #405
	lw	%x5, 4(%x2)  #405
	flw	%f2, 8(%x5)  #405
	fsw	%f0, 8(%x2)  #405
	mv	%f0, %f2
	mv	%f1, %f3
	sw	%x1, 20(%x2)  #405
	addi	%x2, %x2, 24  #405
	jal	%x1, fsqr.2536  #405
	addi	%x2, %x2, -24  #405
	lw	%x1, 20(%x2) #405
	flw	%f2, 8(%x2)  #405
	fadd	%f0, %f2, %f0  #405
	lw	%x5, 4(%x2)  #405
	flw	%f2, 16(%x5)  #405
	fsw	%f0, 16(%x2)  #405
	mv	%f0, %f2
	mv	%f1, %f3
	sw	%x1, 28(%x2)  #405
	addi	%x2, %x2, 32  #405
	jal	%x1, fsqr.2536  #405
	addi	%x2, %x2, -32  #405
	lw	%x1, 28(%x2) #405
	flw	%f2, 16(%x2)  #405
	fadd	%f0, %f2, %f0  #405
	fsqrt	%f0, %f0  #405
	fsw	%f0, 24(%x2)  #406
	sw	%x1, 36(%x2)  #406
	addi	%x2, %x2, 40  #406
	jal	%x1, fiszero.2528  #406
	addi	%x2, %x2, -40  #406
	lw	%x1, 36(%x2) #406
	beq	%x5, %x0, 12  #406
	j	be_else.9222
	nop
	lw	%x5, 0(%x2)  #406
	beq	%x5, %x0, 12  #406
	j	be_else.9224
	nop
	mv	%f0, l.6305  #0
	flw	%f2, 24(%x2)  #406
	fdiv	%f0, %f0, %f2  #406
	j	be_cont.9225
	nop
be_else.9224:
	mv	%f0, l.6343  #0
	flw	%f2, 24(%x2)  #406
	fdiv	%f0, %f0, %f2  #406
be_cont.9225:
	j	be_cont.9223
	nop
be_else.9222:
	mv	%f0, l.6305  #0
be_cont.9223:
	lw	%x5, 4(%x2)  #407
	flw	%f2, 0(%x5)  #407
	fmul	%f2, %f2, %f0  #407
	fsw	%f2, 0(%x5) #407
	flw	%f2, 8(%x5)  #408
	fmul	%f2, %f2, %f0  #408
	fsw	%f2, 8(%x5) #408
	flw	%f2, 16(%x5)  #409
	fmul	%f0, %f2, %f0  #409
	fsw	%f0, 16(%x5) #409
	ret
	nop
veciprod.2660:  #2500
	flw	%f0, 0(%x5)  #414
	flw	%f2, 0(%x6)  #414
	fmul	%f0, %f0, %f2  #414
	flw	%f2, 8(%x5)  #414
	flw	%f4, 8(%x6)  #414
	fmul	%f2, %f2, %f4  #414
	fadd	%f0, %f0, %f2  #414
	flw	%f2, 16(%x5)  #414
	flw	%f4, 16(%x6)  #414
	fmul	%f2, %f2, %f4  #414
	fadd	%f0, %f0, %f2  #414
	ret
	nop
veciprod2.2663:  #2552
	flw	%f6, 0(%x5)  #419
	fmul	%f0, %f6, %f0  #419
	flw	%f6, 8(%x5)  #419
	fmul	%f2, %f6, %f2  #419
	fadd	%f0, %f0, %f2  #419
	flw	%f2, 16(%x5)  #419
	fmul	%f2, %f2, %f4  #419
	fadd	%f0, %f0, %f2  #419
	ret
	nop
vecaccum.2668:  #2592
	flw	%f2, 0(%x5)  #424
	flw	%f4, 0(%x6)  #424
	fmul	%f4, %f0, %f4  #424
	fadd	%f2, %f2, %f4  #424
	fsw	%f2, 0(%x5) #424
	flw	%f2, 8(%x5)  #425
	flw	%f4, 8(%x6)  #425
	fmul	%f4, %f0, %f4  #425
	fadd	%f2, %f2, %f4  #425
	fsw	%f2, 8(%x5) #425
	flw	%f2, 16(%x5)  #426
	flw	%f4, 16(%x6)  #426
	fmul	%f0, %f0, %f4  #426
	fadd	%f0, %f2, %f0  #426
	fsw	%f0, 16(%x5) #426
	ret
	nop
vecadd.2672:  #2660
	flw	%f0, 0(%x5)  #431
	flw	%f2, 0(%x6)  #431
	fadd	%f0, %f0, %f2  #431
	fsw	%f0, 0(%x5) #431
	flw	%f0, 8(%x5)  #432
	flw	%f2, 8(%x6)  #432
	fadd	%f0, %f0, %f2  #432
	fsw	%f0, 8(%x5) #432
	flw	%f0, 16(%x5)  #433
	flw	%f2, 16(%x6)  #433
	fadd	%f0, %f0, %f2  #433
	fsw	%f0, 16(%x5) #433
	ret
	nop
vecscale.2675:  #2716
	flw	%f2, 0(%x5)  #447
	fmul	%f2, %f2, %f0  #447
	fsw	%f2, 0(%x5) #447
	flw	%f2, 8(%x5)  #448
	fmul	%f2, %f2, %f0  #448
	fsw	%f2, 8(%x5) #448
	flw	%f2, 16(%x5)  #449
	fmul	%f0, %f2, %f0  #449
	fsw	%f0, 16(%x5) #449
	ret
	nop
vecaccumv.2678:  #2760
	flw	%f0, 0(%x5)  #454
	flw	%f2, 0(%x6)  #454
	flw	%f4, 0(%x7)  #454
	fmul	%f2, %f2, %f4  #454
	fadd	%f0, %f0, %f2  #454
	fsw	%f0, 0(%x5) #454
	flw	%f0, 8(%x5)  #455
	flw	%f2, 8(%x6)  #455
	flw	%f4, 8(%x7)  #455
	fmul	%f2, %f2, %f4  #455
	fadd	%f0, %f0, %f2  #455
	fsw	%f0, 8(%x5) #455
	flw	%f0, 16(%x5)  #456
	flw	%f2, 16(%x6)  #456
	flw	%f4, 16(%x7)  #456
	fmul	%f2, %f2, %f4  #456
	fadd	%f0, %f0, %f2  #456
	fsw	%f0, 16(%x5) #456
	ret
	nop
o_texturetype.2682:  #2840
	lw	%x5, 0(%x5)  #465
	ret
	nop
o_form.2684:  #2852
	lw	%x5, 4(%x5)  #475
	ret
	nop
o_reflectiontype.2686:  #2864
	lw	%x5, 8(%x5)  #485
	ret
	nop
o_isinvert.2688:  #2876
	lw	%x5, 24(%x5)  #495
	ret
	nop
o_isrot.2690:  #2888
	lw	%x5, 12(%x5)  #504
	ret
	nop
o_param_a.2692:  #2900
	lw	%x5, 16(%x5)  #513
	flw	%f0, 0(%x5)  #518
	ret
	nop
o_param_b.2694:  #2916
	lw	%x5, 16(%x5)  #523
	flw	%f0, 8(%x5)  #528
	ret
	nop
o_param_c.2696:  #2932
	lw	%x5, 16(%x5)  #533
	flw	%f0, 16(%x5)  #538
	ret
	nop
o_param_abc.2698:  #2948
	lw	%x5, 16(%x5)  #543
	ret
	nop
o_param_x.2700:  #2960
	lw	%x5, 20(%x5)  #553
	flw	%f0, 0(%x5)  #558
	ret
	nop
o_param_y.2702:  #2976
	lw	%x5, 20(%x5)  #563
	flw	%f0, 8(%x5)  #568
	ret
	nop
o_param_z.2704:  #2992
	lw	%x5, 20(%x5)  #573
	flw	%f0, 16(%x5)  #578
	ret
	nop
o_diffuse.2706:  #3008
	lw	%x5, 28(%x5)  #583
	flw	%f0, 0(%x5)  #588
	ret
	nop
o_hilight.2708:  #3024
	lw	%x5, 28(%x5)  #593
	flw	%f0, 8(%x5)  #598
	ret
	nop
o_color_red.2710:  #3040
	lw	%x5, 32(%x5)  #603
	flw	%f0, 0(%x5)  #608
	ret
	nop
o_color_green.2712:  #3056
	lw	%x5, 32(%x5)  #613
	flw	%f0, 8(%x5)  #618
	ret
	nop
o_color_blue.2714:  #3072
	lw	%x5, 32(%x5)  #623
	flw	%f0, 16(%x5)  #628
	ret
	nop
o_param_r1.2716:  #3088
	lw	%x5, 36(%x5)  #633
	flw	%f0, 0(%x5)  #638
	ret
	nop
o_param_r2.2718:  #3104
	lw	%x5, 36(%x5)  #643
	flw	%f0, 8(%x5)  #648
	ret
	nop
o_param_r3.2720:  #3120
	lw	%x5, 36(%x5)  #653
	flw	%f0, 16(%x5)  #658
	ret
	nop
o_param_ctbl.2722:  #3136
	lw	%x5, 40(%x5)  #670
	ret
	nop
p_rgb.2724:  #3148
	lw	%x5, 0(%x5)  #684
	ret
	nop
p_intersection_points.2726:  #3160
	lw	%x5, 4(%x5)  #691
	ret
	nop
p_surface_ids.2728:  #3172
	lw	%x5, 8(%x5)  #699
	ret
	nop
p_calc_diffuse.2730:  #3184
	lw	%x5, 12(%x5)  #706
	ret
	nop
p_energy.2732:  #3196
	lw	%x5, 16(%x5)  #713
	ret
	nop
p_received_ray_20percent.2734:  #3208
	lw	%x5, 20(%x5)  #720
	ret
	nop
p_group_id.2736:  #3220
	lw	%x5, 24(%x5)  #736
	lw	%x5, 0(%x5)  #738
	ret
	nop
p_set_group_id.2738:  #3236
	lw	%x5, 24(%x5)  #743
	sw	%x6, 0(%x5)  #745
	ret
	nop
p_nvectors.2741:  #3252
	lw	%x5, 28(%x5)  #750
	ret
	nop
d_vec.2743:  #3264
	lw	%x5, 0(%x5)  #761
	ret
	nop
d_const.2745:  #3276
	lw	%x5, 4(%x5)  #767
	ret
	nop
r_surface_id.2747:  #3288
	lw	%x5, 0(%x5)  #777
	ret
	nop
r_dvec.2749:  #3300
	lw	%x5, 4(%x5)  #783
	ret
	nop
r_bright.2751:  #3312
	flw	%f0, 8(%x5)  #789
	ret
	nop
rad.2753:  #3324
	mv	%f2, l.6431  #0
	fmul	%f0, %f0, %f2  #799
	ret
	nop
read_screen_settings.2755:  #3340
	lw	%x5, 20(%x22)  #0
	lw	%x6, 16(%x22)  #0
	lw	%x7, 12(%x22)  #0
	lw	%x9, 8(%x22)  #0
	lw	%x10, 4(%x22)  #0
	sw	%x5, 0(%x2)  #806
	sw	%x7, 4(%x2)  #806
	sw	%x9, 8(%x2)  #806
	sw	%x6, 12(%x2)  #806
	sw	%x10, 16(%x2)  #806
	mv	%x5, %g0
	sw	%x1, 20(%x2)  #806
	addi	%x2, %x2, 24  #806
	jal	%x1, read_float.2587  #806
	addi	%x2, %x2, -24  #806
	lw	%x1, 20(%x2) #806
	lw	%x5, 16(%x2)  #806
	fsw	%f0, 0(%x5) #806
	mv	%x5, %g0
	sw	%x1, 20(%x2)  #807
	addi	%x2, %x2, 24  #807
	jal	%x1, read_float.2587  #807
	addi	%x2, %x2, -24  #807
	lw	%x1, 20(%x2) #807
	lw	%x5, 16(%x2)  #807
	fsw	%f0, 8(%x5) #807
	mv	%x5, %g0
	sw	%x1, 20(%x2)  #808
	addi	%x2, %x2, 24  #808
	jal	%x1, read_float.2587  #808
	addi	%x2, %x2, -24  #808
	lw	%x1, 20(%x2) #808
	lw	%x5, 16(%x2)  #808
	fsw	%f0, 16(%x5) #808
	mv	%x5, %g0
	sw	%x1, 20(%x2)  #810
	addi	%x2, %x2, 24  #810
	jal	%x1, read_float.2587  #810
	addi	%x2, %x2, -24  #810
	lw	%x1, 20(%x2) #810
	sw	%x1, 20(%x2)  #810
	addi	%x2, %x2, 24  #810
	jal	%x1, rad.2753  #810
	addi	%x2, %x2, -24  #810
	lw	%x1, 20(%x2) #810
	fsw	%f0, 24(%x2)  #811
	sw	%x1, 36(%x2)  #811
	addi	%x2, %x2, 40  #811
	jal	%x1, cos.2545  #811
	addi	%x2, %x2, -40  #811
	lw	%x1, 36(%x2) #811
	flw	%f2, 24(%x2)  #812
	fsw	%f0, 32(%x2)  #812
	mv	%f0, %f2
	mv	%f1, %f3
	sw	%x1, 44(%x2)  #812
	addi	%x2, %x2, 48  #812
	jal	%x1, sin.2543  #812
	addi	%x2, %x2, -48  #812
	lw	%x1, 44(%x2) #812
	fsw	%f0, 40(%x2)  #813
	mv	%x5, %g0
	sw	%x1, 52(%x2)  #813
	addi	%x2, %x2, 56  #813
	jal	%x1, read_float.2587  #813
	addi	%x2, %x2, -56  #813
	lw	%x1, 52(%x2) #813
	sw	%x1, 52(%x2)  #813
	addi	%x2, %x2, 56  #813
	jal	%x1, rad.2753  #813
	addi	%x2, %x2, -56  #813
	lw	%x1, 52(%x2) #813
	fsw	%f0, 48(%x2)  #814
	sw	%x1, 60(%x2)  #814
	addi	%x2, %x2, 64  #814
	jal	%x1, cos.2545  #814
	addi	%x2, %x2, -64  #814
	lw	%x1, 60(%x2) #814
	flw	%f2, 48(%x2)  #815
	fsw	%f0, 56(%x2)  #815
	mv	%f0, %f2
	mv	%f1, %f3
	sw	%x1, 68(%x2)  #815
	addi	%x2, %x2, 72  #815
	jal	%x1, sin.2543  #815
	addi	%x2, %x2, -72  #815
	lw	%x1, 68(%x2) #815
	flw	%f2, 32(%x2)  #817
	fmul	%f4, %f2, %f0  #817
	mv	%f6, l.6436  #0
	fmul	%f4, %f4, %f6  #817
	lw	%x5, 12(%x2)  #817
	fsw	%f4, 0(%x5) #817
	mv	%f4, l.6439  #0
	flw	%f6, 40(%x2)  #818
	fmul	%f4, %f6, %f4  #818
	fsw	%f4, 8(%x5) #818
	flw	%f4, 56(%x2)  #819
	fmul	%f8, %f2, %f4  #819
	mv	%f10, l.6436  #0
	fmul	%f8, %f8, %f10  #819
	fsw	%f8, 16(%x5) #819
	lw	%x6, 8(%x2)  #821
	fsw	%f4, 0(%x6) #821
	mv	%f8, l.6293  #0
	fsw	%f8, 8(%x6) #822
	fsw	%f0, 64(%x2)  #823
	sw	%x1, 76(%x2)  #823
	addi	%x2, %x2, 80  #823
	jal	%x1, fneg.2534  #823
	addi	%x2, %x2, -80  #823
	lw	%x1, 76(%x2) #823
	lw	%x5, 8(%x2)  #823
	fsw	%f0, 16(%x5) #823
	flw	%f0, 40(%x2)  #825
	sw	%x1, 76(%x2)  #825
	addi	%x2, %x2, 80  #825
	jal	%x1, fneg.2534  #825
	addi	%x2, %x2, -80  #825
	lw	%x1, 76(%x2) #825
	flw	%f2, 64(%x2)  #825
	fmul	%f0, %f0, %f2  #825
	lw	%x5, 4(%x2)  #825
	fsw	%f0, 0(%x5) #825
	flw	%f0, 32(%x2)  #826
	sw	%x1, 76(%x2)  #826
	addi	%x2, %x2, 80  #826
	jal	%x1, fneg.2534  #826
	addi	%x2, %x2, -80  #826
	lw	%x1, 76(%x2) #826
	lw	%x5, 4(%x2)  #826
	fsw	%f0, 8(%x5) #826
	flw	%f0, 40(%x2)  #827
	sw	%x1, 76(%x2)  #827
	addi	%x2, %x2, 80  #827
	jal	%x1, fneg.2534  #827
	addi	%x2, %x2, -80  #827
	lw	%x1, 76(%x2) #827
	flw	%f2, 56(%x2)  #827
	fmul	%f0, %f0, %f2  #827
	lw	%x5, 4(%x2)  #827
	fsw	%f0, 16(%x5) #827
	lw	%x5, 16(%x2)  #829
	flw	%f0, 0(%x5)  #829
	lw	%x6, 12(%x2)  #829
	flw	%f2, 0(%x6)  #829
	fsub	%f0, %f0, %f2  #829
	lw	%x7, 0(%x2)  #829
	fsw	%f0, 0(%x7) #829
	flw	%f0, 8(%x5)  #830
	flw	%f2, 8(%x6)  #830
	fsub	%f0, %f0, %f2  #830
	fsw	%f0, 8(%x7) #830
	flw	%f0, 16(%x5)  #831
	flw	%f2, 16(%x6)  #831
	fsub	%f0, %f0, %f2  #831
	fsw	%f0, 16(%x7) #831
	ret
	nop
read_light.2757:  #3976
	lw	%x5, 8(%x22)  #0
	lw	%x6, 4(%x22)  #0
	sw	%x6, 0(%x2)  #838
	sw	%x5, 4(%x2)  #838
	mv	%x5, %g0
	sw	%x1, 12(%x2)  #838
	addi	%x2, %x2, 16  #838
	jal	%x1, read_int.2580  #838
	addi	%x2, %x2, -16  #838
	lw	%x1, 12(%x2) #838
	mv	%x5, %g0
	sw	%x1, 12(%x2)  #841
	addi	%x2, %x2, 16  #841
	jal	%x1, read_float.2587  #841
	addi	%x2, %x2, -16  #841
	lw	%x1, 12(%x2) #841
	sw	%x1, 12(%x2)  #841
	addi	%x2, %x2, 16  #841
	jal	%x1, rad.2753  #841
	addi	%x2, %x2, -16  #841
	lw	%x1, 12(%x2) #841
	fsw	%f0, 8(%x2)  #842
	sw	%x1, 20(%x2)  #842
	addi	%x2, %x2, 24  #842
	jal	%x1, sin.2543  #842
	addi	%x2, %x2, -24  #842
	lw	%x1, 20(%x2) #842
	sw	%x1, 20(%x2)  #843
	addi	%x2, %x2, 24  #843
	jal	%x1, fneg.2534  #843
	addi	%x2, %x2, -24  #843
	lw	%x1, 20(%x2) #843
	lw	%x5, 4(%x2)  #843
	fsw	%f0, 8(%x5) #843
	mv	%x5, %g0
	sw	%x1, 20(%x2)  #844
	addi	%x2, %x2, 24  #844
	jal	%x1, read_float.2587  #844
	addi	%x2, %x2, -24  #844
	lw	%x1, 20(%x2) #844
	sw	%x1, 20(%x2)  #844
	addi	%x2, %x2, 24  #844
	jal	%x1, rad.2753  #844
	addi	%x2, %x2, -24  #844
	lw	%x1, 20(%x2) #844
	flw	%f2, 8(%x2)  #845
	fsw	%f0, 16(%x2)  #845
	mv	%f0, %f2
	mv	%f1, %f3
	sw	%x1, 28(%x2)  #845
	addi	%x2, %x2, 32  #845
	jal	%x1, cos.2545  #845
	addi	%x2, %x2, -32  #845
	lw	%x1, 28(%x2) #845
	flw	%f2, 16(%x2)  #846
	fsw	%f0, 24(%x2)  #846
	mv	%f0, %f2
	mv	%f1, %f3
	sw	%x1, 36(%x2)  #846
	addi	%x2, %x2, 40  #846
	jal	%x1, sin.2543  #846
	addi	%x2, %x2, -40  #846
	lw	%x1, 36(%x2) #846
	flw	%f2, 24(%x2)  #847
	fmul	%f0, %f2, %f0  #847
	lw	%x5, 4(%x2)  #847
	fsw	%f0, 0(%x5) #847
	flw	%f0, 16(%x2)  #848
	sw	%x1, 36(%x2)  #848
	addi	%x2, %x2, 40  #848
	jal	%x1, cos.2545  #848
	addi	%x2, %x2, -40  #848
	lw	%x1, 36(%x2) #848
	flw	%f2, 24(%x2)  #849
	fmul	%f0, %f2, %f0  #849
	lw	%x5, 4(%x2)  #849
	fsw	%f0, 16(%x5) #849
	mv	%x5, %g0
	sw	%x1, 36(%x2)  #850
	addi	%x2, %x2, 40  #850
	jal	%x1, read_float.2587  #850
	addi	%x2, %x2, -40  #850
	lw	%x1, 36(%x2) #850
	lw	%x5, 0(%x2)  #850
	fsw	%f0, 0(%x5) #850
	ret
	nop
rotate_quadratic_matrix.2759:  #4324
	flw	%f0, 0(%x6)  #860
	sw	%x5, 0(%x2)  #860
	sw	%x6, 4(%x2)  #860
	sw	%x1, 12(%x2)  #860
	addi	%x2, %x2, 16  #860
	jal	%x1, cos.2545  #860
	addi	%x2, %x2, -16  #860
	lw	%x1, 12(%x2) #860
	lw	%x5, 4(%x2)  #861
	flw	%f2, 0(%x5)  #861
	fsw	%f0, 8(%x2)  #861
	mv	%f0, %f2
	mv	%f1, %f3
	sw	%x1, 20(%x2)  #861
	addi	%x2, %x2, 24  #861
	jal	%x1, sin.2543  #861
	addi	%x2, %x2, -24  #861
	lw	%x1, 20(%x2) #861
	lw	%x5, 4(%x2)  #862
	flw	%f2, 8(%x5)  #862
	fsw	%f0, 16(%x2)  #862
	mv	%f0, %f2
	mv	%f1, %f3
	sw	%x1, 28(%x2)  #862
	addi	%x2, %x2, 32  #862
	jal	%x1, cos.2545  #862
	addi	%x2, %x2, -32  #862
	lw	%x1, 28(%x2) #862
	lw	%x5, 4(%x2)  #863
	flw	%f2, 8(%x5)  #863
	fsw	%f0, 24(%x2)  #863
	mv	%f0, %f2
	mv	%f1, %f3
	sw	%x1, 36(%x2)  #863
	addi	%x2, %x2, 40  #863
	jal	%x1, sin.2543  #863
	addi	%x2, %x2, -40  #863
	lw	%x1, 36(%x2) #863
	lw	%x5, 4(%x2)  #864
	flw	%f2, 16(%x5)  #864
	fsw	%f0, 32(%x2)  #864
	mv	%f0, %f2
	mv	%f1, %f3
	sw	%x1, 44(%x2)  #864
	addi	%x2, %x2, 48  #864
	jal	%x1, cos.2545  #864
	addi	%x2, %x2, -48  #864
	lw	%x1, 44(%x2) #864
	lw	%x5, 4(%x2)  #865
	flw	%f2, 16(%x5)  #865
	fsw	%f0, 40(%x2)  #865
	mv	%f0, %f2
	mv	%f1, %f3
	sw	%x1, 52(%x2)  #865
	addi	%x2, %x2, 56  #865
	jal	%x1, sin.2543  #865
	addi	%x2, %x2, -56  #865
	lw	%x1, 52(%x2) #865
	flw	%f2, 40(%x2)  #867
	flw	%f4, 24(%x2)  #867
	fmul	%f6, %f4, %f2  #867
	flw	%f8, 32(%x2)  #868
	flw	%f10, 16(%x2)  #868
	fmul	%f12, %f10, %f8  #868
	fmul	%f12, %f12, %f2  #868
	flw	%f14, 8(%x2)  #868
	fmul	%f16, %f14, %f0  #868
	fsub	%f12, %f12, %f16  #868
	fmul	%f16, %f14, %f8  #869
	fmul	%f16, %f16, %f2  #869
	fmul	%f18, %f10, %f0  #869
	fadd	%f16, %f16, %f18  #869
	fmul	%f18, %f4, %f0  #871
	fmul	%f20, %f10, %f8  #872
	fmul	%f20, %f20, %f0  #872
	fmul	%f22, %f14, %f2  #872
	fadd	%f20, %f20, %f22  #872
	fmul	%f22, %f14, %f8  #873
	fmul	%f0, %f22, %f0  #873
	fmul	%f2, %f10, %f2  #873
	fsub	%f0, %f0, %f2  #873
	fsw	%f0, 48(%x2)  #875
	fsw	%f16, 56(%x2)  #875
	fsw	%f20, 64(%x2)  #875
	fsw	%f12, 72(%x2)  #875
	fsw	%f18, 80(%x2)  #875
	fsw	%f6, 88(%x2)  #875
	mv	%f0, %f8
	mv	%f1, %f9
	sw	%x1, 100(%x2)  #875
	addi	%x2, %x2, 104  #875
	jal	%x1, fneg.2534  #875
	addi	%x2, %x2, -104  #875
	lw	%x1, 100(%x2) #875
	flw	%f2, 24(%x2)  #876
	flw	%f4, 16(%x2)  #876
	fmul	%f4, %f4, %f2  #876
	flw	%f6, 8(%x2)  #877
	fmul	%f2, %f6, %f2  #877
	lw	%x5, 0(%x2)  #880
	flw	%f6, 0(%x5)  #880
	flw	%f8, 8(%x5)  #881
	flw	%f10, 16(%x5)  #882
	flw	%f12, 88(%x2)  #887
	fsw	%f2, 96(%x2)  #887
	fsw	%f4, 104(%x2)  #887
	fsw	%f10, 112(%x2)  #887
	fsw	%f0, 120(%x2)  #887
	fsw	%f8, 128(%x2)  #887
	fsw	%f6, 136(%x2)  #887
	mv	%f0, %f12
	mv	%f1, %f13
	sw	%x1, 148(%x2)  #887
	addi	%x2, %x2, 152  #887
	jal	%x1, fsqr.2536  #887
	addi	%x2, %x2, -152  #887
	lw	%x1, 148(%x2) #887
	flw	%f2, 136(%x2)  #887
	fmul	%f0, %f2, %f0  #887
	flw	%f4, 80(%x2)  #887
	fsw	%f0, 144(%x2)  #887
	mv	%f0, %f4
	mv	%f1, %f5
	sw	%x1, 156(%x2)  #887
	addi	%x2, %x2, 160  #887
	jal	%x1, fsqr.2536  #887
	addi	%x2, %x2, -160  #887
	lw	%x1, 156(%x2) #887
	flw	%f2, 128(%x2)  #887
	fmul	%f0, %f2, %f0  #887
	flw	%f4, 144(%x2)  #887
	fadd	%f0, %f4, %f0  #887
	flw	%f4, 120(%x2)  #887
	fsw	%f0, 152(%x2)  #887
	mv	%f0, %f4
	mv	%f1, %f5
	sw	%x1, 164(%x2)  #887
	addi	%x2, %x2, 168  #887
	jal	%x1, fsqr.2536  #887
	addi	%x2, %x2, -168  #887
	lw	%x1, 164(%x2) #887
	flw	%f2, 112(%x2)  #887
	fmul	%f0, %f2, %f0  #887
	flw	%f4, 152(%x2)  #887
	fadd	%f0, %f4, %f0  #887
	lw	%x5, 0(%x2)  #887
	fsw	%f0, 0(%x5) #887
	flw	%f0, 72(%x2)  #888
	sw	%x1, 164(%x2)  #888
	addi	%x2, %x2, 168  #888
	jal	%x1, fsqr.2536  #888
	addi	%x2, %x2, -168  #888
	lw	%x1, 164(%x2) #888
	flw	%f2, 136(%x2)  #888
	fmul	%f0, %f2, %f0  #888
	flw	%f4, 64(%x2)  #888
	fsw	%f0, 160(%x2)  #888
	mv	%f0, %f4
	mv	%f1, %f5
	sw	%x1, 172(%x2)  #888
	addi	%x2, %x2, 176  #888
	jal	%x1, fsqr.2536  #888
	addi	%x2, %x2, -176  #888
	lw	%x1, 172(%x2) #888
	flw	%f2, 128(%x2)  #888
	fmul	%f0, %f2, %f0  #888
	flw	%f4, 160(%x2)  #888
	fadd	%f0, %f4, %f0  #888
	flw	%f4, 104(%x2)  #888
	fsw	%f0, 168(%x2)  #888
	mv	%f0, %f4
	mv	%f1, %f5
	sw	%x1, 180(%x2)  #888
	addi	%x2, %x2, 184  #888
	jal	%x1, fsqr.2536  #888
	addi	%x2, %x2, -184  #888
	lw	%x1, 180(%x2) #888
	flw	%f2, 112(%x2)  #888
	fmul	%f0, %f2, %f0  #888
	flw	%f4, 168(%x2)  #888
	fadd	%f0, %f4, %f0  #888
	lw	%x5, 0(%x2)  #888
	fsw	%f0, 8(%x5) #888
	flw	%f0, 56(%x2)  #889
	sw	%x1, 180(%x2)  #889
	addi	%x2, %x2, 184  #889
	jal	%x1, fsqr.2536  #889
	addi	%x2, %x2, -184  #889
	lw	%x1, 180(%x2) #889
	flw	%f2, 136(%x2)  #889
	fmul	%f0, %f2, %f0  #889
	flw	%f4, 48(%x2)  #889
	fsw	%f0, 176(%x2)  #889
	mv	%f0, %f4
	mv	%f1, %f5
	sw	%x1, 188(%x2)  #889
	addi	%x2, %x2, 192  #889
	jal	%x1, fsqr.2536  #889
	addi	%x2, %x2, -192  #889
	lw	%x1, 188(%x2) #889
	flw	%f2, 128(%x2)  #889
	fmul	%f0, %f2, %f0  #889
	flw	%f4, 176(%x2)  #889
	fadd	%f0, %f4, %f0  #889
	flw	%f4, 96(%x2)  #889
	fsw	%f0, 184(%x2)  #889
	mv	%f0, %f4
	mv	%f1, %f5
	sw	%x1, 196(%x2)  #889
	addi	%x2, %x2, 200  #889
	jal	%x1, fsqr.2536  #889
	addi	%x2, %x2, -200  #889
	lw	%x1, 196(%x2) #889
	flw	%f2, 112(%x2)  #889
	fmul	%f0, %f2, %f0  #889
	flw	%f4, 184(%x2)  #889
	fadd	%f0, %f4, %f0  #889
	lw	%x5, 0(%x2)  #889
	fsw	%f0, 16(%x5) #889
	mv	%f0, l.6476  #0
	flw	%f4, 72(%x2)  #892
	flw	%f6, 136(%x2)  #892
	fmul	%f8, %f6, %f4  #892
	flw	%f10, 56(%x2)  #892
	fmul	%f8, %f8, %f10  #892
	flw	%f12, 64(%x2)  #892
	flw	%f14, 128(%x2)  #892
	fmul	%f16, %f14, %f12  #892
	flw	%f18, 48(%x2)  #892
	fmul	%f16, %f16, %f18  #892
	fadd	%f8, %f8, %f16  #892
	flw	%f16, 104(%x2)  #892
	fmul	%f20, %f2, %f16  #892
	flw	%f22, 96(%x2)  #892
	fmul	%f20, %f20, %f22  #892
	fadd	%f8, %f8, %f20  #892
	fmul	%f0, %f0, %f8  #892
	lw	%x5, 4(%x2)  #892
	fsw	%f0, 0(%x5) #892
	mv	%f0, l.6476  #0
	flw	%f8, 88(%x2)  #893
	fmul	%f20, %f6, %f8  #893
	fmul	%f10, %f20, %f10  #893
	flw	%f20, 80(%x2)  #893
	fmul	%f24, %f14, %f20  #893
	fmul	%f18, %f24, %f18  #893
	fadd	%f10, %f10, %f18  #893
	flw	%f18, 120(%x2)  #893
	fmul	%f24, %f2, %f18  #893
	fmul	%f22, %f24, %f22  #893
	fadd	%f10, %f10, %f22  #893
	fmul	%f0, %f0, %f10  #893
	fsw	%f0, 8(%x5) #893
	mv	%f0, l.6476  #0
	fmul	%f6, %f6, %f8  #894
	fmul	%f4, %f6, %f4  #894
	fmul	%f6, %f14, %f20  #894
	fmul	%f6, %f6, %f12  #894
	fadd	%f4, %f4, %f6  #894
	fmul	%f2, %f2, %f18  #894
	fmul	%f2, %f2, %f16  #894
	fadd	%f2, %f4, %f2  #894
	fmul	%f0, %f0, %f2  #894
	fsw	%f0, 16(%x5) #894
	ret
	nop
read_nth_object.2762:  #5388
	lw	%x6, 4(%x22)  #0
	sw	%x6, 0(%x2)  #901
	sw	%x5, 4(%x2)  #901
	mv	%x5, %g0
	sw	%x1, 12(%x2)  #901
	addi	%x2, %x2, 16  #901
	jal	%x1, read_int.2580  #901
	addi	%x2, %x2, -16  #901
	lw	%x1, 12(%x2) #901
	addi	%x24, %x0, -1
	beq	%x5, %x24, 12  #902
	j	be_else.9236
	nop
	addi	%x5, %x0, 0  #0
	ret
	nop
be_else.9236:
	sw	%x5, 8(%x2)  #904
	mv	%x5, %g0
	sw	%x1, 12(%x2)  #904
	addi	%x2, %x2, 16  #904
	jal	%x1, read_int.2580  #904
	addi	%x2, %x2, -16  #904
	lw	%x1, 12(%x2) #904
	sw	%x5, 12(%x2)  #905
	mv	%x5, %g0
	sw	%x1, 20(%x2)  #905
	addi	%x2, %x2, 24  #905
	jal	%x1, read_int.2580  #905
	addi	%x2, %x2, -24  #905
	lw	%x1, 20(%x2) #905
	sw	%x5, 16(%x2)  #906
	mv	%x5, %g0
	sw	%x1, 20(%x2)  #906
	addi	%x2, %x2, 24  #906
	jal	%x1, read_int.2580  #906
	addi	%x2, %x2, -24  #906
	lw	%x1, 20(%x2) #906
	addi	%x6, %x0, 3  #0
	mv	%f0, l.6293  #0
	sw	%x5, 20(%x2)  #908
	mv	%x5, %x6
	sw	%x1, 28(%x2)  #908
	addi	%x2, %x2, 32  #908
	jal	%x1, create_float_array.2600  #908
	addi	%x2, %x2, -32  #908
	lw	%x1, 28(%x2) #908
	sw	%x5, 24(%x2)  #909
	mv	%x5, %g0
	sw	%x1, 28(%x2)  #909
	addi	%x2, %x2, 32  #909
	jal	%x1, read_float.2587  #909
	addi	%x2, %x2, -32  #909
	lw	%x1, 28(%x2) #909
	lw	%x5, 24(%x2)  #909
	fsw	%f0, 0(%x5) #909
	mv	%x5, %g0
	sw	%x1, 28(%x2)  #910
	addi	%x2, %x2, 32  #910
	jal	%x1, read_float.2587  #910
	addi	%x2, %x2, -32  #910
	lw	%x1, 28(%x2) #910
	lw	%x5, 24(%x2)  #910
	fsw	%f0, 8(%x5) #910
	mv	%x5, %g0
	sw	%x1, 28(%x2)  #911
	addi	%x2, %x2, 32  #911
	jal	%x1, read_float.2587  #911
	addi	%x2, %x2, -32  #911
	lw	%x1, 28(%x2) #911
	lw	%x5, 24(%x2)  #911
	fsw	%f0, 16(%x5) #911
	addi	%x6, %x0, 3  #0
	mv	%f0, l.6293  #0
	mv	%x5, %x6
	sw	%x1, 28(%x2)  #913
	addi	%x2, %x2, 32  #913
	jal	%x1, create_float_array.2600  #913
	addi	%x2, %x2, -32  #913
	lw	%x1, 28(%x2) #913
	sw	%x5, 28(%x2)  #914
	mv	%x5, %g0
	sw	%x1, 36(%x2)  #914
	addi	%x2, %x2, 40  #914
	jal	%x1, read_float.2587  #914
	addi	%x2, %x2, -40  #914
	lw	%x1, 36(%x2) #914
	lw	%x5, 28(%x2)  #914
	fsw	%f0, 0(%x5) #914
	mv	%x5, %g0
	sw	%x1, 36(%x2)  #915
	addi	%x2, %x2, 40  #915
	jal	%x1, read_float.2587  #915
	addi	%x2, %x2, -40  #915
	lw	%x1, 36(%x2) #915
	lw	%x5, 28(%x2)  #915
	fsw	%f0, 8(%x5) #915
	mv	%x5, %g0
	sw	%x1, 36(%x2)  #916
	addi	%x2, %x2, 40  #916
	jal	%x1, read_float.2587  #916
	addi	%x2, %x2, -40  #916
	lw	%x1, 36(%x2) #916
	lw	%x5, 28(%x2)  #916
	fsw	%f0, 16(%x5) #916
	mv	%x5, %g0
	sw	%x1, 36(%x2)  #918
	addi	%x2, %x2, 40  #918
	jal	%x1, read_float.2587  #918
	addi	%x2, %x2, -40  #918
	lw	%x1, 36(%x2) #918
	sw	%x1, 36(%x2)  #918
	addi	%x2, %x2, 40  #918
	jal	%x1, fisneg.2532  #918
	addi	%x2, %x2, -40  #918
	lw	%x1, 36(%x2) #918
	addi	%x6, %x0, 2  #0
	mv	%f0, l.6293  #0
	sw	%x5, 32(%x2)  #920
	mv	%x5, %x6
	sw	%x1, 36(%x2)  #920
	addi	%x2, %x2, 40  #920
	jal	%x1, create_float_array.2600  #920
	addi	%x2, %x2, -40  #920
	lw	%x1, 36(%x2) #920
	sw	%x5, 36(%x2)  #921
	mv	%x5, %g0
	sw	%x1, 44(%x2)  #921
	addi	%x2, %x2, 48  #921
	jal	%x1, read_float.2587  #921
	addi	%x2, %x2, -48  #921
	lw	%x1, 44(%x2) #921
	lw	%x5, 36(%x2)  #921
	fsw	%f0, 0(%x5) #921
	mv	%x5, %g0
	sw	%x1, 44(%x2)  #922
	addi	%x2, %x2, 48  #922
	jal	%x1, read_float.2587  #922
	addi	%x2, %x2, -48  #922
	lw	%x1, 44(%x2) #922
	lw	%x5, 36(%x2)  #922
	fsw	%f0, 8(%x5) #922
	addi	%x6, %x0, 3  #0
	mv	%f0, l.6293  #0
	mv	%x5, %x6
	sw	%x1, 44(%x2)  #924
	addi	%x2, %x2, 48  #924
	jal	%x1, create_float_array.2600  #924
	addi	%x2, %x2, -48  #924
	lw	%x1, 44(%x2) #924
	sw	%x5, 40(%x2)  #925
	mv	%x5, %g0
	sw	%x1, 44(%x2)  #925
	addi	%x2, %x2, 48  #925
	jal	%x1, read_float.2587  #925
	addi	%x2, %x2, -48  #925
	lw	%x1, 44(%x2) #925
	lw	%x5, 40(%x2)  #925
	fsw	%f0, 0(%x5) #925
	mv	%x5, %g0
	sw	%x1, 44(%x2)  #926
	addi	%x2, %x2, 48  #926
	jal	%x1, read_float.2587  #926
	addi	%x2, %x2, -48  #926
	lw	%x1, 44(%x2) #926
	lw	%x5, 40(%x2)  #926
	fsw	%f0, 8(%x5) #926
	mv	%x5, %g0
	sw	%x1, 44(%x2)  #927
	addi	%x2, %x2, 48  #927
	jal	%x1, read_float.2587  #927
	addi	%x2, %x2, -48  #927
	lw	%x1, 44(%x2) #927
	lw	%x5, 40(%x2)  #927
	fsw	%f0, 16(%x5) #927
	addi	%x6, %x0, 3  #0
	mv	%f0, l.6293  #0
	mv	%x5, %x6
	sw	%x1, 44(%x2)  #929
	addi	%x2, %x2, 48  #929
	jal	%x1, create_float_array.2600  #929
	addi	%x2, %x2, -48  #929
	lw	%x1, 44(%x2) #929
	lw	%x6, 20(%x2)  #930
	beq	%x6, %x0, 12  #930
	j	be_else.9237
	nop
	j	be_cont.9238
	nop
be_else.9237:
	sw	%x5, 44(%x2)  #932
	mv	%x5, %g0
	sw	%x1, 52(%x2)  #932
	addi	%x2, %x2, 56  #932
	jal	%x1, read_float.2587  #932
	addi	%x2, %x2, -56  #932
	lw	%x1, 52(%x2) #932
	sw	%x1, 52(%x2)  #932
	addi	%x2, %x2, 56  #932
	jal	%x1, rad.2753  #932
	addi	%x2, %x2, -56  #932
	lw	%x1, 52(%x2) #932
	lw	%x5, 44(%x2)  #932
	fsw	%f0, 0(%x5) #932
	mv	%x5, %g0
	sw	%x1, 52(%x2)  #933
	addi	%x2, %x2, 56  #933
	jal	%x1, read_float.2587  #933
	addi	%x2, %x2, -56  #933
	lw	%x1, 52(%x2) #933
	sw	%x1, 52(%x2)  #933
	addi	%x2, %x2, 56  #933
	jal	%x1, rad.2753  #933
	addi	%x2, %x2, -56  #933
	lw	%x1, 52(%x2) #933
	lw	%x5, 44(%x2)  #933
	fsw	%f0, 8(%x5) #933
	mv	%x5, %g0
	sw	%x1, 52(%x2)  #934
	addi	%x2, %x2, 56  #934
	jal	%x1, read_float.2587  #934
	addi	%x2, %x2, -56  #934
	lw	%x1, 52(%x2) #934
	sw	%x1, 52(%x2)  #934
	addi	%x2, %x2, 56  #934
	jal	%x1, rad.2753  #934
	addi	%x2, %x2, -56  #934
	lw	%x1, 52(%x2) #934
	lw	%x5, 44(%x2)  #934
	fsw	%f0, 16(%x5) #934
be_cont.9238:
	lw	%x6, 12(%x2)  #941
	addi	%x24, %x0, 2
	beq	%x6, %x24, 12  #941
	j	be_else.9239
	nop
	addi	%x7, %x0, 1  #0
	j	be_cont.9240
	nop
be_else.9239:
	lw	%x7, 32(%x2)  #941
be_cont.9240:
	addi	%x9, %x0, 4  #0
	mv	%f0, l.6293  #0
	sw	%x7, 48(%x2)  #942
	sw	%x5, 44(%x2)  #942
	mv	%x5, %x9
	sw	%x1, 52(%x2)  #942
	addi	%x2, %x2, 56  #942
	jal	%x1, create_float_array.2600  #942
	addi	%x2, %x2, -56  #942
	lw	%x1, 52(%x2) #942
	mv	%x6, %x3  #945
	addi	%x3, %x3, 48  #945
	sw	%x5, 40(%x6)  #945
	lw	%x5, 44(%x2)  #945
	sw	%x5, 36(%x6)  #945
	lw	%x7, 40(%x2)  #945
	sw	%x7, 32(%x6)  #945
	lw	%x7, 36(%x2)  #945
	sw	%x7, 28(%x6)  #945
	lw	%x7, 48(%x2)  #945
	sw	%x7, 24(%x6)  #945
	lw	%x7, 28(%x2)  #945
	sw	%x7, 20(%x6)  #945
	lw	%x7, 24(%x2)  #945
	sw	%x7, 16(%x6)  #945
	lw	%x9, 20(%x2)  #945
	sw	%x9, 12(%x6)  #945
	lw	%x10, 16(%x2)  #945
	sw	%x10, 8(%x6)  #945
	lw	%x10, 12(%x2)  #945
	sw	%x10, 4(%x6)  #945
	lw	%x11, 8(%x2)  #945
	sw	%x11, 0(%x6)  #945
	lw	%x11, 4(%x2)  #953
	slli	%x11, %x11, 2  #953
	lw	%x12, 0(%x2)  #953
	sw	%x6, %x11(%x12)  #953
	addi	%x24, %x0, 3
	beq	%x10, %x24, 12  #955
	j	be_else.9241
	nop
	flw	%f0, 0(%x7)  #958
	fsw	%f0, 56(%x2)  #959
	sw	%x1, 68(%x2)  #959
	addi	%x2, %x2, 72  #959
	jal	%x1, fiszero.2528  #959
	addi	%x2, %x2, -72  #959
	lw	%x1, 68(%x2) #959
	beq	%x5, %x0, 12  #959
	j	be_else.9244
	nop
	flw	%f0, 56(%x2)  #959
	sw	%x1, 68(%x2)  #959
	addi	%x2, %x2, 72  #959
	jal	%x1, sgn.2636  #959
	addi	%x2, %x2, -72  #959
	lw	%x1, 68(%x2) #959
	flw	%f2, 56(%x2)  #959
	fsw	%f0, 64(%x2)  #959
	mv	%f0, %f2
	mv	%f1, %f3
	sw	%x1, 76(%x2)  #959
	addi	%x2, %x2, 80  #959
	jal	%x1, fsqr.2536  #959
	addi	%x2, %x2, -80  #959
	lw	%x1, 76(%x2) #959
	flw	%f2, 64(%x2)  #959
	fdiv	%f0, %f2, %f0  #959
	j	be_cont.9245
	nop
be_else.9244:
	mv	%f0, l.6293  #0
be_cont.9245:
	lw	%x5, 24(%x2)  #959
	fsw	%f0, 0(%x5) #959
	flw	%f0, 8(%x5)  #960
	fsw	%f0, 72(%x2)  #961
	sw	%x1, 84(%x2)  #961
	addi	%x2, %x2, 88  #961
	jal	%x1, fiszero.2528  #961
	addi	%x2, %x2, -88  #961
	lw	%x1, 84(%x2) #961
	beq	%x5, %x0, 12  #961
	j	be_else.9246
	nop
	flw	%f0, 72(%x2)  #961
	sw	%x1, 84(%x2)  #961
	addi	%x2, %x2, 88  #961
	jal	%x1, sgn.2636  #961
	addi	%x2, %x2, -88  #961
	lw	%x1, 84(%x2) #961
	flw	%f2, 72(%x2)  #961
	fsw	%f0, 80(%x2)  #961
	mv	%f0, %f2
	mv	%f1, %f3
	sw	%x1, 92(%x2)  #961
	addi	%x2, %x2, 96  #961
	jal	%x1, fsqr.2536  #961
	addi	%x2, %x2, -96  #961
	lw	%x1, 92(%x2) #961
	flw	%f2, 80(%x2)  #961
	fdiv	%f0, %f2, %f0  #961
	j	be_cont.9247
	nop
be_else.9246:
	mv	%f0, l.6293  #0
be_cont.9247:
	lw	%x5, 24(%x2)  #961
	fsw	%f0, 8(%x5) #961
	flw	%f0, 16(%x5)  #962
	fsw	%f0, 88(%x2)  #963
	sw	%x1, 100(%x2)  #963
	addi	%x2, %x2, 104  #963
	jal	%x1, fiszero.2528  #963
	addi	%x2, %x2, -104  #963
	lw	%x1, 100(%x2) #963
	beq	%x5, %x0, 12  #963
	j	be_else.9248
	nop
	flw	%f0, 88(%x2)  #963
	sw	%x1, 100(%x2)  #963
	addi	%x2, %x2, 104  #963
	jal	%x1, sgn.2636  #963
	addi	%x2, %x2, -104  #963
	lw	%x1, 100(%x2) #963
	flw	%f2, 88(%x2)  #963
	fsw	%f0, 96(%x2)  #963
	mv	%f0, %f2
	mv	%f1, %f3
	sw	%x1, 108(%x2)  #963
	addi	%x2, %x2, 112  #963
	jal	%x1, fsqr.2536  #963
	addi	%x2, %x2, -112  #963
	lw	%x1, 108(%x2) #963
	flw	%f2, 96(%x2)  #963
	fdiv	%f0, %f2, %f0  #963
	j	be_cont.9249
	nop
be_else.9248:
	mv	%f0, l.6293  #0
be_cont.9249:
	lw	%x5, 24(%x2)  #963
	fsw	%f0, 16(%x5) #963
	j	be_cont.9242
	nop
be_else.9241:
	addi	%x24, %x0, 2
	beq	%x10, %x24, 12  #965
	j	be_else.9250
	nop
	lw	%x6, 32(%x2)  #967
	beq	%x6, %x0, 12  #967
	j	be_else.9252
	nop
	addi	%x6, %x0, 1  #0
	j	be_cont.9253
	nop
be_else.9252:
	addi	%x6, %x0, 0  #0
be_cont.9253:
	mv	%x5, %x7
	sw	%x1, 108(%x2)  #967
	addi	%x2, %x2, 112  #967
	jal	%x1, vecunit_sgn.2657  #967
	addi	%x2, %x2, -112  #967
	lw	%x1, 108(%x2) #967
	j	be_cont.9251
	nop
be_else.9250:
be_cont.9251:
be_cont.9242:
	lw	%x5, 20(%x2)  #971
	beq	%x5, %x0, 12  #971
	j	be_else.9254
	nop
	j	be_cont.9255
	nop
be_else.9254:
	lw	%x5, 24(%x2)  #972
	lw	%x6, 44(%x2)  #972
	sw	%x1, 108(%x2)  #972
	addi	%x2, %x2, 112  #972
	jal	%x1, rotate_quadratic_matrix.2759  #972
	addi	%x2, %x2, -112  #972
	lw	%x1, 108(%x2) #972
be_cont.9255:
	addi	%x5, %x0, 1  #0
	ret
	nop
read_object.2764:  #7020
	lw	%x6, 8(%x22)  #0
	lw	%x7, 4(%x22)  #0
	addi	%x24, %x0, 60
	bge	%x5, %x24, 12  #983
	j	bge_else.9256
	nop
	ret
	nop
bge_else.9256:
	sw	%x22, 0(%x2)  #984
	sw	%x7, 4(%x2)  #984
	sw	%x5, 8(%x2)  #984
	mv	%x22, %x6
	sw	%x1, 12(%x2)  #984
	lw	%x23, 0(%x22)  #984
	addi	%x2, %x2, 16  #984
	jalr	%x1, %x23, 0  #984
	addi	%x2, %x2, -16  #984
	lw	%x1, 12(%x2)  #984
	beq	%x5, %x0, 12  #984
	j	be_else.9258
	nop
	lw	%x5, 4(%x2)  #987
	lw	%x6, 8(%x2)  #987
	sw	%x6, 0(%x5)  #987
	ret
	nop
be_else.9258:
	lw	%x5, 8(%x2)  #985
	addi	%x5, %x5, 1  #985
	lw	%x22, 0(%x2)  #985
	lw	0(%x23), %x22  #985
	jalr	%x0, %x23, 0  #985
	nop
read_all_object.2766:  #7144
	lw	%x22, 4(%x22)  #0
	addi	%x5, %x0, 0  #0
	lw	0(%x23), %x22  #992
	jalr	%x0, %x23, 0  #992
	nop
read_net_item.2768:  #7164
	sw	%x5, 0(%x2)  #999
	mv	%x5, %g0
	sw	%x1, 4(%x2)  #999
	addi	%x2, %x2, 8  #999
	jal	%x1, read_int.2580  #999
	addi	%x2, %x2, -8  #999
	lw	%x1, 4(%x2) #999
	addi	%x24, %x0, -1
	beq	%x5, %x24, 12  #1000
	j	be_else.9260
	nop
	lw	%x5, 0(%x2)  #1000
	addi	%x5, %x5, 1  #1000
	addi	%x6, %x0, -1  #0
	j	create_array.2593  #1000
	nop
be_else.9260:
	lw	%x6, 0(%x2)  #1002
	addi	%x7, %x6, 1  #1002
	sw	%x5, 4(%x2)  #1002
	mv	%x5, %x7
	sw	%x1, 12(%x2)  #1002
	addi	%x2, %x2, 16  #1002
	jal	%x1, read_net_item.2768  #1002
	addi	%x2, %x2, -16  #1002
	lw	%x1, 12(%x2) #1002
	lw	%x6, 0(%x2)  #1003
	slli	%x6, %x6, 2  #1003
	lw	%x7, 4(%x2)  #1003
	sw	%x7, %x6(%x5)  #1003
	ret
	nop
read_or_network.2770:  #7284
	addi	%x6, %x0, 0  #0
	sw	%x5, 0(%x2)  #1007
	mv	%x5, %x6
	sw	%x1, 4(%x2)  #1007
	addi	%x2, %x2, 8  #1007
	jal	%x1, read_net_item.2768  #1007
	addi	%x2, %x2, -8  #1007
	lw	%x1, 4(%x2) #1007
	mv	%x6, %x5  #1007
	lw	%x5, 0(%x6)  #1008
	addi	%x24, %x0, -1
	beq	%x5, %x24, 12  #1008
	j	be_else.9261
	nop
	lw	%x5, 0(%x2)  #1009
	addi	%x5, %x5, 1  #1009
	j	create_array.2593  #1009
	nop
be_else.9261:
	lw	%x5, 0(%x2)  #1011
	addi	%x7, %x5, 1  #1011
	sw	%x6, 4(%x2)  #1011
	mv	%x5, %x7
	sw	%x1, 12(%x2)  #1011
	addi	%x2, %x2, 16  #1011
	jal	%x1, read_or_network.2770  #1011
	addi	%x2, %x2, -16  #1011
	lw	%x1, 12(%x2) #1011
	lw	%x6, 0(%x2)  #1012
	slli	%x6, %x6, 2  #1012
	lw	%x7, 4(%x2)  #1012
	sw	%x7, %x6(%x5)  #1012
	ret
	nop
read_and_network.2772:  #7412
	lw	%x6, 4(%x22)  #0
	addi	%x7, %x0, 0  #0
	sw	%x22, 0(%x2)  #1016
	sw	%x6, 4(%x2)  #1016
	sw	%x5, 8(%x2)  #1016
	mv	%x5, %x7
	sw	%x1, 12(%x2)  #1016
	addi	%x2, %x2, 16  #1016
	jal	%x1, read_net_item.2768  #1016
	addi	%x2, %x2, -16  #1016
	lw	%x1, 12(%x2) #1016
	lw	%x6, 0(%x5)  #1017
	addi	%x24, %x0, -1
	beq	%x6, %x24, 12  #1017
	j	be_else.9262
	nop
	ret
	nop
be_else.9262:
	lw	%x6, 8(%x2)  #1019
	slli	%x7, %x6, 2  #1019
	lw	%x9, 4(%x2)  #1019
	sw	%x5, %x7(%x9)  #1019
	addi	%x5, %x6, 1  #1020
	lw	%x22, 0(%x2)  #1020
	lw	0(%x23), %x22  #1020
	jalr	%x0, %x23, 0  #1020
	nop
read_parameter.2774:  #7516
	lw	%x5, 20(%x22)  #0
	lw	%x6, 16(%x22)  #0
	lw	%x7, 12(%x22)  #0
	lw	%x9, 8(%x22)  #0
	lw	%x10, 4(%x22)  #0
	sw	%x10, 0(%x2)  #1026
	sw	%x7, 4(%x2)  #1026
	sw	%x9, 8(%x2)  #1026
	sw	%x6, 12(%x2)  #1026
	mv	%x22, %x5
	mv	%x5, %g0
	sw	%x1, 20(%x2)  #1026
	lw	%x23, 0(%x22)  #1026
	addi	%x2, %x2, 24  #1026
	jalr	%x1, %x23, 0  #1026
	addi	%x2, %x2, -24  #1026
	lw	%x1, 20(%x2)  #1026
	lw	%x22, 12(%x2)  #1027
	mv	%x5, %g0
	sw	%x1, 20(%x2)  #1027
	lw	%x23, 0(%x22)  #1027
	addi	%x2, %x2, 24  #1027
	jalr	%x1, %x23, 0  #1027
	addi	%x2, %x2, -24  #1027
	lw	%x1, 20(%x2)  #1027
	lw	%x22, 8(%x2)  #1028
	mv	%x5, %g0
	sw	%x1, 20(%x2)  #1028
	lw	%x23, 0(%x22)  #1028
	addi	%x2, %x2, 24  #1028
	jalr	%x1, %x23, 0  #1028
	addi	%x2, %x2, -24  #1028
	lw	%x1, 20(%x2)  #1028
	addi	%x5, %x0, 0  #0
	lw	%x22, 4(%x2)  #1029
	sw	%x1, 20(%x2)  #1029
	lw	%x23, 0(%x22)  #1029
	addi	%x2, %x2, 24  #1029
	jalr	%x1, %x23, 0  #1029
	addi	%x2, %x2, -24  #1029
	lw	%x1, 20(%x2)  #1029
	addi	%x5, %x0, 0  #0
	sw	%x1, 20(%x2)  #1030
	addi	%x2, %x2, 24  #1030
	jal	%x1, read_or_network.2770  #1030
	addi	%x2, %x2, -24  #1030
	lw	%x1, 20(%x2) #1030
	lw	%x6, 0(%x2)  #1030
	sw	%x5, 0(%x6)  #1030
	ret
	nop
solver_rect_surface.2776:  #7720
	lw	%x11, 4(%x22)  #0
	slli	%x12, %x7, 3  #1050
	flw	%f6, %x12(%x6)  #1050
	sw	%x11, 0(%x2)  #1050
	fsw	%f4, 8(%x2)  #1050
	sw	%x10, 16(%x2)  #1050
	fsw	%f2, 24(%x2)  #1050
	sw	%x9, 32(%x2)  #1050
	fsw	%f0, 40(%x2)  #1050
	sw	%x6, 48(%x2)  #1050
	sw	%x7, 52(%x2)  #1050
	sw	%x5, 56(%x2)  #1050
	mv	%f0, %f6
	mv	%f1, %f7
	sw	%x1, 60(%x2)  #1050
	addi	%x2, %x2, 64  #1050
	jal	%x1, fiszero.2528  #1050
	addi	%x2, %x2, -64  #1050
	lw	%x1, 60(%x2) #1050
	beq	%x5, %x0, 12  #1050
	j	be_else.9268
	nop
	lw	%x5, 56(%x2)  #1051
	sw	%x1, 60(%x2)  #1051
	addi	%x2, %x2, 64  #1051
	jal	%x1, o_param_abc.2698  #1051
	addi	%x2, %x2, -64  #1051
	lw	%x1, 60(%x2) #1051
	lw	%x6, 56(%x2)  #1052
	sw	%x5, 60(%x2)  #1052
	mv	%x5, %x6
	sw	%x1, 68(%x2)  #1052
	addi	%x2, %x2, 72  #1052
	jal	%x1, o_isinvert.2688  #1052
	addi	%x2, %x2, -72  #1052
	lw	%x1, 68(%x2) #1052
	lw	%x6, 52(%x2)  #1052
	slli	%x7, %x6, 3  #1052
	lw	%x9, 48(%x2)  #1052
	flw	%f0, %x7(%x9)  #1052
	sw	%x5, 64(%x2)  #1052
	sw	%x1, 68(%x2)  #1052
	addi	%x2, %x2, 72  #1052
	jal	%x1, fisneg.2532  #1052
	addi	%x2, %x2, -72  #1052
	lw	%x1, 68(%x2) #1052
	mv	%x6, %x5  #1052
	lw	%x5, 64(%x2)  #1052
	sw	%x1, 68(%x2)  #1052
	addi	%x2, %x2, 72  #1052
	jal	%x1, xor.2633  #1052
	addi	%x2, %x2, -72  #1052
	lw	%x1, 68(%x2) #1052
	lw	%x6, 52(%x2)  #1052
	slli	%x7, %x6, 3  #1052
	lw	%x9, 60(%x2)  #1052
	flw	%f0, %x7(%x9)  #1052
	sw	%x1, 68(%x2)  #1052
	addi	%x2, %x2, 72  #1052
	jal	%x1, fneg_cond.2638  #1052
	addi	%x2, %x2, -72  #1052
	lw	%x1, 68(%x2) #1052
	flw	%f2, 40(%x2)  #1054
	fsub	%f0, %f0, %f2  #1054
	lw	%x5, 52(%x2)  #1054
	slli	%x5, %x5, 3  #1054
	lw	%x6, 48(%x2)  #1054
	flw	%f2, %x5(%x6)  #1054
	fdiv	%f0, %f0, %f2  #1054
	lw	%x5, 32(%x2)  #1055
	slli	%x7, %x5, 3  #1055
	flw	%f2, %x7(%x6)  #1055
	fmul	%f2, %f0, %f2  #1055
	flw	%f4, 24(%x2)  #1055
	fadd	%f2, %f2, %f4  #1055
	fabs	%f2, %f2  #1055
	slli	%x5, %x5, 3  #1055
	lw	%x7, 60(%x2)  #1055
	flw	%f4, %x5(%x7)  #1055
	fsw	%f0, 72(%x2)  #1055
	mv	%f0, %f2
	mv	%f1, %f3
	mv	%f2, %f4
	mv	%f3, %f5
	sw	%x1, 84(%x2)  #1055
	addi	%x2, %x2, 88  #1055
	jal	%x1, fless.2540  #1055
	addi	%x2, %x2, -88  #1055
	lw	%x1, 84(%x2) #1055
	beq	%x5, %x0, 12  #1055
	j	be_else.9270
	nop
	addi	%x5, %x0, 0  #0
	ret
	nop
be_else.9270:
	lw	%x5, 16(%x2)  #1056
	slli	%x6, %x5, 3  #1056
	lw	%x7, 48(%x2)  #1056
	flw	%f0, %x6(%x7)  #1056
	flw	%f2, 72(%x2)  #1056
	fmul	%f0, %f2, %f0  #1056
	flw	%f4, 8(%x2)  #1056
	fadd	%f0, %f0, %f4  #1056
	fabs	%f0, %f0  #1056
	slli	%x5, %x5, 3  #1056
	lw	%x6, 60(%x2)  #1056
	flw	%f4, %x5(%x6)  #1056
	mv	%f2, %f4
	mv	%f3, %f5
	sw	%x1, 84(%x2)  #1056
	addi	%x2, %x2, 88  #1056
	jal	%x1, fless.2540  #1056
	addi	%x2, %x2, -88  #1056
	lw	%x1, 84(%x2) #1056
	beq	%x5, %x0, 12  #1056
	j	be_else.9271
	nop
	addi	%x5, %x0, 0  #0
	ret
	nop
be_else.9271:
	lw	%x5, 0(%x2)  #1057
	flw	%f0, 72(%x2)  #1057
	fsw	%f0, 0(%x5) #1057
	addi	%x5, %x0, 1  #0
	ret
	nop
be_else.9268:
	addi	%x5, %x0, 0  #0
	ret
	nop
solver_rect.2785:  #8236
	lw	%x22, 4(%x22)  #0
	addi	%x7, %x0, 0  #0
	addi	%x9, %x0, 1  #0
	addi	%x10, %x0, 2  #0
	fsw	%f0, 0(%x2)  #1065
	fsw	%f4, 8(%x2)  #1065
	fsw	%f2, 16(%x2)  #1065
	sw	%x6, 24(%x2)  #1065
	sw	%x5, 28(%x2)  #1065
	sw	%x22, 32(%x2)  #1065
	sw	%x1, 36(%x2)  #1065
	lw	%x23, 0(%x22)  #1065
	addi	%x2, %x2, 40  #1065
	jalr	%x1, %x23, 0  #1065
	addi	%x2, %x2, -40  #1065
	lw	%x1, 36(%x2)  #1065
	beq	%x5, %x0, 12  #1065
	j	be_else.9272
	nop
	addi	%x7, %x0, 1  #0
	addi	%x9, %x0, 2  #0
	addi	%x10, %x0, 0  #0
	flw	%f0, 16(%x2)  #1066
	flw	%f2, 8(%x2)  #1066
	flw	%f4, 0(%x2)  #1066
	lw	%x5, 28(%x2)  #1066
	lw	%x6, 24(%x2)  #1066
	lw	%x22, 32(%x2)  #1066
	sw	%x1, 36(%x2)  #1066
	lw	%x23, 0(%x22)  #1066
	addi	%x2, %x2, 40  #1066
	jalr	%x1, %x23, 0  #1066
	addi	%x2, %x2, -40  #1066
	lw	%x1, 36(%x2)  #1066
	beq	%x5, %x0, 12  #1066
	j	be_else.9273
	nop
	addi	%x7, %x0, 2  #0
	addi	%x9, %x0, 0  #0
	addi	%x10, %x0, 1  #0
	flw	%f0, 8(%x2)  #1067
	flw	%f2, 0(%x2)  #1067
	flw	%f4, 16(%x2)  #1067
	lw	%x5, 28(%x2)  #1067
	lw	%x6, 24(%x2)  #1067
	lw	%x22, 32(%x2)  #1067
	sw	%x1, 36(%x2)  #1067
	lw	%x23, 0(%x22)  #1067
	addi	%x2, %x2, 40  #1067
	jalr	%x1, %x23, 0  #1067
	addi	%x2, %x2, -40  #1067
	lw	%x1, 36(%x2)  #1067
	beq	%x5, %x0, 12  #1067
	j	be_else.9274
	nop
	addi	%x5, %x0, 0  #0
	ret
	nop
be_else.9274:
	addi	%x5, %x0, 3  #0
	ret
	nop
be_else.9273:
	addi	%x5, %x0, 2  #0
	ret
	nop
be_else.9272:
	addi	%x5, %x0, 1  #0
	ret
	nop
solver_surface.2791:  #8504
	lw	%x7, 4(%x22)  #1076
	sw	%x7, 0(%x2)  #1076
	fsw	%f4, 8(%x2)  #1076
	fsw	%f2, 16(%x2)  #1076
	fsw	%f0, 24(%x2)  #1076
	sw	%x6, 32(%x2)  #1076
	sw	%x1, 36(%x2)  #1076
	addi	%x2, %x2, 40  #1076
	jal	%x1, o_param_abc.2698  #1076
	addi	%x2, %x2, -40  #1076
	lw	%x1, 36(%x2) #1076
	mv	%x6, %x5  #1076
	lw	%x5, 32(%x2)  #1077
	sw	%x6, 36(%x2)  #1077
	sw	%x1, 44(%x2)  #1077
	addi	%x2, %x2, 48  #1077
	jal	%x1, veciprod.2660  #1077
	addi	%x2, %x2, -48  #1077
	lw	%x1, 44(%x2) #1077
	fsw	%f0, 40(%x2)  #1078
	sw	%x1, 52(%x2)  #1078
	addi	%x2, %x2, 56  #1078
	jal	%x1, fispos.2530  #1078
	addi	%x2, %x2, -56  #1078
	lw	%x1, 52(%x2) #1078
	beq	%x5, %x0, 12  #1078
	j	be_else.9276
	nop
	addi	%x5, %x0, 0  #0
	ret
	nop
be_else.9276:
	flw	%f0, 24(%x2)  #1079
	flw	%f2, 16(%x2)  #1079
	flw	%f4, 8(%x2)  #1079
	lw	%x5, 36(%x2)  #1079
	sw	%x1, 52(%x2)  #1079
	addi	%x2, %x2, 56  #1079
	jal	%x1, veciprod2.2663  #1079
	addi	%x2, %x2, -56  #1079
	lw	%x1, 52(%x2) #1079
	sw	%x1, 52(%x2)  #1079
	addi	%x2, %x2, 56  #1079
	jal	%x1, fneg.2534  #1079
	addi	%x2, %x2, -56  #1079
	lw	%x1, 52(%x2) #1079
	flw	%f2, 40(%x2)  #1079
	fdiv	%f0, %f0, %f2  #1079
	lw	%x5, 0(%x2)  #1079
	fsw	%f0, 0(%x5) #1079
	addi	%x5, %x0, 1  #0
	ret
	nop
quadratic.2797:  #8712
	fsw	%f0, 0(%x2)  #1089
	fsw	%f4, 8(%x2)  #1089
	fsw	%f2, 16(%x2)  #1089
	sw	%x5, 24(%x2)  #1089
	sw	%x1, 28(%x2)  #1089
	addi	%x2, %x2, 32  #1089
	jal	%x1, fsqr.2536  #1089
	addi	%x2, %x2, -32  #1089
	lw	%x1, 28(%x2) #1089
	lw	%x5, 24(%x2)  #1089
	fsw	%f0, 32(%x2)  #1089
	sw	%x1, 44(%x2)  #1089
	addi	%x2, %x2, 48  #1089
	jal	%x1, o_param_a.2692  #1089
	addi	%x2, %x2, -48  #1089
	lw	%x1, 44(%x2) #1089
	flw	%f2, 32(%x2)  #1089
	fmul	%f0, %f2, %f0  #1089
	flw	%f2, 16(%x2)  #1089
	fsw	%f0, 40(%x2)  #1089
	mv	%f0, %f2
	mv	%f1, %f3
	sw	%x1, 52(%x2)  #1089
	addi	%x2, %x2, 56  #1089
	jal	%x1, fsqr.2536  #1089
	addi	%x2, %x2, -56  #1089
	lw	%x1, 52(%x2) #1089
	lw	%x5, 24(%x2)  #1089
	fsw	%f0, 48(%x2)  #1089
	sw	%x1, 60(%x2)  #1089
	addi	%x2, %x2, 64  #1089
	jal	%x1, o_param_b.2694  #1089
	addi	%x2, %x2, -64  #1089
	lw	%x1, 60(%x2) #1089
	flw	%f2, 48(%x2)  #1089
	fmul	%f0, %f2, %f0  #1089
	flw	%f2, 40(%x2)  #1089
	fadd	%f0, %f2, %f0  #1089
	flw	%f2, 8(%x2)  #1089
	fsw	%f0, 56(%x2)  #1089
	mv	%f0, %f2
	mv	%f1, %f3
	sw	%x1, 68(%x2)  #1089
	addi	%x2, %x2, 72  #1089
	jal	%x1, fsqr.2536  #1089
	addi	%x2, %x2, -72  #1089
	lw	%x1, 68(%x2) #1089
	lw	%x5, 24(%x2)  #1089
	fsw	%f0, 64(%x2)  #1089
	sw	%x1, 76(%x2)  #1089
	addi	%x2, %x2, 80  #1089
	jal	%x1, o_param_c.2696  #1089
	addi	%x2, %x2, -80  #1089
	lw	%x1, 76(%x2) #1089
	flw	%f2, 64(%x2)  #1089
	fmul	%f0, %f2, %f0  #1089
	flw	%f2, 56(%x2)  #1089
	fadd	%f0, %f2, %f0  #1089
	lw	%x5, 24(%x2)  #1091
	fsw	%f0, 72(%x2)  #1091
	sw	%x1, 84(%x2)  #1091
	addi	%x2, %x2, 88  #1091
	jal	%x1, o_isrot.2690  #1091
	addi	%x2, %x2, -88  #1091
	lw	%x1, 84(%x2) #1091
	beq	%x5, %x0, 12  #1091
	j	be_else.9278
	nop
	flw	%f0, 72(%x2)  #1092
	ret
	nop
be_else.9278:
	flw	%f0, 8(%x2)  #1095
	flw	%f2, 16(%x2)  #1095
	fmul	%f4, %f2, %f0  #1095
	lw	%x5, 24(%x2)  #1095
	fsw	%f4, 80(%x2)  #1095
	sw	%x1, 92(%x2)  #1095
	addi	%x2, %x2, 96  #1095
	jal	%x1, o_param_r1.2716  #1095
	addi	%x2, %x2, -96  #1095
	lw	%x1, 92(%x2) #1095
	flw	%f2, 80(%x2)  #1095
	fmul	%f0, %f2, %f0  #1095
	flw	%f2, 72(%x2)  #1094
	fadd	%f0, %f2, %f0  #1094
	flw	%f2, 0(%x2)  #1096
	flw	%f4, 8(%x2)  #1096
	fmul	%f4, %f4, %f2  #1096
	lw	%x5, 24(%x2)  #1096
	fsw	%f0, 88(%x2)  #1096
	fsw	%f4, 96(%x2)  #1096
	sw	%x1, 108(%x2)  #1096
	addi	%x2, %x2, 112  #1096
	jal	%x1, o_param_r2.2718  #1096
	addi	%x2, %x2, -112  #1096
	lw	%x1, 108(%x2) #1096
	flw	%f2, 96(%x2)  #1096
	fmul	%f0, %f2, %f0  #1096
	flw	%f2, 88(%x2)  #1094
	fadd	%f0, %f2, %f0  #1094
	flw	%f2, 16(%x2)  #1097
	flw	%f4, 0(%x2)  #1097
	fmul	%f2, %f4, %f2  #1097
	lw	%x5, 24(%x2)  #1097
	fsw	%f0, 104(%x2)  #1097
	fsw	%f2, 112(%x2)  #1097
	sw	%x1, 124(%x2)  #1097
	addi	%x2, %x2, 128  #1097
	jal	%x1, o_param_r3.2720  #1097
	addi	%x2, %x2, -128  #1097
	lw	%x1, 124(%x2) #1097
	flw	%f2, 112(%x2)  #1097
	fmul	%f0, %f2, %f0  #1097
	flw	%f2, 104(%x2)  #1094
	fadd	%f0, %f2, %f0  #1094
	ret
	nop
bilinear.2802:  #9180
	fmul	%f12, %f0, %f6  #1103
	fsw	%f6, 0(%x2)  #1103
	fsw	%f0, 8(%x2)  #1103
	fsw	%f10, 16(%x2)  #1103
	fsw	%f4, 24(%x2)  #1103
	sw	%x5, 32(%x2)  #1103
	fsw	%f8, 40(%x2)  #1103
	fsw	%f2, 48(%x2)  #1103
	fsw	%f12, 56(%x2)  #1103
	sw	%x1, 68(%x2)  #1103
	addi	%x2, %x2, 72  #1103
	jal	%x1, o_param_a.2692  #1103
	addi	%x2, %x2, -72  #1103
	lw	%x1, 68(%x2) #1103
	flw	%f2, 56(%x2)  #1103
	fmul	%f0, %f2, %f0  #1103
	flw	%f2, 40(%x2)  #1104
	flw	%f4, 48(%x2)  #1104
	fmul	%f6, %f4, %f2  #1104
	lw	%x5, 32(%x2)  #1104
	fsw	%f0, 64(%x2)  #1104
	fsw	%f6, 72(%x2)  #1104
	sw	%x1, 84(%x2)  #1104
	addi	%x2, %x2, 88  #1104
	jal	%x1, o_param_b.2694  #1104
	addi	%x2, %x2, -88  #1104
	lw	%x1, 84(%x2) #1104
	flw	%f2, 72(%x2)  #1104
	fmul	%f0, %f2, %f0  #1104
	flw	%f2, 64(%x2)  #1103
	fadd	%f0, %f2, %f0  #1103
	flw	%f2, 16(%x2)  #1105
	flw	%f4, 24(%x2)  #1105
	fmul	%f6, %f4, %f2  #1105
	lw	%x5, 32(%x2)  #1105
	fsw	%f0, 80(%x2)  #1105
	fsw	%f6, 88(%x2)  #1105
	sw	%x1, 100(%x2)  #1105
	addi	%x2, %x2, 104  #1105
	jal	%x1, o_param_c.2696  #1105
	addi	%x2, %x2, -104  #1105
	lw	%x1, 100(%x2) #1105
	flw	%f2, 88(%x2)  #1105
	fmul	%f0, %f2, %f0  #1105
	flw	%f2, 80(%x2)  #1103
	fadd	%f0, %f2, %f0  #1103
	lw	%x5, 32(%x2)  #1107
	fsw	%f0, 96(%x2)  #1107
	sw	%x1, 108(%x2)  #1107
	addi	%x2, %x2, 112  #1107
	jal	%x1, o_isrot.2690  #1107
	addi	%x2, %x2, -112  #1107
	lw	%x1, 108(%x2) #1107
	beq	%x5, %x0, 12  #1107
	j	be_else.9280
	nop
	flw	%f0, 96(%x2)  #1108
	ret
	nop
be_else.9280:
	flw	%f0, 40(%x2)  #1111
	flw	%f2, 24(%x2)  #1111
	fmul	%f4, %f2, %f0  #1111
	flw	%f6, 16(%x2)  #1111
	flw	%f8, 48(%x2)  #1111
	fmul	%f10, %f8, %f6  #1111
	fadd	%f4, %f4, %f10  #1111
	lw	%x5, 32(%x2)  #1111
	fsw	%f4, 104(%x2)  #1111
	sw	%x1, 116(%x2)  #1111
	addi	%x2, %x2, 120  #1111
	jal	%x1, o_param_r1.2716  #1111
	addi	%x2, %x2, -120  #1111
	lw	%x1, 116(%x2) #1111
	flw	%f2, 104(%x2)  #1111
	fmul	%f0, %f2, %f0  #1111
	flw	%f2, 16(%x2)  #1112
	flw	%f4, 8(%x2)  #1112
	fmul	%f2, %f4, %f2  #1112
	flw	%f6, 0(%x2)  #1112
	flw	%f8, 24(%x2)  #1112
	fmul	%f8, %f8, %f6  #1112
	fadd	%f2, %f2, %f8  #1112
	lw	%x5, 32(%x2)  #1112
	fsw	%f0, 112(%x2)  #1112
	fsw	%f2, 120(%x2)  #1112
	sw	%x1, 132(%x2)  #1112
	addi	%x2, %x2, 136  #1112
	jal	%x1, o_param_r2.2718  #1112
	addi	%x2, %x2, -136  #1112
	lw	%x1, 132(%x2) #1112
	flw	%f2, 120(%x2)  #1112
	fmul	%f0, %f2, %f0  #1112
	flw	%f2, 112(%x2)  #1111
	fadd	%f0, %f2, %f0  #1111
	flw	%f2, 40(%x2)  #1113
	flw	%f4, 8(%x2)  #1113
	fmul	%f2, %f4, %f2  #1113
	flw	%f4, 0(%x2)  #1113
	flw	%f6, 48(%x2)  #1113
	fmul	%f4, %f6, %f4  #1113
	fadd	%f2, %f2, %f4  #1113
	lw	%x5, 32(%x2)  #1113
	fsw	%f0, 128(%x2)  #1113
	fsw	%f2, 136(%x2)  #1113
	sw	%x1, 148(%x2)  #1113
	addi	%x2, %x2, 152  #1113
	jal	%x1, o_param_r3.2720  #1113
	addi	%x2, %x2, -152  #1113
	lw	%x1, 148(%x2) #1113
	flw	%f2, 136(%x2)  #1113
	fmul	%f0, %f2, %f0  #1113
	flw	%f2, 128(%x2)  #1111
	fadd	%f0, %f2, %f0  #1111
	sw	%x1, 148(%x2)  #1110
	addi	%x2, %x2, 152  #1110
	jal	%x1, fhalf.2538  #1110
	addi	%x2, %x2, -152  #1110
	lw	%x1, 148(%x2) #1110
	flw	%f2, 96(%x2)  #1110
	fadd	%f0, %f2, %f0  #1110
	ret
	nop
solver_second.2810:  #9668
	lw	%x7, 4(%x22)  #0
	flw	%f6, 0(%x6)  #1128
	flw	%f8, 8(%x6)  #1128
	flw	%f10, 16(%x6)  #1128
	sw	%x7, 0(%x2)  #1128
	fsw	%f4, 8(%x2)  #1128
	fsw	%f2, 16(%x2)  #1128
	fsw	%f0, 24(%x2)  #1128
	sw	%x5, 32(%x2)  #1128
	sw	%x6, 36(%x2)  #1128
	mv	%f4, %f10
	mv	%f5, %f11
	mv	%f2, %f8
	mv	%f3, %f9
	mv	%f0, %f6
	mv	%f1, %f7
	sw	%x1, 44(%x2)  #1128
	addi	%x2, %x2, 48  #1128
	jal	%x1, quadratic.2797  #1128
	addi	%x2, %x2, -48  #1128
	lw	%x1, 44(%x2) #1128
	fsw	%f0, 40(%x2)  #1130
	sw	%x1, 52(%x2)  #1130
	addi	%x2, %x2, 56  #1130
	jal	%x1, fiszero.2528  #1130
	addi	%x2, %x2, -56  #1130
	lw	%x1, 52(%x2) #1130
	beq	%x5, %x0, 12  #1130
	j	be_else.9282
	nop
	lw	%x5, 36(%x2)  #1135
	flw	%f0, 0(%x5)  #1135
	flw	%f2, 8(%x5)  #1135
	flw	%f4, 16(%x5)  #1135
	flw	%f6, 24(%x2)  #1135
	flw	%f8, 16(%x2)  #1135
	flw	%f10, 8(%x2)  #1135
	lw	%x5, 32(%x2)  #1135
	sw	%x1, 52(%x2)  #1135
	addi	%x2, %x2, 56  #1135
	jal	%x1, bilinear.2802  #1135
	addi	%x2, %x2, -56  #1135
	lw	%x1, 52(%x2) #1135
	flw	%f2, 24(%x2)  #1137
	flw	%f4, 16(%x2)  #1137
	flw	%f6, 8(%x2)  #1137
	lw	%x5, 32(%x2)  #1137
	fsw	%f0, 48(%x2)  #1137
	mv	%f0, %f2
	mv	%f1, %f3
	mv	%f2, %f4
	mv	%f3, %f5
	mv	%f4, %f6
	mv	%f5, %f7
	sw	%x1, 60(%x2)  #1137
	addi	%x2, %x2, 64  #1137
	jal	%x1, quadratic.2797  #1137
	addi	%x2, %x2, -64  #1137
	lw	%x1, 60(%x2) #1137
	lw	%x5, 32(%x2)  #1138
	fsw	%f0, 56(%x2)  #1138
	sw	%x1, 68(%x2)  #1138
	addi	%x2, %x2, 72  #1138
	jal	%x1, o_form.2684  #1138
	addi	%x2, %x2, -72  #1138
	lw	%x1, 68(%x2) #1138
	addi	%x24, %x0, 3
	beq	%x5, %x24, 12  #1138
	j	be_else.9283
	nop
	mv	%f0, l.6305  #0
	flw	%f2, 56(%x2)  #1138
	fsub	%f0, %f2, %f0  #1138
	j	be_cont.9284
	nop
be_else.9283:
	flw	%f0, 56(%x2)  #1138
be_cont.9284:
	flw	%f2, 48(%x2)  #1140
	fsw	%f0, 64(%x2)  #1140
	mv	%f0, %f2
	mv	%f1, %f3
	sw	%x1, 76(%x2)  #1140
	addi	%x2, %x2, 80  #1140
	jal	%x1, fsqr.2536  #1140
	addi	%x2, %x2, -80  #1140
	lw	%x1, 76(%x2) #1140
	flw	%f2, 64(%x2)  #1140
	flw	%f4, 40(%x2)  #1140
	fmul	%f2, %f4, %f2  #1140
	fsub	%f0, %f0, %f2  #1140
	fsw	%f0, 72(%x2)  #1142
	sw	%x1, 84(%x2)  #1142
	addi	%x2, %x2, 88  #1142
	jal	%x1, fispos.2530  #1142
	addi	%x2, %x2, -88  #1142
	lw	%x1, 84(%x2) #1142
	beq	%x5, %x0, 12  #1142
	j	be_else.9285
	nop
	addi	%x5, %x0, 0  #0
	ret
	nop
be_else.9285:
	flw	%f0, 72(%x2)  #1143
	fsqrt	%f0, %f0  #1143
	lw	%x5, 32(%x2)  #1144
	fsw	%f0, 80(%x2)  #1144
	sw	%x1, 92(%x2)  #1144
	addi	%x2, %x2, 96  #1144
	jal	%x1, o_isinvert.2688  #1144
	addi	%x2, %x2, -96  #1144
	lw	%x1, 92(%x2) #1144
	beq	%x5, %x0, 12  #1144
	j	be_else.9286
	nop
	flw	%f0, 80(%x2)  #1144
	sw	%x1, 92(%x2)  #1144
	addi	%x2, %x2, 96  #1144
	jal	%x1, fneg.2534  #1144
	addi	%x2, %x2, -96  #1144
	lw	%x1, 92(%x2) #1144
	j	be_cont.9287
	nop
be_else.9286:
	flw	%f0, 80(%x2)  #1144
be_cont.9287:
	flw	%f2, 48(%x2)  #1145
	fsub	%f0, %f0, %f2  #1145
	flw	%f2, 40(%x2)  #1145
	fdiv	%f0, %f0, %f2  #1145
	lw	%x5, 0(%x2)  #1145
	fsw	%f0, 0(%x5) #1145
	addi	%x5, %x0, 1  #0
	ret
	nop
be_else.9282:
	addi	%x5, %x0, 0  #0
	ret
	nop
solver.2816:  #10200
	lw	%x9, 16(%x22)  #1154
	lw	%x10, 12(%x22)  #1154
	lw	%x11, 8(%x22)  #1154
	lw	%x12, 4(%x22)  #1154
	slli	%x5, %x5, 2  #1154
	lw	%x5, %x5(%x12)  #1154
	flw	%f0, 0(%x7)  #1156
	sw	%x10, 0(%x2)  #1156
	sw	%x9, 4(%x2)  #1156
	sw	%x6, 8(%x2)  #1156
	sw	%x11, 12(%x2)  #1156
	sw	%x5, 16(%x2)  #1156
	sw	%x7, 20(%x2)  #1156
	fsw	%f0, 24(%x2)  #1156
	sw	%x1, 36(%x2)  #1156
	addi	%x2, %x2, 40  #1156
	jal	%x1, o_param_x.2700  #1156
	addi	%x2, %x2, -40  #1156
	lw	%x1, 36(%x2) #1156
	flw	%f2, 24(%x2)  #1156
	fsub	%f0, %f2, %f0  #1156
	lw	%x5, 20(%x2)  #1157
	flw	%f2, 8(%x5)  #1157
	lw	%x6, 16(%x2)  #1157
	fsw	%f0, 32(%x2)  #1157
	fsw	%f2, 40(%x2)  #1157
	mv	%x5, %x6
	sw	%x1, 52(%x2)  #1157
	addi	%x2, %x2, 56  #1157
	jal	%x1, o_param_y.2702  #1157
	addi	%x2, %x2, -56  #1157
	lw	%x1, 52(%x2) #1157
	flw	%f2, 40(%x2)  #1157
	fsub	%f0, %f2, %f0  #1157
	lw	%x5, 20(%x2)  #1158
	flw	%f2, 16(%x5)  #1158
	lw	%x5, 16(%x2)  #1158
	fsw	%f0, 48(%x2)  #1158
	fsw	%f2, 56(%x2)  #1158
	sw	%x1, 68(%x2)  #1158
	addi	%x2, %x2, 72  #1158
	jal	%x1, o_param_z.2704  #1158
	addi	%x2, %x2, -72  #1158
	lw	%x1, 68(%x2) #1158
	flw	%f2, 56(%x2)  #1158
	fsub	%f0, %f2, %f0  #1158
	lw	%x5, 16(%x2)  #1159
	fsw	%f0, 64(%x2)  #1159
	sw	%x1, 76(%x2)  #1159
	addi	%x2, %x2, 80  #1159
	jal	%x1, o_form.2684  #1159
	addi	%x2, %x2, -80  #1159
	lw	%x1, 76(%x2) #1159
	addi	%x24, %x0, 1
	beq	%x5, %x24, 12  #1161
	j	be_else.9288
	nop
	flw	%f0, 32(%x2)  #1161
	flw	%f2, 48(%x2)  #1161
	flw	%f4, 64(%x2)  #1161
	lw	%x5, 16(%x2)  #1161
	lw	%x6, 8(%x2)  #1161
	lw	%x22, 12(%x2)  #1161
	lw	0(%x23), %x22  #1161
	jalr	%x0, %x23, 0  #1161
	nop
be_else.9288:
	addi	%x24, %x0, 2
	beq	%x5, %x24, 12  #1162
	j	be_else.9289
	nop
	flw	%f0, 32(%x2)  #1162
	flw	%f2, 48(%x2)  #1162
	flw	%f4, 64(%x2)  #1162
	lw	%x5, 16(%x2)  #1162
	lw	%x6, 8(%x2)  #1162
	lw	%x22, 4(%x2)  #1162
	lw	0(%x23), %x22  #1162
	jalr	%x0, %x23, 0  #1162
	nop
be_else.9289:
	flw	%f0, 32(%x2)  #1163
	flw	%f2, 48(%x2)  #1163
	flw	%f4, 64(%x2)  #1163
	lw	%x5, 16(%x2)  #1163
	lw	%x6, 8(%x2)  #1163
	lw	%x22, 0(%x2)  #1163
	lw	0(%x23), %x22  #1163
	jalr	%x0, %x23, 0  #1163
	nop
solver_rect_fast.2820:  #10544
	lw	%x9, 4(%x22)  #0
	flw	%f6, 0(%x7)  #1186
	fsub	%f6, %f6, %f0  #1186
	flw	%f8, 8(%x7)  #1186
	fmul	%f6, %f6, %f8  #1186
	flw	%f8, 8(%x6)  #1188
	fmul	%f8, %f6, %f8  #1188
	fadd	%f8, %f8, %f2  #1188
	fabs	%f8, %f8  #1188
	sw	%x9, 0(%x2)  #1188
	fsw	%f0, 8(%x2)  #1188
	fsw	%f2, 16(%x2)  #1188
	sw	%x7, 24(%x2)  #1188
	sw	%x5, 28(%x2)  #1188
	fsw	%f4, 32(%x2)  #1188
	fsw	%f6, 40(%x2)  #1188
	sw	%x6, 48(%x2)  #1188
	fsw	%f8, 56(%x2)  #1188
	sw	%x1, 68(%x2)  #1188
	addi	%x2, %x2, 72  #1188
	jal	%x1, o_param_b.2694  #1188
	addi	%x2, %x2, -72  #1188
	lw	%x1, 68(%x2) #1188
	mv	%f2, %f0  #1188
	mv	%f3, %f1  #1188
	flw	%f0, 56(%x2)  #1188
	sw	%x1, 68(%x2)  #1188
	addi	%x2, %x2, 72  #1188
	jal	%x1, fless.2540  #1188
	addi	%x2, %x2, -72  #1188
	lw	%x1, 68(%x2) #1188
	beq	%x5, %x0, 12  #1188
	j	be_else.9292
	nop
	addi	%x5, %x0, 0  #0
	j	be_cont.9293
	nop
be_else.9292:
	lw	%x5, 48(%x2)  #1189
	flw	%f0, 16(%x5)  #1189
	flw	%f2, 40(%x2)  #1189
	fmul	%f0, %f2, %f0  #1189
	flw	%f4, 32(%x2)  #1189
	fadd	%f0, %f0, %f4  #1189
	fabs	%f0, %f0  #1189
	lw	%x6, 28(%x2)  #1189
	fsw	%f0, 64(%x2)  #1189
	mv	%x5, %x6
	sw	%x1, 76(%x2)  #1189
	addi	%x2, %x2, 80  #1189
	jal	%x1, o_param_c.2696  #1189
	addi	%x2, %x2, -80  #1189
	lw	%x1, 76(%x2) #1189
	mv	%f2, %f0  #1189
	mv	%f3, %f1  #1189
	flw	%f0, 64(%x2)  #1189
	sw	%x1, 76(%x2)  #1189
	addi	%x2, %x2, 80  #1189
	jal	%x1, fless.2540  #1189
	addi	%x2, %x2, -80  #1189
	lw	%x1, 76(%x2) #1189
	beq	%x5, %x0, 12  #1189
	j	be_else.9294
	nop
	addi	%x5, %x0, 0  #0
	j	be_cont.9295
	nop
be_else.9294:
	lw	%x5, 24(%x2)  #1190
	flw	%f0, 8(%x5)  #1190
	sw	%x1, 76(%x2)  #1190
	addi	%x2, %x2, 80  #1190
	jal	%x1, fiszero.2528  #1190
	addi	%x2, %x2, -80  #1190
	lw	%x1, 76(%x2) #1190
	beq	%x5, %x0, 12  #1190
	j	be_else.9296
	nop
	addi	%x5, %x0, 1  #0
	j	be_cont.9297
	nop
be_else.9296:
	addi	%x5, %x0, 0  #0
be_cont.9297:
be_cont.9295:
be_cont.9293:
	beq	%x5, %x0, 12  #1187
	j	be_else.9298
	nop
	lw	%x5, 24(%x2)  #1195
	flw	%f0, 16(%x5)  #1195
	flw	%f2, 16(%x2)  #1195
	fsub	%f0, %f0, %f2  #1195
	flw	%f4, 24(%x5)  #1195
	fmul	%f0, %f0, %f4  #1195
	lw	%x6, 48(%x2)  #1197
	flw	%f4, 0(%x6)  #1197
	fmul	%f4, %f0, %f4  #1197
	flw	%f6, 8(%x2)  #1197
	fadd	%f4, %f4, %f6  #1197
	fabs	%f4, %f4  #1197
	lw	%x7, 28(%x2)  #1197
	fsw	%f0, 72(%x2)  #1197
	fsw	%f4, 80(%x2)  #1197
	mv	%x5, %x7
	sw	%x1, 92(%x2)  #1197
	addi	%x2, %x2, 96  #1197
	jal	%x1, o_param_a.2692  #1197
	addi	%x2, %x2, -96  #1197
	lw	%x1, 92(%x2) #1197
	mv	%f2, %f0  #1197
	mv	%f3, %f1  #1197
	flw	%f0, 80(%x2)  #1197
	sw	%x1, 92(%x2)  #1197
	addi	%x2, %x2, 96  #1197
	jal	%x1, fless.2540  #1197
	addi	%x2, %x2, -96  #1197
	lw	%x1, 92(%x2) #1197
	beq	%x5, %x0, 12  #1197
	j	be_else.9299
	nop
	addi	%x5, %x0, 0  #0
	j	be_cont.9300
	nop
be_else.9299:
	lw	%x5, 48(%x2)  #1198
	flw	%f0, 16(%x5)  #1198
	flw	%f2, 72(%x2)  #1198
	fmul	%f0, %f2, %f0  #1198
	flw	%f4, 32(%x2)  #1198
	fadd	%f0, %f0, %f4  #1198
	fabs	%f0, %f0  #1198
	lw	%x6, 28(%x2)  #1198
	fsw	%f0, 88(%x2)  #1198
	mv	%x5, %x6
	sw	%x1, 100(%x2)  #1198
	addi	%x2, %x2, 104  #1198
	jal	%x1, o_param_c.2696  #1198
	addi	%x2, %x2, -104  #1198
	lw	%x1, 100(%x2) #1198
	mv	%f2, %f0  #1198
	mv	%f3, %f1  #1198
	flw	%f0, 88(%x2)  #1198
	sw	%x1, 100(%x2)  #1198
	addi	%x2, %x2, 104  #1198
	jal	%x1, fless.2540  #1198
	addi	%x2, %x2, -104  #1198
	lw	%x1, 100(%x2) #1198
	beq	%x5, %x0, 12  #1198
	j	be_else.9301
	nop
	addi	%x5, %x0, 0  #0
	j	be_cont.9302
	nop
be_else.9301:
	lw	%x5, 24(%x2)  #1199
	flw	%f0, 24(%x5)  #1199
	sw	%x1, 100(%x2)  #1199
	addi	%x2, %x2, 104  #1199
	jal	%x1, fiszero.2528  #1199
	addi	%x2, %x2, -104  #1199
	lw	%x1, 100(%x2) #1199
	beq	%x5, %x0, 12  #1199
	j	be_else.9303
	nop
	addi	%x5, %x0, 1  #0
	j	be_cont.9304
	nop
be_else.9303:
	addi	%x5, %x0, 0  #0
be_cont.9304:
be_cont.9302:
be_cont.9300:
	beq	%x5, %x0, 12  #1196
	j	be_else.9305
	nop
	lw	%x5, 24(%x2)  #1204
	flw	%f0, 32(%x5)  #1204
	flw	%f2, 32(%x2)  #1204
	fsub	%f0, %f0, %f2  #1204
	flw	%f2, 40(%x5)  #1204
	fmul	%f0, %f0, %f2  #1204
	lw	%x6, 48(%x2)  #1206
	flw	%f2, 0(%x6)  #1206
	fmul	%f2, %f0, %f2  #1206
	flw	%f4, 8(%x2)  #1206
	fadd	%f2, %f2, %f4  #1206
	fabs	%f2, %f2  #1206
	lw	%x7, 28(%x2)  #1206
	fsw	%f0, 96(%x2)  #1206
	fsw	%f2, 104(%x2)  #1206
	mv	%x5, %x7
	sw	%x1, 116(%x2)  #1206
	addi	%x2, %x2, 120  #1206
	jal	%x1, o_param_a.2692  #1206
	addi	%x2, %x2, -120  #1206
	lw	%x1, 116(%x2) #1206
	mv	%f2, %f0  #1206
	mv	%f3, %f1  #1206
	flw	%f0, 104(%x2)  #1206
	sw	%x1, 116(%x2)  #1206
	addi	%x2, %x2, 120  #1206
	jal	%x1, fless.2540  #1206
	addi	%x2, %x2, -120  #1206
	lw	%x1, 116(%x2) #1206
	beq	%x5, %x0, 12  #1206
	j	be_else.9306
	nop
	addi	%x5, %x0, 0  #0
	j	be_cont.9307
	nop
be_else.9306:
	lw	%x5, 48(%x2)  #1207
	flw	%f0, 8(%x5)  #1207
	flw	%f2, 96(%x2)  #1207
	fmul	%f0, %f2, %f0  #1207
	flw	%f4, 16(%x2)  #1207
	fadd	%f0, %f0, %f4  #1207
	fabs	%f0, %f0  #1207
	lw	%x5, 28(%x2)  #1207
	fsw	%f0, 112(%x2)  #1207
	sw	%x1, 124(%x2)  #1207
	addi	%x2, %x2, 128  #1207
	jal	%x1, o_param_b.2694  #1207
	addi	%x2, %x2, -128  #1207
	lw	%x1, 124(%x2) #1207
	mv	%f2, %f0  #1207
	mv	%f3, %f1  #1207
	flw	%f0, 112(%x2)  #1207
	sw	%x1, 124(%x2)  #1207
	addi	%x2, %x2, 128  #1207
	jal	%x1, fless.2540  #1207
	addi	%x2, %x2, -128  #1207
	lw	%x1, 124(%x2) #1207
	beq	%x5, %x0, 12  #1207
	j	be_else.9308
	nop
	addi	%x5, %x0, 0  #0
	j	be_cont.9309
	nop
be_else.9308:
	lw	%x5, 24(%x2)  #1208
	flw	%f0, 40(%x5)  #1208
	sw	%x1, 124(%x2)  #1208
	addi	%x2, %x2, 128  #1208
	jal	%x1, fiszero.2528  #1208
	addi	%x2, %x2, -128  #1208
	lw	%x1, 124(%x2) #1208
	beq	%x5, %x0, 12  #1208
	j	be_else.9310
	nop
	addi	%x5, %x0, 1  #0
	j	be_cont.9311
	nop
be_else.9310:
	addi	%x5, %x0, 0  #0
be_cont.9311:
be_cont.9309:
be_cont.9307:
	beq	%x5, %x0, 12  #1205
	j	be_else.9312
	nop
	addi	%x5, %x0, 0  #0
	ret
	nop
be_else.9312:
	lw	%x5, 0(%x2)  #1212
	flw	%f0, 96(%x2)  #1212
	fsw	%f0, 0(%x5) #1212
	addi	%x5, %x0, 3  #0
	ret
	nop
be_else.9305:
	lw	%x5, 0(%x2)  #1203
	flw	%f0, 72(%x2)  #1203
	fsw	%f0, 0(%x5) #1203
	addi	%x5, %x0, 2  #0
	ret
	nop
be_else.9298:
	lw	%x5, 0(%x2)  #1194
	flw	%f0, 40(%x2)  #1194
	fsw	%f0, 0(%x5) #1194
	addi	%x5, %x0, 1  #0
	ret
	nop
solver_surface_fast.2827:  #11604
	lw	%x5, 4(%x22)  #0
	flw	%f6, 0(%x6)  #1219
	sw	%x5, 0(%x2)  #1219
	fsw	%f4, 8(%x2)  #1219
	fsw	%f2, 16(%x2)  #1219
	fsw	%f0, 24(%x2)  #1219
	sw	%x6, 32(%x2)  #1219
	mv	%f0, %f6
	mv	%f1, %f7
	sw	%x1, 36(%x2)  #1219
	addi	%x2, %x2, 40  #1219
	jal	%x1, fisneg.2532  #1219
	addi	%x2, %x2, -40  #1219
	lw	%x1, 36(%x2) #1219
	beq	%x5, %x0, 12  #1219
	j	be_else.9314
	nop
	addi	%x5, %x0, 0  #0
	ret
	nop
be_else.9314:
	lw	%x5, 32(%x2)  #1221
	flw	%f0, 8(%x5)  #1221
	flw	%f2, 24(%x2)  #1221
	fmul	%f0, %f0, %f2  #1221
	flw	%f2, 16(%x5)  #1221
	flw	%f4, 16(%x2)  #1221
	fmul	%f2, %f2, %f4  #1221
	fadd	%f0, %f0, %f2  #1221
	flw	%f2, 24(%x5)  #1221
	flw	%f4, 8(%x2)  #1221
	fmul	%f2, %f2, %f4  #1221
	fadd	%f0, %f0, %f2  #1221
	lw	%x5, 0(%x2)  #1220
	fsw	%f0, 0(%x5) #1220
	addi	%x5, %x0, 1  #0
	ret
	nop
solver_second_fast.2833:  #11752
	lw	%x7, 4(%x22)  #0
	flw	%f6, 0(%x6)  #1229
	sw	%x7, 0(%x2)  #1230
	fsw	%f6, 8(%x2)  #1230
	sw	%x5, 16(%x2)  #1230
	fsw	%f4, 24(%x2)  #1230
	fsw	%f2, 32(%x2)  #1230
	fsw	%f0, 40(%x2)  #1230
	sw	%x6, 48(%x2)  #1230
	mv	%f0, %f6
	mv	%f1, %f7
	sw	%x1, 52(%x2)  #1230
	addi	%x2, %x2, 56  #1230
	jal	%x1, fiszero.2528  #1230
	addi	%x2, %x2, -56  #1230
	lw	%x1, 52(%x2) #1230
	beq	%x5, %x0, 12  #1230
	j	be_else.9317
	nop
	lw	%x5, 48(%x2)  #1233
	flw	%f0, 8(%x5)  #1233
	flw	%f2, 40(%x2)  #1233
	fmul	%f0, %f0, %f2  #1233
	flw	%f4, 16(%x5)  #1233
	flw	%f6, 32(%x2)  #1233
	fmul	%f4, %f4, %f6  #1233
	fadd	%f0, %f0, %f4  #1233
	flw	%f4, 24(%x5)  #1233
	flw	%f8, 24(%x2)  #1233
	fmul	%f4, %f4, %f8  #1233
	fadd	%f0, %f0, %f4  #1233
	lw	%x6, 16(%x2)  #1234
	fsw	%f0, 56(%x2)  #1234
	mv	%x5, %x6
	mv	%f4, %f8
	mv	%f5, %f9
	mv	%f0, %f2
	mv	%f1, %f3
	mv	%f2, %f6
	mv	%f3, %f7
	sw	%x1, 68(%x2)  #1234
	addi	%x2, %x2, 72  #1234
	jal	%x1, quadratic.2797  #1234
	addi	%x2, %x2, -72  #1234
	lw	%x1, 68(%x2) #1234
	lw	%x5, 16(%x2)  #1235
	fsw	%f0, 64(%x2)  #1235
	sw	%x1, 76(%x2)  #1235
	addi	%x2, %x2, 80  #1235
	jal	%x1, o_form.2684  #1235
	addi	%x2, %x2, -80  #1235
	lw	%x1, 76(%x2) #1235
	addi	%x24, %x0, 3
	beq	%x5, %x24, 12  #1235
	j	be_else.9319
	nop
	mv	%f0, l.6305  #0
	flw	%f2, 64(%x2)  #1235
	fsub	%f0, %f2, %f0  #1235
	j	be_cont.9320
	nop
be_else.9319:
	flw	%f0, 64(%x2)  #1235
be_cont.9320:
	flw	%f2, 56(%x2)  #1236
	fsw	%f0, 72(%x2)  #1236
	mv	%f0, %f2
	mv	%f1, %f3
	sw	%x1, 84(%x2)  #1236
	addi	%x2, %x2, 88  #1236
	jal	%x1, fsqr.2536  #1236
	addi	%x2, %x2, -88  #1236
	lw	%x1, 84(%x2) #1236
	flw	%f2, 72(%x2)  #1236
	flw	%f4, 8(%x2)  #1236
	fmul	%f2, %f4, %f2  #1236
	fsub	%f0, %f0, %f2  #1236
	fsw	%f0, 80(%x2)  #1237
	sw	%x1, 92(%x2)  #1237
	addi	%x2, %x2, 96  #1237
	jal	%x1, fispos.2530  #1237
	addi	%x2, %x2, -96  #1237
	lw	%x1, 92(%x2) #1237
	beq	%x5, %x0, 12  #1237
	j	be_else.9321
	nop
	addi	%x5, %x0, 0  #0
	ret
	nop
be_else.9321:
	lw	%x5, 16(%x2)  #1238
	sw	%x1, 92(%x2)  #1238
	addi	%x2, %x2, 96  #1238
	jal	%x1, o_isinvert.2688  #1238
	addi	%x2, %x2, -96  #1238
	lw	%x1, 92(%x2) #1238
	beq	%x5, %x0, 12  #1238
	j	be_else.9322
	nop
	flw	%f0, 80(%x2)  #1241
	fsqrt	%f0, %f0  #1241
	flw	%f2, 56(%x2)  #1241
	fsub	%f0, %f2, %f0  #1241
	lw	%x5, 48(%x2)  #1241
	flw	%f2, 32(%x5)  #1241
	fmul	%f0, %f0, %f2  #1241
	lw	%x5, 0(%x2)  #1241
	fsw	%f0, 0(%x5) #1241
	j	be_cont.9323
	nop
be_else.9322:
	flw	%f0, 80(%x2)  #1239
	fsqrt	%f0, %f0  #1239
	flw	%f2, 56(%x2)  #1239
	fadd	%f0, %f2, %f0  #1239
	lw	%x5, 48(%x2)  #1239
	flw	%f2, 32(%x5)  #1239
	fmul	%f0, %f0, %f2  #1239
	lw	%x5, 0(%x2)  #1239
	fsw	%f0, 0(%x5) #1239
be_cont.9323:
	addi	%x5, %x0, 1  #0
	ret
	nop
be_else.9317:
	addi	%x5, %x0, 0  #0
	ret
	nop
solver_fast.2839:  #12236
	lw	%x9, 16(%x22)  #1248
	lw	%x10, 12(%x22)  #1248
	lw	%x11, 8(%x22)  #1248
	lw	%x12, 4(%x22)  #1248
	slli	%x13, %x5, 2  #1248
	lw	%x12, %x13(%x12)  #1248
	flw	%f0, 0(%x7)  #1249
	sw	%x10, 0(%x2)  #1249
	sw	%x9, 4(%x2)  #1249
	sw	%x11, 8(%x2)  #1249
	sw	%x5, 12(%x2)  #1249
	sw	%x6, 16(%x2)  #1249
	sw	%x12, 20(%x2)  #1249
	sw	%x7, 24(%x2)  #1249
	fsw	%f0, 32(%x2)  #1249
	mv	%x5, %x12
	sw	%x1, 44(%x2)  #1249
	addi	%x2, %x2, 48  #1249
	jal	%x1, o_param_x.2700  #1249
	addi	%x2, %x2, -48  #1249
	lw	%x1, 44(%x2) #1249
	flw	%f2, 32(%x2)  #1249
	fsub	%f0, %f2, %f0  #1249
	lw	%x5, 24(%x2)  #1250
	flw	%f2, 8(%x5)  #1250
	lw	%x6, 20(%x2)  #1250
	fsw	%f0, 40(%x2)  #1250
	fsw	%f2, 48(%x2)  #1250
	mv	%x5, %x6
	sw	%x1, 60(%x2)  #1250
	addi	%x2, %x2, 64  #1250
	jal	%x1, o_param_y.2702  #1250
	addi	%x2, %x2, -64  #1250
	lw	%x1, 60(%x2) #1250
	flw	%f2, 48(%x2)  #1250
	fsub	%f0, %f2, %f0  #1250
	lw	%x5, 24(%x2)  #1251
	flw	%f2, 16(%x5)  #1251
	lw	%x5, 20(%x2)  #1251
	fsw	%f0, 56(%x2)  #1251
	fsw	%f2, 64(%x2)  #1251
	sw	%x1, 76(%x2)  #1251
	addi	%x2, %x2, 80  #1251
	jal	%x1, o_param_z.2704  #1251
	addi	%x2, %x2, -80  #1251
	lw	%x1, 76(%x2) #1251
	flw	%f2, 64(%x2)  #1251
	fsub	%f0, %f2, %f0  #1251
	lw	%x5, 16(%x2)  #1252
	fsw	%f0, 72(%x2)  #1252
	sw	%x1, 84(%x2)  #1252
	addi	%x2, %x2, 88  #1252
	jal	%x1, d_const.2745  #1252
	addi	%x2, %x2, -88  #1252
	lw	%x1, 84(%x2) #1252
	lw	%x6, 12(%x2)  #1253
	slli	%x6, %x6, 2  #1253
	lw	%x5, %x6(%x5)  #1253
	lw	%x6, 20(%x2)  #1254
	sw	%x5, 80(%x2)  #1254
	mv	%x5, %x6
	sw	%x1, 84(%x2)  #1254
	addi	%x2, %x2, 88  #1254
	jal	%x1, o_form.2684  #1254
	addi	%x2, %x2, -88  #1254
	lw	%x1, 84(%x2) #1254
	addi	%x24, %x0, 1
	beq	%x5, %x24, 12  #1255
	j	be_else.9325
	nop
	lw	%x5, 16(%x2)  #1256
	sw	%x1, 84(%x2)  #1256
	addi	%x2, %x2, 88  #1256
	jal	%x1, d_vec.2743  #1256
	addi	%x2, %x2, -88  #1256
	lw	%x1, 84(%x2) #1256
	mv	%x6, %x5  #1256
	flw	%f0, 40(%x2)  #1256
	flw	%f2, 56(%x2)  #1256
	flw	%f4, 72(%x2)  #1256
	lw	%x5, 20(%x2)  #1256
	lw	%x7, 80(%x2)  #1256
	lw	%x22, 8(%x2)  #1256
	lw	0(%x23), %x22  #1256
	jalr	%x0, %x23, 0  #1256
	nop
be_else.9325:
	addi	%x24, %x0, 2
	beq	%x5, %x24, 12  #1257
	j	be_else.9326
	nop
	flw	%f0, 40(%x2)  #1258
	flw	%f2, 56(%x2)  #1258
	flw	%f4, 72(%x2)  #1258
	lw	%x5, 20(%x2)  #1258
	lw	%x6, 80(%x2)  #1258
	lw	%x22, 4(%x2)  #1258
	lw	0(%x23), %x22  #1258
	jalr	%x0, %x23, 0  #1258
	nop
be_else.9326:
	flw	%f0, 40(%x2)  #1260
	flw	%f2, 56(%x2)  #1260
	flw	%f4, 72(%x2)  #1260
	lw	%x5, 20(%x2)  #1260
	lw	%x6, 80(%x2)  #1260
	lw	%x22, 0(%x2)  #1260
	lw	0(%x23), %x22  #1260
	jalr	%x0, %x23, 0  #1260
	nop
solver_surface_fast2.2843:  #12660
	lw	%x5, 4(%x22)  #0
	flw	%f0, 0(%x6)  #1268
	sw	%x5, 0(%x2)  #1268
	sw	%x7, 4(%x2)  #1268
	sw	%x6, 8(%x2)  #1268
	sw	%x1, 12(%x2)  #1268
	addi	%x2, %x2, 16  #1268
	jal	%x1, fisneg.2532  #1268
	addi	%x2, %x2, -16  #1268
	lw	%x1, 12(%x2) #1268
	beq	%x5, %x0, 12  #1268
	j	be_else.9327
	nop
	addi	%x5, %x0, 0  #0
	ret
	nop
be_else.9327:
	lw	%x5, 8(%x2)  #1269
	flw	%f0, 0(%x5)  #1269
	lw	%x5, 4(%x2)  #1269
	flw	%f2, 24(%x5)  #1269
	fmul	%f0, %f0, %f2  #1269
	lw	%x5, 0(%x2)  #1269
	fsw	%f0, 0(%x5) #1269
	addi	%x5, %x0, 1  #0
	ret
	nop
solver_second_fast2.2850:  #12764
	lw	%x9, 4(%x22)  #0
	flw	%f6, 0(%x6)  #1277
	sw	%x9, 0(%x2)  #1278
	sw	%x5, 4(%x2)  #1278
	fsw	%f6, 8(%x2)  #1278
	sw	%x7, 16(%x2)  #1278
	fsw	%f4, 24(%x2)  #1278
	fsw	%f2, 32(%x2)  #1278
	fsw	%f0, 40(%x2)  #1278
	sw	%x6, 48(%x2)  #1278
	mv	%f0, %f6
	mv	%f1, %f7
	sw	%x1, 52(%x2)  #1278
	addi	%x2, %x2, 56  #1278
	jal	%x1, fiszero.2528  #1278
	addi	%x2, %x2, -56  #1278
	lw	%x1, 52(%x2) #1278
	beq	%x5, %x0, 12  #1278
	j	be_else.9329
	nop
	lw	%x5, 48(%x2)  #1281
	flw	%f0, 8(%x5)  #1281
	flw	%f2, 40(%x2)  #1281
	fmul	%f0, %f0, %f2  #1281
	flw	%f2, 16(%x5)  #1281
	flw	%f4, 32(%x2)  #1281
	fmul	%f2, %f2, %f4  #1281
	fadd	%f0, %f0, %f2  #1281
	flw	%f2, 24(%x5)  #1281
	flw	%f4, 24(%x2)  #1281
	fmul	%f2, %f2, %f4  #1281
	fadd	%f0, %f0, %f2  #1281
	lw	%x6, 16(%x2)  #1282
	flw	%f2, 24(%x6)  #1282
	fsw	%f0, 56(%x2)  #1283
	fsw	%f2, 64(%x2)  #1283
	sw	%x1, 76(%x2)  #1283
	addi	%x2, %x2, 80  #1283
	jal	%x1, fsqr.2536  #1283
	addi	%x2, %x2, -80  #1283
	lw	%x1, 76(%x2) #1283
	flw	%f2, 64(%x2)  #1283
	flw	%f4, 8(%x2)  #1283
	fmul	%f2, %f4, %f2  #1283
	fsub	%f0, %f0, %f2  #1283
	fsw	%f0, 72(%x2)  #1284
	sw	%x1, 84(%x2)  #1284
	addi	%x2, %x2, 88  #1284
	jal	%x1, fispos.2530  #1284
	addi	%x2, %x2, -88  #1284
	lw	%x1, 84(%x2) #1284
	beq	%x5, %x0, 12  #1284
	j	be_else.9331
	nop
	addi	%x5, %x0, 0  #0
	ret
	nop
be_else.9331:
	lw	%x5, 4(%x2)  #1285
	sw	%x1, 84(%x2)  #1285
	addi	%x2, %x2, 88  #1285
	jal	%x1, o_isinvert.2688  #1285
	addi	%x2, %x2, -88  #1285
	lw	%x1, 84(%x2) #1285
	beq	%x5, %x0, 12  #1285
	j	be_else.9332
	nop
	flw	%f0, 72(%x2)  #1288
	fsqrt	%f0, %f0  #1288
	flw	%f2, 56(%x2)  #1288
	fsub	%f0, %f2, %f0  #1288
	lw	%x5, 48(%x2)  #1288
	flw	%f2, 32(%x5)  #1288
	fmul	%f0, %f0, %f2  #1288
	lw	%x5, 0(%x2)  #1288
	fsw	%f0, 0(%x5) #1288
	j	be_cont.9333
	nop
be_else.9332:
	flw	%f0, 72(%x2)  #1286
	fsqrt	%f0, %f0  #1286
	flw	%f2, 56(%x2)  #1286
	fadd	%f0, %f2, %f0  #1286
	lw	%x5, 48(%x2)  #1286
	flw	%f2, 32(%x5)  #1286
	fmul	%f0, %f0, %f2  #1286
	lw	%x5, 0(%x2)  #1286
	fsw	%f0, 0(%x5) #1286
be_cont.9333:
	addi	%x5, %x0, 1  #0
	ret
	nop
be_else.9329:
	addi	%x5, %x0, 0  #0
	ret
	nop
solver_fast2.2857:  #13132
	lw	%x7, 16(%x22)  #1295
	lw	%x9, 12(%x22)  #1295
	lw	%x10, 8(%x22)  #1295
	lw	%x11, 4(%x22)  #1295
	slli	%x12, %x5, 2  #1295
	lw	%x11, %x12(%x11)  #1295
	sw	%x9, 0(%x2)  #1296
	sw	%x7, 4(%x2)  #1296
	sw	%x10, 8(%x2)  #1296
	sw	%x11, 12(%x2)  #1296
	sw	%x5, 16(%x2)  #1296
	sw	%x6, 20(%x2)  #1296
	mv	%x5, %x11
	sw	%x1, 28(%x2)  #1296
	addi	%x2, %x2, 32  #1296
	jal	%x1, o_param_ctbl.2722  #1296
	addi	%x2, %x2, -32  #1296
	lw	%x1, 28(%x2) #1296
	flw	%f0, 0(%x5)  #1297
	flw	%f2, 8(%x5)  #1298
	flw	%f4, 16(%x5)  #1299
	lw	%x6, 20(%x2)  #1300
	sw	%x5, 24(%x2)  #1300
	fsw	%f4, 32(%x2)  #1300
	fsw	%f2, 40(%x2)  #1300
	fsw	%f0, 48(%x2)  #1300
	mv	%x5, %x6
	sw	%x1, 60(%x2)  #1300
	addi	%x2, %x2, 64  #1300
	jal	%x1, d_const.2745  #1300
	addi	%x2, %x2, -64  #1300
	lw	%x1, 60(%x2) #1300
	lw	%x6, 16(%x2)  #1301
	slli	%x6, %x6, 2  #1301
	lw	%x5, %x6(%x5)  #1301
	lw	%x6, 12(%x2)  #1302
	sw	%x5, 56(%x2)  #1302
	mv	%x5, %x6
	sw	%x1, 60(%x2)  #1302
	addi	%x2, %x2, 64  #1302
	jal	%x1, o_form.2684  #1302
	addi	%x2, %x2, -64  #1302
	lw	%x1, 60(%x2) #1302
	addi	%x24, %x0, 1
	beq	%x5, %x24, 12  #1303
	j	be_else.9335
	nop
	lw	%x5, 20(%x2)  #1304
	sw	%x1, 60(%x2)  #1304
	addi	%x2, %x2, 64  #1304
	jal	%x1, d_vec.2743  #1304
	addi	%x2, %x2, -64  #1304
	lw	%x1, 60(%x2) #1304
	mv	%x6, %x5  #1304
	flw	%f0, 48(%x2)  #1304
	flw	%f2, 40(%x2)  #1304
	flw	%f4, 32(%x2)  #1304
	lw	%x5, 12(%x2)  #1304
	lw	%x7, 56(%x2)  #1304
	lw	%x22, 8(%x2)  #1304
	lw	0(%x23), %x22  #1304
	jalr	%x0, %x23, 0  #1304
	nop
be_else.9335:
	addi	%x24, %x0, 2
	beq	%x5, %x24, 12  #1305
	j	be_else.9336
	nop
	flw	%f0, 48(%x2)  #1306
	flw	%f2, 40(%x2)  #1306
	flw	%f4, 32(%x2)  #1306
	lw	%x5, 12(%x2)  #1306
	lw	%x6, 56(%x2)  #1306
	lw	%x7, 24(%x2)  #1306
	lw	%x22, 4(%x2)  #1306
	lw	0(%x23), %x22  #1306
	jalr	%x0, %x23, 0  #1306
	nop
be_else.9336:
	flw	%f0, 48(%x2)  #1308
	flw	%f2, 40(%x2)  #1308
	flw	%f4, 32(%x2)  #1308
	lw	%x5, 12(%x2)  #1308
	lw	%x6, 56(%x2)  #1308
	lw	%x7, 24(%x2)  #1308
	lw	%x22, 0(%x2)  #1308
	lw	0(%x23), %x22  #1308
	jalr	%x0, %x23, 0  #1308
	nop
setup_rect_table.2860:  #13472
	addi	%x7, %x0, 6  #0
	mv	%f0, l.6293  #0
	sw	%x6, 0(%x2)  #1317
	sw	%x5, 4(%x2)  #1317
	mv	%x5, %x7
	sw	%x1, 12(%x2)  #1317
	addi	%x2, %x2, 16  #1317
	jal	%x1, create_float_array.2600  #1317
	addi	%x2, %x2, -16  #1317
	lw	%x1, 12(%x2) #1317
	lw	%x6, 4(%x2)  #1319
	flw	%f0, 0(%x6)  #1319
	sw	%x5, 8(%x2)  #1319
	sw	%x1, 12(%x2)  #1319
	addi	%x2, %x2, 16  #1319
	jal	%x1, fiszero.2528  #1319
	addi	%x2, %x2, -16  #1319
	lw	%x1, 12(%x2) #1319
	beq	%x5, %x0, 12  #1319
	j	be_else.9337
	nop
	lw	%x5, 0(%x2)  #1323
	sw	%x1, 12(%x2)  #1323
	addi	%x2, %x2, 16  #1323
	jal	%x1, o_isinvert.2688  #1323
	addi	%x2, %x2, -16  #1323
	lw	%x1, 12(%x2) #1323
	lw	%x6, 4(%x2)  #1323
	flw	%f0, 0(%x6)  #1323
	sw	%x5, 12(%x2)  #1323
	sw	%x1, 20(%x2)  #1323
	addi	%x2, %x2, 24  #1323
	jal	%x1, fisneg.2532  #1323
	addi	%x2, %x2, -24  #1323
	lw	%x1, 20(%x2) #1323
	mv	%x6, %x5  #1323
	lw	%x5, 12(%x2)  #1323
	sw	%x1, 20(%x2)  #1323
	addi	%x2, %x2, 24  #1323
	jal	%x1, xor.2633  #1323
	addi	%x2, %x2, -24  #1323
	lw	%x1, 20(%x2) #1323
	lw	%x6, 0(%x2)  #1323
	sw	%x5, 16(%x2)  #1323
	mv	%x5, %x6
	sw	%x1, 20(%x2)  #1323
	addi	%x2, %x2, 24  #1323
	jal	%x1, o_param_a.2692  #1323
	addi	%x2, %x2, -24  #1323
	lw	%x1, 20(%x2) #1323
	lw	%x5, 16(%x2)  #1323
	sw	%x1, 20(%x2)  #1323
	addi	%x2, %x2, 24  #1323
	jal	%x1, fneg_cond.2638  #1323
	addi	%x2, %x2, -24  #1323
	lw	%x1, 20(%x2) #1323
	lw	%x5, 8(%x2)  #1323
	fsw	%f0, 0(%x5) #1323
	mv	%f0, l.6305  #0
	lw	%x6, 4(%x2)  #1325
	flw	%f2, 0(%x6)  #1325
	fdiv	%f0, %f0, %f2  #1325
	fsw	%f0, 8(%x5) #1325
	j	be_cont.9338
	nop
be_else.9337:
	mv	%f0, l.6293  #0
	lw	%x5, 8(%x2)  #1320
	fsw	%f0, 8(%x5) #1320
be_cont.9338:
	lw	%x6, 4(%x2)  #1327
	flw	%f0, 8(%x6)  #1327
	sw	%x1, 20(%x2)  #1327
	addi	%x2, %x2, 24  #1327
	jal	%x1, fiszero.2528  #1327
	addi	%x2, %x2, -24  #1327
	lw	%x1, 20(%x2) #1327
	beq	%x5, %x0, 12  #1327
	j	be_else.9339
	nop
	lw	%x5, 0(%x2)  #1330
	sw	%x1, 20(%x2)  #1330
	addi	%x2, %x2, 24  #1330
	jal	%x1, o_isinvert.2688  #1330
	addi	%x2, %x2, -24  #1330
	lw	%x1, 20(%x2) #1330
	lw	%x6, 4(%x2)  #1330
	flw	%f0, 8(%x6)  #1330
	sw	%x5, 20(%x2)  #1330
	sw	%x1, 28(%x2)  #1330
	addi	%x2, %x2, 32  #1330
	jal	%x1, fisneg.2532  #1330
	addi	%x2, %x2, -32  #1330
	lw	%x1, 28(%x2) #1330
	mv	%x6, %x5  #1330
	lw	%x5, 20(%x2)  #1330
	sw	%x1, 28(%x2)  #1330
	addi	%x2, %x2, 32  #1330
	jal	%x1, xor.2633  #1330
	addi	%x2, %x2, -32  #1330
	lw	%x1, 28(%x2) #1330
	lw	%x6, 0(%x2)  #1330
	sw	%x5, 24(%x2)  #1330
	mv	%x5, %x6
	sw	%x1, 28(%x2)  #1330
	addi	%x2, %x2, 32  #1330
	jal	%x1, o_param_b.2694  #1330
	addi	%x2, %x2, -32  #1330
	lw	%x1, 28(%x2) #1330
	lw	%x5, 24(%x2)  #1330
	sw	%x1, 28(%x2)  #1330
	addi	%x2, %x2, 32  #1330
	jal	%x1, fneg_cond.2638  #1330
	addi	%x2, %x2, -32  #1330
	lw	%x1, 28(%x2) #1330
	lw	%x5, 8(%x2)  #1330
	fsw	%f0, 16(%x5) #1330
	mv	%f0, l.6305  #0
	lw	%x6, 4(%x2)  #1331
	flw	%f2, 8(%x6)  #1331
	fdiv	%f0, %f0, %f2  #1331
	fsw	%f0, 24(%x5) #1331
	j	be_cont.9340
	nop
be_else.9339:
	mv	%f0, l.6293  #0
	lw	%x5, 8(%x2)  #1328
	fsw	%f0, 24(%x5) #1328
be_cont.9340:
	lw	%x6, 4(%x2)  #1333
	flw	%f0, 16(%x6)  #1333
	sw	%x1, 28(%x2)  #1333
	addi	%x2, %x2, 32  #1333
	jal	%x1, fiszero.2528  #1333
	addi	%x2, %x2, -32  #1333
	lw	%x1, 28(%x2) #1333
	beq	%x5, %x0, 12  #1333
	j	be_else.9341
	nop
	lw	%x5, 0(%x2)  #1336
	sw	%x1, 28(%x2)  #1336
	addi	%x2, %x2, 32  #1336
	jal	%x1, o_isinvert.2688  #1336
	addi	%x2, %x2, -32  #1336
	lw	%x1, 28(%x2) #1336
	lw	%x6, 4(%x2)  #1336
	flw	%f0, 16(%x6)  #1336
	sw	%x5, 28(%x2)  #1336
	sw	%x1, 36(%x2)  #1336
	addi	%x2, %x2, 40  #1336
	jal	%x1, fisneg.2532  #1336
	addi	%x2, %x2, -40  #1336
	lw	%x1, 36(%x2) #1336
	mv	%x6, %x5  #1336
	lw	%x5, 28(%x2)  #1336
	sw	%x1, 36(%x2)  #1336
	addi	%x2, %x2, 40  #1336
	jal	%x1, xor.2633  #1336
	addi	%x2, %x2, -40  #1336
	lw	%x1, 36(%x2) #1336
	lw	%x6, 0(%x2)  #1336
	sw	%x5, 32(%x2)  #1336
	mv	%x5, %x6
	sw	%x1, 36(%x2)  #1336
	addi	%x2, %x2, 40  #1336
	jal	%x1, o_param_c.2696  #1336
	addi	%x2, %x2, -40  #1336
	lw	%x1, 36(%x2) #1336
	lw	%x5, 32(%x2)  #1336
	sw	%x1, 36(%x2)  #1336
	addi	%x2, %x2, 40  #1336
	jal	%x1, fneg_cond.2638  #1336
	addi	%x2, %x2, -40  #1336
	lw	%x1, 36(%x2) #1336
	lw	%x5, 8(%x2)  #1336
	fsw	%f0, 32(%x5) #1336
	mv	%f0, l.6305  #0
	lw	%x6, 4(%x2)  #1337
	flw	%f2, 16(%x6)  #1337
	fdiv	%f0, %f0, %f2  #1337
	fsw	%f0, 40(%x5) #1337
	j	be_cont.9342
	nop
be_else.9341:
	mv	%f0, l.6293  #0
	lw	%x5, 8(%x2)  #1334
	fsw	%f0, 40(%x5) #1334
be_cont.9342:
	ret
	nop
setup_surface_table.2863:  #14208
	addi	%x7, %x0, 4  #0
	mv	%f0, l.6293  #0
	sw	%x6, 0(%x2)  #1344
	sw	%x5, 4(%x2)  #1344
	mv	%x5, %x7
	sw	%x1, 12(%x2)  #1344
	addi	%x2, %x2, 16  #1344
	jal	%x1, create_float_array.2600  #1344
	addi	%x2, %x2, -16  #1344
	lw	%x1, 12(%x2) #1344
	lw	%x6, 4(%x2)  #1346
	flw	%f0, 0(%x6)  #1346
	lw	%x7, 0(%x2)  #1346
	sw	%x5, 8(%x2)  #1346
	fsw	%f0, 16(%x2)  #1346
	mv	%x5, %x7
	sw	%x1, 28(%x2)  #1346
	addi	%x2, %x2, 32  #1346
	jal	%x1, o_param_a.2692  #1346
	addi	%x2, %x2, -32  #1346
	lw	%x1, 28(%x2) #1346
	flw	%f2, 16(%x2)  #1346
	fmul	%f0, %f2, %f0  #1346
	lw	%x5, 4(%x2)  #1346
	flw	%f2, 8(%x5)  #1346
	lw	%x6, 0(%x2)  #1346
	fsw	%f0, 24(%x2)  #1346
	fsw	%f2, 32(%x2)  #1346
	mv	%x5, %x6
	sw	%x1, 44(%x2)  #1346
	addi	%x2, %x2, 48  #1346
	jal	%x1, o_param_b.2694  #1346
	addi	%x2, %x2, -48  #1346
	lw	%x1, 44(%x2) #1346
	flw	%f2, 32(%x2)  #1346
	fmul	%f0, %f2, %f0  #1346
	flw	%f2, 24(%x2)  #1346
	fadd	%f0, %f2, %f0  #1346
	lw	%x5, 4(%x2)  #1346
	flw	%f2, 16(%x5)  #1346
	lw	%x5, 0(%x2)  #1346
	fsw	%f0, 40(%x2)  #1346
	fsw	%f2, 48(%x2)  #1346
	sw	%x1, 60(%x2)  #1346
	addi	%x2, %x2, 64  #1346
	jal	%x1, o_param_c.2696  #1346
	addi	%x2, %x2, -64  #1346
	lw	%x1, 60(%x2) #1346
	flw	%f2, 48(%x2)  #1346
	fmul	%f0, %f2, %f0  #1346
	flw	%f2, 40(%x2)  #1346
	fadd	%f0, %f2, %f0  #1346
	fsw	%f0, 56(%x2)  #1348
	sw	%x1, 68(%x2)  #1348
	addi	%x2, %x2, 72  #1348
	jal	%x1, fispos.2530  #1348
	addi	%x2, %x2, -72  #1348
	lw	%x1, 68(%x2) #1348
	beq	%x5, %x0, 12  #1348
	j	be_else.9344
	nop
	mv	%f0, l.6293  #0
	lw	%x5, 8(%x2)  #1356
	fsw	%f0, 0(%x5) #1356
	j	be_cont.9345
	nop
be_else.9344:
	mv	%f0, l.6343  #0
	flw	%f2, 56(%x2)  #1350
	fdiv	%f0, %f0, %f2  #1350
	lw	%x5, 8(%x2)  #1350
	fsw	%f0, 0(%x5) #1350
	lw	%x6, 0(%x2)  #1352
	mv	%x5, %x6
	sw	%x1, 68(%x2)  #1352
	addi	%x2, %x2, 72  #1352
	jal	%x1, o_param_a.2692  #1352
	addi	%x2, %x2, -72  #1352
	lw	%x1, 68(%x2) #1352
	flw	%f2, 56(%x2)  #1352
	fdiv	%f0, %f0, %f2  #1352
	sw	%x1, 68(%x2)  #1352
	addi	%x2, %x2, 72  #1352
	jal	%x1, fneg.2534  #1352
	addi	%x2, %x2, -72  #1352
	lw	%x1, 68(%x2) #1352
	lw	%x5, 8(%x2)  #1352
	fsw	%f0, 8(%x5) #1352
	lw	%x6, 0(%x2)  #1353
	mv	%x5, %x6
	sw	%x1, 68(%x2)  #1353
	addi	%x2, %x2, 72  #1353
	jal	%x1, o_param_b.2694  #1353
	addi	%x2, %x2, -72  #1353
	lw	%x1, 68(%x2) #1353
	flw	%f2, 56(%x2)  #1353
	fdiv	%f0, %f0, %f2  #1353
	sw	%x1, 68(%x2)  #1353
	addi	%x2, %x2, 72  #1353
	jal	%x1, fneg.2534  #1353
	addi	%x2, %x2, -72  #1353
	lw	%x1, 68(%x2) #1353
	lw	%x5, 8(%x2)  #1353
	fsw	%f0, 16(%x5) #1353
	lw	%x6, 0(%x2)  #1354
	mv	%x5, %x6
	sw	%x1, 68(%x2)  #1354
	addi	%x2, %x2, 72  #1354
	jal	%x1, o_param_c.2696  #1354
	addi	%x2, %x2, -72  #1354
	lw	%x1, 68(%x2) #1354
	flw	%f2, 56(%x2)  #1354
	fdiv	%f0, %f0, %f2  #1354
	sw	%x1, 68(%x2)  #1354
	addi	%x2, %x2, 72  #1354
	jal	%x1, fneg.2534  #1354
	addi	%x2, %x2, -72  #1354
	lw	%x1, 68(%x2) #1354
	lw	%x5, 8(%x2)  #1354
	fsw	%f0, 24(%x5) #1354
be_cont.9345:
	ret
	nop
setup_second_table.2866:  #14692
	addi	%x7, %x0, 5  #0
	mv	%f0, l.6293  #0
	sw	%x6, 0(%x2)  #1363
	sw	%x5, 4(%x2)  #1363
	mv	%x5, %x7
	sw	%x1, 12(%x2)  #1363
	addi	%x2, %x2, 16  #1363
	jal	%x1, create_float_array.2600  #1363
	addi	%x2, %x2, -16  #1363
	lw	%x1, 12(%x2) #1363
	lw	%x6, 4(%x2)  #1365
	flw	%f0, 0(%x6)  #1365
	flw	%f2, 8(%x6)  #1365
	flw	%f4, 16(%x6)  #1365
	lw	%x7, 0(%x2)  #1365
	sw	%x5, 8(%x2)  #1365
	mv	%x5, %x7
	sw	%x1, 12(%x2)  #1365
	addi	%x2, %x2, 16  #1365
	jal	%x1, quadratic.2797  #1365
	addi	%x2, %x2, -16  #1365
	lw	%x1, 12(%x2) #1365
	lw	%x5, 4(%x2)  #1366
	flw	%f2, 0(%x5)  #1366
	lw	%x6, 0(%x2)  #1366
	fsw	%f0, 16(%x2)  #1366
	fsw	%f2, 24(%x2)  #1366
	mv	%x5, %x6
	sw	%x1, 36(%x2)  #1366
	addi	%x2, %x2, 40  #1366
	jal	%x1, o_param_a.2692  #1366
	addi	%x2, %x2, -40  #1366
	lw	%x1, 36(%x2) #1366
	flw	%f2, 24(%x2)  #1366
	fmul	%f0, %f2, %f0  #1366
	sw	%x1, 36(%x2)  #1366
	addi	%x2, %x2, 40  #1366
	jal	%x1, fneg.2534  #1366
	addi	%x2, %x2, -40  #1366
	lw	%x1, 36(%x2) #1366
	lw	%x5, 4(%x2)  #1367
	flw	%f2, 8(%x5)  #1367
	lw	%x6, 0(%x2)  #1367
	fsw	%f0, 32(%x2)  #1367
	fsw	%f2, 40(%x2)  #1367
	mv	%x5, %x6
	sw	%x1, 52(%x2)  #1367
	addi	%x2, %x2, 56  #1367
	jal	%x1, o_param_b.2694  #1367
	addi	%x2, %x2, -56  #1367
	lw	%x1, 52(%x2) #1367
	flw	%f2, 40(%x2)  #1367
	fmul	%f0, %f2, %f0  #1367
	sw	%x1, 52(%x2)  #1367
	addi	%x2, %x2, 56  #1367
	jal	%x1, fneg.2534  #1367
	addi	%x2, %x2, -56  #1367
	lw	%x1, 52(%x2) #1367
	lw	%x5, 4(%x2)  #1368
	flw	%f2, 16(%x5)  #1368
	lw	%x6, 0(%x2)  #1368
	fsw	%f0, 48(%x2)  #1368
	fsw	%f2, 56(%x2)  #1368
	mv	%x5, %x6
	sw	%x1, 68(%x2)  #1368
	addi	%x2, %x2, 72  #1368
	jal	%x1, o_param_c.2696  #1368
	addi	%x2, %x2, -72  #1368
	lw	%x1, 68(%x2) #1368
	flw	%f2, 56(%x2)  #1368
	fmul	%f0, %f2, %f0  #1368
	sw	%x1, 68(%x2)  #1368
	addi	%x2, %x2, 72  #1368
	jal	%x1, fneg.2534  #1368
	addi	%x2, %x2, -72  #1368
	lw	%x1, 68(%x2) #1368
	lw	%x5, 8(%x2)  #1370
	flw	%f2, 16(%x2)  #1370
	fsw	%f2, 0(%x5) #1370
	lw	%x6, 0(%x2)  #1374
	fsw	%f0, 64(%x2)  #1374
	mv	%x5, %x6
	sw	%x1, 76(%x2)  #1374
	addi	%x2, %x2, 80  #1374
	jal	%x1, o_isrot.2690  #1374
	addi	%x2, %x2, -80  #1374
	lw	%x1, 76(%x2) #1374
	beq	%x5, %x0, 12  #1374
	j	be_else.9347
	nop
	lw	%x5, 8(%x2)  #1379
	flw	%f0, 32(%x2)  #1379
	fsw	%f0, 8(%x5) #1379
	flw	%f0, 48(%x2)  #1380
	fsw	%f0, 16(%x5) #1380
	flw	%f0, 64(%x2)  #1381
	fsw	%f0, 24(%x5) #1381
	j	be_cont.9348
	nop
be_else.9347:
	lw	%x5, 4(%x2)  #1375
	flw	%f0, 16(%x5)  #1375
	lw	%x6, 0(%x2)  #1375
	fsw	%f0, 72(%x2)  #1375
	mv	%x5, %x6
	sw	%x1, 84(%x2)  #1375
	addi	%x2, %x2, 88  #1375
	jal	%x1, o_param_r2.2718  #1375
	addi	%x2, %x2, -88  #1375
	lw	%x1, 84(%x2) #1375
	flw	%f2, 72(%x2)  #1375
	fmul	%f0, %f2, %f0  #1375
	lw	%x5, 4(%x2)  #1375
	flw	%f2, 8(%x5)  #1375
	lw	%x6, 0(%x2)  #1375
	fsw	%f0, 80(%x2)  #1375
	fsw	%f2, 88(%x2)  #1375
	mv	%x5, %x6
	sw	%x1, 100(%x2)  #1375
	addi	%x2, %x2, 104  #1375
	jal	%x1, o_param_r3.2720  #1375
	addi	%x2, %x2, -104  #1375
	lw	%x1, 100(%x2) #1375
	flw	%f2, 88(%x2)  #1375
	fmul	%f0, %f2, %f0  #1375
	flw	%f2, 80(%x2)  #1375
	fadd	%f0, %f2, %f0  #1375
	sw	%x1, 100(%x2)  #1375
	addi	%x2, %x2, 104  #1375
	jal	%x1, fhalf.2538  #1375
	addi	%x2, %x2, -104  #1375
	lw	%x1, 100(%x2) #1375
	flw	%f2, 32(%x2)  #1375
	fsub	%f0, %f2, %f0  #1375
	lw	%x5, 8(%x2)  #1375
	fsw	%f0, 8(%x5) #1375
	lw	%x6, 4(%x2)  #1376
	flw	%f0, 16(%x6)  #1376
	lw	%x7, 0(%x2)  #1376
	fsw	%f0, 96(%x2)  #1376
	mv	%x5, %x7
	sw	%x1, 108(%x2)  #1376
	addi	%x2, %x2, 112  #1376
	jal	%x1, o_param_r1.2716  #1376
	addi	%x2, %x2, -112  #1376
	lw	%x1, 108(%x2) #1376
	flw	%f2, 96(%x2)  #1376
	fmul	%f0, %f2, %f0  #1376
	lw	%x5, 4(%x2)  #1376
	flw	%f2, 0(%x5)  #1376
	lw	%x6, 0(%x2)  #1376
	fsw	%f0, 104(%x2)  #1376
	fsw	%f2, 112(%x2)  #1376
	mv	%x5, %x6
	sw	%x1, 124(%x2)  #1376
	addi	%x2, %x2, 128  #1376
	jal	%x1, o_param_r3.2720  #1376
	addi	%x2, %x2, -128  #1376
	lw	%x1, 124(%x2) #1376
	flw	%f2, 112(%x2)  #1376
	fmul	%f0, %f2, %f0  #1376
	flw	%f2, 104(%x2)  #1376
	fadd	%f0, %f2, %f0  #1376
	sw	%x1, 124(%x2)  #1376
	addi	%x2, %x2, 128  #1376
	jal	%x1, fhalf.2538  #1376
	addi	%x2, %x2, -128  #1376
	lw	%x1, 124(%x2) #1376
	flw	%f2, 48(%x2)  #1376
	fsub	%f0, %f2, %f0  #1376
	lw	%x5, 8(%x2)  #1376
	fsw	%f0, 16(%x5) #1376
	lw	%x6, 4(%x2)  #1377
	flw	%f0, 8(%x6)  #1377
	lw	%x7, 0(%x2)  #1377
	fsw	%f0, 120(%x2)  #1377
	mv	%x5, %x7
	sw	%x1, 132(%x2)  #1377
	addi	%x2, %x2, 136  #1377
	jal	%x1, o_param_r1.2716  #1377
	addi	%x2, %x2, -136  #1377
	lw	%x1, 132(%x2) #1377
	flw	%f2, 120(%x2)  #1377
	fmul	%f0, %f2, %f0  #1377
	lw	%x5, 4(%x2)  #1377
	flw	%f2, 0(%x5)  #1377
	lw	%x5, 0(%x2)  #1377
	fsw	%f0, 128(%x2)  #1377
	fsw	%f2, 136(%x2)  #1377
	sw	%x1, 148(%x2)  #1377
	addi	%x2, %x2, 152  #1377
	jal	%x1, o_param_r2.2718  #1377
	addi	%x2, %x2, -152  #1377
	lw	%x1, 148(%x2) #1377
	flw	%f2, 136(%x2)  #1377
	fmul	%f0, %f2, %f0  #1377
	flw	%f2, 128(%x2)  #1377
	fadd	%f0, %f2, %f0  #1377
	sw	%x1, 148(%x2)  #1377
	addi	%x2, %x2, 152  #1377
	jal	%x1, fhalf.2538  #1377
	addi	%x2, %x2, -152  #1377
	lw	%x1, 148(%x2) #1377
	flw	%f2, 64(%x2)  #1377
	fsub	%f0, %f2, %f0  #1377
	lw	%x5, 8(%x2)  #1377
	fsw	%f0, 24(%x5) #1377
be_cont.9348:
	flw	%f0, 16(%x2)  #1383
	sw	%x1, 148(%x2)  #1383
	addi	%x2, %x2, 152  #1383
	jal	%x1, fiszero.2528  #1383
	addi	%x2, %x2, -152  #1383
	lw	%x1, 148(%x2) #1383
	beq	%x5, %x0, 12  #1383
	j	be_else.9349
	nop
	mv	%f0, l.6305  #0
	flw	%f2, 16(%x2)  #1384
	fdiv	%f0, %f0, %f2  #1384
	lw	%x5, 8(%x2)  #1384
	fsw	%f0, 32(%x5) #1384
	j	be_cont.9350
	nop
be_else.9349:
be_cont.9350:
	lw	%x5, 8(%x2)  #1386
	ret
	nop
iter_setup_dirvec_constants.2869:  #15592
	lw	%x7, 4(%x22)  #0
	bge	%x6, %x0, 12  #1392
	j	bge_else.9351
	nop
	slli	%x9, %x6, 2  #1393
	lw	%x7, %x9(%x7)  #1393
	sw	%x22, 0(%x2)  #1394
	sw	%x6, 4(%x2)  #1394
	sw	%x7, 8(%x2)  #1394
	sw	%x5, 12(%x2)  #1394
	sw	%x1, 20(%x2)  #1394
	addi	%x2, %x2, 24  #1394
	jal	%x1, d_const.2745  #1394
	addi	%x2, %x2, -24  #1394
	lw	%x1, 20(%x2) #1394
	lw	%x6, 12(%x2)  #1395
	sw	%x5, 16(%x2)  #1395
	mv	%x5, %x6
	sw	%x1, 20(%x2)  #1395
	addi	%x2, %x2, 24  #1395
	jal	%x1, d_vec.2743  #1395
	addi	%x2, %x2, -24  #1395
	lw	%x1, 20(%x2) #1395
	lw	%x6, 8(%x2)  #1396
	sw	%x5, 20(%x2)  #1396
	mv	%x5, %x6
	sw	%x1, 28(%x2)  #1396
	addi	%x2, %x2, 32  #1396
	jal	%x1, o_form.2684  #1396
	addi	%x2, %x2, -32  #1396
	lw	%x1, 28(%x2) #1396
	addi	%x24, %x0, 1
	beq	%x5, %x24, 12  #1397
	j	be_else.9352
	nop
	lw	%x5, 20(%x2)  #1398
	lw	%x6, 8(%x2)  #1398
	sw	%x1, 28(%x2)  #1398
	addi	%x2, %x2, 32  #1398
	jal	%x1, setup_rect_table.2860  #1398
	addi	%x2, %x2, -32  #1398
	lw	%x1, 28(%x2) #1398
	lw	%x6, 4(%x2)  #1398
	slli	%x7, %x6, 2  #1398
	lw	%x9, 16(%x2)  #1398
	sw	%x5, %x7(%x9)  #1398
	j	be_cont.9353
	nop
be_else.9352:
	addi	%x24, %x0, 2
	beq	%x5, %x24, 12  #1399
	j	be_else.9354
	nop
	lw	%x5, 20(%x2)  #1400
	lw	%x6, 8(%x2)  #1400
	sw	%x1, 28(%x2)  #1400
	addi	%x2, %x2, 32  #1400
	jal	%x1, setup_surface_table.2863  #1400
	addi	%x2, %x2, -32  #1400
	lw	%x1, 28(%x2) #1400
	lw	%x6, 4(%x2)  #1400
	slli	%x7, %x6, 2  #1400
	lw	%x9, 16(%x2)  #1400
	sw	%x5, %x7(%x9)  #1400
	j	be_cont.9355
	nop
be_else.9354:
	lw	%x5, 20(%x2)  #1402
	lw	%x6, 8(%x2)  #1402
	sw	%x1, 28(%x2)  #1402
	addi	%x2, %x2, 32  #1402
	jal	%x1, setup_second_table.2866  #1402
	addi	%x2, %x2, -32  #1402
	lw	%x1, 28(%x2) #1402
	lw	%x6, 4(%x2)  #1402
	slli	%x7, %x6, 2  #1402
	lw	%x9, 16(%x2)  #1402
	sw	%x5, %x7(%x9)  #1402
be_cont.9355:
be_cont.9353:
	addi	%x6, %x6, -1  #1404
	lw	%x5, 12(%x2)  #1404
	lw	%x22, 0(%x2)  #1404
	lw	0(%x23), %x22  #1404
	jalr	%x0, %x23, 0  #1404
	nop
bge_else.9351:
	ret
	nop
setup_dirvec_constants.2872:  #15920
	lw	%x6, 8(%x22)  #0
	lw	%x22, 4(%x22)  #0
	lw	%x6, 0(%x6)  #1409
	addi	%x6, %x6, -1  #1409
	lw	0(%x23), %x22  #1409
	jalr	%x0, %x23, 0  #1409
	nop
setup_startp_constants.2874:  #15948
	lw	%x7, 4(%x22)  #0
	bge	%x6, %x0, 12  #1417
	j	bge_else.9357
	nop
	slli	%x9, %x6, 2  #1418
	lw	%x7, %x9(%x7)  #1418
	sw	%x22, 0(%x2)  #1419
	sw	%x6, 4(%x2)  #1419
	sw	%x5, 8(%x2)  #1419
	sw	%x7, 12(%x2)  #1419
	mv	%x5, %x7
	sw	%x1, 20(%x2)  #1419
	addi	%x2, %x2, 24  #1419
	jal	%x1, o_param_ctbl.2722  #1419
	addi	%x2, %x2, -24  #1419
	lw	%x1, 20(%x2) #1419
	lw	%x6, 12(%x2)  #1420
	sw	%x5, 16(%x2)  #1420
	mv	%x5, %x6
	sw	%x1, 20(%x2)  #1420
	addi	%x2, %x2, 24  #1420
	jal	%x1, o_form.2684  #1420
	addi	%x2, %x2, -24  #1420
	lw	%x1, 20(%x2) #1420
	lw	%x6, 8(%x2)  #1421
	flw	%f0, 0(%x6)  #1421
	lw	%x7, 12(%x2)  #1421
	sw	%x5, 20(%x2)  #1421
	fsw	%f0, 24(%x2)  #1421
	mv	%x5, %x7
	sw	%x1, 36(%x2)  #1421
	addi	%x2, %x2, 40  #1421
	jal	%x1, o_param_x.2700  #1421
	addi	%x2, %x2, -40  #1421
	lw	%x1, 36(%x2) #1421
	flw	%f2, 24(%x2)  #1421
	fsub	%f0, %f2, %f0  #1421
	lw	%x5, 16(%x2)  #1421
	fsw	%f0, 0(%x5) #1421
	lw	%x6, 8(%x2)  #1422
	flw	%f0, 8(%x6)  #1422
	lw	%x7, 12(%x2)  #1422
	fsw	%f0, 32(%x2)  #1422
	mv	%x5, %x7
	sw	%x1, 44(%x2)  #1422
	addi	%x2, %x2, 48  #1422
	jal	%x1, o_param_y.2702  #1422
	addi	%x2, %x2, -48  #1422
	lw	%x1, 44(%x2) #1422
	flw	%f2, 32(%x2)  #1422
	fsub	%f0, %f2, %f0  #1422
	lw	%x5, 16(%x2)  #1422
	fsw	%f0, 8(%x5) #1422
	lw	%x6, 8(%x2)  #1423
	flw	%f0, 16(%x6)  #1423
	lw	%x7, 12(%x2)  #1423
	fsw	%f0, 40(%x2)  #1423
	mv	%x5, %x7
	sw	%x1, 52(%x2)  #1423
	addi	%x2, %x2, 56  #1423
	jal	%x1, o_param_z.2704  #1423
	addi	%x2, %x2, -56  #1423
	lw	%x1, 52(%x2) #1423
	flw	%f2, 40(%x2)  #1423
	fsub	%f0, %f2, %f0  #1423
	lw	%x5, 16(%x2)  #1423
	fsw	%f0, 16(%x5) #1423
	lw	%x6, 20(%x2)  #1424
	addi	%x24, %x0, 2
	beq	%x6, %x24, 12  #1424
	j	be_else.9358
	nop
	lw	%x6, 12(%x2)  #1426
	mv	%x5, %x6
	sw	%x1, 52(%x2)  #1426
	addi	%x2, %x2, 56  #1426
	jal	%x1, o_param_abc.2698  #1426
	addi	%x2, %x2, -56  #1426
	lw	%x1, 52(%x2) #1426
	lw	%x6, 16(%x2)  #1426
	flw	%f0, 0(%x6)  #1426
	flw	%f2, 8(%x6)  #1426
	flw	%f4, 16(%x6)  #1426
	sw	%x1, 52(%x2)  #1426
	addi	%x2, %x2, 56  #1426
	jal	%x1, veciprod2.2663  #1426
	addi	%x2, %x2, -56  #1426
	lw	%x1, 52(%x2) #1426
	lw	%x5, 16(%x2)  #1425
	fsw	%f0, 24(%x5) #1425
	j	be_cont.9359
	nop
be_else.9358:
	addi	%x24, %x0, 2
	bge	%x24, %x6, 12  #1427
	j	ble_else.9360
	nop
	j	ble_cont.9361
	nop
ble_else.9360:
	flw	%f0, 0(%x5)  #1428
	flw	%f2, 8(%x5)  #1428
	flw	%f4, 16(%x5)  #1428
	lw	%x7, 12(%x2)  #1428
	mv	%x5, %x7
	sw	%x1, 52(%x2)  #1428
	addi	%x2, %x2, 56  #1428
	jal	%x1, quadratic.2797  #1428
	addi	%x2, %x2, -56  #1428
	lw	%x1, 52(%x2) #1428
	lw	%x5, 20(%x2)  #1429
	addi	%x24, %x0, 3
	beq	%x5, %x24, 12  #1429
	j	be_else.9362
	nop
	mv	%f2, l.6305  #0
	fsub	%f0, %f0, %f2  #1429
	j	be_cont.9363
	nop
be_else.9362:
be_cont.9363:
	lw	%x5, 16(%x2)  #1429
	fsw	%f0, 24(%x5) #1429
ble_cont.9361:
be_cont.9359:
	lw	%x5, 4(%x2)  #1431
	addi	%x6, %x5, -1  #1431
	lw	%x5, 8(%x2)  #1431
	lw	%x22, 0(%x2)  #1431
	lw	0(%x23), %x22  #1431
	jalr	%x0, %x23, 0  #1431
	nop
bge_else.9357:
	ret
	nop
setup_startp.2877:  #16448
	lw	%x6, 12(%x22)  #1436
	lw	%x7, 8(%x22)  #1436
	lw	%x9, 4(%x22)  #1436
	sw	%x5, 0(%x2)  #1436
	sw	%x7, 4(%x2)  #1436
	sw	%x9, 8(%x2)  #1436
	mv	%x23, %x6
	mv	%x6, %x5
	mv	%x5, %x23
	sw	%x1, 12(%x2)  #1436
	addi	%x2, %x2, 16  #1436
	jal	%x1, veccpy.2654  #1436
	addi	%x2, %x2, -16  #1436
	lw	%x1, 12(%x2) #1436
	lw	%x5, 8(%x2)  #1437
	lw	%x5, 0(%x5)  #1437
	addi	%x6, %x5, -1  #1437
	lw	%x5, 0(%x2)  #1437
	lw	%x22, 4(%x2)  #1437
	lw	0(%x23), %x22  #1437
	jalr	%x0, %x23, 0  #1437
	nop
is_rect_outside.2879:  #16536
	fabs	%f0, %f0  #1449
	fsw	%f4, 0(%x2)  #1449
	sw	%x5, 8(%x2)  #1449
	fsw	%f2, 16(%x2)  #1449
	fsw	%f0, 24(%x2)  #1449
	sw	%x1, 36(%x2)  #1449
	addi	%x2, %x2, 40  #1449
	jal	%x1, o_param_a.2692  #1449
	addi	%x2, %x2, -40  #1449
	lw	%x1, 36(%x2) #1449
	mv	%f2, %f0  #1449
	mv	%f3, %f1  #1449
	flw	%f0, 24(%x2)  #1449
	sw	%x1, 36(%x2)  #1449
	addi	%x2, %x2, 40  #1449
	jal	%x1, fless.2540  #1449
	addi	%x2, %x2, -40  #1449
	lw	%x1, 36(%x2) #1449
	beq	%x5, %x0, 12  #1449
	j	be_else.9366
	nop
	addi	%x5, %x0, 0  #0
	j	be_cont.9367
	nop
be_else.9366:
	flw	%f0, 16(%x2)  #1450
	fabs	%f0, %f0  #1450
	lw	%x5, 8(%x2)  #1450
	fsw	%f0, 32(%x2)  #1450
	sw	%x1, 44(%x2)  #1450
	addi	%x2, %x2, 48  #1450
	jal	%x1, o_param_b.2694  #1450
	addi	%x2, %x2, -48  #1450
	lw	%x1, 44(%x2) #1450
	mv	%f2, %f0  #1450
	mv	%f3, %f1  #1450
	flw	%f0, 32(%x2)  #1450
	sw	%x1, 44(%x2)  #1450
	addi	%x2, %x2, 48  #1450
	jal	%x1, fless.2540  #1450
	addi	%x2, %x2, -48  #1450
	lw	%x1, 44(%x2) #1450
	beq	%x5, %x0, 12  #1450
	j	be_else.9368
	nop
	addi	%x5, %x0, 0  #0
	j	be_cont.9369
	nop
be_else.9368:
	flw	%f0, 0(%x2)  #1451
	fabs	%f0, %f0  #1451
	lw	%x5, 8(%x2)  #1451
	fsw	%f0, 40(%x2)  #1451
	sw	%x1, 52(%x2)  #1451
	addi	%x2, %x2, 56  #1451
	jal	%x1, o_param_c.2696  #1451
	addi	%x2, %x2, -56  #1451
	lw	%x1, 52(%x2) #1451
	mv	%f2, %f0  #1451
	mv	%f3, %f1  #1451
	flw	%f0, 40(%x2)  #1451
	sw	%x1, 52(%x2)  #1451
	addi	%x2, %x2, 56  #1451
	jal	%x1, fless.2540  #1451
	addi	%x2, %x2, -56  #1451
	lw	%x1, 52(%x2) #1451
be_cont.9369:
be_cont.9367:
	beq	%x5, %x0, 12  #1448
	j	be_else.9370
	nop
	lw	%x5, 8(%x2)  #1454
	sw	%x1, 52(%x2)  #1454
	addi	%x2, %x2, 56  #1454
	jal	%x1, o_isinvert.2688  #1454
	addi	%x2, %x2, -56  #1454
	lw	%x1, 52(%x2) #1454
	beq	%x5, %x0, 12  #1454
	j	be_else.9371
	nop
	addi	%x5, %x0, 1  #0
	ret
	nop
be_else.9371:
	addi	%x5, %x0, 0  #0
	ret
	nop
be_else.9370:
	lw	%x5, 8(%x2)  #1454
	j	o_isinvert.2688  #1454
	nop
is_plane_outside.2884:  #16876
	sw	%x5, 0(%x2)  #1459
	fsw	%f4, 8(%x2)  #1459
	fsw	%f2, 16(%x2)  #1459
	fsw	%f0, 24(%x2)  #1459
	sw	%x1, 36(%x2)  #1459
	addi	%x2, %x2, 40  #1459
	jal	%x1, o_param_abc.2698  #1459
	addi	%x2, %x2, -40  #1459
	lw	%x1, 36(%x2) #1459
	flw	%f0, 24(%x2)  #1459
	flw	%f2, 16(%x2)  #1459
	flw	%f4, 8(%x2)  #1459
	sw	%x1, 36(%x2)  #1459
	addi	%x2, %x2, 40  #1459
	jal	%x1, veciprod2.2663  #1459
	addi	%x2, %x2, -40  #1459
	lw	%x1, 36(%x2) #1459
	lw	%x5, 0(%x2)  #1460
	fsw	%f0, 32(%x2)  #1460
	sw	%x1, 44(%x2)  #1460
	addi	%x2, %x2, 48  #1460
	jal	%x1, o_isinvert.2688  #1460
	addi	%x2, %x2, -48  #1460
	lw	%x1, 44(%x2) #1460
	flw	%f0, 32(%x2)  #1460
	sw	%x5, 40(%x2)  #1460
	sw	%x1, 44(%x2)  #1460
	addi	%x2, %x2, 48  #1460
	jal	%x1, fisneg.2532  #1460
	addi	%x2, %x2, -48  #1460
	lw	%x1, 44(%x2) #1460
	mv	%x6, %x5  #1460
	lw	%x5, 40(%x2)  #1460
	sw	%x1, 44(%x2)  #1460
	addi	%x2, %x2, 48  #1460
	jal	%x1, xor.2633  #1460
	addi	%x2, %x2, -48  #1460
	lw	%x1, 44(%x2) #1460
	beq	%x5, %x0, 12  #1460
	j	be_else.9373
	nop
	addi	%x5, %x0, 1  #0
	ret
	nop
be_else.9373:
	addi	%x5, %x0, 0  #0
	ret
	nop
is_second_outside.2889:  #17064
	sw	%x5, 0(%x2)  #1465
	sw	%x1, 4(%x2)  #1465
	addi	%x2, %x2, 8  #1465
	jal	%x1, quadratic.2797  #1465
	addi	%x2, %x2, -8  #1465
	lw	%x1, 4(%x2) #1465
	lw	%x5, 0(%x2)  #1466
	fsw	%f0, 8(%x2)  #1466
	sw	%x1, 20(%x2)  #1466
	addi	%x2, %x2, 24  #1466
	jal	%x1, o_form.2684  #1466
	addi	%x2, %x2, -24  #1466
	lw	%x1, 20(%x2) #1466
	addi	%x24, %x0, 3
	beq	%x5, %x24, 12  #1466
	j	be_else.9375
	nop
	mv	%f0, l.6305  #0
	flw	%f2, 8(%x2)  #1466
	fsub	%f0, %f2, %f0  #1466
	j	be_cont.9376
	nop
be_else.9375:
	flw	%f0, 8(%x2)  #1466
be_cont.9376:
	lw	%x5, 0(%x2)  #1467
	fsw	%f0, 16(%x2)  #1467
	sw	%x1, 28(%x2)  #1467
	addi	%x2, %x2, 32  #1467
	jal	%x1, o_isinvert.2688  #1467
	addi	%x2, %x2, -32  #1467
	lw	%x1, 28(%x2) #1467
	flw	%f0, 16(%x2)  #1467
	sw	%x5, 24(%x2)  #1467
	sw	%x1, 28(%x2)  #1467
	addi	%x2, %x2, 32  #1467
	jal	%x1, fisneg.2532  #1467
	addi	%x2, %x2, -32  #1467
	lw	%x1, 28(%x2) #1467
	mv	%x6, %x5  #1467
	lw	%x5, 24(%x2)  #1467
	sw	%x1, 28(%x2)  #1467
	addi	%x2, %x2, 32  #1467
	jal	%x1, xor.2633  #1467
	addi	%x2, %x2, -32  #1467
	lw	%x1, 28(%x2) #1467
	beq	%x5, %x0, 12  #1467
	j	be_else.9377
	nop
	addi	%x5, %x0, 1  #0
	ret
	nop
be_else.9377:
	addi	%x5, %x0, 0  #0
	ret
	nop
is_outside.2894:  #17272
	fsw	%f4, 0(%x2)  #1472
	fsw	%f2, 8(%x2)  #1472
	sw	%x5, 16(%x2)  #1472
	fsw	%f0, 24(%x2)  #1472
	sw	%x1, 36(%x2)  #1472
	addi	%x2, %x2, 40  #1472
	jal	%x1, o_param_x.2700  #1472
	addi	%x2, %x2, -40  #1472
	lw	%x1, 36(%x2) #1472
	flw	%f2, 24(%x2)  #1472
	fsub	%f0, %f2, %f0  #1472
	lw	%x5, 16(%x2)  #1473
	fsw	%f0, 32(%x2)  #1473
	sw	%x1, 44(%x2)  #1473
	addi	%x2, %x2, 48  #1473
	jal	%x1, o_param_y.2702  #1473
	addi	%x2, %x2, -48  #1473
	lw	%x1, 44(%x2) #1473
	flw	%f2, 8(%x2)  #1473
	fsub	%f0, %f2, %f0  #1473
	lw	%x5, 16(%x2)  #1474
	fsw	%f0, 40(%x2)  #1474
	sw	%x1, 52(%x2)  #1474
	addi	%x2, %x2, 56  #1474
	jal	%x1, o_param_z.2704  #1474
	addi	%x2, %x2, -56  #1474
	lw	%x1, 52(%x2) #1474
	flw	%f2, 0(%x2)  #1474
	fsub	%f0, %f2, %f0  #1474
	lw	%x5, 16(%x2)  #1475
	fsw	%f0, 48(%x2)  #1475
	sw	%x1, 60(%x2)  #1475
	addi	%x2, %x2, 64  #1475
	jal	%x1, o_form.2684  #1475
	addi	%x2, %x2, -64  #1475
	lw	%x1, 60(%x2) #1475
	addi	%x24, %x0, 1
	beq	%x5, %x24, 12  #1476
	j	be_else.9379
	nop
	flw	%f0, 32(%x2)  #1477
	flw	%f2, 40(%x2)  #1477
	flw	%f4, 48(%x2)  #1477
	lw	%x5, 16(%x2)  #1477
	j	is_rect_outside.2879  #1477
	nop
be_else.9379:
	addi	%x24, %x0, 2
	beq	%x5, %x24, 12  #1478
	j	be_else.9380
	nop
	flw	%f0, 32(%x2)  #1479
	flw	%f2, 40(%x2)  #1479
	flw	%f4, 48(%x2)  #1479
	lw	%x5, 16(%x2)  #1479
	j	is_plane_outside.2884  #1479
	nop
be_else.9380:
	flw	%f0, 32(%x2)  #1481
	flw	%f2, 40(%x2)  #1481
	flw	%f4, 48(%x2)  #1481
	lw	%x5, 16(%x2)  #1481
	j	is_second_outside.2889  #1481
	nop
check_all_inside.2899:  #17512
	lw	%x7, 4(%x22)  #1486
	slli	%x9, %x5, 2  #1486
	lw	%x9, %x9(%x6)  #1486
	addi	%x24, %x0, -1
	beq	%x9, %x24, 12  #1487
	j	be_else.9381
	nop
	addi	%x5, %x0, 1  #0
	ret
	nop
be_else.9381:
	slli	%x9, %x9, 2  #1490
	lw	%x7, %x9(%x7)  #1490
	fsw	%f4, 0(%x2)  #1490
	fsw	%f2, 8(%x2)  #1490
	fsw	%f0, 16(%x2)  #1490
	sw	%x6, 24(%x2)  #1490
	sw	%x22, 28(%x2)  #1490
	sw	%x5, 32(%x2)  #1490
	mv	%x5, %x7
	sw	%x1, 36(%x2)  #1490
	addi	%x2, %x2, 40  #1490
	jal	%x1, is_outside.2894  #1490
	addi	%x2, %x2, -40  #1490
	lw	%x1, 36(%x2) #1490
	beq	%x5, %x0, 12  #1490
	j	be_else.9382
	nop
	lw	%x5, 32(%x2)  #1493
	addi	%x5, %x5, 1  #1493
	flw	%f0, 16(%x2)  #1493
	flw	%f2, 8(%x2)  #1493
	flw	%f4, 0(%x2)  #1493
	lw	%x6, 24(%x2)  #1493
	lw	%x22, 28(%x2)  #1493
	lw	0(%x23), %x22  #1493
	jalr	%x0, %x23, 0  #1493
	nop
be_else.9382:
	addi	%x5, %x0, 0  #0
	ret
	nop
shadow_check_and_group.2905:  #17668
	lw	%x7, 28(%x22)  #0
	lw	%x9, 24(%x22)  #0
	lw	%x10, 20(%x22)  #0
	lw	%x11, 16(%x22)  #0
	lw	%x12, 12(%x22)  #0
	lw	%x13, 8(%x22)  #0
	lw	%x14, 4(%x22)  #0
	slli	%x15, %x5, 2  #1506
	lw	%x15, %x15(%x6)  #1506
	addi	%x24, %x0, -1
	beq	%x15, %x24, 12  #1506
	j	be_else.9383
	nop
	addi	%x5, %x0, 0  #0
	ret
	nop
be_else.9383:
	slli	%x15, %x5, 2  #1509
	lw	%x15, %x15(%x6)  #1509
	sw	%x14, 0(%x2)  #1510
	sw	%x13, 4(%x2)  #1510
	sw	%x12, 8(%x2)  #1510
	sw	%x6, 12(%x2)  #1510
	sw	%x22, 16(%x2)  #1510
	sw	%x5, 20(%x2)  #1510
	sw	%x10, 24(%x2)  #1510
	sw	%x15, 28(%x2)  #1510
	sw	%x9, 32(%x2)  #1510
	mv	%x6, %x11
	mv	%x5, %x15
	mv	%x22, %x7
	mv	%x7, %x13
	sw	%x1, 36(%x2)  #1510
	lw	%x23, 0(%x22)  #1510
	addi	%x2, %x2, 40  #1510
	jalr	%x1, %x23, 0  #1510
	addi	%x2, %x2, -40  #1510
	lw	%x1, 36(%x2)  #1510
	lw	%x6, 32(%x2)  #1511
	flw	%f0, 0(%x6)  #1511
	fsw	%f0, 40(%x2)  #1512
	beq	%x5, %x0, 12  #1512
	j	be_else.9385
	nop
	addi	%x5, %x0, 0  #0
	j	be_cont.9386
	nop
be_else.9385:
	mv	%f2, l.6695  #0
	sw	%x1, 52(%x2)  #1512
	addi	%x2, %x2, 56  #1512
	jal	%x1, fless.2540  #1512
	addi	%x2, %x2, -56  #1512
	lw	%x1, 52(%x2) #1512
be_cont.9386:
	beq	%x5, %x0, 12  #1512
	j	be_else.9387
	nop
	lw	%x5, 28(%x2)  #1528
	slli	%x5, %x5, 2  #1528
	lw	%x6, 24(%x2)  #1528
	lw	%x5, %x5(%x6)  #1528
	sw	%x1, 52(%x2)  #1528
	addi	%x2, %x2, 56  #1528
	jal	%x1, o_isinvert.2688  #1528
	addi	%x2, %x2, -56  #1528
	lw	%x1, 52(%x2) #1528
	beq	%x5, %x0, 12  #1528
	j	be_else.9388
	nop
	addi	%x5, %x0, 0  #0
	ret
	nop
be_else.9388:
	lw	%x5, 20(%x2)  #1529
	addi	%x5, %x5, 1  #1529
	lw	%x6, 12(%x2)  #1529
	lw	%x22, 16(%x2)  #1529
	lw	0(%x23), %x22  #1529
	jalr	%x0, %x23, 0  #1529
	nop
be_else.9387:
	mv	%f0, l.6697  #0
	flw	%f2, 40(%x2)  #1515
	fadd	%f0, %f2, %f0  #1515
	lw	%x5, 8(%x2)  #1516
	flw	%f2, 0(%x5)  #1516
	fmul	%f2, %f2, %f0  #1516
	lw	%x6, 4(%x2)  #1516
	flw	%f4, 0(%x6)  #1516
	fadd	%f2, %f2, %f4  #1516
	flw	%f4, 8(%x5)  #1517
	fmul	%f4, %f4, %f0  #1517
	flw	%f6, 8(%x6)  #1517
	fadd	%f4, %f4, %f6  #1517
	flw	%f6, 16(%x5)  #1518
	fmul	%f0, %f6, %f0  #1518
	flw	%f6, 16(%x6)  #1518
	fadd	%f0, %f0, %f6  #1518
	addi	%x5, %x0, 0  #0
	lw	%x6, 12(%x2)  #1519
	lw	%x22, 0(%x2)  #1519
	mv	%f28, %f4
	mv	%f29, %f5
	mv	%f4, %f0
	mv	%f5, %f1
	mv	%f0, %f2
	mv	%f1, %f3
	mv	%f2, %f28
	mv	%f3, %f29
	sw	%x1, 52(%x2)  #1519
	lw	%x23, 0(%x22)  #1519
	addi	%x2, %x2, 56  #1519
	jalr	%x1, %x23, 0  #1519
	addi	%x2, %x2, -56  #1519
	lw	%x1, 52(%x2)  #1519
	beq	%x5, %x0, 12  #1519
	j	be_else.9389
	nop
	lw	%x5, 20(%x2)  #1522
	addi	%x5, %x5, 1  #1522
	lw	%x6, 12(%x2)  #1522
	lw	%x22, 16(%x2)  #1522
	lw	0(%x23), %x22  #1522
	jalr	%x0, %x23, 0  #1522
	nop
be_else.9389:
	addi	%x5, %x0, 1  #0
	ret
	nop
shadow_check_one_or_group.2908:  #18160
	lw	%x7, 8(%x22)  #1536
	lw	%x9, 4(%x22)  #1536
	slli	%x10, %x5, 2  #1536
	lw	%x10, %x10(%x6)  #1536
	addi	%x24, %x0, -1
	beq	%x10, %x24, 12  #1537
	j	be_else.9390
	nop
	addi	%x5, %x0, 0  #0
	ret
	nop
be_else.9390:
	slli	%x10, %x10, 2  #1540
	lw	%x9, %x10(%x9)  #1540
	addi	%x10, %x0, 0  #0
	sw	%x6, 0(%x2)  #1541
	sw	%x22, 4(%x2)  #1541
	sw	%x5, 8(%x2)  #1541
	mv	%x6, %x9
	mv	%x5, %x10
	mv	%x22, %x7
	sw	%x1, 12(%x2)  #1541
	lw	%x23, 0(%x22)  #1541
	addi	%x2, %x2, 16  #1541
	jalr	%x1, %x23, 0  #1541
	addi	%x2, %x2, -16  #1541
	lw	%x1, 12(%x2)  #1541
	beq	%x5, %x0, 12  #1542
	j	be_else.9391
	nop
	lw	%x5, 8(%x2)  #1545
	addi	%x5, %x5, 1  #1545
	lw	%x6, 0(%x2)  #1545
	lw	%x22, 4(%x2)  #1545
	lw	0(%x23), %x22  #1545
	jalr	%x0, %x23, 0  #1545
	nop
be_else.9391:
	addi	%x5, %x0, 1  #0
	ret
	nop
shadow_check_one_or_matrix.2911:  #18312
	lw	%x7, 20(%x22)  #1551
	lw	%x9, 16(%x22)  #1551
	lw	%x10, 12(%x22)  #1551
	lw	%x11, 8(%x22)  #1551
	lw	%x12, 4(%x22)  #1551
	slli	%x13, %x5, 2  #1551
	lw	%x13, %x13(%x6)  #1551
	lw	%x14, 0(%x13)  #1552
	addi	%x24, %x0, -1
	beq	%x14, %x24, 12  #1553
	j	be_else.9392
	nop
	addi	%x5, %x0, 0  #0
	ret
	nop
be_else.9392:
	sw	%x13, 0(%x2)  #1557
	sw	%x10, 4(%x2)  #1557
	sw	%x6, 8(%x2)  #1557
	sw	%x22, 12(%x2)  #1557
	sw	%x5, 16(%x2)  #1557
	addi	%x24, %x0, 99
	beq	%x14, %x24, 12  #1557
	j	be_else.9393
	nop
	addi	%x5, %x0, 1  #0
	j	be_cont.9394
	nop
be_else.9393:
	sw	%x9, 20(%x2)  #1560
	mv	%x6, %x11
	mv	%x5, %x14
	mv	%x22, %x7
	mv	%x7, %x12
	sw	%x1, 28(%x2)  #1560
	lw	%x23, 0(%x22)  #1560
	addi	%x2, %x2, 32  #1560
	jalr	%x1, %x23, 0  #1560
	addi	%x2, %x2, -32  #1560
	lw	%x1, 28(%x2)  #1560
	beq	%x5, %x0, 12  #1563
	j	be_else.9395
	nop
	addi	%x5, %x0, 0  #0
	j	be_cont.9396
	nop
be_else.9395:
	lw	%x5, 20(%x2)  #1564
	flw	%f0, 0(%x5)  #1564
	mv	%f2, l.6711  #0
	sw	%x1, 28(%x2)  #1564
	addi	%x2, %x2, 32  #1564
	jal	%x1, fless.2540  #1564
	addi	%x2, %x2, -32  #1564
	lw	%x1, 28(%x2) #1564
	beq	%x5, %x0, 12  #1564
	j	be_else.9397
	nop
	addi	%x5, %x0, 0  #0
	j	be_cont.9398
	nop
be_else.9397:
	addi	%x5, %x0, 1  #0
	lw	%x6, 0(%x2)  #1565
	lw	%x22, 4(%x2)  #1565
	sw	%x1, 28(%x2)  #1565
	lw	%x23, 0(%x22)  #1565
	addi	%x2, %x2, 32  #1565
	jalr	%x1, %x23, 0  #1565
	addi	%x2, %x2, -32  #1565
	lw	%x1, 28(%x2)  #1565
	beq	%x5, %x0, 12  #1565
	j	be_else.9399
	nop
	addi	%x5, %x0, 0  #0
	j	be_cont.9400
	nop
be_else.9399:
	addi	%x5, %x0, 1  #0
be_cont.9400:
be_cont.9398:
be_cont.9396:
be_cont.9394:
	beq	%x5, %x0, 12  #1556
	j	be_else.9401
	nop
	lw	%x5, 16(%x2)  #1576
	addi	%x5, %x5, 1  #1576
	lw	%x6, 8(%x2)  #1576
	lw	%x22, 12(%x2)  #1576
	lw	0(%x23), %x22  #1576
	jalr	%x0, %x23, 0  #1576
	nop
be_else.9401:
	addi	%x5, %x0, 1  #0
	lw	%x6, 0(%x2)  #1571
	lw	%x22, 4(%x2)  #1571
	sw	%x1, 28(%x2)  #1571
	lw	%x23, 0(%x22)  #1571
	addi	%x2, %x2, 32  #1571
	jalr	%x1, %x23, 0  #1571
	addi	%x2, %x2, -32  #1571
	lw	%x1, 28(%x2)  #1571
	beq	%x5, %x0, 12  #1571
	j	be_else.9402
	nop
	lw	%x5, 16(%x2)  #1574
	addi	%x5, %x5, 1  #1574
	lw	%x6, 8(%x2)  #1574
	lw	%x22, 12(%x2)  #1574
	lw	0(%x23), %x22  #1574
	jalr	%x0, %x23, 0  #1574
	nop
be_else.9402:
	addi	%x5, %x0, 1  #0
	ret
	nop
solve_each_element.2914:  #18728
	lw	%x9, 36(%x22)  #1587
	lw	%x10, 32(%x22)  #1587
	lw	%x11, 28(%x22)  #1587
	lw	%x12, 24(%x22)  #1587
	lw	%x13, 20(%x22)  #1587
	lw	%x14, 16(%x22)  #1587
	lw	%x15, 12(%x22)  #1587
	lw	%x16, 8(%x22)  #1587
	lw	%x17, 4(%x22)  #1587
	slli	%x18, %x5, 2  #1587
	lw	%x18, %x18(%x6)  #1587
	addi	%x24, %x0, -1
	beq	%x18, %x24, 12  #1588
	j	be_else.9403
	nop
	ret
	nop
be_else.9403:
	sw	%x14, 0(%x2)  #1590
	sw	%x16, 4(%x2)  #1590
	sw	%x15, 8(%x2)  #1590
	sw	%x17, 12(%x2)  #1590
	sw	%x10, 16(%x2)  #1590
	sw	%x9, 20(%x2)  #1590
	sw	%x11, 24(%x2)  #1590
	sw	%x7, 28(%x2)  #1590
	sw	%x6, 32(%x2)  #1590
	sw	%x22, 36(%x2)  #1590
	sw	%x5, 40(%x2)  #1590
	sw	%x13, 44(%x2)  #1590
	sw	%x18, 48(%x2)  #1590
	mv	%x6, %x7
	mv	%x5, %x18
	mv	%x22, %x12
	mv	%x7, %x10
	sw	%x1, 52(%x2)  #1590
	lw	%x23, 0(%x22)  #1590
	addi	%x2, %x2, 56  #1590
	jalr	%x1, %x23, 0  #1590
	addi	%x2, %x2, -56  #1590
	lw	%x1, 52(%x2)  #1590
	beq	%x5, %x0, 12  #1591
	j	be_else.9405
	nop
	lw	%x5, 48(%x2)  #1619
	slli	%x5, %x5, 2  #1619
	lw	%x6, 44(%x2)  #1619
	lw	%x5, %x5(%x6)  #1619
	sw	%x1, 52(%x2)  #1619
	addi	%x2, %x2, 56  #1619
	jal	%x1, o_isinvert.2688  #1619
	addi	%x2, %x2, -56  #1619
	lw	%x1, 52(%x2) #1619
	beq	%x5, %x0, 12  #1619
	j	be_else.9406
	nop
	ret
	nop
be_else.9406:
	lw	%x5, 40(%x2)  #1620
	addi	%x5, %x5, 1  #1620
	lw	%x6, 32(%x2)  #1620
	lw	%x7, 28(%x2)  #1620
	lw	%x22, 36(%x2)  #1620
	lw	0(%x23), %x22  #1620
	jalr	%x0, %x23, 0  #1620
	nop
be_else.9405:
	lw	%x6, 24(%x2)  #1595
	flw	%f2, 0(%x6)  #1595
	mv	%f0, l.6293  #0
	sw	%x5, 52(%x2)  #1597
	fsw	%f2, 56(%x2)  #1597
	sw	%x1, 68(%x2)  #1597
	addi	%x2, %x2, 72  #1597
	jal	%x1, fless.2540  #1597
	addi	%x2, %x2, -72  #1597
	lw	%x1, 68(%x2) #1597
	beq	%x5, %x0, 12  #1597
	j	be_else.9408
	nop
	j	be_cont.9409
	nop
be_else.9408:
	lw	%x5, 20(%x2)  #1598
	flw	%f2, 0(%x5)  #1598
	flw	%f0, 56(%x2)  #1598
	sw	%x1, 68(%x2)  #1598
	addi	%x2, %x2, 72  #1598
	jal	%x1, fless.2540  #1598
	addi	%x2, %x2, -72  #1598
	lw	%x1, 68(%x2) #1598
	beq	%x5, %x0, 12  #1598
	j	be_else.9410
	nop
	j	be_cont.9411
	nop
be_else.9410:
	mv	%f0, l.6697  #0
	flw	%f2, 56(%x2)  #1600
	fadd	%f0, %f2, %f0  #1600
	lw	%x5, 28(%x2)  #1601
	flw	%f2, 0(%x5)  #1601
	fmul	%f2, %f2, %f0  #1601
	lw	%x6, 16(%x2)  #1601
	flw	%f4, 0(%x6)  #1601
	fadd	%f2, %f2, %f4  #1601
	flw	%f4, 8(%x5)  #1602
	fmul	%f4, %f4, %f0  #1602
	flw	%f6, 8(%x6)  #1602
	fadd	%f4, %f4, %f6  #1602
	flw	%f6, 16(%x5)  #1603
	fmul	%f6, %f6, %f0  #1603
	flw	%f8, 16(%x6)  #1603
	fadd	%f6, %f6, %f8  #1603
	addi	%x6, %x0, 0  #0
	lw	%x7, 32(%x2)  #1604
	lw	%x22, 12(%x2)  #1604
	fsw	%f6, 64(%x2)  #1604
	fsw	%f4, 72(%x2)  #1604
	fsw	%f2, 80(%x2)  #1604
	fsw	%f0, 88(%x2)  #1604
	mv	%x5, %x6
	mv	%x6, %x7
	mv	%f0, %f2
	mv	%f1, %f3
	mv	%f2, %f4
	mv	%f3, %f5
	mv	%f4, %f6
	mv	%f5, %f7
	sw	%x1, 100(%x2)  #1604
	lw	%x23, 0(%x22)  #1604
	addi	%x2, %x2, 104  #1604
	jalr	%x1, %x23, 0  #1604
	addi	%x2, %x2, -104  #1604
	lw	%x1, 100(%x2)  #1604
	beq	%x5, %x0, 12  #1604
	j	be_else.9412
	nop
	j	be_cont.9413
	nop
be_else.9412:
	lw	%x5, 20(%x2)  #1606
	flw	%f0, 88(%x2)  #1606
	fsw	%f0, 0(%x5) #1606
	flw	%f0, 80(%x2)  #1607
	flw	%f2, 72(%x2)  #1607
	flw	%f4, 64(%x2)  #1607
	lw	%x5, 8(%x2)  #1607
	sw	%x1, 100(%x2)  #1607
	addi	%x2, %x2, 104  #1607
	jal	%x1, vecset.2644  #1607
	addi	%x2, %x2, -104  #1607
	lw	%x1, 100(%x2) #1607
	lw	%x5, 4(%x2)  #1608
	lw	%x6, 48(%x2)  #1608
	sw	%x6, 0(%x5)  #1608
	lw	%x5, 0(%x2)  #1609
	lw	%x6, 52(%x2)  #1609
	sw	%x6, 0(%x5)  #1609
be_cont.9413:
be_cont.9411:
be_cont.9409:
	lw	%x5, 40(%x2)  #1615
	addi	%x5, %x5, 1  #1615
	lw	%x6, 32(%x2)  #1615
	lw	%x7, 28(%x2)  #1615
	lw	%x22, 36(%x2)  #1615
	lw	0(%x23), %x22  #1615
	jalr	%x0, %x23, 0  #1615
	nop
solve_one_or_network.2918:  #19372
	lw	%x9, 8(%x22)  #1628
	lw	%x10, 4(%x22)  #1628
	slli	%x11, %x5, 2  #1628
	lw	%x11, %x11(%x6)  #1628
	addi	%x24, %x0, -1
	beq	%x11, %x24, 12  #1629
	j	be_else.9414
	nop
	ret
	nop
be_else.9414:
	slli	%x11, %x11, 2  #1630
	lw	%x10, %x11(%x10)  #1630
	addi	%x11, %x0, 0  #0
	sw	%x7, 0(%x2)  #1631
	sw	%x6, 4(%x2)  #1631
	sw	%x22, 8(%x2)  #1631
	sw	%x5, 12(%x2)  #1631
	mv	%x6, %x10
	mv	%x5, %x11
	mv	%x22, %x9
	sw	%x1, 20(%x2)  #1631
	lw	%x23, 0(%x22)  #1631
	addi	%x2, %x2, 24  #1631
	jalr	%x1, %x23, 0  #1631
	addi	%x2, %x2, -24  #1631
	lw	%x1, 20(%x2)  #1631
	lw	%x5, 12(%x2)  #1632
	addi	%x5, %x5, 1  #1632
	lw	%x6, 4(%x2)  #1632
	lw	%x7, 0(%x2)  #1632
	lw	%x22, 8(%x2)  #1632
	lw	0(%x23), %x22  #1632
	jalr	%x0, %x23, 0  #1632
	nop
trace_or_matrix.2922:  #19504
	lw	%x9, 20(%x22)  #1638
	lw	%x10, 16(%x22)  #1638
	lw	%x11, 12(%x22)  #1638
	lw	%x12, 8(%x22)  #1638
	lw	%x13, 4(%x22)  #1638
	slli	%x14, %x5, 2  #1638
	lw	%x14, %x14(%x6)  #1638
	lw	%x15, 0(%x14)  #1639
	addi	%x24, %x0, -1
	beq	%x15, %x24, 12  #1640
	j	be_else.9416
	nop
	ret
	nop
be_else.9416:
	sw	%x7, 0(%x2)  #1643
	sw	%x6, 4(%x2)  #1643
	sw	%x22, 8(%x2)  #1643
	sw	%x5, 12(%x2)  #1643
	addi	%x24, %x0, 99
	beq	%x15, %x24, 12  #1643
	j	be_else.9418
	nop
	addi	%x9, %x0, 1  #0
	mv	%x6, %x14
	mv	%x5, %x9
	mv	%x22, %x13
	sw	%x1, 20(%x2)  #1644
	lw	%x23, 0(%x22)  #1644
	addi	%x2, %x2, 24  #1644
	jalr	%x1, %x23, 0  #1644
	addi	%x2, %x2, -24  #1644
	lw	%x1, 20(%x2)  #1644
	j	be_cont.9419
	nop
be_else.9418:
	sw	%x14, 16(%x2)  #1648
	sw	%x13, 20(%x2)  #1648
	sw	%x9, 24(%x2)  #1648
	sw	%x11, 28(%x2)  #1648
	mv	%x6, %x7
	mv	%x5, %x15
	mv	%x22, %x12
	mv	%x7, %x10
	sw	%x1, 36(%x2)  #1648
	lw	%x23, 0(%x22)  #1648
	addi	%x2, %x2, 40  #1648
	jalr	%x1, %x23, 0  #1648
	addi	%x2, %x2, -40  #1648
	lw	%x1, 36(%x2)  #1648
	beq	%x5, %x0, 12  #1649
	j	be_else.9420
	nop
	j	be_cont.9421
	nop
be_else.9420:
	lw	%x5, 28(%x2)  #1650
	flw	%f0, 0(%x5)  #1650
	lw	%x5, 24(%x2)  #1651
	flw	%f2, 0(%x5)  #1651
	sw	%x1, 36(%x2)  #1651
	addi	%x2, %x2, 40  #1651
	jal	%x1, fless.2540  #1651
	addi	%x2, %x2, -40  #1651
	lw	%x1, 36(%x2) #1651
	beq	%x5, %x0, 12  #1651
	j	be_else.9422
	nop
	j	be_cont.9423
	nop
be_else.9422:
	addi	%x5, %x0, 1  #0
	lw	%x6, 16(%x2)  #1652
	lw	%x7, 0(%x2)  #1652
	lw	%x22, 20(%x2)  #1652
	sw	%x1, 36(%x2)  #1652
	lw	%x23, 0(%x22)  #1652
	addi	%x2, %x2, 40  #1652
	jalr	%x1, %x23, 0  #1652
	addi	%x2, %x2, -40  #1652
	lw	%x1, 36(%x2)  #1652
be_cont.9423:
be_cont.9421:
be_cont.9419:
	lw	%x5, 12(%x2)  #1656
	addi	%x5, %x5, 1  #1656
	lw	%x6, 4(%x2)  #1656
	lw	%x7, 0(%x2)  #1656
	lw	%x22, 8(%x2)  #1656
	lw	0(%x23), %x22  #1656
	jalr	%x0, %x23, 0  #1656
	nop
judge_intersection.2926:  #19836
	lw	%x6, 12(%x22)  #0
	lw	%x7, 8(%x22)  #0
	lw	%x9, 4(%x22)  #0
	mv	%f0, l.6734  #0
	fsw	%f0, 0(%x7) #1665
	addi	%x10, %x0, 0  #0
	lw	%x9, 0(%x9)  #1666
	sw	%x7, 0(%x2)  #1666
	mv	%x7, %x5
	mv	%x22, %x6
	mv	%x6, %x9
	mv	%x5, %x10
	sw	%x1, 4(%x2)  #1666
	lw	%x23, 0(%x22)  #1666
	addi	%x2, %x2, 8  #1666
	jalr	%x1, %x23, 0  #1666
	addi	%x2, %x2, -8  #1666
	lw	%x1, 4(%x2)  #1666
	lw	%x5, 0(%x2)  #1667
	flw	%f2, 0(%x5)  #1667
	mv	%f0, l.6711  #0
	fsw	%f2, 8(%x2)  #1669
	sw	%x1, 20(%x2)  #1669
	addi	%x2, %x2, 24  #1669
	jal	%x1, fless.2540  #1669
	addi	%x2, %x2, -24  #1669
	lw	%x1, 20(%x2) #1669
	beq	%x5, %x0, 12  #1669
	j	be_else.9425
	nop
	addi	%x5, %x0, 0  #0
	ret
	nop
be_else.9425:
	mv	%f2, l.6740  #0
	flw	%f0, 8(%x2)  #1670
	j	fless.2540  #1670
	nop
solve_each_element_fast.2928:  #19984
	lw	%x9, 36(%x22)  #1680
	lw	%x10, 32(%x22)  #1680
	lw	%x11, 28(%x22)  #1680
	lw	%x12, 24(%x22)  #1680
	lw	%x13, 20(%x22)  #1680
	lw	%x14, 16(%x22)  #1680
	lw	%x15, 12(%x22)  #1680
	lw	%x16, 8(%x22)  #1680
	lw	%x17, 4(%x22)  #1680
	sw	%x14, 0(%x2)  #1680
	sw	%x16, 4(%x2)  #1680
	sw	%x15, 8(%x2)  #1680
	sw	%x17, 12(%x2)  #1680
	sw	%x10, 16(%x2)  #1680
	sw	%x9, 20(%x2)  #1680
	sw	%x12, 24(%x2)  #1680
	sw	%x22, 28(%x2)  #1680
	sw	%x13, 32(%x2)  #1680
	sw	%x7, 36(%x2)  #1680
	sw	%x11, 40(%x2)  #1680
	sw	%x6, 44(%x2)  #1680
	sw	%x5, 48(%x2)  #1680
	mv	%x5, %x7
	sw	%x1, 52(%x2)  #1680
	addi	%x2, %x2, 56  #1680
	jal	%x1, d_vec.2743  #1680
	addi	%x2, %x2, -56  #1680
	lw	%x1, 52(%x2) #1680
	lw	%x6, 48(%x2)  #1681
	slli	%x7, %x6, 2  #1681
	lw	%x9, 44(%x2)  #1681
	lw	%x7, %x7(%x9)  #1681
	addi	%x24, %x0, -1
	beq	%x7, %x24, 12  #1682
	j	be_else.9426
	nop
	ret
	nop
be_else.9426:
	lw	%x10, 36(%x2)  #1684
	lw	%x22, 40(%x2)  #1684
	sw	%x5, 52(%x2)  #1684
	sw	%x7, 56(%x2)  #1684
	mv	%x6, %x10
	mv	%x5, %x7
	sw	%x1, 60(%x2)  #1684
	lw	%x23, 0(%x22)  #1684
	addi	%x2, %x2, 64  #1684
	jalr	%x1, %x23, 0  #1684
	addi	%x2, %x2, -64  #1684
	lw	%x1, 60(%x2)  #1684
	beq	%x5, %x0, 12  #1685
	j	be_else.9428
	nop
	lw	%x5, 56(%x2)  #1713
	slli	%x5, %x5, 2  #1713
	lw	%x6, 32(%x2)  #1713
	lw	%x5, %x5(%x6)  #1713
	sw	%x1, 60(%x2)  #1713
	addi	%x2, %x2, 64  #1713
	jal	%x1, o_isinvert.2688  #1713
	addi	%x2, %x2, -64  #1713
	lw	%x1, 60(%x2) #1713
	beq	%x5, %x0, 12  #1713
	j	be_else.9429
	nop
	ret
	nop
be_else.9429:
	lw	%x5, 48(%x2)  #1714
	addi	%x5, %x5, 1  #1714
	lw	%x6, 44(%x2)  #1714
	lw	%x7, 36(%x2)  #1714
	lw	%x22, 28(%x2)  #1714
	lw	0(%x23), %x22  #1714
	jalr	%x0, %x23, 0  #1714
	nop
be_else.9428:
	lw	%x6, 24(%x2)  #1689
	flw	%f2, 0(%x6)  #1689
	mv	%f0, l.6293  #0
	sw	%x5, 60(%x2)  #1691
	fsw	%f2, 64(%x2)  #1691
	sw	%x1, 76(%x2)  #1691
	addi	%x2, %x2, 80  #1691
	jal	%x1, fless.2540  #1691
	addi	%x2, %x2, -80  #1691
	lw	%x1, 76(%x2) #1691
	beq	%x5, %x0, 12  #1691
	j	be_else.9431
	nop
	j	be_cont.9432
	nop
be_else.9431:
	lw	%x5, 20(%x2)  #1692
	flw	%f2, 0(%x5)  #1692
	flw	%f0, 64(%x2)  #1692
	sw	%x1, 76(%x2)  #1692
	addi	%x2, %x2, 80  #1692
	jal	%x1, fless.2540  #1692
	addi	%x2, %x2, -80  #1692
	lw	%x1, 76(%x2) #1692
	beq	%x5, %x0, 12  #1692
	j	be_else.9433
	nop
	j	be_cont.9434
	nop
be_else.9433:
	mv	%f0, l.6697  #0
	flw	%f2, 64(%x2)  #1694
	fadd	%f0, %f2, %f0  #1694
	lw	%x5, 52(%x2)  #1695
	flw	%f2, 0(%x5)  #1695
	fmul	%f2, %f2, %f0  #1695
	lw	%x6, 16(%x2)  #1695
	flw	%f4, 0(%x6)  #1695
	fadd	%f2, %f2, %f4  #1695
	flw	%f4, 8(%x5)  #1696
	fmul	%f4, %f4, %f0  #1696
	flw	%f6, 8(%x6)  #1696
	fadd	%f4, %f4, %f6  #1696
	flw	%f6, 16(%x5)  #1697
	fmul	%f6, %f6, %f0  #1697
	flw	%f8, 16(%x6)  #1697
	fadd	%f6, %f6, %f8  #1697
	addi	%x5, %x0, 0  #0
	lw	%x6, 44(%x2)  #1698
	lw	%x22, 12(%x2)  #1698
	fsw	%f6, 72(%x2)  #1698
	fsw	%f4, 80(%x2)  #1698
	fsw	%f2, 88(%x2)  #1698
	fsw	%f0, 96(%x2)  #1698
	mv	%f0, %f2
	mv	%f1, %f3
	mv	%f2, %f4
	mv	%f3, %f5
	mv	%f4, %f6
	mv	%f5, %f7
	sw	%x1, 108(%x2)  #1698
	lw	%x23, 0(%x22)  #1698
	addi	%x2, %x2, 112  #1698
	jalr	%x1, %x23, 0  #1698
	addi	%x2, %x2, -112  #1698
	lw	%x1, 108(%x2)  #1698
	beq	%x5, %x0, 12  #1698
	j	be_else.9435
	nop
	j	be_cont.9436
	nop
be_else.9435:
	lw	%x5, 20(%x2)  #1700
	flw	%f0, 96(%x2)  #1700
	fsw	%f0, 0(%x5) #1700
	flw	%f0, 88(%x2)  #1701
	flw	%f2, 80(%x2)  #1701
	flw	%f4, 72(%x2)  #1701
	lw	%x5, 8(%x2)  #1701
	sw	%x1, 108(%x2)  #1701
	addi	%x2, %x2, 112  #1701
	jal	%x1, vecset.2644  #1701
	addi	%x2, %x2, -112  #1701
	lw	%x1, 108(%x2) #1701
	lw	%x5, 4(%x2)  #1702
	lw	%x6, 56(%x2)  #1702
	sw	%x6, 0(%x5)  #1702
	lw	%x5, 0(%x2)  #1703
	lw	%x6, 60(%x2)  #1703
	sw	%x6, 0(%x5)  #1703
be_cont.9436:
be_cont.9434:
be_cont.9432:
	lw	%x5, 48(%x2)  #1709
	addi	%x5, %x5, 1  #1709
	lw	%x6, 44(%x2)  #1709
	lw	%x7, 36(%x2)  #1709
	lw	%x22, 28(%x2)  #1709
	lw	0(%x23), %x22  #1709
	jalr	%x0, %x23, 0  #1709
	nop
solve_one_or_network_fast.2932:  #20660
	lw	%x9, 8(%x22)  #1721
	lw	%x10, 4(%x22)  #1721
	slli	%x11, %x5, 2  #1721
	lw	%x11, %x11(%x6)  #1721
	addi	%x24, %x0, -1
	beq	%x11, %x24, 12  #1722
	j	be_else.9437
	nop
	ret
	nop
be_else.9437:
	slli	%x11, %x11, 2  #1723
	lw	%x10, %x11(%x10)  #1723
	addi	%x11, %x0, 0  #0
	sw	%x7, 0(%x2)  #1724
	sw	%x6, 4(%x2)  #1724
	sw	%x22, 8(%x2)  #1724
	sw	%x5, 12(%x2)  #1724
	mv	%x6, %x10
	mv	%x5, %x11
	mv	%x22, %x9
	sw	%x1, 20(%x2)  #1724
	lw	%x23, 0(%x22)  #1724
	addi	%x2, %x2, 24  #1724
	jalr	%x1, %x23, 0  #1724
	addi	%x2, %x2, -24  #1724
	lw	%x1, 20(%x2)  #1724
	lw	%x5, 12(%x2)  #1725
	addi	%x5, %x5, 1  #1725
	lw	%x6, 4(%x2)  #1725
	lw	%x7, 0(%x2)  #1725
	lw	%x22, 8(%x2)  #1725
	lw	0(%x23), %x22  #1725
	jalr	%x0, %x23, 0  #1725
	nop
trace_or_matrix_fast.2936:  #20792
	lw	%x9, 16(%x22)  #1731
	lw	%x10, 12(%x22)  #1731
	lw	%x11, 8(%x22)  #1731
	lw	%x12, 4(%x22)  #1731
	slli	%x13, %x5, 2  #1731
	lw	%x13, %x13(%x6)  #1731
	lw	%x14, 0(%x13)  #1732
	addi	%x24, %x0, -1
	beq	%x14, %x24, 12  #1733
	j	be_else.9439
	nop
	ret
	nop
be_else.9439:
	sw	%x7, 0(%x2)  #1736
	sw	%x6, 4(%x2)  #1736
	sw	%x22, 8(%x2)  #1736
	sw	%x5, 12(%x2)  #1736
	addi	%x24, %x0, 99
	beq	%x14, %x24, 12  #1736
	j	be_else.9441
	nop
	addi	%x9, %x0, 1  #0
	mv	%x6, %x13
	mv	%x5, %x9
	mv	%x22, %x12
	sw	%x1, 20(%x2)  #1737
	lw	%x23, 0(%x22)  #1737
	addi	%x2, %x2, 24  #1737
	jalr	%x1, %x23, 0  #1737
	addi	%x2, %x2, -24  #1737
	lw	%x1, 20(%x2)  #1737
	j	be_cont.9442
	nop
be_else.9441:
	sw	%x13, 16(%x2)  #1741
	sw	%x12, 20(%x2)  #1741
	sw	%x9, 24(%x2)  #1741
	sw	%x11, 28(%x2)  #1741
	mv	%x6, %x7
	mv	%x5, %x14
	mv	%x22, %x10
	sw	%x1, 36(%x2)  #1741
	lw	%x23, 0(%x22)  #1741
	addi	%x2, %x2, 40  #1741
	jalr	%x1, %x23, 0  #1741
	addi	%x2, %x2, -40  #1741
	lw	%x1, 36(%x2)  #1741
	beq	%x5, %x0, 12  #1742
	j	be_else.9443
	nop
	j	be_cont.9444
	nop
be_else.9443:
	lw	%x5, 28(%x2)  #1743
	flw	%f0, 0(%x5)  #1743
	lw	%x5, 24(%x2)  #1744
	flw	%f2, 0(%x5)  #1744
	sw	%x1, 36(%x2)  #1744
	addi	%x2, %x2, 40  #1744
	jal	%x1, fless.2540  #1744
	addi	%x2, %x2, -40  #1744
	lw	%x1, 36(%x2) #1744
	beq	%x5, %x0, 12  #1744
	j	be_else.9445
	nop
	j	be_cont.9446
	nop
be_else.9445:
	addi	%x5, %x0, 1  #0
	lw	%x6, 16(%x2)  #1745
	lw	%x7, 0(%x2)  #1745
	lw	%x22, 20(%x2)  #1745
	sw	%x1, 36(%x2)  #1745
	lw	%x23, 0(%x22)  #1745
	addi	%x2, %x2, 40  #1745
	jalr	%x1, %x23, 0  #1745
	addi	%x2, %x2, -40  #1745
	lw	%x1, 36(%x2)  #1745
be_cont.9446:
be_cont.9444:
be_cont.9442:
	lw	%x5, 12(%x2)  #1749
	addi	%x5, %x5, 1  #1749
	lw	%x6, 4(%x2)  #1749
	lw	%x7, 0(%x2)  #1749
	lw	%x22, 8(%x2)  #1749
	lw	0(%x23), %x22  #1749
	jalr	%x0, %x23, 0  #1749
	nop
judge_intersection_fast.2940:  #21116
	lw	%x6, 12(%x22)  #0
	lw	%x7, 8(%x22)  #0
	lw	%x9, 4(%x22)  #0
	mv	%f0, l.6734  #0
	fsw	%f0, 0(%x7) #1756
	addi	%x10, %x0, 0  #0
	lw	%x9, 0(%x9)  #1757
	sw	%x7, 0(%x2)  #1757
	mv	%x7, %x5
	mv	%x22, %x6
	mv	%x6, %x9
	mv	%x5, %x10
	sw	%x1, 4(%x2)  #1757
	lw	%x23, 0(%x22)  #1757
	addi	%x2, %x2, 8  #1757
	jalr	%x1, %x23, 0  #1757
	addi	%x2, %x2, -8  #1757
	lw	%x1, 4(%x2)  #1757
	lw	%x5, 0(%x2)  #1758
	flw	%f2, 0(%x5)  #1758
	mv	%f0, l.6711  #0
	fsw	%f2, 8(%x2)  #1760
	sw	%x1, 20(%x2)  #1760
	addi	%x2, %x2, 24  #1760
	jal	%x1, fless.2540  #1760
	addi	%x2, %x2, -24  #1760
	lw	%x1, 20(%x2) #1760
	beq	%x5, %x0, 12  #1760
	j	be_else.9448
	nop
	addi	%x5, %x0, 0  #0
	ret
	nop
be_else.9448:
	mv	%f2, l.6740  #0
	flw	%f0, 8(%x2)  #1761
	j	fless.2540  #1761
	nop
get_nvector_rect.2942:  #21264
	lw	%x6, 8(%x22)  #0
	lw	%x7, 4(%x22)  #0
	lw	%x7, 0(%x7)  #1776
	sw	%x6, 0(%x2)  #1778
	sw	%x5, 4(%x2)  #1778
	sw	%x7, 8(%x2)  #1778
	mv	%x5, %x6
	sw	%x1, 12(%x2)  #1778
	addi	%x2, %x2, 16  #1778
	jal	%x1, vecbzero.2652  #1778
	addi	%x2, %x2, -16  #1778
	lw	%x1, 12(%x2) #1778
	lw	%x5, 8(%x2)  #1779
	addi	%x6, %x5, -1  #1779
	addi	%x5, %x5, -1  #1779
	slli	%x5, %x5, 3  #1779
	lw	%x7, 4(%x2)  #1779
	flw	%f0, %x5(%x7)  #1779
	sw	%x6, 12(%x2)  #1779
	sw	%x1, 20(%x2)  #1779
	addi	%x2, %x2, 24  #1779
	jal	%x1, sgn.2636  #1779
	addi	%x2, %x2, -24  #1779
	lw	%x1, 20(%x2) #1779
	sw	%x1, 20(%x2)  #1779
	addi	%x2, %x2, 24  #1779
	jal	%x1, fneg.2534  #1779
	addi	%x2, %x2, -24  #1779
	lw	%x1, 20(%x2) #1779
	lw	%x5, 12(%x2)  #1779
	slli	%x5, %x5, 3  #1779
	lw	%x6, 0(%x2)  #1779
	fsw	%f0, %x5(%x6) #1779
	ret
	nop
get_nvector_plane.2944:  #21404
	lw	%x6, 4(%x22)  #0
	sw	%x5, 0(%x2)  #1785
	sw	%x6, 4(%x2)  #1785
	sw	%x1, 12(%x2)  #1785
	addi	%x2, %x2, 16  #1785
	jal	%x1, o_param_a.2692  #1785
	addi	%x2, %x2, -16  #1785
	lw	%x1, 12(%x2) #1785
	sw	%x1, 12(%x2)  #1785
	addi	%x2, %x2, 16  #1785
	jal	%x1, fneg.2534  #1785
	addi	%x2, %x2, -16  #1785
	lw	%x1, 12(%x2) #1785
	lw	%x5, 4(%x2)  #1785
	fsw	%f0, 0(%x5) #1785
	lw	%x6, 0(%x2)  #1786
	mv	%x5, %x6
	sw	%x1, 12(%x2)  #1786
	addi	%x2, %x2, 16  #1786
	jal	%x1, o_param_b.2694  #1786
	addi	%x2, %x2, -16  #1786
	lw	%x1, 12(%x2) #1786
	sw	%x1, 12(%x2)  #1786
	addi	%x2, %x2, 16  #1786
	jal	%x1, fneg.2534  #1786
	addi	%x2, %x2, -16  #1786
	lw	%x1, 12(%x2) #1786
	lw	%x5, 4(%x2)  #1786
	fsw	%f0, 8(%x5) #1786
	lw	%x6, 0(%x2)  #1787
	mv	%x5, %x6
	sw	%x1, 12(%x2)  #1787
	addi	%x2, %x2, 16  #1787
	jal	%x1, o_param_c.2696  #1787
	addi	%x2, %x2, -16  #1787
	lw	%x1, 12(%x2) #1787
	sw	%x1, 12(%x2)  #1787
	addi	%x2, %x2, 16  #1787
	jal	%x1, fneg.2534  #1787
	addi	%x2, %x2, -16  #1787
	lw	%x1, 12(%x2) #1787
	lw	%x5, 4(%x2)  #1787
	fsw	%f0, 16(%x5) #1787
	ret
	nop
get_nvector_second.2946:  #21584
	lw	%x6, 8(%x22)  #0
	lw	%x7, 4(%x22)  #0
	flw	%f0, 0(%x7)  #1792
	sw	%x6, 0(%x2)  #1792
	sw	%x5, 4(%x2)  #1792
	sw	%x7, 8(%x2)  #1792
	fsw	%f0, 16(%x2)  #1792
	sw	%x1, 28(%x2)  #1792
	addi	%x2, %x2, 32  #1792
	jal	%x1, o_param_x.2700  #1792
	addi	%x2, %x2, -32  #1792
	lw	%x1, 28(%x2) #1792
	flw	%f2, 16(%x2)  #1792
	fsub	%f0, %f2, %f0  #1792
	lw	%x5, 8(%x2)  #1793
	flw	%f2, 8(%x5)  #1793
	lw	%x6, 4(%x2)  #1793
	fsw	%f0, 24(%x2)  #1793
	fsw	%f2, 32(%x2)  #1793
	mv	%x5, %x6
	sw	%x1, 44(%x2)  #1793
	addi	%x2, %x2, 48  #1793
	jal	%x1, o_param_y.2702  #1793
	addi	%x2, %x2, -48  #1793
	lw	%x1, 44(%x2) #1793
	flw	%f2, 32(%x2)  #1793
	fsub	%f0, %f2, %f0  #1793
	lw	%x5, 8(%x2)  #1794
	flw	%f2, 16(%x5)  #1794
	lw	%x5, 4(%x2)  #1794
	fsw	%f0, 40(%x2)  #1794
	fsw	%f2, 48(%x2)  #1794
	sw	%x1, 60(%x2)  #1794
	addi	%x2, %x2, 64  #1794
	jal	%x1, o_param_z.2704  #1794
	addi	%x2, %x2, -64  #1794
	lw	%x1, 60(%x2) #1794
	flw	%f2, 48(%x2)  #1794
	fsub	%f0, %f2, %f0  #1794
	lw	%x5, 4(%x2)  #1796
	fsw	%f0, 56(%x2)  #1796
	sw	%x1, 68(%x2)  #1796
	addi	%x2, %x2, 72  #1796
	jal	%x1, o_param_a.2692  #1796
	addi	%x2, %x2, -72  #1796
	lw	%x1, 68(%x2) #1796
	flw	%f2, 24(%x2)  #1796
	fmul	%f0, %f2, %f0  #1796
	lw	%x5, 4(%x2)  #1797
	fsw	%f0, 64(%x2)  #1797
	sw	%x1, 76(%x2)  #1797
	addi	%x2, %x2, 80  #1797
	jal	%x1, o_param_b.2694  #1797
	addi	%x2, %x2, -80  #1797
	lw	%x1, 76(%x2) #1797
	flw	%f2, 40(%x2)  #1797
	fmul	%f0, %f2, %f0  #1797
	lw	%x5, 4(%x2)  #1798
	fsw	%f0, 72(%x2)  #1798
	sw	%x1, 84(%x2)  #1798
	addi	%x2, %x2, 88  #1798
	jal	%x1, o_param_c.2696  #1798
	addi	%x2, %x2, -88  #1798
	lw	%x1, 84(%x2) #1798
	flw	%f2, 56(%x2)  #1798
	fmul	%f0, %f2, %f0  #1798
	lw	%x5, 4(%x2)  #1800
	fsw	%f0, 80(%x2)  #1800
	sw	%x1, 92(%x2)  #1800
	addi	%x2, %x2, 96  #1800
	jal	%x1, o_isrot.2690  #1800
	addi	%x2, %x2, -96  #1800
	lw	%x1, 92(%x2) #1800
	beq	%x5, %x0, 12  #1800
	j	be_else.9452
	nop
	lw	%x5, 0(%x2)  #1801
	flw	%f0, 64(%x2)  #1801
	fsw	%f0, 0(%x5) #1801
	flw	%f0, 72(%x2)  #1802
	fsw	%f0, 8(%x5) #1802
	flw	%f0, 80(%x2)  #1803
	fsw	%f0, 16(%x5) #1803
	j	be_cont.9453
	nop
be_else.9452:
	lw	%x5, 4(%x2)  #1805
	sw	%x1, 92(%x2)  #1805
	addi	%x2, %x2, 96  #1805
	jal	%x1, o_param_r3.2720  #1805
	addi	%x2, %x2, -96  #1805
	lw	%x1, 92(%x2) #1805
	flw	%f2, 40(%x2)  #1805
	fmul	%f0, %f2, %f0  #1805
	lw	%x5, 4(%x2)  #1805
	fsw	%f0, 88(%x2)  #1805
	sw	%x1, 100(%x2)  #1805
	addi	%x2, %x2, 104  #1805
	jal	%x1, o_param_r2.2718  #1805
	addi	%x2, %x2, -104  #1805
	lw	%x1, 100(%x2) #1805
	flw	%f2, 56(%x2)  #1805
	fmul	%f0, %f2, %f0  #1805
	flw	%f4, 88(%x2)  #1805
	fadd	%f0, %f4, %f0  #1805
	sw	%x1, 100(%x2)  #1805
	addi	%x2, %x2, 104  #1805
	jal	%x1, fhalf.2538  #1805
	addi	%x2, %x2, -104  #1805
	lw	%x1, 100(%x2) #1805
	flw	%f2, 64(%x2)  #1805
	fadd	%f0, %f2, %f0  #1805
	lw	%x5, 0(%x2)  #1805
	fsw	%f0, 0(%x5) #1805
	lw	%x6, 4(%x2)  #1806
	mv	%x5, %x6
	sw	%x1, 100(%x2)  #1806
	addi	%x2, %x2, 104  #1806
	jal	%x1, o_param_r3.2720  #1806
	addi	%x2, %x2, -104  #1806
	lw	%x1, 100(%x2) #1806
	flw	%f2, 24(%x2)  #1806
	fmul	%f0, %f2, %f0  #1806
	lw	%x5, 4(%x2)  #1806
	fsw	%f0, 96(%x2)  #1806
	sw	%x1, 108(%x2)  #1806
	addi	%x2, %x2, 112  #1806
	jal	%x1, o_param_r1.2716  #1806
	addi	%x2, %x2, -112  #1806
	lw	%x1, 108(%x2) #1806
	flw	%f2, 56(%x2)  #1806
	fmul	%f0, %f2, %f0  #1806
	flw	%f2, 96(%x2)  #1806
	fadd	%f0, %f2, %f0  #1806
	sw	%x1, 108(%x2)  #1806
	addi	%x2, %x2, 112  #1806
	jal	%x1, fhalf.2538  #1806
	addi	%x2, %x2, -112  #1806
	lw	%x1, 108(%x2) #1806
	flw	%f2, 72(%x2)  #1806
	fadd	%f0, %f2, %f0  #1806
	lw	%x5, 0(%x2)  #1806
	fsw	%f0, 8(%x5) #1806
	lw	%x6, 4(%x2)  #1807
	mv	%x5, %x6
	sw	%x1, 108(%x2)  #1807
	addi	%x2, %x2, 112  #1807
	jal	%x1, o_param_r2.2718  #1807
	addi	%x2, %x2, -112  #1807
	lw	%x1, 108(%x2) #1807
	flw	%f2, 24(%x2)  #1807
	fmul	%f0, %f2, %f0  #1807
	lw	%x5, 4(%x2)  #1807
	fsw	%f0, 104(%x2)  #1807
	sw	%x1, 116(%x2)  #1807
	addi	%x2, %x2, 120  #1807
	jal	%x1, o_param_r1.2716  #1807
	addi	%x2, %x2, -120  #1807
	lw	%x1, 116(%x2) #1807
	flw	%f2, 40(%x2)  #1807
	fmul	%f0, %f2, %f0  #1807
	flw	%f2, 104(%x2)  #1807
	fadd	%f0, %f2, %f0  #1807
	sw	%x1, 116(%x2)  #1807
	addi	%x2, %x2, 120  #1807
	jal	%x1, fhalf.2538  #1807
	addi	%x2, %x2, -120  #1807
	lw	%x1, 116(%x2) #1807
	flw	%f2, 80(%x2)  #1807
	fadd	%f0, %f2, %f0  #1807
	lw	%x5, 0(%x2)  #1807
	fsw	%f0, 16(%x5) #1807
be_cont.9453:
	lw	%x6, 4(%x2)  #1809
	mv	%x5, %x6
	sw	%x1, 116(%x2)  #1809
	addi	%x2, %x2, 120  #1809
	jal	%x1, o_isinvert.2688  #1809
	addi	%x2, %x2, -120  #1809
	lw	%x1, 116(%x2) #1809
	mv	%x6, %x5  #1809
	lw	%x5, 0(%x2)  #1809
	j	vecunit_sgn.2657  #1809
	nop
get_nvector.2948:  #22312
	lw	%x7, 12(%x22)  #1814
	lw	%x9, 8(%x22)  #1814
	lw	%x10, 4(%x22)  #1814
	sw	%x7, 0(%x2)  #1814
	sw	%x5, 4(%x2)  #1814
	sw	%x10, 8(%x2)  #1814
	sw	%x6, 12(%x2)  #1814
	sw	%x9, 16(%x2)  #1814
	sw	%x1, 20(%x2)  #1814
	addi	%x2, %x2, 24  #1814
	jal	%x1, o_form.2684  #1814
	addi	%x2, %x2, -24  #1814
	lw	%x1, 20(%x2) #1814
	addi	%x24, %x0, 1
	beq	%x5, %x24, 12  #1815
	j	be_else.9454
	nop
	lw	%x5, 12(%x2)  #1816
	lw	%x22, 16(%x2)  #1816
	lw	0(%x23), %x22  #1816
	jalr	%x0, %x23, 0  #1816
	nop
be_else.9454:
	addi	%x24, %x0, 2
	beq	%x5, %x24, 12  #1817
	j	be_else.9455
	nop
	lw	%x5, 4(%x2)  #1818
	lw	%x22, 8(%x2)  #1818
	lw	0(%x23), %x22  #1818
	jalr	%x0, %x23, 0  #1818
	nop
be_else.9455:
	lw	%x5, 4(%x2)  #1820
	lw	%x22, 0(%x2)  #1820
	lw	0(%x23), %x22  #1820
	jalr	%x0, %x23, 0  #1820
	nop
utexture.2951:  #22448
	lw	%x7, 4(%x22)  #1830
	sw	%x6, 0(%x2)  #1830
	sw	%x7, 4(%x2)  #1830
	sw	%x5, 8(%x2)  #1830
	sw	%x1, 12(%x2)  #1830
	addi	%x2, %x2, 16  #1830
	jal	%x1, o_texturetype.2682  #1830
	addi	%x2, %x2, -16  #1830
	lw	%x1, 12(%x2) #1830
	lw	%x6, 8(%x2)  #1832
	sw	%x5, 12(%x2)  #1832
	mv	%x5, %x6
	sw	%x1, 20(%x2)  #1832
	addi	%x2, %x2, 24  #1832
	jal	%x1, o_color_red.2710  #1832
	addi	%x2, %x2, -24  #1832
	lw	%x1, 20(%x2) #1832
	lw	%x5, 4(%x2)  #1832
	fsw	%f0, 0(%x5) #1832
	lw	%x6, 8(%x2)  #1833
	mv	%x5, %x6
	sw	%x1, 20(%x2)  #1833
	addi	%x2, %x2, 24  #1833
	jal	%x1, o_color_green.2712  #1833
	addi	%x2, %x2, -24  #1833
	lw	%x1, 20(%x2) #1833
	lw	%x5, 4(%x2)  #1833
	fsw	%f0, 8(%x5) #1833
	lw	%x6, 8(%x2)  #1834
	mv	%x5, %x6
	sw	%x1, 20(%x2)  #1834
	addi	%x2, %x2, 24  #1834
	jal	%x1, o_color_blue.2714  #1834
	addi	%x2, %x2, -24  #1834
	lw	%x1, 20(%x2) #1834
	lw	%x5, 4(%x2)  #1834
	fsw	%f0, 16(%x5) #1834
	lw	%x6, 12(%x2)  #1835
	addi	%x24, %x0, 1
	beq	%x6, %x24, 12  #1835
	j	be_else.9456
	nop
	lw	%x6, 0(%x2)  #1838
	flw	%f0, 0(%x6)  #1838
	lw	%x7, 8(%x2)  #1838
	fsw	%f0, 16(%x2)  #1838
	mv	%x5, %x7
	sw	%x1, 28(%x2)  #1838
	addi	%x2, %x2, 32  #1838
	jal	%x1, o_param_x.2700  #1838
	addi	%x2, %x2, -32  #1838
	lw	%x1, 28(%x2) #1838
	flw	%f2, 16(%x2)  #1838
	fsub	%f0, %f2, %f0  #1838
	mv	%f2, l.6830  #0
	fmul	%f2, %f0, %f2  #1840
	fsw	%f0, 24(%x2)  #1840
	mv	%f0, %f2
	mv	%f1, %f3
	sw	%x1, 36(%x2)  #1840
	addi	%x2, %x2, 40  #1840
	jal	%x1, floor.2549  #1840
	addi	%x2, %x2, -40  #1840
	lw	%x1, 36(%x2) #1840
	mv	%f2, l.6832  #0
	fmul	%f0, %f0, %f2  #1840
	flw	%f2, 24(%x2)  #1841
	fsub	%f0, %f2, %f0  #1841
	mv	%f2, l.6333  #0
	sw	%x1, 36(%x2)  #1841
	addi	%x2, %x2, 40  #1841
	jal	%x1, fless.2540  #1841
	addi	%x2, %x2, -40  #1841
	lw	%x1, 36(%x2) #1841
	lw	%x6, 0(%x2)  #1843
	flw	%f0, 16(%x6)  #1843
	lw	%x6, 8(%x2)  #1843
	sw	%x5, 32(%x2)  #1843
	fsw	%f0, 40(%x2)  #1843
	mv	%x5, %x6
	sw	%x1, 52(%x2)  #1843
	addi	%x2, %x2, 56  #1843
	jal	%x1, o_param_z.2704  #1843
	addi	%x2, %x2, -56  #1843
	lw	%x1, 52(%x2) #1843
	flw	%f2, 40(%x2)  #1843
	fsub	%f0, %f2, %f0  #1843
	mv	%f2, l.6830  #0
	fmul	%f2, %f0, %f2  #1845
	fsw	%f0, 48(%x2)  #1845
	mv	%f0, %f2
	mv	%f1, %f3
	sw	%x1, 60(%x2)  #1845
	addi	%x2, %x2, 64  #1845
	jal	%x1, floor.2549  #1845
	addi	%x2, %x2, -64  #1845
	lw	%x1, 60(%x2) #1845
	mv	%f2, l.6832  #0
	fmul	%f0, %f0, %f2  #1845
	flw	%f2, 48(%x2)  #1846
	fsub	%f0, %f2, %f0  #1846
	mv	%f2, l.6333  #0
	sw	%x1, 60(%x2)  #1846
	addi	%x2, %x2, 64  #1846
	jal	%x1, fless.2540  #1846
	addi	%x2, %x2, -64  #1846
	lw	%x1, 60(%x2) #1846
	lw	%x6, 32(%x2)  #1849
	beq	%x6, %x0, 12  #1849
	j	be_else.9458
	nop
	beq	%x5, %x0, 12  #1851
	j	be_else.9460
	nop
	mv	%f0, l.6807  #0
	j	be_cont.9461
	nop
be_else.9460:
	mv	%f0, l.6293  #0
be_cont.9461:
	j	be_cont.9459
	nop
be_else.9458:
	beq	%x5, %x0, 12  #1850
	j	be_else.9462
	nop
	mv	%f0, l.6293  #0
	j	be_cont.9463
	nop
be_else.9462:
	mv	%f0, l.6807  #0
be_cont.9463:
be_cont.9459:
	lw	%x5, 4(%x2)  #1848
	fsw	%f0, 8(%x5) #1848
	ret
	nop
be_else.9456:
	addi	%x24, %x0, 2
	beq	%x6, %x24, 12  #1853
	j	be_else.9465
	nop
	lw	%x6, 0(%x2)  #1856
	flw	%f0, 8(%x6)  #1856
	mv	%f2, l.6822  #0
	fmul	%f0, %f0, %f2  #1856
	sw	%x1, 60(%x2)  #1856
	addi	%x2, %x2, 64  #1856
	jal	%x1, sin.2543  #1856
	addi	%x2, %x2, -64  #1856
	lw	%x1, 60(%x2) #1856
	sw	%x1, 60(%x2)  #1856
	addi	%x2, %x2, 64  #1856
	jal	%x1, fsqr.2536  #1856
	addi	%x2, %x2, -64  #1856
	lw	%x1, 60(%x2) #1856
	mv	%f2, l.6807  #0
	fmul	%f2, %f2, %f0  #1857
	lw	%x5, 4(%x2)  #1857
	fsw	%f2, 0(%x5) #1857
	mv	%f2, l.6807  #0
	mv	%f4, l.6305  #0
	fsub	%f0, %f4, %f0  #1858
	fmul	%f0, %f2, %f0  #1858
	fsw	%f0, 8(%x5) #1858
	ret
	nop
be_else.9465:
	addi	%x24, %x0, 3
	beq	%x6, %x24, 12  #1860
	j	be_else.9467
	nop
	lw	%x6, 0(%x2)  #1863
	flw	%f0, 0(%x6)  #1863
	lw	%x7, 8(%x2)  #1863
	fsw	%f0, 56(%x2)  #1863
	mv	%x5, %x7
	sw	%x1, 68(%x2)  #1863
	addi	%x2, %x2, 72  #1863
	jal	%x1, o_param_x.2700  #1863
	addi	%x2, %x2, -72  #1863
	lw	%x1, 68(%x2) #1863
	flw	%f2, 56(%x2)  #1863
	fsub	%f0, %f2, %f0  #1863
	lw	%x5, 0(%x2)  #1864
	flw	%f2, 16(%x5)  #1864
	lw	%x5, 8(%x2)  #1864
	fsw	%f0, 64(%x2)  #1864
	fsw	%f2, 72(%x2)  #1864
	sw	%x1, 84(%x2)  #1864
	addi	%x2, %x2, 88  #1864
	jal	%x1, o_param_z.2704  #1864
	addi	%x2, %x2, -88  #1864
	lw	%x1, 84(%x2) #1864
	flw	%f2, 72(%x2)  #1864
	fsub	%f0, %f2, %f0  #1864
	flw	%f2, 64(%x2)  #1865
	fsw	%f0, 80(%x2)  #1865
	mv	%f0, %f2
	mv	%f1, %f3
	sw	%x1, 92(%x2)  #1865
	addi	%x2, %x2, 96  #1865
	jal	%x1, fsqr.2536  #1865
	addi	%x2, %x2, -96  #1865
	lw	%x1, 92(%x2) #1865
	flw	%f2, 80(%x2)  #1865
	fsw	%f0, 88(%x2)  #1865
	mv	%f0, %f2
	mv	%f1, %f3
	sw	%x1, 100(%x2)  #1865
	addi	%x2, %x2, 104  #1865
	jal	%x1, fsqr.2536  #1865
	addi	%x2, %x2, -104  #1865
	lw	%x1, 100(%x2) #1865
	flw	%f2, 88(%x2)  #1865
	fadd	%f0, %f2, %f0  #1865
	mv	%f2, l.6333  #0
	fdiv	%f0, %f0, %f2  #1865
	fsqrt	%f0, %f0  #1865
	fsw	%f0, 96(%x2)  #1866
	sw	%x1, 108(%x2)  #1866
	addi	%x2, %x2, 112  #1866
	jal	%x1, floor.2549  #1866
	addi	%x2, %x2, -112  #1866
	lw	%x1, 108(%x2) #1866
	flw	%f2, 96(%x2)  #1866
	fsub	%f0, %f2, %f0  #1866
	mv	%f2, l.6795  #0
	fmul	%f0, %f0, %f2  #1866
	sw	%x1, 108(%x2)  #1867
	addi	%x2, %x2, 112  #1867
	jal	%x1, cos.2545  #1867
	addi	%x2, %x2, -112  #1867
	lw	%x1, 108(%x2) #1867
	sw	%x1, 108(%x2)  #1867
	addi	%x2, %x2, 112  #1867
	jal	%x1, fsqr.2536  #1867
	addi	%x2, %x2, -112  #1867
	lw	%x1, 108(%x2) #1867
	mv	%f2, l.6807  #0
	fmul	%f2, %f0, %f2  #1868
	lw	%x5, 4(%x2)  #1868
	fsw	%f2, 8(%x5) #1868
	mv	%f2, l.6305  #0
	fsub	%f0, %f2, %f0  #1869
	mv	%f2, l.6807  #0
	fmul	%f0, %f0, %f2  #1869
	fsw	%f0, 16(%x5) #1869
	ret
	nop
be_else.9467:
	addi	%x24, %x0, 4
	beq	%x6, %x24, 12  #1871
	j	be_else.9469
	nop
	lw	%x6, 0(%x2)  #1873
	flw	%f0, 0(%x6)  #1873
	lw	%x7, 8(%x2)  #1873
	fsw	%f0, 104(%x2)  #1873
	mv	%x5, %x7
	sw	%x1, 116(%x2)  #1873
	addi	%x2, %x2, 120  #1873
	jal	%x1, o_param_x.2700  #1873
	addi	%x2, %x2, -120  #1873
	lw	%x1, 116(%x2) #1873
	flw	%f2, 104(%x2)  #1873
	fsub	%f0, %f2, %f0  #1873
	lw	%x5, 8(%x2)  #1873
	fsw	%f0, 112(%x2)  #1873
	sw	%x1, 124(%x2)  #1873
	addi	%x2, %x2, 128  #1873
	jal	%x1, o_param_a.2692  #1873
	addi	%x2, %x2, -128  #1873
	lw	%x1, 124(%x2) #1873
	fsqrt	%f0, %f0  #1873
	flw	%f2, 112(%x2)  #1873
	fmul	%f0, %f2, %f0  #1873
	lw	%x5, 0(%x2)  #1874
	flw	%f2, 16(%x5)  #1874
	lw	%x6, 8(%x2)  #1874
	fsw	%f0, 120(%x2)  #1874
	fsw	%f2, 128(%x2)  #1874
	mv	%x5, %x6
	sw	%x1, 140(%x2)  #1874
	addi	%x2, %x2, 144  #1874
	jal	%x1, o_param_z.2704  #1874
	addi	%x2, %x2, -144  #1874
	lw	%x1, 140(%x2) #1874
	flw	%f2, 128(%x2)  #1874
	fsub	%f0, %f2, %f0  #1874
	lw	%x5, 8(%x2)  #1874
	fsw	%f0, 136(%x2)  #1874
	sw	%x1, 148(%x2)  #1874
	addi	%x2, %x2, 152  #1874
	jal	%x1, o_param_c.2696  #1874
	addi	%x2, %x2, -152  #1874
	lw	%x1, 148(%x2) #1874
	fsqrt	%f0, %f0  #1874
	flw	%f2, 136(%x2)  #1874
	fmul	%f0, %f2, %f0  #1874
	flw	%f2, 120(%x2)  #1875
	fsw	%f0, 144(%x2)  #1875
	mv	%f0, %f2
	mv	%f1, %f3
	sw	%x1, 156(%x2)  #1875
	addi	%x2, %x2, 160  #1875
	jal	%x1, fsqr.2536  #1875
	addi	%x2, %x2, -160  #1875
	lw	%x1, 156(%x2) #1875
	flw	%f2, 144(%x2)  #1875
	fsw	%f0, 152(%x2)  #1875
	mv	%f0, %f2
	mv	%f1, %f3
	sw	%x1, 164(%x2)  #1875
	addi	%x2, %x2, 168  #1875
	jal	%x1, fsqr.2536  #1875
	addi	%x2, %x2, -168  #1875
	lw	%x1, 164(%x2) #1875
	flw	%f2, 152(%x2)  #1875
	fadd	%f0, %f2, %f0  #1875
	flw	%f2, 120(%x2)  #1877
	fabs	%f4, %f2  #1877
	mv	%f6, l.6789  #0
	fsw	%f0, 160(%x2)  #1877
	mv	%f2, %f6
	mv	%f3, %f7
	mv	%f0, %f4
	mv	%f1, %f5
	sw	%x1, 172(%x2)  #1877
	addi	%x2, %x2, 176  #1877
	jal	%x1, fless.2540  #1877
	addi	%x2, %x2, -176  #1877
	lw	%x1, 172(%x2) #1877
	beq	%x5, %x0, 12  #1877
	j	be_else.9470
	nop
	flw	%f0, 120(%x2)  #1880
	flw	%f2, 144(%x2)  #1880
	fdiv	%f0, %f2, %f0  #1880
	fabs	%f0, %f0  #1880
	sw	%x1, 172(%x2)  #1882
	addi	%x2, %x2, 176  #1882
	jal	%x1, atan.2547  #1882
	addi	%x2, %x2, -176  #1882
	lw	%x1, 172(%x2) #1882
	mv	%f2, l.6793  #0
	fmul	%f0, %f0, %f2  #1882
	mv	%f2, l.6795  #0
	fdiv	%f0, %f0, %f2  #1882
	j	be_cont.9471
	nop
be_else.9470:
	mv	%f0, l.6791  #0
be_cont.9471:
	fsw	%f0, 168(%x2)  #1884
	sw	%x1, 180(%x2)  #1884
	addi	%x2, %x2, 184  #1884
	jal	%x1, floor.2549  #1884
	addi	%x2, %x2, -184  #1884
	lw	%x1, 180(%x2) #1884
	flw	%f2, 168(%x2)  #1884
	fsub	%f0, %f2, %f0  #1884
	lw	%x5, 0(%x2)  #1886
	flw	%f2, 8(%x5)  #1886
	lw	%x5, 8(%x2)  #1886
	fsw	%f0, 176(%x2)  #1886
	fsw	%f2, 184(%x2)  #1886
	sw	%x1, 196(%x2)  #1886
	addi	%x2, %x2, 200  #1886
	jal	%x1, o_param_y.2702  #1886
	addi	%x2, %x2, -200  #1886
	lw	%x1, 196(%x2) #1886
	flw	%f2, 184(%x2)  #1886
	fsub	%f0, %f2, %f0  #1886
	lw	%x5, 8(%x2)  #1886
	fsw	%f0, 192(%x2)  #1886
	sw	%x1, 204(%x2)  #1886
	addi	%x2, %x2, 208  #1886
	jal	%x1, o_param_b.2694  #1886
	addi	%x2, %x2, -208  #1886
	lw	%x1, 204(%x2) #1886
	fsqrt	%f0, %f0  #1886
	flw	%f2, 192(%x2)  #1886
	fmul	%f0, %f2, %f0  #1886
	flw	%f2, 160(%x2)  #1888
	fabs	%f4, %f2  #1888
	mv	%f6, l.6789  #0
	fsw	%f0, 200(%x2)  #1888
	mv	%f2, %f6
	mv	%f3, %f7
	mv	%f0, %f4
	mv	%f1, %f5
	sw	%x1, 212(%x2)  #1888
	addi	%x2, %x2, 216  #1888
	jal	%x1, fless.2540  #1888
	addi	%x2, %x2, -216  #1888
	lw	%x1, 212(%x2) #1888
	beq	%x5, %x0, 12  #1888
	j	be_else.9472
	nop
	flw	%f0, 160(%x2)  #1891
	flw	%f2, 200(%x2)  #1891
	fdiv	%f0, %f2, %f0  #1891
	fabs	%f0, %f0  #1891
	sw	%x1, 212(%x2)  #1892
	addi	%x2, %x2, 216  #1892
	jal	%x1, atan.2547  #1892
	addi	%x2, %x2, -216  #1892
	lw	%x1, 212(%x2) #1892
	mv	%f2, l.6793  #0
	fmul	%f0, %f0, %f2  #1892
	mv	%f2, l.6795  #0
	fdiv	%f0, %f0, %f2  #1892
	j	be_cont.9473
	nop
be_else.9472:
	mv	%f0, l.6791  #0
be_cont.9473:
	fsw	%f0, 208(%x2)  #1894
	sw	%x1, 220(%x2)  #1894
	addi	%x2, %x2, 224  #1894
	jal	%x1, floor.2549  #1894
	addi	%x2, %x2, -224  #1894
	lw	%x1, 220(%x2) #1894
	flw	%f2, 208(%x2)  #1894
	fsub	%f0, %f2, %f0  #1894
	mv	%f2, l.6802  #0
	mv	%f4, l.6297  #0
	flw	%f6, 176(%x2)  #1895
	fsub	%f4, %f4, %f6  #1895
	fsw	%f0, 216(%x2)  #1895
	fsw	%f2, 224(%x2)  #1895
	mv	%f0, %f4
	mv	%f1, %f5
	sw	%x1, 236(%x2)  #1895
	addi	%x2, %x2, 240  #1895
	jal	%x1, fsqr.2536  #1895
	addi	%x2, %x2, -240  #1895
	lw	%x1, 236(%x2) #1895
	flw	%f2, 224(%x2)  #1895
	fsub	%f0, %f2, %f0  #1895
	mv	%f2, l.6297  #0
	flw	%f4, 216(%x2)  #1895
	fsub	%f2, %f2, %f4  #1895
	fsw	%f0, 232(%x2)  #1895
	mv	%f0, %f2
	mv	%f1, %f3
	sw	%x1, 244(%x2)  #1895
	addi	%x2, %x2, 248  #1895
	jal	%x1, fsqr.2536  #1895
	addi	%x2, %x2, -248  #1895
	lw	%x1, 244(%x2) #1895
	flw	%f2, 232(%x2)  #1895
	fsub	%f0, %f2, %f0  #1895
	fsw	%f0, 240(%x2)  #1896
	sw	%x1, 252(%x2)  #1896
	addi	%x2, %x2, 256  #1896
	jal	%x1, fisneg.2532  #1896
	addi	%x2, %x2, -256  #1896
	lw	%x1, 252(%x2) #1896
	beq	%x5, %x0, 12  #1896
	j	be_else.9474
	nop
	flw	%f0, 240(%x2)  #1896
	j	be_cont.9475
	nop
be_else.9474:
	mv	%f0, l.6293  #0
be_cont.9475:
	mv	%f2, l.6807  #0
	fmul	%f0, %f2, %f0  #1897
	mv	%f2, l.6809  #0
	fdiv	%f0, %f0, %f2  #1897
	lw	%x5, 4(%x2)  #1897
	fsw	%f0, 16(%x5) #1897
	ret
	nop
be_else.9469:
	ret
	nop
add_light.2954:  #24288
	lw	%x5, 8(%x22)  #0
	lw	%x6, 4(%x22)  #0
	fsw	%f4, 0(%x2)  #1910
	fsw	%f2, 8(%x2)  #1910
	fsw	%f0, 16(%x2)  #1910
	sw	%x5, 24(%x2)  #1910
	sw	%x6, 28(%x2)  #1910
	sw	%x1, 36(%x2)  #1910
	addi	%x2, %x2, 40  #1910
	jal	%x1, fispos.2530  #1910
	addi	%x2, %x2, -40  #1910
	lw	%x1, 36(%x2) #1910
	beq	%x5, %x0, 12  #1910
	j	be_else.9478
	nop
	j	be_cont.9479
	nop
be_else.9478:
	flw	%f0, 16(%x2)  #1911
	lw	%x5, 28(%x2)  #1911
	lw	%x6, 24(%x2)  #1911
	sw	%x1, 36(%x2)  #1911
	addi	%x2, %x2, 40  #1911
	jal	%x1, vecaccum.2668  #1911
	addi	%x2, %x2, -40  #1911
	lw	%x1, 36(%x2) #1911
be_cont.9479:
	flw	%f0, 8(%x2)  #1915
	sw	%x1, 36(%x2)  #1915
	addi	%x2, %x2, 40  #1915
	jal	%x1, fispos.2530  #1915
	addi	%x2, %x2, -40  #1915
	lw	%x1, 36(%x2) #1915
	beq	%x5, %x0, 12  #1915
	j	be_else.9480
	nop
	ret
	nop
be_else.9480:
	flw	%f0, 8(%x2)  #1916
	sw	%x1, 36(%x2)  #1916
	addi	%x2, %x2, 40  #1916
	jal	%x1, fsqr.2536  #1916
	addi	%x2, %x2, -40  #1916
	lw	%x1, 36(%x2) #1916
	sw	%x1, 36(%x2)  #1916
	addi	%x2, %x2, 40  #1916
	jal	%x1, fsqr.2536  #1916
	addi	%x2, %x2, -40  #1916
	lw	%x1, 36(%x2) #1916
	flw	%f2, 0(%x2)  #1916
	fmul	%f0, %f0, %f2  #1916
	lw	%x5, 28(%x2)  #1917
	flw	%f2, 0(%x5)  #1917
	fadd	%f2, %f2, %f0  #1917
	fsw	%f2, 0(%x5) #1917
	flw	%f2, 8(%x5)  #1918
	fadd	%f2, %f2, %f0  #1918
	fsw	%f2, 8(%x5) #1918
	flw	%f2, 16(%x5)  #1919
	fadd	%f0, %f2, %f0  #1919
	fsw	%f0, 16(%x5) #1919
	ret
	nop
trace_reflections.2958:  #24532
	lw	%x7, 32(%x22)  #0
	lw	%x9, 28(%x22)  #0
	lw	%x10, 24(%x22)  #0
	lw	%x11, 20(%x22)  #0
	lw	%x12, 16(%x22)  #0
	lw	%x13, 12(%x22)  #0
	lw	%x14, 8(%x22)  #0
	lw	%x15, 4(%x22)  #0
	bge	%x5, %x0, 12  #1926
	j	bge_else.9483
	nop
	slli	%x16, %x5, 2  #1927
	lw	%x9, %x16(%x9)  #1927
	sw	%x22, 0(%x2)  #1928
	sw	%x5, 4(%x2)  #1928
	fsw	%f2, 8(%x2)  #1928
	sw	%x15, 16(%x2)  #1928
	sw	%x6, 20(%x2)  #1928
	fsw	%f0, 24(%x2)  #1928
	sw	%x11, 32(%x2)  #1928
	sw	%x7, 36(%x2)  #1928
	sw	%x10, 40(%x2)  #1928
	sw	%x9, 44(%x2)  #1928
	sw	%x13, 48(%x2)  #1928
	sw	%x14, 52(%x2)  #1928
	sw	%x12, 56(%x2)  #1928
	mv	%x5, %x9
	sw	%x1, 60(%x2)  #1928
	addi	%x2, %x2, 64  #1928
	jal	%x1, r_dvec.2749  #1928
	addi	%x2, %x2, -64  #1928
	lw	%x1, 60(%x2) #1928
	lw	%x22, 56(%x2)  #1931
	sw	%x5, 60(%x2)  #1931
	sw	%x1, 68(%x2)  #1931
	lw	%x23, 0(%x22)  #1931
	addi	%x2, %x2, 72  #1931
	jalr	%x1, %x23, 0  #1931
	addi	%x2, %x2, -72  #1931
	lw	%x1, 68(%x2)  #1931
	beq	%x5, %x0, 12  #1931
	j	be_else.9484
	nop
	j	be_cont.9485
	nop
be_else.9484:
	lw	%x5, 52(%x2)  #1932
	lw	%x5, 0(%x5)  #1932
	addi	%x6, %x0, 4  #0
	sw	%x1, 68(%x2)  #1932
	addi	%x2, %x2, 72  #1932
	jal	%x1, mul.2562  #1932
	addi	%x2, %x2, -72  #1932
	lw	%x1, 68(%x2) #1932
	lw	%x6, 48(%x2)  #1932
	lw	%x6, 0(%x6)  #1932
	add	%x5, %x5, %x6  #1932
	lw	%x6, 44(%x2)  #1933
	sw	%x5, 64(%x2)  #1933
	mv	%x5, %x6
	sw	%x1, 68(%x2)  #1933
	addi	%x2, %x2, 72  #1933
	jal	%x1, r_surface_id.2747  #1933
	addi	%x2, %x2, -72  #1933
	lw	%x1, 68(%x2) #1933
	lw	%x6, 64(%x2)  #1933
	beq	%x6, %x5, 12  #1933
	j	be_else.9486
	nop
	addi	%x5, %x0, 0  #0
	lw	%x6, 40(%x2)  #1935
	lw	%x6, 0(%x6)  #1935
	lw	%x22, 36(%x2)  #1935
	sw	%x1, 68(%x2)  #1935
	lw	%x23, 0(%x22)  #1935
	addi	%x2, %x2, 72  #1935
	jalr	%x1, %x23, 0  #1935
	addi	%x2, %x2, -72  #1935
	lw	%x1, 68(%x2)  #1935
	beq	%x5, %x0, 12  #1935
	j	be_else.9488
	nop
	lw	%x5, 60(%x2)  #1937
	sw	%x1, 68(%x2)  #1937
	addi	%x2, %x2, 72  #1937
	jal	%x1, d_vec.2743  #1937
	addi	%x2, %x2, -72  #1937
	lw	%x1, 68(%x2) #1937
	mv	%x6, %x5  #1937
	lw	%x5, 32(%x2)  #1937
	sw	%x1, 68(%x2)  #1937
	addi	%x2, %x2, 72  #1937
	jal	%x1, veciprod.2660  #1937
	addi	%x2, %x2, -72  #1937
	lw	%x1, 68(%x2) #1937
	lw	%x5, 44(%x2)  #1938
	fsw	%f0, 72(%x2)  #1938
	sw	%x1, 84(%x2)  #1938
	addi	%x2, %x2, 88  #1938
	jal	%x1, r_bright.2751  #1938
	addi	%x2, %x2, -88  #1938
	lw	%x1, 84(%x2) #1938
	flw	%f2, 24(%x2)  #1939
	fmul	%f4, %f0, %f2  #1939
	flw	%f6, 72(%x2)  #1939
	fmul	%f4, %f4, %f6  #1939
	lw	%x5, 60(%x2)  #1940
	fsw	%f4, 80(%x2)  #1940
	fsw	%f0, 88(%x2)  #1940
	sw	%x1, 100(%x2)  #1940
	addi	%x2, %x2, 104  #1940
	jal	%x1, d_vec.2743  #1940
	addi	%x2, %x2, -104  #1940
	lw	%x1, 100(%x2) #1940
	mv	%x6, %x5  #1940
	lw	%x5, 20(%x2)  #1940
	sw	%x1, 100(%x2)  #1940
	addi	%x2, %x2, 104  #1940
	jal	%x1, veciprod.2660  #1940
	addi	%x2, %x2, -104  #1940
	lw	%x1, 100(%x2) #1940
	flw	%f2, 88(%x2)  #1940
	fmul	%f2, %f2, %f0  #1940
	flw	%f0, 80(%x2)  #1941
	flw	%f4, 8(%x2)  #1941
	lw	%x22, 16(%x2)  #1941
	sw	%x1, 100(%x2)  #1941
	lw	%x23, 0(%x22)  #1941
	addi	%x2, %x2, 104  #1941
	jalr	%x1, %x23, 0  #1941
	addi	%x2, %x2, -104  #1941
	lw	%x1, 100(%x2)  #1941
	j	be_cont.9489
	nop
be_else.9488:
be_cont.9489:
	j	be_cont.9487
	nop
be_else.9486:
be_cont.9487:
be_cont.9485:
	lw	%x5, 4(%x2)  #1945
	addi	%x5, %x5, -1  #1945
	flw	%f0, 24(%x2)  #1945
	flw	%f2, 8(%x2)  #1945
	lw	%x6, 20(%x2)  #1945
	lw	%x22, 0(%x2)  #1945
	lw	0(%x23), %x22  #1945
	jalr	%x0, %x23, 0  #1945
	nop
bge_else.9483:
	ret
	nop
trace_ray.2963:  #25116
	lw	%x9, 80(%x22)  #0
	lw	%x10, 76(%x22)  #0
	lw	%x11, 72(%x22)  #0
	lw	%x12, 68(%x22)  #0
	lw	%x13, 64(%x22)  #0
	lw	%x14, 60(%x22)  #0
	lw	%x15, 56(%x22)  #0
	lw	%x16, 52(%x22)  #0
	lw	%x17, 48(%x22)  #0
	lw	%x18, 44(%x22)  #0
	lw	%x19, 40(%x22)  #0
	lw	%x20, 36(%x22)  #0
	lw	%x21, 32(%x22)  #0
	lw	%x23, 28(%x22)  #0
	sw	%x11, 0(%x2)  #0
	lw	%x11, 24(%x22)  #0
	sw	%x10, 4(%x2)  #0
	lw	%x10, 20(%x22)  #0
	sw	%x20, 8(%x2)  #0
	lw	%x20, 16(%x22)  #0
	sw	%x15, 12(%x2)  #0
	lw	%x15, 12(%x22)  #0
	sw	%x14, 16(%x2)  #0
	lw	%x14, 8(%x22)  #0
	sw	%x22, 20(%x2)  #0
	lw	%x22, 4(%x22)  #0
	addi	%x24, %x0, 4
	bge	%x24, %x5, 12  #1954
	j	ble_else.9492
	nop
	fsw	%f2, 24(%x2)  #1955
	sw	%x22, 32(%x2)  #1955
	sw	%x17, 36(%x2)  #1955
	sw	%x19, 40(%x2)  #1955
	sw	%x12, 44(%x2)  #1955
	sw	%x7, 48(%x2)  #1955
	sw	%x11, 52(%x2)  #1955
	sw	%x9, 56(%x2)  #1955
	sw	%x10, 60(%x2)  #1955
	sw	%x13, 64(%x2)  #1955
	sw	%x15, 68(%x2)  #1955
	sw	%x18, 72(%x2)  #1955
	sw	%x20, 76(%x2)  #1955
	sw	%x16, 80(%x2)  #1955
	sw	%x14, 84(%x2)  #1955
	fsw	%f0, 88(%x2)  #1955
	sw	%x21, 96(%x2)  #1955
	sw	%x5, 100(%x2)  #1955
	sw	%x6, 104(%x2)  #1955
	sw	%x23, 108(%x2)  #1955
	mv	%x5, %x7
	sw	%x1, 116(%x2)  #1955
	addi	%x2, %x2, 120  #1955
	jal	%x1, p_surface_ids.2728  #1955
	addi	%x2, %x2, -120  #1955
	lw	%x1, 116(%x2) #1955
	lw	%x6, 104(%x2)  #1956
	lw	%x22, 108(%x2)  #1956
	sw	%x5, 112(%x2)  #1956
	mv	%x5, %x6
	sw	%x1, 116(%x2)  #1956
	lw	%x23, 0(%x22)  #1956
	addi	%x2, %x2, 120  #1956
	jalr	%x1, %x23, 0  #1956
	addi	%x2, %x2, -120  #1956
	lw	%x1, 116(%x2)  #1956
	beq	%x5, %x0, 12  #1956
	j	be_else.9493
	nop
	addi	%x5, %x0, -1  #0
	lw	%x6, 100(%x2)  #2019
	slli	%x7, %x6, 2  #2019
	lw	%x9, 112(%x2)  #2019
	sw	%x5, %x7(%x9)  #2019
	beq	%x6, %x0, 12  #2021
	j	be_else.9494
	nop
	ret
	nop
be_else.9494:
	lw	%x5, 104(%x2)  #2022
	lw	%x6, 96(%x2)  #2022
	sw	%x1, 116(%x2)  #2022
	addi	%x2, %x2, 120  #2022
	jal	%x1, veciprod.2660  #2022
	addi	%x2, %x2, -120  #2022
	lw	%x1, 116(%x2) #2022
	sw	%x1, 116(%x2)  #2022
	addi	%x2, %x2, 120  #2022
	jal	%x1, fneg.2534  #2022
	addi	%x2, %x2, -120  #2022
	lw	%x1, 116(%x2) #2022
	fsw	%f0, 120(%x2)  #2024
	sw	%x1, 132(%x2)  #2024
	addi	%x2, %x2, 136  #2024
	jal	%x1, fispos.2530  #2024
	addi	%x2, %x2, -136  #2024
	lw	%x1, 132(%x2) #2024
	beq	%x5, %x0, 12  #2024
	j	be_else.9497
	nop
	ret
	nop
be_else.9497:
	flw	%f0, 120(%x2)  #2027
	sw	%x1, 132(%x2)  #2027
	addi	%x2, %x2, 136  #2027
	jal	%x1, fsqr.2536  #2027
	addi	%x2, %x2, -136  #2027
	lw	%x1, 132(%x2) #2027
	flw	%f2, 120(%x2)  #2027
	fmul	%f0, %f0, %f2  #2027
	flw	%f2, 88(%x2)  #2027
	fmul	%f0, %f0, %f2  #2027
	lw	%x5, 84(%x2)  #2027
	flw	%f2, 0(%x5)  #2027
	fmul	%f0, %f0, %f2  #2027
	lw	%x5, 80(%x2)  #2028
	flw	%f2, 0(%x5)  #2028
	fadd	%f2, %f2, %f0  #2028
	fsw	%f2, 0(%x5) #2028
	flw	%f2, 8(%x5)  #2029
	fadd	%f2, %f2, %f0  #2029
	fsw	%f2, 8(%x5) #2029
	flw	%f2, 16(%x5)  #2030
	fadd	%f0, %f2, %f0  #2030
	fsw	%f0, 16(%x5) #2030
	ret
	nop
be_else.9493:
	lw	%x5, 76(%x2)  #1958
	lw	%x5, 0(%x5)  #1958
	slli	%x6, %x5, 2  #1959
	lw	%x7, 72(%x2)  #1959
	lw	%x6, %x6(%x7)  #1959
	sw	%x5, 128(%x2)  #1960
	sw	%x6, 132(%x2)  #1960
	mv	%x5, %x6
	sw	%x1, 140(%x2)  #1960
	addi	%x2, %x2, 144  #1960
	jal	%x1, o_reflectiontype.2686  #1960
	addi	%x2, %x2, -144  #1960
	lw	%x1, 140(%x2) #1960
	lw	%x6, 132(%x2)  #1961
	sw	%x5, 136(%x2)  #1961
	mv	%x5, %x6
	sw	%x1, 140(%x2)  #1961
	addi	%x2, %x2, 144  #1961
	jal	%x1, o_diffuse.2706  #1961
	addi	%x2, %x2, -144  #1961
	lw	%x1, 140(%x2) #1961
	flw	%f2, 88(%x2)  #1961
	fmul	%f0, %f0, %f2  #1961
	lw	%x5, 132(%x2)  #1963
	lw	%x6, 104(%x2)  #1963
	lw	%x22, 68(%x2)  #1963
	fsw	%f0, 144(%x2)  #1963
	sw	%x1, 156(%x2)  #1963
	lw	%x23, 0(%x22)  #1963
	addi	%x2, %x2, 160  #1963
	jalr	%x1, %x23, 0  #1963
	addi	%x2, %x2, -160  #1963
	lw	%x1, 156(%x2)  #1963
	lw	%x5, 64(%x2)  #1964
	lw	%x6, 60(%x2)  #1964
	sw	%x1, 156(%x2)  #1964
	addi	%x2, %x2, 160  #1964
	jal	%x1, veccpy.2654  #1964
	addi	%x2, %x2, -160  #1964
	lw	%x1, 156(%x2) #1964
	lw	%x5, 132(%x2)  #1965
	lw	%x6, 60(%x2)  #1965
	lw	%x22, 56(%x2)  #1965
	sw	%x1, 156(%x2)  #1965
	lw	%x23, 0(%x22)  #1965
	addi	%x2, %x2, 160  #1965
	jalr	%x1, %x23, 0  #1965
	addi	%x2, %x2, -160  #1965
	lw	%x1, 156(%x2)  #1965
	addi	%x6, %x0, 4  #0
	lw	%x5, 128(%x2)  #1968
	sw	%x1, 156(%x2)  #1968
	addi	%x2, %x2, 160  #1968
	jal	%x1, mul.2562  #1968
	addi	%x2, %x2, -160  #1968
	lw	%x1, 156(%x2) #1968
	lw	%x6, 52(%x2)  #1968
	lw	%x6, 0(%x6)  #1968
	add	%x5, %x5, %x6  #1968
	lw	%x6, 100(%x2)  #1968
	slli	%x7, %x6, 2  #1968
	lw	%x9, 112(%x2)  #1968
	sw	%x5, %x7(%x9)  #1968
	lw	%x5, 48(%x2)  #1969
	sw	%x1, 156(%x2)  #1969
	addi	%x2, %x2, 160  #1969
	jal	%x1, p_intersection_points.2726  #1969
	addi	%x2, %x2, -160  #1969
	lw	%x1, 156(%x2) #1969
	lw	%x6, 100(%x2)  #1970
	slli	%x7, %x6, 2  #1970
	lw	%x5, %x7(%x5)  #1970
	lw	%x7, 60(%x2)  #1970
	mv	%x6, %x7
	sw	%x1, 156(%x2)  #1970
	addi	%x2, %x2, 160  #1970
	jal	%x1, veccpy.2654  #1970
	addi	%x2, %x2, -160  #1970
	lw	%x1, 156(%x2) #1970
	lw	%x5, 48(%x2)  #1973
	sw	%x1, 156(%x2)  #1973
	addi	%x2, %x2, 160  #1973
	jal	%x1, p_calc_diffuse.2730  #1973
	addi	%x2, %x2, -160  #1973
	lw	%x1, 156(%x2) #1973
	lw	%x6, 132(%x2)  #1974
	sw	%x5, 152(%x2)  #1974
	mv	%x5, %x6
	sw	%x1, 156(%x2)  #1974
	addi	%x2, %x2, 160  #1974
	jal	%x1, o_diffuse.2706  #1974
	addi	%x2, %x2, -160  #1974
	lw	%x1, 156(%x2) #1974
	mv	%f2, l.6297  #0
	sw	%x1, 156(%x2)  #1974
	addi	%x2, %x2, 160  #1974
	jal	%x1, fless.2540  #1974
	addi	%x2, %x2, -160  #1974
	lw	%x1, 156(%x2) #1974
	beq	%x5, %x0, 12  #1974
	j	be_else.9501
	nop
	addi	%x5, %x0, 1  #0
	lw	%x6, 100(%x2)  #1977
	slli	%x7, %x6, 2  #1977
	lw	%x9, 152(%x2)  #1977
	sw	%x5, %x7(%x9)  #1977
	lw	%x5, 48(%x2)  #1978
	sw	%x1, 156(%x2)  #1978
	addi	%x2, %x2, 160  #1978
	jal	%x1, p_energy.2732  #1978
	addi	%x2, %x2, -160  #1978
	lw	%x1, 156(%x2) #1978
	lw	%x6, 100(%x2)  #1979
	slli	%x7, %x6, 2  #1979
	lw	%x7, %x7(%x5)  #1979
	lw	%x9, 44(%x2)  #1979
	sw	%x5, 156(%x2)  #1979
	mv	%x6, %x9
	mv	%x5, %x7
	sw	%x1, 164(%x2)  #1979
	addi	%x2, %x2, 168  #1979
	jal	%x1, veccpy.2654  #1979
	addi	%x2, %x2, -168  #1979
	lw	%x1, 164(%x2) #1979
	lw	%x5, 100(%x2)  #1980
	slli	%x6, %x5, 2  #1980
	lw	%x7, 156(%x2)  #1980
	lw	%x6, %x6(%x7)  #1980
	mv	%f0, l.6864  #0
	flw	%f2, 144(%x2)  #1980
	fmul	%f0, %f0, %f2  #1980
	mv	%x5, %x6
	sw	%x1, 164(%x2)  #1980
	addi	%x2, %x2, 168  #1980
	jal	%x1, vecscale.2675  #1980
	addi	%x2, %x2, -168  #1980
	lw	%x1, 164(%x2) #1980
	lw	%x5, 48(%x2)  #1981
	sw	%x1, 164(%x2)  #1981
	addi	%x2, %x2, 168  #1981
	jal	%x1, p_nvectors.2741  #1981
	addi	%x2, %x2, -168  #1981
	lw	%x1, 164(%x2) #1981
	lw	%x6, 100(%x2)  #1982
	slli	%x7, %x6, 2  #1982
	lw	%x5, %x7(%x5)  #1982
	lw	%x7, 40(%x2)  #1982
	mv	%x6, %x7
	sw	%x1, 164(%x2)  #1982
	addi	%x2, %x2, 168  #1982
	jal	%x1, veccpy.2654  #1982
	addi	%x2, %x2, -168  #1982
	lw	%x1, 164(%x2) #1982
	j	be_cont.9502
	nop
be_else.9501:
	addi	%x5, %x0, 0  #0
	lw	%x6, 100(%x2)  #1975
	slli	%x7, %x6, 2  #1975
	lw	%x9, 152(%x2)  #1975
	sw	%x5, %x7(%x9)  #1975
be_cont.9502:
	mv	%f0, l.6867  #0
	lw	%x5, 104(%x2)  #1985
	lw	%x6, 40(%x2)  #1985
	fsw	%f0, 160(%x2)  #1985
	sw	%x1, 172(%x2)  #1985
	addi	%x2, %x2, 176  #1985
	jal	%x1, veciprod.2660  #1985
	addi	%x2, %x2, -176  #1985
	lw	%x1, 172(%x2) #1985
	flw	%f2, 160(%x2)  #1985
	fmul	%f0, %f2, %f0  #1985
	lw	%x5, 104(%x2)  #1987
	lw	%x6, 40(%x2)  #1987
	sw	%x1, 172(%x2)  #1987
	addi	%x2, %x2, 176  #1987
	jal	%x1, vecaccum.2668  #1987
	addi	%x2, %x2, -176  #1987
	lw	%x1, 172(%x2) #1987
	lw	%x5, 132(%x2)  #1989
	sw	%x1, 172(%x2)  #1989
	addi	%x2, %x2, 176  #1989
	jal	%x1, o_hilight.2708  #1989
	addi	%x2, %x2, -176  #1989
	lw	%x1, 172(%x2) #1989
	flw	%f2, 88(%x2)  #1989
	fmul	%f0, %f2, %f0  #1989
	addi	%x5, %x0, 0  #0
	lw	%x6, 36(%x2)  #1992
	lw	%x6, 0(%x6)  #1992
	lw	%x22, 16(%x2)  #1992
	fsw	%f0, 168(%x2)  #1992
	sw	%x1, 180(%x2)  #1992
	lw	%x23, 0(%x22)  #1992
	addi	%x2, %x2, 184  #1992
	jalr	%x1, %x23, 0  #1992
	addi	%x2, %x2, -184  #1992
	lw	%x1, 180(%x2)  #1992
	beq	%x5, %x0, 12  #1992
	j	be_else.9503
	nop
	lw	%x5, 40(%x2)  #1993
	lw	%x6, 96(%x2)  #1993
	sw	%x1, 180(%x2)  #1993
	addi	%x2, %x2, 184  #1993
	jal	%x1, veciprod.2660  #1993
	addi	%x2, %x2, -184  #1993
	lw	%x1, 180(%x2) #1993
	sw	%x1, 180(%x2)  #1993
	addi	%x2, %x2, 184  #1993
	jal	%x1, fneg.2534  #1993
	addi	%x2, %x2, -184  #1993
	lw	%x1, 180(%x2) #1993
	flw	%f2, 144(%x2)  #1993
	fmul	%f0, %f0, %f2  #1993
	lw	%x5, 104(%x2)  #1994
	lw	%x6, 96(%x2)  #1994
	fsw	%f0, 176(%x2)  #1994
	sw	%x1, 188(%x2)  #1994
	addi	%x2, %x2, 192  #1994
	jal	%x1, veciprod.2660  #1994
	addi	%x2, %x2, -192  #1994
	lw	%x1, 188(%x2) #1994
	sw	%x1, 188(%x2)  #1994
	addi	%x2, %x2, 192  #1994
	jal	%x1, fneg.2534  #1994
	addi	%x2, %x2, -192  #1994
	lw	%x1, 188(%x2) #1994
	mv	%f2, %f0  #1994
	mv	%f3, %f1  #1994
	flw	%f0, 176(%x2)  #1995
	flw	%f4, 168(%x2)  #1995
	lw	%x22, 32(%x2)  #1995
	sw	%x1, 188(%x2)  #1995
	lw	%x23, 0(%x22)  #1995
	addi	%x2, %x2, 192  #1995
	jalr	%x1, %x23, 0  #1995
	addi	%x2, %x2, -192  #1995
	lw	%x1, 188(%x2)  #1995
	j	be_cont.9504
	nop
be_else.9503:
be_cont.9504:
	lw	%x5, 60(%x2)  #1999
	lw	%x22, 12(%x2)  #1999
	sw	%x1, 188(%x2)  #1999
	lw	%x23, 0(%x22)  #1999
	addi	%x2, %x2, 192  #1999
	jalr	%x1, %x23, 0  #1999
	addi	%x2, %x2, -192  #1999
	lw	%x1, 188(%x2)  #1999
	lw	%x5, 8(%x2)  #2000
	lw	%x5, 0(%x5)  #2000
	addi	%x5, %x5, -1  #2000
	flw	%f0, 144(%x2)  #2000
	flw	%f2, 168(%x2)  #2000
	lw	%x6, 104(%x2)  #2000
	lw	%x22, 4(%x2)  #2000
	sw	%x1, 188(%x2)  #2000
	lw	%x23, 0(%x22)  #2000
	addi	%x2, %x2, 192  #2000
	jalr	%x1, %x23, 0  #2000
	addi	%x2, %x2, -192  #2000
	lw	%x1, 188(%x2)  #2000
	mv	%f0, l.6871  #0
	flw	%f2, 88(%x2)  #2003
	sw	%x1, 188(%x2)  #2003
	addi	%x2, %x2, 192  #2003
	jal	%x1, fless.2540  #2003
	addi	%x2, %x2, -192  #2003
	lw	%x1, 188(%x2) #2003
	beq	%x5, %x0, 12  #2003
	j	be_else.9505
	nop
	ret
	nop
be_else.9505:
	lw	%x5, 100(%x2)  #2005
	addi	%x24, %x0, 4
	bge	%x5, %x24, 12  #2005
	j	bge_else.9507
	nop
	j	bge_cont.9508
	nop
bge_else.9507:
	addi	%x6, %x5, 1  #2006
	addi	%x7, %x0, -1  #0
	slli	%x6, %x6, 2  #2006
	lw	%x9, 112(%x2)  #2006
	sw	%x7, %x6(%x9)  #2006
bge_cont.9508:
	lw	%x6, 136(%x2)  #2009
	addi	%x24, %x0, 2
	beq	%x6, %x24, 12  #2009
	j	be_else.9509
	nop
	mv	%f0, l.6305  #0
	lw	%x6, 132(%x2)  #2010
	fsw	%f0, 184(%x2)  #2010
	mv	%x5, %x6
	sw	%x1, 196(%x2)  #2010
	addi	%x2, %x2, 200  #2010
	jal	%x1, o_diffuse.2706  #2010
	addi	%x2, %x2, -200  #2010
	lw	%x1, 196(%x2) #2010
	flw	%f2, 184(%x2)  #2010
	fsub	%f0, %f2, %f0  #2010
	flw	%f2, 88(%x2)  #2010
	fmul	%f0, %f2, %f0  #2010
	lw	%x5, 100(%x2)  #2011
	addi	%x5, %x5, 1  #2011
	lw	%x6, 0(%x2)  #2011
	flw	%f2, 0(%x6)  #2011
	flw	%f4, 24(%x2)  #2011
	fadd	%f2, %f4, %f2  #2011
	lw	%x6, 104(%x2)  #2011
	lw	%x7, 48(%x2)  #2011
	lw	%x22, 20(%x2)  #2011
	lw	0(%x23), %x22  #2011
	jalr	%x0, %x23, 0  #2011
	nop
be_else.9509:
	ret
	nop
ble_else.9492:
	ret
	nop
trace_diffuse_ray.2969:  #26892
	lw	%x6, 48(%x22)  #0
	lw	%x7, 44(%x22)  #0
	lw	%x9, 40(%x22)  #0
	lw	%x10, 36(%x22)  #0
	lw	%x11, 32(%x22)  #0
	lw	%x12, 28(%x22)  #0
	lw	%x13, 24(%x22)  #0
	lw	%x14, 20(%x22)  #0
	lw	%x15, 16(%x22)  #0
	lw	%x16, 12(%x22)  #0
	lw	%x17, 8(%x22)  #0
	lw	%x18, 4(%x22)  #0
	sw	%x7, 0(%x2)  #2049
	sw	%x18, 4(%x2)  #2049
	fsw	%f0, 8(%x2)  #2049
	sw	%x13, 16(%x2)  #2049
	sw	%x12, 20(%x2)  #2049
	sw	%x9, 24(%x2)  #2049
	sw	%x10, 28(%x2)  #2049
	sw	%x15, 32(%x2)  #2049
	sw	%x6, 36(%x2)  #2049
	sw	%x17, 40(%x2)  #2049
	sw	%x5, 44(%x2)  #2049
	sw	%x11, 48(%x2)  #2049
	sw	%x16, 52(%x2)  #2049
	mv	%x22, %x14
	sw	%x1, 60(%x2)  #2049
	lw	%x23, 0(%x22)  #2049
	addi	%x2, %x2, 64  #2049
	jalr	%x1, %x23, 0  #2049
	addi	%x2, %x2, -64  #2049
	lw	%x1, 60(%x2)  #2049
	beq	%x5, %x0, 12  #2049
	j	be_else.9512
	nop
	ret
	nop
be_else.9512:
	lw	%x5, 52(%x2)  #2050
	lw	%x5, 0(%x5)  #2050
	slli	%x5, %x5, 2  #2050
	lw	%x6, 48(%x2)  #2050
	lw	%x5, %x5(%x6)  #2050
	lw	%x6, 44(%x2)  #2051
	sw	%x5, 56(%x2)  #2051
	mv	%x5, %x6
	sw	%x1, 60(%x2)  #2051
	addi	%x2, %x2, 64  #2051
	jal	%x1, d_vec.2743  #2051
	addi	%x2, %x2, -64  #2051
	lw	%x1, 60(%x2) #2051
	mv	%x6, %x5  #2051
	lw	%x5, 56(%x2)  #2051
	lw	%x22, 40(%x2)  #2051
	sw	%x1, 60(%x2)  #2051
	lw	%x23, 0(%x22)  #2051
	addi	%x2, %x2, 64  #2051
	jalr	%x1, %x23, 0  #2051
	addi	%x2, %x2, -64  #2051
	lw	%x1, 60(%x2)  #2051
	lw	%x5, 56(%x2)  #2052
	lw	%x6, 32(%x2)  #2052
	lw	%x22, 36(%x2)  #2052
	sw	%x1, 60(%x2)  #2052
	lw	%x23, 0(%x22)  #2052
	addi	%x2, %x2, 64  #2052
	jalr	%x1, %x23, 0  #2052
	addi	%x2, %x2, -64  #2052
	lw	%x1, 60(%x2)  #2052
	addi	%x5, %x0, 0  #0
	lw	%x6, 28(%x2)  #2055
	lw	%x6, 0(%x6)  #2055
	lw	%x22, 24(%x2)  #2055
	sw	%x1, 60(%x2)  #2055
	lw	%x23, 0(%x22)  #2055
	addi	%x2, %x2, 64  #2055
	jalr	%x1, %x23, 0  #2055
	addi	%x2, %x2, -64  #2055
	lw	%x1, 60(%x2)  #2055
	beq	%x5, %x0, 12  #2055
	j	be_else.9514
	nop
	lw	%x5, 20(%x2)  #2056
	lw	%x6, 16(%x2)  #2056
	sw	%x1, 60(%x2)  #2056
	addi	%x2, %x2, 64  #2056
	jal	%x1, veciprod.2660  #2056
	addi	%x2, %x2, -64  #2056
	lw	%x1, 60(%x2) #2056
	sw	%x1, 60(%x2)  #2056
	addi	%x2, %x2, 64  #2056
	jal	%x1, fneg.2534  #2056
	addi	%x2, %x2, -64  #2056
	lw	%x1, 60(%x2) #2056
	fsw	%f0, 64(%x2)  #2057
	sw	%x1, 76(%x2)  #2057
	addi	%x2, %x2, 80  #2057
	jal	%x1, fispos.2530  #2057
	addi	%x2, %x2, -80  #2057
	lw	%x1, 76(%x2) #2057
	beq	%x5, %x0, 12  #2057
	j	be_else.9516
	nop
	mv	%f0, l.6293  #0
	j	be_cont.9517
	nop
be_else.9516:
	flw	%f0, 64(%x2)  #2057
be_cont.9517:
	flw	%f2, 8(%x2)  #2058
	fmul	%f0, %f2, %f0  #2058
	lw	%x5, 56(%x2)  #2058
	fsw	%f0, 72(%x2)  #2058
	sw	%x1, 84(%x2)  #2058
	addi	%x2, %x2, 88  #2058
	jal	%x1, o_diffuse.2706  #2058
	addi	%x2, %x2, -88  #2058
	lw	%x1, 84(%x2) #2058
	flw	%f2, 72(%x2)  #2058
	fmul	%f0, %f2, %f0  #2058
	lw	%x5, 4(%x2)  #2058
	lw	%x6, 0(%x2)  #2058
	j	vecaccum.2668  #2058
	nop
be_else.9514:
	ret
	nop
iter_trace_diffuse_rays.2972:  #27384
	lw	%x10, 4(%x22)  #0
	bge	%x9, %x0, 12  #2066
	j	bge_else.9519
	nop
	slli	%x11, %x9, 2  #2067
	lw	%x11, %x11(%x5)  #2067
	sw	%x7, 0(%x2)  #2067
	sw	%x22, 4(%x2)  #2067
	sw	%x10, 8(%x2)  #2067
	sw	%x5, 12(%x2)  #2067
	sw	%x9, 16(%x2)  #2067
	sw	%x6, 20(%x2)  #2067
	mv	%x5, %x11
	sw	%x1, 28(%x2)  #2067
	addi	%x2, %x2, 32  #2067
	jal	%x1, d_vec.2743  #2067
	addi	%x2, %x2, -32  #2067
	lw	%x1, 28(%x2) #2067
	lw	%x6, 20(%x2)  #2067
	sw	%x1, 28(%x2)  #2067
	addi	%x2, %x2, 32  #2067
	jal	%x1, veciprod.2660  #2067
	addi	%x2, %x2, -32  #2067
	lw	%x1, 28(%x2) #2067
	fsw	%f0, 24(%x2)  #2071
	sw	%x1, 36(%x2)  #2071
	addi	%x2, %x2, 40  #2071
	jal	%x1, fisneg.2532  #2071
	addi	%x2, %x2, -40  #2071
	lw	%x1, 36(%x2) #2071
	beq	%x5, %x0, 12  #2071
	j	be_else.9520
	nop
	lw	%x5, 16(%x2)  #2074
	slli	%x6, %x5, 2  #2074
	lw	%x7, 12(%x2)  #2074
	lw	%x6, %x6(%x7)  #2074
	mv	%f0, l.6893  #0
	flw	%f2, 24(%x2)  #2074
	fdiv	%f0, %f2, %f0  #2074
	lw	%x22, 8(%x2)  #2074
	mv	%x5, %x6
	sw	%x1, 36(%x2)  #2074
	lw	%x23, 0(%x22)  #2074
	addi	%x2, %x2, 40  #2074
	jalr	%x1, %x23, 0  #2074
	addi	%x2, %x2, -40  #2074
	lw	%x1, 36(%x2)  #2074
	j	be_cont.9521
	nop
be_else.9520:
	lw	%x5, 16(%x2)  #2072
	addi	%x6, %x5, 1  #2072
	slli	%x6, %x6, 2  #2072
	lw	%x7, 12(%x2)  #2072
	lw	%x6, %x6(%x7)  #2072
	mv	%f0, l.6890  #0
	flw	%f2, 24(%x2)  #2072
	fdiv	%f0, %f2, %f0  #2072
	lw	%x22, 8(%x2)  #2072
	mv	%x5, %x6
	sw	%x1, 36(%x2)  #2072
	lw	%x23, 0(%x22)  #2072
	addi	%x2, %x2, 40  #2072
	jalr	%x1, %x23, 0  #2072
	addi	%x2, %x2, -40  #2072
	lw	%x1, 36(%x2)  #2072
be_cont.9521:
	lw	%x5, 16(%x2)  #2076
	addi	%x9, %x5, -2  #2076
	lw	%x5, 12(%x2)  #2076
	lw	%x6, 20(%x2)  #2076
	lw	%x7, 0(%x2)  #2076
	lw	%x22, 4(%x2)  #2076
	lw	0(%x23), %x22  #2076
	jalr	%x0, %x23, 0  #2076
	nop
bge_else.9519:
	ret
	nop
trace_diffuse_rays.2977:  #27692
	lw	%x9, 8(%x22)  #2082
	lw	%x10, 4(%x22)  #2082
	sw	%x7, 0(%x2)  #2082
	sw	%x6, 4(%x2)  #2082
	sw	%x5, 8(%x2)  #2082
	sw	%x10, 12(%x2)  #2082
	mv	%x5, %x7
	mv	%x22, %x9
	sw	%x1, 20(%x2)  #2082
	lw	%x23, 0(%x22)  #2082
	addi	%x2, %x2, 24  #2082
	jalr	%x1, %x23, 0  #2082
	addi	%x2, %x2, -24  #2082
	lw	%x1, 20(%x2)  #2082
	addi	%x9, %x0, 118  #0
	lw	%x5, 8(%x2)  #2086
	lw	%x6, 4(%x2)  #2086
	lw	%x7, 0(%x2)  #2086
	lw	%x22, 12(%x2)  #2086
	lw	0(%x23), %x22  #2086
	jalr	%x0, %x23, 0  #2086
	nop
trace_diffuse_ray_80percent.2981:  #27780
	lw	%x9, 8(%x22)  #0
	lw	%x10, 4(%x22)  #0
	sw	%x7, 0(%x2)  #2093
	sw	%x6, 4(%x2)  #2093
	sw	%x9, 8(%x2)  #2093
	sw	%x10, 12(%x2)  #2093
	sw	%x5, 16(%x2)  #2093
	beq	%x5, %x0, 12  #2093
	j	be_else.9523
	nop
	j	be_cont.9524
	nop
be_else.9523:
	lw	%x11, 0(%x10)  #2094
	mv	%x5, %x11
	mv	%x22, %x9
	sw	%x1, 20(%x2)  #2094
	lw	%x23, 0(%x22)  #2094
	addi	%x2, %x2, 24  #2094
	jalr	%x1, %x23, 0  #2094
	addi	%x2, %x2, -24  #2094
	lw	%x1, 20(%x2)  #2094
be_cont.9524:
	lw	%x5, 16(%x2)  #2097
	addi	%x24, %x0, 1
	beq	%x5, %x24, 12  #2097
	j	be_else.9525
	nop
	j	be_cont.9526
	nop
be_else.9525:
	lw	%x6, 12(%x2)  #2098
	lw	%x7, 4(%x6)  #2098
	lw	%x9, 4(%x2)  #2098
	lw	%x10, 0(%x2)  #2098
	lw	%x22, 8(%x2)  #2098
	mv	%x6, %x9
	mv	%x5, %x7
	mv	%x7, %x10
	sw	%x1, 20(%x2)  #2098
	lw	%x23, 0(%x22)  #2098
	addi	%x2, %x2, 24  #2098
	jalr	%x1, %x23, 0  #2098
	addi	%x2, %x2, -24  #2098
	lw	%x1, 20(%x2)  #2098
be_cont.9526:
	lw	%x5, 16(%x2)  #2101
	addi	%x24, %x0, 2
	beq	%x5, %x24, 12  #2101
	j	be_else.9527
	nop
	j	be_cont.9528
	nop
be_else.9527:
	lw	%x6, 12(%x2)  #2102
	lw	%x7, 8(%x6)  #2102
	lw	%x9, 4(%x2)  #2102
	lw	%x10, 0(%x2)  #2102
	lw	%x22, 8(%x2)  #2102
	mv	%x6, %x9
	mv	%x5, %x7
	mv	%x7, %x10
	sw	%x1, 20(%x2)  #2102
	lw	%x23, 0(%x22)  #2102
	addi	%x2, %x2, 24  #2102
	jalr	%x1, %x23, 0  #2102
	addi	%x2, %x2, -24  #2102
	lw	%x1, 20(%x2)  #2102
be_cont.9528:
	lw	%x5, 16(%x2)  #2105
	addi	%x24, %x0, 3
	beq	%x5, %x24, 12  #2105
	j	be_else.9529
	nop
	j	be_cont.9530
	nop
be_else.9529:
	lw	%x6, 12(%x2)  #2106
	lw	%x7, 12(%x6)  #2106
	lw	%x9, 4(%x2)  #2106
	lw	%x10, 0(%x2)  #2106
	lw	%x22, 8(%x2)  #2106
	mv	%x6, %x9
	mv	%x5, %x7
	mv	%x7, %x10
	sw	%x1, 20(%x2)  #2106
	lw	%x23, 0(%x22)  #2106
	addi	%x2, %x2, 24  #2106
	jalr	%x1, %x23, 0  #2106
	addi	%x2, %x2, -24  #2106
	lw	%x1, 20(%x2)  #2106
be_cont.9530:
	lw	%x5, 16(%x2)  #2109
	addi	%x24, %x0, 4
	beq	%x5, %x24, 12  #2109
	j	be_else.9531
	nop
	ret
	nop
be_else.9531:
	lw	%x5, 12(%x2)  #2110
	lw	%x5, 16(%x5)  #2110
	lw	%x6, 4(%x2)  #2110
	lw	%x7, 0(%x2)  #2110
	lw	%x22, 8(%x2)  #2110
	lw	0(%x23), %x22  #2110
	jalr	%x0, %x23, 0  #2110
	nop
calc_diffuse_using_1point.2985:  #28160
	lw	%x7, 12(%x22)  #2119
	lw	%x9, 8(%x22)  #2119
	lw	%x10, 4(%x22)  #2119
	sw	%x9, 0(%x2)  #2119
	sw	%x7, 4(%x2)  #2119
	sw	%x10, 8(%x2)  #2119
	sw	%x6, 12(%x2)  #2119
	sw	%x5, 16(%x2)  #2119
	sw	%x1, 20(%x2)  #2119
	addi	%x2, %x2, 24  #2119
	jal	%x1, p_received_ray_20percent.2734  #2119
	addi	%x2, %x2, -24  #2119
	lw	%x1, 20(%x2) #2119
	lw	%x6, 16(%x2)  #2120
	sw	%x5, 20(%x2)  #2120
	mv	%x5, %x6
	sw	%x1, 28(%x2)  #2120
	addi	%x2, %x2, 32  #2120
	jal	%x1, p_nvectors.2741  #2120
	addi	%x2, %x2, -32  #2120
	lw	%x1, 28(%x2) #2120
	lw	%x6, 16(%x2)  #2121
	sw	%x5, 24(%x2)  #2121
	mv	%x5, %x6
	sw	%x1, 28(%x2)  #2121
	addi	%x2, %x2, 32  #2121
	jal	%x1, p_intersection_points.2726  #2121
	addi	%x2, %x2, -32  #2121
	lw	%x1, 28(%x2) #2121
	lw	%x6, 16(%x2)  #2122
	sw	%x5, 28(%x2)  #2122
	mv	%x5, %x6
	sw	%x1, 36(%x2)  #2122
	addi	%x2, %x2, 40  #2122
	jal	%x1, p_energy.2732  #2122
	addi	%x2, %x2, -40  #2122
	lw	%x1, 36(%x2) #2122
	lw	%x6, 12(%x2)  #2124
	slli	%x7, %x6, 2  #2124
	lw	%x9, 20(%x2)  #2124
	lw	%x7, %x7(%x9)  #2124
	lw	%x9, 8(%x2)  #2124
	sw	%x5, 32(%x2)  #2124
	mv	%x6, %x7
	mv	%x5, %x9
	sw	%x1, 36(%x2)  #2124
	addi	%x2, %x2, 40  #2124
	jal	%x1, veccpy.2654  #2124
	addi	%x2, %x2, -40  #2124
	lw	%x1, 36(%x2) #2124
	lw	%x5, 16(%x2)  #2126
	sw	%x1, 36(%x2)  #2126
	addi	%x2, %x2, 40  #2126
	jal	%x1, p_group_id.2736  #2126
	addi	%x2, %x2, -40  #2126
	lw	%x1, 36(%x2) #2126
	lw	%x6, 12(%x2)  #2127
	slli	%x7, %x6, 2  #2127
	lw	%x9, 24(%x2)  #2127
	lw	%x7, %x7(%x9)  #2127
	slli	%x9, %x6, 2  #2128
	lw	%x10, 28(%x2)  #2128
	lw	%x9, %x9(%x10)  #2128
	lw	%x22, 4(%x2)  #2125
	mv	%x6, %x7
	mv	%x7, %x9
	sw	%x1, 36(%x2)  #2125
	lw	%x23, 0(%x22)  #2125
	addi	%x2, %x2, 40  #2125
	jalr	%x1, %x23, 0  #2125
	addi	%x2, %x2, -40  #2125
	lw	%x1, 36(%x2)  #2125
	lw	%x5, 12(%x2)  #2129
	slli	%x5, %x5, 2  #2129
	lw	%x6, 32(%x2)  #2129
	lw	%x6, %x5(%x6)  #2129
	lw	%x5, 0(%x2)  #2129
	lw	%x7, 8(%x2)  #2129
	j	vecaccumv.2678  #2129
	nop
calc_diffuse_using_5points.2988:  #28480
	lw	%x11, 8(%x22)  #0
	lw	%x12, 4(%x22)  #0
	slli	%x13, %x5, 2  #2138
	lw	%x6, %x13(%x6)  #2138
	sw	%x11, 0(%x2)  #2138
	sw	%x12, 4(%x2)  #2138
	sw	%x10, 8(%x2)  #2138
	sw	%x9, 12(%x2)  #2138
	sw	%x7, 16(%x2)  #2138
	sw	%x5, 20(%x2)  #2138
	mv	%x5, %x6
	sw	%x1, 28(%x2)  #2138
	addi	%x2, %x2, 32  #2138
	jal	%x1, p_received_ray_20percent.2734  #2138
	addi	%x2, %x2, -32  #2138
	lw	%x1, 28(%x2) #2138
	lw	%x6, 20(%x2)  #2139
	addi	%x7, %x6, -1  #2139
	slli	%x7, %x7, 2  #2139
	lw	%x9, 16(%x2)  #2139
	lw	%x7, %x7(%x9)  #2139
	sw	%x5, 24(%x2)  #2139
	mv	%x5, %x7
	sw	%x1, 28(%x2)  #2139
	addi	%x2, %x2, 32  #2139
	jal	%x1, p_received_ray_20percent.2734  #2139
	addi	%x2, %x2, -32  #2139
	lw	%x1, 28(%x2) #2139
	lw	%x6, 20(%x2)  #2140
	slli	%x7, %x6, 2  #2140
	lw	%x9, 16(%x2)  #2140
	lw	%x7, %x7(%x9)  #2140
	sw	%x5, 28(%x2)  #2140
	mv	%x5, %x7
	sw	%x1, 36(%x2)  #2140
	addi	%x2, %x2, 40  #2140
	jal	%x1, p_received_ray_20percent.2734  #2140
	addi	%x2, %x2, -40  #2140
	lw	%x1, 36(%x2) #2140
	lw	%x6, 20(%x2)  #2141
	addi	%x7, %x6, 1  #2141
	slli	%x7, %x7, 2  #2141
	lw	%x9, 16(%x2)  #2141
	lw	%x7, %x7(%x9)  #2141
	sw	%x5, 32(%x2)  #2141
	mv	%x5, %x7
	sw	%x1, 36(%x2)  #2141
	addi	%x2, %x2, 40  #2141
	jal	%x1, p_received_ray_20percent.2734  #2141
	addi	%x2, %x2, -40  #2141
	lw	%x1, 36(%x2) #2141
	lw	%x6, 20(%x2)  #2142
	slli	%x7, %x6, 2  #2142
	lw	%x9, 12(%x2)  #2142
	lw	%x7, %x7(%x9)  #2142
	sw	%x5, 36(%x2)  #2142
	mv	%x5, %x7
	sw	%x1, 44(%x2)  #2142
	addi	%x2, %x2, 48  #2142
	jal	%x1, p_received_ray_20percent.2734  #2142
	addi	%x2, %x2, -48  #2142
	lw	%x1, 44(%x2) #2142
	lw	%x6, 8(%x2)  #2144
	slli	%x7, %x6, 2  #2144
	lw	%x9, 24(%x2)  #2144
	lw	%x7, %x7(%x9)  #2144
	lw	%x9, 4(%x2)  #2144
	sw	%x5, 40(%x2)  #2144
	mv	%x6, %x7
	mv	%x5, %x9
	sw	%x1, 44(%x2)  #2144
	addi	%x2, %x2, 48  #2144
	jal	%x1, veccpy.2654  #2144
	addi	%x2, %x2, -48  #2144
	lw	%x1, 44(%x2) #2144
	lw	%x5, 8(%x2)  #2145
	slli	%x6, %x5, 2  #2145
	lw	%x7, 28(%x2)  #2145
	lw	%x6, %x6(%x7)  #2145
	lw	%x7, 4(%x2)  #2145
	mv	%x5, %x7
	sw	%x1, 44(%x2)  #2145
	addi	%x2, %x2, 48  #2145
	jal	%x1, vecadd.2672  #2145
	addi	%x2, %x2, -48  #2145
	lw	%x1, 44(%x2) #2145
	lw	%x5, 8(%x2)  #2146
	slli	%x6, %x5, 2  #2146
	lw	%x7, 32(%x2)  #2146
	lw	%x6, %x6(%x7)  #2146
	lw	%x7, 4(%x2)  #2146
	mv	%x5, %x7
	sw	%x1, 44(%x2)  #2146
	addi	%x2, %x2, 48  #2146
	jal	%x1, vecadd.2672  #2146
	addi	%x2, %x2, -48  #2146
	lw	%x1, 44(%x2) #2146
	lw	%x5, 8(%x2)  #2147
	slli	%x6, %x5, 2  #2147
	lw	%x7, 36(%x2)  #2147
	lw	%x6, %x6(%x7)  #2147
	lw	%x7, 4(%x2)  #2147
	mv	%x5, %x7
	sw	%x1, 44(%x2)  #2147
	addi	%x2, %x2, 48  #2147
	jal	%x1, vecadd.2672  #2147
	addi	%x2, %x2, -48  #2147
	lw	%x1, 44(%x2) #2147
	lw	%x5, 8(%x2)  #2148
	slli	%x6, %x5, 2  #2148
	lw	%x7, 40(%x2)  #2148
	lw	%x6, %x6(%x7)  #2148
	lw	%x7, 4(%x2)  #2148
	mv	%x5, %x7
	sw	%x1, 44(%x2)  #2148
	addi	%x2, %x2, 48  #2148
	jal	%x1, vecadd.2672  #2148
	addi	%x2, %x2, -48  #2148
	lw	%x1, 44(%x2) #2148
	lw	%x5, 20(%x2)  #2150
	slli	%x5, %x5, 2  #2150
	lw	%x6, 16(%x2)  #2150
	lw	%x5, %x5(%x6)  #2150
	sw	%x1, 44(%x2)  #2150
	addi	%x2, %x2, 48  #2150
	jal	%x1, p_energy.2732  #2150
	addi	%x2, %x2, -48  #2150
	lw	%x1, 44(%x2) #2150
	lw	%x6, 8(%x2)  #2151
	slli	%x6, %x6, 2  #2151
	lw	%x6, %x6(%x5)  #2151
	lw	%x5, 0(%x2)  #2151
	lw	%x7, 4(%x2)  #2151
	j	vecaccumv.2678  #2151
	nop
do_without_neighbors.2994:  #29020
	lw	%x7, 4(%x22)  #0
	addi	%x24, %x0, 4
	bge	%x24, %x6, 12  #2157
	j	ble_else.9533
	nop
	sw	%x22, 0(%x2)  #2159
	sw	%x7, 4(%x2)  #2159
	sw	%x5, 8(%x2)  #2159
	sw	%x6, 12(%x2)  #2159
	sw	%x1, 20(%x2)  #2159
	addi	%x2, %x2, 24  #2159
	jal	%x1, p_surface_ids.2728  #2159
	addi	%x2, %x2, -24  #2159
	lw	%x1, 20(%x2) #2159
	lw	%x6, 12(%x2)  #2160
	slli	%x7, %x6, 2  #2160
	lw	%x5, %x7(%x5)  #2160
	bge	%x5, %x0, 12  #2160
	j	bge_else.9534
	nop
	lw	%x5, 8(%x2)  #2161
	sw	%x1, 20(%x2)  #2161
	addi	%x2, %x2, 24  #2161
	jal	%x1, p_calc_diffuse.2730  #2161
	addi	%x2, %x2, -24  #2161
	lw	%x1, 20(%x2) #2161
	lw	%x6, 12(%x2)  #2162
	slli	%x7, %x6, 2  #2162
	lw	%x5, %x7(%x5)  #2162
	beq	%x5, %x0, 12  #2162
	j	be_else.9535
	nop
	j	be_cont.9536
	nop
be_else.9535:
	lw	%x5, 8(%x2)  #2163
	lw	%x22, 4(%x2)  #2163
	sw	%x1, 20(%x2)  #2163
	lw	%x23, 0(%x22)  #2163
	addi	%x2, %x2, 24  #2163
	jalr	%x1, %x23, 0  #2163
	addi	%x2, %x2, -24  #2163
	lw	%x1, 20(%x2)  #2163
be_cont.9536:
	lw	%x5, 12(%x2)  #2165
	addi	%x6, %x5, 1  #2165
	lw	%x5, 8(%x2)  #2165
	lw	%x22, 0(%x2)  #2165
	lw	0(%x23), %x22  #2165
	jalr	%x0, %x23, 0  #2165
	nop
bge_else.9534:
	ret
	nop
ble_else.9533:
	ret
	nop
neighbors_exist.2997:  #29228
	lw	%x7, 4(%x22)  #0
	lw	%x9, 4(%x7)  #2172
	addi	%x10, %x6, 1  #2172
	bge	%x10, %x9, 12  #2172
	j	ble_else.9539
	nop
	addi	%x5, %x0, 0  #0
	ret
	nop
ble_else.9539:
	bge	%x0, %x6, 12  #2173
	j	ble_else.9540
	nop
	addi	%x5, %x0, 0  #0
	ret
	nop
ble_else.9540:
	lw	%x6, 0(%x7)  #2174
	addi	%x7, %x5, 1  #2174
	bge	%x7, %x6, 12  #2174
	j	ble_else.9541
	nop
	addi	%x5, %x0, 0  #0
	ret
	nop
ble_else.9541:
	bge	%x0, %x5, 12  #2175
	j	ble_else.9542
	nop
	addi	%x5, %x0, 0  #0
	ret
	nop
ble_else.9542:
	addi	%x5, %x0, 1  #0
	ret
	nop
get_surface_id.3001:  #29356
	sw	%x6, 0(%x2)  #2184
	sw	%x1, 4(%x2)  #2184
	addi	%x2, %x2, 8  #2184
	jal	%x1, p_surface_ids.2728  #2184
	addi	%x2, %x2, -8  #2184
	lw	%x1, 4(%x2) #2184
	lw	%x6, 0(%x2)  #2185
	slli	%x6, %x6, 2  #2185
	lw	%x5, %x6(%x5)  #2185
	ret
	nop
neighbors_are_available.3004:  #29400
	slli	%x11, %x5, 2  #2191
	lw	%x11, %x11(%x7)  #2191
	sw	%x7, 0(%x2)  #2191
	sw	%x9, 4(%x2)  #2191
	sw	%x10, 8(%x2)  #2191
	sw	%x6, 12(%x2)  #2191
	sw	%x5, 16(%x2)  #2191
	mv	%x6, %x10
	mv	%x5, %x11
	sw	%x1, 20(%x2)  #2191
	addi	%x2, %x2, 24  #2191
	jal	%x1, get_surface_id.3001  #2191
	addi	%x2, %x2, -24  #2191
	lw	%x1, 20(%x2) #2191
	lw	%x6, 16(%x2)  #2193
	slli	%x7, %x6, 2  #2193
	lw	%x9, 12(%x2)  #2193
	lw	%x7, %x7(%x9)  #2193
	lw	%x9, 8(%x2)  #2193
	sw	%x5, 20(%x2)  #2193
	mv	%x6, %x9
	mv	%x5, %x7
	sw	%x1, 28(%x2)  #2193
	addi	%x2, %x2, 32  #2193
	jal	%x1, get_surface_id.3001  #2193
	addi	%x2, %x2, -32  #2193
	lw	%x1, 28(%x2) #2193
	lw	%x6, 20(%x2)  #2193
	beq	%x5, %x6, 12  #2193
	j	be_else.9543
	nop
	lw	%x5, 16(%x2)  #2194
	slli	%x7, %x5, 2  #2194
	lw	%x9, 4(%x2)  #2194
	lw	%x7, %x7(%x9)  #2194
	lw	%x9, 8(%x2)  #2194
	mv	%x6, %x9
	mv	%x5, %x7
	sw	%x1, 28(%x2)  #2194
	addi	%x2, %x2, 32  #2194
	jal	%x1, get_surface_id.3001  #2194
	addi	%x2, %x2, -32  #2194
	lw	%x1, 28(%x2) #2194
	lw	%x6, 20(%x2)  #2194
	beq	%x5, %x6, 12  #2194
	j	be_else.9544
	nop
	lw	%x5, 16(%x2)  #2195
	addi	%x7, %x5, -1  #2195
	slli	%x7, %x7, 2  #2195
	lw	%x9, 0(%x2)  #2195
	lw	%x7, %x7(%x9)  #2195
	lw	%x10, 8(%x2)  #2195
	mv	%x6, %x10
	mv	%x5, %x7
	sw	%x1, 28(%x2)  #2195
	addi	%x2, %x2, 32  #2195
	jal	%x1, get_surface_id.3001  #2195
	addi	%x2, %x2, -32  #2195
	lw	%x1, 28(%x2) #2195
	lw	%x6, 20(%x2)  #2195
	beq	%x5, %x6, 12  #2195
	j	be_else.9545
	nop
	lw	%x5, 16(%x2)  #2196
	addi	%x5, %x5, 1  #2196
	slli	%x5, %x5, 2  #2196
	lw	%x7, 0(%x2)  #2196
	lw	%x5, %x5(%x7)  #2196
	lw	%x7, 8(%x2)  #2196
	mv	%x6, %x7
	sw	%x1, 28(%x2)  #2196
	addi	%x2, %x2, 32  #2196
	jal	%x1, get_surface_id.3001  #2196
	addi	%x2, %x2, -32  #2196
	lw	%x1, 28(%x2) #2196
	lw	%x6, 20(%x2)  #2196
	beq	%x5, %x6, 12  #2196
	j	be_else.9546
	nop
	addi	%x5, %x0, 1  #0
	ret
	nop
be_else.9546:
	addi	%x5, %x0, 0  #0
	ret
	nop
be_else.9545:
	addi	%x5, %x0, 0  #0
	ret
	nop
be_else.9544:
	addi	%x5, %x0, 0  #0
	ret
	nop
be_else.9543:
	addi	%x5, %x0, 0  #0
	ret
	nop
try_exploit_neighbors.3010:  #29780
	lw	%x12, 8(%x22)  #2209
	lw	%x13, 4(%x22)  #2209
	slli	%x14, %x5, 2  #2209
	lw	%x14, %x14(%x9)  #2209
	addi	%x24, %x0, 4
	bge	%x24, %x11, 12  #2210
	j	ble_else.9547
	nop
	sw	%x6, 0(%x2)  #2213
	sw	%x22, 4(%x2)  #2213
	sw	%x13, 8(%x2)  #2213
	sw	%x14, 12(%x2)  #2213
	sw	%x12, 16(%x2)  #2213
	sw	%x11, 20(%x2)  #2213
	sw	%x10, 24(%x2)  #2213
	sw	%x9, 28(%x2)  #2213
	sw	%x7, 32(%x2)  #2213
	sw	%x5, 36(%x2)  #2213
	mv	%x6, %x11
	mv	%x5, %x14
	sw	%x1, 44(%x2)  #2213
	addi	%x2, %x2, 48  #2213
	jal	%x1, get_surface_id.3001  #2213
	addi	%x2, %x2, -48  #2213
	lw	%x1, 44(%x2) #2213
	bge	%x5, %x0, 12  #2213
	j	bge_else.9548
	nop
	lw	%x5, 36(%x2)  #2215
	lw	%x6, 32(%x2)  #2215
	lw	%x7, 28(%x2)  #2215
	lw	%x9, 24(%x2)  #2215
	lw	%x10, 20(%x2)  #2215
	sw	%x1, 44(%x2)  #2215
	addi	%x2, %x2, 48  #2215
	jal	%x1, neighbors_are_available.3004  #2215
	addi	%x2, %x2, -48  #2215
	lw	%x1, 44(%x2) #2215
	beq	%x5, %x0, 12  #2215
	j	be_else.9549
	nop
	lw	%x5, 36(%x2)  #2227
	slli	%x5, %x5, 2  #2227
	lw	%x6, 28(%x2)  #2227
	lw	%x5, %x5(%x6)  #2227
	lw	%x6, 20(%x2)  #2227
	lw	%x22, 16(%x2)  #2227
	lw	0(%x23), %x22  #2227
	jalr	%x0, %x23, 0  #2227
	nop
be_else.9549:
	lw	%x5, 12(%x2)  #2218
	sw	%x1, 44(%x2)  #2218
	addi	%x2, %x2, 48  #2218
	jal	%x1, p_calc_diffuse.2730  #2218
	addi	%x2, %x2, -48  #2218
	lw	%x1, 44(%x2) #2218
	lw	%x10, 20(%x2)  #2219
	slli	%x6, %x10, 2  #2219
	lw	%x5, %x6(%x5)  #2219
	beq	%x5, %x0, 12  #2219
	j	be_else.9550
	nop
	j	be_cont.9551
	nop
be_else.9550:
	lw	%x5, 36(%x2)  #2220
	lw	%x6, 32(%x2)  #2220
	lw	%x7, 28(%x2)  #2220
	lw	%x9, 24(%x2)  #2220
	lw	%x22, 8(%x2)  #2220
	sw	%x1, 44(%x2)  #2220
	lw	%x23, 0(%x22)  #2220
	addi	%x2, %x2, 48  #2220
	jalr	%x1, %x23, 0  #2220
	addi	%x2, %x2, -48  #2220
	lw	%x1, 44(%x2)  #2220
be_cont.9551:
	lw	%x5, 20(%x2)  #2224
	addi	%x11, %x5, 1  #2224
	lw	%x5, 36(%x2)  #2224
	lw	%x6, 0(%x2)  #2224
	lw	%x7, 32(%x2)  #2224
	lw	%x9, 28(%x2)  #2224
	lw	%x10, 24(%x2)  #2224
	lw	%x22, 4(%x2)  #2224
	lw	0(%x23), %x22  #2224
	jalr	%x0, %x23, 0  #2224
	nop
bge_else.9548:
	ret
	nop
ble_else.9547:
	ret
	nop
write_ppm_header.3017:  #30136
	lw	%x6, 4(%x22)  #0
	addi	%x7, %x0, 80  #0
	sw	%x6, 0(%x2)  #2237
	sw	%x5, 4(%x2)  #2237
	mv	%x5, %x7
	sw	%x1, 12(%x2)  #2237
	addi	%x2, %x2, 16  #2237
	jal	%x1, print_char.2573  #2237
	addi	%x2, %x2, -16  #2237
	lw	%x1, 12(%x2) #2237
	lw	%x5, 4(%x2)  #2238
	addi	%x5, %x5, 48  #2238
	sw	%x1, 12(%x2)  #2238
	addi	%x2, %x2, 16  #2238
	jal	%x1, print_char.2573  #2238
	addi	%x2, %x2, -16  #2238
	lw	%x1, 12(%x2) #2238
	addi	%x5, %x0, 10  #0
	sw	%x1, 12(%x2)  #2239
	addi	%x2, %x2, 16  #2239
	jal	%x1, print_char.2573  #2239
	addi	%x2, %x2, -16  #2239
	lw	%x1, 12(%x2) #2239
	lw	%x5, 0(%x2)  #2240
	lw	%x6, 0(%x5)  #2240
	mv	%x5, %x6
	sw	%x1, 12(%x2)  #2240
	addi	%x2, %x2, 16  #2240
	jal	%x1, print_int.2575  #2240
	addi	%x2, %x2, -16  #2240
	lw	%x1, 12(%x2) #2240
	addi	%x5, %x0, 32  #0
	sw	%x1, 12(%x2)  #2241
	addi	%x2, %x2, 16  #2241
	jal	%x1, print_char.2573  #2241
	addi	%x2, %x2, -16  #2241
	lw	%x1, 12(%x2) #2241
	lw	%x5, 0(%x2)  #2242
	lw	%x5, 4(%x5)  #2242
	sw	%x1, 12(%x2)  #2242
	addi	%x2, %x2, 16  #2242
	jal	%x1, print_int.2575  #2242
	addi	%x2, %x2, -16  #2242
	lw	%x1, 12(%x2) #2242
	addi	%x5, %x0, 32  #0
	sw	%x1, 12(%x2)  #2243
	addi	%x2, %x2, 16  #2243
	jal	%x1, print_char.2573  #2243
	addi	%x2, %x2, -16  #2243
	lw	%x1, 12(%x2) #2243
	addi	%x5, %x0, 255  #0
	sw	%x1, 12(%x2)  #2244
	addi	%x2, %x2, 16  #2244
	jal	%x1, print_int.2575  #2244
	addi	%x2, %x2, -16  #2244
	lw	%x1, 12(%x2) #2244
	addi	%x5, %x0, 10  #0
	j	print_char.2573  #2245
	nop
write_rgb_element_int.3019:  #30372
	sw	%x1, 4(%x2)  #2250
	addi	%x2, %x2, 8  #2250
	jal	%x1, int_of_float.2555  #2250
	addi	%x2, %x2, -8  #2250
	lw	%x1, 4(%x2) #2250
	addi	%x24, %x0, 255
	bge	%x24, %x5, 12  #2251
	j	ble_else.9554
	nop
	bge	%x5, %x0, 12  #2251
	j	bge_else.9556
	nop
	j	bge_cont.9557
	nop
bge_else.9556:
	addi	%x5, %x0, 0  #0
bge_cont.9557:
	j	ble_cont.9555
	nop
ble_else.9554:
	addi	%x5, %x0, 255  #0
ble_cont.9555:
	j	print_int.2575  #2252
	nop
write_rgb_element_char.3021:  #30448
	sw	%x1, 4(%x2)  #2256
	addi	%x2, %x2, 8  #2256
	jal	%x1, int_of_float.2555  #2256
	addi	%x2, %x2, -8  #2256
	lw	%x1, 4(%x2) #2256
	addi	%x24, %x0, 255
	bge	%x24, %x5, 12  #2257
	j	ble_else.9558
	nop
	bge	%x5, %x0, 12  #2257
	j	bge_else.9560
	nop
	j	bge_cont.9561
	nop
bge_else.9560:
	addi	%x5, %x0, 0  #0
bge_cont.9561:
	j	ble_cont.9559
	nop
ble_else.9558:
	addi	%x5, %x0, 255  #0
ble_cont.9559:
	j	print_char.2573  #2258
	nop
write_rgb.3023:  #30524
	lw	%x6, 4(%x22)  #0
	addi	%x24, %x0, 3
	beq	%x5, %x24, 12  #2262
	j	be_else.9562
	nop
	flw	%f0, 0(%x6)  #2263
	sw	%x6, 0(%x2)  #2263
	sw	%x1, 4(%x2)  #2263
	addi	%x2, %x2, 8  #2263
	jal	%x1, write_rgb_element_int.3019  #2263
	addi	%x2, %x2, -8  #2263
	lw	%x1, 4(%x2) #2263
	addi	%x5, %x0, 32  #0
	sw	%x1, 4(%x2)  #2264
	addi	%x2, %x2, 8  #2264
	jal	%x1, print_char.2573  #2264
	addi	%x2, %x2, -8  #2264
	lw	%x1, 4(%x2) #2264
	lw	%x5, 0(%x2)  #2265
	flw	%f0, 8(%x5)  #2265
	sw	%x1, 4(%x2)  #2265
	addi	%x2, %x2, 8  #2265
	jal	%x1, write_rgb_element_int.3019  #2265
	addi	%x2, %x2, -8  #2265
	lw	%x1, 4(%x2) #2265
	addi	%x5, %x0, 32  #0
	sw	%x1, 4(%x2)  #2266
	addi	%x2, %x2, 8  #2266
	jal	%x1, print_char.2573  #2266
	addi	%x2, %x2, -8  #2266
	lw	%x1, 4(%x2) #2266
	lw	%x5, 0(%x2)  #2267
	flw	%f0, 16(%x5)  #2267
	sw	%x1, 4(%x2)  #2267
	addi	%x2, %x2, 8  #2267
	jal	%x1, write_rgb_element_int.3019  #2267
	addi	%x2, %x2, -8  #2267
	lw	%x1, 4(%x2) #2267
	addi	%x5, %x0, 10  #0
	j	print_char.2573  #2268
	nop
be_else.9562:
	flw	%f0, 0(%x6)  #2270
	sw	%x6, 0(%x2)  #2270
	sw	%x1, 4(%x2)  #2270
	addi	%x2, %x2, 8  #2270
	jal	%x1, write_rgb_element_char.3021  #2270
	addi	%x2, %x2, -8  #2270
	lw	%x1, 4(%x2) #2270
	lw	%x5, 0(%x2)  #2271
	flw	%f0, 8(%x5)  #2271
	sw	%x1, 4(%x2)  #2271
	addi	%x2, %x2, 8  #2271
	jal	%x1, write_rgb_element_char.3021  #2271
	addi	%x2, %x2, -8  #2271
	lw	%x1, 4(%x2) #2271
	lw	%x5, 0(%x2)  #2272
	flw	%f0, 16(%x5)  #2272
	j	write_rgb_element_char.3021  #2272
	nop
pretrace_diffuse_rays.3025:  #30756
	lw	%x7, 12(%x22)  #0
	lw	%x9, 8(%x22)  #0
	lw	%x10, 4(%x22)  #0
	addi	%x24, %x0, 4
	bge	%x24, %x6, 12  #2285
	j	ble_else.9563
	nop
	sw	%x22, 0(%x2)  #2288
	sw	%x7, 4(%x2)  #2288
	sw	%x9, 8(%x2)  #2288
	sw	%x10, 12(%x2)  #2288
	sw	%x6, 16(%x2)  #2288
	sw	%x5, 20(%x2)  #2288
	sw	%x1, 28(%x2)  #2288
	addi	%x2, %x2, 32  #2288
	jal	%x1, get_surface_id.3001  #2288
	addi	%x2, %x2, -32  #2288
	lw	%x1, 28(%x2) #2288
	bge	%x5, %x0, 12  #2289
	j	bge_else.9564
	nop
	lw	%x5, 20(%x2)  #2291
	sw	%x1, 28(%x2)  #2291
	addi	%x2, %x2, 32  #2291
	jal	%x1, p_calc_diffuse.2730  #2291
	addi	%x2, %x2, -32  #2291
	lw	%x1, 28(%x2) #2291
	lw	%x6, 16(%x2)  #2292
	slli	%x7, %x6, 2  #2292
	lw	%x5, %x7(%x5)  #2292
	beq	%x5, %x0, 12  #2292
	j	be_else.9565
	nop
	j	be_cont.9566
	nop
be_else.9565:
	lw	%x5, 20(%x2)  #2293
	sw	%x1, 28(%x2)  #2293
	addi	%x2, %x2, 32  #2293
	jal	%x1, p_group_id.2736  #2293
	addi	%x2, %x2, -32  #2293
	lw	%x1, 28(%x2) #2293
	lw	%x6, 12(%x2)  #2294
	sw	%x5, 24(%x2)  #2294
	mv	%x5, %x6
	sw	%x1, 28(%x2)  #2294
	addi	%x2, %x2, 32  #2294
	jal	%x1, vecbzero.2652  #2294
	addi	%x2, %x2, -32  #2294
	lw	%x1, 28(%x2) #2294
	lw	%x5, 20(%x2)  #2298
	sw	%x1, 28(%x2)  #2298
	addi	%x2, %x2, 32  #2298
	jal	%x1, p_nvectors.2741  #2298
	addi	%x2, %x2, -32  #2298
	lw	%x1, 28(%x2) #2298
	lw	%x6, 20(%x2)  #2299
	sw	%x5, 28(%x2)  #2299
	mv	%x5, %x6
	sw	%x1, 36(%x2)  #2299
	addi	%x2, %x2, 40  #2299
	jal	%x1, p_intersection_points.2726  #2299
	addi	%x2, %x2, -40  #2299
	lw	%x1, 36(%x2) #2299
	lw	%x6, 24(%x2)  #2301
	slli	%x6, %x6, 2  #2301
	lw	%x7, 8(%x2)  #2301
	lw	%x6, %x6(%x7)  #2301
	lw	%x7, 16(%x2)  #2302
	slli	%x9, %x7, 2  #2302
	lw	%x10, 28(%x2)  #2302
	lw	%x9, %x9(%x10)  #2302
	slli	%x10, %x7, 2  #2303
	lw	%x5, %x10(%x5)  #2303
	lw	%x22, 4(%x2)  #2300
	mv	%x7, %x5
	mv	%x5, %x6
	mv	%x6, %x9
	sw	%x1, 36(%x2)  #2300
	lw	%x23, 0(%x22)  #2300
	addi	%x2, %x2, 40  #2300
	jalr	%x1, %x23, 0  #2300
	addi	%x2, %x2, -40  #2300
	lw	%x1, 36(%x2)  #2300
	lw	%x5, 20(%x2)  #2304
	sw	%x1, 36(%x2)  #2304
	addi	%x2, %x2, 40  #2304
	jal	%x1, p_received_ray_20percent.2734  #2304
	addi	%x2, %x2, -40  #2304
	lw	%x1, 36(%x2) #2304
	lw	%x6, 16(%x2)  #2305
	slli	%x7, %x6, 2  #2305
	lw	%x5, %x7(%x5)  #2305
	lw	%x7, 12(%x2)  #2305
	mv	%x6, %x7
	sw	%x1, 36(%x2)  #2305
	addi	%x2, %x2, 40  #2305
	jal	%x1, veccpy.2654  #2305
	addi	%x2, %x2, -40  #2305
	lw	%x1, 36(%x2) #2305
be_cont.9566:
	lw	%x5, 16(%x2)  #2307
	addi	%x6, %x5, 1  #2307
	lw	%x5, 20(%x2)  #2307
	lw	%x22, 0(%x2)  #2307
	lw	0(%x23), %x22  #2307
	jalr	%x0, %x23, 0  #2307
	nop
bge_else.9564:
	ret
	nop
ble_else.9563:
	ret
	nop
pretrace_pixels.3028:  #31192
	lw	%x9, 36(%x22)  #0
	lw	%x10, 32(%x22)  #0
	lw	%x11, 28(%x22)  #0
	lw	%x12, 24(%x22)  #0
	lw	%x13, 20(%x22)  #0
	lw	%x14, 16(%x22)  #0
	lw	%x15, 12(%x22)  #0
	lw	%x16, 8(%x22)  #0
	lw	%x17, 4(%x22)  #0
	bge	%x6, %x0, 12  #2315
	j	bge_else.9569
	nop
	flw	%f6, 0(%x13)  #2317
	lw	%x13, 0(%x17)  #2317
	sub	%x13, %x6, %x13  #2317
	sw	%x22, 0(%x2)  #2317
	sw	%x16, 4(%x2)  #2317
	sw	%x7, 8(%x2)  #2317
	sw	%x10, 12(%x2)  #2317
	sw	%x5, 16(%x2)  #2317
	sw	%x6, 20(%x2)  #2317
	sw	%x9, 24(%x2)  #2317
	sw	%x11, 28(%x2)  #2317
	sw	%x14, 32(%x2)  #2317
	fsw	%f4, 40(%x2)  #2317
	fsw	%f2, 48(%x2)  #2317
	sw	%x15, 56(%x2)  #2317
	fsw	%f0, 64(%x2)  #2317
	sw	%x12, 72(%x2)  #2317
	fsw	%f6, 80(%x2)  #2317
	mv	%x5, %x13
	sw	%x1, 92(%x2)  #2317
	addi	%x2, %x2, 96  #2317
	jal	%x1, float_of_int.2553  #2317
	addi	%x2, %x2, -96  #2317
	lw	%x1, 92(%x2) #2317
	flw	%f2, 80(%x2)  #2317
	fmul	%f0, %f2, %f0  #2317
	lw	%x5, 72(%x2)  #2318
	flw	%f2, 0(%x5)  #2318
	fmul	%f2, %f0, %f2  #2318
	flw	%f4, 64(%x2)  #2318
	fadd	%f2, %f2, %f4  #2318
	lw	%x6, 56(%x2)  #2318
	fsw	%f2, 0(%x6) #2318
	flw	%f2, 8(%x5)  #2319
	fmul	%f2, %f0, %f2  #2319
	flw	%f6, 48(%x2)  #2319
	fadd	%f2, %f2, %f6  #2319
	fsw	%f2, 8(%x6) #2319
	flw	%f2, 16(%x5)  #2320
	fmul	%f0, %f0, %f2  #2320
	flw	%f2, 40(%x2)  #2320
	fadd	%f0, %f0, %f2  #2320
	fsw	%f0, 16(%x6) #2320
	addi	%x5, %x0, 0  #0
	mv	%x23, %x6
	mv	%x6, %x5
	mv	%x5, %x23
	sw	%x1, 92(%x2)  #2321
	addi	%x2, %x2, 96  #2321
	jal	%x1, vecunit_sgn.2657  #2321
	addi	%x2, %x2, -96  #2321
	lw	%x1, 92(%x2) #2321
	lw	%x5, 32(%x2)  #2322
	sw	%x1, 92(%x2)  #2322
	addi	%x2, %x2, 96  #2322
	jal	%x1, vecbzero.2652  #2322
	addi	%x2, %x2, -96  #2322
	lw	%x1, 92(%x2) #2322
	lw	%x5, 28(%x2)  #2323
	lw	%x6, 24(%x2)  #2323
	sw	%x1, 92(%x2)  #2323
	addi	%x2, %x2, 96  #2323
	jal	%x1, veccpy.2654  #2323
	addi	%x2, %x2, -96  #2323
	lw	%x1, 92(%x2) #2323
	addi	%x5, %x0, 0  #0
	mv	%f0, l.6305  #0
	lw	%x6, 20(%x2)  #2326
	slli	%x7, %x6, 2  #2326
	lw	%x9, 16(%x2)  #2326
	lw	%x7, %x7(%x9)  #2326
	mv	%f2, l.6293  #0
	lw	%x10, 56(%x2)  #2326
	lw	%x22, 12(%x2)  #2326
	mv	%x6, %x10
	sw	%x1, 92(%x2)  #2326
	lw	%x23, 0(%x22)  #2326
	addi	%x2, %x2, 96  #2326
	jalr	%x1, %x23, 0  #2326
	addi	%x2, %x2, -96  #2326
	lw	%x1, 92(%x2)  #2326
	lw	%x5, 20(%x2)  #2327
	slli	%x6, %x5, 2  #2327
	lw	%x7, 16(%x2)  #2327
	lw	%x6, %x6(%x7)  #2327
	mv	%x5, %x6
	sw	%x1, 92(%x2)  #2327
	addi	%x2, %x2, 96  #2327
	jal	%x1, p_rgb.2724  #2327
	addi	%x2, %x2, -96  #2327
	lw	%x1, 92(%x2) #2327
	lw	%x6, 32(%x2)  #2327
	sw	%x1, 92(%x2)  #2327
	addi	%x2, %x2, 96  #2327
	jal	%x1, veccpy.2654  #2327
	addi	%x2, %x2, -96  #2327
	lw	%x1, 92(%x2) #2327
	lw	%x5, 20(%x2)  #2328
	slli	%x6, %x5, 2  #2328
	lw	%x7, 16(%x2)  #2328
	lw	%x6, %x6(%x7)  #2328
	lw	%x9, 8(%x2)  #2328
	mv	%x5, %x6
	mv	%x6, %x9
	sw	%x1, 92(%x2)  #2328
	addi	%x2, %x2, 96  #2328
	jal	%x1, p_set_group_id.2738  #2328
	addi	%x2, %x2, -96  #2328
	lw	%x1, 92(%x2) #2328
	lw	%x5, 20(%x2)  #2331
	slli	%x6, %x5, 2  #2331
	lw	%x7, 16(%x2)  #2331
	lw	%x6, %x6(%x7)  #2331
	addi	%x9, %x0, 0  #0
	lw	%x22, 4(%x2)  #2331
	mv	%x5, %x6
	mv	%x6, %x9
	sw	%x1, 92(%x2)  #2331
	lw	%x23, 0(%x22)  #2331
	addi	%x2, %x2, 96  #2331
	jalr	%x1, %x23, 0  #2331
	addi	%x2, %x2, -96  #2331
	lw	%x1, 92(%x2)  #2331
	lw	%x5, 20(%x2)  #2333
	addi	%x5, %x5, -1  #2333
	addi	%x6, %x0, 1  #0
	lw	%x7, 8(%x2)  #2333
	sw	%x5, 88(%x2)  #2333
	mv	%x5, %x7
	sw	%x1, 92(%x2)  #2333
	addi	%x2, %x2, 96  #2333
	jal	%x1, add_mod5.2641  #2333
	addi	%x2, %x2, -96  #2333
	lw	%x1, 92(%x2) #2333
	mv	%x7, %x5  #2333
	flw	%f0, 64(%x2)  #2333
	flw	%f2, 48(%x2)  #2333
	flw	%f4, 40(%x2)  #2333
	lw	%x5, 16(%x2)  #2333
	lw	%x6, 88(%x2)  #2333
	lw	%x22, 0(%x2)  #2333
	lw	0(%x23), %x22  #2333
	jalr	%x0, %x23, 0  #2333
	nop
bge_else.9569:
	ret
	nop
pretrace_line.3035:  #31824
	lw	%x9, 24(%x22)  #0
	lw	%x10, 20(%x22)  #0
	lw	%x11, 16(%x22)  #0
	lw	%x12, 12(%x22)  #0
	lw	%x13, 8(%x22)  #0
	lw	%x14, 4(%x22)  #0
	flw	%f0, 0(%x11)  #2340
	lw	%x11, 4(%x14)  #2340
	sub	%x6, %x6, %x11  #2340
	sw	%x7, 0(%x2)  #2340
	sw	%x5, 4(%x2)  #2340
	sw	%x12, 8(%x2)  #2340
	sw	%x13, 12(%x2)  #2340
	sw	%x9, 16(%x2)  #2340
	sw	%x10, 20(%x2)  #2340
	fsw	%f0, 24(%x2)  #2340
	mv	%x5, %x6
	sw	%x1, 36(%x2)  #2340
	addi	%x2, %x2, 40  #2340
	jal	%x1, float_of_int.2553  #2340
	addi	%x2, %x2, -40  #2340
	lw	%x1, 36(%x2) #2340
	flw	%f2, 24(%x2)  #2340
	fmul	%f0, %f2, %f0  #2340
	lw	%x5, 20(%x2)  #2343
	flw	%f2, 0(%x5)  #2343
	fmul	%f2, %f0, %f2  #2343
	lw	%x6, 16(%x2)  #2343
	flw	%f4, 0(%x6)  #2343
	fadd	%f2, %f2, %f4  #2343
	flw	%f4, 8(%x5)  #2344
	fmul	%f4, %f0, %f4  #2344
	flw	%f6, 8(%x6)  #2344
	fadd	%f4, %f4, %f6  #2344
	flw	%f6, 16(%x5)  #2345
	fmul	%f0, %f0, %f6  #2345
	flw	%f6, 16(%x6)  #2345
	fadd	%f0, %f0, %f6  #2345
	lw	%x5, 12(%x2)  #2346
	lw	%x5, 0(%x5)  #2346
	addi	%x6, %x5, -1  #2346
	lw	%x5, 4(%x2)  #2346
	lw	%x7, 0(%x2)  #2346
	lw	%x22, 8(%x2)  #2346
	mv	%f28, %f4
	mv	%f29, %f5
	mv	%f4, %f0
	mv	%f5, %f1
	mv	%f0, %f2
	mv	%f1, %f3
	mv	%f2, %f28
	mv	%f3, %f29
	lw	0(%x23), %x22  #2346
	jalr	%x0, %x23, 0  #2346
	nop
scan_pixel.3039:  #32044
	lw	%x12, 24(%x22)  #0
	lw	%x13, 20(%x22)  #0
	lw	%x14, 16(%x22)  #0
	lw	%x15, 12(%x22)  #0
	lw	%x16, 8(%x22)  #0
	lw	%x17, 4(%x22)  #0
	lw	%x16, 0(%x16)  #2356
	bge	%x5, %x16, 12  #2356
	j	ble_else.9574
	nop
	ret
	nop
ble_else.9574:
	slli	%x16, %x5, 2  #2359
	lw	%x16, %x16(%x9)  #2359
	sw	%x22, 0(%x2)  #2359
	sw	%x11, 4(%x2)  #2359
	sw	%x12, 8(%x2)  #2359
	sw	%x7, 12(%x2)  #2359
	sw	%x13, 16(%x2)  #2359
	sw	%x17, 20(%x2)  #2359
	sw	%x9, 24(%x2)  #2359
	sw	%x10, 28(%x2)  #2359
	sw	%x6, 32(%x2)  #2359
	sw	%x5, 36(%x2)  #2359
	sw	%x15, 40(%x2)  #2359
	sw	%x14, 44(%x2)  #2359
	mv	%x5, %x16
	sw	%x1, 52(%x2)  #2359
	addi	%x2, %x2, 56  #2359
	jal	%x1, p_rgb.2724  #2359
	addi	%x2, %x2, -56  #2359
	lw	%x1, 52(%x2) #2359
	mv	%x6, %x5  #2359
	lw	%x5, 44(%x2)  #2359
	sw	%x1, 52(%x2)  #2359
	addi	%x2, %x2, 56  #2359
	jal	%x1, veccpy.2654  #2359
	addi	%x2, %x2, -56  #2359
	lw	%x1, 52(%x2) #2359
	lw	%x5, 36(%x2)  #2362
	lw	%x6, 32(%x2)  #2362
	lw	%x7, 28(%x2)  #2362
	lw	%x22, 40(%x2)  #2362
	sw	%x1, 52(%x2)  #2362
	lw	%x23, 0(%x22)  #2362
	addi	%x2, %x2, 56  #2362
	jalr	%x1, %x23, 0  #2362
	addi	%x2, %x2, -56  #2362
	lw	%x1, 52(%x2)  #2362
	beq	%x5, %x0, 12  #2362
	j	be_else.9576
	nop
	lw	%x5, 36(%x2)  #2365
	slli	%x6, %x5, 2  #2365
	lw	%x7, 24(%x2)  #2365
	lw	%x6, %x6(%x7)  #2365
	addi	%x9, %x0, 0  #0
	lw	%x22, 20(%x2)  #2365
	mv	%x5, %x6
	mv	%x6, %x9
	sw	%x1, 52(%x2)  #2365
	lw	%x23, 0(%x22)  #2365
	addi	%x2, %x2, 56  #2365
	jalr	%x1, %x23, 0  #2365
	addi	%x2, %x2, -56  #2365
	lw	%x1, 52(%x2)  #2365
	j	be_cont.9577
	nop
be_else.9576:
	addi	%x11, %x0, 0  #0
	lw	%x5, 36(%x2)  #2363
	lw	%x6, 32(%x2)  #2363
	lw	%x7, 12(%x2)  #2363
	lw	%x9, 24(%x2)  #2363
	lw	%x10, 28(%x2)  #2363
	lw	%x22, 16(%x2)  #2363
	sw	%x1, 52(%x2)  #2363
	lw	%x23, 0(%x22)  #2363
	addi	%x2, %x2, 56  #2363
	jalr	%x1, %x23, 0  #2363
	addi	%x2, %x2, -56  #2363
	lw	%x1, 52(%x2)  #2363
be_cont.9577:
	lw	%x5, 4(%x2)  #2368
	lw	%x22, 8(%x2)  #2368
	sw	%x1, 52(%x2)  #2368
	lw	%x23, 0(%x22)  #2368
	addi	%x2, %x2, 56  #2368
	jalr	%x1, %x23, 0  #2368
	addi	%x2, %x2, -56  #2368
	lw	%x1, 52(%x2)  #2368
	lw	%x5, 36(%x2)  #2370
	addi	%x5, %x5, 1  #2370
	lw	%x6, 32(%x2)  #2370
	lw	%x7, 12(%x2)  #2370
	lw	%x9, 24(%x2)  #2370
	lw	%x10, 28(%x2)  #2370
	lw	%x11, 4(%x2)  #2370
	lw	%x22, 0(%x2)  #2370
	lw	0(%x23), %x22  #2370
	jalr	%x0, %x23, 0  #2370
	nop
scan_line.3046:  #32444
	lw	%x12, 12(%x22)  #0
	lw	%x13, 8(%x22)  #0
	lw	%x14, 4(%x22)  #0
	lw	%x15, 4(%x14)  #2377
	bge	%x5, %x15, 12  #2377
	j	ble_else.9578
	nop
	ret
	nop
ble_else.9578:
	lw	%x14, 4(%x14)  #2379
	addi	%x14, %x14, -1  #2379
	sw	%x22, 0(%x2)  #2379
	sw	%x10, 4(%x2)  #2379
	sw	%x11, 8(%x2)  #2379
	sw	%x9, 12(%x2)  #2379
	sw	%x7, 16(%x2)  #2379
	sw	%x6, 20(%x2)  #2379
	sw	%x5, 24(%x2)  #2379
	sw	%x12, 28(%x2)  #2379
	bge	%x5, %x14, 12  #2379
	j	ble_else.9580
	nop
	j	ble_cont.9581
	nop
ble_else.9580:
	addi	%x14, %x5, 1  #2380
	mv	%x7, %x10
	mv	%x6, %x14
	mv	%x5, %x9
	mv	%x22, %x13
	sw	%x1, 36(%x2)  #2380
	lw	%x23, 0(%x22)  #2380
	addi	%x2, %x2, 40  #2380
	jalr	%x1, %x23, 0  #2380
	addi	%x2, %x2, -40  #2380
	lw	%x1, 36(%x2)  #2380
ble_cont.9581:
	addi	%x5, %x0, 0  #0
	lw	%x6, 24(%x2)  #2382
	lw	%x7, 20(%x2)  #2382
	lw	%x9, 16(%x2)  #2382
	lw	%x10, 12(%x2)  #2382
	lw	%x11, 8(%x2)  #2382
	lw	%x22, 28(%x2)  #2382
	sw	%x1, 36(%x2)  #2382
	lw	%x23, 0(%x22)  #2382
	addi	%x2, %x2, 40  #2382
	jalr	%x1, %x23, 0  #2382
	addi	%x2, %x2, -40  #2382
	lw	%x1, 36(%x2)  #2382
	lw	%x5, 24(%x2)  #2383
	addi	%x5, %x5, 1  #2383
	addi	%x6, %x0, 2  #0
	lw	%x7, 4(%x2)  #2383
	sw	%x5, 32(%x2)  #2383
	mv	%x5, %x7
	sw	%x1, 36(%x2)  #2383
	addi	%x2, %x2, 40  #2383
	jal	%x1, add_mod5.2641  #2383
	addi	%x2, %x2, -40  #2383
	lw	%x1, 36(%x2) #2383
	mv	%x10, %x5  #2383
	lw	%x5, 32(%x2)  #2383
	lw	%x6, 16(%x2)  #2383
	lw	%x7, 12(%x2)  #2383
	lw	%x9, 20(%x2)  #2383
	lw	%x11, 8(%x2)  #2383
	lw	%x22, 0(%x2)  #2383
	lw	0(%x23), %x22  #2383
	jalr	%x0, %x23, 0  #2383
	nop
create_float5x3array.3053:  #32720
	addi	%x5, %x0, 3  #0
	mv	%f0, l.6293  #0
	sw	%x1, 4(%x2)  #2394
	addi	%x2, %x2, 8  #2394
	jal	%x1, create_float_array.2600  #2394
	addi	%x2, %x2, -8  #2394
	lw	%x1, 4(%x2) #2394
	mv	%x6, %x5  #2394
	addi	%x5, %x0, 5  #0
	sw	%x1, 4(%x2)  #2395
	addi	%x2, %x2, 8  #2395
	jal	%x1, create_array.2593  #2395
	addi	%x2, %x2, -8  #2395
	lw	%x1, 4(%x2) #2395
	addi	%x6, %x0, 3  #0
	mv	%f0, l.6293  #0
	sw	%x5, 0(%x2)  #2396
	mv	%x5, %x6
	sw	%x1, 4(%x2)  #2396
	addi	%x2, %x2, 8  #2396
	jal	%x1, create_float_array.2600  #2396
	addi	%x2, %x2, -8  #2396
	lw	%x1, 4(%x2) #2396
	lw	%x6, 0(%x2)  #2396
	sw	%x5, 4(%x6)  #2396
	addi	%x5, %x0, 3  #0
	mv	%f0, l.6293  #0
	sw	%x1, 4(%x2)  #2397
	addi	%x2, %x2, 8  #2397
	jal	%x1, create_float_array.2600  #2397
	addi	%x2, %x2, -8  #2397
	lw	%x1, 4(%x2) #2397
	lw	%x6, 0(%x2)  #2397
	sw	%x5, 8(%x6)  #2397
	addi	%x5, %x0, 3  #0
	mv	%f0, l.6293  #0
	sw	%x1, 4(%x2)  #2398
	addi	%x2, %x2, 8  #2398
	jal	%x1, create_float_array.2600  #2398
	addi	%x2, %x2, -8  #2398
	lw	%x1, 4(%x2) #2398
	lw	%x6, 0(%x2)  #2398
	sw	%x5, 12(%x6)  #2398
	addi	%x5, %x0, 3  #0
	mv	%f0, l.6293  #0
	sw	%x1, 4(%x2)  #2399
	addi	%x2, %x2, 8  #2399
	jal	%x1, create_float_array.2600  #2399
	addi	%x2, %x2, -8  #2399
	lw	%x1, 4(%x2) #2399
	lw	%x6, 0(%x2)  #2399
	sw	%x5, 16(%x6)  #2399
	mv	%x5, %x6  #2400
	ret
	nop
create_pixel.3055:  #32940
	addi	%x5, %x0, 3  #0
	mv	%f0, l.6293  #0
	sw	%x1, 4(%x2)  #2406
	addi	%x2, %x2, 8  #2406
	jal	%x1, create_float_array.2600  #2406
	addi	%x2, %x2, -8  #2406
	lw	%x1, 4(%x2) #2406
	sw	%x5, 0(%x2)  #2407
	mv	%x5, %g0
	sw	%x1, 4(%x2)  #2407
	addi	%x2, %x2, 8  #2407
	jal	%x1, create_float5x3array.3053  #2407
	addi	%x2, %x2, -8  #2407
	lw	%x1, 4(%x2) #2407
	addi	%x6, %x0, 5  #0
	addi	%x7, %x0, 0  #0
	sw	%x5, 4(%x2)  #2408
	mv	%x5, %x6
	mv	%x6, %x7
	sw	%x1, 12(%x2)  #2408
	addi	%x2, %x2, 16  #2408
	jal	%x1, create_array.2593  #2408
	addi	%x2, %x2, -16  #2408
	lw	%x1, 12(%x2) #2408
	addi	%x6, %x0, 5  #0
	addi	%x7, %x0, 0  #0
	sw	%x5, 8(%x2)  #2409
	mv	%x5, %x6
	mv	%x6, %x7
	sw	%x1, 12(%x2)  #2409
	addi	%x2, %x2, 16  #2409
	jal	%x1, create_array.2593  #2409
	addi	%x2, %x2, -16  #2409
	lw	%x1, 12(%x2) #2409
	sw	%x5, 12(%x2)  #2410
	mv	%x5, %g0
	sw	%x1, 20(%x2)  #2410
	addi	%x2, %x2, 24  #2410
	jal	%x1, create_float5x3array.3053  #2410
	addi	%x2, %x2, -24  #2410
	lw	%x1, 20(%x2) #2410
	sw	%x5, 16(%x2)  #2411
	mv	%x5, %g0
	sw	%x1, 20(%x2)  #2411
	addi	%x2, %x2, 24  #2411
	jal	%x1, create_float5x3array.3053  #2411
	addi	%x2, %x2, -24  #2411
	lw	%x1, 20(%x2) #2411
	addi	%x6, %x0, 1  #0
	addi	%x7, %x0, 0  #0
	sw	%x5, 20(%x2)  #2412
	mv	%x5, %x6
	mv	%x6, %x7
	sw	%x1, 28(%x2)  #2412
	addi	%x2, %x2, 32  #2412
	jal	%x1, create_array.2593  #2412
	addi	%x2, %x2, -32  #2412
	lw	%x1, 28(%x2) #2412
	sw	%x5, 24(%x2)  #2413
	mv	%x5, %g0
	sw	%x1, 28(%x2)  #2413
	addi	%x2, %x2, 32  #2413
	jal	%x1, create_float5x3array.3053  #2413
	addi	%x2, %x2, -32  #2413
	lw	%x1, 28(%x2) #2413
	mv	%x6, %x3  #2414
	addi	%x3, %x3, 32  #2414
	sw	%x5, 28(%x6)  #2414
	lw	%x5, 24(%x2)  #2414
	sw	%x5, 24(%x6)  #2414
	lw	%x5, 20(%x2)  #2414
	sw	%x5, 20(%x6)  #2414
	lw	%x5, 16(%x2)  #2414
	sw	%x5, 16(%x6)  #2414
	lw	%x5, 12(%x2)  #2414
	sw	%x5, 12(%x6)  #2414
	lw	%x5, 8(%x2)  #2414
	sw	%x5, 8(%x6)  #2414
	lw	%x5, 4(%x2)  #2414
	sw	%x5, 4(%x6)  #2414
	lw	%x5, 0(%x2)  #2414
	sw	%x5, 0(%x6)  #2414
	mv	%x5, %x6  #2414
	ret
	nop
init_line_elements.3057:  #33280
	bge	%x6, %x0, 12  #2419
	j	bge_else.9582
	nop
	sw	%x5, 0(%x2)  #2420
	sw	%x6, 4(%x2)  #2420
	mv	%x5, %g0
	sw	%x1, 12(%x2)  #2420
	addi	%x2, %x2, 16  #2420
	jal	%x1, create_pixel.3055  #2420
	addi	%x2, %x2, -16  #2420
	lw	%x1, 12(%x2) #2420
	lw	%x6, 4(%x2)  #2420
	slli	%x7, %x6, 2  #2420
	lw	%x9, 0(%x2)  #2420
	sw	%x5, %x7(%x9)  #2420
	addi	%x6, %x6, -1  #2421
	mv	%x5, %x9
	j	init_line_elements.3057  #2421
	nop
bge_else.9582:
	ret
	nop
create_pixelline.3060:  #33364
	lw	%x5, 4(%x22)  #0
	lw	%x6, 0(%x5)  #2428
	sw	%x5, 0(%x2)  #2428
	sw	%x6, 4(%x2)  #2428
	mv	%x5, %g0
	sw	%x1, 12(%x2)  #2428
	addi	%x2, %x2, 16  #2428
	jal	%x1, create_pixel.3055  #2428
	addi	%x2, %x2, -16  #2428
	lw	%x1, 12(%x2) #2428
	mv	%x6, %x5  #2428
	lw	%x5, 4(%x2)  #2428
	sw	%x1, 12(%x2)  #2428
	addi	%x2, %x2, 16  #2428
	jal	%x1, create_array.2593  #2428
	addi	%x2, %x2, -16  #2428
	lw	%x1, 12(%x2) #2428
	lw	%x6, 0(%x2)  #2429
	lw	%x6, 0(%x6)  #2429
	addi	%x6, %x6, -2  #2429
	j	init_line_elements.3057  #2429
	nop
tan.3062:  #33452
	fsw	%f0, 0(%x2)  #2442
	sw	%x1, 12(%x2)  #2442
	addi	%x2, %x2, 16  #2442
	jal	%x1, sin.2543  #2442
	addi	%x2, %x2, -16  #2442
	lw	%x1, 12(%x2) #2442
	flw	%f2, 0(%x2)  #2442
	fsw	%f0, 8(%x2)  #2442
	mv	%f0, %f2
	mv	%f1, %f3
	sw	%x1, 20(%x2)  #2442
	addi	%x2, %x2, 24  #2442
	jal	%x1, cos.2545  #2442
	addi	%x2, %x2, -24  #2442
	lw	%x1, 20(%x2) #2442
	flw	%f2, 8(%x2)  #2442
	fdiv	%f0, %f2, %f0  #2442
	ret
	nop
adjust_position.3064:  #33528
	fmul	%f0, %f0, %f0  #2447
	mv	%f4, l.6871  #0
	fadd	%f0, %f0, %f4  #2447
	fsqrt	%f0, %f0  #2447
	mv	%f4, l.6305  #0
	fdiv	%f4, %f4, %f0  #2448
	fsw	%f0, 0(%x2)  #2449
	fsw	%f2, 8(%x2)  #2449
	mv	%f0, %f4
	mv	%f1, %f5
	sw	%x1, 20(%x2)  #2449
	addi	%x2, %x2, 24  #2449
	jal	%x1, atan.2547  #2449
	addi	%x2, %x2, -24  #2449
	lw	%x1, 20(%x2) #2449
	flw	%f2, 8(%x2)  #2450
	fmul	%f0, %f0, %f2  #2450
	sw	%x1, 20(%x2)  #2450
	addi	%x2, %x2, 24  #2450
	jal	%x1, tan.3062  #2450
	addi	%x2, %x2, -24  #2450
	lw	%x1, 20(%x2) #2450
	flw	%f2, 0(%x2)  #2451
	fmul	%f0, %f0, %f2  #2451
	ret
	nop
calc_dirvec.3067:  #33632
	lw	%x9, 4(%x22)  #0
	addi	%x24, %x0, 5
	bge	%x5, %x24, 12  #2456
	j	bge_else.9583
	nop
	sw	%x7, 0(%x2)  #2457
	sw	%x9, 4(%x2)  #2457
	sw	%x6, 8(%x2)  #2457
	fsw	%f0, 16(%x2)  #2457
	fsw	%f2, 24(%x2)  #2457
	sw	%x1, 36(%x2)  #2457
	addi	%x2, %x2, 40  #2457
	jal	%x1, fsqr.2536  #2457
	addi	%x2, %x2, -40  #2457
	lw	%x1, 36(%x2) #2457
	flw	%f2, 24(%x2)  #2457
	fsw	%f0, 32(%x2)  #2457
	mv	%f0, %f2
	mv	%f1, %f3
	sw	%x1, 44(%x2)  #2457
	addi	%x2, %x2, 48  #2457
	jal	%x1, fsqr.2536  #2457
	addi	%x2, %x2, -48  #2457
	lw	%x1, 44(%x2) #2457
	flw	%f2, 32(%x2)  #2457
	fadd	%f0, %f2, %f0  #2457
	mv	%f2, l.6305  #0
	fadd	%f0, %f0, %f2  #2457
	fsqrt	%f0, %f0  #2457
	flw	%f2, 16(%x2)  #2458
	fdiv	%f2, %f2, %f0  #2458
	flw	%f4, 24(%x2)  #2459
	fdiv	%f4, %f4, %f0  #2459
	mv	%f6, l.6305  #0
	fdiv	%f0, %f6, %f0  #2460
	lw	%x5, 8(%x2)  #2463
	slli	%x5, %x5, 2  #2463
	lw	%x6, 4(%x2)  #2463
	lw	%x5, %x5(%x6)  #2463
	lw	%x6, 0(%x2)  #2464
	slli	%x7, %x6, 2  #2464
	lw	%x7, %x7(%x5)  #2464
	sw	%x5, 40(%x2)  #2464
	fsw	%f0, 48(%x2)  #2464
	fsw	%f4, 56(%x2)  #2464
	fsw	%f2, 64(%x2)  #2464
	mv	%x5, %x7
	sw	%x1, 76(%x2)  #2464
	addi	%x2, %x2, 80  #2464
	jal	%x1, d_vec.2743  #2464
	addi	%x2, %x2, -80  #2464
	lw	%x1, 76(%x2) #2464
	flw	%f0, 64(%x2)  #2464
	flw	%f2, 56(%x2)  #2464
	flw	%f4, 48(%x2)  #2464
	sw	%x1, 76(%x2)  #2464
	addi	%x2, %x2, 80  #2464
	jal	%x1, vecset.2644  #2464
	addi	%x2, %x2, -80  #2464
	lw	%x1, 76(%x2) #2464
	lw	%x5, 0(%x2)  #2465
	addi	%x6, %x5, 40  #2465
	slli	%x6, %x6, 2  #2465
	lw	%x7, 40(%x2)  #2465
	lw	%x6, %x6(%x7)  #2465
	mv	%x5, %x6
	sw	%x1, 76(%x2)  #2465
	addi	%x2, %x2, 80  #2465
	jal	%x1, d_vec.2743  #2465
	addi	%x2, %x2, -80  #2465
	lw	%x1, 76(%x2) #2465
	flw	%f0, 56(%x2)  #2465
	sw	%x5, 72(%x2)  #2465
	sw	%x1, 76(%x2)  #2465
	addi	%x2, %x2, 80  #2465
	jal	%x1, fneg.2534  #2465
	addi	%x2, %x2, -80  #2465
	lw	%x1, 76(%x2) #2465
	mv	%f4, %f0  #2465
	mv	%f5, %f1  #2465
	flw	%f0, 64(%x2)  #2465
	flw	%f2, 48(%x2)  #2465
	lw	%x5, 72(%x2)  #2465
	sw	%x1, 76(%x2)  #2465
	addi	%x2, %x2, 80  #2465
	jal	%x1, vecset.2644  #2465
	addi	%x2, %x2, -80  #2465
	lw	%x1, 76(%x2) #2465
	lw	%x5, 0(%x2)  #2466
	addi	%x6, %x5, 80  #2466
	slli	%x6, %x6, 2  #2466
	lw	%x7, 40(%x2)  #2466
	lw	%x6, %x6(%x7)  #2466
	mv	%x5, %x6
	sw	%x1, 76(%x2)  #2466
	addi	%x2, %x2, 80  #2466
	jal	%x1, d_vec.2743  #2466
	addi	%x2, %x2, -80  #2466
	lw	%x1, 76(%x2) #2466
	flw	%f0, 64(%x2)  #2466
	sw	%x5, 76(%x2)  #2466
	sw	%x1, 84(%x2)  #2466
	addi	%x2, %x2, 88  #2466
	jal	%x1, fneg.2534  #2466
	addi	%x2, %x2, -88  #2466
	lw	%x1, 84(%x2) #2466
	flw	%f2, 56(%x2)  #2466
	fsw	%f0, 80(%x2)  #2466
	mv	%f0, %f2
	mv	%f1, %f3
	sw	%x1, 92(%x2)  #2466
	addi	%x2, %x2, 96  #2466
	jal	%x1, fneg.2534  #2466
	addi	%x2, %x2, -96  #2466
	lw	%x1, 92(%x2) #2466
	mv	%f4, %f0  #2466
	mv	%f5, %f1  #2466
	flw	%f0, 48(%x2)  #2466
	flw	%f2, 80(%x2)  #2466
	lw	%x5, 76(%x2)  #2466
	sw	%x1, 92(%x2)  #2466
	addi	%x2, %x2, 96  #2466
	jal	%x1, vecset.2644  #2466
	addi	%x2, %x2, -96  #2466
	lw	%x1, 92(%x2) #2466
	lw	%x5, 0(%x2)  #2467
	addi	%x6, %x5, 1  #2467
	slli	%x6, %x6, 2  #2467
	lw	%x7, 40(%x2)  #2467
	lw	%x6, %x6(%x7)  #2467
	mv	%x5, %x6
	sw	%x1, 92(%x2)  #2467
	addi	%x2, %x2, 96  #2467
	jal	%x1, d_vec.2743  #2467
	addi	%x2, %x2, -96  #2467
	lw	%x1, 92(%x2) #2467
	flw	%f0, 64(%x2)  #2467
	sw	%x5, 88(%x2)  #2467
	sw	%x1, 92(%x2)  #2467
	addi	%x2, %x2, 96  #2467
	jal	%x1, fneg.2534  #2467
	addi	%x2, %x2, -96  #2467
	lw	%x1, 92(%x2) #2467
	flw	%f2, 56(%x2)  #2467
	fsw	%f0, 96(%x2)  #2467
	mv	%f0, %f2
	mv	%f1, %f3
	sw	%x1, 108(%x2)  #2467
	addi	%x2, %x2, 112  #2467
	jal	%x1, fneg.2534  #2467
	addi	%x2, %x2, -112  #2467
	lw	%x1, 108(%x2) #2467
	flw	%f2, 48(%x2)  #2467
	fsw	%f0, 104(%x2)  #2467
	mv	%f0, %f2
	mv	%f1, %f3
	sw	%x1, 116(%x2)  #2467
	addi	%x2, %x2, 120  #2467
	jal	%x1, fneg.2534  #2467
	addi	%x2, %x2, -120  #2467
	lw	%x1, 116(%x2) #2467
	mv	%f4, %f0  #2467
	mv	%f5, %f1  #2467
	flw	%f0, 96(%x2)  #2467
	flw	%f2, 104(%x2)  #2467
	lw	%x5, 88(%x2)  #2467
	sw	%x1, 116(%x2)  #2467
	addi	%x2, %x2, 120  #2467
	jal	%x1, vecset.2644  #2467
	addi	%x2, %x2, -120  #2467
	lw	%x1, 116(%x2) #2467
	lw	%x5, 0(%x2)  #2468
	addi	%x6, %x5, 41  #2468
	slli	%x6, %x6, 2  #2468
	lw	%x7, 40(%x2)  #2468
	lw	%x6, %x6(%x7)  #2468
	mv	%x5, %x6
	sw	%x1, 116(%x2)  #2468
	addi	%x2, %x2, 120  #2468
	jal	%x1, d_vec.2743  #2468
	addi	%x2, %x2, -120  #2468
	lw	%x1, 116(%x2) #2468
	flw	%f0, 64(%x2)  #2468
	sw	%x5, 112(%x2)  #2468
	sw	%x1, 116(%x2)  #2468
	addi	%x2, %x2, 120  #2468
	jal	%x1, fneg.2534  #2468
	addi	%x2, %x2, -120  #2468
	lw	%x1, 116(%x2) #2468
	flw	%f2, 48(%x2)  #2468
	fsw	%f0, 120(%x2)  #2468
	mv	%f0, %f2
	mv	%f1, %f3
	sw	%x1, 132(%x2)  #2468
	addi	%x2, %x2, 136  #2468
	jal	%x1, fneg.2534  #2468
	addi	%x2, %x2, -136  #2468
	lw	%x1, 132(%x2) #2468
	mv	%f2, %f0  #2468
	mv	%f3, %f1  #2468
	flw	%f0, 120(%x2)  #2468
	flw	%f4, 56(%x2)  #2468
	lw	%x5, 112(%x2)  #2468
	sw	%x1, 132(%x2)  #2468
	addi	%x2, %x2, 136  #2468
	jal	%x1, vecset.2644  #2468
	addi	%x2, %x2, -136  #2468
	lw	%x1, 132(%x2) #2468
	lw	%x5, 0(%x2)  #2469
	addi	%x5, %x5, 81  #2469
	slli	%x5, %x5, 2  #2469
	lw	%x6, 40(%x2)  #2469
	lw	%x5, %x5(%x6)  #2469
	sw	%x1, 132(%x2)  #2469
	addi	%x2, %x2, 136  #2469
	jal	%x1, d_vec.2743  #2469
	addi	%x2, %x2, -136  #2469
	lw	%x1, 132(%x2) #2469
	flw	%f0, 48(%x2)  #2469
	sw	%x5, 128(%x2)  #2469
	sw	%x1, 132(%x2)  #2469
	addi	%x2, %x2, 136  #2469
	jal	%x1, fneg.2534  #2469
	addi	%x2, %x2, -136  #2469
	lw	%x1, 132(%x2) #2469
	flw	%f2, 64(%x2)  #2469
	flw	%f4, 56(%x2)  #2469
	lw	%x5, 128(%x2)  #2469
	j	vecset.2644  #2469
	nop
bge_else.9583:
	fsw	%f4, 136(%x2)  #2471
	sw	%x7, 0(%x2)  #2471
	sw	%x6, 8(%x2)  #2471
	sw	%x22, 144(%x2)  #2471
	fsw	%f6, 152(%x2)  #2471
	sw	%x5, 160(%x2)  #2471
	mv	%f0, %f2
	mv	%f1, %f3
	mv	%f2, %f4
	mv	%f3, %f5
	sw	%x1, 164(%x2)  #2471
	addi	%x2, %x2, 168  #2471
	jal	%x1, adjust_position.3064  #2471
	addi	%x2, %x2, -168  #2471
	lw	%x1, 164(%x2) #2471
	lw	%x5, 160(%x2)  #2472
	addi	%x5, %x5, 1  #2472
	flw	%f2, 152(%x2)  #2472
	fsw	%f0, 168(%x2)  #2472
	sw	%x5, 176(%x2)  #2472
	sw	%x1, 180(%x2)  #2472
	addi	%x2, %x2, 184  #2472
	jal	%x1, adjust_position.3064  #2472
	addi	%x2, %x2, -184  #2472
	lw	%x1, 180(%x2) #2472
	mv	%f2, %f0  #2472
	mv	%f3, %f1  #2472
	flw	%f0, 168(%x2)  #2472
	flw	%f4, 136(%x2)  #2472
	flw	%f6, 152(%x2)  #2472
	lw	%x5, 176(%x2)  #2472
	lw	%x6, 8(%x2)  #2472
	lw	%x7, 0(%x2)  #2472
	lw	%x22, 144(%x2)  #2472
	lw	0(%x23), %x22  #2472
	jalr	%x0, %x23, 0  #2472
	nop
calc_dirvecs.3075:  #34696
	lw	%x9, 4(%x22)  #0
	bge	%x5, %x0, 12  #2477
	j	bge_else.9591
	nop
	sw	%x22, 0(%x2)  #2479
	sw	%x5, 4(%x2)  #2479
	fsw	%f0, 8(%x2)  #2479
	sw	%x7, 16(%x2)  #2479
	sw	%x6, 20(%x2)  #2479
	sw	%x9, 24(%x2)  #2479
	sw	%x1, 28(%x2)  #2479
	addi	%x2, %x2, 32  #2479
	jal	%x1, float_of_int.2553  #2479
	addi	%x2, %x2, -32  #2479
	lw	%x1, 28(%x2) #2479
	mv	%f2, l.6314  #0
	fmul	%f0, %f0, %f2  #2479
	mv	%f2, l.7004  #0
	fsub	%f4, %f0, %f2  #2479
	addi	%x5, %x0, 0  #0
	mv	%f0, l.6293  #0
	mv	%f2, l.6293  #0
	flw	%f6, 8(%x2)  #2480
	lw	%x6, 20(%x2)  #2480
	lw	%x7, 16(%x2)  #2480
	lw	%x22, 24(%x2)  #2480
	sw	%x1, 28(%x2)  #2480
	lw	%x23, 0(%x22)  #2480
	addi	%x2, %x2, 32  #2480
	jalr	%x1, %x23, 0  #2480
	addi	%x2, %x2, -32  #2480
	lw	%x1, 28(%x2)  #2480
	lw	%x5, 4(%x2)  #2482
	sw	%x1, 28(%x2)  #2482
	addi	%x2, %x2, 32  #2482
	jal	%x1, float_of_int.2553  #2482
	addi	%x2, %x2, -32  #2482
	lw	%x1, 28(%x2) #2482
	mv	%f2, l.6314  #0
	fmul	%f0, %f0, %f2  #2482
	mv	%f2, l.6871  #0
	fadd	%f4, %f0, %f2  #2482
	addi	%x5, %x0, 0  #0
	mv	%f0, l.6293  #0
	mv	%f2, l.6293  #0
	lw	%x6, 16(%x2)  #2483
	addi	%x7, %x6, 2  #2483
	flw	%f6, 8(%x2)  #2483
	lw	%x9, 20(%x2)  #2483
	lw	%x22, 24(%x2)  #2483
	mv	%x6, %x9
	sw	%x1, 28(%x2)  #2483
	lw	%x23, 0(%x22)  #2483
	addi	%x2, %x2, 32  #2483
	jalr	%x1, %x23, 0  #2483
	addi	%x2, %x2, -32  #2483
	lw	%x1, 28(%x2)  #2483
	lw	%x5, 4(%x2)  #2485
	addi	%x5, %x5, -1  #2485
	addi	%x6, %x0, 1  #0
	lw	%x7, 20(%x2)  #2485
	sw	%x5, 28(%x2)  #2485
	mv	%x5, %x7
	sw	%x1, 36(%x2)  #2485
	addi	%x2, %x2, 40  #2485
	jal	%x1, add_mod5.2641  #2485
	addi	%x2, %x2, -40  #2485
	lw	%x1, 36(%x2) #2485
	mv	%x6, %x5  #2485
	flw	%f0, 8(%x2)  #2485
	lw	%x5, 28(%x2)  #2485
	lw	%x7, 16(%x2)  #2485
	lw	%x22, 0(%x2)  #2485
	lw	0(%x23), %x22  #2485
	jalr	%x0, %x23, 0  #2485
	nop
bge_else.9591:
	ret
	nop
calc_dirvec_rows.3080:  #35008
	lw	%x9, 4(%x22)  #0
	bge	%x5, %x0, 12  #2491
	j	bge_else.9593
	nop
	sw	%x22, 0(%x2)  #2492
	sw	%x5, 4(%x2)  #2492
	sw	%x7, 8(%x2)  #2492
	sw	%x6, 12(%x2)  #2492
	sw	%x9, 16(%x2)  #2492
	sw	%x1, 20(%x2)  #2492
	addi	%x2, %x2, 24  #2492
	jal	%x1, float_of_int.2553  #2492
	addi	%x2, %x2, -24  #2492
	lw	%x1, 20(%x2) #2492
	mv	%f2, l.6314  #0
	fmul	%f0, %f0, %f2  #2492
	mv	%f2, l.7004  #0
	fsub	%f0, %f0, %f2  #2492
	addi	%x5, %x0, 4  #0
	lw	%x6, 12(%x2)  #2493
	lw	%x7, 8(%x2)  #2493
	lw	%x22, 16(%x2)  #2493
	sw	%x1, 20(%x2)  #2493
	lw	%x23, 0(%x22)  #2493
	addi	%x2, %x2, 24  #2493
	jalr	%x1, %x23, 0  #2493
	addi	%x2, %x2, -24  #2493
	lw	%x1, 20(%x2)  #2493
	lw	%x5, 4(%x2)  #2494
	addi	%x5, %x5, -1  #2494
	addi	%x6, %x0, 2  #0
	lw	%x7, 12(%x2)  #2494
	sw	%x5, 20(%x2)  #2494
	mv	%x5, %x7
	sw	%x1, 28(%x2)  #2494
	addi	%x2, %x2, 32  #2494
	jal	%x1, add_mod5.2641  #2494
	addi	%x2, %x2, -32  #2494
	lw	%x1, 28(%x2) #2494
	mv	%x6, %x5  #2494
	lw	%x5, 8(%x2)  #2494
	addi	%x7, %x5, 4  #2494
	lw	%x5, 20(%x2)  #2494
	lw	%x22, 0(%x2)  #2494
	lw	0(%x23), %x22  #2494
	jalr	%x0, %x23, 0  #2494
	nop
bge_else.9593:
	ret
	nop
create_dirvec.3084:  #35204
	lw	%x5, 4(%x22)  #0
	addi	%x6, %x0, 3  #0
	mv	%f0, l.6293  #0
	sw	%x5, 0(%x2)  #2504
	mv	%x5, %x6
	sw	%x1, 4(%x2)  #2504
	addi	%x2, %x2, 8  #2504
	jal	%x1, create_float_array.2600  #2504
	addi	%x2, %x2, -8  #2504
	lw	%x1, 4(%x2) #2504
	mv	%x6, %x5  #2504
	lw	%x5, 0(%x2)  #2505
	lw	%x5, 0(%x5)  #2505
	sw	%x6, 4(%x2)  #2505
	sw	%x1, 12(%x2)  #2505
	addi	%x2, %x2, 16  #2505
	jal	%x1, create_array.2593  #2505
	addi	%x2, %x2, -16  #2505
	lw	%x1, 12(%x2) #2505
	mv	%x6, %x3  #2506
	addi	%x3, %x3, 8  #2506
	sw	%x5, 4(%x6)  #2506
	lw	%x5, 4(%x2)  #2506
	sw	%x5, 0(%x6)  #2506
	mv	%x5, %x6  #2506
	ret
	nop
create_dirvec_elements.3086:  #35312
	lw	%x7, 4(%x22)  #0
	bge	%x6, %x0, 12  #2510
	j	bge_else.9595
	nop
	sw	%x22, 0(%x2)  #2511
	sw	%x5, 4(%x2)  #2511
	sw	%x6, 8(%x2)  #2511
	mv	%x5, %g0
	mv	%x22, %x7
	sw	%x1, 12(%x2)  #2511
	lw	%x23, 0(%x22)  #2511
	addi	%x2, %x2, 16  #2511
	jalr	%x1, %x23, 0  #2511
	addi	%x2, %x2, -16  #2511
	lw	%x1, 12(%x2)  #2511
	lw	%x6, 8(%x2)  #2511
	slli	%x7, %x6, 2  #2511
	lw	%x9, 4(%x2)  #2511
	sw	%x5, %x7(%x9)  #2511
	addi	%x6, %x6, -1  #2512
	lw	%x22, 0(%x2)  #2512
	mv	%x5, %x9
	lw	0(%x23), %x22  #2512
	jalr	%x0, %x23, 0  #2512
	nop
bge_else.9595:
	ret
	nop
create_dirvecs.3089:  #35420
	lw	%x6, 12(%x22)  #0
	lw	%x7, 8(%x22)  #0
	lw	%x9, 4(%x22)  #0
	bge	%x5, %x0, 12  #2517
	j	bge_else.9597
	nop
	addi	%x10, %x0, 120  #0
	sw	%x22, 0(%x2)  #2518
	sw	%x7, 4(%x2)  #2518
	sw	%x6, 8(%x2)  #2518
	sw	%x5, 12(%x2)  #2518
	sw	%x10, 16(%x2)  #2518
	mv	%x5, %g0
	mv	%x22, %x9
	sw	%x1, 20(%x2)  #2518
	lw	%x23, 0(%x22)  #2518
	addi	%x2, %x2, 24  #2518
	jalr	%x1, %x23, 0  #2518
	addi	%x2, %x2, -24  #2518
	lw	%x1, 20(%x2)  #2518
	mv	%x6, %x5  #2518
	lw	%x5, 16(%x2)  #2518
	sw	%x1, 20(%x2)  #2518
	addi	%x2, %x2, 24  #2518
	jal	%x1, create_array.2593  #2518
	addi	%x2, %x2, -24  #2518
	lw	%x1, 20(%x2) #2518
	lw	%x6, 12(%x2)  #2518
	slli	%x7, %x6, 2  #2518
	lw	%x9, 8(%x2)  #2518
	sw	%x5, %x7(%x9)  #2518
	slli	%x5, %x6, 2  #2519
	lw	%x5, %x5(%x9)  #2519
	addi	%x7, %x0, 118  #0
	lw	%x22, 4(%x2)  #2519
	mv	%x6, %x7
	sw	%x1, 20(%x2)  #2519
	lw	%x23, 0(%x22)  #2519
	addi	%x2, %x2, 24  #2519
	jalr	%x1, %x23, 0  #2519
	addi	%x2, %x2, -24  #2519
	lw	%x1, 20(%x2)  #2519
	lw	%x5, 12(%x2)  #2520
	addi	%x5, %x5, -1  #2520
	lw	%x22, 0(%x2)  #2520
	lw	0(%x23), %x22  #2520
	jalr	%x0, %x23, 0  #2520
	nop
bge_else.9597:
	ret
	nop
init_dirvec_constants.3091:  #35620
	lw	%x7, 4(%x22)  #0
	bge	%x6, %x0, 12  #2529
	j	bge_else.9599
	nop
	slli	%x9, %x6, 2  #2530
	lw	%x9, %x9(%x5)  #2530
	sw	%x5, 0(%x2)  #2530
	sw	%x22, 4(%x2)  #2530
	sw	%x6, 8(%x2)  #2530
	mv	%x5, %x9
	mv	%x22, %x7
	sw	%x1, 12(%x2)  #2530
	lw	%x23, 0(%x22)  #2530
	addi	%x2, %x2, 16  #2530
	jalr	%x1, %x23, 0  #2530
	addi	%x2, %x2, -16  #2530
	lw	%x1, 12(%x2)  #2530
	lw	%x5, 8(%x2)  #2531
	addi	%x6, %x5, -1  #2531
	lw	%x5, 0(%x2)  #2531
	lw	%x22, 4(%x2)  #2531
	lw	0(%x23), %x22  #2531
	jalr	%x0, %x23, 0  #2531
	nop
bge_else.9599:
	ret
	nop
init_vecset_constants.3094:  #35724
	lw	%x6, 8(%x22)  #0
	lw	%x7, 4(%x22)  #0
	bge	%x5, %x0, 12  #2536
	j	bge_else.9601
	nop
	slli	%x9, %x5, 2  #2537
	lw	%x7, %x9(%x7)  #2537
	addi	%x9, %x0, 119  #0
	sw	%x22, 0(%x2)  #2537
	sw	%x5, 4(%x2)  #2537
	mv	%x5, %x7
	mv	%x22, %x6
	mv	%x6, %x9
	sw	%x1, 12(%x2)  #2537
	lw	%x23, 0(%x22)  #2537
	addi	%x2, %x2, 16  #2537
	jalr	%x1, %x23, 0  #2537
	addi	%x2, %x2, -16  #2537
	lw	%x1, 12(%x2)  #2537
	lw	%x5, 4(%x2)  #2538
	addi	%x5, %x5, -1  #2538
	lw	%x22, 0(%x2)  #2538
	lw	0(%x23), %x22  #2538
	jalr	%x0, %x23, 0  #2538
	nop
bge_else.9601:
	ret
	nop
init_dirvecs.3096:  #35832
	lw	%x5, 12(%x22)  #0
	lw	%x6, 8(%x22)  #0
	lw	%x7, 4(%x22)  #0
	addi	%x9, %x0, 4  #0
	sw	%x5, 0(%x2)  #2543
	sw	%x7, 4(%x2)  #2543
	mv	%x5, %x9
	mv	%x22, %x6
	sw	%x1, 12(%x2)  #2543
	lw	%x23, 0(%x22)  #2543
	addi	%x2, %x2, 16  #2543
	jalr	%x1, %x23, 0  #2543
	addi	%x2, %x2, -16  #2543
	lw	%x1, 12(%x2)  #2543
	addi	%x5, %x0, 9  #0
	addi	%x6, %x0, 0  #0
	addi	%x7, %x0, 0  #0
	lw	%x22, 4(%x2)  #2544
	sw	%x1, 12(%x2)  #2544
	lw	%x23, 0(%x22)  #2544
	addi	%x2, %x2, 16  #2544
	jalr	%x1, %x23, 0  #2544
	addi	%x2, %x2, -16  #2544
	lw	%x1, 12(%x2)  #2544
	addi	%x5, %x0, 4  #0
	lw	%x22, 0(%x2)  #2545
	lw	0(%x23), %x22  #2545
	jalr	%x0, %x23, 0  #2545
	nop
add_reflection.3098:  #35948
	lw	%x7, 12(%x22)  #0
	lw	%x9, 8(%x22)  #0
	lw	%x22, 4(%x22)  #0
	sw	%x9, 0(%x2)  #2554
	sw	%x5, 4(%x2)  #2554
	sw	%x6, 8(%x2)  #2554
	fsw	%f0, 16(%x2)  #2554
	sw	%x7, 24(%x2)  #2554
	fsw	%f6, 32(%x2)  #2554
	fsw	%f4, 40(%x2)  #2554
	fsw	%f2, 48(%x2)  #2554
	mv	%x5, %g0
	sw	%x1, 60(%x2)  #2554
	lw	%x23, 0(%x22)  #2554
	addi	%x2, %x2, 64  #2554
	jalr	%x1, %x23, 0  #2554
	addi	%x2, %x2, -64  #2554
	lw	%x1, 60(%x2)  #2554
	sw	%x5, 56(%x2)  #2555
	sw	%x1, 60(%x2)  #2555
	addi	%x2, %x2, 64  #2555
	jal	%x1, d_vec.2743  #2555
	addi	%x2, %x2, -64  #2555
	lw	%x1, 60(%x2) #2555
	flw	%f0, 48(%x2)  #2555
	flw	%f2, 40(%x2)  #2555
	flw	%f4, 32(%x2)  #2555
	sw	%x1, 60(%x2)  #2555
	addi	%x2, %x2, 64  #2555
	jal	%x1, vecset.2644  #2555
	addi	%x2, %x2, -64  #2555
	lw	%x1, 60(%x2) #2555
	lw	%x5, 56(%x2)  #2556
	lw	%x22, 24(%x2)  #2556
	sw	%x1, 60(%x2)  #2556
	lw	%x23, 0(%x22)  #2556
	addi	%x2, %x2, 64  #2556
	jalr	%x1, %x23, 0  #2556
	addi	%x2, %x2, -64  #2556
	lw	%x1, 60(%x2)  #2556
	mv	%x5, %x3  #2558
	addi	%x3, %x3, 16  #2558
	flw	%f0, 16(%x2)  #2558
	fsw	%f0, 8(%x5) #2558
	lw	%x6, 56(%x2)  #2558
	sw	%x6, 4(%x5)  #2558
	lw	%x6, 8(%x2)  #2558
	sw	%x6, 0(%x5)  #2558
	lw	%x6, 4(%x2)  #2558
	slli	%x6, %x6, 2  #2558
	lw	%x7, 0(%x2)  #2558
	sw	%x5, %x6(%x7)  #2558
	ret
	nop
setup_rect_reflection.3105:  #36164
	lw	%x7, 12(%x22)  #0
	lw	%x9, 8(%x22)  #0
	lw	%x10, 4(%x22)  #0
	addi	%x11, %x0, 4  #0
	sw	%x10, 0(%x2)  #2563
	sw	%x9, 4(%x2)  #2563
	sw	%x6, 8(%x2)  #2563
	sw	%x7, 12(%x2)  #2563
	mv	%x6, %x11
	sw	%x1, 20(%x2)  #2563
	addi	%x2, %x2, 24  #2563
	jal	%x1, mul.2562  #2563
	addi	%x2, %x2, -24  #2563
	lw	%x1, 20(%x2) #2563
	lw	%x6, 12(%x2)  #2564
	lw	%x7, 0(%x6)  #2564
	mv	%f0, l.6305  #0
	lw	%x9, 8(%x2)  #2565
	sw	%x7, 16(%x2)  #2565
	sw	%x5, 20(%x2)  #2565
	fsw	%f0, 24(%x2)  #2565
	mv	%x5, %x9
	sw	%x1, 36(%x2)  #2565
	addi	%x2, %x2, 40  #2565
	jal	%x1, o_diffuse.2706  #2565
	addi	%x2, %x2, -40  #2565
	lw	%x1, 36(%x2) #2565
	flw	%f2, 24(%x2)  #2565
	fsub	%f0, %f2, %f0  #2565
	lw	%x5, 4(%x2)  #2566
	flw	%f2, 0(%x5)  #2566
	fsw	%f0, 32(%x2)  #2566
	mv	%f0, %f2
	mv	%f1, %f3
	sw	%x1, 44(%x2)  #2566
	addi	%x2, %x2, 48  #2566
	jal	%x1, fneg.2534  #2566
	addi	%x2, %x2, -48  #2566
	lw	%x1, 44(%x2) #2566
	lw	%x5, 4(%x2)  #2567
	flw	%f2, 8(%x5)  #2567
	fsw	%f0, 40(%x2)  #2567
	mv	%f0, %f2
	mv	%f1, %f3
	sw	%x1, 52(%x2)  #2567
	addi	%x2, %x2, 56  #2567
	jal	%x1, fneg.2534  #2567
	addi	%x2, %x2, -56  #2567
	lw	%x1, 52(%x2) #2567
	lw	%x5, 4(%x2)  #2568
	flw	%f2, 16(%x5)  #2568
	fsw	%f0, 48(%x2)  #2568
	mv	%f0, %f2
	mv	%f1, %f3
	sw	%x1, 60(%x2)  #2568
	addi	%x2, %x2, 64  #2568
	jal	%x1, fneg.2534  #2568
	addi	%x2, %x2, -64  #2568
	lw	%x1, 60(%x2) #2568
	mv	%f6, %f0  #2568
	mv	%f7, %f1  #2568
	lw	%x5, 20(%x2)  #2569
	addi	%x6, %x5, 1  #2569
	lw	%x7, 4(%x2)  #2569
	flw	%f2, 0(%x7)  #2569
	flw	%f0, 32(%x2)  #2569
	flw	%f4, 48(%x2)  #2569
	lw	%x9, 16(%x2)  #2569
	lw	%x22, 0(%x2)  #2569
	fsw	%f6, 56(%x2)  #2569
	mv	%x5, %x9
	sw	%x1, 68(%x2)  #2569
	lw	%x23, 0(%x22)  #2569
	addi	%x2, %x2, 72  #2569
	jalr	%x1, %x23, 0  #2569
	addi	%x2, %x2, -72  #2569
	lw	%x1, 68(%x2)  #2569
	lw	%x5, 16(%x2)  #2570
	addi	%x6, %x5, 1  #2570
	lw	%x7, 20(%x2)  #2570
	addi	%x9, %x7, 2  #2570
	lw	%x10, 4(%x2)  #2570
	flw	%f4, 8(%x10)  #2570
	flw	%f0, 32(%x2)  #2570
	flw	%f2, 40(%x2)  #2570
	flw	%f6, 56(%x2)  #2570
	lw	%x22, 0(%x2)  #2570
	mv	%x5, %x6
	mv	%x6, %x9
	sw	%x1, 68(%x2)  #2570
	lw	%x23, 0(%x22)  #2570
	addi	%x2, %x2, 72  #2570
	jalr	%x1, %x23, 0  #2570
	addi	%x2, %x2, -72  #2570
	lw	%x1, 68(%x2)  #2570
	lw	%x5, 16(%x2)  #2571
	addi	%x6, %x5, 2  #2571
	lw	%x7, 20(%x2)  #2571
	addi	%x7, %x7, 3  #2571
	lw	%x9, 4(%x2)  #2571
	flw	%f6, 16(%x9)  #2571
	flw	%f0, 32(%x2)  #2571
	flw	%f2, 40(%x2)  #2571
	flw	%f4, 48(%x2)  #2571
	lw	%x22, 0(%x2)  #2571
	mv	%x5, %x6
	mv	%x6, %x7
	sw	%x1, 68(%x2)  #2571
	lw	%x23, 0(%x22)  #2571
	addi	%x2, %x2, 72  #2571
	jalr	%x1, %x23, 0  #2571
	addi	%x2, %x2, -72  #2571
	lw	%x1, 68(%x2)  #2571
	lw	%x5, 16(%x2)  #2572
	addi	%x5, %x5, 3  #2572
	lw	%x6, 12(%x2)  #2572
	sw	%x5, 0(%x6)  #2572
	ret
	nop
setup_surface_reflection.3108:  #36640
	lw	%x7, 12(%x22)  #0
	lw	%x9, 8(%x22)  #0
	lw	%x10, 4(%x22)  #0
	addi	%x11, %x0, 4  #0
	sw	%x10, 0(%x2)  #2577
	sw	%x9, 4(%x2)  #2577
	sw	%x6, 8(%x2)  #2577
	sw	%x7, 12(%x2)  #2577
	mv	%x6, %x11
	sw	%x1, 20(%x2)  #2577
	addi	%x2, %x2, 24  #2577
	jal	%x1, mul.2562  #2577
	addi	%x2, %x2, -24  #2577
	lw	%x1, 20(%x2) #2577
	addi	%x5, %x5, 1  #2577
	lw	%x6, 12(%x2)  #2578
	lw	%x7, 0(%x6)  #2578
	mv	%f0, l.6305  #0
	lw	%x9, 8(%x2)  #2579
	sw	%x5, 16(%x2)  #2579
	sw	%x7, 20(%x2)  #2579
	fsw	%f0, 24(%x2)  #2579
	mv	%x5, %x9
	sw	%x1, 36(%x2)  #2579
	addi	%x2, %x2, 40  #2579
	jal	%x1, o_diffuse.2706  #2579
	addi	%x2, %x2, -40  #2579
	lw	%x1, 36(%x2) #2579
	flw	%f2, 24(%x2)  #2579
	fsub	%f0, %f2, %f0  #2579
	lw	%x5, 8(%x2)  #2580
	fsw	%f0, 32(%x2)  #2580
	sw	%x1, 44(%x2)  #2580
	addi	%x2, %x2, 48  #2580
	jal	%x1, o_param_abc.2698  #2580
	addi	%x2, %x2, -48  #2580
	lw	%x1, 44(%x2) #2580
	mv	%x6, %x5  #2580
	lw	%x5, 4(%x2)  #2580
	sw	%x1, 44(%x2)  #2580
	addi	%x2, %x2, 48  #2580
	jal	%x1, veciprod.2660  #2580
	addi	%x2, %x2, -48  #2580
	lw	%x1, 44(%x2) #2580
	mv	%f2, l.6476  #0
	lw	%x5, 8(%x2)  #2583
	fsw	%f0, 40(%x2)  #2583
	fsw	%f2, 48(%x2)  #2583
	sw	%x1, 60(%x2)  #2583
	addi	%x2, %x2, 64  #2583
	jal	%x1, o_param_a.2692  #2583
	addi	%x2, %x2, -64  #2583
	lw	%x1, 60(%x2) #2583
	flw	%f2, 48(%x2)  #2583
	fmul	%f0, %f2, %f0  #2583
	flw	%f2, 40(%x2)  #2583
	fmul	%f0, %f0, %f2  #2583
	lw	%x5, 4(%x2)  #2583
	flw	%f4, 0(%x5)  #2583
	fsub	%f0, %f0, %f4  #2583
	mv	%f4, l.6476  #0
	lw	%x6, 8(%x2)  #2584
	fsw	%f0, 56(%x2)  #2584
	fsw	%f4, 64(%x2)  #2584
	mv	%x5, %x6
	sw	%x1, 76(%x2)  #2584
	addi	%x2, %x2, 80  #2584
	jal	%x1, o_param_b.2694  #2584
	addi	%x2, %x2, -80  #2584
	lw	%x1, 76(%x2) #2584
	flw	%f2, 64(%x2)  #2584
	fmul	%f0, %f2, %f0  #2584
	flw	%f2, 40(%x2)  #2584
	fmul	%f0, %f0, %f2  #2584
	lw	%x5, 4(%x2)  #2584
	flw	%f4, 8(%x5)  #2584
	fsub	%f0, %f0, %f4  #2584
	mv	%f4, l.6476  #0
	lw	%x6, 8(%x2)  #2585
	fsw	%f0, 72(%x2)  #2585
	fsw	%f4, 80(%x2)  #2585
	mv	%x5, %x6
	sw	%x1, 92(%x2)  #2585
	addi	%x2, %x2, 96  #2585
	jal	%x1, o_param_c.2696  #2585
	addi	%x2, %x2, -96  #2585
	lw	%x1, 92(%x2) #2585
	flw	%f2, 80(%x2)  #2585
	fmul	%f0, %f2, %f0  #2585
	flw	%f2, 40(%x2)  #2585
	fmul	%f0, %f0, %f2  #2585
	lw	%x5, 4(%x2)  #2585
	flw	%f2, 16(%x5)  #2585
	fsub	%f6, %f0, %f2  #2585
	flw	%f0, 32(%x2)  #2582
	flw	%f2, 56(%x2)  #2582
	flw	%f4, 72(%x2)  #2582
	lw	%x5, 20(%x2)  #2582
	lw	%x6, 16(%x2)  #2582
	lw	%x22, 0(%x2)  #2582
	sw	%x1, 92(%x2)  #2582
	lw	%x23, 0(%x22)  #2582
	addi	%x2, %x2, 96  #2582
	jalr	%x1, %x23, 0  #2582
	addi	%x2, %x2, -96  #2582
	lw	%x1, 92(%x2)  #2582
	lw	%x5, 20(%x2)  #2586
	addi	%x5, %x5, 1  #2586
	lw	%x6, 12(%x2)  #2586
	sw	%x5, 0(%x6)  #2586
	ret
	nop
setup_reflections.3111:  #37088
	lw	%x6, 12(%x22)  #0
	lw	%x7, 8(%x22)  #0
	lw	%x9, 4(%x22)  #0
	bge	%x5, %x0, 12  #2592
	j	bge_else.9608
	nop
	slli	%x10, %x5, 2  #2593
	lw	%x9, %x10(%x9)  #2593
	sw	%x6, 0(%x2)  #2594
	sw	%x5, 4(%x2)  #2594
	sw	%x7, 8(%x2)  #2594
	sw	%x9, 12(%x2)  #2594
	mv	%x5, %x9
	sw	%x1, 20(%x2)  #2594
	addi	%x2, %x2, 24  #2594
	jal	%x1, o_reflectiontype.2686  #2594
	addi	%x2, %x2, -24  #2594
	lw	%x1, 20(%x2) #2594
	addi	%x24, %x0, 2
	beq	%x5, %x24, 12  #2594
	j	be_else.9609
	nop
	lw	%x5, 12(%x2)  #2595
	sw	%x1, 20(%x2)  #2595
	addi	%x2, %x2, 24  #2595
	jal	%x1, o_diffuse.2706  #2595
	addi	%x2, %x2, -24  #2595
	lw	%x1, 20(%x2) #2595
	mv	%f2, l.6305  #0
	sw	%x1, 20(%x2)  #2595
	addi	%x2, %x2, 24  #2595
	jal	%x1, fless.2540  #2595
	addi	%x2, %x2, -24  #2595
	lw	%x1, 20(%x2) #2595
	beq	%x5, %x0, 12  #2595
	j	be_else.9610
	nop
	ret
	nop
be_else.9610:
	lw	%x5, 12(%x2)  #2596
	sw	%x1, 20(%x2)  #2596
	addi	%x2, %x2, 24  #2596
	jal	%x1, o_form.2684  #2596
	addi	%x2, %x2, -24  #2596
	lw	%x1, 20(%x2) #2596
	addi	%x24, %x0, 1
	beq	%x5, %x24, 12  #2598
	j	be_else.9612
	nop
	lw	%x5, 4(%x2)  #2599
	lw	%x6, 12(%x2)  #2599
	lw	%x22, 8(%x2)  #2599
	lw	0(%x23), %x22  #2599
	jalr	%x0, %x23, 0  #2599
	nop
be_else.9612:
	addi	%x24, %x0, 2
	beq	%x5, %x24, 12  #2600
	j	be_else.9613
	nop
	lw	%x5, 4(%x2)  #2601
	lw	%x6, 12(%x2)  #2601
	lw	%x22, 0(%x2)  #2601
	lw	0(%x23), %x22  #2601
	jalr	%x0, %x23, 0  #2601
	nop
be_else.9613:
	ret
	nop
be_else.9609:
	ret
	nop
bge_else.9608:
	ret
	nop
rt.3113:  #37360
	lw	%x9, 56(%x22)  #0
	lw	%x10, 52(%x22)  #0
	lw	%x11, 48(%x22)  #0
	lw	%x12, 44(%x22)  #0
	lw	%x13, 40(%x22)  #0
	lw	%x14, 36(%x22)  #0
	lw	%x15, 32(%x22)  #0
	lw	%x16, 28(%x22)  #0
	lw	%x17, 24(%x22)  #0
	lw	%x18, 20(%x22)  #0
	lw	%x19, 16(%x22)  #0
	lw	%x20, 12(%x22)  #0
	lw	%x21, 8(%x22)  #0
	lw	%x22, 4(%x22)  #0
	sw	%x5, 0(%x20)  #2614
	sw	%x6, 4(%x20)  #2615
	addi	%x20, %x0, 2  #0
	sw	%x13, 0(%x2)  #2616
	sw	%x15, 4(%x2)  #2616
	sw	%x10, 8(%x2)  #2616
	sw	%x16, 12(%x2)  #2616
	sw	%x11, 16(%x2)  #2616
	sw	%x18, 20(%x2)  #2616
	sw	%x17, 24(%x2)  #2616
	sw	%x19, 28(%x2)  #2616
	sw	%x7, 32(%x2)  #2616
	sw	%x9, 36(%x2)  #2616
	sw	%x14, 40(%x2)  #2616
	sw	%x22, 44(%x2)  #2616
	sw	%x12, 48(%x2)  #2616
	sw	%x5, 52(%x2)  #2616
	sw	%x6, 56(%x2)  #2616
	sw	%x21, 60(%x2)  #2616
	mv	%x6, %x20
	sw	%x1, 68(%x2)  #2616
	addi	%x2, %x2, 72  #2616
	jal	%x1, div.2570  #2616
	addi	%x2, %x2, -72  #2616
	lw	%x1, 68(%x2) #2616
	lw	%x6, 60(%x2)  #2616
	sw	%x5, 0(%x6)  #2616
	addi	%x5, %x0, 2  #0
	lw	%x7, 56(%x2)  #2617
	mv	%x6, %x5
	mv	%x5, %x7
	sw	%x1, 68(%x2)  #2617
	addi	%x2, %x2, 72  #2617
	jal	%x1, div.2570  #2617
	addi	%x2, %x2, -72  #2617
	lw	%x1, 68(%x2) #2617
	lw	%x6, 60(%x2)  #2617
	sw	%x5, 4(%x6)  #2617
	mv	%f0, l.7053  #0
	lw	%x5, 52(%x2)  #2618
	fsw	%f0, 64(%x2)  #2618
	sw	%x1, 76(%x2)  #2618
	addi	%x2, %x2, 80  #2618
	jal	%x1, float_of_int.2553  #2618
	addi	%x2, %x2, -80  #2618
	lw	%x1, 76(%x2) #2618
	flw	%f2, 64(%x2)  #2618
	fdiv	%f0, %f2, %f0  #2618
	lw	%x5, 48(%x2)  #2618
	fsw	%f0, 0(%x5) #2618
	lw	%x22, 44(%x2)  #2619
	mv	%x5, %g0
	sw	%x1, 76(%x2)  #2619
	lw	%x23, 0(%x22)  #2619
	addi	%x2, %x2, 80  #2619
	jalr	%x1, %x23, 0  #2619
	addi	%x2, %x2, -80  #2619
	lw	%x1, 76(%x2)  #2619
	lw	%x22, 44(%x2)  #2620
	sw	%x5, 72(%x2)  #2620
	mv	%x5, %g0
	sw	%x1, 76(%x2)  #2620
	lw	%x23, 0(%x22)  #2620
	addi	%x2, %x2, 80  #2620
	jalr	%x1, %x23, 0  #2620
	addi	%x2, %x2, -80  #2620
	lw	%x1, 76(%x2)  #2620
	lw	%x22, 44(%x2)  #2621
	sw	%x5, 76(%x2)  #2621
	mv	%x5, %g0
	sw	%x1, 84(%x2)  #2621
	lw	%x23, 0(%x22)  #2621
	addi	%x2, %x2, 88  #2621
	jalr	%x1, %x23, 0  #2621
	addi	%x2, %x2, -88  #2621
	lw	%x1, 84(%x2)  #2621
	lw	%x22, 40(%x2)  #2622
	sw	%x5, 80(%x2)  #2622
	mv	%x5, %g0
	sw	%x1, 84(%x2)  #2622
	lw	%x23, 0(%x22)  #2622
	addi	%x2, %x2, 88  #2622
	jalr	%x1, %x23, 0  #2622
	addi	%x2, %x2, -88  #2622
	lw	%x1, 84(%x2)  #2622
	lw	%x5, 32(%x2)  #2623
	lw	%x22, 36(%x2)  #2623
	sw	%x1, 84(%x2)  #2623
	lw	%x23, 0(%x22)  #2623
	addi	%x2, %x2, 88  #2623
	jalr	%x1, %x23, 0  #2623
	addi	%x2, %x2, -88  #2623
	lw	%x1, 84(%x2)  #2623
	lw	%x22, 28(%x2)  #2624
	mv	%x5, %g0
	sw	%x1, 84(%x2)  #2624
	lw	%x23, 0(%x22)  #2624
	addi	%x2, %x2, 88  #2624
	jalr	%x1, %x23, 0  #2624
	addi	%x2, %x2, -88  #2624
	lw	%x1, 84(%x2)  #2624
	lw	%x5, 24(%x2)  #2625
	sw	%x1, 84(%x2)  #2625
	addi	%x2, %x2, 88  #2625
	jal	%x1, d_vec.2743  #2625
	addi	%x2, %x2, -88  #2625
	lw	%x1, 84(%x2) #2625
	lw	%x6, 20(%x2)  #2625
	sw	%x1, 84(%x2)  #2625
	addi	%x2, %x2, 88  #2625
	jal	%x1, veccpy.2654  #2625
	addi	%x2, %x2, -88  #2625
	lw	%x1, 84(%x2) #2625
	lw	%x5, 24(%x2)  #2626
	lw	%x22, 16(%x2)  #2626
	sw	%x1, 84(%x2)  #2626
	lw	%x23, 0(%x22)  #2626
	addi	%x2, %x2, 88  #2626
	jalr	%x1, %x23, 0  #2626
	addi	%x2, %x2, -88  #2626
	lw	%x1, 84(%x2)  #2626
	lw	%x5, 12(%x2)  #2627
	lw	%x5, 0(%x5)  #2627
	addi	%x5, %x5, -1  #2627
	lw	%x22, 8(%x2)  #2627
	sw	%x1, 84(%x2)  #2627
	lw	%x23, 0(%x22)  #2627
	addi	%x2, %x2, 88  #2627
	jalr	%x1, %x23, 0  #2627
	addi	%x2, %x2, -88  #2627
	lw	%x1, 84(%x2)  #2627
	addi	%x6, %x0, 0  #0
	addi	%x7, %x0, 0  #0
	lw	%x5, 76(%x2)  #2628
	lw	%x22, 4(%x2)  #2628
	sw	%x1, 84(%x2)  #2628
	lw	%x23, 0(%x22)  #2628
	addi	%x2, %x2, 88  #2628
	jalr	%x1, %x23, 0  #2628
	addi	%x2, %x2, -88  #2628
	lw	%x1, 84(%x2)  #2628
	addi	%x5, %x0, 0  #0
	addi	%x10, %x0, 2  #0
	lw	%x6, 72(%x2)  #2629
	lw	%x7, 76(%x2)  #2629
	lw	%x9, 80(%x2)  #2629
	lw	%x11, 32(%x2)  #2629
	lw	%x22, 0(%x2)  #2629
	lw	0(%x23), %x22  #2629
	jalr	%x0, %x23, 0  #2629
	nop
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 1  #0
	addi	%x6, %x0, 0  #0
	sw	%x1, 12(%x2)  #208
	addi	%x2, %x2, 16  #208
	jal	%x1, create_array.2593  #208
	addi	%x2, %x2, -16  #208
	lw	%x1, 12(%x2) #208
	addi	%x6, %x0, 0  #0
	mv	%f0, l.6293  #0
	sw	%x5, 8(%x2)  #213
	mv	%x5, %x6
	sw	%x1, 12(%x2)  #213
	addi	%x2, %x2, 16  #213
	jal	%x1, create_float_array.2600  #213
	addi	%x2, %x2, -16  #213
	lw	%x1, 12(%x2) #213
	addi	%x6, %x0, 60  #0
	addi	%x7, %x0, 0  #0
	mv	%x9, %x3  #214
	addi	%x3, %x3, 48  #214
	sw	%x5, 40(%x9)  #214
	sw	%x5, 36(%x9)  #214
	sw	%x5, 32(%x9)  #214
	sw	%x5, 28(%x9)  #214
	sw	%x7, 24(%x9)  #214
	sw	%x5, 20(%x9)  #214
	sw	%x5, 16(%x9)  #214
	sw	%x7, 12(%x9)  #214
	sw	%x7, 8(%x9)  #214
	sw	%x7, 4(%x9)  #214
	sw	%x7, 0(%x9)  #214
	mv	%x5, %x9  #214
	mv	%x23, %x6
	mv	%x6, %x5
	mv	%x5, %x23
	sw	%x1, 12(%x2)  #214
	addi	%x2, %x2, 16  #214
	jal	%x1, create_array.2593  #214
	addi	%x2, %x2, -16  #214
	lw	%x1, 12(%x2) #214
	addi	%x6, %x0, 3  #0
	mv	%f0, l.6293  #0
	sw	%x5, 12(%x2)  #218
	mv	%x5, %x6
	sw	%x1, 20(%x2)  #218
	addi	%x2, %x2, 24  #218
	jal	%x1, create_float_array.2600  #218
	addi	%x2, %x2, -24  #218
	lw	%x1, 20(%x2) #218
	addi	%x6, %x0, 3  #0
	mv	%f0, l.6293  #0
	sw	%x5, 16(%x2)  #221
	mv	%x5, %x6
	sw	%x1, 20(%x2)  #221
	addi	%x2, %x2, 24  #221
	jal	%x1, create_float_array.2600  #221
	addi	%x2, %x2, -24  #221
	lw	%x1, 20(%x2) #221
	addi	%x6, %x0, 3  #0
	mv	%f0, l.6293  #0
	sw	%x5, 20(%x2)  #224
	mv	%x5, %x6
	sw	%x1, 28(%x2)  #224
	addi	%x2, %x2, 32  #224
	jal	%x1, create_float_array.2600  #224
	addi	%x2, %x2, -32  #224
	lw	%x1, 28(%x2) #224
	addi	%x6, %x0, 1  #0
	mv	%f0, l.6807  #0
	sw	%x5, 24(%x2)  #227
	mv	%x5, %x6
	sw	%x1, 28(%x2)  #227
	addi	%x2, %x2, 32  #227
	jal	%x1, create_float_array.2600  #227
	addi	%x2, %x2, -32  #227
	lw	%x1, 28(%x2) #227
	addi	%x6, %x0, 50  #0
	addi	%x7, %x0, 1  #0
	addi	%x9, %x0, -1  #0
	sw	%x5, 28(%x2)  #230
	sw	%x6, 32(%x2)  #230
	mv	%x6, %x9
	mv	%x5, %x7
	sw	%x1, 36(%x2)  #230
	addi	%x2, %x2, 40  #230
	jal	%x1, create_array.2593  #230
	addi	%x2, %x2, -40  #230
	lw	%x1, 36(%x2) #230
	mv	%x6, %x5  #230
	lw	%x5, 32(%x2)  #230
	sw	%x1, 36(%x2)  #230
	addi	%x2, %x2, 40  #230
	jal	%x1, create_array.2593  #230
	addi	%x2, %x2, -40  #230
	lw	%x1, 36(%x2) #230
	addi	%x6, %x0, 1  #0
	lw	%x7, 0(%x5)  #233
	sw	%x5, 36(%x2)  #233
	sw	%x6, 40(%x2)  #233
	mv	%x5, %x6
	mv	%x6, %x7
	sw	%x1, 44(%x2)  #233
	addi	%x2, %x2, 48  #233
	jal	%x1, create_array.2593  #233
	addi	%x2, %x2, -48  #233
	lw	%x1, 44(%x2) #233
	mv	%x6, %x5  #233
	lw	%x5, 40(%x2)  #233
	sw	%x1, 44(%x2)  #233
	addi	%x2, %x2, 48  #233
	jal	%x1, create_array.2593  #233
	addi	%x2, %x2, -48  #233
	lw	%x1, 44(%x2) #233
	addi	%x6, %x0, 1  #0
	mv	%f0, l.6293  #0
	sw	%x5, 44(%x2)  #238
	mv	%x5, %x6
	sw	%x1, 52(%x2)  #238
	addi	%x2, %x2, 56  #238
	jal	%x1, create_float_array.2600  #238
	addi	%x2, %x2, -56  #238
	lw	%x1, 52(%x2) #238
	addi	%x6, %x0, 1  #0
	addi	%x7, %x0, 0  #0
	sw	%x5, 48(%x2)  #241
	mv	%x5, %x6
	mv	%x6, %x7
	sw	%x1, 52(%x2)  #241
	addi	%x2, %x2, 56  #241
	jal	%x1, create_array.2593  #241
	addi	%x2, %x2, -56  #241
	lw	%x1, 52(%x2) #241
	addi	%x6, %x0, 1  #0
	mv	%f0, l.6734  #0
	sw	%x5, 52(%x2)  #244
	mv	%x5, %x6
	sw	%x1, 60(%x2)  #244
	addi	%x2, %x2, 64  #244
	jal	%x1, create_float_array.2600  #244
	addi	%x2, %x2, -64  #244
	lw	%x1, 60(%x2) #244
	addi	%x6, %x0, 3  #0
	mv	%f0, l.6293  #0
	sw	%x5, 56(%x2)  #247
	mv	%x5, %x6
	sw	%x1, 60(%x2)  #247
	addi	%x2, %x2, 64  #247
	jal	%x1, create_float_array.2600  #247
	addi	%x2, %x2, -64  #247
	lw	%x1, 60(%x2) #247
	addi	%x6, %x0, 1  #0
	addi	%x7, %x0, 0  #0
	sw	%x5, 60(%x2)  #250
	mv	%x5, %x6
	mv	%x6, %x7
	sw	%x1, 68(%x2)  #250
	addi	%x2, %x2, 72  #250
	jal	%x1, create_array.2593  #250
	addi	%x2, %x2, -72  #250
	lw	%x1, 68(%x2) #250
	addi	%x6, %x0, 3  #0
	mv	%f0, l.6293  #0
	sw	%x5, 64(%x2)  #253
	mv	%x5, %x6
	sw	%x1, 68(%x2)  #253
	addi	%x2, %x2, 72  #253
	jal	%x1, create_float_array.2600  #253
	addi	%x2, %x2, -72  #253
	lw	%x1, 68(%x2) #253
	addi	%x6, %x0, 3  #0
	mv	%f0, l.6293  #0
	sw	%x5, 68(%x2)  #256
	mv	%x5, %x6
	sw	%x1, 76(%x2)  #256
	addi	%x2, %x2, 80  #256
	jal	%x1, create_float_array.2600  #256
	addi	%x2, %x2, -80  #256
	lw	%x1, 76(%x2) #256
	addi	%x6, %x0, 3  #0
	mv	%f0, l.6293  #0
	sw	%x5, 72(%x2)  #260
	mv	%x5, %x6
	sw	%x1, 76(%x2)  #260
	addi	%x2, %x2, 80  #260
	jal	%x1, create_float_array.2600  #260
	addi	%x2, %x2, -80  #260
	lw	%x1, 76(%x2) #260
	addi	%x6, %x0, 3  #0
	mv	%f0, l.6293  #0
	sw	%x5, 76(%x2)  #263
	mv	%x5, %x6
	sw	%x1, 84(%x2)  #263
	addi	%x2, %x2, 88  #263
	jal	%x1, create_float_array.2600  #263
	addi	%x2, %x2, -88  #263
	lw	%x1, 84(%x2) #263
	addi	%x6, %x0, 2  #0
	addi	%x7, %x0, 0  #0
	sw	%x5, 80(%x2)  #267
	mv	%x5, %x6
	mv	%x6, %x7
	sw	%x1, 84(%x2)  #267
	addi	%x2, %x2, 88  #267
	jal	%x1, create_array.2593  #267
	addi	%x2, %x2, -88  #267
	lw	%x1, 84(%x2) #267
	addi	%x6, %x0, 2  #0
	addi	%x7, %x0, 0  #0
	sw	%x5, 84(%x2)  #270
	mv	%x5, %x6
	mv	%x6, %x7
	sw	%x1, 92(%x2)  #270
	addi	%x2, %x2, 96  #270
	jal	%x1, create_array.2593  #270
	addi	%x2, %x2, -96  #270
	lw	%x1, 92(%x2) #270
	addi	%x6, %x0, 1  #0
	mv	%f0, l.6293  #0
	sw	%x5, 88(%x2)  #273
	mv	%x5, %x6
	sw	%x1, 92(%x2)  #273
	addi	%x2, %x2, 96  #273
	jal	%x1, create_float_array.2600  #273
	addi	%x2, %x2, -96  #273
	lw	%x1, 92(%x2) #273
	addi	%x6, %x0, 3  #0
	mv	%f0, l.6293  #0
	sw	%x5, 92(%x2)  #277
	mv	%x5, %x6
	sw	%x1, 100(%x2)  #277
	addi	%x2, %x2, 104  #277
	jal	%x1, create_float_array.2600  #277
	addi	%x2, %x2, -104  #277
	lw	%x1, 100(%x2) #277
	addi	%x6, %x0, 3  #0
	mv	%f0, l.6293  #0
	sw	%x5, 96(%x2)  #280
	mv	%x5, %x6
	sw	%x1, 100(%x2)  #280
	addi	%x2, %x2, 104  #280
	jal	%x1, create_float_array.2600  #280
	addi	%x2, %x2, -104  #280
	lw	%x1, 100(%x2) #280
	addi	%x6, %x0, 3  #0
	mv	%f0, l.6293  #0
	sw	%x5, 100(%x2)  #284
	mv	%x5, %x6
	sw	%x1, 108(%x2)  #284
	addi	%x2, %x2, 112  #284
	jal	%x1, create_float_array.2600  #284
	addi	%x2, %x2, -112  #284
	lw	%x1, 108(%x2) #284
	addi	%x6, %x0, 3  #0
	mv	%f0, l.6293  #0
	sw	%x5, 104(%x2)  #286
	mv	%x5, %x6
	sw	%x1, 108(%x2)  #286
	addi	%x2, %x2, 112  #286
	jal	%x1, create_float_array.2600  #286
	addi	%x2, %x2, -112  #286
	lw	%x1, 108(%x2) #286
	addi	%x6, %x0, 3  #0
	mv	%f0, l.6293  #0
	sw	%x5, 108(%x2)  #288
	mv	%x5, %x6
	sw	%x1, 116(%x2)  #288
	addi	%x2, %x2, 120  #288
	jal	%x1, create_float_array.2600  #288
	addi	%x2, %x2, -120  #288
	lw	%x1, 116(%x2) #288
	addi	%x6, %x0, 3  #0
	mv	%f0, l.6293  #0
	sw	%x5, 112(%x2)  #292
	mv	%x5, %x6
	sw	%x1, 116(%x2)  #292
	addi	%x2, %x2, 120  #292
	jal	%x1, create_float_array.2600  #292
	addi	%x2, %x2, -120  #292
	lw	%x1, 116(%x2) #292
	addi	%x6, %x0, 0  #0
	mv	%f0, l.6293  #0
	sw	%x5, 116(%x2)  #297
	mv	%x5, %x6
	sw	%x1, 124(%x2)  #297
	addi	%x2, %x2, 128  #297
	jal	%x1, create_float_array.2600  #297
	addi	%x2, %x2, -128  #297
	lw	%x1, 124(%x2) #297
	mv	%x6, %x5  #297
	addi	%x5, %x0, 0  #0
	sw	%x6, 120(%x2)  #298
	sw	%x1, 124(%x2)  #298
	addi	%x2, %x2, 128  #298
	jal	%x1, create_array.2593  #298
	addi	%x2, %x2, -128  #298
	lw	%x1, 124(%x2) #298
	addi	%x6, %x0, 0  #0
	mv	%x7, %x3  #299
	addi	%x3, %x3, 8  #299
	sw	%x5, 4(%x7)  #299
	lw	%x5, 120(%x2)  #299
	sw	%x5, 0(%x7)  #299
	mv	%x5, %x7  #299
	mv	%x23, %x6
	mv	%x6, %x5
	mv	%x5, %x23
	sw	%x1, 124(%x2)  #299
	addi	%x2, %x2, 128  #299
	jal	%x1, create_array.2593  #299
	addi	%x2, %x2, -128  #299
	lw	%x1, 124(%x2) #299
	mv	%x6, %x5  #299
	addi	%x5, %x0, 5  #0
	sw	%x1, 124(%x2)  #300
	addi	%x2, %x2, 128  #300
	jal	%x1, create_array.2593  #300
	addi	%x2, %x2, -128  #300
	lw	%x1, 124(%x2) #300
	addi	%x6, %x0, 0  #0
	mv	%f0, l.6293  #0
	sw	%x5, 124(%x2)  #305
	mv	%x5, %x6
	sw	%x1, 132(%x2)  #305
	addi	%x2, %x2, 136  #305
	jal	%x1, create_float_array.2600  #305
	addi	%x2, %x2, -136  #305
	lw	%x1, 132(%x2) #305
	addi	%x6, %x0, 3  #0
	mv	%f0, l.6293  #0
	sw	%x5, 128(%x2)  #306
	mv	%x5, %x6
	sw	%x1, 132(%x2)  #306
	addi	%x2, %x2, 136  #306
	jal	%x1, create_float_array.2600  #306
	addi	%x2, %x2, -136  #306
	lw	%x1, 132(%x2) #306
	addi	%x6, %x0, 60  #0
	lw	%x7, 128(%x2)  #307
	sw	%x5, 132(%x2)  #307
	mv	%x5, %x6
	mv	%x6, %x7
	sw	%x1, 140(%x2)  #307
	addi	%x2, %x2, 144  #307
	jal	%x1, create_array.2593  #307
	addi	%x2, %x2, -144  #307
	lw	%x1, 140(%x2) #307
	mv	%x6, %x3  #308
	addi	%x3, %x3, 8  #308
	sw	%x5, 4(%x6)  #308
	lw	%x5, 132(%x2)  #308
	sw	%x5, 0(%x6)  #308
	mv	%x5, %x6  #308
	addi	%x6, %x0, 0  #0
	mv	%f0, l.6293  #0
	sw	%x5, 136(%x2)  #313
	mv	%x5, %x6
	sw	%x1, 140(%x2)  #313
	addi	%x2, %x2, 144  #313
	jal	%x1, create_float_array.2600  #313
	addi	%x2, %x2, -144  #313
	lw	%x1, 140(%x2) #313
	mv	%x6, %x5  #313
	addi	%x5, %x0, 0  #0
	sw	%x6, 140(%x2)  #314
	sw	%x1, 148(%x2)  #314
	addi	%x2, %x2, 152  #314
	jal	%x1, create_array.2593  #314
	addi	%x2, %x2, -152  #314
	lw	%x1, 148(%x2) #314
	mv	%x6, %x3  #315
	addi	%x3, %x3, 8  #315
	sw	%x5, 4(%x6)  #315
	lw	%x5, 140(%x2)  #315
	sw	%x5, 0(%x6)  #315
	mv	%x5, %x6  #315
	addi	%x6, %x0, 180  #0
	addi	%x7, %x0, 0  #0
	mv	%f0, l.6293  #0
	mv	%x9, %x3  #316
	addi	%x3, %x3, 16  #316
	fsw	%f0, 8(%x9) #316
	sw	%x5, 4(%x9)  #316
	sw	%x7, 0(%x9)  #316
	mv	%x5, %x9  #316
	mv	%x23, %x6
	mv	%x6, %x5
	mv	%x5, %x23
	sw	%x1, 148(%x2)  #316
	addi	%x2, %x2, 152  #316
	jal	%x1, create_array.2593  #316
	addi	%x2, %x2, -152  #316
	lw	%x1, 148(%x2) #316
	addi	%x6, %x0, 1  #0
	addi	%x7, %x0, 0  #0
	sw	%x5, 144(%x2)  #320
	mv	%x5, %x6
	mv	%x6, %x7
	sw	%x1, 148(%x2)  #320
	addi	%x2, %x2, 152  #320
	jal	%x1, create_array.2593  #320
	addi	%x2, %x2, -152  #320
	lw	%x1, 148(%x2) #320
	mv	%x6, %x3  #803
	addi	%x3, %x3, 24  #803
	addi	%x24, %x0, 3340  #803 read_screen_settings.2755
	mv	%x7, %x24  #803
	sw	%x7, 0(%x6)  #803
	lw	%x7, 20(%x2)  #803
	sw	%x7, 20(%x6)  #803
	lw	%x9, 112(%x2)  #803
	sw	%x9, 16(%x6)  #803
	lw	%x10, 108(%x2)  #803
	sw	%x10, 12(%x6)  #803
	lw	%x11, 104(%x2)  #803
	sw	%x11, 8(%x6)  #803
	lw	%x12, 16(%x2)  #803
	sw	%x12, 4(%x6)  #803
	mv	%x12, %x3  #836
	addi	%x3, %x3, 16  #836
	addi	%x24, %x0, 3976  #836 read_light.2757
	mv	%x13, %x24  #836
	sw	%x13, 0(%x12)  #836
	lw	%x13, 24(%x2)  #836
	sw	%x13, 8(%x12)  #836
	lw	%x14, 28(%x2)  #836
	sw	%x14, 4(%x12)  #836
	mv	%x15, %x3  #899
	addi	%x3, %x3, 8  #899
	addi	%x24, %x0, 5388  #899 read_nth_object.2762
	mv	%x16, %x24  #899
	sw	%x16, 0(%x15)  #899
	lw	%x16, 12(%x2)  #899
	sw	%x16, 4(%x15)  #899
	mv	%x17, %x3  #982
	addi	%x3, %x3, 16  #982
	addi	%x24, %x0, 7020  #982 read_object.2764
	mv	%x18, %x24  #982
	sw	%x18, 0(%x17)  #982
	sw	%x15, 8(%x17)  #982
	lw	%x15, 8(%x2)  #982
	sw	%x15, 4(%x17)  #982
	mv	%x18, %x3  #991
	addi	%x3, %x3, 8  #991
	addi	%x24, %x0, 7144  #991 read_all_object.2766
	mv	%x19, %x24  #991
	sw	%x19, 0(%x18)  #991
	sw	%x17, 4(%x18)  #991
	mv	%x17, %x3  #1015
	addi	%x3, %x3, 8  #1015
	addi	%x24, %x0, 7412  #1015 read_and_network.2772
	mv	%x19, %x24  #1015
	sw	%x19, 0(%x17)  #1015
	lw	%x19, 36(%x2)  #1015
	sw	%x19, 4(%x17)  #1015
	mv	%x20, %x3  #1024
	addi	%x3, %x3, 24  #1024
	addi	%x24, %x0, 7516  #1024 read_parameter.2774
	mv	%x21, %x24  #1024
	sw	%x21, 0(%x20)  #1024
	sw	%x6, 20(%x20)  #1024
	sw	%x12, 16(%x20)  #1024
	sw	%x17, 12(%x20)  #1024
	sw	%x18, 8(%x20)  #1024
	lw	%x6, 44(%x2)  #1024
	sw	%x6, 4(%x20)  #1024
	mv	%x12, %x3  #1049
	addi	%x3, %x3, 8  #1049
	addi	%x24, %x0, 7720  #1049 solver_rect_surface.2776
	mv	%x17, %x24  #1049
	sw	%x17, 0(%x12)  #1049
	lw	%x17, 48(%x2)  #1049
	sw	%x17, 4(%x12)  #1049
	mv	%x18, %x3  #1064
	addi	%x3, %x3, 8  #1064
	addi	%x24, %x0, 8236  #1064 solver_rect.2785
	mv	%x21, %x24  #1064
	sw	%x21, 0(%x18)  #1064
	sw	%x12, 4(%x18)  #1064
	mv	%x12, %x3  #1073
	addi	%x3, %x3, 8  #1073
	addi	%x24, %x0, 8504  #1073 solver_surface.2791
	mv	%x21, %x24  #1073
	sw	%x21, 0(%x12)  #1073
	sw	%x17, 4(%x12)  #1073
	mv	%x21, %x3  #1124
	addi	%x3, %x3, 8  #1124
	addi	%x24, %x0, 9668  #1124 solver_second.2810
	mv	%x22, %x24  #1124
	sw	%x22, 0(%x21)  #1124
	sw	%x17, 4(%x21)  #1124
	mv	%x22, %x3  #1153
	addi	%x3, %x3, 24  #1153
	addi	%x24, %x0, 10200  #1153 solver.2816
	mv	%x23, %x24  #1153
	sw	%x23, 0(%x22)  #1153
	sw	%x12, 16(%x22)  #1153
	sw	%x21, 12(%x22)  #1153
	sw	%x18, 8(%x22)  #1153
	sw	%x16, 4(%x22)  #1153
	mv	%x12, %x3  #1185
	addi	%x3, %x3, 8  #1185
	addi	%x24, %x0, 10544  #1185 solver_rect_fast.2820
	mv	%x18, %x24  #1185
	sw	%x18, 0(%x12)  #1185
	sw	%x17, 4(%x12)  #1185
	mv	%x18, %x3  #1218
	addi	%x3, %x3, 8  #1218
	addi	%x24, %x0, 11604  #1218 solver_surface_fast.2827
	mv	%x21, %x24  #1218
	sw	%x21, 0(%x18)  #1218
	sw	%x17, 4(%x18)  #1218
	mv	%x21, %x3  #1227
	addi	%x3, %x3, 8  #1227
	addi	%x24, %x0, 11752  #1227 solver_second_fast.2833
	mv	%x23, %x24  #1227
	sw	%x23, 0(%x21)  #1227
	sw	%x17, 4(%x21)  #1227
	mv	%x23, %x3  #1247
	addi	%x3, %x3, 24  #1247
	sw	%x20, 148(%x2)  #1247
	addi	%x24, %x0, 12236  #1247 solver_fast.2839
	mv	%x20, %x24  #1247
	sw	%x20, 0(%x23)  #1247
	sw	%x18, 16(%x23)  #1247
	sw	%x21, 12(%x23)  #1247
	sw	%x12, 8(%x23)  #1247
	sw	%x16, 4(%x23)  #1247
	mv	%x18, %x3  #1267
	addi	%x3, %x3, 8  #1267
	addi	%x24, %x0, 12660  #1267 solver_surface_fast2.2843
	mv	%x20, %x24  #1267
	sw	%x20, 0(%x18)  #1267
	sw	%x17, 4(%x18)  #1267
	mv	%x20, %x3  #1275
	addi	%x3, %x3, 8  #1275
	addi	%x24, %x0, 12764  #1275 solver_second_fast2.2850
	mv	%x21, %x24  #1275
	sw	%x21, 0(%x20)  #1275
	sw	%x17, 4(%x20)  #1275
	mv	%x21, %x3  #1294
	addi	%x3, %x3, 24  #1294
	addi	%x24, %x0, 13132  #1294 solver_fast2.2857
	mv	%x10, %x24  #1294
	sw	%x10, 0(%x21)  #1294
	sw	%x18, 16(%x21)  #1294
	sw	%x20, 12(%x21)  #1294
	sw	%x12, 8(%x21)  #1294
	sw	%x16, 4(%x21)  #1294
	mv	%x10, %x3  #1391
	addi	%x3, %x3, 8  #1391
	addi	%x24, %x0, 15592  #1391 iter_setup_dirvec_constants.2869
	mv	%x12, %x24  #1391
	sw	%x12, 0(%x10)  #1391
	sw	%x16, 4(%x10)  #1391
	mv	%x12, %x3  #1408
	addi	%x3, %x3, 16  #1408
	addi	%x24, %x0, 15920  #1408 setup_dirvec_constants.2872
	mv	%x18, %x24  #1408
	sw	%x18, 0(%x12)  #1408
	sw	%x15, 8(%x12)  #1408
	sw	%x10, 4(%x12)  #1408
	mv	%x10, %x3  #1416
	addi	%x3, %x3, 8  #1416
	addi	%x24, %x0, 15948  #1416 setup_startp_constants.2874
	mv	%x18, %x24  #1416
	sw	%x18, 0(%x10)  #1416
	sw	%x16, 4(%x10)  #1416
	mv	%x18, %x3  #1435
	addi	%x3, %x3, 16  #1435
	addi	%x24, %x0, 16448  #1435 setup_startp.2877
	mv	%x20, %x24  #1435
	sw	%x20, 0(%x18)  #1435
	lw	%x20, 100(%x2)  #1435
	sw	%x20, 12(%x18)  #1435
	sw	%x10, 8(%x18)  #1435
	sw	%x15, 4(%x18)  #1435
	mv	%x10, %x3  #1485
	addi	%x3, %x3, 8  #1485
	sw	%x12, 152(%x2)  #1485
	addi	%x24, %x0, 17512  #1485 check_all_inside.2899
	mv	%x12, %x24  #1485
	sw	%x12, 0(%x10)  #1485
	sw	%x16, 4(%x10)  #1485
	mv	%x12, %x3  #1505
	addi	%x3, %x3, 32  #1505
	addi	%x24, %x0, 17668  #1505 shadow_check_and_group.2905
	mv	%x15, %x24  #1505
	sw	%x15, 0(%x12)  #1505
	sw	%x23, 28(%x12)  #1505
	sw	%x17, 24(%x12)  #1505
	sw	%x16, 20(%x12)  #1505
	lw	%x15, 136(%x2)  #1505
	sw	%x15, 16(%x12)  #1505
	sw	%x13, 12(%x12)  #1505
	lw	%x9, 60(%x2)  #1505
	sw	%x9, 8(%x12)  #1505
	sw	%x10, 4(%x12)  #1505
	mv	%x11, %x3  #1535
	addi	%x3, %x3, 16  #1535
	addi	%x24, %x0, 18160  #1535 shadow_check_one_or_group.2908
	mv	%x7, %x24  #1535
	sw	%x7, 0(%x11)  #1535
	sw	%x12, 8(%x11)  #1535
	sw	%x19, 4(%x11)  #1535
	mv	%x7, %x3  #1550
	addi	%x3, %x3, 24  #1550
	addi	%x24, %x0, 18312  #1550 shadow_check_one_or_matrix.2911
	mv	%x12, %x24  #1550
	sw	%x12, 0(%x7)  #1550
	sw	%x23, 20(%x7)  #1550
	sw	%x17, 16(%x7)  #1550
	sw	%x11, 12(%x7)  #1550
	sw	%x15, 8(%x7)  #1550
	sw	%x9, 4(%x7)  #1550
	mv	%x11, %x3  #1586
	addi	%x3, %x3, 40  #1586
	addi	%x24, %x0, 18728  #1586 solve_each_element.2914
	mv	%x12, %x24  #1586
	sw	%x12, 0(%x11)  #1586
	lw	%x12, 56(%x2)  #1586
	sw	%x12, 36(%x11)  #1586
	lw	%x23, 96(%x2)  #1586
	sw	%x23, 32(%x11)  #1586
	sw	%x17, 28(%x11)  #1586
	sw	%x22, 24(%x11)  #1586
	sw	%x16, 20(%x11)  #1586
	lw	%x15, 52(%x2)  #1586
	sw	%x15, 16(%x11)  #1586
	sw	%x9, 12(%x11)  #1586
	lw	%x14, 64(%x2)  #1586
	sw	%x14, 8(%x11)  #1586
	sw	%x10, 4(%x11)  #1586
	mv	%x13, %x3  #1627
	addi	%x3, %x3, 16  #1627
	sw	%x5, 156(%x2)  #1627
	addi	%x24, %x0, 19372  #1627 solve_one_or_network.2918
	mv	%x5, %x24  #1627
	sw	%x5, 0(%x13)  #1627
	sw	%x11, 8(%x13)  #1627
	sw	%x19, 4(%x13)  #1627
	mv	%x5, %x3  #1637
	addi	%x3, %x3, 24  #1637
	addi	%x24, %x0, 19504  #1637 trace_or_matrix.2922
	mv	%x11, %x24  #1637
	sw	%x11, 0(%x5)  #1637
	sw	%x12, 20(%x5)  #1637
	sw	%x23, 16(%x5)  #1637
	sw	%x17, 12(%x5)  #1637
	sw	%x22, 8(%x5)  #1637
	sw	%x13, 4(%x5)  #1637
	mv	%x11, %x3  #1664
	addi	%x3, %x3, 16  #1664
	addi	%x24, %x0, 19836  #1664 judge_intersection.2926
	mv	%x13, %x24  #1664
	sw	%x13, 0(%x11)  #1664
	sw	%x5, 12(%x11)  #1664
	sw	%x12, 8(%x11)  #1664
	sw	%x6, 4(%x11)  #1664
	mv	%x5, %x3  #1679
	addi	%x3, %x3, 40  #1679
	addi	%x24, %x0, 19984  #1679 solve_each_element_fast.2928
	mv	%x13, %x24  #1679
	sw	%x13, 0(%x5)  #1679
	sw	%x12, 36(%x5)  #1679
	sw	%x20, 32(%x5)  #1679
	sw	%x21, 28(%x5)  #1679
	sw	%x17, 24(%x5)  #1679
	sw	%x16, 20(%x5)  #1679
	sw	%x15, 16(%x5)  #1679
	sw	%x9, 12(%x5)  #1679
	sw	%x14, 8(%x5)  #1679
	sw	%x10, 4(%x5)  #1679
	mv	%x10, %x3  #1720
	addi	%x3, %x3, 16  #1720
	addi	%x24, %x0, 20660  #1720 solve_one_or_network_fast.2932
	mv	%x13, %x24  #1720
	sw	%x13, 0(%x10)  #1720
	sw	%x5, 8(%x10)  #1720
	sw	%x19, 4(%x10)  #1720
	mv	%x5, %x3  #1730
	addi	%x3, %x3, 24  #1730
	addi	%x24, %x0, 20792  #1730 trace_or_matrix_fast.2936
	mv	%x13, %x24  #1730
	sw	%x13, 0(%x5)  #1730
	sw	%x12, 16(%x5)  #1730
	sw	%x21, 12(%x5)  #1730
	sw	%x17, 8(%x5)  #1730
	sw	%x10, 4(%x5)  #1730
	mv	%x10, %x3  #1754
	addi	%x3, %x3, 16  #1754
	addi	%x24, %x0, 21116  #1754 judge_intersection_fast.2940
	mv	%x13, %x24  #1754
	sw	%x13, 0(%x10)  #1754
	sw	%x5, 12(%x10)  #1754
	sw	%x12, 8(%x10)  #1754
	sw	%x6, 4(%x10)  #1754
	mv	%x5, %x3  #1775
	addi	%x3, %x3, 16  #1775
	addi	%x24, %x0, 21264  #1775 get_nvector_rect.2942
	mv	%x13, %x24  #1775
	sw	%x13, 0(%x5)  #1775
	lw	%x13, 68(%x2)  #1775
	sw	%x13, 8(%x5)  #1775
	sw	%x15, 4(%x5)  #1775
	mv	%x17, %x3  #1783
	addi	%x3, %x3, 8  #1783
	addi	%x24, %x0, 21404  #1783 get_nvector_plane.2944
	mv	%x19, %x24  #1783
	sw	%x19, 0(%x17)  #1783
	sw	%x13, 4(%x17)  #1783
	mv	%x19, %x3  #1791
	addi	%x3, %x3, 16  #1791
	addi	%x24, %x0, 21584  #1791 get_nvector_second.2946
	mv	%x20, %x24  #1791
	sw	%x20, 0(%x19)  #1791
	sw	%x13, 8(%x19)  #1791
	sw	%x9, 4(%x19)  #1791
	mv	%x20, %x3  #1813
	addi	%x3, %x3, 16  #1813
	addi	%x24, %x0, 22312  #1813 get_nvector.2948
	mv	%x21, %x24  #1813
	sw	%x21, 0(%x20)  #1813
	sw	%x19, 12(%x20)  #1813
	sw	%x5, 8(%x20)  #1813
	sw	%x17, 4(%x20)  #1813
	mv	%x5, %x3  #1829
	addi	%x3, %x3, 8  #1829
	addi	%x24, %x0, 22448  #1829 utexture.2951
	mv	%x17, %x24  #1829
	sw	%x17, 0(%x5)  #1829
	lw	%x17, 72(%x2)  #1829
	sw	%x17, 4(%x5)  #1829
	mv	%x19, %x3  #1907
	addi	%x3, %x3, 16  #1907
	addi	%x24, %x0, 24288  #1907 add_light.2954
	mv	%x21, %x24  #1907
	sw	%x21, 0(%x19)  #1907
	sw	%x17, 8(%x19)  #1907
	lw	%x21, 80(%x2)  #1907
	sw	%x21, 4(%x19)  #1907
	mv	%x22, %x3  #1924
	addi	%x3, %x3, 40  #1924
	sw	%x20, 160(%x2)  #1924
	addi	%x24, %x0, 24532  #1924 trace_reflections.2958
	mv	%x20, %x24  #1924
	sw	%x20, 0(%x22)  #1924
	sw	%x7, 32(%x22)  #1924
	lw	%x20, 144(%x2)  #1924
	sw	%x20, 28(%x22)  #1924
	sw	%x6, 24(%x22)  #1924
	sw	%x13, 20(%x22)  #1924
	sw	%x10, 16(%x22)  #1924
	sw	%x15, 12(%x22)  #1924
	sw	%x14, 8(%x22)  #1924
	sw	%x19, 4(%x22)  #1924
	mv	%x20, %x3  #1953
	addi	%x3, %x3, 88  #1953
	sw	%x10, 164(%x2)  #1953
	addi	%x24, %x0, 25116  #1953 trace_ray.2963
	mv	%x10, %x24  #1953
	sw	%x10, 0(%x20)  #1953
	sw	%x5, 80(%x20)  #1953
	sw	%x22, 76(%x20)  #1953
	sw	%x12, 72(%x20)  #1953
	sw	%x17, 68(%x20)  #1953
	sw	%x23, 64(%x20)  #1953
	sw	%x7, 60(%x20)  #1953
	sw	%x18, 56(%x20)  #1953
	sw	%x21, 52(%x20)  #1953
	sw	%x6, 48(%x20)  #1953
	sw	%x16, 44(%x20)  #1953
	sw	%x13, 40(%x20)  #1953
	lw	%x10, 156(%x2)  #1953
	sw	%x10, 36(%x20)  #1953
	lw	%x12, 24(%x2)  #1953
	sw	%x12, 32(%x20)  #1953
	sw	%x11, 28(%x20)  #1953
	sw	%x15, 24(%x20)  #1953
	sw	%x9, 20(%x20)  #1953
	sw	%x14, 16(%x20)  #1953
	lw	%x11, 160(%x2)  #1953
	sw	%x11, 12(%x20)  #1953
	lw	%x15, 28(%x2)  #1953
	sw	%x15, 8(%x20)  #1953
	sw	%x19, 4(%x20)  #1953
	mv	%x15, %x3  #2046
	addi	%x3, %x3, 56  #2046
	addi	%x24, %x0, 26892  #2046 trace_diffuse_ray.2969
	mv	%x19, %x24  #2046
	sw	%x19, 0(%x15)  #2046
	sw	%x5, 48(%x15)  #2046
	sw	%x17, 44(%x15)  #2046
	sw	%x7, 40(%x15)  #2046
	sw	%x6, 36(%x15)  #2046
	sw	%x16, 32(%x15)  #2046
	sw	%x13, 28(%x15)  #2046
	sw	%x12, 24(%x15)  #2046
	lw	%x5, 164(%x2)  #2046
	sw	%x5, 20(%x15)  #2046
	sw	%x9, 16(%x15)  #2046
	sw	%x14, 12(%x15)  #2046
	sw	%x11, 8(%x15)  #2046
	lw	%x5, 76(%x2)  #2046
	sw	%x5, 4(%x15)  #2046
	mv	%x6, %x3  #2065
	addi	%x3, %x3, 8  #2065
	addi	%x24, %x0, 27384  #2065 iter_trace_diffuse_rays.2972
	mv	%x7, %x24  #2065
	sw	%x7, 0(%x6)  #2065
	sw	%x15, 4(%x6)  #2065
	mv	%x7, %x3  #2081
	addi	%x3, %x3, 16  #2081
	addi	%x24, %x0, 27692  #2081 trace_diffuse_rays.2977
	mv	%x9, %x24  #2081
	sw	%x9, 0(%x7)  #2081
	sw	%x18, 8(%x7)  #2081
	sw	%x6, 4(%x7)  #2081
	mv	%x6, %x3  #2091
	addi	%x3, %x3, 16  #2091
	addi	%x24, %x0, 27780  #2091 trace_diffuse_ray_80percent.2981
	mv	%x9, %x24  #2091
	sw	%x9, 0(%x6)  #2091
	sw	%x7, 8(%x6)  #2091
	lw	%x9, 124(%x2)  #2091
	sw	%x9, 4(%x6)  #2091
	mv	%x11, %x3  #2117
	addi	%x3, %x3, 16  #2117
	addi	%x24, %x0, 28160  #2117 calc_diffuse_using_1point.2985
	mv	%x13, %x24  #2117
	sw	%x13, 0(%x11)  #2117
	sw	%x6, 12(%x11)  #2117
	sw	%x21, 8(%x11)  #2117
	sw	%x5, 4(%x11)  #2117
	mv	%x6, %x3  #2136
	addi	%x3, %x3, 16  #2136
	addi	%x24, %x0, 28480  #2136 calc_diffuse_using_5points.2988
	mv	%x13, %x24  #2136
	sw	%x13, 0(%x6)  #2136
	sw	%x21, 8(%x6)  #2136
	sw	%x5, 4(%x6)  #2136
	mv	%x13, %x3  #2156
	addi	%x3, %x3, 8  #2156
	addi	%x24, %x0, 29020  #2156 do_without_neighbors.2994
	mv	%x14, %x24  #2156
	sw	%x14, 0(%x13)  #2156
	sw	%x11, 4(%x13)  #2156
	mv	%x11, %x3  #2171
	addi	%x3, %x3, 8  #2171
	addi	%x24, %x0, 29228  #2171 neighbors_exist.2997
	mv	%x14, %x24  #2171
	sw	%x14, 0(%x11)  #2171
	lw	%x14, 84(%x2)  #2171
	sw	%x14, 4(%x11)  #2171
	mv	%x15, %x3  #2208
	addi	%x3, %x3, 16  #2208
	addi	%x24, %x0, 29780  #2208 try_exploit_neighbors.3010
	mv	%x17, %x24  #2208
	sw	%x17, 0(%x15)  #2208
	sw	%x13, 8(%x15)  #2208
	sw	%x6, 4(%x15)  #2208
	mv	%x6, %x3  #2235
	addi	%x3, %x3, 8  #2235
	addi	%x24, %x0, 30136  #2235 write_ppm_header.3017
	mv	%x17, %x24  #2235
	sw	%x17, 0(%x6)  #2235
	sw	%x14, 4(%x6)  #2235
	mv	%x17, %x3  #2261
	addi	%x3, %x3, 8  #2261
	addi	%x24, %x0, 30524  #2261 write_rgb.3023
	mv	%x18, %x24  #2261
	sw	%x18, 0(%x17)  #2261
	sw	%x21, 4(%x17)  #2261
	mv	%x18, %x3  #2284
	addi	%x3, %x3, 16  #2284
	addi	%x24, %x0, 30756  #2284 pretrace_diffuse_rays.3025
	mv	%x19, %x24  #2284
	sw	%x19, 0(%x18)  #2284
	sw	%x7, 12(%x18)  #2284
	sw	%x9, 8(%x18)  #2284
	sw	%x5, 4(%x18)  #2284
	mv	%x5, %x3  #2314
	addi	%x3, %x3, 40  #2314
	addi	%x24, %x0, 31192  #2314 pretrace_pixels.3028
	mv	%x7, %x24  #2314
	sw	%x7, 0(%x5)  #2314
	lw	%x7, 20(%x2)  #2314
	sw	%x7, 36(%x5)  #2314
	sw	%x20, 32(%x5)  #2314
	sw	%x23, 28(%x5)  #2314
	lw	%x7, 104(%x2)  #2314
	sw	%x7, 24(%x5)  #2314
	lw	%x7, 92(%x2)  #2314
	sw	%x7, 20(%x5)  #2314
	sw	%x21, 16(%x5)  #2314
	lw	%x19, 116(%x2)  #2314
	sw	%x19, 12(%x5)  #2314
	sw	%x18, 8(%x5)  #2314
	lw	%x18, 88(%x2)  #2314
	sw	%x18, 4(%x5)  #2314
	mv	%x19, %x3  #2339
	addi	%x3, %x3, 32  #2339
	addi	%x24, %x0, 31824  #2339 pretrace_line.3035
	mv	%x20, %x24  #2339
	sw	%x20, 0(%x19)  #2339
	lw	%x20, 112(%x2)  #2339
	sw	%x20, 24(%x19)  #2339
	lw	%x20, 108(%x2)  #2339
	sw	%x20, 20(%x19)  #2339
	sw	%x7, 16(%x19)  #2339
	sw	%x5, 12(%x19)  #2339
	sw	%x14, 8(%x19)  #2339
	sw	%x18, 4(%x19)  #2339
	mv	%x5, %x3  #2355
	addi	%x3, %x3, 32  #2355
	addi	%x24, %x0, 32044  #2355 scan_pixel.3039
	mv	%x20, %x24  #2355
	sw	%x20, 0(%x5)  #2355
	sw	%x17, 24(%x5)  #2355
	sw	%x15, 20(%x5)  #2355
	sw	%x21, 16(%x5)  #2355
	sw	%x11, 12(%x5)  #2355
	sw	%x14, 8(%x5)  #2355
	sw	%x13, 4(%x5)  #2355
	mv	%x11, %x3  #2375
	addi	%x3, %x3, 16  #2375
	addi	%x24, %x0, 32444  #2375 scan_line.3046
	mv	%x13, %x24  #2375
	sw	%x13, 0(%x11)  #2375
	sw	%x5, 12(%x11)  #2375
	sw	%x19, 8(%x11)  #2375
	sw	%x14, 4(%x11)  #2375
	mv	%x5, %x3  #2427
	addi	%x3, %x3, 8  #2427
	addi	%x24, %x0, 33364  #2427 create_pixelline.3060
	mv	%x13, %x24  #2427
	sw	%x13, 0(%x5)  #2427
	sw	%x14, 4(%x5)  #2427
	mv	%x13, %x3  #2455
	addi	%x3, %x3, 8  #2455
	addi	%x24, %x0, 33632  #2455 calc_dirvec.3067
	mv	%x15, %x24  #2455
	sw	%x15, 0(%x13)  #2455
	sw	%x9, 4(%x13)  #2455
	mv	%x15, %x3  #2476
	addi	%x3, %x3, 8  #2476
	addi	%x24, %x0, 34696  #2476 calc_dirvecs.3075
	mv	%x17, %x24  #2476
	sw	%x17, 0(%x15)  #2476
	sw	%x13, 4(%x15)  #2476
	mv	%x13, %x3  #2490
	addi	%x3, %x3, 8  #2490
	addi	%x24, %x0, 35008  #2490 calc_dirvec_rows.3080
	mv	%x17, %x24  #2490
	sw	%x17, 0(%x13)  #2490
	sw	%x15, 4(%x13)  #2490
	mv	%x15, %x3  #2503
	addi	%x3, %x3, 8  #2503
	addi	%x24, %x0, 35204  #2503 create_dirvec.3084
	mv	%x17, %x24  #2503
	sw	%x17, 0(%x15)  #2503
	lw	%x17, 8(%x2)  #2503
	sw	%x17, 4(%x15)  #2503
	mv	%x20, %x3  #2509
	addi	%x3, %x3, 8  #2509
	addi	%x24, %x0, 35312  #2509 create_dirvec_elements.3086
	mv	%x21, %x24  #2509
	sw	%x21, 0(%x20)  #2509
	sw	%x15, 4(%x20)  #2509
	mv	%x21, %x3  #2516
	addi	%x3, %x3, 16  #2516
	addi	%x24, %x0, 35420  #2516 create_dirvecs.3089
	mv	%x22, %x24  #2516
	sw	%x22, 0(%x21)  #2516
	sw	%x9, 12(%x21)  #2516
	sw	%x20, 8(%x21)  #2516
	sw	%x15, 4(%x21)  #2516
	mv	%x20, %x3  #2528
	addi	%x3, %x3, 8  #2528
	addi	%x24, %x0, 35620  #2528 init_dirvec_constants.3091
	mv	%x22, %x24  #2528
	sw	%x22, 0(%x20)  #2528
	lw	%x22, 152(%x2)  #2528
	sw	%x22, 4(%x20)  #2528
	mv	%x23, %x3  #2535
	addi	%x3, %x3, 16  #2535
	sw	%x5, 168(%x2)  #2535
	addi	%x24, %x0, 35724  #2535 init_vecset_constants.3094
	mv	%x5, %x24  #2535
	sw	%x5, 0(%x23)  #2535
	sw	%x20, 8(%x23)  #2535
	sw	%x9, 4(%x23)  #2535
	mv	%x5, %x3  #2542
	addi	%x3, %x3, 16  #2542
	addi	%x24, %x0, 35832  #2542 init_dirvecs.3096
	mv	%x9, %x24  #2542
	sw	%x9, 0(%x5)  #2542
	sw	%x23, 12(%x5)  #2542
	sw	%x21, 8(%x5)  #2542
	sw	%x13, 4(%x5)  #2542
	mv	%x9, %x3  #2553
	addi	%x3, %x3, 16  #2553
	addi	%x24, %x0, 35948  #2553 add_reflection.3098
	mv	%x13, %x24  #2553
	sw	%x13, 0(%x9)  #2553
	sw	%x22, 12(%x9)  #2553
	lw	%x13, 144(%x2)  #2553
	sw	%x13, 8(%x9)  #2553
	sw	%x15, 4(%x9)  #2553
	mv	%x13, %x3  #2562
	addi	%x3, %x3, 16  #2562
	addi	%x24, %x0, 36164  #2562 setup_rect_reflection.3105
	mv	%x15, %x24  #2562
	sw	%x15, 0(%x13)  #2562
	sw	%x10, 12(%x13)  #2562
	sw	%x12, 8(%x13)  #2562
	sw	%x9, 4(%x13)  #2562
	mv	%x15, %x3  #2576
	addi	%x3, %x3, 16  #2576
	addi	%x24, %x0, 36640  #2576 setup_surface_reflection.3108
	mv	%x20, %x24  #2576
	sw	%x20, 0(%x15)  #2576
	sw	%x10, 12(%x15)  #2576
	sw	%x12, 8(%x15)  #2576
	sw	%x9, 4(%x15)  #2576
	mv	%x9, %x3  #2591
	addi	%x3, %x3, 16  #2591
	addi	%x24, %x0, 37088  #2591 setup_reflections.3111
	mv	%x10, %x24  #2591
	sw	%x10, 0(%x9)  #2591
	sw	%x15, 12(%x9)  #2591
	sw	%x13, 8(%x9)  #2591
	sw	%x16, 4(%x9)  #2591
	mv	%x10, %x3  #2613
	addi	%x3, %x3, 64  #2613
	addi	%x24, %x0, 37360  #2613 rt.3113
	mv	%x13, %x24  #2613
	sw	%x13, 0(%x10)  #2613
	sw	%x6, 56(%x10)  #2613
	sw	%x9, 52(%x10)  #2613
	sw	%x22, 48(%x10)  #2613
	sw	%x7, 44(%x10)  #2613
	sw	%x11, 40(%x10)  #2613
	lw	%x6, 148(%x2)  #2613
	sw	%x6, 36(%x10)  #2613
	sw	%x19, 32(%x10)  #2613
	sw	%x17, 28(%x10)  #2613
	lw	%x6, 136(%x2)  #2613
	sw	%x6, 24(%x10)  #2613
	sw	%x12, 20(%x10)  #2613
	sw	%x5, 16(%x10)  #2613
	sw	%x14, 12(%x10)  #2613
	sw	%x18, 8(%x10)  #2613
	lw	%x5, 168(%x2)  #2613
	sw	%x5, 4(%x10)  #2613
	addi	%x5, %x0, 512  #0
	addi	%x7, %x0, 3  #0
	mv	%x6, %x5
	mv	%x22, %x10
	sw	%x1, 172(%x2)  #2634
	lw	%x23, 0(%x22)  #2634
	addi	%x2, %x2, 176  #2634
	jalr	%x1, %x23, 0  #2634
	addi	%x2, %x2, -176  #2634
	lw	%x1, 172(%x2)  #2634
	addi	%x2, %x2, 112
