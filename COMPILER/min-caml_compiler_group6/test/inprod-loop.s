.section	".rodata"
.align	8
l.469:	! 0.000000
l.467:	! 1000000.000000
l.465:	! 4.560000
l.463:	! 1.230000
.section	".text"
mul_abs.202:  #pc 0
	addi	%x24, %x0, -1  #pc 4
	beq	%x7, %x24, 12  #57 pc 8
	j	be_else.483 #pc 12
	nop #pc 16
	addi	%x5, %x9, 0  #58 pc 20
	ret #pc 24
	nop #pc 28
be_else.483: #pc 28
	addi	%x10, %x0, 1  #0 pc 32
	sll	%x10, %x10, %x7  #60 pc 36
	and	%x10, %x6, %x10  #60 pc 40
	beq	%x10, %x0, 12  #60 pc 44
	j	be_else.484 #pc 48
	nop #pc 52
	addi	%x7, %x7, -1  #61 pc 56
	j	mul_abs.202  #61 pc 60
	nop #pc 64
be_else.484: #pc 64
	addi	%x10, %x7, -1  #63 pc 68
	sll	%x7, %x5, %x7  #63 pc 72
	add	%x9, %x9, %x7  #63 pc 76
	addi	%x7, %x10, 0  #0 pc 84
	j	mul_abs.202  #63 pc 88
	nop #pc 92
mul.207:  #pc 92
	bge	%x5, %x0, 12  #67 pc 96
	j	bge_else.485 #pc 100
	nop #pc 104
	addi	%x7, %x5, 0  #67 pc 108
	j	bge_cont.486 #pc 112
	nop #pc 116
bge_else.485: #pc 116
	sub	%x7, %x0, %x5  #67 pc 120
bge_cont.486: #pc 120
	bge	%x6, %x0, 12  #68 pc 124
	j	bge_else.487 #pc 128
	nop #pc 132
	addi	%x9, %x6, 0  #68 pc 136
	j	bge_cont.488 #pc 140
	nop #pc 144
bge_else.487: #pc 144
	sub	%x9, %x0, %x6  #68 pc 148
bge_cont.488: #pc 148
	addi	%x10, %x0, 30  #0 pc 152
	addi	%x11, %x0, 0  #0 pc 156
	sw	%x6, 0(%x2)  #69 pc 160
	sw	%x5, 4(%x2)  #69 pc 164
	addi	%x6, %x9, 0  #0 pc 172
	addi	%x5, %x7, 0  #0 pc 180
	addi	%x9, %x11, 0  #0 pc 188
	addi	%x7, %x10, 0  #0 pc 196
	sw	%x1, 12(%x2)  #69 pc 200
	addi	%x2, %x2, 16  #69 pc 204
	jal	%x1, mul_abs.202  #69 pc 208
	addi	%x2, %x2, -16  #69 pc 212
	lw	%x1, 12(%x2) #69 pc 216
	lw	%x6, 4(%x2)  #70 pc 220
	srli	%x6, %x6, 31  #70 pc 224
	lw	%x7, 0(%x2)  #70 pc 228
	srli	%x7, %x7, 31  #70 pc 232
	beq	%x6, %x7, 12  #70 pc 236
	j	be_else.489 #pc 240
	nop #pc 244
	ret #pc 248
	nop #pc 252
be_else.489: #pc 252
	sub	%x5, %x0, %x5  #73 pc 256
	ret #pc 260
	nop #pc 264
div_abs.210:  #pc 264
	addi	%x24, %x0, -1  #pc 268
	beq	%x7, %x24, 12  #77 pc 272
	j	be_else.490 #pc 276
	nop #pc 280
	addi	%x5, %x9, 0  #78 pc 284
	ret #pc 288
	nop #pc 292
be_else.490: #pc 292
	srl	%x10, %x5, %x7  #80 pc 296
	bge	%x10, %x6, 12  #80 pc 300
	j	ble_else.491 #pc 304
	nop #pc 308
	sll	%x10, %x6, %x7  #81 pc 312
	sub	%x5, %x5, %x10  #81 pc 316
	addi	%x10, %x7, -1  #81 pc 320
	addi	%x11, %x0, 1  #0 pc 324
	sll	%x7, %x11, %x7  #81 pc 328
	add	%x9, %x9, %x7  #81 pc 332
	addi	%x7, %x10, 0  #0 pc 340
	j	div_abs.210  #81 pc 344
	nop #pc 348
ble_else.491: #pc 348
	addi	%x7, %x7, -1  #83 pc 352
	j	div_abs.210  #83 pc 356
	nop #pc 360
div.215:  #pc 360
	bge	%x5, %x0, 12  #87 pc 364
	j	bge_else.492 #pc 368
	nop #pc 372
	addi	%x7, %x5, 0  #87 pc 376
	j	bge_cont.493 #pc 380
	nop #pc 384
bge_else.492: #pc 384
	sub	%x7, %x0, %x5  #87 pc 388
bge_cont.493: #pc 388
	bge	%x6, %x0, 12  #88 pc 392
	j	bge_else.494 #pc 396
	nop #pc 400
	addi	%x9, %x6, 0  #88 pc 404
	j	bge_cont.495 #pc 408
	nop #pc 412
bge_else.494: #pc 412
	sub	%x9, %x0, %x6  #88 pc 416
bge_cont.495: #pc 416
	addi	%x10, %x0, 30  #0 pc 420
	addi	%x11, %x0, 0  #0 pc 424
	sw	%x6, 0(%x2)  #89 pc 428
	sw	%x5, 4(%x2)  #89 pc 432
	addi	%x6, %x9, 0  #0 pc 440
	addi	%x5, %x7, 0  #0 pc 448
	addi	%x9, %x11, 0  #0 pc 456
	addi	%x7, %x10, 0  #0 pc 464
	sw	%x1, 12(%x2)  #89 pc 468
	addi	%x2, %x2, 16  #89 pc 472
	jal	%x1, div_abs.210  #89 pc 476
	addi	%x2, %x2, -16  #89 pc 480
	lw	%x1, 12(%x2) #89 pc 484
	lw	%x6, 4(%x2)  #90 pc 488
	srli	%x6, %x6, 31  #90 pc 492
	lw	%x7, 0(%x2)  #90 pc 496
	srli	%x7, %x7, 31  #90 pc 500
	beq	%x6, %x7, 12  #90 pc 504
	j	be_else.496 #pc 508
	nop #pc 512
	ret #pc 516
	nop #pc 520
be_else.496: #pc 520
	sub	%x5, %x0, %x5  #93 pc 524
	ret #pc 528
	nop #pc 532
print_int.220:  #pc 532
	bge	%x5, %x0, 12  #100 pc 536
	j	bge_else.497 #pc 540
	nop #pc 544
	addi	%x24, %x0, 10  #pc 548
	bge	%x5, %x24, 12  #104 pc 552
	j	bge_else.498 #pc 556
	nop #pc 560
	addi	%x6, %x0, 10  #0 pc 564
	sw	%x5, 0(%x2)  #107 pc 568
	sw	%x1, 4(%x2)  #107 pc 572
	addi	%x2, %x2, 8  #107 pc 576
	jal	%x1, div.215  #107 pc 580
	addi	%x2, %x2, -8  #107 pc 584
	lw	%x1, 4(%x2) #107 pc 588
	sw	%x5, 4(%x2)  #108 pc 592
	sw	%x1, 12(%x2)  #108 pc 596
	addi	%x2, %x2, 16  #108 pc 600
	jal	%x1, print_int.220  #108 pc 604
	addi	%x2, %x2, -16  #108 pc 608
	lw	%x1, 12(%x2) #108 pc 612
	addi	%x6, %x0, 10  #0 pc 616
	lw	%x5, 4(%x2)  #109 pc 620
	sw	%x1, 12(%x2)  #109 pc 624
	addi	%x2, %x2, 16  #109 pc 628
	jal	%x1, mul.207  #109 pc 632
	addi	%x2, %x2, -16  #109 pc 636
	lw	%x1, 12(%x2) #109 pc 640
	lw	%x6, 0(%x2)  #109 pc 644
	sub	%x5, %x6, %x5  #109 pc 648
	addi	%x5, %x5, 48  #109 pc 652
	out	%x5  #109 pc 656
	ret #pc 660
	nop #pc 664
bge_else.498: #pc 664
	addi	%x5, %x5, 48  #105 pc 668
	out	%x5  #105 pc 672
	ret #pc 676
	nop #pc 680
bge_else.497: #pc 680
	sub	%x5, %x0, %x5  #102 pc 684
	j	print_int.220  #102 pc 688
	nop #pc 692
assign_farray.241:  #pc 692
	beq	%x6, %x0, 12  #176 pc 696
	j	be_else.501 #pc 700
	nop #pc 704
	slli	%x6, %x6, 2  #177 pc 708
	add	%x24, %x6, %x5  #177 pc 712
	fsw	%f0, 0(%x24) #177 pc 716
	ret #pc 720
	nop #pc 724
be_else.501: #pc 724
	slli	%x7, %x6, 2  #179 pc 728
	add	%x24, %x7, %x5  #179 pc 732
	fsw	%f0, 0(%x24) #179 pc 736
	addi	%x6, %x6, -1  #180 pc 740
	j	assign_farray.241  #180 pc 744
	nop #pc 748
create_float_array.245:  #pc 748
	addi	%x6, %x3, 0  #184 pc 752
	sw	%x6, 0(%x2)  #187 pc 756
	addi	%x23, %x6, 0  #0 pc 764
	addi	%x6, %x5, 0  #0 pc 772
	addi	%x5, %x23, 0  #0 pc 780
	sw	%x1, 4(%x2)  #187 pc 784
	addi	%x2, %x2, 8  #187 pc 788
	jal	%x1, assign_farray.241  #187 pc 792
	addi	%x2, %x2, -8  #187 pc 796
	lw	%x1, 4(%x2) #187 pc 800
	lw	%x5, 0(%x2)  #188 pc 804
	ret #pc 808
	nop #pc 812
inprod.248:  #pc 812
	bge	%x7, %x0, 12  #192 pc 816
	j	bge_else.503 #pc 820
	nop #pc 824
	slli	%x9, %x7, 2  #193 pc 828
	add	%x24, %x9, %x5  #193 pc 832
	flw	%f1, 0(%x24)  #193 pc 836
	slli	%x9, %x7, 2  #193 pc 840
	add	%x24, %x9, %x6  #193 pc 844
	flw	%f2, 0(%x24)  #193 pc 848
	fmul	%f1, %f1, %f2  #193 pc 852
	fadd	%f0, %f0, %f1  #193 pc 856
	addi	%x7, %x7, -1  #193 pc 860
	j	inprod.248  #193 pc 864
	nop #pc 868
bge_else.503: #pc 868
	ret #pc 872
	nop #pc 876
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 3  #0 pc 880
	fmv	%f0, l.463  #0 pc 884
	sw	%x1, 12(%x2)  #194 pc 888
	addi	%x2, %x2, 16  #194 pc 892
	jal	%x1, create_float_array.245  #194 pc 896
	addi	%x2, %x2, -16  #194 pc 900
	lw	%x1, 12(%x2) #194 pc 904
	addi	%x6, %x0, 3  #0 pc 908
	fmv	%f0, l.465  #0 pc 912
	sw	%x5, 8(%x2)  #195 pc 916
	addi	%x5, %x6, 0  #0 pc 924
	sw	%x1, 12(%x2)  #195 pc 928
	addi	%x2, %x2, 16  #195 pc 932
	jal	%x1, create_float_array.245  #195 pc 936
	addi	%x2, %x2, -16  #195 pc 940
	lw	%x1, 12(%x2) #195 pc 944
	addi	%x6, %x5, 0  #195 pc 948
	fmv	%f0, l.467  #0 pc 952
	fmv	%f1, l.469  #0 pc 956
	addi	%x7, %x0, 2  #0 pc 960
	lw	%x5, 8(%x2)  #196 pc 964
	fsw	%f0, 16(%x2)  #196 pc 968
	fadd	%f0, %f1, %f30  #0 pc 972
	sw	%x1, 28(%x2)  #196 pc 976
	addi	%x2, %x2, 32  #196 pc 980
	jal	%x1, inprod.248  #196 pc 984
	addi	%x2, %x2, -32  #196 pc 988
	lw	%x1, 28(%x2) #196 pc 992
	flw	%f1, 16(%x2)  #196 pc 996
	fmul	%f0, %f1, %f0  #196 pc 1000
	sw	%x1, 28(%x2)  #196 pc 1004
	addi	%x2, %x2, 32  #196 pc 1008
	jal	%x1, min_caml_truncate  #196 pc 1012
	addi	%x2, %x2, -32  #196 pc 1016
	lw	%x1, 28(%x2) #196 pc 1020
	sw	%x1, 28(%x2)  #196 pc 1024
	addi	%x2, %x2, 32  #196 pc 1028
	jal	%x1, print_int.220  #196 pc 1032
	addi	%x2, %x2, -32  #196 pc 1036
	lw	%x1, 28(%x2) #196 pc 1040
	addi	%x2, %x2, 112
