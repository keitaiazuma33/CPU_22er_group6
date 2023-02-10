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
	mv	%f2, l.6293  #0 pc 4
	feq	%f31, %f0, %f2  #1 pc 8
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
	mv	%f2, l.6293  #0 pc 48
	fle	%f31, %f0, %f2  #3 pc 52
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
	mv	%f2, l.6293  #0 pc 92
	fle	%f31, %f2, %f0  #5 pc 96
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
	mv	%f2, l.6297  #0 pc 160
	fmul	%f0, %f2, %f0  #11 pc 164
	ret #pc 168
	nop #pc 172
fless.2540:  #pc 172
	fle	%f31, %f2, %f0  #13 pc 176
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
	fmul	%f2, %f0, %f0  #16 pc 216
	fmul	%f4, %f0, %f2  #17 pc 220
	fmul	%f6, %f4, %f2  #18 pc 224
	fmul	%f2, %f6, %f2  #19 pc 228
	mv	%f8, l.6299  #0 pc 232
	fmul	%f4, %f8, %f4  #20 pc 236
	fsub	%f0, %f0, %f4  #20 pc 240
	mv	%f4, l.6301  #0 pc 244
	fmul	%f4, %f4, %f6  #20 pc 248
	fadd	%f0, %f0, %f4  #20 pc 252
	mv	%f4, l.6303  #0 pc 256
	fmul	%f2, %f4, %f2  #20 pc 260
	fsub	%f0, %f0, %f2  #20 pc 264
	ret #pc 268
	nop #pc 272
cos.2545:  #pc 272
	fmul	%f0, %f0, %f0  #24 pc 276
	fmul	%f2, %f0, %f0  #25 pc 280
	fmul	%f4, %f2, %f0  #26 pc 284
	mv	%f6, l.6305  #0 pc 288
	mv	%f8, l.6297  #0 pc 292
	fmul	%f0, %f8, %f0  #27 pc 296
	fsub	%f0, %f6, %f0  #27 pc 300
	mv	%f6, l.6308  #0 pc 304
	fmul	%f2, %f6, %f2  #27 pc 308
	fadd	%f0, %f0, %f2  #27 pc 312
	mv	%f2, l.6310  #0 pc 316
	fmul	%f2, %f2, %f4  #27 pc 320
	fsub	%f0, %f0, %f2  #27 pc 324
	ret #pc 328
	nop #pc 332
atan.2547:  #pc 332
	fmul	%f2, %f0, %f0  #31 pc 336
	fmul	%f4, %f0, %f2  #32 pc 340
	fmul	%f6, %f4, %f2  #33 pc 344
	fmul	%f8, %f6, %f2  #34 pc 348
	fmul	%f10, %f8, %f2  #35 pc 352
	fmul	%f2, %f10, %f2  #36 pc 356
	mv	%f12, l.6312  #0 pc 360
	fmul	%f4, %f12, %f4  #37 pc 364
	fsub	%f0, %f0, %f4  #37 pc 368
	mv	%f4, l.6314  #0 pc 372
	fmul	%f4, %f4, %f6  #37 pc 376
	fadd	%f0, %f0, %f4  #37 pc 380
	mv	%f4, l.6316  #0 pc 384
	fmul	%f4, %f4, %f8  #37 pc 388
	fsub	%f0, %f0, %f4  #37 pc 392
	mv	%f4, l.6318  #0 pc 396
	fmul	%f4, %f4, %f10  #37 pc 400
	fadd	%f0, %f0, %f4  #37 pc 404
	mv	%f4, l.6320  #0 pc 408
	fmul	%f2, %f4, %f2  #37 pc 412
	fsub	%f0, %f0, %f2  #37 pc 416
	ret #pc 420
	nop #pc 424
floor.2549:  #pc 424
	mv	%f2, l.6293  #0 pc 428
	fle	%f31, %f2, %f0  #41 pc 432
	bge	%f30, %f31, 12  #41 pc 436
	j	fble_else.9181 #pc 440
	nop #pc 444
	ftoi	%x5, %f0  #42 pc 448
	itof	%f0, %x5  #42 pc 452
	ret #pc 456
	nop #pc 460
fble_else.9181: #pc 460
	mv	%f2, l.6305  #0 pc 464
	fsub	%f0, %f0, %f2  #44 pc 468
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
	mv	%x5, %x9  #58 pc 528
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
	mv	%x7, %x10 #pc 588
	j	mul_abs.2557  #63 pc 592
	nop #pc 596
mul.2562:  #pc 596
	bge	%x5, %x0, 12  #67 pc 600
	j	bge_else.9184 #pc 604
	nop #pc 608
	mv	%x7, %x5  #67 pc 612
	j	bge_cont.9185 #pc 616
	nop #pc 620
bge_else.9184: #pc 620
	sub	%x7, %x0, %x5  #67 pc 624
bge_cont.9185: #pc 624
	bge	%x6, %x0, 12  #68 pc 628
	j	bge_else.9186 #pc 632
	nop #pc 636
	mv	%x9, %x6  #68 pc 640
	j	bge_cont.9187 #pc 644
	nop #pc 648
bge_else.9186: #pc 648
	sub	%x9, %x0, %x6  #68 pc 652
bge_cont.9187: #pc 652
	addi	%x10, %x0, 30  #0 pc 656
	addi	%x11, %x0, 0  #0 pc 660
	sw	%x6, 0(%x2)  #69 pc 664
	sw	%x5, 4(%x2)  #69 pc 668
	mv	%x6, %x9 #pc 672
	mv	%x5, %x7 #pc 676
	mv	%x9, %x11 #pc 680
	mv	%x7, %x10 #pc 684
	sw	%x1, 12(%x2)  #69 pc 688
	addi	%x2, %x2, 16  #69 pc 692
	jal	%x1, mul_abs.2557  #69 pc 696
	addi	%x2, %x2, -16  #69 pc 700
	lw	%x1, 12(%x2) #69 pc 704
	lw	%x6, 4(%x2)  #70 pc 708
	srli	%x6, %x6, 31  #70 pc 712
	lw	%x7, 0(%x2)  #70 pc 716
	srli	%x7, %x7, 31  #70 pc 720
	beq	%x6, %x7, 12  #70 pc 724
	j	be_else.9188 #pc 728
	nop #pc 732
	ret #pc 736
	nop #pc 740
be_else.9188: #pc 740
	sub	%x5, %x0, %x5  #73 pc 744
	ret #pc 748
	nop #pc 752
div_abs.2565:  #pc 752
	addi	%x24, %x0, -1  #pc 756
	beq	%x7, %x24, 12  #77 pc 760
	j	be_else.9189 #pc 764
	nop #pc 768
	mv	%x5, %x9  #78 pc 772
	ret #pc 776
	nop #pc 780
be_else.9189: #pc 780
	srl	%x10, %x5, %x7  #80 pc 784
	bge	%x10, %x6, 12  #80 pc 788
	j	ble_else.9190 #pc 792
	nop #pc 796
	sll	%x10, %x6, %x7  #81 pc 800
	sub	%x5, %x5, %x10  #81 pc 804
	addi	%x10, %x7, -1  #81 pc 808
	addi	%x11, %x0, 1  #0 pc 812
	sll	%x7, %x11, %x7  #81 pc 816
	add	%x9, %x9, %x7  #81 pc 820
	mv	%x7, %x10 #pc 824
	j	div_abs.2565  #81 pc 828
	nop #pc 832
ble_else.9190: #pc 832
	addi	%x7, %x7, -1  #83 pc 836
	j	div_abs.2565  #83 pc 840
	nop #pc 844
div.2570:  #pc 844
	bge	%x5, %x0, 12  #87 pc 848
	j	bge_else.9191 #pc 852
	nop #pc 856
	mv	%x7, %x5  #87 pc 860
	j	bge_cont.9192 #pc 864
	nop #pc 868
bge_else.9191: #pc 868
	sub	%x7, %x0, %x5  #87 pc 872
bge_cont.9192: #pc 872
	bge	%x6, %x0, 12  #88 pc 876
	j	bge_else.9193 #pc 880
	nop #pc 884
	mv	%x9, %x6  #88 pc 888
	j	bge_cont.9194 #pc 892
	nop #pc 896
bge_else.9193: #pc 896
	sub	%x9, %x0, %x6  #88 pc 900
bge_cont.9194: #pc 900
	addi	%x10, %x0, 30  #0 pc 904
	addi	%x11, %x0, 0  #0 pc 908
	sw	%x6, 0(%x2)  #89 pc 912
	sw	%x5, 4(%x2)  #89 pc 916
	mv	%x6, %x9 #pc 920
	mv	%x5, %x7 #pc 924
	mv	%x9, %x11 #pc 928
	mv	%x7, %x10 #pc 932
	sw	%x1, 12(%x2)  #89 pc 936
	addi	%x2, %x2, 16  #89 pc 940
	jal	%x1, div_abs.2565  #89 pc 944
	addi	%x2, %x2, -16  #89 pc 948
	lw	%x1, 12(%x2) #89 pc 952
	lw	%x6, 4(%x2)  #90 pc 956
	srli	%x6, %x6, 31  #90 pc 960
	lw	%x7, 0(%x2)  #90 pc 964
	srli	%x7, %x7, 31  #90 pc 968
	beq	%x6, %x7, 12  #90 pc 972
	j	be_else.9195 #pc 976
	nop #pc 980
	ret #pc 984
	nop #pc 988
be_else.9195: #pc 988
	sub	%x5, %x0, %x5  #93 pc 992
	ret #pc 996
	nop #pc 1000
print_char.2573:  #pc 1000
	out	%x5  #96 pc 1004
	ret #pc 1008
	nop #pc 1012
print_int.2575:  #pc 1012
	bge	%x5, %x0, 12  #100 pc 1016
	j	bge_else.9197 #pc 1020
	nop #pc 1024
	addi	%x24, %x0, 10  #pc 1028
	bge	%x5, %x24, 12  #104 pc 1032
	j	bge_else.9198 #pc 1036
	nop #pc 1040
	addi	%x6, %x0, 10  #0 pc 1044
	sw	%x5, 0(%x2)  #107 pc 1048
	sw	%x1, 4(%x2)  #107 pc 1052
	addi	%x2, %x2, 8  #107 pc 1056
	jal	%x1, div.2570  #107 pc 1060
	addi	%x2, %x2, -8  #107 pc 1064
	lw	%x1, 4(%x2) #107 pc 1068
	sw	%x5, 4(%x2)  #108 pc 1072
	sw	%x1, 12(%x2)  #108 pc 1076
	addi	%x2, %x2, 16  #108 pc 1080
	jal	%x1, print_int.2575  #108 pc 1084
	addi	%x2, %x2, -16  #108 pc 1088
	lw	%x1, 12(%x2) #108 pc 1092
	addi	%x6, %x0, 10  #0 pc 1096
	lw	%x5, 4(%x2)  #109 pc 1100
	sw	%x1, 12(%x2)  #109 pc 1104
	addi	%x2, %x2, 16  #109 pc 1108
	jal	%x1, mul.2562  #109 pc 1112
	addi	%x2, %x2, -16  #109 pc 1116
	lw	%x1, 12(%x2) #109 pc 1120
	lw	%x6, 0(%x2)  #109 pc 1124
	sub	%x5, %x6, %x5  #109 pc 1128
	addi	%x5, %x5, 48  #109 pc 1132
	out	%x5  #109 pc 1136
	ret #pc 1140
	nop #pc 1144
bge_else.9198: #pc 1144
	addi	%x5, %x5, 48  #105 pc 1148
	out	%x5  #105 pc 1152
	ret #pc 1156
	nop #pc 1160
bge_else.9197: #pc 1160
	sub	%x5, %x0, %x5  #102 pc 1164
	j	print_int.2575  #102 pc 1168
	nop #pc 1172
read_int_sub.2577:  #pc 1172
	in	%x7  #113 pc 1176
	addi	%x24, %x0, 48  #pc 1180
	bge	%x7, %x24, 12  #114 pc 1184
	j	bge_else.9201 #pc 1188
	nop #pc 1192
	addi	%x24, %x0, 57  #pc 1196
	bge	%x24, %x7, 12  #115 pc 1200
	j	ble_else.9202 #pc 1204
	nop #pc 1208
	addi	%x9, %x0, 10  #0 pc 1212
	sw	%x6, 0(%x2)  #116 pc 1216
	sw	%x7, 4(%x2)  #116 pc 1220
	mv	%x6, %x9 #pc 1224
	sw	%x1, 12(%x2)  #116 pc 1228
	addi	%x2, %x2, 16  #116 pc 1232
	jal	%x1, mul.2562  #116 pc 1236
	addi	%x2, %x2, -16  #116 pc 1240
	lw	%x1, 12(%x2) #116 pc 1244
	lw	%x6, 4(%x2)  #116 pc 1248
	addi	%x6, %x6, -48  #116 pc 1252
	add	%x5, %x5, %x6  #116 pc 1256
	lw	%x6, 0(%x2)  #116 pc 1260
	addi	%x6, %x6, 1  #116 pc 1264
	j	read_int_sub.2577  #116 pc 1268
	nop #pc 1272
ble_else.9202: #pc 1272
	addi	%x24, %x0, 45  #pc 1276
	beq	%x7, %x24, 12  #118 pc 1280
	j	be_else.9203 #pc 1284
	nop #pc 1288
	sw	%x1, 12(%x2)  #119 pc 1292
	addi	%x2, %x2, 16  #119 pc 1296
	jal	%x1, read_int_sub.2577  #119 pc 1300
	addi	%x2, %x2, -16  #119 pc 1304
	lw	%x1, 12(%x2) #119 pc 1308
	lw	%x6, 4(%x5)  #119 pc 1312
	lw	%x5, 0(%x5)  #119 pc 1316
	sub	%x5, %x0, %x5  #120 pc 1320
	mv	%x7, %x3  #120 pc 1324
	addi	%x3, %x3, 8  #120 pc 1328
	sw	%x6, 4(%x7)  #120 pc 1332
	sw	%x5, 0(%x7)  #120 pc 1336
	mv	%x5, %x7  #120 pc 1340
	ret #pc 1344
	nop #pc 1348
be_else.9203: #pc 1348
	mv	%x7, %x3  #121 pc 1352
	addi	%x3, %x3, 8  #121 pc 1356
	sw	%x6, 4(%x7)  #121 pc 1360
	sw	%x5, 0(%x7)  #121 pc 1364
	mv	%x5, %x7  #121 pc 1368
	ret #pc 1372
	nop #pc 1376
bge_else.9201: #pc 1376
	mv	%x7, %x3  #123 pc 1380
	addi	%x3, %x3, 8  #123 pc 1384
	sw	%x6, 4(%x7)  #123 pc 1388
	sw	%x5, 0(%x7)  #123 pc 1392
	mv	%x5, %x7  #123 pc 1396
	ret #pc 1400
	nop #pc 1404
read_int.2580:  #pc 1404
	addi	%x5, %x0, 0  #0 pc 1408
	addi	%x6, %x0, 0  #0 pc 1412
	sw	%x1, 4(%x2)  #127 pc 1416
	addi	%x2, %x2, 8  #127 pc 1420
	jal	%x1, read_int_sub.2577  #127 pc 1424
	addi	%x2, %x2, -8  #127 pc 1428
	lw	%x1, 4(%x2) #127 pc 1432
	lw	%x5, 0(%x5)  #127 pc 1436
	ret #pc 1440
	nop #pc 1444
pow.2582:  #pc 1444
	bge	%x0, %x5, 12  #132 pc 1448
	j	ble_else.9204 #pc 1452
	nop #pc 1456
	ret #pc 1460
	nop #pc 1464
ble_else.9204: #pc 1464
	itof	%f2, %x5  #135 pc 1468
	fmul	%f0, %f0, %f2  #135 pc 1472
	addi	%x5, %x5, -1  #135 pc 1476
	j	pow.2582  #135 pc 1480
	nop #pc 1484
read_float_sub.2585:  #pc 1484
	in	%x5  #139 pc 1488
	addi	%x24, %x0, 48  #pc 1492
	bge	%x5, %x24, 12  #140 pc 1496
	j	bge_else.9205 #pc 1500
	nop #pc 1504
	addi	%x24, %x0, 57  #pc 1508
	bge	%x24, %x5, 12  #141 pc 1512
	j	ble_else.9206 #pc 1516
	nop #pc 1520
	mv	%f2, l.6333  #0 pc 1524
	fmul	%f0, %f0, %f2  #142 pc 1528
	addi	%x5, %x5, -48  #142 pc 1532
	itof	%f2, %x5  #142 pc 1536
	fadd	%f0, %f0, %f2  #142 pc 1540
	j	read_float_sub.2585  #142 pc 1544
	nop #pc 1548
ble_else.9206: #pc 1548
	addi	%x24, %x0, 45  #pc 1552
	beq	%x5, %x24, 12  #144 pc 1556
	j	be_else.9207 #pc 1560
	nop #pc 1564
	sw	%x1, 4(%x2)  #145 pc 1568
	addi	%x2, %x2, 8  #145 pc 1572
	jal	%x1, read_float_sub.2585  #145 pc 1576
	addi	%x2, %x2, -8  #145 pc 1580
	lw	%x1, 4(%x2) #145 pc 1584
	fsub	%f0, %f30, %f0  #145 pc 1588
	ret #pc 1592
	nop #pc 1596
be_else.9207: #pc 1596
	addi	%x24, %x0, 46  #pc 1600
	beq	%x5, %x24, 12  #147 pc 1604
	j	be_else.9208 #pc 1608
	nop #pc 1612
	addi	%x5, %x0, 0  #0 pc 1616
	addi	%x6, %x0, 0  #0 pc 1620
	fsw	%f0, 0(%x2)  #148 pc 1624
	sw	%x1, 12(%x2)  #148 pc 1628
	addi	%x2, %x2, 16  #148 pc 1632
	jal	%x1, read_int_sub.2577  #148 pc 1636
	addi	%x2, %x2, -16  #148 pc 1640
	lw	%x1, 12(%x2) #148 pc 1644
	lw	%x6, 4(%x5)  #148 pc 1648
	lw	%x5, 0(%x5)  #148 pc 1652
	itof	%f0, %x5  #149 pc 1656
	mv	%f2, l.6333  #0 pc 1660
	fsw	%f0, 8(%x2)  #149 pc 1664
	mv	%x5, %x6 #pc 1668
	mv	%f0, %f2 #pc 1672
	mv	%f1, %f3 #pc 1676
	sw	%x1, 20(%x2)  #149 pc 1680
	addi	%x2, %x2, 24  #149 pc 1684
	jal	%x1, pow.2582  #149 pc 1688
	addi	%x2, %x2, -24  #149 pc 1692
	lw	%x1, 20(%x2) #149 pc 1696
	flw	%f2, 8(%x2)  #149 pc 1700
	fdiv	%f0, %f2, %f0  #149 pc 1704
	flw	%f2, 0(%x2)  #149 pc 1708
	fadd	%f0, %f2, %f0  #149 pc 1712
	ret #pc 1716
	nop #pc 1720
be_else.9208: #pc 1720
	ret #pc 1724
	nop #pc 1728
bge_else.9205: #pc 1728
	ret #pc 1732
	nop #pc 1736
read_float.2587:  #pc 1736
	mv	%f0, l.6293  #0 pc 1740
	j	read_float_sub.2585  #156 pc 1744
	nop #pc 1748
assign_array.2589:  #pc 1748
	beq	%x7, %x0, 12  #160 pc 1752
	j	be_else.9209 #pc 1756
	nop #pc 1760
	slli	%x7, %x7, 2  #161 pc 1764
	sw	%x6, %x7(%x5)  #161 pc 1768
	ret #pc 1772
	nop #pc 1776
be_else.9209: #pc 1776
	slli	%x9, %x7, 2  #163 pc 1780
	sw	%x6, %x9(%x5)  #163 pc 1784
	addi	%x7, %x7, -1  #164 pc 1788
	j	assign_array.2589  #164 pc 1792
	nop #pc 1796
create_array.2593:  #pc 1796
	mv	%x7, %x3  #168 pc 1800
	sw	%x7, 0(%x2)  #171 pc 1804
	mv	%x23, %x7 #pc 1808
	mv	%x7, %x5 #pc 1812
	mv	%x5, %x23 #pc 1816
	sw	%x1, 4(%x2)  #171 pc 1820
	addi	%x2, %x2, 8  #171 pc 1824
	jal	%x1, assign_array.2589  #171 pc 1828
	addi	%x2, %x2, -8  #171 pc 1832
	lw	%x1, 4(%x2) #171 pc 1836
	lw	%x5, 0(%x2)  #172 pc 1840
	ret #pc 1844
	nop #pc 1848
assign_farray.2596:  #pc 1848
	beq	%x6, %x0, 12  #176 pc 1852
	j	be_else.9211 #pc 1856
	nop #pc 1860
	slli	%x6, %x6, 3  #177 pc 1864
	fsw	%f0, %x6(%x5) #177 pc 1868
	ret #pc 1872
	nop #pc 1876
be_else.9211: #pc 1876
	slli	%x7, %x6, 3  #179 pc 1880
	fsw	%f0, %x7(%x5) #179 pc 1884
	addi	%x6, %x6, -1  #180 pc 1888
	j	assign_farray.2596  #180 pc 1892
	nop #pc 1896
create_float_array.2600:  #pc 1896
	mv	%x6, %x3  #184 pc 1900
	sw	%x6, 0(%x2)  #187 pc 1904
	mv	%x23, %x6 #pc 1908
	mv	%x6, %x5 #pc 1912
	mv	%x5, %x23 #pc 1916
	sw	%x1, 4(%x2)  #187 pc 1920
	addi	%x2, %x2, 8  #187 pc 1924
	jal	%x1, assign_farray.2596  #187 pc 1928
	addi	%x2, %x2, -8  #187 pc 1932
	lw	%x1, 4(%x2) #187 pc 1936
	lw	%x5, 0(%x2)  #188 pc 1940
	ret #pc 1944
	nop #pc 1948
xor.2633:  #pc 1948
	beq	%x5, %x0, 12  #326 pc 1952
	j	be_else.9213 #pc 1956
	nop #pc 1960
	mv	%x5, %x6  #326 pc 1964
	ret #pc 1968
	nop #pc 1972
be_else.9213: #pc 1972
	beq	%x6, %x0, 12  #326 pc 1976
	j	be_else.9214 #pc 1980
	nop #pc 1984
	addi	%x5, %x0, 1  #0 pc 1988
	ret #pc 1992
	nop #pc 1996
be_else.9214: #pc 1996
	addi	%x5, %x0, 0  #0 pc 2000
	ret #pc 2004
	nop #pc 2008
sgn.2636:  #pc 2008
	fsw	%f0, 0(%x2)  #334 pc 2012
	sw	%x1, 12(%x2)  #334 pc 2016
	addi	%x2, %x2, 16  #334 pc 2020
	jal	%x1, fiszero.2528  #334 pc 2024
	addi	%x2, %x2, -16  #334 pc 2028
	lw	%x1, 12(%x2) #334 pc 2032
	beq	%x5, %x0, 12  #334 pc 2036
	j	be_else.9215 #pc 2040
	nop #pc 2044
	flw	%f0, 0(%x2)  #335 pc 2048
	sw	%x1, 12(%x2)  #335 pc 2052
	addi	%x2, %x2, 16  #335 pc 2056
	jal	%x1, fispos.2530  #335 pc 2060
	addi	%x2, %x2, -16  #335 pc 2064
	lw	%x1, 12(%x2) #335 pc 2068
	beq	%x5, %x0, 12  #335 pc 2072
	j	be_else.9216 #pc 2076
	nop #pc 2080
	mv	%x5, l.6343  #0 pc 2084
	ret #pc 2088
	nop #pc 2092
be_else.9216: #pc 2092
	mv	%x5, l.6305  #0 pc 2096
	ret #pc 2100
	nop #pc 2104
be_else.9215: #pc 2104
	mv	%x5, l.6293  #0 pc 2108
	ret #pc 2112
	nop #pc 2116
fneg_cond.2638:  #pc 2116
	beq	%x5, %x0, 12  #341 pc 2120
	j	be_else.9217 #pc 2124
	nop #pc 2128
	j	fneg.2534  #341 pc 2132
	nop #pc 2136
be_else.9217: #pc 2136
	ret #pc 2140
	nop #pc 2144
add_mod5.2641:  #pc 2144
	add	%x5, %x5, %x6  #346 pc 2148
	addi	%x24, %x0, 5  #pc 2152
	bge	%x5, %x24, 12  #347 pc 2156
	j	bge_else.9218 #pc 2160
	nop #pc 2164
	addi	%x5, %x5, -5  #347 pc 2168
	ret #pc 2172
	nop #pc 2176
bge_else.9218: #pc 2176
	ret #pc 2180
	nop #pc 2184
vecset.2644:  #pc 2184
	fsw	%f0, 0(%x5) #362 pc 2188
	fsw	%f2, 8(%x5) #363 pc 2192
	fsw	%f4, 16(%x5) #364 pc 2196
	ret #pc 2200
	nop #pc 2204
vecfill.2649:  #pc 2204
	fsw	%f0, 0(%x5) #369 pc 2208
	fsw	%f0, 8(%x5) #370 pc 2212
	fsw	%f0, 16(%x5) #371 pc 2216
	ret #pc 2220
	nop #pc 2224
vecbzero.2652:  #pc 2224
	mv	%f0, l.6293  #0 pc 2228
	j	vecfill.2649  #376 pc 2232
	nop #pc 2236
veccpy.2654:  #pc 2236
	flw	%f0, 0(%x6)  #381 pc 2240
	fsw	%f0, 0(%x5) #381 pc 2244
	flw	%f0, 8(%x6)  #382 pc 2248
	fsw	%f0, 8(%x5) #382 pc 2252
	flw	%f0, 16(%x6)  #383 pc 2256
	fsw	%f0, 16(%x5) #383 pc 2260
	ret #pc 2264
	nop #pc 2268
vecunit_sgn.2657:  #pc 2268
	flw	%f0, 0(%x5)  #405 pc 2272
	sw	%x6, 0(%x2)  #405 pc 2276
	sw	%x5, 4(%x2)  #405 pc 2280
	sw	%x1, 12(%x2)  #405 pc 2284
	addi	%x2, %x2, 16  #405 pc 2288
	jal	%x1, fsqr.2536  #405 pc 2292
	addi	%x2, %x2, -16  #405 pc 2296
	lw	%x1, 12(%x2) #405 pc 2300
	lw	%x5, 4(%x2)  #405 pc 2304
	flw	%f2, 8(%x5)  #405 pc 2308
	fsw	%f0, 8(%x2)  #405 pc 2312
	mv	%f0, %f2 #pc 2316
	mv	%f1, %f3 #pc 2320
	sw	%x1, 20(%x2)  #405 pc 2324
	addi	%x2, %x2, 24  #405 pc 2328
	jal	%x1, fsqr.2536  #405 pc 2332
	addi	%x2, %x2, -24  #405 pc 2336
	lw	%x1, 20(%x2) #405 pc 2340
	flw	%f2, 8(%x2)  #405 pc 2344
	fadd	%f0, %f2, %f0  #405 pc 2348
	lw	%x5, 4(%x2)  #405 pc 2352
	flw	%f2, 16(%x5)  #405 pc 2356
	fsw	%f0, 16(%x2)  #405 pc 2360
	mv	%f0, %f2 #pc 2364
	mv	%f1, %f3 #pc 2368
	sw	%x1, 28(%x2)  #405 pc 2372
	addi	%x2, %x2, 32  #405 pc 2376
	jal	%x1, fsqr.2536  #405 pc 2380
	addi	%x2, %x2, -32  #405 pc 2384
	lw	%x1, 28(%x2) #405 pc 2388
	flw	%f2, 16(%x2)  #405 pc 2392
	fadd	%f0, %f2, %f0  #405 pc 2396
	fsqrt	%f0, %f0  #405 pc 2400
	fsw	%f0, 24(%x2)  #406 pc 2404
	sw	%x1, 36(%x2)  #406 pc 2408
	addi	%x2, %x2, 40  #406 pc 2412
	jal	%x1, fiszero.2528  #406 pc 2416
	addi	%x2, %x2, -40  #406 pc 2420
	lw	%x1, 36(%x2) #406 pc 2424
	beq	%x5, %x0, 12  #406 pc 2428
	j	be_else.9222 #pc 2432
	nop #pc 2436
	lw	%x5, 0(%x2)  #406 pc 2440
	beq	%x5, %x0, 12  #406 pc 2444
	j	be_else.9224 #pc 2448
	nop #pc 2452
	mv	%f0, l.6305  #0 pc 2456
	flw	%f2, 24(%x2)  #406 pc 2460
	fdiv	%f0, %f0, %f2  #406 pc 2464
	j	be_cont.9225 #pc 2468
	nop #pc 2472
be_else.9224: #pc 2472
	mv	%f0, l.6343  #0 pc 2476
	flw	%f2, 24(%x2)  #406 pc 2480
	fdiv	%f0, %f0, %f2  #406 pc 2484
be_cont.9225: #pc 2484
	j	be_cont.9223 #pc 2488
	nop #pc 2492
be_else.9222: #pc 2492
	mv	%f0, l.6305  #0 pc 2496
be_cont.9223: #pc 2496
	lw	%x5, 4(%x2)  #407 pc 2500
	flw	%f2, 0(%x5)  #407 pc 2504
	fmul	%f2, %f2, %f0  #407 pc 2508
	fsw	%f2, 0(%x5) #407 pc 2512
	flw	%f2, 8(%x5)  #408 pc 2516
	fmul	%f2, %f2, %f0  #408 pc 2520
	fsw	%f2, 8(%x5) #408 pc 2524
	flw	%f2, 16(%x5)  #409 pc 2528
	fmul	%f0, %f2, %f0  #409 pc 2532
	fsw	%f0, 16(%x5) #409 pc 2536
	ret #pc 2540
	nop #pc 2544
veciprod.2660:  #pc 2544
	flw	%f0, 0(%x5)  #414 pc 2548
	flw	%f2, 0(%x6)  #414 pc 2552
	fmul	%f0, %f0, %f2  #414 pc 2556
	flw	%f2, 8(%x5)  #414 pc 2560
	flw	%f4, 8(%x6)  #414 pc 2564
	fmul	%f2, %f2, %f4  #414 pc 2568
	fadd	%f0, %f0, %f2  #414 pc 2572
	flw	%f2, 16(%x5)  #414 pc 2576
	flw	%f4, 16(%x6)  #414 pc 2580
	fmul	%f2, %f2, %f4  #414 pc 2584
	fadd	%f0, %f0, %f2  #414 pc 2588
	ret #pc 2592
	nop #pc 2596
veciprod2.2663:  #pc 2596
	flw	%f6, 0(%x5)  #419 pc 2600
	fmul	%f0, %f6, %f0  #419 pc 2604
	flw	%f6, 8(%x5)  #419 pc 2608
	fmul	%f2, %f6, %f2  #419 pc 2612
	fadd	%f0, %f0, %f2  #419 pc 2616
	flw	%f2, 16(%x5)  #419 pc 2620
	fmul	%f2, %f2, %f4  #419 pc 2624
	fadd	%f0, %f0, %f2  #419 pc 2628
	ret #pc 2632
	nop #pc 2636
vecaccum.2668:  #pc 2636
	flw	%f2, 0(%x5)  #424 pc 2640
	flw	%f4, 0(%x6)  #424 pc 2644
	fmul	%f4, %f0, %f4  #424 pc 2648
	fadd	%f2, %f2, %f4  #424 pc 2652
	fsw	%f2, 0(%x5) #424 pc 2656
	flw	%f2, 8(%x5)  #425 pc 2660
	flw	%f4, 8(%x6)  #425 pc 2664
	fmul	%f4, %f0, %f4  #425 pc 2668
	fadd	%f2, %f2, %f4  #425 pc 2672
	fsw	%f2, 8(%x5) #425 pc 2676
	flw	%f2, 16(%x5)  #426 pc 2680
	flw	%f4, 16(%x6)  #426 pc 2684
	fmul	%f0, %f0, %f4  #426 pc 2688
	fadd	%f0, %f2, %f0  #426 pc 2692
	fsw	%f0, 16(%x5) #426 pc 2696
	ret #pc 2700
	nop #pc 2704
vecadd.2672:  #pc 2704
	flw	%f0, 0(%x5)  #431 pc 2708
	flw	%f2, 0(%x6)  #431 pc 2712
	fadd	%f0, %f0, %f2  #431 pc 2716
	fsw	%f0, 0(%x5) #431 pc 2720
	flw	%f0, 8(%x5)  #432 pc 2724
	flw	%f2, 8(%x6)  #432 pc 2728
	fadd	%f0, %f0, %f2  #432 pc 2732
	fsw	%f0, 8(%x5) #432 pc 2736
	flw	%f0, 16(%x5)  #433 pc 2740
	flw	%f2, 16(%x6)  #433 pc 2744
	fadd	%f0, %f0, %f2  #433 pc 2748
	fsw	%f0, 16(%x5) #433 pc 2752
	ret #pc 2756
	nop #pc 2760
vecscale.2675:  #pc 2760
	flw	%f2, 0(%x5)  #447 pc 2764
	fmul	%f2, %f2, %f0  #447 pc 2768
	fsw	%f2, 0(%x5) #447 pc 2772
	flw	%f2, 8(%x5)  #448 pc 2776
	fmul	%f2, %f2, %f0  #448 pc 2780
	fsw	%f2, 8(%x5) #448 pc 2784
	flw	%f2, 16(%x5)  #449 pc 2788
	fmul	%f0, %f2, %f0  #449 pc 2792
	fsw	%f0, 16(%x5) #449 pc 2796
	ret #pc 2800
	nop #pc 2804
vecaccumv.2678:  #pc 2804
	flw	%f0, 0(%x5)  #454 pc 2808
	flw	%f2, 0(%x6)  #454 pc 2812
	flw	%f4, 0(%x7)  #454 pc 2816
	fmul	%f2, %f2, %f4  #454 pc 2820
	fadd	%f0, %f0, %f2  #454 pc 2824
	fsw	%f0, 0(%x5) #454 pc 2828
	flw	%f0, 8(%x5)  #455 pc 2832
	flw	%f2, 8(%x6)  #455 pc 2836
	flw	%f4, 8(%x7)  #455 pc 2840
	fmul	%f2, %f2, %f4  #455 pc 2844
	fadd	%f0, %f0, %f2  #455 pc 2848
	fsw	%f0, 8(%x5) #455 pc 2852
	flw	%f0, 16(%x5)  #456 pc 2856
	flw	%f2, 16(%x6)  #456 pc 2860
	flw	%f4, 16(%x7)  #456 pc 2864
	fmul	%f2, %f2, %f4  #456 pc 2868
	fadd	%f0, %f0, %f2  #456 pc 2872
	fsw	%f0, 16(%x5) #456 pc 2876
	ret #pc 2880
	nop #pc 2884
o_texturetype.2682:  #pc 2884
	lw	%x5, 0(%x5)  #465 pc 2888
	ret #pc 2892
	nop #pc 2896
o_form.2684:  #pc 2896
	lw	%x5, 4(%x5)  #475 pc 2900
	ret #pc 2904
	nop #pc 2908
o_reflectiontype.2686:  #pc 2908
	lw	%x5, 8(%x5)  #485 pc 2912
	ret #pc 2916
	nop #pc 2920
o_isinvert.2688:  #pc 2920
	lw	%x5, 24(%x5)  #495 pc 2924
	ret #pc 2928
	nop #pc 2932
o_isrot.2690:  #pc 2932
	lw	%x5, 12(%x5)  #504 pc 2936
	ret #pc 2940
	nop #pc 2944
o_param_a.2692:  #pc 2944
	lw	%x5, 16(%x5)  #513 pc 2948
	flw	%f0, 0(%x5)  #518 pc 2952
	ret #pc 2956
	nop #pc 2960
o_param_b.2694:  #pc 2960
	lw	%x5, 16(%x5)  #523 pc 2964
	flw	%f0, 8(%x5)  #528 pc 2968
	ret #pc 2972
	nop #pc 2976
o_param_c.2696:  #pc 2976
	lw	%x5, 16(%x5)  #533 pc 2980
	flw	%f0, 16(%x5)  #538 pc 2984
	ret #pc 2988
	nop #pc 2992
o_param_abc.2698:  #pc 2992
	lw	%x5, 16(%x5)  #543 pc 2996
	ret #pc 3000
	nop #pc 3004
o_param_x.2700:  #pc 3004
	lw	%x5, 20(%x5)  #553 pc 3008
	flw	%f0, 0(%x5)  #558 pc 3012
	ret #pc 3016
	nop #pc 3020
o_param_y.2702:  #pc 3020
	lw	%x5, 20(%x5)  #563 pc 3024
	flw	%f0, 8(%x5)  #568 pc 3028
	ret #pc 3032
	nop #pc 3036
o_param_z.2704:  #pc 3036
	lw	%x5, 20(%x5)  #573 pc 3040
	flw	%f0, 16(%x5)  #578 pc 3044
	ret #pc 3048
	nop #pc 3052
o_diffuse.2706:  #pc 3052
	lw	%x5, 28(%x5)  #583 pc 3056
	flw	%f0, 0(%x5)  #588 pc 3060
	ret #pc 3064
	nop #pc 3068
o_hilight.2708:  #pc 3068
	lw	%x5, 28(%x5)  #593 pc 3072
	flw	%f0, 8(%x5)  #598 pc 3076
	ret #pc 3080
	nop #pc 3084
o_color_red.2710:  #pc 3084
	lw	%x5, 32(%x5)  #603 pc 3088
	flw	%f0, 0(%x5)  #608 pc 3092
	ret #pc 3096
	nop #pc 3100
o_color_green.2712:  #pc 3100
	lw	%x5, 32(%x5)  #613 pc 3104
	flw	%f0, 8(%x5)  #618 pc 3108
	ret #pc 3112
	nop #pc 3116
o_color_blue.2714:  #pc 3116
	lw	%x5, 32(%x5)  #623 pc 3120
	flw	%f0, 16(%x5)  #628 pc 3124
	ret #pc 3128
	nop #pc 3132
o_param_r1.2716:  #pc 3132
	lw	%x5, 36(%x5)  #633 pc 3136
	flw	%f0, 0(%x5)  #638 pc 3140
	ret #pc 3144
	nop #pc 3148
o_param_r2.2718:  #pc 3148
	lw	%x5, 36(%x5)  #643 pc 3152
	flw	%f0, 8(%x5)  #648 pc 3156
	ret #pc 3160
	nop #pc 3164
o_param_r3.2720:  #pc 3164
	lw	%x5, 36(%x5)  #653 pc 3168
	flw	%f0, 16(%x5)  #658 pc 3172
	ret #pc 3176
	nop #pc 3180
o_param_ctbl.2722:  #pc 3180
	lw	%x5, 40(%x5)  #670 pc 3184
	ret #pc 3188
	nop #pc 3192
p_rgb.2724:  #pc 3192
	lw	%x5, 0(%x5)  #684 pc 3196
	ret #pc 3200
	nop #pc 3204
p_intersection_points.2726:  #pc 3204
	lw	%x5, 4(%x5)  #691 pc 3208
	ret #pc 3212
	nop #pc 3216
p_surface_ids.2728:  #pc 3216
	lw	%x5, 8(%x5)  #699 pc 3220
	ret #pc 3224
	nop #pc 3228
p_calc_diffuse.2730:  #pc 3228
	lw	%x5, 12(%x5)  #706 pc 3232
	ret #pc 3236
	nop #pc 3240
p_energy.2732:  #pc 3240
	lw	%x5, 16(%x5)  #713 pc 3244
	ret #pc 3248
	nop #pc 3252
p_received_ray_20percent.2734:  #pc 3252
	lw	%x5, 20(%x5)  #720 pc 3256
	ret #pc 3260
	nop #pc 3264
p_group_id.2736:  #pc 3264
	lw	%x5, 24(%x5)  #736 pc 3268
	lw	%x5, 0(%x5)  #738 pc 3272
	ret #pc 3276
	nop #pc 3280
p_set_group_id.2738:  #pc 3280
	lw	%x5, 24(%x5)  #743 pc 3284
	sw	%x6, 0(%x5)  #745 pc 3288
	ret #pc 3292
	nop #pc 3296
p_nvectors.2741:  #pc 3296
	lw	%x5, 28(%x5)  #750 pc 3300
	ret #pc 3304
	nop #pc 3308
d_vec.2743:  #pc 3308
	lw	%x5, 0(%x5)  #761 pc 3312
	ret #pc 3316
	nop #pc 3320
d_const.2745:  #pc 3320
	lw	%x5, 4(%x5)  #767 pc 3324
	ret #pc 3328
	nop #pc 3332
r_surface_id.2747:  #pc 3332
	lw	%x5, 0(%x5)  #777 pc 3336
	ret #pc 3340
	nop #pc 3344
r_dvec.2749:  #pc 3344
	lw	%x5, 4(%x5)  #783 pc 3348
	ret #pc 3352
	nop #pc 3356
r_bright.2751:  #pc 3356
	flw	%f0, 8(%x5)  #789 pc 3360
	ret #pc 3364
	nop #pc 3368
rad.2753:  #pc 3368
	mv	%f2, l.6431  #0 pc 3372
	fmul	%f0, %f0, %f2  #799 pc 3376
	ret #pc 3380
	nop #pc 3384
read_screen_settings.2755:  #pc 3384
	lw	%x5, 20(%x22)  #0 pc 3388
	lw	%x6, 16(%x22)  #0 pc 3392
	lw	%x7, 12(%x22)  #0 pc 3396
	lw	%x9, 8(%x22)  #0 pc 3400
	lw	%x10, 4(%x22)  #0 pc 3404
	sw	%x5, 0(%x2)  #806 pc 3408
	sw	%x7, 4(%x2)  #806 pc 3412
	sw	%x9, 8(%x2)  #806 pc 3416
	sw	%x6, 12(%x2)  #806 pc 3420
	sw	%x10, 16(%x2)  #806 pc 3424
	mv	%x5, %g0 #pc 3428
	sw	%x1, 20(%x2)  #806 pc 3432
	addi	%x2, %x2, 24  #806 pc 3436
	jal	%x1, read_float.2587  #806 pc 3440
	addi	%x2, %x2, -24  #806 pc 3444
	lw	%x1, 20(%x2) #806 pc 3448
	lw	%x5, 16(%x2)  #806 pc 3452
	fsw	%f0, 0(%x5) #806 pc 3456
	mv	%x5, %g0 #pc 3460
	sw	%x1, 20(%x2)  #807 pc 3464
	addi	%x2, %x2, 24  #807 pc 3468
	jal	%x1, read_float.2587  #807 pc 3472
	addi	%x2, %x2, -24  #807 pc 3476
	lw	%x1, 20(%x2) #807 pc 3480
	lw	%x5, 16(%x2)  #807 pc 3484
	fsw	%f0, 8(%x5) #807 pc 3488
	mv	%x5, %g0 #pc 3492
	sw	%x1, 20(%x2)  #808 pc 3496
	addi	%x2, %x2, 24  #808 pc 3500
	jal	%x1, read_float.2587  #808 pc 3504
	addi	%x2, %x2, -24  #808 pc 3508
	lw	%x1, 20(%x2) #808 pc 3512
	lw	%x5, 16(%x2)  #808 pc 3516
	fsw	%f0, 16(%x5) #808 pc 3520
	mv	%x5, %g0 #pc 3524
	sw	%x1, 20(%x2)  #810 pc 3528
	addi	%x2, %x2, 24  #810 pc 3532
	jal	%x1, read_float.2587  #810 pc 3536
	addi	%x2, %x2, -24  #810 pc 3540
	lw	%x1, 20(%x2) #810 pc 3544
	sw	%x1, 20(%x2)  #810 pc 3548
	addi	%x2, %x2, 24  #810 pc 3552
	jal	%x1, rad.2753  #810 pc 3556
	addi	%x2, %x2, -24  #810 pc 3560
	lw	%x1, 20(%x2) #810 pc 3564
	fsw	%f0, 24(%x2)  #811 pc 3568
	sw	%x1, 36(%x2)  #811 pc 3572
	addi	%x2, %x2, 40  #811 pc 3576
	jal	%x1, cos.2545  #811 pc 3580
	addi	%x2, %x2, -40  #811 pc 3584
	lw	%x1, 36(%x2) #811 pc 3588
	flw	%f2, 24(%x2)  #812 pc 3592
	fsw	%f0, 32(%x2)  #812 pc 3596
	mv	%f0, %f2 #pc 3600
	mv	%f1, %f3 #pc 3604
	sw	%x1, 44(%x2)  #812 pc 3608
	addi	%x2, %x2, 48  #812 pc 3612
	jal	%x1, sin.2543  #812 pc 3616
	addi	%x2, %x2, -48  #812 pc 3620
	lw	%x1, 44(%x2) #812 pc 3624
	fsw	%f0, 40(%x2)  #813 pc 3628
	mv	%x5, %g0 #pc 3632
	sw	%x1, 52(%x2)  #813 pc 3636
	addi	%x2, %x2, 56  #813 pc 3640
	jal	%x1, read_float.2587  #813 pc 3644
	addi	%x2, %x2, -56  #813 pc 3648
	lw	%x1, 52(%x2) #813 pc 3652
	sw	%x1, 52(%x2)  #813 pc 3656
	addi	%x2, %x2, 56  #813 pc 3660
	jal	%x1, rad.2753  #813 pc 3664
	addi	%x2, %x2, -56  #813 pc 3668
	lw	%x1, 52(%x2) #813 pc 3672
	fsw	%f0, 48(%x2)  #814 pc 3676
	sw	%x1, 60(%x2)  #814 pc 3680
	addi	%x2, %x2, 64  #814 pc 3684
	jal	%x1, cos.2545  #814 pc 3688
	addi	%x2, %x2, -64  #814 pc 3692
	lw	%x1, 60(%x2) #814 pc 3696
	flw	%f2, 48(%x2)  #815 pc 3700
	fsw	%f0, 56(%x2)  #815 pc 3704
	mv	%f0, %f2 #pc 3708
	mv	%f1, %f3 #pc 3712
	sw	%x1, 68(%x2)  #815 pc 3716
	addi	%x2, %x2, 72  #815 pc 3720
	jal	%x1, sin.2543  #815 pc 3724
	addi	%x2, %x2, -72  #815 pc 3728
	lw	%x1, 68(%x2) #815 pc 3732
	flw	%f2, 32(%x2)  #817 pc 3736
	fmul	%f4, %f2, %f0  #817 pc 3740
	mv	%f6, l.6436  #0 pc 3744
	fmul	%f4, %f4, %f6  #817 pc 3748
	lw	%x5, 12(%x2)  #817 pc 3752
	fsw	%f4, 0(%x5) #817 pc 3756
	mv	%f4, l.6439  #0 pc 3760
	flw	%f6, 40(%x2)  #818 pc 3764
	fmul	%f4, %f6, %f4  #818 pc 3768
	fsw	%f4, 8(%x5) #818 pc 3772
	flw	%f4, 56(%x2)  #819 pc 3776
	fmul	%f8, %f2, %f4  #819 pc 3780
	mv	%f10, l.6436  #0 pc 3784
	fmul	%f8, %f8, %f10  #819 pc 3788
	fsw	%f8, 16(%x5) #819 pc 3792
	lw	%x6, 8(%x2)  #821 pc 3796
	fsw	%f4, 0(%x6) #821 pc 3800
	mv	%f8, l.6293  #0 pc 3804
	fsw	%f8, 8(%x6) #822 pc 3808
	fsw	%f0, 64(%x2)  #823 pc 3812
	sw	%x1, 76(%x2)  #823 pc 3816
	addi	%x2, %x2, 80  #823 pc 3820
	jal	%x1, fneg.2534  #823 pc 3824
	addi	%x2, %x2, -80  #823 pc 3828
	lw	%x1, 76(%x2) #823 pc 3832
	lw	%x5, 8(%x2)  #823 pc 3836
	fsw	%f0, 16(%x5) #823 pc 3840
	flw	%f0, 40(%x2)  #825 pc 3844
	sw	%x1, 76(%x2)  #825 pc 3848
	addi	%x2, %x2, 80  #825 pc 3852
	jal	%x1, fneg.2534  #825 pc 3856
	addi	%x2, %x2, -80  #825 pc 3860
	lw	%x1, 76(%x2) #825 pc 3864
	flw	%f2, 64(%x2)  #825 pc 3868
	fmul	%f0, %f0, %f2  #825 pc 3872
	lw	%x5, 4(%x2)  #825 pc 3876
	fsw	%f0, 0(%x5) #825 pc 3880
	flw	%f0, 32(%x2)  #826 pc 3884
	sw	%x1, 76(%x2)  #826 pc 3888
	addi	%x2, %x2, 80  #826 pc 3892
	jal	%x1, fneg.2534  #826 pc 3896
	addi	%x2, %x2, -80  #826 pc 3900
	lw	%x1, 76(%x2) #826 pc 3904
	lw	%x5, 4(%x2)  #826 pc 3908
	fsw	%f0, 8(%x5) #826 pc 3912
	flw	%f0, 40(%x2)  #827 pc 3916
	sw	%x1, 76(%x2)  #827 pc 3920
	addi	%x2, %x2, 80  #827 pc 3924
	jal	%x1, fneg.2534  #827 pc 3928
	addi	%x2, %x2, -80  #827 pc 3932
	lw	%x1, 76(%x2) #827 pc 3936
	flw	%f2, 56(%x2)  #827 pc 3940
	fmul	%f0, %f0, %f2  #827 pc 3944
	lw	%x5, 4(%x2)  #827 pc 3948
	fsw	%f0, 16(%x5) #827 pc 3952
	lw	%x5, 16(%x2)  #829 pc 3956
	flw	%f0, 0(%x5)  #829 pc 3960
	lw	%x6, 12(%x2)  #829 pc 3964
	flw	%f2, 0(%x6)  #829 pc 3968
	fsub	%f0, %f0, %f2  #829 pc 3972
	lw	%x7, 0(%x2)  #829 pc 3976
	fsw	%f0, 0(%x7) #829 pc 3980
	flw	%f0, 8(%x5)  #830 pc 3984
	flw	%f2, 8(%x6)  #830 pc 3988
	fsub	%f0, %f0, %f2  #830 pc 3992
	fsw	%f0, 8(%x7) #830 pc 3996
	flw	%f0, 16(%x5)  #831 pc 4000
	flw	%f2, 16(%x6)  #831 pc 4004
	fsub	%f0, %f0, %f2  #831 pc 4008
	fsw	%f0, 16(%x7) #831 pc 4012
	ret #pc 4016
	nop #pc 4020
read_light.2757:  #pc 4020
	lw	%x5, 8(%x22)  #0 pc 4024
	lw	%x6, 4(%x22)  #0 pc 4028
	sw	%x6, 0(%x2)  #838 pc 4032
	sw	%x5, 4(%x2)  #838 pc 4036
	mv	%x5, %g0 #pc 4040
	sw	%x1, 12(%x2)  #838 pc 4044
	addi	%x2, %x2, 16  #838 pc 4048
	jal	%x1, read_int.2580  #838 pc 4052
	addi	%x2, %x2, -16  #838 pc 4056
	lw	%x1, 12(%x2) #838 pc 4060
	mv	%x5, %g0 #pc 4064
	sw	%x1, 12(%x2)  #841 pc 4068
	addi	%x2, %x2, 16  #841 pc 4072
	jal	%x1, read_float.2587  #841 pc 4076
	addi	%x2, %x2, -16  #841 pc 4080
	lw	%x1, 12(%x2) #841 pc 4084
	sw	%x1, 12(%x2)  #841 pc 4088
	addi	%x2, %x2, 16  #841 pc 4092
	jal	%x1, rad.2753  #841 pc 4096
	addi	%x2, %x2, -16  #841 pc 4100
	lw	%x1, 12(%x2) #841 pc 4104
	fsw	%f0, 8(%x2)  #842 pc 4108
	sw	%x1, 20(%x2)  #842 pc 4112
	addi	%x2, %x2, 24  #842 pc 4116
	jal	%x1, sin.2543  #842 pc 4120
	addi	%x2, %x2, -24  #842 pc 4124
	lw	%x1, 20(%x2) #842 pc 4128
	sw	%x1, 20(%x2)  #843 pc 4132
	addi	%x2, %x2, 24  #843 pc 4136
	jal	%x1, fneg.2534  #843 pc 4140
	addi	%x2, %x2, -24  #843 pc 4144
	lw	%x1, 20(%x2) #843 pc 4148
	lw	%x5, 4(%x2)  #843 pc 4152
	fsw	%f0, 8(%x5) #843 pc 4156
	mv	%x5, %g0 #pc 4160
	sw	%x1, 20(%x2)  #844 pc 4164
	addi	%x2, %x2, 24  #844 pc 4168
	jal	%x1, read_float.2587  #844 pc 4172
	addi	%x2, %x2, -24  #844 pc 4176
	lw	%x1, 20(%x2) #844 pc 4180
	sw	%x1, 20(%x2)  #844 pc 4184
	addi	%x2, %x2, 24  #844 pc 4188
	jal	%x1, rad.2753  #844 pc 4192
	addi	%x2, %x2, -24  #844 pc 4196
	lw	%x1, 20(%x2) #844 pc 4200
	flw	%f2, 8(%x2)  #845 pc 4204
	fsw	%f0, 16(%x2)  #845 pc 4208
	mv	%f0, %f2 #pc 4212
	mv	%f1, %f3 #pc 4216
	sw	%x1, 28(%x2)  #845 pc 4220
	addi	%x2, %x2, 32  #845 pc 4224
	jal	%x1, cos.2545  #845 pc 4228
	addi	%x2, %x2, -32  #845 pc 4232
	lw	%x1, 28(%x2) #845 pc 4236
	flw	%f2, 16(%x2)  #846 pc 4240
	fsw	%f0, 24(%x2)  #846 pc 4244
	mv	%f0, %f2 #pc 4248
	mv	%f1, %f3 #pc 4252
	sw	%x1, 36(%x2)  #846 pc 4256
	addi	%x2, %x2, 40  #846 pc 4260
	jal	%x1, sin.2543  #846 pc 4264
	addi	%x2, %x2, -40  #846 pc 4268
	lw	%x1, 36(%x2) #846 pc 4272
	flw	%f2, 24(%x2)  #847 pc 4276
	fmul	%f0, %f2, %f0  #847 pc 4280
	lw	%x5, 4(%x2)  #847 pc 4284
	fsw	%f0, 0(%x5) #847 pc 4288
	flw	%f0, 16(%x2)  #848 pc 4292
	sw	%x1, 36(%x2)  #848 pc 4296
	addi	%x2, %x2, 40  #848 pc 4300
	jal	%x1, cos.2545  #848 pc 4304
	addi	%x2, %x2, -40  #848 pc 4308
	lw	%x1, 36(%x2) #848 pc 4312
	flw	%f2, 24(%x2)  #849 pc 4316
	fmul	%f0, %f2, %f0  #849 pc 4320
	lw	%x5, 4(%x2)  #849 pc 4324
	fsw	%f0, 16(%x5) #849 pc 4328
	mv	%x5, %g0 #pc 4332
	sw	%x1, 36(%x2)  #850 pc 4336
	addi	%x2, %x2, 40  #850 pc 4340
	jal	%x1, read_float.2587  #850 pc 4344
	addi	%x2, %x2, -40  #850 pc 4348
	lw	%x1, 36(%x2) #850 pc 4352
	lw	%x5, 0(%x2)  #850 pc 4356
	fsw	%f0, 0(%x5) #850 pc 4360
	ret #pc 4364
	nop #pc 4368
rotate_quadratic_matrix.2759:  #pc 4368
	flw	%f0, 0(%x6)  #860 pc 4372
	sw	%x5, 0(%x2)  #860 pc 4376
	sw	%x6, 4(%x2)  #860 pc 4380
	sw	%x1, 12(%x2)  #860 pc 4384
	addi	%x2, %x2, 16  #860 pc 4388
	jal	%x1, cos.2545  #860 pc 4392
	addi	%x2, %x2, -16  #860 pc 4396
	lw	%x1, 12(%x2) #860 pc 4400
	lw	%x5, 4(%x2)  #861 pc 4404
	flw	%f2, 0(%x5)  #861 pc 4408
	fsw	%f0, 8(%x2)  #861 pc 4412
	mv	%f0, %f2 #pc 4416
	mv	%f1, %f3 #pc 4420
	sw	%x1, 20(%x2)  #861 pc 4424
	addi	%x2, %x2, 24  #861 pc 4428
	jal	%x1, sin.2543  #861 pc 4432
	addi	%x2, %x2, -24  #861 pc 4436
	lw	%x1, 20(%x2) #861 pc 4440
	lw	%x5, 4(%x2)  #862 pc 4444
	flw	%f2, 8(%x5)  #862 pc 4448
	fsw	%f0, 16(%x2)  #862 pc 4452
	mv	%f0, %f2 #pc 4456
	mv	%f1, %f3 #pc 4460
	sw	%x1, 28(%x2)  #862 pc 4464
	addi	%x2, %x2, 32  #862 pc 4468
	jal	%x1, cos.2545  #862 pc 4472
	addi	%x2, %x2, -32  #862 pc 4476
	lw	%x1, 28(%x2) #862 pc 4480
	lw	%x5, 4(%x2)  #863 pc 4484
	flw	%f2, 8(%x5)  #863 pc 4488
	fsw	%f0, 24(%x2)  #863 pc 4492
	mv	%f0, %f2 #pc 4496
	mv	%f1, %f3 #pc 4500
	sw	%x1, 36(%x2)  #863 pc 4504
	addi	%x2, %x2, 40  #863 pc 4508
	jal	%x1, sin.2543  #863 pc 4512
	addi	%x2, %x2, -40  #863 pc 4516
	lw	%x1, 36(%x2) #863 pc 4520
	lw	%x5, 4(%x2)  #864 pc 4524
	flw	%f2, 16(%x5)  #864 pc 4528
	fsw	%f0, 32(%x2)  #864 pc 4532
	mv	%f0, %f2 #pc 4536
	mv	%f1, %f3 #pc 4540
	sw	%x1, 44(%x2)  #864 pc 4544
	addi	%x2, %x2, 48  #864 pc 4548
	jal	%x1, cos.2545  #864 pc 4552
	addi	%x2, %x2, -48  #864 pc 4556
	lw	%x1, 44(%x2) #864 pc 4560
	lw	%x5, 4(%x2)  #865 pc 4564
	flw	%f2, 16(%x5)  #865 pc 4568
	fsw	%f0, 40(%x2)  #865 pc 4572
	mv	%f0, %f2 #pc 4576
	mv	%f1, %f3 #pc 4580
	sw	%x1, 52(%x2)  #865 pc 4584
	addi	%x2, %x2, 56  #865 pc 4588
	jal	%x1, sin.2543  #865 pc 4592
	addi	%x2, %x2, -56  #865 pc 4596
	lw	%x1, 52(%x2) #865 pc 4600
	flw	%f2, 40(%x2)  #867 pc 4604
	flw	%f4, 24(%x2)  #867 pc 4608
	fmul	%f6, %f4, %f2  #867 pc 4612
	flw	%f8, 32(%x2)  #868 pc 4616
	flw	%f10, 16(%x2)  #868 pc 4620
	fmul	%f12, %f10, %f8  #868 pc 4624
	fmul	%f12, %f12, %f2  #868 pc 4628
	flw	%f14, 8(%x2)  #868 pc 4632
	fmul	%f16, %f14, %f0  #868 pc 4636
	fsub	%f12, %f12, %f16  #868 pc 4640
	fmul	%f16, %f14, %f8  #869 pc 4644
	fmul	%f16, %f16, %f2  #869 pc 4648
	fmul	%f18, %f10, %f0  #869 pc 4652
	fadd	%f16, %f16, %f18  #869 pc 4656
	fmul	%f18, %f4, %f0  #871 pc 4660
	fmul	%f20, %f10, %f8  #872 pc 4664
	fmul	%f20, %f20, %f0  #872 pc 4668
	fmul	%f22, %f14, %f2  #872 pc 4672
	fadd	%f20, %f20, %f22  #872 pc 4676
	fmul	%f22, %f14, %f8  #873 pc 4680
	fmul	%f0, %f22, %f0  #873 pc 4684
	fmul	%f2, %f10, %f2  #873 pc 4688
	fsub	%f0, %f0, %f2  #873 pc 4692
	fsw	%f0, 48(%x2)  #875 pc 4696
	fsw	%f16, 56(%x2)  #875 pc 4700
	fsw	%f20, 64(%x2)  #875 pc 4704
	fsw	%f12, 72(%x2)  #875 pc 4708
	fsw	%f18, 80(%x2)  #875 pc 4712
	fsw	%f6, 88(%x2)  #875 pc 4716
	mv	%f0, %f8 #pc 4720
	mv	%f1, %f9 #pc 4724
	sw	%x1, 100(%x2)  #875 pc 4728
	addi	%x2, %x2, 104  #875 pc 4732
	jal	%x1, fneg.2534  #875 pc 4736
	addi	%x2, %x2, -104  #875 pc 4740
	lw	%x1, 100(%x2) #875 pc 4744
	flw	%f2, 24(%x2)  #876 pc 4748
	flw	%f4, 16(%x2)  #876 pc 4752
	fmul	%f4, %f4, %f2  #876 pc 4756
	flw	%f6, 8(%x2)  #877 pc 4760
	fmul	%f2, %f6, %f2  #877 pc 4764
	lw	%x5, 0(%x2)  #880 pc 4768
	flw	%f6, 0(%x5)  #880 pc 4772
	flw	%f8, 8(%x5)  #881 pc 4776
	flw	%f10, 16(%x5)  #882 pc 4780
	flw	%f12, 88(%x2)  #887 pc 4784
	fsw	%f2, 96(%x2)  #887 pc 4788
	fsw	%f4, 104(%x2)  #887 pc 4792
	fsw	%f10, 112(%x2)  #887 pc 4796
	fsw	%f0, 120(%x2)  #887 pc 4800
	fsw	%f8, 128(%x2)  #887 pc 4804
	fsw	%f6, 136(%x2)  #887 pc 4808
	mv	%f0, %f12 #pc 4812
	mv	%f1, %f13 #pc 4816
	sw	%x1, 148(%x2)  #887 pc 4820
	addi	%x2, %x2, 152  #887 pc 4824
	jal	%x1, fsqr.2536  #887 pc 4828
	addi	%x2, %x2, -152  #887 pc 4832
	lw	%x1, 148(%x2) #887 pc 4836
	flw	%f2, 136(%x2)  #887 pc 4840
	fmul	%f0, %f2, %f0  #887 pc 4844
	flw	%f4, 80(%x2)  #887 pc 4848
	fsw	%f0, 144(%x2)  #887 pc 4852
	mv	%f0, %f4 #pc 4856
	mv	%f1, %f5 #pc 4860
	sw	%x1, 156(%x2)  #887 pc 4864
	addi	%x2, %x2, 160  #887 pc 4868
	jal	%x1, fsqr.2536  #887 pc 4872
	addi	%x2, %x2, -160  #887 pc 4876
	lw	%x1, 156(%x2) #887 pc 4880
	flw	%f2, 128(%x2)  #887 pc 4884
	fmul	%f0, %f2, %f0  #887 pc 4888
	flw	%f4, 144(%x2)  #887 pc 4892
	fadd	%f0, %f4, %f0  #887 pc 4896
	flw	%f4, 120(%x2)  #887 pc 4900
	fsw	%f0, 152(%x2)  #887 pc 4904
	mv	%f0, %f4 #pc 4908
	mv	%f1, %f5 #pc 4912
	sw	%x1, 164(%x2)  #887 pc 4916
	addi	%x2, %x2, 168  #887 pc 4920
	jal	%x1, fsqr.2536  #887 pc 4924
	addi	%x2, %x2, -168  #887 pc 4928
	lw	%x1, 164(%x2) #887 pc 4932
	flw	%f2, 112(%x2)  #887 pc 4936
	fmul	%f0, %f2, %f0  #887 pc 4940
	flw	%f4, 152(%x2)  #887 pc 4944
	fadd	%f0, %f4, %f0  #887 pc 4948
	lw	%x5, 0(%x2)  #887 pc 4952
	fsw	%f0, 0(%x5) #887 pc 4956
	flw	%f0, 72(%x2)  #888 pc 4960
	sw	%x1, 164(%x2)  #888 pc 4964
	addi	%x2, %x2, 168  #888 pc 4968
	jal	%x1, fsqr.2536  #888 pc 4972
	addi	%x2, %x2, -168  #888 pc 4976
	lw	%x1, 164(%x2) #888 pc 4980
	flw	%f2, 136(%x2)  #888 pc 4984
	fmul	%f0, %f2, %f0  #888 pc 4988
	flw	%f4, 64(%x2)  #888 pc 4992
	fsw	%f0, 160(%x2)  #888 pc 4996
	mv	%f0, %f4 #pc 5000
	mv	%f1, %f5 #pc 5004
	sw	%x1, 172(%x2)  #888 pc 5008
	addi	%x2, %x2, 176  #888 pc 5012
	jal	%x1, fsqr.2536  #888 pc 5016
	addi	%x2, %x2, -176  #888 pc 5020
	lw	%x1, 172(%x2) #888 pc 5024
	flw	%f2, 128(%x2)  #888 pc 5028
	fmul	%f0, %f2, %f0  #888 pc 5032
	flw	%f4, 160(%x2)  #888 pc 5036
	fadd	%f0, %f4, %f0  #888 pc 5040
	flw	%f4, 104(%x2)  #888 pc 5044
	fsw	%f0, 168(%x2)  #888 pc 5048
	mv	%f0, %f4 #pc 5052
	mv	%f1, %f5 #pc 5056
	sw	%x1, 180(%x2)  #888 pc 5060
	addi	%x2, %x2, 184  #888 pc 5064
	jal	%x1, fsqr.2536  #888 pc 5068
	addi	%x2, %x2, -184  #888 pc 5072
	lw	%x1, 180(%x2) #888 pc 5076
	flw	%f2, 112(%x2)  #888 pc 5080
	fmul	%f0, %f2, %f0  #888 pc 5084
	flw	%f4, 168(%x2)  #888 pc 5088
	fadd	%f0, %f4, %f0  #888 pc 5092
	lw	%x5, 0(%x2)  #888 pc 5096
	fsw	%f0, 8(%x5) #888 pc 5100
	flw	%f0, 56(%x2)  #889 pc 5104
	sw	%x1, 180(%x2)  #889 pc 5108
	addi	%x2, %x2, 184  #889 pc 5112
	jal	%x1, fsqr.2536  #889 pc 5116
	addi	%x2, %x2, -184  #889 pc 5120
	lw	%x1, 180(%x2) #889 pc 5124
	flw	%f2, 136(%x2)  #889 pc 5128
	fmul	%f0, %f2, %f0  #889 pc 5132
	flw	%f4, 48(%x2)  #889 pc 5136
	fsw	%f0, 176(%x2)  #889 pc 5140
	mv	%f0, %f4 #pc 5144
	mv	%f1, %f5 #pc 5148
	sw	%x1, 188(%x2)  #889 pc 5152
	addi	%x2, %x2, 192  #889 pc 5156
	jal	%x1, fsqr.2536  #889 pc 5160
	addi	%x2, %x2, -192  #889 pc 5164
	lw	%x1, 188(%x2) #889 pc 5168
	flw	%f2, 128(%x2)  #889 pc 5172
	fmul	%f0, %f2, %f0  #889 pc 5176
	flw	%f4, 176(%x2)  #889 pc 5180
	fadd	%f0, %f4, %f0  #889 pc 5184
	flw	%f4, 96(%x2)  #889 pc 5188
	fsw	%f0, 184(%x2)  #889 pc 5192
	mv	%f0, %f4 #pc 5196
	mv	%f1, %f5 #pc 5200
	sw	%x1, 196(%x2)  #889 pc 5204
	addi	%x2, %x2, 200  #889 pc 5208
	jal	%x1, fsqr.2536  #889 pc 5212
	addi	%x2, %x2, -200  #889 pc 5216
	lw	%x1, 196(%x2) #889 pc 5220
	flw	%f2, 112(%x2)  #889 pc 5224
	fmul	%f0, %f2, %f0  #889 pc 5228
	flw	%f4, 184(%x2)  #889 pc 5232
	fadd	%f0, %f4, %f0  #889 pc 5236
	lw	%x5, 0(%x2)  #889 pc 5240
	fsw	%f0, 16(%x5) #889 pc 5244
	mv	%f0, l.6476  #0 pc 5248
	flw	%f4, 72(%x2)  #892 pc 5252
	flw	%f6, 136(%x2)  #892 pc 5256
	fmul	%f8, %f6, %f4  #892 pc 5260
	flw	%f10, 56(%x2)  #892 pc 5264
	fmul	%f8, %f8, %f10  #892 pc 5268
	flw	%f12, 64(%x2)  #892 pc 5272
	flw	%f14, 128(%x2)  #892 pc 5276
	fmul	%f16, %f14, %f12  #892 pc 5280
	flw	%f18, 48(%x2)  #892 pc 5284
	fmul	%f16, %f16, %f18  #892 pc 5288
	fadd	%f8, %f8, %f16  #892 pc 5292
	flw	%f16, 104(%x2)  #892 pc 5296
	fmul	%f20, %f2, %f16  #892 pc 5300
	flw	%f22, 96(%x2)  #892 pc 5304
	fmul	%f20, %f20, %f22  #892 pc 5308
	fadd	%f8, %f8, %f20  #892 pc 5312
	fmul	%f0, %f0, %f8  #892 pc 5316
	lw	%x5, 4(%x2)  #892 pc 5320
	fsw	%f0, 0(%x5) #892 pc 5324
	mv	%f0, l.6476  #0 pc 5328
	flw	%f8, 88(%x2)  #893 pc 5332
	fmul	%f20, %f6, %f8  #893 pc 5336
	fmul	%f10, %f20, %f10  #893 pc 5340
	flw	%f20, 80(%x2)  #893 pc 5344
	fmul	%f24, %f14, %f20  #893 pc 5348
	fmul	%f18, %f24, %f18  #893 pc 5352
	fadd	%f10, %f10, %f18  #893 pc 5356
	flw	%f18, 120(%x2)  #893 pc 5360
	fmul	%f24, %f2, %f18  #893 pc 5364
	fmul	%f22, %f24, %f22  #893 pc 5368
	fadd	%f10, %f10, %f22  #893 pc 5372
	fmul	%f0, %f0, %f10  #893 pc 5376
	fsw	%f0, 8(%x5) #893 pc 5380
	mv	%f0, l.6476  #0 pc 5384
	fmul	%f6, %f6, %f8  #894 pc 5388
	fmul	%f4, %f6, %f4  #894 pc 5392
	fmul	%f6, %f14, %f20  #894 pc 5396
	fmul	%f6, %f6, %f12  #894 pc 5400
	fadd	%f4, %f4, %f6  #894 pc 5404
	fmul	%f2, %f2, %f18  #894 pc 5408
	fmul	%f2, %f2, %f16  #894 pc 5412
	fadd	%f2, %f4, %f2  #894 pc 5416
	fmul	%f0, %f0, %f2  #894 pc 5420
	fsw	%f0, 16(%x5) #894 pc 5424
	ret #pc 5428
	nop #pc 5432
read_nth_object.2762:  #pc 5432
	lw	%x6, 4(%x22)  #0 pc 5436
	sw	%x6, 0(%x2)  #901 pc 5440
	sw	%x5, 4(%x2)  #901 pc 5444
	mv	%x5, %g0 #pc 5448
	sw	%x1, 12(%x2)  #901 pc 5452
	addi	%x2, %x2, 16  #901 pc 5456
	jal	%x1, read_int.2580  #901 pc 5460
	addi	%x2, %x2, -16  #901 pc 5464
	lw	%x1, 12(%x2) #901 pc 5468
	addi	%x24, %x0, -1  #pc 5472
	beq	%x5, %x24, 12  #902 pc 5476
	j	be_else.9236 #pc 5480
	nop #pc 5484
	addi	%x5, %x0, 0  #0 pc 5488
	ret #pc 5492
	nop #pc 5496
be_else.9236: #pc 5496
	sw	%x5, 8(%x2)  #904 pc 5500
	mv	%x5, %g0 #pc 5504
	sw	%x1, 12(%x2)  #904 pc 5508
	addi	%x2, %x2, 16  #904 pc 5512
	jal	%x1, read_int.2580  #904 pc 5516
	addi	%x2, %x2, -16  #904 pc 5520
	lw	%x1, 12(%x2) #904 pc 5524
	sw	%x5, 12(%x2)  #905 pc 5528
	mv	%x5, %g0 #pc 5532
	sw	%x1, 20(%x2)  #905 pc 5536
	addi	%x2, %x2, 24  #905 pc 5540
	jal	%x1, read_int.2580  #905 pc 5544
	addi	%x2, %x2, -24  #905 pc 5548
	lw	%x1, 20(%x2) #905 pc 5552
	sw	%x5, 16(%x2)  #906 pc 5556
	mv	%x5, %g0 #pc 5560
	sw	%x1, 20(%x2)  #906 pc 5564
	addi	%x2, %x2, 24  #906 pc 5568
	jal	%x1, read_int.2580  #906 pc 5572
	addi	%x2, %x2, -24  #906 pc 5576
	lw	%x1, 20(%x2) #906 pc 5580
	addi	%x6, %x0, 3  #0 pc 5584
	mv	%f0, l.6293  #0 pc 5588
	sw	%x5, 20(%x2)  #908 pc 5592
	mv	%x5, %x6 #pc 5596
	sw	%x1, 28(%x2)  #908 pc 5600
	addi	%x2, %x2, 32  #908 pc 5604
	jal	%x1, create_float_array.2600  #908 pc 5608
	addi	%x2, %x2, -32  #908 pc 5612
	lw	%x1, 28(%x2) #908 pc 5616
	sw	%x5, 24(%x2)  #909 pc 5620
	mv	%x5, %g0 #pc 5624
	sw	%x1, 28(%x2)  #909 pc 5628
	addi	%x2, %x2, 32  #909 pc 5632
	jal	%x1, read_float.2587  #909 pc 5636
	addi	%x2, %x2, -32  #909 pc 5640
	lw	%x1, 28(%x2) #909 pc 5644
	lw	%x5, 24(%x2)  #909 pc 5648
	fsw	%f0, 0(%x5) #909 pc 5652
	mv	%x5, %g0 #pc 5656
	sw	%x1, 28(%x2)  #910 pc 5660
	addi	%x2, %x2, 32  #910 pc 5664
	jal	%x1, read_float.2587  #910 pc 5668
	addi	%x2, %x2, -32  #910 pc 5672
	lw	%x1, 28(%x2) #910 pc 5676
	lw	%x5, 24(%x2)  #910 pc 5680
	fsw	%f0, 8(%x5) #910 pc 5684
	mv	%x5, %g0 #pc 5688
	sw	%x1, 28(%x2)  #911 pc 5692
	addi	%x2, %x2, 32  #911 pc 5696
	jal	%x1, read_float.2587  #911 pc 5700
	addi	%x2, %x2, -32  #911 pc 5704
	lw	%x1, 28(%x2) #911 pc 5708
	lw	%x5, 24(%x2)  #911 pc 5712
	fsw	%f0, 16(%x5) #911 pc 5716
	addi	%x6, %x0, 3  #0 pc 5720
	mv	%f0, l.6293  #0 pc 5724
	mv	%x5, %x6 #pc 5728
	sw	%x1, 28(%x2)  #913 pc 5732
	addi	%x2, %x2, 32  #913 pc 5736
	jal	%x1, create_float_array.2600  #913 pc 5740
	addi	%x2, %x2, -32  #913 pc 5744
	lw	%x1, 28(%x2) #913 pc 5748
	sw	%x5, 28(%x2)  #914 pc 5752
	mv	%x5, %g0 #pc 5756
	sw	%x1, 36(%x2)  #914 pc 5760
	addi	%x2, %x2, 40  #914 pc 5764
	jal	%x1, read_float.2587  #914 pc 5768
	addi	%x2, %x2, -40  #914 pc 5772
	lw	%x1, 36(%x2) #914 pc 5776
	lw	%x5, 28(%x2)  #914 pc 5780
	fsw	%f0, 0(%x5) #914 pc 5784
	mv	%x5, %g0 #pc 5788
	sw	%x1, 36(%x2)  #915 pc 5792
	addi	%x2, %x2, 40  #915 pc 5796
	jal	%x1, read_float.2587  #915 pc 5800
	addi	%x2, %x2, -40  #915 pc 5804
	lw	%x1, 36(%x2) #915 pc 5808
	lw	%x5, 28(%x2)  #915 pc 5812
	fsw	%f0, 8(%x5) #915 pc 5816
	mv	%x5, %g0 #pc 5820
	sw	%x1, 36(%x2)  #916 pc 5824
	addi	%x2, %x2, 40  #916 pc 5828
	jal	%x1, read_float.2587  #916 pc 5832
	addi	%x2, %x2, -40  #916 pc 5836
	lw	%x1, 36(%x2) #916 pc 5840
	lw	%x5, 28(%x2)  #916 pc 5844
	fsw	%f0, 16(%x5) #916 pc 5848
	mv	%x5, %g0 #pc 5852
	sw	%x1, 36(%x2)  #918 pc 5856
	addi	%x2, %x2, 40  #918 pc 5860
	jal	%x1, read_float.2587  #918 pc 5864
	addi	%x2, %x2, -40  #918 pc 5868
	lw	%x1, 36(%x2) #918 pc 5872
	sw	%x1, 36(%x2)  #918 pc 5876
	addi	%x2, %x2, 40  #918 pc 5880
	jal	%x1, fisneg.2532  #918 pc 5884
	addi	%x2, %x2, -40  #918 pc 5888
	lw	%x1, 36(%x2) #918 pc 5892
	addi	%x6, %x0, 2  #0 pc 5896
	mv	%f0, l.6293  #0 pc 5900
	sw	%x5, 32(%x2)  #920 pc 5904
	mv	%x5, %x6 #pc 5908
	sw	%x1, 36(%x2)  #920 pc 5912
	addi	%x2, %x2, 40  #920 pc 5916
	jal	%x1, create_float_array.2600  #920 pc 5920
	addi	%x2, %x2, -40  #920 pc 5924
	lw	%x1, 36(%x2) #920 pc 5928
	sw	%x5, 36(%x2)  #921 pc 5932
	mv	%x5, %g0 #pc 5936
	sw	%x1, 44(%x2)  #921 pc 5940
	addi	%x2, %x2, 48  #921 pc 5944
	jal	%x1, read_float.2587  #921 pc 5948
	addi	%x2, %x2, -48  #921 pc 5952
	lw	%x1, 44(%x2) #921 pc 5956
	lw	%x5, 36(%x2)  #921 pc 5960
	fsw	%f0, 0(%x5) #921 pc 5964
	mv	%x5, %g0 #pc 5968
	sw	%x1, 44(%x2)  #922 pc 5972
	addi	%x2, %x2, 48  #922 pc 5976
	jal	%x1, read_float.2587  #922 pc 5980
	addi	%x2, %x2, -48  #922 pc 5984
	lw	%x1, 44(%x2) #922 pc 5988
	lw	%x5, 36(%x2)  #922 pc 5992
	fsw	%f0, 8(%x5) #922 pc 5996
	addi	%x6, %x0, 3  #0 pc 6000
	mv	%f0, l.6293  #0 pc 6004
	mv	%x5, %x6 #pc 6008
	sw	%x1, 44(%x2)  #924 pc 6012
	addi	%x2, %x2, 48  #924 pc 6016
	jal	%x1, create_float_array.2600  #924 pc 6020
	addi	%x2, %x2, -48  #924 pc 6024
	lw	%x1, 44(%x2) #924 pc 6028
	sw	%x5, 40(%x2)  #925 pc 6032
	mv	%x5, %g0 #pc 6036
	sw	%x1, 44(%x2)  #925 pc 6040
	addi	%x2, %x2, 48  #925 pc 6044
	jal	%x1, read_float.2587  #925 pc 6048
	addi	%x2, %x2, -48  #925 pc 6052
	lw	%x1, 44(%x2) #925 pc 6056
	lw	%x5, 40(%x2)  #925 pc 6060
	fsw	%f0, 0(%x5) #925 pc 6064
	mv	%x5, %g0 #pc 6068
	sw	%x1, 44(%x2)  #926 pc 6072
	addi	%x2, %x2, 48  #926 pc 6076
	jal	%x1, read_float.2587  #926 pc 6080
	addi	%x2, %x2, -48  #926 pc 6084
	lw	%x1, 44(%x2) #926 pc 6088
	lw	%x5, 40(%x2)  #926 pc 6092
	fsw	%f0, 8(%x5) #926 pc 6096
	mv	%x5, %g0 #pc 6100
	sw	%x1, 44(%x2)  #927 pc 6104
	addi	%x2, %x2, 48  #927 pc 6108
	jal	%x1, read_float.2587  #927 pc 6112
	addi	%x2, %x2, -48  #927 pc 6116
	lw	%x1, 44(%x2) #927 pc 6120
	lw	%x5, 40(%x2)  #927 pc 6124
	fsw	%f0, 16(%x5) #927 pc 6128
	addi	%x6, %x0, 3  #0 pc 6132
	mv	%f0, l.6293  #0 pc 6136
	mv	%x5, %x6 #pc 6140
	sw	%x1, 44(%x2)  #929 pc 6144
	addi	%x2, %x2, 48  #929 pc 6148
	jal	%x1, create_float_array.2600  #929 pc 6152
	addi	%x2, %x2, -48  #929 pc 6156
	lw	%x1, 44(%x2) #929 pc 6160
	lw	%x6, 20(%x2)  #930 pc 6164
	beq	%x6, %x0, 12  #930 pc 6168
	j	be_else.9237 #pc 6172
	nop #pc 6176
	j	be_cont.9238 #pc 6180
	nop #pc 6184
be_else.9237: #pc 6184
	sw	%x5, 44(%x2)  #932 pc 6188
	mv	%x5, %g0 #pc 6192
	sw	%x1, 52(%x2)  #932 pc 6196
	addi	%x2, %x2, 56  #932 pc 6200
	jal	%x1, read_float.2587  #932 pc 6204
	addi	%x2, %x2, -56  #932 pc 6208
	lw	%x1, 52(%x2) #932 pc 6212
	sw	%x1, 52(%x2)  #932 pc 6216
	addi	%x2, %x2, 56  #932 pc 6220
	jal	%x1, rad.2753  #932 pc 6224
	addi	%x2, %x2, -56  #932 pc 6228
	lw	%x1, 52(%x2) #932 pc 6232
	lw	%x5, 44(%x2)  #932 pc 6236
	fsw	%f0, 0(%x5) #932 pc 6240
	mv	%x5, %g0 #pc 6244
	sw	%x1, 52(%x2)  #933 pc 6248
	addi	%x2, %x2, 56  #933 pc 6252
	jal	%x1, read_float.2587  #933 pc 6256
	addi	%x2, %x2, -56  #933 pc 6260
	lw	%x1, 52(%x2) #933 pc 6264
	sw	%x1, 52(%x2)  #933 pc 6268
	addi	%x2, %x2, 56  #933 pc 6272
	jal	%x1, rad.2753  #933 pc 6276
	addi	%x2, %x2, -56  #933 pc 6280
	lw	%x1, 52(%x2) #933 pc 6284
	lw	%x5, 44(%x2)  #933 pc 6288
	fsw	%f0, 8(%x5) #933 pc 6292
	mv	%x5, %g0 #pc 6296
	sw	%x1, 52(%x2)  #934 pc 6300
	addi	%x2, %x2, 56  #934 pc 6304
	jal	%x1, read_float.2587  #934 pc 6308
	addi	%x2, %x2, -56  #934 pc 6312
	lw	%x1, 52(%x2) #934 pc 6316
	sw	%x1, 52(%x2)  #934 pc 6320
	addi	%x2, %x2, 56  #934 pc 6324
	jal	%x1, rad.2753  #934 pc 6328
	addi	%x2, %x2, -56  #934 pc 6332
	lw	%x1, 52(%x2) #934 pc 6336
	lw	%x5, 44(%x2)  #934 pc 6340
	fsw	%f0, 16(%x5) #934 pc 6344
be_cont.9238: #pc 6344
	lw	%x6, 12(%x2)  #941 pc 6348
	addi	%x24, %x0, 2  #pc 6352
	beq	%x6, %x24, 12  #941 pc 6356
	j	be_else.9239 #pc 6360
	nop #pc 6364
	addi	%x7, %x0, 1  #0 pc 6368
	j	be_cont.9240 #pc 6372
	nop #pc 6376
be_else.9239: #pc 6376
	lw	%x7, 32(%x2)  #941 pc 6380
be_cont.9240: #pc 6380
	addi	%x9, %x0, 4  #0 pc 6384
	mv	%f0, l.6293  #0 pc 6388
	sw	%x7, 48(%x2)  #942 pc 6392
	sw	%x5, 44(%x2)  #942 pc 6396
	mv	%x5, %x9 #pc 6400
	sw	%x1, 52(%x2)  #942 pc 6404
	addi	%x2, %x2, 56  #942 pc 6408
	jal	%x1, create_float_array.2600  #942 pc 6412
	addi	%x2, %x2, -56  #942 pc 6416
	lw	%x1, 52(%x2) #942 pc 6420
	mv	%x6, %x3  #945 pc 6424
	addi	%x3, %x3, 48  #945 pc 6428
	sw	%x5, 40(%x6)  #945 pc 6432
	lw	%x5, 44(%x2)  #945 pc 6436
	sw	%x5, 36(%x6)  #945 pc 6440
	lw	%x7, 40(%x2)  #945 pc 6444
	sw	%x7, 32(%x6)  #945 pc 6448
	lw	%x7, 36(%x2)  #945 pc 6452
	sw	%x7, 28(%x6)  #945 pc 6456
	lw	%x7, 48(%x2)  #945 pc 6460
	sw	%x7, 24(%x6)  #945 pc 6464
	lw	%x7, 28(%x2)  #945 pc 6468
	sw	%x7, 20(%x6)  #945 pc 6472
	lw	%x7, 24(%x2)  #945 pc 6476
	sw	%x7, 16(%x6)  #945 pc 6480
	lw	%x9, 20(%x2)  #945 pc 6484
	sw	%x9, 12(%x6)  #945 pc 6488
	lw	%x10, 16(%x2)  #945 pc 6492
	sw	%x10, 8(%x6)  #945 pc 6496
	lw	%x10, 12(%x2)  #945 pc 6500
	sw	%x10, 4(%x6)  #945 pc 6504
	lw	%x11, 8(%x2)  #945 pc 6508
	sw	%x11, 0(%x6)  #945 pc 6512
	lw	%x11, 4(%x2)  #953 pc 6516
	slli	%x11, %x11, 2  #953 pc 6520
	lw	%x12, 0(%x2)  #953 pc 6524
	sw	%x6, %x11(%x12)  #953 pc 6528
	addi	%x24, %x0, 3  #pc 6532
	beq	%x10, %x24, 12  #955 pc 6536
	j	be_else.9241 #pc 6540
	nop #pc 6544
	flw	%f0, 0(%x7)  #958 pc 6548
	fsw	%f0, 56(%x2)  #959 pc 6552
	sw	%x1, 68(%x2)  #959 pc 6556
	addi	%x2, %x2, 72  #959 pc 6560
	jal	%x1, fiszero.2528  #959 pc 6564
	addi	%x2, %x2, -72  #959 pc 6568
	lw	%x1, 68(%x2) #959 pc 6572
	beq	%x5, %x0, 12  #959 pc 6576
	j	be_else.9244 #pc 6580
	nop #pc 6584
	flw	%f0, 56(%x2)  #959 pc 6588
	sw	%x1, 68(%x2)  #959 pc 6592
	addi	%x2, %x2, 72  #959 pc 6596
	jal	%x1, sgn.2636  #959 pc 6600
	addi	%x2, %x2, -72  #959 pc 6604
	lw	%x1, 68(%x2) #959 pc 6608
	flw	%f2, 56(%x2)  #959 pc 6612
	fsw	%f0, 64(%x2)  #959 pc 6616
	mv	%f0, %f2 #pc 6620
	mv	%f1, %f3 #pc 6624
	sw	%x1, 76(%x2)  #959 pc 6628
	addi	%x2, %x2, 80  #959 pc 6632
	jal	%x1, fsqr.2536  #959 pc 6636
	addi	%x2, %x2, -80  #959 pc 6640
	lw	%x1, 76(%x2) #959 pc 6644
	flw	%f2, 64(%x2)  #959 pc 6648
	fdiv	%f0, %f2, %f0  #959 pc 6652
	j	be_cont.9245 #pc 6656
	nop #pc 6660
be_else.9244: #pc 6660
	mv	%f0, l.6293  #0 pc 6664
be_cont.9245: #pc 6664
	lw	%x5, 24(%x2)  #959 pc 6668
	fsw	%f0, 0(%x5) #959 pc 6672
	flw	%f0, 8(%x5)  #960 pc 6676
	fsw	%f0, 72(%x2)  #961 pc 6680
	sw	%x1, 84(%x2)  #961 pc 6684
	addi	%x2, %x2, 88  #961 pc 6688
	jal	%x1, fiszero.2528  #961 pc 6692
	addi	%x2, %x2, -88  #961 pc 6696
	lw	%x1, 84(%x2) #961 pc 6700
	beq	%x5, %x0, 12  #961 pc 6704
	j	be_else.9246 #pc 6708
	nop #pc 6712
	flw	%f0, 72(%x2)  #961 pc 6716
	sw	%x1, 84(%x2)  #961 pc 6720
	addi	%x2, %x2, 88  #961 pc 6724
	jal	%x1, sgn.2636  #961 pc 6728
	addi	%x2, %x2, -88  #961 pc 6732
	lw	%x1, 84(%x2) #961 pc 6736
	flw	%f2, 72(%x2)  #961 pc 6740
	fsw	%f0, 80(%x2)  #961 pc 6744
	mv	%f0, %f2 #pc 6748
	mv	%f1, %f3 #pc 6752
	sw	%x1, 92(%x2)  #961 pc 6756
	addi	%x2, %x2, 96  #961 pc 6760
	jal	%x1, fsqr.2536  #961 pc 6764
	addi	%x2, %x2, -96  #961 pc 6768
	lw	%x1, 92(%x2) #961 pc 6772
	flw	%f2, 80(%x2)  #961 pc 6776
	fdiv	%f0, %f2, %f0  #961 pc 6780
	j	be_cont.9247 #pc 6784
	nop #pc 6788
be_else.9246: #pc 6788
	mv	%f0, l.6293  #0 pc 6792
be_cont.9247: #pc 6792
	lw	%x5, 24(%x2)  #961 pc 6796
	fsw	%f0, 8(%x5) #961 pc 6800
	flw	%f0, 16(%x5)  #962 pc 6804
	fsw	%f0, 88(%x2)  #963 pc 6808
	sw	%x1, 100(%x2)  #963 pc 6812
	addi	%x2, %x2, 104  #963 pc 6816
	jal	%x1, fiszero.2528  #963 pc 6820
	addi	%x2, %x2, -104  #963 pc 6824
	lw	%x1, 100(%x2) #963 pc 6828
	beq	%x5, %x0, 12  #963 pc 6832
	j	be_else.9248 #pc 6836
	nop #pc 6840
	flw	%f0, 88(%x2)  #963 pc 6844
	sw	%x1, 100(%x2)  #963 pc 6848
	addi	%x2, %x2, 104  #963 pc 6852
	jal	%x1, sgn.2636  #963 pc 6856
	addi	%x2, %x2, -104  #963 pc 6860
	lw	%x1, 100(%x2) #963 pc 6864
	flw	%f2, 88(%x2)  #963 pc 6868
	fsw	%f0, 96(%x2)  #963 pc 6872
	mv	%f0, %f2 #pc 6876
	mv	%f1, %f3 #pc 6880
	sw	%x1, 108(%x2)  #963 pc 6884
	addi	%x2, %x2, 112  #963 pc 6888
	jal	%x1, fsqr.2536  #963 pc 6892
	addi	%x2, %x2, -112  #963 pc 6896
	lw	%x1, 108(%x2) #963 pc 6900
	flw	%f2, 96(%x2)  #963 pc 6904
	fdiv	%f0, %f2, %f0  #963 pc 6908
	j	be_cont.9249 #pc 6912
	nop #pc 6916
be_else.9248: #pc 6916
	mv	%f0, l.6293  #0 pc 6920
be_cont.9249: #pc 6920
	lw	%x5, 24(%x2)  #963 pc 6924
	fsw	%f0, 16(%x5) #963 pc 6928
	j	be_cont.9242 #pc 6932
	nop #pc 6936
be_else.9241: #pc 6936
	addi	%x24, %x0, 2  #pc 6940
	beq	%x10, %x24, 12  #965 pc 6944
	j	be_else.9250 #pc 6948
	nop #pc 6952
	lw	%x6, 32(%x2)  #967 pc 6956
	beq	%x6, %x0, 12  #967 pc 6960
	j	be_else.9252 #pc 6964
	nop #pc 6968
	addi	%x6, %x0, 1  #0 pc 6972
	j	be_cont.9253 #pc 6976
	nop #pc 6980
be_else.9252: #pc 6980
	addi	%x6, %x0, 0  #0 pc 6984
be_cont.9253: #pc 6984
	mv	%x5, %x7 #pc 6988
	sw	%x1, 108(%x2)  #967 pc 6992
	addi	%x2, %x2, 112  #967 pc 6996
	jal	%x1, vecunit_sgn.2657  #967 pc 7000
	addi	%x2, %x2, -112  #967 pc 7004
	lw	%x1, 108(%x2) #967 pc 7008
	j	be_cont.9251 #pc 7012
	nop #pc 7016
be_else.9250: #pc 7016
be_cont.9251: #pc 7016
be_cont.9242: #pc 7016
	lw	%x5, 20(%x2)  #971 pc 7020
	beq	%x5, %x0, 12  #971 pc 7024
	j	be_else.9254 #pc 7028
	nop #pc 7032
	j	be_cont.9255 #pc 7036
	nop #pc 7040
be_else.9254: #pc 7040
	lw	%x5, 24(%x2)  #972 pc 7044
	lw	%x6, 44(%x2)  #972 pc 7048
	sw	%x1, 108(%x2)  #972 pc 7052
	addi	%x2, %x2, 112  #972 pc 7056
	jal	%x1, rotate_quadratic_matrix.2759  #972 pc 7060
	addi	%x2, %x2, -112  #972 pc 7064
	lw	%x1, 108(%x2) #972 pc 7068
be_cont.9255: #pc 7068
	addi	%x5, %x0, 1  #0 pc 7072
	ret #pc 7076
	nop #pc 7080
read_object.2764:  #pc 7080
	lw	%x6, 8(%x22)  #0 pc 7084
	lw	%x7, 4(%x22)  #0 pc 7088
	addi	%x24, %x0, 60  #pc 7092
	bge	%x5, %x24, 12  #983 pc 7096
	j	bge_else.9256 #pc 7100
	nop #pc 7104
	ret #pc 7108
	nop #pc 7112
bge_else.9256: #pc 7112
	sw	%x22, 0(%x2)  #984 pc 7116
	sw	%x7, 4(%x2)  #984 pc 7120
	sw	%x5, 8(%x2)  #984 pc 7124
	mv	%x22, %x6 #pc 7128
	sw	%x1, 12(%x2)  #984 pc 7132
	lw	%x23, 0(%x22)  #984 pc 7136
	addi	%x2, %x2, 16  #984 pc 7140
	jalr	%x1, %x23, 0  #984 pc 7144
	addi	%x2, %x2, -16  #984 pc 7148
	lw	%x1, 12(%x2)  #984 pc 7152
	beq	%x5, %x0, 12  #984 pc 7156
	j	be_else.9258 #pc 7160
	nop #pc 7164
	lw	%x5, 4(%x2)  #987 pc 7168
	lw	%x6, 8(%x2)  #987 pc 7172
	sw	%x6, 0(%x5)  #987 pc 7176
	ret #pc 7180
	nop #pc 7184
be_else.9258: #pc 7184
	lw	%x5, 8(%x2)  #985 pc 7188
	addi	%x5, %x5, 1  #985 pc 7192
	lw	%x22, 0(%x2)  #985 pc 7196
	lw	0(%x23), %x22  #985 pc 7200
	jalr	%x0, %x23, 0  #985 pc 7204
	nop #pc 7208
read_all_object.2766:  #pc 7208
	lw	%x22, 4(%x22)  #0 pc 7212
	addi	%x5, %x0, 0  #0 pc 7216
	lw	0(%x23), %x22  #992 pc 7220
	jalr	%x0, %x23, 0  #992 pc 7224
	nop #pc 7228
read_net_item.2768:  #pc 7228
	sw	%x5, 0(%x2)  #999 pc 7232
	mv	%x5, %g0 #pc 7236
	sw	%x1, 4(%x2)  #999 pc 7240
	addi	%x2, %x2, 8  #999 pc 7244
	jal	%x1, read_int.2580  #999 pc 7248
	addi	%x2, %x2, -8  #999 pc 7252
	lw	%x1, 4(%x2) #999 pc 7256
	addi	%x24, %x0, -1  #pc 7260
	beq	%x5, %x24, 12  #1000 pc 7264
	j	be_else.9260 #pc 7268
	nop #pc 7272
	lw	%x5, 0(%x2)  #1000 pc 7276
	addi	%x5, %x5, 1  #1000 pc 7280
	addi	%x6, %x0, -1  #0 pc 7284
	j	create_array.2593  #1000 pc 7288
	nop #pc 7292
be_else.9260: #pc 7292
	lw	%x6, 0(%x2)  #1002 pc 7296
	addi	%x7, %x6, 1  #1002 pc 7300
	sw	%x5, 4(%x2)  #1002 pc 7304
	mv	%x5, %x7 #pc 7308
	sw	%x1, 12(%x2)  #1002 pc 7312
	addi	%x2, %x2, 16  #1002 pc 7316
	jal	%x1, read_net_item.2768  #1002 pc 7320
	addi	%x2, %x2, -16  #1002 pc 7324
	lw	%x1, 12(%x2) #1002 pc 7328
	lw	%x6, 0(%x2)  #1003 pc 7332
	slli	%x6, %x6, 2  #1003 pc 7336
	lw	%x7, 4(%x2)  #1003 pc 7340
	sw	%x7, %x6(%x5)  #1003 pc 7344
	ret #pc 7348
	nop #pc 7352
read_or_network.2770:  #pc 7352
	addi	%x6, %x0, 0  #0 pc 7356
	sw	%x5, 0(%x2)  #1007 pc 7360
	mv	%x5, %x6 #pc 7364
	sw	%x1, 4(%x2)  #1007 pc 7368
	addi	%x2, %x2, 8  #1007 pc 7372
	jal	%x1, read_net_item.2768  #1007 pc 7376
	addi	%x2, %x2, -8  #1007 pc 7380
	lw	%x1, 4(%x2) #1007 pc 7384
	mv	%x6, %x5  #1007 pc 7388
	lw	%x5, 0(%x6)  #1008 pc 7392
	addi	%x24, %x0, -1  #pc 7396
	beq	%x5, %x24, 12  #1008 pc 7400
	j	be_else.9261 #pc 7404
	nop #pc 7408
	lw	%x5, 0(%x2)  #1009 pc 7412
	addi	%x5, %x5, 1  #1009 pc 7416
	j	create_array.2593  #1009 pc 7420
	nop #pc 7424
be_else.9261: #pc 7424
	lw	%x5, 0(%x2)  #1011 pc 7428
	addi	%x7, %x5, 1  #1011 pc 7432
	sw	%x6, 4(%x2)  #1011 pc 7436
	mv	%x5, %x7 #pc 7440
	sw	%x1, 12(%x2)  #1011 pc 7444
	addi	%x2, %x2, 16  #1011 pc 7448
	jal	%x1, read_or_network.2770  #1011 pc 7452
	addi	%x2, %x2, -16  #1011 pc 7456
	lw	%x1, 12(%x2) #1011 pc 7460
	lw	%x6, 0(%x2)  #1012 pc 7464
	slli	%x6, %x6, 2  #1012 pc 7468
	lw	%x7, 4(%x2)  #1012 pc 7472
	sw	%x7, %x6(%x5)  #1012 pc 7476
	ret #pc 7480
	nop #pc 7484
read_and_network.2772:  #pc 7484
	lw	%x6, 4(%x22)  #0 pc 7488
	addi	%x7, %x0, 0  #0 pc 7492
	sw	%x22, 0(%x2)  #1016 pc 7496
	sw	%x6, 4(%x2)  #1016 pc 7500
	sw	%x5, 8(%x2)  #1016 pc 7504
	mv	%x5, %x7 #pc 7508
	sw	%x1, 12(%x2)  #1016 pc 7512
	addi	%x2, %x2, 16  #1016 pc 7516
	jal	%x1, read_net_item.2768  #1016 pc 7520
	addi	%x2, %x2, -16  #1016 pc 7524
	lw	%x1, 12(%x2) #1016 pc 7528
	lw	%x6, 0(%x5)  #1017 pc 7532
	addi	%x24, %x0, -1  #pc 7536
	beq	%x6, %x24, 12  #1017 pc 7540
	j	be_else.9262 #pc 7544
	nop #pc 7548
	ret #pc 7552
	nop #pc 7556
be_else.9262: #pc 7556
	lw	%x6, 8(%x2)  #1019 pc 7560
	slli	%x7, %x6, 2  #1019 pc 7564
	lw	%x9, 4(%x2)  #1019 pc 7568
	sw	%x5, %x7(%x9)  #1019 pc 7572
	addi	%x5, %x6, 1  #1020 pc 7576
	lw	%x22, 0(%x2)  #1020 pc 7580
	lw	0(%x23), %x22  #1020 pc 7584
	jalr	%x0, %x23, 0  #1020 pc 7588
	nop #pc 7592
read_parameter.2774:  #pc 7592
	lw	%x5, 20(%x22)  #0 pc 7596
	lw	%x6, 16(%x22)  #0 pc 7600
	lw	%x7, 12(%x22)  #0 pc 7604
	lw	%x9, 8(%x22)  #0 pc 7608
	lw	%x10, 4(%x22)  #0 pc 7612
	sw	%x10, 0(%x2)  #1026 pc 7616
	sw	%x7, 4(%x2)  #1026 pc 7620
	sw	%x9, 8(%x2)  #1026 pc 7624
	sw	%x6, 12(%x2)  #1026 pc 7628
	mv	%x22, %x5 #pc 7632
	mv	%x5, %g0 #pc 7636
	sw	%x1, 20(%x2)  #1026 pc 7640
	lw	%x23, 0(%x22)  #1026 pc 7644
	addi	%x2, %x2, 24  #1026 pc 7648
	jalr	%x1, %x23, 0  #1026 pc 7652
	addi	%x2, %x2, -24  #1026 pc 7656
	lw	%x1, 20(%x2)  #1026 pc 7660
	lw	%x22, 12(%x2)  #1027 pc 7664
	mv	%x5, %g0 #pc 7668
	sw	%x1, 20(%x2)  #1027 pc 7672
	lw	%x23, 0(%x22)  #1027 pc 7676
	addi	%x2, %x2, 24  #1027 pc 7680
	jalr	%x1, %x23, 0  #1027 pc 7684
	addi	%x2, %x2, -24  #1027 pc 7688
	lw	%x1, 20(%x2)  #1027 pc 7692
	lw	%x22, 8(%x2)  #1028 pc 7696
	mv	%x5, %g0 #pc 7700
	sw	%x1, 20(%x2)  #1028 pc 7704
	lw	%x23, 0(%x22)  #1028 pc 7708
	addi	%x2, %x2, 24  #1028 pc 7712
	jalr	%x1, %x23, 0  #1028 pc 7716
	addi	%x2, %x2, -24  #1028 pc 7720
	lw	%x1, 20(%x2)  #1028 pc 7724
	addi	%x5, %x0, 0  #0 pc 7728
	lw	%x22, 4(%x2)  #1029 pc 7732
	sw	%x1, 20(%x2)  #1029 pc 7736
	lw	%x23, 0(%x22)  #1029 pc 7740
	addi	%x2, %x2, 24  #1029 pc 7744
	jalr	%x1, %x23, 0  #1029 pc 7748
	addi	%x2, %x2, -24  #1029 pc 7752
	lw	%x1, 20(%x2)  #1029 pc 7756
	addi	%x5, %x0, 0  #0 pc 7760
	sw	%x1, 20(%x2)  #1030 pc 7764
	addi	%x2, %x2, 24  #1030 pc 7768
	jal	%x1, read_or_network.2770  #1030 pc 7772
	addi	%x2, %x2, -24  #1030 pc 7776
	lw	%x1, 20(%x2) #1030 pc 7780
	lw	%x6, 0(%x2)  #1030 pc 7784
	sw	%x5, 0(%x6)  #1030 pc 7788
	ret #pc 7792
	nop #pc 7796
solver_rect_surface.2776:  #pc 7796
	lw	%x11, 4(%x22)  #0 pc 7800
	slli	%x12, %x7, 3  #1050 pc 7804
	flw	%f6, %x12(%x6)  #1050 pc 7808
	sw	%x11, 0(%x2)  #1050 pc 7812
	fsw	%f4, 8(%x2)  #1050 pc 7816
	sw	%x10, 16(%x2)  #1050 pc 7820
	fsw	%f2, 24(%x2)  #1050 pc 7824
	sw	%x9, 32(%x2)  #1050 pc 7828
	fsw	%f0, 40(%x2)  #1050 pc 7832
	sw	%x6, 48(%x2)  #1050 pc 7836
	sw	%x7, 52(%x2)  #1050 pc 7840
	sw	%x5, 56(%x2)  #1050 pc 7844
	mv	%f0, %f6 #pc 7848
	mv	%f1, %f7 #pc 7852
	sw	%x1, 60(%x2)  #1050 pc 7856
	addi	%x2, %x2, 64  #1050 pc 7860
	jal	%x1, fiszero.2528  #1050 pc 7864
	addi	%x2, %x2, -64  #1050 pc 7868
	lw	%x1, 60(%x2) #1050 pc 7872
	beq	%x5, %x0, 12  #1050 pc 7876
	j	be_else.9268 #pc 7880
	nop #pc 7884
	lw	%x5, 56(%x2)  #1051 pc 7888
	sw	%x1, 60(%x2)  #1051 pc 7892
	addi	%x2, %x2, 64  #1051 pc 7896
	jal	%x1, o_param_abc.2698  #1051 pc 7900
	addi	%x2, %x2, -64  #1051 pc 7904
	lw	%x1, 60(%x2) #1051 pc 7908
	lw	%x6, 56(%x2)  #1052 pc 7912
	sw	%x5, 60(%x2)  #1052 pc 7916
	mv	%x5, %x6 #pc 7920
	sw	%x1, 68(%x2)  #1052 pc 7924
	addi	%x2, %x2, 72  #1052 pc 7928
	jal	%x1, o_isinvert.2688  #1052 pc 7932
	addi	%x2, %x2, -72  #1052 pc 7936
	lw	%x1, 68(%x2) #1052 pc 7940
	lw	%x6, 52(%x2)  #1052 pc 7944
	slli	%x7, %x6, 3  #1052 pc 7948
	lw	%x9, 48(%x2)  #1052 pc 7952
	flw	%f0, %x7(%x9)  #1052 pc 7956
	sw	%x5, 64(%x2)  #1052 pc 7960
	sw	%x1, 68(%x2)  #1052 pc 7964
	addi	%x2, %x2, 72  #1052 pc 7968
	jal	%x1, fisneg.2532  #1052 pc 7972
	addi	%x2, %x2, -72  #1052 pc 7976
	lw	%x1, 68(%x2) #1052 pc 7980
	mv	%x6, %x5  #1052 pc 7984
	lw	%x5, 64(%x2)  #1052 pc 7988
	sw	%x1, 68(%x2)  #1052 pc 7992
	addi	%x2, %x2, 72  #1052 pc 7996
	jal	%x1, xor.2633  #1052 pc 8000
	addi	%x2, %x2, -72  #1052 pc 8004
	lw	%x1, 68(%x2) #1052 pc 8008
	lw	%x6, 52(%x2)  #1052 pc 8012
	slli	%x7, %x6, 3  #1052 pc 8016
	lw	%x9, 60(%x2)  #1052 pc 8020
	flw	%f0, %x7(%x9)  #1052 pc 8024
	sw	%x1, 68(%x2)  #1052 pc 8028
	addi	%x2, %x2, 72  #1052 pc 8032
	jal	%x1, fneg_cond.2638  #1052 pc 8036
	addi	%x2, %x2, -72  #1052 pc 8040
	lw	%x1, 68(%x2) #1052 pc 8044
	flw	%f2, 40(%x2)  #1054 pc 8048
	fsub	%f0, %f0, %f2  #1054 pc 8052
	lw	%x5, 52(%x2)  #1054 pc 8056
	slli	%x5, %x5, 3  #1054 pc 8060
	lw	%x6, 48(%x2)  #1054 pc 8064
	flw	%f2, %x5(%x6)  #1054 pc 8068
	fdiv	%f0, %f0, %f2  #1054 pc 8072
	lw	%x5, 32(%x2)  #1055 pc 8076
	slli	%x7, %x5, 3  #1055 pc 8080
	flw	%f2, %x7(%x6)  #1055 pc 8084
	fmul	%f2, %f0, %f2  #1055 pc 8088
	flw	%f4, 24(%x2)  #1055 pc 8092
	fadd	%f2, %f2, %f4  #1055 pc 8096
	fabs	%f2, %f2  #1055 pc 8100
	slli	%x5, %x5, 3  #1055 pc 8104
	lw	%x7, 60(%x2)  #1055 pc 8108
	flw	%f4, %x5(%x7)  #1055 pc 8112
	fsw	%f0, 72(%x2)  #1055 pc 8116
	mv	%f0, %f2 #pc 8120
	mv	%f1, %f3 #pc 8124
	mv	%f2, %f4 #pc 8128
	mv	%f3, %f5 #pc 8132
	sw	%x1, 84(%x2)  #1055 pc 8136
	addi	%x2, %x2, 88  #1055 pc 8140
	jal	%x1, fless.2540  #1055 pc 8144
	addi	%x2, %x2, -88  #1055 pc 8148
	lw	%x1, 84(%x2) #1055 pc 8152
	beq	%x5, %x0, 12  #1055 pc 8156
	j	be_else.9270 #pc 8160
	nop #pc 8164
	addi	%x5, %x0, 0  #0 pc 8168
	ret #pc 8172
	nop #pc 8176
be_else.9270: #pc 8176
	lw	%x5, 16(%x2)  #1056 pc 8180
	slli	%x6, %x5, 3  #1056 pc 8184
	lw	%x7, 48(%x2)  #1056 pc 8188
	flw	%f0, %x6(%x7)  #1056 pc 8192
	flw	%f2, 72(%x2)  #1056 pc 8196
	fmul	%f0, %f2, %f0  #1056 pc 8200
	flw	%f4, 8(%x2)  #1056 pc 8204
	fadd	%f0, %f0, %f4  #1056 pc 8208
	fabs	%f0, %f0  #1056 pc 8212
	slli	%x5, %x5, 3  #1056 pc 8216
	lw	%x6, 60(%x2)  #1056 pc 8220
	flw	%f4, %x5(%x6)  #1056 pc 8224
	mv	%f2, %f4 #pc 8228
	mv	%f3, %f5 #pc 8232
	sw	%x1, 84(%x2)  #1056 pc 8236
	addi	%x2, %x2, 88  #1056 pc 8240
	jal	%x1, fless.2540  #1056 pc 8244
	addi	%x2, %x2, -88  #1056 pc 8248
	lw	%x1, 84(%x2) #1056 pc 8252
	beq	%x5, %x0, 12  #1056 pc 8256
	j	be_else.9271 #pc 8260
	nop #pc 8264
	addi	%x5, %x0, 0  #0 pc 8268
	ret #pc 8272
	nop #pc 8276
be_else.9271: #pc 8276
	lw	%x5, 0(%x2)  #1057 pc 8280
	flw	%f0, 72(%x2)  #1057 pc 8284
	fsw	%f0, 0(%x5) #1057 pc 8288
	addi	%x5, %x0, 1  #0 pc 8292
	ret #pc 8296
	nop #pc 8300
be_else.9268: #pc 8300
	addi	%x5, %x0, 0  #0 pc 8304
	ret #pc 8308
	nop #pc 8312
solver_rect.2785:  #pc 8312
	lw	%x22, 4(%x22)  #0 pc 8316
	addi	%x7, %x0, 0  #0 pc 8320
	addi	%x9, %x0, 1  #0 pc 8324
	addi	%x10, %x0, 2  #0 pc 8328
	fsw	%f0, 0(%x2)  #1065 pc 8332
	fsw	%f4, 8(%x2)  #1065 pc 8336
	fsw	%f2, 16(%x2)  #1065 pc 8340
	sw	%x6, 24(%x2)  #1065 pc 8344
	sw	%x5, 28(%x2)  #1065 pc 8348
	sw	%x22, 32(%x2)  #1065 pc 8352
	sw	%x1, 36(%x2)  #1065 pc 8356
	lw	%x23, 0(%x22)  #1065 pc 8360
	addi	%x2, %x2, 40  #1065 pc 8364
	jalr	%x1, %x23, 0  #1065 pc 8368
	addi	%x2, %x2, -40  #1065 pc 8372
	lw	%x1, 36(%x2)  #1065 pc 8376
	beq	%x5, %x0, 12  #1065 pc 8380
	j	be_else.9272 #pc 8384
	nop #pc 8388
	addi	%x7, %x0, 1  #0 pc 8392
	addi	%x9, %x0, 2  #0 pc 8396
	addi	%x10, %x0, 0  #0 pc 8400
	flw	%f0, 16(%x2)  #1066 pc 8404
	flw	%f2, 8(%x2)  #1066 pc 8408
	flw	%f4, 0(%x2)  #1066 pc 8412
	lw	%x5, 28(%x2)  #1066 pc 8416
	lw	%x6, 24(%x2)  #1066 pc 8420
	lw	%x22, 32(%x2)  #1066 pc 8424
	sw	%x1, 36(%x2)  #1066 pc 8428
	lw	%x23, 0(%x22)  #1066 pc 8432
	addi	%x2, %x2, 40  #1066 pc 8436
	jalr	%x1, %x23, 0  #1066 pc 8440
	addi	%x2, %x2, -40  #1066 pc 8444
	lw	%x1, 36(%x2)  #1066 pc 8448
	beq	%x5, %x0, 12  #1066 pc 8452
	j	be_else.9273 #pc 8456
	nop #pc 8460
	addi	%x7, %x0, 2  #0 pc 8464
	addi	%x9, %x0, 0  #0 pc 8468
	addi	%x10, %x0, 1  #0 pc 8472
	flw	%f0, 8(%x2)  #1067 pc 8476
	flw	%f2, 0(%x2)  #1067 pc 8480
	flw	%f4, 16(%x2)  #1067 pc 8484
	lw	%x5, 28(%x2)  #1067 pc 8488
	lw	%x6, 24(%x2)  #1067 pc 8492
	lw	%x22, 32(%x2)  #1067 pc 8496
	sw	%x1, 36(%x2)  #1067 pc 8500
	lw	%x23, 0(%x22)  #1067 pc 8504
	addi	%x2, %x2, 40  #1067 pc 8508
	jalr	%x1, %x23, 0  #1067 pc 8512
	addi	%x2, %x2, -40  #1067 pc 8516
	lw	%x1, 36(%x2)  #1067 pc 8520
	beq	%x5, %x0, 12  #1067 pc 8524
	j	be_else.9274 #pc 8528
	nop #pc 8532
	addi	%x5, %x0, 0  #0 pc 8536
	ret #pc 8540
	nop #pc 8544
be_else.9274: #pc 8544
	addi	%x5, %x0, 3  #0 pc 8548
	ret #pc 8552
	nop #pc 8556
be_else.9273: #pc 8556
	addi	%x5, %x0, 2  #0 pc 8560
	ret #pc 8564
	nop #pc 8568
be_else.9272: #pc 8568
	addi	%x5, %x0, 1  #0 pc 8572
	ret #pc 8576
	nop #pc 8580
solver_surface.2791:  #pc 8580
	lw	%x7, 4(%x22)  #1076 pc 8584
	sw	%x7, 0(%x2)  #1076 pc 8588
	fsw	%f4, 8(%x2)  #1076 pc 8592
	fsw	%f2, 16(%x2)  #1076 pc 8596
	fsw	%f0, 24(%x2)  #1076 pc 8600
	sw	%x6, 32(%x2)  #1076 pc 8604
	sw	%x1, 36(%x2)  #1076 pc 8608
	addi	%x2, %x2, 40  #1076 pc 8612
	jal	%x1, o_param_abc.2698  #1076 pc 8616
	addi	%x2, %x2, -40  #1076 pc 8620
	lw	%x1, 36(%x2) #1076 pc 8624
	mv	%x6, %x5  #1076 pc 8628
	lw	%x5, 32(%x2)  #1077 pc 8632
	sw	%x6, 36(%x2)  #1077 pc 8636
	sw	%x1, 44(%x2)  #1077 pc 8640
	addi	%x2, %x2, 48  #1077 pc 8644
	jal	%x1, veciprod.2660  #1077 pc 8648
	addi	%x2, %x2, -48  #1077 pc 8652
	lw	%x1, 44(%x2) #1077 pc 8656
	fsw	%f0, 40(%x2)  #1078 pc 8660
	sw	%x1, 52(%x2)  #1078 pc 8664
	addi	%x2, %x2, 56  #1078 pc 8668
	jal	%x1, fispos.2530  #1078 pc 8672
	addi	%x2, %x2, -56  #1078 pc 8676
	lw	%x1, 52(%x2) #1078 pc 8680
	beq	%x5, %x0, 12  #1078 pc 8684
	j	be_else.9276 #pc 8688
	nop #pc 8692
	addi	%x5, %x0, 0  #0 pc 8696
	ret #pc 8700
	nop #pc 8704
be_else.9276: #pc 8704
	flw	%f0, 24(%x2)  #1079 pc 8708
	flw	%f2, 16(%x2)  #1079 pc 8712
	flw	%f4, 8(%x2)  #1079 pc 8716
	lw	%x5, 36(%x2)  #1079 pc 8720
	sw	%x1, 52(%x2)  #1079 pc 8724
	addi	%x2, %x2, 56  #1079 pc 8728
	jal	%x1, veciprod2.2663  #1079 pc 8732
	addi	%x2, %x2, -56  #1079 pc 8736
	lw	%x1, 52(%x2) #1079 pc 8740
	sw	%x1, 52(%x2)  #1079 pc 8744
	addi	%x2, %x2, 56  #1079 pc 8748
	jal	%x1, fneg.2534  #1079 pc 8752
	addi	%x2, %x2, -56  #1079 pc 8756
	lw	%x1, 52(%x2) #1079 pc 8760
	flw	%f2, 40(%x2)  #1079 pc 8764
	fdiv	%f0, %f0, %f2  #1079 pc 8768
	lw	%x5, 0(%x2)  #1079 pc 8772
	fsw	%f0, 0(%x5) #1079 pc 8776
	addi	%x5, %x0, 1  #0 pc 8780
	ret #pc 8784
	nop #pc 8788
quadratic.2797:  #pc 8788
	fsw	%f0, 0(%x2)  #1089 pc 8792
	fsw	%f4, 8(%x2)  #1089 pc 8796
	fsw	%f2, 16(%x2)  #1089 pc 8800
	sw	%x5, 24(%x2)  #1089 pc 8804
	sw	%x1, 28(%x2)  #1089 pc 8808
	addi	%x2, %x2, 32  #1089 pc 8812
	jal	%x1, fsqr.2536  #1089 pc 8816
	addi	%x2, %x2, -32  #1089 pc 8820
	lw	%x1, 28(%x2) #1089 pc 8824
	lw	%x5, 24(%x2)  #1089 pc 8828
	fsw	%f0, 32(%x2)  #1089 pc 8832
	sw	%x1, 44(%x2)  #1089 pc 8836
	addi	%x2, %x2, 48  #1089 pc 8840
	jal	%x1, o_param_a.2692  #1089 pc 8844
	addi	%x2, %x2, -48  #1089 pc 8848
	lw	%x1, 44(%x2) #1089 pc 8852
	flw	%f2, 32(%x2)  #1089 pc 8856
	fmul	%f0, %f2, %f0  #1089 pc 8860
	flw	%f2, 16(%x2)  #1089 pc 8864
	fsw	%f0, 40(%x2)  #1089 pc 8868
	mv	%f0, %f2 #pc 8872
	mv	%f1, %f3 #pc 8876
	sw	%x1, 52(%x2)  #1089 pc 8880
	addi	%x2, %x2, 56  #1089 pc 8884
	jal	%x1, fsqr.2536  #1089 pc 8888
	addi	%x2, %x2, -56  #1089 pc 8892
	lw	%x1, 52(%x2) #1089 pc 8896
	lw	%x5, 24(%x2)  #1089 pc 8900
	fsw	%f0, 48(%x2)  #1089 pc 8904
	sw	%x1, 60(%x2)  #1089 pc 8908
	addi	%x2, %x2, 64  #1089 pc 8912
	jal	%x1, o_param_b.2694  #1089 pc 8916
	addi	%x2, %x2, -64  #1089 pc 8920
	lw	%x1, 60(%x2) #1089 pc 8924
	flw	%f2, 48(%x2)  #1089 pc 8928
	fmul	%f0, %f2, %f0  #1089 pc 8932
	flw	%f2, 40(%x2)  #1089 pc 8936
	fadd	%f0, %f2, %f0  #1089 pc 8940
	flw	%f2, 8(%x2)  #1089 pc 8944
	fsw	%f0, 56(%x2)  #1089 pc 8948
	mv	%f0, %f2 #pc 8952
	mv	%f1, %f3 #pc 8956
	sw	%x1, 68(%x2)  #1089 pc 8960
	addi	%x2, %x2, 72  #1089 pc 8964
	jal	%x1, fsqr.2536  #1089 pc 8968
	addi	%x2, %x2, -72  #1089 pc 8972
	lw	%x1, 68(%x2) #1089 pc 8976
	lw	%x5, 24(%x2)  #1089 pc 8980
	fsw	%f0, 64(%x2)  #1089 pc 8984
	sw	%x1, 76(%x2)  #1089 pc 8988
	addi	%x2, %x2, 80  #1089 pc 8992
	jal	%x1, o_param_c.2696  #1089 pc 8996
	addi	%x2, %x2, -80  #1089 pc 9000
	lw	%x1, 76(%x2) #1089 pc 9004
	flw	%f2, 64(%x2)  #1089 pc 9008
	fmul	%f0, %f2, %f0  #1089 pc 9012
	flw	%f2, 56(%x2)  #1089 pc 9016
	fadd	%f0, %f2, %f0  #1089 pc 9020
	lw	%x5, 24(%x2)  #1091 pc 9024
	fsw	%f0, 72(%x2)  #1091 pc 9028
	sw	%x1, 84(%x2)  #1091 pc 9032
	addi	%x2, %x2, 88  #1091 pc 9036
	jal	%x1, o_isrot.2690  #1091 pc 9040
	addi	%x2, %x2, -88  #1091 pc 9044
	lw	%x1, 84(%x2) #1091 pc 9048
	beq	%x5, %x0, 12  #1091 pc 9052
	j	be_else.9278 #pc 9056
	nop #pc 9060
	flw	%f0, 72(%x2)  #1092 pc 9064
	ret #pc 9068
	nop #pc 9072
be_else.9278: #pc 9072
	flw	%f0, 8(%x2)  #1095 pc 9076
	flw	%f2, 16(%x2)  #1095 pc 9080
	fmul	%f4, %f2, %f0  #1095 pc 9084
	lw	%x5, 24(%x2)  #1095 pc 9088
	fsw	%f4, 80(%x2)  #1095 pc 9092
	sw	%x1, 92(%x2)  #1095 pc 9096
	addi	%x2, %x2, 96  #1095 pc 9100
	jal	%x1, o_param_r1.2716  #1095 pc 9104
	addi	%x2, %x2, -96  #1095 pc 9108
	lw	%x1, 92(%x2) #1095 pc 9112
	flw	%f2, 80(%x2)  #1095 pc 9116
	fmul	%f0, %f2, %f0  #1095 pc 9120
	flw	%f2, 72(%x2)  #1094 pc 9124
	fadd	%f0, %f2, %f0  #1094 pc 9128
	flw	%f2, 0(%x2)  #1096 pc 9132
	flw	%f4, 8(%x2)  #1096 pc 9136
	fmul	%f4, %f4, %f2  #1096 pc 9140
	lw	%x5, 24(%x2)  #1096 pc 9144
	fsw	%f0, 88(%x2)  #1096 pc 9148
	fsw	%f4, 96(%x2)  #1096 pc 9152
	sw	%x1, 108(%x2)  #1096 pc 9156
	addi	%x2, %x2, 112  #1096 pc 9160
	jal	%x1, o_param_r2.2718  #1096 pc 9164
	addi	%x2, %x2, -112  #1096 pc 9168
	lw	%x1, 108(%x2) #1096 pc 9172
	flw	%f2, 96(%x2)  #1096 pc 9176
	fmul	%f0, %f2, %f0  #1096 pc 9180
	flw	%f2, 88(%x2)  #1094 pc 9184
	fadd	%f0, %f2, %f0  #1094 pc 9188
	flw	%f2, 16(%x2)  #1097 pc 9192
	flw	%f4, 0(%x2)  #1097 pc 9196
	fmul	%f2, %f4, %f2  #1097 pc 9200
	lw	%x5, 24(%x2)  #1097 pc 9204
	fsw	%f0, 104(%x2)  #1097 pc 9208
	fsw	%f2, 112(%x2)  #1097 pc 9212
	sw	%x1, 124(%x2)  #1097 pc 9216
	addi	%x2, %x2, 128  #1097 pc 9220
	jal	%x1, o_param_r3.2720  #1097 pc 9224
	addi	%x2, %x2, -128  #1097 pc 9228
	lw	%x1, 124(%x2) #1097 pc 9232
	flw	%f2, 112(%x2)  #1097 pc 9236
	fmul	%f0, %f2, %f0  #1097 pc 9240
	flw	%f2, 104(%x2)  #1094 pc 9244
	fadd	%f0, %f2, %f0  #1094 pc 9248
	ret #pc 9252
	nop #pc 9256
bilinear.2802:  #pc 9256
	fmul	%f12, %f0, %f6  #1103 pc 9260
	fsw	%f6, 0(%x2)  #1103 pc 9264
	fsw	%f0, 8(%x2)  #1103 pc 9268
	fsw	%f10, 16(%x2)  #1103 pc 9272
	fsw	%f4, 24(%x2)  #1103 pc 9276
	sw	%x5, 32(%x2)  #1103 pc 9280
	fsw	%f8, 40(%x2)  #1103 pc 9284
	fsw	%f2, 48(%x2)  #1103 pc 9288
	fsw	%f12, 56(%x2)  #1103 pc 9292
	sw	%x1, 68(%x2)  #1103 pc 9296
	addi	%x2, %x2, 72  #1103 pc 9300
	jal	%x1, o_param_a.2692  #1103 pc 9304
	addi	%x2, %x2, -72  #1103 pc 9308
	lw	%x1, 68(%x2) #1103 pc 9312
	flw	%f2, 56(%x2)  #1103 pc 9316
	fmul	%f0, %f2, %f0  #1103 pc 9320
	flw	%f2, 40(%x2)  #1104 pc 9324
	flw	%f4, 48(%x2)  #1104 pc 9328
	fmul	%f6, %f4, %f2  #1104 pc 9332
	lw	%x5, 32(%x2)  #1104 pc 9336
	fsw	%f0, 64(%x2)  #1104 pc 9340
	fsw	%f6, 72(%x2)  #1104 pc 9344
	sw	%x1, 84(%x2)  #1104 pc 9348
	addi	%x2, %x2, 88  #1104 pc 9352
	jal	%x1, o_param_b.2694  #1104 pc 9356
	addi	%x2, %x2, -88  #1104 pc 9360
	lw	%x1, 84(%x2) #1104 pc 9364
	flw	%f2, 72(%x2)  #1104 pc 9368
	fmul	%f0, %f2, %f0  #1104 pc 9372
	flw	%f2, 64(%x2)  #1103 pc 9376
	fadd	%f0, %f2, %f0  #1103 pc 9380
	flw	%f2, 16(%x2)  #1105 pc 9384
	flw	%f4, 24(%x2)  #1105 pc 9388
	fmul	%f6, %f4, %f2  #1105 pc 9392
	lw	%x5, 32(%x2)  #1105 pc 9396
	fsw	%f0, 80(%x2)  #1105 pc 9400
	fsw	%f6, 88(%x2)  #1105 pc 9404
	sw	%x1, 100(%x2)  #1105 pc 9408
	addi	%x2, %x2, 104  #1105 pc 9412
	jal	%x1, o_param_c.2696  #1105 pc 9416
	addi	%x2, %x2, -104  #1105 pc 9420
	lw	%x1, 100(%x2) #1105 pc 9424
	flw	%f2, 88(%x2)  #1105 pc 9428
	fmul	%f0, %f2, %f0  #1105 pc 9432
	flw	%f2, 80(%x2)  #1103 pc 9436
	fadd	%f0, %f2, %f0  #1103 pc 9440
	lw	%x5, 32(%x2)  #1107 pc 9444
	fsw	%f0, 96(%x2)  #1107 pc 9448
	sw	%x1, 108(%x2)  #1107 pc 9452
	addi	%x2, %x2, 112  #1107 pc 9456
	jal	%x1, o_isrot.2690  #1107 pc 9460
	addi	%x2, %x2, -112  #1107 pc 9464
	lw	%x1, 108(%x2) #1107 pc 9468
	beq	%x5, %x0, 12  #1107 pc 9472
	j	be_else.9280 #pc 9476
	nop #pc 9480
	flw	%f0, 96(%x2)  #1108 pc 9484
	ret #pc 9488
	nop #pc 9492
be_else.9280: #pc 9492
	flw	%f0, 40(%x2)  #1111 pc 9496
	flw	%f2, 24(%x2)  #1111 pc 9500
	fmul	%f4, %f2, %f0  #1111 pc 9504
	flw	%f6, 16(%x2)  #1111 pc 9508
	flw	%f8, 48(%x2)  #1111 pc 9512
	fmul	%f10, %f8, %f6  #1111 pc 9516
	fadd	%f4, %f4, %f10  #1111 pc 9520
	lw	%x5, 32(%x2)  #1111 pc 9524
	fsw	%f4, 104(%x2)  #1111 pc 9528
	sw	%x1, 116(%x2)  #1111 pc 9532
	addi	%x2, %x2, 120  #1111 pc 9536
	jal	%x1, o_param_r1.2716  #1111 pc 9540
	addi	%x2, %x2, -120  #1111 pc 9544
	lw	%x1, 116(%x2) #1111 pc 9548
	flw	%f2, 104(%x2)  #1111 pc 9552
	fmul	%f0, %f2, %f0  #1111 pc 9556
	flw	%f2, 16(%x2)  #1112 pc 9560
	flw	%f4, 8(%x2)  #1112 pc 9564
	fmul	%f2, %f4, %f2  #1112 pc 9568
	flw	%f6, 0(%x2)  #1112 pc 9572
	flw	%f8, 24(%x2)  #1112 pc 9576
	fmul	%f8, %f8, %f6  #1112 pc 9580
	fadd	%f2, %f2, %f8  #1112 pc 9584
	lw	%x5, 32(%x2)  #1112 pc 9588
	fsw	%f0, 112(%x2)  #1112 pc 9592
	fsw	%f2, 120(%x2)  #1112 pc 9596
	sw	%x1, 132(%x2)  #1112 pc 9600
	addi	%x2, %x2, 136  #1112 pc 9604
	jal	%x1, o_param_r2.2718  #1112 pc 9608
	addi	%x2, %x2, -136  #1112 pc 9612
	lw	%x1, 132(%x2) #1112 pc 9616
	flw	%f2, 120(%x2)  #1112 pc 9620
	fmul	%f0, %f2, %f0  #1112 pc 9624
	flw	%f2, 112(%x2)  #1111 pc 9628
	fadd	%f0, %f2, %f0  #1111 pc 9632
	flw	%f2, 40(%x2)  #1113 pc 9636
	flw	%f4, 8(%x2)  #1113 pc 9640
	fmul	%f2, %f4, %f2  #1113 pc 9644
	flw	%f4, 0(%x2)  #1113 pc 9648
	flw	%f6, 48(%x2)  #1113 pc 9652
	fmul	%f4, %f6, %f4  #1113 pc 9656
	fadd	%f2, %f2, %f4  #1113 pc 9660
	lw	%x5, 32(%x2)  #1113 pc 9664
	fsw	%f0, 128(%x2)  #1113 pc 9668
	fsw	%f2, 136(%x2)  #1113 pc 9672
	sw	%x1, 148(%x2)  #1113 pc 9676
	addi	%x2, %x2, 152  #1113 pc 9680
	jal	%x1, o_param_r3.2720  #1113 pc 9684
	addi	%x2, %x2, -152  #1113 pc 9688
	lw	%x1, 148(%x2) #1113 pc 9692
	flw	%f2, 136(%x2)  #1113 pc 9696
	fmul	%f0, %f2, %f0  #1113 pc 9700
	flw	%f2, 128(%x2)  #1111 pc 9704
	fadd	%f0, %f2, %f0  #1111 pc 9708
	sw	%x1, 148(%x2)  #1110 pc 9712
	addi	%x2, %x2, 152  #1110 pc 9716
	jal	%x1, fhalf.2538  #1110 pc 9720
	addi	%x2, %x2, -152  #1110 pc 9724
	lw	%x1, 148(%x2) #1110 pc 9728
	flw	%f2, 96(%x2)  #1110 pc 9732
	fadd	%f0, %f2, %f0  #1110 pc 9736
	ret #pc 9740
	nop #pc 9744
solver_second.2810:  #pc 9744
	lw	%x7, 4(%x22)  #0 pc 9748
	flw	%f6, 0(%x6)  #1128 pc 9752
	flw	%f8, 8(%x6)  #1128 pc 9756
	flw	%f10, 16(%x6)  #1128 pc 9760
	sw	%x7, 0(%x2)  #1128 pc 9764
	fsw	%f4, 8(%x2)  #1128 pc 9768
	fsw	%f2, 16(%x2)  #1128 pc 9772
	fsw	%f0, 24(%x2)  #1128 pc 9776
	sw	%x5, 32(%x2)  #1128 pc 9780
	sw	%x6, 36(%x2)  #1128 pc 9784
	mv	%f4, %f10 #pc 9788
	mv	%f5, %f11 #pc 9792
	mv	%f2, %f8 #pc 9796
	mv	%f3, %f9 #pc 9800
	mv	%f0, %f6 #pc 9804
	mv	%f1, %f7 #pc 9808
	sw	%x1, 44(%x2)  #1128 pc 9812
	addi	%x2, %x2, 48  #1128 pc 9816
	jal	%x1, quadratic.2797  #1128 pc 9820
	addi	%x2, %x2, -48  #1128 pc 9824
	lw	%x1, 44(%x2) #1128 pc 9828
	fsw	%f0, 40(%x2)  #1130 pc 9832
	sw	%x1, 52(%x2)  #1130 pc 9836
	addi	%x2, %x2, 56  #1130 pc 9840
	jal	%x1, fiszero.2528  #1130 pc 9844
	addi	%x2, %x2, -56  #1130 pc 9848
	lw	%x1, 52(%x2) #1130 pc 9852
	beq	%x5, %x0, 12  #1130 pc 9856
	j	be_else.9282 #pc 9860
	nop #pc 9864
	lw	%x5, 36(%x2)  #1135 pc 9868
	flw	%f0, 0(%x5)  #1135 pc 9872
	flw	%f2, 8(%x5)  #1135 pc 9876
	flw	%f4, 16(%x5)  #1135 pc 9880
	flw	%f6, 24(%x2)  #1135 pc 9884
	flw	%f8, 16(%x2)  #1135 pc 9888
	flw	%f10, 8(%x2)  #1135 pc 9892
	lw	%x5, 32(%x2)  #1135 pc 9896
	sw	%x1, 52(%x2)  #1135 pc 9900
	addi	%x2, %x2, 56  #1135 pc 9904
	jal	%x1, bilinear.2802  #1135 pc 9908
	addi	%x2, %x2, -56  #1135 pc 9912
	lw	%x1, 52(%x2) #1135 pc 9916
	flw	%f2, 24(%x2)  #1137 pc 9920
	flw	%f4, 16(%x2)  #1137 pc 9924
	flw	%f6, 8(%x2)  #1137 pc 9928
	lw	%x5, 32(%x2)  #1137 pc 9932
	fsw	%f0, 48(%x2)  #1137 pc 9936
	mv	%f0, %f2 #pc 9940
	mv	%f1, %f3 #pc 9944
	mv	%f2, %f4 #pc 9948
	mv	%f3, %f5 #pc 9952
	mv	%f4, %f6 #pc 9956
	mv	%f5, %f7 #pc 9960
	sw	%x1, 60(%x2)  #1137 pc 9964
	addi	%x2, %x2, 64  #1137 pc 9968
	jal	%x1, quadratic.2797  #1137 pc 9972
	addi	%x2, %x2, -64  #1137 pc 9976
	lw	%x1, 60(%x2) #1137 pc 9980
	lw	%x5, 32(%x2)  #1138 pc 9984
	fsw	%f0, 56(%x2)  #1138 pc 9988
	sw	%x1, 68(%x2)  #1138 pc 9992
	addi	%x2, %x2, 72  #1138 pc 9996
	jal	%x1, o_form.2684  #1138 pc 10000
	addi	%x2, %x2, -72  #1138 pc 10004
	lw	%x1, 68(%x2) #1138 pc 10008
	addi	%x24, %x0, 3  #pc 10012
	beq	%x5, %x24, 12  #1138 pc 10016
	j	be_else.9283 #pc 10020
	nop #pc 10024
	mv	%f0, l.6305  #0 pc 10028
	flw	%f2, 56(%x2)  #1138 pc 10032
	fsub	%f0, %f2, %f0  #1138 pc 10036
	j	be_cont.9284 #pc 10040
	nop #pc 10044
be_else.9283: #pc 10044
	flw	%f0, 56(%x2)  #1138 pc 10048
be_cont.9284: #pc 10048
	flw	%f2, 48(%x2)  #1140 pc 10052
	fsw	%f0, 64(%x2)  #1140 pc 10056
	mv	%f0, %f2 #pc 10060
	mv	%f1, %f3 #pc 10064
	sw	%x1, 76(%x2)  #1140 pc 10068
	addi	%x2, %x2, 80  #1140 pc 10072
	jal	%x1, fsqr.2536  #1140 pc 10076
	addi	%x2, %x2, -80  #1140 pc 10080
	lw	%x1, 76(%x2) #1140 pc 10084
	flw	%f2, 64(%x2)  #1140 pc 10088
	flw	%f4, 40(%x2)  #1140 pc 10092
	fmul	%f2, %f4, %f2  #1140 pc 10096
	fsub	%f0, %f0, %f2  #1140 pc 10100
	fsw	%f0, 72(%x2)  #1142 pc 10104
	sw	%x1, 84(%x2)  #1142 pc 10108
	addi	%x2, %x2, 88  #1142 pc 10112
	jal	%x1, fispos.2530  #1142 pc 10116
	addi	%x2, %x2, -88  #1142 pc 10120
	lw	%x1, 84(%x2) #1142 pc 10124
	beq	%x5, %x0, 12  #1142 pc 10128
	j	be_else.9285 #pc 10132
	nop #pc 10136
	addi	%x5, %x0, 0  #0 pc 10140
	ret #pc 10144
	nop #pc 10148
be_else.9285: #pc 10148
	flw	%f0, 72(%x2)  #1143 pc 10152
	fsqrt	%f0, %f0  #1143 pc 10156
	lw	%x5, 32(%x2)  #1144 pc 10160
	fsw	%f0, 80(%x2)  #1144 pc 10164
	sw	%x1, 92(%x2)  #1144 pc 10168
	addi	%x2, %x2, 96  #1144 pc 10172
	jal	%x1, o_isinvert.2688  #1144 pc 10176
	addi	%x2, %x2, -96  #1144 pc 10180
	lw	%x1, 92(%x2) #1144 pc 10184
	beq	%x5, %x0, 12  #1144 pc 10188
	j	be_else.9286 #pc 10192
	nop #pc 10196
	flw	%f0, 80(%x2)  #1144 pc 10200
	sw	%x1, 92(%x2)  #1144 pc 10204
	addi	%x2, %x2, 96  #1144 pc 10208
	jal	%x1, fneg.2534  #1144 pc 10212
	addi	%x2, %x2, -96  #1144 pc 10216
	lw	%x1, 92(%x2) #1144 pc 10220
	j	be_cont.9287 #pc 10224
	nop #pc 10228
be_else.9286: #pc 10228
	flw	%f0, 80(%x2)  #1144 pc 10232
be_cont.9287: #pc 10232
	flw	%f2, 48(%x2)  #1145 pc 10236
	fsub	%f0, %f0, %f2  #1145 pc 10240
	flw	%f2, 40(%x2)  #1145 pc 10244
	fdiv	%f0, %f0, %f2  #1145 pc 10248
	lw	%x5, 0(%x2)  #1145 pc 10252
	fsw	%f0, 0(%x5) #1145 pc 10256
	addi	%x5, %x0, 1  #0 pc 10260
	ret #pc 10264
	nop #pc 10268
be_else.9282: #pc 10268
	addi	%x5, %x0, 0  #0 pc 10272
	ret #pc 10276
	nop #pc 10280
solver.2816:  #pc 10280
	lw	%x9, 16(%x22)  #1154 pc 10284
	lw	%x10, 12(%x22)  #1154 pc 10288
	lw	%x11, 8(%x22)  #1154 pc 10292
	lw	%x12, 4(%x22)  #1154 pc 10296
	slli	%x5, %x5, 2  #1154 pc 10300
	lw	%x5, %x5(%x12)  #1154 pc 10304
	flw	%f0, 0(%x7)  #1156 pc 10308
	sw	%x10, 0(%x2)  #1156 pc 10312
	sw	%x9, 4(%x2)  #1156 pc 10316
	sw	%x6, 8(%x2)  #1156 pc 10320
	sw	%x11, 12(%x2)  #1156 pc 10324
	sw	%x5, 16(%x2)  #1156 pc 10328
	sw	%x7, 20(%x2)  #1156 pc 10332
	fsw	%f0, 24(%x2)  #1156 pc 10336
	sw	%x1, 36(%x2)  #1156 pc 10340
	addi	%x2, %x2, 40  #1156 pc 10344
	jal	%x1, o_param_x.2700  #1156 pc 10348
	addi	%x2, %x2, -40  #1156 pc 10352
	lw	%x1, 36(%x2) #1156 pc 10356
	flw	%f2, 24(%x2)  #1156 pc 10360
	fsub	%f0, %f2, %f0  #1156 pc 10364
	lw	%x5, 20(%x2)  #1157 pc 10368
	flw	%f2, 8(%x5)  #1157 pc 10372
	lw	%x6, 16(%x2)  #1157 pc 10376
	fsw	%f0, 32(%x2)  #1157 pc 10380
	fsw	%f2, 40(%x2)  #1157 pc 10384
	mv	%x5, %x6 #pc 10388
	sw	%x1, 52(%x2)  #1157 pc 10392
	addi	%x2, %x2, 56  #1157 pc 10396
	jal	%x1, o_param_y.2702  #1157 pc 10400
	addi	%x2, %x2, -56  #1157 pc 10404
	lw	%x1, 52(%x2) #1157 pc 10408
	flw	%f2, 40(%x2)  #1157 pc 10412
	fsub	%f0, %f2, %f0  #1157 pc 10416
	lw	%x5, 20(%x2)  #1158 pc 10420
	flw	%f2, 16(%x5)  #1158 pc 10424
	lw	%x5, 16(%x2)  #1158 pc 10428
	fsw	%f0, 48(%x2)  #1158 pc 10432
	fsw	%f2, 56(%x2)  #1158 pc 10436
	sw	%x1, 68(%x2)  #1158 pc 10440
	addi	%x2, %x2, 72  #1158 pc 10444
	jal	%x1, o_param_z.2704  #1158 pc 10448
	addi	%x2, %x2, -72  #1158 pc 10452
	lw	%x1, 68(%x2) #1158 pc 10456
	flw	%f2, 56(%x2)  #1158 pc 10460
	fsub	%f0, %f2, %f0  #1158 pc 10464
	lw	%x5, 16(%x2)  #1159 pc 10468
	fsw	%f0, 64(%x2)  #1159 pc 10472
	sw	%x1, 76(%x2)  #1159 pc 10476
	addi	%x2, %x2, 80  #1159 pc 10480
	jal	%x1, o_form.2684  #1159 pc 10484
	addi	%x2, %x2, -80  #1159 pc 10488
	lw	%x1, 76(%x2) #1159 pc 10492
	addi	%x24, %x0, 1  #pc 10496
	beq	%x5, %x24, 12  #1161 pc 10500
	j	be_else.9288 #pc 10504
	nop #pc 10508
	flw	%f0, 32(%x2)  #1161 pc 10512
	flw	%f2, 48(%x2)  #1161 pc 10516
	flw	%f4, 64(%x2)  #1161 pc 10520
	lw	%x5, 16(%x2)  #1161 pc 10524
	lw	%x6, 8(%x2)  #1161 pc 10528
	lw	%x22, 12(%x2)  #1161 pc 10532
	lw	0(%x23), %x22  #1161 pc 10536
	jalr	%x0, %x23, 0  #1161 pc 10540
	nop #pc 10544
be_else.9288: #pc 10544
	addi	%x24, %x0, 2  #pc 10548
	beq	%x5, %x24, 12  #1162 pc 10552
	j	be_else.9289 #pc 10556
	nop #pc 10560
	flw	%f0, 32(%x2)  #1162 pc 10564
	flw	%f2, 48(%x2)  #1162 pc 10568
	flw	%f4, 64(%x2)  #1162 pc 10572
	lw	%x5, 16(%x2)  #1162 pc 10576
	lw	%x6, 8(%x2)  #1162 pc 10580
	lw	%x22, 4(%x2)  #1162 pc 10584
	lw	0(%x23), %x22  #1162 pc 10588
	jalr	%x0, %x23, 0  #1162 pc 10592
	nop #pc 10596
be_else.9289: #pc 10596
	flw	%f0, 32(%x2)  #1163 pc 10600
	flw	%f2, 48(%x2)  #1163 pc 10604
	flw	%f4, 64(%x2)  #1163 pc 10608
	lw	%x5, 16(%x2)  #1163 pc 10612
	lw	%x6, 8(%x2)  #1163 pc 10616
	lw	%x22, 0(%x2)  #1163 pc 10620
	lw	0(%x23), %x22  #1163 pc 10624
	jalr	%x0, %x23, 0  #1163 pc 10628
	nop #pc 10632
solver_rect_fast.2820:  #pc 10632
	lw	%x9, 4(%x22)  #0 pc 10636
	flw	%f6, 0(%x7)  #1186 pc 10640
	fsub	%f6, %f6, %f0  #1186 pc 10644
	flw	%f8, 8(%x7)  #1186 pc 10648
	fmul	%f6, %f6, %f8  #1186 pc 10652
	flw	%f8, 8(%x6)  #1188 pc 10656
	fmul	%f8, %f6, %f8  #1188 pc 10660
	fadd	%f8, %f8, %f2  #1188 pc 10664
	fabs	%f8, %f8  #1188 pc 10668
	sw	%x9, 0(%x2)  #1188 pc 10672
	fsw	%f0, 8(%x2)  #1188 pc 10676
	fsw	%f2, 16(%x2)  #1188 pc 10680
	sw	%x7, 24(%x2)  #1188 pc 10684
	sw	%x5, 28(%x2)  #1188 pc 10688
	fsw	%f4, 32(%x2)  #1188 pc 10692
	fsw	%f6, 40(%x2)  #1188 pc 10696
	sw	%x6, 48(%x2)  #1188 pc 10700
	fsw	%f8, 56(%x2)  #1188 pc 10704
	sw	%x1, 68(%x2)  #1188 pc 10708
	addi	%x2, %x2, 72  #1188 pc 10712
	jal	%x1, o_param_b.2694  #1188 pc 10716
	addi	%x2, %x2, -72  #1188 pc 10720
	lw	%x1, 68(%x2) #1188 pc 10724
	mv	%f2, %f0  #1188 pc 10728
	mv	%f3, %f1  #1188 pc 10732
	flw	%f0, 56(%x2)  #1188 pc 10736
	sw	%x1, 68(%x2)  #1188 pc 10740
	addi	%x2, %x2, 72  #1188 pc 10744
	jal	%x1, fless.2540  #1188 pc 10748
	addi	%x2, %x2, -72  #1188 pc 10752
	lw	%x1, 68(%x2) #1188 pc 10756
	beq	%x5, %x0, 12  #1188 pc 10760
	j	be_else.9292 #pc 10764
	nop #pc 10768
	addi	%x5, %x0, 0  #0 pc 10772
	j	be_cont.9293 #pc 10776
	nop #pc 10780
be_else.9292: #pc 10780
	lw	%x5, 48(%x2)  #1189 pc 10784
	flw	%f0, 16(%x5)  #1189 pc 10788
	flw	%f2, 40(%x2)  #1189 pc 10792
	fmul	%f0, %f2, %f0  #1189 pc 10796
	flw	%f4, 32(%x2)  #1189 pc 10800
	fadd	%f0, %f0, %f4  #1189 pc 10804
	fabs	%f0, %f0  #1189 pc 10808
	lw	%x6, 28(%x2)  #1189 pc 10812
	fsw	%f0, 64(%x2)  #1189 pc 10816
	mv	%x5, %x6 #pc 10820
	sw	%x1, 76(%x2)  #1189 pc 10824
	addi	%x2, %x2, 80  #1189 pc 10828
	jal	%x1, o_param_c.2696  #1189 pc 10832
	addi	%x2, %x2, -80  #1189 pc 10836
	lw	%x1, 76(%x2) #1189 pc 10840
	mv	%f2, %f0  #1189 pc 10844
	mv	%f3, %f1  #1189 pc 10848
	flw	%f0, 64(%x2)  #1189 pc 10852
	sw	%x1, 76(%x2)  #1189 pc 10856
	addi	%x2, %x2, 80  #1189 pc 10860
	jal	%x1, fless.2540  #1189 pc 10864
	addi	%x2, %x2, -80  #1189 pc 10868
	lw	%x1, 76(%x2) #1189 pc 10872
	beq	%x5, %x0, 12  #1189 pc 10876
	j	be_else.9294 #pc 10880
	nop #pc 10884
	addi	%x5, %x0, 0  #0 pc 10888
	j	be_cont.9295 #pc 10892
	nop #pc 10896
be_else.9294: #pc 10896
	lw	%x5, 24(%x2)  #1190 pc 10900
	flw	%f0, 8(%x5)  #1190 pc 10904
	sw	%x1, 76(%x2)  #1190 pc 10908
	addi	%x2, %x2, 80  #1190 pc 10912
	jal	%x1, fiszero.2528  #1190 pc 10916
	addi	%x2, %x2, -80  #1190 pc 10920
	lw	%x1, 76(%x2) #1190 pc 10924
	beq	%x5, %x0, 12  #1190 pc 10928
	j	be_else.9296 #pc 10932
	nop #pc 10936
	addi	%x5, %x0, 1  #0 pc 10940
	j	be_cont.9297 #pc 10944
	nop #pc 10948
be_else.9296: #pc 10948
	addi	%x5, %x0, 0  #0 pc 10952
be_cont.9297: #pc 10952
be_cont.9295: #pc 10952
be_cont.9293: #pc 10952
	beq	%x5, %x0, 12  #1187 pc 10956
	j	be_else.9298 #pc 10960
	nop #pc 10964
	lw	%x5, 24(%x2)  #1195 pc 10968
	flw	%f0, 16(%x5)  #1195 pc 10972
	flw	%f2, 16(%x2)  #1195 pc 10976
	fsub	%f0, %f0, %f2  #1195 pc 10980
	flw	%f4, 24(%x5)  #1195 pc 10984
	fmul	%f0, %f0, %f4  #1195 pc 10988
	lw	%x6, 48(%x2)  #1197 pc 10992
	flw	%f4, 0(%x6)  #1197 pc 10996
	fmul	%f4, %f0, %f4  #1197 pc 11000
	flw	%f6, 8(%x2)  #1197 pc 11004
	fadd	%f4, %f4, %f6  #1197 pc 11008
	fabs	%f4, %f4  #1197 pc 11012
	lw	%x7, 28(%x2)  #1197 pc 11016
	fsw	%f0, 72(%x2)  #1197 pc 11020
	fsw	%f4, 80(%x2)  #1197 pc 11024
	mv	%x5, %x7 #pc 11028
	sw	%x1, 92(%x2)  #1197 pc 11032
	addi	%x2, %x2, 96  #1197 pc 11036
	jal	%x1, o_param_a.2692  #1197 pc 11040
	addi	%x2, %x2, -96  #1197 pc 11044
	lw	%x1, 92(%x2) #1197 pc 11048
	mv	%f2, %f0  #1197 pc 11052
	mv	%f3, %f1  #1197 pc 11056
	flw	%f0, 80(%x2)  #1197 pc 11060
	sw	%x1, 92(%x2)  #1197 pc 11064
	addi	%x2, %x2, 96  #1197 pc 11068
	jal	%x1, fless.2540  #1197 pc 11072
	addi	%x2, %x2, -96  #1197 pc 11076
	lw	%x1, 92(%x2) #1197 pc 11080
	beq	%x5, %x0, 12  #1197 pc 11084
	j	be_else.9299 #pc 11088
	nop #pc 11092
	addi	%x5, %x0, 0  #0 pc 11096
	j	be_cont.9300 #pc 11100
	nop #pc 11104
be_else.9299: #pc 11104
	lw	%x5, 48(%x2)  #1198 pc 11108
	flw	%f0, 16(%x5)  #1198 pc 11112
	flw	%f2, 72(%x2)  #1198 pc 11116
	fmul	%f0, %f2, %f0  #1198 pc 11120
	flw	%f4, 32(%x2)  #1198 pc 11124
	fadd	%f0, %f0, %f4  #1198 pc 11128
	fabs	%f0, %f0  #1198 pc 11132
	lw	%x6, 28(%x2)  #1198 pc 11136
	fsw	%f0, 88(%x2)  #1198 pc 11140
	mv	%x5, %x6 #pc 11144
	sw	%x1, 100(%x2)  #1198 pc 11148
	addi	%x2, %x2, 104  #1198 pc 11152
	jal	%x1, o_param_c.2696  #1198 pc 11156
	addi	%x2, %x2, -104  #1198 pc 11160
	lw	%x1, 100(%x2) #1198 pc 11164
	mv	%f2, %f0  #1198 pc 11168
	mv	%f3, %f1  #1198 pc 11172
	flw	%f0, 88(%x2)  #1198 pc 11176
	sw	%x1, 100(%x2)  #1198 pc 11180
	addi	%x2, %x2, 104  #1198 pc 11184
	jal	%x1, fless.2540  #1198 pc 11188
	addi	%x2, %x2, -104  #1198 pc 11192
	lw	%x1, 100(%x2) #1198 pc 11196
	beq	%x5, %x0, 12  #1198 pc 11200
	j	be_else.9301 #pc 11204
	nop #pc 11208
	addi	%x5, %x0, 0  #0 pc 11212
	j	be_cont.9302 #pc 11216
	nop #pc 11220
be_else.9301: #pc 11220
	lw	%x5, 24(%x2)  #1199 pc 11224
	flw	%f0, 24(%x5)  #1199 pc 11228
	sw	%x1, 100(%x2)  #1199 pc 11232
	addi	%x2, %x2, 104  #1199 pc 11236
	jal	%x1, fiszero.2528  #1199 pc 11240
	addi	%x2, %x2, -104  #1199 pc 11244
	lw	%x1, 100(%x2) #1199 pc 11248
	beq	%x5, %x0, 12  #1199 pc 11252
	j	be_else.9303 #pc 11256
	nop #pc 11260
	addi	%x5, %x0, 1  #0 pc 11264
	j	be_cont.9304 #pc 11268
	nop #pc 11272
be_else.9303: #pc 11272
	addi	%x5, %x0, 0  #0 pc 11276
be_cont.9304: #pc 11276
be_cont.9302: #pc 11276
be_cont.9300: #pc 11276
	beq	%x5, %x0, 12  #1196 pc 11280
	j	be_else.9305 #pc 11284
	nop #pc 11288
	lw	%x5, 24(%x2)  #1204 pc 11292
	flw	%f0, 32(%x5)  #1204 pc 11296
	flw	%f2, 32(%x2)  #1204 pc 11300
	fsub	%f0, %f0, %f2  #1204 pc 11304
	flw	%f2, 40(%x5)  #1204 pc 11308
	fmul	%f0, %f0, %f2  #1204 pc 11312
	lw	%x6, 48(%x2)  #1206 pc 11316
	flw	%f2, 0(%x6)  #1206 pc 11320
	fmul	%f2, %f0, %f2  #1206 pc 11324
	flw	%f4, 8(%x2)  #1206 pc 11328
	fadd	%f2, %f2, %f4  #1206 pc 11332
	fabs	%f2, %f2  #1206 pc 11336
	lw	%x7, 28(%x2)  #1206 pc 11340
	fsw	%f0, 96(%x2)  #1206 pc 11344
	fsw	%f2, 104(%x2)  #1206 pc 11348
	mv	%x5, %x7 #pc 11352
	sw	%x1, 116(%x2)  #1206 pc 11356
	addi	%x2, %x2, 120  #1206 pc 11360
	jal	%x1, o_param_a.2692  #1206 pc 11364
	addi	%x2, %x2, -120  #1206 pc 11368
	lw	%x1, 116(%x2) #1206 pc 11372
	mv	%f2, %f0  #1206 pc 11376
	mv	%f3, %f1  #1206 pc 11380
	flw	%f0, 104(%x2)  #1206 pc 11384
	sw	%x1, 116(%x2)  #1206 pc 11388
	addi	%x2, %x2, 120  #1206 pc 11392
	jal	%x1, fless.2540  #1206 pc 11396
	addi	%x2, %x2, -120  #1206 pc 11400
	lw	%x1, 116(%x2) #1206 pc 11404
	beq	%x5, %x0, 12  #1206 pc 11408
	j	be_else.9306 #pc 11412
	nop #pc 11416
	addi	%x5, %x0, 0  #0 pc 11420
	j	be_cont.9307 #pc 11424
	nop #pc 11428
be_else.9306: #pc 11428
	lw	%x5, 48(%x2)  #1207 pc 11432
	flw	%f0, 8(%x5)  #1207 pc 11436
	flw	%f2, 96(%x2)  #1207 pc 11440
	fmul	%f0, %f2, %f0  #1207 pc 11444
	flw	%f4, 16(%x2)  #1207 pc 11448
	fadd	%f0, %f0, %f4  #1207 pc 11452
	fabs	%f0, %f0  #1207 pc 11456
	lw	%x5, 28(%x2)  #1207 pc 11460
	fsw	%f0, 112(%x2)  #1207 pc 11464
	sw	%x1, 124(%x2)  #1207 pc 11468
	addi	%x2, %x2, 128  #1207 pc 11472
	jal	%x1, o_param_b.2694  #1207 pc 11476
	addi	%x2, %x2, -128  #1207 pc 11480
	lw	%x1, 124(%x2) #1207 pc 11484
	mv	%f2, %f0  #1207 pc 11488
	mv	%f3, %f1  #1207 pc 11492
	flw	%f0, 112(%x2)  #1207 pc 11496
	sw	%x1, 124(%x2)  #1207 pc 11500
	addi	%x2, %x2, 128  #1207 pc 11504
	jal	%x1, fless.2540  #1207 pc 11508
	addi	%x2, %x2, -128  #1207 pc 11512
	lw	%x1, 124(%x2) #1207 pc 11516
	beq	%x5, %x0, 12  #1207 pc 11520
	j	be_else.9308 #pc 11524
	nop #pc 11528
	addi	%x5, %x0, 0  #0 pc 11532
	j	be_cont.9309 #pc 11536
	nop #pc 11540
be_else.9308: #pc 11540
	lw	%x5, 24(%x2)  #1208 pc 11544
	flw	%f0, 40(%x5)  #1208 pc 11548
	sw	%x1, 124(%x2)  #1208 pc 11552
	addi	%x2, %x2, 128  #1208 pc 11556
	jal	%x1, fiszero.2528  #1208 pc 11560
	addi	%x2, %x2, -128  #1208 pc 11564
	lw	%x1, 124(%x2) #1208 pc 11568
	beq	%x5, %x0, 12  #1208 pc 11572
	j	be_else.9310 #pc 11576
	nop #pc 11580
	addi	%x5, %x0, 1  #0 pc 11584
	j	be_cont.9311 #pc 11588
	nop #pc 11592
be_else.9310: #pc 11592
	addi	%x5, %x0, 0  #0 pc 11596
be_cont.9311: #pc 11596
be_cont.9309: #pc 11596
be_cont.9307: #pc 11596
	beq	%x5, %x0, 12  #1205 pc 11600
	j	be_else.9312 #pc 11604
	nop #pc 11608
	addi	%x5, %x0, 0  #0 pc 11612
	ret #pc 11616
	nop #pc 11620
be_else.9312: #pc 11620
	lw	%x5, 0(%x2)  #1212 pc 11624
	flw	%f0, 96(%x2)  #1212 pc 11628
	fsw	%f0, 0(%x5) #1212 pc 11632
	addi	%x5, %x0, 3  #0 pc 11636
	ret #pc 11640
	nop #pc 11644
be_else.9305: #pc 11644
	lw	%x5, 0(%x2)  #1203 pc 11648
	flw	%f0, 72(%x2)  #1203 pc 11652
	fsw	%f0, 0(%x5) #1203 pc 11656
	addi	%x5, %x0, 2  #0 pc 11660
	ret #pc 11664
	nop #pc 11668
be_else.9298: #pc 11668
	lw	%x5, 0(%x2)  #1194 pc 11672
	flw	%f0, 40(%x2)  #1194 pc 11676
	fsw	%f0, 0(%x5) #1194 pc 11680
	addi	%x5, %x0, 1  #0 pc 11684
	ret #pc 11688
	nop #pc 11692
solver_surface_fast.2827:  #pc 11692
	lw	%x5, 4(%x22)  #0 pc 11696
	flw	%f6, 0(%x6)  #1219 pc 11700
	sw	%x5, 0(%x2)  #1219 pc 11704
	fsw	%f4, 8(%x2)  #1219 pc 11708
	fsw	%f2, 16(%x2)  #1219 pc 11712
	fsw	%f0, 24(%x2)  #1219 pc 11716
	sw	%x6, 32(%x2)  #1219 pc 11720
	mv	%f0, %f6 #pc 11724
	mv	%f1, %f7 #pc 11728
	sw	%x1, 36(%x2)  #1219 pc 11732
	addi	%x2, %x2, 40  #1219 pc 11736
	jal	%x1, fisneg.2532  #1219 pc 11740
	addi	%x2, %x2, -40  #1219 pc 11744
	lw	%x1, 36(%x2) #1219 pc 11748
	beq	%x5, %x0, 12  #1219 pc 11752
	j	be_else.9314 #pc 11756
	nop #pc 11760
	addi	%x5, %x0, 0  #0 pc 11764
	ret #pc 11768
	nop #pc 11772
be_else.9314: #pc 11772
	lw	%x5, 32(%x2)  #1221 pc 11776
	flw	%f0, 8(%x5)  #1221 pc 11780
	flw	%f2, 24(%x2)  #1221 pc 11784
	fmul	%f0, %f0, %f2  #1221 pc 11788
	flw	%f2, 16(%x5)  #1221 pc 11792
	flw	%f4, 16(%x2)  #1221 pc 11796
	fmul	%f2, %f2, %f4  #1221 pc 11800
	fadd	%f0, %f0, %f2  #1221 pc 11804
	flw	%f2, 24(%x5)  #1221 pc 11808
	flw	%f4, 8(%x2)  #1221 pc 11812
	fmul	%f2, %f2, %f4  #1221 pc 11816
	fadd	%f0, %f0, %f2  #1221 pc 11820
	lw	%x5, 0(%x2)  #1220 pc 11824
	fsw	%f0, 0(%x5) #1220 pc 11828
	addi	%x5, %x0, 1  #0 pc 11832
	ret #pc 11836
	nop #pc 11840
solver_second_fast.2833:  #pc 11840
	lw	%x7, 4(%x22)  #0 pc 11844
	flw	%f6, 0(%x6)  #1229 pc 11848
	sw	%x7, 0(%x2)  #1230 pc 11852
	fsw	%f6, 8(%x2)  #1230 pc 11856
	sw	%x5, 16(%x2)  #1230 pc 11860
	fsw	%f4, 24(%x2)  #1230 pc 11864
	fsw	%f2, 32(%x2)  #1230 pc 11868
	fsw	%f0, 40(%x2)  #1230 pc 11872
	sw	%x6, 48(%x2)  #1230 pc 11876
	mv	%f0, %f6 #pc 11880
	mv	%f1, %f7 #pc 11884
	sw	%x1, 52(%x2)  #1230 pc 11888
	addi	%x2, %x2, 56  #1230 pc 11892
	jal	%x1, fiszero.2528  #1230 pc 11896
	addi	%x2, %x2, -56  #1230 pc 11900
	lw	%x1, 52(%x2) #1230 pc 11904
	beq	%x5, %x0, 12  #1230 pc 11908
	j	be_else.9317 #pc 11912
	nop #pc 11916
	lw	%x5, 48(%x2)  #1233 pc 11920
	flw	%f0, 8(%x5)  #1233 pc 11924
	flw	%f2, 40(%x2)  #1233 pc 11928
	fmul	%f0, %f0, %f2  #1233 pc 11932
	flw	%f4, 16(%x5)  #1233 pc 11936
	flw	%f6, 32(%x2)  #1233 pc 11940
	fmul	%f4, %f4, %f6  #1233 pc 11944
	fadd	%f0, %f0, %f4  #1233 pc 11948
	flw	%f4, 24(%x5)  #1233 pc 11952
	flw	%f8, 24(%x2)  #1233 pc 11956
	fmul	%f4, %f4, %f8  #1233 pc 11960
	fadd	%f0, %f0, %f4  #1233 pc 11964
	lw	%x6, 16(%x2)  #1234 pc 11968
	fsw	%f0, 56(%x2)  #1234 pc 11972
	mv	%x5, %x6 #pc 11976
	mv	%f4, %f8 #pc 11980
	mv	%f5, %f9 #pc 11984
	mv	%f0, %f2 #pc 11988
	mv	%f1, %f3 #pc 11992
	mv	%f2, %f6 #pc 11996
	mv	%f3, %f7 #pc 12000
	sw	%x1, 68(%x2)  #1234 pc 12004
	addi	%x2, %x2, 72  #1234 pc 12008
	jal	%x1, quadratic.2797  #1234 pc 12012
	addi	%x2, %x2, -72  #1234 pc 12016
	lw	%x1, 68(%x2) #1234 pc 12020
	lw	%x5, 16(%x2)  #1235 pc 12024
	fsw	%f0, 64(%x2)  #1235 pc 12028
	sw	%x1, 76(%x2)  #1235 pc 12032
	addi	%x2, %x2, 80  #1235 pc 12036
	jal	%x1, o_form.2684  #1235 pc 12040
	addi	%x2, %x2, -80  #1235 pc 12044
	lw	%x1, 76(%x2) #1235 pc 12048
	addi	%x24, %x0, 3  #pc 12052
	beq	%x5, %x24, 12  #1235 pc 12056
	j	be_else.9319 #pc 12060
	nop #pc 12064
	mv	%f0, l.6305  #0 pc 12068
	flw	%f2, 64(%x2)  #1235 pc 12072
	fsub	%f0, %f2, %f0  #1235 pc 12076
	j	be_cont.9320 #pc 12080
	nop #pc 12084
be_else.9319: #pc 12084
	flw	%f0, 64(%x2)  #1235 pc 12088
be_cont.9320: #pc 12088
	flw	%f2, 56(%x2)  #1236 pc 12092
	fsw	%f0, 72(%x2)  #1236 pc 12096
	mv	%f0, %f2 #pc 12100
	mv	%f1, %f3 #pc 12104
	sw	%x1, 84(%x2)  #1236 pc 12108
	addi	%x2, %x2, 88  #1236 pc 12112
	jal	%x1, fsqr.2536  #1236 pc 12116
	addi	%x2, %x2, -88  #1236 pc 12120
	lw	%x1, 84(%x2) #1236 pc 12124
	flw	%f2, 72(%x2)  #1236 pc 12128
	flw	%f4, 8(%x2)  #1236 pc 12132
	fmul	%f2, %f4, %f2  #1236 pc 12136
	fsub	%f0, %f0, %f2  #1236 pc 12140
	fsw	%f0, 80(%x2)  #1237 pc 12144
	sw	%x1, 92(%x2)  #1237 pc 12148
	addi	%x2, %x2, 96  #1237 pc 12152
	jal	%x1, fispos.2530  #1237 pc 12156
	addi	%x2, %x2, -96  #1237 pc 12160
	lw	%x1, 92(%x2) #1237 pc 12164
	beq	%x5, %x0, 12  #1237 pc 12168
	j	be_else.9321 #pc 12172
	nop #pc 12176
	addi	%x5, %x0, 0  #0 pc 12180
	ret #pc 12184
	nop #pc 12188
be_else.9321: #pc 12188
	lw	%x5, 16(%x2)  #1238 pc 12192
	sw	%x1, 92(%x2)  #1238 pc 12196
	addi	%x2, %x2, 96  #1238 pc 12200
	jal	%x1, o_isinvert.2688  #1238 pc 12204
	addi	%x2, %x2, -96  #1238 pc 12208
	lw	%x1, 92(%x2) #1238 pc 12212
	beq	%x5, %x0, 12  #1238 pc 12216
	j	be_else.9322 #pc 12220
	nop #pc 12224
	flw	%f0, 80(%x2)  #1241 pc 12228
	fsqrt	%f0, %f0  #1241 pc 12232
	flw	%f2, 56(%x2)  #1241 pc 12236
	fsub	%f0, %f2, %f0  #1241 pc 12240
	lw	%x5, 48(%x2)  #1241 pc 12244
	flw	%f2, 32(%x5)  #1241 pc 12248
	fmul	%f0, %f0, %f2  #1241 pc 12252
	lw	%x5, 0(%x2)  #1241 pc 12256
	fsw	%f0, 0(%x5) #1241 pc 12260
	j	be_cont.9323 #pc 12264
	nop #pc 12268
be_else.9322: #pc 12268
	flw	%f0, 80(%x2)  #1239 pc 12272
	fsqrt	%f0, %f0  #1239 pc 12276
	flw	%f2, 56(%x2)  #1239 pc 12280
	fadd	%f0, %f2, %f0  #1239 pc 12284
	lw	%x5, 48(%x2)  #1239 pc 12288
	flw	%f2, 32(%x5)  #1239 pc 12292
	fmul	%f0, %f0, %f2  #1239 pc 12296
	lw	%x5, 0(%x2)  #1239 pc 12300
	fsw	%f0, 0(%x5) #1239 pc 12304
be_cont.9323: #pc 12304
	addi	%x5, %x0, 1  #0 pc 12308
	ret #pc 12312
	nop #pc 12316
be_else.9317: #pc 12316
	addi	%x5, %x0, 0  #0 pc 12320
	ret #pc 12324
	nop #pc 12328
solver_fast.2839:  #pc 12328
	lw	%x9, 16(%x22)  #1248 pc 12332
	lw	%x10, 12(%x22)  #1248 pc 12336
	lw	%x11, 8(%x22)  #1248 pc 12340
	lw	%x12, 4(%x22)  #1248 pc 12344
	slli	%x13, %x5, 2  #1248 pc 12348
	lw	%x12, %x13(%x12)  #1248 pc 12352
	flw	%f0, 0(%x7)  #1249 pc 12356
	sw	%x10, 0(%x2)  #1249 pc 12360
	sw	%x9, 4(%x2)  #1249 pc 12364
	sw	%x11, 8(%x2)  #1249 pc 12368
	sw	%x5, 12(%x2)  #1249 pc 12372
	sw	%x6, 16(%x2)  #1249 pc 12376
	sw	%x12, 20(%x2)  #1249 pc 12380
	sw	%x7, 24(%x2)  #1249 pc 12384
	fsw	%f0, 32(%x2)  #1249 pc 12388
	mv	%x5, %x12 #pc 12392
	sw	%x1, 44(%x2)  #1249 pc 12396
	addi	%x2, %x2, 48  #1249 pc 12400
	jal	%x1, o_param_x.2700  #1249 pc 12404
	addi	%x2, %x2, -48  #1249 pc 12408
	lw	%x1, 44(%x2) #1249 pc 12412
	flw	%f2, 32(%x2)  #1249 pc 12416
	fsub	%f0, %f2, %f0  #1249 pc 12420
	lw	%x5, 24(%x2)  #1250 pc 12424
	flw	%f2, 8(%x5)  #1250 pc 12428
	lw	%x6, 20(%x2)  #1250 pc 12432
	fsw	%f0, 40(%x2)  #1250 pc 12436
	fsw	%f2, 48(%x2)  #1250 pc 12440
	mv	%x5, %x6 #pc 12444
	sw	%x1, 60(%x2)  #1250 pc 12448
	addi	%x2, %x2, 64  #1250 pc 12452
	jal	%x1, o_param_y.2702  #1250 pc 12456
	addi	%x2, %x2, -64  #1250 pc 12460
	lw	%x1, 60(%x2) #1250 pc 12464
	flw	%f2, 48(%x2)  #1250 pc 12468
	fsub	%f0, %f2, %f0  #1250 pc 12472
	lw	%x5, 24(%x2)  #1251 pc 12476
	flw	%f2, 16(%x5)  #1251 pc 12480
	lw	%x5, 20(%x2)  #1251 pc 12484
	fsw	%f0, 56(%x2)  #1251 pc 12488
	fsw	%f2, 64(%x2)  #1251 pc 12492
	sw	%x1, 76(%x2)  #1251 pc 12496
	addi	%x2, %x2, 80  #1251 pc 12500
	jal	%x1, o_param_z.2704  #1251 pc 12504
	addi	%x2, %x2, -80  #1251 pc 12508
	lw	%x1, 76(%x2) #1251 pc 12512
	flw	%f2, 64(%x2)  #1251 pc 12516
	fsub	%f0, %f2, %f0  #1251 pc 12520
	lw	%x5, 16(%x2)  #1252 pc 12524
	fsw	%f0, 72(%x2)  #1252 pc 12528
	sw	%x1, 84(%x2)  #1252 pc 12532
	addi	%x2, %x2, 88  #1252 pc 12536
	jal	%x1, d_const.2745  #1252 pc 12540
	addi	%x2, %x2, -88  #1252 pc 12544
	lw	%x1, 84(%x2) #1252 pc 12548
	lw	%x6, 12(%x2)  #1253 pc 12552
	slli	%x6, %x6, 2  #1253 pc 12556
	lw	%x5, %x6(%x5)  #1253 pc 12560
	lw	%x6, 20(%x2)  #1254 pc 12564
	sw	%x5, 80(%x2)  #1254 pc 12568
	mv	%x5, %x6 #pc 12572
	sw	%x1, 84(%x2)  #1254 pc 12576
	addi	%x2, %x2, 88  #1254 pc 12580
	jal	%x1, o_form.2684  #1254 pc 12584
	addi	%x2, %x2, -88  #1254 pc 12588
	lw	%x1, 84(%x2) #1254 pc 12592
	addi	%x24, %x0, 1  #pc 12596
	beq	%x5, %x24, 12  #1255 pc 12600
	j	be_else.9325 #pc 12604
	nop #pc 12608
	lw	%x5, 16(%x2)  #1256 pc 12612
	sw	%x1, 84(%x2)  #1256 pc 12616
	addi	%x2, %x2, 88  #1256 pc 12620
	jal	%x1, d_vec.2743  #1256 pc 12624
	addi	%x2, %x2, -88  #1256 pc 12628
	lw	%x1, 84(%x2) #1256 pc 12632
	mv	%x6, %x5  #1256 pc 12636
	flw	%f0, 40(%x2)  #1256 pc 12640
	flw	%f2, 56(%x2)  #1256 pc 12644
	flw	%f4, 72(%x2)  #1256 pc 12648
	lw	%x5, 20(%x2)  #1256 pc 12652
	lw	%x7, 80(%x2)  #1256 pc 12656
	lw	%x22, 8(%x2)  #1256 pc 12660
	lw	0(%x23), %x22  #1256 pc 12664
	jalr	%x0, %x23, 0  #1256 pc 12668
	nop #pc 12672
be_else.9325: #pc 12672
	addi	%x24, %x0, 2  #pc 12676
	beq	%x5, %x24, 12  #1257 pc 12680
	j	be_else.9326 #pc 12684
	nop #pc 12688
	flw	%f0, 40(%x2)  #1258 pc 12692
	flw	%f2, 56(%x2)  #1258 pc 12696
	flw	%f4, 72(%x2)  #1258 pc 12700
	lw	%x5, 20(%x2)  #1258 pc 12704
	lw	%x6, 80(%x2)  #1258 pc 12708
	lw	%x22, 4(%x2)  #1258 pc 12712
	lw	0(%x23), %x22  #1258 pc 12716
	jalr	%x0, %x23, 0  #1258 pc 12720
	nop #pc 12724
be_else.9326: #pc 12724
	flw	%f0, 40(%x2)  #1260 pc 12728
	flw	%f2, 56(%x2)  #1260 pc 12732
	flw	%f4, 72(%x2)  #1260 pc 12736
	lw	%x5, 20(%x2)  #1260 pc 12740
	lw	%x6, 80(%x2)  #1260 pc 12744
	lw	%x22, 0(%x2)  #1260 pc 12748
	lw	0(%x23), %x22  #1260 pc 12752
	jalr	%x0, %x23, 0  #1260 pc 12756
	nop #pc 12760
solver_surface_fast2.2843:  #pc 12760
	lw	%x5, 4(%x22)  #0 pc 12764
	flw	%f0, 0(%x6)  #1268 pc 12768
	sw	%x5, 0(%x2)  #1268 pc 12772
	sw	%x7, 4(%x2)  #1268 pc 12776
	sw	%x6, 8(%x2)  #1268 pc 12780
	sw	%x1, 12(%x2)  #1268 pc 12784
	addi	%x2, %x2, 16  #1268 pc 12788
	jal	%x1, fisneg.2532  #1268 pc 12792
	addi	%x2, %x2, -16  #1268 pc 12796
	lw	%x1, 12(%x2) #1268 pc 12800
	beq	%x5, %x0, 12  #1268 pc 12804
	j	be_else.9327 #pc 12808
	nop #pc 12812
	addi	%x5, %x0, 0  #0 pc 12816
	ret #pc 12820
	nop #pc 12824
be_else.9327: #pc 12824
	lw	%x5, 8(%x2)  #1269 pc 12828
	flw	%f0, 0(%x5)  #1269 pc 12832
	lw	%x5, 4(%x2)  #1269 pc 12836
	flw	%f2, 24(%x5)  #1269 pc 12840
	fmul	%f0, %f0, %f2  #1269 pc 12844
	lw	%x5, 0(%x2)  #1269 pc 12848
	fsw	%f0, 0(%x5) #1269 pc 12852
	addi	%x5, %x0, 1  #0 pc 12856
	ret #pc 12860
	nop #pc 12864
solver_second_fast2.2850:  #pc 12864
	lw	%x9, 4(%x22)  #0 pc 12868
	flw	%f6, 0(%x6)  #1277 pc 12872
	sw	%x9, 0(%x2)  #1278 pc 12876
	sw	%x5, 4(%x2)  #1278 pc 12880
	fsw	%f6, 8(%x2)  #1278 pc 12884
	sw	%x7, 16(%x2)  #1278 pc 12888
	fsw	%f4, 24(%x2)  #1278 pc 12892
	fsw	%f2, 32(%x2)  #1278 pc 12896
	fsw	%f0, 40(%x2)  #1278 pc 12900
	sw	%x6, 48(%x2)  #1278 pc 12904
	mv	%f0, %f6 #pc 12908
	mv	%f1, %f7 #pc 12912
	sw	%x1, 52(%x2)  #1278 pc 12916
	addi	%x2, %x2, 56  #1278 pc 12920
	jal	%x1, fiszero.2528  #1278 pc 12924
	addi	%x2, %x2, -56  #1278 pc 12928
	lw	%x1, 52(%x2) #1278 pc 12932
	beq	%x5, %x0, 12  #1278 pc 12936
	j	be_else.9329 #pc 12940
	nop #pc 12944
	lw	%x5, 48(%x2)  #1281 pc 12948
	flw	%f0, 8(%x5)  #1281 pc 12952
	flw	%f2, 40(%x2)  #1281 pc 12956
	fmul	%f0, %f0, %f2  #1281 pc 12960
	flw	%f2, 16(%x5)  #1281 pc 12964
	flw	%f4, 32(%x2)  #1281 pc 12968
	fmul	%f2, %f2, %f4  #1281 pc 12972
	fadd	%f0, %f0, %f2  #1281 pc 12976
	flw	%f2, 24(%x5)  #1281 pc 12980
	flw	%f4, 24(%x2)  #1281 pc 12984
	fmul	%f2, %f2, %f4  #1281 pc 12988
	fadd	%f0, %f0, %f2  #1281 pc 12992
	lw	%x6, 16(%x2)  #1282 pc 12996
	flw	%f2, 24(%x6)  #1282 pc 13000
	fsw	%f0, 56(%x2)  #1283 pc 13004
	fsw	%f2, 64(%x2)  #1283 pc 13008
	sw	%x1, 76(%x2)  #1283 pc 13012
	addi	%x2, %x2, 80  #1283 pc 13016
	jal	%x1, fsqr.2536  #1283 pc 13020
	addi	%x2, %x2, -80  #1283 pc 13024
	lw	%x1, 76(%x2) #1283 pc 13028
	flw	%f2, 64(%x2)  #1283 pc 13032
	flw	%f4, 8(%x2)  #1283 pc 13036
	fmul	%f2, %f4, %f2  #1283 pc 13040
	fsub	%f0, %f0, %f2  #1283 pc 13044
	fsw	%f0, 72(%x2)  #1284 pc 13048
	sw	%x1, 84(%x2)  #1284 pc 13052
	addi	%x2, %x2, 88  #1284 pc 13056
	jal	%x1, fispos.2530  #1284 pc 13060
	addi	%x2, %x2, -88  #1284 pc 13064
	lw	%x1, 84(%x2) #1284 pc 13068
	beq	%x5, %x0, 12  #1284 pc 13072
	j	be_else.9331 #pc 13076
	nop #pc 13080
	addi	%x5, %x0, 0  #0 pc 13084
	ret #pc 13088
	nop #pc 13092
be_else.9331: #pc 13092
	lw	%x5, 4(%x2)  #1285 pc 13096
	sw	%x1, 84(%x2)  #1285 pc 13100
	addi	%x2, %x2, 88  #1285 pc 13104
	jal	%x1, o_isinvert.2688  #1285 pc 13108
	addi	%x2, %x2, -88  #1285 pc 13112
	lw	%x1, 84(%x2) #1285 pc 13116
	beq	%x5, %x0, 12  #1285 pc 13120
	j	be_else.9332 #pc 13124
	nop #pc 13128
	flw	%f0, 72(%x2)  #1288 pc 13132
	fsqrt	%f0, %f0  #1288 pc 13136
	flw	%f2, 56(%x2)  #1288 pc 13140
	fsub	%f0, %f2, %f0  #1288 pc 13144
	lw	%x5, 48(%x2)  #1288 pc 13148
	flw	%f2, 32(%x5)  #1288 pc 13152
	fmul	%f0, %f0, %f2  #1288 pc 13156
	lw	%x5, 0(%x2)  #1288 pc 13160
	fsw	%f0, 0(%x5) #1288 pc 13164
	j	be_cont.9333 #pc 13168
	nop #pc 13172
be_else.9332: #pc 13172
	flw	%f0, 72(%x2)  #1286 pc 13176
	fsqrt	%f0, %f0  #1286 pc 13180
	flw	%f2, 56(%x2)  #1286 pc 13184
	fadd	%f0, %f2, %f0  #1286 pc 13188
	lw	%x5, 48(%x2)  #1286 pc 13192
	flw	%f2, 32(%x5)  #1286 pc 13196
	fmul	%f0, %f0, %f2  #1286 pc 13200
	lw	%x5, 0(%x2)  #1286 pc 13204
	fsw	%f0, 0(%x5) #1286 pc 13208
be_cont.9333: #pc 13208
	addi	%x5, %x0, 1  #0 pc 13212
	ret #pc 13216
	nop #pc 13220
be_else.9329: #pc 13220
	addi	%x5, %x0, 0  #0 pc 13224
	ret #pc 13228
	nop #pc 13232
solver_fast2.2857:  #pc 13232
	lw	%x7, 16(%x22)  #1295 pc 13236
	lw	%x9, 12(%x22)  #1295 pc 13240
	lw	%x10, 8(%x22)  #1295 pc 13244
	lw	%x11, 4(%x22)  #1295 pc 13248
	slli	%x12, %x5, 2  #1295 pc 13252
	lw	%x11, %x12(%x11)  #1295 pc 13256
	sw	%x9, 0(%x2)  #1296 pc 13260
	sw	%x7, 4(%x2)  #1296 pc 13264
	sw	%x10, 8(%x2)  #1296 pc 13268
	sw	%x11, 12(%x2)  #1296 pc 13272
	sw	%x5, 16(%x2)  #1296 pc 13276
	sw	%x6, 20(%x2)  #1296 pc 13280
	mv	%x5, %x11 #pc 13284
	sw	%x1, 28(%x2)  #1296 pc 13288
	addi	%x2, %x2, 32  #1296 pc 13292
	jal	%x1, o_param_ctbl.2722  #1296 pc 13296
	addi	%x2, %x2, -32  #1296 pc 13300
	lw	%x1, 28(%x2) #1296 pc 13304
	flw	%f0, 0(%x5)  #1297 pc 13308
	flw	%f2, 8(%x5)  #1298 pc 13312
	flw	%f4, 16(%x5)  #1299 pc 13316
	lw	%x6, 20(%x2)  #1300 pc 13320
	sw	%x5, 24(%x2)  #1300 pc 13324
	fsw	%f4, 32(%x2)  #1300 pc 13328
	fsw	%f2, 40(%x2)  #1300 pc 13332
	fsw	%f0, 48(%x2)  #1300 pc 13336
	mv	%x5, %x6 #pc 13340
	sw	%x1, 60(%x2)  #1300 pc 13344
	addi	%x2, %x2, 64  #1300 pc 13348
	jal	%x1, d_const.2745  #1300 pc 13352
	addi	%x2, %x2, -64  #1300 pc 13356
	lw	%x1, 60(%x2) #1300 pc 13360
	lw	%x6, 16(%x2)  #1301 pc 13364
	slli	%x6, %x6, 2  #1301 pc 13368
	lw	%x5, %x6(%x5)  #1301 pc 13372
	lw	%x6, 12(%x2)  #1302 pc 13376
	sw	%x5, 56(%x2)  #1302 pc 13380
	mv	%x5, %x6 #pc 13384
	sw	%x1, 60(%x2)  #1302 pc 13388
	addi	%x2, %x2, 64  #1302 pc 13392
	jal	%x1, o_form.2684  #1302 pc 13396
	addi	%x2, %x2, -64  #1302 pc 13400
	lw	%x1, 60(%x2) #1302 pc 13404
	addi	%x24, %x0, 1  #pc 13408
	beq	%x5, %x24, 12  #1303 pc 13412
	j	be_else.9335 #pc 13416
	nop #pc 13420
	lw	%x5, 20(%x2)  #1304 pc 13424
	sw	%x1, 60(%x2)  #1304 pc 13428
	addi	%x2, %x2, 64  #1304 pc 13432
	jal	%x1, d_vec.2743  #1304 pc 13436
	addi	%x2, %x2, -64  #1304 pc 13440
	lw	%x1, 60(%x2) #1304 pc 13444
	mv	%x6, %x5  #1304 pc 13448
	flw	%f0, 48(%x2)  #1304 pc 13452
	flw	%f2, 40(%x2)  #1304 pc 13456
	flw	%f4, 32(%x2)  #1304 pc 13460
	lw	%x5, 12(%x2)  #1304 pc 13464
	lw	%x7, 56(%x2)  #1304 pc 13468
	lw	%x22, 8(%x2)  #1304 pc 13472
	lw	0(%x23), %x22  #1304 pc 13476
	jalr	%x0, %x23, 0  #1304 pc 13480
	nop #pc 13484
be_else.9335: #pc 13484
	addi	%x24, %x0, 2  #pc 13488
	beq	%x5, %x24, 12  #1305 pc 13492
	j	be_else.9336 #pc 13496
	nop #pc 13500
	flw	%f0, 48(%x2)  #1306 pc 13504
	flw	%f2, 40(%x2)  #1306 pc 13508
	flw	%f4, 32(%x2)  #1306 pc 13512
	lw	%x5, 12(%x2)  #1306 pc 13516
	lw	%x6, 56(%x2)  #1306 pc 13520
	lw	%x7, 24(%x2)  #1306 pc 13524
	lw	%x22, 4(%x2)  #1306 pc 13528
	lw	0(%x23), %x22  #1306 pc 13532
	jalr	%x0, %x23, 0  #1306 pc 13536
	nop #pc 13540
be_else.9336: #pc 13540
	flw	%f0, 48(%x2)  #1308 pc 13544
	flw	%f2, 40(%x2)  #1308 pc 13548
	flw	%f4, 32(%x2)  #1308 pc 13552
	lw	%x5, 12(%x2)  #1308 pc 13556
	lw	%x6, 56(%x2)  #1308 pc 13560
	lw	%x7, 24(%x2)  #1308 pc 13564
	lw	%x22, 0(%x2)  #1308 pc 13568
	lw	0(%x23), %x22  #1308 pc 13572
	jalr	%x0, %x23, 0  #1308 pc 13576
	nop #pc 13580
setup_rect_table.2860:  #pc 13580
	addi	%x7, %x0, 6  #0 pc 13584
	mv	%f0, l.6293  #0 pc 13588
	sw	%x6, 0(%x2)  #1317 pc 13592
	sw	%x5, 4(%x2)  #1317 pc 13596
	mv	%x5, %x7 #pc 13600
	sw	%x1, 12(%x2)  #1317 pc 13604
	addi	%x2, %x2, 16  #1317 pc 13608
	jal	%x1, create_float_array.2600  #1317 pc 13612
	addi	%x2, %x2, -16  #1317 pc 13616
	lw	%x1, 12(%x2) #1317 pc 13620
	lw	%x6, 4(%x2)  #1319 pc 13624
	flw	%f0, 0(%x6)  #1319 pc 13628
	sw	%x5, 8(%x2)  #1319 pc 13632
	sw	%x1, 12(%x2)  #1319 pc 13636
	addi	%x2, %x2, 16  #1319 pc 13640
	jal	%x1, fiszero.2528  #1319 pc 13644
	addi	%x2, %x2, -16  #1319 pc 13648
	lw	%x1, 12(%x2) #1319 pc 13652
	beq	%x5, %x0, 12  #1319 pc 13656
	j	be_else.9337 #pc 13660
	nop #pc 13664
	lw	%x5, 0(%x2)  #1323 pc 13668
	sw	%x1, 12(%x2)  #1323 pc 13672
	addi	%x2, %x2, 16  #1323 pc 13676
	jal	%x1, o_isinvert.2688  #1323 pc 13680
	addi	%x2, %x2, -16  #1323 pc 13684
	lw	%x1, 12(%x2) #1323 pc 13688
	lw	%x6, 4(%x2)  #1323 pc 13692
	flw	%f0, 0(%x6)  #1323 pc 13696
	sw	%x5, 12(%x2)  #1323 pc 13700
	sw	%x1, 20(%x2)  #1323 pc 13704
	addi	%x2, %x2, 24  #1323 pc 13708
	jal	%x1, fisneg.2532  #1323 pc 13712
	addi	%x2, %x2, -24  #1323 pc 13716
	lw	%x1, 20(%x2) #1323 pc 13720
	mv	%x6, %x5  #1323 pc 13724
	lw	%x5, 12(%x2)  #1323 pc 13728
	sw	%x1, 20(%x2)  #1323 pc 13732
	addi	%x2, %x2, 24  #1323 pc 13736
	jal	%x1, xor.2633  #1323 pc 13740
	addi	%x2, %x2, -24  #1323 pc 13744
	lw	%x1, 20(%x2) #1323 pc 13748
	lw	%x6, 0(%x2)  #1323 pc 13752
	sw	%x5, 16(%x2)  #1323 pc 13756
	mv	%x5, %x6 #pc 13760
	sw	%x1, 20(%x2)  #1323 pc 13764
	addi	%x2, %x2, 24  #1323 pc 13768
	jal	%x1, o_param_a.2692  #1323 pc 13772
	addi	%x2, %x2, -24  #1323 pc 13776
	lw	%x1, 20(%x2) #1323 pc 13780
	lw	%x5, 16(%x2)  #1323 pc 13784
	sw	%x1, 20(%x2)  #1323 pc 13788
	addi	%x2, %x2, 24  #1323 pc 13792
	jal	%x1, fneg_cond.2638  #1323 pc 13796
	addi	%x2, %x2, -24  #1323 pc 13800
	lw	%x1, 20(%x2) #1323 pc 13804
	lw	%x5, 8(%x2)  #1323 pc 13808
	fsw	%f0, 0(%x5) #1323 pc 13812
	mv	%f0, l.6305  #0 pc 13816
	lw	%x6, 4(%x2)  #1325 pc 13820
	flw	%f2, 0(%x6)  #1325 pc 13824
	fdiv	%f0, %f0, %f2  #1325 pc 13828
	fsw	%f0, 8(%x5) #1325 pc 13832
	j	be_cont.9338 #pc 13836
	nop #pc 13840
be_else.9337: #pc 13840
	mv	%f0, l.6293  #0 pc 13844
	lw	%x5, 8(%x2)  #1320 pc 13848
	fsw	%f0, 8(%x5) #1320 pc 13852
be_cont.9338: #pc 13852
	lw	%x6, 4(%x2)  #1327 pc 13856
	flw	%f0, 8(%x6)  #1327 pc 13860
	sw	%x1, 20(%x2)  #1327 pc 13864
	addi	%x2, %x2, 24  #1327 pc 13868
	jal	%x1, fiszero.2528  #1327 pc 13872
	addi	%x2, %x2, -24  #1327 pc 13876
	lw	%x1, 20(%x2) #1327 pc 13880
	beq	%x5, %x0, 12  #1327 pc 13884
	j	be_else.9339 #pc 13888
	nop #pc 13892
	lw	%x5, 0(%x2)  #1330 pc 13896
	sw	%x1, 20(%x2)  #1330 pc 13900
	addi	%x2, %x2, 24  #1330 pc 13904
	jal	%x1, o_isinvert.2688  #1330 pc 13908
	addi	%x2, %x2, -24  #1330 pc 13912
	lw	%x1, 20(%x2) #1330 pc 13916
	lw	%x6, 4(%x2)  #1330 pc 13920
	flw	%f0, 8(%x6)  #1330 pc 13924
	sw	%x5, 20(%x2)  #1330 pc 13928
	sw	%x1, 28(%x2)  #1330 pc 13932
	addi	%x2, %x2, 32  #1330 pc 13936
	jal	%x1, fisneg.2532  #1330 pc 13940
	addi	%x2, %x2, -32  #1330 pc 13944
	lw	%x1, 28(%x2) #1330 pc 13948
	mv	%x6, %x5  #1330 pc 13952
	lw	%x5, 20(%x2)  #1330 pc 13956
	sw	%x1, 28(%x2)  #1330 pc 13960
	addi	%x2, %x2, 32  #1330 pc 13964
	jal	%x1, xor.2633  #1330 pc 13968
	addi	%x2, %x2, -32  #1330 pc 13972
	lw	%x1, 28(%x2) #1330 pc 13976
	lw	%x6, 0(%x2)  #1330 pc 13980
	sw	%x5, 24(%x2)  #1330 pc 13984
	mv	%x5, %x6 #pc 13988
	sw	%x1, 28(%x2)  #1330 pc 13992
	addi	%x2, %x2, 32  #1330 pc 13996
	jal	%x1, o_param_b.2694  #1330 pc 14000
	addi	%x2, %x2, -32  #1330 pc 14004
	lw	%x1, 28(%x2) #1330 pc 14008
	lw	%x5, 24(%x2)  #1330 pc 14012
	sw	%x1, 28(%x2)  #1330 pc 14016
	addi	%x2, %x2, 32  #1330 pc 14020
	jal	%x1, fneg_cond.2638  #1330 pc 14024
	addi	%x2, %x2, -32  #1330 pc 14028
	lw	%x1, 28(%x2) #1330 pc 14032
	lw	%x5, 8(%x2)  #1330 pc 14036
	fsw	%f0, 16(%x5) #1330 pc 14040
	mv	%f0, l.6305  #0 pc 14044
	lw	%x6, 4(%x2)  #1331 pc 14048
	flw	%f2, 8(%x6)  #1331 pc 14052
	fdiv	%f0, %f0, %f2  #1331 pc 14056
	fsw	%f0, 24(%x5) #1331 pc 14060
	j	be_cont.9340 #pc 14064
	nop #pc 14068
be_else.9339: #pc 14068
	mv	%f0, l.6293  #0 pc 14072
	lw	%x5, 8(%x2)  #1328 pc 14076
	fsw	%f0, 24(%x5) #1328 pc 14080
be_cont.9340: #pc 14080
	lw	%x6, 4(%x2)  #1333 pc 14084
	flw	%f0, 16(%x6)  #1333 pc 14088
	sw	%x1, 28(%x2)  #1333 pc 14092
	addi	%x2, %x2, 32  #1333 pc 14096
	jal	%x1, fiszero.2528  #1333 pc 14100
	addi	%x2, %x2, -32  #1333 pc 14104
	lw	%x1, 28(%x2) #1333 pc 14108
	beq	%x5, %x0, 12  #1333 pc 14112
	j	be_else.9341 #pc 14116
	nop #pc 14120
	lw	%x5, 0(%x2)  #1336 pc 14124
	sw	%x1, 28(%x2)  #1336 pc 14128
	addi	%x2, %x2, 32  #1336 pc 14132
	jal	%x1, o_isinvert.2688  #1336 pc 14136
	addi	%x2, %x2, -32  #1336 pc 14140
	lw	%x1, 28(%x2) #1336 pc 14144
	lw	%x6, 4(%x2)  #1336 pc 14148
	flw	%f0, 16(%x6)  #1336 pc 14152
	sw	%x5, 28(%x2)  #1336 pc 14156
	sw	%x1, 36(%x2)  #1336 pc 14160
	addi	%x2, %x2, 40  #1336 pc 14164
	jal	%x1, fisneg.2532  #1336 pc 14168
	addi	%x2, %x2, -40  #1336 pc 14172
	lw	%x1, 36(%x2) #1336 pc 14176
	mv	%x6, %x5  #1336 pc 14180
	lw	%x5, 28(%x2)  #1336 pc 14184
	sw	%x1, 36(%x2)  #1336 pc 14188
	addi	%x2, %x2, 40  #1336 pc 14192
	jal	%x1, xor.2633  #1336 pc 14196
	addi	%x2, %x2, -40  #1336 pc 14200
	lw	%x1, 36(%x2) #1336 pc 14204
	lw	%x6, 0(%x2)  #1336 pc 14208
	sw	%x5, 32(%x2)  #1336 pc 14212
	mv	%x5, %x6 #pc 14216
	sw	%x1, 36(%x2)  #1336 pc 14220
	addi	%x2, %x2, 40  #1336 pc 14224
	jal	%x1, o_param_c.2696  #1336 pc 14228
	addi	%x2, %x2, -40  #1336 pc 14232
	lw	%x1, 36(%x2) #1336 pc 14236
	lw	%x5, 32(%x2)  #1336 pc 14240
	sw	%x1, 36(%x2)  #1336 pc 14244
	addi	%x2, %x2, 40  #1336 pc 14248
	jal	%x1, fneg_cond.2638  #1336 pc 14252
	addi	%x2, %x2, -40  #1336 pc 14256
	lw	%x1, 36(%x2) #1336 pc 14260
	lw	%x5, 8(%x2)  #1336 pc 14264
	fsw	%f0, 32(%x5) #1336 pc 14268
	mv	%f0, l.6305  #0 pc 14272
	lw	%x6, 4(%x2)  #1337 pc 14276
	flw	%f2, 16(%x6)  #1337 pc 14280
	fdiv	%f0, %f0, %f2  #1337 pc 14284
	fsw	%f0, 40(%x5) #1337 pc 14288
	j	be_cont.9342 #pc 14292
	nop #pc 14296
be_else.9341: #pc 14296
	mv	%f0, l.6293  #0 pc 14300
	lw	%x5, 8(%x2)  #1334 pc 14304
	fsw	%f0, 40(%x5) #1334 pc 14308
be_cont.9342: #pc 14308
	ret #pc 14312
	nop #pc 14316
setup_surface_table.2863:  #pc 14316
	addi	%x7, %x0, 4  #0 pc 14320
	mv	%f0, l.6293  #0 pc 14324
	sw	%x6, 0(%x2)  #1344 pc 14328
	sw	%x5, 4(%x2)  #1344 pc 14332
	mv	%x5, %x7 #pc 14336
	sw	%x1, 12(%x2)  #1344 pc 14340
	addi	%x2, %x2, 16  #1344 pc 14344
	jal	%x1, create_float_array.2600  #1344 pc 14348
	addi	%x2, %x2, -16  #1344 pc 14352
	lw	%x1, 12(%x2) #1344 pc 14356
	lw	%x6, 4(%x2)  #1346 pc 14360
	flw	%f0, 0(%x6)  #1346 pc 14364
	lw	%x7, 0(%x2)  #1346 pc 14368
	sw	%x5, 8(%x2)  #1346 pc 14372
	fsw	%f0, 16(%x2)  #1346 pc 14376
	mv	%x5, %x7 #pc 14380
	sw	%x1, 28(%x2)  #1346 pc 14384
	addi	%x2, %x2, 32  #1346 pc 14388
	jal	%x1, o_param_a.2692  #1346 pc 14392
	addi	%x2, %x2, -32  #1346 pc 14396
	lw	%x1, 28(%x2) #1346 pc 14400
	flw	%f2, 16(%x2)  #1346 pc 14404
	fmul	%f0, %f2, %f0  #1346 pc 14408
	lw	%x5, 4(%x2)  #1346 pc 14412
	flw	%f2, 8(%x5)  #1346 pc 14416
	lw	%x6, 0(%x2)  #1346 pc 14420
	fsw	%f0, 24(%x2)  #1346 pc 14424
	fsw	%f2, 32(%x2)  #1346 pc 14428
	mv	%x5, %x6 #pc 14432
	sw	%x1, 44(%x2)  #1346 pc 14436
	addi	%x2, %x2, 48  #1346 pc 14440
	jal	%x1, o_param_b.2694  #1346 pc 14444
	addi	%x2, %x2, -48  #1346 pc 14448
	lw	%x1, 44(%x2) #1346 pc 14452
	flw	%f2, 32(%x2)  #1346 pc 14456
	fmul	%f0, %f2, %f0  #1346 pc 14460
	flw	%f2, 24(%x2)  #1346 pc 14464
	fadd	%f0, %f2, %f0  #1346 pc 14468
	lw	%x5, 4(%x2)  #1346 pc 14472
	flw	%f2, 16(%x5)  #1346 pc 14476
	lw	%x5, 0(%x2)  #1346 pc 14480
	fsw	%f0, 40(%x2)  #1346 pc 14484
	fsw	%f2, 48(%x2)  #1346 pc 14488
	sw	%x1, 60(%x2)  #1346 pc 14492
	addi	%x2, %x2, 64  #1346 pc 14496
	jal	%x1, o_param_c.2696  #1346 pc 14500
	addi	%x2, %x2, -64  #1346 pc 14504
	lw	%x1, 60(%x2) #1346 pc 14508
	flw	%f2, 48(%x2)  #1346 pc 14512
	fmul	%f0, %f2, %f0  #1346 pc 14516
	flw	%f2, 40(%x2)  #1346 pc 14520
	fadd	%f0, %f2, %f0  #1346 pc 14524
	fsw	%f0, 56(%x2)  #1348 pc 14528
	sw	%x1, 68(%x2)  #1348 pc 14532
	addi	%x2, %x2, 72  #1348 pc 14536
	jal	%x1, fispos.2530  #1348 pc 14540
	addi	%x2, %x2, -72  #1348 pc 14544
	lw	%x1, 68(%x2) #1348 pc 14548
	beq	%x5, %x0, 12  #1348 pc 14552
	j	be_else.9344 #pc 14556
	nop #pc 14560
	mv	%f0, l.6293  #0 pc 14564
	lw	%x5, 8(%x2)  #1356 pc 14568
	fsw	%f0, 0(%x5) #1356 pc 14572
	j	be_cont.9345 #pc 14576
	nop #pc 14580
be_else.9344: #pc 14580
	mv	%f0, l.6343  #0 pc 14584
	flw	%f2, 56(%x2)  #1350 pc 14588
	fdiv	%f0, %f0, %f2  #1350 pc 14592
	lw	%x5, 8(%x2)  #1350 pc 14596
	fsw	%f0, 0(%x5) #1350 pc 14600
	lw	%x6, 0(%x2)  #1352 pc 14604
	mv	%x5, %x6 #pc 14608
	sw	%x1, 68(%x2)  #1352 pc 14612
	addi	%x2, %x2, 72  #1352 pc 14616
	jal	%x1, o_param_a.2692  #1352 pc 14620
	addi	%x2, %x2, -72  #1352 pc 14624
	lw	%x1, 68(%x2) #1352 pc 14628
	flw	%f2, 56(%x2)  #1352 pc 14632
	fdiv	%f0, %f0, %f2  #1352 pc 14636
	sw	%x1, 68(%x2)  #1352 pc 14640
	addi	%x2, %x2, 72  #1352 pc 14644
	jal	%x1, fneg.2534  #1352 pc 14648
	addi	%x2, %x2, -72  #1352 pc 14652
	lw	%x1, 68(%x2) #1352 pc 14656
	lw	%x5, 8(%x2)  #1352 pc 14660
	fsw	%f0, 8(%x5) #1352 pc 14664
	lw	%x6, 0(%x2)  #1353 pc 14668
	mv	%x5, %x6 #pc 14672
	sw	%x1, 68(%x2)  #1353 pc 14676
	addi	%x2, %x2, 72  #1353 pc 14680
	jal	%x1, o_param_b.2694  #1353 pc 14684
	addi	%x2, %x2, -72  #1353 pc 14688
	lw	%x1, 68(%x2) #1353 pc 14692
	flw	%f2, 56(%x2)  #1353 pc 14696
	fdiv	%f0, %f0, %f2  #1353 pc 14700
	sw	%x1, 68(%x2)  #1353 pc 14704
	addi	%x2, %x2, 72  #1353 pc 14708
	jal	%x1, fneg.2534  #1353 pc 14712
	addi	%x2, %x2, -72  #1353 pc 14716
	lw	%x1, 68(%x2) #1353 pc 14720
	lw	%x5, 8(%x2)  #1353 pc 14724
	fsw	%f0, 16(%x5) #1353 pc 14728
	lw	%x6, 0(%x2)  #1354 pc 14732
	mv	%x5, %x6 #pc 14736
	sw	%x1, 68(%x2)  #1354 pc 14740
	addi	%x2, %x2, 72  #1354 pc 14744
	jal	%x1, o_param_c.2696  #1354 pc 14748
	addi	%x2, %x2, -72  #1354 pc 14752
	lw	%x1, 68(%x2) #1354 pc 14756
	flw	%f2, 56(%x2)  #1354 pc 14760
	fdiv	%f0, %f0, %f2  #1354 pc 14764
	sw	%x1, 68(%x2)  #1354 pc 14768
	addi	%x2, %x2, 72  #1354 pc 14772
	jal	%x1, fneg.2534  #1354 pc 14776
	addi	%x2, %x2, -72  #1354 pc 14780
	lw	%x1, 68(%x2) #1354 pc 14784
	lw	%x5, 8(%x2)  #1354 pc 14788
	fsw	%f0, 24(%x5) #1354 pc 14792
be_cont.9345: #pc 14792
	ret #pc 14796
	nop #pc 14800
setup_second_table.2866:  #pc 14800
	addi	%x7, %x0, 5  #0 pc 14804
	mv	%f0, l.6293  #0 pc 14808
	sw	%x6, 0(%x2)  #1363 pc 14812
	sw	%x5, 4(%x2)  #1363 pc 14816
	mv	%x5, %x7 #pc 14820
	sw	%x1, 12(%x2)  #1363 pc 14824
	addi	%x2, %x2, 16  #1363 pc 14828
	jal	%x1, create_float_array.2600  #1363 pc 14832
	addi	%x2, %x2, -16  #1363 pc 14836
	lw	%x1, 12(%x2) #1363 pc 14840
	lw	%x6, 4(%x2)  #1365 pc 14844
	flw	%f0, 0(%x6)  #1365 pc 14848
	flw	%f2, 8(%x6)  #1365 pc 14852
	flw	%f4, 16(%x6)  #1365 pc 14856
	lw	%x7, 0(%x2)  #1365 pc 14860
	sw	%x5, 8(%x2)  #1365 pc 14864
	mv	%x5, %x7 #pc 14868
	sw	%x1, 12(%x2)  #1365 pc 14872
	addi	%x2, %x2, 16  #1365 pc 14876
	jal	%x1, quadratic.2797  #1365 pc 14880
	addi	%x2, %x2, -16  #1365 pc 14884
	lw	%x1, 12(%x2) #1365 pc 14888
	lw	%x5, 4(%x2)  #1366 pc 14892
	flw	%f2, 0(%x5)  #1366 pc 14896
	lw	%x6, 0(%x2)  #1366 pc 14900
	fsw	%f0, 16(%x2)  #1366 pc 14904
	fsw	%f2, 24(%x2)  #1366 pc 14908
	mv	%x5, %x6 #pc 14912
	sw	%x1, 36(%x2)  #1366 pc 14916
	addi	%x2, %x2, 40  #1366 pc 14920
	jal	%x1, o_param_a.2692  #1366 pc 14924
	addi	%x2, %x2, -40  #1366 pc 14928
	lw	%x1, 36(%x2) #1366 pc 14932
	flw	%f2, 24(%x2)  #1366 pc 14936
	fmul	%f0, %f2, %f0  #1366 pc 14940
	sw	%x1, 36(%x2)  #1366 pc 14944
	addi	%x2, %x2, 40  #1366 pc 14948
	jal	%x1, fneg.2534  #1366 pc 14952
	addi	%x2, %x2, -40  #1366 pc 14956
	lw	%x1, 36(%x2) #1366 pc 14960
	lw	%x5, 4(%x2)  #1367 pc 14964
	flw	%f2, 8(%x5)  #1367 pc 14968
	lw	%x6, 0(%x2)  #1367 pc 14972
	fsw	%f0, 32(%x2)  #1367 pc 14976
	fsw	%f2, 40(%x2)  #1367 pc 14980
	mv	%x5, %x6 #pc 14984
	sw	%x1, 52(%x2)  #1367 pc 14988
	addi	%x2, %x2, 56  #1367 pc 14992
	jal	%x1, o_param_b.2694  #1367 pc 14996
	addi	%x2, %x2, -56  #1367 pc 15000
	lw	%x1, 52(%x2) #1367 pc 15004
	flw	%f2, 40(%x2)  #1367 pc 15008
	fmul	%f0, %f2, %f0  #1367 pc 15012
	sw	%x1, 52(%x2)  #1367 pc 15016
	addi	%x2, %x2, 56  #1367 pc 15020
	jal	%x1, fneg.2534  #1367 pc 15024
	addi	%x2, %x2, -56  #1367 pc 15028
	lw	%x1, 52(%x2) #1367 pc 15032
	lw	%x5, 4(%x2)  #1368 pc 15036
	flw	%f2, 16(%x5)  #1368 pc 15040
	lw	%x6, 0(%x2)  #1368 pc 15044
	fsw	%f0, 48(%x2)  #1368 pc 15048
	fsw	%f2, 56(%x2)  #1368 pc 15052
	mv	%x5, %x6 #pc 15056
	sw	%x1, 68(%x2)  #1368 pc 15060
	addi	%x2, %x2, 72  #1368 pc 15064
	jal	%x1, o_param_c.2696  #1368 pc 15068
	addi	%x2, %x2, -72  #1368 pc 15072
	lw	%x1, 68(%x2) #1368 pc 15076
	flw	%f2, 56(%x2)  #1368 pc 15080
	fmul	%f0, %f2, %f0  #1368 pc 15084
	sw	%x1, 68(%x2)  #1368 pc 15088
	addi	%x2, %x2, 72  #1368 pc 15092
	jal	%x1, fneg.2534  #1368 pc 15096
	addi	%x2, %x2, -72  #1368 pc 15100
	lw	%x1, 68(%x2) #1368 pc 15104
	lw	%x5, 8(%x2)  #1370 pc 15108
	flw	%f2, 16(%x2)  #1370 pc 15112
	fsw	%f2, 0(%x5) #1370 pc 15116
	lw	%x6, 0(%x2)  #1374 pc 15120
	fsw	%f0, 64(%x2)  #1374 pc 15124
	mv	%x5, %x6 #pc 15128
	sw	%x1, 76(%x2)  #1374 pc 15132
	addi	%x2, %x2, 80  #1374 pc 15136
	jal	%x1, o_isrot.2690  #1374 pc 15140
	addi	%x2, %x2, -80  #1374 pc 15144
	lw	%x1, 76(%x2) #1374 pc 15148
	beq	%x5, %x0, 12  #1374 pc 15152
	j	be_else.9347 #pc 15156
	nop #pc 15160
	lw	%x5, 8(%x2)  #1379 pc 15164
	flw	%f0, 32(%x2)  #1379 pc 15168
	fsw	%f0, 8(%x5) #1379 pc 15172
	flw	%f0, 48(%x2)  #1380 pc 15176
	fsw	%f0, 16(%x5) #1380 pc 15180
	flw	%f0, 64(%x2)  #1381 pc 15184
	fsw	%f0, 24(%x5) #1381 pc 15188
	j	be_cont.9348 #pc 15192
	nop #pc 15196
be_else.9347: #pc 15196
	lw	%x5, 4(%x2)  #1375 pc 15200
	flw	%f0, 16(%x5)  #1375 pc 15204
	lw	%x6, 0(%x2)  #1375 pc 15208
	fsw	%f0, 72(%x2)  #1375 pc 15212
	mv	%x5, %x6 #pc 15216
	sw	%x1, 84(%x2)  #1375 pc 15220
	addi	%x2, %x2, 88  #1375 pc 15224
	jal	%x1, o_param_r2.2718  #1375 pc 15228
	addi	%x2, %x2, -88  #1375 pc 15232
	lw	%x1, 84(%x2) #1375 pc 15236
	flw	%f2, 72(%x2)  #1375 pc 15240
	fmul	%f0, %f2, %f0  #1375 pc 15244
	lw	%x5, 4(%x2)  #1375 pc 15248
	flw	%f2, 8(%x5)  #1375 pc 15252
	lw	%x6, 0(%x2)  #1375 pc 15256
	fsw	%f0, 80(%x2)  #1375 pc 15260
	fsw	%f2, 88(%x2)  #1375 pc 15264
	mv	%x5, %x6 #pc 15268
	sw	%x1, 100(%x2)  #1375 pc 15272
	addi	%x2, %x2, 104  #1375 pc 15276
	jal	%x1, o_param_r3.2720  #1375 pc 15280
	addi	%x2, %x2, -104  #1375 pc 15284
	lw	%x1, 100(%x2) #1375 pc 15288
	flw	%f2, 88(%x2)  #1375 pc 15292
	fmul	%f0, %f2, %f0  #1375 pc 15296
	flw	%f2, 80(%x2)  #1375 pc 15300
	fadd	%f0, %f2, %f0  #1375 pc 15304
	sw	%x1, 100(%x2)  #1375 pc 15308
	addi	%x2, %x2, 104  #1375 pc 15312
	jal	%x1, fhalf.2538  #1375 pc 15316
	addi	%x2, %x2, -104  #1375 pc 15320
	lw	%x1, 100(%x2) #1375 pc 15324
	flw	%f2, 32(%x2)  #1375 pc 15328
	fsub	%f0, %f2, %f0  #1375 pc 15332
	lw	%x5, 8(%x2)  #1375 pc 15336
	fsw	%f0, 8(%x5) #1375 pc 15340
	lw	%x6, 4(%x2)  #1376 pc 15344
	flw	%f0, 16(%x6)  #1376 pc 15348
	lw	%x7, 0(%x2)  #1376 pc 15352
	fsw	%f0, 96(%x2)  #1376 pc 15356
	mv	%x5, %x7 #pc 15360
	sw	%x1, 108(%x2)  #1376 pc 15364
	addi	%x2, %x2, 112  #1376 pc 15368
	jal	%x1, o_param_r1.2716  #1376 pc 15372
	addi	%x2, %x2, -112  #1376 pc 15376
	lw	%x1, 108(%x2) #1376 pc 15380
	flw	%f2, 96(%x2)  #1376 pc 15384
	fmul	%f0, %f2, %f0  #1376 pc 15388
	lw	%x5, 4(%x2)  #1376 pc 15392
	flw	%f2, 0(%x5)  #1376 pc 15396
	lw	%x6, 0(%x2)  #1376 pc 15400
	fsw	%f0, 104(%x2)  #1376 pc 15404
	fsw	%f2, 112(%x2)  #1376 pc 15408
	mv	%x5, %x6 #pc 15412
	sw	%x1, 124(%x2)  #1376 pc 15416
	addi	%x2, %x2, 128  #1376 pc 15420
	jal	%x1, o_param_r3.2720  #1376 pc 15424
	addi	%x2, %x2, -128  #1376 pc 15428
	lw	%x1, 124(%x2) #1376 pc 15432
	flw	%f2, 112(%x2)  #1376 pc 15436
	fmul	%f0, %f2, %f0  #1376 pc 15440
	flw	%f2, 104(%x2)  #1376 pc 15444
	fadd	%f0, %f2, %f0  #1376 pc 15448
	sw	%x1, 124(%x2)  #1376 pc 15452
	addi	%x2, %x2, 128  #1376 pc 15456
	jal	%x1, fhalf.2538  #1376 pc 15460
	addi	%x2, %x2, -128  #1376 pc 15464
	lw	%x1, 124(%x2) #1376 pc 15468
	flw	%f2, 48(%x2)  #1376 pc 15472
	fsub	%f0, %f2, %f0  #1376 pc 15476
	lw	%x5, 8(%x2)  #1376 pc 15480
	fsw	%f0, 16(%x5) #1376 pc 15484
	lw	%x6, 4(%x2)  #1377 pc 15488
	flw	%f0, 8(%x6)  #1377 pc 15492
	lw	%x7, 0(%x2)  #1377 pc 15496
	fsw	%f0, 120(%x2)  #1377 pc 15500
	mv	%x5, %x7 #pc 15504
	sw	%x1, 132(%x2)  #1377 pc 15508
	addi	%x2, %x2, 136  #1377 pc 15512
	jal	%x1, o_param_r1.2716  #1377 pc 15516
	addi	%x2, %x2, -136  #1377 pc 15520
	lw	%x1, 132(%x2) #1377 pc 15524
	flw	%f2, 120(%x2)  #1377 pc 15528
	fmul	%f0, %f2, %f0  #1377 pc 15532
	lw	%x5, 4(%x2)  #1377 pc 15536
	flw	%f2, 0(%x5)  #1377 pc 15540
	lw	%x5, 0(%x2)  #1377 pc 15544
	fsw	%f0, 128(%x2)  #1377 pc 15548
	fsw	%f2, 136(%x2)  #1377 pc 15552
	sw	%x1, 148(%x2)  #1377 pc 15556
	addi	%x2, %x2, 152  #1377 pc 15560
	jal	%x1, o_param_r2.2718  #1377 pc 15564
	addi	%x2, %x2, -152  #1377 pc 15568
	lw	%x1, 148(%x2) #1377 pc 15572
	flw	%f2, 136(%x2)  #1377 pc 15576
	fmul	%f0, %f2, %f0  #1377 pc 15580
	flw	%f2, 128(%x2)  #1377 pc 15584
	fadd	%f0, %f2, %f0  #1377 pc 15588
	sw	%x1, 148(%x2)  #1377 pc 15592
	addi	%x2, %x2, 152  #1377 pc 15596
	jal	%x1, fhalf.2538  #1377 pc 15600
	addi	%x2, %x2, -152  #1377 pc 15604
	lw	%x1, 148(%x2) #1377 pc 15608
	flw	%f2, 64(%x2)  #1377 pc 15612
	fsub	%f0, %f2, %f0  #1377 pc 15616
	lw	%x5, 8(%x2)  #1377 pc 15620
	fsw	%f0, 24(%x5) #1377 pc 15624
be_cont.9348: #pc 15624
	flw	%f0, 16(%x2)  #1383 pc 15628
	sw	%x1, 148(%x2)  #1383 pc 15632
	addi	%x2, %x2, 152  #1383 pc 15636
	jal	%x1, fiszero.2528  #1383 pc 15640
	addi	%x2, %x2, -152  #1383 pc 15644
	lw	%x1, 148(%x2) #1383 pc 15648
	beq	%x5, %x0, 12  #1383 pc 15652
	j	be_else.9349 #pc 15656
	nop #pc 15660
	mv	%f0, l.6305  #0 pc 15664
	flw	%f2, 16(%x2)  #1384 pc 15668
	fdiv	%f0, %f0, %f2  #1384 pc 15672
	lw	%x5, 8(%x2)  #1384 pc 15676
	fsw	%f0, 32(%x5) #1384 pc 15680
	j	be_cont.9350 #pc 15684
	nop #pc 15688
be_else.9349: #pc 15688
be_cont.9350: #pc 15688
	lw	%x5, 8(%x2)  #1386 pc 15692
	ret #pc 15696
	nop #pc 15700
iter_setup_dirvec_constants.2869:  #pc 15700
	lw	%x7, 4(%x22)  #0 pc 15704
	bge	%x6, %x0, 12  #1392 pc 15708
	j	bge_else.9351 #pc 15712
	nop #pc 15716
	slli	%x9, %x6, 2  #1393 pc 15720
	lw	%x7, %x9(%x7)  #1393 pc 15724
	sw	%x22, 0(%x2)  #1394 pc 15728
	sw	%x6, 4(%x2)  #1394 pc 15732
	sw	%x7, 8(%x2)  #1394 pc 15736
	sw	%x5, 12(%x2)  #1394 pc 15740
	sw	%x1, 20(%x2)  #1394 pc 15744
	addi	%x2, %x2, 24  #1394 pc 15748
	jal	%x1, d_const.2745  #1394 pc 15752
	addi	%x2, %x2, -24  #1394 pc 15756
	lw	%x1, 20(%x2) #1394 pc 15760
	lw	%x6, 12(%x2)  #1395 pc 15764
	sw	%x5, 16(%x2)  #1395 pc 15768
	mv	%x5, %x6 #pc 15772
	sw	%x1, 20(%x2)  #1395 pc 15776
	addi	%x2, %x2, 24  #1395 pc 15780
	jal	%x1, d_vec.2743  #1395 pc 15784
	addi	%x2, %x2, -24  #1395 pc 15788
	lw	%x1, 20(%x2) #1395 pc 15792
	lw	%x6, 8(%x2)  #1396 pc 15796
	sw	%x5, 20(%x2)  #1396 pc 15800
	mv	%x5, %x6 #pc 15804
	sw	%x1, 28(%x2)  #1396 pc 15808
	addi	%x2, %x2, 32  #1396 pc 15812
	jal	%x1, o_form.2684  #1396 pc 15816
	addi	%x2, %x2, -32  #1396 pc 15820
	lw	%x1, 28(%x2) #1396 pc 15824
	addi	%x24, %x0, 1  #pc 15828
	beq	%x5, %x24, 12  #1397 pc 15832
	j	be_else.9352 #pc 15836
	nop #pc 15840
	lw	%x5, 20(%x2)  #1398 pc 15844
	lw	%x6, 8(%x2)  #1398 pc 15848
	sw	%x1, 28(%x2)  #1398 pc 15852
	addi	%x2, %x2, 32  #1398 pc 15856
	jal	%x1, setup_rect_table.2860  #1398 pc 15860
	addi	%x2, %x2, -32  #1398 pc 15864
	lw	%x1, 28(%x2) #1398 pc 15868
	lw	%x6, 4(%x2)  #1398 pc 15872
	slli	%x7, %x6, 2  #1398 pc 15876
	lw	%x9, 16(%x2)  #1398 pc 15880
	sw	%x5, %x7(%x9)  #1398 pc 15884
	j	be_cont.9353 #pc 15888
	nop #pc 15892
be_else.9352: #pc 15892
	addi	%x24, %x0, 2  #pc 15896
	beq	%x5, %x24, 12  #1399 pc 15900
	j	be_else.9354 #pc 15904
	nop #pc 15908
	lw	%x5, 20(%x2)  #1400 pc 15912
	lw	%x6, 8(%x2)  #1400 pc 15916
	sw	%x1, 28(%x2)  #1400 pc 15920
	addi	%x2, %x2, 32  #1400 pc 15924
	jal	%x1, setup_surface_table.2863  #1400 pc 15928
	addi	%x2, %x2, -32  #1400 pc 15932
	lw	%x1, 28(%x2) #1400 pc 15936
	lw	%x6, 4(%x2)  #1400 pc 15940
	slli	%x7, %x6, 2  #1400 pc 15944
	lw	%x9, 16(%x2)  #1400 pc 15948
	sw	%x5, %x7(%x9)  #1400 pc 15952
	j	be_cont.9355 #pc 15956
	nop #pc 15960
be_else.9354: #pc 15960
	lw	%x5, 20(%x2)  #1402 pc 15964
	lw	%x6, 8(%x2)  #1402 pc 15968
	sw	%x1, 28(%x2)  #1402 pc 15972
	addi	%x2, %x2, 32  #1402 pc 15976
	jal	%x1, setup_second_table.2866  #1402 pc 15980
	addi	%x2, %x2, -32  #1402 pc 15984
	lw	%x1, 28(%x2) #1402 pc 15988
	lw	%x6, 4(%x2)  #1402 pc 15992
	slli	%x7, %x6, 2  #1402 pc 15996
	lw	%x9, 16(%x2)  #1402 pc 16000
	sw	%x5, %x7(%x9)  #1402 pc 16004
be_cont.9355: #pc 16004
be_cont.9353: #pc 16004
	addi	%x6, %x6, -1  #1404 pc 16008
	lw	%x5, 12(%x2)  #1404 pc 16012
	lw	%x22, 0(%x2)  #1404 pc 16016
	lw	0(%x23), %x22  #1404 pc 16020
	jalr	%x0, %x23, 0  #1404 pc 16024
	nop #pc 16028
bge_else.9351: #pc 16028
	ret #pc 16032
	nop #pc 16036
setup_dirvec_constants.2872:  #pc 16036
	lw	%x6, 8(%x22)  #0 pc 16040
	lw	%x22, 4(%x22)  #0 pc 16044
	lw	%x6, 0(%x6)  #1409 pc 16048
	addi	%x6, %x6, -1  #1409 pc 16052
	lw	0(%x23), %x22  #1409 pc 16056
	jalr	%x0, %x23, 0  #1409 pc 16060
	nop #pc 16064
setup_startp_constants.2874:  #pc 16064
	lw	%x7, 4(%x22)  #0 pc 16068
	bge	%x6, %x0, 12  #1417 pc 16072
	j	bge_else.9357 #pc 16076
	nop #pc 16080
	slli	%x9, %x6, 2  #1418 pc 16084
	lw	%x7, %x9(%x7)  #1418 pc 16088
	sw	%x22, 0(%x2)  #1419 pc 16092
	sw	%x6, 4(%x2)  #1419 pc 16096
	sw	%x5, 8(%x2)  #1419 pc 16100
	sw	%x7, 12(%x2)  #1419 pc 16104
	mv	%x5, %x7 #pc 16108
	sw	%x1, 20(%x2)  #1419 pc 16112
	addi	%x2, %x2, 24  #1419 pc 16116
	jal	%x1, o_param_ctbl.2722  #1419 pc 16120
	addi	%x2, %x2, -24  #1419 pc 16124
	lw	%x1, 20(%x2) #1419 pc 16128
	lw	%x6, 12(%x2)  #1420 pc 16132
	sw	%x5, 16(%x2)  #1420 pc 16136
	mv	%x5, %x6 #pc 16140
	sw	%x1, 20(%x2)  #1420 pc 16144
	addi	%x2, %x2, 24  #1420 pc 16148
	jal	%x1, o_form.2684  #1420 pc 16152
	addi	%x2, %x2, -24  #1420 pc 16156
	lw	%x1, 20(%x2) #1420 pc 16160
	lw	%x6, 8(%x2)  #1421 pc 16164
	flw	%f0, 0(%x6)  #1421 pc 16168
	lw	%x7, 12(%x2)  #1421 pc 16172
	sw	%x5, 20(%x2)  #1421 pc 16176
	fsw	%f0, 24(%x2)  #1421 pc 16180
	mv	%x5, %x7 #pc 16184
	sw	%x1, 36(%x2)  #1421 pc 16188
	addi	%x2, %x2, 40  #1421 pc 16192
	jal	%x1, o_param_x.2700  #1421 pc 16196
	addi	%x2, %x2, -40  #1421 pc 16200
	lw	%x1, 36(%x2) #1421 pc 16204
	flw	%f2, 24(%x2)  #1421 pc 16208
	fsub	%f0, %f2, %f0  #1421 pc 16212
	lw	%x5, 16(%x2)  #1421 pc 16216
	fsw	%f0, 0(%x5) #1421 pc 16220
	lw	%x6, 8(%x2)  #1422 pc 16224
	flw	%f0, 8(%x6)  #1422 pc 16228
	lw	%x7, 12(%x2)  #1422 pc 16232
	fsw	%f0, 32(%x2)  #1422 pc 16236
	mv	%x5, %x7 #pc 16240
	sw	%x1, 44(%x2)  #1422 pc 16244
	addi	%x2, %x2, 48  #1422 pc 16248
	jal	%x1, o_param_y.2702  #1422 pc 16252
	addi	%x2, %x2, -48  #1422 pc 16256
	lw	%x1, 44(%x2) #1422 pc 16260
	flw	%f2, 32(%x2)  #1422 pc 16264
	fsub	%f0, %f2, %f0  #1422 pc 16268
	lw	%x5, 16(%x2)  #1422 pc 16272
	fsw	%f0, 8(%x5) #1422 pc 16276
	lw	%x6, 8(%x2)  #1423 pc 16280
	flw	%f0, 16(%x6)  #1423 pc 16284
	lw	%x7, 12(%x2)  #1423 pc 16288
	fsw	%f0, 40(%x2)  #1423 pc 16292
	mv	%x5, %x7 #pc 16296
	sw	%x1, 52(%x2)  #1423 pc 16300
	addi	%x2, %x2, 56  #1423 pc 16304
	jal	%x1, o_param_z.2704  #1423 pc 16308
	addi	%x2, %x2, -56  #1423 pc 16312
	lw	%x1, 52(%x2) #1423 pc 16316
	flw	%f2, 40(%x2)  #1423 pc 16320
	fsub	%f0, %f2, %f0  #1423 pc 16324
	lw	%x5, 16(%x2)  #1423 pc 16328
	fsw	%f0, 16(%x5) #1423 pc 16332
	lw	%x6, 20(%x2)  #1424 pc 16336
	addi	%x24, %x0, 2  #pc 16340
	beq	%x6, %x24, 12  #1424 pc 16344
	j	be_else.9358 #pc 16348
	nop #pc 16352
	lw	%x6, 12(%x2)  #1426 pc 16356
	mv	%x5, %x6 #pc 16360
	sw	%x1, 52(%x2)  #1426 pc 16364
	addi	%x2, %x2, 56  #1426 pc 16368
	jal	%x1, o_param_abc.2698  #1426 pc 16372
	addi	%x2, %x2, -56  #1426 pc 16376
	lw	%x1, 52(%x2) #1426 pc 16380
	lw	%x6, 16(%x2)  #1426 pc 16384
	flw	%f0, 0(%x6)  #1426 pc 16388
	flw	%f2, 8(%x6)  #1426 pc 16392
	flw	%f4, 16(%x6)  #1426 pc 16396
	sw	%x1, 52(%x2)  #1426 pc 16400
	addi	%x2, %x2, 56  #1426 pc 16404
	jal	%x1, veciprod2.2663  #1426 pc 16408
	addi	%x2, %x2, -56  #1426 pc 16412
	lw	%x1, 52(%x2) #1426 pc 16416
	lw	%x5, 16(%x2)  #1425 pc 16420
	fsw	%f0, 24(%x5) #1425 pc 16424
	j	be_cont.9359 #pc 16428
	nop #pc 16432
be_else.9358: #pc 16432
	addi	%x24, %x0, 2  #pc 16436
	bge	%x24, %x6, 12  #1427 pc 16440
	j	ble_else.9360 #pc 16444
	nop #pc 16448
	j	ble_cont.9361 #pc 16452
	nop #pc 16456
ble_else.9360: #pc 16456
	flw	%f0, 0(%x5)  #1428 pc 16460
	flw	%f2, 8(%x5)  #1428 pc 16464
	flw	%f4, 16(%x5)  #1428 pc 16468
	lw	%x7, 12(%x2)  #1428 pc 16472
	mv	%x5, %x7 #pc 16476
	sw	%x1, 52(%x2)  #1428 pc 16480
	addi	%x2, %x2, 56  #1428 pc 16484
	jal	%x1, quadratic.2797  #1428 pc 16488
	addi	%x2, %x2, -56  #1428 pc 16492
	lw	%x1, 52(%x2) #1428 pc 16496
	lw	%x5, 20(%x2)  #1429 pc 16500
	addi	%x24, %x0, 3  #pc 16504
	beq	%x5, %x24, 12  #1429 pc 16508
	j	be_else.9362 #pc 16512
	nop #pc 16516
	mv	%f2, l.6305  #0 pc 16520
	fsub	%f0, %f0, %f2  #1429 pc 16524
	j	be_cont.9363 #pc 16528
	nop #pc 16532
be_else.9362: #pc 16532
be_cont.9363: #pc 16532
	lw	%x5, 16(%x2)  #1429 pc 16536
	fsw	%f0, 24(%x5) #1429 pc 16540
ble_cont.9361: #pc 16540
be_cont.9359: #pc 16540
	lw	%x5, 4(%x2)  #1431 pc 16544
	addi	%x6, %x5, -1  #1431 pc 16548
	lw	%x5, 8(%x2)  #1431 pc 16552
	lw	%x22, 0(%x2)  #1431 pc 16556
	lw	0(%x23), %x22  #1431 pc 16560
	jalr	%x0, %x23, 0  #1431 pc 16564
	nop #pc 16568
bge_else.9357: #pc 16568
	ret #pc 16572
	nop #pc 16576
setup_startp.2877:  #pc 16576
	lw	%x6, 12(%x22)  #1436 pc 16580
	lw	%x7, 8(%x22)  #1436 pc 16584
	lw	%x9, 4(%x22)  #1436 pc 16588
	sw	%x5, 0(%x2)  #1436 pc 16592
	sw	%x7, 4(%x2)  #1436 pc 16596
	sw	%x9, 8(%x2)  #1436 pc 16600
	mv	%x23, %x6 #pc 16604
	mv	%x6, %x5 #pc 16608
	mv	%x5, %x23 #pc 16612
	sw	%x1, 12(%x2)  #1436 pc 16616
	addi	%x2, %x2, 16  #1436 pc 16620
	jal	%x1, veccpy.2654  #1436 pc 16624
	addi	%x2, %x2, -16  #1436 pc 16628
	lw	%x1, 12(%x2) #1436 pc 16632
	lw	%x5, 8(%x2)  #1437 pc 16636
	lw	%x5, 0(%x5)  #1437 pc 16640
	addi	%x6, %x5, -1  #1437 pc 16644
	lw	%x5, 0(%x2)  #1437 pc 16648
	lw	%x22, 4(%x2)  #1437 pc 16652
	lw	0(%x23), %x22  #1437 pc 16656
	jalr	%x0, %x23, 0  #1437 pc 16660
	nop #pc 16664
is_rect_outside.2879:  #pc 16664
	fabs	%f0, %f0  #1449 pc 16668
	fsw	%f4, 0(%x2)  #1449 pc 16672
	sw	%x5, 8(%x2)  #1449 pc 16676
	fsw	%f2, 16(%x2)  #1449 pc 16680
	fsw	%f0, 24(%x2)  #1449 pc 16684
	sw	%x1, 36(%x2)  #1449 pc 16688
	addi	%x2, %x2, 40  #1449 pc 16692
	jal	%x1, o_param_a.2692  #1449 pc 16696
	addi	%x2, %x2, -40  #1449 pc 16700
	lw	%x1, 36(%x2) #1449 pc 16704
	mv	%f2, %f0  #1449 pc 16708
	mv	%f3, %f1  #1449 pc 16712
	flw	%f0, 24(%x2)  #1449 pc 16716
	sw	%x1, 36(%x2)  #1449 pc 16720
	addi	%x2, %x2, 40  #1449 pc 16724
	jal	%x1, fless.2540  #1449 pc 16728
	addi	%x2, %x2, -40  #1449 pc 16732
	lw	%x1, 36(%x2) #1449 pc 16736
	beq	%x5, %x0, 12  #1449 pc 16740
	j	be_else.9366 #pc 16744
	nop #pc 16748
	addi	%x5, %x0, 0  #0 pc 16752
	j	be_cont.9367 #pc 16756
	nop #pc 16760
be_else.9366: #pc 16760
	flw	%f0, 16(%x2)  #1450 pc 16764
	fabs	%f0, %f0  #1450 pc 16768
	lw	%x5, 8(%x2)  #1450 pc 16772
	fsw	%f0, 32(%x2)  #1450 pc 16776
	sw	%x1, 44(%x2)  #1450 pc 16780
	addi	%x2, %x2, 48  #1450 pc 16784
	jal	%x1, o_param_b.2694  #1450 pc 16788
	addi	%x2, %x2, -48  #1450 pc 16792
	lw	%x1, 44(%x2) #1450 pc 16796
	mv	%f2, %f0  #1450 pc 16800
	mv	%f3, %f1  #1450 pc 16804
	flw	%f0, 32(%x2)  #1450 pc 16808
	sw	%x1, 44(%x2)  #1450 pc 16812
	addi	%x2, %x2, 48  #1450 pc 16816
	jal	%x1, fless.2540  #1450 pc 16820
	addi	%x2, %x2, -48  #1450 pc 16824
	lw	%x1, 44(%x2) #1450 pc 16828
	beq	%x5, %x0, 12  #1450 pc 16832
	j	be_else.9368 #pc 16836
	nop #pc 16840
	addi	%x5, %x0, 0  #0 pc 16844
	j	be_cont.9369 #pc 16848
	nop #pc 16852
be_else.9368: #pc 16852
	flw	%f0, 0(%x2)  #1451 pc 16856
	fabs	%f0, %f0  #1451 pc 16860
	lw	%x5, 8(%x2)  #1451 pc 16864
	fsw	%f0, 40(%x2)  #1451 pc 16868
	sw	%x1, 52(%x2)  #1451 pc 16872
	addi	%x2, %x2, 56  #1451 pc 16876
	jal	%x1, o_param_c.2696  #1451 pc 16880
	addi	%x2, %x2, -56  #1451 pc 16884
	lw	%x1, 52(%x2) #1451 pc 16888
	mv	%f2, %f0  #1451 pc 16892
	mv	%f3, %f1  #1451 pc 16896
	flw	%f0, 40(%x2)  #1451 pc 16900
	sw	%x1, 52(%x2)  #1451 pc 16904
	addi	%x2, %x2, 56  #1451 pc 16908
	jal	%x1, fless.2540  #1451 pc 16912
	addi	%x2, %x2, -56  #1451 pc 16916
	lw	%x1, 52(%x2) #1451 pc 16920
be_cont.9369: #pc 16920
be_cont.9367: #pc 16920
	beq	%x5, %x0, 12  #1448 pc 16924
	j	be_else.9370 #pc 16928
	nop #pc 16932
	lw	%x5, 8(%x2)  #1454 pc 16936
	sw	%x1, 52(%x2)  #1454 pc 16940
	addi	%x2, %x2, 56  #1454 pc 16944
	jal	%x1, o_isinvert.2688  #1454 pc 16948
	addi	%x2, %x2, -56  #1454 pc 16952
	lw	%x1, 52(%x2) #1454 pc 16956
	beq	%x5, %x0, 12  #1454 pc 16960
	j	be_else.9371 #pc 16964
	nop #pc 16968
	addi	%x5, %x0, 1  #0 pc 16972
	ret #pc 16976
	nop #pc 16980
be_else.9371: #pc 16980
	addi	%x5, %x0, 0  #0 pc 16984
	ret #pc 16988
	nop #pc 16992
be_else.9370: #pc 16992
	lw	%x5, 8(%x2)  #1454 pc 16996
	j	o_isinvert.2688  #1454 pc 17000
	nop #pc 17004
is_plane_outside.2884:  #pc 17004
	sw	%x5, 0(%x2)  #1459 pc 17008
	fsw	%f4, 8(%x2)  #1459 pc 17012
	fsw	%f2, 16(%x2)  #1459 pc 17016
	fsw	%f0, 24(%x2)  #1459 pc 17020
	sw	%x1, 36(%x2)  #1459 pc 17024
	addi	%x2, %x2, 40  #1459 pc 17028
	jal	%x1, o_param_abc.2698  #1459 pc 17032
	addi	%x2, %x2, -40  #1459 pc 17036
	lw	%x1, 36(%x2) #1459 pc 17040
	flw	%f0, 24(%x2)  #1459 pc 17044
	flw	%f2, 16(%x2)  #1459 pc 17048
	flw	%f4, 8(%x2)  #1459 pc 17052
	sw	%x1, 36(%x2)  #1459 pc 17056
	addi	%x2, %x2, 40  #1459 pc 17060
	jal	%x1, veciprod2.2663  #1459 pc 17064
	addi	%x2, %x2, -40  #1459 pc 17068
	lw	%x1, 36(%x2) #1459 pc 17072
	lw	%x5, 0(%x2)  #1460 pc 17076
	fsw	%f0, 32(%x2)  #1460 pc 17080
	sw	%x1, 44(%x2)  #1460 pc 17084
	addi	%x2, %x2, 48  #1460 pc 17088
	jal	%x1, o_isinvert.2688  #1460 pc 17092
	addi	%x2, %x2, -48  #1460 pc 17096
	lw	%x1, 44(%x2) #1460 pc 17100
	flw	%f0, 32(%x2)  #1460 pc 17104
	sw	%x5, 40(%x2)  #1460 pc 17108
	sw	%x1, 44(%x2)  #1460 pc 17112
	addi	%x2, %x2, 48  #1460 pc 17116
	jal	%x1, fisneg.2532  #1460 pc 17120
	addi	%x2, %x2, -48  #1460 pc 17124
	lw	%x1, 44(%x2) #1460 pc 17128
	mv	%x6, %x5  #1460 pc 17132
	lw	%x5, 40(%x2)  #1460 pc 17136
	sw	%x1, 44(%x2)  #1460 pc 17140
	addi	%x2, %x2, 48  #1460 pc 17144
	jal	%x1, xor.2633  #1460 pc 17148
	addi	%x2, %x2, -48  #1460 pc 17152
	lw	%x1, 44(%x2) #1460 pc 17156
	beq	%x5, %x0, 12  #1460 pc 17160
	j	be_else.9373 #pc 17164
	nop #pc 17168
	addi	%x5, %x0, 1  #0 pc 17172
	ret #pc 17176
	nop #pc 17180
be_else.9373: #pc 17180
	addi	%x5, %x0, 0  #0 pc 17184
	ret #pc 17188
	nop #pc 17192
is_second_outside.2889:  #pc 17192
	sw	%x5, 0(%x2)  #1465 pc 17196
	sw	%x1, 4(%x2)  #1465 pc 17200
	addi	%x2, %x2, 8  #1465 pc 17204
	jal	%x1, quadratic.2797  #1465 pc 17208
	addi	%x2, %x2, -8  #1465 pc 17212
	lw	%x1, 4(%x2) #1465 pc 17216
	lw	%x5, 0(%x2)  #1466 pc 17220
	fsw	%f0, 8(%x2)  #1466 pc 17224
	sw	%x1, 20(%x2)  #1466 pc 17228
	addi	%x2, %x2, 24  #1466 pc 17232
	jal	%x1, o_form.2684  #1466 pc 17236
	addi	%x2, %x2, -24  #1466 pc 17240
	lw	%x1, 20(%x2) #1466 pc 17244
	addi	%x24, %x0, 3  #pc 17248
	beq	%x5, %x24, 12  #1466 pc 17252
	j	be_else.9375 #pc 17256
	nop #pc 17260
	mv	%f0, l.6305  #0 pc 17264
	flw	%f2, 8(%x2)  #1466 pc 17268
	fsub	%f0, %f2, %f0  #1466 pc 17272
	j	be_cont.9376 #pc 17276
	nop #pc 17280
be_else.9375: #pc 17280
	flw	%f0, 8(%x2)  #1466 pc 17284
be_cont.9376: #pc 17284
	lw	%x5, 0(%x2)  #1467 pc 17288
	fsw	%f0, 16(%x2)  #1467 pc 17292
	sw	%x1, 28(%x2)  #1467 pc 17296
	addi	%x2, %x2, 32  #1467 pc 17300
	jal	%x1, o_isinvert.2688  #1467 pc 17304
	addi	%x2, %x2, -32  #1467 pc 17308
	lw	%x1, 28(%x2) #1467 pc 17312
	flw	%f0, 16(%x2)  #1467 pc 17316
	sw	%x5, 24(%x2)  #1467 pc 17320
	sw	%x1, 28(%x2)  #1467 pc 17324
	addi	%x2, %x2, 32  #1467 pc 17328
	jal	%x1, fisneg.2532  #1467 pc 17332
	addi	%x2, %x2, -32  #1467 pc 17336
	lw	%x1, 28(%x2) #1467 pc 17340
	mv	%x6, %x5  #1467 pc 17344
	lw	%x5, 24(%x2)  #1467 pc 17348
	sw	%x1, 28(%x2)  #1467 pc 17352
	addi	%x2, %x2, 32  #1467 pc 17356
	jal	%x1, xor.2633  #1467 pc 17360
	addi	%x2, %x2, -32  #1467 pc 17364
	lw	%x1, 28(%x2) #1467 pc 17368
	beq	%x5, %x0, 12  #1467 pc 17372
	j	be_else.9377 #pc 17376
	nop #pc 17380
	addi	%x5, %x0, 1  #0 pc 17384
	ret #pc 17388
	nop #pc 17392
be_else.9377: #pc 17392
	addi	%x5, %x0, 0  #0 pc 17396
	ret #pc 17400
	nop #pc 17404
is_outside.2894:  #pc 17404
	fsw	%f4, 0(%x2)  #1472 pc 17408
	fsw	%f2, 8(%x2)  #1472 pc 17412
	sw	%x5, 16(%x2)  #1472 pc 17416
	fsw	%f0, 24(%x2)  #1472 pc 17420
	sw	%x1, 36(%x2)  #1472 pc 17424
	addi	%x2, %x2, 40  #1472 pc 17428
	jal	%x1, o_param_x.2700  #1472 pc 17432
	addi	%x2, %x2, -40  #1472 pc 17436
	lw	%x1, 36(%x2) #1472 pc 17440
	flw	%f2, 24(%x2)  #1472 pc 17444
	fsub	%f0, %f2, %f0  #1472 pc 17448
	lw	%x5, 16(%x2)  #1473 pc 17452
	fsw	%f0, 32(%x2)  #1473 pc 17456
	sw	%x1, 44(%x2)  #1473 pc 17460
	addi	%x2, %x2, 48  #1473 pc 17464
	jal	%x1, o_param_y.2702  #1473 pc 17468
	addi	%x2, %x2, -48  #1473 pc 17472
	lw	%x1, 44(%x2) #1473 pc 17476
	flw	%f2, 8(%x2)  #1473 pc 17480
	fsub	%f0, %f2, %f0  #1473 pc 17484
	lw	%x5, 16(%x2)  #1474 pc 17488
	fsw	%f0, 40(%x2)  #1474 pc 17492
	sw	%x1, 52(%x2)  #1474 pc 17496
	addi	%x2, %x2, 56  #1474 pc 17500
	jal	%x1, o_param_z.2704  #1474 pc 17504
	addi	%x2, %x2, -56  #1474 pc 17508
	lw	%x1, 52(%x2) #1474 pc 17512
	flw	%f2, 0(%x2)  #1474 pc 17516
	fsub	%f0, %f2, %f0  #1474 pc 17520
	lw	%x5, 16(%x2)  #1475 pc 17524
	fsw	%f0, 48(%x2)  #1475 pc 17528
	sw	%x1, 60(%x2)  #1475 pc 17532
	addi	%x2, %x2, 64  #1475 pc 17536
	jal	%x1, o_form.2684  #1475 pc 17540
	addi	%x2, %x2, -64  #1475 pc 17544
	lw	%x1, 60(%x2) #1475 pc 17548
	addi	%x24, %x0, 1  #pc 17552
	beq	%x5, %x24, 12  #1476 pc 17556
	j	be_else.9379 #pc 17560
	nop #pc 17564
	flw	%f0, 32(%x2)  #1477 pc 17568
	flw	%f2, 40(%x2)  #1477 pc 17572
	flw	%f4, 48(%x2)  #1477 pc 17576
	lw	%x5, 16(%x2)  #1477 pc 17580
	j	is_rect_outside.2879  #1477 pc 17584
	nop #pc 17588
be_else.9379: #pc 17588
	addi	%x24, %x0, 2  #pc 17592
	beq	%x5, %x24, 12  #1478 pc 17596
	j	be_else.9380 #pc 17600
	nop #pc 17604
	flw	%f0, 32(%x2)  #1479 pc 17608
	flw	%f2, 40(%x2)  #1479 pc 17612
	flw	%f4, 48(%x2)  #1479 pc 17616
	lw	%x5, 16(%x2)  #1479 pc 17620
	j	is_plane_outside.2884  #1479 pc 17624
	nop #pc 17628
be_else.9380: #pc 17628
	flw	%f0, 32(%x2)  #1481 pc 17632
	flw	%f2, 40(%x2)  #1481 pc 17636
	flw	%f4, 48(%x2)  #1481 pc 17640
	lw	%x5, 16(%x2)  #1481 pc 17644
	j	is_second_outside.2889  #1481 pc 17648
	nop #pc 17652
check_all_inside.2899:  #pc 17652
	lw	%x7, 4(%x22)  #1486 pc 17656
	slli	%x9, %x5, 2  #1486 pc 17660
	lw	%x9, %x9(%x6)  #1486 pc 17664
	addi	%x24, %x0, -1  #pc 17668
	beq	%x9, %x24, 12  #1487 pc 17672
	j	be_else.9381 #pc 17676
	nop #pc 17680
	addi	%x5, %x0, 1  #0 pc 17684
	ret #pc 17688
	nop #pc 17692
be_else.9381: #pc 17692
	slli	%x9, %x9, 2  #1490 pc 17696
	lw	%x7, %x9(%x7)  #1490 pc 17700
	fsw	%f4, 0(%x2)  #1490 pc 17704
	fsw	%f2, 8(%x2)  #1490 pc 17708
	fsw	%f0, 16(%x2)  #1490 pc 17712
	sw	%x6, 24(%x2)  #1490 pc 17716
	sw	%x22, 28(%x2)  #1490 pc 17720
	sw	%x5, 32(%x2)  #1490 pc 17724
	mv	%x5, %x7 #pc 17728
	sw	%x1, 36(%x2)  #1490 pc 17732
	addi	%x2, %x2, 40  #1490 pc 17736
	jal	%x1, is_outside.2894  #1490 pc 17740
	addi	%x2, %x2, -40  #1490 pc 17744
	lw	%x1, 36(%x2) #1490 pc 17748
	beq	%x5, %x0, 12  #1490 pc 17752
	j	be_else.9382 #pc 17756
	nop #pc 17760
	lw	%x5, 32(%x2)  #1493 pc 17764
	addi	%x5, %x5, 1  #1493 pc 17768
	flw	%f0, 16(%x2)  #1493 pc 17772
	flw	%f2, 8(%x2)  #1493 pc 17776
	flw	%f4, 0(%x2)  #1493 pc 17780
	lw	%x6, 24(%x2)  #1493 pc 17784
	lw	%x22, 28(%x2)  #1493 pc 17788
	lw	0(%x23), %x22  #1493 pc 17792
	jalr	%x0, %x23, 0  #1493 pc 17796
	nop #pc 17800
be_else.9382: #pc 17800
	addi	%x5, %x0, 0  #0 pc 17804
	ret #pc 17808
	nop #pc 17812
shadow_check_and_group.2905:  #pc 17812
	lw	%x7, 28(%x22)  #0 pc 17816
	lw	%x9, 24(%x22)  #0 pc 17820
	lw	%x10, 20(%x22)  #0 pc 17824
	lw	%x11, 16(%x22)  #0 pc 17828
	lw	%x12, 12(%x22)  #0 pc 17832
	lw	%x13, 8(%x22)  #0 pc 17836
	lw	%x14, 4(%x22)  #0 pc 17840
	slli	%x15, %x5, 2  #1506 pc 17844
	lw	%x15, %x15(%x6)  #1506 pc 17848
	addi	%x24, %x0, -1  #pc 17852
	beq	%x15, %x24, 12  #1506 pc 17856
	j	be_else.9383 #pc 17860
	nop #pc 17864
	addi	%x5, %x0, 0  #0 pc 17868
	ret #pc 17872
	nop #pc 17876
be_else.9383: #pc 17876
	slli	%x15, %x5, 2  #1509 pc 17880
	lw	%x15, %x15(%x6)  #1509 pc 17884
	sw	%x14, 0(%x2)  #1510 pc 17888
	sw	%x13, 4(%x2)  #1510 pc 17892
	sw	%x12, 8(%x2)  #1510 pc 17896
	sw	%x6, 12(%x2)  #1510 pc 17900
	sw	%x22, 16(%x2)  #1510 pc 17904
	sw	%x5, 20(%x2)  #1510 pc 17908
	sw	%x10, 24(%x2)  #1510 pc 17912
	sw	%x15, 28(%x2)  #1510 pc 17916
	sw	%x9, 32(%x2)  #1510 pc 17920
	mv	%x6, %x11 #pc 17924
	mv	%x5, %x15 #pc 17928
	mv	%x22, %x7 #pc 17932
	mv	%x7, %x13 #pc 17936
	sw	%x1, 36(%x2)  #1510 pc 17940
	lw	%x23, 0(%x22)  #1510 pc 17944
	addi	%x2, %x2, 40  #1510 pc 17948
	jalr	%x1, %x23, 0  #1510 pc 17952
	addi	%x2, %x2, -40  #1510 pc 17956
	lw	%x1, 36(%x2)  #1510 pc 17960
	lw	%x6, 32(%x2)  #1511 pc 17964
	flw	%f0, 0(%x6)  #1511 pc 17968
	fsw	%f0, 40(%x2)  #1512 pc 17972
	beq	%x5, %x0, 12  #1512 pc 17976
	j	be_else.9385 #pc 17980
	nop #pc 17984
	addi	%x5, %x0, 0  #0 pc 17988
	j	be_cont.9386 #pc 17992
	nop #pc 17996
be_else.9385: #pc 17996
	mv	%f2, l.6695  #0 pc 18000
	sw	%x1, 52(%x2)  #1512 pc 18004
	addi	%x2, %x2, 56  #1512 pc 18008
	jal	%x1, fless.2540  #1512 pc 18012
	addi	%x2, %x2, -56  #1512 pc 18016
	lw	%x1, 52(%x2) #1512 pc 18020
be_cont.9386: #pc 18020
	beq	%x5, %x0, 12  #1512 pc 18024
	j	be_else.9387 #pc 18028
	nop #pc 18032
	lw	%x5, 28(%x2)  #1528 pc 18036
	slli	%x5, %x5, 2  #1528 pc 18040
	lw	%x6, 24(%x2)  #1528 pc 18044
	lw	%x5, %x5(%x6)  #1528 pc 18048
	sw	%x1, 52(%x2)  #1528 pc 18052
	addi	%x2, %x2, 56  #1528 pc 18056
	jal	%x1, o_isinvert.2688  #1528 pc 18060
	addi	%x2, %x2, -56  #1528 pc 18064
	lw	%x1, 52(%x2) #1528 pc 18068
	beq	%x5, %x0, 12  #1528 pc 18072
	j	be_else.9388 #pc 18076
	nop #pc 18080
	addi	%x5, %x0, 0  #0 pc 18084
	ret #pc 18088
	nop #pc 18092
be_else.9388: #pc 18092
	lw	%x5, 20(%x2)  #1529 pc 18096
	addi	%x5, %x5, 1  #1529 pc 18100
	lw	%x6, 12(%x2)  #1529 pc 18104
	lw	%x22, 16(%x2)  #1529 pc 18108
	lw	0(%x23), %x22  #1529 pc 18112
	jalr	%x0, %x23, 0  #1529 pc 18116
	nop #pc 18120
be_else.9387: #pc 18120
	mv	%f0, l.6697  #0 pc 18124
	flw	%f2, 40(%x2)  #1515 pc 18128
	fadd	%f0, %f2, %f0  #1515 pc 18132
	lw	%x5, 8(%x2)  #1516 pc 18136
	flw	%f2, 0(%x5)  #1516 pc 18140
	fmul	%f2, %f2, %f0  #1516 pc 18144
	lw	%x6, 4(%x2)  #1516 pc 18148
	flw	%f4, 0(%x6)  #1516 pc 18152
	fadd	%f2, %f2, %f4  #1516 pc 18156
	flw	%f4, 8(%x5)  #1517 pc 18160
	fmul	%f4, %f4, %f0  #1517 pc 18164
	flw	%f6, 8(%x6)  #1517 pc 18168
	fadd	%f4, %f4, %f6  #1517 pc 18172
	flw	%f6, 16(%x5)  #1518 pc 18176
	fmul	%f0, %f6, %f0  #1518 pc 18180
	flw	%f6, 16(%x6)  #1518 pc 18184
	fadd	%f0, %f0, %f6  #1518 pc 18188
	addi	%x5, %x0, 0  #0 pc 18192
	lw	%x6, 12(%x2)  #1519 pc 18196
	lw	%x22, 0(%x2)  #1519 pc 18200
	mv	%f28, %f4 #pc 18204
	mv	%f29, %f5 #pc 18208
	mv	%f4, %f0 #pc 18212
	mv	%f5, %f1 #pc 18216
	mv	%f0, %f2 #pc 18220
	mv	%f1, %f3 #pc 18224
	mv	%f2, %f28 #pc 18228
	mv	%f3, %f29 #pc 18232
	sw	%x1, 52(%x2)  #1519 pc 18236
	lw	%x23, 0(%x22)  #1519 pc 18240
	addi	%x2, %x2, 56  #1519 pc 18244
	jalr	%x1, %x23, 0  #1519 pc 18248
	addi	%x2, %x2, -56  #1519 pc 18252
	lw	%x1, 52(%x2)  #1519 pc 18256
	beq	%x5, %x0, 12  #1519 pc 18260
	j	be_else.9389 #pc 18264
	nop #pc 18268
	lw	%x5, 20(%x2)  #1522 pc 18272
	addi	%x5, %x5, 1  #1522 pc 18276
	lw	%x6, 12(%x2)  #1522 pc 18280
	lw	%x22, 16(%x2)  #1522 pc 18284
	lw	0(%x23), %x22  #1522 pc 18288
	jalr	%x0, %x23, 0  #1522 pc 18292
	nop #pc 18296
be_else.9389: #pc 18296
	addi	%x5, %x0, 1  #0 pc 18300
	ret #pc 18304
	nop #pc 18308
shadow_check_one_or_group.2908:  #pc 18308
	lw	%x7, 8(%x22)  #1536 pc 18312
	lw	%x9, 4(%x22)  #1536 pc 18316
	slli	%x10, %x5, 2  #1536 pc 18320
	lw	%x10, %x10(%x6)  #1536 pc 18324
	addi	%x24, %x0, -1  #pc 18328
	beq	%x10, %x24, 12  #1537 pc 18332
	j	be_else.9390 #pc 18336
	nop #pc 18340
	addi	%x5, %x0, 0  #0 pc 18344
	ret #pc 18348
	nop #pc 18352
be_else.9390: #pc 18352
	slli	%x10, %x10, 2  #1540 pc 18356
	lw	%x9, %x10(%x9)  #1540 pc 18360
	addi	%x10, %x0, 0  #0 pc 18364
	sw	%x6, 0(%x2)  #1541 pc 18368
	sw	%x22, 4(%x2)  #1541 pc 18372
	sw	%x5, 8(%x2)  #1541 pc 18376
	mv	%x6, %x9 #pc 18380
	mv	%x5, %x10 #pc 18384
	mv	%x22, %x7 #pc 18388
	sw	%x1, 12(%x2)  #1541 pc 18392
	lw	%x23, 0(%x22)  #1541 pc 18396
	addi	%x2, %x2, 16  #1541 pc 18400
	jalr	%x1, %x23, 0  #1541 pc 18404
	addi	%x2, %x2, -16  #1541 pc 18408
	lw	%x1, 12(%x2)  #1541 pc 18412
	beq	%x5, %x0, 12  #1542 pc 18416
	j	be_else.9391 #pc 18420
	nop #pc 18424
	lw	%x5, 8(%x2)  #1545 pc 18428
	addi	%x5, %x5, 1  #1545 pc 18432
	lw	%x6, 0(%x2)  #1545 pc 18436
	lw	%x22, 4(%x2)  #1545 pc 18440
	lw	0(%x23), %x22  #1545 pc 18444
	jalr	%x0, %x23, 0  #1545 pc 18448
	nop #pc 18452
be_else.9391: #pc 18452
	addi	%x5, %x0, 1  #0 pc 18456
	ret #pc 18460
	nop #pc 18464
shadow_check_one_or_matrix.2911:  #pc 18464
	lw	%x7, 20(%x22)  #1551 pc 18468
	lw	%x9, 16(%x22)  #1551 pc 18472
	lw	%x10, 12(%x22)  #1551 pc 18476
	lw	%x11, 8(%x22)  #1551 pc 18480
	lw	%x12, 4(%x22)  #1551 pc 18484
	slli	%x13, %x5, 2  #1551 pc 18488
	lw	%x13, %x13(%x6)  #1551 pc 18492
	lw	%x14, 0(%x13)  #1552 pc 18496
	addi	%x24, %x0, -1  #pc 18500
	beq	%x14, %x24, 12  #1553 pc 18504
	j	be_else.9392 #pc 18508
	nop #pc 18512
	addi	%x5, %x0, 0  #0 pc 18516
	ret #pc 18520
	nop #pc 18524
be_else.9392: #pc 18524
	sw	%x13, 0(%x2)  #1557 pc 18528
	sw	%x10, 4(%x2)  #1557 pc 18532
	sw	%x6, 8(%x2)  #1557 pc 18536
	sw	%x22, 12(%x2)  #1557 pc 18540
	sw	%x5, 16(%x2)  #1557 pc 18544
	addi	%x24, %x0, 99  #pc 18548
	beq	%x14, %x24, 12  #1557 pc 18552
	j	be_else.9393 #pc 18556
	nop #pc 18560
	addi	%x5, %x0, 1  #0 pc 18564
	j	be_cont.9394 #pc 18568
	nop #pc 18572
be_else.9393: #pc 18572
	sw	%x9, 20(%x2)  #1560 pc 18576
	mv	%x6, %x11 #pc 18580
	mv	%x5, %x14 #pc 18584
	mv	%x22, %x7 #pc 18588
	mv	%x7, %x12 #pc 18592
	sw	%x1, 28(%x2)  #1560 pc 18596
	lw	%x23, 0(%x22)  #1560 pc 18600
	addi	%x2, %x2, 32  #1560 pc 18604
	jalr	%x1, %x23, 0  #1560 pc 18608
	addi	%x2, %x2, -32  #1560 pc 18612
	lw	%x1, 28(%x2)  #1560 pc 18616
	beq	%x5, %x0, 12  #1563 pc 18620
	j	be_else.9395 #pc 18624
	nop #pc 18628
	addi	%x5, %x0, 0  #0 pc 18632
	j	be_cont.9396 #pc 18636
	nop #pc 18640
be_else.9395: #pc 18640
	lw	%x5, 20(%x2)  #1564 pc 18644
	flw	%f0, 0(%x5)  #1564 pc 18648
	mv	%f2, l.6711  #0 pc 18652
	sw	%x1, 28(%x2)  #1564 pc 18656
	addi	%x2, %x2, 32  #1564 pc 18660
	jal	%x1, fless.2540  #1564 pc 18664
	addi	%x2, %x2, -32  #1564 pc 18668
	lw	%x1, 28(%x2) #1564 pc 18672
	beq	%x5, %x0, 12  #1564 pc 18676
	j	be_else.9397 #pc 18680
	nop #pc 18684
	addi	%x5, %x0, 0  #0 pc 18688
	j	be_cont.9398 #pc 18692
	nop #pc 18696
be_else.9397: #pc 18696
	addi	%x5, %x0, 1  #0 pc 18700
	lw	%x6, 0(%x2)  #1565 pc 18704
	lw	%x22, 4(%x2)  #1565 pc 18708
	sw	%x1, 28(%x2)  #1565 pc 18712
	lw	%x23, 0(%x22)  #1565 pc 18716
	addi	%x2, %x2, 32  #1565 pc 18720
	jalr	%x1, %x23, 0  #1565 pc 18724
	addi	%x2, %x2, -32  #1565 pc 18728
	lw	%x1, 28(%x2)  #1565 pc 18732
	beq	%x5, %x0, 12  #1565 pc 18736
	j	be_else.9399 #pc 18740
	nop #pc 18744
	addi	%x5, %x0, 0  #0 pc 18748
	j	be_cont.9400 #pc 18752
	nop #pc 18756
be_else.9399: #pc 18756
	addi	%x5, %x0, 1  #0 pc 18760
be_cont.9400: #pc 18760
be_cont.9398: #pc 18760
be_cont.9396: #pc 18760
be_cont.9394: #pc 18760
	beq	%x5, %x0, 12  #1556 pc 18764
	j	be_else.9401 #pc 18768
	nop #pc 18772
	lw	%x5, 16(%x2)  #1576 pc 18776
	addi	%x5, %x5, 1  #1576 pc 18780
	lw	%x6, 8(%x2)  #1576 pc 18784
	lw	%x22, 12(%x2)  #1576 pc 18788
	lw	0(%x23), %x22  #1576 pc 18792
	jalr	%x0, %x23, 0  #1576 pc 18796
	nop #pc 18800
be_else.9401: #pc 18800
	addi	%x5, %x0, 1  #0 pc 18804
	lw	%x6, 0(%x2)  #1571 pc 18808
	lw	%x22, 4(%x2)  #1571 pc 18812
	sw	%x1, 28(%x2)  #1571 pc 18816
	lw	%x23, 0(%x22)  #1571 pc 18820
	addi	%x2, %x2, 32  #1571 pc 18824
	jalr	%x1, %x23, 0  #1571 pc 18828
	addi	%x2, %x2, -32  #1571 pc 18832
	lw	%x1, 28(%x2)  #1571 pc 18836
	beq	%x5, %x0, 12  #1571 pc 18840
	j	be_else.9402 #pc 18844
	nop #pc 18848
	lw	%x5, 16(%x2)  #1574 pc 18852
	addi	%x5, %x5, 1  #1574 pc 18856
	lw	%x6, 8(%x2)  #1574 pc 18860
	lw	%x22, 12(%x2)  #1574 pc 18864
	lw	0(%x23), %x22  #1574 pc 18868
	jalr	%x0, %x23, 0  #1574 pc 18872
	nop #pc 18876
be_else.9402: #pc 18876
	addi	%x5, %x0, 1  #0 pc 18880
	ret #pc 18884
	nop #pc 18888
solve_each_element.2914:  #pc 18888
	lw	%x9, 36(%x22)  #1587 pc 18892
	lw	%x10, 32(%x22)  #1587 pc 18896
	lw	%x11, 28(%x22)  #1587 pc 18900
	lw	%x12, 24(%x22)  #1587 pc 18904
	lw	%x13, 20(%x22)  #1587 pc 18908
	lw	%x14, 16(%x22)  #1587 pc 18912
	lw	%x15, 12(%x22)  #1587 pc 18916
	lw	%x16, 8(%x22)  #1587 pc 18920
	lw	%x17, 4(%x22)  #1587 pc 18924
	slli	%x18, %x5, 2  #1587 pc 18928
	lw	%x18, %x18(%x6)  #1587 pc 18932
	addi	%x24, %x0, -1  #pc 18936
	beq	%x18, %x24, 12  #1588 pc 18940
	j	be_else.9403 #pc 18944
	nop #pc 18948
	ret #pc 18952
	nop #pc 18956
be_else.9403: #pc 18956
	sw	%x14, 0(%x2)  #1590 pc 18960
	sw	%x16, 4(%x2)  #1590 pc 18964
	sw	%x15, 8(%x2)  #1590 pc 18968
	sw	%x17, 12(%x2)  #1590 pc 18972
	sw	%x10, 16(%x2)  #1590 pc 18976
	sw	%x9, 20(%x2)  #1590 pc 18980
	sw	%x11, 24(%x2)  #1590 pc 18984
	sw	%x7, 28(%x2)  #1590 pc 18988
	sw	%x6, 32(%x2)  #1590 pc 18992
	sw	%x22, 36(%x2)  #1590 pc 18996
	sw	%x5, 40(%x2)  #1590 pc 19000
	sw	%x13, 44(%x2)  #1590 pc 19004
	sw	%x18, 48(%x2)  #1590 pc 19008
	mv	%x6, %x7 #pc 19012
	mv	%x5, %x18 #pc 19016
	mv	%x22, %x12 #pc 19020
	mv	%x7, %x10 #pc 19024
	sw	%x1, 52(%x2)  #1590 pc 19028
	lw	%x23, 0(%x22)  #1590 pc 19032
	addi	%x2, %x2, 56  #1590 pc 19036
	jalr	%x1, %x23, 0  #1590 pc 19040
	addi	%x2, %x2, -56  #1590 pc 19044
	lw	%x1, 52(%x2)  #1590 pc 19048
	beq	%x5, %x0, 12  #1591 pc 19052
	j	be_else.9405 #pc 19056
	nop #pc 19060
	lw	%x5, 48(%x2)  #1619 pc 19064
	slli	%x5, %x5, 2  #1619 pc 19068
	lw	%x6, 44(%x2)  #1619 pc 19072
	lw	%x5, %x5(%x6)  #1619 pc 19076
	sw	%x1, 52(%x2)  #1619 pc 19080
	addi	%x2, %x2, 56  #1619 pc 19084
	jal	%x1, o_isinvert.2688  #1619 pc 19088
	addi	%x2, %x2, -56  #1619 pc 19092
	lw	%x1, 52(%x2) #1619 pc 19096
	beq	%x5, %x0, 12  #1619 pc 19100
	j	be_else.9406 #pc 19104
	nop #pc 19108
	ret #pc 19112
	nop #pc 19116
be_else.9406: #pc 19116
	lw	%x5, 40(%x2)  #1620 pc 19120
	addi	%x5, %x5, 1  #1620 pc 19124
	lw	%x6, 32(%x2)  #1620 pc 19128
	lw	%x7, 28(%x2)  #1620 pc 19132
	lw	%x22, 36(%x2)  #1620 pc 19136
	lw	0(%x23), %x22  #1620 pc 19140
	jalr	%x0, %x23, 0  #1620 pc 19144
	nop #pc 19148
be_else.9405: #pc 19148
	lw	%x6, 24(%x2)  #1595 pc 19152
	flw	%f2, 0(%x6)  #1595 pc 19156
	mv	%f0, l.6293  #0 pc 19160
	sw	%x5, 52(%x2)  #1597 pc 19164
	fsw	%f2, 56(%x2)  #1597 pc 19168
	sw	%x1, 68(%x2)  #1597 pc 19172
	addi	%x2, %x2, 72  #1597 pc 19176
	jal	%x1, fless.2540  #1597 pc 19180
	addi	%x2, %x2, -72  #1597 pc 19184
	lw	%x1, 68(%x2) #1597 pc 19188
	beq	%x5, %x0, 12  #1597 pc 19192
	j	be_else.9408 #pc 19196
	nop #pc 19200
	j	be_cont.9409 #pc 19204
	nop #pc 19208
be_else.9408: #pc 19208
	lw	%x5, 20(%x2)  #1598 pc 19212
	flw	%f2, 0(%x5)  #1598 pc 19216
	flw	%f0, 56(%x2)  #1598 pc 19220
	sw	%x1, 68(%x2)  #1598 pc 19224
	addi	%x2, %x2, 72  #1598 pc 19228
	jal	%x1, fless.2540  #1598 pc 19232
	addi	%x2, %x2, -72  #1598 pc 19236
	lw	%x1, 68(%x2) #1598 pc 19240
	beq	%x5, %x0, 12  #1598 pc 19244
	j	be_else.9410 #pc 19248
	nop #pc 19252
	j	be_cont.9411 #pc 19256
	nop #pc 19260
be_else.9410: #pc 19260
	mv	%f0, l.6697  #0 pc 19264
	flw	%f2, 56(%x2)  #1600 pc 19268
	fadd	%f0, %f2, %f0  #1600 pc 19272
	lw	%x5, 28(%x2)  #1601 pc 19276
	flw	%f2, 0(%x5)  #1601 pc 19280
	fmul	%f2, %f2, %f0  #1601 pc 19284
	lw	%x6, 16(%x2)  #1601 pc 19288
	flw	%f4, 0(%x6)  #1601 pc 19292
	fadd	%f2, %f2, %f4  #1601 pc 19296
	flw	%f4, 8(%x5)  #1602 pc 19300
	fmul	%f4, %f4, %f0  #1602 pc 19304
	flw	%f6, 8(%x6)  #1602 pc 19308
	fadd	%f4, %f4, %f6  #1602 pc 19312
	flw	%f6, 16(%x5)  #1603 pc 19316
	fmul	%f6, %f6, %f0  #1603 pc 19320
	flw	%f8, 16(%x6)  #1603 pc 19324
	fadd	%f6, %f6, %f8  #1603 pc 19328
	addi	%x6, %x0, 0  #0 pc 19332
	lw	%x7, 32(%x2)  #1604 pc 19336
	lw	%x22, 12(%x2)  #1604 pc 19340
	fsw	%f6, 64(%x2)  #1604 pc 19344
	fsw	%f4, 72(%x2)  #1604 pc 19348
	fsw	%f2, 80(%x2)  #1604 pc 19352
	fsw	%f0, 88(%x2)  #1604 pc 19356
	mv	%x5, %x6 #pc 19360
	mv	%x6, %x7 #pc 19364
	mv	%f0, %f2 #pc 19368
	mv	%f1, %f3 #pc 19372
	mv	%f2, %f4 #pc 19376
	mv	%f3, %f5 #pc 19380
	mv	%f4, %f6 #pc 19384
	mv	%f5, %f7 #pc 19388
	sw	%x1, 100(%x2)  #1604 pc 19392
	lw	%x23, 0(%x22)  #1604 pc 19396
	addi	%x2, %x2, 104  #1604 pc 19400
	jalr	%x1, %x23, 0  #1604 pc 19404
	addi	%x2, %x2, -104  #1604 pc 19408
	lw	%x1, 100(%x2)  #1604 pc 19412
	beq	%x5, %x0, 12  #1604 pc 19416
	j	be_else.9412 #pc 19420
	nop #pc 19424
	j	be_cont.9413 #pc 19428
	nop #pc 19432
be_else.9412: #pc 19432
	lw	%x5, 20(%x2)  #1606 pc 19436
	flw	%f0, 88(%x2)  #1606 pc 19440
	fsw	%f0, 0(%x5) #1606 pc 19444
	flw	%f0, 80(%x2)  #1607 pc 19448
	flw	%f2, 72(%x2)  #1607 pc 19452
	flw	%f4, 64(%x2)  #1607 pc 19456
	lw	%x5, 8(%x2)  #1607 pc 19460
	sw	%x1, 100(%x2)  #1607 pc 19464
	addi	%x2, %x2, 104  #1607 pc 19468
	jal	%x1, vecset.2644  #1607 pc 19472
	addi	%x2, %x2, -104  #1607 pc 19476
	lw	%x1, 100(%x2) #1607 pc 19480
	lw	%x5, 4(%x2)  #1608 pc 19484
	lw	%x6, 48(%x2)  #1608 pc 19488
	sw	%x6, 0(%x5)  #1608 pc 19492
	lw	%x5, 0(%x2)  #1609 pc 19496
	lw	%x6, 52(%x2)  #1609 pc 19500
	sw	%x6, 0(%x5)  #1609 pc 19504
be_cont.9413: #pc 19504
be_cont.9411: #pc 19504
be_cont.9409: #pc 19504
	lw	%x5, 40(%x2)  #1615 pc 19508
	addi	%x5, %x5, 1  #1615 pc 19512
	lw	%x6, 32(%x2)  #1615 pc 19516
	lw	%x7, 28(%x2)  #1615 pc 19520
	lw	%x22, 36(%x2)  #1615 pc 19524
	lw	0(%x23), %x22  #1615 pc 19528
	jalr	%x0, %x23, 0  #1615 pc 19532
	nop #pc 19536
solve_one_or_network.2918:  #pc 19536
	lw	%x9, 8(%x22)  #1628 pc 19540
	lw	%x10, 4(%x22)  #1628 pc 19544
	slli	%x11, %x5, 2  #1628 pc 19548
	lw	%x11, %x11(%x6)  #1628 pc 19552
	addi	%x24, %x0, -1  #pc 19556
	beq	%x11, %x24, 12  #1629 pc 19560
	j	be_else.9414 #pc 19564
	nop #pc 19568
	ret #pc 19572
	nop #pc 19576
be_else.9414: #pc 19576
	slli	%x11, %x11, 2  #1630 pc 19580
	lw	%x10, %x11(%x10)  #1630 pc 19584
	addi	%x11, %x0, 0  #0 pc 19588
	sw	%x7, 0(%x2)  #1631 pc 19592
	sw	%x6, 4(%x2)  #1631 pc 19596
	sw	%x22, 8(%x2)  #1631 pc 19600
	sw	%x5, 12(%x2)  #1631 pc 19604
	mv	%x6, %x10 #pc 19608
	mv	%x5, %x11 #pc 19612
	mv	%x22, %x9 #pc 19616
	sw	%x1, 20(%x2)  #1631 pc 19620
	lw	%x23, 0(%x22)  #1631 pc 19624
	addi	%x2, %x2, 24  #1631 pc 19628
	jalr	%x1, %x23, 0  #1631 pc 19632
	addi	%x2, %x2, -24  #1631 pc 19636
	lw	%x1, 20(%x2)  #1631 pc 19640
	lw	%x5, 12(%x2)  #1632 pc 19644
	addi	%x5, %x5, 1  #1632 pc 19648
	lw	%x6, 4(%x2)  #1632 pc 19652
	lw	%x7, 0(%x2)  #1632 pc 19656
	lw	%x22, 8(%x2)  #1632 pc 19660
	lw	0(%x23), %x22  #1632 pc 19664
	jalr	%x0, %x23, 0  #1632 pc 19668
	nop #pc 19672
trace_or_matrix.2922:  #pc 19672
	lw	%x9, 20(%x22)  #1638 pc 19676
	lw	%x10, 16(%x22)  #1638 pc 19680
	lw	%x11, 12(%x22)  #1638 pc 19684
	lw	%x12, 8(%x22)  #1638 pc 19688
	lw	%x13, 4(%x22)  #1638 pc 19692
	slli	%x14, %x5, 2  #1638 pc 19696
	lw	%x14, %x14(%x6)  #1638 pc 19700
	lw	%x15, 0(%x14)  #1639 pc 19704
	addi	%x24, %x0, -1  #pc 19708
	beq	%x15, %x24, 12  #1640 pc 19712
	j	be_else.9416 #pc 19716
	nop #pc 19720
	ret #pc 19724
	nop #pc 19728
be_else.9416: #pc 19728
	sw	%x7, 0(%x2)  #1643 pc 19732
	sw	%x6, 4(%x2)  #1643 pc 19736
	sw	%x22, 8(%x2)  #1643 pc 19740
	sw	%x5, 12(%x2)  #1643 pc 19744
	addi	%x24, %x0, 99  #pc 19748
	beq	%x15, %x24, 12  #1643 pc 19752
	j	be_else.9418 #pc 19756
	nop #pc 19760
	addi	%x9, %x0, 1  #0 pc 19764
	mv	%x6, %x14 #pc 19768
	mv	%x5, %x9 #pc 19772
	mv	%x22, %x13 #pc 19776
	sw	%x1, 20(%x2)  #1644 pc 19780
	lw	%x23, 0(%x22)  #1644 pc 19784
	addi	%x2, %x2, 24  #1644 pc 19788
	jalr	%x1, %x23, 0  #1644 pc 19792
	addi	%x2, %x2, -24  #1644 pc 19796
	lw	%x1, 20(%x2)  #1644 pc 19800
	j	be_cont.9419 #pc 19804
	nop #pc 19808
be_else.9418: #pc 19808
	sw	%x14, 16(%x2)  #1648 pc 19812
	sw	%x13, 20(%x2)  #1648 pc 19816
	sw	%x9, 24(%x2)  #1648 pc 19820
	sw	%x11, 28(%x2)  #1648 pc 19824
	mv	%x6, %x7 #pc 19828
	mv	%x5, %x15 #pc 19832
	mv	%x22, %x12 #pc 19836
	mv	%x7, %x10 #pc 19840
	sw	%x1, 36(%x2)  #1648 pc 19844
	lw	%x23, 0(%x22)  #1648 pc 19848
	addi	%x2, %x2, 40  #1648 pc 19852
	jalr	%x1, %x23, 0  #1648 pc 19856
	addi	%x2, %x2, -40  #1648 pc 19860
	lw	%x1, 36(%x2)  #1648 pc 19864
	beq	%x5, %x0, 12  #1649 pc 19868
	j	be_else.9420 #pc 19872
	nop #pc 19876
	j	be_cont.9421 #pc 19880
	nop #pc 19884
be_else.9420: #pc 19884
	lw	%x5, 28(%x2)  #1650 pc 19888
	flw	%f0, 0(%x5)  #1650 pc 19892
	lw	%x5, 24(%x2)  #1651 pc 19896
	flw	%f2, 0(%x5)  #1651 pc 19900
	sw	%x1, 36(%x2)  #1651 pc 19904
	addi	%x2, %x2, 40  #1651 pc 19908
	jal	%x1, fless.2540  #1651 pc 19912
	addi	%x2, %x2, -40  #1651 pc 19916
	lw	%x1, 36(%x2) #1651 pc 19920
	beq	%x5, %x0, 12  #1651 pc 19924
	j	be_else.9422 #pc 19928
	nop #pc 19932
	j	be_cont.9423 #pc 19936
	nop #pc 19940
be_else.9422: #pc 19940
	addi	%x5, %x0, 1  #0 pc 19944
	lw	%x6, 16(%x2)  #1652 pc 19948
	lw	%x7, 0(%x2)  #1652 pc 19952
	lw	%x22, 20(%x2)  #1652 pc 19956
	sw	%x1, 36(%x2)  #1652 pc 19960
	lw	%x23, 0(%x22)  #1652 pc 19964
	addi	%x2, %x2, 40  #1652 pc 19968
	jalr	%x1, %x23, 0  #1652 pc 19972
	addi	%x2, %x2, -40  #1652 pc 19976
	lw	%x1, 36(%x2)  #1652 pc 19980
be_cont.9423: #pc 19980
be_cont.9421: #pc 19980
be_cont.9419: #pc 19980
	lw	%x5, 12(%x2)  #1656 pc 19984
	addi	%x5, %x5, 1  #1656 pc 19988
	lw	%x6, 4(%x2)  #1656 pc 19992
	lw	%x7, 0(%x2)  #1656 pc 19996
	lw	%x22, 8(%x2)  #1656 pc 20000
	lw	0(%x23), %x22  #1656 pc 20004
	jalr	%x0, %x23, 0  #1656 pc 20008
	nop #pc 20012
judge_intersection.2926:  #pc 20012
	lw	%x6, 12(%x22)  #0 pc 20016
	lw	%x7, 8(%x22)  #0 pc 20020
	lw	%x9, 4(%x22)  #0 pc 20024
	mv	%f0, l.6734  #0 pc 20028
	fsw	%f0, 0(%x7) #1665 pc 20032
	addi	%x10, %x0, 0  #0 pc 20036
	lw	%x9, 0(%x9)  #1666 pc 20040
	sw	%x7, 0(%x2)  #1666 pc 20044
	mv	%x7, %x5 #pc 20048
	mv	%x22, %x6 #pc 20052
	mv	%x6, %x9 #pc 20056
	mv	%x5, %x10 #pc 20060
	sw	%x1, 4(%x2)  #1666 pc 20064
	lw	%x23, 0(%x22)  #1666 pc 20068
	addi	%x2, %x2, 8  #1666 pc 20072
	jalr	%x1, %x23, 0  #1666 pc 20076
	addi	%x2, %x2, -8  #1666 pc 20080
	lw	%x1, 4(%x2)  #1666 pc 20084
	lw	%x5, 0(%x2)  #1667 pc 20088
	flw	%f2, 0(%x5)  #1667 pc 20092
	mv	%f0, l.6711  #0 pc 20096
	fsw	%f2, 8(%x2)  #1669 pc 20100
	sw	%x1, 20(%x2)  #1669 pc 20104
	addi	%x2, %x2, 24  #1669 pc 20108
	jal	%x1, fless.2540  #1669 pc 20112
	addi	%x2, %x2, -24  #1669 pc 20116
	lw	%x1, 20(%x2) #1669 pc 20120
	beq	%x5, %x0, 12  #1669 pc 20124
	j	be_else.9425 #pc 20128
	nop #pc 20132
	addi	%x5, %x0, 0  #0 pc 20136
	ret #pc 20140
	nop #pc 20144
be_else.9425: #pc 20144
	mv	%f2, l.6740  #0 pc 20148
	flw	%f0, 8(%x2)  #1670 pc 20152
	j	fless.2540  #1670 pc 20156
	nop #pc 20160
solve_each_element_fast.2928:  #pc 20160
	lw	%x9, 36(%x22)  #1680 pc 20164
	lw	%x10, 32(%x22)  #1680 pc 20168
	lw	%x11, 28(%x22)  #1680 pc 20172
	lw	%x12, 24(%x22)  #1680 pc 20176
	lw	%x13, 20(%x22)  #1680 pc 20180
	lw	%x14, 16(%x22)  #1680 pc 20184
	lw	%x15, 12(%x22)  #1680 pc 20188
	lw	%x16, 8(%x22)  #1680 pc 20192
	lw	%x17, 4(%x22)  #1680 pc 20196
	sw	%x14, 0(%x2)  #1680 pc 20200
	sw	%x16, 4(%x2)  #1680 pc 20204
	sw	%x15, 8(%x2)  #1680 pc 20208
	sw	%x17, 12(%x2)  #1680 pc 20212
	sw	%x10, 16(%x2)  #1680 pc 20216
	sw	%x9, 20(%x2)  #1680 pc 20220
	sw	%x12, 24(%x2)  #1680 pc 20224
	sw	%x22, 28(%x2)  #1680 pc 20228
	sw	%x13, 32(%x2)  #1680 pc 20232
	sw	%x7, 36(%x2)  #1680 pc 20236
	sw	%x11, 40(%x2)  #1680 pc 20240
	sw	%x6, 44(%x2)  #1680 pc 20244
	sw	%x5, 48(%x2)  #1680 pc 20248
	mv	%x5, %x7 #pc 20252
	sw	%x1, 52(%x2)  #1680 pc 20256
	addi	%x2, %x2, 56  #1680 pc 20260
	jal	%x1, d_vec.2743  #1680 pc 20264
	addi	%x2, %x2, -56  #1680 pc 20268
	lw	%x1, 52(%x2) #1680 pc 20272
	lw	%x6, 48(%x2)  #1681 pc 20276
	slli	%x7, %x6, 2  #1681 pc 20280
	lw	%x9, 44(%x2)  #1681 pc 20284
	lw	%x7, %x7(%x9)  #1681 pc 20288
	addi	%x24, %x0, -1  #pc 20292
	beq	%x7, %x24, 12  #1682 pc 20296
	j	be_else.9426 #pc 20300
	nop #pc 20304
	ret #pc 20308
	nop #pc 20312
be_else.9426: #pc 20312
	lw	%x10, 36(%x2)  #1684 pc 20316
	lw	%x22, 40(%x2)  #1684 pc 20320
	sw	%x5, 52(%x2)  #1684 pc 20324
	sw	%x7, 56(%x2)  #1684 pc 20328
	mv	%x6, %x10 #pc 20332
	mv	%x5, %x7 #pc 20336
	sw	%x1, 60(%x2)  #1684 pc 20340
	lw	%x23, 0(%x22)  #1684 pc 20344
	addi	%x2, %x2, 64  #1684 pc 20348
	jalr	%x1, %x23, 0  #1684 pc 20352
	addi	%x2, %x2, -64  #1684 pc 20356
	lw	%x1, 60(%x2)  #1684 pc 20360
	beq	%x5, %x0, 12  #1685 pc 20364
	j	be_else.9428 #pc 20368
	nop #pc 20372
	lw	%x5, 56(%x2)  #1713 pc 20376
	slli	%x5, %x5, 2  #1713 pc 20380
	lw	%x6, 32(%x2)  #1713 pc 20384
	lw	%x5, %x5(%x6)  #1713 pc 20388
	sw	%x1, 60(%x2)  #1713 pc 20392
	addi	%x2, %x2, 64  #1713 pc 20396
	jal	%x1, o_isinvert.2688  #1713 pc 20400
	addi	%x2, %x2, -64  #1713 pc 20404
	lw	%x1, 60(%x2) #1713 pc 20408
	beq	%x5, %x0, 12  #1713 pc 20412
	j	be_else.9429 #pc 20416
	nop #pc 20420
	ret #pc 20424
	nop #pc 20428
be_else.9429: #pc 20428
	lw	%x5, 48(%x2)  #1714 pc 20432
	addi	%x5, %x5, 1  #1714 pc 20436
	lw	%x6, 44(%x2)  #1714 pc 20440
	lw	%x7, 36(%x2)  #1714 pc 20444
	lw	%x22, 28(%x2)  #1714 pc 20448
	lw	0(%x23), %x22  #1714 pc 20452
	jalr	%x0, %x23, 0  #1714 pc 20456
	nop #pc 20460
be_else.9428: #pc 20460
	lw	%x6, 24(%x2)  #1689 pc 20464
	flw	%f2, 0(%x6)  #1689 pc 20468
	mv	%f0, l.6293  #0 pc 20472
	sw	%x5, 60(%x2)  #1691 pc 20476
	fsw	%f2, 64(%x2)  #1691 pc 20480
	sw	%x1, 76(%x2)  #1691 pc 20484
	addi	%x2, %x2, 80  #1691 pc 20488
	jal	%x1, fless.2540  #1691 pc 20492
	addi	%x2, %x2, -80  #1691 pc 20496
	lw	%x1, 76(%x2) #1691 pc 20500
	beq	%x5, %x0, 12  #1691 pc 20504
	j	be_else.9431 #pc 20508
	nop #pc 20512
	j	be_cont.9432 #pc 20516
	nop #pc 20520
be_else.9431: #pc 20520
	lw	%x5, 20(%x2)  #1692 pc 20524
	flw	%f2, 0(%x5)  #1692 pc 20528
	flw	%f0, 64(%x2)  #1692 pc 20532
	sw	%x1, 76(%x2)  #1692 pc 20536
	addi	%x2, %x2, 80  #1692 pc 20540
	jal	%x1, fless.2540  #1692 pc 20544
	addi	%x2, %x2, -80  #1692 pc 20548
	lw	%x1, 76(%x2) #1692 pc 20552
	beq	%x5, %x0, 12  #1692 pc 20556
	j	be_else.9433 #pc 20560
	nop #pc 20564
	j	be_cont.9434 #pc 20568
	nop #pc 20572
be_else.9433: #pc 20572
	mv	%f0, l.6697  #0 pc 20576
	flw	%f2, 64(%x2)  #1694 pc 20580
	fadd	%f0, %f2, %f0  #1694 pc 20584
	lw	%x5, 52(%x2)  #1695 pc 20588
	flw	%f2, 0(%x5)  #1695 pc 20592
	fmul	%f2, %f2, %f0  #1695 pc 20596
	lw	%x6, 16(%x2)  #1695 pc 20600
	flw	%f4, 0(%x6)  #1695 pc 20604
	fadd	%f2, %f2, %f4  #1695 pc 20608
	flw	%f4, 8(%x5)  #1696 pc 20612
	fmul	%f4, %f4, %f0  #1696 pc 20616
	flw	%f6, 8(%x6)  #1696 pc 20620
	fadd	%f4, %f4, %f6  #1696 pc 20624
	flw	%f6, 16(%x5)  #1697 pc 20628
	fmul	%f6, %f6, %f0  #1697 pc 20632
	flw	%f8, 16(%x6)  #1697 pc 20636
	fadd	%f6, %f6, %f8  #1697 pc 20640
	addi	%x5, %x0, 0  #0 pc 20644
	lw	%x6, 44(%x2)  #1698 pc 20648
	lw	%x22, 12(%x2)  #1698 pc 20652
	fsw	%f6, 72(%x2)  #1698 pc 20656
	fsw	%f4, 80(%x2)  #1698 pc 20660
	fsw	%f2, 88(%x2)  #1698 pc 20664
	fsw	%f0, 96(%x2)  #1698 pc 20668
	mv	%f0, %f2 #pc 20672
	mv	%f1, %f3 #pc 20676
	mv	%f2, %f4 #pc 20680
	mv	%f3, %f5 #pc 20684
	mv	%f4, %f6 #pc 20688
	mv	%f5, %f7 #pc 20692
	sw	%x1, 108(%x2)  #1698 pc 20696
	lw	%x23, 0(%x22)  #1698 pc 20700
	addi	%x2, %x2, 112  #1698 pc 20704
	jalr	%x1, %x23, 0  #1698 pc 20708
	addi	%x2, %x2, -112  #1698 pc 20712
	lw	%x1, 108(%x2)  #1698 pc 20716
	beq	%x5, %x0, 12  #1698 pc 20720
	j	be_else.9435 #pc 20724
	nop #pc 20728
	j	be_cont.9436 #pc 20732
	nop #pc 20736
be_else.9435: #pc 20736
	lw	%x5, 20(%x2)  #1700 pc 20740
	flw	%f0, 96(%x2)  #1700 pc 20744
	fsw	%f0, 0(%x5) #1700 pc 20748
	flw	%f0, 88(%x2)  #1701 pc 20752
	flw	%f2, 80(%x2)  #1701 pc 20756
	flw	%f4, 72(%x2)  #1701 pc 20760
	lw	%x5, 8(%x2)  #1701 pc 20764
	sw	%x1, 108(%x2)  #1701 pc 20768
	addi	%x2, %x2, 112  #1701 pc 20772
	jal	%x1, vecset.2644  #1701 pc 20776
	addi	%x2, %x2, -112  #1701 pc 20780
	lw	%x1, 108(%x2) #1701 pc 20784
	lw	%x5, 4(%x2)  #1702 pc 20788
	lw	%x6, 56(%x2)  #1702 pc 20792
	sw	%x6, 0(%x5)  #1702 pc 20796
	lw	%x5, 0(%x2)  #1703 pc 20800
	lw	%x6, 60(%x2)  #1703 pc 20804
	sw	%x6, 0(%x5)  #1703 pc 20808
be_cont.9436: #pc 20808
be_cont.9434: #pc 20808
be_cont.9432: #pc 20808
	lw	%x5, 48(%x2)  #1709 pc 20812
	addi	%x5, %x5, 1  #1709 pc 20816
	lw	%x6, 44(%x2)  #1709 pc 20820
	lw	%x7, 36(%x2)  #1709 pc 20824
	lw	%x22, 28(%x2)  #1709 pc 20828
	lw	0(%x23), %x22  #1709 pc 20832
	jalr	%x0, %x23, 0  #1709 pc 20836
	nop #pc 20840
solve_one_or_network_fast.2932:  #pc 20840
	lw	%x9, 8(%x22)  #1721 pc 20844
	lw	%x10, 4(%x22)  #1721 pc 20848
	slli	%x11, %x5, 2  #1721 pc 20852
	lw	%x11, %x11(%x6)  #1721 pc 20856
	addi	%x24, %x0, -1  #pc 20860
	beq	%x11, %x24, 12  #1722 pc 20864
	j	be_else.9437 #pc 20868
	nop #pc 20872
	ret #pc 20876
	nop #pc 20880
be_else.9437: #pc 20880
	slli	%x11, %x11, 2  #1723 pc 20884
	lw	%x10, %x11(%x10)  #1723 pc 20888
	addi	%x11, %x0, 0  #0 pc 20892
	sw	%x7, 0(%x2)  #1724 pc 20896
	sw	%x6, 4(%x2)  #1724 pc 20900
	sw	%x22, 8(%x2)  #1724 pc 20904
	sw	%x5, 12(%x2)  #1724 pc 20908
	mv	%x6, %x10 #pc 20912
	mv	%x5, %x11 #pc 20916
	mv	%x22, %x9 #pc 20920
	sw	%x1, 20(%x2)  #1724 pc 20924
	lw	%x23, 0(%x22)  #1724 pc 20928
	addi	%x2, %x2, 24  #1724 pc 20932
	jalr	%x1, %x23, 0  #1724 pc 20936
	addi	%x2, %x2, -24  #1724 pc 20940
	lw	%x1, 20(%x2)  #1724 pc 20944
	lw	%x5, 12(%x2)  #1725 pc 20948
	addi	%x5, %x5, 1  #1725 pc 20952
	lw	%x6, 4(%x2)  #1725 pc 20956
	lw	%x7, 0(%x2)  #1725 pc 20960
	lw	%x22, 8(%x2)  #1725 pc 20964
	lw	0(%x23), %x22  #1725 pc 20968
	jalr	%x0, %x23, 0  #1725 pc 20972
	nop #pc 20976
trace_or_matrix_fast.2936:  #pc 20976
	lw	%x9, 16(%x22)  #1731 pc 20980
	lw	%x10, 12(%x22)  #1731 pc 20984
	lw	%x11, 8(%x22)  #1731 pc 20988
	lw	%x12, 4(%x22)  #1731 pc 20992
	slli	%x13, %x5, 2  #1731 pc 20996
	lw	%x13, %x13(%x6)  #1731 pc 21000
	lw	%x14, 0(%x13)  #1732 pc 21004
	addi	%x24, %x0, -1  #pc 21008
	beq	%x14, %x24, 12  #1733 pc 21012
	j	be_else.9439 #pc 21016
	nop #pc 21020
	ret #pc 21024
	nop #pc 21028
be_else.9439: #pc 21028
	sw	%x7, 0(%x2)  #1736 pc 21032
	sw	%x6, 4(%x2)  #1736 pc 21036
	sw	%x22, 8(%x2)  #1736 pc 21040
	sw	%x5, 12(%x2)  #1736 pc 21044
	addi	%x24, %x0, 99  #pc 21048
	beq	%x14, %x24, 12  #1736 pc 21052
	j	be_else.9441 #pc 21056
	nop #pc 21060
	addi	%x9, %x0, 1  #0 pc 21064
	mv	%x6, %x13 #pc 21068
	mv	%x5, %x9 #pc 21072
	mv	%x22, %x12 #pc 21076
	sw	%x1, 20(%x2)  #1737 pc 21080
	lw	%x23, 0(%x22)  #1737 pc 21084
	addi	%x2, %x2, 24  #1737 pc 21088
	jalr	%x1, %x23, 0  #1737 pc 21092
	addi	%x2, %x2, -24  #1737 pc 21096
	lw	%x1, 20(%x2)  #1737 pc 21100
	j	be_cont.9442 #pc 21104
	nop #pc 21108
be_else.9441: #pc 21108
	sw	%x13, 16(%x2)  #1741 pc 21112
	sw	%x12, 20(%x2)  #1741 pc 21116
	sw	%x9, 24(%x2)  #1741 pc 21120
	sw	%x11, 28(%x2)  #1741 pc 21124
	mv	%x6, %x7 #pc 21128
	mv	%x5, %x14 #pc 21132
	mv	%x22, %x10 #pc 21136
	sw	%x1, 36(%x2)  #1741 pc 21140
	lw	%x23, 0(%x22)  #1741 pc 21144
	addi	%x2, %x2, 40  #1741 pc 21148
	jalr	%x1, %x23, 0  #1741 pc 21152
	addi	%x2, %x2, -40  #1741 pc 21156
	lw	%x1, 36(%x2)  #1741 pc 21160
	beq	%x5, %x0, 12  #1742 pc 21164
	j	be_else.9443 #pc 21168
	nop #pc 21172
	j	be_cont.9444 #pc 21176
	nop #pc 21180
be_else.9443: #pc 21180
	lw	%x5, 28(%x2)  #1743 pc 21184
	flw	%f0, 0(%x5)  #1743 pc 21188
	lw	%x5, 24(%x2)  #1744 pc 21192
	flw	%f2, 0(%x5)  #1744 pc 21196
	sw	%x1, 36(%x2)  #1744 pc 21200
	addi	%x2, %x2, 40  #1744 pc 21204
	jal	%x1, fless.2540  #1744 pc 21208
	addi	%x2, %x2, -40  #1744 pc 21212
	lw	%x1, 36(%x2) #1744 pc 21216
	beq	%x5, %x0, 12  #1744 pc 21220
	j	be_else.9445 #pc 21224
	nop #pc 21228
	j	be_cont.9446 #pc 21232
	nop #pc 21236
be_else.9445: #pc 21236
	addi	%x5, %x0, 1  #0 pc 21240
	lw	%x6, 16(%x2)  #1745 pc 21244
	lw	%x7, 0(%x2)  #1745 pc 21248
	lw	%x22, 20(%x2)  #1745 pc 21252
	sw	%x1, 36(%x2)  #1745 pc 21256
	lw	%x23, 0(%x22)  #1745 pc 21260
	addi	%x2, %x2, 40  #1745 pc 21264
	jalr	%x1, %x23, 0  #1745 pc 21268
	addi	%x2, %x2, -40  #1745 pc 21272
	lw	%x1, 36(%x2)  #1745 pc 21276
be_cont.9446: #pc 21276
be_cont.9444: #pc 21276
be_cont.9442: #pc 21276
	lw	%x5, 12(%x2)  #1749 pc 21280
	addi	%x5, %x5, 1  #1749 pc 21284
	lw	%x6, 4(%x2)  #1749 pc 21288
	lw	%x7, 0(%x2)  #1749 pc 21292
	lw	%x22, 8(%x2)  #1749 pc 21296
	lw	0(%x23), %x22  #1749 pc 21300
	jalr	%x0, %x23, 0  #1749 pc 21304
	nop #pc 21308
judge_intersection_fast.2940:  #pc 21308
	lw	%x6, 12(%x22)  #0 pc 21312
	lw	%x7, 8(%x22)  #0 pc 21316
	lw	%x9, 4(%x22)  #0 pc 21320
	mv	%f0, l.6734  #0 pc 21324
	fsw	%f0, 0(%x7) #1756 pc 21328
	addi	%x10, %x0, 0  #0 pc 21332
	lw	%x9, 0(%x9)  #1757 pc 21336
	sw	%x7, 0(%x2)  #1757 pc 21340
	mv	%x7, %x5 #pc 21344
	mv	%x22, %x6 #pc 21348
	mv	%x6, %x9 #pc 21352
	mv	%x5, %x10 #pc 21356
	sw	%x1, 4(%x2)  #1757 pc 21360
	lw	%x23, 0(%x22)  #1757 pc 21364
	addi	%x2, %x2, 8  #1757 pc 21368
	jalr	%x1, %x23, 0  #1757 pc 21372
	addi	%x2, %x2, -8  #1757 pc 21376
	lw	%x1, 4(%x2)  #1757 pc 21380
	lw	%x5, 0(%x2)  #1758 pc 21384
	flw	%f2, 0(%x5)  #1758 pc 21388
	mv	%f0, l.6711  #0 pc 21392
	fsw	%f2, 8(%x2)  #1760 pc 21396
	sw	%x1, 20(%x2)  #1760 pc 21400
	addi	%x2, %x2, 24  #1760 pc 21404
	jal	%x1, fless.2540  #1760 pc 21408
	addi	%x2, %x2, -24  #1760 pc 21412
	lw	%x1, 20(%x2) #1760 pc 21416
	beq	%x5, %x0, 12  #1760 pc 21420
	j	be_else.9448 #pc 21424
	nop #pc 21428
	addi	%x5, %x0, 0  #0 pc 21432
	ret #pc 21436
	nop #pc 21440
be_else.9448: #pc 21440
	mv	%f2, l.6740  #0 pc 21444
	flw	%f0, 8(%x2)  #1761 pc 21448
	j	fless.2540  #1761 pc 21452
	nop #pc 21456
get_nvector_rect.2942:  #pc 21456
	lw	%x6, 8(%x22)  #0 pc 21460
	lw	%x7, 4(%x22)  #0 pc 21464
	lw	%x7, 0(%x7)  #1776 pc 21468
	sw	%x6, 0(%x2)  #1778 pc 21472
	sw	%x5, 4(%x2)  #1778 pc 21476
	sw	%x7, 8(%x2)  #1778 pc 21480
	mv	%x5, %x6 #pc 21484
	sw	%x1, 12(%x2)  #1778 pc 21488
	addi	%x2, %x2, 16  #1778 pc 21492
	jal	%x1, vecbzero.2652  #1778 pc 21496
	addi	%x2, %x2, -16  #1778 pc 21500
	lw	%x1, 12(%x2) #1778 pc 21504
	lw	%x5, 8(%x2)  #1779 pc 21508
	addi	%x6, %x5, -1  #1779 pc 21512
	addi	%x5, %x5, -1  #1779 pc 21516
	slli	%x5, %x5, 3  #1779 pc 21520
	lw	%x7, 4(%x2)  #1779 pc 21524
	flw	%f0, %x5(%x7)  #1779 pc 21528
	sw	%x6, 12(%x2)  #1779 pc 21532
	sw	%x1, 20(%x2)  #1779 pc 21536
	addi	%x2, %x2, 24  #1779 pc 21540
	jal	%x1, sgn.2636  #1779 pc 21544
	addi	%x2, %x2, -24  #1779 pc 21548
	lw	%x1, 20(%x2) #1779 pc 21552
	sw	%x1, 20(%x2)  #1779 pc 21556
	addi	%x2, %x2, 24  #1779 pc 21560
	jal	%x1, fneg.2534  #1779 pc 21564
	addi	%x2, %x2, -24  #1779 pc 21568
	lw	%x1, 20(%x2) #1779 pc 21572
	lw	%x5, 12(%x2)  #1779 pc 21576
	slli	%x5, %x5, 3  #1779 pc 21580
	lw	%x6, 0(%x2)  #1779 pc 21584
	fsw	%f0, %x5(%x6) #1779 pc 21588
	ret #pc 21592
	nop #pc 21596
get_nvector_plane.2944:  #pc 21596
	lw	%x6, 4(%x22)  #0 pc 21600
	sw	%x5, 0(%x2)  #1785 pc 21604
	sw	%x6, 4(%x2)  #1785 pc 21608
	sw	%x1, 12(%x2)  #1785 pc 21612
	addi	%x2, %x2, 16  #1785 pc 21616
	jal	%x1, o_param_a.2692  #1785 pc 21620
	addi	%x2, %x2, -16  #1785 pc 21624
	lw	%x1, 12(%x2) #1785 pc 21628
	sw	%x1, 12(%x2)  #1785 pc 21632
	addi	%x2, %x2, 16  #1785 pc 21636
	jal	%x1, fneg.2534  #1785 pc 21640
	addi	%x2, %x2, -16  #1785 pc 21644
	lw	%x1, 12(%x2) #1785 pc 21648
	lw	%x5, 4(%x2)  #1785 pc 21652
	fsw	%f0, 0(%x5) #1785 pc 21656
	lw	%x6, 0(%x2)  #1786 pc 21660
	mv	%x5, %x6 #pc 21664
	sw	%x1, 12(%x2)  #1786 pc 21668
	addi	%x2, %x2, 16  #1786 pc 21672
	jal	%x1, o_param_b.2694  #1786 pc 21676
	addi	%x2, %x2, -16  #1786 pc 21680
	lw	%x1, 12(%x2) #1786 pc 21684
	sw	%x1, 12(%x2)  #1786 pc 21688
	addi	%x2, %x2, 16  #1786 pc 21692
	jal	%x1, fneg.2534  #1786 pc 21696
	addi	%x2, %x2, -16  #1786 pc 21700
	lw	%x1, 12(%x2) #1786 pc 21704
	lw	%x5, 4(%x2)  #1786 pc 21708
	fsw	%f0, 8(%x5) #1786 pc 21712
	lw	%x6, 0(%x2)  #1787 pc 21716
	mv	%x5, %x6 #pc 21720
	sw	%x1, 12(%x2)  #1787 pc 21724
	addi	%x2, %x2, 16  #1787 pc 21728
	jal	%x1, o_param_c.2696  #1787 pc 21732
	addi	%x2, %x2, -16  #1787 pc 21736
	lw	%x1, 12(%x2) #1787 pc 21740
	sw	%x1, 12(%x2)  #1787 pc 21744
	addi	%x2, %x2, 16  #1787 pc 21748
	jal	%x1, fneg.2534  #1787 pc 21752
	addi	%x2, %x2, -16  #1787 pc 21756
	lw	%x1, 12(%x2) #1787 pc 21760
	lw	%x5, 4(%x2)  #1787 pc 21764
	fsw	%f0, 16(%x5) #1787 pc 21768
	ret #pc 21772
	nop #pc 21776
get_nvector_second.2946:  #pc 21776
	lw	%x6, 8(%x22)  #0 pc 21780
	lw	%x7, 4(%x22)  #0 pc 21784
	flw	%f0, 0(%x7)  #1792 pc 21788
	sw	%x6, 0(%x2)  #1792 pc 21792
	sw	%x5, 4(%x2)  #1792 pc 21796
	sw	%x7, 8(%x2)  #1792 pc 21800
	fsw	%f0, 16(%x2)  #1792 pc 21804
	sw	%x1, 28(%x2)  #1792 pc 21808
	addi	%x2, %x2, 32  #1792 pc 21812
	jal	%x1, o_param_x.2700  #1792 pc 21816
	addi	%x2, %x2, -32  #1792 pc 21820
	lw	%x1, 28(%x2) #1792 pc 21824
	flw	%f2, 16(%x2)  #1792 pc 21828
	fsub	%f0, %f2, %f0  #1792 pc 21832
	lw	%x5, 8(%x2)  #1793 pc 21836
	flw	%f2, 8(%x5)  #1793 pc 21840
	lw	%x6, 4(%x2)  #1793 pc 21844
	fsw	%f0, 24(%x2)  #1793 pc 21848
	fsw	%f2, 32(%x2)  #1793 pc 21852
	mv	%x5, %x6 #pc 21856
	sw	%x1, 44(%x2)  #1793 pc 21860
	addi	%x2, %x2, 48  #1793 pc 21864
	jal	%x1, o_param_y.2702  #1793 pc 21868
	addi	%x2, %x2, -48  #1793 pc 21872
	lw	%x1, 44(%x2) #1793 pc 21876
	flw	%f2, 32(%x2)  #1793 pc 21880
	fsub	%f0, %f2, %f0  #1793 pc 21884
	lw	%x5, 8(%x2)  #1794 pc 21888
	flw	%f2, 16(%x5)  #1794 pc 21892
	lw	%x5, 4(%x2)  #1794 pc 21896
	fsw	%f0, 40(%x2)  #1794 pc 21900
	fsw	%f2, 48(%x2)  #1794 pc 21904
	sw	%x1, 60(%x2)  #1794 pc 21908
	addi	%x2, %x2, 64  #1794 pc 21912
	jal	%x1, o_param_z.2704  #1794 pc 21916
	addi	%x2, %x2, -64  #1794 pc 21920
	lw	%x1, 60(%x2) #1794 pc 21924
	flw	%f2, 48(%x2)  #1794 pc 21928
	fsub	%f0, %f2, %f0  #1794 pc 21932
	lw	%x5, 4(%x2)  #1796 pc 21936
	fsw	%f0, 56(%x2)  #1796 pc 21940
	sw	%x1, 68(%x2)  #1796 pc 21944
	addi	%x2, %x2, 72  #1796 pc 21948
	jal	%x1, o_param_a.2692  #1796 pc 21952
	addi	%x2, %x2, -72  #1796 pc 21956
	lw	%x1, 68(%x2) #1796 pc 21960
	flw	%f2, 24(%x2)  #1796 pc 21964
	fmul	%f0, %f2, %f0  #1796 pc 21968
	lw	%x5, 4(%x2)  #1797 pc 21972
	fsw	%f0, 64(%x2)  #1797 pc 21976
	sw	%x1, 76(%x2)  #1797 pc 21980
	addi	%x2, %x2, 80  #1797 pc 21984
	jal	%x1, o_param_b.2694  #1797 pc 21988
	addi	%x2, %x2, -80  #1797 pc 21992
	lw	%x1, 76(%x2) #1797 pc 21996
	flw	%f2, 40(%x2)  #1797 pc 22000
	fmul	%f0, %f2, %f0  #1797 pc 22004
	lw	%x5, 4(%x2)  #1798 pc 22008
	fsw	%f0, 72(%x2)  #1798 pc 22012
	sw	%x1, 84(%x2)  #1798 pc 22016
	addi	%x2, %x2, 88  #1798 pc 22020
	jal	%x1, o_param_c.2696  #1798 pc 22024
	addi	%x2, %x2, -88  #1798 pc 22028
	lw	%x1, 84(%x2) #1798 pc 22032
	flw	%f2, 56(%x2)  #1798 pc 22036
	fmul	%f0, %f2, %f0  #1798 pc 22040
	lw	%x5, 4(%x2)  #1800 pc 22044
	fsw	%f0, 80(%x2)  #1800 pc 22048
	sw	%x1, 92(%x2)  #1800 pc 22052
	addi	%x2, %x2, 96  #1800 pc 22056
	jal	%x1, o_isrot.2690  #1800 pc 22060
	addi	%x2, %x2, -96  #1800 pc 22064
	lw	%x1, 92(%x2) #1800 pc 22068
	beq	%x5, %x0, 12  #1800 pc 22072
	j	be_else.9452 #pc 22076
	nop #pc 22080
	lw	%x5, 0(%x2)  #1801 pc 22084
	flw	%f0, 64(%x2)  #1801 pc 22088
	fsw	%f0, 0(%x5) #1801 pc 22092
	flw	%f0, 72(%x2)  #1802 pc 22096
	fsw	%f0, 8(%x5) #1802 pc 22100
	flw	%f0, 80(%x2)  #1803 pc 22104
	fsw	%f0, 16(%x5) #1803 pc 22108
	j	be_cont.9453 #pc 22112
	nop #pc 22116
be_else.9452: #pc 22116
	lw	%x5, 4(%x2)  #1805 pc 22120
	sw	%x1, 92(%x2)  #1805 pc 22124
	addi	%x2, %x2, 96  #1805 pc 22128
	jal	%x1, o_param_r3.2720  #1805 pc 22132
	addi	%x2, %x2, -96  #1805 pc 22136
	lw	%x1, 92(%x2) #1805 pc 22140
	flw	%f2, 40(%x2)  #1805 pc 22144
	fmul	%f0, %f2, %f0  #1805 pc 22148
	lw	%x5, 4(%x2)  #1805 pc 22152
	fsw	%f0, 88(%x2)  #1805 pc 22156
	sw	%x1, 100(%x2)  #1805 pc 22160
	addi	%x2, %x2, 104  #1805 pc 22164
	jal	%x1, o_param_r2.2718  #1805 pc 22168
	addi	%x2, %x2, -104  #1805 pc 22172
	lw	%x1, 100(%x2) #1805 pc 22176
	flw	%f2, 56(%x2)  #1805 pc 22180
	fmul	%f0, %f2, %f0  #1805 pc 22184
	flw	%f4, 88(%x2)  #1805 pc 22188
	fadd	%f0, %f4, %f0  #1805 pc 22192
	sw	%x1, 100(%x2)  #1805 pc 22196
	addi	%x2, %x2, 104  #1805 pc 22200
	jal	%x1, fhalf.2538  #1805 pc 22204
	addi	%x2, %x2, -104  #1805 pc 22208
	lw	%x1, 100(%x2) #1805 pc 22212
	flw	%f2, 64(%x2)  #1805 pc 22216
	fadd	%f0, %f2, %f0  #1805 pc 22220
	lw	%x5, 0(%x2)  #1805 pc 22224
	fsw	%f0, 0(%x5) #1805 pc 22228
	lw	%x6, 4(%x2)  #1806 pc 22232
	mv	%x5, %x6 #pc 22236
	sw	%x1, 100(%x2)  #1806 pc 22240
	addi	%x2, %x2, 104  #1806 pc 22244
	jal	%x1, o_param_r3.2720  #1806 pc 22248
	addi	%x2, %x2, -104  #1806 pc 22252
	lw	%x1, 100(%x2) #1806 pc 22256
	flw	%f2, 24(%x2)  #1806 pc 22260
	fmul	%f0, %f2, %f0  #1806 pc 22264
	lw	%x5, 4(%x2)  #1806 pc 22268
	fsw	%f0, 96(%x2)  #1806 pc 22272
	sw	%x1, 108(%x2)  #1806 pc 22276
	addi	%x2, %x2, 112  #1806 pc 22280
	jal	%x1, o_param_r1.2716  #1806 pc 22284
	addi	%x2, %x2, -112  #1806 pc 22288
	lw	%x1, 108(%x2) #1806 pc 22292
	flw	%f2, 56(%x2)  #1806 pc 22296
	fmul	%f0, %f2, %f0  #1806 pc 22300
	flw	%f2, 96(%x2)  #1806 pc 22304
	fadd	%f0, %f2, %f0  #1806 pc 22308
	sw	%x1, 108(%x2)  #1806 pc 22312
	addi	%x2, %x2, 112  #1806 pc 22316
	jal	%x1, fhalf.2538  #1806 pc 22320
	addi	%x2, %x2, -112  #1806 pc 22324
	lw	%x1, 108(%x2) #1806 pc 22328
	flw	%f2, 72(%x2)  #1806 pc 22332
	fadd	%f0, %f2, %f0  #1806 pc 22336
	lw	%x5, 0(%x2)  #1806 pc 22340
	fsw	%f0, 8(%x5) #1806 pc 22344
	lw	%x6, 4(%x2)  #1807 pc 22348
	mv	%x5, %x6 #pc 22352
	sw	%x1, 108(%x2)  #1807 pc 22356
	addi	%x2, %x2, 112  #1807 pc 22360
	jal	%x1, o_param_r2.2718  #1807 pc 22364
	addi	%x2, %x2, -112  #1807 pc 22368
	lw	%x1, 108(%x2) #1807 pc 22372
	flw	%f2, 24(%x2)  #1807 pc 22376
	fmul	%f0, %f2, %f0  #1807 pc 22380
	lw	%x5, 4(%x2)  #1807 pc 22384
	fsw	%f0, 104(%x2)  #1807 pc 22388
	sw	%x1, 116(%x2)  #1807 pc 22392
	addi	%x2, %x2, 120  #1807 pc 22396
	jal	%x1, o_param_r1.2716  #1807 pc 22400
	addi	%x2, %x2, -120  #1807 pc 22404
	lw	%x1, 116(%x2) #1807 pc 22408
	flw	%f2, 40(%x2)  #1807 pc 22412
	fmul	%f0, %f2, %f0  #1807 pc 22416
	flw	%f2, 104(%x2)  #1807 pc 22420
	fadd	%f0, %f2, %f0  #1807 pc 22424
	sw	%x1, 116(%x2)  #1807 pc 22428
	addi	%x2, %x2, 120  #1807 pc 22432
	jal	%x1, fhalf.2538  #1807 pc 22436
	addi	%x2, %x2, -120  #1807 pc 22440
	lw	%x1, 116(%x2) #1807 pc 22444
	flw	%f2, 80(%x2)  #1807 pc 22448
	fadd	%f0, %f2, %f0  #1807 pc 22452
	lw	%x5, 0(%x2)  #1807 pc 22456
	fsw	%f0, 16(%x5) #1807 pc 22460
be_cont.9453: #pc 22460
	lw	%x6, 4(%x2)  #1809 pc 22464
	mv	%x5, %x6 #pc 22468
	sw	%x1, 116(%x2)  #1809 pc 22472
	addi	%x2, %x2, 120  #1809 pc 22476
	jal	%x1, o_isinvert.2688  #1809 pc 22480
	addi	%x2, %x2, -120  #1809 pc 22484
	lw	%x1, 116(%x2) #1809 pc 22488
	mv	%x6, %x5  #1809 pc 22492
	lw	%x5, 0(%x2)  #1809 pc 22496
	j	vecunit_sgn.2657  #1809 pc 22500
	nop #pc 22504
get_nvector.2948:  #pc 22504
	lw	%x7, 12(%x22)  #1814 pc 22508
	lw	%x9, 8(%x22)  #1814 pc 22512
	lw	%x10, 4(%x22)  #1814 pc 22516
	sw	%x7, 0(%x2)  #1814 pc 22520
	sw	%x5, 4(%x2)  #1814 pc 22524
	sw	%x10, 8(%x2)  #1814 pc 22528
	sw	%x6, 12(%x2)  #1814 pc 22532
	sw	%x9, 16(%x2)  #1814 pc 22536
	sw	%x1, 20(%x2)  #1814 pc 22540
	addi	%x2, %x2, 24  #1814 pc 22544
	jal	%x1, o_form.2684  #1814 pc 22548
	addi	%x2, %x2, -24  #1814 pc 22552
	lw	%x1, 20(%x2) #1814 pc 22556
	addi	%x24, %x0, 1  #pc 22560
	beq	%x5, %x24, 12  #1815 pc 22564
	j	be_else.9454 #pc 22568
	nop #pc 22572
	lw	%x5, 12(%x2)  #1816 pc 22576
	lw	%x22, 16(%x2)  #1816 pc 22580
	lw	0(%x23), %x22  #1816 pc 22584
	jalr	%x0, %x23, 0  #1816 pc 22588
	nop #pc 22592
be_else.9454: #pc 22592
	addi	%x24, %x0, 2  #pc 22596
	beq	%x5, %x24, 12  #1817 pc 22600
	j	be_else.9455 #pc 22604
	nop #pc 22608
	lw	%x5, 4(%x2)  #1818 pc 22612
	lw	%x22, 8(%x2)  #1818 pc 22616
	lw	0(%x23), %x22  #1818 pc 22620
	jalr	%x0, %x23, 0  #1818 pc 22624
	nop #pc 22628
be_else.9455: #pc 22628
	lw	%x5, 4(%x2)  #1820 pc 22632
	lw	%x22, 0(%x2)  #1820 pc 22636
	lw	0(%x23), %x22  #1820 pc 22640
	jalr	%x0, %x23, 0  #1820 pc 22644
	nop #pc 22648
utexture.2951:  #pc 22648
	lw	%x7, 4(%x22)  #1830 pc 22652
	sw	%x6, 0(%x2)  #1830 pc 22656
	sw	%x7, 4(%x2)  #1830 pc 22660
	sw	%x5, 8(%x2)  #1830 pc 22664
	sw	%x1, 12(%x2)  #1830 pc 22668
	addi	%x2, %x2, 16  #1830 pc 22672
	jal	%x1, o_texturetype.2682  #1830 pc 22676
	addi	%x2, %x2, -16  #1830 pc 22680
	lw	%x1, 12(%x2) #1830 pc 22684
	lw	%x6, 8(%x2)  #1832 pc 22688
	sw	%x5, 12(%x2)  #1832 pc 22692
	mv	%x5, %x6 #pc 22696
	sw	%x1, 20(%x2)  #1832 pc 22700
	addi	%x2, %x2, 24  #1832 pc 22704
	jal	%x1, o_color_red.2710  #1832 pc 22708
	addi	%x2, %x2, -24  #1832 pc 22712
	lw	%x1, 20(%x2) #1832 pc 22716
	lw	%x5, 4(%x2)  #1832 pc 22720
	fsw	%f0, 0(%x5) #1832 pc 22724
	lw	%x6, 8(%x2)  #1833 pc 22728
	mv	%x5, %x6 #pc 22732
	sw	%x1, 20(%x2)  #1833 pc 22736
	addi	%x2, %x2, 24  #1833 pc 22740
	jal	%x1, o_color_green.2712  #1833 pc 22744
	addi	%x2, %x2, -24  #1833 pc 22748
	lw	%x1, 20(%x2) #1833 pc 22752
	lw	%x5, 4(%x2)  #1833 pc 22756
	fsw	%f0, 8(%x5) #1833 pc 22760
	lw	%x6, 8(%x2)  #1834 pc 22764
	mv	%x5, %x6 #pc 22768
	sw	%x1, 20(%x2)  #1834 pc 22772
	addi	%x2, %x2, 24  #1834 pc 22776
	jal	%x1, o_color_blue.2714  #1834 pc 22780
	addi	%x2, %x2, -24  #1834 pc 22784
	lw	%x1, 20(%x2) #1834 pc 22788
	lw	%x5, 4(%x2)  #1834 pc 22792
	fsw	%f0, 16(%x5) #1834 pc 22796
	lw	%x6, 12(%x2)  #1835 pc 22800
	addi	%x24, %x0, 1  #pc 22804
	beq	%x6, %x24, 12  #1835 pc 22808
	j	be_else.9456 #pc 22812
	nop #pc 22816
	lw	%x6, 0(%x2)  #1838 pc 22820
	flw	%f0, 0(%x6)  #1838 pc 22824
	lw	%x7, 8(%x2)  #1838 pc 22828
	fsw	%f0, 16(%x2)  #1838 pc 22832
	mv	%x5, %x7 #pc 22836
	sw	%x1, 28(%x2)  #1838 pc 22840
	addi	%x2, %x2, 32  #1838 pc 22844
	jal	%x1, o_param_x.2700  #1838 pc 22848
	addi	%x2, %x2, -32  #1838 pc 22852
	lw	%x1, 28(%x2) #1838 pc 22856
	flw	%f2, 16(%x2)  #1838 pc 22860
	fsub	%f0, %f2, %f0  #1838 pc 22864
	mv	%f2, l.6830  #0 pc 22868
	fmul	%f2, %f0, %f2  #1840 pc 22872
	fsw	%f0, 24(%x2)  #1840 pc 22876
	mv	%f0, %f2 #pc 22880
	mv	%f1, %f3 #pc 22884
	sw	%x1, 36(%x2)  #1840 pc 22888
	addi	%x2, %x2, 40  #1840 pc 22892
	jal	%x1, floor.2549  #1840 pc 22896
	addi	%x2, %x2, -40  #1840 pc 22900
	lw	%x1, 36(%x2) #1840 pc 22904
	mv	%f2, l.6832  #0 pc 22908
	fmul	%f0, %f0, %f2  #1840 pc 22912
	flw	%f2, 24(%x2)  #1841 pc 22916
	fsub	%f0, %f2, %f0  #1841 pc 22920
	mv	%f2, l.6333  #0 pc 22924
	sw	%x1, 36(%x2)  #1841 pc 22928
	addi	%x2, %x2, 40  #1841 pc 22932
	jal	%x1, fless.2540  #1841 pc 22936
	addi	%x2, %x2, -40  #1841 pc 22940
	lw	%x1, 36(%x2) #1841 pc 22944
	lw	%x6, 0(%x2)  #1843 pc 22948
	flw	%f0, 16(%x6)  #1843 pc 22952
	lw	%x6, 8(%x2)  #1843 pc 22956
	sw	%x5, 32(%x2)  #1843 pc 22960
	fsw	%f0, 40(%x2)  #1843 pc 22964
	mv	%x5, %x6 #pc 22968
	sw	%x1, 52(%x2)  #1843 pc 22972
	addi	%x2, %x2, 56  #1843 pc 22976
	jal	%x1, o_param_z.2704  #1843 pc 22980
	addi	%x2, %x2, -56  #1843 pc 22984
	lw	%x1, 52(%x2) #1843 pc 22988
	flw	%f2, 40(%x2)  #1843 pc 22992
	fsub	%f0, %f2, %f0  #1843 pc 22996
	mv	%f2, l.6830  #0 pc 23000
	fmul	%f2, %f0, %f2  #1845 pc 23004
	fsw	%f0, 48(%x2)  #1845 pc 23008
	mv	%f0, %f2 #pc 23012
	mv	%f1, %f3 #pc 23016
	sw	%x1, 60(%x2)  #1845 pc 23020
	addi	%x2, %x2, 64  #1845 pc 23024
	jal	%x1, floor.2549  #1845 pc 23028
	addi	%x2, %x2, -64  #1845 pc 23032
	lw	%x1, 60(%x2) #1845 pc 23036
	mv	%f2, l.6832  #0 pc 23040
	fmul	%f0, %f0, %f2  #1845 pc 23044
	flw	%f2, 48(%x2)  #1846 pc 23048
	fsub	%f0, %f2, %f0  #1846 pc 23052
	mv	%f2, l.6333  #0 pc 23056
	sw	%x1, 60(%x2)  #1846 pc 23060
	addi	%x2, %x2, 64  #1846 pc 23064
	jal	%x1, fless.2540  #1846 pc 23068
	addi	%x2, %x2, -64  #1846 pc 23072
	lw	%x1, 60(%x2) #1846 pc 23076
	lw	%x6, 32(%x2)  #1849 pc 23080
	beq	%x6, %x0, 12  #1849 pc 23084
	j	be_else.9458 #pc 23088
	nop #pc 23092
	beq	%x5, %x0, 12  #1851 pc 23096
	j	be_else.9460 #pc 23100
	nop #pc 23104
	mv	%f0, l.6807  #0 pc 23108
	j	be_cont.9461 #pc 23112
	nop #pc 23116
be_else.9460: #pc 23116
	mv	%f0, l.6293  #0 pc 23120
be_cont.9461: #pc 23120
	j	be_cont.9459 #pc 23124
	nop #pc 23128
be_else.9458: #pc 23128
	beq	%x5, %x0, 12  #1850 pc 23132
	j	be_else.9462 #pc 23136
	nop #pc 23140
	mv	%f0, l.6293  #0 pc 23144
	j	be_cont.9463 #pc 23148
	nop #pc 23152
be_else.9462: #pc 23152
	mv	%f0, l.6807  #0 pc 23156
be_cont.9463: #pc 23156
be_cont.9459: #pc 23156
	lw	%x5, 4(%x2)  #1848 pc 23160
	fsw	%f0, 8(%x5) #1848 pc 23164
	ret #pc 23168
	nop #pc 23172
be_else.9456: #pc 23172
	addi	%x24, %x0, 2  #pc 23176
	beq	%x6, %x24, 12  #1853 pc 23180
	j	be_else.9465 #pc 23184
	nop #pc 23188
	lw	%x6, 0(%x2)  #1856 pc 23192
	flw	%f0, 8(%x6)  #1856 pc 23196
	mv	%f2, l.6822  #0 pc 23200
	fmul	%f0, %f0, %f2  #1856 pc 23204
	sw	%x1, 60(%x2)  #1856 pc 23208
	addi	%x2, %x2, 64  #1856 pc 23212
	jal	%x1, sin.2543  #1856 pc 23216
	addi	%x2, %x2, -64  #1856 pc 23220
	lw	%x1, 60(%x2) #1856 pc 23224
	sw	%x1, 60(%x2)  #1856 pc 23228
	addi	%x2, %x2, 64  #1856 pc 23232
	jal	%x1, fsqr.2536  #1856 pc 23236
	addi	%x2, %x2, -64  #1856 pc 23240
	lw	%x1, 60(%x2) #1856 pc 23244
	mv	%f2, l.6807  #0 pc 23248
	fmul	%f2, %f2, %f0  #1857 pc 23252
	lw	%x5, 4(%x2)  #1857 pc 23256
	fsw	%f2, 0(%x5) #1857 pc 23260
	mv	%f2, l.6807  #0 pc 23264
	mv	%f4, l.6305  #0 pc 23268
	fsub	%f0, %f4, %f0  #1858 pc 23272
	fmul	%f0, %f2, %f0  #1858 pc 23276
	fsw	%f0, 8(%x5) #1858 pc 23280
	ret #pc 23284
	nop #pc 23288
be_else.9465: #pc 23288
	addi	%x24, %x0, 3  #pc 23292
	beq	%x6, %x24, 12  #1860 pc 23296
	j	be_else.9467 #pc 23300
	nop #pc 23304
	lw	%x6, 0(%x2)  #1863 pc 23308
	flw	%f0, 0(%x6)  #1863 pc 23312
	lw	%x7, 8(%x2)  #1863 pc 23316
	fsw	%f0, 56(%x2)  #1863 pc 23320
	mv	%x5, %x7 #pc 23324
	sw	%x1, 68(%x2)  #1863 pc 23328
	addi	%x2, %x2, 72  #1863 pc 23332
	jal	%x1, o_param_x.2700  #1863 pc 23336
	addi	%x2, %x2, -72  #1863 pc 23340
	lw	%x1, 68(%x2) #1863 pc 23344
	flw	%f2, 56(%x2)  #1863 pc 23348
	fsub	%f0, %f2, %f0  #1863 pc 23352
	lw	%x5, 0(%x2)  #1864 pc 23356
	flw	%f2, 16(%x5)  #1864 pc 23360
	lw	%x5, 8(%x2)  #1864 pc 23364
	fsw	%f0, 64(%x2)  #1864 pc 23368
	fsw	%f2, 72(%x2)  #1864 pc 23372
	sw	%x1, 84(%x2)  #1864 pc 23376
	addi	%x2, %x2, 88  #1864 pc 23380
	jal	%x1, o_param_z.2704  #1864 pc 23384
	addi	%x2, %x2, -88  #1864 pc 23388
	lw	%x1, 84(%x2) #1864 pc 23392
	flw	%f2, 72(%x2)  #1864 pc 23396
	fsub	%f0, %f2, %f0  #1864 pc 23400
	flw	%f2, 64(%x2)  #1865 pc 23404
	fsw	%f0, 80(%x2)  #1865 pc 23408
	mv	%f0, %f2 #pc 23412
	mv	%f1, %f3 #pc 23416
	sw	%x1, 92(%x2)  #1865 pc 23420
	addi	%x2, %x2, 96  #1865 pc 23424
	jal	%x1, fsqr.2536  #1865 pc 23428
	addi	%x2, %x2, -96  #1865 pc 23432
	lw	%x1, 92(%x2) #1865 pc 23436
	flw	%f2, 80(%x2)  #1865 pc 23440
	fsw	%f0, 88(%x2)  #1865 pc 23444
	mv	%f0, %f2 #pc 23448
	mv	%f1, %f3 #pc 23452
	sw	%x1, 100(%x2)  #1865 pc 23456
	addi	%x2, %x2, 104  #1865 pc 23460
	jal	%x1, fsqr.2536  #1865 pc 23464
	addi	%x2, %x2, -104  #1865 pc 23468
	lw	%x1, 100(%x2) #1865 pc 23472
	flw	%f2, 88(%x2)  #1865 pc 23476
	fadd	%f0, %f2, %f0  #1865 pc 23480
	mv	%f2, l.6333  #0 pc 23484
	fdiv	%f0, %f0, %f2  #1865 pc 23488
	fsqrt	%f0, %f0  #1865 pc 23492
	fsw	%f0, 96(%x2)  #1866 pc 23496
	sw	%x1, 108(%x2)  #1866 pc 23500
	addi	%x2, %x2, 112  #1866 pc 23504
	jal	%x1, floor.2549  #1866 pc 23508
	addi	%x2, %x2, -112  #1866 pc 23512
	lw	%x1, 108(%x2) #1866 pc 23516
	flw	%f2, 96(%x2)  #1866 pc 23520
	fsub	%f0, %f2, %f0  #1866 pc 23524
	mv	%f2, l.6795  #0 pc 23528
	fmul	%f0, %f0, %f2  #1866 pc 23532
	sw	%x1, 108(%x2)  #1867 pc 23536
	addi	%x2, %x2, 112  #1867 pc 23540
	jal	%x1, cos.2545  #1867 pc 23544
	addi	%x2, %x2, -112  #1867 pc 23548
	lw	%x1, 108(%x2) #1867 pc 23552
	sw	%x1, 108(%x2)  #1867 pc 23556
	addi	%x2, %x2, 112  #1867 pc 23560
	jal	%x1, fsqr.2536  #1867 pc 23564
	addi	%x2, %x2, -112  #1867 pc 23568
	lw	%x1, 108(%x2) #1867 pc 23572
	mv	%f2, l.6807  #0 pc 23576
	fmul	%f2, %f0, %f2  #1868 pc 23580
	lw	%x5, 4(%x2)  #1868 pc 23584
	fsw	%f2, 8(%x5) #1868 pc 23588
	mv	%f2, l.6305  #0 pc 23592
	fsub	%f0, %f2, %f0  #1869 pc 23596
	mv	%f2, l.6807  #0 pc 23600
	fmul	%f0, %f0, %f2  #1869 pc 23604
	fsw	%f0, 16(%x5) #1869 pc 23608
	ret #pc 23612
	nop #pc 23616
be_else.9467: #pc 23616
	addi	%x24, %x0, 4  #pc 23620
	beq	%x6, %x24, 12  #1871 pc 23624
	j	be_else.9469 #pc 23628
	nop #pc 23632
	lw	%x6, 0(%x2)  #1873 pc 23636
	flw	%f0, 0(%x6)  #1873 pc 23640
	lw	%x7, 8(%x2)  #1873 pc 23644
	fsw	%f0, 104(%x2)  #1873 pc 23648
	mv	%x5, %x7 #pc 23652
	sw	%x1, 116(%x2)  #1873 pc 23656
	addi	%x2, %x2, 120  #1873 pc 23660
	jal	%x1, o_param_x.2700  #1873 pc 23664
	addi	%x2, %x2, -120  #1873 pc 23668
	lw	%x1, 116(%x2) #1873 pc 23672
	flw	%f2, 104(%x2)  #1873 pc 23676
	fsub	%f0, %f2, %f0  #1873 pc 23680
	lw	%x5, 8(%x2)  #1873 pc 23684
	fsw	%f0, 112(%x2)  #1873 pc 23688
	sw	%x1, 124(%x2)  #1873 pc 23692
	addi	%x2, %x2, 128  #1873 pc 23696
	jal	%x1, o_param_a.2692  #1873 pc 23700
	addi	%x2, %x2, -128  #1873 pc 23704
	lw	%x1, 124(%x2) #1873 pc 23708
	fsqrt	%f0, %f0  #1873 pc 23712
	flw	%f2, 112(%x2)  #1873 pc 23716
	fmul	%f0, %f2, %f0  #1873 pc 23720
	lw	%x5, 0(%x2)  #1874 pc 23724
	flw	%f2, 16(%x5)  #1874 pc 23728
	lw	%x6, 8(%x2)  #1874 pc 23732
	fsw	%f0, 120(%x2)  #1874 pc 23736
	fsw	%f2, 128(%x2)  #1874 pc 23740
	mv	%x5, %x6 #pc 23744
	sw	%x1, 140(%x2)  #1874 pc 23748
	addi	%x2, %x2, 144  #1874 pc 23752
	jal	%x1, o_param_z.2704  #1874 pc 23756
	addi	%x2, %x2, -144  #1874 pc 23760
	lw	%x1, 140(%x2) #1874 pc 23764
	flw	%f2, 128(%x2)  #1874 pc 23768
	fsub	%f0, %f2, %f0  #1874 pc 23772
	lw	%x5, 8(%x2)  #1874 pc 23776
	fsw	%f0, 136(%x2)  #1874 pc 23780
	sw	%x1, 148(%x2)  #1874 pc 23784
	addi	%x2, %x2, 152  #1874 pc 23788
	jal	%x1, o_param_c.2696  #1874 pc 23792
	addi	%x2, %x2, -152  #1874 pc 23796
	lw	%x1, 148(%x2) #1874 pc 23800
	fsqrt	%f0, %f0  #1874 pc 23804
	flw	%f2, 136(%x2)  #1874 pc 23808
	fmul	%f0, %f2, %f0  #1874 pc 23812
	flw	%f2, 120(%x2)  #1875 pc 23816
	fsw	%f0, 144(%x2)  #1875 pc 23820
	mv	%f0, %f2 #pc 23824
	mv	%f1, %f3 #pc 23828
	sw	%x1, 156(%x2)  #1875 pc 23832
	addi	%x2, %x2, 160  #1875 pc 23836
	jal	%x1, fsqr.2536  #1875 pc 23840
	addi	%x2, %x2, -160  #1875 pc 23844
	lw	%x1, 156(%x2) #1875 pc 23848
	flw	%f2, 144(%x2)  #1875 pc 23852
	fsw	%f0, 152(%x2)  #1875 pc 23856
	mv	%f0, %f2 #pc 23860
	mv	%f1, %f3 #pc 23864
	sw	%x1, 164(%x2)  #1875 pc 23868
	addi	%x2, %x2, 168  #1875 pc 23872
	jal	%x1, fsqr.2536  #1875 pc 23876
	addi	%x2, %x2, -168  #1875 pc 23880
	lw	%x1, 164(%x2) #1875 pc 23884
	flw	%f2, 152(%x2)  #1875 pc 23888
	fadd	%f0, %f2, %f0  #1875 pc 23892
	flw	%f2, 120(%x2)  #1877 pc 23896
	fabs	%f4, %f2  #1877 pc 23900
	mv	%f6, l.6789  #0 pc 23904
	fsw	%f0, 160(%x2)  #1877 pc 23908
	mv	%f2, %f6 #pc 23912
	mv	%f3, %f7 #pc 23916
	mv	%f0, %f4 #pc 23920
	mv	%f1, %f5 #pc 23924
	sw	%x1, 172(%x2)  #1877 pc 23928
	addi	%x2, %x2, 176  #1877 pc 23932
	jal	%x1, fless.2540  #1877 pc 23936
	addi	%x2, %x2, -176  #1877 pc 23940
	lw	%x1, 172(%x2) #1877 pc 23944
	beq	%x5, %x0, 12  #1877 pc 23948
	j	be_else.9470 #pc 23952
	nop #pc 23956
	flw	%f0, 120(%x2)  #1880 pc 23960
	flw	%f2, 144(%x2)  #1880 pc 23964
	fdiv	%f0, %f2, %f0  #1880 pc 23968
	fabs	%f0, %f0  #1880 pc 23972
	sw	%x1, 172(%x2)  #1882 pc 23976
	addi	%x2, %x2, 176  #1882 pc 23980
	jal	%x1, atan.2547  #1882 pc 23984
	addi	%x2, %x2, -176  #1882 pc 23988
	lw	%x1, 172(%x2) #1882 pc 23992
	mv	%f2, l.6793  #0 pc 23996
	fmul	%f0, %f0, %f2  #1882 pc 24000
	mv	%f2, l.6795  #0 pc 24004
	fdiv	%f0, %f0, %f2  #1882 pc 24008
	j	be_cont.9471 #pc 24012
	nop #pc 24016
be_else.9470: #pc 24016
	mv	%f0, l.6791  #0 pc 24020
be_cont.9471: #pc 24020
	fsw	%f0, 168(%x2)  #1884 pc 24024
	sw	%x1, 180(%x2)  #1884 pc 24028
	addi	%x2, %x2, 184  #1884 pc 24032
	jal	%x1, floor.2549  #1884 pc 24036
	addi	%x2, %x2, -184  #1884 pc 24040
	lw	%x1, 180(%x2) #1884 pc 24044
	flw	%f2, 168(%x2)  #1884 pc 24048
	fsub	%f0, %f2, %f0  #1884 pc 24052
	lw	%x5, 0(%x2)  #1886 pc 24056
	flw	%f2, 8(%x5)  #1886 pc 24060
	lw	%x5, 8(%x2)  #1886 pc 24064
	fsw	%f0, 176(%x2)  #1886 pc 24068
	fsw	%f2, 184(%x2)  #1886 pc 24072
	sw	%x1, 196(%x2)  #1886 pc 24076
	addi	%x2, %x2, 200  #1886 pc 24080
	jal	%x1, o_param_y.2702  #1886 pc 24084
	addi	%x2, %x2, -200  #1886 pc 24088
	lw	%x1, 196(%x2) #1886 pc 24092
	flw	%f2, 184(%x2)  #1886 pc 24096
	fsub	%f0, %f2, %f0  #1886 pc 24100
	lw	%x5, 8(%x2)  #1886 pc 24104
	fsw	%f0, 192(%x2)  #1886 pc 24108
	sw	%x1, 204(%x2)  #1886 pc 24112
	addi	%x2, %x2, 208  #1886 pc 24116
	jal	%x1, o_param_b.2694  #1886 pc 24120
	addi	%x2, %x2, -208  #1886 pc 24124
	lw	%x1, 204(%x2) #1886 pc 24128
	fsqrt	%f0, %f0  #1886 pc 24132
	flw	%f2, 192(%x2)  #1886 pc 24136
	fmul	%f0, %f2, %f0  #1886 pc 24140
	flw	%f2, 160(%x2)  #1888 pc 24144
	fabs	%f4, %f2  #1888 pc 24148
	mv	%f6, l.6789  #0 pc 24152
	fsw	%f0, 200(%x2)  #1888 pc 24156
	mv	%f2, %f6 #pc 24160
	mv	%f3, %f7 #pc 24164
	mv	%f0, %f4 #pc 24168
	mv	%f1, %f5 #pc 24172
	sw	%x1, 212(%x2)  #1888 pc 24176
	addi	%x2, %x2, 216  #1888 pc 24180
	jal	%x1, fless.2540  #1888 pc 24184
	addi	%x2, %x2, -216  #1888 pc 24188
	lw	%x1, 212(%x2) #1888 pc 24192
	beq	%x5, %x0, 12  #1888 pc 24196
	j	be_else.9472 #pc 24200
	nop #pc 24204
	flw	%f0, 160(%x2)  #1891 pc 24208
	flw	%f2, 200(%x2)  #1891 pc 24212
	fdiv	%f0, %f2, %f0  #1891 pc 24216
	fabs	%f0, %f0  #1891 pc 24220
	sw	%x1, 212(%x2)  #1892 pc 24224
	addi	%x2, %x2, 216  #1892 pc 24228
	jal	%x1, atan.2547  #1892 pc 24232
	addi	%x2, %x2, -216  #1892 pc 24236
	lw	%x1, 212(%x2) #1892 pc 24240
	mv	%f2, l.6793  #0 pc 24244
	fmul	%f0, %f0, %f2  #1892 pc 24248
	mv	%f2, l.6795  #0 pc 24252
	fdiv	%f0, %f0, %f2  #1892 pc 24256
	j	be_cont.9473 #pc 24260
	nop #pc 24264
be_else.9472: #pc 24264
	mv	%f0, l.6791  #0 pc 24268
be_cont.9473: #pc 24268
	fsw	%f0, 208(%x2)  #1894 pc 24272
	sw	%x1, 220(%x2)  #1894 pc 24276
	addi	%x2, %x2, 224  #1894 pc 24280
	jal	%x1, floor.2549  #1894 pc 24284
	addi	%x2, %x2, -224  #1894 pc 24288
	lw	%x1, 220(%x2) #1894 pc 24292
	flw	%f2, 208(%x2)  #1894 pc 24296
	fsub	%f0, %f2, %f0  #1894 pc 24300
	mv	%f2, l.6802  #0 pc 24304
	mv	%f4, l.6297  #0 pc 24308
	flw	%f6, 176(%x2)  #1895 pc 24312
	fsub	%f4, %f4, %f6  #1895 pc 24316
	fsw	%f0, 216(%x2)  #1895 pc 24320
	fsw	%f2, 224(%x2)  #1895 pc 24324
	mv	%f0, %f4 #pc 24328
	mv	%f1, %f5 #pc 24332
	sw	%x1, 236(%x2)  #1895 pc 24336
	addi	%x2, %x2, 240  #1895 pc 24340
	jal	%x1, fsqr.2536  #1895 pc 24344
	addi	%x2, %x2, -240  #1895 pc 24348
	lw	%x1, 236(%x2) #1895 pc 24352
	flw	%f2, 224(%x2)  #1895 pc 24356
	fsub	%f0, %f2, %f0  #1895 pc 24360
	mv	%f2, l.6297  #0 pc 24364
	flw	%f4, 216(%x2)  #1895 pc 24368
	fsub	%f2, %f2, %f4  #1895 pc 24372
	fsw	%f0, 232(%x2)  #1895 pc 24376
	mv	%f0, %f2 #pc 24380
	mv	%f1, %f3 #pc 24384
	sw	%x1, 244(%x2)  #1895 pc 24388
	addi	%x2, %x2, 248  #1895 pc 24392
	jal	%x1, fsqr.2536  #1895 pc 24396
	addi	%x2, %x2, -248  #1895 pc 24400
	lw	%x1, 244(%x2) #1895 pc 24404
	flw	%f2, 232(%x2)  #1895 pc 24408
	fsub	%f0, %f2, %f0  #1895 pc 24412
	fsw	%f0, 240(%x2)  #1896 pc 24416
	sw	%x1, 252(%x2)  #1896 pc 24420
	addi	%x2, %x2, 256  #1896 pc 24424
	jal	%x1, fisneg.2532  #1896 pc 24428
	addi	%x2, %x2, -256  #1896 pc 24432
	lw	%x1, 252(%x2) #1896 pc 24436
	beq	%x5, %x0, 12  #1896 pc 24440
	j	be_else.9474 #pc 24444
	nop #pc 24448
	flw	%f0, 240(%x2)  #1896 pc 24452
	j	be_cont.9475 #pc 24456
	nop #pc 24460
be_else.9474: #pc 24460
	mv	%f0, l.6293  #0 pc 24464
be_cont.9475: #pc 24464
	mv	%f2, l.6807  #0 pc 24468
	fmul	%f0, %f2, %f0  #1897 pc 24472
	mv	%f2, l.6809  #0 pc 24476
	fdiv	%f0, %f0, %f2  #1897 pc 24480
	lw	%x5, 4(%x2)  #1897 pc 24484
	fsw	%f0, 16(%x5) #1897 pc 24488
	ret #pc 24492
	nop #pc 24496
be_else.9469: #pc 24496
	ret #pc 24500
	nop #pc 24504
add_light.2954:  #pc 24504
	lw	%x5, 8(%x22)  #0 pc 24508
	lw	%x6, 4(%x22)  #0 pc 24512
	fsw	%f4, 0(%x2)  #1910 pc 24516
	fsw	%f2, 8(%x2)  #1910 pc 24520
	fsw	%f0, 16(%x2)  #1910 pc 24524
	sw	%x5, 24(%x2)  #1910 pc 24528
	sw	%x6, 28(%x2)  #1910 pc 24532
	sw	%x1, 36(%x2)  #1910 pc 24536
	addi	%x2, %x2, 40  #1910 pc 24540
	jal	%x1, fispos.2530  #1910 pc 24544
	addi	%x2, %x2, -40  #1910 pc 24548
	lw	%x1, 36(%x2) #1910 pc 24552
	beq	%x5, %x0, 12  #1910 pc 24556
	j	be_else.9478 #pc 24560
	nop #pc 24564
	j	be_cont.9479 #pc 24568
	nop #pc 24572
be_else.9478: #pc 24572
	flw	%f0, 16(%x2)  #1911 pc 24576
	lw	%x5, 28(%x2)  #1911 pc 24580
	lw	%x6, 24(%x2)  #1911 pc 24584
	sw	%x1, 36(%x2)  #1911 pc 24588
	addi	%x2, %x2, 40  #1911 pc 24592
	jal	%x1, vecaccum.2668  #1911 pc 24596
	addi	%x2, %x2, -40  #1911 pc 24600
	lw	%x1, 36(%x2) #1911 pc 24604
be_cont.9479: #pc 24604
	flw	%f0, 8(%x2)  #1915 pc 24608
	sw	%x1, 36(%x2)  #1915 pc 24612
	addi	%x2, %x2, 40  #1915 pc 24616
	jal	%x1, fispos.2530  #1915 pc 24620
	addi	%x2, %x2, -40  #1915 pc 24624
	lw	%x1, 36(%x2) #1915 pc 24628
	beq	%x5, %x0, 12  #1915 pc 24632
	j	be_else.9480 #pc 24636
	nop #pc 24640
	ret #pc 24644
	nop #pc 24648
be_else.9480: #pc 24648
	flw	%f0, 8(%x2)  #1916 pc 24652
	sw	%x1, 36(%x2)  #1916 pc 24656
	addi	%x2, %x2, 40  #1916 pc 24660
	jal	%x1, fsqr.2536  #1916 pc 24664
	addi	%x2, %x2, -40  #1916 pc 24668
	lw	%x1, 36(%x2) #1916 pc 24672
	sw	%x1, 36(%x2)  #1916 pc 24676
	addi	%x2, %x2, 40  #1916 pc 24680
	jal	%x1, fsqr.2536  #1916 pc 24684
	addi	%x2, %x2, -40  #1916 pc 24688
	lw	%x1, 36(%x2) #1916 pc 24692
	flw	%f2, 0(%x2)  #1916 pc 24696
	fmul	%f0, %f0, %f2  #1916 pc 24700
	lw	%x5, 28(%x2)  #1917 pc 24704
	flw	%f2, 0(%x5)  #1917 pc 24708
	fadd	%f2, %f2, %f0  #1917 pc 24712
	fsw	%f2, 0(%x5) #1917 pc 24716
	flw	%f2, 8(%x5)  #1918 pc 24720
	fadd	%f2, %f2, %f0  #1918 pc 24724
	fsw	%f2, 8(%x5) #1918 pc 24728
	flw	%f2, 16(%x5)  #1919 pc 24732
	fadd	%f0, %f2, %f0  #1919 pc 24736
	fsw	%f0, 16(%x5) #1919 pc 24740
	ret #pc 24744
	nop #pc 24748
trace_reflections.2958:  #pc 24748
	lw	%x7, 32(%x22)  #0 pc 24752
	lw	%x9, 28(%x22)  #0 pc 24756
	lw	%x10, 24(%x22)  #0 pc 24760
	lw	%x11, 20(%x22)  #0 pc 24764
	lw	%x12, 16(%x22)  #0 pc 24768
	lw	%x13, 12(%x22)  #0 pc 24772
	lw	%x14, 8(%x22)  #0 pc 24776
	lw	%x15, 4(%x22)  #0 pc 24780
	bge	%x5, %x0, 12  #1926 pc 24784
	j	bge_else.9483 #pc 24788
	nop #pc 24792
	slli	%x16, %x5, 2  #1927 pc 24796
	lw	%x9, %x16(%x9)  #1927 pc 24800
	sw	%x22, 0(%x2)  #1928 pc 24804
	sw	%x5, 4(%x2)  #1928 pc 24808
	fsw	%f2, 8(%x2)  #1928 pc 24812
	sw	%x15, 16(%x2)  #1928 pc 24816
	sw	%x6, 20(%x2)  #1928 pc 24820
	fsw	%f0, 24(%x2)  #1928 pc 24824
	sw	%x11, 32(%x2)  #1928 pc 24828
	sw	%x7, 36(%x2)  #1928 pc 24832
	sw	%x10, 40(%x2)  #1928 pc 24836
	sw	%x9, 44(%x2)  #1928 pc 24840
	sw	%x13, 48(%x2)  #1928 pc 24844
	sw	%x14, 52(%x2)  #1928 pc 24848
	sw	%x12, 56(%x2)  #1928 pc 24852
	mv	%x5, %x9 #pc 24856
	sw	%x1, 60(%x2)  #1928 pc 24860
	addi	%x2, %x2, 64  #1928 pc 24864
	jal	%x1, r_dvec.2749  #1928 pc 24868
	addi	%x2, %x2, -64  #1928 pc 24872
	lw	%x1, 60(%x2) #1928 pc 24876
	lw	%x22, 56(%x2)  #1931 pc 24880
	sw	%x5, 60(%x2)  #1931 pc 24884
	sw	%x1, 68(%x2)  #1931 pc 24888
	lw	%x23, 0(%x22)  #1931 pc 24892
	addi	%x2, %x2, 72  #1931 pc 24896
	jalr	%x1, %x23, 0  #1931 pc 24900
	addi	%x2, %x2, -72  #1931 pc 24904
	lw	%x1, 68(%x2)  #1931 pc 24908
	beq	%x5, %x0, 12  #1931 pc 24912
	j	be_else.9484 #pc 24916
	nop #pc 24920
	j	be_cont.9485 #pc 24924
	nop #pc 24928
be_else.9484: #pc 24928
	lw	%x5, 52(%x2)  #1932 pc 24932
	lw	%x5, 0(%x5)  #1932 pc 24936
	addi	%x6, %x0, 4  #0 pc 24940
	sw	%x1, 68(%x2)  #1932 pc 24944
	addi	%x2, %x2, 72  #1932 pc 24948
	jal	%x1, mul.2562  #1932 pc 24952
	addi	%x2, %x2, -72  #1932 pc 24956
	lw	%x1, 68(%x2) #1932 pc 24960
	lw	%x6, 48(%x2)  #1932 pc 24964
	lw	%x6, 0(%x6)  #1932 pc 24968
	add	%x5, %x5, %x6  #1932 pc 24972
	lw	%x6, 44(%x2)  #1933 pc 24976
	sw	%x5, 64(%x2)  #1933 pc 24980
	mv	%x5, %x6 #pc 24984
	sw	%x1, 68(%x2)  #1933 pc 24988
	addi	%x2, %x2, 72  #1933 pc 24992
	jal	%x1, r_surface_id.2747  #1933 pc 24996
	addi	%x2, %x2, -72  #1933 pc 25000
	lw	%x1, 68(%x2) #1933 pc 25004
	lw	%x6, 64(%x2)  #1933 pc 25008
	beq	%x6, %x5, 12  #1933 pc 25012
	j	be_else.9486 #pc 25016
	nop #pc 25020
	addi	%x5, %x0, 0  #0 pc 25024
	lw	%x6, 40(%x2)  #1935 pc 25028
	lw	%x6, 0(%x6)  #1935 pc 25032
	lw	%x22, 36(%x2)  #1935 pc 25036
	sw	%x1, 68(%x2)  #1935 pc 25040
	lw	%x23, 0(%x22)  #1935 pc 25044
	addi	%x2, %x2, 72  #1935 pc 25048
	jalr	%x1, %x23, 0  #1935 pc 25052
	addi	%x2, %x2, -72  #1935 pc 25056
	lw	%x1, 68(%x2)  #1935 pc 25060
	beq	%x5, %x0, 12  #1935 pc 25064
	j	be_else.9488 #pc 25068
	nop #pc 25072
	lw	%x5, 60(%x2)  #1937 pc 25076
	sw	%x1, 68(%x2)  #1937 pc 25080
	addi	%x2, %x2, 72  #1937 pc 25084
	jal	%x1, d_vec.2743  #1937 pc 25088
	addi	%x2, %x2, -72  #1937 pc 25092
	lw	%x1, 68(%x2) #1937 pc 25096
	mv	%x6, %x5  #1937 pc 25100
	lw	%x5, 32(%x2)  #1937 pc 25104
	sw	%x1, 68(%x2)  #1937 pc 25108
	addi	%x2, %x2, 72  #1937 pc 25112
	jal	%x1, veciprod.2660  #1937 pc 25116
	addi	%x2, %x2, -72  #1937 pc 25120
	lw	%x1, 68(%x2) #1937 pc 25124
	lw	%x5, 44(%x2)  #1938 pc 25128
	fsw	%f0, 72(%x2)  #1938 pc 25132
	sw	%x1, 84(%x2)  #1938 pc 25136
	addi	%x2, %x2, 88  #1938 pc 25140
	jal	%x1, r_bright.2751  #1938 pc 25144
	addi	%x2, %x2, -88  #1938 pc 25148
	lw	%x1, 84(%x2) #1938 pc 25152
	flw	%f2, 24(%x2)  #1939 pc 25156
	fmul	%f4, %f0, %f2  #1939 pc 25160
	flw	%f6, 72(%x2)  #1939 pc 25164
	fmul	%f4, %f4, %f6  #1939 pc 25168
	lw	%x5, 60(%x2)  #1940 pc 25172
	fsw	%f4, 80(%x2)  #1940 pc 25176
	fsw	%f0, 88(%x2)  #1940 pc 25180
	sw	%x1, 100(%x2)  #1940 pc 25184
	addi	%x2, %x2, 104  #1940 pc 25188
	jal	%x1, d_vec.2743  #1940 pc 25192
	addi	%x2, %x2, -104  #1940 pc 25196
	lw	%x1, 100(%x2) #1940 pc 25200
	mv	%x6, %x5  #1940 pc 25204
	lw	%x5, 20(%x2)  #1940 pc 25208
	sw	%x1, 100(%x2)  #1940 pc 25212
	addi	%x2, %x2, 104  #1940 pc 25216
	jal	%x1, veciprod.2660  #1940 pc 25220
	addi	%x2, %x2, -104  #1940 pc 25224
	lw	%x1, 100(%x2) #1940 pc 25228
	flw	%f2, 88(%x2)  #1940 pc 25232
	fmul	%f2, %f2, %f0  #1940 pc 25236
	flw	%f0, 80(%x2)  #1941 pc 25240
	flw	%f4, 8(%x2)  #1941 pc 25244
	lw	%x22, 16(%x2)  #1941 pc 25248
	sw	%x1, 100(%x2)  #1941 pc 25252
	lw	%x23, 0(%x22)  #1941 pc 25256
	addi	%x2, %x2, 104  #1941 pc 25260
	jalr	%x1, %x23, 0  #1941 pc 25264
	addi	%x2, %x2, -104  #1941 pc 25268
	lw	%x1, 100(%x2)  #1941 pc 25272
	j	be_cont.9489 #pc 25276
	nop #pc 25280
be_else.9488: #pc 25280
be_cont.9489: #pc 25280
	j	be_cont.9487 #pc 25284
	nop #pc 25288
be_else.9486: #pc 25288
be_cont.9487: #pc 25288
be_cont.9485: #pc 25288
	lw	%x5, 4(%x2)  #1945 pc 25292
	addi	%x5, %x5, -1  #1945 pc 25296
	flw	%f0, 24(%x2)  #1945 pc 25300
	flw	%f2, 8(%x2)  #1945 pc 25304
	lw	%x6, 20(%x2)  #1945 pc 25308
	lw	%x22, 0(%x2)  #1945 pc 25312
	lw	0(%x23), %x22  #1945 pc 25316
	jalr	%x0, %x23, 0  #1945 pc 25320
	nop #pc 25324
bge_else.9483: #pc 25324
	ret #pc 25328
	nop #pc 25332
trace_ray.2963:  #pc 25332
	lw	%x9, 80(%x22)  #0 pc 25336
	lw	%x10, 76(%x22)  #0 pc 25340
	lw	%x11, 72(%x22)  #0 pc 25344
	lw	%x12, 68(%x22)  #0 pc 25348
	lw	%x13, 64(%x22)  #0 pc 25352
	lw	%x14, 60(%x22)  #0 pc 25356
	lw	%x15, 56(%x22)  #0 pc 25360
	lw	%x16, 52(%x22)  #0 pc 25364
	lw	%x17, 48(%x22)  #0 pc 25368
	lw	%x18, 44(%x22)  #0 pc 25372
	lw	%x19, 40(%x22)  #0 pc 25376
	lw	%x20, 36(%x22)  #0 pc 25380
	lw	%x21, 32(%x22)  #0 pc 25384
	lw	%x23, 28(%x22)  #0 pc 25388
	sw	%x11, 0(%x2)  #0 pc 25392
	lw	%x11, 24(%x22)  #0 pc 25396
	sw	%x10, 4(%x2)  #0 pc 25400
	lw	%x10, 20(%x22)  #0 pc 25404
	sw	%x20, 8(%x2)  #0 pc 25408
	lw	%x20, 16(%x22)  #0 pc 25412
	sw	%x15, 12(%x2)  #0 pc 25416
	lw	%x15, 12(%x22)  #0 pc 25420
	sw	%x14, 16(%x2)  #0 pc 25424
	lw	%x14, 8(%x22)  #0 pc 25428
	sw	%x22, 20(%x2)  #0 pc 25432
	lw	%x22, 4(%x22)  #0 pc 25436
	addi	%x24, %x0, 4  #pc 25440
	bge	%x24, %x5, 12  #1954 pc 25444
	j	ble_else.9492 #pc 25448
	nop #pc 25452
	fsw	%f2, 24(%x2)  #1955 pc 25456
	sw	%x22, 32(%x2)  #1955 pc 25460
	sw	%x17, 36(%x2)  #1955 pc 25464
	sw	%x19, 40(%x2)  #1955 pc 25468
	sw	%x12, 44(%x2)  #1955 pc 25472
	sw	%x7, 48(%x2)  #1955 pc 25476
	sw	%x11, 52(%x2)  #1955 pc 25480
	sw	%x9, 56(%x2)  #1955 pc 25484
	sw	%x10, 60(%x2)  #1955 pc 25488
	sw	%x13, 64(%x2)  #1955 pc 25492
	sw	%x15, 68(%x2)  #1955 pc 25496
	sw	%x18, 72(%x2)  #1955 pc 25500
	sw	%x20, 76(%x2)  #1955 pc 25504
	sw	%x16, 80(%x2)  #1955 pc 25508
	sw	%x14, 84(%x2)  #1955 pc 25512
	fsw	%f0, 88(%x2)  #1955 pc 25516
	sw	%x21, 96(%x2)  #1955 pc 25520
	sw	%x5, 100(%x2)  #1955 pc 25524
	sw	%x6, 104(%x2)  #1955 pc 25528
	sw	%x23, 108(%x2)  #1955 pc 25532
	mv	%x5, %x7 #pc 25536
	sw	%x1, 116(%x2)  #1955 pc 25540
	addi	%x2, %x2, 120  #1955 pc 25544
	jal	%x1, p_surface_ids.2728  #1955 pc 25548
	addi	%x2, %x2, -120  #1955 pc 25552
	lw	%x1, 116(%x2) #1955 pc 25556
	lw	%x6, 104(%x2)  #1956 pc 25560
	lw	%x22, 108(%x2)  #1956 pc 25564
	sw	%x5, 112(%x2)  #1956 pc 25568
	mv	%x5, %x6 #pc 25572
	sw	%x1, 116(%x2)  #1956 pc 25576
	lw	%x23, 0(%x22)  #1956 pc 25580
	addi	%x2, %x2, 120  #1956 pc 25584
	jalr	%x1, %x23, 0  #1956 pc 25588
	addi	%x2, %x2, -120  #1956 pc 25592
	lw	%x1, 116(%x2)  #1956 pc 25596
	beq	%x5, %x0, 12  #1956 pc 25600
	j	be_else.9493 #pc 25604
	nop #pc 25608
	addi	%x5, %x0, -1  #0 pc 25612
	lw	%x6, 100(%x2)  #2019 pc 25616
	slli	%x7, %x6, 2  #2019 pc 25620
	lw	%x9, 112(%x2)  #2019 pc 25624
	sw	%x5, %x7(%x9)  #2019 pc 25628
	beq	%x6, %x0, 12  #2021 pc 25632
	j	be_else.9494 #pc 25636
	nop #pc 25640
	ret #pc 25644
	nop #pc 25648
be_else.9494: #pc 25648
	lw	%x5, 104(%x2)  #2022 pc 25652
	lw	%x6, 96(%x2)  #2022 pc 25656
	sw	%x1, 116(%x2)  #2022 pc 25660
	addi	%x2, %x2, 120  #2022 pc 25664
	jal	%x1, veciprod.2660  #2022 pc 25668
	addi	%x2, %x2, -120  #2022 pc 25672
	lw	%x1, 116(%x2) #2022 pc 25676
	sw	%x1, 116(%x2)  #2022 pc 25680
	addi	%x2, %x2, 120  #2022 pc 25684
	jal	%x1, fneg.2534  #2022 pc 25688
	addi	%x2, %x2, -120  #2022 pc 25692
	lw	%x1, 116(%x2) #2022 pc 25696
	fsw	%f0, 120(%x2)  #2024 pc 25700
	sw	%x1, 132(%x2)  #2024 pc 25704
	addi	%x2, %x2, 136  #2024 pc 25708
	jal	%x1, fispos.2530  #2024 pc 25712
	addi	%x2, %x2, -136  #2024 pc 25716
	lw	%x1, 132(%x2) #2024 pc 25720
	beq	%x5, %x0, 12  #2024 pc 25724
	j	be_else.9497 #pc 25728
	nop #pc 25732
	ret #pc 25736
	nop #pc 25740
be_else.9497: #pc 25740
	flw	%f0, 120(%x2)  #2027 pc 25744
	sw	%x1, 132(%x2)  #2027 pc 25748
	addi	%x2, %x2, 136  #2027 pc 25752
	jal	%x1, fsqr.2536  #2027 pc 25756
	addi	%x2, %x2, -136  #2027 pc 25760
	lw	%x1, 132(%x2) #2027 pc 25764
	flw	%f2, 120(%x2)  #2027 pc 25768
	fmul	%f0, %f0, %f2  #2027 pc 25772
	flw	%f2, 88(%x2)  #2027 pc 25776
	fmul	%f0, %f0, %f2  #2027 pc 25780
	lw	%x5, 84(%x2)  #2027 pc 25784
	flw	%f2, 0(%x5)  #2027 pc 25788
	fmul	%f0, %f0, %f2  #2027 pc 25792
	lw	%x5, 80(%x2)  #2028 pc 25796
	flw	%f2, 0(%x5)  #2028 pc 25800
	fadd	%f2, %f2, %f0  #2028 pc 25804
	fsw	%f2, 0(%x5) #2028 pc 25808
	flw	%f2, 8(%x5)  #2029 pc 25812
	fadd	%f2, %f2, %f0  #2029 pc 25816
	fsw	%f2, 8(%x5) #2029 pc 25820
	flw	%f2, 16(%x5)  #2030 pc 25824
	fadd	%f0, %f2, %f0  #2030 pc 25828
	fsw	%f0, 16(%x5) #2030 pc 25832
	ret #pc 25836
	nop #pc 25840
be_else.9493: #pc 25840
	lw	%x5, 76(%x2)  #1958 pc 25844
	lw	%x5, 0(%x5)  #1958 pc 25848
	slli	%x6, %x5, 2  #1959 pc 25852
	lw	%x7, 72(%x2)  #1959 pc 25856
	lw	%x6, %x6(%x7)  #1959 pc 25860
	sw	%x5, 128(%x2)  #1960 pc 25864
	sw	%x6, 132(%x2)  #1960 pc 25868
	mv	%x5, %x6 #pc 25872
	sw	%x1, 140(%x2)  #1960 pc 25876
	addi	%x2, %x2, 144  #1960 pc 25880
	jal	%x1, o_reflectiontype.2686  #1960 pc 25884
	addi	%x2, %x2, -144  #1960 pc 25888
	lw	%x1, 140(%x2) #1960 pc 25892
	lw	%x6, 132(%x2)  #1961 pc 25896
	sw	%x5, 136(%x2)  #1961 pc 25900
	mv	%x5, %x6 #pc 25904
	sw	%x1, 140(%x2)  #1961 pc 25908
	addi	%x2, %x2, 144  #1961 pc 25912
	jal	%x1, o_diffuse.2706  #1961 pc 25916
	addi	%x2, %x2, -144  #1961 pc 25920
	lw	%x1, 140(%x2) #1961 pc 25924
	flw	%f2, 88(%x2)  #1961 pc 25928
	fmul	%f0, %f0, %f2  #1961 pc 25932
	lw	%x5, 132(%x2)  #1963 pc 25936
	lw	%x6, 104(%x2)  #1963 pc 25940
	lw	%x22, 68(%x2)  #1963 pc 25944
	fsw	%f0, 144(%x2)  #1963 pc 25948
	sw	%x1, 156(%x2)  #1963 pc 25952
	lw	%x23, 0(%x22)  #1963 pc 25956
	addi	%x2, %x2, 160  #1963 pc 25960
	jalr	%x1, %x23, 0  #1963 pc 25964
	addi	%x2, %x2, -160  #1963 pc 25968
	lw	%x1, 156(%x2)  #1963 pc 25972
	lw	%x5, 64(%x2)  #1964 pc 25976
	lw	%x6, 60(%x2)  #1964 pc 25980
	sw	%x1, 156(%x2)  #1964 pc 25984
	addi	%x2, %x2, 160  #1964 pc 25988
	jal	%x1, veccpy.2654  #1964 pc 25992
	addi	%x2, %x2, -160  #1964 pc 25996
	lw	%x1, 156(%x2) #1964 pc 26000
	lw	%x5, 132(%x2)  #1965 pc 26004
	lw	%x6, 60(%x2)  #1965 pc 26008
	lw	%x22, 56(%x2)  #1965 pc 26012
	sw	%x1, 156(%x2)  #1965 pc 26016
	lw	%x23, 0(%x22)  #1965 pc 26020
	addi	%x2, %x2, 160  #1965 pc 26024
	jalr	%x1, %x23, 0  #1965 pc 26028
	addi	%x2, %x2, -160  #1965 pc 26032
	lw	%x1, 156(%x2)  #1965 pc 26036
	addi	%x6, %x0, 4  #0 pc 26040
	lw	%x5, 128(%x2)  #1968 pc 26044
	sw	%x1, 156(%x2)  #1968 pc 26048
	addi	%x2, %x2, 160  #1968 pc 26052
	jal	%x1, mul.2562  #1968 pc 26056
	addi	%x2, %x2, -160  #1968 pc 26060
	lw	%x1, 156(%x2) #1968 pc 26064
	lw	%x6, 52(%x2)  #1968 pc 26068
	lw	%x6, 0(%x6)  #1968 pc 26072
	add	%x5, %x5, %x6  #1968 pc 26076
	lw	%x6, 100(%x2)  #1968 pc 26080
	slli	%x7, %x6, 2  #1968 pc 26084
	lw	%x9, 112(%x2)  #1968 pc 26088
	sw	%x5, %x7(%x9)  #1968 pc 26092
	lw	%x5, 48(%x2)  #1969 pc 26096
	sw	%x1, 156(%x2)  #1969 pc 26100
	addi	%x2, %x2, 160  #1969 pc 26104
	jal	%x1, p_intersection_points.2726  #1969 pc 26108
	addi	%x2, %x2, -160  #1969 pc 26112
	lw	%x1, 156(%x2) #1969 pc 26116
	lw	%x6, 100(%x2)  #1970 pc 26120
	slli	%x7, %x6, 2  #1970 pc 26124
	lw	%x5, %x7(%x5)  #1970 pc 26128
	lw	%x7, 60(%x2)  #1970 pc 26132
	mv	%x6, %x7 #pc 26136
	sw	%x1, 156(%x2)  #1970 pc 26140
	addi	%x2, %x2, 160  #1970 pc 26144
	jal	%x1, veccpy.2654  #1970 pc 26148
	addi	%x2, %x2, -160  #1970 pc 26152
	lw	%x1, 156(%x2) #1970 pc 26156
	lw	%x5, 48(%x2)  #1973 pc 26160
	sw	%x1, 156(%x2)  #1973 pc 26164
	addi	%x2, %x2, 160  #1973 pc 26168
	jal	%x1, p_calc_diffuse.2730  #1973 pc 26172
	addi	%x2, %x2, -160  #1973 pc 26176
	lw	%x1, 156(%x2) #1973 pc 26180
	lw	%x6, 132(%x2)  #1974 pc 26184
	sw	%x5, 152(%x2)  #1974 pc 26188
	mv	%x5, %x6 #pc 26192
	sw	%x1, 156(%x2)  #1974 pc 26196
	addi	%x2, %x2, 160  #1974 pc 26200
	jal	%x1, o_diffuse.2706  #1974 pc 26204
	addi	%x2, %x2, -160  #1974 pc 26208
	lw	%x1, 156(%x2) #1974 pc 26212
	mv	%f2, l.6297  #0 pc 26216
	sw	%x1, 156(%x2)  #1974 pc 26220
	addi	%x2, %x2, 160  #1974 pc 26224
	jal	%x1, fless.2540  #1974 pc 26228
	addi	%x2, %x2, -160  #1974 pc 26232
	lw	%x1, 156(%x2) #1974 pc 26236
	beq	%x5, %x0, 12  #1974 pc 26240
	j	be_else.9501 #pc 26244
	nop #pc 26248
	addi	%x5, %x0, 1  #0 pc 26252
	lw	%x6, 100(%x2)  #1977 pc 26256
	slli	%x7, %x6, 2  #1977 pc 26260
	lw	%x9, 152(%x2)  #1977 pc 26264
	sw	%x5, %x7(%x9)  #1977 pc 26268
	lw	%x5, 48(%x2)  #1978 pc 26272
	sw	%x1, 156(%x2)  #1978 pc 26276
	addi	%x2, %x2, 160  #1978 pc 26280
	jal	%x1, p_energy.2732  #1978 pc 26284
	addi	%x2, %x2, -160  #1978 pc 26288
	lw	%x1, 156(%x2) #1978 pc 26292
	lw	%x6, 100(%x2)  #1979 pc 26296
	slli	%x7, %x6, 2  #1979 pc 26300
	lw	%x7, %x7(%x5)  #1979 pc 26304
	lw	%x9, 44(%x2)  #1979 pc 26308
	sw	%x5, 156(%x2)  #1979 pc 26312
	mv	%x6, %x9 #pc 26316
	mv	%x5, %x7 #pc 26320
	sw	%x1, 164(%x2)  #1979 pc 26324
	addi	%x2, %x2, 168  #1979 pc 26328
	jal	%x1, veccpy.2654  #1979 pc 26332
	addi	%x2, %x2, -168  #1979 pc 26336
	lw	%x1, 164(%x2) #1979 pc 26340
	lw	%x5, 100(%x2)  #1980 pc 26344
	slli	%x6, %x5, 2  #1980 pc 26348
	lw	%x7, 156(%x2)  #1980 pc 26352
	lw	%x6, %x6(%x7)  #1980 pc 26356
	mv	%f0, l.6864  #0 pc 26360
	flw	%f2, 144(%x2)  #1980 pc 26364
	fmul	%f0, %f0, %f2  #1980 pc 26368
	mv	%x5, %x6 #pc 26372
	sw	%x1, 164(%x2)  #1980 pc 26376
	addi	%x2, %x2, 168  #1980 pc 26380
	jal	%x1, vecscale.2675  #1980 pc 26384
	addi	%x2, %x2, -168  #1980 pc 26388
	lw	%x1, 164(%x2) #1980 pc 26392
	lw	%x5, 48(%x2)  #1981 pc 26396
	sw	%x1, 164(%x2)  #1981 pc 26400
	addi	%x2, %x2, 168  #1981 pc 26404
	jal	%x1, p_nvectors.2741  #1981 pc 26408
	addi	%x2, %x2, -168  #1981 pc 26412
	lw	%x1, 164(%x2) #1981 pc 26416
	lw	%x6, 100(%x2)  #1982 pc 26420
	slli	%x7, %x6, 2  #1982 pc 26424
	lw	%x5, %x7(%x5)  #1982 pc 26428
	lw	%x7, 40(%x2)  #1982 pc 26432
	mv	%x6, %x7 #pc 26436
	sw	%x1, 164(%x2)  #1982 pc 26440
	addi	%x2, %x2, 168  #1982 pc 26444
	jal	%x1, veccpy.2654  #1982 pc 26448
	addi	%x2, %x2, -168  #1982 pc 26452
	lw	%x1, 164(%x2) #1982 pc 26456
	j	be_cont.9502 #pc 26460
	nop #pc 26464
be_else.9501: #pc 26464
	addi	%x5, %x0, 0  #0 pc 26468
	lw	%x6, 100(%x2)  #1975 pc 26472
	slli	%x7, %x6, 2  #1975 pc 26476
	lw	%x9, 152(%x2)  #1975 pc 26480
	sw	%x5, %x7(%x9)  #1975 pc 26484
be_cont.9502: #pc 26484
	mv	%f0, l.6867  #0 pc 26488
	lw	%x5, 104(%x2)  #1985 pc 26492
	lw	%x6, 40(%x2)  #1985 pc 26496
	fsw	%f0, 160(%x2)  #1985 pc 26500
	sw	%x1, 172(%x2)  #1985 pc 26504
	addi	%x2, %x2, 176  #1985 pc 26508
	jal	%x1, veciprod.2660  #1985 pc 26512
	addi	%x2, %x2, -176  #1985 pc 26516
	lw	%x1, 172(%x2) #1985 pc 26520
	flw	%f2, 160(%x2)  #1985 pc 26524
	fmul	%f0, %f2, %f0  #1985 pc 26528
	lw	%x5, 104(%x2)  #1987 pc 26532
	lw	%x6, 40(%x2)  #1987 pc 26536
	sw	%x1, 172(%x2)  #1987 pc 26540
	addi	%x2, %x2, 176  #1987 pc 26544
	jal	%x1, vecaccum.2668  #1987 pc 26548
	addi	%x2, %x2, -176  #1987 pc 26552
	lw	%x1, 172(%x2) #1987 pc 26556
	lw	%x5, 132(%x2)  #1989 pc 26560
	sw	%x1, 172(%x2)  #1989 pc 26564
	addi	%x2, %x2, 176  #1989 pc 26568
	jal	%x1, o_hilight.2708  #1989 pc 26572
	addi	%x2, %x2, -176  #1989 pc 26576
	lw	%x1, 172(%x2) #1989 pc 26580
	flw	%f2, 88(%x2)  #1989 pc 26584
	fmul	%f0, %f2, %f0  #1989 pc 26588
	addi	%x5, %x0, 0  #0 pc 26592
	lw	%x6, 36(%x2)  #1992 pc 26596
	lw	%x6, 0(%x6)  #1992 pc 26600
	lw	%x22, 16(%x2)  #1992 pc 26604
	fsw	%f0, 168(%x2)  #1992 pc 26608
	sw	%x1, 180(%x2)  #1992 pc 26612
	lw	%x23, 0(%x22)  #1992 pc 26616
	addi	%x2, %x2, 184  #1992 pc 26620
	jalr	%x1, %x23, 0  #1992 pc 26624
	addi	%x2, %x2, -184  #1992 pc 26628
	lw	%x1, 180(%x2)  #1992 pc 26632
	beq	%x5, %x0, 12  #1992 pc 26636
	j	be_else.9503 #pc 26640
	nop #pc 26644
	lw	%x5, 40(%x2)  #1993 pc 26648
	lw	%x6, 96(%x2)  #1993 pc 26652
	sw	%x1, 180(%x2)  #1993 pc 26656
	addi	%x2, %x2, 184  #1993 pc 26660
	jal	%x1, veciprod.2660  #1993 pc 26664
	addi	%x2, %x2, -184  #1993 pc 26668
	lw	%x1, 180(%x2) #1993 pc 26672
	sw	%x1, 180(%x2)  #1993 pc 26676
	addi	%x2, %x2, 184  #1993 pc 26680
	jal	%x1, fneg.2534  #1993 pc 26684
	addi	%x2, %x2, -184  #1993 pc 26688
	lw	%x1, 180(%x2) #1993 pc 26692
	flw	%f2, 144(%x2)  #1993 pc 26696
	fmul	%f0, %f0, %f2  #1993 pc 26700
	lw	%x5, 104(%x2)  #1994 pc 26704
	lw	%x6, 96(%x2)  #1994 pc 26708
	fsw	%f0, 176(%x2)  #1994 pc 26712
	sw	%x1, 188(%x2)  #1994 pc 26716
	addi	%x2, %x2, 192  #1994 pc 26720
	jal	%x1, veciprod.2660  #1994 pc 26724
	addi	%x2, %x2, -192  #1994 pc 26728
	lw	%x1, 188(%x2) #1994 pc 26732
	sw	%x1, 188(%x2)  #1994 pc 26736
	addi	%x2, %x2, 192  #1994 pc 26740
	jal	%x1, fneg.2534  #1994 pc 26744
	addi	%x2, %x2, -192  #1994 pc 26748
	lw	%x1, 188(%x2) #1994 pc 26752
	mv	%f2, %f0  #1994 pc 26756
	mv	%f3, %f1  #1994 pc 26760
	flw	%f0, 176(%x2)  #1995 pc 26764
	flw	%f4, 168(%x2)  #1995 pc 26768
	lw	%x22, 32(%x2)  #1995 pc 26772
	sw	%x1, 188(%x2)  #1995 pc 26776
	lw	%x23, 0(%x22)  #1995 pc 26780
	addi	%x2, %x2, 192  #1995 pc 26784
	jalr	%x1, %x23, 0  #1995 pc 26788
	addi	%x2, %x2, -192  #1995 pc 26792
	lw	%x1, 188(%x2)  #1995 pc 26796
	j	be_cont.9504 #pc 26800
	nop #pc 26804
be_else.9503: #pc 26804
be_cont.9504: #pc 26804
	lw	%x5, 60(%x2)  #1999 pc 26808
	lw	%x22, 12(%x2)  #1999 pc 26812
	sw	%x1, 188(%x2)  #1999 pc 26816
	lw	%x23, 0(%x22)  #1999 pc 26820
	addi	%x2, %x2, 192  #1999 pc 26824
	jalr	%x1, %x23, 0  #1999 pc 26828
	addi	%x2, %x2, -192  #1999 pc 26832
	lw	%x1, 188(%x2)  #1999 pc 26836
	lw	%x5, 8(%x2)  #2000 pc 26840
	lw	%x5, 0(%x5)  #2000 pc 26844
	addi	%x5, %x5, -1  #2000 pc 26848
	flw	%f0, 144(%x2)  #2000 pc 26852
	flw	%f2, 168(%x2)  #2000 pc 26856
	lw	%x6, 104(%x2)  #2000 pc 26860
	lw	%x22, 4(%x2)  #2000 pc 26864
	sw	%x1, 188(%x2)  #2000 pc 26868
	lw	%x23, 0(%x22)  #2000 pc 26872
	addi	%x2, %x2, 192  #2000 pc 26876
	jalr	%x1, %x23, 0  #2000 pc 26880
	addi	%x2, %x2, -192  #2000 pc 26884
	lw	%x1, 188(%x2)  #2000 pc 26888
	mv	%f0, l.6871  #0 pc 26892
	flw	%f2, 88(%x2)  #2003 pc 26896
	sw	%x1, 188(%x2)  #2003 pc 26900
	addi	%x2, %x2, 192  #2003 pc 26904
	jal	%x1, fless.2540  #2003 pc 26908
	addi	%x2, %x2, -192  #2003 pc 26912
	lw	%x1, 188(%x2) #2003 pc 26916
	beq	%x5, %x0, 12  #2003 pc 26920
	j	be_else.9505 #pc 26924
	nop #pc 26928
	ret #pc 26932
	nop #pc 26936
be_else.9505: #pc 26936
	lw	%x5, 100(%x2)  #2005 pc 26940
	addi	%x24, %x0, 4  #pc 26944
	bge	%x5, %x24, 12  #2005 pc 26948
	j	bge_else.9507 #pc 26952
	nop #pc 26956
	j	bge_cont.9508 #pc 26960
	nop #pc 26964
bge_else.9507: #pc 26964
	addi	%x6, %x5, 1  #2006 pc 26968
	addi	%x7, %x0, -1  #0 pc 26972
	slli	%x6, %x6, 2  #2006 pc 26976
	lw	%x9, 112(%x2)  #2006 pc 26980
	sw	%x7, %x6(%x9)  #2006 pc 26984
bge_cont.9508: #pc 26984
	lw	%x6, 136(%x2)  #2009 pc 26988
	addi	%x24, %x0, 2  #pc 26992
	beq	%x6, %x24, 12  #2009 pc 26996
	j	be_else.9509 #pc 27000
	nop #pc 27004
	mv	%f0, l.6305  #0 pc 27008
	lw	%x6, 132(%x2)  #2010 pc 27012
	fsw	%f0, 184(%x2)  #2010 pc 27016
	mv	%x5, %x6 #pc 27020
	sw	%x1, 196(%x2)  #2010 pc 27024
	addi	%x2, %x2, 200  #2010 pc 27028
	jal	%x1, o_diffuse.2706  #2010 pc 27032
	addi	%x2, %x2, -200  #2010 pc 27036
	lw	%x1, 196(%x2) #2010 pc 27040
	flw	%f2, 184(%x2)  #2010 pc 27044
	fsub	%f0, %f2, %f0  #2010 pc 27048
	flw	%f2, 88(%x2)  #2010 pc 27052
	fmul	%f0, %f2, %f0  #2010 pc 27056
	lw	%x5, 100(%x2)  #2011 pc 27060
	addi	%x5, %x5, 1  #2011 pc 27064
	lw	%x6, 0(%x2)  #2011 pc 27068
	flw	%f2, 0(%x6)  #2011 pc 27072
	flw	%f4, 24(%x2)  #2011 pc 27076
	fadd	%f2, %f4, %f2  #2011 pc 27080
	lw	%x6, 104(%x2)  #2011 pc 27084
	lw	%x7, 48(%x2)  #2011 pc 27088
	lw	%x22, 20(%x2)  #2011 pc 27092
	lw	0(%x23), %x22  #2011 pc 27096
	jalr	%x0, %x23, 0  #2011 pc 27100
	nop #pc 27104
be_else.9509: #pc 27104
	ret #pc 27108
	nop #pc 27112
ble_else.9492: #pc 27112
	ret #pc 27116
	nop #pc 27120
trace_diffuse_ray.2969:  #pc 27120
	lw	%x6, 48(%x22)  #0 pc 27124
	lw	%x7, 44(%x22)  #0 pc 27128
	lw	%x9, 40(%x22)  #0 pc 27132
	lw	%x10, 36(%x22)  #0 pc 27136
	lw	%x11, 32(%x22)  #0 pc 27140
	lw	%x12, 28(%x22)  #0 pc 27144
	lw	%x13, 24(%x22)  #0 pc 27148
	lw	%x14, 20(%x22)  #0 pc 27152
	lw	%x15, 16(%x22)  #0 pc 27156
	lw	%x16, 12(%x22)  #0 pc 27160
	lw	%x17, 8(%x22)  #0 pc 27164
	lw	%x18, 4(%x22)  #0 pc 27168
	sw	%x7, 0(%x2)  #2049 pc 27172
	sw	%x18, 4(%x2)  #2049 pc 27176
	fsw	%f0, 8(%x2)  #2049 pc 27180
	sw	%x13, 16(%x2)  #2049 pc 27184
	sw	%x12, 20(%x2)  #2049 pc 27188
	sw	%x9, 24(%x2)  #2049 pc 27192
	sw	%x10, 28(%x2)  #2049 pc 27196
	sw	%x15, 32(%x2)  #2049 pc 27200
	sw	%x6, 36(%x2)  #2049 pc 27204
	sw	%x17, 40(%x2)  #2049 pc 27208
	sw	%x5, 44(%x2)  #2049 pc 27212
	sw	%x11, 48(%x2)  #2049 pc 27216
	sw	%x16, 52(%x2)  #2049 pc 27220
	mv	%x22, %x14 #pc 27224
	sw	%x1, 60(%x2)  #2049 pc 27228
	lw	%x23, 0(%x22)  #2049 pc 27232
	addi	%x2, %x2, 64  #2049 pc 27236
	jalr	%x1, %x23, 0  #2049 pc 27240
	addi	%x2, %x2, -64  #2049 pc 27244
	lw	%x1, 60(%x2)  #2049 pc 27248
	beq	%x5, %x0, 12  #2049 pc 27252
	j	be_else.9512 #pc 27256
	nop #pc 27260
	ret #pc 27264
	nop #pc 27268
be_else.9512: #pc 27268
	lw	%x5, 52(%x2)  #2050 pc 27272
	lw	%x5, 0(%x5)  #2050 pc 27276
	slli	%x5, %x5, 2  #2050 pc 27280
	lw	%x6, 48(%x2)  #2050 pc 27284
	lw	%x5, %x5(%x6)  #2050 pc 27288
	lw	%x6, 44(%x2)  #2051 pc 27292
	sw	%x5, 56(%x2)  #2051 pc 27296
	mv	%x5, %x6 #pc 27300
	sw	%x1, 60(%x2)  #2051 pc 27304
	addi	%x2, %x2, 64  #2051 pc 27308
	jal	%x1, d_vec.2743  #2051 pc 27312
	addi	%x2, %x2, -64  #2051 pc 27316
	lw	%x1, 60(%x2) #2051 pc 27320
	mv	%x6, %x5  #2051 pc 27324
	lw	%x5, 56(%x2)  #2051 pc 27328
	lw	%x22, 40(%x2)  #2051 pc 27332
	sw	%x1, 60(%x2)  #2051 pc 27336
	lw	%x23, 0(%x22)  #2051 pc 27340
	addi	%x2, %x2, 64  #2051 pc 27344
	jalr	%x1, %x23, 0  #2051 pc 27348
	addi	%x2, %x2, -64  #2051 pc 27352
	lw	%x1, 60(%x2)  #2051 pc 27356
	lw	%x5, 56(%x2)  #2052 pc 27360
	lw	%x6, 32(%x2)  #2052 pc 27364
	lw	%x22, 36(%x2)  #2052 pc 27368
	sw	%x1, 60(%x2)  #2052 pc 27372
	lw	%x23, 0(%x22)  #2052 pc 27376
	addi	%x2, %x2, 64  #2052 pc 27380
	jalr	%x1, %x23, 0  #2052 pc 27384
	addi	%x2, %x2, -64  #2052 pc 27388
	lw	%x1, 60(%x2)  #2052 pc 27392
	addi	%x5, %x0, 0  #0 pc 27396
	lw	%x6, 28(%x2)  #2055 pc 27400
	lw	%x6, 0(%x6)  #2055 pc 27404
	lw	%x22, 24(%x2)  #2055 pc 27408
	sw	%x1, 60(%x2)  #2055 pc 27412
	lw	%x23, 0(%x22)  #2055 pc 27416
	addi	%x2, %x2, 64  #2055 pc 27420
	jalr	%x1, %x23, 0  #2055 pc 27424
	addi	%x2, %x2, -64  #2055 pc 27428
	lw	%x1, 60(%x2)  #2055 pc 27432
	beq	%x5, %x0, 12  #2055 pc 27436
	j	be_else.9514 #pc 27440
	nop #pc 27444
	lw	%x5, 20(%x2)  #2056 pc 27448
	lw	%x6, 16(%x2)  #2056 pc 27452
	sw	%x1, 60(%x2)  #2056 pc 27456
	addi	%x2, %x2, 64  #2056 pc 27460
	jal	%x1, veciprod.2660  #2056 pc 27464
	addi	%x2, %x2, -64  #2056 pc 27468
	lw	%x1, 60(%x2) #2056 pc 27472
	sw	%x1, 60(%x2)  #2056 pc 27476
	addi	%x2, %x2, 64  #2056 pc 27480
	jal	%x1, fneg.2534  #2056 pc 27484
	addi	%x2, %x2, -64  #2056 pc 27488
	lw	%x1, 60(%x2) #2056 pc 27492
	fsw	%f0, 64(%x2)  #2057 pc 27496
	sw	%x1, 76(%x2)  #2057 pc 27500
	addi	%x2, %x2, 80  #2057 pc 27504
	jal	%x1, fispos.2530  #2057 pc 27508
	addi	%x2, %x2, -80  #2057 pc 27512
	lw	%x1, 76(%x2) #2057 pc 27516
	beq	%x5, %x0, 12  #2057 pc 27520
	j	be_else.9516 #pc 27524
	nop #pc 27528
	mv	%f0, l.6293  #0 pc 27532
	j	be_cont.9517 #pc 27536
	nop #pc 27540
be_else.9516: #pc 27540
	flw	%f0, 64(%x2)  #2057 pc 27544
be_cont.9517: #pc 27544
	flw	%f2, 8(%x2)  #2058 pc 27548
	fmul	%f0, %f2, %f0  #2058 pc 27552
	lw	%x5, 56(%x2)  #2058 pc 27556
	fsw	%f0, 72(%x2)  #2058 pc 27560
	sw	%x1, 84(%x2)  #2058 pc 27564
	addi	%x2, %x2, 88  #2058 pc 27568
	jal	%x1, o_diffuse.2706  #2058 pc 27572
	addi	%x2, %x2, -88  #2058 pc 27576
	lw	%x1, 84(%x2) #2058 pc 27580
	flw	%f2, 72(%x2)  #2058 pc 27584
	fmul	%f0, %f2, %f0  #2058 pc 27588
	lw	%x5, 4(%x2)  #2058 pc 27592
	lw	%x6, 0(%x2)  #2058 pc 27596
	j	vecaccum.2668  #2058 pc 27600
	nop #pc 27604
be_else.9514: #pc 27604
	ret #pc 27608
	nop #pc 27612
iter_trace_diffuse_rays.2972:  #pc 27612
	lw	%x10, 4(%x22)  #0 pc 27616
	bge	%x9, %x0, 12  #2066 pc 27620
	j	bge_else.9519 #pc 27624
	nop #pc 27628
	slli	%x11, %x9, 2  #2067 pc 27632
	lw	%x11, %x11(%x5)  #2067 pc 27636
	sw	%x7, 0(%x2)  #2067 pc 27640
	sw	%x22, 4(%x2)  #2067 pc 27644
	sw	%x10, 8(%x2)  #2067 pc 27648
	sw	%x5, 12(%x2)  #2067 pc 27652
	sw	%x9, 16(%x2)  #2067 pc 27656
	sw	%x6, 20(%x2)  #2067 pc 27660
	mv	%x5, %x11 #pc 27664
	sw	%x1, 28(%x2)  #2067 pc 27668
	addi	%x2, %x2, 32  #2067 pc 27672
	jal	%x1, d_vec.2743  #2067 pc 27676
	addi	%x2, %x2, -32  #2067 pc 27680
	lw	%x1, 28(%x2) #2067 pc 27684
	lw	%x6, 20(%x2)  #2067 pc 27688
	sw	%x1, 28(%x2)  #2067 pc 27692
	addi	%x2, %x2, 32  #2067 pc 27696
	jal	%x1, veciprod.2660  #2067 pc 27700
	addi	%x2, %x2, -32  #2067 pc 27704
	lw	%x1, 28(%x2) #2067 pc 27708
	fsw	%f0, 24(%x2)  #2071 pc 27712
	sw	%x1, 36(%x2)  #2071 pc 27716
	addi	%x2, %x2, 40  #2071 pc 27720
	jal	%x1, fisneg.2532  #2071 pc 27724
	addi	%x2, %x2, -40  #2071 pc 27728
	lw	%x1, 36(%x2) #2071 pc 27732
	beq	%x5, %x0, 12  #2071 pc 27736
	j	be_else.9520 #pc 27740
	nop #pc 27744
	lw	%x5, 16(%x2)  #2074 pc 27748
	slli	%x6, %x5, 2  #2074 pc 27752
	lw	%x7, 12(%x2)  #2074 pc 27756
	lw	%x6, %x6(%x7)  #2074 pc 27760
	mv	%f0, l.6893  #0 pc 27764
	flw	%f2, 24(%x2)  #2074 pc 27768
	fdiv	%f0, %f2, %f0  #2074 pc 27772
	lw	%x22, 8(%x2)  #2074 pc 27776
	mv	%x5, %x6 #pc 27780
	sw	%x1, 36(%x2)  #2074 pc 27784
	lw	%x23, 0(%x22)  #2074 pc 27788
	addi	%x2, %x2, 40  #2074 pc 27792
	jalr	%x1, %x23, 0  #2074 pc 27796
	addi	%x2, %x2, -40  #2074 pc 27800
	lw	%x1, 36(%x2)  #2074 pc 27804
	j	be_cont.9521 #pc 27808
	nop #pc 27812
be_else.9520: #pc 27812
	lw	%x5, 16(%x2)  #2072 pc 27816
	addi	%x6, %x5, 1  #2072 pc 27820
	slli	%x6, %x6, 2  #2072 pc 27824
	lw	%x7, 12(%x2)  #2072 pc 27828
	lw	%x6, %x6(%x7)  #2072 pc 27832
	mv	%f0, l.6890  #0 pc 27836
	flw	%f2, 24(%x2)  #2072 pc 27840
	fdiv	%f0, %f2, %f0  #2072 pc 27844
	lw	%x22, 8(%x2)  #2072 pc 27848
	mv	%x5, %x6 #pc 27852
	sw	%x1, 36(%x2)  #2072 pc 27856
	lw	%x23, 0(%x22)  #2072 pc 27860
	addi	%x2, %x2, 40  #2072 pc 27864
	jalr	%x1, %x23, 0  #2072 pc 27868
	addi	%x2, %x2, -40  #2072 pc 27872
	lw	%x1, 36(%x2)  #2072 pc 27876
be_cont.9521: #pc 27876
	lw	%x5, 16(%x2)  #2076 pc 27880
	addi	%x9, %x5, -2  #2076 pc 27884
	lw	%x5, 12(%x2)  #2076 pc 27888
	lw	%x6, 20(%x2)  #2076 pc 27892
	lw	%x7, 0(%x2)  #2076 pc 27896
	lw	%x22, 4(%x2)  #2076 pc 27900
	lw	0(%x23), %x22  #2076 pc 27904
	jalr	%x0, %x23, 0  #2076 pc 27908
	nop #pc 27912
bge_else.9519: #pc 27912
	ret #pc 27916
	nop #pc 27920
trace_diffuse_rays.2977:  #pc 27920
	lw	%x9, 8(%x22)  #2082 pc 27924
	lw	%x10, 4(%x22)  #2082 pc 27928
	sw	%x7, 0(%x2)  #2082 pc 27932
	sw	%x6, 4(%x2)  #2082 pc 27936
	sw	%x5, 8(%x2)  #2082 pc 27940
	sw	%x10, 12(%x2)  #2082 pc 27944
	mv	%x5, %x7 #pc 27948
	mv	%x22, %x9 #pc 27952
	sw	%x1, 20(%x2)  #2082 pc 27956
	lw	%x23, 0(%x22)  #2082 pc 27960
	addi	%x2, %x2, 24  #2082 pc 27964
	jalr	%x1, %x23, 0  #2082 pc 27968
	addi	%x2, %x2, -24  #2082 pc 27972
	lw	%x1, 20(%x2)  #2082 pc 27976
	addi	%x9, %x0, 118  #0 pc 27980
	lw	%x5, 8(%x2)  #2086 pc 27984
	lw	%x6, 4(%x2)  #2086 pc 27988
	lw	%x7, 0(%x2)  #2086 pc 27992
	lw	%x22, 12(%x2)  #2086 pc 27996
	lw	0(%x23), %x22  #2086 pc 28000
	jalr	%x0, %x23, 0  #2086 pc 28004
	nop #pc 28008
trace_diffuse_ray_80percent.2981:  #pc 28008
	lw	%x9, 8(%x22)  #0 pc 28012
	lw	%x10, 4(%x22)  #0 pc 28016
	sw	%x7, 0(%x2)  #2093 pc 28020
	sw	%x6, 4(%x2)  #2093 pc 28024
	sw	%x9, 8(%x2)  #2093 pc 28028
	sw	%x10, 12(%x2)  #2093 pc 28032
	sw	%x5, 16(%x2)  #2093 pc 28036
	beq	%x5, %x0, 12  #2093 pc 28040
	j	be_else.9523 #pc 28044
	nop #pc 28048
	j	be_cont.9524 #pc 28052
	nop #pc 28056
be_else.9523: #pc 28056
	lw	%x11, 0(%x10)  #2094 pc 28060
	mv	%x5, %x11 #pc 28064
	mv	%x22, %x9 #pc 28068
	sw	%x1, 20(%x2)  #2094 pc 28072
	lw	%x23, 0(%x22)  #2094 pc 28076
	addi	%x2, %x2, 24  #2094 pc 28080
	jalr	%x1, %x23, 0  #2094 pc 28084
	addi	%x2, %x2, -24  #2094 pc 28088
	lw	%x1, 20(%x2)  #2094 pc 28092
be_cont.9524: #pc 28092
	lw	%x5, 16(%x2)  #2097 pc 28096
	addi	%x24, %x0, 1  #pc 28100
	beq	%x5, %x24, 12  #2097 pc 28104
	j	be_else.9525 #pc 28108
	nop #pc 28112
	j	be_cont.9526 #pc 28116
	nop #pc 28120
be_else.9525: #pc 28120
	lw	%x6, 12(%x2)  #2098 pc 28124
	lw	%x7, 4(%x6)  #2098 pc 28128
	lw	%x9, 4(%x2)  #2098 pc 28132
	lw	%x10, 0(%x2)  #2098 pc 28136
	lw	%x22, 8(%x2)  #2098 pc 28140
	mv	%x6, %x9 #pc 28144
	mv	%x5, %x7 #pc 28148
	mv	%x7, %x10 #pc 28152
	sw	%x1, 20(%x2)  #2098 pc 28156
	lw	%x23, 0(%x22)  #2098 pc 28160
	addi	%x2, %x2, 24  #2098 pc 28164
	jalr	%x1, %x23, 0  #2098 pc 28168
	addi	%x2, %x2, -24  #2098 pc 28172
	lw	%x1, 20(%x2)  #2098 pc 28176
be_cont.9526: #pc 28176
	lw	%x5, 16(%x2)  #2101 pc 28180
	addi	%x24, %x0, 2  #pc 28184
	beq	%x5, %x24, 12  #2101 pc 28188
	j	be_else.9527 #pc 28192
	nop #pc 28196
	j	be_cont.9528 #pc 28200
	nop #pc 28204
be_else.9527: #pc 28204
	lw	%x6, 12(%x2)  #2102 pc 28208
	lw	%x7, 8(%x6)  #2102 pc 28212
	lw	%x9, 4(%x2)  #2102 pc 28216
	lw	%x10, 0(%x2)  #2102 pc 28220
	lw	%x22, 8(%x2)  #2102 pc 28224
	mv	%x6, %x9 #pc 28228
	mv	%x5, %x7 #pc 28232
	mv	%x7, %x10 #pc 28236
	sw	%x1, 20(%x2)  #2102 pc 28240
	lw	%x23, 0(%x22)  #2102 pc 28244
	addi	%x2, %x2, 24  #2102 pc 28248
	jalr	%x1, %x23, 0  #2102 pc 28252
	addi	%x2, %x2, -24  #2102 pc 28256
	lw	%x1, 20(%x2)  #2102 pc 28260
be_cont.9528: #pc 28260
	lw	%x5, 16(%x2)  #2105 pc 28264
	addi	%x24, %x0, 3  #pc 28268
	beq	%x5, %x24, 12  #2105 pc 28272
	j	be_else.9529 #pc 28276
	nop #pc 28280
	j	be_cont.9530 #pc 28284
	nop #pc 28288
be_else.9529: #pc 28288
	lw	%x6, 12(%x2)  #2106 pc 28292
	lw	%x7, 12(%x6)  #2106 pc 28296
	lw	%x9, 4(%x2)  #2106 pc 28300
	lw	%x10, 0(%x2)  #2106 pc 28304
	lw	%x22, 8(%x2)  #2106 pc 28308
	mv	%x6, %x9 #pc 28312
	mv	%x5, %x7 #pc 28316
	mv	%x7, %x10 #pc 28320
	sw	%x1, 20(%x2)  #2106 pc 28324
	lw	%x23, 0(%x22)  #2106 pc 28328
	addi	%x2, %x2, 24  #2106 pc 28332
	jalr	%x1, %x23, 0  #2106 pc 28336
	addi	%x2, %x2, -24  #2106 pc 28340
	lw	%x1, 20(%x2)  #2106 pc 28344
be_cont.9530: #pc 28344
	lw	%x5, 16(%x2)  #2109 pc 28348
	addi	%x24, %x0, 4  #pc 28352
	beq	%x5, %x24, 12  #2109 pc 28356
	j	be_else.9531 #pc 28360
	nop #pc 28364
	ret #pc 28368
	nop #pc 28372
be_else.9531: #pc 28372
	lw	%x5, 12(%x2)  #2110 pc 28376
	lw	%x5, 16(%x5)  #2110 pc 28380
	lw	%x6, 4(%x2)  #2110 pc 28384
	lw	%x7, 0(%x2)  #2110 pc 28388
	lw	%x22, 8(%x2)  #2110 pc 28392
	lw	0(%x23), %x22  #2110 pc 28396
	jalr	%x0, %x23, 0  #2110 pc 28400
	nop #pc 28404
calc_diffuse_using_1point.2985:  #pc 28404
	lw	%x7, 12(%x22)  #2119 pc 28408
	lw	%x9, 8(%x22)  #2119 pc 28412
	lw	%x10, 4(%x22)  #2119 pc 28416
	sw	%x9, 0(%x2)  #2119 pc 28420
	sw	%x7, 4(%x2)  #2119 pc 28424
	sw	%x10, 8(%x2)  #2119 pc 28428
	sw	%x6, 12(%x2)  #2119 pc 28432
	sw	%x5, 16(%x2)  #2119 pc 28436
	sw	%x1, 20(%x2)  #2119 pc 28440
	addi	%x2, %x2, 24  #2119 pc 28444
	jal	%x1, p_received_ray_20percent.2734  #2119 pc 28448
	addi	%x2, %x2, -24  #2119 pc 28452
	lw	%x1, 20(%x2) #2119 pc 28456
	lw	%x6, 16(%x2)  #2120 pc 28460
	sw	%x5, 20(%x2)  #2120 pc 28464
	mv	%x5, %x6 #pc 28468
	sw	%x1, 28(%x2)  #2120 pc 28472
	addi	%x2, %x2, 32  #2120 pc 28476
	jal	%x1, p_nvectors.2741  #2120 pc 28480
	addi	%x2, %x2, -32  #2120 pc 28484
	lw	%x1, 28(%x2) #2120 pc 28488
	lw	%x6, 16(%x2)  #2121 pc 28492
	sw	%x5, 24(%x2)  #2121 pc 28496
	mv	%x5, %x6 #pc 28500
	sw	%x1, 28(%x2)  #2121 pc 28504
	addi	%x2, %x2, 32  #2121 pc 28508
	jal	%x1, p_intersection_points.2726  #2121 pc 28512
	addi	%x2, %x2, -32  #2121 pc 28516
	lw	%x1, 28(%x2) #2121 pc 28520
	lw	%x6, 16(%x2)  #2122 pc 28524
	sw	%x5, 28(%x2)  #2122 pc 28528
	mv	%x5, %x6 #pc 28532
	sw	%x1, 36(%x2)  #2122 pc 28536
	addi	%x2, %x2, 40  #2122 pc 28540
	jal	%x1, p_energy.2732  #2122 pc 28544
	addi	%x2, %x2, -40  #2122 pc 28548
	lw	%x1, 36(%x2) #2122 pc 28552
	lw	%x6, 12(%x2)  #2124 pc 28556
	slli	%x7, %x6, 2  #2124 pc 28560
	lw	%x9, 20(%x2)  #2124 pc 28564
	lw	%x7, %x7(%x9)  #2124 pc 28568
	lw	%x9, 8(%x2)  #2124 pc 28572
	sw	%x5, 32(%x2)  #2124 pc 28576
	mv	%x6, %x7 #pc 28580
	mv	%x5, %x9 #pc 28584
	sw	%x1, 36(%x2)  #2124 pc 28588
	addi	%x2, %x2, 40  #2124 pc 28592
	jal	%x1, veccpy.2654  #2124 pc 28596
	addi	%x2, %x2, -40  #2124 pc 28600
	lw	%x1, 36(%x2) #2124 pc 28604
	lw	%x5, 16(%x2)  #2126 pc 28608
	sw	%x1, 36(%x2)  #2126 pc 28612
	addi	%x2, %x2, 40  #2126 pc 28616
	jal	%x1, p_group_id.2736  #2126 pc 28620
	addi	%x2, %x2, -40  #2126 pc 28624
	lw	%x1, 36(%x2) #2126 pc 28628
	lw	%x6, 12(%x2)  #2127 pc 28632
	slli	%x7, %x6, 2  #2127 pc 28636
	lw	%x9, 24(%x2)  #2127 pc 28640
	lw	%x7, %x7(%x9)  #2127 pc 28644
	slli	%x9, %x6, 2  #2128 pc 28648
	lw	%x10, 28(%x2)  #2128 pc 28652
	lw	%x9, %x9(%x10)  #2128 pc 28656
	lw	%x22, 4(%x2)  #2125 pc 28660
	mv	%x6, %x7 #pc 28664
	mv	%x7, %x9 #pc 28668
	sw	%x1, 36(%x2)  #2125 pc 28672
	lw	%x23, 0(%x22)  #2125 pc 28676
	addi	%x2, %x2, 40  #2125 pc 28680
	jalr	%x1, %x23, 0  #2125 pc 28684
	addi	%x2, %x2, -40  #2125 pc 28688
	lw	%x1, 36(%x2)  #2125 pc 28692
	lw	%x5, 12(%x2)  #2129 pc 28696
	slli	%x5, %x5, 2  #2129 pc 28700
	lw	%x6, 32(%x2)  #2129 pc 28704
	lw	%x6, %x5(%x6)  #2129 pc 28708
	lw	%x5, 0(%x2)  #2129 pc 28712
	lw	%x7, 8(%x2)  #2129 pc 28716
	j	vecaccumv.2678  #2129 pc 28720
	nop #pc 28724
calc_diffuse_using_5points.2988:  #pc 28724
	lw	%x11, 8(%x22)  #0 pc 28728
	lw	%x12, 4(%x22)  #0 pc 28732
	slli	%x13, %x5, 2  #2138 pc 28736
	lw	%x6, %x13(%x6)  #2138 pc 28740
	sw	%x11, 0(%x2)  #2138 pc 28744
	sw	%x12, 4(%x2)  #2138 pc 28748
	sw	%x10, 8(%x2)  #2138 pc 28752
	sw	%x9, 12(%x2)  #2138 pc 28756
	sw	%x7, 16(%x2)  #2138 pc 28760
	sw	%x5, 20(%x2)  #2138 pc 28764
	mv	%x5, %x6 #pc 28768
	sw	%x1, 28(%x2)  #2138 pc 28772
	addi	%x2, %x2, 32  #2138 pc 28776
	jal	%x1, p_received_ray_20percent.2734  #2138 pc 28780
	addi	%x2, %x2, -32  #2138 pc 28784
	lw	%x1, 28(%x2) #2138 pc 28788
	lw	%x6, 20(%x2)  #2139 pc 28792
	addi	%x7, %x6, -1  #2139 pc 28796
	slli	%x7, %x7, 2  #2139 pc 28800
	lw	%x9, 16(%x2)  #2139 pc 28804
	lw	%x7, %x7(%x9)  #2139 pc 28808
	sw	%x5, 24(%x2)  #2139 pc 28812
	mv	%x5, %x7 #pc 28816
	sw	%x1, 28(%x2)  #2139 pc 28820
	addi	%x2, %x2, 32  #2139 pc 28824
	jal	%x1, p_received_ray_20percent.2734  #2139 pc 28828
	addi	%x2, %x2, -32  #2139 pc 28832
	lw	%x1, 28(%x2) #2139 pc 28836
	lw	%x6, 20(%x2)  #2140 pc 28840
	slli	%x7, %x6, 2  #2140 pc 28844
	lw	%x9, 16(%x2)  #2140 pc 28848
	lw	%x7, %x7(%x9)  #2140 pc 28852
	sw	%x5, 28(%x2)  #2140 pc 28856
	mv	%x5, %x7 #pc 28860
	sw	%x1, 36(%x2)  #2140 pc 28864
	addi	%x2, %x2, 40  #2140 pc 28868
	jal	%x1, p_received_ray_20percent.2734  #2140 pc 28872
	addi	%x2, %x2, -40  #2140 pc 28876
	lw	%x1, 36(%x2) #2140 pc 28880
	lw	%x6, 20(%x2)  #2141 pc 28884
	addi	%x7, %x6, 1  #2141 pc 28888
	slli	%x7, %x7, 2  #2141 pc 28892
	lw	%x9, 16(%x2)  #2141 pc 28896
	lw	%x7, %x7(%x9)  #2141 pc 28900
	sw	%x5, 32(%x2)  #2141 pc 28904
	mv	%x5, %x7 #pc 28908
	sw	%x1, 36(%x2)  #2141 pc 28912
	addi	%x2, %x2, 40  #2141 pc 28916
	jal	%x1, p_received_ray_20percent.2734  #2141 pc 28920
	addi	%x2, %x2, -40  #2141 pc 28924
	lw	%x1, 36(%x2) #2141 pc 28928
	lw	%x6, 20(%x2)  #2142 pc 28932
	slli	%x7, %x6, 2  #2142 pc 28936
	lw	%x9, 12(%x2)  #2142 pc 28940
	lw	%x7, %x7(%x9)  #2142 pc 28944
	sw	%x5, 36(%x2)  #2142 pc 28948
	mv	%x5, %x7 #pc 28952
	sw	%x1, 44(%x2)  #2142 pc 28956
	addi	%x2, %x2, 48  #2142 pc 28960
	jal	%x1, p_received_ray_20percent.2734  #2142 pc 28964
	addi	%x2, %x2, -48  #2142 pc 28968
	lw	%x1, 44(%x2) #2142 pc 28972
	lw	%x6, 8(%x2)  #2144 pc 28976
	slli	%x7, %x6, 2  #2144 pc 28980
	lw	%x9, 24(%x2)  #2144 pc 28984
	lw	%x7, %x7(%x9)  #2144 pc 28988
	lw	%x9, 4(%x2)  #2144 pc 28992
	sw	%x5, 40(%x2)  #2144 pc 28996
	mv	%x6, %x7 #pc 29000
	mv	%x5, %x9 #pc 29004
	sw	%x1, 44(%x2)  #2144 pc 29008
	addi	%x2, %x2, 48  #2144 pc 29012
	jal	%x1, veccpy.2654  #2144 pc 29016
	addi	%x2, %x2, -48  #2144 pc 29020
	lw	%x1, 44(%x2) #2144 pc 29024
	lw	%x5, 8(%x2)  #2145 pc 29028
	slli	%x6, %x5, 2  #2145 pc 29032
	lw	%x7, 28(%x2)  #2145 pc 29036
	lw	%x6, %x6(%x7)  #2145 pc 29040
	lw	%x7, 4(%x2)  #2145 pc 29044
	mv	%x5, %x7 #pc 29048
	sw	%x1, 44(%x2)  #2145 pc 29052
	addi	%x2, %x2, 48  #2145 pc 29056
	jal	%x1, vecadd.2672  #2145 pc 29060
	addi	%x2, %x2, -48  #2145 pc 29064
	lw	%x1, 44(%x2) #2145 pc 29068
	lw	%x5, 8(%x2)  #2146 pc 29072
	slli	%x6, %x5, 2  #2146 pc 29076
	lw	%x7, 32(%x2)  #2146 pc 29080
	lw	%x6, %x6(%x7)  #2146 pc 29084
	lw	%x7, 4(%x2)  #2146 pc 29088
	mv	%x5, %x7 #pc 29092
	sw	%x1, 44(%x2)  #2146 pc 29096
	addi	%x2, %x2, 48  #2146 pc 29100
	jal	%x1, vecadd.2672  #2146 pc 29104
	addi	%x2, %x2, -48  #2146 pc 29108
	lw	%x1, 44(%x2) #2146 pc 29112
	lw	%x5, 8(%x2)  #2147 pc 29116
	slli	%x6, %x5, 2  #2147 pc 29120
	lw	%x7, 36(%x2)  #2147 pc 29124
	lw	%x6, %x6(%x7)  #2147 pc 29128
	lw	%x7, 4(%x2)  #2147 pc 29132
	mv	%x5, %x7 #pc 29136
	sw	%x1, 44(%x2)  #2147 pc 29140
	addi	%x2, %x2, 48  #2147 pc 29144
	jal	%x1, vecadd.2672  #2147 pc 29148
	addi	%x2, %x2, -48  #2147 pc 29152
	lw	%x1, 44(%x2) #2147 pc 29156
	lw	%x5, 8(%x2)  #2148 pc 29160
	slli	%x6, %x5, 2  #2148 pc 29164
	lw	%x7, 40(%x2)  #2148 pc 29168
	lw	%x6, %x6(%x7)  #2148 pc 29172
	lw	%x7, 4(%x2)  #2148 pc 29176
	mv	%x5, %x7 #pc 29180
	sw	%x1, 44(%x2)  #2148 pc 29184
	addi	%x2, %x2, 48  #2148 pc 29188
	jal	%x1, vecadd.2672  #2148 pc 29192
	addi	%x2, %x2, -48  #2148 pc 29196
	lw	%x1, 44(%x2) #2148 pc 29200
	lw	%x5, 20(%x2)  #2150 pc 29204
	slli	%x5, %x5, 2  #2150 pc 29208
	lw	%x6, 16(%x2)  #2150 pc 29212
	lw	%x5, %x5(%x6)  #2150 pc 29216
	sw	%x1, 44(%x2)  #2150 pc 29220
	addi	%x2, %x2, 48  #2150 pc 29224
	jal	%x1, p_energy.2732  #2150 pc 29228
	addi	%x2, %x2, -48  #2150 pc 29232
	lw	%x1, 44(%x2) #2150 pc 29236
	lw	%x6, 8(%x2)  #2151 pc 29240
	slli	%x6, %x6, 2  #2151 pc 29244
	lw	%x6, %x6(%x5)  #2151 pc 29248
	lw	%x5, 0(%x2)  #2151 pc 29252
	lw	%x7, 4(%x2)  #2151 pc 29256
	j	vecaccumv.2678  #2151 pc 29260
	nop #pc 29264
do_without_neighbors.2994:  #pc 29264
	lw	%x7, 4(%x22)  #0 pc 29268
	addi	%x24, %x0, 4  #pc 29272
	bge	%x24, %x6, 12  #2157 pc 29276
	j	ble_else.9533 #pc 29280
	nop #pc 29284
	sw	%x22, 0(%x2)  #2159 pc 29288
	sw	%x7, 4(%x2)  #2159 pc 29292
	sw	%x5, 8(%x2)  #2159 pc 29296
	sw	%x6, 12(%x2)  #2159 pc 29300
	sw	%x1, 20(%x2)  #2159 pc 29304
	addi	%x2, %x2, 24  #2159 pc 29308
	jal	%x1, p_surface_ids.2728  #2159 pc 29312
	addi	%x2, %x2, -24  #2159 pc 29316
	lw	%x1, 20(%x2) #2159 pc 29320
	lw	%x6, 12(%x2)  #2160 pc 29324
	slli	%x7, %x6, 2  #2160 pc 29328
	lw	%x5, %x7(%x5)  #2160 pc 29332
	bge	%x5, %x0, 12  #2160 pc 29336
	j	bge_else.9534 #pc 29340
	nop #pc 29344
	lw	%x5, 8(%x2)  #2161 pc 29348
	sw	%x1, 20(%x2)  #2161 pc 29352
	addi	%x2, %x2, 24  #2161 pc 29356
	jal	%x1, p_calc_diffuse.2730  #2161 pc 29360
	addi	%x2, %x2, -24  #2161 pc 29364
	lw	%x1, 20(%x2) #2161 pc 29368
	lw	%x6, 12(%x2)  #2162 pc 29372
	slli	%x7, %x6, 2  #2162 pc 29376
	lw	%x5, %x7(%x5)  #2162 pc 29380
	beq	%x5, %x0, 12  #2162 pc 29384
	j	be_else.9535 #pc 29388
	nop #pc 29392
	j	be_cont.9536 #pc 29396
	nop #pc 29400
be_else.9535: #pc 29400
	lw	%x5, 8(%x2)  #2163 pc 29404
	lw	%x22, 4(%x2)  #2163 pc 29408
	sw	%x1, 20(%x2)  #2163 pc 29412
	lw	%x23, 0(%x22)  #2163 pc 29416
	addi	%x2, %x2, 24  #2163 pc 29420
	jalr	%x1, %x23, 0  #2163 pc 29424
	addi	%x2, %x2, -24  #2163 pc 29428
	lw	%x1, 20(%x2)  #2163 pc 29432
be_cont.9536: #pc 29432
	lw	%x5, 12(%x2)  #2165 pc 29436
	addi	%x6, %x5, 1  #2165 pc 29440
	lw	%x5, 8(%x2)  #2165 pc 29444
	lw	%x22, 0(%x2)  #2165 pc 29448
	lw	0(%x23), %x22  #2165 pc 29452
	jalr	%x0, %x23, 0  #2165 pc 29456
	nop #pc 29460
bge_else.9534: #pc 29460
	ret #pc 29464
	nop #pc 29468
ble_else.9533: #pc 29468
	ret #pc 29472
	nop #pc 29476
neighbors_exist.2997:  #pc 29476
	lw	%x7, 4(%x22)  #0 pc 29480
	lw	%x9, 4(%x7)  #2172 pc 29484
	addi	%x10, %x6, 1  #2172 pc 29488
	bge	%x10, %x9, 12  #2172 pc 29492
	j	ble_else.9539 #pc 29496
	nop #pc 29500
	addi	%x5, %x0, 0  #0 pc 29504
	ret #pc 29508
	nop #pc 29512
ble_else.9539: #pc 29512
	bge	%x0, %x6, 12  #2173 pc 29516
	j	ble_else.9540 #pc 29520
	nop #pc 29524
	addi	%x5, %x0, 0  #0 pc 29528
	ret #pc 29532
	nop #pc 29536
ble_else.9540: #pc 29536
	lw	%x6, 0(%x7)  #2174 pc 29540
	addi	%x7, %x5, 1  #2174 pc 29544
	bge	%x7, %x6, 12  #2174 pc 29548
	j	ble_else.9541 #pc 29552
	nop #pc 29556
	addi	%x5, %x0, 0  #0 pc 29560
	ret #pc 29564
	nop #pc 29568
ble_else.9541: #pc 29568
	bge	%x0, %x5, 12  #2175 pc 29572
	j	ble_else.9542 #pc 29576
	nop #pc 29580
	addi	%x5, %x0, 0  #0 pc 29584
	ret #pc 29588
	nop #pc 29592
ble_else.9542: #pc 29592
	addi	%x5, %x0, 1  #0 pc 29596
	ret #pc 29600
	nop #pc 29604
get_surface_id.3001:  #pc 29604
	sw	%x6, 0(%x2)  #2184 pc 29608
	sw	%x1, 4(%x2)  #2184 pc 29612
	addi	%x2, %x2, 8  #2184 pc 29616
	jal	%x1, p_surface_ids.2728  #2184 pc 29620
	addi	%x2, %x2, -8  #2184 pc 29624
	lw	%x1, 4(%x2) #2184 pc 29628
	lw	%x6, 0(%x2)  #2185 pc 29632
	slli	%x6, %x6, 2  #2185 pc 29636
	lw	%x5, %x6(%x5)  #2185 pc 29640
	ret #pc 29644
	nop #pc 29648
neighbors_are_available.3004:  #pc 29648
	slli	%x11, %x5, 2  #2191 pc 29652
	lw	%x11, %x11(%x7)  #2191 pc 29656
	sw	%x7, 0(%x2)  #2191 pc 29660
	sw	%x9, 4(%x2)  #2191 pc 29664
	sw	%x10, 8(%x2)  #2191 pc 29668
	sw	%x6, 12(%x2)  #2191 pc 29672
	sw	%x5, 16(%x2)  #2191 pc 29676
	mv	%x6, %x10 #pc 29680
	mv	%x5, %x11 #pc 29684
	sw	%x1, 20(%x2)  #2191 pc 29688
	addi	%x2, %x2, 24  #2191 pc 29692
	jal	%x1, get_surface_id.3001  #2191 pc 29696
	addi	%x2, %x2, -24  #2191 pc 29700
	lw	%x1, 20(%x2) #2191 pc 29704
	lw	%x6, 16(%x2)  #2193 pc 29708
	slli	%x7, %x6, 2  #2193 pc 29712
	lw	%x9, 12(%x2)  #2193 pc 29716
	lw	%x7, %x7(%x9)  #2193 pc 29720
	lw	%x9, 8(%x2)  #2193 pc 29724
	sw	%x5, 20(%x2)  #2193 pc 29728
	mv	%x6, %x9 #pc 29732
	mv	%x5, %x7 #pc 29736
	sw	%x1, 28(%x2)  #2193 pc 29740
	addi	%x2, %x2, 32  #2193 pc 29744
	jal	%x1, get_surface_id.3001  #2193 pc 29748
	addi	%x2, %x2, -32  #2193 pc 29752
	lw	%x1, 28(%x2) #2193 pc 29756
	lw	%x6, 20(%x2)  #2193 pc 29760
	beq	%x5, %x6, 12  #2193 pc 29764
	j	be_else.9543 #pc 29768
	nop #pc 29772
	lw	%x5, 16(%x2)  #2194 pc 29776
	slli	%x7, %x5, 2  #2194 pc 29780
	lw	%x9, 4(%x2)  #2194 pc 29784
	lw	%x7, %x7(%x9)  #2194 pc 29788
	lw	%x9, 8(%x2)  #2194 pc 29792
	mv	%x6, %x9 #pc 29796
	mv	%x5, %x7 #pc 29800
	sw	%x1, 28(%x2)  #2194 pc 29804
	addi	%x2, %x2, 32  #2194 pc 29808
	jal	%x1, get_surface_id.3001  #2194 pc 29812
	addi	%x2, %x2, -32  #2194 pc 29816
	lw	%x1, 28(%x2) #2194 pc 29820
	lw	%x6, 20(%x2)  #2194 pc 29824
	beq	%x5, %x6, 12  #2194 pc 29828
	j	be_else.9544 #pc 29832
	nop #pc 29836
	lw	%x5, 16(%x2)  #2195 pc 29840
	addi	%x7, %x5, -1  #2195 pc 29844
	slli	%x7, %x7, 2  #2195 pc 29848
	lw	%x9, 0(%x2)  #2195 pc 29852
	lw	%x7, %x7(%x9)  #2195 pc 29856
	lw	%x10, 8(%x2)  #2195 pc 29860
	mv	%x6, %x10 #pc 29864
	mv	%x5, %x7 #pc 29868
	sw	%x1, 28(%x2)  #2195 pc 29872
	addi	%x2, %x2, 32  #2195 pc 29876
	jal	%x1, get_surface_id.3001  #2195 pc 29880
	addi	%x2, %x2, -32  #2195 pc 29884
	lw	%x1, 28(%x2) #2195 pc 29888
	lw	%x6, 20(%x2)  #2195 pc 29892
	beq	%x5, %x6, 12  #2195 pc 29896
	j	be_else.9545 #pc 29900
	nop #pc 29904
	lw	%x5, 16(%x2)  #2196 pc 29908
	addi	%x5, %x5, 1  #2196 pc 29912
	slli	%x5, %x5, 2  #2196 pc 29916
	lw	%x7, 0(%x2)  #2196 pc 29920
	lw	%x5, %x5(%x7)  #2196 pc 29924
	lw	%x7, 8(%x2)  #2196 pc 29928
	mv	%x6, %x7 #pc 29932
	sw	%x1, 28(%x2)  #2196 pc 29936
	addi	%x2, %x2, 32  #2196 pc 29940
	jal	%x1, get_surface_id.3001  #2196 pc 29944
	addi	%x2, %x2, -32  #2196 pc 29948
	lw	%x1, 28(%x2) #2196 pc 29952
	lw	%x6, 20(%x2)  #2196 pc 29956
	beq	%x5, %x6, 12  #2196 pc 29960
	j	be_else.9546 #pc 29964
	nop #pc 29968
	addi	%x5, %x0, 1  #0 pc 29972
	ret #pc 29976
	nop #pc 29980
be_else.9546: #pc 29980
	addi	%x5, %x0, 0  #0 pc 29984
	ret #pc 29988
	nop #pc 29992
be_else.9545: #pc 29992
	addi	%x5, %x0, 0  #0 pc 29996
	ret #pc 30000
	nop #pc 30004
be_else.9544: #pc 30004
	addi	%x5, %x0, 0  #0 pc 30008
	ret #pc 30012
	nop #pc 30016
be_else.9543: #pc 30016
	addi	%x5, %x0, 0  #0 pc 30020
	ret #pc 30024
	nop #pc 30028
try_exploit_neighbors.3010:  #pc 30028
	lw	%x12, 8(%x22)  #2209 pc 30032
	lw	%x13, 4(%x22)  #2209 pc 30036
	slli	%x14, %x5, 2  #2209 pc 30040
	lw	%x14, %x14(%x9)  #2209 pc 30044
	addi	%x24, %x0, 4  #pc 30048
	bge	%x24, %x11, 12  #2210 pc 30052
	j	ble_else.9547 #pc 30056
	nop #pc 30060
	sw	%x6, 0(%x2)  #2213 pc 30064
	sw	%x22, 4(%x2)  #2213 pc 30068
	sw	%x13, 8(%x2)  #2213 pc 30072
	sw	%x14, 12(%x2)  #2213 pc 30076
	sw	%x12, 16(%x2)  #2213 pc 30080
	sw	%x11, 20(%x2)  #2213 pc 30084
	sw	%x10, 24(%x2)  #2213 pc 30088
	sw	%x9, 28(%x2)  #2213 pc 30092
	sw	%x7, 32(%x2)  #2213 pc 30096
	sw	%x5, 36(%x2)  #2213 pc 30100
	mv	%x6, %x11 #pc 30104
	mv	%x5, %x14 #pc 30108
	sw	%x1, 44(%x2)  #2213 pc 30112
	addi	%x2, %x2, 48  #2213 pc 30116
	jal	%x1, get_surface_id.3001  #2213 pc 30120
	addi	%x2, %x2, -48  #2213 pc 30124
	lw	%x1, 44(%x2) #2213 pc 30128
	bge	%x5, %x0, 12  #2213 pc 30132
	j	bge_else.9548 #pc 30136
	nop #pc 30140
	lw	%x5, 36(%x2)  #2215 pc 30144
	lw	%x6, 32(%x2)  #2215 pc 30148
	lw	%x7, 28(%x2)  #2215 pc 30152
	lw	%x9, 24(%x2)  #2215 pc 30156
	lw	%x10, 20(%x2)  #2215 pc 30160
	sw	%x1, 44(%x2)  #2215 pc 30164
	addi	%x2, %x2, 48  #2215 pc 30168
	jal	%x1, neighbors_are_available.3004  #2215 pc 30172
	addi	%x2, %x2, -48  #2215 pc 30176
	lw	%x1, 44(%x2) #2215 pc 30180
	beq	%x5, %x0, 12  #2215 pc 30184
	j	be_else.9549 #pc 30188
	nop #pc 30192
	lw	%x5, 36(%x2)  #2227 pc 30196
	slli	%x5, %x5, 2  #2227 pc 30200
	lw	%x6, 28(%x2)  #2227 pc 30204
	lw	%x5, %x5(%x6)  #2227 pc 30208
	lw	%x6, 20(%x2)  #2227 pc 30212
	lw	%x22, 16(%x2)  #2227 pc 30216
	lw	0(%x23), %x22  #2227 pc 30220
	jalr	%x0, %x23, 0  #2227 pc 30224
	nop #pc 30228
be_else.9549: #pc 30228
	lw	%x5, 12(%x2)  #2218 pc 30232
	sw	%x1, 44(%x2)  #2218 pc 30236
	addi	%x2, %x2, 48  #2218 pc 30240
	jal	%x1, p_calc_diffuse.2730  #2218 pc 30244
	addi	%x2, %x2, -48  #2218 pc 30248
	lw	%x1, 44(%x2) #2218 pc 30252
	lw	%x10, 20(%x2)  #2219 pc 30256
	slli	%x6, %x10, 2  #2219 pc 30260
	lw	%x5, %x6(%x5)  #2219 pc 30264
	beq	%x5, %x0, 12  #2219 pc 30268
	j	be_else.9550 #pc 30272
	nop #pc 30276
	j	be_cont.9551 #pc 30280
	nop #pc 30284
be_else.9550: #pc 30284
	lw	%x5, 36(%x2)  #2220 pc 30288
	lw	%x6, 32(%x2)  #2220 pc 30292
	lw	%x7, 28(%x2)  #2220 pc 30296
	lw	%x9, 24(%x2)  #2220 pc 30300
	lw	%x22, 8(%x2)  #2220 pc 30304
	sw	%x1, 44(%x2)  #2220 pc 30308
	lw	%x23, 0(%x22)  #2220 pc 30312
	addi	%x2, %x2, 48  #2220 pc 30316
	jalr	%x1, %x23, 0  #2220 pc 30320
	addi	%x2, %x2, -48  #2220 pc 30324
	lw	%x1, 44(%x2)  #2220 pc 30328
be_cont.9551: #pc 30328
	lw	%x5, 20(%x2)  #2224 pc 30332
	addi	%x11, %x5, 1  #2224 pc 30336
	lw	%x5, 36(%x2)  #2224 pc 30340
	lw	%x6, 0(%x2)  #2224 pc 30344
	lw	%x7, 32(%x2)  #2224 pc 30348
	lw	%x9, 28(%x2)  #2224 pc 30352
	lw	%x10, 24(%x2)  #2224 pc 30356
	lw	%x22, 4(%x2)  #2224 pc 30360
	lw	0(%x23), %x22  #2224 pc 30364
	jalr	%x0, %x23, 0  #2224 pc 30368
	nop #pc 30372
bge_else.9548: #pc 30372
	ret #pc 30376
	nop #pc 30380
ble_else.9547: #pc 30380
	ret #pc 30384
	nop #pc 30388
write_ppm_header.3017:  #pc 30388
	lw	%x6, 4(%x22)  #0 pc 30392
	addi	%x7, %x0, 80  #0 pc 30396
	sw	%x6, 0(%x2)  #2237 pc 30400
	sw	%x5, 4(%x2)  #2237 pc 30404
	mv	%x5, %x7 #pc 30408
	sw	%x1, 12(%x2)  #2237 pc 30412
	addi	%x2, %x2, 16  #2237 pc 30416
	jal	%x1, print_char.2573  #2237 pc 30420
	addi	%x2, %x2, -16  #2237 pc 30424
	lw	%x1, 12(%x2) #2237 pc 30428
	lw	%x5, 4(%x2)  #2238 pc 30432
	addi	%x5, %x5, 48  #2238 pc 30436
	sw	%x1, 12(%x2)  #2238 pc 30440
	addi	%x2, %x2, 16  #2238 pc 30444
	jal	%x1, print_char.2573  #2238 pc 30448
	addi	%x2, %x2, -16  #2238 pc 30452
	lw	%x1, 12(%x2) #2238 pc 30456
	addi	%x5, %x0, 10  #0 pc 30460
	sw	%x1, 12(%x2)  #2239 pc 30464
	addi	%x2, %x2, 16  #2239 pc 30468
	jal	%x1, print_char.2573  #2239 pc 30472
	addi	%x2, %x2, -16  #2239 pc 30476
	lw	%x1, 12(%x2) #2239 pc 30480
	lw	%x5, 0(%x2)  #2240 pc 30484
	lw	%x6, 0(%x5)  #2240 pc 30488
	mv	%x5, %x6 #pc 30492
	sw	%x1, 12(%x2)  #2240 pc 30496
	addi	%x2, %x2, 16  #2240 pc 30500
	jal	%x1, print_int.2575  #2240 pc 30504
	addi	%x2, %x2, -16  #2240 pc 30508
	lw	%x1, 12(%x2) #2240 pc 30512
	addi	%x5, %x0, 32  #0 pc 30516
	sw	%x1, 12(%x2)  #2241 pc 30520
	addi	%x2, %x2, 16  #2241 pc 30524
	jal	%x1, print_char.2573  #2241 pc 30528
	addi	%x2, %x2, -16  #2241 pc 30532
	lw	%x1, 12(%x2) #2241 pc 30536
	lw	%x5, 0(%x2)  #2242 pc 30540
	lw	%x5, 4(%x5)  #2242 pc 30544
	sw	%x1, 12(%x2)  #2242 pc 30548
	addi	%x2, %x2, 16  #2242 pc 30552
	jal	%x1, print_int.2575  #2242 pc 30556
	addi	%x2, %x2, -16  #2242 pc 30560
	lw	%x1, 12(%x2) #2242 pc 30564
	addi	%x5, %x0, 32  #0 pc 30568
	sw	%x1, 12(%x2)  #2243 pc 30572
	addi	%x2, %x2, 16  #2243 pc 30576
	jal	%x1, print_char.2573  #2243 pc 30580
	addi	%x2, %x2, -16  #2243 pc 30584
	lw	%x1, 12(%x2) #2243 pc 30588
	addi	%x5, %x0, 255  #0 pc 30592
	sw	%x1, 12(%x2)  #2244 pc 30596
	addi	%x2, %x2, 16  #2244 pc 30600
	jal	%x1, print_int.2575  #2244 pc 30604
	addi	%x2, %x2, -16  #2244 pc 30608
	lw	%x1, 12(%x2) #2244 pc 30612
	addi	%x5, %x0, 10  #0 pc 30616
	j	print_char.2573  #2245 pc 30620
	nop #pc 30624
write_rgb_element_int.3019:  #pc 30624
	sw	%x1, 4(%x2)  #2250 pc 30628
	addi	%x2, %x2, 8  #2250 pc 30632
	jal	%x1, int_of_float.2555  #2250 pc 30636
	addi	%x2, %x2, -8  #2250 pc 30640
	lw	%x1, 4(%x2) #2250 pc 30644
	addi	%x24, %x0, 255  #pc 30648
	bge	%x24, %x5, 12  #2251 pc 30652
	j	ble_else.9554 #pc 30656
	nop #pc 30660
	bge	%x5, %x0, 12  #2251 pc 30664
	j	bge_else.9556 #pc 30668
	nop #pc 30672
	j	bge_cont.9557 #pc 30676
	nop #pc 30680
bge_else.9556: #pc 30680
	addi	%x5, %x0, 0  #0 pc 30684
bge_cont.9557: #pc 30684
	j	ble_cont.9555 #pc 30688
	nop #pc 30692
ble_else.9554: #pc 30692
	addi	%x5, %x0, 255  #0 pc 30696
ble_cont.9555: #pc 30696
	j	print_int.2575  #2252 pc 30700
	nop #pc 30704
write_rgb_element_char.3021:  #pc 30704
	sw	%x1, 4(%x2)  #2256 pc 30708
	addi	%x2, %x2, 8  #2256 pc 30712
	jal	%x1, int_of_float.2555  #2256 pc 30716
	addi	%x2, %x2, -8  #2256 pc 30720
	lw	%x1, 4(%x2) #2256 pc 30724
	addi	%x24, %x0, 255  #pc 30728
	bge	%x24, %x5, 12  #2257 pc 30732
	j	ble_else.9558 #pc 30736
	nop #pc 30740
	bge	%x5, %x0, 12  #2257 pc 30744
	j	bge_else.9560 #pc 30748
	nop #pc 30752
	j	bge_cont.9561 #pc 30756
	nop #pc 30760
bge_else.9560: #pc 30760
	addi	%x5, %x0, 0  #0 pc 30764
bge_cont.9561: #pc 30764
	j	ble_cont.9559 #pc 30768
	nop #pc 30772
ble_else.9558: #pc 30772
	addi	%x5, %x0, 255  #0 pc 30776
ble_cont.9559: #pc 30776
	j	print_char.2573  #2258 pc 30780
	nop #pc 30784
write_rgb.3023:  #pc 30784
	lw	%x6, 4(%x22)  #0 pc 30788
	addi	%x24, %x0, 3  #pc 30792
	beq	%x5, %x24, 12  #2262 pc 30796
	j	be_else.9562 #pc 30800
	nop #pc 30804
	flw	%f0, 0(%x6)  #2263 pc 30808
	sw	%x6, 0(%x2)  #2263 pc 30812
	sw	%x1, 4(%x2)  #2263 pc 30816
	addi	%x2, %x2, 8  #2263 pc 30820
	jal	%x1, write_rgb_element_int.3019  #2263 pc 30824
	addi	%x2, %x2, -8  #2263 pc 30828
	lw	%x1, 4(%x2) #2263 pc 30832
	addi	%x5, %x0, 32  #0 pc 30836
	sw	%x1, 4(%x2)  #2264 pc 30840
	addi	%x2, %x2, 8  #2264 pc 30844
	jal	%x1, print_char.2573  #2264 pc 30848
	addi	%x2, %x2, -8  #2264 pc 30852
	lw	%x1, 4(%x2) #2264 pc 30856
	lw	%x5, 0(%x2)  #2265 pc 30860
	flw	%f0, 8(%x5)  #2265 pc 30864
	sw	%x1, 4(%x2)  #2265 pc 30868
	addi	%x2, %x2, 8  #2265 pc 30872
	jal	%x1, write_rgb_element_int.3019  #2265 pc 30876
	addi	%x2, %x2, -8  #2265 pc 30880
	lw	%x1, 4(%x2) #2265 pc 30884
	addi	%x5, %x0, 32  #0 pc 30888
	sw	%x1, 4(%x2)  #2266 pc 30892
	addi	%x2, %x2, 8  #2266 pc 30896
	jal	%x1, print_char.2573  #2266 pc 30900
	addi	%x2, %x2, -8  #2266 pc 30904
	lw	%x1, 4(%x2) #2266 pc 30908
	lw	%x5, 0(%x2)  #2267 pc 30912
	flw	%f0, 16(%x5)  #2267 pc 30916
	sw	%x1, 4(%x2)  #2267 pc 30920
	addi	%x2, %x2, 8  #2267 pc 30924
	jal	%x1, write_rgb_element_int.3019  #2267 pc 30928
	addi	%x2, %x2, -8  #2267 pc 30932
	lw	%x1, 4(%x2) #2267 pc 30936
	addi	%x5, %x0, 10  #0 pc 30940
	j	print_char.2573  #2268 pc 30944
	nop #pc 30948
be_else.9562: #pc 30948
	flw	%f0, 0(%x6)  #2270 pc 30952
	sw	%x6, 0(%x2)  #2270 pc 30956
	sw	%x1, 4(%x2)  #2270 pc 30960
	addi	%x2, %x2, 8  #2270 pc 30964
	jal	%x1, write_rgb_element_char.3021  #2270 pc 30968
	addi	%x2, %x2, -8  #2270 pc 30972
	lw	%x1, 4(%x2) #2270 pc 30976
	lw	%x5, 0(%x2)  #2271 pc 30980
	flw	%f0, 8(%x5)  #2271 pc 30984
	sw	%x1, 4(%x2)  #2271 pc 30988
	addi	%x2, %x2, 8  #2271 pc 30992
	jal	%x1, write_rgb_element_char.3021  #2271 pc 30996
	addi	%x2, %x2, -8  #2271 pc 31000
	lw	%x1, 4(%x2) #2271 pc 31004
	lw	%x5, 0(%x2)  #2272 pc 31008
	flw	%f0, 16(%x5)  #2272 pc 31012
	j	write_rgb_element_char.3021  #2272 pc 31016
	nop #pc 31020
pretrace_diffuse_rays.3025:  #pc 31020
	lw	%x7, 12(%x22)  #0 pc 31024
	lw	%x9, 8(%x22)  #0 pc 31028
	lw	%x10, 4(%x22)  #0 pc 31032
	addi	%x24, %x0, 4  #pc 31036
	bge	%x24, %x6, 12  #2285 pc 31040
	j	ble_else.9563 #pc 31044
	nop #pc 31048
	sw	%x22, 0(%x2)  #2288 pc 31052
	sw	%x7, 4(%x2)  #2288 pc 31056
	sw	%x9, 8(%x2)  #2288 pc 31060
	sw	%x10, 12(%x2)  #2288 pc 31064
	sw	%x6, 16(%x2)  #2288 pc 31068
	sw	%x5, 20(%x2)  #2288 pc 31072
	sw	%x1, 28(%x2)  #2288 pc 31076
	addi	%x2, %x2, 32  #2288 pc 31080
	jal	%x1, get_surface_id.3001  #2288 pc 31084
	addi	%x2, %x2, -32  #2288 pc 31088
	lw	%x1, 28(%x2) #2288 pc 31092
	bge	%x5, %x0, 12  #2289 pc 31096
	j	bge_else.9564 #pc 31100
	nop #pc 31104
	lw	%x5, 20(%x2)  #2291 pc 31108
	sw	%x1, 28(%x2)  #2291 pc 31112
	addi	%x2, %x2, 32  #2291 pc 31116
	jal	%x1, p_calc_diffuse.2730  #2291 pc 31120
	addi	%x2, %x2, -32  #2291 pc 31124
	lw	%x1, 28(%x2) #2291 pc 31128
	lw	%x6, 16(%x2)  #2292 pc 31132
	slli	%x7, %x6, 2  #2292 pc 31136
	lw	%x5, %x7(%x5)  #2292 pc 31140
	beq	%x5, %x0, 12  #2292 pc 31144
	j	be_else.9565 #pc 31148
	nop #pc 31152
	j	be_cont.9566 #pc 31156
	nop #pc 31160
be_else.9565: #pc 31160
	lw	%x5, 20(%x2)  #2293 pc 31164
	sw	%x1, 28(%x2)  #2293 pc 31168
	addi	%x2, %x2, 32  #2293 pc 31172
	jal	%x1, p_group_id.2736  #2293 pc 31176
	addi	%x2, %x2, -32  #2293 pc 31180
	lw	%x1, 28(%x2) #2293 pc 31184
	lw	%x6, 12(%x2)  #2294 pc 31188
	sw	%x5, 24(%x2)  #2294 pc 31192
	mv	%x5, %x6 #pc 31196
	sw	%x1, 28(%x2)  #2294 pc 31200
	addi	%x2, %x2, 32  #2294 pc 31204
	jal	%x1, vecbzero.2652  #2294 pc 31208
	addi	%x2, %x2, -32  #2294 pc 31212
	lw	%x1, 28(%x2) #2294 pc 31216
	lw	%x5, 20(%x2)  #2298 pc 31220
	sw	%x1, 28(%x2)  #2298 pc 31224
	addi	%x2, %x2, 32  #2298 pc 31228
	jal	%x1, p_nvectors.2741  #2298 pc 31232
	addi	%x2, %x2, -32  #2298 pc 31236
	lw	%x1, 28(%x2) #2298 pc 31240
	lw	%x6, 20(%x2)  #2299 pc 31244
	sw	%x5, 28(%x2)  #2299 pc 31248
	mv	%x5, %x6 #pc 31252
	sw	%x1, 36(%x2)  #2299 pc 31256
	addi	%x2, %x2, 40  #2299 pc 31260
	jal	%x1, p_intersection_points.2726  #2299 pc 31264
	addi	%x2, %x2, -40  #2299 pc 31268
	lw	%x1, 36(%x2) #2299 pc 31272
	lw	%x6, 24(%x2)  #2301 pc 31276
	slli	%x6, %x6, 2  #2301 pc 31280
	lw	%x7, 8(%x2)  #2301 pc 31284
	lw	%x6, %x6(%x7)  #2301 pc 31288
	lw	%x7, 16(%x2)  #2302 pc 31292
	slli	%x9, %x7, 2  #2302 pc 31296
	lw	%x10, 28(%x2)  #2302 pc 31300
	lw	%x9, %x9(%x10)  #2302 pc 31304
	slli	%x10, %x7, 2  #2303 pc 31308
	lw	%x5, %x10(%x5)  #2303 pc 31312
	lw	%x22, 4(%x2)  #2300 pc 31316
	mv	%x7, %x5 #pc 31320
	mv	%x5, %x6 #pc 31324
	mv	%x6, %x9 #pc 31328
	sw	%x1, 36(%x2)  #2300 pc 31332
	lw	%x23, 0(%x22)  #2300 pc 31336
	addi	%x2, %x2, 40  #2300 pc 31340
	jalr	%x1, %x23, 0  #2300 pc 31344
	addi	%x2, %x2, -40  #2300 pc 31348
	lw	%x1, 36(%x2)  #2300 pc 31352
	lw	%x5, 20(%x2)  #2304 pc 31356
	sw	%x1, 36(%x2)  #2304 pc 31360
	addi	%x2, %x2, 40  #2304 pc 31364
	jal	%x1, p_received_ray_20percent.2734  #2304 pc 31368
	addi	%x2, %x2, -40  #2304 pc 31372
	lw	%x1, 36(%x2) #2304 pc 31376
	lw	%x6, 16(%x2)  #2305 pc 31380
	slli	%x7, %x6, 2  #2305 pc 31384
	lw	%x5, %x7(%x5)  #2305 pc 31388
	lw	%x7, 12(%x2)  #2305 pc 31392
	mv	%x6, %x7 #pc 31396
	sw	%x1, 36(%x2)  #2305 pc 31400
	addi	%x2, %x2, 40  #2305 pc 31404
	jal	%x1, veccpy.2654  #2305 pc 31408
	addi	%x2, %x2, -40  #2305 pc 31412
	lw	%x1, 36(%x2) #2305 pc 31416
be_cont.9566: #pc 31416
	lw	%x5, 16(%x2)  #2307 pc 31420
	addi	%x6, %x5, 1  #2307 pc 31424
	lw	%x5, 20(%x2)  #2307 pc 31428
	lw	%x22, 0(%x2)  #2307 pc 31432
	lw	0(%x23), %x22  #2307 pc 31436
	jalr	%x0, %x23, 0  #2307 pc 31440
	nop #pc 31444
bge_else.9564: #pc 31444
	ret #pc 31448
	nop #pc 31452
ble_else.9563: #pc 31452
	ret #pc 31456
	nop #pc 31460
pretrace_pixels.3028:  #pc 31460
	lw	%x9, 36(%x22)  #0 pc 31464
	lw	%x10, 32(%x22)  #0 pc 31468
	lw	%x11, 28(%x22)  #0 pc 31472
	lw	%x12, 24(%x22)  #0 pc 31476
	lw	%x13, 20(%x22)  #0 pc 31480
	lw	%x14, 16(%x22)  #0 pc 31484
	lw	%x15, 12(%x22)  #0 pc 31488
	lw	%x16, 8(%x22)  #0 pc 31492
	lw	%x17, 4(%x22)  #0 pc 31496
	bge	%x6, %x0, 12  #2315 pc 31500
	j	bge_else.9569 #pc 31504
	nop #pc 31508
	flw	%f6, 0(%x13)  #2317 pc 31512
	lw	%x13, 0(%x17)  #2317 pc 31516
	sub	%x13, %x6, %x13  #2317 pc 31520
	sw	%x22, 0(%x2)  #2317 pc 31524
	sw	%x16, 4(%x2)  #2317 pc 31528
	sw	%x7, 8(%x2)  #2317 pc 31532
	sw	%x10, 12(%x2)  #2317 pc 31536
	sw	%x5, 16(%x2)  #2317 pc 31540
	sw	%x6, 20(%x2)  #2317 pc 31544
	sw	%x9, 24(%x2)  #2317 pc 31548
	sw	%x11, 28(%x2)  #2317 pc 31552
	sw	%x14, 32(%x2)  #2317 pc 31556
	fsw	%f4, 40(%x2)  #2317 pc 31560
	fsw	%f2, 48(%x2)  #2317 pc 31564
	sw	%x15, 56(%x2)  #2317 pc 31568
	fsw	%f0, 64(%x2)  #2317 pc 31572
	sw	%x12, 72(%x2)  #2317 pc 31576
	fsw	%f6, 80(%x2)  #2317 pc 31580
	mv	%x5, %x13 #pc 31584
	sw	%x1, 92(%x2)  #2317 pc 31588
	addi	%x2, %x2, 96  #2317 pc 31592
	jal	%x1, float_of_int.2553  #2317 pc 31596
	addi	%x2, %x2, -96  #2317 pc 31600
	lw	%x1, 92(%x2) #2317 pc 31604
	flw	%f2, 80(%x2)  #2317 pc 31608
	fmul	%f0, %f2, %f0  #2317 pc 31612
	lw	%x5, 72(%x2)  #2318 pc 31616
	flw	%f2, 0(%x5)  #2318 pc 31620
	fmul	%f2, %f0, %f2  #2318 pc 31624
	flw	%f4, 64(%x2)  #2318 pc 31628
	fadd	%f2, %f2, %f4  #2318 pc 31632
	lw	%x6, 56(%x2)  #2318 pc 31636
	fsw	%f2, 0(%x6) #2318 pc 31640
	flw	%f2, 8(%x5)  #2319 pc 31644
	fmul	%f2, %f0, %f2  #2319 pc 31648
	flw	%f6, 48(%x2)  #2319 pc 31652
	fadd	%f2, %f2, %f6  #2319 pc 31656
	fsw	%f2, 8(%x6) #2319 pc 31660
	flw	%f2, 16(%x5)  #2320 pc 31664
	fmul	%f0, %f0, %f2  #2320 pc 31668
	flw	%f2, 40(%x2)  #2320 pc 31672
	fadd	%f0, %f0, %f2  #2320 pc 31676
	fsw	%f0, 16(%x6) #2320 pc 31680
	addi	%x5, %x0, 0  #0 pc 31684
	mv	%x23, %x6 #pc 31688
	mv	%x6, %x5 #pc 31692
	mv	%x5, %x23 #pc 31696
	sw	%x1, 92(%x2)  #2321 pc 31700
	addi	%x2, %x2, 96  #2321 pc 31704
	jal	%x1, vecunit_sgn.2657  #2321 pc 31708
	addi	%x2, %x2, -96  #2321 pc 31712
	lw	%x1, 92(%x2) #2321 pc 31716
	lw	%x5, 32(%x2)  #2322 pc 31720
	sw	%x1, 92(%x2)  #2322 pc 31724
	addi	%x2, %x2, 96  #2322 pc 31728
	jal	%x1, vecbzero.2652  #2322 pc 31732
	addi	%x2, %x2, -96  #2322 pc 31736
	lw	%x1, 92(%x2) #2322 pc 31740
	lw	%x5, 28(%x2)  #2323 pc 31744
	lw	%x6, 24(%x2)  #2323 pc 31748
	sw	%x1, 92(%x2)  #2323 pc 31752
	addi	%x2, %x2, 96  #2323 pc 31756
	jal	%x1, veccpy.2654  #2323 pc 31760
	addi	%x2, %x2, -96  #2323 pc 31764
	lw	%x1, 92(%x2) #2323 pc 31768
	addi	%x5, %x0, 0  #0 pc 31772
	mv	%f0, l.6305  #0 pc 31776
	lw	%x6, 20(%x2)  #2326 pc 31780
	slli	%x7, %x6, 2  #2326 pc 31784
	lw	%x9, 16(%x2)  #2326 pc 31788
	lw	%x7, %x7(%x9)  #2326 pc 31792
	mv	%f2, l.6293  #0 pc 31796
	lw	%x10, 56(%x2)  #2326 pc 31800
	lw	%x22, 12(%x2)  #2326 pc 31804
	mv	%x6, %x10 #pc 31808
	sw	%x1, 92(%x2)  #2326 pc 31812
	lw	%x23, 0(%x22)  #2326 pc 31816
	addi	%x2, %x2, 96  #2326 pc 31820
	jalr	%x1, %x23, 0  #2326 pc 31824
	addi	%x2, %x2, -96  #2326 pc 31828
	lw	%x1, 92(%x2)  #2326 pc 31832
	lw	%x5, 20(%x2)  #2327 pc 31836
	slli	%x6, %x5, 2  #2327 pc 31840
	lw	%x7, 16(%x2)  #2327 pc 31844
	lw	%x6, %x6(%x7)  #2327 pc 31848
	mv	%x5, %x6 #pc 31852
	sw	%x1, 92(%x2)  #2327 pc 31856
	addi	%x2, %x2, 96  #2327 pc 31860
	jal	%x1, p_rgb.2724  #2327 pc 31864
	addi	%x2, %x2, -96  #2327 pc 31868
	lw	%x1, 92(%x2) #2327 pc 31872
	lw	%x6, 32(%x2)  #2327 pc 31876
	sw	%x1, 92(%x2)  #2327 pc 31880
	addi	%x2, %x2, 96  #2327 pc 31884
	jal	%x1, veccpy.2654  #2327 pc 31888
	addi	%x2, %x2, -96  #2327 pc 31892
	lw	%x1, 92(%x2) #2327 pc 31896
	lw	%x5, 20(%x2)  #2328 pc 31900
	slli	%x6, %x5, 2  #2328 pc 31904
	lw	%x7, 16(%x2)  #2328 pc 31908
	lw	%x6, %x6(%x7)  #2328 pc 31912
	lw	%x9, 8(%x2)  #2328 pc 31916
	mv	%x5, %x6 #pc 31920
	mv	%x6, %x9 #pc 31924
	sw	%x1, 92(%x2)  #2328 pc 31928
	addi	%x2, %x2, 96  #2328 pc 31932
	jal	%x1, p_set_group_id.2738  #2328 pc 31936
	addi	%x2, %x2, -96  #2328 pc 31940
	lw	%x1, 92(%x2) #2328 pc 31944
	lw	%x5, 20(%x2)  #2331 pc 31948
	slli	%x6, %x5, 2  #2331 pc 31952
	lw	%x7, 16(%x2)  #2331 pc 31956
	lw	%x6, %x6(%x7)  #2331 pc 31960
	addi	%x9, %x0, 0  #0 pc 31964
	lw	%x22, 4(%x2)  #2331 pc 31968
	mv	%x5, %x6 #pc 31972
	mv	%x6, %x9 #pc 31976
	sw	%x1, 92(%x2)  #2331 pc 31980
	lw	%x23, 0(%x22)  #2331 pc 31984
	addi	%x2, %x2, 96  #2331 pc 31988
	jalr	%x1, %x23, 0  #2331 pc 31992
	addi	%x2, %x2, -96  #2331 pc 31996
	lw	%x1, 92(%x2)  #2331 pc 32000
	lw	%x5, 20(%x2)  #2333 pc 32004
	addi	%x5, %x5, -1  #2333 pc 32008
	addi	%x6, %x0, 1  #0 pc 32012
	lw	%x7, 8(%x2)  #2333 pc 32016
	sw	%x5, 88(%x2)  #2333 pc 32020
	mv	%x5, %x7 #pc 32024
	sw	%x1, 92(%x2)  #2333 pc 32028
	addi	%x2, %x2, 96  #2333 pc 32032
	jal	%x1, add_mod5.2641  #2333 pc 32036
	addi	%x2, %x2, -96  #2333 pc 32040
	lw	%x1, 92(%x2) #2333 pc 32044
	mv	%x7, %x5  #2333 pc 32048
	flw	%f0, 64(%x2)  #2333 pc 32052
	flw	%f2, 48(%x2)  #2333 pc 32056
	flw	%f4, 40(%x2)  #2333 pc 32060
	lw	%x5, 16(%x2)  #2333 pc 32064
	lw	%x6, 88(%x2)  #2333 pc 32068
	lw	%x22, 0(%x2)  #2333 pc 32072
	lw	0(%x23), %x22  #2333 pc 32076
	jalr	%x0, %x23, 0  #2333 pc 32080
	nop #pc 32084
bge_else.9569: #pc 32084
	ret #pc 32088
	nop #pc 32092
pretrace_line.3035:  #pc 32092
	lw	%x9, 24(%x22)  #0 pc 32096
	lw	%x10, 20(%x22)  #0 pc 32100
	lw	%x11, 16(%x22)  #0 pc 32104
	lw	%x12, 12(%x22)  #0 pc 32108
	lw	%x13, 8(%x22)  #0 pc 32112
	lw	%x14, 4(%x22)  #0 pc 32116
	flw	%f0, 0(%x11)  #2340 pc 32120
	lw	%x11, 4(%x14)  #2340 pc 32124
	sub	%x6, %x6, %x11  #2340 pc 32128
	sw	%x7, 0(%x2)  #2340 pc 32132
	sw	%x5, 4(%x2)  #2340 pc 32136
	sw	%x12, 8(%x2)  #2340 pc 32140
	sw	%x13, 12(%x2)  #2340 pc 32144
	sw	%x9, 16(%x2)  #2340 pc 32148
	sw	%x10, 20(%x2)  #2340 pc 32152
	fsw	%f0, 24(%x2)  #2340 pc 32156
	mv	%x5, %x6 #pc 32160
	sw	%x1, 36(%x2)  #2340 pc 32164
	addi	%x2, %x2, 40  #2340 pc 32168
	jal	%x1, float_of_int.2553  #2340 pc 32172
	addi	%x2, %x2, -40  #2340 pc 32176
	lw	%x1, 36(%x2) #2340 pc 32180
	flw	%f2, 24(%x2)  #2340 pc 32184
	fmul	%f0, %f2, %f0  #2340 pc 32188
	lw	%x5, 20(%x2)  #2343 pc 32192
	flw	%f2, 0(%x5)  #2343 pc 32196
	fmul	%f2, %f0, %f2  #2343 pc 32200
	lw	%x6, 16(%x2)  #2343 pc 32204
	flw	%f4, 0(%x6)  #2343 pc 32208
	fadd	%f2, %f2, %f4  #2343 pc 32212
	flw	%f4, 8(%x5)  #2344 pc 32216
	fmul	%f4, %f0, %f4  #2344 pc 32220
	flw	%f6, 8(%x6)  #2344 pc 32224
	fadd	%f4, %f4, %f6  #2344 pc 32228
	flw	%f6, 16(%x5)  #2345 pc 32232
	fmul	%f0, %f0, %f6  #2345 pc 32236
	flw	%f6, 16(%x6)  #2345 pc 32240
	fadd	%f0, %f0, %f6  #2345 pc 32244
	lw	%x5, 12(%x2)  #2346 pc 32248
	lw	%x5, 0(%x5)  #2346 pc 32252
	addi	%x6, %x5, -1  #2346 pc 32256
	lw	%x5, 4(%x2)  #2346 pc 32260
	lw	%x7, 0(%x2)  #2346 pc 32264
	lw	%x22, 8(%x2)  #2346 pc 32268
	mv	%f28, %f4 #pc 32272
	mv	%f29, %f5 #pc 32276
	mv	%f4, %f0 #pc 32280
	mv	%f5, %f1 #pc 32284
	mv	%f0, %f2 #pc 32288
	mv	%f1, %f3 #pc 32292
	mv	%f2, %f28 #pc 32296
	mv	%f3, %f29 #pc 32300
	lw	0(%x23), %x22  #2346 pc 32304
	jalr	%x0, %x23, 0  #2346 pc 32308
	nop #pc 32312
scan_pixel.3039:  #pc 32312
	lw	%x12, 24(%x22)  #0 pc 32316
	lw	%x13, 20(%x22)  #0 pc 32320
	lw	%x14, 16(%x22)  #0 pc 32324
	lw	%x15, 12(%x22)  #0 pc 32328
	lw	%x16, 8(%x22)  #0 pc 32332
	lw	%x17, 4(%x22)  #0 pc 32336
	lw	%x16, 0(%x16)  #2356 pc 32340
	bge	%x5, %x16, 12  #2356 pc 32344
	j	ble_else.9574 #pc 32348
	nop #pc 32352
	ret #pc 32356
	nop #pc 32360
ble_else.9574: #pc 32360
	slli	%x16, %x5, 2  #2359 pc 32364
	lw	%x16, %x16(%x9)  #2359 pc 32368
	sw	%x22, 0(%x2)  #2359 pc 32372
	sw	%x11, 4(%x2)  #2359 pc 32376
	sw	%x12, 8(%x2)  #2359 pc 32380
	sw	%x7, 12(%x2)  #2359 pc 32384
	sw	%x13, 16(%x2)  #2359 pc 32388
	sw	%x17, 20(%x2)  #2359 pc 32392
	sw	%x9, 24(%x2)  #2359 pc 32396
	sw	%x10, 28(%x2)  #2359 pc 32400
	sw	%x6, 32(%x2)  #2359 pc 32404
	sw	%x5, 36(%x2)  #2359 pc 32408
	sw	%x15, 40(%x2)  #2359 pc 32412
	sw	%x14, 44(%x2)  #2359 pc 32416
	mv	%x5, %x16 #pc 32420
	sw	%x1, 52(%x2)  #2359 pc 32424
	addi	%x2, %x2, 56  #2359 pc 32428
	jal	%x1, p_rgb.2724  #2359 pc 32432
	addi	%x2, %x2, -56  #2359 pc 32436
	lw	%x1, 52(%x2) #2359 pc 32440
	mv	%x6, %x5  #2359 pc 32444
	lw	%x5, 44(%x2)  #2359 pc 32448
	sw	%x1, 52(%x2)  #2359 pc 32452
	addi	%x2, %x2, 56  #2359 pc 32456
	jal	%x1, veccpy.2654  #2359 pc 32460
	addi	%x2, %x2, -56  #2359 pc 32464
	lw	%x1, 52(%x2) #2359 pc 32468
	lw	%x5, 36(%x2)  #2362 pc 32472
	lw	%x6, 32(%x2)  #2362 pc 32476
	lw	%x7, 28(%x2)  #2362 pc 32480
	lw	%x22, 40(%x2)  #2362 pc 32484
	sw	%x1, 52(%x2)  #2362 pc 32488
	lw	%x23, 0(%x22)  #2362 pc 32492
	addi	%x2, %x2, 56  #2362 pc 32496
	jalr	%x1, %x23, 0  #2362 pc 32500
	addi	%x2, %x2, -56  #2362 pc 32504
	lw	%x1, 52(%x2)  #2362 pc 32508
	beq	%x5, %x0, 12  #2362 pc 32512
	j	be_else.9576 #pc 32516
	nop #pc 32520
	lw	%x5, 36(%x2)  #2365 pc 32524
	slli	%x6, %x5, 2  #2365 pc 32528
	lw	%x7, 24(%x2)  #2365 pc 32532
	lw	%x6, %x6(%x7)  #2365 pc 32536
	addi	%x9, %x0, 0  #0 pc 32540
	lw	%x22, 20(%x2)  #2365 pc 32544
	mv	%x5, %x6 #pc 32548
	mv	%x6, %x9 #pc 32552
	sw	%x1, 52(%x2)  #2365 pc 32556
	lw	%x23, 0(%x22)  #2365 pc 32560
	addi	%x2, %x2, 56  #2365 pc 32564
	jalr	%x1, %x23, 0  #2365 pc 32568
	addi	%x2, %x2, -56  #2365 pc 32572
	lw	%x1, 52(%x2)  #2365 pc 32576
	j	be_cont.9577 #pc 32580
	nop #pc 32584
be_else.9576: #pc 32584
	addi	%x11, %x0, 0  #0 pc 32588
	lw	%x5, 36(%x2)  #2363 pc 32592
	lw	%x6, 32(%x2)  #2363 pc 32596
	lw	%x7, 12(%x2)  #2363 pc 32600
	lw	%x9, 24(%x2)  #2363 pc 32604
	lw	%x10, 28(%x2)  #2363 pc 32608
	lw	%x22, 16(%x2)  #2363 pc 32612
	sw	%x1, 52(%x2)  #2363 pc 32616
	lw	%x23, 0(%x22)  #2363 pc 32620
	addi	%x2, %x2, 56  #2363 pc 32624
	jalr	%x1, %x23, 0  #2363 pc 32628
	addi	%x2, %x2, -56  #2363 pc 32632
	lw	%x1, 52(%x2)  #2363 pc 32636
be_cont.9577: #pc 32636
	lw	%x5, 4(%x2)  #2368 pc 32640
	lw	%x22, 8(%x2)  #2368 pc 32644
	sw	%x1, 52(%x2)  #2368 pc 32648
	lw	%x23, 0(%x22)  #2368 pc 32652
	addi	%x2, %x2, 56  #2368 pc 32656
	jalr	%x1, %x23, 0  #2368 pc 32660
	addi	%x2, %x2, -56  #2368 pc 32664
	lw	%x1, 52(%x2)  #2368 pc 32668
	lw	%x5, 36(%x2)  #2370 pc 32672
	addi	%x5, %x5, 1  #2370 pc 32676
	lw	%x6, 32(%x2)  #2370 pc 32680
	lw	%x7, 12(%x2)  #2370 pc 32684
	lw	%x9, 24(%x2)  #2370 pc 32688
	lw	%x10, 28(%x2)  #2370 pc 32692
	lw	%x11, 4(%x2)  #2370 pc 32696
	lw	%x22, 0(%x2)  #2370 pc 32700
	lw	0(%x23), %x22  #2370 pc 32704
	jalr	%x0, %x23, 0  #2370 pc 32708
	nop #pc 32712
scan_line.3046:  #pc 32712
	lw	%x12, 12(%x22)  #0 pc 32716
	lw	%x13, 8(%x22)  #0 pc 32720
	lw	%x14, 4(%x22)  #0 pc 32724
	lw	%x15, 4(%x14)  #2377 pc 32728
	bge	%x5, %x15, 12  #2377 pc 32732
	j	ble_else.9578 #pc 32736
	nop #pc 32740
	ret #pc 32744
	nop #pc 32748
ble_else.9578: #pc 32748
	lw	%x14, 4(%x14)  #2379 pc 32752
	addi	%x14, %x14, -1  #2379 pc 32756
	sw	%x22, 0(%x2)  #2379 pc 32760
	sw	%x10, 4(%x2)  #2379 pc 32764
	sw	%x11, 8(%x2)  #2379 pc 32768
	sw	%x9, 12(%x2)  #2379 pc 32772
	sw	%x7, 16(%x2)  #2379 pc 32776
	sw	%x6, 20(%x2)  #2379 pc 32780
	sw	%x5, 24(%x2)  #2379 pc 32784
	sw	%x12, 28(%x2)  #2379 pc 32788
	bge	%x5, %x14, 12  #2379 pc 32792
	j	ble_else.9580 #pc 32796
	nop #pc 32800
	j	ble_cont.9581 #pc 32804
	nop #pc 32808
ble_else.9580: #pc 32808
	addi	%x14, %x5, 1  #2380 pc 32812
	mv	%x7, %x10 #pc 32816
	mv	%x6, %x14 #pc 32820
	mv	%x5, %x9 #pc 32824
	mv	%x22, %x13 #pc 32828
	sw	%x1, 36(%x2)  #2380 pc 32832
	lw	%x23, 0(%x22)  #2380 pc 32836
	addi	%x2, %x2, 40  #2380 pc 32840
	jalr	%x1, %x23, 0  #2380 pc 32844
	addi	%x2, %x2, -40  #2380 pc 32848
	lw	%x1, 36(%x2)  #2380 pc 32852
ble_cont.9581: #pc 32852
	addi	%x5, %x0, 0  #0 pc 32856
	lw	%x6, 24(%x2)  #2382 pc 32860
	lw	%x7, 20(%x2)  #2382 pc 32864
	lw	%x9, 16(%x2)  #2382 pc 32868
	lw	%x10, 12(%x2)  #2382 pc 32872
	lw	%x11, 8(%x2)  #2382 pc 32876
	lw	%x22, 28(%x2)  #2382 pc 32880
	sw	%x1, 36(%x2)  #2382 pc 32884
	lw	%x23, 0(%x22)  #2382 pc 32888
	addi	%x2, %x2, 40  #2382 pc 32892
	jalr	%x1, %x23, 0  #2382 pc 32896
	addi	%x2, %x2, -40  #2382 pc 32900
	lw	%x1, 36(%x2)  #2382 pc 32904
	lw	%x5, 24(%x2)  #2383 pc 32908
	addi	%x5, %x5, 1  #2383 pc 32912
	addi	%x6, %x0, 2  #0 pc 32916
	lw	%x7, 4(%x2)  #2383 pc 32920
	sw	%x5, 32(%x2)  #2383 pc 32924
	mv	%x5, %x7 #pc 32928
	sw	%x1, 36(%x2)  #2383 pc 32932
	addi	%x2, %x2, 40  #2383 pc 32936
	jal	%x1, add_mod5.2641  #2383 pc 32940
	addi	%x2, %x2, -40  #2383 pc 32944
	lw	%x1, 36(%x2) #2383 pc 32948
	mv	%x10, %x5  #2383 pc 32952
	lw	%x5, 32(%x2)  #2383 pc 32956
	lw	%x6, 16(%x2)  #2383 pc 32960
	lw	%x7, 12(%x2)  #2383 pc 32964
	lw	%x9, 20(%x2)  #2383 pc 32968
	lw	%x11, 8(%x2)  #2383 pc 32972
	lw	%x22, 0(%x2)  #2383 pc 32976
	lw	0(%x23), %x22  #2383 pc 32980
	jalr	%x0, %x23, 0  #2383 pc 32984
	nop #pc 32988
create_float5x3array.3053:  #pc 32988
	addi	%x5, %x0, 3  #0 pc 32992
	mv	%f0, l.6293  #0 pc 32996
	sw	%x1, 4(%x2)  #2394 pc 33000
	addi	%x2, %x2, 8  #2394 pc 33004
	jal	%x1, create_float_array.2600  #2394 pc 33008
	addi	%x2, %x2, -8  #2394 pc 33012
	lw	%x1, 4(%x2) #2394 pc 33016
	mv	%x6, %x5  #2394 pc 33020
	addi	%x5, %x0, 5  #0 pc 33024
	sw	%x1, 4(%x2)  #2395 pc 33028
	addi	%x2, %x2, 8  #2395 pc 33032
	jal	%x1, create_array.2593  #2395 pc 33036
	addi	%x2, %x2, -8  #2395 pc 33040
	lw	%x1, 4(%x2) #2395 pc 33044
	addi	%x6, %x0, 3  #0 pc 33048
	mv	%f0, l.6293  #0 pc 33052
	sw	%x5, 0(%x2)  #2396 pc 33056
	mv	%x5, %x6 #pc 33060
	sw	%x1, 4(%x2)  #2396 pc 33064
	addi	%x2, %x2, 8  #2396 pc 33068
	jal	%x1, create_float_array.2600  #2396 pc 33072
	addi	%x2, %x2, -8  #2396 pc 33076
	lw	%x1, 4(%x2) #2396 pc 33080
	lw	%x6, 0(%x2)  #2396 pc 33084
	sw	%x5, 4(%x6)  #2396 pc 33088
	addi	%x5, %x0, 3  #0 pc 33092
	mv	%f0, l.6293  #0 pc 33096
	sw	%x1, 4(%x2)  #2397 pc 33100
	addi	%x2, %x2, 8  #2397 pc 33104
	jal	%x1, create_float_array.2600  #2397 pc 33108
	addi	%x2, %x2, -8  #2397 pc 33112
	lw	%x1, 4(%x2) #2397 pc 33116
	lw	%x6, 0(%x2)  #2397 pc 33120
	sw	%x5, 8(%x6)  #2397 pc 33124
	addi	%x5, %x0, 3  #0 pc 33128
	mv	%f0, l.6293  #0 pc 33132
	sw	%x1, 4(%x2)  #2398 pc 33136
	addi	%x2, %x2, 8  #2398 pc 33140
	jal	%x1, create_float_array.2600  #2398 pc 33144
	addi	%x2, %x2, -8  #2398 pc 33148
	lw	%x1, 4(%x2) #2398 pc 33152
	lw	%x6, 0(%x2)  #2398 pc 33156
	sw	%x5, 12(%x6)  #2398 pc 33160
	addi	%x5, %x0, 3  #0 pc 33164
	mv	%f0, l.6293  #0 pc 33168
	sw	%x1, 4(%x2)  #2399 pc 33172
	addi	%x2, %x2, 8  #2399 pc 33176
	jal	%x1, create_float_array.2600  #2399 pc 33180
	addi	%x2, %x2, -8  #2399 pc 33184
	lw	%x1, 4(%x2) #2399 pc 33188
	lw	%x6, 0(%x2)  #2399 pc 33192
	sw	%x5, 16(%x6)  #2399 pc 33196
	mv	%x5, %x6  #2400 pc 33200
	ret #pc 33204
	nop #pc 33208
create_pixel.3055:  #pc 33208
	addi	%x5, %x0, 3  #0 pc 33212
	mv	%f0, l.6293  #0 pc 33216
	sw	%x1, 4(%x2)  #2406 pc 33220
	addi	%x2, %x2, 8  #2406 pc 33224
	jal	%x1, create_float_array.2600  #2406 pc 33228
	addi	%x2, %x2, -8  #2406 pc 33232
	lw	%x1, 4(%x2) #2406 pc 33236
	sw	%x5, 0(%x2)  #2407 pc 33240
	mv	%x5, %g0 #pc 33244
	sw	%x1, 4(%x2)  #2407 pc 33248
	addi	%x2, %x2, 8  #2407 pc 33252
	jal	%x1, create_float5x3array.3053  #2407 pc 33256
	addi	%x2, %x2, -8  #2407 pc 33260
	lw	%x1, 4(%x2) #2407 pc 33264
	addi	%x6, %x0, 5  #0 pc 33268
	addi	%x7, %x0, 0  #0 pc 33272
	sw	%x5, 4(%x2)  #2408 pc 33276
	mv	%x5, %x6 #pc 33280
	mv	%x6, %x7 #pc 33284
	sw	%x1, 12(%x2)  #2408 pc 33288
	addi	%x2, %x2, 16  #2408 pc 33292
	jal	%x1, create_array.2593  #2408 pc 33296
	addi	%x2, %x2, -16  #2408 pc 33300
	lw	%x1, 12(%x2) #2408 pc 33304
	addi	%x6, %x0, 5  #0 pc 33308
	addi	%x7, %x0, 0  #0 pc 33312
	sw	%x5, 8(%x2)  #2409 pc 33316
	mv	%x5, %x6 #pc 33320
	mv	%x6, %x7 #pc 33324
	sw	%x1, 12(%x2)  #2409 pc 33328
	addi	%x2, %x2, 16  #2409 pc 33332
	jal	%x1, create_array.2593  #2409 pc 33336
	addi	%x2, %x2, -16  #2409 pc 33340
	lw	%x1, 12(%x2) #2409 pc 33344
	sw	%x5, 12(%x2)  #2410 pc 33348
	mv	%x5, %g0 #pc 33352
	sw	%x1, 20(%x2)  #2410 pc 33356
	addi	%x2, %x2, 24  #2410 pc 33360
	jal	%x1, create_float5x3array.3053  #2410 pc 33364
	addi	%x2, %x2, -24  #2410 pc 33368
	lw	%x1, 20(%x2) #2410 pc 33372
	sw	%x5, 16(%x2)  #2411 pc 33376
	mv	%x5, %g0 #pc 33380
	sw	%x1, 20(%x2)  #2411 pc 33384
	addi	%x2, %x2, 24  #2411 pc 33388
	jal	%x1, create_float5x3array.3053  #2411 pc 33392
	addi	%x2, %x2, -24  #2411 pc 33396
	lw	%x1, 20(%x2) #2411 pc 33400
	addi	%x6, %x0, 1  #0 pc 33404
	addi	%x7, %x0, 0  #0 pc 33408
	sw	%x5, 20(%x2)  #2412 pc 33412
	mv	%x5, %x6 #pc 33416
	mv	%x6, %x7 #pc 33420
	sw	%x1, 28(%x2)  #2412 pc 33424
	addi	%x2, %x2, 32  #2412 pc 33428
	jal	%x1, create_array.2593  #2412 pc 33432
	addi	%x2, %x2, -32  #2412 pc 33436
	lw	%x1, 28(%x2) #2412 pc 33440
	sw	%x5, 24(%x2)  #2413 pc 33444
	mv	%x5, %g0 #pc 33448
	sw	%x1, 28(%x2)  #2413 pc 33452
	addi	%x2, %x2, 32  #2413 pc 33456
	jal	%x1, create_float5x3array.3053  #2413 pc 33460
	addi	%x2, %x2, -32  #2413 pc 33464
	lw	%x1, 28(%x2) #2413 pc 33468
	mv	%x6, %x3  #2414 pc 33472
	addi	%x3, %x3, 32  #2414 pc 33476
	sw	%x5, 28(%x6)  #2414 pc 33480
	lw	%x5, 24(%x2)  #2414 pc 33484
	sw	%x5, 24(%x6)  #2414 pc 33488
	lw	%x5, 20(%x2)  #2414 pc 33492
	sw	%x5, 20(%x6)  #2414 pc 33496
	lw	%x5, 16(%x2)  #2414 pc 33500
	sw	%x5, 16(%x6)  #2414 pc 33504
	lw	%x5, 12(%x2)  #2414 pc 33508
	sw	%x5, 12(%x6)  #2414 pc 33512
	lw	%x5, 8(%x2)  #2414 pc 33516
	sw	%x5, 8(%x6)  #2414 pc 33520
	lw	%x5, 4(%x2)  #2414 pc 33524
	sw	%x5, 4(%x6)  #2414 pc 33528
	lw	%x5, 0(%x2)  #2414 pc 33532
	sw	%x5, 0(%x6)  #2414 pc 33536
	mv	%x5, %x6  #2414 pc 33540
	ret #pc 33544
	nop #pc 33548
init_line_elements.3057:  #pc 33548
	bge	%x6, %x0, 12  #2419 pc 33552
	j	bge_else.9582 #pc 33556
	nop #pc 33560
	sw	%x5, 0(%x2)  #2420 pc 33564
	sw	%x6, 4(%x2)  #2420 pc 33568
	mv	%x5, %g0 #pc 33572
	sw	%x1, 12(%x2)  #2420 pc 33576
	addi	%x2, %x2, 16  #2420 pc 33580
	jal	%x1, create_pixel.3055  #2420 pc 33584
	addi	%x2, %x2, -16  #2420 pc 33588
	lw	%x1, 12(%x2) #2420 pc 33592
	lw	%x6, 4(%x2)  #2420 pc 33596
	slli	%x7, %x6, 2  #2420 pc 33600
	lw	%x9, 0(%x2)  #2420 pc 33604
	sw	%x5, %x7(%x9)  #2420 pc 33608
	addi	%x6, %x6, -1  #2421 pc 33612
	mv	%x5, %x9 #pc 33616
	j	init_line_elements.3057  #2421 pc 33620
	nop #pc 33624
bge_else.9582: #pc 33624
	ret #pc 33628
	nop #pc 33632
create_pixelline.3060:  #pc 33632
	lw	%x5, 4(%x22)  #0 pc 33636
	lw	%x6, 0(%x5)  #2428 pc 33640
	sw	%x5, 0(%x2)  #2428 pc 33644
	sw	%x6, 4(%x2)  #2428 pc 33648
	mv	%x5, %g0 #pc 33652
	sw	%x1, 12(%x2)  #2428 pc 33656
	addi	%x2, %x2, 16  #2428 pc 33660
	jal	%x1, create_pixel.3055  #2428 pc 33664
	addi	%x2, %x2, -16  #2428 pc 33668
	lw	%x1, 12(%x2) #2428 pc 33672
	mv	%x6, %x5  #2428 pc 33676
	lw	%x5, 4(%x2)  #2428 pc 33680
	sw	%x1, 12(%x2)  #2428 pc 33684
	addi	%x2, %x2, 16  #2428 pc 33688
	jal	%x1, create_array.2593  #2428 pc 33692
	addi	%x2, %x2, -16  #2428 pc 33696
	lw	%x1, 12(%x2) #2428 pc 33700
	lw	%x6, 0(%x2)  #2429 pc 33704
	lw	%x6, 0(%x6)  #2429 pc 33708
	addi	%x6, %x6, -2  #2429 pc 33712
	j	init_line_elements.3057  #2429 pc 33716
	nop #pc 33720
tan.3062:  #pc 33720
	fsw	%f0, 0(%x2)  #2442 pc 33724
	sw	%x1, 12(%x2)  #2442 pc 33728
	addi	%x2, %x2, 16  #2442 pc 33732
	jal	%x1, sin.2543  #2442 pc 33736
	addi	%x2, %x2, -16  #2442 pc 33740
	lw	%x1, 12(%x2) #2442 pc 33744
	flw	%f2, 0(%x2)  #2442 pc 33748
	fsw	%f0, 8(%x2)  #2442 pc 33752
	mv	%f0, %f2 #pc 33756
	mv	%f1, %f3 #pc 33760
	sw	%x1, 20(%x2)  #2442 pc 33764
	addi	%x2, %x2, 24  #2442 pc 33768
	jal	%x1, cos.2545  #2442 pc 33772
	addi	%x2, %x2, -24  #2442 pc 33776
	lw	%x1, 20(%x2) #2442 pc 33780
	flw	%f2, 8(%x2)  #2442 pc 33784
	fdiv	%f0, %f2, %f0  #2442 pc 33788
	ret #pc 33792
	nop #pc 33796
adjust_position.3064:  #pc 33796
	fmul	%f0, %f0, %f0  #2447 pc 33800
	mv	%f4, l.6871  #0 pc 33804
	fadd	%f0, %f0, %f4  #2447 pc 33808
	fsqrt	%f0, %f0  #2447 pc 33812
	mv	%f4, l.6305  #0 pc 33816
	fdiv	%f4, %f4, %f0  #2448 pc 33820
	fsw	%f0, 0(%x2)  #2449 pc 33824
	fsw	%f2, 8(%x2)  #2449 pc 33828
	mv	%f0, %f4 #pc 33832
	mv	%f1, %f5 #pc 33836
	sw	%x1, 20(%x2)  #2449 pc 33840
	addi	%x2, %x2, 24  #2449 pc 33844
	jal	%x1, atan.2547  #2449 pc 33848
	addi	%x2, %x2, -24  #2449 pc 33852
	lw	%x1, 20(%x2) #2449 pc 33856
	flw	%f2, 8(%x2)  #2450 pc 33860
	fmul	%f0, %f0, %f2  #2450 pc 33864
	sw	%x1, 20(%x2)  #2450 pc 33868
	addi	%x2, %x2, 24  #2450 pc 33872
	jal	%x1, tan.3062  #2450 pc 33876
	addi	%x2, %x2, -24  #2450 pc 33880
	lw	%x1, 20(%x2) #2450 pc 33884
	flw	%f2, 0(%x2)  #2451 pc 33888
	fmul	%f0, %f0, %f2  #2451 pc 33892
	ret #pc 33896
	nop #pc 33900
calc_dirvec.3067:  #pc 33900
	lw	%x9, 4(%x22)  #0 pc 33904
	addi	%x24, %x0, 5  #pc 33908
	bge	%x5, %x24, 12  #2456 pc 33912
	j	bge_else.9583 #pc 33916
	nop #pc 33920
	sw	%x7, 0(%x2)  #2457 pc 33924
	sw	%x9, 4(%x2)  #2457 pc 33928
	sw	%x6, 8(%x2)  #2457 pc 33932
	fsw	%f0, 16(%x2)  #2457 pc 33936
	fsw	%f2, 24(%x2)  #2457 pc 33940
	sw	%x1, 36(%x2)  #2457 pc 33944
	addi	%x2, %x2, 40  #2457 pc 33948
	jal	%x1, fsqr.2536  #2457 pc 33952
	addi	%x2, %x2, -40  #2457 pc 33956
	lw	%x1, 36(%x2) #2457 pc 33960
	flw	%f2, 24(%x2)  #2457 pc 33964
	fsw	%f0, 32(%x2)  #2457 pc 33968
	mv	%f0, %f2 #pc 33972
	mv	%f1, %f3 #pc 33976
	sw	%x1, 44(%x2)  #2457 pc 33980
	addi	%x2, %x2, 48  #2457 pc 33984
	jal	%x1, fsqr.2536  #2457 pc 33988
	addi	%x2, %x2, -48  #2457 pc 33992
	lw	%x1, 44(%x2) #2457 pc 33996
	flw	%f2, 32(%x2)  #2457 pc 34000
	fadd	%f0, %f2, %f0  #2457 pc 34004
	mv	%f2, l.6305  #0 pc 34008
	fadd	%f0, %f0, %f2  #2457 pc 34012
	fsqrt	%f0, %f0  #2457 pc 34016
	flw	%f2, 16(%x2)  #2458 pc 34020
	fdiv	%f2, %f2, %f0  #2458 pc 34024
	flw	%f4, 24(%x2)  #2459 pc 34028
	fdiv	%f4, %f4, %f0  #2459 pc 34032
	mv	%f6, l.6305  #0 pc 34036
	fdiv	%f0, %f6, %f0  #2460 pc 34040
	lw	%x5, 8(%x2)  #2463 pc 34044
	slli	%x5, %x5, 2  #2463 pc 34048
	lw	%x6, 4(%x2)  #2463 pc 34052
	lw	%x5, %x5(%x6)  #2463 pc 34056
	lw	%x6, 0(%x2)  #2464 pc 34060
	slli	%x7, %x6, 2  #2464 pc 34064
	lw	%x7, %x7(%x5)  #2464 pc 34068
	sw	%x5, 40(%x2)  #2464 pc 34072
	fsw	%f0, 48(%x2)  #2464 pc 34076
	fsw	%f4, 56(%x2)  #2464 pc 34080
	fsw	%f2, 64(%x2)  #2464 pc 34084
	mv	%x5, %x7 #pc 34088
	sw	%x1, 76(%x2)  #2464 pc 34092
	addi	%x2, %x2, 80  #2464 pc 34096
	jal	%x1, d_vec.2743  #2464 pc 34100
	addi	%x2, %x2, -80  #2464 pc 34104
	lw	%x1, 76(%x2) #2464 pc 34108
	flw	%f0, 64(%x2)  #2464 pc 34112
	flw	%f2, 56(%x2)  #2464 pc 34116
	flw	%f4, 48(%x2)  #2464 pc 34120
	sw	%x1, 76(%x2)  #2464 pc 34124
	addi	%x2, %x2, 80  #2464 pc 34128
	jal	%x1, vecset.2644  #2464 pc 34132
	addi	%x2, %x2, -80  #2464 pc 34136
	lw	%x1, 76(%x2) #2464 pc 34140
	lw	%x5, 0(%x2)  #2465 pc 34144
	addi	%x6, %x5, 40  #2465 pc 34148
	slli	%x6, %x6, 2  #2465 pc 34152
	lw	%x7, 40(%x2)  #2465 pc 34156
	lw	%x6, %x6(%x7)  #2465 pc 34160
	mv	%x5, %x6 #pc 34164
	sw	%x1, 76(%x2)  #2465 pc 34168
	addi	%x2, %x2, 80  #2465 pc 34172
	jal	%x1, d_vec.2743  #2465 pc 34176
	addi	%x2, %x2, -80  #2465 pc 34180
	lw	%x1, 76(%x2) #2465 pc 34184
	flw	%f0, 56(%x2)  #2465 pc 34188
	sw	%x5, 72(%x2)  #2465 pc 34192
	sw	%x1, 76(%x2)  #2465 pc 34196
	addi	%x2, %x2, 80  #2465 pc 34200
	jal	%x1, fneg.2534  #2465 pc 34204
	addi	%x2, %x2, -80  #2465 pc 34208
	lw	%x1, 76(%x2) #2465 pc 34212
	mv	%f4, %f0  #2465 pc 34216
	mv	%f5, %f1  #2465 pc 34220
	flw	%f0, 64(%x2)  #2465 pc 34224
	flw	%f2, 48(%x2)  #2465 pc 34228
	lw	%x5, 72(%x2)  #2465 pc 34232
	sw	%x1, 76(%x2)  #2465 pc 34236
	addi	%x2, %x2, 80  #2465 pc 34240
	jal	%x1, vecset.2644  #2465 pc 34244
	addi	%x2, %x2, -80  #2465 pc 34248
	lw	%x1, 76(%x2) #2465 pc 34252
	lw	%x5, 0(%x2)  #2466 pc 34256
	addi	%x6, %x5, 80  #2466 pc 34260
	slli	%x6, %x6, 2  #2466 pc 34264
	lw	%x7, 40(%x2)  #2466 pc 34268
	lw	%x6, %x6(%x7)  #2466 pc 34272
	mv	%x5, %x6 #pc 34276
	sw	%x1, 76(%x2)  #2466 pc 34280
	addi	%x2, %x2, 80  #2466 pc 34284
	jal	%x1, d_vec.2743  #2466 pc 34288
	addi	%x2, %x2, -80  #2466 pc 34292
	lw	%x1, 76(%x2) #2466 pc 34296
	flw	%f0, 64(%x2)  #2466 pc 34300
	sw	%x5, 76(%x2)  #2466 pc 34304
	sw	%x1, 84(%x2)  #2466 pc 34308
	addi	%x2, %x2, 88  #2466 pc 34312
	jal	%x1, fneg.2534  #2466 pc 34316
	addi	%x2, %x2, -88  #2466 pc 34320
	lw	%x1, 84(%x2) #2466 pc 34324
	flw	%f2, 56(%x2)  #2466 pc 34328
	fsw	%f0, 80(%x2)  #2466 pc 34332
	mv	%f0, %f2 #pc 34336
	mv	%f1, %f3 #pc 34340
	sw	%x1, 92(%x2)  #2466 pc 34344
	addi	%x2, %x2, 96  #2466 pc 34348
	jal	%x1, fneg.2534  #2466 pc 34352
	addi	%x2, %x2, -96  #2466 pc 34356
	lw	%x1, 92(%x2) #2466 pc 34360
	mv	%f4, %f0  #2466 pc 34364
	mv	%f5, %f1  #2466 pc 34368
	flw	%f0, 48(%x2)  #2466 pc 34372
	flw	%f2, 80(%x2)  #2466 pc 34376
	lw	%x5, 76(%x2)  #2466 pc 34380
	sw	%x1, 92(%x2)  #2466 pc 34384
	addi	%x2, %x2, 96  #2466 pc 34388
	jal	%x1, vecset.2644  #2466 pc 34392
	addi	%x2, %x2, -96  #2466 pc 34396
	lw	%x1, 92(%x2) #2466 pc 34400
	lw	%x5, 0(%x2)  #2467 pc 34404
	addi	%x6, %x5, 1  #2467 pc 34408
	slli	%x6, %x6, 2  #2467 pc 34412
	lw	%x7, 40(%x2)  #2467 pc 34416
	lw	%x6, %x6(%x7)  #2467 pc 34420
	mv	%x5, %x6 #pc 34424
	sw	%x1, 92(%x2)  #2467 pc 34428
	addi	%x2, %x2, 96  #2467 pc 34432
	jal	%x1, d_vec.2743  #2467 pc 34436
	addi	%x2, %x2, -96  #2467 pc 34440
	lw	%x1, 92(%x2) #2467 pc 34444
	flw	%f0, 64(%x2)  #2467 pc 34448
	sw	%x5, 88(%x2)  #2467 pc 34452
	sw	%x1, 92(%x2)  #2467 pc 34456
	addi	%x2, %x2, 96  #2467 pc 34460
	jal	%x1, fneg.2534  #2467 pc 34464
	addi	%x2, %x2, -96  #2467 pc 34468
	lw	%x1, 92(%x2) #2467 pc 34472
	flw	%f2, 56(%x2)  #2467 pc 34476
	fsw	%f0, 96(%x2)  #2467 pc 34480
	mv	%f0, %f2 #pc 34484
	mv	%f1, %f3 #pc 34488
	sw	%x1, 108(%x2)  #2467 pc 34492
	addi	%x2, %x2, 112  #2467 pc 34496
	jal	%x1, fneg.2534  #2467 pc 34500
	addi	%x2, %x2, -112  #2467 pc 34504
	lw	%x1, 108(%x2) #2467 pc 34508
	flw	%f2, 48(%x2)  #2467 pc 34512
	fsw	%f0, 104(%x2)  #2467 pc 34516
	mv	%f0, %f2 #pc 34520
	mv	%f1, %f3 #pc 34524
	sw	%x1, 116(%x2)  #2467 pc 34528
	addi	%x2, %x2, 120  #2467 pc 34532
	jal	%x1, fneg.2534  #2467 pc 34536
	addi	%x2, %x2, -120  #2467 pc 34540
	lw	%x1, 116(%x2) #2467 pc 34544
	mv	%f4, %f0  #2467 pc 34548
	mv	%f5, %f1  #2467 pc 34552
	flw	%f0, 96(%x2)  #2467 pc 34556
	flw	%f2, 104(%x2)  #2467 pc 34560
	lw	%x5, 88(%x2)  #2467 pc 34564
	sw	%x1, 116(%x2)  #2467 pc 34568
	addi	%x2, %x2, 120  #2467 pc 34572
	jal	%x1, vecset.2644  #2467 pc 34576
	addi	%x2, %x2, -120  #2467 pc 34580
	lw	%x1, 116(%x2) #2467 pc 34584
	lw	%x5, 0(%x2)  #2468 pc 34588
	addi	%x6, %x5, 41  #2468 pc 34592
	slli	%x6, %x6, 2  #2468 pc 34596
	lw	%x7, 40(%x2)  #2468 pc 34600
	lw	%x6, %x6(%x7)  #2468 pc 34604
	mv	%x5, %x6 #pc 34608
	sw	%x1, 116(%x2)  #2468 pc 34612
	addi	%x2, %x2, 120  #2468 pc 34616
	jal	%x1, d_vec.2743  #2468 pc 34620
	addi	%x2, %x2, -120  #2468 pc 34624
	lw	%x1, 116(%x2) #2468 pc 34628
	flw	%f0, 64(%x2)  #2468 pc 34632
	sw	%x5, 112(%x2)  #2468 pc 34636
	sw	%x1, 116(%x2)  #2468 pc 34640
	addi	%x2, %x2, 120  #2468 pc 34644
	jal	%x1, fneg.2534  #2468 pc 34648
	addi	%x2, %x2, -120  #2468 pc 34652
	lw	%x1, 116(%x2) #2468 pc 34656
	flw	%f2, 48(%x2)  #2468 pc 34660
	fsw	%f0, 120(%x2)  #2468 pc 34664
	mv	%f0, %f2 #pc 34668
	mv	%f1, %f3 #pc 34672
	sw	%x1, 132(%x2)  #2468 pc 34676
	addi	%x2, %x2, 136  #2468 pc 34680
	jal	%x1, fneg.2534  #2468 pc 34684
	addi	%x2, %x2, -136  #2468 pc 34688
	lw	%x1, 132(%x2) #2468 pc 34692
	mv	%f2, %f0  #2468 pc 34696
	mv	%f3, %f1  #2468 pc 34700
	flw	%f0, 120(%x2)  #2468 pc 34704
	flw	%f4, 56(%x2)  #2468 pc 34708
	lw	%x5, 112(%x2)  #2468 pc 34712
	sw	%x1, 132(%x2)  #2468 pc 34716
	addi	%x2, %x2, 136  #2468 pc 34720
	jal	%x1, vecset.2644  #2468 pc 34724
	addi	%x2, %x2, -136  #2468 pc 34728
	lw	%x1, 132(%x2) #2468 pc 34732
	lw	%x5, 0(%x2)  #2469 pc 34736
	addi	%x5, %x5, 81  #2469 pc 34740
	slli	%x5, %x5, 2  #2469 pc 34744
	lw	%x6, 40(%x2)  #2469 pc 34748
	lw	%x5, %x5(%x6)  #2469 pc 34752
	sw	%x1, 132(%x2)  #2469 pc 34756
	addi	%x2, %x2, 136  #2469 pc 34760
	jal	%x1, d_vec.2743  #2469 pc 34764
	addi	%x2, %x2, -136  #2469 pc 34768
	lw	%x1, 132(%x2) #2469 pc 34772
	flw	%f0, 48(%x2)  #2469 pc 34776
	sw	%x5, 128(%x2)  #2469 pc 34780
	sw	%x1, 132(%x2)  #2469 pc 34784
	addi	%x2, %x2, 136  #2469 pc 34788
	jal	%x1, fneg.2534  #2469 pc 34792
	addi	%x2, %x2, -136  #2469 pc 34796
	lw	%x1, 132(%x2) #2469 pc 34800
	flw	%f2, 64(%x2)  #2469 pc 34804
	flw	%f4, 56(%x2)  #2469 pc 34808
	lw	%x5, 128(%x2)  #2469 pc 34812
	j	vecset.2644  #2469 pc 34816
	nop #pc 34820
bge_else.9583: #pc 34820
	fsw	%f4, 136(%x2)  #2471 pc 34824
	sw	%x7, 0(%x2)  #2471 pc 34828
	sw	%x6, 8(%x2)  #2471 pc 34832
	sw	%x22, 144(%x2)  #2471 pc 34836
	fsw	%f6, 152(%x2)  #2471 pc 34840
	sw	%x5, 160(%x2)  #2471 pc 34844
	mv	%f0, %f2 #pc 34848
	mv	%f1, %f3 #pc 34852
	mv	%f2, %f4 #pc 34856
	mv	%f3, %f5 #pc 34860
	sw	%x1, 164(%x2)  #2471 pc 34864
	addi	%x2, %x2, 168  #2471 pc 34868
	jal	%x1, adjust_position.3064  #2471 pc 34872
	addi	%x2, %x2, -168  #2471 pc 34876
	lw	%x1, 164(%x2) #2471 pc 34880
	lw	%x5, 160(%x2)  #2472 pc 34884
	addi	%x5, %x5, 1  #2472 pc 34888
	flw	%f2, 152(%x2)  #2472 pc 34892
	fsw	%f0, 168(%x2)  #2472 pc 34896
	sw	%x5, 176(%x2)  #2472 pc 34900
	sw	%x1, 180(%x2)  #2472 pc 34904
	addi	%x2, %x2, 184  #2472 pc 34908
	jal	%x1, adjust_position.3064  #2472 pc 34912
	addi	%x2, %x2, -184  #2472 pc 34916
	lw	%x1, 180(%x2) #2472 pc 34920
	mv	%f2, %f0  #2472 pc 34924
	mv	%f3, %f1  #2472 pc 34928
	flw	%f0, 168(%x2)  #2472 pc 34932
	flw	%f4, 136(%x2)  #2472 pc 34936
	flw	%f6, 152(%x2)  #2472 pc 34940
	lw	%x5, 176(%x2)  #2472 pc 34944
	lw	%x6, 8(%x2)  #2472 pc 34948
	lw	%x7, 0(%x2)  #2472 pc 34952
	lw	%x22, 144(%x2)  #2472 pc 34956
	lw	0(%x23), %x22  #2472 pc 34960
	jalr	%x0, %x23, 0  #2472 pc 34964
	nop #pc 34968
calc_dirvecs.3075:  #pc 34968
	lw	%x9, 4(%x22)  #0 pc 34972
	bge	%x5, %x0, 12  #2477 pc 34976
	j	bge_else.9591 #pc 34980
	nop #pc 34984
	sw	%x22, 0(%x2)  #2479 pc 34988
	sw	%x5, 4(%x2)  #2479 pc 34992
	fsw	%f0, 8(%x2)  #2479 pc 34996
	sw	%x7, 16(%x2)  #2479 pc 35000
	sw	%x6, 20(%x2)  #2479 pc 35004
	sw	%x9, 24(%x2)  #2479 pc 35008
	sw	%x1, 28(%x2)  #2479 pc 35012
	addi	%x2, %x2, 32  #2479 pc 35016
	jal	%x1, float_of_int.2553  #2479 pc 35020
	addi	%x2, %x2, -32  #2479 pc 35024
	lw	%x1, 28(%x2) #2479 pc 35028
	mv	%f2, l.6314  #0 pc 35032
	fmul	%f0, %f0, %f2  #2479 pc 35036
	mv	%f2, l.7004  #0 pc 35040
	fsub	%f4, %f0, %f2  #2479 pc 35044
	addi	%x5, %x0, 0  #0 pc 35048
	mv	%f0, l.6293  #0 pc 35052
	mv	%f2, l.6293  #0 pc 35056
	flw	%f6, 8(%x2)  #2480 pc 35060
	lw	%x6, 20(%x2)  #2480 pc 35064
	lw	%x7, 16(%x2)  #2480 pc 35068
	lw	%x22, 24(%x2)  #2480 pc 35072
	sw	%x1, 28(%x2)  #2480 pc 35076
	lw	%x23, 0(%x22)  #2480 pc 35080
	addi	%x2, %x2, 32  #2480 pc 35084
	jalr	%x1, %x23, 0  #2480 pc 35088
	addi	%x2, %x2, -32  #2480 pc 35092
	lw	%x1, 28(%x2)  #2480 pc 35096
	lw	%x5, 4(%x2)  #2482 pc 35100
	sw	%x1, 28(%x2)  #2482 pc 35104
	addi	%x2, %x2, 32  #2482 pc 35108
	jal	%x1, float_of_int.2553  #2482 pc 35112
	addi	%x2, %x2, -32  #2482 pc 35116
	lw	%x1, 28(%x2) #2482 pc 35120
	mv	%f2, l.6314  #0 pc 35124
	fmul	%f0, %f0, %f2  #2482 pc 35128
	mv	%f2, l.6871  #0 pc 35132
	fadd	%f4, %f0, %f2  #2482 pc 35136
	addi	%x5, %x0, 0  #0 pc 35140
	mv	%f0, l.6293  #0 pc 35144
	mv	%f2, l.6293  #0 pc 35148
	lw	%x6, 16(%x2)  #2483 pc 35152
	addi	%x7, %x6, 2  #2483 pc 35156
	flw	%f6, 8(%x2)  #2483 pc 35160
	lw	%x9, 20(%x2)  #2483 pc 35164
	lw	%x22, 24(%x2)  #2483 pc 35168
	mv	%x6, %x9 #pc 35172
	sw	%x1, 28(%x2)  #2483 pc 35176
	lw	%x23, 0(%x22)  #2483 pc 35180
	addi	%x2, %x2, 32  #2483 pc 35184
	jalr	%x1, %x23, 0  #2483 pc 35188
	addi	%x2, %x2, -32  #2483 pc 35192
	lw	%x1, 28(%x2)  #2483 pc 35196
	lw	%x5, 4(%x2)  #2485 pc 35200
	addi	%x5, %x5, -1  #2485 pc 35204
	addi	%x6, %x0, 1  #0 pc 35208
	lw	%x7, 20(%x2)  #2485 pc 35212
	sw	%x5, 28(%x2)  #2485 pc 35216
	mv	%x5, %x7 #pc 35220
	sw	%x1, 36(%x2)  #2485 pc 35224
	addi	%x2, %x2, 40  #2485 pc 35228
	jal	%x1, add_mod5.2641  #2485 pc 35232
	addi	%x2, %x2, -40  #2485 pc 35236
	lw	%x1, 36(%x2) #2485 pc 35240
	mv	%x6, %x5  #2485 pc 35244
	flw	%f0, 8(%x2)  #2485 pc 35248
	lw	%x5, 28(%x2)  #2485 pc 35252
	lw	%x7, 16(%x2)  #2485 pc 35256
	lw	%x22, 0(%x2)  #2485 pc 35260
	lw	0(%x23), %x22  #2485 pc 35264
	jalr	%x0, %x23, 0  #2485 pc 35268
	nop #pc 35272
bge_else.9591: #pc 35272
	ret #pc 35276
	nop #pc 35280
calc_dirvec_rows.3080:  #pc 35280
	lw	%x9, 4(%x22)  #0 pc 35284
	bge	%x5, %x0, 12  #2491 pc 35288
	j	bge_else.9593 #pc 35292
	nop #pc 35296
	sw	%x22, 0(%x2)  #2492 pc 35300
	sw	%x5, 4(%x2)  #2492 pc 35304
	sw	%x7, 8(%x2)  #2492 pc 35308
	sw	%x6, 12(%x2)  #2492 pc 35312
	sw	%x9, 16(%x2)  #2492 pc 35316
	sw	%x1, 20(%x2)  #2492 pc 35320
	addi	%x2, %x2, 24  #2492 pc 35324
	jal	%x1, float_of_int.2553  #2492 pc 35328
	addi	%x2, %x2, -24  #2492 pc 35332
	lw	%x1, 20(%x2) #2492 pc 35336
	mv	%f2, l.6314  #0 pc 35340
	fmul	%f0, %f0, %f2  #2492 pc 35344
	mv	%f2, l.7004  #0 pc 35348
	fsub	%f0, %f0, %f2  #2492 pc 35352
	addi	%x5, %x0, 4  #0 pc 35356
	lw	%x6, 12(%x2)  #2493 pc 35360
	lw	%x7, 8(%x2)  #2493 pc 35364
	lw	%x22, 16(%x2)  #2493 pc 35368
	sw	%x1, 20(%x2)  #2493 pc 35372
	lw	%x23, 0(%x22)  #2493 pc 35376
	addi	%x2, %x2, 24  #2493 pc 35380
	jalr	%x1, %x23, 0  #2493 pc 35384
	addi	%x2, %x2, -24  #2493 pc 35388
	lw	%x1, 20(%x2)  #2493 pc 35392
	lw	%x5, 4(%x2)  #2494 pc 35396
	addi	%x5, %x5, -1  #2494 pc 35400
	addi	%x6, %x0, 2  #0 pc 35404
	lw	%x7, 12(%x2)  #2494 pc 35408
	sw	%x5, 20(%x2)  #2494 pc 35412
	mv	%x5, %x7 #pc 35416
	sw	%x1, 28(%x2)  #2494 pc 35420
	addi	%x2, %x2, 32  #2494 pc 35424
	jal	%x1, add_mod5.2641  #2494 pc 35428
	addi	%x2, %x2, -32  #2494 pc 35432
	lw	%x1, 28(%x2) #2494 pc 35436
	mv	%x6, %x5  #2494 pc 35440
	lw	%x5, 8(%x2)  #2494 pc 35444
	addi	%x7, %x5, 4  #2494 pc 35448
	lw	%x5, 20(%x2)  #2494 pc 35452
	lw	%x22, 0(%x2)  #2494 pc 35456
	lw	0(%x23), %x22  #2494 pc 35460
	jalr	%x0, %x23, 0  #2494 pc 35464
	nop #pc 35468
bge_else.9593: #pc 35468
	ret #pc 35472
	nop #pc 35476
create_dirvec.3084:  #pc 35476
	lw	%x5, 4(%x22)  #0 pc 35480
	addi	%x6, %x0, 3  #0 pc 35484
	mv	%f0, l.6293  #0 pc 35488
	sw	%x5, 0(%x2)  #2504 pc 35492
	mv	%x5, %x6 #pc 35496
	sw	%x1, 4(%x2)  #2504 pc 35500
	addi	%x2, %x2, 8  #2504 pc 35504
	jal	%x1, create_float_array.2600  #2504 pc 35508
	addi	%x2, %x2, -8  #2504 pc 35512
	lw	%x1, 4(%x2) #2504 pc 35516
	mv	%x6, %x5  #2504 pc 35520
	lw	%x5, 0(%x2)  #2505 pc 35524
	lw	%x5, 0(%x5)  #2505 pc 35528
	sw	%x6, 4(%x2)  #2505 pc 35532
	sw	%x1, 12(%x2)  #2505 pc 35536
	addi	%x2, %x2, 16  #2505 pc 35540
	jal	%x1, create_array.2593  #2505 pc 35544
	addi	%x2, %x2, -16  #2505 pc 35548
	lw	%x1, 12(%x2) #2505 pc 35552
	mv	%x6, %x3  #2506 pc 35556
	addi	%x3, %x3, 8  #2506 pc 35560
	sw	%x5, 4(%x6)  #2506 pc 35564
	lw	%x5, 4(%x2)  #2506 pc 35568
	sw	%x5, 0(%x6)  #2506 pc 35572
	mv	%x5, %x6  #2506 pc 35576
	ret #pc 35580
	nop #pc 35584
create_dirvec_elements.3086:  #pc 35584
	lw	%x7, 4(%x22)  #0 pc 35588
	bge	%x6, %x0, 12  #2510 pc 35592
	j	bge_else.9595 #pc 35596
	nop #pc 35600
	sw	%x22, 0(%x2)  #2511 pc 35604
	sw	%x5, 4(%x2)  #2511 pc 35608
	sw	%x6, 8(%x2)  #2511 pc 35612
	mv	%x5, %g0 #pc 35616
	mv	%x22, %x7 #pc 35620
	sw	%x1, 12(%x2)  #2511 pc 35624
	lw	%x23, 0(%x22)  #2511 pc 35628
	addi	%x2, %x2, 16  #2511 pc 35632
	jalr	%x1, %x23, 0  #2511 pc 35636
	addi	%x2, %x2, -16  #2511 pc 35640
	lw	%x1, 12(%x2)  #2511 pc 35644
	lw	%x6, 8(%x2)  #2511 pc 35648
	slli	%x7, %x6, 2  #2511 pc 35652
	lw	%x9, 4(%x2)  #2511 pc 35656
	sw	%x5, %x7(%x9)  #2511 pc 35660
	addi	%x6, %x6, -1  #2512 pc 35664
	lw	%x22, 0(%x2)  #2512 pc 35668
	mv	%x5, %x9 #pc 35672
	lw	0(%x23), %x22  #2512 pc 35676
	jalr	%x0, %x23, 0  #2512 pc 35680
	nop #pc 35684
bge_else.9595: #pc 35684
	ret #pc 35688
	nop #pc 35692
create_dirvecs.3089:  #pc 35692
	lw	%x6, 12(%x22)  #0 pc 35696
	lw	%x7, 8(%x22)  #0 pc 35700
	lw	%x9, 4(%x22)  #0 pc 35704
	bge	%x5, %x0, 12  #2517 pc 35708
	j	bge_else.9597 #pc 35712
	nop #pc 35716
	addi	%x10, %x0, 120  #0 pc 35720
	sw	%x22, 0(%x2)  #2518 pc 35724
	sw	%x7, 4(%x2)  #2518 pc 35728
	sw	%x6, 8(%x2)  #2518 pc 35732
	sw	%x5, 12(%x2)  #2518 pc 35736
	sw	%x10, 16(%x2)  #2518 pc 35740
	mv	%x5, %g0 #pc 35744
	mv	%x22, %x9 #pc 35748
	sw	%x1, 20(%x2)  #2518 pc 35752
	lw	%x23, 0(%x22)  #2518 pc 35756
	addi	%x2, %x2, 24  #2518 pc 35760
	jalr	%x1, %x23, 0  #2518 pc 35764
	addi	%x2, %x2, -24  #2518 pc 35768
	lw	%x1, 20(%x2)  #2518 pc 35772
	mv	%x6, %x5  #2518 pc 35776
	lw	%x5, 16(%x2)  #2518 pc 35780
	sw	%x1, 20(%x2)  #2518 pc 35784
	addi	%x2, %x2, 24  #2518 pc 35788
	jal	%x1, create_array.2593  #2518 pc 35792
	addi	%x2, %x2, -24  #2518 pc 35796
	lw	%x1, 20(%x2) #2518 pc 35800
	lw	%x6, 12(%x2)  #2518 pc 35804
	slli	%x7, %x6, 2  #2518 pc 35808
	lw	%x9, 8(%x2)  #2518 pc 35812
	sw	%x5, %x7(%x9)  #2518 pc 35816
	slli	%x5, %x6, 2  #2519 pc 35820
	lw	%x5, %x5(%x9)  #2519 pc 35824
	addi	%x7, %x0, 118  #0 pc 35828
	lw	%x22, 4(%x2)  #2519 pc 35832
	mv	%x6, %x7 #pc 35836
	sw	%x1, 20(%x2)  #2519 pc 35840
	lw	%x23, 0(%x22)  #2519 pc 35844
	addi	%x2, %x2, 24  #2519 pc 35848
	jalr	%x1, %x23, 0  #2519 pc 35852
	addi	%x2, %x2, -24  #2519 pc 35856
	lw	%x1, 20(%x2)  #2519 pc 35860
	lw	%x5, 12(%x2)  #2520 pc 35864
	addi	%x5, %x5, -1  #2520 pc 35868
	lw	%x22, 0(%x2)  #2520 pc 35872
	lw	0(%x23), %x22  #2520 pc 35876
	jalr	%x0, %x23, 0  #2520 pc 35880
	nop #pc 35884
bge_else.9597: #pc 35884
	ret #pc 35888
	nop #pc 35892
init_dirvec_constants.3091:  #pc 35892
	lw	%x7, 4(%x22)  #0 pc 35896
	bge	%x6, %x0, 12  #2529 pc 35900
	j	bge_else.9599 #pc 35904
	nop #pc 35908
	slli	%x9, %x6, 2  #2530 pc 35912
	lw	%x9, %x9(%x5)  #2530 pc 35916
	sw	%x5, 0(%x2)  #2530 pc 35920
	sw	%x22, 4(%x2)  #2530 pc 35924
	sw	%x6, 8(%x2)  #2530 pc 35928
	mv	%x5, %x9 #pc 35932
	mv	%x22, %x7 #pc 35936
	sw	%x1, 12(%x2)  #2530 pc 35940
	lw	%x23, 0(%x22)  #2530 pc 35944
	addi	%x2, %x2, 16  #2530 pc 35948
	jalr	%x1, %x23, 0  #2530 pc 35952
	addi	%x2, %x2, -16  #2530 pc 35956
	lw	%x1, 12(%x2)  #2530 pc 35960
	lw	%x5, 8(%x2)  #2531 pc 35964
	addi	%x6, %x5, -1  #2531 pc 35968
	lw	%x5, 0(%x2)  #2531 pc 35972
	lw	%x22, 4(%x2)  #2531 pc 35976
	lw	0(%x23), %x22  #2531 pc 35980
	jalr	%x0, %x23, 0  #2531 pc 35984
	nop #pc 35988
bge_else.9599: #pc 35988
	ret #pc 35992
	nop #pc 35996
init_vecset_constants.3094:  #pc 35996
	lw	%x6, 8(%x22)  #0 pc 36000
	lw	%x7, 4(%x22)  #0 pc 36004
	bge	%x5, %x0, 12  #2536 pc 36008
	j	bge_else.9601 #pc 36012
	nop #pc 36016
	slli	%x9, %x5, 2  #2537 pc 36020
	lw	%x7, %x9(%x7)  #2537 pc 36024
	addi	%x9, %x0, 119  #0 pc 36028
	sw	%x22, 0(%x2)  #2537 pc 36032
	sw	%x5, 4(%x2)  #2537 pc 36036
	mv	%x5, %x7 #pc 36040
	mv	%x22, %x6 #pc 36044
	mv	%x6, %x9 #pc 36048
	sw	%x1, 12(%x2)  #2537 pc 36052
	lw	%x23, 0(%x22)  #2537 pc 36056
	addi	%x2, %x2, 16  #2537 pc 36060
	jalr	%x1, %x23, 0  #2537 pc 36064
	addi	%x2, %x2, -16  #2537 pc 36068
	lw	%x1, 12(%x2)  #2537 pc 36072
	lw	%x5, 4(%x2)  #2538 pc 36076
	addi	%x5, %x5, -1  #2538 pc 36080
	lw	%x22, 0(%x2)  #2538 pc 36084
	lw	0(%x23), %x22  #2538 pc 36088
	jalr	%x0, %x23, 0  #2538 pc 36092
	nop #pc 36096
bge_else.9601: #pc 36096
	ret #pc 36100
	nop #pc 36104
init_dirvecs.3096:  #pc 36104
	lw	%x5, 12(%x22)  #0 pc 36108
	lw	%x6, 8(%x22)  #0 pc 36112
	lw	%x7, 4(%x22)  #0 pc 36116
	addi	%x9, %x0, 4  #0 pc 36120
	sw	%x5, 0(%x2)  #2543 pc 36124
	sw	%x7, 4(%x2)  #2543 pc 36128
	mv	%x5, %x9 #pc 36132
	mv	%x22, %x6 #pc 36136
	sw	%x1, 12(%x2)  #2543 pc 36140
	lw	%x23, 0(%x22)  #2543 pc 36144
	addi	%x2, %x2, 16  #2543 pc 36148
	jalr	%x1, %x23, 0  #2543 pc 36152
	addi	%x2, %x2, -16  #2543 pc 36156
	lw	%x1, 12(%x2)  #2543 pc 36160
	addi	%x5, %x0, 9  #0 pc 36164
	addi	%x6, %x0, 0  #0 pc 36168
	addi	%x7, %x0, 0  #0 pc 36172
	lw	%x22, 4(%x2)  #2544 pc 36176
	sw	%x1, 12(%x2)  #2544 pc 36180
	lw	%x23, 0(%x22)  #2544 pc 36184
	addi	%x2, %x2, 16  #2544 pc 36188
	jalr	%x1, %x23, 0  #2544 pc 36192
	addi	%x2, %x2, -16  #2544 pc 36196
	lw	%x1, 12(%x2)  #2544 pc 36200
	addi	%x5, %x0, 4  #0 pc 36204
	lw	%x22, 0(%x2)  #2545 pc 36208
	lw	0(%x23), %x22  #2545 pc 36212
	jalr	%x0, %x23, 0  #2545 pc 36216
	nop #pc 36220
add_reflection.3098:  #pc 36220
	lw	%x7, 12(%x22)  #0 pc 36224
	lw	%x9, 8(%x22)  #0 pc 36228
	lw	%x22, 4(%x22)  #0 pc 36232
	sw	%x9, 0(%x2)  #2554 pc 36236
	sw	%x5, 4(%x2)  #2554 pc 36240
	sw	%x6, 8(%x2)  #2554 pc 36244
	fsw	%f0, 16(%x2)  #2554 pc 36248
	sw	%x7, 24(%x2)  #2554 pc 36252
	fsw	%f6, 32(%x2)  #2554 pc 36256
	fsw	%f4, 40(%x2)  #2554 pc 36260
	fsw	%f2, 48(%x2)  #2554 pc 36264
	mv	%x5, %g0 #pc 36268
	sw	%x1, 60(%x2)  #2554 pc 36272
	lw	%x23, 0(%x22)  #2554 pc 36276
	addi	%x2, %x2, 64  #2554 pc 36280
	jalr	%x1, %x23, 0  #2554 pc 36284
	addi	%x2, %x2, -64  #2554 pc 36288
	lw	%x1, 60(%x2)  #2554 pc 36292
	sw	%x5, 56(%x2)  #2555 pc 36296
	sw	%x1, 60(%x2)  #2555 pc 36300
	addi	%x2, %x2, 64  #2555 pc 36304
	jal	%x1, d_vec.2743  #2555 pc 36308
	addi	%x2, %x2, -64  #2555 pc 36312
	lw	%x1, 60(%x2) #2555 pc 36316
	flw	%f0, 48(%x2)  #2555 pc 36320
	flw	%f2, 40(%x2)  #2555 pc 36324
	flw	%f4, 32(%x2)  #2555 pc 36328
	sw	%x1, 60(%x2)  #2555 pc 36332
	addi	%x2, %x2, 64  #2555 pc 36336
	jal	%x1, vecset.2644  #2555 pc 36340
	addi	%x2, %x2, -64  #2555 pc 36344
	lw	%x1, 60(%x2) #2555 pc 36348
	lw	%x5, 56(%x2)  #2556 pc 36352
	lw	%x22, 24(%x2)  #2556 pc 36356
	sw	%x1, 60(%x2)  #2556 pc 36360
	lw	%x23, 0(%x22)  #2556 pc 36364
	addi	%x2, %x2, 64  #2556 pc 36368
	jalr	%x1, %x23, 0  #2556 pc 36372
	addi	%x2, %x2, -64  #2556 pc 36376
	lw	%x1, 60(%x2)  #2556 pc 36380
	mv	%x5, %x3  #2558 pc 36384
	addi	%x3, %x3, 16  #2558 pc 36388
	flw	%f0, 16(%x2)  #2558 pc 36392
	fsw	%f0, 8(%x5) #2558 pc 36396
	lw	%x6, 56(%x2)  #2558 pc 36400
	sw	%x6, 4(%x5)  #2558 pc 36404
	lw	%x6, 8(%x2)  #2558 pc 36408
	sw	%x6, 0(%x5)  #2558 pc 36412
	lw	%x6, 4(%x2)  #2558 pc 36416
	slli	%x6, %x6, 2  #2558 pc 36420
	lw	%x7, 0(%x2)  #2558 pc 36424
	sw	%x5, %x6(%x7)  #2558 pc 36428
	ret #pc 36432
	nop #pc 36436
setup_rect_reflection.3105:  #pc 36436
	lw	%x7, 12(%x22)  #0 pc 36440
	lw	%x9, 8(%x22)  #0 pc 36444
	lw	%x10, 4(%x22)  #0 pc 36448
	addi	%x11, %x0, 4  #0 pc 36452
	sw	%x10, 0(%x2)  #2563 pc 36456
	sw	%x9, 4(%x2)  #2563 pc 36460
	sw	%x6, 8(%x2)  #2563 pc 36464
	sw	%x7, 12(%x2)  #2563 pc 36468
	mv	%x6, %x11 #pc 36472
	sw	%x1, 20(%x2)  #2563 pc 36476
	addi	%x2, %x2, 24  #2563 pc 36480
	jal	%x1, mul.2562  #2563 pc 36484
	addi	%x2, %x2, -24  #2563 pc 36488
	lw	%x1, 20(%x2) #2563 pc 36492
	lw	%x6, 12(%x2)  #2564 pc 36496
	lw	%x7, 0(%x6)  #2564 pc 36500
	mv	%f0, l.6305  #0 pc 36504
	lw	%x9, 8(%x2)  #2565 pc 36508
	sw	%x7, 16(%x2)  #2565 pc 36512
	sw	%x5, 20(%x2)  #2565 pc 36516
	fsw	%f0, 24(%x2)  #2565 pc 36520
	mv	%x5, %x9 #pc 36524
	sw	%x1, 36(%x2)  #2565 pc 36528
	addi	%x2, %x2, 40  #2565 pc 36532
	jal	%x1, o_diffuse.2706  #2565 pc 36536
	addi	%x2, %x2, -40  #2565 pc 36540
	lw	%x1, 36(%x2) #2565 pc 36544
	flw	%f2, 24(%x2)  #2565 pc 36548
	fsub	%f0, %f2, %f0  #2565 pc 36552
	lw	%x5, 4(%x2)  #2566 pc 36556
	flw	%f2, 0(%x5)  #2566 pc 36560
	fsw	%f0, 32(%x2)  #2566 pc 36564
	mv	%f0, %f2 #pc 36568
	mv	%f1, %f3 #pc 36572
	sw	%x1, 44(%x2)  #2566 pc 36576
	addi	%x2, %x2, 48  #2566 pc 36580
	jal	%x1, fneg.2534  #2566 pc 36584
	addi	%x2, %x2, -48  #2566 pc 36588
	lw	%x1, 44(%x2) #2566 pc 36592
	lw	%x5, 4(%x2)  #2567 pc 36596
	flw	%f2, 8(%x5)  #2567 pc 36600
	fsw	%f0, 40(%x2)  #2567 pc 36604
	mv	%f0, %f2 #pc 36608
	mv	%f1, %f3 #pc 36612
	sw	%x1, 52(%x2)  #2567 pc 36616
	addi	%x2, %x2, 56  #2567 pc 36620
	jal	%x1, fneg.2534  #2567 pc 36624
	addi	%x2, %x2, -56  #2567 pc 36628
	lw	%x1, 52(%x2) #2567 pc 36632
	lw	%x5, 4(%x2)  #2568 pc 36636
	flw	%f2, 16(%x5)  #2568 pc 36640
	fsw	%f0, 48(%x2)  #2568 pc 36644
	mv	%f0, %f2 #pc 36648
	mv	%f1, %f3 #pc 36652
	sw	%x1, 60(%x2)  #2568 pc 36656
	addi	%x2, %x2, 64  #2568 pc 36660
	jal	%x1, fneg.2534  #2568 pc 36664
	addi	%x2, %x2, -64  #2568 pc 36668
	lw	%x1, 60(%x2) #2568 pc 36672
	mv	%f6, %f0  #2568 pc 36676
	mv	%f7, %f1  #2568 pc 36680
	lw	%x5, 20(%x2)  #2569 pc 36684
	addi	%x6, %x5, 1  #2569 pc 36688
	lw	%x7, 4(%x2)  #2569 pc 36692
	flw	%f2, 0(%x7)  #2569 pc 36696
	flw	%f0, 32(%x2)  #2569 pc 36700
	flw	%f4, 48(%x2)  #2569 pc 36704
	lw	%x9, 16(%x2)  #2569 pc 36708
	lw	%x22, 0(%x2)  #2569 pc 36712
	fsw	%f6, 56(%x2)  #2569 pc 36716
	mv	%x5, %x9 #pc 36720
	sw	%x1, 68(%x2)  #2569 pc 36724
	lw	%x23, 0(%x22)  #2569 pc 36728
	addi	%x2, %x2, 72  #2569 pc 36732
	jalr	%x1, %x23, 0  #2569 pc 36736
	addi	%x2, %x2, -72  #2569 pc 36740
	lw	%x1, 68(%x2)  #2569 pc 36744
	lw	%x5, 16(%x2)  #2570 pc 36748
	addi	%x6, %x5, 1  #2570 pc 36752
	lw	%x7, 20(%x2)  #2570 pc 36756
	addi	%x9, %x7, 2  #2570 pc 36760
	lw	%x10, 4(%x2)  #2570 pc 36764
	flw	%f4, 8(%x10)  #2570 pc 36768
	flw	%f0, 32(%x2)  #2570 pc 36772
	flw	%f2, 40(%x2)  #2570 pc 36776
	flw	%f6, 56(%x2)  #2570 pc 36780
	lw	%x22, 0(%x2)  #2570 pc 36784
	mv	%x5, %x6 #pc 36788
	mv	%x6, %x9 #pc 36792
	sw	%x1, 68(%x2)  #2570 pc 36796
	lw	%x23, 0(%x22)  #2570 pc 36800
	addi	%x2, %x2, 72  #2570 pc 36804
	jalr	%x1, %x23, 0  #2570 pc 36808
	addi	%x2, %x2, -72  #2570 pc 36812
	lw	%x1, 68(%x2)  #2570 pc 36816
	lw	%x5, 16(%x2)  #2571 pc 36820
	addi	%x6, %x5, 2  #2571 pc 36824
	lw	%x7, 20(%x2)  #2571 pc 36828
	addi	%x7, %x7, 3  #2571 pc 36832
	lw	%x9, 4(%x2)  #2571 pc 36836
	flw	%f6, 16(%x9)  #2571 pc 36840
	flw	%f0, 32(%x2)  #2571 pc 36844
	flw	%f2, 40(%x2)  #2571 pc 36848
	flw	%f4, 48(%x2)  #2571 pc 36852
	lw	%x22, 0(%x2)  #2571 pc 36856
	mv	%x5, %x6 #pc 36860
	mv	%x6, %x7 #pc 36864
	sw	%x1, 68(%x2)  #2571 pc 36868
	lw	%x23, 0(%x22)  #2571 pc 36872
	addi	%x2, %x2, 72  #2571 pc 36876
	jalr	%x1, %x23, 0  #2571 pc 36880
	addi	%x2, %x2, -72  #2571 pc 36884
	lw	%x1, 68(%x2)  #2571 pc 36888
	lw	%x5, 16(%x2)  #2572 pc 36892
	addi	%x5, %x5, 3  #2572 pc 36896
	lw	%x6, 12(%x2)  #2572 pc 36900
	sw	%x5, 0(%x6)  #2572 pc 36904
	ret #pc 36908
	nop #pc 36912
setup_surface_reflection.3108:  #pc 36912
	lw	%x7, 12(%x22)  #0 pc 36916
	lw	%x9, 8(%x22)  #0 pc 36920
	lw	%x10, 4(%x22)  #0 pc 36924
	addi	%x11, %x0, 4  #0 pc 36928
	sw	%x10, 0(%x2)  #2577 pc 36932
	sw	%x9, 4(%x2)  #2577 pc 36936
	sw	%x6, 8(%x2)  #2577 pc 36940
	sw	%x7, 12(%x2)  #2577 pc 36944
	mv	%x6, %x11 #pc 36948
	sw	%x1, 20(%x2)  #2577 pc 36952
	addi	%x2, %x2, 24  #2577 pc 36956
	jal	%x1, mul.2562  #2577 pc 36960
	addi	%x2, %x2, -24  #2577 pc 36964
	lw	%x1, 20(%x2) #2577 pc 36968
	addi	%x5, %x5, 1  #2577 pc 36972
	lw	%x6, 12(%x2)  #2578 pc 36976
	lw	%x7, 0(%x6)  #2578 pc 36980
	mv	%f0, l.6305  #0 pc 36984
	lw	%x9, 8(%x2)  #2579 pc 36988
	sw	%x5, 16(%x2)  #2579 pc 36992
	sw	%x7, 20(%x2)  #2579 pc 36996
	fsw	%f0, 24(%x2)  #2579 pc 37000
	mv	%x5, %x9 #pc 37004
	sw	%x1, 36(%x2)  #2579 pc 37008
	addi	%x2, %x2, 40  #2579 pc 37012
	jal	%x1, o_diffuse.2706  #2579 pc 37016
	addi	%x2, %x2, -40  #2579 pc 37020
	lw	%x1, 36(%x2) #2579 pc 37024
	flw	%f2, 24(%x2)  #2579 pc 37028
	fsub	%f0, %f2, %f0  #2579 pc 37032
	lw	%x5, 8(%x2)  #2580 pc 37036
	fsw	%f0, 32(%x2)  #2580 pc 37040
	sw	%x1, 44(%x2)  #2580 pc 37044
	addi	%x2, %x2, 48  #2580 pc 37048
	jal	%x1, o_param_abc.2698  #2580 pc 37052
	addi	%x2, %x2, -48  #2580 pc 37056
	lw	%x1, 44(%x2) #2580 pc 37060
	mv	%x6, %x5  #2580 pc 37064
	lw	%x5, 4(%x2)  #2580 pc 37068
	sw	%x1, 44(%x2)  #2580 pc 37072
	addi	%x2, %x2, 48  #2580 pc 37076
	jal	%x1, veciprod.2660  #2580 pc 37080
	addi	%x2, %x2, -48  #2580 pc 37084
	lw	%x1, 44(%x2) #2580 pc 37088
	mv	%f2, l.6476  #0 pc 37092
	lw	%x5, 8(%x2)  #2583 pc 37096
	fsw	%f0, 40(%x2)  #2583 pc 37100
	fsw	%f2, 48(%x2)  #2583 pc 37104
	sw	%x1, 60(%x2)  #2583 pc 37108
	addi	%x2, %x2, 64  #2583 pc 37112
	jal	%x1, o_param_a.2692  #2583 pc 37116
	addi	%x2, %x2, -64  #2583 pc 37120
	lw	%x1, 60(%x2) #2583 pc 37124
	flw	%f2, 48(%x2)  #2583 pc 37128
	fmul	%f0, %f2, %f0  #2583 pc 37132
	flw	%f2, 40(%x2)  #2583 pc 37136
	fmul	%f0, %f0, %f2  #2583 pc 37140
	lw	%x5, 4(%x2)  #2583 pc 37144
	flw	%f4, 0(%x5)  #2583 pc 37148
	fsub	%f0, %f0, %f4  #2583 pc 37152
	mv	%f4, l.6476  #0 pc 37156
	lw	%x6, 8(%x2)  #2584 pc 37160
	fsw	%f0, 56(%x2)  #2584 pc 37164
	fsw	%f4, 64(%x2)  #2584 pc 37168
	mv	%x5, %x6 #pc 37172
	sw	%x1, 76(%x2)  #2584 pc 37176
	addi	%x2, %x2, 80  #2584 pc 37180
	jal	%x1, o_param_b.2694  #2584 pc 37184
	addi	%x2, %x2, -80  #2584 pc 37188
	lw	%x1, 76(%x2) #2584 pc 37192
	flw	%f2, 64(%x2)  #2584 pc 37196
	fmul	%f0, %f2, %f0  #2584 pc 37200
	flw	%f2, 40(%x2)  #2584 pc 37204
	fmul	%f0, %f0, %f2  #2584 pc 37208
	lw	%x5, 4(%x2)  #2584 pc 37212
	flw	%f4, 8(%x5)  #2584 pc 37216
	fsub	%f0, %f0, %f4  #2584 pc 37220
	mv	%f4, l.6476  #0 pc 37224
	lw	%x6, 8(%x2)  #2585 pc 37228
	fsw	%f0, 72(%x2)  #2585 pc 37232
	fsw	%f4, 80(%x2)  #2585 pc 37236
	mv	%x5, %x6 #pc 37240
	sw	%x1, 92(%x2)  #2585 pc 37244
	addi	%x2, %x2, 96  #2585 pc 37248
	jal	%x1, o_param_c.2696  #2585 pc 37252
	addi	%x2, %x2, -96  #2585 pc 37256
	lw	%x1, 92(%x2) #2585 pc 37260
	flw	%f2, 80(%x2)  #2585 pc 37264
	fmul	%f0, %f2, %f0  #2585 pc 37268
	flw	%f2, 40(%x2)  #2585 pc 37272
	fmul	%f0, %f0, %f2  #2585 pc 37276
	lw	%x5, 4(%x2)  #2585 pc 37280
	flw	%f2, 16(%x5)  #2585 pc 37284
	fsub	%f6, %f0, %f2  #2585 pc 37288
	flw	%f0, 32(%x2)  #2582 pc 37292
	flw	%f2, 56(%x2)  #2582 pc 37296
	flw	%f4, 72(%x2)  #2582 pc 37300
	lw	%x5, 20(%x2)  #2582 pc 37304
	lw	%x6, 16(%x2)  #2582 pc 37308
	lw	%x22, 0(%x2)  #2582 pc 37312
	sw	%x1, 92(%x2)  #2582 pc 37316
	lw	%x23, 0(%x22)  #2582 pc 37320
	addi	%x2, %x2, 96  #2582 pc 37324
	jalr	%x1, %x23, 0  #2582 pc 37328
	addi	%x2, %x2, -96  #2582 pc 37332
	lw	%x1, 92(%x2)  #2582 pc 37336
	lw	%x5, 20(%x2)  #2586 pc 37340
	addi	%x5, %x5, 1  #2586 pc 37344
	lw	%x6, 12(%x2)  #2586 pc 37348
	sw	%x5, 0(%x6)  #2586 pc 37352
	ret #pc 37356
	nop #pc 37360
setup_reflections.3111:  #pc 37360
	lw	%x6, 12(%x22)  #0 pc 37364
	lw	%x7, 8(%x22)  #0 pc 37368
	lw	%x9, 4(%x22)  #0 pc 37372
	bge	%x5, %x0, 12  #2592 pc 37376
	j	bge_else.9608 #pc 37380
	nop #pc 37384
	slli	%x10, %x5, 2  #2593 pc 37388
	lw	%x9, %x10(%x9)  #2593 pc 37392
	sw	%x6, 0(%x2)  #2594 pc 37396
	sw	%x5, 4(%x2)  #2594 pc 37400
	sw	%x7, 8(%x2)  #2594 pc 37404
	sw	%x9, 12(%x2)  #2594 pc 37408
	mv	%x5, %x9 #pc 37412
	sw	%x1, 20(%x2)  #2594 pc 37416
	addi	%x2, %x2, 24  #2594 pc 37420
	jal	%x1, o_reflectiontype.2686  #2594 pc 37424
	addi	%x2, %x2, -24  #2594 pc 37428
	lw	%x1, 20(%x2) #2594 pc 37432
	addi	%x24, %x0, 2  #pc 37436
	beq	%x5, %x24, 12  #2594 pc 37440
	j	be_else.9609 #pc 37444
	nop #pc 37448
	lw	%x5, 12(%x2)  #2595 pc 37452
	sw	%x1, 20(%x2)  #2595 pc 37456
	addi	%x2, %x2, 24  #2595 pc 37460
	jal	%x1, o_diffuse.2706  #2595 pc 37464
	addi	%x2, %x2, -24  #2595 pc 37468
	lw	%x1, 20(%x2) #2595 pc 37472
	mv	%f2, l.6305  #0 pc 37476
	sw	%x1, 20(%x2)  #2595 pc 37480
	addi	%x2, %x2, 24  #2595 pc 37484
	jal	%x1, fless.2540  #2595 pc 37488
	addi	%x2, %x2, -24  #2595 pc 37492
	lw	%x1, 20(%x2) #2595 pc 37496
	beq	%x5, %x0, 12  #2595 pc 37500
	j	be_else.9610 #pc 37504
	nop #pc 37508
	ret #pc 37512
	nop #pc 37516
be_else.9610: #pc 37516
	lw	%x5, 12(%x2)  #2596 pc 37520
	sw	%x1, 20(%x2)  #2596 pc 37524
	addi	%x2, %x2, 24  #2596 pc 37528
	jal	%x1, o_form.2684  #2596 pc 37532
	addi	%x2, %x2, -24  #2596 pc 37536
	lw	%x1, 20(%x2) #2596 pc 37540
	addi	%x24, %x0, 1  #pc 37544
	beq	%x5, %x24, 12  #2598 pc 37548
	j	be_else.9612 #pc 37552
	nop #pc 37556
	lw	%x5, 4(%x2)  #2599 pc 37560
	lw	%x6, 12(%x2)  #2599 pc 37564
	lw	%x22, 8(%x2)  #2599 pc 37568
	lw	0(%x23), %x22  #2599 pc 37572
	jalr	%x0, %x23, 0  #2599 pc 37576
	nop #pc 37580
be_else.9612: #pc 37580
	addi	%x24, %x0, 2  #pc 37584
	beq	%x5, %x24, 12  #2600 pc 37588
	j	be_else.9613 #pc 37592
	nop #pc 37596
	lw	%x5, 4(%x2)  #2601 pc 37600
	lw	%x6, 12(%x2)  #2601 pc 37604
	lw	%x22, 0(%x2)  #2601 pc 37608
	lw	0(%x23), %x22  #2601 pc 37612
	jalr	%x0, %x23, 0  #2601 pc 37616
	nop #pc 37620
be_else.9613: #pc 37620
	ret #pc 37624
	nop #pc 37628
be_else.9609: #pc 37628
	ret #pc 37632
	nop #pc 37636
bge_else.9608: #pc 37636
	ret #pc 37640
	nop #pc 37644
rt.3113:  #pc 37644
	lw	%x9, 56(%x22)  #0 pc 37648
	lw	%x10, 52(%x22)  #0 pc 37652
	lw	%x11, 48(%x22)  #0 pc 37656
	lw	%x12, 44(%x22)  #0 pc 37660
	lw	%x13, 40(%x22)  #0 pc 37664
	lw	%x14, 36(%x22)  #0 pc 37668
	lw	%x15, 32(%x22)  #0 pc 37672
	lw	%x16, 28(%x22)  #0 pc 37676
	lw	%x17, 24(%x22)  #0 pc 37680
	lw	%x18, 20(%x22)  #0 pc 37684
	lw	%x19, 16(%x22)  #0 pc 37688
	lw	%x20, 12(%x22)  #0 pc 37692
	lw	%x21, 8(%x22)  #0 pc 37696
	lw	%x22, 4(%x22)  #0 pc 37700
	sw	%x5, 0(%x20)  #2614 pc 37704
	sw	%x6, 4(%x20)  #2615 pc 37708
	addi	%x20, %x0, 2  #0 pc 37712
	sw	%x13, 0(%x2)  #2616 pc 37716
	sw	%x15, 4(%x2)  #2616 pc 37720
	sw	%x10, 8(%x2)  #2616 pc 37724
	sw	%x16, 12(%x2)  #2616 pc 37728
	sw	%x11, 16(%x2)  #2616 pc 37732
	sw	%x18, 20(%x2)  #2616 pc 37736
	sw	%x17, 24(%x2)  #2616 pc 37740
	sw	%x19, 28(%x2)  #2616 pc 37744
	sw	%x7, 32(%x2)  #2616 pc 37748
	sw	%x9, 36(%x2)  #2616 pc 37752
	sw	%x14, 40(%x2)  #2616 pc 37756
	sw	%x22, 44(%x2)  #2616 pc 37760
	sw	%x12, 48(%x2)  #2616 pc 37764
	sw	%x5, 52(%x2)  #2616 pc 37768
	sw	%x6, 56(%x2)  #2616 pc 37772
	sw	%x21, 60(%x2)  #2616 pc 37776
	mv	%x6, %x20 #pc 37780
	sw	%x1, 68(%x2)  #2616 pc 37784
	addi	%x2, %x2, 72  #2616 pc 37788
	jal	%x1, div.2570  #2616 pc 37792
	addi	%x2, %x2, -72  #2616 pc 37796
	lw	%x1, 68(%x2) #2616 pc 37800
	lw	%x6, 60(%x2)  #2616 pc 37804
	sw	%x5, 0(%x6)  #2616 pc 37808
	addi	%x5, %x0, 2  #0 pc 37812
	lw	%x7, 56(%x2)  #2617 pc 37816
	mv	%x6, %x5 #pc 37820
	mv	%x5, %x7 #pc 37824
	sw	%x1, 68(%x2)  #2617 pc 37828
	addi	%x2, %x2, 72  #2617 pc 37832
	jal	%x1, div.2570  #2617 pc 37836
	addi	%x2, %x2, -72  #2617 pc 37840
	lw	%x1, 68(%x2) #2617 pc 37844
	lw	%x6, 60(%x2)  #2617 pc 37848
	sw	%x5, 4(%x6)  #2617 pc 37852
	mv	%f0, l.7053  #0 pc 37856
	lw	%x5, 52(%x2)  #2618 pc 37860
	fsw	%f0, 64(%x2)  #2618 pc 37864
	sw	%x1, 76(%x2)  #2618 pc 37868
	addi	%x2, %x2, 80  #2618 pc 37872
	jal	%x1, float_of_int.2553  #2618 pc 37876
	addi	%x2, %x2, -80  #2618 pc 37880
	lw	%x1, 76(%x2) #2618 pc 37884
	flw	%f2, 64(%x2)  #2618 pc 37888
	fdiv	%f0, %f2, %f0  #2618 pc 37892
	lw	%x5, 48(%x2)  #2618 pc 37896
	fsw	%f0, 0(%x5) #2618 pc 37900
	lw	%x22, 44(%x2)  #2619 pc 37904
	mv	%x5, %g0 #pc 37908
	sw	%x1, 76(%x2)  #2619 pc 37912
	lw	%x23, 0(%x22)  #2619 pc 37916
	addi	%x2, %x2, 80  #2619 pc 37920
	jalr	%x1, %x23, 0  #2619 pc 37924
	addi	%x2, %x2, -80  #2619 pc 37928
	lw	%x1, 76(%x2)  #2619 pc 37932
	lw	%x22, 44(%x2)  #2620 pc 37936
	sw	%x5, 72(%x2)  #2620 pc 37940
	mv	%x5, %g0 #pc 37944
	sw	%x1, 76(%x2)  #2620 pc 37948
	lw	%x23, 0(%x22)  #2620 pc 37952
	addi	%x2, %x2, 80  #2620 pc 37956
	jalr	%x1, %x23, 0  #2620 pc 37960
	addi	%x2, %x2, -80  #2620 pc 37964
	lw	%x1, 76(%x2)  #2620 pc 37968
	lw	%x22, 44(%x2)  #2621 pc 37972
	sw	%x5, 76(%x2)  #2621 pc 37976
	mv	%x5, %g0 #pc 37980
	sw	%x1, 84(%x2)  #2621 pc 37984
	lw	%x23, 0(%x22)  #2621 pc 37988
	addi	%x2, %x2, 88  #2621 pc 37992
	jalr	%x1, %x23, 0  #2621 pc 37996
	addi	%x2, %x2, -88  #2621 pc 38000
	lw	%x1, 84(%x2)  #2621 pc 38004
	lw	%x22, 40(%x2)  #2622 pc 38008
	sw	%x5, 80(%x2)  #2622 pc 38012
	mv	%x5, %g0 #pc 38016
	sw	%x1, 84(%x2)  #2622 pc 38020
	lw	%x23, 0(%x22)  #2622 pc 38024
	addi	%x2, %x2, 88  #2622 pc 38028
	jalr	%x1, %x23, 0  #2622 pc 38032
	addi	%x2, %x2, -88  #2622 pc 38036
	lw	%x1, 84(%x2)  #2622 pc 38040
	lw	%x5, 32(%x2)  #2623 pc 38044
	lw	%x22, 36(%x2)  #2623 pc 38048
	sw	%x1, 84(%x2)  #2623 pc 38052
	lw	%x23, 0(%x22)  #2623 pc 38056
	addi	%x2, %x2, 88  #2623 pc 38060
	jalr	%x1, %x23, 0  #2623 pc 38064
	addi	%x2, %x2, -88  #2623 pc 38068
	lw	%x1, 84(%x2)  #2623 pc 38072
	lw	%x22, 28(%x2)  #2624 pc 38076
	mv	%x5, %g0 #pc 38080
	sw	%x1, 84(%x2)  #2624 pc 38084
	lw	%x23, 0(%x22)  #2624 pc 38088
	addi	%x2, %x2, 88  #2624 pc 38092
	jalr	%x1, %x23, 0  #2624 pc 38096
	addi	%x2, %x2, -88  #2624 pc 38100
	lw	%x1, 84(%x2)  #2624 pc 38104
	lw	%x5, 24(%x2)  #2625 pc 38108
	sw	%x1, 84(%x2)  #2625 pc 38112
	addi	%x2, %x2, 88  #2625 pc 38116
	jal	%x1, d_vec.2743  #2625 pc 38120
	addi	%x2, %x2, -88  #2625 pc 38124
	lw	%x1, 84(%x2) #2625 pc 38128
	lw	%x6, 20(%x2)  #2625 pc 38132
	sw	%x1, 84(%x2)  #2625 pc 38136
	addi	%x2, %x2, 88  #2625 pc 38140
	jal	%x1, veccpy.2654  #2625 pc 38144
	addi	%x2, %x2, -88  #2625 pc 38148
	lw	%x1, 84(%x2) #2625 pc 38152
	lw	%x5, 24(%x2)  #2626 pc 38156
	lw	%x22, 16(%x2)  #2626 pc 38160
	sw	%x1, 84(%x2)  #2626 pc 38164
	lw	%x23, 0(%x22)  #2626 pc 38168
	addi	%x2, %x2, 88  #2626 pc 38172
	jalr	%x1, %x23, 0  #2626 pc 38176
	addi	%x2, %x2, -88  #2626 pc 38180
	lw	%x1, 84(%x2)  #2626 pc 38184
	lw	%x5, 12(%x2)  #2627 pc 38188
	lw	%x5, 0(%x5)  #2627 pc 38192
	addi	%x5, %x5, -1  #2627 pc 38196
	lw	%x22, 8(%x2)  #2627 pc 38200
	sw	%x1, 84(%x2)  #2627 pc 38204
	lw	%x23, 0(%x22)  #2627 pc 38208
	addi	%x2, %x2, 88  #2627 pc 38212
	jalr	%x1, %x23, 0  #2627 pc 38216
	addi	%x2, %x2, -88  #2627 pc 38220
	lw	%x1, 84(%x2)  #2627 pc 38224
	addi	%x6, %x0, 0  #0 pc 38228
	addi	%x7, %x0, 0  #0 pc 38232
	lw	%x5, 76(%x2)  #2628 pc 38236
	lw	%x22, 4(%x2)  #2628 pc 38240
	sw	%x1, 84(%x2)  #2628 pc 38244
	lw	%x23, 0(%x22)  #2628 pc 38248
	addi	%x2, %x2, 88  #2628 pc 38252
	jalr	%x1, %x23, 0  #2628 pc 38256
	addi	%x2, %x2, -88  #2628 pc 38260
	lw	%x1, 84(%x2)  #2628 pc 38264
	addi	%x5, %x0, 0  #0 pc 38268
	addi	%x10, %x0, 2  #0 pc 38272
	lw	%x6, 72(%x2)  #2629 pc 38276
	lw	%x7, 76(%x2)  #2629 pc 38280
	lw	%x9, 80(%x2)  #2629 pc 38284
	lw	%x11, 32(%x2)  #2629 pc 38288
	lw	%x22, 0(%x2)  #2629 pc 38292
	lw	0(%x23), %x22  #2629 pc 38296
	jalr	%x0, %x23, 0  #2629 pc 38300
	nop #pc 38304
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 1  #0 pc 38308
	addi	%x6, %x0, 0  #0 pc 38312
	sw	%x1, 12(%x2)  #208 pc 38316
	addi	%x2, %x2, 16  #208 pc 38320
	jal	%x1, create_array.2593  #208 pc 38324
	addi	%x2, %x2, -16  #208 pc 38328
	lw	%x1, 12(%x2) #208 pc 38332
	addi	%x6, %x0, 0  #0 pc 38336
	mv	%f0, l.6293  #0 pc 38340
	sw	%x5, 8(%x2)  #213 pc 38344
	mv	%x5, %x6 #pc 38348
	sw	%x1, 12(%x2)  #213 pc 38352
	addi	%x2, %x2, 16  #213 pc 38356
	jal	%x1, create_float_array.2600  #213 pc 38360
	addi	%x2, %x2, -16  #213 pc 38364
	lw	%x1, 12(%x2) #213 pc 38368
	addi	%x6, %x0, 60  #0 pc 38372
	addi	%x7, %x0, 0  #0 pc 38376
	mv	%x9, %x3  #214 pc 38380
	addi	%x3, %x3, 48  #214 pc 38384
	sw	%x5, 40(%x9)  #214 pc 38388
	sw	%x5, 36(%x9)  #214 pc 38392
	sw	%x5, 32(%x9)  #214 pc 38396
	sw	%x5, 28(%x9)  #214 pc 38400
	sw	%x7, 24(%x9)  #214 pc 38404
	sw	%x5, 20(%x9)  #214 pc 38408
	sw	%x5, 16(%x9)  #214 pc 38412
	sw	%x7, 12(%x9)  #214 pc 38416
	sw	%x7, 8(%x9)  #214 pc 38420
	sw	%x7, 4(%x9)  #214 pc 38424
	sw	%x7, 0(%x9)  #214 pc 38428
	mv	%x5, %x9  #214 pc 38432
	mv	%x23, %x6 #pc 38436
	mv	%x6, %x5 #pc 38440
	mv	%x5, %x23 #pc 38444
	sw	%x1, 12(%x2)  #214 pc 38448
	addi	%x2, %x2, 16  #214 pc 38452
	jal	%x1, create_array.2593  #214 pc 38456
	addi	%x2, %x2, -16  #214 pc 38460
	lw	%x1, 12(%x2) #214 pc 38464
	addi	%x6, %x0, 3  #0 pc 38468
	mv	%f0, l.6293  #0 pc 38472
	sw	%x5, 12(%x2)  #218 pc 38476
	mv	%x5, %x6 #pc 38480
	sw	%x1, 20(%x2)  #218 pc 38484
	addi	%x2, %x2, 24  #218 pc 38488
	jal	%x1, create_float_array.2600  #218 pc 38492
	addi	%x2, %x2, -24  #218 pc 38496
	lw	%x1, 20(%x2) #218 pc 38500
	addi	%x6, %x0, 3  #0 pc 38504
	mv	%f0, l.6293  #0 pc 38508
	sw	%x5, 16(%x2)  #221 pc 38512
	mv	%x5, %x6 #pc 38516
	sw	%x1, 20(%x2)  #221 pc 38520
	addi	%x2, %x2, 24  #221 pc 38524
	jal	%x1, create_float_array.2600  #221 pc 38528
	addi	%x2, %x2, -24  #221 pc 38532
	lw	%x1, 20(%x2) #221 pc 38536
	addi	%x6, %x0, 3  #0 pc 38540
	mv	%f0, l.6293  #0 pc 38544
	sw	%x5, 20(%x2)  #224 pc 38548
	mv	%x5, %x6 #pc 38552
	sw	%x1, 28(%x2)  #224 pc 38556
	addi	%x2, %x2, 32  #224 pc 38560
	jal	%x1, create_float_array.2600  #224 pc 38564
	addi	%x2, %x2, -32  #224 pc 38568
	lw	%x1, 28(%x2) #224 pc 38572
	addi	%x6, %x0, 1  #0 pc 38576
	mv	%f0, l.6807  #0 pc 38580
	sw	%x5, 24(%x2)  #227 pc 38584
	mv	%x5, %x6 #pc 38588
	sw	%x1, 28(%x2)  #227 pc 38592
	addi	%x2, %x2, 32  #227 pc 38596
	jal	%x1, create_float_array.2600  #227 pc 38600
	addi	%x2, %x2, -32  #227 pc 38604
	lw	%x1, 28(%x2) #227 pc 38608
	addi	%x6, %x0, 50  #0 pc 38612
	addi	%x7, %x0, 1  #0 pc 38616
	addi	%x9, %x0, -1  #0 pc 38620
	sw	%x5, 28(%x2)  #230 pc 38624
	sw	%x6, 32(%x2)  #230 pc 38628
	mv	%x6, %x9 #pc 38632
	mv	%x5, %x7 #pc 38636
	sw	%x1, 36(%x2)  #230 pc 38640
	addi	%x2, %x2, 40  #230 pc 38644
	jal	%x1, create_array.2593  #230 pc 38648
	addi	%x2, %x2, -40  #230 pc 38652
	lw	%x1, 36(%x2) #230 pc 38656
	mv	%x6, %x5  #230 pc 38660
	lw	%x5, 32(%x2)  #230 pc 38664
	sw	%x1, 36(%x2)  #230 pc 38668
	addi	%x2, %x2, 40  #230 pc 38672
	jal	%x1, create_array.2593  #230 pc 38676
	addi	%x2, %x2, -40  #230 pc 38680
	lw	%x1, 36(%x2) #230 pc 38684
	addi	%x6, %x0, 1  #0 pc 38688
	lw	%x7, 0(%x5)  #233 pc 38692
	sw	%x5, 36(%x2)  #233 pc 38696
	sw	%x6, 40(%x2)  #233 pc 38700
	mv	%x5, %x6 #pc 38704
	mv	%x6, %x7 #pc 38708
	sw	%x1, 44(%x2)  #233 pc 38712
	addi	%x2, %x2, 48  #233 pc 38716
	jal	%x1, create_array.2593  #233 pc 38720
	addi	%x2, %x2, -48  #233 pc 38724
	lw	%x1, 44(%x2) #233 pc 38728
	mv	%x6, %x5  #233 pc 38732
	lw	%x5, 40(%x2)  #233 pc 38736
	sw	%x1, 44(%x2)  #233 pc 38740
	addi	%x2, %x2, 48  #233 pc 38744
	jal	%x1, create_array.2593  #233 pc 38748
	addi	%x2, %x2, -48  #233 pc 38752
	lw	%x1, 44(%x2) #233 pc 38756
	addi	%x6, %x0, 1  #0 pc 38760
	mv	%f0, l.6293  #0 pc 38764
	sw	%x5, 44(%x2)  #238 pc 38768
	mv	%x5, %x6 #pc 38772
	sw	%x1, 52(%x2)  #238 pc 38776
	addi	%x2, %x2, 56  #238 pc 38780
	jal	%x1, create_float_array.2600  #238 pc 38784
	addi	%x2, %x2, -56  #238 pc 38788
	lw	%x1, 52(%x2) #238 pc 38792
	addi	%x6, %x0, 1  #0 pc 38796
	addi	%x7, %x0, 0  #0 pc 38800
	sw	%x5, 48(%x2)  #241 pc 38804
	mv	%x5, %x6 #pc 38808
	mv	%x6, %x7 #pc 38812
	sw	%x1, 52(%x2)  #241 pc 38816
	addi	%x2, %x2, 56  #241 pc 38820
	jal	%x1, create_array.2593  #241 pc 38824
	addi	%x2, %x2, -56  #241 pc 38828
	lw	%x1, 52(%x2) #241 pc 38832
	addi	%x6, %x0, 1  #0 pc 38836
	mv	%f0, l.6734  #0 pc 38840
	sw	%x5, 52(%x2)  #244 pc 38844
	mv	%x5, %x6 #pc 38848
	sw	%x1, 60(%x2)  #244 pc 38852
	addi	%x2, %x2, 64  #244 pc 38856
	jal	%x1, create_float_array.2600  #244 pc 38860
	addi	%x2, %x2, -64  #244 pc 38864
	lw	%x1, 60(%x2) #244 pc 38868
	addi	%x6, %x0, 3  #0 pc 38872
	mv	%f0, l.6293  #0 pc 38876
	sw	%x5, 56(%x2)  #247 pc 38880
	mv	%x5, %x6 #pc 38884
	sw	%x1, 60(%x2)  #247 pc 38888
	addi	%x2, %x2, 64  #247 pc 38892
	jal	%x1, create_float_array.2600  #247 pc 38896
	addi	%x2, %x2, -64  #247 pc 38900
	lw	%x1, 60(%x2) #247 pc 38904
	addi	%x6, %x0, 1  #0 pc 38908
	addi	%x7, %x0, 0  #0 pc 38912
	sw	%x5, 60(%x2)  #250 pc 38916
	mv	%x5, %x6 #pc 38920
	mv	%x6, %x7 #pc 38924
	sw	%x1, 68(%x2)  #250 pc 38928
	addi	%x2, %x2, 72  #250 pc 38932
	jal	%x1, create_array.2593  #250 pc 38936
	addi	%x2, %x2, -72  #250 pc 38940
	lw	%x1, 68(%x2) #250 pc 38944
	addi	%x6, %x0, 3  #0 pc 38948
	mv	%f0, l.6293  #0 pc 38952
	sw	%x5, 64(%x2)  #253 pc 38956
	mv	%x5, %x6 #pc 38960
	sw	%x1, 68(%x2)  #253 pc 38964
	addi	%x2, %x2, 72  #253 pc 38968
	jal	%x1, create_float_array.2600  #253 pc 38972
	addi	%x2, %x2, -72  #253 pc 38976
	lw	%x1, 68(%x2) #253 pc 38980
	addi	%x6, %x0, 3  #0 pc 38984
	mv	%f0, l.6293  #0 pc 38988
	sw	%x5, 68(%x2)  #256 pc 38992
	mv	%x5, %x6 #pc 38996
	sw	%x1, 76(%x2)  #256 pc 39000
	addi	%x2, %x2, 80  #256 pc 39004
	jal	%x1, create_float_array.2600  #256 pc 39008
	addi	%x2, %x2, -80  #256 pc 39012
	lw	%x1, 76(%x2) #256 pc 39016
	addi	%x6, %x0, 3  #0 pc 39020
	mv	%f0, l.6293  #0 pc 39024
	sw	%x5, 72(%x2)  #260 pc 39028
	mv	%x5, %x6 #pc 39032
	sw	%x1, 76(%x2)  #260 pc 39036
	addi	%x2, %x2, 80  #260 pc 39040
	jal	%x1, create_float_array.2600  #260 pc 39044
	addi	%x2, %x2, -80  #260 pc 39048
	lw	%x1, 76(%x2) #260 pc 39052
	addi	%x6, %x0, 3  #0 pc 39056
	mv	%f0, l.6293  #0 pc 39060
	sw	%x5, 76(%x2)  #263 pc 39064
	mv	%x5, %x6 #pc 39068
	sw	%x1, 84(%x2)  #263 pc 39072
	addi	%x2, %x2, 88  #263 pc 39076
	jal	%x1, create_float_array.2600  #263 pc 39080
	addi	%x2, %x2, -88  #263 pc 39084
	lw	%x1, 84(%x2) #263 pc 39088
	addi	%x6, %x0, 2  #0 pc 39092
	addi	%x7, %x0, 0  #0 pc 39096
	sw	%x5, 80(%x2)  #267 pc 39100
	mv	%x5, %x6 #pc 39104
	mv	%x6, %x7 #pc 39108
	sw	%x1, 84(%x2)  #267 pc 39112
	addi	%x2, %x2, 88  #267 pc 39116
	jal	%x1, create_array.2593  #267 pc 39120
	addi	%x2, %x2, -88  #267 pc 39124
	lw	%x1, 84(%x2) #267 pc 39128
	addi	%x6, %x0, 2  #0 pc 39132
	addi	%x7, %x0, 0  #0 pc 39136
	sw	%x5, 84(%x2)  #270 pc 39140
	mv	%x5, %x6 #pc 39144
	mv	%x6, %x7 #pc 39148
	sw	%x1, 92(%x2)  #270 pc 39152
	addi	%x2, %x2, 96  #270 pc 39156
	jal	%x1, create_array.2593  #270 pc 39160
	addi	%x2, %x2, -96  #270 pc 39164
	lw	%x1, 92(%x2) #270 pc 39168
	addi	%x6, %x0, 1  #0 pc 39172
	mv	%f0, l.6293  #0 pc 39176
	sw	%x5, 88(%x2)  #273 pc 39180
	mv	%x5, %x6 #pc 39184
	sw	%x1, 92(%x2)  #273 pc 39188
	addi	%x2, %x2, 96  #273 pc 39192
	jal	%x1, create_float_array.2600  #273 pc 39196
	addi	%x2, %x2, -96  #273 pc 39200
	lw	%x1, 92(%x2) #273 pc 39204
	addi	%x6, %x0, 3  #0 pc 39208
	mv	%f0, l.6293  #0 pc 39212
	sw	%x5, 92(%x2)  #277 pc 39216
	mv	%x5, %x6 #pc 39220
	sw	%x1, 100(%x2)  #277 pc 39224
	addi	%x2, %x2, 104  #277 pc 39228
	jal	%x1, create_float_array.2600  #277 pc 39232
	addi	%x2, %x2, -104  #277 pc 39236
	lw	%x1, 100(%x2) #277 pc 39240
	addi	%x6, %x0, 3  #0 pc 39244
	mv	%f0, l.6293  #0 pc 39248
	sw	%x5, 96(%x2)  #280 pc 39252
	mv	%x5, %x6 #pc 39256
	sw	%x1, 100(%x2)  #280 pc 39260
	addi	%x2, %x2, 104  #280 pc 39264
	jal	%x1, create_float_array.2600  #280 pc 39268
	addi	%x2, %x2, -104  #280 pc 39272
	lw	%x1, 100(%x2) #280 pc 39276
	addi	%x6, %x0, 3  #0 pc 39280
	mv	%f0, l.6293  #0 pc 39284
	sw	%x5, 100(%x2)  #284 pc 39288
	mv	%x5, %x6 #pc 39292
	sw	%x1, 108(%x2)  #284 pc 39296
	addi	%x2, %x2, 112  #284 pc 39300
	jal	%x1, create_float_array.2600  #284 pc 39304
	addi	%x2, %x2, -112  #284 pc 39308
	lw	%x1, 108(%x2) #284 pc 39312
	addi	%x6, %x0, 3  #0 pc 39316
	mv	%f0, l.6293  #0 pc 39320
	sw	%x5, 104(%x2)  #286 pc 39324
	mv	%x5, %x6 #pc 39328
	sw	%x1, 108(%x2)  #286 pc 39332
	addi	%x2, %x2, 112  #286 pc 39336
	jal	%x1, create_float_array.2600  #286 pc 39340
	addi	%x2, %x2, -112  #286 pc 39344
	lw	%x1, 108(%x2) #286 pc 39348
	addi	%x6, %x0, 3  #0 pc 39352
	mv	%f0, l.6293  #0 pc 39356
	sw	%x5, 108(%x2)  #288 pc 39360
	mv	%x5, %x6 #pc 39364
	sw	%x1, 116(%x2)  #288 pc 39368
	addi	%x2, %x2, 120  #288 pc 39372
	jal	%x1, create_float_array.2600  #288 pc 39376
	addi	%x2, %x2, -120  #288 pc 39380
	lw	%x1, 116(%x2) #288 pc 39384
	addi	%x6, %x0, 3  #0 pc 39388
	mv	%f0, l.6293  #0 pc 39392
	sw	%x5, 112(%x2)  #292 pc 39396
	mv	%x5, %x6 #pc 39400
	sw	%x1, 116(%x2)  #292 pc 39404
	addi	%x2, %x2, 120  #292 pc 39408
	jal	%x1, create_float_array.2600  #292 pc 39412
	addi	%x2, %x2, -120  #292 pc 39416
	lw	%x1, 116(%x2) #292 pc 39420
	addi	%x6, %x0, 0  #0 pc 39424
	mv	%f0, l.6293  #0 pc 39428
	sw	%x5, 116(%x2)  #297 pc 39432
	mv	%x5, %x6 #pc 39436
	sw	%x1, 124(%x2)  #297 pc 39440
	addi	%x2, %x2, 128  #297 pc 39444
	jal	%x1, create_float_array.2600  #297 pc 39448
	addi	%x2, %x2, -128  #297 pc 39452
	lw	%x1, 124(%x2) #297 pc 39456
	mv	%x6, %x5  #297 pc 39460
	addi	%x5, %x0, 0  #0 pc 39464
	sw	%x6, 120(%x2)  #298 pc 39468
	sw	%x1, 124(%x2)  #298 pc 39472
	addi	%x2, %x2, 128  #298 pc 39476
	jal	%x1, create_array.2593  #298 pc 39480
	addi	%x2, %x2, -128  #298 pc 39484
	lw	%x1, 124(%x2) #298 pc 39488
	addi	%x6, %x0, 0  #0 pc 39492
	mv	%x7, %x3  #299 pc 39496
	addi	%x3, %x3, 8  #299 pc 39500
	sw	%x5, 4(%x7)  #299 pc 39504
	lw	%x5, 120(%x2)  #299 pc 39508
	sw	%x5, 0(%x7)  #299 pc 39512
	mv	%x5, %x7  #299 pc 39516
	mv	%x23, %x6 #pc 39520
	mv	%x6, %x5 #pc 39524
	mv	%x5, %x23 #pc 39528
	sw	%x1, 124(%x2)  #299 pc 39532
	addi	%x2, %x2, 128  #299 pc 39536
	jal	%x1, create_array.2593  #299 pc 39540
	addi	%x2, %x2, -128  #299 pc 39544
	lw	%x1, 124(%x2) #299 pc 39548
	mv	%x6, %x5  #299 pc 39552
	addi	%x5, %x0, 5  #0 pc 39556
	sw	%x1, 124(%x2)  #300 pc 39560
	addi	%x2, %x2, 128  #300 pc 39564
	jal	%x1, create_array.2593  #300 pc 39568
	addi	%x2, %x2, -128  #300 pc 39572
	lw	%x1, 124(%x2) #300 pc 39576
	addi	%x6, %x0, 0  #0 pc 39580
	mv	%f0, l.6293  #0 pc 39584
	sw	%x5, 124(%x2)  #305 pc 39588
	mv	%x5, %x6 #pc 39592
	sw	%x1, 132(%x2)  #305 pc 39596
	addi	%x2, %x2, 136  #305 pc 39600
	jal	%x1, create_float_array.2600  #305 pc 39604
	addi	%x2, %x2, -136  #305 pc 39608
	lw	%x1, 132(%x2) #305 pc 39612
	addi	%x6, %x0, 3  #0 pc 39616
	mv	%f0, l.6293  #0 pc 39620
	sw	%x5, 128(%x2)  #306 pc 39624
	mv	%x5, %x6 #pc 39628
	sw	%x1, 132(%x2)  #306 pc 39632
	addi	%x2, %x2, 136  #306 pc 39636
	jal	%x1, create_float_array.2600  #306 pc 39640
	addi	%x2, %x2, -136  #306 pc 39644
	lw	%x1, 132(%x2) #306 pc 39648
	addi	%x6, %x0, 60  #0 pc 39652
	lw	%x7, 128(%x2)  #307 pc 39656
	sw	%x5, 132(%x2)  #307 pc 39660
	mv	%x5, %x6 #pc 39664
	mv	%x6, %x7 #pc 39668
	sw	%x1, 140(%x2)  #307 pc 39672
	addi	%x2, %x2, 144  #307 pc 39676
	jal	%x1, create_array.2593  #307 pc 39680
	addi	%x2, %x2, -144  #307 pc 39684
	lw	%x1, 140(%x2) #307 pc 39688
	mv	%x6, %x3  #308 pc 39692
	addi	%x3, %x3, 8  #308 pc 39696
	sw	%x5, 4(%x6)  #308 pc 39700
	lw	%x5, 132(%x2)  #308 pc 39704
	sw	%x5, 0(%x6)  #308 pc 39708
	mv	%x5, %x6  #308 pc 39712
	addi	%x6, %x0, 0  #0 pc 39716
	mv	%f0, l.6293  #0 pc 39720
	sw	%x5, 136(%x2)  #313 pc 39724
	mv	%x5, %x6 #pc 39728
	sw	%x1, 140(%x2)  #313 pc 39732
	addi	%x2, %x2, 144  #313 pc 39736
	jal	%x1, create_float_array.2600  #313 pc 39740
	addi	%x2, %x2, -144  #313 pc 39744
	lw	%x1, 140(%x2) #313 pc 39748
	mv	%x6, %x5  #313 pc 39752
	addi	%x5, %x0, 0  #0 pc 39756
	sw	%x6, 140(%x2)  #314 pc 39760
	sw	%x1, 148(%x2)  #314 pc 39764
	addi	%x2, %x2, 152  #314 pc 39768
	jal	%x1, create_array.2593  #314 pc 39772
	addi	%x2, %x2, -152  #314 pc 39776
	lw	%x1, 148(%x2) #314 pc 39780
	mv	%x6, %x3  #315 pc 39784
	addi	%x3, %x3, 8  #315 pc 39788
	sw	%x5, 4(%x6)  #315 pc 39792
	lw	%x5, 140(%x2)  #315 pc 39796
	sw	%x5, 0(%x6)  #315 pc 39800
	mv	%x5, %x6  #315 pc 39804
	addi	%x6, %x0, 180  #0 pc 39808
	addi	%x7, %x0, 0  #0 pc 39812
	mv	%f0, l.6293  #0 pc 39816
	mv	%x9, %x3  #316 pc 39820
	addi	%x3, %x3, 16  #316 pc 39824
	fsw	%f0, 8(%x9) #316 pc 39828
	sw	%x5, 4(%x9)  #316 pc 39832
	sw	%x7, 0(%x9)  #316 pc 39836
	mv	%x5, %x9  #316 pc 39840
	mv	%x23, %x6 #pc 39844
	mv	%x6, %x5 #pc 39848
	mv	%x5, %x23 #pc 39852
	sw	%x1, 148(%x2)  #316 pc 39856
	addi	%x2, %x2, 152  #316 pc 39860
	jal	%x1, create_array.2593  #316 pc 39864
	addi	%x2, %x2, -152  #316 pc 39868
	lw	%x1, 148(%x2) #316 pc 39872
	addi	%x6, %x0, 1  #0 pc 39876
	addi	%x7, %x0, 0  #0 pc 39880
	sw	%x5, 144(%x2)  #320 pc 39884
	mv	%x5, %x6 #pc 39888
	mv	%x6, %x7 #pc 39892
	sw	%x1, 148(%x2)  #320 pc 39896
	addi	%x2, %x2, 152  #320 pc 39900
	jal	%x1, create_array.2593  #320 pc 39904
	addi	%x2, %x2, -152  #320 pc 39908
	lw	%x1, 148(%x2) #320 pc 39912
	mv	%x6, %x3  #803 pc 39916
	addi	%x3, %x3, 24  #803 pc 39920
	addi	%x24, %x0, 3384  #803 read_screen_settings.2755 pc 39924
	mv	%x7, %x24  #803 pc 39928
	sw	%x7, 0(%x6)  #803 pc 39932
	lw	%x7, 20(%x2)  #803 pc 39936
	sw	%x7, 20(%x6)  #803 pc 39940
	lw	%x9, 112(%x2)  #803 pc 39944
	sw	%x9, 16(%x6)  #803 pc 39948
	lw	%x10, 108(%x2)  #803 pc 39952
	sw	%x10, 12(%x6)  #803 pc 39956
	lw	%x11, 104(%x2)  #803 pc 39960
	sw	%x11, 8(%x6)  #803 pc 39964
	lw	%x12, 16(%x2)  #803 pc 39968
	sw	%x12, 4(%x6)  #803 pc 39972
	mv	%x12, %x3  #836 pc 39976
	addi	%x3, %x3, 16  #836 pc 39980
	addi	%x24, %x0, 4020  #836 read_light.2757 pc 39984
	mv	%x13, %x24  #836 pc 39988
	sw	%x13, 0(%x12)  #836 pc 39992
	lw	%x13, 24(%x2)  #836 pc 39996
	sw	%x13, 8(%x12)  #836 pc 40000
	lw	%x14, 28(%x2)  #836 pc 40004
	sw	%x14, 4(%x12)  #836 pc 40008
	mv	%x15, %x3  #899 pc 40012
	addi	%x3, %x3, 8  #899 pc 40016
	addi	%x24, %x0, 5432  #899 read_nth_object.2762 pc 40020
	mv	%x16, %x24  #899 pc 40024
	sw	%x16, 0(%x15)  #899 pc 40028
	lw	%x16, 12(%x2)  #899 pc 40032
	sw	%x16, 4(%x15)  #899 pc 40036
	mv	%x17, %x3  #982 pc 40040
	addi	%x3, %x3, 16  #982 pc 40044
	addi	%x24, %x0, 7080  #982 read_object.2764 pc 40048
	mv	%x18, %x24  #982 pc 40052
	sw	%x18, 0(%x17)  #982 pc 40056
	sw	%x15, 8(%x17)  #982 pc 40060
	lw	%x15, 8(%x2)  #982 pc 40064
	sw	%x15, 4(%x17)  #982 pc 40068
	mv	%x18, %x3  #991 pc 40072
	addi	%x3, %x3, 8  #991 pc 40076
	addi	%x24, %x0, 7208  #991 read_all_object.2766 pc 40080
	mv	%x19, %x24  #991 pc 40084
	sw	%x19, 0(%x18)  #991 pc 40088
	sw	%x17, 4(%x18)  #991 pc 40092
	mv	%x17, %x3  #1015 pc 40096
	addi	%x3, %x3, 8  #1015 pc 40100
	addi	%x24, %x0, 7484  #1015 read_and_network.2772 pc 40104
	mv	%x19, %x24  #1015 pc 40108
	sw	%x19, 0(%x17)  #1015 pc 40112
	lw	%x19, 36(%x2)  #1015 pc 40116
	sw	%x19, 4(%x17)  #1015 pc 40120
	mv	%x20, %x3  #1024 pc 40124
	addi	%x3, %x3, 24  #1024 pc 40128
	addi	%x24, %x0, 7592  #1024 read_parameter.2774 pc 40132
	mv	%x21, %x24  #1024 pc 40136
	sw	%x21, 0(%x20)  #1024 pc 40140
	sw	%x6, 20(%x20)  #1024 pc 40144
	sw	%x12, 16(%x20)  #1024 pc 40148
	sw	%x17, 12(%x20)  #1024 pc 40152
	sw	%x18, 8(%x20)  #1024 pc 40156
	lw	%x6, 44(%x2)  #1024 pc 40160
	sw	%x6, 4(%x20)  #1024 pc 40164
	mv	%x12, %x3  #1049 pc 40168
	addi	%x3, %x3, 8  #1049 pc 40172
	addi	%x24, %x0, 7796  #1049 solver_rect_surface.2776 pc 40176
	mv	%x17, %x24  #1049 pc 40180
	sw	%x17, 0(%x12)  #1049 pc 40184
	lw	%x17, 48(%x2)  #1049 pc 40188
	sw	%x17, 4(%x12)  #1049 pc 40192
	mv	%x18, %x3  #1064 pc 40196
	addi	%x3, %x3, 8  #1064 pc 40200
	addi	%x24, %x0, 8312  #1064 solver_rect.2785 pc 40204
	mv	%x21, %x24  #1064 pc 40208
	sw	%x21, 0(%x18)  #1064 pc 40212
	sw	%x12, 4(%x18)  #1064 pc 40216
	mv	%x12, %x3  #1073 pc 40220
	addi	%x3, %x3, 8  #1073 pc 40224
	addi	%x24, %x0, 8580  #1073 solver_surface.2791 pc 40228
	mv	%x21, %x24  #1073 pc 40232
	sw	%x21, 0(%x12)  #1073 pc 40236
	sw	%x17, 4(%x12)  #1073 pc 40240
	mv	%x21, %x3  #1124 pc 40244
	addi	%x3, %x3, 8  #1124 pc 40248
	addi	%x24, %x0, 9744  #1124 solver_second.2810 pc 40252
	mv	%x22, %x24  #1124 pc 40256
	sw	%x22, 0(%x21)  #1124 pc 40260
	sw	%x17, 4(%x21)  #1124 pc 40264
	mv	%x22, %x3  #1153 pc 40268
	addi	%x3, %x3, 24  #1153 pc 40272
	addi	%x24, %x0, 10280  #1153 solver.2816 pc 40276
	mv	%x23, %x24  #1153 pc 40280
	sw	%x23, 0(%x22)  #1153 pc 40284
	sw	%x12, 16(%x22)  #1153 pc 40288
	sw	%x21, 12(%x22)  #1153 pc 40292
	sw	%x18, 8(%x22)  #1153 pc 40296
	sw	%x16, 4(%x22)  #1153 pc 40300
	mv	%x12, %x3  #1185 pc 40304
	addi	%x3, %x3, 8  #1185 pc 40308
	addi	%x24, %x0, 10632  #1185 solver_rect_fast.2820 pc 40312
	mv	%x18, %x24  #1185 pc 40316
	sw	%x18, 0(%x12)  #1185 pc 40320
	sw	%x17, 4(%x12)  #1185 pc 40324
	mv	%x18, %x3  #1218 pc 40328
	addi	%x3, %x3, 8  #1218 pc 40332
	addi	%x24, %x0, 11692  #1218 solver_surface_fast.2827 pc 40336
	mv	%x21, %x24  #1218 pc 40340
	sw	%x21, 0(%x18)  #1218 pc 40344
	sw	%x17, 4(%x18)  #1218 pc 40348
	mv	%x21, %x3  #1227 pc 40352
	addi	%x3, %x3, 8  #1227 pc 40356
	addi	%x24, %x0, 11840  #1227 solver_second_fast.2833 pc 40360
	mv	%x23, %x24  #1227 pc 40364
	sw	%x23, 0(%x21)  #1227 pc 40368
	sw	%x17, 4(%x21)  #1227 pc 40372
	mv	%x23, %x3  #1247 pc 40376
	addi	%x3, %x3, 24  #1247 pc 40380
	sw	%x20, 148(%x2)  #1247 pc 40384
	addi	%x24, %x0, 12328  #1247 solver_fast.2839 pc 40388
	mv	%x20, %x24  #1247 pc 40392
	sw	%x20, 0(%x23)  #1247 pc 40396
	sw	%x18, 16(%x23)  #1247 pc 40400
	sw	%x21, 12(%x23)  #1247 pc 40404
	sw	%x12, 8(%x23)  #1247 pc 40408
	sw	%x16, 4(%x23)  #1247 pc 40412
	mv	%x18, %x3  #1267 pc 40416
	addi	%x3, %x3, 8  #1267 pc 40420
	addi	%x24, %x0, 12760  #1267 solver_surface_fast2.2843 pc 40424
	mv	%x20, %x24  #1267 pc 40428
	sw	%x20, 0(%x18)  #1267 pc 40432
	sw	%x17, 4(%x18)  #1267 pc 40436
	mv	%x20, %x3  #1275 pc 40440
	addi	%x3, %x3, 8  #1275 pc 40444
	addi	%x24, %x0, 12864  #1275 solver_second_fast2.2850 pc 40448
	mv	%x21, %x24  #1275 pc 40452
	sw	%x21, 0(%x20)  #1275 pc 40456
	sw	%x17, 4(%x20)  #1275 pc 40460
	mv	%x21, %x3  #1294 pc 40464
	addi	%x3, %x3, 24  #1294 pc 40468
	addi	%x24, %x0, 13232  #1294 solver_fast2.2857 pc 40472
	mv	%x10, %x24  #1294 pc 40476
	sw	%x10, 0(%x21)  #1294 pc 40480
	sw	%x18, 16(%x21)  #1294 pc 40484
	sw	%x20, 12(%x21)  #1294 pc 40488
	sw	%x12, 8(%x21)  #1294 pc 40492
	sw	%x16, 4(%x21)  #1294 pc 40496
	mv	%x10, %x3  #1391 pc 40500
	addi	%x3, %x3, 8  #1391 pc 40504
	addi	%x24, %x0, 15700  #1391 iter_setup_dirvec_constants.2869 pc 40508
	mv	%x12, %x24  #1391 pc 40512
	sw	%x12, 0(%x10)  #1391 pc 40516
	sw	%x16, 4(%x10)  #1391 pc 40520
	mv	%x12, %x3  #1408 pc 40524
	addi	%x3, %x3, 16  #1408 pc 40528
	addi	%x24, %x0, 16036  #1408 setup_dirvec_constants.2872 pc 40532
	mv	%x18, %x24  #1408 pc 40536
	sw	%x18, 0(%x12)  #1408 pc 40540
	sw	%x15, 8(%x12)  #1408 pc 40544
	sw	%x10, 4(%x12)  #1408 pc 40548
	mv	%x10, %x3  #1416 pc 40552
	addi	%x3, %x3, 8  #1416 pc 40556
	addi	%x24, %x0, 16064  #1416 setup_startp_constants.2874 pc 40560
	mv	%x18, %x24  #1416 pc 40564
	sw	%x18, 0(%x10)  #1416 pc 40568
	sw	%x16, 4(%x10)  #1416 pc 40572
	mv	%x18, %x3  #1435 pc 40576
	addi	%x3, %x3, 16  #1435 pc 40580
	addi	%x24, %x0, 16576  #1435 setup_startp.2877 pc 40584
	mv	%x20, %x24  #1435 pc 40588
	sw	%x20, 0(%x18)  #1435 pc 40592
	lw	%x20, 100(%x2)  #1435 pc 40596
	sw	%x20, 12(%x18)  #1435 pc 40600
	sw	%x10, 8(%x18)  #1435 pc 40604
	sw	%x15, 4(%x18)  #1435 pc 40608
	mv	%x10, %x3  #1485 pc 40612
	addi	%x3, %x3, 8  #1485 pc 40616
	sw	%x12, 152(%x2)  #1485 pc 40620
	addi	%x24, %x0, 17652  #1485 check_all_inside.2899 pc 40624
	mv	%x12, %x24  #1485 pc 40628
	sw	%x12, 0(%x10)  #1485 pc 40632
	sw	%x16, 4(%x10)  #1485 pc 40636
	mv	%x12, %x3  #1505 pc 40640
	addi	%x3, %x3, 32  #1505 pc 40644
	addi	%x24, %x0, 17812  #1505 shadow_check_and_group.2905 pc 40648
	mv	%x15, %x24  #1505 pc 40652
	sw	%x15, 0(%x12)  #1505 pc 40656
	sw	%x23, 28(%x12)  #1505 pc 40660
	sw	%x17, 24(%x12)  #1505 pc 40664
	sw	%x16, 20(%x12)  #1505 pc 40668
	lw	%x15, 136(%x2)  #1505 pc 40672
	sw	%x15, 16(%x12)  #1505 pc 40676
	sw	%x13, 12(%x12)  #1505 pc 40680
	lw	%x9, 60(%x2)  #1505 pc 40684
	sw	%x9, 8(%x12)  #1505 pc 40688
	sw	%x10, 4(%x12)  #1505 pc 40692
	mv	%x11, %x3  #1535 pc 40696
	addi	%x3, %x3, 16  #1535 pc 40700
	addi	%x24, %x0, 18308  #1535 shadow_check_one_or_group.2908 pc 40704
	mv	%x7, %x24  #1535 pc 40708
	sw	%x7, 0(%x11)  #1535 pc 40712
	sw	%x12, 8(%x11)  #1535 pc 40716
	sw	%x19, 4(%x11)  #1535 pc 40720
	mv	%x7, %x3  #1550 pc 40724
	addi	%x3, %x3, 24  #1550 pc 40728
	addi	%x24, %x0, 18464  #1550 shadow_check_one_or_matrix.2911 pc 40732
	mv	%x12, %x24  #1550 pc 40736
	sw	%x12, 0(%x7)  #1550 pc 40740
	sw	%x23, 20(%x7)  #1550 pc 40744
	sw	%x17, 16(%x7)  #1550 pc 40748
	sw	%x11, 12(%x7)  #1550 pc 40752
	sw	%x15, 8(%x7)  #1550 pc 40756
	sw	%x9, 4(%x7)  #1550 pc 40760
	mv	%x11, %x3  #1586 pc 40764
	addi	%x3, %x3, 40  #1586 pc 40768
	addi	%x24, %x0, 18888  #1586 solve_each_element.2914 pc 40772
	mv	%x12, %x24  #1586 pc 40776
	sw	%x12, 0(%x11)  #1586 pc 40780
	lw	%x12, 56(%x2)  #1586 pc 40784
	sw	%x12, 36(%x11)  #1586 pc 40788
	lw	%x23, 96(%x2)  #1586 pc 40792
	sw	%x23, 32(%x11)  #1586 pc 40796
	sw	%x17, 28(%x11)  #1586 pc 40800
	sw	%x22, 24(%x11)  #1586 pc 40804
	sw	%x16, 20(%x11)  #1586 pc 40808
	lw	%x15, 52(%x2)  #1586 pc 40812
	sw	%x15, 16(%x11)  #1586 pc 40816
	sw	%x9, 12(%x11)  #1586 pc 40820
	lw	%x14, 64(%x2)  #1586 pc 40824
	sw	%x14, 8(%x11)  #1586 pc 40828
	sw	%x10, 4(%x11)  #1586 pc 40832
	mv	%x13, %x3  #1627 pc 40836
	addi	%x3, %x3, 16  #1627 pc 40840
	sw	%x5, 156(%x2)  #1627 pc 40844
	addi	%x24, %x0, 19536  #1627 solve_one_or_network.2918 pc 40848
	mv	%x5, %x24  #1627 pc 40852
	sw	%x5, 0(%x13)  #1627 pc 40856
	sw	%x11, 8(%x13)  #1627 pc 40860
	sw	%x19, 4(%x13)  #1627 pc 40864
	mv	%x5, %x3  #1637 pc 40868
	addi	%x3, %x3, 24  #1637 pc 40872
	addi	%x24, %x0, 19672  #1637 trace_or_matrix.2922 pc 40876
	mv	%x11, %x24  #1637 pc 40880
	sw	%x11, 0(%x5)  #1637 pc 40884
	sw	%x12, 20(%x5)  #1637 pc 40888
	sw	%x23, 16(%x5)  #1637 pc 40892
	sw	%x17, 12(%x5)  #1637 pc 40896
	sw	%x22, 8(%x5)  #1637 pc 40900
	sw	%x13, 4(%x5)  #1637 pc 40904
	mv	%x11, %x3  #1664 pc 40908
	addi	%x3, %x3, 16  #1664 pc 40912
	addi	%x24, %x0, 20012  #1664 judge_intersection.2926 pc 40916
	mv	%x13, %x24  #1664 pc 40920
	sw	%x13, 0(%x11)  #1664 pc 40924
	sw	%x5, 12(%x11)  #1664 pc 40928
	sw	%x12, 8(%x11)  #1664 pc 40932
	sw	%x6, 4(%x11)  #1664 pc 40936
	mv	%x5, %x3  #1679 pc 40940
	addi	%x3, %x3, 40  #1679 pc 40944
	addi	%x24, %x0, 20160  #1679 solve_each_element_fast.2928 pc 40948
	mv	%x13, %x24  #1679 pc 40952
	sw	%x13, 0(%x5)  #1679 pc 40956
	sw	%x12, 36(%x5)  #1679 pc 40960
	sw	%x20, 32(%x5)  #1679 pc 40964
	sw	%x21, 28(%x5)  #1679 pc 40968
	sw	%x17, 24(%x5)  #1679 pc 40972
	sw	%x16, 20(%x5)  #1679 pc 40976
	sw	%x15, 16(%x5)  #1679 pc 40980
	sw	%x9, 12(%x5)  #1679 pc 40984
	sw	%x14, 8(%x5)  #1679 pc 40988
	sw	%x10, 4(%x5)  #1679 pc 40992
	mv	%x10, %x3  #1720 pc 40996
	addi	%x3, %x3, 16  #1720 pc 41000
	addi	%x24, %x0, 20840  #1720 solve_one_or_network_fast.2932 pc 41004
	mv	%x13, %x24  #1720 pc 41008
	sw	%x13, 0(%x10)  #1720 pc 41012
	sw	%x5, 8(%x10)  #1720 pc 41016
	sw	%x19, 4(%x10)  #1720 pc 41020
	mv	%x5, %x3  #1730 pc 41024
	addi	%x3, %x3, 24  #1730 pc 41028
	addi	%x24, %x0, 20976  #1730 trace_or_matrix_fast.2936 pc 41032
	mv	%x13, %x24  #1730 pc 41036
	sw	%x13, 0(%x5)  #1730 pc 41040
	sw	%x12, 16(%x5)  #1730 pc 41044
	sw	%x21, 12(%x5)  #1730 pc 41048
	sw	%x17, 8(%x5)  #1730 pc 41052
	sw	%x10, 4(%x5)  #1730 pc 41056
	mv	%x10, %x3  #1754 pc 41060
	addi	%x3, %x3, 16  #1754 pc 41064
	addi	%x24, %x0, 21308  #1754 judge_intersection_fast.2940 pc 41068
	mv	%x13, %x24  #1754 pc 41072
	sw	%x13, 0(%x10)  #1754 pc 41076
	sw	%x5, 12(%x10)  #1754 pc 41080
	sw	%x12, 8(%x10)  #1754 pc 41084
	sw	%x6, 4(%x10)  #1754 pc 41088
	mv	%x5, %x3  #1775 pc 41092
	addi	%x3, %x3, 16  #1775 pc 41096
	addi	%x24, %x0, 21456  #1775 get_nvector_rect.2942 pc 41100
	mv	%x13, %x24  #1775 pc 41104
	sw	%x13, 0(%x5)  #1775 pc 41108
	lw	%x13, 68(%x2)  #1775 pc 41112
	sw	%x13, 8(%x5)  #1775 pc 41116
	sw	%x15, 4(%x5)  #1775 pc 41120
	mv	%x17, %x3  #1783 pc 41124
	addi	%x3, %x3, 8  #1783 pc 41128
	addi	%x24, %x0, 21596  #1783 get_nvector_plane.2944 pc 41132
	mv	%x19, %x24  #1783 pc 41136
	sw	%x19, 0(%x17)  #1783 pc 41140
	sw	%x13, 4(%x17)  #1783 pc 41144
	mv	%x19, %x3  #1791 pc 41148
	addi	%x3, %x3, 16  #1791 pc 41152
	addi	%x24, %x0, 21776  #1791 get_nvector_second.2946 pc 41156
	mv	%x20, %x24  #1791 pc 41160
	sw	%x20, 0(%x19)  #1791 pc 41164
	sw	%x13, 8(%x19)  #1791 pc 41168
	sw	%x9, 4(%x19)  #1791 pc 41172
	mv	%x20, %x3  #1813 pc 41176
	addi	%x3, %x3, 16  #1813 pc 41180
	addi	%x24, %x0, 22504  #1813 get_nvector.2948 pc 41184
	mv	%x21, %x24  #1813 pc 41188
	sw	%x21, 0(%x20)  #1813 pc 41192
	sw	%x19, 12(%x20)  #1813 pc 41196
	sw	%x5, 8(%x20)  #1813 pc 41200
	sw	%x17, 4(%x20)  #1813 pc 41204
	mv	%x5, %x3  #1829 pc 41208
	addi	%x3, %x3, 8  #1829 pc 41212
	addi	%x24, %x0, 22648  #1829 utexture.2951 pc 41216
	mv	%x17, %x24  #1829 pc 41220
	sw	%x17, 0(%x5)  #1829 pc 41224
	lw	%x17, 72(%x2)  #1829 pc 41228
	sw	%x17, 4(%x5)  #1829 pc 41232
	mv	%x19, %x3  #1907 pc 41236
	addi	%x3, %x3, 16  #1907 pc 41240
	addi	%x24, %x0, 24504  #1907 add_light.2954 pc 41244
	mv	%x21, %x24  #1907 pc 41248
	sw	%x21, 0(%x19)  #1907 pc 41252
	sw	%x17, 8(%x19)  #1907 pc 41256
	lw	%x21, 80(%x2)  #1907 pc 41260
	sw	%x21, 4(%x19)  #1907 pc 41264
	mv	%x22, %x3  #1924 pc 41268
	addi	%x3, %x3, 40  #1924 pc 41272
	sw	%x20, 160(%x2)  #1924 pc 41276
	addi	%x24, %x0, 24748  #1924 trace_reflections.2958 pc 41280
	mv	%x20, %x24  #1924 pc 41284
	sw	%x20, 0(%x22)  #1924 pc 41288
	sw	%x7, 32(%x22)  #1924 pc 41292
	lw	%x20, 144(%x2)  #1924 pc 41296
	sw	%x20, 28(%x22)  #1924 pc 41300
	sw	%x6, 24(%x22)  #1924 pc 41304
	sw	%x13, 20(%x22)  #1924 pc 41308
	sw	%x10, 16(%x22)  #1924 pc 41312
	sw	%x15, 12(%x22)  #1924 pc 41316
	sw	%x14, 8(%x22)  #1924 pc 41320
	sw	%x19, 4(%x22)  #1924 pc 41324
	mv	%x20, %x3  #1953 pc 41328
	addi	%x3, %x3, 88  #1953 pc 41332
	sw	%x10, 164(%x2)  #1953 pc 41336
	addi	%x24, %x0, 25332  #1953 trace_ray.2963 pc 41340
	mv	%x10, %x24  #1953 pc 41344
	sw	%x10, 0(%x20)  #1953 pc 41348
	sw	%x5, 80(%x20)  #1953 pc 41352
	sw	%x22, 76(%x20)  #1953 pc 41356
	sw	%x12, 72(%x20)  #1953 pc 41360
	sw	%x17, 68(%x20)  #1953 pc 41364
	sw	%x23, 64(%x20)  #1953 pc 41368
	sw	%x7, 60(%x20)  #1953 pc 41372
	sw	%x18, 56(%x20)  #1953 pc 41376
	sw	%x21, 52(%x20)  #1953 pc 41380
	sw	%x6, 48(%x20)  #1953 pc 41384
	sw	%x16, 44(%x20)  #1953 pc 41388
	sw	%x13, 40(%x20)  #1953 pc 41392
	lw	%x10, 156(%x2)  #1953 pc 41396
	sw	%x10, 36(%x20)  #1953 pc 41400
	lw	%x12, 24(%x2)  #1953 pc 41404
	sw	%x12, 32(%x20)  #1953 pc 41408
	sw	%x11, 28(%x20)  #1953 pc 41412
	sw	%x15, 24(%x20)  #1953 pc 41416
	sw	%x9, 20(%x20)  #1953 pc 41420
	sw	%x14, 16(%x20)  #1953 pc 41424
	lw	%x11, 160(%x2)  #1953 pc 41428
	sw	%x11, 12(%x20)  #1953 pc 41432
	lw	%x15, 28(%x2)  #1953 pc 41436
	sw	%x15, 8(%x20)  #1953 pc 41440
	sw	%x19, 4(%x20)  #1953 pc 41444
	mv	%x15, %x3  #2046 pc 41448
	addi	%x3, %x3, 56  #2046 pc 41452
	addi	%x24, %x0, 27120  #2046 trace_diffuse_ray.2969 pc 41456
	mv	%x19, %x24  #2046 pc 41460
	sw	%x19, 0(%x15)  #2046 pc 41464
	sw	%x5, 48(%x15)  #2046 pc 41468
	sw	%x17, 44(%x15)  #2046 pc 41472
	sw	%x7, 40(%x15)  #2046 pc 41476
	sw	%x6, 36(%x15)  #2046 pc 41480
	sw	%x16, 32(%x15)  #2046 pc 41484
	sw	%x13, 28(%x15)  #2046 pc 41488
	sw	%x12, 24(%x15)  #2046 pc 41492
	lw	%x5, 164(%x2)  #2046 pc 41496
	sw	%x5, 20(%x15)  #2046 pc 41500
	sw	%x9, 16(%x15)  #2046 pc 41504
	sw	%x14, 12(%x15)  #2046 pc 41508
	sw	%x11, 8(%x15)  #2046 pc 41512
	lw	%x5, 76(%x2)  #2046 pc 41516
	sw	%x5, 4(%x15)  #2046 pc 41520
	mv	%x6, %x3  #2065 pc 41524
	addi	%x3, %x3, 8  #2065 pc 41528
	addi	%x24, %x0, 27612  #2065 iter_trace_diffuse_rays.2972 pc 41532
	mv	%x7, %x24  #2065 pc 41536
	sw	%x7, 0(%x6)  #2065 pc 41540
	sw	%x15, 4(%x6)  #2065 pc 41544
	mv	%x7, %x3  #2081 pc 41548
	addi	%x3, %x3, 16  #2081 pc 41552
	addi	%x24, %x0, 27920  #2081 trace_diffuse_rays.2977 pc 41556
	mv	%x9, %x24  #2081 pc 41560
	sw	%x9, 0(%x7)  #2081 pc 41564
	sw	%x18, 8(%x7)  #2081 pc 41568
	sw	%x6, 4(%x7)  #2081 pc 41572
	mv	%x6, %x3  #2091 pc 41576
	addi	%x3, %x3, 16  #2091 pc 41580
	addi	%x24, %x0, 28008  #2091 trace_diffuse_ray_80percent.2981 pc 41584
	mv	%x9, %x24  #2091 pc 41588
	sw	%x9, 0(%x6)  #2091 pc 41592
	sw	%x7, 8(%x6)  #2091 pc 41596
	lw	%x9, 124(%x2)  #2091 pc 41600
	sw	%x9, 4(%x6)  #2091 pc 41604
	mv	%x11, %x3  #2117 pc 41608
	addi	%x3, %x3, 16  #2117 pc 41612
	addi	%x24, %x0, 28404  #2117 calc_diffuse_using_1point.2985 pc 41616
	mv	%x13, %x24  #2117 pc 41620
	sw	%x13, 0(%x11)  #2117 pc 41624
	sw	%x6, 12(%x11)  #2117 pc 41628
	sw	%x21, 8(%x11)  #2117 pc 41632
	sw	%x5, 4(%x11)  #2117 pc 41636
	mv	%x6, %x3  #2136 pc 41640
	addi	%x3, %x3, 16  #2136 pc 41644
	addi	%x24, %x0, 28724  #2136 calc_diffuse_using_5points.2988 pc 41648
	mv	%x13, %x24  #2136 pc 41652
	sw	%x13, 0(%x6)  #2136 pc 41656
	sw	%x21, 8(%x6)  #2136 pc 41660
	sw	%x5, 4(%x6)  #2136 pc 41664
	mv	%x13, %x3  #2156 pc 41668
	addi	%x3, %x3, 8  #2156 pc 41672
	addi	%x24, %x0, 29264  #2156 do_without_neighbors.2994 pc 41676
	mv	%x14, %x24  #2156 pc 41680
	sw	%x14, 0(%x13)  #2156 pc 41684
	sw	%x11, 4(%x13)  #2156 pc 41688
	mv	%x11, %x3  #2171 pc 41692
	addi	%x3, %x3, 8  #2171 pc 41696
	addi	%x24, %x0, 29476  #2171 neighbors_exist.2997 pc 41700
	mv	%x14, %x24  #2171 pc 41704
	sw	%x14, 0(%x11)  #2171 pc 41708
	lw	%x14, 84(%x2)  #2171 pc 41712
	sw	%x14, 4(%x11)  #2171 pc 41716
	mv	%x15, %x3  #2208 pc 41720
	addi	%x3, %x3, 16  #2208 pc 41724
	addi	%x24, %x0, 30028  #2208 try_exploit_neighbors.3010 pc 41728
	mv	%x17, %x24  #2208 pc 41732
	sw	%x17, 0(%x15)  #2208 pc 41736
	sw	%x13, 8(%x15)  #2208 pc 41740
	sw	%x6, 4(%x15)  #2208 pc 41744
	mv	%x6, %x3  #2235 pc 41748
	addi	%x3, %x3, 8  #2235 pc 41752
	addi	%x24, %x0, 30388  #2235 write_ppm_header.3017 pc 41756
	mv	%x17, %x24  #2235 pc 41760
	sw	%x17, 0(%x6)  #2235 pc 41764
	sw	%x14, 4(%x6)  #2235 pc 41768
	mv	%x17, %x3  #2261 pc 41772
	addi	%x3, %x3, 8  #2261 pc 41776
	addi	%x24, %x0, 30784  #2261 write_rgb.3023 pc 41780
	mv	%x18, %x24  #2261 pc 41784
	sw	%x18, 0(%x17)  #2261 pc 41788
	sw	%x21, 4(%x17)  #2261 pc 41792
	mv	%x18, %x3  #2284 pc 41796
	addi	%x3, %x3, 16  #2284 pc 41800
	addi	%x24, %x0, 31020  #2284 pretrace_diffuse_rays.3025 pc 41804
	mv	%x19, %x24  #2284 pc 41808
	sw	%x19, 0(%x18)  #2284 pc 41812
	sw	%x7, 12(%x18)  #2284 pc 41816
	sw	%x9, 8(%x18)  #2284 pc 41820
	sw	%x5, 4(%x18)  #2284 pc 41824
	mv	%x5, %x3  #2314 pc 41828
	addi	%x3, %x3, 40  #2314 pc 41832
	addi	%x24, %x0, 31460  #2314 pretrace_pixels.3028 pc 41836
	mv	%x7, %x24  #2314 pc 41840
	sw	%x7, 0(%x5)  #2314 pc 41844
	lw	%x7, 20(%x2)  #2314 pc 41848
	sw	%x7, 36(%x5)  #2314 pc 41852
	sw	%x20, 32(%x5)  #2314 pc 41856
	sw	%x23, 28(%x5)  #2314 pc 41860
	lw	%x7, 104(%x2)  #2314 pc 41864
	sw	%x7, 24(%x5)  #2314 pc 41868
	lw	%x7, 92(%x2)  #2314 pc 41872
	sw	%x7, 20(%x5)  #2314 pc 41876
	sw	%x21, 16(%x5)  #2314 pc 41880
	lw	%x19, 116(%x2)  #2314 pc 41884
	sw	%x19, 12(%x5)  #2314 pc 41888
	sw	%x18, 8(%x5)  #2314 pc 41892
	lw	%x18, 88(%x2)  #2314 pc 41896
	sw	%x18, 4(%x5)  #2314 pc 41900
	mv	%x19, %x3  #2339 pc 41904
	addi	%x3, %x3, 32  #2339 pc 41908
	addi	%x24, %x0, 32092  #2339 pretrace_line.3035 pc 41912
	mv	%x20, %x24  #2339 pc 41916
	sw	%x20, 0(%x19)  #2339 pc 41920
	lw	%x20, 112(%x2)  #2339 pc 41924
	sw	%x20, 24(%x19)  #2339 pc 41928
	lw	%x20, 108(%x2)  #2339 pc 41932
	sw	%x20, 20(%x19)  #2339 pc 41936
	sw	%x7, 16(%x19)  #2339 pc 41940
	sw	%x5, 12(%x19)  #2339 pc 41944
	sw	%x14, 8(%x19)  #2339 pc 41948
	sw	%x18, 4(%x19)  #2339 pc 41952
	mv	%x5, %x3  #2355 pc 41956
	addi	%x3, %x3, 32  #2355 pc 41960
	addi	%x24, %x0, 32312  #2355 scan_pixel.3039 pc 41964
	mv	%x20, %x24  #2355 pc 41968
	sw	%x20, 0(%x5)  #2355 pc 41972
	sw	%x17, 24(%x5)  #2355 pc 41976
	sw	%x15, 20(%x5)  #2355 pc 41980
	sw	%x21, 16(%x5)  #2355 pc 41984
	sw	%x11, 12(%x5)  #2355 pc 41988
	sw	%x14, 8(%x5)  #2355 pc 41992
	sw	%x13, 4(%x5)  #2355 pc 41996
	mv	%x11, %x3  #2375 pc 42000
	addi	%x3, %x3, 16  #2375 pc 42004
	addi	%x24, %x0, 32712  #2375 scan_line.3046 pc 42008
	mv	%x13, %x24  #2375 pc 42012
	sw	%x13, 0(%x11)  #2375 pc 42016
	sw	%x5, 12(%x11)  #2375 pc 42020
	sw	%x19, 8(%x11)  #2375 pc 42024
	sw	%x14, 4(%x11)  #2375 pc 42028
	mv	%x5, %x3  #2427 pc 42032
	addi	%x3, %x3, 8  #2427 pc 42036
	addi	%x24, %x0, 33632  #2427 create_pixelline.3060 pc 42040
	mv	%x13, %x24  #2427 pc 42044
	sw	%x13, 0(%x5)  #2427 pc 42048
	sw	%x14, 4(%x5)  #2427 pc 42052
	mv	%x13, %x3  #2455 pc 42056
	addi	%x3, %x3, 8  #2455 pc 42060
	addi	%x24, %x0, 33900  #2455 calc_dirvec.3067 pc 42064
	mv	%x15, %x24  #2455 pc 42068
	sw	%x15, 0(%x13)  #2455 pc 42072
	sw	%x9, 4(%x13)  #2455 pc 42076
	mv	%x15, %x3  #2476 pc 42080
	addi	%x3, %x3, 8  #2476 pc 42084
	addi	%x24, %x0, 34968  #2476 calc_dirvecs.3075 pc 42088
	mv	%x17, %x24  #2476 pc 42092
	sw	%x17, 0(%x15)  #2476 pc 42096
	sw	%x13, 4(%x15)  #2476 pc 42100
	mv	%x13, %x3  #2490 pc 42104
	addi	%x3, %x3, 8  #2490 pc 42108
	addi	%x24, %x0, 35280  #2490 calc_dirvec_rows.3080 pc 42112
	mv	%x17, %x24  #2490 pc 42116
	sw	%x17, 0(%x13)  #2490 pc 42120
	sw	%x15, 4(%x13)  #2490 pc 42124
	mv	%x15, %x3  #2503 pc 42128
	addi	%x3, %x3, 8  #2503 pc 42132
	addi	%x24, %x0, 35476  #2503 create_dirvec.3084 pc 42136
	mv	%x17, %x24  #2503 pc 42140
	sw	%x17, 0(%x15)  #2503 pc 42144
	lw	%x17, 8(%x2)  #2503 pc 42148
	sw	%x17, 4(%x15)  #2503 pc 42152
	mv	%x20, %x3  #2509 pc 42156
	addi	%x3, %x3, 8  #2509 pc 42160
	addi	%x24, %x0, 35584  #2509 create_dirvec_elements.3086 pc 42164
	mv	%x21, %x24  #2509 pc 42168
	sw	%x21, 0(%x20)  #2509 pc 42172
	sw	%x15, 4(%x20)  #2509 pc 42176
	mv	%x21, %x3  #2516 pc 42180
	addi	%x3, %x3, 16  #2516 pc 42184
	addi	%x24, %x0, 35692  #2516 create_dirvecs.3089 pc 42188
	mv	%x22, %x24  #2516 pc 42192
	sw	%x22, 0(%x21)  #2516 pc 42196
	sw	%x9, 12(%x21)  #2516 pc 42200
	sw	%x20, 8(%x21)  #2516 pc 42204
	sw	%x15, 4(%x21)  #2516 pc 42208
	mv	%x20, %x3  #2528 pc 42212
	addi	%x3, %x3, 8  #2528 pc 42216
	addi	%x24, %x0, 35892  #2528 init_dirvec_constants.3091 pc 42220
	mv	%x22, %x24  #2528 pc 42224
	sw	%x22, 0(%x20)  #2528 pc 42228
	lw	%x22, 152(%x2)  #2528 pc 42232
	sw	%x22, 4(%x20)  #2528 pc 42236
	mv	%x23, %x3  #2535 pc 42240
	addi	%x3, %x3, 16  #2535 pc 42244
	sw	%x5, 168(%x2)  #2535 pc 42248
	addi	%x24, %x0, 35996  #2535 init_vecset_constants.3094 pc 42252
	mv	%x5, %x24  #2535 pc 42256
	sw	%x5, 0(%x23)  #2535 pc 42260
	sw	%x20, 8(%x23)  #2535 pc 42264
	sw	%x9, 4(%x23)  #2535 pc 42268
	mv	%x5, %x3  #2542 pc 42272
	addi	%x3, %x3, 16  #2542 pc 42276
	addi	%x24, %x0, 36104  #2542 init_dirvecs.3096 pc 42280
	mv	%x9, %x24  #2542 pc 42284
	sw	%x9, 0(%x5)  #2542 pc 42288
	sw	%x23, 12(%x5)  #2542 pc 42292
	sw	%x21, 8(%x5)  #2542 pc 42296
	sw	%x13, 4(%x5)  #2542 pc 42300
	mv	%x9, %x3  #2553 pc 42304
	addi	%x3, %x3, 16  #2553 pc 42308
	addi	%x24, %x0, 36220  #2553 add_reflection.3098 pc 42312
	mv	%x13, %x24  #2553 pc 42316
	sw	%x13, 0(%x9)  #2553 pc 42320
	sw	%x22, 12(%x9)  #2553 pc 42324
	lw	%x13, 144(%x2)  #2553 pc 42328
	sw	%x13, 8(%x9)  #2553 pc 42332
	sw	%x15, 4(%x9)  #2553 pc 42336
	mv	%x13, %x3  #2562 pc 42340
	addi	%x3, %x3, 16  #2562 pc 42344
	addi	%x24, %x0, 36436  #2562 setup_rect_reflection.3105 pc 42348
	mv	%x15, %x24  #2562 pc 42352
	sw	%x15, 0(%x13)  #2562 pc 42356
	sw	%x10, 12(%x13)  #2562 pc 42360
	sw	%x12, 8(%x13)  #2562 pc 42364
	sw	%x9, 4(%x13)  #2562 pc 42368
	mv	%x15, %x3  #2576 pc 42372
	addi	%x3, %x3, 16  #2576 pc 42376
	addi	%x24, %x0, 36912  #2576 setup_surface_reflection.3108 pc 42380
	mv	%x20, %x24  #2576 pc 42384
	sw	%x20, 0(%x15)  #2576 pc 42388
	sw	%x10, 12(%x15)  #2576 pc 42392
	sw	%x12, 8(%x15)  #2576 pc 42396
	sw	%x9, 4(%x15)  #2576 pc 42400
	mv	%x9, %x3  #2591 pc 42404
	addi	%x3, %x3, 16  #2591 pc 42408
	addi	%x24, %x0, 37360  #2591 setup_reflections.3111 pc 42412
	mv	%x10, %x24  #2591 pc 42416
	sw	%x10, 0(%x9)  #2591 pc 42420
	sw	%x15, 12(%x9)  #2591 pc 42424
	sw	%x13, 8(%x9)  #2591 pc 42428
	sw	%x16, 4(%x9)  #2591 pc 42432
	mv	%x10, %x3  #2613 pc 42436
	addi	%x3, %x3, 64  #2613 pc 42440
	addi	%x24, %x0, 37644  #2613 rt.3113 pc 42444
	mv	%x13, %x24  #2613 pc 42448
	sw	%x13, 0(%x10)  #2613 pc 42452
	sw	%x6, 56(%x10)  #2613 pc 42456
	sw	%x9, 52(%x10)  #2613 pc 42460
	sw	%x22, 48(%x10)  #2613 pc 42464
	sw	%x7, 44(%x10)  #2613 pc 42468
	sw	%x11, 40(%x10)  #2613 pc 42472
	lw	%x6, 148(%x2)  #2613 pc 42476
	sw	%x6, 36(%x10)  #2613 pc 42480
	sw	%x19, 32(%x10)  #2613 pc 42484
	sw	%x17, 28(%x10)  #2613 pc 42488
	lw	%x6, 136(%x2)  #2613 pc 42492
	sw	%x6, 24(%x10)  #2613 pc 42496
	sw	%x12, 20(%x10)  #2613 pc 42500
	sw	%x5, 16(%x10)  #2613 pc 42504
	sw	%x14, 12(%x10)  #2613 pc 42508
	sw	%x18, 8(%x10)  #2613 pc 42512
	lw	%x5, 168(%x2)  #2613 pc 42516
	sw	%x5, 4(%x10)  #2613 pc 42520
	addi	%x5, %x0, 512  #0 pc 42524
	addi	%x7, %x0, 3  #0 pc 42528
	mv	%x6, %x5 #pc 42532
	mv	%x22, %x10 #pc 42536
	sw	%x1, 172(%x2)  #2634 pc 42540
	lw	%x23, 0(%x22)  #2634 pc 42544
	addi	%x2, %x2, 176  #2634 pc 42548
	jalr	%x1, %x23, 0  #2634 pc 42552
	addi	%x2, %x2, -176  #2634 pc 42556
	lw	%x1, 172(%x2)  #2634 pc 42560
	addi	%x2, %x2, 112
