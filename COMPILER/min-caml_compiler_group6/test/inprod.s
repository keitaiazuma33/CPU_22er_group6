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
mul_abs.172:  #pc 0
	addi	%x31, %x0, -1  #pc 0
	beq	%x8, %x31, 12  #57 pc 4
	j	be_else.435 #pc 8
	nop #pc 12
	addi	%x6, %x9, 0  #58 pc 16
	ret #pc 20
	nop #pc 24
be_else.435: #pc 28
	addi	%x10, %x0, 1  #0 pc 28
	sll	%x10, %x10, %x8  #60 pc 32
	and	%x10, %x7, %x10  #60 pc 36
	beq	%x10, %x0, 12  #60 pc 40
	j	be_else.436 #pc 44
	nop #pc 48
	addi	%x8, %x8, -1  #61 pc 52
	j	mul_abs.172  #61 pc 56
	nop #pc 60
be_else.436: #pc 64
	addi	%x10, %x8, -1  #63 pc 64
	sll	%x8, %x6, %x8  #63 pc 68
	add	%x9, %x9, %x8  #63 pc 72
	addi	%x8, %x10, 0  #0 pc 76
	j	mul_abs.172  #63 pc 80
	nop #pc 84
mul.177:  #pc 88
	bge	%x6, %x0, 12  #67 pc 88
	j	bge_else.437 #pc 92
	nop #pc 96
	addi	%x8, %x6, 0  #67 pc 100
	j	bge_cont.438 #pc 104
	nop #pc 108
bge_else.437: #pc 112
	sub	%x8, %x0, %x6  #67 pc 112
bge_cont.438: #pc 116
	bge	%x7, %x0, 12  #68 pc 116
	j	bge_else.439 #pc 120
	nop #pc 124
	addi	%x9, %x7, 0  #68 pc 128
	j	bge_cont.440 #pc 132
	nop #pc 136
bge_else.439: #pc 140
	sub	%x9, %x0, %x7  #68 pc 140
bge_cont.440: #pc 144
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
	jal	%x1, mul_abs.172  #69 pc 184
	addi	%x2, %x2, -12  #69 pc 188
	lw	%x1, 8(%x2) #69 pc 192
	lw	%x7, 4(%x2)  #70 pc 196
	srli	%x7, %x7, 31  #70 pc 200
	lw	%x8, 0(%x2)  #70 pc 204
	srli	%x8, %x8, 31  #70 pc 208
	beq	%x7, %x8, 12  #70 pc 212
	j	be_else.441 #pc 216
	nop #pc 220
	ret #pc 224
	nop #pc 228
be_else.441: #pc 232
	sub	%x6, %x0, %x6  #73 pc 232
	ret #pc 236
	nop #pc 240
div_abs.180:  #pc 244
	addi	%x31, %x0, -1  #pc 244
	beq	%x8, %x31, 12  #77 pc 248
	j	be_else.442 #pc 252
	nop #pc 256
	addi	%x6, %x9, 0  #78 pc 260
	ret #pc 264
	nop #pc 268
be_else.442: #pc 272
	srl	%x10, %x6, %x8  #80 pc 272
	bge	%x10, %x7, 12  #80 pc 276
	j	ble_else.443 #pc 280
	nop #pc 284
	sll	%x10, %x7, %x8  #81 pc 288
	sub	%x6, %x6, %x10  #81 pc 292
	addi	%x10, %x8, -1  #81 pc 296
	addi	%x11, %x0, 1  #0 pc 300
	sll	%x8, %x11, %x8  #81 pc 304
	add	%x9, %x9, %x8  #81 pc 308
	addi	%x8, %x10, 0  #0 pc 312
	j	div_abs.180  #81 pc 316
	nop #pc 320
ble_else.443: #pc 324
	addi	%x8, %x8, -1  #83 pc 324
	j	div_abs.180  #83 pc 328
	nop #pc 332
div.185:  #pc 336
	bge	%x6, %x0, 12  #87 pc 336
	j	bge_else.444 #pc 340
	nop #pc 344
	addi	%x8, %x6, 0  #87 pc 348
	j	bge_cont.445 #pc 352
	nop #pc 356
bge_else.444: #pc 360
	sub	%x8, %x0, %x6  #87 pc 360
bge_cont.445: #pc 364
	bge	%x7, %x0, 12  #88 pc 364
	j	bge_else.446 #pc 368
	nop #pc 372
	addi	%x9, %x7, 0  #88 pc 376
	j	bge_cont.447 #pc 380
	nop #pc 384
bge_else.446: #pc 388
	sub	%x9, %x0, %x7  #88 pc 388
bge_cont.447: #pc 392
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
	jal	%x1, div_abs.180  #89 pc 432
	addi	%x2, %x2, -12  #89 pc 436
	lw	%x1, 8(%x2) #89 pc 440
	lw	%x7, 4(%x2)  #90 pc 444
	srli	%x7, %x7, 31  #90 pc 448
	lw	%x8, 0(%x2)  #90 pc 452
	srli	%x8, %x8, 31  #90 pc 456
	beq	%x7, %x8, 12  #90 pc 460
	j	be_else.448 #pc 464
	nop #pc 468
	ret #pc 472
	nop #pc 476
be_else.448: #pc 480
	sub	%x6, %x0, %x6  #93 pc 480
	ret #pc 484
	nop #pc 488
print_int.190:  #pc 492
	bge	%x6, %x0, 12  #100 pc 492
	j	bge_else.449 #pc 496
	nop #pc 500
	addi	%x31, %x0, 10  #pc 504
	bge	%x6, %x31, 12  #104 pc 508
	j	bge_else.450 #pc 512
	nop #pc 516
	addi	%x7, %x0, 10  #0 pc 520
	sw	%x6, 0(%x2)  #107 pc 524
	sw	%x1, 4(%x2)  #107 pc 528
	addi	%x2, %x2, 8  #107 pc 532
	jal	%x1, div.185  #107 pc 536
	addi	%x2, %x2, -8  #107 pc 540
	lw	%x1, 4(%x2) #107 pc 544
	sw	%x6, 4(%x2)  #108 pc 548
	sw	%x1, 8(%x2)  #108 pc 552
	addi	%x2, %x2, 12  #108 pc 556
	jal	%x1, print_int.190  #108 pc 560
	addi	%x2, %x2, -12  #108 pc 564
	lw	%x1, 8(%x2) #108 pc 568
	addi	%x7, %x0, 10  #0 pc 572
	lw	%x6, 4(%x2)  #109 pc 576
	sw	%x1, 8(%x2)  #109 pc 580
	addi	%x2, %x2, 12  #109 pc 584
	jal	%x1, mul.177  #109 pc 588
	addi	%x2, %x2, -12  #109 pc 592
	lw	%x1, 8(%x2) #109 pc 596
	lw	%x7, 0(%x2)  #109 pc 600
	sub	%x6, %x7, %x6  #109 pc 604
	addi	%x6, %x6, 48  #109 pc 608
	sw	%x6, 0(%x5)  #109 pc 612
	addi	%x5, %x5, 4  #109 pc 616
	ret #pc 620
	nop #pc 624
bge_else.450: #pc 628
	addi	%x6, %x6, 48  #105 pc 628
	sw	%x6, 0(%x5)  #105 pc 632
	addi	%x5, %x5, 4  #105 pc 636
	ret #pc 640
	nop #pc 644
bge_else.449: #pc 648
	addi	%x7, %x0, 45  #0 pc 648
	sw	%x7, 0(%x5)  #101 pc 652
	addi	%x5, %x5, 4  #101 pc 656
	sub	%x6, %x0, %x6  #102 pc 660
	j	print_int.190  #102 pc 664
	nop #pc 668
getx.210:  #pc 672
	flw	%f0, 0(%x6)  #207 pc 672
	ret #pc 676
	nop #pc 680
gety.212:  #pc 684
	flw	%f0, 4(%x6)  #208 pc 684
	ret #pc 688
	nop #pc 692
getz.214:  #pc 696
	flw	%f0, 8(%x6)  #209 pc 696
	ret #pc 700
	nop #pc 704
inprod.216:  #pc 708
	sw	%x6, 0(%x2)  #211 pc 708
	sw	%x7, 4(%x2)  #211 pc 712
	sw	%x1, 8(%x2)  #211 pc 716
	addi	%x2, %x2, 12  #211 pc 720
	jal	%x1, getx.210  #211 pc 724
	addi	%x2, %x2, -12  #211 pc 728
	lw	%x1, 8(%x2) #211 pc 732
	lw	%x6, 4(%x2)  #211 pc 736
	fsw	%f0, 8(%x2)  #211 pc 740
	sw	%x1, 16(%x2)  #211 pc 744
	addi	%x2, %x2, 20  #211 pc 748
	jal	%x1, getx.210  #211 pc 752
	addi	%x2, %x2, -20  #211 pc 756
	lw	%x1, 16(%x2) #211 pc 760
	flw	%f1, 8(%x2)  #211 pc 764
	fmul	%f0, %f1, %f0  #211 pc 768
	lw	%x6, 0(%x2)  #211 pc 772
	fsw	%f0, 16(%x2)  #211 pc 776
	sw	%x1, 24(%x2)  #211 pc 780
	addi	%x2, %x2, 28  #211 pc 784
	jal	%x1, gety.212  #211 pc 788
	addi	%x2, %x2, -28  #211 pc 792
	lw	%x1, 24(%x2) #211 pc 796
	lw	%x6, 4(%x2)  #211 pc 800
	fsw	%f0, 24(%x2)  #211 pc 804
	sw	%x1, 32(%x2)  #211 pc 808
	addi	%x2, %x2, 36  #211 pc 812
	jal	%x1, gety.212  #211 pc 816
	addi	%x2, %x2, -36  #211 pc 820
	lw	%x1, 32(%x2) #211 pc 824
	flw	%f1, 24(%x2)  #211 pc 828
	fmul	%f0, %f1, %f0  #211 pc 832
	flw	%f1, 16(%x2)  #211 pc 836
	fadd	%f0, %f1, %f0  #211 pc 840
	lw	%x6, 0(%x2)  #211 pc 844
	fsw	%f0, 32(%x2)  #211 pc 848
	sw	%x1, 40(%x2)  #211 pc 852
	addi	%x2, %x2, 44  #211 pc 856
	jal	%x1, getz.214  #211 pc 860
	addi	%x2, %x2, -44  #211 pc 864
	lw	%x1, 40(%x2) #211 pc 868
	lw	%x6, 4(%x2)  #211 pc 872
	fsw	%f0, 40(%x2)  #211 pc 876
	sw	%x1, 48(%x2)  #211 pc 880
	addi	%x2, %x2, 52  #211 pc 884
	jal	%x1, getz.214  #211 pc 888
	addi	%x2, %x2, -52  #211 pc 892
	lw	%x1, 48(%x2) #211 pc 896
	flw	%f1, 40(%x2)  #211 pc 900
	fmul	%f0, %f1, %f0  #211 pc 904
	flw	%f1, 32(%x2)  #211 pc 908
	fadd	%f0, %f1, %f0  #211 pc 912
	ret #pc 916
	nop #pc 920
.global	min_caml_start
min_caml_start:
	addi	%x2, %x0, 1000000
	addi	%x3, %x0, 1002000
	addi	%x4, %x0, 8192
	addi	%x5, %x0, 65536
	fmv	%f0, l.394  #0 pc 940
	fmv	%f1, l.396  #0 pc 944
	fmv	%f2, l.398  #0 pc 948
	fmv	%f3, l.400  #0 pc 952
	addi	%x6, %x3, 0  #212 pc 956
	addi	%x3, %x3, 12  #212 pc 960
	fsw	%f3, 8(%x6)  #212 pc 964
	fsw	%f2, 4(%x6)  #212 pc 968
	fsw	%f1, 0(%x6)  #212 pc 972
	fmv	%f1, l.406  #0 pc 976
	fmv	%f2, l.408  #0 pc 980
	fmv	%f3, l.410  #0 pc 984
	addi	%x7, %x3, 0  #212 pc 988
	addi	%x3, %x3, 12  #212 pc 992
	fsw	%f3, 8(%x7)  #212 pc 996
	fsw	%f2, 4(%x7)  #212 pc 1000
	fsw	%f1, 0(%x7)  #212 pc 1004
	fsw	%f0, 0(%x2)  #212 pc 1008
	sw	%x1, 8(%x2)  #212 pc 1012
	addi	%x2, %x2, 12  #212 pc 1016
	jal	%x1, inprod.216  #212 pc 1020
	addi	%x2, %x2, -12  #212 pc 1024
	lw	%x1, 8(%x2) #212 pc 1028
	flw	%f1, 0(%x2)  #212 pc 1032
	fmul	%f0, %f1, %f0  #212 pc 1036
	sw	%x1, 8(%x2)  #212 pc 1040
	addi	%x2, %x2, 12  #212 pc 1044
	jal	%x1, min_caml_truncate  #212 pc 1048
	addi	%x2, %x2, -12  #212 pc 1052
	lw	%x1, 8(%x2) #212 pc 1056
	sw	%x1, 8(%x2)  #212 pc 1060
	addi	%x2, %x2, 12  #212 pc 1064
	jal	%x1, print_int.190  #212 pc 1068
	addi	%x2, %x2, -12  #212 pc 1072
	lw	%x1, 8(%x2) #212 pc 1076
