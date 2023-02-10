.section	".rodata"
.align	8
.section	".text"
g.52:  #pc 0
	addi	%x24, %x0, 40  #pc 4
	add	%x24, %x24, %x22  #0 pc 8
	lw	%x6, 0(%x24)  #0 pc 12
	addi	%x24, %x0, 36  #pc 16
	add	%x24, %x24, %x22  #0 pc 20
	lw	%x7, 0(%x24)  #0 pc 24
	addi	%x24, %x0, 32  #pc 28
	add	%x24, %x24, %x22  #0 pc 32
	lw	%x9, 0(%x24)  #0 pc 36
	addi	%x24, %x0, 28  #pc 40
	add	%x24, %x24, %x22  #0 pc 44
	lw	%x10, 0(%x24)  #0 pc 48
	addi	%x24, %x0, 24  #pc 52
	add	%x24, %x24, %x22  #0 pc 56
	lw	%x11, 0(%x24)  #0 pc 60
	addi	%x24, %x0, 20  #pc 64
	add	%x24, %x24, %x22  #0 pc 68
	lw	%x12, 0(%x24)  #0 pc 72
	addi	%x24, %x0, 16  #pc 76
	add	%x24, %x24, %x22  #0 pc 80
	lw	%x13, 0(%x24)  #0 pc 84
	addi	%x24, %x0, 12  #pc 88
	add	%x24, %x24, %x22  #0 pc 92
	lw	%x14, 0(%x24)  #0 pc 96
	addi	%x24, %x0, 8  #pc 100
	add	%x24, %x24, %x22  #0 pc 104
	lw	%x15, 0(%x24)  #0 pc 108
	addi	%x24, %x0, 4  #pc 112
	add	%x24, %x24, %x22  #0 pc 116
	lw	%x16, 0(%x24)  #0 pc 120
	add	%x14, %x16, %x14  #5 pc 124
	add	%x13, %x14, %x13  #5 pc 128
	add	%x12, %x13, %x12  #5 pc 132
	add	%x11, %x12, %x11  #5 pc 136
	add	%x10, %x11, %x10  #5 pc 140
	add	%x9, %x10, %x9  #5 pc 144
	add	%x7, %x9, %x7  #5 pc 148
	add	%x6, %x7, %x6  #5 pc 152
	add	%x6, %x6, %x15  #5 pc 156
	bge	%x0, %x5, 12  #6 pc 160
	j	ble_else.90 #pc 164
	nop #pc 168
	sub	%x5, %x0, %x5  #6 pc 172
	lw	%x23, 0(%x22)  #6 pc 176
	jalr	%x0, %x23, 0  #6 pc 180
	nop #pc 184
ble_else.90: #pc 184
	mv	%x5, %x6  #6 pc 188
	ret #pc 192
	nop #pc 196
h.26:  #pc 196
	addi	%x24, %x0, 36  #pc 200
	add	%x24, %x24, %x5  #3 pc 204
	lw	%x6, 0(%x24)  #3 pc 208
	addi	%x24, %x0, 32  #pc 212
	add	%x24, %x24, %x5  #3 pc 216
	lw	%x7, 0(%x24)  #3 pc 220
	addi	%x24, %x0, 28  #pc 224
	add	%x24, %x24, %x5  #3 pc 228
	lw	%x9, 0(%x24)  #3 pc 232
	addi	%x24, %x0, 24  #pc 236
	add	%x24, %x24, %x5  #3 pc 240
	lw	%x10, 0(%x24)  #3 pc 244
	addi	%x24, %x0, 20  #pc 248
	add	%x24, %x24, %x5  #3 pc 252
	lw	%x11, 0(%x24)  #3 pc 256
	addi	%x24, %x0, 16  #pc 260
	add	%x24, %x24, %x5  #3 pc 264
	lw	%x12, 0(%x24)  #3 pc 268
	addi	%x24, %x0, 12  #pc 272
	add	%x24, %x24, %x5  #3 pc 276
	lw	%x13, 0(%x24)  #3 pc 280
	addi	%x24, %x0, 8  #pc 284
	add	%x24, %x24, %x5  #3 pc 288
	lw	%x14, 0(%x24)  #3 pc 292
	addi	%x24, %x0, 4  #pc 296
	add	%x24, %x24, %x5  #3 pc 300
	lw	%x15, 0(%x24)  #3 pc 304
	add	%x24, %x0, %x5  #3 pc 308
	lw	%x5, 0(%x24)  #3 pc 312
	mv	%x22, %x3  #4 pc 316
	addi	%x3, %x3, 48  #4 pc 320
	addi	%x24, %x0, 0  #4 g.52 pc 324
	mv	%x16, %x24  #4 pc 328
	add	%x24, %x0, %x22  #4 pc 332
	sw	%x16, 0(%x24)  #4 pc 336
	addi	%x24, %x0, 40  #pc 340
	add	%x24, %x24, %x22  #4 pc 344
	sw	%x7, 0(%x24)  #4 pc 348
	addi	%x24, %x0, 36  #pc 352
	add	%x24, %x24, %x22  #4 pc 356
	sw	%x9, 0(%x24)  #4 pc 360
	addi	%x24, %x0, 32  #pc 364
	add	%x24, %x24, %x22  #4 pc 368
	sw	%x10, 0(%x24)  #4 pc 372
	addi	%x24, %x0, 28  #pc 376
	add	%x24, %x24, %x22  #4 pc 380
	sw	%x11, 0(%x24)  #4 pc 384
	addi	%x24, %x0, 24  #pc 388
	add	%x24, %x24, %x22  #4 pc 392
	sw	%x12, 0(%x24)  #4 pc 396
	addi	%x24, %x0, 20  #pc 400
	add	%x24, %x24, %x22  #4 pc 404
	sw	%x13, 0(%x24)  #4 pc 408
	addi	%x24, %x0, 16  #pc 412
	add	%x24, %x24, %x22  #4 pc 416
	sw	%x14, 0(%x24)  #4 pc 420
	addi	%x24, %x0, 12  #pc 424
	add	%x24, %x24, %x22  #4 pc 428
	sw	%x15, 0(%x24)  #4 pc 432
	addi	%x24, %x0, 8  #pc 436
	add	%x24, %x24, %x22  #4 pc 440
	sw	%x6, 0(%x24)  #4 pc 444
	addi	%x24, %x0, 4  #pc 448
	add	%x24, %x24, %x22  #4 pc 452
	sw	%x5, 0(%x24)  #4 pc 456
	addi	%x5, %x0, 1  #0 pc 460
	lw	%x23, 0(%x22)  #7 pc 464
	jalr	%x0, %x23, 0  #7 pc 468
	nop #pc 472
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 1  #0 pc 476
	addi	%x6, %x0, 2  #0 pc 480
	addi	%x7, %x0, 3  #0 pc 484
	addi	%x9, %x0, 4  #0 pc 488
	addi	%x10, %x0, 5  #0 pc 492
	addi	%x11, %x0, 6  #0 pc 496
	addi	%x12, %x0, 7  #0 pc 500
	addi	%x13, %x0, 8  #0 pc 504
	addi	%x14, %x0, 9  #0 pc 508
	addi	%x15, %x0, 10  #0 pc 512
	mv	%x16, %x3  #8 pc 516
	addi	%x3, %x3, 40  #8 pc 520
	addi	%x24, %x0, 36  #pc 524
	add	%x24, %x24, %x16  #8 pc 528
	sw	%x15, 0(%x24)  #8 pc 532
	addi	%x24, %x0, 32  #pc 536
	add	%x24, %x24, %x16  #8 pc 540
	sw	%x14, 0(%x24)  #8 pc 544
	addi	%x24, %x0, 28  #pc 548
	add	%x24, %x24, %x16  #8 pc 552
	sw	%x13, 0(%x24)  #8 pc 556
	addi	%x24, %x0, 24  #pc 560
	add	%x24, %x24, %x16  #8 pc 564
	sw	%x12, 0(%x24)  #8 pc 568
	addi	%x24, %x0, 20  #pc 572
	add	%x24, %x24, %x16  #8 pc 576
	sw	%x11, 0(%x24)  #8 pc 580
	addi	%x24, %x0, 16  #pc 584
	add	%x24, %x24, %x16  #8 pc 588
	sw	%x10, 0(%x24)  #8 pc 592
	addi	%x24, %x0, 12  #pc 596
	add	%x24, %x24, %x16  #8 pc 600
	sw	%x9, 0(%x24)  #8 pc 604
	addi	%x24, %x0, 8  #pc 608
	add	%x24, %x24, %x16  #8 pc 612
	sw	%x7, 0(%x24)  #8 pc 616
	addi	%x24, %x0, 4  #pc 620
	add	%x24, %x24, %x16  #8 pc 624
	sw	%x6, 0(%x24)  #8 pc 628
	add	%x24, %x0, %x16  #8 pc 632
	sw	%x5, 0(%x24)  #8 pc 636
	mv	%x5, %x16  #8 pc 640
	sw	%x1, 12(%x2)  #8 pc 644
	addi	%x2, %x2, 16  #8 pc 648
	jal	%x1, h.26  #8 pc 652
	addi	%x2, %x2, -16  #8 pc 656
	lw	%x1, 12(%x2) #8 pc 660
	sw	%x1, 12(%x2)  #8 pc 664
	addi	%x2, %x2, 16  #8 pc 668
	jal	%x1, min_caml_print_int  #8 pc 672
	addi	%x2, %x2, -16  #8 pc 676
	lw	%x1, 12(%x2) #8 pc 680
	mv	%x5, %g0 #pc 684
	sw	%x1, 12(%x2)  #9 pc 688
	addi	%x2, %x2, 16  #9 pc 692
	jal	%x1, min_caml_print_newline  #9 pc 696
	addi	%x2, %x2, -16  #9 pc 700
	lw	%x1, 12(%x2) #9 pc 704
	addi	%x2, %x2, 112
