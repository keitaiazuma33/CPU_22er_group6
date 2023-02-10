.section	".rodata"
.align	8
.section	".text"
mul_abs.210:  #pc 0
	addi	%x24, %x0, -1  #pc 4
	beq	%x7, %x24, 12  #57 pc 8
	j	be_else.506 #pc 12
	nop #pc 16
	mv	%x5, %x9  #58 pc 20
	ret #pc 24
	nop #pc 28
be_else.506: #pc 28
	addi	%x10, %x0, 1  #0 pc 32
	sll	%x10, %x10, %x7  #60 pc 36
	and	%x10, %x6, %x10  #60 pc 40
	beq	%x10, %x0, 12  #60 pc 44
	j	be_else.507 #pc 48
	nop #pc 52
	addi	%x7, %x7, -1  #61 pc 56
	j	mul_abs.210  #61 pc 60
	nop #pc 64
be_else.507: #pc 64
	addi	%x10, %x7, -1  #63 pc 68
	sll	%x7, %x5, %x7  #63 pc 72
	add	%x9, %x9, %x7  #63 pc 76
	mv	%x7, %x10 #pc 80
	j	mul_abs.210  #63 pc 84
	nop #pc 88
mul.215:  #pc 88
	bge	%x5, %x0, 12  #67 pc 92
	j	bge_else.508 #pc 96
	nop #pc 100
	mv	%x7, %x5  #67 pc 104
	j	bge_cont.509 #pc 108
	nop #pc 112
bge_else.508: #pc 112
	sub	%x7, %x0, %x5  #67 pc 116
bge_cont.509: #pc 116
	bge	%x6, %x0, 12  #68 pc 120
	j	bge_else.510 #pc 124
	nop #pc 128
	mv	%x9, %x6  #68 pc 132
	j	bge_cont.511 #pc 136
	nop #pc 140
bge_else.510: #pc 140
	sub	%x9, %x0, %x6  #68 pc 144
bge_cont.511: #pc 144
	addi	%x10, %x0, 30  #0 pc 148
	addi	%x11, %x0, 0  #0 pc 152
	sw	%x6, 0(%x2)  #69 pc 156
	sw	%x5, 4(%x2)  #69 pc 160
	mv	%x6, %x9 #pc 164
	mv	%x5, %x7 #pc 168
	mv	%x9, %x11 #pc 172
	mv	%x7, %x10 #pc 176
	sw	%x1, 12(%x2)  #69 pc 180
	addi	%x2, %x2, 16  #69 pc 184
	jal	%x1, mul_abs.210  #69 pc 188
	addi	%x2, %x2, -16  #69 pc 192
	lw	%x1, 12(%x2) #69 pc 196
	lw	%x6, 4(%x2)  #70 pc 200
	srli	%x6, %x6, 31  #70 pc 204
	lw	%x7, 0(%x2)  #70 pc 208
	srli	%x7, %x7, 31  #70 pc 212
	beq	%x6, %x7, 12  #70 pc 216
	j	be_else.512 #pc 220
	nop #pc 224
	ret #pc 228
	nop #pc 232
be_else.512: #pc 232
	sub	%x5, %x0, %x5  #73 pc 236
	ret #pc 240
	nop #pc 244
div_abs.218:  #pc 244
	addi	%x24, %x0, -1  #pc 248
	beq	%x7, %x24, 12  #77 pc 252
	j	be_else.513 #pc 256
	nop #pc 260
	mv	%x5, %x9  #78 pc 264
	ret #pc 268
	nop #pc 272
be_else.513: #pc 272
	srl	%x10, %x5, %x7  #80 pc 276
	bge	%x10, %x6, 12  #80 pc 280
	j	ble_else.514 #pc 284
	nop #pc 288
	sll	%x10, %x6, %x7  #81 pc 292
	sub	%x5, %x5, %x10  #81 pc 296
	addi	%x10, %x7, -1  #81 pc 300
	addi	%x11, %x0, 1  #0 pc 304
	sll	%x7, %x11, %x7  #81 pc 308
	add	%x9, %x9, %x7  #81 pc 312
	mv	%x7, %x10 #pc 316
	j	div_abs.218  #81 pc 320
	nop #pc 324
ble_else.514: #pc 324
	addi	%x7, %x7, -1  #83 pc 328
	j	div_abs.218  #83 pc 332
	nop #pc 336
div.223:  #pc 336
	bge	%x5, %x0, 12  #87 pc 340
	j	bge_else.515 #pc 344
	nop #pc 348
	mv	%x7, %x5  #87 pc 352
	j	bge_cont.516 #pc 356
	nop #pc 360
bge_else.515: #pc 360
	sub	%x7, %x0, %x5  #87 pc 364
bge_cont.516: #pc 364
	bge	%x6, %x0, 12  #88 pc 368
	j	bge_else.517 #pc 372
	nop #pc 376
	mv	%x9, %x6  #88 pc 380
	j	bge_cont.518 #pc 384
	nop #pc 388
bge_else.517: #pc 388
	sub	%x9, %x0, %x6  #88 pc 392
bge_cont.518: #pc 392
	addi	%x10, %x0, 30  #0 pc 396
	addi	%x11, %x0, 0  #0 pc 400
	sw	%x6, 0(%x2)  #89 pc 404
	sw	%x5, 4(%x2)  #89 pc 408
	mv	%x6, %x9 #pc 412
	mv	%x5, %x7 #pc 416
	mv	%x9, %x11 #pc 420
	mv	%x7, %x10 #pc 424
	sw	%x1, 12(%x2)  #89 pc 428
	addi	%x2, %x2, 16  #89 pc 432
	jal	%x1, div_abs.218  #89 pc 436
	addi	%x2, %x2, -16  #89 pc 440
	lw	%x1, 12(%x2) #89 pc 444
	lw	%x6, 4(%x2)  #90 pc 448
	srli	%x6, %x6, 31  #90 pc 452
	lw	%x7, 0(%x2)  #90 pc 456
	srli	%x7, %x7, 31  #90 pc 460
	beq	%x6, %x7, 12  #90 pc 464
	j	be_else.519 #pc 468
	nop #pc 472
	ret #pc 476
	nop #pc 480
be_else.519: #pc 480
	sub	%x5, %x0, %x5  #93 pc 484
	ret #pc 488
	nop #pc 492
print_int.228:  #pc 492
	bge	%x5, %x0, 12  #100 pc 496
	j	bge_else.520 #pc 500
	nop #pc 504
	addi	%x24, %x0, 10  #pc 508
	bge	%x5, %x24, 12  #104 pc 512
	j	bge_else.521 #pc 516
	nop #pc 520
	addi	%x6, %x0, 10  #0 pc 524
	sw	%x5, 0(%x2)  #107 pc 528
	sw	%x1, 4(%x2)  #107 pc 532
	addi	%x2, %x2, 8  #107 pc 536
	jal	%x1, div.223  #107 pc 540
	addi	%x2, %x2, -8  #107 pc 544
	lw	%x1, 4(%x2) #107 pc 548
	sw	%x5, 4(%x2)  #108 pc 552
	sw	%x1, 12(%x2)  #108 pc 556
	addi	%x2, %x2, 16  #108 pc 560
	jal	%x1, print_int.228  #108 pc 564
	addi	%x2, %x2, -16  #108 pc 568
	lw	%x1, 12(%x2) #108 pc 572
	addi	%x6, %x0, 10  #0 pc 576
	lw	%x5, 4(%x2)  #109 pc 580
	sw	%x1, 12(%x2)  #109 pc 584
	addi	%x2, %x2, 16  #109 pc 588
	jal	%x1, mul.215  #109 pc 592
	addi	%x2, %x2, -16  #109 pc 596
	lw	%x1, 12(%x2) #109 pc 600
	lw	%x6, 0(%x2)  #109 pc 604
	sub	%x5, %x6, %x5  #109 pc 608
	addi	%x5, %x5, 48  #109 pc 612
	out	%x5  #109 pc 616
	ret #pc 620
	nop #pc 624
bge_else.521: #pc 624
	addi	%x5, %x5, 48  #105 pc 628
	out	%x5  #105 pc 632
	ret #pc 636
	nop #pc 640
bge_else.520: #pc 640
	sub	%x5, %x0, %x5  #102 pc 644
	j	print_int.228  #102 pc 648
	nop #pc 652
assign_array.242:  #pc 652
	beq	%x7, %x0, 12  #160 pc 656
	j	be_else.524 #pc 660
	nop #pc 664
	slli	%x7, %x7, 2  #161 pc 668
	add	%x24, %x7, %x5  #161 pc 672
	sw	%x6, 0(%x24)  #161 pc 676
	ret #pc 680
	nop #pc 684
be_else.524: #pc 684
	slli	%x9, %x7, 2  #163 pc 688
	add	%x24, %x9, %x5  #163 pc 692
	sw	%x6, 0(%x24)  #163 pc 696
	addi	%x7, %x7, -1  #164 pc 700
	j	assign_array.242  #164 pc 704
	nop #pc 708
create_array.246:  #pc 708
	mv	%x7, %x3  #168 pc 712
	sw	%x7, 0(%x2)  #171 pc 716
	mv	%x23, %x7 #pc 720
	mv	%x7, %x5 #pc 724
	mv	%x5, %x23 #pc 728
	sw	%x1, 4(%x2)  #171 pc 732
	addi	%x2, %x2, 8  #171 pc 736
	jal	%x1, assign_array.242  #171 pc 740
	addi	%x2, %x2, -8  #171 pc 744
	lw	%x1, 4(%x2) #171 pc 748
	lw	%x5, 0(%x2)  #172 pc 752
	ret #pc 756
	nop #pc 760
f.256:  #pc 760
	addi	%x5, %x0, 12345  #0 pc 764
	ret #pc 768
	nop #pc 772
g.258:  #pc 772
	addi	%x5, %x5, 1  #193 pc 776
	ret #pc 780
	nop #pc 784
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 10  #0 pc 788
	addi	%x6, %x0, 1  #0 pc 792
	sw	%x1, 12(%x2)  #194 pc 796
	addi	%x2, %x2, 16  #194 pc 800
	jal	%x1, create_array.246  #194 pc 804
	addi	%x2, %x2, -16  #194 pc 808
	lw	%x1, 12(%x2) #194 pc 812
	sw	%x5, 8(%x2)  #195 pc 816
	mv	%x5, %g0 #pc 820
	sw	%x1, 12(%x2)  #195 pc 824
	addi	%x2, %x2, 16  #195 pc 828
	jal	%x1, f.256  #195 pc 832
	addi	%x2, %x2, -16  #195 pc 836
	lw	%x1, 12(%x2) #195 pc 840
	addi	%x6, %x0, 67890  #0 pc 844
	lw	%x7, 8(%x2)  #197 pc 848
	add	%x24, %x0, %x7  #197 pc 852
	lw	%x9, 0(%x24)  #197 pc 856
	add	%x10, %x9, %x9  #198 pc 860
	add	%x11, %x10, %x10  #199 pc 864
	add	%x12, %x11, %x11  #200 pc 868
	add	%x13, %x12, %x12  #201 pc 872
	add	%x14, %x13, %x13  #202 pc 876
	add	%x15, %x14, %x14  #203 pc 880
	add	%x16, %x15, %x15  #204 pc 884
	add	%x17, %x16, %x16  #205 pc 888
	add	%x18, %x17, %x17  #206 pc 892
	add	%x19, %x18, %x18  #207 pc 896
	add	%x20, %x19, %x19  #208 pc 900
	add	%x21, %x20, %x20  #209 pc 904
	add	%x22, %x21, %x21  #210 pc 908
	add	%x23, %x22, %x22  #211 pc 912
	sw	%x5, 12(%x2)  #212 pc 916
	add	%x5, %x23, %x23  #212 pc 920
	addi	%x24, %x0, 4  #pc 924
	add	%x24, %x24, %x7  #214 pc 928
	lw	%x7, 0(%x24)  #214 pc 932
	beq	%x7, %x0, 12  #214 pc 936
	j	be_else.526 #pc 940
	nop #pc 944
	mv	%x5, %x6 #pc 948
	sw	%x1, 20(%x2)  #214 pc 952
	addi	%x2, %x2, 24  #214 pc 956
	jal	%x1, g.258  #214 pc 960
	addi	%x2, %x2, -24  #214 pc 964
	lw	%x1, 20(%x2) #214 pc 968
	j	be_cont.527 #pc 972
	nop #pc 976
be_else.526: #pc 976
	add	%x6, %x9, %x10  #215 pc 980
	add	%x6, %x6, %x11  #215 pc 984
	add	%x6, %x6, %x12  #215 pc 988
	add	%x6, %x6, %x13  #215 pc 992
	add	%x6, %x6, %x14  #215 pc 996
	add	%x6, %x6, %x15  #215 pc 1000
	add	%x6, %x6, %x16  #215 pc 1004
	add	%x6, %x6, %x17  #215 pc 1008
	add	%x6, %x6, %x18  #215 pc 1012
	add	%x6, %x6, %x19  #215 pc 1016
	add	%x6, %x6, %x20  #215 pc 1020
	add	%x6, %x6, %x21  #215 pc 1024
	add	%x6, %x6, %x22  #215 pc 1028
	add	%x6, %x6, %x23  #215 pc 1032
	add	%x5, %x6, %x5  #215 pc 1036
	lw	%x6, 12(%x2)  #215 pc 1040
	add	%x5, %x5, %x6  #215 pc 1044
be_cont.527: #pc 1044
	sw	%x1, 20(%x2)  #213 pc 1048
	addi	%x2, %x2, 24  #213 pc 1052
	jal	%x1, print_int.228  #213 pc 1056
	addi	%x2, %x2, -24  #213 pc 1060
	lw	%x1, 20(%x2) #213 pc 1064
	addi	%x2, %x2, 112
