.section	".rodata"
.align	8
.section	".text"
mul_abs.197:  #pc 0
	addi	%x31, %x0, -1  #pc 0
	beq	%x7, %x31, 12  #57 pc 4
	j	be_else.461 #pc 8
	nop #pc 12
	addi	%x5, %x8, 0  #58 pc 16
	ret #pc 20
	nop #pc 24
be_else.461: #pc 28
	addi	%x9, %x0, 1  #0 pc 28
	sll	%x9, %x9, %x7  #60 pc 32
	and	%x9, %x6, %x9  #60 pc 36
	beq	%x9, %x0, 12  #60 pc 40
	j	be_else.462 #pc 44
	nop #pc 48
	addi	%x7, %x7, -1  #61 pc 52
	j	mul_abs.197  #61 pc 56
	nop #pc 60
be_else.462: #pc 64
	addi	%x9, %x7, -1  #63 pc 64
	sll	%x7, %x5, %x7  #63 pc 68
	add	%x8, %x8, %x7  #63 pc 72
	addi	%x7, %x9, 0  #0 pc 76
	j	mul_abs.197  #63 pc 80
	nop #pc 84
mul.202:  #pc 88
	bge	%x5, %x0, 12  #67 pc 88
	j	bge_else.463 #pc 92
	nop #pc 96
	addi	%x7, %x5, 0  #67 pc 100
	j	bge_cont.464 #pc 104
	nop #pc 108
bge_else.463: #pc 112
	sub	%x7, %x0, %x5  #67 pc 112
bge_cont.464: #pc 116
	bge	%x6, %x0, 12  #68 pc 116
	j	bge_else.465 #pc 120
	nop #pc 124
	addi	%x8, %x6, 0  #68 pc 128
	j	bge_cont.466 #pc 132
	nop #pc 136
bge_else.465: #pc 140
	sub	%x8, %x0, %x6  #68 pc 140
bge_cont.466: #pc 144
	addi	%x9, %x0, 30  #0 pc 144
	addi	%x10, %x0, 0  #0 pc 148
	sw	%x6, 0(%x2)  #69 pc 152
	sw	%x5, 4(%x2)  #69 pc 156
	addi	%x6, %x8, 0  #0 pc 160
	addi	%x5, %x7, 0  #0 pc 164
	addi	%x8, %x10, 0  #0 pc 168
	addi	%x7, %x9, 0  #0 pc 172
	sw	%x1, 8(%x2)  #69 pc 176
	addi	%x2, %x2, 12  #69 pc 180
	jal	%x1, mul_abs.197  #69 pc 184
	addi	%x2, %x2, -12  #69 pc 188
	lw	%x1, 8(%x2) #69 pc 192
	lw	%x6, 4(%x2)  #70 pc 196
	srli	%x6, %x6, 31  #70 pc 200
	lw	%x7, 0(%x2)  #70 pc 204
	srli	%x7, %x7, 31  #70 pc 208
	beq	%x6, %x7, 12  #70 pc 212
	j	be_else.467 #pc 216
	nop #pc 220
	ret #pc 224
	nop #pc 228
be_else.467: #pc 232
	sub	%x5, %x0, %x5  #73 pc 232
	ret #pc 236
	nop #pc 240
div_abs.205:  #pc 244
	addi	%x31, %x0, -1  #pc 244
	beq	%x7, %x31, 12  #77 pc 248
	j	be_else.468 #pc 252
	nop #pc 256
	addi	%x5, %x8, 0  #78 pc 260
	ret #pc 264
	nop #pc 268
be_else.468: #pc 272
	srl	%x9, %x5, %x7  #80 pc 272
	bge	%x9, %x6, 12  #80 pc 276
	j	ble_else.469 #pc 280
	nop #pc 284
	sll	%x9, %x6, %x7  #81 pc 288
	sub	%x5, %x5, %x9  #81 pc 292
	addi	%x9, %x7, -1  #81 pc 296
	addi	%x10, %x0, 1  #0 pc 300
	sll	%x7, %x10, %x7  #81 pc 304
	add	%x8, %x8, %x7  #81 pc 308
	addi	%x7, %x9, 0  #0 pc 312
	j	div_abs.205  #81 pc 316
	nop #pc 320
ble_else.469: #pc 324
	addi	%x7, %x7, -1  #83 pc 324
	j	div_abs.205  #83 pc 328
	nop #pc 332
div.210:  #pc 336
	bge	%x5, %x0, 12  #87 pc 336
	j	bge_else.470 #pc 340
	nop #pc 344
	addi	%x7, %x5, 0  #87 pc 348
	j	bge_cont.471 #pc 352
	nop #pc 356
bge_else.470: #pc 360
	sub	%x7, %x0, %x5  #87 pc 360
bge_cont.471: #pc 364
	bge	%x6, %x0, 12  #88 pc 364
	j	bge_else.472 #pc 368
	nop #pc 372
	addi	%x8, %x6, 0  #88 pc 376
	j	bge_cont.473 #pc 380
	nop #pc 384
bge_else.472: #pc 388
	sub	%x8, %x0, %x6  #88 pc 388
bge_cont.473: #pc 392
	addi	%x9, %x0, 30  #0 pc 392
	addi	%x10, %x0, 0  #0 pc 396
	sw	%x6, 0(%x2)  #89 pc 400
	sw	%x5, 4(%x2)  #89 pc 404
	addi	%x6, %x8, 0  #0 pc 408
	addi	%x5, %x7, 0  #0 pc 412
	addi	%x8, %x10, 0  #0 pc 416
	addi	%x7, %x9, 0  #0 pc 420
	sw	%x1, 8(%x2)  #89 pc 424
	addi	%x2, %x2, 12  #89 pc 428
	jal	%x1, div_abs.205  #89 pc 432
	addi	%x2, %x2, -12  #89 pc 436
	lw	%x1, 8(%x2) #89 pc 440
	lw	%x6, 4(%x2)  #90 pc 444
	srli	%x6, %x6, 31  #90 pc 448
	lw	%x7, 0(%x2)  #90 pc 452
	srli	%x7, %x7, 31  #90 pc 456
	beq	%x6, %x7, 12  #90 pc 460
	j	be_else.474 #pc 464
	nop #pc 468
	ret #pc 472
	nop #pc 476
be_else.474: #pc 480
	sub	%x5, %x0, %x5  #93 pc 480
	ret #pc 484
	nop #pc 488
print_int.215:  #pc 492
	bge	%x5, %x0, 12  #100 pc 492
	j	bge_else.475 #pc 496
	nop #pc 500
	addi	%x31, %x0, 10  #pc 504
	bge	%x5, %x31, 12  #104 pc 508
	j	bge_else.476 #pc 512
	nop #pc 516
	addi	%x6, %x0, 10  #0 pc 520
	sw	%x5, 0(%x2)  #107 pc 524
	sw	%x1, 4(%x2)  #107 pc 528
	addi	%x2, %x2, 8  #107 pc 532
	jal	%x1, div.210  #107 pc 536
	addi	%x2, %x2, -8  #107 pc 540
	lw	%x1, 4(%x2) #107 pc 544
	sw	%x5, 4(%x2)  #108 pc 548
	sw	%x1, 8(%x2)  #108 pc 552
	addi	%x2, %x2, 12  #108 pc 556
	jal	%x1, print_int.215  #108 pc 560
	addi	%x2, %x2, -12  #108 pc 564
	lw	%x1, 8(%x2) #108 pc 568
	addi	%x6, %x0, 10  #0 pc 572
	lw	%x5, 4(%x2)  #109 pc 576
	sw	%x1, 8(%x2)  #109 pc 580
	addi	%x2, %x2, 12  #109 pc 584
	jal	%x1, mul.202  #109 pc 588
	addi	%x2, %x2, -12  #109 pc 592
	lw	%x1, 8(%x2) #109 pc 596
	lw	%x6, 0(%x2)  #109 pc 600
	sub	%x5, %x6, %x5  #109 pc 604
	addi	%x5, %x5, 48  #109 pc 608
	out	%x5  #109 pc 612
	ret #pc 616
	nop #pc 620
bge_else.476: #pc 624
	addi	%x5, %x5, 48  #105 pc 624
	out	%x5  #105 pc 628
	ret #pc 632
	nop #pc 636
bge_else.475: #pc 640
	addi	%x6, %x0, 45  #0 pc 640
	out	%x6  #101 pc 644
	sub	%x5, %x0, %x5  #102 pc 648
	j	print_int.215  #102 pc 652
	nop #pc 656
assign_array.229:  #pc 660
	beq	%x7, %x0, 12  #160 pc 660
	j	be_else.479 #pc 664
	nop #pc 668
	slli	%x7, %x7, 2  #161 pc 672
	add	%x31, %x7, %x5  #161 pc 676
	sw	%x6, 0(%x31)  #161 pc 680
	ret #pc 684
	nop #pc 688
be_else.479: #pc 692
	slli	%x8, %x7, 2  #163 pc 692
	add	%x31, %x8, %x5  #163 pc 696
	sw	%x6, 0(%x31)  #163 pc 700
	addi	%x7, %x7, -1  #164 pc 704
	j	assign_array.229  #164 pc 708
	nop #pc 712
create_array.233:  #pc 716
	addi	%x7, %x3, 0  #168 pc 716
	addi	%x8, %x7, 0  #169 pc 720
	slli	%x9, %x5, 2  #170 pc 724
	add	%x7, %x7, %x9  #170 pc 728
	addi	%x3, %x7, 0  #170 pc 732
	sw	%x8, 0(%x2)  #171 pc 736
	addi	%x7, %x5, 0  #0 pc 740
	addi	%x5, %x8, 0  #0 pc 744
	sw	%x1, 4(%x2)  #171 pc 748
	addi	%x2, %x2, 8  #171 pc 752
	jal	%x1, assign_array.229  #171 pc 756
	addi	%x2, %x2, -8  #171 pc 760
	lw	%x1, 4(%x2) #171 pc 764
	lw	%x5, 0(%x2)  #172 pc 768
	ret #pc 772
	nop #pc 776
f.243:  #pc 780
	addi	%x5, %x0, 12345  #0 pc 780
	ret #pc 784
	nop #pc 788
.global	min_caml_start
min_caml_start:
	addi	%x2, %x0, 0
	addi	%x3, %x0, 1024
	addi	%x5, %x0, 10  #0 pc 800
	addi	%x6, %x0, 3  #0 pc 804
	sw	%x1, 0(%x2)  #192 pc 808
	addi	%x2, %x2, 4  #192 pc 812
	jal	%x1, create_array.233  #192 pc 816
	addi	%x2, %x2, -4  #192 pc 820
	lw	%x1, 0(%x2) #192 pc 824
	addi	%x6, %x0, 67890  #0 pc 828
	lw	%x7, 0(%x5)  #194 pc 832
	addi	%x31, %x0, 3  #pc 836
	beq	%x7, %x31, 12  #194 pc 840
	j	be_else.481 #pc 844
	nop #pc 848
	sw	%x6, 0(%x2)  #194 pc 852
	sw	%x5, 4(%x2)  #194 pc 856
	sw	%x1, 8(%x2)  #194 pc 860
	addi	%x2, %x2, 12  #194 pc 864
	jal	%x1, f.243  #194 pc 868
	addi	%x2, %x2, -12  #194 pc 872
	lw	%x1, 8(%x2) #194 pc 876
	lw	%x6, 4(%x2)  #194 pc 880
	lw	%x6, 4(%x6)  #194 pc 884
	add	%x5, %x5, %x6  #194 pc 888
	lw	%x6, 0(%x2)  #194 pc 892
	add	%x5, %x5, %x6  #194 pc 896
	j	be_cont.482 #pc 900
	nop #pc 904
be_else.481: #pc 908
	addi	%x5, %x0, 7  #0 pc 908
be_cont.482: #pc 912
	sw	%x1, 8(%x2)  #194 pc 912
	addi	%x2, %x2, 12  #194 pc 916
	jal	%x1, print_int.215  #194 pc 920
	addi	%x2, %x2, -12  #194 pc 924
	lw	%x1, 8(%x2) #194 pc 928
	addi	%x2, %x2, 112
