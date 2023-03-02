.section	".rodata"
.align	8
l.794:	! 12.000000
l.790:	! 11.000000
l.786:	! 10.000000
l.782:	! 9.000000
l.778:	! 8.000000
l.774:	! 7.000000
l.770:	! 6.000000
l.766:	! 5.000000
l.762:	! 4.000000
l.758:	! 3.000000
l.754:	! 2.000000
l.750:	! 1.000000
l.745:	! 0.000000
.section	".text"
	nop
	j min_caml_start
mul_abs.281:  #pc 8
	addi	%x31, %x0, -1  #pc 8
	beq	%x8, %x31, 12  #57 pc 12
	j	be_else.849 #pc 16
	nop #pc 20
	addi	%x6, %x9, 0  #58 pc 24
	ret #pc 28
	nop #pc 32
be_else.849: #pc 36
	addi	%x10, %x0, 1  #0 pc 36
	sll	%x10, %x10, %x8  #60 pc 40
	and	%x10, %x7, %x10  #60 pc 44
	beq	%x10, %x0, 12  #60 pc 48
	j	be_else.850 #pc 52
	nop #pc 56
	addi	%x8, %x8, -1  #61 pc 60
	j	mul_abs.281  #61 pc 64
	nop #pc 68
be_else.850: #pc 72
	addi	%x10, %x8, -1  #63 pc 72
	sll	%x8, %x6, %x8  #63 pc 76
	add	%x9, %x9, %x8  #63 pc 80
	addi	%x8, %x10, 0  #0 pc 84
	j	mul_abs.281  #63 pc 88
	nop #pc 92
div_abs.289:  #pc 96
	addi	%x31, %x0, -1  #pc 96
	beq	%x8, %x31, 12  #77 pc 100
	j	be_else.851 #pc 104
	nop #pc 108
	addi	%x6, %x9, 0  #78 pc 112
	ret #pc 116
	nop #pc 120
be_else.851: #pc 124
	srl	%x10, %x6, %x8  #80 pc 124
	bge	%x10, %x7, 12  #80 pc 128
	j	ble_else.852 #pc 132
	nop #pc 136
	sll	%x10, %x7, %x8  #81 pc 140
	sub	%x6, %x6, %x10  #81 pc 144
	addi	%x10, %x8, -1  #81 pc 148
	addi	%x11, %x0, 1  #0 pc 152
	sll	%x8, %x11, %x8  #81 pc 156
	add	%x9, %x9, %x8  #81 pc 160
	addi	%x8, %x10, 0  #0 pc 164
	j	div_abs.289  #81 pc 168
	nop #pc 172
ble_else.852: #pc 176
	addi	%x8, %x8, -1  #83 pc 176
	j	div_abs.289  #83 pc 180
	nop #pc 184
print_int.299:  #pc 188
	bge	%x6, %x0, 12  #100 pc 188
	j	bge_else.853 #pc 192
	nop #pc 196
	addi	%x31, %x0, 10  #pc 200
	bge	%x6, %x31, 12  #104 pc 204
	j	bge_else.854 #pc 208
	nop #pc 212
	bge	%x6, %x0, 12  #107 pc 216
	j	bge_else.855 #pc 220
	nop #pc 224
	addi	%x7, %x6, 0  #107 pc 228
	j	bge_cont.856 #pc 232
	nop #pc 236
bge_else.855: #pc 240
	sub	%x7, %x0, %x6  #107 pc 240
bge_cont.856: #pc 244
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
	jal	%x1, div_abs.289  #107 pc 284
	addi	%x2, %x2, -8  #107 pc 288
	lw	%x1, 4(%x2) #107 pc 292
	lw	%x7, 0(%x2)  #107 pc 296
	srli	%x8, %x7, 31  #107 pc 300
	beq	%x8, %x0, 12  #107 pc 304
	j	be_else.857 #pc 308
	nop #pc 312
	j	be_cont.858 #pc 316
	nop #pc 320
be_else.857: #pc 324
	sub	%x6, %x0, %x6  #107 pc 324
be_cont.858: #pc 328
	sw	%x6, 4(%x2)  #108 pc 328
	sw	%x1, 8(%x2)  #108 pc 332
	addi	%x2, %x2, 12  #108 pc 336
	jal	%x1, print_int.299  #108 pc 340
	addi	%x2, %x2, -12  #108 pc 344
	lw	%x1, 8(%x2) #108 pc 348
	lw	%x6, 4(%x2)  #109 pc 352
	bge	%x6, %x0, 12  #109 pc 356
	j	bge_else.859 #pc 360
	nop #pc 364
	addi	%x7, %x6, 0  #109 pc 368
	j	bge_cont.860 #pc 372
	nop #pc 376
bge_else.859: #pc 380
	sub	%x7, %x0, %x6  #109 pc 380
bge_cont.860: #pc 384
	addi	%x8, %x0, 10  #0 pc 384
	addi	%x9, %x0, 30  #0 pc 388
	addi	%x10, %x0, 0  #0 pc 392
	addi	%x6, %x7, 0  #0 pc 396
	addi	%x7, %x8, 0  #0 pc 400
	addi	%x8, %x9, 0  #0 pc 404
	addi	%x9, %x10, 0  #0 pc 408
	sw	%x1, 8(%x2)  #109 pc 412
	addi	%x2, %x2, 12  #109 pc 416
	jal	%x1, mul_abs.281  #109 pc 420
	addi	%x2, %x2, -12  #109 pc 424
	lw	%x1, 8(%x2) #109 pc 428
	lw	%x7, 4(%x2)  #109 pc 432
	srli	%x7, %x7, 31  #109 pc 436
	beq	%x7, %x0, 12  #109 pc 440
	j	be_else.861 #pc 444
	nop #pc 448
	j	be_cont.862 #pc 452
	nop #pc 456
be_else.861: #pc 460
	sub	%x6, %x0, %x6  #109 pc 460
be_cont.862: #pc 464
	lw	%x7, 0(%x2)  #109 pc 464
	sub	%x6, %x7, %x6  #109 pc 468
	addi	%x6, %x6, 48  #109 pc 472
	sw	%x6, 0(%x5)  #109 pc 476
	addi	%x5, %x5, 4  #109 pc 480
	ret #pc 484
	nop #pc 488
bge_else.854: #pc 492
	addi	%x6, %x6, 48  #105 pc 492
	sw	%x6, 0(%x5)  #105 pc 496
	addi	%x5, %x5, 4  #105 pc 500
	ret #pc 504
	nop #pc 508
bge_else.853: #pc 512
	addi	%x7, %x0, 45  #0 pc 512
	sw	%x7, 0(%x5)  #101 pc 516
	addi	%x5, %x5, 4  #101 pc 520
	sub	%x6, %x0, %x6  #102 pc 524
	j	print_int.299  #102 pc 528
	nop #pc 532
assign_array.305:  #pc 536
	bge	%x8, %x0, 12  #169 pc 536
	j	bge_else.865 #pc 540
	nop #pc 544
	beq	%x8, %x0, 12  #172 pc 548
	j	be_else.866 #pc 552
	nop #pc 556
	slli	%x8, %x8, 2  #173 pc 560
	add	%x31, %x8, %x6  #173 pc 564
	sw	%x7, 0(%x31)  #173 pc 568
	ret #pc 572
	nop #pc 576
be_else.866: #pc 580
	slli	%x9, %x8, 2  #175 pc 580
	add	%x31, %x9, %x6  #175 pc 584
	sw	%x7, 0(%x31)  #175 pc 588
	addi	%x8, %x8, -1  #176 pc 592
	j	assign_array.305  #176 pc 596
	nop #pc 600
bge_else.865: #pc 604
	ret #pc 604
	nop #pc 608
assign_farray.312:  #pc 612
	bge	%x7, %x0, 12  #188 pc 612
	j	bge_else.869 #pc 616
	nop #pc 620
	beq	%x7, %x0, 12  #191 pc 624
	j	be_else.870 #pc 628
	nop #pc 632
	slli	%x7, %x7, 2  #192 pc 636
	add	%x31, %x7, %x6  #192 pc 640
	fsw	%f0, 0(%x31) #192 pc 644
	ret #pc 648
	nop #pc 652
be_else.870: #pc 656
	slli	%x8, %x7, 2  #194 pc 656
	add	%x31, %x8, %x6  #194 pc 660
	fsw	%f0, 0(%x31) #194 pc 664
	addi	%x7, %x7, -1  #195 pc 668
	j	assign_farray.312  #195 pc 672
	nop #pc 676
bge_else.869: #pc 680
	ret #pc 680
	nop #pc 684
loop3.321:  #pc 688
	bge	%x7, %x0, 12  #212 pc 688
	j	bge_else.873 #pc 692
	nop #pc 696
	slli	%x12, %x6, 2  #213 pc 700
	add	%x31, %x12, %x11  #213 pc 704
	lw	%x12, 0(%x31)  #213 pc 708
	slli	%x13, %x6, 2  #213 pc 712
	add	%x31, %x13, %x11  #213 pc 716
	lw	%x13, 0(%x31)  #213 pc 720
	slli	%x14, %x8, 2  #213 pc 724
	add	%x31, %x14, %x13  #213 pc 728
	flw	%f0, 0(%x31)  #213 pc 732
	slli	%x13, %x6, 2  #213 pc 736
	add	%x31, %x13, %x9  #213 pc 740
	lw	%x13, 0(%x31)  #213 pc 744
	slli	%x14, %x7, 2  #213 pc 748
	add	%x31, %x14, %x13  #213 pc 752
	flw	%f1, 0(%x31)  #213 pc 756
	slli	%x13, %x7, 2  #213 pc 760
	add	%x31, %x13, %x10  #213 pc 764
	lw	%x13, 0(%x31)  #213 pc 768
	slli	%x14, %x8, 2  #213 pc 772
	add	%x31, %x14, %x13  #213 pc 776
	flw	%f2, 0(%x31)  #213 pc 780
	fmul	%f1, %f1, %f2  #213 pc 784
	fadd	%f0, %f0, %f1  #213 pc 788
	slli	%x13, %x8, 2  #213 pc 792
	add	%x31, %x13, %x12  #213 pc 796
	fsw	%f0, 0(%x31) #213 pc 800
	addi	%x7, %x7, -1  #214 pc 804
	j	loop3.321  #214 pc 808
	nop #pc 812
bge_else.873: #pc 816
	ret #pc 816
	nop #pc 820
loop2.328:  #pc 824
	bge	%x8, %x0, 12  #216 pc 824
	j	bge_else.875 #pc 828
	nop #pc 832
	addi	%x12, %x7, -1  #217 pc 836
	sw	%x11, 0(%x2)  #217 pc 840
	sw	%x10, 4(%x2)  #217 pc 844
	sw	%x9, 8(%x2)  #217 pc 848
	sw	%x7, 12(%x2)  #217 pc 852
	sw	%x6, 16(%x2)  #217 pc 856
	sw	%x8, 20(%x2)  #217 pc 860
	addi	%x7, %x12, 0  #0 pc 864
	sw	%x1, 24(%x2)  #217 pc 868
	addi	%x2, %x2, 28  #217 pc 872
	jal	%x1, loop3.321  #217 pc 876
	addi	%x2, %x2, -28  #217 pc 880
	lw	%x1, 24(%x2) #217 pc 884
	lw	%x6, 20(%x2)  #218 pc 888
	addi	%x8, %x6, -1  #218 pc 892
	lw	%x6, 16(%x2)  #218 pc 896
	lw	%x7, 12(%x2)  #218 pc 900
	lw	%x9, 8(%x2)  #218 pc 904
	lw	%x10, 4(%x2)  #218 pc 908
	lw	%x11, 0(%x2)  #218 pc 912
	j	loop2.328  #218 pc 916
	nop #pc 920
bge_else.875: #pc 924
	ret #pc 924
	nop #pc 928
loop1.335:  #pc 932
	bge	%x6, %x0, 12  #220 pc 932
	j	bge_else.877 #pc 936
	nop #pc 940
	addi	%x12, %x8, -1  #221 pc 944
	sw	%x11, 0(%x2)  #221 pc 948
	sw	%x10, 4(%x2)  #221 pc 952
	sw	%x9, 8(%x2)  #221 pc 956
	sw	%x8, 12(%x2)  #221 pc 960
	sw	%x7, 16(%x2)  #221 pc 964
	sw	%x6, 20(%x2)  #221 pc 968
	addi	%x8, %x12, 0  #0 pc 972
	sw	%x1, 24(%x2)  #221 pc 976
	addi	%x2, %x2, 28  #221 pc 980
	jal	%x1, loop2.328  #221 pc 984
	addi	%x2, %x2, -28  #221 pc 988
	lw	%x1, 24(%x2) #221 pc 992
	lw	%x6, 20(%x2)  #222 pc 996
	addi	%x6, %x6, -1  #222 pc 1000
	lw	%x7, 16(%x2)  #222 pc 1004
	lw	%x8, 12(%x2)  #222 pc 1008
	lw	%x9, 8(%x2)  #222 pc 1012
	lw	%x10, 4(%x2)  #222 pc 1016
	lw	%x11, 0(%x2)  #222 pc 1020
	j	loop1.335  #222 pc 1024
	nop #pc 1028
bge_else.877: #pc 1032
	ret #pc 1032
	nop #pc 1036
init.350:  #pc 1040
	bge	%x6, %x0, 12  #227 pc 1040
	j	bge_else.879 #pc 1044
	nop #pc 1048
	fmv	%f0, l.745  #0 pc 1052
	addi	%x9, %x3, 0  #228 pc 1056
	addi	%x10, %x9, 0  #228 pc 1060
	slli	%x11, %x7, 2  #228 pc 1064
	add	%x9, %x9, %x11  #228 pc 1068
	addi	%x3, %x9, 0  #228 pc 1072
	addi	%x9, %x7, -1  #228 pc 1076
	sw	%x7, 0(%x2)  #228 pc 1080
	sw	%x8, 4(%x2)  #228 pc 1084
	sw	%x10, 8(%x2)  #228 pc 1088
	sw	%x6, 12(%x2)  #228 pc 1092
	addi	%x7, %x9, 0  #0 pc 1096
	addi	%x6, %x10, 0  #0 pc 1100
	sw	%x1, 16(%x2)  #228 pc 1104
	addi	%x2, %x2, 20  #228 pc 1108
	jal	%x1, assign_farray.312  #228 pc 1112
	addi	%x2, %x2, -20  #228 pc 1116
	lw	%x1, 16(%x2) #228 pc 1120
	lw	%x6, 12(%x2)  #228 pc 1124
	slli	%x7, %x6, 2  #228 pc 1128
	lw	%x8, 4(%x2)  #228 pc 1132
	lw	%x9, 8(%x2)  #228 pc 1136
	add	%x31, %x7, %x8  #228 pc 1140
	sw	%x9, 0(%x31)  #228 pc 1144
	addi	%x6, %x6, -1  #229 pc 1148
	lw	%x7, 0(%x2)  #229 pc 1152
	j	init.350  #229 pc 1156
	nop #pc 1160
bge_else.879: #pc 1164
	ret #pc 1164
	nop #pc 1168
.global	min_caml_start
min_caml_start:
	addi	%x31, %x0, 1
	slli	%x4, %x31, 13
	slli	%x5, %x31, 16
	slli	%x2, %x31, 24
	add	%x3, %x2, %x4
	fmv	%f0, l.745  #0 pc 1192
	addi	%x6, %x3, 0  #225 pc 1196
	addi	%x7, %x6, 0  #225 pc 1200
	addi	%x6, %x6, 0  #225 pc 1204
	addi	%x3, %x6, 0  #225 pc 1208
	addi	%x6, %x0, -1  #0 pc 1212
	sw	%x7, 0(%x2)  #225 pc 1216
	addi	%x30, %x7, 0  #0 pc 1220
	addi	%x7, %x6, 0  #0 pc 1224
	addi	%x6, %x30, 0  #0 pc 1228
	sw	%x1, 4(%x2)  #225 pc 1232
	addi	%x2, %x2, 8  #225 pc 1236
	jal	%x1, assign_farray.312  #225 pc 1240
	addi	%x2, %x2, -8  #225 pc 1244
	lw	%x1, 4(%x2) #225 pc 1248
	addi	%x6, %x0, 3  #0 pc 1252
	addi	%x7, %x3, 0  #234 pc 1256
	addi	%x8, %x7, 0  #234 pc 1260
	addi	%x7, %x7, 8  #234 pc 1264
	addi	%x3, %x7, 0  #234 pc 1268
	addi	%x7, %x0, 1  #0 pc 1272
	lw	%x9, 0(%x2)  #234 pc 1276
	sw	%x8, 4(%x2)  #234 pc 1280
	sw	%x6, 8(%x2)  #234 pc 1284
	addi	%x6, %x8, 0  #0 pc 1288
	addi	%x8, %x7, 0  #0 pc 1292
	addi	%x7, %x9, 0  #0 pc 1296
	sw	%x1, 12(%x2)  #234 pc 1300
	addi	%x2, %x2, 16  #234 pc 1304
	jal	%x1, assign_array.305  #234 pc 1308
	addi	%x2, %x2, -16  #234 pc 1312
	lw	%x1, 12(%x2) #234 pc 1316
	addi	%x6, %x0, 1  #0 pc 1320
	lw	%x7, 8(%x2)  #234 pc 1324
	lw	%x8, 4(%x2)  #234 pc 1328
	sw	%x1, 12(%x2)  #234 pc 1332
	addi	%x2, %x2, 16  #234 pc 1336
	jal	%x1, init.350  #234 pc 1340
	addi	%x2, %x2, -16  #234 pc 1344
	lw	%x1, 12(%x2) #234 pc 1348
	addi	%x6, %x0, 2  #0 pc 1352
	addi	%x7, %x3, 0  #235 pc 1356
	addi	%x8, %x7, 0  #235 pc 1360
	addi	%x7, %x7, 12  #235 pc 1364
	addi	%x3, %x7, 0  #235 pc 1368
	addi	%x7, %x0, 2  #0 pc 1372
	lw	%x9, 0(%x2)  #235 pc 1376
	sw	%x8, 12(%x2)  #235 pc 1380
	sw	%x6, 16(%x2)  #235 pc 1384
	addi	%x6, %x8, 0  #0 pc 1388
	addi	%x8, %x7, 0  #0 pc 1392
	addi	%x7, %x9, 0  #0 pc 1396
	sw	%x1, 20(%x2)  #235 pc 1400
	addi	%x2, %x2, 24  #235 pc 1404
	jal	%x1, assign_array.305  #235 pc 1408
	addi	%x2, %x2, -24  #235 pc 1412
	lw	%x1, 20(%x2) #235 pc 1416
	addi	%x6, %x0, 2  #0 pc 1420
	lw	%x7, 16(%x2)  #235 pc 1424
	lw	%x8, 12(%x2)  #235 pc 1428
	sw	%x1, 20(%x2)  #235 pc 1432
	addi	%x2, %x2, 24  #235 pc 1436
	jal	%x1, init.350  #235 pc 1440
	addi	%x2, %x2, -24  #235 pc 1444
	lw	%x1, 20(%x2) #235 pc 1448
	addi	%x6, %x0, 2  #0 pc 1452
	addi	%x7, %x3, 0  #236 pc 1456
	addi	%x8, %x7, 0  #236 pc 1460
	addi	%x7, %x7, 8  #236 pc 1464
	addi	%x3, %x7, 0  #236 pc 1468
	addi	%x7, %x0, 1  #0 pc 1472
	lw	%x9, 0(%x2)  #236 pc 1476
	sw	%x8, 20(%x2)  #236 pc 1480
	sw	%x6, 24(%x2)  #236 pc 1484
	addi	%x6, %x8, 0  #0 pc 1488
	addi	%x8, %x7, 0  #0 pc 1492
	addi	%x7, %x9, 0  #0 pc 1496
	sw	%x1, 28(%x2)  #236 pc 1500
	addi	%x2, %x2, 32  #236 pc 1504
	jal	%x1, assign_array.305  #236 pc 1508
	addi	%x2, %x2, -32  #236 pc 1512
	lw	%x1, 28(%x2) #236 pc 1516
	addi	%x6, %x0, 1  #0 pc 1520
	lw	%x7, 24(%x2)  #236 pc 1524
	lw	%x8, 20(%x2)  #236 pc 1528
	sw	%x1, 28(%x2)  #236 pc 1532
	addi	%x2, %x2, 32  #236 pc 1536
	jal	%x1, init.350  #236 pc 1540
	addi	%x2, %x2, -32  #236 pc 1544
	lw	%x1, 28(%x2) #236 pc 1548
	lw	%x9, 4(%x2)  #237 pc 1552
	lw	%x6, 0(%x9)  #237 pc 1556
	fmv	%f0, l.750  #0 pc 1560
	fsw	%f0, 0(%x6)  #237 pc 1564
	lw	%x6, 0(%x9)  #237 pc 1568
	fmv	%f0, l.754  #0 pc 1572
	fsw	%f0, 4(%x6)  #237 pc 1576
	lw	%x6, 0(%x9)  #237 pc 1580
	fmv	%f0, l.758  #0 pc 1584
	fsw	%f0, 8(%x6)  #237 pc 1588
	lw	%x6, 4(%x9)  #238 pc 1592
	fmv	%f0, l.762  #0 pc 1596
	fsw	%f0, 0(%x6)  #238 pc 1600
	lw	%x6, 4(%x9)  #238 pc 1604
	fmv	%f0, l.766  #0 pc 1608
	fsw	%f0, 4(%x6)  #238 pc 1612
	lw	%x6, 4(%x9)  #238 pc 1616
	fmv	%f0, l.770  #0 pc 1620
	fsw	%f0, 8(%x6)  #238 pc 1624
	lw	%x10, 12(%x2)  #239 pc 1628
	lw	%x6, 0(%x10)  #239 pc 1632
	fmv	%f0, l.774  #0 pc 1636
	fsw	%f0, 0(%x6)  #239 pc 1640
	lw	%x6, 0(%x10)  #239 pc 1644
	fmv	%f0, l.778  #0 pc 1648
	fsw	%f0, 4(%x6)  #239 pc 1652
	lw	%x6, 4(%x10)  #240 pc 1656
	fmv	%f0, l.782  #0 pc 1660
	fsw	%f0, 0(%x6)  #240 pc 1664
	lw	%x6, 4(%x10)  #240 pc 1668
	fmv	%f0, l.786  #0 pc 1672
	fsw	%f0, 4(%x6)  #240 pc 1676
	lw	%x6, 8(%x10)  #241 pc 1680
	fmv	%f0, l.790  #0 pc 1684
	fsw	%f0, 0(%x6)  #241 pc 1688
	lw	%x6, 8(%x10)  #241 pc 1692
	fmv	%f0, l.794  #0 pc 1696
	fsw	%f0, 4(%x6)  #241 pc 1700
	addi	%x8, %x0, 2  #0 pc 1704
	addi	%x7, %x0, 3  #0 pc 1708
	addi	%x6, %x0, 1  #0 pc 1712
	lw	%x11, 20(%x2)  #242 pc 1716
	sw	%x1, 28(%x2)  #242 pc 1720
	addi	%x2, %x2, 32  #242 pc 1724
	jal	%x1, loop1.335  #242 pc 1728
	addi	%x2, %x2, -32  #242 pc 1732
	lw	%x1, 28(%x2) #242 pc 1736
	lw	%x6, 20(%x2)  #243 pc 1740
	lw	%x7, 0(%x6)  #243 pc 1744
	flw	%f0, 0(%x7)  #243 pc 1748
	ftoi	%x7, %f0  #243 pc 1752
	addi	%x6, %x7, 0  #0 pc 1756
	sw	%x1, 28(%x2)  #243 pc 1760
	addi	%x2, %x2, 32  #243 pc 1764
	jal	%x1, print_int.299  #243 pc 1768
	addi	%x2, %x2, -32  #243 pc 1772
	lw	%x1, 28(%x2) #243 pc 1776
	lw	%x6, 20(%x2)  #244 pc 1780
	lw	%x7, 0(%x6)  #244 pc 1784
	flw	%f0, 4(%x7)  #244 pc 1788
	ftoi	%x7, %f0  #244 pc 1792
	addi	%x6, %x7, 0  #0 pc 1796
	sw	%x1, 28(%x2)  #244 pc 1800
	addi	%x2, %x2, 32  #244 pc 1804
	jal	%x1, print_int.299  #244 pc 1808
	addi	%x2, %x2, -32  #244 pc 1812
	lw	%x1, 28(%x2) #244 pc 1816
	lw	%x6, 20(%x2)  #245 pc 1820
	lw	%x7, 4(%x6)  #245 pc 1824
	flw	%f0, 0(%x7)  #245 pc 1828
	ftoi	%x7, %f0  #245 pc 1832
	addi	%x6, %x7, 0  #0 pc 1836
	sw	%x1, 28(%x2)  #245 pc 1840
	addi	%x2, %x2, 32  #245 pc 1844
	jal	%x1, print_int.299  #245 pc 1848
	addi	%x2, %x2, -32  #245 pc 1852
	lw	%x1, 28(%x2) #245 pc 1856
	lw	%x6, 20(%x2)  #246 pc 1860
	lw	%x6, 4(%x6)  #246 pc 1864
	flw	%f0, 4(%x6)  #246 pc 1868
	ftoi	%x6, %f0  #246 pc 1872
	sw	%x1, 28(%x2)  #246 pc 1876
	addi	%x2, %x2, 32  #246 pc 1880
	jal	%x1, print_int.299  #246 pc 1884
	addi	%x2, %x2, -32  #246 pc 1888
	lw	%x1, 28(%x2) #246 pc 1892
