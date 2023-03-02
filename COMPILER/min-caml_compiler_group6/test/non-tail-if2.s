.section	".rodata"
.align	8
.section	".text"
	nop
	j min_caml_start
mul_abs.162:  #pc 8
	addi	%x31, %x0, -1  #pc 8
	beq	%x8, %x31, 12  #57 pc 12
	j	be_else.403 #pc 16
	nop #pc 20
	addi	%x6, %x9, 0  #58 pc 24
	ret #pc 28
	nop #pc 32
be_else.403: #pc 36
	addi	%x10, %x0, 1  #0 pc 36
	sll	%x10, %x10, %x8  #60 pc 40
	and	%x10, %x7, %x10  #60 pc 44
	beq	%x10, %x0, 12  #60 pc 48
	j	be_else.404 #pc 52
	nop #pc 56
	addi	%x8, %x8, -1  #61 pc 60
	j	mul_abs.162  #61 pc 64
	nop #pc 68
be_else.404: #pc 72
	addi	%x10, %x8, -1  #63 pc 72
	sll	%x8, %x6, %x8  #63 pc 76
	add	%x9, %x9, %x8  #63 pc 80
	addi	%x8, %x10, 0  #0 pc 84
	j	mul_abs.162  #63 pc 88
	nop #pc 92
div_abs.170:  #pc 96
	addi	%x31, %x0, -1  #pc 96
	beq	%x8, %x31, 12  #77 pc 100
	j	be_else.405 #pc 104
	nop #pc 108
	addi	%x6, %x9, 0  #78 pc 112
	ret #pc 116
	nop #pc 120
be_else.405: #pc 124
	srl	%x10, %x6, %x8  #80 pc 124
	bge	%x10, %x7, 12  #80 pc 128
	j	ble_else.406 #pc 132
	nop #pc 136
	sll	%x10, %x7, %x8  #81 pc 140
	sub	%x6, %x6, %x10  #81 pc 144
	addi	%x10, %x8, -1  #81 pc 148
	addi	%x11, %x0, 1  #0 pc 152
	sll	%x8, %x11, %x8  #81 pc 156
	add	%x9, %x9, %x8  #81 pc 160
	addi	%x8, %x10, 0  #0 pc 164
	j	div_abs.170  #81 pc 168
	nop #pc 172
ble_else.406: #pc 176
	addi	%x8, %x8, -1  #83 pc 176
	j	div_abs.170  #83 pc 180
	nop #pc 184
print_int.180:  #pc 188
	bge	%x6, %x0, 12  #100 pc 188
	j	bge_else.407 #pc 192
	nop #pc 196
	addi	%x31, %x0, 10  #pc 200
	bge	%x6, %x31, 12  #104 pc 204
	j	bge_else.408 #pc 208
	nop #pc 212
	bge	%x6, %x0, 12  #107 pc 216
	j	bge_else.409 #pc 220
	nop #pc 224
	addi	%x7, %x6, 0  #107 pc 228
	j	bge_cont.410 #pc 232
	nop #pc 236
bge_else.409: #pc 240
	sub	%x7, %x0, %x6  #107 pc 240
bge_cont.410: #pc 244
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
	jal	%x1, div_abs.170  #107 pc 284
	addi	%x2, %x2, -8  #107 pc 288
	lw	%x1, 4(%x2) #107 pc 292
	lw	%x7, 0(%x2)  #107 pc 296
	srli	%x8, %x7, 31  #107 pc 300
	beq	%x8, %x0, 12  #107 pc 304
	j	be_else.411 #pc 308
	nop #pc 312
	j	be_cont.412 #pc 316
	nop #pc 320
be_else.411: #pc 324
	sub	%x6, %x0, %x6  #107 pc 324
be_cont.412: #pc 328
	sw	%x6, 4(%x2)  #108 pc 328
	sw	%x1, 8(%x2)  #108 pc 332
	addi	%x2, %x2, 12  #108 pc 336
	jal	%x1, print_int.180  #108 pc 340
	addi	%x2, %x2, -12  #108 pc 344
	lw	%x1, 8(%x2) #108 pc 348
	lw	%x6, 4(%x2)  #109 pc 352
	bge	%x6, %x0, 12  #109 pc 356
	j	bge_else.413 #pc 360
	nop #pc 364
	addi	%x7, %x6, 0  #109 pc 368
	j	bge_cont.414 #pc 372
	nop #pc 376
bge_else.413: #pc 380
	sub	%x7, %x0, %x6  #109 pc 380
bge_cont.414: #pc 384
	addi	%x8, %x0, 10  #0 pc 384
	addi	%x9, %x0, 30  #0 pc 388
	addi	%x10, %x0, 0  #0 pc 392
	addi	%x6, %x7, 0  #0 pc 396
	addi	%x7, %x8, 0  #0 pc 400
	addi	%x8, %x9, 0  #0 pc 404
	addi	%x9, %x10, 0  #0 pc 408
	sw	%x1, 8(%x2)  #109 pc 412
	addi	%x2, %x2, 12  #109 pc 416
	jal	%x1, mul_abs.162  #109 pc 420
	addi	%x2, %x2, -12  #109 pc 424
	lw	%x1, 8(%x2) #109 pc 428
	lw	%x7, 4(%x2)  #109 pc 432
	srli	%x7, %x7, 31  #109 pc 436
	beq	%x7, %x0, 12  #109 pc 440
	j	be_else.415 #pc 444
	nop #pc 448
	j	be_cont.416 #pc 452
	nop #pc 456
be_else.415: #pc 460
	sub	%x6, %x0, %x6  #109 pc 460
be_cont.416: #pc 464
	lw	%x7, 0(%x2)  #109 pc 464
	sub	%x6, %x7, %x6  #109 pc 468
	addi	%x6, %x6, 48  #109 pc 472
	sw	%x6, 0(%x5)  #109 pc 476
	addi	%x5, %x5, 4  #109 pc 480
	ret #pc 484
	nop #pc 488
bge_else.408: #pc 492
	addi	%x6, %x6, 48  #105 pc 492
	sw	%x6, 0(%x5)  #105 pc 496
	addi	%x5, %x5, 4  #105 pc 500
	ret #pc 504
	nop #pc 508
bge_else.407: #pc 512
	addi	%x7, %x0, 45  #0 pc 512
	sw	%x7, 0(%x5)  #101 pc 516
	addi	%x5, %x5, 4  #101 pc 520
	sub	%x6, %x0, %x6  #102 pc 524
	j	print_int.180  #102 pc 528
	nop #pc 532
assign_array.186:  #pc 536
	bge	%x8, %x0, 12  #169 pc 536
	j	bge_else.419 #pc 540
	nop #pc 544
	beq	%x8, %x0, 12  #172 pc 548
	j	be_else.420 #pc 552
	nop #pc 556
	slli	%x8, %x8, 2  #173 pc 560
	add	%x31, %x8, %x6  #173 pc 564
	sw	%x7, 0(%x31)  #173 pc 568
	ret #pc 572
	nop #pc 576
be_else.420: #pc 580
	slli	%x9, %x8, 2  #175 pc 580
	add	%x31, %x9, %x6  #175 pc 584
	sw	%x7, 0(%x31)  #175 pc 588
	addi	%x8, %x8, -1  #176 pc 592
	j	assign_array.186  #176 pc 596
	nop #pc 600
bge_else.419: #pc 604
	ret #pc 604
	nop #pc 608
.global	min_caml_start
min_caml_start:
	addi	%x31, %x0, 1
	slli	%x4, %x31, 13
	slli	%x5, %x31, 16
	slli	%x2, %x31, 24
	add	%x3, %x2, %x4
	addi	%x7, %x0, 3  #0 pc 632
	addi	%x6, %x3, 0  #208 pc 636
	addi	%x8, %x6, 0  #208 pc 640
	addi	%x6, %x6, 40  #208 pc 644
	addi	%x3, %x6, 0  #208 pc 648
	addi	%x6, %x0, 9  #0 pc 652
	sw	%x8, 0(%x2)  #208 pc 656
	addi	%x30, %x8, 0  #0 pc 660
	addi	%x8, %x6, 0  #0 pc 664
	addi	%x6, %x30, 0  #0 pc 668
	sw	%x1, 4(%x2)  #208 pc 672
	addi	%x2, %x2, 8  #208 pc 676
	jal	%x1, assign_array.186  #208 pc 680
	addi	%x2, %x2, -8  #208 pc 684
	lw	%x1, 4(%x2) #208 pc 688
	addi	%x6, %x0, 67890  #0 pc 692
	lw	%x7, 0(%x2)  #210 pc 696
	lw	%x8, 0(%x7)  #210 pc 700
	addi	%x31, %x0, 3  #pc 704
	beq	%x8, %x31, 12  #210 pc 708
	j	be_else.423 #pc 712
	nop #pc 716
	addi	%x8, %x0, 12345  #0 pc 720
	lw	%x7, 4(%x7)  #210 pc 724
	add	%x7, %x8, %x7  #210 pc 728
	add	%x6, %x7, %x6  #210 pc 732
	j	be_cont.424 #pc 736
	nop #pc 740
be_else.423: #pc 744
	addi	%x6, %x0, 7  #0 pc 744
be_cont.424: #pc 748
	sw	%x1, 4(%x2)  #210 pc 748
	addi	%x2, %x2, 8  #210 pc 752
	jal	%x1, print_int.180  #210 pc 756
	addi	%x2, %x2, -8  #210 pc 760
	lw	%x1, 4(%x2) #210 pc 764
