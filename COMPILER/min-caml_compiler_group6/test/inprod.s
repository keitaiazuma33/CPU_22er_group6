.section	".rodata"
.align	8
l.410:	! 6.000000
l.408:	! 5.000000
l.406:	! 4.000000
l.400:	! 3.000000
l.398:	! 2.000000
l.396:	! 1.000000
l.394:	! 1000000.000000
.section	".text"
	nop
	j min_caml_start
mul_abs.172:  #pc 8
	addi	%x31, %x0, -1  #pc 8
	beq	%x8, %x31, 12  #57 pc 12
	j	be_else.435 #pc 16
	nop #pc 20
	addi	%x6, %x9, 0  #58 pc 24
	ret #pc 28
	nop #pc 32
be_else.435: #pc 36
	addi	%x10, %x0, 1  #0 pc 36
	sll	%x10, %x10, %x8  #60 pc 40
	and	%x10, %x7, %x10  #60 pc 44
	beq	%x10, %x0, 12  #60 pc 48
	j	be_else.436 #pc 52
	nop #pc 56
	addi	%x8, %x8, -1  #61 pc 60
	j	mul_abs.172  #61 pc 64
	nop #pc 68
be_else.436: #pc 72
	addi	%x10, %x8, -1  #63 pc 72
	sll	%x8, %x6, %x8  #63 pc 76
	add	%x9, %x9, %x8  #63 pc 80
	addi	%x8, %x10, 0  #0 pc 84
	j	mul_abs.172  #63 pc 88
	nop #pc 92
mul.177:  #pc 96
	bge	%x6, %x0, 12  #67 pc 96
	j	bge_else.437 #pc 100
	nop #pc 104
	addi	%x8, %x6, 0  #67 pc 108
	j	bge_cont.438 #pc 112
	nop #pc 116
bge_else.437: #pc 120
	sub	%x8, %x0, %x6  #67 pc 120
bge_cont.438: #pc 124
	bge	%x7, %x0, 12  #68 pc 124
	j	bge_else.439 #pc 128
	nop #pc 132
	addi	%x9, %x7, 0  #68 pc 136
	j	bge_cont.440 #pc 140
	nop #pc 144
bge_else.439: #pc 148
	sub	%x9, %x0, %x7  #68 pc 148
bge_cont.440: #pc 152
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
	jal	%x1, mul_abs.172  #69 pc 192
	addi	%x2, %x2, -12  #69 pc 196
	lw	%x1, 8(%x2) #69 pc 200
	lw	%x7, 4(%x2)  #70 pc 204
	srli	%x7, %x7, 31  #70 pc 208
	lw	%x8, 0(%x2)  #70 pc 212
	srli	%x8, %x8, 31  #70 pc 216
	beq	%x7, %x8, 12  #70 pc 220
	j	be_else.441 #pc 224
	nop #pc 228
	ret #pc 232
	nop #pc 236
be_else.441: #pc 240
	sub	%x6, %x0, %x6  #73 pc 240
	ret #pc 244
	nop #pc 248
div_abs.180:  #pc 252
	addi	%x31, %x0, -1  #pc 252
	beq	%x8, %x31, 12  #77 pc 256
	j	be_else.442 #pc 260
	nop #pc 264
	addi	%x6, %x9, 0  #78 pc 268
	ret #pc 272
	nop #pc 276
be_else.442: #pc 280
	srl	%x10, %x6, %x8  #80 pc 280
	bge	%x10, %x7, 12  #80 pc 284
	j	ble_else.443 #pc 288
	nop #pc 292
	sll	%x10, %x7, %x8  #81 pc 296
	sub	%x6, %x6, %x10  #81 pc 300
	addi	%x10, %x8, -1  #81 pc 304
	addi	%x11, %x0, 1  #0 pc 308
	sll	%x8, %x11, %x8  #81 pc 312
	add	%x9, %x9, %x8  #81 pc 316
	addi	%x8, %x10, 0  #0 pc 320
	j	div_abs.180  #81 pc 324
	nop #pc 328
ble_else.443: #pc 332
	addi	%x8, %x8, -1  #83 pc 332
	j	div_abs.180  #83 pc 336
	nop #pc 340
div.185:  #pc 344
	bge	%x6, %x0, 12  #87 pc 344
	j	bge_else.444 #pc 348
	nop #pc 352
	addi	%x8, %x6, 0  #87 pc 356
	j	bge_cont.445 #pc 360
	nop #pc 364
bge_else.444: #pc 368
	sub	%x8, %x0, %x6  #87 pc 368
bge_cont.445: #pc 372
	bge	%x7, %x0, 12  #88 pc 372
	j	bge_else.446 #pc 376
	nop #pc 380
	addi	%x9, %x7, 0  #88 pc 384
	j	bge_cont.447 #pc 388
	nop #pc 392
bge_else.446: #pc 396
	sub	%x9, %x0, %x7  #88 pc 396
bge_cont.447: #pc 400
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
	jal	%x1, div_abs.180  #89 pc 440
	addi	%x2, %x2, -12  #89 pc 444
	lw	%x1, 8(%x2) #89 pc 448
	lw	%x7, 4(%x2)  #90 pc 452
	srli	%x7, %x7, 31  #90 pc 456
	lw	%x8, 0(%x2)  #90 pc 460
	srli	%x8, %x8, 31  #90 pc 464
	beq	%x7, %x8, 12  #90 pc 468
	j	be_else.448 #pc 472
	nop #pc 476
	ret #pc 480
	nop #pc 484
be_else.448: #pc 488
	sub	%x6, %x0, %x6  #93 pc 488
	ret #pc 492
	nop #pc 496
print_int.190:  #pc 500
	bge	%x6, %x0, 12  #100 pc 500
	j	bge_else.449 #pc 504
	nop #pc 508
	addi	%x31, %x0, 10  #pc 512
	bge	%x6, %x31, 12  #104 pc 516
	j	bge_else.450 #pc 520
	nop #pc 524
	addi	%x7, %x0, 10  #0 pc 528
	sw	%x6, 0(%x2)  #107 pc 532
	sw	%x1, 4(%x2)  #107 pc 536
	addi	%x2, %x2, 8  #107 pc 540
	jal	%x1, div.185  #107 pc 544
	addi	%x2, %x2, -8  #107 pc 548
	lw	%x1, 4(%x2) #107 pc 552
	sw	%x6, 4(%x2)  #108 pc 556
	sw	%x1, 8(%x2)  #108 pc 560
	addi	%x2, %x2, 12  #108 pc 564
	jal	%x1, print_int.190  #108 pc 568
	addi	%x2, %x2, -12  #108 pc 572
	lw	%x1, 8(%x2) #108 pc 576
	addi	%x7, %x0, 10  #0 pc 580
	lw	%x6, 4(%x2)  #109 pc 584
	sw	%x1, 8(%x2)  #109 pc 588
	addi	%x2, %x2, 12  #109 pc 592
	jal	%x1, mul.177  #109 pc 596
	addi	%x2, %x2, -12  #109 pc 600
	lw	%x1, 8(%x2) #109 pc 604
	lw	%x7, 0(%x2)  #109 pc 608
	sub	%x6, %x7, %x6  #109 pc 612
	addi	%x6, %x6, 48  #109 pc 616
	sw	%x6, 0(%x5)  #109 pc 620
	addi	%x5, %x5, 4  #109 pc 624
	ret #pc 628
	nop #pc 632
bge_else.450: #pc 636
	addi	%x6, %x6, 48  #105 pc 636
	sw	%x6, 0(%x5)  #105 pc 640
	addi	%x5, %x5, 4  #105 pc 644
	ret #pc 648
	nop #pc 652
bge_else.449: #pc 656
	addi	%x7, %x0, 45  #0 pc 656
	sw	%x7, 0(%x5)  #101 pc 660
	addi	%x5, %x5, 4  #101 pc 664
	sub	%x6, %x0, %x6  #102 pc 668
	j	print_int.190  #102 pc 672
	nop #pc 676
getx.210:  #pc 680
	flw	%f0, 0(%x6)  #207 pc 680
	ret #pc 684
	nop #pc 688
gety.212:  #pc 692
	flw	%f0, 4(%x6)  #208 pc 692
	ret #pc 696
	nop #pc 700
getz.214:  #pc 704
	flw	%f0, 8(%x6)  #209 pc 704
	ret #pc 708
	nop #pc 712
inprod.216:  #pc 716
	sw	%x6, 0(%x2)  #211 pc 716
	sw	%x7, 4(%x2)  #211 pc 720
	sw	%x1, 8(%x2)  #211 pc 724
	addi	%x2, %x2, 12  #211 pc 728
	jal	%x1, getx.210  #211 pc 732
	addi	%x2, %x2, -12  #211 pc 736
	lw	%x1, 8(%x2) #211 pc 740
	lw	%x6, 4(%x2)  #211 pc 744
	fsw	%f0, 8(%x2)  #211 pc 748
	sw	%x1, 16(%x2)  #211 pc 752
	addi	%x2, %x2, 20  #211 pc 756
	jal	%x1, getx.210  #211 pc 760
	addi	%x2, %x2, -20  #211 pc 764
	lw	%x1, 16(%x2) #211 pc 768
	flw	%f1, 8(%x2)  #211 pc 772
	fmul	%f0, %f1, %f0  #211 pc 776
	lw	%x6, 0(%x2)  #211 pc 780
	fsw	%f0, 16(%x2)  #211 pc 784
	sw	%x1, 24(%x2)  #211 pc 788
	addi	%x2, %x2, 28  #211 pc 792
	jal	%x1, gety.212  #211 pc 796
	addi	%x2, %x2, -28  #211 pc 800
	lw	%x1, 24(%x2) #211 pc 804
	lw	%x6, 4(%x2)  #211 pc 808
	fsw	%f0, 24(%x2)  #211 pc 812
	sw	%x1, 32(%x2)  #211 pc 816
	addi	%x2, %x2, 36  #211 pc 820
	jal	%x1, gety.212  #211 pc 824
	addi	%x2, %x2, -36  #211 pc 828
	lw	%x1, 32(%x2) #211 pc 832
	flw	%f1, 24(%x2)  #211 pc 836
	fmul	%f0, %f1, %f0  #211 pc 840
	flw	%f1, 16(%x2)  #211 pc 844
	fadd	%f0, %f1, %f0  #211 pc 848
	lw	%x6, 0(%x2)  #211 pc 852
	fsw	%f0, 32(%x2)  #211 pc 856
	sw	%x1, 40(%x2)  #211 pc 860
	addi	%x2, %x2, 44  #211 pc 864
	jal	%x1, getz.214  #211 pc 868
	addi	%x2, %x2, -44  #211 pc 872
	lw	%x1, 40(%x2) #211 pc 876
	lw	%x6, 4(%x2)  #211 pc 880
	fsw	%f0, 40(%x2)  #211 pc 884
	sw	%x1, 48(%x2)  #211 pc 888
	addi	%x2, %x2, 52  #211 pc 892
	jal	%x1, getz.214  #211 pc 896
	addi	%x2, %x2, -52  #211 pc 900
	lw	%x1, 48(%x2) #211 pc 904
	flw	%f1, 40(%x2)  #211 pc 908
	fmul	%f0, %f1, %f0  #211 pc 912
	flw	%f1, 32(%x2)  #211 pc 916
	fadd	%f0, %f1, %f0  #211 pc 920
	ret #pc 924
	nop #pc 928
.global	min_caml_start
min_caml_start:
	addi	%x31, %x0, 1
	slli	%x4, %x31, 13
	slli	%x5, %x31, 16
	slli	%x2, %x31, 24
	add	%x3, %x2, %x4
	fmv	%f0, l.394  #0 pc 952
	fmv	%f1, l.396  #0 pc 956
	fmv	%f2, l.398  #0 pc 960
	fmv	%f3, l.400  #0 pc 964
	addi	%x6, %x3, 0  #212 pc 968
	addi	%x3, %x3, 12  #212 pc 972
	fsw	%f3, 8(%x6)  #212 pc 976
	fsw	%f2, 4(%x6)  #212 pc 980
	fsw	%f1, 0(%x6)  #212 pc 984
	fmv	%f1, l.406  #0 pc 988
	fmv	%f2, l.408  #0 pc 992
	fmv	%f3, l.410  #0 pc 996
	addi	%x7, %x3, 0  #212 pc 1000
	addi	%x3, %x3, 12  #212 pc 1004
	fsw	%f3, 8(%x7)  #212 pc 1008
	fsw	%f2, 4(%x7)  #212 pc 1012
	fsw	%f1, 0(%x7)  #212 pc 1016
	fsw	%f0, 0(%x2)  #212 pc 1020
	sw	%x1, 8(%x2)  #212 pc 1024
	addi	%x2, %x2, 12  #212 pc 1028
	jal	%x1, inprod.216  #212 pc 1032
	addi	%x2, %x2, -12  #212 pc 1036
	lw	%x1, 8(%x2) #212 pc 1040
	flw	%f1, 0(%x2)  #212 pc 1044
	fmul	%f0, %f1, %f0  #212 pc 1048
	ftoi	%x6, %f0  #212 pc 1052
	sw	%x1, 8(%x2)  #212 pc 1056
	addi	%x2, %x2, 12  #212 pc 1060
	jal	%x1, print_int.190  #212 pc 1064
	addi	%x2, %x2, -12  #212 pc 1068
	lw	%x1, 8(%x2) #212 pc 1072
