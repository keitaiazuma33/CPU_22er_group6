.section	".rodata"
.align	8
l.384:	! 48.300300
l.382:	! 4.500000
l.380:	! -12.300000
l.378:	! 0.001389
l.376:	! 0.041667
l.374:	! 0.500000
l.372:	! 1.000000
l.370:	! 0.000198
l.368:	! 0.008333
l.366:	! 0.166667
.section	".text"
sin.153:  #pc 0
	fmul	%f1, %f0, %f0  #16 pc 0
	fmul	%f2, %f0, %f1  #17 pc 4
	fmul	%f3, %f2, %f1  #18 pc 8
	fmul	%f1, %f3, %f1  #19 pc 12
	fmv	%f4, l.366  #0 pc 16
	fmul	%f2, %f4, %f2  #20 pc 20
	fsub	%f0, %f0, %f2  #20 pc 24
	fmv	%f2, l.368  #0 pc 28
	fmul	%f2, %f2, %f3  #20 pc 32
	fadd	%f0, %f0, %f2  #20 pc 36
	fmv	%f2, l.370  #0 pc 40
	fmul	%f1, %f2, %f1  #20 pc 44
	fsub	%f0, %f0, %f1  #20 pc 48
	ret #pc 52
	nop #pc 56
cos.155:  #pc 60
	fmul	%f0, %f0, %f0  #24 pc 60
	fmul	%f1, %f0, %f0  #25 pc 64
	fmul	%f2, %f1, %f0  #26 pc 68
	fmv	%f3, l.372  #0 pc 72
	fmv	%f4, l.374  #0 pc 76
	fmul	%f0, %f4, %f0  #27 pc 80
	fsub	%f0, %f3, %f0  #27 pc 84
	fmv	%f3, l.376  #0 pc 88
	fmul	%f1, %f3, %f1  #27 pc 92
	fadd	%f0, %f0, %f1  #27 pc 96
	fmv	%f1, l.378  #0 pc 100
	fmul	%f1, %f1, %f2  #27 pc 104
	fsub	%f0, %f0, %f1  #27 pc 108
	ret #pc 112
	nop #pc 116
abs_float.161:  #pc 120
	fabs	%f0, %f0  #47 pc 120
	ret #pc 124
	nop #pc 128
float_of_int.163:  #pc 132
	itof	%f0, %x6  #50 pc 132
	ret #pc 136
	nop #pc 140
int_of_float.165:  #pc 144
	ftoi	%x6, %f0  #53 pc 144
	ret #pc 148
	nop #pc 152
mul_abs.167:  #pc 156
	addi	%x31, %x0, -1  #pc 156
	beq	%x8, %x31, 12  #57 pc 160
	j	be_else.395 #pc 164
	nop #pc 168
	addi	%x6, %x9, 0  #58 pc 172
	ret #pc 176
	nop #pc 180
be_else.395: #pc 184
	addi	%x10, %x0, 1  #0 pc 184
	sll	%x10, %x10, %x8  #60 pc 188
	and	%x10, %x7, %x10  #60 pc 192
	beq	%x10, %x0, 12  #60 pc 196
	j	be_else.396 #pc 200
	nop #pc 204
	addi	%x8, %x8, -1  #61 pc 208
	j	mul_abs.167  #61 pc 212
	nop #pc 216
be_else.396: #pc 220
	addi	%x10, %x8, -1  #63 pc 220
	sll	%x8, %x6, %x8  #63 pc 224
	add	%x9, %x9, %x8  #63 pc 228
	addi	%x8, %x10, 0  #0 pc 232
	j	mul_abs.167  #63 pc 236
	nop #pc 240
mul.172:  #pc 244
	bge	%x6, %x0, 12  #67 pc 244
	j	bge_else.397 #pc 248
	nop #pc 252
	addi	%x8, %x6, 0  #67 pc 256
	j	bge_cont.398 #pc 260
	nop #pc 264
bge_else.397: #pc 268
	sub	%x8, %x0, %x6  #67 pc 268
bge_cont.398: #pc 272
	bge	%x7, %x0, 12  #68 pc 272
	j	bge_else.399 #pc 276
	nop #pc 280
	addi	%x9, %x7, 0  #68 pc 284
	j	bge_cont.400 #pc 288
	nop #pc 292
bge_else.399: #pc 296
	sub	%x9, %x0, %x7  #68 pc 296
bge_cont.400: #pc 300
	addi	%x10, %x0, 30  #0 pc 300
	addi	%x11, %x0, 0  #0 pc 304
	sw	%x7, 0(%x2)  #69 pc 308
	sw	%x6, 4(%x2)  #69 pc 312
	addi	%x7, %x9, 0  #0 pc 316
	addi	%x6, %x8, 0  #0 pc 320
	addi	%x9, %x11, 0  #0 pc 324
	addi	%x8, %x10, 0  #0 pc 328
	sw	%x1, 8(%x2)  #69 pc 332
	addi	%x2, %x2, 12  #69 pc 336
	jal	%x1, mul_abs.167  #69 pc 340
	addi	%x2, %x2, -12  #69 pc 344
	lw	%x1, 8(%x2) #69 pc 348
	lw	%x7, 4(%x2)  #70 pc 352
	srli	%x7, %x7, 31  #70 pc 356
	lw	%x8, 0(%x2)  #70 pc 360
	srli	%x8, %x8, 31  #70 pc 364
	beq	%x7, %x8, 12  #70 pc 368
	j	be_else.401 #pc 372
	nop #pc 376
	ret #pc 380
	nop #pc 384
be_else.401: #pc 388
	sub	%x6, %x0, %x6  #73 pc 388
	ret #pc 392
	nop #pc 396
div_abs.175:  #pc 400
	addi	%x31, %x0, -1  #pc 400
	beq	%x8, %x31, 12  #77 pc 404
	j	be_else.402 #pc 408
	nop #pc 412
	addi	%x6, %x9, 0  #78 pc 416
	ret #pc 420
	nop #pc 424
be_else.402: #pc 428
	srl	%x10, %x6, %x8  #80 pc 428
	bge	%x10, %x7, 12  #80 pc 432
	j	ble_else.403 #pc 436
	nop #pc 440
	sll	%x10, %x7, %x8  #81 pc 444
	sub	%x6, %x6, %x10  #81 pc 448
	addi	%x10, %x8, -1  #81 pc 452
	addi	%x11, %x0, 1  #0 pc 456
	sll	%x8, %x11, %x8  #81 pc 460
	add	%x9, %x9, %x8  #81 pc 464
	addi	%x8, %x10, 0  #0 pc 468
	j	div_abs.175  #81 pc 472
	nop #pc 476
ble_else.403: #pc 480
	addi	%x8, %x8, -1  #83 pc 480
	j	div_abs.175  #83 pc 484
	nop #pc 488
div.180:  #pc 492
	bge	%x6, %x0, 12  #87 pc 492
	j	bge_else.404 #pc 496
	nop #pc 500
	addi	%x8, %x6, 0  #87 pc 504
	j	bge_cont.405 #pc 508
	nop #pc 512
bge_else.404: #pc 516
	sub	%x8, %x0, %x6  #87 pc 516
bge_cont.405: #pc 520
	bge	%x7, %x0, 12  #88 pc 520
	j	bge_else.406 #pc 524
	nop #pc 528
	addi	%x9, %x7, 0  #88 pc 532
	j	bge_cont.407 #pc 536
	nop #pc 540
bge_else.406: #pc 544
	sub	%x9, %x0, %x7  #88 pc 544
bge_cont.407: #pc 548
	addi	%x10, %x0, 30  #0 pc 548
	addi	%x11, %x0, 0  #0 pc 552
	sw	%x7, 0(%x2)  #89 pc 556
	sw	%x6, 4(%x2)  #89 pc 560
	addi	%x7, %x9, 0  #0 pc 564
	addi	%x6, %x8, 0  #0 pc 568
	addi	%x9, %x11, 0  #0 pc 572
	addi	%x8, %x10, 0  #0 pc 576
	sw	%x1, 8(%x2)  #89 pc 580
	addi	%x2, %x2, 12  #89 pc 584
	jal	%x1, div_abs.175  #89 pc 588
	addi	%x2, %x2, -12  #89 pc 592
	lw	%x1, 8(%x2) #89 pc 596
	lw	%x7, 4(%x2)  #90 pc 600
	srli	%x7, %x7, 31  #90 pc 604
	lw	%x8, 0(%x2)  #90 pc 608
	srli	%x8, %x8, 31  #90 pc 612
	beq	%x7, %x8, 12  #90 pc 616
	j	be_else.408 #pc 620
	nop #pc 624
	ret #pc 628
	nop #pc 632
be_else.408: #pc 636
	sub	%x6, %x0, %x6  #93 pc 636
	ret #pc 640
	nop #pc 644
print_int.185:  #pc 648
	bge	%x6, %x0, 12  #100 pc 648
	j	bge_else.409 #pc 652
	nop #pc 656
	addi	%x31, %x0, 10  #pc 660
	bge	%x6, %x31, 12  #104 pc 664
	j	bge_else.410 #pc 668
	nop #pc 672
	addi	%x7, %x0, 10  #0 pc 676
	sw	%x6, 0(%x2)  #107 pc 680
	sw	%x1, 4(%x2)  #107 pc 684
	addi	%x2, %x2, 8  #107 pc 688
	jal	%x1, div.180  #107 pc 692
	addi	%x2, %x2, -8  #107 pc 696
	lw	%x1, 4(%x2) #107 pc 700
	sw	%x6, 4(%x2)  #108 pc 704
	sw	%x1, 8(%x2)  #108 pc 708
	addi	%x2, %x2, 12  #108 pc 712
	jal	%x1, print_int.185  #108 pc 716
	addi	%x2, %x2, -12  #108 pc 720
	lw	%x1, 8(%x2) #108 pc 724
	addi	%x7, %x0, 10  #0 pc 728
	lw	%x6, 4(%x2)  #109 pc 732
	sw	%x1, 8(%x2)  #109 pc 736
	addi	%x2, %x2, 12  #109 pc 740
	jal	%x1, mul.172  #109 pc 744
	addi	%x2, %x2, -12  #109 pc 748
	lw	%x1, 8(%x2) #109 pc 752
	lw	%x7, 0(%x2)  #109 pc 756
	sub	%x6, %x7, %x6  #109 pc 760
	addi	%x6, %x6, 48  #109 pc 764
	sw	%x6, 0(%x5)  #109 pc 768
	addi	%x5, %x5, 4  #109 pc 772
	ret #pc 776
	nop #pc 780
bge_else.410: #pc 784
	addi	%x6, %x6, 48  #105 pc 784
	sw	%x6, 0(%x5)  #105 pc 788
	addi	%x5, %x5, 4  #105 pc 792
	ret #pc 796
	nop #pc 800
bge_else.409: #pc 804
	addi	%x7, %x0, 45  #0 pc 804
	sw	%x7, 0(%x5)  #101 pc 808
	addi	%x5, %x5, 4  #101 pc 812
	sub	%x6, %x0, %x6  #102 pc 816
	j	print_int.185  #102 pc 820
	nop #pc 824
.global	min_caml_start
min_caml_start:
	addi	%x2, %x0, 10000000
	addi	%x3, %x0, 10002000
	addi	%x4, %x0, 8192
	addi	%x5, %x0, 65536
	fmv	%f0, l.380  #0 pc 844
	sw	%x1, 0(%x2)  #213 pc 848
	addi	%x2, %x2, 4  #213 pc 852
	jal	%x1, abs_float.161  #213 pc 856
	addi	%x2, %x2, -4  #213 pc 860
	lw	%x1, 0(%x2) #213 pc 864
	fsqrt	%f0, %f0  #213 pc 868
	sw	%x1, 0(%x2)  #213 pc 872
	addi	%x2, %x2, 4  #213 pc 876
	jal	%x1, cos.155  #213 pc 880
	addi	%x2, %x2, -4  #213 pc 884
	lw	%x1, 0(%x2) #213 pc 888
	sw	%x1, 0(%x2)  #213 pc 892
	addi	%x2, %x2, 4  #213 pc 896
	jal	%x1, sin.153  #213 pc 900
	addi	%x2, %x2, -4  #213 pc 904
	lw	%x1, 0(%x2) #213 pc 908
	fmv	%f1, l.382  #0 pc 912
	fadd	%f0, %f0, %f1  #213 pc 916
	fmv	%f1, l.384  #0 pc 920
	fsub	%f0, %f0, %f1  #213 pc 924
	addi	%x6, %x0, 1000000  #0 pc 928
	fsw	%f0, 0(%x2)  #215 pc 932
	sw	%x1, 8(%x2)  #215 pc 936
	addi	%x2, %x2, 12  #215 pc 940
	jal	%x1, float_of_int.163  #215 pc 944
	addi	%x2, %x2, -12  #215 pc 948
	lw	%x1, 8(%x2) #215 pc 952
	flw	%f1, 0(%x2)  #213 pc 956
	fmul	%f0, %f1, %f0  #213 pc 960
	sw	%x1, 8(%x2)  #212 pc 964
	addi	%x2, %x2, 12  #212 pc 968
	jal	%x1, int_of_float.165  #212 pc 972
	addi	%x2, %x2, -12  #212 pc 976
	lw	%x1, 8(%x2) #212 pc 980
	sw	%x1, 8(%x2)  #211 pc 984
	addi	%x2, %x2, 12  #211 pc 988
	jal	%x1, print_int.185  #211 pc 992
	addi	%x2, %x2, -12  #211 pc 996
	lw	%x1, 8(%x2) #211 pc 1000
