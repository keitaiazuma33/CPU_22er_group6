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
	nop
	j min_caml_start
sin.153:  #pc 8
	fmul	%f1, %f0, %f0  #16 pc 8
	fmul	%f2, %f0, %f1  #17 pc 12
	fmul	%f3, %f2, %f1  #18 pc 16
	fmul	%f1, %f3, %f1  #19 pc 20
	fmv	%f4, l.366  #0 pc 24
	fmul	%f2, %f4, %f2  #20 pc 28
	fsub	%f0, %f0, %f2  #20 pc 32
	fmv	%f2, l.368  #0 pc 36
	fmul	%f2, %f2, %f3  #20 pc 40
	fadd	%f0, %f0, %f2  #20 pc 44
	fmv	%f2, l.370  #0 pc 48
	fmul	%f1, %f2, %f1  #20 pc 52
	fsub	%f0, %f0, %f1  #20 pc 56
	ret #pc 60
	nop #pc 64
cos.155:  #pc 68
	fmul	%f0, %f0, %f0  #24 pc 68
	fmul	%f1, %f0, %f0  #25 pc 72
	fmul	%f2, %f1, %f0  #26 pc 76
	fmv	%f3, l.372  #0 pc 80
	fmv	%f4, l.374  #0 pc 84
	fmul	%f0, %f4, %f0  #27 pc 88
	fsub	%f0, %f3, %f0  #27 pc 92
	fmv	%f3, l.376  #0 pc 96
	fmul	%f1, %f3, %f1  #27 pc 100
	fadd	%f0, %f0, %f1  #27 pc 104
	fmv	%f1, l.378  #0 pc 108
	fmul	%f1, %f1, %f2  #27 pc 112
	fsub	%f0, %f0, %f1  #27 pc 116
	ret #pc 120
	nop #pc 124
abs_float.161:  #pc 128
	fabs	%f0, %f0  #47 pc 128
	ret #pc 132
	nop #pc 136
float_of_int.163:  #pc 140
	itof	%f0, %x6  #50 pc 140
	ret #pc 144
	nop #pc 148
int_of_float.165:  #pc 152
	ftoi	%x6, %f0  #53 pc 152
	ret #pc 156
	nop #pc 160
mul_abs.167:  #pc 164
	addi	%x31, %x0, -1  #pc 164
	beq	%x8, %x31, 12  #57 pc 168
	j	be_else.395 #pc 172
	nop #pc 176
	addi	%x6, %x9, 0  #58 pc 180
	ret #pc 184
	nop #pc 188
be_else.395: #pc 192
	addi	%x10, %x0, 1  #0 pc 192
	sll	%x10, %x10, %x8  #60 pc 196
	and	%x10, %x7, %x10  #60 pc 200
	beq	%x10, %x0, 12  #60 pc 204
	j	be_else.396 #pc 208
	nop #pc 212
	addi	%x8, %x8, -1  #61 pc 216
	j	mul_abs.167  #61 pc 220
	nop #pc 224
be_else.396: #pc 228
	addi	%x10, %x8, -1  #63 pc 228
	sll	%x8, %x6, %x8  #63 pc 232
	add	%x9, %x9, %x8  #63 pc 236
	addi	%x8, %x10, 0  #0 pc 240
	j	mul_abs.167  #63 pc 244
	nop #pc 248
mul.172:  #pc 252
	bge	%x6, %x0, 12  #67 pc 252
	j	bge_else.397 #pc 256
	nop #pc 260
	addi	%x8, %x6, 0  #67 pc 264
	j	bge_cont.398 #pc 268
	nop #pc 272
bge_else.397: #pc 276
	sub	%x8, %x0, %x6  #67 pc 276
bge_cont.398: #pc 280
	bge	%x7, %x0, 12  #68 pc 280
	j	bge_else.399 #pc 284
	nop #pc 288
	addi	%x9, %x7, 0  #68 pc 292
	j	bge_cont.400 #pc 296
	nop #pc 300
bge_else.399: #pc 304
	sub	%x9, %x0, %x7  #68 pc 304
bge_cont.400: #pc 308
	addi	%x10, %x0, 30  #0 pc 308
	addi	%x11, %x0, 0  #0 pc 312
	sw	%x7, 0(%x2)  #69 pc 316
	sw	%x6, 4(%x2)  #69 pc 320
	addi	%x7, %x9, 0  #0 pc 324
	addi	%x6, %x8, 0  #0 pc 328
	addi	%x9, %x11, 0  #0 pc 332
	addi	%x8, %x10, 0  #0 pc 336
	sw	%x1, 8(%x2)  #69 pc 340
	addi	%x2, %x2, 12  #69 pc 344
	jal	%x1, mul_abs.167  #69 pc 348
	addi	%x2, %x2, -12  #69 pc 352
	lw	%x1, 8(%x2) #69 pc 356
	lw	%x7, 4(%x2)  #70 pc 360
	srli	%x7, %x7, 31  #70 pc 364
	lw	%x8, 0(%x2)  #70 pc 368
	srli	%x8, %x8, 31  #70 pc 372
	beq	%x7, %x8, 12  #70 pc 376
	j	be_else.401 #pc 380
	nop #pc 384
	ret #pc 388
	nop #pc 392
be_else.401: #pc 396
	sub	%x6, %x0, %x6  #73 pc 396
	ret #pc 400
	nop #pc 404
div_abs.175:  #pc 408
	addi	%x31, %x0, -1  #pc 408
	beq	%x8, %x31, 12  #77 pc 412
	j	be_else.402 #pc 416
	nop #pc 420
	addi	%x6, %x9, 0  #78 pc 424
	ret #pc 428
	nop #pc 432
be_else.402: #pc 436
	srl	%x10, %x6, %x8  #80 pc 436
	bge	%x10, %x7, 12  #80 pc 440
	j	ble_else.403 #pc 444
	nop #pc 448
	sll	%x10, %x7, %x8  #81 pc 452
	sub	%x6, %x6, %x10  #81 pc 456
	addi	%x10, %x8, -1  #81 pc 460
	addi	%x11, %x0, 1  #0 pc 464
	sll	%x8, %x11, %x8  #81 pc 468
	add	%x9, %x9, %x8  #81 pc 472
	addi	%x8, %x10, 0  #0 pc 476
	j	div_abs.175  #81 pc 480
	nop #pc 484
ble_else.403: #pc 488
	addi	%x8, %x8, -1  #83 pc 488
	j	div_abs.175  #83 pc 492
	nop #pc 496
div.180:  #pc 500
	bge	%x6, %x0, 12  #87 pc 500
	j	bge_else.404 #pc 504
	nop #pc 508
	addi	%x8, %x6, 0  #87 pc 512
	j	bge_cont.405 #pc 516
	nop #pc 520
bge_else.404: #pc 524
	sub	%x8, %x0, %x6  #87 pc 524
bge_cont.405: #pc 528
	bge	%x7, %x0, 12  #88 pc 528
	j	bge_else.406 #pc 532
	nop #pc 536
	addi	%x9, %x7, 0  #88 pc 540
	j	bge_cont.407 #pc 544
	nop #pc 548
bge_else.406: #pc 552
	sub	%x9, %x0, %x7  #88 pc 552
bge_cont.407: #pc 556
	addi	%x10, %x0, 30  #0 pc 556
	addi	%x11, %x0, 0  #0 pc 560
	sw	%x7, 0(%x2)  #89 pc 564
	sw	%x6, 4(%x2)  #89 pc 568
	addi	%x7, %x9, 0  #0 pc 572
	addi	%x6, %x8, 0  #0 pc 576
	addi	%x9, %x11, 0  #0 pc 580
	addi	%x8, %x10, 0  #0 pc 584
	sw	%x1, 8(%x2)  #89 pc 588
	addi	%x2, %x2, 12  #89 pc 592
	jal	%x1, div_abs.175  #89 pc 596
	addi	%x2, %x2, -12  #89 pc 600
	lw	%x1, 8(%x2) #89 pc 604
	lw	%x7, 4(%x2)  #90 pc 608
	srli	%x7, %x7, 31  #90 pc 612
	lw	%x8, 0(%x2)  #90 pc 616
	srli	%x8, %x8, 31  #90 pc 620
	beq	%x7, %x8, 12  #90 pc 624
	j	be_else.408 #pc 628
	nop #pc 632
	ret #pc 636
	nop #pc 640
be_else.408: #pc 644
	sub	%x6, %x0, %x6  #93 pc 644
	ret #pc 648
	nop #pc 652
print_int.185:  #pc 656
	bge	%x6, %x0, 12  #100 pc 656
	j	bge_else.409 #pc 660
	nop #pc 664
	addi	%x31, %x0, 10  #pc 668
	bge	%x6, %x31, 12  #104 pc 672
	j	bge_else.410 #pc 676
	nop #pc 680
	addi	%x7, %x0, 10  #0 pc 684
	sw	%x6, 0(%x2)  #107 pc 688
	sw	%x1, 4(%x2)  #107 pc 692
	addi	%x2, %x2, 8  #107 pc 696
	jal	%x1, div.180  #107 pc 700
	addi	%x2, %x2, -8  #107 pc 704
	lw	%x1, 4(%x2) #107 pc 708
	sw	%x6, 4(%x2)  #108 pc 712
	sw	%x1, 8(%x2)  #108 pc 716
	addi	%x2, %x2, 12  #108 pc 720
	jal	%x1, print_int.185  #108 pc 724
	addi	%x2, %x2, -12  #108 pc 728
	lw	%x1, 8(%x2) #108 pc 732
	addi	%x7, %x0, 10  #0 pc 736
	lw	%x6, 4(%x2)  #109 pc 740
	sw	%x1, 8(%x2)  #109 pc 744
	addi	%x2, %x2, 12  #109 pc 748
	jal	%x1, mul.172  #109 pc 752
	addi	%x2, %x2, -12  #109 pc 756
	lw	%x1, 8(%x2) #109 pc 760
	lw	%x7, 0(%x2)  #109 pc 764
	sub	%x6, %x7, %x6  #109 pc 768
	addi	%x6, %x6, 48  #109 pc 772
	sw	%x6, 0(%x5)  #109 pc 776
	addi	%x5, %x5, 4  #109 pc 780
	ret #pc 784
	nop #pc 788
bge_else.410: #pc 792
	addi	%x6, %x6, 48  #105 pc 792
	sw	%x6, 0(%x5)  #105 pc 796
	addi	%x5, %x5, 4  #105 pc 800
	ret #pc 804
	nop #pc 808
bge_else.409: #pc 812
	addi	%x7, %x0, 45  #0 pc 812
	sw	%x7, 0(%x5)  #101 pc 816
	addi	%x5, %x5, 4  #101 pc 820
	sub	%x6, %x0, %x6  #102 pc 824
	j	print_int.185  #102 pc 828
	nop #pc 832
.global	min_caml_start
min_caml_start:
	addi	%x31, %x0, 1
	slli	%x4, %x31, 13
	slli	%x5, %x31, 16
	slli	%x2, %x31, 24
	add	%x3, %x2, %x4
	fmv	%f0, l.380  #0 pc 856
	sw	%x1, 0(%x2)  #213 pc 860
	addi	%x2, %x2, 4  #213 pc 864
	jal	%x1, abs_float.161  #213 pc 868
	addi	%x2, %x2, -4  #213 pc 872
	lw	%x1, 0(%x2) #213 pc 876
	fsqrt	%f0, %f0  #213 pc 880
	sw	%x1, 0(%x2)  #213 pc 884
	addi	%x2, %x2, 4  #213 pc 888
	jal	%x1, cos.155  #213 pc 892
	addi	%x2, %x2, -4  #213 pc 896
	lw	%x1, 0(%x2) #213 pc 900
	sw	%x1, 0(%x2)  #213 pc 904
	addi	%x2, %x2, 4  #213 pc 908
	jal	%x1, sin.153  #213 pc 912
	addi	%x2, %x2, -4  #213 pc 916
	lw	%x1, 0(%x2) #213 pc 920
	fmv	%f1, l.382  #0 pc 924
	fadd	%f0, %f0, %f1  #213 pc 928
	fmv	%f1, l.384  #0 pc 932
	fsub	%f0, %f0, %f1  #213 pc 936
	addi	%x6, %x0, 1000000  #0 pc 940
	fsw	%f0, 0(%x2)  #215 pc 944
	sw	%x1, 8(%x2)  #215 pc 948
	addi	%x2, %x2, 12  #215 pc 952
	jal	%x1, float_of_int.163  #215 pc 956
	addi	%x2, %x2, -12  #215 pc 960
	lw	%x1, 8(%x2) #215 pc 964
	flw	%f1, 0(%x2)  #213 pc 968
	fmul	%f0, %f1, %f0  #213 pc 972
	sw	%x1, 8(%x2)  #212 pc 976
	addi	%x2, %x2, 12  #212 pc 980
	jal	%x1, int_of_float.165  #212 pc 984
	addi	%x2, %x2, -12  #212 pc 988
	lw	%x1, 8(%x2) #212 pc 992
	sw	%x1, 8(%x2)  #211 pc 996
	addi	%x2, %x2, 12  #211 pc 1000
	jal	%x1, print_int.185  #211 pc 1004
	addi	%x2, %x2, -12  #211 pc 1008
	lw	%x1, 8(%x2) #211 pc 1012
