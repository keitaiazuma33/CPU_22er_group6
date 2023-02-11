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
	fmul	%f1, %f0, %f0  #16 pc 0
	fmul	%f2, %f0, %f1  #17 pc 4
	fmul	%f3, %f2, %f1  #18 pc 8
	fmul	%f1, %f3, %f1  #19 pc 12
	fmv	%f4, l.394  #0 pc 16
	fmul	%f2, %f4, %f2  #20 pc 20
	fsub	%f0, %f0, %f2  #20 pc 24
	fmv	%f2, l.396  #0 pc 28
	fmul	%f2, %f2, %f3  #20 pc 32
	fadd	%f0, %f0, %f2  #20 pc 36
	fmv	%f2, l.398  #0 pc 40
	fmul	%f1, %f2, %f1  #20 pc 44
	fsub	%f0, %f0, %f1  #20 pc 48
	ret #pc 52
	nop #pc 56
cos.170:  #pc 60
	fmul	%f0, %f0, %f0  #24 pc 60
	fmul	%f1, %f0, %f0  #25 pc 64
	fmul	%f2, %f1, %f0  #26 pc 68
	fmv	%f3, l.400  #0 pc 72
	fmv	%f4, l.402  #0 pc 76
	fmul	%f0, %f4, %f0  #27 pc 80
	fsub	%f0, %f3, %f0  #27 pc 84
	fmv	%f3, l.404  #0 pc 88
	fmul	%f1, %f3, %f1  #27 pc 92
	fadd	%f0, %f0, %f1  #27 pc 96
	fmv	%f1, l.406  #0 pc 100
	fmul	%f1, %f1, %f2  #27 pc 104
	fsub	%f0, %f0, %f1  #27 pc 108
	ret #pc 112
	nop #pc 116
abs_float.176:  #pc 120
	fabs	%f0, %f0  #47 pc 120
	ret #pc 124
	nop #pc 128
float_of_int.178:  #pc 132
	itof	%f0, %x5  #50 pc 132
	ret #pc 136
	nop #pc 140
int_of_float.180:  #pc 144
	ftoi	%x5, %f0  #53 pc 144
	ret #pc 148
	nop #pc 152
mul_abs.182:  #pc 156
	addi	%x24, %x0, -1  #pc 156
	beq	%x7, %x24, 12  #57 pc 160
	j	be_else.423 #pc 164
	nop #pc 168
	addi	%x5, %x9, 0  #58 pc 172
	ret #pc 176
	nop #pc 180
be_else.423: #pc 184
	addi	%x10, %x0, 1  #0 pc 184
	sll	%x10, %x10, %x7  #60 pc 188
	and	%x10, %x6, %x10  #60 pc 192
	beq	%x10, %x0, 12  #60 pc 196
	j	be_else.424 #pc 200
	nop #pc 204
	addi	%x7, %x7, -1  #61 pc 208
	j	mul_abs.182  #61 pc 212
	nop #pc 216
be_else.424: #pc 220
	addi	%x10, %x7, -1  #63 pc 220
	sll	%x7, %x5, %x7  #63 pc 224
	add	%x9, %x9, %x7  #63 pc 228
	addi	%x7, %x10, 0  #0 pc 232
	j	mul_abs.182  #63 pc 236
	nop #pc 240
mul.187:  #pc 244
	bge	%x5, %x0, 12  #67 pc 244
	j	bge_else.425 #pc 248
	nop #pc 252
	addi	%x7, %x5, 0  #67 pc 256
	j	bge_cont.426 #pc 260
	nop #pc 264
bge_else.425: #pc 268
	sub	%x7, %x0, %x5  #67 pc 268
bge_cont.426: #pc 272
	bge	%x6, %x0, 12  #68 pc 272
	j	bge_else.427 #pc 276
	nop #pc 280
	addi	%x9, %x6, 0  #68 pc 284
	j	bge_cont.428 #pc 288
	nop #pc 292
bge_else.427: #pc 296
	sub	%x9, %x0, %x6  #68 pc 296
bge_cont.428: #pc 300
	addi	%x10, %x0, 30  #0 pc 300
	addi	%x11, %x0, 0  #0 pc 304
	sw	%x6, 0(%x2)  #69 pc 308
	sw	%x5, 4(%x2)  #69 pc 312
	addi	%x6, %x9, 0  #0 pc 316
	addi	%x5, %x7, 0  #0 pc 320
	addi	%x9, %x11, 0  #0 pc 324
	addi	%x7, %x10, 0  #0 pc 328
	sw	%x1, 12(%x2)  #69 pc 332
	addi	%x2, %x2, 16  #69 pc 336
	jal	%x1, mul_abs.182  #69 pc 340
	addi	%x2, %x2, -16  #69 pc 344
	lw	%x1, 12(%x2) #69 pc 348
	lw	%x6, 4(%x2)  #70 pc 352
	srli	%x6, %x6, 31  #70 pc 356
	lw	%x7, 0(%x2)  #70 pc 360
	srli	%x7, %x7, 31  #70 pc 364
	beq	%x6, %x7, 12  #70 pc 368
	j	be_else.429 #pc 372
	nop #pc 376
	ret #pc 380
	nop #pc 384
be_else.429: #pc 388
	sub	%x5, %x0, %x5  #73 pc 388
	ret #pc 392
	nop #pc 396
div_abs.190:  #pc 400
	addi	%x24, %x0, -1  #pc 400
	beq	%x7, %x24, 12  #77 pc 404
	j	be_else.430 #pc 408
	nop #pc 412
	addi	%x5, %x9, 0  #78 pc 416
	ret #pc 420
	nop #pc 424
be_else.430: #pc 428
	srl	%x10, %x5, %x7  #80 pc 428
	bge	%x10, %x6, 12  #80 pc 432
	j	ble_else.431 #pc 436
	nop #pc 440
	sll	%x10, %x6, %x7  #81 pc 444
	sub	%x5, %x5, %x10  #81 pc 448
	addi	%x10, %x7, -1  #81 pc 452
	addi	%x11, %x0, 1  #0 pc 456
	sll	%x7, %x11, %x7  #81 pc 460
	add	%x9, %x9, %x7  #81 pc 464
	addi	%x7, %x10, 0  #0 pc 468
	j	div_abs.190  #81 pc 472
	nop #pc 476
ble_else.431: #pc 480
	addi	%x7, %x7, -1  #83 pc 480
	j	div_abs.190  #83 pc 484
	nop #pc 488
div.195:  #pc 492
	bge	%x5, %x0, 12  #87 pc 492
	j	bge_else.432 #pc 496
	nop #pc 500
	addi	%x7, %x5, 0  #87 pc 504
	j	bge_cont.433 #pc 508
	nop #pc 512
bge_else.432: #pc 516
	sub	%x7, %x0, %x5  #87 pc 516
bge_cont.433: #pc 520
	bge	%x6, %x0, 12  #88 pc 520
	j	bge_else.434 #pc 524
	nop #pc 528
	addi	%x9, %x6, 0  #88 pc 532
	j	bge_cont.435 #pc 536
	nop #pc 540
bge_else.434: #pc 544
	sub	%x9, %x0, %x6  #88 pc 544
bge_cont.435: #pc 548
	addi	%x10, %x0, 30  #0 pc 548
	addi	%x11, %x0, 0  #0 pc 552
	sw	%x6, 0(%x2)  #89 pc 556
	sw	%x5, 4(%x2)  #89 pc 560
	addi	%x6, %x9, 0  #0 pc 564
	addi	%x5, %x7, 0  #0 pc 568
	addi	%x9, %x11, 0  #0 pc 572
	addi	%x7, %x10, 0  #0 pc 576
	sw	%x1, 12(%x2)  #89 pc 580
	addi	%x2, %x2, 16  #89 pc 584
	jal	%x1, div_abs.190  #89 pc 588
	addi	%x2, %x2, -16  #89 pc 592
	lw	%x1, 12(%x2) #89 pc 596
	lw	%x6, 4(%x2)  #90 pc 600
	srli	%x6, %x6, 31  #90 pc 604
	lw	%x7, 0(%x2)  #90 pc 608
	srli	%x7, %x7, 31  #90 pc 612
	beq	%x6, %x7, 12  #90 pc 616
	j	be_else.436 #pc 620
	nop #pc 624
	ret #pc 628
	nop #pc 632
be_else.436: #pc 636
	sub	%x5, %x0, %x5  #93 pc 636
	ret #pc 640
	nop #pc 644
print_int.200:  #pc 648
	bge	%x5, %x0, 12  #100 pc 648
	j	bge_else.437 #pc 652
	nop #pc 656
	addi	%x24, %x0, 10  #pc 660
	bge	%x5, %x24, 12  #104 pc 664
	j	bge_else.438 #pc 668
	nop #pc 672
	addi	%x6, %x0, 10  #0 pc 676
	sw	%x5, 0(%x2)  #107 pc 680
	sw	%x1, 4(%x2)  #107 pc 684
	addi	%x2, %x2, 8  #107 pc 688
	jal	%x1, div.195  #107 pc 692
	addi	%x2, %x2, -8  #107 pc 696
	lw	%x1, 4(%x2) #107 pc 700
	sw	%x5, 4(%x2)  #108 pc 704
	sw	%x1, 12(%x2)  #108 pc 708
	addi	%x2, %x2, 16  #108 pc 712
	jal	%x1, print_int.200  #108 pc 716
	addi	%x2, %x2, -16  #108 pc 720
	lw	%x1, 12(%x2) #108 pc 724
	addi	%x6, %x0, 10  #0 pc 728
	lw	%x5, 4(%x2)  #109 pc 732
	sw	%x1, 12(%x2)  #109 pc 736
	addi	%x2, %x2, 16  #109 pc 740
	jal	%x1, mul.187  #109 pc 744
	addi	%x2, %x2, -16  #109 pc 748
	lw	%x1, 12(%x2) #109 pc 752
	lw	%x6, 0(%x2)  #109 pc 756
	sub	%x5, %x6, %x5  #109 pc 760
	addi	%x5, %x5, 48  #109 pc 764
	out	%x5  #109 pc 768
	ret #pc 772
	nop #pc 776
bge_else.438: #pc 780
	addi	%x5, %x5, 48  #105 pc 780
	out	%x5  #105 pc 784
	ret #pc 788
	nop #pc 792
bge_else.437: #pc 796
	sub	%x5, %x0, %x5  #102 pc 796
	j	print_int.200  #102 pc 800
	nop #pc 804
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	fmv	%f0, l.408  #0 pc 808
	sw	%x1, 12(%x2)  #165 pc 812
	addi	%x2, %x2, 16  #165 pc 816
	jal	%x1, abs_float.176  #165 pc 820
	addi	%x2, %x2, -16  #165 pc 824
	lw	%x1, 12(%x2) #165 pc 828
	fsqrt	%f0, %f0  #165 pc 832
	sw	%x1, 12(%x2)  #165 pc 836
	addi	%x2, %x2, 16  #165 pc 840
	jal	%x1, cos.170  #165 pc 844
	addi	%x2, %x2, -16  #165 pc 848
	lw	%x1, 12(%x2) #165 pc 852
	sw	%x1, 12(%x2)  #165 pc 856
	addi	%x2, %x2, 16  #165 pc 860
	jal	%x1, sin.168  #165 pc 864
	addi	%x2, %x2, -16  #165 pc 868
	lw	%x1, 12(%x2) #165 pc 872
	fmv	%f1, l.410  #0 pc 876
	fadd	%f0, %f0, %f1  #165 pc 880
	fmv	%f1, l.412  #0 pc 884
	fsub	%f0, %f0, %f1  #165 pc 888
	addi	%x5, %x0, 1000000  #0 pc 892
	fsw	%f0, 8(%x2)  #167 pc 896
	sw	%x1, 20(%x2)  #167 pc 900
	addi	%x2, %x2, 24  #167 pc 904
	jal	%x1, float_of_int.178  #167 pc 908
	addi	%x2, %x2, -24  #167 pc 912
	lw	%x1, 20(%x2) #167 pc 916
	flw	%f1, 8(%x2)  #165 pc 920
	fmul	%f0, %f1, %f0  #165 pc 924
	sw	%x1, 20(%x2)  #164 pc 928
	addi	%x2, %x2, 24  #164 pc 932
	jal	%x1, int_of_float.180  #164 pc 936
	addi	%x2, %x2, -24  #164 pc 940
	lw	%x1, 20(%x2) #164 pc 944
	sw	%x1, 20(%x2)  #163 pc 948
	addi	%x2, %x2, 24  #163 pc 952
	jal	%x1, print_int.200  #163 pc 956
	addi	%x2, %x2, -24  #163 pc 960
	lw	%x1, 20(%x2) #163 pc 964
	addi	%x2, %x2, 112
