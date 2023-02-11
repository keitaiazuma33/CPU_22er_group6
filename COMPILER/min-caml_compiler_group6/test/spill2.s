.section	".rodata"
.align	8
.section	".text"
mul_abs.210:  #pc 0
	addi	%x24, %x0, -1  #pc 4
	beq	%x7, %x24, 12  #57 pc 8
	j	be_else.506 #pc 12
	nop #pc 16
	addi	%x5, %x9, 0  #58 pc 20
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
	addi	%x7, %x10, 0  #0 pc 84
	j	mul_abs.210  #63 pc 88
	nop #pc 92
mul.215:  #pc 92
	bge	%x5, %x0, 12  #67 pc 96
	j	bge_else.508 #pc 100
	nop #pc 104
	addi	%x7, %x5, 0  #67 pc 108
	j	bge_cont.509 #pc 112
	nop #pc 116
bge_else.508: #pc 116
	sub	%x7, %x0, %x5  #67 pc 120
bge_cont.509: #pc 120
	bge	%x6, %x0, 12  #68 pc 124
	j	bge_else.510 #pc 128
	nop #pc 132
	addi	%x9, %x6, 0  #68 pc 136
	j	bge_cont.511 #pc 140
	nop #pc 144
bge_else.510: #pc 144
	sub	%x9, %x0, %x6  #68 pc 148
bge_cont.511: #pc 148
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
	jal	%x1, mul_abs.210  #69 pc 208
	addi	%x2, %x2, -16  #69 pc 212
	lw	%x1, 12(%x2) #69 pc 216
	lw	%x6, 4(%x2)  #70 pc 220
	srli	%x6, %x6, 31  #70 pc 224
	lw	%x7, 0(%x2)  #70 pc 228
	srli	%x7, %x7, 31  #70 pc 232
	beq	%x6, %x7, 12  #70 pc 236
	j	be_else.512 #pc 240
	nop #pc 244
	ret #pc 248
	nop #pc 252
be_else.512: #pc 252
	sub	%x5, %x0, %x5  #73 pc 256
	ret #pc 260
	nop #pc 264
div_abs.218:  #pc 264
	addi	%x24, %x0, -1  #pc 268
	beq	%x7, %x24, 12  #77 pc 272
	j	be_else.513 #pc 276
	nop #pc 280
	addi	%x5, %x9, 0  #78 pc 284
	ret #pc 288
	nop #pc 292
be_else.513: #pc 292
	srl	%x10, %x5, %x7  #80 pc 296
	bge	%x10, %x6, 12  #80 pc 300
	j	ble_else.514 #pc 304
	nop #pc 308
	sll	%x10, %x6, %x7  #81 pc 312
	sub	%x5, %x5, %x10  #81 pc 316
	addi	%x10, %x7, -1  #81 pc 320
	addi	%x11, %x0, 1  #0 pc 324
	sll	%x7, %x11, %x7  #81 pc 328
	add	%x9, %x9, %x7  #81 pc 332
	addi	%x7, %x10, 0  #0 pc 340
	j	div_abs.218  #81 pc 344
	nop #pc 348
ble_else.514: #pc 348
	addi	%x7, %x7, -1  #83 pc 352
	j	div_abs.218  #83 pc 356
	nop #pc 360
div.223:  #pc 360
	bge	%x5, %x0, 12  #87 pc 364
	j	bge_else.515 #pc 368
	nop #pc 372
	addi	%x7, %x5, 0  #87 pc 376
	j	bge_cont.516 #pc 380
	nop #pc 384
bge_else.515: #pc 384
	sub	%x7, %x0, %x5  #87 pc 388
bge_cont.516: #pc 388
	bge	%x6, %x0, 12  #88 pc 392
	j	bge_else.517 #pc 396
	nop #pc 400
	addi	%x9, %x6, 0  #88 pc 404
	j	bge_cont.518 #pc 408
	nop #pc 412
bge_else.517: #pc 412
	sub	%x9, %x0, %x6  #88 pc 416
bge_cont.518: #pc 416
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
	jal	%x1, div_abs.218  #89 pc 476
	addi	%x2, %x2, -16  #89 pc 480
	lw	%x1, 12(%x2) #89 pc 484
	lw	%x6, 4(%x2)  #90 pc 488
	srli	%x6, %x6, 31  #90 pc 492
	lw	%x7, 0(%x2)  #90 pc 496
	srli	%x7, %x7, 31  #90 pc 500
	beq	%x6, %x7, 12  #90 pc 504
	j	be_else.519 #pc 508
	nop #pc 512
	ret #pc 516
	nop #pc 520
be_else.519: #pc 520
	sub	%x5, %x0, %x5  #93 pc 524
	ret #pc 528
	nop #pc 532
print_int.228:  #pc 532
	bge	%x5, %x0, 12  #100 pc 536
	j	bge_else.520 #pc 540
	nop #pc 544
	addi	%x24, %x0, 10  #pc 548
	bge	%x5, %x24, 12  #104 pc 552
	j	bge_else.521 #pc 556
	nop #pc 560
	addi	%x6, %x0, 10  #0 pc 564
	sw	%x5, 0(%x2)  #107 pc 568
	sw	%x1, 4(%x2)  #107 pc 572
	addi	%x2, %x2, 8  #107 pc 576
	jal	%x1, div.223  #107 pc 580
	addi	%x2, %x2, -8  #107 pc 584
	lw	%x1, 4(%x2) #107 pc 588
	sw	%x5, 4(%x2)  #108 pc 592
	sw	%x1, 12(%x2)  #108 pc 596
	addi	%x2, %x2, 16  #108 pc 600
	jal	%x1, print_int.228  #108 pc 604
	addi	%x2, %x2, -16  #108 pc 608
	lw	%x1, 12(%x2) #108 pc 612
	addi	%x6, %x0, 10  #0 pc 616
	lw	%x5, 4(%x2)  #109 pc 620
	sw	%x1, 12(%x2)  #109 pc 624
	addi	%x2, %x2, 16  #109 pc 628
	jal	%x1, mul.215  #109 pc 632
	addi	%x2, %x2, -16  #109 pc 636
	lw	%x1, 12(%x2) #109 pc 640
	lw	%x6, 0(%x2)  #109 pc 644
	sub	%x5, %x6, %x5  #109 pc 648
	addi	%x5, %x5, 48  #109 pc 652
	out	%x5  #109 pc 656
	ret #pc 660
	nop #pc 664
bge_else.521: #pc 664
	addi	%x5, %x5, 48  #105 pc 668
	out	%x5  #105 pc 672
	ret #pc 676
	nop #pc 680
bge_else.520: #pc 680
	sub	%x5, %x0, %x5  #102 pc 684
	j	print_int.228  #102 pc 688
	nop #pc 692
assign_array.242:  #pc 692
	beq	%x7, %x0, 12  #160 pc 696
	j	be_else.524 #pc 700
	nop #pc 704
	slli	%x7, %x7, 2  #161 pc 708
	add	%x24, %x7, %x5  #161 pc 712
	sw	%x6, 0(%x24)  #161 pc 716
	ret #pc 720
	nop #pc 724
be_else.524: #pc 724
	slli	%x9, %x7, 2  #163 pc 728
	add	%x24, %x9, %x5  #163 pc 732
	sw	%x6, 0(%x24)  #163 pc 736
	addi	%x7, %x7, -1  #164 pc 740
	j	assign_array.242  #164 pc 744
	nop #pc 748
create_array.246:  #pc 748
	addi	%x7, %x3, 0  #168 pc 752
	sw	%x7, 0(%x2)  #171 pc 756
	addi	%x23, %x7, 0  #0 pc 764
	addi	%x7, %x5, 0  #0 pc 772
	addi	%x5, %x23, 0  #0 pc 780
	sw	%x1, 4(%x2)  #171 pc 784
	addi	%x2, %x2, 8  #171 pc 788
	jal	%x1, assign_array.242  #171 pc 792
	addi	%x2, %x2, -8  #171 pc 796
	lw	%x1, 4(%x2) #171 pc 800
	lw	%x5, 0(%x2)  #172 pc 804
	ret #pc 808
	nop #pc 812
f.256:  #pc 812
	addi	%x5, %x0, 12345  #0 pc 816
	ret #pc 820
	nop #pc 824
g.258:  #pc 824
	addi	%x5, %x5, 1  #193 pc 828
	ret #pc 832
	nop #pc 836
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 10  #0 pc 840
	addi	%x6, %x0, 1  #0 pc 844
	sw	%x1, 12(%x2)  #194 pc 848
	addi	%x2, %x2, 16  #194 pc 852
	jal	%x1, create_array.246  #194 pc 856
	addi	%x2, %x2, -16  #194 pc 860
	lw	%x1, 12(%x2) #194 pc 864
	sw	%x5, 8(%x2)  #195 pc 868
	addi	%x5, %x0, 0  #0 pc 876
	sw	%x1, 12(%x2)  #195 pc 880
	addi	%x2, %x2, 16  #195 pc 884
	jal	%x1, f.256  #195 pc 888
	addi	%x2, %x2, -16  #195 pc 892
	lw	%x1, 12(%x2) #195 pc 896
	addi	%x6, %x0, 67890  #0 pc 900
	lw	%x7, 8(%x2)  #197 pc 904
	add	%x24, %x0, %x7  #197 pc 908
	lw	%x9, 0(%x24)  #197 pc 912
	add	%x10, %x9, %x9  #198 pc 916
	add	%x11, %x10, %x10  #199 pc 920
	add	%x12, %x11, %x11  #200 pc 924
	add	%x13, %x12, %x12  #201 pc 928
	add	%x14, %x13, %x13  #202 pc 932
	add	%x15, %x14, %x14  #203 pc 936
	add	%x16, %x15, %x15  #204 pc 940
	add	%x17, %x16, %x16  #205 pc 944
	add	%x18, %x17, %x17  #206 pc 948
	add	%x19, %x18, %x18  #207 pc 952
	add	%x20, %x19, %x19  #208 pc 956
	add	%x21, %x20, %x20  #209 pc 960
	add	%x22, %x21, %x21  #210 pc 964
	add	%x23, %x22, %x22  #211 pc 968
	sw	%x5, 12(%x2)  #212 pc 972
	add	%x5, %x23, %x23  #212 pc 976
	addi	%x24, %x0, 4  #pc 980
	add	%x24, %x24, %x7  #214 pc 984
	lw	%x7, 0(%x24)  #214 pc 988
	beq	%x7, %x0, 12  #214 pc 992
	j	be_else.526 #pc 996
	nop #pc 1000
	addi	%x5, %x6, 0  #0 pc 1008
	sw	%x1, 20(%x2)  #214 pc 1012
	addi	%x2, %x2, 24  #214 pc 1016
	jal	%x1, g.258  #214 pc 1020
	addi	%x2, %x2, -24  #214 pc 1024
	lw	%x1, 20(%x2) #214 pc 1028
	j	be_cont.527 #pc 1032
	nop #pc 1036
be_else.526: #pc 1036
	add	%x6, %x9, %x10  #215 pc 1040
	add	%x6, %x6, %x11  #215 pc 1044
	add	%x6, %x6, %x12  #215 pc 1048
	add	%x6, %x6, %x13  #215 pc 1052
	add	%x6, %x6, %x14  #215 pc 1056
	add	%x6, %x6, %x15  #215 pc 1060
	add	%x6, %x6, %x16  #215 pc 1064
	add	%x6, %x6, %x17  #215 pc 1068
	add	%x6, %x6, %x18  #215 pc 1072
	add	%x6, %x6, %x19  #215 pc 1076
	add	%x6, %x6, %x20  #215 pc 1080
	add	%x6, %x6, %x21  #215 pc 1084
	add	%x6, %x6, %x22  #215 pc 1088
	add	%x6, %x6, %x23  #215 pc 1092
	add	%x5, %x6, %x5  #215 pc 1096
	lw	%x6, 12(%x2)  #215 pc 1100
	add	%x5, %x5, %x6  #215 pc 1104
be_cont.527: #pc 1104
	sw	%x1, 20(%x2)  #213 pc 1108
	addi	%x2, %x2, 24  #213 pc 1112
	jal	%x1, print_int.228  #213 pc 1116
	addi	%x2, %x2, -24  #213 pc 1120
	lw	%x1, 20(%x2) #213 pc 1124
	addi	%x2, %x2, 112
