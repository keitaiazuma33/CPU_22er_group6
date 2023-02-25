.section	".rodata"
.align	8
.section	".text"
	nop
	j min_caml_start
mul_abs.156:  #pc 8
	addi	%x31, %x0, -1  #pc 8
	beq	%x8, %x31, 12  #57 pc 12
	j	be_else.355 #pc 16
	nop #pc 20
	addi	%x6, %x9, 0  #58 pc 24
	ret #pc 28
	nop #pc 32
be_else.355: #pc 36
	addi	%x10, %x0, 1  #0 pc 36
	sll	%x10, %x10, %x8  #60 pc 40
	and	%x10, %x7, %x10  #60 pc 44
	beq	%x10, %x0, 12  #60 pc 48
	j	be_else.356 #pc 52
	nop #pc 56
	addi	%x8, %x8, -1  #61 pc 60
	j	mul_abs.156  #61 pc 64
	nop #pc 68
be_else.356: #pc 72
	addi	%x10, %x8, -1  #63 pc 72
	sll	%x8, %x6, %x8  #63 pc 76
	add	%x9, %x9, %x8  #63 pc 80
	addi	%x8, %x10, 0  #0 pc 84
	j	mul_abs.156  #63 pc 88
	nop #pc 92
mul.161:  #pc 96
	bge	%x6, %x0, 12  #67 pc 96
	j	bge_else.357 #pc 100
	nop #pc 104
	addi	%x8, %x6, 0  #67 pc 108
	j	bge_cont.358 #pc 112
	nop #pc 116
bge_else.357: #pc 120
	sub	%x8, %x0, %x6  #67 pc 120
bge_cont.358: #pc 124
	bge	%x7, %x0, 12  #68 pc 124
	j	bge_else.359 #pc 128
	nop #pc 132
	addi	%x9, %x7, 0  #68 pc 136
	j	bge_cont.360 #pc 140
	nop #pc 144
bge_else.359: #pc 148
	sub	%x9, %x0, %x7  #68 pc 148
bge_cont.360: #pc 152
	addi	%x10, %x0, 30  #0 pc 152
	addi	%x11, %x0, 0  #0 pc 156
	sw	%x7, 0(%x2)  #69 pc 160
	sw	%x6, 4(%x2)  #69 pc 164
	addi	%x7, %x9, 0  #0 pc 168
	addi	%x6, %x8, 0  #0 pc 172
	addi	%x9, %x11, 0  #0 pc 176
	addi	%x8, %x10, 0  #0 pc 180
	sw	%x1, 8(%x2)  #69 pc 184
	addi	%x2, %x2, 12  #69 pc 188
	jal	%x1, mul_abs.156  #69 pc 192
	addi	%x2, %x2, -12  #69 pc 196
	lw	%x1, 8(%x2) #69 pc 200
	lw	%x7, 4(%x2)  #70 pc 204
	srli	%x7, %x7, 31  #70 pc 208
	lw	%x8, 0(%x2)  #70 pc 212
	srli	%x8, %x8, 31  #70 pc 216
	beq	%x7, %x8, 12  #70 pc 220
	j	be_else.361 #pc 224
	nop #pc 228
	ret #pc 232
	nop #pc 236
be_else.361: #pc 240
	sub	%x6, %x0, %x6  #73 pc 240
	ret #pc 244
	nop #pc 248
div_abs.164:  #pc 252
	addi	%x31, %x0, -1  #pc 252
	beq	%x8, %x31, 12  #77 pc 256
	j	be_else.362 #pc 260
	nop #pc 264
	addi	%x6, %x9, 0  #78 pc 268
	ret #pc 272
	nop #pc 276
be_else.362: #pc 280
	srl	%x10, %x6, %x8  #80 pc 280
	bge	%x10, %x7, 12  #80 pc 284
	j	ble_else.363 #pc 288
	nop #pc 292
	sll	%x10, %x7, %x8  #81 pc 296
	sub	%x6, %x6, %x10  #81 pc 300
	addi	%x10, %x8, -1  #81 pc 304
	addi	%x11, %x0, 1  #0 pc 308
	sll	%x8, %x11, %x8  #81 pc 312
	add	%x9, %x9, %x8  #81 pc 316
	addi	%x8, %x10, 0  #0 pc 320
	j	div_abs.164  #81 pc 324
	nop #pc 328
ble_else.363: #pc 332
	addi	%x8, %x8, -1  #83 pc 332
	j	div_abs.164  #83 pc 336
	nop #pc 340
div.169:  #pc 344
	bge	%x6, %x0, 12  #87 pc 344
	j	bge_else.364 #pc 348
	nop #pc 352
	addi	%x8, %x6, 0  #87 pc 356
	j	bge_cont.365 #pc 360
	nop #pc 364
bge_else.364: #pc 368
	sub	%x8, %x0, %x6  #87 pc 368
bge_cont.365: #pc 372
	bge	%x7, %x0, 12  #88 pc 372
	j	bge_else.366 #pc 376
	nop #pc 380
	addi	%x9, %x7, 0  #88 pc 384
	j	bge_cont.367 #pc 388
	nop #pc 392
bge_else.366: #pc 396
	sub	%x9, %x0, %x7  #88 pc 396
bge_cont.367: #pc 400
	addi	%x10, %x0, 30  #0 pc 400
	addi	%x11, %x0, 0  #0 pc 404
	sw	%x7, 0(%x2)  #89 pc 408
	sw	%x6, 4(%x2)  #89 pc 412
	addi	%x7, %x9, 0  #0 pc 416
	addi	%x6, %x8, 0  #0 pc 420
	addi	%x9, %x11, 0  #0 pc 424
	addi	%x8, %x10, 0  #0 pc 428
	sw	%x1, 8(%x2)  #89 pc 432
	addi	%x2, %x2, 12  #89 pc 436
	jal	%x1, div_abs.164  #89 pc 440
	addi	%x2, %x2, -12  #89 pc 444
	lw	%x1, 8(%x2) #89 pc 448
	lw	%x7, 4(%x2)  #90 pc 452
	srli	%x7, %x7, 31  #90 pc 456
	lw	%x8, 0(%x2)  #90 pc 460
	srli	%x8, %x8, 31  #90 pc 464
	beq	%x7, %x8, 12  #90 pc 468
	j	be_else.368 #pc 472
	nop #pc 476
	ret #pc 480
	nop #pc 484
be_else.368: #pc 488
	sub	%x6, %x0, %x6  #93 pc 488
	ret #pc 492
	nop #pc 496
print_int.174:  #pc 500
	bge	%x6, %x0, 12  #100 pc 500
	j	bge_else.369 #pc 504
	nop #pc 508
	addi	%x31, %x0, 10  #pc 512
	bge	%x6, %x31, 12  #104 pc 516
	j	bge_else.370 #pc 520
	nop #pc 524
	addi	%x7, %x0, 10  #0 pc 528
	sw	%x6, 0(%x2)  #107 pc 532
	sw	%x1, 4(%x2)  #107 pc 536
	addi	%x2, %x2, 8  #107 pc 540
	jal	%x1, div.169  #107 pc 544
	addi	%x2, %x2, -8  #107 pc 548
	lw	%x1, 4(%x2) #107 pc 552
	sw	%x6, 4(%x2)  #108 pc 556
	sw	%x1, 8(%x2)  #108 pc 560
	addi	%x2, %x2, 12  #108 pc 564
	jal	%x1, print_int.174  #108 pc 568
	addi	%x2, %x2, -12  #108 pc 572
	lw	%x1, 8(%x2) #108 pc 576
	addi	%x7, %x0, 10  #0 pc 580
	lw	%x6, 4(%x2)  #109 pc 584
	sw	%x1, 8(%x2)  #109 pc 588
	addi	%x2, %x2, 12  #109 pc 592
	jal	%x1, mul.161  #109 pc 596
	addi	%x2, %x2, -12  #109 pc 600
	lw	%x1, 8(%x2) #109 pc 604
	lw	%x7, 0(%x2)  #109 pc 608
	sub	%x6, %x7, %x6  #109 pc 612
	addi	%x6, %x6, 48  #109 pc 616
	sw	%x6, 0(%x5)  #109 pc 620
	addi	%x5, %x5, 4  #109 pc 624
	ret #pc 628
	nop #pc 632
bge_else.370: #pc 636
	addi	%x6, %x6, 48  #105 pc 636
	sw	%x6, 0(%x5)  #105 pc 640
	addi	%x5, %x5, 4  #105 pc 644
	ret #pc 648
	nop #pc 652
bge_else.369: #pc 656
	addi	%x7, %x0, 45  #0 pc 656
	sw	%x7, 0(%x5)  #101 pc 660
	addi	%x5, %x5, 4  #101 pc 664
	sub	%x6, %x0, %x6  #102 pc 668
	j	print_int.174  #102 pc 672
	nop #pc 676
gcd.194:  #pc 680
	beq	%x6, %x0, 12  #208 pc 680
	j	be_else.373 #pc 684
	nop #pc 688
	addi	%x6, %x7, 0  #208 pc 692
	ret #pc 696
	nop #pc 700
be_else.373: #pc 704
	bge	%x7, %x6, 12  #209 pc 704
	j	ble_else.374 #pc 708
	nop #pc 712
	sub	%x7, %x7, %x6  #209 pc 716
	j	gcd.194  #209 pc 720
	nop #pc 724
ble_else.374: #pc 728
	sub	%x6, %x6, %x7  #210 pc 728
	addi	%x30, %x7, 0  #0 pc 732
	addi	%x7, %x6, 0  #0 pc 736
	addi	%x6, %x30, 0  #0 pc 740
	j	gcd.194  #210 pc 744
	nop #pc 748
.global	min_caml_start
min_caml_start:
	addi	%x31, %x0, 1
	slli	%x4, %x31, 13
	slli	%x5, %x31, 16
	slli	%x2, %x31, 24
	add	%x3, %x2, %x4
	addi	%x6, %x0, 21600  #0 pc 772
	addi	%x7, %x0, 337500  #0 pc 776
	sw	%x1, 0(%x2)  #211 pc 780
	addi	%x2, %x2, 4  #211 pc 784
	jal	%x1, gcd.194  #211 pc 788
	addi	%x2, %x2, -4  #211 pc 792
	lw	%x1, 0(%x2) #211 pc 796
	sw	%x1, 0(%x2)  #211 pc 800
	addi	%x2, %x2, 4  #211 pc 804
	jal	%x1, print_int.174  #211 pc 808
	addi	%x2, %x2, -4  #211 pc 812
	lw	%x1, 0(%x2) #211 pc 816
