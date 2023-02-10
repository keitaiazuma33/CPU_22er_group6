.section	".rodata"
.align	8
l.805:	! 12.000000
l.801:	! 11.000000
l.797:	! 10.000000
l.793:	! 9.000000
l.789:	! 8.000000
l.785:	! 7.000000
l.781:	! 6.000000
l.777:	! 5.000000
l.773:	! 4.000000
l.769:	! 3.000000
l.765:	! 2.000000
l.761:	! 1.000000
l.752:	! 0.000000
.section	".text"
mul_abs.324:  #68
	addi	%x24, %x0, -1
	beq	%x7, %x24, 12  #57
	j	be_else.854
	nop
	mv	%x5, %x9  #58
	ret
	nop
be_else.854:
	addi	%x10, %x0, 1  #0
	sll	%x10, %x10, %x7  #60
	and	%x10, %x6, %x10  #60
	beq	%x10, %x0, 12  #60
	j	be_else.855
	nop
	addi	%x7, %x7, -1  #61
	j	mul_abs.324  #61
	nop
be_else.855:
	addi	%x10, %x7, -1  #63
	sll	%x7, %x5, %x7  #63
	add	%x9, %x9, %x7  #63
	mv	%x7, %x10
	j	mul_abs.324  #63
	nop
mul.329:  #164
	bge	%x5, %x0, 12  #67
	j	bge_else.856
	nop
	mv	%x7, %x5  #67
	j	bge_cont.857
	nop
bge_else.856:
	sub	%x7, %x0, %x5  #67
bge_cont.857:
	bge	%x6, %x0, 12  #68
	j	bge_else.858
	nop
	mv	%x9, %x6  #68
	j	bge_cont.859
	nop
bge_else.858:
	sub	%x9, %x0, %x6  #68
bge_cont.859:
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
	jal	%x1, mul_abs.324  #69
	addi	%x2, %x2, -16  #69
	lw	%x1, 12(%x2) #69
	lw	%x6, 4(%x2)  #70
	srli	%x6, %x6, 31  #70
	lw	%x7, 0(%x2)  #70
	srli	%x7, %x7, 31  #70
	beq	%x6, %x7, 12  #70
	j	be_else.860
	nop
	ret
	nop
be_else.860:
	sub	%x5, %x0, %x5  #73
	ret
	nop
div_abs.332:  #344
	addi	%x24, %x0, -1
	beq	%x7, %x24, 12  #77
	j	be_else.861
	nop
	mv	%x5, %x9  #78
	ret
	nop
be_else.861:
	srl	%x10, %x5, %x7  #80
	bge	%x10, %x6, 12  #80
	j	ble_else.862
	nop
	sll	%x10, %x6, %x7  #81
	sub	%x5, %x5, %x10  #81
	addi	%x10, %x7, -1  #81
	addi	%x11, %x0, 1  #0
	sll	%x7, %x11, %x7  #81
	add	%x9, %x9, %x7  #81
	mv	%x7, %x10
	j	div_abs.332  #81
	nop
ble_else.862:
	addi	%x7, %x7, -1  #83
	j	div_abs.332  #83
	nop
div.337:  #444
	bge	%x5, %x0, 12  #87
	j	bge_else.863
	nop
	mv	%x7, %x5  #87
	j	bge_cont.864
	nop
bge_else.863:
	sub	%x7, %x0, %x5  #87
bge_cont.864:
	bge	%x6, %x0, 12  #88
	j	bge_else.865
	nop
	mv	%x9, %x6  #88
	j	bge_cont.866
	nop
bge_else.865:
	sub	%x9, %x0, %x6  #88
bge_cont.866:
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
	jal	%x1, div_abs.332  #89
	addi	%x2, %x2, -16  #89
	lw	%x1, 12(%x2) #89
	lw	%x6, 4(%x2)  #90
	srli	%x6, %x6, 31  #90
	lw	%x7, 0(%x2)  #90
	srli	%x7, %x7, 31  #90
	beq	%x6, %x7, 12  #90
	j	be_else.867
	nop
	ret
	nop
be_else.867:
	sub	%x5, %x0, %x5  #93
	ret
	nop
print_int.342:  #624
	bge	%x5, %x0, 12  #100
	j	bge_else.868
	nop
	addi	%x24, %x0, 10
	bge	%x5, %x24, 12  #104
	j	bge_else.869
	nop
	addi	%x6, %x0, 10  #0
	sw	%x5, 0(%x2)  #107
	sw	%x1, 4(%x2)  #107
	addi	%x2, %x2, 8  #107
	jal	%x1, div.337  #107
	addi	%x2, %x2, -8  #107
	lw	%x1, 4(%x2) #107
	sw	%x5, 4(%x2)  #108
	sw	%x1, 12(%x2)  #108
	addi	%x2, %x2, 16  #108
	jal	%x1, print_int.342  #108
	addi	%x2, %x2, -16  #108
	lw	%x1, 12(%x2) #108
	addi	%x6, %x0, 10  #0
	lw	%x5, 4(%x2)  #109
	sw	%x1, 12(%x2)  #109
	addi	%x2, %x2, 16  #109
	jal	%x1, mul.329  #109
	addi	%x2, %x2, -16  #109
	lw	%x1, 12(%x2) #109
	lw	%x6, 0(%x2)  #109
	sub	%x5, %x6, %x5  #109
	addi	%x5, %x5, 48  #109
	out	%x5  #109
	ret
	nop
bge_else.869:
	addi	%x5, %x5, 48  #105
	out	%x5  #105
	ret
	nop
bge_else.868:
	sub	%x5, %x0, %x5  #102
	j	print_int.342  #102
	nop
assign_array.356:  #792
	beq	%x7, %x0, 12  #160
	j	be_else.872
	nop
	slli	%x7, %x7, 2  #161
	sw	%x6, %x7(%x5)  #161
	ret
	nop
be_else.872:
	slli	%x9, %x7, 2  #163
	sw	%x6, %x9(%x5)  #163
	addi	%x7, %x7, -1  #164
	j	assign_array.356  #164
	nop
create_array.360:  #848
	mv	%x7, %x3  #168
	sw	%x7, 0(%x2)  #171
	mv	%x23, %x7
	mv	%x7, %x5
	mv	%x5, %x23
	sw	%x1, 4(%x2)  #171
	addi	%x2, %x2, 8  #171
	jal	%x1, assign_array.356  #171
	addi	%x2, %x2, -8  #171
	lw	%x1, 4(%x2) #171
	lw	%x5, 0(%x2)  #172
	ret
	nop
assign_farray.363:  #904
	beq	%x6, %x0, 12  #176
	j	be_else.874
	nop
	slli	%x6, %x6, 3  #177
	fsw	%f0, %x6(%x5) #177
	ret
	nop
be_else.874:
	slli	%x7, %x6, 3  #179
	fsw	%f0, %x7(%x5) #179
	addi	%x6, %x6, -1  #180
	j	assign_farray.363  #180
	nop
create_float_array.367:  #960
	mv	%x6, %x3  #184
	sw	%x6, 0(%x2)  #187
	mv	%x23, %x6
	mv	%x6, %x5
	mv	%x5, %x23
	sw	%x1, 4(%x2)  #187
	addi	%x2, %x2, 8  #187
	jal	%x1, assign_farray.363  #187
	addi	%x2, %x2, -8  #187
	lw	%x1, 4(%x2) #187
	lw	%x5, 0(%x2)  #188
	ret
	nop
loop3.512:  #1016
	lw	%x6, 20(%x22)  #0
	lw	%x7, 16(%x22)  #0
	lw	%x9, 12(%x22)  #0
	lw	%x10, 8(%x22)  #0
	lw	%x11, 4(%x22)  #0
	bge	%x5, %x0, 12  #197
	j	bge_else.876
	nop
	slli	%x12, %x7, 2  #198
	lw	%x12, %x12(%x9)  #198
	slli	%x13, %x7, 2  #198
	lw	%x9, %x13(%x9)  #198
	slli	%x13, %x6, 3  #198
	flw	%f0, %x13(%x9)  #198
	slli	%x7, %x7, 2  #198
	lw	%x7, %x7(%x11)  #198
	slli	%x9, %x5, 3  #198
	flw	%f2, %x9(%x7)  #198
	slli	%x7, %x5, 2  #198
	lw	%x7, %x7(%x10)  #198
	slli	%x9, %x6, 3  #198
	flw	%f4, %x9(%x7)  #198
	fmul	%f2, %f2, %f4  #198
	fadd	%f0, %f0, %f2  #198
	slli	%x6, %x6, 3  #198
	fsw	%f0, %x6(%x12) #198
	addi	%x5, %x5, -1  #199
	lw	0(%x23), %x22  #199
	jalr	%x0, %x23  #199
	nop
bge_else.876:
	ret
	nop
loop2.504:  #1152
	lw	%x6, 20(%x22)  #0
	lw	%x7, 16(%x22)  #0
	lw	%x9, 12(%x22)  #0
	lw	%x10, 8(%x22)  #0
	lw	%x11, 4(%x22)  #0
	bge	%x5, %x0, 12  #195
	j	bge_else.878
	nop
	mv	%x12, %x3  #196
	addi	%x3, %x3, 24  #196
	addi	%x24, %x0, 1016  #196 loop3.512
	mv	%x13, %x24  #196
	sw	%x13, 0(%x12)  #196
	sw	%x5, 20(%x12)  #196
	sw	%x7, 16(%x12)  #196
	sw	%x9, 12(%x12)  #196
	sw	%x10, 8(%x12)  #196
	sw	%x11, 4(%x12)  #196
	addi	%x6, %x6, -1  #200
	sw	%x22, 0(%x2)  #200
	sw	%x5, 4(%x2)  #200
	mv	%x5, %x6
	mv	%x22, %x12
	sw	%x1, 12(%x2)  #200
	lw	%x23, 0(%x22)  #200
	addi	%x2, %x2, 16  #200
	jalr	%x1, %x23  #200
	addi	%x2, %x2, -16  #200
	lw	%x1, 12(%x2)  #200
	lw	%x5, 4(%x2)  #201
	addi	%x5, %x5, -1  #201
	lw	%x22, 0(%x2)  #201
	lw	0(%x23), %x22  #201
	jalr	%x0, %x23  #201
	nop
bge_else.878:
	ret
	nop
loop1.499:  #1308
	lw	%x6, 20(%x22)  #0
	lw	%x7, 16(%x22)  #0
	lw	%x9, 12(%x22)  #0
	lw	%x10, 8(%x22)  #0
	lw	%x11, 4(%x22)  #0
	bge	%x5, %x0, 12  #193
	j	bge_else.880
	nop
	mv	%x12, %x3  #194
	addi	%x3, %x3, 24  #194
	addi	%x24, %x0, 1152  #194 loop2.504
	mv	%x13, %x24  #194
	sw	%x13, 0(%x12)  #194
	sw	%x7, 20(%x12)  #194
	sw	%x5, 16(%x12)  #194
	sw	%x9, 12(%x12)  #194
	sw	%x10, 8(%x12)  #194
	sw	%x11, 4(%x12)  #194
	addi	%x6, %x6, -1  #202
	sw	%x22, 0(%x2)  #202
	sw	%x5, 4(%x2)  #202
	mv	%x5, %x6
	mv	%x22, %x12
	sw	%x1, 12(%x2)  #202
	lw	%x23, 0(%x22)  #202
	addi	%x2, %x2, 16  #202
	jalr	%x1, %x23  #202
	addi	%x2, %x2, -16  #202
	lw	%x1, 12(%x2)  #202
	lw	%x5, 4(%x2)  #203
	addi	%x5, %x5, -1  #203
	lw	%x22, 0(%x2)  #203
	lw	0(%x23), %x22  #203
	jalr	%x0, %x23  #203
	nop
bge_else.880:
	ret
	nop
mul.370:  #1464
	mv	%x22, %x3  #192
	addi	%x3, %x3, 24  #192
	addi	%x24, %x0, 1308  #192 loop1.499
	mv	%x12, %x24  #192
	sw	%x12, 0(%x22)  #192
	sw	%x7, 20(%x22)  #192
	sw	%x6, 16(%x22)  #192
	sw	%x11, 12(%x22)  #192
	sw	%x10, 8(%x22)  #192
	sw	%x9, 4(%x22)  #192
	addi	%x5, %x5, -1  #204
	lw	0(%x23), %x22  #204
	jalr	%x0, %x23  #204
	nop
init.486:  #1524
	lw	%x6, 8(%x22)  #0
	lw	%x7, 4(%x22)  #0
	bge	%x5, %x0, 12  #209
	j	bge_else.882
	nop
	mv	%f0, l.752  #0
	sw	%x22, 0(%x2)  #210
	sw	%x7, 4(%x2)  #210
	sw	%x5, 8(%x2)  #210
	mv	%x5, %x6
	sw	%x1, 12(%x2)  #210
	addi	%x2, %x2, 16  #210
	jal	%x1, create_float_array.367  #210
	addi	%x2, %x2, -16  #210
	lw	%x1, 12(%x2) #210
	lw	%x6, 8(%x2)  #210
	slli	%x7, %x6, 2  #210
	lw	%x9, 4(%x2)  #210
	sw	%x5, %x7(%x9)  #210
	addi	%x5, %x6, -1  #211
	lw	%x22, 0(%x2)  #211
	lw	0(%x23), %x22  #211
	jalr	%x0, %x23  #211
	nop
bge_else.882:
	ret
	nop
make.378:  #1636
	lw	%x7, 4(%x22)  #207
	sw	%x5, 0(%x2)  #207
	sw	%x6, 4(%x2)  #207
	mv	%x6, %x7
	sw	%x1, 12(%x2)  #207
	addi	%x2, %x2, 16  #207
	jal	%x1, create_array.360  #207
	addi	%x2, %x2, -16  #207
	lw	%x1, 12(%x2) #207
	mv	%x22, %x3  #208
	addi	%x3, %x3, 16  #208
	addi	%x24, %x0, 1524  #208 init.486
	mv	%x6, %x24  #208
	sw	%x6, 0(%x22)  #208
	lw	%x6, 4(%x2)  #208
	sw	%x6, 8(%x22)  #208
	sw	%x5, 4(%x22)  #208
	lw	%x6, 0(%x2)  #212
	addi	%x6, %x6, -1  #212
	sw	%x5, 8(%x2)  #212
	mv	%x5, %x6
	sw	%x1, 12(%x2)  #212
	lw	%x23, 0(%x22)  #212
	addi	%x2, %x2, 16  #212
	jalr	%x1, %x23  #212
	addi	%x2, %x2, -16  #212
	lw	%x1, 12(%x2)  #212
	lw	%x5, 8(%x2)  #213
	ret
	nop
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 0  #0
	mv	%f0, l.752  #0
	sw	%x1, 12(%x2)  #205
	addi	%x2, %x2, 16  #205
	jal	%x1, create_float_array.367  #205
	addi	%x2, %x2, -16  #205
	lw	%x1, 12(%x2) #205
	mv	%x22, %x3  #206
	addi	%x3, %x3, 8  #206
	addi	%x24, %x0, 1636  #206 make.378
	mv	%x6, %x24  #206
	sw	%x6, 0(%x22)  #206
	sw	%x5, 4(%x22)  #206
	addi	%x5, %x0, 2  #0
	addi	%x6, %x0, 3  #0
	sw	%x22, 8(%x2)  #214
	sw	%x1, 12(%x2)  #214
	lw	%x23, 0(%x22)  #214
	addi	%x2, %x2, 16  #214
	jalr	%x1, %x23  #214
	addi	%x2, %x2, -16  #214
	lw	%x1, 12(%x2)  #214
	addi	%x6, %x0, 3  #0
	addi	%x7, %x0, 2  #0
	lw	%x22, 8(%x2)  #215
	sw	%x5, 12(%x2)  #215
	mv	%x5, %x6
	mv	%x6, %x7
	sw	%x1, 20(%x2)  #215
	lw	%x23, 0(%x22)  #215
	addi	%x2, %x2, 24  #215
	jalr	%x1, %x23  #215
	addi	%x2, %x2, -24  #215
	lw	%x1, 20(%x2)  #215
	addi	%x6, %x0, 2  #0
	lw	%x22, 8(%x2)  #216
	sw	%x5, 16(%x2)  #216
	mv	%x5, %x6
	sw	%x1, 20(%x2)  #216
	lw	%x23, 0(%x22)  #216
	addi	%x2, %x2, 24  #216
	jalr	%x1, %x23  #216
	addi	%x2, %x2, -24  #216
	lw	%x1, 20(%x2)  #216
	mv	%x11, %x5  #216
	lw	%x9, 12(%x2)  #217
	lw	%x5, 0(%x9)  #217
	mv	%f0, l.761  #0
	fsw	%f0, 0(%x5) #217
	lw	%x5, 0(%x9)  #217
	mv	%f0, l.765  #0
	fsw	%f0, 8(%x5) #217
	lw	%x5, 0(%x9)  #217
	mv	%f0, l.769  #0
	fsw	%f0, 16(%x5) #217
	lw	%x5, 4(%x9)  #218
	mv	%f0, l.773  #0
	fsw	%f0, 0(%x5) #218
	lw	%x5, 4(%x9)  #218
	mv	%f0, l.777  #0
	fsw	%f0, 8(%x5) #218
	lw	%x5, 4(%x9)  #218
	mv	%f0, l.781  #0
	fsw	%f0, 16(%x5) #218
	lw	%x10, 16(%x2)  #219
	lw	%x5, 0(%x10)  #219
	mv	%f0, l.785  #0
	fsw	%f0, 0(%x5) #219
	lw	%x5, 0(%x10)  #219
	mv	%f0, l.789  #0
	fsw	%f0, 8(%x5) #219
	lw	%x5, 4(%x10)  #220
	mv	%f0, l.793  #0
	fsw	%f0, 0(%x5) #220
	lw	%x5, 4(%x10)  #220
	mv	%f0, l.797  #0
	fsw	%f0, 8(%x5) #220
	lw	%x5, 8(%x10)  #221
	mv	%f0, l.801  #0
	fsw	%f0, 0(%x5) #221
	lw	%x5, 8(%x10)  #221
	mv	%f0, l.805  #0
	fsw	%f0, 8(%x5) #221
	addi	%x5, %x0, 2  #0
	addi	%x6, %x0, 3  #0
	sw	%x11, 20(%x2)  #222
	mv	%x7, %x5
	sw	%x1, 28(%x2)  #222
	addi	%x2, %x2, 32  #222
	jal	%x1, mul.370  #222
	addi	%x2, %x2, -32  #222
	lw	%x1, 28(%x2) #222
	lw	%x5, 20(%x2)  #223
	lw	%x6, 0(%x5)  #223
	flw	%f0, 0(%x6)  #223
	sw	%x1, 28(%x2)  #223
	addi	%x2, %x2, 32  #223
	jal	%x1, min_caml_truncate  #223
	addi	%x2, %x2, -32  #223
	lw	%x1, 28(%x2) #223
	sw	%x1, 28(%x2)  #223
	addi	%x2, %x2, 32  #223
	jal	%x1, print_int.342  #223
	addi	%x2, %x2, -32  #223
	lw	%x1, 28(%x2) #223
	mv	%x5, %g0
	sw	%x1, 28(%x2)  #224
	addi	%x2, %x2, 32  #224
	jal	%x1, min_caml_print_newline  #224
	addi	%x2, %x2, -32  #224
	lw	%x1, 28(%x2) #224
	lw	%x5, 20(%x2)  #225
	lw	%x6, 0(%x5)  #225
	flw	%f0, 8(%x6)  #225
	sw	%x1, 28(%x2)  #225
	addi	%x2, %x2, 32  #225
	jal	%x1, min_caml_truncate  #225
	addi	%x2, %x2, -32  #225
	lw	%x1, 28(%x2) #225
	sw	%x1, 28(%x2)  #225
	addi	%x2, %x2, 32  #225
	jal	%x1, print_int.342  #225
	addi	%x2, %x2, -32  #225
	lw	%x1, 28(%x2) #225
	mv	%x5, %g0
	sw	%x1, 28(%x2)  #226
	addi	%x2, %x2, 32  #226
	jal	%x1, min_caml_print_newline  #226
	addi	%x2, %x2, -32  #226
	lw	%x1, 28(%x2) #226
	lw	%x5, 20(%x2)  #227
	lw	%x6, 4(%x5)  #227
	flw	%f0, 0(%x6)  #227
	sw	%x1, 28(%x2)  #227
	addi	%x2, %x2, 32  #227
	jal	%x1, min_caml_truncate  #227
	addi	%x2, %x2, -32  #227
	lw	%x1, 28(%x2) #227
	sw	%x1, 28(%x2)  #227
	addi	%x2, %x2, 32  #227
	jal	%x1, print_int.342  #227
	addi	%x2, %x2, -32  #227
	lw	%x1, 28(%x2) #227
	mv	%x5, %g0
	sw	%x1, 28(%x2)  #228
	addi	%x2, %x2, 32  #228
	jal	%x1, min_caml_print_newline  #228
	addi	%x2, %x2, -32  #228
	lw	%x1, 28(%x2) #228
	lw	%x5, 20(%x2)  #229
	lw	%x5, 4(%x5)  #229
	flw	%f0, 8(%x5)  #229
	sw	%x1, 28(%x2)  #229
	addi	%x2, %x2, 32  #229
	jal	%x1, min_caml_truncate  #229
	addi	%x2, %x2, -32  #229
	lw	%x1, 28(%x2) #229
	sw	%x1, 28(%x2)  #229
	addi	%x2, %x2, 32  #229
	jal	%x1, print_int.342  #229
	addi	%x2, %x2, -32  #229
	lw	%x1, 28(%x2) #229
	mv	%x5, %g0
	sw	%x1, 28(%x2)  #230
	addi	%x2, %x2, 32  #230
	jal	%x1, min_caml_print_newline  #230
	addi	%x2, %x2, -32  #230
	lw	%x1, 28(%x2) #230
	addi	%x2, %x2, 112
