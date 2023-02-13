.section	".rodata"
.align	8
.section	".text"
mul_abs.175:  #pc 0
	addi	%x31, %x0, -1  #pc 0
	beq	%x8, %x31, 12  #57 pc 4
	j	be_else.428 #pc 8
	nop #pc 12
	addi	%x6, %x9, 0  #58 pc 16
	ret #pc 20
	nop #pc 24
be_else.428: #pc 28
	addi	%x10, %x0, 1  #0 pc 28
	sll	%x10, %x10, %x8  #60 pc 32
	and	%x10, %x7, %x10  #60 pc 36
	beq	%x10, %x0, 12  #60 pc 40
	j	be_else.429 #pc 44
	nop #pc 48
	addi	%x8, %x8, -1  #61 pc 52
	j	mul_abs.175  #61 pc 56
	nop #pc 60
be_else.429: #pc 64
	addi	%x10, %x8, -1  #63 pc 64
	sll	%x8, %x6, %x8  #63 pc 68
	add	%x9, %x9, %x8  #63 pc 72
	addi	%x8, %x10, 0  #0 pc 76
	j	mul_abs.175  #63 pc 80
	nop #pc 84
mul.180:  #pc 88
	bge	%x6, %x0, 12  #67 pc 88
	j	bge_else.430 #pc 92
	nop #pc 96
	addi	%x8, %x6, 0  #67 pc 100
	j	bge_cont.431 #pc 104
	nop #pc 108
bge_else.430: #pc 112
	sub	%x8, %x0, %x6  #67 pc 112
bge_cont.431: #pc 116
	bge	%x7, %x0, 12  #68 pc 116
	j	bge_else.432 #pc 120
	nop #pc 124
	addi	%x9, %x7, 0  #68 pc 128
	j	bge_cont.433 #pc 132
	nop #pc 136
bge_else.432: #pc 140
	sub	%x9, %x0, %x7  #68 pc 140
bge_cont.433: #pc 144
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
	jal	%x1, mul_abs.175  #69 pc 184
	addi	%x2, %x2, -12  #69 pc 188
	lw	%x1, 8(%x2) #69 pc 192
	lw	%x7, 4(%x2)  #70 pc 196
	srli	%x7, %x7, 31  #70 pc 200
	lw	%x8, 0(%x2)  #70 pc 204
	srli	%x8, %x8, 31  #70 pc 208
	beq	%x7, %x8, 12  #70 pc 212
	j	be_else.434 #pc 216
	nop #pc 220
	ret #pc 224
	nop #pc 228
be_else.434: #pc 232
	sub	%x6, %x0, %x6  #73 pc 232
	ret #pc 236
	nop #pc 240
div_abs.183:  #pc 244
	addi	%x31, %x0, -1  #pc 244
	beq	%x8, %x31, 12  #77 pc 248
	j	be_else.435 #pc 252
	nop #pc 256
	addi	%x6, %x9, 0  #78 pc 260
	ret #pc 264
	nop #pc 268
be_else.435: #pc 272
	srl	%x10, %x6, %x8  #80 pc 272
	bge	%x10, %x7, 12  #80 pc 276
	j	ble_else.436 #pc 280
	nop #pc 284
	sll	%x10, %x7, %x8  #81 pc 288
	sub	%x6, %x6, %x10  #81 pc 292
	addi	%x10, %x8, -1  #81 pc 296
	addi	%x11, %x0, 1  #0 pc 300
	sll	%x8, %x11, %x8  #81 pc 304
	add	%x9, %x9, %x8  #81 pc 308
	addi	%x8, %x10, 0  #0 pc 312
	j	div_abs.183  #81 pc 316
	nop #pc 320
ble_else.436: #pc 324
	addi	%x8, %x8, -1  #83 pc 324
	j	div_abs.183  #83 pc 328
	nop #pc 332
div.188:  #pc 336
	bge	%x6, %x0, 12  #87 pc 336
	j	bge_else.437 #pc 340
	nop #pc 344
	addi	%x8, %x6, 0  #87 pc 348
	j	bge_cont.438 #pc 352
	nop #pc 356
bge_else.437: #pc 360
	sub	%x8, %x0, %x6  #87 pc 360
bge_cont.438: #pc 364
	bge	%x7, %x0, 12  #88 pc 364
	j	bge_else.439 #pc 368
	nop #pc 372
	addi	%x9, %x7, 0  #88 pc 376
	j	bge_cont.440 #pc 380
	nop #pc 384
bge_else.439: #pc 388
	sub	%x9, %x0, %x7  #88 pc 388
bge_cont.440: #pc 392
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
	jal	%x1, div_abs.183  #89 pc 432
	addi	%x2, %x2, -12  #89 pc 436
	lw	%x1, 8(%x2) #89 pc 440
	lw	%x7, 4(%x2)  #90 pc 444
	srli	%x7, %x7, 31  #90 pc 448
	lw	%x8, 0(%x2)  #90 pc 452
	srli	%x8, %x8, 31  #90 pc 456
	beq	%x7, %x8, 12  #90 pc 460
	j	be_else.441 #pc 464
	nop #pc 468
	ret #pc 472
	nop #pc 476
be_else.441: #pc 480
	sub	%x6, %x0, %x6  #93 pc 480
	ret #pc 484
	nop #pc 488
print_int.193:  #pc 492
	bge	%x6, %x0, 12  #100 pc 492
	j	bge_else.442 #pc 496
	nop #pc 500
	addi	%x31, %x0, 10  #pc 504
	bge	%x6, %x31, 12  #104 pc 508
	j	bge_else.443 #pc 512
	nop #pc 516
	addi	%x7, %x0, 10  #0 pc 520
	sw	%x6, 0(%x2)  #107 pc 524
	sw	%x1, 4(%x2)  #107 pc 528
	addi	%x2, %x2, 8  #107 pc 532
	jal	%x1, div.188  #107 pc 536
	addi	%x2, %x2, -8  #107 pc 540
	lw	%x1, 4(%x2) #107 pc 544
	sw	%x6, 4(%x2)  #108 pc 548
	sw	%x1, 8(%x2)  #108 pc 552
	addi	%x2, %x2, 12  #108 pc 556
	jal	%x1, print_int.193  #108 pc 560
	addi	%x2, %x2, -12  #108 pc 564
	lw	%x1, 8(%x2) #108 pc 568
	addi	%x7, %x0, 10  #0 pc 572
	lw	%x6, 4(%x2)  #109 pc 576
	sw	%x1, 8(%x2)  #109 pc 580
	addi	%x2, %x2, 12  #109 pc 584
	jal	%x1, mul.180  #109 pc 588
	addi	%x2, %x2, -12  #109 pc 592
	lw	%x1, 8(%x2) #109 pc 596
	lw	%x7, 0(%x2)  #109 pc 600
	sub	%x6, %x7, %x6  #109 pc 604
	addi	%x6, %x6, 48  #109 pc 608
	sw	%x6, 0(%x5)  #109 pc 612
	addi	%x5, %x5, 4  #109 pc 616
	ret #pc 620
	nop #pc 624
bge_else.443: #pc 628
	addi	%x6, %x6, 48  #105 pc 628
	sw	%x6, 0(%x5)  #105 pc 632
	addi	%x5, %x5, 4  #105 pc 636
	ret #pc 640
	nop #pc 644
bge_else.442: #pc 648
	addi	%x7, %x0, 45  #0 pc 648
	sw	%x7, 0(%x5)  #101 pc 652
	addi	%x5, %x5, 4  #101 pc 656
	sub	%x6, %x0, %x6  #102 pc 660
	j	print_int.193  #102 pc 664
	nop #pc 668
g.239:  #pc 672
	lw	%x7, 40(%x29)  #0 pc 672
	lw	%x8, 36(%x29)  #0 pc 676
	lw	%x9, 32(%x29)  #0 pc 680
	lw	%x10, 28(%x29)  #0 pc 684
	lw	%x11, 24(%x29)  #0 pc 688
	lw	%x12, 20(%x29)  #0 pc 692
	lw	%x13, 16(%x29)  #0 pc 696
	lw	%x14, 12(%x29)  #0 pc 700
	lw	%x15, 8(%x29)  #0 pc 704
	lw	%x16, 4(%x29)  #0 pc 708
	add	%x14, %x16, %x14  #211 pc 712
	add	%x13, %x14, %x13  #211 pc 716
	add	%x12, %x13, %x12  #211 pc 720
	add	%x11, %x12, %x11  #211 pc 724
	add	%x10, %x11, %x10  #211 pc 728
	add	%x9, %x10, %x9  #211 pc 732
	add	%x8, %x9, %x8  #211 pc 736
	add	%x7, %x8, %x7  #211 pc 740
	add	%x7, %x7, %x15  #211 pc 744
	bge	%x0, %x6, 12  #212 pc 748
	j	ble_else.446 #pc 752
	nop #pc 756
	sub	%x6, %x0, %x6  #212 pc 760
	lw	%x30, 0(%x29)  #212 pc 764
	jalr	%x0, %x30, 0  #212 pc 768
	nop #pc 772
ble_else.446: #pc 776
	addi	%x6, %x7, 0  #212 pc 776
	ret #pc 780
	nop #pc 784
h.213:  #pc 788
	lw	%x7, 36(%x6)  #209 pc 788
	lw	%x8, 32(%x6)  #209 pc 792
	lw	%x9, 28(%x6)  #209 pc 796
	lw	%x10, 24(%x6)  #209 pc 800
	lw	%x11, 20(%x6)  #209 pc 804
	lw	%x12, 16(%x6)  #209 pc 808
	lw	%x13, 12(%x6)  #209 pc 812
	lw	%x14, 8(%x6)  #209 pc 816
	lw	%x15, 4(%x6)  #209 pc 820
	lw	%x6, 0(%x6)  #209 pc 824
	addi	%x29, %x3, 0  #210 pc 828
	addi	%x3, %x3, 44  #210 pc 832
	addi	%x16, %x0, 672  #210 g.239 pc 836
	sw	%x16, 0(%x29)  #210 pc 840
	sw	%x8, 40(%x29)  #210 pc 844
	sw	%x9, 36(%x29)  #210 pc 848
	sw	%x10, 32(%x29)  #210 pc 852
	sw	%x11, 28(%x29)  #210 pc 856
	sw	%x12, 24(%x29)  #210 pc 860
	sw	%x13, 20(%x29)  #210 pc 864
	sw	%x14, 16(%x29)  #210 pc 868
	sw	%x15, 12(%x29)  #210 pc 872
	sw	%x7, 8(%x29)  #210 pc 876
	sw	%x6, 4(%x29)  #210 pc 880
	addi	%x6, %x0, 1  #0 pc 884
	lw	%x30, 0(%x29)  #213 pc 888
	jalr	%x0, %x30, 0  #213 pc 892
	nop #pc 896
.global	min_caml_start
min_caml_start:
	addi	%x2, %x0, 10000000
	addi	%x3, %x0, 10002000
	addi	%x4, %x0, 8192
	addi	%x5, %x0, 65536
	addi	%x6, %x0, 1  #0 pc 916
	addi	%x7, %x0, 2  #0 pc 920
	addi	%x8, %x0, 3  #0 pc 924
	addi	%x9, %x0, 4  #0 pc 928
	addi	%x10, %x0, 5  #0 pc 932
	addi	%x11, %x0, 6  #0 pc 936
	addi	%x12, %x0, 7  #0 pc 940
	addi	%x13, %x0, 8  #0 pc 944
	addi	%x14, %x0, 9  #0 pc 948
	addi	%x15, %x0, 10  #0 pc 952
	addi	%x16, %x3, 0  #214 pc 956
	addi	%x3, %x3, 40  #214 pc 960
	sw	%x15, 36(%x16)  #214 pc 964
	sw	%x14, 32(%x16)  #214 pc 968
	sw	%x13, 28(%x16)  #214 pc 972
	sw	%x12, 24(%x16)  #214 pc 976
	sw	%x11, 20(%x16)  #214 pc 980
	sw	%x10, 16(%x16)  #214 pc 984
	sw	%x9, 12(%x16)  #214 pc 988
	sw	%x8, 8(%x16)  #214 pc 992
	sw	%x7, 4(%x16)  #214 pc 996
	sw	%x6, 0(%x16)  #214 pc 1000
	addi	%x6, %x16, 0  #214 pc 1004
	sw	%x1, 0(%x2)  #214 pc 1008
	addi	%x2, %x2, 4  #214 pc 1012
	jal	%x1, h.213  #214 pc 1016
	addi	%x2, %x2, -4  #214 pc 1020
	lw	%x1, 0(%x2) #214 pc 1024
	sw	%x1, 0(%x2)  #214 pc 1028
	addi	%x2, %x2, 4  #214 pc 1032
	jal	%x1, print_int.193  #214 pc 1036
	addi	%x2, %x2, -4  #214 pc 1040
	lw	%x1, 0(%x2) #214 pc 1044
	sw	%x1, 0(%x2)  #215 pc 1048
	addi	%x2, %x2, 4  #215 pc 1052
	jal	%x1, min_caml_print_newline  #215 pc 1056
	addi	%x2, %x2, -4  #215 pc 1060
	lw	%x1, 0(%x2) #215 pc 1064
