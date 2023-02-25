.section	".rodata"
.align	8
.section	".text"
	nop
	j min_caml_start
mul_abs.156:  #pc 8
	addi	%x31, %x0, -1  #pc 8
	beq	%x8, %x31, 12  #57 pc 12
	j	be_else.376 #pc 16
	nop #pc 20
	addi	%x6, %x9, 0  #58 pc 24
	ret #pc 28
	nop #pc 32
be_else.376: #pc 36
	addi	%x10, %x0, 1  #0 pc 36
	sll	%x10, %x10, %x8  #60 pc 40
	and	%x10, %x7, %x10  #60 pc 44
	beq	%x10, %x0, 12  #60 pc 48
	j	be_else.377 #pc 52
	nop #pc 56
	addi	%x8, %x8, -1  #61 pc 60
	j	mul_abs.156  #61 pc 64
	nop #pc 68
be_else.377: #pc 72
	addi	%x10, %x8, -1  #63 pc 72
	sll	%x8, %x6, %x8  #63 pc 76
	add	%x9, %x9, %x8  #63 pc 80
	addi	%x8, %x10, 0  #0 pc 84
	j	mul_abs.156  #63 pc 88
	nop #pc 92
mul.161:  #pc 96
	bge	%x6, %x0, 12  #67 pc 96
	j	bge_else.378 #pc 100
	nop #pc 104
	addi	%x8, %x6, 0  #67 pc 108
	j	bge_cont.379 #pc 112
	nop #pc 116
bge_else.378: #pc 120
	sub	%x8, %x0, %x6  #67 pc 120
bge_cont.379: #pc 124
	bge	%x7, %x0, 12  #68 pc 124
	j	bge_else.380 #pc 128
	nop #pc 132
	addi	%x9, %x7, 0  #68 pc 136
	j	bge_cont.381 #pc 140
	nop #pc 144
bge_else.380: #pc 148
	sub	%x9, %x0, %x7  #68 pc 148
bge_cont.381: #pc 152
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
	j	be_else.382 #pc 224
	nop #pc 228
	ret #pc 232
	nop #pc 236
be_else.382: #pc 240
	sub	%x6, %x0, %x6  #73 pc 240
	ret #pc 244
	nop #pc 248
div_abs.164:  #pc 252
	addi	%x31, %x0, -1  #pc 252
	beq	%x8, %x31, 12  #77 pc 256
	j	be_else.383 #pc 260
	nop #pc 264
	addi	%x6, %x9, 0  #78 pc 268
	ret #pc 272
	nop #pc 276
be_else.383: #pc 280
	srl	%x10, %x6, %x8  #80 pc 280
	bge	%x10, %x7, 12  #80 pc 284
	j	ble_else.384 #pc 288
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
ble_else.384: #pc 332
	addi	%x8, %x8, -1  #83 pc 332
	j	div_abs.164  #83 pc 336
	nop #pc 340
div.169:  #pc 344
	bge	%x6, %x0, 12  #87 pc 344
	j	bge_else.385 #pc 348
	nop #pc 352
	addi	%x8, %x6, 0  #87 pc 356
	j	bge_cont.386 #pc 360
	nop #pc 364
bge_else.385: #pc 368
	sub	%x8, %x0, %x6  #87 pc 368
bge_cont.386: #pc 372
	bge	%x7, %x0, 12  #88 pc 372
	j	bge_else.387 #pc 376
	nop #pc 380
	addi	%x9, %x7, 0  #88 pc 384
	j	bge_cont.388 #pc 388
	nop #pc 392
bge_else.387: #pc 396
	sub	%x9, %x0, %x7  #88 pc 396
bge_cont.388: #pc 400
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
	j	be_else.389 #pc 472
	nop #pc 476
	ret #pc 480
	nop #pc 484
be_else.389: #pc 488
	sub	%x6, %x0, %x6  #93 pc 488
	ret #pc 492
	nop #pc 496
print_int.174:  #pc 500
	bge	%x6, %x0, 12  #100 pc 500
	j	bge_else.390 #pc 504
	nop #pc 508
	addi	%x31, %x0, 10  #pc 512
	bge	%x6, %x31, 12  #104 pc 516
	j	bge_else.391 #pc 520
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
bge_else.391: #pc 636
	addi	%x6, %x6, 48  #105 pc 636
	sw	%x6, 0(%x5)  #105 pc 640
	addi	%x5, %x5, 4  #105 pc 644
	ret #pc 648
	nop #pc 652
bge_else.390: #pc 656
	addi	%x7, %x0, 45  #0 pc 656
	sw	%x7, 0(%x5)  #101 pc 660
	addi	%x5, %x5, 4  #101 pc 664
	sub	%x6, %x0, %x6  #102 pc 668
	j	print_int.174  #102 pc 672
	nop #pc 676
composed.209:  #pc 680
	lw	%x7, 8(%x29)  #0 pc 680
	lw	%x29, 4(%x29)  #0 pc 684
	sw	%x7, 0(%x2)  #208 pc 688
	sw	%x1, 4(%x2)  #208 pc 692
	lw	%x30, 0(%x29)  #208 pc 696
	addi	%x2, %x2, 8  #208 pc 700
	jalr	%x1, %x30, 0  #208 pc 704
	addi	%x2, %x2, -8  #208 pc 708
	lw	%x1, 4(%x2)  #208 pc 712
	lw	%x29, 0(%x2)  #208 pc 716
	lw	%x30, 0(%x29)  #208 pc 720
	jalr	%x0, %x30, 0  #208 pc 724
	nop #pc 728
compose.194:  #pc 732
	addi	%x8, %x3, 0  #208 pc 732
	addi	%x3, %x3, 12  #208 pc 736
	addi	%x9, %x0, 680  #208 composed.209 pc 740
	sw	%x9, 0(%x8)  #208 pc 744
	sw	%x7, 8(%x8)  #208 pc 748
	sw	%x6, 4(%x8)  #208 pc 752
	addi	%x6, %x8, 0  #209 pc 756
	ret #pc 760
	nop #pc 764
dbl.197:  #pc 768
	add	%x6, %x6, %x6  #210 pc 768
	ret #pc 772
	nop #pc 776
inc.199:  #pc 780
	addi	%x6, %x6, 1  #211 pc 780
	ret #pc 784
	nop #pc 788
dec.201:  #pc 792
	addi	%x6, %x6, -1  #212 pc 792
	ret #pc 796
	nop #pc 800
.global	min_caml_start
min_caml_start:
	addi	%x31, %x0, 1
	slli	%x4, %x31, 13
	slli	%x5, %x31, 16
	slli	%x2, %x31, 24
	add	%x3, %x2, %x4
	addi	%x6, %x3, 0  #210 pc 824
	addi	%x3, %x3, 4  #210 pc 828
	addi	%x7, %x0, 768  #210 dbl.197 pc 832
	sw	%x7, 0(%x6)  #210 pc 836
	addi	%x7, %x3, 0  #211 pc 840
	addi	%x3, %x3, 4  #211 pc 844
	addi	%x8, %x0, 780  #211 inc.199 pc 848
	sw	%x8, 0(%x7)  #211 pc 852
	addi	%x8, %x3, 0  #212 pc 856
	addi	%x3, %x3, 4  #212 pc 860
	addi	%x9, %x0, 792  #212 dec.201 pc 864
	sw	%x9, 0(%x8)  #212 pc 868
	sw	%x7, 0(%x2)  #213 pc 872
	addi	%x7, %x8, 0  #0 pc 876
	sw	%x1, 4(%x2)  #213 pc 880
	addi	%x2, %x2, 8  #213 pc 884
	jal	%x1, compose.194  #213 pc 888
	addi	%x2, %x2, -8  #213 pc 892
	lw	%x1, 4(%x2) #213 pc 896
	addi	%x7, %x6, 0  #213 pc 900
	lw	%x6, 0(%x2)  #213 pc 904
	sw	%x1, 4(%x2)  #213 pc 908
	addi	%x2, %x2, 8  #213 pc 912
	jal	%x1, compose.194  #213 pc 916
	addi	%x2, %x2, -8  #213 pc 920
	lw	%x1, 4(%x2) #213 pc 924
	addi	%x29, %x6, 0  #213 pc 928
	addi	%x6, %x0, 123  #0 pc 932
	sw	%x1, 4(%x2)  #214 pc 936
	lw	%x30, 0(%x29)  #214 pc 940
	addi	%x2, %x2, 8  #214 pc 944
	jalr	%x1, %x30, 0  #214 pc 948
	addi	%x2, %x2, -8  #214 pc 952
	lw	%x1, 4(%x2)  #214 pc 956
	sw	%x1, 4(%x2)  #214 pc 960
	addi	%x2, %x2, 8  #214 pc 964
	jal	%x1, print_int.174  #214 pc 968
	addi	%x2, %x2, -8  #214 pc 972
	lw	%x1, 4(%x2) #214 pc 976
