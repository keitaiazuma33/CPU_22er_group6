.section	".rodata"
.align	8
.section	".text"
g.52:  #pc 0
	lw	%x6, 40(%x22)  #0 pc 4
	lw	%x7, 36(%x22)  #0 pc 8
	lw	%x9, 32(%x22)  #0 pc 12
	lw	%x10, 28(%x22)  #0 pc 16
	lw	%x11, 24(%x22)  #0 pc 20
	lw	%x12, 20(%x22)  #0 pc 24
	lw	%x13, 16(%x22)  #0 pc 28
	lw	%x14, 12(%x22)  #0 pc 32
	lw	%x15, 8(%x22)  #0 pc 36
	lw	%x16, 4(%x22)  #0 pc 40
	add	%x14, %x16, %x14  #5 pc 44
	add	%x13, %x14, %x13  #5 pc 48
	add	%x12, %x13, %x12  #5 pc 52
	add	%x11, %x12, %x11  #5 pc 56
	add	%x10, %x11, %x10  #5 pc 60
	add	%x9, %x10, %x9  #5 pc 64
	add	%x7, %x9, %x7  #5 pc 68
	add	%x6, %x7, %x6  #5 pc 72
	add	%x6, %x6, %x15  #5 pc 76
	bge	%x0, %x5, 12  #6 pc 80
	j	ble_else.90 #pc 84
	nop #pc 88
	sub	%x5, %x0, %x5  #6 pc 92
	lw	0(%x23), %x22  #6 pc 96
	jalr	%x0, %x23, 0  #6 pc 100
	nop #pc 104
ble_else.90: #pc 104
	mv	%x5, %x6  #6 pc 108
	ret #pc 112
	nop #pc 116
h.26:  #pc 116
	lw	%x6, 36(%x5)  #3 pc 120
	lw	%x7, 32(%x5)  #3 pc 124
	lw	%x9, 28(%x5)  #3 pc 128
	lw	%x10, 24(%x5)  #3 pc 132
	lw	%x11, 20(%x5)  #3 pc 136
	lw	%x12, 16(%x5)  #3 pc 140
	lw	%x13, 12(%x5)  #3 pc 144
	lw	%x14, 8(%x5)  #3 pc 148
	lw	%x15, 4(%x5)  #3 pc 152
	lw	%x5, 0(%x5)  #3 pc 156
	mv	%x22, %x3  #4 pc 160
	addi	%x3, %x3, 48  #4 pc 164
	addi	%x24, %x0, 0  #4 g.52 pc 168
	mv	%x16, %x24  #4 pc 172
	sw	%x16, 0(%x22)  #4 pc 176
	sw	%x7, 40(%x22)  #4 pc 180
	sw	%x9, 36(%x22)  #4 pc 184
	sw	%x10, 32(%x22)  #4 pc 188
	sw	%x11, 28(%x22)  #4 pc 192
	sw	%x12, 24(%x22)  #4 pc 196
	sw	%x13, 20(%x22)  #4 pc 200
	sw	%x14, 16(%x22)  #4 pc 204
	sw	%x15, 12(%x22)  #4 pc 208
	sw	%x6, 8(%x22)  #4 pc 212
	sw	%x5, 4(%x22)  #4 pc 216
	addi	%x5, %x0, 1  #0 pc 220
	lw	0(%x23), %x22  #7 pc 224
	jalr	%x0, %x23, 0  #7 pc 228
	nop #pc 232
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 1  #0 pc 236
	addi	%x6, %x0, 2  #0 pc 240
	addi	%x7, %x0, 3  #0 pc 244
	addi	%x9, %x0, 4  #0 pc 248
	addi	%x10, %x0, 5  #0 pc 252
	addi	%x11, %x0, 6  #0 pc 256
	addi	%x12, %x0, 7  #0 pc 260
	addi	%x13, %x0, 8  #0 pc 264
	addi	%x14, %x0, 9  #0 pc 268
	addi	%x15, %x0, 10  #0 pc 272
	mv	%x16, %x3  #8 pc 276
	addi	%x3, %x3, 40  #8 pc 280
	sw	%x15, 36(%x16)  #8 pc 284
	sw	%x14, 32(%x16)  #8 pc 288
	sw	%x13, 28(%x16)  #8 pc 292
	sw	%x12, 24(%x16)  #8 pc 296
	sw	%x11, 20(%x16)  #8 pc 300
	sw	%x10, 16(%x16)  #8 pc 304
	sw	%x9, 12(%x16)  #8 pc 308
	sw	%x7, 8(%x16)  #8 pc 312
	sw	%x6, 4(%x16)  #8 pc 316
	sw	%x5, 0(%x16)  #8 pc 320
	mv	%x5, %x16  #8 pc 324
	sw	%x1, 12(%x2)  #8 pc 328
	addi	%x2, %x2, 16  #8 pc 332
	jal	%x1, h.26  #8 pc 336
	addi	%x2, %x2, -16  #8 pc 340
	lw	%x1, 12(%x2) #8 pc 344
	sw	%x1, 12(%x2)  #8 pc 348
	addi	%x2, %x2, 16  #8 pc 352
	jal	%x1, min_caml_print_int  #8 pc 356
	addi	%x2, %x2, -16  #8 pc 360
	lw	%x1, 12(%x2) #8 pc 364
	mv	%x5, %g0 #pc 368
	sw	%x1, 12(%x2)  #9 pc 372
	addi	%x2, %x2, 16  #9 pc 376
	jal	%x1, min_caml_print_newline  #9 pc 380
	addi	%x2, %x2, -16  #9 pc 384
	lw	%x1, 12(%x2) #9 pc 388
	addi	%x2, %x2, 112
