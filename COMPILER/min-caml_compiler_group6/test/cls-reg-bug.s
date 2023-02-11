.section	".rodata"
.align	8
.section	".text"
g.52:  #pc 0
	lw	%x6, 40(%x29)  #0 pc 0
	lw	%x7, 36(%x29)  #0 pc 4
	lw	%x8, 32(%x29)  #0 pc 8
	lw	%x9, 28(%x29)  #0 pc 12
	lw	%x10, 24(%x29)  #0 pc 16
	lw	%x11, 20(%x29)  #0 pc 20
	lw	%x12, 16(%x29)  #0 pc 24
	lw	%x13, 12(%x29)  #0 pc 28
	lw	%x14, 8(%x29)  #0 pc 32
	lw	%x15, 4(%x29)  #0 pc 36
	add	%x13, %x15, %x13  #5 pc 40
	add	%x12, %x13, %x12  #5 pc 44
	add	%x11, %x12, %x11  #5 pc 48
	add	%x10, %x11, %x10  #5 pc 52
	add	%x9, %x10, %x9  #5 pc 56
	add	%x8, %x9, %x8  #5 pc 60
	add	%x7, %x8, %x7  #5 pc 64
	add	%x6, %x7, %x6  #5 pc 68
	add	%x6, %x6, %x14  #5 pc 72
	bge	%x0, %x5, 12  #6 pc 76
	j	ble_else.90 #pc 80
	nop #pc 84
	sub	%x5, %x0, %x5  #6 pc 88
	lw	%x30, 0(%x29)  #6 pc 92
	jalr	%x0, %x30, 0  #6 pc 96
	nop #pc 100
ble_else.90: #pc 104
	addi	%x5, %x6, 0  #6 pc 104
	ret #pc 108
	nop #pc 112
h.26:  #pc 116
	lw	%x6, 36(%x5)  #3 pc 116
	lw	%x7, 32(%x5)  #3 pc 120
	lw	%x8, 28(%x5)  #3 pc 124
	lw	%x9, 24(%x5)  #3 pc 128
	lw	%x10, 20(%x5)  #3 pc 132
	lw	%x11, 16(%x5)  #3 pc 136
	lw	%x12, 12(%x5)  #3 pc 140
	lw	%x13, 8(%x5)  #3 pc 144
	lw	%x14, 4(%x5)  #3 pc 148
	lw	%x5, 0(%x5)  #3 pc 152
	addi	%x29, %x3, 0  #4 pc 156
	addi	%x3, %x3, 44  #4 pc 160
	addi	%x31, %x0, 0  #4 g.52 pc 164
	addi	%x15, %x31, 0  #4 pc 168
	sw	%x15, 0(%x29)  #4 pc 172
	sw	%x7, 40(%x29)  #4 pc 176
	sw	%x8, 36(%x29)  #4 pc 180
	sw	%x9, 32(%x29)  #4 pc 184
	sw	%x10, 28(%x29)  #4 pc 188
	sw	%x11, 24(%x29)  #4 pc 192
	sw	%x12, 20(%x29)  #4 pc 196
	sw	%x13, 16(%x29)  #4 pc 200
	sw	%x14, 12(%x29)  #4 pc 204
	sw	%x6, 8(%x29)  #4 pc 208
	sw	%x5, 4(%x29)  #4 pc 212
	addi	%x5, %x0, 1  #0 pc 216
	lw	%x30, 0(%x29)  #7 pc 220
	jalr	%x0, %x30, 0  #7 pc 224
	nop #pc 228
.global	min_caml_start
min_caml_start:
	addi	%x2, %x0, 0
	addi	%x3, %x0, 1024
	addi	%x5, %x0, 1  #0 pc 240
	addi	%x6, %x0, 2  #0 pc 244
	addi	%x7, %x0, 3  #0 pc 248
	addi	%x8, %x0, 4  #0 pc 252
	addi	%x9, %x0, 5  #0 pc 256
	addi	%x10, %x0, 6  #0 pc 260
	addi	%x11, %x0, 7  #0 pc 264
	addi	%x12, %x0, 8  #0 pc 268
	addi	%x13, %x0, 9  #0 pc 272
	addi	%x14, %x0, 10  #0 pc 276
	addi	%x15, %x3, 0  #8 pc 280
	addi	%x3, %x3, 40  #8 pc 284
	sw	%x14, 36(%x15)  #8 pc 288
	sw	%x13, 32(%x15)  #8 pc 292
	sw	%x12, 28(%x15)  #8 pc 296
	sw	%x11, 24(%x15)  #8 pc 300
	sw	%x10, 20(%x15)  #8 pc 304
	sw	%x9, 16(%x15)  #8 pc 308
	sw	%x8, 12(%x15)  #8 pc 312
	sw	%x7, 8(%x15)  #8 pc 316
	sw	%x6, 4(%x15)  #8 pc 320
	sw	%x5, 0(%x15)  #8 pc 324
	addi	%x5, %x15, 0  #8 pc 328
	sw	%x1, 0(%x2)  #8 pc 332
	addi	%x2, %x2, 4  #8 pc 336
	jal	%x1, h.26  #8 pc 340
	addi	%x2, %x2, -4  #8 pc 344
	lw	%x1, 0(%x2) #8 pc 348
	sw	%x1, 0(%x2)  #8 pc 352
	addi	%x2, %x2, 4  #8 pc 356
	jal	%x1, min_caml_print_int  #8 pc 360
	addi	%x2, %x2, -4  #8 pc 364
	lw	%x1, 0(%x2) #8 pc 368
	sw	%x1, 0(%x2)  #9 pc 372
	addi	%x2, %x2, 4  #9 pc 376
	jal	%x1, min_caml_print_newline  #9 pc 380
	addi	%x2, %x2, -4  #9 pc 384
	lw	%x1, 0(%x2) #9 pc 388
	addi	%x2, %x2, 112
