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
	add	%x24, %x0, %x5  #1 pc 4
	flw	%f0, 0(%x24)  #1 pc 8
	ret #pc 12
	nop #pc 16
gety.25:  #pc 16
	addi	%x24, %x0, 8  #pc 20
	add	%x24, %x24, %x5  #2 pc 24
	flw	%f0, 0(%x24)  #2 pc 28
	ret #pc 32
	nop #pc 36
getz.27:  #pc 36
	addi	%x24, %x0, 16  #pc 40
	add	%x24, %x24, %x5  #3 pc 44
	flw	%f0, 0(%x24)  #3 pc 48
	ret #pc 52
	nop #pc 56
inprod.29:  #pc 56
	sw	%x5, 0(%x2)  #5 pc 60
	sw	%x6, 4(%x2)  #5 pc 64
	sw	%x1, 12(%x2)  #5 pc 68
	addi	%x2, %x2, 16  #5 pc 72
	jal	%x1, getx.23  #5 pc 76
	addi	%x2, %x2, -16  #5 pc 80
	lw	%x1, 12(%x2) #5 pc 84
	lw	%x5, 4(%x2)  #5 pc 88
	fsw	%f0, 8(%x2)  #5 pc 92
	sw	%x1, 20(%x2)  #5 pc 96
	addi	%x2, %x2, 24  #5 pc 100
	jal	%x1, getx.23  #5 pc 104
	addi	%x2, %x2, -24  #5 pc 108
	lw	%x1, 20(%x2) #5 pc 112
	flw	%f2, 8(%x2)  #5 pc 116
	fmul	%f0, %f2, %f0  #5 pc 120
	lw	%x5, 0(%x2)  #5 pc 124
	fsw	%f0, 16(%x2)  #5 pc 128
	sw	%x1, 28(%x2)  #5 pc 132
	addi	%x2, %x2, 32  #5 pc 136
	jal	%x1, gety.25  #5 pc 140
	addi	%x2, %x2, -32  #5 pc 144
	lw	%x1, 28(%x2) #5 pc 148
	lw	%x5, 4(%x2)  #5 pc 152
	fsw	%f0, 24(%x2)  #5 pc 156
	sw	%x1, 36(%x2)  #5 pc 160
	addi	%x2, %x2, 40  #5 pc 164
	jal	%x1, gety.25  #5 pc 168
	addi	%x2, %x2, -40  #5 pc 172
	lw	%x1, 36(%x2) #5 pc 176
	flw	%f2, 24(%x2)  #5 pc 180
	fmul	%f0, %f2, %f0  #5 pc 184
	flw	%f2, 16(%x2)  #5 pc 188
	fadd	%f0, %f2, %f0  #5 pc 192
	lw	%x5, 0(%x2)  #5 pc 196
	fsw	%f0, 32(%x2)  #5 pc 200
	sw	%x1, 44(%x2)  #5 pc 204
	addi	%x2, %x2, 48  #5 pc 208
	jal	%x1, getz.27  #5 pc 212
	addi	%x2, %x2, -48  #5 pc 216
	lw	%x1, 44(%x2) #5 pc 220
	lw	%x5, 4(%x2)  #5 pc 224
	fsw	%f0, 40(%x2)  #5 pc 228
	sw	%x1, 52(%x2)  #5 pc 232
	addi	%x2, %x2, 56  #5 pc 236
	jal	%x1, getz.27  #5 pc 240
	addi	%x2, %x2, -56  #5 pc 244
	lw	%x1, 52(%x2) #5 pc 248
	flw	%f2, 40(%x2)  #5 pc 252
	fmul	%f0, %f2, %f0  #5 pc 256
	flw	%f2, 32(%x2)  #5 pc 260
	fadd	%f0, %f2, %f0  #5 pc 264
	ret #pc 268
	nop #pc 272
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	mv	%f0, l.63  #0 pc 276
	mv	%f2, l.65  #0 pc 280
	mv	%f4, l.67  #0 pc 284
	mv	%f6, l.69  #0 pc 288
	mv	%x5, %x3  #6 pc 292
	addi	%x3, %x3, 24  #6 pc 296
	addi	%x24, %x0, 16  #pc 300
	add	%x24, %x24, %x5  #6 pc 304
	fsw	%f6, 0(%x24) #6 pc 308
	addi	%x24, %x0, 8  #pc 312
	add	%x24, %x24, %x5  #6 pc 316
	fsw	%f4, 0(%x24) #6 pc 320
	add	%x24, %x0, %x5  #6 pc 324
	fsw	%f2, 0(%x24) #6 pc 328
	mv	%f2, l.75  #0 pc 332
	mv	%f4, l.77  #0 pc 336
	mv	%f6, l.79  #0 pc 340
	mv	%x6, %x3  #6 pc 344
	addi	%x3, %x3, 24  #6 pc 348
	addi	%x24, %x0, 16  #pc 352
	add	%x24, %x24, %x6  #6 pc 356
	fsw	%f6, 0(%x24) #6 pc 360
	addi	%x24, %x0, 8  #pc 364
	add	%x24, %x24, %x6  #6 pc 368
	fsw	%f4, 0(%x24) #6 pc 372
	add	%x24, %x0, %x6  #6 pc 376
	fsw	%f2, 0(%x24) #6 pc 380
	fsw	%f0, 8(%x2)  #6 pc 384
	sw	%x1, 20(%x2)  #6 pc 388
	addi	%x2, %x2, 24  #6 pc 392
	jal	%x1, inprod.29  #6 pc 396
	addi	%x2, %x2, -24  #6 pc 400
	lw	%x1, 20(%x2) #6 pc 404
	flw	%f2, 8(%x2)  #6 pc 408
	fmul	%f0, %f2, %f0  #6 pc 412
	sw	%x1, 20(%x2)  #6 pc 416
	addi	%x2, %x2, 24  #6 pc 420
	jal	%x1, min_caml_truncate  #6 pc 424
	addi	%x2, %x2, -24  #6 pc 428
	lw	%x1, 20(%x2) #6 pc 432
	sw	%x1, 20(%x2)  #6 pc 436
	addi	%x2, %x2, 24  #6 pc 440
	jal	%x1, min_caml_print_int  #6 pc 444
	addi	%x2, %x2, -24  #6 pc 448
	lw	%x1, 20(%x2) #6 pc 452
	addi	%x2, %x2, 112
