.section	".rodata"
.align	8
.section	".text"
	nop
	j min_caml_start
mul_abs.192:  #pc 8
	addi	%x31, %x0, -1  #pc 8
	beq	%x8, %x31, 12  #57 pc 12
	j	be_else.479 #pc 16
	nop #pc 20
	addi	%x6, %x9, 0  #58 pc 24
	ret #pc 28
	nop #pc 32
be_else.479: #pc 36
	addi	%x10, %x0, 1  #0 pc 36
	sll	%x10, %x10, %x8  #60 pc 40
	and	%x10, %x7, %x10  #60 pc 44
	beq	%x10, %x0, 12  #60 pc 48
	j	be_else.480 #pc 52
	nop #pc 56
	addi	%x8, %x8, -1  #61 pc 60
	j	mul_abs.192  #61 pc 64
	nop #pc 68
be_else.480: #pc 72
	addi	%x10, %x8, -1  #63 pc 72
	sll	%x8, %x6, %x8  #63 pc 76
	add	%x9, %x9, %x8  #63 pc 80
	addi	%x8, %x10, 0  #0 pc 84
	j	mul_abs.192  #63 pc 88
	nop #pc 92
mul.197:  #pc 96
	bge	%x6, %x0, 12  #67 pc 96
	j	bge_else.481 #pc 100
	nop #pc 104
	addi	%x8, %x6, 0  #67 pc 108
	j	bge_cont.482 #pc 112
	nop #pc 116
bge_else.481: #pc 120
	sub	%x8, %x0, %x6  #67 pc 120
bge_cont.482: #pc 124
	bge	%x7, %x0, 12  #68 pc 124
	j	bge_else.483 #pc 128
	nop #pc 132
	addi	%x9, %x7, 0  #68 pc 136
	j	bge_cont.484 #pc 140
	nop #pc 144
bge_else.483: #pc 148
	sub	%x9, %x0, %x7  #68 pc 148
bge_cont.484: #pc 152
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
	jal	%x1, mul_abs.192  #69 pc 192
	addi	%x2, %x2, -12  #69 pc 196
	lw	%x1, 8(%x2) #69 pc 200
	lw	%x7, 4(%x2)  #70 pc 204
	srli	%x7, %x7, 31  #70 pc 208
	lw	%x8, 0(%x2)  #70 pc 212
	srli	%x8, %x8, 31  #70 pc 216
	beq	%x7, %x8, 12  #70 pc 220
	j	be_else.485 #pc 224
	nop #pc 228
	ret #pc 232
	nop #pc 236
be_else.485: #pc 240
	sub	%x6, %x0, %x6  #73 pc 240
	ret #pc 244
	nop #pc 248
div_abs.200:  #pc 252
	addi	%x31, %x0, -1  #pc 252
	beq	%x8, %x31, 12  #77 pc 256
	j	be_else.486 #pc 260
	nop #pc 264
	addi	%x6, %x9, 0  #78 pc 268
	ret #pc 272
	nop #pc 276
be_else.486: #pc 280
	srl	%x10, %x6, %x8  #80 pc 280
	bge	%x10, %x7, 12  #80 pc 284
	j	ble_else.487 #pc 288
	nop #pc 292
	sll	%x10, %x7, %x8  #81 pc 296
	sub	%x6, %x6, %x10  #81 pc 300
	addi	%x10, %x8, -1  #81 pc 304
	addi	%x11, %x0, 1  #0 pc 308
	sll	%x8, %x11, %x8  #81 pc 312
	add	%x9, %x9, %x8  #81 pc 316
	addi	%x8, %x10, 0  #0 pc 320
	j	div_abs.200  #81 pc 324
	nop #pc 328
ble_else.487: #pc 332
	addi	%x8, %x8, -1  #83 pc 332
	j	div_abs.200  #83 pc 336
	nop #pc 340
div.205:  #pc 344
	bge	%x6, %x0, 12  #87 pc 344
	j	bge_else.488 #pc 348
	nop #pc 352
	addi	%x8, %x6, 0  #87 pc 356
	j	bge_cont.489 #pc 360
	nop #pc 364
bge_else.488: #pc 368
	sub	%x8, %x0, %x6  #87 pc 368
bge_cont.489: #pc 372
	bge	%x7, %x0, 12  #88 pc 372
	j	bge_else.490 #pc 376
	nop #pc 380
	addi	%x9, %x7, 0  #88 pc 384
	j	bge_cont.491 #pc 388
	nop #pc 392
bge_else.490: #pc 396
	sub	%x9, %x0, %x7  #88 pc 396
bge_cont.491: #pc 400
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
	jal	%x1, div_abs.200  #89 pc 440
	addi	%x2, %x2, -12  #89 pc 444
	lw	%x1, 8(%x2) #89 pc 448
	lw	%x7, 4(%x2)  #90 pc 452
	srli	%x7, %x7, 31  #90 pc 456
	lw	%x8, 0(%x2)  #90 pc 460
	srli	%x8, %x8, 31  #90 pc 464
	beq	%x7, %x8, 12  #90 pc 468
	j	be_else.492 #pc 472
	nop #pc 476
	ret #pc 480
	nop #pc 484
be_else.492: #pc 488
	sub	%x6, %x0, %x6  #93 pc 488
	ret #pc 492
	nop #pc 496
print_int.210:  #pc 500
	bge	%x6, %x0, 12  #100 pc 500
	j	bge_else.493 #pc 504
	nop #pc 508
	addi	%x31, %x0, 10  #pc 512
	bge	%x6, %x31, 12  #104 pc 516
	j	bge_else.494 #pc 520
	nop #pc 524
	addi	%x7, %x0, 10  #0 pc 528
	sw	%x6, 0(%x2)  #107 pc 532
	sw	%x1, 4(%x2)  #107 pc 536
	addi	%x2, %x2, 8  #107 pc 540
	jal	%x1, div.205  #107 pc 544
	addi	%x2, %x2, -8  #107 pc 548
	lw	%x1, 4(%x2) #107 pc 552
	sw	%x6, 4(%x2)  #108 pc 556
	sw	%x1, 8(%x2)  #108 pc 560
	addi	%x2, %x2, 12  #108 pc 564
	jal	%x1, print_int.210  #108 pc 568
	addi	%x2, %x2, -12  #108 pc 572
	lw	%x1, 8(%x2) #108 pc 576
	addi	%x7, %x0, 10  #0 pc 580
	lw	%x6, 4(%x2)  #109 pc 584
	sw	%x1, 8(%x2)  #109 pc 588
	addi	%x2, %x2, 12  #109 pc 592
	jal	%x1, mul.197  #109 pc 596
	addi	%x2, %x2, -12  #109 pc 600
	lw	%x1, 8(%x2) #109 pc 604
	lw	%x7, 0(%x2)  #109 pc 608
	sub	%x6, %x7, %x6  #109 pc 612
	addi	%x6, %x6, 48  #109 pc 616
	sw	%x6, 0(%x5)  #109 pc 620
	addi	%x5, %x5, 4  #109 pc 624
	ret #pc 628
	nop #pc 632
bge_else.494: #pc 636
	addi	%x6, %x6, 48  #105 pc 636
	sw	%x6, 0(%x5)  #105 pc 640
	addi	%x5, %x5, 4  #105 pc 644
	ret #pc 648
	nop #pc 652
bge_else.493: #pc 656
	addi	%x7, %x0, 45  #0 pc 656
	sw	%x7, 0(%x5)  #101 pc 660
	addi	%x5, %x5, 4  #101 pc 664
	sub	%x6, %x0, %x6  #102 pc 668
	j	print_int.210  #102 pc 672
	nop #pc 676
f.230:  #pc 680
	add	%x10, %x6, %x7  #208 pc 680
	add	%x11, %x6, %x8  #209 pc 684
	add	%x12, %x6, %x9  #210 pc 688
	add	%x13, %x7, %x8  #211 pc 692
	add	%x14, %x7, %x9  #212 pc 696
	add	%x15, %x8, %x9  #213 pc 700
	add	%x16, %x10, %x11  #215 pc 704
	add	%x17, %x10, %x12  #216 pc 708
	add	%x18, %x10, %x13  #217 pc 712
	add	%x19, %x10, %x14  #218 pc 716
	add	%x20, %x10, %x15  #219 pc 720
	add	%x21, %x11, %x12  #220 pc 724
	add	%x22, %x11, %x13  #221 pc 728
	add	%x23, %x11, %x14  #222 pc 732
	add	%x24, %x11, %x15  #223 pc 736
	add	%x25, %x12, %x13  #224 pc 740
	add	%x26, %x12, %x14  #225 pc 744
	add	%x27, %x12, %x15  #226 pc 748
	add	%x28, %x13, %x14  #227 pc 752
	add	%x29, %x13, %x15  #228 pc 756
	add	%x30, %x14, %x15  #229 pc 760
	sw	%x17, 0(%x2)  #231 pc 764
	add	%x17, %x16, %x17  #231 pc 768
	sw	%x17, 4(%x2)  #232 pc 772
	add	%x17, %x16, %x18  #232 pc 776
	sw	%x17, 8(%x2)  #233 pc 780
	add	%x17, %x16, %x19  #233 pc 784
	sw	%x17, 12(%x2)  #234 pc 788
	add	%x17, %x16, %x20  #234 pc 792
	sw	%x17, 16(%x2)  #235 pc 796
	add	%x17, %x16, %x21  #235 pc 800
	sw	%x17, 20(%x2)  #236 pc 804
	add	%x17, %x16, %x22  #236 pc 808
	sw	%x17, 24(%x2)  #237 pc 812
	add	%x17, %x16, %x23  #237 pc 816
	sw	%x17, 28(%x2)  #238 pc 820
	add	%x17, %x16, %x24  #238 pc 824
	sw	%x17, 32(%x2)  #239 pc 828
	add	%x17, %x16, %x25  #239 pc 832
	sw	%x17, 36(%x2)  #240 pc 836
	add	%x17, %x16, %x26  #240 pc 840
	sw	%x17, 40(%x2)  #241 pc 844
	add	%x17, %x16, %x27  #241 pc 848
	sw	%x17, 44(%x2)  #242 pc 852
	add	%x17, %x16, %x28  #242 pc 856
	sw	%x17, 48(%x2)  #243 pc 860
	add	%x17, %x16, %x29  #243 pc 864
	sw	%x17, 52(%x2)  #244 pc 868
	add	%x17, %x16, %x30  #244 pc 872
	add	%x6, %x6, %x7  #246 pc 876
	add	%x6, %x6, %x8  #246 pc 880
	add	%x6, %x6, %x9  #246 pc 884
	add	%x6, %x6, %x10  #246 pc 888
	add	%x6, %x6, %x11  #246 pc 892
	add	%x6, %x6, %x12  #246 pc 896
	add	%x6, %x6, %x13  #246 pc 900
	add	%x6, %x6, %x14  #246 pc 904
	add	%x6, %x6, %x15  #246 pc 908
	add	%x6, %x6, %x16  #246 pc 912
	lw	%x7, 0(%x2)  #246 pc 916
	add	%x6, %x6, %x7  #246 pc 920
	add	%x6, %x6, %x18  #246 pc 924
	add	%x6, %x6, %x19  #246 pc 928
	add	%x6, %x6, %x20  #246 pc 932
	add	%x6, %x6, %x21  #246 pc 936
	add	%x6, %x6, %x22  #246 pc 940
	add	%x6, %x6, %x23  #246 pc 944
	add	%x6, %x6, %x24  #246 pc 948
	add	%x6, %x6, %x25  #246 pc 952
	add	%x6, %x6, %x26  #246 pc 956
	add	%x6, %x6, %x27  #246 pc 960
	add	%x6, %x6, %x28  #246 pc 964
	add	%x6, %x6, %x29  #246 pc 968
	add	%x6, %x6, %x30  #246 pc 972
	lw	%x7, 4(%x2)  #246 pc 976
	add	%x6, %x6, %x7  #246 pc 980
	lw	%x7, 8(%x2)  #246 pc 984
	add	%x6, %x6, %x7  #246 pc 988
	lw	%x7, 12(%x2)  #246 pc 992
	add	%x6, %x6, %x7  #246 pc 996
	lw	%x7, 16(%x2)  #246 pc 1000
	add	%x6, %x6, %x7  #246 pc 1004
	lw	%x7, 20(%x2)  #246 pc 1008
	add	%x6, %x6, %x7  #246 pc 1012
	lw	%x7, 24(%x2)  #246 pc 1016
	add	%x6, %x6, %x7  #246 pc 1020
	lw	%x7, 28(%x2)  #246 pc 1024
	add	%x6, %x6, %x7  #246 pc 1028
	lw	%x7, 32(%x2)  #246 pc 1032
	add	%x6, %x6, %x7  #246 pc 1036
	lw	%x7, 36(%x2)  #246 pc 1040
	add	%x6, %x6, %x7  #246 pc 1044
	lw	%x7, 40(%x2)  #246 pc 1048
	add	%x6, %x6, %x7  #246 pc 1052
	lw	%x7, 44(%x2)  #246 pc 1056
	add	%x6, %x6, %x7  #246 pc 1060
	lw	%x7, 48(%x2)  #246 pc 1064
	add	%x6, %x6, %x7  #246 pc 1068
	lw	%x7, 52(%x2)  #246 pc 1072
	add	%x6, %x6, %x7  #246 pc 1076
	add	%x6, %x6, %x17  #246 pc 1080
	sub	%x6, %x0, %x6  #250 pc 1084
	ret #pc 1088
	nop #pc 1092
.global	min_caml_start
min_caml_start:
	addi	%x31, %x0, 1
	slli	%x4, %x31, 13
	slli	%x5, %x31, 16
	slli	%x2, %x31, 24
	add	%x3, %x2, %x4
	addi	%x6, %x0, 1  #0 pc 1116
	addi	%x7, %x0, 2  #0 pc 1120
	addi	%x8, %x0, 3  #0 pc 1124
	addi	%x9, %x0, 4  #0 pc 1128
	sw	%x1, 0(%x2)  #251 pc 1132
	addi	%x2, %x2, 4  #251 pc 1136
	jal	%x1, f.230  #251 pc 1140
	addi	%x2, %x2, -4  #251 pc 1144
	lw	%x1, 0(%x2) #251 pc 1148
	sw	%x1, 0(%x2)  #251 pc 1152
	addi	%x2, %x2, 4  #251 pc 1156
	jal	%x1, print_int.210  #251 pc 1160
	addi	%x2, %x2, -4  #251 pc 1164
	lw	%x1, 0(%x2) #251 pc 1168
