.section	".rodata"
.align	8
.section	".text"
	nop
	j min_caml_start
mul_abs.205:  #pc 0
	addi	%x31, %x0, -1  #pc 0
	beq	%x8, %x31, 12  #57 pc 4
	j	be_else.500 #pc 8
	nop #pc 12
	addi	%x6, %x9, 0  #58 pc 16
	ret #pc 20
	nop #pc 24
be_else.500: #pc 28
	addi	%x10, %x0, 1  #0 pc 28
	sll	%x10, %x10, %x8  #60 pc 32
	and	%x10, %x7, %x10  #60 pc 36
	beq	%x10, %x0, 12  #60 pc 40
	j	be_else.501 #pc 44
	nop #pc 48
	addi	%x8, %x8, -1  #61 pc 52
	j	mul_abs.205  #61 pc 56
	nop #pc 60
be_else.501: #pc 64
	addi	%x10, %x8, -1  #63 pc 64
	sll	%x8, %x6, %x8  #63 pc 68
	add	%x9, %x9, %x8  #63 pc 72
	addi	%x8, %x10, 0  #0 pc 76
	j	mul_abs.205  #63 pc 80
	nop #pc 84
mul.210:  #pc 88
	bge	%x6, %x0, 12  #67 pc 88
	j	bge_else.502 #pc 92
	nop #pc 96
	addi	%x8, %x6, 0  #67 pc 100
	j	bge_cont.503 #pc 104
	nop #pc 108
bge_else.502: #pc 112
	sub	%x8, %x0, %x6  #67 pc 112
bge_cont.503: #pc 116
	bge	%x7, %x0, 12  #68 pc 116
	j	bge_else.504 #pc 120
	nop #pc 124
	addi	%x9, %x7, 0  #68 pc 128
	j	bge_cont.505 #pc 132
	nop #pc 136
bge_else.504: #pc 140
	sub	%x9, %x0, %x7  #68 pc 140
bge_cont.505: #pc 144
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
	jal	%x1, mul_abs.205  #69 pc 184
	addi	%x2, %x2, -12  #69 pc 188
	lw	%x1, 8(%x2) #69 pc 192
	lw	%x7, 4(%x2)  #70 pc 196
	srli	%x7, %x7, 31  #70 pc 200
	lw	%x8, 0(%x2)  #70 pc 204
	srli	%x8, %x8, 31  #70 pc 208
	beq	%x7, %x8, 12  #70 pc 212
	j	be_else.506 #pc 216
	nop #pc 220
	ret #pc 224
	nop #pc 228
be_else.506: #pc 232
	sub	%x6, %x0, %x6  #73 pc 232
	ret #pc 236
	nop #pc 240
div_abs.213:  #pc 244
	addi	%x31, %x0, -1  #pc 244
	beq	%x8, %x31, 12  #77 pc 248
	j	be_else.507 #pc 252
	nop #pc 256
	addi	%x6, %x9, 0  #78 pc 260
	ret #pc 264
	nop #pc 268
be_else.507: #pc 272
	srl	%x10, %x6, %x8  #80 pc 272
	bge	%x10, %x7, 12  #80 pc 276
	j	ble_else.508 #pc 280
	nop #pc 284
	sll	%x10, %x7, %x8  #81 pc 288
	sub	%x6, %x6, %x10  #81 pc 292
	addi	%x10, %x8, -1  #81 pc 296
	addi	%x11, %x0, 1  #0 pc 300
	sll	%x8, %x11, %x8  #81 pc 304
	add	%x9, %x9, %x8  #81 pc 308
	addi	%x8, %x10, 0  #0 pc 312
	j	div_abs.213  #81 pc 316
	nop #pc 320
ble_else.508: #pc 324
	addi	%x8, %x8, -1  #83 pc 324
	j	div_abs.213  #83 pc 328
	nop #pc 332
div.218:  #pc 336
	bge	%x6, %x0, 12  #87 pc 336
	j	bge_else.509 #pc 340
	nop #pc 344
	addi	%x8, %x6, 0  #87 pc 348
	j	bge_cont.510 #pc 352
	nop #pc 356
bge_else.509: #pc 360
	sub	%x8, %x0, %x6  #87 pc 360
bge_cont.510: #pc 364
	bge	%x7, %x0, 12  #88 pc 364
	j	bge_else.511 #pc 368
	nop #pc 372
	addi	%x9, %x7, 0  #88 pc 376
	j	bge_cont.512 #pc 380
	nop #pc 384
bge_else.511: #pc 388
	sub	%x9, %x0, %x7  #88 pc 388
bge_cont.512: #pc 392
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
	jal	%x1, div_abs.213  #89 pc 432
	addi	%x2, %x2, -12  #89 pc 436
	lw	%x1, 8(%x2) #89 pc 440
	lw	%x7, 4(%x2)  #90 pc 444
	srli	%x7, %x7, 31  #90 pc 448
	lw	%x8, 0(%x2)  #90 pc 452
	srli	%x8, %x8, 31  #90 pc 456
	beq	%x7, %x8, 12  #90 pc 460
	j	be_else.513 #pc 464
	nop #pc 468
	ret #pc 472
	nop #pc 476
be_else.513: #pc 480
	sub	%x6, %x0, %x6  #93 pc 480
	ret #pc 484
	nop #pc 488
print_int.223:  #pc 492
	bge	%x6, %x0, 12  #100 pc 492
	j	bge_else.514 #pc 496
	nop #pc 500
	addi	%x31, %x0, 10  #pc 504
	bge	%x6, %x31, 12  #104 pc 508
	j	bge_else.515 #pc 512
	nop #pc 516
	addi	%x7, %x0, 10  #0 pc 520
	sw	%x6, 0(%x2)  #107 pc 524
	sw	%x1, 4(%x2)  #107 pc 528
	addi	%x2, %x2, 8  #107 pc 532
	jal	%x1, div.218  #107 pc 536
	addi	%x2, %x2, -8  #107 pc 540
	lw	%x1, 4(%x2) #107 pc 544
	sw	%x6, 4(%x2)  #108 pc 548
	sw	%x1, 8(%x2)  #108 pc 552
	addi	%x2, %x2, 12  #108 pc 556
	jal	%x1, print_int.223  #108 pc 560
	addi	%x2, %x2, -12  #108 pc 564
	lw	%x1, 8(%x2) #108 pc 568
	addi	%x7, %x0, 10  #0 pc 572
	lw	%x6, 4(%x2)  #109 pc 576
	sw	%x1, 8(%x2)  #109 pc 580
	addi	%x2, %x2, 12  #109 pc 584
	jal	%x1, mul.210  #109 pc 588
	addi	%x2, %x2, -12  #109 pc 592
	lw	%x1, 8(%x2) #109 pc 596
	lw	%x7, 0(%x2)  #109 pc 600
	sub	%x6, %x7, %x6  #109 pc 604
	addi	%x6, %x6, 48  #109 pc 608
	sw	%x6, 0(%x5)  #109 pc 612
	addi	%x5, %x5, 4  #109 pc 616
	ret #pc 620
	nop #pc 624
bge_else.515: #pc 628
	addi	%x6, %x6, 48  #105 pc 628
	sw	%x6, 0(%x5)  #105 pc 632
	addi	%x5, %x5, 4  #105 pc 636
	ret #pc 640
	nop #pc 644
bge_else.514: #pc 648
	addi	%x7, %x0, 45  #0 pc 648
	sw	%x7, 0(%x5)  #101 pc 652
	addi	%x5, %x5, 4  #101 pc 656
	sub	%x6, %x0, %x6  #102 pc 660
	j	print_int.223  #102 pc 664
	nop #pc 668
f.243:  #pc 672
	addi	%x7, %x6, 1  #209 pc 672
	addi	%x8, %x7, 1  #210 pc 676
	addi	%x9, %x8, 1  #211 pc 680
	addi	%x10, %x9, 1  #212 pc 684
	addi	%x11, %x10, 1  #213 pc 688
	addi	%x12, %x11, 1  #214 pc 692
	addi	%x13, %x12, 1  #215 pc 696
	addi	%x14, %x13, 1  #216 pc 700
	addi	%x15, %x14, 1  #217 pc 704
	addi	%x16, %x15, 1  #218 pc 708
	addi	%x17, %x16, 1  #219 pc 712
	addi	%x18, %x17, 1  #220 pc 716
	addi	%x19, %x18, 1  #221 pc 720
	addi	%x20, %x19, 1  #222 pc 724
	addi	%x21, %x20, 1  #223 pc 728
	addi	%x22, %x21, 1  #224 pc 732
	addi	%x23, %x22, 1  #225 pc 736
	addi	%x24, %x23, 1  #226 pc 740
	add	%x25, %x24, %x7  #227 pc 744
	add	%x26, %x25, %x8  #228 pc 748
	add	%x27, %x26, %x9  #229 pc 752
	add	%x28, %x27, %x10  #230 pc 756
	add	%x29, %x28, %x11  #231 pc 760
	add	%x30, %x29, %x12  #232 pc 764
	sw	%x30, 0(%x2)  #233 pc 768
	add	%x30, %x30, %x13  #233 pc 772
	sw	%x30, 4(%x2)  #234 pc 776
	add	%x30, %x30, %x14  #234 pc 780
	sw	%x30, 8(%x2)  #235 pc 784
	add	%x30, %x30, %x15  #235 pc 788
	sw	%x30, 12(%x2)  #236 pc 792
	add	%x30, %x30, %x16  #236 pc 796
	sw	%x30, 16(%x2)  #237 pc 800
	add	%x30, %x30, %x17  #237 pc 804
	sw	%x30, 20(%x2)  #238 pc 808
	add	%x30, %x30, %x18  #238 pc 812
	sw	%x30, 24(%x2)  #239 pc 816
	add	%x30, %x30, %x19  #239 pc 820
	sw	%x30, 28(%x2)  #240 pc 824
	add	%x30, %x30, %x20  #240 pc 828
	sw	%x30, 32(%x2)  #241 pc 832
	add	%x30, %x30, %x21  #241 pc 836
	sw	%x30, 36(%x2)  #242 pc 840
	add	%x30, %x30, %x22  #242 pc 844
	sw	%x30, 40(%x2)  #243 pc 848
	add	%x30, %x30, %x23  #243 pc 852
	sw	%x6, 44(%x2)  #244 pc 856
	add	%x6, %x30, %x6  #244 pc 860
	add	%x7, %x7, %x8  #245 pc 864
	add	%x7, %x7, %x9  #245 pc 868
	add	%x7, %x7, %x10  #245 pc 872
	add	%x7, %x7, %x11  #245 pc 876
	add	%x7, %x7, %x12  #245 pc 880
	add	%x7, %x7, %x13  #245 pc 884
	add	%x7, %x7, %x14  #245 pc 888
	add	%x7, %x7, %x15  #245 pc 892
	add	%x7, %x7, %x16  #245 pc 896
	add	%x7, %x7, %x17  #245 pc 900
	add	%x7, %x7, %x18  #245 pc 904
	add	%x7, %x7, %x19  #245 pc 908
	add	%x7, %x7, %x20  #245 pc 912
	add	%x7, %x7, %x21  #245 pc 916
	add	%x7, %x7, %x22  #245 pc 920
	add	%x7, %x7, %x23  #245 pc 924
	add	%x7, %x7, %x24  #245 pc 928
	add	%x7, %x7, %x25  #245 pc 932
	add	%x7, %x7, %x26  #245 pc 936
	add	%x7, %x7, %x27  #245 pc 940
	add	%x7, %x7, %x28  #245 pc 944
	add	%x7, %x7, %x29  #245 pc 948
	lw	%x8, 0(%x2)  #245 pc 952
	add	%x7, %x7, %x8  #245 pc 956
	lw	%x8, 4(%x2)  #245 pc 960
	add	%x7, %x7, %x8  #245 pc 964
	lw	%x8, 8(%x2)  #245 pc 968
	add	%x7, %x7, %x8  #245 pc 972
	lw	%x8, 12(%x2)  #245 pc 976
	add	%x7, %x7, %x8  #245 pc 980
	lw	%x8, 16(%x2)  #245 pc 984
	add	%x7, %x7, %x8  #245 pc 988
	lw	%x8, 20(%x2)  #245 pc 992
	add	%x7, %x7, %x8  #245 pc 996
	lw	%x8, 24(%x2)  #245 pc 1000
	add	%x7, %x7, %x8  #245 pc 1004
	lw	%x8, 28(%x2)  #245 pc 1008
	add	%x7, %x7, %x8  #245 pc 1012
	lw	%x8, 32(%x2)  #245 pc 1016
	add	%x7, %x7, %x8  #245 pc 1020
	lw	%x8, 36(%x2)  #245 pc 1024
	add	%x7, %x7, %x8  #245 pc 1028
	lw	%x8, 40(%x2)  #245 pc 1032
	add	%x7, %x7, %x8  #245 pc 1036
	add	%x7, %x7, %x30  #245 pc 1040
	add	%x6, %x7, %x6  #245 pc 1044
	lw	%x7, 44(%x2)  #245 pc 1048
	add	%x6, %x6, %x7  #245 pc 1052
	ret #pc 1056
	nop #pc 1060
.global	min_caml_start
min_caml_start:
	addi	%x31, %x0, 1
	slli	%x4, %x31, 13
	slli	%x5, %x31, 16
	slli	%x2, %x31, 24
	add	%x3, %x2, %x4
	addi	%x6, %x0, 0  #0 pc 1084
	sw	%x1, 0(%x2)  #249 pc 1088
	addi	%x2, %x2, 4  #249 pc 1092
	jal	%x1, f.243  #249 pc 1096
	addi	%x2, %x2, -4  #249 pc 1100
	lw	%x1, 0(%x2) #249 pc 1104
	sw	%x1, 0(%x2)  #249 pc 1108
	addi	%x2, %x2, 4  #249 pc 1112
	jal	%x1, print_int.223  #249 pc 1116
	addi	%x2, %x2, -4  #249 pc 1120
	lw	%x1, 0(%x2) #249 pc 1124
