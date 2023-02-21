.section	".rodata"
.align	8
l.383:	! 0.000000
l.381:	! 1000000.000000
l.379:	! 4.560000
l.377:	! 1.230000
.section	".text"
	nop
	j min_caml_start
mul_abs.167:  #pc 0
	addi	%x31, %x0, -1  #pc 0
	beq	%x8, %x31, 12  #57 pc 4
	j	be_else.397 #pc 8
	nop #pc 12
	addi	%x6, %x9, 0  #58 pc 16
	ret #pc 20
	nop #pc 24
be_else.397: #pc 28
	addi	%x10, %x0, 1  #0 pc 28
	sll	%x10, %x10, %x8  #60 pc 32
	and	%x10, %x7, %x10  #60 pc 36
	beq	%x10, %x0, 12  #60 pc 40
	j	be_else.398 #pc 44
	nop #pc 48
	addi	%x8, %x8, -1  #61 pc 52
	j	mul_abs.167  #61 pc 56
	nop #pc 60
be_else.398: #pc 64
	addi	%x10, %x8, -1  #63 pc 64
	sll	%x8, %x6, %x8  #63 pc 68
	add	%x9, %x9, %x8  #63 pc 72
	addi	%x8, %x10, 0  #0 pc 76
	j	mul_abs.167  #63 pc 80
	nop #pc 84
mul.172:  #pc 88
	bge	%x6, %x0, 12  #67 pc 88
	j	bge_else.399 #pc 92
	nop #pc 96
	addi	%x8, %x6, 0  #67 pc 100
	j	bge_cont.400 #pc 104
	nop #pc 108
bge_else.399: #pc 112
	sub	%x8, %x0, %x6  #67 pc 112
bge_cont.400: #pc 116
	bge	%x7, %x0, 12  #68 pc 116
	j	bge_else.401 #pc 120
	nop #pc 124
	addi	%x9, %x7, 0  #68 pc 128
	j	bge_cont.402 #pc 132
	nop #pc 136
bge_else.401: #pc 140
	sub	%x9, %x0, %x7  #68 pc 140
bge_cont.402: #pc 144
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
	jal	%x1, mul_abs.167  #69 pc 184
	addi	%x2, %x2, -12  #69 pc 188
	lw	%x1, 8(%x2) #69 pc 192
	lw	%x7, 4(%x2)  #70 pc 196
	srli	%x7, %x7, 31  #70 pc 200
	lw	%x8, 0(%x2)  #70 pc 204
	srli	%x8, %x8, 31  #70 pc 208
	beq	%x7, %x8, 12  #70 pc 212
	j	be_else.403 #pc 216
	nop #pc 220
	ret #pc 224
	nop #pc 228
be_else.403: #pc 232
	sub	%x6, %x0, %x6  #73 pc 232
	ret #pc 236
	nop #pc 240
div_abs.175:  #pc 244
	addi	%x31, %x0, -1  #pc 244
	beq	%x8, %x31, 12  #77 pc 248
	j	be_else.404 #pc 252
	nop #pc 256
	addi	%x6, %x9, 0  #78 pc 260
	ret #pc 264
	nop #pc 268
be_else.404: #pc 272
	srl	%x10, %x6, %x8  #80 pc 272
	bge	%x10, %x7, 12  #80 pc 276
	j	ble_else.405 #pc 280
	nop #pc 284
	sll	%x10, %x7, %x8  #81 pc 288
	sub	%x6, %x6, %x10  #81 pc 292
	addi	%x10, %x8, -1  #81 pc 296
	addi	%x11, %x0, 1  #0 pc 300
	sll	%x8, %x11, %x8  #81 pc 304
	add	%x9, %x9, %x8  #81 pc 308
	addi	%x8, %x10, 0  #0 pc 312
	j	div_abs.175  #81 pc 316
	nop #pc 320
ble_else.405: #pc 324
	addi	%x8, %x8, -1  #83 pc 324
	j	div_abs.175  #83 pc 328
	nop #pc 332
div.180:  #pc 336
	bge	%x6, %x0, 12  #87 pc 336
	j	bge_else.406 #pc 340
	nop #pc 344
	addi	%x8, %x6, 0  #87 pc 348
	j	bge_cont.407 #pc 352
	nop #pc 356
bge_else.406: #pc 360
	sub	%x8, %x0, %x6  #87 pc 360
bge_cont.407: #pc 364
	bge	%x7, %x0, 12  #88 pc 364
	j	bge_else.408 #pc 368
	nop #pc 372
	addi	%x9, %x7, 0  #88 pc 376
	j	bge_cont.409 #pc 380
	nop #pc 384
bge_else.408: #pc 388
	sub	%x9, %x0, %x7  #88 pc 388
bge_cont.409: #pc 392
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
	jal	%x1, div_abs.175  #89 pc 432
	addi	%x2, %x2, -12  #89 pc 436
	lw	%x1, 8(%x2) #89 pc 440
	lw	%x7, 4(%x2)  #90 pc 444
	srli	%x7, %x7, 31  #90 pc 448
	lw	%x8, 0(%x2)  #90 pc 452
	srli	%x8, %x8, 31  #90 pc 456
	beq	%x7, %x8, 12  #90 pc 460
	j	be_else.410 #pc 464
	nop #pc 468
	ret #pc 472
	nop #pc 476
be_else.410: #pc 480
	sub	%x6, %x0, %x6  #93 pc 480
	ret #pc 484
	nop #pc 488
print_int.185:  #pc 492
	bge	%x6, %x0, 12  #100 pc 492
	j	bge_else.411 #pc 496
	nop #pc 500
	addi	%x31, %x0, 10  #pc 504
	bge	%x6, %x31, 12  #104 pc 508
	j	bge_else.412 #pc 512
	nop #pc 516
	addi	%x7, %x0, 10  #0 pc 520
	sw	%x6, 0(%x2)  #107 pc 524
	sw	%x1, 4(%x2)  #107 pc 528
	addi	%x2, %x2, 8  #107 pc 532
	jal	%x1, div.180  #107 pc 536
	addi	%x2, %x2, -8  #107 pc 540
	lw	%x1, 4(%x2) #107 pc 544
	sw	%x6, 4(%x2)  #108 pc 548
	sw	%x1, 8(%x2)  #108 pc 552
	addi	%x2, %x2, 12  #108 pc 556
	jal	%x1, print_int.185  #108 pc 560
	addi	%x2, %x2, -12  #108 pc 564
	lw	%x1, 8(%x2) #108 pc 568
	addi	%x7, %x0, 10  #0 pc 572
	lw	%x6, 4(%x2)  #109 pc 576
	sw	%x1, 8(%x2)  #109 pc 580
	addi	%x2, %x2, 12  #109 pc 584
	jal	%x1, mul.172  #109 pc 588
	addi	%x2, %x2, -12  #109 pc 592
	lw	%x1, 8(%x2) #109 pc 596
	lw	%x7, 0(%x2)  #109 pc 600
	sub	%x6, %x7, %x6  #109 pc 604
	addi	%x6, %x6, 48  #109 pc 608
	sw	%x6, 0(%x5)  #109 pc 612
	addi	%x5, %x5, 4  #109 pc 616
	ret #pc 620
	nop #pc 624
bge_else.412: #pc 628
	addi	%x6, %x6, 48  #105 pc 628
	sw	%x6, 0(%x5)  #105 pc 632
	addi	%x5, %x5, 4  #105 pc 636
	ret #pc 640
	nop #pc 644
bge_else.411: #pc 648
	addi	%x7, %x0, 45  #0 pc 648
	sw	%x7, 0(%x5)  #101 pc 652
	addi	%x5, %x5, 4  #101 pc 656
	sub	%x6, %x0, %x6  #102 pc 660
	j	print_int.185  #102 pc 664
	nop #pc 668
assign_farray.198:  #pc 672
	bge	%x7, %x0, 12  #188 pc 672
	j	bge_else.415 #pc 676
	nop #pc 680
	beq	%x7, %x0, 12  #191 pc 684
	j	be_else.416 #pc 688
	nop #pc 692
	slli	%x7, %x7, 2  #192 pc 696
	add	%x31, %x7, %x6  #192 pc 700
	fsw	%f0, 0(%x31) #192 pc 704
	ret #pc 708
	nop #pc 712
be_else.416: #pc 716
	slli	%x8, %x7, 2  #194 pc 716
	add	%x31, %x8, %x6  #194 pc 720
	fsw	%f0, 0(%x31) #194 pc 724
	addi	%x7, %x7, -1  #195 pc 728
	j	assign_farray.198  #195 pc 732
	nop #pc 736
bge_else.415: #pc 740
	ret #pc 740
	nop #pc 744
create_float_array.202:  #pc 748
	addi	%x7, %x3, 0  #199 pc 748
	addi	%x8, %x7, 0  #200 pc 752
	slli	%x9, %x6, 2  #201 pc 756
	add	%x7, %x7, %x9  #201 pc 760
	addi	%x3, %x7, 0  #201 pc 764
	addi	%x7, %x6, -1  #202 pc 768
	sw	%x8, 0(%x2)  #202 pc 772
	addi	%x6, %x8, 0  #0 pc 776
	sw	%x1, 4(%x2)  #202 pc 780
	addi	%x2, %x2, 8  #202 pc 784
	jal	%x1, assign_farray.198  #202 pc 788
	addi	%x2, %x2, -8  #202 pc 792
	lw	%x1, 4(%x2) #202 pc 796
	lw	%x6, 0(%x2)  #203 pc 800
	ret #pc 804
	nop #pc 808
inprod.205:  #pc 812
	bge	%x8, %x0, 12  #208 pc 812
	j	bge_else.419 #pc 816
	nop #pc 820
	slli	%x9, %x8, 2  #209 pc 824
	add	%x31, %x9, %x6  #209 pc 828
	flw	%f1, 0(%x31)  #209 pc 832
	slli	%x9, %x8, 2  #209 pc 836
	add	%x31, %x9, %x7  #209 pc 840
	flw	%f2, 0(%x31)  #209 pc 844
	fmul	%f1, %f1, %f2  #209 pc 848
	fadd	%f0, %f0, %f1  #209 pc 852
	addi	%x8, %x8, -1  #209 pc 856
	j	inprod.205  #209 pc 860
	nop #pc 864
bge_else.419: #pc 868
	ret #pc 868
	nop #pc 872
.global	min_caml_start
min_caml_start:
	addi	%x31, %x0, 1
	slli	%x4, %x31, 13
	slli	%x5, %x31, 16
	slli	%x2, %x31, 24
	add	%x3, %x2, %x4
	addi	%x6, %x0, 3  #0 pc 896
	fmv	%f0, l.377  #0 pc 900
	sw	%x1, 0(%x2)  #210 pc 904
	addi	%x2, %x2, 4  #210 pc 908
	jal	%x1, create_float_array.202  #210 pc 912
	addi	%x2, %x2, -4  #210 pc 916
	lw	%x1, 0(%x2) #210 pc 920
	addi	%x7, %x0, 3  #0 pc 924
	fmv	%f0, l.379  #0 pc 928
	sw	%x6, 0(%x2)  #211 pc 932
	addi	%x6, %x7, 0  #0 pc 936
	sw	%x1, 4(%x2)  #211 pc 940
	addi	%x2, %x2, 8  #211 pc 944
	jal	%x1, create_float_array.202  #211 pc 948
	addi	%x2, %x2, -8  #211 pc 952
	lw	%x1, 4(%x2) #211 pc 956
	addi	%x7, %x6, 0  #211 pc 960
	fmv	%f0, l.381  #0 pc 964
	fmv	%f1, l.383  #0 pc 968
	addi	%x8, %x0, 2  #0 pc 972
	lw	%x6, 0(%x2)  #212 pc 976
	fsw	%f0, 8(%x2)  #212 pc 980
	fadd	%f0, %f1, %f30  #0 pc 984
	sw	%x1, 16(%x2)  #212 pc 988
	addi	%x2, %x2, 20  #212 pc 992
	jal	%x1, inprod.205  #212 pc 996
	addi	%x2, %x2, -20  #212 pc 1000
	lw	%x1, 16(%x2) #212 pc 1004
	flw	%f1, 8(%x2)  #212 pc 1008
	fmul	%f0, %f1, %f0  #212 pc 1012
	ftoi	%x6, %f0  #212 pc 1016
	sw	%x1, 16(%x2)  #212 pc 1020
	addi	%x2, %x2, 20  #212 pc 1024
	jal	%x1, print_int.185  #212 pc 1028
	addi	%x2, %x2, -20  #212 pc 1032
	lw	%x1, 16(%x2) #212 pc 1036
