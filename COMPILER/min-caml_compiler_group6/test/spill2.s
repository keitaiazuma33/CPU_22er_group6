.section	".rodata"
.align	8
.section	".text"
mul_abs.210:  #pc 0
	addi	%x24, %x0, -1  #pc 0
	beq	%x7, %x24, 12  #57 pc 4
	j	be_else.506 #pc 8
	nop #pc 12
	addi	%x5, %x9, 0  #58 pc 16
	ret #pc 20
	nop #pc 24
be_else.506: #pc 24
	addi	%x10, %x0, 1  #0 pc 28
	sll	%x10, %x10, %x7  #60 pc 32
	and	%x10, %x6, %x10  #60 pc 36
	beq	%x10, %x0, 12  #60 pc 40
	j	be_else.507 #pc 44
	nop #pc 48
	addi	%x7, %x7, -1  #61 pc 52
	j	mul_abs.210  #61 pc 56
	nop #pc 60
be_else.507: #pc 60
	addi	%x10, %x7, -1  #63 pc 64
	sll	%x7, %x5, %x7  #63 pc 68
	add	%x9, %x9, %x7  #63 pc 72
	addi	%x7, %x10, 0  #0 pc 76
	j	mul_abs.210  #63 pc 80
	nop #pc 84
mul.215:  #pc 88
	bge	%x5, %x0, 12  #67 pc 88
	j	bge_else.508 #pc 92
	nop #pc 96
	addi	%x7, %x5, 0  #67 pc 100
	j	bge_cont.509 #pc 104
	nop #pc 108
bge_else.508: #pc 108
	sub	%x7, %x0, %x5  #67 pc 112
bge_cont.509: #pc 112
	bge	%x6, %x0, 12  #68 pc 116
	j	bge_else.510 #pc 120
	nop #pc 124
	addi	%x9, %x6, 0  #68 pc 128
	j	bge_cont.511 #pc 132
	nop #pc 136
bge_else.510: #pc 136
	sub	%x9, %x0, %x6  #68 pc 140
bge_cont.511: #pc 140
	addi	%x10, %x0, 30  #0 pc 144
	addi	%x11, %x0, 0  #0 pc 148
	sw	%x6, 0(%x2)  #69 pc 152
	sw	%x5, 4(%x2)  #69 pc 156
	addi	%x6, %x9, 0  #0 pc 160
	addi	%x5, %x7, 0  #0 pc 164
	addi	%x9, %x11, 0  #0 pc 168
	addi	%x7, %x10, 0  #0 pc 172
	sw	%x1, 12(%x2)  #69 pc 176
	addi	%x2, %x2, 16  #69 pc 180
	jal	%x1, mul_abs.210  #69 pc 184
	addi	%x2, %x2, -16  #69 pc 188
	lw	%x1, 12(%x2) #69 pc 192
	lw	%x6, 4(%x2)  #70 pc 196
	srli	%x6, %x6, 31  #70 pc 200
	lw	%x7, 0(%x2)  #70 pc 204
	srli	%x7, %x7, 31  #70 pc 208
	beq	%x6, %x7, 12  #70 pc 212
	j	be_else.512 #pc 216
	nop #pc 220
	ret #pc 224
	nop #pc 228
be_else.512: #pc 228
	sub	%x5, %x0, %x5  #73 pc 232
	ret #pc 236
	nop #pc 240
div_abs.218:  #pc 244
	addi	%x24, %x0, -1  #pc 244
	beq	%x7, %x24, 12  #77 pc 248
	j	be_else.513 #pc 252
	nop #pc 256
	addi	%x5, %x9, 0  #78 pc 260
	ret #pc 264
	nop #pc 268
be_else.513: #pc 268
	srl	%x10, %x5, %x7  #80 pc 272
	bge	%x10, %x6, 12  #80 pc 276
	j	ble_else.514 #pc 280
	nop #pc 284
	sll	%x10, %x6, %x7  #81 pc 288
	sub	%x5, %x5, %x10  #81 pc 292
	addi	%x10, %x7, -1  #81 pc 296
	addi	%x11, %x0, 1  #0 pc 300
	sll	%x7, %x11, %x7  #81 pc 304
	add	%x9, %x9, %x7  #81 pc 308
	addi	%x7, %x10, 0  #0 pc 312
	j	div_abs.218  #81 pc 316
	nop #pc 320
ble_else.514: #pc 320
	addi	%x7, %x7, -1  #83 pc 324
	j	div_abs.218  #83 pc 328
	nop #pc 332
div.223:  #pc 336
	bge	%x5, %x0, 12  #87 pc 336
	j	bge_else.515 #pc 340
	nop #pc 344
	addi	%x7, %x5, 0  #87 pc 348
	j	bge_cont.516 #pc 352
	nop #pc 356
bge_else.515: #pc 356
	sub	%x7, %x0, %x5  #87 pc 360
bge_cont.516: #pc 360
	bge	%x6, %x0, 12  #88 pc 364
	j	bge_else.517 #pc 368
	nop #pc 372
	addi	%x9, %x6, 0  #88 pc 376
	j	bge_cont.518 #pc 380
	nop #pc 384
bge_else.517: #pc 384
	sub	%x9, %x0, %x6  #88 pc 388
bge_cont.518: #pc 388
	addi	%x10, %x0, 30  #0 pc 392
	addi	%x11, %x0, 0  #0 pc 396
	sw	%x6, 0(%x2)  #89 pc 400
	sw	%x5, 4(%x2)  #89 pc 404
	addi	%x6, %x9, 0  #0 pc 408
	addi	%x5, %x7, 0  #0 pc 412
	addi	%x9, %x11, 0  #0 pc 416
	addi	%x7, %x10, 0  #0 pc 420
	sw	%x1, 12(%x2)  #89 pc 424
	addi	%x2, %x2, 16  #89 pc 428
	jal	%x1, div_abs.218  #89 pc 432
	addi	%x2, %x2, -16  #89 pc 436
	lw	%x1, 12(%x2) #89 pc 440
	lw	%x6, 4(%x2)  #90 pc 444
	srli	%x6, %x6, 31  #90 pc 448
	lw	%x7, 0(%x2)  #90 pc 452
	srli	%x7, %x7, 31  #90 pc 456
	beq	%x6, %x7, 12  #90 pc 460
	j	be_else.519 #pc 464
	nop #pc 468
	ret #pc 472
	nop #pc 476
be_else.519: #pc 476
	sub	%x5, %x0, %x5  #93 pc 480
	ret #pc 484
	nop #pc 488
print_int.228:  #pc 492
	bge	%x5, %x0, 12  #100 pc 492
	j	bge_else.520 #pc 496
	nop #pc 500
	addi	%x24, %x0, 10  #pc 504
	bge	%x5, %x24, 12  #104 pc 508
	j	bge_else.521 #pc 512
	nop #pc 516
	addi	%x6, %x0, 10  #0 pc 520
	sw	%x5, 0(%x2)  #107 pc 524
	sw	%x1, 4(%x2)  #107 pc 528
	addi	%x2, %x2, 8  #107 pc 532
	jal	%x1, div.223  #107 pc 536
	addi	%x2, %x2, -8  #107 pc 540
	lw	%x1, 4(%x2) #107 pc 544
	sw	%x5, 4(%x2)  #108 pc 548
	sw	%x1, 12(%x2)  #108 pc 552
	addi	%x2, %x2, 16  #108 pc 556
	jal	%x1, print_int.228  #108 pc 560
	addi	%x2, %x2, -16  #108 pc 564
	lw	%x1, 12(%x2) #108 pc 568
	addi	%x6, %x0, 10  #0 pc 572
	lw	%x5, 4(%x2)  #109 pc 576
	sw	%x1, 12(%x2)  #109 pc 580
	addi	%x2, %x2, 16  #109 pc 584
	jal	%x1, mul.215  #109 pc 588
	addi	%x2, %x2, -16  #109 pc 592
	lw	%x1, 12(%x2) #109 pc 596
	lw	%x6, 0(%x2)  #109 pc 600
	sub	%x5, %x6, %x5  #109 pc 604
	addi	%x5, %x5, 48  #109 pc 608
	out	%x5  #109 pc 612
	ret #pc 616
	nop #pc 620
bge_else.521: #pc 620
	addi	%x5, %x5, 48  #105 pc 624
	out	%x5  #105 pc 628
	ret #pc 632
	nop #pc 636
bge_else.520: #pc 636
	sub	%x5, %x0, %x5  #102 pc 640
	j	print_int.228  #102 pc 644
	nop #pc 648
assign_array.242:  #pc 652
	beq	%x7, %x0, 12  #160 pc 652
	j	be_else.524 #pc 656
	nop #pc 660
	slli	%x7, %x7, 2  #161 pc 664
	add	%x24, %x7, %x5  #161 pc 668
	sw	%x6, 0(%x24)  #161 pc 672
	ret #pc 676
	nop #pc 680
be_else.524: #pc 680
	slli	%x9, %x7, 2  #163 pc 684
	add	%x24, %x9, %x5  #163 pc 688
	sw	%x6, 0(%x24)  #163 pc 692
	addi	%x7, %x7, -1  #164 pc 696
	j	assign_array.242  #164 pc 700
	nop #pc 704
create_array.246:  #pc 708
	addi	%x7, %x3, 0  #168 pc 708
	sw	%x7, 0(%x2)  #171 pc 712
	addi	%x23, %x7, 0  #0 pc 716
	addi	%x7, %x5, 0  #0 pc 720
	addi	%x5, %x23, 0  #0 pc 724
	sw	%x1, 4(%x2)  #171 pc 728
	addi	%x2, %x2, 8  #171 pc 732
	jal	%x1, assign_array.242  #171 pc 736
	addi	%x2, %x2, -8  #171 pc 740
	lw	%x1, 4(%x2) #171 pc 744
	lw	%x5, 0(%x2)  #172 pc 748
	ret #pc 752
	nop #pc 756
f.256:  #pc 760
	addi	%x5, %x0, 12345  #0 pc 760
	ret #pc 764
	nop #pc 768
g.258:  #pc 772
	addi	%x5, %x5, 1  #193 pc 772
	ret #pc 776
	nop #pc 780
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 10  #0 pc 784
	addi	%x6, %x0, 1  #0 pc 788
	sw	%x1, 12(%x2)  #194 pc 792
	addi	%x2, %x2, 16  #194 pc 796
	jal	%x1, create_array.246  #194 pc 800
	addi	%x2, %x2, -16  #194 pc 804
	lw	%x1, 12(%x2) #194 pc 808
	sw	%x5, 8(%x2)  #195 pc 812
	addi	%x5, %x0, 0  #0 pc 816
	sw	%x1, 12(%x2)  #195 pc 820
	addi	%x2, %x2, 16  #195 pc 824
	jal	%x1, f.256  #195 pc 828
	addi	%x2, %x2, -16  #195 pc 832
	lw	%x1, 12(%x2) #195 pc 836
	addi	%x6, %x0, 67890  #0 pc 840
	lw	%x7, 8(%x2)  #197 pc 844
	add	%x24, %x0, %x7  #197 pc 848
	lw	%x9, 0(%x24)  #197 pc 852
	add	%x10, %x9, %x9  #198 pc 856
	add	%x11, %x10, %x10  #199 pc 860
	add	%x12, %x11, %x11  #200 pc 864
	add	%x13, %x12, %x12  #201 pc 868
	add	%x14, %x13, %x13  #202 pc 872
	add	%x15, %x14, %x14  #203 pc 876
	add	%x16, %x15, %x15  #204 pc 880
	add	%x17, %x16, %x16  #205 pc 884
	add	%x18, %x17, %x17  #206 pc 888
	add	%x19, %x18, %x18  #207 pc 892
	add	%x20, %x19, %x19  #208 pc 896
	add	%x21, %x20, %x20  #209 pc 900
	add	%x22, %x21, %x21  #210 pc 904
	add	%x23, %x22, %x22  #211 pc 908
	sw	%x5, 12(%x2)  #212 pc 912
	add	%x5, %x23, %x23  #212 pc 916
	addi	%x24, %x0, 4  #pc 920
	add	%x24, %x24, %x7  #214 pc 924
	lw	%x7, 0(%x24)  #214 pc 928
	beq	%x7, %x0, 12  #214 pc 932
	j	be_else.526 #pc 936
	nop #pc 940
	addi	%x5, %x6, 0  #0 pc 944
	sw	%x1, 20(%x2)  #214 pc 948
	addi	%x2, %x2, 24  #214 pc 952
	jal	%x1, g.258  #214 pc 956
	addi	%x2, %x2, -24  #214 pc 960
	lw	%x1, 20(%x2) #214 pc 964
	j	be_cont.527 #pc 968
	nop #pc 972
be_else.526: #pc 972
	add	%x6, %x9, %x10  #215 pc 976
	add	%x6, %x6, %x11  #215 pc 980
	add	%x6, %x6, %x12  #215 pc 984
	add	%x6, %x6, %x13  #215 pc 988
	add	%x6, %x6, %x14  #215 pc 992
	add	%x6, %x6, %x15  #215 pc 996
	add	%x6, %x6, %x16  #215 pc 1000
	add	%x6, %x6, %x17  #215 pc 1004
	add	%x6, %x6, %x18  #215 pc 1008
	add	%x6, %x6, %x19  #215 pc 1012
	add	%x6, %x6, %x20  #215 pc 1016
	add	%x6, %x6, %x21  #215 pc 1020
	add	%x6, %x6, %x22  #215 pc 1024
	add	%x6, %x6, %x23  #215 pc 1028
	add	%x5, %x6, %x5  #215 pc 1032
	lw	%x6, 12(%x2)  #215 pc 1036
	add	%x5, %x5, %x6  #215 pc 1040
be_cont.527: #pc 1040
	sw	%x1, 20(%x2)  #213 pc 1044
	addi	%x2, %x2, 24  #213 pc 1048
	jal	%x1, print_int.228  #213 pc 1052
	addi	%x2, %x2, -24  #213 pc 1056
	lw	%x1, 20(%x2) #213 pc 1060
	addi	%x2, %x2, 112
