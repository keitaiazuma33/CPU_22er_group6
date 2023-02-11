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
	fmul	%f1, %f0, %f0  #16 pc 4
	fmul	%f2, %f0, %f1  #17 pc 8
	fmul	%f3, %f2, %f1  #18 pc 12
	fmul	%f1, %f3, %f1  #19 pc 16
	fmv	%f4, l.394  #0 pc 20
	fmul	%f2, %f4, %f2  #20 pc 24
	fsub	%f0, %f0, %f2  #20 pc 28
	fmv	%f2, l.396  #0 pc 32
	fmul	%f2, %f2, %f3  #20 pc 36
	fadd	%f0, %f0, %f2  #20 pc 40
	fmv	%f2, l.398  #0 pc 44
	fmul	%f1, %f2, %f1  #20 pc 48
	fsub	%f0, %f0, %f1  #20 pc 52
	ret #pc 56
	nop #pc 60
cos.170:  #pc 60
	fmul	%f0, %f0, %f0  #24 pc 64
	fmul	%f1, %f0, %f0  #25 pc 68
	fmul	%f2, %f1, %f0  #26 pc 72
	fmv	%f3, l.400  #0 pc 76
	fmv	%f4, l.402  #0 pc 80
	fmul	%f0, %f4, %f0  #27 pc 84
	fsub	%f0, %f3, %f0  #27 pc 88
	fmv	%f3, l.404  #0 pc 92
	fmul	%f1, %f3, %f1  #27 pc 96
	fadd	%f0, %f0, %f1  #27 pc 100
	fmv	%f1, l.406  #0 pc 104
	fmul	%f1, %f1, %f2  #27 pc 108
	fsub	%f0, %f0, %f1  #27 pc 112
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
	addi	%x5, %x9, 0  #58 pc 176
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
	addi	%x7, %x10, 0  #0 pc 240
	j	mul_abs.182  #63 pc 244
	nop #pc 248
mul.187:  #pc 248
	bge	%x5, %x0, 12  #67 pc 252
	j	bge_else.425 #pc 256
	nop #pc 260
	addi	%x7, %x5, 0  #67 pc 264
	j	bge_cont.426 #pc 268
	nop #pc 272
bge_else.425: #pc 272
	sub	%x7, %x0, %x5  #67 pc 276
bge_cont.426: #pc 276
	bge	%x6, %x0, 12  #68 pc 280
	j	bge_else.427 #pc 284
	nop #pc 288
	addi	%x9, %x6, 0  #68 pc 292
	j	bge_cont.428 #pc 296
	nop #pc 300
bge_else.427: #pc 300
	sub	%x9, %x0, %x6  #68 pc 304
bge_cont.428: #pc 304
	addi	%x10, %x0, 30  #0 pc 308
	addi	%x11, %x0, 0  #0 pc 312
	sw	%x6, 0(%x2)  #69 pc 316
	sw	%x5, 4(%x2)  #69 pc 320
	addi	%x6, %x9, 0  #0 pc 328
	addi	%x5, %x7, 0  #0 pc 336
	addi	%x9, %x11, 0  #0 pc 344
	addi	%x7, %x10, 0  #0 pc 352
	sw	%x1, 12(%x2)  #69 pc 356
	addi	%x2, %x2, 16  #69 pc 360
	jal	%x1, mul_abs.182  #69 pc 364
	addi	%x2, %x2, -16  #69 pc 368
	lw	%x1, 12(%x2) #69 pc 372
	lw	%x6, 4(%x2)  #70 pc 376
	srli	%x6, %x6, 31  #70 pc 380
	lw	%x7, 0(%x2)  #70 pc 384
	srli	%x7, %x7, 31  #70 pc 388
	beq	%x6, %x7, 12  #70 pc 392
	j	be_else.429 #pc 396
	nop #pc 400
	ret #pc 404
	nop #pc 408
be_else.429: #pc 408
	sub	%x5, %x0, %x5  #73 pc 412
	ret #pc 416
	nop #pc 420
div_abs.190:  #pc 420
	addi	%x24, %x0, -1  #pc 424
	beq	%x7, %x24, 12  #77 pc 428
	j	be_else.430 #pc 432
	nop #pc 436
	addi	%x5, %x9, 0  #78 pc 440
	ret #pc 444
	nop #pc 448
be_else.430: #pc 448
	srl	%x10, %x5, %x7  #80 pc 452
	bge	%x10, %x6, 12  #80 pc 456
	j	ble_else.431 #pc 460
	nop #pc 464
	sll	%x10, %x6, %x7  #81 pc 468
	sub	%x5, %x5, %x10  #81 pc 472
	addi	%x10, %x7, -1  #81 pc 476
	addi	%x11, %x0, 1  #0 pc 480
	sll	%x7, %x11, %x7  #81 pc 484
	add	%x9, %x9, %x7  #81 pc 488
	addi	%x7, %x10, 0  #0 pc 496
	j	div_abs.190  #81 pc 500
	nop #pc 504
ble_else.431: #pc 504
	addi	%x7, %x7, -1  #83 pc 508
	j	div_abs.190  #83 pc 512
	nop #pc 516
div.195:  #pc 516
	bge	%x5, %x0, 12  #87 pc 520
	j	bge_else.432 #pc 524
	nop #pc 528
	addi	%x7, %x5, 0  #87 pc 532
	j	bge_cont.433 #pc 536
	nop #pc 540
bge_else.432: #pc 540
	sub	%x7, %x0, %x5  #87 pc 544
bge_cont.433: #pc 544
	bge	%x6, %x0, 12  #88 pc 548
	j	bge_else.434 #pc 552
	nop #pc 556
	addi	%x9, %x6, 0  #88 pc 560
	j	bge_cont.435 #pc 564
	nop #pc 568
bge_else.434: #pc 568
	sub	%x9, %x0, %x6  #88 pc 572
bge_cont.435: #pc 572
	addi	%x10, %x0, 30  #0 pc 576
	addi	%x11, %x0, 0  #0 pc 580
	sw	%x6, 0(%x2)  #89 pc 584
	sw	%x5, 4(%x2)  #89 pc 588
	addi	%x6, %x9, 0  #0 pc 596
	addi	%x5, %x7, 0  #0 pc 604
	addi	%x9, %x11, 0  #0 pc 612
	addi	%x7, %x10, 0  #0 pc 620
	sw	%x1, 12(%x2)  #89 pc 624
	addi	%x2, %x2, 16  #89 pc 628
	jal	%x1, div_abs.190  #89 pc 632
	addi	%x2, %x2, -16  #89 pc 636
	lw	%x1, 12(%x2) #89 pc 640
	lw	%x6, 4(%x2)  #90 pc 644
	srli	%x6, %x6, 31  #90 pc 648
	lw	%x7, 0(%x2)  #90 pc 652
	srli	%x7, %x7, 31  #90 pc 656
	beq	%x6, %x7, 12  #90 pc 660
	j	be_else.436 #pc 664
	nop #pc 668
	ret #pc 672
	nop #pc 676
be_else.436: #pc 676
	sub	%x5, %x0, %x5  #93 pc 680
	ret #pc 684
	nop #pc 688
print_int.200:  #pc 688
	bge	%x5, %x0, 12  #100 pc 692
	j	bge_else.437 #pc 696
	nop #pc 700
	addi	%x24, %x0, 10  #pc 704
	bge	%x5, %x24, 12  #104 pc 708
	j	bge_else.438 #pc 712
	nop #pc 716
	addi	%x6, %x0, 10  #0 pc 720
	sw	%x5, 0(%x2)  #107 pc 724
	sw	%x1, 4(%x2)  #107 pc 728
	addi	%x2, %x2, 8  #107 pc 732
	jal	%x1, div.195  #107 pc 736
	addi	%x2, %x2, -8  #107 pc 740
	lw	%x1, 4(%x2) #107 pc 744
	sw	%x5, 4(%x2)  #108 pc 748
	sw	%x1, 12(%x2)  #108 pc 752
	addi	%x2, %x2, 16  #108 pc 756
	jal	%x1, print_int.200  #108 pc 760
	addi	%x2, %x2, -16  #108 pc 764
	lw	%x1, 12(%x2) #108 pc 768
	addi	%x6, %x0, 10  #0 pc 772
	lw	%x5, 4(%x2)  #109 pc 776
	sw	%x1, 12(%x2)  #109 pc 780
	addi	%x2, %x2, 16  #109 pc 784
	jal	%x1, mul.187  #109 pc 788
	addi	%x2, %x2, -16  #109 pc 792
	lw	%x1, 12(%x2) #109 pc 796
	lw	%x6, 0(%x2)  #109 pc 800
	sub	%x5, %x6, %x5  #109 pc 804
	addi	%x5, %x5, 48  #109 pc 808
	out	%x5  #109 pc 812
	ret #pc 816
	nop #pc 820
bge_else.438: #pc 820
	addi	%x5, %x5, 48  #105 pc 824
	out	%x5  #105 pc 828
	ret #pc 832
	nop #pc 836
bge_else.437: #pc 836
	sub	%x5, %x0, %x5  #102 pc 840
	j	print_int.200  #102 pc 844
	nop #pc 848
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	fmv	%f0, l.408  #0 pc 852
	sw	%x1, 12(%x2)  #165 pc 856
	addi	%x2, %x2, 16  #165 pc 860
	jal	%x1, abs_float.176  #165 pc 864
	addi	%x2, %x2, -16  #165 pc 868
	lw	%x1, 12(%x2) #165 pc 872
	fsqrt	%f0, %f0  #165 pc 876
	sw	%x1, 12(%x2)  #165 pc 880
	addi	%x2, %x2, 16  #165 pc 884
	jal	%x1, cos.170  #165 pc 888
	addi	%x2, %x2, -16  #165 pc 892
	lw	%x1, 12(%x2) #165 pc 896
	sw	%x1, 12(%x2)  #165 pc 900
	addi	%x2, %x2, 16  #165 pc 904
	jal	%x1, sin.168  #165 pc 908
	addi	%x2, %x2, -16  #165 pc 912
	lw	%x1, 12(%x2) #165 pc 916
	fmv	%f1, l.410  #0 pc 920
	fadd	%f0, %f0, %f1  #165 pc 924
	fmv	%f1, l.412  #0 pc 928
	fsub	%f0, %f0, %f1  #165 pc 932
	addi	%x5, %x0, 1000000  #0 pc 936
	fsw	%f0, 8(%x2)  #167 pc 940
	sw	%x1, 20(%x2)  #167 pc 944
	addi	%x2, %x2, 24  #167 pc 948
	jal	%x1, float_of_int.178  #167 pc 952
	addi	%x2, %x2, -24  #167 pc 956
	lw	%x1, 20(%x2) #167 pc 960
	flw	%f1, 8(%x2)  #165 pc 964
	fmul	%f0, %f1, %f0  #165 pc 968
	sw	%x1, 20(%x2)  #164 pc 972
	addi	%x2, %x2, 24  #164 pc 976
	jal	%x1, int_of_float.180  #164 pc 980
	addi	%x2, %x2, -24  #164 pc 984
	lw	%x1, 20(%x2) #164 pc 988
	sw	%x1, 20(%x2)  #163 pc 992
	addi	%x2, %x2, 24  #163 pc 996
	jal	%x1, print_int.200  #163 pc 1000
	addi	%x2, %x2, -24  #163 pc 1004
	lw	%x1, 20(%x2) #163 pc 1008
	addi	%x2, %x2, 112
