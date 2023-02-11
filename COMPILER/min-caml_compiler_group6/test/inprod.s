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
	flw	%f0, 0(%x5)  #1 pc 0
	ret #pc 4
	nop #pc 8
gety.25:  #pc 12
	flw	%f0, 4(%x5)  #2 pc 12
	ret #pc 16
	nop #pc 20
getz.27:  #pc 24
	flw	%f0, 8(%x5)  #3 pc 24
	ret #pc 28
	nop #pc 32
inprod.29:  #pc 36
	sw	%x5, 0(%x2)  #5 pc 36
	sw	%x6, 4(%x2)  #5 pc 40
	sw	%x1, 8(%x2)  #5 pc 44
	addi	%x2, %x2, 12  #5 pc 48
	jal	%x1, getx.23  #5 pc 52
	addi	%x2, %x2, -12  #5 pc 56
	lw	%x1, 8(%x2) #5 pc 60
	lw	%x5, 4(%x2)  #5 pc 64
	fsw	%f0, 8(%x2)  #5 pc 68
	sw	%x1, 16(%x2)  #5 pc 72
	addi	%x2, %x2, 20  #5 pc 76
	jal	%x1, getx.23  #5 pc 80
	addi	%x2, %x2, -20  #5 pc 84
	lw	%x1, 16(%x2) #5 pc 88
	flw	%f1, 8(%x2)  #5 pc 92
	fmul	%f0, %f1, %f0  #5 pc 96
	lw	%x5, 0(%x2)  #5 pc 100
	fsw	%f0, 16(%x2)  #5 pc 104
	sw	%x1, 24(%x2)  #5 pc 108
	addi	%x2, %x2, 28  #5 pc 112
	jal	%x1, gety.25  #5 pc 116
	addi	%x2, %x2, -28  #5 pc 120
	lw	%x1, 24(%x2) #5 pc 124
	lw	%x5, 4(%x2)  #5 pc 128
	fsw	%f0, 24(%x2)  #5 pc 132
	sw	%x1, 32(%x2)  #5 pc 136
	addi	%x2, %x2, 36  #5 pc 140
	jal	%x1, gety.25  #5 pc 144
	addi	%x2, %x2, -36  #5 pc 148
	lw	%x1, 32(%x2) #5 pc 152
	flw	%f1, 24(%x2)  #5 pc 156
	fmul	%f0, %f1, %f0  #5 pc 160
	flw	%f1, 16(%x2)  #5 pc 164
	fadd	%f0, %f1, %f0  #5 pc 168
	lw	%x5, 0(%x2)  #5 pc 172
	fsw	%f0, 32(%x2)  #5 pc 176
	sw	%x1, 40(%x2)  #5 pc 180
	addi	%x2, %x2, 44  #5 pc 184
	jal	%x1, getz.27  #5 pc 188
	addi	%x2, %x2, -44  #5 pc 192
	lw	%x1, 40(%x2) #5 pc 196
	lw	%x5, 4(%x2)  #5 pc 200
	fsw	%f0, 40(%x2)  #5 pc 204
	sw	%x1, 48(%x2)  #5 pc 208
	addi	%x2, %x2, 52  #5 pc 212
	jal	%x1, getz.27  #5 pc 216
	addi	%x2, %x2, -52  #5 pc 220
	lw	%x1, 48(%x2) #5 pc 224
	flw	%f1, 40(%x2)  #5 pc 228
	fmul	%f0, %f1, %f0  #5 pc 232
	flw	%f1, 32(%x2)  #5 pc 236
	fadd	%f0, %f1, %f0  #5 pc 240
	ret #pc 244
	nop #pc 248
.global	min_caml_start
min_caml_start:
	addi	%x2, %x0, 0
	addi	%x3, %x0, 1024
	fmv	%f0, l.63  #0 pc 260
	fmv	%f1, l.65  #0 pc 264
	fmv	%f2, l.67  #0 pc 268
	fmv	%f3, l.69  #0 pc 272
	addi	%x5, %x3, 0  #6 pc 276
	addi	%x3, %x3, 12  #6 pc 280
	fsw	%f3, 8(%x5)  #6 pc 284
	fsw	%f2, 4(%x5)  #6 pc 288
	fsw	%f1, 0(%x5)  #6 pc 292
	fmv	%f1, l.75  #0 pc 296
	fmv	%f2, l.77  #0 pc 300
	fmv	%f3, l.79  #0 pc 304
	addi	%x6, %x3, 0  #6 pc 308
	addi	%x3, %x3, 12  #6 pc 312
	fsw	%f3, 8(%x6)  #6 pc 316
	fsw	%f2, 4(%x6)  #6 pc 320
	fsw	%f1, 0(%x6)  #6 pc 324
	fsw	%f0, 0(%x2)  #6 pc 328
	sw	%x1, 8(%x2)  #6 pc 332
	addi	%x2, %x2, 12  #6 pc 336
	jal	%x1, inprod.29  #6 pc 340
	addi	%x2, %x2, -12  #6 pc 344
	lw	%x1, 8(%x2) #6 pc 348
	flw	%f1, 0(%x2)  #6 pc 352
	fmul	%f0, %f1, %f0  #6 pc 356
	sw	%x1, 8(%x2)  #6 pc 360
	addi	%x2, %x2, 12  #6 pc 364
	jal	%x1, min_caml_truncate  #6 pc 368
	addi	%x2, %x2, -12  #6 pc 372
	lw	%x1, 8(%x2) #6 pc 376
	sw	%x1, 8(%x2)  #6 pc 380
	addi	%x2, %x2, 12  #6 pc 384
	jal	%x1, min_caml_print_int  #6 pc 388
	addi	%x2, %x2, -12  #6 pc 392
	lw	%x1, 8(%x2) #6 pc 396
	addi	%x2, %x2, 112
