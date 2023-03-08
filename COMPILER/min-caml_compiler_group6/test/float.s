.section	".rodata"
.align	8
l.412:	! -44.790447
.section	".text"
	nop
	j min_caml_start
mul_abs.167:  #pc 8
	addi	%x31, %x0, -1  #pc 8
	beq	%x8, %x31, 12  #57 pc 12
	j	be_else.420 #pc 16
	nop #pc 20
	addi	%x6, %x9, 0  #58 pc 24
	ret #pc 28
	nop #pc 32
be_else.420: #pc 36
	addi	%x10, %x0, 1  #0 pc 36
	sll	%x10, %x10, %x8  #60 pc 40
	and	%x10, %x7, %x10  #60 pc 44
	beq	%x10, %x0, 12  #60 pc 48
	j	be_else.421 #pc 52
	nop #pc 56
	addi	%x8, %x8, -1  #61 pc 60
	j	mul_abs.167  #61 pc 64
	nop #pc 68
be_else.421: #pc 72
	addi	%x10, %x8, -1  #63 pc 72
	sll	%x8, %x6, %x8  #63 pc 76
	add	%x9, %x9, %x8  #63 pc 80
	addi	%x8, %x10, 0  #0 pc 84
	j	mul_abs.167  #63 pc 88
	nop #pc 92
div_abs.175:  #pc 96
	addi	%x31, %x0, -1  #pc 96
	beq	%x8, %x31, 12  #77 pc 100
	j	be_else.422 #pc 104
	nop #pc 108
	addi	%x6, %x9, 0  #78 pc 112
	ret #pc 116
	nop #pc 120
be_else.422: #pc 124
	srl	%x10, %x6, %x8  #80 pc 124
	bge	%x10, %x7, 12  #80 pc 128
	j	ble_else.423 #pc 132
	nop #pc 136
	sll	%x10, %x7, %x8  #81 pc 140
	sub	%x6, %x6, %x10  #81 pc 144
	addi	%x10, %x8, -1  #81 pc 148
	addi	%x11, %x0, 1  #0 pc 152
	sll	%x8, %x11, %x8  #81 pc 156
	add	%x9, %x9, %x8  #81 pc 160
	addi	%x8, %x10, 0  #0 pc 164
	j	div_abs.175  #81 pc 168
	nop #pc 172
ble_else.423: #pc 176
	addi	%x8, %x8, -1  #83 pc 176
	j	div_abs.175  #83 pc 180
	nop #pc 184
print_int.185:  #pc 188
	bge	%x6, %x0, 12  #100 pc 188
	j	bge_else.424 #pc 192
	nop #pc 196
	addi	%x31, %x0, 10  #pc 200
	bge	%x6, %x31, 12  #104 pc 204
	j	bge_else.425 #pc 208
	nop #pc 212
	bge	%x6, %x0, 12  #107 pc 216
	j	bge_else.426 #pc 220
	nop #pc 224
	addi	%x7, %x6, 0  #107 pc 228
	j	bge_cont.427 #pc 232
	nop #pc 236
bge_else.426: #pc 240
	sub	%x7, %x0, %x6  #107 pc 240
bge_cont.427: #pc 244
	addi	%x8, %x0, 10  #0 pc 244
	addi	%x9, %x0, 30  #0 pc 248
	addi	%x10, %x0, 0  #0 pc 252
	sw	%x6, 0(%x2)  #107 pc 256
	addi	%x6, %x7, 0  #0 pc 260
	addi	%x7, %x8, 0  #0 pc 264
	addi	%x8, %x9, 0  #0 pc 268
	addi	%x9, %x10, 0  #0 pc 272
	sw	%x1, 4(%x2)  #107 pc 276
	addi	%x2, %x2, 8  #107 pc 280
	jal	%x1, div_abs.175  #107 pc 284
	addi	%x2, %x2, -8  #107 pc 288
	lw	%x1, 4(%x2) #107 pc 292
	lw	%x7, 0(%x2)  #107 pc 296
	srli	%x8, %x7, 31  #107 pc 300
	beq	%x8, %x0, 12  #107 pc 304
	j	be_else.428 #pc 308
	nop #pc 312
	j	be_cont.429 #pc 316
	nop #pc 320
be_else.428: #pc 324
	sub	%x6, %x0, %x6  #107 pc 324
be_cont.429: #pc 328
	sw	%x6, 4(%x2)  #108 pc 328
	sw	%x1, 8(%x2)  #108 pc 332
	addi	%x2, %x2, 12  #108 pc 336
	jal	%x1, print_int.185  #108 pc 340
	addi	%x2, %x2, -12  #108 pc 344
	lw	%x1, 8(%x2) #108 pc 348
	lw	%x6, 4(%x2)  #109 pc 352
	bge	%x6, %x0, 12  #109 pc 356
	j	bge_else.430 #pc 360
	nop #pc 364
	addi	%x7, %x6, 0  #109 pc 368
	j	bge_cont.431 #pc 372
	nop #pc 376
bge_else.430: #pc 380
	sub	%x7, %x0, %x6  #109 pc 380
bge_cont.431: #pc 384
	addi	%x8, %x0, 10  #0 pc 384
	addi	%x9, %x0, 30  #0 pc 388
	addi	%x10, %x0, 0  #0 pc 392
	addi	%x6, %x7, 0  #0 pc 396
	addi	%x7, %x8, 0  #0 pc 400
	addi	%x8, %x9, 0  #0 pc 404
	addi	%x9, %x10, 0  #0 pc 408
	sw	%x1, 8(%x2)  #109 pc 412
	addi	%x2, %x2, 12  #109 pc 416
	jal	%x1, mul_abs.167  #109 pc 420
	addi	%x2, %x2, -12  #109 pc 424
	lw	%x1, 8(%x2) #109 pc 428
	lw	%x7, 4(%x2)  #109 pc 432
	srli	%x7, %x7, 31  #109 pc 436
	beq	%x7, %x0, 12  #109 pc 440
	j	be_else.432 #pc 444
	nop #pc 448
	j	be_cont.433 #pc 452
	nop #pc 456
be_else.432: #pc 460
	sub	%x6, %x0, %x6  #109 pc 460
be_cont.433: #pc 464
	lw	%x7, 0(%x2)  #109 pc 464
	sub	%x6, %x7, %x6  #109 pc 468
	addi	%x6, %x6, 48  #109 pc 472
	sw	%x6, 0(%x5)  #109 pc 476
	addi	%x5, %x5, 4  #109 pc 480
	ret #pc 484
	nop #pc 488
bge_else.425: #pc 492
	addi	%x6, %x6, 48  #105 pc 492
	sw	%x6, 0(%x5)  #105 pc 496
	addi	%x5, %x5, 4  #105 pc 500
	ret #pc 504
	nop #pc 508
bge_else.424: #pc 512
	addi	%x7, %x0, 45  #0 pc 512
	sw	%x7, 0(%x5)  #101 pc 516
	addi	%x5, %x5, 4  #101 pc 520
	sub	%x6, %x0, %x6  #102 pc 524
	j	print_int.185  #102 pc 528
	nop #pc 532
.global	min_caml_start
min_caml_start:
	addi	%x31, %x0, 1
	slli	%x4, %x31, 13
	slli	%x5, %x31, 16
	slli	%x2, %x31, 24
	add	%x3, %x2, %x4
	fmv	%f0, l.412  #0 pc 556
	addi	%x6, %x0, 1000000  #0 pc 560
	itof	%f1, %x6  #215 pc 564
	fmul	%f0, %f0, %f1  #213 pc 568
	ftoi	%x6, %f0  #212 pc 572
	sw	%x1, 0(%x2)  #211 pc 576
	addi	%x2, %x2, 4  #211 pc 580
	jal	%x1, print_int.185  #211 pc 584
	addi	%x2, %x2, -4  #211 pc 588
	lw	%x1, 0(%x2) #211 pc 592
