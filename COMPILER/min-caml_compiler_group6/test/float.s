.section	".rodata"
.align	8
l.412:	! 48.300300
l.410:	! 4.500000
l.408:	! -12.300000
l.406:	! 0.001389
l.404:	! 0.041667
l.402:	! 0.500000
l.400:	! 1.000000
l.398:	! 0.000198
l.396:	! 0.008333
l.394:	! 0.166667
.section	".text"
sin.168:  #pc 0
	fmul	%f2, %f0, %f0  #16 pc 4
	fmul	%f4, %f0, %f2  #17 pc 8
	fmul	%f6, %f4, %f2  #18 pc 12
	fmul	%f2, %f6, %f2  #19 pc 16
	mv	%f8, l.394  #0 pc 20
	fmul	%f4, %f8, %f4  #20 pc 24
	fsub	%f0, %f0, %f4  #20 pc 28
	mv	%f4, l.396  #0 pc 32
	fmul	%f4, %f4, %f6  #20 pc 36
	fadd	%f0, %f0, %f4  #20 pc 40
	mv	%f4, l.398  #0 pc 44
	fmul	%f2, %f4, %f2  #20 pc 48
	fsub	%f0, %f0, %f2  #20 pc 52
	ret #pc 56
	nop #pc 60
cos.170:  #pc 60
	fmul	%f0, %f0, %f0  #24 pc 64
	fmul	%f2, %f0, %f0  #25 pc 68
	fmul	%f4, %f2, %f0  #26 pc 72
	mv	%f6, l.400  #0 pc 76
	mv	%f8, l.402  #0 pc 80
	fmul	%f0, %f8, %f0  #27 pc 84
	fsub	%f0, %f6, %f0  #27 pc 88
	mv	%f6, l.404  #0 pc 92
	fmul	%f2, %f6, %f2  #27 pc 96
	fadd	%f0, %f0, %f2  #27 pc 100
	mv	%f2, l.406  #0 pc 104
	fmul	%f2, %f2, %f4  #27 pc 108
	fsub	%f0, %f0, %f2  #27 pc 112
	ret #pc 116
	nop #pc 120
abs_float.176:  #pc 120
	fabs	%f0, %f0  #47 pc 124
	ret #pc 128
	nop #pc 132
float_of_int.178:  #pc 132
	itof	%f0, %x5  #50 pc 136
	ret #pc 140
	nop #pc 144
int_of_float.180:  #pc 144
	ftoi	%x5, %f0  #53 pc 148
	ret #pc 152
	nop #pc 156
mul_abs.182:  #pc 156
	addi	%x24, %x0, -1  #pc 160
	beq	%x7, %x24, 12  #57 pc 164
	j	be_else.423 #pc 168
	nop #pc 172
	mv	%x5, %x9  #58 pc 176
	ret #pc 180
	nop #pc 184
be_else.423: #pc 184
	addi	%x10, %x0, 1  #0 pc 188
	sll	%x10, %x10, %x7  #60 pc 192
	and	%x10, %x6, %x10  #60 pc 196
	beq	%x10, %x0, 12  #60 pc 200
	j	be_else.424 #pc 204
	nop #pc 208
	addi	%x7, %x7, -1  #61 pc 212
	j	mul_abs.182  #61 pc 216
	nop #pc 220
be_else.424: #pc 220
	addi	%x10, %x7, -1  #63 pc 224
	sll	%x7, %x5, %x7  #63 pc 228
	add	%x9, %x9, %x7  #63 pc 232
	mv	%x7, %x10 #pc 236
	j	mul_abs.182  #63 pc 240
	nop #pc 244
mul.187:  #pc 244
	bge	%x5, %x0, 12  #67 pc 248
	j	bge_else.425 #pc 252
	nop #pc 256
	mv	%x7, %x5  #67 pc 260
	j	bge_cont.426 #pc 264
	nop #pc 268
bge_else.425: #pc 268
	sub	%x7, %x0, %x5  #67 pc 272
bge_cont.426: #pc 272
	bge	%x6, %x0, 12  #68 pc 276
	j	bge_else.427 #pc 280
	nop #pc 284
	mv	%x9, %x6  #68 pc 288
	j	bge_cont.428 #pc 292
	nop #pc 296
bge_else.427: #pc 296
	sub	%x9, %x0, %x6  #68 pc 300
bge_cont.428: #pc 300
	addi	%x10, %x0, 30  #0 pc 304
	addi	%x11, %x0, 0  #0 pc 308
	sw	%x6, 0(%x2)  #69 pc 312
	sw	%x5, 4(%x2)  #69 pc 316
	mv	%x6, %x9 #pc 320
	mv	%x5, %x7 #pc 324
	mv	%x9, %x11 #pc 328
	mv	%x7, %x10 #pc 332
	sw	%x1, 12(%x2)  #69 pc 336
	addi	%x2, %x2, 16  #69 pc 340
	jal	%x1, mul_abs.182  #69 pc 344
	addi	%x2, %x2, -16  #69 pc 348
	lw	%x1, 12(%x2) #69 pc 352
	lw	%x6, 4(%x2)  #70 pc 356
	srli	%x6, %x6, 31  #70 pc 360
	lw	%x7, 0(%x2)  #70 pc 364
	srli	%x7, %x7, 31  #70 pc 368
	beq	%x6, %x7, 12  #70 pc 372
	j	be_else.429 #pc 376
	nop #pc 380
	ret #pc 384
	nop #pc 388
be_else.429: #pc 388
	sub	%x5, %x0, %x5  #73 pc 392
	ret #pc 396
	nop #pc 400
div_abs.190:  #pc 400
	addi	%x24, %x0, -1  #pc 404
	beq	%x7, %x24, 12  #77 pc 408
	j	be_else.430 #pc 412
	nop #pc 416
	mv	%x5, %x9  #78 pc 420
	ret #pc 424
	nop #pc 428
be_else.430: #pc 428
	srl	%x10, %x5, %x7  #80 pc 432
	bge	%x10, %x6, 12  #80 pc 436
	j	ble_else.431 #pc 440
	nop #pc 444
	sll	%x10, %x6, %x7  #81 pc 448
	sub	%x5, %x5, %x10  #81 pc 452
	addi	%x10, %x7, -1  #81 pc 456
	addi	%x11, %x0, 1  #0 pc 460
	sll	%x7, %x11, %x7  #81 pc 464
	add	%x9, %x9, %x7  #81 pc 468
	mv	%x7, %x10 #pc 472
	j	div_abs.190  #81 pc 476
	nop #pc 480
ble_else.431: #pc 480
	addi	%x7, %x7, -1  #83 pc 484
	j	div_abs.190  #83 pc 488
	nop #pc 492
div.195:  #pc 492
	bge	%x5, %x0, 12  #87 pc 496
	j	bge_else.432 #pc 500
	nop #pc 504
	mv	%x7, %x5  #87 pc 508
	j	bge_cont.433 #pc 512
	nop #pc 516
bge_else.432: #pc 516
	sub	%x7, %x0, %x5  #87 pc 520
bge_cont.433: #pc 520
	bge	%x6, %x0, 12  #88 pc 524
	j	bge_else.434 #pc 528
	nop #pc 532
	mv	%x9, %x6  #88 pc 536
	j	bge_cont.435 #pc 540
	nop #pc 544
bge_else.434: #pc 544
	sub	%x9, %x0, %x6  #88 pc 548
bge_cont.435: #pc 548
	addi	%x10, %x0, 30  #0 pc 552
	addi	%x11, %x0, 0  #0 pc 556
	sw	%x6, 0(%x2)  #89 pc 560
	sw	%x5, 4(%x2)  #89 pc 564
	mv	%x6, %x9 #pc 568
	mv	%x5, %x7 #pc 572
	mv	%x9, %x11 #pc 576
	mv	%x7, %x10 #pc 580
	sw	%x1, 12(%x2)  #89 pc 584
	addi	%x2, %x2, 16  #89 pc 588
	jal	%x1, div_abs.190  #89 pc 592
	addi	%x2, %x2, -16  #89 pc 596
	lw	%x1, 12(%x2) #89 pc 600
	lw	%x6, 4(%x2)  #90 pc 604
	srli	%x6, %x6, 31  #90 pc 608
	lw	%x7, 0(%x2)  #90 pc 612
	srli	%x7, %x7, 31  #90 pc 616
	beq	%x6, %x7, 12  #90 pc 620
	j	be_else.436 #pc 624
	nop #pc 628
	ret #pc 632
	nop #pc 636
be_else.436: #pc 636
	sub	%x5, %x0, %x5  #93 pc 640
	ret #pc 644
	nop #pc 648
print_int.200:  #pc 648
	bge	%x5, %x0, 12  #100 pc 652
	j	bge_else.437 #pc 656
	nop #pc 660
	addi	%x24, %x0, 10  #pc 664
	bge	%x5, %x24, 12  #104 pc 668
	j	bge_else.438 #pc 672
	nop #pc 676
	addi	%x6, %x0, 10  #0 pc 680
	sw	%x5, 0(%x2)  #107 pc 684
	sw	%x1, 4(%x2)  #107 pc 688
	addi	%x2, %x2, 8  #107 pc 692
	jal	%x1, div.195  #107 pc 696
	addi	%x2, %x2, -8  #107 pc 700
	lw	%x1, 4(%x2) #107 pc 704
	sw	%x5, 4(%x2)  #108 pc 708
	sw	%x1, 12(%x2)  #108 pc 712
	addi	%x2, %x2, 16  #108 pc 716
	jal	%x1, print_int.200  #108 pc 720
	addi	%x2, %x2, -16  #108 pc 724
	lw	%x1, 12(%x2) #108 pc 728
	addi	%x6, %x0, 10  #0 pc 732
	lw	%x5, 4(%x2)  #109 pc 736
	sw	%x1, 12(%x2)  #109 pc 740
	addi	%x2, %x2, 16  #109 pc 744
	jal	%x1, mul.187  #109 pc 748
	addi	%x2, %x2, -16  #109 pc 752
	lw	%x1, 12(%x2) #109 pc 756
	lw	%x6, 0(%x2)  #109 pc 760
	sub	%x5, %x6, %x5  #109 pc 764
	addi	%x5, %x5, 48  #109 pc 768
	out	%x5  #109 pc 772
	ret #pc 776
	nop #pc 780
bge_else.438: #pc 780
	addi	%x5, %x5, 48  #105 pc 784
	out	%x5  #105 pc 788
	ret #pc 792
	nop #pc 796
bge_else.437: #pc 796
	sub	%x5, %x0, %x5  #102 pc 800
	j	print_int.200  #102 pc 804
	nop #pc 808
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	mv	%f0, l.408  #0 pc 812
	sw	%x1, 12(%x2)  #165 pc 816
	addi	%x2, %x2, 16  #165 pc 820
	jal	%x1, abs_float.176  #165 pc 824
	addi	%x2, %x2, -16  #165 pc 828
	lw	%x1, 12(%x2) #165 pc 832
	fsqrt	%f0, %f0  #165 pc 836
	sw	%x1, 12(%x2)  #165 pc 840
	addi	%x2, %x2, 16  #165 pc 844
	jal	%x1, cos.170  #165 pc 848
	addi	%x2, %x2, -16  #165 pc 852
	lw	%x1, 12(%x2) #165 pc 856
	sw	%x1, 12(%x2)  #165 pc 860
	addi	%x2, %x2, 16  #165 pc 864
	jal	%x1, sin.168  #165 pc 868
	addi	%x2, %x2, -16  #165 pc 872
	lw	%x1, 12(%x2) #165 pc 876
	mv	%f2, l.410  #0 pc 880
	fadd	%f0, %f0, %f2  #165 pc 884
	mv	%f2, l.412  #0 pc 888
	fsub	%f0, %f0, %f2  #165 pc 892
	addi	%x5, %x0, 1000000  #0 pc 896
	fsw	%f0, 8(%x2)  #167 pc 900
	sw	%x1, 20(%x2)  #167 pc 904
	addi	%x2, %x2, 24  #167 pc 908
	jal	%x1, float_of_int.178  #167 pc 912
	addi	%x2, %x2, -24  #167 pc 916
	lw	%x1, 20(%x2) #167 pc 920
	flw	%f2, 8(%x2)  #165 pc 924
	fmul	%f0, %f2, %f0  #165 pc 928
	sw	%x1, 20(%x2)  #164 pc 932
	addi	%x2, %x2, 24  #164 pc 936
	jal	%x1, int_of_float.180  #164 pc 940
	addi	%x2, %x2, -24  #164 pc 944
	lw	%x1, 20(%x2) #164 pc 948
	sw	%x1, 20(%x2)  #163 pc 952
	addi	%x2, %x2, 24  #163 pc 956
	jal	%x1, print_int.200  #163 pc 960
	addi	%x2, %x2, -24  #163 pc 964
	lw	%x1, 20(%x2) #163 pc 968
	addi	%x2, %x2, 112
