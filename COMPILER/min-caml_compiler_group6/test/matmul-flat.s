.section	".rodata"
.align	8
l.798:	! 12.000000
l.794:	! 11.000000
l.790:	! 10.000000
l.786:	! 9.000000
l.782:	! 8.000000
l.778:	! 7.000000
l.774:	! 6.000000
l.770:	! 5.000000
l.766:	! 4.000000
l.762:	! 3.000000
l.758:	! 2.000000
l.754:	! 1.000000
l.749:	! 0.000000
.section	".text"
mul_abs.324:
	addi	%x24, %x0, -1
	beq	%x7, %x24, 12  #57
	j	be_else.852
	nop
	mv	%x5, %x9  #58
	ret
	nop
be_else.852:
	addi	%x10, %x0, 1  #0
	sll	%x10, %x10, %x7  #60
	and	%x10, %x6, %x10  #60
	beq	%x10, %x0, 12  #60
	j	be_else.853
	nop
	addi	%x7, %x7, -1  #61
	j	mul_abs.324  #61
	nop
be_else.853:
	addi	%x10, %x7, -1  #63
	sll	%x7, %x5, %x7  #63
	add	%x9, %x9, %x7  #63
	mv	%x7, %x10
	j	mul_abs.324  #63
	nop
mul.329:
	bge	%x5, %x0, 12  #67
	j	bge_else.854
	nop
	mv	%x7, %x5  #67
	j	bge_cont.855
	nop
bge_else.854:
	sub	%x7, %x0, %x5  #67
bge_cont.855:
	bge	%x6, %x0, 12  #68
	j	bge_else.856
	nop
	mv	%x9, %x6  #68
	j	bge_cont.857
	nop
bge_else.856:
	sub	%x9, %x0, %x6  #68
bge_cont.857:
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
	j	be_else.858
	nop
	ret
	nop
be_else.858:
	sub	%x5, %x0, %x5  #73
	ret
	nop
div_abs.332:
	addi	%x24, %x0, -1
	beq	%x7, %x24, 12  #77
	j	be_else.859
	nop
	mv	%x5, %x9  #78
	ret
	nop
be_else.859:
	srl	%x10, %x5, %x7  #80
	bge	%x10, %x6, 12  #80
	j	ble_else.860
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
ble_else.860:
	addi	%x7, %x7, -1  #83
	j	div_abs.332  #83
	nop
div.337:
	bge	%x5, %x0, 12  #87
	j	bge_else.861
	nop
	mv	%x7, %x5  #87
	j	bge_cont.862
	nop
bge_else.861:
	sub	%x7, %x0, %x5  #87
bge_cont.862:
	bge	%x6, %x0, 12  #88
	j	bge_else.863
	nop
	mv	%x9, %x6  #88
	j	bge_cont.864
	nop
bge_else.863:
	sub	%x9, %x0, %x6  #88
bge_cont.864:
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
	j	be_else.865
	nop
	ret
	nop
be_else.865:
	sub	%x5, %x0, %x5  #93
	ret
	nop
print_int.342:
	bge	%x5, %x0, 12  #100
	j	bge_else.866
	nop
	addi	%x24, %x0, 10
	bge	%x5, %x24, 12  #104
	j	bge_else.867
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
bge_else.867:
	addi	%x5, %x5, 48  #105
	out	%x5  #105
	ret
	nop
bge_else.866:
	sub	%x5, %x0, %x5  #102
	j	print_int.342  #102
	nop
assign_array.356:
	beq	%x7, %x0, 12  #160
	j	be_else.870
	nop
	slli	%x7, %x7, 2  #161
	sw	%x6, %x7(%x5)  #161
	ret
	nop
be_else.870:
	slli	%x9, %x7, 2  #163
	sw	%x6, %x9(%x5)  #163
	addi	%x7, %x7, -1  #164
	j	assign_array.356  #164
	nop
create_array.360:
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
assign_farray.363:
	beq	%x6, %x0, 12  #176
	j	be_else.872
	nop
	slli	%x6, %x6, 3  #177
	fsw	%f0, %x6(%x5) #177
	ret
	nop
be_else.872:
	slli	%x7, %x6, 3  #179
	fsw	%f0, %x7(%x5) #179
	addi	%x6, %x6, -1  #180
	j	assign_farray.363  #180
	nop
create_float_array.367:
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
loop3.370:
	bge	%x6, %x0, 12  #192
	j	bge_else.874
	nop
	slli	%x12, %x5, 2  #193
	lw	%x12, %x12(%x11)  #193
	slli	%x13, %x5, 2  #193
	lw	%x13, %x13(%x11)  #193
	slli	%x14, %x7, 3  #193
	flw	%f0, %x14(%x13)  #193
	slli	%x13, %x5, 2  #193
	lw	%x13, %x13(%x9)  #193
	slli	%x14, %x6, 3  #193
	flw	%f2, %x14(%x13)  #193
	slli	%x13, %x6, 2  #193
	lw	%x13, %x13(%x10)  #193
	slli	%x14, %x7, 3  #193
	flw	%f4, %x14(%x13)  #193
	fmul	%f2, %f2, %f4  #193
	fadd	%f0, %f0, %f2  #193
	slli	%x13, %x7, 3  #193
	fsw	%f0, %x13(%x12) #193
	addi	%x6, %x6, -1  #194
	j	loop3.370  #194
	nop
bge_else.874:
	ret
	nop
loop2.377:
	bge	%x7, %x0, 12  #196
	j	bge_else.876
	nop
	addi	%x12, %x6, -1  #197
	sw	%x11, 0(%x2)  #197
	sw	%x10, 4(%x2)  #197
	sw	%x9, 8(%x2)  #197
	sw	%x6, 12(%x2)  #197
	sw	%x5, 16(%x2)  #197
	sw	%x7, 20(%x2)  #197
	mv	%x6, %x12
	sw	%x1, 28(%x2)  #197
	addi	%x2, %x2, 32  #197
	jal	%x1, loop3.370  #197
	addi	%x2, %x2, -32  #197
	lw	%x1, 28(%x2) #197
	lw	%x5, 20(%x2)  #198
	addi	%x7, %x5, -1  #198
	lw	%x5, 16(%x2)  #198
	lw	%x6, 12(%x2)  #198
	lw	%x9, 8(%x2)  #198
	lw	%x10, 4(%x2)  #198
	lw	%x11, 0(%x2)  #198
	j	loop2.377  #198
	nop
bge_else.876:
	ret
	nop
loop1.384:
	bge	%x5, %x0, 12  #200
	j	bge_else.878
	nop
	addi	%x12, %x7, -1  #201
	sw	%x11, 0(%x2)  #201
	sw	%x10, 4(%x2)  #201
	sw	%x9, 8(%x2)  #201
	sw	%x7, 12(%x2)  #201
	sw	%x6, 16(%x2)  #201
	sw	%x5, 20(%x2)  #201
	mv	%x7, %x12
	sw	%x1, 28(%x2)  #201
	addi	%x2, %x2, 32  #201
	jal	%x1, loop2.377  #201
	addi	%x2, %x2, -32  #201
	lw	%x1, 28(%x2) #201
	lw	%x5, 20(%x2)  #202
	addi	%x5, %x5, -1  #202
	lw	%x6, 16(%x2)  #202
	lw	%x7, 12(%x2)  #202
	lw	%x9, 8(%x2)  #202
	lw	%x10, 4(%x2)  #202
	lw	%x11, 0(%x2)  #202
	j	loop1.384  #202
	nop
bge_else.878:
	ret
	nop
mul.391:
	addi	%x5, %x5, -1  #204
	j	loop1.384  #204
	nop
init.399:
	bge	%x5, %x0, 12  #207
	j	bge_else.880
	nop
	mv	%f0, l.749  #0
	sw	%x6, 0(%x2)  #208
	sw	%x7, 4(%x2)  #208
	sw	%x5, 8(%x2)  #208
	mv	%x5, %x6
	sw	%x1, 12(%x2)  #208
	addi	%x2, %x2, 16  #208
	jal	%x1, create_float_array.367  #208
	addi	%x2, %x2, -16  #208
	lw	%x1, 12(%x2) #208
	lw	%x6, 8(%x2)  #208
	slli	%x7, %x6, 2  #208
	lw	%x9, 4(%x2)  #208
	sw	%x5, %x7(%x9)  #208
	addi	%x5, %x6, -1  #209
	lw	%x6, 0(%x2)  #209
	mv	%x7, %x9
	j	init.399  #209
	nop
bge_else.880:
	ret
	nop
make.403:
	sw	%x6, 0(%x2)  #211
	sw	%x5, 4(%x2)  #211
	mv	%x6, %x7
	sw	%x1, 12(%x2)  #211
	addi	%x2, %x2, 16  #211
	jal	%x1, create_array.360  #211
	addi	%x2, %x2, -16  #211
	lw	%x1, 12(%x2) #211
	mv	%x7, %x5  #211
	lw	%x5, 4(%x2)  #212
	addi	%x5, %x5, -1  #212
	lw	%x6, 0(%x2)  #212
	sw	%x7, 8(%x2)  #212
	sw	%x1, 12(%x2)  #212
	addi	%x2, %x2, 16  #212
	jal	%x1, init.399  #212
	addi	%x2, %x2, -16  #212
	lw	%x1, 12(%x2) #212
	lw	%x5, 8(%x2)  #213
	ret
	nop
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 0  #0
	mv	%f0, l.749  #0
	sw	%x1, 12(%x2)  #205
	addi	%x2, %x2, 16  #205
	jal	%x1, create_float_array.367  #205
	addi	%x2, %x2, -16  #205
	lw	%x1, 12(%x2) #205
	mv	%x7, %x5  #205
	addi	%x5, %x0, 2  #0
	addi	%x6, %x0, 3  #0
	sw	%x7, 8(%x2)  #214
	sw	%x1, 12(%x2)  #214
	addi	%x2, %x2, 16  #214
	jal	%x1, make.403  #214
	addi	%x2, %x2, -16  #214
	lw	%x1, 12(%x2) #214
	addi	%x6, %x0, 3  #0
	addi	%x7, %x0, 2  #0
	lw	%x9, 8(%x2)  #215
	sw	%x5, 12(%x2)  #215
	mv	%x5, %x6
	mv	%x6, %x7
	mv	%x7, %x9
	sw	%x1, 20(%x2)  #215
	addi	%x2, %x2, 24  #215
	jal	%x1, make.403  #215
	addi	%x2, %x2, -24  #215
	lw	%x1, 20(%x2) #215
	addi	%x6, %x0, 2  #0
	lw	%x7, 8(%x2)  #216
	sw	%x5, 16(%x2)  #216
	mv	%x5, %x6
	sw	%x1, 20(%x2)  #216
	addi	%x2, %x2, 24  #216
	jal	%x1, make.403  #216
	addi	%x2, %x2, -24  #216
	lw	%x1, 20(%x2) #216
	mv	%x11, %x5  #216
	lw	%x9, 12(%x2)  #217
	lw	%x5, 0(%x9)  #217
	mv	%f0, l.754  #0
	fsw	%f0, 0(%x5) #217
	lw	%x5, 0(%x9)  #217
	mv	%f0, l.758  #0
	fsw	%f0, 8(%x5) #217
	lw	%x5, 0(%x9)  #217
	mv	%f0, l.762  #0
	fsw	%f0, 16(%x5) #217
	lw	%x5, 4(%x9)  #218
	mv	%f0, l.766  #0
	fsw	%f0, 0(%x5) #218
	lw	%x5, 4(%x9)  #218
	mv	%f0, l.770  #0
	fsw	%f0, 8(%x5) #218
	lw	%x5, 4(%x9)  #218
	mv	%f0, l.774  #0
	fsw	%f0, 16(%x5) #218
	lw	%x10, 16(%x2)  #219
	lw	%x5, 0(%x10)  #219
	mv	%f0, l.778  #0
	fsw	%f0, 0(%x5) #219
	lw	%x5, 0(%x10)  #219
	mv	%f0, l.782  #0
	fsw	%f0, 8(%x5) #219
	lw	%x5, 4(%x10)  #220
	mv	%f0, l.786  #0
	fsw	%f0, 0(%x5) #220
	lw	%x5, 4(%x10)  #220
	mv	%f0, l.790  #0
	fsw	%f0, 8(%x5) #220
	lw	%x5, 8(%x10)  #221
	mv	%f0, l.794  #0
	fsw	%f0, 0(%x5) #221
	lw	%x5, 8(%x10)  #221
	mv	%f0, l.798  #0
	fsw	%f0, 8(%x5) #221
	addi	%x5, %x0, 2  #0
	addi	%x6, %x0, 3  #0
	sw	%x11, 20(%x2)  #222
	mv	%x7, %x5
	sw	%x1, 28(%x2)  #222
	addi	%x2, %x2, 32  #222
	jal	%x1, mul.391  #222
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
	sw	%x1, 28(%x2)  #230
	addi	%x2, %x2, 32  #230
	jal	%x1, min_caml_print_newline  #230
	addi	%x2, %x2, -32  #230
	lw	%x1, 28(%x2) #230
	addi	%x2, %x2, 112
