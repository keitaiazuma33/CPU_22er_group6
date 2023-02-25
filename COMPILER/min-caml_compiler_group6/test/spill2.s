.section	".rodata"
.align	8
.section	".text"
	nop
	j min_caml_start
mul_abs.175:  #pc 8
	addi	%x31, %x0, -1  #pc 8
	beq	%x8, %x31, 12  #57 pc 12
	j	be_else.419 #pc 16
	nop #pc 20
	addi	%x6, %x9, 0  #58 pc 24
	ret #pc 28
	nop #pc 32
be_else.419: #pc 36
	addi	%x10, %x0, 1  #0 pc 36
	sll	%x10, %x10, %x8  #60 pc 40
	and	%x10, %x7, %x10  #60 pc 44
	beq	%x10, %x0, 12  #60 pc 48
	j	be_else.420 #pc 52
	nop #pc 56
	addi	%x8, %x8, -1  #61 pc 60
	j	mul_abs.175  #61 pc 64
	nop #pc 68
be_else.420: #pc 72
	addi	%x10, %x8, -1  #63 pc 72
	sll	%x8, %x6, %x8  #63 pc 76
	add	%x9, %x9, %x8  #63 pc 80
	addi	%x8, %x10, 0  #0 pc 84
	j	mul_abs.175  #63 pc 88
	nop #pc 92
mul.180:  #pc 96
	bge	%x6, %x0, 12  #67 pc 96
	j	bge_else.421 #pc 100
	nop #pc 104
	addi	%x8, %x6, 0  #67 pc 108
	j	bge_cont.422 #pc 112
	nop #pc 116
bge_else.421: #pc 120
	sub	%x8, %x0, %x6  #67 pc 120
bge_cont.422: #pc 124
	bge	%x7, %x0, 12  #68 pc 124
	j	bge_else.423 #pc 128
	nop #pc 132
	addi	%x9, %x7, 0  #68 pc 136
	j	bge_cont.424 #pc 140
	nop #pc 144
bge_else.423: #pc 148
	sub	%x9, %x0, %x7  #68 pc 148
bge_cont.424: #pc 152
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
	jal	%x1, mul_abs.175  #69 pc 192
	addi	%x2, %x2, -12  #69 pc 196
	lw	%x1, 8(%x2) #69 pc 200
	lw	%x7, 4(%x2)  #70 pc 204
	srli	%x7, %x7, 31  #70 pc 208
	lw	%x8, 0(%x2)  #70 pc 212
	srli	%x8, %x8, 31  #70 pc 216
	beq	%x7, %x8, 12  #70 pc 220
	j	be_else.425 #pc 224
	nop #pc 228
	ret #pc 232
	nop #pc 236
be_else.425: #pc 240
	sub	%x6, %x0, %x6  #73 pc 240
	ret #pc 244
	nop #pc 248
div_abs.183:  #pc 252
	addi	%x31, %x0, -1  #pc 252
	beq	%x8, %x31, 12  #77 pc 256
	j	be_else.426 #pc 260
	nop #pc 264
	addi	%x6, %x9, 0  #78 pc 268
	ret #pc 272
	nop #pc 276
be_else.426: #pc 280
	srl	%x10, %x6, %x8  #80 pc 280
	bge	%x10, %x7, 12  #80 pc 284
	j	ble_else.427 #pc 288
	nop #pc 292
	sll	%x10, %x7, %x8  #81 pc 296
	sub	%x6, %x6, %x10  #81 pc 300
	addi	%x10, %x8, -1  #81 pc 304
	addi	%x11, %x0, 1  #0 pc 308
	sll	%x8, %x11, %x8  #81 pc 312
	add	%x9, %x9, %x8  #81 pc 316
	addi	%x8, %x10, 0  #0 pc 320
	j	div_abs.183  #81 pc 324
	nop #pc 328
ble_else.427: #pc 332
	addi	%x8, %x8, -1  #83 pc 332
	j	div_abs.183  #83 pc 336
	nop #pc 340
div.188:  #pc 344
	bge	%x6, %x0, 12  #87 pc 344
	j	bge_else.428 #pc 348
	nop #pc 352
	addi	%x8, %x6, 0  #87 pc 356
	j	bge_cont.429 #pc 360
	nop #pc 364
bge_else.428: #pc 368
	sub	%x8, %x0, %x6  #87 pc 368
bge_cont.429: #pc 372
	bge	%x7, %x0, 12  #88 pc 372
	j	bge_else.430 #pc 376
	nop #pc 380
	addi	%x9, %x7, 0  #88 pc 384
	j	bge_cont.431 #pc 388
	nop #pc 392
bge_else.430: #pc 396
	sub	%x9, %x0, %x7  #88 pc 396
bge_cont.431: #pc 400
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
	jal	%x1, div_abs.183  #89 pc 440
	addi	%x2, %x2, -12  #89 pc 444
	lw	%x1, 8(%x2) #89 pc 448
	lw	%x7, 4(%x2)  #90 pc 452
	srli	%x7, %x7, 31  #90 pc 456
	lw	%x8, 0(%x2)  #90 pc 460
	srli	%x8, %x8, 31  #90 pc 464
	beq	%x7, %x8, 12  #90 pc 468
	j	be_else.432 #pc 472
	nop #pc 476
	ret #pc 480
	nop #pc 484
be_else.432: #pc 488
	sub	%x6, %x0, %x6  #93 pc 488
	ret #pc 492
	nop #pc 496
print_int.193:  #pc 500
	bge	%x6, %x0, 12  #100 pc 500
	j	bge_else.433 #pc 504
	nop #pc 508
	addi	%x31, %x0, 10  #pc 512
	bge	%x6, %x31, 12  #104 pc 516
	j	bge_else.434 #pc 520
	nop #pc 524
	addi	%x7, %x0, 10  #0 pc 528
	sw	%x6, 0(%x2)  #107 pc 532
	sw	%x1, 4(%x2)  #107 pc 536
	addi	%x2, %x2, 8  #107 pc 540
	jal	%x1, div.188  #107 pc 544
	addi	%x2, %x2, -8  #107 pc 548
	lw	%x1, 4(%x2) #107 pc 552
	sw	%x6, 4(%x2)  #108 pc 556
	sw	%x1, 8(%x2)  #108 pc 560
	addi	%x2, %x2, 12  #108 pc 564
	jal	%x1, print_int.193  #108 pc 568
	addi	%x2, %x2, -12  #108 pc 572
	lw	%x1, 8(%x2) #108 pc 576
	addi	%x7, %x0, 10  #0 pc 580
	lw	%x6, 4(%x2)  #109 pc 584
	sw	%x1, 8(%x2)  #109 pc 588
	addi	%x2, %x2, 12  #109 pc 592
	jal	%x1, mul.180  #109 pc 596
	addi	%x2, %x2, -12  #109 pc 600
	lw	%x1, 8(%x2) #109 pc 604
	lw	%x7, 0(%x2)  #109 pc 608
	sub	%x6, %x7, %x6  #109 pc 612
	addi	%x6, %x6, 48  #109 pc 616
	sw	%x6, 0(%x5)  #109 pc 620
	addi	%x5, %x5, 4  #109 pc 624
	ret #pc 628
	nop #pc 632
bge_else.434: #pc 636
	addi	%x6, %x6, 48  #105 pc 636
	sw	%x6, 0(%x5)  #105 pc 640
	addi	%x5, %x5, 4  #105 pc 644
	ret #pc 648
	nop #pc 652
bge_else.433: #pc 656
	addi	%x7, %x0, 45  #0 pc 656
	sw	%x7, 0(%x5)  #101 pc 660
	addi	%x5, %x5, 4  #101 pc 664
	sub	%x6, %x0, %x6  #102 pc 668
	j	print_int.193  #102 pc 672
	nop #pc 676
assign_array.199:  #pc 680
	bge	%x8, %x0, 12  #169 pc 680
	j	bge_else.437 #pc 684
	nop #pc 688
	beq	%x8, %x0, 12  #172 pc 692
	j	be_else.438 #pc 696
	nop #pc 700
	slli	%x8, %x8, 2  #173 pc 704
	add	%x31, %x8, %x6  #173 pc 708
	sw	%x7, 0(%x31)  #173 pc 712
	ret #pc 716
	nop #pc 720
be_else.438: #pc 724
	slli	%x9, %x8, 2  #175 pc 724
	add	%x31, %x9, %x6  #175 pc 728
	sw	%x7, 0(%x31)  #175 pc 732
	addi	%x8, %x8, -1  #176 pc 736
	j	assign_array.199  #176 pc 740
	nop #pc 744
bge_else.437: #pc 748
	ret #pc 748
	nop #pc 752
create_array.203:  #pc 756
	addi	%x8, %x3, 0  #180 pc 756
	addi	%x9, %x8, 0  #181 pc 760
	slli	%x10, %x6, 2  #182 pc 764
	add	%x8, %x8, %x10  #182 pc 768
	addi	%x3, %x8, 0  #182 pc 772
	addi	%x8, %x6, -1  #183 pc 776
	sw	%x9, 0(%x2)  #183 pc 780
	addi	%x6, %x9, 0  #0 pc 784
	sw	%x1, 4(%x2)  #183 pc 788
	addi	%x2, %x2, 8  #183 pc 792
	jal	%x1, assign_array.199  #183 pc 796
	addi	%x2, %x2, -8  #183 pc 800
	lw	%x1, 4(%x2) #183 pc 804
	lw	%x6, 0(%x2)  #184 pc 808
	ret #pc 812
	nop #pc 816
f.213:  #pc 820
	addi	%x6, %x0, 12345  #0 pc 820
	ret #pc 824
	nop #pc 828
g.215:  #pc 832
	addi	%x6, %x6, 1  #209 pc 832
	ret #pc 836
	nop #pc 840
.global	min_caml_start
min_caml_start:
	addi	%x31, %x0, 1
	slli	%x4, %x31, 13
	slli	%x5, %x31, 16
	slli	%x2, %x31, 24
	add	%x3, %x2, %x4
	addi	%x6, %x0, 10  #0 pc 864
	addi	%x7, %x0, 1  #0 pc 868
	sw	%x1, 0(%x2)  #210 pc 872
	addi	%x2, %x2, 4  #210 pc 876
	jal	%x1, create_array.203  #210 pc 880
	addi	%x2, %x2, -4  #210 pc 884
	lw	%x1, 0(%x2) #210 pc 888
	sw	%x6, 0(%x2)  #211 pc 892
	sw	%x1, 4(%x2)  #211 pc 896
	addi	%x2, %x2, 8  #211 pc 900
	jal	%x1, f.213  #211 pc 904
	addi	%x2, %x2, -8  #211 pc 908
	lw	%x1, 4(%x2) #211 pc 912
	addi	%x7, %x0, 67890  #0 pc 916
	lw	%x8, 0(%x2)  #213 pc 920
	lw	%x9, 0(%x8)  #213 pc 924
	add	%x10, %x9, %x9  #214 pc 928
	add	%x11, %x10, %x10  #215 pc 932
	add	%x12, %x11, %x11  #216 pc 936
	add	%x13, %x12, %x12  #217 pc 940
	add	%x14, %x13, %x13  #218 pc 944
	add	%x15, %x14, %x14  #219 pc 948
	add	%x16, %x15, %x15  #220 pc 952
	add	%x17, %x16, %x16  #221 pc 956
	add	%x18, %x17, %x17  #222 pc 960
	add	%x19, %x18, %x18  #223 pc 964
	add	%x20, %x19, %x19  #224 pc 968
	add	%x21, %x20, %x20  #225 pc 972
	add	%x22, %x21, %x21  #226 pc 976
	add	%x23, %x22, %x22  #227 pc 980
	add	%x24, %x23, %x23  #228 pc 984
	lw	%x8, 4(%x8)  #230 pc 988
	beq	%x8, %x0, 12  #230 pc 992
	j	be_else.441 #pc 996
	nop #pc 1000
	addi	%x6, %x7, 0  #0 pc 1004
	sw	%x1, 4(%x2)  #230 pc 1008
	addi	%x2, %x2, 8  #230 pc 1012
	jal	%x1, g.215  #230 pc 1016
	addi	%x2, %x2, -8  #230 pc 1020
	lw	%x1, 4(%x2) #230 pc 1024
	j	be_cont.442 #pc 1028
	nop #pc 1032
be_else.441: #pc 1036
	add	%x7, %x9, %x10  #231 pc 1036
	add	%x7, %x7, %x11  #231 pc 1040
	add	%x7, %x7, %x12  #231 pc 1044
	add	%x7, %x7, %x13  #231 pc 1048
	add	%x7, %x7, %x14  #231 pc 1052
	add	%x7, %x7, %x15  #231 pc 1056
	add	%x7, %x7, %x16  #231 pc 1060
	add	%x7, %x7, %x17  #231 pc 1064
	add	%x7, %x7, %x18  #231 pc 1068
	add	%x7, %x7, %x19  #231 pc 1072
	add	%x7, %x7, %x20  #231 pc 1076
	add	%x7, %x7, %x21  #231 pc 1080
	add	%x7, %x7, %x22  #231 pc 1084
	add	%x7, %x7, %x23  #231 pc 1088
	add	%x7, %x7, %x24  #231 pc 1092
	add	%x6, %x7, %x6  #231 pc 1096
be_cont.442: #pc 1100
	sw	%x1, 4(%x2)  #229 pc 1100
	addi	%x2, %x2, 8  #229 pc 1104
	jal	%x1, print_int.193  #229 pc 1108
	addi	%x2, %x2, -8  #229 pc 1112
	lw	%x1, 4(%x2) #229 pc 1116
