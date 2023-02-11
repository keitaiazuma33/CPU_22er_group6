.section	".rodata"
.align	8
.section	".text"
g.52:  #pc 0
	addi	%x24, %x0, 40  #pc 0
	add	%x24, %x24, %x22  #0 pc 4
	lw	%x6, 0(%x24)  #0 pc 8
	addi	%x24, %x0, 36  #pc 12
	add	%x24, %x24, %x22  #0 pc 16
	lw	%x7, 0(%x24)  #0 pc 20
	addi	%x24, %x0, 32  #pc 24
	add	%x24, %x24, %x22  #0 pc 28
	lw	%x9, 0(%x24)  #0 pc 32
	addi	%x24, %x0, 28  #pc 36
	add	%x24, %x24, %x22  #0 pc 40
	lw	%x10, 0(%x24)  #0 pc 44
	addi	%x24, %x0, 24  #pc 48
	add	%x24, %x24, %x22  #0 pc 52
	lw	%x11, 0(%x24)  #0 pc 56
	addi	%x24, %x0, 20  #pc 60
	add	%x24, %x24, %x22  #0 pc 64
	lw	%x12, 0(%x24)  #0 pc 68
	addi	%x24, %x0, 16  #pc 72
	add	%x24, %x24, %x22  #0 pc 76
	lw	%x13, 0(%x24)  #0 pc 80
	addi	%x24, %x0, 12  #pc 84
	add	%x24, %x24, %x22  #0 pc 88
	lw	%x14, 0(%x24)  #0 pc 92
	addi	%x24, %x0, 8  #pc 96
	add	%x24, %x24, %x22  #0 pc 100
	lw	%x15, 0(%x24)  #0 pc 104
	addi	%x24, %x0, 4  #pc 108
	add	%x24, %x24, %x22  #0 pc 112
	lw	%x16, 0(%x24)  #0 pc 116
	add	%x14, %x16, %x14  #5 pc 120
	add	%x13, %x14, %x13  #5 pc 124
	add	%x12, %x13, %x12  #5 pc 128
	add	%x11, %x12, %x11  #5 pc 132
	add	%x10, %x11, %x10  #5 pc 136
	add	%x9, %x10, %x9  #5 pc 140
	add	%x7, %x9, %x7  #5 pc 144
	add	%x6, %x7, %x6  #5 pc 148
	add	%x6, %x6, %x15  #5 pc 152
	bge	%x0, %x5, 12  #6 pc 156
	j	ble_else.90 #pc 160
	nop #pc 164
	sub	%x5, %x0, %x5  #6 pc 168
	lw	%x23, 0(%x22)  #6 pc 172
	jalr	%x0, %x23, 0  #6 pc 176
	nop #pc 180
ble_else.90: #pc 180
	addi	%x5, %x6, 0  #6 pc 184
	ret #pc 188
	nop #pc 192
h.26:  #pc 196
	addi	%x24, %x0, 36  #pc 196
	add	%x24, %x24, %x5  #3 pc 200
	lw	%x6, 0(%x24)  #3 pc 204
	addi	%x24, %x0, 32  #pc 208
	add	%x24, %x24, %x5  #3 pc 212
	lw	%x7, 0(%x24)  #3 pc 216
	addi	%x24, %x0, 28  #pc 220
	add	%x24, %x24, %x5  #3 pc 224
	lw	%x9, 0(%x24)  #3 pc 228
	addi	%x24, %x0, 24  #pc 232
	add	%x24, %x24, %x5  #3 pc 236
	lw	%x10, 0(%x24)  #3 pc 240
	addi	%x24, %x0, 20  #pc 244
	add	%x24, %x24, %x5  #3 pc 248
	lw	%x11, 0(%x24)  #3 pc 252
	addi	%x24, %x0, 16  #pc 256
	add	%x24, %x24, %x5  #3 pc 260
	lw	%x12, 0(%x24)  #3 pc 264
	addi	%x24, %x0, 12  #pc 268
	add	%x24, %x24, %x5  #3 pc 272
	lw	%x13, 0(%x24)  #3 pc 276
	addi	%x24, %x0, 8  #pc 280
	add	%x24, %x24, %x5  #3 pc 284
	lw	%x14, 0(%x24)  #3 pc 288
	addi	%x24, %x0, 4  #pc 292
	add	%x24, %x24, %x5  #3 pc 296
	lw	%x15, 0(%x24)  #3 pc 300
	add	%x24, %x0, %x5  #3 pc 304
	lw	%x5, 0(%x24)  #3 pc 308
	addi	%x22, %x3, 0  #4 pc 312
	addi	%x3, %x3, 48  #4 pc 316
	addi	%x24, %x0, 0  #4 g.52 pc 320
	addi	%x16, %x24, 0  #4 pc 324
	add	%x24, %x0, %x22  #4 pc 328
	sw	%x16, 0(%x24)  #4 pc 332
	addi	%x24, %x0, 40  #pc 336
	add	%x24, %x24, %x22  #4 pc 340
	sw	%x7, 0(%x24)  #4 pc 344
	addi	%x24, %x0, 36  #pc 348
	add	%x24, %x24, %x22  #4 pc 352
	sw	%x9, 0(%x24)  #4 pc 356
	addi	%x24, %x0, 32  #pc 360
	add	%x24, %x24, %x22  #4 pc 364
	sw	%x10, 0(%x24)  #4 pc 368
	addi	%x24, %x0, 28  #pc 372
	add	%x24, %x24, %x22  #4 pc 376
	sw	%x11, 0(%x24)  #4 pc 380
	addi	%x24, %x0, 24  #pc 384
	add	%x24, %x24, %x22  #4 pc 388
	sw	%x12, 0(%x24)  #4 pc 392
	addi	%x24, %x0, 20  #pc 396
	add	%x24, %x24, %x22  #4 pc 400
	sw	%x13, 0(%x24)  #4 pc 404
	addi	%x24, %x0, 16  #pc 408
	add	%x24, %x24, %x22  #4 pc 412
	sw	%x14, 0(%x24)  #4 pc 416
	addi	%x24, %x0, 12  #pc 420
	add	%x24, %x24, %x22  #4 pc 424
	sw	%x15, 0(%x24)  #4 pc 428
	addi	%x24, %x0, 8  #pc 432
	add	%x24, %x24, %x22  #4 pc 436
	sw	%x6, 0(%x24)  #4 pc 440
	addi	%x24, %x0, 4  #pc 444
	add	%x24, %x24, %x22  #4 pc 448
	sw	%x5, 0(%x24)  #4 pc 452
	addi	%x5, %x0, 1  #0 pc 456
	lw	%x23, 0(%x22)  #7 pc 460
	jalr	%x0, %x23, 0  #7 pc 464
	nop #pc 468
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 1  #0 pc 472
	addi	%x6, %x0, 2  #0 pc 476
	addi	%x7, %x0, 3  #0 pc 480
	addi	%x9, %x0, 4  #0 pc 484
	addi	%x10, %x0, 5  #0 pc 488
	addi	%x11, %x0, 6  #0 pc 492
	addi	%x12, %x0, 7  #0 pc 496
	addi	%x13, %x0, 8  #0 pc 500
	addi	%x14, %x0, 9  #0 pc 504
	addi	%x15, %x0, 10  #0 pc 508
	addi	%x16, %x3, 0  #8 pc 512
	addi	%x3, %x3, 40  #8 pc 516
	addi	%x24, %x0, 36  #pc 520
	add	%x24, %x24, %x16  #8 pc 524
	sw	%x15, 0(%x24)  #8 pc 528
	addi	%x24, %x0, 32  #pc 532
	add	%x24, %x24, %x16  #8 pc 536
	sw	%x14, 0(%x24)  #8 pc 540
	addi	%x24, %x0, 28  #pc 544
	add	%x24, %x24, %x16  #8 pc 548
	sw	%x13, 0(%x24)  #8 pc 552
	addi	%x24, %x0, 24  #pc 556
	add	%x24, %x24, %x16  #8 pc 560
	sw	%x12, 0(%x24)  #8 pc 564
	addi	%x24, %x0, 20  #pc 568
	add	%x24, %x24, %x16  #8 pc 572
	sw	%x11, 0(%x24)  #8 pc 576
	addi	%x24, %x0, 16  #pc 580
	add	%x24, %x24, %x16  #8 pc 584
	sw	%x10, 0(%x24)  #8 pc 588
	addi	%x24, %x0, 12  #pc 592
	add	%x24, %x24, %x16  #8 pc 596
	sw	%x9, 0(%x24)  #8 pc 600
	addi	%x24, %x0, 8  #pc 604
	add	%x24, %x24, %x16  #8 pc 608
	sw	%x7, 0(%x24)  #8 pc 612
	addi	%x24, %x0, 4  #pc 616
	add	%x24, %x24, %x16  #8 pc 620
	sw	%x6, 0(%x24)  #8 pc 624
	add	%x24, %x0, %x16  #8 pc 628
	sw	%x5, 0(%x24)  #8 pc 632
	addi	%x5, %x16, 0  #8 pc 636
	sw	%x1, 12(%x2)  #8 pc 640
	addi	%x2, %x2, 16  #8 pc 644
	jal	%x1, h.26  #8 pc 648
	addi	%x2, %x2, -16  #8 pc 652
	lw	%x1, 12(%x2) #8 pc 656
	sw	%x1, 12(%x2)  #8 pc 660
	addi	%x2, %x2, 16  #8 pc 664
	jal	%x1, min_caml_print_int  #8 pc 668
	addi	%x2, %x2, -16  #8 pc 672
	lw	%x1, 12(%x2) #8 pc 676
	addi	%x5, %x0, 0  #0 pc 680
	sw	%x1, 12(%x2)  #9 pc 684
	addi	%x2, %x2, 16  #9 pc 688
	jal	%x1, min_caml_print_newline  #9 pc 692
	addi	%x2, %x2, -16  #9 pc 696
	lw	%x1, 12(%x2) #9 pc 700
	addi	%x2, %x2, 112
