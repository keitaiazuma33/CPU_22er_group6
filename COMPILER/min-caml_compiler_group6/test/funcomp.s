.section	".rodata"
.align	8
.section	".text"
	nop
	j min_caml_start
mul_abs.156:  #pc 0
	addi	%x31, %x0, -1  #pc 0
	beq	%x8, %x31, 12  #57 pc 4
	j	be_else.376 #pc 8
	nop #pc 12
	addi	%x6, %x9, 0  #58 pc 16
	ret #pc 20
	nop #pc 24
be_else.376: #pc 28
	addi	%x10, %x0, 1  #0 pc 28
	sll	%x10, %x10, %x8  #60 pc 32
	and	%x10, %x7, %x10  #60 pc 36
	beq	%x10, %x0, 12  #60 pc 40
	j	be_else.377 #pc 44
	nop #pc 48
	addi	%x8, %x8, -1  #61 pc 52
	j	mul_abs.156  #61 pc 56
	nop #pc 60
be_else.377: #pc 64
	addi	%x10, %x8, -1  #63 pc 64
	sll	%x8, %x6, %x8  #63 pc 68
	add	%x9, %x9, %x8  #63 pc 72
	addi	%x8, %x10, 0  #0 pc 76
	j	mul_abs.156  #63 pc 80
	nop #pc 84
mul.161:  #pc 88
	bge	%x6, %x0, 12  #67 pc 88
	j	bge_else.378 #pc 92
	nop #pc 96
	addi	%x8, %x6, 0  #67 pc 100
	j	bge_cont.379 #pc 104
	nop #pc 108
bge_else.378: #pc 112
	sub	%x8, %x0, %x6  #67 pc 112
bge_cont.379: #pc 116
	bge	%x7, %x0, 12  #68 pc 116
	j	bge_else.380 #pc 120
	nop #pc 124
	addi	%x9, %x7, 0  #68 pc 128
	j	bge_cont.381 #pc 132
	nop #pc 136
bge_else.380: #pc 140
	sub	%x9, %x0, %x7  #68 pc 140
bge_cont.381: #pc 144
	addi	%x10, %x0, 30  #0 pc 144
	addi	%x11, %x0, 0  #0 pc 148
	sw	%x7, 0(%x2)  #69 pc 152
	sw	%x6, 4(%x2)  #69 pc 156
	addi	%x7, %x9, 0  #0 pc 160
	addi	%x6, %x8, 0  #0 pc 164
	addi	%x9, %x11, 0  #0 pc 168
	addi	%x8, %x10, 0  #0 pc 172
	sw	%x1, 8(%x2)  #69 pc 176
	addi	%x2, %x2, 12  #69 pc 180
	jal	%x1, mul_abs.156  #69 pc 184
	addi	%x2, %x2, -12  #69 pc 188
	lw	%x1, 8(%x2) #69 pc 192
	lw	%x7, 4(%x2)  #70 pc 196
	srli	%x7, %x7, 31  #70 pc 200
	lw	%x8, 0(%x2)  #70 pc 204
	srli	%x8, %x8, 31  #70 pc 208
	beq	%x7, %x8, 12  #70 pc 212
	j	be_else.382 #pc 216
	nop #pc 220
	ret #pc 224
	nop #pc 228
be_else.382: #pc 232
	sub	%x6, %x0, %x6  #73 pc 232
	ret #pc 236
	nop #pc 240
div_abs.164:  #pc 244
	addi	%x31, %x0, -1  #pc 244
	beq	%x8, %x31, 12  #77 pc 248
	j	be_else.383 #pc 252
	nop #pc 256
	addi	%x6, %x9, 0  #78 pc 260
	ret #pc 264
	nop #pc 268
be_else.383: #pc 272
	srl	%x10, %x6, %x8  #80 pc 272
	bge	%x10, %x7, 12  #80 pc 276
	j	ble_else.384 #pc 280
	nop #pc 284
	sll	%x10, %x7, %x8  #81 pc 288
	sub	%x6, %x6, %x10  #81 pc 292
	addi	%x10, %x8, -1  #81 pc 296
	addi	%x11, %x0, 1  #0 pc 300
	sll	%x8, %x11, %x8  #81 pc 304
	add	%x9, %x9, %x8  #81 pc 308
	addi	%x8, %x10, 0  #0 pc 312
	j	div_abs.164  #81 pc 316
	nop #pc 320
ble_else.384: #pc 324
	addi	%x8, %x8, -1  #83 pc 324
	j	div_abs.164  #83 pc 328
	nop #pc 332
div.169:  #pc 336
	bge	%x6, %x0, 12  #87 pc 336
	j	bge_else.385 #pc 340
	nop #pc 344
	addi	%x8, %x6, 0  #87 pc 348
	j	bge_cont.386 #pc 352
	nop #pc 356
bge_else.385: #pc 360
	sub	%x8, %x0, %x6  #87 pc 360
bge_cont.386: #pc 364
	bge	%x7, %x0, 12  #88 pc 364
	j	bge_else.387 #pc 368
	nop #pc 372
	addi	%x9, %x7, 0  #88 pc 376
	j	bge_cont.388 #pc 380
	nop #pc 384
bge_else.387: #pc 388
	sub	%x9, %x0, %x7  #88 pc 388
bge_cont.388: #pc 392
	addi	%x10, %x0, 30  #0 pc 392
	addi	%x11, %x0, 0  #0 pc 396
	sw	%x7, 0(%x2)  #89 pc 400
	sw	%x6, 4(%x2)  #89 pc 404
	addi	%x7, %x9, 0  #0 pc 408
	addi	%x6, %x8, 0  #0 pc 412
	addi	%x9, %x11, 0  #0 pc 416
	addi	%x8, %x10, 0  #0 pc 420
	sw	%x1, 8(%x2)  #89 pc 424
	addi	%x2, %x2, 12  #89 pc 428
	jal	%x1, div_abs.164  #89 pc 432
	addi	%x2, %x2, -12  #89 pc 436
	lw	%x1, 8(%x2) #89 pc 440
	lw	%x7, 4(%x2)  #90 pc 444
	srli	%x7, %x7, 31  #90 pc 448
	lw	%x8, 0(%x2)  #90 pc 452
	srli	%x8, %x8, 31  #90 pc 456
	beq	%x7, %x8, 12  #90 pc 460
	j	be_else.389 #pc 464
	nop #pc 468
	ret #pc 472
	nop #pc 476
be_else.389: #pc 480
	sub	%x6, %x0, %x6  #93 pc 480
	ret #pc 484
	nop #pc 488
print_int.174:  #pc 492
	bge	%x6, %x0, 12  #100 pc 492
	j	bge_else.390 #pc 496
	nop #pc 500
	addi	%x31, %x0, 10  #pc 504
	bge	%x6, %x31, 12  #104 pc 508
	j	bge_else.391 #pc 512
	nop #pc 516
	addi	%x7, %x0, 10  #0 pc 520
	sw	%x6, 0(%x2)  #107 pc 524
	sw	%x1, 4(%x2)  #107 pc 528
	addi	%x2, %x2, 8  #107 pc 532
	jal	%x1, div.169  #107 pc 536
	addi	%x2, %x2, -8  #107 pc 540
	lw	%x1, 4(%x2) #107 pc 544
	sw	%x6, 4(%x2)  #108 pc 548
	sw	%x1, 8(%x2)  #108 pc 552
	addi	%x2, %x2, 12  #108 pc 556
	jal	%x1, print_int.174  #108 pc 560
	addi	%x2, %x2, -12  #108 pc 564
	lw	%x1, 8(%x2) #108 pc 568
	addi	%x7, %x0, 10  #0 pc 572
	lw	%x6, 4(%x2)  #109 pc 576
	sw	%x1, 8(%x2)  #109 pc 580
	addi	%x2, %x2, 12  #109 pc 584
	jal	%x1, mul.161  #109 pc 588
	addi	%x2, %x2, -12  #109 pc 592
	lw	%x1, 8(%x2) #109 pc 596
	lw	%x7, 0(%x2)  #109 pc 600
	sub	%x6, %x7, %x6  #109 pc 604
	addi	%x6, %x6, 48  #109 pc 608
	sw	%x6, 0(%x5)  #109 pc 612
	addi	%x5, %x5, 4  #109 pc 616
	ret #pc 620
	nop #pc 624
bge_else.391: #pc 628
	addi	%x6, %x6, 48  #105 pc 628
	sw	%x6, 0(%x5)  #105 pc 632
	addi	%x5, %x5, 4  #105 pc 636
	ret #pc 640
	nop #pc 644
bge_else.390: #pc 648
	addi	%x7, %x0, 45  #0 pc 648
	sw	%x7, 0(%x5)  #101 pc 652
	addi	%x5, %x5, 4  #101 pc 656
	sub	%x6, %x0, %x6  #102 pc 660
	j	print_int.174  #102 pc 664
	nop #pc 668
composed.209:  #pc 672
	lw	%x7, 8(%x29)  #0 pc 672
	lw	%x29, 4(%x29)  #0 pc 676
	sw	%x7, 0(%x2)  #208 pc 680
	sw	%x1, 4(%x2)  #208 pc 684
	lw	%x30, 0(%x29)  #208 pc 688
	addi	%x2, %x2, 8  #208 pc 692
	jalr	%x1, %x30, 0  #208 pc 696
	addi	%x2, %x2, -8  #208 pc 700
	lw	%x1, 4(%x2)  #208 pc 704
	lw	%x29, 0(%x2)  #208 pc 708
	lw	%x30, 0(%x29)  #208 pc 712
	jalr	%x0, %x30, 0  #208 pc 716
	nop #pc 720
compose.194:  #pc 724
	addi	%x8, %x3, 0  #208 pc 724
	addi	%x3, %x3, 12  #208 pc 728
	addi	%x9, %x0, 672  #208 composed.209 pc 732
	sw	%x9, 0(%x8)  #208 pc 736
	sw	%x7, 8(%x8)  #208 pc 740
	sw	%x6, 4(%x8)  #208 pc 744
	addi	%x6, %x8, 0  #209 pc 748
	ret #pc 752
	nop #pc 756
dbl.197:  #pc 760
	add	%x6, %x6, %x6  #210 pc 760
	ret #pc 764
	nop #pc 768
inc.199:  #pc 772
	addi	%x6, %x6, 1  #211 pc 772
	ret #pc 776
	nop #pc 780
dec.201:  #pc 784
	addi	%x6, %x6, -1  #212 pc 784
	ret #pc 788
	nop #pc 792
.global	min_caml_start
min_caml_start:
	addi	%x31, %x0, 1
	slli	%x4, %x31, 13
	slli	%x5, %x31, 16
	slli	%x2, %x31, 24
	add	%x3, %x2, %x4
	addi	%x6, %x3, 0  #210 pc 816
	addi	%x3, %x3, 4  #210 pc 820
	addi	%x7, %x0, 760  #210 dbl.197 pc 824
	sw	%x7, 0(%x6)  #210 pc 828
	addi	%x7, %x3, 0  #211 pc 832
	addi	%x3, %x3, 4  #211 pc 836
	addi	%x8, %x0, 772  #211 inc.199 pc 840
	sw	%x8, 0(%x7)  #211 pc 844
	addi	%x8, %x3, 0  #212 pc 848
	addi	%x3, %x3, 4  #212 pc 852
	addi	%x9, %x0, 784  #212 dec.201 pc 856
	sw	%x9, 0(%x8)  #212 pc 860
	sw	%x7, 0(%x2)  #213 pc 864
	addi	%x7, %x8, 0  #0 pc 868
	sw	%x1, 4(%x2)  #213 pc 872
	addi	%x2, %x2, 8  #213 pc 876
	jal	%x1, compose.194  #213 pc 880
	addi	%x2, %x2, -8  #213 pc 884
	lw	%x1, 4(%x2) #213 pc 888
	addi	%x7, %x6, 0  #213 pc 892
	lw	%x6, 0(%x2)  #213 pc 896
	sw	%x1, 4(%x2)  #213 pc 900
	addi	%x2, %x2, 8  #213 pc 904
	jal	%x1, compose.194  #213 pc 908
	addi	%x2, %x2, -8  #213 pc 912
	lw	%x1, 4(%x2) #213 pc 916
	addi	%x29, %x6, 0  #213 pc 920
	addi	%x6, %x0, 123  #0 pc 924
	sw	%x1, 4(%x2)  #214 pc 928
	lw	%x30, 0(%x29)  #214 pc 932
	addi	%x2, %x2, 8  #214 pc 936
	jalr	%x1, %x30, 0  #214 pc 940
	addi	%x2, %x2, -8  #214 pc 944
	lw	%x1, 4(%x2)  #214 pc 948
	sw	%x1, 4(%x2)  #214 pc 952
	addi	%x2, %x2, 8  #214 pc 956
	jal	%x1, print_int.174  #214 pc 960
	addi	%x2, %x2, -8  #214 pc 964
	lw	%x1, 4(%x2) #214 pc 968
