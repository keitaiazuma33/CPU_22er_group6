.section	".rodata"
.align	8
.section	".text"
	nop
	j min_caml_start
mul_abs.205:  #pc 8
	addi	%x31, %x0, -1  #pc 8
	beq	%x8, %x31, 12  #57 pc 12
	j	be_else.500 #pc 16
	nop #pc 20
	addi	%x6, %x9, 0  #58 pc 24
	ret #pc 28
	nop #pc 32
be_else.500: #pc 36
	addi	%x10, %x0, 1  #0 pc 36
	sll	%x10, %x10, %x8  #60 pc 40
	and	%x10, %x7, %x10  #60 pc 44
	beq	%x10, %x0, 12  #60 pc 48
	j	be_else.501 #pc 52
	nop #pc 56
	addi	%x8, %x8, -1  #61 pc 60
	j	mul_abs.205  #61 pc 64
	nop #pc 68
be_else.501: #pc 72
	addi	%x10, %x8, -1  #63 pc 72
	sll	%x8, %x6, %x8  #63 pc 76
	add	%x9, %x9, %x8  #63 pc 80
	addi	%x8, %x10, 0  #0 pc 84
	j	mul_abs.205  #63 pc 88
	nop #pc 92
mul.210:  #pc 96
	bge	%x6, %x0, 12  #67 pc 96
	j	bge_else.502 #pc 100
	nop #pc 104
	addi	%x8, %x6, 0  #67 pc 108
	j	bge_cont.503 #pc 112
	nop #pc 116
bge_else.502: #pc 120
	sub	%x8, %x0, %x6  #67 pc 120
bge_cont.503: #pc 124
	bge	%x7, %x0, 12  #68 pc 124
	j	bge_else.504 #pc 128
	nop #pc 132
	addi	%x9, %x7, 0  #68 pc 136
	j	bge_cont.505 #pc 140
	nop #pc 144
bge_else.504: #pc 148
	sub	%x9, %x0, %x7  #68 pc 148
bge_cont.505: #pc 152
	addi	%x10, %x0, 30  #0 pc 152
	addi	%x11, %x0, 0  #0 pc 156
	sw	%x7, 0(%x2)  #69 pc 160
	sw	%x6, 4(%x2)  #69 pc 164
	addi	%x7, %x9, 0  #0 pc 168
	addi	%x6, %x8, 0  #0 pc 172
	addi	%x9, %x11, 0  #0 pc 176
	addi	%x8, %x10, 0  #0 pc 180
	sw	%x1, 8(%x2)  #69 pc 184
	addi	%x2, %x2, 12  #69 pc 188
	jal	%x1, mul_abs.205  #69 pc 192
	addi	%x2, %x2, -12  #69 pc 196
	lw	%x1, 8(%x2) #69 pc 200
	lw	%x7, 4(%x2)  #70 pc 204
	srli	%x7, %x7, 31  #70 pc 208
	lw	%x8, 0(%x2)  #70 pc 212
	srli	%x8, %x8, 31  #70 pc 216
	beq	%x7, %x8, 12  #70 pc 220
	j	be_else.506 #pc 224
	nop #pc 228
	ret #pc 232
	nop #pc 236
be_else.506: #pc 240
	sub	%x6, %x0, %x6  #73 pc 240
	ret #pc 244
	nop #pc 248
div_abs.213:  #pc 252
	addi	%x31, %x0, -1  #pc 252
	beq	%x8, %x31, 12  #77 pc 256
	j	be_else.507 #pc 260
	nop #pc 264
	addi	%x6, %x9, 0  #78 pc 268
	ret #pc 272
	nop #pc 276
be_else.507: #pc 280
	srl	%x10, %x6, %x8  #80 pc 280
	bge	%x10, %x7, 12  #80 pc 284
	j	ble_else.508 #pc 288
	nop #pc 292
	sll	%x10, %x7, %x8  #81 pc 296
	sub	%x6, %x6, %x10  #81 pc 300
	addi	%x10, %x8, -1  #81 pc 304
	addi	%x11, %x0, 1  #0 pc 308
	sll	%x8, %x11, %x8  #81 pc 312
	add	%x9, %x9, %x8  #81 pc 316
	addi	%x8, %x10, 0  #0 pc 320
	j	div_abs.213  #81 pc 324
	nop #pc 328
ble_else.508: #pc 332
	addi	%x8, %x8, -1  #83 pc 332
	j	div_abs.213  #83 pc 336
	nop #pc 340
div.218:  #pc 344
	bge	%x6, %x0, 12  #87 pc 344
	j	bge_else.509 #pc 348
	nop #pc 352
	addi	%x8, %x6, 0  #87 pc 356
	j	bge_cont.510 #pc 360
	nop #pc 364
bge_else.509: #pc 368
	sub	%x8, %x0, %x6  #87 pc 368
bge_cont.510: #pc 372
	bge	%x7, %x0, 12  #88 pc 372
	j	bge_else.511 #pc 376
	nop #pc 380
	addi	%x9, %x7, 0  #88 pc 384
	j	bge_cont.512 #pc 388
	nop #pc 392
bge_else.511: #pc 396
	sub	%x9, %x0, %x7  #88 pc 396
bge_cont.512: #pc 400
	addi	%x10, %x0, 30  #0 pc 400
	addi	%x11, %x0, 0  #0 pc 404
	sw	%x7, 0(%x2)  #89 pc 408
	sw	%x6, 4(%x2)  #89 pc 412
	addi	%x7, %x9, 0  #0 pc 416
	addi	%x6, %x8, 0  #0 pc 420
	addi	%x9, %x11, 0  #0 pc 424
	addi	%x8, %x10, 0  #0 pc 428
	sw	%x1, 8(%x2)  #89 pc 432
	addi	%x2, %x2, 12  #89 pc 436
	jal	%x1, div_abs.213  #89 pc 440
	addi	%x2, %x2, -12  #89 pc 444
	lw	%x1, 8(%x2) #89 pc 448
	lw	%x7, 4(%x2)  #90 pc 452
	srli	%x7, %x7, 31  #90 pc 456
	lw	%x8, 0(%x2)  #90 pc 460
	srli	%x8, %x8, 31  #90 pc 464
	beq	%x7, %x8, 12  #90 pc 468
	j	be_else.513 #pc 472
	nop #pc 476
	ret #pc 480
	nop #pc 484
be_else.513: #pc 488
	sub	%x6, %x0, %x6  #93 pc 488
	ret #pc 492
	nop #pc 496
print_int.223:  #pc 500
	bge	%x6, %x0, 12  #100 pc 500
	j	bge_else.514 #pc 504
	nop #pc 508
	addi	%x31, %x0, 10  #pc 512
	bge	%x6, %x31, 12  #104 pc 516
	j	bge_else.515 #pc 520
	nop #pc 524
	addi	%x7, %x0, 10  #0 pc 528
	sw	%x6, 0(%x2)  #107 pc 532
	sw	%x1, 4(%x2)  #107 pc 536
	addi	%x2, %x2, 8  #107 pc 540
	jal	%x1, div.218  #107 pc 544
	addi	%x2, %x2, -8  #107 pc 548
	lw	%x1, 4(%x2) #107 pc 552
	sw	%x6, 4(%x2)  #108 pc 556
	sw	%x1, 8(%x2)  #108 pc 560
	addi	%x2, %x2, 12  #108 pc 564
	jal	%x1, print_int.223  #108 pc 568
	addi	%x2, %x2, -12  #108 pc 572
	lw	%x1, 8(%x2) #108 pc 576
	addi	%x7, %x0, 10  #0 pc 580
	lw	%x6, 4(%x2)  #109 pc 584
	sw	%x1, 8(%x2)  #109 pc 588
	addi	%x2, %x2, 12  #109 pc 592
	jal	%x1, mul.210  #109 pc 596
	addi	%x2, %x2, -12  #109 pc 600
	lw	%x1, 8(%x2) #109 pc 604
	lw	%x7, 0(%x2)  #109 pc 608
	sub	%x6, %x7, %x6  #109 pc 612
	addi	%x6, %x6, 48  #109 pc 616
	sw	%x6, 0(%x5)  #109 pc 620
	addi	%x5, %x5, 4  #109 pc 624
	ret #pc 628
	nop #pc 632
bge_else.515: #pc 636
	addi	%x6, %x6, 48  #105 pc 636
	sw	%x6, 0(%x5)  #105 pc 640
	addi	%x5, %x5, 4  #105 pc 644
	ret #pc 648
	nop #pc 652
bge_else.514: #pc 656
	addi	%x7, %x0, 45  #0 pc 656
	sw	%x7, 0(%x5)  #101 pc 660
	addi	%x5, %x5, 4  #101 pc 664
	sub	%x6, %x0, %x6  #102 pc 668
	j	print_int.223  #102 pc 672
	nop #pc 676
f.243:  #pc 680
	addi	%x7, %x6, 1  #209 pc 680
	addi	%x8, %x7, 1  #210 pc 684
	addi	%x9, %x8, 1  #211 pc 688
	addi	%x10, %x9, 1  #212 pc 692
	addi	%x11, %x10, 1  #213 pc 696
	addi	%x12, %x11, 1  #214 pc 700
	addi	%x13, %x12, 1  #215 pc 704
	addi	%x14, %x13, 1  #216 pc 708
	addi	%x15, %x14, 1  #217 pc 712
	addi	%x16, %x15, 1  #218 pc 716
	addi	%x17, %x16, 1  #219 pc 720
	addi	%x18, %x17, 1  #220 pc 724
	addi	%x19, %x18, 1  #221 pc 728
	addi	%x20, %x19, 1  #222 pc 732
	addi	%x21, %x20, 1  #223 pc 736
	addi	%x22, %x21, 1  #224 pc 740
	addi	%x23, %x22, 1  #225 pc 744
	addi	%x24, %x23, 1  #226 pc 748
	add	%x25, %x24, %x7  #227 pc 752
	add	%x26, %x25, %x8  #228 pc 756
	add	%x27, %x26, %x9  #229 pc 760
	add	%x28, %x27, %x10  #230 pc 764
	add	%x29, %x28, %x11  #231 pc 768
	add	%x30, %x29, %x12  #232 pc 772
	sw	%x30, 0(%x2)  #233 pc 776
	add	%x30, %x30, %x13  #233 pc 780
	sw	%x30, 4(%x2)  #234 pc 784
	add	%x30, %x30, %x14  #234 pc 788
	sw	%x30, 8(%x2)  #235 pc 792
	add	%x30, %x30, %x15  #235 pc 796
	sw	%x30, 12(%x2)  #236 pc 800
	add	%x30, %x30, %x16  #236 pc 804
	sw	%x30, 16(%x2)  #237 pc 808
	add	%x30, %x30, %x17  #237 pc 812
	sw	%x30, 20(%x2)  #238 pc 816
	add	%x30, %x30, %x18  #238 pc 820
	sw	%x30, 24(%x2)  #239 pc 824
	add	%x30, %x30, %x19  #239 pc 828
	sw	%x30, 28(%x2)  #240 pc 832
	add	%x30, %x30, %x20  #240 pc 836
	sw	%x30, 32(%x2)  #241 pc 840
	add	%x30, %x30, %x21  #241 pc 844
	sw	%x30, 36(%x2)  #242 pc 848
	add	%x30, %x30, %x22  #242 pc 852
	sw	%x30, 40(%x2)  #243 pc 856
	add	%x30, %x30, %x23  #243 pc 860
	sw	%x6, 44(%x2)  #244 pc 864
	add	%x6, %x30, %x6  #244 pc 868
	add	%x7, %x7, %x8  #245 pc 872
	add	%x7, %x7, %x9  #245 pc 876
	add	%x7, %x7, %x10  #245 pc 880
	add	%x7, %x7, %x11  #245 pc 884
	add	%x7, %x7, %x12  #245 pc 888
	add	%x7, %x7, %x13  #245 pc 892
	add	%x7, %x7, %x14  #245 pc 896
	add	%x7, %x7, %x15  #245 pc 900
	add	%x7, %x7, %x16  #245 pc 904
	add	%x7, %x7, %x17  #245 pc 908
	add	%x7, %x7, %x18  #245 pc 912
	add	%x7, %x7, %x19  #245 pc 916
	add	%x7, %x7, %x20  #245 pc 920
	add	%x7, %x7, %x21  #245 pc 924
	add	%x7, %x7, %x22  #245 pc 928
	add	%x7, %x7, %x23  #245 pc 932
	add	%x7, %x7, %x24  #245 pc 936
	add	%x7, %x7, %x25  #245 pc 940
	add	%x7, %x7, %x26  #245 pc 944
	add	%x7, %x7, %x27  #245 pc 948
	add	%x7, %x7, %x28  #245 pc 952
	add	%x7, %x7, %x29  #245 pc 956
	lw	%x8, 0(%x2)  #245 pc 960
	add	%x7, %x7, %x8  #245 pc 964
	lw	%x8, 4(%x2)  #245 pc 968
	add	%x7, %x7, %x8  #245 pc 972
	lw	%x8, 8(%x2)  #245 pc 976
	add	%x7, %x7, %x8  #245 pc 980
	lw	%x8, 12(%x2)  #245 pc 984
	add	%x7, %x7, %x8  #245 pc 988
	lw	%x8, 16(%x2)  #245 pc 992
	add	%x7, %x7, %x8  #245 pc 996
	lw	%x8, 20(%x2)  #245 pc 1000
	add	%x7, %x7, %x8  #245 pc 1004
	lw	%x8, 24(%x2)  #245 pc 1008
	add	%x7, %x7, %x8  #245 pc 1012
	lw	%x8, 28(%x2)  #245 pc 1016
	add	%x7, %x7, %x8  #245 pc 1020
	lw	%x8, 32(%x2)  #245 pc 1024
	add	%x7, %x7, %x8  #245 pc 1028
	lw	%x8, 36(%x2)  #245 pc 1032
	add	%x7, %x7, %x8  #245 pc 1036
	lw	%x8, 40(%x2)  #245 pc 1040
	add	%x7, %x7, %x8  #245 pc 1044
	add	%x7, %x7, %x30  #245 pc 1048
	add	%x6, %x7, %x6  #245 pc 1052
	lw	%x7, 44(%x2)  #245 pc 1056
	add	%x6, %x6, %x7  #245 pc 1060
	ret #pc 1064
	nop #pc 1068
.global	min_caml_start
min_caml_start:
	addi	%x31, %x0, 1
	slli	%x4, %x31, 13
	slli	%x5, %x31, 16
	slli	%x2, %x31, 24
	add	%x3, %x2, %x4
	addi	%x6, %x0, 0  #0 pc 1092
	sw	%x1, 0(%x2)  #249 pc 1096
	addi	%x2, %x2, 4  #249 pc 1100
	jal	%x1, f.243  #249 pc 1104
	addi	%x2, %x2, -4  #249 pc 1108
	lw	%x1, 0(%x2) #249 pc 1112
	sw	%x1, 0(%x2)  #249 pc 1116
	addi	%x2, %x2, 4  #249 pc 1120
	jal	%x1, print_int.223  #249 pc 1124
	addi	%x2, %x2, -4  #249 pc 1128
	lw	%x1, 0(%x2) #249 pc 1132
