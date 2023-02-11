.section	".rodata"
.align	8
l.469:	! 0.000000
l.467:	! 1000000.000000
l.465:	! 4.560000
l.463:	! 1.230000
.section	".text"
mul_abs.202:  #pc 0
	addi	%x31, %x0, -1  #pc 0
	beq	%x7, %x31, 12  #57 pc 4
	j	be_else.483 #pc 8
	nop #pc 12
	addi	%x5, %x8, 0  #58 pc 16
	ret #pc 20
	nop #pc 24
be_else.483: #pc 28
	addi	%x9, %x0, 1  #0 pc 28
	sll	%x9, %x9, %x7  #60 pc 32
	and	%x9, %x6, %x9  #60 pc 36
	beq	%x9, %x0, 12  #60 pc 40
	j	be_else.484 #pc 44
	nop #pc 48
	addi	%x7, %x7, -1  #61 pc 52
	j	mul_abs.202  #61 pc 56
	nop #pc 60
be_else.484: #pc 64
	addi	%x9, %x7, -1  #63 pc 64
	sll	%x7, %x5, %x7  #63 pc 68
	add	%x8, %x8, %x7  #63 pc 72
	addi	%x7, %x9, 0  #0 pc 76
	j	mul_abs.202  #63 pc 80
	nop #pc 84
mul.207:  #pc 88
	bge	%x5, %x0, 12  #67 pc 88
	j	bge_else.485 #pc 92
	nop #pc 96
	addi	%x7, %x5, 0  #67 pc 100
	j	bge_cont.486 #pc 104
	nop #pc 108
bge_else.485: #pc 112
	sub	%x7, %x0, %x5  #67 pc 112
bge_cont.486: #pc 116
	bge	%x6, %x0, 12  #68 pc 116
	j	bge_else.487 #pc 120
	nop #pc 124
	addi	%x8, %x6, 0  #68 pc 128
	j	bge_cont.488 #pc 132
	nop #pc 136
bge_else.487: #pc 140
	sub	%x8, %x0, %x6  #68 pc 140
bge_cont.488: #pc 144
	addi	%x9, %x0, 30  #0 pc 144
	addi	%x10, %x0, 0  #0 pc 148
	sw	%x6, 0(%x2)  #69 pc 152
	sw	%x5, 4(%x2)  #69 pc 156
	addi	%x6, %x8, 0  #0 pc 160
	addi	%x5, %x7, 0  #0 pc 164
	addi	%x8, %x10, 0  #0 pc 168
	addi	%x7, %x9, 0  #0 pc 172
	sw	%x1, 8(%x2)  #69 pc 176
	addi	%x2, %x2, 12  #69 pc 180
	jal	%x1, mul_abs.202  #69 pc 184
	addi	%x2, %x2, -12  #69 pc 188
	lw	%x1, 8(%x2) #69 pc 192
	lw	%x6, 4(%x2)  #70 pc 196
	srli	%x6, %x6, 31  #70 pc 200
	lw	%x7, 0(%x2)  #70 pc 204
	srli	%x7, %x7, 31  #70 pc 208
	beq	%x6, %x7, 12  #70 pc 212
	j	be_else.489 #pc 216
	nop #pc 220
	ret #pc 224
	nop #pc 228
be_else.489: #pc 232
	sub	%x5, %x0, %x5  #73 pc 232
	ret #pc 236
	nop #pc 240
div_abs.210:  #pc 244
	addi	%x31, %x0, -1  #pc 244
	beq	%x7, %x31, 12  #77 pc 248
	j	be_else.490 #pc 252
	nop #pc 256
	addi	%x5, %x8, 0  #78 pc 260
	ret #pc 264
	nop #pc 268
be_else.490: #pc 272
	srl	%x9, %x5, %x7  #80 pc 272
	bge	%x9, %x6, 12  #80 pc 276
	j	ble_else.491 #pc 280
	nop #pc 284
	sll	%x9, %x6, %x7  #81 pc 288
	sub	%x5, %x5, %x9  #81 pc 292
	addi	%x9, %x7, -1  #81 pc 296
	addi	%x10, %x0, 1  #0 pc 300
	sll	%x7, %x10, %x7  #81 pc 304
	add	%x8, %x8, %x7  #81 pc 308
	addi	%x7, %x9, 0  #0 pc 312
	j	div_abs.210  #81 pc 316
	nop #pc 320
ble_else.491: #pc 324
	addi	%x7, %x7, -1  #83 pc 324
	j	div_abs.210  #83 pc 328
	nop #pc 332
div.215:  #pc 336
	bge	%x5, %x0, 12  #87 pc 336
	j	bge_else.492 #pc 340
	nop #pc 344
	addi	%x7, %x5, 0  #87 pc 348
	j	bge_cont.493 #pc 352
	nop #pc 356
bge_else.492: #pc 360
	sub	%x7, %x0, %x5  #87 pc 360
bge_cont.493: #pc 364
	bge	%x6, %x0, 12  #88 pc 364
	j	bge_else.494 #pc 368
	nop #pc 372
	addi	%x8, %x6, 0  #88 pc 376
	j	bge_cont.495 #pc 380
	nop #pc 384
bge_else.494: #pc 388
	sub	%x8, %x0, %x6  #88 pc 388
bge_cont.495: #pc 392
	addi	%x9, %x0, 30  #0 pc 392
	addi	%x10, %x0, 0  #0 pc 396
	sw	%x6, 0(%x2)  #89 pc 400
	sw	%x5, 4(%x2)  #89 pc 404
	addi	%x6, %x8, 0  #0 pc 408
	addi	%x5, %x7, 0  #0 pc 412
	addi	%x8, %x10, 0  #0 pc 416
	addi	%x7, %x9, 0  #0 pc 420
	sw	%x1, 8(%x2)  #89 pc 424
	addi	%x2, %x2, 12  #89 pc 428
	jal	%x1, div_abs.210  #89 pc 432
	addi	%x2, %x2, -12  #89 pc 436
	lw	%x1, 8(%x2) #89 pc 440
	lw	%x6, 4(%x2)  #90 pc 444
	srli	%x6, %x6, 31  #90 pc 448
	lw	%x7, 0(%x2)  #90 pc 452
	srli	%x7, %x7, 31  #90 pc 456
	beq	%x6, %x7, 12  #90 pc 460
	j	be_else.496 #pc 464
	nop #pc 468
	ret #pc 472
	nop #pc 476
be_else.496: #pc 480
	sub	%x5, %x0, %x5  #93 pc 480
	ret #pc 484
	nop #pc 488
print_int.220:  #pc 492
	bge	%x5, %x0, 12  #100 pc 492
	j	bge_else.497 #pc 496
	nop #pc 500
	addi	%x31, %x0, 10  #pc 504
	bge	%x5, %x31, 12  #104 pc 508
	j	bge_else.498 #pc 512
	nop #pc 516
	addi	%x6, %x0, 10  #0 pc 520
	sw	%x5, 0(%x2)  #107 pc 524
	sw	%x1, 4(%x2)  #107 pc 528
	addi	%x2, %x2, 8  #107 pc 532
	jal	%x1, div.215  #107 pc 536
	addi	%x2, %x2, -8  #107 pc 540
	lw	%x1, 4(%x2) #107 pc 544
	sw	%x5, 4(%x2)  #108 pc 548
	sw	%x1, 8(%x2)  #108 pc 552
	addi	%x2, %x2, 12  #108 pc 556
	jal	%x1, print_int.220  #108 pc 560
	addi	%x2, %x2, -12  #108 pc 564
	lw	%x1, 8(%x2) #108 pc 568
	addi	%x6, %x0, 10  #0 pc 572
	lw	%x5, 4(%x2)  #109 pc 576
	sw	%x1, 8(%x2)  #109 pc 580
	addi	%x2, %x2, 12  #109 pc 584
	jal	%x1, mul.207  #109 pc 588
	addi	%x2, %x2, -12  #109 pc 592
	lw	%x1, 8(%x2) #109 pc 596
	lw	%x6, 0(%x2)  #109 pc 600
	sub	%x5, %x6, %x5  #109 pc 604
	addi	%x5, %x5, 48  #109 pc 608
	out	%x5  #109 pc 612
	ret #pc 616
	nop #pc 620
bge_else.498: #pc 624
	addi	%x5, %x5, 48  #105 pc 624
	out	%x5  #105 pc 628
	ret #pc 632
	nop #pc 636
bge_else.497: #pc 640
	addi	%x6, %x0, 45  #0 pc 640
	out	%x6  #101 pc 644
	sub	%x5, %x0, %x5  #102 pc 648
	j	print_int.220  #102 pc 652
	nop #pc 656
assign_farray.241:  #pc 660
	beq	%x6, %x0, 12  #176 pc 660
	j	be_else.501 #pc 664
	nop #pc 668
	slli	%x6, %x6, 2  #177 pc 672
	add	%x31, %x6, %x5  #177 pc 676
	fsw	%f0, 0(%x31) #177 pc 680
	ret #pc 684
	nop #pc 688
be_else.501: #pc 692
	slli	%x7, %x6, 2  #179 pc 692
	add	%x31, %x7, %x5  #179 pc 696
	fsw	%f0, 0(%x31) #179 pc 700
	addi	%x6, %x6, -1  #180 pc 704
	j	assign_farray.241  #180 pc 708
	nop #pc 712
create_float_array.245:  #pc 716
	addi	%x6, %x3, 0  #184 pc 716
	addi	%x7, %x6, 0  #185 pc 720
	slli	%x8, %x5, 3  #186 pc 724
	add	%x6, %x6, %x8  #186 pc 728
	addi	%x3, %x6, 0  #186 pc 732
	sw	%x7, 0(%x2)  #187 pc 736
	addi	%x6, %x5, 0  #0 pc 740
	addi	%x5, %x7, 0  #0 pc 744
	sw	%x1, 4(%x2)  #187 pc 748
	addi	%x2, %x2, 8  #187 pc 752
	jal	%x1, assign_farray.241  #187 pc 756
	addi	%x2, %x2, -8  #187 pc 760
	lw	%x1, 4(%x2) #187 pc 764
	lw	%x5, 0(%x2)  #188 pc 768
	ret #pc 772
	nop #pc 776
inprod.248:  #pc 780
	bge	%x7, %x0, 12  #192 pc 780
	j	bge_else.503 #pc 784
	nop #pc 788
	slli	%x8, %x7, 2  #193 pc 792
	add	%x31, %x8, %x5  #193 pc 796
	flw	%f1, 0(%x31)  #193 pc 800
	slli	%x8, %x7, 2  #193 pc 804
	add	%x31, %x8, %x6  #193 pc 808
	flw	%f2, 0(%x31)  #193 pc 812
	fmul	%f1, %f1, %f2  #193 pc 816
	fadd	%f0, %f0, %f1  #193 pc 820
	addi	%x7, %x7, -1  #193 pc 824
	j	inprod.248  #193 pc 828
	nop #pc 832
bge_else.503: #pc 836
	ret #pc 836
	nop #pc 840
.global	min_caml_start
min_caml_start:
	addi	%x2, %x0, 0
	addi	%x3, %x0, 1024
	addi	%x5, %x0, 3  #0 pc 852
	fmv	%f0, l.463  #0 pc 856
	sw	%x1, 0(%x2)  #194 pc 860
	addi	%x2, %x2, 4  #194 pc 864
	jal	%x1, create_float_array.245  #194 pc 868
	addi	%x2, %x2, -4  #194 pc 872
	lw	%x1, 0(%x2) #194 pc 876
	addi	%x6, %x0, 3  #0 pc 880
	fmv	%f0, l.465  #0 pc 884
	sw	%x5, 0(%x2)  #195 pc 888
	addi	%x5, %x6, 0  #0 pc 892
	sw	%x1, 4(%x2)  #195 pc 896
	addi	%x2, %x2, 8  #195 pc 900
	jal	%x1, create_float_array.245  #195 pc 904
	addi	%x2, %x2, -8  #195 pc 908
	lw	%x1, 4(%x2) #195 pc 912
	addi	%x6, %x5, 0  #195 pc 916
	fmv	%f0, l.467  #0 pc 920
	fmv	%f1, l.469  #0 pc 924
	addi	%x7, %x0, 2  #0 pc 928
	lw	%x5, 0(%x2)  #196 pc 932
	fsw	%f0, 8(%x2)  #196 pc 936
	fadd	%f0, %f1, %f30  #0 pc 940
	sw	%x1, 16(%x2)  #196 pc 944
	addi	%x2, %x2, 20  #196 pc 948
	jal	%x1, inprod.248  #196 pc 952
	addi	%x2, %x2, -20  #196 pc 956
	lw	%x1, 16(%x2) #196 pc 960
	flw	%f1, 8(%x2)  #196 pc 964
	fmul	%f0, %f1, %f0  #196 pc 968
	sw	%x1, 16(%x2)  #196 pc 972
	addi	%x2, %x2, 20  #196 pc 976
	jal	%x1, min_caml_truncate  #196 pc 980
	addi	%x2, %x2, -20  #196 pc 984
	lw	%x1, 16(%x2) #196 pc 988
	sw	%x1, 16(%x2)  #196 pc 992
	addi	%x2, %x2, 20  #196 pc 996
	jal	%x1, print_int.220  #196 pc 1000
	addi	%x2, %x2, -20  #196 pc 1004
	lw	%x1, 16(%x2) #196 pc 1008
	addi	%x2, %x2, 112
