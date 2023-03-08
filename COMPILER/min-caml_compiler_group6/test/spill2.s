.section	".rodata"
.align	8
.section	".text"
	nop
	j min_caml_start
mul_abs.175:  #pc 8
	addi	%x31, %x0, -1  #pc 8
	beq	%x8, %x31, 12  #57 pc 12
	j	be_else.449 #pc 16
	nop #pc 20
	addi	%x6, %x9, 0  #58 pc 24
	ret #pc 28
	nop #pc 32
be_else.449: #pc 36
	addi	%x10, %x0, 1  #0 pc 36
	sll	%x10, %x10, %x8  #60 pc 40
	and	%x10, %x7, %x10  #60 pc 44
	beq	%x10, %x0, 12  #60 pc 48
	j	be_else.450 #pc 52
	nop #pc 56
	addi	%x8, %x8, -1  #61 pc 60
	j	mul_abs.175  #61 pc 64
	nop #pc 68
be_else.450: #pc 72
	addi	%x10, %x8, -1  #63 pc 72
	sll	%x8, %x6, %x8  #63 pc 76
	add	%x9, %x9, %x8  #63 pc 80
	addi	%x8, %x10, 0  #0 pc 84
	j	mul_abs.175  #63 pc 88
	nop #pc 92
div_abs.183:  #pc 96
	addi	%x31, %x0, -1  #pc 96
	beq	%x8, %x31, 12  #77 pc 100
	j	be_else.451 #pc 104
	nop #pc 108
	addi	%x6, %x9, 0  #78 pc 112
	ret #pc 116
	nop #pc 120
be_else.451: #pc 124
	srl	%x10, %x6, %x8  #80 pc 124
	bge	%x10, %x7, 12  #80 pc 128
	j	ble_else.452 #pc 132
	nop #pc 136
	sll	%x10, %x7, %x8  #81 pc 140
	sub	%x6, %x6, %x10  #81 pc 144
	addi	%x10, %x8, -1  #81 pc 148
	addi	%x11, %x0, 1  #0 pc 152
	sll	%x8, %x11, %x8  #81 pc 156
	add	%x9, %x9, %x8  #81 pc 160
	addi	%x8, %x10, 0  #0 pc 164
	j	div_abs.183  #81 pc 168
	nop #pc 172
ble_else.452: #pc 176
	addi	%x8, %x8, -1  #83 pc 176
	j	div_abs.183  #83 pc 180
	nop #pc 184
print_int.193:  #pc 188
	bge	%x6, %x0, 12  #100 pc 188
	j	bge_else.453 #pc 192
	nop #pc 196
	addi	%x31, %x0, 10  #pc 200
	bge	%x6, %x31, 12  #104 pc 204
	j	bge_else.454 #pc 208
	nop #pc 212
	bge	%x6, %x0, 12  #107 pc 216
	j	bge_else.455 #pc 220
	nop #pc 224
	addi	%x7, %x6, 0  #107 pc 228
	j	bge_cont.456 #pc 232
	nop #pc 236
bge_else.455: #pc 240
	sub	%x7, %x0, %x6  #107 pc 240
bge_cont.456: #pc 244
	addi	%x8, %x0, 10  #0 pc 244
	addi	%x9, %x0, 30  #0 pc 248
	addi	%x10, %x0, 0  #0 pc 252
	sw	%x6, 0(%x2)  #107 pc 256
	addi	%x6, %x7, 0  #0 pc 260
	addi	%x7, %x8, 0  #0 pc 264
	addi	%x8, %x9, 0  #0 pc 268
	addi	%x9, %x10, 0  #0 pc 272
	sw	%x1, 4(%x2)  #107 pc 276
	addi	%x2, %x2, 8  #107 pc 280
	jal	%x1, div_abs.183  #107 pc 284
	addi	%x2, %x2, -8  #107 pc 288
	lw	%x1, 4(%x2) #107 pc 292
	lw	%x7, 0(%x2)  #107 pc 296
	srli	%x8, %x7, 31  #107 pc 300
	beq	%x8, %x0, 12  #107 pc 304
	j	be_else.457 #pc 308
	nop #pc 312
	j	be_cont.458 #pc 316
	nop #pc 320
be_else.457: #pc 324
	sub	%x6, %x0, %x6  #107 pc 324
be_cont.458: #pc 328
	sw	%x6, 4(%x2)  #108 pc 328
	sw	%x1, 8(%x2)  #108 pc 332
	addi	%x2, %x2, 12  #108 pc 336
	jal	%x1, print_int.193  #108 pc 340
	addi	%x2, %x2, -12  #108 pc 344
	lw	%x1, 8(%x2) #108 pc 348
	lw	%x6, 4(%x2)  #109 pc 352
	bge	%x6, %x0, 12  #109 pc 356
	j	bge_else.459 #pc 360
	nop #pc 364
	addi	%x7, %x6, 0  #109 pc 368
	j	bge_cont.460 #pc 372
	nop #pc 376
bge_else.459: #pc 380
	sub	%x7, %x0, %x6  #109 pc 380
bge_cont.460: #pc 384
	addi	%x8, %x0, 10  #0 pc 384
	addi	%x9, %x0, 30  #0 pc 388
	addi	%x10, %x0, 0  #0 pc 392
	addi	%x6, %x7, 0  #0 pc 396
	addi	%x7, %x8, 0  #0 pc 400
	addi	%x8, %x9, 0  #0 pc 404
	addi	%x9, %x10, 0  #0 pc 408
	sw	%x1, 8(%x2)  #109 pc 412
	addi	%x2, %x2, 12  #109 pc 416
	jal	%x1, mul_abs.175  #109 pc 420
	addi	%x2, %x2, -12  #109 pc 424
	lw	%x1, 8(%x2) #109 pc 428
	lw	%x7, 4(%x2)  #109 pc 432
	srli	%x7, %x7, 31  #109 pc 436
	beq	%x7, %x0, 12  #109 pc 440
	j	be_else.461 #pc 444
	nop #pc 448
	j	be_cont.462 #pc 452
	nop #pc 456
be_else.461: #pc 460
	sub	%x6, %x0, %x6  #109 pc 460
be_cont.462: #pc 464
	lw	%x7, 0(%x2)  #109 pc 464
	sub	%x6, %x7, %x6  #109 pc 468
	addi	%x6, %x6, 48  #109 pc 472
	sw	%x6, 0(%x5)  #109 pc 476
	addi	%x5, %x5, 4  #109 pc 480
	ret #pc 484
	nop #pc 488
bge_else.454: #pc 492
	addi	%x6, %x6, 48  #105 pc 492
	sw	%x6, 0(%x5)  #105 pc 496
	addi	%x5, %x5, 4  #105 pc 500
	ret #pc 504
	nop #pc 508
bge_else.453: #pc 512
	addi	%x7, %x0, 45  #0 pc 512
	sw	%x7, 0(%x5)  #101 pc 516
	addi	%x5, %x5, 4  #101 pc 520
	sub	%x6, %x0, %x6  #102 pc 524
	j	print_int.193  #102 pc 528
	nop #pc 532
assign_array.199:  #pc 536
	bge	%x8, %x0, 12  #169 pc 536
	j	bge_else.465 #pc 540
	nop #pc 544
	beq	%x8, %x0, 12  #172 pc 548
	j	be_else.466 #pc 552
	nop #pc 556
	slli	%x8, %x8, 2  #173 pc 560
	add	%x31, %x8, %x6  #173 pc 564
	sw	%x7, 0(%x31)  #173 pc 568
	ret #pc 572
	nop #pc 576
be_else.466: #pc 580
	slli	%x9, %x8, 2  #175 pc 580
	add	%x31, %x9, %x6  #175 pc 584
	sw	%x7, 0(%x31)  #175 pc 588
	addi	%x8, %x8, -1  #176 pc 592
	j	assign_array.199  #176 pc 596
	nop #pc 600
bge_else.465: #pc 604
	ret #pc 604
	nop #pc 608
.global	min_caml_start
min_caml_start:
	addi	%x31, %x0, 1
	slli	%x4, %x31, 13
	slli	%x5, %x31, 16
	slli	%x2, %x31, 24
	add	%x3, %x2, %x4
	addi	%x7, %x0, 1  #0 pc 632
	addi	%x6, %x3, 0  #210 pc 636
	addi	%x8, %x6, 0  #210 pc 640
	addi	%x6, %x6, 40  #210 pc 644
	addi	%x3, %x6, 0  #210 pc 648
	addi	%x6, %x0, 9  #0 pc 652
	sw	%x8, 0(%x2)  #210 pc 656
	addi	%x30, %x8, 0  #0 pc 660
	addi	%x8, %x6, 0  #0 pc 664
	addi	%x6, %x30, 0  #0 pc 668
	sw	%x1, 4(%x2)  #210 pc 672
	addi	%x2, %x2, 8  #210 pc 676
	jal	%x1, assign_array.199  #210 pc 680
	addi	%x2, %x2, -8  #210 pc 684
	lw	%x1, 4(%x2) #210 pc 688
	addi	%x6, %x0, 12345  #0 pc 692
	lw	%x7, 0(%x2)  #213 pc 696
	lw	%x8, 0(%x7)  #213 pc 700
	add	%x9, %x8, %x8  #214 pc 704
	add	%x10, %x9, %x9  #215 pc 708
	add	%x11, %x10, %x10  #216 pc 712
	add	%x12, %x11, %x11  #217 pc 716
	add	%x13, %x12, %x12  #218 pc 720
	add	%x14, %x13, %x13  #219 pc 724
	add	%x15, %x14, %x14  #220 pc 728
	add	%x16, %x15, %x15  #221 pc 732
	add	%x17, %x16, %x16  #222 pc 736
	add	%x18, %x17, %x17  #223 pc 740
	add	%x19, %x18, %x18  #224 pc 744
	add	%x20, %x19, %x19  #225 pc 748
	add	%x21, %x20, %x20  #226 pc 752
	add	%x22, %x21, %x21  #227 pc 756
	add	%x23, %x22, %x22  #228 pc 760
	lw	%x7, 4(%x7)  #230 pc 764
	beq	%x7, %x0, 12  #230 pc 768
	j	be_else.469 #pc 772
	nop #pc 776
	addi	%x6, %x0, 67891  #0 pc 780
	j	be_cont.470 #pc 784
	nop #pc 788
be_else.469: #pc 792
	add	%x7, %x8, %x9  #231 pc 792
	add	%x7, %x7, %x10  #231 pc 796
	add	%x7, %x7, %x11  #231 pc 800
	add	%x7, %x7, %x12  #231 pc 804
	add	%x7, %x7, %x13  #231 pc 808
	add	%x7, %x7, %x14  #231 pc 812
	add	%x7, %x7, %x15  #231 pc 816
	add	%x7, %x7, %x16  #231 pc 820
	add	%x7, %x7, %x17  #231 pc 824
	add	%x7, %x7, %x18  #231 pc 828
	add	%x7, %x7, %x19  #231 pc 832
	add	%x7, %x7, %x20  #231 pc 836
	add	%x7, %x7, %x21  #231 pc 840
	add	%x7, %x7, %x22  #231 pc 844
	add	%x7, %x7, %x23  #231 pc 848
	add	%x6, %x7, %x6  #231 pc 852
be_cont.470: #pc 856
	sw	%x1, 4(%x2)  #229 pc 856
	addi	%x2, %x2, 8  #229 pc 860
	jal	%x1, print_int.193  #229 pc 864
	addi	%x2, %x2, -8  #229 pc 868
	lw	%x1, 4(%x2) #229 pc 872
