.section	".rodata"
.align	8
.section	".text"
	nop
	j min_caml_start
mul_abs.158:  #pc 0
	addi	%x31, %x0, -1  #pc 0
	beq	%x8, %x31, 12  #57 pc 4
	j	be_else.369 #pc 8
	nop #pc 12
	addi	%x6, %x9, 0  #58 pc 16
	ret #pc 20
	nop #pc 24
be_else.369: #pc 28
	addi	%x10, %x0, 1  #0 pc 28
	sll	%x10, %x10, %x8  #60 pc 32
	and	%x10, %x7, %x10  #60 pc 36
	beq	%x10, %x0, 12  #60 pc 40
	j	be_else.370 #pc 44
	nop #pc 48
	addi	%x8, %x8, -1  #61 pc 52
	j	mul_abs.158  #61 pc 56
	nop #pc 60
be_else.370: #pc 64
	addi	%x10, %x8, -1  #63 pc 64
	sll	%x8, %x6, %x8  #63 pc 68
	add	%x9, %x9, %x8  #63 pc 72
	addi	%x8, %x10, 0  #0 pc 76
	j	mul_abs.158  #63 pc 80
	nop #pc 84
mul.163:  #pc 88
	bge	%x6, %x0, 12  #67 pc 88
	j	bge_else.371 #pc 92
	nop #pc 96
	addi	%x8, %x6, 0  #67 pc 100
	j	bge_cont.372 #pc 104
	nop #pc 108
bge_else.371: #pc 112
	sub	%x8, %x0, %x6  #67 pc 112
bge_cont.372: #pc 116
	bge	%x7, %x0, 12  #68 pc 116
	j	bge_else.373 #pc 120
	nop #pc 124
	addi	%x9, %x7, 0  #68 pc 128
	j	bge_cont.374 #pc 132
	nop #pc 136
bge_else.373: #pc 140
	sub	%x9, %x0, %x7  #68 pc 140
bge_cont.374: #pc 144
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
	jal	%x1, mul_abs.158  #69 pc 184
	addi	%x2, %x2, -12  #69 pc 188
	lw	%x1, 8(%x2) #69 pc 192
	lw	%x7, 4(%x2)  #70 pc 196
	srli	%x7, %x7, 31  #70 pc 200
	lw	%x8, 0(%x2)  #70 pc 204
	srli	%x8, %x8, 31  #70 pc 208
	beq	%x7, %x8, 12  #70 pc 212
	j	be_else.375 #pc 216
	nop #pc 220
	ret #pc 224
	nop #pc 228
be_else.375: #pc 232
	sub	%x6, %x0, %x6  #73 pc 232
	ret #pc 236
	nop #pc 240
div_abs.166:  #pc 244
	addi	%x31, %x0, -1  #pc 244
	beq	%x8, %x31, 12  #77 pc 248
	j	be_else.376 #pc 252
	nop #pc 256
	addi	%x6, %x9, 0  #78 pc 260
	ret #pc 264
	nop #pc 268
be_else.376: #pc 272
	srl	%x10, %x6, %x8  #80 pc 272
	bge	%x10, %x7, 12  #80 pc 276
	j	ble_else.377 #pc 280
	nop #pc 284
	sll	%x10, %x7, %x8  #81 pc 288
	sub	%x6, %x6, %x10  #81 pc 292
	addi	%x10, %x8, -1  #81 pc 296
	addi	%x11, %x0, 1  #0 pc 300
	sll	%x8, %x11, %x8  #81 pc 304
	add	%x9, %x9, %x8  #81 pc 308
	addi	%x8, %x10, 0  #0 pc 312
	j	div_abs.166  #81 pc 316
	nop #pc 320
ble_else.377: #pc 324
	addi	%x8, %x8, -1  #83 pc 324
	j	div_abs.166  #83 pc 328
	nop #pc 332
div.171:  #pc 336
	bge	%x6, %x0, 12  #87 pc 336
	j	bge_else.378 #pc 340
	nop #pc 344
	addi	%x8, %x6, 0  #87 pc 348
	j	bge_cont.379 #pc 352
	nop #pc 356
bge_else.378: #pc 360
	sub	%x8, %x0, %x6  #87 pc 360
bge_cont.379: #pc 364
	bge	%x7, %x0, 12  #88 pc 364
	j	bge_else.380 #pc 368
	nop #pc 372
	addi	%x9, %x7, 0  #88 pc 376
	j	bge_cont.381 #pc 380
	nop #pc 384
bge_else.380: #pc 388
	sub	%x9, %x0, %x7  #88 pc 388
bge_cont.381: #pc 392
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
	jal	%x1, div_abs.166  #89 pc 432
	addi	%x2, %x2, -12  #89 pc 436
	lw	%x1, 8(%x2) #89 pc 440
	lw	%x7, 4(%x2)  #90 pc 444
	srli	%x7, %x7, 31  #90 pc 448
	lw	%x8, 0(%x2)  #90 pc 452
	srli	%x8, %x8, 31  #90 pc 456
	beq	%x7, %x8, 12  #90 pc 460
	j	be_else.382 #pc 464
	nop #pc 468
	ret #pc 472
	nop #pc 476
be_else.382: #pc 480
	sub	%x6, %x0, %x6  #93 pc 480
	ret #pc 484
	nop #pc 488
print_int.176:  #pc 492
	bge	%x6, %x0, 12  #100 pc 492
	j	bge_else.383 #pc 496
	nop #pc 500
	addi	%x31, %x0, 10  #pc 504
	bge	%x6, %x31, 12  #104 pc 508
	j	bge_else.384 #pc 512
	nop #pc 516
	addi	%x7, %x0, 10  #0 pc 520
	sw	%x6, 0(%x2)  #107 pc 524
	sw	%x1, 4(%x2)  #107 pc 528
	addi	%x2, %x2, 8  #107 pc 532
	jal	%x1, div.171  #107 pc 536
	addi	%x2, %x2, -8  #107 pc 540
	lw	%x1, 4(%x2) #107 pc 544
	sw	%x6, 4(%x2)  #108 pc 548
	sw	%x1, 8(%x2)  #108 pc 552
	addi	%x2, %x2, 12  #108 pc 556
	jal	%x1, print_int.176  #108 pc 560
	addi	%x2, %x2, -12  #108 pc 564
	lw	%x1, 8(%x2) #108 pc 568
	addi	%x7, %x0, 10  #0 pc 572
	lw	%x6, 4(%x2)  #109 pc 576
	sw	%x1, 8(%x2)  #109 pc 580
	addi	%x2, %x2, 12  #109 pc 584
	jal	%x1, mul.163  #109 pc 588
	addi	%x2, %x2, -12  #109 pc 592
	lw	%x1, 8(%x2) #109 pc 596
	lw	%x7, 0(%x2)  #109 pc 600
	sub	%x6, %x7, %x6  #109 pc 604
	addi	%x6, %x6, 48  #109 pc 608
	sw	%x6, 0(%x5)  #109 pc 612
	addi	%x5, %x5, 4  #109 pc 616
	ret #pc 620
	nop #pc 624
bge_else.384: #pc 628
	addi	%x6, %x6, 48  #105 pc 628
	sw	%x6, 0(%x5)  #105 pc 632
	addi	%x5, %x5, 4  #105 pc 636
	ret #pc 640
	nop #pc 644
bge_else.383: #pc 648
	addi	%x7, %x0, 45  #0 pc 648
	sw	%x7, 0(%x5)  #101 pc 652
	addi	%x5, %x5, 4  #101 pc 656
	sub	%x6, %x0, %x6  #102 pc 660
	j	print_int.176  #102 pc 664
	nop #pc 668
assign_array.182:  #pc 672
	bge	%x8, %x0, 12  #169 pc 672
	j	bge_else.387 #pc 676
	nop #pc 680
	beq	%x8, %x0, 12  #172 pc 684
	j	be_else.388 #pc 688
	nop #pc 692
	slli	%x8, %x8, 2  #173 pc 696
	add	%x31, %x8, %x6  #173 pc 700
	sw	%x7, 0(%x31)  #173 pc 704
	ret #pc 708
	nop #pc 712
be_else.388: #pc 716
	slli	%x9, %x8, 2  #175 pc 716
	add	%x31, %x9, %x6  #175 pc 720
	sw	%x7, 0(%x31)  #175 pc 724
	addi	%x8, %x8, -1  #176 pc 728
	j	assign_array.182  #176 pc 732
	nop #pc 736
bge_else.387: #pc 740
	ret #pc 740
	nop #pc 744
create_array.186:  #pc 748
	addi	%x8, %x3, 0  #180 pc 748
	addi	%x9, %x8, 0  #181 pc 752
	slli	%x10, %x6, 2  #182 pc 756
	add	%x8, %x8, %x10  #182 pc 760
	addi	%x3, %x8, 0  #182 pc 764
	addi	%x8, %x6, -1  #183 pc 768
	sw	%x9, 0(%x2)  #183 pc 772
	addi	%x6, %x9, 0  #0 pc 776
	sw	%x1, 4(%x2)  #183 pc 780
	addi	%x2, %x2, 8  #183 pc 784
	jal	%x1, assign_array.182  #183 pc 788
	addi	%x2, %x2, -8  #183 pc 792
	lw	%x1, 4(%x2) #183 pc 796
	lw	%x6, 0(%x2)  #184 pc 800
	ret #pc 804
	nop #pc 808
f.196:  #pc 812
	bge	%x6, %x0, 12  #210 pc 812
	j	bge_else.391 #pc 816
	nop #pc 820
	sw	%x6, 0(%x2)  #211 pc 824
	sw	%x29, 4(%x2)  #211 pc 828
	sw	%x1, 8(%x2)  #211 pc 832
	addi	%x2, %x2, 12  #211 pc 836
	jal	%x1, print_int.176  #211 pc 840
	addi	%x2, %x2, -12  #211 pc 844
	lw	%x1, 8(%x2) #211 pc 848
	addi	%x6, %x0, 1  #0 pc 852
	lw	%x7, 4(%x2)  #212 pc 856
	sw	%x1, 8(%x2)  #212 pc 860
	addi	%x2, %x2, 12  #212 pc 864
	jal	%x1, create_array.186  #212 pc 868
	addi	%x2, %x2, -12  #212 pc 872
	lw	%x1, 8(%x2) #212 pc 876
	lw	%x29, 0(%x6)  #213 pc 880
	lw	%x6, 0(%x2)  #213 pc 884
	addi	%x6, %x6, -1  #213 pc 888
	lw	%x30, 0(%x29)  #213 pc 892
	jalr	%x0, %x30, 0  #213 pc 896
	nop #pc 900
bge_else.391: #pc 904
	ret #pc 904
	nop #pc 908
.global	min_caml_start
min_caml_start:
	addi	%x31, %x0, 1
	slli	%x4, %x31, 13
	slli	%x5, %x31, 16
	slli	%x2, %x31, 24
	add	%x3, %x2, %x4
	addi	%x29, %x3, 0  #209 pc 932
	addi	%x3, %x3, 4  #209 pc 936
	addi	%x6, %x0, 812  #209 f.196 pc 940
	sw	%x6, 0(%x29)  #209 pc 944
	addi	%x6, %x0, 9  #0 pc 948
	sw	%x1, 0(%x2)  #214 pc 952
	lw	%x30, 0(%x29)  #214 pc 956
	addi	%x2, %x2, 4  #214 pc 960
	jalr	%x1, %x30, 0  #214 pc 964
	addi	%x2, %x2, -4  #214 pc 968
	lw	%x1, 0(%x2)  #214 pc 972
