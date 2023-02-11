.section	".rodata"
.align	8
l.79:	! 6.000000
l.77:	! 5.000000
l.75:	! 4.000000
l.69:	! 3.000000
l.67:	! 2.000000
l.65:	! 1.000000
l.63:	! 1000000.000000
.section	".text"
getx.23:  #pc 0
	add	%x24, %x0, %x5  #1 pc 0
	flw	%f0, 0(%x24)  #1 pc 4
	ret #pc 8
	nop #pc 12
gety.25:  #pc 16
	addi	%x24, %x0, 8  #pc 16
	add	%x24, %x24, %x5  #2 pc 20
	flw	%f0, 0(%x24)  #2 pc 24
	ret #pc 28
	nop #pc 32
getz.27:  #pc 36
	addi	%x24, %x0, 16  #pc 36
	add	%x24, %x24, %x5  #3 pc 40
	flw	%f0, 0(%x24)  #3 pc 44
	ret #pc 48
	nop #pc 52
inprod.29:  #pc 56
	sw	%x5, 0(%x2)  #5 pc 56
	sw	%x6, 4(%x2)  #5 pc 60
	sw	%x1, 12(%x2)  #5 pc 64
	addi	%x2, %x2, 16  #5 pc 68
	jal	%x1, getx.23  #5 pc 72
	addi	%x2, %x2, -16  #5 pc 76
	lw	%x1, 12(%x2) #5 pc 80
	lw	%x5, 4(%x2)  #5 pc 84
	fsw	%f0, 8(%x2)  #5 pc 88
	sw	%x1, 20(%x2)  #5 pc 92
	addi	%x2, %x2, 24  #5 pc 96
	jal	%x1, getx.23  #5 pc 100
	addi	%x2, %x2, -24  #5 pc 104
	lw	%x1, 20(%x2) #5 pc 108
	flw	%f1, 8(%x2)  #5 pc 112
	fmul	%f0, %f1, %f0  #5 pc 116
	lw	%x5, 0(%x2)  #5 pc 120
	fsw	%f0, 16(%x2)  #5 pc 124
	sw	%x1, 28(%x2)  #5 pc 128
	addi	%x2, %x2, 32  #5 pc 132
	jal	%x1, gety.25  #5 pc 136
	addi	%x2, %x2, -32  #5 pc 140
	lw	%x1, 28(%x2) #5 pc 144
	lw	%x5, 4(%x2)  #5 pc 148
	fsw	%f0, 24(%x2)  #5 pc 152
	sw	%x1, 36(%x2)  #5 pc 156
	addi	%x2, %x2, 40  #5 pc 160
	jal	%x1, gety.25  #5 pc 164
	addi	%x2, %x2, -40  #5 pc 168
	lw	%x1, 36(%x2) #5 pc 172
	flw	%f1, 24(%x2)  #5 pc 176
	fmul	%f0, %f1, %f0  #5 pc 180
	flw	%f1, 16(%x2)  #5 pc 184
	fadd	%f0, %f1, %f0  #5 pc 188
	lw	%x5, 0(%x2)  #5 pc 192
	fsw	%f0, 32(%x2)  #5 pc 196
	sw	%x1, 44(%x2)  #5 pc 200
	addi	%x2, %x2, 48  #5 pc 204
	jal	%x1, getz.27  #5 pc 208
	addi	%x2, %x2, -48  #5 pc 212
	lw	%x1, 44(%x2) #5 pc 216
	lw	%x5, 4(%x2)  #5 pc 220
	fsw	%f0, 40(%x2)  #5 pc 224
	sw	%x1, 52(%x2)  #5 pc 228
	addi	%x2, %x2, 56  #5 pc 232
	jal	%x1, getz.27  #5 pc 236
	addi	%x2, %x2, -56  #5 pc 240
	lw	%x1, 52(%x2) #5 pc 244
	flw	%f1, 40(%x2)  #5 pc 248
	fmul	%f0, %f1, %f0  #5 pc 252
	flw	%f1, 32(%x2)  #5 pc 256
	fadd	%f0, %f1, %f0  #5 pc 260
	ret #pc 264
	nop #pc 268
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	fmv	%f0, l.63  #0 pc 272
	fmv	%f1, l.65  #0 pc 276
	fmv	%f2, l.67  #0 pc 280
	fmv	%f3, l.69  #0 pc 284
	addi	%x5, %x3, 0  #6 pc 288
	addi	%x3, %x3, 24  #6 pc 292
	addi	%x24, %x0, 16  #pc 296
	add	%x24, %x24, %x5  #6 pc 300
	fsw	%f3, 0(%x24) #6 pc 304
	addi	%x24, %x0, 8  #pc 308
	add	%x24, %x24, %x5  #6 pc 312
	fsw	%f2, 0(%x24) #6 pc 316
	add	%x24, %x0, %x5  #6 pc 320
	fsw	%f1, 0(%x24) #6 pc 324
	fmv	%f1, l.75  #0 pc 328
	fmv	%f2, l.77  #0 pc 332
	fmv	%f3, l.79  #0 pc 336
	addi	%x6, %x3, 0  #6 pc 340
	addi	%x3, %x3, 24  #6 pc 344
	addi	%x24, %x0, 16  #pc 348
	add	%x24, %x24, %x6  #6 pc 352
	fsw	%f3, 0(%x24) #6 pc 356
	addi	%x24, %x0, 8  #pc 360
	add	%x24, %x24, %x6  #6 pc 364
	fsw	%f2, 0(%x24) #6 pc 368
	add	%x24, %x0, %x6  #6 pc 372
	fsw	%f1, 0(%x24) #6 pc 376
	fsw	%f0, 8(%x2)  #6 pc 380
	sw	%x1, 20(%x2)  #6 pc 384
	addi	%x2, %x2, 24  #6 pc 388
	jal	%x1, inprod.29  #6 pc 392
	addi	%x2, %x2, -24  #6 pc 396
	lw	%x1, 20(%x2) #6 pc 400
	flw	%f1, 8(%x2)  #6 pc 404
	fmul	%f0, %f1, %f0  #6 pc 408
	sw	%x1, 20(%x2)  #6 pc 412
	addi	%x2, %x2, 24  #6 pc 416
	jal	%x1, min_caml_truncate  #6 pc 420
	addi	%x2, %x2, -24  #6 pc 424
	lw	%x1, 20(%x2) #6 pc 428
	sw	%x1, 20(%x2)  #6 pc 432
	addi	%x2, %x2, 24  #6 pc 436
	jal	%x1, min_caml_print_int  #6 pc 440
	addi	%x2, %x2, -24  #6 pc 444
	lw	%x1, 20(%x2) #6 pc 448
	addi	%x2, %x2, 112
