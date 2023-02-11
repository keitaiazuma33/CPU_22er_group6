.section	".rodata"
.align	8
.section	".text"
mul_abs.197:  #pc 0
	addi	%x24, %x0, -1  #pc 4
	beq	%x7, %x24, 12  #57 pc 8
	j	be_else.461 #pc 12
	nop #pc 16
	mv	%x5, %x9  #58 pc 20
	ret #pc 24
	nop #pc 28
be_else.461: #pc 28
	addi	%x10, %x0, 1  #0 pc 32
	sll	%x10, %x10, %x7  #60 pc 36
	and	%x10, %x6, %x10  #60 pc 40
	beq	%x10, %x0, 12  #60 pc 44
	j	be_else.462 #pc 48
	nop #pc 52
	addi	%x7, %x7, -1  #61 pc 56
	j	mul_abs.197  #61 pc 60
	nop #pc 64
be_else.462: #pc 64
	addi	%x10, %x7, -1  #63 pc 68
	sll	%x7, %x5, %x7  #63 pc 72
	add	%x9, %x9, %x7  #63 pc 76
	mv	%x7, %x10 #pc 80
	j	mul_abs.197  #63 pc 84
	nop #pc 88
mul.202:  #pc 88
	bge	%x5, %x0, 12  #67 pc 92
	j	bge_else.463 #pc 96
	nop #pc 100
	mv	%x7, %x5  #67 pc 104
	j	bge_cont.464 #pc 108
	nop #pc 112
bge_else.463: #pc 112
	sub	%x7, %x0, %x5  #67 pc 116
bge_cont.464: #pc 116
	bge	%x6, %x0, 12  #68 pc 120
	j	bge_else.465 #pc 124
	nop #pc 128
	mv	%x9, %x6  #68 pc 132
	j	bge_cont.466 #pc 136
	nop #pc 140
bge_else.465: #pc 140
	sub	%x9, %x0, %x6  #68 pc 144
bge_cont.466: #pc 144
	addi	%x10, %x0, 30  #0 pc 148
	addi	%x11, %x0, 0  #0 pc 152
	sw	%x6, 0(%x2)  #69 pc 156
	sw	%x5, 4(%x2)  #69 pc 160
	mv	%x6, %x9 #pc 164
	mv	%x5, %x7 #pc 168
	mv	%x9, %x11 #pc 172
	mv	%x7, %x10 #pc 176
	sw	%x1, 12(%x2)  #69 pc 180
	addi	%x2, %x2, 16  #69 pc 184
	jal	%x1, mul_abs.197  #69 pc 188
	addi	%x2, %x2, -16  #69 pc 192
	lw	%x1, 12(%x2) #69 pc 196
	lw	%x6, 4(%x2)  #70 pc 200
	srli	%x6, %x6, 31  #70 pc 204
	lw	%x7, 0(%x2)  #70 pc 208
	srli	%x7, %x7, 31  #70 pc 212
	beq	%x6, %x7, 12  #70 pc 216
	j	be_else.467 #pc 220
	nop #pc 224
	ret #pc 228
	nop #pc 232
be_else.467: #pc 232
	sub	%x5, %x0, %x5  #73 pc 236
	ret #pc 240
	nop #pc 244
div_abs.205:  #pc 244
	addi	%x24, %x0, -1  #pc 248
	beq	%x7, %x24, 12  #77 pc 252
	j	be_else.468 #pc 256
	nop #pc 260
	mv	%x5, %x9  #78 pc 264
	ret #pc 268
	nop #pc 272
be_else.468: #pc 272
	srl	%x10, %x5, %x7  #80 pc 276
	bge	%x10, %x6, 12  #80 pc 280
	j	ble_else.469 #pc 284
	nop #pc 288
	sll	%x10, %x6, %x7  #81 pc 292
	sub	%x5, %x5, %x10  #81 pc 296
	addi	%x10, %x7, -1  #81 pc 300
	addi	%x11, %x0, 1  #0 pc 304
	sll	%x7, %x11, %x7  #81 pc 308
	add	%x9, %x9, %x7  #81 pc 312
	mv	%x7, %x10 #pc 316
	j	div_abs.205  #81 pc 320
	nop #pc 324
ble_else.469: #pc 324
	addi	%x7, %x7, -1  #83 pc 328
	j	div_abs.205  #83 pc 332
	nop #pc 336
div.210:  #pc 336
	bge	%x5, %x0, 12  #87 pc 340
	j	bge_else.470 #pc 344
	nop #pc 348
	mv	%x7, %x5  #87 pc 352
	j	bge_cont.471 #pc 356
	nop #pc 360
bge_else.470: #pc 360
	sub	%x7, %x0, %x5  #87 pc 364
bge_cont.471: #pc 364
	bge	%x6, %x0, 12  #88 pc 368
	j	bge_else.472 #pc 372
	nop #pc 376
	mv	%x9, %x6  #88 pc 380
	j	bge_cont.473 #pc 384
	nop #pc 388
bge_else.472: #pc 388
	sub	%x9, %x0, %x6  #88 pc 392
bge_cont.473: #pc 392
	addi	%x10, %x0, 30  #0 pc 396
	addi	%x11, %x0, 0  #0 pc 400
	sw	%x6, 0(%x2)  #89 pc 404
	sw	%x5, 4(%x2)  #89 pc 408
	mv	%x6, %x9 #pc 412
	mv	%x5, %x7 #pc 416
	mv	%x9, %x11 #pc 420
	mv	%x7, %x10 #pc 424
	sw	%x1, 12(%x2)  #89 pc 428
	addi	%x2, %x2, 16  #89 pc 432
	jal	%x1, div_abs.205  #89 pc 436
	addi	%x2, %x2, -16  #89 pc 440
	lw	%x1, 12(%x2) #89 pc 444
	lw	%x6, 4(%x2)  #90 pc 448
	srli	%x6, %x6, 31  #90 pc 452
	lw	%x7, 0(%x2)  #90 pc 456
	srli	%x7, %x7, 31  #90 pc 460
	beq	%x6, %x7, 12  #90 pc 464
	j	be_else.474 #pc 468
	nop #pc 472
	ret #pc 476
	nop #pc 480
be_else.474: #pc 480
	sub	%x5, %x0, %x5  #93 pc 484
	ret #pc 488
	nop #pc 492
print_int.215:  #pc 492
	bge	%x5, %x0, 12  #100 pc 496
	j	bge_else.475 #pc 500
	nop #pc 504
	addi	%x24, %x0, 10  #pc 508
	bge	%x5, %x24, 12  #104 pc 512
	j	bge_else.476 #pc 516
	nop #pc 520
	addi	%x6, %x0, 10  #0 pc 524
	sw	%x5, 0(%x2)  #107 pc 528
	sw	%x1, 4(%x2)  #107 pc 532
	addi	%x2, %x2, 8  #107 pc 536
	jal	%x1, div.210  #107 pc 540
	addi	%x2, %x2, -8  #107 pc 544
	lw	%x1, 4(%x2) #107 pc 548
	sw	%x5, 4(%x2)  #108 pc 552
	sw	%x1, 12(%x2)  #108 pc 556
	addi	%x2, %x2, 16  #108 pc 560
	jal	%x1, print_int.215  #108 pc 564
	addi	%x2, %x2, -16  #108 pc 568
	lw	%x1, 12(%x2) #108 pc 572
	addi	%x6, %x0, 10  #0 pc 576
	lw	%x5, 4(%x2)  #109 pc 580
	sw	%x1, 12(%x2)  #109 pc 584
	addi	%x2, %x2, 16  #109 pc 588
	jal	%x1, mul.202  #109 pc 592
	addi	%x2, %x2, -16  #109 pc 596
	lw	%x1, 12(%x2) #109 pc 600
	lw	%x6, 0(%x2)  #109 pc 604
	sub	%x5, %x6, %x5  #109 pc 608
	addi	%x5, %x5, 48  #109 pc 612
	out	%x5  #109 pc 616
	ret #pc 620
	nop #pc 624
bge_else.476: #pc 624
	addi	%x5, %x5, 48  #105 pc 628
	out	%x5  #105 pc 632
	ret #pc 636
	nop #pc 640
bge_else.475: #pc 640
	sub	%x5, %x0, %x5  #102 pc 644
	j	print_int.215  #102 pc 648
	nop #pc 652
assign_array.229:  #pc 652
	beq	%x7, %x0, 12  #160 pc 656
	j	be_else.479 #pc 660
	nop #pc 664
	slli	%x7, %x7, 2  #161 pc 668
	add	%x24, %x7, %x5  #161 pc 672
	sw	%x6, 0(%x24)  #161 pc 676
	ret #pc 680
	nop #pc 684
be_else.479: #pc 684
	slli	%x9, %x7, 2  #163 pc 688
	add	%x24, %x9, %x5  #163 pc 692
	sw	%x6, 0(%x24)  #163 pc 696
	addi	%x7, %x7, -1  #164 pc 700
	j	assign_array.229  #164 pc 704
	nop #pc 708
create_array.233:  #pc 708
	mv	%x7, %x3  #168 pc 712
	sw	%x7, 0(%x2)  #171 pc 716
	mv	%x23, %x7 #pc 720
	mv	%x7, %x5 #pc 724
	mv	%x5, %x23 #pc 728
	sw	%x1, 4(%x2)  #171 pc 732
	addi	%x2, %x2, 8  #171 pc 736
	jal	%x1, assign_array.229  #171 pc 740
	addi	%x2, %x2, -8  #171 pc 744
	lw	%x1, 4(%x2) #171 pc 748
	lw	%x5, 0(%x2)  #172 pc 752
	ret #pc 756
	nop #pc 760
f.243:  #pc 760
	addi	%x5, %x0, 12345  #0 pc 764
	ret #pc 768
	nop #pc 772
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 10  #0 pc 776
	addi	%x6, %x0, 3  #0 pc 780
	sw	%x1, 12(%x2)  #192 pc 784
	addi	%x2, %x2, 16  #192 pc 788
	jal	%x1, create_array.233  #192 pc 792
	addi	%x2, %x2, -16  #192 pc 796
	lw	%x1, 12(%x2) #192 pc 800
	addi	%x6, %x0, 67890  #0 pc 804
	add	%x24, %x0, %x5  #194 pc 808
	lw	%x7, 0(%x24)  #194 pc 812
	addi	%x24, %x0, 3  #pc 816
	beq	%x7, %x24, 12  #194 pc 820
	j	be_else.481 #pc 824
	nop #pc 828
	sw	%x6, 8(%x2)  #194 pc 832
	sw	%x5, 12(%x2)  #194 pc 836
	mv	%x5, %x0 #pc 840
	sw	%x1, 20(%x2)  #194 pc 844
	addi	%x2, %x2, 24  #194 pc 848
	jal	%x1, f.243  #194 pc 852
	addi	%x2, %x2, -24  #194 pc 856
	lw	%x1, 20(%x2) #194 pc 860
	lw	%x6, 12(%x2)  #194 pc 864
	addi	%x24, %x0, 4  #pc 868
	add	%x24, %x24, %x6  #194 pc 872
	lw	%x6, 0(%x24)  #194 pc 876
	add	%x5, %x5, %x6  #194 pc 880
	lw	%x6, 8(%x2)  #194 pc 884
	add	%x5, %x5, %x6  #194 pc 888
	j	be_cont.482 #pc 892
	nop #pc 896
be_else.481: #pc 896
	addi	%x5, %x0, 7  #0 pc 900
be_cont.482: #pc 900
	sw	%x1, 20(%x2)  #194 pc 904
	addi	%x2, %x2, 24  #194 pc 908
	jal	%x1, print_int.215  #194 pc 912
	addi	%x2, %x2, -24  #194 pc 916
	lw	%x1, 20(%x2) #194 pc 920
	addi	%x2, %x2, 112
