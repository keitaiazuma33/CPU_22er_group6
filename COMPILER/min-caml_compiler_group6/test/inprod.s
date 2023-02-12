.section	".rodata"
.align	8
l.379:	! 6.000000
l.377:	! 5.000000
l.375:	! 4.000000
l.369:	! 3.000000
l.367:	! 2.000000
l.365:	! 1.000000
l.363:	! 1000000.000000
.section	".text"
print_int.174:  #pc 0
	sw	%x5, 0(%x6)  #112 pc 0
	addi	%x5, %x5, 4  #112 pc 4
	ret #pc 8
	nop #pc 12
getx.194:  #pc 16
	flw	%f0, 0(%x6)  #207 pc 16
	ret #pc 20
	nop #pc 24
gety.196:  #pc 28
	flw	%f0, 4(%x6)  #208 pc 28
	ret #pc 32
	nop #pc 36
getz.198:  #pc 40
	flw	%f0, 8(%x6)  #209 pc 40
	ret #pc 44
	nop #pc 48
inprod.200:  #pc 52
	sw	%x6, 0(%x2)  #211 pc 52
	sw	%x7, 4(%x2)  #211 pc 56
	sw	%x1, 8(%x2)  #211 pc 60
	addi	%x2, %x2, 12  #211 pc 64
	jal	%x1, getx.194  #211 pc 68
	addi	%x2, %x2, -12  #211 pc 72
	lw	%x1, 8(%x2) #211 pc 76
	lw	%x6, 4(%x2)  #211 pc 80
	fsw	%f0, 8(%x2)  #211 pc 84
	sw	%x1, 16(%x2)  #211 pc 88
	addi	%x2, %x2, 20  #211 pc 92
	jal	%x1, getx.194  #211 pc 96
	addi	%x2, %x2, -20  #211 pc 100
	lw	%x1, 16(%x2) #211 pc 104
	flw	%f1, 8(%x2)  #211 pc 108
	fmul	%f0, %f1, %f0  #211 pc 112
	lw	%x6, 0(%x2)  #211 pc 116
	fsw	%f0, 16(%x2)  #211 pc 120
	sw	%x1, 24(%x2)  #211 pc 124
	addi	%x2, %x2, 28  #211 pc 128
	jal	%x1, gety.196  #211 pc 132
	addi	%x2, %x2, -28  #211 pc 136
	lw	%x1, 24(%x2) #211 pc 140
	lw	%x6, 4(%x2)  #211 pc 144
	fsw	%f0, 24(%x2)  #211 pc 148
	sw	%x1, 32(%x2)  #211 pc 152
	addi	%x2, %x2, 36  #211 pc 156
	jal	%x1, gety.196  #211 pc 160
	addi	%x2, %x2, -36  #211 pc 164
	lw	%x1, 32(%x2) #211 pc 168
	flw	%f1, 24(%x2)  #211 pc 172
	fmul	%f0, %f1, %f0  #211 pc 176
	flw	%f1, 16(%x2)  #211 pc 180
	fadd	%f0, %f1, %f0  #211 pc 184
	lw	%x6, 0(%x2)  #211 pc 188
	fsw	%f0, 32(%x2)  #211 pc 192
	sw	%x1, 40(%x2)  #211 pc 196
	addi	%x2, %x2, 44  #211 pc 200
	jal	%x1, getz.198  #211 pc 204
	addi	%x2, %x2, -44  #211 pc 208
	lw	%x1, 40(%x2) #211 pc 212
	lw	%x6, 4(%x2)  #211 pc 216
	fsw	%f0, 40(%x2)  #211 pc 220
	sw	%x1, 48(%x2)  #211 pc 224
	addi	%x2, %x2, 52  #211 pc 228
	jal	%x1, getz.198  #211 pc 232
	addi	%x2, %x2, -52  #211 pc 236
	lw	%x1, 48(%x2) #211 pc 240
	flw	%f1, 40(%x2)  #211 pc 244
	fmul	%f0, %f1, %f0  #211 pc 248
	flw	%f1, 32(%x2)  #211 pc 252
	fadd	%f0, %f1, %f0  #211 pc 256
	ret #pc 260
	nop #pc 264
.global	min_caml_start
min_caml_start:
	addi	%x2, %x0, 0
	addi	%x3, %x0, 1024
	fmv	%f0, l.363  #0 pc 276
	fmv	%f1, l.365  #0 pc 280
	fmv	%f2, l.367  #0 pc 284
	fmv	%f3, l.369  #0 pc 288
	addi	%x6, %x3, 0  #212 pc 292
	addi	%x3, %x3, 12  #212 pc 296
	fsw	%f3, 8(%x6)  #212 pc 300
	fsw	%f2, 4(%x6)  #212 pc 304
	fsw	%f1, 0(%x6)  #212 pc 308
	fmv	%f1, l.375  #0 pc 312
	fmv	%f2, l.377  #0 pc 316
	fmv	%f3, l.379  #0 pc 320
	addi	%x7, %x3, 0  #212 pc 324
	addi	%x3, %x3, 12  #212 pc 328
	fsw	%f3, 8(%x7)  #212 pc 332
	fsw	%f2, 4(%x7)  #212 pc 336
	fsw	%f1, 0(%x7)  #212 pc 340
	fsw	%f0, 0(%x2)  #212 pc 344
	sw	%x1, 8(%x2)  #212 pc 348
	addi	%x2, %x2, 12  #212 pc 352
	jal	%x1, inprod.200  #212 pc 356
	addi	%x2, %x2, -12  #212 pc 360
	lw	%x1, 8(%x2) #212 pc 364
	flw	%f1, 0(%x2)  #212 pc 368
	fmul	%f0, %f1, %f0  #212 pc 372
	sw	%x1, 8(%x2)  #212 pc 376
	addi	%x2, %x2, 12  #212 pc 380
	jal	%x1, min_caml_truncate  #212 pc 384
	addi	%x2, %x2, -12  #212 pc 388
	lw	%x1, 8(%x2) #212 pc 392
	sw	%x1, 8(%x2)  #212 pc 396
	addi	%x2, %x2, 12  #212 pc 400
	jal	%x1, print_int.174  #212 pc 404
	addi	%x2, %x2, -12  #212 pc 408
	lw	%x1, 8(%x2) #212 pc 412
	addi	%x2, %x2, 112
