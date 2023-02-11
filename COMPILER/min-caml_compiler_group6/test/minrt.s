.section	".rodata"
.align	8
l.7053:	! 128.000000
l.7004:	! 0.900000
l.6893:	! 150.000000
l.6890:	! -150.000000
l.6871:	! 0.100000
l.6867:	! -2.000000
l.6864:	! 0.003906
l.6832:	! 20.000000
l.6830:	! 0.050000
l.6822:	! 0.250000
l.6809:	! 0.300000
l.6807:	! 255.000000
l.6802:	! 0.150000
l.6795:	! 3.141593
l.6793:	! 30.000000
l.6791:	! 15.000000
l.6789:	! 0.000100
l.6740:	! 100000000.000000
l.6734:	! 1000000000.000000
l.6711:	! -0.100000
l.6697:	! 0.010000
l.6695:	! -0.200000
l.6476:	! 2.000000
l.6439:	! -200.000000
l.6436:	! 200.000000
l.6431:	! 0.017453
l.6343:	! -1.000000
l.6333:	! 10.000000
l.6320:	! 0.090909
l.6318:	! 0.111111
l.6316:	! 0.142857
l.6314:	! 0.200000
l.6312:	! 0.333333
l.6310:	! 0.001389
l.6308:	! 0.041667
l.6305:	! 1.000000
l.6303:	! 0.000198
l.6301:	! 0.008333
l.6299:	! 0.166667
l.6297:	! 0.500000
l.6293:	! 0.000000
.section	".text"
fiszero.2528:  #pc 0
	fmv	%f1, l.6293  #0 pc 4
	feq	%f31, %f0, %f1  #1 pc 8
	bge	%f30, %f31, 12  #1 pc 12
	j	fbe_else.9177 #pc 16
	nop #pc 20
	addi	%x5, %x0, 1  #0 pc 24
	ret #pc 28
	nop #pc 32
fbe_else.9177: #pc 32
	addi	%x5, %x0, 0  #0 pc 36
	ret #pc 40
	nop #pc 44
fispos.2530:  #pc 44
	fmv	%f1, l.6293  #0 pc 48
	fle	%f31, %f0, %f1  #3 pc 52
	bge	%f30, %f31, 12  #3 pc 56
	j	fble_else.9178 #pc 60
	nop #pc 64
	addi	%x5, %x0, 0  #0 pc 68
	ret #pc 72
	nop #pc 76
fble_else.9178: #pc 76
	addi	%x5, %x0, 1  #0 pc 80
	ret #pc 84
	nop #pc 88
fisneg.2532:  #pc 88
	fmv	%f1, l.6293  #0 pc 92
	fle	%f31, %f1, %f0  #5 pc 96
	bge	%f30, %f31, 12  #5 pc 100
	j	fble_else.9179 #pc 104
	nop #pc 108
	addi	%x5, %x0, 0  #0 pc 112
	ret #pc 116
	nop #pc 120
fble_else.9179: #pc 120
	addi	%x5, %x0, 1  #0 pc 124
	ret #pc 128
	nop #pc 132
fneg.2534:  #pc 132
	fsub	%f0, %f30, %f0  #7 pc 136
	ret #pc 140
	nop #pc 144
fsqr.2536:  #pc 144
	fmul	%f0, %f0, %f0  #9 pc 148
	ret #pc 152
	nop #pc 156
fhalf.2538:  #pc 156
	fmv	%f1, l.6297  #0 pc 160
	fmul	%f0, %f1, %f0  #11 pc 164
	ret #pc 168
	nop #pc 172
fless.2540:  #pc 172
	fle	%f31, %f1, %f0  #13 pc 176
	bge	%f30, %f31, 12  #13 pc 180
	j	fble_else.9180 #pc 184
	nop #pc 188
	addi	%x5, %x0, 0  #0 pc 192
	ret #pc 196
	nop #pc 200
fble_else.9180: #pc 200
	addi	%x5, %x0, 1  #0 pc 204
	ret #pc 208
	nop #pc 212
sin.2543:  #pc 212
	fmul	%f1, %f0, %f0  #16 pc 216
	fmul	%f2, %f0, %f1  #17 pc 220
	fmul	%f3, %f2, %f1  #18 pc 224
	fmul	%f1, %f3, %f1  #19 pc 228
	fmv	%f4, l.6299  #0 pc 232
	fmul	%f2, %f4, %f2  #20 pc 236
	fsub	%f0, %f0, %f2  #20 pc 240
	fmv	%f2, l.6301  #0 pc 244
	fmul	%f2, %f2, %f3  #20 pc 248
	fadd	%f0, %f0, %f2  #20 pc 252
	fmv	%f2, l.6303  #0 pc 256
	fmul	%f1, %f2, %f1  #20 pc 260
	fsub	%f0, %f0, %f1  #20 pc 264
	ret #pc 268
	nop #pc 272
cos.2545:  #pc 272
	fmul	%f0, %f0, %f0  #24 pc 276
	fmul	%f1, %f0, %f0  #25 pc 280
	fmul	%f2, %f1, %f0  #26 pc 284
	fmv	%f3, l.6305  #0 pc 288
	fmv	%f4, l.6297  #0 pc 292
	fmul	%f0, %f4, %f0  #27 pc 296
	fsub	%f0, %f3, %f0  #27 pc 300
	fmv	%f3, l.6308  #0 pc 304
	fmul	%f1, %f3, %f1  #27 pc 308
	fadd	%f0, %f0, %f1  #27 pc 312
	fmv	%f1, l.6310  #0 pc 316
	fmul	%f1, %f1, %f2  #27 pc 320
	fsub	%f0, %f0, %f1  #27 pc 324
	ret #pc 328
	nop #pc 332
atan.2547:  #pc 332
	fmul	%f1, %f0, %f0  #31 pc 336
	fmul	%f2, %f0, %f1  #32 pc 340
	fmul	%f3, %f2, %f1  #33 pc 344
	fmul	%f4, %f3, %f1  #34 pc 348
	fmul	%f5, %f4, %f1  #35 pc 352
	fmul	%f1, %f5, %f1  #36 pc 356
	fmv	%f6, l.6312  #0 pc 360
	fmul	%f2, %f6, %f2  #37 pc 364
	fsub	%f0, %f0, %f2  #37 pc 368
	fmv	%f2, l.6314  #0 pc 372
	fmul	%f2, %f2, %f3  #37 pc 376
	fadd	%f0, %f0, %f2  #37 pc 380
	fmv	%f2, l.6316  #0 pc 384
	fmul	%f2, %f2, %f4  #37 pc 388
	fsub	%f0, %f0, %f2  #37 pc 392
	fmv	%f2, l.6318  #0 pc 396
	fmul	%f2, %f2, %f5  #37 pc 400
	fadd	%f0, %f0, %f2  #37 pc 404
	fmv	%f2, l.6320  #0 pc 408
	fmul	%f1, %f2, %f1  #37 pc 412
	fsub	%f0, %f0, %f1  #37 pc 416
	ret #pc 420
	nop #pc 424
floor.2549:  #pc 424
	fmv	%f1, l.6293  #0 pc 428
	fle	%f31, %f1, %f0  #41 pc 432
	bge	%f30, %f31, 12  #41 pc 436
	j	fble_else.9181 #pc 440
	nop #pc 444
	ftoi	%x5, %f0  #42 pc 448
	itof	%f0, %x5  #42 pc 452
	ret #pc 456
	nop #pc 460
fble_else.9181: #pc 460
	fmv	%f1, l.6305  #0 pc 464
	fsub	%f0, %f0, %f1  #44 pc 468
	ftoi	%x5, %f0  #44 pc 472
	itof	%f0, %x5  #44 pc 476
	ret #pc 480
	nop #pc 484
float_of_int.2553:  #pc 484
	itof	%f0, %x5  #50 pc 488
	ret #pc 492
	nop #pc 496
int_of_float.2555:  #pc 496
	ftoi	%x5, %f0  #53 pc 500
	ret #pc 504
	nop #pc 508
mul_abs.2557:  #pc 508
	addi	%x24, %x0, -1  #pc 512
	beq	%x7, %x24, 12  #57 pc 516
	j	be_else.9182 #pc 520
	nop #pc 524
	addi	%x5, %x9, 0  #58 pc 528
	ret #pc 532
	nop #pc 536
be_else.9182: #pc 536
	addi	%x10, %x0, 1  #0 pc 540
	sll	%x10, %x10, %x7  #60 pc 544
	and	%x10, %x6, %x10  #60 pc 548
	beq	%x10, %x0, 12  #60 pc 552
	j	be_else.9183 #pc 556
	nop #pc 560
	addi	%x7, %x7, -1  #61 pc 564
	j	mul_abs.2557  #61 pc 568
	nop #pc 572
be_else.9183: #pc 572
	addi	%x10, %x7, -1  #63 pc 576
	sll	%x7, %x5, %x7  #63 pc 580
	add	%x9, %x9, %x7  #63 pc 584
	addi	%x7, %x10, 0  #0 pc 592
	j	mul_abs.2557  #63 pc 596
	nop #pc 600
mul.2562:  #pc 600
	bge	%x5, %x0, 12  #67 pc 604
	j	bge_else.9184 #pc 608
	nop #pc 612
	addi	%x7, %x5, 0  #67 pc 616
	j	bge_cont.9185 #pc 620
	nop #pc 624
bge_else.9184: #pc 624
	sub	%x7, %x0, %x5  #67 pc 628
bge_cont.9185: #pc 628
	bge	%x6, %x0, 12  #68 pc 632
	j	bge_else.9186 #pc 636
	nop #pc 640
	addi	%x9, %x6, 0  #68 pc 644
	j	bge_cont.9187 #pc 648
	nop #pc 652
bge_else.9186: #pc 652
	sub	%x9, %x0, %x6  #68 pc 656
bge_cont.9187: #pc 656
	addi	%x10, %x0, 30  #0 pc 660
	addi	%x11, %x0, 0  #0 pc 664
	sw	%x6, 0(%x2)  #69 pc 668
	sw	%x5, 4(%x2)  #69 pc 672
	addi	%x6, %x9, 0  #0 pc 680
	addi	%x5, %x7, 0  #0 pc 688
	addi	%x9, %x11, 0  #0 pc 696
	addi	%x7, %x10, 0  #0 pc 704
	sw	%x1, 12(%x2)  #69 pc 708
	addi	%x2, %x2, 16  #69 pc 712
	jal	%x1, mul_abs.2557  #69 pc 716
	addi	%x2, %x2, -16  #69 pc 720
	lw	%x1, 12(%x2) #69 pc 724
	lw	%x6, 4(%x2)  #70 pc 728
	srli	%x6, %x6, 31  #70 pc 732
	lw	%x7, 0(%x2)  #70 pc 736
	srli	%x7, %x7, 31  #70 pc 740
	beq	%x6, %x7, 12  #70 pc 744
	j	be_else.9188 #pc 748
	nop #pc 752
	ret #pc 756
	nop #pc 760
be_else.9188: #pc 760
	sub	%x5, %x0, %x5  #73 pc 764
	ret #pc 768
	nop #pc 772
div_abs.2565:  #pc 772
	addi	%x24, %x0, -1  #pc 776
	beq	%x7, %x24, 12  #77 pc 780
	j	be_else.9189 #pc 784
	nop #pc 788
	addi	%x5, %x9, 0  #78 pc 792
	ret #pc 796
	nop #pc 800
be_else.9189: #pc 800
	srl	%x10, %x5, %x7  #80 pc 804
	bge	%x10, %x6, 12  #80 pc 808
	j	ble_else.9190 #pc 812
	nop #pc 816
	sll	%x10, %x6, %x7  #81 pc 820
	sub	%x5, %x5, %x10  #81 pc 824
	addi	%x10, %x7, -1  #81 pc 828
	addi	%x11, %x0, 1  #0 pc 832
	sll	%x7, %x11, %x7  #81 pc 836
	add	%x9, %x9, %x7  #81 pc 840
	addi	%x7, %x10, 0  #0 pc 848
	j	div_abs.2565  #81 pc 852
	nop #pc 856
ble_else.9190: #pc 856
	addi	%x7, %x7, -1  #83 pc 860
	j	div_abs.2565  #83 pc 864
	nop #pc 868
div.2570:  #pc 868
	bge	%x5, %x0, 12  #87 pc 872
	j	bge_else.9191 #pc 876
	nop #pc 880
	addi	%x7, %x5, 0  #87 pc 884
	j	bge_cont.9192 #pc 888
	nop #pc 892
bge_else.9191: #pc 892
	sub	%x7, %x0, %x5  #87 pc 896
bge_cont.9192: #pc 896
	bge	%x6, %x0, 12  #88 pc 900
	j	bge_else.9193 #pc 904
	nop #pc 908
	addi	%x9, %x6, 0  #88 pc 912
	j	bge_cont.9194 #pc 916
	nop #pc 920
bge_else.9193: #pc 920
	sub	%x9, %x0, %x6  #88 pc 924
bge_cont.9194: #pc 924
	addi	%x10, %x0, 30  #0 pc 928
	addi	%x11, %x0, 0  #0 pc 932
	sw	%x6, 0(%x2)  #89 pc 936
	sw	%x5, 4(%x2)  #89 pc 940
	addi	%x6, %x9, 0  #0 pc 948
	addi	%x5, %x7, 0  #0 pc 956
	addi	%x9, %x11, 0  #0 pc 964
	addi	%x7, %x10, 0  #0 pc 972
	sw	%x1, 12(%x2)  #89 pc 976
	addi	%x2, %x2, 16  #89 pc 980
	jal	%x1, div_abs.2565  #89 pc 984
	addi	%x2, %x2, -16  #89 pc 988
	lw	%x1, 12(%x2) #89 pc 992
	lw	%x6, 4(%x2)  #90 pc 996
	srli	%x6, %x6, 31  #90 pc 1000
	lw	%x7, 0(%x2)  #90 pc 1004
	srli	%x7, %x7, 31  #90 pc 1008
	beq	%x6, %x7, 12  #90 pc 1012
	j	be_else.9195 #pc 1016
	nop #pc 1020
	ret #pc 1024
	nop #pc 1028
be_else.9195: #pc 1028
	sub	%x5, %x0, %x5  #93 pc 1032
	ret #pc 1036
	nop #pc 1040
print_char.2573:  #pc 1040
	out	%x5  #96 pc 1044
	ret #pc 1048
	nop #pc 1052
print_int.2575:  #pc 1052
	bge	%x5, %x0, 12  #100 pc 1056
	j	bge_else.9197 #pc 1060
	nop #pc 1064
	addi	%x24, %x0, 10  #pc 1068
	bge	%x5, %x24, 12  #104 pc 1072
	j	bge_else.9198 #pc 1076
	nop #pc 1080
	addi	%x6, %x0, 10  #0 pc 1084
	sw	%x5, 0(%x2)  #107 pc 1088
	sw	%x1, 4(%x2)  #107 pc 1092
	addi	%x2, %x2, 8  #107 pc 1096
	jal	%x1, div.2570  #107 pc 1100
	addi	%x2, %x2, -8  #107 pc 1104
	lw	%x1, 4(%x2) #107 pc 1108
	sw	%x5, 4(%x2)  #108 pc 1112
	sw	%x1, 12(%x2)  #108 pc 1116
	addi	%x2, %x2, 16  #108 pc 1120
	jal	%x1, print_int.2575  #108 pc 1124
	addi	%x2, %x2, -16  #108 pc 1128
	lw	%x1, 12(%x2) #108 pc 1132
	addi	%x6, %x0, 10  #0 pc 1136
	lw	%x5, 4(%x2)  #109 pc 1140
	sw	%x1, 12(%x2)  #109 pc 1144
	addi	%x2, %x2, 16  #109 pc 1148
	jal	%x1, mul.2562  #109 pc 1152
	addi	%x2, %x2, -16  #109 pc 1156
	lw	%x1, 12(%x2) #109 pc 1160
	lw	%x6, 0(%x2)  #109 pc 1164
	sub	%x5, %x6, %x5  #109 pc 1168
	addi	%x5, %x5, 48  #109 pc 1172
	out	%x5  #109 pc 1176
	ret #pc 1180
	nop #pc 1184
bge_else.9198: #pc 1184
	addi	%x5, %x5, 48  #105 pc 1188
	out	%x5  #105 pc 1192
	ret #pc 1196
	nop #pc 1200
bge_else.9197: #pc 1200
	sub	%x5, %x0, %x5  #102 pc 1204
	j	print_int.2575  #102 pc 1208
	nop #pc 1212
read_int_sub.2577:  #pc 1212
	in	%x7  #113 pc 1216
	addi	%x24, %x0, 48  #pc 1220
	bge	%x7, %x24, 12  #114 pc 1224
	j	bge_else.9201 #pc 1228
	nop #pc 1232
	addi	%x24, %x0, 57  #pc 1236
	bge	%x24, %x7, 12  #115 pc 1240
	j	ble_else.9202 #pc 1244
	nop #pc 1248
	addi	%x9, %x0, 10  #0 pc 1252
	sw	%x6, 0(%x2)  #116 pc 1256
	sw	%x7, 4(%x2)  #116 pc 1260
	addi	%x6, %x9, 0  #0 pc 1268
	sw	%x1, 12(%x2)  #116 pc 1272
	addi	%x2, %x2, 16  #116 pc 1276
	jal	%x1, mul.2562  #116 pc 1280
	addi	%x2, %x2, -16  #116 pc 1284
	lw	%x1, 12(%x2) #116 pc 1288
	lw	%x6, 4(%x2)  #116 pc 1292
	addi	%x6, %x6, -48  #116 pc 1296
	add	%x5, %x5, %x6  #116 pc 1300
	lw	%x6, 0(%x2)  #116 pc 1304
	addi	%x6, %x6, 1  #116 pc 1308
	j	read_int_sub.2577  #116 pc 1312
	nop #pc 1316
ble_else.9202: #pc 1316
	addi	%x24, %x0, 45  #pc 1320
	beq	%x7, %x24, 12  #118 pc 1324
	j	be_else.9203 #pc 1328
	nop #pc 1332
	sw	%x1, 12(%x2)  #119 pc 1336
	addi	%x2, %x2, 16  #119 pc 1340
	jal	%x1, read_int_sub.2577  #119 pc 1344
	addi	%x2, %x2, -16  #119 pc 1348
	lw	%x1, 12(%x2) #119 pc 1352
	addi	%x24, %x0, 4  #pc 1356
	add	%x24, %x24, %x5  #119 pc 1360
	lw	%x6, 0(%x24)  #119 pc 1364
	add	%x24, %x0, %x5  #119 pc 1368
	lw	%x5, 0(%x24)  #119 pc 1372
	sub	%x5, %x0, %x5  #120 pc 1376
	addi	%x7, %x3, 0  #120 pc 1380
	addi	%x3, %x3, 8  #120 pc 1384
	addi	%x24, %x0, 4  #pc 1388
	add	%x24, %x24, %x7  #120 pc 1392
	sw	%x6, 0(%x24)  #120 pc 1396
	add	%x24, %x0, %x7  #120 pc 1400
	sw	%x5, 0(%x24)  #120 pc 1404
	addi	%x5, %x7, 0  #120 pc 1408
	ret #pc 1412
	nop #pc 1416
be_else.9203: #pc 1416
	addi	%x7, %x3, 0  #121 pc 1420
	addi	%x3, %x3, 8  #121 pc 1424
	addi	%x24, %x0, 4  #pc 1428
	add	%x24, %x24, %x7  #121 pc 1432
	sw	%x6, 0(%x24)  #121 pc 1436
	add	%x24, %x0, %x7  #121 pc 1440
	sw	%x5, 0(%x24)  #121 pc 1444
	addi	%x5, %x7, 0  #121 pc 1448
	ret #pc 1452
	nop #pc 1456
bge_else.9201: #pc 1456
	addi	%x7, %x3, 0  #123 pc 1460
	addi	%x3, %x3, 8  #123 pc 1464
	addi	%x24, %x0, 4  #pc 1468
	add	%x24, %x24, %x7  #123 pc 1472
	sw	%x6, 0(%x24)  #123 pc 1476
	add	%x24, %x0, %x7  #123 pc 1480
	sw	%x5, 0(%x24)  #123 pc 1484
	addi	%x5, %x7, 0  #123 pc 1488
	ret #pc 1492
	nop #pc 1496
read_int.2580:  #pc 1496
	addi	%x5, %x0, 0  #0 pc 1500
	addi	%x6, %x0, 0  #0 pc 1504
	sw	%x1, 4(%x2)  #127 pc 1508
	addi	%x2, %x2, 8  #127 pc 1512
	jal	%x1, read_int_sub.2577  #127 pc 1516
	addi	%x2, %x2, -8  #127 pc 1520
	lw	%x1, 4(%x2) #127 pc 1524
	add	%x24, %x0, %x5  #127 pc 1528
	lw	%x5, 0(%x24)  #127 pc 1532
	ret #pc 1536
	nop #pc 1540
pow.2582:  #pc 1540
	bge	%x0, %x5, 12  #132 pc 1544
	j	ble_else.9204 #pc 1548
	nop #pc 1552
	ret #pc 1556
	nop #pc 1560
ble_else.9204: #pc 1560
	itof	%f1, %x5  #135 pc 1564
	fmul	%f0, %f0, %f1  #135 pc 1568
	addi	%x5, %x5, -1  #135 pc 1572
	j	pow.2582  #135 pc 1576
	nop #pc 1580
read_float_sub.2585:  #pc 1580
	in	%x5  #139 pc 1584
	addi	%x24, %x0, 48  #pc 1588
	bge	%x5, %x24, 12  #140 pc 1592
	j	bge_else.9205 #pc 1596
	nop #pc 1600
	addi	%x24, %x0, 57  #pc 1604
	bge	%x24, %x5, 12  #141 pc 1608
	j	ble_else.9206 #pc 1612
	nop #pc 1616
	fmv	%f1, l.6333  #0 pc 1620
	fmul	%f0, %f0, %f1  #142 pc 1624
	addi	%x5, %x5, -48  #142 pc 1628
	itof	%f1, %x5  #142 pc 1632
	fadd	%f0, %f0, %f1  #142 pc 1636
	j	read_float_sub.2585  #142 pc 1640
	nop #pc 1644
ble_else.9206: #pc 1644
	addi	%x24, %x0, 45  #pc 1648
	beq	%x5, %x24, 12  #144 pc 1652
	j	be_else.9207 #pc 1656
	nop #pc 1660
	sw	%x1, 4(%x2)  #145 pc 1664
	addi	%x2, %x2, 8  #145 pc 1668
	jal	%x1, read_float_sub.2585  #145 pc 1672
	addi	%x2, %x2, -8  #145 pc 1676
	lw	%x1, 4(%x2) #145 pc 1680
	fsub	%f0, %f30, %f0  #145 pc 1684
	ret #pc 1688
	nop #pc 1692
be_else.9207: #pc 1692
	addi	%x24, %x0, 46  #pc 1696
	beq	%x5, %x24, 12  #147 pc 1700
	j	be_else.9208 #pc 1704
	nop #pc 1708
	addi	%x5, %x0, 0  #0 pc 1712
	addi	%x6, %x0, 0  #0 pc 1716
	fsw	%f0, 0(%x2)  #148 pc 1720
	sw	%x1, 12(%x2)  #148 pc 1724
	addi	%x2, %x2, 16  #148 pc 1728
	jal	%x1, read_int_sub.2577  #148 pc 1732
	addi	%x2, %x2, -16  #148 pc 1736
	lw	%x1, 12(%x2) #148 pc 1740
	addi	%x24, %x0, 4  #pc 1744
	add	%x24, %x24, %x5  #148 pc 1748
	lw	%x6, 0(%x24)  #148 pc 1752
	add	%x24, %x0, %x5  #148 pc 1756
	lw	%x5, 0(%x24)  #148 pc 1760
	itof	%f0, %x5  #149 pc 1764
	fmv	%f1, l.6333  #0 pc 1768
	fsw	%f0, 8(%x2)  #149 pc 1772
	addi	%x5, %x6, 0  #0 pc 1780
	fadd	%f0, %f1, %f30  #0 pc 1784
	sw	%x1, 20(%x2)  #149 pc 1788
	addi	%x2, %x2, 24  #149 pc 1792
	jal	%x1, pow.2582  #149 pc 1796
	addi	%x2, %x2, -24  #149 pc 1800
	lw	%x1, 20(%x2) #149 pc 1804
	flw	%f1, 8(%x2)  #149 pc 1808
	fdiv	%f0, %f1, %f0  #149 pc 1812
	flw	%f1, 0(%x2)  #149 pc 1816
	fadd	%f0, %f1, %f0  #149 pc 1820
	ret #pc 1824
	nop #pc 1828
be_else.9208: #pc 1828
	ret #pc 1832
	nop #pc 1836
bge_else.9205: #pc 1836
	ret #pc 1840
	nop #pc 1844
read_float.2587:  #pc 1844
	fmv	%f0, l.6293  #0 pc 1848
	j	read_float_sub.2585  #156 pc 1852
	nop #pc 1856
assign_array.2589:  #pc 1856
	beq	%x7, %x0, 12  #160 pc 1860
	j	be_else.9209 #pc 1864
	nop #pc 1868
	slli	%x7, %x7, 2  #161 pc 1872
	add	%x24, %x7, %x5  #161 pc 1876
	sw	%x6, 0(%x24)  #161 pc 1880
	ret #pc 1884
	nop #pc 1888
be_else.9209: #pc 1888
	slli	%x9, %x7, 2  #163 pc 1892
	add	%x24, %x9, %x5  #163 pc 1896
	sw	%x6, 0(%x24)  #163 pc 1900
	addi	%x7, %x7, -1  #164 pc 1904
	j	assign_array.2589  #164 pc 1908
	nop #pc 1912
create_array.2593:  #pc 1912
	addi	%x7, %x3, 0  #168 pc 1916
	sw	%x7, 0(%x2)  #171 pc 1920
	addi	%x23, %x7, 0  #0 pc 1928
	addi	%x7, %x5, 0  #0 pc 1936
	addi	%x5, %x23, 0  #0 pc 1944
	sw	%x1, 4(%x2)  #171 pc 1948
	addi	%x2, %x2, 8  #171 pc 1952
	jal	%x1, assign_array.2589  #171 pc 1956
	addi	%x2, %x2, -8  #171 pc 1960
	lw	%x1, 4(%x2) #171 pc 1964
	lw	%x5, 0(%x2)  #172 pc 1968
	ret #pc 1972
	nop #pc 1976
assign_farray.2596:  #pc 1976
	beq	%x6, %x0, 12  #176 pc 1980
	j	be_else.9211 #pc 1984
	nop #pc 1988
	slli	%x6, %x6, 2  #177 pc 1992
	add	%x24, %x6, %x5  #177 pc 1996
	fsw	%f0, 0(%x24) #177 pc 2000
	ret #pc 2004
	nop #pc 2008
be_else.9211: #pc 2008
	slli	%x7, %x6, 2  #179 pc 2012
	add	%x24, %x7, %x5  #179 pc 2016
	fsw	%f0, 0(%x24) #179 pc 2020
	addi	%x6, %x6, -1  #180 pc 2024
	j	assign_farray.2596  #180 pc 2028
	nop #pc 2032
create_float_array.2600:  #pc 2032
	addi	%x6, %x3, 0  #184 pc 2036
	sw	%x6, 0(%x2)  #187 pc 2040
	addi	%x23, %x6, 0  #0 pc 2048
	addi	%x6, %x5, 0  #0 pc 2056
	addi	%x5, %x23, 0  #0 pc 2064
	sw	%x1, 4(%x2)  #187 pc 2068
	addi	%x2, %x2, 8  #187 pc 2072
	jal	%x1, assign_farray.2596  #187 pc 2076
	addi	%x2, %x2, -8  #187 pc 2080
	lw	%x1, 4(%x2) #187 pc 2084
	lw	%x5, 0(%x2)  #188 pc 2088
	ret #pc 2092
	nop #pc 2096
xor.2633:  #pc 2096
	beq	%x5, %x0, 12  #326 pc 2100
	j	be_else.9213 #pc 2104
	nop #pc 2108
	addi	%x5, %x6, 0  #326 pc 2112
	ret #pc 2116
	nop #pc 2120
be_else.9213: #pc 2120
	beq	%x6, %x0, 12  #326 pc 2124
	j	be_else.9214 #pc 2128
	nop #pc 2132
	addi	%x5, %x0, 1  #0 pc 2136
	ret #pc 2140
	nop #pc 2144
be_else.9214: #pc 2144
	addi	%x5, %x0, 0  #0 pc 2148
	ret #pc 2152
	nop #pc 2156
sgn.2636:  #pc 2156
	fsw	%f0, 0(%x2)  #334 pc 2160
	sw	%x1, 12(%x2)  #334 pc 2164
	addi	%x2, %x2, 16  #334 pc 2168
	jal	%x1, fiszero.2528  #334 pc 2172
	addi	%x2, %x2, -16  #334 pc 2176
	lw	%x1, 12(%x2) #334 pc 2180
	beq	%x5, %x0, 12  #334 pc 2184
	j	be_else.9215 #pc 2188
	nop #pc 2192
	flw	%f0, 0(%x2)  #335 pc 2196
	sw	%x1, 12(%x2)  #335 pc 2200
	addi	%x2, %x2, 16  #335 pc 2204
	jal	%x1, fispos.2530  #335 pc 2208
	addi	%x2, %x2, -16  #335 pc 2212
	lw	%x1, 12(%x2) #335 pc 2216
	beq	%x5, %x0, 12  #335 pc 2220
	j	be_else.9216 #pc 2224
	nop #pc 2228
	addi	%x5, l.6343, 0  #0 pc 2232
	ret #pc 2236
	nop #pc 2240
be_else.9216: #pc 2240
	addi	%x5, l.6305, 0  #0 pc 2244
	ret #pc 2248
	nop #pc 2252
be_else.9215: #pc 2252
	addi	%x5, l.6293, 0  #0 pc 2256
	ret #pc 2260
	nop #pc 2264
fneg_cond.2638:  #pc 2264
	beq	%x5, %x0, 12  #341 pc 2268
	j	be_else.9217 #pc 2272
	nop #pc 2276
	j	fneg.2534  #341 pc 2280
	nop #pc 2284
be_else.9217: #pc 2284
	ret #pc 2288
	nop #pc 2292
add_mod5.2641:  #pc 2292
	add	%x5, %x5, %x6  #346 pc 2296
	addi	%x24, %x0, 5  #pc 2300
	bge	%x5, %x24, 12  #347 pc 2304
	j	bge_else.9218 #pc 2308
	nop #pc 2312
	addi	%x5, %x5, -5  #347 pc 2316
	ret #pc 2320
	nop #pc 2324
bge_else.9218: #pc 2324
	ret #pc 2328
	nop #pc 2332
vecset.2644:  #pc 2332
	add	%x24, %x0, %x5  #362 pc 2336
	fsw	%f0, 0(%x24) #362 pc 2340
	addi	%x24, %x0, 4  #pc 2344
	add	%x24, %x24, %x5  #363 pc 2348
	fsw	%f1, 0(%x24) #363 pc 2352
	addi	%x24, %x0, 8  #pc 2356
	add	%x24, %x24, %x5  #364 pc 2360
	fsw	%f2, 0(%x24) #364 pc 2364
	ret #pc 2368
	nop #pc 2372
vecfill.2649:  #pc 2372
	add	%x24, %x0, %x5  #369 pc 2376
	fsw	%f0, 0(%x24) #369 pc 2380
	addi	%x24, %x0, 4  #pc 2384
	add	%x24, %x24, %x5  #370 pc 2388
	fsw	%f0, 0(%x24) #370 pc 2392
	addi	%x24, %x0, 8  #pc 2396
	add	%x24, %x24, %x5  #371 pc 2400
	fsw	%f0, 0(%x24) #371 pc 2404
	ret #pc 2408
	nop #pc 2412
vecbzero.2652:  #pc 2412
	fmv	%f0, l.6293  #0 pc 2416
	j	vecfill.2649  #376 pc 2420
	nop #pc 2424
veccpy.2654:  #pc 2424
	add	%x24, %x0, %x6  #381 pc 2428
	flw	%f0, 0(%x24)  #381 pc 2432
	add	%x24, %x0, %x5  #381 pc 2436
	fsw	%f0, 0(%x24) #381 pc 2440
	addi	%x24, %x0, 4  #pc 2444
	add	%x24, %x24, %x6  #382 pc 2448
	flw	%f0, 0(%x24)  #382 pc 2452
	addi	%x24, %x0, 4  #pc 2456
	add	%x24, %x24, %x5  #382 pc 2460
	fsw	%f0, 0(%x24) #382 pc 2464
	addi	%x24, %x0, 8  #pc 2468
	add	%x24, %x24, %x6  #383 pc 2472
	flw	%f0, 0(%x24)  #383 pc 2476
	addi	%x24, %x0, 8  #pc 2480
	add	%x24, %x24, %x5  #383 pc 2484
	fsw	%f0, 0(%x24) #383 pc 2488
	ret #pc 2492
	nop #pc 2496
vecunit_sgn.2657:  #pc 2496
	add	%x24, %x0, %x5  #405 pc 2500
	flw	%f0, 0(%x24)  #405 pc 2504
	sw	%x6, 0(%x2)  #405 pc 2508
	sw	%x5, 4(%x2)  #405 pc 2512
	sw	%x1, 12(%x2)  #405 pc 2516
	addi	%x2, %x2, 16  #405 pc 2520
	jal	%x1, fsqr.2536  #405 pc 2524
	addi	%x2, %x2, -16  #405 pc 2528
	lw	%x1, 12(%x2) #405 pc 2532
	lw	%x5, 4(%x2)  #405 pc 2536
	addi	%x24, %x0, 4  #pc 2540
	add	%x24, %x24, %x5  #405 pc 2544
	flw	%f1, 0(%x24)  #405 pc 2548
	fsw	%f0, 8(%x2)  #405 pc 2552
	fadd	%f0, %f1, %f30  #0 pc 2556
	sw	%x1, 20(%x2)  #405 pc 2560
	addi	%x2, %x2, 24  #405 pc 2564
	jal	%x1, fsqr.2536  #405 pc 2568
	addi	%x2, %x2, -24  #405 pc 2572
	lw	%x1, 20(%x2) #405 pc 2576
	flw	%f1, 8(%x2)  #405 pc 2580
	fadd	%f0, %f1, %f0  #405 pc 2584
	lw	%x5, 4(%x2)  #405 pc 2588
	addi	%x24, %x0, 8  #pc 2592
	add	%x24, %x24, %x5  #405 pc 2596
	flw	%f1, 0(%x24)  #405 pc 2600
	fsw	%f0, 16(%x2)  #405 pc 2604
	fadd	%f0, %f1, %f30  #0 pc 2608
	sw	%x1, 28(%x2)  #405 pc 2612
	addi	%x2, %x2, 32  #405 pc 2616
	jal	%x1, fsqr.2536  #405 pc 2620
	addi	%x2, %x2, -32  #405 pc 2624
	lw	%x1, 28(%x2) #405 pc 2628
	flw	%f1, 16(%x2)  #405 pc 2632
	fadd	%f0, %f1, %f0  #405 pc 2636
	fsqrt	%f0, %f0  #405 pc 2640
	fsw	%f0, 24(%x2)  #406 pc 2644
	sw	%x1, 36(%x2)  #406 pc 2648
	addi	%x2, %x2, 40  #406 pc 2652
	jal	%x1, fiszero.2528  #406 pc 2656
	addi	%x2, %x2, -40  #406 pc 2660
	lw	%x1, 36(%x2) #406 pc 2664
	beq	%x5, %x0, 12  #406 pc 2668
	j	be_else.9222 #pc 2672
	nop #pc 2676
	lw	%x5, 0(%x2)  #406 pc 2680
	beq	%x5, %x0, 12  #406 pc 2684
	j	be_else.9224 #pc 2688
	nop #pc 2692
	fmv	%f0, l.6305  #0 pc 2696
	flw	%f1, 24(%x2)  #406 pc 2700
	fdiv	%f0, %f0, %f1  #406 pc 2704
	j	be_cont.9225 #pc 2708
	nop #pc 2712
be_else.9224: #pc 2712
	fmv	%f0, l.6343  #0 pc 2716
	flw	%f1, 24(%x2)  #406 pc 2720
	fdiv	%f0, %f0, %f1  #406 pc 2724
be_cont.9225: #pc 2724
	j	be_cont.9223 #pc 2728
	nop #pc 2732
be_else.9222: #pc 2732
	fmv	%f0, l.6305  #0 pc 2736
be_cont.9223: #pc 2736
	lw	%x5, 4(%x2)  #407 pc 2740
	add	%x24, %x0, %x5  #407 pc 2744
	flw	%f1, 0(%x24)  #407 pc 2748
	fmul	%f1, %f1, %f0  #407 pc 2752
	add	%x24, %x0, %x5  #407 pc 2756
	fsw	%f1, 0(%x24) #407 pc 2760
	addi	%x24, %x0, 4  #pc 2764
	add	%x24, %x24, %x5  #408 pc 2768
	flw	%f1, 0(%x24)  #408 pc 2772
	fmul	%f1, %f1, %f0  #408 pc 2776
	addi	%x24, %x0, 4  #pc 2780
	add	%x24, %x24, %x5  #408 pc 2784
	fsw	%f1, 0(%x24) #408 pc 2788
	addi	%x24, %x0, 8  #pc 2792
	add	%x24, %x24, %x5  #409 pc 2796
	flw	%f1, 0(%x24)  #409 pc 2800
	fmul	%f0, %f1, %f0  #409 pc 2804
	addi	%x24, %x0, 8  #pc 2808
	add	%x24, %x24, %x5  #409 pc 2812
	fsw	%f0, 0(%x24) #409 pc 2816
	ret #pc 2820
	nop #pc 2824
veciprod.2660:  #pc 2824
	add	%x24, %x0, %x5  #414 pc 2828
	flw	%f0, 0(%x24)  #414 pc 2832
	add	%x24, %x0, %x6  #414 pc 2836
	flw	%f1, 0(%x24)  #414 pc 2840
	fmul	%f0, %f0, %f1  #414 pc 2844
	addi	%x24, %x0, 4  #pc 2848
	add	%x24, %x24, %x5  #414 pc 2852
	flw	%f1, 0(%x24)  #414 pc 2856
	addi	%x24, %x0, 4  #pc 2860
	add	%x24, %x24, %x6  #414 pc 2864
	flw	%f2, 0(%x24)  #414 pc 2868
	fmul	%f1, %f1, %f2  #414 pc 2872
	fadd	%f0, %f0, %f1  #414 pc 2876
	addi	%x24, %x0, 8  #pc 2880
	add	%x24, %x24, %x5  #414 pc 2884
	flw	%f1, 0(%x24)  #414 pc 2888
	addi	%x24, %x0, 8  #pc 2892
	add	%x24, %x24, %x6  #414 pc 2896
	flw	%f2, 0(%x24)  #414 pc 2900
	fmul	%f1, %f1, %f2  #414 pc 2904
	fadd	%f0, %f0, %f1  #414 pc 2908
	ret #pc 2912
	nop #pc 2916
veciprod2.2663:  #pc 2916
	add	%x24, %x0, %x5  #419 pc 2920
	flw	%f3, 0(%x24)  #419 pc 2924
	fmul	%f0, %f3, %f0  #419 pc 2928
	addi	%x24, %x0, 4  #pc 2932
	add	%x24, %x24, %x5  #419 pc 2936
	flw	%f3, 0(%x24)  #419 pc 2940
	fmul	%f1, %f3, %f1  #419 pc 2944
	fadd	%f0, %f0, %f1  #419 pc 2948
	addi	%x24, %x0, 8  #pc 2952
	add	%x24, %x24, %x5  #419 pc 2956
	flw	%f1, 0(%x24)  #419 pc 2960
	fmul	%f1, %f1, %f2  #419 pc 2964
	fadd	%f0, %f0, %f1  #419 pc 2968
	ret #pc 2972
	nop #pc 2976
vecaccum.2668:  #pc 2976
	add	%x24, %x0, %x5  #424 pc 2980
	flw	%f1, 0(%x24)  #424 pc 2984
	add	%x24, %x0, %x6  #424 pc 2988
	flw	%f2, 0(%x24)  #424 pc 2992
	fmul	%f2, %f0, %f2  #424 pc 2996
	fadd	%f1, %f1, %f2  #424 pc 3000
	add	%x24, %x0, %x5  #424 pc 3004
	fsw	%f1, 0(%x24) #424 pc 3008
	addi	%x24, %x0, 4  #pc 3012
	add	%x24, %x24, %x5  #425 pc 3016
	flw	%f1, 0(%x24)  #425 pc 3020
	addi	%x24, %x0, 4  #pc 3024
	add	%x24, %x24, %x6  #425 pc 3028
	flw	%f2, 0(%x24)  #425 pc 3032
	fmul	%f2, %f0, %f2  #425 pc 3036
	fadd	%f1, %f1, %f2  #425 pc 3040
	addi	%x24, %x0, 4  #pc 3044
	add	%x24, %x24, %x5  #425 pc 3048
	fsw	%f1, 0(%x24) #425 pc 3052
	addi	%x24, %x0, 8  #pc 3056
	add	%x24, %x24, %x5  #426 pc 3060
	flw	%f1, 0(%x24)  #426 pc 3064
	addi	%x24, %x0, 8  #pc 3068
	add	%x24, %x24, %x6  #426 pc 3072
	flw	%f2, 0(%x24)  #426 pc 3076
	fmul	%f0, %f0, %f2  #426 pc 3080
	fadd	%f0, %f1, %f0  #426 pc 3084
	addi	%x24, %x0, 8  #pc 3088
	add	%x24, %x24, %x5  #426 pc 3092
	fsw	%f0, 0(%x24) #426 pc 3096
	ret #pc 3100
	nop #pc 3104
vecadd.2672:  #pc 3104
	add	%x24, %x0, %x5  #431 pc 3108
	flw	%f0, 0(%x24)  #431 pc 3112
	add	%x24, %x0, %x6  #431 pc 3116
	flw	%f1, 0(%x24)  #431 pc 3120
	fadd	%f0, %f0, %f1  #431 pc 3124
	add	%x24, %x0, %x5  #431 pc 3128
	fsw	%f0, 0(%x24) #431 pc 3132
	addi	%x24, %x0, 4  #pc 3136
	add	%x24, %x24, %x5  #432 pc 3140
	flw	%f0, 0(%x24)  #432 pc 3144
	addi	%x24, %x0, 4  #pc 3148
	add	%x24, %x24, %x6  #432 pc 3152
	flw	%f1, 0(%x24)  #432 pc 3156
	fadd	%f0, %f0, %f1  #432 pc 3160
	addi	%x24, %x0, 4  #pc 3164
	add	%x24, %x24, %x5  #432 pc 3168
	fsw	%f0, 0(%x24) #432 pc 3172
	addi	%x24, %x0, 8  #pc 3176
	add	%x24, %x24, %x5  #433 pc 3180
	flw	%f0, 0(%x24)  #433 pc 3184
	addi	%x24, %x0, 8  #pc 3188
	add	%x24, %x24, %x6  #433 pc 3192
	flw	%f1, 0(%x24)  #433 pc 3196
	fadd	%f0, %f0, %f1  #433 pc 3200
	addi	%x24, %x0, 8  #pc 3204
	add	%x24, %x24, %x5  #433 pc 3208
	fsw	%f0, 0(%x24) #433 pc 3212
	ret #pc 3216
	nop #pc 3220
vecscale.2675:  #pc 3220
	add	%x24, %x0, %x5  #447 pc 3224
	flw	%f1, 0(%x24)  #447 pc 3228
	fmul	%f1, %f1, %f0  #447 pc 3232
	add	%x24, %x0, %x5  #447 pc 3236
	fsw	%f1, 0(%x24) #447 pc 3240
	addi	%x24, %x0, 4  #pc 3244
	add	%x24, %x24, %x5  #448 pc 3248
	flw	%f1, 0(%x24)  #448 pc 3252
	fmul	%f1, %f1, %f0  #448 pc 3256
	addi	%x24, %x0, 4  #pc 3260
	add	%x24, %x24, %x5  #448 pc 3264
	fsw	%f1, 0(%x24) #448 pc 3268
	addi	%x24, %x0, 8  #pc 3272
	add	%x24, %x24, %x5  #449 pc 3276
	flw	%f1, 0(%x24)  #449 pc 3280
	fmul	%f0, %f1, %f0  #449 pc 3284
	addi	%x24, %x0, 8  #pc 3288
	add	%x24, %x24, %x5  #449 pc 3292
	fsw	%f0, 0(%x24) #449 pc 3296
	ret #pc 3300
	nop #pc 3304
vecaccumv.2678:  #pc 3304
	add	%x24, %x0, %x5  #454 pc 3308
	flw	%f0, 0(%x24)  #454 pc 3312
	add	%x24, %x0, %x6  #454 pc 3316
	flw	%f1, 0(%x24)  #454 pc 3320
	add	%x24, %x0, %x7  #454 pc 3324
	flw	%f2, 0(%x24)  #454 pc 3328
	fmul	%f1, %f1, %f2  #454 pc 3332
	fadd	%f0, %f0, %f1  #454 pc 3336
	add	%x24, %x0, %x5  #454 pc 3340
	fsw	%f0, 0(%x24) #454 pc 3344
	addi	%x24, %x0, 4  #pc 3348
	add	%x24, %x24, %x5  #455 pc 3352
	flw	%f0, 0(%x24)  #455 pc 3356
	addi	%x24, %x0, 4  #pc 3360
	add	%x24, %x24, %x6  #455 pc 3364
	flw	%f1, 0(%x24)  #455 pc 3368
	addi	%x24, %x0, 4  #pc 3372
	add	%x24, %x24, %x7  #455 pc 3376
	flw	%f2, 0(%x24)  #455 pc 3380
	fmul	%f1, %f1, %f2  #455 pc 3384
	fadd	%f0, %f0, %f1  #455 pc 3388
	addi	%x24, %x0, 4  #pc 3392
	add	%x24, %x24, %x5  #455 pc 3396
	fsw	%f0, 0(%x24) #455 pc 3400
	addi	%x24, %x0, 8  #pc 3404
	add	%x24, %x24, %x5  #456 pc 3408
	flw	%f0, 0(%x24)  #456 pc 3412
	addi	%x24, %x0, 8  #pc 3416
	add	%x24, %x24, %x6  #456 pc 3420
	flw	%f1, 0(%x24)  #456 pc 3424
	addi	%x24, %x0, 8  #pc 3428
	add	%x24, %x24, %x7  #456 pc 3432
	flw	%f2, 0(%x24)  #456 pc 3436
	fmul	%f1, %f1, %f2  #456 pc 3440
	fadd	%f0, %f0, %f1  #456 pc 3444
	addi	%x24, %x0, 8  #pc 3448
	add	%x24, %x24, %x5  #456 pc 3452
	fsw	%f0, 0(%x24) #456 pc 3456
	ret #pc 3460
	nop #pc 3464
o_texturetype.2682:  #pc 3464
	add	%x24, %x0, %x5  #465 pc 3468
	lw	%x5, 0(%x24)  #465 pc 3472
	ret #pc 3476
	nop #pc 3480
o_form.2684:  #pc 3480
	addi	%x24, %x0, 4  #pc 3484
	add	%x24, %x24, %x5  #475 pc 3488
	lw	%x5, 0(%x24)  #475 pc 3492
	ret #pc 3496
	nop #pc 3500
o_reflectiontype.2686:  #pc 3500
	addi	%x24, %x0, 8  #pc 3504
	add	%x24, %x24, %x5  #485 pc 3508
	lw	%x5, 0(%x24)  #485 pc 3512
	ret #pc 3516
	nop #pc 3520
o_isinvert.2688:  #pc 3520
	addi	%x24, %x0, 24  #pc 3524
	add	%x24, %x24, %x5  #495 pc 3528
	lw	%x5, 0(%x24)  #495 pc 3532
	ret #pc 3536
	nop #pc 3540
o_isrot.2690:  #pc 3540
	addi	%x24, %x0, 12  #pc 3544
	add	%x24, %x24, %x5  #504 pc 3548
	lw	%x5, 0(%x24)  #504 pc 3552
	ret #pc 3556
	nop #pc 3560
o_param_a.2692:  #pc 3560
	addi	%x24, %x0, 16  #pc 3564
	add	%x24, %x24, %x5  #513 pc 3568
	lw	%x5, 0(%x24)  #513 pc 3572
	add	%x24, %x0, %x5  #518 pc 3576
	flw	%f0, 0(%x24)  #518 pc 3580
	ret #pc 3584
	nop #pc 3588
o_param_b.2694:  #pc 3588
	addi	%x24, %x0, 16  #pc 3592
	add	%x24, %x24, %x5  #523 pc 3596
	lw	%x5, 0(%x24)  #523 pc 3600
	addi	%x24, %x0, 4  #pc 3604
	add	%x24, %x24, %x5  #528 pc 3608
	flw	%f0, 0(%x24)  #528 pc 3612
	ret #pc 3616
	nop #pc 3620
o_param_c.2696:  #pc 3620
	addi	%x24, %x0, 16  #pc 3624
	add	%x24, %x24, %x5  #533 pc 3628
	lw	%x5, 0(%x24)  #533 pc 3632
	addi	%x24, %x0, 8  #pc 3636
	add	%x24, %x24, %x5  #538 pc 3640
	flw	%f0, 0(%x24)  #538 pc 3644
	ret #pc 3648
	nop #pc 3652
o_param_abc.2698:  #pc 3652
	addi	%x24, %x0, 16  #pc 3656
	add	%x24, %x24, %x5  #543 pc 3660
	lw	%x5, 0(%x24)  #543 pc 3664
	ret #pc 3668
	nop #pc 3672
o_param_x.2700:  #pc 3672
	addi	%x24, %x0, 20  #pc 3676
	add	%x24, %x24, %x5  #553 pc 3680
	lw	%x5, 0(%x24)  #553 pc 3684
	add	%x24, %x0, %x5  #558 pc 3688
	flw	%f0, 0(%x24)  #558 pc 3692
	ret #pc 3696
	nop #pc 3700
o_param_y.2702:  #pc 3700
	addi	%x24, %x0, 20  #pc 3704
	add	%x24, %x24, %x5  #563 pc 3708
	lw	%x5, 0(%x24)  #563 pc 3712
	addi	%x24, %x0, 4  #pc 3716
	add	%x24, %x24, %x5  #568 pc 3720
	flw	%f0, 0(%x24)  #568 pc 3724
	ret #pc 3728
	nop #pc 3732
o_param_z.2704:  #pc 3732
	addi	%x24, %x0, 20  #pc 3736
	add	%x24, %x24, %x5  #573 pc 3740
	lw	%x5, 0(%x24)  #573 pc 3744
	addi	%x24, %x0, 8  #pc 3748
	add	%x24, %x24, %x5  #578 pc 3752
	flw	%f0, 0(%x24)  #578 pc 3756
	ret #pc 3760
	nop #pc 3764
o_diffuse.2706:  #pc 3764
	addi	%x24, %x0, 28  #pc 3768
	add	%x24, %x24, %x5  #583 pc 3772
	lw	%x5, 0(%x24)  #583 pc 3776
	add	%x24, %x0, %x5  #588 pc 3780
	flw	%f0, 0(%x24)  #588 pc 3784
	ret #pc 3788
	nop #pc 3792
o_hilight.2708:  #pc 3792
	addi	%x24, %x0, 28  #pc 3796
	add	%x24, %x24, %x5  #593 pc 3800
	lw	%x5, 0(%x24)  #593 pc 3804
	addi	%x24, %x0, 4  #pc 3808
	add	%x24, %x24, %x5  #598 pc 3812
	flw	%f0, 0(%x24)  #598 pc 3816
	ret #pc 3820
	nop #pc 3824
o_color_red.2710:  #pc 3824
	addi	%x24, %x0, 32  #pc 3828
	add	%x24, %x24, %x5  #603 pc 3832
	lw	%x5, 0(%x24)  #603 pc 3836
	add	%x24, %x0, %x5  #608 pc 3840
	flw	%f0, 0(%x24)  #608 pc 3844
	ret #pc 3848
	nop #pc 3852
o_color_green.2712:  #pc 3852
	addi	%x24, %x0, 32  #pc 3856
	add	%x24, %x24, %x5  #613 pc 3860
	lw	%x5, 0(%x24)  #613 pc 3864
	addi	%x24, %x0, 4  #pc 3868
	add	%x24, %x24, %x5  #618 pc 3872
	flw	%f0, 0(%x24)  #618 pc 3876
	ret #pc 3880
	nop #pc 3884
o_color_blue.2714:  #pc 3884
	addi	%x24, %x0, 32  #pc 3888
	add	%x24, %x24, %x5  #623 pc 3892
	lw	%x5, 0(%x24)  #623 pc 3896
	addi	%x24, %x0, 8  #pc 3900
	add	%x24, %x24, %x5  #628 pc 3904
	flw	%f0, 0(%x24)  #628 pc 3908
	ret #pc 3912
	nop #pc 3916
o_param_r1.2716:  #pc 3916
	addi	%x24, %x0, 36  #pc 3920
	add	%x24, %x24, %x5  #633 pc 3924
	lw	%x5, 0(%x24)  #633 pc 3928
	add	%x24, %x0, %x5  #638 pc 3932
	flw	%f0, 0(%x24)  #638 pc 3936
	ret #pc 3940
	nop #pc 3944
o_param_r2.2718:  #pc 3944
	addi	%x24, %x0, 36  #pc 3948
	add	%x24, %x24, %x5  #643 pc 3952
	lw	%x5, 0(%x24)  #643 pc 3956
	addi	%x24, %x0, 4  #pc 3960
	add	%x24, %x24, %x5  #648 pc 3964
	flw	%f0, 0(%x24)  #648 pc 3968
	ret #pc 3972
	nop #pc 3976
o_param_r3.2720:  #pc 3976
	addi	%x24, %x0, 36  #pc 3980
	add	%x24, %x24, %x5  #653 pc 3984
	lw	%x5, 0(%x24)  #653 pc 3988
	addi	%x24, %x0, 8  #pc 3992
	add	%x24, %x24, %x5  #658 pc 3996
	flw	%f0, 0(%x24)  #658 pc 4000
	ret #pc 4004
	nop #pc 4008
o_param_ctbl.2722:  #pc 4008
	addi	%x24, %x0, 40  #pc 4012
	add	%x24, %x24, %x5  #670 pc 4016
	lw	%x5, 0(%x24)  #670 pc 4020
	ret #pc 4024
	nop #pc 4028
p_rgb.2724:  #pc 4028
	add	%x24, %x0, %x5  #684 pc 4032
	lw	%x5, 0(%x24)  #684 pc 4036
	ret #pc 4040
	nop #pc 4044
p_intersection_points.2726:  #pc 4044
	addi	%x24, %x0, 4  #pc 4048
	add	%x24, %x24, %x5  #691 pc 4052
	lw	%x5, 0(%x24)  #691 pc 4056
	ret #pc 4060
	nop #pc 4064
p_surface_ids.2728:  #pc 4064
	addi	%x24, %x0, 8  #pc 4068
	add	%x24, %x24, %x5  #699 pc 4072
	lw	%x5, 0(%x24)  #699 pc 4076
	ret #pc 4080
	nop #pc 4084
p_calc_diffuse.2730:  #pc 4084
	addi	%x24, %x0, 12  #pc 4088
	add	%x24, %x24, %x5  #706 pc 4092
	lw	%x5, 0(%x24)  #706 pc 4096
	ret #pc 4100
	nop #pc 4104
p_energy.2732:  #pc 4104
	addi	%x24, %x0, 16  #pc 4108
	add	%x24, %x24, %x5  #713 pc 4112
	lw	%x5, 0(%x24)  #713 pc 4116
	ret #pc 4120
	nop #pc 4124
p_received_ray_20percent.2734:  #pc 4124
	addi	%x24, %x0, 20  #pc 4128
	add	%x24, %x24, %x5  #720 pc 4132
	lw	%x5, 0(%x24)  #720 pc 4136
	ret #pc 4140
	nop #pc 4144
p_group_id.2736:  #pc 4144
	addi	%x24, %x0, 24  #pc 4148
	add	%x24, %x24, %x5  #736 pc 4152
	lw	%x5, 0(%x24)  #736 pc 4156
	add	%x24, %x0, %x5  #738 pc 4160
	lw	%x5, 0(%x24)  #738 pc 4164
	ret #pc 4168
	nop #pc 4172
p_set_group_id.2738:  #pc 4172
	addi	%x24, %x0, 24  #pc 4176
	add	%x24, %x24, %x5  #743 pc 4180
	lw	%x5, 0(%x24)  #743 pc 4184
	add	%x24, %x0, %x5  #745 pc 4188
	sw	%x6, 0(%x24)  #745 pc 4192
	ret #pc 4196
	nop #pc 4200
p_nvectors.2741:  #pc 4200
	addi	%x24, %x0, 28  #pc 4204
	add	%x24, %x24, %x5  #750 pc 4208
	lw	%x5, 0(%x24)  #750 pc 4212
	ret #pc 4216
	nop #pc 4220
d_vec.2743:  #pc 4220
	add	%x24, %x0, %x5  #761 pc 4224
	lw	%x5, 0(%x24)  #761 pc 4228
	ret #pc 4232
	nop #pc 4236
d_const.2745:  #pc 4236
	addi	%x24, %x0, 4  #pc 4240
	add	%x24, %x24, %x5  #767 pc 4244
	lw	%x5, 0(%x24)  #767 pc 4248
	ret #pc 4252
	nop #pc 4256
r_surface_id.2747:  #pc 4256
	add	%x24, %x0, %x5  #777 pc 4260
	lw	%x5, 0(%x24)  #777 pc 4264
	ret #pc 4268
	nop #pc 4272
r_dvec.2749:  #pc 4272
	addi	%x24, %x0, 4  #pc 4276
	add	%x24, %x24, %x5  #783 pc 4280
	lw	%x5, 0(%x24)  #783 pc 4284
	ret #pc 4288
	nop #pc 4292
r_bright.2751:  #pc 4292
	addi	%x24, %x0, 8  #pc 4296
	add	%x24, %x24, %x5  #789 pc 4300
	flw	%f0, 0(%x24)  #789 pc 4304
	ret #pc 4308
	nop #pc 4312
rad.2753:  #pc 4312
	fmv	%f1, l.6431  #0 pc 4316
	fmul	%f0, %f0, %f1  #799 pc 4320
	ret #pc 4324
	nop #pc 4328
read_screen_settings.2755:  #pc 4328
	addi	%x24, %x0, 20  #pc 4332
	add	%x24, %x24, %x22  #0 pc 4336
	lw	%x5, 0(%x24)  #0 pc 4340
	addi	%x24, %x0, 16  #pc 4344
	add	%x24, %x24, %x22  #0 pc 4348
	lw	%x6, 0(%x24)  #0 pc 4352
	addi	%x24, %x0, 12  #pc 4356
	add	%x24, %x24, %x22  #0 pc 4360
	lw	%x7, 0(%x24)  #0 pc 4364
	addi	%x24, %x0, 8  #pc 4368
	add	%x24, %x24, %x22  #0 pc 4372
	lw	%x9, 0(%x24)  #0 pc 4376
	addi	%x24, %x0, 4  #pc 4380
	add	%x24, %x24, %x22  #0 pc 4384
	lw	%x10, 0(%x24)  #0 pc 4388
	sw	%x5, 0(%x2)  #806 pc 4392
	sw	%x7, 4(%x2)  #806 pc 4396
	sw	%x9, 8(%x2)  #806 pc 4400
	sw	%x6, 12(%x2)  #806 pc 4404
	sw	%x10, 16(%x2)  #806 pc 4408
	addi	%x5, %x0, 0  #0 pc 4416
	sw	%x1, 20(%x2)  #806 pc 4420
	addi	%x2, %x2, 24  #806 pc 4424
	jal	%x1, read_float.2587  #806 pc 4428
	addi	%x2, %x2, -24  #806 pc 4432
	lw	%x1, 20(%x2) #806 pc 4436
	lw	%x5, 16(%x2)  #806 pc 4440
	add	%x24, %x0, %x5  #806 pc 4444
	fsw	%f0, 0(%x24) #806 pc 4448
	addi	%x5, %x0, 0  #0 pc 4456
	sw	%x1, 20(%x2)  #807 pc 4460
	addi	%x2, %x2, 24  #807 pc 4464
	jal	%x1, read_float.2587  #807 pc 4468
	addi	%x2, %x2, -24  #807 pc 4472
	lw	%x1, 20(%x2) #807 pc 4476
	lw	%x5, 16(%x2)  #807 pc 4480
	addi	%x24, %x0, 4  #pc 4484
	add	%x24, %x24, %x5  #807 pc 4488
	fsw	%f0, 0(%x24) #807 pc 4492
	addi	%x5, %x0, 0  #0 pc 4500
	sw	%x1, 20(%x2)  #808 pc 4504
	addi	%x2, %x2, 24  #808 pc 4508
	jal	%x1, read_float.2587  #808 pc 4512
	addi	%x2, %x2, -24  #808 pc 4516
	lw	%x1, 20(%x2) #808 pc 4520
	lw	%x5, 16(%x2)  #808 pc 4524
	addi	%x24, %x0, 8  #pc 4528
	add	%x24, %x24, %x5  #808 pc 4532
	fsw	%f0, 0(%x24) #808 pc 4536
	addi	%x5, %x0, 0  #0 pc 4544
	sw	%x1, 20(%x2)  #810 pc 4548
	addi	%x2, %x2, 24  #810 pc 4552
	jal	%x1, read_float.2587  #810 pc 4556
	addi	%x2, %x2, -24  #810 pc 4560
	lw	%x1, 20(%x2) #810 pc 4564
	sw	%x1, 20(%x2)  #810 pc 4568
	addi	%x2, %x2, 24  #810 pc 4572
	jal	%x1, rad.2753  #810 pc 4576
	addi	%x2, %x2, -24  #810 pc 4580
	lw	%x1, 20(%x2) #810 pc 4584
	fsw	%f0, 24(%x2)  #811 pc 4588
	sw	%x1, 36(%x2)  #811 pc 4592
	addi	%x2, %x2, 40  #811 pc 4596
	jal	%x1, cos.2545  #811 pc 4600
	addi	%x2, %x2, -40  #811 pc 4604
	lw	%x1, 36(%x2) #811 pc 4608
	flw	%f1, 24(%x2)  #812 pc 4612
	fsw	%f0, 32(%x2)  #812 pc 4616
	fadd	%f0, %f1, %f30  #0 pc 4620
	sw	%x1, 44(%x2)  #812 pc 4624
	addi	%x2, %x2, 48  #812 pc 4628
	jal	%x1, sin.2543  #812 pc 4632
	addi	%x2, %x2, -48  #812 pc 4636
	lw	%x1, 44(%x2) #812 pc 4640
	fsw	%f0, 40(%x2)  #813 pc 4644
	addi	%x5, %x0, 0  #0 pc 4652
	sw	%x1, 52(%x2)  #813 pc 4656
	addi	%x2, %x2, 56  #813 pc 4660
	jal	%x1, read_float.2587  #813 pc 4664
	addi	%x2, %x2, -56  #813 pc 4668
	lw	%x1, 52(%x2) #813 pc 4672
	sw	%x1, 52(%x2)  #813 pc 4676
	addi	%x2, %x2, 56  #813 pc 4680
	jal	%x1, rad.2753  #813 pc 4684
	addi	%x2, %x2, -56  #813 pc 4688
	lw	%x1, 52(%x2) #813 pc 4692
	fsw	%f0, 48(%x2)  #814 pc 4696
	sw	%x1, 60(%x2)  #814 pc 4700
	addi	%x2, %x2, 64  #814 pc 4704
	jal	%x1, cos.2545  #814 pc 4708
	addi	%x2, %x2, -64  #814 pc 4712
	lw	%x1, 60(%x2) #814 pc 4716
	flw	%f1, 48(%x2)  #815 pc 4720
	fsw	%f0, 56(%x2)  #815 pc 4724
	fadd	%f0, %f1, %f30  #0 pc 4728
	sw	%x1, 68(%x2)  #815 pc 4732
	addi	%x2, %x2, 72  #815 pc 4736
	jal	%x1, sin.2543  #815 pc 4740
	addi	%x2, %x2, -72  #815 pc 4744
	lw	%x1, 68(%x2) #815 pc 4748
	flw	%f1, 32(%x2)  #817 pc 4752
	fmul	%f2, %f1, %f0  #817 pc 4756
	fmv	%f3, l.6436  #0 pc 4760
	fmul	%f2, %f2, %f3  #817 pc 4764
	lw	%x5, 12(%x2)  #817 pc 4768
	add	%x24, %x0, %x5  #817 pc 4772
	fsw	%f2, 0(%x24) #817 pc 4776
	fmv	%f2, l.6439  #0 pc 4780
	flw	%f3, 40(%x2)  #818 pc 4784
	fmul	%f2, %f3, %f2  #818 pc 4788
	addi	%x24, %x0, 4  #pc 4792
	add	%x24, %x24, %x5  #818 pc 4796
	fsw	%f2, 0(%x24) #818 pc 4800
	flw	%f2, 56(%x2)  #819 pc 4804
	fmul	%f4, %f1, %f2  #819 pc 4808
	fmv	%f5, l.6436  #0 pc 4812
	fmul	%f4, %f4, %f5  #819 pc 4816
	addi	%x24, %x0, 8  #pc 4820
	add	%x24, %x24, %x5  #819 pc 4824
	fsw	%f4, 0(%x24) #819 pc 4828
	lw	%x6, 8(%x2)  #821 pc 4832
	add	%x24, %x0, %x6  #821 pc 4836
	fsw	%f2, 0(%x24) #821 pc 4840
	fmv	%f4, l.6293  #0 pc 4844
	addi	%x24, %x0, 4  #pc 4848
	add	%x24, %x24, %x6  #822 pc 4852
	fsw	%f4, 0(%x24) #822 pc 4856
	fsw	%f0, 64(%x2)  #823 pc 4860
	sw	%x1, 76(%x2)  #823 pc 4864
	addi	%x2, %x2, 80  #823 pc 4868
	jal	%x1, fneg.2534  #823 pc 4872
	addi	%x2, %x2, -80  #823 pc 4876
	lw	%x1, 76(%x2) #823 pc 4880
	lw	%x5, 8(%x2)  #823 pc 4884
	addi	%x24, %x0, 8  #pc 4888
	add	%x24, %x24, %x5  #823 pc 4892
	fsw	%f0, 0(%x24) #823 pc 4896
	flw	%f0, 40(%x2)  #825 pc 4900
	sw	%x1, 76(%x2)  #825 pc 4904
	addi	%x2, %x2, 80  #825 pc 4908
	jal	%x1, fneg.2534  #825 pc 4912
	addi	%x2, %x2, -80  #825 pc 4916
	lw	%x1, 76(%x2) #825 pc 4920
	flw	%f1, 64(%x2)  #825 pc 4924
	fmul	%f0, %f0, %f1  #825 pc 4928
	lw	%x5, 4(%x2)  #825 pc 4932
	add	%x24, %x0, %x5  #825 pc 4936
	fsw	%f0, 0(%x24) #825 pc 4940
	flw	%f0, 32(%x2)  #826 pc 4944
	sw	%x1, 76(%x2)  #826 pc 4948
	addi	%x2, %x2, 80  #826 pc 4952
	jal	%x1, fneg.2534  #826 pc 4956
	addi	%x2, %x2, -80  #826 pc 4960
	lw	%x1, 76(%x2) #826 pc 4964
	lw	%x5, 4(%x2)  #826 pc 4968
	addi	%x24, %x0, 4  #pc 4972
	add	%x24, %x24, %x5  #826 pc 4976
	fsw	%f0, 0(%x24) #826 pc 4980
	flw	%f0, 40(%x2)  #827 pc 4984
	sw	%x1, 76(%x2)  #827 pc 4988
	addi	%x2, %x2, 80  #827 pc 4992
	jal	%x1, fneg.2534  #827 pc 4996
	addi	%x2, %x2, -80  #827 pc 5000
	lw	%x1, 76(%x2) #827 pc 5004
	flw	%f1, 56(%x2)  #827 pc 5008
	fmul	%f0, %f0, %f1  #827 pc 5012
	lw	%x5, 4(%x2)  #827 pc 5016
	addi	%x24, %x0, 8  #pc 5020
	add	%x24, %x24, %x5  #827 pc 5024
	fsw	%f0, 0(%x24) #827 pc 5028
	lw	%x5, 16(%x2)  #829 pc 5032
	add	%x24, %x0, %x5  #829 pc 5036
	flw	%f0, 0(%x24)  #829 pc 5040
	lw	%x6, 12(%x2)  #829 pc 5044
	add	%x24, %x0, %x6  #829 pc 5048
	flw	%f1, 0(%x24)  #829 pc 5052
	fsub	%f0, %f0, %f1  #829 pc 5056
	lw	%x7, 0(%x2)  #829 pc 5060
	add	%x24, %x0, %x7  #829 pc 5064
	fsw	%f0, 0(%x24) #829 pc 5068
	addi	%x24, %x0, 4  #pc 5072
	add	%x24, %x24, %x5  #830 pc 5076
	flw	%f0, 0(%x24)  #830 pc 5080
	addi	%x24, %x0, 4  #pc 5084
	add	%x24, %x24, %x6  #830 pc 5088
	flw	%f1, 0(%x24)  #830 pc 5092
	fsub	%f0, %f0, %f1  #830 pc 5096
	addi	%x24, %x0, 4  #pc 5100
	add	%x24, %x24, %x7  #830 pc 5104
	fsw	%f0, 0(%x24) #830 pc 5108
	addi	%x24, %x0, 8  #pc 5112
	add	%x24, %x24, %x5  #831 pc 5116
	flw	%f0, 0(%x24)  #831 pc 5120
	addi	%x24, %x0, 8  #pc 5124
	add	%x24, %x24, %x6  #831 pc 5128
	flw	%f1, 0(%x24)  #831 pc 5132
	fsub	%f0, %f0, %f1  #831 pc 5136
	addi	%x24, %x0, 8  #pc 5140
	add	%x24, %x24, %x7  #831 pc 5144
	fsw	%f0, 0(%x24) #831 pc 5148
	ret #pc 5152
	nop #pc 5156
read_light.2757:  #pc 5156
	addi	%x24, %x0, 8  #pc 5160
	add	%x24, %x24, %x22  #0 pc 5164
	lw	%x5, 0(%x24)  #0 pc 5168
	addi	%x24, %x0, 4  #pc 5172
	add	%x24, %x24, %x22  #0 pc 5176
	lw	%x6, 0(%x24)  #0 pc 5180
	sw	%x6, 0(%x2)  #838 pc 5184
	sw	%x5, 4(%x2)  #838 pc 5188
	addi	%x5, %x0, 0  #0 pc 5196
	sw	%x1, 12(%x2)  #838 pc 5200
	addi	%x2, %x2, 16  #838 pc 5204
	jal	%x1, read_int.2580  #838 pc 5208
	addi	%x2, %x2, -16  #838 pc 5212
	lw	%x1, 12(%x2) #838 pc 5216
	addi	%x5, %x0, 0  #0 pc 5224
	sw	%x1, 12(%x2)  #841 pc 5228
	addi	%x2, %x2, 16  #841 pc 5232
	jal	%x1, read_float.2587  #841 pc 5236
	addi	%x2, %x2, -16  #841 pc 5240
	lw	%x1, 12(%x2) #841 pc 5244
	sw	%x1, 12(%x2)  #841 pc 5248
	addi	%x2, %x2, 16  #841 pc 5252
	jal	%x1, rad.2753  #841 pc 5256
	addi	%x2, %x2, -16  #841 pc 5260
	lw	%x1, 12(%x2) #841 pc 5264
	fsw	%f0, 8(%x2)  #842 pc 5268
	sw	%x1, 20(%x2)  #842 pc 5272
	addi	%x2, %x2, 24  #842 pc 5276
	jal	%x1, sin.2543  #842 pc 5280
	addi	%x2, %x2, -24  #842 pc 5284
	lw	%x1, 20(%x2) #842 pc 5288
	sw	%x1, 20(%x2)  #843 pc 5292
	addi	%x2, %x2, 24  #843 pc 5296
	jal	%x1, fneg.2534  #843 pc 5300
	addi	%x2, %x2, -24  #843 pc 5304
	lw	%x1, 20(%x2) #843 pc 5308
	lw	%x5, 4(%x2)  #843 pc 5312
	addi	%x24, %x0, 4  #pc 5316
	add	%x24, %x24, %x5  #843 pc 5320
	fsw	%f0, 0(%x24) #843 pc 5324
	addi	%x5, %x0, 0  #0 pc 5332
	sw	%x1, 20(%x2)  #844 pc 5336
	addi	%x2, %x2, 24  #844 pc 5340
	jal	%x1, read_float.2587  #844 pc 5344
	addi	%x2, %x2, -24  #844 pc 5348
	lw	%x1, 20(%x2) #844 pc 5352
	sw	%x1, 20(%x2)  #844 pc 5356
	addi	%x2, %x2, 24  #844 pc 5360
	jal	%x1, rad.2753  #844 pc 5364
	addi	%x2, %x2, -24  #844 pc 5368
	lw	%x1, 20(%x2) #844 pc 5372
	flw	%f1, 8(%x2)  #845 pc 5376
	fsw	%f0, 16(%x2)  #845 pc 5380
	fadd	%f0, %f1, %f30  #0 pc 5384
	sw	%x1, 28(%x2)  #845 pc 5388
	addi	%x2, %x2, 32  #845 pc 5392
	jal	%x1, cos.2545  #845 pc 5396
	addi	%x2, %x2, -32  #845 pc 5400
	lw	%x1, 28(%x2) #845 pc 5404
	flw	%f1, 16(%x2)  #846 pc 5408
	fsw	%f0, 24(%x2)  #846 pc 5412
	fadd	%f0, %f1, %f30  #0 pc 5416
	sw	%x1, 36(%x2)  #846 pc 5420
	addi	%x2, %x2, 40  #846 pc 5424
	jal	%x1, sin.2543  #846 pc 5428
	addi	%x2, %x2, -40  #846 pc 5432
	lw	%x1, 36(%x2) #846 pc 5436
	flw	%f1, 24(%x2)  #847 pc 5440
	fmul	%f0, %f1, %f0  #847 pc 5444
	lw	%x5, 4(%x2)  #847 pc 5448
	add	%x24, %x0, %x5  #847 pc 5452
	fsw	%f0, 0(%x24) #847 pc 5456
	flw	%f0, 16(%x2)  #848 pc 5460
	sw	%x1, 36(%x2)  #848 pc 5464
	addi	%x2, %x2, 40  #848 pc 5468
	jal	%x1, cos.2545  #848 pc 5472
	addi	%x2, %x2, -40  #848 pc 5476
	lw	%x1, 36(%x2) #848 pc 5480
	flw	%f1, 24(%x2)  #849 pc 5484
	fmul	%f0, %f1, %f0  #849 pc 5488
	lw	%x5, 4(%x2)  #849 pc 5492
	addi	%x24, %x0, 8  #pc 5496
	add	%x24, %x24, %x5  #849 pc 5500
	fsw	%f0, 0(%x24) #849 pc 5504
	addi	%x5, %x0, 0  #0 pc 5512
	sw	%x1, 36(%x2)  #850 pc 5516
	addi	%x2, %x2, 40  #850 pc 5520
	jal	%x1, read_float.2587  #850 pc 5524
	addi	%x2, %x2, -40  #850 pc 5528
	lw	%x1, 36(%x2) #850 pc 5532
	lw	%x5, 0(%x2)  #850 pc 5536
	add	%x24, %x0, %x5  #850 pc 5540
	fsw	%f0, 0(%x24) #850 pc 5544
	ret #pc 5548
	nop #pc 5552
rotate_quadratic_matrix.2759:  #pc 5552
	add	%x24, %x0, %x6  #860 pc 5556
	flw	%f0, 0(%x24)  #860 pc 5560
	sw	%x5, 0(%x2)  #860 pc 5564
	sw	%x6, 4(%x2)  #860 pc 5568
	sw	%x1, 12(%x2)  #860 pc 5572
	addi	%x2, %x2, 16  #860 pc 5576
	jal	%x1, cos.2545  #860 pc 5580
	addi	%x2, %x2, -16  #860 pc 5584
	lw	%x1, 12(%x2) #860 pc 5588
	lw	%x5, 4(%x2)  #861 pc 5592
	add	%x24, %x0, %x5  #861 pc 5596
	flw	%f1, 0(%x24)  #861 pc 5600
	fsw	%f0, 8(%x2)  #861 pc 5604
	fadd	%f0, %f1, %f30  #0 pc 5608
	sw	%x1, 20(%x2)  #861 pc 5612
	addi	%x2, %x2, 24  #861 pc 5616
	jal	%x1, sin.2543  #861 pc 5620
	addi	%x2, %x2, -24  #861 pc 5624
	lw	%x1, 20(%x2) #861 pc 5628
	lw	%x5, 4(%x2)  #862 pc 5632
	addi	%x24, %x0, 4  #pc 5636
	add	%x24, %x24, %x5  #862 pc 5640
	flw	%f1, 0(%x24)  #862 pc 5644
	fsw	%f0, 16(%x2)  #862 pc 5648
	fadd	%f0, %f1, %f30  #0 pc 5652
	sw	%x1, 28(%x2)  #862 pc 5656
	addi	%x2, %x2, 32  #862 pc 5660
	jal	%x1, cos.2545  #862 pc 5664
	addi	%x2, %x2, -32  #862 pc 5668
	lw	%x1, 28(%x2) #862 pc 5672
	lw	%x5, 4(%x2)  #863 pc 5676
	addi	%x24, %x0, 4  #pc 5680
	add	%x24, %x24, %x5  #863 pc 5684
	flw	%f1, 0(%x24)  #863 pc 5688
	fsw	%f0, 24(%x2)  #863 pc 5692
	fadd	%f0, %f1, %f30  #0 pc 5696
	sw	%x1, 36(%x2)  #863 pc 5700
	addi	%x2, %x2, 40  #863 pc 5704
	jal	%x1, sin.2543  #863 pc 5708
	addi	%x2, %x2, -40  #863 pc 5712
	lw	%x1, 36(%x2) #863 pc 5716
	lw	%x5, 4(%x2)  #864 pc 5720
	addi	%x24, %x0, 8  #pc 5724
	add	%x24, %x24, %x5  #864 pc 5728
	flw	%f1, 0(%x24)  #864 pc 5732
	fsw	%f0, 32(%x2)  #864 pc 5736
	fadd	%f0, %f1, %f30  #0 pc 5740
	sw	%x1, 44(%x2)  #864 pc 5744
	addi	%x2, %x2, 48  #864 pc 5748
	jal	%x1, cos.2545  #864 pc 5752
	addi	%x2, %x2, -48  #864 pc 5756
	lw	%x1, 44(%x2) #864 pc 5760
	lw	%x5, 4(%x2)  #865 pc 5764
	addi	%x24, %x0, 8  #pc 5768
	add	%x24, %x24, %x5  #865 pc 5772
	flw	%f1, 0(%x24)  #865 pc 5776
	fsw	%f0, 40(%x2)  #865 pc 5780
	fadd	%f0, %f1, %f30  #0 pc 5784
	sw	%x1, 52(%x2)  #865 pc 5788
	addi	%x2, %x2, 56  #865 pc 5792
	jal	%x1, sin.2543  #865 pc 5796
	addi	%x2, %x2, -56  #865 pc 5800
	lw	%x1, 52(%x2) #865 pc 5804
	flw	%f1, 40(%x2)  #867 pc 5808
	flw	%f2, 24(%x2)  #867 pc 5812
	fmul	%f3, %f2, %f1  #867 pc 5816
	flw	%f4, 32(%x2)  #868 pc 5820
	flw	%f5, 16(%x2)  #868 pc 5824
	fmul	%f6, %f5, %f4  #868 pc 5828
	fmul	%f6, %f6, %f1  #868 pc 5832
	flw	%f7, 8(%x2)  #868 pc 5836
	fmul	%f8, %f7, %f0  #868 pc 5840
	fsub	%f6, %f6, %f8  #868 pc 5844
	fmul	%f8, %f7, %f4  #869 pc 5848
	fmul	%f8, %f8, %f1  #869 pc 5852
	fmul	%f9, %f5, %f0  #869 pc 5856
	fadd	%f8, %f8, %f9  #869 pc 5860
	fmul	%f9, %f2, %f0  #871 pc 5864
	fmul	%f10, %f5, %f4  #872 pc 5868
	fmul	%f10, %f10, %f0  #872 pc 5872
	fmul	%f11, %f7, %f1  #872 pc 5876
	fadd	%f10, %f10, %f11  #872 pc 5880
	fmul	%f11, %f7, %f4  #873 pc 5884
	fmul	%f0, %f11, %f0  #873 pc 5888
	fmul	%f1, %f5, %f1  #873 pc 5892
	fsub	%f0, %f0, %f1  #873 pc 5896
	fsw	%f0, 48(%x2)  #875 pc 5900
	fsw	%f8, 56(%x2)  #875 pc 5904
	fsw	%f10, 64(%x2)  #875 pc 5908
	fsw	%f6, 72(%x2)  #875 pc 5912
	fsw	%f9, 80(%x2)  #875 pc 5916
	fsw	%f3, 88(%x2)  #875 pc 5920
	fadd	%f0, %f4, %f30  #0 pc 5924
	sw	%x1, 100(%x2)  #875 pc 5928
	addi	%x2, %x2, 104  #875 pc 5932
	jal	%x1, fneg.2534  #875 pc 5936
	addi	%x2, %x2, -104  #875 pc 5940
	lw	%x1, 100(%x2) #875 pc 5944
	flw	%f1, 24(%x2)  #876 pc 5948
	flw	%f2, 16(%x2)  #876 pc 5952
	fmul	%f2, %f2, %f1  #876 pc 5956
	flw	%f3, 8(%x2)  #877 pc 5960
	fmul	%f1, %f3, %f1  #877 pc 5964
	lw	%x5, 0(%x2)  #880 pc 5968
	add	%x24, %x0, %x5  #880 pc 5972
	flw	%f3, 0(%x24)  #880 pc 5976
	addi	%x24, %x0, 4  #pc 5980
	add	%x24, %x24, %x5  #881 pc 5984
	flw	%f4, 0(%x24)  #881 pc 5988
	addi	%x24, %x0, 8  #pc 5992
	add	%x24, %x24, %x5  #882 pc 5996
	flw	%f5, 0(%x24)  #882 pc 6000
	flw	%f6, 88(%x2)  #887 pc 6004
	fsw	%f1, 96(%x2)  #887 pc 6008
	fsw	%f2, 104(%x2)  #887 pc 6012
	fsw	%f5, 112(%x2)  #887 pc 6016
	fsw	%f0, 120(%x2)  #887 pc 6020
	fsw	%f4, 128(%x2)  #887 pc 6024
	fsw	%f3, 136(%x2)  #887 pc 6028
	fadd	%f0, %f6, %f30  #0 pc 6032
	sw	%x1, 148(%x2)  #887 pc 6036
	addi	%x2, %x2, 152  #887 pc 6040
	jal	%x1, fsqr.2536  #887 pc 6044
	addi	%x2, %x2, -152  #887 pc 6048
	lw	%x1, 148(%x2) #887 pc 6052
	flw	%f1, 136(%x2)  #887 pc 6056
	fmul	%f0, %f1, %f0  #887 pc 6060
	flw	%f2, 80(%x2)  #887 pc 6064
	fsw	%f0, 144(%x2)  #887 pc 6068
	fadd	%f0, %f2, %f30  #0 pc 6072
	sw	%x1, 156(%x2)  #887 pc 6076
	addi	%x2, %x2, 160  #887 pc 6080
	jal	%x1, fsqr.2536  #887 pc 6084
	addi	%x2, %x2, -160  #887 pc 6088
	lw	%x1, 156(%x2) #887 pc 6092
	flw	%f1, 128(%x2)  #887 pc 6096
	fmul	%f0, %f1, %f0  #887 pc 6100
	flw	%f2, 144(%x2)  #887 pc 6104
	fadd	%f0, %f2, %f0  #887 pc 6108
	flw	%f2, 120(%x2)  #887 pc 6112
	fsw	%f0, 152(%x2)  #887 pc 6116
	fadd	%f0, %f2, %f30  #0 pc 6120
	sw	%x1, 164(%x2)  #887 pc 6124
	addi	%x2, %x2, 168  #887 pc 6128
	jal	%x1, fsqr.2536  #887 pc 6132
	addi	%x2, %x2, -168  #887 pc 6136
	lw	%x1, 164(%x2) #887 pc 6140
	flw	%f1, 112(%x2)  #887 pc 6144
	fmul	%f0, %f1, %f0  #887 pc 6148
	flw	%f2, 152(%x2)  #887 pc 6152
	fadd	%f0, %f2, %f0  #887 pc 6156
	lw	%x5, 0(%x2)  #887 pc 6160
	add	%x24, %x0, %x5  #887 pc 6164
	fsw	%f0, 0(%x24) #887 pc 6168
	flw	%f0, 72(%x2)  #888 pc 6172
	sw	%x1, 164(%x2)  #888 pc 6176
	addi	%x2, %x2, 168  #888 pc 6180
	jal	%x1, fsqr.2536  #888 pc 6184
	addi	%x2, %x2, -168  #888 pc 6188
	lw	%x1, 164(%x2) #888 pc 6192
	flw	%f1, 136(%x2)  #888 pc 6196
	fmul	%f0, %f1, %f0  #888 pc 6200
	flw	%f2, 64(%x2)  #888 pc 6204
	fsw	%f0, 160(%x2)  #888 pc 6208
	fadd	%f0, %f2, %f30  #0 pc 6212
	sw	%x1, 172(%x2)  #888 pc 6216
	addi	%x2, %x2, 176  #888 pc 6220
	jal	%x1, fsqr.2536  #888 pc 6224
	addi	%x2, %x2, -176  #888 pc 6228
	lw	%x1, 172(%x2) #888 pc 6232
	flw	%f1, 128(%x2)  #888 pc 6236
	fmul	%f0, %f1, %f0  #888 pc 6240
	flw	%f2, 160(%x2)  #888 pc 6244
	fadd	%f0, %f2, %f0  #888 pc 6248
	flw	%f2, 104(%x2)  #888 pc 6252
	fsw	%f0, 168(%x2)  #888 pc 6256
	fadd	%f0, %f2, %f30  #0 pc 6260
	sw	%x1, 180(%x2)  #888 pc 6264
	addi	%x2, %x2, 184  #888 pc 6268
	jal	%x1, fsqr.2536  #888 pc 6272
	addi	%x2, %x2, -184  #888 pc 6276
	lw	%x1, 180(%x2) #888 pc 6280
	flw	%f1, 112(%x2)  #888 pc 6284
	fmul	%f0, %f1, %f0  #888 pc 6288
	flw	%f2, 168(%x2)  #888 pc 6292
	fadd	%f0, %f2, %f0  #888 pc 6296
	lw	%x5, 0(%x2)  #888 pc 6300
	addi	%x24, %x0, 4  #pc 6304
	add	%x24, %x24, %x5  #888 pc 6308
	fsw	%f0, 0(%x24) #888 pc 6312
	flw	%f0, 56(%x2)  #889 pc 6316
	sw	%x1, 180(%x2)  #889 pc 6320
	addi	%x2, %x2, 184  #889 pc 6324
	jal	%x1, fsqr.2536  #889 pc 6328
	addi	%x2, %x2, -184  #889 pc 6332
	lw	%x1, 180(%x2) #889 pc 6336
	flw	%f1, 136(%x2)  #889 pc 6340
	fmul	%f0, %f1, %f0  #889 pc 6344
	flw	%f2, 48(%x2)  #889 pc 6348
	fsw	%f0, 176(%x2)  #889 pc 6352
	fadd	%f0, %f2, %f30  #0 pc 6356
	sw	%x1, 188(%x2)  #889 pc 6360
	addi	%x2, %x2, 192  #889 pc 6364
	jal	%x1, fsqr.2536  #889 pc 6368
	addi	%x2, %x2, -192  #889 pc 6372
	lw	%x1, 188(%x2) #889 pc 6376
	flw	%f1, 128(%x2)  #889 pc 6380
	fmul	%f0, %f1, %f0  #889 pc 6384
	flw	%f2, 176(%x2)  #889 pc 6388
	fadd	%f0, %f2, %f0  #889 pc 6392
	flw	%f2, 96(%x2)  #889 pc 6396
	fsw	%f0, 184(%x2)  #889 pc 6400
	fadd	%f0, %f2, %f30  #0 pc 6404
	sw	%x1, 196(%x2)  #889 pc 6408
	addi	%x2, %x2, 200  #889 pc 6412
	jal	%x1, fsqr.2536  #889 pc 6416
	addi	%x2, %x2, -200  #889 pc 6420
	lw	%x1, 196(%x2) #889 pc 6424
	flw	%f1, 112(%x2)  #889 pc 6428
	fmul	%f0, %f1, %f0  #889 pc 6432
	flw	%f2, 184(%x2)  #889 pc 6436
	fadd	%f0, %f2, %f0  #889 pc 6440
	lw	%x5, 0(%x2)  #889 pc 6444
	addi	%x24, %x0, 8  #pc 6448
	add	%x24, %x24, %x5  #889 pc 6452
	fsw	%f0, 0(%x24) #889 pc 6456
	fmv	%f0, l.6476  #0 pc 6460
	flw	%f2, 72(%x2)  #892 pc 6464
	flw	%f3, 136(%x2)  #892 pc 6468
	fmul	%f4, %f3, %f2  #892 pc 6472
	flw	%f5, 56(%x2)  #892 pc 6476
	fmul	%f4, %f4, %f5  #892 pc 6480
	flw	%f6, 64(%x2)  #892 pc 6484
	flw	%f7, 128(%x2)  #892 pc 6488
	fmul	%f8, %f7, %f6  #892 pc 6492
	flw	%f9, 48(%x2)  #892 pc 6496
	fmul	%f8, %f8, %f9  #892 pc 6500
	fadd	%f4, %f4, %f8  #892 pc 6504
	flw	%f8, 104(%x2)  #892 pc 6508
	fmul	%f10, %f1, %f8  #892 pc 6512
	flw	%f11, 96(%x2)  #892 pc 6516
	fmul	%f10, %f10, %f11  #892 pc 6520
	fadd	%f4, %f4, %f10  #892 pc 6524
	fmul	%f0, %f0, %f4  #892 pc 6528
	lw	%x5, 4(%x2)  #892 pc 6532
	add	%x24, %x0, %x5  #892 pc 6536
	fsw	%f0, 0(%x24) #892 pc 6540
	fmv	%f0, l.6476  #0 pc 6544
	flw	%f4, 88(%x2)  #893 pc 6548
	fmul	%f10, %f3, %f4  #893 pc 6552
	fmul	%f5, %f10, %f5  #893 pc 6556
	flw	%f10, 80(%x2)  #893 pc 6560
	fmul	%f12, %f7, %f10  #893 pc 6564
	fmul	%f9, %f12, %f9  #893 pc 6568
	fadd	%f5, %f5, %f9  #893 pc 6572
	flw	%f9, 120(%x2)  #893 pc 6576
	fmul	%f12, %f1, %f9  #893 pc 6580
	fmul	%f11, %f12, %f11  #893 pc 6584
	fadd	%f5, %f5, %f11  #893 pc 6588
	fmul	%f0, %f0, %f5  #893 pc 6592
	addi	%x24, %x0, 4  #pc 6596
	add	%x24, %x24, %x5  #893 pc 6600
	fsw	%f0, 0(%x24) #893 pc 6604
	fmv	%f0, l.6476  #0 pc 6608
	fmul	%f3, %f3, %f4  #894 pc 6612
	fmul	%f2, %f3, %f2  #894 pc 6616
	fmul	%f3, %f7, %f10  #894 pc 6620
	fmul	%f3, %f3, %f6  #894 pc 6624
	fadd	%f2, %f2, %f3  #894 pc 6628
	fmul	%f1, %f1, %f9  #894 pc 6632
	fmul	%f1, %f1, %f8  #894 pc 6636
	fadd	%f1, %f2, %f1  #894 pc 6640
	fmul	%f0, %f0, %f1  #894 pc 6644
	addi	%x24, %x0, 8  #pc 6648
	add	%x24, %x24, %x5  #894 pc 6652
	fsw	%f0, 0(%x24) #894 pc 6656
	ret #pc 6660
	nop #pc 6664
read_nth_object.2762:  #pc 6664
	addi	%x24, %x0, 4  #pc 6668
	add	%x24, %x24, %x22  #0 pc 6672
	lw	%x6, 0(%x24)  #0 pc 6676
	sw	%x6, 0(%x2)  #901 pc 6680
	sw	%x5, 4(%x2)  #901 pc 6684
	addi	%x5, %x0, 0  #0 pc 6692
	sw	%x1, 12(%x2)  #901 pc 6696
	addi	%x2, %x2, 16  #901 pc 6700
	jal	%x1, read_int.2580  #901 pc 6704
	addi	%x2, %x2, -16  #901 pc 6708
	lw	%x1, 12(%x2) #901 pc 6712
	addi	%x24, %x0, -1  #pc 6716
	beq	%x5, %x24, 12  #902 pc 6720
	j	be_else.9236 #pc 6724
	nop #pc 6728
	addi	%x5, %x0, 0  #0 pc 6732
	ret #pc 6736
	nop #pc 6740
be_else.9236: #pc 6740
	sw	%x5, 8(%x2)  #904 pc 6744
	addi	%x5, %x0, 0  #0 pc 6752
	sw	%x1, 12(%x2)  #904 pc 6756
	addi	%x2, %x2, 16  #904 pc 6760
	jal	%x1, read_int.2580  #904 pc 6764
	addi	%x2, %x2, -16  #904 pc 6768
	lw	%x1, 12(%x2) #904 pc 6772
	sw	%x5, 12(%x2)  #905 pc 6776
	addi	%x5, %x0, 0  #0 pc 6784
	sw	%x1, 20(%x2)  #905 pc 6788
	addi	%x2, %x2, 24  #905 pc 6792
	jal	%x1, read_int.2580  #905 pc 6796
	addi	%x2, %x2, -24  #905 pc 6800
	lw	%x1, 20(%x2) #905 pc 6804
	sw	%x5, 16(%x2)  #906 pc 6808
	addi	%x5, %x0, 0  #0 pc 6816
	sw	%x1, 20(%x2)  #906 pc 6820
	addi	%x2, %x2, 24  #906 pc 6824
	jal	%x1, read_int.2580  #906 pc 6828
	addi	%x2, %x2, -24  #906 pc 6832
	lw	%x1, 20(%x2) #906 pc 6836
	addi	%x6, %x0, 3  #0 pc 6840
	fmv	%f0, l.6293  #0 pc 6844
	sw	%x5, 20(%x2)  #908 pc 6848
	addi	%x5, %x6, 0  #0 pc 6856
	sw	%x1, 28(%x2)  #908 pc 6860
	addi	%x2, %x2, 32  #908 pc 6864
	jal	%x1, create_float_array.2600  #908 pc 6868
	addi	%x2, %x2, -32  #908 pc 6872
	lw	%x1, 28(%x2) #908 pc 6876
	sw	%x5, 24(%x2)  #909 pc 6880
	addi	%x5, %x0, 0  #0 pc 6888
	sw	%x1, 28(%x2)  #909 pc 6892
	addi	%x2, %x2, 32  #909 pc 6896
	jal	%x1, read_float.2587  #909 pc 6900
	addi	%x2, %x2, -32  #909 pc 6904
	lw	%x1, 28(%x2) #909 pc 6908
	lw	%x5, 24(%x2)  #909 pc 6912
	add	%x24, %x0, %x5  #909 pc 6916
	fsw	%f0, 0(%x24) #909 pc 6920
	addi	%x5, %x0, 0  #0 pc 6928
	sw	%x1, 28(%x2)  #910 pc 6932
	addi	%x2, %x2, 32  #910 pc 6936
	jal	%x1, read_float.2587  #910 pc 6940
	addi	%x2, %x2, -32  #910 pc 6944
	lw	%x1, 28(%x2) #910 pc 6948
	lw	%x5, 24(%x2)  #910 pc 6952
	addi	%x24, %x0, 4  #pc 6956
	add	%x24, %x24, %x5  #910 pc 6960
	fsw	%f0, 0(%x24) #910 pc 6964
	addi	%x5, %x0, 0  #0 pc 6972
	sw	%x1, 28(%x2)  #911 pc 6976
	addi	%x2, %x2, 32  #911 pc 6980
	jal	%x1, read_float.2587  #911 pc 6984
	addi	%x2, %x2, -32  #911 pc 6988
	lw	%x1, 28(%x2) #911 pc 6992
	lw	%x5, 24(%x2)  #911 pc 6996
	addi	%x24, %x0, 8  #pc 7000
	add	%x24, %x24, %x5  #911 pc 7004
	fsw	%f0, 0(%x24) #911 pc 7008
	addi	%x6, %x0, 3  #0 pc 7012
	fmv	%f0, l.6293  #0 pc 7016
	addi	%x5, %x6, 0  #0 pc 7024
	sw	%x1, 28(%x2)  #913 pc 7028
	addi	%x2, %x2, 32  #913 pc 7032
	jal	%x1, create_float_array.2600  #913 pc 7036
	addi	%x2, %x2, -32  #913 pc 7040
	lw	%x1, 28(%x2) #913 pc 7044
	sw	%x5, 28(%x2)  #914 pc 7048
	addi	%x5, %x0, 0  #0 pc 7056
	sw	%x1, 36(%x2)  #914 pc 7060
	addi	%x2, %x2, 40  #914 pc 7064
	jal	%x1, read_float.2587  #914 pc 7068
	addi	%x2, %x2, -40  #914 pc 7072
	lw	%x1, 36(%x2) #914 pc 7076
	lw	%x5, 28(%x2)  #914 pc 7080
	add	%x24, %x0, %x5  #914 pc 7084
	fsw	%f0, 0(%x24) #914 pc 7088
	addi	%x5, %x0, 0  #0 pc 7096
	sw	%x1, 36(%x2)  #915 pc 7100
	addi	%x2, %x2, 40  #915 pc 7104
	jal	%x1, read_float.2587  #915 pc 7108
	addi	%x2, %x2, -40  #915 pc 7112
	lw	%x1, 36(%x2) #915 pc 7116
	lw	%x5, 28(%x2)  #915 pc 7120
	addi	%x24, %x0, 4  #pc 7124
	add	%x24, %x24, %x5  #915 pc 7128
	fsw	%f0, 0(%x24) #915 pc 7132
	addi	%x5, %x0, 0  #0 pc 7140
	sw	%x1, 36(%x2)  #916 pc 7144
	addi	%x2, %x2, 40  #916 pc 7148
	jal	%x1, read_float.2587  #916 pc 7152
	addi	%x2, %x2, -40  #916 pc 7156
	lw	%x1, 36(%x2) #916 pc 7160
	lw	%x5, 28(%x2)  #916 pc 7164
	addi	%x24, %x0, 8  #pc 7168
	add	%x24, %x24, %x5  #916 pc 7172
	fsw	%f0, 0(%x24) #916 pc 7176
	addi	%x5, %x0, 0  #0 pc 7184
	sw	%x1, 36(%x2)  #918 pc 7188
	addi	%x2, %x2, 40  #918 pc 7192
	jal	%x1, read_float.2587  #918 pc 7196
	addi	%x2, %x2, -40  #918 pc 7200
	lw	%x1, 36(%x2) #918 pc 7204
	sw	%x1, 36(%x2)  #918 pc 7208
	addi	%x2, %x2, 40  #918 pc 7212
	jal	%x1, fisneg.2532  #918 pc 7216
	addi	%x2, %x2, -40  #918 pc 7220
	lw	%x1, 36(%x2) #918 pc 7224
	addi	%x6, %x0, 2  #0 pc 7228
	fmv	%f0, l.6293  #0 pc 7232
	sw	%x5, 32(%x2)  #920 pc 7236
	addi	%x5, %x6, 0  #0 pc 7244
	sw	%x1, 36(%x2)  #920 pc 7248
	addi	%x2, %x2, 40  #920 pc 7252
	jal	%x1, create_float_array.2600  #920 pc 7256
	addi	%x2, %x2, -40  #920 pc 7260
	lw	%x1, 36(%x2) #920 pc 7264
	sw	%x5, 36(%x2)  #921 pc 7268
	addi	%x5, %x0, 0  #0 pc 7276
	sw	%x1, 44(%x2)  #921 pc 7280
	addi	%x2, %x2, 48  #921 pc 7284
	jal	%x1, read_float.2587  #921 pc 7288
	addi	%x2, %x2, -48  #921 pc 7292
	lw	%x1, 44(%x2) #921 pc 7296
	lw	%x5, 36(%x2)  #921 pc 7300
	add	%x24, %x0, %x5  #921 pc 7304
	fsw	%f0, 0(%x24) #921 pc 7308
	addi	%x5, %x0, 0  #0 pc 7316
	sw	%x1, 44(%x2)  #922 pc 7320
	addi	%x2, %x2, 48  #922 pc 7324
	jal	%x1, read_float.2587  #922 pc 7328
	addi	%x2, %x2, -48  #922 pc 7332
	lw	%x1, 44(%x2) #922 pc 7336
	lw	%x5, 36(%x2)  #922 pc 7340
	addi	%x24, %x0, 4  #pc 7344
	add	%x24, %x24, %x5  #922 pc 7348
	fsw	%f0, 0(%x24) #922 pc 7352
	addi	%x6, %x0, 3  #0 pc 7356
	fmv	%f0, l.6293  #0 pc 7360
	addi	%x5, %x6, 0  #0 pc 7368
	sw	%x1, 44(%x2)  #924 pc 7372
	addi	%x2, %x2, 48  #924 pc 7376
	jal	%x1, create_float_array.2600  #924 pc 7380
	addi	%x2, %x2, -48  #924 pc 7384
	lw	%x1, 44(%x2) #924 pc 7388
	sw	%x5, 40(%x2)  #925 pc 7392
	addi	%x5, %x0, 0  #0 pc 7400
	sw	%x1, 44(%x2)  #925 pc 7404
	addi	%x2, %x2, 48  #925 pc 7408
	jal	%x1, read_float.2587  #925 pc 7412
	addi	%x2, %x2, -48  #925 pc 7416
	lw	%x1, 44(%x2) #925 pc 7420
	lw	%x5, 40(%x2)  #925 pc 7424
	add	%x24, %x0, %x5  #925 pc 7428
	fsw	%f0, 0(%x24) #925 pc 7432
	addi	%x5, %x0, 0  #0 pc 7440
	sw	%x1, 44(%x2)  #926 pc 7444
	addi	%x2, %x2, 48  #926 pc 7448
	jal	%x1, read_float.2587  #926 pc 7452
	addi	%x2, %x2, -48  #926 pc 7456
	lw	%x1, 44(%x2) #926 pc 7460
	lw	%x5, 40(%x2)  #926 pc 7464
	addi	%x24, %x0, 4  #pc 7468
	add	%x24, %x24, %x5  #926 pc 7472
	fsw	%f0, 0(%x24) #926 pc 7476
	addi	%x5, %x0, 0  #0 pc 7484
	sw	%x1, 44(%x2)  #927 pc 7488
	addi	%x2, %x2, 48  #927 pc 7492
	jal	%x1, read_float.2587  #927 pc 7496
	addi	%x2, %x2, -48  #927 pc 7500
	lw	%x1, 44(%x2) #927 pc 7504
	lw	%x5, 40(%x2)  #927 pc 7508
	addi	%x24, %x0, 8  #pc 7512
	add	%x24, %x24, %x5  #927 pc 7516
	fsw	%f0, 0(%x24) #927 pc 7520
	addi	%x6, %x0, 3  #0 pc 7524
	fmv	%f0, l.6293  #0 pc 7528
	addi	%x5, %x6, 0  #0 pc 7536
	sw	%x1, 44(%x2)  #929 pc 7540
	addi	%x2, %x2, 48  #929 pc 7544
	jal	%x1, create_float_array.2600  #929 pc 7548
	addi	%x2, %x2, -48  #929 pc 7552
	lw	%x1, 44(%x2) #929 pc 7556
	lw	%x6, 20(%x2)  #930 pc 7560
	beq	%x6, %x0, 12  #930 pc 7564
	j	be_else.9237 #pc 7568
	nop #pc 7572
	j	be_cont.9238 #pc 7576
	nop #pc 7580
be_else.9237: #pc 7580
	sw	%x5, 44(%x2)  #932 pc 7584
	addi	%x5, %x0, 0  #0 pc 7592
	sw	%x1, 52(%x2)  #932 pc 7596
	addi	%x2, %x2, 56  #932 pc 7600
	jal	%x1, read_float.2587  #932 pc 7604
	addi	%x2, %x2, -56  #932 pc 7608
	lw	%x1, 52(%x2) #932 pc 7612
	sw	%x1, 52(%x2)  #932 pc 7616
	addi	%x2, %x2, 56  #932 pc 7620
	jal	%x1, rad.2753  #932 pc 7624
	addi	%x2, %x2, -56  #932 pc 7628
	lw	%x1, 52(%x2) #932 pc 7632
	lw	%x5, 44(%x2)  #932 pc 7636
	add	%x24, %x0, %x5  #932 pc 7640
	fsw	%f0, 0(%x24) #932 pc 7644
	addi	%x5, %x0, 0  #0 pc 7652
	sw	%x1, 52(%x2)  #933 pc 7656
	addi	%x2, %x2, 56  #933 pc 7660
	jal	%x1, read_float.2587  #933 pc 7664
	addi	%x2, %x2, -56  #933 pc 7668
	lw	%x1, 52(%x2) #933 pc 7672
	sw	%x1, 52(%x2)  #933 pc 7676
	addi	%x2, %x2, 56  #933 pc 7680
	jal	%x1, rad.2753  #933 pc 7684
	addi	%x2, %x2, -56  #933 pc 7688
	lw	%x1, 52(%x2) #933 pc 7692
	lw	%x5, 44(%x2)  #933 pc 7696
	addi	%x24, %x0, 4  #pc 7700
	add	%x24, %x24, %x5  #933 pc 7704
	fsw	%f0, 0(%x24) #933 pc 7708
	addi	%x5, %x0, 0  #0 pc 7716
	sw	%x1, 52(%x2)  #934 pc 7720
	addi	%x2, %x2, 56  #934 pc 7724
	jal	%x1, read_float.2587  #934 pc 7728
	addi	%x2, %x2, -56  #934 pc 7732
	lw	%x1, 52(%x2) #934 pc 7736
	sw	%x1, 52(%x2)  #934 pc 7740
	addi	%x2, %x2, 56  #934 pc 7744
	jal	%x1, rad.2753  #934 pc 7748
	addi	%x2, %x2, -56  #934 pc 7752
	lw	%x1, 52(%x2) #934 pc 7756
	lw	%x5, 44(%x2)  #934 pc 7760
	addi	%x24, %x0, 8  #pc 7764
	add	%x24, %x24, %x5  #934 pc 7768
	fsw	%f0, 0(%x24) #934 pc 7772
be_cont.9238: #pc 7772
	lw	%x6, 12(%x2)  #941 pc 7776
	addi	%x24, %x0, 2  #pc 7780
	beq	%x6, %x24, 12  #941 pc 7784
	j	be_else.9239 #pc 7788
	nop #pc 7792
	addi	%x7, %x0, 1  #0 pc 7796
	j	be_cont.9240 #pc 7800
	nop #pc 7804
be_else.9239: #pc 7804
	lw	%x7, 32(%x2)  #941 pc 7808
be_cont.9240: #pc 7808
	addi	%x9, %x0, 4  #0 pc 7812
	fmv	%f0, l.6293  #0 pc 7816
	sw	%x7, 48(%x2)  #942 pc 7820
	sw	%x5, 44(%x2)  #942 pc 7824
	addi	%x5, %x9, 0  #0 pc 7832
	sw	%x1, 52(%x2)  #942 pc 7836
	addi	%x2, %x2, 56  #942 pc 7840
	jal	%x1, create_float_array.2600  #942 pc 7844
	addi	%x2, %x2, -56  #942 pc 7848
	lw	%x1, 52(%x2) #942 pc 7852
	addi	%x6, %x3, 0  #945 pc 7856
	addi	%x3, %x3, 48  #945 pc 7860
	addi	%x24, %x0, 40  #pc 7864
	add	%x24, %x24, %x6  #945 pc 7868
	sw	%x5, 0(%x24)  #945 pc 7872
	lw	%x5, 44(%x2)  #945 pc 7876
	addi	%x24, %x0, 36  #pc 7880
	add	%x24, %x24, %x6  #945 pc 7884
	sw	%x5, 0(%x24)  #945 pc 7888
	lw	%x7, 40(%x2)  #945 pc 7892
	addi	%x24, %x0, 32  #pc 7896
	add	%x24, %x24, %x6  #945 pc 7900
	sw	%x7, 0(%x24)  #945 pc 7904
	lw	%x7, 36(%x2)  #945 pc 7908
	addi	%x24, %x0, 28  #pc 7912
	add	%x24, %x24, %x6  #945 pc 7916
	sw	%x7, 0(%x24)  #945 pc 7920
	lw	%x7, 48(%x2)  #945 pc 7924
	addi	%x24, %x0, 24  #pc 7928
	add	%x24, %x24, %x6  #945 pc 7932
	sw	%x7, 0(%x24)  #945 pc 7936
	lw	%x7, 28(%x2)  #945 pc 7940
	addi	%x24, %x0, 20  #pc 7944
	add	%x24, %x24, %x6  #945 pc 7948
	sw	%x7, 0(%x24)  #945 pc 7952
	lw	%x7, 24(%x2)  #945 pc 7956
	addi	%x24, %x0, 16  #pc 7960
	add	%x24, %x24, %x6  #945 pc 7964
	sw	%x7, 0(%x24)  #945 pc 7968
	lw	%x9, 20(%x2)  #945 pc 7972
	addi	%x24, %x0, 12  #pc 7976
	add	%x24, %x24, %x6  #945 pc 7980
	sw	%x9, 0(%x24)  #945 pc 7984
	lw	%x10, 16(%x2)  #945 pc 7988
	addi	%x24, %x0, 8  #pc 7992
	add	%x24, %x24, %x6  #945 pc 7996
	sw	%x10, 0(%x24)  #945 pc 8000
	lw	%x10, 12(%x2)  #945 pc 8004
	addi	%x24, %x0, 4  #pc 8008
	add	%x24, %x24, %x6  #945 pc 8012
	sw	%x10, 0(%x24)  #945 pc 8016
	lw	%x11, 8(%x2)  #945 pc 8020
	add	%x24, %x0, %x6  #945 pc 8024
	sw	%x11, 0(%x24)  #945 pc 8028
	lw	%x11, 4(%x2)  #953 pc 8032
	slli	%x11, %x11, 2  #953 pc 8036
	lw	%x12, 0(%x2)  #953 pc 8040
	add	%x24, %x11, %x12  #953 pc 8044
	sw	%x6, 0(%x24)  #953 pc 8048
	addi	%x24, %x0, 3  #pc 8052
	beq	%x10, %x24, 12  #955 pc 8056
	j	be_else.9241 #pc 8060
	nop #pc 8064
	add	%x24, %x0, %x7  #958 pc 8068
	flw	%f0, 0(%x24)  #958 pc 8072
	fsw	%f0, 56(%x2)  #959 pc 8076
	sw	%x1, 68(%x2)  #959 pc 8080
	addi	%x2, %x2, 72  #959 pc 8084
	jal	%x1, fiszero.2528  #959 pc 8088
	addi	%x2, %x2, -72  #959 pc 8092
	lw	%x1, 68(%x2) #959 pc 8096
	beq	%x5, %x0, 12  #959 pc 8100
	j	be_else.9244 #pc 8104
	nop #pc 8108
	flw	%f0, 56(%x2)  #959 pc 8112
	sw	%x1, 68(%x2)  #959 pc 8116
	addi	%x2, %x2, 72  #959 pc 8120
	jal	%x1, sgn.2636  #959 pc 8124
	addi	%x2, %x2, -72  #959 pc 8128
	lw	%x1, 68(%x2) #959 pc 8132
	flw	%f1, 56(%x2)  #959 pc 8136
	fsw	%f0, 64(%x2)  #959 pc 8140
	fadd	%f0, %f1, %f30  #0 pc 8144
	sw	%x1, 76(%x2)  #959 pc 8148
	addi	%x2, %x2, 80  #959 pc 8152
	jal	%x1, fsqr.2536  #959 pc 8156
	addi	%x2, %x2, -80  #959 pc 8160
	lw	%x1, 76(%x2) #959 pc 8164
	flw	%f1, 64(%x2)  #959 pc 8168
	fdiv	%f0, %f1, %f0  #959 pc 8172
	j	be_cont.9245 #pc 8176
	nop #pc 8180
be_else.9244: #pc 8180
	fmv	%f0, l.6293  #0 pc 8184
be_cont.9245: #pc 8184
	lw	%x5, 24(%x2)  #959 pc 8188
	add	%x24, %x0, %x5  #959 pc 8192
	fsw	%f0, 0(%x24) #959 pc 8196
	addi	%x24, %x0, 4  #pc 8200
	add	%x24, %x24, %x5  #960 pc 8204
	flw	%f0, 0(%x24)  #960 pc 8208
	fsw	%f0, 72(%x2)  #961 pc 8212
	sw	%x1, 84(%x2)  #961 pc 8216
	addi	%x2, %x2, 88  #961 pc 8220
	jal	%x1, fiszero.2528  #961 pc 8224
	addi	%x2, %x2, -88  #961 pc 8228
	lw	%x1, 84(%x2) #961 pc 8232
	beq	%x5, %x0, 12  #961 pc 8236
	j	be_else.9246 #pc 8240
	nop #pc 8244
	flw	%f0, 72(%x2)  #961 pc 8248
	sw	%x1, 84(%x2)  #961 pc 8252
	addi	%x2, %x2, 88  #961 pc 8256
	jal	%x1, sgn.2636  #961 pc 8260
	addi	%x2, %x2, -88  #961 pc 8264
	lw	%x1, 84(%x2) #961 pc 8268
	flw	%f1, 72(%x2)  #961 pc 8272
	fsw	%f0, 80(%x2)  #961 pc 8276
	fadd	%f0, %f1, %f30  #0 pc 8280
	sw	%x1, 92(%x2)  #961 pc 8284
	addi	%x2, %x2, 96  #961 pc 8288
	jal	%x1, fsqr.2536  #961 pc 8292
	addi	%x2, %x2, -96  #961 pc 8296
	lw	%x1, 92(%x2) #961 pc 8300
	flw	%f1, 80(%x2)  #961 pc 8304
	fdiv	%f0, %f1, %f0  #961 pc 8308
	j	be_cont.9247 #pc 8312
	nop #pc 8316
be_else.9246: #pc 8316
	fmv	%f0, l.6293  #0 pc 8320
be_cont.9247: #pc 8320
	lw	%x5, 24(%x2)  #961 pc 8324
	addi	%x24, %x0, 4  #pc 8328
	add	%x24, %x24, %x5  #961 pc 8332
	fsw	%f0, 0(%x24) #961 pc 8336
	addi	%x24, %x0, 8  #pc 8340
	add	%x24, %x24, %x5  #962 pc 8344
	flw	%f0, 0(%x24)  #962 pc 8348
	fsw	%f0, 88(%x2)  #963 pc 8352
	sw	%x1, 100(%x2)  #963 pc 8356
	addi	%x2, %x2, 104  #963 pc 8360
	jal	%x1, fiszero.2528  #963 pc 8364
	addi	%x2, %x2, -104  #963 pc 8368
	lw	%x1, 100(%x2) #963 pc 8372
	beq	%x5, %x0, 12  #963 pc 8376
	j	be_else.9248 #pc 8380
	nop #pc 8384
	flw	%f0, 88(%x2)  #963 pc 8388
	sw	%x1, 100(%x2)  #963 pc 8392
	addi	%x2, %x2, 104  #963 pc 8396
	jal	%x1, sgn.2636  #963 pc 8400
	addi	%x2, %x2, -104  #963 pc 8404
	lw	%x1, 100(%x2) #963 pc 8408
	flw	%f1, 88(%x2)  #963 pc 8412
	fsw	%f0, 96(%x2)  #963 pc 8416
	fadd	%f0, %f1, %f30  #0 pc 8420
	sw	%x1, 108(%x2)  #963 pc 8424
	addi	%x2, %x2, 112  #963 pc 8428
	jal	%x1, fsqr.2536  #963 pc 8432
	addi	%x2, %x2, -112  #963 pc 8436
	lw	%x1, 108(%x2) #963 pc 8440
	flw	%f1, 96(%x2)  #963 pc 8444
	fdiv	%f0, %f1, %f0  #963 pc 8448
	j	be_cont.9249 #pc 8452
	nop #pc 8456
be_else.9248: #pc 8456
	fmv	%f0, l.6293  #0 pc 8460
be_cont.9249: #pc 8460
	lw	%x5, 24(%x2)  #963 pc 8464
	addi	%x24, %x0, 8  #pc 8468
	add	%x24, %x24, %x5  #963 pc 8472
	fsw	%f0, 0(%x24) #963 pc 8476
	j	be_cont.9242 #pc 8480
	nop #pc 8484
be_else.9241: #pc 8484
	addi	%x24, %x0, 2  #pc 8488
	beq	%x10, %x24, 12  #965 pc 8492
	j	be_else.9250 #pc 8496
	nop #pc 8500
	lw	%x6, 32(%x2)  #967 pc 8504
	beq	%x6, %x0, 12  #967 pc 8508
	j	be_else.9252 #pc 8512
	nop #pc 8516
	addi	%x6, %x0, 1  #0 pc 8520
	j	be_cont.9253 #pc 8524
	nop #pc 8528
be_else.9252: #pc 8528
	addi	%x6, %x0, 0  #0 pc 8532
be_cont.9253: #pc 8532
	addi	%x5, %x7, 0  #0 pc 8540
	sw	%x1, 108(%x2)  #967 pc 8544
	addi	%x2, %x2, 112  #967 pc 8548
	jal	%x1, vecunit_sgn.2657  #967 pc 8552
	addi	%x2, %x2, -112  #967 pc 8556
	lw	%x1, 108(%x2) #967 pc 8560
	j	be_cont.9251 #pc 8564
	nop #pc 8568
be_else.9250: #pc 8568
be_cont.9251: #pc 8568
be_cont.9242: #pc 8568
	lw	%x5, 20(%x2)  #971 pc 8572
	beq	%x5, %x0, 12  #971 pc 8576
	j	be_else.9254 #pc 8580
	nop #pc 8584
	j	be_cont.9255 #pc 8588
	nop #pc 8592
be_else.9254: #pc 8592
	lw	%x5, 24(%x2)  #972 pc 8596
	lw	%x6, 44(%x2)  #972 pc 8600
	sw	%x1, 108(%x2)  #972 pc 8604
	addi	%x2, %x2, 112  #972 pc 8608
	jal	%x1, rotate_quadratic_matrix.2759  #972 pc 8612
	addi	%x2, %x2, -112  #972 pc 8616
	lw	%x1, 108(%x2) #972 pc 8620
be_cont.9255: #pc 8620
	addi	%x5, %x0, 1  #0 pc 8624
	ret #pc 8628
	nop #pc 8632
read_object.2764:  #pc 8632
	addi	%x24, %x0, 8  #pc 8636
	add	%x24, %x24, %x22  #0 pc 8640
	lw	%x6, 0(%x24)  #0 pc 8644
	addi	%x24, %x0, 4  #pc 8648
	add	%x24, %x24, %x22  #0 pc 8652
	lw	%x7, 0(%x24)  #0 pc 8656
	addi	%x24, %x0, 60  #pc 8660
	bge	%x5, %x24, 12  #983 pc 8664
	j	bge_else.9256 #pc 8668
	nop #pc 8672
	ret #pc 8676
	nop #pc 8680
bge_else.9256: #pc 8680
	sw	%x22, 0(%x2)  #984 pc 8684
	sw	%x7, 4(%x2)  #984 pc 8688
	sw	%x5, 8(%x2)  #984 pc 8692
	addi	%x22, %x6, 0  #0 pc 8700
	sw	%x1, 12(%x2)  #984 pc 8704
	lw	%x23, 0(%x22)  #984 pc 8708
	addi	%x2, %x2, 16  #984 pc 8712
	jalr	%x1, %x23, 0  #984 pc 8716
	addi	%x2, %x2, -16  #984 pc 8720
	lw	%x1, 12(%x2)  #984 pc 8724
	beq	%x5, %x0, 12  #984 pc 8728
	j	be_else.9258 #pc 8732
	nop #pc 8736
	lw	%x5, 4(%x2)  #987 pc 8740
	lw	%x6, 8(%x2)  #987 pc 8744
	add	%x24, %x0, %x5  #987 pc 8748
	sw	%x6, 0(%x24)  #987 pc 8752
	ret #pc 8756
	nop #pc 8760
be_else.9258: #pc 8760
	lw	%x5, 8(%x2)  #985 pc 8764
	addi	%x5, %x5, 1  #985 pc 8768
	lw	%x22, 0(%x2)  #985 pc 8772
	lw	%x23, 0(%x22)  #985 pc 8776
	jalr	%x0, %x23, 0  #985 pc 8780
	nop #pc 8784
read_all_object.2766:  #pc 8784
	addi	%x24, %x0, 4  #pc 8788
	add	%x24, %x24, %x22  #0 pc 8792
	lw	%x22, 0(%x24)  #0 pc 8796
	addi	%x5, %x0, 0  #0 pc 8800
	lw	%x23, 0(%x22)  #992 pc 8804
	jalr	%x0, %x23, 0  #992 pc 8808
	nop #pc 8812
read_net_item.2768:  #pc 8812
	sw	%x5, 0(%x2)  #999 pc 8816
	addi	%x5, %x0, 0  #0 pc 8824
	sw	%x1, 4(%x2)  #999 pc 8828
	addi	%x2, %x2, 8  #999 pc 8832
	jal	%x1, read_int.2580  #999 pc 8836
	addi	%x2, %x2, -8  #999 pc 8840
	lw	%x1, 4(%x2) #999 pc 8844
	addi	%x24, %x0, -1  #pc 8848
	beq	%x5, %x24, 12  #1000 pc 8852
	j	be_else.9260 #pc 8856
	nop #pc 8860
	lw	%x5, 0(%x2)  #1000 pc 8864
	addi	%x5, %x5, 1  #1000 pc 8868
	addi	%x6, %x0, -1  #0 pc 8872
	j	create_array.2593  #1000 pc 8876
	nop #pc 8880
be_else.9260: #pc 8880
	lw	%x6, 0(%x2)  #1002 pc 8884
	addi	%x7, %x6, 1  #1002 pc 8888
	sw	%x5, 4(%x2)  #1002 pc 8892
	addi	%x5, %x7, 0  #0 pc 8900
	sw	%x1, 12(%x2)  #1002 pc 8904
	addi	%x2, %x2, 16  #1002 pc 8908
	jal	%x1, read_net_item.2768  #1002 pc 8912
	addi	%x2, %x2, -16  #1002 pc 8916
	lw	%x1, 12(%x2) #1002 pc 8920
	lw	%x6, 0(%x2)  #1003 pc 8924
	slli	%x6, %x6, 2  #1003 pc 8928
	lw	%x7, 4(%x2)  #1003 pc 8932
	add	%x24, %x6, %x5  #1003 pc 8936
	sw	%x7, 0(%x24)  #1003 pc 8940
	ret #pc 8944
	nop #pc 8948
read_or_network.2770:  #pc 8948
	addi	%x6, %x0, 0  #0 pc 8952
	sw	%x5, 0(%x2)  #1007 pc 8956
	addi	%x5, %x6, 0  #0 pc 8964
	sw	%x1, 4(%x2)  #1007 pc 8968
	addi	%x2, %x2, 8  #1007 pc 8972
	jal	%x1, read_net_item.2768  #1007 pc 8976
	addi	%x2, %x2, -8  #1007 pc 8980
	lw	%x1, 4(%x2) #1007 pc 8984
	addi	%x6, %x5, 0  #1007 pc 8988
	add	%x24, %x0, %x6  #1008 pc 8992
	lw	%x5, 0(%x24)  #1008 pc 8996
	addi	%x24, %x0, -1  #pc 9000
	beq	%x5, %x24, 12  #1008 pc 9004
	j	be_else.9261 #pc 9008
	nop #pc 9012
	lw	%x5, 0(%x2)  #1009 pc 9016
	addi	%x5, %x5, 1  #1009 pc 9020
	j	create_array.2593  #1009 pc 9024
	nop #pc 9028
be_else.9261: #pc 9028
	lw	%x5, 0(%x2)  #1011 pc 9032
	addi	%x7, %x5, 1  #1011 pc 9036
	sw	%x6, 4(%x2)  #1011 pc 9040
	addi	%x5, %x7, 0  #0 pc 9048
	sw	%x1, 12(%x2)  #1011 pc 9052
	addi	%x2, %x2, 16  #1011 pc 9056
	jal	%x1, read_or_network.2770  #1011 pc 9060
	addi	%x2, %x2, -16  #1011 pc 9064
	lw	%x1, 12(%x2) #1011 pc 9068
	lw	%x6, 0(%x2)  #1012 pc 9072
	slli	%x6, %x6, 2  #1012 pc 9076
	lw	%x7, 4(%x2)  #1012 pc 9080
	add	%x24, %x6, %x5  #1012 pc 9084
	sw	%x7, 0(%x24)  #1012 pc 9088
	ret #pc 9092
	nop #pc 9096
read_and_network.2772:  #pc 9096
	addi	%x24, %x0, 4  #pc 9100
	add	%x24, %x24, %x22  #0 pc 9104
	lw	%x6, 0(%x24)  #0 pc 9108
	addi	%x7, %x0, 0  #0 pc 9112
	sw	%x22, 0(%x2)  #1016 pc 9116
	sw	%x6, 4(%x2)  #1016 pc 9120
	sw	%x5, 8(%x2)  #1016 pc 9124
	addi	%x5, %x7, 0  #0 pc 9132
	sw	%x1, 12(%x2)  #1016 pc 9136
	addi	%x2, %x2, 16  #1016 pc 9140
	jal	%x1, read_net_item.2768  #1016 pc 9144
	addi	%x2, %x2, -16  #1016 pc 9148
	lw	%x1, 12(%x2) #1016 pc 9152
	add	%x24, %x0, %x5  #1017 pc 9156
	lw	%x6, 0(%x24)  #1017 pc 9160
	addi	%x24, %x0, -1  #pc 9164
	beq	%x6, %x24, 12  #1017 pc 9168
	j	be_else.9262 #pc 9172
	nop #pc 9176
	ret #pc 9180
	nop #pc 9184
be_else.9262: #pc 9184
	lw	%x6, 8(%x2)  #1019 pc 9188
	slli	%x7, %x6, 2  #1019 pc 9192
	lw	%x9, 4(%x2)  #1019 pc 9196
	add	%x24, %x7, %x9  #1019 pc 9200
	sw	%x5, 0(%x24)  #1019 pc 9204
	addi	%x5, %x6, 1  #1020 pc 9208
	lw	%x22, 0(%x2)  #1020 pc 9212
	lw	%x23, 0(%x22)  #1020 pc 9216
	jalr	%x0, %x23, 0  #1020 pc 9220
	nop #pc 9224
read_parameter.2774:  #pc 9224
	addi	%x24, %x0, 20  #pc 9228
	add	%x24, %x24, %x22  #0 pc 9232
	lw	%x5, 0(%x24)  #0 pc 9236
	addi	%x24, %x0, 16  #pc 9240
	add	%x24, %x24, %x22  #0 pc 9244
	lw	%x6, 0(%x24)  #0 pc 9248
	addi	%x24, %x0, 12  #pc 9252
	add	%x24, %x24, %x22  #0 pc 9256
	lw	%x7, 0(%x24)  #0 pc 9260
	addi	%x24, %x0, 8  #pc 9264
	add	%x24, %x24, %x22  #0 pc 9268
	lw	%x9, 0(%x24)  #0 pc 9272
	addi	%x24, %x0, 4  #pc 9276
	add	%x24, %x24, %x22  #0 pc 9280
	lw	%x10, 0(%x24)  #0 pc 9284
	sw	%x10, 0(%x2)  #1026 pc 9288
	sw	%x7, 4(%x2)  #1026 pc 9292
	sw	%x9, 8(%x2)  #1026 pc 9296
	sw	%x6, 12(%x2)  #1026 pc 9300
	addi	%x22, %x5, 0  #0 pc 9308
	addi	%x5, %x0, 0  #0 pc 9316
	sw	%x1, 20(%x2)  #1026 pc 9320
	lw	%x23, 0(%x22)  #1026 pc 9324
	addi	%x2, %x2, 24  #1026 pc 9328
	jalr	%x1, %x23, 0  #1026 pc 9332
	addi	%x2, %x2, -24  #1026 pc 9336
	lw	%x1, 20(%x2)  #1026 pc 9340
	lw	%x22, 12(%x2)  #1027 pc 9344
	addi	%x5, %x0, 0  #0 pc 9352
	sw	%x1, 20(%x2)  #1027 pc 9356
	lw	%x23, 0(%x22)  #1027 pc 9360
	addi	%x2, %x2, 24  #1027 pc 9364
	jalr	%x1, %x23, 0  #1027 pc 9368
	addi	%x2, %x2, -24  #1027 pc 9372
	lw	%x1, 20(%x2)  #1027 pc 9376
	lw	%x22, 8(%x2)  #1028 pc 9380
	addi	%x5, %x0, 0  #0 pc 9388
	sw	%x1, 20(%x2)  #1028 pc 9392
	lw	%x23, 0(%x22)  #1028 pc 9396
	addi	%x2, %x2, 24  #1028 pc 9400
	jalr	%x1, %x23, 0  #1028 pc 9404
	addi	%x2, %x2, -24  #1028 pc 9408
	lw	%x1, 20(%x2)  #1028 pc 9412
	addi	%x5, %x0, 0  #0 pc 9416
	lw	%x22, 4(%x2)  #1029 pc 9420
	sw	%x1, 20(%x2)  #1029 pc 9424
	lw	%x23, 0(%x22)  #1029 pc 9428
	addi	%x2, %x2, 24  #1029 pc 9432
	jalr	%x1, %x23, 0  #1029 pc 9436
	addi	%x2, %x2, -24  #1029 pc 9440
	lw	%x1, 20(%x2)  #1029 pc 9444
	addi	%x5, %x0, 0  #0 pc 9448
	sw	%x1, 20(%x2)  #1030 pc 9452
	addi	%x2, %x2, 24  #1030 pc 9456
	jal	%x1, read_or_network.2770  #1030 pc 9460
	addi	%x2, %x2, -24  #1030 pc 9464
	lw	%x1, 20(%x2) #1030 pc 9468
	lw	%x6, 0(%x2)  #1030 pc 9472
	add	%x24, %x0, %x6  #1030 pc 9476
	sw	%x5, 0(%x24)  #1030 pc 9480
	ret #pc 9484
	nop #pc 9488
solver_rect_surface.2776:  #pc 9488
	addi	%x24, %x0, 4  #pc 9492
	add	%x24, %x24, %x22  #0 pc 9496
	lw	%x11, 0(%x24)  #0 pc 9500
	slli	%x12, %x7, 2  #1050 pc 9504
	add	%x24, %x12, %x6  #1050 pc 9508
	flw	%f3, 0(%x24)  #1050 pc 9512
	sw	%x11, 0(%x2)  #1050 pc 9516
	fsw	%f2, 8(%x2)  #1050 pc 9520
	sw	%x10, 16(%x2)  #1050 pc 9524
	fsw	%f1, 24(%x2)  #1050 pc 9528
	sw	%x9, 32(%x2)  #1050 pc 9532
	fsw	%f0, 40(%x2)  #1050 pc 9536
	sw	%x6, 48(%x2)  #1050 pc 9540
	sw	%x7, 52(%x2)  #1050 pc 9544
	sw	%x5, 56(%x2)  #1050 pc 9548
	fadd	%f0, %f3, %f30  #0 pc 9552
	sw	%x1, 60(%x2)  #1050 pc 9556
	addi	%x2, %x2, 64  #1050 pc 9560
	jal	%x1, fiszero.2528  #1050 pc 9564
	addi	%x2, %x2, -64  #1050 pc 9568
	lw	%x1, 60(%x2) #1050 pc 9572
	beq	%x5, %x0, 12  #1050 pc 9576
	j	be_else.9268 #pc 9580
	nop #pc 9584
	lw	%x5, 56(%x2)  #1051 pc 9588
	sw	%x1, 60(%x2)  #1051 pc 9592
	addi	%x2, %x2, 64  #1051 pc 9596
	jal	%x1, o_param_abc.2698  #1051 pc 9600
	addi	%x2, %x2, -64  #1051 pc 9604
	lw	%x1, 60(%x2) #1051 pc 9608
	lw	%x6, 56(%x2)  #1052 pc 9612
	sw	%x5, 60(%x2)  #1052 pc 9616
	addi	%x5, %x6, 0  #0 pc 9624
	sw	%x1, 68(%x2)  #1052 pc 9628
	addi	%x2, %x2, 72  #1052 pc 9632
	jal	%x1, o_isinvert.2688  #1052 pc 9636
	addi	%x2, %x2, -72  #1052 pc 9640
	lw	%x1, 68(%x2) #1052 pc 9644
	lw	%x6, 52(%x2)  #1052 pc 9648
	slli	%x7, %x6, 2  #1052 pc 9652
	lw	%x9, 48(%x2)  #1052 pc 9656
	add	%x24, %x7, %x9  #1052 pc 9660
	flw	%f0, 0(%x24)  #1052 pc 9664
	sw	%x5, 64(%x2)  #1052 pc 9668
	sw	%x1, 68(%x2)  #1052 pc 9672
	addi	%x2, %x2, 72  #1052 pc 9676
	jal	%x1, fisneg.2532  #1052 pc 9680
	addi	%x2, %x2, -72  #1052 pc 9684
	lw	%x1, 68(%x2) #1052 pc 9688
	addi	%x6, %x5, 0  #1052 pc 9692
	lw	%x5, 64(%x2)  #1052 pc 9696
	sw	%x1, 68(%x2)  #1052 pc 9700
	addi	%x2, %x2, 72  #1052 pc 9704
	jal	%x1, xor.2633  #1052 pc 9708
	addi	%x2, %x2, -72  #1052 pc 9712
	lw	%x1, 68(%x2) #1052 pc 9716
	lw	%x6, 52(%x2)  #1052 pc 9720
	slli	%x7, %x6, 2  #1052 pc 9724
	lw	%x9, 60(%x2)  #1052 pc 9728
	add	%x24, %x7, %x9  #1052 pc 9732
	flw	%f0, 0(%x24)  #1052 pc 9736
	sw	%x1, 68(%x2)  #1052 pc 9740
	addi	%x2, %x2, 72  #1052 pc 9744
	jal	%x1, fneg_cond.2638  #1052 pc 9748
	addi	%x2, %x2, -72  #1052 pc 9752
	lw	%x1, 68(%x2) #1052 pc 9756
	flw	%f1, 40(%x2)  #1054 pc 9760
	fsub	%f0, %f0, %f1  #1054 pc 9764
	lw	%x5, 52(%x2)  #1054 pc 9768
	slli	%x5, %x5, 2  #1054 pc 9772
	lw	%x6, 48(%x2)  #1054 pc 9776
	add	%x24, %x5, %x6  #1054 pc 9780
	flw	%f1, 0(%x24)  #1054 pc 9784
	fdiv	%f0, %f0, %f1  #1054 pc 9788
	lw	%x5, 32(%x2)  #1055 pc 9792
	slli	%x7, %x5, 2  #1055 pc 9796
	add	%x24, %x7, %x6  #1055 pc 9800
	flw	%f1, 0(%x24)  #1055 pc 9804
	fmul	%f1, %f0, %f1  #1055 pc 9808
	flw	%f2, 24(%x2)  #1055 pc 9812
	fadd	%f1, %f1, %f2  #1055 pc 9816
	fabs	%f1, %f1  #1055 pc 9820
	slli	%x5, %x5, 2  #1055 pc 9824
	lw	%x7, 60(%x2)  #1055 pc 9828
	add	%x24, %x5, %x7  #1055 pc 9832
	flw	%f2, 0(%x24)  #1055 pc 9836
	fsw	%f0, 72(%x2)  #1055 pc 9840
	fadd	%f0, %f1, %f30  #0 pc 9844
	fadd	%f1, %f2, %f30  #0 pc 9848
	sw	%x1, 84(%x2)  #1055 pc 9852
	addi	%x2, %x2, 88  #1055 pc 9856
	jal	%x1, fless.2540  #1055 pc 9860
	addi	%x2, %x2, -88  #1055 pc 9864
	lw	%x1, 84(%x2) #1055 pc 9868
	beq	%x5, %x0, 12  #1055 pc 9872
	j	be_else.9270 #pc 9876
	nop #pc 9880
	addi	%x5, %x0, 0  #0 pc 9884
	ret #pc 9888
	nop #pc 9892
be_else.9270: #pc 9892
	lw	%x5, 16(%x2)  #1056 pc 9896
	slli	%x6, %x5, 2  #1056 pc 9900
	lw	%x7, 48(%x2)  #1056 pc 9904
	add	%x24, %x6, %x7  #1056 pc 9908
	flw	%f0, 0(%x24)  #1056 pc 9912
	flw	%f1, 72(%x2)  #1056 pc 9916
	fmul	%f0, %f1, %f0  #1056 pc 9920
	flw	%f2, 8(%x2)  #1056 pc 9924
	fadd	%f0, %f0, %f2  #1056 pc 9928
	fabs	%f0, %f0  #1056 pc 9932
	slli	%x5, %x5, 2  #1056 pc 9936
	lw	%x6, 60(%x2)  #1056 pc 9940
	add	%x24, %x5, %x6  #1056 pc 9944
	flw	%f2, 0(%x24)  #1056 pc 9948
	fadd	%f1, %f2, %f30  #0 pc 9952
	sw	%x1, 84(%x2)  #1056 pc 9956
	addi	%x2, %x2, 88  #1056 pc 9960
	jal	%x1, fless.2540  #1056 pc 9964
	addi	%x2, %x2, -88  #1056 pc 9968
	lw	%x1, 84(%x2) #1056 pc 9972
	beq	%x5, %x0, 12  #1056 pc 9976
	j	be_else.9271 #pc 9980
	nop #pc 9984
	addi	%x5, %x0, 0  #0 pc 9988
	ret #pc 9992
	nop #pc 9996
be_else.9271: #pc 9996
	lw	%x5, 0(%x2)  #1057 pc 10000
	flw	%f0, 72(%x2)  #1057 pc 10004
	add	%x24, %x0, %x5  #1057 pc 10008
	fsw	%f0, 0(%x24) #1057 pc 10012
	addi	%x5, %x0, 1  #0 pc 10016
	ret #pc 10020
	nop #pc 10024
be_else.9268: #pc 10024
	addi	%x5, %x0, 0  #0 pc 10028
	ret #pc 10032
	nop #pc 10036
solver_rect.2785:  #pc 10036
	addi	%x24, %x0, 4  #pc 10040
	add	%x24, %x24, %x22  #0 pc 10044
	lw	%x22, 0(%x24)  #0 pc 10048
	addi	%x7, %x0, 0  #0 pc 10052
	addi	%x9, %x0, 1  #0 pc 10056
	addi	%x10, %x0, 2  #0 pc 10060
	fsw	%f0, 0(%x2)  #1065 pc 10064
	fsw	%f2, 8(%x2)  #1065 pc 10068
	fsw	%f1, 16(%x2)  #1065 pc 10072
	sw	%x6, 24(%x2)  #1065 pc 10076
	sw	%x5, 28(%x2)  #1065 pc 10080
	sw	%x22, 32(%x2)  #1065 pc 10084
	sw	%x1, 36(%x2)  #1065 pc 10088
	lw	%x23, 0(%x22)  #1065 pc 10092
	addi	%x2, %x2, 40  #1065 pc 10096
	jalr	%x1, %x23, 0  #1065 pc 10100
	addi	%x2, %x2, -40  #1065 pc 10104
	lw	%x1, 36(%x2)  #1065 pc 10108
	beq	%x5, %x0, 12  #1065 pc 10112
	j	be_else.9272 #pc 10116
	nop #pc 10120
	addi	%x7, %x0, 1  #0 pc 10124
	addi	%x9, %x0, 2  #0 pc 10128
	addi	%x10, %x0, 0  #0 pc 10132
	flw	%f0, 16(%x2)  #1066 pc 10136
	flw	%f1, 8(%x2)  #1066 pc 10140
	flw	%f2, 0(%x2)  #1066 pc 10144
	lw	%x5, 28(%x2)  #1066 pc 10148
	lw	%x6, 24(%x2)  #1066 pc 10152
	lw	%x22, 32(%x2)  #1066 pc 10156
	sw	%x1, 36(%x2)  #1066 pc 10160
	lw	%x23, 0(%x22)  #1066 pc 10164
	addi	%x2, %x2, 40  #1066 pc 10168
	jalr	%x1, %x23, 0  #1066 pc 10172
	addi	%x2, %x2, -40  #1066 pc 10176
	lw	%x1, 36(%x2)  #1066 pc 10180
	beq	%x5, %x0, 12  #1066 pc 10184
	j	be_else.9273 #pc 10188
	nop #pc 10192
	addi	%x7, %x0, 2  #0 pc 10196
	addi	%x9, %x0, 0  #0 pc 10200
	addi	%x10, %x0, 1  #0 pc 10204
	flw	%f0, 8(%x2)  #1067 pc 10208
	flw	%f1, 0(%x2)  #1067 pc 10212
	flw	%f2, 16(%x2)  #1067 pc 10216
	lw	%x5, 28(%x2)  #1067 pc 10220
	lw	%x6, 24(%x2)  #1067 pc 10224
	lw	%x22, 32(%x2)  #1067 pc 10228
	sw	%x1, 36(%x2)  #1067 pc 10232
	lw	%x23, 0(%x22)  #1067 pc 10236
	addi	%x2, %x2, 40  #1067 pc 10240
	jalr	%x1, %x23, 0  #1067 pc 10244
	addi	%x2, %x2, -40  #1067 pc 10248
	lw	%x1, 36(%x2)  #1067 pc 10252
	beq	%x5, %x0, 12  #1067 pc 10256
	j	be_else.9274 #pc 10260
	nop #pc 10264
	addi	%x5, %x0, 0  #0 pc 10268
	ret #pc 10272
	nop #pc 10276
be_else.9274: #pc 10276
	addi	%x5, %x0, 3  #0 pc 10280
	ret #pc 10284
	nop #pc 10288
be_else.9273: #pc 10288
	addi	%x5, %x0, 2  #0 pc 10292
	ret #pc 10296
	nop #pc 10300
be_else.9272: #pc 10300
	addi	%x5, %x0, 1  #0 pc 10304
	ret #pc 10308
	nop #pc 10312
solver_surface.2791:  #pc 10312
	addi	%x24, %x0, 4  #pc 10316
	add	%x24, %x24, %x22  #1076 pc 10320
	lw	%x7, 0(%x24)  #1076 pc 10324
	sw	%x7, 0(%x2)  #1076 pc 10328
	fsw	%f2, 8(%x2)  #1076 pc 10332
	fsw	%f1, 16(%x2)  #1076 pc 10336
	fsw	%f0, 24(%x2)  #1076 pc 10340
	sw	%x6, 32(%x2)  #1076 pc 10344
	sw	%x1, 36(%x2)  #1076 pc 10348
	addi	%x2, %x2, 40  #1076 pc 10352
	jal	%x1, o_param_abc.2698  #1076 pc 10356
	addi	%x2, %x2, -40  #1076 pc 10360
	lw	%x1, 36(%x2) #1076 pc 10364
	addi	%x6, %x5, 0  #1076 pc 10368
	lw	%x5, 32(%x2)  #1077 pc 10372
	sw	%x6, 36(%x2)  #1077 pc 10376
	sw	%x1, 44(%x2)  #1077 pc 10380
	addi	%x2, %x2, 48  #1077 pc 10384
	jal	%x1, veciprod.2660  #1077 pc 10388
	addi	%x2, %x2, -48  #1077 pc 10392
	lw	%x1, 44(%x2) #1077 pc 10396
	fsw	%f0, 40(%x2)  #1078 pc 10400
	sw	%x1, 52(%x2)  #1078 pc 10404
	addi	%x2, %x2, 56  #1078 pc 10408
	jal	%x1, fispos.2530  #1078 pc 10412
	addi	%x2, %x2, -56  #1078 pc 10416
	lw	%x1, 52(%x2) #1078 pc 10420
	beq	%x5, %x0, 12  #1078 pc 10424
	j	be_else.9276 #pc 10428
	nop #pc 10432
	addi	%x5, %x0, 0  #0 pc 10436
	ret #pc 10440
	nop #pc 10444
be_else.9276: #pc 10444
	flw	%f0, 24(%x2)  #1079 pc 10448
	flw	%f1, 16(%x2)  #1079 pc 10452
	flw	%f2, 8(%x2)  #1079 pc 10456
	lw	%x5, 36(%x2)  #1079 pc 10460
	sw	%x1, 52(%x2)  #1079 pc 10464
	addi	%x2, %x2, 56  #1079 pc 10468
	jal	%x1, veciprod2.2663  #1079 pc 10472
	addi	%x2, %x2, -56  #1079 pc 10476
	lw	%x1, 52(%x2) #1079 pc 10480
	sw	%x1, 52(%x2)  #1079 pc 10484
	addi	%x2, %x2, 56  #1079 pc 10488
	jal	%x1, fneg.2534  #1079 pc 10492
	addi	%x2, %x2, -56  #1079 pc 10496
	lw	%x1, 52(%x2) #1079 pc 10500
	flw	%f1, 40(%x2)  #1079 pc 10504
	fdiv	%f0, %f0, %f1  #1079 pc 10508
	lw	%x5, 0(%x2)  #1079 pc 10512
	add	%x24, %x0, %x5  #1079 pc 10516
	fsw	%f0, 0(%x24) #1079 pc 10520
	addi	%x5, %x0, 1  #0 pc 10524
	ret #pc 10528
	nop #pc 10532
quadratic.2797:  #pc 10532
	fsw	%f0, 0(%x2)  #1089 pc 10536
	fsw	%f2, 8(%x2)  #1089 pc 10540
	fsw	%f1, 16(%x2)  #1089 pc 10544
	sw	%x5, 24(%x2)  #1089 pc 10548
	sw	%x1, 28(%x2)  #1089 pc 10552
	addi	%x2, %x2, 32  #1089 pc 10556
	jal	%x1, fsqr.2536  #1089 pc 10560
	addi	%x2, %x2, -32  #1089 pc 10564
	lw	%x1, 28(%x2) #1089 pc 10568
	lw	%x5, 24(%x2)  #1089 pc 10572
	fsw	%f0, 32(%x2)  #1089 pc 10576
	sw	%x1, 44(%x2)  #1089 pc 10580
	addi	%x2, %x2, 48  #1089 pc 10584
	jal	%x1, o_param_a.2692  #1089 pc 10588
	addi	%x2, %x2, -48  #1089 pc 10592
	lw	%x1, 44(%x2) #1089 pc 10596
	flw	%f1, 32(%x2)  #1089 pc 10600
	fmul	%f0, %f1, %f0  #1089 pc 10604
	flw	%f1, 16(%x2)  #1089 pc 10608
	fsw	%f0, 40(%x2)  #1089 pc 10612
	fadd	%f0, %f1, %f30  #0 pc 10616
	sw	%x1, 52(%x2)  #1089 pc 10620
	addi	%x2, %x2, 56  #1089 pc 10624
	jal	%x1, fsqr.2536  #1089 pc 10628
	addi	%x2, %x2, -56  #1089 pc 10632
	lw	%x1, 52(%x2) #1089 pc 10636
	lw	%x5, 24(%x2)  #1089 pc 10640
	fsw	%f0, 48(%x2)  #1089 pc 10644
	sw	%x1, 60(%x2)  #1089 pc 10648
	addi	%x2, %x2, 64  #1089 pc 10652
	jal	%x1, o_param_b.2694  #1089 pc 10656
	addi	%x2, %x2, -64  #1089 pc 10660
	lw	%x1, 60(%x2) #1089 pc 10664
	flw	%f1, 48(%x2)  #1089 pc 10668
	fmul	%f0, %f1, %f0  #1089 pc 10672
	flw	%f1, 40(%x2)  #1089 pc 10676
	fadd	%f0, %f1, %f0  #1089 pc 10680
	flw	%f1, 8(%x2)  #1089 pc 10684
	fsw	%f0, 56(%x2)  #1089 pc 10688
	fadd	%f0, %f1, %f30  #0 pc 10692
	sw	%x1, 68(%x2)  #1089 pc 10696
	addi	%x2, %x2, 72  #1089 pc 10700
	jal	%x1, fsqr.2536  #1089 pc 10704
	addi	%x2, %x2, -72  #1089 pc 10708
	lw	%x1, 68(%x2) #1089 pc 10712
	lw	%x5, 24(%x2)  #1089 pc 10716
	fsw	%f0, 64(%x2)  #1089 pc 10720
	sw	%x1, 76(%x2)  #1089 pc 10724
	addi	%x2, %x2, 80  #1089 pc 10728
	jal	%x1, o_param_c.2696  #1089 pc 10732
	addi	%x2, %x2, -80  #1089 pc 10736
	lw	%x1, 76(%x2) #1089 pc 10740
	flw	%f1, 64(%x2)  #1089 pc 10744
	fmul	%f0, %f1, %f0  #1089 pc 10748
	flw	%f1, 56(%x2)  #1089 pc 10752
	fadd	%f0, %f1, %f0  #1089 pc 10756
	lw	%x5, 24(%x2)  #1091 pc 10760
	fsw	%f0, 72(%x2)  #1091 pc 10764
	sw	%x1, 84(%x2)  #1091 pc 10768
	addi	%x2, %x2, 88  #1091 pc 10772
	jal	%x1, o_isrot.2690  #1091 pc 10776
	addi	%x2, %x2, -88  #1091 pc 10780
	lw	%x1, 84(%x2) #1091 pc 10784
	beq	%x5, %x0, 12  #1091 pc 10788
	j	be_else.9278 #pc 10792
	nop #pc 10796
	flw	%f0, 72(%x2)  #1092 pc 10800
	ret #pc 10804
	nop #pc 10808
be_else.9278: #pc 10808
	flw	%f0, 8(%x2)  #1095 pc 10812
	flw	%f1, 16(%x2)  #1095 pc 10816
	fmul	%f2, %f1, %f0  #1095 pc 10820
	lw	%x5, 24(%x2)  #1095 pc 10824
	fsw	%f2, 80(%x2)  #1095 pc 10828
	sw	%x1, 92(%x2)  #1095 pc 10832
	addi	%x2, %x2, 96  #1095 pc 10836
	jal	%x1, o_param_r1.2716  #1095 pc 10840
	addi	%x2, %x2, -96  #1095 pc 10844
	lw	%x1, 92(%x2) #1095 pc 10848
	flw	%f1, 80(%x2)  #1095 pc 10852
	fmul	%f0, %f1, %f0  #1095 pc 10856
	flw	%f1, 72(%x2)  #1094 pc 10860
	fadd	%f0, %f1, %f0  #1094 pc 10864
	flw	%f1, 0(%x2)  #1096 pc 10868
	flw	%f2, 8(%x2)  #1096 pc 10872
	fmul	%f2, %f2, %f1  #1096 pc 10876
	lw	%x5, 24(%x2)  #1096 pc 10880
	fsw	%f0, 88(%x2)  #1096 pc 10884
	fsw	%f2, 96(%x2)  #1096 pc 10888
	sw	%x1, 108(%x2)  #1096 pc 10892
	addi	%x2, %x2, 112  #1096 pc 10896
	jal	%x1, o_param_r2.2718  #1096 pc 10900
	addi	%x2, %x2, -112  #1096 pc 10904
	lw	%x1, 108(%x2) #1096 pc 10908
	flw	%f1, 96(%x2)  #1096 pc 10912
	fmul	%f0, %f1, %f0  #1096 pc 10916
	flw	%f1, 88(%x2)  #1094 pc 10920
	fadd	%f0, %f1, %f0  #1094 pc 10924
	flw	%f1, 16(%x2)  #1097 pc 10928
	flw	%f2, 0(%x2)  #1097 pc 10932
	fmul	%f1, %f2, %f1  #1097 pc 10936
	lw	%x5, 24(%x2)  #1097 pc 10940
	fsw	%f0, 104(%x2)  #1097 pc 10944
	fsw	%f1, 112(%x2)  #1097 pc 10948
	sw	%x1, 124(%x2)  #1097 pc 10952
	addi	%x2, %x2, 128  #1097 pc 10956
	jal	%x1, o_param_r3.2720  #1097 pc 10960
	addi	%x2, %x2, -128  #1097 pc 10964
	lw	%x1, 124(%x2) #1097 pc 10968
	flw	%f1, 112(%x2)  #1097 pc 10972
	fmul	%f0, %f1, %f0  #1097 pc 10976
	flw	%f1, 104(%x2)  #1094 pc 10980
	fadd	%f0, %f1, %f0  #1094 pc 10984
	ret #pc 10988
	nop #pc 10992
bilinear.2802:  #pc 10992
	fmul	%f6, %f0, %f3  #1103 pc 10996
	fsw	%f3, 0(%x2)  #1103 pc 11000
	fsw	%f0, 8(%x2)  #1103 pc 11004
	fsw	%f5, 16(%x2)  #1103 pc 11008
	fsw	%f2, 24(%x2)  #1103 pc 11012
	sw	%x5, 32(%x2)  #1103 pc 11016
	fsw	%f4, 40(%x2)  #1103 pc 11020
	fsw	%f1, 48(%x2)  #1103 pc 11024
	fsw	%f6, 56(%x2)  #1103 pc 11028
	sw	%x1, 68(%x2)  #1103 pc 11032
	addi	%x2, %x2, 72  #1103 pc 11036
	jal	%x1, o_param_a.2692  #1103 pc 11040
	addi	%x2, %x2, -72  #1103 pc 11044
	lw	%x1, 68(%x2) #1103 pc 11048
	flw	%f1, 56(%x2)  #1103 pc 11052
	fmul	%f0, %f1, %f0  #1103 pc 11056
	flw	%f1, 40(%x2)  #1104 pc 11060
	flw	%f2, 48(%x2)  #1104 pc 11064
	fmul	%f3, %f2, %f1  #1104 pc 11068
	lw	%x5, 32(%x2)  #1104 pc 11072
	fsw	%f0, 64(%x2)  #1104 pc 11076
	fsw	%f3, 72(%x2)  #1104 pc 11080
	sw	%x1, 84(%x2)  #1104 pc 11084
	addi	%x2, %x2, 88  #1104 pc 11088
	jal	%x1, o_param_b.2694  #1104 pc 11092
	addi	%x2, %x2, -88  #1104 pc 11096
	lw	%x1, 84(%x2) #1104 pc 11100
	flw	%f1, 72(%x2)  #1104 pc 11104
	fmul	%f0, %f1, %f0  #1104 pc 11108
	flw	%f1, 64(%x2)  #1103 pc 11112
	fadd	%f0, %f1, %f0  #1103 pc 11116
	flw	%f1, 16(%x2)  #1105 pc 11120
	flw	%f2, 24(%x2)  #1105 pc 11124
	fmul	%f3, %f2, %f1  #1105 pc 11128
	lw	%x5, 32(%x2)  #1105 pc 11132
	fsw	%f0, 80(%x2)  #1105 pc 11136
	fsw	%f3, 88(%x2)  #1105 pc 11140
	sw	%x1, 100(%x2)  #1105 pc 11144
	addi	%x2, %x2, 104  #1105 pc 11148
	jal	%x1, o_param_c.2696  #1105 pc 11152
	addi	%x2, %x2, -104  #1105 pc 11156
	lw	%x1, 100(%x2) #1105 pc 11160
	flw	%f1, 88(%x2)  #1105 pc 11164
	fmul	%f0, %f1, %f0  #1105 pc 11168
	flw	%f1, 80(%x2)  #1103 pc 11172
	fadd	%f0, %f1, %f0  #1103 pc 11176
	lw	%x5, 32(%x2)  #1107 pc 11180
	fsw	%f0, 96(%x2)  #1107 pc 11184
	sw	%x1, 108(%x2)  #1107 pc 11188
	addi	%x2, %x2, 112  #1107 pc 11192
	jal	%x1, o_isrot.2690  #1107 pc 11196
	addi	%x2, %x2, -112  #1107 pc 11200
	lw	%x1, 108(%x2) #1107 pc 11204
	beq	%x5, %x0, 12  #1107 pc 11208
	j	be_else.9280 #pc 11212
	nop #pc 11216
	flw	%f0, 96(%x2)  #1108 pc 11220
	ret #pc 11224
	nop #pc 11228
be_else.9280: #pc 11228
	flw	%f0, 40(%x2)  #1111 pc 11232
	flw	%f1, 24(%x2)  #1111 pc 11236
	fmul	%f2, %f1, %f0  #1111 pc 11240
	flw	%f3, 16(%x2)  #1111 pc 11244
	flw	%f4, 48(%x2)  #1111 pc 11248
	fmul	%f5, %f4, %f3  #1111 pc 11252
	fadd	%f2, %f2, %f5  #1111 pc 11256
	lw	%x5, 32(%x2)  #1111 pc 11260
	fsw	%f2, 104(%x2)  #1111 pc 11264
	sw	%x1, 116(%x2)  #1111 pc 11268
	addi	%x2, %x2, 120  #1111 pc 11272
	jal	%x1, o_param_r1.2716  #1111 pc 11276
	addi	%x2, %x2, -120  #1111 pc 11280
	lw	%x1, 116(%x2) #1111 pc 11284
	flw	%f1, 104(%x2)  #1111 pc 11288
	fmul	%f0, %f1, %f0  #1111 pc 11292
	flw	%f1, 16(%x2)  #1112 pc 11296
	flw	%f2, 8(%x2)  #1112 pc 11300
	fmul	%f1, %f2, %f1  #1112 pc 11304
	flw	%f3, 0(%x2)  #1112 pc 11308
	flw	%f4, 24(%x2)  #1112 pc 11312
	fmul	%f4, %f4, %f3  #1112 pc 11316
	fadd	%f1, %f1, %f4  #1112 pc 11320
	lw	%x5, 32(%x2)  #1112 pc 11324
	fsw	%f0, 112(%x2)  #1112 pc 11328
	fsw	%f1, 120(%x2)  #1112 pc 11332
	sw	%x1, 132(%x2)  #1112 pc 11336
	addi	%x2, %x2, 136  #1112 pc 11340
	jal	%x1, o_param_r2.2718  #1112 pc 11344
	addi	%x2, %x2, -136  #1112 pc 11348
	lw	%x1, 132(%x2) #1112 pc 11352
	flw	%f1, 120(%x2)  #1112 pc 11356
	fmul	%f0, %f1, %f0  #1112 pc 11360
	flw	%f1, 112(%x2)  #1111 pc 11364
	fadd	%f0, %f1, %f0  #1111 pc 11368
	flw	%f1, 40(%x2)  #1113 pc 11372
	flw	%f2, 8(%x2)  #1113 pc 11376
	fmul	%f1, %f2, %f1  #1113 pc 11380
	flw	%f2, 0(%x2)  #1113 pc 11384
	flw	%f3, 48(%x2)  #1113 pc 11388
	fmul	%f2, %f3, %f2  #1113 pc 11392
	fadd	%f1, %f1, %f2  #1113 pc 11396
	lw	%x5, 32(%x2)  #1113 pc 11400
	fsw	%f0, 128(%x2)  #1113 pc 11404
	fsw	%f1, 136(%x2)  #1113 pc 11408
	sw	%x1, 148(%x2)  #1113 pc 11412
	addi	%x2, %x2, 152  #1113 pc 11416
	jal	%x1, o_param_r3.2720  #1113 pc 11420
	addi	%x2, %x2, -152  #1113 pc 11424
	lw	%x1, 148(%x2) #1113 pc 11428
	flw	%f1, 136(%x2)  #1113 pc 11432
	fmul	%f0, %f1, %f0  #1113 pc 11436
	flw	%f1, 128(%x2)  #1111 pc 11440
	fadd	%f0, %f1, %f0  #1111 pc 11444
	sw	%x1, 148(%x2)  #1110 pc 11448
	addi	%x2, %x2, 152  #1110 pc 11452
	jal	%x1, fhalf.2538  #1110 pc 11456
	addi	%x2, %x2, -152  #1110 pc 11460
	lw	%x1, 148(%x2) #1110 pc 11464
	flw	%f1, 96(%x2)  #1110 pc 11468
	fadd	%f0, %f1, %f0  #1110 pc 11472
	ret #pc 11476
	nop #pc 11480
solver_second.2810:  #pc 11480
	addi	%x24, %x0, 4  #pc 11484
	add	%x24, %x24, %x22  #0 pc 11488
	lw	%x7, 0(%x24)  #0 pc 11492
	add	%x24, %x0, %x6  #1128 pc 11496
	flw	%f3, 0(%x24)  #1128 pc 11500
	addi	%x24, %x0, 4  #pc 11504
	add	%x24, %x24, %x6  #1128 pc 11508
	flw	%f4, 0(%x24)  #1128 pc 11512
	addi	%x24, %x0, 8  #pc 11516
	add	%x24, %x24, %x6  #1128 pc 11520
	flw	%f5, 0(%x24)  #1128 pc 11524
	sw	%x7, 0(%x2)  #1128 pc 11528
	fsw	%f2, 8(%x2)  #1128 pc 11532
	fsw	%f1, 16(%x2)  #1128 pc 11536
	fsw	%f0, 24(%x2)  #1128 pc 11540
	sw	%x5, 32(%x2)  #1128 pc 11544
	sw	%x6, 36(%x2)  #1128 pc 11548
	fadd	%f2, %f5, %f30  #0 pc 11552
	fadd	%f1, %f4, %f30  #0 pc 11556
	fadd	%f0, %f3, %f30  #0 pc 11560
	sw	%x1, 44(%x2)  #1128 pc 11564
	addi	%x2, %x2, 48  #1128 pc 11568
	jal	%x1, quadratic.2797  #1128 pc 11572
	addi	%x2, %x2, -48  #1128 pc 11576
	lw	%x1, 44(%x2) #1128 pc 11580
	fsw	%f0, 40(%x2)  #1130 pc 11584
	sw	%x1, 52(%x2)  #1130 pc 11588
	addi	%x2, %x2, 56  #1130 pc 11592
	jal	%x1, fiszero.2528  #1130 pc 11596
	addi	%x2, %x2, -56  #1130 pc 11600
	lw	%x1, 52(%x2) #1130 pc 11604
	beq	%x5, %x0, 12  #1130 pc 11608
	j	be_else.9282 #pc 11612
	nop #pc 11616
	lw	%x5, 36(%x2)  #1135 pc 11620
	add	%x24, %x0, %x5  #1135 pc 11624
	flw	%f0, 0(%x24)  #1135 pc 11628
	addi	%x24, %x0, 4  #pc 11632
	add	%x24, %x24, %x5  #1135 pc 11636
	flw	%f1, 0(%x24)  #1135 pc 11640
	addi	%x24, %x0, 8  #pc 11644
	add	%x24, %x24, %x5  #1135 pc 11648
	flw	%f2, 0(%x24)  #1135 pc 11652
	flw	%f3, 24(%x2)  #1135 pc 11656
	flw	%f4, 16(%x2)  #1135 pc 11660
	flw	%f5, 8(%x2)  #1135 pc 11664
	lw	%x5, 32(%x2)  #1135 pc 11668
	sw	%x1, 52(%x2)  #1135 pc 11672
	addi	%x2, %x2, 56  #1135 pc 11676
	jal	%x1, bilinear.2802  #1135 pc 11680
	addi	%x2, %x2, -56  #1135 pc 11684
	lw	%x1, 52(%x2) #1135 pc 11688
	flw	%f1, 24(%x2)  #1137 pc 11692
	flw	%f2, 16(%x2)  #1137 pc 11696
	flw	%f3, 8(%x2)  #1137 pc 11700
	lw	%x5, 32(%x2)  #1137 pc 11704
	fsw	%f0, 48(%x2)  #1137 pc 11708
	fadd	%f0, %f1, %f30  #0 pc 11712
	fadd	%f1, %f2, %f30  #0 pc 11716
	fadd	%f2, %f3, %f30  #0 pc 11720
	sw	%x1, 60(%x2)  #1137 pc 11724
	addi	%x2, %x2, 64  #1137 pc 11728
	jal	%x1, quadratic.2797  #1137 pc 11732
	addi	%x2, %x2, -64  #1137 pc 11736
	lw	%x1, 60(%x2) #1137 pc 11740
	lw	%x5, 32(%x2)  #1138 pc 11744
	fsw	%f0, 56(%x2)  #1138 pc 11748
	sw	%x1, 68(%x2)  #1138 pc 11752
	addi	%x2, %x2, 72  #1138 pc 11756
	jal	%x1, o_form.2684  #1138 pc 11760
	addi	%x2, %x2, -72  #1138 pc 11764
	lw	%x1, 68(%x2) #1138 pc 11768
	addi	%x24, %x0, 3  #pc 11772
	beq	%x5, %x24, 12  #1138 pc 11776
	j	be_else.9283 #pc 11780
	nop #pc 11784
	fmv	%f0, l.6305  #0 pc 11788
	flw	%f1, 56(%x2)  #1138 pc 11792
	fsub	%f0, %f1, %f0  #1138 pc 11796
	j	be_cont.9284 #pc 11800
	nop #pc 11804
be_else.9283: #pc 11804
	flw	%f0, 56(%x2)  #1138 pc 11808
be_cont.9284: #pc 11808
	flw	%f1, 48(%x2)  #1140 pc 11812
	fsw	%f0, 64(%x2)  #1140 pc 11816
	fadd	%f0, %f1, %f30  #0 pc 11820
	sw	%x1, 76(%x2)  #1140 pc 11824
	addi	%x2, %x2, 80  #1140 pc 11828
	jal	%x1, fsqr.2536  #1140 pc 11832
	addi	%x2, %x2, -80  #1140 pc 11836
	lw	%x1, 76(%x2) #1140 pc 11840
	flw	%f1, 64(%x2)  #1140 pc 11844
	flw	%f2, 40(%x2)  #1140 pc 11848
	fmul	%f1, %f2, %f1  #1140 pc 11852
	fsub	%f0, %f0, %f1  #1140 pc 11856
	fsw	%f0, 72(%x2)  #1142 pc 11860
	sw	%x1, 84(%x2)  #1142 pc 11864
	addi	%x2, %x2, 88  #1142 pc 11868
	jal	%x1, fispos.2530  #1142 pc 11872
	addi	%x2, %x2, -88  #1142 pc 11876
	lw	%x1, 84(%x2) #1142 pc 11880
	beq	%x5, %x0, 12  #1142 pc 11884
	j	be_else.9285 #pc 11888
	nop #pc 11892
	addi	%x5, %x0, 0  #0 pc 11896
	ret #pc 11900
	nop #pc 11904
be_else.9285: #pc 11904
	flw	%f0, 72(%x2)  #1143 pc 11908
	fsqrt	%f0, %f0  #1143 pc 11912
	lw	%x5, 32(%x2)  #1144 pc 11916
	fsw	%f0, 80(%x2)  #1144 pc 11920
	sw	%x1, 92(%x2)  #1144 pc 11924
	addi	%x2, %x2, 96  #1144 pc 11928
	jal	%x1, o_isinvert.2688  #1144 pc 11932
	addi	%x2, %x2, -96  #1144 pc 11936
	lw	%x1, 92(%x2) #1144 pc 11940
	beq	%x5, %x0, 12  #1144 pc 11944
	j	be_else.9286 #pc 11948
	nop #pc 11952
	flw	%f0, 80(%x2)  #1144 pc 11956
	sw	%x1, 92(%x2)  #1144 pc 11960
	addi	%x2, %x2, 96  #1144 pc 11964
	jal	%x1, fneg.2534  #1144 pc 11968
	addi	%x2, %x2, -96  #1144 pc 11972
	lw	%x1, 92(%x2) #1144 pc 11976
	j	be_cont.9287 #pc 11980
	nop #pc 11984
be_else.9286: #pc 11984
	flw	%f0, 80(%x2)  #1144 pc 11988
be_cont.9287: #pc 11988
	flw	%f1, 48(%x2)  #1145 pc 11992
	fsub	%f0, %f0, %f1  #1145 pc 11996
	flw	%f1, 40(%x2)  #1145 pc 12000
	fdiv	%f0, %f0, %f1  #1145 pc 12004
	lw	%x5, 0(%x2)  #1145 pc 12008
	add	%x24, %x0, %x5  #1145 pc 12012
	fsw	%f0, 0(%x24) #1145 pc 12016
	addi	%x5, %x0, 1  #0 pc 12020
	ret #pc 12024
	nop #pc 12028
be_else.9282: #pc 12028
	addi	%x5, %x0, 0  #0 pc 12032
	ret #pc 12036
	nop #pc 12040
solver.2816:  #pc 12040
	addi	%x24, %x0, 16  #pc 12044
	add	%x24, %x24, %x22  #1154 pc 12048
	lw	%x9, 0(%x24)  #1154 pc 12052
	addi	%x24, %x0, 12  #pc 12056
	add	%x24, %x24, %x22  #1154 pc 12060
	lw	%x10, 0(%x24)  #1154 pc 12064
	addi	%x24, %x0, 8  #pc 12068
	add	%x24, %x24, %x22  #1154 pc 12072
	lw	%x11, 0(%x24)  #1154 pc 12076
	addi	%x24, %x0, 4  #pc 12080
	add	%x24, %x24, %x22  #1154 pc 12084
	lw	%x12, 0(%x24)  #1154 pc 12088
	slli	%x5, %x5, 2  #1154 pc 12092
	add	%x24, %x5, %x12  #1154 pc 12096
	lw	%x5, 0(%x24)  #1154 pc 12100
	add	%x24, %x0, %x7  #1156 pc 12104
	flw	%f0, 0(%x24)  #1156 pc 12108
	sw	%x10, 0(%x2)  #1156 pc 12112
	sw	%x9, 4(%x2)  #1156 pc 12116
	sw	%x6, 8(%x2)  #1156 pc 12120
	sw	%x11, 12(%x2)  #1156 pc 12124
	sw	%x5, 16(%x2)  #1156 pc 12128
	sw	%x7, 20(%x2)  #1156 pc 12132
	fsw	%f0, 24(%x2)  #1156 pc 12136
	sw	%x1, 36(%x2)  #1156 pc 12140
	addi	%x2, %x2, 40  #1156 pc 12144
	jal	%x1, o_param_x.2700  #1156 pc 12148
	addi	%x2, %x2, -40  #1156 pc 12152
	lw	%x1, 36(%x2) #1156 pc 12156
	flw	%f1, 24(%x2)  #1156 pc 12160
	fsub	%f0, %f1, %f0  #1156 pc 12164
	lw	%x5, 20(%x2)  #1157 pc 12168
	addi	%x24, %x0, 4  #pc 12172
	add	%x24, %x24, %x5  #1157 pc 12176
	flw	%f1, 0(%x24)  #1157 pc 12180
	lw	%x6, 16(%x2)  #1157 pc 12184
	fsw	%f0, 32(%x2)  #1157 pc 12188
	fsw	%f1, 40(%x2)  #1157 pc 12192
	addi	%x5, %x6, 0  #0 pc 12200
	sw	%x1, 52(%x2)  #1157 pc 12204
	addi	%x2, %x2, 56  #1157 pc 12208
	jal	%x1, o_param_y.2702  #1157 pc 12212
	addi	%x2, %x2, -56  #1157 pc 12216
	lw	%x1, 52(%x2) #1157 pc 12220
	flw	%f1, 40(%x2)  #1157 pc 12224
	fsub	%f0, %f1, %f0  #1157 pc 12228
	lw	%x5, 20(%x2)  #1158 pc 12232
	addi	%x24, %x0, 8  #pc 12236
	add	%x24, %x24, %x5  #1158 pc 12240
	flw	%f1, 0(%x24)  #1158 pc 12244
	lw	%x5, 16(%x2)  #1158 pc 12248
	fsw	%f0, 48(%x2)  #1158 pc 12252
	fsw	%f1, 56(%x2)  #1158 pc 12256
	sw	%x1, 68(%x2)  #1158 pc 12260
	addi	%x2, %x2, 72  #1158 pc 12264
	jal	%x1, o_param_z.2704  #1158 pc 12268
	addi	%x2, %x2, -72  #1158 pc 12272
	lw	%x1, 68(%x2) #1158 pc 12276
	flw	%f1, 56(%x2)  #1158 pc 12280
	fsub	%f0, %f1, %f0  #1158 pc 12284
	lw	%x5, 16(%x2)  #1159 pc 12288
	fsw	%f0, 64(%x2)  #1159 pc 12292
	sw	%x1, 76(%x2)  #1159 pc 12296
	addi	%x2, %x2, 80  #1159 pc 12300
	jal	%x1, o_form.2684  #1159 pc 12304
	addi	%x2, %x2, -80  #1159 pc 12308
	lw	%x1, 76(%x2) #1159 pc 12312
	addi	%x24, %x0, 1  #pc 12316
	beq	%x5, %x24, 12  #1161 pc 12320
	j	be_else.9288 #pc 12324
	nop #pc 12328
	flw	%f0, 32(%x2)  #1161 pc 12332
	flw	%f1, 48(%x2)  #1161 pc 12336
	flw	%f2, 64(%x2)  #1161 pc 12340
	lw	%x5, 16(%x2)  #1161 pc 12344
	lw	%x6, 8(%x2)  #1161 pc 12348
	lw	%x22, 12(%x2)  #1161 pc 12352
	lw	%x23, 0(%x22)  #1161 pc 12356
	jalr	%x0, %x23, 0  #1161 pc 12360
	nop #pc 12364
be_else.9288: #pc 12364
	addi	%x24, %x0, 2  #pc 12368
	beq	%x5, %x24, 12  #1162 pc 12372
	j	be_else.9289 #pc 12376
	nop #pc 12380
	flw	%f0, 32(%x2)  #1162 pc 12384
	flw	%f1, 48(%x2)  #1162 pc 12388
	flw	%f2, 64(%x2)  #1162 pc 12392
	lw	%x5, 16(%x2)  #1162 pc 12396
	lw	%x6, 8(%x2)  #1162 pc 12400
	lw	%x22, 4(%x2)  #1162 pc 12404
	lw	%x23, 0(%x22)  #1162 pc 12408
	jalr	%x0, %x23, 0  #1162 pc 12412
	nop #pc 12416
be_else.9289: #pc 12416
	flw	%f0, 32(%x2)  #1163 pc 12420
	flw	%f1, 48(%x2)  #1163 pc 12424
	flw	%f2, 64(%x2)  #1163 pc 12428
	lw	%x5, 16(%x2)  #1163 pc 12432
	lw	%x6, 8(%x2)  #1163 pc 12436
	lw	%x22, 0(%x2)  #1163 pc 12440
	lw	%x23, 0(%x22)  #1163 pc 12444
	jalr	%x0, %x23, 0  #1163 pc 12448
	nop #pc 12452
solver_rect_fast.2820:  #pc 12452
	addi	%x24, %x0, 4  #pc 12456
	add	%x24, %x24, %x22  #0 pc 12460
	lw	%x9, 0(%x24)  #0 pc 12464
	add	%x24, %x0, %x7  #1186 pc 12468
	flw	%f3, 0(%x24)  #1186 pc 12472
	fsub	%f3, %f3, %f0  #1186 pc 12476
	addi	%x24, %x0, 4  #pc 12480
	add	%x24, %x24, %x7  #1186 pc 12484
	flw	%f4, 0(%x24)  #1186 pc 12488
	fmul	%f3, %f3, %f4  #1186 pc 12492
	addi	%x24, %x0, 4  #pc 12496
	add	%x24, %x24, %x6  #1188 pc 12500
	flw	%f4, 0(%x24)  #1188 pc 12504
	fmul	%f4, %f3, %f4  #1188 pc 12508
	fadd	%f4, %f4, %f1  #1188 pc 12512
	fabs	%f4, %f4  #1188 pc 12516
	sw	%x9, 0(%x2)  #1188 pc 12520
	fsw	%f0, 8(%x2)  #1188 pc 12524
	fsw	%f1, 16(%x2)  #1188 pc 12528
	sw	%x7, 24(%x2)  #1188 pc 12532
	sw	%x5, 28(%x2)  #1188 pc 12536
	fsw	%f2, 32(%x2)  #1188 pc 12540
	fsw	%f3, 40(%x2)  #1188 pc 12544
	sw	%x6, 48(%x2)  #1188 pc 12548
	fsw	%f4, 56(%x2)  #1188 pc 12552
	sw	%x1, 68(%x2)  #1188 pc 12556
	addi	%x2, %x2, 72  #1188 pc 12560
	jal	%x1, o_param_b.2694  #1188 pc 12564
	addi	%x2, %x2, -72  #1188 pc 12568
	lw	%x1, 68(%x2) #1188 pc 12572
	fadd	%f1, %f0, %f30  #1188 pc 12576
	flw	%f0, 56(%x2)  #1188 pc 12580
	sw	%x1, 68(%x2)  #1188 pc 12584
	addi	%x2, %x2, 72  #1188 pc 12588
	jal	%x1, fless.2540  #1188 pc 12592
	addi	%x2, %x2, -72  #1188 pc 12596
	lw	%x1, 68(%x2) #1188 pc 12600
	beq	%x5, %x0, 12  #1188 pc 12604
	j	be_else.9292 #pc 12608
	nop #pc 12612
	addi	%x5, %x0, 0  #0 pc 12616
	j	be_cont.9293 #pc 12620
	nop #pc 12624
be_else.9292: #pc 12624
	lw	%x5, 48(%x2)  #1189 pc 12628
	addi	%x24, %x0, 8  #pc 12632
	add	%x24, %x24, %x5  #1189 pc 12636
	flw	%f0, 0(%x24)  #1189 pc 12640
	flw	%f1, 40(%x2)  #1189 pc 12644
	fmul	%f0, %f1, %f0  #1189 pc 12648
	flw	%f2, 32(%x2)  #1189 pc 12652
	fadd	%f0, %f0, %f2  #1189 pc 12656
	fabs	%f0, %f0  #1189 pc 12660
	lw	%x6, 28(%x2)  #1189 pc 12664
	fsw	%f0, 64(%x2)  #1189 pc 12668
	addi	%x5, %x6, 0  #0 pc 12676
	sw	%x1, 76(%x2)  #1189 pc 12680
	addi	%x2, %x2, 80  #1189 pc 12684
	jal	%x1, o_param_c.2696  #1189 pc 12688
	addi	%x2, %x2, -80  #1189 pc 12692
	lw	%x1, 76(%x2) #1189 pc 12696
	fadd	%f1, %f0, %f30  #1189 pc 12700
	flw	%f0, 64(%x2)  #1189 pc 12704
	sw	%x1, 76(%x2)  #1189 pc 12708
	addi	%x2, %x2, 80  #1189 pc 12712
	jal	%x1, fless.2540  #1189 pc 12716
	addi	%x2, %x2, -80  #1189 pc 12720
	lw	%x1, 76(%x2) #1189 pc 12724
	beq	%x5, %x0, 12  #1189 pc 12728
	j	be_else.9294 #pc 12732
	nop #pc 12736
	addi	%x5, %x0, 0  #0 pc 12740
	j	be_cont.9295 #pc 12744
	nop #pc 12748
be_else.9294: #pc 12748
	lw	%x5, 24(%x2)  #1190 pc 12752
	addi	%x24, %x0, 4  #pc 12756
	add	%x24, %x24, %x5  #1190 pc 12760
	flw	%f0, 0(%x24)  #1190 pc 12764
	sw	%x1, 76(%x2)  #1190 pc 12768
	addi	%x2, %x2, 80  #1190 pc 12772
	jal	%x1, fiszero.2528  #1190 pc 12776
	addi	%x2, %x2, -80  #1190 pc 12780
	lw	%x1, 76(%x2) #1190 pc 12784
	beq	%x5, %x0, 12  #1190 pc 12788
	j	be_else.9296 #pc 12792
	nop #pc 12796
	addi	%x5, %x0, 1  #0 pc 12800
	j	be_cont.9297 #pc 12804
	nop #pc 12808
be_else.9296: #pc 12808
	addi	%x5, %x0, 0  #0 pc 12812
be_cont.9297: #pc 12812
be_cont.9295: #pc 12812
be_cont.9293: #pc 12812
	beq	%x5, %x0, 12  #1187 pc 12816
	j	be_else.9298 #pc 12820
	nop #pc 12824
	lw	%x5, 24(%x2)  #1195 pc 12828
	addi	%x24, %x0, 8  #pc 12832
	add	%x24, %x24, %x5  #1195 pc 12836
	flw	%f0, 0(%x24)  #1195 pc 12840
	flw	%f1, 16(%x2)  #1195 pc 12844
	fsub	%f0, %f0, %f1  #1195 pc 12848
	addi	%x24, %x0, 12  #pc 12852
	add	%x24, %x24, %x5  #1195 pc 12856
	flw	%f2, 0(%x24)  #1195 pc 12860
	fmul	%f0, %f0, %f2  #1195 pc 12864
	lw	%x6, 48(%x2)  #1197 pc 12868
	add	%x24, %x0, %x6  #1197 pc 12872
	flw	%f2, 0(%x24)  #1197 pc 12876
	fmul	%f2, %f0, %f2  #1197 pc 12880
	flw	%f3, 8(%x2)  #1197 pc 12884
	fadd	%f2, %f2, %f3  #1197 pc 12888
	fabs	%f2, %f2  #1197 pc 12892
	lw	%x7, 28(%x2)  #1197 pc 12896
	fsw	%f0, 72(%x2)  #1197 pc 12900
	fsw	%f2, 80(%x2)  #1197 pc 12904
	addi	%x5, %x7, 0  #0 pc 12912
	sw	%x1, 92(%x2)  #1197 pc 12916
	addi	%x2, %x2, 96  #1197 pc 12920
	jal	%x1, o_param_a.2692  #1197 pc 12924
	addi	%x2, %x2, -96  #1197 pc 12928
	lw	%x1, 92(%x2) #1197 pc 12932
	fadd	%f1, %f0, %f30  #1197 pc 12936
	flw	%f0, 80(%x2)  #1197 pc 12940
	sw	%x1, 92(%x2)  #1197 pc 12944
	addi	%x2, %x2, 96  #1197 pc 12948
	jal	%x1, fless.2540  #1197 pc 12952
	addi	%x2, %x2, -96  #1197 pc 12956
	lw	%x1, 92(%x2) #1197 pc 12960
	beq	%x5, %x0, 12  #1197 pc 12964
	j	be_else.9299 #pc 12968
	nop #pc 12972
	addi	%x5, %x0, 0  #0 pc 12976
	j	be_cont.9300 #pc 12980
	nop #pc 12984
be_else.9299: #pc 12984
	lw	%x5, 48(%x2)  #1198 pc 12988
	addi	%x24, %x0, 8  #pc 12992
	add	%x24, %x24, %x5  #1198 pc 12996
	flw	%f0, 0(%x24)  #1198 pc 13000
	flw	%f1, 72(%x2)  #1198 pc 13004
	fmul	%f0, %f1, %f0  #1198 pc 13008
	flw	%f2, 32(%x2)  #1198 pc 13012
	fadd	%f0, %f0, %f2  #1198 pc 13016
	fabs	%f0, %f0  #1198 pc 13020
	lw	%x6, 28(%x2)  #1198 pc 13024
	fsw	%f0, 88(%x2)  #1198 pc 13028
	addi	%x5, %x6, 0  #0 pc 13036
	sw	%x1, 100(%x2)  #1198 pc 13040
	addi	%x2, %x2, 104  #1198 pc 13044
	jal	%x1, o_param_c.2696  #1198 pc 13048
	addi	%x2, %x2, -104  #1198 pc 13052
	lw	%x1, 100(%x2) #1198 pc 13056
	fadd	%f1, %f0, %f30  #1198 pc 13060
	flw	%f0, 88(%x2)  #1198 pc 13064
	sw	%x1, 100(%x2)  #1198 pc 13068
	addi	%x2, %x2, 104  #1198 pc 13072
	jal	%x1, fless.2540  #1198 pc 13076
	addi	%x2, %x2, -104  #1198 pc 13080
	lw	%x1, 100(%x2) #1198 pc 13084
	beq	%x5, %x0, 12  #1198 pc 13088
	j	be_else.9301 #pc 13092
	nop #pc 13096
	addi	%x5, %x0, 0  #0 pc 13100
	j	be_cont.9302 #pc 13104
	nop #pc 13108
be_else.9301: #pc 13108
	lw	%x5, 24(%x2)  #1199 pc 13112
	addi	%x24, %x0, 12  #pc 13116
	add	%x24, %x24, %x5  #1199 pc 13120
	flw	%f0, 0(%x24)  #1199 pc 13124
	sw	%x1, 100(%x2)  #1199 pc 13128
	addi	%x2, %x2, 104  #1199 pc 13132
	jal	%x1, fiszero.2528  #1199 pc 13136
	addi	%x2, %x2, -104  #1199 pc 13140
	lw	%x1, 100(%x2) #1199 pc 13144
	beq	%x5, %x0, 12  #1199 pc 13148
	j	be_else.9303 #pc 13152
	nop #pc 13156
	addi	%x5, %x0, 1  #0 pc 13160
	j	be_cont.9304 #pc 13164
	nop #pc 13168
be_else.9303: #pc 13168
	addi	%x5, %x0, 0  #0 pc 13172
be_cont.9304: #pc 13172
be_cont.9302: #pc 13172
be_cont.9300: #pc 13172
	beq	%x5, %x0, 12  #1196 pc 13176
	j	be_else.9305 #pc 13180
	nop #pc 13184
	lw	%x5, 24(%x2)  #1204 pc 13188
	addi	%x24, %x0, 16  #pc 13192
	add	%x24, %x24, %x5  #1204 pc 13196
	flw	%f0, 0(%x24)  #1204 pc 13200
	flw	%f1, 32(%x2)  #1204 pc 13204
	fsub	%f0, %f0, %f1  #1204 pc 13208
	addi	%x24, %x0, 20  #pc 13212
	add	%x24, %x24, %x5  #1204 pc 13216
	flw	%f1, 0(%x24)  #1204 pc 13220
	fmul	%f0, %f0, %f1  #1204 pc 13224
	lw	%x6, 48(%x2)  #1206 pc 13228
	add	%x24, %x0, %x6  #1206 pc 13232
	flw	%f1, 0(%x24)  #1206 pc 13236
	fmul	%f1, %f0, %f1  #1206 pc 13240
	flw	%f2, 8(%x2)  #1206 pc 13244
	fadd	%f1, %f1, %f2  #1206 pc 13248
	fabs	%f1, %f1  #1206 pc 13252
	lw	%x7, 28(%x2)  #1206 pc 13256
	fsw	%f0, 96(%x2)  #1206 pc 13260
	fsw	%f1, 104(%x2)  #1206 pc 13264
	addi	%x5, %x7, 0  #0 pc 13272
	sw	%x1, 116(%x2)  #1206 pc 13276
	addi	%x2, %x2, 120  #1206 pc 13280
	jal	%x1, o_param_a.2692  #1206 pc 13284
	addi	%x2, %x2, -120  #1206 pc 13288
	lw	%x1, 116(%x2) #1206 pc 13292
	fadd	%f1, %f0, %f30  #1206 pc 13296
	flw	%f0, 104(%x2)  #1206 pc 13300
	sw	%x1, 116(%x2)  #1206 pc 13304
	addi	%x2, %x2, 120  #1206 pc 13308
	jal	%x1, fless.2540  #1206 pc 13312
	addi	%x2, %x2, -120  #1206 pc 13316
	lw	%x1, 116(%x2) #1206 pc 13320
	beq	%x5, %x0, 12  #1206 pc 13324
	j	be_else.9306 #pc 13328
	nop #pc 13332
	addi	%x5, %x0, 0  #0 pc 13336
	j	be_cont.9307 #pc 13340
	nop #pc 13344
be_else.9306: #pc 13344
	lw	%x5, 48(%x2)  #1207 pc 13348
	addi	%x24, %x0, 4  #pc 13352
	add	%x24, %x24, %x5  #1207 pc 13356
	flw	%f0, 0(%x24)  #1207 pc 13360
	flw	%f1, 96(%x2)  #1207 pc 13364
	fmul	%f0, %f1, %f0  #1207 pc 13368
	flw	%f2, 16(%x2)  #1207 pc 13372
	fadd	%f0, %f0, %f2  #1207 pc 13376
	fabs	%f0, %f0  #1207 pc 13380
	lw	%x5, 28(%x2)  #1207 pc 13384
	fsw	%f0, 112(%x2)  #1207 pc 13388
	sw	%x1, 124(%x2)  #1207 pc 13392
	addi	%x2, %x2, 128  #1207 pc 13396
	jal	%x1, o_param_b.2694  #1207 pc 13400
	addi	%x2, %x2, -128  #1207 pc 13404
	lw	%x1, 124(%x2) #1207 pc 13408
	fadd	%f1, %f0, %f30  #1207 pc 13412
	flw	%f0, 112(%x2)  #1207 pc 13416
	sw	%x1, 124(%x2)  #1207 pc 13420
	addi	%x2, %x2, 128  #1207 pc 13424
	jal	%x1, fless.2540  #1207 pc 13428
	addi	%x2, %x2, -128  #1207 pc 13432
	lw	%x1, 124(%x2) #1207 pc 13436
	beq	%x5, %x0, 12  #1207 pc 13440
	j	be_else.9308 #pc 13444
	nop #pc 13448
	addi	%x5, %x0, 0  #0 pc 13452
	j	be_cont.9309 #pc 13456
	nop #pc 13460
be_else.9308: #pc 13460
	lw	%x5, 24(%x2)  #1208 pc 13464
	addi	%x24, %x0, 20  #pc 13468
	add	%x24, %x24, %x5  #1208 pc 13472
	flw	%f0, 0(%x24)  #1208 pc 13476
	sw	%x1, 124(%x2)  #1208 pc 13480
	addi	%x2, %x2, 128  #1208 pc 13484
	jal	%x1, fiszero.2528  #1208 pc 13488
	addi	%x2, %x2, -128  #1208 pc 13492
	lw	%x1, 124(%x2) #1208 pc 13496
	beq	%x5, %x0, 12  #1208 pc 13500
	j	be_else.9310 #pc 13504
	nop #pc 13508
	addi	%x5, %x0, 1  #0 pc 13512
	j	be_cont.9311 #pc 13516
	nop #pc 13520
be_else.9310: #pc 13520
	addi	%x5, %x0, 0  #0 pc 13524
be_cont.9311: #pc 13524
be_cont.9309: #pc 13524
be_cont.9307: #pc 13524
	beq	%x5, %x0, 12  #1205 pc 13528
	j	be_else.9312 #pc 13532
	nop #pc 13536
	addi	%x5, %x0, 0  #0 pc 13540
	ret #pc 13544
	nop #pc 13548
be_else.9312: #pc 13548
	lw	%x5, 0(%x2)  #1212 pc 13552
	flw	%f0, 96(%x2)  #1212 pc 13556
	add	%x24, %x0, %x5  #1212 pc 13560
	fsw	%f0, 0(%x24) #1212 pc 13564
	addi	%x5, %x0, 3  #0 pc 13568
	ret #pc 13572
	nop #pc 13576
be_else.9305: #pc 13576
	lw	%x5, 0(%x2)  #1203 pc 13580
	flw	%f0, 72(%x2)  #1203 pc 13584
	add	%x24, %x0, %x5  #1203 pc 13588
	fsw	%f0, 0(%x24) #1203 pc 13592
	addi	%x5, %x0, 2  #0 pc 13596
	ret #pc 13600
	nop #pc 13604
be_else.9298: #pc 13604
	lw	%x5, 0(%x2)  #1194 pc 13608
	flw	%f0, 40(%x2)  #1194 pc 13612
	add	%x24, %x0, %x5  #1194 pc 13616
	fsw	%f0, 0(%x24) #1194 pc 13620
	addi	%x5, %x0, 1  #0 pc 13624
	ret #pc 13628
	nop #pc 13632
solver_surface_fast.2827:  #pc 13632
	addi	%x24, %x0, 4  #pc 13636
	add	%x24, %x24, %x22  #0 pc 13640
	lw	%x5, 0(%x24)  #0 pc 13644
	add	%x24, %x0, %x6  #1219 pc 13648
	flw	%f3, 0(%x24)  #1219 pc 13652
	sw	%x5, 0(%x2)  #1219 pc 13656
	fsw	%f2, 8(%x2)  #1219 pc 13660
	fsw	%f1, 16(%x2)  #1219 pc 13664
	fsw	%f0, 24(%x2)  #1219 pc 13668
	sw	%x6, 32(%x2)  #1219 pc 13672
	fadd	%f0, %f3, %f30  #0 pc 13676
	sw	%x1, 36(%x2)  #1219 pc 13680
	addi	%x2, %x2, 40  #1219 pc 13684
	jal	%x1, fisneg.2532  #1219 pc 13688
	addi	%x2, %x2, -40  #1219 pc 13692
	lw	%x1, 36(%x2) #1219 pc 13696
	beq	%x5, %x0, 12  #1219 pc 13700
	j	be_else.9314 #pc 13704
	nop #pc 13708
	addi	%x5, %x0, 0  #0 pc 13712
	ret #pc 13716
	nop #pc 13720
be_else.9314: #pc 13720
	lw	%x5, 32(%x2)  #1221 pc 13724
	addi	%x24, %x0, 4  #pc 13728
	add	%x24, %x24, %x5  #1221 pc 13732
	flw	%f0, 0(%x24)  #1221 pc 13736
	flw	%f1, 24(%x2)  #1221 pc 13740
	fmul	%f0, %f0, %f1  #1221 pc 13744
	addi	%x24, %x0, 8  #pc 13748
	add	%x24, %x24, %x5  #1221 pc 13752
	flw	%f1, 0(%x24)  #1221 pc 13756
	flw	%f2, 16(%x2)  #1221 pc 13760
	fmul	%f1, %f1, %f2  #1221 pc 13764
	fadd	%f0, %f0, %f1  #1221 pc 13768
	addi	%x24, %x0, 12  #pc 13772
	add	%x24, %x24, %x5  #1221 pc 13776
	flw	%f1, 0(%x24)  #1221 pc 13780
	flw	%f2, 8(%x2)  #1221 pc 13784
	fmul	%f1, %f1, %f2  #1221 pc 13788
	fadd	%f0, %f0, %f1  #1221 pc 13792
	lw	%x5, 0(%x2)  #1220 pc 13796
	add	%x24, %x0, %x5  #1220 pc 13800
	fsw	%f0, 0(%x24) #1220 pc 13804
	addi	%x5, %x0, 1  #0 pc 13808
	ret #pc 13812
	nop #pc 13816
solver_second_fast.2833:  #pc 13816
	addi	%x24, %x0, 4  #pc 13820
	add	%x24, %x24, %x22  #0 pc 13824
	lw	%x7, 0(%x24)  #0 pc 13828
	add	%x24, %x0, %x6  #1229 pc 13832
	flw	%f3, 0(%x24)  #1229 pc 13836
	sw	%x7, 0(%x2)  #1230 pc 13840
	fsw	%f3, 8(%x2)  #1230 pc 13844
	sw	%x5, 16(%x2)  #1230 pc 13848
	fsw	%f2, 24(%x2)  #1230 pc 13852
	fsw	%f1, 32(%x2)  #1230 pc 13856
	fsw	%f0, 40(%x2)  #1230 pc 13860
	sw	%x6, 48(%x2)  #1230 pc 13864
	fadd	%f0, %f3, %f30  #0 pc 13868
	sw	%x1, 52(%x2)  #1230 pc 13872
	addi	%x2, %x2, 56  #1230 pc 13876
	jal	%x1, fiszero.2528  #1230 pc 13880
	addi	%x2, %x2, -56  #1230 pc 13884
	lw	%x1, 52(%x2) #1230 pc 13888
	beq	%x5, %x0, 12  #1230 pc 13892
	j	be_else.9317 #pc 13896
	nop #pc 13900
	lw	%x5, 48(%x2)  #1233 pc 13904
	addi	%x24, %x0, 4  #pc 13908
	add	%x24, %x24, %x5  #1233 pc 13912
	flw	%f0, 0(%x24)  #1233 pc 13916
	flw	%f1, 40(%x2)  #1233 pc 13920
	fmul	%f0, %f0, %f1  #1233 pc 13924
	addi	%x24, %x0, 8  #pc 13928
	add	%x24, %x24, %x5  #1233 pc 13932
	flw	%f2, 0(%x24)  #1233 pc 13936
	flw	%f3, 32(%x2)  #1233 pc 13940
	fmul	%f2, %f2, %f3  #1233 pc 13944
	fadd	%f0, %f0, %f2  #1233 pc 13948
	addi	%x24, %x0, 12  #pc 13952
	add	%x24, %x24, %x5  #1233 pc 13956
	flw	%f2, 0(%x24)  #1233 pc 13960
	flw	%f4, 24(%x2)  #1233 pc 13964
	fmul	%f2, %f2, %f4  #1233 pc 13968
	fadd	%f0, %f0, %f2  #1233 pc 13972
	lw	%x6, 16(%x2)  #1234 pc 13976
	fsw	%f0, 56(%x2)  #1234 pc 13980
	addi	%x5, %x6, 0  #0 pc 13988
	fadd	%f2, %f4, %f30  #0 pc 13992
	fadd	%f0, %f1, %f30  #0 pc 13996
	fadd	%f1, %f3, %f30  #0 pc 14000
	sw	%x1, 68(%x2)  #1234 pc 14004
	addi	%x2, %x2, 72  #1234 pc 14008
	jal	%x1, quadratic.2797  #1234 pc 14012
	addi	%x2, %x2, -72  #1234 pc 14016
	lw	%x1, 68(%x2) #1234 pc 14020
	lw	%x5, 16(%x2)  #1235 pc 14024
	fsw	%f0, 64(%x2)  #1235 pc 14028
	sw	%x1, 76(%x2)  #1235 pc 14032
	addi	%x2, %x2, 80  #1235 pc 14036
	jal	%x1, o_form.2684  #1235 pc 14040
	addi	%x2, %x2, -80  #1235 pc 14044
	lw	%x1, 76(%x2) #1235 pc 14048
	addi	%x24, %x0, 3  #pc 14052
	beq	%x5, %x24, 12  #1235 pc 14056
	j	be_else.9319 #pc 14060
	nop #pc 14064
	fmv	%f0, l.6305  #0 pc 14068
	flw	%f1, 64(%x2)  #1235 pc 14072
	fsub	%f0, %f1, %f0  #1235 pc 14076
	j	be_cont.9320 #pc 14080
	nop #pc 14084
be_else.9319: #pc 14084
	flw	%f0, 64(%x2)  #1235 pc 14088
be_cont.9320: #pc 14088
	flw	%f1, 56(%x2)  #1236 pc 14092
	fsw	%f0, 72(%x2)  #1236 pc 14096
	fadd	%f0, %f1, %f30  #0 pc 14100
	sw	%x1, 84(%x2)  #1236 pc 14104
	addi	%x2, %x2, 88  #1236 pc 14108
	jal	%x1, fsqr.2536  #1236 pc 14112
	addi	%x2, %x2, -88  #1236 pc 14116
	lw	%x1, 84(%x2) #1236 pc 14120
	flw	%f1, 72(%x2)  #1236 pc 14124
	flw	%f2, 8(%x2)  #1236 pc 14128
	fmul	%f1, %f2, %f1  #1236 pc 14132
	fsub	%f0, %f0, %f1  #1236 pc 14136
	fsw	%f0, 80(%x2)  #1237 pc 14140
	sw	%x1, 92(%x2)  #1237 pc 14144
	addi	%x2, %x2, 96  #1237 pc 14148
	jal	%x1, fispos.2530  #1237 pc 14152
	addi	%x2, %x2, -96  #1237 pc 14156
	lw	%x1, 92(%x2) #1237 pc 14160
	beq	%x5, %x0, 12  #1237 pc 14164
	j	be_else.9321 #pc 14168
	nop #pc 14172
	addi	%x5, %x0, 0  #0 pc 14176
	ret #pc 14180
	nop #pc 14184
be_else.9321: #pc 14184
	lw	%x5, 16(%x2)  #1238 pc 14188
	sw	%x1, 92(%x2)  #1238 pc 14192
	addi	%x2, %x2, 96  #1238 pc 14196
	jal	%x1, o_isinvert.2688  #1238 pc 14200
	addi	%x2, %x2, -96  #1238 pc 14204
	lw	%x1, 92(%x2) #1238 pc 14208
	beq	%x5, %x0, 12  #1238 pc 14212
	j	be_else.9322 #pc 14216
	nop #pc 14220
	flw	%f0, 80(%x2)  #1241 pc 14224
	fsqrt	%f0, %f0  #1241 pc 14228
	flw	%f1, 56(%x2)  #1241 pc 14232
	fsub	%f0, %f1, %f0  #1241 pc 14236
	lw	%x5, 48(%x2)  #1241 pc 14240
	addi	%x24, %x0, 16  #pc 14244
	add	%x24, %x24, %x5  #1241 pc 14248
	flw	%f1, 0(%x24)  #1241 pc 14252
	fmul	%f0, %f0, %f1  #1241 pc 14256
	lw	%x5, 0(%x2)  #1241 pc 14260
	add	%x24, %x0, %x5  #1241 pc 14264
	fsw	%f0, 0(%x24) #1241 pc 14268
	j	be_cont.9323 #pc 14272
	nop #pc 14276
be_else.9322: #pc 14276
	flw	%f0, 80(%x2)  #1239 pc 14280
	fsqrt	%f0, %f0  #1239 pc 14284
	flw	%f1, 56(%x2)  #1239 pc 14288
	fadd	%f0, %f1, %f0  #1239 pc 14292
	lw	%x5, 48(%x2)  #1239 pc 14296
	addi	%x24, %x0, 16  #pc 14300
	add	%x24, %x24, %x5  #1239 pc 14304
	flw	%f1, 0(%x24)  #1239 pc 14308
	fmul	%f0, %f0, %f1  #1239 pc 14312
	lw	%x5, 0(%x2)  #1239 pc 14316
	add	%x24, %x0, %x5  #1239 pc 14320
	fsw	%f0, 0(%x24) #1239 pc 14324
be_cont.9323: #pc 14324
	addi	%x5, %x0, 1  #0 pc 14328
	ret #pc 14332
	nop #pc 14336
be_else.9317: #pc 14336
	addi	%x5, %x0, 0  #0 pc 14340
	ret #pc 14344
	nop #pc 14348
solver_fast.2839:  #pc 14348
	addi	%x24, %x0, 16  #pc 14352
	add	%x24, %x24, %x22  #1248 pc 14356
	lw	%x9, 0(%x24)  #1248 pc 14360
	addi	%x24, %x0, 12  #pc 14364
	add	%x24, %x24, %x22  #1248 pc 14368
	lw	%x10, 0(%x24)  #1248 pc 14372
	addi	%x24, %x0, 8  #pc 14376
	add	%x24, %x24, %x22  #1248 pc 14380
	lw	%x11, 0(%x24)  #1248 pc 14384
	addi	%x24, %x0, 4  #pc 14388
	add	%x24, %x24, %x22  #1248 pc 14392
	lw	%x12, 0(%x24)  #1248 pc 14396
	slli	%x13, %x5, 2  #1248 pc 14400
	add	%x24, %x13, %x12  #1248 pc 14404
	lw	%x12, 0(%x24)  #1248 pc 14408
	add	%x24, %x0, %x7  #1249 pc 14412
	flw	%f0, 0(%x24)  #1249 pc 14416
	sw	%x10, 0(%x2)  #1249 pc 14420
	sw	%x9, 4(%x2)  #1249 pc 14424
	sw	%x11, 8(%x2)  #1249 pc 14428
	sw	%x5, 12(%x2)  #1249 pc 14432
	sw	%x6, 16(%x2)  #1249 pc 14436
	sw	%x12, 20(%x2)  #1249 pc 14440
	sw	%x7, 24(%x2)  #1249 pc 14444
	fsw	%f0, 32(%x2)  #1249 pc 14448
	addi	%x5, %x12, 0  #0 pc 14456
	sw	%x1, 44(%x2)  #1249 pc 14460
	addi	%x2, %x2, 48  #1249 pc 14464
	jal	%x1, o_param_x.2700  #1249 pc 14468
	addi	%x2, %x2, -48  #1249 pc 14472
	lw	%x1, 44(%x2) #1249 pc 14476
	flw	%f1, 32(%x2)  #1249 pc 14480
	fsub	%f0, %f1, %f0  #1249 pc 14484
	lw	%x5, 24(%x2)  #1250 pc 14488
	addi	%x24, %x0, 4  #pc 14492
	add	%x24, %x24, %x5  #1250 pc 14496
	flw	%f1, 0(%x24)  #1250 pc 14500
	lw	%x6, 20(%x2)  #1250 pc 14504
	fsw	%f0, 40(%x2)  #1250 pc 14508
	fsw	%f1, 48(%x2)  #1250 pc 14512
	addi	%x5, %x6, 0  #0 pc 14520
	sw	%x1, 60(%x2)  #1250 pc 14524
	addi	%x2, %x2, 64  #1250 pc 14528
	jal	%x1, o_param_y.2702  #1250 pc 14532
	addi	%x2, %x2, -64  #1250 pc 14536
	lw	%x1, 60(%x2) #1250 pc 14540
	flw	%f1, 48(%x2)  #1250 pc 14544
	fsub	%f0, %f1, %f0  #1250 pc 14548
	lw	%x5, 24(%x2)  #1251 pc 14552
	addi	%x24, %x0, 8  #pc 14556
	add	%x24, %x24, %x5  #1251 pc 14560
	flw	%f1, 0(%x24)  #1251 pc 14564
	lw	%x5, 20(%x2)  #1251 pc 14568
	fsw	%f0, 56(%x2)  #1251 pc 14572
	fsw	%f1, 64(%x2)  #1251 pc 14576
	sw	%x1, 76(%x2)  #1251 pc 14580
	addi	%x2, %x2, 80  #1251 pc 14584
	jal	%x1, o_param_z.2704  #1251 pc 14588
	addi	%x2, %x2, -80  #1251 pc 14592
	lw	%x1, 76(%x2) #1251 pc 14596
	flw	%f1, 64(%x2)  #1251 pc 14600
	fsub	%f0, %f1, %f0  #1251 pc 14604
	lw	%x5, 16(%x2)  #1252 pc 14608
	fsw	%f0, 72(%x2)  #1252 pc 14612
	sw	%x1, 84(%x2)  #1252 pc 14616
	addi	%x2, %x2, 88  #1252 pc 14620
	jal	%x1, d_const.2745  #1252 pc 14624
	addi	%x2, %x2, -88  #1252 pc 14628
	lw	%x1, 84(%x2) #1252 pc 14632
	lw	%x6, 12(%x2)  #1253 pc 14636
	slli	%x6, %x6, 2  #1253 pc 14640
	add	%x24, %x6, %x5  #1253 pc 14644
	lw	%x5, 0(%x24)  #1253 pc 14648
	lw	%x6, 20(%x2)  #1254 pc 14652
	sw	%x5, 80(%x2)  #1254 pc 14656
	addi	%x5, %x6, 0  #0 pc 14664
	sw	%x1, 84(%x2)  #1254 pc 14668
	addi	%x2, %x2, 88  #1254 pc 14672
	jal	%x1, o_form.2684  #1254 pc 14676
	addi	%x2, %x2, -88  #1254 pc 14680
	lw	%x1, 84(%x2) #1254 pc 14684
	addi	%x24, %x0, 1  #pc 14688
	beq	%x5, %x24, 12  #1255 pc 14692
	j	be_else.9325 #pc 14696
	nop #pc 14700
	lw	%x5, 16(%x2)  #1256 pc 14704
	sw	%x1, 84(%x2)  #1256 pc 14708
	addi	%x2, %x2, 88  #1256 pc 14712
	jal	%x1, d_vec.2743  #1256 pc 14716
	addi	%x2, %x2, -88  #1256 pc 14720
	lw	%x1, 84(%x2) #1256 pc 14724
	addi	%x6, %x5, 0  #1256 pc 14728
	flw	%f0, 40(%x2)  #1256 pc 14732
	flw	%f1, 56(%x2)  #1256 pc 14736
	flw	%f2, 72(%x2)  #1256 pc 14740
	lw	%x5, 20(%x2)  #1256 pc 14744
	lw	%x7, 80(%x2)  #1256 pc 14748
	lw	%x22, 8(%x2)  #1256 pc 14752
	lw	%x23, 0(%x22)  #1256 pc 14756
	jalr	%x0, %x23, 0  #1256 pc 14760
	nop #pc 14764
be_else.9325: #pc 14764
	addi	%x24, %x0, 2  #pc 14768
	beq	%x5, %x24, 12  #1257 pc 14772
	j	be_else.9326 #pc 14776
	nop #pc 14780
	flw	%f0, 40(%x2)  #1258 pc 14784
	flw	%f1, 56(%x2)  #1258 pc 14788
	flw	%f2, 72(%x2)  #1258 pc 14792
	lw	%x5, 20(%x2)  #1258 pc 14796
	lw	%x6, 80(%x2)  #1258 pc 14800
	lw	%x22, 4(%x2)  #1258 pc 14804
	lw	%x23, 0(%x22)  #1258 pc 14808
	jalr	%x0, %x23, 0  #1258 pc 14812
	nop #pc 14816
be_else.9326: #pc 14816
	flw	%f0, 40(%x2)  #1260 pc 14820
	flw	%f1, 56(%x2)  #1260 pc 14824
	flw	%f2, 72(%x2)  #1260 pc 14828
	lw	%x5, 20(%x2)  #1260 pc 14832
	lw	%x6, 80(%x2)  #1260 pc 14836
	lw	%x22, 0(%x2)  #1260 pc 14840
	lw	%x23, 0(%x22)  #1260 pc 14844
	jalr	%x0, %x23, 0  #1260 pc 14848
	nop #pc 14852
solver_surface_fast2.2843:  #pc 14852
	addi	%x24, %x0, 4  #pc 14856
	add	%x24, %x24, %x22  #0 pc 14860
	lw	%x5, 0(%x24)  #0 pc 14864
	add	%x24, %x0, %x6  #1268 pc 14868
	flw	%f0, 0(%x24)  #1268 pc 14872
	sw	%x5, 0(%x2)  #1268 pc 14876
	sw	%x7, 4(%x2)  #1268 pc 14880
	sw	%x6, 8(%x2)  #1268 pc 14884
	sw	%x1, 12(%x2)  #1268 pc 14888
	addi	%x2, %x2, 16  #1268 pc 14892
	jal	%x1, fisneg.2532  #1268 pc 14896
	addi	%x2, %x2, -16  #1268 pc 14900
	lw	%x1, 12(%x2) #1268 pc 14904
	beq	%x5, %x0, 12  #1268 pc 14908
	j	be_else.9327 #pc 14912
	nop #pc 14916
	addi	%x5, %x0, 0  #0 pc 14920
	ret #pc 14924
	nop #pc 14928
be_else.9327: #pc 14928
	lw	%x5, 8(%x2)  #1269 pc 14932
	add	%x24, %x0, %x5  #1269 pc 14936
	flw	%f0, 0(%x24)  #1269 pc 14940
	lw	%x5, 4(%x2)  #1269 pc 14944
	addi	%x24, %x0, 12  #pc 14948
	add	%x24, %x24, %x5  #1269 pc 14952
	flw	%f1, 0(%x24)  #1269 pc 14956
	fmul	%f0, %f0, %f1  #1269 pc 14960
	lw	%x5, 0(%x2)  #1269 pc 14964
	add	%x24, %x0, %x5  #1269 pc 14968
	fsw	%f0, 0(%x24) #1269 pc 14972
	addi	%x5, %x0, 1  #0 pc 14976
	ret #pc 14980
	nop #pc 14984
solver_second_fast2.2850:  #pc 14984
	addi	%x24, %x0, 4  #pc 14988
	add	%x24, %x24, %x22  #0 pc 14992
	lw	%x9, 0(%x24)  #0 pc 14996
	add	%x24, %x0, %x6  #1277 pc 15000
	flw	%f3, 0(%x24)  #1277 pc 15004
	sw	%x9, 0(%x2)  #1278 pc 15008
	sw	%x5, 4(%x2)  #1278 pc 15012
	fsw	%f3, 8(%x2)  #1278 pc 15016
	sw	%x7, 16(%x2)  #1278 pc 15020
	fsw	%f2, 24(%x2)  #1278 pc 15024
	fsw	%f1, 32(%x2)  #1278 pc 15028
	fsw	%f0, 40(%x2)  #1278 pc 15032
	sw	%x6, 48(%x2)  #1278 pc 15036
	fadd	%f0, %f3, %f30  #0 pc 15040
	sw	%x1, 52(%x2)  #1278 pc 15044
	addi	%x2, %x2, 56  #1278 pc 15048
	jal	%x1, fiszero.2528  #1278 pc 15052
	addi	%x2, %x2, -56  #1278 pc 15056
	lw	%x1, 52(%x2) #1278 pc 15060
	beq	%x5, %x0, 12  #1278 pc 15064
	j	be_else.9329 #pc 15068
	nop #pc 15072
	lw	%x5, 48(%x2)  #1281 pc 15076
	addi	%x24, %x0, 4  #pc 15080
	add	%x24, %x24, %x5  #1281 pc 15084
	flw	%f0, 0(%x24)  #1281 pc 15088
	flw	%f1, 40(%x2)  #1281 pc 15092
	fmul	%f0, %f0, %f1  #1281 pc 15096
	addi	%x24, %x0, 8  #pc 15100
	add	%x24, %x24, %x5  #1281 pc 15104
	flw	%f1, 0(%x24)  #1281 pc 15108
	flw	%f2, 32(%x2)  #1281 pc 15112
	fmul	%f1, %f1, %f2  #1281 pc 15116
	fadd	%f0, %f0, %f1  #1281 pc 15120
	addi	%x24, %x0, 12  #pc 15124
	add	%x24, %x24, %x5  #1281 pc 15128
	flw	%f1, 0(%x24)  #1281 pc 15132
	flw	%f2, 24(%x2)  #1281 pc 15136
	fmul	%f1, %f1, %f2  #1281 pc 15140
	fadd	%f0, %f0, %f1  #1281 pc 15144
	lw	%x6, 16(%x2)  #1282 pc 15148
	addi	%x24, %x0, 12  #pc 15152
	add	%x24, %x24, %x6  #1282 pc 15156
	flw	%f1, 0(%x24)  #1282 pc 15160
	fsw	%f0, 56(%x2)  #1283 pc 15164
	fsw	%f1, 64(%x2)  #1283 pc 15168
	sw	%x1, 76(%x2)  #1283 pc 15172
	addi	%x2, %x2, 80  #1283 pc 15176
	jal	%x1, fsqr.2536  #1283 pc 15180
	addi	%x2, %x2, -80  #1283 pc 15184
	lw	%x1, 76(%x2) #1283 pc 15188
	flw	%f1, 64(%x2)  #1283 pc 15192
	flw	%f2, 8(%x2)  #1283 pc 15196
	fmul	%f1, %f2, %f1  #1283 pc 15200
	fsub	%f0, %f0, %f1  #1283 pc 15204
	fsw	%f0, 72(%x2)  #1284 pc 15208
	sw	%x1, 84(%x2)  #1284 pc 15212
	addi	%x2, %x2, 88  #1284 pc 15216
	jal	%x1, fispos.2530  #1284 pc 15220
	addi	%x2, %x2, -88  #1284 pc 15224
	lw	%x1, 84(%x2) #1284 pc 15228
	beq	%x5, %x0, 12  #1284 pc 15232
	j	be_else.9331 #pc 15236
	nop #pc 15240
	addi	%x5, %x0, 0  #0 pc 15244
	ret #pc 15248
	nop #pc 15252
be_else.9331: #pc 15252
	lw	%x5, 4(%x2)  #1285 pc 15256
	sw	%x1, 84(%x2)  #1285 pc 15260
	addi	%x2, %x2, 88  #1285 pc 15264
	jal	%x1, o_isinvert.2688  #1285 pc 15268
	addi	%x2, %x2, -88  #1285 pc 15272
	lw	%x1, 84(%x2) #1285 pc 15276
	beq	%x5, %x0, 12  #1285 pc 15280
	j	be_else.9332 #pc 15284
	nop #pc 15288
	flw	%f0, 72(%x2)  #1288 pc 15292
	fsqrt	%f0, %f0  #1288 pc 15296
	flw	%f1, 56(%x2)  #1288 pc 15300
	fsub	%f0, %f1, %f0  #1288 pc 15304
	lw	%x5, 48(%x2)  #1288 pc 15308
	addi	%x24, %x0, 16  #pc 15312
	add	%x24, %x24, %x5  #1288 pc 15316
	flw	%f1, 0(%x24)  #1288 pc 15320
	fmul	%f0, %f0, %f1  #1288 pc 15324
	lw	%x5, 0(%x2)  #1288 pc 15328
	add	%x24, %x0, %x5  #1288 pc 15332
	fsw	%f0, 0(%x24) #1288 pc 15336
	j	be_cont.9333 #pc 15340
	nop #pc 15344
be_else.9332: #pc 15344
	flw	%f0, 72(%x2)  #1286 pc 15348
	fsqrt	%f0, %f0  #1286 pc 15352
	flw	%f1, 56(%x2)  #1286 pc 15356
	fadd	%f0, %f1, %f0  #1286 pc 15360
	lw	%x5, 48(%x2)  #1286 pc 15364
	addi	%x24, %x0, 16  #pc 15368
	add	%x24, %x24, %x5  #1286 pc 15372
	flw	%f1, 0(%x24)  #1286 pc 15376
	fmul	%f0, %f0, %f1  #1286 pc 15380
	lw	%x5, 0(%x2)  #1286 pc 15384
	add	%x24, %x0, %x5  #1286 pc 15388
	fsw	%f0, 0(%x24) #1286 pc 15392
be_cont.9333: #pc 15392
	addi	%x5, %x0, 1  #0 pc 15396
	ret #pc 15400
	nop #pc 15404
be_else.9329: #pc 15404
	addi	%x5, %x0, 0  #0 pc 15408
	ret #pc 15412
	nop #pc 15416
solver_fast2.2857:  #pc 15416
	addi	%x24, %x0, 16  #pc 15420
	add	%x24, %x24, %x22  #1295 pc 15424
	lw	%x7, 0(%x24)  #1295 pc 15428
	addi	%x24, %x0, 12  #pc 15432
	add	%x24, %x24, %x22  #1295 pc 15436
	lw	%x9, 0(%x24)  #1295 pc 15440
	addi	%x24, %x0, 8  #pc 15444
	add	%x24, %x24, %x22  #1295 pc 15448
	lw	%x10, 0(%x24)  #1295 pc 15452
	addi	%x24, %x0, 4  #pc 15456
	add	%x24, %x24, %x22  #1295 pc 15460
	lw	%x11, 0(%x24)  #1295 pc 15464
	slli	%x12, %x5, 2  #1295 pc 15468
	add	%x24, %x12, %x11  #1295 pc 15472
	lw	%x11, 0(%x24)  #1295 pc 15476
	sw	%x9, 0(%x2)  #1296 pc 15480
	sw	%x7, 4(%x2)  #1296 pc 15484
	sw	%x10, 8(%x2)  #1296 pc 15488
	sw	%x11, 12(%x2)  #1296 pc 15492
	sw	%x5, 16(%x2)  #1296 pc 15496
	sw	%x6, 20(%x2)  #1296 pc 15500
	addi	%x5, %x11, 0  #0 pc 15508
	sw	%x1, 28(%x2)  #1296 pc 15512
	addi	%x2, %x2, 32  #1296 pc 15516
	jal	%x1, o_param_ctbl.2722  #1296 pc 15520
	addi	%x2, %x2, -32  #1296 pc 15524
	lw	%x1, 28(%x2) #1296 pc 15528
	add	%x24, %x0, %x5  #1297 pc 15532
	flw	%f0, 0(%x24)  #1297 pc 15536
	addi	%x24, %x0, 4  #pc 15540
	add	%x24, %x24, %x5  #1298 pc 15544
	flw	%f1, 0(%x24)  #1298 pc 15548
	addi	%x24, %x0, 8  #pc 15552
	add	%x24, %x24, %x5  #1299 pc 15556
	flw	%f2, 0(%x24)  #1299 pc 15560
	lw	%x6, 20(%x2)  #1300 pc 15564
	sw	%x5, 24(%x2)  #1300 pc 15568
	fsw	%f2, 32(%x2)  #1300 pc 15572
	fsw	%f1, 40(%x2)  #1300 pc 15576
	fsw	%f0, 48(%x2)  #1300 pc 15580
	addi	%x5, %x6, 0  #0 pc 15588
	sw	%x1, 60(%x2)  #1300 pc 15592
	addi	%x2, %x2, 64  #1300 pc 15596
	jal	%x1, d_const.2745  #1300 pc 15600
	addi	%x2, %x2, -64  #1300 pc 15604
	lw	%x1, 60(%x2) #1300 pc 15608
	lw	%x6, 16(%x2)  #1301 pc 15612
	slli	%x6, %x6, 2  #1301 pc 15616
	add	%x24, %x6, %x5  #1301 pc 15620
	lw	%x5, 0(%x24)  #1301 pc 15624
	lw	%x6, 12(%x2)  #1302 pc 15628
	sw	%x5, 56(%x2)  #1302 pc 15632
	addi	%x5, %x6, 0  #0 pc 15640
	sw	%x1, 60(%x2)  #1302 pc 15644
	addi	%x2, %x2, 64  #1302 pc 15648
	jal	%x1, o_form.2684  #1302 pc 15652
	addi	%x2, %x2, -64  #1302 pc 15656
	lw	%x1, 60(%x2) #1302 pc 15660
	addi	%x24, %x0, 1  #pc 15664
	beq	%x5, %x24, 12  #1303 pc 15668
	j	be_else.9335 #pc 15672
	nop #pc 15676
	lw	%x5, 20(%x2)  #1304 pc 15680
	sw	%x1, 60(%x2)  #1304 pc 15684
	addi	%x2, %x2, 64  #1304 pc 15688
	jal	%x1, d_vec.2743  #1304 pc 15692
	addi	%x2, %x2, -64  #1304 pc 15696
	lw	%x1, 60(%x2) #1304 pc 15700
	addi	%x6, %x5, 0  #1304 pc 15704
	flw	%f0, 48(%x2)  #1304 pc 15708
	flw	%f1, 40(%x2)  #1304 pc 15712
	flw	%f2, 32(%x2)  #1304 pc 15716
	lw	%x5, 12(%x2)  #1304 pc 15720
	lw	%x7, 56(%x2)  #1304 pc 15724
	lw	%x22, 8(%x2)  #1304 pc 15728
	lw	%x23, 0(%x22)  #1304 pc 15732
	jalr	%x0, %x23, 0  #1304 pc 15736
	nop #pc 15740
be_else.9335: #pc 15740
	addi	%x24, %x0, 2  #pc 15744
	beq	%x5, %x24, 12  #1305 pc 15748
	j	be_else.9336 #pc 15752
	nop #pc 15756
	flw	%f0, 48(%x2)  #1306 pc 15760
	flw	%f1, 40(%x2)  #1306 pc 15764
	flw	%f2, 32(%x2)  #1306 pc 15768
	lw	%x5, 12(%x2)  #1306 pc 15772
	lw	%x6, 56(%x2)  #1306 pc 15776
	lw	%x7, 24(%x2)  #1306 pc 15780
	lw	%x22, 4(%x2)  #1306 pc 15784
	lw	%x23, 0(%x22)  #1306 pc 15788
	jalr	%x0, %x23, 0  #1306 pc 15792
	nop #pc 15796
be_else.9336: #pc 15796
	flw	%f0, 48(%x2)  #1308 pc 15800
	flw	%f1, 40(%x2)  #1308 pc 15804
	flw	%f2, 32(%x2)  #1308 pc 15808
	lw	%x5, 12(%x2)  #1308 pc 15812
	lw	%x6, 56(%x2)  #1308 pc 15816
	lw	%x7, 24(%x2)  #1308 pc 15820
	lw	%x22, 0(%x2)  #1308 pc 15824
	lw	%x23, 0(%x22)  #1308 pc 15828
	jalr	%x0, %x23, 0  #1308 pc 15832
	nop #pc 15836
setup_rect_table.2860:  #pc 15836
	addi	%x7, %x0, 6  #0 pc 15840
	fmv	%f0, l.6293  #0 pc 15844
	sw	%x6, 0(%x2)  #1317 pc 15848
	sw	%x5, 4(%x2)  #1317 pc 15852
	addi	%x5, %x7, 0  #0 pc 15860
	sw	%x1, 12(%x2)  #1317 pc 15864
	addi	%x2, %x2, 16  #1317 pc 15868
	jal	%x1, create_float_array.2600  #1317 pc 15872
	addi	%x2, %x2, -16  #1317 pc 15876
	lw	%x1, 12(%x2) #1317 pc 15880
	lw	%x6, 4(%x2)  #1319 pc 15884
	add	%x24, %x0, %x6  #1319 pc 15888
	flw	%f0, 0(%x24)  #1319 pc 15892
	sw	%x5, 8(%x2)  #1319 pc 15896
	sw	%x1, 12(%x2)  #1319 pc 15900
	addi	%x2, %x2, 16  #1319 pc 15904
	jal	%x1, fiszero.2528  #1319 pc 15908
	addi	%x2, %x2, -16  #1319 pc 15912
	lw	%x1, 12(%x2) #1319 pc 15916
	beq	%x5, %x0, 12  #1319 pc 15920
	j	be_else.9337 #pc 15924
	nop #pc 15928
	lw	%x5, 0(%x2)  #1323 pc 15932
	sw	%x1, 12(%x2)  #1323 pc 15936
	addi	%x2, %x2, 16  #1323 pc 15940
	jal	%x1, o_isinvert.2688  #1323 pc 15944
	addi	%x2, %x2, -16  #1323 pc 15948
	lw	%x1, 12(%x2) #1323 pc 15952
	lw	%x6, 4(%x2)  #1323 pc 15956
	add	%x24, %x0, %x6  #1323 pc 15960
	flw	%f0, 0(%x24)  #1323 pc 15964
	sw	%x5, 12(%x2)  #1323 pc 15968
	sw	%x1, 20(%x2)  #1323 pc 15972
	addi	%x2, %x2, 24  #1323 pc 15976
	jal	%x1, fisneg.2532  #1323 pc 15980
	addi	%x2, %x2, -24  #1323 pc 15984
	lw	%x1, 20(%x2) #1323 pc 15988
	addi	%x6, %x5, 0  #1323 pc 15992
	lw	%x5, 12(%x2)  #1323 pc 15996
	sw	%x1, 20(%x2)  #1323 pc 16000
	addi	%x2, %x2, 24  #1323 pc 16004
	jal	%x1, xor.2633  #1323 pc 16008
	addi	%x2, %x2, -24  #1323 pc 16012
	lw	%x1, 20(%x2) #1323 pc 16016
	lw	%x6, 0(%x2)  #1323 pc 16020
	sw	%x5, 16(%x2)  #1323 pc 16024
	addi	%x5, %x6, 0  #0 pc 16032
	sw	%x1, 20(%x2)  #1323 pc 16036
	addi	%x2, %x2, 24  #1323 pc 16040
	jal	%x1, o_param_a.2692  #1323 pc 16044
	addi	%x2, %x2, -24  #1323 pc 16048
	lw	%x1, 20(%x2) #1323 pc 16052
	lw	%x5, 16(%x2)  #1323 pc 16056
	sw	%x1, 20(%x2)  #1323 pc 16060
	addi	%x2, %x2, 24  #1323 pc 16064
	jal	%x1, fneg_cond.2638  #1323 pc 16068
	addi	%x2, %x2, -24  #1323 pc 16072
	lw	%x1, 20(%x2) #1323 pc 16076
	lw	%x5, 8(%x2)  #1323 pc 16080
	add	%x24, %x0, %x5  #1323 pc 16084
	fsw	%f0, 0(%x24) #1323 pc 16088
	fmv	%f0, l.6305  #0 pc 16092
	lw	%x6, 4(%x2)  #1325 pc 16096
	add	%x24, %x0, %x6  #1325 pc 16100
	flw	%f1, 0(%x24)  #1325 pc 16104
	fdiv	%f0, %f0, %f1  #1325 pc 16108
	addi	%x24, %x0, 4  #pc 16112
	add	%x24, %x24, %x5  #1325 pc 16116
	fsw	%f0, 0(%x24) #1325 pc 16120
	j	be_cont.9338 #pc 16124
	nop #pc 16128
be_else.9337: #pc 16128
	fmv	%f0, l.6293  #0 pc 16132
	lw	%x5, 8(%x2)  #1320 pc 16136
	addi	%x24, %x0, 4  #pc 16140
	add	%x24, %x24, %x5  #1320 pc 16144
	fsw	%f0, 0(%x24) #1320 pc 16148
be_cont.9338: #pc 16148
	lw	%x6, 4(%x2)  #1327 pc 16152
	addi	%x24, %x0, 4  #pc 16156
	add	%x24, %x24, %x6  #1327 pc 16160
	flw	%f0, 0(%x24)  #1327 pc 16164
	sw	%x1, 20(%x2)  #1327 pc 16168
	addi	%x2, %x2, 24  #1327 pc 16172
	jal	%x1, fiszero.2528  #1327 pc 16176
	addi	%x2, %x2, -24  #1327 pc 16180
	lw	%x1, 20(%x2) #1327 pc 16184
	beq	%x5, %x0, 12  #1327 pc 16188
	j	be_else.9339 #pc 16192
	nop #pc 16196
	lw	%x5, 0(%x2)  #1330 pc 16200
	sw	%x1, 20(%x2)  #1330 pc 16204
	addi	%x2, %x2, 24  #1330 pc 16208
	jal	%x1, o_isinvert.2688  #1330 pc 16212
	addi	%x2, %x2, -24  #1330 pc 16216
	lw	%x1, 20(%x2) #1330 pc 16220
	lw	%x6, 4(%x2)  #1330 pc 16224
	addi	%x24, %x0, 4  #pc 16228
	add	%x24, %x24, %x6  #1330 pc 16232
	flw	%f0, 0(%x24)  #1330 pc 16236
	sw	%x5, 20(%x2)  #1330 pc 16240
	sw	%x1, 28(%x2)  #1330 pc 16244
	addi	%x2, %x2, 32  #1330 pc 16248
	jal	%x1, fisneg.2532  #1330 pc 16252
	addi	%x2, %x2, -32  #1330 pc 16256
	lw	%x1, 28(%x2) #1330 pc 16260
	addi	%x6, %x5, 0  #1330 pc 16264
	lw	%x5, 20(%x2)  #1330 pc 16268
	sw	%x1, 28(%x2)  #1330 pc 16272
	addi	%x2, %x2, 32  #1330 pc 16276
	jal	%x1, xor.2633  #1330 pc 16280
	addi	%x2, %x2, -32  #1330 pc 16284
	lw	%x1, 28(%x2) #1330 pc 16288
	lw	%x6, 0(%x2)  #1330 pc 16292
	sw	%x5, 24(%x2)  #1330 pc 16296
	addi	%x5, %x6, 0  #0 pc 16304
	sw	%x1, 28(%x2)  #1330 pc 16308
	addi	%x2, %x2, 32  #1330 pc 16312
	jal	%x1, o_param_b.2694  #1330 pc 16316
	addi	%x2, %x2, -32  #1330 pc 16320
	lw	%x1, 28(%x2) #1330 pc 16324
	lw	%x5, 24(%x2)  #1330 pc 16328
	sw	%x1, 28(%x2)  #1330 pc 16332
	addi	%x2, %x2, 32  #1330 pc 16336
	jal	%x1, fneg_cond.2638  #1330 pc 16340
	addi	%x2, %x2, -32  #1330 pc 16344
	lw	%x1, 28(%x2) #1330 pc 16348
	lw	%x5, 8(%x2)  #1330 pc 16352
	addi	%x24, %x0, 8  #pc 16356
	add	%x24, %x24, %x5  #1330 pc 16360
	fsw	%f0, 0(%x24) #1330 pc 16364
	fmv	%f0, l.6305  #0 pc 16368
	lw	%x6, 4(%x2)  #1331 pc 16372
	addi	%x24, %x0, 4  #pc 16376
	add	%x24, %x24, %x6  #1331 pc 16380
	flw	%f1, 0(%x24)  #1331 pc 16384
	fdiv	%f0, %f0, %f1  #1331 pc 16388
	addi	%x24, %x0, 12  #pc 16392
	add	%x24, %x24, %x5  #1331 pc 16396
	fsw	%f0, 0(%x24) #1331 pc 16400
	j	be_cont.9340 #pc 16404
	nop #pc 16408
be_else.9339: #pc 16408
	fmv	%f0, l.6293  #0 pc 16412
	lw	%x5, 8(%x2)  #1328 pc 16416
	addi	%x24, %x0, 12  #pc 16420
	add	%x24, %x24, %x5  #1328 pc 16424
	fsw	%f0, 0(%x24) #1328 pc 16428
be_cont.9340: #pc 16428
	lw	%x6, 4(%x2)  #1333 pc 16432
	addi	%x24, %x0, 8  #pc 16436
	add	%x24, %x24, %x6  #1333 pc 16440
	flw	%f0, 0(%x24)  #1333 pc 16444
	sw	%x1, 28(%x2)  #1333 pc 16448
	addi	%x2, %x2, 32  #1333 pc 16452
	jal	%x1, fiszero.2528  #1333 pc 16456
	addi	%x2, %x2, -32  #1333 pc 16460
	lw	%x1, 28(%x2) #1333 pc 16464
	beq	%x5, %x0, 12  #1333 pc 16468
	j	be_else.9341 #pc 16472
	nop #pc 16476
	lw	%x5, 0(%x2)  #1336 pc 16480
	sw	%x1, 28(%x2)  #1336 pc 16484
	addi	%x2, %x2, 32  #1336 pc 16488
	jal	%x1, o_isinvert.2688  #1336 pc 16492
	addi	%x2, %x2, -32  #1336 pc 16496
	lw	%x1, 28(%x2) #1336 pc 16500
	lw	%x6, 4(%x2)  #1336 pc 16504
	addi	%x24, %x0, 8  #pc 16508
	add	%x24, %x24, %x6  #1336 pc 16512
	flw	%f0, 0(%x24)  #1336 pc 16516
	sw	%x5, 28(%x2)  #1336 pc 16520
	sw	%x1, 36(%x2)  #1336 pc 16524
	addi	%x2, %x2, 40  #1336 pc 16528
	jal	%x1, fisneg.2532  #1336 pc 16532
	addi	%x2, %x2, -40  #1336 pc 16536
	lw	%x1, 36(%x2) #1336 pc 16540
	addi	%x6, %x5, 0  #1336 pc 16544
	lw	%x5, 28(%x2)  #1336 pc 16548
	sw	%x1, 36(%x2)  #1336 pc 16552
	addi	%x2, %x2, 40  #1336 pc 16556
	jal	%x1, xor.2633  #1336 pc 16560
	addi	%x2, %x2, -40  #1336 pc 16564
	lw	%x1, 36(%x2) #1336 pc 16568
	lw	%x6, 0(%x2)  #1336 pc 16572
	sw	%x5, 32(%x2)  #1336 pc 16576
	addi	%x5, %x6, 0  #0 pc 16584
	sw	%x1, 36(%x2)  #1336 pc 16588
	addi	%x2, %x2, 40  #1336 pc 16592
	jal	%x1, o_param_c.2696  #1336 pc 16596
	addi	%x2, %x2, -40  #1336 pc 16600
	lw	%x1, 36(%x2) #1336 pc 16604
	lw	%x5, 32(%x2)  #1336 pc 16608
	sw	%x1, 36(%x2)  #1336 pc 16612
	addi	%x2, %x2, 40  #1336 pc 16616
	jal	%x1, fneg_cond.2638  #1336 pc 16620
	addi	%x2, %x2, -40  #1336 pc 16624
	lw	%x1, 36(%x2) #1336 pc 16628
	lw	%x5, 8(%x2)  #1336 pc 16632
	addi	%x24, %x0, 16  #pc 16636
	add	%x24, %x24, %x5  #1336 pc 16640
	fsw	%f0, 0(%x24) #1336 pc 16644
	fmv	%f0, l.6305  #0 pc 16648
	lw	%x6, 4(%x2)  #1337 pc 16652
	addi	%x24, %x0, 8  #pc 16656
	add	%x24, %x24, %x6  #1337 pc 16660
	flw	%f1, 0(%x24)  #1337 pc 16664
	fdiv	%f0, %f0, %f1  #1337 pc 16668
	addi	%x24, %x0, 20  #pc 16672
	add	%x24, %x24, %x5  #1337 pc 16676
	fsw	%f0, 0(%x24) #1337 pc 16680
	j	be_cont.9342 #pc 16684
	nop #pc 16688
be_else.9341: #pc 16688
	fmv	%f0, l.6293  #0 pc 16692
	lw	%x5, 8(%x2)  #1334 pc 16696
	addi	%x24, %x0, 20  #pc 16700
	add	%x24, %x24, %x5  #1334 pc 16704
	fsw	%f0, 0(%x24) #1334 pc 16708
be_cont.9342: #pc 16708
	ret #pc 16712
	nop #pc 16716
setup_surface_table.2863:  #pc 16716
	addi	%x7, %x0, 4  #0 pc 16720
	fmv	%f0, l.6293  #0 pc 16724
	sw	%x6, 0(%x2)  #1344 pc 16728
	sw	%x5, 4(%x2)  #1344 pc 16732
	addi	%x5, %x7, 0  #0 pc 16740
	sw	%x1, 12(%x2)  #1344 pc 16744
	addi	%x2, %x2, 16  #1344 pc 16748
	jal	%x1, create_float_array.2600  #1344 pc 16752
	addi	%x2, %x2, -16  #1344 pc 16756
	lw	%x1, 12(%x2) #1344 pc 16760
	lw	%x6, 4(%x2)  #1346 pc 16764
	add	%x24, %x0, %x6  #1346 pc 16768
	flw	%f0, 0(%x24)  #1346 pc 16772
	lw	%x7, 0(%x2)  #1346 pc 16776
	sw	%x5, 8(%x2)  #1346 pc 16780
	fsw	%f0, 16(%x2)  #1346 pc 16784
	addi	%x5, %x7, 0  #0 pc 16792
	sw	%x1, 28(%x2)  #1346 pc 16796
	addi	%x2, %x2, 32  #1346 pc 16800
	jal	%x1, o_param_a.2692  #1346 pc 16804
	addi	%x2, %x2, -32  #1346 pc 16808
	lw	%x1, 28(%x2) #1346 pc 16812
	flw	%f1, 16(%x2)  #1346 pc 16816
	fmul	%f0, %f1, %f0  #1346 pc 16820
	lw	%x5, 4(%x2)  #1346 pc 16824
	addi	%x24, %x0, 4  #pc 16828
	add	%x24, %x24, %x5  #1346 pc 16832
	flw	%f1, 0(%x24)  #1346 pc 16836
	lw	%x6, 0(%x2)  #1346 pc 16840
	fsw	%f0, 24(%x2)  #1346 pc 16844
	fsw	%f1, 32(%x2)  #1346 pc 16848
	addi	%x5, %x6, 0  #0 pc 16856
	sw	%x1, 44(%x2)  #1346 pc 16860
	addi	%x2, %x2, 48  #1346 pc 16864
	jal	%x1, o_param_b.2694  #1346 pc 16868
	addi	%x2, %x2, -48  #1346 pc 16872
	lw	%x1, 44(%x2) #1346 pc 16876
	flw	%f1, 32(%x2)  #1346 pc 16880
	fmul	%f0, %f1, %f0  #1346 pc 16884
	flw	%f1, 24(%x2)  #1346 pc 16888
	fadd	%f0, %f1, %f0  #1346 pc 16892
	lw	%x5, 4(%x2)  #1346 pc 16896
	addi	%x24, %x0, 8  #pc 16900
	add	%x24, %x24, %x5  #1346 pc 16904
	flw	%f1, 0(%x24)  #1346 pc 16908
	lw	%x5, 0(%x2)  #1346 pc 16912
	fsw	%f0, 40(%x2)  #1346 pc 16916
	fsw	%f1, 48(%x2)  #1346 pc 16920
	sw	%x1, 60(%x2)  #1346 pc 16924
	addi	%x2, %x2, 64  #1346 pc 16928
	jal	%x1, o_param_c.2696  #1346 pc 16932
	addi	%x2, %x2, -64  #1346 pc 16936
	lw	%x1, 60(%x2) #1346 pc 16940
	flw	%f1, 48(%x2)  #1346 pc 16944
	fmul	%f0, %f1, %f0  #1346 pc 16948
	flw	%f1, 40(%x2)  #1346 pc 16952
	fadd	%f0, %f1, %f0  #1346 pc 16956
	fsw	%f0, 56(%x2)  #1348 pc 16960
	sw	%x1, 68(%x2)  #1348 pc 16964
	addi	%x2, %x2, 72  #1348 pc 16968
	jal	%x1, fispos.2530  #1348 pc 16972
	addi	%x2, %x2, -72  #1348 pc 16976
	lw	%x1, 68(%x2) #1348 pc 16980
	beq	%x5, %x0, 12  #1348 pc 16984
	j	be_else.9344 #pc 16988
	nop #pc 16992
	fmv	%f0, l.6293  #0 pc 16996
	lw	%x5, 8(%x2)  #1356 pc 17000
	add	%x24, %x0, %x5  #1356 pc 17004
	fsw	%f0, 0(%x24) #1356 pc 17008
	j	be_cont.9345 #pc 17012
	nop #pc 17016
be_else.9344: #pc 17016
	fmv	%f0, l.6343  #0 pc 17020
	flw	%f1, 56(%x2)  #1350 pc 17024
	fdiv	%f0, %f0, %f1  #1350 pc 17028
	lw	%x5, 8(%x2)  #1350 pc 17032
	add	%x24, %x0, %x5  #1350 pc 17036
	fsw	%f0, 0(%x24) #1350 pc 17040
	lw	%x6, 0(%x2)  #1352 pc 17044
	addi	%x5, %x6, 0  #0 pc 17052
	sw	%x1, 68(%x2)  #1352 pc 17056
	addi	%x2, %x2, 72  #1352 pc 17060
	jal	%x1, o_param_a.2692  #1352 pc 17064
	addi	%x2, %x2, -72  #1352 pc 17068
	lw	%x1, 68(%x2) #1352 pc 17072
	flw	%f1, 56(%x2)  #1352 pc 17076
	fdiv	%f0, %f0, %f1  #1352 pc 17080
	sw	%x1, 68(%x2)  #1352 pc 17084
	addi	%x2, %x2, 72  #1352 pc 17088
	jal	%x1, fneg.2534  #1352 pc 17092
	addi	%x2, %x2, -72  #1352 pc 17096
	lw	%x1, 68(%x2) #1352 pc 17100
	lw	%x5, 8(%x2)  #1352 pc 17104
	addi	%x24, %x0, 4  #pc 17108
	add	%x24, %x24, %x5  #1352 pc 17112
	fsw	%f0, 0(%x24) #1352 pc 17116
	lw	%x6, 0(%x2)  #1353 pc 17120
	addi	%x5, %x6, 0  #0 pc 17128
	sw	%x1, 68(%x2)  #1353 pc 17132
	addi	%x2, %x2, 72  #1353 pc 17136
	jal	%x1, o_param_b.2694  #1353 pc 17140
	addi	%x2, %x2, -72  #1353 pc 17144
	lw	%x1, 68(%x2) #1353 pc 17148
	flw	%f1, 56(%x2)  #1353 pc 17152
	fdiv	%f0, %f0, %f1  #1353 pc 17156
	sw	%x1, 68(%x2)  #1353 pc 17160
	addi	%x2, %x2, 72  #1353 pc 17164
	jal	%x1, fneg.2534  #1353 pc 17168
	addi	%x2, %x2, -72  #1353 pc 17172
	lw	%x1, 68(%x2) #1353 pc 17176
	lw	%x5, 8(%x2)  #1353 pc 17180
	addi	%x24, %x0, 8  #pc 17184
	add	%x24, %x24, %x5  #1353 pc 17188
	fsw	%f0, 0(%x24) #1353 pc 17192
	lw	%x6, 0(%x2)  #1354 pc 17196
	addi	%x5, %x6, 0  #0 pc 17204
	sw	%x1, 68(%x2)  #1354 pc 17208
	addi	%x2, %x2, 72  #1354 pc 17212
	jal	%x1, o_param_c.2696  #1354 pc 17216
	addi	%x2, %x2, -72  #1354 pc 17220
	lw	%x1, 68(%x2) #1354 pc 17224
	flw	%f1, 56(%x2)  #1354 pc 17228
	fdiv	%f0, %f0, %f1  #1354 pc 17232
	sw	%x1, 68(%x2)  #1354 pc 17236
	addi	%x2, %x2, 72  #1354 pc 17240
	jal	%x1, fneg.2534  #1354 pc 17244
	addi	%x2, %x2, -72  #1354 pc 17248
	lw	%x1, 68(%x2) #1354 pc 17252
	lw	%x5, 8(%x2)  #1354 pc 17256
	addi	%x24, %x0, 12  #pc 17260
	add	%x24, %x24, %x5  #1354 pc 17264
	fsw	%f0, 0(%x24) #1354 pc 17268
be_cont.9345: #pc 17268
	ret #pc 17272
	nop #pc 17276
setup_second_table.2866:  #pc 17276
	addi	%x7, %x0, 5  #0 pc 17280
	fmv	%f0, l.6293  #0 pc 17284
	sw	%x6, 0(%x2)  #1363 pc 17288
	sw	%x5, 4(%x2)  #1363 pc 17292
	addi	%x5, %x7, 0  #0 pc 17300
	sw	%x1, 12(%x2)  #1363 pc 17304
	addi	%x2, %x2, 16  #1363 pc 17308
	jal	%x1, create_float_array.2600  #1363 pc 17312
	addi	%x2, %x2, -16  #1363 pc 17316
	lw	%x1, 12(%x2) #1363 pc 17320
	lw	%x6, 4(%x2)  #1365 pc 17324
	add	%x24, %x0, %x6  #1365 pc 17328
	flw	%f0, 0(%x24)  #1365 pc 17332
	addi	%x24, %x0, 4  #pc 17336
	add	%x24, %x24, %x6  #1365 pc 17340
	flw	%f1, 0(%x24)  #1365 pc 17344
	addi	%x24, %x0, 8  #pc 17348
	add	%x24, %x24, %x6  #1365 pc 17352
	flw	%f2, 0(%x24)  #1365 pc 17356
	lw	%x7, 0(%x2)  #1365 pc 17360
	sw	%x5, 8(%x2)  #1365 pc 17364
	addi	%x5, %x7, 0  #0 pc 17372
	sw	%x1, 12(%x2)  #1365 pc 17376
	addi	%x2, %x2, 16  #1365 pc 17380
	jal	%x1, quadratic.2797  #1365 pc 17384
	addi	%x2, %x2, -16  #1365 pc 17388
	lw	%x1, 12(%x2) #1365 pc 17392
	lw	%x5, 4(%x2)  #1366 pc 17396
	add	%x24, %x0, %x5  #1366 pc 17400
	flw	%f1, 0(%x24)  #1366 pc 17404
	lw	%x6, 0(%x2)  #1366 pc 17408
	fsw	%f0, 16(%x2)  #1366 pc 17412
	fsw	%f1, 24(%x2)  #1366 pc 17416
	addi	%x5, %x6, 0  #0 pc 17424
	sw	%x1, 36(%x2)  #1366 pc 17428
	addi	%x2, %x2, 40  #1366 pc 17432
	jal	%x1, o_param_a.2692  #1366 pc 17436
	addi	%x2, %x2, -40  #1366 pc 17440
	lw	%x1, 36(%x2) #1366 pc 17444
	flw	%f1, 24(%x2)  #1366 pc 17448
	fmul	%f0, %f1, %f0  #1366 pc 17452
	sw	%x1, 36(%x2)  #1366 pc 17456
	addi	%x2, %x2, 40  #1366 pc 17460
	jal	%x1, fneg.2534  #1366 pc 17464
	addi	%x2, %x2, -40  #1366 pc 17468
	lw	%x1, 36(%x2) #1366 pc 17472
	lw	%x5, 4(%x2)  #1367 pc 17476
	addi	%x24, %x0, 4  #pc 17480
	add	%x24, %x24, %x5  #1367 pc 17484
	flw	%f1, 0(%x24)  #1367 pc 17488
	lw	%x6, 0(%x2)  #1367 pc 17492
	fsw	%f0, 32(%x2)  #1367 pc 17496
	fsw	%f1, 40(%x2)  #1367 pc 17500
	addi	%x5, %x6, 0  #0 pc 17508
	sw	%x1, 52(%x2)  #1367 pc 17512
	addi	%x2, %x2, 56  #1367 pc 17516
	jal	%x1, o_param_b.2694  #1367 pc 17520
	addi	%x2, %x2, -56  #1367 pc 17524
	lw	%x1, 52(%x2) #1367 pc 17528
	flw	%f1, 40(%x2)  #1367 pc 17532
	fmul	%f0, %f1, %f0  #1367 pc 17536
	sw	%x1, 52(%x2)  #1367 pc 17540
	addi	%x2, %x2, 56  #1367 pc 17544
	jal	%x1, fneg.2534  #1367 pc 17548
	addi	%x2, %x2, -56  #1367 pc 17552
	lw	%x1, 52(%x2) #1367 pc 17556
	lw	%x5, 4(%x2)  #1368 pc 17560
	addi	%x24, %x0, 8  #pc 17564
	add	%x24, %x24, %x5  #1368 pc 17568
	flw	%f1, 0(%x24)  #1368 pc 17572
	lw	%x6, 0(%x2)  #1368 pc 17576
	fsw	%f0, 48(%x2)  #1368 pc 17580
	fsw	%f1, 56(%x2)  #1368 pc 17584
	addi	%x5, %x6, 0  #0 pc 17592
	sw	%x1, 68(%x2)  #1368 pc 17596
	addi	%x2, %x2, 72  #1368 pc 17600
	jal	%x1, o_param_c.2696  #1368 pc 17604
	addi	%x2, %x2, -72  #1368 pc 17608
	lw	%x1, 68(%x2) #1368 pc 17612
	flw	%f1, 56(%x2)  #1368 pc 17616
	fmul	%f0, %f1, %f0  #1368 pc 17620
	sw	%x1, 68(%x2)  #1368 pc 17624
	addi	%x2, %x2, 72  #1368 pc 17628
	jal	%x1, fneg.2534  #1368 pc 17632
	addi	%x2, %x2, -72  #1368 pc 17636
	lw	%x1, 68(%x2) #1368 pc 17640
	lw	%x5, 8(%x2)  #1370 pc 17644
	flw	%f1, 16(%x2)  #1370 pc 17648
	add	%x24, %x0, %x5  #1370 pc 17652
	fsw	%f1, 0(%x24) #1370 pc 17656
	lw	%x6, 0(%x2)  #1374 pc 17660
	fsw	%f0, 64(%x2)  #1374 pc 17664
	addi	%x5, %x6, 0  #0 pc 17672
	sw	%x1, 76(%x2)  #1374 pc 17676
	addi	%x2, %x2, 80  #1374 pc 17680
	jal	%x1, o_isrot.2690  #1374 pc 17684
	addi	%x2, %x2, -80  #1374 pc 17688
	lw	%x1, 76(%x2) #1374 pc 17692
	beq	%x5, %x0, 12  #1374 pc 17696
	j	be_else.9347 #pc 17700
	nop #pc 17704
	lw	%x5, 8(%x2)  #1379 pc 17708
	flw	%f0, 32(%x2)  #1379 pc 17712
	addi	%x24, %x0, 4  #pc 17716
	add	%x24, %x24, %x5  #1379 pc 17720
	fsw	%f0, 0(%x24) #1379 pc 17724
	flw	%f0, 48(%x2)  #1380 pc 17728
	addi	%x24, %x0, 8  #pc 17732
	add	%x24, %x24, %x5  #1380 pc 17736
	fsw	%f0, 0(%x24) #1380 pc 17740
	flw	%f0, 64(%x2)  #1381 pc 17744
	addi	%x24, %x0, 12  #pc 17748
	add	%x24, %x24, %x5  #1381 pc 17752
	fsw	%f0, 0(%x24) #1381 pc 17756
	j	be_cont.9348 #pc 17760
	nop #pc 17764
be_else.9347: #pc 17764
	lw	%x5, 4(%x2)  #1375 pc 17768
	addi	%x24, %x0, 8  #pc 17772
	add	%x24, %x24, %x5  #1375 pc 17776
	flw	%f0, 0(%x24)  #1375 pc 17780
	lw	%x6, 0(%x2)  #1375 pc 17784
	fsw	%f0, 72(%x2)  #1375 pc 17788
	addi	%x5, %x6, 0  #0 pc 17796
	sw	%x1, 84(%x2)  #1375 pc 17800
	addi	%x2, %x2, 88  #1375 pc 17804
	jal	%x1, o_param_r2.2718  #1375 pc 17808
	addi	%x2, %x2, -88  #1375 pc 17812
	lw	%x1, 84(%x2) #1375 pc 17816
	flw	%f1, 72(%x2)  #1375 pc 17820
	fmul	%f0, %f1, %f0  #1375 pc 17824
	lw	%x5, 4(%x2)  #1375 pc 17828
	addi	%x24, %x0, 4  #pc 17832
	add	%x24, %x24, %x5  #1375 pc 17836
	flw	%f1, 0(%x24)  #1375 pc 17840
	lw	%x6, 0(%x2)  #1375 pc 17844
	fsw	%f0, 80(%x2)  #1375 pc 17848
	fsw	%f1, 88(%x2)  #1375 pc 17852
	addi	%x5, %x6, 0  #0 pc 17860
	sw	%x1, 100(%x2)  #1375 pc 17864
	addi	%x2, %x2, 104  #1375 pc 17868
	jal	%x1, o_param_r3.2720  #1375 pc 17872
	addi	%x2, %x2, -104  #1375 pc 17876
	lw	%x1, 100(%x2) #1375 pc 17880
	flw	%f1, 88(%x2)  #1375 pc 17884
	fmul	%f0, %f1, %f0  #1375 pc 17888
	flw	%f1, 80(%x2)  #1375 pc 17892
	fadd	%f0, %f1, %f0  #1375 pc 17896
	sw	%x1, 100(%x2)  #1375 pc 17900
	addi	%x2, %x2, 104  #1375 pc 17904
	jal	%x1, fhalf.2538  #1375 pc 17908
	addi	%x2, %x2, -104  #1375 pc 17912
	lw	%x1, 100(%x2) #1375 pc 17916
	flw	%f1, 32(%x2)  #1375 pc 17920
	fsub	%f0, %f1, %f0  #1375 pc 17924
	lw	%x5, 8(%x2)  #1375 pc 17928
	addi	%x24, %x0, 4  #pc 17932
	add	%x24, %x24, %x5  #1375 pc 17936
	fsw	%f0, 0(%x24) #1375 pc 17940
	lw	%x6, 4(%x2)  #1376 pc 17944
	addi	%x24, %x0, 8  #pc 17948
	add	%x24, %x24, %x6  #1376 pc 17952
	flw	%f0, 0(%x24)  #1376 pc 17956
	lw	%x7, 0(%x2)  #1376 pc 17960
	fsw	%f0, 96(%x2)  #1376 pc 17964
	addi	%x5, %x7, 0  #0 pc 17972
	sw	%x1, 108(%x2)  #1376 pc 17976
	addi	%x2, %x2, 112  #1376 pc 17980
	jal	%x1, o_param_r1.2716  #1376 pc 17984
	addi	%x2, %x2, -112  #1376 pc 17988
	lw	%x1, 108(%x2) #1376 pc 17992
	flw	%f1, 96(%x2)  #1376 pc 17996
	fmul	%f0, %f1, %f0  #1376 pc 18000
	lw	%x5, 4(%x2)  #1376 pc 18004
	add	%x24, %x0, %x5  #1376 pc 18008
	flw	%f1, 0(%x24)  #1376 pc 18012
	lw	%x6, 0(%x2)  #1376 pc 18016
	fsw	%f0, 104(%x2)  #1376 pc 18020
	fsw	%f1, 112(%x2)  #1376 pc 18024
	addi	%x5, %x6, 0  #0 pc 18032
	sw	%x1, 124(%x2)  #1376 pc 18036
	addi	%x2, %x2, 128  #1376 pc 18040
	jal	%x1, o_param_r3.2720  #1376 pc 18044
	addi	%x2, %x2, -128  #1376 pc 18048
	lw	%x1, 124(%x2) #1376 pc 18052
	flw	%f1, 112(%x2)  #1376 pc 18056
	fmul	%f0, %f1, %f0  #1376 pc 18060
	flw	%f1, 104(%x2)  #1376 pc 18064
	fadd	%f0, %f1, %f0  #1376 pc 18068
	sw	%x1, 124(%x2)  #1376 pc 18072
	addi	%x2, %x2, 128  #1376 pc 18076
	jal	%x1, fhalf.2538  #1376 pc 18080
	addi	%x2, %x2, -128  #1376 pc 18084
	lw	%x1, 124(%x2) #1376 pc 18088
	flw	%f1, 48(%x2)  #1376 pc 18092
	fsub	%f0, %f1, %f0  #1376 pc 18096
	lw	%x5, 8(%x2)  #1376 pc 18100
	addi	%x24, %x0, 8  #pc 18104
	add	%x24, %x24, %x5  #1376 pc 18108
	fsw	%f0, 0(%x24) #1376 pc 18112
	lw	%x6, 4(%x2)  #1377 pc 18116
	addi	%x24, %x0, 4  #pc 18120
	add	%x24, %x24, %x6  #1377 pc 18124
	flw	%f0, 0(%x24)  #1377 pc 18128
	lw	%x7, 0(%x2)  #1377 pc 18132
	fsw	%f0, 120(%x2)  #1377 pc 18136
	addi	%x5, %x7, 0  #0 pc 18144
	sw	%x1, 132(%x2)  #1377 pc 18148
	addi	%x2, %x2, 136  #1377 pc 18152
	jal	%x1, o_param_r1.2716  #1377 pc 18156
	addi	%x2, %x2, -136  #1377 pc 18160
	lw	%x1, 132(%x2) #1377 pc 18164
	flw	%f1, 120(%x2)  #1377 pc 18168
	fmul	%f0, %f1, %f0  #1377 pc 18172
	lw	%x5, 4(%x2)  #1377 pc 18176
	add	%x24, %x0, %x5  #1377 pc 18180
	flw	%f1, 0(%x24)  #1377 pc 18184
	lw	%x5, 0(%x2)  #1377 pc 18188
	fsw	%f0, 128(%x2)  #1377 pc 18192
	fsw	%f1, 136(%x2)  #1377 pc 18196
	sw	%x1, 148(%x2)  #1377 pc 18200
	addi	%x2, %x2, 152  #1377 pc 18204
	jal	%x1, o_param_r2.2718  #1377 pc 18208
	addi	%x2, %x2, -152  #1377 pc 18212
	lw	%x1, 148(%x2) #1377 pc 18216
	flw	%f1, 136(%x2)  #1377 pc 18220
	fmul	%f0, %f1, %f0  #1377 pc 18224
	flw	%f1, 128(%x2)  #1377 pc 18228
	fadd	%f0, %f1, %f0  #1377 pc 18232
	sw	%x1, 148(%x2)  #1377 pc 18236
	addi	%x2, %x2, 152  #1377 pc 18240
	jal	%x1, fhalf.2538  #1377 pc 18244
	addi	%x2, %x2, -152  #1377 pc 18248
	lw	%x1, 148(%x2) #1377 pc 18252
	flw	%f1, 64(%x2)  #1377 pc 18256
	fsub	%f0, %f1, %f0  #1377 pc 18260
	lw	%x5, 8(%x2)  #1377 pc 18264
	addi	%x24, %x0, 12  #pc 18268
	add	%x24, %x24, %x5  #1377 pc 18272
	fsw	%f0, 0(%x24) #1377 pc 18276
be_cont.9348: #pc 18276
	flw	%f0, 16(%x2)  #1383 pc 18280
	sw	%x1, 148(%x2)  #1383 pc 18284
	addi	%x2, %x2, 152  #1383 pc 18288
	jal	%x1, fiszero.2528  #1383 pc 18292
	addi	%x2, %x2, -152  #1383 pc 18296
	lw	%x1, 148(%x2) #1383 pc 18300
	beq	%x5, %x0, 12  #1383 pc 18304
	j	be_else.9349 #pc 18308
	nop #pc 18312
	fmv	%f0, l.6305  #0 pc 18316
	flw	%f1, 16(%x2)  #1384 pc 18320
	fdiv	%f0, %f0, %f1  #1384 pc 18324
	lw	%x5, 8(%x2)  #1384 pc 18328
	addi	%x24, %x0, 16  #pc 18332
	add	%x24, %x24, %x5  #1384 pc 18336
	fsw	%f0, 0(%x24) #1384 pc 18340
	j	be_cont.9350 #pc 18344
	nop #pc 18348
be_else.9349: #pc 18348
be_cont.9350: #pc 18348
	lw	%x5, 8(%x2)  #1386 pc 18352
	ret #pc 18356
	nop #pc 18360
iter_setup_dirvec_constants.2869:  #pc 18360
	addi	%x24, %x0, 4  #pc 18364
	add	%x24, %x24, %x22  #0 pc 18368
	lw	%x7, 0(%x24)  #0 pc 18372
	bge	%x6, %x0, 12  #1392 pc 18376
	j	bge_else.9351 #pc 18380
	nop #pc 18384
	slli	%x9, %x6, 2  #1393 pc 18388
	add	%x24, %x9, %x7  #1393 pc 18392
	lw	%x7, 0(%x24)  #1393 pc 18396
	sw	%x22, 0(%x2)  #1394 pc 18400
	sw	%x6, 4(%x2)  #1394 pc 18404
	sw	%x7, 8(%x2)  #1394 pc 18408
	sw	%x5, 12(%x2)  #1394 pc 18412
	sw	%x1, 20(%x2)  #1394 pc 18416
	addi	%x2, %x2, 24  #1394 pc 18420
	jal	%x1, d_const.2745  #1394 pc 18424
	addi	%x2, %x2, -24  #1394 pc 18428
	lw	%x1, 20(%x2) #1394 pc 18432
	lw	%x6, 12(%x2)  #1395 pc 18436
	sw	%x5, 16(%x2)  #1395 pc 18440
	addi	%x5, %x6, 0  #0 pc 18448
	sw	%x1, 20(%x2)  #1395 pc 18452
	addi	%x2, %x2, 24  #1395 pc 18456
	jal	%x1, d_vec.2743  #1395 pc 18460
	addi	%x2, %x2, -24  #1395 pc 18464
	lw	%x1, 20(%x2) #1395 pc 18468
	lw	%x6, 8(%x2)  #1396 pc 18472
	sw	%x5, 20(%x2)  #1396 pc 18476
	addi	%x5, %x6, 0  #0 pc 18484
	sw	%x1, 28(%x2)  #1396 pc 18488
	addi	%x2, %x2, 32  #1396 pc 18492
	jal	%x1, o_form.2684  #1396 pc 18496
	addi	%x2, %x2, -32  #1396 pc 18500
	lw	%x1, 28(%x2) #1396 pc 18504
	addi	%x24, %x0, 1  #pc 18508
	beq	%x5, %x24, 12  #1397 pc 18512
	j	be_else.9352 #pc 18516
	nop #pc 18520
	lw	%x5, 20(%x2)  #1398 pc 18524
	lw	%x6, 8(%x2)  #1398 pc 18528
	sw	%x1, 28(%x2)  #1398 pc 18532
	addi	%x2, %x2, 32  #1398 pc 18536
	jal	%x1, setup_rect_table.2860  #1398 pc 18540
	addi	%x2, %x2, -32  #1398 pc 18544
	lw	%x1, 28(%x2) #1398 pc 18548
	lw	%x6, 4(%x2)  #1398 pc 18552
	slli	%x7, %x6, 2  #1398 pc 18556
	lw	%x9, 16(%x2)  #1398 pc 18560
	add	%x24, %x7, %x9  #1398 pc 18564
	sw	%x5, 0(%x24)  #1398 pc 18568
	j	be_cont.9353 #pc 18572
	nop #pc 18576
be_else.9352: #pc 18576
	addi	%x24, %x0, 2  #pc 18580
	beq	%x5, %x24, 12  #1399 pc 18584
	j	be_else.9354 #pc 18588
	nop #pc 18592
	lw	%x5, 20(%x2)  #1400 pc 18596
	lw	%x6, 8(%x2)  #1400 pc 18600
	sw	%x1, 28(%x2)  #1400 pc 18604
	addi	%x2, %x2, 32  #1400 pc 18608
	jal	%x1, setup_surface_table.2863  #1400 pc 18612
	addi	%x2, %x2, -32  #1400 pc 18616
	lw	%x1, 28(%x2) #1400 pc 18620
	lw	%x6, 4(%x2)  #1400 pc 18624
	slli	%x7, %x6, 2  #1400 pc 18628
	lw	%x9, 16(%x2)  #1400 pc 18632
	add	%x24, %x7, %x9  #1400 pc 18636
	sw	%x5, 0(%x24)  #1400 pc 18640
	j	be_cont.9355 #pc 18644
	nop #pc 18648
be_else.9354: #pc 18648
	lw	%x5, 20(%x2)  #1402 pc 18652
	lw	%x6, 8(%x2)  #1402 pc 18656
	sw	%x1, 28(%x2)  #1402 pc 18660
	addi	%x2, %x2, 32  #1402 pc 18664
	jal	%x1, setup_second_table.2866  #1402 pc 18668
	addi	%x2, %x2, -32  #1402 pc 18672
	lw	%x1, 28(%x2) #1402 pc 18676
	lw	%x6, 4(%x2)  #1402 pc 18680
	slli	%x7, %x6, 2  #1402 pc 18684
	lw	%x9, 16(%x2)  #1402 pc 18688
	add	%x24, %x7, %x9  #1402 pc 18692
	sw	%x5, 0(%x24)  #1402 pc 18696
be_cont.9355: #pc 18696
be_cont.9353: #pc 18696
	addi	%x6, %x6, -1  #1404 pc 18700
	lw	%x5, 12(%x2)  #1404 pc 18704
	lw	%x22, 0(%x2)  #1404 pc 18708
	lw	%x23, 0(%x22)  #1404 pc 18712
	jalr	%x0, %x23, 0  #1404 pc 18716
	nop #pc 18720
bge_else.9351: #pc 18720
	ret #pc 18724
	nop #pc 18728
setup_dirvec_constants.2872:  #pc 18728
	addi	%x24, %x0, 8  #pc 18732
	add	%x24, %x24, %x22  #0 pc 18736
	lw	%x6, 0(%x24)  #0 pc 18740
	addi	%x24, %x0, 4  #pc 18744
	add	%x24, %x24, %x22  #0 pc 18748
	lw	%x22, 0(%x24)  #0 pc 18752
	add	%x24, %x0, %x6  #1409 pc 18756
	lw	%x6, 0(%x24)  #1409 pc 18760
	addi	%x6, %x6, -1  #1409 pc 18764
	lw	%x23, 0(%x22)  #1409 pc 18768
	jalr	%x0, %x23, 0  #1409 pc 18772
	nop #pc 18776
setup_startp_constants.2874:  #pc 18776
	addi	%x24, %x0, 4  #pc 18780
	add	%x24, %x24, %x22  #0 pc 18784
	lw	%x7, 0(%x24)  #0 pc 18788
	bge	%x6, %x0, 12  #1417 pc 18792
	j	bge_else.9357 #pc 18796
	nop #pc 18800
	slli	%x9, %x6, 2  #1418 pc 18804
	add	%x24, %x9, %x7  #1418 pc 18808
	lw	%x7, 0(%x24)  #1418 pc 18812
	sw	%x22, 0(%x2)  #1419 pc 18816
	sw	%x6, 4(%x2)  #1419 pc 18820
	sw	%x5, 8(%x2)  #1419 pc 18824
	sw	%x7, 12(%x2)  #1419 pc 18828
	addi	%x5, %x7, 0  #0 pc 18836
	sw	%x1, 20(%x2)  #1419 pc 18840
	addi	%x2, %x2, 24  #1419 pc 18844
	jal	%x1, o_param_ctbl.2722  #1419 pc 18848
	addi	%x2, %x2, -24  #1419 pc 18852
	lw	%x1, 20(%x2) #1419 pc 18856
	lw	%x6, 12(%x2)  #1420 pc 18860
	sw	%x5, 16(%x2)  #1420 pc 18864
	addi	%x5, %x6, 0  #0 pc 18872
	sw	%x1, 20(%x2)  #1420 pc 18876
	addi	%x2, %x2, 24  #1420 pc 18880
	jal	%x1, o_form.2684  #1420 pc 18884
	addi	%x2, %x2, -24  #1420 pc 18888
	lw	%x1, 20(%x2) #1420 pc 18892
	lw	%x6, 8(%x2)  #1421 pc 18896
	add	%x24, %x0, %x6  #1421 pc 18900
	flw	%f0, 0(%x24)  #1421 pc 18904
	lw	%x7, 12(%x2)  #1421 pc 18908
	sw	%x5, 20(%x2)  #1421 pc 18912
	fsw	%f0, 24(%x2)  #1421 pc 18916
	addi	%x5, %x7, 0  #0 pc 18924
	sw	%x1, 36(%x2)  #1421 pc 18928
	addi	%x2, %x2, 40  #1421 pc 18932
	jal	%x1, o_param_x.2700  #1421 pc 18936
	addi	%x2, %x2, -40  #1421 pc 18940
	lw	%x1, 36(%x2) #1421 pc 18944
	flw	%f1, 24(%x2)  #1421 pc 18948
	fsub	%f0, %f1, %f0  #1421 pc 18952
	lw	%x5, 16(%x2)  #1421 pc 18956
	add	%x24, %x0, %x5  #1421 pc 18960
	fsw	%f0, 0(%x24) #1421 pc 18964
	lw	%x6, 8(%x2)  #1422 pc 18968
	addi	%x24, %x0, 4  #pc 18972
	add	%x24, %x24, %x6  #1422 pc 18976
	flw	%f0, 0(%x24)  #1422 pc 18980
	lw	%x7, 12(%x2)  #1422 pc 18984
	fsw	%f0, 32(%x2)  #1422 pc 18988
	addi	%x5, %x7, 0  #0 pc 18996
	sw	%x1, 44(%x2)  #1422 pc 19000
	addi	%x2, %x2, 48  #1422 pc 19004
	jal	%x1, o_param_y.2702  #1422 pc 19008
	addi	%x2, %x2, -48  #1422 pc 19012
	lw	%x1, 44(%x2) #1422 pc 19016
	flw	%f1, 32(%x2)  #1422 pc 19020
	fsub	%f0, %f1, %f0  #1422 pc 19024
	lw	%x5, 16(%x2)  #1422 pc 19028
	addi	%x24, %x0, 4  #pc 19032
	add	%x24, %x24, %x5  #1422 pc 19036
	fsw	%f0, 0(%x24) #1422 pc 19040
	lw	%x6, 8(%x2)  #1423 pc 19044
	addi	%x24, %x0, 8  #pc 19048
	add	%x24, %x24, %x6  #1423 pc 19052
	flw	%f0, 0(%x24)  #1423 pc 19056
	lw	%x7, 12(%x2)  #1423 pc 19060
	fsw	%f0, 40(%x2)  #1423 pc 19064
	addi	%x5, %x7, 0  #0 pc 19072
	sw	%x1, 52(%x2)  #1423 pc 19076
	addi	%x2, %x2, 56  #1423 pc 19080
	jal	%x1, o_param_z.2704  #1423 pc 19084
	addi	%x2, %x2, -56  #1423 pc 19088
	lw	%x1, 52(%x2) #1423 pc 19092
	flw	%f1, 40(%x2)  #1423 pc 19096
	fsub	%f0, %f1, %f0  #1423 pc 19100
	lw	%x5, 16(%x2)  #1423 pc 19104
	addi	%x24, %x0, 8  #pc 19108
	add	%x24, %x24, %x5  #1423 pc 19112
	fsw	%f0, 0(%x24) #1423 pc 19116
	lw	%x6, 20(%x2)  #1424 pc 19120
	addi	%x24, %x0, 2  #pc 19124
	beq	%x6, %x24, 12  #1424 pc 19128
	j	be_else.9358 #pc 19132
	nop #pc 19136
	lw	%x6, 12(%x2)  #1426 pc 19140
	addi	%x5, %x6, 0  #0 pc 19148
	sw	%x1, 52(%x2)  #1426 pc 19152
	addi	%x2, %x2, 56  #1426 pc 19156
	jal	%x1, o_param_abc.2698  #1426 pc 19160
	addi	%x2, %x2, -56  #1426 pc 19164
	lw	%x1, 52(%x2) #1426 pc 19168
	lw	%x6, 16(%x2)  #1426 pc 19172
	add	%x24, %x0, %x6  #1426 pc 19176
	flw	%f0, 0(%x24)  #1426 pc 19180
	addi	%x24, %x0, 4  #pc 19184
	add	%x24, %x24, %x6  #1426 pc 19188
	flw	%f1, 0(%x24)  #1426 pc 19192
	addi	%x24, %x0, 8  #pc 19196
	add	%x24, %x24, %x6  #1426 pc 19200
	flw	%f2, 0(%x24)  #1426 pc 19204
	sw	%x1, 52(%x2)  #1426 pc 19208
	addi	%x2, %x2, 56  #1426 pc 19212
	jal	%x1, veciprod2.2663  #1426 pc 19216
	addi	%x2, %x2, -56  #1426 pc 19220
	lw	%x1, 52(%x2) #1426 pc 19224
	lw	%x5, 16(%x2)  #1425 pc 19228
	addi	%x24, %x0, 12  #pc 19232
	add	%x24, %x24, %x5  #1425 pc 19236
	fsw	%f0, 0(%x24) #1425 pc 19240
	j	be_cont.9359 #pc 19244
	nop #pc 19248
be_else.9358: #pc 19248
	addi	%x24, %x0, 2  #pc 19252
	bge	%x24, %x6, 12  #1427 pc 19256
	j	ble_else.9360 #pc 19260
	nop #pc 19264
	j	ble_cont.9361 #pc 19268
	nop #pc 19272
ble_else.9360: #pc 19272
	add	%x24, %x0, %x5  #1428 pc 19276
	flw	%f0, 0(%x24)  #1428 pc 19280
	addi	%x24, %x0, 4  #pc 19284
	add	%x24, %x24, %x5  #1428 pc 19288
	flw	%f1, 0(%x24)  #1428 pc 19292
	addi	%x24, %x0, 8  #pc 19296
	add	%x24, %x24, %x5  #1428 pc 19300
	flw	%f2, 0(%x24)  #1428 pc 19304
	lw	%x7, 12(%x2)  #1428 pc 19308
	addi	%x5, %x7, 0  #0 pc 19316
	sw	%x1, 52(%x2)  #1428 pc 19320
	addi	%x2, %x2, 56  #1428 pc 19324
	jal	%x1, quadratic.2797  #1428 pc 19328
	addi	%x2, %x2, -56  #1428 pc 19332
	lw	%x1, 52(%x2) #1428 pc 19336
	lw	%x5, 20(%x2)  #1429 pc 19340
	addi	%x24, %x0, 3  #pc 19344
	beq	%x5, %x24, 12  #1429 pc 19348
	j	be_else.9362 #pc 19352
	nop #pc 19356
	fmv	%f1, l.6305  #0 pc 19360
	fsub	%f0, %f0, %f1  #1429 pc 19364
	j	be_cont.9363 #pc 19368
	nop #pc 19372
be_else.9362: #pc 19372
be_cont.9363: #pc 19372
	lw	%x5, 16(%x2)  #1429 pc 19376
	addi	%x24, %x0, 12  #pc 19380
	add	%x24, %x24, %x5  #1429 pc 19384
	fsw	%f0, 0(%x24) #1429 pc 19388
ble_cont.9361: #pc 19388
be_cont.9359: #pc 19388
	lw	%x5, 4(%x2)  #1431 pc 19392
	addi	%x6, %x5, -1  #1431 pc 19396
	lw	%x5, 8(%x2)  #1431 pc 19400
	lw	%x22, 0(%x2)  #1431 pc 19404
	lw	%x23, 0(%x22)  #1431 pc 19408
	jalr	%x0, %x23, 0  #1431 pc 19412
	nop #pc 19416
bge_else.9357: #pc 19416
	ret #pc 19420
	nop #pc 19424
setup_startp.2877:  #pc 19424
	addi	%x24, %x0, 12  #pc 19428
	add	%x24, %x24, %x22  #1436 pc 19432
	lw	%x6, 0(%x24)  #1436 pc 19436
	addi	%x24, %x0, 8  #pc 19440
	add	%x24, %x24, %x22  #1436 pc 19444
	lw	%x7, 0(%x24)  #1436 pc 19448
	addi	%x24, %x0, 4  #pc 19452
	add	%x24, %x24, %x22  #1436 pc 19456
	lw	%x9, 0(%x24)  #1436 pc 19460
	sw	%x5, 0(%x2)  #1436 pc 19464
	sw	%x7, 4(%x2)  #1436 pc 19468
	sw	%x9, 8(%x2)  #1436 pc 19472
	addi	%x23, %x6, 0  #0 pc 19480
	addi	%x6, %x5, 0  #0 pc 19488
	addi	%x5, %x23, 0  #0 pc 19496
	sw	%x1, 12(%x2)  #1436 pc 19500
	addi	%x2, %x2, 16  #1436 pc 19504
	jal	%x1, veccpy.2654  #1436 pc 19508
	addi	%x2, %x2, -16  #1436 pc 19512
	lw	%x1, 12(%x2) #1436 pc 19516
	lw	%x5, 8(%x2)  #1437 pc 19520
	add	%x24, %x0, %x5  #1437 pc 19524
	lw	%x5, 0(%x24)  #1437 pc 19528
	addi	%x6, %x5, -1  #1437 pc 19532
	lw	%x5, 0(%x2)  #1437 pc 19536
	lw	%x22, 4(%x2)  #1437 pc 19540
	lw	%x23, 0(%x22)  #1437 pc 19544
	jalr	%x0, %x23, 0  #1437 pc 19548
	nop #pc 19552
is_rect_outside.2879:  #pc 19552
	fabs	%f0, %f0  #1449 pc 19556
	fsw	%f2, 0(%x2)  #1449 pc 19560
	sw	%x5, 8(%x2)  #1449 pc 19564
	fsw	%f1, 16(%x2)  #1449 pc 19568
	fsw	%f0, 24(%x2)  #1449 pc 19572
	sw	%x1, 36(%x2)  #1449 pc 19576
	addi	%x2, %x2, 40  #1449 pc 19580
	jal	%x1, o_param_a.2692  #1449 pc 19584
	addi	%x2, %x2, -40  #1449 pc 19588
	lw	%x1, 36(%x2) #1449 pc 19592
	fadd	%f1, %f0, %f30  #1449 pc 19596
	flw	%f0, 24(%x2)  #1449 pc 19600
	sw	%x1, 36(%x2)  #1449 pc 19604
	addi	%x2, %x2, 40  #1449 pc 19608
	jal	%x1, fless.2540  #1449 pc 19612
	addi	%x2, %x2, -40  #1449 pc 19616
	lw	%x1, 36(%x2) #1449 pc 19620
	beq	%x5, %x0, 12  #1449 pc 19624
	j	be_else.9366 #pc 19628
	nop #pc 19632
	addi	%x5, %x0, 0  #0 pc 19636
	j	be_cont.9367 #pc 19640
	nop #pc 19644
be_else.9366: #pc 19644
	flw	%f0, 16(%x2)  #1450 pc 19648
	fabs	%f0, %f0  #1450 pc 19652
	lw	%x5, 8(%x2)  #1450 pc 19656
	fsw	%f0, 32(%x2)  #1450 pc 19660
	sw	%x1, 44(%x2)  #1450 pc 19664
	addi	%x2, %x2, 48  #1450 pc 19668
	jal	%x1, o_param_b.2694  #1450 pc 19672
	addi	%x2, %x2, -48  #1450 pc 19676
	lw	%x1, 44(%x2) #1450 pc 19680
	fadd	%f1, %f0, %f30  #1450 pc 19684
	flw	%f0, 32(%x2)  #1450 pc 19688
	sw	%x1, 44(%x2)  #1450 pc 19692
	addi	%x2, %x2, 48  #1450 pc 19696
	jal	%x1, fless.2540  #1450 pc 19700
	addi	%x2, %x2, -48  #1450 pc 19704
	lw	%x1, 44(%x2) #1450 pc 19708
	beq	%x5, %x0, 12  #1450 pc 19712
	j	be_else.9368 #pc 19716
	nop #pc 19720
	addi	%x5, %x0, 0  #0 pc 19724
	j	be_cont.9369 #pc 19728
	nop #pc 19732
be_else.9368: #pc 19732
	flw	%f0, 0(%x2)  #1451 pc 19736
	fabs	%f0, %f0  #1451 pc 19740
	lw	%x5, 8(%x2)  #1451 pc 19744
	fsw	%f0, 40(%x2)  #1451 pc 19748
	sw	%x1, 52(%x2)  #1451 pc 19752
	addi	%x2, %x2, 56  #1451 pc 19756
	jal	%x1, o_param_c.2696  #1451 pc 19760
	addi	%x2, %x2, -56  #1451 pc 19764
	lw	%x1, 52(%x2) #1451 pc 19768
	fadd	%f1, %f0, %f30  #1451 pc 19772
	flw	%f0, 40(%x2)  #1451 pc 19776
	sw	%x1, 52(%x2)  #1451 pc 19780
	addi	%x2, %x2, 56  #1451 pc 19784
	jal	%x1, fless.2540  #1451 pc 19788
	addi	%x2, %x2, -56  #1451 pc 19792
	lw	%x1, 52(%x2) #1451 pc 19796
be_cont.9369: #pc 19796
be_cont.9367: #pc 19796
	beq	%x5, %x0, 12  #1448 pc 19800
	j	be_else.9370 #pc 19804
	nop #pc 19808
	lw	%x5, 8(%x2)  #1454 pc 19812
	sw	%x1, 52(%x2)  #1454 pc 19816
	addi	%x2, %x2, 56  #1454 pc 19820
	jal	%x1, o_isinvert.2688  #1454 pc 19824
	addi	%x2, %x2, -56  #1454 pc 19828
	lw	%x1, 52(%x2) #1454 pc 19832
	beq	%x5, %x0, 12  #1454 pc 19836
	j	be_else.9371 #pc 19840
	nop #pc 19844
	addi	%x5, %x0, 1  #0 pc 19848
	ret #pc 19852
	nop #pc 19856
be_else.9371: #pc 19856
	addi	%x5, %x0, 0  #0 pc 19860
	ret #pc 19864
	nop #pc 19868
be_else.9370: #pc 19868
	lw	%x5, 8(%x2)  #1454 pc 19872
	j	o_isinvert.2688  #1454 pc 19876
	nop #pc 19880
is_plane_outside.2884:  #pc 19880
	sw	%x5, 0(%x2)  #1459 pc 19884
	fsw	%f2, 8(%x2)  #1459 pc 19888
	fsw	%f1, 16(%x2)  #1459 pc 19892
	fsw	%f0, 24(%x2)  #1459 pc 19896
	sw	%x1, 36(%x2)  #1459 pc 19900
	addi	%x2, %x2, 40  #1459 pc 19904
	jal	%x1, o_param_abc.2698  #1459 pc 19908
	addi	%x2, %x2, -40  #1459 pc 19912
	lw	%x1, 36(%x2) #1459 pc 19916
	flw	%f0, 24(%x2)  #1459 pc 19920
	flw	%f1, 16(%x2)  #1459 pc 19924
	flw	%f2, 8(%x2)  #1459 pc 19928
	sw	%x1, 36(%x2)  #1459 pc 19932
	addi	%x2, %x2, 40  #1459 pc 19936
	jal	%x1, veciprod2.2663  #1459 pc 19940
	addi	%x2, %x2, -40  #1459 pc 19944
	lw	%x1, 36(%x2) #1459 pc 19948
	lw	%x5, 0(%x2)  #1460 pc 19952
	fsw	%f0, 32(%x2)  #1460 pc 19956
	sw	%x1, 44(%x2)  #1460 pc 19960
	addi	%x2, %x2, 48  #1460 pc 19964
	jal	%x1, o_isinvert.2688  #1460 pc 19968
	addi	%x2, %x2, -48  #1460 pc 19972
	lw	%x1, 44(%x2) #1460 pc 19976
	flw	%f0, 32(%x2)  #1460 pc 19980
	sw	%x5, 40(%x2)  #1460 pc 19984
	sw	%x1, 44(%x2)  #1460 pc 19988
	addi	%x2, %x2, 48  #1460 pc 19992
	jal	%x1, fisneg.2532  #1460 pc 19996
	addi	%x2, %x2, -48  #1460 pc 20000
	lw	%x1, 44(%x2) #1460 pc 20004
	addi	%x6, %x5, 0  #1460 pc 20008
	lw	%x5, 40(%x2)  #1460 pc 20012
	sw	%x1, 44(%x2)  #1460 pc 20016
	addi	%x2, %x2, 48  #1460 pc 20020
	jal	%x1, xor.2633  #1460 pc 20024
	addi	%x2, %x2, -48  #1460 pc 20028
	lw	%x1, 44(%x2) #1460 pc 20032
	beq	%x5, %x0, 12  #1460 pc 20036
	j	be_else.9373 #pc 20040
	nop #pc 20044
	addi	%x5, %x0, 1  #0 pc 20048
	ret #pc 20052
	nop #pc 20056
be_else.9373: #pc 20056
	addi	%x5, %x0, 0  #0 pc 20060
	ret #pc 20064
	nop #pc 20068
is_second_outside.2889:  #pc 20068
	sw	%x5, 0(%x2)  #1465 pc 20072
	sw	%x1, 4(%x2)  #1465 pc 20076
	addi	%x2, %x2, 8  #1465 pc 20080
	jal	%x1, quadratic.2797  #1465 pc 20084
	addi	%x2, %x2, -8  #1465 pc 20088
	lw	%x1, 4(%x2) #1465 pc 20092
	lw	%x5, 0(%x2)  #1466 pc 20096
	fsw	%f0, 8(%x2)  #1466 pc 20100
	sw	%x1, 20(%x2)  #1466 pc 20104
	addi	%x2, %x2, 24  #1466 pc 20108
	jal	%x1, o_form.2684  #1466 pc 20112
	addi	%x2, %x2, -24  #1466 pc 20116
	lw	%x1, 20(%x2) #1466 pc 20120
	addi	%x24, %x0, 3  #pc 20124
	beq	%x5, %x24, 12  #1466 pc 20128
	j	be_else.9375 #pc 20132
	nop #pc 20136
	fmv	%f0, l.6305  #0 pc 20140
	flw	%f1, 8(%x2)  #1466 pc 20144
	fsub	%f0, %f1, %f0  #1466 pc 20148
	j	be_cont.9376 #pc 20152
	nop #pc 20156
be_else.9375: #pc 20156
	flw	%f0, 8(%x2)  #1466 pc 20160
be_cont.9376: #pc 20160
	lw	%x5, 0(%x2)  #1467 pc 20164
	fsw	%f0, 16(%x2)  #1467 pc 20168
	sw	%x1, 28(%x2)  #1467 pc 20172
	addi	%x2, %x2, 32  #1467 pc 20176
	jal	%x1, o_isinvert.2688  #1467 pc 20180
	addi	%x2, %x2, -32  #1467 pc 20184
	lw	%x1, 28(%x2) #1467 pc 20188
	flw	%f0, 16(%x2)  #1467 pc 20192
	sw	%x5, 24(%x2)  #1467 pc 20196
	sw	%x1, 28(%x2)  #1467 pc 20200
	addi	%x2, %x2, 32  #1467 pc 20204
	jal	%x1, fisneg.2532  #1467 pc 20208
	addi	%x2, %x2, -32  #1467 pc 20212
	lw	%x1, 28(%x2) #1467 pc 20216
	addi	%x6, %x5, 0  #1467 pc 20220
	lw	%x5, 24(%x2)  #1467 pc 20224
	sw	%x1, 28(%x2)  #1467 pc 20228
	addi	%x2, %x2, 32  #1467 pc 20232
	jal	%x1, xor.2633  #1467 pc 20236
	addi	%x2, %x2, -32  #1467 pc 20240
	lw	%x1, 28(%x2) #1467 pc 20244
	beq	%x5, %x0, 12  #1467 pc 20248
	j	be_else.9377 #pc 20252
	nop #pc 20256
	addi	%x5, %x0, 1  #0 pc 20260
	ret #pc 20264
	nop #pc 20268
be_else.9377: #pc 20268
	addi	%x5, %x0, 0  #0 pc 20272
	ret #pc 20276
	nop #pc 20280
is_outside.2894:  #pc 20280
	fsw	%f2, 0(%x2)  #1472 pc 20284
	fsw	%f1, 8(%x2)  #1472 pc 20288
	sw	%x5, 16(%x2)  #1472 pc 20292
	fsw	%f0, 24(%x2)  #1472 pc 20296
	sw	%x1, 36(%x2)  #1472 pc 20300
	addi	%x2, %x2, 40  #1472 pc 20304
	jal	%x1, o_param_x.2700  #1472 pc 20308
	addi	%x2, %x2, -40  #1472 pc 20312
	lw	%x1, 36(%x2) #1472 pc 20316
	flw	%f1, 24(%x2)  #1472 pc 20320
	fsub	%f0, %f1, %f0  #1472 pc 20324
	lw	%x5, 16(%x2)  #1473 pc 20328
	fsw	%f0, 32(%x2)  #1473 pc 20332
	sw	%x1, 44(%x2)  #1473 pc 20336
	addi	%x2, %x2, 48  #1473 pc 20340
	jal	%x1, o_param_y.2702  #1473 pc 20344
	addi	%x2, %x2, -48  #1473 pc 20348
	lw	%x1, 44(%x2) #1473 pc 20352
	flw	%f1, 8(%x2)  #1473 pc 20356
	fsub	%f0, %f1, %f0  #1473 pc 20360
	lw	%x5, 16(%x2)  #1474 pc 20364
	fsw	%f0, 40(%x2)  #1474 pc 20368
	sw	%x1, 52(%x2)  #1474 pc 20372
	addi	%x2, %x2, 56  #1474 pc 20376
	jal	%x1, o_param_z.2704  #1474 pc 20380
	addi	%x2, %x2, -56  #1474 pc 20384
	lw	%x1, 52(%x2) #1474 pc 20388
	flw	%f1, 0(%x2)  #1474 pc 20392
	fsub	%f0, %f1, %f0  #1474 pc 20396
	lw	%x5, 16(%x2)  #1475 pc 20400
	fsw	%f0, 48(%x2)  #1475 pc 20404
	sw	%x1, 60(%x2)  #1475 pc 20408
	addi	%x2, %x2, 64  #1475 pc 20412
	jal	%x1, o_form.2684  #1475 pc 20416
	addi	%x2, %x2, -64  #1475 pc 20420
	lw	%x1, 60(%x2) #1475 pc 20424
	addi	%x24, %x0, 1  #pc 20428
	beq	%x5, %x24, 12  #1476 pc 20432
	j	be_else.9379 #pc 20436
	nop #pc 20440
	flw	%f0, 32(%x2)  #1477 pc 20444
	flw	%f1, 40(%x2)  #1477 pc 20448
	flw	%f2, 48(%x2)  #1477 pc 20452
	lw	%x5, 16(%x2)  #1477 pc 20456
	j	is_rect_outside.2879  #1477 pc 20460
	nop #pc 20464
be_else.9379: #pc 20464
	addi	%x24, %x0, 2  #pc 20468
	beq	%x5, %x24, 12  #1478 pc 20472
	j	be_else.9380 #pc 20476
	nop #pc 20480
	flw	%f0, 32(%x2)  #1479 pc 20484
	flw	%f1, 40(%x2)  #1479 pc 20488
	flw	%f2, 48(%x2)  #1479 pc 20492
	lw	%x5, 16(%x2)  #1479 pc 20496
	j	is_plane_outside.2884  #1479 pc 20500
	nop #pc 20504
be_else.9380: #pc 20504
	flw	%f0, 32(%x2)  #1481 pc 20508
	flw	%f1, 40(%x2)  #1481 pc 20512
	flw	%f2, 48(%x2)  #1481 pc 20516
	lw	%x5, 16(%x2)  #1481 pc 20520
	j	is_second_outside.2889  #1481 pc 20524
	nop #pc 20528
check_all_inside.2899:  #pc 20528
	addi	%x24, %x0, 4  #pc 20532
	add	%x24, %x24, %x22  #1486 pc 20536
	lw	%x7, 0(%x24)  #1486 pc 20540
	slli	%x9, %x5, 2  #1486 pc 20544
	add	%x24, %x9, %x6  #1486 pc 20548
	lw	%x9, 0(%x24)  #1486 pc 20552
	addi	%x24, %x0, -1  #pc 20556
	beq	%x9, %x24, 12  #1487 pc 20560
	j	be_else.9381 #pc 20564
	nop #pc 20568
	addi	%x5, %x0, 1  #0 pc 20572
	ret #pc 20576
	nop #pc 20580
be_else.9381: #pc 20580
	slli	%x9, %x9, 2  #1490 pc 20584
	add	%x24, %x9, %x7  #1490 pc 20588
	lw	%x7, 0(%x24)  #1490 pc 20592
	fsw	%f2, 0(%x2)  #1490 pc 20596
	fsw	%f1, 8(%x2)  #1490 pc 20600
	fsw	%f0, 16(%x2)  #1490 pc 20604
	sw	%x6, 24(%x2)  #1490 pc 20608
	sw	%x22, 28(%x2)  #1490 pc 20612
	sw	%x5, 32(%x2)  #1490 pc 20616
	addi	%x5, %x7, 0  #0 pc 20624
	sw	%x1, 36(%x2)  #1490 pc 20628
	addi	%x2, %x2, 40  #1490 pc 20632
	jal	%x1, is_outside.2894  #1490 pc 20636
	addi	%x2, %x2, -40  #1490 pc 20640
	lw	%x1, 36(%x2) #1490 pc 20644
	beq	%x5, %x0, 12  #1490 pc 20648
	j	be_else.9382 #pc 20652
	nop #pc 20656
	lw	%x5, 32(%x2)  #1493 pc 20660
	addi	%x5, %x5, 1  #1493 pc 20664
	flw	%f0, 16(%x2)  #1493 pc 20668
	flw	%f1, 8(%x2)  #1493 pc 20672
	flw	%f2, 0(%x2)  #1493 pc 20676
	lw	%x6, 24(%x2)  #1493 pc 20680
	lw	%x22, 28(%x2)  #1493 pc 20684
	lw	%x23, 0(%x22)  #1493 pc 20688
	jalr	%x0, %x23, 0  #1493 pc 20692
	nop #pc 20696
be_else.9382: #pc 20696
	addi	%x5, %x0, 0  #0 pc 20700
	ret #pc 20704
	nop #pc 20708
shadow_check_and_group.2905:  #pc 20708
	addi	%x24, %x0, 28  #pc 20712
	add	%x24, %x24, %x22  #0 pc 20716
	lw	%x7, 0(%x24)  #0 pc 20720
	addi	%x24, %x0, 24  #pc 20724
	add	%x24, %x24, %x22  #0 pc 20728
	lw	%x9, 0(%x24)  #0 pc 20732
	addi	%x24, %x0, 20  #pc 20736
	add	%x24, %x24, %x22  #0 pc 20740
	lw	%x10, 0(%x24)  #0 pc 20744
	addi	%x24, %x0, 16  #pc 20748
	add	%x24, %x24, %x22  #0 pc 20752
	lw	%x11, 0(%x24)  #0 pc 20756
	addi	%x24, %x0, 12  #pc 20760
	add	%x24, %x24, %x22  #0 pc 20764
	lw	%x12, 0(%x24)  #0 pc 20768
	addi	%x24, %x0, 8  #pc 20772
	add	%x24, %x24, %x22  #0 pc 20776
	lw	%x13, 0(%x24)  #0 pc 20780
	addi	%x24, %x0, 4  #pc 20784
	add	%x24, %x24, %x22  #0 pc 20788
	lw	%x14, 0(%x24)  #0 pc 20792
	slli	%x15, %x5, 2  #1506 pc 20796
	add	%x24, %x15, %x6  #1506 pc 20800
	lw	%x15, 0(%x24)  #1506 pc 20804
	addi	%x24, %x0, -1  #pc 20808
	beq	%x15, %x24, 12  #1506 pc 20812
	j	be_else.9383 #pc 20816
	nop #pc 20820
	addi	%x5, %x0, 0  #0 pc 20824
	ret #pc 20828
	nop #pc 20832
be_else.9383: #pc 20832
	slli	%x15, %x5, 2  #1509 pc 20836
	add	%x24, %x15, %x6  #1509 pc 20840
	lw	%x15, 0(%x24)  #1509 pc 20844
	sw	%x14, 0(%x2)  #1510 pc 20848
	sw	%x13, 4(%x2)  #1510 pc 20852
	sw	%x12, 8(%x2)  #1510 pc 20856
	sw	%x6, 12(%x2)  #1510 pc 20860
	sw	%x22, 16(%x2)  #1510 pc 20864
	sw	%x5, 20(%x2)  #1510 pc 20868
	sw	%x10, 24(%x2)  #1510 pc 20872
	sw	%x15, 28(%x2)  #1510 pc 20876
	sw	%x9, 32(%x2)  #1510 pc 20880
	addi	%x6, %x11, 0  #0 pc 20888
	addi	%x5, %x15, 0  #0 pc 20896
	addi	%x22, %x7, 0  #0 pc 20904
	addi	%x7, %x13, 0  #0 pc 20912
	sw	%x1, 36(%x2)  #1510 pc 20916
	lw	%x23, 0(%x22)  #1510 pc 20920
	addi	%x2, %x2, 40  #1510 pc 20924
	jalr	%x1, %x23, 0  #1510 pc 20928
	addi	%x2, %x2, -40  #1510 pc 20932
	lw	%x1, 36(%x2)  #1510 pc 20936
	lw	%x6, 32(%x2)  #1511 pc 20940
	add	%x24, %x0, %x6  #1511 pc 20944
	flw	%f0, 0(%x24)  #1511 pc 20948
	fsw	%f0, 40(%x2)  #1512 pc 20952
	beq	%x5, %x0, 12  #1512 pc 20956
	j	be_else.9385 #pc 20960
	nop #pc 20964
	addi	%x5, %x0, 0  #0 pc 20968
	j	be_cont.9386 #pc 20972
	nop #pc 20976
be_else.9385: #pc 20976
	fmv	%f1, l.6695  #0 pc 20980
	sw	%x1, 52(%x2)  #1512 pc 20984
	addi	%x2, %x2, 56  #1512 pc 20988
	jal	%x1, fless.2540  #1512 pc 20992
	addi	%x2, %x2, -56  #1512 pc 20996
	lw	%x1, 52(%x2) #1512 pc 21000
be_cont.9386: #pc 21000
	beq	%x5, %x0, 12  #1512 pc 21004
	j	be_else.9387 #pc 21008
	nop #pc 21012
	lw	%x5, 28(%x2)  #1528 pc 21016
	slli	%x5, %x5, 2  #1528 pc 21020
	lw	%x6, 24(%x2)  #1528 pc 21024
	add	%x24, %x5, %x6  #1528 pc 21028
	lw	%x5, 0(%x24)  #1528 pc 21032
	sw	%x1, 52(%x2)  #1528 pc 21036
	addi	%x2, %x2, 56  #1528 pc 21040
	jal	%x1, o_isinvert.2688  #1528 pc 21044
	addi	%x2, %x2, -56  #1528 pc 21048
	lw	%x1, 52(%x2) #1528 pc 21052
	beq	%x5, %x0, 12  #1528 pc 21056
	j	be_else.9388 #pc 21060
	nop #pc 21064
	addi	%x5, %x0, 0  #0 pc 21068
	ret #pc 21072
	nop #pc 21076
be_else.9388: #pc 21076
	lw	%x5, 20(%x2)  #1529 pc 21080
	addi	%x5, %x5, 1  #1529 pc 21084
	lw	%x6, 12(%x2)  #1529 pc 21088
	lw	%x22, 16(%x2)  #1529 pc 21092
	lw	%x23, 0(%x22)  #1529 pc 21096
	jalr	%x0, %x23, 0  #1529 pc 21100
	nop #pc 21104
be_else.9387: #pc 21104
	fmv	%f0, l.6697  #0 pc 21108
	flw	%f1, 40(%x2)  #1515 pc 21112
	fadd	%f0, %f1, %f0  #1515 pc 21116
	lw	%x5, 8(%x2)  #1516 pc 21120
	add	%x24, %x0, %x5  #1516 pc 21124
	flw	%f1, 0(%x24)  #1516 pc 21128
	fmul	%f1, %f1, %f0  #1516 pc 21132
	lw	%x6, 4(%x2)  #1516 pc 21136
	add	%x24, %x0, %x6  #1516 pc 21140
	flw	%f2, 0(%x24)  #1516 pc 21144
	fadd	%f1, %f1, %f2  #1516 pc 21148
	addi	%x24, %x0, 4  #pc 21152
	add	%x24, %x24, %x5  #1517 pc 21156
	flw	%f2, 0(%x24)  #1517 pc 21160
	fmul	%f2, %f2, %f0  #1517 pc 21164
	addi	%x24, %x0, 4  #pc 21168
	add	%x24, %x24, %x6  #1517 pc 21172
	flw	%f3, 0(%x24)  #1517 pc 21176
	fadd	%f2, %f2, %f3  #1517 pc 21180
	addi	%x24, %x0, 8  #pc 21184
	add	%x24, %x24, %x5  #1518 pc 21188
	flw	%f3, 0(%x24)  #1518 pc 21192
	fmul	%f0, %f3, %f0  #1518 pc 21196
	addi	%x24, %x0, 8  #pc 21200
	add	%x24, %x24, %x6  #1518 pc 21204
	flw	%f3, 0(%x24)  #1518 pc 21208
	fadd	%f0, %f0, %f3  #1518 pc 21212
	addi	%x5, %x0, 0  #0 pc 21216
	lw	%x6, 12(%x2)  #1519 pc 21220
	lw	%x22, 0(%x2)  #1519 pc 21224
	fadd	%f29, %f2, %f30  #0 pc 21228
	fadd	%f2, %f0, %f30  #0 pc 21232
	fadd	%f0, %f1, %f30  #0 pc 21236
	fadd	%f1, %f29, %f30  #0 pc 21240
	sw	%x1, 52(%x2)  #1519 pc 21244
	lw	%x23, 0(%x22)  #1519 pc 21248
	addi	%x2, %x2, 56  #1519 pc 21252
	jalr	%x1, %x23, 0  #1519 pc 21256
	addi	%x2, %x2, -56  #1519 pc 21260
	lw	%x1, 52(%x2)  #1519 pc 21264
	beq	%x5, %x0, 12  #1519 pc 21268
	j	be_else.9389 #pc 21272
	nop #pc 21276
	lw	%x5, 20(%x2)  #1522 pc 21280
	addi	%x5, %x5, 1  #1522 pc 21284
	lw	%x6, 12(%x2)  #1522 pc 21288
	lw	%x22, 16(%x2)  #1522 pc 21292
	lw	%x23, 0(%x22)  #1522 pc 21296
	jalr	%x0, %x23, 0  #1522 pc 21300
	nop #pc 21304
be_else.9389: #pc 21304
	addi	%x5, %x0, 1  #0 pc 21308
	ret #pc 21312
	nop #pc 21316
shadow_check_one_or_group.2908:  #pc 21316
	addi	%x24, %x0, 8  #pc 21320
	add	%x24, %x24, %x22  #1536 pc 21324
	lw	%x7, 0(%x24)  #1536 pc 21328
	addi	%x24, %x0, 4  #pc 21332
	add	%x24, %x24, %x22  #1536 pc 21336
	lw	%x9, 0(%x24)  #1536 pc 21340
	slli	%x10, %x5, 2  #1536 pc 21344
	add	%x24, %x10, %x6  #1536 pc 21348
	lw	%x10, 0(%x24)  #1536 pc 21352
	addi	%x24, %x0, -1  #pc 21356
	beq	%x10, %x24, 12  #1537 pc 21360
	j	be_else.9390 #pc 21364
	nop #pc 21368
	addi	%x5, %x0, 0  #0 pc 21372
	ret #pc 21376
	nop #pc 21380
be_else.9390: #pc 21380
	slli	%x10, %x10, 2  #1540 pc 21384
	add	%x24, %x10, %x9  #1540 pc 21388
	lw	%x9, 0(%x24)  #1540 pc 21392
	addi	%x10, %x0, 0  #0 pc 21396
	sw	%x6, 0(%x2)  #1541 pc 21400
	sw	%x22, 4(%x2)  #1541 pc 21404
	sw	%x5, 8(%x2)  #1541 pc 21408
	addi	%x6, %x9, 0  #0 pc 21416
	addi	%x5, %x10, 0  #0 pc 21424
	addi	%x22, %x7, 0  #0 pc 21432
	sw	%x1, 12(%x2)  #1541 pc 21436
	lw	%x23, 0(%x22)  #1541 pc 21440
	addi	%x2, %x2, 16  #1541 pc 21444
	jalr	%x1, %x23, 0  #1541 pc 21448
	addi	%x2, %x2, -16  #1541 pc 21452
	lw	%x1, 12(%x2)  #1541 pc 21456
	beq	%x5, %x0, 12  #1542 pc 21460
	j	be_else.9391 #pc 21464
	nop #pc 21468
	lw	%x5, 8(%x2)  #1545 pc 21472
	addi	%x5, %x5, 1  #1545 pc 21476
	lw	%x6, 0(%x2)  #1545 pc 21480
	lw	%x22, 4(%x2)  #1545 pc 21484
	lw	%x23, 0(%x22)  #1545 pc 21488
	jalr	%x0, %x23, 0  #1545 pc 21492
	nop #pc 21496
be_else.9391: #pc 21496
	addi	%x5, %x0, 1  #0 pc 21500
	ret #pc 21504
	nop #pc 21508
shadow_check_one_or_matrix.2911:  #pc 21508
	addi	%x24, %x0, 20  #pc 21512
	add	%x24, %x24, %x22  #1551 pc 21516
	lw	%x7, 0(%x24)  #1551 pc 21520
	addi	%x24, %x0, 16  #pc 21524
	add	%x24, %x24, %x22  #1551 pc 21528
	lw	%x9, 0(%x24)  #1551 pc 21532
	addi	%x24, %x0, 12  #pc 21536
	add	%x24, %x24, %x22  #1551 pc 21540
	lw	%x10, 0(%x24)  #1551 pc 21544
	addi	%x24, %x0, 8  #pc 21548
	add	%x24, %x24, %x22  #1551 pc 21552
	lw	%x11, 0(%x24)  #1551 pc 21556
	addi	%x24, %x0, 4  #pc 21560
	add	%x24, %x24, %x22  #1551 pc 21564
	lw	%x12, 0(%x24)  #1551 pc 21568
	slli	%x13, %x5, 2  #1551 pc 21572
	add	%x24, %x13, %x6  #1551 pc 21576
	lw	%x13, 0(%x24)  #1551 pc 21580
	add	%x24, %x0, %x13  #1552 pc 21584
	lw	%x14, 0(%x24)  #1552 pc 21588
	addi	%x24, %x0, -1  #pc 21592
	beq	%x14, %x24, 12  #1553 pc 21596
	j	be_else.9392 #pc 21600
	nop #pc 21604
	addi	%x5, %x0, 0  #0 pc 21608
	ret #pc 21612
	nop #pc 21616
be_else.9392: #pc 21616
	sw	%x13, 0(%x2)  #1557 pc 21620
	sw	%x10, 4(%x2)  #1557 pc 21624
	sw	%x6, 8(%x2)  #1557 pc 21628
	sw	%x22, 12(%x2)  #1557 pc 21632
	sw	%x5, 16(%x2)  #1557 pc 21636
	addi	%x24, %x0, 99  #pc 21640
	beq	%x14, %x24, 12  #1557 pc 21644
	j	be_else.9393 #pc 21648
	nop #pc 21652
	addi	%x5, %x0, 1  #0 pc 21656
	j	be_cont.9394 #pc 21660
	nop #pc 21664
be_else.9393: #pc 21664
	sw	%x9, 20(%x2)  #1560 pc 21668
	addi	%x6, %x11, 0  #0 pc 21676
	addi	%x5, %x14, 0  #0 pc 21684
	addi	%x22, %x7, 0  #0 pc 21692
	addi	%x7, %x12, 0  #0 pc 21700
	sw	%x1, 28(%x2)  #1560 pc 21704
	lw	%x23, 0(%x22)  #1560 pc 21708
	addi	%x2, %x2, 32  #1560 pc 21712
	jalr	%x1, %x23, 0  #1560 pc 21716
	addi	%x2, %x2, -32  #1560 pc 21720
	lw	%x1, 28(%x2)  #1560 pc 21724
	beq	%x5, %x0, 12  #1563 pc 21728
	j	be_else.9395 #pc 21732
	nop #pc 21736
	addi	%x5, %x0, 0  #0 pc 21740
	j	be_cont.9396 #pc 21744
	nop #pc 21748
be_else.9395: #pc 21748
	lw	%x5, 20(%x2)  #1564 pc 21752
	add	%x24, %x0, %x5  #1564 pc 21756
	flw	%f0, 0(%x24)  #1564 pc 21760
	fmv	%f1, l.6711  #0 pc 21764
	sw	%x1, 28(%x2)  #1564 pc 21768
	addi	%x2, %x2, 32  #1564 pc 21772
	jal	%x1, fless.2540  #1564 pc 21776
	addi	%x2, %x2, -32  #1564 pc 21780
	lw	%x1, 28(%x2) #1564 pc 21784
	beq	%x5, %x0, 12  #1564 pc 21788
	j	be_else.9397 #pc 21792
	nop #pc 21796
	addi	%x5, %x0, 0  #0 pc 21800
	j	be_cont.9398 #pc 21804
	nop #pc 21808
be_else.9397: #pc 21808
	addi	%x5, %x0, 1  #0 pc 21812
	lw	%x6, 0(%x2)  #1565 pc 21816
	lw	%x22, 4(%x2)  #1565 pc 21820
	sw	%x1, 28(%x2)  #1565 pc 21824
	lw	%x23, 0(%x22)  #1565 pc 21828
	addi	%x2, %x2, 32  #1565 pc 21832
	jalr	%x1, %x23, 0  #1565 pc 21836
	addi	%x2, %x2, -32  #1565 pc 21840
	lw	%x1, 28(%x2)  #1565 pc 21844
	beq	%x5, %x0, 12  #1565 pc 21848
	j	be_else.9399 #pc 21852
	nop #pc 21856
	addi	%x5, %x0, 0  #0 pc 21860
	j	be_cont.9400 #pc 21864
	nop #pc 21868
be_else.9399: #pc 21868
	addi	%x5, %x0, 1  #0 pc 21872
be_cont.9400: #pc 21872
be_cont.9398: #pc 21872
be_cont.9396: #pc 21872
be_cont.9394: #pc 21872
	beq	%x5, %x0, 12  #1556 pc 21876
	j	be_else.9401 #pc 21880
	nop #pc 21884
	lw	%x5, 16(%x2)  #1576 pc 21888
	addi	%x5, %x5, 1  #1576 pc 21892
	lw	%x6, 8(%x2)  #1576 pc 21896
	lw	%x22, 12(%x2)  #1576 pc 21900
	lw	%x23, 0(%x22)  #1576 pc 21904
	jalr	%x0, %x23, 0  #1576 pc 21908
	nop #pc 21912
be_else.9401: #pc 21912
	addi	%x5, %x0, 1  #0 pc 21916
	lw	%x6, 0(%x2)  #1571 pc 21920
	lw	%x22, 4(%x2)  #1571 pc 21924
	sw	%x1, 28(%x2)  #1571 pc 21928
	lw	%x23, 0(%x22)  #1571 pc 21932
	addi	%x2, %x2, 32  #1571 pc 21936
	jalr	%x1, %x23, 0  #1571 pc 21940
	addi	%x2, %x2, -32  #1571 pc 21944
	lw	%x1, 28(%x2)  #1571 pc 21948
	beq	%x5, %x0, 12  #1571 pc 21952
	j	be_else.9402 #pc 21956
	nop #pc 21960
	lw	%x5, 16(%x2)  #1574 pc 21964
	addi	%x5, %x5, 1  #1574 pc 21968
	lw	%x6, 8(%x2)  #1574 pc 21972
	lw	%x22, 12(%x2)  #1574 pc 21976
	lw	%x23, 0(%x22)  #1574 pc 21980
	jalr	%x0, %x23, 0  #1574 pc 21984
	nop #pc 21988
be_else.9402: #pc 21988
	addi	%x5, %x0, 1  #0 pc 21992
	ret #pc 21996
	nop #pc 22000
solve_each_element.2914:  #pc 22000
	addi	%x24, %x0, 36  #pc 22004
	add	%x24, %x24, %x22  #1587 pc 22008
	lw	%x9, 0(%x24)  #1587 pc 22012
	addi	%x24, %x0, 32  #pc 22016
	add	%x24, %x24, %x22  #1587 pc 22020
	lw	%x10, 0(%x24)  #1587 pc 22024
	addi	%x24, %x0, 28  #pc 22028
	add	%x24, %x24, %x22  #1587 pc 22032
	lw	%x11, 0(%x24)  #1587 pc 22036
	addi	%x24, %x0, 24  #pc 22040
	add	%x24, %x24, %x22  #1587 pc 22044
	lw	%x12, 0(%x24)  #1587 pc 22048
	addi	%x24, %x0, 20  #pc 22052
	add	%x24, %x24, %x22  #1587 pc 22056
	lw	%x13, 0(%x24)  #1587 pc 22060
	addi	%x24, %x0, 16  #pc 22064
	add	%x24, %x24, %x22  #1587 pc 22068
	lw	%x14, 0(%x24)  #1587 pc 22072
	addi	%x24, %x0, 12  #pc 22076
	add	%x24, %x24, %x22  #1587 pc 22080
	lw	%x15, 0(%x24)  #1587 pc 22084
	addi	%x24, %x0, 8  #pc 22088
	add	%x24, %x24, %x22  #1587 pc 22092
	lw	%x16, 0(%x24)  #1587 pc 22096
	addi	%x24, %x0, 4  #pc 22100
	add	%x24, %x24, %x22  #1587 pc 22104
	lw	%x17, 0(%x24)  #1587 pc 22108
	slli	%x18, %x5, 2  #1587 pc 22112
	add	%x24, %x18, %x6  #1587 pc 22116
	lw	%x18, 0(%x24)  #1587 pc 22120
	addi	%x24, %x0, -1  #pc 22124
	beq	%x18, %x24, 12  #1588 pc 22128
	j	be_else.9403 #pc 22132
	nop #pc 22136
	ret #pc 22140
	nop #pc 22144
be_else.9403: #pc 22144
	sw	%x14, 0(%x2)  #1590 pc 22148
	sw	%x16, 4(%x2)  #1590 pc 22152
	sw	%x15, 8(%x2)  #1590 pc 22156
	sw	%x17, 12(%x2)  #1590 pc 22160
	sw	%x10, 16(%x2)  #1590 pc 22164
	sw	%x9, 20(%x2)  #1590 pc 22168
	sw	%x11, 24(%x2)  #1590 pc 22172
	sw	%x7, 28(%x2)  #1590 pc 22176
	sw	%x6, 32(%x2)  #1590 pc 22180
	sw	%x22, 36(%x2)  #1590 pc 22184
	sw	%x5, 40(%x2)  #1590 pc 22188
	sw	%x13, 44(%x2)  #1590 pc 22192
	sw	%x18, 48(%x2)  #1590 pc 22196
	addi	%x6, %x7, 0  #0 pc 22204
	addi	%x5, %x18, 0  #0 pc 22212
	addi	%x22, %x12, 0  #0 pc 22220
	addi	%x7, %x10, 0  #0 pc 22228
	sw	%x1, 52(%x2)  #1590 pc 22232
	lw	%x23, 0(%x22)  #1590 pc 22236
	addi	%x2, %x2, 56  #1590 pc 22240
	jalr	%x1, %x23, 0  #1590 pc 22244
	addi	%x2, %x2, -56  #1590 pc 22248
	lw	%x1, 52(%x2)  #1590 pc 22252
	beq	%x5, %x0, 12  #1591 pc 22256
	j	be_else.9405 #pc 22260
	nop #pc 22264
	lw	%x5, 48(%x2)  #1619 pc 22268
	slli	%x5, %x5, 2  #1619 pc 22272
	lw	%x6, 44(%x2)  #1619 pc 22276
	add	%x24, %x5, %x6  #1619 pc 22280
	lw	%x5, 0(%x24)  #1619 pc 22284
	sw	%x1, 52(%x2)  #1619 pc 22288
	addi	%x2, %x2, 56  #1619 pc 22292
	jal	%x1, o_isinvert.2688  #1619 pc 22296
	addi	%x2, %x2, -56  #1619 pc 22300
	lw	%x1, 52(%x2) #1619 pc 22304
	beq	%x5, %x0, 12  #1619 pc 22308
	j	be_else.9406 #pc 22312
	nop #pc 22316
	ret #pc 22320
	nop #pc 22324
be_else.9406: #pc 22324
	lw	%x5, 40(%x2)  #1620 pc 22328
	addi	%x5, %x5, 1  #1620 pc 22332
	lw	%x6, 32(%x2)  #1620 pc 22336
	lw	%x7, 28(%x2)  #1620 pc 22340
	lw	%x22, 36(%x2)  #1620 pc 22344
	lw	%x23, 0(%x22)  #1620 pc 22348
	jalr	%x0, %x23, 0  #1620 pc 22352
	nop #pc 22356
be_else.9405: #pc 22356
	lw	%x6, 24(%x2)  #1595 pc 22360
	add	%x24, %x0, %x6  #1595 pc 22364
	flw	%f1, 0(%x24)  #1595 pc 22368
	fmv	%f0, l.6293  #0 pc 22372
	sw	%x5, 52(%x2)  #1597 pc 22376
	fsw	%f1, 56(%x2)  #1597 pc 22380
	sw	%x1, 68(%x2)  #1597 pc 22384
	addi	%x2, %x2, 72  #1597 pc 22388
	jal	%x1, fless.2540  #1597 pc 22392
	addi	%x2, %x2, -72  #1597 pc 22396
	lw	%x1, 68(%x2) #1597 pc 22400
	beq	%x5, %x0, 12  #1597 pc 22404
	j	be_else.9408 #pc 22408
	nop #pc 22412
	j	be_cont.9409 #pc 22416
	nop #pc 22420
be_else.9408: #pc 22420
	lw	%x5, 20(%x2)  #1598 pc 22424
	add	%x24, %x0, %x5  #1598 pc 22428
	flw	%f1, 0(%x24)  #1598 pc 22432
	flw	%f0, 56(%x2)  #1598 pc 22436
	sw	%x1, 68(%x2)  #1598 pc 22440
	addi	%x2, %x2, 72  #1598 pc 22444
	jal	%x1, fless.2540  #1598 pc 22448
	addi	%x2, %x2, -72  #1598 pc 22452
	lw	%x1, 68(%x2) #1598 pc 22456
	beq	%x5, %x0, 12  #1598 pc 22460
	j	be_else.9410 #pc 22464
	nop #pc 22468
	j	be_cont.9411 #pc 22472
	nop #pc 22476
be_else.9410: #pc 22476
	fmv	%f0, l.6697  #0 pc 22480
	flw	%f1, 56(%x2)  #1600 pc 22484
	fadd	%f0, %f1, %f0  #1600 pc 22488
	lw	%x5, 28(%x2)  #1601 pc 22492
	add	%x24, %x0, %x5  #1601 pc 22496
	flw	%f1, 0(%x24)  #1601 pc 22500
	fmul	%f1, %f1, %f0  #1601 pc 22504
	lw	%x6, 16(%x2)  #1601 pc 22508
	add	%x24, %x0, %x6  #1601 pc 22512
	flw	%f2, 0(%x24)  #1601 pc 22516
	fadd	%f1, %f1, %f2  #1601 pc 22520
	addi	%x24, %x0, 4  #pc 22524
	add	%x24, %x24, %x5  #1602 pc 22528
	flw	%f2, 0(%x24)  #1602 pc 22532
	fmul	%f2, %f2, %f0  #1602 pc 22536
	addi	%x24, %x0, 4  #pc 22540
	add	%x24, %x24, %x6  #1602 pc 22544
	flw	%f3, 0(%x24)  #1602 pc 22548
	fadd	%f2, %f2, %f3  #1602 pc 22552
	addi	%x24, %x0, 8  #pc 22556
	add	%x24, %x24, %x5  #1603 pc 22560
	flw	%f3, 0(%x24)  #1603 pc 22564
	fmul	%f3, %f3, %f0  #1603 pc 22568
	addi	%x24, %x0, 8  #pc 22572
	add	%x24, %x24, %x6  #1603 pc 22576
	flw	%f4, 0(%x24)  #1603 pc 22580
	fadd	%f3, %f3, %f4  #1603 pc 22584
	addi	%x6, %x0, 0  #0 pc 22588
	lw	%x7, 32(%x2)  #1604 pc 22592
	lw	%x22, 12(%x2)  #1604 pc 22596
	fsw	%f3, 64(%x2)  #1604 pc 22600
	fsw	%f2, 72(%x2)  #1604 pc 22604
	fsw	%f1, 80(%x2)  #1604 pc 22608
	fsw	%f0, 88(%x2)  #1604 pc 22612
	addi	%x5, %x6, 0  #0 pc 22620
	addi	%x6, %x7, 0  #0 pc 22628
	fadd	%f0, %f1, %f30  #0 pc 22632
	fadd	%f1, %f2, %f30  #0 pc 22636
	fadd	%f2, %f3, %f30  #0 pc 22640
	sw	%x1, 100(%x2)  #1604 pc 22644
	lw	%x23, 0(%x22)  #1604 pc 22648
	addi	%x2, %x2, 104  #1604 pc 22652
	jalr	%x1, %x23, 0  #1604 pc 22656
	addi	%x2, %x2, -104  #1604 pc 22660
	lw	%x1, 100(%x2)  #1604 pc 22664
	beq	%x5, %x0, 12  #1604 pc 22668
	j	be_else.9412 #pc 22672
	nop #pc 22676
	j	be_cont.9413 #pc 22680
	nop #pc 22684
be_else.9412: #pc 22684
	lw	%x5, 20(%x2)  #1606 pc 22688
	flw	%f0, 88(%x2)  #1606 pc 22692
	add	%x24, %x0, %x5  #1606 pc 22696
	fsw	%f0, 0(%x24) #1606 pc 22700
	flw	%f0, 80(%x2)  #1607 pc 22704
	flw	%f1, 72(%x2)  #1607 pc 22708
	flw	%f2, 64(%x2)  #1607 pc 22712
	lw	%x5, 8(%x2)  #1607 pc 22716
	sw	%x1, 100(%x2)  #1607 pc 22720
	addi	%x2, %x2, 104  #1607 pc 22724
	jal	%x1, vecset.2644  #1607 pc 22728
	addi	%x2, %x2, -104  #1607 pc 22732
	lw	%x1, 100(%x2) #1607 pc 22736
	lw	%x5, 4(%x2)  #1608 pc 22740
	lw	%x6, 48(%x2)  #1608 pc 22744
	add	%x24, %x0, %x5  #1608 pc 22748
	sw	%x6, 0(%x24)  #1608 pc 22752
	lw	%x5, 0(%x2)  #1609 pc 22756
	lw	%x6, 52(%x2)  #1609 pc 22760
	add	%x24, %x0, %x5  #1609 pc 22764
	sw	%x6, 0(%x24)  #1609 pc 22768
be_cont.9413: #pc 22768
be_cont.9411: #pc 22768
be_cont.9409: #pc 22768
	lw	%x5, 40(%x2)  #1615 pc 22772
	addi	%x5, %x5, 1  #1615 pc 22776
	lw	%x6, 32(%x2)  #1615 pc 22780
	lw	%x7, 28(%x2)  #1615 pc 22784
	lw	%x22, 36(%x2)  #1615 pc 22788
	lw	%x23, 0(%x22)  #1615 pc 22792
	jalr	%x0, %x23, 0  #1615 pc 22796
	nop #pc 22800
solve_one_or_network.2918:  #pc 22800
	addi	%x24, %x0, 8  #pc 22804
	add	%x24, %x24, %x22  #1628 pc 22808
	lw	%x9, 0(%x24)  #1628 pc 22812
	addi	%x24, %x0, 4  #pc 22816
	add	%x24, %x24, %x22  #1628 pc 22820
	lw	%x10, 0(%x24)  #1628 pc 22824
	slli	%x11, %x5, 2  #1628 pc 22828
	add	%x24, %x11, %x6  #1628 pc 22832
	lw	%x11, 0(%x24)  #1628 pc 22836
	addi	%x24, %x0, -1  #pc 22840
	beq	%x11, %x24, 12  #1629 pc 22844
	j	be_else.9414 #pc 22848
	nop #pc 22852
	ret #pc 22856
	nop #pc 22860
be_else.9414: #pc 22860
	slli	%x11, %x11, 2  #1630 pc 22864
	add	%x24, %x11, %x10  #1630 pc 22868
	lw	%x10, 0(%x24)  #1630 pc 22872
	addi	%x11, %x0, 0  #0 pc 22876
	sw	%x7, 0(%x2)  #1631 pc 22880
	sw	%x6, 4(%x2)  #1631 pc 22884
	sw	%x22, 8(%x2)  #1631 pc 22888
	sw	%x5, 12(%x2)  #1631 pc 22892
	addi	%x6, %x10, 0  #0 pc 22900
	addi	%x5, %x11, 0  #0 pc 22908
	addi	%x22, %x9, 0  #0 pc 22916
	sw	%x1, 20(%x2)  #1631 pc 22920
	lw	%x23, 0(%x22)  #1631 pc 22924
	addi	%x2, %x2, 24  #1631 pc 22928
	jalr	%x1, %x23, 0  #1631 pc 22932
	addi	%x2, %x2, -24  #1631 pc 22936
	lw	%x1, 20(%x2)  #1631 pc 22940
	lw	%x5, 12(%x2)  #1632 pc 22944
	addi	%x5, %x5, 1  #1632 pc 22948
	lw	%x6, 4(%x2)  #1632 pc 22952
	lw	%x7, 0(%x2)  #1632 pc 22956
	lw	%x22, 8(%x2)  #1632 pc 22960
	lw	%x23, 0(%x22)  #1632 pc 22964
	jalr	%x0, %x23, 0  #1632 pc 22968
	nop #pc 22972
trace_or_matrix.2922:  #pc 22972
	addi	%x24, %x0, 20  #pc 22976
	add	%x24, %x24, %x22  #1638 pc 22980
	lw	%x9, 0(%x24)  #1638 pc 22984
	addi	%x24, %x0, 16  #pc 22988
	add	%x24, %x24, %x22  #1638 pc 22992
	lw	%x10, 0(%x24)  #1638 pc 22996
	addi	%x24, %x0, 12  #pc 23000
	add	%x24, %x24, %x22  #1638 pc 23004
	lw	%x11, 0(%x24)  #1638 pc 23008
	addi	%x24, %x0, 8  #pc 23012
	add	%x24, %x24, %x22  #1638 pc 23016
	lw	%x12, 0(%x24)  #1638 pc 23020
	addi	%x24, %x0, 4  #pc 23024
	add	%x24, %x24, %x22  #1638 pc 23028
	lw	%x13, 0(%x24)  #1638 pc 23032
	slli	%x14, %x5, 2  #1638 pc 23036
	add	%x24, %x14, %x6  #1638 pc 23040
	lw	%x14, 0(%x24)  #1638 pc 23044
	add	%x24, %x0, %x14  #1639 pc 23048
	lw	%x15, 0(%x24)  #1639 pc 23052
	addi	%x24, %x0, -1  #pc 23056
	beq	%x15, %x24, 12  #1640 pc 23060
	j	be_else.9416 #pc 23064
	nop #pc 23068
	ret #pc 23072
	nop #pc 23076
be_else.9416: #pc 23076
	sw	%x7, 0(%x2)  #1643 pc 23080
	sw	%x6, 4(%x2)  #1643 pc 23084
	sw	%x22, 8(%x2)  #1643 pc 23088
	sw	%x5, 12(%x2)  #1643 pc 23092
	addi	%x24, %x0, 99  #pc 23096
	beq	%x15, %x24, 12  #1643 pc 23100
	j	be_else.9418 #pc 23104
	nop #pc 23108
	addi	%x9, %x0, 1  #0 pc 23112
	addi	%x6, %x14, 0  #0 pc 23120
	addi	%x5, %x9, 0  #0 pc 23128
	addi	%x22, %x13, 0  #0 pc 23136
	sw	%x1, 20(%x2)  #1644 pc 23140
	lw	%x23, 0(%x22)  #1644 pc 23144
	addi	%x2, %x2, 24  #1644 pc 23148
	jalr	%x1, %x23, 0  #1644 pc 23152
	addi	%x2, %x2, -24  #1644 pc 23156
	lw	%x1, 20(%x2)  #1644 pc 23160
	j	be_cont.9419 #pc 23164
	nop #pc 23168
be_else.9418: #pc 23168
	sw	%x14, 16(%x2)  #1648 pc 23172
	sw	%x13, 20(%x2)  #1648 pc 23176
	sw	%x9, 24(%x2)  #1648 pc 23180
	sw	%x11, 28(%x2)  #1648 pc 23184
	addi	%x6, %x7, 0  #0 pc 23192
	addi	%x5, %x15, 0  #0 pc 23200
	addi	%x22, %x12, 0  #0 pc 23208
	addi	%x7, %x10, 0  #0 pc 23216
	sw	%x1, 36(%x2)  #1648 pc 23220
	lw	%x23, 0(%x22)  #1648 pc 23224
	addi	%x2, %x2, 40  #1648 pc 23228
	jalr	%x1, %x23, 0  #1648 pc 23232
	addi	%x2, %x2, -40  #1648 pc 23236
	lw	%x1, 36(%x2)  #1648 pc 23240
	beq	%x5, %x0, 12  #1649 pc 23244
	j	be_else.9420 #pc 23248
	nop #pc 23252
	j	be_cont.9421 #pc 23256
	nop #pc 23260
be_else.9420: #pc 23260
	lw	%x5, 28(%x2)  #1650 pc 23264
	add	%x24, %x0, %x5  #1650 pc 23268
	flw	%f0, 0(%x24)  #1650 pc 23272
	lw	%x5, 24(%x2)  #1651 pc 23276
	add	%x24, %x0, %x5  #1651 pc 23280
	flw	%f1, 0(%x24)  #1651 pc 23284
	sw	%x1, 36(%x2)  #1651 pc 23288
	addi	%x2, %x2, 40  #1651 pc 23292
	jal	%x1, fless.2540  #1651 pc 23296
	addi	%x2, %x2, -40  #1651 pc 23300
	lw	%x1, 36(%x2) #1651 pc 23304
	beq	%x5, %x0, 12  #1651 pc 23308
	j	be_else.9422 #pc 23312
	nop #pc 23316
	j	be_cont.9423 #pc 23320
	nop #pc 23324
be_else.9422: #pc 23324
	addi	%x5, %x0, 1  #0 pc 23328
	lw	%x6, 16(%x2)  #1652 pc 23332
	lw	%x7, 0(%x2)  #1652 pc 23336
	lw	%x22, 20(%x2)  #1652 pc 23340
	sw	%x1, 36(%x2)  #1652 pc 23344
	lw	%x23, 0(%x22)  #1652 pc 23348
	addi	%x2, %x2, 40  #1652 pc 23352
	jalr	%x1, %x23, 0  #1652 pc 23356
	addi	%x2, %x2, -40  #1652 pc 23360
	lw	%x1, 36(%x2)  #1652 pc 23364
be_cont.9423: #pc 23364
be_cont.9421: #pc 23364
be_cont.9419: #pc 23364
	lw	%x5, 12(%x2)  #1656 pc 23368
	addi	%x5, %x5, 1  #1656 pc 23372
	lw	%x6, 4(%x2)  #1656 pc 23376
	lw	%x7, 0(%x2)  #1656 pc 23380
	lw	%x22, 8(%x2)  #1656 pc 23384
	lw	%x23, 0(%x22)  #1656 pc 23388
	jalr	%x0, %x23, 0  #1656 pc 23392
	nop #pc 23396
judge_intersection.2926:  #pc 23396
	addi	%x24, %x0, 12  #pc 23400
	add	%x24, %x24, %x22  #0 pc 23404
	lw	%x6, 0(%x24)  #0 pc 23408
	addi	%x24, %x0, 8  #pc 23412
	add	%x24, %x24, %x22  #0 pc 23416
	lw	%x7, 0(%x24)  #0 pc 23420
	addi	%x24, %x0, 4  #pc 23424
	add	%x24, %x24, %x22  #0 pc 23428
	lw	%x9, 0(%x24)  #0 pc 23432
	fmv	%f0, l.6734  #0 pc 23436
	add	%x24, %x0, %x7  #1665 pc 23440
	fsw	%f0, 0(%x24) #1665 pc 23444
	addi	%x10, %x0, 0  #0 pc 23448
	add	%x24, %x0, %x9  #1666 pc 23452
	lw	%x9, 0(%x24)  #1666 pc 23456
	sw	%x7, 0(%x2)  #1666 pc 23460
	addi	%x7, %x5, 0  #0 pc 23468
	addi	%x22, %x6, 0  #0 pc 23476
	addi	%x6, %x9, 0  #0 pc 23484
	addi	%x5, %x10, 0  #0 pc 23492
	sw	%x1, 4(%x2)  #1666 pc 23496
	lw	%x23, 0(%x22)  #1666 pc 23500
	addi	%x2, %x2, 8  #1666 pc 23504
	jalr	%x1, %x23, 0  #1666 pc 23508
	addi	%x2, %x2, -8  #1666 pc 23512
	lw	%x1, 4(%x2)  #1666 pc 23516
	lw	%x5, 0(%x2)  #1667 pc 23520
	add	%x24, %x0, %x5  #1667 pc 23524
	flw	%f1, 0(%x24)  #1667 pc 23528
	fmv	%f0, l.6711  #0 pc 23532
	fsw	%f1, 8(%x2)  #1669 pc 23536
	sw	%x1, 20(%x2)  #1669 pc 23540
	addi	%x2, %x2, 24  #1669 pc 23544
	jal	%x1, fless.2540  #1669 pc 23548
	addi	%x2, %x2, -24  #1669 pc 23552
	lw	%x1, 20(%x2) #1669 pc 23556
	beq	%x5, %x0, 12  #1669 pc 23560
	j	be_else.9425 #pc 23564
	nop #pc 23568
	addi	%x5, %x0, 0  #0 pc 23572
	ret #pc 23576
	nop #pc 23580
be_else.9425: #pc 23580
	fmv	%f1, l.6740  #0 pc 23584
	flw	%f0, 8(%x2)  #1670 pc 23588
	j	fless.2540  #1670 pc 23592
	nop #pc 23596
solve_each_element_fast.2928:  #pc 23596
	addi	%x24, %x0, 36  #pc 23600
	add	%x24, %x24, %x22  #1680 pc 23604
	lw	%x9, 0(%x24)  #1680 pc 23608
	addi	%x24, %x0, 32  #pc 23612
	add	%x24, %x24, %x22  #1680 pc 23616
	lw	%x10, 0(%x24)  #1680 pc 23620
	addi	%x24, %x0, 28  #pc 23624
	add	%x24, %x24, %x22  #1680 pc 23628
	lw	%x11, 0(%x24)  #1680 pc 23632
	addi	%x24, %x0, 24  #pc 23636
	add	%x24, %x24, %x22  #1680 pc 23640
	lw	%x12, 0(%x24)  #1680 pc 23644
	addi	%x24, %x0, 20  #pc 23648
	add	%x24, %x24, %x22  #1680 pc 23652
	lw	%x13, 0(%x24)  #1680 pc 23656
	addi	%x24, %x0, 16  #pc 23660
	add	%x24, %x24, %x22  #1680 pc 23664
	lw	%x14, 0(%x24)  #1680 pc 23668
	addi	%x24, %x0, 12  #pc 23672
	add	%x24, %x24, %x22  #1680 pc 23676
	lw	%x15, 0(%x24)  #1680 pc 23680
	addi	%x24, %x0, 8  #pc 23684
	add	%x24, %x24, %x22  #1680 pc 23688
	lw	%x16, 0(%x24)  #1680 pc 23692
	addi	%x24, %x0, 4  #pc 23696
	add	%x24, %x24, %x22  #1680 pc 23700
	lw	%x17, 0(%x24)  #1680 pc 23704
	sw	%x14, 0(%x2)  #1680 pc 23708
	sw	%x16, 4(%x2)  #1680 pc 23712
	sw	%x15, 8(%x2)  #1680 pc 23716
	sw	%x17, 12(%x2)  #1680 pc 23720
	sw	%x10, 16(%x2)  #1680 pc 23724
	sw	%x9, 20(%x2)  #1680 pc 23728
	sw	%x12, 24(%x2)  #1680 pc 23732
	sw	%x22, 28(%x2)  #1680 pc 23736
	sw	%x13, 32(%x2)  #1680 pc 23740
	sw	%x7, 36(%x2)  #1680 pc 23744
	sw	%x11, 40(%x2)  #1680 pc 23748
	sw	%x6, 44(%x2)  #1680 pc 23752
	sw	%x5, 48(%x2)  #1680 pc 23756
	addi	%x5, %x7, 0  #0 pc 23764
	sw	%x1, 52(%x2)  #1680 pc 23768
	addi	%x2, %x2, 56  #1680 pc 23772
	jal	%x1, d_vec.2743  #1680 pc 23776
	addi	%x2, %x2, -56  #1680 pc 23780
	lw	%x1, 52(%x2) #1680 pc 23784
	lw	%x6, 48(%x2)  #1681 pc 23788
	slli	%x7, %x6, 2  #1681 pc 23792
	lw	%x9, 44(%x2)  #1681 pc 23796
	add	%x24, %x7, %x9  #1681 pc 23800
	lw	%x7, 0(%x24)  #1681 pc 23804
	addi	%x24, %x0, -1  #pc 23808
	beq	%x7, %x24, 12  #1682 pc 23812
	j	be_else.9426 #pc 23816
	nop #pc 23820
	ret #pc 23824
	nop #pc 23828
be_else.9426: #pc 23828
	lw	%x10, 36(%x2)  #1684 pc 23832
	lw	%x22, 40(%x2)  #1684 pc 23836
	sw	%x5, 52(%x2)  #1684 pc 23840
	sw	%x7, 56(%x2)  #1684 pc 23844
	addi	%x6, %x10, 0  #0 pc 23852
	addi	%x5, %x7, 0  #0 pc 23860
	sw	%x1, 60(%x2)  #1684 pc 23864
	lw	%x23, 0(%x22)  #1684 pc 23868
	addi	%x2, %x2, 64  #1684 pc 23872
	jalr	%x1, %x23, 0  #1684 pc 23876
	addi	%x2, %x2, -64  #1684 pc 23880
	lw	%x1, 60(%x2)  #1684 pc 23884
	beq	%x5, %x0, 12  #1685 pc 23888
	j	be_else.9428 #pc 23892
	nop #pc 23896
	lw	%x5, 56(%x2)  #1713 pc 23900
	slli	%x5, %x5, 2  #1713 pc 23904
	lw	%x6, 32(%x2)  #1713 pc 23908
	add	%x24, %x5, %x6  #1713 pc 23912
	lw	%x5, 0(%x24)  #1713 pc 23916
	sw	%x1, 60(%x2)  #1713 pc 23920
	addi	%x2, %x2, 64  #1713 pc 23924
	jal	%x1, o_isinvert.2688  #1713 pc 23928
	addi	%x2, %x2, -64  #1713 pc 23932
	lw	%x1, 60(%x2) #1713 pc 23936
	beq	%x5, %x0, 12  #1713 pc 23940
	j	be_else.9429 #pc 23944
	nop #pc 23948
	ret #pc 23952
	nop #pc 23956
be_else.9429: #pc 23956
	lw	%x5, 48(%x2)  #1714 pc 23960
	addi	%x5, %x5, 1  #1714 pc 23964
	lw	%x6, 44(%x2)  #1714 pc 23968
	lw	%x7, 36(%x2)  #1714 pc 23972
	lw	%x22, 28(%x2)  #1714 pc 23976
	lw	%x23, 0(%x22)  #1714 pc 23980
	jalr	%x0, %x23, 0  #1714 pc 23984
	nop #pc 23988
be_else.9428: #pc 23988
	lw	%x6, 24(%x2)  #1689 pc 23992
	add	%x24, %x0, %x6  #1689 pc 23996
	flw	%f1, 0(%x24)  #1689 pc 24000
	fmv	%f0, l.6293  #0 pc 24004
	sw	%x5, 60(%x2)  #1691 pc 24008
	fsw	%f1, 64(%x2)  #1691 pc 24012
	sw	%x1, 76(%x2)  #1691 pc 24016
	addi	%x2, %x2, 80  #1691 pc 24020
	jal	%x1, fless.2540  #1691 pc 24024
	addi	%x2, %x2, -80  #1691 pc 24028
	lw	%x1, 76(%x2) #1691 pc 24032
	beq	%x5, %x0, 12  #1691 pc 24036
	j	be_else.9431 #pc 24040
	nop #pc 24044
	j	be_cont.9432 #pc 24048
	nop #pc 24052
be_else.9431: #pc 24052
	lw	%x5, 20(%x2)  #1692 pc 24056
	add	%x24, %x0, %x5  #1692 pc 24060
	flw	%f1, 0(%x24)  #1692 pc 24064
	flw	%f0, 64(%x2)  #1692 pc 24068
	sw	%x1, 76(%x2)  #1692 pc 24072
	addi	%x2, %x2, 80  #1692 pc 24076
	jal	%x1, fless.2540  #1692 pc 24080
	addi	%x2, %x2, -80  #1692 pc 24084
	lw	%x1, 76(%x2) #1692 pc 24088
	beq	%x5, %x0, 12  #1692 pc 24092
	j	be_else.9433 #pc 24096
	nop #pc 24100
	j	be_cont.9434 #pc 24104
	nop #pc 24108
be_else.9433: #pc 24108
	fmv	%f0, l.6697  #0 pc 24112
	flw	%f1, 64(%x2)  #1694 pc 24116
	fadd	%f0, %f1, %f0  #1694 pc 24120
	lw	%x5, 52(%x2)  #1695 pc 24124
	add	%x24, %x0, %x5  #1695 pc 24128
	flw	%f1, 0(%x24)  #1695 pc 24132
	fmul	%f1, %f1, %f0  #1695 pc 24136
	lw	%x6, 16(%x2)  #1695 pc 24140
	add	%x24, %x0, %x6  #1695 pc 24144
	flw	%f2, 0(%x24)  #1695 pc 24148
	fadd	%f1, %f1, %f2  #1695 pc 24152
	addi	%x24, %x0, 4  #pc 24156
	add	%x24, %x24, %x5  #1696 pc 24160
	flw	%f2, 0(%x24)  #1696 pc 24164
	fmul	%f2, %f2, %f0  #1696 pc 24168
	addi	%x24, %x0, 4  #pc 24172
	add	%x24, %x24, %x6  #1696 pc 24176
	flw	%f3, 0(%x24)  #1696 pc 24180
	fadd	%f2, %f2, %f3  #1696 pc 24184
	addi	%x24, %x0, 8  #pc 24188
	add	%x24, %x24, %x5  #1697 pc 24192
	flw	%f3, 0(%x24)  #1697 pc 24196
	fmul	%f3, %f3, %f0  #1697 pc 24200
	addi	%x24, %x0, 8  #pc 24204
	add	%x24, %x24, %x6  #1697 pc 24208
	flw	%f4, 0(%x24)  #1697 pc 24212
	fadd	%f3, %f3, %f4  #1697 pc 24216
	addi	%x5, %x0, 0  #0 pc 24220
	lw	%x6, 44(%x2)  #1698 pc 24224
	lw	%x22, 12(%x2)  #1698 pc 24228
	fsw	%f3, 72(%x2)  #1698 pc 24232
	fsw	%f2, 80(%x2)  #1698 pc 24236
	fsw	%f1, 88(%x2)  #1698 pc 24240
	fsw	%f0, 96(%x2)  #1698 pc 24244
	fadd	%f0, %f1, %f30  #0 pc 24248
	fadd	%f1, %f2, %f30  #0 pc 24252
	fadd	%f2, %f3, %f30  #0 pc 24256
	sw	%x1, 108(%x2)  #1698 pc 24260
	lw	%x23, 0(%x22)  #1698 pc 24264
	addi	%x2, %x2, 112  #1698 pc 24268
	jalr	%x1, %x23, 0  #1698 pc 24272
	addi	%x2, %x2, -112  #1698 pc 24276
	lw	%x1, 108(%x2)  #1698 pc 24280
	beq	%x5, %x0, 12  #1698 pc 24284
	j	be_else.9435 #pc 24288
	nop #pc 24292
	j	be_cont.9436 #pc 24296
	nop #pc 24300
be_else.9435: #pc 24300
	lw	%x5, 20(%x2)  #1700 pc 24304
	flw	%f0, 96(%x2)  #1700 pc 24308
	add	%x24, %x0, %x5  #1700 pc 24312
	fsw	%f0, 0(%x24) #1700 pc 24316
	flw	%f0, 88(%x2)  #1701 pc 24320
	flw	%f1, 80(%x2)  #1701 pc 24324
	flw	%f2, 72(%x2)  #1701 pc 24328
	lw	%x5, 8(%x2)  #1701 pc 24332
	sw	%x1, 108(%x2)  #1701 pc 24336
	addi	%x2, %x2, 112  #1701 pc 24340
	jal	%x1, vecset.2644  #1701 pc 24344
	addi	%x2, %x2, -112  #1701 pc 24348
	lw	%x1, 108(%x2) #1701 pc 24352
	lw	%x5, 4(%x2)  #1702 pc 24356
	lw	%x6, 56(%x2)  #1702 pc 24360
	add	%x24, %x0, %x5  #1702 pc 24364
	sw	%x6, 0(%x24)  #1702 pc 24368
	lw	%x5, 0(%x2)  #1703 pc 24372
	lw	%x6, 60(%x2)  #1703 pc 24376
	add	%x24, %x0, %x5  #1703 pc 24380
	sw	%x6, 0(%x24)  #1703 pc 24384
be_cont.9436: #pc 24384
be_cont.9434: #pc 24384
be_cont.9432: #pc 24384
	lw	%x5, 48(%x2)  #1709 pc 24388
	addi	%x5, %x5, 1  #1709 pc 24392
	lw	%x6, 44(%x2)  #1709 pc 24396
	lw	%x7, 36(%x2)  #1709 pc 24400
	lw	%x22, 28(%x2)  #1709 pc 24404
	lw	%x23, 0(%x22)  #1709 pc 24408
	jalr	%x0, %x23, 0  #1709 pc 24412
	nop #pc 24416
solve_one_or_network_fast.2932:  #pc 24416
	addi	%x24, %x0, 8  #pc 24420
	add	%x24, %x24, %x22  #1721 pc 24424
	lw	%x9, 0(%x24)  #1721 pc 24428
	addi	%x24, %x0, 4  #pc 24432
	add	%x24, %x24, %x22  #1721 pc 24436
	lw	%x10, 0(%x24)  #1721 pc 24440
	slli	%x11, %x5, 2  #1721 pc 24444
	add	%x24, %x11, %x6  #1721 pc 24448
	lw	%x11, 0(%x24)  #1721 pc 24452
	addi	%x24, %x0, -1  #pc 24456
	beq	%x11, %x24, 12  #1722 pc 24460
	j	be_else.9437 #pc 24464
	nop #pc 24468
	ret #pc 24472
	nop #pc 24476
be_else.9437: #pc 24476
	slli	%x11, %x11, 2  #1723 pc 24480
	add	%x24, %x11, %x10  #1723 pc 24484
	lw	%x10, 0(%x24)  #1723 pc 24488
	addi	%x11, %x0, 0  #0 pc 24492
	sw	%x7, 0(%x2)  #1724 pc 24496
	sw	%x6, 4(%x2)  #1724 pc 24500
	sw	%x22, 8(%x2)  #1724 pc 24504
	sw	%x5, 12(%x2)  #1724 pc 24508
	addi	%x6, %x10, 0  #0 pc 24516
	addi	%x5, %x11, 0  #0 pc 24524
	addi	%x22, %x9, 0  #0 pc 24532
	sw	%x1, 20(%x2)  #1724 pc 24536
	lw	%x23, 0(%x22)  #1724 pc 24540
	addi	%x2, %x2, 24  #1724 pc 24544
	jalr	%x1, %x23, 0  #1724 pc 24548
	addi	%x2, %x2, -24  #1724 pc 24552
	lw	%x1, 20(%x2)  #1724 pc 24556
	lw	%x5, 12(%x2)  #1725 pc 24560
	addi	%x5, %x5, 1  #1725 pc 24564
	lw	%x6, 4(%x2)  #1725 pc 24568
	lw	%x7, 0(%x2)  #1725 pc 24572
	lw	%x22, 8(%x2)  #1725 pc 24576
	lw	%x23, 0(%x22)  #1725 pc 24580
	jalr	%x0, %x23, 0  #1725 pc 24584
	nop #pc 24588
trace_or_matrix_fast.2936:  #pc 24588
	addi	%x24, %x0, 16  #pc 24592
	add	%x24, %x24, %x22  #1731 pc 24596
	lw	%x9, 0(%x24)  #1731 pc 24600
	addi	%x24, %x0, 12  #pc 24604
	add	%x24, %x24, %x22  #1731 pc 24608
	lw	%x10, 0(%x24)  #1731 pc 24612
	addi	%x24, %x0, 8  #pc 24616
	add	%x24, %x24, %x22  #1731 pc 24620
	lw	%x11, 0(%x24)  #1731 pc 24624
	addi	%x24, %x0, 4  #pc 24628
	add	%x24, %x24, %x22  #1731 pc 24632
	lw	%x12, 0(%x24)  #1731 pc 24636
	slli	%x13, %x5, 2  #1731 pc 24640
	add	%x24, %x13, %x6  #1731 pc 24644
	lw	%x13, 0(%x24)  #1731 pc 24648
	add	%x24, %x0, %x13  #1732 pc 24652
	lw	%x14, 0(%x24)  #1732 pc 24656
	addi	%x24, %x0, -1  #pc 24660
	beq	%x14, %x24, 12  #1733 pc 24664
	j	be_else.9439 #pc 24668
	nop #pc 24672
	ret #pc 24676
	nop #pc 24680
be_else.9439: #pc 24680
	sw	%x7, 0(%x2)  #1736 pc 24684
	sw	%x6, 4(%x2)  #1736 pc 24688
	sw	%x22, 8(%x2)  #1736 pc 24692
	sw	%x5, 12(%x2)  #1736 pc 24696
	addi	%x24, %x0, 99  #pc 24700
	beq	%x14, %x24, 12  #1736 pc 24704
	j	be_else.9441 #pc 24708
	nop #pc 24712
	addi	%x9, %x0, 1  #0 pc 24716
	addi	%x6, %x13, 0  #0 pc 24724
	addi	%x5, %x9, 0  #0 pc 24732
	addi	%x22, %x12, 0  #0 pc 24740
	sw	%x1, 20(%x2)  #1737 pc 24744
	lw	%x23, 0(%x22)  #1737 pc 24748
	addi	%x2, %x2, 24  #1737 pc 24752
	jalr	%x1, %x23, 0  #1737 pc 24756
	addi	%x2, %x2, -24  #1737 pc 24760
	lw	%x1, 20(%x2)  #1737 pc 24764
	j	be_cont.9442 #pc 24768
	nop #pc 24772
be_else.9441: #pc 24772
	sw	%x13, 16(%x2)  #1741 pc 24776
	sw	%x12, 20(%x2)  #1741 pc 24780
	sw	%x9, 24(%x2)  #1741 pc 24784
	sw	%x11, 28(%x2)  #1741 pc 24788
	addi	%x6, %x7, 0  #0 pc 24796
	addi	%x5, %x14, 0  #0 pc 24804
	addi	%x22, %x10, 0  #0 pc 24812
	sw	%x1, 36(%x2)  #1741 pc 24816
	lw	%x23, 0(%x22)  #1741 pc 24820
	addi	%x2, %x2, 40  #1741 pc 24824
	jalr	%x1, %x23, 0  #1741 pc 24828
	addi	%x2, %x2, -40  #1741 pc 24832
	lw	%x1, 36(%x2)  #1741 pc 24836
	beq	%x5, %x0, 12  #1742 pc 24840
	j	be_else.9443 #pc 24844
	nop #pc 24848
	j	be_cont.9444 #pc 24852
	nop #pc 24856
be_else.9443: #pc 24856
	lw	%x5, 28(%x2)  #1743 pc 24860
	add	%x24, %x0, %x5  #1743 pc 24864
	flw	%f0, 0(%x24)  #1743 pc 24868
	lw	%x5, 24(%x2)  #1744 pc 24872
	add	%x24, %x0, %x5  #1744 pc 24876
	flw	%f1, 0(%x24)  #1744 pc 24880
	sw	%x1, 36(%x2)  #1744 pc 24884
	addi	%x2, %x2, 40  #1744 pc 24888
	jal	%x1, fless.2540  #1744 pc 24892
	addi	%x2, %x2, -40  #1744 pc 24896
	lw	%x1, 36(%x2) #1744 pc 24900
	beq	%x5, %x0, 12  #1744 pc 24904
	j	be_else.9445 #pc 24908
	nop #pc 24912
	j	be_cont.9446 #pc 24916
	nop #pc 24920
be_else.9445: #pc 24920
	addi	%x5, %x0, 1  #0 pc 24924
	lw	%x6, 16(%x2)  #1745 pc 24928
	lw	%x7, 0(%x2)  #1745 pc 24932
	lw	%x22, 20(%x2)  #1745 pc 24936
	sw	%x1, 36(%x2)  #1745 pc 24940
	lw	%x23, 0(%x22)  #1745 pc 24944
	addi	%x2, %x2, 40  #1745 pc 24948
	jalr	%x1, %x23, 0  #1745 pc 24952
	addi	%x2, %x2, -40  #1745 pc 24956
	lw	%x1, 36(%x2)  #1745 pc 24960
be_cont.9446: #pc 24960
be_cont.9444: #pc 24960
be_cont.9442: #pc 24960
	lw	%x5, 12(%x2)  #1749 pc 24964
	addi	%x5, %x5, 1  #1749 pc 24968
	lw	%x6, 4(%x2)  #1749 pc 24972
	lw	%x7, 0(%x2)  #1749 pc 24976
	lw	%x22, 8(%x2)  #1749 pc 24980
	lw	%x23, 0(%x22)  #1749 pc 24984
	jalr	%x0, %x23, 0  #1749 pc 24988
	nop #pc 24992
judge_intersection_fast.2940:  #pc 24992
	addi	%x24, %x0, 12  #pc 24996
	add	%x24, %x24, %x22  #0 pc 25000
	lw	%x6, 0(%x24)  #0 pc 25004
	addi	%x24, %x0, 8  #pc 25008
	add	%x24, %x24, %x22  #0 pc 25012
	lw	%x7, 0(%x24)  #0 pc 25016
	addi	%x24, %x0, 4  #pc 25020
	add	%x24, %x24, %x22  #0 pc 25024
	lw	%x9, 0(%x24)  #0 pc 25028
	fmv	%f0, l.6734  #0 pc 25032
	add	%x24, %x0, %x7  #1756 pc 25036
	fsw	%f0, 0(%x24) #1756 pc 25040
	addi	%x10, %x0, 0  #0 pc 25044
	add	%x24, %x0, %x9  #1757 pc 25048
	lw	%x9, 0(%x24)  #1757 pc 25052
	sw	%x7, 0(%x2)  #1757 pc 25056
	addi	%x7, %x5, 0  #0 pc 25064
	addi	%x22, %x6, 0  #0 pc 25072
	addi	%x6, %x9, 0  #0 pc 25080
	addi	%x5, %x10, 0  #0 pc 25088
	sw	%x1, 4(%x2)  #1757 pc 25092
	lw	%x23, 0(%x22)  #1757 pc 25096
	addi	%x2, %x2, 8  #1757 pc 25100
	jalr	%x1, %x23, 0  #1757 pc 25104
	addi	%x2, %x2, -8  #1757 pc 25108
	lw	%x1, 4(%x2)  #1757 pc 25112
	lw	%x5, 0(%x2)  #1758 pc 25116
	add	%x24, %x0, %x5  #1758 pc 25120
	flw	%f1, 0(%x24)  #1758 pc 25124
	fmv	%f0, l.6711  #0 pc 25128
	fsw	%f1, 8(%x2)  #1760 pc 25132
	sw	%x1, 20(%x2)  #1760 pc 25136
	addi	%x2, %x2, 24  #1760 pc 25140
	jal	%x1, fless.2540  #1760 pc 25144
	addi	%x2, %x2, -24  #1760 pc 25148
	lw	%x1, 20(%x2) #1760 pc 25152
	beq	%x5, %x0, 12  #1760 pc 25156
	j	be_else.9448 #pc 25160
	nop #pc 25164
	addi	%x5, %x0, 0  #0 pc 25168
	ret #pc 25172
	nop #pc 25176
be_else.9448: #pc 25176
	fmv	%f1, l.6740  #0 pc 25180
	flw	%f0, 8(%x2)  #1761 pc 25184
	j	fless.2540  #1761 pc 25188
	nop #pc 25192
get_nvector_rect.2942:  #pc 25192
	addi	%x24, %x0, 8  #pc 25196
	add	%x24, %x24, %x22  #0 pc 25200
	lw	%x6, 0(%x24)  #0 pc 25204
	addi	%x24, %x0, 4  #pc 25208
	add	%x24, %x24, %x22  #0 pc 25212
	lw	%x7, 0(%x24)  #0 pc 25216
	add	%x24, %x0, %x7  #1776 pc 25220
	lw	%x7, 0(%x24)  #1776 pc 25224
	sw	%x6, 0(%x2)  #1778 pc 25228
	sw	%x5, 4(%x2)  #1778 pc 25232
	sw	%x7, 8(%x2)  #1778 pc 25236
	addi	%x5, %x6, 0  #0 pc 25244
	sw	%x1, 12(%x2)  #1778 pc 25248
	addi	%x2, %x2, 16  #1778 pc 25252
	jal	%x1, vecbzero.2652  #1778 pc 25256
	addi	%x2, %x2, -16  #1778 pc 25260
	lw	%x1, 12(%x2) #1778 pc 25264
	lw	%x5, 8(%x2)  #1779 pc 25268
	addi	%x6, %x5, -1  #1779 pc 25272
	addi	%x5, %x5, -1  #1779 pc 25276
	slli	%x5, %x5, 2  #1779 pc 25280
	lw	%x7, 4(%x2)  #1779 pc 25284
	add	%x24, %x5, %x7  #1779 pc 25288
	flw	%f0, 0(%x24)  #1779 pc 25292
	sw	%x6, 12(%x2)  #1779 pc 25296
	sw	%x1, 20(%x2)  #1779 pc 25300
	addi	%x2, %x2, 24  #1779 pc 25304
	jal	%x1, sgn.2636  #1779 pc 25308
	addi	%x2, %x2, -24  #1779 pc 25312
	lw	%x1, 20(%x2) #1779 pc 25316
	sw	%x1, 20(%x2)  #1779 pc 25320
	addi	%x2, %x2, 24  #1779 pc 25324
	jal	%x1, fneg.2534  #1779 pc 25328
	addi	%x2, %x2, -24  #1779 pc 25332
	lw	%x1, 20(%x2) #1779 pc 25336
	lw	%x5, 12(%x2)  #1779 pc 25340
	slli	%x5, %x5, 2  #1779 pc 25344
	lw	%x6, 0(%x2)  #1779 pc 25348
	add	%x24, %x5, %x6  #1779 pc 25352
	fsw	%f0, 0(%x24) #1779 pc 25356
	ret #pc 25360
	nop #pc 25364
get_nvector_plane.2944:  #pc 25364
	addi	%x24, %x0, 4  #pc 25368
	add	%x24, %x24, %x22  #0 pc 25372
	lw	%x6, 0(%x24)  #0 pc 25376
	sw	%x5, 0(%x2)  #1785 pc 25380
	sw	%x6, 4(%x2)  #1785 pc 25384
	sw	%x1, 12(%x2)  #1785 pc 25388
	addi	%x2, %x2, 16  #1785 pc 25392
	jal	%x1, o_param_a.2692  #1785 pc 25396
	addi	%x2, %x2, -16  #1785 pc 25400
	lw	%x1, 12(%x2) #1785 pc 25404
	sw	%x1, 12(%x2)  #1785 pc 25408
	addi	%x2, %x2, 16  #1785 pc 25412
	jal	%x1, fneg.2534  #1785 pc 25416
	addi	%x2, %x2, -16  #1785 pc 25420
	lw	%x1, 12(%x2) #1785 pc 25424
	lw	%x5, 4(%x2)  #1785 pc 25428
	add	%x24, %x0, %x5  #1785 pc 25432
	fsw	%f0, 0(%x24) #1785 pc 25436
	lw	%x6, 0(%x2)  #1786 pc 25440
	addi	%x5, %x6, 0  #0 pc 25448
	sw	%x1, 12(%x2)  #1786 pc 25452
	addi	%x2, %x2, 16  #1786 pc 25456
	jal	%x1, o_param_b.2694  #1786 pc 25460
	addi	%x2, %x2, -16  #1786 pc 25464
	lw	%x1, 12(%x2) #1786 pc 25468
	sw	%x1, 12(%x2)  #1786 pc 25472
	addi	%x2, %x2, 16  #1786 pc 25476
	jal	%x1, fneg.2534  #1786 pc 25480
	addi	%x2, %x2, -16  #1786 pc 25484
	lw	%x1, 12(%x2) #1786 pc 25488
	lw	%x5, 4(%x2)  #1786 pc 25492
	addi	%x24, %x0, 4  #pc 25496
	add	%x24, %x24, %x5  #1786 pc 25500
	fsw	%f0, 0(%x24) #1786 pc 25504
	lw	%x6, 0(%x2)  #1787 pc 25508
	addi	%x5, %x6, 0  #0 pc 25516
	sw	%x1, 12(%x2)  #1787 pc 25520
	addi	%x2, %x2, 16  #1787 pc 25524
	jal	%x1, o_param_c.2696  #1787 pc 25528
	addi	%x2, %x2, -16  #1787 pc 25532
	lw	%x1, 12(%x2) #1787 pc 25536
	sw	%x1, 12(%x2)  #1787 pc 25540
	addi	%x2, %x2, 16  #1787 pc 25544
	jal	%x1, fneg.2534  #1787 pc 25548
	addi	%x2, %x2, -16  #1787 pc 25552
	lw	%x1, 12(%x2) #1787 pc 25556
	lw	%x5, 4(%x2)  #1787 pc 25560
	addi	%x24, %x0, 8  #pc 25564
	add	%x24, %x24, %x5  #1787 pc 25568
	fsw	%f0, 0(%x24) #1787 pc 25572
	ret #pc 25576
	nop #pc 25580
get_nvector_second.2946:  #pc 25580
	addi	%x24, %x0, 8  #pc 25584
	add	%x24, %x24, %x22  #0 pc 25588
	lw	%x6, 0(%x24)  #0 pc 25592
	addi	%x24, %x0, 4  #pc 25596
	add	%x24, %x24, %x22  #0 pc 25600
	lw	%x7, 0(%x24)  #0 pc 25604
	add	%x24, %x0, %x7  #1792 pc 25608
	flw	%f0, 0(%x24)  #1792 pc 25612
	sw	%x6, 0(%x2)  #1792 pc 25616
	sw	%x5, 4(%x2)  #1792 pc 25620
	sw	%x7, 8(%x2)  #1792 pc 25624
	fsw	%f0, 16(%x2)  #1792 pc 25628
	sw	%x1, 28(%x2)  #1792 pc 25632
	addi	%x2, %x2, 32  #1792 pc 25636
	jal	%x1, o_param_x.2700  #1792 pc 25640
	addi	%x2, %x2, -32  #1792 pc 25644
	lw	%x1, 28(%x2) #1792 pc 25648
	flw	%f1, 16(%x2)  #1792 pc 25652
	fsub	%f0, %f1, %f0  #1792 pc 25656
	lw	%x5, 8(%x2)  #1793 pc 25660
	addi	%x24, %x0, 4  #pc 25664
	add	%x24, %x24, %x5  #1793 pc 25668
	flw	%f1, 0(%x24)  #1793 pc 25672
	lw	%x6, 4(%x2)  #1793 pc 25676
	fsw	%f0, 24(%x2)  #1793 pc 25680
	fsw	%f1, 32(%x2)  #1793 pc 25684
	addi	%x5, %x6, 0  #0 pc 25692
	sw	%x1, 44(%x2)  #1793 pc 25696
	addi	%x2, %x2, 48  #1793 pc 25700
	jal	%x1, o_param_y.2702  #1793 pc 25704
	addi	%x2, %x2, -48  #1793 pc 25708
	lw	%x1, 44(%x2) #1793 pc 25712
	flw	%f1, 32(%x2)  #1793 pc 25716
	fsub	%f0, %f1, %f0  #1793 pc 25720
	lw	%x5, 8(%x2)  #1794 pc 25724
	addi	%x24, %x0, 8  #pc 25728
	add	%x24, %x24, %x5  #1794 pc 25732
	flw	%f1, 0(%x24)  #1794 pc 25736
	lw	%x5, 4(%x2)  #1794 pc 25740
	fsw	%f0, 40(%x2)  #1794 pc 25744
	fsw	%f1, 48(%x2)  #1794 pc 25748
	sw	%x1, 60(%x2)  #1794 pc 25752
	addi	%x2, %x2, 64  #1794 pc 25756
	jal	%x1, o_param_z.2704  #1794 pc 25760
	addi	%x2, %x2, -64  #1794 pc 25764
	lw	%x1, 60(%x2) #1794 pc 25768
	flw	%f1, 48(%x2)  #1794 pc 25772
	fsub	%f0, %f1, %f0  #1794 pc 25776
	lw	%x5, 4(%x2)  #1796 pc 25780
	fsw	%f0, 56(%x2)  #1796 pc 25784
	sw	%x1, 68(%x2)  #1796 pc 25788
	addi	%x2, %x2, 72  #1796 pc 25792
	jal	%x1, o_param_a.2692  #1796 pc 25796
	addi	%x2, %x2, -72  #1796 pc 25800
	lw	%x1, 68(%x2) #1796 pc 25804
	flw	%f1, 24(%x2)  #1796 pc 25808
	fmul	%f0, %f1, %f0  #1796 pc 25812
	lw	%x5, 4(%x2)  #1797 pc 25816
	fsw	%f0, 64(%x2)  #1797 pc 25820
	sw	%x1, 76(%x2)  #1797 pc 25824
	addi	%x2, %x2, 80  #1797 pc 25828
	jal	%x1, o_param_b.2694  #1797 pc 25832
	addi	%x2, %x2, -80  #1797 pc 25836
	lw	%x1, 76(%x2) #1797 pc 25840
	flw	%f1, 40(%x2)  #1797 pc 25844
	fmul	%f0, %f1, %f0  #1797 pc 25848
	lw	%x5, 4(%x2)  #1798 pc 25852
	fsw	%f0, 72(%x2)  #1798 pc 25856
	sw	%x1, 84(%x2)  #1798 pc 25860
	addi	%x2, %x2, 88  #1798 pc 25864
	jal	%x1, o_param_c.2696  #1798 pc 25868
	addi	%x2, %x2, -88  #1798 pc 25872
	lw	%x1, 84(%x2) #1798 pc 25876
	flw	%f1, 56(%x2)  #1798 pc 25880
	fmul	%f0, %f1, %f0  #1798 pc 25884
	lw	%x5, 4(%x2)  #1800 pc 25888
	fsw	%f0, 80(%x2)  #1800 pc 25892
	sw	%x1, 92(%x2)  #1800 pc 25896
	addi	%x2, %x2, 96  #1800 pc 25900
	jal	%x1, o_isrot.2690  #1800 pc 25904
	addi	%x2, %x2, -96  #1800 pc 25908
	lw	%x1, 92(%x2) #1800 pc 25912
	beq	%x5, %x0, 12  #1800 pc 25916
	j	be_else.9452 #pc 25920
	nop #pc 25924
	lw	%x5, 0(%x2)  #1801 pc 25928
	flw	%f0, 64(%x2)  #1801 pc 25932
	add	%x24, %x0, %x5  #1801 pc 25936
	fsw	%f0, 0(%x24) #1801 pc 25940
	flw	%f0, 72(%x2)  #1802 pc 25944
	addi	%x24, %x0, 4  #pc 25948
	add	%x24, %x24, %x5  #1802 pc 25952
	fsw	%f0, 0(%x24) #1802 pc 25956
	flw	%f0, 80(%x2)  #1803 pc 25960
	addi	%x24, %x0, 8  #pc 25964
	add	%x24, %x24, %x5  #1803 pc 25968
	fsw	%f0, 0(%x24) #1803 pc 25972
	j	be_cont.9453 #pc 25976
	nop #pc 25980
be_else.9452: #pc 25980
	lw	%x5, 4(%x2)  #1805 pc 25984
	sw	%x1, 92(%x2)  #1805 pc 25988
	addi	%x2, %x2, 96  #1805 pc 25992
	jal	%x1, o_param_r3.2720  #1805 pc 25996
	addi	%x2, %x2, -96  #1805 pc 26000
	lw	%x1, 92(%x2) #1805 pc 26004
	flw	%f1, 40(%x2)  #1805 pc 26008
	fmul	%f0, %f1, %f0  #1805 pc 26012
	lw	%x5, 4(%x2)  #1805 pc 26016
	fsw	%f0, 88(%x2)  #1805 pc 26020
	sw	%x1, 100(%x2)  #1805 pc 26024
	addi	%x2, %x2, 104  #1805 pc 26028
	jal	%x1, o_param_r2.2718  #1805 pc 26032
	addi	%x2, %x2, -104  #1805 pc 26036
	lw	%x1, 100(%x2) #1805 pc 26040
	flw	%f1, 56(%x2)  #1805 pc 26044
	fmul	%f0, %f1, %f0  #1805 pc 26048
	flw	%f2, 88(%x2)  #1805 pc 26052
	fadd	%f0, %f2, %f0  #1805 pc 26056
	sw	%x1, 100(%x2)  #1805 pc 26060
	addi	%x2, %x2, 104  #1805 pc 26064
	jal	%x1, fhalf.2538  #1805 pc 26068
	addi	%x2, %x2, -104  #1805 pc 26072
	lw	%x1, 100(%x2) #1805 pc 26076
	flw	%f1, 64(%x2)  #1805 pc 26080
	fadd	%f0, %f1, %f0  #1805 pc 26084
	lw	%x5, 0(%x2)  #1805 pc 26088
	add	%x24, %x0, %x5  #1805 pc 26092
	fsw	%f0, 0(%x24) #1805 pc 26096
	lw	%x6, 4(%x2)  #1806 pc 26100
	addi	%x5, %x6, 0  #0 pc 26108
	sw	%x1, 100(%x2)  #1806 pc 26112
	addi	%x2, %x2, 104  #1806 pc 26116
	jal	%x1, o_param_r3.2720  #1806 pc 26120
	addi	%x2, %x2, -104  #1806 pc 26124
	lw	%x1, 100(%x2) #1806 pc 26128
	flw	%f1, 24(%x2)  #1806 pc 26132
	fmul	%f0, %f1, %f0  #1806 pc 26136
	lw	%x5, 4(%x2)  #1806 pc 26140
	fsw	%f0, 96(%x2)  #1806 pc 26144
	sw	%x1, 108(%x2)  #1806 pc 26148
	addi	%x2, %x2, 112  #1806 pc 26152
	jal	%x1, o_param_r1.2716  #1806 pc 26156
	addi	%x2, %x2, -112  #1806 pc 26160
	lw	%x1, 108(%x2) #1806 pc 26164
	flw	%f1, 56(%x2)  #1806 pc 26168
	fmul	%f0, %f1, %f0  #1806 pc 26172
	flw	%f1, 96(%x2)  #1806 pc 26176
	fadd	%f0, %f1, %f0  #1806 pc 26180
	sw	%x1, 108(%x2)  #1806 pc 26184
	addi	%x2, %x2, 112  #1806 pc 26188
	jal	%x1, fhalf.2538  #1806 pc 26192
	addi	%x2, %x2, -112  #1806 pc 26196
	lw	%x1, 108(%x2) #1806 pc 26200
	flw	%f1, 72(%x2)  #1806 pc 26204
	fadd	%f0, %f1, %f0  #1806 pc 26208
	lw	%x5, 0(%x2)  #1806 pc 26212
	addi	%x24, %x0, 4  #pc 26216
	add	%x24, %x24, %x5  #1806 pc 26220
	fsw	%f0, 0(%x24) #1806 pc 26224
	lw	%x6, 4(%x2)  #1807 pc 26228
	addi	%x5, %x6, 0  #0 pc 26236
	sw	%x1, 108(%x2)  #1807 pc 26240
	addi	%x2, %x2, 112  #1807 pc 26244
	jal	%x1, o_param_r2.2718  #1807 pc 26248
	addi	%x2, %x2, -112  #1807 pc 26252
	lw	%x1, 108(%x2) #1807 pc 26256
	flw	%f1, 24(%x2)  #1807 pc 26260
	fmul	%f0, %f1, %f0  #1807 pc 26264
	lw	%x5, 4(%x2)  #1807 pc 26268
	fsw	%f0, 104(%x2)  #1807 pc 26272
	sw	%x1, 116(%x2)  #1807 pc 26276
	addi	%x2, %x2, 120  #1807 pc 26280
	jal	%x1, o_param_r1.2716  #1807 pc 26284
	addi	%x2, %x2, -120  #1807 pc 26288
	lw	%x1, 116(%x2) #1807 pc 26292
	flw	%f1, 40(%x2)  #1807 pc 26296
	fmul	%f0, %f1, %f0  #1807 pc 26300
	flw	%f1, 104(%x2)  #1807 pc 26304
	fadd	%f0, %f1, %f0  #1807 pc 26308
	sw	%x1, 116(%x2)  #1807 pc 26312
	addi	%x2, %x2, 120  #1807 pc 26316
	jal	%x1, fhalf.2538  #1807 pc 26320
	addi	%x2, %x2, -120  #1807 pc 26324
	lw	%x1, 116(%x2) #1807 pc 26328
	flw	%f1, 80(%x2)  #1807 pc 26332
	fadd	%f0, %f1, %f0  #1807 pc 26336
	lw	%x5, 0(%x2)  #1807 pc 26340
	addi	%x24, %x0, 8  #pc 26344
	add	%x24, %x24, %x5  #1807 pc 26348
	fsw	%f0, 0(%x24) #1807 pc 26352
be_cont.9453: #pc 26352
	lw	%x6, 4(%x2)  #1809 pc 26356
	addi	%x5, %x6, 0  #0 pc 26364
	sw	%x1, 116(%x2)  #1809 pc 26368
	addi	%x2, %x2, 120  #1809 pc 26372
	jal	%x1, o_isinvert.2688  #1809 pc 26376
	addi	%x2, %x2, -120  #1809 pc 26380
	lw	%x1, 116(%x2) #1809 pc 26384
	addi	%x6, %x5, 0  #1809 pc 26388
	lw	%x5, 0(%x2)  #1809 pc 26392
	j	vecunit_sgn.2657  #1809 pc 26396
	nop #pc 26400
get_nvector.2948:  #pc 26400
	addi	%x24, %x0, 12  #pc 26404
	add	%x24, %x24, %x22  #1814 pc 26408
	lw	%x7, 0(%x24)  #1814 pc 26412
	addi	%x24, %x0, 8  #pc 26416
	add	%x24, %x24, %x22  #1814 pc 26420
	lw	%x9, 0(%x24)  #1814 pc 26424
	addi	%x24, %x0, 4  #pc 26428
	add	%x24, %x24, %x22  #1814 pc 26432
	lw	%x10, 0(%x24)  #1814 pc 26436
	sw	%x7, 0(%x2)  #1814 pc 26440
	sw	%x5, 4(%x2)  #1814 pc 26444
	sw	%x10, 8(%x2)  #1814 pc 26448
	sw	%x6, 12(%x2)  #1814 pc 26452
	sw	%x9, 16(%x2)  #1814 pc 26456
	sw	%x1, 20(%x2)  #1814 pc 26460
	addi	%x2, %x2, 24  #1814 pc 26464
	jal	%x1, o_form.2684  #1814 pc 26468
	addi	%x2, %x2, -24  #1814 pc 26472
	lw	%x1, 20(%x2) #1814 pc 26476
	addi	%x24, %x0, 1  #pc 26480
	beq	%x5, %x24, 12  #1815 pc 26484
	j	be_else.9454 #pc 26488
	nop #pc 26492
	lw	%x5, 12(%x2)  #1816 pc 26496
	lw	%x22, 16(%x2)  #1816 pc 26500
	lw	%x23, 0(%x22)  #1816 pc 26504
	jalr	%x0, %x23, 0  #1816 pc 26508
	nop #pc 26512
be_else.9454: #pc 26512
	addi	%x24, %x0, 2  #pc 26516
	beq	%x5, %x24, 12  #1817 pc 26520
	j	be_else.9455 #pc 26524
	nop #pc 26528
	lw	%x5, 4(%x2)  #1818 pc 26532
	lw	%x22, 8(%x2)  #1818 pc 26536
	lw	%x23, 0(%x22)  #1818 pc 26540
	jalr	%x0, %x23, 0  #1818 pc 26544
	nop #pc 26548
be_else.9455: #pc 26548
	lw	%x5, 4(%x2)  #1820 pc 26552
	lw	%x22, 0(%x2)  #1820 pc 26556
	lw	%x23, 0(%x22)  #1820 pc 26560
	jalr	%x0, %x23, 0  #1820 pc 26564
	nop #pc 26568
utexture.2951:  #pc 26568
	addi	%x24, %x0, 4  #pc 26572
	add	%x24, %x24, %x22  #1830 pc 26576
	lw	%x7, 0(%x24)  #1830 pc 26580
	sw	%x6, 0(%x2)  #1830 pc 26584
	sw	%x7, 4(%x2)  #1830 pc 26588
	sw	%x5, 8(%x2)  #1830 pc 26592
	sw	%x1, 12(%x2)  #1830 pc 26596
	addi	%x2, %x2, 16  #1830 pc 26600
	jal	%x1, o_texturetype.2682  #1830 pc 26604
	addi	%x2, %x2, -16  #1830 pc 26608
	lw	%x1, 12(%x2) #1830 pc 26612
	lw	%x6, 8(%x2)  #1832 pc 26616
	sw	%x5, 12(%x2)  #1832 pc 26620
	addi	%x5, %x6, 0  #0 pc 26628
	sw	%x1, 20(%x2)  #1832 pc 26632
	addi	%x2, %x2, 24  #1832 pc 26636
	jal	%x1, o_color_red.2710  #1832 pc 26640
	addi	%x2, %x2, -24  #1832 pc 26644
	lw	%x1, 20(%x2) #1832 pc 26648
	lw	%x5, 4(%x2)  #1832 pc 26652
	add	%x24, %x0, %x5  #1832 pc 26656
	fsw	%f0, 0(%x24) #1832 pc 26660
	lw	%x6, 8(%x2)  #1833 pc 26664
	addi	%x5, %x6, 0  #0 pc 26672
	sw	%x1, 20(%x2)  #1833 pc 26676
	addi	%x2, %x2, 24  #1833 pc 26680
	jal	%x1, o_color_green.2712  #1833 pc 26684
	addi	%x2, %x2, -24  #1833 pc 26688
	lw	%x1, 20(%x2) #1833 pc 26692
	lw	%x5, 4(%x2)  #1833 pc 26696
	addi	%x24, %x0, 4  #pc 26700
	add	%x24, %x24, %x5  #1833 pc 26704
	fsw	%f0, 0(%x24) #1833 pc 26708
	lw	%x6, 8(%x2)  #1834 pc 26712
	addi	%x5, %x6, 0  #0 pc 26720
	sw	%x1, 20(%x2)  #1834 pc 26724
	addi	%x2, %x2, 24  #1834 pc 26728
	jal	%x1, o_color_blue.2714  #1834 pc 26732
	addi	%x2, %x2, -24  #1834 pc 26736
	lw	%x1, 20(%x2) #1834 pc 26740
	lw	%x5, 4(%x2)  #1834 pc 26744
	addi	%x24, %x0, 8  #pc 26748
	add	%x24, %x24, %x5  #1834 pc 26752
	fsw	%f0, 0(%x24) #1834 pc 26756
	lw	%x6, 12(%x2)  #1835 pc 26760
	addi	%x24, %x0, 1  #pc 26764
	beq	%x6, %x24, 12  #1835 pc 26768
	j	be_else.9456 #pc 26772
	nop #pc 26776
	lw	%x6, 0(%x2)  #1838 pc 26780
	add	%x24, %x0, %x6  #1838 pc 26784
	flw	%f0, 0(%x24)  #1838 pc 26788
	lw	%x7, 8(%x2)  #1838 pc 26792
	fsw	%f0, 16(%x2)  #1838 pc 26796
	addi	%x5, %x7, 0  #0 pc 26804
	sw	%x1, 28(%x2)  #1838 pc 26808
	addi	%x2, %x2, 32  #1838 pc 26812
	jal	%x1, o_param_x.2700  #1838 pc 26816
	addi	%x2, %x2, -32  #1838 pc 26820
	lw	%x1, 28(%x2) #1838 pc 26824
	flw	%f1, 16(%x2)  #1838 pc 26828
	fsub	%f0, %f1, %f0  #1838 pc 26832
	fmv	%f1, l.6830  #0 pc 26836
	fmul	%f1, %f0, %f1  #1840 pc 26840
	fsw	%f0, 24(%x2)  #1840 pc 26844
	fadd	%f0, %f1, %f30  #0 pc 26848
	sw	%x1, 36(%x2)  #1840 pc 26852
	addi	%x2, %x2, 40  #1840 pc 26856
	jal	%x1, floor.2549  #1840 pc 26860
	addi	%x2, %x2, -40  #1840 pc 26864
	lw	%x1, 36(%x2) #1840 pc 26868
	fmv	%f1, l.6832  #0 pc 26872
	fmul	%f0, %f0, %f1  #1840 pc 26876
	flw	%f1, 24(%x2)  #1841 pc 26880
	fsub	%f0, %f1, %f0  #1841 pc 26884
	fmv	%f1, l.6333  #0 pc 26888
	sw	%x1, 36(%x2)  #1841 pc 26892
	addi	%x2, %x2, 40  #1841 pc 26896
	jal	%x1, fless.2540  #1841 pc 26900
	addi	%x2, %x2, -40  #1841 pc 26904
	lw	%x1, 36(%x2) #1841 pc 26908
	lw	%x6, 0(%x2)  #1843 pc 26912
	addi	%x24, %x0, 8  #pc 26916
	add	%x24, %x24, %x6  #1843 pc 26920
	flw	%f0, 0(%x24)  #1843 pc 26924
	lw	%x6, 8(%x2)  #1843 pc 26928
	sw	%x5, 32(%x2)  #1843 pc 26932
	fsw	%f0, 40(%x2)  #1843 pc 26936
	addi	%x5, %x6, 0  #0 pc 26944
	sw	%x1, 52(%x2)  #1843 pc 26948
	addi	%x2, %x2, 56  #1843 pc 26952
	jal	%x1, o_param_z.2704  #1843 pc 26956
	addi	%x2, %x2, -56  #1843 pc 26960
	lw	%x1, 52(%x2) #1843 pc 26964
	flw	%f1, 40(%x2)  #1843 pc 26968
	fsub	%f0, %f1, %f0  #1843 pc 26972
	fmv	%f1, l.6830  #0 pc 26976
	fmul	%f1, %f0, %f1  #1845 pc 26980
	fsw	%f0, 48(%x2)  #1845 pc 26984
	fadd	%f0, %f1, %f30  #0 pc 26988
	sw	%x1, 60(%x2)  #1845 pc 26992
	addi	%x2, %x2, 64  #1845 pc 26996
	jal	%x1, floor.2549  #1845 pc 27000
	addi	%x2, %x2, -64  #1845 pc 27004
	lw	%x1, 60(%x2) #1845 pc 27008
	fmv	%f1, l.6832  #0 pc 27012
	fmul	%f0, %f0, %f1  #1845 pc 27016
	flw	%f1, 48(%x2)  #1846 pc 27020
	fsub	%f0, %f1, %f0  #1846 pc 27024
	fmv	%f1, l.6333  #0 pc 27028
	sw	%x1, 60(%x2)  #1846 pc 27032
	addi	%x2, %x2, 64  #1846 pc 27036
	jal	%x1, fless.2540  #1846 pc 27040
	addi	%x2, %x2, -64  #1846 pc 27044
	lw	%x1, 60(%x2) #1846 pc 27048
	lw	%x6, 32(%x2)  #1849 pc 27052
	beq	%x6, %x0, 12  #1849 pc 27056
	j	be_else.9458 #pc 27060
	nop #pc 27064
	beq	%x5, %x0, 12  #1851 pc 27068
	j	be_else.9460 #pc 27072
	nop #pc 27076
	fmv	%f0, l.6807  #0 pc 27080
	j	be_cont.9461 #pc 27084
	nop #pc 27088
be_else.9460: #pc 27088
	fmv	%f0, l.6293  #0 pc 27092
be_cont.9461: #pc 27092
	j	be_cont.9459 #pc 27096
	nop #pc 27100
be_else.9458: #pc 27100
	beq	%x5, %x0, 12  #1850 pc 27104
	j	be_else.9462 #pc 27108
	nop #pc 27112
	fmv	%f0, l.6293  #0 pc 27116
	j	be_cont.9463 #pc 27120
	nop #pc 27124
be_else.9462: #pc 27124
	fmv	%f0, l.6807  #0 pc 27128
be_cont.9463: #pc 27128
be_cont.9459: #pc 27128
	lw	%x5, 4(%x2)  #1848 pc 27132
	addi	%x24, %x0, 4  #pc 27136
	add	%x24, %x24, %x5  #1848 pc 27140
	fsw	%f0, 0(%x24) #1848 pc 27144
	ret #pc 27148
	nop #pc 27152
be_else.9456: #pc 27152
	addi	%x24, %x0, 2  #pc 27156
	beq	%x6, %x24, 12  #1853 pc 27160
	j	be_else.9465 #pc 27164
	nop #pc 27168
	lw	%x6, 0(%x2)  #1856 pc 27172
	addi	%x24, %x0, 4  #pc 27176
	add	%x24, %x24, %x6  #1856 pc 27180
	flw	%f0, 0(%x24)  #1856 pc 27184
	fmv	%f1, l.6822  #0 pc 27188
	fmul	%f0, %f0, %f1  #1856 pc 27192
	sw	%x1, 60(%x2)  #1856 pc 27196
	addi	%x2, %x2, 64  #1856 pc 27200
	jal	%x1, sin.2543  #1856 pc 27204
	addi	%x2, %x2, -64  #1856 pc 27208
	lw	%x1, 60(%x2) #1856 pc 27212
	sw	%x1, 60(%x2)  #1856 pc 27216
	addi	%x2, %x2, 64  #1856 pc 27220
	jal	%x1, fsqr.2536  #1856 pc 27224
	addi	%x2, %x2, -64  #1856 pc 27228
	lw	%x1, 60(%x2) #1856 pc 27232
	fmv	%f1, l.6807  #0 pc 27236
	fmul	%f1, %f1, %f0  #1857 pc 27240
	lw	%x5, 4(%x2)  #1857 pc 27244
	add	%x24, %x0, %x5  #1857 pc 27248
	fsw	%f1, 0(%x24) #1857 pc 27252
	fmv	%f1, l.6807  #0 pc 27256
	fmv	%f2, l.6305  #0 pc 27260
	fsub	%f0, %f2, %f0  #1858 pc 27264
	fmul	%f0, %f1, %f0  #1858 pc 27268
	addi	%x24, %x0, 4  #pc 27272
	add	%x24, %x24, %x5  #1858 pc 27276
	fsw	%f0, 0(%x24) #1858 pc 27280
	ret #pc 27284
	nop #pc 27288
be_else.9465: #pc 27288
	addi	%x24, %x0, 3  #pc 27292
	beq	%x6, %x24, 12  #1860 pc 27296
	j	be_else.9467 #pc 27300
	nop #pc 27304
	lw	%x6, 0(%x2)  #1863 pc 27308
	add	%x24, %x0, %x6  #1863 pc 27312
	flw	%f0, 0(%x24)  #1863 pc 27316
	lw	%x7, 8(%x2)  #1863 pc 27320
	fsw	%f0, 56(%x2)  #1863 pc 27324
	addi	%x5, %x7, 0  #0 pc 27332
	sw	%x1, 68(%x2)  #1863 pc 27336
	addi	%x2, %x2, 72  #1863 pc 27340
	jal	%x1, o_param_x.2700  #1863 pc 27344
	addi	%x2, %x2, -72  #1863 pc 27348
	lw	%x1, 68(%x2) #1863 pc 27352
	flw	%f1, 56(%x2)  #1863 pc 27356
	fsub	%f0, %f1, %f0  #1863 pc 27360
	lw	%x5, 0(%x2)  #1864 pc 27364
	addi	%x24, %x0, 8  #pc 27368
	add	%x24, %x24, %x5  #1864 pc 27372
	flw	%f1, 0(%x24)  #1864 pc 27376
	lw	%x5, 8(%x2)  #1864 pc 27380
	fsw	%f0, 64(%x2)  #1864 pc 27384
	fsw	%f1, 72(%x2)  #1864 pc 27388
	sw	%x1, 84(%x2)  #1864 pc 27392
	addi	%x2, %x2, 88  #1864 pc 27396
	jal	%x1, o_param_z.2704  #1864 pc 27400
	addi	%x2, %x2, -88  #1864 pc 27404
	lw	%x1, 84(%x2) #1864 pc 27408
	flw	%f1, 72(%x2)  #1864 pc 27412
	fsub	%f0, %f1, %f0  #1864 pc 27416
	flw	%f1, 64(%x2)  #1865 pc 27420
	fsw	%f0, 80(%x2)  #1865 pc 27424
	fadd	%f0, %f1, %f30  #0 pc 27428
	sw	%x1, 92(%x2)  #1865 pc 27432
	addi	%x2, %x2, 96  #1865 pc 27436
	jal	%x1, fsqr.2536  #1865 pc 27440
	addi	%x2, %x2, -96  #1865 pc 27444
	lw	%x1, 92(%x2) #1865 pc 27448
	flw	%f1, 80(%x2)  #1865 pc 27452
	fsw	%f0, 88(%x2)  #1865 pc 27456
	fadd	%f0, %f1, %f30  #0 pc 27460
	sw	%x1, 100(%x2)  #1865 pc 27464
	addi	%x2, %x2, 104  #1865 pc 27468
	jal	%x1, fsqr.2536  #1865 pc 27472
	addi	%x2, %x2, -104  #1865 pc 27476
	lw	%x1, 100(%x2) #1865 pc 27480
	flw	%f1, 88(%x2)  #1865 pc 27484
	fadd	%f0, %f1, %f0  #1865 pc 27488
	fmv	%f1, l.6333  #0 pc 27492
	fdiv	%f0, %f0, %f1  #1865 pc 27496
	fsqrt	%f0, %f0  #1865 pc 27500
	fsw	%f0, 96(%x2)  #1866 pc 27504
	sw	%x1, 108(%x2)  #1866 pc 27508
	addi	%x2, %x2, 112  #1866 pc 27512
	jal	%x1, floor.2549  #1866 pc 27516
	addi	%x2, %x2, -112  #1866 pc 27520
	lw	%x1, 108(%x2) #1866 pc 27524
	flw	%f1, 96(%x2)  #1866 pc 27528
	fsub	%f0, %f1, %f0  #1866 pc 27532
	fmv	%f1, l.6795  #0 pc 27536
	fmul	%f0, %f0, %f1  #1866 pc 27540
	sw	%x1, 108(%x2)  #1867 pc 27544
	addi	%x2, %x2, 112  #1867 pc 27548
	jal	%x1, cos.2545  #1867 pc 27552
	addi	%x2, %x2, -112  #1867 pc 27556
	lw	%x1, 108(%x2) #1867 pc 27560
	sw	%x1, 108(%x2)  #1867 pc 27564
	addi	%x2, %x2, 112  #1867 pc 27568
	jal	%x1, fsqr.2536  #1867 pc 27572
	addi	%x2, %x2, -112  #1867 pc 27576
	lw	%x1, 108(%x2) #1867 pc 27580
	fmv	%f1, l.6807  #0 pc 27584
	fmul	%f1, %f0, %f1  #1868 pc 27588
	lw	%x5, 4(%x2)  #1868 pc 27592
	addi	%x24, %x0, 4  #pc 27596
	add	%x24, %x24, %x5  #1868 pc 27600
	fsw	%f1, 0(%x24) #1868 pc 27604
	fmv	%f1, l.6305  #0 pc 27608
	fsub	%f0, %f1, %f0  #1869 pc 27612
	fmv	%f1, l.6807  #0 pc 27616
	fmul	%f0, %f0, %f1  #1869 pc 27620
	addi	%x24, %x0, 8  #pc 27624
	add	%x24, %x24, %x5  #1869 pc 27628
	fsw	%f0, 0(%x24) #1869 pc 27632
	ret #pc 27636
	nop #pc 27640
be_else.9467: #pc 27640
	addi	%x24, %x0, 4  #pc 27644
	beq	%x6, %x24, 12  #1871 pc 27648
	j	be_else.9469 #pc 27652
	nop #pc 27656
	lw	%x6, 0(%x2)  #1873 pc 27660
	add	%x24, %x0, %x6  #1873 pc 27664
	flw	%f0, 0(%x24)  #1873 pc 27668
	lw	%x7, 8(%x2)  #1873 pc 27672
	fsw	%f0, 104(%x2)  #1873 pc 27676
	addi	%x5, %x7, 0  #0 pc 27684
	sw	%x1, 116(%x2)  #1873 pc 27688
	addi	%x2, %x2, 120  #1873 pc 27692
	jal	%x1, o_param_x.2700  #1873 pc 27696
	addi	%x2, %x2, -120  #1873 pc 27700
	lw	%x1, 116(%x2) #1873 pc 27704
	flw	%f1, 104(%x2)  #1873 pc 27708
	fsub	%f0, %f1, %f0  #1873 pc 27712
	lw	%x5, 8(%x2)  #1873 pc 27716
	fsw	%f0, 112(%x2)  #1873 pc 27720
	sw	%x1, 124(%x2)  #1873 pc 27724
	addi	%x2, %x2, 128  #1873 pc 27728
	jal	%x1, o_param_a.2692  #1873 pc 27732
	addi	%x2, %x2, -128  #1873 pc 27736
	lw	%x1, 124(%x2) #1873 pc 27740
	fsqrt	%f0, %f0  #1873 pc 27744
	flw	%f1, 112(%x2)  #1873 pc 27748
	fmul	%f0, %f1, %f0  #1873 pc 27752
	lw	%x5, 0(%x2)  #1874 pc 27756
	addi	%x24, %x0, 8  #pc 27760
	add	%x24, %x24, %x5  #1874 pc 27764
	flw	%f1, 0(%x24)  #1874 pc 27768
	lw	%x6, 8(%x2)  #1874 pc 27772
	fsw	%f0, 120(%x2)  #1874 pc 27776
	fsw	%f1, 128(%x2)  #1874 pc 27780
	addi	%x5, %x6, 0  #0 pc 27788
	sw	%x1, 140(%x2)  #1874 pc 27792
	addi	%x2, %x2, 144  #1874 pc 27796
	jal	%x1, o_param_z.2704  #1874 pc 27800
	addi	%x2, %x2, -144  #1874 pc 27804
	lw	%x1, 140(%x2) #1874 pc 27808
	flw	%f1, 128(%x2)  #1874 pc 27812
	fsub	%f0, %f1, %f0  #1874 pc 27816
	lw	%x5, 8(%x2)  #1874 pc 27820
	fsw	%f0, 136(%x2)  #1874 pc 27824
	sw	%x1, 148(%x2)  #1874 pc 27828
	addi	%x2, %x2, 152  #1874 pc 27832
	jal	%x1, o_param_c.2696  #1874 pc 27836
	addi	%x2, %x2, -152  #1874 pc 27840
	lw	%x1, 148(%x2) #1874 pc 27844
	fsqrt	%f0, %f0  #1874 pc 27848
	flw	%f1, 136(%x2)  #1874 pc 27852
	fmul	%f0, %f1, %f0  #1874 pc 27856
	flw	%f1, 120(%x2)  #1875 pc 27860
	fsw	%f0, 144(%x2)  #1875 pc 27864
	fadd	%f0, %f1, %f30  #0 pc 27868
	sw	%x1, 156(%x2)  #1875 pc 27872
	addi	%x2, %x2, 160  #1875 pc 27876
	jal	%x1, fsqr.2536  #1875 pc 27880
	addi	%x2, %x2, -160  #1875 pc 27884
	lw	%x1, 156(%x2) #1875 pc 27888
	flw	%f1, 144(%x2)  #1875 pc 27892
	fsw	%f0, 152(%x2)  #1875 pc 27896
	fadd	%f0, %f1, %f30  #0 pc 27900
	sw	%x1, 164(%x2)  #1875 pc 27904
	addi	%x2, %x2, 168  #1875 pc 27908
	jal	%x1, fsqr.2536  #1875 pc 27912
	addi	%x2, %x2, -168  #1875 pc 27916
	lw	%x1, 164(%x2) #1875 pc 27920
	flw	%f1, 152(%x2)  #1875 pc 27924
	fadd	%f0, %f1, %f0  #1875 pc 27928
	flw	%f1, 120(%x2)  #1877 pc 27932
	fabs	%f2, %f1  #1877 pc 27936
	fmv	%f3, l.6789  #0 pc 27940
	fsw	%f0, 160(%x2)  #1877 pc 27944
	fadd	%f1, %f3, %f30  #0 pc 27948
	fadd	%f0, %f2, %f30  #0 pc 27952
	sw	%x1, 172(%x2)  #1877 pc 27956
	addi	%x2, %x2, 176  #1877 pc 27960
	jal	%x1, fless.2540  #1877 pc 27964
	addi	%x2, %x2, -176  #1877 pc 27968
	lw	%x1, 172(%x2) #1877 pc 27972
	beq	%x5, %x0, 12  #1877 pc 27976
	j	be_else.9470 #pc 27980
	nop #pc 27984
	flw	%f0, 120(%x2)  #1880 pc 27988
	flw	%f1, 144(%x2)  #1880 pc 27992
	fdiv	%f0, %f1, %f0  #1880 pc 27996
	fabs	%f0, %f0  #1880 pc 28000
	sw	%x1, 172(%x2)  #1882 pc 28004
	addi	%x2, %x2, 176  #1882 pc 28008
	jal	%x1, atan.2547  #1882 pc 28012
	addi	%x2, %x2, -176  #1882 pc 28016
	lw	%x1, 172(%x2) #1882 pc 28020
	fmv	%f1, l.6793  #0 pc 28024
	fmul	%f0, %f0, %f1  #1882 pc 28028
	fmv	%f1, l.6795  #0 pc 28032
	fdiv	%f0, %f0, %f1  #1882 pc 28036
	j	be_cont.9471 #pc 28040
	nop #pc 28044
be_else.9470: #pc 28044
	fmv	%f0, l.6791  #0 pc 28048
be_cont.9471: #pc 28048
	fsw	%f0, 168(%x2)  #1884 pc 28052
	sw	%x1, 180(%x2)  #1884 pc 28056
	addi	%x2, %x2, 184  #1884 pc 28060
	jal	%x1, floor.2549  #1884 pc 28064
	addi	%x2, %x2, -184  #1884 pc 28068
	lw	%x1, 180(%x2) #1884 pc 28072
	flw	%f1, 168(%x2)  #1884 pc 28076
	fsub	%f0, %f1, %f0  #1884 pc 28080
	lw	%x5, 0(%x2)  #1886 pc 28084
	addi	%x24, %x0, 4  #pc 28088
	add	%x24, %x24, %x5  #1886 pc 28092
	flw	%f1, 0(%x24)  #1886 pc 28096
	lw	%x5, 8(%x2)  #1886 pc 28100
	fsw	%f0, 176(%x2)  #1886 pc 28104
	fsw	%f1, 184(%x2)  #1886 pc 28108
	sw	%x1, 196(%x2)  #1886 pc 28112
	addi	%x2, %x2, 200  #1886 pc 28116
	jal	%x1, o_param_y.2702  #1886 pc 28120
	addi	%x2, %x2, -200  #1886 pc 28124
	lw	%x1, 196(%x2) #1886 pc 28128
	flw	%f1, 184(%x2)  #1886 pc 28132
	fsub	%f0, %f1, %f0  #1886 pc 28136
	lw	%x5, 8(%x2)  #1886 pc 28140
	fsw	%f0, 192(%x2)  #1886 pc 28144
	sw	%x1, 204(%x2)  #1886 pc 28148
	addi	%x2, %x2, 208  #1886 pc 28152
	jal	%x1, o_param_b.2694  #1886 pc 28156
	addi	%x2, %x2, -208  #1886 pc 28160
	lw	%x1, 204(%x2) #1886 pc 28164
	fsqrt	%f0, %f0  #1886 pc 28168
	flw	%f1, 192(%x2)  #1886 pc 28172
	fmul	%f0, %f1, %f0  #1886 pc 28176
	flw	%f1, 160(%x2)  #1888 pc 28180
	fabs	%f2, %f1  #1888 pc 28184
	fmv	%f3, l.6789  #0 pc 28188
	fsw	%f0, 200(%x2)  #1888 pc 28192
	fadd	%f1, %f3, %f30  #0 pc 28196
	fadd	%f0, %f2, %f30  #0 pc 28200
	sw	%x1, 212(%x2)  #1888 pc 28204
	addi	%x2, %x2, 216  #1888 pc 28208
	jal	%x1, fless.2540  #1888 pc 28212
	addi	%x2, %x2, -216  #1888 pc 28216
	lw	%x1, 212(%x2) #1888 pc 28220
	beq	%x5, %x0, 12  #1888 pc 28224
	j	be_else.9472 #pc 28228
	nop #pc 28232
	flw	%f0, 160(%x2)  #1891 pc 28236
	flw	%f1, 200(%x2)  #1891 pc 28240
	fdiv	%f0, %f1, %f0  #1891 pc 28244
	fabs	%f0, %f0  #1891 pc 28248
	sw	%x1, 212(%x2)  #1892 pc 28252
	addi	%x2, %x2, 216  #1892 pc 28256
	jal	%x1, atan.2547  #1892 pc 28260
	addi	%x2, %x2, -216  #1892 pc 28264
	lw	%x1, 212(%x2) #1892 pc 28268
	fmv	%f1, l.6793  #0 pc 28272
	fmul	%f0, %f0, %f1  #1892 pc 28276
	fmv	%f1, l.6795  #0 pc 28280
	fdiv	%f0, %f0, %f1  #1892 pc 28284
	j	be_cont.9473 #pc 28288
	nop #pc 28292
be_else.9472: #pc 28292
	fmv	%f0, l.6791  #0 pc 28296
be_cont.9473: #pc 28296
	fsw	%f0, 208(%x2)  #1894 pc 28300
	sw	%x1, 220(%x2)  #1894 pc 28304
	addi	%x2, %x2, 224  #1894 pc 28308
	jal	%x1, floor.2549  #1894 pc 28312
	addi	%x2, %x2, -224  #1894 pc 28316
	lw	%x1, 220(%x2) #1894 pc 28320
	flw	%f1, 208(%x2)  #1894 pc 28324
	fsub	%f0, %f1, %f0  #1894 pc 28328
	fmv	%f1, l.6802  #0 pc 28332
	fmv	%f2, l.6297  #0 pc 28336
	flw	%f3, 176(%x2)  #1895 pc 28340
	fsub	%f2, %f2, %f3  #1895 pc 28344
	fsw	%f0, 216(%x2)  #1895 pc 28348
	fsw	%f1, 224(%x2)  #1895 pc 28352
	fadd	%f0, %f2, %f30  #0 pc 28356
	sw	%x1, 236(%x2)  #1895 pc 28360
	addi	%x2, %x2, 240  #1895 pc 28364
	jal	%x1, fsqr.2536  #1895 pc 28368
	addi	%x2, %x2, -240  #1895 pc 28372
	lw	%x1, 236(%x2) #1895 pc 28376
	flw	%f1, 224(%x2)  #1895 pc 28380
	fsub	%f0, %f1, %f0  #1895 pc 28384
	fmv	%f1, l.6297  #0 pc 28388
	flw	%f2, 216(%x2)  #1895 pc 28392
	fsub	%f1, %f1, %f2  #1895 pc 28396
	fsw	%f0, 232(%x2)  #1895 pc 28400
	fadd	%f0, %f1, %f30  #0 pc 28404
	sw	%x1, 244(%x2)  #1895 pc 28408
	addi	%x2, %x2, 248  #1895 pc 28412
	jal	%x1, fsqr.2536  #1895 pc 28416
	addi	%x2, %x2, -248  #1895 pc 28420
	lw	%x1, 244(%x2) #1895 pc 28424
	flw	%f1, 232(%x2)  #1895 pc 28428
	fsub	%f0, %f1, %f0  #1895 pc 28432
	fsw	%f0, 240(%x2)  #1896 pc 28436
	sw	%x1, 252(%x2)  #1896 pc 28440
	addi	%x2, %x2, 256  #1896 pc 28444
	jal	%x1, fisneg.2532  #1896 pc 28448
	addi	%x2, %x2, -256  #1896 pc 28452
	lw	%x1, 252(%x2) #1896 pc 28456
	beq	%x5, %x0, 12  #1896 pc 28460
	j	be_else.9474 #pc 28464
	nop #pc 28468
	flw	%f0, 240(%x2)  #1896 pc 28472
	j	be_cont.9475 #pc 28476
	nop #pc 28480
be_else.9474: #pc 28480
	fmv	%f0, l.6293  #0 pc 28484
be_cont.9475: #pc 28484
	fmv	%f1, l.6807  #0 pc 28488
	fmul	%f0, %f1, %f0  #1897 pc 28492
	fmv	%f1, l.6809  #0 pc 28496
	fdiv	%f0, %f0, %f1  #1897 pc 28500
	lw	%x5, 4(%x2)  #1897 pc 28504
	addi	%x24, %x0, 8  #pc 28508
	add	%x24, %x24, %x5  #1897 pc 28512
	fsw	%f0, 0(%x24) #1897 pc 28516
	ret #pc 28520
	nop #pc 28524
be_else.9469: #pc 28524
	ret #pc 28528
	nop #pc 28532
add_light.2954:  #pc 28532
	addi	%x24, %x0, 8  #pc 28536
	add	%x24, %x24, %x22  #0 pc 28540
	lw	%x5, 0(%x24)  #0 pc 28544
	addi	%x24, %x0, 4  #pc 28548
	add	%x24, %x24, %x22  #0 pc 28552
	lw	%x6, 0(%x24)  #0 pc 28556
	fsw	%f2, 0(%x2)  #1910 pc 28560
	fsw	%f1, 8(%x2)  #1910 pc 28564
	fsw	%f0, 16(%x2)  #1910 pc 28568
	sw	%x5, 24(%x2)  #1910 pc 28572
	sw	%x6, 28(%x2)  #1910 pc 28576
	sw	%x1, 36(%x2)  #1910 pc 28580
	addi	%x2, %x2, 40  #1910 pc 28584
	jal	%x1, fispos.2530  #1910 pc 28588
	addi	%x2, %x2, -40  #1910 pc 28592
	lw	%x1, 36(%x2) #1910 pc 28596
	beq	%x5, %x0, 12  #1910 pc 28600
	j	be_else.9478 #pc 28604
	nop #pc 28608
	j	be_cont.9479 #pc 28612
	nop #pc 28616
be_else.9478: #pc 28616
	flw	%f0, 16(%x2)  #1911 pc 28620
	lw	%x5, 28(%x2)  #1911 pc 28624
	lw	%x6, 24(%x2)  #1911 pc 28628
	sw	%x1, 36(%x2)  #1911 pc 28632
	addi	%x2, %x2, 40  #1911 pc 28636
	jal	%x1, vecaccum.2668  #1911 pc 28640
	addi	%x2, %x2, -40  #1911 pc 28644
	lw	%x1, 36(%x2) #1911 pc 28648
be_cont.9479: #pc 28648
	flw	%f0, 8(%x2)  #1915 pc 28652
	sw	%x1, 36(%x2)  #1915 pc 28656
	addi	%x2, %x2, 40  #1915 pc 28660
	jal	%x1, fispos.2530  #1915 pc 28664
	addi	%x2, %x2, -40  #1915 pc 28668
	lw	%x1, 36(%x2) #1915 pc 28672
	beq	%x5, %x0, 12  #1915 pc 28676
	j	be_else.9480 #pc 28680
	nop #pc 28684
	ret #pc 28688
	nop #pc 28692
be_else.9480: #pc 28692
	flw	%f0, 8(%x2)  #1916 pc 28696
	sw	%x1, 36(%x2)  #1916 pc 28700
	addi	%x2, %x2, 40  #1916 pc 28704
	jal	%x1, fsqr.2536  #1916 pc 28708
	addi	%x2, %x2, -40  #1916 pc 28712
	lw	%x1, 36(%x2) #1916 pc 28716
	sw	%x1, 36(%x2)  #1916 pc 28720
	addi	%x2, %x2, 40  #1916 pc 28724
	jal	%x1, fsqr.2536  #1916 pc 28728
	addi	%x2, %x2, -40  #1916 pc 28732
	lw	%x1, 36(%x2) #1916 pc 28736
	flw	%f1, 0(%x2)  #1916 pc 28740
	fmul	%f0, %f0, %f1  #1916 pc 28744
	lw	%x5, 28(%x2)  #1917 pc 28748
	add	%x24, %x0, %x5  #1917 pc 28752
	flw	%f1, 0(%x24)  #1917 pc 28756
	fadd	%f1, %f1, %f0  #1917 pc 28760
	add	%x24, %x0, %x5  #1917 pc 28764
	fsw	%f1, 0(%x24) #1917 pc 28768
	addi	%x24, %x0, 4  #pc 28772
	add	%x24, %x24, %x5  #1918 pc 28776
	flw	%f1, 0(%x24)  #1918 pc 28780
	fadd	%f1, %f1, %f0  #1918 pc 28784
	addi	%x24, %x0, 4  #pc 28788
	add	%x24, %x24, %x5  #1918 pc 28792
	fsw	%f1, 0(%x24) #1918 pc 28796
	addi	%x24, %x0, 8  #pc 28800
	add	%x24, %x24, %x5  #1919 pc 28804
	flw	%f1, 0(%x24)  #1919 pc 28808
	fadd	%f0, %f1, %f0  #1919 pc 28812
	addi	%x24, %x0, 8  #pc 28816
	add	%x24, %x24, %x5  #1919 pc 28820
	fsw	%f0, 0(%x24) #1919 pc 28824
	ret #pc 28828
	nop #pc 28832
trace_reflections.2958:  #pc 28832
	addi	%x24, %x0, 32  #pc 28836
	add	%x24, %x24, %x22  #0 pc 28840
	lw	%x7, 0(%x24)  #0 pc 28844
	addi	%x24, %x0, 28  #pc 28848
	add	%x24, %x24, %x22  #0 pc 28852
	lw	%x9, 0(%x24)  #0 pc 28856
	addi	%x24, %x0, 24  #pc 28860
	add	%x24, %x24, %x22  #0 pc 28864
	lw	%x10, 0(%x24)  #0 pc 28868
	addi	%x24, %x0, 20  #pc 28872
	add	%x24, %x24, %x22  #0 pc 28876
	lw	%x11, 0(%x24)  #0 pc 28880
	addi	%x24, %x0, 16  #pc 28884
	add	%x24, %x24, %x22  #0 pc 28888
	lw	%x12, 0(%x24)  #0 pc 28892
	addi	%x24, %x0, 12  #pc 28896
	add	%x24, %x24, %x22  #0 pc 28900
	lw	%x13, 0(%x24)  #0 pc 28904
	addi	%x24, %x0, 8  #pc 28908
	add	%x24, %x24, %x22  #0 pc 28912
	lw	%x14, 0(%x24)  #0 pc 28916
	addi	%x24, %x0, 4  #pc 28920
	add	%x24, %x24, %x22  #0 pc 28924
	lw	%x15, 0(%x24)  #0 pc 28928
	bge	%x5, %x0, 12  #1926 pc 28932
	j	bge_else.9483 #pc 28936
	nop #pc 28940
	slli	%x16, %x5, 2  #1927 pc 28944
	add	%x24, %x16, %x9  #1927 pc 28948
	lw	%x9, 0(%x24)  #1927 pc 28952
	sw	%x22, 0(%x2)  #1928 pc 28956
	sw	%x5, 4(%x2)  #1928 pc 28960
	fsw	%f1, 8(%x2)  #1928 pc 28964
	sw	%x15, 16(%x2)  #1928 pc 28968
	sw	%x6, 20(%x2)  #1928 pc 28972
	fsw	%f0, 24(%x2)  #1928 pc 28976
	sw	%x11, 32(%x2)  #1928 pc 28980
	sw	%x7, 36(%x2)  #1928 pc 28984
	sw	%x10, 40(%x2)  #1928 pc 28988
	sw	%x9, 44(%x2)  #1928 pc 28992
	sw	%x13, 48(%x2)  #1928 pc 28996
	sw	%x14, 52(%x2)  #1928 pc 29000
	sw	%x12, 56(%x2)  #1928 pc 29004
	addi	%x5, %x9, 0  #0 pc 29012
	sw	%x1, 60(%x2)  #1928 pc 29016
	addi	%x2, %x2, 64  #1928 pc 29020
	jal	%x1, r_dvec.2749  #1928 pc 29024
	addi	%x2, %x2, -64  #1928 pc 29028
	lw	%x1, 60(%x2) #1928 pc 29032
	lw	%x22, 56(%x2)  #1931 pc 29036
	sw	%x5, 60(%x2)  #1931 pc 29040
	sw	%x1, 68(%x2)  #1931 pc 29044
	lw	%x23, 0(%x22)  #1931 pc 29048
	addi	%x2, %x2, 72  #1931 pc 29052
	jalr	%x1, %x23, 0  #1931 pc 29056
	addi	%x2, %x2, -72  #1931 pc 29060
	lw	%x1, 68(%x2)  #1931 pc 29064
	beq	%x5, %x0, 12  #1931 pc 29068
	j	be_else.9484 #pc 29072
	nop #pc 29076
	j	be_cont.9485 #pc 29080
	nop #pc 29084
be_else.9484: #pc 29084
	lw	%x5, 52(%x2)  #1932 pc 29088
	add	%x24, %x0, %x5  #1932 pc 29092
	lw	%x5, 0(%x24)  #1932 pc 29096
	addi	%x6, %x0, 4  #0 pc 29100
	sw	%x1, 68(%x2)  #1932 pc 29104
	addi	%x2, %x2, 72  #1932 pc 29108
	jal	%x1, mul.2562  #1932 pc 29112
	addi	%x2, %x2, -72  #1932 pc 29116
	lw	%x1, 68(%x2) #1932 pc 29120
	lw	%x6, 48(%x2)  #1932 pc 29124
	add	%x24, %x0, %x6  #1932 pc 29128
	lw	%x6, 0(%x24)  #1932 pc 29132
	add	%x5, %x5, %x6  #1932 pc 29136
	lw	%x6, 44(%x2)  #1933 pc 29140
	sw	%x5, 64(%x2)  #1933 pc 29144
	addi	%x5, %x6, 0  #0 pc 29152
	sw	%x1, 68(%x2)  #1933 pc 29156
	addi	%x2, %x2, 72  #1933 pc 29160
	jal	%x1, r_surface_id.2747  #1933 pc 29164
	addi	%x2, %x2, -72  #1933 pc 29168
	lw	%x1, 68(%x2) #1933 pc 29172
	lw	%x6, 64(%x2)  #1933 pc 29176
	beq	%x6, %x5, 12  #1933 pc 29180
	j	be_else.9486 #pc 29184
	nop #pc 29188
	addi	%x5, %x0, 0  #0 pc 29192
	lw	%x6, 40(%x2)  #1935 pc 29196
	add	%x24, %x0, %x6  #1935 pc 29200
	lw	%x6, 0(%x24)  #1935 pc 29204
	lw	%x22, 36(%x2)  #1935 pc 29208
	sw	%x1, 68(%x2)  #1935 pc 29212
	lw	%x23, 0(%x22)  #1935 pc 29216
	addi	%x2, %x2, 72  #1935 pc 29220
	jalr	%x1, %x23, 0  #1935 pc 29224
	addi	%x2, %x2, -72  #1935 pc 29228
	lw	%x1, 68(%x2)  #1935 pc 29232
	beq	%x5, %x0, 12  #1935 pc 29236
	j	be_else.9488 #pc 29240
	nop #pc 29244
	lw	%x5, 60(%x2)  #1937 pc 29248
	sw	%x1, 68(%x2)  #1937 pc 29252
	addi	%x2, %x2, 72  #1937 pc 29256
	jal	%x1, d_vec.2743  #1937 pc 29260
	addi	%x2, %x2, -72  #1937 pc 29264
	lw	%x1, 68(%x2) #1937 pc 29268
	addi	%x6, %x5, 0  #1937 pc 29272
	lw	%x5, 32(%x2)  #1937 pc 29276
	sw	%x1, 68(%x2)  #1937 pc 29280
	addi	%x2, %x2, 72  #1937 pc 29284
	jal	%x1, veciprod.2660  #1937 pc 29288
	addi	%x2, %x2, -72  #1937 pc 29292
	lw	%x1, 68(%x2) #1937 pc 29296
	lw	%x5, 44(%x2)  #1938 pc 29300
	fsw	%f0, 72(%x2)  #1938 pc 29304
	sw	%x1, 84(%x2)  #1938 pc 29308
	addi	%x2, %x2, 88  #1938 pc 29312
	jal	%x1, r_bright.2751  #1938 pc 29316
	addi	%x2, %x2, -88  #1938 pc 29320
	lw	%x1, 84(%x2) #1938 pc 29324
	flw	%f1, 24(%x2)  #1939 pc 29328
	fmul	%f2, %f0, %f1  #1939 pc 29332
	flw	%f3, 72(%x2)  #1939 pc 29336
	fmul	%f2, %f2, %f3  #1939 pc 29340
	lw	%x5, 60(%x2)  #1940 pc 29344
	fsw	%f2, 80(%x2)  #1940 pc 29348
	fsw	%f0, 88(%x2)  #1940 pc 29352
	sw	%x1, 100(%x2)  #1940 pc 29356
	addi	%x2, %x2, 104  #1940 pc 29360
	jal	%x1, d_vec.2743  #1940 pc 29364
	addi	%x2, %x2, -104  #1940 pc 29368
	lw	%x1, 100(%x2) #1940 pc 29372
	addi	%x6, %x5, 0  #1940 pc 29376
	lw	%x5, 20(%x2)  #1940 pc 29380
	sw	%x1, 100(%x2)  #1940 pc 29384
	addi	%x2, %x2, 104  #1940 pc 29388
	jal	%x1, veciprod.2660  #1940 pc 29392
	addi	%x2, %x2, -104  #1940 pc 29396
	lw	%x1, 100(%x2) #1940 pc 29400
	flw	%f1, 88(%x2)  #1940 pc 29404
	fmul	%f1, %f1, %f0  #1940 pc 29408
	flw	%f0, 80(%x2)  #1941 pc 29412
	flw	%f2, 8(%x2)  #1941 pc 29416
	lw	%x22, 16(%x2)  #1941 pc 29420
	sw	%x1, 100(%x2)  #1941 pc 29424
	lw	%x23, 0(%x22)  #1941 pc 29428
	addi	%x2, %x2, 104  #1941 pc 29432
	jalr	%x1, %x23, 0  #1941 pc 29436
	addi	%x2, %x2, -104  #1941 pc 29440
	lw	%x1, 100(%x2)  #1941 pc 29444
	j	be_cont.9489 #pc 29448
	nop #pc 29452
be_else.9488: #pc 29452
be_cont.9489: #pc 29452
	j	be_cont.9487 #pc 29456
	nop #pc 29460
be_else.9486: #pc 29460
be_cont.9487: #pc 29460
be_cont.9485: #pc 29460
	lw	%x5, 4(%x2)  #1945 pc 29464
	addi	%x5, %x5, -1  #1945 pc 29468
	flw	%f0, 24(%x2)  #1945 pc 29472
	flw	%f1, 8(%x2)  #1945 pc 29476
	lw	%x6, 20(%x2)  #1945 pc 29480
	lw	%x22, 0(%x2)  #1945 pc 29484
	lw	%x23, 0(%x22)  #1945 pc 29488
	jalr	%x0, %x23, 0  #1945 pc 29492
	nop #pc 29496
bge_else.9483: #pc 29496
	ret #pc 29500
	nop #pc 29504
trace_ray.2963:  #pc 29504
	addi	%x24, %x0, 80  #pc 29508
	add	%x24, %x24, %x22  #0 pc 29512
	lw	%x9, 0(%x24)  #0 pc 29516
	addi	%x24, %x0, 76  #pc 29520
	add	%x24, %x24, %x22  #0 pc 29524
	lw	%x10, 0(%x24)  #0 pc 29528
	addi	%x24, %x0, 72  #pc 29532
	add	%x24, %x24, %x22  #0 pc 29536
	lw	%x11, 0(%x24)  #0 pc 29540
	addi	%x24, %x0, 68  #pc 29544
	add	%x24, %x24, %x22  #0 pc 29548
	lw	%x12, 0(%x24)  #0 pc 29552
	addi	%x24, %x0, 64  #pc 29556
	add	%x24, %x24, %x22  #0 pc 29560
	lw	%x13, 0(%x24)  #0 pc 29564
	addi	%x24, %x0, 60  #pc 29568
	add	%x24, %x24, %x22  #0 pc 29572
	lw	%x14, 0(%x24)  #0 pc 29576
	addi	%x24, %x0, 56  #pc 29580
	add	%x24, %x24, %x22  #0 pc 29584
	lw	%x15, 0(%x24)  #0 pc 29588
	addi	%x24, %x0, 52  #pc 29592
	add	%x24, %x24, %x22  #0 pc 29596
	lw	%x16, 0(%x24)  #0 pc 29600
	addi	%x24, %x0, 48  #pc 29604
	add	%x24, %x24, %x22  #0 pc 29608
	lw	%x17, 0(%x24)  #0 pc 29612
	addi	%x24, %x0, 44  #pc 29616
	add	%x24, %x24, %x22  #0 pc 29620
	lw	%x18, 0(%x24)  #0 pc 29624
	addi	%x24, %x0, 40  #pc 29628
	add	%x24, %x24, %x22  #0 pc 29632
	lw	%x19, 0(%x24)  #0 pc 29636
	addi	%x24, %x0, 36  #pc 29640
	add	%x24, %x24, %x22  #0 pc 29644
	lw	%x20, 0(%x24)  #0 pc 29648
	addi	%x24, %x0, 32  #pc 29652
	add	%x24, %x24, %x22  #0 pc 29656
	lw	%x21, 0(%x24)  #0 pc 29660
	addi	%x24, %x0, 28  #pc 29664
	add	%x24, %x24, %x22  #0 pc 29668
	lw	%x23, 0(%x24)  #0 pc 29672
	sw	%x11, 0(%x2)  #0 pc 29676
	addi	%x24, %x0, 24  #pc 29680
	add	%x24, %x24, %x22  #0 pc 29684
	lw	%x11, 0(%x24)  #0 pc 29688
	sw	%x10, 4(%x2)  #0 pc 29692
	addi	%x24, %x0, 20  #pc 29696
	add	%x24, %x24, %x22  #0 pc 29700
	lw	%x10, 0(%x24)  #0 pc 29704
	sw	%x20, 8(%x2)  #0 pc 29708
	addi	%x24, %x0, 16  #pc 29712
	add	%x24, %x24, %x22  #0 pc 29716
	lw	%x20, 0(%x24)  #0 pc 29720
	sw	%x15, 12(%x2)  #0 pc 29724
	addi	%x24, %x0, 12  #pc 29728
	add	%x24, %x24, %x22  #0 pc 29732
	lw	%x15, 0(%x24)  #0 pc 29736
	sw	%x14, 16(%x2)  #0 pc 29740
	addi	%x24, %x0, 8  #pc 29744
	add	%x24, %x24, %x22  #0 pc 29748
	lw	%x14, 0(%x24)  #0 pc 29752
	sw	%x22, 20(%x2)  #0 pc 29756
	addi	%x24, %x0, 4  #pc 29760
	add	%x24, %x24, %x22  #0 pc 29764
	lw	%x22, 0(%x24)  #0 pc 29768
	addi	%x24, %x0, 4  #pc 29772
	bge	%x24, %x5, 12  #1954 pc 29776
	j	ble_else.9492 #pc 29780
	nop #pc 29784
	fsw	%f1, 24(%x2)  #1955 pc 29788
	sw	%x22, 32(%x2)  #1955 pc 29792
	sw	%x17, 36(%x2)  #1955 pc 29796
	sw	%x19, 40(%x2)  #1955 pc 29800
	sw	%x12, 44(%x2)  #1955 pc 29804
	sw	%x7, 48(%x2)  #1955 pc 29808
	sw	%x11, 52(%x2)  #1955 pc 29812
	sw	%x9, 56(%x2)  #1955 pc 29816
	sw	%x10, 60(%x2)  #1955 pc 29820
	sw	%x13, 64(%x2)  #1955 pc 29824
	sw	%x15, 68(%x2)  #1955 pc 29828
	sw	%x18, 72(%x2)  #1955 pc 29832
	sw	%x20, 76(%x2)  #1955 pc 29836
	sw	%x16, 80(%x2)  #1955 pc 29840
	sw	%x14, 84(%x2)  #1955 pc 29844
	fsw	%f0, 88(%x2)  #1955 pc 29848
	sw	%x21, 96(%x2)  #1955 pc 29852
	sw	%x5, 100(%x2)  #1955 pc 29856
	sw	%x6, 104(%x2)  #1955 pc 29860
	sw	%x23, 108(%x2)  #1955 pc 29864
	addi	%x5, %x7, 0  #0 pc 29872
	sw	%x1, 116(%x2)  #1955 pc 29876
	addi	%x2, %x2, 120  #1955 pc 29880
	jal	%x1, p_surface_ids.2728  #1955 pc 29884
	addi	%x2, %x2, -120  #1955 pc 29888
	lw	%x1, 116(%x2) #1955 pc 29892
	lw	%x6, 104(%x2)  #1956 pc 29896
	lw	%x22, 108(%x2)  #1956 pc 29900
	sw	%x5, 112(%x2)  #1956 pc 29904
	addi	%x5, %x6, 0  #0 pc 29912
	sw	%x1, 116(%x2)  #1956 pc 29916
	lw	%x23, 0(%x22)  #1956 pc 29920
	addi	%x2, %x2, 120  #1956 pc 29924
	jalr	%x1, %x23, 0  #1956 pc 29928
	addi	%x2, %x2, -120  #1956 pc 29932
	lw	%x1, 116(%x2)  #1956 pc 29936
	beq	%x5, %x0, 12  #1956 pc 29940
	j	be_else.9493 #pc 29944
	nop #pc 29948
	addi	%x5, %x0, -1  #0 pc 29952
	lw	%x6, 100(%x2)  #2019 pc 29956
	slli	%x7, %x6, 2  #2019 pc 29960
	lw	%x9, 112(%x2)  #2019 pc 29964
	add	%x24, %x7, %x9  #2019 pc 29968
	sw	%x5, 0(%x24)  #2019 pc 29972
	beq	%x6, %x0, 12  #2021 pc 29976
	j	be_else.9494 #pc 29980
	nop #pc 29984
	ret #pc 29988
	nop #pc 29992
be_else.9494: #pc 29992
	lw	%x5, 104(%x2)  #2022 pc 29996
	lw	%x6, 96(%x2)  #2022 pc 30000
	sw	%x1, 116(%x2)  #2022 pc 30004
	addi	%x2, %x2, 120  #2022 pc 30008
	jal	%x1, veciprod.2660  #2022 pc 30012
	addi	%x2, %x2, -120  #2022 pc 30016
	lw	%x1, 116(%x2) #2022 pc 30020
	sw	%x1, 116(%x2)  #2022 pc 30024
	addi	%x2, %x2, 120  #2022 pc 30028
	jal	%x1, fneg.2534  #2022 pc 30032
	addi	%x2, %x2, -120  #2022 pc 30036
	lw	%x1, 116(%x2) #2022 pc 30040
	fsw	%f0, 120(%x2)  #2024 pc 30044
	sw	%x1, 132(%x2)  #2024 pc 30048
	addi	%x2, %x2, 136  #2024 pc 30052
	jal	%x1, fispos.2530  #2024 pc 30056
	addi	%x2, %x2, -136  #2024 pc 30060
	lw	%x1, 132(%x2) #2024 pc 30064
	beq	%x5, %x0, 12  #2024 pc 30068
	j	be_else.9497 #pc 30072
	nop #pc 30076
	ret #pc 30080
	nop #pc 30084
be_else.9497: #pc 30084
	flw	%f0, 120(%x2)  #2027 pc 30088
	sw	%x1, 132(%x2)  #2027 pc 30092
	addi	%x2, %x2, 136  #2027 pc 30096
	jal	%x1, fsqr.2536  #2027 pc 30100
	addi	%x2, %x2, -136  #2027 pc 30104
	lw	%x1, 132(%x2) #2027 pc 30108
	flw	%f1, 120(%x2)  #2027 pc 30112
	fmul	%f0, %f0, %f1  #2027 pc 30116
	flw	%f1, 88(%x2)  #2027 pc 30120
	fmul	%f0, %f0, %f1  #2027 pc 30124
	lw	%x5, 84(%x2)  #2027 pc 30128
	add	%x24, %x0, %x5  #2027 pc 30132
	flw	%f1, 0(%x24)  #2027 pc 30136
	fmul	%f0, %f0, %f1  #2027 pc 30140
	lw	%x5, 80(%x2)  #2028 pc 30144
	add	%x24, %x0, %x5  #2028 pc 30148
	flw	%f1, 0(%x24)  #2028 pc 30152
	fadd	%f1, %f1, %f0  #2028 pc 30156
	add	%x24, %x0, %x5  #2028 pc 30160
	fsw	%f1, 0(%x24) #2028 pc 30164
	addi	%x24, %x0, 4  #pc 30168
	add	%x24, %x24, %x5  #2029 pc 30172
	flw	%f1, 0(%x24)  #2029 pc 30176
	fadd	%f1, %f1, %f0  #2029 pc 30180
	addi	%x24, %x0, 4  #pc 30184
	add	%x24, %x24, %x5  #2029 pc 30188
	fsw	%f1, 0(%x24) #2029 pc 30192
	addi	%x24, %x0, 8  #pc 30196
	add	%x24, %x24, %x5  #2030 pc 30200
	flw	%f1, 0(%x24)  #2030 pc 30204
	fadd	%f0, %f1, %f0  #2030 pc 30208
	addi	%x24, %x0, 8  #pc 30212
	add	%x24, %x24, %x5  #2030 pc 30216
	fsw	%f0, 0(%x24) #2030 pc 30220
	ret #pc 30224
	nop #pc 30228
be_else.9493: #pc 30228
	lw	%x5, 76(%x2)  #1958 pc 30232
	add	%x24, %x0, %x5  #1958 pc 30236
	lw	%x5, 0(%x24)  #1958 pc 30240
	slli	%x6, %x5, 2  #1959 pc 30244
	lw	%x7, 72(%x2)  #1959 pc 30248
	add	%x24, %x6, %x7  #1959 pc 30252
	lw	%x6, 0(%x24)  #1959 pc 30256
	sw	%x5, 128(%x2)  #1960 pc 30260
	sw	%x6, 132(%x2)  #1960 pc 30264
	addi	%x5, %x6, 0  #0 pc 30272
	sw	%x1, 140(%x2)  #1960 pc 30276
	addi	%x2, %x2, 144  #1960 pc 30280
	jal	%x1, o_reflectiontype.2686  #1960 pc 30284
	addi	%x2, %x2, -144  #1960 pc 30288
	lw	%x1, 140(%x2) #1960 pc 30292
	lw	%x6, 132(%x2)  #1961 pc 30296
	sw	%x5, 136(%x2)  #1961 pc 30300
	addi	%x5, %x6, 0  #0 pc 30308
	sw	%x1, 140(%x2)  #1961 pc 30312
	addi	%x2, %x2, 144  #1961 pc 30316
	jal	%x1, o_diffuse.2706  #1961 pc 30320
	addi	%x2, %x2, -144  #1961 pc 30324
	lw	%x1, 140(%x2) #1961 pc 30328
	flw	%f1, 88(%x2)  #1961 pc 30332
	fmul	%f0, %f0, %f1  #1961 pc 30336
	lw	%x5, 132(%x2)  #1963 pc 30340
	lw	%x6, 104(%x2)  #1963 pc 30344
	lw	%x22, 68(%x2)  #1963 pc 30348
	fsw	%f0, 144(%x2)  #1963 pc 30352
	sw	%x1, 156(%x2)  #1963 pc 30356
	lw	%x23, 0(%x22)  #1963 pc 30360
	addi	%x2, %x2, 160  #1963 pc 30364
	jalr	%x1, %x23, 0  #1963 pc 30368
	addi	%x2, %x2, -160  #1963 pc 30372
	lw	%x1, 156(%x2)  #1963 pc 30376
	lw	%x5, 64(%x2)  #1964 pc 30380
	lw	%x6, 60(%x2)  #1964 pc 30384
	sw	%x1, 156(%x2)  #1964 pc 30388
	addi	%x2, %x2, 160  #1964 pc 30392
	jal	%x1, veccpy.2654  #1964 pc 30396
	addi	%x2, %x2, -160  #1964 pc 30400
	lw	%x1, 156(%x2) #1964 pc 30404
	lw	%x5, 132(%x2)  #1965 pc 30408
	lw	%x6, 60(%x2)  #1965 pc 30412
	lw	%x22, 56(%x2)  #1965 pc 30416
	sw	%x1, 156(%x2)  #1965 pc 30420
	lw	%x23, 0(%x22)  #1965 pc 30424
	addi	%x2, %x2, 160  #1965 pc 30428
	jalr	%x1, %x23, 0  #1965 pc 30432
	addi	%x2, %x2, -160  #1965 pc 30436
	lw	%x1, 156(%x2)  #1965 pc 30440
	addi	%x6, %x0, 4  #0 pc 30444
	lw	%x5, 128(%x2)  #1968 pc 30448
	sw	%x1, 156(%x2)  #1968 pc 30452
	addi	%x2, %x2, 160  #1968 pc 30456
	jal	%x1, mul.2562  #1968 pc 30460
	addi	%x2, %x2, -160  #1968 pc 30464
	lw	%x1, 156(%x2) #1968 pc 30468
	lw	%x6, 52(%x2)  #1968 pc 30472
	add	%x24, %x0, %x6  #1968 pc 30476
	lw	%x6, 0(%x24)  #1968 pc 30480
	add	%x5, %x5, %x6  #1968 pc 30484
	lw	%x6, 100(%x2)  #1968 pc 30488
	slli	%x7, %x6, 2  #1968 pc 30492
	lw	%x9, 112(%x2)  #1968 pc 30496
	add	%x24, %x7, %x9  #1968 pc 30500
	sw	%x5, 0(%x24)  #1968 pc 30504
	lw	%x5, 48(%x2)  #1969 pc 30508
	sw	%x1, 156(%x2)  #1969 pc 30512
	addi	%x2, %x2, 160  #1969 pc 30516
	jal	%x1, p_intersection_points.2726  #1969 pc 30520
	addi	%x2, %x2, -160  #1969 pc 30524
	lw	%x1, 156(%x2) #1969 pc 30528
	lw	%x6, 100(%x2)  #1970 pc 30532
	slli	%x7, %x6, 2  #1970 pc 30536
	add	%x24, %x7, %x5  #1970 pc 30540
	lw	%x5, 0(%x24)  #1970 pc 30544
	lw	%x7, 60(%x2)  #1970 pc 30548
	addi	%x6, %x7, 0  #0 pc 30556
	sw	%x1, 156(%x2)  #1970 pc 30560
	addi	%x2, %x2, 160  #1970 pc 30564
	jal	%x1, veccpy.2654  #1970 pc 30568
	addi	%x2, %x2, -160  #1970 pc 30572
	lw	%x1, 156(%x2) #1970 pc 30576
	lw	%x5, 48(%x2)  #1973 pc 30580
	sw	%x1, 156(%x2)  #1973 pc 30584
	addi	%x2, %x2, 160  #1973 pc 30588
	jal	%x1, p_calc_diffuse.2730  #1973 pc 30592
	addi	%x2, %x2, -160  #1973 pc 30596
	lw	%x1, 156(%x2) #1973 pc 30600
	lw	%x6, 132(%x2)  #1974 pc 30604
	sw	%x5, 152(%x2)  #1974 pc 30608
	addi	%x5, %x6, 0  #0 pc 30616
	sw	%x1, 156(%x2)  #1974 pc 30620
	addi	%x2, %x2, 160  #1974 pc 30624
	jal	%x1, o_diffuse.2706  #1974 pc 30628
	addi	%x2, %x2, -160  #1974 pc 30632
	lw	%x1, 156(%x2) #1974 pc 30636
	fmv	%f1, l.6297  #0 pc 30640
	sw	%x1, 156(%x2)  #1974 pc 30644
	addi	%x2, %x2, 160  #1974 pc 30648
	jal	%x1, fless.2540  #1974 pc 30652
	addi	%x2, %x2, -160  #1974 pc 30656
	lw	%x1, 156(%x2) #1974 pc 30660
	beq	%x5, %x0, 12  #1974 pc 30664
	j	be_else.9501 #pc 30668
	nop #pc 30672
	addi	%x5, %x0, 1  #0 pc 30676
	lw	%x6, 100(%x2)  #1977 pc 30680
	slli	%x7, %x6, 2  #1977 pc 30684
	lw	%x9, 152(%x2)  #1977 pc 30688
	add	%x24, %x7, %x9  #1977 pc 30692
	sw	%x5, 0(%x24)  #1977 pc 30696
	lw	%x5, 48(%x2)  #1978 pc 30700
	sw	%x1, 156(%x2)  #1978 pc 30704
	addi	%x2, %x2, 160  #1978 pc 30708
	jal	%x1, p_energy.2732  #1978 pc 30712
	addi	%x2, %x2, -160  #1978 pc 30716
	lw	%x1, 156(%x2) #1978 pc 30720
	lw	%x6, 100(%x2)  #1979 pc 30724
	slli	%x7, %x6, 2  #1979 pc 30728
	add	%x24, %x7, %x5  #1979 pc 30732
	lw	%x7, 0(%x24)  #1979 pc 30736
	lw	%x9, 44(%x2)  #1979 pc 30740
	sw	%x5, 156(%x2)  #1979 pc 30744
	addi	%x6, %x9, 0  #0 pc 30752
	addi	%x5, %x7, 0  #0 pc 30760
	sw	%x1, 164(%x2)  #1979 pc 30764
	addi	%x2, %x2, 168  #1979 pc 30768
	jal	%x1, veccpy.2654  #1979 pc 30772
	addi	%x2, %x2, -168  #1979 pc 30776
	lw	%x1, 164(%x2) #1979 pc 30780
	lw	%x5, 100(%x2)  #1980 pc 30784
	slli	%x6, %x5, 2  #1980 pc 30788
	lw	%x7, 156(%x2)  #1980 pc 30792
	add	%x24, %x6, %x7  #1980 pc 30796
	lw	%x6, 0(%x24)  #1980 pc 30800
	fmv	%f0, l.6864  #0 pc 30804
	flw	%f1, 144(%x2)  #1980 pc 30808
	fmul	%f0, %f0, %f1  #1980 pc 30812
	addi	%x5, %x6, 0  #0 pc 30820
	sw	%x1, 164(%x2)  #1980 pc 30824
	addi	%x2, %x2, 168  #1980 pc 30828
	jal	%x1, vecscale.2675  #1980 pc 30832
	addi	%x2, %x2, -168  #1980 pc 30836
	lw	%x1, 164(%x2) #1980 pc 30840
	lw	%x5, 48(%x2)  #1981 pc 30844
	sw	%x1, 164(%x2)  #1981 pc 30848
	addi	%x2, %x2, 168  #1981 pc 30852
	jal	%x1, p_nvectors.2741  #1981 pc 30856
	addi	%x2, %x2, -168  #1981 pc 30860
	lw	%x1, 164(%x2) #1981 pc 30864
	lw	%x6, 100(%x2)  #1982 pc 30868
	slli	%x7, %x6, 2  #1982 pc 30872
	add	%x24, %x7, %x5  #1982 pc 30876
	lw	%x5, 0(%x24)  #1982 pc 30880
	lw	%x7, 40(%x2)  #1982 pc 30884
	addi	%x6, %x7, 0  #0 pc 30892
	sw	%x1, 164(%x2)  #1982 pc 30896
	addi	%x2, %x2, 168  #1982 pc 30900
	jal	%x1, veccpy.2654  #1982 pc 30904
	addi	%x2, %x2, -168  #1982 pc 30908
	lw	%x1, 164(%x2) #1982 pc 30912
	j	be_cont.9502 #pc 30916
	nop #pc 30920
be_else.9501: #pc 30920
	addi	%x5, %x0, 0  #0 pc 30924
	lw	%x6, 100(%x2)  #1975 pc 30928
	slli	%x7, %x6, 2  #1975 pc 30932
	lw	%x9, 152(%x2)  #1975 pc 30936
	add	%x24, %x7, %x9  #1975 pc 30940
	sw	%x5, 0(%x24)  #1975 pc 30944
be_cont.9502: #pc 30944
	fmv	%f0, l.6867  #0 pc 30948
	lw	%x5, 104(%x2)  #1985 pc 30952
	lw	%x6, 40(%x2)  #1985 pc 30956
	fsw	%f0, 160(%x2)  #1985 pc 30960
	sw	%x1, 172(%x2)  #1985 pc 30964
	addi	%x2, %x2, 176  #1985 pc 30968
	jal	%x1, veciprod.2660  #1985 pc 30972
	addi	%x2, %x2, -176  #1985 pc 30976
	lw	%x1, 172(%x2) #1985 pc 30980
	flw	%f1, 160(%x2)  #1985 pc 30984
	fmul	%f0, %f1, %f0  #1985 pc 30988
	lw	%x5, 104(%x2)  #1987 pc 30992
	lw	%x6, 40(%x2)  #1987 pc 30996
	sw	%x1, 172(%x2)  #1987 pc 31000
	addi	%x2, %x2, 176  #1987 pc 31004
	jal	%x1, vecaccum.2668  #1987 pc 31008
	addi	%x2, %x2, -176  #1987 pc 31012
	lw	%x1, 172(%x2) #1987 pc 31016
	lw	%x5, 132(%x2)  #1989 pc 31020
	sw	%x1, 172(%x2)  #1989 pc 31024
	addi	%x2, %x2, 176  #1989 pc 31028
	jal	%x1, o_hilight.2708  #1989 pc 31032
	addi	%x2, %x2, -176  #1989 pc 31036
	lw	%x1, 172(%x2) #1989 pc 31040
	flw	%f1, 88(%x2)  #1989 pc 31044
	fmul	%f0, %f1, %f0  #1989 pc 31048
	addi	%x5, %x0, 0  #0 pc 31052
	lw	%x6, 36(%x2)  #1992 pc 31056
	add	%x24, %x0, %x6  #1992 pc 31060
	lw	%x6, 0(%x24)  #1992 pc 31064
	lw	%x22, 16(%x2)  #1992 pc 31068
	fsw	%f0, 168(%x2)  #1992 pc 31072
	sw	%x1, 180(%x2)  #1992 pc 31076
	lw	%x23, 0(%x22)  #1992 pc 31080
	addi	%x2, %x2, 184  #1992 pc 31084
	jalr	%x1, %x23, 0  #1992 pc 31088
	addi	%x2, %x2, -184  #1992 pc 31092
	lw	%x1, 180(%x2)  #1992 pc 31096
	beq	%x5, %x0, 12  #1992 pc 31100
	j	be_else.9503 #pc 31104
	nop #pc 31108
	lw	%x5, 40(%x2)  #1993 pc 31112
	lw	%x6, 96(%x2)  #1993 pc 31116
	sw	%x1, 180(%x2)  #1993 pc 31120
	addi	%x2, %x2, 184  #1993 pc 31124
	jal	%x1, veciprod.2660  #1993 pc 31128
	addi	%x2, %x2, -184  #1993 pc 31132
	lw	%x1, 180(%x2) #1993 pc 31136
	sw	%x1, 180(%x2)  #1993 pc 31140
	addi	%x2, %x2, 184  #1993 pc 31144
	jal	%x1, fneg.2534  #1993 pc 31148
	addi	%x2, %x2, -184  #1993 pc 31152
	lw	%x1, 180(%x2) #1993 pc 31156
	flw	%f1, 144(%x2)  #1993 pc 31160
	fmul	%f0, %f0, %f1  #1993 pc 31164
	lw	%x5, 104(%x2)  #1994 pc 31168
	lw	%x6, 96(%x2)  #1994 pc 31172
	fsw	%f0, 176(%x2)  #1994 pc 31176
	sw	%x1, 188(%x2)  #1994 pc 31180
	addi	%x2, %x2, 192  #1994 pc 31184
	jal	%x1, veciprod.2660  #1994 pc 31188
	addi	%x2, %x2, -192  #1994 pc 31192
	lw	%x1, 188(%x2) #1994 pc 31196
	sw	%x1, 188(%x2)  #1994 pc 31200
	addi	%x2, %x2, 192  #1994 pc 31204
	jal	%x1, fneg.2534  #1994 pc 31208
	addi	%x2, %x2, -192  #1994 pc 31212
	lw	%x1, 188(%x2) #1994 pc 31216
	fadd	%f1, %f0, %f30  #1994 pc 31220
	flw	%f0, 176(%x2)  #1995 pc 31224
	flw	%f2, 168(%x2)  #1995 pc 31228
	lw	%x22, 32(%x2)  #1995 pc 31232
	sw	%x1, 188(%x2)  #1995 pc 31236
	lw	%x23, 0(%x22)  #1995 pc 31240
	addi	%x2, %x2, 192  #1995 pc 31244
	jalr	%x1, %x23, 0  #1995 pc 31248
	addi	%x2, %x2, -192  #1995 pc 31252
	lw	%x1, 188(%x2)  #1995 pc 31256
	j	be_cont.9504 #pc 31260
	nop #pc 31264
be_else.9503: #pc 31264
be_cont.9504: #pc 31264
	lw	%x5, 60(%x2)  #1999 pc 31268
	lw	%x22, 12(%x2)  #1999 pc 31272
	sw	%x1, 188(%x2)  #1999 pc 31276
	lw	%x23, 0(%x22)  #1999 pc 31280
	addi	%x2, %x2, 192  #1999 pc 31284
	jalr	%x1, %x23, 0  #1999 pc 31288
	addi	%x2, %x2, -192  #1999 pc 31292
	lw	%x1, 188(%x2)  #1999 pc 31296
	lw	%x5, 8(%x2)  #2000 pc 31300
	add	%x24, %x0, %x5  #2000 pc 31304
	lw	%x5, 0(%x24)  #2000 pc 31308
	addi	%x5, %x5, -1  #2000 pc 31312
	flw	%f0, 144(%x2)  #2000 pc 31316
	flw	%f1, 168(%x2)  #2000 pc 31320
	lw	%x6, 104(%x2)  #2000 pc 31324
	lw	%x22, 4(%x2)  #2000 pc 31328
	sw	%x1, 188(%x2)  #2000 pc 31332
	lw	%x23, 0(%x22)  #2000 pc 31336
	addi	%x2, %x2, 192  #2000 pc 31340
	jalr	%x1, %x23, 0  #2000 pc 31344
	addi	%x2, %x2, -192  #2000 pc 31348
	lw	%x1, 188(%x2)  #2000 pc 31352
	fmv	%f0, l.6871  #0 pc 31356
	flw	%f1, 88(%x2)  #2003 pc 31360
	sw	%x1, 188(%x2)  #2003 pc 31364
	addi	%x2, %x2, 192  #2003 pc 31368
	jal	%x1, fless.2540  #2003 pc 31372
	addi	%x2, %x2, -192  #2003 pc 31376
	lw	%x1, 188(%x2) #2003 pc 31380
	beq	%x5, %x0, 12  #2003 pc 31384
	j	be_else.9505 #pc 31388
	nop #pc 31392
	ret #pc 31396
	nop #pc 31400
be_else.9505: #pc 31400
	lw	%x5, 100(%x2)  #2005 pc 31404
	addi	%x24, %x0, 4  #pc 31408
	bge	%x5, %x24, 12  #2005 pc 31412
	j	bge_else.9507 #pc 31416
	nop #pc 31420
	j	bge_cont.9508 #pc 31424
	nop #pc 31428
bge_else.9507: #pc 31428
	addi	%x6, %x5, 1  #2006 pc 31432
	addi	%x7, %x0, -1  #0 pc 31436
	slli	%x6, %x6, 2  #2006 pc 31440
	lw	%x9, 112(%x2)  #2006 pc 31444
	add	%x24, %x6, %x9  #2006 pc 31448
	sw	%x7, 0(%x24)  #2006 pc 31452
bge_cont.9508: #pc 31452
	lw	%x6, 136(%x2)  #2009 pc 31456
	addi	%x24, %x0, 2  #pc 31460
	beq	%x6, %x24, 12  #2009 pc 31464
	j	be_else.9509 #pc 31468
	nop #pc 31472
	fmv	%f0, l.6305  #0 pc 31476
	lw	%x6, 132(%x2)  #2010 pc 31480
	fsw	%f0, 184(%x2)  #2010 pc 31484
	addi	%x5, %x6, 0  #0 pc 31492
	sw	%x1, 196(%x2)  #2010 pc 31496
	addi	%x2, %x2, 200  #2010 pc 31500
	jal	%x1, o_diffuse.2706  #2010 pc 31504
	addi	%x2, %x2, -200  #2010 pc 31508
	lw	%x1, 196(%x2) #2010 pc 31512
	flw	%f1, 184(%x2)  #2010 pc 31516
	fsub	%f0, %f1, %f0  #2010 pc 31520
	flw	%f1, 88(%x2)  #2010 pc 31524
	fmul	%f0, %f1, %f0  #2010 pc 31528
	lw	%x5, 100(%x2)  #2011 pc 31532
	addi	%x5, %x5, 1  #2011 pc 31536
	lw	%x6, 0(%x2)  #2011 pc 31540
	add	%x24, %x0, %x6  #2011 pc 31544
	flw	%f1, 0(%x24)  #2011 pc 31548
	flw	%f2, 24(%x2)  #2011 pc 31552
	fadd	%f1, %f2, %f1  #2011 pc 31556
	lw	%x6, 104(%x2)  #2011 pc 31560
	lw	%x7, 48(%x2)  #2011 pc 31564
	lw	%x22, 20(%x2)  #2011 pc 31568
	lw	%x23, 0(%x22)  #2011 pc 31572
	jalr	%x0, %x23, 0  #2011 pc 31576
	nop #pc 31580
be_else.9509: #pc 31580
	ret #pc 31584
	nop #pc 31588
ble_else.9492: #pc 31588
	ret #pc 31592
	nop #pc 31596
trace_diffuse_ray.2969:  #pc 31596
	addi	%x24, %x0, 48  #pc 31600
	add	%x24, %x24, %x22  #0 pc 31604
	lw	%x6, 0(%x24)  #0 pc 31608
	addi	%x24, %x0, 44  #pc 31612
	add	%x24, %x24, %x22  #0 pc 31616
	lw	%x7, 0(%x24)  #0 pc 31620
	addi	%x24, %x0, 40  #pc 31624
	add	%x24, %x24, %x22  #0 pc 31628
	lw	%x9, 0(%x24)  #0 pc 31632
	addi	%x24, %x0, 36  #pc 31636
	add	%x24, %x24, %x22  #0 pc 31640
	lw	%x10, 0(%x24)  #0 pc 31644
	addi	%x24, %x0, 32  #pc 31648
	add	%x24, %x24, %x22  #0 pc 31652
	lw	%x11, 0(%x24)  #0 pc 31656
	addi	%x24, %x0, 28  #pc 31660
	add	%x24, %x24, %x22  #0 pc 31664
	lw	%x12, 0(%x24)  #0 pc 31668
	addi	%x24, %x0, 24  #pc 31672
	add	%x24, %x24, %x22  #0 pc 31676
	lw	%x13, 0(%x24)  #0 pc 31680
	addi	%x24, %x0, 20  #pc 31684
	add	%x24, %x24, %x22  #0 pc 31688
	lw	%x14, 0(%x24)  #0 pc 31692
	addi	%x24, %x0, 16  #pc 31696
	add	%x24, %x24, %x22  #0 pc 31700
	lw	%x15, 0(%x24)  #0 pc 31704
	addi	%x24, %x0, 12  #pc 31708
	add	%x24, %x24, %x22  #0 pc 31712
	lw	%x16, 0(%x24)  #0 pc 31716
	addi	%x24, %x0, 8  #pc 31720
	add	%x24, %x24, %x22  #0 pc 31724
	lw	%x17, 0(%x24)  #0 pc 31728
	addi	%x24, %x0, 4  #pc 31732
	add	%x24, %x24, %x22  #0 pc 31736
	lw	%x18, 0(%x24)  #0 pc 31740
	sw	%x7, 0(%x2)  #2049 pc 31744
	sw	%x18, 4(%x2)  #2049 pc 31748
	fsw	%f0, 8(%x2)  #2049 pc 31752
	sw	%x13, 16(%x2)  #2049 pc 31756
	sw	%x12, 20(%x2)  #2049 pc 31760
	sw	%x9, 24(%x2)  #2049 pc 31764
	sw	%x10, 28(%x2)  #2049 pc 31768
	sw	%x15, 32(%x2)  #2049 pc 31772
	sw	%x6, 36(%x2)  #2049 pc 31776
	sw	%x17, 40(%x2)  #2049 pc 31780
	sw	%x5, 44(%x2)  #2049 pc 31784
	sw	%x11, 48(%x2)  #2049 pc 31788
	sw	%x16, 52(%x2)  #2049 pc 31792
	addi	%x22, %x14, 0  #0 pc 31800
	sw	%x1, 60(%x2)  #2049 pc 31804
	lw	%x23, 0(%x22)  #2049 pc 31808
	addi	%x2, %x2, 64  #2049 pc 31812
	jalr	%x1, %x23, 0  #2049 pc 31816
	addi	%x2, %x2, -64  #2049 pc 31820
	lw	%x1, 60(%x2)  #2049 pc 31824
	beq	%x5, %x0, 12  #2049 pc 31828
	j	be_else.9512 #pc 31832
	nop #pc 31836
	ret #pc 31840
	nop #pc 31844
be_else.9512: #pc 31844
	lw	%x5, 52(%x2)  #2050 pc 31848
	add	%x24, %x0, %x5  #2050 pc 31852
	lw	%x5, 0(%x24)  #2050 pc 31856
	slli	%x5, %x5, 2  #2050 pc 31860
	lw	%x6, 48(%x2)  #2050 pc 31864
	add	%x24, %x5, %x6  #2050 pc 31868
	lw	%x5, 0(%x24)  #2050 pc 31872
	lw	%x6, 44(%x2)  #2051 pc 31876
	sw	%x5, 56(%x2)  #2051 pc 31880
	addi	%x5, %x6, 0  #0 pc 31888
	sw	%x1, 60(%x2)  #2051 pc 31892
	addi	%x2, %x2, 64  #2051 pc 31896
	jal	%x1, d_vec.2743  #2051 pc 31900
	addi	%x2, %x2, -64  #2051 pc 31904
	lw	%x1, 60(%x2) #2051 pc 31908
	addi	%x6, %x5, 0  #2051 pc 31912
	lw	%x5, 56(%x2)  #2051 pc 31916
	lw	%x22, 40(%x2)  #2051 pc 31920
	sw	%x1, 60(%x2)  #2051 pc 31924
	lw	%x23, 0(%x22)  #2051 pc 31928
	addi	%x2, %x2, 64  #2051 pc 31932
	jalr	%x1, %x23, 0  #2051 pc 31936
	addi	%x2, %x2, -64  #2051 pc 31940
	lw	%x1, 60(%x2)  #2051 pc 31944
	lw	%x5, 56(%x2)  #2052 pc 31948
	lw	%x6, 32(%x2)  #2052 pc 31952
	lw	%x22, 36(%x2)  #2052 pc 31956
	sw	%x1, 60(%x2)  #2052 pc 31960
	lw	%x23, 0(%x22)  #2052 pc 31964
	addi	%x2, %x2, 64  #2052 pc 31968
	jalr	%x1, %x23, 0  #2052 pc 31972
	addi	%x2, %x2, -64  #2052 pc 31976
	lw	%x1, 60(%x2)  #2052 pc 31980
	addi	%x5, %x0, 0  #0 pc 31984
	lw	%x6, 28(%x2)  #2055 pc 31988
	add	%x24, %x0, %x6  #2055 pc 31992
	lw	%x6, 0(%x24)  #2055 pc 31996
	lw	%x22, 24(%x2)  #2055 pc 32000
	sw	%x1, 60(%x2)  #2055 pc 32004
	lw	%x23, 0(%x22)  #2055 pc 32008
	addi	%x2, %x2, 64  #2055 pc 32012
	jalr	%x1, %x23, 0  #2055 pc 32016
	addi	%x2, %x2, -64  #2055 pc 32020
	lw	%x1, 60(%x2)  #2055 pc 32024
	beq	%x5, %x0, 12  #2055 pc 32028
	j	be_else.9514 #pc 32032
	nop #pc 32036
	lw	%x5, 20(%x2)  #2056 pc 32040
	lw	%x6, 16(%x2)  #2056 pc 32044
	sw	%x1, 60(%x2)  #2056 pc 32048
	addi	%x2, %x2, 64  #2056 pc 32052
	jal	%x1, veciprod.2660  #2056 pc 32056
	addi	%x2, %x2, -64  #2056 pc 32060
	lw	%x1, 60(%x2) #2056 pc 32064
	sw	%x1, 60(%x2)  #2056 pc 32068
	addi	%x2, %x2, 64  #2056 pc 32072
	jal	%x1, fneg.2534  #2056 pc 32076
	addi	%x2, %x2, -64  #2056 pc 32080
	lw	%x1, 60(%x2) #2056 pc 32084
	fsw	%f0, 64(%x2)  #2057 pc 32088
	sw	%x1, 76(%x2)  #2057 pc 32092
	addi	%x2, %x2, 80  #2057 pc 32096
	jal	%x1, fispos.2530  #2057 pc 32100
	addi	%x2, %x2, -80  #2057 pc 32104
	lw	%x1, 76(%x2) #2057 pc 32108
	beq	%x5, %x0, 12  #2057 pc 32112
	j	be_else.9516 #pc 32116
	nop #pc 32120
	fmv	%f0, l.6293  #0 pc 32124
	j	be_cont.9517 #pc 32128
	nop #pc 32132
be_else.9516: #pc 32132
	flw	%f0, 64(%x2)  #2057 pc 32136
be_cont.9517: #pc 32136
	flw	%f1, 8(%x2)  #2058 pc 32140
	fmul	%f0, %f1, %f0  #2058 pc 32144
	lw	%x5, 56(%x2)  #2058 pc 32148
	fsw	%f0, 72(%x2)  #2058 pc 32152
	sw	%x1, 84(%x2)  #2058 pc 32156
	addi	%x2, %x2, 88  #2058 pc 32160
	jal	%x1, o_diffuse.2706  #2058 pc 32164
	addi	%x2, %x2, -88  #2058 pc 32168
	lw	%x1, 84(%x2) #2058 pc 32172
	flw	%f1, 72(%x2)  #2058 pc 32176
	fmul	%f0, %f1, %f0  #2058 pc 32180
	lw	%x5, 4(%x2)  #2058 pc 32184
	lw	%x6, 0(%x2)  #2058 pc 32188
	j	vecaccum.2668  #2058 pc 32192
	nop #pc 32196
be_else.9514: #pc 32196
	ret #pc 32200
	nop #pc 32204
iter_trace_diffuse_rays.2972:  #pc 32204
	addi	%x24, %x0, 4  #pc 32208
	add	%x24, %x24, %x22  #0 pc 32212
	lw	%x10, 0(%x24)  #0 pc 32216
	bge	%x9, %x0, 12  #2066 pc 32220
	j	bge_else.9519 #pc 32224
	nop #pc 32228
	slli	%x11, %x9, 2  #2067 pc 32232
	add	%x24, %x11, %x5  #2067 pc 32236
	lw	%x11, 0(%x24)  #2067 pc 32240
	sw	%x7, 0(%x2)  #2067 pc 32244
	sw	%x22, 4(%x2)  #2067 pc 32248
	sw	%x10, 8(%x2)  #2067 pc 32252
	sw	%x5, 12(%x2)  #2067 pc 32256
	sw	%x9, 16(%x2)  #2067 pc 32260
	sw	%x6, 20(%x2)  #2067 pc 32264
	addi	%x5, %x11, 0  #0 pc 32272
	sw	%x1, 28(%x2)  #2067 pc 32276
	addi	%x2, %x2, 32  #2067 pc 32280
	jal	%x1, d_vec.2743  #2067 pc 32284
	addi	%x2, %x2, -32  #2067 pc 32288
	lw	%x1, 28(%x2) #2067 pc 32292
	lw	%x6, 20(%x2)  #2067 pc 32296
	sw	%x1, 28(%x2)  #2067 pc 32300
	addi	%x2, %x2, 32  #2067 pc 32304
	jal	%x1, veciprod.2660  #2067 pc 32308
	addi	%x2, %x2, -32  #2067 pc 32312
	lw	%x1, 28(%x2) #2067 pc 32316
	fsw	%f0, 24(%x2)  #2071 pc 32320
	sw	%x1, 36(%x2)  #2071 pc 32324
	addi	%x2, %x2, 40  #2071 pc 32328
	jal	%x1, fisneg.2532  #2071 pc 32332
	addi	%x2, %x2, -40  #2071 pc 32336
	lw	%x1, 36(%x2) #2071 pc 32340
	beq	%x5, %x0, 12  #2071 pc 32344
	j	be_else.9520 #pc 32348
	nop #pc 32352
	lw	%x5, 16(%x2)  #2074 pc 32356
	slli	%x6, %x5, 2  #2074 pc 32360
	lw	%x7, 12(%x2)  #2074 pc 32364
	add	%x24, %x6, %x7  #2074 pc 32368
	lw	%x6, 0(%x24)  #2074 pc 32372
	fmv	%f0, l.6893  #0 pc 32376
	flw	%f1, 24(%x2)  #2074 pc 32380
	fdiv	%f0, %f1, %f0  #2074 pc 32384
	lw	%x22, 8(%x2)  #2074 pc 32388
	addi	%x5, %x6, 0  #0 pc 32396
	sw	%x1, 36(%x2)  #2074 pc 32400
	lw	%x23, 0(%x22)  #2074 pc 32404
	addi	%x2, %x2, 40  #2074 pc 32408
	jalr	%x1, %x23, 0  #2074 pc 32412
	addi	%x2, %x2, -40  #2074 pc 32416
	lw	%x1, 36(%x2)  #2074 pc 32420
	j	be_cont.9521 #pc 32424
	nop #pc 32428
be_else.9520: #pc 32428
	lw	%x5, 16(%x2)  #2072 pc 32432
	addi	%x6, %x5, 1  #2072 pc 32436
	slli	%x6, %x6, 2  #2072 pc 32440
	lw	%x7, 12(%x2)  #2072 pc 32444
	add	%x24, %x6, %x7  #2072 pc 32448
	lw	%x6, 0(%x24)  #2072 pc 32452
	fmv	%f0, l.6890  #0 pc 32456
	flw	%f1, 24(%x2)  #2072 pc 32460
	fdiv	%f0, %f1, %f0  #2072 pc 32464
	lw	%x22, 8(%x2)  #2072 pc 32468
	addi	%x5, %x6, 0  #0 pc 32476
	sw	%x1, 36(%x2)  #2072 pc 32480
	lw	%x23, 0(%x22)  #2072 pc 32484
	addi	%x2, %x2, 40  #2072 pc 32488
	jalr	%x1, %x23, 0  #2072 pc 32492
	addi	%x2, %x2, -40  #2072 pc 32496
	lw	%x1, 36(%x2)  #2072 pc 32500
be_cont.9521: #pc 32500
	lw	%x5, 16(%x2)  #2076 pc 32504
	addi	%x9, %x5, -2  #2076 pc 32508
	lw	%x5, 12(%x2)  #2076 pc 32512
	lw	%x6, 20(%x2)  #2076 pc 32516
	lw	%x7, 0(%x2)  #2076 pc 32520
	lw	%x22, 4(%x2)  #2076 pc 32524
	lw	%x23, 0(%x22)  #2076 pc 32528
	jalr	%x0, %x23, 0  #2076 pc 32532
	nop #pc 32536
bge_else.9519: #pc 32536
	ret #pc 32540
	nop #pc 32544
trace_diffuse_rays.2977:  #pc 32544
	addi	%x24, %x0, 8  #pc 32548
	add	%x24, %x24, %x22  #2082 pc 32552
	lw	%x9, 0(%x24)  #2082 pc 32556
	addi	%x24, %x0, 4  #pc 32560
	add	%x24, %x24, %x22  #2082 pc 32564
	lw	%x10, 0(%x24)  #2082 pc 32568
	sw	%x7, 0(%x2)  #2082 pc 32572
	sw	%x6, 4(%x2)  #2082 pc 32576
	sw	%x5, 8(%x2)  #2082 pc 32580
	sw	%x10, 12(%x2)  #2082 pc 32584
	addi	%x5, %x7, 0  #0 pc 32592
	addi	%x22, %x9, 0  #0 pc 32600
	sw	%x1, 20(%x2)  #2082 pc 32604
	lw	%x23, 0(%x22)  #2082 pc 32608
	addi	%x2, %x2, 24  #2082 pc 32612
	jalr	%x1, %x23, 0  #2082 pc 32616
	addi	%x2, %x2, -24  #2082 pc 32620
	lw	%x1, 20(%x2)  #2082 pc 32624
	addi	%x9, %x0, 118  #0 pc 32628
	lw	%x5, 8(%x2)  #2086 pc 32632
	lw	%x6, 4(%x2)  #2086 pc 32636
	lw	%x7, 0(%x2)  #2086 pc 32640
	lw	%x22, 12(%x2)  #2086 pc 32644
	lw	%x23, 0(%x22)  #2086 pc 32648
	jalr	%x0, %x23, 0  #2086 pc 32652
	nop #pc 32656
trace_diffuse_ray_80percent.2981:  #pc 32656
	addi	%x24, %x0, 8  #pc 32660
	add	%x24, %x24, %x22  #0 pc 32664
	lw	%x9, 0(%x24)  #0 pc 32668
	addi	%x24, %x0, 4  #pc 32672
	add	%x24, %x24, %x22  #0 pc 32676
	lw	%x10, 0(%x24)  #0 pc 32680
	sw	%x7, 0(%x2)  #2093 pc 32684
	sw	%x6, 4(%x2)  #2093 pc 32688
	sw	%x9, 8(%x2)  #2093 pc 32692
	sw	%x10, 12(%x2)  #2093 pc 32696
	sw	%x5, 16(%x2)  #2093 pc 32700
	beq	%x5, %x0, 12  #2093 pc 32704
	j	be_else.9523 #pc 32708
	nop #pc 32712
	j	be_cont.9524 #pc 32716
	nop #pc 32720
be_else.9523: #pc 32720
	add	%x24, %x0, %x10  #2094 pc 32724
	lw	%x11, 0(%x24)  #2094 pc 32728
	addi	%x5, %x11, 0  #0 pc 32736
	addi	%x22, %x9, 0  #0 pc 32744
	sw	%x1, 20(%x2)  #2094 pc 32748
	lw	%x23, 0(%x22)  #2094 pc 32752
	addi	%x2, %x2, 24  #2094 pc 32756
	jalr	%x1, %x23, 0  #2094 pc 32760
	addi	%x2, %x2, -24  #2094 pc 32764
	lw	%x1, 20(%x2)  #2094 pc 32768
be_cont.9524: #pc 32768
	lw	%x5, 16(%x2)  #2097 pc 32772
	addi	%x24, %x0, 1  #pc 32776
	beq	%x5, %x24, 12  #2097 pc 32780
	j	be_else.9525 #pc 32784
	nop #pc 32788
	j	be_cont.9526 #pc 32792
	nop #pc 32796
be_else.9525: #pc 32796
	lw	%x6, 12(%x2)  #2098 pc 32800
	addi	%x24, %x0, 4  #pc 32804
	add	%x24, %x24, %x6  #2098 pc 32808
	lw	%x7, 0(%x24)  #2098 pc 32812
	lw	%x9, 4(%x2)  #2098 pc 32816
	lw	%x10, 0(%x2)  #2098 pc 32820
	lw	%x22, 8(%x2)  #2098 pc 32824
	addi	%x6, %x9, 0  #0 pc 32832
	addi	%x5, %x7, 0  #0 pc 32840
	addi	%x7, %x10, 0  #0 pc 32848
	sw	%x1, 20(%x2)  #2098 pc 32852
	lw	%x23, 0(%x22)  #2098 pc 32856
	addi	%x2, %x2, 24  #2098 pc 32860
	jalr	%x1, %x23, 0  #2098 pc 32864
	addi	%x2, %x2, -24  #2098 pc 32868
	lw	%x1, 20(%x2)  #2098 pc 32872
be_cont.9526: #pc 32872
	lw	%x5, 16(%x2)  #2101 pc 32876
	addi	%x24, %x0, 2  #pc 32880
	beq	%x5, %x24, 12  #2101 pc 32884
	j	be_else.9527 #pc 32888
	nop #pc 32892
	j	be_cont.9528 #pc 32896
	nop #pc 32900
be_else.9527: #pc 32900
	lw	%x6, 12(%x2)  #2102 pc 32904
	addi	%x24, %x0, 8  #pc 32908
	add	%x24, %x24, %x6  #2102 pc 32912
	lw	%x7, 0(%x24)  #2102 pc 32916
	lw	%x9, 4(%x2)  #2102 pc 32920
	lw	%x10, 0(%x2)  #2102 pc 32924
	lw	%x22, 8(%x2)  #2102 pc 32928
	addi	%x6, %x9, 0  #0 pc 32936
	addi	%x5, %x7, 0  #0 pc 32944
	addi	%x7, %x10, 0  #0 pc 32952
	sw	%x1, 20(%x2)  #2102 pc 32956
	lw	%x23, 0(%x22)  #2102 pc 32960
	addi	%x2, %x2, 24  #2102 pc 32964
	jalr	%x1, %x23, 0  #2102 pc 32968
	addi	%x2, %x2, -24  #2102 pc 32972
	lw	%x1, 20(%x2)  #2102 pc 32976
be_cont.9528: #pc 32976
	lw	%x5, 16(%x2)  #2105 pc 32980
	addi	%x24, %x0, 3  #pc 32984
	beq	%x5, %x24, 12  #2105 pc 32988
	j	be_else.9529 #pc 32992
	nop #pc 32996
	j	be_cont.9530 #pc 33000
	nop #pc 33004
be_else.9529: #pc 33004
	lw	%x6, 12(%x2)  #2106 pc 33008
	addi	%x24, %x0, 12  #pc 33012
	add	%x24, %x24, %x6  #2106 pc 33016
	lw	%x7, 0(%x24)  #2106 pc 33020
	lw	%x9, 4(%x2)  #2106 pc 33024
	lw	%x10, 0(%x2)  #2106 pc 33028
	lw	%x22, 8(%x2)  #2106 pc 33032
	addi	%x6, %x9, 0  #0 pc 33040
	addi	%x5, %x7, 0  #0 pc 33048
	addi	%x7, %x10, 0  #0 pc 33056
	sw	%x1, 20(%x2)  #2106 pc 33060
	lw	%x23, 0(%x22)  #2106 pc 33064
	addi	%x2, %x2, 24  #2106 pc 33068
	jalr	%x1, %x23, 0  #2106 pc 33072
	addi	%x2, %x2, -24  #2106 pc 33076
	lw	%x1, 20(%x2)  #2106 pc 33080
be_cont.9530: #pc 33080
	lw	%x5, 16(%x2)  #2109 pc 33084
	addi	%x24, %x0, 4  #pc 33088
	beq	%x5, %x24, 12  #2109 pc 33092
	j	be_else.9531 #pc 33096
	nop #pc 33100
	ret #pc 33104
	nop #pc 33108
be_else.9531: #pc 33108
	lw	%x5, 12(%x2)  #2110 pc 33112
	addi	%x24, %x0, 16  #pc 33116
	add	%x24, %x24, %x5  #2110 pc 33120
	lw	%x5, 0(%x24)  #2110 pc 33124
	lw	%x6, 4(%x2)  #2110 pc 33128
	lw	%x7, 0(%x2)  #2110 pc 33132
	lw	%x22, 8(%x2)  #2110 pc 33136
	lw	%x23, 0(%x22)  #2110 pc 33140
	jalr	%x0, %x23, 0  #2110 pc 33144
	nop #pc 33148
calc_diffuse_using_1point.2985:  #pc 33148
	addi	%x24, %x0, 12  #pc 33152
	add	%x24, %x24, %x22  #2119 pc 33156
	lw	%x7, 0(%x24)  #2119 pc 33160
	addi	%x24, %x0, 8  #pc 33164
	add	%x24, %x24, %x22  #2119 pc 33168
	lw	%x9, 0(%x24)  #2119 pc 33172
	addi	%x24, %x0, 4  #pc 33176
	add	%x24, %x24, %x22  #2119 pc 33180
	lw	%x10, 0(%x24)  #2119 pc 33184
	sw	%x9, 0(%x2)  #2119 pc 33188
	sw	%x7, 4(%x2)  #2119 pc 33192
	sw	%x10, 8(%x2)  #2119 pc 33196
	sw	%x6, 12(%x2)  #2119 pc 33200
	sw	%x5, 16(%x2)  #2119 pc 33204
	sw	%x1, 20(%x2)  #2119 pc 33208
	addi	%x2, %x2, 24  #2119 pc 33212
	jal	%x1, p_received_ray_20percent.2734  #2119 pc 33216
	addi	%x2, %x2, -24  #2119 pc 33220
	lw	%x1, 20(%x2) #2119 pc 33224
	lw	%x6, 16(%x2)  #2120 pc 33228
	sw	%x5, 20(%x2)  #2120 pc 33232
	addi	%x5, %x6, 0  #0 pc 33240
	sw	%x1, 28(%x2)  #2120 pc 33244
	addi	%x2, %x2, 32  #2120 pc 33248
	jal	%x1, p_nvectors.2741  #2120 pc 33252
	addi	%x2, %x2, -32  #2120 pc 33256
	lw	%x1, 28(%x2) #2120 pc 33260
	lw	%x6, 16(%x2)  #2121 pc 33264
	sw	%x5, 24(%x2)  #2121 pc 33268
	addi	%x5, %x6, 0  #0 pc 33276
	sw	%x1, 28(%x2)  #2121 pc 33280
	addi	%x2, %x2, 32  #2121 pc 33284
	jal	%x1, p_intersection_points.2726  #2121 pc 33288
	addi	%x2, %x2, -32  #2121 pc 33292
	lw	%x1, 28(%x2) #2121 pc 33296
	lw	%x6, 16(%x2)  #2122 pc 33300
	sw	%x5, 28(%x2)  #2122 pc 33304
	addi	%x5, %x6, 0  #0 pc 33312
	sw	%x1, 36(%x2)  #2122 pc 33316
	addi	%x2, %x2, 40  #2122 pc 33320
	jal	%x1, p_energy.2732  #2122 pc 33324
	addi	%x2, %x2, -40  #2122 pc 33328
	lw	%x1, 36(%x2) #2122 pc 33332
	lw	%x6, 12(%x2)  #2124 pc 33336
	slli	%x7, %x6, 2  #2124 pc 33340
	lw	%x9, 20(%x2)  #2124 pc 33344
	add	%x24, %x7, %x9  #2124 pc 33348
	lw	%x7, 0(%x24)  #2124 pc 33352
	lw	%x9, 8(%x2)  #2124 pc 33356
	sw	%x5, 32(%x2)  #2124 pc 33360
	addi	%x6, %x7, 0  #0 pc 33368
	addi	%x5, %x9, 0  #0 pc 33376
	sw	%x1, 36(%x2)  #2124 pc 33380
	addi	%x2, %x2, 40  #2124 pc 33384
	jal	%x1, veccpy.2654  #2124 pc 33388
	addi	%x2, %x2, -40  #2124 pc 33392
	lw	%x1, 36(%x2) #2124 pc 33396
	lw	%x5, 16(%x2)  #2126 pc 33400
	sw	%x1, 36(%x2)  #2126 pc 33404
	addi	%x2, %x2, 40  #2126 pc 33408
	jal	%x1, p_group_id.2736  #2126 pc 33412
	addi	%x2, %x2, -40  #2126 pc 33416
	lw	%x1, 36(%x2) #2126 pc 33420
	lw	%x6, 12(%x2)  #2127 pc 33424
	slli	%x7, %x6, 2  #2127 pc 33428
	lw	%x9, 24(%x2)  #2127 pc 33432
	add	%x24, %x7, %x9  #2127 pc 33436
	lw	%x7, 0(%x24)  #2127 pc 33440
	slli	%x9, %x6, 2  #2128 pc 33444
	lw	%x10, 28(%x2)  #2128 pc 33448
	add	%x24, %x9, %x10  #2128 pc 33452
	lw	%x9, 0(%x24)  #2128 pc 33456
	lw	%x22, 4(%x2)  #2125 pc 33460
	addi	%x6, %x7, 0  #0 pc 33468
	addi	%x7, %x9, 0  #0 pc 33476
	sw	%x1, 36(%x2)  #2125 pc 33480
	lw	%x23, 0(%x22)  #2125 pc 33484
	addi	%x2, %x2, 40  #2125 pc 33488
	jalr	%x1, %x23, 0  #2125 pc 33492
	addi	%x2, %x2, -40  #2125 pc 33496
	lw	%x1, 36(%x2)  #2125 pc 33500
	lw	%x5, 12(%x2)  #2129 pc 33504
	slli	%x5, %x5, 2  #2129 pc 33508
	lw	%x6, 32(%x2)  #2129 pc 33512
	add	%x24, %x5, %x6  #2129 pc 33516
	lw	%x6, 0(%x24)  #2129 pc 33520
	lw	%x5, 0(%x2)  #2129 pc 33524
	lw	%x7, 8(%x2)  #2129 pc 33528
	j	vecaccumv.2678  #2129 pc 33532
	nop #pc 33536
calc_diffuse_using_5points.2988:  #pc 33536
	addi	%x24, %x0, 8  #pc 33540
	add	%x24, %x24, %x22  #0 pc 33544
	lw	%x11, 0(%x24)  #0 pc 33548
	addi	%x24, %x0, 4  #pc 33552
	add	%x24, %x24, %x22  #0 pc 33556
	lw	%x12, 0(%x24)  #0 pc 33560
	slli	%x13, %x5, 2  #2138 pc 33564
	add	%x24, %x13, %x6  #2138 pc 33568
	lw	%x6, 0(%x24)  #2138 pc 33572
	sw	%x11, 0(%x2)  #2138 pc 33576
	sw	%x12, 4(%x2)  #2138 pc 33580
	sw	%x10, 8(%x2)  #2138 pc 33584
	sw	%x9, 12(%x2)  #2138 pc 33588
	sw	%x7, 16(%x2)  #2138 pc 33592
	sw	%x5, 20(%x2)  #2138 pc 33596
	addi	%x5, %x6, 0  #0 pc 33604
	sw	%x1, 28(%x2)  #2138 pc 33608
	addi	%x2, %x2, 32  #2138 pc 33612
	jal	%x1, p_received_ray_20percent.2734  #2138 pc 33616
	addi	%x2, %x2, -32  #2138 pc 33620
	lw	%x1, 28(%x2) #2138 pc 33624
	lw	%x6, 20(%x2)  #2139 pc 33628
	addi	%x7, %x6, -1  #2139 pc 33632
	slli	%x7, %x7, 2  #2139 pc 33636
	lw	%x9, 16(%x2)  #2139 pc 33640
	add	%x24, %x7, %x9  #2139 pc 33644
	lw	%x7, 0(%x24)  #2139 pc 33648
	sw	%x5, 24(%x2)  #2139 pc 33652
	addi	%x5, %x7, 0  #0 pc 33660
	sw	%x1, 28(%x2)  #2139 pc 33664
	addi	%x2, %x2, 32  #2139 pc 33668
	jal	%x1, p_received_ray_20percent.2734  #2139 pc 33672
	addi	%x2, %x2, -32  #2139 pc 33676
	lw	%x1, 28(%x2) #2139 pc 33680
	lw	%x6, 20(%x2)  #2140 pc 33684
	slli	%x7, %x6, 2  #2140 pc 33688
	lw	%x9, 16(%x2)  #2140 pc 33692
	add	%x24, %x7, %x9  #2140 pc 33696
	lw	%x7, 0(%x24)  #2140 pc 33700
	sw	%x5, 28(%x2)  #2140 pc 33704
	addi	%x5, %x7, 0  #0 pc 33712
	sw	%x1, 36(%x2)  #2140 pc 33716
	addi	%x2, %x2, 40  #2140 pc 33720
	jal	%x1, p_received_ray_20percent.2734  #2140 pc 33724
	addi	%x2, %x2, -40  #2140 pc 33728
	lw	%x1, 36(%x2) #2140 pc 33732
	lw	%x6, 20(%x2)  #2141 pc 33736
	addi	%x7, %x6, 1  #2141 pc 33740
	slli	%x7, %x7, 2  #2141 pc 33744
	lw	%x9, 16(%x2)  #2141 pc 33748
	add	%x24, %x7, %x9  #2141 pc 33752
	lw	%x7, 0(%x24)  #2141 pc 33756
	sw	%x5, 32(%x2)  #2141 pc 33760
	addi	%x5, %x7, 0  #0 pc 33768
	sw	%x1, 36(%x2)  #2141 pc 33772
	addi	%x2, %x2, 40  #2141 pc 33776
	jal	%x1, p_received_ray_20percent.2734  #2141 pc 33780
	addi	%x2, %x2, -40  #2141 pc 33784
	lw	%x1, 36(%x2) #2141 pc 33788
	lw	%x6, 20(%x2)  #2142 pc 33792
	slli	%x7, %x6, 2  #2142 pc 33796
	lw	%x9, 12(%x2)  #2142 pc 33800
	add	%x24, %x7, %x9  #2142 pc 33804
	lw	%x7, 0(%x24)  #2142 pc 33808
	sw	%x5, 36(%x2)  #2142 pc 33812
	addi	%x5, %x7, 0  #0 pc 33820
	sw	%x1, 44(%x2)  #2142 pc 33824
	addi	%x2, %x2, 48  #2142 pc 33828
	jal	%x1, p_received_ray_20percent.2734  #2142 pc 33832
	addi	%x2, %x2, -48  #2142 pc 33836
	lw	%x1, 44(%x2) #2142 pc 33840
	lw	%x6, 8(%x2)  #2144 pc 33844
	slli	%x7, %x6, 2  #2144 pc 33848
	lw	%x9, 24(%x2)  #2144 pc 33852
	add	%x24, %x7, %x9  #2144 pc 33856
	lw	%x7, 0(%x24)  #2144 pc 33860
	lw	%x9, 4(%x2)  #2144 pc 33864
	sw	%x5, 40(%x2)  #2144 pc 33868
	addi	%x6, %x7, 0  #0 pc 33876
	addi	%x5, %x9, 0  #0 pc 33884
	sw	%x1, 44(%x2)  #2144 pc 33888
	addi	%x2, %x2, 48  #2144 pc 33892
	jal	%x1, veccpy.2654  #2144 pc 33896
	addi	%x2, %x2, -48  #2144 pc 33900
	lw	%x1, 44(%x2) #2144 pc 33904
	lw	%x5, 8(%x2)  #2145 pc 33908
	slli	%x6, %x5, 2  #2145 pc 33912
	lw	%x7, 28(%x2)  #2145 pc 33916
	add	%x24, %x6, %x7  #2145 pc 33920
	lw	%x6, 0(%x24)  #2145 pc 33924
	lw	%x7, 4(%x2)  #2145 pc 33928
	addi	%x5, %x7, 0  #0 pc 33936
	sw	%x1, 44(%x2)  #2145 pc 33940
	addi	%x2, %x2, 48  #2145 pc 33944
	jal	%x1, vecadd.2672  #2145 pc 33948
	addi	%x2, %x2, -48  #2145 pc 33952
	lw	%x1, 44(%x2) #2145 pc 33956
	lw	%x5, 8(%x2)  #2146 pc 33960
	slli	%x6, %x5, 2  #2146 pc 33964
	lw	%x7, 32(%x2)  #2146 pc 33968
	add	%x24, %x6, %x7  #2146 pc 33972
	lw	%x6, 0(%x24)  #2146 pc 33976
	lw	%x7, 4(%x2)  #2146 pc 33980
	addi	%x5, %x7, 0  #0 pc 33988
	sw	%x1, 44(%x2)  #2146 pc 33992
	addi	%x2, %x2, 48  #2146 pc 33996
	jal	%x1, vecadd.2672  #2146 pc 34000
	addi	%x2, %x2, -48  #2146 pc 34004
	lw	%x1, 44(%x2) #2146 pc 34008
	lw	%x5, 8(%x2)  #2147 pc 34012
	slli	%x6, %x5, 2  #2147 pc 34016
	lw	%x7, 36(%x2)  #2147 pc 34020
	add	%x24, %x6, %x7  #2147 pc 34024
	lw	%x6, 0(%x24)  #2147 pc 34028
	lw	%x7, 4(%x2)  #2147 pc 34032
	addi	%x5, %x7, 0  #0 pc 34040
	sw	%x1, 44(%x2)  #2147 pc 34044
	addi	%x2, %x2, 48  #2147 pc 34048
	jal	%x1, vecadd.2672  #2147 pc 34052
	addi	%x2, %x2, -48  #2147 pc 34056
	lw	%x1, 44(%x2) #2147 pc 34060
	lw	%x5, 8(%x2)  #2148 pc 34064
	slli	%x6, %x5, 2  #2148 pc 34068
	lw	%x7, 40(%x2)  #2148 pc 34072
	add	%x24, %x6, %x7  #2148 pc 34076
	lw	%x6, 0(%x24)  #2148 pc 34080
	lw	%x7, 4(%x2)  #2148 pc 34084
	addi	%x5, %x7, 0  #0 pc 34092
	sw	%x1, 44(%x2)  #2148 pc 34096
	addi	%x2, %x2, 48  #2148 pc 34100
	jal	%x1, vecadd.2672  #2148 pc 34104
	addi	%x2, %x2, -48  #2148 pc 34108
	lw	%x1, 44(%x2) #2148 pc 34112
	lw	%x5, 20(%x2)  #2150 pc 34116
	slli	%x5, %x5, 2  #2150 pc 34120
	lw	%x6, 16(%x2)  #2150 pc 34124
	add	%x24, %x5, %x6  #2150 pc 34128
	lw	%x5, 0(%x24)  #2150 pc 34132
	sw	%x1, 44(%x2)  #2150 pc 34136
	addi	%x2, %x2, 48  #2150 pc 34140
	jal	%x1, p_energy.2732  #2150 pc 34144
	addi	%x2, %x2, -48  #2150 pc 34148
	lw	%x1, 44(%x2) #2150 pc 34152
	lw	%x6, 8(%x2)  #2151 pc 34156
	slli	%x6, %x6, 2  #2151 pc 34160
	add	%x24, %x6, %x5  #2151 pc 34164
	lw	%x6, 0(%x24)  #2151 pc 34168
	lw	%x5, 0(%x2)  #2151 pc 34172
	lw	%x7, 4(%x2)  #2151 pc 34176
	j	vecaccumv.2678  #2151 pc 34180
	nop #pc 34184
do_without_neighbors.2994:  #pc 34184
	addi	%x24, %x0, 4  #pc 34188
	add	%x24, %x24, %x22  #0 pc 34192
	lw	%x7, 0(%x24)  #0 pc 34196
	addi	%x24, %x0, 4  #pc 34200
	bge	%x24, %x6, 12  #2157 pc 34204
	j	ble_else.9533 #pc 34208
	nop #pc 34212
	sw	%x22, 0(%x2)  #2159 pc 34216
	sw	%x7, 4(%x2)  #2159 pc 34220
	sw	%x5, 8(%x2)  #2159 pc 34224
	sw	%x6, 12(%x2)  #2159 pc 34228
	sw	%x1, 20(%x2)  #2159 pc 34232
	addi	%x2, %x2, 24  #2159 pc 34236
	jal	%x1, p_surface_ids.2728  #2159 pc 34240
	addi	%x2, %x2, -24  #2159 pc 34244
	lw	%x1, 20(%x2) #2159 pc 34248
	lw	%x6, 12(%x2)  #2160 pc 34252
	slli	%x7, %x6, 2  #2160 pc 34256
	add	%x24, %x7, %x5  #2160 pc 34260
	lw	%x5, 0(%x24)  #2160 pc 34264
	bge	%x5, %x0, 12  #2160 pc 34268
	j	bge_else.9534 #pc 34272
	nop #pc 34276
	lw	%x5, 8(%x2)  #2161 pc 34280
	sw	%x1, 20(%x2)  #2161 pc 34284
	addi	%x2, %x2, 24  #2161 pc 34288
	jal	%x1, p_calc_diffuse.2730  #2161 pc 34292
	addi	%x2, %x2, -24  #2161 pc 34296
	lw	%x1, 20(%x2) #2161 pc 34300
	lw	%x6, 12(%x2)  #2162 pc 34304
	slli	%x7, %x6, 2  #2162 pc 34308
	add	%x24, %x7, %x5  #2162 pc 34312
	lw	%x5, 0(%x24)  #2162 pc 34316
	beq	%x5, %x0, 12  #2162 pc 34320
	j	be_else.9535 #pc 34324
	nop #pc 34328
	j	be_cont.9536 #pc 34332
	nop #pc 34336
be_else.9535: #pc 34336
	lw	%x5, 8(%x2)  #2163 pc 34340
	lw	%x22, 4(%x2)  #2163 pc 34344
	sw	%x1, 20(%x2)  #2163 pc 34348
	lw	%x23, 0(%x22)  #2163 pc 34352
	addi	%x2, %x2, 24  #2163 pc 34356
	jalr	%x1, %x23, 0  #2163 pc 34360
	addi	%x2, %x2, -24  #2163 pc 34364
	lw	%x1, 20(%x2)  #2163 pc 34368
be_cont.9536: #pc 34368
	lw	%x5, 12(%x2)  #2165 pc 34372
	addi	%x6, %x5, 1  #2165 pc 34376
	lw	%x5, 8(%x2)  #2165 pc 34380
	lw	%x22, 0(%x2)  #2165 pc 34384
	lw	%x23, 0(%x22)  #2165 pc 34388
	jalr	%x0, %x23, 0  #2165 pc 34392
	nop #pc 34396
bge_else.9534: #pc 34396
	ret #pc 34400
	nop #pc 34404
ble_else.9533: #pc 34404
	ret #pc 34408
	nop #pc 34412
neighbors_exist.2997:  #pc 34412
	addi	%x24, %x0, 4  #pc 34416
	add	%x24, %x24, %x22  #0 pc 34420
	lw	%x7, 0(%x24)  #0 pc 34424
	addi	%x24, %x0, 4  #pc 34428
	add	%x24, %x24, %x7  #2172 pc 34432
	lw	%x9, 0(%x24)  #2172 pc 34436
	addi	%x10, %x6, 1  #2172 pc 34440
	bge	%x10, %x9, 12  #2172 pc 34444
	j	ble_else.9539 #pc 34448
	nop #pc 34452
	addi	%x5, %x0, 0  #0 pc 34456
	ret #pc 34460
	nop #pc 34464
ble_else.9539: #pc 34464
	bge	%x0, %x6, 12  #2173 pc 34468
	j	ble_else.9540 #pc 34472
	nop #pc 34476
	addi	%x5, %x0, 0  #0 pc 34480
	ret #pc 34484
	nop #pc 34488
ble_else.9540: #pc 34488
	add	%x24, %x0, %x7  #2174 pc 34492
	lw	%x6, 0(%x24)  #2174 pc 34496
	addi	%x7, %x5, 1  #2174 pc 34500
	bge	%x7, %x6, 12  #2174 pc 34504
	j	ble_else.9541 #pc 34508
	nop #pc 34512
	addi	%x5, %x0, 0  #0 pc 34516
	ret #pc 34520
	nop #pc 34524
ble_else.9541: #pc 34524
	bge	%x0, %x5, 12  #2175 pc 34528
	j	ble_else.9542 #pc 34532
	nop #pc 34536
	addi	%x5, %x0, 0  #0 pc 34540
	ret #pc 34544
	nop #pc 34548
ble_else.9542: #pc 34548
	addi	%x5, %x0, 1  #0 pc 34552
	ret #pc 34556
	nop #pc 34560
get_surface_id.3001:  #pc 34560
	sw	%x6, 0(%x2)  #2184 pc 34564
	sw	%x1, 4(%x2)  #2184 pc 34568
	addi	%x2, %x2, 8  #2184 pc 34572
	jal	%x1, p_surface_ids.2728  #2184 pc 34576
	addi	%x2, %x2, -8  #2184 pc 34580
	lw	%x1, 4(%x2) #2184 pc 34584
	lw	%x6, 0(%x2)  #2185 pc 34588
	slli	%x6, %x6, 2  #2185 pc 34592
	add	%x24, %x6, %x5  #2185 pc 34596
	lw	%x5, 0(%x24)  #2185 pc 34600
	ret #pc 34604
	nop #pc 34608
neighbors_are_available.3004:  #pc 34608
	slli	%x11, %x5, 2  #2191 pc 34612
	add	%x24, %x11, %x7  #2191 pc 34616
	lw	%x11, 0(%x24)  #2191 pc 34620
	sw	%x7, 0(%x2)  #2191 pc 34624
	sw	%x9, 4(%x2)  #2191 pc 34628
	sw	%x10, 8(%x2)  #2191 pc 34632
	sw	%x6, 12(%x2)  #2191 pc 34636
	sw	%x5, 16(%x2)  #2191 pc 34640
	addi	%x6, %x10, 0  #0 pc 34648
	addi	%x5, %x11, 0  #0 pc 34656
	sw	%x1, 20(%x2)  #2191 pc 34660
	addi	%x2, %x2, 24  #2191 pc 34664
	jal	%x1, get_surface_id.3001  #2191 pc 34668
	addi	%x2, %x2, -24  #2191 pc 34672
	lw	%x1, 20(%x2) #2191 pc 34676
	lw	%x6, 16(%x2)  #2193 pc 34680
	slli	%x7, %x6, 2  #2193 pc 34684
	lw	%x9, 12(%x2)  #2193 pc 34688
	add	%x24, %x7, %x9  #2193 pc 34692
	lw	%x7, 0(%x24)  #2193 pc 34696
	lw	%x9, 8(%x2)  #2193 pc 34700
	sw	%x5, 20(%x2)  #2193 pc 34704
	addi	%x6, %x9, 0  #0 pc 34712
	addi	%x5, %x7, 0  #0 pc 34720
	sw	%x1, 28(%x2)  #2193 pc 34724
	addi	%x2, %x2, 32  #2193 pc 34728
	jal	%x1, get_surface_id.3001  #2193 pc 34732
	addi	%x2, %x2, -32  #2193 pc 34736
	lw	%x1, 28(%x2) #2193 pc 34740
	lw	%x6, 20(%x2)  #2193 pc 34744
	beq	%x5, %x6, 12  #2193 pc 34748
	j	be_else.9543 #pc 34752
	nop #pc 34756
	lw	%x5, 16(%x2)  #2194 pc 34760
	slli	%x7, %x5, 2  #2194 pc 34764
	lw	%x9, 4(%x2)  #2194 pc 34768
	add	%x24, %x7, %x9  #2194 pc 34772
	lw	%x7, 0(%x24)  #2194 pc 34776
	lw	%x9, 8(%x2)  #2194 pc 34780
	addi	%x6, %x9, 0  #0 pc 34788
	addi	%x5, %x7, 0  #0 pc 34796
	sw	%x1, 28(%x2)  #2194 pc 34800
	addi	%x2, %x2, 32  #2194 pc 34804
	jal	%x1, get_surface_id.3001  #2194 pc 34808
	addi	%x2, %x2, -32  #2194 pc 34812
	lw	%x1, 28(%x2) #2194 pc 34816
	lw	%x6, 20(%x2)  #2194 pc 34820
	beq	%x5, %x6, 12  #2194 pc 34824
	j	be_else.9544 #pc 34828
	nop #pc 34832
	lw	%x5, 16(%x2)  #2195 pc 34836
	addi	%x7, %x5, -1  #2195 pc 34840
	slli	%x7, %x7, 2  #2195 pc 34844
	lw	%x9, 0(%x2)  #2195 pc 34848
	add	%x24, %x7, %x9  #2195 pc 34852
	lw	%x7, 0(%x24)  #2195 pc 34856
	lw	%x10, 8(%x2)  #2195 pc 34860
	addi	%x6, %x10, 0  #0 pc 34868
	addi	%x5, %x7, 0  #0 pc 34876
	sw	%x1, 28(%x2)  #2195 pc 34880
	addi	%x2, %x2, 32  #2195 pc 34884
	jal	%x1, get_surface_id.3001  #2195 pc 34888
	addi	%x2, %x2, -32  #2195 pc 34892
	lw	%x1, 28(%x2) #2195 pc 34896
	lw	%x6, 20(%x2)  #2195 pc 34900
	beq	%x5, %x6, 12  #2195 pc 34904
	j	be_else.9545 #pc 34908
	nop #pc 34912
	lw	%x5, 16(%x2)  #2196 pc 34916
	addi	%x5, %x5, 1  #2196 pc 34920
	slli	%x5, %x5, 2  #2196 pc 34924
	lw	%x7, 0(%x2)  #2196 pc 34928
	add	%x24, %x5, %x7  #2196 pc 34932
	lw	%x5, 0(%x24)  #2196 pc 34936
	lw	%x7, 8(%x2)  #2196 pc 34940
	addi	%x6, %x7, 0  #0 pc 34948
	sw	%x1, 28(%x2)  #2196 pc 34952
	addi	%x2, %x2, 32  #2196 pc 34956
	jal	%x1, get_surface_id.3001  #2196 pc 34960
	addi	%x2, %x2, -32  #2196 pc 34964
	lw	%x1, 28(%x2) #2196 pc 34968
	lw	%x6, 20(%x2)  #2196 pc 34972
	beq	%x5, %x6, 12  #2196 pc 34976
	j	be_else.9546 #pc 34980
	nop #pc 34984
	addi	%x5, %x0, 1  #0 pc 34988
	ret #pc 34992
	nop #pc 34996
be_else.9546: #pc 34996
	addi	%x5, %x0, 0  #0 pc 35000
	ret #pc 35004
	nop #pc 35008
be_else.9545: #pc 35008
	addi	%x5, %x0, 0  #0 pc 35012
	ret #pc 35016
	nop #pc 35020
be_else.9544: #pc 35020
	addi	%x5, %x0, 0  #0 pc 35024
	ret #pc 35028
	nop #pc 35032
be_else.9543: #pc 35032
	addi	%x5, %x0, 0  #0 pc 35036
	ret #pc 35040
	nop #pc 35044
try_exploit_neighbors.3010:  #pc 35044
	addi	%x24, %x0, 8  #pc 35048
	add	%x24, %x24, %x22  #2209 pc 35052
	lw	%x12, 0(%x24)  #2209 pc 35056
	addi	%x24, %x0, 4  #pc 35060
	add	%x24, %x24, %x22  #2209 pc 35064
	lw	%x13, 0(%x24)  #2209 pc 35068
	slli	%x14, %x5, 2  #2209 pc 35072
	add	%x24, %x14, %x9  #2209 pc 35076
	lw	%x14, 0(%x24)  #2209 pc 35080
	addi	%x24, %x0, 4  #pc 35084
	bge	%x24, %x11, 12  #2210 pc 35088
	j	ble_else.9547 #pc 35092
	nop #pc 35096
	sw	%x6, 0(%x2)  #2213 pc 35100
	sw	%x22, 4(%x2)  #2213 pc 35104
	sw	%x13, 8(%x2)  #2213 pc 35108
	sw	%x14, 12(%x2)  #2213 pc 35112
	sw	%x12, 16(%x2)  #2213 pc 35116
	sw	%x11, 20(%x2)  #2213 pc 35120
	sw	%x10, 24(%x2)  #2213 pc 35124
	sw	%x9, 28(%x2)  #2213 pc 35128
	sw	%x7, 32(%x2)  #2213 pc 35132
	sw	%x5, 36(%x2)  #2213 pc 35136
	addi	%x6, %x11, 0  #0 pc 35144
	addi	%x5, %x14, 0  #0 pc 35152
	sw	%x1, 44(%x2)  #2213 pc 35156
	addi	%x2, %x2, 48  #2213 pc 35160
	jal	%x1, get_surface_id.3001  #2213 pc 35164
	addi	%x2, %x2, -48  #2213 pc 35168
	lw	%x1, 44(%x2) #2213 pc 35172
	bge	%x5, %x0, 12  #2213 pc 35176
	j	bge_else.9548 #pc 35180
	nop #pc 35184
	lw	%x5, 36(%x2)  #2215 pc 35188
	lw	%x6, 32(%x2)  #2215 pc 35192
	lw	%x7, 28(%x2)  #2215 pc 35196
	lw	%x9, 24(%x2)  #2215 pc 35200
	lw	%x10, 20(%x2)  #2215 pc 35204
	sw	%x1, 44(%x2)  #2215 pc 35208
	addi	%x2, %x2, 48  #2215 pc 35212
	jal	%x1, neighbors_are_available.3004  #2215 pc 35216
	addi	%x2, %x2, -48  #2215 pc 35220
	lw	%x1, 44(%x2) #2215 pc 35224
	beq	%x5, %x0, 12  #2215 pc 35228
	j	be_else.9549 #pc 35232
	nop #pc 35236
	lw	%x5, 36(%x2)  #2227 pc 35240
	slli	%x5, %x5, 2  #2227 pc 35244
	lw	%x6, 28(%x2)  #2227 pc 35248
	add	%x24, %x5, %x6  #2227 pc 35252
	lw	%x5, 0(%x24)  #2227 pc 35256
	lw	%x6, 20(%x2)  #2227 pc 35260
	lw	%x22, 16(%x2)  #2227 pc 35264
	lw	%x23, 0(%x22)  #2227 pc 35268
	jalr	%x0, %x23, 0  #2227 pc 35272
	nop #pc 35276
be_else.9549: #pc 35276
	lw	%x5, 12(%x2)  #2218 pc 35280
	sw	%x1, 44(%x2)  #2218 pc 35284
	addi	%x2, %x2, 48  #2218 pc 35288
	jal	%x1, p_calc_diffuse.2730  #2218 pc 35292
	addi	%x2, %x2, -48  #2218 pc 35296
	lw	%x1, 44(%x2) #2218 pc 35300
	lw	%x10, 20(%x2)  #2219 pc 35304
	slli	%x6, %x10, 2  #2219 pc 35308
	add	%x24, %x6, %x5  #2219 pc 35312
	lw	%x5, 0(%x24)  #2219 pc 35316
	beq	%x5, %x0, 12  #2219 pc 35320
	j	be_else.9550 #pc 35324
	nop #pc 35328
	j	be_cont.9551 #pc 35332
	nop #pc 35336
be_else.9550: #pc 35336
	lw	%x5, 36(%x2)  #2220 pc 35340
	lw	%x6, 32(%x2)  #2220 pc 35344
	lw	%x7, 28(%x2)  #2220 pc 35348
	lw	%x9, 24(%x2)  #2220 pc 35352
	lw	%x22, 8(%x2)  #2220 pc 35356
	sw	%x1, 44(%x2)  #2220 pc 35360
	lw	%x23, 0(%x22)  #2220 pc 35364
	addi	%x2, %x2, 48  #2220 pc 35368
	jalr	%x1, %x23, 0  #2220 pc 35372
	addi	%x2, %x2, -48  #2220 pc 35376
	lw	%x1, 44(%x2)  #2220 pc 35380
be_cont.9551: #pc 35380
	lw	%x5, 20(%x2)  #2224 pc 35384
	addi	%x11, %x5, 1  #2224 pc 35388
	lw	%x5, 36(%x2)  #2224 pc 35392
	lw	%x6, 0(%x2)  #2224 pc 35396
	lw	%x7, 32(%x2)  #2224 pc 35400
	lw	%x9, 28(%x2)  #2224 pc 35404
	lw	%x10, 24(%x2)  #2224 pc 35408
	lw	%x22, 4(%x2)  #2224 pc 35412
	lw	%x23, 0(%x22)  #2224 pc 35416
	jalr	%x0, %x23, 0  #2224 pc 35420
	nop #pc 35424
bge_else.9548: #pc 35424
	ret #pc 35428
	nop #pc 35432
ble_else.9547: #pc 35432
	ret #pc 35436
	nop #pc 35440
write_ppm_header.3017:  #pc 35440
	addi	%x24, %x0, 4  #pc 35444
	add	%x24, %x24, %x22  #0 pc 35448
	lw	%x6, 0(%x24)  #0 pc 35452
	addi	%x7, %x0, 80  #0 pc 35456
	sw	%x6, 0(%x2)  #2237 pc 35460
	sw	%x5, 4(%x2)  #2237 pc 35464
	addi	%x5, %x7, 0  #0 pc 35472
	sw	%x1, 12(%x2)  #2237 pc 35476
	addi	%x2, %x2, 16  #2237 pc 35480
	jal	%x1, print_char.2573  #2237 pc 35484
	addi	%x2, %x2, -16  #2237 pc 35488
	lw	%x1, 12(%x2) #2237 pc 35492
	lw	%x5, 4(%x2)  #2238 pc 35496
	addi	%x5, %x5, 48  #2238 pc 35500
	sw	%x1, 12(%x2)  #2238 pc 35504
	addi	%x2, %x2, 16  #2238 pc 35508
	jal	%x1, print_char.2573  #2238 pc 35512
	addi	%x2, %x2, -16  #2238 pc 35516
	lw	%x1, 12(%x2) #2238 pc 35520
	addi	%x5, %x0, 10  #0 pc 35524
	sw	%x1, 12(%x2)  #2239 pc 35528
	addi	%x2, %x2, 16  #2239 pc 35532
	jal	%x1, print_char.2573  #2239 pc 35536
	addi	%x2, %x2, -16  #2239 pc 35540
	lw	%x1, 12(%x2) #2239 pc 35544
	lw	%x5, 0(%x2)  #2240 pc 35548
	add	%x24, %x0, %x5  #2240 pc 35552
	lw	%x6, 0(%x24)  #2240 pc 35556
	addi	%x5, %x6, 0  #0 pc 35564
	sw	%x1, 12(%x2)  #2240 pc 35568
	addi	%x2, %x2, 16  #2240 pc 35572
	jal	%x1, print_int.2575  #2240 pc 35576
	addi	%x2, %x2, -16  #2240 pc 35580
	lw	%x1, 12(%x2) #2240 pc 35584
	addi	%x5, %x0, 32  #0 pc 35588
	sw	%x1, 12(%x2)  #2241 pc 35592
	addi	%x2, %x2, 16  #2241 pc 35596
	jal	%x1, print_char.2573  #2241 pc 35600
	addi	%x2, %x2, -16  #2241 pc 35604
	lw	%x1, 12(%x2) #2241 pc 35608
	lw	%x5, 0(%x2)  #2242 pc 35612
	addi	%x24, %x0, 4  #pc 35616
	add	%x24, %x24, %x5  #2242 pc 35620
	lw	%x5, 0(%x24)  #2242 pc 35624
	sw	%x1, 12(%x2)  #2242 pc 35628
	addi	%x2, %x2, 16  #2242 pc 35632
	jal	%x1, print_int.2575  #2242 pc 35636
	addi	%x2, %x2, -16  #2242 pc 35640
	lw	%x1, 12(%x2) #2242 pc 35644
	addi	%x5, %x0, 32  #0 pc 35648
	sw	%x1, 12(%x2)  #2243 pc 35652
	addi	%x2, %x2, 16  #2243 pc 35656
	jal	%x1, print_char.2573  #2243 pc 35660
	addi	%x2, %x2, -16  #2243 pc 35664
	lw	%x1, 12(%x2) #2243 pc 35668
	addi	%x5, %x0, 255  #0 pc 35672
	sw	%x1, 12(%x2)  #2244 pc 35676
	addi	%x2, %x2, 16  #2244 pc 35680
	jal	%x1, print_int.2575  #2244 pc 35684
	addi	%x2, %x2, -16  #2244 pc 35688
	lw	%x1, 12(%x2) #2244 pc 35692
	addi	%x5, %x0, 10  #0 pc 35696
	j	print_char.2573  #2245 pc 35700
	nop #pc 35704
write_rgb_element_int.3019:  #pc 35704
	sw	%x1, 4(%x2)  #2250 pc 35708
	addi	%x2, %x2, 8  #2250 pc 35712
	jal	%x1, int_of_float.2555  #2250 pc 35716
	addi	%x2, %x2, -8  #2250 pc 35720
	lw	%x1, 4(%x2) #2250 pc 35724
	addi	%x24, %x0, 255  #pc 35728
	bge	%x24, %x5, 12  #2251 pc 35732
	j	ble_else.9554 #pc 35736
	nop #pc 35740
	bge	%x5, %x0, 12  #2251 pc 35744
	j	bge_else.9556 #pc 35748
	nop #pc 35752
	j	bge_cont.9557 #pc 35756
	nop #pc 35760
bge_else.9556: #pc 35760
	addi	%x5, %x0, 0  #0 pc 35764
bge_cont.9557: #pc 35764
	j	ble_cont.9555 #pc 35768
	nop #pc 35772
ble_else.9554: #pc 35772
	addi	%x5, %x0, 255  #0 pc 35776
ble_cont.9555: #pc 35776
	j	print_int.2575  #2252 pc 35780
	nop #pc 35784
write_rgb_element_char.3021:  #pc 35784
	sw	%x1, 4(%x2)  #2256 pc 35788
	addi	%x2, %x2, 8  #2256 pc 35792
	jal	%x1, int_of_float.2555  #2256 pc 35796
	addi	%x2, %x2, -8  #2256 pc 35800
	lw	%x1, 4(%x2) #2256 pc 35804
	addi	%x24, %x0, 255  #pc 35808
	bge	%x24, %x5, 12  #2257 pc 35812
	j	ble_else.9558 #pc 35816
	nop #pc 35820
	bge	%x5, %x0, 12  #2257 pc 35824
	j	bge_else.9560 #pc 35828
	nop #pc 35832
	j	bge_cont.9561 #pc 35836
	nop #pc 35840
bge_else.9560: #pc 35840
	addi	%x5, %x0, 0  #0 pc 35844
bge_cont.9561: #pc 35844
	j	ble_cont.9559 #pc 35848
	nop #pc 35852
ble_else.9558: #pc 35852
	addi	%x5, %x0, 255  #0 pc 35856
ble_cont.9559: #pc 35856
	j	print_char.2573  #2258 pc 35860
	nop #pc 35864
write_rgb.3023:  #pc 35864
	addi	%x24, %x0, 4  #pc 35868
	add	%x24, %x24, %x22  #0 pc 35872
	lw	%x6, 0(%x24)  #0 pc 35876
	addi	%x24, %x0, 3  #pc 35880
	beq	%x5, %x24, 12  #2262 pc 35884
	j	be_else.9562 #pc 35888
	nop #pc 35892
	add	%x24, %x0, %x6  #2263 pc 35896
	flw	%f0, 0(%x24)  #2263 pc 35900
	sw	%x6, 0(%x2)  #2263 pc 35904
	sw	%x1, 4(%x2)  #2263 pc 35908
	addi	%x2, %x2, 8  #2263 pc 35912
	jal	%x1, write_rgb_element_int.3019  #2263 pc 35916
	addi	%x2, %x2, -8  #2263 pc 35920
	lw	%x1, 4(%x2) #2263 pc 35924
	addi	%x5, %x0, 32  #0 pc 35928
	sw	%x1, 4(%x2)  #2264 pc 35932
	addi	%x2, %x2, 8  #2264 pc 35936
	jal	%x1, print_char.2573  #2264 pc 35940
	addi	%x2, %x2, -8  #2264 pc 35944
	lw	%x1, 4(%x2) #2264 pc 35948
	lw	%x5, 0(%x2)  #2265 pc 35952
	addi	%x24, %x0, 4  #pc 35956
	add	%x24, %x24, %x5  #2265 pc 35960
	flw	%f0, 0(%x24)  #2265 pc 35964
	sw	%x1, 4(%x2)  #2265 pc 35968
	addi	%x2, %x2, 8  #2265 pc 35972
	jal	%x1, write_rgb_element_int.3019  #2265 pc 35976
	addi	%x2, %x2, -8  #2265 pc 35980
	lw	%x1, 4(%x2) #2265 pc 35984
	addi	%x5, %x0, 32  #0 pc 35988
	sw	%x1, 4(%x2)  #2266 pc 35992
	addi	%x2, %x2, 8  #2266 pc 35996
	jal	%x1, print_char.2573  #2266 pc 36000
	addi	%x2, %x2, -8  #2266 pc 36004
	lw	%x1, 4(%x2) #2266 pc 36008
	lw	%x5, 0(%x2)  #2267 pc 36012
	addi	%x24, %x0, 8  #pc 36016
	add	%x24, %x24, %x5  #2267 pc 36020
	flw	%f0, 0(%x24)  #2267 pc 36024
	sw	%x1, 4(%x2)  #2267 pc 36028
	addi	%x2, %x2, 8  #2267 pc 36032
	jal	%x1, write_rgb_element_int.3019  #2267 pc 36036
	addi	%x2, %x2, -8  #2267 pc 36040
	lw	%x1, 4(%x2) #2267 pc 36044
	addi	%x5, %x0, 10  #0 pc 36048
	j	print_char.2573  #2268 pc 36052
	nop #pc 36056
be_else.9562: #pc 36056
	add	%x24, %x0, %x6  #2270 pc 36060
	flw	%f0, 0(%x24)  #2270 pc 36064
	sw	%x6, 0(%x2)  #2270 pc 36068
	sw	%x1, 4(%x2)  #2270 pc 36072
	addi	%x2, %x2, 8  #2270 pc 36076
	jal	%x1, write_rgb_element_char.3021  #2270 pc 36080
	addi	%x2, %x2, -8  #2270 pc 36084
	lw	%x1, 4(%x2) #2270 pc 36088
	lw	%x5, 0(%x2)  #2271 pc 36092
	addi	%x24, %x0, 4  #pc 36096
	add	%x24, %x24, %x5  #2271 pc 36100
	flw	%f0, 0(%x24)  #2271 pc 36104
	sw	%x1, 4(%x2)  #2271 pc 36108
	addi	%x2, %x2, 8  #2271 pc 36112
	jal	%x1, write_rgb_element_char.3021  #2271 pc 36116
	addi	%x2, %x2, -8  #2271 pc 36120
	lw	%x1, 4(%x2) #2271 pc 36124
	lw	%x5, 0(%x2)  #2272 pc 36128
	addi	%x24, %x0, 8  #pc 36132
	add	%x24, %x24, %x5  #2272 pc 36136
	flw	%f0, 0(%x24)  #2272 pc 36140
	j	write_rgb_element_char.3021  #2272 pc 36144
	nop #pc 36148
pretrace_diffuse_rays.3025:  #pc 36148
	addi	%x24, %x0, 12  #pc 36152
	add	%x24, %x24, %x22  #0 pc 36156
	lw	%x7, 0(%x24)  #0 pc 36160
	addi	%x24, %x0, 8  #pc 36164
	add	%x24, %x24, %x22  #0 pc 36168
	lw	%x9, 0(%x24)  #0 pc 36172
	addi	%x24, %x0, 4  #pc 36176
	add	%x24, %x24, %x22  #0 pc 36180
	lw	%x10, 0(%x24)  #0 pc 36184
	addi	%x24, %x0, 4  #pc 36188
	bge	%x24, %x6, 12  #2285 pc 36192
	j	ble_else.9563 #pc 36196
	nop #pc 36200
	sw	%x22, 0(%x2)  #2288 pc 36204
	sw	%x7, 4(%x2)  #2288 pc 36208
	sw	%x9, 8(%x2)  #2288 pc 36212
	sw	%x10, 12(%x2)  #2288 pc 36216
	sw	%x6, 16(%x2)  #2288 pc 36220
	sw	%x5, 20(%x2)  #2288 pc 36224
	sw	%x1, 28(%x2)  #2288 pc 36228
	addi	%x2, %x2, 32  #2288 pc 36232
	jal	%x1, get_surface_id.3001  #2288 pc 36236
	addi	%x2, %x2, -32  #2288 pc 36240
	lw	%x1, 28(%x2) #2288 pc 36244
	bge	%x5, %x0, 12  #2289 pc 36248
	j	bge_else.9564 #pc 36252
	nop #pc 36256
	lw	%x5, 20(%x2)  #2291 pc 36260
	sw	%x1, 28(%x2)  #2291 pc 36264
	addi	%x2, %x2, 32  #2291 pc 36268
	jal	%x1, p_calc_diffuse.2730  #2291 pc 36272
	addi	%x2, %x2, -32  #2291 pc 36276
	lw	%x1, 28(%x2) #2291 pc 36280
	lw	%x6, 16(%x2)  #2292 pc 36284
	slli	%x7, %x6, 2  #2292 pc 36288
	add	%x24, %x7, %x5  #2292 pc 36292
	lw	%x5, 0(%x24)  #2292 pc 36296
	beq	%x5, %x0, 12  #2292 pc 36300
	j	be_else.9565 #pc 36304
	nop #pc 36308
	j	be_cont.9566 #pc 36312
	nop #pc 36316
be_else.9565: #pc 36316
	lw	%x5, 20(%x2)  #2293 pc 36320
	sw	%x1, 28(%x2)  #2293 pc 36324
	addi	%x2, %x2, 32  #2293 pc 36328
	jal	%x1, p_group_id.2736  #2293 pc 36332
	addi	%x2, %x2, -32  #2293 pc 36336
	lw	%x1, 28(%x2) #2293 pc 36340
	lw	%x6, 12(%x2)  #2294 pc 36344
	sw	%x5, 24(%x2)  #2294 pc 36348
	addi	%x5, %x6, 0  #0 pc 36356
	sw	%x1, 28(%x2)  #2294 pc 36360
	addi	%x2, %x2, 32  #2294 pc 36364
	jal	%x1, vecbzero.2652  #2294 pc 36368
	addi	%x2, %x2, -32  #2294 pc 36372
	lw	%x1, 28(%x2) #2294 pc 36376
	lw	%x5, 20(%x2)  #2298 pc 36380
	sw	%x1, 28(%x2)  #2298 pc 36384
	addi	%x2, %x2, 32  #2298 pc 36388
	jal	%x1, p_nvectors.2741  #2298 pc 36392
	addi	%x2, %x2, -32  #2298 pc 36396
	lw	%x1, 28(%x2) #2298 pc 36400
	lw	%x6, 20(%x2)  #2299 pc 36404
	sw	%x5, 28(%x2)  #2299 pc 36408
	addi	%x5, %x6, 0  #0 pc 36416
	sw	%x1, 36(%x2)  #2299 pc 36420
	addi	%x2, %x2, 40  #2299 pc 36424
	jal	%x1, p_intersection_points.2726  #2299 pc 36428
	addi	%x2, %x2, -40  #2299 pc 36432
	lw	%x1, 36(%x2) #2299 pc 36436
	lw	%x6, 24(%x2)  #2301 pc 36440
	slli	%x6, %x6, 2  #2301 pc 36444
	lw	%x7, 8(%x2)  #2301 pc 36448
	add	%x24, %x6, %x7  #2301 pc 36452
	lw	%x6, 0(%x24)  #2301 pc 36456
	lw	%x7, 16(%x2)  #2302 pc 36460
	slli	%x9, %x7, 2  #2302 pc 36464
	lw	%x10, 28(%x2)  #2302 pc 36468
	add	%x24, %x9, %x10  #2302 pc 36472
	lw	%x9, 0(%x24)  #2302 pc 36476
	slli	%x10, %x7, 2  #2303 pc 36480
	add	%x24, %x10, %x5  #2303 pc 36484
	lw	%x5, 0(%x24)  #2303 pc 36488
	lw	%x22, 4(%x2)  #2300 pc 36492
	addi	%x7, %x5, 0  #0 pc 36500
	addi	%x5, %x6, 0  #0 pc 36508
	addi	%x6, %x9, 0  #0 pc 36516
	sw	%x1, 36(%x2)  #2300 pc 36520
	lw	%x23, 0(%x22)  #2300 pc 36524
	addi	%x2, %x2, 40  #2300 pc 36528
	jalr	%x1, %x23, 0  #2300 pc 36532
	addi	%x2, %x2, -40  #2300 pc 36536
	lw	%x1, 36(%x2)  #2300 pc 36540
	lw	%x5, 20(%x2)  #2304 pc 36544
	sw	%x1, 36(%x2)  #2304 pc 36548
	addi	%x2, %x2, 40  #2304 pc 36552
	jal	%x1, p_received_ray_20percent.2734  #2304 pc 36556
	addi	%x2, %x2, -40  #2304 pc 36560
	lw	%x1, 36(%x2) #2304 pc 36564
	lw	%x6, 16(%x2)  #2305 pc 36568
	slli	%x7, %x6, 2  #2305 pc 36572
	add	%x24, %x7, %x5  #2305 pc 36576
	lw	%x5, 0(%x24)  #2305 pc 36580
	lw	%x7, 12(%x2)  #2305 pc 36584
	addi	%x6, %x7, 0  #0 pc 36592
	sw	%x1, 36(%x2)  #2305 pc 36596
	addi	%x2, %x2, 40  #2305 pc 36600
	jal	%x1, veccpy.2654  #2305 pc 36604
	addi	%x2, %x2, -40  #2305 pc 36608
	lw	%x1, 36(%x2) #2305 pc 36612
be_cont.9566: #pc 36612
	lw	%x5, 16(%x2)  #2307 pc 36616
	addi	%x6, %x5, 1  #2307 pc 36620
	lw	%x5, 20(%x2)  #2307 pc 36624
	lw	%x22, 0(%x2)  #2307 pc 36628
	lw	%x23, 0(%x22)  #2307 pc 36632
	jalr	%x0, %x23, 0  #2307 pc 36636
	nop #pc 36640
bge_else.9564: #pc 36640
	ret #pc 36644
	nop #pc 36648
ble_else.9563: #pc 36648
	ret #pc 36652
	nop #pc 36656
pretrace_pixels.3028:  #pc 36656
	addi	%x24, %x0, 36  #pc 36660
	add	%x24, %x24, %x22  #0 pc 36664
	lw	%x9, 0(%x24)  #0 pc 36668
	addi	%x24, %x0, 32  #pc 36672
	add	%x24, %x24, %x22  #0 pc 36676
	lw	%x10, 0(%x24)  #0 pc 36680
	addi	%x24, %x0, 28  #pc 36684
	add	%x24, %x24, %x22  #0 pc 36688
	lw	%x11, 0(%x24)  #0 pc 36692
	addi	%x24, %x0, 24  #pc 36696
	add	%x24, %x24, %x22  #0 pc 36700
	lw	%x12, 0(%x24)  #0 pc 36704
	addi	%x24, %x0, 20  #pc 36708
	add	%x24, %x24, %x22  #0 pc 36712
	lw	%x13, 0(%x24)  #0 pc 36716
	addi	%x24, %x0, 16  #pc 36720
	add	%x24, %x24, %x22  #0 pc 36724
	lw	%x14, 0(%x24)  #0 pc 36728
	addi	%x24, %x0, 12  #pc 36732
	add	%x24, %x24, %x22  #0 pc 36736
	lw	%x15, 0(%x24)  #0 pc 36740
	addi	%x24, %x0, 8  #pc 36744
	add	%x24, %x24, %x22  #0 pc 36748
	lw	%x16, 0(%x24)  #0 pc 36752
	addi	%x24, %x0, 4  #pc 36756
	add	%x24, %x24, %x22  #0 pc 36760
	lw	%x17, 0(%x24)  #0 pc 36764
	bge	%x6, %x0, 12  #2315 pc 36768
	j	bge_else.9569 #pc 36772
	nop #pc 36776
	add	%x24, %x0, %x13  #2317 pc 36780
	flw	%f3, 0(%x24)  #2317 pc 36784
	add	%x24, %x0, %x17  #2317 pc 36788
	lw	%x13, 0(%x24)  #2317 pc 36792
	sub	%x13, %x6, %x13  #2317 pc 36796
	sw	%x22, 0(%x2)  #2317 pc 36800
	sw	%x16, 4(%x2)  #2317 pc 36804
	sw	%x7, 8(%x2)  #2317 pc 36808
	sw	%x10, 12(%x2)  #2317 pc 36812
	sw	%x5, 16(%x2)  #2317 pc 36816
	sw	%x6, 20(%x2)  #2317 pc 36820
	sw	%x9, 24(%x2)  #2317 pc 36824
	sw	%x11, 28(%x2)  #2317 pc 36828
	sw	%x14, 32(%x2)  #2317 pc 36832
	fsw	%f2, 40(%x2)  #2317 pc 36836
	fsw	%f1, 48(%x2)  #2317 pc 36840
	sw	%x15, 56(%x2)  #2317 pc 36844
	fsw	%f0, 64(%x2)  #2317 pc 36848
	sw	%x12, 72(%x2)  #2317 pc 36852
	fsw	%f3, 80(%x2)  #2317 pc 36856
	addi	%x5, %x13, 0  #0 pc 36864
	sw	%x1, 92(%x2)  #2317 pc 36868
	addi	%x2, %x2, 96  #2317 pc 36872
	jal	%x1, float_of_int.2553  #2317 pc 36876
	addi	%x2, %x2, -96  #2317 pc 36880
	lw	%x1, 92(%x2) #2317 pc 36884
	flw	%f1, 80(%x2)  #2317 pc 36888
	fmul	%f0, %f1, %f0  #2317 pc 36892
	lw	%x5, 72(%x2)  #2318 pc 36896
	add	%x24, %x0, %x5  #2318 pc 36900
	flw	%f1, 0(%x24)  #2318 pc 36904
	fmul	%f1, %f0, %f1  #2318 pc 36908
	flw	%f2, 64(%x2)  #2318 pc 36912
	fadd	%f1, %f1, %f2  #2318 pc 36916
	lw	%x6, 56(%x2)  #2318 pc 36920
	add	%x24, %x0, %x6  #2318 pc 36924
	fsw	%f1, 0(%x24) #2318 pc 36928
	addi	%x24, %x0, 4  #pc 36932
	add	%x24, %x24, %x5  #2319 pc 36936
	flw	%f1, 0(%x24)  #2319 pc 36940
	fmul	%f1, %f0, %f1  #2319 pc 36944
	flw	%f3, 48(%x2)  #2319 pc 36948
	fadd	%f1, %f1, %f3  #2319 pc 36952
	addi	%x24, %x0, 4  #pc 36956
	add	%x24, %x24, %x6  #2319 pc 36960
	fsw	%f1, 0(%x24) #2319 pc 36964
	addi	%x24, %x0, 8  #pc 36968
	add	%x24, %x24, %x5  #2320 pc 36972
	flw	%f1, 0(%x24)  #2320 pc 36976
	fmul	%f0, %f0, %f1  #2320 pc 36980
	flw	%f1, 40(%x2)  #2320 pc 36984
	fadd	%f0, %f0, %f1  #2320 pc 36988
	addi	%x24, %x0, 8  #pc 36992
	add	%x24, %x24, %x6  #2320 pc 36996
	fsw	%f0, 0(%x24) #2320 pc 37000
	addi	%x5, %x0, 0  #0 pc 37004
	addi	%x23, %x6, 0  #0 pc 37012
	addi	%x6, %x5, 0  #0 pc 37020
	addi	%x5, %x23, 0  #0 pc 37028
	sw	%x1, 92(%x2)  #2321 pc 37032
	addi	%x2, %x2, 96  #2321 pc 37036
	jal	%x1, vecunit_sgn.2657  #2321 pc 37040
	addi	%x2, %x2, -96  #2321 pc 37044
	lw	%x1, 92(%x2) #2321 pc 37048
	lw	%x5, 32(%x2)  #2322 pc 37052
	sw	%x1, 92(%x2)  #2322 pc 37056
	addi	%x2, %x2, 96  #2322 pc 37060
	jal	%x1, vecbzero.2652  #2322 pc 37064
	addi	%x2, %x2, -96  #2322 pc 37068
	lw	%x1, 92(%x2) #2322 pc 37072
	lw	%x5, 28(%x2)  #2323 pc 37076
	lw	%x6, 24(%x2)  #2323 pc 37080
	sw	%x1, 92(%x2)  #2323 pc 37084
	addi	%x2, %x2, 96  #2323 pc 37088
	jal	%x1, veccpy.2654  #2323 pc 37092
	addi	%x2, %x2, -96  #2323 pc 37096
	lw	%x1, 92(%x2) #2323 pc 37100
	addi	%x5, %x0, 0  #0 pc 37104
	fmv	%f0, l.6305  #0 pc 37108
	lw	%x6, 20(%x2)  #2326 pc 37112
	slli	%x7, %x6, 2  #2326 pc 37116
	lw	%x9, 16(%x2)  #2326 pc 37120
	add	%x24, %x7, %x9  #2326 pc 37124
	lw	%x7, 0(%x24)  #2326 pc 37128
	fmv	%f1, l.6293  #0 pc 37132
	lw	%x10, 56(%x2)  #2326 pc 37136
	lw	%x22, 12(%x2)  #2326 pc 37140
	addi	%x6, %x10, 0  #0 pc 37148
	sw	%x1, 92(%x2)  #2326 pc 37152
	lw	%x23, 0(%x22)  #2326 pc 37156
	addi	%x2, %x2, 96  #2326 pc 37160
	jalr	%x1, %x23, 0  #2326 pc 37164
	addi	%x2, %x2, -96  #2326 pc 37168
	lw	%x1, 92(%x2)  #2326 pc 37172
	lw	%x5, 20(%x2)  #2327 pc 37176
	slli	%x6, %x5, 2  #2327 pc 37180
	lw	%x7, 16(%x2)  #2327 pc 37184
	add	%x24, %x6, %x7  #2327 pc 37188
	lw	%x6, 0(%x24)  #2327 pc 37192
	addi	%x5, %x6, 0  #0 pc 37200
	sw	%x1, 92(%x2)  #2327 pc 37204
	addi	%x2, %x2, 96  #2327 pc 37208
	jal	%x1, p_rgb.2724  #2327 pc 37212
	addi	%x2, %x2, -96  #2327 pc 37216
	lw	%x1, 92(%x2) #2327 pc 37220
	lw	%x6, 32(%x2)  #2327 pc 37224
	sw	%x1, 92(%x2)  #2327 pc 37228
	addi	%x2, %x2, 96  #2327 pc 37232
	jal	%x1, veccpy.2654  #2327 pc 37236
	addi	%x2, %x2, -96  #2327 pc 37240
	lw	%x1, 92(%x2) #2327 pc 37244
	lw	%x5, 20(%x2)  #2328 pc 37248
	slli	%x6, %x5, 2  #2328 pc 37252
	lw	%x7, 16(%x2)  #2328 pc 37256
	add	%x24, %x6, %x7  #2328 pc 37260
	lw	%x6, 0(%x24)  #2328 pc 37264
	lw	%x9, 8(%x2)  #2328 pc 37268
	addi	%x5, %x6, 0  #0 pc 37276
	addi	%x6, %x9, 0  #0 pc 37284
	sw	%x1, 92(%x2)  #2328 pc 37288
	addi	%x2, %x2, 96  #2328 pc 37292
	jal	%x1, p_set_group_id.2738  #2328 pc 37296
	addi	%x2, %x2, -96  #2328 pc 37300
	lw	%x1, 92(%x2) #2328 pc 37304
	lw	%x5, 20(%x2)  #2331 pc 37308
	slli	%x6, %x5, 2  #2331 pc 37312
	lw	%x7, 16(%x2)  #2331 pc 37316
	add	%x24, %x6, %x7  #2331 pc 37320
	lw	%x6, 0(%x24)  #2331 pc 37324
	addi	%x9, %x0, 0  #0 pc 37328
	lw	%x22, 4(%x2)  #2331 pc 37332
	addi	%x5, %x6, 0  #0 pc 37340
	addi	%x6, %x9, 0  #0 pc 37348
	sw	%x1, 92(%x2)  #2331 pc 37352
	lw	%x23, 0(%x22)  #2331 pc 37356
	addi	%x2, %x2, 96  #2331 pc 37360
	jalr	%x1, %x23, 0  #2331 pc 37364
	addi	%x2, %x2, -96  #2331 pc 37368
	lw	%x1, 92(%x2)  #2331 pc 37372
	lw	%x5, 20(%x2)  #2333 pc 37376
	addi	%x5, %x5, -1  #2333 pc 37380
	addi	%x6, %x0, 1  #0 pc 37384
	lw	%x7, 8(%x2)  #2333 pc 37388
	sw	%x5, 88(%x2)  #2333 pc 37392
	addi	%x5, %x7, 0  #0 pc 37400
	sw	%x1, 92(%x2)  #2333 pc 37404
	addi	%x2, %x2, 96  #2333 pc 37408
	jal	%x1, add_mod5.2641  #2333 pc 37412
	addi	%x2, %x2, -96  #2333 pc 37416
	lw	%x1, 92(%x2) #2333 pc 37420
	addi	%x7, %x5, 0  #2333 pc 37424
	flw	%f0, 64(%x2)  #2333 pc 37428
	flw	%f1, 48(%x2)  #2333 pc 37432
	flw	%f2, 40(%x2)  #2333 pc 37436
	lw	%x5, 16(%x2)  #2333 pc 37440
	lw	%x6, 88(%x2)  #2333 pc 37444
	lw	%x22, 0(%x2)  #2333 pc 37448
	lw	%x23, 0(%x22)  #2333 pc 37452
	jalr	%x0, %x23, 0  #2333 pc 37456
	nop #pc 37460
bge_else.9569: #pc 37460
	ret #pc 37464
	nop #pc 37468
pretrace_line.3035:  #pc 37468
	addi	%x24, %x0, 24  #pc 37472
	add	%x24, %x24, %x22  #0 pc 37476
	lw	%x9, 0(%x24)  #0 pc 37480
	addi	%x24, %x0, 20  #pc 37484
	add	%x24, %x24, %x22  #0 pc 37488
	lw	%x10, 0(%x24)  #0 pc 37492
	addi	%x24, %x0, 16  #pc 37496
	add	%x24, %x24, %x22  #0 pc 37500
	lw	%x11, 0(%x24)  #0 pc 37504
	addi	%x24, %x0, 12  #pc 37508
	add	%x24, %x24, %x22  #0 pc 37512
	lw	%x12, 0(%x24)  #0 pc 37516
	addi	%x24, %x0, 8  #pc 37520
	add	%x24, %x24, %x22  #0 pc 37524
	lw	%x13, 0(%x24)  #0 pc 37528
	addi	%x24, %x0, 4  #pc 37532
	add	%x24, %x24, %x22  #0 pc 37536
	lw	%x14, 0(%x24)  #0 pc 37540
	add	%x24, %x0, %x11  #2340 pc 37544
	flw	%f0, 0(%x24)  #2340 pc 37548
	addi	%x24, %x0, 4  #pc 37552
	add	%x24, %x24, %x14  #2340 pc 37556
	lw	%x11, 0(%x24)  #2340 pc 37560
	sub	%x6, %x6, %x11  #2340 pc 37564
	sw	%x7, 0(%x2)  #2340 pc 37568
	sw	%x5, 4(%x2)  #2340 pc 37572
	sw	%x12, 8(%x2)  #2340 pc 37576
	sw	%x13, 12(%x2)  #2340 pc 37580
	sw	%x9, 16(%x2)  #2340 pc 37584
	sw	%x10, 20(%x2)  #2340 pc 37588
	fsw	%f0, 24(%x2)  #2340 pc 37592
	addi	%x5, %x6, 0  #0 pc 37600
	sw	%x1, 36(%x2)  #2340 pc 37604
	addi	%x2, %x2, 40  #2340 pc 37608
	jal	%x1, float_of_int.2553  #2340 pc 37612
	addi	%x2, %x2, -40  #2340 pc 37616
	lw	%x1, 36(%x2) #2340 pc 37620
	flw	%f1, 24(%x2)  #2340 pc 37624
	fmul	%f0, %f1, %f0  #2340 pc 37628
	lw	%x5, 20(%x2)  #2343 pc 37632
	add	%x24, %x0, %x5  #2343 pc 37636
	flw	%f1, 0(%x24)  #2343 pc 37640
	fmul	%f1, %f0, %f1  #2343 pc 37644
	lw	%x6, 16(%x2)  #2343 pc 37648
	add	%x24, %x0, %x6  #2343 pc 37652
	flw	%f2, 0(%x24)  #2343 pc 37656
	fadd	%f1, %f1, %f2  #2343 pc 37660
	addi	%x24, %x0, 4  #pc 37664
	add	%x24, %x24, %x5  #2344 pc 37668
	flw	%f2, 0(%x24)  #2344 pc 37672
	fmul	%f2, %f0, %f2  #2344 pc 37676
	addi	%x24, %x0, 4  #pc 37680
	add	%x24, %x24, %x6  #2344 pc 37684
	flw	%f3, 0(%x24)  #2344 pc 37688
	fadd	%f2, %f2, %f3  #2344 pc 37692
	addi	%x24, %x0, 8  #pc 37696
	add	%x24, %x24, %x5  #2345 pc 37700
	flw	%f3, 0(%x24)  #2345 pc 37704
	fmul	%f0, %f0, %f3  #2345 pc 37708
	addi	%x24, %x0, 8  #pc 37712
	add	%x24, %x24, %x6  #2345 pc 37716
	flw	%f3, 0(%x24)  #2345 pc 37720
	fadd	%f0, %f0, %f3  #2345 pc 37724
	lw	%x5, 12(%x2)  #2346 pc 37728
	add	%x24, %x0, %x5  #2346 pc 37732
	lw	%x5, 0(%x24)  #2346 pc 37736
	addi	%x6, %x5, -1  #2346 pc 37740
	lw	%x5, 4(%x2)  #2346 pc 37744
	lw	%x7, 0(%x2)  #2346 pc 37748
	lw	%x22, 8(%x2)  #2346 pc 37752
	fadd	%f29, %f2, %f30  #0 pc 37756
	fadd	%f2, %f0, %f30  #0 pc 37760
	fadd	%f0, %f1, %f30  #0 pc 37764
	fadd	%f1, %f29, %f30  #0 pc 37768
	lw	%x23, 0(%x22)  #2346 pc 37772
	jalr	%x0, %x23, 0  #2346 pc 37776
	nop #pc 37780
scan_pixel.3039:  #pc 37780
	addi	%x24, %x0, 24  #pc 37784
	add	%x24, %x24, %x22  #0 pc 37788
	lw	%x12, 0(%x24)  #0 pc 37792
	addi	%x24, %x0, 20  #pc 37796
	add	%x24, %x24, %x22  #0 pc 37800
	lw	%x13, 0(%x24)  #0 pc 37804
	addi	%x24, %x0, 16  #pc 37808
	add	%x24, %x24, %x22  #0 pc 37812
	lw	%x14, 0(%x24)  #0 pc 37816
	addi	%x24, %x0, 12  #pc 37820
	add	%x24, %x24, %x22  #0 pc 37824
	lw	%x15, 0(%x24)  #0 pc 37828
	addi	%x24, %x0, 8  #pc 37832
	add	%x24, %x24, %x22  #0 pc 37836
	lw	%x16, 0(%x24)  #0 pc 37840
	addi	%x24, %x0, 4  #pc 37844
	add	%x24, %x24, %x22  #0 pc 37848
	lw	%x17, 0(%x24)  #0 pc 37852
	add	%x24, %x0, %x16  #2356 pc 37856
	lw	%x16, 0(%x24)  #2356 pc 37860
	bge	%x5, %x16, 12  #2356 pc 37864
	j	ble_else.9574 #pc 37868
	nop #pc 37872
	ret #pc 37876
	nop #pc 37880
ble_else.9574: #pc 37880
	slli	%x16, %x5, 2  #2359 pc 37884
	add	%x24, %x16, %x9  #2359 pc 37888
	lw	%x16, 0(%x24)  #2359 pc 37892
	sw	%x22, 0(%x2)  #2359 pc 37896
	sw	%x11, 4(%x2)  #2359 pc 37900
	sw	%x12, 8(%x2)  #2359 pc 37904
	sw	%x7, 12(%x2)  #2359 pc 37908
	sw	%x13, 16(%x2)  #2359 pc 37912
	sw	%x17, 20(%x2)  #2359 pc 37916
	sw	%x9, 24(%x2)  #2359 pc 37920
	sw	%x10, 28(%x2)  #2359 pc 37924
	sw	%x6, 32(%x2)  #2359 pc 37928
	sw	%x5, 36(%x2)  #2359 pc 37932
	sw	%x15, 40(%x2)  #2359 pc 37936
	sw	%x14, 44(%x2)  #2359 pc 37940
	addi	%x5, %x16, 0  #0 pc 37948
	sw	%x1, 52(%x2)  #2359 pc 37952
	addi	%x2, %x2, 56  #2359 pc 37956
	jal	%x1, p_rgb.2724  #2359 pc 37960
	addi	%x2, %x2, -56  #2359 pc 37964
	lw	%x1, 52(%x2) #2359 pc 37968
	addi	%x6, %x5, 0  #2359 pc 37972
	lw	%x5, 44(%x2)  #2359 pc 37976
	sw	%x1, 52(%x2)  #2359 pc 37980
	addi	%x2, %x2, 56  #2359 pc 37984
	jal	%x1, veccpy.2654  #2359 pc 37988
	addi	%x2, %x2, -56  #2359 pc 37992
	lw	%x1, 52(%x2) #2359 pc 37996
	lw	%x5, 36(%x2)  #2362 pc 38000
	lw	%x6, 32(%x2)  #2362 pc 38004
	lw	%x7, 28(%x2)  #2362 pc 38008
	lw	%x22, 40(%x2)  #2362 pc 38012
	sw	%x1, 52(%x2)  #2362 pc 38016
	lw	%x23, 0(%x22)  #2362 pc 38020
	addi	%x2, %x2, 56  #2362 pc 38024
	jalr	%x1, %x23, 0  #2362 pc 38028
	addi	%x2, %x2, -56  #2362 pc 38032
	lw	%x1, 52(%x2)  #2362 pc 38036
	beq	%x5, %x0, 12  #2362 pc 38040
	j	be_else.9576 #pc 38044
	nop #pc 38048
	lw	%x5, 36(%x2)  #2365 pc 38052
	slli	%x6, %x5, 2  #2365 pc 38056
	lw	%x7, 24(%x2)  #2365 pc 38060
	add	%x24, %x6, %x7  #2365 pc 38064
	lw	%x6, 0(%x24)  #2365 pc 38068
	addi	%x9, %x0, 0  #0 pc 38072
	lw	%x22, 20(%x2)  #2365 pc 38076
	addi	%x5, %x6, 0  #0 pc 38084
	addi	%x6, %x9, 0  #0 pc 38092
	sw	%x1, 52(%x2)  #2365 pc 38096
	lw	%x23, 0(%x22)  #2365 pc 38100
	addi	%x2, %x2, 56  #2365 pc 38104
	jalr	%x1, %x23, 0  #2365 pc 38108
	addi	%x2, %x2, -56  #2365 pc 38112
	lw	%x1, 52(%x2)  #2365 pc 38116
	j	be_cont.9577 #pc 38120
	nop #pc 38124
be_else.9576: #pc 38124
	addi	%x11, %x0, 0  #0 pc 38128
	lw	%x5, 36(%x2)  #2363 pc 38132
	lw	%x6, 32(%x2)  #2363 pc 38136
	lw	%x7, 12(%x2)  #2363 pc 38140
	lw	%x9, 24(%x2)  #2363 pc 38144
	lw	%x10, 28(%x2)  #2363 pc 38148
	lw	%x22, 16(%x2)  #2363 pc 38152
	sw	%x1, 52(%x2)  #2363 pc 38156
	lw	%x23, 0(%x22)  #2363 pc 38160
	addi	%x2, %x2, 56  #2363 pc 38164
	jalr	%x1, %x23, 0  #2363 pc 38168
	addi	%x2, %x2, -56  #2363 pc 38172
	lw	%x1, 52(%x2)  #2363 pc 38176
be_cont.9577: #pc 38176
	lw	%x5, 4(%x2)  #2368 pc 38180
	lw	%x22, 8(%x2)  #2368 pc 38184
	sw	%x1, 52(%x2)  #2368 pc 38188
	lw	%x23, 0(%x22)  #2368 pc 38192
	addi	%x2, %x2, 56  #2368 pc 38196
	jalr	%x1, %x23, 0  #2368 pc 38200
	addi	%x2, %x2, -56  #2368 pc 38204
	lw	%x1, 52(%x2)  #2368 pc 38208
	lw	%x5, 36(%x2)  #2370 pc 38212
	addi	%x5, %x5, 1  #2370 pc 38216
	lw	%x6, 32(%x2)  #2370 pc 38220
	lw	%x7, 12(%x2)  #2370 pc 38224
	lw	%x9, 24(%x2)  #2370 pc 38228
	lw	%x10, 28(%x2)  #2370 pc 38232
	lw	%x11, 4(%x2)  #2370 pc 38236
	lw	%x22, 0(%x2)  #2370 pc 38240
	lw	%x23, 0(%x22)  #2370 pc 38244
	jalr	%x0, %x23, 0  #2370 pc 38248
	nop #pc 38252
scan_line.3046:  #pc 38252
	addi	%x24, %x0, 12  #pc 38256
	add	%x24, %x24, %x22  #0 pc 38260
	lw	%x12, 0(%x24)  #0 pc 38264
	addi	%x24, %x0, 8  #pc 38268
	add	%x24, %x24, %x22  #0 pc 38272
	lw	%x13, 0(%x24)  #0 pc 38276
	addi	%x24, %x0, 4  #pc 38280
	add	%x24, %x24, %x22  #0 pc 38284
	lw	%x14, 0(%x24)  #0 pc 38288
	addi	%x24, %x0, 4  #pc 38292
	add	%x24, %x24, %x14  #2377 pc 38296
	lw	%x15, 0(%x24)  #2377 pc 38300
	bge	%x5, %x15, 12  #2377 pc 38304
	j	ble_else.9578 #pc 38308
	nop #pc 38312
	ret #pc 38316
	nop #pc 38320
ble_else.9578: #pc 38320
	addi	%x24, %x0, 4  #pc 38324
	add	%x24, %x24, %x14  #2379 pc 38328
	lw	%x14, 0(%x24)  #2379 pc 38332
	addi	%x14, %x14, -1  #2379 pc 38336
	sw	%x22, 0(%x2)  #2379 pc 38340
	sw	%x10, 4(%x2)  #2379 pc 38344
	sw	%x11, 8(%x2)  #2379 pc 38348
	sw	%x9, 12(%x2)  #2379 pc 38352
	sw	%x7, 16(%x2)  #2379 pc 38356
	sw	%x6, 20(%x2)  #2379 pc 38360
	sw	%x5, 24(%x2)  #2379 pc 38364
	sw	%x12, 28(%x2)  #2379 pc 38368
	bge	%x5, %x14, 12  #2379 pc 38372
	j	ble_else.9580 #pc 38376
	nop #pc 38380
	j	ble_cont.9581 #pc 38384
	nop #pc 38388
ble_else.9580: #pc 38388
	addi	%x14, %x5, 1  #2380 pc 38392
	addi	%x7, %x10, 0  #0 pc 38400
	addi	%x6, %x14, 0  #0 pc 38408
	addi	%x5, %x9, 0  #0 pc 38416
	addi	%x22, %x13, 0  #0 pc 38424
	sw	%x1, 36(%x2)  #2380 pc 38428
	lw	%x23, 0(%x22)  #2380 pc 38432
	addi	%x2, %x2, 40  #2380 pc 38436
	jalr	%x1, %x23, 0  #2380 pc 38440
	addi	%x2, %x2, -40  #2380 pc 38444
	lw	%x1, 36(%x2)  #2380 pc 38448
ble_cont.9581: #pc 38448
	addi	%x5, %x0, 0  #0 pc 38452
	lw	%x6, 24(%x2)  #2382 pc 38456
	lw	%x7, 20(%x2)  #2382 pc 38460
	lw	%x9, 16(%x2)  #2382 pc 38464
	lw	%x10, 12(%x2)  #2382 pc 38468
	lw	%x11, 8(%x2)  #2382 pc 38472
	lw	%x22, 28(%x2)  #2382 pc 38476
	sw	%x1, 36(%x2)  #2382 pc 38480
	lw	%x23, 0(%x22)  #2382 pc 38484
	addi	%x2, %x2, 40  #2382 pc 38488
	jalr	%x1, %x23, 0  #2382 pc 38492
	addi	%x2, %x2, -40  #2382 pc 38496
	lw	%x1, 36(%x2)  #2382 pc 38500
	lw	%x5, 24(%x2)  #2383 pc 38504
	addi	%x5, %x5, 1  #2383 pc 38508
	addi	%x6, %x0, 2  #0 pc 38512
	lw	%x7, 4(%x2)  #2383 pc 38516
	sw	%x5, 32(%x2)  #2383 pc 38520
	addi	%x5, %x7, 0  #0 pc 38528
	sw	%x1, 36(%x2)  #2383 pc 38532
	addi	%x2, %x2, 40  #2383 pc 38536
	jal	%x1, add_mod5.2641  #2383 pc 38540
	addi	%x2, %x2, -40  #2383 pc 38544
	lw	%x1, 36(%x2) #2383 pc 38548
	addi	%x10, %x5, 0  #2383 pc 38552
	lw	%x5, 32(%x2)  #2383 pc 38556
	lw	%x6, 16(%x2)  #2383 pc 38560
	lw	%x7, 12(%x2)  #2383 pc 38564
	lw	%x9, 20(%x2)  #2383 pc 38568
	lw	%x11, 8(%x2)  #2383 pc 38572
	lw	%x22, 0(%x2)  #2383 pc 38576
	lw	%x23, 0(%x22)  #2383 pc 38580
	jalr	%x0, %x23, 0  #2383 pc 38584
	nop #pc 38588
create_float5x3array.3053:  #pc 38588
	addi	%x5, %x0, 3  #0 pc 38592
	fmv	%f0, l.6293  #0 pc 38596
	sw	%x1, 4(%x2)  #2394 pc 38600
	addi	%x2, %x2, 8  #2394 pc 38604
	jal	%x1, create_float_array.2600  #2394 pc 38608
	addi	%x2, %x2, -8  #2394 pc 38612
	lw	%x1, 4(%x2) #2394 pc 38616
	addi	%x6, %x5, 0  #2394 pc 38620
	addi	%x5, %x0, 5  #0 pc 38624
	sw	%x1, 4(%x2)  #2395 pc 38628
	addi	%x2, %x2, 8  #2395 pc 38632
	jal	%x1, create_array.2593  #2395 pc 38636
	addi	%x2, %x2, -8  #2395 pc 38640
	lw	%x1, 4(%x2) #2395 pc 38644
	addi	%x6, %x0, 3  #0 pc 38648
	fmv	%f0, l.6293  #0 pc 38652
	sw	%x5, 0(%x2)  #2396 pc 38656
	addi	%x5, %x6, 0  #0 pc 38664
	sw	%x1, 4(%x2)  #2396 pc 38668
	addi	%x2, %x2, 8  #2396 pc 38672
	jal	%x1, create_float_array.2600  #2396 pc 38676
	addi	%x2, %x2, -8  #2396 pc 38680
	lw	%x1, 4(%x2) #2396 pc 38684
	lw	%x6, 0(%x2)  #2396 pc 38688
	addi	%x24, %x0, 4  #pc 38692
	add	%x24, %x24, %x6  #2396 pc 38696
	sw	%x5, 0(%x24)  #2396 pc 38700
	addi	%x5, %x0, 3  #0 pc 38704
	fmv	%f0, l.6293  #0 pc 38708
	sw	%x1, 4(%x2)  #2397 pc 38712
	addi	%x2, %x2, 8  #2397 pc 38716
	jal	%x1, create_float_array.2600  #2397 pc 38720
	addi	%x2, %x2, -8  #2397 pc 38724
	lw	%x1, 4(%x2) #2397 pc 38728
	lw	%x6, 0(%x2)  #2397 pc 38732
	addi	%x24, %x0, 8  #pc 38736
	add	%x24, %x24, %x6  #2397 pc 38740
	sw	%x5, 0(%x24)  #2397 pc 38744
	addi	%x5, %x0, 3  #0 pc 38748
	fmv	%f0, l.6293  #0 pc 38752
	sw	%x1, 4(%x2)  #2398 pc 38756
	addi	%x2, %x2, 8  #2398 pc 38760
	jal	%x1, create_float_array.2600  #2398 pc 38764
	addi	%x2, %x2, -8  #2398 pc 38768
	lw	%x1, 4(%x2) #2398 pc 38772
	lw	%x6, 0(%x2)  #2398 pc 38776
	addi	%x24, %x0, 12  #pc 38780
	add	%x24, %x24, %x6  #2398 pc 38784
	sw	%x5, 0(%x24)  #2398 pc 38788
	addi	%x5, %x0, 3  #0 pc 38792
	fmv	%f0, l.6293  #0 pc 38796
	sw	%x1, 4(%x2)  #2399 pc 38800
	addi	%x2, %x2, 8  #2399 pc 38804
	jal	%x1, create_float_array.2600  #2399 pc 38808
	addi	%x2, %x2, -8  #2399 pc 38812
	lw	%x1, 4(%x2) #2399 pc 38816
	lw	%x6, 0(%x2)  #2399 pc 38820
	addi	%x24, %x0, 16  #pc 38824
	add	%x24, %x24, %x6  #2399 pc 38828
	sw	%x5, 0(%x24)  #2399 pc 38832
	addi	%x5, %x6, 0  #2400 pc 38836
	ret #pc 38840
	nop #pc 38844
create_pixel.3055:  #pc 38844
	addi	%x5, %x0, 3  #0 pc 38848
	fmv	%f0, l.6293  #0 pc 38852
	sw	%x1, 4(%x2)  #2406 pc 38856
	addi	%x2, %x2, 8  #2406 pc 38860
	jal	%x1, create_float_array.2600  #2406 pc 38864
	addi	%x2, %x2, -8  #2406 pc 38868
	lw	%x1, 4(%x2) #2406 pc 38872
	sw	%x5, 0(%x2)  #2407 pc 38876
	addi	%x5, %x0, 0  #0 pc 38884
	sw	%x1, 4(%x2)  #2407 pc 38888
	addi	%x2, %x2, 8  #2407 pc 38892
	jal	%x1, create_float5x3array.3053  #2407 pc 38896
	addi	%x2, %x2, -8  #2407 pc 38900
	lw	%x1, 4(%x2) #2407 pc 38904
	addi	%x6, %x0, 5  #0 pc 38908
	addi	%x7, %x0, 0  #0 pc 38912
	sw	%x5, 4(%x2)  #2408 pc 38916
	addi	%x5, %x6, 0  #0 pc 38924
	addi	%x6, %x7, 0  #0 pc 38932
	sw	%x1, 12(%x2)  #2408 pc 38936
	addi	%x2, %x2, 16  #2408 pc 38940
	jal	%x1, create_array.2593  #2408 pc 38944
	addi	%x2, %x2, -16  #2408 pc 38948
	lw	%x1, 12(%x2) #2408 pc 38952
	addi	%x6, %x0, 5  #0 pc 38956
	addi	%x7, %x0, 0  #0 pc 38960
	sw	%x5, 8(%x2)  #2409 pc 38964
	addi	%x5, %x6, 0  #0 pc 38972
	addi	%x6, %x7, 0  #0 pc 38980
	sw	%x1, 12(%x2)  #2409 pc 38984
	addi	%x2, %x2, 16  #2409 pc 38988
	jal	%x1, create_array.2593  #2409 pc 38992
	addi	%x2, %x2, -16  #2409 pc 38996
	lw	%x1, 12(%x2) #2409 pc 39000
	sw	%x5, 12(%x2)  #2410 pc 39004
	addi	%x5, %x0, 0  #0 pc 39012
	sw	%x1, 20(%x2)  #2410 pc 39016
	addi	%x2, %x2, 24  #2410 pc 39020
	jal	%x1, create_float5x3array.3053  #2410 pc 39024
	addi	%x2, %x2, -24  #2410 pc 39028
	lw	%x1, 20(%x2) #2410 pc 39032
	sw	%x5, 16(%x2)  #2411 pc 39036
	addi	%x5, %x0, 0  #0 pc 39044
	sw	%x1, 20(%x2)  #2411 pc 39048
	addi	%x2, %x2, 24  #2411 pc 39052
	jal	%x1, create_float5x3array.3053  #2411 pc 39056
	addi	%x2, %x2, -24  #2411 pc 39060
	lw	%x1, 20(%x2) #2411 pc 39064
	addi	%x6, %x0, 1  #0 pc 39068
	addi	%x7, %x0, 0  #0 pc 39072
	sw	%x5, 20(%x2)  #2412 pc 39076
	addi	%x5, %x6, 0  #0 pc 39084
	addi	%x6, %x7, 0  #0 pc 39092
	sw	%x1, 28(%x2)  #2412 pc 39096
	addi	%x2, %x2, 32  #2412 pc 39100
	jal	%x1, create_array.2593  #2412 pc 39104
	addi	%x2, %x2, -32  #2412 pc 39108
	lw	%x1, 28(%x2) #2412 pc 39112
	sw	%x5, 24(%x2)  #2413 pc 39116
	addi	%x5, %x0, 0  #0 pc 39124
	sw	%x1, 28(%x2)  #2413 pc 39128
	addi	%x2, %x2, 32  #2413 pc 39132
	jal	%x1, create_float5x3array.3053  #2413 pc 39136
	addi	%x2, %x2, -32  #2413 pc 39140
	lw	%x1, 28(%x2) #2413 pc 39144
	addi	%x6, %x3, 0  #2414 pc 39148
	addi	%x3, %x3, 32  #2414 pc 39152
	addi	%x24, %x0, 28  #pc 39156
	add	%x24, %x24, %x6  #2414 pc 39160
	sw	%x5, 0(%x24)  #2414 pc 39164
	lw	%x5, 24(%x2)  #2414 pc 39168
	addi	%x24, %x0, 24  #pc 39172
	add	%x24, %x24, %x6  #2414 pc 39176
	sw	%x5, 0(%x24)  #2414 pc 39180
	lw	%x5, 20(%x2)  #2414 pc 39184
	addi	%x24, %x0, 20  #pc 39188
	add	%x24, %x24, %x6  #2414 pc 39192
	sw	%x5, 0(%x24)  #2414 pc 39196
	lw	%x5, 16(%x2)  #2414 pc 39200
	addi	%x24, %x0, 16  #pc 39204
	add	%x24, %x24, %x6  #2414 pc 39208
	sw	%x5, 0(%x24)  #2414 pc 39212
	lw	%x5, 12(%x2)  #2414 pc 39216
	addi	%x24, %x0, 12  #pc 39220
	add	%x24, %x24, %x6  #2414 pc 39224
	sw	%x5, 0(%x24)  #2414 pc 39228
	lw	%x5, 8(%x2)  #2414 pc 39232
	addi	%x24, %x0, 8  #pc 39236
	add	%x24, %x24, %x6  #2414 pc 39240
	sw	%x5, 0(%x24)  #2414 pc 39244
	lw	%x5, 4(%x2)  #2414 pc 39248
	addi	%x24, %x0, 4  #pc 39252
	add	%x24, %x24, %x6  #2414 pc 39256
	sw	%x5, 0(%x24)  #2414 pc 39260
	lw	%x5, 0(%x2)  #2414 pc 39264
	add	%x24, %x0, %x6  #2414 pc 39268
	sw	%x5, 0(%x24)  #2414 pc 39272
	addi	%x5, %x6, 0  #2414 pc 39276
	ret #pc 39280
	nop #pc 39284
init_line_elements.3057:  #pc 39284
	bge	%x6, %x0, 12  #2419 pc 39288
	j	bge_else.9582 #pc 39292
	nop #pc 39296
	sw	%x5, 0(%x2)  #2420 pc 39300
	sw	%x6, 4(%x2)  #2420 pc 39304
	addi	%x5, %x0, 0  #0 pc 39312
	sw	%x1, 12(%x2)  #2420 pc 39316
	addi	%x2, %x2, 16  #2420 pc 39320
	jal	%x1, create_pixel.3055  #2420 pc 39324
	addi	%x2, %x2, -16  #2420 pc 39328
	lw	%x1, 12(%x2) #2420 pc 39332
	lw	%x6, 4(%x2)  #2420 pc 39336
	slli	%x7, %x6, 2  #2420 pc 39340
	lw	%x9, 0(%x2)  #2420 pc 39344
	add	%x24, %x7, %x9  #2420 pc 39348
	sw	%x5, 0(%x24)  #2420 pc 39352
	addi	%x6, %x6, -1  #2421 pc 39356
	addi	%x5, %x9, 0  #0 pc 39364
	j	init_line_elements.3057  #2421 pc 39368
	nop #pc 39372
bge_else.9582: #pc 39372
	ret #pc 39376
	nop #pc 39380
create_pixelline.3060:  #pc 39380
	addi	%x24, %x0, 4  #pc 39384
	add	%x24, %x24, %x22  #0 pc 39388
	lw	%x5, 0(%x24)  #0 pc 39392
	add	%x24, %x0, %x5  #2428 pc 39396
	lw	%x6, 0(%x24)  #2428 pc 39400
	sw	%x5, 0(%x2)  #2428 pc 39404
	sw	%x6, 4(%x2)  #2428 pc 39408
	addi	%x5, %x0, 0  #0 pc 39416
	sw	%x1, 12(%x2)  #2428 pc 39420
	addi	%x2, %x2, 16  #2428 pc 39424
	jal	%x1, create_pixel.3055  #2428 pc 39428
	addi	%x2, %x2, -16  #2428 pc 39432
	lw	%x1, 12(%x2) #2428 pc 39436
	addi	%x6, %x5, 0  #2428 pc 39440
	lw	%x5, 4(%x2)  #2428 pc 39444
	sw	%x1, 12(%x2)  #2428 pc 39448
	addi	%x2, %x2, 16  #2428 pc 39452
	jal	%x1, create_array.2593  #2428 pc 39456
	addi	%x2, %x2, -16  #2428 pc 39460
	lw	%x1, 12(%x2) #2428 pc 39464
	lw	%x6, 0(%x2)  #2429 pc 39468
	add	%x24, %x0, %x6  #2429 pc 39472
	lw	%x6, 0(%x24)  #2429 pc 39476
	addi	%x6, %x6, -2  #2429 pc 39480
	j	init_line_elements.3057  #2429 pc 39484
	nop #pc 39488
tan.3062:  #pc 39488
	fsw	%f0, 0(%x2)  #2442 pc 39492
	sw	%x1, 12(%x2)  #2442 pc 39496
	addi	%x2, %x2, 16  #2442 pc 39500
	jal	%x1, sin.2543  #2442 pc 39504
	addi	%x2, %x2, -16  #2442 pc 39508
	lw	%x1, 12(%x2) #2442 pc 39512
	flw	%f1, 0(%x2)  #2442 pc 39516
	fsw	%f0, 8(%x2)  #2442 pc 39520
	fadd	%f0, %f1, %f30  #0 pc 39524
	sw	%x1, 20(%x2)  #2442 pc 39528
	addi	%x2, %x2, 24  #2442 pc 39532
	jal	%x1, cos.2545  #2442 pc 39536
	addi	%x2, %x2, -24  #2442 pc 39540
	lw	%x1, 20(%x2) #2442 pc 39544
	flw	%f1, 8(%x2)  #2442 pc 39548
	fdiv	%f0, %f1, %f0  #2442 pc 39552
	ret #pc 39556
	nop #pc 39560
adjust_position.3064:  #pc 39560
	fmul	%f0, %f0, %f0  #2447 pc 39564
	fmv	%f2, l.6871  #0 pc 39568
	fadd	%f0, %f0, %f2  #2447 pc 39572
	fsqrt	%f0, %f0  #2447 pc 39576
	fmv	%f2, l.6305  #0 pc 39580
	fdiv	%f2, %f2, %f0  #2448 pc 39584
	fsw	%f0, 0(%x2)  #2449 pc 39588
	fsw	%f1, 8(%x2)  #2449 pc 39592
	fadd	%f0, %f2, %f30  #0 pc 39596
	sw	%x1, 20(%x2)  #2449 pc 39600
	addi	%x2, %x2, 24  #2449 pc 39604
	jal	%x1, atan.2547  #2449 pc 39608
	addi	%x2, %x2, -24  #2449 pc 39612
	lw	%x1, 20(%x2) #2449 pc 39616
	flw	%f1, 8(%x2)  #2450 pc 39620
	fmul	%f0, %f0, %f1  #2450 pc 39624
	sw	%x1, 20(%x2)  #2450 pc 39628
	addi	%x2, %x2, 24  #2450 pc 39632
	jal	%x1, tan.3062  #2450 pc 39636
	addi	%x2, %x2, -24  #2450 pc 39640
	lw	%x1, 20(%x2) #2450 pc 39644
	flw	%f1, 0(%x2)  #2451 pc 39648
	fmul	%f0, %f0, %f1  #2451 pc 39652
	ret #pc 39656
	nop #pc 39660
calc_dirvec.3067:  #pc 39660
	addi	%x24, %x0, 4  #pc 39664
	add	%x24, %x24, %x22  #0 pc 39668
	lw	%x9, 0(%x24)  #0 pc 39672
	addi	%x24, %x0, 5  #pc 39676
	bge	%x5, %x24, 12  #2456 pc 39680
	j	bge_else.9583 #pc 39684
	nop #pc 39688
	sw	%x7, 0(%x2)  #2457 pc 39692
	sw	%x9, 4(%x2)  #2457 pc 39696
	sw	%x6, 8(%x2)  #2457 pc 39700
	fsw	%f0, 16(%x2)  #2457 pc 39704
	fsw	%f1, 24(%x2)  #2457 pc 39708
	sw	%x1, 36(%x2)  #2457 pc 39712
	addi	%x2, %x2, 40  #2457 pc 39716
	jal	%x1, fsqr.2536  #2457 pc 39720
	addi	%x2, %x2, -40  #2457 pc 39724
	lw	%x1, 36(%x2) #2457 pc 39728
	flw	%f1, 24(%x2)  #2457 pc 39732
	fsw	%f0, 32(%x2)  #2457 pc 39736
	fadd	%f0, %f1, %f30  #0 pc 39740
	sw	%x1, 44(%x2)  #2457 pc 39744
	addi	%x2, %x2, 48  #2457 pc 39748
	jal	%x1, fsqr.2536  #2457 pc 39752
	addi	%x2, %x2, -48  #2457 pc 39756
	lw	%x1, 44(%x2) #2457 pc 39760
	flw	%f1, 32(%x2)  #2457 pc 39764
	fadd	%f0, %f1, %f0  #2457 pc 39768
	fmv	%f1, l.6305  #0 pc 39772
	fadd	%f0, %f0, %f1  #2457 pc 39776
	fsqrt	%f0, %f0  #2457 pc 39780
	flw	%f1, 16(%x2)  #2458 pc 39784
	fdiv	%f1, %f1, %f0  #2458 pc 39788
	flw	%f2, 24(%x2)  #2459 pc 39792
	fdiv	%f2, %f2, %f0  #2459 pc 39796
	fmv	%f3, l.6305  #0 pc 39800
	fdiv	%f0, %f3, %f0  #2460 pc 39804
	lw	%x5, 8(%x2)  #2463 pc 39808
	slli	%x5, %x5, 2  #2463 pc 39812
	lw	%x6, 4(%x2)  #2463 pc 39816
	add	%x24, %x5, %x6  #2463 pc 39820
	lw	%x5, 0(%x24)  #2463 pc 39824
	lw	%x6, 0(%x2)  #2464 pc 39828
	slli	%x7, %x6, 2  #2464 pc 39832
	add	%x24, %x7, %x5  #2464 pc 39836
	lw	%x7, 0(%x24)  #2464 pc 39840
	sw	%x5, 40(%x2)  #2464 pc 39844
	fsw	%f0, 48(%x2)  #2464 pc 39848
	fsw	%f2, 56(%x2)  #2464 pc 39852
	fsw	%f1, 64(%x2)  #2464 pc 39856
	addi	%x5, %x7, 0  #0 pc 39864
	sw	%x1, 76(%x2)  #2464 pc 39868
	addi	%x2, %x2, 80  #2464 pc 39872
	jal	%x1, d_vec.2743  #2464 pc 39876
	addi	%x2, %x2, -80  #2464 pc 39880
	lw	%x1, 76(%x2) #2464 pc 39884
	flw	%f0, 64(%x2)  #2464 pc 39888
	flw	%f1, 56(%x2)  #2464 pc 39892
	flw	%f2, 48(%x2)  #2464 pc 39896
	sw	%x1, 76(%x2)  #2464 pc 39900
	addi	%x2, %x2, 80  #2464 pc 39904
	jal	%x1, vecset.2644  #2464 pc 39908
	addi	%x2, %x2, -80  #2464 pc 39912
	lw	%x1, 76(%x2) #2464 pc 39916
	lw	%x5, 0(%x2)  #2465 pc 39920
	addi	%x6, %x5, 40  #2465 pc 39924
	slli	%x6, %x6, 2  #2465 pc 39928
	lw	%x7, 40(%x2)  #2465 pc 39932
	add	%x24, %x6, %x7  #2465 pc 39936
	lw	%x6, 0(%x24)  #2465 pc 39940
	addi	%x5, %x6, 0  #0 pc 39948
	sw	%x1, 76(%x2)  #2465 pc 39952
	addi	%x2, %x2, 80  #2465 pc 39956
	jal	%x1, d_vec.2743  #2465 pc 39960
	addi	%x2, %x2, -80  #2465 pc 39964
	lw	%x1, 76(%x2) #2465 pc 39968
	flw	%f0, 56(%x2)  #2465 pc 39972
	sw	%x5, 72(%x2)  #2465 pc 39976
	sw	%x1, 76(%x2)  #2465 pc 39980
	addi	%x2, %x2, 80  #2465 pc 39984
	jal	%x1, fneg.2534  #2465 pc 39988
	addi	%x2, %x2, -80  #2465 pc 39992
	lw	%x1, 76(%x2) #2465 pc 39996
	fadd	%f2, %f0, %f30  #2465 pc 40000
	flw	%f0, 64(%x2)  #2465 pc 40004
	flw	%f1, 48(%x2)  #2465 pc 40008
	lw	%x5, 72(%x2)  #2465 pc 40012
	sw	%x1, 76(%x2)  #2465 pc 40016
	addi	%x2, %x2, 80  #2465 pc 40020
	jal	%x1, vecset.2644  #2465 pc 40024
	addi	%x2, %x2, -80  #2465 pc 40028
	lw	%x1, 76(%x2) #2465 pc 40032
	lw	%x5, 0(%x2)  #2466 pc 40036
	addi	%x6, %x5, 80  #2466 pc 40040
	slli	%x6, %x6, 2  #2466 pc 40044
	lw	%x7, 40(%x2)  #2466 pc 40048
	add	%x24, %x6, %x7  #2466 pc 40052
	lw	%x6, 0(%x24)  #2466 pc 40056
	addi	%x5, %x6, 0  #0 pc 40064
	sw	%x1, 76(%x2)  #2466 pc 40068
	addi	%x2, %x2, 80  #2466 pc 40072
	jal	%x1, d_vec.2743  #2466 pc 40076
	addi	%x2, %x2, -80  #2466 pc 40080
	lw	%x1, 76(%x2) #2466 pc 40084
	flw	%f0, 64(%x2)  #2466 pc 40088
	sw	%x5, 76(%x2)  #2466 pc 40092
	sw	%x1, 84(%x2)  #2466 pc 40096
	addi	%x2, %x2, 88  #2466 pc 40100
	jal	%x1, fneg.2534  #2466 pc 40104
	addi	%x2, %x2, -88  #2466 pc 40108
	lw	%x1, 84(%x2) #2466 pc 40112
	flw	%f1, 56(%x2)  #2466 pc 40116
	fsw	%f0, 80(%x2)  #2466 pc 40120
	fadd	%f0, %f1, %f30  #0 pc 40124
	sw	%x1, 92(%x2)  #2466 pc 40128
	addi	%x2, %x2, 96  #2466 pc 40132
	jal	%x1, fneg.2534  #2466 pc 40136
	addi	%x2, %x2, -96  #2466 pc 40140
	lw	%x1, 92(%x2) #2466 pc 40144
	fadd	%f2, %f0, %f30  #2466 pc 40148
	flw	%f0, 48(%x2)  #2466 pc 40152
	flw	%f1, 80(%x2)  #2466 pc 40156
	lw	%x5, 76(%x2)  #2466 pc 40160
	sw	%x1, 92(%x2)  #2466 pc 40164
	addi	%x2, %x2, 96  #2466 pc 40168
	jal	%x1, vecset.2644  #2466 pc 40172
	addi	%x2, %x2, -96  #2466 pc 40176
	lw	%x1, 92(%x2) #2466 pc 40180
	lw	%x5, 0(%x2)  #2467 pc 40184
	addi	%x6, %x5, 1  #2467 pc 40188
	slli	%x6, %x6, 2  #2467 pc 40192
	lw	%x7, 40(%x2)  #2467 pc 40196
	add	%x24, %x6, %x7  #2467 pc 40200
	lw	%x6, 0(%x24)  #2467 pc 40204
	addi	%x5, %x6, 0  #0 pc 40212
	sw	%x1, 92(%x2)  #2467 pc 40216
	addi	%x2, %x2, 96  #2467 pc 40220
	jal	%x1, d_vec.2743  #2467 pc 40224
	addi	%x2, %x2, -96  #2467 pc 40228
	lw	%x1, 92(%x2) #2467 pc 40232
	flw	%f0, 64(%x2)  #2467 pc 40236
	sw	%x5, 88(%x2)  #2467 pc 40240
	sw	%x1, 92(%x2)  #2467 pc 40244
	addi	%x2, %x2, 96  #2467 pc 40248
	jal	%x1, fneg.2534  #2467 pc 40252
	addi	%x2, %x2, -96  #2467 pc 40256
	lw	%x1, 92(%x2) #2467 pc 40260
	flw	%f1, 56(%x2)  #2467 pc 40264
	fsw	%f0, 96(%x2)  #2467 pc 40268
	fadd	%f0, %f1, %f30  #0 pc 40272
	sw	%x1, 108(%x2)  #2467 pc 40276
	addi	%x2, %x2, 112  #2467 pc 40280
	jal	%x1, fneg.2534  #2467 pc 40284
	addi	%x2, %x2, -112  #2467 pc 40288
	lw	%x1, 108(%x2) #2467 pc 40292
	flw	%f1, 48(%x2)  #2467 pc 40296
	fsw	%f0, 104(%x2)  #2467 pc 40300
	fadd	%f0, %f1, %f30  #0 pc 40304
	sw	%x1, 116(%x2)  #2467 pc 40308
	addi	%x2, %x2, 120  #2467 pc 40312
	jal	%x1, fneg.2534  #2467 pc 40316
	addi	%x2, %x2, -120  #2467 pc 40320
	lw	%x1, 116(%x2) #2467 pc 40324
	fadd	%f2, %f0, %f30  #2467 pc 40328
	flw	%f0, 96(%x2)  #2467 pc 40332
	flw	%f1, 104(%x2)  #2467 pc 40336
	lw	%x5, 88(%x2)  #2467 pc 40340
	sw	%x1, 116(%x2)  #2467 pc 40344
	addi	%x2, %x2, 120  #2467 pc 40348
	jal	%x1, vecset.2644  #2467 pc 40352
	addi	%x2, %x2, -120  #2467 pc 40356
	lw	%x1, 116(%x2) #2467 pc 40360
	lw	%x5, 0(%x2)  #2468 pc 40364
	addi	%x6, %x5, 41  #2468 pc 40368
	slli	%x6, %x6, 2  #2468 pc 40372
	lw	%x7, 40(%x2)  #2468 pc 40376
	add	%x24, %x6, %x7  #2468 pc 40380
	lw	%x6, 0(%x24)  #2468 pc 40384
	addi	%x5, %x6, 0  #0 pc 40392
	sw	%x1, 116(%x2)  #2468 pc 40396
	addi	%x2, %x2, 120  #2468 pc 40400
	jal	%x1, d_vec.2743  #2468 pc 40404
	addi	%x2, %x2, -120  #2468 pc 40408
	lw	%x1, 116(%x2) #2468 pc 40412
	flw	%f0, 64(%x2)  #2468 pc 40416
	sw	%x5, 112(%x2)  #2468 pc 40420
	sw	%x1, 116(%x2)  #2468 pc 40424
	addi	%x2, %x2, 120  #2468 pc 40428
	jal	%x1, fneg.2534  #2468 pc 40432
	addi	%x2, %x2, -120  #2468 pc 40436
	lw	%x1, 116(%x2) #2468 pc 40440
	flw	%f1, 48(%x2)  #2468 pc 40444
	fsw	%f0, 120(%x2)  #2468 pc 40448
	fadd	%f0, %f1, %f30  #0 pc 40452
	sw	%x1, 132(%x2)  #2468 pc 40456
	addi	%x2, %x2, 136  #2468 pc 40460
	jal	%x1, fneg.2534  #2468 pc 40464
	addi	%x2, %x2, -136  #2468 pc 40468
	lw	%x1, 132(%x2) #2468 pc 40472
	fadd	%f1, %f0, %f30  #2468 pc 40476
	flw	%f0, 120(%x2)  #2468 pc 40480
	flw	%f2, 56(%x2)  #2468 pc 40484
	lw	%x5, 112(%x2)  #2468 pc 40488
	sw	%x1, 132(%x2)  #2468 pc 40492
	addi	%x2, %x2, 136  #2468 pc 40496
	jal	%x1, vecset.2644  #2468 pc 40500
	addi	%x2, %x2, -136  #2468 pc 40504
	lw	%x1, 132(%x2) #2468 pc 40508
	lw	%x5, 0(%x2)  #2469 pc 40512
	addi	%x5, %x5, 81  #2469 pc 40516
	slli	%x5, %x5, 2  #2469 pc 40520
	lw	%x6, 40(%x2)  #2469 pc 40524
	add	%x24, %x5, %x6  #2469 pc 40528
	lw	%x5, 0(%x24)  #2469 pc 40532
	sw	%x1, 132(%x2)  #2469 pc 40536
	addi	%x2, %x2, 136  #2469 pc 40540
	jal	%x1, d_vec.2743  #2469 pc 40544
	addi	%x2, %x2, -136  #2469 pc 40548
	lw	%x1, 132(%x2) #2469 pc 40552
	flw	%f0, 48(%x2)  #2469 pc 40556
	sw	%x5, 128(%x2)  #2469 pc 40560
	sw	%x1, 132(%x2)  #2469 pc 40564
	addi	%x2, %x2, 136  #2469 pc 40568
	jal	%x1, fneg.2534  #2469 pc 40572
	addi	%x2, %x2, -136  #2469 pc 40576
	lw	%x1, 132(%x2) #2469 pc 40580
	flw	%f1, 64(%x2)  #2469 pc 40584
	flw	%f2, 56(%x2)  #2469 pc 40588
	lw	%x5, 128(%x2)  #2469 pc 40592
	j	vecset.2644  #2469 pc 40596
	nop #pc 40600
bge_else.9583: #pc 40600
	fsw	%f2, 136(%x2)  #2471 pc 40604
	sw	%x7, 0(%x2)  #2471 pc 40608
	sw	%x6, 8(%x2)  #2471 pc 40612
	sw	%x22, 144(%x2)  #2471 pc 40616
	fsw	%f3, 152(%x2)  #2471 pc 40620
	sw	%x5, 160(%x2)  #2471 pc 40624
	fadd	%f0, %f1, %f30  #0 pc 40628
	fadd	%f1, %f2, %f30  #0 pc 40632
	sw	%x1, 164(%x2)  #2471 pc 40636
	addi	%x2, %x2, 168  #2471 pc 40640
	jal	%x1, adjust_position.3064  #2471 pc 40644
	addi	%x2, %x2, -168  #2471 pc 40648
	lw	%x1, 164(%x2) #2471 pc 40652
	lw	%x5, 160(%x2)  #2472 pc 40656
	addi	%x5, %x5, 1  #2472 pc 40660
	flw	%f1, 152(%x2)  #2472 pc 40664
	fsw	%f0, 168(%x2)  #2472 pc 40668
	sw	%x5, 176(%x2)  #2472 pc 40672
	sw	%x1, 180(%x2)  #2472 pc 40676
	addi	%x2, %x2, 184  #2472 pc 40680
	jal	%x1, adjust_position.3064  #2472 pc 40684
	addi	%x2, %x2, -184  #2472 pc 40688
	lw	%x1, 180(%x2) #2472 pc 40692
	fadd	%f1, %f0, %f30  #2472 pc 40696
	flw	%f0, 168(%x2)  #2472 pc 40700
	flw	%f2, 136(%x2)  #2472 pc 40704
	flw	%f3, 152(%x2)  #2472 pc 40708
	lw	%x5, 176(%x2)  #2472 pc 40712
	lw	%x6, 8(%x2)  #2472 pc 40716
	lw	%x7, 0(%x2)  #2472 pc 40720
	lw	%x22, 144(%x2)  #2472 pc 40724
	lw	%x23, 0(%x22)  #2472 pc 40728
	jalr	%x0, %x23, 0  #2472 pc 40732
	nop #pc 40736
calc_dirvecs.3075:  #pc 40736
	addi	%x24, %x0, 4  #pc 40740
	add	%x24, %x24, %x22  #0 pc 40744
	lw	%x9, 0(%x24)  #0 pc 40748
	bge	%x5, %x0, 12  #2477 pc 40752
	j	bge_else.9591 #pc 40756
	nop #pc 40760
	sw	%x22, 0(%x2)  #2479 pc 40764
	sw	%x5, 4(%x2)  #2479 pc 40768
	fsw	%f0, 8(%x2)  #2479 pc 40772
	sw	%x7, 16(%x2)  #2479 pc 40776
	sw	%x6, 20(%x2)  #2479 pc 40780
	sw	%x9, 24(%x2)  #2479 pc 40784
	sw	%x1, 28(%x2)  #2479 pc 40788
	addi	%x2, %x2, 32  #2479 pc 40792
	jal	%x1, float_of_int.2553  #2479 pc 40796
	addi	%x2, %x2, -32  #2479 pc 40800
	lw	%x1, 28(%x2) #2479 pc 40804
	fmv	%f1, l.6314  #0 pc 40808
	fmul	%f0, %f0, %f1  #2479 pc 40812
	fmv	%f1, l.7004  #0 pc 40816
	fsub	%f2, %f0, %f1  #2479 pc 40820
	addi	%x5, %x0, 0  #0 pc 40824
	fmv	%f0, l.6293  #0 pc 40828
	fmv	%f1, l.6293  #0 pc 40832
	flw	%f3, 8(%x2)  #2480 pc 40836
	lw	%x6, 20(%x2)  #2480 pc 40840
	lw	%x7, 16(%x2)  #2480 pc 40844
	lw	%x22, 24(%x2)  #2480 pc 40848
	sw	%x1, 28(%x2)  #2480 pc 40852
	lw	%x23, 0(%x22)  #2480 pc 40856
	addi	%x2, %x2, 32  #2480 pc 40860
	jalr	%x1, %x23, 0  #2480 pc 40864
	addi	%x2, %x2, -32  #2480 pc 40868
	lw	%x1, 28(%x2)  #2480 pc 40872
	lw	%x5, 4(%x2)  #2482 pc 40876
	sw	%x1, 28(%x2)  #2482 pc 40880
	addi	%x2, %x2, 32  #2482 pc 40884
	jal	%x1, float_of_int.2553  #2482 pc 40888
	addi	%x2, %x2, -32  #2482 pc 40892
	lw	%x1, 28(%x2) #2482 pc 40896
	fmv	%f1, l.6314  #0 pc 40900
	fmul	%f0, %f0, %f1  #2482 pc 40904
	fmv	%f1, l.6871  #0 pc 40908
	fadd	%f2, %f0, %f1  #2482 pc 40912
	addi	%x5, %x0, 0  #0 pc 40916
	fmv	%f0, l.6293  #0 pc 40920
	fmv	%f1, l.6293  #0 pc 40924
	lw	%x6, 16(%x2)  #2483 pc 40928
	addi	%x7, %x6, 2  #2483 pc 40932
	flw	%f3, 8(%x2)  #2483 pc 40936
	lw	%x9, 20(%x2)  #2483 pc 40940
	lw	%x22, 24(%x2)  #2483 pc 40944
	addi	%x6, %x9, 0  #0 pc 40952
	sw	%x1, 28(%x2)  #2483 pc 40956
	lw	%x23, 0(%x22)  #2483 pc 40960
	addi	%x2, %x2, 32  #2483 pc 40964
	jalr	%x1, %x23, 0  #2483 pc 40968
	addi	%x2, %x2, -32  #2483 pc 40972
	lw	%x1, 28(%x2)  #2483 pc 40976
	lw	%x5, 4(%x2)  #2485 pc 40980
	addi	%x5, %x5, -1  #2485 pc 40984
	addi	%x6, %x0, 1  #0 pc 40988
	lw	%x7, 20(%x2)  #2485 pc 40992
	sw	%x5, 28(%x2)  #2485 pc 40996
	addi	%x5, %x7, 0  #0 pc 41004
	sw	%x1, 36(%x2)  #2485 pc 41008
	addi	%x2, %x2, 40  #2485 pc 41012
	jal	%x1, add_mod5.2641  #2485 pc 41016
	addi	%x2, %x2, -40  #2485 pc 41020
	lw	%x1, 36(%x2) #2485 pc 41024
	addi	%x6, %x5, 0  #2485 pc 41028
	flw	%f0, 8(%x2)  #2485 pc 41032
	lw	%x5, 28(%x2)  #2485 pc 41036
	lw	%x7, 16(%x2)  #2485 pc 41040
	lw	%x22, 0(%x2)  #2485 pc 41044
	lw	%x23, 0(%x22)  #2485 pc 41048
	jalr	%x0, %x23, 0  #2485 pc 41052
	nop #pc 41056
bge_else.9591: #pc 41056
	ret #pc 41060
	nop #pc 41064
calc_dirvec_rows.3080:  #pc 41064
	addi	%x24, %x0, 4  #pc 41068
	add	%x24, %x24, %x22  #0 pc 41072
	lw	%x9, 0(%x24)  #0 pc 41076
	bge	%x5, %x0, 12  #2491 pc 41080
	j	bge_else.9593 #pc 41084
	nop #pc 41088
	sw	%x22, 0(%x2)  #2492 pc 41092
	sw	%x5, 4(%x2)  #2492 pc 41096
	sw	%x7, 8(%x2)  #2492 pc 41100
	sw	%x6, 12(%x2)  #2492 pc 41104
	sw	%x9, 16(%x2)  #2492 pc 41108
	sw	%x1, 20(%x2)  #2492 pc 41112
	addi	%x2, %x2, 24  #2492 pc 41116
	jal	%x1, float_of_int.2553  #2492 pc 41120
	addi	%x2, %x2, -24  #2492 pc 41124
	lw	%x1, 20(%x2) #2492 pc 41128
	fmv	%f1, l.6314  #0 pc 41132
	fmul	%f0, %f0, %f1  #2492 pc 41136
	fmv	%f1, l.7004  #0 pc 41140
	fsub	%f0, %f0, %f1  #2492 pc 41144
	addi	%x5, %x0, 4  #0 pc 41148
	lw	%x6, 12(%x2)  #2493 pc 41152
	lw	%x7, 8(%x2)  #2493 pc 41156
	lw	%x22, 16(%x2)  #2493 pc 41160
	sw	%x1, 20(%x2)  #2493 pc 41164
	lw	%x23, 0(%x22)  #2493 pc 41168
	addi	%x2, %x2, 24  #2493 pc 41172
	jalr	%x1, %x23, 0  #2493 pc 41176
	addi	%x2, %x2, -24  #2493 pc 41180
	lw	%x1, 20(%x2)  #2493 pc 41184
	lw	%x5, 4(%x2)  #2494 pc 41188
	addi	%x5, %x5, -1  #2494 pc 41192
	addi	%x6, %x0, 2  #0 pc 41196
	lw	%x7, 12(%x2)  #2494 pc 41200
	sw	%x5, 20(%x2)  #2494 pc 41204
	addi	%x5, %x7, 0  #0 pc 41212
	sw	%x1, 28(%x2)  #2494 pc 41216
	addi	%x2, %x2, 32  #2494 pc 41220
	jal	%x1, add_mod5.2641  #2494 pc 41224
	addi	%x2, %x2, -32  #2494 pc 41228
	lw	%x1, 28(%x2) #2494 pc 41232
	addi	%x6, %x5, 0  #2494 pc 41236
	lw	%x5, 8(%x2)  #2494 pc 41240
	addi	%x7, %x5, 4  #2494 pc 41244
	lw	%x5, 20(%x2)  #2494 pc 41248
	lw	%x22, 0(%x2)  #2494 pc 41252
	lw	%x23, 0(%x22)  #2494 pc 41256
	jalr	%x0, %x23, 0  #2494 pc 41260
	nop #pc 41264
bge_else.9593: #pc 41264
	ret #pc 41268
	nop #pc 41272
create_dirvec.3084:  #pc 41272
	addi	%x24, %x0, 4  #pc 41276
	add	%x24, %x24, %x22  #0 pc 41280
	lw	%x5, 0(%x24)  #0 pc 41284
	addi	%x6, %x0, 3  #0 pc 41288
	fmv	%f0, l.6293  #0 pc 41292
	sw	%x5, 0(%x2)  #2504 pc 41296
	addi	%x5, %x6, 0  #0 pc 41304
	sw	%x1, 4(%x2)  #2504 pc 41308
	addi	%x2, %x2, 8  #2504 pc 41312
	jal	%x1, create_float_array.2600  #2504 pc 41316
	addi	%x2, %x2, -8  #2504 pc 41320
	lw	%x1, 4(%x2) #2504 pc 41324
	addi	%x6, %x5, 0  #2504 pc 41328
	lw	%x5, 0(%x2)  #2505 pc 41332
	add	%x24, %x0, %x5  #2505 pc 41336
	lw	%x5, 0(%x24)  #2505 pc 41340
	sw	%x6, 4(%x2)  #2505 pc 41344
	sw	%x1, 12(%x2)  #2505 pc 41348
	addi	%x2, %x2, 16  #2505 pc 41352
	jal	%x1, create_array.2593  #2505 pc 41356
	addi	%x2, %x2, -16  #2505 pc 41360
	lw	%x1, 12(%x2) #2505 pc 41364
	addi	%x6, %x3, 0  #2506 pc 41368
	addi	%x3, %x3, 8  #2506 pc 41372
	addi	%x24, %x0, 4  #pc 41376
	add	%x24, %x24, %x6  #2506 pc 41380
	sw	%x5, 0(%x24)  #2506 pc 41384
	lw	%x5, 4(%x2)  #2506 pc 41388
	add	%x24, %x0, %x6  #2506 pc 41392
	sw	%x5, 0(%x24)  #2506 pc 41396
	addi	%x5, %x6, 0  #2506 pc 41400
	ret #pc 41404
	nop #pc 41408
create_dirvec_elements.3086:  #pc 41408
	addi	%x24, %x0, 4  #pc 41412
	add	%x24, %x24, %x22  #0 pc 41416
	lw	%x7, 0(%x24)  #0 pc 41420
	bge	%x6, %x0, 12  #2510 pc 41424
	j	bge_else.9595 #pc 41428
	nop #pc 41432
	sw	%x22, 0(%x2)  #2511 pc 41436
	sw	%x5, 4(%x2)  #2511 pc 41440
	sw	%x6, 8(%x2)  #2511 pc 41444
	addi	%x5, %x0, 0  #0 pc 41452
	addi	%x22, %x7, 0  #0 pc 41460
	sw	%x1, 12(%x2)  #2511 pc 41464
	lw	%x23, 0(%x22)  #2511 pc 41468
	addi	%x2, %x2, 16  #2511 pc 41472
	jalr	%x1, %x23, 0  #2511 pc 41476
	addi	%x2, %x2, -16  #2511 pc 41480
	lw	%x1, 12(%x2)  #2511 pc 41484
	lw	%x6, 8(%x2)  #2511 pc 41488
	slli	%x7, %x6, 2  #2511 pc 41492
	lw	%x9, 4(%x2)  #2511 pc 41496
	add	%x24, %x7, %x9  #2511 pc 41500
	sw	%x5, 0(%x24)  #2511 pc 41504
	addi	%x6, %x6, -1  #2512 pc 41508
	lw	%x22, 0(%x2)  #2512 pc 41512
	addi	%x5, %x9, 0  #0 pc 41520
	lw	%x23, 0(%x22)  #2512 pc 41524
	jalr	%x0, %x23, 0  #2512 pc 41528
	nop #pc 41532
bge_else.9595: #pc 41532
	ret #pc 41536
	nop #pc 41540
create_dirvecs.3089:  #pc 41540
	addi	%x24, %x0, 12  #pc 41544
	add	%x24, %x24, %x22  #0 pc 41548
	lw	%x6, 0(%x24)  #0 pc 41552
	addi	%x24, %x0, 8  #pc 41556
	add	%x24, %x24, %x22  #0 pc 41560
	lw	%x7, 0(%x24)  #0 pc 41564
	addi	%x24, %x0, 4  #pc 41568
	add	%x24, %x24, %x22  #0 pc 41572
	lw	%x9, 0(%x24)  #0 pc 41576
	bge	%x5, %x0, 12  #2517 pc 41580
	j	bge_else.9597 #pc 41584
	nop #pc 41588
	addi	%x10, %x0, 120  #0 pc 41592
	sw	%x22, 0(%x2)  #2518 pc 41596
	sw	%x7, 4(%x2)  #2518 pc 41600
	sw	%x6, 8(%x2)  #2518 pc 41604
	sw	%x5, 12(%x2)  #2518 pc 41608
	sw	%x10, 16(%x2)  #2518 pc 41612
	addi	%x5, %x0, 0  #0 pc 41620
	addi	%x22, %x9, 0  #0 pc 41628
	sw	%x1, 20(%x2)  #2518 pc 41632
	lw	%x23, 0(%x22)  #2518 pc 41636
	addi	%x2, %x2, 24  #2518 pc 41640
	jalr	%x1, %x23, 0  #2518 pc 41644
	addi	%x2, %x2, -24  #2518 pc 41648
	lw	%x1, 20(%x2)  #2518 pc 41652
	addi	%x6, %x5, 0  #2518 pc 41656
	lw	%x5, 16(%x2)  #2518 pc 41660
	sw	%x1, 20(%x2)  #2518 pc 41664
	addi	%x2, %x2, 24  #2518 pc 41668
	jal	%x1, create_array.2593  #2518 pc 41672
	addi	%x2, %x2, -24  #2518 pc 41676
	lw	%x1, 20(%x2) #2518 pc 41680
	lw	%x6, 12(%x2)  #2518 pc 41684
	slli	%x7, %x6, 2  #2518 pc 41688
	lw	%x9, 8(%x2)  #2518 pc 41692
	add	%x24, %x7, %x9  #2518 pc 41696
	sw	%x5, 0(%x24)  #2518 pc 41700
	slli	%x5, %x6, 2  #2519 pc 41704
	add	%x24, %x5, %x9  #2519 pc 41708
	lw	%x5, 0(%x24)  #2519 pc 41712
	addi	%x7, %x0, 118  #0 pc 41716
	lw	%x22, 4(%x2)  #2519 pc 41720
	addi	%x6, %x7, 0  #0 pc 41728
	sw	%x1, 20(%x2)  #2519 pc 41732
	lw	%x23, 0(%x22)  #2519 pc 41736
	addi	%x2, %x2, 24  #2519 pc 41740
	jalr	%x1, %x23, 0  #2519 pc 41744
	addi	%x2, %x2, -24  #2519 pc 41748
	lw	%x1, 20(%x2)  #2519 pc 41752
	lw	%x5, 12(%x2)  #2520 pc 41756
	addi	%x5, %x5, -1  #2520 pc 41760
	lw	%x22, 0(%x2)  #2520 pc 41764
	lw	%x23, 0(%x22)  #2520 pc 41768
	jalr	%x0, %x23, 0  #2520 pc 41772
	nop #pc 41776
bge_else.9597: #pc 41776
	ret #pc 41780
	nop #pc 41784
init_dirvec_constants.3091:  #pc 41784
	addi	%x24, %x0, 4  #pc 41788
	add	%x24, %x24, %x22  #0 pc 41792
	lw	%x7, 0(%x24)  #0 pc 41796
	bge	%x6, %x0, 12  #2529 pc 41800
	j	bge_else.9599 #pc 41804
	nop #pc 41808
	slli	%x9, %x6, 2  #2530 pc 41812
	add	%x24, %x9, %x5  #2530 pc 41816
	lw	%x9, 0(%x24)  #2530 pc 41820
	sw	%x5, 0(%x2)  #2530 pc 41824
	sw	%x22, 4(%x2)  #2530 pc 41828
	sw	%x6, 8(%x2)  #2530 pc 41832
	addi	%x5, %x9, 0  #0 pc 41840
	addi	%x22, %x7, 0  #0 pc 41848
	sw	%x1, 12(%x2)  #2530 pc 41852
	lw	%x23, 0(%x22)  #2530 pc 41856
	addi	%x2, %x2, 16  #2530 pc 41860
	jalr	%x1, %x23, 0  #2530 pc 41864
	addi	%x2, %x2, -16  #2530 pc 41868
	lw	%x1, 12(%x2)  #2530 pc 41872
	lw	%x5, 8(%x2)  #2531 pc 41876
	addi	%x6, %x5, -1  #2531 pc 41880
	lw	%x5, 0(%x2)  #2531 pc 41884
	lw	%x22, 4(%x2)  #2531 pc 41888
	lw	%x23, 0(%x22)  #2531 pc 41892
	jalr	%x0, %x23, 0  #2531 pc 41896
	nop #pc 41900
bge_else.9599: #pc 41900
	ret #pc 41904
	nop #pc 41908
init_vecset_constants.3094:  #pc 41908
	addi	%x24, %x0, 8  #pc 41912
	add	%x24, %x24, %x22  #0 pc 41916
	lw	%x6, 0(%x24)  #0 pc 41920
	addi	%x24, %x0, 4  #pc 41924
	add	%x24, %x24, %x22  #0 pc 41928
	lw	%x7, 0(%x24)  #0 pc 41932
	bge	%x5, %x0, 12  #2536 pc 41936
	j	bge_else.9601 #pc 41940
	nop #pc 41944
	slli	%x9, %x5, 2  #2537 pc 41948
	add	%x24, %x9, %x7  #2537 pc 41952
	lw	%x7, 0(%x24)  #2537 pc 41956
	addi	%x9, %x0, 119  #0 pc 41960
	sw	%x22, 0(%x2)  #2537 pc 41964
	sw	%x5, 4(%x2)  #2537 pc 41968
	addi	%x5, %x7, 0  #0 pc 41976
	addi	%x22, %x6, 0  #0 pc 41984
	addi	%x6, %x9, 0  #0 pc 41992
	sw	%x1, 12(%x2)  #2537 pc 41996
	lw	%x23, 0(%x22)  #2537 pc 42000
	addi	%x2, %x2, 16  #2537 pc 42004
	jalr	%x1, %x23, 0  #2537 pc 42008
	addi	%x2, %x2, -16  #2537 pc 42012
	lw	%x1, 12(%x2)  #2537 pc 42016
	lw	%x5, 4(%x2)  #2538 pc 42020
	addi	%x5, %x5, -1  #2538 pc 42024
	lw	%x22, 0(%x2)  #2538 pc 42028
	lw	%x23, 0(%x22)  #2538 pc 42032
	jalr	%x0, %x23, 0  #2538 pc 42036
	nop #pc 42040
bge_else.9601: #pc 42040
	ret #pc 42044
	nop #pc 42048
init_dirvecs.3096:  #pc 42048
	addi	%x24, %x0, 12  #pc 42052
	add	%x24, %x24, %x22  #0 pc 42056
	lw	%x5, 0(%x24)  #0 pc 42060
	addi	%x24, %x0, 8  #pc 42064
	add	%x24, %x24, %x22  #0 pc 42068
	lw	%x6, 0(%x24)  #0 pc 42072
	addi	%x24, %x0, 4  #pc 42076
	add	%x24, %x24, %x22  #0 pc 42080
	lw	%x7, 0(%x24)  #0 pc 42084
	addi	%x9, %x0, 4  #0 pc 42088
	sw	%x5, 0(%x2)  #2543 pc 42092
	sw	%x7, 4(%x2)  #2543 pc 42096
	addi	%x5, %x9, 0  #0 pc 42104
	addi	%x22, %x6, 0  #0 pc 42112
	sw	%x1, 12(%x2)  #2543 pc 42116
	lw	%x23, 0(%x22)  #2543 pc 42120
	addi	%x2, %x2, 16  #2543 pc 42124
	jalr	%x1, %x23, 0  #2543 pc 42128
	addi	%x2, %x2, -16  #2543 pc 42132
	lw	%x1, 12(%x2)  #2543 pc 42136
	addi	%x5, %x0, 9  #0 pc 42140
	addi	%x6, %x0, 0  #0 pc 42144
	addi	%x7, %x0, 0  #0 pc 42148
	lw	%x22, 4(%x2)  #2544 pc 42152
	sw	%x1, 12(%x2)  #2544 pc 42156
	lw	%x23, 0(%x22)  #2544 pc 42160
	addi	%x2, %x2, 16  #2544 pc 42164
	jalr	%x1, %x23, 0  #2544 pc 42168
	addi	%x2, %x2, -16  #2544 pc 42172
	lw	%x1, 12(%x2)  #2544 pc 42176
	addi	%x5, %x0, 4  #0 pc 42180
	lw	%x22, 0(%x2)  #2545 pc 42184
	lw	%x23, 0(%x22)  #2545 pc 42188
	jalr	%x0, %x23, 0  #2545 pc 42192
	nop #pc 42196
add_reflection.3098:  #pc 42196
	addi	%x24, %x0, 12  #pc 42200
	add	%x24, %x24, %x22  #0 pc 42204
	lw	%x7, 0(%x24)  #0 pc 42208
	addi	%x24, %x0, 8  #pc 42212
	add	%x24, %x24, %x22  #0 pc 42216
	lw	%x9, 0(%x24)  #0 pc 42220
	addi	%x24, %x0, 4  #pc 42224
	add	%x24, %x24, %x22  #0 pc 42228
	lw	%x22, 0(%x24)  #0 pc 42232
	sw	%x9, 0(%x2)  #2554 pc 42236
	sw	%x5, 4(%x2)  #2554 pc 42240
	sw	%x6, 8(%x2)  #2554 pc 42244
	fsw	%f0, 16(%x2)  #2554 pc 42248
	sw	%x7, 24(%x2)  #2554 pc 42252
	fsw	%f3, 32(%x2)  #2554 pc 42256
	fsw	%f2, 40(%x2)  #2554 pc 42260
	fsw	%f1, 48(%x2)  #2554 pc 42264
	addi	%x5, %x0, 0  #0 pc 42272
	sw	%x1, 60(%x2)  #2554 pc 42276
	lw	%x23, 0(%x22)  #2554 pc 42280
	addi	%x2, %x2, 64  #2554 pc 42284
	jalr	%x1, %x23, 0  #2554 pc 42288
	addi	%x2, %x2, -64  #2554 pc 42292
	lw	%x1, 60(%x2)  #2554 pc 42296
	sw	%x5, 56(%x2)  #2555 pc 42300
	sw	%x1, 60(%x2)  #2555 pc 42304
	addi	%x2, %x2, 64  #2555 pc 42308
	jal	%x1, d_vec.2743  #2555 pc 42312
	addi	%x2, %x2, -64  #2555 pc 42316
	lw	%x1, 60(%x2) #2555 pc 42320
	flw	%f0, 48(%x2)  #2555 pc 42324
	flw	%f1, 40(%x2)  #2555 pc 42328
	flw	%f2, 32(%x2)  #2555 pc 42332
	sw	%x1, 60(%x2)  #2555 pc 42336
	addi	%x2, %x2, 64  #2555 pc 42340
	jal	%x1, vecset.2644  #2555 pc 42344
	addi	%x2, %x2, -64  #2555 pc 42348
	lw	%x1, 60(%x2) #2555 pc 42352
	lw	%x5, 56(%x2)  #2556 pc 42356
	lw	%x22, 24(%x2)  #2556 pc 42360
	sw	%x1, 60(%x2)  #2556 pc 42364
	lw	%x23, 0(%x22)  #2556 pc 42368
	addi	%x2, %x2, 64  #2556 pc 42372
	jalr	%x1, %x23, 0  #2556 pc 42376
	addi	%x2, %x2, -64  #2556 pc 42380
	lw	%x1, 60(%x2)  #2556 pc 42384
	addi	%x5, %x3, 0  #2558 pc 42388
	addi	%x3, %x3, 16  #2558 pc 42392
	flw	%f0, 16(%x2)  #2558 pc 42396
	addi	%x24, %x0, 8  #pc 42400
	add	%x24, %x24, %x5  #2558 pc 42404
	fsw	%f0, 0(%x24) #2558 pc 42408
	lw	%x6, 56(%x2)  #2558 pc 42412
	addi	%x24, %x0, 4  #pc 42416
	add	%x24, %x24, %x5  #2558 pc 42420
	sw	%x6, 0(%x24)  #2558 pc 42424
	lw	%x6, 8(%x2)  #2558 pc 42428
	add	%x24, %x0, %x5  #2558 pc 42432
	sw	%x6, 0(%x24)  #2558 pc 42436
	lw	%x6, 4(%x2)  #2558 pc 42440
	slli	%x6, %x6, 2  #2558 pc 42444
	lw	%x7, 0(%x2)  #2558 pc 42448
	add	%x24, %x6, %x7  #2558 pc 42452
	sw	%x5, 0(%x24)  #2558 pc 42456
	ret #pc 42460
	nop #pc 42464
setup_rect_reflection.3105:  #pc 42464
	addi	%x24, %x0, 12  #pc 42468
	add	%x24, %x24, %x22  #0 pc 42472
	lw	%x7, 0(%x24)  #0 pc 42476
	addi	%x24, %x0, 8  #pc 42480
	add	%x24, %x24, %x22  #0 pc 42484
	lw	%x9, 0(%x24)  #0 pc 42488
	addi	%x24, %x0, 4  #pc 42492
	add	%x24, %x24, %x22  #0 pc 42496
	lw	%x10, 0(%x24)  #0 pc 42500
	addi	%x11, %x0, 4  #0 pc 42504
	sw	%x10, 0(%x2)  #2563 pc 42508
	sw	%x9, 4(%x2)  #2563 pc 42512
	sw	%x6, 8(%x2)  #2563 pc 42516
	sw	%x7, 12(%x2)  #2563 pc 42520
	addi	%x6, %x11, 0  #0 pc 42528
	sw	%x1, 20(%x2)  #2563 pc 42532
	addi	%x2, %x2, 24  #2563 pc 42536
	jal	%x1, mul.2562  #2563 pc 42540
	addi	%x2, %x2, -24  #2563 pc 42544
	lw	%x1, 20(%x2) #2563 pc 42548
	lw	%x6, 12(%x2)  #2564 pc 42552
	add	%x24, %x0, %x6  #2564 pc 42556
	lw	%x7, 0(%x24)  #2564 pc 42560
	fmv	%f0, l.6305  #0 pc 42564
	lw	%x9, 8(%x2)  #2565 pc 42568
	sw	%x7, 16(%x2)  #2565 pc 42572
	sw	%x5, 20(%x2)  #2565 pc 42576
	fsw	%f0, 24(%x2)  #2565 pc 42580
	addi	%x5, %x9, 0  #0 pc 42588
	sw	%x1, 36(%x2)  #2565 pc 42592
	addi	%x2, %x2, 40  #2565 pc 42596
	jal	%x1, o_diffuse.2706  #2565 pc 42600
	addi	%x2, %x2, -40  #2565 pc 42604
	lw	%x1, 36(%x2) #2565 pc 42608
	flw	%f1, 24(%x2)  #2565 pc 42612
	fsub	%f0, %f1, %f0  #2565 pc 42616
	lw	%x5, 4(%x2)  #2566 pc 42620
	add	%x24, %x0, %x5  #2566 pc 42624
	flw	%f1, 0(%x24)  #2566 pc 42628
	fsw	%f0, 32(%x2)  #2566 pc 42632
	fadd	%f0, %f1, %f30  #0 pc 42636
	sw	%x1, 44(%x2)  #2566 pc 42640
	addi	%x2, %x2, 48  #2566 pc 42644
	jal	%x1, fneg.2534  #2566 pc 42648
	addi	%x2, %x2, -48  #2566 pc 42652
	lw	%x1, 44(%x2) #2566 pc 42656
	lw	%x5, 4(%x2)  #2567 pc 42660
	addi	%x24, %x0, 4  #pc 42664
	add	%x24, %x24, %x5  #2567 pc 42668
	flw	%f1, 0(%x24)  #2567 pc 42672
	fsw	%f0, 40(%x2)  #2567 pc 42676
	fadd	%f0, %f1, %f30  #0 pc 42680
	sw	%x1, 52(%x2)  #2567 pc 42684
	addi	%x2, %x2, 56  #2567 pc 42688
	jal	%x1, fneg.2534  #2567 pc 42692
	addi	%x2, %x2, -56  #2567 pc 42696
	lw	%x1, 52(%x2) #2567 pc 42700
	lw	%x5, 4(%x2)  #2568 pc 42704
	addi	%x24, %x0, 8  #pc 42708
	add	%x24, %x24, %x5  #2568 pc 42712
	flw	%f1, 0(%x24)  #2568 pc 42716
	fsw	%f0, 48(%x2)  #2568 pc 42720
	fadd	%f0, %f1, %f30  #0 pc 42724
	sw	%x1, 60(%x2)  #2568 pc 42728
	addi	%x2, %x2, 64  #2568 pc 42732
	jal	%x1, fneg.2534  #2568 pc 42736
	addi	%x2, %x2, -64  #2568 pc 42740
	lw	%x1, 60(%x2) #2568 pc 42744
	fadd	%f3, %f0, %f30  #2568 pc 42748
	lw	%x5, 20(%x2)  #2569 pc 42752
	addi	%x6, %x5, 1  #2569 pc 42756
	lw	%x7, 4(%x2)  #2569 pc 42760
	add	%x24, %x0, %x7  #2569 pc 42764
	flw	%f1, 0(%x24)  #2569 pc 42768
	flw	%f0, 32(%x2)  #2569 pc 42772
	flw	%f2, 48(%x2)  #2569 pc 42776
	lw	%x9, 16(%x2)  #2569 pc 42780
	lw	%x22, 0(%x2)  #2569 pc 42784
	fsw	%f3, 56(%x2)  #2569 pc 42788
	addi	%x5, %x9, 0  #0 pc 42796
	sw	%x1, 68(%x2)  #2569 pc 42800
	lw	%x23, 0(%x22)  #2569 pc 42804
	addi	%x2, %x2, 72  #2569 pc 42808
	jalr	%x1, %x23, 0  #2569 pc 42812
	addi	%x2, %x2, -72  #2569 pc 42816
	lw	%x1, 68(%x2)  #2569 pc 42820
	lw	%x5, 16(%x2)  #2570 pc 42824
	addi	%x6, %x5, 1  #2570 pc 42828
	lw	%x7, 20(%x2)  #2570 pc 42832
	addi	%x9, %x7, 2  #2570 pc 42836
	lw	%x10, 4(%x2)  #2570 pc 42840
	addi	%x24, %x0, 4  #pc 42844
	add	%x24, %x24, %x10  #2570 pc 42848
	flw	%f2, 0(%x24)  #2570 pc 42852
	flw	%f0, 32(%x2)  #2570 pc 42856
	flw	%f1, 40(%x2)  #2570 pc 42860
	flw	%f3, 56(%x2)  #2570 pc 42864
	lw	%x22, 0(%x2)  #2570 pc 42868
	addi	%x5, %x6, 0  #0 pc 42876
	addi	%x6, %x9, 0  #0 pc 42884
	sw	%x1, 68(%x2)  #2570 pc 42888
	lw	%x23, 0(%x22)  #2570 pc 42892
	addi	%x2, %x2, 72  #2570 pc 42896
	jalr	%x1, %x23, 0  #2570 pc 42900
	addi	%x2, %x2, -72  #2570 pc 42904
	lw	%x1, 68(%x2)  #2570 pc 42908
	lw	%x5, 16(%x2)  #2571 pc 42912
	addi	%x6, %x5, 2  #2571 pc 42916
	lw	%x7, 20(%x2)  #2571 pc 42920
	addi	%x7, %x7, 3  #2571 pc 42924
	lw	%x9, 4(%x2)  #2571 pc 42928
	addi	%x24, %x0, 8  #pc 42932
	add	%x24, %x24, %x9  #2571 pc 42936
	flw	%f3, 0(%x24)  #2571 pc 42940
	flw	%f0, 32(%x2)  #2571 pc 42944
	flw	%f1, 40(%x2)  #2571 pc 42948
	flw	%f2, 48(%x2)  #2571 pc 42952
	lw	%x22, 0(%x2)  #2571 pc 42956
	addi	%x5, %x6, 0  #0 pc 42964
	addi	%x6, %x7, 0  #0 pc 42972
	sw	%x1, 68(%x2)  #2571 pc 42976
	lw	%x23, 0(%x22)  #2571 pc 42980
	addi	%x2, %x2, 72  #2571 pc 42984
	jalr	%x1, %x23, 0  #2571 pc 42988
	addi	%x2, %x2, -72  #2571 pc 42992
	lw	%x1, 68(%x2)  #2571 pc 42996
	lw	%x5, 16(%x2)  #2572 pc 43000
	addi	%x5, %x5, 3  #2572 pc 43004
	lw	%x6, 12(%x2)  #2572 pc 43008
	add	%x24, %x0, %x6  #2572 pc 43012
	sw	%x5, 0(%x24)  #2572 pc 43016
	ret #pc 43020
	nop #pc 43024
setup_surface_reflection.3108:  #pc 43024
	addi	%x24, %x0, 12  #pc 43028
	add	%x24, %x24, %x22  #0 pc 43032
	lw	%x7, 0(%x24)  #0 pc 43036
	addi	%x24, %x0, 8  #pc 43040
	add	%x24, %x24, %x22  #0 pc 43044
	lw	%x9, 0(%x24)  #0 pc 43048
	addi	%x24, %x0, 4  #pc 43052
	add	%x24, %x24, %x22  #0 pc 43056
	lw	%x10, 0(%x24)  #0 pc 43060
	addi	%x11, %x0, 4  #0 pc 43064
	sw	%x10, 0(%x2)  #2577 pc 43068
	sw	%x9, 4(%x2)  #2577 pc 43072
	sw	%x6, 8(%x2)  #2577 pc 43076
	sw	%x7, 12(%x2)  #2577 pc 43080
	addi	%x6, %x11, 0  #0 pc 43088
	sw	%x1, 20(%x2)  #2577 pc 43092
	addi	%x2, %x2, 24  #2577 pc 43096
	jal	%x1, mul.2562  #2577 pc 43100
	addi	%x2, %x2, -24  #2577 pc 43104
	lw	%x1, 20(%x2) #2577 pc 43108
	addi	%x5, %x5, 1  #2577 pc 43112
	lw	%x6, 12(%x2)  #2578 pc 43116
	add	%x24, %x0, %x6  #2578 pc 43120
	lw	%x7, 0(%x24)  #2578 pc 43124
	fmv	%f0, l.6305  #0 pc 43128
	lw	%x9, 8(%x2)  #2579 pc 43132
	sw	%x5, 16(%x2)  #2579 pc 43136
	sw	%x7, 20(%x2)  #2579 pc 43140
	fsw	%f0, 24(%x2)  #2579 pc 43144
	addi	%x5, %x9, 0  #0 pc 43152
	sw	%x1, 36(%x2)  #2579 pc 43156
	addi	%x2, %x2, 40  #2579 pc 43160
	jal	%x1, o_diffuse.2706  #2579 pc 43164
	addi	%x2, %x2, -40  #2579 pc 43168
	lw	%x1, 36(%x2) #2579 pc 43172
	flw	%f1, 24(%x2)  #2579 pc 43176
	fsub	%f0, %f1, %f0  #2579 pc 43180
	lw	%x5, 8(%x2)  #2580 pc 43184
	fsw	%f0, 32(%x2)  #2580 pc 43188
	sw	%x1, 44(%x2)  #2580 pc 43192
	addi	%x2, %x2, 48  #2580 pc 43196
	jal	%x1, o_param_abc.2698  #2580 pc 43200
	addi	%x2, %x2, -48  #2580 pc 43204
	lw	%x1, 44(%x2) #2580 pc 43208
	addi	%x6, %x5, 0  #2580 pc 43212
	lw	%x5, 4(%x2)  #2580 pc 43216
	sw	%x1, 44(%x2)  #2580 pc 43220
	addi	%x2, %x2, 48  #2580 pc 43224
	jal	%x1, veciprod.2660  #2580 pc 43228
	addi	%x2, %x2, -48  #2580 pc 43232
	lw	%x1, 44(%x2) #2580 pc 43236
	fmv	%f1, l.6476  #0 pc 43240
	lw	%x5, 8(%x2)  #2583 pc 43244
	fsw	%f0, 40(%x2)  #2583 pc 43248
	fsw	%f1, 48(%x2)  #2583 pc 43252
	sw	%x1, 60(%x2)  #2583 pc 43256
	addi	%x2, %x2, 64  #2583 pc 43260
	jal	%x1, o_param_a.2692  #2583 pc 43264
	addi	%x2, %x2, -64  #2583 pc 43268
	lw	%x1, 60(%x2) #2583 pc 43272
	flw	%f1, 48(%x2)  #2583 pc 43276
	fmul	%f0, %f1, %f0  #2583 pc 43280
	flw	%f1, 40(%x2)  #2583 pc 43284
	fmul	%f0, %f0, %f1  #2583 pc 43288
	lw	%x5, 4(%x2)  #2583 pc 43292
	add	%x24, %x0, %x5  #2583 pc 43296
	flw	%f2, 0(%x24)  #2583 pc 43300
	fsub	%f0, %f0, %f2  #2583 pc 43304
	fmv	%f2, l.6476  #0 pc 43308
	lw	%x6, 8(%x2)  #2584 pc 43312
	fsw	%f0, 56(%x2)  #2584 pc 43316
	fsw	%f2, 64(%x2)  #2584 pc 43320
	addi	%x5, %x6, 0  #0 pc 43328
	sw	%x1, 76(%x2)  #2584 pc 43332
	addi	%x2, %x2, 80  #2584 pc 43336
	jal	%x1, o_param_b.2694  #2584 pc 43340
	addi	%x2, %x2, -80  #2584 pc 43344
	lw	%x1, 76(%x2) #2584 pc 43348
	flw	%f1, 64(%x2)  #2584 pc 43352
	fmul	%f0, %f1, %f0  #2584 pc 43356
	flw	%f1, 40(%x2)  #2584 pc 43360
	fmul	%f0, %f0, %f1  #2584 pc 43364
	lw	%x5, 4(%x2)  #2584 pc 43368
	addi	%x24, %x0, 4  #pc 43372
	add	%x24, %x24, %x5  #2584 pc 43376
	flw	%f2, 0(%x24)  #2584 pc 43380
	fsub	%f0, %f0, %f2  #2584 pc 43384
	fmv	%f2, l.6476  #0 pc 43388
	lw	%x6, 8(%x2)  #2585 pc 43392
	fsw	%f0, 72(%x2)  #2585 pc 43396
	fsw	%f2, 80(%x2)  #2585 pc 43400
	addi	%x5, %x6, 0  #0 pc 43408
	sw	%x1, 92(%x2)  #2585 pc 43412
	addi	%x2, %x2, 96  #2585 pc 43416
	jal	%x1, o_param_c.2696  #2585 pc 43420
	addi	%x2, %x2, -96  #2585 pc 43424
	lw	%x1, 92(%x2) #2585 pc 43428
	flw	%f1, 80(%x2)  #2585 pc 43432
	fmul	%f0, %f1, %f0  #2585 pc 43436
	flw	%f1, 40(%x2)  #2585 pc 43440
	fmul	%f0, %f0, %f1  #2585 pc 43444
	lw	%x5, 4(%x2)  #2585 pc 43448
	addi	%x24, %x0, 8  #pc 43452
	add	%x24, %x24, %x5  #2585 pc 43456
	flw	%f1, 0(%x24)  #2585 pc 43460
	fsub	%f3, %f0, %f1  #2585 pc 43464
	flw	%f0, 32(%x2)  #2582 pc 43468
	flw	%f1, 56(%x2)  #2582 pc 43472
	flw	%f2, 72(%x2)  #2582 pc 43476
	lw	%x5, 20(%x2)  #2582 pc 43480
	lw	%x6, 16(%x2)  #2582 pc 43484
	lw	%x22, 0(%x2)  #2582 pc 43488
	sw	%x1, 92(%x2)  #2582 pc 43492
	lw	%x23, 0(%x22)  #2582 pc 43496
	addi	%x2, %x2, 96  #2582 pc 43500
	jalr	%x1, %x23, 0  #2582 pc 43504
	addi	%x2, %x2, -96  #2582 pc 43508
	lw	%x1, 92(%x2)  #2582 pc 43512
	lw	%x5, 20(%x2)  #2586 pc 43516
	addi	%x5, %x5, 1  #2586 pc 43520
	lw	%x6, 12(%x2)  #2586 pc 43524
	add	%x24, %x0, %x6  #2586 pc 43528
	sw	%x5, 0(%x24)  #2586 pc 43532
	ret #pc 43536
	nop #pc 43540
setup_reflections.3111:  #pc 43540
	addi	%x24, %x0, 12  #pc 43544
	add	%x24, %x24, %x22  #0 pc 43548
	lw	%x6, 0(%x24)  #0 pc 43552
	addi	%x24, %x0, 8  #pc 43556
	add	%x24, %x24, %x22  #0 pc 43560
	lw	%x7, 0(%x24)  #0 pc 43564
	addi	%x24, %x0, 4  #pc 43568
	add	%x24, %x24, %x22  #0 pc 43572
	lw	%x9, 0(%x24)  #0 pc 43576
	bge	%x5, %x0, 12  #2592 pc 43580
	j	bge_else.9608 #pc 43584
	nop #pc 43588
	slli	%x10, %x5, 2  #2593 pc 43592
	add	%x24, %x10, %x9  #2593 pc 43596
	lw	%x9, 0(%x24)  #2593 pc 43600
	sw	%x6, 0(%x2)  #2594 pc 43604
	sw	%x5, 4(%x2)  #2594 pc 43608
	sw	%x7, 8(%x2)  #2594 pc 43612
	sw	%x9, 12(%x2)  #2594 pc 43616
	addi	%x5, %x9, 0  #0 pc 43624
	sw	%x1, 20(%x2)  #2594 pc 43628
	addi	%x2, %x2, 24  #2594 pc 43632
	jal	%x1, o_reflectiontype.2686  #2594 pc 43636
	addi	%x2, %x2, -24  #2594 pc 43640
	lw	%x1, 20(%x2) #2594 pc 43644
	addi	%x24, %x0, 2  #pc 43648
	beq	%x5, %x24, 12  #2594 pc 43652
	j	be_else.9609 #pc 43656
	nop #pc 43660
	lw	%x5, 12(%x2)  #2595 pc 43664
	sw	%x1, 20(%x2)  #2595 pc 43668
	addi	%x2, %x2, 24  #2595 pc 43672
	jal	%x1, o_diffuse.2706  #2595 pc 43676
	addi	%x2, %x2, -24  #2595 pc 43680
	lw	%x1, 20(%x2) #2595 pc 43684
	fmv	%f1, l.6305  #0 pc 43688
	sw	%x1, 20(%x2)  #2595 pc 43692
	addi	%x2, %x2, 24  #2595 pc 43696
	jal	%x1, fless.2540  #2595 pc 43700
	addi	%x2, %x2, -24  #2595 pc 43704
	lw	%x1, 20(%x2) #2595 pc 43708
	beq	%x5, %x0, 12  #2595 pc 43712
	j	be_else.9610 #pc 43716
	nop #pc 43720
	ret #pc 43724
	nop #pc 43728
be_else.9610: #pc 43728
	lw	%x5, 12(%x2)  #2596 pc 43732
	sw	%x1, 20(%x2)  #2596 pc 43736
	addi	%x2, %x2, 24  #2596 pc 43740
	jal	%x1, o_form.2684  #2596 pc 43744
	addi	%x2, %x2, -24  #2596 pc 43748
	lw	%x1, 20(%x2) #2596 pc 43752
	addi	%x24, %x0, 1  #pc 43756
	beq	%x5, %x24, 12  #2598 pc 43760
	j	be_else.9612 #pc 43764
	nop #pc 43768
	lw	%x5, 4(%x2)  #2599 pc 43772
	lw	%x6, 12(%x2)  #2599 pc 43776
	lw	%x22, 8(%x2)  #2599 pc 43780
	lw	%x23, 0(%x22)  #2599 pc 43784
	jalr	%x0, %x23, 0  #2599 pc 43788
	nop #pc 43792
be_else.9612: #pc 43792
	addi	%x24, %x0, 2  #pc 43796
	beq	%x5, %x24, 12  #2600 pc 43800
	j	be_else.9613 #pc 43804
	nop #pc 43808
	lw	%x5, 4(%x2)  #2601 pc 43812
	lw	%x6, 12(%x2)  #2601 pc 43816
	lw	%x22, 0(%x2)  #2601 pc 43820
	lw	%x23, 0(%x22)  #2601 pc 43824
	jalr	%x0, %x23, 0  #2601 pc 43828
	nop #pc 43832
be_else.9613: #pc 43832
	ret #pc 43836
	nop #pc 43840
be_else.9609: #pc 43840
	ret #pc 43844
	nop #pc 43848
bge_else.9608: #pc 43848
	ret #pc 43852
	nop #pc 43856
rt.3113:  #pc 43856
	addi	%x24, %x0, 56  #pc 43860
	add	%x24, %x24, %x22  #0 pc 43864
	lw	%x9, 0(%x24)  #0 pc 43868
	addi	%x24, %x0, 52  #pc 43872
	add	%x24, %x24, %x22  #0 pc 43876
	lw	%x10, 0(%x24)  #0 pc 43880
	addi	%x24, %x0, 48  #pc 43884
	add	%x24, %x24, %x22  #0 pc 43888
	lw	%x11, 0(%x24)  #0 pc 43892
	addi	%x24, %x0, 44  #pc 43896
	add	%x24, %x24, %x22  #0 pc 43900
	lw	%x12, 0(%x24)  #0 pc 43904
	addi	%x24, %x0, 40  #pc 43908
	add	%x24, %x24, %x22  #0 pc 43912
	lw	%x13, 0(%x24)  #0 pc 43916
	addi	%x24, %x0, 36  #pc 43920
	add	%x24, %x24, %x22  #0 pc 43924
	lw	%x14, 0(%x24)  #0 pc 43928
	addi	%x24, %x0, 32  #pc 43932
	add	%x24, %x24, %x22  #0 pc 43936
	lw	%x15, 0(%x24)  #0 pc 43940
	addi	%x24, %x0, 28  #pc 43944
	add	%x24, %x24, %x22  #0 pc 43948
	lw	%x16, 0(%x24)  #0 pc 43952
	addi	%x24, %x0, 24  #pc 43956
	add	%x24, %x24, %x22  #0 pc 43960
	lw	%x17, 0(%x24)  #0 pc 43964
	addi	%x24, %x0, 20  #pc 43968
	add	%x24, %x24, %x22  #0 pc 43972
	lw	%x18, 0(%x24)  #0 pc 43976
	addi	%x24, %x0, 16  #pc 43980
	add	%x24, %x24, %x22  #0 pc 43984
	lw	%x19, 0(%x24)  #0 pc 43988
	addi	%x24, %x0, 12  #pc 43992
	add	%x24, %x24, %x22  #0 pc 43996
	lw	%x20, 0(%x24)  #0 pc 44000
	addi	%x24, %x0, 8  #pc 44004
	add	%x24, %x24, %x22  #0 pc 44008
	lw	%x21, 0(%x24)  #0 pc 44012
	addi	%x24, %x0, 4  #pc 44016
	add	%x24, %x24, %x22  #0 pc 44020
	lw	%x22, 0(%x24)  #0 pc 44024
	add	%x24, %x0, %x20  #2614 pc 44028
	sw	%x5, 0(%x24)  #2614 pc 44032
	addi	%x24, %x0, 4  #pc 44036
	add	%x24, %x24, %x20  #2615 pc 44040
	sw	%x6, 0(%x24)  #2615 pc 44044
	addi	%x20, %x0, 2  #0 pc 44048
	sw	%x13, 0(%x2)  #2616 pc 44052
	sw	%x15, 4(%x2)  #2616 pc 44056
	sw	%x10, 8(%x2)  #2616 pc 44060
	sw	%x16, 12(%x2)  #2616 pc 44064
	sw	%x11, 16(%x2)  #2616 pc 44068
	sw	%x18, 20(%x2)  #2616 pc 44072
	sw	%x17, 24(%x2)  #2616 pc 44076
	sw	%x19, 28(%x2)  #2616 pc 44080
	sw	%x7, 32(%x2)  #2616 pc 44084
	sw	%x9, 36(%x2)  #2616 pc 44088
	sw	%x14, 40(%x2)  #2616 pc 44092
	sw	%x22, 44(%x2)  #2616 pc 44096
	sw	%x12, 48(%x2)  #2616 pc 44100
	sw	%x5, 52(%x2)  #2616 pc 44104
	sw	%x6, 56(%x2)  #2616 pc 44108
	sw	%x21, 60(%x2)  #2616 pc 44112
	addi	%x6, %x20, 0  #0 pc 44120
	sw	%x1, 68(%x2)  #2616 pc 44124
	addi	%x2, %x2, 72  #2616 pc 44128
	jal	%x1, div.2570  #2616 pc 44132
	addi	%x2, %x2, -72  #2616 pc 44136
	lw	%x1, 68(%x2) #2616 pc 44140
	lw	%x6, 60(%x2)  #2616 pc 44144
	add	%x24, %x0, %x6  #2616 pc 44148
	sw	%x5, 0(%x24)  #2616 pc 44152
	addi	%x5, %x0, 2  #0 pc 44156
	lw	%x7, 56(%x2)  #2617 pc 44160
	addi	%x6, %x5, 0  #0 pc 44168
	addi	%x5, %x7, 0  #0 pc 44176
	sw	%x1, 68(%x2)  #2617 pc 44180
	addi	%x2, %x2, 72  #2617 pc 44184
	jal	%x1, div.2570  #2617 pc 44188
	addi	%x2, %x2, -72  #2617 pc 44192
	lw	%x1, 68(%x2) #2617 pc 44196
	lw	%x6, 60(%x2)  #2617 pc 44200
	addi	%x24, %x0, 4  #pc 44204
	add	%x24, %x24, %x6  #2617 pc 44208
	sw	%x5, 0(%x24)  #2617 pc 44212
	fmv	%f0, l.7053  #0 pc 44216
	lw	%x5, 52(%x2)  #2618 pc 44220
	fsw	%f0, 64(%x2)  #2618 pc 44224
	sw	%x1, 76(%x2)  #2618 pc 44228
	addi	%x2, %x2, 80  #2618 pc 44232
	jal	%x1, float_of_int.2553  #2618 pc 44236
	addi	%x2, %x2, -80  #2618 pc 44240
	lw	%x1, 76(%x2) #2618 pc 44244
	flw	%f1, 64(%x2)  #2618 pc 44248
	fdiv	%f0, %f1, %f0  #2618 pc 44252
	lw	%x5, 48(%x2)  #2618 pc 44256
	add	%x24, %x0, %x5  #2618 pc 44260
	fsw	%f0, 0(%x24) #2618 pc 44264
	lw	%x22, 44(%x2)  #2619 pc 44268
	addi	%x5, %x0, 0  #0 pc 44276
	sw	%x1, 76(%x2)  #2619 pc 44280
	lw	%x23, 0(%x22)  #2619 pc 44284
	addi	%x2, %x2, 80  #2619 pc 44288
	jalr	%x1, %x23, 0  #2619 pc 44292
	addi	%x2, %x2, -80  #2619 pc 44296
	lw	%x1, 76(%x2)  #2619 pc 44300
	lw	%x22, 44(%x2)  #2620 pc 44304
	sw	%x5, 72(%x2)  #2620 pc 44308
	addi	%x5, %x0, 0  #0 pc 44316
	sw	%x1, 76(%x2)  #2620 pc 44320
	lw	%x23, 0(%x22)  #2620 pc 44324
	addi	%x2, %x2, 80  #2620 pc 44328
	jalr	%x1, %x23, 0  #2620 pc 44332
	addi	%x2, %x2, -80  #2620 pc 44336
	lw	%x1, 76(%x2)  #2620 pc 44340
	lw	%x22, 44(%x2)  #2621 pc 44344
	sw	%x5, 76(%x2)  #2621 pc 44348
	addi	%x5, %x0, 0  #0 pc 44356
	sw	%x1, 84(%x2)  #2621 pc 44360
	lw	%x23, 0(%x22)  #2621 pc 44364
	addi	%x2, %x2, 88  #2621 pc 44368
	jalr	%x1, %x23, 0  #2621 pc 44372
	addi	%x2, %x2, -88  #2621 pc 44376
	lw	%x1, 84(%x2)  #2621 pc 44380
	lw	%x22, 40(%x2)  #2622 pc 44384
	sw	%x5, 80(%x2)  #2622 pc 44388
	addi	%x5, %x0, 0  #0 pc 44396
	sw	%x1, 84(%x2)  #2622 pc 44400
	lw	%x23, 0(%x22)  #2622 pc 44404
	addi	%x2, %x2, 88  #2622 pc 44408
	jalr	%x1, %x23, 0  #2622 pc 44412
	addi	%x2, %x2, -88  #2622 pc 44416
	lw	%x1, 84(%x2)  #2622 pc 44420
	lw	%x5, 32(%x2)  #2623 pc 44424
	lw	%x22, 36(%x2)  #2623 pc 44428
	sw	%x1, 84(%x2)  #2623 pc 44432
	lw	%x23, 0(%x22)  #2623 pc 44436
	addi	%x2, %x2, 88  #2623 pc 44440
	jalr	%x1, %x23, 0  #2623 pc 44444
	addi	%x2, %x2, -88  #2623 pc 44448
	lw	%x1, 84(%x2)  #2623 pc 44452
	lw	%x22, 28(%x2)  #2624 pc 44456
	addi	%x5, %x0, 0  #0 pc 44464
	sw	%x1, 84(%x2)  #2624 pc 44468
	lw	%x23, 0(%x22)  #2624 pc 44472
	addi	%x2, %x2, 88  #2624 pc 44476
	jalr	%x1, %x23, 0  #2624 pc 44480
	addi	%x2, %x2, -88  #2624 pc 44484
	lw	%x1, 84(%x2)  #2624 pc 44488
	lw	%x5, 24(%x2)  #2625 pc 44492
	sw	%x1, 84(%x2)  #2625 pc 44496
	addi	%x2, %x2, 88  #2625 pc 44500
	jal	%x1, d_vec.2743  #2625 pc 44504
	addi	%x2, %x2, -88  #2625 pc 44508
	lw	%x1, 84(%x2) #2625 pc 44512
	lw	%x6, 20(%x2)  #2625 pc 44516
	sw	%x1, 84(%x2)  #2625 pc 44520
	addi	%x2, %x2, 88  #2625 pc 44524
	jal	%x1, veccpy.2654  #2625 pc 44528
	addi	%x2, %x2, -88  #2625 pc 44532
	lw	%x1, 84(%x2) #2625 pc 44536
	lw	%x5, 24(%x2)  #2626 pc 44540
	lw	%x22, 16(%x2)  #2626 pc 44544
	sw	%x1, 84(%x2)  #2626 pc 44548
	lw	%x23, 0(%x22)  #2626 pc 44552
	addi	%x2, %x2, 88  #2626 pc 44556
	jalr	%x1, %x23, 0  #2626 pc 44560
	addi	%x2, %x2, -88  #2626 pc 44564
	lw	%x1, 84(%x2)  #2626 pc 44568
	lw	%x5, 12(%x2)  #2627 pc 44572
	add	%x24, %x0, %x5  #2627 pc 44576
	lw	%x5, 0(%x24)  #2627 pc 44580
	addi	%x5, %x5, -1  #2627 pc 44584
	lw	%x22, 8(%x2)  #2627 pc 44588
	sw	%x1, 84(%x2)  #2627 pc 44592
	lw	%x23, 0(%x22)  #2627 pc 44596
	addi	%x2, %x2, 88  #2627 pc 44600
	jalr	%x1, %x23, 0  #2627 pc 44604
	addi	%x2, %x2, -88  #2627 pc 44608
	lw	%x1, 84(%x2)  #2627 pc 44612
	addi	%x6, %x0, 0  #0 pc 44616
	addi	%x7, %x0, 0  #0 pc 44620
	lw	%x5, 76(%x2)  #2628 pc 44624
	lw	%x22, 4(%x2)  #2628 pc 44628
	sw	%x1, 84(%x2)  #2628 pc 44632
	lw	%x23, 0(%x22)  #2628 pc 44636
	addi	%x2, %x2, 88  #2628 pc 44640
	jalr	%x1, %x23, 0  #2628 pc 44644
	addi	%x2, %x2, -88  #2628 pc 44648
	lw	%x1, 84(%x2)  #2628 pc 44652
	addi	%x5, %x0, 0  #0 pc 44656
	addi	%x10, %x0, 2  #0 pc 44660
	lw	%x6, 72(%x2)  #2629 pc 44664
	lw	%x7, 76(%x2)  #2629 pc 44668
	lw	%x9, 80(%x2)  #2629 pc 44672
	lw	%x11, 32(%x2)  #2629 pc 44676
	lw	%x22, 0(%x2)  #2629 pc 44680
	lw	%x23, 0(%x22)  #2629 pc 44684
	jalr	%x0, %x23, 0  #2629 pc 44688
	nop #pc 44692
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 1  #0 pc 44696
	addi	%x6, %x0, 0  #0 pc 44700
	sw	%x1, 12(%x2)  #208 pc 44704
	addi	%x2, %x2, 16  #208 pc 44708
	jal	%x1, create_array.2593  #208 pc 44712
	addi	%x2, %x2, -16  #208 pc 44716
	lw	%x1, 12(%x2) #208 pc 44720
	addi	%x6, %x0, 0  #0 pc 44724
	fmv	%f0, l.6293  #0 pc 44728
	sw	%x5, 8(%x2)  #213 pc 44732
	addi	%x5, %x6, 0  #0 pc 44740
	sw	%x1, 12(%x2)  #213 pc 44744
	addi	%x2, %x2, 16  #213 pc 44748
	jal	%x1, create_float_array.2600  #213 pc 44752
	addi	%x2, %x2, -16  #213 pc 44756
	lw	%x1, 12(%x2) #213 pc 44760
	addi	%x6, %x0, 60  #0 pc 44764
	addi	%x7, %x0, 0  #0 pc 44768
	addi	%x9, %x3, 0  #214 pc 44772
	addi	%x3, %x3, 48  #214 pc 44776
	addi	%x24, %x0, 40  #pc 44780
	add	%x24, %x24, %x9  #214 pc 44784
	sw	%x5, 0(%x24)  #214 pc 44788
	addi	%x24, %x0, 36  #pc 44792
	add	%x24, %x24, %x9  #214 pc 44796
	sw	%x5, 0(%x24)  #214 pc 44800
	addi	%x24, %x0, 32  #pc 44804
	add	%x24, %x24, %x9  #214 pc 44808
	sw	%x5, 0(%x24)  #214 pc 44812
	addi	%x24, %x0, 28  #pc 44816
	add	%x24, %x24, %x9  #214 pc 44820
	sw	%x5, 0(%x24)  #214 pc 44824
	addi	%x24, %x0, 24  #pc 44828
	add	%x24, %x24, %x9  #214 pc 44832
	sw	%x7, 0(%x24)  #214 pc 44836
	addi	%x24, %x0, 20  #pc 44840
	add	%x24, %x24, %x9  #214 pc 44844
	sw	%x5, 0(%x24)  #214 pc 44848
	addi	%x24, %x0, 16  #pc 44852
	add	%x24, %x24, %x9  #214 pc 44856
	sw	%x5, 0(%x24)  #214 pc 44860
	addi	%x24, %x0, 12  #pc 44864
	add	%x24, %x24, %x9  #214 pc 44868
	sw	%x7, 0(%x24)  #214 pc 44872
	addi	%x24, %x0, 8  #pc 44876
	add	%x24, %x24, %x9  #214 pc 44880
	sw	%x7, 0(%x24)  #214 pc 44884
	addi	%x24, %x0, 4  #pc 44888
	add	%x24, %x24, %x9  #214 pc 44892
	sw	%x7, 0(%x24)  #214 pc 44896
	add	%x24, %x0, %x9  #214 pc 44900
	sw	%x7, 0(%x24)  #214 pc 44904
	addi	%x5, %x9, 0  #214 pc 44908
	addi	%x23, %x6, 0  #0 pc 44916
	addi	%x6, %x5, 0  #0 pc 44924
	addi	%x5, %x23, 0  #0 pc 44932
	sw	%x1, 12(%x2)  #214 pc 44936
	addi	%x2, %x2, 16  #214 pc 44940
	jal	%x1, create_array.2593  #214 pc 44944
	addi	%x2, %x2, -16  #214 pc 44948
	lw	%x1, 12(%x2) #214 pc 44952
	addi	%x6, %x0, 3  #0 pc 44956
	fmv	%f0, l.6293  #0 pc 44960
	sw	%x5, 12(%x2)  #218 pc 44964
	addi	%x5, %x6, 0  #0 pc 44972
	sw	%x1, 20(%x2)  #218 pc 44976
	addi	%x2, %x2, 24  #218 pc 44980
	jal	%x1, create_float_array.2600  #218 pc 44984
	addi	%x2, %x2, -24  #218 pc 44988
	lw	%x1, 20(%x2) #218 pc 44992
	addi	%x6, %x0, 3  #0 pc 44996
	fmv	%f0, l.6293  #0 pc 45000
	sw	%x5, 16(%x2)  #221 pc 45004
	addi	%x5, %x6, 0  #0 pc 45012
	sw	%x1, 20(%x2)  #221 pc 45016
	addi	%x2, %x2, 24  #221 pc 45020
	jal	%x1, create_float_array.2600  #221 pc 45024
	addi	%x2, %x2, -24  #221 pc 45028
	lw	%x1, 20(%x2) #221 pc 45032
	addi	%x6, %x0, 3  #0 pc 45036
	fmv	%f0, l.6293  #0 pc 45040
	sw	%x5, 20(%x2)  #224 pc 45044
	addi	%x5, %x6, 0  #0 pc 45052
	sw	%x1, 28(%x2)  #224 pc 45056
	addi	%x2, %x2, 32  #224 pc 45060
	jal	%x1, create_float_array.2600  #224 pc 45064
	addi	%x2, %x2, -32  #224 pc 45068
	lw	%x1, 28(%x2) #224 pc 45072
	addi	%x6, %x0, 1  #0 pc 45076
	fmv	%f0, l.6807  #0 pc 45080
	sw	%x5, 24(%x2)  #227 pc 45084
	addi	%x5, %x6, 0  #0 pc 45092
	sw	%x1, 28(%x2)  #227 pc 45096
	addi	%x2, %x2, 32  #227 pc 45100
	jal	%x1, create_float_array.2600  #227 pc 45104
	addi	%x2, %x2, -32  #227 pc 45108
	lw	%x1, 28(%x2) #227 pc 45112
	addi	%x6, %x0, 50  #0 pc 45116
	addi	%x7, %x0, 1  #0 pc 45120
	addi	%x9, %x0, -1  #0 pc 45124
	sw	%x5, 28(%x2)  #230 pc 45128
	sw	%x6, 32(%x2)  #230 pc 45132
	addi	%x6, %x9, 0  #0 pc 45140
	addi	%x5, %x7, 0  #0 pc 45148
	sw	%x1, 36(%x2)  #230 pc 45152
	addi	%x2, %x2, 40  #230 pc 45156
	jal	%x1, create_array.2593  #230 pc 45160
	addi	%x2, %x2, -40  #230 pc 45164
	lw	%x1, 36(%x2) #230 pc 45168
	addi	%x6, %x5, 0  #230 pc 45172
	lw	%x5, 32(%x2)  #230 pc 45176
	sw	%x1, 36(%x2)  #230 pc 45180
	addi	%x2, %x2, 40  #230 pc 45184
	jal	%x1, create_array.2593  #230 pc 45188
	addi	%x2, %x2, -40  #230 pc 45192
	lw	%x1, 36(%x2) #230 pc 45196
	addi	%x6, %x0, 1  #0 pc 45200
	add	%x24, %x0, %x5  #233 pc 45204
	lw	%x7, 0(%x24)  #233 pc 45208
	sw	%x5, 36(%x2)  #233 pc 45212
	sw	%x6, 40(%x2)  #233 pc 45216
	addi	%x5, %x6, 0  #0 pc 45224
	addi	%x6, %x7, 0  #0 pc 45232
	sw	%x1, 44(%x2)  #233 pc 45236
	addi	%x2, %x2, 48  #233 pc 45240
	jal	%x1, create_array.2593  #233 pc 45244
	addi	%x2, %x2, -48  #233 pc 45248
	lw	%x1, 44(%x2) #233 pc 45252
	addi	%x6, %x5, 0  #233 pc 45256
	lw	%x5, 40(%x2)  #233 pc 45260
	sw	%x1, 44(%x2)  #233 pc 45264
	addi	%x2, %x2, 48  #233 pc 45268
	jal	%x1, create_array.2593  #233 pc 45272
	addi	%x2, %x2, -48  #233 pc 45276
	lw	%x1, 44(%x2) #233 pc 45280
	addi	%x6, %x0, 1  #0 pc 45284
	fmv	%f0, l.6293  #0 pc 45288
	sw	%x5, 44(%x2)  #238 pc 45292
	addi	%x5, %x6, 0  #0 pc 45300
	sw	%x1, 52(%x2)  #238 pc 45304
	addi	%x2, %x2, 56  #238 pc 45308
	jal	%x1, create_float_array.2600  #238 pc 45312
	addi	%x2, %x2, -56  #238 pc 45316
	lw	%x1, 52(%x2) #238 pc 45320
	addi	%x6, %x0, 1  #0 pc 45324
	addi	%x7, %x0, 0  #0 pc 45328
	sw	%x5, 48(%x2)  #241 pc 45332
	addi	%x5, %x6, 0  #0 pc 45340
	addi	%x6, %x7, 0  #0 pc 45348
	sw	%x1, 52(%x2)  #241 pc 45352
	addi	%x2, %x2, 56  #241 pc 45356
	jal	%x1, create_array.2593  #241 pc 45360
	addi	%x2, %x2, -56  #241 pc 45364
	lw	%x1, 52(%x2) #241 pc 45368
	addi	%x6, %x0, 1  #0 pc 45372
	fmv	%f0, l.6734  #0 pc 45376
	sw	%x5, 52(%x2)  #244 pc 45380
	addi	%x5, %x6, 0  #0 pc 45388
	sw	%x1, 60(%x2)  #244 pc 45392
	addi	%x2, %x2, 64  #244 pc 45396
	jal	%x1, create_float_array.2600  #244 pc 45400
	addi	%x2, %x2, -64  #244 pc 45404
	lw	%x1, 60(%x2) #244 pc 45408
	addi	%x6, %x0, 3  #0 pc 45412
	fmv	%f0, l.6293  #0 pc 45416
	sw	%x5, 56(%x2)  #247 pc 45420
	addi	%x5, %x6, 0  #0 pc 45428
	sw	%x1, 60(%x2)  #247 pc 45432
	addi	%x2, %x2, 64  #247 pc 45436
	jal	%x1, create_float_array.2600  #247 pc 45440
	addi	%x2, %x2, -64  #247 pc 45444
	lw	%x1, 60(%x2) #247 pc 45448
	addi	%x6, %x0, 1  #0 pc 45452
	addi	%x7, %x0, 0  #0 pc 45456
	sw	%x5, 60(%x2)  #250 pc 45460
	addi	%x5, %x6, 0  #0 pc 45468
	addi	%x6, %x7, 0  #0 pc 45476
	sw	%x1, 68(%x2)  #250 pc 45480
	addi	%x2, %x2, 72  #250 pc 45484
	jal	%x1, create_array.2593  #250 pc 45488
	addi	%x2, %x2, -72  #250 pc 45492
	lw	%x1, 68(%x2) #250 pc 45496
	addi	%x6, %x0, 3  #0 pc 45500
	fmv	%f0, l.6293  #0 pc 45504
	sw	%x5, 64(%x2)  #253 pc 45508
	addi	%x5, %x6, 0  #0 pc 45516
	sw	%x1, 68(%x2)  #253 pc 45520
	addi	%x2, %x2, 72  #253 pc 45524
	jal	%x1, create_float_array.2600  #253 pc 45528
	addi	%x2, %x2, -72  #253 pc 45532
	lw	%x1, 68(%x2) #253 pc 45536
	addi	%x6, %x0, 3  #0 pc 45540
	fmv	%f0, l.6293  #0 pc 45544
	sw	%x5, 68(%x2)  #256 pc 45548
	addi	%x5, %x6, 0  #0 pc 45556
	sw	%x1, 76(%x2)  #256 pc 45560
	addi	%x2, %x2, 80  #256 pc 45564
	jal	%x1, create_float_array.2600  #256 pc 45568
	addi	%x2, %x2, -80  #256 pc 45572
	lw	%x1, 76(%x2) #256 pc 45576
	addi	%x6, %x0, 3  #0 pc 45580
	fmv	%f0, l.6293  #0 pc 45584
	sw	%x5, 72(%x2)  #260 pc 45588
	addi	%x5, %x6, 0  #0 pc 45596
	sw	%x1, 76(%x2)  #260 pc 45600
	addi	%x2, %x2, 80  #260 pc 45604
	jal	%x1, create_float_array.2600  #260 pc 45608
	addi	%x2, %x2, -80  #260 pc 45612
	lw	%x1, 76(%x2) #260 pc 45616
	addi	%x6, %x0, 3  #0 pc 45620
	fmv	%f0, l.6293  #0 pc 45624
	sw	%x5, 76(%x2)  #263 pc 45628
	addi	%x5, %x6, 0  #0 pc 45636
	sw	%x1, 84(%x2)  #263 pc 45640
	addi	%x2, %x2, 88  #263 pc 45644
	jal	%x1, create_float_array.2600  #263 pc 45648
	addi	%x2, %x2, -88  #263 pc 45652
	lw	%x1, 84(%x2) #263 pc 45656
	addi	%x6, %x0, 2  #0 pc 45660
	addi	%x7, %x0, 0  #0 pc 45664
	sw	%x5, 80(%x2)  #267 pc 45668
	addi	%x5, %x6, 0  #0 pc 45676
	addi	%x6, %x7, 0  #0 pc 45684
	sw	%x1, 84(%x2)  #267 pc 45688
	addi	%x2, %x2, 88  #267 pc 45692
	jal	%x1, create_array.2593  #267 pc 45696
	addi	%x2, %x2, -88  #267 pc 45700
	lw	%x1, 84(%x2) #267 pc 45704
	addi	%x6, %x0, 2  #0 pc 45708
	addi	%x7, %x0, 0  #0 pc 45712
	sw	%x5, 84(%x2)  #270 pc 45716
	addi	%x5, %x6, 0  #0 pc 45724
	addi	%x6, %x7, 0  #0 pc 45732
	sw	%x1, 92(%x2)  #270 pc 45736
	addi	%x2, %x2, 96  #270 pc 45740
	jal	%x1, create_array.2593  #270 pc 45744
	addi	%x2, %x2, -96  #270 pc 45748
	lw	%x1, 92(%x2) #270 pc 45752
	addi	%x6, %x0, 1  #0 pc 45756
	fmv	%f0, l.6293  #0 pc 45760
	sw	%x5, 88(%x2)  #273 pc 45764
	addi	%x5, %x6, 0  #0 pc 45772
	sw	%x1, 92(%x2)  #273 pc 45776
	addi	%x2, %x2, 96  #273 pc 45780
	jal	%x1, create_float_array.2600  #273 pc 45784
	addi	%x2, %x2, -96  #273 pc 45788
	lw	%x1, 92(%x2) #273 pc 45792
	addi	%x6, %x0, 3  #0 pc 45796
	fmv	%f0, l.6293  #0 pc 45800
	sw	%x5, 92(%x2)  #277 pc 45804
	addi	%x5, %x6, 0  #0 pc 45812
	sw	%x1, 100(%x2)  #277 pc 45816
	addi	%x2, %x2, 104  #277 pc 45820
	jal	%x1, create_float_array.2600  #277 pc 45824
	addi	%x2, %x2, -104  #277 pc 45828
	lw	%x1, 100(%x2) #277 pc 45832
	addi	%x6, %x0, 3  #0 pc 45836
	fmv	%f0, l.6293  #0 pc 45840
	sw	%x5, 96(%x2)  #280 pc 45844
	addi	%x5, %x6, 0  #0 pc 45852
	sw	%x1, 100(%x2)  #280 pc 45856
	addi	%x2, %x2, 104  #280 pc 45860
	jal	%x1, create_float_array.2600  #280 pc 45864
	addi	%x2, %x2, -104  #280 pc 45868
	lw	%x1, 100(%x2) #280 pc 45872
	addi	%x6, %x0, 3  #0 pc 45876
	fmv	%f0, l.6293  #0 pc 45880
	sw	%x5, 100(%x2)  #284 pc 45884
	addi	%x5, %x6, 0  #0 pc 45892
	sw	%x1, 108(%x2)  #284 pc 45896
	addi	%x2, %x2, 112  #284 pc 45900
	jal	%x1, create_float_array.2600  #284 pc 45904
	addi	%x2, %x2, -112  #284 pc 45908
	lw	%x1, 108(%x2) #284 pc 45912
	addi	%x6, %x0, 3  #0 pc 45916
	fmv	%f0, l.6293  #0 pc 45920
	sw	%x5, 104(%x2)  #286 pc 45924
	addi	%x5, %x6, 0  #0 pc 45932
	sw	%x1, 108(%x2)  #286 pc 45936
	addi	%x2, %x2, 112  #286 pc 45940
	jal	%x1, create_float_array.2600  #286 pc 45944
	addi	%x2, %x2, -112  #286 pc 45948
	lw	%x1, 108(%x2) #286 pc 45952
	addi	%x6, %x0, 3  #0 pc 45956
	fmv	%f0, l.6293  #0 pc 45960
	sw	%x5, 108(%x2)  #288 pc 45964
	addi	%x5, %x6, 0  #0 pc 45972
	sw	%x1, 116(%x2)  #288 pc 45976
	addi	%x2, %x2, 120  #288 pc 45980
	jal	%x1, create_float_array.2600  #288 pc 45984
	addi	%x2, %x2, -120  #288 pc 45988
	lw	%x1, 116(%x2) #288 pc 45992
	addi	%x6, %x0, 3  #0 pc 45996
	fmv	%f0, l.6293  #0 pc 46000
	sw	%x5, 112(%x2)  #292 pc 46004
	addi	%x5, %x6, 0  #0 pc 46012
	sw	%x1, 116(%x2)  #292 pc 46016
	addi	%x2, %x2, 120  #292 pc 46020
	jal	%x1, create_float_array.2600  #292 pc 46024
	addi	%x2, %x2, -120  #292 pc 46028
	lw	%x1, 116(%x2) #292 pc 46032
	addi	%x6, %x0, 0  #0 pc 46036
	fmv	%f0, l.6293  #0 pc 46040
	sw	%x5, 116(%x2)  #297 pc 46044
	addi	%x5, %x6, 0  #0 pc 46052
	sw	%x1, 124(%x2)  #297 pc 46056
	addi	%x2, %x2, 128  #297 pc 46060
	jal	%x1, create_float_array.2600  #297 pc 46064
	addi	%x2, %x2, -128  #297 pc 46068
	lw	%x1, 124(%x2) #297 pc 46072
	addi	%x6, %x5, 0  #297 pc 46076
	addi	%x5, %x0, 0  #0 pc 46080
	sw	%x6, 120(%x2)  #298 pc 46084
	sw	%x1, 124(%x2)  #298 pc 46088
	addi	%x2, %x2, 128  #298 pc 46092
	jal	%x1, create_array.2593  #298 pc 46096
	addi	%x2, %x2, -128  #298 pc 46100
	lw	%x1, 124(%x2) #298 pc 46104
	addi	%x6, %x0, 0  #0 pc 46108
	addi	%x7, %x3, 0  #299 pc 46112
	addi	%x3, %x3, 8  #299 pc 46116
	addi	%x24, %x0, 4  #pc 46120
	add	%x24, %x24, %x7  #299 pc 46124
	sw	%x5, 0(%x24)  #299 pc 46128
	lw	%x5, 120(%x2)  #299 pc 46132
	add	%x24, %x0, %x7  #299 pc 46136
	sw	%x5, 0(%x24)  #299 pc 46140
	addi	%x5, %x7, 0  #299 pc 46144
	addi	%x23, %x6, 0  #0 pc 46152
	addi	%x6, %x5, 0  #0 pc 46160
	addi	%x5, %x23, 0  #0 pc 46168
	sw	%x1, 124(%x2)  #299 pc 46172
	addi	%x2, %x2, 128  #299 pc 46176
	jal	%x1, create_array.2593  #299 pc 46180
	addi	%x2, %x2, -128  #299 pc 46184
	lw	%x1, 124(%x2) #299 pc 46188
	addi	%x6, %x5, 0  #299 pc 46192
	addi	%x5, %x0, 5  #0 pc 46196
	sw	%x1, 124(%x2)  #300 pc 46200
	addi	%x2, %x2, 128  #300 pc 46204
	jal	%x1, create_array.2593  #300 pc 46208
	addi	%x2, %x2, -128  #300 pc 46212
	lw	%x1, 124(%x2) #300 pc 46216
	addi	%x6, %x0, 0  #0 pc 46220
	fmv	%f0, l.6293  #0 pc 46224
	sw	%x5, 124(%x2)  #305 pc 46228
	addi	%x5, %x6, 0  #0 pc 46236
	sw	%x1, 132(%x2)  #305 pc 46240
	addi	%x2, %x2, 136  #305 pc 46244
	jal	%x1, create_float_array.2600  #305 pc 46248
	addi	%x2, %x2, -136  #305 pc 46252
	lw	%x1, 132(%x2) #305 pc 46256
	addi	%x6, %x0, 3  #0 pc 46260
	fmv	%f0, l.6293  #0 pc 46264
	sw	%x5, 128(%x2)  #306 pc 46268
	addi	%x5, %x6, 0  #0 pc 46276
	sw	%x1, 132(%x2)  #306 pc 46280
	addi	%x2, %x2, 136  #306 pc 46284
	jal	%x1, create_float_array.2600  #306 pc 46288
	addi	%x2, %x2, -136  #306 pc 46292
	lw	%x1, 132(%x2) #306 pc 46296
	addi	%x6, %x0, 60  #0 pc 46300
	lw	%x7, 128(%x2)  #307 pc 46304
	sw	%x5, 132(%x2)  #307 pc 46308
	addi	%x5, %x6, 0  #0 pc 46316
	addi	%x6, %x7, 0  #0 pc 46324
	sw	%x1, 140(%x2)  #307 pc 46328
	addi	%x2, %x2, 144  #307 pc 46332
	jal	%x1, create_array.2593  #307 pc 46336
	addi	%x2, %x2, -144  #307 pc 46340
	lw	%x1, 140(%x2) #307 pc 46344
	addi	%x6, %x3, 0  #308 pc 46348
	addi	%x3, %x3, 8  #308 pc 46352
	addi	%x24, %x0, 4  #pc 46356
	add	%x24, %x24, %x6  #308 pc 46360
	sw	%x5, 0(%x24)  #308 pc 46364
	lw	%x5, 132(%x2)  #308 pc 46368
	add	%x24, %x0, %x6  #308 pc 46372
	sw	%x5, 0(%x24)  #308 pc 46376
	addi	%x5, %x6, 0  #308 pc 46380
	addi	%x6, %x0, 0  #0 pc 46384
	fmv	%f0, l.6293  #0 pc 46388
	sw	%x5, 136(%x2)  #313 pc 46392
	addi	%x5, %x6, 0  #0 pc 46400
	sw	%x1, 140(%x2)  #313 pc 46404
	addi	%x2, %x2, 144  #313 pc 46408
	jal	%x1, create_float_array.2600  #313 pc 46412
	addi	%x2, %x2, -144  #313 pc 46416
	lw	%x1, 140(%x2) #313 pc 46420
	addi	%x6, %x5, 0  #313 pc 46424
	addi	%x5, %x0, 0  #0 pc 46428
	sw	%x6, 140(%x2)  #314 pc 46432
	sw	%x1, 148(%x2)  #314 pc 46436
	addi	%x2, %x2, 152  #314 pc 46440
	jal	%x1, create_array.2593  #314 pc 46444
	addi	%x2, %x2, -152  #314 pc 46448
	lw	%x1, 148(%x2) #314 pc 46452
	addi	%x6, %x3, 0  #315 pc 46456
	addi	%x3, %x3, 8  #315 pc 46460
	addi	%x24, %x0, 4  #pc 46464
	add	%x24, %x24, %x6  #315 pc 46468
	sw	%x5, 0(%x24)  #315 pc 46472
	lw	%x5, 140(%x2)  #315 pc 46476
	add	%x24, %x0, %x6  #315 pc 46480
	sw	%x5, 0(%x24)  #315 pc 46484
	addi	%x5, %x6, 0  #315 pc 46488
	addi	%x6, %x0, 180  #0 pc 46492
	addi	%x7, %x0, 0  #0 pc 46496
	fmv	%f0, l.6293  #0 pc 46500
	addi	%x9, %x3, 0  #316 pc 46504
	addi	%x3, %x3, 16  #316 pc 46508
	addi	%x24, %x0, 8  #pc 46512
	add	%x24, %x24, %x9  #316 pc 46516
	fsw	%f0, 0(%x24) #316 pc 46520
	addi	%x24, %x0, 4  #pc 46524
	add	%x24, %x24, %x9  #316 pc 46528
	sw	%x5, 0(%x24)  #316 pc 46532
	add	%x24, %x0, %x9  #316 pc 46536
	sw	%x7, 0(%x24)  #316 pc 46540
	addi	%x5, %x9, 0  #316 pc 46544
	addi	%x23, %x6, 0  #0 pc 46552
	addi	%x6, %x5, 0  #0 pc 46560
	addi	%x5, %x23, 0  #0 pc 46568
	sw	%x1, 148(%x2)  #316 pc 46572
	addi	%x2, %x2, 152  #316 pc 46576
	jal	%x1, create_array.2593  #316 pc 46580
	addi	%x2, %x2, -152  #316 pc 46584
	lw	%x1, 148(%x2) #316 pc 46588
	addi	%x6, %x0, 1  #0 pc 46592
	addi	%x7, %x0, 0  #0 pc 46596
	sw	%x5, 144(%x2)  #320 pc 46600
	addi	%x5, %x6, 0  #0 pc 46608
	addi	%x6, %x7, 0  #0 pc 46616
	sw	%x1, 148(%x2)  #320 pc 46620
	addi	%x2, %x2, 152  #320 pc 46624
	jal	%x1, create_array.2593  #320 pc 46628
	addi	%x2, %x2, -152  #320 pc 46632
	lw	%x1, 148(%x2) #320 pc 46636
	addi	%x6, %x3, 0  #803 pc 46640
	addi	%x3, %x3, 24  #803 pc 46644
	addi	%x24, %x0, 4328  #803 read_screen_settings.2755 pc 46648
	addi	%x7, %x24, 0  #803 pc 46652
	add	%x24, %x0, %x6  #803 pc 46656
	sw	%x7, 0(%x24)  #803 pc 46660
	lw	%x7, 20(%x2)  #803 pc 46664
	addi	%x24, %x0, 20  #pc 46668
	add	%x24, %x24, %x6  #803 pc 46672
	sw	%x7, 0(%x24)  #803 pc 46676
	lw	%x9, 112(%x2)  #803 pc 46680
	addi	%x24, %x0, 16  #pc 46684
	add	%x24, %x24, %x6  #803 pc 46688
	sw	%x9, 0(%x24)  #803 pc 46692
	lw	%x10, 108(%x2)  #803 pc 46696
	addi	%x24, %x0, 12  #pc 46700
	add	%x24, %x24, %x6  #803 pc 46704
	sw	%x10, 0(%x24)  #803 pc 46708
	lw	%x11, 104(%x2)  #803 pc 46712
	addi	%x24, %x0, 8  #pc 46716
	add	%x24, %x24, %x6  #803 pc 46720
	sw	%x11, 0(%x24)  #803 pc 46724
	lw	%x12, 16(%x2)  #803 pc 46728
	addi	%x24, %x0, 4  #pc 46732
	add	%x24, %x24, %x6  #803 pc 46736
	sw	%x12, 0(%x24)  #803 pc 46740
	addi	%x12, %x3, 0  #836 pc 46744
	addi	%x3, %x3, 16  #836 pc 46748
	addi	%x24, %x0, 5156  #836 read_light.2757 pc 46752
	addi	%x13, %x24, 0  #836 pc 46756
	add	%x24, %x0, %x12  #836 pc 46760
	sw	%x13, 0(%x24)  #836 pc 46764
	lw	%x13, 24(%x2)  #836 pc 46768
	addi	%x24, %x0, 8  #pc 46772
	add	%x24, %x24, %x12  #836 pc 46776
	sw	%x13, 0(%x24)  #836 pc 46780
	lw	%x14, 28(%x2)  #836 pc 46784
	addi	%x24, %x0, 4  #pc 46788
	add	%x24, %x24, %x12  #836 pc 46792
	sw	%x14, 0(%x24)  #836 pc 46796
	addi	%x15, %x3, 0  #899 pc 46800
	addi	%x3, %x3, 8  #899 pc 46804
	addi	%x24, %x0, 6664  #899 read_nth_object.2762 pc 46808
	addi	%x16, %x24, 0  #899 pc 46812
	add	%x24, %x0, %x15  #899 pc 46816
	sw	%x16, 0(%x24)  #899 pc 46820
	lw	%x16, 12(%x2)  #899 pc 46824
	addi	%x24, %x0, 4  #pc 46828
	add	%x24, %x24, %x15  #899 pc 46832
	sw	%x16, 0(%x24)  #899 pc 46836
	addi	%x17, %x3, 0  #982 pc 46840
	addi	%x3, %x3, 16  #982 pc 46844
	addi	%x24, %x0, 8632  #982 read_object.2764 pc 46848
	addi	%x18, %x24, 0  #982 pc 46852
	add	%x24, %x0, %x17  #982 pc 46856
	sw	%x18, 0(%x24)  #982 pc 46860
	addi	%x24, %x0, 8  #pc 46864
	add	%x24, %x24, %x17  #982 pc 46868
	sw	%x15, 0(%x24)  #982 pc 46872
	lw	%x15, 8(%x2)  #982 pc 46876
	addi	%x24, %x0, 4  #pc 46880
	add	%x24, %x24, %x17  #982 pc 46884
	sw	%x15, 0(%x24)  #982 pc 46888
	addi	%x18, %x3, 0  #991 pc 46892
	addi	%x3, %x3, 8  #991 pc 46896
	addi	%x24, %x0, 8784  #991 read_all_object.2766 pc 46900
	addi	%x19, %x24, 0  #991 pc 46904
	add	%x24, %x0, %x18  #991 pc 46908
	sw	%x19, 0(%x24)  #991 pc 46912
	addi	%x24, %x0, 4  #pc 46916
	add	%x24, %x24, %x18  #991 pc 46920
	sw	%x17, 0(%x24)  #991 pc 46924
	addi	%x17, %x3, 0  #1015 pc 46928
	addi	%x3, %x3, 8  #1015 pc 46932
	addi	%x24, %x0, 9096  #1015 read_and_network.2772 pc 46936
	addi	%x19, %x24, 0  #1015 pc 46940
	add	%x24, %x0, %x17  #1015 pc 46944
	sw	%x19, 0(%x24)  #1015 pc 46948
	lw	%x19, 36(%x2)  #1015 pc 46952
	addi	%x24, %x0, 4  #pc 46956
	add	%x24, %x24, %x17  #1015 pc 46960
	sw	%x19, 0(%x24)  #1015 pc 46964
	addi	%x20, %x3, 0  #1024 pc 46968
	addi	%x3, %x3, 24  #1024 pc 46972
	addi	%x24, %x0, 9224  #1024 read_parameter.2774 pc 46976
	addi	%x21, %x24, 0  #1024 pc 46980
	add	%x24, %x0, %x20  #1024 pc 46984
	sw	%x21, 0(%x24)  #1024 pc 46988
	addi	%x24, %x0, 20  #pc 46992
	add	%x24, %x24, %x20  #1024 pc 46996
	sw	%x6, 0(%x24)  #1024 pc 47000
	addi	%x24, %x0, 16  #pc 47004
	add	%x24, %x24, %x20  #1024 pc 47008
	sw	%x12, 0(%x24)  #1024 pc 47012
	addi	%x24, %x0, 12  #pc 47016
	add	%x24, %x24, %x20  #1024 pc 47020
	sw	%x17, 0(%x24)  #1024 pc 47024
	addi	%x24, %x0, 8  #pc 47028
	add	%x24, %x24, %x20  #1024 pc 47032
	sw	%x18, 0(%x24)  #1024 pc 47036
	lw	%x6, 44(%x2)  #1024 pc 47040
	addi	%x24, %x0, 4  #pc 47044
	add	%x24, %x24, %x20  #1024 pc 47048
	sw	%x6, 0(%x24)  #1024 pc 47052
	addi	%x12, %x3, 0  #1049 pc 47056
	addi	%x3, %x3, 8  #1049 pc 47060
	addi	%x24, %x0, 9488  #1049 solver_rect_surface.2776 pc 47064
	addi	%x17, %x24, 0  #1049 pc 47068
	add	%x24, %x0, %x12  #1049 pc 47072
	sw	%x17, 0(%x24)  #1049 pc 47076
	lw	%x17, 48(%x2)  #1049 pc 47080
	addi	%x24, %x0, 4  #pc 47084
	add	%x24, %x24, %x12  #1049 pc 47088
	sw	%x17, 0(%x24)  #1049 pc 47092
	addi	%x18, %x3, 0  #1064 pc 47096
	addi	%x3, %x3, 8  #1064 pc 47100
	addi	%x24, %x0, 10036  #1064 solver_rect.2785 pc 47104
	addi	%x21, %x24, 0  #1064 pc 47108
	add	%x24, %x0, %x18  #1064 pc 47112
	sw	%x21, 0(%x24)  #1064 pc 47116
	addi	%x24, %x0, 4  #pc 47120
	add	%x24, %x24, %x18  #1064 pc 47124
	sw	%x12, 0(%x24)  #1064 pc 47128
	addi	%x12, %x3, 0  #1073 pc 47132
	addi	%x3, %x3, 8  #1073 pc 47136
	addi	%x24, %x0, 10312  #1073 solver_surface.2791 pc 47140
	addi	%x21, %x24, 0  #1073 pc 47144
	add	%x24, %x0, %x12  #1073 pc 47148
	sw	%x21, 0(%x24)  #1073 pc 47152
	addi	%x24, %x0, 4  #pc 47156
	add	%x24, %x24, %x12  #1073 pc 47160
	sw	%x17, 0(%x24)  #1073 pc 47164
	addi	%x21, %x3, 0  #1124 pc 47168
	addi	%x3, %x3, 8  #1124 pc 47172
	addi	%x24, %x0, 11480  #1124 solver_second.2810 pc 47176
	addi	%x22, %x24, 0  #1124 pc 47180
	add	%x24, %x0, %x21  #1124 pc 47184
	sw	%x22, 0(%x24)  #1124 pc 47188
	addi	%x24, %x0, 4  #pc 47192
	add	%x24, %x24, %x21  #1124 pc 47196
	sw	%x17, 0(%x24)  #1124 pc 47200
	addi	%x22, %x3, 0  #1153 pc 47204
	addi	%x3, %x3, 24  #1153 pc 47208
	addi	%x24, %x0, 12040  #1153 solver.2816 pc 47212
	addi	%x23, %x24, 0  #1153 pc 47216
	add	%x24, %x0, %x22  #1153 pc 47220
	sw	%x23, 0(%x24)  #1153 pc 47224
	addi	%x24, %x0, 16  #pc 47228
	add	%x24, %x24, %x22  #1153 pc 47232
	sw	%x12, 0(%x24)  #1153 pc 47236
	addi	%x24, %x0, 12  #pc 47240
	add	%x24, %x24, %x22  #1153 pc 47244
	sw	%x21, 0(%x24)  #1153 pc 47248
	addi	%x24, %x0, 8  #pc 47252
	add	%x24, %x24, %x22  #1153 pc 47256
	sw	%x18, 0(%x24)  #1153 pc 47260
	addi	%x24, %x0, 4  #pc 47264
	add	%x24, %x24, %x22  #1153 pc 47268
	sw	%x16, 0(%x24)  #1153 pc 47272
	addi	%x12, %x3, 0  #1185 pc 47276
	addi	%x3, %x3, 8  #1185 pc 47280
	addi	%x24, %x0, 12452  #1185 solver_rect_fast.2820 pc 47284
	addi	%x18, %x24, 0  #1185 pc 47288
	add	%x24, %x0, %x12  #1185 pc 47292
	sw	%x18, 0(%x24)  #1185 pc 47296
	addi	%x24, %x0, 4  #pc 47300
	add	%x24, %x24, %x12  #1185 pc 47304
	sw	%x17, 0(%x24)  #1185 pc 47308
	addi	%x18, %x3, 0  #1218 pc 47312
	addi	%x3, %x3, 8  #1218 pc 47316
	addi	%x24, %x0, 13632  #1218 solver_surface_fast.2827 pc 47320
	addi	%x21, %x24, 0  #1218 pc 47324
	add	%x24, %x0, %x18  #1218 pc 47328
	sw	%x21, 0(%x24)  #1218 pc 47332
	addi	%x24, %x0, 4  #pc 47336
	add	%x24, %x24, %x18  #1218 pc 47340
	sw	%x17, 0(%x24)  #1218 pc 47344
	addi	%x21, %x3, 0  #1227 pc 47348
	addi	%x3, %x3, 8  #1227 pc 47352
	addi	%x24, %x0, 13816  #1227 solver_second_fast.2833 pc 47356
	addi	%x23, %x24, 0  #1227 pc 47360
	add	%x24, %x0, %x21  #1227 pc 47364
	sw	%x23, 0(%x24)  #1227 pc 47368
	addi	%x24, %x0, 4  #pc 47372
	add	%x24, %x24, %x21  #1227 pc 47376
	sw	%x17, 0(%x24)  #1227 pc 47380
	addi	%x23, %x3, 0  #1247 pc 47384
	addi	%x3, %x3, 24  #1247 pc 47388
	sw	%x20, 148(%x2)  #1247 pc 47392
	addi	%x24, %x0, 14348  #1247 solver_fast.2839 pc 47396
	addi	%x20, %x24, 0  #1247 pc 47400
	add	%x24, %x0, %x23  #1247 pc 47404
	sw	%x20, 0(%x24)  #1247 pc 47408
	addi	%x24, %x0, 16  #pc 47412
	add	%x24, %x24, %x23  #1247 pc 47416
	sw	%x18, 0(%x24)  #1247 pc 47420
	addi	%x24, %x0, 12  #pc 47424
	add	%x24, %x24, %x23  #1247 pc 47428
	sw	%x21, 0(%x24)  #1247 pc 47432
	addi	%x24, %x0, 8  #pc 47436
	add	%x24, %x24, %x23  #1247 pc 47440
	sw	%x12, 0(%x24)  #1247 pc 47444
	addi	%x24, %x0, 4  #pc 47448
	add	%x24, %x24, %x23  #1247 pc 47452
	sw	%x16, 0(%x24)  #1247 pc 47456
	addi	%x18, %x3, 0  #1267 pc 47460
	addi	%x3, %x3, 8  #1267 pc 47464
	addi	%x24, %x0, 14852  #1267 solver_surface_fast2.2843 pc 47468
	addi	%x20, %x24, 0  #1267 pc 47472
	add	%x24, %x0, %x18  #1267 pc 47476
	sw	%x20, 0(%x24)  #1267 pc 47480
	addi	%x24, %x0, 4  #pc 47484
	add	%x24, %x24, %x18  #1267 pc 47488
	sw	%x17, 0(%x24)  #1267 pc 47492
	addi	%x20, %x3, 0  #1275 pc 47496
	addi	%x3, %x3, 8  #1275 pc 47500
	addi	%x24, %x0, 14984  #1275 solver_second_fast2.2850 pc 47504
	addi	%x21, %x24, 0  #1275 pc 47508
	add	%x24, %x0, %x20  #1275 pc 47512
	sw	%x21, 0(%x24)  #1275 pc 47516
	addi	%x24, %x0, 4  #pc 47520
	add	%x24, %x24, %x20  #1275 pc 47524
	sw	%x17, 0(%x24)  #1275 pc 47528
	addi	%x21, %x3, 0  #1294 pc 47532
	addi	%x3, %x3, 24  #1294 pc 47536
	addi	%x24, %x0, 15416  #1294 solver_fast2.2857 pc 47540
	addi	%x10, %x24, 0  #1294 pc 47544
	add	%x24, %x0, %x21  #1294 pc 47548
	sw	%x10, 0(%x24)  #1294 pc 47552
	addi	%x24, %x0, 16  #pc 47556
	add	%x24, %x24, %x21  #1294 pc 47560
	sw	%x18, 0(%x24)  #1294 pc 47564
	addi	%x24, %x0, 12  #pc 47568
	add	%x24, %x24, %x21  #1294 pc 47572
	sw	%x20, 0(%x24)  #1294 pc 47576
	addi	%x24, %x0, 8  #pc 47580
	add	%x24, %x24, %x21  #1294 pc 47584
	sw	%x12, 0(%x24)  #1294 pc 47588
	addi	%x24, %x0, 4  #pc 47592
	add	%x24, %x24, %x21  #1294 pc 47596
	sw	%x16, 0(%x24)  #1294 pc 47600
	addi	%x10, %x3, 0  #1391 pc 47604
	addi	%x3, %x3, 8  #1391 pc 47608
	addi	%x24, %x0, 18360  #1391 iter_setup_dirvec_constants.2869 pc 47612
	addi	%x12, %x24, 0  #1391 pc 47616
	add	%x24, %x0, %x10  #1391 pc 47620
	sw	%x12, 0(%x24)  #1391 pc 47624
	addi	%x24, %x0, 4  #pc 47628
	add	%x24, %x24, %x10  #1391 pc 47632
	sw	%x16, 0(%x24)  #1391 pc 47636
	addi	%x12, %x3, 0  #1408 pc 47640
	addi	%x3, %x3, 16  #1408 pc 47644
	addi	%x24, %x0, 18728  #1408 setup_dirvec_constants.2872 pc 47648
	addi	%x18, %x24, 0  #1408 pc 47652
	add	%x24, %x0, %x12  #1408 pc 47656
	sw	%x18, 0(%x24)  #1408 pc 47660
	addi	%x24, %x0, 8  #pc 47664
	add	%x24, %x24, %x12  #1408 pc 47668
	sw	%x15, 0(%x24)  #1408 pc 47672
	addi	%x24, %x0, 4  #pc 47676
	add	%x24, %x24, %x12  #1408 pc 47680
	sw	%x10, 0(%x24)  #1408 pc 47684
	addi	%x10, %x3, 0  #1416 pc 47688
	addi	%x3, %x3, 8  #1416 pc 47692
	addi	%x24, %x0, 18776  #1416 setup_startp_constants.2874 pc 47696
	addi	%x18, %x24, 0  #1416 pc 47700
	add	%x24, %x0, %x10  #1416 pc 47704
	sw	%x18, 0(%x24)  #1416 pc 47708
	addi	%x24, %x0, 4  #pc 47712
	add	%x24, %x24, %x10  #1416 pc 47716
	sw	%x16, 0(%x24)  #1416 pc 47720
	addi	%x18, %x3, 0  #1435 pc 47724
	addi	%x3, %x3, 16  #1435 pc 47728
	addi	%x24, %x0, 19424  #1435 setup_startp.2877 pc 47732
	addi	%x20, %x24, 0  #1435 pc 47736
	add	%x24, %x0, %x18  #1435 pc 47740
	sw	%x20, 0(%x24)  #1435 pc 47744
	lw	%x20, 100(%x2)  #1435 pc 47748
	addi	%x24, %x0, 12  #pc 47752
	add	%x24, %x24, %x18  #1435 pc 47756
	sw	%x20, 0(%x24)  #1435 pc 47760
	addi	%x24, %x0, 8  #pc 47764
	add	%x24, %x24, %x18  #1435 pc 47768
	sw	%x10, 0(%x24)  #1435 pc 47772
	addi	%x24, %x0, 4  #pc 47776
	add	%x24, %x24, %x18  #1435 pc 47780
	sw	%x15, 0(%x24)  #1435 pc 47784
	addi	%x10, %x3, 0  #1485 pc 47788
	addi	%x3, %x3, 8  #1485 pc 47792
	sw	%x12, 152(%x2)  #1485 pc 47796
	addi	%x24, %x0, 20528  #1485 check_all_inside.2899 pc 47800
	addi	%x12, %x24, 0  #1485 pc 47804
	add	%x24, %x0, %x10  #1485 pc 47808
	sw	%x12, 0(%x24)  #1485 pc 47812
	addi	%x24, %x0, 4  #pc 47816
	add	%x24, %x24, %x10  #1485 pc 47820
	sw	%x16, 0(%x24)  #1485 pc 47824
	addi	%x12, %x3, 0  #1505 pc 47828
	addi	%x3, %x3, 32  #1505 pc 47832
	addi	%x24, %x0, 20708  #1505 shadow_check_and_group.2905 pc 47836
	addi	%x15, %x24, 0  #1505 pc 47840
	add	%x24, %x0, %x12  #1505 pc 47844
	sw	%x15, 0(%x24)  #1505 pc 47848
	addi	%x24, %x0, 28  #pc 47852
	add	%x24, %x24, %x12  #1505 pc 47856
	sw	%x23, 0(%x24)  #1505 pc 47860
	addi	%x24, %x0, 24  #pc 47864
	add	%x24, %x24, %x12  #1505 pc 47868
	sw	%x17, 0(%x24)  #1505 pc 47872
	addi	%x24, %x0, 20  #pc 47876
	add	%x24, %x24, %x12  #1505 pc 47880
	sw	%x16, 0(%x24)  #1505 pc 47884
	lw	%x15, 136(%x2)  #1505 pc 47888
	addi	%x24, %x0, 16  #pc 47892
	add	%x24, %x24, %x12  #1505 pc 47896
	sw	%x15, 0(%x24)  #1505 pc 47900
	addi	%x24, %x0, 12  #pc 47904
	add	%x24, %x24, %x12  #1505 pc 47908
	sw	%x13, 0(%x24)  #1505 pc 47912
	lw	%x9, 60(%x2)  #1505 pc 47916
	addi	%x24, %x0, 8  #pc 47920
	add	%x24, %x24, %x12  #1505 pc 47924
	sw	%x9, 0(%x24)  #1505 pc 47928
	addi	%x24, %x0, 4  #pc 47932
	add	%x24, %x24, %x12  #1505 pc 47936
	sw	%x10, 0(%x24)  #1505 pc 47940
	addi	%x11, %x3, 0  #1535 pc 47944
	addi	%x3, %x3, 16  #1535 pc 47948
	addi	%x24, %x0, 21316  #1535 shadow_check_one_or_group.2908 pc 47952
	addi	%x7, %x24, 0  #1535 pc 47956
	add	%x24, %x0, %x11  #1535 pc 47960
	sw	%x7, 0(%x24)  #1535 pc 47964
	addi	%x24, %x0, 8  #pc 47968
	add	%x24, %x24, %x11  #1535 pc 47972
	sw	%x12, 0(%x24)  #1535 pc 47976
	addi	%x24, %x0, 4  #pc 47980
	add	%x24, %x24, %x11  #1535 pc 47984
	sw	%x19, 0(%x24)  #1535 pc 47988
	addi	%x7, %x3, 0  #1550 pc 47992
	addi	%x3, %x3, 24  #1550 pc 47996
	addi	%x24, %x0, 21508  #1550 shadow_check_one_or_matrix.2911 pc 48000
	addi	%x12, %x24, 0  #1550 pc 48004
	add	%x24, %x0, %x7  #1550 pc 48008
	sw	%x12, 0(%x24)  #1550 pc 48012
	addi	%x24, %x0, 20  #pc 48016
	add	%x24, %x24, %x7  #1550 pc 48020
	sw	%x23, 0(%x24)  #1550 pc 48024
	addi	%x24, %x0, 16  #pc 48028
	add	%x24, %x24, %x7  #1550 pc 48032
	sw	%x17, 0(%x24)  #1550 pc 48036
	addi	%x24, %x0, 12  #pc 48040
	add	%x24, %x24, %x7  #1550 pc 48044
	sw	%x11, 0(%x24)  #1550 pc 48048
	addi	%x24, %x0, 8  #pc 48052
	add	%x24, %x24, %x7  #1550 pc 48056
	sw	%x15, 0(%x24)  #1550 pc 48060
	addi	%x24, %x0, 4  #pc 48064
	add	%x24, %x24, %x7  #1550 pc 48068
	sw	%x9, 0(%x24)  #1550 pc 48072
	addi	%x11, %x3, 0  #1586 pc 48076
	addi	%x3, %x3, 40  #1586 pc 48080
	addi	%x24, %x0, 22000  #1586 solve_each_element.2914 pc 48084
	addi	%x12, %x24, 0  #1586 pc 48088
	add	%x24, %x0, %x11  #1586 pc 48092
	sw	%x12, 0(%x24)  #1586 pc 48096
	lw	%x12, 56(%x2)  #1586 pc 48100
	addi	%x24, %x0, 36  #pc 48104
	add	%x24, %x24, %x11  #1586 pc 48108
	sw	%x12, 0(%x24)  #1586 pc 48112
	lw	%x23, 96(%x2)  #1586 pc 48116
	addi	%x24, %x0, 32  #pc 48120
	add	%x24, %x24, %x11  #1586 pc 48124
	sw	%x23, 0(%x24)  #1586 pc 48128
	addi	%x24, %x0, 28  #pc 48132
	add	%x24, %x24, %x11  #1586 pc 48136
	sw	%x17, 0(%x24)  #1586 pc 48140
	addi	%x24, %x0, 24  #pc 48144
	add	%x24, %x24, %x11  #1586 pc 48148
	sw	%x22, 0(%x24)  #1586 pc 48152
	addi	%x24, %x0, 20  #pc 48156
	add	%x24, %x24, %x11  #1586 pc 48160
	sw	%x16, 0(%x24)  #1586 pc 48164
	lw	%x15, 52(%x2)  #1586 pc 48168
	addi	%x24, %x0, 16  #pc 48172
	add	%x24, %x24, %x11  #1586 pc 48176
	sw	%x15, 0(%x24)  #1586 pc 48180
	addi	%x24, %x0, 12  #pc 48184
	add	%x24, %x24, %x11  #1586 pc 48188
	sw	%x9, 0(%x24)  #1586 pc 48192
	lw	%x14, 64(%x2)  #1586 pc 48196
	addi	%x24, %x0, 8  #pc 48200
	add	%x24, %x24, %x11  #1586 pc 48204
	sw	%x14, 0(%x24)  #1586 pc 48208
	addi	%x24, %x0, 4  #pc 48212
	add	%x24, %x24, %x11  #1586 pc 48216
	sw	%x10, 0(%x24)  #1586 pc 48220
	addi	%x13, %x3, 0  #1627 pc 48224
	addi	%x3, %x3, 16  #1627 pc 48228
	sw	%x5, 156(%x2)  #1627 pc 48232
	addi	%x24, %x0, 22800  #1627 solve_one_or_network.2918 pc 48236
	addi	%x5, %x24, 0  #1627 pc 48240
	add	%x24, %x0, %x13  #1627 pc 48244
	sw	%x5, 0(%x24)  #1627 pc 48248
	addi	%x24, %x0, 8  #pc 48252
	add	%x24, %x24, %x13  #1627 pc 48256
	sw	%x11, 0(%x24)  #1627 pc 48260
	addi	%x24, %x0, 4  #pc 48264
	add	%x24, %x24, %x13  #1627 pc 48268
	sw	%x19, 0(%x24)  #1627 pc 48272
	addi	%x5, %x3, 0  #1637 pc 48276
	addi	%x3, %x3, 24  #1637 pc 48280
	addi	%x24, %x0, 22972  #1637 trace_or_matrix.2922 pc 48284
	addi	%x11, %x24, 0  #1637 pc 48288
	add	%x24, %x0, %x5  #1637 pc 48292
	sw	%x11, 0(%x24)  #1637 pc 48296
	addi	%x24, %x0, 20  #pc 48300
	add	%x24, %x24, %x5  #1637 pc 48304
	sw	%x12, 0(%x24)  #1637 pc 48308
	addi	%x24, %x0, 16  #pc 48312
	add	%x24, %x24, %x5  #1637 pc 48316
	sw	%x23, 0(%x24)  #1637 pc 48320
	addi	%x24, %x0, 12  #pc 48324
	add	%x24, %x24, %x5  #1637 pc 48328
	sw	%x17, 0(%x24)  #1637 pc 48332
	addi	%x24, %x0, 8  #pc 48336
	add	%x24, %x24, %x5  #1637 pc 48340
	sw	%x22, 0(%x24)  #1637 pc 48344
	addi	%x24, %x0, 4  #pc 48348
	add	%x24, %x24, %x5  #1637 pc 48352
	sw	%x13, 0(%x24)  #1637 pc 48356
	addi	%x11, %x3, 0  #1664 pc 48360
	addi	%x3, %x3, 16  #1664 pc 48364
	addi	%x24, %x0, 23396  #1664 judge_intersection.2926 pc 48368
	addi	%x13, %x24, 0  #1664 pc 48372
	add	%x24, %x0, %x11  #1664 pc 48376
	sw	%x13, 0(%x24)  #1664 pc 48380
	addi	%x24, %x0, 12  #pc 48384
	add	%x24, %x24, %x11  #1664 pc 48388
	sw	%x5, 0(%x24)  #1664 pc 48392
	addi	%x24, %x0, 8  #pc 48396
	add	%x24, %x24, %x11  #1664 pc 48400
	sw	%x12, 0(%x24)  #1664 pc 48404
	addi	%x24, %x0, 4  #pc 48408
	add	%x24, %x24, %x11  #1664 pc 48412
	sw	%x6, 0(%x24)  #1664 pc 48416
	addi	%x5, %x3, 0  #1679 pc 48420
	addi	%x3, %x3, 40  #1679 pc 48424
	addi	%x24, %x0, 23596  #1679 solve_each_element_fast.2928 pc 48428
	addi	%x13, %x24, 0  #1679 pc 48432
	add	%x24, %x0, %x5  #1679 pc 48436
	sw	%x13, 0(%x24)  #1679 pc 48440
	addi	%x24, %x0, 36  #pc 48444
	add	%x24, %x24, %x5  #1679 pc 48448
	sw	%x12, 0(%x24)  #1679 pc 48452
	addi	%x24, %x0, 32  #pc 48456
	add	%x24, %x24, %x5  #1679 pc 48460
	sw	%x20, 0(%x24)  #1679 pc 48464
	addi	%x24, %x0, 28  #pc 48468
	add	%x24, %x24, %x5  #1679 pc 48472
	sw	%x21, 0(%x24)  #1679 pc 48476
	addi	%x24, %x0, 24  #pc 48480
	add	%x24, %x24, %x5  #1679 pc 48484
	sw	%x17, 0(%x24)  #1679 pc 48488
	addi	%x24, %x0, 20  #pc 48492
	add	%x24, %x24, %x5  #1679 pc 48496
	sw	%x16, 0(%x24)  #1679 pc 48500
	addi	%x24, %x0, 16  #pc 48504
	add	%x24, %x24, %x5  #1679 pc 48508
	sw	%x15, 0(%x24)  #1679 pc 48512
	addi	%x24, %x0, 12  #pc 48516
	add	%x24, %x24, %x5  #1679 pc 48520
	sw	%x9, 0(%x24)  #1679 pc 48524
	addi	%x24, %x0, 8  #pc 48528
	add	%x24, %x24, %x5  #1679 pc 48532
	sw	%x14, 0(%x24)  #1679 pc 48536
	addi	%x24, %x0, 4  #pc 48540
	add	%x24, %x24, %x5  #1679 pc 48544
	sw	%x10, 0(%x24)  #1679 pc 48548
	addi	%x10, %x3, 0  #1720 pc 48552
	addi	%x3, %x3, 16  #1720 pc 48556
	addi	%x24, %x0, 24416  #1720 solve_one_or_network_fast.2932 pc 48560
	addi	%x13, %x24, 0  #1720 pc 48564
	add	%x24, %x0, %x10  #1720 pc 48568
	sw	%x13, 0(%x24)  #1720 pc 48572
	addi	%x24, %x0, 8  #pc 48576
	add	%x24, %x24, %x10  #1720 pc 48580
	sw	%x5, 0(%x24)  #1720 pc 48584
	addi	%x24, %x0, 4  #pc 48588
	add	%x24, %x24, %x10  #1720 pc 48592
	sw	%x19, 0(%x24)  #1720 pc 48596
	addi	%x5, %x3, 0  #1730 pc 48600
	addi	%x3, %x3, 24  #1730 pc 48604
	addi	%x24, %x0, 24588  #1730 trace_or_matrix_fast.2936 pc 48608
	addi	%x13, %x24, 0  #1730 pc 48612
	add	%x24, %x0, %x5  #1730 pc 48616
	sw	%x13, 0(%x24)  #1730 pc 48620
	addi	%x24, %x0, 16  #pc 48624
	add	%x24, %x24, %x5  #1730 pc 48628
	sw	%x12, 0(%x24)  #1730 pc 48632
	addi	%x24, %x0, 12  #pc 48636
	add	%x24, %x24, %x5  #1730 pc 48640
	sw	%x21, 0(%x24)  #1730 pc 48644
	addi	%x24, %x0, 8  #pc 48648
	add	%x24, %x24, %x5  #1730 pc 48652
	sw	%x17, 0(%x24)  #1730 pc 48656
	addi	%x24, %x0, 4  #pc 48660
	add	%x24, %x24, %x5  #1730 pc 48664
	sw	%x10, 0(%x24)  #1730 pc 48668
	addi	%x10, %x3, 0  #1754 pc 48672
	addi	%x3, %x3, 16  #1754 pc 48676
	addi	%x24, %x0, 24992  #1754 judge_intersection_fast.2940 pc 48680
	addi	%x13, %x24, 0  #1754 pc 48684
	add	%x24, %x0, %x10  #1754 pc 48688
	sw	%x13, 0(%x24)  #1754 pc 48692
	addi	%x24, %x0, 12  #pc 48696
	add	%x24, %x24, %x10  #1754 pc 48700
	sw	%x5, 0(%x24)  #1754 pc 48704
	addi	%x24, %x0, 8  #pc 48708
	add	%x24, %x24, %x10  #1754 pc 48712
	sw	%x12, 0(%x24)  #1754 pc 48716
	addi	%x24, %x0, 4  #pc 48720
	add	%x24, %x24, %x10  #1754 pc 48724
	sw	%x6, 0(%x24)  #1754 pc 48728
	addi	%x5, %x3, 0  #1775 pc 48732
	addi	%x3, %x3, 16  #1775 pc 48736
	addi	%x24, %x0, 25192  #1775 get_nvector_rect.2942 pc 48740
	addi	%x13, %x24, 0  #1775 pc 48744
	add	%x24, %x0, %x5  #1775 pc 48748
	sw	%x13, 0(%x24)  #1775 pc 48752
	lw	%x13, 68(%x2)  #1775 pc 48756
	addi	%x24, %x0, 8  #pc 48760
	add	%x24, %x24, %x5  #1775 pc 48764
	sw	%x13, 0(%x24)  #1775 pc 48768
	addi	%x24, %x0, 4  #pc 48772
	add	%x24, %x24, %x5  #1775 pc 48776
	sw	%x15, 0(%x24)  #1775 pc 48780
	addi	%x17, %x3, 0  #1783 pc 48784
	addi	%x3, %x3, 8  #1783 pc 48788
	addi	%x24, %x0, 25364  #1783 get_nvector_plane.2944 pc 48792
	addi	%x19, %x24, 0  #1783 pc 48796
	add	%x24, %x0, %x17  #1783 pc 48800
	sw	%x19, 0(%x24)  #1783 pc 48804
	addi	%x24, %x0, 4  #pc 48808
	add	%x24, %x24, %x17  #1783 pc 48812
	sw	%x13, 0(%x24)  #1783 pc 48816
	addi	%x19, %x3, 0  #1791 pc 48820
	addi	%x3, %x3, 16  #1791 pc 48824
	addi	%x24, %x0, 25580  #1791 get_nvector_second.2946 pc 48828
	addi	%x20, %x24, 0  #1791 pc 48832
	add	%x24, %x0, %x19  #1791 pc 48836
	sw	%x20, 0(%x24)  #1791 pc 48840
	addi	%x24, %x0, 8  #pc 48844
	add	%x24, %x24, %x19  #1791 pc 48848
	sw	%x13, 0(%x24)  #1791 pc 48852
	addi	%x24, %x0, 4  #pc 48856
	add	%x24, %x24, %x19  #1791 pc 48860
	sw	%x9, 0(%x24)  #1791 pc 48864
	addi	%x20, %x3, 0  #1813 pc 48868
	addi	%x3, %x3, 16  #1813 pc 48872
	addi	%x24, %x0, 26400  #1813 get_nvector.2948 pc 48876
	addi	%x21, %x24, 0  #1813 pc 48880
	add	%x24, %x0, %x20  #1813 pc 48884
	sw	%x21, 0(%x24)  #1813 pc 48888
	addi	%x24, %x0, 12  #pc 48892
	add	%x24, %x24, %x20  #1813 pc 48896
	sw	%x19, 0(%x24)  #1813 pc 48900
	addi	%x24, %x0, 8  #pc 48904
	add	%x24, %x24, %x20  #1813 pc 48908
	sw	%x5, 0(%x24)  #1813 pc 48912
	addi	%x24, %x0, 4  #pc 48916
	add	%x24, %x24, %x20  #1813 pc 48920
	sw	%x17, 0(%x24)  #1813 pc 48924
	addi	%x5, %x3, 0  #1829 pc 48928
	addi	%x3, %x3, 8  #1829 pc 48932
	addi	%x24, %x0, 26568  #1829 utexture.2951 pc 48936
	addi	%x17, %x24, 0  #1829 pc 48940
	add	%x24, %x0, %x5  #1829 pc 48944
	sw	%x17, 0(%x24)  #1829 pc 48948
	lw	%x17, 72(%x2)  #1829 pc 48952
	addi	%x24, %x0, 4  #pc 48956
	add	%x24, %x24, %x5  #1829 pc 48960
	sw	%x17, 0(%x24)  #1829 pc 48964
	addi	%x19, %x3, 0  #1907 pc 48968
	addi	%x3, %x3, 16  #1907 pc 48972
	addi	%x24, %x0, 28532  #1907 add_light.2954 pc 48976
	addi	%x21, %x24, 0  #1907 pc 48980
	add	%x24, %x0, %x19  #1907 pc 48984
	sw	%x21, 0(%x24)  #1907 pc 48988
	addi	%x24, %x0, 8  #pc 48992
	add	%x24, %x24, %x19  #1907 pc 48996
	sw	%x17, 0(%x24)  #1907 pc 49000
	lw	%x21, 80(%x2)  #1907 pc 49004
	addi	%x24, %x0, 4  #pc 49008
	add	%x24, %x24, %x19  #1907 pc 49012
	sw	%x21, 0(%x24)  #1907 pc 49016
	addi	%x22, %x3, 0  #1924 pc 49020
	addi	%x3, %x3, 40  #1924 pc 49024
	sw	%x20, 160(%x2)  #1924 pc 49028
	addi	%x24, %x0, 28832  #1924 trace_reflections.2958 pc 49032
	addi	%x20, %x24, 0  #1924 pc 49036
	add	%x24, %x0, %x22  #1924 pc 49040
	sw	%x20, 0(%x24)  #1924 pc 49044
	addi	%x24, %x0, 32  #pc 49048
	add	%x24, %x24, %x22  #1924 pc 49052
	sw	%x7, 0(%x24)  #1924 pc 49056
	lw	%x20, 144(%x2)  #1924 pc 49060
	addi	%x24, %x0, 28  #pc 49064
	add	%x24, %x24, %x22  #1924 pc 49068
	sw	%x20, 0(%x24)  #1924 pc 49072
	addi	%x24, %x0, 24  #pc 49076
	add	%x24, %x24, %x22  #1924 pc 49080
	sw	%x6, 0(%x24)  #1924 pc 49084
	addi	%x24, %x0, 20  #pc 49088
	add	%x24, %x24, %x22  #1924 pc 49092
	sw	%x13, 0(%x24)  #1924 pc 49096
	addi	%x24, %x0, 16  #pc 49100
	add	%x24, %x24, %x22  #1924 pc 49104
	sw	%x10, 0(%x24)  #1924 pc 49108
	addi	%x24, %x0, 12  #pc 49112
	add	%x24, %x24, %x22  #1924 pc 49116
	sw	%x15, 0(%x24)  #1924 pc 49120
	addi	%x24, %x0, 8  #pc 49124
	add	%x24, %x24, %x22  #1924 pc 49128
	sw	%x14, 0(%x24)  #1924 pc 49132
	addi	%x24, %x0, 4  #pc 49136
	add	%x24, %x24, %x22  #1924 pc 49140
	sw	%x19, 0(%x24)  #1924 pc 49144
	addi	%x20, %x3, 0  #1953 pc 49148
	addi	%x3, %x3, 88  #1953 pc 49152
	sw	%x10, 164(%x2)  #1953 pc 49156
	addi	%x24, %x0, 29504  #1953 trace_ray.2963 pc 49160
	addi	%x10, %x24, 0  #1953 pc 49164
	add	%x24, %x0, %x20  #1953 pc 49168
	sw	%x10, 0(%x24)  #1953 pc 49172
	addi	%x24, %x0, 80  #pc 49176
	add	%x24, %x24, %x20  #1953 pc 49180
	sw	%x5, 0(%x24)  #1953 pc 49184
	addi	%x24, %x0, 76  #pc 49188
	add	%x24, %x24, %x20  #1953 pc 49192
	sw	%x22, 0(%x24)  #1953 pc 49196
	addi	%x24, %x0, 72  #pc 49200
	add	%x24, %x24, %x20  #1953 pc 49204
	sw	%x12, 0(%x24)  #1953 pc 49208
	addi	%x24, %x0, 68  #pc 49212
	add	%x24, %x24, %x20  #1953 pc 49216
	sw	%x17, 0(%x24)  #1953 pc 49220
	addi	%x24, %x0, 64  #pc 49224
	add	%x24, %x24, %x20  #1953 pc 49228
	sw	%x23, 0(%x24)  #1953 pc 49232
	addi	%x24, %x0, 60  #pc 49236
	add	%x24, %x24, %x20  #1953 pc 49240
	sw	%x7, 0(%x24)  #1953 pc 49244
	addi	%x24, %x0, 56  #pc 49248
	add	%x24, %x24, %x20  #1953 pc 49252
	sw	%x18, 0(%x24)  #1953 pc 49256
	addi	%x24, %x0, 52  #pc 49260
	add	%x24, %x24, %x20  #1953 pc 49264
	sw	%x21, 0(%x24)  #1953 pc 49268
	addi	%x24, %x0, 48  #pc 49272
	add	%x24, %x24, %x20  #1953 pc 49276
	sw	%x6, 0(%x24)  #1953 pc 49280
	addi	%x24, %x0, 44  #pc 49284
	add	%x24, %x24, %x20  #1953 pc 49288
	sw	%x16, 0(%x24)  #1953 pc 49292
	addi	%x24, %x0, 40  #pc 49296
	add	%x24, %x24, %x20  #1953 pc 49300
	sw	%x13, 0(%x24)  #1953 pc 49304
	lw	%x10, 156(%x2)  #1953 pc 49308
	addi	%x24, %x0, 36  #pc 49312
	add	%x24, %x24, %x20  #1953 pc 49316
	sw	%x10, 0(%x24)  #1953 pc 49320
	lw	%x12, 24(%x2)  #1953 pc 49324
	addi	%x24, %x0, 32  #pc 49328
	add	%x24, %x24, %x20  #1953 pc 49332
	sw	%x12, 0(%x24)  #1953 pc 49336
	addi	%x24, %x0, 28  #pc 49340
	add	%x24, %x24, %x20  #1953 pc 49344
	sw	%x11, 0(%x24)  #1953 pc 49348
	addi	%x24, %x0, 24  #pc 49352
	add	%x24, %x24, %x20  #1953 pc 49356
	sw	%x15, 0(%x24)  #1953 pc 49360
	addi	%x24, %x0, 20  #pc 49364
	add	%x24, %x24, %x20  #1953 pc 49368
	sw	%x9, 0(%x24)  #1953 pc 49372
	addi	%x24, %x0, 16  #pc 49376
	add	%x24, %x24, %x20  #1953 pc 49380
	sw	%x14, 0(%x24)  #1953 pc 49384
	lw	%x11, 160(%x2)  #1953 pc 49388
	addi	%x24, %x0, 12  #pc 49392
	add	%x24, %x24, %x20  #1953 pc 49396
	sw	%x11, 0(%x24)  #1953 pc 49400
	lw	%x15, 28(%x2)  #1953 pc 49404
	addi	%x24, %x0, 8  #pc 49408
	add	%x24, %x24, %x20  #1953 pc 49412
	sw	%x15, 0(%x24)  #1953 pc 49416
	addi	%x24, %x0, 4  #pc 49420
	add	%x24, %x24, %x20  #1953 pc 49424
	sw	%x19, 0(%x24)  #1953 pc 49428
	addi	%x15, %x3, 0  #2046 pc 49432
	addi	%x3, %x3, 56  #2046 pc 49436
	addi	%x24, %x0, 31596  #2046 trace_diffuse_ray.2969 pc 49440
	addi	%x19, %x24, 0  #2046 pc 49444
	add	%x24, %x0, %x15  #2046 pc 49448
	sw	%x19, 0(%x24)  #2046 pc 49452
	addi	%x24, %x0, 48  #pc 49456
	add	%x24, %x24, %x15  #2046 pc 49460
	sw	%x5, 0(%x24)  #2046 pc 49464
	addi	%x24, %x0, 44  #pc 49468
	add	%x24, %x24, %x15  #2046 pc 49472
	sw	%x17, 0(%x24)  #2046 pc 49476
	addi	%x24, %x0, 40  #pc 49480
	add	%x24, %x24, %x15  #2046 pc 49484
	sw	%x7, 0(%x24)  #2046 pc 49488
	addi	%x24, %x0, 36  #pc 49492
	add	%x24, %x24, %x15  #2046 pc 49496
	sw	%x6, 0(%x24)  #2046 pc 49500
	addi	%x24, %x0, 32  #pc 49504
	add	%x24, %x24, %x15  #2046 pc 49508
	sw	%x16, 0(%x24)  #2046 pc 49512
	addi	%x24, %x0, 28  #pc 49516
	add	%x24, %x24, %x15  #2046 pc 49520
	sw	%x13, 0(%x24)  #2046 pc 49524
	addi	%x24, %x0, 24  #pc 49528
	add	%x24, %x24, %x15  #2046 pc 49532
	sw	%x12, 0(%x24)  #2046 pc 49536
	lw	%x5, 164(%x2)  #2046 pc 49540
	addi	%x24, %x0, 20  #pc 49544
	add	%x24, %x24, %x15  #2046 pc 49548
	sw	%x5, 0(%x24)  #2046 pc 49552
	addi	%x24, %x0, 16  #pc 49556
	add	%x24, %x24, %x15  #2046 pc 49560
	sw	%x9, 0(%x24)  #2046 pc 49564
	addi	%x24, %x0, 12  #pc 49568
	add	%x24, %x24, %x15  #2046 pc 49572
	sw	%x14, 0(%x24)  #2046 pc 49576
	addi	%x24, %x0, 8  #pc 49580
	add	%x24, %x24, %x15  #2046 pc 49584
	sw	%x11, 0(%x24)  #2046 pc 49588
	lw	%x5, 76(%x2)  #2046 pc 49592
	addi	%x24, %x0, 4  #pc 49596
	add	%x24, %x24, %x15  #2046 pc 49600
	sw	%x5, 0(%x24)  #2046 pc 49604
	addi	%x6, %x3, 0  #2065 pc 49608
	addi	%x3, %x3, 8  #2065 pc 49612
	addi	%x24, %x0, 32204  #2065 iter_trace_diffuse_rays.2972 pc 49616
	addi	%x7, %x24, 0  #2065 pc 49620
	add	%x24, %x0, %x6  #2065 pc 49624
	sw	%x7, 0(%x24)  #2065 pc 49628
	addi	%x24, %x0, 4  #pc 49632
	add	%x24, %x24, %x6  #2065 pc 49636
	sw	%x15, 0(%x24)  #2065 pc 49640
	addi	%x7, %x3, 0  #2081 pc 49644
	addi	%x3, %x3, 16  #2081 pc 49648
	addi	%x24, %x0, 32544  #2081 trace_diffuse_rays.2977 pc 49652
	addi	%x9, %x24, 0  #2081 pc 49656
	add	%x24, %x0, %x7  #2081 pc 49660
	sw	%x9, 0(%x24)  #2081 pc 49664
	addi	%x24, %x0, 8  #pc 49668
	add	%x24, %x24, %x7  #2081 pc 49672
	sw	%x18, 0(%x24)  #2081 pc 49676
	addi	%x24, %x0, 4  #pc 49680
	add	%x24, %x24, %x7  #2081 pc 49684
	sw	%x6, 0(%x24)  #2081 pc 49688
	addi	%x6, %x3, 0  #2091 pc 49692
	addi	%x3, %x3, 16  #2091 pc 49696
	addi	%x24, %x0, 32656  #2091 trace_diffuse_ray_80percent.2981 pc 49700
	addi	%x9, %x24, 0  #2091 pc 49704
	add	%x24, %x0, %x6  #2091 pc 49708
	sw	%x9, 0(%x24)  #2091 pc 49712
	addi	%x24, %x0, 8  #pc 49716
	add	%x24, %x24, %x6  #2091 pc 49720
	sw	%x7, 0(%x24)  #2091 pc 49724
	lw	%x9, 124(%x2)  #2091 pc 49728
	addi	%x24, %x0, 4  #pc 49732
	add	%x24, %x24, %x6  #2091 pc 49736
	sw	%x9, 0(%x24)  #2091 pc 49740
	addi	%x11, %x3, 0  #2117 pc 49744
	addi	%x3, %x3, 16  #2117 pc 49748
	addi	%x24, %x0, 33148  #2117 calc_diffuse_using_1point.2985 pc 49752
	addi	%x13, %x24, 0  #2117 pc 49756
	add	%x24, %x0, %x11  #2117 pc 49760
	sw	%x13, 0(%x24)  #2117 pc 49764
	addi	%x24, %x0, 12  #pc 49768
	add	%x24, %x24, %x11  #2117 pc 49772
	sw	%x6, 0(%x24)  #2117 pc 49776
	addi	%x24, %x0, 8  #pc 49780
	add	%x24, %x24, %x11  #2117 pc 49784
	sw	%x21, 0(%x24)  #2117 pc 49788
	addi	%x24, %x0, 4  #pc 49792
	add	%x24, %x24, %x11  #2117 pc 49796
	sw	%x5, 0(%x24)  #2117 pc 49800
	addi	%x6, %x3, 0  #2136 pc 49804
	addi	%x3, %x3, 16  #2136 pc 49808
	addi	%x24, %x0, 33536  #2136 calc_diffuse_using_5points.2988 pc 49812
	addi	%x13, %x24, 0  #2136 pc 49816
	add	%x24, %x0, %x6  #2136 pc 49820
	sw	%x13, 0(%x24)  #2136 pc 49824
	addi	%x24, %x0, 8  #pc 49828
	add	%x24, %x24, %x6  #2136 pc 49832
	sw	%x21, 0(%x24)  #2136 pc 49836
	addi	%x24, %x0, 4  #pc 49840
	add	%x24, %x24, %x6  #2136 pc 49844
	sw	%x5, 0(%x24)  #2136 pc 49848
	addi	%x13, %x3, 0  #2156 pc 49852
	addi	%x3, %x3, 8  #2156 pc 49856
	addi	%x24, %x0, 34184  #2156 do_without_neighbors.2994 pc 49860
	addi	%x14, %x24, 0  #2156 pc 49864
	add	%x24, %x0, %x13  #2156 pc 49868
	sw	%x14, 0(%x24)  #2156 pc 49872
	addi	%x24, %x0, 4  #pc 49876
	add	%x24, %x24, %x13  #2156 pc 49880
	sw	%x11, 0(%x24)  #2156 pc 49884
	addi	%x11, %x3, 0  #2171 pc 49888
	addi	%x3, %x3, 8  #2171 pc 49892
	addi	%x24, %x0, 34412  #2171 neighbors_exist.2997 pc 49896
	addi	%x14, %x24, 0  #2171 pc 49900
	add	%x24, %x0, %x11  #2171 pc 49904
	sw	%x14, 0(%x24)  #2171 pc 49908
	lw	%x14, 84(%x2)  #2171 pc 49912
	addi	%x24, %x0, 4  #pc 49916
	add	%x24, %x24, %x11  #2171 pc 49920
	sw	%x14, 0(%x24)  #2171 pc 49924
	addi	%x15, %x3, 0  #2208 pc 49928
	addi	%x3, %x3, 16  #2208 pc 49932
	addi	%x24, %x0, 35044  #2208 try_exploit_neighbors.3010 pc 49936
	addi	%x17, %x24, 0  #2208 pc 49940
	add	%x24, %x0, %x15  #2208 pc 49944
	sw	%x17, 0(%x24)  #2208 pc 49948
	addi	%x24, %x0, 8  #pc 49952
	add	%x24, %x24, %x15  #2208 pc 49956
	sw	%x13, 0(%x24)  #2208 pc 49960
	addi	%x24, %x0, 4  #pc 49964
	add	%x24, %x24, %x15  #2208 pc 49968
	sw	%x6, 0(%x24)  #2208 pc 49972
	addi	%x6, %x3, 0  #2235 pc 49976
	addi	%x3, %x3, 8  #2235 pc 49980
	addi	%x24, %x0, 35440  #2235 write_ppm_header.3017 pc 49984
	addi	%x17, %x24, 0  #2235 pc 49988
	add	%x24, %x0, %x6  #2235 pc 49992
	sw	%x17, 0(%x24)  #2235 pc 49996
	addi	%x24, %x0, 4  #pc 50000
	add	%x24, %x24, %x6  #2235 pc 50004
	sw	%x14, 0(%x24)  #2235 pc 50008
	addi	%x17, %x3, 0  #2261 pc 50012
	addi	%x3, %x3, 8  #2261 pc 50016
	addi	%x24, %x0, 35864  #2261 write_rgb.3023 pc 50020
	addi	%x18, %x24, 0  #2261 pc 50024
	add	%x24, %x0, %x17  #2261 pc 50028
	sw	%x18, 0(%x24)  #2261 pc 50032
	addi	%x24, %x0, 4  #pc 50036
	add	%x24, %x24, %x17  #2261 pc 50040
	sw	%x21, 0(%x24)  #2261 pc 50044
	addi	%x18, %x3, 0  #2284 pc 50048
	addi	%x3, %x3, 16  #2284 pc 50052
	addi	%x24, %x0, 36148  #2284 pretrace_diffuse_rays.3025 pc 50056
	addi	%x19, %x24, 0  #2284 pc 50060
	add	%x24, %x0, %x18  #2284 pc 50064
	sw	%x19, 0(%x24)  #2284 pc 50068
	addi	%x24, %x0, 12  #pc 50072
	add	%x24, %x24, %x18  #2284 pc 50076
	sw	%x7, 0(%x24)  #2284 pc 50080
	addi	%x24, %x0, 8  #pc 50084
	add	%x24, %x24, %x18  #2284 pc 50088
	sw	%x9, 0(%x24)  #2284 pc 50092
	addi	%x24, %x0, 4  #pc 50096
	add	%x24, %x24, %x18  #2284 pc 50100
	sw	%x5, 0(%x24)  #2284 pc 50104
	addi	%x5, %x3, 0  #2314 pc 50108
	addi	%x3, %x3, 40  #2314 pc 50112
	addi	%x24, %x0, 36656  #2314 pretrace_pixels.3028 pc 50116
	addi	%x7, %x24, 0  #2314 pc 50120
	add	%x24, %x0, %x5  #2314 pc 50124
	sw	%x7, 0(%x24)  #2314 pc 50128
	lw	%x7, 20(%x2)  #2314 pc 50132
	addi	%x24, %x0, 36  #pc 50136
	add	%x24, %x24, %x5  #2314 pc 50140
	sw	%x7, 0(%x24)  #2314 pc 50144
	addi	%x24, %x0, 32  #pc 50148
	add	%x24, %x24, %x5  #2314 pc 50152
	sw	%x20, 0(%x24)  #2314 pc 50156
	addi	%x24, %x0, 28  #pc 50160
	add	%x24, %x24, %x5  #2314 pc 50164
	sw	%x23, 0(%x24)  #2314 pc 50168
	lw	%x7, 104(%x2)  #2314 pc 50172
	addi	%x24, %x0, 24  #pc 50176
	add	%x24, %x24, %x5  #2314 pc 50180
	sw	%x7, 0(%x24)  #2314 pc 50184
	lw	%x7, 92(%x2)  #2314 pc 50188
	addi	%x24, %x0, 20  #pc 50192
	add	%x24, %x24, %x5  #2314 pc 50196
	sw	%x7, 0(%x24)  #2314 pc 50200
	addi	%x24, %x0, 16  #pc 50204
	add	%x24, %x24, %x5  #2314 pc 50208
	sw	%x21, 0(%x24)  #2314 pc 50212
	lw	%x19, 116(%x2)  #2314 pc 50216
	addi	%x24, %x0, 12  #pc 50220
	add	%x24, %x24, %x5  #2314 pc 50224
	sw	%x19, 0(%x24)  #2314 pc 50228
	addi	%x24, %x0, 8  #pc 50232
	add	%x24, %x24, %x5  #2314 pc 50236
	sw	%x18, 0(%x24)  #2314 pc 50240
	lw	%x18, 88(%x2)  #2314 pc 50244
	addi	%x24, %x0, 4  #pc 50248
	add	%x24, %x24, %x5  #2314 pc 50252
	sw	%x18, 0(%x24)  #2314 pc 50256
	addi	%x19, %x3, 0  #2339 pc 50260
	addi	%x3, %x3, 32  #2339 pc 50264
	addi	%x24, %x0, 37468  #2339 pretrace_line.3035 pc 50268
	addi	%x20, %x24, 0  #2339 pc 50272
	add	%x24, %x0, %x19  #2339 pc 50276
	sw	%x20, 0(%x24)  #2339 pc 50280
	lw	%x20, 112(%x2)  #2339 pc 50284
	addi	%x24, %x0, 24  #pc 50288
	add	%x24, %x24, %x19  #2339 pc 50292
	sw	%x20, 0(%x24)  #2339 pc 50296
	lw	%x20, 108(%x2)  #2339 pc 50300
	addi	%x24, %x0, 20  #pc 50304
	add	%x24, %x24, %x19  #2339 pc 50308
	sw	%x20, 0(%x24)  #2339 pc 50312
	addi	%x24, %x0, 16  #pc 50316
	add	%x24, %x24, %x19  #2339 pc 50320
	sw	%x7, 0(%x24)  #2339 pc 50324
	addi	%x24, %x0, 12  #pc 50328
	add	%x24, %x24, %x19  #2339 pc 50332
	sw	%x5, 0(%x24)  #2339 pc 50336
	addi	%x24, %x0, 8  #pc 50340
	add	%x24, %x24, %x19  #2339 pc 50344
	sw	%x14, 0(%x24)  #2339 pc 50348
	addi	%x24, %x0, 4  #pc 50352
	add	%x24, %x24, %x19  #2339 pc 50356
	sw	%x18, 0(%x24)  #2339 pc 50360
	addi	%x5, %x3, 0  #2355 pc 50364
	addi	%x3, %x3, 32  #2355 pc 50368
	addi	%x24, %x0, 37780  #2355 scan_pixel.3039 pc 50372
	addi	%x20, %x24, 0  #2355 pc 50376
	add	%x24, %x0, %x5  #2355 pc 50380
	sw	%x20, 0(%x24)  #2355 pc 50384
	addi	%x24, %x0, 24  #pc 50388
	add	%x24, %x24, %x5  #2355 pc 50392
	sw	%x17, 0(%x24)  #2355 pc 50396
	addi	%x24, %x0, 20  #pc 50400
	add	%x24, %x24, %x5  #2355 pc 50404
	sw	%x15, 0(%x24)  #2355 pc 50408
	addi	%x24, %x0, 16  #pc 50412
	add	%x24, %x24, %x5  #2355 pc 50416
	sw	%x21, 0(%x24)  #2355 pc 50420
	addi	%x24, %x0, 12  #pc 50424
	add	%x24, %x24, %x5  #2355 pc 50428
	sw	%x11, 0(%x24)  #2355 pc 50432
	addi	%x24, %x0, 8  #pc 50436
	add	%x24, %x24, %x5  #2355 pc 50440
	sw	%x14, 0(%x24)  #2355 pc 50444
	addi	%x24, %x0, 4  #pc 50448
	add	%x24, %x24, %x5  #2355 pc 50452
	sw	%x13, 0(%x24)  #2355 pc 50456
	addi	%x11, %x3, 0  #2375 pc 50460
	addi	%x3, %x3, 16  #2375 pc 50464
	addi	%x24, %x0, 38252  #2375 scan_line.3046 pc 50468
	addi	%x13, %x24, 0  #2375 pc 50472
	add	%x24, %x0, %x11  #2375 pc 50476
	sw	%x13, 0(%x24)  #2375 pc 50480
	addi	%x24, %x0, 12  #pc 50484
	add	%x24, %x24, %x11  #2375 pc 50488
	sw	%x5, 0(%x24)  #2375 pc 50492
	addi	%x24, %x0, 8  #pc 50496
	add	%x24, %x24, %x11  #2375 pc 50500
	sw	%x19, 0(%x24)  #2375 pc 50504
	addi	%x24, %x0, 4  #pc 50508
	add	%x24, %x24, %x11  #2375 pc 50512
	sw	%x14, 0(%x24)  #2375 pc 50516
	addi	%x5, %x3, 0  #2427 pc 50520
	addi	%x3, %x3, 8  #2427 pc 50524
	addi	%x24, %x0, 39380  #2427 create_pixelline.3060 pc 50528
	addi	%x13, %x24, 0  #2427 pc 50532
	add	%x24, %x0, %x5  #2427 pc 50536
	sw	%x13, 0(%x24)  #2427 pc 50540
	addi	%x24, %x0, 4  #pc 50544
	add	%x24, %x24, %x5  #2427 pc 50548
	sw	%x14, 0(%x24)  #2427 pc 50552
	addi	%x13, %x3, 0  #2455 pc 50556
	addi	%x3, %x3, 8  #2455 pc 50560
	addi	%x24, %x0, 39660  #2455 calc_dirvec.3067 pc 50564
	addi	%x15, %x24, 0  #2455 pc 50568
	add	%x24, %x0, %x13  #2455 pc 50572
	sw	%x15, 0(%x24)  #2455 pc 50576
	addi	%x24, %x0, 4  #pc 50580
	add	%x24, %x24, %x13  #2455 pc 50584
	sw	%x9, 0(%x24)  #2455 pc 50588
	addi	%x15, %x3, 0  #2476 pc 50592
	addi	%x3, %x3, 8  #2476 pc 50596
	addi	%x24, %x0, 40736  #2476 calc_dirvecs.3075 pc 50600
	addi	%x17, %x24, 0  #2476 pc 50604
	add	%x24, %x0, %x15  #2476 pc 50608
	sw	%x17, 0(%x24)  #2476 pc 50612
	addi	%x24, %x0, 4  #pc 50616
	add	%x24, %x24, %x15  #2476 pc 50620
	sw	%x13, 0(%x24)  #2476 pc 50624
	addi	%x13, %x3, 0  #2490 pc 50628
	addi	%x3, %x3, 8  #2490 pc 50632
	addi	%x24, %x0, 41064  #2490 calc_dirvec_rows.3080 pc 50636
	addi	%x17, %x24, 0  #2490 pc 50640
	add	%x24, %x0, %x13  #2490 pc 50644
	sw	%x17, 0(%x24)  #2490 pc 50648
	addi	%x24, %x0, 4  #pc 50652
	add	%x24, %x24, %x13  #2490 pc 50656
	sw	%x15, 0(%x24)  #2490 pc 50660
	addi	%x15, %x3, 0  #2503 pc 50664
	addi	%x3, %x3, 8  #2503 pc 50668
	addi	%x24, %x0, 41272  #2503 create_dirvec.3084 pc 50672
	addi	%x17, %x24, 0  #2503 pc 50676
	add	%x24, %x0, %x15  #2503 pc 50680
	sw	%x17, 0(%x24)  #2503 pc 50684
	lw	%x17, 8(%x2)  #2503 pc 50688
	addi	%x24, %x0, 4  #pc 50692
	add	%x24, %x24, %x15  #2503 pc 50696
	sw	%x17, 0(%x24)  #2503 pc 50700
	addi	%x20, %x3, 0  #2509 pc 50704
	addi	%x3, %x3, 8  #2509 pc 50708
	addi	%x24, %x0, 41408  #2509 create_dirvec_elements.3086 pc 50712
	addi	%x21, %x24, 0  #2509 pc 50716
	add	%x24, %x0, %x20  #2509 pc 50720
	sw	%x21, 0(%x24)  #2509 pc 50724
	addi	%x24, %x0, 4  #pc 50728
	add	%x24, %x24, %x20  #2509 pc 50732
	sw	%x15, 0(%x24)  #2509 pc 50736
	addi	%x21, %x3, 0  #2516 pc 50740
	addi	%x3, %x3, 16  #2516 pc 50744
	addi	%x24, %x0, 41540  #2516 create_dirvecs.3089 pc 50748
	addi	%x22, %x24, 0  #2516 pc 50752
	add	%x24, %x0, %x21  #2516 pc 50756
	sw	%x22, 0(%x24)  #2516 pc 50760
	addi	%x24, %x0, 12  #pc 50764
	add	%x24, %x24, %x21  #2516 pc 50768
	sw	%x9, 0(%x24)  #2516 pc 50772
	addi	%x24, %x0, 8  #pc 50776
	add	%x24, %x24, %x21  #2516 pc 50780
	sw	%x20, 0(%x24)  #2516 pc 50784
	addi	%x24, %x0, 4  #pc 50788
	add	%x24, %x24, %x21  #2516 pc 50792
	sw	%x15, 0(%x24)  #2516 pc 50796
	addi	%x20, %x3, 0  #2528 pc 50800
	addi	%x3, %x3, 8  #2528 pc 50804
	addi	%x24, %x0, 41784  #2528 init_dirvec_constants.3091 pc 50808
	addi	%x22, %x24, 0  #2528 pc 50812
	add	%x24, %x0, %x20  #2528 pc 50816
	sw	%x22, 0(%x24)  #2528 pc 50820
	lw	%x22, 152(%x2)  #2528 pc 50824
	addi	%x24, %x0, 4  #pc 50828
	add	%x24, %x24, %x20  #2528 pc 50832
	sw	%x22, 0(%x24)  #2528 pc 50836
	addi	%x23, %x3, 0  #2535 pc 50840
	addi	%x3, %x3, 16  #2535 pc 50844
	sw	%x5, 168(%x2)  #2535 pc 50848
	addi	%x24, %x0, 41908  #2535 init_vecset_constants.3094 pc 50852
	addi	%x5, %x24, 0  #2535 pc 50856
	add	%x24, %x0, %x23  #2535 pc 50860
	sw	%x5, 0(%x24)  #2535 pc 50864
	addi	%x24, %x0, 8  #pc 50868
	add	%x24, %x24, %x23  #2535 pc 50872
	sw	%x20, 0(%x24)  #2535 pc 50876
	addi	%x24, %x0, 4  #pc 50880
	add	%x24, %x24, %x23  #2535 pc 50884
	sw	%x9, 0(%x24)  #2535 pc 50888
	addi	%x5, %x3, 0  #2542 pc 50892
	addi	%x3, %x3, 16  #2542 pc 50896
	addi	%x24, %x0, 42048  #2542 init_dirvecs.3096 pc 50900
	addi	%x9, %x24, 0  #2542 pc 50904
	add	%x24, %x0, %x5  #2542 pc 50908
	sw	%x9, 0(%x24)  #2542 pc 50912
	addi	%x24, %x0, 12  #pc 50916
	add	%x24, %x24, %x5  #2542 pc 50920
	sw	%x23, 0(%x24)  #2542 pc 50924
	addi	%x24, %x0, 8  #pc 50928
	add	%x24, %x24, %x5  #2542 pc 50932
	sw	%x21, 0(%x24)  #2542 pc 50936
	addi	%x24, %x0, 4  #pc 50940
	add	%x24, %x24, %x5  #2542 pc 50944
	sw	%x13, 0(%x24)  #2542 pc 50948
	addi	%x9, %x3, 0  #2553 pc 50952
	addi	%x3, %x3, 16  #2553 pc 50956
	addi	%x24, %x0, 42196  #2553 add_reflection.3098 pc 50960
	addi	%x13, %x24, 0  #2553 pc 50964
	add	%x24, %x0, %x9  #2553 pc 50968
	sw	%x13, 0(%x24)  #2553 pc 50972
	addi	%x24, %x0, 12  #pc 50976
	add	%x24, %x24, %x9  #2553 pc 50980
	sw	%x22, 0(%x24)  #2553 pc 50984
	lw	%x13, 144(%x2)  #2553 pc 50988
	addi	%x24, %x0, 8  #pc 50992
	add	%x24, %x24, %x9  #2553 pc 50996
	sw	%x13, 0(%x24)  #2553 pc 51000
	addi	%x24, %x0, 4  #pc 51004
	add	%x24, %x24, %x9  #2553 pc 51008
	sw	%x15, 0(%x24)  #2553 pc 51012
	addi	%x13, %x3, 0  #2562 pc 51016
	addi	%x3, %x3, 16  #2562 pc 51020
	addi	%x24, %x0, 42464  #2562 setup_rect_reflection.3105 pc 51024
	addi	%x15, %x24, 0  #2562 pc 51028
	add	%x24, %x0, %x13  #2562 pc 51032
	sw	%x15, 0(%x24)  #2562 pc 51036
	addi	%x24, %x0, 12  #pc 51040
	add	%x24, %x24, %x13  #2562 pc 51044
	sw	%x10, 0(%x24)  #2562 pc 51048
	addi	%x24, %x0, 8  #pc 51052
	add	%x24, %x24, %x13  #2562 pc 51056
	sw	%x12, 0(%x24)  #2562 pc 51060
	addi	%x24, %x0, 4  #pc 51064
	add	%x24, %x24, %x13  #2562 pc 51068
	sw	%x9, 0(%x24)  #2562 pc 51072
	addi	%x15, %x3, 0  #2576 pc 51076
	addi	%x3, %x3, 16  #2576 pc 51080
	addi	%x24, %x0, 43024  #2576 setup_surface_reflection.3108 pc 51084
	addi	%x20, %x24, 0  #2576 pc 51088
	add	%x24, %x0, %x15  #2576 pc 51092
	sw	%x20, 0(%x24)  #2576 pc 51096
	addi	%x24, %x0, 12  #pc 51100
	add	%x24, %x24, %x15  #2576 pc 51104
	sw	%x10, 0(%x24)  #2576 pc 51108
	addi	%x24, %x0, 8  #pc 51112
	add	%x24, %x24, %x15  #2576 pc 51116
	sw	%x12, 0(%x24)  #2576 pc 51120
	addi	%x24, %x0, 4  #pc 51124
	add	%x24, %x24, %x15  #2576 pc 51128
	sw	%x9, 0(%x24)  #2576 pc 51132
	addi	%x9, %x3, 0  #2591 pc 51136
	addi	%x3, %x3, 16  #2591 pc 51140
	addi	%x24, %x0, 43540  #2591 setup_reflections.3111 pc 51144
	addi	%x10, %x24, 0  #2591 pc 51148
	add	%x24, %x0, %x9  #2591 pc 51152
	sw	%x10, 0(%x24)  #2591 pc 51156
	addi	%x24, %x0, 12  #pc 51160
	add	%x24, %x24, %x9  #2591 pc 51164
	sw	%x15, 0(%x24)  #2591 pc 51168
	addi	%x24, %x0, 8  #pc 51172
	add	%x24, %x24, %x9  #2591 pc 51176
	sw	%x13, 0(%x24)  #2591 pc 51180
	addi	%x24, %x0, 4  #pc 51184
	add	%x24, %x24, %x9  #2591 pc 51188
	sw	%x16, 0(%x24)  #2591 pc 51192
	addi	%x10, %x3, 0  #2613 pc 51196
	addi	%x3, %x3, 64  #2613 pc 51200
	addi	%x24, %x0, 43856  #2613 rt.3113 pc 51204
	addi	%x13, %x24, 0  #2613 pc 51208
	add	%x24, %x0, %x10  #2613 pc 51212
	sw	%x13, 0(%x24)  #2613 pc 51216
	addi	%x24, %x0, 56  #pc 51220
	add	%x24, %x24, %x10  #2613 pc 51224
	sw	%x6, 0(%x24)  #2613 pc 51228
	addi	%x24, %x0, 52  #pc 51232
	add	%x24, %x24, %x10  #2613 pc 51236
	sw	%x9, 0(%x24)  #2613 pc 51240
	addi	%x24, %x0, 48  #pc 51244
	add	%x24, %x24, %x10  #2613 pc 51248
	sw	%x22, 0(%x24)  #2613 pc 51252
	addi	%x24, %x0, 44  #pc 51256
	add	%x24, %x24, %x10  #2613 pc 51260
	sw	%x7, 0(%x24)  #2613 pc 51264
	addi	%x24, %x0, 40  #pc 51268
	add	%x24, %x24, %x10  #2613 pc 51272
	sw	%x11, 0(%x24)  #2613 pc 51276
	lw	%x6, 148(%x2)  #2613 pc 51280
	addi	%x24, %x0, 36  #pc 51284
	add	%x24, %x24, %x10  #2613 pc 51288
	sw	%x6, 0(%x24)  #2613 pc 51292
	addi	%x24, %x0, 32  #pc 51296
	add	%x24, %x24, %x10  #2613 pc 51300
	sw	%x19, 0(%x24)  #2613 pc 51304
	addi	%x24, %x0, 28  #pc 51308
	add	%x24, %x24, %x10  #2613 pc 51312
	sw	%x17, 0(%x24)  #2613 pc 51316
	lw	%x6, 136(%x2)  #2613 pc 51320
	addi	%x24, %x0, 24  #pc 51324
	add	%x24, %x24, %x10  #2613 pc 51328
	sw	%x6, 0(%x24)  #2613 pc 51332
	addi	%x24, %x0, 20  #pc 51336
	add	%x24, %x24, %x10  #2613 pc 51340
	sw	%x12, 0(%x24)  #2613 pc 51344
	addi	%x24, %x0, 16  #pc 51348
	add	%x24, %x24, %x10  #2613 pc 51352
	sw	%x5, 0(%x24)  #2613 pc 51356
	addi	%x24, %x0, 12  #pc 51360
	add	%x24, %x24, %x10  #2613 pc 51364
	sw	%x14, 0(%x24)  #2613 pc 51368
	addi	%x24, %x0, 8  #pc 51372
	add	%x24, %x24, %x10  #2613 pc 51376
	sw	%x18, 0(%x24)  #2613 pc 51380
	lw	%x5, 168(%x2)  #2613 pc 51384
	addi	%x24, %x0, 4  #pc 51388
	add	%x24, %x24, %x10  #2613 pc 51392
	sw	%x5, 0(%x24)  #2613 pc 51396
	addi	%x5, %x0, 8  #0 pc 51400
	addi	%x7, %x0, 3  #0 pc 51404
	addi	%x6, %x5, 0  #0 pc 51412
	addi	%x22, %x10, 0  #0 pc 51420
	sw	%x1, 172(%x2)  #2634 pc 51424
	lw	%x23, 0(%x22)  #2634 pc 51428
	addi	%x2, %x2, 176  #2634 pc 51432
	jalr	%x1, %x23, 0  #2634 pc 51436
	addi	%x2, %x2, -176  #2634 pc 51440
	lw	%x1, 172(%x2)  #2634 pc 51444
	addi	%x2, %x2, 112
