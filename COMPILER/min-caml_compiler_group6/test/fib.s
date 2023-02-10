.section	".rodata"
.align	8
.section	".text"
mul_abs.174:  #pc:0
	addi	%x24, %x0, -1  #pc:4
	beq	%x7, %x24, 12  #57 pc:8
	j	be_else.390 #pc:12
	nop #pc:16
	mv	%x5, %x9  #58 pc:20
	ret #pc:24
	nop #pc:28
be_else.390: #pc:28
	addi	%x10, %x0, 1  #0 pc:32
	sll	%x10, %x10, %x7  #60 pc:36
	and	%x10, %x6, %x10  #60 pc:40
	beq	%x10, %x0, 12  #60 pc:44
	j	be_else.391 #pc:48
	nop #pc:52
	addi	%x7, %x7, -1  #61 pc:56
	j	mul_abs.174  #61 pc:60
	nop #pc:64
be_else.391: #pc:64
	addi	%x10, %x7, -1  #63 pc:68
	sll	%x7, %x5, %x7  #63 pc:72
	add	%x9, %x9, %x7  #63 pc:76
	mv	%x7, %x10 #pc:80
	j	mul_abs.174  #63 pc:84
	nop #pc:88
mul.179:  #pc:88
	bge	%x5, %x0, 12  #67 pc:92
	j	bge_else.392 #pc:96
	nop #pc:100
	mv	%x7, %x5  #67 pc:104
	j	bge_cont.393 #pc:108
	nop #pc:112
bge_else.392: #pc:112
	sub	%x7, %x0, %x5  #67 pc:116
bge_cont.393: #pc:116
	bge	%x6, %x0, 12  #68 pc:120
	j	bge_else.394 #pc:124
	nop #pc:128
	mv	%x9, %x6  #68 pc:132
	j	bge_cont.395 #pc:136
	nop #pc:140
bge_else.394: #pc:140
	sub	%x9, %x0, %x6  #68 pc:144
bge_cont.395: #pc:144
	addi	%x10, %x0, 30  #0 pc:148
	addi	%x11, %x0, 0  #0 pc:152
	sw	%x6, 0(%x2)  #69 pc:156
	sw	%x5, 4(%x2)  #69 pc:160
	mv	%x6, %x9 #pc:164
	mv	%x5, %x7 #pc:168
	mv	%x9, %x11 #pc:172
	mv	%x7, %x10 #pc:176
	sw	%x1, 12(%x2)  #69 pc:180
	addi	%x2, %x2, 16  #69 pc:184
	jal	%x1, mul_abs.174  #69 pc:188
	addi	%x2, %x2, -16  #69 pc:192
	lw	%x1, 12(%x2) #69 pc:196
	lw	%x6, 4(%x2)  #70 pc:200
	srli	%x6, %x6, 31  #70 pc:204
	lw	%x7, 0(%x2)  #70 pc:208
	srli	%x7, %x7, 31  #70 pc:212
	beq	%x6, %x7, 12  #70 pc:216
	j	be_else.396 #pc:220
	nop #pc:224
	ret #pc:228
	nop #pc:232
be_else.396: #pc:232
	sub	%x5, %x0, %x5  #73 pc:236
	ret #pc:240
	nop #pc:244
div_abs.182:  #pc:244
	addi	%x24, %x0, -1  #pc:248
	beq	%x7, %x24, 12  #77 pc:252
	j	be_else.397 #pc:256
	nop #pc:260
	mv	%x5, %x9  #78 pc:264
	ret #pc:268
	nop #pc:272
be_else.397: #pc:272
	srl	%x10, %x5, %x7  #80 pc:276
	bge	%x10, %x6, 12  #80 pc:280
	j	ble_else.398 #pc:284
	nop #pc:288
	sll	%x10, %x6, %x7  #81 pc:292
	sub	%x5, %x5, %x10  #81 pc:296
	addi	%x10, %x7, -1  #81 pc:300
	addi	%x11, %x0, 1  #0 pc:304
	sll	%x7, %x11, %x7  #81 pc:308
	add	%x9, %x9, %x7  #81 pc:312
	mv	%x7, %x10 #pc:316
	j	div_abs.182  #81 pc:320
	nop #pc:324
ble_else.398: #pc:324
	addi	%x7, %x7, -1  #83 pc:328
	j	div_abs.182  #83 pc:332
	nop #pc:336
div.187:  #pc:336
	bge	%x5, %x0, 12  #87 pc:340
	j	bge_else.399 #pc:344
	nop #pc:348
	mv	%x7, %x5  #87 pc:352
	j	bge_cont.400 #pc:356
	nop #pc:360
bge_else.399: #pc:360
	sub	%x7, %x0, %x5  #87 pc:364
bge_cont.400: #pc:364
	bge	%x6, %x0, 12  #88 pc:368
	j	bge_else.401 #pc:372
	nop #pc:376
	mv	%x9, %x6  #88 pc:380
	j	bge_cont.402 #pc:384
	nop #pc:388
bge_else.401: #pc:388
	sub	%x9, %x0, %x6  #88 pc:392
bge_cont.402: #pc:392
	addi	%x10, %x0, 30  #0 pc:396
	addi	%x11, %x0, 0  #0 pc:400
	sw	%x6, 0(%x2)  #89 pc:404
	sw	%x5, 4(%x2)  #89 pc:408
	mv	%x6, %x9 #pc:412
	mv	%x5, %x7 #pc:416
	mv	%x9, %x11 #pc:420
	mv	%x7, %x10 #pc:424
	sw	%x1, 12(%x2)  #89 pc:428
	addi	%x2, %x2, 16  #89 pc:432
	jal	%x1, div_abs.182  #89 pc:436
	addi	%x2, %x2, -16  #89 pc:440
	lw	%x1, 12(%x2) #89 pc:444
	lw	%x6, 4(%x2)  #90 pc:448
	srli	%x6, %x6, 31  #90 pc:452
	lw	%x7, 0(%x2)  #90 pc:456
	srli	%x7, %x7, 31  #90 pc:460
	beq	%x6, %x7, 12  #90 pc:464
	j	be_else.403 #pc:468
	nop #pc:472
	ret #pc:476
	nop #pc:480
be_else.403: #pc:480
	sub	%x5, %x0, %x5  #93 pc:484
	ret #pc:488
	nop #pc:492
print_int.192:  #pc:492
	bge	%x5, %x0, 12  #100 pc:496
	j	bge_else.404 #pc:500
	nop #pc:504
	addi	%x24, %x0, 10  #pc:508
	bge	%x5, %x24, 12  #104 pc:512
	j	bge_else.405 #pc:516
	nop #pc:520
	addi	%x6, %x0, 10  #0 pc:524
	sw	%x5, 0(%x2)  #107 pc:528
	sw	%x1, 4(%x2)  #107 pc:532
	addi	%x2, %x2, 8  #107 pc:536
	jal	%x1, div.187  #107 pc:540
	addi	%x2, %x2, -8  #107 pc:544
	lw	%x1, 4(%x2) #107 pc:548
	sw	%x5, 4(%x2)  #108 pc:552
	sw	%x1, 12(%x2)  #108 pc:556
	addi	%x2, %x2, 16  #108 pc:560
	jal	%x1, print_int.192  #108 pc:564
	addi	%x2, %x2, -16  #108 pc:568
	lw	%x1, 12(%x2) #108 pc:572
	addi	%x6, %x0, 10  #0 pc:576
	lw	%x5, 4(%x2)  #109 pc:580
	sw	%x1, 12(%x2)  #109 pc:584
	addi	%x2, %x2, 16  #109 pc:588
	jal	%x1, mul.179  #109 pc:592
	addi	%x2, %x2, -16  #109 pc:596
	lw	%x1, 12(%x2) #109 pc:600
	lw	%x6, 0(%x2)  #109 pc:604
	sub	%x5, %x6, %x5  #109 pc:608
	addi	%x5, %x5, 48  #109 pc:612
	out	%x5  #109 pc:616
	ret #pc:620
	nop #pc:624
bge_else.405: #pc:624
	addi	%x5, %x5, 48  #105 pc:628
	out	%x5  #105 pc:632
	ret #pc:636
	nop #pc:640
bge_else.404: #pc:640
	sub	%x5, %x0, %x5  #102 pc:644
	j	print_int.192  #102 pc:648
	nop #pc:652
fib.206:  #pc:652
	addi	%x24, %x0, 1  #pc:656
	bge	%x24, %x5, 12  #161 pc:660
	j	ble_else.408 #pc:664
	nop #pc:668
	ret #pc:672
	nop #pc:676
ble_else.408: #pc:676
	addi	%x6, %x5, -1  #162 pc:680
	sw	%x5, 0(%x2)  #162 pc:684
	mv	%x5, %x6 #pc:688
	sw	%x1, 4(%x2)  #162 pc:692
	addi	%x2, %x2, 8  #162 pc:696
	jal	%x1, fib.206  #162 pc:700
	addi	%x2, %x2, -8  #162 pc:704
	lw	%x1, 4(%x2) #162 pc:708
	lw	%x6, 0(%x2)  #162 pc:712
	addi	%x6, %x6, -2  #162 pc:716
	sw	%x5, 4(%x2)  #162 pc:720
	mv	%x5, %x6 #pc:724
	sw	%x1, 12(%x2)  #162 pc:728
	addi	%x2, %x2, 16  #162 pc:732
	jal	%x1, fib.206  #162 pc:736
	addi	%x2, %x2, -16  #162 pc:740
	lw	%x1, 12(%x2) #162 pc:744
	lw	%x6, 4(%x2)  #162 pc:748
	add	%x5, %x6, %x5  #162 pc:752
	ret #pc:756
	nop #pc:760
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 30  #0 pc:764
	sw	%x1, 12(%x2)  #163 pc:768
	addi	%x2, %x2, 16  #163 pc:772
	jal	%x1, fib.206  #163 pc:776
	addi	%x2, %x2, -16  #163 pc:780
	lw	%x1, 12(%x2) #163 pc:784
	sw	%x1, 12(%x2)  #163 pc:788
	addi	%x2, %x2, 16  #163 pc:792
	jal	%x1, print_int.192  #163 pc:796
	addi	%x2, %x2, -16  #163 pc:800
	lw	%x1, 12(%x2) #163 pc:804
	addi	%x2, %x2, 112
