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
getx.23:  #pc:0
	flw	%f0, 0(%x5)  #1 pc:4
	ret #pc:8
	nop #pc:12
gety.25:  #pc:12
	flw	%f0, 8(%x5)  #2 pc:16
	ret #pc:20
	nop #pc:24
getz.27:  #pc:24
	flw	%f0, 16(%x5)  #3 pc:28
	ret #pc:32
	nop #pc:36
inprod.29:  #pc:36
	sw	%x5, 0(%x2)  #5 pc:40
	sw	%x6, 4(%x2)  #5 pc:44
	sw	%x1, 12(%x2)  #5 pc:48
	addi	%x2, %x2, 16  #5 pc:52
	jal	%x1, getx.23  #5 pc:56
	addi	%x2, %x2, -16  #5 pc:60
	lw	%x1, 12(%x2) #5 pc:64
	lw	%x5, 4(%x2)  #5 pc:68
	fsw	%f0, 8(%x2)  #5 pc:72
	sw	%x1, 20(%x2)  #5 pc:76
	addi	%x2, %x2, 24  #5 pc:80
	jal	%x1, getx.23  #5 pc:84
	addi	%x2, %x2, -24  #5 pc:88
	lw	%x1, 20(%x2) #5 pc:92
	flw	%f2, 8(%x2)  #5 pc:96
	fmul	%f0, %f2, %f0  #5 pc:100
	lw	%x5, 0(%x2)  #5 pc:104
	fsw	%f0, 16(%x2)  #5 pc:108
	sw	%x1, 28(%x2)  #5 pc:112
	addi	%x2, %x2, 32  #5 pc:116
	jal	%x1, gety.25  #5 pc:120
	addi	%x2, %x2, -32  #5 pc:124
	lw	%x1, 28(%x2) #5 pc:128
	lw	%x5, 4(%x2)  #5 pc:132
	fsw	%f0, 24(%x2)  #5 pc:136
	sw	%x1, 36(%x2)  #5 pc:140
	addi	%x2, %x2, 40  #5 pc:144
	jal	%x1, gety.25  #5 pc:148
	addi	%x2, %x2, -40  #5 pc:152
	lw	%x1, 36(%x2) #5 pc:156
	flw	%f2, 24(%x2)  #5 pc:160
	fmul	%f0, %f2, %f0  #5 pc:164
	flw	%f2, 16(%x2)  #5 pc:168
	fadd	%f0, %f2, %f0  #5 pc:172
	lw	%x5, 0(%x2)  #5 pc:176
	fsw	%f0, 32(%x2)  #5 pc:180
	sw	%x1, 44(%x2)  #5 pc:184
	addi	%x2, %x2, 48  #5 pc:188
	jal	%x1, getz.27  #5 pc:192
	addi	%x2, %x2, -48  #5 pc:196
	lw	%x1, 44(%x2) #5 pc:200
	lw	%x5, 4(%x2)  #5 pc:204
	fsw	%f0, 40(%x2)  #5 pc:208
	sw	%x1, 52(%x2)  #5 pc:212
	addi	%x2, %x2, 56  #5 pc:216
	jal	%x1, getz.27  #5 pc:220
	addi	%x2, %x2, -56  #5 pc:224
	lw	%x1, 52(%x2) #5 pc:228
	flw	%f2, 40(%x2)  #5 pc:232
	fmul	%f0, %f2, %f0  #5 pc:236
	flw	%f2, 32(%x2)  #5 pc:240
	fadd	%f0, %f2, %f0  #5 pc:244
	ret #pc:248
	nop #pc:252
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	mv	%f0, l.63  #0 pc:256
	mv	%f2, l.65  #0 pc:260
	mv	%f4, l.67  #0 pc:264
	mv	%f6, l.69  #0 pc:268
	mv	%x5, %x3  #6 pc:272
	addi	%x3, %x3, 24  #6 pc:276
	fsw	%f6, 16(%x5) #6 pc:280
	fsw	%f4, 8(%x5) #6 pc:284
	fsw	%f2, 0(%x5) #6 pc:288
	mv	%f2, l.75  #0 pc:292
	mv	%f4, l.77  #0 pc:296
	mv	%f6, l.79  #0 pc:300
	mv	%x6, %x3  #6 pc:304
	addi	%x3, %x3, 24  #6 pc:308
	fsw	%f6, 16(%x6) #6 pc:312
	fsw	%f4, 8(%x6) #6 pc:316
	fsw	%f2, 0(%x6) #6 pc:320
	fsw	%f0, 8(%x2)  #6 pc:324
	sw	%x1, 20(%x2)  #6 pc:328
	addi	%x2, %x2, 24  #6 pc:332
	jal	%x1, inprod.29  #6 pc:336
	addi	%x2, %x2, -24  #6 pc:340
	lw	%x1, 20(%x2) #6 pc:344
	flw	%f2, 8(%x2)  #6 pc:348
	fmul	%f0, %f2, %f0  #6 pc:352
	sw	%x1, 20(%x2)  #6 pc:356
	addi	%x2, %x2, 24  #6 pc:360
	jal	%x1, min_caml_truncate  #6 pc:364
	addi	%x2, %x2, -24  #6 pc:368
	lw	%x1, 20(%x2) #6 pc:372
	sw	%x1, 20(%x2)  #6 pc:376
	addi	%x2, %x2, 24  #6 pc:380
	jal	%x1, min_caml_print_int  #6 pc:384
	addi	%x2, %x2, -24  #6 pc:388
	lw	%x1, 20(%x2) #6 pc:392
	addi	%x2, %x2, 112
