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
	addi	%x24, %x0, 4  #pc 1312
	add	%x24, %x24, %x5  #119 pc 1316
	lw	%x6, 0(%x24)  #119 pc 1320
	add	%x24, %x0, %x5  #119 pc 1324
	lw	%x5, 0(%x24)  #119 pc 1328
	sub	%x5, %x0, %x5  #120 pc 1332
	mv	%x7, %x3  #120 pc 1336
	addi	%x3, %x3, 8  #120 pc 1340
	addi	%x24, %x0, 4  #pc 1344
	add	%x24, %x24, %x7  #120 pc 1348
	sw	%x6, 0(%x24)  #120 pc 1352
	add	%x24, %x0, %x7  #120 pc 1356
	sw	%x5, 0(%x24)  #120 pc 1360
	mv	%x5, %x7  #120 pc 1364
	ret #pc 1368
	nop #pc 1372
be_else.9203: #pc 1372
	mv	%x7, %x3  #121 pc 1376
	addi	%x3, %x3, 8  #121 pc 1380
	addi	%x24, %x0, 4  #pc 1384
	add	%x24, %x24, %x7  #121 pc 1388
	sw	%x6, 0(%x24)  #121 pc 1392
	add	%x24, %x0, %x7  #121 pc 1396
	sw	%x5, 0(%x24)  #121 pc 1400
	mv	%x5, %x7  #121 pc 1404
	ret #pc 1408
	nop #pc 1412
bge_else.9201: #pc 1412
	mv	%x7, %x3  #123 pc 1416
	addi	%x3, %x3, 8  #123 pc 1420
	addi	%x24, %x0, 4  #pc 1424
	add	%x24, %x24, %x7  #123 pc 1428
	sw	%x6, 0(%x24)  #123 pc 1432
	add	%x24, %x0, %x7  #123 pc 1436
	sw	%x5, 0(%x24)  #123 pc 1440
	mv	%x5, %x7  #123 pc 1444
	ret #pc 1448
	nop #pc 1452
read_int.2580:  #pc 1452
	addi	%x5, %x0, 0  #0 pc 1456
	addi	%x6, %x0, 0  #0 pc 1460
	sw	%x1, 4(%x2)  #127 pc 1464
	addi	%x2, %x2, 8  #127 pc 1468
	jal	%x1, read_int_sub.2577  #127 pc 1472
	addi	%x2, %x2, -8  #127 pc 1476
	lw	%x1, 4(%x2) #127 pc 1480
	add	%x24, %x0, %x5  #127 pc 1484
	lw	%x5, 0(%x24)  #127 pc 1488
	ret #pc 1492
	nop #pc 1496
pow.2582:  #pc 1496
	bge	%x0, %x5, 12  #132 pc 1500
	j	ble_else.9204 #pc 1504
	nop #pc 1508
	ret #pc 1512
	nop #pc 1516
ble_else.9204: #pc 1516
	itof	%f2, %x5  #135 pc 1520
	fmul	%f0, %f0, %f2  #135 pc 1524
	addi	%x5, %x5, -1  #135 pc 1528
	j	pow.2582  #135 pc 1532
	nop #pc 1536
read_float_sub.2585:  #pc 1536
	in	%x5  #139 pc 1540
	addi	%x24, %x0, 48  #pc 1544
	bge	%x5, %x24, 12  #140 pc 1548
	j	bge_else.9205 #pc 1552
	nop #pc 1556
	addi	%x24, %x0, 57  #pc 1560
	bge	%x24, %x5, 12  #141 pc 1564
	j	ble_else.9206 #pc 1568
	nop #pc 1572
	mv	%f2, l.6333  #0 pc 1576
	fmul	%f0, %f0, %f2  #142 pc 1580
	addi	%x5, %x5, -48  #142 pc 1584
	itof	%f2, %x5  #142 pc 1588
	fadd	%f0, %f0, %f2  #142 pc 1592
	j	read_float_sub.2585  #142 pc 1596
	nop #pc 1600
ble_else.9206: #pc 1600
	addi	%x24, %x0, 45  #pc 1604
	beq	%x5, %x24, 12  #144 pc 1608
	j	be_else.9207 #pc 1612
	nop #pc 1616
	sw	%x1, 4(%x2)  #145 pc 1620
	addi	%x2, %x2, 8  #145 pc 1624
	jal	%x1, read_float_sub.2585  #145 pc 1628
	addi	%x2, %x2, -8  #145 pc 1632
	lw	%x1, 4(%x2) #145 pc 1636
	fsub	%f0, %f30, %f0  #145 pc 1640
	ret #pc 1644
	nop #pc 1648
be_else.9207: #pc 1648
	addi	%x24, %x0, 46  #pc 1652
	beq	%x5, %x24, 12  #147 pc 1656
	j	be_else.9208 #pc 1660
	nop #pc 1664
	addi	%x5, %x0, 0  #0 pc 1668
	addi	%x6, %x0, 0  #0 pc 1672
	fsw	%f0, 0(%x2)  #148 pc 1676
	sw	%x1, 12(%x2)  #148 pc 1680
	addi	%x2, %x2, 16  #148 pc 1684
	jal	%x1, read_int_sub.2577  #148 pc 1688
	addi	%x2, %x2, -16  #148 pc 1692
	lw	%x1, 12(%x2) #148 pc 1696
	addi	%x24, %x0, 4  #pc 1700
	add	%x24, %x24, %x5  #148 pc 1704
	lw	%x6, 0(%x24)  #148 pc 1708
	add	%x24, %x0, %x5  #148 pc 1712
	lw	%x5, 0(%x24)  #148 pc 1716
	itof	%f0, %x5  #149 pc 1720
	mv	%f2, l.6333  #0 pc 1724
	fsw	%f0, 8(%x2)  #149 pc 1728
	mv	%x5, %x6 #pc 1732
	mv	%f0, %f2 #pc 1736
	mv	%f1, %f3 #pc 1740
	sw	%x1, 20(%x2)  #149 pc 1744
	addi	%x2, %x2, 24  #149 pc 1748
	jal	%x1, pow.2582  #149 pc 1752
	addi	%x2, %x2, -24  #149 pc 1756
	lw	%x1, 20(%x2) #149 pc 1760
	flw	%f2, 8(%x2)  #149 pc 1764
	fdiv	%f0, %f2, %f0  #149 pc 1768
	flw	%f2, 0(%x2)  #149 pc 1772
	fadd	%f0, %f2, %f0  #149 pc 1776
	ret #pc 1780
	nop #pc 1784
be_else.9208: #pc 1784
	ret #pc 1788
	nop #pc 1792
bge_else.9205: #pc 1792
	ret #pc 1796
	nop #pc 1800
read_float.2587:  #pc 1800
	mv	%f0, l.6293  #0 pc 1804
	j	read_float_sub.2585  #156 pc 1808
	nop #pc 1812
assign_array.2589:  #pc 1812
	beq	%x7, %x0, 12  #160 pc 1816
	j	be_else.9209 #pc 1820
	nop #pc 1824
	slli	%x7, %x7, 2  #161 pc 1828
	add	%x24, %x7, %x5  #161 pc 1832
	sw	%x6, 0(%x24)  #161 pc 1836
	ret #pc 1840
	nop #pc 1844
be_else.9209: #pc 1844
	slli	%x9, %x7, 2  #163 pc 1848
	add	%x24, %x9, %x5  #163 pc 1852
	sw	%x6, 0(%x24)  #163 pc 1856
	addi	%x7, %x7, -1  #164 pc 1860
	j	assign_array.2589  #164 pc 1864
	nop #pc 1868
create_array.2593:  #pc 1868
	mv	%x7, %x3  #168 pc 1872
	sw	%x7, 0(%x2)  #171 pc 1876
	mv	%x23, %x7 #pc 1880
	mv	%x7, %x5 #pc 1884
	mv	%x5, %x23 #pc 1888
	sw	%x1, 4(%x2)  #171 pc 1892
	addi	%x2, %x2, 8  #171 pc 1896
	jal	%x1, assign_array.2589  #171 pc 1900
	addi	%x2, %x2, -8  #171 pc 1904
	lw	%x1, 4(%x2) #171 pc 1908
	lw	%x5, 0(%x2)  #172 pc 1912
	ret #pc 1916
	nop #pc 1920
assign_farray.2596:  #pc 1920
	beq	%x6, %x0, 12  #176 pc 1924
	j	be_else.9211 #pc 1928
	nop #pc 1932
	slli	%x6, %x6, 3  #177 pc 1936
	add	%x24, %x6, %x5  #177 pc 1940
	fsw	%f0, 0(%x24) #177 pc 1944
	ret #pc 1948
	nop #pc 1952
be_else.9211: #pc 1952
	slli	%x7, %x6, 3  #179 pc 1956
	add	%x24, %x7, %x5  #179 pc 1960
	fsw	%f0, 0(%x24) #179 pc 1964
	addi	%x6, %x6, -1  #180 pc 1968
	j	assign_farray.2596  #180 pc 1972
	nop #pc 1976
create_float_array.2600:  #pc 1976
	mv	%x6, %x3  #184 pc 1980
	sw	%x6, 0(%x2)  #187 pc 1984
	mv	%x23, %x6 #pc 1988
	mv	%x6, %x5 #pc 1992
	mv	%x5, %x23 #pc 1996
	sw	%x1, 4(%x2)  #187 pc 2000
	addi	%x2, %x2, 8  #187 pc 2004
	jal	%x1, assign_farray.2596  #187 pc 2008
	addi	%x2, %x2, -8  #187 pc 2012
	lw	%x1, 4(%x2) #187 pc 2016
	lw	%x5, 0(%x2)  #188 pc 2020
	ret #pc 2024
	nop #pc 2028
xor.2633:  #pc 2028
	beq	%x5, %x0, 12  #326 pc 2032
	j	be_else.9213 #pc 2036
	nop #pc 2040
	mv	%x5, %x6  #326 pc 2044
	ret #pc 2048
	nop #pc 2052
be_else.9213: #pc 2052
	beq	%x6, %x0, 12  #326 pc 2056
	j	be_else.9214 #pc 2060
	nop #pc 2064
	addi	%x5, %x0, 1  #0 pc 2068
	ret #pc 2072
	nop #pc 2076
be_else.9214: #pc 2076
	addi	%x5, %x0, 0  #0 pc 2080
	ret #pc 2084
	nop #pc 2088
sgn.2636:  #pc 2088
	fsw	%f0, 0(%x2)  #334 pc 2092
	sw	%x1, 12(%x2)  #334 pc 2096
	addi	%x2, %x2, 16  #334 pc 2100
	jal	%x1, fiszero.2528  #334 pc 2104
	addi	%x2, %x2, -16  #334 pc 2108
	lw	%x1, 12(%x2) #334 pc 2112
	beq	%x5, %x0, 12  #334 pc 2116
	j	be_else.9215 #pc 2120
	nop #pc 2124
	flw	%f0, 0(%x2)  #335 pc 2128
	sw	%x1, 12(%x2)  #335 pc 2132
	addi	%x2, %x2, 16  #335 pc 2136
	jal	%x1, fispos.2530  #335 pc 2140
	addi	%x2, %x2, -16  #335 pc 2144
	lw	%x1, 12(%x2) #335 pc 2148
	beq	%x5, %x0, 12  #335 pc 2152
	j	be_else.9216 #pc 2156
	nop #pc 2160
	mv	%x5, l.6343  #0 pc 2164
	ret #pc 2168
	nop #pc 2172
be_else.9216: #pc 2172
	mv	%x5, l.6305  #0 pc 2176
	ret #pc 2180
	nop #pc 2184
be_else.9215: #pc 2184
	mv	%x5, l.6293  #0 pc 2188
	ret #pc 2192
	nop #pc 2196
fneg_cond.2638:  #pc 2196
	beq	%x5, %x0, 12  #341 pc 2200
	j	be_else.9217 #pc 2204
	nop #pc 2208
	j	fneg.2534  #341 pc 2212
	nop #pc 2216
be_else.9217: #pc 2216
	ret #pc 2220
	nop #pc 2224
add_mod5.2641:  #pc 2224
	add	%x5, %x5, %x6  #346 pc 2228
	addi	%x24, %x0, 5  #pc 2232
	bge	%x5, %x24, 12  #347 pc 2236
	j	bge_else.9218 #pc 2240
	nop #pc 2244
	addi	%x5, %x5, -5  #347 pc 2248
	ret #pc 2252
	nop #pc 2256
bge_else.9218: #pc 2256
	ret #pc 2260
	nop #pc 2264
vecset.2644:  #pc 2264
	add	%x24, %x0, %x5  #362 pc 2268
	fsw	%f0, 0(%x24) #362 pc 2272
	addi	%x24, %x0, 8  #pc 2276
	add	%x24, %x24, %x5  #363 pc 2280
	fsw	%f2, 0(%x24) #363 pc 2284
	addi	%x24, %x0, 16  #pc 2288
	add	%x24, %x24, %x5  #364 pc 2292
	fsw	%f4, 0(%x24) #364 pc 2296
	ret #pc 2300
	nop #pc 2304
vecfill.2649:  #pc 2304
	add	%x24, %x0, %x5  #369 pc 2308
	fsw	%f0, 0(%x24) #369 pc 2312
	addi	%x24, %x0, 8  #pc 2316
	add	%x24, %x24, %x5  #370 pc 2320
	fsw	%f0, 0(%x24) #370 pc 2324
	addi	%x24, %x0, 16  #pc 2328
	add	%x24, %x24, %x5  #371 pc 2332
	fsw	%f0, 0(%x24) #371 pc 2336
	ret #pc 2340
	nop #pc 2344
vecbzero.2652:  #pc 2344
	mv	%f0, l.6293  #0 pc 2348
	j	vecfill.2649  #376 pc 2352
	nop #pc 2356
veccpy.2654:  #pc 2356
	add	%x24, %x0, %x6  #381 pc 2360
	flw	%f0, 0(%x24)  #381 pc 2364
	add	%x24, %x0, %x5  #381 pc 2368
	fsw	%f0, 0(%x24) #381 pc 2372
	addi	%x24, %x0, 8  #pc 2376
	add	%x24, %x24, %x6  #382 pc 2380
	flw	%f0, 0(%x24)  #382 pc 2384
	addi	%x24, %x0, 8  #pc 2388
	add	%x24, %x24, %x5  #382 pc 2392
	fsw	%f0, 0(%x24) #382 pc 2396
	addi	%x24, %x0, 16  #pc 2400
	add	%x24, %x24, %x6  #383 pc 2404
	flw	%f0, 0(%x24)  #383 pc 2408
	addi	%x24, %x0, 16  #pc 2412
	add	%x24, %x24, %x5  #383 pc 2416
	fsw	%f0, 0(%x24) #383 pc 2420
	ret #pc 2424
	nop #pc 2428
vecunit_sgn.2657:  #pc 2428
	add	%x24, %x0, %x5  #405 pc 2432
	flw	%f0, 0(%x24)  #405 pc 2436
	sw	%x6, 0(%x2)  #405 pc 2440
	sw	%x5, 4(%x2)  #405 pc 2444
	sw	%x1, 12(%x2)  #405 pc 2448
	addi	%x2, %x2, 16  #405 pc 2452
	jal	%x1, fsqr.2536  #405 pc 2456
	addi	%x2, %x2, -16  #405 pc 2460
	lw	%x1, 12(%x2) #405 pc 2464
	lw	%x5, 4(%x2)  #405 pc 2468
	addi	%x24, %x0, 8  #pc 2472
	add	%x24, %x24, %x5  #405 pc 2476
	flw	%f2, 0(%x24)  #405 pc 2480
	fsw	%f0, 8(%x2)  #405 pc 2484
	mv	%f0, %f2 #pc 2488
	mv	%f1, %f3 #pc 2492
	sw	%x1, 20(%x2)  #405 pc 2496
	addi	%x2, %x2, 24  #405 pc 2500
	jal	%x1, fsqr.2536  #405 pc 2504
	addi	%x2, %x2, -24  #405 pc 2508
	lw	%x1, 20(%x2) #405 pc 2512
	flw	%f2, 8(%x2)  #405 pc 2516
	fadd	%f0, %f2, %f0  #405 pc 2520
	lw	%x5, 4(%x2)  #405 pc 2524
	addi	%x24, %x0, 16  #pc 2528
	add	%x24, %x24, %x5  #405 pc 2532
	flw	%f2, 0(%x24)  #405 pc 2536
	fsw	%f0, 16(%x2)  #405 pc 2540
	mv	%f0, %f2 #pc 2544
	mv	%f1, %f3 #pc 2548
	sw	%x1, 28(%x2)  #405 pc 2552
	addi	%x2, %x2, 32  #405 pc 2556
	jal	%x1, fsqr.2536  #405 pc 2560
	addi	%x2, %x2, -32  #405 pc 2564
	lw	%x1, 28(%x2) #405 pc 2568
	flw	%f2, 16(%x2)  #405 pc 2572
	fadd	%f0, %f2, %f0  #405 pc 2576
	fsqrt	%f0, %f0  #405 pc 2580
	fsw	%f0, 24(%x2)  #406 pc 2584
	sw	%x1, 36(%x2)  #406 pc 2588
	addi	%x2, %x2, 40  #406 pc 2592
	jal	%x1, fiszero.2528  #406 pc 2596
	addi	%x2, %x2, -40  #406 pc 2600
	lw	%x1, 36(%x2) #406 pc 2604
	beq	%x5, %x0, 12  #406 pc 2608
	j	be_else.9222 #pc 2612
	nop #pc 2616
	lw	%x5, 0(%x2)  #406 pc 2620
	beq	%x5, %x0, 12  #406 pc 2624
	j	be_else.9224 #pc 2628
	nop #pc 2632
	mv	%f0, l.6305  #0 pc 2636
	flw	%f2, 24(%x2)  #406 pc 2640
	fdiv	%f0, %f0, %f2  #406 pc 2644
	j	be_cont.9225 #pc 2648
	nop #pc 2652
be_else.9224: #pc 2652
	mv	%f0, l.6343  #0 pc 2656
	flw	%f2, 24(%x2)  #406 pc 2660
	fdiv	%f0, %f0, %f2  #406 pc 2664
be_cont.9225: #pc 2664
	j	be_cont.9223 #pc 2668
	nop #pc 2672
be_else.9222: #pc 2672
	mv	%f0, l.6305  #0 pc 2676
be_cont.9223: #pc 2676
	lw	%x5, 4(%x2)  #407 pc 2680
	add	%x24, %x0, %x5  #407 pc 2684
	flw	%f2, 0(%x24)  #407 pc 2688
	fmul	%f2, %f2, %f0  #407 pc 2692
	add	%x24, %x0, %x5  #407 pc 2696
	fsw	%f2, 0(%x24) #407 pc 2700
	addi	%x24, %x0, 8  #pc 2704
	add	%x24, %x24, %x5  #408 pc 2708
	flw	%f2, 0(%x24)  #408 pc 2712
	fmul	%f2, %f2, %f0  #408 pc 2716
	addi	%x24, %x0, 8  #pc 2720
	add	%x24, %x24, %x5  #408 pc 2724
	fsw	%f2, 0(%x24) #408 pc 2728
	addi	%x24, %x0, 16  #pc 2732
	add	%x24, %x24, %x5  #409 pc 2736
	flw	%f2, 0(%x24)  #409 pc 2740
	fmul	%f0, %f2, %f0  #409 pc 2744
	addi	%x24, %x0, 16  #pc 2748
	add	%x24, %x24, %x5  #409 pc 2752
	fsw	%f0, 0(%x24) #409 pc 2756
	ret #pc 2760
	nop #pc 2764
veciprod.2660:  #pc 2764
	add	%x24, %x0, %x5  #414 pc 2768
	flw	%f0, 0(%x24)  #414 pc 2772
	add	%x24, %x0, %x6  #414 pc 2776
	flw	%f2, 0(%x24)  #414 pc 2780
	fmul	%f0, %f0, %f2  #414 pc 2784
	addi	%x24, %x0, 8  #pc 2788
	add	%x24, %x24, %x5  #414 pc 2792
	flw	%f2, 0(%x24)  #414 pc 2796
	addi	%x24, %x0, 8  #pc 2800
	add	%x24, %x24, %x6  #414 pc 2804
	flw	%f4, 0(%x24)  #414 pc 2808
	fmul	%f2, %f2, %f4  #414 pc 2812
	fadd	%f0, %f0, %f2  #414 pc 2816
	addi	%x24, %x0, 16  #pc 2820
	add	%x24, %x24, %x5  #414 pc 2824
	flw	%f2, 0(%x24)  #414 pc 2828
	addi	%x24, %x0, 16  #pc 2832
	add	%x24, %x24, %x6  #414 pc 2836
	flw	%f4, 0(%x24)  #414 pc 2840
	fmul	%f2, %f2, %f4  #414 pc 2844
	fadd	%f0, %f0, %f2  #414 pc 2848
	ret #pc 2852
	nop #pc 2856
veciprod2.2663:  #pc 2856
	add	%x24, %x0, %x5  #419 pc 2860
	flw	%f6, 0(%x24)  #419 pc 2864
	fmul	%f0, %f6, %f0  #419 pc 2868
	addi	%x24, %x0, 8  #pc 2872
	add	%x24, %x24, %x5  #419 pc 2876
	flw	%f6, 0(%x24)  #419 pc 2880
	fmul	%f2, %f6, %f2  #419 pc 2884
	fadd	%f0, %f0, %f2  #419 pc 2888
	addi	%x24, %x0, 16  #pc 2892
	add	%x24, %x24, %x5  #419 pc 2896
	flw	%f2, 0(%x24)  #419 pc 2900
	fmul	%f2, %f2, %f4  #419 pc 2904
	fadd	%f0, %f0, %f2  #419 pc 2908
	ret #pc 2912
	nop #pc 2916
vecaccum.2668:  #pc 2916
	add	%x24, %x0, %x5  #424 pc 2920
	flw	%f2, 0(%x24)  #424 pc 2924
	add	%x24, %x0, %x6  #424 pc 2928
	flw	%f4, 0(%x24)  #424 pc 2932
	fmul	%f4, %f0, %f4  #424 pc 2936
	fadd	%f2, %f2, %f4  #424 pc 2940
	add	%x24, %x0, %x5  #424 pc 2944
	fsw	%f2, 0(%x24) #424 pc 2948
	addi	%x24, %x0, 8  #pc 2952
	add	%x24, %x24, %x5  #425 pc 2956
	flw	%f2, 0(%x24)  #425 pc 2960
	addi	%x24, %x0, 8  #pc 2964
	add	%x24, %x24, %x6  #425 pc 2968
	flw	%f4, 0(%x24)  #425 pc 2972
	fmul	%f4, %f0, %f4  #425 pc 2976
	fadd	%f2, %f2, %f4  #425 pc 2980
	addi	%x24, %x0, 8  #pc 2984
	add	%x24, %x24, %x5  #425 pc 2988
	fsw	%f2, 0(%x24) #425 pc 2992
	addi	%x24, %x0, 16  #pc 2996
	add	%x24, %x24, %x5  #426 pc 3000
	flw	%f2, 0(%x24)  #426 pc 3004
	addi	%x24, %x0, 16  #pc 3008
	add	%x24, %x24, %x6  #426 pc 3012
	flw	%f4, 0(%x24)  #426 pc 3016
	fmul	%f0, %f0, %f4  #426 pc 3020
	fadd	%f0, %f2, %f0  #426 pc 3024
	addi	%x24, %x0, 16  #pc 3028
	add	%x24, %x24, %x5  #426 pc 3032
	fsw	%f0, 0(%x24) #426 pc 3036
	ret #pc 3040
	nop #pc 3044
vecadd.2672:  #pc 3044
	add	%x24, %x0, %x5  #431 pc 3048
	flw	%f0, 0(%x24)  #431 pc 3052
	add	%x24, %x0, %x6  #431 pc 3056
	flw	%f2, 0(%x24)  #431 pc 3060
	fadd	%f0, %f0, %f2  #431 pc 3064
	add	%x24, %x0, %x5  #431 pc 3068
	fsw	%f0, 0(%x24) #431 pc 3072
	addi	%x24, %x0, 8  #pc 3076
	add	%x24, %x24, %x5  #432 pc 3080
	flw	%f0, 0(%x24)  #432 pc 3084
	addi	%x24, %x0, 8  #pc 3088
	add	%x24, %x24, %x6  #432 pc 3092
	flw	%f2, 0(%x24)  #432 pc 3096
	fadd	%f0, %f0, %f2  #432 pc 3100
	addi	%x24, %x0, 8  #pc 3104
	add	%x24, %x24, %x5  #432 pc 3108
	fsw	%f0, 0(%x24) #432 pc 3112
	addi	%x24, %x0, 16  #pc 3116
	add	%x24, %x24, %x5  #433 pc 3120
	flw	%f0, 0(%x24)  #433 pc 3124
	addi	%x24, %x0, 16  #pc 3128
	add	%x24, %x24, %x6  #433 pc 3132
	flw	%f2, 0(%x24)  #433 pc 3136
	fadd	%f0, %f0, %f2  #433 pc 3140
	addi	%x24, %x0, 16  #pc 3144
	add	%x24, %x24, %x5  #433 pc 3148
	fsw	%f0, 0(%x24) #433 pc 3152
	ret #pc 3156
	nop #pc 3160
vecscale.2675:  #pc 3160
	add	%x24, %x0, %x5  #447 pc 3164
	flw	%f2, 0(%x24)  #447 pc 3168
	fmul	%f2, %f2, %f0  #447 pc 3172
	add	%x24, %x0, %x5  #447 pc 3176
	fsw	%f2, 0(%x24) #447 pc 3180
	addi	%x24, %x0, 8  #pc 3184
	add	%x24, %x24, %x5  #448 pc 3188
	flw	%f2, 0(%x24)  #448 pc 3192
	fmul	%f2, %f2, %f0  #448 pc 3196
	addi	%x24, %x0, 8  #pc 3200
	add	%x24, %x24, %x5  #448 pc 3204
	fsw	%f2, 0(%x24) #448 pc 3208
	addi	%x24, %x0, 16  #pc 3212
	add	%x24, %x24, %x5  #449 pc 3216
	flw	%f2, 0(%x24)  #449 pc 3220
	fmul	%f0, %f2, %f0  #449 pc 3224
	addi	%x24, %x0, 16  #pc 3228
	add	%x24, %x24, %x5  #449 pc 3232
	fsw	%f0, 0(%x24) #449 pc 3236
	ret #pc 3240
	nop #pc 3244
vecaccumv.2678:  #pc 3244
	add	%x24, %x0, %x5  #454 pc 3248
	flw	%f0, 0(%x24)  #454 pc 3252
	add	%x24, %x0, %x6  #454 pc 3256
	flw	%f2, 0(%x24)  #454 pc 3260
	add	%x24, %x0, %x7  #454 pc 3264
	flw	%f4, 0(%x24)  #454 pc 3268
	fmul	%f2, %f2, %f4  #454 pc 3272
	fadd	%f0, %f0, %f2  #454 pc 3276
	add	%x24, %x0, %x5  #454 pc 3280
	fsw	%f0, 0(%x24) #454 pc 3284
	addi	%x24, %x0, 8  #pc 3288
	add	%x24, %x24, %x5  #455 pc 3292
	flw	%f0, 0(%x24)  #455 pc 3296
	addi	%x24, %x0, 8  #pc 3300
	add	%x24, %x24, %x6  #455 pc 3304
	flw	%f2, 0(%x24)  #455 pc 3308
	addi	%x24, %x0, 8  #pc 3312
	add	%x24, %x24, %x7  #455 pc 3316
	flw	%f4, 0(%x24)  #455 pc 3320
	fmul	%f2, %f2, %f4  #455 pc 3324
	fadd	%f0, %f0, %f2  #455 pc 3328
	addi	%x24, %x0, 8  #pc 3332
	add	%x24, %x24, %x5  #455 pc 3336
	fsw	%f0, 0(%x24) #455 pc 3340
	addi	%x24, %x0, 16  #pc 3344
	add	%x24, %x24, %x5  #456 pc 3348
	flw	%f0, 0(%x24)  #456 pc 3352
	addi	%x24, %x0, 16  #pc 3356
	add	%x24, %x24, %x6  #456 pc 3360
	flw	%f2, 0(%x24)  #456 pc 3364
	addi	%x24, %x0, 16  #pc 3368
	add	%x24, %x24, %x7  #456 pc 3372
	flw	%f4, 0(%x24)  #456 pc 3376
	fmul	%f2, %f2, %f4  #456 pc 3380
	fadd	%f0, %f0, %f2  #456 pc 3384
	addi	%x24, %x0, 16  #pc 3388
	add	%x24, %x24, %x5  #456 pc 3392
	fsw	%f0, 0(%x24) #456 pc 3396
	ret #pc 3400
	nop #pc 3404
o_texturetype.2682:  #pc 3404
	add	%x24, %x0, %x5  #465 pc 3408
	lw	%x5, 0(%x24)  #465 pc 3412
	ret #pc 3416
	nop #pc 3420
o_form.2684:  #pc 3420
	addi	%x24, %x0, 4  #pc 3424
	add	%x24, %x24, %x5  #475 pc 3428
	lw	%x5, 0(%x24)  #475 pc 3432
	ret #pc 3436
	nop #pc 3440
o_reflectiontype.2686:  #pc 3440
	addi	%x24, %x0, 8  #pc 3444
	add	%x24, %x24, %x5  #485 pc 3448
	lw	%x5, 0(%x24)  #485 pc 3452
	ret #pc 3456
	nop #pc 3460
o_isinvert.2688:  #pc 3460
	addi	%x24, %x0, 24  #pc 3464
	add	%x24, %x24, %x5  #495 pc 3468
	lw	%x5, 0(%x24)  #495 pc 3472
	ret #pc 3476
	nop #pc 3480
o_isrot.2690:  #pc 3480
	addi	%x24, %x0, 12  #pc 3484
	add	%x24, %x24, %x5  #504 pc 3488
	lw	%x5, 0(%x24)  #504 pc 3492
	ret #pc 3496
	nop #pc 3500
o_param_a.2692:  #pc 3500
	addi	%x24, %x0, 16  #pc 3504
	add	%x24, %x24, %x5  #513 pc 3508
	lw	%x5, 0(%x24)  #513 pc 3512
	add	%x24, %x0, %x5  #518 pc 3516
	flw	%f0, 0(%x24)  #518 pc 3520
	ret #pc 3524
	nop #pc 3528
o_param_b.2694:  #pc 3528
	addi	%x24, %x0, 16  #pc 3532
	add	%x24, %x24, %x5  #523 pc 3536
	lw	%x5, 0(%x24)  #523 pc 3540
	addi	%x24, %x0, 8  #pc 3544
	add	%x24, %x24, %x5  #528 pc 3548
	flw	%f0, 0(%x24)  #528 pc 3552
	ret #pc 3556
	nop #pc 3560
o_param_c.2696:  #pc 3560
	addi	%x24, %x0, 16  #pc 3564
	add	%x24, %x24, %x5  #533 pc 3568
	lw	%x5, 0(%x24)  #533 pc 3572
	addi	%x24, %x0, 16  #pc 3576
	add	%x24, %x24, %x5  #538 pc 3580
	flw	%f0, 0(%x24)  #538 pc 3584
	ret #pc 3588
	nop #pc 3592
o_param_abc.2698:  #pc 3592
	addi	%x24, %x0, 16  #pc 3596
	add	%x24, %x24, %x5  #543 pc 3600
	lw	%x5, 0(%x24)  #543 pc 3604
	ret #pc 3608
	nop #pc 3612
o_param_x.2700:  #pc 3612
	addi	%x24, %x0, 20  #pc 3616
	add	%x24, %x24, %x5  #553 pc 3620
	lw	%x5, 0(%x24)  #553 pc 3624
	add	%x24, %x0, %x5  #558 pc 3628
	flw	%f0, 0(%x24)  #558 pc 3632
	ret #pc 3636
	nop #pc 3640
o_param_y.2702:  #pc 3640
	addi	%x24, %x0, 20  #pc 3644
	add	%x24, %x24, %x5  #563 pc 3648
	lw	%x5, 0(%x24)  #563 pc 3652
	addi	%x24, %x0, 8  #pc 3656
	add	%x24, %x24, %x5  #568 pc 3660
	flw	%f0, 0(%x24)  #568 pc 3664
	ret #pc 3668
	nop #pc 3672
o_param_z.2704:  #pc 3672
	addi	%x24, %x0, 20  #pc 3676
	add	%x24, %x24, %x5  #573 pc 3680
	lw	%x5, 0(%x24)  #573 pc 3684
	addi	%x24, %x0, 16  #pc 3688
	add	%x24, %x24, %x5  #578 pc 3692
	flw	%f0, 0(%x24)  #578 pc 3696
	ret #pc 3700
	nop #pc 3704
o_diffuse.2706:  #pc 3704
	addi	%x24, %x0, 28  #pc 3708
	add	%x24, %x24, %x5  #583 pc 3712
	lw	%x5, 0(%x24)  #583 pc 3716
	add	%x24, %x0, %x5  #588 pc 3720
	flw	%f0, 0(%x24)  #588 pc 3724
	ret #pc 3728
	nop #pc 3732
o_hilight.2708:  #pc 3732
	addi	%x24, %x0, 28  #pc 3736
	add	%x24, %x24, %x5  #593 pc 3740
	lw	%x5, 0(%x24)  #593 pc 3744
	addi	%x24, %x0, 8  #pc 3748
	add	%x24, %x24, %x5  #598 pc 3752
	flw	%f0, 0(%x24)  #598 pc 3756
	ret #pc 3760
	nop #pc 3764
o_color_red.2710:  #pc 3764
	addi	%x24, %x0, 32  #pc 3768
	add	%x24, %x24, %x5  #603 pc 3772
	lw	%x5, 0(%x24)  #603 pc 3776
	add	%x24, %x0, %x5  #608 pc 3780
	flw	%f0, 0(%x24)  #608 pc 3784
	ret #pc 3788
	nop #pc 3792
o_color_green.2712:  #pc 3792
	addi	%x24, %x0, 32  #pc 3796
	add	%x24, %x24, %x5  #613 pc 3800
	lw	%x5, 0(%x24)  #613 pc 3804
	addi	%x24, %x0, 8  #pc 3808
	add	%x24, %x24, %x5  #618 pc 3812
	flw	%f0, 0(%x24)  #618 pc 3816
	ret #pc 3820
	nop #pc 3824
o_color_blue.2714:  #pc 3824
	addi	%x24, %x0, 32  #pc 3828
	add	%x24, %x24, %x5  #623 pc 3832
	lw	%x5, 0(%x24)  #623 pc 3836
	addi	%x24, %x0, 16  #pc 3840
	add	%x24, %x24, %x5  #628 pc 3844
	flw	%f0, 0(%x24)  #628 pc 3848
	ret #pc 3852
	nop #pc 3856
o_param_r1.2716:  #pc 3856
	addi	%x24, %x0, 36  #pc 3860
	add	%x24, %x24, %x5  #633 pc 3864
	lw	%x5, 0(%x24)  #633 pc 3868
	add	%x24, %x0, %x5  #638 pc 3872
	flw	%f0, 0(%x24)  #638 pc 3876
	ret #pc 3880
	nop #pc 3884
o_param_r2.2718:  #pc 3884
	addi	%x24, %x0, 36  #pc 3888
	add	%x24, %x24, %x5  #643 pc 3892
	lw	%x5, 0(%x24)  #643 pc 3896
	addi	%x24, %x0, 8  #pc 3900
	add	%x24, %x24, %x5  #648 pc 3904
	flw	%f0, 0(%x24)  #648 pc 3908
	ret #pc 3912
	nop #pc 3916
o_param_r3.2720:  #pc 3916
	addi	%x24, %x0, 36  #pc 3920
	add	%x24, %x24, %x5  #653 pc 3924
	lw	%x5, 0(%x24)  #653 pc 3928
	addi	%x24, %x0, 16  #pc 3932
	add	%x24, %x24, %x5  #658 pc 3936
	flw	%f0, 0(%x24)  #658 pc 3940
	ret #pc 3944
	nop #pc 3948
o_param_ctbl.2722:  #pc 3948
	addi	%x24, %x0, 40  #pc 3952
	add	%x24, %x24, %x5  #670 pc 3956
	lw	%x5, 0(%x24)  #670 pc 3960
	ret #pc 3964
	nop #pc 3968
p_rgb.2724:  #pc 3968
	add	%x24, %x0, %x5  #684 pc 3972
	lw	%x5, 0(%x24)  #684 pc 3976
	ret #pc 3980
	nop #pc 3984
p_intersection_points.2726:  #pc 3984
	addi	%x24, %x0, 4  #pc 3988
	add	%x24, %x24, %x5  #691 pc 3992
	lw	%x5, 0(%x24)  #691 pc 3996
	ret #pc 4000
	nop #pc 4004
p_surface_ids.2728:  #pc 4004
	addi	%x24, %x0, 8  #pc 4008
	add	%x24, %x24, %x5  #699 pc 4012
	lw	%x5, 0(%x24)  #699 pc 4016
	ret #pc 4020
	nop #pc 4024
p_calc_diffuse.2730:  #pc 4024
	addi	%x24, %x0, 12  #pc 4028
	add	%x24, %x24, %x5  #706 pc 4032
	lw	%x5, 0(%x24)  #706 pc 4036
	ret #pc 4040
	nop #pc 4044
p_energy.2732:  #pc 4044
	addi	%x24, %x0, 16  #pc 4048
	add	%x24, %x24, %x5  #713 pc 4052
	lw	%x5, 0(%x24)  #713 pc 4056
	ret #pc 4060
	nop #pc 4064
p_received_ray_20percent.2734:  #pc 4064
	addi	%x24, %x0, 20  #pc 4068
	add	%x24, %x24, %x5  #720 pc 4072
	lw	%x5, 0(%x24)  #720 pc 4076
	ret #pc 4080
	nop #pc 4084
p_group_id.2736:  #pc 4084
	addi	%x24, %x0, 24  #pc 4088
	add	%x24, %x24, %x5  #736 pc 4092
	lw	%x5, 0(%x24)  #736 pc 4096
	add	%x24, %x0, %x5  #738 pc 4100
	lw	%x5, 0(%x24)  #738 pc 4104
	ret #pc 4108
	nop #pc 4112
p_set_group_id.2738:  #pc 4112
	addi	%x24, %x0, 24  #pc 4116
	add	%x24, %x24, %x5  #743 pc 4120
	lw	%x5, 0(%x24)  #743 pc 4124
	add	%x24, %x0, %x5  #745 pc 4128
	sw	%x6, 0(%x24)  #745 pc 4132
	ret #pc 4136
	nop #pc 4140
p_nvectors.2741:  #pc 4140
	addi	%x24, %x0, 28  #pc 4144
	add	%x24, %x24, %x5  #750 pc 4148
	lw	%x5, 0(%x24)  #750 pc 4152
	ret #pc 4156
	nop #pc 4160
d_vec.2743:  #pc 4160
	add	%x24, %x0, %x5  #761 pc 4164
	lw	%x5, 0(%x24)  #761 pc 4168
	ret #pc 4172
	nop #pc 4176
d_const.2745:  #pc 4176
	addi	%x24, %x0, 4  #pc 4180
	add	%x24, %x24, %x5  #767 pc 4184
	lw	%x5, 0(%x24)  #767 pc 4188
	ret #pc 4192
	nop #pc 4196
r_surface_id.2747:  #pc 4196
	add	%x24, %x0, %x5  #777 pc 4200
	lw	%x5, 0(%x24)  #777 pc 4204
	ret #pc 4208
	nop #pc 4212
r_dvec.2749:  #pc 4212
	addi	%x24, %x0, 4  #pc 4216
	add	%x24, %x24, %x5  #783 pc 4220
	lw	%x5, 0(%x24)  #783 pc 4224
	ret #pc 4228
	nop #pc 4232
r_bright.2751:  #pc 4232
	addi	%x24, %x0, 8  #pc 4236
	add	%x24, %x24, %x5  #789 pc 4240
	flw	%f0, 0(%x24)  #789 pc 4244
	ret #pc 4248
	nop #pc 4252
rad.2753:  #pc 4252
	mv	%f2, l.6431  #0 pc 4256
	fmul	%f0, %f0, %f2  #799 pc 4260
	ret #pc 4264
	nop #pc 4268
read_screen_settings.2755:  #pc 4268
	addi	%x24, %x0, 20  #pc 4272
	add	%x24, %x24, %x22  #0 pc 4276
	lw	%x5, 0(%x24)  #0 pc 4280
	addi	%x24, %x0, 16  #pc 4284
	add	%x24, %x24, %x22  #0 pc 4288
	lw	%x6, 0(%x24)  #0 pc 4292
	addi	%x24, %x0, 12  #pc 4296
	add	%x24, %x24, %x22  #0 pc 4300
	lw	%x7, 0(%x24)  #0 pc 4304
	addi	%x24, %x0, 8  #pc 4308
	add	%x24, %x24, %x22  #0 pc 4312
	lw	%x9, 0(%x24)  #0 pc 4316
	addi	%x24, %x0, 4  #pc 4320
	add	%x24, %x24, %x22  #0 pc 4324
	lw	%x10, 0(%x24)  #0 pc 4328
	sw	%x5, 0(%x2)  #806 pc 4332
	sw	%x7, 4(%x2)  #806 pc 4336
	sw	%x9, 8(%x2)  #806 pc 4340
	sw	%x6, 12(%x2)  #806 pc 4344
	sw	%x10, 16(%x2)  #806 pc 4348
	mv	%x5, %g0 #pc 4352
	sw	%x1, 20(%x2)  #806 pc 4356
	addi	%x2, %x2, 24  #806 pc 4360
	jal	%x1, read_float.2587  #806 pc 4364
	addi	%x2, %x2, -24  #806 pc 4368
	lw	%x1, 20(%x2) #806 pc 4372
	lw	%x5, 16(%x2)  #806 pc 4376
	add	%x24, %x0, %x5  #806 pc 4380
	fsw	%f0, 0(%x24) #806 pc 4384
	mv	%x5, %g0 #pc 4388
	sw	%x1, 20(%x2)  #807 pc 4392
	addi	%x2, %x2, 24  #807 pc 4396
	jal	%x1, read_float.2587  #807 pc 4400
	addi	%x2, %x2, -24  #807 pc 4404
	lw	%x1, 20(%x2) #807 pc 4408
	lw	%x5, 16(%x2)  #807 pc 4412
	addi	%x24, %x0, 8  #pc 4416
	add	%x24, %x24, %x5  #807 pc 4420
	fsw	%f0, 0(%x24) #807 pc 4424
	mv	%x5, %g0 #pc 4428
	sw	%x1, 20(%x2)  #808 pc 4432
	addi	%x2, %x2, 24  #808 pc 4436
	jal	%x1, read_float.2587  #808 pc 4440
	addi	%x2, %x2, -24  #808 pc 4444
	lw	%x1, 20(%x2) #808 pc 4448
	lw	%x5, 16(%x2)  #808 pc 4452
	addi	%x24, %x0, 16  #pc 4456
	add	%x24, %x24, %x5  #808 pc 4460
	fsw	%f0, 0(%x24) #808 pc 4464
	mv	%x5, %g0 #pc 4468
	sw	%x1, 20(%x2)  #810 pc 4472
	addi	%x2, %x2, 24  #810 pc 4476
	jal	%x1, read_float.2587  #810 pc 4480
	addi	%x2, %x2, -24  #810 pc 4484
	lw	%x1, 20(%x2) #810 pc 4488
	sw	%x1, 20(%x2)  #810 pc 4492
	addi	%x2, %x2, 24  #810 pc 4496
	jal	%x1, rad.2753  #810 pc 4500
	addi	%x2, %x2, -24  #810 pc 4504
	lw	%x1, 20(%x2) #810 pc 4508
	fsw	%f0, 24(%x2)  #811 pc 4512
	sw	%x1, 36(%x2)  #811 pc 4516
	addi	%x2, %x2, 40  #811 pc 4520
	jal	%x1, cos.2545  #811 pc 4524
	addi	%x2, %x2, -40  #811 pc 4528
	lw	%x1, 36(%x2) #811 pc 4532
	flw	%f2, 24(%x2)  #812 pc 4536
	fsw	%f0, 32(%x2)  #812 pc 4540
	mv	%f0, %f2 #pc 4544
	mv	%f1, %f3 #pc 4548
	sw	%x1, 44(%x2)  #812 pc 4552
	addi	%x2, %x2, 48  #812 pc 4556
	jal	%x1, sin.2543  #812 pc 4560
	addi	%x2, %x2, -48  #812 pc 4564
	lw	%x1, 44(%x2) #812 pc 4568
	fsw	%f0, 40(%x2)  #813 pc 4572
	mv	%x5, %g0 #pc 4576
	sw	%x1, 52(%x2)  #813 pc 4580
	addi	%x2, %x2, 56  #813 pc 4584
	jal	%x1, read_float.2587  #813 pc 4588
	addi	%x2, %x2, -56  #813 pc 4592
	lw	%x1, 52(%x2) #813 pc 4596
	sw	%x1, 52(%x2)  #813 pc 4600
	addi	%x2, %x2, 56  #813 pc 4604
	jal	%x1, rad.2753  #813 pc 4608
	addi	%x2, %x2, -56  #813 pc 4612
	lw	%x1, 52(%x2) #813 pc 4616
	fsw	%f0, 48(%x2)  #814 pc 4620
	sw	%x1, 60(%x2)  #814 pc 4624
	addi	%x2, %x2, 64  #814 pc 4628
	jal	%x1, cos.2545  #814 pc 4632
	addi	%x2, %x2, -64  #814 pc 4636
	lw	%x1, 60(%x2) #814 pc 4640
	flw	%f2, 48(%x2)  #815 pc 4644
	fsw	%f0, 56(%x2)  #815 pc 4648
	mv	%f0, %f2 #pc 4652
	mv	%f1, %f3 #pc 4656
	sw	%x1, 68(%x2)  #815 pc 4660
	addi	%x2, %x2, 72  #815 pc 4664
	jal	%x1, sin.2543  #815 pc 4668
	addi	%x2, %x2, -72  #815 pc 4672
	lw	%x1, 68(%x2) #815 pc 4676
	flw	%f2, 32(%x2)  #817 pc 4680
	fmul	%f4, %f2, %f0  #817 pc 4684
	mv	%f6, l.6436  #0 pc 4688
	fmul	%f4, %f4, %f6  #817 pc 4692
	lw	%x5, 12(%x2)  #817 pc 4696
	add	%x24, %x0, %x5  #817 pc 4700
	fsw	%f4, 0(%x24) #817 pc 4704
	mv	%f4, l.6439  #0 pc 4708
	flw	%f6, 40(%x2)  #818 pc 4712
	fmul	%f4, %f6, %f4  #818 pc 4716
	addi	%x24, %x0, 8  #pc 4720
	add	%x24, %x24, %x5  #818 pc 4724
	fsw	%f4, 0(%x24) #818 pc 4728
	flw	%f4, 56(%x2)  #819 pc 4732
	fmul	%f8, %f2, %f4  #819 pc 4736
	mv	%f10, l.6436  #0 pc 4740
	fmul	%f8, %f8, %f10  #819 pc 4744
	addi	%x24, %x0, 16  #pc 4748
	add	%x24, %x24, %x5  #819 pc 4752
	fsw	%f8, 0(%x24) #819 pc 4756
	lw	%x6, 8(%x2)  #821 pc 4760
	add	%x24, %x0, %x6  #821 pc 4764
	fsw	%f4, 0(%x24) #821 pc 4768
	mv	%f8, l.6293  #0 pc 4772
	addi	%x24, %x0, 8  #pc 4776
	add	%x24, %x24, %x6  #822 pc 4780
	fsw	%f8, 0(%x24) #822 pc 4784
	fsw	%f0, 64(%x2)  #823 pc 4788
	sw	%x1, 76(%x2)  #823 pc 4792
	addi	%x2, %x2, 80  #823 pc 4796
	jal	%x1, fneg.2534  #823 pc 4800
	addi	%x2, %x2, -80  #823 pc 4804
	lw	%x1, 76(%x2) #823 pc 4808
	lw	%x5, 8(%x2)  #823 pc 4812
	addi	%x24, %x0, 16  #pc 4816
	add	%x24, %x24, %x5  #823 pc 4820
	fsw	%f0, 0(%x24) #823 pc 4824
	flw	%f0, 40(%x2)  #825 pc 4828
	sw	%x1, 76(%x2)  #825 pc 4832
	addi	%x2, %x2, 80  #825 pc 4836
	jal	%x1, fneg.2534  #825 pc 4840
	addi	%x2, %x2, -80  #825 pc 4844
	lw	%x1, 76(%x2) #825 pc 4848
	flw	%f2, 64(%x2)  #825 pc 4852
	fmul	%f0, %f0, %f2  #825 pc 4856
	lw	%x5, 4(%x2)  #825 pc 4860
	add	%x24, %x0, %x5  #825 pc 4864
	fsw	%f0, 0(%x24) #825 pc 4868
	flw	%f0, 32(%x2)  #826 pc 4872
	sw	%x1, 76(%x2)  #826 pc 4876
	addi	%x2, %x2, 80  #826 pc 4880
	jal	%x1, fneg.2534  #826 pc 4884
	addi	%x2, %x2, -80  #826 pc 4888
	lw	%x1, 76(%x2) #826 pc 4892
	lw	%x5, 4(%x2)  #826 pc 4896
	addi	%x24, %x0, 8  #pc 4900
	add	%x24, %x24, %x5  #826 pc 4904
	fsw	%f0, 0(%x24) #826 pc 4908
	flw	%f0, 40(%x2)  #827 pc 4912
	sw	%x1, 76(%x2)  #827 pc 4916
	addi	%x2, %x2, 80  #827 pc 4920
	jal	%x1, fneg.2534  #827 pc 4924
	addi	%x2, %x2, -80  #827 pc 4928
	lw	%x1, 76(%x2) #827 pc 4932
	flw	%f2, 56(%x2)  #827 pc 4936
	fmul	%f0, %f0, %f2  #827 pc 4940
	lw	%x5, 4(%x2)  #827 pc 4944
	addi	%x24, %x0, 16  #pc 4948
	add	%x24, %x24, %x5  #827 pc 4952
	fsw	%f0, 0(%x24) #827 pc 4956
	lw	%x5, 16(%x2)  #829 pc 4960
	add	%x24, %x0, %x5  #829 pc 4964
	flw	%f0, 0(%x24)  #829 pc 4968
	lw	%x6, 12(%x2)  #829 pc 4972
	add	%x24, %x0, %x6  #829 pc 4976
	flw	%f2, 0(%x24)  #829 pc 4980
	fsub	%f0, %f0, %f2  #829 pc 4984
	lw	%x7, 0(%x2)  #829 pc 4988
	add	%x24, %x0, %x7  #829 pc 4992
	fsw	%f0, 0(%x24) #829 pc 4996
	addi	%x24, %x0, 8  #pc 5000
	add	%x24, %x24, %x5  #830 pc 5004
	flw	%f0, 0(%x24)  #830 pc 5008
	addi	%x24, %x0, 8  #pc 5012
	add	%x24, %x24, %x6  #830 pc 5016
	flw	%f2, 0(%x24)  #830 pc 5020
	fsub	%f0, %f0, %f2  #830 pc 5024
	addi	%x24, %x0, 8  #pc 5028
	add	%x24, %x24, %x7  #830 pc 5032
	fsw	%f0, 0(%x24) #830 pc 5036
	addi	%x24, %x0, 16  #pc 5040
	add	%x24, %x24, %x5  #831 pc 5044
	flw	%f0, 0(%x24)  #831 pc 5048
	addi	%x24, %x0, 16  #pc 5052
	add	%x24, %x24, %x6  #831 pc 5056
	flw	%f2, 0(%x24)  #831 pc 5060
	fsub	%f0, %f0, %f2  #831 pc 5064
	addi	%x24, %x0, 16  #pc 5068
	add	%x24, %x24, %x7  #831 pc 5072
	fsw	%f0, 0(%x24) #831 pc 5076
	ret #pc 5080
	nop #pc 5084
read_light.2757:  #pc 5084
	addi	%x24, %x0, 8  #pc 5088
	add	%x24, %x24, %x22  #0 pc 5092
	lw	%x5, 0(%x24)  #0 pc 5096
	addi	%x24, %x0, 4  #pc 5100
	add	%x24, %x24, %x22  #0 pc 5104
	lw	%x6, 0(%x24)  #0 pc 5108
	sw	%x6, 0(%x2)  #838 pc 5112
	sw	%x5, 4(%x2)  #838 pc 5116
	mv	%x5, %g0 #pc 5120
	sw	%x1, 12(%x2)  #838 pc 5124
	addi	%x2, %x2, 16  #838 pc 5128
	jal	%x1, read_int.2580  #838 pc 5132
	addi	%x2, %x2, -16  #838 pc 5136
	lw	%x1, 12(%x2) #838 pc 5140
	mv	%x5, %g0 #pc 5144
	sw	%x1, 12(%x2)  #841 pc 5148
	addi	%x2, %x2, 16  #841 pc 5152
	jal	%x1, read_float.2587  #841 pc 5156
	addi	%x2, %x2, -16  #841 pc 5160
	lw	%x1, 12(%x2) #841 pc 5164
	sw	%x1, 12(%x2)  #841 pc 5168
	addi	%x2, %x2, 16  #841 pc 5172
	jal	%x1, rad.2753  #841 pc 5176
	addi	%x2, %x2, -16  #841 pc 5180
	lw	%x1, 12(%x2) #841 pc 5184
	fsw	%f0, 8(%x2)  #842 pc 5188
	sw	%x1, 20(%x2)  #842 pc 5192
	addi	%x2, %x2, 24  #842 pc 5196
	jal	%x1, sin.2543  #842 pc 5200
	addi	%x2, %x2, -24  #842 pc 5204
	lw	%x1, 20(%x2) #842 pc 5208
	sw	%x1, 20(%x2)  #843 pc 5212
	addi	%x2, %x2, 24  #843 pc 5216
	jal	%x1, fneg.2534  #843 pc 5220
	addi	%x2, %x2, -24  #843 pc 5224
	lw	%x1, 20(%x2) #843 pc 5228
	lw	%x5, 4(%x2)  #843 pc 5232
	addi	%x24, %x0, 8  #pc 5236
	add	%x24, %x24, %x5  #843 pc 5240
	fsw	%f0, 0(%x24) #843 pc 5244
	mv	%x5, %g0 #pc 5248
	sw	%x1, 20(%x2)  #844 pc 5252
	addi	%x2, %x2, 24  #844 pc 5256
	jal	%x1, read_float.2587  #844 pc 5260
	addi	%x2, %x2, -24  #844 pc 5264
	lw	%x1, 20(%x2) #844 pc 5268
	sw	%x1, 20(%x2)  #844 pc 5272
	addi	%x2, %x2, 24  #844 pc 5276
	jal	%x1, rad.2753  #844 pc 5280
	addi	%x2, %x2, -24  #844 pc 5284
	lw	%x1, 20(%x2) #844 pc 5288
	flw	%f2, 8(%x2)  #845 pc 5292
	fsw	%f0, 16(%x2)  #845 pc 5296
	mv	%f0, %f2 #pc 5300
	mv	%f1, %f3 #pc 5304
	sw	%x1, 28(%x2)  #845 pc 5308
	addi	%x2, %x2, 32  #845 pc 5312
	jal	%x1, cos.2545  #845 pc 5316
	addi	%x2, %x2, -32  #845 pc 5320
	lw	%x1, 28(%x2) #845 pc 5324
	flw	%f2, 16(%x2)  #846 pc 5328
	fsw	%f0, 24(%x2)  #846 pc 5332
	mv	%f0, %f2 #pc 5336
	mv	%f1, %f3 #pc 5340
	sw	%x1, 36(%x2)  #846 pc 5344
	addi	%x2, %x2, 40  #846 pc 5348
	jal	%x1, sin.2543  #846 pc 5352
	addi	%x2, %x2, -40  #846 pc 5356
	lw	%x1, 36(%x2) #846 pc 5360
	flw	%f2, 24(%x2)  #847 pc 5364
	fmul	%f0, %f2, %f0  #847 pc 5368
	lw	%x5, 4(%x2)  #847 pc 5372
	add	%x24, %x0, %x5  #847 pc 5376
	fsw	%f0, 0(%x24) #847 pc 5380
	flw	%f0, 16(%x2)  #848 pc 5384
	sw	%x1, 36(%x2)  #848 pc 5388
	addi	%x2, %x2, 40  #848 pc 5392
	jal	%x1, cos.2545  #848 pc 5396
	addi	%x2, %x2, -40  #848 pc 5400
	lw	%x1, 36(%x2) #848 pc 5404
	flw	%f2, 24(%x2)  #849 pc 5408
	fmul	%f0, %f2, %f0  #849 pc 5412
	lw	%x5, 4(%x2)  #849 pc 5416
	addi	%x24, %x0, 16  #pc 5420
	add	%x24, %x24, %x5  #849 pc 5424
	fsw	%f0, 0(%x24) #849 pc 5428
	mv	%x5, %g0 #pc 5432
	sw	%x1, 36(%x2)  #850 pc 5436
	addi	%x2, %x2, 40  #850 pc 5440
	jal	%x1, read_float.2587  #850 pc 5444
	addi	%x2, %x2, -40  #850 pc 5448
	lw	%x1, 36(%x2) #850 pc 5452
	lw	%x5, 0(%x2)  #850 pc 5456
	add	%x24, %x0, %x5  #850 pc 5460
	fsw	%f0, 0(%x24) #850 pc 5464
	ret #pc 5468
	nop #pc 5472
rotate_quadratic_matrix.2759:  #pc 5472
	add	%x24, %x0, %x6  #860 pc 5476
	flw	%f0, 0(%x24)  #860 pc 5480
	sw	%x5, 0(%x2)  #860 pc 5484
	sw	%x6, 4(%x2)  #860 pc 5488
	sw	%x1, 12(%x2)  #860 pc 5492
	addi	%x2, %x2, 16  #860 pc 5496
	jal	%x1, cos.2545  #860 pc 5500
	addi	%x2, %x2, -16  #860 pc 5504
	lw	%x1, 12(%x2) #860 pc 5508
	lw	%x5, 4(%x2)  #861 pc 5512
	add	%x24, %x0, %x5  #861 pc 5516
	flw	%f2, 0(%x24)  #861 pc 5520
	fsw	%f0, 8(%x2)  #861 pc 5524
	mv	%f0, %f2 #pc 5528
	mv	%f1, %f3 #pc 5532
	sw	%x1, 20(%x2)  #861 pc 5536
	addi	%x2, %x2, 24  #861 pc 5540
	jal	%x1, sin.2543  #861 pc 5544
	addi	%x2, %x2, -24  #861 pc 5548
	lw	%x1, 20(%x2) #861 pc 5552
	lw	%x5, 4(%x2)  #862 pc 5556
	addi	%x24, %x0, 8  #pc 5560
	add	%x24, %x24, %x5  #862 pc 5564
	flw	%f2, 0(%x24)  #862 pc 5568
	fsw	%f0, 16(%x2)  #862 pc 5572
	mv	%f0, %f2 #pc 5576
	mv	%f1, %f3 #pc 5580
	sw	%x1, 28(%x2)  #862 pc 5584
	addi	%x2, %x2, 32  #862 pc 5588
	jal	%x1, cos.2545  #862 pc 5592
	addi	%x2, %x2, -32  #862 pc 5596
	lw	%x1, 28(%x2) #862 pc 5600
	lw	%x5, 4(%x2)  #863 pc 5604
	addi	%x24, %x0, 8  #pc 5608
	add	%x24, %x24, %x5  #863 pc 5612
	flw	%f2, 0(%x24)  #863 pc 5616
	fsw	%f0, 24(%x2)  #863 pc 5620
	mv	%f0, %f2 #pc 5624
	mv	%f1, %f3 #pc 5628
	sw	%x1, 36(%x2)  #863 pc 5632
	addi	%x2, %x2, 40  #863 pc 5636
	jal	%x1, sin.2543  #863 pc 5640
	addi	%x2, %x2, -40  #863 pc 5644
	lw	%x1, 36(%x2) #863 pc 5648
	lw	%x5, 4(%x2)  #864 pc 5652
	addi	%x24, %x0, 16  #pc 5656
	add	%x24, %x24, %x5  #864 pc 5660
	flw	%f2, 0(%x24)  #864 pc 5664
	fsw	%f0, 32(%x2)  #864 pc 5668
	mv	%f0, %f2 #pc 5672
	mv	%f1, %f3 #pc 5676
	sw	%x1, 44(%x2)  #864 pc 5680
	addi	%x2, %x2, 48  #864 pc 5684
	jal	%x1, cos.2545  #864 pc 5688
	addi	%x2, %x2, -48  #864 pc 5692
	lw	%x1, 44(%x2) #864 pc 5696
	lw	%x5, 4(%x2)  #865 pc 5700
	addi	%x24, %x0, 16  #pc 5704
	add	%x24, %x24, %x5  #865 pc 5708
	flw	%f2, 0(%x24)  #865 pc 5712
	fsw	%f0, 40(%x2)  #865 pc 5716
	mv	%f0, %f2 #pc 5720
	mv	%f1, %f3 #pc 5724
	sw	%x1, 52(%x2)  #865 pc 5728
	addi	%x2, %x2, 56  #865 pc 5732
	jal	%x1, sin.2543  #865 pc 5736
	addi	%x2, %x2, -56  #865 pc 5740
	lw	%x1, 52(%x2) #865 pc 5744
	flw	%f2, 40(%x2)  #867 pc 5748
	flw	%f4, 24(%x2)  #867 pc 5752
	fmul	%f6, %f4, %f2  #867 pc 5756
	flw	%f8, 32(%x2)  #868 pc 5760
	flw	%f10, 16(%x2)  #868 pc 5764
	fmul	%f12, %f10, %f8  #868 pc 5768
	fmul	%f12, %f12, %f2  #868 pc 5772
	flw	%f14, 8(%x2)  #868 pc 5776
	fmul	%f16, %f14, %f0  #868 pc 5780
	fsub	%f12, %f12, %f16  #868 pc 5784
	fmul	%f16, %f14, %f8  #869 pc 5788
	fmul	%f16, %f16, %f2  #869 pc 5792
	fmul	%f18, %f10, %f0  #869 pc 5796
	fadd	%f16, %f16, %f18  #869 pc 5800
	fmul	%f18, %f4, %f0  #871 pc 5804
	fmul	%f20, %f10, %f8  #872 pc 5808
	fmul	%f20, %f20, %f0  #872 pc 5812
	fmul	%f22, %f14, %f2  #872 pc 5816
	fadd	%f20, %f20, %f22  #872 pc 5820
	fmul	%f22, %f14, %f8  #873 pc 5824
	fmul	%f0, %f22, %f0  #873 pc 5828
	fmul	%f2, %f10, %f2  #873 pc 5832
	fsub	%f0, %f0, %f2  #873 pc 5836
	fsw	%f0, 48(%x2)  #875 pc 5840
	fsw	%f16, 56(%x2)  #875 pc 5844
	fsw	%f20, 64(%x2)  #875 pc 5848
	fsw	%f12, 72(%x2)  #875 pc 5852
	fsw	%f18, 80(%x2)  #875 pc 5856
	fsw	%f6, 88(%x2)  #875 pc 5860
	mv	%f0, %f8 #pc 5864
	mv	%f1, %f9 #pc 5868
	sw	%x1, 100(%x2)  #875 pc 5872
	addi	%x2, %x2, 104  #875 pc 5876
	jal	%x1, fneg.2534  #875 pc 5880
	addi	%x2, %x2, -104  #875 pc 5884
	lw	%x1, 100(%x2) #875 pc 5888
	flw	%f2, 24(%x2)  #876 pc 5892
	flw	%f4, 16(%x2)  #876 pc 5896
	fmul	%f4, %f4, %f2  #876 pc 5900
	flw	%f6, 8(%x2)  #877 pc 5904
	fmul	%f2, %f6, %f2  #877 pc 5908
	lw	%x5, 0(%x2)  #880 pc 5912
	add	%x24, %x0, %x5  #880 pc 5916
	flw	%f6, 0(%x24)  #880 pc 5920
	addi	%x24, %x0, 8  #pc 5924
	add	%x24, %x24, %x5  #881 pc 5928
	flw	%f8, 0(%x24)  #881 pc 5932
	addi	%x24, %x0, 16  #pc 5936
	add	%x24, %x24, %x5  #882 pc 5940
	flw	%f10, 0(%x24)  #882 pc 5944
	flw	%f12, 88(%x2)  #887 pc 5948
	fsw	%f2, 96(%x2)  #887 pc 5952
	fsw	%f4, 104(%x2)  #887 pc 5956
	fsw	%f10, 112(%x2)  #887 pc 5960
	fsw	%f0, 120(%x2)  #887 pc 5964
	fsw	%f8, 128(%x2)  #887 pc 5968
	fsw	%f6, 136(%x2)  #887 pc 5972
	mv	%f0, %f12 #pc 5976
	mv	%f1, %f13 #pc 5980
	sw	%x1, 148(%x2)  #887 pc 5984
	addi	%x2, %x2, 152  #887 pc 5988
	jal	%x1, fsqr.2536  #887 pc 5992
	addi	%x2, %x2, -152  #887 pc 5996
	lw	%x1, 148(%x2) #887 pc 6000
	flw	%f2, 136(%x2)  #887 pc 6004
	fmul	%f0, %f2, %f0  #887 pc 6008
	flw	%f4, 80(%x2)  #887 pc 6012
	fsw	%f0, 144(%x2)  #887 pc 6016
	mv	%f0, %f4 #pc 6020
	mv	%f1, %f5 #pc 6024
	sw	%x1, 156(%x2)  #887 pc 6028
	addi	%x2, %x2, 160  #887 pc 6032
	jal	%x1, fsqr.2536  #887 pc 6036
	addi	%x2, %x2, -160  #887 pc 6040
	lw	%x1, 156(%x2) #887 pc 6044
	flw	%f2, 128(%x2)  #887 pc 6048
	fmul	%f0, %f2, %f0  #887 pc 6052
	flw	%f4, 144(%x2)  #887 pc 6056
	fadd	%f0, %f4, %f0  #887 pc 6060
	flw	%f4, 120(%x2)  #887 pc 6064
	fsw	%f0, 152(%x2)  #887 pc 6068
	mv	%f0, %f4 #pc 6072
	mv	%f1, %f5 #pc 6076
	sw	%x1, 164(%x2)  #887 pc 6080
	addi	%x2, %x2, 168  #887 pc 6084
	jal	%x1, fsqr.2536  #887 pc 6088
	addi	%x2, %x2, -168  #887 pc 6092
	lw	%x1, 164(%x2) #887 pc 6096
	flw	%f2, 112(%x2)  #887 pc 6100
	fmul	%f0, %f2, %f0  #887 pc 6104
	flw	%f4, 152(%x2)  #887 pc 6108
	fadd	%f0, %f4, %f0  #887 pc 6112
	lw	%x5, 0(%x2)  #887 pc 6116
	add	%x24, %x0, %x5  #887 pc 6120
	fsw	%f0, 0(%x24) #887 pc 6124
	flw	%f0, 72(%x2)  #888 pc 6128
	sw	%x1, 164(%x2)  #888 pc 6132
	addi	%x2, %x2, 168  #888 pc 6136
	jal	%x1, fsqr.2536  #888 pc 6140
	addi	%x2, %x2, -168  #888 pc 6144
	lw	%x1, 164(%x2) #888 pc 6148
	flw	%f2, 136(%x2)  #888 pc 6152
	fmul	%f0, %f2, %f0  #888 pc 6156
	flw	%f4, 64(%x2)  #888 pc 6160
	fsw	%f0, 160(%x2)  #888 pc 6164
	mv	%f0, %f4 #pc 6168
	mv	%f1, %f5 #pc 6172
	sw	%x1, 172(%x2)  #888 pc 6176
	addi	%x2, %x2, 176  #888 pc 6180
	jal	%x1, fsqr.2536  #888 pc 6184
	addi	%x2, %x2, -176  #888 pc 6188
	lw	%x1, 172(%x2) #888 pc 6192
	flw	%f2, 128(%x2)  #888 pc 6196
	fmul	%f0, %f2, %f0  #888 pc 6200
	flw	%f4, 160(%x2)  #888 pc 6204
	fadd	%f0, %f4, %f0  #888 pc 6208
	flw	%f4, 104(%x2)  #888 pc 6212
	fsw	%f0, 168(%x2)  #888 pc 6216
	mv	%f0, %f4 #pc 6220
	mv	%f1, %f5 #pc 6224
	sw	%x1, 180(%x2)  #888 pc 6228
	addi	%x2, %x2, 184  #888 pc 6232
	jal	%x1, fsqr.2536  #888 pc 6236
	addi	%x2, %x2, -184  #888 pc 6240
	lw	%x1, 180(%x2) #888 pc 6244
	flw	%f2, 112(%x2)  #888 pc 6248
	fmul	%f0, %f2, %f0  #888 pc 6252
	flw	%f4, 168(%x2)  #888 pc 6256
	fadd	%f0, %f4, %f0  #888 pc 6260
	lw	%x5, 0(%x2)  #888 pc 6264
	addi	%x24, %x0, 8  #pc 6268
	add	%x24, %x24, %x5  #888 pc 6272
	fsw	%f0, 0(%x24) #888 pc 6276
	flw	%f0, 56(%x2)  #889 pc 6280
	sw	%x1, 180(%x2)  #889 pc 6284
	addi	%x2, %x2, 184  #889 pc 6288
	jal	%x1, fsqr.2536  #889 pc 6292
	addi	%x2, %x2, -184  #889 pc 6296
	lw	%x1, 180(%x2) #889 pc 6300
	flw	%f2, 136(%x2)  #889 pc 6304
	fmul	%f0, %f2, %f0  #889 pc 6308
	flw	%f4, 48(%x2)  #889 pc 6312
	fsw	%f0, 176(%x2)  #889 pc 6316
	mv	%f0, %f4 #pc 6320
	mv	%f1, %f5 #pc 6324
	sw	%x1, 188(%x2)  #889 pc 6328
	addi	%x2, %x2, 192  #889 pc 6332
	jal	%x1, fsqr.2536  #889 pc 6336
	addi	%x2, %x2, -192  #889 pc 6340
	lw	%x1, 188(%x2) #889 pc 6344
	flw	%f2, 128(%x2)  #889 pc 6348
	fmul	%f0, %f2, %f0  #889 pc 6352
	flw	%f4, 176(%x2)  #889 pc 6356
	fadd	%f0, %f4, %f0  #889 pc 6360
	flw	%f4, 96(%x2)  #889 pc 6364
	fsw	%f0, 184(%x2)  #889 pc 6368
	mv	%f0, %f4 #pc 6372
	mv	%f1, %f5 #pc 6376
	sw	%x1, 196(%x2)  #889 pc 6380
	addi	%x2, %x2, 200  #889 pc 6384
	jal	%x1, fsqr.2536  #889 pc 6388
	addi	%x2, %x2, -200  #889 pc 6392
	lw	%x1, 196(%x2) #889 pc 6396
	flw	%f2, 112(%x2)  #889 pc 6400
	fmul	%f0, %f2, %f0  #889 pc 6404
	flw	%f4, 184(%x2)  #889 pc 6408
	fadd	%f0, %f4, %f0  #889 pc 6412
	lw	%x5, 0(%x2)  #889 pc 6416
	addi	%x24, %x0, 16  #pc 6420
	add	%x24, %x24, %x5  #889 pc 6424
	fsw	%f0, 0(%x24) #889 pc 6428
	mv	%f0, l.6476  #0 pc 6432
	flw	%f4, 72(%x2)  #892 pc 6436
	flw	%f6, 136(%x2)  #892 pc 6440
	fmul	%f8, %f6, %f4  #892 pc 6444
	flw	%f10, 56(%x2)  #892 pc 6448
	fmul	%f8, %f8, %f10  #892 pc 6452
	flw	%f12, 64(%x2)  #892 pc 6456
	flw	%f14, 128(%x2)  #892 pc 6460
	fmul	%f16, %f14, %f12  #892 pc 6464
	flw	%f18, 48(%x2)  #892 pc 6468
	fmul	%f16, %f16, %f18  #892 pc 6472
	fadd	%f8, %f8, %f16  #892 pc 6476
	flw	%f16, 104(%x2)  #892 pc 6480
	fmul	%f20, %f2, %f16  #892 pc 6484
	flw	%f22, 96(%x2)  #892 pc 6488
	fmul	%f20, %f20, %f22  #892 pc 6492
	fadd	%f8, %f8, %f20  #892 pc 6496
	fmul	%f0, %f0, %f8  #892 pc 6500
	lw	%x5, 4(%x2)  #892 pc 6504
	add	%x24, %x0, %x5  #892 pc 6508
	fsw	%f0, 0(%x24) #892 pc 6512
	mv	%f0, l.6476  #0 pc 6516
	flw	%f8, 88(%x2)  #893 pc 6520
	fmul	%f20, %f6, %f8  #893 pc 6524
	fmul	%f10, %f20, %f10  #893 pc 6528
	flw	%f20, 80(%x2)  #893 pc 6532
	fmul	%f24, %f14, %f20  #893 pc 6536
	fmul	%f18, %f24, %f18  #893 pc 6540
	fadd	%f10, %f10, %f18  #893 pc 6544
	flw	%f18, 120(%x2)  #893 pc 6548
	fmul	%f24, %f2, %f18  #893 pc 6552
	fmul	%f22, %f24, %f22  #893 pc 6556
	fadd	%f10, %f10, %f22  #893 pc 6560
	fmul	%f0, %f0, %f10  #893 pc 6564
	addi	%x24, %x0, 8  #pc 6568
	add	%x24, %x24, %x5  #893 pc 6572
	fsw	%f0, 0(%x24) #893 pc 6576
	mv	%f0, l.6476  #0 pc 6580
	fmul	%f6, %f6, %f8  #894 pc 6584
	fmul	%f4, %f6, %f4  #894 pc 6588
	fmul	%f6, %f14, %f20  #894 pc 6592
	fmul	%f6, %f6, %f12  #894 pc 6596
	fadd	%f4, %f4, %f6  #894 pc 6600
	fmul	%f2, %f2, %f18  #894 pc 6604
	fmul	%f2, %f2, %f16  #894 pc 6608
	fadd	%f2, %f4, %f2  #894 pc 6612
	fmul	%f0, %f0, %f2  #894 pc 6616
	addi	%x24, %x0, 16  #pc 6620
	add	%x24, %x24, %x5  #894 pc 6624
	fsw	%f0, 0(%x24) #894 pc 6628
	ret #pc 6632
	nop #pc 6636
read_nth_object.2762:  #pc 6636
	addi	%x24, %x0, 4  #pc 6640
	add	%x24, %x24, %x22  #0 pc 6644
	lw	%x6, 0(%x24)  #0 pc 6648
	sw	%x6, 0(%x2)  #901 pc 6652
	sw	%x5, 4(%x2)  #901 pc 6656
	mv	%x5, %g0 #pc 6660
	sw	%x1, 12(%x2)  #901 pc 6664
	addi	%x2, %x2, 16  #901 pc 6668
	jal	%x1, read_int.2580  #901 pc 6672
	addi	%x2, %x2, -16  #901 pc 6676
	lw	%x1, 12(%x2) #901 pc 6680
	addi	%x24, %x0, -1  #pc 6684
	beq	%x5, %x24, 12  #902 pc 6688
	j	be_else.9236 #pc 6692
	nop #pc 6696
	addi	%x5, %x0, 0  #0 pc 6700
	ret #pc 6704
	nop #pc 6708
be_else.9236: #pc 6708
	sw	%x5, 8(%x2)  #904 pc 6712
	mv	%x5, %g0 #pc 6716
	sw	%x1, 12(%x2)  #904 pc 6720
	addi	%x2, %x2, 16  #904 pc 6724
	jal	%x1, read_int.2580  #904 pc 6728
	addi	%x2, %x2, -16  #904 pc 6732
	lw	%x1, 12(%x2) #904 pc 6736
	sw	%x5, 12(%x2)  #905 pc 6740
	mv	%x5, %g0 #pc 6744
	sw	%x1, 20(%x2)  #905 pc 6748
	addi	%x2, %x2, 24  #905 pc 6752
	jal	%x1, read_int.2580  #905 pc 6756
	addi	%x2, %x2, -24  #905 pc 6760
	lw	%x1, 20(%x2) #905 pc 6764
	sw	%x5, 16(%x2)  #906 pc 6768
	mv	%x5, %g0 #pc 6772
	sw	%x1, 20(%x2)  #906 pc 6776
	addi	%x2, %x2, 24  #906 pc 6780
	jal	%x1, read_int.2580  #906 pc 6784
	addi	%x2, %x2, -24  #906 pc 6788
	lw	%x1, 20(%x2) #906 pc 6792
	addi	%x6, %x0, 3  #0 pc 6796
	mv	%f0, l.6293  #0 pc 6800
	sw	%x5, 20(%x2)  #908 pc 6804
	mv	%x5, %x6 #pc 6808
	sw	%x1, 28(%x2)  #908 pc 6812
	addi	%x2, %x2, 32  #908 pc 6816
	jal	%x1, create_float_array.2600  #908 pc 6820
	addi	%x2, %x2, -32  #908 pc 6824
	lw	%x1, 28(%x2) #908 pc 6828
	sw	%x5, 24(%x2)  #909 pc 6832
	mv	%x5, %g0 #pc 6836
	sw	%x1, 28(%x2)  #909 pc 6840
	addi	%x2, %x2, 32  #909 pc 6844
	jal	%x1, read_float.2587  #909 pc 6848
	addi	%x2, %x2, -32  #909 pc 6852
	lw	%x1, 28(%x2) #909 pc 6856
	lw	%x5, 24(%x2)  #909 pc 6860
	add	%x24, %x0, %x5  #909 pc 6864
	fsw	%f0, 0(%x24) #909 pc 6868
	mv	%x5, %g0 #pc 6872
	sw	%x1, 28(%x2)  #910 pc 6876
	addi	%x2, %x2, 32  #910 pc 6880
	jal	%x1, read_float.2587  #910 pc 6884
	addi	%x2, %x2, -32  #910 pc 6888
	lw	%x1, 28(%x2) #910 pc 6892
	lw	%x5, 24(%x2)  #910 pc 6896
	addi	%x24, %x0, 8  #pc 6900
	add	%x24, %x24, %x5  #910 pc 6904
	fsw	%f0, 0(%x24) #910 pc 6908
	mv	%x5, %g0 #pc 6912
	sw	%x1, 28(%x2)  #911 pc 6916
	addi	%x2, %x2, 32  #911 pc 6920
	jal	%x1, read_float.2587  #911 pc 6924
	addi	%x2, %x2, -32  #911 pc 6928
	lw	%x1, 28(%x2) #911 pc 6932
	lw	%x5, 24(%x2)  #911 pc 6936
	addi	%x24, %x0, 16  #pc 6940
	add	%x24, %x24, %x5  #911 pc 6944
	fsw	%f0, 0(%x24) #911 pc 6948
	addi	%x6, %x0, 3  #0 pc 6952
	mv	%f0, l.6293  #0 pc 6956
	mv	%x5, %x6 #pc 6960
	sw	%x1, 28(%x2)  #913 pc 6964
	addi	%x2, %x2, 32  #913 pc 6968
	jal	%x1, create_float_array.2600  #913 pc 6972
	addi	%x2, %x2, -32  #913 pc 6976
	lw	%x1, 28(%x2) #913 pc 6980
	sw	%x5, 28(%x2)  #914 pc 6984
	mv	%x5, %g0 #pc 6988
	sw	%x1, 36(%x2)  #914 pc 6992
	addi	%x2, %x2, 40  #914 pc 6996
	jal	%x1, read_float.2587  #914 pc 7000
	addi	%x2, %x2, -40  #914 pc 7004
	lw	%x1, 36(%x2) #914 pc 7008
	lw	%x5, 28(%x2)  #914 pc 7012
	add	%x24, %x0, %x5  #914 pc 7016
	fsw	%f0, 0(%x24) #914 pc 7020
	mv	%x5, %g0 #pc 7024
	sw	%x1, 36(%x2)  #915 pc 7028
	addi	%x2, %x2, 40  #915 pc 7032
	jal	%x1, read_float.2587  #915 pc 7036
	addi	%x2, %x2, -40  #915 pc 7040
	lw	%x1, 36(%x2) #915 pc 7044
	lw	%x5, 28(%x2)  #915 pc 7048
	addi	%x24, %x0, 8  #pc 7052
	add	%x24, %x24, %x5  #915 pc 7056
	fsw	%f0, 0(%x24) #915 pc 7060
	mv	%x5, %g0 #pc 7064
	sw	%x1, 36(%x2)  #916 pc 7068
	addi	%x2, %x2, 40  #916 pc 7072
	jal	%x1, read_float.2587  #916 pc 7076
	addi	%x2, %x2, -40  #916 pc 7080
	lw	%x1, 36(%x2) #916 pc 7084
	lw	%x5, 28(%x2)  #916 pc 7088
	addi	%x24, %x0, 16  #pc 7092
	add	%x24, %x24, %x5  #916 pc 7096
	fsw	%f0, 0(%x24) #916 pc 7100
	mv	%x5, %g0 #pc 7104
	sw	%x1, 36(%x2)  #918 pc 7108
	addi	%x2, %x2, 40  #918 pc 7112
	jal	%x1, read_float.2587  #918 pc 7116
	addi	%x2, %x2, -40  #918 pc 7120
	lw	%x1, 36(%x2) #918 pc 7124
	sw	%x1, 36(%x2)  #918 pc 7128
	addi	%x2, %x2, 40  #918 pc 7132
	jal	%x1, fisneg.2532  #918 pc 7136
	addi	%x2, %x2, -40  #918 pc 7140
	lw	%x1, 36(%x2) #918 pc 7144
	addi	%x6, %x0, 2  #0 pc 7148
	mv	%f0, l.6293  #0 pc 7152
	sw	%x5, 32(%x2)  #920 pc 7156
	mv	%x5, %x6 #pc 7160
	sw	%x1, 36(%x2)  #920 pc 7164
	addi	%x2, %x2, 40  #920 pc 7168
	jal	%x1, create_float_array.2600  #920 pc 7172
	addi	%x2, %x2, -40  #920 pc 7176
	lw	%x1, 36(%x2) #920 pc 7180
	sw	%x5, 36(%x2)  #921 pc 7184
	mv	%x5, %g0 #pc 7188
	sw	%x1, 44(%x2)  #921 pc 7192
	addi	%x2, %x2, 48  #921 pc 7196
	jal	%x1, read_float.2587  #921 pc 7200
	addi	%x2, %x2, -48  #921 pc 7204
	lw	%x1, 44(%x2) #921 pc 7208
	lw	%x5, 36(%x2)  #921 pc 7212
	add	%x24, %x0, %x5  #921 pc 7216
	fsw	%f0, 0(%x24) #921 pc 7220
	mv	%x5, %g0 #pc 7224
	sw	%x1, 44(%x2)  #922 pc 7228
	addi	%x2, %x2, 48  #922 pc 7232
	jal	%x1, read_float.2587  #922 pc 7236
	addi	%x2, %x2, -48  #922 pc 7240
	lw	%x1, 44(%x2) #922 pc 7244
	lw	%x5, 36(%x2)  #922 pc 7248
	addi	%x24, %x0, 8  #pc 7252
	add	%x24, %x24, %x5  #922 pc 7256
	fsw	%f0, 0(%x24) #922 pc 7260
	addi	%x6, %x0, 3  #0 pc 7264
	mv	%f0, l.6293  #0 pc 7268
	mv	%x5, %x6 #pc 7272
	sw	%x1, 44(%x2)  #924 pc 7276
	addi	%x2, %x2, 48  #924 pc 7280
	jal	%x1, create_float_array.2600  #924 pc 7284
	addi	%x2, %x2, -48  #924 pc 7288
	lw	%x1, 44(%x2) #924 pc 7292
	sw	%x5, 40(%x2)  #925 pc 7296
	mv	%x5, %g0 #pc 7300
	sw	%x1, 44(%x2)  #925 pc 7304
	addi	%x2, %x2, 48  #925 pc 7308
	jal	%x1, read_float.2587  #925 pc 7312
	addi	%x2, %x2, -48  #925 pc 7316
	lw	%x1, 44(%x2) #925 pc 7320
	lw	%x5, 40(%x2)  #925 pc 7324
	add	%x24, %x0, %x5  #925 pc 7328
	fsw	%f0, 0(%x24) #925 pc 7332
	mv	%x5, %g0 #pc 7336
	sw	%x1, 44(%x2)  #926 pc 7340
	addi	%x2, %x2, 48  #926 pc 7344
	jal	%x1, read_float.2587  #926 pc 7348
	addi	%x2, %x2, -48  #926 pc 7352
	lw	%x1, 44(%x2) #926 pc 7356
	lw	%x5, 40(%x2)  #926 pc 7360
	addi	%x24, %x0, 8  #pc 7364
	add	%x24, %x24, %x5  #926 pc 7368
	fsw	%f0, 0(%x24) #926 pc 7372
	mv	%x5, %g0 #pc 7376
	sw	%x1, 44(%x2)  #927 pc 7380
	addi	%x2, %x2, 48  #927 pc 7384
	jal	%x1, read_float.2587  #927 pc 7388
	addi	%x2, %x2, -48  #927 pc 7392
	lw	%x1, 44(%x2) #927 pc 7396
	lw	%x5, 40(%x2)  #927 pc 7400
	addi	%x24, %x0, 16  #pc 7404
	add	%x24, %x24, %x5  #927 pc 7408
	fsw	%f0, 0(%x24) #927 pc 7412
	addi	%x6, %x0, 3  #0 pc 7416
	mv	%f0, l.6293  #0 pc 7420
	mv	%x5, %x6 #pc 7424
	sw	%x1, 44(%x2)  #929 pc 7428
	addi	%x2, %x2, 48  #929 pc 7432
	jal	%x1, create_float_array.2600  #929 pc 7436
	addi	%x2, %x2, -48  #929 pc 7440
	lw	%x1, 44(%x2) #929 pc 7444
	lw	%x6, 20(%x2)  #930 pc 7448
	beq	%x6, %x0, 12  #930 pc 7452
	j	be_else.9237 #pc 7456
	nop #pc 7460
	j	be_cont.9238 #pc 7464
	nop #pc 7468
be_else.9237: #pc 7468
	sw	%x5, 44(%x2)  #932 pc 7472
	mv	%x5, %g0 #pc 7476
	sw	%x1, 52(%x2)  #932 pc 7480
	addi	%x2, %x2, 56  #932 pc 7484
	jal	%x1, read_float.2587  #932 pc 7488
	addi	%x2, %x2, -56  #932 pc 7492
	lw	%x1, 52(%x2) #932 pc 7496
	sw	%x1, 52(%x2)  #932 pc 7500
	addi	%x2, %x2, 56  #932 pc 7504
	jal	%x1, rad.2753  #932 pc 7508
	addi	%x2, %x2, -56  #932 pc 7512
	lw	%x1, 52(%x2) #932 pc 7516
	lw	%x5, 44(%x2)  #932 pc 7520
	add	%x24, %x0, %x5  #932 pc 7524
	fsw	%f0, 0(%x24) #932 pc 7528
	mv	%x5, %g0 #pc 7532
	sw	%x1, 52(%x2)  #933 pc 7536
	addi	%x2, %x2, 56  #933 pc 7540
	jal	%x1, read_float.2587  #933 pc 7544
	addi	%x2, %x2, -56  #933 pc 7548
	lw	%x1, 52(%x2) #933 pc 7552
	sw	%x1, 52(%x2)  #933 pc 7556
	addi	%x2, %x2, 56  #933 pc 7560
	jal	%x1, rad.2753  #933 pc 7564
	addi	%x2, %x2, -56  #933 pc 7568
	lw	%x1, 52(%x2) #933 pc 7572
	lw	%x5, 44(%x2)  #933 pc 7576
	addi	%x24, %x0, 8  #pc 7580
	add	%x24, %x24, %x5  #933 pc 7584
	fsw	%f0, 0(%x24) #933 pc 7588
	mv	%x5, %g0 #pc 7592
	sw	%x1, 52(%x2)  #934 pc 7596
	addi	%x2, %x2, 56  #934 pc 7600
	jal	%x1, read_float.2587  #934 pc 7604
	addi	%x2, %x2, -56  #934 pc 7608
	lw	%x1, 52(%x2) #934 pc 7612
	sw	%x1, 52(%x2)  #934 pc 7616
	addi	%x2, %x2, 56  #934 pc 7620
	jal	%x1, rad.2753  #934 pc 7624
	addi	%x2, %x2, -56  #934 pc 7628
	lw	%x1, 52(%x2) #934 pc 7632
	lw	%x5, 44(%x2)  #934 pc 7636
	addi	%x24, %x0, 16  #pc 7640
	add	%x24, %x24, %x5  #934 pc 7644
	fsw	%f0, 0(%x24) #934 pc 7648
be_cont.9238: #pc 7648
	lw	%x6, 12(%x2)  #941 pc 7652
	addi	%x24, %x0, 2  #pc 7656
	beq	%x6, %x24, 12  #941 pc 7660
	j	be_else.9239 #pc 7664
	nop #pc 7668
	addi	%x7, %x0, 1  #0 pc 7672
	j	be_cont.9240 #pc 7676
	nop #pc 7680
be_else.9239: #pc 7680
	lw	%x7, 32(%x2)  #941 pc 7684
be_cont.9240: #pc 7684
	addi	%x9, %x0, 4  #0 pc 7688
	mv	%f0, l.6293  #0 pc 7692
	sw	%x7, 48(%x2)  #942 pc 7696
	sw	%x5, 44(%x2)  #942 pc 7700
	mv	%x5, %x9 #pc 7704
	sw	%x1, 52(%x2)  #942 pc 7708
	addi	%x2, %x2, 56  #942 pc 7712
	jal	%x1, create_float_array.2600  #942 pc 7716
	addi	%x2, %x2, -56  #942 pc 7720
	lw	%x1, 52(%x2) #942 pc 7724
	mv	%x6, %x3  #945 pc 7728
	addi	%x3, %x3, 48  #945 pc 7732
	addi	%x24, %x0, 40  #pc 7736
	add	%x24, %x24, %x6  #945 pc 7740
	sw	%x5, 0(%x24)  #945 pc 7744
	lw	%x5, 44(%x2)  #945 pc 7748
	addi	%x24, %x0, 36  #pc 7752
	add	%x24, %x24, %x6  #945 pc 7756
	sw	%x5, 0(%x24)  #945 pc 7760
	lw	%x7, 40(%x2)  #945 pc 7764
	addi	%x24, %x0, 32  #pc 7768
	add	%x24, %x24, %x6  #945 pc 7772
	sw	%x7, 0(%x24)  #945 pc 7776
	lw	%x7, 36(%x2)  #945 pc 7780
	addi	%x24, %x0, 28  #pc 7784
	add	%x24, %x24, %x6  #945 pc 7788
	sw	%x7, 0(%x24)  #945 pc 7792
	lw	%x7, 48(%x2)  #945 pc 7796
	addi	%x24, %x0, 24  #pc 7800
	add	%x24, %x24, %x6  #945 pc 7804
	sw	%x7, 0(%x24)  #945 pc 7808
	lw	%x7, 28(%x2)  #945 pc 7812
	addi	%x24, %x0, 20  #pc 7816
	add	%x24, %x24, %x6  #945 pc 7820
	sw	%x7, 0(%x24)  #945 pc 7824
	lw	%x7, 24(%x2)  #945 pc 7828
	addi	%x24, %x0, 16  #pc 7832
	add	%x24, %x24, %x6  #945 pc 7836
	sw	%x7, 0(%x24)  #945 pc 7840
	lw	%x9, 20(%x2)  #945 pc 7844
	addi	%x24, %x0, 12  #pc 7848
	add	%x24, %x24, %x6  #945 pc 7852
	sw	%x9, 0(%x24)  #945 pc 7856
	lw	%x10, 16(%x2)  #945 pc 7860
	addi	%x24, %x0, 8  #pc 7864
	add	%x24, %x24, %x6  #945 pc 7868
	sw	%x10, 0(%x24)  #945 pc 7872
	lw	%x10, 12(%x2)  #945 pc 7876
	addi	%x24, %x0, 4  #pc 7880
	add	%x24, %x24, %x6  #945 pc 7884
	sw	%x10, 0(%x24)  #945 pc 7888
	lw	%x11, 8(%x2)  #945 pc 7892
	add	%x24, %x0, %x6  #945 pc 7896
	sw	%x11, 0(%x24)  #945 pc 7900
	lw	%x11, 4(%x2)  #953 pc 7904
	slli	%x11, %x11, 2  #953 pc 7908
	lw	%x12, 0(%x2)  #953 pc 7912
	add	%x24, %x11, %x12  #953 pc 7916
	sw	%x6, 0(%x24)  #953 pc 7920
	addi	%x24, %x0, 3  #pc 7924
	beq	%x10, %x24, 12  #955 pc 7928
	j	be_else.9241 #pc 7932
	nop #pc 7936
	add	%x24, %x0, %x7  #958 pc 7940
	flw	%f0, 0(%x24)  #958 pc 7944
	fsw	%f0, 56(%x2)  #959 pc 7948
	sw	%x1, 68(%x2)  #959 pc 7952
	addi	%x2, %x2, 72  #959 pc 7956
	jal	%x1, fiszero.2528  #959 pc 7960
	addi	%x2, %x2, -72  #959 pc 7964
	lw	%x1, 68(%x2) #959 pc 7968
	beq	%x5, %x0, 12  #959 pc 7972
	j	be_else.9244 #pc 7976
	nop #pc 7980
	flw	%f0, 56(%x2)  #959 pc 7984
	sw	%x1, 68(%x2)  #959 pc 7988
	addi	%x2, %x2, 72  #959 pc 7992
	jal	%x1, sgn.2636  #959 pc 7996
	addi	%x2, %x2, -72  #959 pc 8000
	lw	%x1, 68(%x2) #959 pc 8004
	flw	%f2, 56(%x2)  #959 pc 8008
	fsw	%f0, 64(%x2)  #959 pc 8012
	mv	%f0, %f2 #pc 8016
	mv	%f1, %f3 #pc 8020
	sw	%x1, 76(%x2)  #959 pc 8024
	addi	%x2, %x2, 80  #959 pc 8028
	jal	%x1, fsqr.2536  #959 pc 8032
	addi	%x2, %x2, -80  #959 pc 8036
	lw	%x1, 76(%x2) #959 pc 8040
	flw	%f2, 64(%x2)  #959 pc 8044
	fdiv	%f0, %f2, %f0  #959 pc 8048
	j	be_cont.9245 #pc 8052
	nop #pc 8056
be_else.9244: #pc 8056
	mv	%f0, l.6293  #0 pc 8060
be_cont.9245: #pc 8060
	lw	%x5, 24(%x2)  #959 pc 8064
	add	%x24, %x0, %x5  #959 pc 8068
	fsw	%f0, 0(%x24) #959 pc 8072
	addi	%x24, %x0, 8  #pc 8076
	add	%x24, %x24, %x5  #960 pc 8080
	flw	%f0, 0(%x24)  #960 pc 8084
	fsw	%f0, 72(%x2)  #961 pc 8088
	sw	%x1, 84(%x2)  #961 pc 8092
	addi	%x2, %x2, 88  #961 pc 8096
	jal	%x1, fiszero.2528  #961 pc 8100
	addi	%x2, %x2, -88  #961 pc 8104
	lw	%x1, 84(%x2) #961 pc 8108
	beq	%x5, %x0, 12  #961 pc 8112
	j	be_else.9246 #pc 8116
	nop #pc 8120
	flw	%f0, 72(%x2)  #961 pc 8124
	sw	%x1, 84(%x2)  #961 pc 8128
	addi	%x2, %x2, 88  #961 pc 8132
	jal	%x1, sgn.2636  #961 pc 8136
	addi	%x2, %x2, -88  #961 pc 8140
	lw	%x1, 84(%x2) #961 pc 8144
	flw	%f2, 72(%x2)  #961 pc 8148
	fsw	%f0, 80(%x2)  #961 pc 8152
	mv	%f0, %f2 #pc 8156
	mv	%f1, %f3 #pc 8160
	sw	%x1, 92(%x2)  #961 pc 8164
	addi	%x2, %x2, 96  #961 pc 8168
	jal	%x1, fsqr.2536  #961 pc 8172
	addi	%x2, %x2, -96  #961 pc 8176
	lw	%x1, 92(%x2) #961 pc 8180
	flw	%f2, 80(%x2)  #961 pc 8184
	fdiv	%f0, %f2, %f0  #961 pc 8188
	j	be_cont.9247 #pc 8192
	nop #pc 8196
be_else.9246: #pc 8196
	mv	%f0, l.6293  #0 pc 8200
be_cont.9247: #pc 8200
	lw	%x5, 24(%x2)  #961 pc 8204
	addi	%x24, %x0, 8  #pc 8208
	add	%x24, %x24, %x5  #961 pc 8212
	fsw	%f0, 0(%x24) #961 pc 8216
	addi	%x24, %x0, 16  #pc 8220
	add	%x24, %x24, %x5  #962 pc 8224
	flw	%f0, 0(%x24)  #962 pc 8228
	fsw	%f0, 88(%x2)  #963 pc 8232
	sw	%x1, 100(%x2)  #963 pc 8236
	addi	%x2, %x2, 104  #963 pc 8240
	jal	%x1, fiszero.2528  #963 pc 8244
	addi	%x2, %x2, -104  #963 pc 8248
	lw	%x1, 100(%x2) #963 pc 8252
	beq	%x5, %x0, 12  #963 pc 8256
	j	be_else.9248 #pc 8260
	nop #pc 8264
	flw	%f0, 88(%x2)  #963 pc 8268
	sw	%x1, 100(%x2)  #963 pc 8272
	addi	%x2, %x2, 104  #963 pc 8276
	jal	%x1, sgn.2636  #963 pc 8280
	addi	%x2, %x2, -104  #963 pc 8284
	lw	%x1, 100(%x2) #963 pc 8288
	flw	%f2, 88(%x2)  #963 pc 8292
	fsw	%f0, 96(%x2)  #963 pc 8296
	mv	%f0, %f2 #pc 8300
	mv	%f1, %f3 #pc 8304
	sw	%x1, 108(%x2)  #963 pc 8308
	addi	%x2, %x2, 112  #963 pc 8312
	jal	%x1, fsqr.2536  #963 pc 8316
	addi	%x2, %x2, -112  #963 pc 8320
	lw	%x1, 108(%x2) #963 pc 8324
	flw	%f2, 96(%x2)  #963 pc 8328
	fdiv	%f0, %f2, %f0  #963 pc 8332
	j	be_cont.9249 #pc 8336
	nop #pc 8340
be_else.9248: #pc 8340
	mv	%f0, l.6293  #0 pc 8344
be_cont.9249: #pc 8344
	lw	%x5, 24(%x2)  #963 pc 8348
	addi	%x24, %x0, 16  #pc 8352
	add	%x24, %x24, %x5  #963 pc 8356
	fsw	%f0, 0(%x24) #963 pc 8360
	j	be_cont.9242 #pc 8364
	nop #pc 8368
be_else.9241: #pc 8368
	addi	%x24, %x0, 2  #pc 8372
	beq	%x10, %x24, 12  #965 pc 8376
	j	be_else.9250 #pc 8380
	nop #pc 8384
	lw	%x6, 32(%x2)  #967 pc 8388
	beq	%x6, %x0, 12  #967 pc 8392
	j	be_else.9252 #pc 8396
	nop #pc 8400
	addi	%x6, %x0, 1  #0 pc 8404
	j	be_cont.9253 #pc 8408
	nop #pc 8412
be_else.9252: #pc 8412
	addi	%x6, %x0, 0  #0 pc 8416
be_cont.9253: #pc 8416
	mv	%x5, %x7 #pc 8420
	sw	%x1, 108(%x2)  #967 pc 8424
	addi	%x2, %x2, 112  #967 pc 8428
	jal	%x1, vecunit_sgn.2657  #967 pc 8432
	addi	%x2, %x2, -112  #967 pc 8436
	lw	%x1, 108(%x2) #967 pc 8440
	j	be_cont.9251 #pc 8444
	nop #pc 8448
be_else.9250: #pc 8448
be_cont.9251: #pc 8448
be_cont.9242: #pc 8448
	lw	%x5, 20(%x2)  #971 pc 8452
	beq	%x5, %x0, 12  #971 pc 8456
	j	be_else.9254 #pc 8460
	nop #pc 8464
	j	be_cont.9255 #pc 8468
	nop #pc 8472
be_else.9254: #pc 8472
	lw	%x5, 24(%x2)  #972 pc 8476
	lw	%x6, 44(%x2)  #972 pc 8480
	sw	%x1, 108(%x2)  #972 pc 8484
	addi	%x2, %x2, 112  #972 pc 8488
	jal	%x1, rotate_quadratic_matrix.2759  #972 pc 8492
	addi	%x2, %x2, -112  #972 pc 8496
	lw	%x1, 108(%x2) #972 pc 8500
be_cont.9255: #pc 8500
	addi	%x5, %x0, 1  #0 pc 8504
	ret #pc 8508
	nop #pc 8512
read_object.2764:  #pc 8512
	addi	%x24, %x0, 8  #pc 8516
	add	%x24, %x24, %x22  #0 pc 8520
	lw	%x6, 0(%x24)  #0 pc 8524
	addi	%x24, %x0, 4  #pc 8528
	add	%x24, %x24, %x22  #0 pc 8532
	lw	%x7, 0(%x24)  #0 pc 8536
	addi	%x24, %x0, 60  #pc 8540
	bge	%x5, %x24, 12  #983 pc 8544
	j	bge_else.9256 #pc 8548
	nop #pc 8552
	ret #pc 8556
	nop #pc 8560
bge_else.9256: #pc 8560
	sw	%x22, 0(%x2)  #984 pc 8564
	sw	%x7, 4(%x2)  #984 pc 8568
	sw	%x5, 8(%x2)  #984 pc 8572
	mv	%x22, %x6 #pc 8576
	sw	%x1, 12(%x2)  #984 pc 8580
	lw	%x23, 0(%x22)  #984 pc 8584
	addi	%x2, %x2, 16  #984 pc 8588
	jalr	%x1, %x23, 0  #984 pc 8592
	addi	%x2, %x2, -16  #984 pc 8596
	lw	%x1, 12(%x2)  #984 pc 8600
	beq	%x5, %x0, 12  #984 pc 8604
	j	be_else.9258 #pc 8608
	nop #pc 8612
	lw	%x5, 4(%x2)  #987 pc 8616
	lw	%x6, 8(%x2)  #987 pc 8620
	add	%x24, %x0, %x5  #987 pc 8624
	sw	%x6, 0(%x24)  #987 pc 8628
	ret #pc 8632
	nop #pc 8636
be_else.9258: #pc 8636
	lw	%x5, 8(%x2)  #985 pc 8640
	addi	%x5, %x5, 1  #985 pc 8644
	lw	%x22, 0(%x2)  #985 pc 8648
	lw	%x23, 0(%x22)  #985 pc 8652
	jalr	%x0, %x23, 0  #985 pc 8656
	nop #pc 8660
read_all_object.2766:  #pc 8660
	addi	%x24, %x0, 4  #pc 8664
	add	%x24, %x24, %x22  #0 pc 8668
	lw	%x22, 0(%x24)  #0 pc 8672
	addi	%x5, %x0, 0  #0 pc 8676
	lw	%x23, 0(%x22)  #992 pc 8680
	jalr	%x0, %x23, 0  #992 pc 8684
	nop #pc 8688
read_net_item.2768:  #pc 8688
	sw	%x5, 0(%x2)  #999 pc 8692
	mv	%x5, %g0 #pc 8696
	sw	%x1, 4(%x2)  #999 pc 8700
	addi	%x2, %x2, 8  #999 pc 8704
	jal	%x1, read_int.2580  #999 pc 8708
	addi	%x2, %x2, -8  #999 pc 8712
	lw	%x1, 4(%x2) #999 pc 8716
	addi	%x24, %x0, -1  #pc 8720
	beq	%x5, %x24, 12  #1000 pc 8724
	j	be_else.9260 #pc 8728
	nop #pc 8732
	lw	%x5, 0(%x2)  #1000 pc 8736
	addi	%x5, %x5, 1  #1000 pc 8740
	addi	%x6, %x0, -1  #0 pc 8744
	j	create_array.2593  #1000 pc 8748
	nop #pc 8752
be_else.9260: #pc 8752
	lw	%x6, 0(%x2)  #1002 pc 8756
	addi	%x7, %x6, 1  #1002 pc 8760
	sw	%x5, 4(%x2)  #1002 pc 8764
	mv	%x5, %x7 #pc 8768
	sw	%x1, 12(%x2)  #1002 pc 8772
	addi	%x2, %x2, 16  #1002 pc 8776
	jal	%x1, read_net_item.2768  #1002 pc 8780
	addi	%x2, %x2, -16  #1002 pc 8784
	lw	%x1, 12(%x2) #1002 pc 8788
	lw	%x6, 0(%x2)  #1003 pc 8792
	slli	%x6, %x6, 2  #1003 pc 8796
	lw	%x7, 4(%x2)  #1003 pc 8800
	add	%x24, %x6, %x5  #1003 pc 8804
	sw	%x7, 0(%x24)  #1003 pc 8808
	ret #pc 8812
	nop #pc 8816
read_or_network.2770:  #pc 8816
	addi	%x6, %x0, 0  #0 pc 8820
	sw	%x5, 0(%x2)  #1007 pc 8824
	mv	%x5, %x6 #pc 8828
	sw	%x1, 4(%x2)  #1007 pc 8832
	addi	%x2, %x2, 8  #1007 pc 8836
	jal	%x1, read_net_item.2768  #1007 pc 8840
	addi	%x2, %x2, -8  #1007 pc 8844
	lw	%x1, 4(%x2) #1007 pc 8848
	mv	%x6, %x5  #1007 pc 8852
	add	%x24, %x0, %x6  #1008 pc 8856
	lw	%x5, 0(%x24)  #1008 pc 8860
	addi	%x24, %x0, -1  #pc 8864
	beq	%x5, %x24, 12  #1008 pc 8868
	j	be_else.9261 #pc 8872
	nop #pc 8876
	lw	%x5, 0(%x2)  #1009 pc 8880
	addi	%x5, %x5, 1  #1009 pc 8884
	j	create_array.2593  #1009 pc 8888
	nop #pc 8892
be_else.9261: #pc 8892
	lw	%x5, 0(%x2)  #1011 pc 8896
	addi	%x7, %x5, 1  #1011 pc 8900
	sw	%x6, 4(%x2)  #1011 pc 8904
	mv	%x5, %x7 #pc 8908
	sw	%x1, 12(%x2)  #1011 pc 8912
	addi	%x2, %x2, 16  #1011 pc 8916
	jal	%x1, read_or_network.2770  #1011 pc 8920
	addi	%x2, %x2, -16  #1011 pc 8924
	lw	%x1, 12(%x2) #1011 pc 8928
	lw	%x6, 0(%x2)  #1012 pc 8932
	slli	%x6, %x6, 2  #1012 pc 8936
	lw	%x7, 4(%x2)  #1012 pc 8940
	add	%x24, %x6, %x5  #1012 pc 8944
	sw	%x7, 0(%x24)  #1012 pc 8948
	ret #pc 8952
	nop #pc 8956
read_and_network.2772:  #pc 8956
	addi	%x24, %x0, 4  #pc 8960
	add	%x24, %x24, %x22  #0 pc 8964
	lw	%x6, 0(%x24)  #0 pc 8968
	addi	%x7, %x0, 0  #0 pc 8972
	sw	%x22, 0(%x2)  #1016 pc 8976
	sw	%x6, 4(%x2)  #1016 pc 8980
	sw	%x5, 8(%x2)  #1016 pc 8984
	mv	%x5, %x7 #pc 8988
	sw	%x1, 12(%x2)  #1016 pc 8992
	addi	%x2, %x2, 16  #1016 pc 8996
	jal	%x1, read_net_item.2768  #1016 pc 9000
	addi	%x2, %x2, -16  #1016 pc 9004
	lw	%x1, 12(%x2) #1016 pc 9008
	add	%x24, %x0, %x5  #1017 pc 9012
	lw	%x6, 0(%x24)  #1017 pc 9016
	addi	%x24, %x0, -1  #pc 9020
	beq	%x6, %x24, 12  #1017 pc 9024
	j	be_else.9262 #pc 9028
	nop #pc 9032
	ret #pc 9036
	nop #pc 9040
be_else.9262: #pc 9040
	lw	%x6, 8(%x2)  #1019 pc 9044
	slli	%x7, %x6, 2  #1019 pc 9048
	lw	%x9, 4(%x2)  #1019 pc 9052
	add	%x24, %x7, %x9  #1019 pc 9056
	sw	%x5, 0(%x24)  #1019 pc 9060
	addi	%x5, %x6, 1  #1020 pc 9064
	lw	%x22, 0(%x2)  #1020 pc 9068
	lw	%x23, 0(%x22)  #1020 pc 9072
	jalr	%x0, %x23, 0  #1020 pc 9076
	nop #pc 9080
read_parameter.2774:  #pc 9080
	addi	%x24, %x0, 20  #pc 9084
	add	%x24, %x24, %x22  #0 pc 9088
	lw	%x5, 0(%x24)  #0 pc 9092
	addi	%x24, %x0, 16  #pc 9096
	add	%x24, %x24, %x22  #0 pc 9100
	lw	%x6, 0(%x24)  #0 pc 9104
	addi	%x24, %x0, 12  #pc 9108
	add	%x24, %x24, %x22  #0 pc 9112
	lw	%x7, 0(%x24)  #0 pc 9116
	addi	%x24, %x0, 8  #pc 9120
	add	%x24, %x24, %x22  #0 pc 9124
	lw	%x9, 0(%x24)  #0 pc 9128
	addi	%x24, %x0, 4  #pc 9132
	add	%x24, %x24, %x22  #0 pc 9136
	lw	%x10, 0(%x24)  #0 pc 9140
	sw	%x10, 0(%x2)  #1026 pc 9144
	sw	%x7, 4(%x2)  #1026 pc 9148
	sw	%x9, 8(%x2)  #1026 pc 9152
	sw	%x6, 12(%x2)  #1026 pc 9156
	mv	%x22, %x5 #pc 9160
	mv	%x5, %g0 #pc 9164
	sw	%x1, 20(%x2)  #1026 pc 9168
	lw	%x23, 0(%x22)  #1026 pc 9172
	addi	%x2, %x2, 24  #1026 pc 9176
	jalr	%x1, %x23, 0  #1026 pc 9180
	addi	%x2, %x2, -24  #1026 pc 9184
	lw	%x1, 20(%x2)  #1026 pc 9188
	lw	%x22, 12(%x2)  #1027 pc 9192
	mv	%x5, %g0 #pc 9196
	sw	%x1, 20(%x2)  #1027 pc 9200
	lw	%x23, 0(%x22)  #1027 pc 9204
	addi	%x2, %x2, 24  #1027 pc 9208
	jalr	%x1, %x23, 0  #1027 pc 9212
	addi	%x2, %x2, -24  #1027 pc 9216
	lw	%x1, 20(%x2)  #1027 pc 9220
	lw	%x22, 8(%x2)  #1028 pc 9224
	mv	%x5, %g0 #pc 9228
	sw	%x1, 20(%x2)  #1028 pc 9232
	lw	%x23, 0(%x22)  #1028 pc 9236
	addi	%x2, %x2, 24  #1028 pc 9240
	jalr	%x1, %x23, 0  #1028 pc 9244
	addi	%x2, %x2, -24  #1028 pc 9248
	lw	%x1, 20(%x2)  #1028 pc 9252
	addi	%x5, %x0, 0  #0 pc 9256
	lw	%x22, 4(%x2)  #1029 pc 9260
	sw	%x1, 20(%x2)  #1029 pc 9264
	lw	%x23, 0(%x22)  #1029 pc 9268
	addi	%x2, %x2, 24  #1029 pc 9272
	jalr	%x1, %x23, 0  #1029 pc 9276
	addi	%x2, %x2, -24  #1029 pc 9280
	lw	%x1, 20(%x2)  #1029 pc 9284
	addi	%x5, %x0, 0  #0 pc 9288
	sw	%x1, 20(%x2)  #1030 pc 9292
	addi	%x2, %x2, 24  #1030 pc 9296
	jal	%x1, read_or_network.2770  #1030 pc 9300
	addi	%x2, %x2, -24  #1030 pc 9304
	lw	%x1, 20(%x2) #1030 pc 9308
	lw	%x6, 0(%x2)  #1030 pc 9312
	add	%x24, %x0, %x6  #1030 pc 9316
	sw	%x5, 0(%x24)  #1030 pc 9320
	ret #pc 9324
	nop #pc 9328
solver_rect_surface.2776:  #pc 9328
	addi	%x24, %x0, 4  #pc 9332
	add	%x24, %x24, %x22  #0 pc 9336
	lw	%x11, 0(%x24)  #0 pc 9340
	slli	%x12, %x7, 3  #1050 pc 9344
	add	%x24, %x12, %x6  #1050 pc 9348
	flw	%f6, 0(%x24)  #1050 pc 9352
	sw	%x11, 0(%x2)  #1050 pc 9356
	fsw	%f4, 8(%x2)  #1050 pc 9360
	sw	%x10, 16(%x2)  #1050 pc 9364
	fsw	%f2, 24(%x2)  #1050 pc 9368
	sw	%x9, 32(%x2)  #1050 pc 9372
	fsw	%f0, 40(%x2)  #1050 pc 9376
	sw	%x6, 48(%x2)  #1050 pc 9380
	sw	%x7, 52(%x2)  #1050 pc 9384
	sw	%x5, 56(%x2)  #1050 pc 9388
	mv	%f0, %f6 #pc 9392
	mv	%f1, %f7 #pc 9396
	sw	%x1, 60(%x2)  #1050 pc 9400
	addi	%x2, %x2, 64  #1050 pc 9404
	jal	%x1, fiszero.2528  #1050 pc 9408
	addi	%x2, %x2, -64  #1050 pc 9412
	lw	%x1, 60(%x2) #1050 pc 9416
	beq	%x5, %x0, 12  #1050 pc 9420
	j	be_else.9268 #pc 9424
	nop #pc 9428
	lw	%x5, 56(%x2)  #1051 pc 9432
	sw	%x1, 60(%x2)  #1051 pc 9436
	addi	%x2, %x2, 64  #1051 pc 9440
	jal	%x1, o_param_abc.2698  #1051 pc 9444
	addi	%x2, %x2, -64  #1051 pc 9448
	lw	%x1, 60(%x2) #1051 pc 9452
	lw	%x6, 56(%x2)  #1052 pc 9456
	sw	%x5, 60(%x2)  #1052 pc 9460
	mv	%x5, %x6 #pc 9464
	sw	%x1, 68(%x2)  #1052 pc 9468
	addi	%x2, %x2, 72  #1052 pc 9472
	jal	%x1, o_isinvert.2688  #1052 pc 9476
	addi	%x2, %x2, -72  #1052 pc 9480
	lw	%x1, 68(%x2) #1052 pc 9484
	lw	%x6, 52(%x2)  #1052 pc 9488
	slli	%x7, %x6, 3  #1052 pc 9492
	lw	%x9, 48(%x2)  #1052 pc 9496
	add	%x24, %x7, %x9  #1052 pc 9500
	flw	%f0, 0(%x24)  #1052 pc 9504
	sw	%x5, 64(%x2)  #1052 pc 9508
	sw	%x1, 68(%x2)  #1052 pc 9512
	addi	%x2, %x2, 72  #1052 pc 9516
	jal	%x1, fisneg.2532  #1052 pc 9520
	addi	%x2, %x2, -72  #1052 pc 9524
	lw	%x1, 68(%x2) #1052 pc 9528
	mv	%x6, %x5  #1052 pc 9532
	lw	%x5, 64(%x2)  #1052 pc 9536
	sw	%x1, 68(%x2)  #1052 pc 9540
	addi	%x2, %x2, 72  #1052 pc 9544
	jal	%x1, xor.2633  #1052 pc 9548
	addi	%x2, %x2, -72  #1052 pc 9552
	lw	%x1, 68(%x2) #1052 pc 9556
	lw	%x6, 52(%x2)  #1052 pc 9560
	slli	%x7, %x6, 3  #1052 pc 9564
	lw	%x9, 60(%x2)  #1052 pc 9568
	add	%x24, %x7, %x9  #1052 pc 9572
	flw	%f0, 0(%x24)  #1052 pc 9576
	sw	%x1, 68(%x2)  #1052 pc 9580
	addi	%x2, %x2, 72  #1052 pc 9584
	jal	%x1, fneg_cond.2638  #1052 pc 9588
	addi	%x2, %x2, -72  #1052 pc 9592
	lw	%x1, 68(%x2) #1052 pc 9596
	flw	%f2, 40(%x2)  #1054 pc 9600
	fsub	%f0, %f0, %f2  #1054 pc 9604
	lw	%x5, 52(%x2)  #1054 pc 9608
	slli	%x5, %x5, 3  #1054 pc 9612
	lw	%x6, 48(%x2)  #1054 pc 9616
	add	%x24, %x5, %x6  #1054 pc 9620
	flw	%f2, 0(%x24)  #1054 pc 9624
	fdiv	%f0, %f0, %f2  #1054 pc 9628
	lw	%x5, 32(%x2)  #1055 pc 9632
	slli	%x7, %x5, 3  #1055 pc 9636
	add	%x24, %x7, %x6  #1055 pc 9640
	flw	%f2, 0(%x24)  #1055 pc 9644
	fmul	%f2, %f0, %f2  #1055 pc 9648
	flw	%f4, 24(%x2)  #1055 pc 9652
	fadd	%f2, %f2, %f4  #1055 pc 9656
	fabs	%f2, %f2  #1055 pc 9660
	slli	%x5, %x5, 3  #1055 pc 9664
	lw	%x7, 60(%x2)  #1055 pc 9668
	add	%x24, %x5, %x7  #1055 pc 9672
	flw	%f4, 0(%x24)  #1055 pc 9676
	fsw	%f0, 72(%x2)  #1055 pc 9680
	mv	%f0, %f2 #pc 9684
	mv	%f1, %f3 #pc 9688
	mv	%f2, %f4 #pc 9692
	mv	%f3, %f5 #pc 9696
	sw	%x1, 84(%x2)  #1055 pc 9700
	addi	%x2, %x2, 88  #1055 pc 9704
	jal	%x1, fless.2540  #1055 pc 9708
	addi	%x2, %x2, -88  #1055 pc 9712
	lw	%x1, 84(%x2) #1055 pc 9716
	beq	%x5, %x0, 12  #1055 pc 9720
	j	be_else.9270 #pc 9724
	nop #pc 9728
	addi	%x5, %x0, 0  #0 pc 9732
	ret #pc 9736
	nop #pc 9740
be_else.9270: #pc 9740
	lw	%x5, 16(%x2)  #1056 pc 9744
	slli	%x6, %x5, 3  #1056 pc 9748
	lw	%x7, 48(%x2)  #1056 pc 9752
	add	%x24, %x6, %x7  #1056 pc 9756
	flw	%f0, 0(%x24)  #1056 pc 9760
	flw	%f2, 72(%x2)  #1056 pc 9764
	fmul	%f0, %f2, %f0  #1056 pc 9768
	flw	%f4, 8(%x2)  #1056 pc 9772
	fadd	%f0, %f0, %f4  #1056 pc 9776
	fabs	%f0, %f0  #1056 pc 9780
	slli	%x5, %x5, 3  #1056 pc 9784
	lw	%x6, 60(%x2)  #1056 pc 9788
	add	%x24, %x5, %x6  #1056 pc 9792
	flw	%f4, 0(%x24)  #1056 pc 9796
	mv	%f2, %f4 #pc 9800
	mv	%f3, %f5 #pc 9804
	sw	%x1, 84(%x2)  #1056 pc 9808
	addi	%x2, %x2, 88  #1056 pc 9812
	jal	%x1, fless.2540  #1056 pc 9816
	addi	%x2, %x2, -88  #1056 pc 9820
	lw	%x1, 84(%x2) #1056 pc 9824
	beq	%x5, %x0, 12  #1056 pc 9828
	j	be_else.9271 #pc 9832
	nop #pc 9836
	addi	%x5, %x0, 0  #0 pc 9840
	ret #pc 9844
	nop #pc 9848
be_else.9271: #pc 9848
	lw	%x5, 0(%x2)  #1057 pc 9852
	flw	%f0, 72(%x2)  #1057 pc 9856
	add	%x24, %x0, %x5  #1057 pc 9860
	fsw	%f0, 0(%x24) #1057 pc 9864
	addi	%x5, %x0, 1  #0 pc 9868
	ret #pc 9872
	nop #pc 9876
be_else.9268: #pc 9876
	addi	%x5, %x0, 0  #0 pc 9880
	ret #pc 9884
	nop #pc 9888
solver_rect.2785:  #pc 9888
	addi	%x24, %x0, 4  #pc 9892
	add	%x24, %x24, %x22  #0 pc 9896
	lw	%x22, 0(%x24)  #0 pc 9900
	addi	%x7, %x0, 0  #0 pc 9904
	addi	%x9, %x0, 1  #0 pc 9908
	addi	%x10, %x0, 2  #0 pc 9912
	fsw	%f0, 0(%x2)  #1065 pc 9916
	fsw	%f4, 8(%x2)  #1065 pc 9920
	fsw	%f2, 16(%x2)  #1065 pc 9924
	sw	%x6, 24(%x2)  #1065 pc 9928
	sw	%x5, 28(%x2)  #1065 pc 9932
	sw	%x22, 32(%x2)  #1065 pc 9936
	sw	%x1, 36(%x2)  #1065 pc 9940
	lw	%x23, 0(%x22)  #1065 pc 9944
	addi	%x2, %x2, 40  #1065 pc 9948
	jalr	%x1, %x23, 0  #1065 pc 9952
	addi	%x2, %x2, -40  #1065 pc 9956
	lw	%x1, 36(%x2)  #1065 pc 9960
	beq	%x5, %x0, 12  #1065 pc 9964
	j	be_else.9272 #pc 9968
	nop #pc 9972
	addi	%x7, %x0, 1  #0 pc 9976
	addi	%x9, %x0, 2  #0 pc 9980
	addi	%x10, %x0, 0  #0 pc 9984
	flw	%f0, 16(%x2)  #1066 pc 9988
	flw	%f2, 8(%x2)  #1066 pc 9992
	flw	%f4, 0(%x2)  #1066 pc 9996
	lw	%x5, 28(%x2)  #1066 pc 10000
	lw	%x6, 24(%x2)  #1066 pc 10004
	lw	%x22, 32(%x2)  #1066 pc 10008
	sw	%x1, 36(%x2)  #1066 pc 10012
	lw	%x23, 0(%x22)  #1066 pc 10016
	addi	%x2, %x2, 40  #1066 pc 10020
	jalr	%x1, %x23, 0  #1066 pc 10024
	addi	%x2, %x2, -40  #1066 pc 10028
	lw	%x1, 36(%x2)  #1066 pc 10032
	beq	%x5, %x0, 12  #1066 pc 10036
	j	be_else.9273 #pc 10040
	nop #pc 10044
	addi	%x7, %x0, 2  #0 pc 10048
	addi	%x9, %x0, 0  #0 pc 10052
	addi	%x10, %x0, 1  #0 pc 10056
	flw	%f0, 8(%x2)  #1067 pc 10060
	flw	%f2, 0(%x2)  #1067 pc 10064
	flw	%f4, 16(%x2)  #1067 pc 10068
	lw	%x5, 28(%x2)  #1067 pc 10072
	lw	%x6, 24(%x2)  #1067 pc 10076
	lw	%x22, 32(%x2)  #1067 pc 10080
	sw	%x1, 36(%x2)  #1067 pc 10084
	lw	%x23, 0(%x22)  #1067 pc 10088
	addi	%x2, %x2, 40  #1067 pc 10092
	jalr	%x1, %x23, 0  #1067 pc 10096
	addi	%x2, %x2, -40  #1067 pc 10100
	lw	%x1, 36(%x2)  #1067 pc 10104
	beq	%x5, %x0, 12  #1067 pc 10108
	j	be_else.9274 #pc 10112
	nop #pc 10116
	addi	%x5, %x0, 0  #0 pc 10120
	ret #pc 10124
	nop #pc 10128
be_else.9274: #pc 10128
	addi	%x5, %x0, 3  #0 pc 10132
	ret #pc 10136
	nop #pc 10140
be_else.9273: #pc 10140
	addi	%x5, %x0, 2  #0 pc 10144
	ret #pc 10148
	nop #pc 10152
be_else.9272: #pc 10152
	addi	%x5, %x0, 1  #0 pc 10156
	ret #pc 10160
	nop #pc 10164
solver_surface.2791:  #pc 10164
	addi	%x24, %x0, 4  #pc 10168
	add	%x24, %x24, %x22  #1076 pc 10172
	lw	%x7, 0(%x24)  #1076 pc 10176
	sw	%x7, 0(%x2)  #1076 pc 10180
	fsw	%f4, 8(%x2)  #1076 pc 10184
	fsw	%f2, 16(%x2)  #1076 pc 10188
	fsw	%f0, 24(%x2)  #1076 pc 10192
	sw	%x6, 32(%x2)  #1076 pc 10196
	sw	%x1, 36(%x2)  #1076 pc 10200
	addi	%x2, %x2, 40  #1076 pc 10204
	jal	%x1, o_param_abc.2698  #1076 pc 10208
	addi	%x2, %x2, -40  #1076 pc 10212
	lw	%x1, 36(%x2) #1076 pc 10216
	mv	%x6, %x5  #1076 pc 10220
	lw	%x5, 32(%x2)  #1077 pc 10224
	sw	%x6, 36(%x2)  #1077 pc 10228
	sw	%x1, 44(%x2)  #1077 pc 10232
	addi	%x2, %x2, 48  #1077 pc 10236
	jal	%x1, veciprod.2660  #1077 pc 10240
	addi	%x2, %x2, -48  #1077 pc 10244
	lw	%x1, 44(%x2) #1077 pc 10248
	fsw	%f0, 40(%x2)  #1078 pc 10252
	sw	%x1, 52(%x2)  #1078 pc 10256
	addi	%x2, %x2, 56  #1078 pc 10260
	jal	%x1, fispos.2530  #1078 pc 10264
	addi	%x2, %x2, -56  #1078 pc 10268
	lw	%x1, 52(%x2) #1078 pc 10272
	beq	%x5, %x0, 12  #1078 pc 10276
	j	be_else.9276 #pc 10280
	nop #pc 10284
	addi	%x5, %x0, 0  #0 pc 10288
	ret #pc 10292
	nop #pc 10296
be_else.9276: #pc 10296
	flw	%f0, 24(%x2)  #1079 pc 10300
	flw	%f2, 16(%x2)  #1079 pc 10304
	flw	%f4, 8(%x2)  #1079 pc 10308
	lw	%x5, 36(%x2)  #1079 pc 10312
	sw	%x1, 52(%x2)  #1079 pc 10316
	addi	%x2, %x2, 56  #1079 pc 10320
	jal	%x1, veciprod2.2663  #1079 pc 10324
	addi	%x2, %x2, -56  #1079 pc 10328
	lw	%x1, 52(%x2) #1079 pc 10332
	sw	%x1, 52(%x2)  #1079 pc 10336
	addi	%x2, %x2, 56  #1079 pc 10340
	jal	%x1, fneg.2534  #1079 pc 10344
	addi	%x2, %x2, -56  #1079 pc 10348
	lw	%x1, 52(%x2) #1079 pc 10352
	flw	%f2, 40(%x2)  #1079 pc 10356
	fdiv	%f0, %f0, %f2  #1079 pc 10360
	lw	%x5, 0(%x2)  #1079 pc 10364
	add	%x24, %x0, %x5  #1079 pc 10368
	fsw	%f0, 0(%x24) #1079 pc 10372
	addi	%x5, %x0, 1  #0 pc 10376
	ret #pc 10380
	nop #pc 10384
quadratic.2797:  #pc 10384
	fsw	%f0, 0(%x2)  #1089 pc 10388
	fsw	%f4, 8(%x2)  #1089 pc 10392
	fsw	%f2, 16(%x2)  #1089 pc 10396
	sw	%x5, 24(%x2)  #1089 pc 10400
	sw	%x1, 28(%x2)  #1089 pc 10404
	addi	%x2, %x2, 32  #1089 pc 10408
	jal	%x1, fsqr.2536  #1089 pc 10412
	addi	%x2, %x2, -32  #1089 pc 10416
	lw	%x1, 28(%x2) #1089 pc 10420
	lw	%x5, 24(%x2)  #1089 pc 10424
	fsw	%f0, 32(%x2)  #1089 pc 10428
	sw	%x1, 44(%x2)  #1089 pc 10432
	addi	%x2, %x2, 48  #1089 pc 10436
	jal	%x1, o_param_a.2692  #1089 pc 10440
	addi	%x2, %x2, -48  #1089 pc 10444
	lw	%x1, 44(%x2) #1089 pc 10448
	flw	%f2, 32(%x2)  #1089 pc 10452
	fmul	%f0, %f2, %f0  #1089 pc 10456
	flw	%f2, 16(%x2)  #1089 pc 10460
	fsw	%f0, 40(%x2)  #1089 pc 10464
	mv	%f0, %f2 #pc 10468
	mv	%f1, %f3 #pc 10472
	sw	%x1, 52(%x2)  #1089 pc 10476
	addi	%x2, %x2, 56  #1089 pc 10480
	jal	%x1, fsqr.2536  #1089 pc 10484
	addi	%x2, %x2, -56  #1089 pc 10488
	lw	%x1, 52(%x2) #1089 pc 10492
	lw	%x5, 24(%x2)  #1089 pc 10496
	fsw	%f0, 48(%x2)  #1089 pc 10500
	sw	%x1, 60(%x2)  #1089 pc 10504
	addi	%x2, %x2, 64  #1089 pc 10508
	jal	%x1, o_param_b.2694  #1089 pc 10512
	addi	%x2, %x2, -64  #1089 pc 10516
	lw	%x1, 60(%x2) #1089 pc 10520
	flw	%f2, 48(%x2)  #1089 pc 10524
	fmul	%f0, %f2, %f0  #1089 pc 10528
	flw	%f2, 40(%x2)  #1089 pc 10532
	fadd	%f0, %f2, %f0  #1089 pc 10536
	flw	%f2, 8(%x2)  #1089 pc 10540
	fsw	%f0, 56(%x2)  #1089 pc 10544
	mv	%f0, %f2 #pc 10548
	mv	%f1, %f3 #pc 10552
	sw	%x1, 68(%x2)  #1089 pc 10556
	addi	%x2, %x2, 72  #1089 pc 10560
	jal	%x1, fsqr.2536  #1089 pc 10564
	addi	%x2, %x2, -72  #1089 pc 10568
	lw	%x1, 68(%x2) #1089 pc 10572
	lw	%x5, 24(%x2)  #1089 pc 10576
	fsw	%f0, 64(%x2)  #1089 pc 10580
	sw	%x1, 76(%x2)  #1089 pc 10584
	addi	%x2, %x2, 80  #1089 pc 10588
	jal	%x1, o_param_c.2696  #1089 pc 10592
	addi	%x2, %x2, -80  #1089 pc 10596
	lw	%x1, 76(%x2) #1089 pc 10600
	flw	%f2, 64(%x2)  #1089 pc 10604
	fmul	%f0, %f2, %f0  #1089 pc 10608
	flw	%f2, 56(%x2)  #1089 pc 10612
	fadd	%f0, %f2, %f0  #1089 pc 10616
	lw	%x5, 24(%x2)  #1091 pc 10620
	fsw	%f0, 72(%x2)  #1091 pc 10624
	sw	%x1, 84(%x2)  #1091 pc 10628
	addi	%x2, %x2, 88  #1091 pc 10632
	jal	%x1, o_isrot.2690  #1091 pc 10636
	addi	%x2, %x2, -88  #1091 pc 10640
	lw	%x1, 84(%x2) #1091 pc 10644
	beq	%x5, %x0, 12  #1091 pc 10648
	j	be_else.9278 #pc 10652
	nop #pc 10656
	flw	%f0, 72(%x2)  #1092 pc 10660
	ret #pc 10664
	nop #pc 10668
be_else.9278: #pc 10668
	flw	%f0, 8(%x2)  #1095 pc 10672
	flw	%f2, 16(%x2)  #1095 pc 10676
	fmul	%f4, %f2, %f0  #1095 pc 10680
	lw	%x5, 24(%x2)  #1095 pc 10684
	fsw	%f4, 80(%x2)  #1095 pc 10688
	sw	%x1, 92(%x2)  #1095 pc 10692
	addi	%x2, %x2, 96  #1095 pc 10696
	jal	%x1, o_param_r1.2716  #1095 pc 10700
	addi	%x2, %x2, -96  #1095 pc 10704
	lw	%x1, 92(%x2) #1095 pc 10708
	flw	%f2, 80(%x2)  #1095 pc 10712
	fmul	%f0, %f2, %f0  #1095 pc 10716
	flw	%f2, 72(%x2)  #1094 pc 10720
	fadd	%f0, %f2, %f0  #1094 pc 10724
	flw	%f2, 0(%x2)  #1096 pc 10728
	flw	%f4, 8(%x2)  #1096 pc 10732
	fmul	%f4, %f4, %f2  #1096 pc 10736
	lw	%x5, 24(%x2)  #1096 pc 10740
	fsw	%f0, 88(%x2)  #1096 pc 10744
	fsw	%f4, 96(%x2)  #1096 pc 10748
	sw	%x1, 108(%x2)  #1096 pc 10752
	addi	%x2, %x2, 112  #1096 pc 10756
	jal	%x1, o_param_r2.2718  #1096 pc 10760
	addi	%x2, %x2, -112  #1096 pc 10764
	lw	%x1, 108(%x2) #1096 pc 10768
	flw	%f2, 96(%x2)  #1096 pc 10772
	fmul	%f0, %f2, %f0  #1096 pc 10776
	flw	%f2, 88(%x2)  #1094 pc 10780
	fadd	%f0, %f2, %f0  #1094 pc 10784
	flw	%f2, 16(%x2)  #1097 pc 10788
	flw	%f4, 0(%x2)  #1097 pc 10792
	fmul	%f2, %f4, %f2  #1097 pc 10796
	lw	%x5, 24(%x2)  #1097 pc 10800
	fsw	%f0, 104(%x2)  #1097 pc 10804
	fsw	%f2, 112(%x2)  #1097 pc 10808
	sw	%x1, 124(%x2)  #1097 pc 10812
	addi	%x2, %x2, 128  #1097 pc 10816
	jal	%x1, o_param_r3.2720  #1097 pc 10820
	addi	%x2, %x2, -128  #1097 pc 10824
	lw	%x1, 124(%x2) #1097 pc 10828
	flw	%f2, 112(%x2)  #1097 pc 10832
	fmul	%f0, %f2, %f0  #1097 pc 10836
	flw	%f2, 104(%x2)  #1094 pc 10840
	fadd	%f0, %f2, %f0  #1094 pc 10844
	ret #pc 10848
	nop #pc 10852
bilinear.2802:  #pc 10852
	fmul	%f12, %f0, %f6  #1103 pc 10856
	fsw	%f6, 0(%x2)  #1103 pc 10860
	fsw	%f0, 8(%x2)  #1103 pc 10864
	fsw	%f10, 16(%x2)  #1103 pc 10868
	fsw	%f4, 24(%x2)  #1103 pc 10872
	sw	%x5, 32(%x2)  #1103 pc 10876
	fsw	%f8, 40(%x2)  #1103 pc 10880
	fsw	%f2, 48(%x2)  #1103 pc 10884
	fsw	%f12, 56(%x2)  #1103 pc 10888
	sw	%x1, 68(%x2)  #1103 pc 10892
	addi	%x2, %x2, 72  #1103 pc 10896
	jal	%x1, o_param_a.2692  #1103 pc 10900
	addi	%x2, %x2, -72  #1103 pc 10904
	lw	%x1, 68(%x2) #1103 pc 10908
	flw	%f2, 56(%x2)  #1103 pc 10912
	fmul	%f0, %f2, %f0  #1103 pc 10916
	flw	%f2, 40(%x2)  #1104 pc 10920
	flw	%f4, 48(%x2)  #1104 pc 10924
	fmul	%f6, %f4, %f2  #1104 pc 10928
	lw	%x5, 32(%x2)  #1104 pc 10932
	fsw	%f0, 64(%x2)  #1104 pc 10936
	fsw	%f6, 72(%x2)  #1104 pc 10940
	sw	%x1, 84(%x2)  #1104 pc 10944
	addi	%x2, %x2, 88  #1104 pc 10948
	jal	%x1, o_param_b.2694  #1104 pc 10952
	addi	%x2, %x2, -88  #1104 pc 10956
	lw	%x1, 84(%x2) #1104 pc 10960
	flw	%f2, 72(%x2)  #1104 pc 10964
	fmul	%f0, %f2, %f0  #1104 pc 10968
	flw	%f2, 64(%x2)  #1103 pc 10972
	fadd	%f0, %f2, %f0  #1103 pc 10976
	flw	%f2, 16(%x2)  #1105 pc 10980
	flw	%f4, 24(%x2)  #1105 pc 10984
	fmul	%f6, %f4, %f2  #1105 pc 10988
	lw	%x5, 32(%x2)  #1105 pc 10992
	fsw	%f0, 80(%x2)  #1105 pc 10996
	fsw	%f6, 88(%x2)  #1105 pc 11000
	sw	%x1, 100(%x2)  #1105 pc 11004
	addi	%x2, %x2, 104  #1105 pc 11008
	jal	%x1, o_param_c.2696  #1105 pc 11012
	addi	%x2, %x2, -104  #1105 pc 11016
	lw	%x1, 100(%x2) #1105 pc 11020
	flw	%f2, 88(%x2)  #1105 pc 11024
	fmul	%f0, %f2, %f0  #1105 pc 11028
	flw	%f2, 80(%x2)  #1103 pc 11032
	fadd	%f0, %f2, %f0  #1103 pc 11036
	lw	%x5, 32(%x2)  #1107 pc 11040
	fsw	%f0, 96(%x2)  #1107 pc 11044
	sw	%x1, 108(%x2)  #1107 pc 11048
	addi	%x2, %x2, 112  #1107 pc 11052
	jal	%x1, o_isrot.2690  #1107 pc 11056
	addi	%x2, %x2, -112  #1107 pc 11060
	lw	%x1, 108(%x2) #1107 pc 11064
	beq	%x5, %x0, 12  #1107 pc 11068
	j	be_else.9280 #pc 11072
	nop #pc 11076
	flw	%f0, 96(%x2)  #1108 pc 11080
	ret #pc 11084
	nop #pc 11088
be_else.9280: #pc 11088
	flw	%f0, 40(%x2)  #1111 pc 11092
	flw	%f2, 24(%x2)  #1111 pc 11096
	fmul	%f4, %f2, %f0  #1111 pc 11100
	flw	%f6, 16(%x2)  #1111 pc 11104
	flw	%f8, 48(%x2)  #1111 pc 11108
	fmul	%f10, %f8, %f6  #1111 pc 11112
	fadd	%f4, %f4, %f10  #1111 pc 11116
	lw	%x5, 32(%x2)  #1111 pc 11120
	fsw	%f4, 104(%x2)  #1111 pc 11124
	sw	%x1, 116(%x2)  #1111 pc 11128
	addi	%x2, %x2, 120  #1111 pc 11132
	jal	%x1, o_param_r1.2716  #1111 pc 11136
	addi	%x2, %x2, -120  #1111 pc 11140
	lw	%x1, 116(%x2) #1111 pc 11144
	flw	%f2, 104(%x2)  #1111 pc 11148
	fmul	%f0, %f2, %f0  #1111 pc 11152
	flw	%f2, 16(%x2)  #1112 pc 11156
	flw	%f4, 8(%x2)  #1112 pc 11160
	fmul	%f2, %f4, %f2  #1112 pc 11164
	flw	%f6, 0(%x2)  #1112 pc 11168
	flw	%f8, 24(%x2)  #1112 pc 11172
	fmul	%f8, %f8, %f6  #1112 pc 11176
	fadd	%f2, %f2, %f8  #1112 pc 11180
	lw	%x5, 32(%x2)  #1112 pc 11184
	fsw	%f0, 112(%x2)  #1112 pc 11188
	fsw	%f2, 120(%x2)  #1112 pc 11192
	sw	%x1, 132(%x2)  #1112 pc 11196
	addi	%x2, %x2, 136  #1112 pc 11200
	jal	%x1, o_param_r2.2718  #1112 pc 11204
	addi	%x2, %x2, -136  #1112 pc 11208
	lw	%x1, 132(%x2) #1112 pc 11212
	flw	%f2, 120(%x2)  #1112 pc 11216
	fmul	%f0, %f2, %f0  #1112 pc 11220
	flw	%f2, 112(%x2)  #1111 pc 11224
	fadd	%f0, %f2, %f0  #1111 pc 11228
	flw	%f2, 40(%x2)  #1113 pc 11232
	flw	%f4, 8(%x2)  #1113 pc 11236
	fmul	%f2, %f4, %f2  #1113 pc 11240
	flw	%f4, 0(%x2)  #1113 pc 11244
	flw	%f6, 48(%x2)  #1113 pc 11248
	fmul	%f4, %f6, %f4  #1113 pc 11252
	fadd	%f2, %f2, %f4  #1113 pc 11256
	lw	%x5, 32(%x2)  #1113 pc 11260
	fsw	%f0, 128(%x2)  #1113 pc 11264
	fsw	%f2, 136(%x2)  #1113 pc 11268
	sw	%x1, 148(%x2)  #1113 pc 11272
	addi	%x2, %x2, 152  #1113 pc 11276
	jal	%x1, o_param_r3.2720  #1113 pc 11280
	addi	%x2, %x2, -152  #1113 pc 11284
	lw	%x1, 148(%x2) #1113 pc 11288
	flw	%f2, 136(%x2)  #1113 pc 11292
	fmul	%f0, %f2, %f0  #1113 pc 11296
	flw	%f2, 128(%x2)  #1111 pc 11300
	fadd	%f0, %f2, %f0  #1111 pc 11304
	sw	%x1, 148(%x2)  #1110 pc 11308
	addi	%x2, %x2, 152  #1110 pc 11312
	jal	%x1, fhalf.2538  #1110 pc 11316
	addi	%x2, %x2, -152  #1110 pc 11320
	lw	%x1, 148(%x2) #1110 pc 11324
	flw	%f2, 96(%x2)  #1110 pc 11328
	fadd	%f0, %f2, %f0  #1110 pc 11332
	ret #pc 11336
	nop #pc 11340
solver_second.2810:  #pc 11340
	addi	%x24, %x0, 4  #pc 11344
	add	%x24, %x24, %x22  #0 pc 11348
	lw	%x7, 0(%x24)  #0 pc 11352
	add	%x24, %x0, %x6  #1128 pc 11356
	flw	%f6, 0(%x24)  #1128 pc 11360
	addi	%x24, %x0, 8  #pc 11364
	add	%x24, %x24, %x6  #1128 pc 11368
	flw	%f8, 0(%x24)  #1128 pc 11372
	addi	%x24, %x0, 16  #pc 11376
	add	%x24, %x24, %x6  #1128 pc 11380
	flw	%f10, 0(%x24)  #1128 pc 11384
	sw	%x7, 0(%x2)  #1128 pc 11388
	fsw	%f4, 8(%x2)  #1128 pc 11392
	fsw	%f2, 16(%x2)  #1128 pc 11396
	fsw	%f0, 24(%x2)  #1128 pc 11400
	sw	%x5, 32(%x2)  #1128 pc 11404
	sw	%x6, 36(%x2)  #1128 pc 11408
	mv	%f4, %f10 #pc 11412
	mv	%f5, %f11 #pc 11416
	mv	%f2, %f8 #pc 11420
	mv	%f3, %f9 #pc 11424
	mv	%f0, %f6 #pc 11428
	mv	%f1, %f7 #pc 11432
	sw	%x1, 44(%x2)  #1128 pc 11436
	addi	%x2, %x2, 48  #1128 pc 11440
	jal	%x1, quadratic.2797  #1128 pc 11444
	addi	%x2, %x2, -48  #1128 pc 11448
	lw	%x1, 44(%x2) #1128 pc 11452
	fsw	%f0, 40(%x2)  #1130 pc 11456
	sw	%x1, 52(%x2)  #1130 pc 11460
	addi	%x2, %x2, 56  #1130 pc 11464
	jal	%x1, fiszero.2528  #1130 pc 11468
	addi	%x2, %x2, -56  #1130 pc 11472
	lw	%x1, 52(%x2) #1130 pc 11476
	beq	%x5, %x0, 12  #1130 pc 11480
	j	be_else.9282 #pc 11484
	nop #pc 11488
	lw	%x5, 36(%x2)  #1135 pc 11492
	add	%x24, %x0, %x5  #1135 pc 11496
	flw	%f0, 0(%x24)  #1135 pc 11500
	addi	%x24, %x0, 8  #pc 11504
	add	%x24, %x24, %x5  #1135 pc 11508
	flw	%f2, 0(%x24)  #1135 pc 11512
	addi	%x24, %x0, 16  #pc 11516
	add	%x24, %x24, %x5  #1135 pc 11520
	flw	%f4, 0(%x24)  #1135 pc 11524
	flw	%f6, 24(%x2)  #1135 pc 11528
	flw	%f8, 16(%x2)  #1135 pc 11532
	flw	%f10, 8(%x2)  #1135 pc 11536
	lw	%x5, 32(%x2)  #1135 pc 11540
	sw	%x1, 52(%x2)  #1135 pc 11544
	addi	%x2, %x2, 56  #1135 pc 11548
	jal	%x1, bilinear.2802  #1135 pc 11552
	addi	%x2, %x2, -56  #1135 pc 11556
	lw	%x1, 52(%x2) #1135 pc 11560
	flw	%f2, 24(%x2)  #1137 pc 11564
	flw	%f4, 16(%x2)  #1137 pc 11568
	flw	%f6, 8(%x2)  #1137 pc 11572
	lw	%x5, 32(%x2)  #1137 pc 11576
	fsw	%f0, 48(%x2)  #1137 pc 11580
	mv	%f0, %f2 #pc 11584
	mv	%f1, %f3 #pc 11588
	mv	%f2, %f4 #pc 11592
	mv	%f3, %f5 #pc 11596
	mv	%f4, %f6 #pc 11600
	mv	%f5, %f7 #pc 11604
	sw	%x1, 60(%x2)  #1137 pc 11608
	addi	%x2, %x2, 64  #1137 pc 11612
	jal	%x1, quadratic.2797  #1137 pc 11616
	addi	%x2, %x2, -64  #1137 pc 11620
	lw	%x1, 60(%x2) #1137 pc 11624
	lw	%x5, 32(%x2)  #1138 pc 11628
	fsw	%f0, 56(%x2)  #1138 pc 11632
	sw	%x1, 68(%x2)  #1138 pc 11636
	addi	%x2, %x2, 72  #1138 pc 11640
	jal	%x1, o_form.2684  #1138 pc 11644
	addi	%x2, %x2, -72  #1138 pc 11648
	lw	%x1, 68(%x2) #1138 pc 11652
	addi	%x24, %x0, 3  #pc 11656
	beq	%x5, %x24, 12  #1138 pc 11660
	j	be_else.9283 #pc 11664
	nop #pc 11668
	mv	%f0, l.6305  #0 pc 11672
	flw	%f2, 56(%x2)  #1138 pc 11676
	fsub	%f0, %f2, %f0  #1138 pc 11680
	j	be_cont.9284 #pc 11684
	nop #pc 11688
be_else.9283: #pc 11688
	flw	%f0, 56(%x2)  #1138 pc 11692
be_cont.9284: #pc 11692
	flw	%f2, 48(%x2)  #1140 pc 11696
	fsw	%f0, 64(%x2)  #1140 pc 11700
	mv	%f0, %f2 #pc 11704
	mv	%f1, %f3 #pc 11708
	sw	%x1, 76(%x2)  #1140 pc 11712
	addi	%x2, %x2, 80  #1140 pc 11716
	jal	%x1, fsqr.2536  #1140 pc 11720
	addi	%x2, %x2, -80  #1140 pc 11724
	lw	%x1, 76(%x2) #1140 pc 11728
	flw	%f2, 64(%x2)  #1140 pc 11732
	flw	%f4, 40(%x2)  #1140 pc 11736
	fmul	%f2, %f4, %f2  #1140 pc 11740
	fsub	%f0, %f0, %f2  #1140 pc 11744
	fsw	%f0, 72(%x2)  #1142 pc 11748
	sw	%x1, 84(%x2)  #1142 pc 11752
	addi	%x2, %x2, 88  #1142 pc 11756
	jal	%x1, fispos.2530  #1142 pc 11760
	addi	%x2, %x2, -88  #1142 pc 11764
	lw	%x1, 84(%x2) #1142 pc 11768
	beq	%x5, %x0, 12  #1142 pc 11772
	j	be_else.9285 #pc 11776
	nop #pc 11780
	addi	%x5, %x0, 0  #0 pc 11784
	ret #pc 11788
	nop #pc 11792
be_else.9285: #pc 11792
	flw	%f0, 72(%x2)  #1143 pc 11796
	fsqrt	%f0, %f0  #1143 pc 11800
	lw	%x5, 32(%x2)  #1144 pc 11804
	fsw	%f0, 80(%x2)  #1144 pc 11808
	sw	%x1, 92(%x2)  #1144 pc 11812
	addi	%x2, %x2, 96  #1144 pc 11816
	jal	%x1, o_isinvert.2688  #1144 pc 11820
	addi	%x2, %x2, -96  #1144 pc 11824
	lw	%x1, 92(%x2) #1144 pc 11828
	beq	%x5, %x0, 12  #1144 pc 11832
	j	be_else.9286 #pc 11836
	nop #pc 11840
	flw	%f0, 80(%x2)  #1144 pc 11844
	sw	%x1, 92(%x2)  #1144 pc 11848
	addi	%x2, %x2, 96  #1144 pc 11852
	jal	%x1, fneg.2534  #1144 pc 11856
	addi	%x2, %x2, -96  #1144 pc 11860
	lw	%x1, 92(%x2) #1144 pc 11864
	j	be_cont.9287 #pc 11868
	nop #pc 11872
be_else.9286: #pc 11872
	flw	%f0, 80(%x2)  #1144 pc 11876
be_cont.9287: #pc 11876
	flw	%f2, 48(%x2)  #1145 pc 11880
	fsub	%f0, %f0, %f2  #1145 pc 11884
	flw	%f2, 40(%x2)  #1145 pc 11888
	fdiv	%f0, %f0, %f2  #1145 pc 11892
	lw	%x5, 0(%x2)  #1145 pc 11896
	add	%x24, %x0, %x5  #1145 pc 11900
	fsw	%f0, 0(%x24) #1145 pc 11904
	addi	%x5, %x0, 1  #0 pc 11908
	ret #pc 11912
	nop #pc 11916
be_else.9282: #pc 11916
	addi	%x5, %x0, 0  #0 pc 11920
	ret #pc 11924
	nop #pc 11928
solver.2816:  #pc 11928
	addi	%x24, %x0, 16  #pc 11932
	add	%x24, %x24, %x22  #1154 pc 11936
	lw	%x9, 0(%x24)  #1154 pc 11940
	addi	%x24, %x0, 12  #pc 11944
	add	%x24, %x24, %x22  #1154 pc 11948
	lw	%x10, 0(%x24)  #1154 pc 11952
	addi	%x24, %x0, 8  #pc 11956
	add	%x24, %x24, %x22  #1154 pc 11960
	lw	%x11, 0(%x24)  #1154 pc 11964
	addi	%x24, %x0, 4  #pc 11968
	add	%x24, %x24, %x22  #1154 pc 11972
	lw	%x12, 0(%x24)  #1154 pc 11976
	slli	%x5, %x5, 2  #1154 pc 11980
	add	%x24, %x5, %x12  #1154 pc 11984
	lw	%x5, 0(%x24)  #1154 pc 11988
	add	%x24, %x0, %x7  #1156 pc 11992
	flw	%f0, 0(%x24)  #1156 pc 11996
	sw	%x10, 0(%x2)  #1156 pc 12000
	sw	%x9, 4(%x2)  #1156 pc 12004
	sw	%x6, 8(%x2)  #1156 pc 12008
	sw	%x11, 12(%x2)  #1156 pc 12012
	sw	%x5, 16(%x2)  #1156 pc 12016
	sw	%x7, 20(%x2)  #1156 pc 12020
	fsw	%f0, 24(%x2)  #1156 pc 12024
	sw	%x1, 36(%x2)  #1156 pc 12028
	addi	%x2, %x2, 40  #1156 pc 12032
	jal	%x1, o_param_x.2700  #1156 pc 12036
	addi	%x2, %x2, -40  #1156 pc 12040
	lw	%x1, 36(%x2) #1156 pc 12044
	flw	%f2, 24(%x2)  #1156 pc 12048
	fsub	%f0, %f2, %f0  #1156 pc 12052
	lw	%x5, 20(%x2)  #1157 pc 12056
	addi	%x24, %x0, 8  #pc 12060
	add	%x24, %x24, %x5  #1157 pc 12064
	flw	%f2, 0(%x24)  #1157 pc 12068
	lw	%x6, 16(%x2)  #1157 pc 12072
	fsw	%f0, 32(%x2)  #1157 pc 12076
	fsw	%f2, 40(%x2)  #1157 pc 12080
	mv	%x5, %x6 #pc 12084
	sw	%x1, 52(%x2)  #1157 pc 12088
	addi	%x2, %x2, 56  #1157 pc 12092
	jal	%x1, o_param_y.2702  #1157 pc 12096
	addi	%x2, %x2, -56  #1157 pc 12100
	lw	%x1, 52(%x2) #1157 pc 12104
	flw	%f2, 40(%x2)  #1157 pc 12108
	fsub	%f0, %f2, %f0  #1157 pc 12112
	lw	%x5, 20(%x2)  #1158 pc 12116
	addi	%x24, %x0, 16  #pc 12120
	add	%x24, %x24, %x5  #1158 pc 12124
	flw	%f2, 0(%x24)  #1158 pc 12128
	lw	%x5, 16(%x2)  #1158 pc 12132
	fsw	%f0, 48(%x2)  #1158 pc 12136
	fsw	%f2, 56(%x2)  #1158 pc 12140
	sw	%x1, 68(%x2)  #1158 pc 12144
	addi	%x2, %x2, 72  #1158 pc 12148
	jal	%x1, o_param_z.2704  #1158 pc 12152
	addi	%x2, %x2, -72  #1158 pc 12156
	lw	%x1, 68(%x2) #1158 pc 12160
	flw	%f2, 56(%x2)  #1158 pc 12164
	fsub	%f0, %f2, %f0  #1158 pc 12168
	lw	%x5, 16(%x2)  #1159 pc 12172
	fsw	%f0, 64(%x2)  #1159 pc 12176
	sw	%x1, 76(%x2)  #1159 pc 12180
	addi	%x2, %x2, 80  #1159 pc 12184
	jal	%x1, o_form.2684  #1159 pc 12188
	addi	%x2, %x2, -80  #1159 pc 12192
	lw	%x1, 76(%x2) #1159 pc 12196
	addi	%x24, %x0, 1  #pc 12200
	beq	%x5, %x24, 12  #1161 pc 12204
	j	be_else.9288 #pc 12208
	nop #pc 12212
	flw	%f0, 32(%x2)  #1161 pc 12216
	flw	%f2, 48(%x2)  #1161 pc 12220
	flw	%f4, 64(%x2)  #1161 pc 12224
	lw	%x5, 16(%x2)  #1161 pc 12228
	lw	%x6, 8(%x2)  #1161 pc 12232
	lw	%x22, 12(%x2)  #1161 pc 12236
	lw	%x23, 0(%x22)  #1161 pc 12240
	jalr	%x0, %x23, 0  #1161 pc 12244
	nop #pc 12248
be_else.9288: #pc 12248
	addi	%x24, %x0, 2  #pc 12252
	beq	%x5, %x24, 12  #1162 pc 12256
	j	be_else.9289 #pc 12260
	nop #pc 12264
	flw	%f0, 32(%x2)  #1162 pc 12268
	flw	%f2, 48(%x2)  #1162 pc 12272
	flw	%f4, 64(%x2)  #1162 pc 12276
	lw	%x5, 16(%x2)  #1162 pc 12280
	lw	%x6, 8(%x2)  #1162 pc 12284
	lw	%x22, 4(%x2)  #1162 pc 12288
	lw	%x23, 0(%x22)  #1162 pc 12292
	jalr	%x0, %x23, 0  #1162 pc 12296
	nop #pc 12300
be_else.9289: #pc 12300
	flw	%f0, 32(%x2)  #1163 pc 12304
	flw	%f2, 48(%x2)  #1163 pc 12308
	flw	%f4, 64(%x2)  #1163 pc 12312
	lw	%x5, 16(%x2)  #1163 pc 12316
	lw	%x6, 8(%x2)  #1163 pc 12320
	lw	%x22, 0(%x2)  #1163 pc 12324
	lw	%x23, 0(%x22)  #1163 pc 12328
	jalr	%x0, %x23, 0  #1163 pc 12332
	nop #pc 12336
solver_rect_fast.2820:  #pc 12336
	addi	%x24, %x0, 4  #pc 12340
	add	%x24, %x24, %x22  #0 pc 12344
	lw	%x9, 0(%x24)  #0 pc 12348
	add	%x24, %x0, %x7  #1186 pc 12352
	flw	%f6, 0(%x24)  #1186 pc 12356
	fsub	%f6, %f6, %f0  #1186 pc 12360
	addi	%x24, %x0, 8  #pc 12364
	add	%x24, %x24, %x7  #1186 pc 12368
	flw	%f8, 0(%x24)  #1186 pc 12372
	fmul	%f6, %f6, %f8  #1186 pc 12376
	addi	%x24, %x0, 8  #pc 12380
	add	%x24, %x24, %x6  #1188 pc 12384
	flw	%f8, 0(%x24)  #1188 pc 12388
	fmul	%f8, %f6, %f8  #1188 pc 12392
	fadd	%f8, %f8, %f2  #1188 pc 12396
	fabs	%f8, %f8  #1188 pc 12400
	sw	%x9, 0(%x2)  #1188 pc 12404
	fsw	%f0, 8(%x2)  #1188 pc 12408
	fsw	%f2, 16(%x2)  #1188 pc 12412
	sw	%x7, 24(%x2)  #1188 pc 12416
	sw	%x5, 28(%x2)  #1188 pc 12420
	fsw	%f4, 32(%x2)  #1188 pc 12424
	fsw	%f6, 40(%x2)  #1188 pc 12428
	sw	%x6, 48(%x2)  #1188 pc 12432
	fsw	%f8, 56(%x2)  #1188 pc 12436
	sw	%x1, 68(%x2)  #1188 pc 12440
	addi	%x2, %x2, 72  #1188 pc 12444
	jal	%x1, o_param_b.2694  #1188 pc 12448
	addi	%x2, %x2, -72  #1188 pc 12452
	lw	%x1, 68(%x2) #1188 pc 12456
	mv	%f2, %f0  #1188 pc 12460
	mv	%f3, %f1  #1188 pc 12464
	flw	%f0, 56(%x2)  #1188 pc 12468
	sw	%x1, 68(%x2)  #1188 pc 12472
	addi	%x2, %x2, 72  #1188 pc 12476
	jal	%x1, fless.2540  #1188 pc 12480
	addi	%x2, %x2, -72  #1188 pc 12484
	lw	%x1, 68(%x2) #1188 pc 12488
	beq	%x5, %x0, 12  #1188 pc 12492
	j	be_else.9292 #pc 12496
	nop #pc 12500
	addi	%x5, %x0, 0  #0 pc 12504
	j	be_cont.9293 #pc 12508
	nop #pc 12512
be_else.9292: #pc 12512
	lw	%x5, 48(%x2)  #1189 pc 12516
	addi	%x24, %x0, 16  #pc 12520
	add	%x24, %x24, %x5  #1189 pc 12524
	flw	%f0, 0(%x24)  #1189 pc 12528
	flw	%f2, 40(%x2)  #1189 pc 12532
	fmul	%f0, %f2, %f0  #1189 pc 12536
	flw	%f4, 32(%x2)  #1189 pc 12540
	fadd	%f0, %f0, %f4  #1189 pc 12544
	fabs	%f0, %f0  #1189 pc 12548
	lw	%x6, 28(%x2)  #1189 pc 12552
	fsw	%f0, 64(%x2)  #1189 pc 12556
	mv	%x5, %x6 #pc 12560
	sw	%x1, 76(%x2)  #1189 pc 12564
	addi	%x2, %x2, 80  #1189 pc 12568
	jal	%x1, o_param_c.2696  #1189 pc 12572
	addi	%x2, %x2, -80  #1189 pc 12576
	lw	%x1, 76(%x2) #1189 pc 12580
	mv	%f2, %f0  #1189 pc 12584
	mv	%f3, %f1  #1189 pc 12588
	flw	%f0, 64(%x2)  #1189 pc 12592
	sw	%x1, 76(%x2)  #1189 pc 12596
	addi	%x2, %x2, 80  #1189 pc 12600
	jal	%x1, fless.2540  #1189 pc 12604
	addi	%x2, %x2, -80  #1189 pc 12608
	lw	%x1, 76(%x2) #1189 pc 12612
	beq	%x5, %x0, 12  #1189 pc 12616
	j	be_else.9294 #pc 12620
	nop #pc 12624
	addi	%x5, %x0, 0  #0 pc 12628
	j	be_cont.9295 #pc 12632
	nop #pc 12636
be_else.9294: #pc 12636
	lw	%x5, 24(%x2)  #1190 pc 12640
	addi	%x24, %x0, 8  #pc 12644
	add	%x24, %x24, %x5  #1190 pc 12648
	flw	%f0, 0(%x24)  #1190 pc 12652
	sw	%x1, 76(%x2)  #1190 pc 12656
	addi	%x2, %x2, 80  #1190 pc 12660
	jal	%x1, fiszero.2528  #1190 pc 12664
	addi	%x2, %x2, -80  #1190 pc 12668
	lw	%x1, 76(%x2) #1190 pc 12672
	beq	%x5, %x0, 12  #1190 pc 12676
	j	be_else.9296 #pc 12680
	nop #pc 12684
	addi	%x5, %x0, 1  #0 pc 12688
	j	be_cont.9297 #pc 12692
	nop #pc 12696
be_else.9296: #pc 12696
	addi	%x5, %x0, 0  #0 pc 12700
be_cont.9297: #pc 12700
be_cont.9295: #pc 12700
be_cont.9293: #pc 12700
	beq	%x5, %x0, 12  #1187 pc 12704
	j	be_else.9298 #pc 12708
	nop #pc 12712
	lw	%x5, 24(%x2)  #1195 pc 12716
	addi	%x24, %x0, 16  #pc 12720
	add	%x24, %x24, %x5  #1195 pc 12724
	flw	%f0, 0(%x24)  #1195 pc 12728
	flw	%f2, 16(%x2)  #1195 pc 12732
	fsub	%f0, %f0, %f2  #1195 pc 12736
	addi	%x24, %x0, 24  #pc 12740
	add	%x24, %x24, %x5  #1195 pc 12744
	flw	%f4, 0(%x24)  #1195 pc 12748
	fmul	%f0, %f0, %f4  #1195 pc 12752
	lw	%x6, 48(%x2)  #1197 pc 12756
	add	%x24, %x0, %x6  #1197 pc 12760
	flw	%f4, 0(%x24)  #1197 pc 12764
	fmul	%f4, %f0, %f4  #1197 pc 12768
	flw	%f6, 8(%x2)  #1197 pc 12772
	fadd	%f4, %f4, %f6  #1197 pc 12776
	fabs	%f4, %f4  #1197 pc 12780
	lw	%x7, 28(%x2)  #1197 pc 12784
	fsw	%f0, 72(%x2)  #1197 pc 12788
	fsw	%f4, 80(%x2)  #1197 pc 12792
	mv	%x5, %x7 #pc 12796
	sw	%x1, 92(%x2)  #1197 pc 12800
	addi	%x2, %x2, 96  #1197 pc 12804
	jal	%x1, o_param_a.2692  #1197 pc 12808
	addi	%x2, %x2, -96  #1197 pc 12812
	lw	%x1, 92(%x2) #1197 pc 12816
	mv	%f2, %f0  #1197 pc 12820
	mv	%f3, %f1  #1197 pc 12824
	flw	%f0, 80(%x2)  #1197 pc 12828
	sw	%x1, 92(%x2)  #1197 pc 12832
	addi	%x2, %x2, 96  #1197 pc 12836
	jal	%x1, fless.2540  #1197 pc 12840
	addi	%x2, %x2, -96  #1197 pc 12844
	lw	%x1, 92(%x2) #1197 pc 12848
	beq	%x5, %x0, 12  #1197 pc 12852
	j	be_else.9299 #pc 12856
	nop #pc 12860
	addi	%x5, %x0, 0  #0 pc 12864
	j	be_cont.9300 #pc 12868
	nop #pc 12872
be_else.9299: #pc 12872
	lw	%x5, 48(%x2)  #1198 pc 12876
	addi	%x24, %x0, 16  #pc 12880
	add	%x24, %x24, %x5  #1198 pc 12884
	flw	%f0, 0(%x24)  #1198 pc 12888
	flw	%f2, 72(%x2)  #1198 pc 12892
	fmul	%f0, %f2, %f0  #1198 pc 12896
	flw	%f4, 32(%x2)  #1198 pc 12900
	fadd	%f0, %f0, %f4  #1198 pc 12904
	fabs	%f0, %f0  #1198 pc 12908
	lw	%x6, 28(%x2)  #1198 pc 12912
	fsw	%f0, 88(%x2)  #1198 pc 12916
	mv	%x5, %x6 #pc 12920
	sw	%x1, 100(%x2)  #1198 pc 12924
	addi	%x2, %x2, 104  #1198 pc 12928
	jal	%x1, o_param_c.2696  #1198 pc 12932
	addi	%x2, %x2, -104  #1198 pc 12936
	lw	%x1, 100(%x2) #1198 pc 12940
	mv	%f2, %f0  #1198 pc 12944
	mv	%f3, %f1  #1198 pc 12948
	flw	%f0, 88(%x2)  #1198 pc 12952
	sw	%x1, 100(%x2)  #1198 pc 12956
	addi	%x2, %x2, 104  #1198 pc 12960
	jal	%x1, fless.2540  #1198 pc 12964
	addi	%x2, %x2, -104  #1198 pc 12968
	lw	%x1, 100(%x2) #1198 pc 12972
	beq	%x5, %x0, 12  #1198 pc 12976
	j	be_else.9301 #pc 12980
	nop #pc 12984
	addi	%x5, %x0, 0  #0 pc 12988
	j	be_cont.9302 #pc 12992
	nop #pc 12996
be_else.9301: #pc 12996
	lw	%x5, 24(%x2)  #1199 pc 13000
	addi	%x24, %x0, 24  #pc 13004
	add	%x24, %x24, %x5  #1199 pc 13008
	flw	%f0, 0(%x24)  #1199 pc 13012
	sw	%x1, 100(%x2)  #1199 pc 13016
	addi	%x2, %x2, 104  #1199 pc 13020
	jal	%x1, fiszero.2528  #1199 pc 13024
	addi	%x2, %x2, -104  #1199 pc 13028
	lw	%x1, 100(%x2) #1199 pc 13032
	beq	%x5, %x0, 12  #1199 pc 13036
	j	be_else.9303 #pc 13040
	nop #pc 13044
	addi	%x5, %x0, 1  #0 pc 13048
	j	be_cont.9304 #pc 13052
	nop #pc 13056
be_else.9303: #pc 13056
	addi	%x5, %x0, 0  #0 pc 13060
be_cont.9304: #pc 13060
be_cont.9302: #pc 13060
be_cont.9300: #pc 13060
	beq	%x5, %x0, 12  #1196 pc 13064
	j	be_else.9305 #pc 13068
	nop #pc 13072
	lw	%x5, 24(%x2)  #1204 pc 13076
	addi	%x24, %x0, 32  #pc 13080
	add	%x24, %x24, %x5  #1204 pc 13084
	flw	%f0, 0(%x24)  #1204 pc 13088
	flw	%f2, 32(%x2)  #1204 pc 13092
	fsub	%f0, %f0, %f2  #1204 pc 13096
	addi	%x24, %x0, 40  #pc 13100
	add	%x24, %x24, %x5  #1204 pc 13104
	flw	%f2, 0(%x24)  #1204 pc 13108
	fmul	%f0, %f0, %f2  #1204 pc 13112
	lw	%x6, 48(%x2)  #1206 pc 13116
	add	%x24, %x0, %x6  #1206 pc 13120
	flw	%f2, 0(%x24)  #1206 pc 13124
	fmul	%f2, %f0, %f2  #1206 pc 13128
	flw	%f4, 8(%x2)  #1206 pc 13132
	fadd	%f2, %f2, %f4  #1206 pc 13136
	fabs	%f2, %f2  #1206 pc 13140
	lw	%x7, 28(%x2)  #1206 pc 13144
	fsw	%f0, 96(%x2)  #1206 pc 13148
	fsw	%f2, 104(%x2)  #1206 pc 13152
	mv	%x5, %x7 #pc 13156
	sw	%x1, 116(%x2)  #1206 pc 13160
	addi	%x2, %x2, 120  #1206 pc 13164
	jal	%x1, o_param_a.2692  #1206 pc 13168
	addi	%x2, %x2, -120  #1206 pc 13172
	lw	%x1, 116(%x2) #1206 pc 13176
	mv	%f2, %f0  #1206 pc 13180
	mv	%f3, %f1  #1206 pc 13184
	flw	%f0, 104(%x2)  #1206 pc 13188
	sw	%x1, 116(%x2)  #1206 pc 13192
	addi	%x2, %x2, 120  #1206 pc 13196
	jal	%x1, fless.2540  #1206 pc 13200
	addi	%x2, %x2, -120  #1206 pc 13204
	lw	%x1, 116(%x2) #1206 pc 13208
	beq	%x5, %x0, 12  #1206 pc 13212
	j	be_else.9306 #pc 13216
	nop #pc 13220
	addi	%x5, %x0, 0  #0 pc 13224
	j	be_cont.9307 #pc 13228
	nop #pc 13232
be_else.9306: #pc 13232
	lw	%x5, 48(%x2)  #1207 pc 13236
	addi	%x24, %x0, 8  #pc 13240
	add	%x24, %x24, %x5  #1207 pc 13244
	flw	%f0, 0(%x24)  #1207 pc 13248
	flw	%f2, 96(%x2)  #1207 pc 13252
	fmul	%f0, %f2, %f0  #1207 pc 13256
	flw	%f4, 16(%x2)  #1207 pc 13260
	fadd	%f0, %f0, %f4  #1207 pc 13264
	fabs	%f0, %f0  #1207 pc 13268
	lw	%x5, 28(%x2)  #1207 pc 13272
	fsw	%f0, 112(%x2)  #1207 pc 13276
	sw	%x1, 124(%x2)  #1207 pc 13280
	addi	%x2, %x2, 128  #1207 pc 13284
	jal	%x1, o_param_b.2694  #1207 pc 13288
	addi	%x2, %x2, -128  #1207 pc 13292
	lw	%x1, 124(%x2) #1207 pc 13296
	mv	%f2, %f0  #1207 pc 13300
	mv	%f3, %f1  #1207 pc 13304
	flw	%f0, 112(%x2)  #1207 pc 13308
	sw	%x1, 124(%x2)  #1207 pc 13312
	addi	%x2, %x2, 128  #1207 pc 13316
	jal	%x1, fless.2540  #1207 pc 13320
	addi	%x2, %x2, -128  #1207 pc 13324
	lw	%x1, 124(%x2) #1207 pc 13328
	beq	%x5, %x0, 12  #1207 pc 13332
	j	be_else.9308 #pc 13336
	nop #pc 13340
	addi	%x5, %x0, 0  #0 pc 13344
	j	be_cont.9309 #pc 13348
	nop #pc 13352
be_else.9308: #pc 13352
	lw	%x5, 24(%x2)  #1208 pc 13356
	addi	%x24, %x0, 40  #pc 13360
	add	%x24, %x24, %x5  #1208 pc 13364
	flw	%f0, 0(%x24)  #1208 pc 13368
	sw	%x1, 124(%x2)  #1208 pc 13372
	addi	%x2, %x2, 128  #1208 pc 13376
	jal	%x1, fiszero.2528  #1208 pc 13380
	addi	%x2, %x2, -128  #1208 pc 13384
	lw	%x1, 124(%x2) #1208 pc 13388
	beq	%x5, %x0, 12  #1208 pc 13392
	j	be_else.9310 #pc 13396
	nop #pc 13400
	addi	%x5, %x0, 1  #0 pc 13404
	j	be_cont.9311 #pc 13408
	nop #pc 13412
be_else.9310: #pc 13412
	addi	%x5, %x0, 0  #0 pc 13416
be_cont.9311: #pc 13416
be_cont.9309: #pc 13416
be_cont.9307: #pc 13416
	beq	%x5, %x0, 12  #1205 pc 13420
	j	be_else.9312 #pc 13424
	nop #pc 13428
	addi	%x5, %x0, 0  #0 pc 13432
	ret #pc 13436
	nop #pc 13440
be_else.9312: #pc 13440
	lw	%x5, 0(%x2)  #1212 pc 13444
	flw	%f0, 96(%x2)  #1212 pc 13448
	add	%x24, %x0, %x5  #1212 pc 13452
	fsw	%f0, 0(%x24) #1212 pc 13456
	addi	%x5, %x0, 3  #0 pc 13460
	ret #pc 13464
	nop #pc 13468
be_else.9305: #pc 13468
	lw	%x5, 0(%x2)  #1203 pc 13472
	flw	%f0, 72(%x2)  #1203 pc 13476
	add	%x24, %x0, %x5  #1203 pc 13480
	fsw	%f0, 0(%x24) #1203 pc 13484
	addi	%x5, %x0, 2  #0 pc 13488
	ret #pc 13492
	nop #pc 13496
be_else.9298: #pc 13496
	lw	%x5, 0(%x2)  #1194 pc 13500
	flw	%f0, 40(%x2)  #1194 pc 13504
	add	%x24, %x0, %x5  #1194 pc 13508
	fsw	%f0, 0(%x24) #1194 pc 13512
	addi	%x5, %x0, 1  #0 pc 13516
	ret #pc 13520
	nop #pc 13524
solver_surface_fast.2827:  #pc 13524
	addi	%x24, %x0, 4  #pc 13528
	add	%x24, %x24, %x22  #0 pc 13532
	lw	%x5, 0(%x24)  #0 pc 13536
	add	%x24, %x0, %x6  #1219 pc 13540
	flw	%f6, 0(%x24)  #1219 pc 13544
	sw	%x5, 0(%x2)  #1219 pc 13548
	fsw	%f4, 8(%x2)  #1219 pc 13552
	fsw	%f2, 16(%x2)  #1219 pc 13556
	fsw	%f0, 24(%x2)  #1219 pc 13560
	sw	%x6, 32(%x2)  #1219 pc 13564
	mv	%f0, %f6 #pc 13568
	mv	%f1, %f7 #pc 13572
	sw	%x1, 36(%x2)  #1219 pc 13576
	addi	%x2, %x2, 40  #1219 pc 13580
	jal	%x1, fisneg.2532  #1219 pc 13584
	addi	%x2, %x2, -40  #1219 pc 13588
	lw	%x1, 36(%x2) #1219 pc 13592
	beq	%x5, %x0, 12  #1219 pc 13596
	j	be_else.9314 #pc 13600
	nop #pc 13604
	addi	%x5, %x0, 0  #0 pc 13608
	ret #pc 13612
	nop #pc 13616
be_else.9314: #pc 13616
	lw	%x5, 32(%x2)  #1221 pc 13620
	addi	%x24, %x0, 8  #pc 13624
	add	%x24, %x24, %x5  #1221 pc 13628
	flw	%f0, 0(%x24)  #1221 pc 13632
	flw	%f2, 24(%x2)  #1221 pc 13636
	fmul	%f0, %f0, %f2  #1221 pc 13640
	addi	%x24, %x0, 16  #pc 13644
	add	%x24, %x24, %x5  #1221 pc 13648
	flw	%f2, 0(%x24)  #1221 pc 13652
	flw	%f4, 16(%x2)  #1221 pc 13656
	fmul	%f2, %f2, %f4  #1221 pc 13660
	fadd	%f0, %f0, %f2  #1221 pc 13664
	addi	%x24, %x0, 24  #pc 13668
	add	%x24, %x24, %x5  #1221 pc 13672
	flw	%f2, 0(%x24)  #1221 pc 13676
	flw	%f4, 8(%x2)  #1221 pc 13680
	fmul	%f2, %f2, %f4  #1221 pc 13684
	fadd	%f0, %f0, %f2  #1221 pc 13688
	lw	%x5, 0(%x2)  #1220 pc 13692
	add	%x24, %x0, %x5  #1220 pc 13696
	fsw	%f0, 0(%x24) #1220 pc 13700
	addi	%x5, %x0, 1  #0 pc 13704
	ret #pc 13708
	nop #pc 13712
solver_second_fast.2833:  #pc 13712
	addi	%x24, %x0, 4  #pc 13716
	add	%x24, %x24, %x22  #0 pc 13720
	lw	%x7, 0(%x24)  #0 pc 13724
	add	%x24, %x0, %x6  #1229 pc 13728
	flw	%f6, 0(%x24)  #1229 pc 13732
	sw	%x7, 0(%x2)  #1230 pc 13736
	fsw	%f6, 8(%x2)  #1230 pc 13740
	sw	%x5, 16(%x2)  #1230 pc 13744
	fsw	%f4, 24(%x2)  #1230 pc 13748
	fsw	%f2, 32(%x2)  #1230 pc 13752
	fsw	%f0, 40(%x2)  #1230 pc 13756
	sw	%x6, 48(%x2)  #1230 pc 13760
	mv	%f0, %f6 #pc 13764
	mv	%f1, %f7 #pc 13768
	sw	%x1, 52(%x2)  #1230 pc 13772
	addi	%x2, %x2, 56  #1230 pc 13776
	jal	%x1, fiszero.2528  #1230 pc 13780
	addi	%x2, %x2, -56  #1230 pc 13784
	lw	%x1, 52(%x2) #1230 pc 13788
	beq	%x5, %x0, 12  #1230 pc 13792
	j	be_else.9317 #pc 13796
	nop #pc 13800
	lw	%x5, 48(%x2)  #1233 pc 13804
	addi	%x24, %x0, 8  #pc 13808
	add	%x24, %x24, %x5  #1233 pc 13812
	flw	%f0, 0(%x24)  #1233 pc 13816
	flw	%f2, 40(%x2)  #1233 pc 13820
	fmul	%f0, %f0, %f2  #1233 pc 13824
	addi	%x24, %x0, 16  #pc 13828
	add	%x24, %x24, %x5  #1233 pc 13832
	flw	%f4, 0(%x24)  #1233 pc 13836
	flw	%f6, 32(%x2)  #1233 pc 13840
	fmul	%f4, %f4, %f6  #1233 pc 13844
	fadd	%f0, %f0, %f4  #1233 pc 13848
	addi	%x24, %x0, 24  #pc 13852
	add	%x24, %x24, %x5  #1233 pc 13856
	flw	%f4, 0(%x24)  #1233 pc 13860
	flw	%f8, 24(%x2)  #1233 pc 13864
	fmul	%f4, %f4, %f8  #1233 pc 13868
	fadd	%f0, %f0, %f4  #1233 pc 13872
	lw	%x6, 16(%x2)  #1234 pc 13876
	fsw	%f0, 56(%x2)  #1234 pc 13880
	mv	%x5, %x6 #pc 13884
	mv	%f4, %f8 #pc 13888
	mv	%f5, %f9 #pc 13892
	mv	%f0, %f2 #pc 13896
	mv	%f1, %f3 #pc 13900
	mv	%f2, %f6 #pc 13904
	mv	%f3, %f7 #pc 13908
	sw	%x1, 68(%x2)  #1234 pc 13912
	addi	%x2, %x2, 72  #1234 pc 13916
	jal	%x1, quadratic.2797  #1234 pc 13920
	addi	%x2, %x2, -72  #1234 pc 13924
	lw	%x1, 68(%x2) #1234 pc 13928
	lw	%x5, 16(%x2)  #1235 pc 13932
	fsw	%f0, 64(%x2)  #1235 pc 13936
	sw	%x1, 76(%x2)  #1235 pc 13940
	addi	%x2, %x2, 80  #1235 pc 13944
	jal	%x1, o_form.2684  #1235 pc 13948
	addi	%x2, %x2, -80  #1235 pc 13952
	lw	%x1, 76(%x2) #1235 pc 13956
	addi	%x24, %x0, 3  #pc 13960
	beq	%x5, %x24, 12  #1235 pc 13964
	j	be_else.9319 #pc 13968
	nop #pc 13972
	mv	%f0, l.6305  #0 pc 13976
	flw	%f2, 64(%x2)  #1235 pc 13980
	fsub	%f0, %f2, %f0  #1235 pc 13984
	j	be_cont.9320 #pc 13988
	nop #pc 13992
be_else.9319: #pc 13992
	flw	%f0, 64(%x2)  #1235 pc 13996
be_cont.9320: #pc 13996
	flw	%f2, 56(%x2)  #1236 pc 14000
	fsw	%f0, 72(%x2)  #1236 pc 14004
	mv	%f0, %f2 #pc 14008
	mv	%f1, %f3 #pc 14012
	sw	%x1, 84(%x2)  #1236 pc 14016
	addi	%x2, %x2, 88  #1236 pc 14020
	jal	%x1, fsqr.2536  #1236 pc 14024
	addi	%x2, %x2, -88  #1236 pc 14028
	lw	%x1, 84(%x2) #1236 pc 14032
	flw	%f2, 72(%x2)  #1236 pc 14036
	flw	%f4, 8(%x2)  #1236 pc 14040
	fmul	%f2, %f4, %f2  #1236 pc 14044
	fsub	%f0, %f0, %f2  #1236 pc 14048
	fsw	%f0, 80(%x2)  #1237 pc 14052
	sw	%x1, 92(%x2)  #1237 pc 14056
	addi	%x2, %x2, 96  #1237 pc 14060
	jal	%x1, fispos.2530  #1237 pc 14064
	addi	%x2, %x2, -96  #1237 pc 14068
	lw	%x1, 92(%x2) #1237 pc 14072
	beq	%x5, %x0, 12  #1237 pc 14076
	j	be_else.9321 #pc 14080
	nop #pc 14084
	addi	%x5, %x0, 0  #0 pc 14088
	ret #pc 14092
	nop #pc 14096
be_else.9321: #pc 14096
	lw	%x5, 16(%x2)  #1238 pc 14100
	sw	%x1, 92(%x2)  #1238 pc 14104
	addi	%x2, %x2, 96  #1238 pc 14108
	jal	%x1, o_isinvert.2688  #1238 pc 14112
	addi	%x2, %x2, -96  #1238 pc 14116
	lw	%x1, 92(%x2) #1238 pc 14120
	beq	%x5, %x0, 12  #1238 pc 14124
	j	be_else.9322 #pc 14128
	nop #pc 14132
	flw	%f0, 80(%x2)  #1241 pc 14136
	fsqrt	%f0, %f0  #1241 pc 14140
	flw	%f2, 56(%x2)  #1241 pc 14144
	fsub	%f0, %f2, %f0  #1241 pc 14148
	lw	%x5, 48(%x2)  #1241 pc 14152
	addi	%x24, %x0, 32  #pc 14156
	add	%x24, %x24, %x5  #1241 pc 14160
	flw	%f2, 0(%x24)  #1241 pc 14164
	fmul	%f0, %f0, %f2  #1241 pc 14168
	lw	%x5, 0(%x2)  #1241 pc 14172
	add	%x24, %x0, %x5  #1241 pc 14176
	fsw	%f0, 0(%x24) #1241 pc 14180
	j	be_cont.9323 #pc 14184
	nop #pc 14188
be_else.9322: #pc 14188
	flw	%f0, 80(%x2)  #1239 pc 14192
	fsqrt	%f0, %f0  #1239 pc 14196
	flw	%f2, 56(%x2)  #1239 pc 14200
	fadd	%f0, %f2, %f0  #1239 pc 14204
	lw	%x5, 48(%x2)  #1239 pc 14208
	addi	%x24, %x0, 32  #pc 14212
	add	%x24, %x24, %x5  #1239 pc 14216
	flw	%f2, 0(%x24)  #1239 pc 14220
	fmul	%f0, %f0, %f2  #1239 pc 14224
	lw	%x5, 0(%x2)  #1239 pc 14228
	add	%x24, %x0, %x5  #1239 pc 14232
	fsw	%f0, 0(%x24) #1239 pc 14236
be_cont.9323: #pc 14236
	addi	%x5, %x0, 1  #0 pc 14240
	ret #pc 14244
	nop #pc 14248
be_else.9317: #pc 14248
	addi	%x5, %x0, 0  #0 pc 14252
	ret #pc 14256
	nop #pc 14260
solver_fast.2839:  #pc 14260
	addi	%x24, %x0, 16  #pc 14264
	add	%x24, %x24, %x22  #1248 pc 14268
	lw	%x9, 0(%x24)  #1248 pc 14272
	addi	%x24, %x0, 12  #pc 14276
	add	%x24, %x24, %x22  #1248 pc 14280
	lw	%x10, 0(%x24)  #1248 pc 14284
	addi	%x24, %x0, 8  #pc 14288
	add	%x24, %x24, %x22  #1248 pc 14292
	lw	%x11, 0(%x24)  #1248 pc 14296
	addi	%x24, %x0, 4  #pc 14300
	add	%x24, %x24, %x22  #1248 pc 14304
	lw	%x12, 0(%x24)  #1248 pc 14308
	slli	%x13, %x5, 2  #1248 pc 14312
	add	%x24, %x13, %x12  #1248 pc 14316
	lw	%x12, 0(%x24)  #1248 pc 14320
	add	%x24, %x0, %x7  #1249 pc 14324
	flw	%f0, 0(%x24)  #1249 pc 14328
	sw	%x10, 0(%x2)  #1249 pc 14332
	sw	%x9, 4(%x2)  #1249 pc 14336
	sw	%x11, 8(%x2)  #1249 pc 14340
	sw	%x5, 12(%x2)  #1249 pc 14344
	sw	%x6, 16(%x2)  #1249 pc 14348
	sw	%x12, 20(%x2)  #1249 pc 14352
	sw	%x7, 24(%x2)  #1249 pc 14356
	fsw	%f0, 32(%x2)  #1249 pc 14360
	mv	%x5, %x12 #pc 14364
	sw	%x1, 44(%x2)  #1249 pc 14368
	addi	%x2, %x2, 48  #1249 pc 14372
	jal	%x1, o_param_x.2700  #1249 pc 14376
	addi	%x2, %x2, -48  #1249 pc 14380
	lw	%x1, 44(%x2) #1249 pc 14384
	flw	%f2, 32(%x2)  #1249 pc 14388
	fsub	%f0, %f2, %f0  #1249 pc 14392
	lw	%x5, 24(%x2)  #1250 pc 14396
	addi	%x24, %x0, 8  #pc 14400
	add	%x24, %x24, %x5  #1250 pc 14404
	flw	%f2, 0(%x24)  #1250 pc 14408
	lw	%x6, 20(%x2)  #1250 pc 14412
	fsw	%f0, 40(%x2)  #1250 pc 14416
	fsw	%f2, 48(%x2)  #1250 pc 14420
	mv	%x5, %x6 #pc 14424
	sw	%x1, 60(%x2)  #1250 pc 14428
	addi	%x2, %x2, 64  #1250 pc 14432
	jal	%x1, o_param_y.2702  #1250 pc 14436
	addi	%x2, %x2, -64  #1250 pc 14440
	lw	%x1, 60(%x2) #1250 pc 14444
	flw	%f2, 48(%x2)  #1250 pc 14448
	fsub	%f0, %f2, %f0  #1250 pc 14452
	lw	%x5, 24(%x2)  #1251 pc 14456
	addi	%x24, %x0, 16  #pc 14460
	add	%x24, %x24, %x5  #1251 pc 14464
	flw	%f2, 0(%x24)  #1251 pc 14468
	lw	%x5, 20(%x2)  #1251 pc 14472
	fsw	%f0, 56(%x2)  #1251 pc 14476
	fsw	%f2, 64(%x2)  #1251 pc 14480
	sw	%x1, 76(%x2)  #1251 pc 14484
	addi	%x2, %x2, 80  #1251 pc 14488
	jal	%x1, o_param_z.2704  #1251 pc 14492
	addi	%x2, %x2, -80  #1251 pc 14496
	lw	%x1, 76(%x2) #1251 pc 14500
	flw	%f2, 64(%x2)  #1251 pc 14504
	fsub	%f0, %f2, %f0  #1251 pc 14508
	lw	%x5, 16(%x2)  #1252 pc 14512
	fsw	%f0, 72(%x2)  #1252 pc 14516
	sw	%x1, 84(%x2)  #1252 pc 14520
	addi	%x2, %x2, 88  #1252 pc 14524
	jal	%x1, d_const.2745  #1252 pc 14528
	addi	%x2, %x2, -88  #1252 pc 14532
	lw	%x1, 84(%x2) #1252 pc 14536
	lw	%x6, 12(%x2)  #1253 pc 14540
	slli	%x6, %x6, 2  #1253 pc 14544
	add	%x24, %x6, %x5  #1253 pc 14548
	lw	%x5, 0(%x24)  #1253 pc 14552
	lw	%x6, 20(%x2)  #1254 pc 14556
	sw	%x5, 80(%x2)  #1254 pc 14560
	mv	%x5, %x6 #pc 14564
	sw	%x1, 84(%x2)  #1254 pc 14568
	addi	%x2, %x2, 88  #1254 pc 14572
	jal	%x1, o_form.2684  #1254 pc 14576
	addi	%x2, %x2, -88  #1254 pc 14580
	lw	%x1, 84(%x2) #1254 pc 14584
	addi	%x24, %x0, 1  #pc 14588
	beq	%x5, %x24, 12  #1255 pc 14592
	j	be_else.9325 #pc 14596
	nop #pc 14600
	lw	%x5, 16(%x2)  #1256 pc 14604
	sw	%x1, 84(%x2)  #1256 pc 14608
	addi	%x2, %x2, 88  #1256 pc 14612
	jal	%x1, d_vec.2743  #1256 pc 14616
	addi	%x2, %x2, -88  #1256 pc 14620
	lw	%x1, 84(%x2) #1256 pc 14624
	mv	%x6, %x5  #1256 pc 14628
	flw	%f0, 40(%x2)  #1256 pc 14632
	flw	%f2, 56(%x2)  #1256 pc 14636
	flw	%f4, 72(%x2)  #1256 pc 14640
	lw	%x5, 20(%x2)  #1256 pc 14644
	lw	%x7, 80(%x2)  #1256 pc 14648
	lw	%x22, 8(%x2)  #1256 pc 14652
	lw	%x23, 0(%x22)  #1256 pc 14656
	jalr	%x0, %x23, 0  #1256 pc 14660
	nop #pc 14664
be_else.9325: #pc 14664
	addi	%x24, %x0, 2  #pc 14668
	beq	%x5, %x24, 12  #1257 pc 14672
	j	be_else.9326 #pc 14676
	nop #pc 14680
	flw	%f0, 40(%x2)  #1258 pc 14684
	flw	%f2, 56(%x2)  #1258 pc 14688
	flw	%f4, 72(%x2)  #1258 pc 14692
	lw	%x5, 20(%x2)  #1258 pc 14696
	lw	%x6, 80(%x2)  #1258 pc 14700
	lw	%x22, 4(%x2)  #1258 pc 14704
	lw	%x23, 0(%x22)  #1258 pc 14708
	jalr	%x0, %x23, 0  #1258 pc 14712
	nop #pc 14716
be_else.9326: #pc 14716
	flw	%f0, 40(%x2)  #1260 pc 14720
	flw	%f2, 56(%x2)  #1260 pc 14724
	flw	%f4, 72(%x2)  #1260 pc 14728
	lw	%x5, 20(%x2)  #1260 pc 14732
	lw	%x6, 80(%x2)  #1260 pc 14736
	lw	%x22, 0(%x2)  #1260 pc 14740
	lw	%x23, 0(%x22)  #1260 pc 14744
	jalr	%x0, %x23, 0  #1260 pc 14748
	nop #pc 14752
solver_surface_fast2.2843:  #pc 14752
	addi	%x24, %x0, 4  #pc 14756
	add	%x24, %x24, %x22  #0 pc 14760
	lw	%x5, 0(%x24)  #0 pc 14764
	add	%x24, %x0, %x6  #1268 pc 14768
	flw	%f0, 0(%x24)  #1268 pc 14772
	sw	%x5, 0(%x2)  #1268 pc 14776
	sw	%x7, 4(%x2)  #1268 pc 14780
	sw	%x6, 8(%x2)  #1268 pc 14784
	sw	%x1, 12(%x2)  #1268 pc 14788
	addi	%x2, %x2, 16  #1268 pc 14792
	jal	%x1, fisneg.2532  #1268 pc 14796
	addi	%x2, %x2, -16  #1268 pc 14800
	lw	%x1, 12(%x2) #1268 pc 14804
	beq	%x5, %x0, 12  #1268 pc 14808
	j	be_else.9327 #pc 14812
	nop #pc 14816
	addi	%x5, %x0, 0  #0 pc 14820
	ret #pc 14824
	nop #pc 14828
be_else.9327: #pc 14828
	lw	%x5, 8(%x2)  #1269 pc 14832
	add	%x24, %x0, %x5  #1269 pc 14836
	flw	%f0, 0(%x24)  #1269 pc 14840
	lw	%x5, 4(%x2)  #1269 pc 14844
	addi	%x24, %x0, 24  #pc 14848
	add	%x24, %x24, %x5  #1269 pc 14852
	flw	%f2, 0(%x24)  #1269 pc 14856
	fmul	%f0, %f0, %f2  #1269 pc 14860
	lw	%x5, 0(%x2)  #1269 pc 14864
	add	%x24, %x0, %x5  #1269 pc 14868
	fsw	%f0, 0(%x24) #1269 pc 14872
	addi	%x5, %x0, 1  #0 pc 14876
	ret #pc 14880
	nop #pc 14884
solver_second_fast2.2850:  #pc 14884
	addi	%x24, %x0, 4  #pc 14888
	add	%x24, %x24, %x22  #0 pc 14892
	lw	%x9, 0(%x24)  #0 pc 14896
	add	%x24, %x0, %x6  #1277 pc 14900
	flw	%f6, 0(%x24)  #1277 pc 14904
	sw	%x9, 0(%x2)  #1278 pc 14908
	sw	%x5, 4(%x2)  #1278 pc 14912
	fsw	%f6, 8(%x2)  #1278 pc 14916
	sw	%x7, 16(%x2)  #1278 pc 14920
	fsw	%f4, 24(%x2)  #1278 pc 14924
	fsw	%f2, 32(%x2)  #1278 pc 14928
	fsw	%f0, 40(%x2)  #1278 pc 14932
	sw	%x6, 48(%x2)  #1278 pc 14936
	mv	%f0, %f6 #pc 14940
	mv	%f1, %f7 #pc 14944
	sw	%x1, 52(%x2)  #1278 pc 14948
	addi	%x2, %x2, 56  #1278 pc 14952
	jal	%x1, fiszero.2528  #1278 pc 14956
	addi	%x2, %x2, -56  #1278 pc 14960
	lw	%x1, 52(%x2) #1278 pc 14964
	beq	%x5, %x0, 12  #1278 pc 14968
	j	be_else.9329 #pc 14972
	nop #pc 14976
	lw	%x5, 48(%x2)  #1281 pc 14980
	addi	%x24, %x0, 8  #pc 14984
	add	%x24, %x24, %x5  #1281 pc 14988
	flw	%f0, 0(%x24)  #1281 pc 14992
	flw	%f2, 40(%x2)  #1281 pc 14996
	fmul	%f0, %f0, %f2  #1281 pc 15000
	addi	%x24, %x0, 16  #pc 15004
	add	%x24, %x24, %x5  #1281 pc 15008
	flw	%f2, 0(%x24)  #1281 pc 15012
	flw	%f4, 32(%x2)  #1281 pc 15016
	fmul	%f2, %f2, %f4  #1281 pc 15020
	fadd	%f0, %f0, %f2  #1281 pc 15024
	addi	%x24, %x0, 24  #pc 15028
	add	%x24, %x24, %x5  #1281 pc 15032
	flw	%f2, 0(%x24)  #1281 pc 15036
	flw	%f4, 24(%x2)  #1281 pc 15040
	fmul	%f2, %f2, %f4  #1281 pc 15044
	fadd	%f0, %f0, %f2  #1281 pc 15048
	lw	%x6, 16(%x2)  #1282 pc 15052
	addi	%x24, %x0, 24  #pc 15056
	add	%x24, %x24, %x6  #1282 pc 15060
	flw	%f2, 0(%x24)  #1282 pc 15064
	fsw	%f0, 56(%x2)  #1283 pc 15068
	fsw	%f2, 64(%x2)  #1283 pc 15072
	sw	%x1, 76(%x2)  #1283 pc 15076
	addi	%x2, %x2, 80  #1283 pc 15080
	jal	%x1, fsqr.2536  #1283 pc 15084
	addi	%x2, %x2, -80  #1283 pc 15088
	lw	%x1, 76(%x2) #1283 pc 15092
	flw	%f2, 64(%x2)  #1283 pc 15096
	flw	%f4, 8(%x2)  #1283 pc 15100
	fmul	%f2, %f4, %f2  #1283 pc 15104
	fsub	%f0, %f0, %f2  #1283 pc 15108
	fsw	%f0, 72(%x2)  #1284 pc 15112
	sw	%x1, 84(%x2)  #1284 pc 15116
	addi	%x2, %x2, 88  #1284 pc 15120
	jal	%x1, fispos.2530  #1284 pc 15124
	addi	%x2, %x2, -88  #1284 pc 15128
	lw	%x1, 84(%x2) #1284 pc 15132
	beq	%x5, %x0, 12  #1284 pc 15136
	j	be_else.9331 #pc 15140
	nop #pc 15144
	addi	%x5, %x0, 0  #0 pc 15148
	ret #pc 15152
	nop #pc 15156
be_else.9331: #pc 15156
	lw	%x5, 4(%x2)  #1285 pc 15160
	sw	%x1, 84(%x2)  #1285 pc 15164
	addi	%x2, %x2, 88  #1285 pc 15168
	jal	%x1, o_isinvert.2688  #1285 pc 15172
	addi	%x2, %x2, -88  #1285 pc 15176
	lw	%x1, 84(%x2) #1285 pc 15180
	beq	%x5, %x0, 12  #1285 pc 15184
	j	be_else.9332 #pc 15188
	nop #pc 15192
	flw	%f0, 72(%x2)  #1288 pc 15196
	fsqrt	%f0, %f0  #1288 pc 15200
	flw	%f2, 56(%x2)  #1288 pc 15204
	fsub	%f0, %f2, %f0  #1288 pc 15208
	lw	%x5, 48(%x2)  #1288 pc 15212
	addi	%x24, %x0, 32  #pc 15216
	add	%x24, %x24, %x5  #1288 pc 15220
	flw	%f2, 0(%x24)  #1288 pc 15224
	fmul	%f0, %f0, %f2  #1288 pc 15228
	lw	%x5, 0(%x2)  #1288 pc 15232
	add	%x24, %x0, %x5  #1288 pc 15236
	fsw	%f0, 0(%x24) #1288 pc 15240
	j	be_cont.9333 #pc 15244
	nop #pc 15248
be_else.9332: #pc 15248
	flw	%f0, 72(%x2)  #1286 pc 15252
	fsqrt	%f0, %f0  #1286 pc 15256
	flw	%f2, 56(%x2)  #1286 pc 15260
	fadd	%f0, %f2, %f0  #1286 pc 15264
	lw	%x5, 48(%x2)  #1286 pc 15268
	addi	%x24, %x0, 32  #pc 15272
	add	%x24, %x24, %x5  #1286 pc 15276
	flw	%f2, 0(%x24)  #1286 pc 15280
	fmul	%f0, %f0, %f2  #1286 pc 15284
	lw	%x5, 0(%x2)  #1286 pc 15288
	add	%x24, %x0, %x5  #1286 pc 15292
	fsw	%f0, 0(%x24) #1286 pc 15296
be_cont.9333: #pc 15296
	addi	%x5, %x0, 1  #0 pc 15300
	ret #pc 15304
	nop #pc 15308
be_else.9329: #pc 15308
	addi	%x5, %x0, 0  #0 pc 15312
	ret #pc 15316
	nop #pc 15320
solver_fast2.2857:  #pc 15320
	addi	%x24, %x0, 16  #pc 15324
	add	%x24, %x24, %x22  #1295 pc 15328
	lw	%x7, 0(%x24)  #1295 pc 15332
	addi	%x24, %x0, 12  #pc 15336
	add	%x24, %x24, %x22  #1295 pc 15340
	lw	%x9, 0(%x24)  #1295 pc 15344
	addi	%x24, %x0, 8  #pc 15348
	add	%x24, %x24, %x22  #1295 pc 15352
	lw	%x10, 0(%x24)  #1295 pc 15356
	addi	%x24, %x0, 4  #pc 15360
	add	%x24, %x24, %x22  #1295 pc 15364
	lw	%x11, 0(%x24)  #1295 pc 15368
	slli	%x12, %x5, 2  #1295 pc 15372
	add	%x24, %x12, %x11  #1295 pc 15376
	lw	%x11, 0(%x24)  #1295 pc 15380
	sw	%x9, 0(%x2)  #1296 pc 15384
	sw	%x7, 4(%x2)  #1296 pc 15388
	sw	%x10, 8(%x2)  #1296 pc 15392
	sw	%x11, 12(%x2)  #1296 pc 15396
	sw	%x5, 16(%x2)  #1296 pc 15400
	sw	%x6, 20(%x2)  #1296 pc 15404
	mv	%x5, %x11 #pc 15408
	sw	%x1, 28(%x2)  #1296 pc 15412
	addi	%x2, %x2, 32  #1296 pc 15416
	jal	%x1, o_param_ctbl.2722  #1296 pc 15420
	addi	%x2, %x2, -32  #1296 pc 15424
	lw	%x1, 28(%x2) #1296 pc 15428
	add	%x24, %x0, %x5  #1297 pc 15432
	flw	%f0, 0(%x24)  #1297 pc 15436
	addi	%x24, %x0, 8  #pc 15440
	add	%x24, %x24, %x5  #1298 pc 15444
	flw	%f2, 0(%x24)  #1298 pc 15448
	addi	%x24, %x0, 16  #pc 15452
	add	%x24, %x24, %x5  #1299 pc 15456
	flw	%f4, 0(%x24)  #1299 pc 15460
	lw	%x6, 20(%x2)  #1300 pc 15464
	sw	%x5, 24(%x2)  #1300 pc 15468
	fsw	%f4, 32(%x2)  #1300 pc 15472
	fsw	%f2, 40(%x2)  #1300 pc 15476
	fsw	%f0, 48(%x2)  #1300 pc 15480
	mv	%x5, %x6 #pc 15484
	sw	%x1, 60(%x2)  #1300 pc 15488
	addi	%x2, %x2, 64  #1300 pc 15492
	jal	%x1, d_const.2745  #1300 pc 15496
	addi	%x2, %x2, -64  #1300 pc 15500
	lw	%x1, 60(%x2) #1300 pc 15504
	lw	%x6, 16(%x2)  #1301 pc 15508
	slli	%x6, %x6, 2  #1301 pc 15512
	add	%x24, %x6, %x5  #1301 pc 15516
	lw	%x5, 0(%x24)  #1301 pc 15520
	lw	%x6, 12(%x2)  #1302 pc 15524
	sw	%x5, 56(%x2)  #1302 pc 15528
	mv	%x5, %x6 #pc 15532
	sw	%x1, 60(%x2)  #1302 pc 15536
	addi	%x2, %x2, 64  #1302 pc 15540
	jal	%x1, o_form.2684  #1302 pc 15544
	addi	%x2, %x2, -64  #1302 pc 15548
	lw	%x1, 60(%x2) #1302 pc 15552
	addi	%x24, %x0, 1  #pc 15556
	beq	%x5, %x24, 12  #1303 pc 15560
	j	be_else.9335 #pc 15564
	nop #pc 15568
	lw	%x5, 20(%x2)  #1304 pc 15572
	sw	%x1, 60(%x2)  #1304 pc 15576
	addi	%x2, %x2, 64  #1304 pc 15580
	jal	%x1, d_vec.2743  #1304 pc 15584
	addi	%x2, %x2, -64  #1304 pc 15588
	lw	%x1, 60(%x2) #1304 pc 15592
	mv	%x6, %x5  #1304 pc 15596
	flw	%f0, 48(%x2)  #1304 pc 15600
	flw	%f2, 40(%x2)  #1304 pc 15604
	flw	%f4, 32(%x2)  #1304 pc 15608
	lw	%x5, 12(%x2)  #1304 pc 15612
	lw	%x7, 56(%x2)  #1304 pc 15616
	lw	%x22, 8(%x2)  #1304 pc 15620
	lw	%x23, 0(%x22)  #1304 pc 15624
	jalr	%x0, %x23, 0  #1304 pc 15628
	nop #pc 15632
be_else.9335: #pc 15632
	addi	%x24, %x0, 2  #pc 15636
	beq	%x5, %x24, 12  #1305 pc 15640
	j	be_else.9336 #pc 15644
	nop #pc 15648
	flw	%f0, 48(%x2)  #1306 pc 15652
	flw	%f2, 40(%x2)  #1306 pc 15656
	flw	%f4, 32(%x2)  #1306 pc 15660
	lw	%x5, 12(%x2)  #1306 pc 15664
	lw	%x6, 56(%x2)  #1306 pc 15668
	lw	%x7, 24(%x2)  #1306 pc 15672
	lw	%x22, 4(%x2)  #1306 pc 15676
	lw	%x23, 0(%x22)  #1306 pc 15680
	jalr	%x0, %x23, 0  #1306 pc 15684
	nop #pc 15688
be_else.9336: #pc 15688
	flw	%f0, 48(%x2)  #1308 pc 15692
	flw	%f2, 40(%x2)  #1308 pc 15696
	flw	%f4, 32(%x2)  #1308 pc 15700
	lw	%x5, 12(%x2)  #1308 pc 15704
	lw	%x6, 56(%x2)  #1308 pc 15708
	lw	%x7, 24(%x2)  #1308 pc 15712
	lw	%x22, 0(%x2)  #1308 pc 15716
	lw	%x23, 0(%x22)  #1308 pc 15720
	jalr	%x0, %x23, 0  #1308 pc 15724
	nop #pc 15728
setup_rect_table.2860:  #pc 15728
	addi	%x7, %x0, 6  #0 pc 15732
	mv	%f0, l.6293  #0 pc 15736
	sw	%x6, 0(%x2)  #1317 pc 15740
	sw	%x5, 4(%x2)  #1317 pc 15744
	mv	%x5, %x7 #pc 15748
	sw	%x1, 12(%x2)  #1317 pc 15752
	addi	%x2, %x2, 16  #1317 pc 15756
	jal	%x1, create_float_array.2600  #1317 pc 15760
	addi	%x2, %x2, -16  #1317 pc 15764
	lw	%x1, 12(%x2) #1317 pc 15768
	lw	%x6, 4(%x2)  #1319 pc 15772
	add	%x24, %x0, %x6  #1319 pc 15776
	flw	%f0, 0(%x24)  #1319 pc 15780
	sw	%x5, 8(%x2)  #1319 pc 15784
	sw	%x1, 12(%x2)  #1319 pc 15788
	addi	%x2, %x2, 16  #1319 pc 15792
	jal	%x1, fiszero.2528  #1319 pc 15796
	addi	%x2, %x2, -16  #1319 pc 15800
	lw	%x1, 12(%x2) #1319 pc 15804
	beq	%x5, %x0, 12  #1319 pc 15808
	j	be_else.9337 #pc 15812
	nop #pc 15816
	lw	%x5, 0(%x2)  #1323 pc 15820
	sw	%x1, 12(%x2)  #1323 pc 15824
	addi	%x2, %x2, 16  #1323 pc 15828
	jal	%x1, o_isinvert.2688  #1323 pc 15832
	addi	%x2, %x2, -16  #1323 pc 15836
	lw	%x1, 12(%x2) #1323 pc 15840
	lw	%x6, 4(%x2)  #1323 pc 15844
	add	%x24, %x0, %x6  #1323 pc 15848
	flw	%f0, 0(%x24)  #1323 pc 15852
	sw	%x5, 12(%x2)  #1323 pc 15856
	sw	%x1, 20(%x2)  #1323 pc 15860
	addi	%x2, %x2, 24  #1323 pc 15864
	jal	%x1, fisneg.2532  #1323 pc 15868
	addi	%x2, %x2, -24  #1323 pc 15872
	lw	%x1, 20(%x2) #1323 pc 15876
	mv	%x6, %x5  #1323 pc 15880
	lw	%x5, 12(%x2)  #1323 pc 15884
	sw	%x1, 20(%x2)  #1323 pc 15888
	addi	%x2, %x2, 24  #1323 pc 15892
	jal	%x1, xor.2633  #1323 pc 15896
	addi	%x2, %x2, -24  #1323 pc 15900
	lw	%x1, 20(%x2) #1323 pc 15904
	lw	%x6, 0(%x2)  #1323 pc 15908
	sw	%x5, 16(%x2)  #1323 pc 15912
	mv	%x5, %x6 #pc 15916
	sw	%x1, 20(%x2)  #1323 pc 15920
	addi	%x2, %x2, 24  #1323 pc 15924
	jal	%x1, o_param_a.2692  #1323 pc 15928
	addi	%x2, %x2, -24  #1323 pc 15932
	lw	%x1, 20(%x2) #1323 pc 15936
	lw	%x5, 16(%x2)  #1323 pc 15940
	sw	%x1, 20(%x2)  #1323 pc 15944
	addi	%x2, %x2, 24  #1323 pc 15948
	jal	%x1, fneg_cond.2638  #1323 pc 15952
	addi	%x2, %x2, -24  #1323 pc 15956
	lw	%x1, 20(%x2) #1323 pc 15960
	lw	%x5, 8(%x2)  #1323 pc 15964
	add	%x24, %x0, %x5  #1323 pc 15968
	fsw	%f0, 0(%x24) #1323 pc 15972
	mv	%f0, l.6305  #0 pc 15976
	lw	%x6, 4(%x2)  #1325 pc 15980
	add	%x24, %x0, %x6  #1325 pc 15984
	flw	%f2, 0(%x24)  #1325 pc 15988
	fdiv	%f0, %f0, %f2  #1325 pc 15992
	addi	%x24, %x0, 8  #pc 15996
	add	%x24, %x24, %x5  #1325 pc 16000
	fsw	%f0, 0(%x24) #1325 pc 16004
	j	be_cont.9338 #pc 16008
	nop #pc 16012
be_else.9337: #pc 16012
	mv	%f0, l.6293  #0 pc 16016
	lw	%x5, 8(%x2)  #1320 pc 16020
	addi	%x24, %x0, 8  #pc 16024
	add	%x24, %x24, %x5  #1320 pc 16028
	fsw	%f0, 0(%x24) #1320 pc 16032
be_cont.9338: #pc 16032
	lw	%x6, 4(%x2)  #1327 pc 16036
	addi	%x24, %x0, 8  #pc 16040
	add	%x24, %x24, %x6  #1327 pc 16044
	flw	%f0, 0(%x24)  #1327 pc 16048
	sw	%x1, 20(%x2)  #1327 pc 16052
	addi	%x2, %x2, 24  #1327 pc 16056
	jal	%x1, fiszero.2528  #1327 pc 16060
	addi	%x2, %x2, -24  #1327 pc 16064
	lw	%x1, 20(%x2) #1327 pc 16068
	beq	%x5, %x0, 12  #1327 pc 16072
	j	be_else.9339 #pc 16076
	nop #pc 16080
	lw	%x5, 0(%x2)  #1330 pc 16084
	sw	%x1, 20(%x2)  #1330 pc 16088
	addi	%x2, %x2, 24  #1330 pc 16092
	jal	%x1, o_isinvert.2688  #1330 pc 16096
	addi	%x2, %x2, -24  #1330 pc 16100
	lw	%x1, 20(%x2) #1330 pc 16104
	lw	%x6, 4(%x2)  #1330 pc 16108
	addi	%x24, %x0, 8  #pc 16112
	add	%x24, %x24, %x6  #1330 pc 16116
	flw	%f0, 0(%x24)  #1330 pc 16120
	sw	%x5, 20(%x2)  #1330 pc 16124
	sw	%x1, 28(%x2)  #1330 pc 16128
	addi	%x2, %x2, 32  #1330 pc 16132
	jal	%x1, fisneg.2532  #1330 pc 16136
	addi	%x2, %x2, -32  #1330 pc 16140
	lw	%x1, 28(%x2) #1330 pc 16144
	mv	%x6, %x5  #1330 pc 16148
	lw	%x5, 20(%x2)  #1330 pc 16152
	sw	%x1, 28(%x2)  #1330 pc 16156
	addi	%x2, %x2, 32  #1330 pc 16160
	jal	%x1, xor.2633  #1330 pc 16164
	addi	%x2, %x2, -32  #1330 pc 16168
	lw	%x1, 28(%x2) #1330 pc 16172
	lw	%x6, 0(%x2)  #1330 pc 16176
	sw	%x5, 24(%x2)  #1330 pc 16180
	mv	%x5, %x6 #pc 16184
	sw	%x1, 28(%x2)  #1330 pc 16188
	addi	%x2, %x2, 32  #1330 pc 16192
	jal	%x1, o_param_b.2694  #1330 pc 16196
	addi	%x2, %x2, -32  #1330 pc 16200
	lw	%x1, 28(%x2) #1330 pc 16204
	lw	%x5, 24(%x2)  #1330 pc 16208
	sw	%x1, 28(%x2)  #1330 pc 16212
	addi	%x2, %x2, 32  #1330 pc 16216
	jal	%x1, fneg_cond.2638  #1330 pc 16220
	addi	%x2, %x2, -32  #1330 pc 16224
	lw	%x1, 28(%x2) #1330 pc 16228
	lw	%x5, 8(%x2)  #1330 pc 16232
	addi	%x24, %x0, 16  #pc 16236
	add	%x24, %x24, %x5  #1330 pc 16240
	fsw	%f0, 0(%x24) #1330 pc 16244
	mv	%f0, l.6305  #0 pc 16248
	lw	%x6, 4(%x2)  #1331 pc 16252
	addi	%x24, %x0, 8  #pc 16256
	add	%x24, %x24, %x6  #1331 pc 16260
	flw	%f2, 0(%x24)  #1331 pc 16264
	fdiv	%f0, %f0, %f2  #1331 pc 16268
	addi	%x24, %x0, 24  #pc 16272
	add	%x24, %x24, %x5  #1331 pc 16276
	fsw	%f0, 0(%x24) #1331 pc 16280
	j	be_cont.9340 #pc 16284
	nop #pc 16288
be_else.9339: #pc 16288
	mv	%f0, l.6293  #0 pc 16292
	lw	%x5, 8(%x2)  #1328 pc 16296
	addi	%x24, %x0, 24  #pc 16300
	add	%x24, %x24, %x5  #1328 pc 16304
	fsw	%f0, 0(%x24) #1328 pc 16308
be_cont.9340: #pc 16308
	lw	%x6, 4(%x2)  #1333 pc 16312
	addi	%x24, %x0, 16  #pc 16316
	add	%x24, %x24, %x6  #1333 pc 16320
	flw	%f0, 0(%x24)  #1333 pc 16324
	sw	%x1, 28(%x2)  #1333 pc 16328
	addi	%x2, %x2, 32  #1333 pc 16332
	jal	%x1, fiszero.2528  #1333 pc 16336
	addi	%x2, %x2, -32  #1333 pc 16340
	lw	%x1, 28(%x2) #1333 pc 16344
	beq	%x5, %x0, 12  #1333 pc 16348
	j	be_else.9341 #pc 16352
	nop #pc 16356
	lw	%x5, 0(%x2)  #1336 pc 16360
	sw	%x1, 28(%x2)  #1336 pc 16364
	addi	%x2, %x2, 32  #1336 pc 16368
	jal	%x1, o_isinvert.2688  #1336 pc 16372
	addi	%x2, %x2, -32  #1336 pc 16376
	lw	%x1, 28(%x2) #1336 pc 16380
	lw	%x6, 4(%x2)  #1336 pc 16384
	addi	%x24, %x0, 16  #pc 16388
	add	%x24, %x24, %x6  #1336 pc 16392
	flw	%f0, 0(%x24)  #1336 pc 16396
	sw	%x5, 28(%x2)  #1336 pc 16400
	sw	%x1, 36(%x2)  #1336 pc 16404
	addi	%x2, %x2, 40  #1336 pc 16408
	jal	%x1, fisneg.2532  #1336 pc 16412
	addi	%x2, %x2, -40  #1336 pc 16416
	lw	%x1, 36(%x2) #1336 pc 16420
	mv	%x6, %x5  #1336 pc 16424
	lw	%x5, 28(%x2)  #1336 pc 16428
	sw	%x1, 36(%x2)  #1336 pc 16432
	addi	%x2, %x2, 40  #1336 pc 16436
	jal	%x1, xor.2633  #1336 pc 16440
	addi	%x2, %x2, -40  #1336 pc 16444
	lw	%x1, 36(%x2) #1336 pc 16448
	lw	%x6, 0(%x2)  #1336 pc 16452
	sw	%x5, 32(%x2)  #1336 pc 16456
	mv	%x5, %x6 #pc 16460
	sw	%x1, 36(%x2)  #1336 pc 16464
	addi	%x2, %x2, 40  #1336 pc 16468
	jal	%x1, o_param_c.2696  #1336 pc 16472
	addi	%x2, %x2, -40  #1336 pc 16476
	lw	%x1, 36(%x2) #1336 pc 16480
	lw	%x5, 32(%x2)  #1336 pc 16484
	sw	%x1, 36(%x2)  #1336 pc 16488
	addi	%x2, %x2, 40  #1336 pc 16492
	jal	%x1, fneg_cond.2638  #1336 pc 16496
	addi	%x2, %x2, -40  #1336 pc 16500
	lw	%x1, 36(%x2) #1336 pc 16504
	lw	%x5, 8(%x2)  #1336 pc 16508
	addi	%x24, %x0, 32  #pc 16512
	add	%x24, %x24, %x5  #1336 pc 16516
	fsw	%f0, 0(%x24) #1336 pc 16520
	mv	%f0, l.6305  #0 pc 16524
	lw	%x6, 4(%x2)  #1337 pc 16528
	addi	%x24, %x0, 16  #pc 16532
	add	%x24, %x24, %x6  #1337 pc 16536
	flw	%f2, 0(%x24)  #1337 pc 16540
	fdiv	%f0, %f0, %f2  #1337 pc 16544
	addi	%x24, %x0, 40  #pc 16548
	add	%x24, %x24, %x5  #1337 pc 16552
	fsw	%f0, 0(%x24) #1337 pc 16556
	j	be_cont.9342 #pc 16560
	nop #pc 16564
be_else.9341: #pc 16564
	mv	%f0, l.6293  #0 pc 16568
	lw	%x5, 8(%x2)  #1334 pc 16572
	addi	%x24, %x0, 40  #pc 16576
	add	%x24, %x24, %x5  #1334 pc 16580
	fsw	%f0, 0(%x24) #1334 pc 16584
be_cont.9342: #pc 16584
	ret #pc 16588
	nop #pc 16592
setup_surface_table.2863:  #pc 16592
	addi	%x7, %x0, 4  #0 pc 16596
	mv	%f0, l.6293  #0 pc 16600
	sw	%x6, 0(%x2)  #1344 pc 16604
	sw	%x5, 4(%x2)  #1344 pc 16608
	mv	%x5, %x7 #pc 16612
	sw	%x1, 12(%x2)  #1344 pc 16616
	addi	%x2, %x2, 16  #1344 pc 16620
	jal	%x1, create_float_array.2600  #1344 pc 16624
	addi	%x2, %x2, -16  #1344 pc 16628
	lw	%x1, 12(%x2) #1344 pc 16632
	lw	%x6, 4(%x2)  #1346 pc 16636
	add	%x24, %x0, %x6  #1346 pc 16640
	flw	%f0, 0(%x24)  #1346 pc 16644
	lw	%x7, 0(%x2)  #1346 pc 16648
	sw	%x5, 8(%x2)  #1346 pc 16652
	fsw	%f0, 16(%x2)  #1346 pc 16656
	mv	%x5, %x7 #pc 16660
	sw	%x1, 28(%x2)  #1346 pc 16664
	addi	%x2, %x2, 32  #1346 pc 16668
	jal	%x1, o_param_a.2692  #1346 pc 16672
	addi	%x2, %x2, -32  #1346 pc 16676
	lw	%x1, 28(%x2) #1346 pc 16680
	flw	%f2, 16(%x2)  #1346 pc 16684
	fmul	%f0, %f2, %f0  #1346 pc 16688
	lw	%x5, 4(%x2)  #1346 pc 16692
	addi	%x24, %x0, 8  #pc 16696
	add	%x24, %x24, %x5  #1346 pc 16700
	flw	%f2, 0(%x24)  #1346 pc 16704
	lw	%x6, 0(%x2)  #1346 pc 16708
	fsw	%f0, 24(%x2)  #1346 pc 16712
	fsw	%f2, 32(%x2)  #1346 pc 16716
	mv	%x5, %x6 #pc 16720
	sw	%x1, 44(%x2)  #1346 pc 16724
	addi	%x2, %x2, 48  #1346 pc 16728
	jal	%x1, o_param_b.2694  #1346 pc 16732
	addi	%x2, %x2, -48  #1346 pc 16736
	lw	%x1, 44(%x2) #1346 pc 16740
	flw	%f2, 32(%x2)  #1346 pc 16744
	fmul	%f0, %f2, %f0  #1346 pc 16748
	flw	%f2, 24(%x2)  #1346 pc 16752
	fadd	%f0, %f2, %f0  #1346 pc 16756
	lw	%x5, 4(%x2)  #1346 pc 16760
	addi	%x24, %x0, 16  #pc 16764
	add	%x24, %x24, %x5  #1346 pc 16768
	flw	%f2, 0(%x24)  #1346 pc 16772
	lw	%x5, 0(%x2)  #1346 pc 16776
	fsw	%f0, 40(%x2)  #1346 pc 16780
	fsw	%f2, 48(%x2)  #1346 pc 16784
	sw	%x1, 60(%x2)  #1346 pc 16788
	addi	%x2, %x2, 64  #1346 pc 16792
	jal	%x1, o_param_c.2696  #1346 pc 16796
	addi	%x2, %x2, -64  #1346 pc 16800
	lw	%x1, 60(%x2) #1346 pc 16804
	flw	%f2, 48(%x2)  #1346 pc 16808
	fmul	%f0, %f2, %f0  #1346 pc 16812
	flw	%f2, 40(%x2)  #1346 pc 16816
	fadd	%f0, %f2, %f0  #1346 pc 16820
	fsw	%f0, 56(%x2)  #1348 pc 16824
	sw	%x1, 68(%x2)  #1348 pc 16828
	addi	%x2, %x2, 72  #1348 pc 16832
	jal	%x1, fispos.2530  #1348 pc 16836
	addi	%x2, %x2, -72  #1348 pc 16840
	lw	%x1, 68(%x2) #1348 pc 16844
	beq	%x5, %x0, 12  #1348 pc 16848
	j	be_else.9344 #pc 16852
	nop #pc 16856
	mv	%f0, l.6293  #0 pc 16860
	lw	%x5, 8(%x2)  #1356 pc 16864
	add	%x24, %x0, %x5  #1356 pc 16868
	fsw	%f0, 0(%x24) #1356 pc 16872
	j	be_cont.9345 #pc 16876
	nop #pc 16880
be_else.9344: #pc 16880
	mv	%f0, l.6343  #0 pc 16884
	flw	%f2, 56(%x2)  #1350 pc 16888
	fdiv	%f0, %f0, %f2  #1350 pc 16892
	lw	%x5, 8(%x2)  #1350 pc 16896
	add	%x24, %x0, %x5  #1350 pc 16900
	fsw	%f0, 0(%x24) #1350 pc 16904
	lw	%x6, 0(%x2)  #1352 pc 16908
	mv	%x5, %x6 #pc 16912
	sw	%x1, 68(%x2)  #1352 pc 16916
	addi	%x2, %x2, 72  #1352 pc 16920
	jal	%x1, o_param_a.2692  #1352 pc 16924
	addi	%x2, %x2, -72  #1352 pc 16928
	lw	%x1, 68(%x2) #1352 pc 16932
	flw	%f2, 56(%x2)  #1352 pc 16936
	fdiv	%f0, %f0, %f2  #1352 pc 16940
	sw	%x1, 68(%x2)  #1352 pc 16944
	addi	%x2, %x2, 72  #1352 pc 16948
	jal	%x1, fneg.2534  #1352 pc 16952
	addi	%x2, %x2, -72  #1352 pc 16956
	lw	%x1, 68(%x2) #1352 pc 16960
	lw	%x5, 8(%x2)  #1352 pc 16964
	addi	%x24, %x0, 8  #pc 16968
	add	%x24, %x24, %x5  #1352 pc 16972
	fsw	%f0, 0(%x24) #1352 pc 16976
	lw	%x6, 0(%x2)  #1353 pc 16980
	mv	%x5, %x6 #pc 16984
	sw	%x1, 68(%x2)  #1353 pc 16988
	addi	%x2, %x2, 72  #1353 pc 16992
	jal	%x1, o_param_b.2694  #1353 pc 16996
	addi	%x2, %x2, -72  #1353 pc 17000
	lw	%x1, 68(%x2) #1353 pc 17004
	flw	%f2, 56(%x2)  #1353 pc 17008
	fdiv	%f0, %f0, %f2  #1353 pc 17012
	sw	%x1, 68(%x2)  #1353 pc 17016
	addi	%x2, %x2, 72  #1353 pc 17020
	jal	%x1, fneg.2534  #1353 pc 17024
	addi	%x2, %x2, -72  #1353 pc 17028
	lw	%x1, 68(%x2) #1353 pc 17032
	lw	%x5, 8(%x2)  #1353 pc 17036
	addi	%x24, %x0, 16  #pc 17040
	add	%x24, %x24, %x5  #1353 pc 17044
	fsw	%f0, 0(%x24) #1353 pc 17048
	lw	%x6, 0(%x2)  #1354 pc 17052
	mv	%x5, %x6 #pc 17056
	sw	%x1, 68(%x2)  #1354 pc 17060
	addi	%x2, %x2, 72  #1354 pc 17064
	jal	%x1, o_param_c.2696  #1354 pc 17068
	addi	%x2, %x2, -72  #1354 pc 17072
	lw	%x1, 68(%x2) #1354 pc 17076
	flw	%f2, 56(%x2)  #1354 pc 17080
	fdiv	%f0, %f0, %f2  #1354 pc 17084
	sw	%x1, 68(%x2)  #1354 pc 17088
	addi	%x2, %x2, 72  #1354 pc 17092
	jal	%x1, fneg.2534  #1354 pc 17096
	addi	%x2, %x2, -72  #1354 pc 17100
	lw	%x1, 68(%x2) #1354 pc 17104
	lw	%x5, 8(%x2)  #1354 pc 17108
	addi	%x24, %x0, 24  #pc 17112
	add	%x24, %x24, %x5  #1354 pc 17116
	fsw	%f0, 0(%x24) #1354 pc 17120
be_cont.9345: #pc 17120
	ret #pc 17124
	nop #pc 17128
setup_second_table.2866:  #pc 17128
	addi	%x7, %x0, 5  #0 pc 17132
	mv	%f0, l.6293  #0 pc 17136
	sw	%x6, 0(%x2)  #1363 pc 17140
	sw	%x5, 4(%x2)  #1363 pc 17144
	mv	%x5, %x7 #pc 17148
	sw	%x1, 12(%x2)  #1363 pc 17152
	addi	%x2, %x2, 16  #1363 pc 17156
	jal	%x1, create_float_array.2600  #1363 pc 17160
	addi	%x2, %x2, -16  #1363 pc 17164
	lw	%x1, 12(%x2) #1363 pc 17168
	lw	%x6, 4(%x2)  #1365 pc 17172
	add	%x24, %x0, %x6  #1365 pc 17176
	flw	%f0, 0(%x24)  #1365 pc 17180
	addi	%x24, %x0, 8  #pc 17184
	add	%x24, %x24, %x6  #1365 pc 17188
	flw	%f2, 0(%x24)  #1365 pc 17192
	addi	%x24, %x0, 16  #pc 17196
	add	%x24, %x24, %x6  #1365 pc 17200
	flw	%f4, 0(%x24)  #1365 pc 17204
	lw	%x7, 0(%x2)  #1365 pc 17208
	sw	%x5, 8(%x2)  #1365 pc 17212
	mv	%x5, %x7 #pc 17216
	sw	%x1, 12(%x2)  #1365 pc 17220
	addi	%x2, %x2, 16  #1365 pc 17224
	jal	%x1, quadratic.2797  #1365 pc 17228
	addi	%x2, %x2, -16  #1365 pc 17232
	lw	%x1, 12(%x2) #1365 pc 17236
	lw	%x5, 4(%x2)  #1366 pc 17240
	add	%x24, %x0, %x5  #1366 pc 17244
	flw	%f2, 0(%x24)  #1366 pc 17248
	lw	%x6, 0(%x2)  #1366 pc 17252
	fsw	%f0, 16(%x2)  #1366 pc 17256
	fsw	%f2, 24(%x2)  #1366 pc 17260
	mv	%x5, %x6 #pc 17264
	sw	%x1, 36(%x2)  #1366 pc 17268
	addi	%x2, %x2, 40  #1366 pc 17272
	jal	%x1, o_param_a.2692  #1366 pc 17276
	addi	%x2, %x2, -40  #1366 pc 17280
	lw	%x1, 36(%x2) #1366 pc 17284
	flw	%f2, 24(%x2)  #1366 pc 17288
	fmul	%f0, %f2, %f0  #1366 pc 17292
	sw	%x1, 36(%x2)  #1366 pc 17296
	addi	%x2, %x2, 40  #1366 pc 17300
	jal	%x1, fneg.2534  #1366 pc 17304
	addi	%x2, %x2, -40  #1366 pc 17308
	lw	%x1, 36(%x2) #1366 pc 17312
	lw	%x5, 4(%x2)  #1367 pc 17316
	addi	%x24, %x0, 8  #pc 17320
	add	%x24, %x24, %x5  #1367 pc 17324
	flw	%f2, 0(%x24)  #1367 pc 17328
	lw	%x6, 0(%x2)  #1367 pc 17332
	fsw	%f0, 32(%x2)  #1367 pc 17336
	fsw	%f2, 40(%x2)  #1367 pc 17340
	mv	%x5, %x6 #pc 17344
	sw	%x1, 52(%x2)  #1367 pc 17348
	addi	%x2, %x2, 56  #1367 pc 17352
	jal	%x1, o_param_b.2694  #1367 pc 17356
	addi	%x2, %x2, -56  #1367 pc 17360
	lw	%x1, 52(%x2) #1367 pc 17364
	flw	%f2, 40(%x2)  #1367 pc 17368
	fmul	%f0, %f2, %f0  #1367 pc 17372
	sw	%x1, 52(%x2)  #1367 pc 17376
	addi	%x2, %x2, 56  #1367 pc 17380
	jal	%x1, fneg.2534  #1367 pc 17384
	addi	%x2, %x2, -56  #1367 pc 17388
	lw	%x1, 52(%x2) #1367 pc 17392
	lw	%x5, 4(%x2)  #1368 pc 17396
	addi	%x24, %x0, 16  #pc 17400
	add	%x24, %x24, %x5  #1368 pc 17404
	flw	%f2, 0(%x24)  #1368 pc 17408
	lw	%x6, 0(%x2)  #1368 pc 17412
	fsw	%f0, 48(%x2)  #1368 pc 17416
	fsw	%f2, 56(%x2)  #1368 pc 17420
	mv	%x5, %x6 #pc 17424
	sw	%x1, 68(%x2)  #1368 pc 17428
	addi	%x2, %x2, 72  #1368 pc 17432
	jal	%x1, o_param_c.2696  #1368 pc 17436
	addi	%x2, %x2, -72  #1368 pc 17440
	lw	%x1, 68(%x2) #1368 pc 17444
	flw	%f2, 56(%x2)  #1368 pc 17448
	fmul	%f0, %f2, %f0  #1368 pc 17452
	sw	%x1, 68(%x2)  #1368 pc 17456
	addi	%x2, %x2, 72  #1368 pc 17460
	jal	%x1, fneg.2534  #1368 pc 17464
	addi	%x2, %x2, -72  #1368 pc 17468
	lw	%x1, 68(%x2) #1368 pc 17472
	lw	%x5, 8(%x2)  #1370 pc 17476
	flw	%f2, 16(%x2)  #1370 pc 17480
	add	%x24, %x0, %x5  #1370 pc 17484
	fsw	%f2, 0(%x24) #1370 pc 17488
	lw	%x6, 0(%x2)  #1374 pc 17492
	fsw	%f0, 64(%x2)  #1374 pc 17496
	mv	%x5, %x6 #pc 17500
	sw	%x1, 76(%x2)  #1374 pc 17504
	addi	%x2, %x2, 80  #1374 pc 17508
	jal	%x1, o_isrot.2690  #1374 pc 17512
	addi	%x2, %x2, -80  #1374 pc 17516
	lw	%x1, 76(%x2) #1374 pc 17520
	beq	%x5, %x0, 12  #1374 pc 17524
	j	be_else.9347 #pc 17528
	nop #pc 17532
	lw	%x5, 8(%x2)  #1379 pc 17536
	flw	%f0, 32(%x2)  #1379 pc 17540
	addi	%x24, %x0, 8  #pc 17544
	add	%x24, %x24, %x5  #1379 pc 17548
	fsw	%f0, 0(%x24) #1379 pc 17552
	flw	%f0, 48(%x2)  #1380 pc 17556
	addi	%x24, %x0, 16  #pc 17560
	add	%x24, %x24, %x5  #1380 pc 17564
	fsw	%f0, 0(%x24) #1380 pc 17568
	flw	%f0, 64(%x2)  #1381 pc 17572
	addi	%x24, %x0, 24  #pc 17576
	add	%x24, %x24, %x5  #1381 pc 17580
	fsw	%f0, 0(%x24) #1381 pc 17584
	j	be_cont.9348 #pc 17588
	nop #pc 17592
be_else.9347: #pc 17592
	lw	%x5, 4(%x2)  #1375 pc 17596
	addi	%x24, %x0, 16  #pc 17600
	add	%x24, %x24, %x5  #1375 pc 17604
	flw	%f0, 0(%x24)  #1375 pc 17608
	lw	%x6, 0(%x2)  #1375 pc 17612
	fsw	%f0, 72(%x2)  #1375 pc 17616
	mv	%x5, %x6 #pc 17620
	sw	%x1, 84(%x2)  #1375 pc 17624
	addi	%x2, %x2, 88  #1375 pc 17628
	jal	%x1, o_param_r2.2718  #1375 pc 17632
	addi	%x2, %x2, -88  #1375 pc 17636
	lw	%x1, 84(%x2) #1375 pc 17640
	flw	%f2, 72(%x2)  #1375 pc 17644
	fmul	%f0, %f2, %f0  #1375 pc 17648
	lw	%x5, 4(%x2)  #1375 pc 17652
	addi	%x24, %x0, 8  #pc 17656
	add	%x24, %x24, %x5  #1375 pc 17660
	flw	%f2, 0(%x24)  #1375 pc 17664
	lw	%x6, 0(%x2)  #1375 pc 17668
	fsw	%f0, 80(%x2)  #1375 pc 17672
	fsw	%f2, 88(%x2)  #1375 pc 17676
	mv	%x5, %x6 #pc 17680
	sw	%x1, 100(%x2)  #1375 pc 17684
	addi	%x2, %x2, 104  #1375 pc 17688
	jal	%x1, o_param_r3.2720  #1375 pc 17692
	addi	%x2, %x2, -104  #1375 pc 17696
	lw	%x1, 100(%x2) #1375 pc 17700
	flw	%f2, 88(%x2)  #1375 pc 17704
	fmul	%f0, %f2, %f0  #1375 pc 17708
	flw	%f2, 80(%x2)  #1375 pc 17712
	fadd	%f0, %f2, %f0  #1375 pc 17716
	sw	%x1, 100(%x2)  #1375 pc 17720
	addi	%x2, %x2, 104  #1375 pc 17724
	jal	%x1, fhalf.2538  #1375 pc 17728
	addi	%x2, %x2, -104  #1375 pc 17732
	lw	%x1, 100(%x2) #1375 pc 17736
	flw	%f2, 32(%x2)  #1375 pc 17740
	fsub	%f0, %f2, %f0  #1375 pc 17744
	lw	%x5, 8(%x2)  #1375 pc 17748
	addi	%x24, %x0, 8  #pc 17752
	add	%x24, %x24, %x5  #1375 pc 17756
	fsw	%f0, 0(%x24) #1375 pc 17760
	lw	%x6, 4(%x2)  #1376 pc 17764
	addi	%x24, %x0, 16  #pc 17768
	add	%x24, %x24, %x6  #1376 pc 17772
	flw	%f0, 0(%x24)  #1376 pc 17776
	lw	%x7, 0(%x2)  #1376 pc 17780
	fsw	%f0, 96(%x2)  #1376 pc 17784
	mv	%x5, %x7 #pc 17788
	sw	%x1, 108(%x2)  #1376 pc 17792
	addi	%x2, %x2, 112  #1376 pc 17796
	jal	%x1, o_param_r1.2716  #1376 pc 17800
	addi	%x2, %x2, -112  #1376 pc 17804
	lw	%x1, 108(%x2) #1376 pc 17808
	flw	%f2, 96(%x2)  #1376 pc 17812
	fmul	%f0, %f2, %f0  #1376 pc 17816
	lw	%x5, 4(%x2)  #1376 pc 17820
	add	%x24, %x0, %x5  #1376 pc 17824
	flw	%f2, 0(%x24)  #1376 pc 17828
	lw	%x6, 0(%x2)  #1376 pc 17832
	fsw	%f0, 104(%x2)  #1376 pc 17836
	fsw	%f2, 112(%x2)  #1376 pc 17840
	mv	%x5, %x6 #pc 17844
	sw	%x1, 124(%x2)  #1376 pc 17848
	addi	%x2, %x2, 128  #1376 pc 17852
	jal	%x1, o_param_r3.2720  #1376 pc 17856
	addi	%x2, %x2, -128  #1376 pc 17860
	lw	%x1, 124(%x2) #1376 pc 17864
	flw	%f2, 112(%x2)  #1376 pc 17868
	fmul	%f0, %f2, %f0  #1376 pc 17872
	flw	%f2, 104(%x2)  #1376 pc 17876
	fadd	%f0, %f2, %f0  #1376 pc 17880
	sw	%x1, 124(%x2)  #1376 pc 17884
	addi	%x2, %x2, 128  #1376 pc 17888
	jal	%x1, fhalf.2538  #1376 pc 17892
	addi	%x2, %x2, -128  #1376 pc 17896
	lw	%x1, 124(%x2) #1376 pc 17900
	flw	%f2, 48(%x2)  #1376 pc 17904
	fsub	%f0, %f2, %f0  #1376 pc 17908
	lw	%x5, 8(%x2)  #1376 pc 17912
	addi	%x24, %x0, 16  #pc 17916
	add	%x24, %x24, %x5  #1376 pc 17920
	fsw	%f0, 0(%x24) #1376 pc 17924
	lw	%x6, 4(%x2)  #1377 pc 17928
	addi	%x24, %x0, 8  #pc 17932
	add	%x24, %x24, %x6  #1377 pc 17936
	flw	%f0, 0(%x24)  #1377 pc 17940
	lw	%x7, 0(%x2)  #1377 pc 17944
	fsw	%f0, 120(%x2)  #1377 pc 17948
	mv	%x5, %x7 #pc 17952
	sw	%x1, 132(%x2)  #1377 pc 17956
	addi	%x2, %x2, 136  #1377 pc 17960
	jal	%x1, o_param_r1.2716  #1377 pc 17964
	addi	%x2, %x2, -136  #1377 pc 17968
	lw	%x1, 132(%x2) #1377 pc 17972
	flw	%f2, 120(%x2)  #1377 pc 17976
	fmul	%f0, %f2, %f0  #1377 pc 17980
	lw	%x5, 4(%x2)  #1377 pc 17984
	add	%x24, %x0, %x5  #1377 pc 17988
	flw	%f2, 0(%x24)  #1377 pc 17992
	lw	%x5, 0(%x2)  #1377 pc 17996
	fsw	%f0, 128(%x2)  #1377 pc 18000
	fsw	%f2, 136(%x2)  #1377 pc 18004
	sw	%x1, 148(%x2)  #1377 pc 18008
	addi	%x2, %x2, 152  #1377 pc 18012
	jal	%x1, o_param_r2.2718  #1377 pc 18016
	addi	%x2, %x2, -152  #1377 pc 18020
	lw	%x1, 148(%x2) #1377 pc 18024
	flw	%f2, 136(%x2)  #1377 pc 18028
	fmul	%f0, %f2, %f0  #1377 pc 18032
	flw	%f2, 128(%x2)  #1377 pc 18036
	fadd	%f0, %f2, %f0  #1377 pc 18040
	sw	%x1, 148(%x2)  #1377 pc 18044
	addi	%x2, %x2, 152  #1377 pc 18048
	jal	%x1, fhalf.2538  #1377 pc 18052
	addi	%x2, %x2, -152  #1377 pc 18056
	lw	%x1, 148(%x2) #1377 pc 18060
	flw	%f2, 64(%x2)  #1377 pc 18064
	fsub	%f0, %f2, %f0  #1377 pc 18068
	lw	%x5, 8(%x2)  #1377 pc 18072
	addi	%x24, %x0, 24  #pc 18076
	add	%x24, %x24, %x5  #1377 pc 18080
	fsw	%f0, 0(%x24) #1377 pc 18084
be_cont.9348: #pc 18084
	flw	%f0, 16(%x2)  #1383 pc 18088
	sw	%x1, 148(%x2)  #1383 pc 18092
	addi	%x2, %x2, 152  #1383 pc 18096
	jal	%x1, fiszero.2528  #1383 pc 18100
	addi	%x2, %x2, -152  #1383 pc 18104
	lw	%x1, 148(%x2) #1383 pc 18108
	beq	%x5, %x0, 12  #1383 pc 18112
	j	be_else.9349 #pc 18116
	nop #pc 18120
	mv	%f0, l.6305  #0 pc 18124
	flw	%f2, 16(%x2)  #1384 pc 18128
	fdiv	%f0, %f0, %f2  #1384 pc 18132
	lw	%x5, 8(%x2)  #1384 pc 18136
	addi	%x24, %x0, 32  #pc 18140
	add	%x24, %x24, %x5  #1384 pc 18144
	fsw	%f0, 0(%x24) #1384 pc 18148
	j	be_cont.9350 #pc 18152
	nop #pc 18156
be_else.9349: #pc 18156
be_cont.9350: #pc 18156
	lw	%x5, 8(%x2)  #1386 pc 18160
	ret #pc 18164
	nop #pc 18168
iter_setup_dirvec_constants.2869:  #pc 18168
	addi	%x24, %x0, 4  #pc 18172
	add	%x24, %x24, %x22  #0 pc 18176
	lw	%x7, 0(%x24)  #0 pc 18180
	bge	%x6, %x0, 12  #1392 pc 18184
	j	bge_else.9351 #pc 18188
	nop #pc 18192
	slli	%x9, %x6, 2  #1393 pc 18196
	add	%x24, %x9, %x7  #1393 pc 18200
	lw	%x7, 0(%x24)  #1393 pc 18204
	sw	%x22, 0(%x2)  #1394 pc 18208
	sw	%x6, 4(%x2)  #1394 pc 18212
	sw	%x7, 8(%x2)  #1394 pc 18216
	sw	%x5, 12(%x2)  #1394 pc 18220
	sw	%x1, 20(%x2)  #1394 pc 18224
	addi	%x2, %x2, 24  #1394 pc 18228
	jal	%x1, d_const.2745  #1394 pc 18232
	addi	%x2, %x2, -24  #1394 pc 18236
	lw	%x1, 20(%x2) #1394 pc 18240
	lw	%x6, 12(%x2)  #1395 pc 18244
	sw	%x5, 16(%x2)  #1395 pc 18248
	mv	%x5, %x6 #pc 18252
	sw	%x1, 20(%x2)  #1395 pc 18256
	addi	%x2, %x2, 24  #1395 pc 18260
	jal	%x1, d_vec.2743  #1395 pc 18264
	addi	%x2, %x2, -24  #1395 pc 18268
	lw	%x1, 20(%x2) #1395 pc 18272
	lw	%x6, 8(%x2)  #1396 pc 18276
	sw	%x5, 20(%x2)  #1396 pc 18280
	mv	%x5, %x6 #pc 18284
	sw	%x1, 28(%x2)  #1396 pc 18288
	addi	%x2, %x2, 32  #1396 pc 18292
	jal	%x1, o_form.2684  #1396 pc 18296
	addi	%x2, %x2, -32  #1396 pc 18300
	lw	%x1, 28(%x2) #1396 pc 18304
	addi	%x24, %x0, 1  #pc 18308
	beq	%x5, %x24, 12  #1397 pc 18312
	j	be_else.9352 #pc 18316
	nop #pc 18320
	lw	%x5, 20(%x2)  #1398 pc 18324
	lw	%x6, 8(%x2)  #1398 pc 18328
	sw	%x1, 28(%x2)  #1398 pc 18332
	addi	%x2, %x2, 32  #1398 pc 18336
	jal	%x1, setup_rect_table.2860  #1398 pc 18340
	addi	%x2, %x2, -32  #1398 pc 18344
	lw	%x1, 28(%x2) #1398 pc 18348
	lw	%x6, 4(%x2)  #1398 pc 18352
	slli	%x7, %x6, 2  #1398 pc 18356
	lw	%x9, 16(%x2)  #1398 pc 18360
	add	%x24, %x7, %x9  #1398 pc 18364
	sw	%x5, 0(%x24)  #1398 pc 18368
	j	be_cont.9353 #pc 18372
	nop #pc 18376
be_else.9352: #pc 18376
	addi	%x24, %x0, 2  #pc 18380
	beq	%x5, %x24, 12  #1399 pc 18384
	j	be_else.9354 #pc 18388
	nop #pc 18392
	lw	%x5, 20(%x2)  #1400 pc 18396
	lw	%x6, 8(%x2)  #1400 pc 18400
	sw	%x1, 28(%x2)  #1400 pc 18404
	addi	%x2, %x2, 32  #1400 pc 18408
	jal	%x1, setup_surface_table.2863  #1400 pc 18412
	addi	%x2, %x2, -32  #1400 pc 18416
	lw	%x1, 28(%x2) #1400 pc 18420
	lw	%x6, 4(%x2)  #1400 pc 18424
	slli	%x7, %x6, 2  #1400 pc 18428
	lw	%x9, 16(%x2)  #1400 pc 18432
	add	%x24, %x7, %x9  #1400 pc 18436
	sw	%x5, 0(%x24)  #1400 pc 18440
	j	be_cont.9355 #pc 18444
	nop #pc 18448
be_else.9354: #pc 18448
	lw	%x5, 20(%x2)  #1402 pc 18452
	lw	%x6, 8(%x2)  #1402 pc 18456
	sw	%x1, 28(%x2)  #1402 pc 18460
	addi	%x2, %x2, 32  #1402 pc 18464
	jal	%x1, setup_second_table.2866  #1402 pc 18468
	addi	%x2, %x2, -32  #1402 pc 18472
	lw	%x1, 28(%x2) #1402 pc 18476
	lw	%x6, 4(%x2)  #1402 pc 18480
	slli	%x7, %x6, 2  #1402 pc 18484
	lw	%x9, 16(%x2)  #1402 pc 18488
	add	%x24, %x7, %x9  #1402 pc 18492
	sw	%x5, 0(%x24)  #1402 pc 18496
be_cont.9355: #pc 18496
be_cont.9353: #pc 18496
	addi	%x6, %x6, -1  #1404 pc 18500
	lw	%x5, 12(%x2)  #1404 pc 18504
	lw	%x22, 0(%x2)  #1404 pc 18508
	lw	%x23, 0(%x22)  #1404 pc 18512
	jalr	%x0, %x23, 0  #1404 pc 18516
	nop #pc 18520
bge_else.9351: #pc 18520
	ret #pc 18524
	nop #pc 18528
setup_dirvec_constants.2872:  #pc 18528
	addi	%x24, %x0, 8  #pc 18532
	add	%x24, %x24, %x22  #0 pc 18536
	lw	%x6, 0(%x24)  #0 pc 18540
	addi	%x24, %x0, 4  #pc 18544
	add	%x24, %x24, %x22  #0 pc 18548
	lw	%x22, 0(%x24)  #0 pc 18552
	add	%x24, %x0, %x6  #1409 pc 18556
	lw	%x6, 0(%x24)  #1409 pc 18560
	addi	%x6, %x6, -1  #1409 pc 18564
	lw	%x23, 0(%x22)  #1409 pc 18568
	jalr	%x0, %x23, 0  #1409 pc 18572
	nop #pc 18576
setup_startp_constants.2874:  #pc 18576
	addi	%x24, %x0, 4  #pc 18580
	add	%x24, %x24, %x22  #0 pc 18584
	lw	%x7, 0(%x24)  #0 pc 18588
	bge	%x6, %x0, 12  #1417 pc 18592
	j	bge_else.9357 #pc 18596
	nop #pc 18600
	slli	%x9, %x6, 2  #1418 pc 18604
	add	%x24, %x9, %x7  #1418 pc 18608
	lw	%x7, 0(%x24)  #1418 pc 18612
	sw	%x22, 0(%x2)  #1419 pc 18616
	sw	%x6, 4(%x2)  #1419 pc 18620
	sw	%x5, 8(%x2)  #1419 pc 18624
	sw	%x7, 12(%x2)  #1419 pc 18628
	mv	%x5, %x7 #pc 18632
	sw	%x1, 20(%x2)  #1419 pc 18636
	addi	%x2, %x2, 24  #1419 pc 18640
	jal	%x1, o_param_ctbl.2722  #1419 pc 18644
	addi	%x2, %x2, -24  #1419 pc 18648
	lw	%x1, 20(%x2) #1419 pc 18652
	lw	%x6, 12(%x2)  #1420 pc 18656
	sw	%x5, 16(%x2)  #1420 pc 18660
	mv	%x5, %x6 #pc 18664
	sw	%x1, 20(%x2)  #1420 pc 18668
	addi	%x2, %x2, 24  #1420 pc 18672
	jal	%x1, o_form.2684  #1420 pc 18676
	addi	%x2, %x2, -24  #1420 pc 18680
	lw	%x1, 20(%x2) #1420 pc 18684
	lw	%x6, 8(%x2)  #1421 pc 18688
	add	%x24, %x0, %x6  #1421 pc 18692
	flw	%f0, 0(%x24)  #1421 pc 18696
	lw	%x7, 12(%x2)  #1421 pc 18700
	sw	%x5, 20(%x2)  #1421 pc 18704
	fsw	%f0, 24(%x2)  #1421 pc 18708
	mv	%x5, %x7 #pc 18712
	sw	%x1, 36(%x2)  #1421 pc 18716
	addi	%x2, %x2, 40  #1421 pc 18720
	jal	%x1, o_param_x.2700  #1421 pc 18724
	addi	%x2, %x2, -40  #1421 pc 18728
	lw	%x1, 36(%x2) #1421 pc 18732
	flw	%f2, 24(%x2)  #1421 pc 18736
	fsub	%f0, %f2, %f0  #1421 pc 18740
	lw	%x5, 16(%x2)  #1421 pc 18744
	add	%x24, %x0, %x5  #1421 pc 18748
	fsw	%f0, 0(%x24) #1421 pc 18752
	lw	%x6, 8(%x2)  #1422 pc 18756
	addi	%x24, %x0, 8  #pc 18760
	add	%x24, %x24, %x6  #1422 pc 18764
	flw	%f0, 0(%x24)  #1422 pc 18768
	lw	%x7, 12(%x2)  #1422 pc 18772
	fsw	%f0, 32(%x2)  #1422 pc 18776
	mv	%x5, %x7 #pc 18780
	sw	%x1, 44(%x2)  #1422 pc 18784
	addi	%x2, %x2, 48  #1422 pc 18788
	jal	%x1, o_param_y.2702  #1422 pc 18792
	addi	%x2, %x2, -48  #1422 pc 18796
	lw	%x1, 44(%x2) #1422 pc 18800
	flw	%f2, 32(%x2)  #1422 pc 18804
	fsub	%f0, %f2, %f0  #1422 pc 18808
	lw	%x5, 16(%x2)  #1422 pc 18812
	addi	%x24, %x0, 8  #pc 18816
	add	%x24, %x24, %x5  #1422 pc 18820
	fsw	%f0, 0(%x24) #1422 pc 18824
	lw	%x6, 8(%x2)  #1423 pc 18828
	addi	%x24, %x0, 16  #pc 18832
	add	%x24, %x24, %x6  #1423 pc 18836
	flw	%f0, 0(%x24)  #1423 pc 18840
	lw	%x7, 12(%x2)  #1423 pc 18844
	fsw	%f0, 40(%x2)  #1423 pc 18848
	mv	%x5, %x7 #pc 18852
	sw	%x1, 52(%x2)  #1423 pc 18856
	addi	%x2, %x2, 56  #1423 pc 18860
	jal	%x1, o_param_z.2704  #1423 pc 18864
	addi	%x2, %x2, -56  #1423 pc 18868
	lw	%x1, 52(%x2) #1423 pc 18872
	flw	%f2, 40(%x2)  #1423 pc 18876
	fsub	%f0, %f2, %f0  #1423 pc 18880
	lw	%x5, 16(%x2)  #1423 pc 18884
	addi	%x24, %x0, 16  #pc 18888
	add	%x24, %x24, %x5  #1423 pc 18892
	fsw	%f0, 0(%x24) #1423 pc 18896
	lw	%x6, 20(%x2)  #1424 pc 18900
	addi	%x24, %x0, 2  #pc 18904
	beq	%x6, %x24, 12  #1424 pc 18908
	j	be_else.9358 #pc 18912
	nop #pc 18916
	lw	%x6, 12(%x2)  #1426 pc 18920
	mv	%x5, %x6 #pc 18924
	sw	%x1, 52(%x2)  #1426 pc 18928
	addi	%x2, %x2, 56  #1426 pc 18932
	jal	%x1, o_param_abc.2698  #1426 pc 18936
	addi	%x2, %x2, -56  #1426 pc 18940
	lw	%x1, 52(%x2) #1426 pc 18944
	lw	%x6, 16(%x2)  #1426 pc 18948
	add	%x24, %x0, %x6  #1426 pc 18952
	flw	%f0, 0(%x24)  #1426 pc 18956
	addi	%x24, %x0, 8  #pc 18960
	add	%x24, %x24, %x6  #1426 pc 18964
	flw	%f2, 0(%x24)  #1426 pc 18968
	addi	%x24, %x0, 16  #pc 18972
	add	%x24, %x24, %x6  #1426 pc 18976
	flw	%f4, 0(%x24)  #1426 pc 18980
	sw	%x1, 52(%x2)  #1426 pc 18984
	addi	%x2, %x2, 56  #1426 pc 18988
	jal	%x1, veciprod2.2663  #1426 pc 18992
	addi	%x2, %x2, -56  #1426 pc 18996
	lw	%x1, 52(%x2) #1426 pc 19000
	lw	%x5, 16(%x2)  #1425 pc 19004
	addi	%x24, %x0, 24  #pc 19008
	add	%x24, %x24, %x5  #1425 pc 19012
	fsw	%f0, 0(%x24) #1425 pc 19016
	j	be_cont.9359 #pc 19020
	nop #pc 19024
be_else.9358: #pc 19024
	addi	%x24, %x0, 2  #pc 19028
	bge	%x24, %x6, 12  #1427 pc 19032
	j	ble_else.9360 #pc 19036
	nop #pc 19040
	j	ble_cont.9361 #pc 19044
	nop #pc 19048
ble_else.9360: #pc 19048
	add	%x24, %x0, %x5  #1428 pc 19052
	flw	%f0, 0(%x24)  #1428 pc 19056
	addi	%x24, %x0, 8  #pc 19060
	add	%x24, %x24, %x5  #1428 pc 19064
	flw	%f2, 0(%x24)  #1428 pc 19068
	addi	%x24, %x0, 16  #pc 19072
	add	%x24, %x24, %x5  #1428 pc 19076
	flw	%f4, 0(%x24)  #1428 pc 19080
	lw	%x7, 12(%x2)  #1428 pc 19084
	mv	%x5, %x7 #pc 19088
	sw	%x1, 52(%x2)  #1428 pc 19092
	addi	%x2, %x2, 56  #1428 pc 19096
	jal	%x1, quadratic.2797  #1428 pc 19100
	addi	%x2, %x2, -56  #1428 pc 19104
	lw	%x1, 52(%x2) #1428 pc 19108
	lw	%x5, 20(%x2)  #1429 pc 19112
	addi	%x24, %x0, 3  #pc 19116
	beq	%x5, %x24, 12  #1429 pc 19120
	j	be_else.9362 #pc 19124
	nop #pc 19128
	mv	%f2, l.6305  #0 pc 19132
	fsub	%f0, %f0, %f2  #1429 pc 19136
	j	be_cont.9363 #pc 19140
	nop #pc 19144
be_else.9362: #pc 19144
be_cont.9363: #pc 19144
	lw	%x5, 16(%x2)  #1429 pc 19148
	addi	%x24, %x0, 24  #pc 19152
	add	%x24, %x24, %x5  #1429 pc 19156
	fsw	%f0, 0(%x24) #1429 pc 19160
ble_cont.9361: #pc 19160
be_cont.9359: #pc 19160
	lw	%x5, 4(%x2)  #1431 pc 19164
	addi	%x6, %x5, -1  #1431 pc 19168
	lw	%x5, 8(%x2)  #1431 pc 19172
	lw	%x22, 0(%x2)  #1431 pc 19176
	lw	%x23, 0(%x22)  #1431 pc 19180
	jalr	%x0, %x23, 0  #1431 pc 19184
	nop #pc 19188
bge_else.9357: #pc 19188
	ret #pc 19192
	nop #pc 19196
setup_startp.2877:  #pc 19196
	addi	%x24, %x0, 12  #pc 19200
	add	%x24, %x24, %x22  #1436 pc 19204
	lw	%x6, 0(%x24)  #1436 pc 19208
	addi	%x24, %x0, 8  #pc 19212
	add	%x24, %x24, %x22  #1436 pc 19216
	lw	%x7, 0(%x24)  #1436 pc 19220
	addi	%x24, %x0, 4  #pc 19224
	add	%x24, %x24, %x22  #1436 pc 19228
	lw	%x9, 0(%x24)  #1436 pc 19232
	sw	%x5, 0(%x2)  #1436 pc 19236
	sw	%x7, 4(%x2)  #1436 pc 19240
	sw	%x9, 8(%x2)  #1436 pc 19244
	mv	%x23, %x6 #pc 19248
	mv	%x6, %x5 #pc 19252
	mv	%x5, %x23 #pc 19256
	sw	%x1, 12(%x2)  #1436 pc 19260
	addi	%x2, %x2, 16  #1436 pc 19264
	jal	%x1, veccpy.2654  #1436 pc 19268
	addi	%x2, %x2, -16  #1436 pc 19272
	lw	%x1, 12(%x2) #1436 pc 19276
	lw	%x5, 8(%x2)  #1437 pc 19280
	add	%x24, %x0, %x5  #1437 pc 19284
	lw	%x5, 0(%x24)  #1437 pc 19288
	addi	%x6, %x5, -1  #1437 pc 19292
	lw	%x5, 0(%x2)  #1437 pc 19296
	lw	%x22, 4(%x2)  #1437 pc 19300
	lw	%x23, 0(%x22)  #1437 pc 19304
	jalr	%x0, %x23, 0  #1437 pc 19308
	nop #pc 19312
is_rect_outside.2879:  #pc 19312
	fabs	%f0, %f0  #1449 pc 19316
	fsw	%f4, 0(%x2)  #1449 pc 19320
	sw	%x5, 8(%x2)  #1449 pc 19324
	fsw	%f2, 16(%x2)  #1449 pc 19328
	fsw	%f0, 24(%x2)  #1449 pc 19332
	sw	%x1, 36(%x2)  #1449 pc 19336
	addi	%x2, %x2, 40  #1449 pc 19340
	jal	%x1, o_param_a.2692  #1449 pc 19344
	addi	%x2, %x2, -40  #1449 pc 19348
	lw	%x1, 36(%x2) #1449 pc 19352
	mv	%f2, %f0  #1449 pc 19356
	mv	%f3, %f1  #1449 pc 19360
	flw	%f0, 24(%x2)  #1449 pc 19364
	sw	%x1, 36(%x2)  #1449 pc 19368
	addi	%x2, %x2, 40  #1449 pc 19372
	jal	%x1, fless.2540  #1449 pc 19376
	addi	%x2, %x2, -40  #1449 pc 19380
	lw	%x1, 36(%x2) #1449 pc 19384
	beq	%x5, %x0, 12  #1449 pc 19388
	j	be_else.9366 #pc 19392
	nop #pc 19396
	addi	%x5, %x0, 0  #0 pc 19400
	j	be_cont.9367 #pc 19404
	nop #pc 19408
be_else.9366: #pc 19408
	flw	%f0, 16(%x2)  #1450 pc 19412
	fabs	%f0, %f0  #1450 pc 19416
	lw	%x5, 8(%x2)  #1450 pc 19420
	fsw	%f0, 32(%x2)  #1450 pc 19424
	sw	%x1, 44(%x2)  #1450 pc 19428
	addi	%x2, %x2, 48  #1450 pc 19432
	jal	%x1, o_param_b.2694  #1450 pc 19436
	addi	%x2, %x2, -48  #1450 pc 19440
	lw	%x1, 44(%x2) #1450 pc 19444
	mv	%f2, %f0  #1450 pc 19448
	mv	%f3, %f1  #1450 pc 19452
	flw	%f0, 32(%x2)  #1450 pc 19456
	sw	%x1, 44(%x2)  #1450 pc 19460
	addi	%x2, %x2, 48  #1450 pc 19464
	jal	%x1, fless.2540  #1450 pc 19468
	addi	%x2, %x2, -48  #1450 pc 19472
	lw	%x1, 44(%x2) #1450 pc 19476
	beq	%x5, %x0, 12  #1450 pc 19480
	j	be_else.9368 #pc 19484
	nop #pc 19488
	addi	%x5, %x0, 0  #0 pc 19492
	j	be_cont.9369 #pc 19496
	nop #pc 19500
be_else.9368: #pc 19500
	flw	%f0, 0(%x2)  #1451 pc 19504
	fabs	%f0, %f0  #1451 pc 19508
	lw	%x5, 8(%x2)  #1451 pc 19512
	fsw	%f0, 40(%x2)  #1451 pc 19516
	sw	%x1, 52(%x2)  #1451 pc 19520
	addi	%x2, %x2, 56  #1451 pc 19524
	jal	%x1, o_param_c.2696  #1451 pc 19528
	addi	%x2, %x2, -56  #1451 pc 19532
	lw	%x1, 52(%x2) #1451 pc 19536
	mv	%f2, %f0  #1451 pc 19540
	mv	%f3, %f1  #1451 pc 19544
	flw	%f0, 40(%x2)  #1451 pc 19548
	sw	%x1, 52(%x2)  #1451 pc 19552
	addi	%x2, %x2, 56  #1451 pc 19556
	jal	%x1, fless.2540  #1451 pc 19560
	addi	%x2, %x2, -56  #1451 pc 19564
	lw	%x1, 52(%x2) #1451 pc 19568
be_cont.9369: #pc 19568
be_cont.9367: #pc 19568
	beq	%x5, %x0, 12  #1448 pc 19572
	j	be_else.9370 #pc 19576
	nop #pc 19580
	lw	%x5, 8(%x2)  #1454 pc 19584
	sw	%x1, 52(%x2)  #1454 pc 19588
	addi	%x2, %x2, 56  #1454 pc 19592
	jal	%x1, o_isinvert.2688  #1454 pc 19596
	addi	%x2, %x2, -56  #1454 pc 19600
	lw	%x1, 52(%x2) #1454 pc 19604
	beq	%x5, %x0, 12  #1454 pc 19608
	j	be_else.9371 #pc 19612
	nop #pc 19616
	addi	%x5, %x0, 1  #0 pc 19620
	ret #pc 19624
	nop #pc 19628
be_else.9371: #pc 19628
	addi	%x5, %x0, 0  #0 pc 19632
	ret #pc 19636
	nop #pc 19640
be_else.9370: #pc 19640
	lw	%x5, 8(%x2)  #1454 pc 19644
	j	o_isinvert.2688  #1454 pc 19648
	nop #pc 19652
is_plane_outside.2884:  #pc 19652
	sw	%x5, 0(%x2)  #1459 pc 19656
	fsw	%f4, 8(%x2)  #1459 pc 19660
	fsw	%f2, 16(%x2)  #1459 pc 19664
	fsw	%f0, 24(%x2)  #1459 pc 19668
	sw	%x1, 36(%x2)  #1459 pc 19672
	addi	%x2, %x2, 40  #1459 pc 19676
	jal	%x1, o_param_abc.2698  #1459 pc 19680
	addi	%x2, %x2, -40  #1459 pc 19684
	lw	%x1, 36(%x2) #1459 pc 19688
	flw	%f0, 24(%x2)  #1459 pc 19692
	flw	%f2, 16(%x2)  #1459 pc 19696
	flw	%f4, 8(%x2)  #1459 pc 19700
	sw	%x1, 36(%x2)  #1459 pc 19704
	addi	%x2, %x2, 40  #1459 pc 19708
	jal	%x1, veciprod2.2663  #1459 pc 19712
	addi	%x2, %x2, -40  #1459 pc 19716
	lw	%x1, 36(%x2) #1459 pc 19720
	lw	%x5, 0(%x2)  #1460 pc 19724
	fsw	%f0, 32(%x2)  #1460 pc 19728
	sw	%x1, 44(%x2)  #1460 pc 19732
	addi	%x2, %x2, 48  #1460 pc 19736
	jal	%x1, o_isinvert.2688  #1460 pc 19740
	addi	%x2, %x2, -48  #1460 pc 19744
	lw	%x1, 44(%x2) #1460 pc 19748
	flw	%f0, 32(%x2)  #1460 pc 19752
	sw	%x5, 40(%x2)  #1460 pc 19756
	sw	%x1, 44(%x2)  #1460 pc 19760
	addi	%x2, %x2, 48  #1460 pc 19764
	jal	%x1, fisneg.2532  #1460 pc 19768
	addi	%x2, %x2, -48  #1460 pc 19772
	lw	%x1, 44(%x2) #1460 pc 19776
	mv	%x6, %x5  #1460 pc 19780
	lw	%x5, 40(%x2)  #1460 pc 19784
	sw	%x1, 44(%x2)  #1460 pc 19788
	addi	%x2, %x2, 48  #1460 pc 19792
	jal	%x1, xor.2633  #1460 pc 19796
	addi	%x2, %x2, -48  #1460 pc 19800
	lw	%x1, 44(%x2) #1460 pc 19804
	beq	%x5, %x0, 12  #1460 pc 19808
	j	be_else.9373 #pc 19812
	nop #pc 19816
	addi	%x5, %x0, 1  #0 pc 19820
	ret #pc 19824
	nop #pc 19828
be_else.9373: #pc 19828
	addi	%x5, %x0, 0  #0 pc 19832
	ret #pc 19836
	nop #pc 19840
is_second_outside.2889:  #pc 19840
	sw	%x5, 0(%x2)  #1465 pc 19844
	sw	%x1, 4(%x2)  #1465 pc 19848
	addi	%x2, %x2, 8  #1465 pc 19852
	jal	%x1, quadratic.2797  #1465 pc 19856
	addi	%x2, %x2, -8  #1465 pc 19860
	lw	%x1, 4(%x2) #1465 pc 19864
	lw	%x5, 0(%x2)  #1466 pc 19868
	fsw	%f0, 8(%x2)  #1466 pc 19872
	sw	%x1, 20(%x2)  #1466 pc 19876
	addi	%x2, %x2, 24  #1466 pc 19880
	jal	%x1, o_form.2684  #1466 pc 19884
	addi	%x2, %x2, -24  #1466 pc 19888
	lw	%x1, 20(%x2) #1466 pc 19892
	addi	%x24, %x0, 3  #pc 19896
	beq	%x5, %x24, 12  #1466 pc 19900
	j	be_else.9375 #pc 19904
	nop #pc 19908
	mv	%f0, l.6305  #0 pc 19912
	flw	%f2, 8(%x2)  #1466 pc 19916
	fsub	%f0, %f2, %f0  #1466 pc 19920
	j	be_cont.9376 #pc 19924
	nop #pc 19928
be_else.9375: #pc 19928
	flw	%f0, 8(%x2)  #1466 pc 19932
be_cont.9376: #pc 19932
	lw	%x5, 0(%x2)  #1467 pc 19936
	fsw	%f0, 16(%x2)  #1467 pc 19940
	sw	%x1, 28(%x2)  #1467 pc 19944
	addi	%x2, %x2, 32  #1467 pc 19948
	jal	%x1, o_isinvert.2688  #1467 pc 19952
	addi	%x2, %x2, -32  #1467 pc 19956
	lw	%x1, 28(%x2) #1467 pc 19960
	flw	%f0, 16(%x2)  #1467 pc 19964
	sw	%x5, 24(%x2)  #1467 pc 19968
	sw	%x1, 28(%x2)  #1467 pc 19972
	addi	%x2, %x2, 32  #1467 pc 19976
	jal	%x1, fisneg.2532  #1467 pc 19980
	addi	%x2, %x2, -32  #1467 pc 19984
	lw	%x1, 28(%x2) #1467 pc 19988
	mv	%x6, %x5  #1467 pc 19992
	lw	%x5, 24(%x2)  #1467 pc 19996
	sw	%x1, 28(%x2)  #1467 pc 20000
	addi	%x2, %x2, 32  #1467 pc 20004
	jal	%x1, xor.2633  #1467 pc 20008
	addi	%x2, %x2, -32  #1467 pc 20012
	lw	%x1, 28(%x2) #1467 pc 20016
	beq	%x5, %x0, 12  #1467 pc 20020
	j	be_else.9377 #pc 20024
	nop #pc 20028
	addi	%x5, %x0, 1  #0 pc 20032
	ret #pc 20036
	nop #pc 20040
be_else.9377: #pc 20040
	addi	%x5, %x0, 0  #0 pc 20044
	ret #pc 20048
	nop #pc 20052
is_outside.2894:  #pc 20052
	fsw	%f4, 0(%x2)  #1472 pc 20056
	fsw	%f2, 8(%x2)  #1472 pc 20060
	sw	%x5, 16(%x2)  #1472 pc 20064
	fsw	%f0, 24(%x2)  #1472 pc 20068
	sw	%x1, 36(%x2)  #1472 pc 20072
	addi	%x2, %x2, 40  #1472 pc 20076
	jal	%x1, o_param_x.2700  #1472 pc 20080
	addi	%x2, %x2, -40  #1472 pc 20084
	lw	%x1, 36(%x2) #1472 pc 20088
	flw	%f2, 24(%x2)  #1472 pc 20092
	fsub	%f0, %f2, %f0  #1472 pc 20096
	lw	%x5, 16(%x2)  #1473 pc 20100
	fsw	%f0, 32(%x2)  #1473 pc 20104
	sw	%x1, 44(%x2)  #1473 pc 20108
	addi	%x2, %x2, 48  #1473 pc 20112
	jal	%x1, o_param_y.2702  #1473 pc 20116
	addi	%x2, %x2, -48  #1473 pc 20120
	lw	%x1, 44(%x2) #1473 pc 20124
	flw	%f2, 8(%x2)  #1473 pc 20128
	fsub	%f0, %f2, %f0  #1473 pc 20132
	lw	%x5, 16(%x2)  #1474 pc 20136
	fsw	%f0, 40(%x2)  #1474 pc 20140
	sw	%x1, 52(%x2)  #1474 pc 20144
	addi	%x2, %x2, 56  #1474 pc 20148
	jal	%x1, o_param_z.2704  #1474 pc 20152
	addi	%x2, %x2, -56  #1474 pc 20156
	lw	%x1, 52(%x2) #1474 pc 20160
	flw	%f2, 0(%x2)  #1474 pc 20164
	fsub	%f0, %f2, %f0  #1474 pc 20168
	lw	%x5, 16(%x2)  #1475 pc 20172
	fsw	%f0, 48(%x2)  #1475 pc 20176
	sw	%x1, 60(%x2)  #1475 pc 20180
	addi	%x2, %x2, 64  #1475 pc 20184
	jal	%x1, o_form.2684  #1475 pc 20188
	addi	%x2, %x2, -64  #1475 pc 20192
	lw	%x1, 60(%x2) #1475 pc 20196
	addi	%x24, %x0, 1  #pc 20200
	beq	%x5, %x24, 12  #1476 pc 20204
	j	be_else.9379 #pc 20208
	nop #pc 20212
	flw	%f0, 32(%x2)  #1477 pc 20216
	flw	%f2, 40(%x2)  #1477 pc 20220
	flw	%f4, 48(%x2)  #1477 pc 20224
	lw	%x5, 16(%x2)  #1477 pc 20228
	j	is_rect_outside.2879  #1477 pc 20232
	nop #pc 20236
be_else.9379: #pc 20236
	addi	%x24, %x0, 2  #pc 20240
	beq	%x5, %x24, 12  #1478 pc 20244
	j	be_else.9380 #pc 20248
	nop #pc 20252
	flw	%f0, 32(%x2)  #1479 pc 20256
	flw	%f2, 40(%x2)  #1479 pc 20260
	flw	%f4, 48(%x2)  #1479 pc 20264
	lw	%x5, 16(%x2)  #1479 pc 20268
	j	is_plane_outside.2884  #1479 pc 20272
	nop #pc 20276
be_else.9380: #pc 20276
	flw	%f0, 32(%x2)  #1481 pc 20280
	flw	%f2, 40(%x2)  #1481 pc 20284
	flw	%f4, 48(%x2)  #1481 pc 20288
	lw	%x5, 16(%x2)  #1481 pc 20292
	j	is_second_outside.2889  #1481 pc 20296
	nop #pc 20300
check_all_inside.2899:  #pc 20300
	addi	%x24, %x0, 4  #pc 20304
	add	%x24, %x24, %x22  #1486 pc 20308
	lw	%x7, 0(%x24)  #1486 pc 20312
	slli	%x9, %x5, 2  #1486 pc 20316
	add	%x24, %x9, %x6  #1486 pc 20320
	lw	%x9, 0(%x24)  #1486 pc 20324
	addi	%x24, %x0, -1  #pc 20328
	beq	%x9, %x24, 12  #1487 pc 20332
	j	be_else.9381 #pc 20336
	nop #pc 20340
	addi	%x5, %x0, 1  #0 pc 20344
	ret #pc 20348
	nop #pc 20352
be_else.9381: #pc 20352
	slli	%x9, %x9, 2  #1490 pc 20356
	add	%x24, %x9, %x7  #1490 pc 20360
	lw	%x7, 0(%x24)  #1490 pc 20364
	fsw	%f4, 0(%x2)  #1490 pc 20368
	fsw	%f2, 8(%x2)  #1490 pc 20372
	fsw	%f0, 16(%x2)  #1490 pc 20376
	sw	%x6, 24(%x2)  #1490 pc 20380
	sw	%x22, 28(%x2)  #1490 pc 20384
	sw	%x5, 32(%x2)  #1490 pc 20388
	mv	%x5, %x7 #pc 20392
	sw	%x1, 36(%x2)  #1490 pc 20396
	addi	%x2, %x2, 40  #1490 pc 20400
	jal	%x1, is_outside.2894  #1490 pc 20404
	addi	%x2, %x2, -40  #1490 pc 20408
	lw	%x1, 36(%x2) #1490 pc 20412
	beq	%x5, %x0, 12  #1490 pc 20416
	j	be_else.9382 #pc 20420
	nop #pc 20424
	lw	%x5, 32(%x2)  #1493 pc 20428
	addi	%x5, %x5, 1  #1493 pc 20432
	flw	%f0, 16(%x2)  #1493 pc 20436
	flw	%f2, 8(%x2)  #1493 pc 20440
	flw	%f4, 0(%x2)  #1493 pc 20444
	lw	%x6, 24(%x2)  #1493 pc 20448
	lw	%x22, 28(%x2)  #1493 pc 20452
	lw	%x23, 0(%x22)  #1493 pc 20456
	jalr	%x0, %x23, 0  #1493 pc 20460
	nop #pc 20464
be_else.9382: #pc 20464
	addi	%x5, %x0, 0  #0 pc 20468
	ret #pc 20472
	nop #pc 20476
shadow_check_and_group.2905:  #pc 20476
	addi	%x24, %x0, 28  #pc 20480
	add	%x24, %x24, %x22  #0 pc 20484
	lw	%x7, 0(%x24)  #0 pc 20488
	addi	%x24, %x0, 24  #pc 20492
	add	%x24, %x24, %x22  #0 pc 20496
	lw	%x9, 0(%x24)  #0 pc 20500
	addi	%x24, %x0, 20  #pc 20504
	add	%x24, %x24, %x22  #0 pc 20508
	lw	%x10, 0(%x24)  #0 pc 20512
	addi	%x24, %x0, 16  #pc 20516
	add	%x24, %x24, %x22  #0 pc 20520
	lw	%x11, 0(%x24)  #0 pc 20524
	addi	%x24, %x0, 12  #pc 20528
	add	%x24, %x24, %x22  #0 pc 20532
	lw	%x12, 0(%x24)  #0 pc 20536
	addi	%x24, %x0, 8  #pc 20540
	add	%x24, %x24, %x22  #0 pc 20544
	lw	%x13, 0(%x24)  #0 pc 20548
	addi	%x24, %x0, 4  #pc 20552
	add	%x24, %x24, %x22  #0 pc 20556
	lw	%x14, 0(%x24)  #0 pc 20560
	slli	%x15, %x5, 2  #1506 pc 20564
	add	%x24, %x15, %x6  #1506 pc 20568
	lw	%x15, 0(%x24)  #1506 pc 20572
	addi	%x24, %x0, -1  #pc 20576
	beq	%x15, %x24, 12  #1506 pc 20580
	j	be_else.9383 #pc 20584
	nop #pc 20588
	addi	%x5, %x0, 0  #0 pc 20592
	ret #pc 20596
	nop #pc 20600
be_else.9383: #pc 20600
	slli	%x15, %x5, 2  #1509 pc 20604
	add	%x24, %x15, %x6  #1509 pc 20608
	lw	%x15, 0(%x24)  #1509 pc 20612
	sw	%x14, 0(%x2)  #1510 pc 20616
	sw	%x13, 4(%x2)  #1510 pc 20620
	sw	%x12, 8(%x2)  #1510 pc 20624
	sw	%x6, 12(%x2)  #1510 pc 20628
	sw	%x22, 16(%x2)  #1510 pc 20632
	sw	%x5, 20(%x2)  #1510 pc 20636
	sw	%x10, 24(%x2)  #1510 pc 20640
	sw	%x15, 28(%x2)  #1510 pc 20644
	sw	%x9, 32(%x2)  #1510 pc 20648
	mv	%x6, %x11 #pc 20652
	mv	%x5, %x15 #pc 20656
	mv	%x22, %x7 #pc 20660
	mv	%x7, %x13 #pc 20664
	sw	%x1, 36(%x2)  #1510 pc 20668
	lw	%x23, 0(%x22)  #1510 pc 20672
	addi	%x2, %x2, 40  #1510 pc 20676
	jalr	%x1, %x23, 0  #1510 pc 20680
	addi	%x2, %x2, -40  #1510 pc 20684
	lw	%x1, 36(%x2)  #1510 pc 20688
	lw	%x6, 32(%x2)  #1511 pc 20692
	add	%x24, %x0, %x6  #1511 pc 20696
	flw	%f0, 0(%x24)  #1511 pc 20700
	fsw	%f0, 40(%x2)  #1512 pc 20704
	beq	%x5, %x0, 12  #1512 pc 20708
	j	be_else.9385 #pc 20712
	nop #pc 20716
	addi	%x5, %x0, 0  #0 pc 20720
	j	be_cont.9386 #pc 20724
	nop #pc 20728
be_else.9385: #pc 20728
	mv	%f2, l.6695  #0 pc 20732
	sw	%x1, 52(%x2)  #1512 pc 20736
	addi	%x2, %x2, 56  #1512 pc 20740
	jal	%x1, fless.2540  #1512 pc 20744
	addi	%x2, %x2, -56  #1512 pc 20748
	lw	%x1, 52(%x2) #1512 pc 20752
be_cont.9386: #pc 20752
	beq	%x5, %x0, 12  #1512 pc 20756
	j	be_else.9387 #pc 20760
	nop #pc 20764
	lw	%x5, 28(%x2)  #1528 pc 20768
	slli	%x5, %x5, 2  #1528 pc 20772
	lw	%x6, 24(%x2)  #1528 pc 20776
	add	%x24, %x5, %x6  #1528 pc 20780
	lw	%x5, 0(%x24)  #1528 pc 20784
	sw	%x1, 52(%x2)  #1528 pc 20788
	addi	%x2, %x2, 56  #1528 pc 20792
	jal	%x1, o_isinvert.2688  #1528 pc 20796
	addi	%x2, %x2, -56  #1528 pc 20800
	lw	%x1, 52(%x2) #1528 pc 20804
	beq	%x5, %x0, 12  #1528 pc 20808
	j	be_else.9388 #pc 20812
	nop #pc 20816
	addi	%x5, %x0, 0  #0 pc 20820
	ret #pc 20824
	nop #pc 20828
be_else.9388: #pc 20828
	lw	%x5, 20(%x2)  #1529 pc 20832
	addi	%x5, %x5, 1  #1529 pc 20836
	lw	%x6, 12(%x2)  #1529 pc 20840
	lw	%x22, 16(%x2)  #1529 pc 20844
	lw	%x23, 0(%x22)  #1529 pc 20848
	jalr	%x0, %x23, 0  #1529 pc 20852
	nop #pc 20856
be_else.9387: #pc 20856
	mv	%f0, l.6697  #0 pc 20860
	flw	%f2, 40(%x2)  #1515 pc 20864
	fadd	%f0, %f2, %f0  #1515 pc 20868
	lw	%x5, 8(%x2)  #1516 pc 20872
	add	%x24, %x0, %x5  #1516 pc 20876
	flw	%f2, 0(%x24)  #1516 pc 20880
	fmul	%f2, %f2, %f0  #1516 pc 20884
	lw	%x6, 4(%x2)  #1516 pc 20888
	add	%x24, %x0, %x6  #1516 pc 20892
	flw	%f4, 0(%x24)  #1516 pc 20896
	fadd	%f2, %f2, %f4  #1516 pc 20900
	addi	%x24, %x0, 8  #pc 20904
	add	%x24, %x24, %x5  #1517 pc 20908
	flw	%f4, 0(%x24)  #1517 pc 20912
	fmul	%f4, %f4, %f0  #1517 pc 20916
	addi	%x24, %x0, 8  #pc 20920
	add	%x24, %x24, %x6  #1517 pc 20924
	flw	%f6, 0(%x24)  #1517 pc 20928
	fadd	%f4, %f4, %f6  #1517 pc 20932
	addi	%x24, %x0, 16  #pc 20936
	add	%x24, %x24, %x5  #1518 pc 20940
	flw	%f6, 0(%x24)  #1518 pc 20944
	fmul	%f0, %f6, %f0  #1518 pc 20948
	addi	%x24, %x0, 16  #pc 20952
	add	%x24, %x24, %x6  #1518 pc 20956
	flw	%f6, 0(%x24)  #1518 pc 20960
	fadd	%f0, %f0, %f6  #1518 pc 20964
	addi	%x5, %x0, 0  #0 pc 20968
	lw	%x6, 12(%x2)  #1519 pc 20972
	lw	%x22, 0(%x2)  #1519 pc 20976
	mv	%f28, %f4 #pc 20980
	mv	%f29, %f5 #pc 20984
	mv	%f4, %f0 #pc 20988
	mv	%f5, %f1 #pc 20992
	mv	%f0, %f2 #pc 20996
	mv	%f1, %f3 #pc 21000
	mv	%f2, %f28 #pc 21004
	mv	%f3, %f29 #pc 21008
	sw	%x1, 52(%x2)  #1519 pc 21012
	lw	%x23, 0(%x22)  #1519 pc 21016
	addi	%x2, %x2, 56  #1519 pc 21020
	jalr	%x1, %x23, 0  #1519 pc 21024
	addi	%x2, %x2, -56  #1519 pc 21028
	lw	%x1, 52(%x2)  #1519 pc 21032
	beq	%x5, %x0, 12  #1519 pc 21036
	j	be_else.9389 #pc 21040
	nop #pc 21044
	lw	%x5, 20(%x2)  #1522 pc 21048
	addi	%x5, %x5, 1  #1522 pc 21052
	lw	%x6, 12(%x2)  #1522 pc 21056
	lw	%x22, 16(%x2)  #1522 pc 21060
	lw	%x23, 0(%x22)  #1522 pc 21064
	jalr	%x0, %x23, 0  #1522 pc 21068
	nop #pc 21072
be_else.9389: #pc 21072
	addi	%x5, %x0, 1  #0 pc 21076
	ret #pc 21080
	nop #pc 21084
shadow_check_one_or_group.2908:  #pc 21084
	addi	%x24, %x0, 8  #pc 21088
	add	%x24, %x24, %x22  #1536 pc 21092
	lw	%x7, 0(%x24)  #1536 pc 21096
	addi	%x24, %x0, 4  #pc 21100
	add	%x24, %x24, %x22  #1536 pc 21104
	lw	%x9, 0(%x24)  #1536 pc 21108
	slli	%x10, %x5, 2  #1536 pc 21112
	add	%x24, %x10, %x6  #1536 pc 21116
	lw	%x10, 0(%x24)  #1536 pc 21120
	addi	%x24, %x0, -1  #pc 21124
	beq	%x10, %x24, 12  #1537 pc 21128
	j	be_else.9390 #pc 21132
	nop #pc 21136
	addi	%x5, %x0, 0  #0 pc 21140
	ret #pc 21144
	nop #pc 21148
be_else.9390: #pc 21148
	slli	%x10, %x10, 2  #1540 pc 21152
	add	%x24, %x10, %x9  #1540 pc 21156
	lw	%x9, 0(%x24)  #1540 pc 21160
	addi	%x10, %x0, 0  #0 pc 21164
	sw	%x6, 0(%x2)  #1541 pc 21168
	sw	%x22, 4(%x2)  #1541 pc 21172
	sw	%x5, 8(%x2)  #1541 pc 21176
	mv	%x6, %x9 #pc 21180
	mv	%x5, %x10 #pc 21184
	mv	%x22, %x7 #pc 21188
	sw	%x1, 12(%x2)  #1541 pc 21192
	lw	%x23, 0(%x22)  #1541 pc 21196
	addi	%x2, %x2, 16  #1541 pc 21200
	jalr	%x1, %x23, 0  #1541 pc 21204
	addi	%x2, %x2, -16  #1541 pc 21208
	lw	%x1, 12(%x2)  #1541 pc 21212
	beq	%x5, %x0, 12  #1542 pc 21216
	j	be_else.9391 #pc 21220
	nop #pc 21224
	lw	%x5, 8(%x2)  #1545 pc 21228
	addi	%x5, %x5, 1  #1545 pc 21232
	lw	%x6, 0(%x2)  #1545 pc 21236
	lw	%x22, 4(%x2)  #1545 pc 21240
	lw	%x23, 0(%x22)  #1545 pc 21244
	jalr	%x0, %x23, 0  #1545 pc 21248
	nop #pc 21252
be_else.9391: #pc 21252
	addi	%x5, %x0, 1  #0 pc 21256
	ret #pc 21260
	nop #pc 21264
shadow_check_one_or_matrix.2911:  #pc 21264
	addi	%x24, %x0, 20  #pc 21268
	add	%x24, %x24, %x22  #1551 pc 21272
	lw	%x7, 0(%x24)  #1551 pc 21276
	addi	%x24, %x0, 16  #pc 21280
	add	%x24, %x24, %x22  #1551 pc 21284
	lw	%x9, 0(%x24)  #1551 pc 21288
	addi	%x24, %x0, 12  #pc 21292
	add	%x24, %x24, %x22  #1551 pc 21296
	lw	%x10, 0(%x24)  #1551 pc 21300
	addi	%x24, %x0, 8  #pc 21304
	add	%x24, %x24, %x22  #1551 pc 21308
	lw	%x11, 0(%x24)  #1551 pc 21312
	addi	%x24, %x0, 4  #pc 21316
	add	%x24, %x24, %x22  #1551 pc 21320
	lw	%x12, 0(%x24)  #1551 pc 21324
	slli	%x13, %x5, 2  #1551 pc 21328
	add	%x24, %x13, %x6  #1551 pc 21332
	lw	%x13, 0(%x24)  #1551 pc 21336
	add	%x24, %x0, %x13  #1552 pc 21340
	lw	%x14, 0(%x24)  #1552 pc 21344
	addi	%x24, %x0, -1  #pc 21348
	beq	%x14, %x24, 12  #1553 pc 21352
	j	be_else.9392 #pc 21356
	nop #pc 21360
	addi	%x5, %x0, 0  #0 pc 21364
	ret #pc 21368
	nop #pc 21372
be_else.9392: #pc 21372
	sw	%x13, 0(%x2)  #1557 pc 21376
	sw	%x10, 4(%x2)  #1557 pc 21380
	sw	%x6, 8(%x2)  #1557 pc 21384
	sw	%x22, 12(%x2)  #1557 pc 21388
	sw	%x5, 16(%x2)  #1557 pc 21392
	addi	%x24, %x0, 99  #pc 21396
	beq	%x14, %x24, 12  #1557 pc 21400
	j	be_else.9393 #pc 21404
	nop #pc 21408
	addi	%x5, %x0, 1  #0 pc 21412
	j	be_cont.9394 #pc 21416
	nop #pc 21420
be_else.9393: #pc 21420
	sw	%x9, 20(%x2)  #1560 pc 21424
	mv	%x6, %x11 #pc 21428
	mv	%x5, %x14 #pc 21432
	mv	%x22, %x7 #pc 21436
	mv	%x7, %x12 #pc 21440
	sw	%x1, 28(%x2)  #1560 pc 21444
	lw	%x23, 0(%x22)  #1560 pc 21448
	addi	%x2, %x2, 32  #1560 pc 21452
	jalr	%x1, %x23, 0  #1560 pc 21456
	addi	%x2, %x2, -32  #1560 pc 21460
	lw	%x1, 28(%x2)  #1560 pc 21464
	beq	%x5, %x0, 12  #1563 pc 21468
	j	be_else.9395 #pc 21472
	nop #pc 21476
	addi	%x5, %x0, 0  #0 pc 21480
	j	be_cont.9396 #pc 21484
	nop #pc 21488
be_else.9395: #pc 21488
	lw	%x5, 20(%x2)  #1564 pc 21492
	add	%x24, %x0, %x5  #1564 pc 21496
	flw	%f0, 0(%x24)  #1564 pc 21500
	mv	%f2, l.6711  #0 pc 21504
	sw	%x1, 28(%x2)  #1564 pc 21508
	addi	%x2, %x2, 32  #1564 pc 21512
	jal	%x1, fless.2540  #1564 pc 21516
	addi	%x2, %x2, -32  #1564 pc 21520
	lw	%x1, 28(%x2) #1564 pc 21524
	beq	%x5, %x0, 12  #1564 pc 21528
	j	be_else.9397 #pc 21532
	nop #pc 21536
	addi	%x5, %x0, 0  #0 pc 21540
	j	be_cont.9398 #pc 21544
	nop #pc 21548
be_else.9397: #pc 21548
	addi	%x5, %x0, 1  #0 pc 21552
	lw	%x6, 0(%x2)  #1565 pc 21556
	lw	%x22, 4(%x2)  #1565 pc 21560
	sw	%x1, 28(%x2)  #1565 pc 21564
	lw	%x23, 0(%x22)  #1565 pc 21568
	addi	%x2, %x2, 32  #1565 pc 21572
	jalr	%x1, %x23, 0  #1565 pc 21576
	addi	%x2, %x2, -32  #1565 pc 21580
	lw	%x1, 28(%x2)  #1565 pc 21584
	beq	%x5, %x0, 12  #1565 pc 21588
	j	be_else.9399 #pc 21592
	nop #pc 21596
	addi	%x5, %x0, 0  #0 pc 21600
	j	be_cont.9400 #pc 21604
	nop #pc 21608
be_else.9399: #pc 21608
	addi	%x5, %x0, 1  #0 pc 21612
be_cont.9400: #pc 21612
be_cont.9398: #pc 21612
be_cont.9396: #pc 21612
be_cont.9394: #pc 21612
	beq	%x5, %x0, 12  #1556 pc 21616
	j	be_else.9401 #pc 21620
	nop #pc 21624
	lw	%x5, 16(%x2)  #1576 pc 21628
	addi	%x5, %x5, 1  #1576 pc 21632
	lw	%x6, 8(%x2)  #1576 pc 21636
	lw	%x22, 12(%x2)  #1576 pc 21640
	lw	%x23, 0(%x22)  #1576 pc 21644
	jalr	%x0, %x23, 0  #1576 pc 21648
	nop #pc 21652
be_else.9401: #pc 21652
	addi	%x5, %x0, 1  #0 pc 21656
	lw	%x6, 0(%x2)  #1571 pc 21660
	lw	%x22, 4(%x2)  #1571 pc 21664
	sw	%x1, 28(%x2)  #1571 pc 21668
	lw	%x23, 0(%x22)  #1571 pc 21672
	addi	%x2, %x2, 32  #1571 pc 21676
	jalr	%x1, %x23, 0  #1571 pc 21680
	addi	%x2, %x2, -32  #1571 pc 21684
	lw	%x1, 28(%x2)  #1571 pc 21688
	beq	%x5, %x0, 12  #1571 pc 21692
	j	be_else.9402 #pc 21696
	nop #pc 21700
	lw	%x5, 16(%x2)  #1574 pc 21704
	addi	%x5, %x5, 1  #1574 pc 21708
	lw	%x6, 8(%x2)  #1574 pc 21712
	lw	%x22, 12(%x2)  #1574 pc 21716
	lw	%x23, 0(%x22)  #1574 pc 21720
	jalr	%x0, %x23, 0  #1574 pc 21724
	nop #pc 21728
be_else.9402: #pc 21728
	addi	%x5, %x0, 1  #0 pc 21732
	ret #pc 21736
	nop #pc 21740
solve_each_element.2914:  #pc 21740
	addi	%x24, %x0, 36  #pc 21744
	add	%x24, %x24, %x22  #1587 pc 21748
	lw	%x9, 0(%x24)  #1587 pc 21752
	addi	%x24, %x0, 32  #pc 21756
	add	%x24, %x24, %x22  #1587 pc 21760
	lw	%x10, 0(%x24)  #1587 pc 21764
	addi	%x24, %x0, 28  #pc 21768
	add	%x24, %x24, %x22  #1587 pc 21772
	lw	%x11, 0(%x24)  #1587 pc 21776
	addi	%x24, %x0, 24  #pc 21780
	add	%x24, %x24, %x22  #1587 pc 21784
	lw	%x12, 0(%x24)  #1587 pc 21788
	addi	%x24, %x0, 20  #pc 21792
	add	%x24, %x24, %x22  #1587 pc 21796
	lw	%x13, 0(%x24)  #1587 pc 21800
	addi	%x24, %x0, 16  #pc 21804
	add	%x24, %x24, %x22  #1587 pc 21808
	lw	%x14, 0(%x24)  #1587 pc 21812
	addi	%x24, %x0, 12  #pc 21816
	add	%x24, %x24, %x22  #1587 pc 21820
	lw	%x15, 0(%x24)  #1587 pc 21824
	addi	%x24, %x0, 8  #pc 21828
	add	%x24, %x24, %x22  #1587 pc 21832
	lw	%x16, 0(%x24)  #1587 pc 21836
	addi	%x24, %x0, 4  #pc 21840
	add	%x24, %x24, %x22  #1587 pc 21844
	lw	%x17, 0(%x24)  #1587 pc 21848
	slli	%x18, %x5, 2  #1587 pc 21852
	add	%x24, %x18, %x6  #1587 pc 21856
	lw	%x18, 0(%x24)  #1587 pc 21860
	addi	%x24, %x0, -1  #pc 21864
	beq	%x18, %x24, 12  #1588 pc 21868
	j	be_else.9403 #pc 21872
	nop #pc 21876
	ret #pc 21880
	nop #pc 21884
be_else.9403: #pc 21884
	sw	%x14, 0(%x2)  #1590 pc 21888
	sw	%x16, 4(%x2)  #1590 pc 21892
	sw	%x15, 8(%x2)  #1590 pc 21896
	sw	%x17, 12(%x2)  #1590 pc 21900
	sw	%x10, 16(%x2)  #1590 pc 21904
	sw	%x9, 20(%x2)  #1590 pc 21908
	sw	%x11, 24(%x2)  #1590 pc 21912
	sw	%x7, 28(%x2)  #1590 pc 21916
	sw	%x6, 32(%x2)  #1590 pc 21920
	sw	%x22, 36(%x2)  #1590 pc 21924
	sw	%x5, 40(%x2)  #1590 pc 21928
	sw	%x13, 44(%x2)  #1590 pc 21932
	sw	%x18, 48(%x2)  #1590 pc 21936
	mv	%x6, %x7 #pc 21940
	mv	%x5, %x18 #pc 21944
	mv	%x22, %x12 #pc 21948
	mv	%x7, %x10 #pc 21952
	sw	%x1, 52(%x2)  #1590 pc 21956
	lw	%x23, 0(%x22)  #1590 pc 21960
	addi	%x2, %x2, 56  #1590 pc 21964
	jalr	%x1, %x23, 0  #1590 pc 21968
	addi	%x2, %x2, -56  #1590 pc 21972
	lw	%x1, 52(%x2)  #1590 pc 21976
	beq	%x5, %x0, 12  #1591 pc 21980
	j	be_else.9405 #pc 21984
	nop #pc 21988
	lw	%x5, 48(%x2)  #1619 pc 21992
	slli	%x5, %x5, 2  #1619 pc 21996
	lw	%x6, 44(%x2)  #1619 pc 22000
	add	%x24, %x5, %x6  #1619 pc 22004
	lw	%x5, 0(%x24)  #1619 pc 22008
	sw	%x1, 52(%x2)  #1619 pc 22012
	addi	%x2, %x2, 56  #1619 pc 22016
	jal	%x1, o_isinvert.2688  #1619 pc 22020
	addi	%x2, %x2, -56  #1619 pc 22024
	lw	%x1, 52(%x2) #1619 pc 22028
	beq	%x5, %x0, 12  #1619 pc 22032
	j	be_else.9406 #pc 22036
	nop #pc 22040
	ret #pc 22044
	nop #pc 22048
be_else.9406: #pc 22048
	lw	%x5, 40(%x2)  #1620 pc 22052
	addi	%x5, %x5, 1  #1620 pc 22056
	lw	%x6, 32(%x2)  #1620 pc 22060
	lw	%x7, 28(%x2)  #1620 pc 22064
	lw	%x22, 36(%x2)  #1620 pc 22068
	lw	%x23, 0(%x22)  #1620 pc 22072
	jalr	%x0, %x23, 0  #1620 pc 22076
	nop #pc 22080
be_else.9405: #pc 22080
	lw	%x6, 24(%x2)  #1595 pc 22084
	add	%x24, %x0, %x6  #1595 pc 22088
	flw	%f2, 0(%x24)  #1595 pc 22092
	mv	%f0, l.6293  #0 pc 22096
	sw	%x5, 52(%x2)  #1597 pc 22100
	fsw	%f2, 56(%x2)  #1597 pc 22104
	sw	%x1, 68(%x2)  #1597 pc 22108
	addi	%x2, %x2, 72  #1597 pc 22112
	jal	%x1, fless.2540  #1597 pc 22116
	addi	%x2, %x2, -72  #1597 pc 22120
	lw	%x1, 68(%x2) #1597 pc 22124
	beq	%x5, %x0, 12  #1597 pc 22128
	j	be_else.9408 #pc 22132
	nop #pc 22136
	j	be_cont.9409 #pc 22140
	nop #pc 22144
be_else.9408: #pc 22144
	lw	%x5, 20(%x2)  #1598 pc 22148
	add	%x24, %x0, %x5  #1598 pc 22152
	flw	%f2, 0(%x24)  #1598 pc 22156
	flw	%f0, 56(%x2)  #1598 pc 22160
	sw	%x1, 68(%x2)  #1598 pc 22164
	addi	%x2, %x2, 72  #1598 pc 22168
	jal	%x1, fless.2540  #1598 pc 22172
	addi	%x2, %x2, -72  #1598 pc 22176
	lw	%x1, 68(%x2) #1598 pc 22180
	beq	%x5, %x0, 12  #1598 pc 22184
	j	be_else.9410 #pc 22188
	nop #pc 22192
	j	be_cont.9411 #pc 22196
	nop #pc 22200
be_else.9410: #pc 22200
	mv	%f0, l.6697  #0 pc 22204
	flw	%f2, 56(%x2)  #1600 pc 22208
	fadd	%f0, %f2, %f0  #1600 pc 22212
	lw	%x5, 28(%x2)  #1601 pc 22216
	add	%x24, %x0, %x5  #1601 pc 22220
	flw	%f2, 0(%x24)  #1601 pc 22224
	fmul	%f2, %f2, %f0  #1601 pc 22228
	lw	%x6, 16(%x2)  #1601 pc 22232
	add	%x24, %x0, %x6  #1601 pc 22236
	flw	%f4, 0(%x24)  #1601 pc 22240
	fadd	%f2, %f2, %f4  #1601 pc 22244
	addi	%x24, %x0, 8  #pc 22248
	add	%x24, %x24, %x5  #1602 pc 22252
	flw	%f4, 0(%x24)  #1602 pc 22256
	fmul	%f4, %f4, %f0  #1602 pc 22260
	addi	%x24, %x0, 8  #pc 22264
	add	%x24, %x24, %x6  #1602 pc 22268
	flw	%f6, 0(%x24)  #1602 pc 22272
	fadd	%f4, %f4, %f6  #1602 pc 22276
	addi	%x24, %x0, 16  #pc 22280
	add	%x24, %x24, %x5  #1603 pc 22284
	flw	%f6, 0(%x24)  #1603 pc 22288
	fmul	%f6, %f6, %f0  #1603 pc 22292
	addi	%x24, %x0, 16  #pc 22296
	add	%x24, %x24, %x6  #1603 pc 22300
	flw	%f8, 0(%x24)  #1603 pc 22304
	fadd	%f6, %f6, %f8  #1603 pc 22308
	addi	%x6, %x0, 0  #0 pc 22312
	lw	%x7, 32(%x2)  #1604 pc 22316
	lw	%x22, 12(%x2)  #1604 pc 22320
	fsw	%f6, 64(%x2)  #1604 pc 22324
	fsw	%f4, 72(%x2)  #1604 pc 22328
	fsw	%f2, 80(%x2)  #1604 pc 22332
	fsw	%f0, 88(%x2)  #1604 pc 22336
	mv	%x5, %x6 #pc 22340
	mv	%x6, %x7 #pc 22344
	mv	%f0, %f2 #pc 22348
	mv	%f1, %f3 #pc 22352
	mv	%f2, %f4 #pc 22356
	mv	%f3, %f5 #pc 22360
	mv	%f4, %f6 #pc 22364
	mv	%f5, %f7 #pc 22368
	sw	%x1, 100(%x2)  #1604 pc 22372
	lw	%x23, 0(%x22)  #1604 pc 22376
	addi	%x2, %x2, 104  #1604 pc 22380
	jalr	%x1, %x23, 0  #1604 pc 22384
	addi	%x2, %x2, -104  #1604 pc 22388
	lw	%x1, 100(%x2)  #1604 pc 22392
	beq	%x5, %x0, 12  #1604 pc 22396
	j	be_else.9412 #pc 22400
	nop #pc 22404
	j	be_cont.9413 #pc 22408
	nop #pc 22412
be_else.9412: #pc 22412
	lw	%x5, 20(%x2)  #1606 pc 22416
	flw	%f0, 88(%x2)  #1606 pc 22420
	add	%x24, %x0, %x5  #1606 pc 22424
	fsw	%f0, 0(%x24) #1606 pc 22428
	flw	%f0, 80(%x2)  #1607 pc 22432
	flw	%f2, 72(%x2)  #1607 pc 22436
	flw	%f4, 64(%x2)  #1607 pc 22440
	lw	%x5, 8(%x2)  #1607 pc 22444
	sw	%x1, 100(%x2)  #1607 pc 22448
	addi	%x2, %x2, 104  #1607 pc 22452
	jal	%x1, vecset.2644  #1607 pc 22456
	addi	%x2, %x2, -104  #1607 pc 22460
	lw	%x1, 100(%x2) #1607 pc 22464
	lw	%x5, 4(%x2)  #1608 pc 22468
	lw	%x6, 48(%x2)  #1608 pc 22472
	add	%x24, %x0, %x5  #1608 pc 22476
	sw	%x6, 0(%x24)  #1608 pc 22480
	lw	%x5, 0(%x2)  #1609 pc 22484
	lw	%x6, 52(%x2)  #1609 pc 22488
	add	%x24, %x0, %x5  #1609 pc 22492
	sw	%x6, 0(%x24)  #1609 pc 22496
be_cont.9413: #pc 22496
be_cont.9411: #pc 22496
be_cont.9409: #pc 22496
	lw	%x5, 40(%x2)  #1615 pc 22500
	addi	%x5, %x5, 1  #1615 pc 22504
	lw	%x6, 32(%x2)  #1615 pc 22508
	lw	%x7, 28(%x2)  #1615 pc 22512
	lw	%x22, 36(%x2)  #1615 pc 22516
	lw	%x23, 0(%x22)  #1615 pc 22520
	jalr	%x0, %x23, 0  #1615 pc 22524
	nop #pc 22528
solve_one_or_network.2918:  #pc 22528
	addi	%x24, %x0, 8  #pc 22532
	add	%x24, %x24, %x22  #1628 pc 22536
	lw	%x9, 0(%x24)  #1628 pc 22540
	addi	%x24, %x0, 4  #pc 22544
	add	%x24, %x24, %x22  #1628 pc 22548
	lw	%x10, 0(%x24)  #1628 pc 22552
	slli	%x11, %x5, 2  #1628 pc 22556
	add	%x24, %x11, %x6  #1628 pc 22560
	lw	%x11, 0(%x24)  #1628 pc 22564
	addi	%x24, %x0, -1  #pc 22568
	beq	%x11, %x24, 12  #1629 pc 22572
	j	be_else.9414 #pc 22576
	nop #pc 22580
	ret #pc 22584
	nop #pc 22588
be_else.9414: #pc 22588
	slli	%x11, %x11, 2  #1630 pc 22592
	add	%x24, %x11, %x10  #1630 pc 22596
	lw	%x10, 0(%x24)  #1630 pc 22600
	addi	%x11, %x0, 0  #0 pc 22604
	sw	%x7, 0(%x2)  #1631 pc 22608
	sw	%x6, 4(%x2)  #1631 pc 22612
	sw	%x22, 8(%x2)  #1631 pc 22616
	sw	%x5, 12(%x2)  #1631 pc 22620
	mv	%x6, %x10 #pc 22624
	mv	%x5, %x11 #pc 22628
	mv	%x22, %x9 #pc 22632
	sw	%x1, 20(%x2)  #1631 pc 22636
	lw	%x23, 0(%x22)  #1631 pc 22640
	addi	%x2, %x2, 24  #1631 pc 22644
	jalr	%x1, %x23, 0  #1631 pc 22648
	addi	%x2, %x2, -24  #1631 pc 22652
	lw	%x1, 20(%x2)  #1631 pc 22656
	lw	%x5, 12(%x2)  #1632 pc 22660
	addi	%x5, %x5, 1  #1632 pc 22664
	lw	%x6, 4(%x2)  #1632 pc 22668
	lw	%x7, 0(%x2)  #1632 pc 22672
	lw	%x22, 8(%x2)  #1632 pc 22676
	lw	%x23, 0(%x22)  #1632 pc 22680
	jalr	%x0, %x23, 0  #1632 pc 22684
	nop #pc 22688
trace_or_matrix.2922:  #pc 22688
	addi	%x24, %x0, 20  #pc 22692
	add	%x24, %x24, %x22  #1638 pc 22696
	lw	%x9, 0(%x24)  #1638 pc 22700
	addi	%x24, %x0, 16  #pc 22704
	add	%x24, %x24, %x22  #1638 pc 22708
	lw	%x10, 0(%x24)  #1638 pc 22712
	addi	%x24, %x0, 12  #pc 22716
	add	%x24, %x24, %x22  #1638 pc 22720
	lw	%x11, 0(%x24)  #1638 pc 22724
	addi	%x24, %x0, 8  #pc 22728
	add	%x24, %x24, %x22  #1638 pc 22732
	lw	%x12, 0(%x24)  #1638 pc 22736
	addi	%x24, %x0, 4  #pc 22740
	add	%x24, %x24, %x22  #1638 pc 22744
	lw	%x13, 0(%x24)  #1638 pc 22748
	slli	%x14, %x5, 2  #1638 pc 22752
	add	%x24, %x14, %x6  #1638 pc 22756
	lw	%x14, 0(%x24)  #1638 pc 22760
	add	%x24, %x0, %x14  #1639 pc 22764
	lw	%x15, 0(%x24)  #1639 pc 22768
	addi	%x24, %x0, -1  #pc 22772
	beq	%x15, %x24, 12  #1640 pc 22776
	j	be_else.9416 #pc 22780
	nop #pc 22784
	ret #pc 22788
	nop #pc 22792
be_else.9416: #pc 22792
	sw	%x7, 0(%x2)  #1643 pc 22796
	sw	%x6, 4(%x2)  #1643 pc 22800
	sw	%x22, 8(%x2)  #1643 pc 22804
	sw	%x5, 12(%x2)  #1643 pc 22808
	addi	%x24, %x0, 99  #pc 22812
	beq	%x15, %x24, 12  #1643 pc 22816
	j	be_else.9418 #pc 22820
	nop #pc 22824
	addi	%x9, %x0, 1  #0 pc 22828
	mv	%x6, %x14 #pc 22832
	mv	%x5, %x9 #pc 22836
	mv	%x22, %x13 #pc 22840
	sw	%x1, 20(%x2)  #1644 pc 22844
	lw	%x23, 0(%x22)  #1644 pc 22848
	addi	%x2, %x2, 24  #1644 pc 22852
	jalr	%x1, %x23, 0  #1644 pc 22856
	addi	%x2, %x2, -24  #1644 pc 22860
	lw	%x1, 20(%x2)  #1644 pc 22864
	j	be_cont.9419 #pc 22868
	nop #pc 22872
be_else.9418: #pc 22872
	sw	%x14, 16(%x2)  #1648 pc 22876
	sw	%x13, 20(%x2)  #1648 pc 22880
	sw	%x9, 24(%x2)  #1648 pc 22884
	sw	%x11, 28(%x2)  #1648 pc 22888
	mv	%x6, %x7 #pc 22892
	mv	%x5, %x15 #pc 22896
	mv	%x22, %x12 #pc 22900
	mv	%x7, %x10 #pc 22904
	sw	%x1, 36(%x2)  #1648 pc 22908
	lw	%x23, 0(%x22)  #1648 pc 22912
	addi	%x2, %x2, 40  #1648 pc 22916
	jalr	%x1, %x23, 0  #1648 pc 22920
	addi	%x2, %x2, -40  #1648 pc 22924
	lw	%x1, 36(%x2)  #1648 pc 22928
	beq	%x5, %x0, 12  #1649 pc 22932
	j	be_else.9420 #pc 22936
	nop #pc 22940
	j	be_cont.9421 #pc 22944
	nop #pc 22948
be_else.9420: #pc 22948
	lw	%x5, 28(%x2)  #1650 pc 22952
	add	%x24, %x0, %x5  #1650 pc 22956
	flw	%f0, 0(%x24)  #1650 pc 22960
	lw	%x5, 24(%x2)  #1651 pc 22964
	add	%x24, %x0, %x5  #1651 pc 22968
	flw	%f2, 0(%x24)  #1651 pc 22972
	sw	%x1, 36(%x2)  #1651 pc 22976
	addi	%x2, %x2, 40  #1651 pc 22980
	jal	%x1, fless.2540  #1651 pc 22984
	addi	%x2, %x2, -40  #1651 pc 22988
	lw	%x1, 36(%x2) #1651 pc 22992
	beq	%x5, %x0, 12  #1651 pc 22996
	j	be_else.9422 #pc 23000
	nop #pc 23004
	j	be_cont.9423 #pc 23008
	nop #pc 23012
be_else.9422: #pc 23012
	addi	%x5, %x0, 1  #0 pc 23016
	lw	%x6, 16(%x2)  #1652 pc 23020
	lw	%x7, 0(%x2)  #1652 pc 23024
	lw	%x22, 20(%x2)  #1652 pc 23028
	sw	%x1, 36(%x2)  #1652 pc 23032
	lw	%x23, 0(%x22)  #1652 pc 23036
	addi	%x2, %x2, 40  #1652 pc 23040
	jalr	%x1, %x23, 0  #1652 pc 23044
	addi	%x2, %x2, -40  #1652 pc 23048
	lw	%x1, 36(%x2)  #1652 pc 23052
be_cont.9423: #pc 23052
be_cont.9421: #pc 23052
be_cont.9419: #pc 23052
	lw	%x5, 12(%x2)  #1656 pc 23056
	addi	%x5, %x5, 1  #1656 pc 23060
	lw	%x6, 4(%x2)  #1656 pc 23064
	lw	%x7, 0(%x2)  #1656 pc 23068
	lw	%x22, 8(%x2)  #1656 pc 23072
	lw	%x23, 0(%x22)  #1656 pc 23076
	jalr	%x0, %x23, 0  #1656 pc 23080
	nop #pc 23084
judge_intersection.2926:  #pc 23084
	addi	%x24, %x0, 12  #pc 23088
	add	%x24, %x24, %x22  #0 pc 23092
	lw	%x6, 0(%x24)  #0 pc 23096
	addi	%x24, %x0, 8  #pc 23100
	add	%x24, %x24, %x22  #0 pc 23104
	lw	%x7, 0(%x24)  #0 pc 23108
	addi	%x24, %x0, 4  #pc 23112
	add	%x24, %x24, %x22  #0 pc 23116
	lw	%x9, 0(%x24)  #0 pc 23120
	mv	%f0, l.6734  #0 pc 23124
	add	%x24, %x0, %x7  #1665 pc 23128
	fsw	%f0, 0(%x24) #1665 pc 23132
	addi	%x10, %x0, 0  #0 pc 23136
	add	%x24, %x0, %x9  #1666 pc 23140
	lw	%x9, 0(%x24)  #1666 pc 23144
	sw	%x7, 0(%x2)  #1666 pc 23148
	mv	%x7, %x5 #pc 23152
	mv	%x22, %x6 #pc 23156
	mv	%x6, %x9 #pc 23160
	mv	%x5, %x10 #pc 23164
	sw	%x1, 4(%x2)  #1666 pc 23168
	lw	%x23, 0(%x22)  #1666 pc 23172
	addi	%x2, %x2, 8  #1666 pc 23176
	jalr	%x1, %x23, 0  #1666 pc 23180
	addi	%x2, %x2, -8  #1666 pc 23184
	lw	%x1, 4(%x2)  #1666 pc 23188
	lw	%x5, 0(%x2)  #1667 pc 23192
	add	%x24, %x0, %x5  #1667 pc 23196
	flw	%f2, 0(%x24)  #1667 pc 23200
	mv	%f0, l.6711  #0 pc 23204
	fsw	%f2, 8(%x2)  #1669 pc 23208
	sw	%x1, 20(%x2)  #1669 pc 23212
	addi	%x2, %x2, 24  #1669 pc 23216
	jal	%x1, fless.2540  #1669 pc 23220
	addi	%x2, %x2, -24  #1669 pc 23224
	lw	%x1, 20(%x2) #1669 pc 23228
	beq	%x5, %x0, 12  #1669 pc 23232
	j	be_else.9425 #pc 23236
	nop #pc 23240
	addi	%x5, %x0, 0  #0 pc 23244
	ret #pc 23248
	nop #pc 23252
be_else.9425: #pc 23252
	mv	%f2, l.6740  #0 pc 23256
	flw	%f0, 8(%x2)  #1670 pc 23260
	j	fless.2540  #1670 pc 23264
	nop #pc 23268
solve_each_element_fast.2928:  #pc 23268
	addi	%x24, %x0, 36  #pc 23272
	add	%x24, %x24, %x22  #1680 pc 23276
	lw	%x9, 0(%x24)  #1680 pc 23280
	addi	%x24, %x0, 32  #pc 23284
	add	%x24, %x24, %x22  #1680 pc 23288
	lw	%x10, 0(%x24)  #1680 pc 23292
	addi	%x24, %x0, 28  #pc 23296
	add	%x24, %x24, %x22  #1680 pc 23300
	lw	%x11, 0(%x24)  #1680 pc 23304
	addi	%x24, %x0, 24  #pc 23308
	add	%x24, %x24, %x22  #1680 pc 23312
	lw	%x12, 0(%x24)  #1680 pc 23316
	addi	%x24, %x0, 20  #pc 23320
	add	%x24, %x24, %x22  #1680 pc 23324
	lw	%x13, 0(%x24)  #1680 pc 23328
	addi	%x24, %x0, 16  #pc 23332
	add	%x24, %x24, %x22  #1680 pc 23336
	lw	%x14, 0(%x24)  #1680 pc 23340
	addi	%x24, %x0, 12  #pc 23344
	add	%x24, %x24, %x22  #1680 pc 23348
	lw	%x15, 0(%x24)  #1680 pc 23352
	addi	%x24, %x0, 8  #pc 23356
	add	%x24, %x24, %x22  #1680 pc 23360
	lw	%x16, 0(%x24)  #1680 pc 23364
	addi	%x24, %x0, 4  #pc 23368
	add	%x24, %x24, %x22  #1680 pc 23372
	lw	%x17, 0(%x24)  #1680 pc 23376
	sw	%x14, 0(%x2)  #1680 pc 23380
	sw	%x16, 4(%x2)  #1680 pc 23384
	sw	%x15, 8(%x2)  #1680 pc 23388
	sw	%x17, 12(%x2)  #1680 pc 23392
	sw	%x10, 16(%x2)  #1680 pc 23396
	sw	%x9, 20(%x2)  #1680 pc 23400
	sw	%x12, 24(%x2)  #1680 pc 23404
	sw	%x22, 28(%x2)  #1680 pc 23408
	sw	%x13, 32(%x2)  #1680 pc 23412
	sw	%x7, 36(%x2)  #1680 pc 23416
	sw	%x11, 40(%x2)  #1680 pc 23420
	sw	%x6, 44(%x2)  #1680 pc 23424
	sw	%x5, 48(%x2)  #1680 pc 23428
	mv	%x5, %x7 #pc 23432
	sw	%x1, 52(%x2)  #1680 pc 23436
	addi	%x2, %x2, 56  #1680 pc 23440
	jal	%x1, d_vec.2743  #1680 pc 23444
	addi	%x2, %x2, -56  #1680 pc 23448
	lw	%x1, 52(%x2) #1680 pc 23452
	lw	%x6, 48(%x2)  #1681 pc 23456
	slli	%x7, %x6, 2  #1681 pc 23460
	lw	%x9, 44(%x2)  #1681 pc 23464
	add	%x24, %x7, %x9  #1681 pc 23468
	lw	%x7, 0(%x24)  #1681 pc 23472
	addi	%x24, %x0, -1  #pc 23476
	beq	%x7, %x24, 12  #1682 pc 23480
	j	be_else.9426 #pc 23484
	nop #pc 23488
	ret #pc 23492
	nop #pc 23496
be_else.9426: #pc 23496
	lw	%x10, 36(%x2)  #1684 pc 23500
	lw	%x22, 40(%x2)  #1684 pc 23504
	sw	%x5, 52(%x2)  #1684 pc 23508
	sw	%x7, 56(%x2)  #1684 pc 23512
	mv	%x6, %x10 #pc 23516
	mv	%x5, %x7 #pc 23520
	sw	%x1, 60(%x2)  #1684 pc 23524
	lw	%x23, 0(%x22)  #1684 pc 23528
	addi	%x2, %x2, 64  #1684 pc 23532
	jalr	%x1, %x23, 0  #1684 pc 23536
	addi	%x2, %x2, -64  #1684 pc 23540
	lw	%x1, 60(%x2)  #1684 pc 23544
	beq	%x5, %x0, 12  #1685 pc 23548
	j	be_else.9428 #pc 23552
	nop #pc 23556
	lw	%x5, 56(%x2)  #1713 pc 23560
	slli	%x5, %x5, 2  #1713 pc 23564
	lw	%x6, 32(%x2)  #1713 pc 23568
	add	%x24, %x5, %x6  #1713 pc 23572
	lw	%x5, 0(%x24)  #1713 pc 23576
	sw	%x1, 60(%x2)  #1713 pc 23580
	addi	%x2, %x2, 64  #1713 pc 23584
	jal	%x1, o_isinvert.2688  #1713 pc 23588
	addi	%x2, %x2, -64  #1713 pc 23592
	lw	%x1, 60(%x2) #1713 pc 23596
	beq	%x5, %x0, 12  #1713 pc 23600
	j	be_else.9429 #pc 23604
	nop #pc 23608
	ret #pc 23612
	nop #pc 23616
be_else.9429: #pc 23616
	lw	%x5, 48(%x2)  #1714 pc 23620
	addi	%x5, %x5, 1  #1714 pc 23624
	lw	%x6, 44(%x2)  #1714 pc 23628
	lw	%x7, 36(%x2)  #1714 pc 23632
	lw	%x22, 28(%x2)  #1714 pc 23636
	lw	%x23, 0(%x22)  #1714 pc 23640
	jalr	%x0, %x23, 0  #1714 pc 23644
	nop #pc 23648
be_else.9428: #pc 23648
	lw	%x6, 24(%x2)  #1689 pc 23652
	add	%x24, %x0, %x6  #1689 pc 23656
	flw	%f2, 0(%x24)  #1689 pc 23660
	mv	%f0, l.6293  #0 pc 23664
	sw	%x5, 60(%x2)  #1691 pc 23668
	fsw	%f2, 64(%x2)  #1691 pc 23672
	sw	%x1, 76(%x2)  #1691 pc 23676
	addi	%x2, %x2, 80  #1691 pc 23680
	jal	%x1, fless.2540  #1691 pc 23684
	addi	%x2, %x2, -80  #1691 pc 23688
	lw	%x1, 76(%x2) #1691 pc 23692
	beq	%x5, %x0, 12  #1691 pc 23696
	j	be_else.9431 #pc 23700
	nop #pc 23704
	j	be_cont.9432 #pc 23708
	nop #pc 23712
be_else.9431: #pc 23712
	lw	%x5, 20(%x2)  #1692 pc 23716
	add	%x24, %x0, %x5  #1692 pc 23720
	flw	%f2, 0(%x24)  #1692 pc 23724
	flw	%f0, 64(%x2)  #1692 pc 23728
	sw	%x1, 76(%x2)  #1692 pc 23732
	addi	%x2, %x2, 80  #1692 pc 23736
	jal	%x1, fless.2540  #1692 pc 23740
	addi	%x2, %x2, -80  #1692 pc 23744
	lw	%x1, 76(%x2) #1692 pc 23748
	beq	%x5, %x0, 12  #1692 pc 23752
	j	be_else.9433 #pc 23756
	nop #pc 23760
	j	be_cont.9434 #pc 23764
	nop #pc 23768
be_else.9433: #pc 23768
	mv	%f0, l.6697  #0 pc 23772
	flw	%f2, 64(%x2)  #1694 pc 23776
	fadd	%f0, %f2, %f0  #1694 pc 23780
	lw	%x5, 52(%x2)  #1695 pc 23784
	add	%x24, %x0, %x5  #1695 pc 23788
	flw	%f2, 0(%x24)  #1695 pc 23792
	fmul	%f2, %f2, %f0  #1695 pc 23796
	lw	%x6, 16(%x2)  #1695 pc 23800
	add	%x24, %x0, %x6  #1695 pc 23804
	flw	%f4, 0(%x24)  #1695 pc 23808
	fadd	%f2, %f2, %f4  #1695 pc 23812
	addi	%x24, %x0, 8  #pc 23816
	add	%x24, %x24, %x5  #1696 pc 23820
	flw	%f4, 0(%x24)  #1696 pc 23824
	fmul	%f4, %f4, %f0  #1696 pc 23828
	addi	%x24, %x0, 8  #pc 23832
	add	%x24, %x24, %x6  #1696 pc 23836
	flw	%f6, 0(%x24)  #1696 pc 23840
	fadd	%f4, %f4, %f6  #1696 pc 23844
	addi	%x24, %x0, 16  #pc 23848
	add	%x24, %x24, %x5  #1697 pc 23852
	flw	%f6, 0(%x24)  #1697 pc 23856
	fmul	%f6, %f6, %f0  #1697 pc 23860
	addi	%x24, %x0, 16  #pc 23864
	add	%x24, %x24, %x6  #1697 pc 23868
	flw	%f8, 0(%x24)  #1697 pc 23872
	fadd	%f6, %f6, %f8  #1697 pc 23876
	addi	%x5, %x0, 0  #0 pc 23880
	lw	%x6, 44(%x2)  #1698 pc 23884
	lw	%x22, 12(%x2)  #1698 pc 23888
	fsw	%f6, 72(%x2)  #1698 pc 23892
	fsw	%f4, 80(%x2)  #1698 pc 23896
	fsw	%f2, 88(%x2)  #1698 pc 23900
	fsw	%f0, 96(%x2)  #1698 pc 23904
	mv	%f0, %f2 #pc 23908
	mv	%f1, %f3 #pc 23912
	mv	%f2, %f4 #pc 23916
	mv	%f3, %f5 #pc 23920
	mv	%f4, %f6 #pc 23924
	mv	%f5, %f7 #pc 23928
	sw	%x1, 108(%x2)  #1698 pc 23932
	lw	%x23, 0(%x22)  #1698 pc 23936
	addi	%x2, %x2, 112  #1698 pc 23940
	jalr	%x1, %x23, 0  #1698 pc 23944
	addi	%x2, %x2, -112  #1698 pc 23948
	lw	%x1, 108(%x2)  #1698 pc 23952
	beq	%x5, %x0, 12  #1698 pc 23956
	j	be_else.9435 #pc 23960
	nop #pc 23964
	j	be_cont.9436 #pc 23968
	nop #pc 23972
be_else.9435: #pc 23972
	lw	%x5, 20(%x2)  #1700 pc 23976
	flw	%f0, 96(%x2)  #1700 pc 23980
	add	%x24, %x0, %x5  #1700 pc 23984
	fsw	%f0, 0(%x24) #1700 pc 23988
	flw	%f0, 88(%x2)  #1701 pc 23992
	flw	%f2, 80(%x2)  #1701 pc 23996
	flw	%f4, 72(%x2)  #1701 pc 24000
	lw	%x5, 8(%x2)  #1701 pc 24004
	sw	%x1, 108(%x2)  #1701 pc 24008
	addi	%x2, %x2, 112  #1701 pc 24012
	jal	%x1, vecset.2644  #1701 pc 24016
	addi	%x2, %x2, -112  #1701 pc 24020
	lw	%x1, 108(%x2) #1701 pc 24024
	lw	%x5, 4(%x2)  #1702 pc 24028
	lw	%x6, 56(%x2)  #1702 pc 24032
	add	%x24, %x0, %x5  #1702 pc 24036
	sw	%x6, 0(%x24)  #1702 pc 24040
	lw	%x5, 0(%x2)  #1703 pc 24044
	lw	%x6, 60(%x2)  #1703 pc 24048
	add	%x24, %x0, %x5  #1703 pc 24052
	sw	%x6, 0(%x24)  #1703 pc 24056
be_cont.9436: #pc 24056
be_cont.9434: #pc 24056
be_cont.9432: #pc 24056
	lw	%x5, 48(%x2)  #1709 pc 24060
	addi	%x5, %x5, 1  #1709 pc 24064
	lw	%x6, 44(%x2)  #1709 pc 24068
	lw	%x7, 36(%x2)  #1709 pc 24072
	lw	%x22, 28(%x2)  #1709 pc 24076
	lw	%x23, 0(%x22)  #1709 pc 24080
	jalr	%x0, %x23, 0  #1709 pc 24084
	nop #pc 24088
solve_one_or_network_fast.2932:  #pc 24088
	addi	%x24, %x0, 8  #pc 24092
	add	%x24, %x24, %x22  #1721 pc 24096
	lw	%x9, 0(%x24)  #1721 pc 24100
	addi	%x24, %x0, 4  #pc 24104
	add	%x24, %x24, %x22  #1721 pc 24108
	lw	%x10, 0(%x24)  #1721 pc 24112
	slli	%x11, %x5, 2  #1721 pc 24116
	add	%x24, %x11, %x6  #1721 pc 24120
	lw	%x11, 0(%x24)  #1721 pc 24124
	addi	%x24, %x0, -1  #pc 24128
	beq	%x11, %x24, 12  #1722 pc 24132
	j	be_else.9437 #pc 24136
	nop #pc 24140
	ret #pc 24144
	nop #pc 24148
be_else.9437: #pc 24148
	slli	%x11, %x11, 2  #1723 pc 24152
	add	%x24, %x11, %x10  #1723 pc 24156
	lw	%x10, 0(%x24)  #1723 pc 24160
	addi	%x11, %x0, 0  #0 pc 24164
	sw	%x7, 0(%x2)  #1724 pc 24168
	sw	%x6, 4(%x2)  #1724 pc 24172
	sw	%x22, 8(%x2)  #1724 pc 24176
	sw	%x5, 12(%x2)  #1724 pc 24180
	mv	%x6, %x10 #pc 24184
	mv	%x5, %x11 #pc 24188
	mv	%x22, %x9 #pc 24192
	sw	%x1, 20(%x2)  #1724 pc 24196
	lw	%x23, 0(%x22)  #1724 pc 24200
	addi	%x2, %x2, 24  #1724 pc 24204
	jalr	%x1, %x23, 0  #1724 pc 24208
	addi	%x2, %x2, -24  #1724 pc 24212
	lw	%x1, 20(%x2)  #1724 pc 24216
	lw	%x5, 12(%x2)  #1725 pc 24220
	addi	%x5, %x5, 1  #1725 pc 24224
	lw	%x6, 4(%x2)  #1725 pc 24228
	lw	%x7, 0(%x2)  #1725 pc 24232
	lw	%x22, 8(%x2)  #1725 pc 24236
	lw	%x23, 0(%x22)  #1725 pc 24240
	jalr	%x0, %x23, 0  #1725 pc 24244
	nop #pc 24248
trace_or_matrix_fast.2936:  #pc 24248
	addi	%x24, %x0, 16  #pc 24252
	add	%x24, %x24, %x22  #1731 pc 24256
	lw	%x9, 0(%x24)  #1731 pc 24260
	addi	%x24, %x0, 12  #pc 24264
	add	%x24, %x24, %x22  #1731 pc 24268
	lw	%x10, 0(%x24)  #1731 pc 24272
	addi	%x24, %x0, 8  #pc 24276
	add	%x24, %x24, %x22  #1731 pc 24280
	lw	%x11, 0(%x24)  #1731 pc 24284
	addi	%x24, %x0, 4  #pc 24288
	add	%x24, %x24, %x22  #1731 pc 24292
	lw	%x12, 0(%x24)  #1731 pc 24296
	slli	%x13, %x5, 2  #1731 pc 24300
	add	%x24, %x13, %x6  #1731 pc 24304
	lw	%x13, 0(%x24)  #1731 pc 24308
	add	%x24, %x0, %x13  #1732 pc 24312
	lw	%x14, 0(%x24)  #1732 pc 24316
	addi	%x24, %x0, -1  #pc 24320
	beq	%x14, %x24, 12  #1733 pc 24324
	j	be_else.9439 #pc 24328
	nop #pc 24332
	ret #pc 24336
	nop #pc 24340
be_else.9439: #pc 24340
	sw	%x7, 0(%x2)  #1736 pc 24344
	sw	%x6, 4(%x2)  #1736 pc 24348
	sw	%x22, 8(%x2)  #1736 pc 24352
	sw	%x5, 12(%x2)  #1736 pc 24356
	addi	%x24, %x0, 99  #pc 24360
	beq	%x14, %x24, 12  #1736 pc 24364
	j	be_else.9441 #pc 24368
	nop #pc 24372
	addi	%x9, %x0, 1  #0 pc 24376
	mv	%x6, %x13 #pc 24380
	mv	%x5, %x9 #pc 24384
	mv	%x22, %x12 #pc 24388
	sw	%x1, 20(%x2)  #1737 pc 24392
	lw	%x23, 0(%x22)  #1737 pc 24396
	addi	%x2, %x2, 24  #1737 pc 24400
	jalr	%x1, %x23, 0  #1737 pc 24404
	addi	%x2, %x2, -24  #1737 pc 24408
	lw	%x1, 20(%x2)  #1737 pc 24412
	j	be_cont.9442 #pc 24416
	nop #pc 24420
be_else.9441: #pc 24420
	sw	%x13, 16(%x2)  #1741 pc 24424
	sw	%x12, 20(%x2)  #1741 pc 24428
	sw	%x9, 24(%x2)  #1741 pc 24432
	sw	%x11, 28(%x2)  #1741 pc 24436
	mv	%x6, %x7 #pc 24440
	mv	%x5, %x14 #pc 24444
	mv	%x22, %x10 #pc 24448
	sw	%x1, 36(%x2)  #1741 pc 24452
	lw	%x23, 0(%x22)  #1741 pc 24456
	addi	%x2, %x2, 40  #1741 pc 24460
	jalr	%x1, %x23, 0  #1741 pc 24464
	addi	%x2, %x2, -40  #1741 pc 24468
	lw	%x1, 36(%x2)  #1741 pc 24472
	beq	%x5, %x0, 12  #1742 pc 24476
	j	be_else.9443 #pc 24480
	nop #pc 24484
	j	be_cont.9444 #pc 24488
	nop #pc 24492
be_else.9443: #pc 24492
	lw	%x5, 28(%x2)  #1743 pc 24496
	add	%x24, %x0, %x5  #1743 pc 24500
	flw	%f0, 0(%x24)  #1743 pc 24504
	lw	%x5, 24(%x2)  #1744 pc 24508
	add	%x24, %x0, %x5  #1744 pc 24512
	flw	%f2, 0(%x24)  #1744 pc 24516
	sw	%x1, 36(%x2)  #1744 pc 24520
	addi	%x2, %x2, 40  #1744 pc 24524
	jal	%x1, fless.2540  #1744 pc 24528
	addi	%x2, %x2, -40  #1744 pc 24532
	lw	%x1, 36(%x2) #1744 pc 24536
	beq	%x5, %x0, 12  #1744 pc 24540
	j	be_else.9445 #pc 24544
	nop #pc 24548
	j	be_cont.9446 #pc 24552
	nop #pc 24556
be_else.9445: #pc 24556
	addi	%x5, %x0, 1  #0 pc 24560
	lw	%x6, 16(%x2)  #1745 pc 24564
	lw	%x7, 0(%x2)  #1745 pc 24568
	lw	%x22, 20(%x2)  #1745 pc 24572
	sw	%x1, 36(%x2)  #1745 pc 24576
	lw	%x23, 0(%x22)  #1745 pc 24580
	addi	%x2, %x2, 40  #1745 pc 24584
	jalr	%x1, %x23, 0  #1745 pc 24588
	addi	%x2, %x2, -40  #1745 pc 24592
	lw	%x1, 36(%x2)  #1745 pc 24596
be_cont.9446: #pc 24596
be_cont.9444: #pc 24596
be_cont.9442: #pc 24596
	lw	%x5, 12(%x2)  #1749 pc 24600
	addi	%x5, %x5, 1  #1749 pc 24604
	lw	%x6, 4(%x2)  #1749 pc 24608
	lw	%x7, 0(%x2)  #1749 pc 24612
	lw	%x22, 8(%x2)  #1749 pc 24616
	lw	%x23, 0(%x22)  #1749 pc 24620
	jalr	%x0, %x23, 0  #1749 pc 24624
	nop #pc 24628
judge_intersection_fast.2940:  #pc 24628
	addi	%x24, %x0, 12  #pc 24632
	add	%x24, %x24, %x22  #0 pc 24636
	lw	%x6, 0(%x24)  #0 pc 24640
	addi	%x24, %x0, 8  #pc 24644
	add	%x24, %x24, %x22  #0 pc 24648
	lw	%x7, 0(%x24)  #0 pc 24652
	addi	%x24, %x0, 4  #pc 24656
	add	%x24, %x24, %x22  #0 pc 24660
	lw	%x9, 0(%x24)  #0 pc 24664
	mv	%f0, l.6734  #0 pc 24668
	add	%x24, %x0, %x7  #1756 pc 24672
	fsw	%f0, 0(%x24) #1756 pc 24676
	addi	%x10, %x0, 0  #0 pc 24680
	add	%x24, %x0, %x9  #1757 pc 24684
	lw	%x9, 0(%x24)  #1757 pc 24688
	sw	%x7, 0(%x2)  #1757 pc 24692
	mv	%x7, %x5 #pc 24696
	mv	%x22, %x6 #pc 24700
	mv	%x6, %x9 #pc 24704
	mv	%x5, %x10 #pc 24708
	sw	%x1, 4(%x2)  #1757 pc 24712
	lw	%x23, 0(%x22)  #1757 pc 24716
	addi	%x2, %x2, 8  #1757 pc 24720
	jalr	%x1, %x23, 0  #1757 pc 24724
	addi	%x2, %x2, -8  #1757 pc 24728
	lw	%x1, 4(%x2)  #1757 pc 24732
	lw	%x5, 0(%x2)  #1758 pc 24736
	add	%x24, %x0, %x5  #1758 pc 24740
	flw	%f2, 0(%x24)  #1758 pc 24744
	mv	%f0, l.6711  #0 pc 24748
	fsw	%f2, 8(%x2)  #1760 pc 24752
	sw	%x1, 20(%x2)  #1760 pc 24756
	addi	%x2, %x2, 24  #1760 pc 24760
	jal	%x1, fless.2540  #1760 pc 24764
	addi	%x2, %x2, -24  #1760 pc 24768
	lw	%x1, 20(%x2) #1760 pc 24772
	beq	%x5, %x0, 12  #1760 pc 24776
	j	be_else.9448 #pc 24780
	nop #pc 24784
	addi	%x5, %x0, 0  #0 pc 24788
	ret #pc 24792
	nop #pc 24796
be_else.9448: #pc 24796
	mv	%f2, l.6740  #0 pc 24800
	flw	%f0, 8(%x2)  #1761 pc 24804
	j	fless.2540  #1761 pc 24808
	nop #pc 24812
get_nvector_rect.2942:  #pc 24812
	addi	%x24, %x0, 8  #pc 24816
	add	%x24, %x24, %x22  #0 pc 24820
	lw	%x6, 0(%x24)  #0 pc 24824
	addi	%x24, %x0, 4  #pc 24828
	add	%x24, %x24, %x22  #0 pc 24832
	lw	%x7, 0(%x24)  #0 pc 24836
	add	%x24, %x0, %x7  #1776 pc 24840
	lw	%x7, 0(%x24)  #1776 pc 24844
	sw	%x6, 0(%x2)  #1778 pc 24848
	sw	%x5, 4(%x2)  #1778 pc 24852
	sw	%x7, 8(%x2)  #1778 pc 24856
	mv	%x5, %x6 #pc 24860
	sw	%x1, 12(%x2)  #1778 pc 24864
	addi	%x2, %x2, 16  #1778 pc 24868
	jal	%x1, vecbzero.2652  #1778 pc 24872
	addi	%x2, %x2, -16  #1778 pc 24876
	lw	%x1, 12(%x2) #1778 pc 24880
	lw	%x5, 8(%x2)  #1779 pc 24884
	addi	%x6, %x5, -1  #1779 pc 24888
	addi	%x5, %x5, -1  #1779 pc 24892
	slli	%x5, %x5, 3  #1779 pc 24896
	lw	%x7, 4(%x2)  #1779 pc 24900
	add	%x24, %x5, %x7  #1779 pc 24904
	flw	%f0, 0(%x24)  #1779 pc 24908
	sw	%x6, 12(%x2)  #1779 pc 24912
	sw	%x1, 20(%x2)  #1779 pc 24916
	addi	%x2, %x2, 24  #1779 pc 24920
	jal	%x1, sgn.2636  #1779 pc 24924
	addi	%x2, %x2, -24  #1779 pc 24928
	lw	%x1, 20(%x2) #1779 pc 24932
	sw	%x1, 20(%x2)  #1779 pc 24936
	addi	%x2, %x2, 24  #1779 pc 24940
	jal	%x1, fneg.2534  #1779 pc 24944
	addi	%x2, %x2, -24  #1779 pc 24948
	lw	%x1, 20(%x2) #1779 pc 24952
	lw	%x5, 12(%x2)  #1779 pc 24956
	slli	%x5, %x5, 3  #1779 pc 24960
	lw	%x6, 0(%x2)  #1779 pc 24964
	add	%x24, %x5, %x6  #1779 pc 24968
	fsw	%f0, 0(%x24) #1779 pc 24972
	ret #pc 24976
	nop #pc 24980
get_nvector_plane.2944:  #pc 24980
	addi	%x24, %x0, 4  #pc 24984
	add	%x24, %x24, %x22  #0 pc 24988
	lw	%x6, 0(%x24)  #0 pc 24992
	sw	%x5, 0(%x2)  #1785 pc 24996
	sw	%x6, 4(%x2)  #1785 pc 25000
	sw	%x1, 12(%x2)  #1785 pc 25004
	addi	%x2, %x2, 16  #1785 pc 25008
	jal	%x1, o_param_a.2692  #1785 pc 25012
	addi	%x2, %x2, -16  #1785 pc 25016
	lw	%x1, 12(%x2) #1785 pc 25020
	sw	%x1, 12(%x2)  #1785 pc 25024
	addi	%x2, %x2, 16  #1785 pc 25028
	jal	%x1, fneg.2534  #1785 pc 25032
	addi	%x2, %x2, -16  #1785 pc 25036
	lw	%x1, 12(%x2) #1785 pc 25040
	lw	%x5, 4(%x2)  #1785 pc 25044
	add	%x24, %x0, %x5  #1785 pc 25048
	fsw	%f0, 0(%x24) #1785 pc 25052
	lw	%x6, 0(%x2)  #1786 pc 25056
	mv	%x5, %x6 #pc 25060
	sw	%x1, 12(%x2)  #1786 pc 25064
	addi	%x2, %x2, 16  #1786 pc 25068
	jal	%x1, o_param_b.2694  #1786 pc 25072
	addi	%x2, %x2, -16  #1786 pc 25076
	lw	%x1, 12(%x2) #1786 pc 25080
	sw	%x1, 12(%x2)  #1786 pc 25084
	addi	%x2, %x2, 16  #1786 pc 25088
	jal	%x1, fneg.2534  #1786 pc 25092
	addi	%x2, %x2, -16  #1786 pc 25096
	lw	%x1, 12(%x2) #1786 pc 25100
	lw	%x5, 4(%x2)  #1786 pc 25104
	addi	%x24, %x0, 8  #pc 25108
	add	%x24, %x24, %x5  #1786 pc 25112
	fsw	%f0, 0(%x24) #1786 pc 25116
	lw	%x6, 0(%x2)  #1787 pc 25120
	mv	%x5, %x6 #pc 25124
	sw	%x1, 12(%x2)  #1787 pc 25128
	addi	%x2, %x2, 16  #1787 pc 25132
	jal	%x1, o_param_c.2696  #1787 pc 25136
	addi	%x2, %x2, -16  #1787 pc 25140
	lw	%x1, 12(%x2) #1787 pc 25144
	sw	%x1, 12(%x2)  #1787 pc 25148
	addi	%x2, %x2, 16  #1787 pc 25152
	jal	%x1, fneg.2534  #1787 pc 25156
	addi	%x2, %x2, -16  #1787 pc 25160
	lw	%x1, 12(%x2) #1787 pc 25164
	lw	%x5, 4(%x2)  #1787 pc 25168
	addi	%x24, %x0, 16  #pc 25172
	add	%x24, %x24, %x5  #1787 pc 25176
	fsw	%f0, 0(%x24) #1787 pc 25180
	ret #pc 25184
	nop #pc 25188
get_nvector_second.2946:  #pc 25188
	addi	%x24, %x0, 8  #pc 25192
	add	%x24, %x24, %x22  #0 pc 25196
	lw	%x6, 0(%x24)  #0 pc 25200
	addi	%x24, %x0, 4  #pc 25204
	add	%x24, %x24, %x22  #0 pc 25208
	lw	%x7, 0(%x24)  #0 pc 25212
	add	%x24, %x0, %x7  #1792 pc 25216
	flw	%f0, 0(%x24)  #1792 pc 25220
	sw	%x6, 0(%x2)  #1792 pc 25224
	sw	%x5, 4(%x2)  #1792 pc 25228
	sw	%x7, 8(%x2)  #1792 pc 25232
	fsw	%f0, 16(%x2)  #1792 pc 25236
	sw	%x1, 28(%x2)  #1792 pc 25240
	addi	%x2, %x2, 32  #1792 pc 25244
	jal	%x1, o_param_x.2700  #1792 pc 25248
	addi	%x2, %x2, -32  #1792 pc 25252
	lw	%x1, 28(%x2) #1792 pc 25256
	flw	%f2, 16(%x2)  #1792 pc 25260
	fsub	%f0, %f2, %f0  #1792 pc 25264
	lw	%x5, 8(%x2)  #1793 pc 25268
	addi	%x24, %x0, 8  #pc 25272
	add	%x24, %x24, %x5  #1793 pc 25276
	flw	%f2, 0(%x24)  #1793 pc 25280
	lw	%x6, 4(%x2)  #1793 pc 25284
	fsw	%f0, 24(%x2)  #1793 pc 25288
	fsw	%f2, 32(%x2)  #1793 pc 25292
	mv	%x5, %x6 #pc 25296
	sw	%x1, 44(%x2)  #1793 pc 25300
	addi	%x2, %x2, 48  #1793 pc 25304
	jal	%x1, o_param_y.2702  #1793 pc 25308
	addi	%x2, %x2, -48  #1793 pc 25312
	lw	%x1, 44(%x2) #1793 pc 25316
	flw	%f2, 32(%x2)  #1793 pc 25320
	fsub	%f0, %f2, %f0  #1793 pc 25324
	lw	%x5, 8(%x2)  #1794 pc 25328
	addi	%x24, %x0, 16  #pc 25332
	add	%x24, %x24, %x5  #1794 pc 25336
	flw	%f2, 0(%x24)  #1794 pc 25340
	lw	%x5, 4(%x2)  #1794 pc 25344
	fsw	%f0, 40(%x2)  #1794 pc 25348
	fsw	%f2, 48(%x2)  #1794 pc 25352
	sw	%x1, 60(%x2)  #1794 pc 25356
	addi	%x2, %x2, 64  #1794 pc 25360
	jal	%x1, o_param_z.2704  #1794 pc 25364
	addi	%x2, %x2, -64  #1794 pc 25368
	lw	%x1, 60(%x2) #1794 pc 25372
	flw	%f2, 48(%x2)  #1794 pc 25376
	fsub	%f0, %f2, %f0  #1794 pc 25380
	lw	%x5, 4(%x2)  #1796 pc 25384
	fsw	%f0, 56(%x2)  #1796 pc 25388
	sw	%x1, 68(%x2)  #1796 pc 25392
	addi	%x2, %x2, 72  #1796 pc 25396
	jal	%x1, o_param_a.2692  #1796 pc 25400
	addi	%x2, %x2, -72  #1796 pc 25404
	lw	%x1, 68(%x2) #1796 pc 25408
	flw	%f2, 24(%x2)  #1796 pc 25412
	fmul	%f0, %f2, %f0  #1796 pc 25416
	lw	%x5, 4(%x2)  #1797 pc 25420
	fsw	%f0, 64(%x2)  #1797 pc 25424
	sw	%x1, 76(%x2)  #1797 pc 25428
	addi	%x2, %x2, 80  #1797 pc 25432
	jal	%x1, o_param_b.2694  #1797 pc 25436
	addi	%x2, %x2, -80  #1797 pc 25440
	lw	%x1, 76(%x2) #1797 pc 25444
	flw	%f2, 40(%x2)  #1797 pc 25448
	fmul	%f0, %f2, %f0  #1797 pc 25452
	lw	%x5, 4(%x2)  #1798 pc 25456
	fsw	%f0, 72(%x2)  #1798 pc 25460
	sw	%x1, 84(%x2)  #1798 pc 25464
	addi	%x2, %x2, 88  #1798 pc 25468
	jal	%x1, o_param_c.2696  #1798 pc 25472
	addi	%x2, %x2, -88  #1798 pc 25476
	lw	%x1, 84(%x2) #1798 pc 25480
	flw	%f2, 56(%x2)  #1798 pc 25484
	fmul	%f0, %f2, %f0  #1798 pc 25488
	lw	%x5, 4(%x2)  #1800 pc 25492
	fsw	%f0, 80(%x2)  #1800 pc 25496
	sw	%x1, 92(%x2)  #1800 pc 25500
	addi	%x2, %x2, 96  #1800 pc 25504
	jal	%x1, o_isrot.2690  #1800 pc 25508
	addi	%x2, %x2, -96  #1800 pc 25512
	lw	%x1, 92(%x2) #1800 pc 25516
	beq	%x5, %x0, 12  #1800 pc 25520
	j	be_else.9452 #pc 25524
	nop #pc 25528
	lw	%x5, 0(%x2)  #1801 pc 25532
	flw	%f0, 64(%x2)  #1801 pc 25536
	add	%x24, %x0, %x5  #1801 pc 25540
	fsw	%f0, 0(%x24) #1801 pc 25544
	flw	%f0, 72(%x2)  #1802 pc 25548
	addi	%x24, %x0, 8  #pc 25552
	add	%x24, %x24, %x5  #1802 pc 25556
	fsw	%f0, 0(%x24) #1802 pc 25560
	flw	%f0, 80(%x2)  #1803 pc 25564
	addi	%x24, %x0, 16  #pc 25568
	add	%x24, %x24, %x5  #1803 pc 25572
	fsw	%f0, 0(%x24) #1803 pc 25576
	j	be_cont.9453 #pc 25580
	nop #pc 25584
be_else.9452: #pc 25584
	lw	%x5, 4(%x2)  #1805 pc 25588
	sw	%x1, 92(%x2)  #1805 pc 25592
	addi	%x2, %x2, 96  #1805 pc 25596
	jal	%x1, o_param_r3.2720  #1805 pc 25600
	addi	%x2, %x2, -96  #1805 pc 25604
	lw	%x1, 92(%x2) #1805 pc 25608
	flw	%f2, 40(%x2)  #1805 pc 25612
	fmul	%f0, %f2, %f0  #1805 pc 25616
	lw	%x5, 4(%x2)  #1805 pc 25620
	fsw	%f0, 88(%x2)  #1805 pc 25624
	sw	%x1, 100(%x2)  #1805 pc 25628
	addi	%x2, %x2, 104  #1805 pc 25632
	jal	%x1, o_param_r2.2718  #1805 pc 25636
	addi	%x2, %x2, -104  #1805 pc 25640
	lw	%x1, 100(%x2) #1805 pc 25644
	flw	%f2, 56(%x2)  #1805 pc 25648
	fmul	%f0, %f2, %f0  #1805 pc 25652
	flw	%f4, 88(%x2)  #1805 pc 25656
	fadd	%f0, %f4, %f0  #1805 pc 25660
	sw	%x1, 100(%x2)  #1805 pc 25664
	addi	%x2, %x2, 104  #1805 pc 25668
	jal	%x1, fhalf.2538  #1805 pc 25672
	addi	%x2, %x2, -104  #1805 pc 25676
	lw	%x1, 100(%x2) #1805 pc 25680
	flw	%f2, 64(%x2)  #1805 pc 25684
	fadd	%f0, %f2, %f0  #1805 pc 25688
	lw	%x5, 0(%x2)  #1805 pc 25692
	add	%x24, %x0, %x5  #1805 pc 25696
	fsw	%f0, 0(%x24) #1805 pc 25700
	lw	%x6, 4(%x2)  #1806 pc 25704
	mv	%x5, %x6 #pc 25708
	sw	%x1, 100(%x2)  #1806 pc 25712
	addi	%x2, %x2, 104  #1806 pc 25716
	jal	%x1, o_param_r3.2720  #1806 pc 25720
	addi	%x2, %x2, -104  #1806 pc 25724
	lw	%x1, 100(%x2) #1806 pc 25728
	flw	%f2, 24(%x2)  #1806 pc 25732
	fmul	%f0, %f2, %f0  #1806 pc 25736
	lw	%x5, 4(%x2)  #1806 pc 25740
	fsw	%f0, 96(%x2)  #1806 pc 25744
	sw	%x1, 108(%x2)  #1806 pc 25748
	addi	%x2, %x2, 112  #1806 pc 25752
	jal	%x1, o_param_r1.2716  #1806 pc 25756
	addi	%x2, %x2, -112  #1806 pc 25760
	lw	%x1, 108(%x2) #1806 pc 25764
	flw	%f2, 56(%x2)  #1806 pc 25768
	fmul	%f0, %f2, %f0  #1806 pc 25772
	flw	%f2, 96(%x2)  #1806 pc 25776
	fadd	%f0, %f2, %f0  #1806 pc 25780
	sw	%x1, 108(%x2)  #1806 pc 25784
	addi	%x2, %x2, 112  #1806 pc 25788
	jal	%x1, fhalf.2538  #1806 pc 25792
	addi	%x2, %x2, -112  #1806 pc 25796
	lw	%x1, 108(%x2) #1806 pc 25800
	flw	%f2, 72(%x2)  #1806 pc 25804
	fadd	%f0, %f2, %f0  #1806 pc 25808
	lw	%x5, 0(%x2)  #1806 pc 25812
	addi	%x24, %x0, 8  #pc 25816
	add	%x24, %x24, %x5  #1806 pc 25820
	fsw	%f0, 0(%x24) #1806 pc 25824
	lw	%x6, 4(%x2)  #1807 pc 25828
	mv	%x5, %x6 #pc 25832
	sw	%x1, 108(%x2)  #1807 pc 25836
	addi	%x2, %x2, 112  #1807 pc 25840
	jal	%x1, o_param_r2.2718  #1807 pc 25844
	addi	%x2, %x2, -112  #1807 pc 25848
	lw	%x1, 108(%x2) #1807 pc 25852
	flw	%f2, 24(%x2)  #1807 pc 25856
	fmul	%f0, %f2, %f0  #1807 pc 25860
	lw	%x5, 4(%x2)  #1807 pc 25864
	fsw	%f0, 104(%x2)  #1807 pc 25868
	sw	%x1, 116(%x2)  #1807 pc 25872
	addi	%x2, %x2, 120  #1807 pc 25876
	jal	%x1, o_param_r1.2716  #1807 pc 25880
	addi	%x2, %x2, -120  #1807 pc 25884
	lw	%x1, 116(%x2) #1807 pc 25888
	flw	%f2, 40(%x2)  #1807 pc 25892
	fmul	%f0, %f2, %f0  #1807 pc 25896
	flw	%f2, 104(%x2)  #1807 pc 25900
	fadd	%f0, %f2, %f0  #1807 pc 25904
	sw	%x1, 116(%x2)  #1807 pc 25908
	addi	%x2, %x2, 120  #1807 pc 25912
	jal	%x1, fhalf.2538  #1807 pc 25916
	addi	%x2, %x2, -120  #1807 pc 25920
	lw	%x1, 116(%x2) #1807 pc 25924
	flw	%f2, 80(%x2)  #1807 pc 25928
	fadd	%f0, %f2, %f0  #1807 pc 25932
	lw	%x5, 0(%x2)  #1807 pc 25936
	addi	%x24, %x0, 16  #pc 25940
	add	%x24, %x24, %x5  #1807 pc 25944
	fsw	%f0, 0(%x24) #1807 pc 25948
be_cont.9453: #pc 25948
	lw	%x6, 4(%x2)  #1809 pc 25952
	mv	%x5, %x6 #pc 25956
	sw	%x1, 116(%x2)  #1809 pc 25960
	addi	%x2, %x2, 120  #1809 pc 25964
	jal	%x1, o_isinvert.2688  #1809 pc 25968
	addi	%x2, %x2, -120  #1809 pc 25972
	lw	%x1, 116(%x2) #1809 pc 25976
	mv	%x6, %x5  #1809 pc 25980
	lw	%x5, 0(%x2)  #1809 pc 25984
	j	vecunit_sgn.2657  #1809 pc 25988
	nop #pc 25992
get_nvector.2948:  #pc 25992
	addi	%x24, %x0, 12  #pc 25996
	add	%x24, %x24, %x22  #1814 pc 26000
	lw	%x7, 0(%x24)  #1814 pc 26004
	addi	%x24, %x0, 8  #pc 26008
	add	%x24, %x24, %x22  #1814 pc 26012
	lw	%x9, 0(%x24)  #1814 pc 26016
	addi	%x24, %x0, 4  #pc 26020
	add	%x24, %x24, %x22  #1814 pc 26024
	lw	%x10, 0(%x24)  #1814 pc 26028
	sw	%x7, 0(%x2)  #1814 pc 26032
	sw	%x5, 4(%x2)  #1814 pc 26036
	sw	%x10, 8(%x2)  #1814 pc 26040
	sw	%x6, 12(%x2)  #1814 pc 26044
	sw	%x9, 16(%x2)  #1814 pc 26048
	sw	%x1, 20(%x2)  #1814 pc 26052
	addi	%x2, %x2, 24  #1814 pc 26056
	jal	%x1, o_form.2684  #1814 pc 26060
	addi	%x2, %x2, -24  #1814 pc 26064
	lw	%x1, 20(%x2) #1814 pc 26068
	addi	%x24, %x0, 1  #pc 26072
	beq	%x5, %x24, 12  #1815 pc 26076
	j	be_else.9454 #pc 26080
	nop #pc 26084
	lw	%x5, 12(%x2)  #1816 pc 26088
	lw	%x22, 16(%x2)  #1816 pc 26092
	lw	%x23, 0(%x22)  #1816 pc 26096
	jalr	%x0, %x23, 0  #1816 pc 26100
	nop #pc 26104
be_else.9454: #pc 26104
	addi	%x24, %x0, 2  #pc 26108
	beq	%x5, %x24, 12  #1817 pc 26112
	j	be_else.9455 #pc 26116
	nop #pc 26120
	lw	%x5, 4(%x2)  #1818 pc 26124
	lw	%x22, 8(%x2)  #1818 pc 26128
	lw	%x23, 0(%x22)  #1818 pc 26132
	jalr	%x0, %x23, 0  #1818 pc 26136
	nop #pc 26140
be_else.9455: #pc 26140
	lw	%x5, 4(%x2)  #1820 pc 26144
	lw	%x22, 0(%x2)  #1820 pc 26148
	lw	%x23, 0(%x22)  #1820 pc 26152
	jalr	%x0, %x23, 0  #1820 pc 26156
	nop #pc 26160
utexture.2951:  #pc 26160
	addi	%x24, %x0, 4  #pc 26164
	add	%x24, %x24, %x22  #1830 pc 26168
	lw	%x7, 0(%x24)  #1830 pc 26172
	sw	%x6, 0(%x2)  #1830 pc 26176
	sw	%x7, 4(%x2)  #1830 pc 26180
	sw	%x5, 8(%x2)  #1830 pc 26184
	sw	%x1, 12(%x2)  #1830 pc 26188
	addi	%x2, %x2, 16  #1830 pc 26192
	jal	%x1, o_texturetype.2682  #1830 pc 26196
	addi	%x2, %x2, -16  #1830 pc 26200
	lw	%x1, 12(%x2) #1830 pc 26204
	lw	%x6, 8(%x2)  #1832 pc 26208
	sw	%x5, 12(%x2)  #1832 pc 26212
	mv	%x5, %x6 #pc 26216
	sw	%x1, 20(%x2)  #1832 pc 26220
	addi	%x2, %x2, 24  #1832 pc 26224
	jal	%x1, o_color_red.2710  #1832 pc 26228
	addi	%x2, %x2, -24  #1832 pc 26232
	lw	%x1, 20(%x2) #1832 pc 26236
	lw	%x5, 4(%x2)  #1832 pc 26240
	add	%x24, %x0, %x5  #1832 pc 26244
	fsw	%f0, 0(%x24) #1832 pc 26248
	lw	%x6, 8(%x2)  #1833 pc 26252
	mv	%x5, %x6 #pc 26256
	sw	%x1, 20(%x2)  #1833 pc 26260
	addi	%x2, %x2, 24  #1833 pc 26264
	jal	%x1, o_color_green.2712  #1833 pc 26268
	addi	%x2, %x2, -24  #1833 pc 26272
	lw	%x1, 20(%x2) #1833 pc 26276
	lw	%x5, 4(%x2)  #1833 pc 26280
	addi	%x24, %x0, 8  #pc 26284
	add	%x24, %x24, %x5  #1833 pc 26288
	fsw	%f0, 0(%x24) #1833 pc 26292
	lw	%x6, 8(%x2)  #1834 pc 26296
	mv	%x5, %x6 #pc 26300
	sw	%x1, 20(%x2)  #1834 pc 26304
	addi	%x2, %x2, 24  #1834 pc 26308
	jal	%x1, o_color_blue.2714  #1834 pc 26312
	addi	%x2, %x2, -24  #1834 pc 26316
	lw	%x1, 20(%x2) #1834 pc 26320
	lw	%x5, 4(%x2)  #1834 pc 26324
	addi	%x24, %x0, 16  #pc 26328
	add	%x24, %x24, %x5  #1834 pc 26332
	fsw	%f0, 0(%x24) #1834 pc 26336
	lw	%x6, 12(%x2)  #1835 pc 26340
	addi	%x24, %x0, 1  #pc 26344
	beq	%x6, %x24, 12  #1835 pc 26348
	j	be_else.9456 #pc 26352
	nop #pc 26356
	lw	%x6, 0(%x2)  #1838 pc 26360
	add	%x24, %x0, %x6  #1838 pc 26364
	flw	%f0, 0(%x24)  #1838 pc 26368
	lw	%x7, 8(%x2)  #1838 pc 26372
	fsw	%f0, 16(%x2)  #1838 pc 26376
	mv	%x5, %x7 #pc 26380
	sw	%x1, 28(%x2)  #1838 pc 26384
	addi	%x2, %x2, 32  #1838 pc 26388
	jal	%x1, o_param_x.2700  #1838 pc 26392
	addi	%x2, %x2, -32  #1838 pc 26396
	lw	%x1, 28(%x2) #1838 pc 26400
	flw	%f2, 16(%x2)  #1838 pc 26404
	fsub	%f0, %f2, %f0  #1838 pc 26408
	mv	%f2, l.6830  #0 pc 26412
	fmul	%f2, %f0, %f2  #1840 pc 26416
	fsw	%f0, 24(%x2)  #1840 pc 26420
	mv	%f0, %f2 #pc 26424
	mv	%f1, %f3 #pc 26428
	sw	%x1, 36(%x2)  #1840 pc 26432
	addi	%x2, %x2, 40  #1840 pc 26436
	jal	%x1, floor.2549  #1840 pc 26440
	addi	%x2, %x2, -40  #1840 pc 26444
	lw	%x1, 36(%x2) #1840 pc 26448
	mv	%f2, l.6832  #0 pc 26452
	fmul	%f0, %f0, %f2  #1840 pc 26456
	flw	%f2, 24(%x2)  #1841 pc 26460
	fsub	%f0, %f2, %f0  #1841 pc 26464
	mv	%f2, l.6333  #0 pc 26468
	sw	%x1, 36(%x2)  #1841 pc 26472
	addi	%x2, %x2, 40  #1841 pc 26476
	jal	%x1, fless.2540  #1841 pc 26480
	addi	%x2, %x2, -40  #1841 pc 26484
	lw	%x1, 36(%x2) #1841 pc 26488
	lw	%x6, 0(%x2)  #1843 pc 26492
	addi	%x24, %x0, 16  #pc 26496
	add	%x24, %x24, %x6  #1843 pc 26500
	flw	%f0, 0(%x24)  #1843 pc 26504
	lw	%x6, 8(%x2)  #1843 pc 26508
	sw	%x5, 32(%x2)  #1843 pc 26512
	fsw	%f0, 40(%x2)  #1843 pc 26516
	mv	%x5, %x6 #pc 26520
	sw	%x1, 52(%x2)  #1843 pc 26524
	addi	%x2, %x2, 56  #1843 pc 26528
	jal	%x1, o_param_z.2704  #1843 pc 26532
	addi	%x2, %x2, -56  #1843 pc 26536
	lw	%x1, 52(%x2) #1843 pc 26540
	flw	%f2, 40(%x2)  #1843 pc 26544
	fsub	%f0, %f2, %f0  #1843 pc 26548
	mv	%f2, l.6830  #0 pc 26552
	fmul	%f2, %f0, %f2  #1845 pc 26556
	fsw	%f0, 48(%x2)  #1845 pc 26560
	mv	%f0, %f2 #pc 26564
	mv	%f1, %f3 #pc 26568
	sw	%x1, 60(%x2)  #1845 pc 26572
	addi	%x2, %x2, 64  #1845 pc 26576
	jal	%x1, floor.2549  #1845 pc 26580
	addi	%x2, %x2, -64  #1845 pc 26584
	lw	%x1, 60(%x2) #1845 pc 26588
	mv	%f2, l.6832  #0 pc 26592
	fmul	%f0, %f0, %f2  #1845 pc 26596
	flw	%f2, 48(%x2)  #1846 pc 26600
	fsub	%f0, %f2, %f0  #1846 pc 26604
	mv	%f2, l.6333  #0 pc 26608
	sw	%x1, 60(%x2)  #1846 pc 26612
	addi	%x2, %x2, 64  #1846 pc 26616
	jal	%x1, fless.2540  #1846 pc 26620
	addi	%x2, %x2, -64  #1846 pc 26624
	lw	%x1, 60(%x2) #1846 pc 26628
	lw	%x6, 32(%x2)  #1849 pc 26632
	beq	%x6, %x0, 12  #1849 pc 26636
	j	be_else.9458 #pc 26640
	nop #pc 26644
	beq	%x5, %x0, 12  #1851 pc 26648
	j	be_else.9460 #pc 26652
	nop #pc 26656
	mv	%f0, l.6807  #0 pc 26660
	j	be_cont.9461 #pc 26664
	nop #pc 26668
be_else.9460: #pc 26668
	mv	%f0, l.6293  #0 pc 26672
be_cont.9461: #pc 26672
	j	be_cont.9459 #pc 26676
	nop #pc 26680
be_else.9458: #pc 26680
	beq	%x5, %x0, 12  #1850 pc 26684
	j	be_else.9462 #pc 26688
	nop #pc 26692
	mv	%f0, l.6293  #0 pc 26696
	j	be_cont.9463 #pc 26700
	nop #pc 26704
be_else.9462: #pc 26704
	mv	%f0, l.6807  #0 pc 26708
be_cont.9463: #pc 26708
be_cont.9459: #pc 26708
	lw	%x5, 4(%x2)  #1848 pc 26712
	addi	%x24, %x0, 8  #pc 26716
	add	%x24, %x24, %x5  #1848 pc 26720
	fsw	%f0, 0(%x24) #1848 pc 26724
	ret #pc 26728
	nop #pc 26732
be_else.9456: #pc 26732
	addi	%x24, %x0, 2  #pc 26736
	beq	%x6, %x24, 12  #1853 pc 26740
	j	be_else.9465 #pc 26744
	nop #pc 26748
	lw	%x6, 0(%x2)  #1856 pc 26752
	addi	%x24, %x0, 8  #pc 26756
	add	%x24, %x24, %x6  #1856 pc 26760
	flw	%f0, 0(%x24)  #1856 pc 26764
	mv	%f2, l.6822  #0 pc 26768
	fmul	%f0, %f0, %f2  #1856 pc 26772
	sw	%x1, 60(%x2)  #1856 pc 26776
	addi	%x2, %x2, 64  #1856 pc 26780
	jal	%x1, sin.2543  #1856 pc 26784
	addi	%x2, %x2, -64  #1856 pc 26788
	lw	%x1, 60(%x2) #1856 pc 26792
	sw	%x1, 60(%x2)  #1856 pc 26796
	addi	%x2, %x2, 64  #1856 pc 26800
	jal	%x1, fsqr.2536  #1856 pc 26804
	addi	%x2, %x2, -64  #1856 pc 26808
	lw	%x1, 60(%x2) #1856 pc 26812
	mv	%f2, l.6807  #0 pc 26816
	fmul	%f2, %f2, %f0  #1857 pc 26820
	lw	%x5, 4(%x2)  #1857 pc 26824
	add	%x24, %x0, %x5  #1857 pc 26828
	fsw	%f2, 0(%x24) #1857 pc 26832
	mv	%f2, l.6807  #0 pc 26836
	mv	%f4, l.6305  #0 pc 26840
	fsub	%f0, %f4, %f0  #1858 pc 26844
	fmul	%f0, %f2, %f0  #1858 pc 26848
	addi	%x24, %x0, 8  #pc 26852
	add	%x24, %x24, %x5  #1858 pc 26856
	fsw	%f0, 0(%x24) #1858 pc 26860
	ret #pc 26864
	nop #pc 26868
be_else.9465: #pc 26868
	addi	%x24, %x0, 3  #pc 26872
	beq	%x6, %x24, 12  #1860 pc 26876
	j	be_else.9467 #pc 26880
	nop #pc 26884
	lw	%x6, 0(%x2)  #1863 pc 26888
	add	%x24, %x0, %x6  #1863 pc 26892
	flw	%f0, 0(%x24)  #1863 pc 26896
	lw	%x7, 8(%x2)  #1863 pc 26900
	fsw	%f0, 56(%x2)  #1863 pc 26904
	mv	%x5, %x7 #pc 26908
	sw	%x1, 68(%x2)  #1863 pc 26912
	addi	%x2, %x2, 72  #1863 pc 26916
	jal	%x1, o_param_x.2700  #1863 pc 26920
	addi	%x2, %x2, -72  #1863 pc 26924
	lw	%x1, 68(%x2) #1863 pc 26928
	flw	%f2, 56(%x2)  #1863 pc 26932
	fsub	%f0, %f2, %f0  #1863 pc 26936
	lw	%x5, 0(%x2)  #1864 pc 26940
	addi	%x24, %x0, 16  #pc 26944
	add	%x24, %x24, %x5  #1864 pc 26948
	flw	%f2, 0(%x24)  #1864 pc 26952
	lw	%x5, 8(%x2)  #1864 pc 26956
	fsw	%f0, 64(%x2)  #1864 pc 26960
	fsw	%f2, 72(%x2)  #1864 pc 26964
	sw	%x1, 84(%x2)  #1864 pc 26968
	addi	%x2, %x2, 88  #1864 pc 26972
	jal	%x1, o_param_z.2704  #1864 pc 26976
	addi	%x2, %x2, -88  #1864 pc 26980
	lw	%x1, 84(%x2) #1864 pc 26984
	flw	%f2, 72(%x2)  #1864 pc 26988
	fsub	%f0, %f2, %f0  #1864 pc 26992
	flw	%f2, 64(%x2)  #1865 pc 26996
	fsw	%f0, 80(%x2)  #1865 pc 27000
	mv	%f0, %f2 #pc 27004
	mv	%f1, %f3 #pc 27008
	sw	%x1, 92(%x2)  #1865 pc 27012
	addi	%x2, %x2, 96  #1865 pc 27016
	jal	%x1, fsqr.2536  #1865 pc 27020
	addi	%x2, %x2, -96  #1865 pc 27024
	lw	%x1, 92(%x2) #1865 pc 27028
	flw	%f2, 80(%x2)  #1865 pc 27032
	fsw	%f0, 88(%x2)  #1865 pc 27036
	mv	%f0, %f2 #pc 27040
	mv	%f1, %f3 #pc 27044
	sw	%x1, 100(%x2)  #1865 pc 27048
	addi	%x2, %x2, 104  #1865 pc 27052
	jal	%x1, fsqr.2536  #1865 pc 27056
	addi	%x2, %x2, -104  #1865 pc 27060
	lw	%x1, 100(%x2) #1865 pc 27064
	flw	%f2, 88(%x2)  #1865 pc 27068
	fadd	%f0, %f2, %f0  #1865 pc 27072
	mv	%f2, l.6333  #0 pc 27076
	fdiv	%f0, %f0, %f2  #1865 pc 27080
	fsqrt	%f0, %f0  #1865 pc 27084
	fsw	%f0, 96(%x2)  #1866 pc 27088
	sw	%x1, 108(%x2)  #1866 pc 27092
	addi	%x2, %x2, 112  #1866 pc 27096
	jal	%x1, floor.2549  #1866 pc 27100
	addi	%x2, %x2, -112  #1866 pc 27104
	lw	%x1, 108(%x2) #1866 pc 27108
	flw	%f2, 96(%x2)  #1866 pc 27112
	fsub	%f0, %f2, %f0  #1866 pc 27116
	mv	%f2, l.6795  #0 pc 27120
	fmul	%f0, %f0, %f2  #1866 pc 27124
	sw	%x1, 108(%x2)  #1867 pc 27128
	addi	%x2, %x2, 112  #1867 pc 27132
	jal	%x1, cos.2545  #1867 pc 27136
	addi	%x2, %x2, -112  #1867 pc 27140
	lw	%x1, 108(%x2) #1867 pc 27144
	sw	%x1, 108(%x2)  #1867 pc 27148
	addi	%x2, %x2, 112  #1867 pc 27152
	jal	%x1, fsqr.2536  #1867 pc 27156
	addi	%x2, %x2, -112  #1867 pc 27160
	lw	%x1, 108(%x2) #1867 pc 27164
	mv	%f2, l.6807  #0 pc 27168
	fmul	%f2, %f0, %f2  #1868 pc 27172
	lw	%x5, 4(%x2)  #1868 pc 27176
	addi	%x24, %x0, 8  #pc 27180
	add	%x24, %x24, %x5  #1868 pc 27184
	fsw	%f2, 0(%x24) #1868 pc 27188
	mv	%f2, l.6305  #0 pc 27192
	fsub	%f0, %f2, %f0  #1869 pc 27196
	mv	%f2, l.6807  #0 pc 27200
	fmul	%f0, %f0, %f2  #1869 pc 27204
	addi	%x24, %x0, 16  #pc 27208
	add	%x24, %x24, %x5  #1869 pc 27212
	fsw	%f0, 0(%x24) #1869 pc 27216
	ret #pc 27220
	nop #pc 27224
be_else.9467: #pc 27224
	addi	%x24, %x0, 4  #pc 27228
	beq	%x6, %x24, 12  #1871 pc 27232
	j	be_else.9469 #pc 27236
	nop #pc 27240
	lw	%x6, 0(%x2)  #1873 pc 27244
	add	%x24, %x0, %x6  #1873 pc 27248
	flw	%f0, 0(%x24)  #1873 pc 27252
	lw	%x7, 8(%x2)  #1873 pc 27256
	fsw	%f0, 104(%x2)  #1873 pc 27260
	mv	%x5, %x7 #pc 27264
	sw	%x1, 116(%x2)  #1873 pc 27268
	addi	%x2, %x2, 120  #1873 pc 27272
	jal	%x1, o_param_x.2700  #1873 pc 27276
	addi	%x2, %x2, -120  #1873 pc 27280
	lw	%x1, 116(%x2) #1873 pc 27284
	flw	%f2, 104(%x2)  #1873 pc 27288
	fsub	%f0, %f2, %f0  #1873 pc 27292
	lw	%x5, 8(%x2)  #1873 pc 27296
	fsw	%f0, 112(%x2)  #1873 pc 27300
	sw	%x1, 124(%x2)  #1873 pc 27304
	addi	%x2, %x2, 128  #1873 pc 27308
	jal	%x1, o_param_a.2692  #1873 pc 27312
	addi	%x2, %x2, -128  #1873 pc 27316
	lw	%x1, 124(%x2) #1873 pc 27320
	fsqrt	%f0, %f0  #1873 pc 27324
	flw	%f2, 112(%x2)  #1873 pc 27328
	fmul	%f0, %f2, %f0  #1873 pc 27332
	lw	%x5, 0(%x2)  #1874 pc 27336
	addi	%x24, %x0, 16  #pc 27340
	add	%x24, %x24, %x5  #1874 pc 27344
	flw	%f2, 0(%x24)  #1874 pc 27348
	lw	%x6, 8(%x2)  #1874 pc 27352
	fsw	%f0, 120(%x2)  #1874 pc 27356
	fsw	%f2, 128(%x2)  #1874 pc 27360
	mv	%x5, %x6 #pc 27364
	sw	%x1, 140(%x2)  #1874 pc 27368
	addi	%x2, %x2, 144  #1874 pc 27372
	jal	%x1, o_param_z.2704  #1874 pc 27376
	addi	%x2, %x2, -144  #1874 pc 27380
	lw	%x1, 140(%x2) #1874 pc 27384
	flw	%f2, 128(%x2)  #1874 pc 27388
	fsub	%f0, %f2, %f0  #1874 pc 27392
	lw	%x5, 8(%x2)  #1874 pc 27396
	fsw	%f0, 136(%x2)  #1874 pc 27400
	sw	%x1, 148(%x2)  #1874 pc 27404
	addi	%x2, %x2, 152  #1874 pc 27408
	jal	%x1, o_param_c.2696  #1874 pc 27412
	addi	%x2, %x2, -152  #1874 pc 27416
	lw	%x1, 148(%x2) #1874 pc 27420
	fsqrt	%f0, %f0  #1874 pc 27424
	flw	%f2, 136(%x2)  #1874 pc 27428
	fmul	%f0, %f2, %f0  #1874 pc 27432
	flw	%f2, 120(%x2)  #1875 pc 27436
	fsw	%f0, 144(%x2)  #1875 pc 27440
	mv	%f0, %f2 #pc 27444
	mv	%f1, %f3 #pc 27448
	sw	%x1, 156(%x2)  #1875 pc 27452
	addi	%x2, %x2, 160  #1875 pc 27456
	jal	%x1, fsqr.2536  #1875 pc 27460
	addi	%x2, %x2, -160  #1875 pc 27464
	lw	%x1, 156(%x2) #1875 pc 27468
	flw	%f2, 144(%x2)  #1875 pc 27472
	fsw	%f0, 152(%x2)  #1875 pc 27476
	mv	%f0, %f2 #pc 27480
	mv	%f1, %f3 #pc 27484
	sw	%x1, 164(%x2)  #1875 pc 27488
	addi	%x2, %x2, 168  #1875 pc 27492
	jal	%x1, fsqr.2536  #1875 pc 27496
	addi	%x2, %x2, -168  #1875 pc 27500
	lw	%x1, 164(%x2) #1875 pc 27504
	flw	%f2, 152(%x2)  #1875 pc 27508
	fadd	%f0, %f2, %f0  #1875 pc 27512
	flw	%f2, 120(%x2)  #1877 pc 27516
	fabs	%f4, %f2  #1877 pc 27520
	mv	%f6, l.6789  #0 pc 27524
	fsw	%f0, 160(%x2)  #1877 pc 27528
	mv	%f2, %f6 #pc 27532
	mv	%f3, %f7 #pc 27536
	mv	%f0, %f4 #pc 27540
	mv	%f1, %f5 #pc 27544
	sw	%x1, 172(%x2)  #1877 pc 27548
	addi	%x2, %x2, 176  #1877 pc 27552
	jal	%x1, fless.2540  #1877 pc 27556
	addi	%x2, %x2, -176  #1877 pc 27560
	lw	%x1, 172(%x2) #1877 pc 27564
	beq	%x5, %x0, 12  #1877 pc 27568
	j	be_else.9470 #pc 27572
	nop #pc 27576
	flw	%f0, 120(%x2)  #1880 pc 27580
	flw	%f2, 144(%x2)  #1880 pc 27584
	fdiv	%f0, %f2, %f0  #1880 pc 27588
	fabs	%f0, %f0  #1880 pc 27592
	sw	%x1, 172(%x2)  #1882 pc 27596
	addi	%x2, %x2, 176  #1882 pc 27600
	jal	%x1, atan.2547  #1882 pc 27604
	addi	%x2, %x2, -176  #1882 pc 27608
	lw	%x1, 172(%x2) #1882 pc 27612
	mv	%f2, l.6793  #0 pc 27616
	fmul	%f0, %f0, %f2  #1882 pc 27620
	mv	%f2, l.6795  #0 pc 27624
	fdiv	%f0, %f0, %f2  #1882 pc 27628
	j	be_cont.9471 #pc 27632
	nop #pc 27636
be_else.9470: #pc 27636
	mv	%f0, l.6791  #0 pc 27640
be_cont.9471: #pc 27640
	fsw	%f0, 168(%x2)  #1884 pc 27644
	sw	%x1, 180(%x2)  #1884 pc 27648
	addi	%x2, %x2, 184  #1884 pc 27652
	jal	%x1, floor.2549  #1884 pc 27656
	addi	%x2, %x2, -184  #1884 pc 27660
	lw	%x1, 180(%x2) #1884 pc 27664
	flw	%f2, 168(%x2)  #1884 pc 27668
	fsub	%f0, %f2, %f0  #1884 pc 27672
	lw	%x5, 0(%x2)  #1886 pc 27676
	addi	%x24, %x0, 8  #pc 27680
	add	%x24, %x24, %x5  #1886 pc 27684
	flw	%f2, 0(%x24)  #1886 pc 27688
	lw	%x5, 8(%x2)  #1886 pc 27692
	fsw	%f0, 176(%x2)  #1886 pc 27696
	fsw	%f2, 184(%x2)  #1886 pc 27700
	sw	%x1, 196(%x2)  #1886 pc 27704
	addi	%x2, %x2, 200  #1886 pc 27708
	jal	%x1, o_param_y.2702  #1886 pc 27712
	addi	%x2, %x2, -200  #1886 pc 27716
	lw	%x1, 196(%x2) #1886 pc 27720
	flw	%f2, 184(%x2)  #1886 pc 27724
	fsub	%f0, %f2, %f0  #1886 pc 27728
	lw	%x5, 8(%x2)  #1886 pc 27732
	fsw	%f0, 192(%x2)  #1886 pc 27736
	sw	%x1, 204(%x2)  #1886 pc 27740
	addi	%x2, %x2, 208  #1886 pc 27744
	jal	%x1, o_param_b.2694  #1886 pc 27748
	addi	%x2, %x2, -208  #1886 pc 27752
	lw	%x1, 204(%x2) #1886 pc 27756
	fsqrt	%f0, %f0  #1886 pc 27760
	flw	%f2, 192(%x2)  #1886 pc 27764
	fmul	%f0, %f2, %f0  #1886 pc 27768
	flw	%f2, 160(%x2)  #1888 pc 27772
	fabs	%f4, %f2  #1888 pc 27776
	mv	%f6, l.6789  #0 pc 27780
	fsw	%f0, 200(%x2)  #1888 pc 27784
	mv	%f2, %f6 #pc 27788
	mv	%f3, %f7 #pc 27792
	mv	%f0, %f4 #pc 27796
	mv	%f1, %f5 #pc 27800
	sw	%x1, 212(%x2)  #1888 pc 27804
	addi	%x2, %x2, 216  #1888 pc 27808
	jal	%x1, fless.2540  #1888 pc 27812
	addi	%x2, %x2, -216  #1888 pc 27816
	lw	%x1, 212(%x2) #1888 pc 27820
	beq	%x5, %x0, 12  #1888 pc 27824
	j	be_else.9472 #pc 27828
	nop #pc 27832
	flw	%f0, 160(%x2)  #1891 pc 27836
	flw	%f2, 200(%x2)  #1891 pc 27840
	fdiv	%f0, %f2, %f0  #1891 pc 27844
	fabs	%f0, %f0  #1891 pc 27848
	sw	%x1, 212(%x2)  #1892 pc 27852
	addi	%x2, %x2, 216  #1892 pc 27856
	jal	%x1, atan.2547  #1892 pc 27860
	addi	%x2, %x2, -216  #1892 pc 27864
	lw	%x1, 212(%x2) #1892 pc 27868
	mv	%f2, l.6793  #0 pc 27872
	fmul	%f0, %f0, %f2  #1892 pc 27876
	mv	%f2, l.6795  #0 pc 27880
	fdiv	%f0, %f0, %f2  #1892 pc 27884
	j	be_cont.9473 #pc 27888
	nop #pc 27892
be_else.9472: #pc 27892
	mv	%f0, l.6791  #0 pc 27896
be_cont.9473: #pc 27896
	fsw	%f0, 208(%x2)  #1894 pc 27900
	sw	%x1, 220(%x2)  #1894 pc 27904
	addi	%x2, %x2, 224  #1894 pc 27908
	jal	%x1, floor.2549  #1894 pc 27912
	addi	%x2, %x2, -224  #1894 pc 27916
	lw	%x1, 220(%x2) #1894 pc 27920
	flw	%f2, 208(%x2)  #1894 pc 27924
	fsub	%f0, %f2, %f0  #1894 pc 27928
	mv	%f2, l.6802  #0 pc 27932
	mv	%f4, l.6297  #0 pc 27936
	flw	%f6, 176(%x2)  #1895 pc 27940
	fsub	%f4, %f4, %f6  #1895 pc 27944
	fsw	%f0, 216(%x2)  #1895 pc 27948
	fsw	%f2, 224(%x2)  #1895 pc 27952
	mv	%f0, %f4 #pc 27956
	mv	%f1, %f5 #pc 27960
	sw	%x1, 236(%x2)  #1895 pc 27964
	addi	%x2, %x2, 240  #1895 pc 27968
	jal	%x1, fsqr.2536  #1895 pc 27972
	addi	%x2, %x2, -240  #1895 pc 27976
	lw	%x1, 236(%x2) #1895 pc 27980
	flw	%f2, 224(%x2)  #1895 pc 27984
	fsub	%f0, %f2, %f0  #1895 pc 27988
	mv	%f2, l.6297  #0 pc 27992
	flw	%f4, 216(%x2)  #1895 pc 27996
	fsub	%f2, %f2, %f4  #1895 pc 28000
	fsw	%f0, 232(%x2)  #1895 pc 28004
	mv	%f0, %f2 #pc 28008
	mv	%f1, %f3 #pc 28012
	sw	%x1, 244(%x2)  #1895 pc 28016
	addi	%x2, %x2, 248  #1895 pc 28020
	jal	%x1, fsqr.2536  #1895 pc 28024
	addi	%x2, %x2, -248  #1895 pc 28028
	lw	%x1, 244(%x2) #1895 pc 28032
	flw	%f2, 232(%x2)  #1895 pc 28036
	fsub	%f0, %f2, %f0  #1895 pc 28040
	fsw	%f0, 240(%x2)  #1896 pc 28044
	sw	%x1, 252(%x2)  #1896 pc 28048
	addi	%x2, %x2, 256  #1896 pc 28052
	jal	%x1, fisneg.2532  #1896 pc 28056
	addi	%x2, %x2, -256  #1896 pc 28060
	lw	%x1, 252(%x2) #1896 pc 28064
	beq	%x5, %x0, 12  #1896 pc 28068
	j	be_else.9474 #pc 28072
	nop #pc 28076
	flw	%f0, 240(%x2)  #1896 pc 28080
	j	be_cont.9475 #pc 28084
	nop #pc 28088
be_else.9474: #pc 28088
	mv	%f0, l.6293  #0 pc 28092
be_cont.9475: #pc 28092
	mv	%f2, l.6807  #0 pc 28096
	fmul	%f0, %f2, %f0  #1897 pc 28100
	mv	%f2, l.6809  #0 pc 28104
	fdiv	%f0, %f0, %f2  #1897 pc 28108
	lw	%x5, 4(%x2)  #1897 pc 28112
	addi	%x24, %x0, 16  #pc 28116
	add	%x24, %x24, %x5  #1897 pc 28120
	fsw	%f0, 0(%x24) #1897 pc 28124
	ret #pc 28128
	nop #pc 28132
be_else.9469: #pc 28132
	ret #pc 28136
	nop #pc 28140
add_light.2954:  #pc 28140
	addi	%x24, %x0, 8  #pc 28144
	add	%x24, %x24, %x22  #0 pc 28148
	lw	%x5, 0(%x24)  #0 pc 28152
	addi	%x24, %x0, 4  #pc 28156
	add	%x24, %x24, %x22  #0 pc 28160
	lw	%x6, 0(%x24)  #0 pc 28164
	fsw	%f4, 0(%x2)  #1910 pc 28168
	fsw	%f2, 8(%x2)  #1910 pc 28172
	fsw	%f0, 16(%x2)  #1910 pc 28176
	sw	%x5, 24(%x2)  #1910 pc 28180
	sw	%x6, 28(%x2)  #1910 pc 28184
	sw	%x1, 36(%x2)  #1910 pc 28188
	addi	%x2, %x2, 40  #1910 pc 28192
	jal	%x1, fispos.2530  #1910 pc 28196
	addi	%x2, %x2, -40  #1910 pc 28200
	lw	%x1, 36(%x2) #1910 pc 28204
	beq	%x5, %x0, 12  #1910 pc 28208
	j	be_else.9478 #pc 28212
	nop #pc 28216
	j	be_cont.9479 #pc 28220
	nop #pc 28224
be_else.9478: #pc 28224
	flw	%f0, 16(%x2)  #1911 pc 28228
	lw	%x5, 28(%x2)  #1911 pc 28232
	lw	%x6, 24(%x2)  #1911 pc 28236
	sw	%x1, 36(%x2)  #1911 pc 28240
	addi	%x2, %x2, 40  #1911 pc 28244
	jal	%x1, vecaccum.2668  #1911 pc 28248
	addi	%x2, %x2, -40  #1911 pc 28252
	lw	%x1, 36(%x2) #1911 pc 28256
be_cont.9479: #pc 28256
	flw	%f0, 8(%x2)  #1915 pc 28260
	sw	%x1, 36(%x2)  #1915 pc 28264
	addi	%x2, %x2, 40  #1915 pc 28268
	jal	%x1, fispos.2530  #1915 pc 28272
	addi	%x2, %x2, -40  #1915 pc 28276
	lw	%x1, 36(%x2) #1915 pc 28280
	beq	%x5, %x0, 12  #1915 pc 28284
	j	be_else.9480 #pc 28288
	nop #pc 28292
	ret #pc 28296
	nop #pc 28300
be_else.9480: #pc 28300
	flw	%f0, 8(%x2)  #1916 pc 28304
	sw	%x1, 36(%x2)  #1916 pc 28308
	addi	%x2, %x2, 40  #1916 pc 28312
	jal	%x1, fsqr.2536  #1916 pc 28316
	addi	%x2, %x2, -40  #1916 pc 28320
	lw	%x1, 36(%x2) #1916 pc 28324
	sw	%x1, 36(%x2)  #1916 pc 28328
	addi	%x2, %x2, 40  #1916 pc 28332
	jal	%x1, fsqr.2536  #1916 pc 28336
	addi	%x2, %x2, -40  #1916 pc 28340
	lw	%x1, 36(%x2) #1916 pc 28344
	flw	%f2, 0(%x2)  #1916 pc 28348
	fmul	%f0, %f0, %f2  #1916 pc 28352
	lw	%x5, 28(%x2)  #1917 pc 28356
	add	%x24, %x0, %x5  #1917 pc 28360
	flw	%f2, 0(%x24)  #1917 pc 28364
	fadd	%f2, %f2, %f0  #1917 pc 28368
	add	%x24, %x0, %x5  #1917 pc 28372
	fsw	%f2, 0(%x24) #1917 pc 28376
	addi	%x24, %x0, 8  #pc 28380
	add	%x24, %x24, %x5  #1918 pc 28384
	flw	%f2, 0(%x24)  #1918 pc 28388
	fadd	%f2, %f2, %f0  #1918 pc 28392
	addi	%x24, %x0, 8  #pc 28396
	add	%x24, %x24, %x5  #1918 pc 28400
	fsw	%f2, 0(%x24) #1918 pc 28404
	addi	%x24, %x0, 16  #pc 28408
	add	%x24, %x24, %x5  #1919 pc 28412
	flw	%f2, 0(%x24)  #1919 pc 28416
	fadd	%f0, %f2, %f0  #1919 pc 28420
	addi	%x24, %x0, 16  #pc 28424
	add	%x24, %x24, %x5  #1919 pc 28428
	fsw	%f0, 0(%x24) #1919 pc 28432
	ret #pc 28436
	nop #pc 28440
trace_reflections.2958:  #pc 28440
	addi	%x24, %x0, 32  #pc 28444
	add	%x24, %x24, %x22  #0 pc 28448
	lw	%x7, 0(%x24)  #0 pc 28452
	addi	%x24, %x0, 28  #pc 28456
	add	%x24, %x24, %x22  #0 pc 28460
	lw	%x9, 0(%x24)  #0 pc 28464
	addi	%x24, %x0, 24  #pc 28468
	add	%x24, %x24, %x22  #0 pc 28472
	lw	%x10, 0(%x24)  #0 pc 28476
	addi	%x24, %x0, 20  #pc 28480
	add	%x24, %x24, %x22  #0 pc 28484
	lw	%x11, 0(%x24)  #0 pc 28488
	addi	%x24, %x0, 16  #pc 28492
	add	%x24, %x24, %x22  #0 pc 28496
	lw	%x12, 0(%x24)  #0 pc 28500
	addi	%x24, %x0, 12  #pc 28504
	add	%x24, %x24, %x22  #0 pc 28508
	lw	%x13, 0(%x24)  #0 pc 28512
	addi	%x24, %x0, 8  #pc 28516
	add	%x24, %x24, %x22  #0 pc 28520
	lw	%x14, 0(%x24)  #0 pc 28524
	addi	%x24, %x0, 4  #pc 28528
	add	%x24, %x24, %x22  #0 pc 28532
	lw	%x15, 0(%x24)  #0 pc 28536
	bge	%x5, %x0, 12  #1926 pc 28540
	j	bge_else.9483 #pc 28544
	nop #pc 28548
	slli	%x16, %x5, 2  #1927 pc 28552
	add	%x24, %x16, %x9  #1927 pc 28556
	lw	%x9, 0(%x24)  #1927 pc 28560
	sw	%x22, 0(%x2)  #1928 pc 28564
	sw	%x5, 4(%x2)  #1928 pc 28568
	fsw	%f2, 8(%x2)  #1928 pc 28572
	sw	%x15, 16(%x2)  #1928 pc 28576
	sw	%x6, 20(%x2)  #1928 pc 28580
	fsw	%f0, 24(%x2)  #1928 pc 28584
	sw	%x11, 32(%x2)  #1928 pc 28588
	sw	%x7, 36(%x2)  #1928 pc 28592
	sw	%x10, 40(%x2)  #1928 pc 28596
	sw	%x9, 44(%x2)  #1928 pc 28600
	sw	%x13, 48(%x2)  #1928 pc 28604
	sw	%x14, 52(%x2)  #1928 pc 28608
	sw	%x12, 56(%x2)  #1928 pc 28612
	mv	%x5, %x9 #pc 28616
	sw	%x1, 60(%x2)  #1928 pc 28620
	addi	%x2, %x2, 64  #1928 pc 28624
	jal	%x1, r_dvec.2749  #1928 pc 28628
	addi	%x2, %x2, -64  #1928 pc 28632
	lw	%x1, 60(%x2) #1928 pc 28636
	lw	%x22, 56(%x2)  #1931 pc 28640
	sw	%x5, 60(%x2)  #1931 pc 28644
	sw	%x1, 68(%x2)  #1931 pc 28648
	lw	%x23, 0(%x22)  #1931 pc 28652
	addi	%x2, %x2, 72  #1931 pc 28656
	jalr	%x1, %x23, 0  #1931 pc 28660
	addi	%x2, %x2, -72  #1931 pc 28664
	lw	%x1, 68(%x2)  #1931 pc 28668
	beq	%x5, %x0, 12  #1931 pc 28672
	j	be_else.9484 #pc 28676
	nop #pc 28680
	j	be_cont.9485 #pc 28684
	nop #pc 28688
be_else.9484: #pc 28688
	lw	%x5, 52(%x2)  #1932 pc 28692
	add	%x24, %x0, %x5  #1932 pc 28696
	lw	%x5, 0(%x24)  #1932 pc 28700
	addi	%x6, %x0, 4  #0 pc 28704
	sw	%x1, 68(%x2)  #1932 pc 28708
	addi	%x2, %x2, 72  #1932 pc 28712
	jal	%x1, mul.2562  #1932 pc 28716
	addi	%x2, %x2, -72  #1932 pc 28720
	lw	%x1, 68(%x2) #1932 pc 28724
	lw	%x6, 48(%x2)  #1932 pc 28728
	add	%x24, %x0, %x6  #1932 pc 28732
	lw	%x6, 0(%x24)  #1932 pc 28736
	add	%x5, %x5, %x6  #1932 pc 28740
	lw	%x6, 44(%x2)  #1933 pc 28744
	sw	%x5, 64(%x2)  #1933 pc 28748
	mv	%x5, %x6 #pc 28752
	sw	%x1, 68(%x2)  #1933 pc 28756
	addi	%x2, %x2, 72  #1933 pc 28760
	jal	%x1, r_surface_id.2747  #1933 pc 28764
	addi	%x2, %x2, -72  #1933 pc 28768
	lw	%x1, 68(%x2) #1933 pc 28772
	lw	%x6, 64(%x2)  #1933 pc 28776
	beq	%x6, %x5, 12  #1933 pc 28780
	j	be_else.9486 #pc 28784
	nop #pc 28788
	addi	%x5, %x0, 0  #0 pc 28792
	lw	%x6, 40(%x2)  #1935 pc 28796
	add	%x24, %x0, %x6  #1935 pc 28800
	lw	%x6, 0(%x24)  #1935 pc 28804
	lw	%x22, 36(%x2)  #1935 pc 28808
	sw	%x1, 68(%x2)  #1935 pc 28812
	lw	%x23, 0(%x22)  #1935 pc 28816
	addi	%x2, %x2, 72  #1935 pc 28820
	jalr	%x1, %x23, 0  #1935 pc 28824
	addi	%x2, %x2, -72  #1935 pc 28828
	lw	%x1, 68(%x2)  #1935 pc 28832
	beq	%x5, %x0, 12  #1935 pc 28836
	j	be_else.9488 #pc 28840
	nop #pc 28844
	lw	%x5, 60(%x2)  #1937 pc 28848
	sw	%x1, 68(%x2)  #1937 pc 28852
	addi	%x2, %x2, 72  #1937 pc 28856
	jal	%x1, d_vec.2743  #1937 pc 28860
	addi	%x2, %x2, -72  #1937 pc 28864
	lw	%x1, 68(%x2) #1937 pc 28868
	mv	%x6, %x5  #1937 pc 28872
	lw	%x5, 32(%x2)  #1937 pc 28876
	sw	%x1, 68(%x2)  #1937 pc 28880
	addi	%x2, %x2, 72  #1937 pc 28884
	jal	%x1, veciprod.2660  #1937 pc 28888
	addi	%x2, %x2, -72  #1937 pc 28892
	lw	%x1, 68(%x2) #1937 pc 28896
	lw	%x5, 44(%x2)  #1938 pc 28900
	fsw	%f0, 72(%x2)  #1938 pc 28904
	sw	%x1, 84(%x2)  #1938 pc 28908
	addi	%x2, %x2, 88  #1938 pc 28912
	jal	%x1, r_bright.2751  #1938 pc 28916
	addi	%x2, %x2, -88  #1938 pc 28920
	lw	%x1, 84(%x2) #1938 pc 28924
	flw	%f2, 24(%x2)  #1939 pc 28928
	fmul	%f4, %f0, %f2  #1939 pc 28932
	flw	%f6, 72(%x2)  #1939 pc 28936
	fmul	%f4, %f4, %f6  #1939 pc 28940
	lw	%x5, 60(%x2)  #1940 pc 28944
	fsw	%f4, 80(%x2)  #1940 pc 28948
	fsw	%f0, 88(%x2)  #1940 pc 28952
	sw	%x1, 100(%x2)  #1940 pc 28956
	addi	%x2, %x2, 104  #1940 pc 28960
	jal	%x1, d_vec.2743  #1940 pc 28964
	addi	%x2, %x2, -104  #1940 pc 28968
	lw	%x1, 100(%x2) #1940 pc 28972
	mv	%x6, %x5  #1940 pc 28976
	lw	%x5, 20(%x2)  #1940 pc 28980
	sw	%x1, 100(%x2)  #1940 pc 28984
	addi	%x2, %x2, 104  #1940 pc 28988
	jal	%x1, veciprod.2660  #1940 pc 28992
	addi	%x2, %x2, -104  #1940 pc 28996
	lw	%x1, 100(%x2) #1940 pc 29000
	flw	%f2, 88(%x2)  #1940 pc 29004
	fmul	%f2, %f2, %f0  #1940 pc 29008
	flw	%f0, 80(%x2)  #1941 pc 29012
	flw	%f4, 8(%x2)  #1941 pc 29016
	lw	%x22, 16(%x2)  #1941 pc 29020
	sw	%x1, 100(%x2)  #1941 pc 29024
	lw	%x23, 0(%x22)  #1941 pc 29028
	addi	%x2, %x2, 104  #1941 pc 29032
	jalr	%x1, %x23, 0  #1941 pc 29036
	addi	%x2, %x2, -104  #1941 pc 29040
	lw	%x1, 100(%x2)  #1941 pc 29044
	j	be_cont.9489 #pc 29048
	nop #pc 29052
be_else.9488: #pc 29052
be_cont.9489: #pc 29052
	j	be_cont.9487 #pc 29056
	nop #pc 29060
be_else.9486: #pc 29060
be_cont.9487: #pc 29060
be_cont.9485: #pc 29060
	lw	%x5, 4(%x2)  #1945 pc 29064
	addi	%x5, %x5, -1  #1945 pc 29068
	flw	%f0, 24(%x2)  #1945 pc 29072
	flw	%f2, 8(%x2)  #1945 pc 29076
	lw	%x6, 20(%x2)  #1945 pc 29080
	lw	%x22, 0(%x2)  #1945 pc 29084
	lw	%x23, 0(%x22)  #1945 pc 29088
	jalr	%x0, %x23, 0  #1945 pc 29092
	nop #pc 29096
bge_else.9483: #pc 29096
	ret #pc 29100
	nop #pc 29104
trace_ray.2963:  #pc 29104
	addi	%x24, %x0, 80  #pc 29108
	add	%x24, %x24, %x22  #0 pc 29112
	lw	%x9, 0(%x24)  #0 pc 29116
	addi	%x24, %x0, 76  #pc 29120
	add	%x24, %x24, %x22  #0 pc 29124
	lw	%x10, 0(%x24)  #0 pc 29128
	addi	%x24, %x0, 72  #pc 29132
	add	%x24, %x24, %x22  #0 pc 29136
	lw	%x11, 0(%x24)  #0 pc 29140
	addi	%x24, %x0, 68  #pc 29144
	add	%x24, %x24, %x22  #0 pc 29148
	lw	%x12, 0(%x24)  #0 pc 29152
	addi	%x24, %x0, 64  #pc 29156
	add	%x24, %x24, %x22  #0 pc 29160
	lw	%x13, 0(%x24)  #0 pc 29164
	addi	%x24, %x0, 60  #pc 29168
	add	%x24, %x24, %x22  #0 pc 29172
	lw	%x14, 0(%x24)  #0 pc 29176
	addi	%x24, %x0, 56  #pc 29180
	add	%x24, %x24, %x22  #0 pc 29184
	lw	%x15, 0(%x24)  #0 pc 29188
	addi	%x24, %x0, 52  #pc 29192
	add	%x24, %x24, %x22  #0 pc 29196
	lw	%x16, 0(%x24)  #0 pc 29200
	addi	%x24, %x0, 48  #pc 29204
	add	%x24, %x24, %x22  #0 pc 29208
	lw	%x17, 0(%x24)  #0 pc 29212
	addi	%x24, %x0, 44  #pc 29216
	add	%x24, %x24, %x22  #0 pc 29220
	lw	%x18, 0(%x24)  #0 pc 29224
	addi	%x24, %x0, 40  #pc 29228
	add	%x24, %x24, %x22  #0 pc 29232
	lw	%x19, 0(%x24)  #0 pc 29236
	addi	%x24, %x0, 36  #pc 29240
	add	%x24, %x24, %x22  #0 pc 29244
	lw	%x20, 0(%x24)  #0 pc 29248
	addi	%x24, %x0, 32  #pc 29252
	add	%x24, %x24, %x22  #0 pc 29256
	lw	%x21, 0(%x24)  #0 pc 29260
	addi	%x24, %x0, 28  #pc 29264
	add	%x24, %x24, %x22  #0 pc 29268
	lw	%x23, 0(%x24)  #0 pc 29272
	sw	%x11, 0(%x2)  #0 pc 29276
	addi	%x24, %x0, 24  #pc 29280
	add	%x24, %x24, %x22  #0 pc 29284
	lw	%x11, 0(%x24)  #0 pc 29288
	sw	%x10, 4(%x2)  #0 pc 29292
	addi	%x24, %x0, 20  #pc 29296
	add	%x24, %x24, %x22  #0 pc 29300
	lw	%x10, 0(%x24)  #0 pc 29304
	sw	%x20, 8(%x2)  #0 pc 29308
	addi	%x24, %x0, 16  #pc 29312
	add	%x24, %x24, %x22  #0 pc 29316
	lw	%x20, 0(%x24)  #0 pc 29320
	sw	%x15, 12(%x2)  #0 pc 29324
	addi	%x24, %x0, 12  #pc 29328
	add	%x24, %x24, %x22  #0 pc 29332
	lw	%x15, 0(%x24)  #0 pc 29336
	sw	%x14, 16(%x2)  #0 pc 29340
	addi	%x24, %x0, 8  #pc 29344
	add	%x24, %x24, %x22  #0 pc 29348
	lw	%x14, 0(%x24)  #0 pc 29352
	sw	%x22, 20(%x2)  #0 pc 29356
	addi	%x24, %x0, 4  #pc 29360
	add	%x24, %x24, %x22  #0 pc 29364
	lw	%x22, 0(%x24)  #0 pc 29368
	addi	%x24, %x0, 4  #pc 29372
	bge	%x24, %x5, 12  #1954 pc 29376
	j	ble_else.9492 #pc 29380
	nop #pc 29384
	fsw	%f2, 24(%x2)  #1955 pc 29388
	sw	%x22, 32(%x2)  #1955 pc 29392
	sw	%x17, 36(%x2)  #1955 pc 29396
	sw	%x19, 40(%x2)  #1955 pc 29400
	sw	%x12, 44(%x2)  #1955 pc 29404
	sw	%x7, 48(%x2)  #1955 pc 29408
	sw	%x11, 52(%x2)  #1955 pc 29412
	sw	%x9, 56(%x2)  #1955 pc 29416
	sw	%x10, 60(%x2)  #1955 pc 29420
	sw	%x13, 64(%x2)  #1955 pc 29424
	sw	%x15, 68(%x2)  #1955 pc 29428
	sw	%x18, 72(%x2)  #1955 pc 29432
	sw	%x20, 76(%x2)  #1955 pc 29436
	sw	%x16, 80(%x2)  #1955 pc 29440
	sw	%x14, 84(%x2)  #1955 pc 29444
	fsw	%f0, 88(%x2)  #1955 pc 29448
	sw	%x21, 96(%x2)  #1955 pc 29452
	sw	%x5, 100(%x2)  #1955 pc 29456
	sw	%x6, 104(%x2)  #1955 pc 29460
	sw	%x23, 108(%x2)  #1955 pc 29464
	mv	%x5, %x7 #pc 29468
	sw	%x1, 116(%x2)  #1955 pc 29472
	addi	%x2, %x2, 120  #1955 pc 29476
	jal	%x1, p_surface_ids.2728  #1955 pc 29480
	addi	%x2, %x2, -120  #1955 pc 29484
	lw	%x1, 116(%x2) #1955 pc 29488
	lw	%x6, 104(%x2)  #1956 pc 29492
	lw	%x22, 108(%x2)  #1956 pc 29496
	sw	%x5, 112(%x2)  #1956 pc 29500
	mv	%x5, %x6 #pc 29504
	sw	%x1, 116(%x2)  #1956 pc 29508
	lw	%x23, 0(%x22)  #1956 pc 29512
	addi	%x2, %x2, 120  #1956 pc 29516
	jalr	%x1, %x23, 0  #1956 pc 29520
	addi	%x2, %x2, -120  #1956 pc 29524
	lw	%x1, 116(%x2)  #1956 pc 29528
	beq	%x5, %x0, 12  #1956 pc 29532
	j	be_else.9493 #pc 29536
	nop #pc 29540
	addi	%x5, %x0, -1  #0 pc 29544
	lw	%x6, 100(%x2)  #2019 pc 29548
	slli	%x7, %x6, 2  #2019 pc 29552
	lw	%x9, 112(%x2)  #2019 pc 29556
	add	%x24, %x7, %x9  #2019 pc 29560
	sw	%x5, 0(%x24)  #2019 pc 29564
	beq	%x6, %x0, 12  #2021 pc 29568
	j	be_else.9494 #pc 29572
	nop #pc 29576
	ret #pc 29580
	nop #pc 29584
be_else.9494: #pc 29584
	lw	%x5, 104(%x2)  #2022 pc 29588
	lw	%x6, 96(%x2)  #2022 pc 29592
	sw	%x1, 116(%x2)  #2022 pc 29596
	addi	%x2, %x2, 120  #2022 pc 29600
	jal	%x1, veciprod.2660  #2022 pc 29604
	addi	%x2, %x2, -120  #2022 pc 29608
	lw	%x1, 116(%x2) #2022 pc 29612
	sw	%x1, 116(%x2)  #2022 pc 29616
	addi	%x2, %x2, 120  #2022 pc 29620
	jal	%x1, fneg.2534  #2022 pc 29624
	addi	%x2, %x2, -120  #2022 pc 29628
	lw	%x1, 116(%x2) #2022 pc 29632
	fsw	%f0, 120(%x2)  #2024 pc 29636
	sw	%x1, 132(%x2)  #2024 pc 29640
	addi	%x2, %x2, 136  #2024 pc 29644
	jal	%x1, fispos.2530  #2024 pc 29648
	addi	%x2, %x2, -136  #2024 pc 29652
	lw	%x1, 132(%x2) #2024 pc 29656
	beq	%x5, %x0, 12  #2024 pc 29660
	j	be_else.9497 #pc 29664
	nop #pc 29668
	ret #pc 29672
	nop #pc 29676
be_else.9497: #pc 29676
	flw	%f0, 120(%x2)  #2027 pc 29680
	sw	%x1, 132(%x2)  #2027 pc 29684
	addi	%x2, %x2, 136  #2027 pc 29688
	jal	%x1, fsqr.2536  #2027 pc 29692
	addi	%x2, %x2, -136  #2027 pc 29696
	lw	%x1, 132(%x2) #2027 pc 29700
	flw	%f2, 120(%x2)  #2027 pc 29704
	fmul	%f0, %f0, %f2  #2027 pc 29708
	flw	%f2, 88(%x2)  #2027 pc 29712
	fmul	%f0, %f0, %f2  #2027 pc 29716
	lw	%x5, 84(%x2)  #2027 pc 29720
	add	%x24, %x0, %x5  #2027 pc 29724
	flw	%f2, 0(%x24)  #2027 pc 29728
	fmul	%f0, %f0, %f2  #2027 pc 29732
	lw	%x5, 80(%x2)  #2028 pc 29736
	add	%x24, %x0, %x5  #2028 pc 29740
	flw	%f2, 0(%x24)  #2028 pc 29744
	fadd	%f2, %f2, %f0  #2028 pc 29748
	add	%x24, %x0, %x5  #2028 pc 29752
	fsw	%f2, 0(%x24) #2028 pc 29756
	addi	%x24, %x0, 8  #pc 29760
	add	%x24, %x24, %x5  #2029 pc 29764
	flw	%f2, 0(%x24)  #2029 pc 29768
	fadd	%f2, %f2, %f0  #2029 pc 29772
	addi	%x24, %x0, 8  #pc 29776
	add	%x24, %x24, %x5  #2029 pc 29780
	fsw	%f2, 0(%x24) #2029 pc 29784
	addi	%x24, %x0, 16  #pc 29788
	add	%x24, %x24, %x5  #2030 pc 29792
	flw	%f2, 0(%x24)  #2030 pc 29796
	fadd	%f0, %f2, %f0  #2030 pc 29800
	addi	%x24, %x0, 16  #pc 29804
	add	%x24, %x24, %x5  #2030 pc 29808
	fsw	%f0, 0(%x24) #2030 pc 29812
	ret #pc 29816
	nop #pc 29820
be_else.9493: #pc 29820
	lw	%x5, 76(%x2)  #1958 pc 29824
	add	%x24, %x0, %x5  #1958 pc 29828
	lw	%x5, 0(%x24)  #1958 pc 29832
	slli	%x6, %x5, 2  #1959 pc 29836
	lw	%x7, 72(%x2)  #1959 pc 29840
	add	%x24, %x6, %x7  #1959 pc 29844
	lw	%x6, 0(%x24)  #1959 pc 29848
	sw	%x5, 128(%x2)  #1960 pc 29852
	sw	%x6, 132(%x2)  #1960 pc 29856
	mv	%x5, %x6 #pc 29860
	sw	%x1, 140(%x2)  #1960 pc 29864
	addi	%x2, %x2, 144  #1960 pc 29868
	jal	%x1, o_reflectiontype.2686  #1960 pc 29872
	addi	%x2, %x2, -144  #1960 pc 29876
	lw	%x1, 140(%x2) #1960 pc 29880
	lw	%x6, 132(%x2)  #1961 pc 29884
	sw	%x5, 136(%x2)  #1961 pc 29888
	mv	%x5, %x6 #pc 29892
	sw	%x1, 140(%x2)  #1961 pc 29896
	addi	%x2, %x2, 144  #1961 pc 29900
	jal	%x1, o_diffuse.2706  #1961 pc 29904
	addi	%x2, %x2, -144  #1961 pc 29908
	lw	%x1, 140(%x2) #1961 pc 29912
	flw	%f2, 88(%x2)  #1961 pc 29916
	fmul	%f0, %f0, %f2  #1961 pc 29920
	lw	%x5, 132(%x2)  #1963 pc 29924
	lw	%x6, 104(%x2)  #1963 pc 29928
	lw	%x22, 68(%x2)  #1963 pc 29932
	fsw	%f0, 144(%x2)  #1963 pc 29936
	sw	%x1, 156(%x2)  #1963 pc 29940
	lw	%x23, 0(%x22)  #1963 pc 29944
	addi	%x2, %x2, 160  #1963 pc 29948
	jalr	%x1, %x23, 0  #1963 pc 29952
	addi	%x2, %x2, -160  #1963 pc 29956
	lw	%x1, 156(%x2)  #1963 pc 29960
	lw	%x5, 64(%x2)  #1964 pc 29964
	lw	%x6, 60(%x2)  #1964 pc 29968
	sw	%x1, 156(%x2)  #1964 pc 29972
	addi	%x2, %x2, 160  #1964 pc 29976
	jal	%x1, veccpy.2654  #1964 pc 29980
	addi	%x2, %x2, -160  #1964 pc 29984
	lw	%x1, 156(%x2) #1964 pc 29988
	lw	%x5, 132(%x2)  #1965 pc 29992
	lw	%x6, 60(%x2)  #1965 pc 29996
	lw	%x22, 56(%x2)  #1965 pc 30000
	sw	%x1, 156(%x2)  #1965 pc 30004
	lw	%x23, 0(%x22)  #1965 pc 30008
	addi	%x2, %x2, 160  #1965 pc 30012
	jalr	%x1, %x23, 0  #1965 pc 30016
	addi	%x2, %x2, -160  #1965 pc 30020
	lw	%x1, 156(%x2)  #1965 pc 30024
	addi	%x6, %x0, 4  #0 pc 30028
	lw	%x5, 128(%x2)  #1968 pc 30032
	sw	%x1, 156(%x2)  #1968 pc 30036
	addi	%x2, %x2, 160  #1968 pc 30040
	jal	%x1, mul.2562  #1968 pc 30044
	addi	%x2, %x2, -160  #1968 pc 30048
	lw	%x1, 156(%x2) #1968 pc 30052
	lw	%x6, 52(%x2)  #1968 pc 30056
	add	%x24, %x0, %x6  #1968 pc 30060
	lw	%x6, 0(%x24)  #1968 pc 30064
	add	%x5, %x5, %x6  #1968 pc 30068
	lw	%x6, 100(%x2)  #1968 pc 30072
	slli	%x7, %x6, 2  #1968 pc 30076
	lw	%x9, 112(%x2)  #1968 pc 30080
	add	%x24, %x7, %x9  #1968 pc 30084
	sw	%x5, 0(%x24)  #1968 pc 30088
	lw	%x5, 48(%x2)  #1969 pc 30092
	sw	%x1, 156(%x2)  #1969 pc 30096
	addi	%x2, %x2, 160  #1969 pc 30100
	jal	%x1, p_intersection_points.2726  #1969 pc 30104
	addi	%x2, %x2, -160  #1969 pc 30108
	lw	%x1, 156(%x2) #1969 pc 30112
	lw	%x6, 100(%x2)  #1970 pc 30116
	slli	%x7, %x6, 2  #1970 pc 30120
	add	%x24, %x7, %x5  #1970 pc 30124
	lw	%x5, 0(%x24)  #1970 pc 30128
	lw	%x7, 60(%x2)  #1970 pc 30132
	mv	%x6, %x7 #pc 30136
	sw	%x1, 156(%x2)  #1970 pc 30140
	addi	%x2, %x2, 160  #1970 pc 30144
	jal	%x1, veccpy.2654  #1970 pc 30148
	addi	%x2, %x2, -160  #1970 pc 30152
	lw	%x1, 156(%x2) #1970 pc 30156
	lw	%x5, 48(%x2)  #1973 pc 30160
	sw	%x1, 156(%x2)  #1973 pc 30164
	addi	%x2, %x2, 160  #1973 pc 30168
	jal	%x1, p_calc_diffuse.2730  #1973 pc 30172
	addi	%x2, %x2, -160  #1973 pc 30176
	lw	%x1, 156(%x2) #1973 pc 30180
	lw	%x6, 132(%x2)  #1974 pc 30184
	sw	%x5, 152(%x2)  #1974 pc 30188
	mv	%x5, %x6 #pc 30192
	sw	%x1, 156(%x2)  #1974 pc 30196
	addi	%x2, %x2, 160  #1974 pc 30200
	jal	%x1, o_diffuse.2706  #1974 pc 30204
	addi	%x2, %x2, -160  #1974 pc 30208
	lw	%x1, 156(%x2) #1974 pc 30212
	mv	%f2, l.6297  #0 pc 30216
	sw	%x1, 156(%x2)  #1974 pc 30220
	addi	%x2, %x2, 160  #1974 pc 30224
	jal	%x1, fless.2540  #1974 pc 30228
	addi	%x2, %x2, -160  #1974 pc 30232
	lw	%x1, 156(%x2) #1974 pc 30236
	beq	%x5, %x0, 12  #1974 pc 30240
	j	be_else.9501 #pc 30244
	nop #pc 30248
	addi	%x5, %x0, 1  #0 pc 30252
	lw	%x6, 100(%x2)  #1977 pc 30256
	slli	%x7, %x6, 2  #1977 pc 30260
	lw	%x9, 152(%x2)  #1977 pc 30264
	add	%x24, %x7, %x9  #1977 pc 30268
	sw	%x5, 0(%x24)  #1977 pc 30272
	lw	%x5, 48(%x2)  #1978 pc 30276
	sw	%x1, 156(%x2)  #1978 pc 30280
	addi	%x2, %x2, 160  #1978 pc 30284
	jal	%x1, p_energy.2732  #1978 pc 30288
	addi	%x2, %x2, -160  #1978 pc 30292
	lw	%x1, 156(%x2) #1978 pc 30296
	lw	%x6, 100(%x2)  #1979 pc 30300
	slli	%x7, %x6, 2  #1979 pc 30304
	add	%x24, %x7, %x5  #1979 pc 30308
	lw	%x7, 0(%x24)  #1979 pc 30312
	lw	%x9, 44(%x2)  #1979 pc 30316
	sw	%x5, 156(%x2)  #1979 pc 30320
	mv	%x6, %x9 #pc 30324
	mv	%x5, %x7 #pc 30328
	sw	%x1, 164(%x2)  #1979 pc 30332
	addi	%x2, %x2, 168  #1979 pc 30336
	jal	%x1, veccpy.2654  #1979 pc 30340
	addi	%x2, %x2, -168  #1979 pc 30344
	lw	%x1, 164(%x2) #1979 pc 30348
	lw	%x5, 100(%x2)  #1980 pc 30352
	slli	%x6, %x5, 2  #1980 pc 30356
	lw	%x7, 156(%x2)  #1980 pc 30360
	add	%x24, %x6, %x7  #1980 pc 30364
	lw	%x6, 0(%x24)  #1980 pc 30368
	mv	%f0, l.6864  #0 pc 30372
	flw	%f2, 144(%x2)  #1980 pc 30376
	fmul	%f0, %f0, %f2  #1980 pc 30380
	mv	%x5, %x6 #pc 30384
	sw	%x1, 164(%x2)  #1980 pc 30388
	addi	%x2, %x2, 168  #1980 pc 30392
	jal	%x1, vecscale.2675  #1980 pc 30396
	addi	%x2, %x2, -168  #1980 pc 30400
	lw	%x1, 164(%x2) #1980 pc 30404
	lw	%x5, 48(%x2)  #1981 pc 30408
	sw	%x1, 164(%x2)  #1981 pc 30412
	addi	%x2, %x2, 168  #1981 pc 30416
	jal	%x1, p_nvectors.2741  #1981 pc 30420
	addi	%x2, %x2, -168  #1981 pc 30424
	lw	%x1, 164(%x2) #1981 pc 30428
	lw	%x6, 100(%x2)  #1982 pc 30432
	slli	%x7, %x6, 2  #1982 pc 30436
	add	%x24, %x7, %x5  #1982 pc 30440
	lw	%x5, 0(%x24)  #1982 pc 30444
	lw	%x7, 40(%x2)  #1982 pc 30448
	mv	%x6, %x7 #pc 30452
	sw	%x1, 164(%x2)  #1982 pc 30456
	addi	%x2, %x2, 168  #1982 pc 30460
	jal	%x1, veccpy.2654  #1982 pc 30464
	addi	%x2, %x2, -168  #1982 pc 30468
	lw	%x1, 164(%x2) #1982 pc 30472
	j	be_cont.9502 #pc 30476
	nop #pc 30480
be_else.9501: #pc 30480
	addi	%x5, %x0, 0  #0 pc 30484
	lw	%x6, 100(%x2)  #1975 pc 30488
	slli	%x7, %x6, 2  #1975 pc 30492
	lw	%x9, 152(%x2)  #1975 pc 30496
	add	%x24, %x7, %x9  #1975 pc 30500
	sw	%x5, 0(%x24)  #1975 pc 30504
be_cont.9502: #pc 30504
	mv	%f0, l.6867  #0 pc 30508
	lw	%x5, 104(%x2)  #1985 pc 30512
	lw	%x6, 40(%x2)  #1985 pc 30516
	fsw	%f0, 160(%x2)  #1985 pc 30520
	sw	%x1, 172(%x2)  #1985 pc 30524
	addi	%x2, %x2, 176  #1985 pc 30528
	jal	%x1, veciprod.2660  #1985 pc 30532
	addi	%x2, %x2, -176  #1985 pc 30536
	lw	%x1, 172(%x2) #1985 pc 30540
	flw	%f2, 160(%x2)  #1985 pc 30544
	fmul	%f0, %f2, %f0  #1985 pc 30548
	lw	%x5, 104(%x2)  #1987 pc 30552
	lw	%x6, 40(%x2)  #1987 pc 30556
	sw	%x1, 172(%x2)  #1987 pc 30560
	addi	%x2, %x2, 176  #1987 pc 30564
	jal	%x1, vecaccum.2668  #1987 pc 30568
	addi	%x2, %x2, -176  #1987 pc 30572
	lw	%x1, 172(%x2) #1987 pc 30576
	lw	%x5, 132(%x2)  #1989 pc 30580
	sw	%x1, 172(%x2)  #1989 pc 30584
	addi	%x2, %x2, 176  #1989 pc 30588
	jal	%x1, o_hilight.2708  #1989 pc 30592
	addi	%x2, %x2, -176  #1989 pc 30596
	lw	%x1, 172(%x2) #1989 pc 30600
	flw	%f2, 88(%x2)  #1989 pc 30604
	fmul	%f0, %f2, %f0  #1989 pc 30608
	addi	%x5, %x0, 0  #0 pc 30612
	lw	%x6, 36(%x2)  #1992 pc 30616
	add	%x24, %x0, %x6  #1992 pc 30620
	lw	%x6, 0(%x24)  #1992 pc 30624
	lw	%x22, 16(%x2)  #1992 pc 30628
	fsw	%f0, 168(%x2)  #1992 pc 30632
	sw	%x1, 180(%x2)  #1992 pc 30636
	lw	%x23, 0(%x22)  #1992 pc 30640
	addi	%x2, %x2, 184  #1992 pc 30644
	jalr	%x1, %x23, 0  #1992 pc 30648
	addi	%x2, %x2, -184  #1992 pc 30652
	lw	%x1, 180(%x2)  #1992 pc 30656
	beq	%x5, %x0, 12  #1992 pc 30660
	j	be_else.9503 #pc 30664
	nop #pc 30668
	lw	%x5, 40(%x2)  #1993 pc 30672
	lw	%x6, 96(%x2)  #1993 pc 30676
	sw	%x1, 180(%x2)  #1993 pc 30680
	addi	%x2, %x2, 184  #1993 pc 30684
	jal	%x1, veciprod.2660  #1993 pc 30688
	addi	%x2, %x2, -184  #1993 pc 30692
	lw	%x1, 180(%x2) #1993 pc 30696
	sw	%x1, 180(%x2)  #1993 pc 30700
	addi	%x2, %x2, 184  #1993 pc 30704
	jal	%x1, fneg.2534  #1993 pc 30708
	addi	%x2, %x2, -184  #1993 pc 30712
	lw	%x1, 180(%x2) #1993 pc 30716
	flw	%f2, 144(%x2)  #1993 pc 30720
	fmul	%f0, %f0, %f2  #1993 pc 30724
	lw	%x5, 104(%x2)  #1994 pc 30728
	lw	%x6, 96(%x2)  #1994 pc 30732
	fsw	%f0, 176(%x2)  #1994 pc 30736
	sw	%x1, 188(%x2)  #1994 pc 30740
	addi	%x2, %x2, 192  #1994 pc 30744
	jal	%x1, veciprod.2660  #1994 pc 30748
	addi	%x2, %x2, -192  #1994 pc 30752
	lw	%x1, 188(%x2) #1994 pc 30756
	sw	%x1, 188(%x2)  #1994 pc 30760
	addi	%x2, %x2, 192  #1994 pc 30764
	jal	%x1, fneg.2534  #1994 pc 30768
	addi	%x2, %x2, -192  #1994 pc 30772
	lw	%x1, 188(%x2) #1994 pc 30776
	mv	%f2, %f0  #1994 pc 30780
	mv	%f3, %f1  #1994 pc 30784
	flw	%f0, 176(%x2)  #1995 pc 30788
	flw	%f4, 168(%x2)  #1995 pc 30792
	lw	%x22, 32(%x2)  #1995 pc 30796
	sw	%x1, 188(%x2)  #1995 pc 30800
	lw	%x23, 0(%x22)  #1995 pc 30804
	addi	%x2, %x2, 192  #1995 pc 30808
	jalr	%x1, %x23, 0  #1995 pc 30812
	addi	%x2, %x2, -192  #1995 pc 30816
	lw	%x1, 188(%x2)  #1995 pc 30820
	j	be_cont.9504 #pc 30824
	nop #pc 30828
be_else.9503: #pc 30828
be_cont.9504: #pc 30828
	lw	%x5, 60(%x2)  #1999 pc 30832
	lw	%x22, 12(%x2)  #1999 pc 30836
	sw	%x1, 188(%x2)  #1999 pc 30840
	lw	%x23, 0(%x22)  #1999 pc 30844
	addi	%x2, %x2, 192  #1999 pc 30848
	jalr	%x1, %x23, 0  #1999 pc 30852
	addi	%x2, %x2, -192  #1999 pc 30856
	lw	%x1, 188(%x2)  #1999 pc 30860
	lw	%x5, 8(%x2)  #2000 pc 30864
	add	%x24, %x0, %x5  #2000 pc 30868
	lw	%x5, 0(%x24)  #2000 pc 30872
	addi	%x5, %x5, -1  #2000 pc 30876
	flw	%f0, 144(%x2)  #2000 pc 30880
	flw	%f2, 168(%x2)  #2000 pc 30884
	lw	%x6, 104(%x2)  #2000 pc 30888
	lw	%x22, 4(%x2)  #2000 pc 30892
	sw	%x1, 188(%x2)  #2000 pc 30896
	lw	%x23, 0(%x22)  #2000 pc 30900
	addi	%x2, %x2, 192  #2000 pc 30904
	jalr	%x1, %x23, 0  #2000 pc 30908
	addi	%x2, %x2, -192  #2000 pc 30912
	lw	%x1, 188(%x2)  #2000 pc 30916
	mv	%f0, l.6871  #0 pc 30920
	flw	%f2, 88(%x2)  #2003 pc 30924
	sw	%x1, 188(%x2)  #2003 pc 30928
	addi	%x2, %x2, 192  #2003 pc 30932
	jal	%x1, fless.2540  #2003 pc 30936
	addi	%x2, %x2, -192  #2003 pc 30940
	lw	%x1, 188(%x2) #2003 pc 30944
	beq	%x5, %x0, 12  #2003 pc 30948
	j	be_else.9505 #pc 30952
	nop #pc 30956
	ret #pc 30960
	nop #pc 30964
be_else.9505: #pc 30964
	lw	%x5, 100(%x2)  #2005 pc 30968
	addi	%x24, %x0, 4  #pc 30972
	bge	%x5, %x24, 12  #2005 pc 30976
	j	bge_else.9507 #pc 30980
	nop #pc 30984
	j	bge_cont.9508 #pc 30988
	nop #pc 30992
bge_else.9507: #pc 30992
	addi	%x6, %x5, 1  #2006 pc 30996
	addi	%x7, %x0, -1  #0 pc 31000
	slli	%x6, %x6, 2  #2006 pc 31004
	lw	%x9, 112(%x2)  #2006 pc 31008
	add	%x24, %x6, %x9  #2006 pc 31012
	sw	%x7, 0(%x24)  #2006 pc 31016
bge_cont.9508: #pc 31016
	lw	%x6, 136(%x2)  #2009 pc 31020
	addi	%x24, %x0, 2  #pc 31024
	beq	%x6, %x24, 12  #2009 pc 31028
	j	be_else.9509 #pc 31032
	nop #pc 31036
	mv	%f0, l.6305  #0 pc 31040
	lw	%x6, 132(%x2)  #2010 pc 31044
	fsw	%f0, 184(%x2)  #2010 pc 31048
	mv	%x5, %x6 #pc 31052
	sw	%x1, 196(%x2)  #2010 pc 31056
	addi	%x2, %x2, 200  #2010 pc 31060
	jal	%x1, o_diffuse.2706  #2010 pc 31064
	addi	%x2, %x2, -200  #2010 pc 31068
	lw	%x1, 196(%x2) #2010 pc 31072
	flw	%f2, 184(%x2)  #2010 pc 31076
	fsub	%f0, %f2, %f0  #2010 pc 31080
	flw	%f2, 88(%x2)  #2010 pc 31084
	fmul	%f0, %f2, %f0  #2010 pc 31088
	lw	%x5, 100(%x2)  #2011 pc 31092
	addi	%x5, %x5, 1  #2011 pc 31096
	lw	%x6, 0(%x2)  #2011 pc 31100
	add	%x24, %x0, %x6  #2011 pc 31104
	flw	%f2, 0(%x24)  #2011 pc 31108
	flw	%f4, 24(%x2)  #2011 pc 31112
	fadd	%f2, %f4, %f2  #2011 pc 31116
	lw	%x6, 104(%x2)  #2011 pc 31120
	lw	%x7, 48(%x2)  #2011 pc 31124
	lw	%x22, 20(%x2)  #2011 pc 31128
	lw	%x23, 0(%x22)  #2011 pc 31132
	jalr	%x0, %x23, 0  #2011 pc 31136
	nop #pc 31140
be_else.9509: #pc 31140
	ret #pc 31144
	nop #pc 31148
ble_else.9492: #pc 31148
	ret #pc 31152
	nop #pc 31156
trace_diffuse_ray.2969:  #pc 31156
	addi	%x24, %x0, 48  #pc 31160
	add	%x24, %x24, %x22  #0 pc 31164
	lw	%x6, 0(%x24)  #0 pc 31168
	addi	%x24, %x0, 44  #pc 31172
	add	%x24, %x24, %x22  #0 pc 31176
	lw	%x7, 0(%x24)  #0 pc 31180
	addi	%x24, %x0, 40  #pc 31184
	add	%x24, %x24, %x22  #0 pc 31188
	lw	%x9, 0(%x24)  #0 pc 31192
	addi	%x24, %x0, 36  #pc 31196
	add	%x24, %x24, %x22  #0 pc 31200
	lw	%x10, 0(%x24)  #0 pc 31204
	addi	%x24, %x0, 32  #pc 31208
	add	%x24, %x24, %x22  #0 pc 31212
	lw	%x11, 0(%x24)  #0 pc 31216
	addi	%x24, %x0, 28  #pc 31220
	add	%x24, %x24, %x22  #0 pc 31224
	lw	%x12, 0(%x24)  #0 pc 31228
	addi	%x24, %x0, 24  #pc 31232
	add	%x24, %x24, %x22  #0 pc 31236
	lw	%x13, 0(%x24)  #0 pc 31240
	addi	%x24, %x0, 20  #pc 31244
	add	%x24, %x24, %x22  #0 pc 31248
	lw	%x14, 0(%x24)  #0 pc 31252
	addi	%x24, %x0, 16  #pc 31256
	add	%x24, %x24, %x22  #0 pc 31260
	lw	%x15, 0(%x24)  #0 pc 31264
	addi	%x24, %x0, 12  #pc 31268
	add	%x24, %x24, %x22  #0 pc 31272
	lw	%x16, 0(%x24)  #0 pc 31276
	addi	%x24, %x0, 8  #pc 31280
	add	%x24, %x24, %x22  #0 pc 31284
	lw	%x17, 0(%x24)  #0 pc 31288
	addi	%x24, %x0, 4  #pc 31292
	add	%x24, %x24, %x22  #0 pc 31296
	lw	%x18, 0(%x24)  #0 pc 31300
	sw	%x7, 0(%x2)  #2049 pc 31304
	sw	%x18, 4(%x2)  #2049 pc 31308
	fsw	%f0, 8(%x2)  #2049 pc 31312
	sw	%x13, 16(%x2)  #2049 pc 31316
	sw	%x12, 20(%x2)  #2049 pc 31320
	sw	%x9, 24(%x2)  #2049 pc 31324
	sw	%x10, 28(%x2)  #2049 pc 31328
	sw	%x15, 32(%x2)  #2049 pc 31332
	sw	%x6, 36(%x2)  #2049 pc 31336
	sw	%x17, 40(%x2)  #2049 pc 31340
	sw	%x5, 44(%x2)  #2049 pc 31344
	sw	%x11, 48(%x2)  #2049 pc 31348
	sw	%x16, 52(%x2)  #2049 pc 31352
	mv	%x22, %x14 #pc 31356
	sw	%x1, 60(%x2)  #2049 pc 31360
	lw	%x23, 0(%x22)  #2049 pc 31364
	addi	%x2, %x2, 64  #2049 pc 31368
	jalr	%x1, %x23, 0  #2049 pc 31372
	addi	%x2, %x2, -64  #2049 pc 31376
	lw	%x1, 60(%x2)  #2049 pc 31380
	beq	%x5, %x0, 12  #2049 pc 31384
	j	be_else.9512 #pc 31388
	nop #pc 31392
	ret #pc 31396
	nop #pc 31400
be_else.9512: #pc 31400
	lw	%x5, 52(%x2)  #2050 pc 31404
	add	%x24, %x0, %x5  #2050 pc 31408
	lw	%x5, 0(%x24)  #2050 pc 31412
	slli	%x5, %x5, 2  #2050 pc 31416
	lw	%x6, 48(%x2)  #2050 pc 31420
	add	%x24, %x5, %x6  #2050 pc 31424
	lw	%x5, 0(%x24)  #2050 pc 31428
	lw	%x6, 44(%x2)  #2051 pc 31432
	sw	%x5, 56(%x2)  #2051 pc 31436
	mv	%x5, %x6 #pc 31440
	sw	%x1, 60(%x2)  #2051 pc 31444
	addi	%x2, %x2, 64  #2051 pc 31448
	jal	%x1, d_vec.2743  #2051 pc 31452
	addi	%x2, %x2, -64  #2051 pc 31456
	lw	%x1, 60(%x2) #2051 pc 31460
	mv	%x6, %x5  #2051 pc 31464
	lw	%x5, 56(%x2)  #2051 pc 31468
	lw	%x22, 40(%x2)  #2051 pc 31472
	sw	%x1, 60(%x2)  #2051 pc 31476
	lw	%x23, 0(%x22)  #2051 pc 31480
	addi	%x2, %x2, 64  #2051 pc 31484
	jalr	%x1, %x23, 0  #2051 pc 31488
	addi	%x2, %x2, -64  #2051 pc 31492
	lw	%x1, 60(%x2)  #2051 pc 31496
	lw	%x5, 56(%x2)  #2052 pc 31500
	lw	%x6, 32(%x2)  #2052 pc 31504
	lw	%x22, 36(%x2)  #2052 pc 31508
	sw	%x1, 60(%x2)  #2052 pc 31512
	lw	%x23, 0(%x22)  #2052 pc 31516
	addi	%x2, %x2, 64  #2052 pc 31520
	jalr	%x1, %x23, 0  #2052 pc 31524
	addi	%x2, %x2, -64  #2052 pc 31528
	lw	%x1, 60(%x2)  #2052 pc 31532
	addi	%x5, %x0, 0  #0 pc 31536
	lw	%x6, 28(%x2)  #2055 pc 31540
	add	%x24, %x0, %x6  #2055 pc 31544
	lw	%x6, 0(%x24)  #2055 pc 31548
	lw	%x22, 24(%x2)  #2055 pc 31552
	sw	%x1, 60(%x2)  #2055 pc 31556
	lw	%x23, 0(%x22)  #2055 pc 31560
	addi	%x2, %x2, 64  #2055 pc 31564
	jalr	%x1, %x23, 0  #2055 pc 31568
	addi	%x2, %x2, -64  #2055 pc 31572
	lw	%x1, 60(%x2)  #2055 pc 31576
	beq	%x5, %x0, 12  #2055 pc 31580
	j	be_else.9514 #pc 31584
	nop #pc 31588
	lw	%x5, 20(%x2)  #2056 pc 31592
	lw	%x6, 16(%x2)  #2056 pc 31596
	sw	%x1, 60(%x2)  #2056 pc 31600
	addi	%x2, %x2, 64  #2056 pc 31604
	jal	%x1, veciprod.2660  #2056 pc 31608
	addi	%x2, %x2, -64  #2056 pc 31612
	lw	%x1, 60(%x2) #2056 pc 31616
	sw	%x1, 60(%x2)  #2056 pc 31620
	addi	%x2, %x2, 64  #2056 pc 31624
	jal	%x1, fneg.2534  #2056 pc 31628
	addi	%x2, %x2, -64  #2056 pc 31632
	lw	%x1, 60(%x2) #2056 pc 31636
	fsw	%f0, 64(%x2)  #2057 pc 31640
	sw	%x1, 76(%x2)  #2057 pc 31644
	addi	%x2, %x2, 80  #2057 pc 31648
	jal	%x1, fispos.2530  #2057 pc 31652
	addi	%x2, %x2, -80  #2057 pc 31656
	lw	%x1, 76(%x2) #2057 pc 31660
	beq	%x5, %x0, 12  #2057 pc 31664
	j	be_else.9516 #pc 31668
	nop #pc 31672
	mv	%f0, l.6293  #0 pc 31676
	j	be_cont.9517 #pc 31680
	nop #pc 31684
be_else.9516: #pc 31684
	flw	%f0, 64(%x2)  #2057 pc 31688
be_cont.9517: #pc 31688
	flw	%f2, 8(%x2)  #2058 pc 31692
	fmul	%f0, %f2, %f0  #2058 pc 31696
	lw	%x5, 56(%x2)  #2058 pc 31700
	fsw	%f0, 72(%x2)  #2058 pc 31704
	sw	%x1, 84(%x2)  #2058 pc 31708
	addi	%x2, %x2, 88  #2058 pc 31712
	jal	%x1, o_diffuse.2706  #2058 pc 31716
	addi	%x2, %x2, -88  #2058 pc 31720
	lw	%x1, 84(%x2) #2058 pc 31724
	flw	%f2, 72(%x2)  #2058 pc 31728
	fmul	%f0, %f2, %f0  #2058 pc 31732
	lw	%x5, 4(%x2)  #2058 pc 31736
	lw	%x6, 0(%x2)  #2058 pc 31740
	j	vecaccum.2668  #2058 pc 31744
	nop #pc 31748
be_else.9514: #pc 31748
	ret #pc 31752
	nop #pc 31756
iter_trace_diffuse_rays.2972:  #pc 31756
	addi	%x24, %x0, 4  #pc 31760
	add	%x24, %x24, %x22  #0 pc 31764
	lw	%x10, 0(%x24)  #0 pc 31768
	bge	%x9, %x0, 12  #2066 pc 31772
	j	bge_else.9519 #pc 31776
	nop #pc 31780
	slli	%x11, %x9, 2  #2067 pc 31784
	add	%x24, %x11, %x5  #2067 pc 31788
	lw	%x11, 0(%x24)  #2067 pc 31792
	sw	%x7, 0(%x2)  #2067 pc 31796
	sw	%x22, 4(%x2)  #2067 pc 31800
	sw	%x10, 8(%x2)  #2067 pc 31804
	sw	%x5, 12(%x2)  #2067 pc 31808
	sw	%x9, 16(%x2)  #2067 pc 31812
	sw	%x6, 20(%x2)  #2067 pc 31816
	mv	%x5, %x11 #pc 31820
	sw	%x1, 28(%x2)  #2067 pc 31824
	addi	%x2, %x2, 32  #2067 pc 31828
	jal	%x1, d_vec.2743  #2067 pc 31832
	addi	%x2, %x2, -32  #2067 pc 31836
	lw	%x1, 28(%x2) #2067 pc 31840
	lw	%x6, 20(%x2)  #2067 pc 31844
	sw	%x1, 28(%x2)  #2067 pc 31848
	addi	%x2, %x2, 32  #2067 pc 31852
	jal	%x1, veciprod.2660  #2067 pc 31856
	addi	%x2, %x2, -32  #2067 pc 31860
	lw	%x1, 28(%x2) #2067 pc 31864
	fsw	%f0, 24(%x2)  #2071 pc 31868
	sw	%x1, 36(%x2)  #2071 pc 31872
	addi	%x2, %x2, 40  #2071 pc 31876
	jal	%x1, fisneg.2532  #2071 pc 31880
	addi	%x2, %x2, -40  #2071 pc 31884
	lw	%x1, 36(%x2) #2071 pc 31888
	beq	%x5, %x0, 12  #2071 pc 31892
	j	be_else.9520 #pc 31896
	nop #pc 31900
	lw	%x5, 16(%x2)  #2074 pc 31904
	slli	%x6, %x5, 2  #2074 pc 31908
	lw	%x7, 12(%x2)  #2074 pc 31912
	add	%x24, %x6, %x7  #2074 pc 31916
	lw	%x6, 0(%x24)  #2074 pc 31920
	mv	%f0, l.6893  #0 pc 31924
	flw	%f2, 24(%x2)  #2074 pc 31928
	fdiv	%f0, %f2, %f0  #2074 pc 31932
	lw	%x22, 8(%x2)  #2074 pc 31936
	mv	%x5, %x6 #pc 31940
	sw	%x1, 36(%x2)  #2074 pc 31944
	lw	%x23, 0(%x22)  #2074 pc 31948
	addi	%x2, %x2, 40  #2074 pc 31952
	jalr	%x1, %x23, 0  #2074 pc 31956
	addi	%x2, %x2, -40  #2074 pc 31960
	lw	%x1, 36(%x2)  #2074 pc 31964
	j	be_cont.9521 #pc 31968
	nop #pc 31972
be_else.9520: #pc 31972
	lw	%x5, 16(%x2)  #2072 pc 31976
	addi	%x6, %x5, 1  #2072 pc 31980
	slli	%x6, %x6, 2  #2072 pc 31984
	lw	%x7, 12(%x2)  #2072 pc 31988
	add	%x24, %x6, %x7  #2072 pc 31992
	lw	%x6, 0(%x24)  #2072 pc 31996
	mv	%f0, l.6890  #0 pc 32000
	flw	%f2, 24(%x2)  #2072 pc 32004
	fdiv	%f0, %f2, %f0  #2072 pc 32008
	lw	%x22, 8(%x2)  #2072 pc 32012
	mv	%x5, %x6 #pc 32016
	sw	%x1, 36(%x2)  #2072 pc 32020
	lw	%x23, 0(%x22)  #2072 pc 32024
	addi	%x2, %x2, 40  #2072 pc 32028
	jalr	%x1, %x23, 0  #2072 pc 32032
	addi	%x2, %x2, -40  #2072 pc 32036
	lw	%x1, 36(%x2)  #2072 pc 32040
be_cont.9521: #pc 32040
	lw	%x5, 16(%x2)  #2076 pc 32044
	addi	%x9, %x5, -2  #2076 pc 32048
	lw	%x5, 12(%x2)  #2076 pc 32052
	lw	%x6, 20(%x2)  #2076 pc 32056
	lw	%x7, 0(%x2)  #2076 pc 32060
	lw	%x22, 4(%x2)  #2076 pc 32064
	lw	%x23, 0(%x22)  #2076 pc 32068
	jalr	%x0, %x23, 0  #2076 pc 32072
	nop #pc 32076
bge_else.9519: #pc 32076
	ret #pc 32080
	nop #pc 32084
trace_diffuse_rays.2977:  #pc 32084
	addi	%x24, %x0, 8  #pc 32088
	add	%x24, %x24, %x22  #2082 pc 32092
	lw	%x9, 0(%x24)  #2082 pc 32096
	addi	%x24, %x0, 4  #pc 32100
	add	%x24, %x24, %x22  #2082 pc 32104
	lw	%x10, 0(%x24)  #2082 pc 32108
	sw	%x7, 0(%x2)  #2082 pc 32112
	sw	%x6, 4(%x2)  #2082 pc 32116
	sw	%x5, 8(%x2)  #2082 pc 32120
	sw	%x10, 12(%x2)  #2082 pc 32124
	mv	%x5, %x7 #pc 32128
	mv	%x22, %x9 #pc 32132
	sw	%x1, 20(%x2)  #2082 pc 32136
	lw	%x23, 0(%x22)  #2082 pc 32140
	addi	%x2, %x2, 24  #2082 pc 32144
	jalr	%x1, %x23, 0  #2082 pc 32148
	addi	%x2, %x2, -24  #2082 pc 32152
	lw	%x1, 20(%x2)  #2082 pc 32156
	addi	%x9, %x0, 118  #0 pc 32160
	lw	%x5, 8(%x2)  #2086 pc 32164
	lw	%x6, 4(%x2)  #2086 pc 32168
	lw	%x7, 0(%x2)  #2086 pc 32172
	lw	%x22, 12(%x2)  #2086 pc 32176
	lw	%x23, 0(%x22)  #2086 pc 32180
	jalr	%x0, %x23, 0  #2086 pc 32184
	nop #pc 32188
trace_diffuse_ray_80percent.2981:  #pc 32188
	addi	%x24, %x0, 8  #pc 32192
	add	%x24, %x24, %x22  #0 pc 32196
	lw	%x9, 0(%x24)  #0 pc 32200
	addi	%x24, %x0, 4  #pc 32204
	add	%x24, %x24, %x22  #0 pc 32208
	lw	%x10, 0(%x24)  #0 pc 32212
	sw	%x7, 0(%x2)  #2093 pc 32216
	sw	%x6, 4(%x2)  #2093 pc 32220
	sw	%x9, 8(%x2)  #2093 pc 32224
	sw	%x10, 12(%x2)  #2093 pc 32228
	sw	%x5, 16(%x2)  #2093 pc 32232
	beq	%x5, %x0, 12  #2093 pc 32236
	j	be_else.9523 #pc 32240
	nop #pc 32244
	j	be_cont.9524 #pc 32248
	nop #pc 32252
be_else.9523: #pc 32252
	add	%x24, %x0, %x10  #2094 pc 32256
	lw	%x11, 0(%x24)  #2094 pc 32260
	mv	%x5, %x11 #pc 32264
	mv	%x22, %x9 #pc 32268
	sw	%x1, 20(%x2)  #2094 pc 32272
	lw	%x23, 0(%x22)  #2094 pc 32276
	addi	%x2, %x2, 24  #2094 pc 32280
	jalr	%x1, %x23, 0  #2094 pc 32284
	addi	%x2, %x2, -24  #2094 pc 32288
	lw	%x1, 20(%x2)  #2094 pc 32292
be_cont.9524: #pc 32292
	lw	%x5, 16(%x2)  #2097 pc 32296
	addi	%x24, %x0, 1  #pc 32300
	beq	%x5, %x24, 12  #2097 pc 32304
	j	be_else.9525 #pc 32308
	nop #pc 32312
	j	be_cont.9526 #pc 32316
	nop #pc 32320
be_else.9525: #pc 32320
	lw	%x6, 12(%x2)  #2098 pc 32324
	addi	%x24, %x0, 4  #pc 32328
	add	%x24, %x24, %x6  #2098 pc 32332
	lw	%x7, 0(%x24)  #2098 pc 32336
	lw	%x9, 4(%x2)  #2098 pc 32340
	lw	%x10, 0(%x2)  #2098 pc 32344
	lw	%x22, 8(%x2)  #2098 pc 32348
	mv	%x6, %x9 #pc 32352
	mv	%x5, %x7 #pc 32356
	mv	%x7, %x10 #pc 32360
	sw	%x1, 20(%x2)  #2098 pc 32364
	lw	%x23, 0(%x22)  #2098 pc 32368
	addi	%x2, %x2, 24  #2098 pc 32372
	jalr	%x1, %x23, 0  #2098 pc 32376
	addi	%x2, %x2, -24  #2098 pc 32380
	lw	%x1, 20(%x2)  #2098 pc 32384
be_cont.9526: #pc 32384
	lw	%x5, 16(%x2)  #2101 pc 32388
	addi	%x24, %x0, 2  #pc 32392
	beq	%x5, %x24, 12  #2101 pc 32396
	j	be_else.9527 #pc 32400
	nop #pc 32404
	j	be_cont.9528 #pc 32408
	nop #pc 32412
be_else.9527: #pc 32412
	lw	%x6, 12(%x2)  #2102 pc 32416
	addi	%x24, %x0, 8  #pc 32420
	add	%x24, %x24, %x6  #2102 pc 32424
	lw	%x7, 0(%x24)  #2102 pc 32428
	lw	%x9, 4(%x2)  #2102 pc 32432
	lw	%x10, 0(%x2)  #2102 pc 32436
	lw	%x22, 8(%x2)  #2102 pc 32440
	mv	%x6, %x9 #pc 32444
	mv	%x5, %x7 #pc 32448
	mv	%x7, %x10 #pc 32452
	sw	%x1, 20(%x2)  #2102 pc 32456
	lw	%x23, 0(%x22)  #2102 pc 32460
	addi	%x2, %x2, 24  #2102 pc 32464
	jalr	%x1, %x23, 0  #2102 pc 32468
	addi	%x2, %x2, -24  #2102 pc 32472
	lw	%x1, 20(%x2)  #2102 pc 32476
be_cont.9528: #pc 32476
	lw	%x5, 16(%x2)  #2105 pc 32480
	addi	%x24, %x0, 3  #pc 32484
	beq	%x5, %x24, 12  #2105 pc 32488
	j	be_else.9529 #pc 32492
	nop #pc 32496
	j	be_cont.9530 #pc 32500
	nop #pc 32504
be_else.9529: #pc 32504
	lw	%x6, 12(%x2)  #2106 pc 32508
	addi	%x24, %x0, 12  #pc 32512
	add	%x24, %x24, %x6  #2106 pc 32516
	lw	%x7, 0(%x24)  #2106 pc 32520
	lw	%x9, 4(%x2)  #2106 pc 32524
	lw	%x10, 0(%x2)  #2106 pc 32528
	lw	%x22, 8(%x2)  #2106 pc 32532
	mv	%x6, %x9 #pc 32536
	mv	%x5, %x7 #pc 32540
	mv	%x7, %x10 #pc 32544
	sw	%x1, 20(%x2)  #2106 pc 32548
	lw	%x23, 0(%x22)  #2106 pc 32552
	addi	%x2, %x2, 24  #2106 pc 32556
	jalr	%x1, %x23, 0  #2106 pc 32560
	addi	%x2, %x2, -24  #2106 pc 32564
	lw	%x1, 20(%x2)  #2106 pc 32568
be_cont.9530: #pc 32568
	lw	%x5, 16(%x2)  #2109 pc 32572
	addi	%x24, %x0, 4  #pc 32576
	beq	%x5, %x24, 12  #2109 pc 32580
	j	be_else.9531 #pc 32584
	nop #pc 32588
	ret #pc 32592
	nop #pc 32596
be_else.9531: #pc 32596
	lw	%x5, 12(%x2)  #2110 pc 32600
	addi	%x24, %x0, 16  #pc 32604
	add	%x24, %x24, %x5  #2110 pc 32608
	lw	%x5, 0(%x24)  #2110 pc 32612
	lw	%x6, 4(%x2)  #2110 pc 32616
	lw	%x7, 0(%x2)  #2110 pc 32620
	lw	%x22, 8(%x2)  #2110 pc 32624
	lw	%x23, 0(%x22)  #2110 pc 32628
	jalr	%x0, %x23, 0  #2110 pc 32632
	nop #pc 32636
calc_diffuse_using_1point.2985:  #pc 32636
	addi	%x24, %x0, 12  #pc 32640
	add	%x24, %x24, %x22  #2119 pc 32644
	lw	%x7, 0(%x24)  #2119 pc 32648
	addi	%x24, %x0, 8  #pc 32652
	add	%x24, %x24, %x22  #2119 pc 32656
	lw	%x9, 0(%x24)  #2119 pc 32660
	addi	%x24, %x0, 4  #pc 32664
	add	%x24, %x24, %x22  #2119 pc 32668
	lw	%x10, 0(%x24)  #2119 pc 32672
	sw	%x9, 0(%x2)  #2119 pc 32676
	sw	%x7, 4(%x2)  #2119 pc 32680
	sw	%x10, 8(%x2)  #2119 pc 32684
	sw	%x6, 12(%x2)  #2119 pc 32688
	sw	%x5, 16(%x2)  #2119 pc 32692
	sw	%x1, 20(%x2)  #2119 pc 32696
	addi	%x2, %x2, 24  #2119 pc 32700
	jal	%x1, p_received_ray_20percent.2734  #2119 pc 32704
	addi	%x2, %x2, -24  #2119 pc 32708
	lw	%x1, 20(%x2) #2119 pc 32712
	lw	%x6, 16(%x2)  #2120 pc 32716
	sw	%x5, 20(%x2)  #2120 pc 32720
	mv	%x5, %x6 #pc 32724
	sw	%x1, 28(%x2)  #2120 pc 32728
	addi	%x2, %x2, 32  #2120 pc 32732
	jal	%x1, p_nvectors.2741  #2120 pc 32736
	addi	%x2, %x2, -32  #2120 pc 32740
	lw	%x1, 28(%x2) #2120 pc 32744
	lw	%x6, 16(%x2)  #2121 pc 32748
	sw	%x5, 24(%x2)  #2121 pc 32752
	mv	%x5, %x6 #pc 32756
	sw	%x1, 28(%x2)  #2121 pc 32760
	addi	%x2, %x2, 32  #2121 pc 32764
	jal	%x1, p_intersection_points.2726  #2121 pc 32768
	addi	%x2, %x2, -32  #2121 pc 32772
	lw	%x1, 28(%x2) #2121 pc 32776
	lw	%x6, 16(%x2)  #2122 pc 32780
	sw	%x5, 28(%x2)  #2122 pc 32784
	mv	%x5, %x6 #pc 32788
	sw	%x1, 36(%x2)  #2122 pc 32792
	addi	%x2, %x2, 40  #2122 pc 32796
	jal	%x1, p_energy.2732  #2122 pc 32800
	addi	%x2, %x2, -40  #2122 pc 32804
	lw	%x1, 36(%x2) #2122 pc 32808
	lw	%x6, 12(%x2)  #2124 pc 32812
	slli	%x7, %x6, 2  #2124 pc 32816
	lw	%x9, 20(%x2)  #2124 pc 32820
	add	%x24, %x7, %x9  #2124 pc 32824
	lw	%x7, 0(%x24)  #2124 pc 32828
	lw	%x9, 8(%x2)  #2124 pc 32832
	sw	%x5, 32(%x2)  #2124 pc 32836
	mv	%x6, %x7 #pc 32840
	mv	%x5, %x9 #pc 32844
	sw	%x1, 36(%x2)  #2124 pc 32848
	addi	%x2, %x2, 40  #2124 pc 32852
	jal	%x1, veccpy.2654  #2124 pc 32856
	addi	%x2, %x2, -40  #2124 pc 32860
	lw	%x1, 36(%x2) #2124 pc 32864
	lw	%x5, 16(%x2)  #2126 pc 32868
	sw	%x1, 36(%x2)  #2126 pc 32872
	addi	%x2, %x2, 40  #2126 pc 32876
	jal	%x1, p_group_id.2736  #2126 pc 32880
	addi	%x2, %x2, -40  #2126 pc 32884
	lw	%x1, 36(%x2) #2126 pc 32888
	lw	%x6, 12(%x2)  #2127 pc 32892
	slli	%x7, %x6, 2  #2127 pc 32896
	lw	%x9, 24(%x2)  #2127 pc 32900
	add	%x24, %x7, %x9  #2127 pc 32904
	lw	%x7, 0(%x24)  #2127 pc 32908
	slli	%x9, %x6, 2  #2128 pc 32912
	lw	%x10, 28(%x2)  #2128 pc 32916
	add	%x24, %x9, %x10  #2128 pc 32920
	lw	%x9, 0(%x24)  #2128 pc 32924
	lw	%x22, 4(%x2)  #2125 pc 32928
	mv	%x6, %x7 #pc 32932
	mv	%x7, %x9 #pc 32936
	sw	%x1, 36(%x2)  #2125 pc 32940
	lw	%x23, 0(%x22)  #2125 pc 32944
	addi	%x2, %x2, 40  #2125 pc 32948
	jalr	%x1, %x23, 0  #2125 pc 32952
	addi	%x2, %x2, -40  #2125 pc 32956
	lw	%x1, 36(%x2)  #2125 pc 32960
	lw	%x5, 12(%x2)  #2129 pc 32964
	slli	%x5, %x5, 2  #2129 pc 32968
	lw	%x6, 32(%x2)  #2129 pc 32972
	add	%x24, %x5, %x6  #2129 pc 32976
	lw	%x6, 0(%x24)  #2129 pc 32980
	lw	%x5, 0(%x2)  #2129 pc 32984
	lw	%x7, 8(%x2)  #2129 pc 32988
	j	vecaccumv.2678  #2129 pc 32992
	nop #pc 32996
calc_diffuse_using_5points.2988:  #pc 32996
	addi	%x24, %x0, 8  #pc 33000
	add	%x24, %x24, %x22  #0 pc 33004
	lw	%x11, 0(%x24)  #0 pc 33008
	addi	%x24, %x0, 4  #pc 33012
	add	%x24, %x24, %x22  #0 pc 33016
	lw	%x12, 0(%x24)  #0 pc 33020
	slli	%x13, %x5, 2  #2138 pc 33024
	add	%x24, %x13, %x6  #2138 pc 33028
	lw	%x6, 0(%x24)  #2138 pc 33032
	sw	%x11, 0(%x2)  #2138 pc 33036
	sw	%x12, 4(%x2)  #2138 pc 33040
	sw	%x10, 8(%x2)  #2138 pc 33044
	sw	%x9, 12(%x2)  #2138 pc 33048
	sw	%x7, 16(%x2)  #2138 pc 33052
	sw	%x5, 20(%x2)  #2138 pc 33056
	mv	%x5, %x6 #pc 33060
	sw	%x1, 28(%x2)  #2138 pc 33064
	addi	%x2, %x2, 32  #2138 pc 33068
	jal	%x1, p_received_ray_20percent.2734  #2138 pc 33072
	addi	%x2, %x2, -32  #2138 pc 33076
	lw	%x1, 28(%x2) #2138 pc 33080
	lw	%x6, 20(%x2)  #2139 pc 33084
	addi	%x7, %x6, -1  #2139 pc 33088
	slli	%x7, %x7, 2  #2139 pc 33092
	lw	%x9, 16(%x2)  #2139 pc 33096
	add	%x24, %x7, %x9  #2139 pc 33100
	lw	%x7, 0(%x24)  #2139 pc 33104
	sw	%x5, 24(%x2)  #2139 pc 33108
	mv	%x5, %x7 #pc 33112
	sw	%x1, 28(%x2)  #2139 pc 33116
	addi	%x2, %x2, 32  #2139 pc 33120
	jal	%x1, p_received_ray_20percent.2734  #2139 pc 33124
	addi	%x2, %x2, -32  #2139 pc 33128
	lw	%x1, 28(%x2) #2139 pc 33132
	lw	%x6, 20(%x2)  #2140 pc 33136
	slli	%x7, %x6, 2  #2140 pc 33140
	lw	%x9, 16(%x2)  #2140 pc 33144
	add	%x24, %x7, %x9  #2140 pc 33148
	lw	%x7, 0(%x24)  #2140 pc 33152
	sw	%x5, 28(%x2)  #2140 pc 33156
	mv	%x5, %x7 #pc 33160
	sw	%x1, 36(%x2)  #2140 pc 33164
	addi	%x2, %x2, 40  #2140 pc 33168
	jal	%x1, p_received_ray_20percent.2734  #2140 pc 33172
	addi	%x2, %x2, -40  #2140 pc 33176
	lw	%x1, 36(%x2) #2140 pc 33180
	lw	%x6, 20(%x2)  #2141 pc 33184
	addi	%x7, %x6, 1  #2141 pc 33188
	slli	%x7, %x7, 2  #2141 pc 33192
	lw	%x9, 16(%x2)  #2141 pc 33196
	add	%x24, %x7, %x9  #2141 pc 33200
	lw	%x7, 0(%x24)  #2141 pc 33204
	sw	%x5, 32(%x2)  #2141 pc 33208
	mv	%x5, %x7 #pc 33212
	sw	%x1, 36(%x2)  #2141 pc 33216
	addi	%x2, %x2, 40  #2141 pc 33220
	jal	%x1, p_received_ray_20percent.2734  #2141 pc 33224
	addi	%x2, %x2, -40  #2141 pc 33228
	lw	%x1, 36(%x2) #2141 pc 33232
	lw	%x6, 20(%x2)  #2142 pc 33236
	slli	%x7, %x6, 2  #2142 pc 33240
	lw	%x9, 12(%x2)  #2142 pc 33244
	add	%x24, %x7, %x9  #2142 pc 33248
	lw	%x7, 0(%x24)  #2142 pc 33252
	sw	%x5, 36(%x2)  #2142 pc 33256
	mv	%x5, %x7 #pc 33260
	sw	%x1, 44(%x2)  #2142 pc 33264
	addi	%x2, %x2, 48  #2142 pc 33268
	jal	%x1, p_received_ray_20percent.2734  #2142 pc 33272
	addi	%x2, %x2, -48  #2142 pc 33276
	lw	%x1, 44(%x2) #2142 pc 33280
	lw	%x6, 8(%x2)  #2144 pc 33284
	slli	%x7, %x6, 2  #2144 pc 33288
	lw	%x9, 24(%x2)  #2144 pc 33292
	add	%x24, %x7, %x9  #2144 pc 33296
	lw	%x7, 0(%x24)  #2144 pc 33300
	lw	%x9, 4(%x2)  #2144 pc 33304
	sw	%x5, 40(%x2)  #2144 pc 33308
	mv	%x6, %x7 #pc 33312
	mv	%x5, %x9 #pc 33316
	sw	%x1, 44(%x2)  #2144 pc 33320
	addi	%x2, %x2, 48  #2144 pc 33324
	jal	%x1, veccpy.2654  #2144 pc 33328
	addi	%x2, %x2, -48  #2144 pc 33332
	lw	%x1, 44(%x2) #2144 pc 33336
	lw	%x5, 8(%x2)  #2145 pc 33340
	slli	%x6, %x5, 2  #2145 pc 33344
	lw	%x7, 28(%x2)  #2145 pc 33348
	add	%x24, %x6, %x7  #2145 pc 33352
	lw	%x6, 0(%x24)  #2145 pc 33356
	lw	%x7, 4(%x2)  #2145 pc 33360
	mv	%x5, %x7 #pc 33364
	sw	%x1, 44(%x2)  #2145 pc 33368
	addi	%x2, %x2, 48  #2145 pc 33372
	jal	%x1, vecadd.2672  #2145 pc 33376
	addi	%x2, %x2, -48  #2145 pc 33380
	lw	%x1, 44(%x2) #2145 pc 33384
	lw	%x5, 8(%x2)  #2146 pc 33388
	slli	%x6, %x5, 2  #2146 pc 33392
	lw	%x7, 32(%x2)  #2146 pc 33396
	add	%x24, %x6, %x7  #2146 pc 33400
	lw	%x6, 0(%x24)  #2146 pc 33404
	lw	%x7, 4(%x2)  #2146 pc 33408
	mv	%x5, %x7 #pc 33412
	sw	%x1, 44(%x2)  #2146 pc 33416
	addi	%x2, %x2, 48  #2146 pc 33420
	jal	%x1, vecadd.2672  #2146 pc 33424
	addi	%x2, %x2, -48  #2146 pc 33428
	lw	%x1, 44(%x2) #2146 pc 33432
	lw	%x5, 8(%x2)  #2147 pc 33436
	slli	%x6, %x5, 2  #2147 pc 33440
	lw	%x7, 36(%x2)  #2147 pc 33444
	add	%x24, %x6, %x7  #2147 pc 33448
	lw	%x6, 0(%x24)  #2147 pc 33452
	lw	%x7, 4(%x2)  #2147 pc 33456
	mv	%x5, %x7 #pc 33460
	sw	%x1, 44(%x2)  #2147 pc 33464
	addi	%x2, %x2, 48  #2147 pc 33468
	jal	%x1, vecadd.2672  #2147 pc 33472
	addi	%x2, %x2, -48  #2147 pc 33476
	lw	%x1, 44(%x2) #2147 pc 33480
	lw	%x5, 8(%x2)  #2148 pc 33484
	slli	%x6, %x5, 2  #2148 pc 33488
	lw	%x7, 40(%x2)  #2148 pc 33492
	add	%x24, %x6, %x7  #2148 pc 33496
	lw	%x6, 0(%x24)  #2148 pc 33500
	lw	%x7, 4(%x2)  #2148 pc 33504
	mv	%x5, %x7 #pc 33508
	sw	%x1, 44(%x2)  #2148 pc 33512
	addi	%x2, %x2, 48  #2148 pc 33516
	jal	%x1, vecadd.2672  #2148 pc 33520
	addi	%x2, %x2, -48  #2148 pc 33524
	lw	%x1, 44(%x2) #2148 pc 33528
	lw	%x5, 20(%x2)  #2150 pc 33532
	slli	%x5, %x5, 2  #2150 pc 33536
	lw	%x6, 16(%x2)  #2150 pc 33540
	add	%x24, %x5, %x6  #2150 pc 33544
	lw	%x5, 0(%x24)  #2150 pc 33548
	sw	%x1, 44(%x2)  #2150 pc 33552
	addi	%x2, %x2, 48  #2150 pc 33556
	jal	%x1, p_energy.2732  #2150 pc 33560
	addi	%x2, %x2, -48  #2150 pc 33564
	lw	%x1, 44(%x2) #2150 pc 33568
	lw	%x6, 8(%x2)  #2151 pc 33572
	slli	%x6, %x6, 2  #2151 pc 33576
	add	%x24, %x6, %x5  #2151 pc 33580
	lw	%x6, 0(%x24)  #2151 pc 33584
	lw	%x5, 0(%x2)  #2151 pc 33588
	lw	%x7, 4(%x2)  #2151 pc 33592
	j	vecaccumv.2678  #2151 pc 33596
	nop #pc 33600
do_without_neighbors.2994:  #pc 33600
	addi	%x24, %x0, 4  #pc 33604
	add	%x24, %x24, %x22  #0 pc 33608
	lw	%x7, 0(%x24)  #0 pc 33612
	addi	%x24, %x0, 4  #pc 33616
	bge	%x24, %x6, 12  #2157 pc 33620
	j	ble_else.9533 #pc 33624
	nop #pc 33628
	sw	%x22, 0(%x2)  #2159 pc 33632
	sw	%x7, 4(%x2)  #2159 pc 33636
	sw	%x5, 8(%x2)  #2159 pc 33640
	sw	%x6, 12(%x2)  #2159 pc 33644
	sw	%x1, 20(%x2)  #2159 pc 33648
	addi	%x2, %x2, 24  #2159 pc 33652
	jal	%x1, p_surface_ids.2728  #2159 pc 33656
	addi	%x2, %x2, -24  #2159 pc 33660
	lw	%x1, 20(%x2) #2159 pc 33664
	lw	%x6, 12(%x2)  #2160 pc 33668
	slli	%x7, %x6, 2  #2160 pc 33672
	add	%x24, %x7, %x5  #2160 pc 33676
	lw	%x5, 0(%x24)  #2160 pc 33680
	bge	%x5, %x0, 12  #2160 pc 33684
	j	bge_else.9534 #pc 33688
	nop #pc 33692
	lw	%x5, 8(%x2)  #2161 pc 33696
	sw	%x1, 20(%x2)  #2161 pc 33700
	addi	%x2, %x2, 24  #2161 pc 33704
	jal	%x1, p_calc_diffuse.2730  #2161 pc 33708
	addi	%x2, %x2, -24  #2161 pc 33712
	lw	%x1, 20(%x2) #2161 pc 33716
	lw	%x6, 12(%x2)  #2162 pc 33720
	slli	%x7, %x6, 2  #2162 pc 33724
	add	%x24, %x7, %x5  #2162 pc 33728
	lw	%x5, 0(%x24)  #2162 pc 33732
	beq	%x5, %x0, 12  #2162 pc 33736
	j	be_else.9535 #pc 33740
	nop #pc 33744
	j	be_cont.9536 #pc 33748
	nop #pc 33752
be_else.9535: #pc 33752
	lw	%x5, 8(%x2)  #2163 pc 33756
	lw	%x22, 4(%x2)  #2163 pc 33760
	sw	%x1, 20(%x2)  #2163 pc 33764
	lw	%x23, 0(%x22)  #2163 pc 33768
	addi	%x2, %x2, 24  #2163 pc 33772
	jalr	%x1, %x23, 0  #2163 pc 33776
	addi	%x2, %x2, -24  #2163 pc 33780
	lw	%x1, 20(%x2)  #2163 pc 33784
be_cont.9536: #pc 33784
	lw	%x5, 12(%x2)  #2165 pc 33788
	addi	%x6, %x5, 1  #2165 pc 33792
	lw	%x5, 8(%x2)  #2165 pc 33796
	lw	%x22, 0(%x2)  #2165 pc 33800
	lw	%x23, 0(%x22)  #2165 pc 33804
	jalr	%x0, %x23, 0  #2165 pc 33808
	nop #pc 33812
bge_else.9534: #pc 33812
	ret #pc 33816
	nop #pc 33820
ble_else.9533: #pc 33820
	ret #pc 33824
	nop #pc 33828
neighbors_exist.2997:  #pc 33828
	addi	%x24, %x0, 4  #pc 33832
	add	%x24, %x24, %x22  #0 pc 33836
	lw	%x7, 0(%x24)  #0 pc 33840
	addi	%x24, %x0, 4  #pc 33844
	add	%x24, %x24, %x7  #2172 pc 33848
	lw	%x9, 0(%x24)  #2172 pc 33852
	addi	%x10, %x6, 1  #2172 pc 33856
	bge	%x10, %x9, 12  #2172 pc 33860
	j	ble_else.9539 #pc 33864
	nop #pc 33868
	addi	%x5, %x0, 0  #0 pc 33872
	ret #pc 33876
	nop #pc 33880
ble_else.9539: #pc 33880
	bge	%x0, %x6, 12  #2173 pc 33884
	j	ble_else.9540 #pc 33888
	nop #pc 33892
	addi	%x5, %x0, 0  #0 pc 33896
	ret #pc 33900
	nop #pc 33904
ble_else.9540: #pc 33904
	add	%x24, %x0, %x7  #2174 pc 33908
	lw	%x6, 0(%x24)  #2174 pc 33912
	addi	%x7, %x5, 1  #2174 pc 33916
	bge	%x7, %x6, 12  #2174 pc 33920
	j	ble_else.9541 #pc 33924
	nop #pc 33928
	addi	%x5, %x0, 0  #0 pc 33932
	ret #pc 33936
	nop #pc 33940
ble_else.9541: #pc 33940
	bge	%x0, %x5, 12  #2175 pc 33944
	j	ble_else.9542 #pc 33948
	nop #pc 33952
	addi	%x5, %x0, 0  #0 pc 33956
	ret #pc 33960
	nop #pc 33964
ble_else.9542: #pc 33964
	addi	%x5, %x0, 1  #0 pc 33968
	ret #pc 33972
	nop #pc 33976
get_surface_id.3001:  #pc 33976
	sw	%x6, 0(%x2)  #2184 pc 33980
	sw	%x1, 4(%x2)  #2184 pc 33984
	addi	%x2, %x2, 8  #2184 pc 33988
	jal	%x1, p_surface_ids.2728  #2184 pc 33992
	addi	%x2, %x2, -8  #2184 pc 33996
	lw	%x1, 4(%x2) #2184 pc 34000
	lw	%x6, 0(%x2)  #2185 pc 34004
	slli	%x6, %x6, 2  #2185 pc 34008
	add	%x24, %x6, %x5  #2185 pc 34012
	lw	%x5, 0(%x24)  #2185 pc 34016
	ret #pc 34020
	nop #pc 34024
neighbors_are_available.3004:  #pc 34024
	slli	%x11, %x5, 2  #2191 pc 34028
	add	%x24, %x11, %x7  #2191 pc 34032
	lw	%x11, 0(%x24)  #2191 pc 34036
	sw	%x7, 0(%x2)  #2191 pc 34040
	sw	%x9, 4(%x2)  #2191 pc 34044
	sw	%x10, 8(%x2)  #2191 pc 34048
	sw	%x6, 12(%x2)  #2191 pc 34052
	sw	%x5, 16(%x2)  #2191 pc 34056
	mv	%x6, %x10 #pc 34060
	mv	%x5, %x11 #pc 34064
	sw	%x1, 20(%x2)  #2191 pc 34068
	addi	%x2, %x2, 24  #2191 pc 34072
	jal	%x1, get_surface_id.3001  #2191 pc 34076
	addi	%x2, %x2, -24  #2191 pc 34080
	lw	%x1, 20(%x2) #2191 pc 34084
	lw	%x6, 16(%x2)  #2193 pc 34088
	slli	%x7, %x6, 2  #2193 pc 34092
	lw	%x9, 12(%x2)  #2193 pc 34096
	add	%x24, %x7, %x9  #2193 pc 34100
	lw	%x7, 0(%x24)  #2193 pc 34104
	lw	%x9, 8(%x2)  #2193 pc 34108
	sw	%x5, 20(%x2)  #2193 pc 34112
	mv	%x6, %x9 #pc 34116
	mv	%x5, %x7 #pc 34120
	sw	%x1, 28(%x2)  #2193 pc 34124
	addi	%x2, %x2, 32  #2193 pc 34128
	jal	%x1, get_surface_id.3001  #2193 pc 34132
	addi	%x2, %x2, -32  #2193 pc 34136
	lw	%x1, 28(%x2) #2193 pc 34140
	lw	%x6, 20(%x2)  #2193 pc 34144
	beq	%x5, %x6, 12  #2193 pc 34148
	j	be_else.9543 #pc 34152
	nop #pc 34156
	lw	%x5, 16(%x2)  #2194 pc 34160
	slli	%x7, %x5, 2  #2194 pc 34164
	lw	%x9, 4(%x2)  #2194 pc 34168
	add	%x24, %x7, %x9  #2194 pc 34172
	lw	%x7, 0(%x24)  #2194 pc 34176
	lw	%x9, 8(%x2)  #2194 pc 34180
	mv	%x6, %x9 #pc 34184
	mv	%x5, %x7 #pc 34188
	sw	%x1, 28(%x2)  #2194 pc 34192
	addi	%x2, %x2, 32  #2194 pc 34196
	jal	%x1, get_surface_id.3001  #2194 pc 34200
	addi	%x2, %x2, -32  #2194 pc 34204
	lw	%x1, 28(%x2) #2194 pc 34208
	lw	%x6, 20(%x2)  #2194 pc 34212
	beq	%x5, %x6, 12  #2194 pc 34216
	j	be_else.9544 #pc 34220
	nop #pc 34224
	lw	%x5, 16(%x2)  #2195 pc 34228
	addi	%x7, %x5, -1  #2195 pc 34232
	slli	%x7, %x7, 2  #2195 pc 34236
	lw	%x9, 0(%x2)  #2195 pc 34240
	add	%x24, %x7, %x9  #2195 pc 34244
	lw	%x7, 0(%x24)  #2195 pc 34248
	lw	%x10, 8(%x2)  #2195 pc 34252
	mv	%x6, %x10 #pc 34256
	mv	%x5, %x7 #pc 34260
	sw	%x1, 28(%x2)  #2195 pc 34264
	addi	%x2, %x2, 32  #2195 pc 34268
	jal	%x1, get_surface_id.3001  #2195 pc 34272
	addi	%x2, %x2, -32  #2195 pc 34276
	lw	%x1, 28(%x2) #2195 pc 34280
	lw	%x6, 20(%x2)  #2195 pc 34284
	beq	%x5, %x6, 12  #2195 pc 34288
	j	be_else.9545 #pc 34292
	nop #pc 34296
	lw	%x5, 16(%x2)  #2196 pc 34300
	addi	%x5, %x5, 1  #2196 pc 34304
	slli	%x5, %x5, 2  #2196 pc 34308
	lw	%x7, 0(%x2)  #2196 pc 34312
	add	%x24, %x5, %x7  #2196 pc 34316
	lw	%x5, 0(%x24)  #2196 pc 34320
	lw	%x7, 8(%x2)  #2196 pc 34324
	mv	%x6, %x7 #pc 34328
	sw	%x1, 28(%x2)  #2196 pc 34332
	addi	%x2, %x2, 32  #2196 pc 34336
	jal	%x1, get_surface_id.3001  #2196 pc 34340
	addi	%x2, %x2, -32  #2196 pc 34344
	lw	%x1, 28(%x2) #2196 pc 34348
	lw	%x6, 20(%x2)  #2196 pc 34352
	beq	%x5, %x6, 12  #2196 pc 34356
	j	be_else.9546 #pc 34360
	nop #pc 34364
	addi	%x5, %x0, 1  #0 pc 34368
	ret #pc 34372
	nop #pc 34376
be_else.9546: #pc 34376
	addi	%x5, %x0, 0  #0 pc 34380
	ret #pc 34384
	nop #pc 34388
be_else.9545: #pc 34388
	addi	%x5, %x0, 0  #0 pc 34392
	ret #pc 34396
	nop #pc 34400
be_else.9544: #pc 34400
	addi	%x5, %x0, 0  #0 pc 34404
	ret #pc 34408
	nop #pc 34412
be_else.9543: #pc 34412
	addi	%x5, %x0, 0  #0 pc 34416
	ret #pc 34420
	nop #pc 34424
try_exploit_neighbors.3010:  #pc 34424
	addi	%x24, %x0, 8  #pc 34428
	add	%x24, %x24, %x22  #2209 pc 34432
	lw	%x12, 0(%x24)  #2209 pc 34436
	addi	%x24, %x0, 4  #pc 34440
	add	%x24, %x24, %x22  #2209 pc 34444
	lw	%x13, 0(%x24)  #2209 pc 34448
	slli	%x14, %x5, 2  #2209 pc 34452
	add	%x24, %x14, %x9  #2209 pc 34456
	lw	%x14, 0(%x24)  #2209 pc 34460
	addi	%x24, %x0, 4  #pc 34464
	bge	%x24, %x11, 12  #2210 pc 34468
	j	ble_else.9547 #pc 34472
	nop #pc 34476
	sw	%x6, 0(%x2)  #2213 pc 34480
	sw	%x22, 4(%x2)  #2213 pc 34484
	sw	%x13, 8(%x2)  #2213 pc 34488
	sw	%x14, 12(%x2)  #2213 pc 34492
	sw	%x12, 16(%x2)  #2213 pc 34496
	sw	%x11, 20(%x2)  #2213 pc 34500
	sw	%x10, 24(%x2)  #2213 pc 34504
	sw	%x9, 28(%x2)  #2213 pc 34508
	sw	%x7, 32(%x2)  #2213 pc 34512
	sw	%x5, 36(%x2)  #2213 pc 34516
	mv	%x6, %x11 #pc 34520
	mv	%x5, %x14 #pc 34524
	sw	%x1, 44(%x2)  #2213 pc 34528
	addi	%x2, %x2, 48  #2213 pc 34532
	jal	%x1, get_surface_id.3001  #2213 pc 34536
	addi	%x2, %x2, -48  #2213 pc 34540
	lw	%x1, 44(%x2) #2213 pc 34544
	bge	%x5, %x0, 12  #2213 pc 34548
	j	bge_else.9548 #pc 34552
	nop #pc 34556
	lw	%x5, 36(%x2)  #2215 pc 34560
	lw	%x6, 32(%x2)  #2215 pc 34564
	lw	%x7, 28(%x2)  #2215 pc 34568
	lw	%x9, 24(%x2)  #2215 pc 34572
	lw	%x10, 20(%x2)  #2215 pc 34576
	sw	%x1, 44(%x2)  #2215 pc 34580
	addi	%x2, %x2, 48  #2215 pc 34584
	jal	%x1, neighbors_are_available.3004  #2215 pc 34588
	addi	%x2, %x2, -48  #2215 pc 34592
	lw	%x1, 44(%x2) #2215 pc 34596
	beq	%x5, %x0, 12  #2215 pc 34600
	j	be_else.9549 #pc 34604
	nop #pc 34608
	lw	%x5, 36(%x2)  #2227 pc 34612
	slli	%x5, %x5, 2  #2227 pc 34616
	lw	%x6, 28(%x2)  #2227 pc 34620
	add	%x24, %x5, %x6  #2227 pc 34624
	lw	%x5, 0(%x24)  #2227 pc 34628
	lw	%x6, 20(%x2)  #2227 pc 34632
	lw	%x22, 16(%x2)  #2227 pc 34636
	lw	%x23, 0(%x22)  #2227 pc 34640
	jalr	%x0, %x23, 0  #2227 pc 34644
	nop #pc 34648
be_else.9549: #pc 34648
	lw	%x5, 12(%x2)  #2218 pc 34652
	sw	%x1, 44(%x2)  #2218 pc 34656
	addi	%x2, %x2, 48  #2218 pc 34660
	jal	%x1, p_calc_diffuse.2730  #2218 pc 34664
	addi	%x2, %x2, -48  #2218 pc 34668
	lw	%x1, 44(%x2) #2218 pc 34672
	lw	%x10, 20(%x2)  #2219 pc 34676
	slli	%x6, %x10, 2  #2219 pc 34680
	add	%x24, %x6, %x5  #2219 pc 34684
	lw	%x5, 0(%x24)  #2219 pc 34688
	beq	%x5, %x0, 12  #2219 pc 34692
	j	be_else.9550 #pc 34696
	nop #pc 34700
	j	be_cont.9551 #pc 34704
	nop #pc 34708
be_else.9550: #pc 34708
	lw	%x5, 36(%x2)  #2220 pc 34712
	lw	%x6, 32(%x2)  #2220 pc 34716
	lw	%x7, 28(%x2)  #2220 pc 34720
	lw	%x9, 24(%x2)  #2220 pc 34724
	lw	%x22, 8(%x2)  #2220 pc 34728
	sw	%x1, 44(%x2)  #2220 pc 34732
	lw	%x23, 0(%x22)  #2220 pc 34736
	addi	%x2, %x2, 48  #2220 pc 34740
	jalr	%x1, %x23, 0  #2220 pc 34744
	addi	%x2, %x2, -48  #2220 pc 34748
	lw	%x1, 44(%x2)  #2220 pc 34752
be_cont.9551: #pc 34752
	lw	%x5, 20(%x2)  #2224 pc 34756
	addi	%x11, %x5, 1  #2224 pc 34760
	lw	%x5, 36(%x2)  #2224 pc 34764
	lw	%x6, 0(%x2)  #2224 pc 34768
	lw	%x7, 32(%x2)  #2224 pc 34772
	lw	%x9, 28(%x2)  #2224 pc 34776
	lw	%x10, 24(%x2)  #2224 pc 34780
	lw	%x22, 4(%x2)  #2224 pc 34784
	lw	%x23, 0(%x22)  #2224 pc 34788
	jalr	%x0, %x23, 0  #2224 pc 34792
	nop #pc 34796
bge_else.9548: #pc 34796
	ret #pc 34800
	nop #pc 34804
ble_else.9547: #pc 34804
	ret #pc 34808
	nop #pc 34812
write_ppm_header.3017:  #pc 34812
	addi	%x24, %x0, 4  #pc 34816
	add	%x24, %x24, %x22  #0 pc 34820
	lw	%x6, 0(%x24)  #0 pc 34824
	addi	%x7, %x0, 80  #0 pc 34828
	sw	%x6, 0(%x2)  #2237 pc 34832
	sw	%x5, 4(%x2)  #2237 pc 34836
	mv	%x5, %x7 #pc 34840
	sw	%x1, 12(%x2)  #2237 pc 34844
	addi	%x2, %x2, 16  #2237 pc 34848
	jal	%x1, print_char.2573  #2237 pc 34852
	addi	%x2, %x2, -16  #2237 pc 34856
	lw	%x1, 12(%x2) #2237 pc 34860
	lw	%x5, 4(%x2)  #2238 pc 34864
	addi	%x5, %x5, 48  #2238 pc 34868
	sw	%x1, 12(%x2)  #2238 pc 34872
	addi	%x2, %x2, 16  #2238 pc 34876
	jal	%x1, print_char.2573  #2238 pc 34880
	addi	%x2, %x2, -16  #2238 pc 34884
	lw	%x1, 12(%x2) #2238 pc 34888
	addi	%x5, %x0, 10  #0 pc 34892
	sw	%x1, 12(%x2)  #2239 pc 34896
	addi	%x2, %x2, 16  #2239 pc 34900
	jal	%x1, print_char.2573  #2239 pc 34904
	addi	%x2, %x2, -16  #2239 pc 34908
	lw	%x1, 12(%x2) #2239 pc 34912
	lw	%x5, 0(%x2)  #2240 pc 34916
	add	%x24, %x0, %x5  #2240 pc 34920
	lw	%x6, 0(%x24)  #2240 pc 34924
	mv	%x5, %x6 #pc 34928
	sw	%x1, 12(%x2)  #2240 pc 34932
	addi	%x2, %x2, 16  #2240 pc 34936
	jal	%x1, print_int.2575  #2240 pc 34940
	addi	%x2, %x2, -16  #2240 pc 34944
	lw	%x1, 12(%x2) #2240 pc 34948
	addi	%x5, %x0, 32  #0 pc 34952
	sw	%x1, 12(%x2)  #2241 pc 34956
	addi	%x2, %x2, 16  #2241 pc 34960
	jal	%x1, print_char.2573  #2241 pc 34964
	addi	%x2, %x2, -16  #2241 pc 34968
	lw	%x1, 12(%x2) #2241 pc 34972
	lw	%x5, 0(%x2)  #2242 pc 34976
	addi	%x24, %x0, 4  #pc 34980
	add	%x24, %x24, %x5  #2242 pc 34984
	lw	%x5, 0(%x24)  #2242 pc 34988
	sw	%x1, 12(%x2)  #2242 pc 34992
	addi	%x2, %x2, 16  #2242 pc 34996
	jal	%x1, print_int.2575  #2242 pc 35000
	addi	%x2, %x2, -16  #2242 pc 35004
	lw	%x1, 12(%x2) #2242 pc 35008
	addi	%x5, %x0, 32  #0 pc 35012
	sw	%x1, 12(%x2)  #2243 pc 35016
	addi	%x2, %x2, 16  #2243 pc 35020
	jal	%x1, print_char.2573  #2243 pc 35024
	addi	%x2, %x2, -16  #2243 pc 35028
	lw	%x1, 12(%x2) #2243 pc 35032
	addi	%x5, %x0, 255  #0 pc 35036
	sw	%x1, 12(%x2)  #2244 pc 35040
	addi	%x2, %x2, 16  #2244 pc 35044
	jal	%x1, print_int.2575  #2244 pc 35048
	addi	%x2, %x2, -16  #2244 pc 35052
	lw	%x1, 12(%x2) #2244 pc 35056
	addi	%x5, %x0, 10  #0 pc 35060
	j	print_char.2573  #2245 pc 35064
	nop #pc 35068
write_rgb_element_int.3019:  #pc 35068
	sw	%x1, 4(%x2)  #2250 pc 35072
	addi	%x2, %x2, 8  #2250 pc 35076
	jal	%x1, int_of_float.2555  #2250 pc 35080
	addi	%x2, %x2, -8  #2250 pc 35084
	lw	%x1, 4(%x2) #2250 pc 35088
	addi	%x24, %x0, 255  #pc 35092
	bge	%x24, %x5, 12  #2251 pc 35096
	j	ble_else.9554 #pc 35100
	nop #pc 35104
	bge	%x5, %x0, 12  #2251 pc 35108
	j	bge_else.9556 #pc 35112
	nop #pc 35116
	j	bge_cont.9557 #pc 35120
	nop #pc 35124
bge_else.9556: #pc 35124
	addi	%x5, %x0, 0  #0 pc 35128
bge_cont.9557: #pc 35128
	j	ble_cont.9555 #pc 35132
	nop #pc 35136
ble_else.9554: #pc 35136
	addi	%x5, %x0, 255  #0 pc 35140
ble_cont.9555: #pc 35140
	j	print_int.2575  #2252 pc 35144
	nop #pc 35148
write_rgb_element_char.3021:  #pc 35148
	sw	%x1, 4(%x2)  #2256 pc 35152
	addi	%x2, %x2, 8  #2256 pc 35156
	jal	%x1, int_of_float.2555  #2256 pc 35160
	addi	%x2, %x2, -8  #2256 pc 35164
	lw	%x1, 4(%x2) #2256 pc 35168
	addi	%x24, %x0, 255  #pc 35172
	bge	%x24, %x5, 12  #2257 pc 35176
	j	ble_else.9558 #pc 35180
	nop #pc 35184
	bge	%x5, %x0, 12  #2257 pc 35188
	j	bge_else.9560 #pc 35192
	nop #pc 35196
	j	bge_cont.9561 #pc 35200
	nop #pc 35204
bge_else.9560: #pc 35204
	addi	%x5, %x0, 0  #0 pc 35208
bge_cont.9561: #pc 35208
	j	ble_cont.9559 #pc 35212
	nop #pc 35216
ble_else.9558: #pc 35216
	addi	%x5, %x0, 255  #0 pc 35220
ble_cont.9559: #pc 35220
	j	print_char.2573  #2258 pc 35224
	nop #pc 35228
write_rgb.3023:  #pc 35228
	addi	%x24, %x0, 4  #pc 35232
	add	%x24, %x24, %x22  #0 pc 35236
	lw	%x6, 0(%x24)  #0 pc 35240
	addi	%x24, %x0, 3  #pc 35244
	beq	%x5, %x24, 12  #2262 pc 35248
	j	be_else.9562 #pc 35252
	nop #pc 35256
	add	%x24, %x0, %x6  #2263 pc 35260
	flw	%f0, 0(%x24)  #2263 pc 35264
	sw	%x6, 0(%x2)  #2263 pc 35268
	sw	%x1, 4(%x2)  #2263 pc 35272
	addi	%x2, %x2, 8  #2263 pc 35276
	jal	%x1, write_rgb_element_int.3019  #2263 pc 35280
	addi	%x2, %x2, -8  #2263 pc 35284
	lw	%x1, 4(%x2) #2263 pc 35288
	addi	%x5, %x0, 32  #0 pc 35292
	sw	%x1, 4(%x2)  #2264 pc 35296
	addi	%x2, %x2, 8  #2264 pc 35300
	jal	%x1, print_char.2573  #2264 pc 35304
	addi	%x2, %x2, -8  #2264 pc 35308
	lw	%x1, 4(%x2) #2264 pc 35312
	lw	%x5, 0(%x2)  #2265 pc 35316
	addi	%x24, %x0, 8  #pc 35320
	add	%x24, %x24, %x5  #2265 pc 35324
	flw	%f0, 0(%x24)  #2265 pc 35328
	sw	%x1, 4(%x2)  #2265 pc 35332
	addi	%x2, %x2, 8  #2265 pc 35336
	jal	%x1, write_rgb_element_int.3019  #2265 pc 35340
	addi	%x2, %x2, -8  #2265 pc 35344
	lw	%x1, 4(%x2) #2265 pc 35348
	addi	%x5, %x0, 32  #0 pc 35352
	sw	%x1, 4(%x2)  #2266 pc 35356
	addi	%x2, %x2, 8  #2266 pc 35360
	jal	%x1, print_char.2573  #2266 pc 35364
	addi	%x2, %x2, -8  #2266 pc 35368
	lw	%x1, 4(%x2) #2266 pc 35372
	lw	%x5, 0(%x2)  #2267 pc 35376
	addi	%x24, %x0, 16  #pc 35380
	add	%x24, %x24, %x5  #2267 pc 35384
	flw	%f0, 0(%x24)  #2267 pc 35388
	sw	%x1, 4(%x2)  #2267 pc 35392
	addi	%x2, %x2, 8  #2267 pc 35396
	jal	%x1, write_rgb_element_int.3019  #2267 pc 35400
	addi	%x2, %x2, -8  #2267 pc 35404
	lw	%x1, 4(%x2) #2267 pc 35408
	addi	%x5, %x0, 10  #0 pc 35412
	j	print_char.2573  #2268 pc 35416
	nop #pc 35420
be_else.9562: #pc 35420
	add	%x24, %x0, %x6  #2270 pc 35424
	flw	%f0, 0(%x24)  #2270 pc 35428
	sw	%x6, 0(%x2)  #2270 pc 35432
	sw	%x1, 4(%x2)  #2270 pc 35436
	addi	%x2, %x2, 8  #2270 pc 35440
	jal	%x1, write_rgb_element_char.3021  #2270 pc 35444
	addi	%x2, %x2, -8  #2270 pc 35448
	lw	%x1, 4(%x2) #2270 pc 35452
	lw	%x5, 0(%x2)  #2271 pc 35456
	addi	%x24, %x0, 8  #pc 35460
	add	%x24, %x24, %x5  #2271 pc 35464
	flw	%f0, 0(%x24)  #2271 pc 35468
	sw	%x1, 4(%x2)  #2271 pc 35472
	addi	%x2, %x2, 8  #2271 pc 35476
	jal	%x1, write_rgb_element_char.3021  #2271 pc 35480
	addi	%x2, %x2, -8  #2271 pc 35484
	lw	%x1, 4(%x2) #2271 pc 35488
	lw	%x5, 0(%x2)  #2272 pc 35492
	addi	%x24, %x0, 16  #pc 35496
	add	%x24, %x24, %x5  #2272 pc 35500
	flw	%f0, 0(%x24)  #2272 pc 35504
	j	write_rgb_element_char.3021  #2272 pc 35508
	nop #pc 35512
pretrace_diffuse_rays.3025:  #pc 35512
	addi	%x24, %x0, 12  #pc 35516
	add	%x24, %x24, %x22  #0 pc 35520
	lw	%x7, 0(%x24)  #0 pc 35524
	addi	%x24, %x0, 8  #pc 35528
	add	%x24, %x24, %x22  #0 pc 35532
	lw	%x9, 0(%x24)  #0 pc 35536
	addi	%x24, %x0, 4  #pc 35540
	add	%x24, %x24, %x22  #0 pc 35544
	lw	%x10, 0(%x24)  #0 pc 35548
	addi	%x24, %x0, 4  #pc 35552
	bge	%x24, %x6, 12  #2285 pc 35556
	j	ble_else.9563 #pc 35560
	nop #pc 35564
	sw	%x22, 0(%x2)  #2288 pc 35568
	sw	%x7, 4(%x2)  #2288 pc 35572
	sw	%x9, 8(%x2)  #2288 pc 35576
	sw	%x10, 12(%x2)  #2288 pc 35580
	sw	%x6, 16(%x2)  #2288 pc 35584
	sw	%x5, 20(%x2)  #2288 pc 35588
	sw	%x1, 28(%x2)  #2288 pc 35592
	addi	%x2, %x2, 32  #2288 pc 35596
	jal	%x1, get_surface_id.3001  #2288 pc 35600
	addi	%x2, %x2, -32  #2288 pc 35604
	lw	%x1, 28(%x2) #2288 pc 35608
	bge	%x5, %x0, 12  #2289 pc 35612
	j	bge_else.9564 #pc 35616
	nop #pc 35620
	lw	%x5, 20(%x2)  #2291 pc 35624
	sw	%x1, 28(%x2)  #2291 pc 35628
	addi	%x2, %x2, 32  #2291 pc 35632
	jal	%x1, p_calc_diffuse.2730  #2291 pc 35636
	addi	%x2, %x2, -32  #2291 pc 35640
	lw	%x1, 28(%x2) #2291 pc 35644
	lw	%x6, 16(%x2)  #2292 pc 35648
	slli	%x7, %x6, 2  #2292 pc 35652
	add	%x24, %x7, %x5  #2292 pc 35656
	lw	%x5, 0(%x24)  #2292 pc 35660
	beq	%x5, %x0, 12  #2292 pc 35664
	j	be_else.9565 #pc 35668
	nop #pc 35672
	j	be_cont.9566 #pc 35676
	nop #pc 35680
be_else.9565: #pc 35680
	lw	%x5, 20(%x2)  #2293 pc 35684
	sw	%x1, 28(%x2)  #2293 pc 35688
	addi	%x2, %x2, 32  #2293 pc 35692
	jal	%x1, p_group_id.2736  #2293 pc 35696
	addi	%x2, %x2, -32  #2293 pc 35700
	lw	%x1, 28(%x2) #2293 pc 35704
	lw	%x6, 12(%x2)  #2294 pc 35708
	sw	%x5, 24(%x2)  #2294 pc 35712
	mv	%x5, %x6 #pc 35716
	sw	%x1, 28(%x2)  #2294 pc 35720
	addi	%x2, %x2, 32  #2294 pc 35724
	jal	%x1, vecbzero.2652  #2294 pc 35728
	addi	%x2, %x2, -32  #2294 pc 35732
	lw	%x1, 28(%x2) #2294 pc 35736
	lw	%x5, 20(%x2)  #2298 pc 35740
	sw	%x1, 28(%x2)  #2298 pc 35744
	addi	%x2, %x2, 32  #2298 pc 35748
	jal	%x1, p_nvectors.2741  #2298 pc 35752
	addi	%x2, %x2, -32  #2298 pc 35756
	lw	%x1, 28(%x2) #2298 pc 35760
	lw	%x6, 20(%x2)  #2299 pc 35764
	sw	%x5, 28(%x2)  #2299 pc 35768
	mv	%x5, %x6 #pc 35772
	sw	%x1, 36(%x2)  #2299 pc 35776
	addi	%x2, %x2, 40  #2299 pc 35780
	jal	%x1, p_intersection_points.2726  #2299 pc 35784
	addi	%x2, %x2, -40  #2299 pc 35788
	lw	%x1, 36(%x2) #2299 pc 35792
	lw	%x6, 24(%x2)  #2301 pc 35796
	slli	%x6, %x6, 2  #2301 pc 35800
	lw	%x7, 8(%x2)  #2301 pc 35804
	add	%x24, %x6, %x7  #2301 pc 35808
	lw	%x6, 0(%x24)  #2301 pc 35812
	lw	%x7, 16(%x2)  #2302 pc 35816
	slli	%x9, %x7, 2  #2302 pc 35820
	lw	%x10, 28(%x2)  #2302 pc 35824
	add	%x24, %x9, %x10  #2302 pc 35828
	lw	%x9, 0(%x24)  #2302 pc 35832
	slli	%x10, %x7, 2  #2303 pc 35836
	add	%x24, %x10, %x5  #2303 pc 35840
	lw	%x5, 0(%x24)  #2303 pc 35844
	lw	%x22, 4(%x2)  #2300 pc 35848
	mv	%x7, %x5 #pc 35852
	mv	%x5, %x6 #pc 35856
	mv	%x6, %x9 #pc 35860
	sw	%x1, 36(%x2)  #2300 pc 35864
	lw	%x23, 0(%x22)  #2300 pc 35868
	addi	%x2, %x2, 40  #2300 pc 35872
	jalr	%x1, %x23, 0  #2300 pc 35876
	addi	%x2, %x2, -40  #2300 pc 35880
	lw	%x1, 36(%x2)  #2300 pc 35884
	lw	%x5, 20(%x2)  #2304 pc 35888
	sw	%x1, 36(%x2)  #2304 pc 35892
	addi	%x2, %x2, 40  #2304 pc 35896
	jal	%x1, p_received_ray_20percent.2734  #2304 pc 35900
	addi	%x2, %x2, -40  #2304 pc 35904
	lw	%x1, 36(%x2) #2304 pc 35908
	lw	%x6, 16(%x2)  #2305 pc 35912
	slli	%x7, %x6, 2  #2305 pc 35916
	add	%x24, %x7, %x5  #2305 pc 35920
	lw	%x5, 0(%x24)  #2305 pc 35924
	lw	%x7, 12(%x2)  #2305 pc 35928
	mv	%x6, %x7 #pc 35932
	sw	%x1, 36(%x2)  #2305 pc 35936
	addi	%x2, %x2, 40  #2305 pc 35940
	jal	%x1, veccpy.2654  #2305 pc 35944
	addi	%x2, %x2, -40  #2305 pc 35948
	lw	%x1, 36(%x2) #2305 pc 35952
be_cont.9566: #pc 35952
	lw	%x5, 16(%x2)  #2307 pc 35956
	addi	%x6, %x5, 1  #2307 pc 35960
	lw	%x5, 20(%x2)  #2307 pc 35964
	lw	%x22, 0(%x2)  #2307 pc 35968
	lw	%x23, 0(%x22)  #2307 pc 35972
	jalr	%x0, %x23, 0  #2307 pc 35976
	nop #pc 35980
bge_else.9564: #pc 35980
	ret #pc 35984
	nop #pc 35988
ble_else.9563: #pc 35988
	ret #pc 35992
	nop #pc 35996
pretrace_pixels.3028:  #pc 35996
	addi	%x24, %x0, 36  #pc 36000
	add	%x24, %x24, %x22  #0 pc 36004
	lw	%x9, 0(%x24)  #0 pc 36008
	addi	%x24, %x0, 32  #pc 36012
	add	%x24, %x24, %x22  #0 pc 36016
	lw	%x10, 0(%x24)  #0 pc 36020
	addi	%x24, %x0, 28  #pc 36024
	add	%x24, %x24, %x22  #0 pc 36028
	lw	%x11, 0(%x24)  #0 pc 36032
	addi	%x24, %x0, 24  #pc 36036
	add	%x24, %x24, %x22  #0 pc 36040
	lw	%x12, 0(%x24)  #0 pc 36044
	addi	%x24, %x0, 20  #pc 36048
	add	%x24, %x24, %x22  #0 pc 36052
	lw	%x13, 0(%x24)  #0 pc 36056
	addi	%x24, %x0, 16  #pc 36060
	add	%x24, %x24, %x22  #0 pc 36064
	lw	%x14, 0(%x24)  #0 pc 36068
	addi	%x24, %x0, 12  #pc 36072
	add	%x24, %x24, %x22  #0 pc 36076
	lw	%x15, 0(%x24)  #0 pc 36080
	addi	%x24, %x0, 8  #pc 36084
	add	%x24, %x24, %x22  #0 pc 36088
	lw	%x16, 0(%x24)  #0 pc 36092
	addi	%x24, %x0, 4  #pc 36096
	add	%x24, %x24, %x22  #0 pc 36100
	lw	%x17, 0(%x24)  #0 pc 36104
	bge	%x6, %x0, 12  #2315 pc 36108
	j	bge_else.9569 #pc 36112
	nop #pc 36116
	add	%x24, %x0, %x13  #2317 pc 36120
	flw	%f6, 0(%x24)  #2317 pc 36124
	add	%x24, %x0, %x17  #2317 pc 36128
	lw	%x13, 0(%x24)  #2317 pc 36132
	sub	%x13, %x6, %x13  #2317 pc 36136
	sw	%x22, 0(%x2)  #2317 pc 36140
	sw	%x16, 4(%x2)  #2317 pc 36144
	sw	%x7, 8(%x2)  #2317 pc 36148
	sw	%x10, 12(%x2)  #2317 pc 36152
	sw	%x5, 16(%x2)  #2317 pc 36156
	sw	%x6, 20(%x2)  #2317 pc 36160
	sw	%x9, 24(%x2)  #2317 pc 36164
	sw	%x11, 28(%x2)  #2317 pc 36168
	sw	%x14, 32(%x2)  #2317 pc 36172
	fsw	%f4, 40(%x2)  #2317 pc 36176
	fsw	%f2, 48(%x2)  #2317 pc 36180
	sw	%x15, 56(%x2)  #2317 pc 36184
	fsw	%f0, 64(%x2)  #2317 pc 36188
	sw	%x12, 72(%x2)  #2317 pc 36192
	fsw	%f6, 80(%x2)  #2317 pc 36196
	mv	%x5, %x13 #pc 36200
	sw	%x1, 92(%x2)  #2317 pc 36204
	addi	%x2, %x2, 96  #2317 pc 36208
	jal	%x1, float_of_int.2553  #2317 pc 36212
	addi	%x2, %x2, -96  #2317 pc 36216
	lw	%x1, 92(%x2) #2317 pc 36220
	flw	%f2, 80(%x2)  #2317 pc 36224
	fmul	%f0, %f2, %f0  #2317 pc 36228
	lw	%x5, 72(%x2)  #2318 pc 36232
	add	%x24, %x0, %x5  #2318 pc 36236
	flw	%f2, 0(%x24)  #2318 pc 36240
	fmul	%f2, %f0, %f2  #2318 pc 36244
	flw	%f4, 64(%x2)  #2318 pc 36248
	fadd	%f2, %f2, %f4  #2318 pc 36252
	lw	%x6, 56(%x2)  #2318 pc 36256
	add	%x24, %x0, %x6  #2318 pc 36260
	fsw	%f2, 0(%x24) #2318 pc 36264
	addi	%x24, %x0, 8  #pc 36268
	add	%x24, %x24, %x5  #2319 pc 36272
	flw	%f2, 0(%x24)  #2319 pc 36276
	fmul	%f2, %f0, %f2  #2319 pc 36280
	flw	%f6, 48(%x2)  #2319 pc 36284
	fadd	%f2, %f2, %f6  #2319 pc 36288
	addi	%x24, %x0, 8  #pc 36292
	add	%x24, %x24, %x6  #2319 pc 36296
	fsw	%f2, 0(%x24) #2319 pc 36300
	addi	%x24, %x0, 16  #pc 36304
	add	%x24, %x24, %x5  #2320 pc 36308
	flw	%f2, 0(%x24)  #2320 pc 36312
	fmul	%f0, %f0, %f2  #2320 pc 36316
	flw	%f2, 40(%x2)  #2320 pc 36320
	fadd	%f0, %f0, %f2  #2320 pc 36324
	addi	%x24, %x0, 16  #pc 36328
	add	%x24, %x24, %x6  #2320 pc 36332
	fsw	%f0, 0(%x24) #2320 pc 36336
	addi	%x5, %x0, 0  #0 pc 36340
	mv	%x23, %x6 #pc 36344
	mv	%x6, %x5 #pc 36348
	mv	%x5, %x23 #pc 36352
	sw	%x1, 92(%x2)  #2321 pc 36356
	addi	%x2, %x2, 96  #2321 pc 36360
	jal	%x1, vecunit_sgn.2657  #2321 pc 36364
	addi	%x2, %x2, -96  #2321 pc 36368
	lw	%x1, 92(%x2) #2321 pc 36372
	lw	%x5, 32(%x2)  #2322 pc 36376
	sw	%x1, 92(%x2)  #2322 pc 36380
	addi	%x2, %x2, 96  #2322 pc 36384
	jal	%x1, vecbzero.2652  #2322 pc 36388
	addi	%x2, %x2, -96  #2322 pc 36392
	lw	%x1, 92(%x2) #2322 pc 36396
	lw	%x5, 28(%x2)  #2323 pc 36400
	lw	%x6, 24(%x2)  #2323 pc 36404
	sw	%x1, 92(%x2)  #2323 pc 36408
	addi	%x2, %x2, 96  #2323 pc 36412
	jal	%x1, veccpy.2654  #2323 pc 36416
	addi	%x2, %x2, -96  #2323 pc 36420
	lw	%x1, 92(%x2) #2323 pc 36424
	addi	%x5, %x0, 0  #0 pc 36428
	mv	%f0, l.6305  #0 pc 36432
	lw	%x6, 20(%x2)  #2326 pc 36436
	slli	%x7, %x6, 2  #2326 pc 36440
	lw	%x9, 16(%x2)  #2326 pc 36444
	add	%x24, %x7, %x9  #2326 pc 36448
	lw	%x7, 0(%x24)  #2326 pc 36452
	mv	%f2, l.6293  #0 pc 36456
	lw	%x10, 56(%x2)  #2326 pc 36460
	lw	%x22, 12(%x2)  #2326 pc 36464
	mv	%x6, %x10 #pc 36468
	sw	%x1, 92(%x2)  #2326 pc 36472
	lw	%x23, 0(%x22)  #2326 pc 36476
	addi	%x2, %x2, 96  #2326 pc 36480
	jalr	%x1, %x23, 0  #2326 pc 36484
	addi	%x2, %x2, -96  #2326 pc 36488
	lw	%x1, 92(%x2)  #2326 pc 36492
	lw	%x5, 20(%x2)  #2327 pc 36496
	slli	%x6, %x5, 2  #2327 pc 36500
	lw	%x7, 16(%x2)  #2327 pc 36504
	add	%x24, %x6, %x7  #2327 pc 36508
	lw	%x6, 0(%x24)  #2327 pc 36512
	mv	%x5, %x6 #pc 36516
	sw	%x1, 92(%x2)  #2327 pc 36520
	addi	%x2, %x2, 96  #2327 pc 36524
	jal	%x1, p_rgb.2724  #2327 pc 36528
	addi	%x2, %x2, -96  #2327 pc 36532
	lw	%x1, 92(%x2) #2327 pc 36536
	lw	%x6, 32(%x2)  #2327 pc 36540
	sw	%x1, 92(%x2)  #2327 pc 36544
	addi	%x2, %x2, 96  #2327 pc 36548
	jal	%x1, veccpy.2654  #2327 pc 36552
	addi	%x2, %x2, -96  #2327 pc 36556
	lw	%x1, 92(%x2) #2327 pc 36560
	lw	%x5, 20(%x2)  #2328 pc 36564
	slli	%x6, %x5, 2  #2328 pc 36568
	lw	%x7, 16(%x2)  #2328 pc 36572
	add	%x24, %x6, %x7  #2328 pc 36576
	lw	%x6, 0(%x24)  #2328 pc 36580
	lw	%x9, 8(%x2)  #2328 pc 36584
	mv	%x5, %x6 #pc 36588
	mv	%x6, %x9 #pc 36592
	sw	%x1, 92(%x2)  #2328 pc 36596
	addi	%x2, %x2, 96  #2328 pc 36600
	jal	%x1, p_set_group_id.2738  #2328 pc 36604
	addi	%x2, %x2, -96  #2328 pc 36608
	lw	%x1, 92(%x2) #2328 pc 36612
	lw	%x5, 20(%x2)  #2331 pc 36616
	slli	%x6, %x5, 2  #2331 pc 36620
	lw	%x7, 16(%x2)  #2331 pc 36624
	add	%x24, %x6, %x7  #2331 pc 36628
	lw	%x6, 0(%x24)  #2331 pc 36632
	addi	%x9, %x0, 0  #0 pc 36636
	lw	%x22, 4(%x2)  #2331 pc 36640
	mv	%x5, %x6 #pc 36644
	mv	%x6, %x9 #pc 36648
	sw	%x1, 92(%x2)  #2331 pc 36652
	lw	%x23, 0(%x22)  #2331 pc 36656
	addi	%x2, %x2, 96  #2331 pc 36660
	jalr	%x1, %x23, 0  #2331 pc 36664
	addi	%x2, %x2, -96  #2331 pc 36668
	lw	%x1, 92(%x2)  #2331 pc 36672
	lw	%x5, 20(%x2)  #2333 pc 36676
	addi	%x5, %x5, -1  #2333 pc 36680
	addi	%x6, %x0, 1  #0 pc 36684
	lw	%x7, 8(%x2)  #2333 pc 36688
	sw	%x5, 88(%x2)  #2333 pc 36692
	mv	%x5, %x7 #pc 36696
	sw	%x1, 92(%x2)  #2333 pc 36700
	addi	%x2, %x2, 96  #2333 pc 36704
	jal	%x1, add_mod5.2641  #2333 pc 36708
	addi	%x2, %x2, -96  #2333 pc 36712
	lw	%x1, 92(%x2) #2333 pc 36716
	mv	%x7, %x5  #2333 pc 36720
	flw	%f0, 64(%x2)  #2333 pc 36724
	flw	%f2, 48(%x2)  #2333 pc 36728
	flw	%f4, 40(%x2)  #2333 pc 36732
	lw	%x5, 16(%x2)  #2333 pc 36736
	lw	%x6, 88(%x2)  #2333 pc 36740
	lw	%x22, 0(%x2)  #2333 pc 36744
	lw	%x23, 0(%x22)  #2333 pc 36748
	jalr	%x0, %x23, 0  #2333 pc 36752
	nop #pc 36756
bge_else.9569: #pc 36756
	ret #pc 36760
	nop #pc 36764
pretrace_line.3035:  #pc 36764
	addi	%x24, %x0, 24  #pc 36768
	add	%x24, %x24, %x22  #0 pc 36772
	lw	%x9, 0(%x24)  #0 pc 36776
	addi	%x24, %x0, 20  #pc 36780
	add	%x24, %x24, %x22  #0 pc 36784
	lw	%x10, 0(%x24)  #0 pc 36788
	addi	%x24, %x0, 16  #pc 36792
	add	%x24, %x24, %x22  #0 pc 36796
	lw	%x11, 0(%x24)  #0 pc 36800
	addi	%x24, %x0, 12  #pc 36804
	add	%x24, %x24, %x22  #0 pc 36808
	lw	%x12, 0(%x24)  #0 pc 36812
	addi	%x24, %x0, 8  #pc 36816
	add	%x24, %x24, %x22  #0 pc 36820
	lw	%x13, 0(%x24)  #0 pc 36824
	addi	%x24, %x0, 4  #pc 36828
	add	%x24, %x24, %x22  #0 pc 36832
	lw	%x14, 0(%x24)  #0 pc 36836
	add	%x24, %x0, %x11  #2340 pc 36840
	flw	%f0, 0(%x24)  #2340 pc 36844
	addi	%x24, %x0, 4  #pc 36848
	add	%x24, %x24, %x14  #2340 pc 36852
	lw	%x11, 0(%x24)  #2340 pc 36856
	sub	%x6, %x6, %x11  #2340 pc 36860
	sw	%x7, 0(%x2)  #2340 pc 36864
	sw	%x5, 4(%x2)  #2340 pc 36868
	sw	%x12, 8(%x2)  #2340 pc 36872
	sw	%x13, 12(%x2)  #2340 pc 36876
	sw	%x9, 16(%x2)  #2340 pc 36880
	sw	%x10, 20(%x2)  #2340 pc 36884
	fsw	%f0, 24(%x2)  #2340 pc 36888
	mv	%x5, %x6 #pc 36892
	sw	%x1, 36(%x2)  #2340 pc 36896
	addi	%x2, %x2, 40  #2340 pc 36900
	jal	%x1, float_of_int.2553  #2340 pc 36904
	addi	%x2, %x2, -40  #2340 pc 36908
	lw	%x1, 36(%x2) #2340 pc 36912
	flw	%f2, 24(%x2)  #2340 pc 36916
	fmul	%f0, %f2, %f0  #2340 pc 36920
	lw	%x5, 20(%x2)  #2343 pc 36924
	add	%x24, %x0, %x5  #2343 pc 36928
	flw	%f2, 0(%x24)  #2343 pc 36932
	fmul	%f2, %f0, %f2  #2343 pc 36936
	lw	%x6, 16(%x2)  #2343 pc 36940
	add	%x24, %x0, %x6  #2343 pc 36944
	flw	%f4, 0(%x24)  #2343 pc 36948
	fadd	%f2, %f2, %f4  #2343 pc 36952
	addi	%x24, %x0, 8  #pc 36956
	add	%x24, %x24, %x5  #2344 pc 36960
	flw	%f4, 0(%x24)  #2344 pc 36964
	fmul	%f4, %f0, %f4  #2344 pc 36968
	addi	%x24, %x0, 8  #pc 36972
	add	%x24, %x24, %x6  #2344 pc 36976
	flw	%f6, 0(%x24)  #2344 pc 36980
	fadd	%f4, %f4, %f6  #2344 pc 36984
	addi	%x24, %x0, 16  #pc 36988
	add	%x24, %x24, %x5  #2345 pc 36992
	flw	%f6, 0(%x24)  #2345 pc 36996
	fmul	%f0, %f0, %f6  #2345 pc 37000
	addi	%x24, %x0, 16  #pc 37004
	add	%x24, %x24, %x6  #2345 pc 37008
	flw	%f6, 0(%x24)  #2345 pc 37012
	fadd	%f0, %f0, %f6  #2345 pc 37016
	lw	%x5, 12(%x2)  #2346 pc 37020
	add	%x24, %x0, %x5  #2346 pc 37024
	lw	%x5, 0(%x24)  #2346 pc 37028
	addi	%x6, %x5, -1  #2346 pc 37032
	lw	%x5, 4(%x2)  #2346 pc 37036
	lw	%x7, 0(%x2)  #2346 pc 37040
	lw	%x22, 8(%x2)  #2346 pc 37044
	mv	%f28, %f4 #pc 37048
	mv	%f29, %f5 #pc 37052
	mv	%f4, %f0 #pc 37056
	mv	%f5, %f1 #pc 37060
	mv	%f0, %f2 #pc 37064
	mv	%f1, %f3 #pc 37068
	mv	%f2, %f28 #pc 37072
	mv	%f3, %f29 #pc 37076
	lw	%x23, 0(%x22)  #2346 pc 37080
	jalr	%x0, %x23, 0  #2346 pc 37084
	nop #pc 37088
scan_pixel.3039:  #pc 37088
	addi	%x24, %x0, 24  #pc 37092
	add	%x24, %x24, %x22  #0 pc 37096
	lw	%x12, 0(%x24)  #0 pc 37100
	addi	%x24, %x0, 20  #pc 37104
	add	%x24, %x24, %x22  #0 pc 37108
	lw	%x13, 0(%x24)  #0 pc 37112
	addi	%x24, %x0, 16  #pc 37116
	add	%x24, %x24, %x22  #0 pc 37120
	lw	%x14, 0(%x24)  #0 pc 37124
	addi	%x24, %x0, 12  #pc 37128
	add	%x24, %x24, %x22  #0 pc 37132
	lw	%x15, 0(%x24)  #0 pc 37136
	addi	%x24, %x0, 8  #pc 37140
	add	%x24, %x24, %x22  #0 pc 37144
	lw	%x16, 0(%x24)  #0 pc 37148
	addi	%x24, %x0, 4  #pc 37152
	add	%x24, %x24, %x22  #0 pc 37156
	lw	%x17, 0(%x24)  #0 pc 37160
	add	%x24, %x0, %x16  #2356 pc 37164
	lw	%x16, 0(%x24)  #2356 pc 37168
	bge	%x5, %x16, 12  #2356 pc 37172
	j	ble_else.9574 #pc 37176
	nop #pc 37180
	ret #pc 37184
	nop #pc 37188
ble_else.9574: #pc 37188
	slli	%x16, %x5, 2  #2359 pc 37192
	add	%x24, %x16, %x9  #2359 pc 37196
	lw	%x16, 0(%x24)  #2359 pc 37200
	sw	%x22, 0(%x2)  #2359 pc 37204
	sw	%x11, 4(%x2)  #2359 pc 37208
	sw	%x12, 8(%x2)  #2359 pc 37212
	sw	%x7, 12(%x2)  #2359 pc 37216
	sw	%x13, 16(%x2)  #2359 pc 37220
	sw	%x17, 20(%x2)  #2359 pc 37224
	sw	%x9, 24(%x2)  #2359 pc 37228
	sw	%x10, 28(%x2)  #2359 pc 37232
	sw	%x6, 32(%x2)  #2359 pc 37236
	sw	%x5, 36(%x2)  #2359 pc 37240
	sw	%x15, 40(%x2)  #2359 pc 37244
	sw	%x14, 44(%x2)  #2359 pc 37248
	mv	%x5, %x16 #pc 37252
	sw	%x1, 52(%x2)  #2359 pc 37256
	addi	%x2, %x2, 56  #2359 pc 37260
	jal	%x1, p_rgb.2724  #2359 pc 37264
	addi	%x2, %x2, -56  #2359 pc 37268
	lw	%x1, 52(%x2) #2359 pc 37272
	mv	%x6, %x5  #2359 pc 37276
	lw	%x5, 44(%x2)  #2359 pc 37280
	sw	%x1, 52(%x2)  #2359 pc 37284
	addi	%x2, %x2, 56  #2359 pc 37288
	jal	%x1, veccpy.2654  #2359 pc 37292
	addi	%x2, %x2, -56  #2359 pc 37296
	lw	%x1, 52(%x2) #2359 pc 37300
	lw	%x5, 36(%x2)  #2362 pc 37304
	lw	%x6, 32(%x2)  #2362 pc 37308
	lw	%x7, 28(%x2)  #2362 pc 37312
	lw	%x22, 40(%x2)  #2362 pc 37316
	sw	%x1, 52(%x2)  #2362 pc 37320
	lw	%x23, 0(%x22)  #2362 pc 37324
	addi	%x2, %x2, 56  #2362 pc 37328
	jalr	%x1, %x23, 0  #2362 pc 37332
	addi	%x2, %x2, -56  #2362 pc 37336
	lw	%x1, 52(%x2)  #2362 pc 37340
	beq	%x5, %x0, 12  #2362 pc 37344
	j	be_else.9576 #pc 37348
	nop #pc 37352
	lw	%x5, 36(%x2)  #2365 pc 37356
	slli	%x6, %x5, 2  #2365 pc 37360
	lw	%x7, 24(%x2)  #2365 pc 37364
	add	%x24, %x6, %x7  #2365 pc 37368
	lw	%x6, 0(%x24)  #2365 pc 37372
	addi	%x9, %x0, 0  #0 pc 37376
	lw	%x22, 20(%x2)  #2365 pc 37380
	mv	%x5, %x6 #pc 37384
	mv	%x6, %x9 #pc 37388
	sw	%x1, 52(%x2)  #2365 pc 37392
	lw	%x23, 0(%x22)  #2365 pc 37396
	addi	%x2, %x2, 56  #2365 pc 37400
	jalr	%x1, %x23, 0  #2365 pc 37404
	addi	%x2, %x2, -56  #2365 pc 37408
	lw	%x1, 52(%x2)  #2365 pc 37412
	j	be_cont.9577 #pc 37416
	nop #pc 37420
be_else.9576: #pc 37420
	addi	%x11, %x0, 0  #0 pc 37424
	lw	%x5, 36(%x2)  #2363 pc 37428
	lw	%x6, 32(%x2)  #2363 pc 37432
	lw	%x7, 12(%x2)  #2363 pc 37436
	lw	%x9, 24(%x2)  #2363 pc 37440
	lw	%x10, 28(%x2)  #2363 pc 37444
	lw	%x22, 16(%x2)  #2363 pc 37448
	sw	%x1, 52(%x2)  #2363 pc 37452
	lw	%x23, 0(%x22)  #2363 pc 37456
	addi	%x2, %x2, 56  #2363 pc 37460
	jalr	%x1, %x23, 0  #2363 pc 37464
	addi	%x2, %x2, -56  #2363 pc 37468
	lw	%x1, 52(%x2)  #2363 pc 37472
be_cont.9577: #pc 37472
	lw	%x5, 4(%x2)  #2368 pc 37476
	lw	%x22, 8(%x2)  #2368 pc 37480
	sw	%x1, 52(%x2)  #2368 pc 37484
	lw	%x23, 0(%x22)  #2368 pc 37488
	addi	%x2, %x2, 56  #2368 pc 37492
	jalr	%x1, %x23, 0  #2368 pc 37496
	addi	%x2, %x2, -56  #2368 pc 37500
	lw	%x1, 52(%x2)  #2368 pc 37504
	lw	%x5, 36(%x2)  #2370 pc 37508
	addi	%x5, %x5, 1  #2370 pc 37512
	lw	%x6, 32(%x2)  #2370 pc 37516
	lw	%x7, 12(%x2)  #2370 pc 37520
	lw	%x9, 24(%x2)  #2370 pc 37524
	lw	%x10, 28(%x2)  #2370 pc 37528
	lw	%x11, 4(%x2)  #2370 pc 37532
	lw	%x22, 0(%x2)  #2370 pc 37536
	lw	%x23, 0(%x22)  #2370 pc 37540
	jalr	%x0, %x23, 0  #2370 pc 37544
	nop #pc 37548
scan_line.3046:  #pc 37548
	addi	%x24, %x0, 12  #pc 37552
	add	%x24, %x24, %x22  #0 pc 37556
	lw	%x12, 0(%x24)  #0 pc 37560
	addi	%x24, %x0, 8  #pc 37564
	add	%x24, %x24, %x22  #0 pc 37568
	lw	%x13, 0(%x24)  #0 pc 37572
	addi	%x24, %x0, 4  #pc 37576
	add	%x24, %x24, %x22  #0 pc 37580
	lw	%x14, 0(%x24)  #0 pc 37584
	addi	%x24, %x0, 4  #pc 37588
	add	%x24, %x24, %x14  #2377 pc 37592
	lw	%x15, 0(%x24)  #2377 pc 37596
	bge	%x5, %x15, 12  #2377 pc 37600
	j	ble_else.9578 #pc 37604
	nop #pc 37608
	ret #pc 37612
	nop #pc 37616
ble_else.9578: #pc 37616
	addi	%x24, %x0, 4  #pc 37620
	add	%x24, %x24, %x14  #2379 pc 37624
	lw	%x14, 0(%x24)  #2379 pc 37628
	addi	%x14, %x14, -1  #2379 pc 37632
	sw	%x22, 0(%x2)  #2379 pc 37636
	sw	%x10, 4(%x2)  #2379 pc 37640
	sw	%x11, 8(%x2)  #2379 pc 37644
	sw	%x9, 12(%x2)  #2379 pc 37648
	sw	%x7, 16(%x2)  #2379 pc 37652
	sw	%x6, 20(%x2)  #2379 pc 37656
	sw	%x5, 24(%x2)  #2379 pc 37660
	sw	%x12, 28(%x2)  #2379 pc 37664
	bge	%x5, %x14, 12  #2379 pc 37668
	j	ble_else.9580 #pc 37672
	nop #pc 37676
	j	ble_cont.9581 #pc 37680
	nop #pc 37684
ble_else.9580: #pc 37684
	addi	%x14, %x5, 1  #2380 pc 37688
	mv	%x7, %x10 #pc 37692
	mv	%x6, %x14 #pc 37696
	mv	%x5, %x9 #pc 37700
	mv	%x22, %x13 #pc 37704
	sw	%x1, 36(%x2)  #2380 pc 37708
	lw	%x23, 0(%x22)  #2380 pc 37712
	addi	%x2, %x2, 40  #2380 pc 37716
	jalr	%x1, %x23, 0  #2380 pc 37720
	addi	%x2, %x2, -40  #2380 pc 37724
	lw	%x1, 36(%x2)  #2380 pc 37728
ble_cont.9581: #pc 37728
	addi	%x5, %x0, 0  #0 pc 37732
	lw	%x6, 24(%x2)  #2382 pc 37736
	lw	%x7, 20(%x2)  #2382 pc 37740
	lw	%x9, 16(%x2)  #2382 pc 37744
	lw	%x10, 12(%x2)  #2382 pc 37748
	lw	%x11, 8(%x2)  #2382 pc 37752
	lw	%x22, 28(%x2)  #2382 pc 37756
	sw	%x1, 36(%x2)  #2382 pc 37760
	lw	%x23, 0(%x22)  #2382 pc 37764
	addi	%x2, %x2, 40  #2382 pc 37768
	jalr	%x1, %x23, 0  #2382 pc 37772
	addi	%x2, %x2, -40  #2382 pc 37776
	lw	%x1, 36(%x2)  #2382 pc 37780
	lw	%x5, 24(%x2)  #2383 pc 37784
	addi	%x5, %x5, 1  #2383 pc 37788
	addi	%x6, %x0, 2  #0 pc 37792
	lw	%x7, 4(%x2)  #2383 pc 37796
	sw	%x5, 32(%x2)  #2383 pc 37800
	mv	%x5, %x7 #pc 37804
	sw	%x1, 36(%x2)  #2383 pc 37808
	addi	%x2, %x2, 40  #2383 pc 37812
	jal	%x1, add_mod5.2641  #2383 pc 37816
	addi	%x2, %x2, -40  #2383 pc 37820
	lw	%x1, 36(%x2) #2383 pc 37824
	mv	%x10, %x5  #2383 pc 37828
	lw	%x5, 32(%x2)  #2383 pc 37832
	lw	%x6, 16(%x2)  #2383 pc 37836
	lw	%x7, 12(%x2)  #2383 pc 37840
	lw	%x9, 20(%x2)  #2383 pc 37844
	lw	%x11, 8(%x2)  #2383 pc 37848
	lw	%x22, 0(%x2)  #2383 pc 37852
	lw	%x23, 0(%x22)  #2383 pc 37856
	jalr	%x0, %x23, 0  #2383 pc 37860
	nop #pc 37864
create_float5x3array.3053:  #pc 37864
	addi	%x5, %x0, 3  #0 pc 37868
	mv	%f0, l.6293  #0 pc 37872
	sw	%x1, 4(%x2)  #2394 pc 37876
	addi	%x2, %x2, 8  #2394 pc 37880
	jal	%x1, create_float_array.2600  #2394 pc 37884
	addi	%x2, %x2, -8  #2394 pc 37888
	lw	%x1, 4(%x2) #2394 pc 37892
	mv	%x6, %x5  #2394 pc 37896
	addi	%x5, %x0, 5  #0 pc 37900
	sw	%x1, 4(%x2)  #2395 pc 37904
	addi	%x2, %x2, 8  #2395 pc 37908
	jal	%x1, create_array.2593  #2395 pc 37912
	addi	%x2, %x2, -8  #2395 pc 37916
	lw	%x1, 4(%x2) #2395 pc 37920
	addi	%x6, %x0, 3  #0 pc 37924
	mv	%f0, l.6293  #0 pc 37928
	sw	%x5, 0(%x2)  #2396 pc 37932
	mv	%x5, %x6 #pc 37936
	sw	%x1, 4(%x2)  #2396 pc 37940
	addi	%x2, %x2, 8  #2396 pc 37944
	jal	%x1, create_float_array.2600  #2396 pc 37948
	addi	%x2, %x2, -8  #2396 pc 37952
	lw	%x1, 4(%x2) #2396 pc 37956
	lw	%x6, 0(%x2)  #2396 pc 37960
	addi	%x24, %x0, 4  #pc 37964
	add	%x24, %x24, %x6  #2396 pc 37968
	sw	%x5, 0(%x24)  #2396 pc 37972
	addi	%x5, %x0, 3  #0 pc 37976
	mv	%f0, l.6293  #0 pc 37980
	sw	%x1, 4(%x2)  #2397 pc 37984
	addi	%x2, %x2, 8  #2397 pc 37988
	jal	%x1, create_float_array.2600  #2397 pc 37992
	addi	%x2, %x2, -8  #2397 pc 37996
	lw	%x1, 4(%x2) #2397 pc 38000
	lw	%x6, 0(%x2)  #2397 pc 38004
	addi	%x24, %x0, 8  #pc 38008
	add	%x24, %x24, %x6  #2397 pc 38012
	sw	%x5, 0(%x24)  #2397 pc 38016
	addi	%x5, %x0, 3  #0 pc 38020
	mv	%f0, l.6293  #0 pc 38024
	sw	%x1, 4(%x2)  #2398 pc 38028
	addi	%x2, %x2, 8  #2398 pc 38032
	jal	%x1, create_float_array.2600  #2398 pc 38036
	addi	%x2, %x2, -8  #2398 pc 38040
	lw	%x1, 4(%x2) #2398 pc 38044
	lw	%x6, 0(%x2)  #2398 pc 38048
	addi	%x24, %x0, 12  #pc 38052
	add	%x24, %x24, %x6  #2398 pc 38056
	sw	%x5, 0(%x24)  #2398 pc 38060
	addi	%x5, %x0, 3  #0 pc 38064
	mv	%f0, l.6293  #0 pc 38068
	sw	%x1, 4(%x2)  #2399 pc 38072
	addi	%x2, %x2, 8  #2399 pc 38076
	jal	%x1, create_float_array.2600  #2399 pc 38080
	addi	%x2, %x2, -8  #2399 pc 38084
	lw	%x1, 4(%x2) #2399 pc 38088
	lw	%x6, 0(%x2)  #2399 pc 38092
	addi	%x24, %x0, 16  #pc 38096
	add	%x24, %x24, %x6  #2399 pc 38100
	sw	%x5, 0(%x24)  #2399 pc 38104
	mv	%x5, %x6  #2400 pc 38108
	ret #pc 38112
	nop #pc 38116
create_pixel.3055:  #pc 38116
	addi	%x5, %x0, 3  #0 pc 38120
	mv	%f0, l.6293  #0 pc 38124
	sw	%x1, 4(%x2)  #2406 pc 38128
	addi	%x2, %x2, 8  #2406 pc 38132
	jal	%x1, create_float_array.2600  #2406 pc 38136
	addi	%x2, %x2, -8  #2406 pc 38140
	lw	%x1, 4(%x2) #2406 pc 38144
	sw	%x5, 0(%x2)  #2407 pc 38148
	mv	%x5, %g0 #pc 38152
	sw	%x1, 4(%x2)  #2407 pc 38156
	addi	%x2, %x2, 8  #2407 pc 38160
	jal	%x1, create_float5x3array.3053  #2407 pc 38164
	addi	%x2, %x2, -8  #2407 pc 38168
	lw	%x1, 4(%x2) #2407 pc 38172
	addi	%x6, %x0, 5  #0 pc 38176
	addi	%x7, %x0, 0  #0 pc 38180
	sw	%x5, 4(%x2)  #2408 pc 38184
	mv	%x5, %x6 #pc 38188
	mv	%x6, %x7 #pc 38192
	sw	%x1, 12(%x2)  #2408 pc 38196
	addi	%x2, %x2, 16  #2408 pc 38200
	jal	%x1, create_array.2593  #2408 pc 38204
	addi	%x2, %x2, -16  #2408 pc 38208
	lw	%x1, 12(%x2) #2408 pc 38212
	addi	%x6, %x0, 5  #0 pc 38216
	addi	%x7, %x0, 0  #0 pc 38220
	sw	%x5, 8(%x2)  #2409 pc 38224
	mv	%x5, %x6 #pc 38228
	mv	%x6, %x7 #pc 38232
	sw	%x1, 12(%x2)  #2409 pc 38236
	addi	%x2, %x2, 16  #2409 pc 38240
	jal	%x1, create_array.2593  #2409 pc 38244
	addi	%x2, %x2, -16  #2409 pc 38248
	lw	%x1, 12(%x2) #2409 pc 38252
	sw	%x5, 12(%x2)  #2410 pc 38256
	mv	%x5, %g0 #pc 38260
	sw	%x1, 20(%x2)  #2410 pc 38264
	addi	%x2, %x2, 24  #2410 pc 38268
	jal	%x1, create_float5x3array.3053  #2410 pc 38272
	addi	%x2, %x2, -24  #2410 pc 38276
	lw	%x1, 20(%x2) #2410 pc 38280
	sw	%x5, 16(%x2)  #2411 pc 38284
	mv	%x5, %g0 #pc 38288
	sw	%x1, 20(%x2)  #2411 pc 38292
	addi	%x2, %x2, 24  #2411 pc 38296
	jal	%x1, create_float5x3array.3053  #2411 pc 38300
	addi	%x2, %x2, -24  #2411 pc 38304
	lw	%x1, 20(%x2) #2411 pc 38308
	addi	%x6, %x0, 1  #0 pc 38312
	addi	%x7, %x0, 0  #0 pc 38316
	sw	%x5, 20(%x2)  #2412 pc 38320
	mv	%x5, %x6 #pc 38324
	mv	%x6, %x7 #pc 38328
	sw	%x1, 28(%x2)  #2412 pc 38332
	addi	%x2, %x2, 32  #2412 pc 38336
	jal	%x1, create_array.2593  #2412 pc 38340
	addi	%x2, %x2, -32  #2412 pc 38344
	lw	%x1, 28(%x2) #2412 pc 38348
	sw	%x5, 24(%x2)  #2413 pc 38352
	mv	%x5, %g0 #pc 38356
	sw	%x1, 28(%x2)  #2413 pc 38360
	addi	%x2, %x2, 32  #2413 pc 38364
	jal	%x1, create_float5x3array.3053  #2413 pc 38368
	addi	%x2, %x2, -32  #2413 pc 38372
	lw	%x1, 28(%x2) #2413 pc 38376
	mv	%x6, %x3  #2414 pc 38380
	addi	%x3, %x3, 32  #2414 pc 38384
	addi	%x24, %x0, 28  #pc 38388
	add	%x24, %x24, %x6  #2414 pc 38392
	sw	%x5, 0(%x24)  #2414 pc 38396
	lw	%x5, 24(%x2)  #2414 pc 38400
	addi	%x24, %x0, 24  #pc 38404
	add	%x24, %x24, %x6  #2414 pc 38408
	sw	%x5, 0(%x24)  #2414 pc 38412
	lw	%x5, 20(%x2)  #2414 pc 38416
	addi	%x24, %x0, 20  #pc 38420
	add	%x24, %x24, %x6  #2414 pc 38424
	sw	%x5, 0(%x24)  #2414 pc 38428
	lw	%x5, 16(%x2)  #2414 pc 38432
	addi	%x24, %x0, 16  #pc 38436
	add	%x24, %x24, %x6  #2414 pc 38440
	sw	%x5, 0(%x24)  #2414 pc 38444
	lw	%x5, 12(%x2)  #2414 pc 38448
	addi	%x24, %x0, 12  #pc 38452
	add	%x24, %x24, %x6  #2414 pc 38456
	sw	%x5, 0(%x24)  #2414 pc 38460
	lw	%x5, 8(%x2)  #2414 pc 38464
	addi	%x24, %x0, 8  #pc 38468
	add	%x24, %x24, %x6  #2414 pc 38472
	sw	%x5, 0(%x24)  #2414 pc 38476
	lw	%x5, 4(%x2)  #2414 pc 38480
	addi	%x24, %x0, 4  #pc 38484
	add	%x24, %x24, %x6  #2414 pc 38488
	sw	%x5, 0(%x24)  #2414 pc 38492
	lw	%x5, 0(%x2)  #2414 pc 38496
	add	%x24, %x0, %x6  #2414 pc 38500
	sw	%x5, 0(%x24)  #2414 pc 38504
	mv	%x5, %x6  #2414 pc 38508
	ret #pc 38512
	nop #pc 38516
init_line_elements.3057:  #pc 38516
	bge	%x6, %x0, 12  #2419 pc 38520
	j	bge_else.9582 #pc 38524
	nop #pc 38528
	sw	%x5, 0(%x2)  #2420 pc 38532
	sw	%x6, 4(%x2)  #2420 pc 38536
	mv	%x5, %g0 #pc 38540
	sw	%x1, 12(%x2)  #2420 pc 38544
	addi	%x2, %x2, 16  #2420 pc 38548
	jal	%x1, create_pixel.3055  #2420 pc 38552
	addi	%x2, %x2, -16  #2420 pc 38556
	lw	%x1, 12(%x2) #2420 pc 38560
	lw	%x6, 4(%x2)  #2420 pc 38564
	slli	%x7, %x6, 2  #2420 pc 38568
	lw	%x9, 0(%x2)  #2420 pc 38572
	add	%x24, %x7, %x9  #2420 pc 38576
	sw	%x5, 0(%x24)  #2420 pc 38580
	addi	%x6, %x6, -1  #2421 pc 38584
	mv	%x5, %x9 #pc 38588
	j	init_line_elements.3057  #2421 pc 38592
	nop #pc 38596
bge_else.9582: #pc 38596
	ret #pc 38600
	nop #pc 38604
create_pixelline.3060:  #pc 38604
	addi	%x24, %x0, 4  #pc 38608
	add	%x24, %x24, %x22  #0 pc 38612
	lw	%x5, 0(%x24)  #0 pc 38616
	add	%x24, %x0, %x5  #2428 pc 38620
	lw	%x6, 0(%x24)  #2428 pc 38624
	sw	%x5, 0(%x2)  #2428 pc 38628
	sw	%x6, 4(%x2)  #2428 pc 38632
	mv	%x5, %g0 #pc 38636
	sw	%x1, 12(%x2)  #2428 pc 38640
	addi	%x2, %x2, 16  #2428 pc 38644
	jal	%x1, create_pixel.3055  #2428 pc 38648
	addi	%x2, %x2, -16  #2428 pc 38652
	lw	%x1, 12(%x2) #2428 pc 38656
	mv	%x6, %x5  #2428 pc 38660
	lw	%x5, 4(%x2)  #2428 pc 38664
	sw	%x1, 12(%x2)  #2428 pc 38668
	addi	%x2, %x2, 16  #2428 pc 38672
	jal	%x1, create_array.2593  #2428 pc 38676
	addi	%x2, %x2, -16  #2428 pc 38680
	lw	%x1, 12(%x2) #2428 pc 38684
	lw	%x6, 0(%x2)  #2429 pc 38688
	add	%x24, %x0, %x6  #2429 pc 38692
	lw	%x6, 0(%x24)  #2429 pc 38696
	addi	%x6, %x6, -2  #2429 pc 38700
	j	init_line_elements.3057  #2429 pc 38704
	nop #pc 38708
tan.3062:  #pc 38708
	fsw	%f0, 0(%x2)  #2442 pc 38712
	sw	%x1, 12(%x2)  #2442 pc 38716
	addi	%x2, %x2, 16  #2442 pc 38720
	jal	%x1, sin.2543  #2442 pc 38724
	addi	%x2, %x2, -16  #2442 pc 38728
	lw	%x1, 12(%x2) #2442 pc 38732
	flw	%f2, 0(%x2)  #2442 pc 38736
	fsw	%f0, 8(%x2)  #2442 pc 38740
	mv	%f0, %f2 #pc 38744
	mv	%f1, %f3 #pc 38748
	sw	%x1, 20(%x2)  #2442 pc 38752
	addi	%x2, %x2, 24  #2442 pc 38756
	jal	%x1, cos.2545  #2442 pc 38760
	addi	%x2, %x2, -24  #2442 pc 38764
	lw	%x1, 20(%x2) #2442 pc 38768
	flw	%f2, 8(%x2)  #2442 pc 38772
	fdiv	%f0, %f2, %f0  #2442 pc 38776
	ret #pc 38780
	nop #pc 38784
adjust_position.3064:  #pc 38784
	fmul	%f0, %f0, %f0  #2447 pc 38788
	mv	%f4, l.6871  #0 pc 38792
	fadd	%f0, %f0, %f4  #2447 pc 38796
	fsqrt	%f0, %f0  #2447 pc 38800
	mv	%f4, l.6305  #0 pc 38804
	fdiv	%f4, %f4, %f0  #2448 pc 38808
	fsw	%f0, 0(%x2)  #2449 pc 38812
	fsw	%f2, 8(%x2)  #2449 pc 38816
	mv	%f0, %f4 #pc 38820
	mv	%f1, %f5 #pc 38824
	sw	%x1, 20(%x2)  #2449 pc 38828
	addi	%x2, %x2, 24  #2449 pc 38832
	jal	%x1, atan.2547  #2449 pc 38836
	addi	%x2, %x2, -24  #2449 pc 38840
	lw	%x1, 20(%x2) #2449 pc 38844
	flw	%f2, 8(%x2)  #2450 pc 38848
	fmul	%f0, %f0, %f2  #2450 pc 38852
	sw	%x1, 20(%x2)  #2450 pc 38856
	addi	%x2, %x2, 24  #2450 pc 38860
	jal	%x1, tan.3062  #2450 pc 38864
	addi	%x2, %x2, -24  #2450 pc 38868
	lw	%x1, 20(%x2) #2450 pc 38872
	flw	%f2, 0(%x2)  #2451 pc 38876
	fmul	%f0, %f0, %f2  #2451 pc 38880
	ret #pc 38884
	nop #pc 38888
calc_dirvec.3067:  #pc 38888
	addi	%x24, %x0, 4  #pc 38892
	add	%x24, %x24, %x22  #0 pc 38896
	lw	%x9, 0(%x24)  #0 pc 38900
	addi	%x24, %x0, 5  #pc 38904
	bge	%x5, %x24, 12  #2456 pc 38908
	j	bge_else.9583 #pc 38912
	nop #pc 38916
	sw	%x7, 0(%x2)  #2457 pc 38920
	sw	%x9, 4(%x2)  #2457 pc 38924
	sw	%x6, 8(%x2)  #2457 pc 38928
	fsw	%f0, 16(%x2)  #2457 pc 38932
	fsw	%f2, 24(%x2)  #2457 pc 38936
	sw	%x1, 36(%x2)  #2457 pc 38940
	addi	%x2, %x2, 40  #2457 pc 38944
	jal	%x1, fsqr.2536  #2457 pc 38948
	addi	%x2, %x2, -40  #2457 pc 38952
	lw	%x1, 36(%x2) #2457 pc 38956
	flw	%f2, 24(%x2)  #2457 pc 38960
	fsw	%f0, 32(%x2)  #2457 pc 38964
	mv	%f0, %f2 #pc 38968
	mv	%f1, %f3 #pc 38972
	sw	%x1, 44(%x2)  #2457 pc 38976
	addi	%x2, %x2, 48  #2457 pc 38980
	jal	%x1, fsqr.2536  #2457 pc 38984
	addi	%x2, %x2, -48  #2457 pc 38988
	lw	%x1, 44(%x2) #2457 pc 38992
	flw	%f2, 32(%x2)  #2457 pc 38996
	fadd	%f0, %f2, %f0  #2457 pc 39000
	mv	%f2, l.6305  #0 pc 39004
	fadd	%f0, %f0, %f2  #2457 pc 39008
	fsqrt	%f0, %f0  #2457 pc 39012
	flw	%f2, 16(%x2)  #2458 pc 39016
	fdiv	%f2, %f2, %f0  #2458 pc 39020
	flw	%f4, 24(%x2)  #2459 pc 39024
	fdiv	%f4, %f4, %f0  #2459 pc 39028
	mv	%f6, l.6305  #0 pc 39032
	fdiv	%f0, %f6, %f0  #2460 pc 39036
	lw	%x5, 8(%x2)  #2463 pc 39040
	slli	%x5, %x5, 2  #2463 pc 39044
	lw	%x6, 4(%x2)  #2463 pc 39048
	add	%x24, %x5, %x6  #2463 pc 39052
	lw	%x5, 0(%x24)  #2463 pc 39056
	lw	%x6, 0(%x2)  #2464 pc 39060
	slli	%x7, %x6, 2  #2464 pc 39064
	add	%x24, %x7, %x5  #2464 pc 39068
	lw	%x7, 0(%x24)  #2464 pc 39072
	sw	%x5, 40(%x2)  #2464 pc 39076
	fsw	%f0, 48(%x2)  #2464 pc 39080
	fsw	%f4, 56(%x2)  #2464 pc 39084
	fsw	%f2, 64(%x2)  #2464 pc 39088
	mv	%x5, %x7 #pc 39092
	sw	%x1, 76(%x2)  #2464 pc 39096
	addi	%x2, %x2, 80  #2464 pc 39100
	jal	%x1, d_vec.2743  #2464 pc 39104
	addi	%x2, %x2, -80  #2464 pc 39108
	lw	%x1, 76(%x2) #2464 pc 39112
	flw	%f0, 64(%x2)  #2464 pc 39116
	flw	%f2, 56(%x2)  #2464 pc 39120
	flw	%f4, 48(%x2)  #2464 pc 39124
	sw	%x1, 76(%x2)  #2464 pc 39128
	addi	%x2, %x2, 80  #2464 pc 39132
	jal	%x1, vecset.2644  #2464 pc 39136
	addi	%x2, %x2, -80  #2464 pc 39140
	lw	%x1, 76(%x2) #2464 pc 39144
	lw	%x5, 0(%x2)  #2465 pc 39148
	addi	%x6, %x5, 40  #2465 pc 39152
	slli	%x6, %x6, 2  #2465 pc 39156
	lw	%x7, 40(%x2)  #2465 pc 39160
	add	%x24, %x6, %x7  #2465 pc 39164
	lw	%x6, 0(%x24)  #2465 pc 39168
	mv	%x5, %x6 #pc 39172
	sw	%x1, 76(%x2)  #2465 pc 39176
	addi	%x2, %x2, 80  #2465 pc 39180
	jal	%x1, d_vec.2743  #2465 pc 39184
	addi	%x2, %x2, -80  #2465 pc 39188
	lw	%x1, 76(%x2) #2465 pc 39192
	flw	%f0, 56(%x2)  #2465 pc 39196
	sw	%x5, 72(%x2)  #2465 pc 39200
	sw	%x1, 76(%x2)  #2465 pc 39204
	addi	%x2, %x2, 80  #2465 pc 39208
	jal	%x1, fneg.2534  #2465 pc 39212
	addi	%x2, %x2, -80  #2465 pc 39216
	lw	%x1, 76(%x2) #2465 pc 39220
	mv	%f4, %f0  #2465 pc 39224
	mv	%f5, %f1  #2465 pc 39228
	flw	%f0, 64(%x2)  #2465 pc 39232
	flw	%f2, 48(%x2)  #2465 pc 39236
	lw	%x5, 72(%x2)  #2465 pc 39240
	sw	%x1, 76(%x2)  #2465 pc 39244
	addi	%x2, %x2, 80  #2465 pc 39248
	jal	%x1, vecset.2644  #2465 pc 39252
	addi	%x2, %x2, -80  #2465 pc 39256
	lw	%x1, 76(%x2) #2465 pc 39260
	lw	%x5, 0(%x2)  #2466 pc 39264
	addi	%x6, %x5, 80  #2466 pc 39268
	slli	%x6, %x6, 2  #2466 pc 39272
	lw	%x7, 40(%x2)  #2466 pc 39276
	add	%x24, %x6, %x7  #2466 pc 39280
	lw	%x6, 0(%x24)  #2466 pc 39284
	mv	%x5, %x6 #pc 39288
	sw	%x1, 76(%x2)  #2466 pc 39292
	addi	%x2, %x2, 80  #2466 pc 39296
	jal	%x1, d_vec.2743  #2466 pc 39300
	addi	%x2, %x2, -80  #2466 pc 39304
	lw	%x1, 76(%x2) #2466 pc 39308
	flw	%f0, 64(%x2)  #2466 pc 39312
	sw	%x5, 76(%x2)  #2466 pc 39316
	sw	%x1, 84(%x2)  #2466 pc 39320
	addi	%x2, %x2, 88  #2466 pc 39324
	jal	%x1, fneg.2534  #2466 pc 39328
	addi	%x2, %x2, -88  #2466 pc 39332
	lw	%x1, 84(%x2) #2466 pc 39336
	flw	%f2, 56(%x2)  #2466 pc 39340
	fsw	%f0, 80(%x2)  #2466 pc 39344
	mv	%f0, %f2 #pc 39348
	mv	%f1, %f3 #pc 39352
	sw	%x1, 92(%x2)  #2466 pc 39356
	addi	%x2, %x2, 96  #2466 pc 39360
	jal	%x1, fneg.2534  #2466 pc 39364
	addi	%x2, %x2, -96  #2466 pc 39368
	lw	%x1, 92(%x2) #2466 pc 39372
	mv	%f4, %f0  #2466 pc 39376
	mv	%f5, %f1  #2466 pc 39380
	flw	%f0, 48(%x2)  #2466 pc 39384
	flw	%f2, 80(%x2)  #2466 pc 39388
	lw	%x5, 76(%x2)  #2466 pc 39392
	sw	%x1, 92(%x2)  #2466 pc 39396
	addi	%x2, %x2, 96  #2466 pc 39400
	jal	%x1, vecset.2644  #2466 pc 39404
	addi	%x2, %x2, -96  #2466 pc 39408
	lw	%x1, 92(%x2) #2466 pc 39412
	lw	%x5, 0(%x2)  #2467 pc 39416
	addi	%x6, %x5, 1  #2467 pc 39420
	slli	%x6, %x6, 2  #2467 pc 39424
	lw	%x7, 40(%x2)  #2467 pc 39428
	add	%x24, %x6, %x7  #2467 pc 39432
	lw	%x6, 0(%x24)  #2467 pc 39436
	mv	%x5, %x6 #pc 39440
	sw	%x1, 92(%x2)  #2467 pc 39444
	addi	%x2, %x2, 96  #2467 pc 39448
	jal	%x1, d_vec.2743  #2467 pc 39452
	addi	%x2, %x2, -96  #2467 pc 39456
	lw	%x1, 92(%x2) #2467 pc 39460
	flw	%f0, 64(%x2)  #2467 pc 39464
	sw	%x5, 88(%x2)  #2467 pc 39468
	sw	%x1, 92(%x2)  #2467 pc 39472
	addi	%x2, %x2, 96  #2467 pc 39476
	jal	%x1, fneg.2534  #2467 pc 39480
	addi	%x2, %x2, -96  #2467 pc 39484
	lw	%x1, 92(%x2) #2467 pc 39488
	flw	%f2, 56(%x2)  #2467 pc 39492
	fsw	%f0, 96(%x2)  #2467 pc 39496
	mv	%f0, %f2 #pc 39500
	mv	%f1, %f3 #pc 39504
	sw	%x1, 108(%x2)  #2467 pc 39508
	addi	%x2, %x2, 112  #2467 pc 39512
	jal	%x1, fneg.2534  #2467 pc 39516
	addi	%x2, %x2, -112  #2467 pc 39520
	lw	%x1, 108(%x2) #2467 pc 39524
	flw	%f2, 48(%x2)  #2467 pc 39528
	fsw	%f0, 104(%x2)  #2467 pc 39532
	mv	%f0, %f2 #pc 39536
	mv	%f1, %f3 #pc 39540
	sw	%x1, 116(%x2)  #2467 pc 39544
	addi	%x2, %x2, 120  #2467 pc 39548
	jal	%x1, fneg.2534  #2467 pc 39552
	addi	%x2, %x2, -120  #2467 pc 39556
	lw	%x1, 116(%x2) #2467 pc 39560
	mv	%f4, %f0  #2467 pc 39564
	mv	%f5, %f1  #2467 pc 39568
	flw	%f0, 96(%x2)  #2467 pc 39572
	flw	%f2, 104(%x2)  #2467 pc 39576
	lw	%x5, 88(%x2)  #2467 pc 39580
	sw	%x1, 116(%x2)  #2467 pc 39584
	addi	%x2, %x2, 120  #2467 pc 39588
	jal	%x1, vecset.2644  #2467 pc 39592
	addi	%x2, %x2, -120  #2467 pc 39596
	lw	%x1, 116(%x2) #2467 pc 39600
	lw	%x5, 0(%x2)  #2468 pc 39604
	addi	%x6, %x5, 41  #2468 pc 39608
	slli	%x6, %x6, 2  #2468 pc 39612
	lw	%x7, 40(%x2)  #2468 pc 39616
	add	%x24, %x6, %x7  #2468 pc 39620
	lw	%x6, 0(%x24)  #2468 pc 39624
	mv	%x5, %x6 #pc 39628
	sw	%x1, 116(%x2)  #2468 pc 39632
	addi	%x2, %x2, 120  #2468 pc 39636
	jal	%x1, d_vec.2743  #2468 pc 39640
	addi	%x2, %x2, -120  #2468 pc 39644
	lw	%x1, 116(%x2) #2468 pc 39648
	flw	%f0, 64(%x2)  #2468 pc 39652
	sw	%x5, 112(%x2)  #2468 pc 39656
	sw	%x1, 116(%x2)  #2468 pc 39660
	addi	%x2, %x2, 120  #2468 pc 39664
	jal	%x1, fneg.2534  #2468 pc 39668
	addi	%x2, %x2, -120  #2468 pc 39672
	lw	%x1, 116(%x2) #2468 pc 39676
	flw	%f2, 48(%x2)  #2468 pc 39680
	fsw	%f0, 120(%x2)  #2468 pc 39684
	mv	%f0, %f2 #pc 39688
	mv	%f1, %f3 #pc 39692
	sw	%x1, 132(%x2)  #2468 pc 39696
	addi	%x2, %x2, 136  #2468 pc 39700
	jal	%x1, fneg.2534  #2468 pc 39704
	addi	%x2, %x2, -136  #2468 pc 39708
	lw	%x1, 132(%x2) #2468 pc 39712
	mv	%f2, %f0  #2468 pc 39716
	mv	%f3, %f1  #2468 pc 39720
	flw	%f0, 120(%x2)  #2468 pc 39724
	flw	%f4, 56(%x2)  #2468 pc 39728
	lw	%x5, 112(%x2)  #2468 pc 39732
	sw	%x1, 132(%x2)  #2468 pc 39736
	addi	%x2, %x2, 136  #2468 pc 39740
	jal	%x1, vecset.2644  #2468 pc 39744
	addi	%x2, %x2, -136  #2468 pc 39748
	lw	%x1, 132(%x2) #2468 pc 39752
	lw	%x5, 0(%x2)  #2469 pc 39756
	addi	%x5, %x5, 81  #2469 pc 39760
	slli	%x5, %x5, 2  #2469 pc 39764
	lw	%x6, 40(%x2)  #2469 pc 39768
	add	%x24, %x5, %x6  #2469 pc 39772
	lw	%x5, 0(%x24)  #2469 pc 39776
	sw	%x1, 132(%x2)  #2469 pc 39780
	addi	%x2, %x2, 136  #2469 pc 39784
	jal	%x1, d_vec.2743  #2469 pc 39788
	addi	%x2, %x2, -136  #2469 pc 39792
	lw	%x1, 132(%x2) #2469 pc 39796
	flw	%f0, 48(%x2)  #2469 pc 39800
	sw	%x5, 128(%x2)  #2469 pc 39804
	sw	%x1, 132(%x2)  #2469 pc 39808
	addi	%x2, %x2, 136  #2469 pc 39812
	jal	%x1, fneg.2534  #2469 pc 39816
	addi	%x2, %x2, -136  #2469 pc 39820
	lw	%x1, 132(%x2) #2469 pc 39824
	flw	%f2, 64(%x2)  #2469 pc 39828
	flw	%f4, 56(%x2)  #2469 pc 39832
	lw	%x5, 128(%x2)  #2469 pc 39836
	j	vecset.2644  #2469 pc 39840
	nop #pc 39844
bge_else.9583: #pc 39844
	fsw	%f4, 136(%x2)  #2471 pc 39848
	sw	%x7, 0(%x2)  #2471 pc 39852
	sw	%x6, 8(%x2)  #2471 pc 39856
	sw	%x22, 144(%x2)  #2471 pc 39860
	fsw	%f6, 152(%x2)  #2471 pc 39864
	sw	%x5, 160(%x2)  #2471 pc 39868
	mv	%f0, %f2 #pc 39872
	mv	%f1, %f3 #pc 39876
	mv	%f2, %f4 #pc 39880
	mv	%f3, %f5 #pc 39884
	sw	%x1, 164(%x2)  #2471 pc 39888
	addi	%x2, %x2, 168  #2471 pc 39892
	jal	%x1, adjust_position.3064  #2471 pc 39896
	addi	%x2, %x2, -168  #2471 pc 39900
	lw	%x1, 164(%x2) #2471 pc 39904
	lw	%x5, 160(%x2)  #2472 pc 39908
	addi	%x5, %x5, 1  #2472 pc 39912
	flw	%f2, 152(%x2)  #2472 pc 39916
	fsw	%f0, 168(%x2)  #2472 pc 39920
	sw	%x5, 176(%x2)  #2472 pc 39924
	sw	%x1, 180(%x2)  #2472 pc 39928
	addi	%x2, %x2, 184  #2472 pc 39932
	jal	%x1, adjust_position.3064  #2472 pc 39936
	addi	%x2, %x2, -184  #2472 pc 39940
	lw	%x1, 180(%x2) #2472 pc 39944
	mv	%f2, %f0  #2472 pc 39948
	mv	%f3, %f1  #2472 pc 39952
	flw	%f0, 168(%x2)  #2472 pc 39956
	flw	%f4, 136(%x2)  #2472 pc 39960
	flw	%f6, 152(%x2)  #2472 pc 39964
	lw	%x5, 176(%x2)  #2472 pc 39968
	lw	%x6, 8(%x2)  #2472 pc 39972
	lw	%x7, 0(%x2)  #2472 pc 39976
	lw	%x22, 144(%x2)  #2472 pc 39980
	lw	%x23, 0(%x22)  #2472 pc 39984
	jalr	%x0, %x23, 0  #2472 pc 39988
	nop #pc 39992
calc_dirvecs.3075:  #pc 39992
	addi	%x24, %x0, 4  #pc 39996
	add	%x24, %x24, %x22  #0 pc 40000
	lw	%x9, 0(%x24)  #0 pc 40004
	bge	%x5, %x0, 12  #2477 pc 40008
	j	bge_else.9591 #pc 40012
	nop #pc 40016
	sw	%x22, 0(%x2)  #2479 pc 40020
	sw	%x5, 4(%x2)  #2479 pc 40024
	fsw	%f0, 8(%x2)  #2479 pc 40028
	sw	%x7, 16(%x2)  #2479 pc 40032
	sw	%x6, 20(%x2)  #2479 pc 40036
	sw	%x9, 24(%x2)  #2479 pc 40040
	sw	%x1, 28(%x2)  #2479 pc 40044
	addi	%x2, %x2, 32  #2479 pc 40048
	jal	%x1, float_of_int.2553  #2479 pc 40052
	addi	%x2, %x2, -32  #2479 pc 40056
	lw	%x1, 28(%x2) #2479 pc 40060
	mv	%f2, l.6314  #0 pc 40064
	fmul	%f0, %f0, %f2  #2479 pc 40068
	mv	%f2, l.7004  #0 pc 40072
	fsub	%f4, %f0, %f2  #2479 pc 40076
	addi	%x5, %x0, 0  #0 pc 40080
	mv	%f0, l.6293  #0 pc 40084
	mv	%f2, l.6293  #0 pc 40088
	flw	%f6, 8(%x2)  #2480 pc 40092
	lw	%x6, 20(%x2)  #2480 pc 40096
	lw	%x7, 16(%x2)  #2480 pc 40100
	lw	%x22, 24(%x2)  #2480 pc 40104
	sw	%x1, 28(%x2)  #2480 pc 40108
	lw	%x23, 0(%x22)  #2480 pc 40112
	addi	%x2, %x2, 32  #2480 pc 40116
	jalr	%x1, %x23, 0  #2480 pc 40120
	addi	%x2, %x2, -32  #2480 pc 40124
	lw	%x1, 28(%x2)  #2480 pc 40128
	lw	%x5, 4(%x2)  #2482 pc 40132
	sw	%x1, 28(%x2)  #2482 pc 40136
	addi	%x2, %x2, 32  #2482 pc 40140
	jal	%x1, float_of_int.2553  #2482 pc 40144
	addi	%x2, %x2, -32  #2482 pc 40148
	lw	%x1, 28(%x2) #2482 pc 40152
	mv	%f2, l.6314  #0 pc 40156
	fmul	%f0, %f0, %f2  #2482 pc 40160
	mv	%f2, l.6871  #0 pc 40164
	fadd	%f4, %f0, %f2  #2482 pc 40168
	addi	%x5, %x0, 0  #0 pc 40172
	mv	%f0, l.6293  #0 pc 40176
	mv	%f2, l.6293  #0 pc 40180
	lw	%x6, 16(%x2)  #2483 pc 40184
	addi	%x7, %x6, 2  #2483 pc 40188
	flw	%f6, 8(%x2)  #2483 pc 40192
	lw	%x9, 20(%x2)  #2483 pc 40196
	lw	%x22, 24(%x2)  #2483 pc 40200
	mv	%x6, %x9 #pc 40204
	sw	%x1, 28(%x2)  #2483 pc 40208
	lw	%x23, 0(%x22)  #2483 pc 40212
	addi	%x2, %x2, 32  #2483 pc 40216
	jalr	%x1, %x23, 0  #2483 pc 40220
	addi	%x2, %x2, -32  #2483 pc 40224
	lw	%x1, 28(%x2)  #2483 pc 40228
	lw	%x5, 4(%x2)  #2485 pc 40232
	addi	%x5, %x5, -1  #2485 pc 40236
	addi	%x6, %x0, 1  #0 pc 40240
	lw	%x7, 20(%x2)  #2485 pc 40244
	sw	%x5, 28(%x2)  #2485 pc 40248
	mv	%x5, %x7 #pc 40252
	sw	%x1, 36(%x2)  #2485 pc 40256
	addi	%x2, %x2, 40  #2485 pc 40260
	jal	%x1, add_mod5.2641  #2485 pc 40264
	addi	%x2, %x2, -40  #2485 pc 40268
	lw	%x1, 36(%x2) #2485 pc 40272
	mv	%x6, %x5  #2485 pc 40276
	flw	%f0, 8(%x2)  #2485 pc 40280
	lw	%x5, 28(%x2)  #2485 pc 40284
	lw	%x7, 16(%x2)  #2485 pc 40288
	lw	%x22, 0(%x2)  #2485 pc 40292
	lw	%x23, 0(%x22)  #2485 pc 40296
	jalr	%x0, %x23, 0  #2485 pc 40300
	nop #pc 40304
bge_else.9591: #pc 40304
	ret #pc 40308
	nop #pc 40312
calc_dirvec_rows.3080:  #pc 40312
	addi	%x24, %x0, 4  #pc 40316
	add	%x24, %x24, %x22  #0 pc 40320
	lw	%x9, 0(%x24)  #0 pc 40324
	bge	%x5, %x0, 12  #2491 pc 40328
	j	bge_else.9593 #pc 40332
	nop #pc 40336
	sw	%x22, 0(%x2)  #2492 pc 40340
	sw	%x5, 4(%x2)  #2492 pc 40344
	sw	%x7, 8(%x2)  #2492 pc 40348
	sw	%x6, 12(%x2)  #2492 pc 40352
	sw	%x9, 16(%x2)  #2492 pc 40356
	sw	%x1, 20(%x2)  #2492 pc 40360
	addi	%x2, %x2, 24  #2492 pc 40364
	jal	%x1, float_of_int.2553  #2492 pc 40368
	addi	%x2, %x2, -24  #2492 pc 40372
	lw	%x1, 20(%x2) #2492 pc 40376
	mv	%f2, l.6314  #0 pc 40380
	fmul	%f0, %f0, %f2  #2492 pc 40384
	mv	%f2, l.7004  #0 pc 40388
	fsub	%f0, %f0, %f2  #2492 pc 40392
	addi	%x5, %x0, 4  #0 pc 40396
	lw	%x6, 12(%x2)  #2493 pc 40400
	lw	%x7, 8(%x2)  #2493 pc 40404
	lw	%x22, 16(%x2)  #2493 pc 40408
	sw	%x1, 20(%x2)  #2493 pc 40412
	lw	%x23, 0(%x22)  #2493 pc 40416
	addi	%x2, %x2, 24  #2493 pc 40420
	jalr	%x1, %x23, 0  #2493 pc 40424
	addi	%x2, %x2, -24  #2493 pc 40428
	lw	%x1, 20(%x2)  #2493 pc 40432
	lw	%x5, 4(%x2)  #2494 pc 40436
	addi	%x5, %x5, -1  #2494 pc 40440
	addi	%x6, %x0, 2  #0 pc 40444
	lw	%x7, 12(%x2)  #2494 pc 40448
	sw	%x5, 20(%x2)  #2494 pc 40452
	mv	%x5, %x7 #pc 40456
	sw	%x1, 28(%x2)  #2494 pc 40460
	addi	%x2, %x2, 32  #2494 pc 40464
	jal	%x1, add_mod5.2641  #2494 pc 40468
	addi	%x2, %x2, -32  #2494 pc 40472
	lw	%x1, 28(%x2) #2494 pc 40476
	mv	%x6, %x5  #2494 pc 40480
	lw	%x5, 8(%x2)  #2494 pc 40484
	addi	%x7, %x5, 4  #2494 pc 40488
	lw	%x5, 20(%x2)  #2494 pc 40492
	lw	%x22, 0(%x2)  #2494 pc 40496
	lw	%x23, 0(%x22)  #2494 pc 40500
	jalr	%x0, %x23, 0  #2494 pc 40504
	nop #pc 40508
bge_else.9593: #pc 40508
	ret #pc 40512
	nop #pc 40516
create_dirvec.3084:  #pc 40516
	addi	%x24, %x0, 4  #pc 40520
	add	%x24, %x24, %x22  #0 pc 40524
	lw	%x5, 0(%x24)  #0 pc 40528
	addi	%x6, %x0, 3  #0 pc 40532
	mv	%f0, l.6293  #0 pc 40536
	sw	%x5, 0(%x2)  #2504 pc 40540
	mv	%x5, %x6 #pc 40544
	sw	%x1, 4(%x2)  #2504 pc 40548
	addi	%x2, %x2, 8  #2504 pc 40552
	jal	%x1, create_float_array.2600  #2504 pc 40556
	addi	%x2, %x2, -8  #2504 pc 40560
	lw	%x1, 4(%x2) #2504 pc 40564
	mv	%x6, %x5  #2504 pc 40568
	lw	%x5, 0(%x2)  #2505 pc 40572
	add	%x24, %x0, %x5  #2505 pc 40576
	lw	%x5, 0(%x24)  #2505 pc 40580
	sw	%x6, 4(%x2)  #2505 pc 40584
	sw	%x1, 12(%x2)  #2505 pc 40588
	addi	%x2, %x2, 16  #2505 pc 40592
	jal	%x1, create_array.2593  #2505 pc 40596
	addi	%x2, %x2, -16  #2505 pc 40600
	lw	%x1, 12(%x2) #2505 pc 40604
	mv	%x6, %x3  #2506 pc 40608
	addi	%x3, %x3, 8  #2506 pc 40612
	addi	%x24, %x0, 4  #pc 40616
	add	%x24, %x24, %x6  #2506 pc 40620
	sw	%x5, 0(%x24)  #2506 pc 40624
	lw	%x5, 4(%x2)  #2506 pc 40628
	add	%x24, %x0, %x6  #2506 pc 40632
	sw	%x5, 0(%x24)  #2506 pc 40636
	mv	%x5, %x6  #2506 pc 40640
	ret #pc 40644
	nop #pc 40648
create_dirvec_elements.3086:  #pc 40648
	addi	%x24, %x0, 4  #pc 40652
	add	%x24, %x24, %x22  #0 pc 40656
	lw	%x7, 0(%x24)  #0 pc 40660
	bge	%x6, %x0, 12  #2510 pc 40664
	j	bge_else.9595 #pc 40668
	nop #pc 40672
	sw	%x22, 0(%x2)  #2511 pc 40676
	sw	%x5, 4(%x2)  #2511 pc 40680
	sw	%x6, 8(%x2)  #2511 pc 40684
	mv	%x5, %g0 #pc 40688
	mv	%x22, %x7 #pc 40692
	sw	%x1, 12(%x2)  #2511 pc 40696
	lw	%x23, 0(%x22)  #2511 pc 40700
	addi	%x2, %x2, 16  #2511 pc 40704
	jalr	%x1, %x23, 0  #2511 pc 40708
	addi	%x2, %x2, -16  #2511 pc 40712
	lw	%x1, 12(%x2)  #2511 pc 40716
	lw	%x6, 8(%x2)  #2511 pc 40720
	slli	%x7, %x6, 2  #2511 pc 40724
	lw	%x9, 4(%x2)  #2511 pc 40728
	add	%x24, %x7, %x9  #2511 pc 40732
	sw	%x5, 0(%x24)  #2511 pc 40736
	addi	%x6, %x6, -1  #2512 pc 40740
	lw	%x22, 0(%x2)  #2512 pc 40744
	mv	%x5, %x9 #pc 40748
	lw	%x23, 0(%x22)  #2512 pc 40752
	jalr	%x0, %x23, 0  #2512 pc 40756
	nop #pc 40760
bge_else.9595: #pc 40760
	ret #pc 40764
	nop #pc 40768
create_dirvecs.3089:  #pc 40768
	addi	%x24, %x0, 12  #pc 40772
	add	%x24, %x24, %x22  #0 pc 40776
	lw	%x6, 0(%x24)  #0 pc 40780
	addi	%x24, %x0, 8  #pc 40784
	add	%x24, %x24, %x22  #0 pc 40788
	lw	%x7, 0(%x24)  #0 pc 40792
	addi	%x24, %x0, 4  #pc 40796
	add	%x24, %x24, %x22  #0 pc 40800
	lw	%x9, 0(%x24)  #0 pc 40804
	bge	%x5, %x0, 12  #2517 pc 40808
	j	bge_else.9597 #pc 40812
	nop #pc 40816
	addi	%x10, %x0, 120  #0 pc 40820
	sw	%x22, 0(%x2)  #2518 pc 40824
	sw	%x7, 4(%x2)  #2518 pc 40828
	sw	%x6, 8(%x2)  #2518 pc 40832
	sw	%x5, 12(%x2)  #2518 pc 40836
	sw	%x10, 16(%x2)  #2518 pc 40840
	mv	%x5, %g0 #pc 40844
	mv	%x22, %x9 #pc 40848
	sw	%x1, 20(%x2)  #2518 pc 40852
	lw	%x23, 0(%x22)  #2518 pc 40856
	addi	%x2, %x2, 24  #2518 pc 40860
	jalr	%x1, %x23, 0  #2518 pc 40864
	addi	%x2, %x2, -24  #2518 pc 40868
	lw	%x1, 20(%x2)  #2518 pc 40872
	mv	%x6, %x5  #2518 pc 40876
	lw	%x5, 16(%x2)  #2518 pc 40880
	sw	%x1, 20(%x2)  #2518 pc 40884
	addi	%x2, %x2, 24  #2518 pc 40888
	jal	%x1, create_array.2593  #2518 pc 40892
	addi	%x2, %x2, -24  #2518 pc 40896
	lw	%x1, 20(%x2) #2518 pc 40900
	lw	%x6, 12(%x2)  #2518 pc 40904
	slli	%x7, %x6, 2  #2518 pc 40908
	lw	%x9, 8(%x2)  #2518 pc 40912
	add	%x24, %x7, %x9  #2518 pc 40916
	sw	%x5, 0(%x24)  #2518 pc 40920
	slli	%x5, %x6, 2  #2519 pc 40924
	add	%x24, %x5, %x9  #2519 pc 40928
	lw	%x5, 0(%x24)  #2519 pc 40932
	addi	%x7, %x0, 118  #0 pc 40936
	lw	%x22, 4(%x2)  #2519 pc 40940
	mv	%x6, %x7 #pc 40944
	sw	%x1, 20(%x2)  #2519 pc 40948
	lw	%x23, 0(%x22)  #2519 pc 40952
	addi	%x2, %x2, 24  #2519 pc 40956
	jalr	%x1, %x23, 0  #2519 pc 40960
	addi	%x2, %x2, -24  #2519 pc 40964
	lw	%x1, 20(%x2)  #2519 pc 40968
	lw	%x5, 12(%x2)  #2520 pc 40972
	addi	%x5, %x5, -1  #2520 pc 40976
	lw	%x22, 0(%x2)  #2520 pc 40980
	lw	%x23, 0(%x22)  #2520 pc 40984
	jalr	%x0, %x23, 0  #2520 pc 40988
	nop #pc 40992
bge_else.9597: #pc 40992
	ret #pc 40996
	nop #pc 41000
init_dirvec_constants.3091:  #pc 41000
	addi	%x24, %x0, 4  #pc 41004
	add	%x24, %x24, %x22  #0 pc 41008
	lw	%x7, 0(%x24)  #0 pc 41012
	bge	%x6, %x0, 12  #2529 pc 41016
	j	bge_else.9599 #pc 41020
	nop #pc 41024
	slli	%x9, %x6, 2  #2530 pc 41028
	add	%x24, %x9, %x5  #2530 pc 41032
	lw	%x9, 0(%x24)  #2530 pc 41036
	sw	%x5, 0(%x2)  #2530 pc 41040
	sw	%x22, 4(%x2)  #2530 pc 41044
	sw	%x6, 8(%x2)  #2530 pc 41048
	mv	%x5, %x9 #pc 41052
	mv	%x22, %x7 #pc 41056
	sw	%x1, 12(%x2)  #2530 pc 41060
	lw	%x23, 0(%x22)  #2530 pc 41064
	addi	%x2, %x2, 16  #2530 pc 41068
	jalr	%x1, %x23, 0  #2530 pc 41072
	addi	%x2, %x2, -16  #2530 pc 41076
	lw	%x1, 12(%x2)  #2530 pc 41080
	lw	%x5, 8(%x2)  #2531 pc 41084
	addi	%x6, %x5, -1  #2531 pc 41088
	lw	%x5, 0(%x2)  #2531 pc 41092
	lw	%x22, 4(%x2)  #2531 pc 41096
	lw	%x23, 0(%x22)  #2531 pc 41100
	jalr	%x0, %x23, 0  #2531 pc 41104
	nop #pc 41108
bge_else.9599: #pc 41108
	ret #pc 41112
	nop #pc 41116
init_vecset_constants.3094:  #pc 41116
	addi	%x24, %x0, 8  #pc 41120
	add	%x24, %x24, %x22  #0 pc 41124
	lw	%x6, 0(%x24)  #0 pc 41128
	addi	%x24, %x0, 4  #pc 41132
	add	%x24, %x24, %x22  #0 pc 41136
	lw	%x7, 0(%x24)  #0 pc 41140
	bge	%x5, %x0, 12  #2536 pc 41144
	j	bge_else.9601 #pc 41148
	nop #pc 41152
	slli	%x9, %x5, 2  #2537 pc 41156
	add	%x24, %x9, %x7  #2537 pc 41160
	lw	%x7, 0(%x24)  #2537 pc 41164
	addi	%x9, %x0, 119  #0 pc 41168
	sw	%x22, 0(%x2)  #2537 pc 41172
	sw	%x5, 4(%x2)  #2537 pc 41176
	mv	%x5, %x7 #pc 41180
	mv	%x22, %x6 #pc 41184
	mv	%x6, %x9 #pc 41188
	sw	%x1, 12(%x2)  #2537 pc 41192
	lw	%x23, 0(%x22)  #2537 pc 41196
	addi	%x2, %x2, 16  #2537 pc 41200
	jalr	%x1, %x23, 0  #2537 pc 41204
	addi	%x2, %x2, -16  #2537 pc 41208
	lw	%x1, 12(%x2)  #2537 pc 41212
	lw	%x5, 4(%x2)  #2538 pc 41216
	addi	%x5, %x5, -1  #2538 pc 41220
	lw	%x22, 0(%x2)  #2538 pc 41224
	lw	%x23, 0(%x22)  #2538 pc 41228
	jalr	%x0, %x23, 0  #2538 pc 41232
	nop #pc 41236
bge_else.9601: #pc 41236
	ret #pc 41240
	nop #pc 41244
init_dirvecs.3096:  #pc 41244
	addi	%x24, %x0, 12  #pc 41248
	add	%x24, %x24, %x22  #0 pc 41252
	lw	%x5, 0(%x24)  #0 pc 41256
	addi	%x24, %x0, 8  #pc 41260
	add	%x24, %x24, %x22  #0 pc 41264
	lw	%x6, 0(%x24)  #0 pc 41268
	addi	%x24, %x0, 4  #pc 41272
	add	%x24, %x24, %x22  #0 pc 41276
	lw	%x7, 0(%x24)  #0 pc 41280
	addi	%x9, %x0, 4  #0 pc 41284
	sw	%x5, 0(%x2)  #2543 pc 41288
	sw	%x7, 4(%x2)  #2543 pc 41292
	mv	%x5, %x9 #pc 41296
	mv	%x22, %x6 #pc 41300
	sw	%x1, 12(%x2)  #2543 pc 41304
	lw	%x23, 0(%x22)  #2543 pc 41308
	addi	%x2, %x2, 16  #2543 pc 41312
	jalr	%x1, %x23, 0  #2543 pc 41316
	addi	%x2, %x2, -16  #2543 pc 41320
	lw	%x1, 12(%x2)  #2543 pc 41324
	addi	%x5, %x0, 9  #0 pc 41328
	addi	%x6, %x0, 0  #0 pc 41332
	addi	%x7, %x0, 0  #0 pc 41336
	lw	%x22, 4(%x2)  #2544 pc 41340
	sw	%x1, 12(%x2)  #2544 pc 41344
	lw	%x23, 0(%x22)  #2544 pc 41348
	addi	%x2, %x2, 16  #2544 pc 41352
	jalr	%x1, %x23, 0  #2544 pc 41356
	addi	%x2, %x2, -16  #2544 pc 41360
	lw	%x1, 12(%x2)  #2544 pc 41364
	addi	%x5, %x0, 4  #0 pc 41368
	lw	%x22, 0(%x2)  #2545 pc 41372
	lw	%x23, 0(%x22)  #2545 pc 41376
	jalr	%x0, %x23, 0  #2545 pc 41380
	nop #pc 41384
add_reflection.3098:  #pc 41384
	addi	%x24, %x0, 12  #pc 41388
	add	%x24, %x24, %x22  #0 pc 41392
	lw	%x7, 0(%x24)  #0 pc 41396
	addi	%x24, %x0, 8  #pc 41400
	add	%x24, %x24, %x22  #0 pc 41404
	lw	%x9, 0(%x24)  #0 pc 41408
	addi	%x24, %x0, 4  #pc 41412
	add	%x24, %x24, %x22  #0 pc 41416
	lw	%x22, 0(%x24)  #0 pc 41420
	sw	%x9, 0(%x2)  #2554 pc 41424
	sw	%x5, 4(%x2)  #2554 pc 41428
	sw	%x6, 8(%x2)  #2554 pc 41432
	fsw	%f0, 16(%x2)  #2554 pc 41436
	sw	%x7, 24(%x2)  #2554 pc 41440
	fsw	%f6, 32(%x2)  #2554 pc 41444
	fsw	%f4, 40(%x2)  #2554 pc 41448
	fsw	%f2, 48(%x2)  #2554 pc 41452
	mv	%x5, %g0 #pc 41456
	sw	%x1, 60(%x2)  #2554 pc 41460
	lw	%x23, 0(%x22)  #2554 pc 41464
	addi	%x2, %x2, 64  #2554 pc 41468
	jalr	%x1, %x23, 0  #2554 pc 41472
	addi	%x2, %x2, -64  #2554 pc 41476
	lw	%x1, 60(%x2)  #2554 pc 41480
	sw	%x5, 56(%x2)  #2555 pc 41484
	sw	%x1, 60(%x2)  #2555 pc 41488
	addi	%x2, %x2, 64  #2555 pc 41492
	jal	%x1, d_vec.2743  #2555 pc 41496
	addi	%x2, %x2, -64  #2555 pc 41500
	lw	%x1, 60(%x2) #2555 pc 41504
	flw	%f0, 48(%x2)  #2555 pc 41508
	flw	%f2, 40(%x2)  #2555 pc 41512
	flw	%f4, 32(%x2)  #2555 pc 41516
	sw	%x1, 60(%x2)  #2555 pc 41520
	addi	%x2, %x2, 64  #2555 pc 41524
	jal	%x1, vecset.2644  #2555 pc 41528
	addi	%x2, %x2, -64  #2555 pc 41532
	lw	%x1, 60(%x2) #2555 pc 41536
	lw	%x5, 56(%x2)  #2556 pc 41540
	lw	%x22, 24(%x2)  #2556 pc 41544
	sw	%x1, 60(%x2)  #2556 pc 41548
	lw	%x23, 0(%x22)  #2556 pc 41552
	addi	%x2, %x2, 64  #2556 pc 41556
	jalr	%x1, %x23, 0  #2556 pc 41560
	addi	%x2, %x2, -64  #2556 pc 41564
	lw	%x1, 60(%x2)  #2556 pc 41568
	mv	%x5, %x3  #2558 pc 41572
	addi	%x3, %x3, 16  #2558 pc 41576
	flw	%f0, 16(%x2)  #2558 pc 41580
	addi	%x24, %x0, 8  #pc 41584
	add	%x24, %x24, %x5  #2558 pc 41588
	fsw	%f0, 0(%x24) #2558 pc 41592
	lw	%x6, 56(%x2)  #2558 pc 41596
	addi	%x24, %x0, 4  #pc 41600
	add	%x24, %x24, %x5  #2558 pc 41604
	sw	%x6, 0(%x24)  #2558 pc 41608
	lw	%x6, 8(%x2)  #2558 pc 41612
	add	%x24, %x0, %x5  #2558 pc 41616
	sw	%x6, 0(%x24)  #2558 pc 41620
	lw	%x6, 4(%x2)  #2558 pc 41624
	slli	%x6, %x6, 2  #2558 pc 41628
	lw	%x7, 0(%x2)  #2558 pc 41632
	add	%x24, %x6, %x7  #2558 pc 41636
	sw	%x5, 0(%x24)  #2558 pc 41640
	ret #pc 41644
	nop #pc 41648
setup_rect_reflection.3105:  #pc 41648
	addi	%x24, %x0, 12  #pc 41652
	add	%x24, %x24, %x22  #0 pc 41656
	lw	%x7, 0(%x24)  #0 pc 41660
	addi	%x24, %x0, 8  #pc 41664
	add	%x24, %x24, %x22  #0 pc 41668
	lw	%x9, 0(%x24)  #0 pc 41672
	addi	%x24, %x0, 4  #pc 41676
	add	%x24, %x24, %x22  #0 pc 41680
	lw	%x10, 0(%x24)  #0 pc 41684
	addi	%x11, %x0, 4  #0 pc 41688
	sw	%x10, 0(%x2)  #2563 pc 41692
	sw	%x9, 4(%x2)  #2563 pc 41696
	sw	%x6, 8(%x2)  #2563 pc 41700
	sw	%x7, 12(%x2)  #2563 pc 41704
	mv	%x6, %x11 #pc 41708
	sw	%x1, 20(%x2)  #2563 pc 41712
	addi	%x2, %x2, 24  #2563 pc 41716
	jal	%x1, mul.2562  #2563 pc 41720
	addi	%x2, %x2, -24  #2563 pc 41724
	lw	%x1, 20(%x2) #2563 pc 41728
	lw	%x6, 12(%x2)  #2564 pc 41732
	add	%x24, %x0, %x6  #2564 pc 41736
	lw	%x7, 0(%x24)  #2564 pc 41740
	mv	%f0, l.6305  #0 pc 41744
	lw	%x9, 8(%x2)  #2565 pc 41748
	sw	%x7, 16(%x2)  #2565 pc 41752
	sw	%x5, 20(%x2)  #2565 pc 41756
	fsw	%f0, 24(%x2)  #2565 pc 41760
	mv	%x5, %x9 #pc 41764
	sw	%x1, 36(%x2)  #2565 pc 41768
	addi	%x2, %x2, 40  #2565 pc 41772
	jal	%x1, o_diffuse.2706  #2565 pc 41776
	addi	%x2, %x2, -40  #2565 pc 41780
	lw	%x1, 36(%x2) #2565 pc 41784
	flw	%f2, 24(%x2)  #2565 pc 41788
	fsub	%f0, %f2, %f0  #2565 pc 41792
	lw	%x5, 4(%x2)  #2566 pc 41796
	add	%x24, %x0, %x5  #2566 pc 41800
	flw	%f2, 0(%x24)  #2566 pc 41804
	fsw	%f0, 32(%x2)  #2566 pc 41808
	mv	%f0, %f2 #pc 41812
	mv	%f1, %f3 #pc 41816
	sw	%x1, 44(%x2)  #2566 pc 41820
	addi	%x2, %x2, 48  #2566 pc 41824
	jal	%x1, fneg.2534  #2566 pc 41828
	addi	%x2, %x2, -48  #2566 pc 41832
	lw	%x1, 44(%x2) #2566 pc 41836
	lw	%x5, 4(%x2)  #2567 pc 41840
	addi	%x24, %x0, 8  #pc 41844
	add	%x24, %x24, %x5  #2567 pc 41848
	flw	%f2, 0(%x24)  #2567 pc 41852
	fsw	%f0, 40(%x2)  #2567 pc 41856
	mv	%f0, %f2 #pc 41860
	mv	%f1, %f3 #pc 41864
	sw	%x1, 52(%x2)  #2567 pc 41868
	addi	%x2, %x2, 56  #2567 pc 41872
	jal	%x1, fneg.2534  #2567 pc 41876
	addi	%x2, %x2, -56  #2567 pc 41880
	lw	%x1, 52(%x2) #2567 pc 41884
	lw	%x5, 4(%x2)  #2568 pc 41888
	addi	%x24, %x0, 16  #pc 41892
	add	%x24, %x24, %x5  #2568 pc 41896
	flw	%f2, 0(%x24)  #2568 pc 41900
	fsw	%f0, 48(%x2)  #2568 pc 41904
	mv	%f0, %f2 #pc 41908
	mv	%f1, %f3 #pc 41912
	sw	%x1, 60(%x2)  #2568 pc 41916
	addi	%x2, %x2, 64  #2568 pc 41920
	jal	%x1, fneg.2534  #2568 pc 41924
	addi	%x2, %x2, -64  #2568 pc 41928
	lw	%x1, 60(%x2) #2568 pc 41932
	mv	%f6, %f0  #2568 pc 41936
	mv	%f7, %f1  #2568 pc 41940
	lw	%x5, 20(%x2)  #2569 pc 41944
	addi	%x6, %x5, 1  #2569 pc 41948
	lw	%x7, 4(%x2)  #2569 pc 41952
	add	%x24, %x0, %x7  #2569 pc 41956
	flw	%f2, 0(%x24)  #2569 pc 41960
	flw	%f0, 32(%x2)  #2569 pc 41964
	flw	%f4, 48(%x2)  #2569 pc 41968
	lw	%x9, 16(%x2)  #2569 pc 41972
	lw	%x22, 0(%x2)  #2569 pc 41976
	fsw	%f6, 56(%x2)  #2569 pc 41980
	mv	%x5, %x9 #pc 41984
	sw	%x1, 68(%x2)  #2569 pc 41988
	lw	%x23, 0(%x22)  #2569 pc 41992
	addi	%x2, %x2, 72  #2569 pc 41996
	jalr	%x1, %x23, 0  #2569 pc 42000
	addi	%x2, %x2, -72  #2569 pc 42004
	lw	%x1, 68(%x2)  #2569 pc 42008
	lw	%x5, 16(%x2)  #2570 pc 42012
	addi	%x6, %x5, 1  #2570 pc 42016
	lw	%x7, 20(%x2)  #2570 pc 42020
	addi	%x9, %x7, 2  #2570 pc 42024
	lw	%x10, 4(%x2)  #2570 pc 42028
	addi	%x24, %x0, 8  #pc 42032
	add	%x24, %x24, %x10  #2570 pc 42036
	flw	%f4, 0(%x24)  #2570 pc 42040
	flw	%f0, 32(%x2)  #2570 pc 42044
	flw	%f2, 40(%x2)  #2570 pc 42048
	flw	%f6, 56(%x2)  #2570 pc 42052
	lw	%x22, 0(%x2)  #2570 pc 42056
	mv	%x5, %x6 #pc 42060
	mv	%x6, %x9 #pc 42064
	sw	%x1, 68(%x2)  #2570 pc 42068
	lw	%x23, 0(%x22)  #2570 pc 42072
	addi	%x2, %x2, 72  #2570 pc 42076
	jalr	%x1, %x23, 0  #2570 pc 42080
	addi	%x2, %x2, -72  #2570 pc 42084
	lw	%x1, 68(%x2)  #2570 pc 42088
	lw	%x5, 16(%x2)  #2571 pc 42092
	addi	%x6, %x5, 2  #2571 pc 42096
	lw	%x7, 20(%x2)  #2571 pc 42100
	addi	%x7, %x7, 3  #2571 pc 42104
	lw	%x9, 4(%x2)  #2571 pc 42108
	addi	%x24, %x0, 16  #pc 42112
	add	%x24, %x24, %x9  #2571 pc 42116
	flw	%f6, 0(%x24)  #2571 pc 42120
	flw	%f0, 32(%x2)  #2571 pc 42124
	flw	%f2, 40(%x2)  #2571 pc 42128
	flw	%f4, 48(%x2)  #2571 pc 42132
	lw	%x22, 0(%x2)  #2571 pc 42136
	mv	%x5, %x6 #pc 42140
	mv	%x6, %x7 #pc 42144
	sw	%x1, 68(%x2)  #2571 pc 42148
	lw	%x23, 0(%x22)  #2571 pc 42152
	addi	%x2, %x2, 72  #2571 pc 42156
	jalr	%x1, %x23, 0  #2571 pc 42160
	addi	%x2, %x2, -72  #2571 pc 42164
	lw	%x1, 68(%x2)  #2571 pc 42168
	lw	%x5, 16(%x2)  #2572 pc 42172
	addi	%x5, %x5, 3  #2572 pc 42176
	lw	%x6, 12(%x2)  #2572 pc 42180
	add	%x24, %x0, %x6  #2572 pc 42184
	sw	%x5, 0(%x24)  #2572 pc 42188
	ret #pc 42192
	nop #pc 42196
setup_surface_reflection.3108:  #pc 42196
	addi	%x24, %x0, 12  #pc 42200
	add	%x24, %x24, %x22  #0 pc 42204
	lw	%x7, 0(%x24)  #0 pc 42208
	addi	%x24, %x0, 8  #pc 42212
	add	%x24, %x24, %x22  #0 pc 42216
	lw	%x9, 0(%x24)  #0 pc 42220
	addi	%x24, %x0, 4  #pc 42224
	add	%x24, %x24, %x22  #0 pc 42228
	lw	%x10, 0(%x24)  #0 pc 42232
	addi	%x11, %x0, 4  #0 pc 42236
	sw	%x10, 0(%x2)  #2577 pc 42240
	sw	%x9, 4(%x2)  #2577 pc 42244
	sw	%x6, 8(%x2)  #2577 pc 42248
	sw	%x7, 12(%x2)  #2577 pc 42252
	mv	%x6, %x11 #pc 42256
	sw	%x1, 20(%x2)  #2577 pc 42260
	addi	%x2, %x2, 24  #2577 pc 42264
	jal	%x1, mul.2562  #2577 pc 42268
	addi	%x2, %x2, -24  #2577 pc 42272
	lw	%x1, 20(%x2) #2577 pc 42276
	addi	%x5, %x5, 1  #2577 pc 42280
	lw	%x6, 12(%x2)  #2578 pc 42284
	add	%x24, %x0, %x6  #2578 pc 42288
	lw	%x7, 0(%x24)  #2578 pc 42292
	mv	%f0, l.6305  #0 pc 42296
	lw	%x9, 8(%x2)  #2579 pc 42300
	sw	%x5, 16(%x2)  #2579 pc 42304
	sw	%x7, 20(%x2)  #2579 pc 42308
	fsw	%f0, 24(%x2)  #2579 pc 42312
	mv	%x5, %x9 #pc 42316
	sw	%x1, 36(%x2)  #2579 pc 42320
	addi	%x2, %x2, 40  #2579 pc 42324
	jal	%x1, o_diffuse.2706  #2579 pc 42328
	addi	%x2, %x2, -40  #2579 pc 42332
	lw	%x1, 36(%x2) #2579 pc 42336
	flw	%f2, 24(%x2)  #2579 pc 42340
	fsub	%f0, %f2, %f0  #2579 pc 42344
	lw	%x5, 8(%x2)  #2580 pc 42348
	fsw	%f0, 32(%x2)  #2580 pc 42352
	sw	%x1, 44(%x2)  #2580 pc 42356
	addi	%x2, %x2, 48  #2580 pc 42360
	jal	%x1, o_param_abc.2698  #2580 pc 42364
	addi	%x2, %x2, -48  #2580 pc 42368
	lw	%x1, 44(%x2) #2580 pc 42372
	mv	%x6, %x5  #2580 pc 42376
	lw	%x5, 4(%x2)  #2580 pc 42380
	sw	%x1, 44(%x2)  #2580 pc 42384
	addi	%x2, %x2, 48  #2580 pc 42388
	jal	%x1, veciprod.2660  #2580 pc 42392
	addi	%x2, %x2, -48  #2580 pc 42396
	lw	%x1, 44(%x2) #2580 pc 42400
	mv	%f2, l.6476  #0 pc 42404
	lw	%x5, 8(%x2)  #2583 pc 42408
	fsw	%f0, 40(%x2)  #2583 pc 42412
	fsw	%f2, 48(%x2)  #2583 pc 42416
	sw	%x1, 60(%x2)  #2583 pc 42420
	addi	%x2, %x2, 64  #2583 pc 42424
	jal	%x1, o_param_a.2692  #2583 pc 42428
	addi	%x2, %x2, -64  #2583 pc 42432
	lw	%x1, 60(%x2) #2583 pc 42436
	flw	%f2, 48(%x2)  #2583 pc 42440
	fmul	%f0, %f2, %f0  #2583 pc 42444
	flw	%f2, 40(%x2)  #2583 pc 42448
	fmul	%f0, %f0, %f2  #2583 pc 42452
	lw	%x5, 4(%x2)  #2583 pc 42456
	add	%x24, %x0, %x5  #2583 pc 42460
	flw	%f4, 0(%x24)  #2583 pc 42464
	fsub	%f0, %f0, %f4  #2583 pc 42468
	mv	%f4, l.6476  #0 pc 42472
	lw	%x6, 8(%x2)  #2584 pc 42476
	fsw	%f0, 56(%x2)  #2584 pc 42480
	fsw	%f4, 64(%x2)  #2584 pc 42484
	mv	%x5, %x6 #pc 42488
	sw	%x1, 76(%x2)  #2584 pc 42492
	addi	%x2, %x2, 80  #2584 pc 42496
	jal	%x1, o_param_b.2694  #2584 pc 42500
	addi	%x2, %x2, -80  #2584 pc 42504
	lw	%x1, 76(%x2) #2584 pc 42508
	flw	%f2, 64(%x2)  #2584 pc 42512
	fmul	%f0, %f2, %f0  #2584 pc 42516
	flw	%f2, 40(%x2)  #2584 pc 42520
	fmul	%f0, %f0, %f2  #2584 pc 42524
	lw	%x5, 4(%x2)  #2584 pc 42528
	addi	%x24, %x0, 8  #pc 42532
	add	%x24, %x24, %x5  #2584 pc 42536
	flw	%f4, 0(%x24)  #2584 pc 42540
	fsub	%f0, %f0, %f4  #2584 pc 42544
	mv	%f4, l.6476  #0 pc 42548
	lw	%x6, 8(%x2)  #2585 pc 42552
	fsw	%f0, 72(%x2)  #2585 pc 42556
	fsw	%f4, 80(%x2)  #2585 pc 42560
	mv	%x5, %x6 #pc 42564
	sw	%x1, 92(%x2)  #2585 pc 42568
	addi	%x2, %x2, 96  #2585 pc 42572
	jal	%x1, o_param_c.2696  #2585 pc 42576
	addi	%x2, %x2, -96  #2585 pc 42580
	lw	%x1, 92(%x2) #2585 pc 42584
	flw	%f2, 80(%x2)  #2585 pc 42588
	fmul	%f0, %f2, %f0  #2585 pc 42592
	flw	%f2, 40(%x2)  #2585 pc 42596
	fmul	%f0, %f0, %f2  #2585 pc 42600
	lw	%x5, 4(%x2)  #2585 pc 42604
	addi	%x24, %x0, 16  #pc 42608
	add	%x24, %x24, %x5  #2585 pc 42612
	flw	%f2, 0(%x24)  #2585 pc 42616
	fsub	%f6, %f0, %f2  #2585 pc 42620
	flw	%f0, 32(%x2)  #2582 pc 42624
	flw	%f2, 56(%x2)  #2582 pc 42628
	flw	%f4, 72(%x2)  #2582 pc 42632
	lw	%x5, 20(%x2)  #2582 pc 42636
	lw	%x6, 16(%x2)  #2582 pc 42640
	lw	%x22, 0(%x2)  #2582 pc 42644
	sw	%x1, 92(%x2)  #2582 pc 42648
	lw	%x23, 0(%x22)  #2582 pc 42652
	addi	%x2, %x2, 96  #2582 pc 42656
	jalr	%x1, %x23, 0  #2582 pc 42660
	addi	%x2, %x2, -96  #2582 pc 42664
	lw	%x1, 92(%x2)  #2582 pc 42668
	lw	%x5, 20(%x2)  #2586 pc 42672
	addi	%x5, %x5, 1  #2586 pc 42676
	lw	%x6, 12(%x2)  #2586 pc 42680
	add	%x24, %x0, %x6  #2586 pc 42684
	sw	%x5, 0(%x24)  #2586 pc 42688
	ret #pc 42692
	nop #pc 42696
setup_reflections.3111:  #pc 42696
	addi	%x24, %x0, 12  #pc 42700
	add	%x24, %x24, %x22  #0 pc 42704
	lw	%x6, 0(%x24)  #0 pc 42708
	addi	%x24, %x0, 8  #pc 42712
	add	%x24, %x24, %x22  #0 pc 42716
	lw	%x7, 0(%x24)  #0 pc 42720
	addi	%x24, %x0, 4  #pc 42724
	add	%x24, %x24, %x22  #0 pc 42728
	lw	%x9, 0(%x24)  #0 pc 42732
	bge	%x5, %x0, 12  #2592 pc 42736
	j	bge_else.9608 #pc 42740
	nop #pc 42744
	slli	%x10, %x5, 2  #2593 pc 42748
	add	%x24, %x10, %x9  #2593 pc 42752
	lw	%x9, 0(%x24)  #2593 pc 42756
	sw	%x6, 0(%x2)  #2594 pc 42760
	sw	%x5, 4(%x2)  #2594 pc 42764
	sw	%x7, 8(%x2)  #2594 pc 42768
	sw	%x9, 12(%x2)  #2594 pc 42772
	mv	%x5, %x9 #pc 42776
	sw	%x1, 20(%x2)  #2594 pc 42780
	addi	%x2, %x2, 24  #2594 pc 42784
	jal	%x1, o_reflectiontype.2686  #2594 pc 42788
	addi	%x2, %x2, -24  #2594 pc 42792
	lw	%x1, 20(%x2) #2594 pc 42796
	addi	%x24, %x0, 2  #pc 42800
	beq	%x5, %x24, 12  #2594 pc 42804
	j	be_else.9609 #pc 42808
	nop #pc 42812
	lw	%x5, 12(%x2)  #2595 pc 42816
	sw	%x1, 20(%x2)  #2595 pc 42820
	addi	%x2, %x2, 24  #2595 pc 42824
	jal	%x1, o_diffuse.2706  #2595 pc 42828
	addi	%x2, %x2, -24  #2595 pc 42832
	lw	%x1, 20(%x2) #2595 pc 42836
	mv	%f2, l.6305  #0 pc 42840
	sw	%x1, 20(%x2)  #2595 pc 42844
	addi	%x2, %x2, 24  #2595 pc 42848
	jal	%x1, fless.2540  #2595 pc 42852
	addi	%x2, %x2, -24  #2595 pc 42856
	lw	%x1, 20(%x2) #2595 pc 42860
	beq	%x5, %x0, 12  #2595 pc 42864
	j	be_else.9610 #pc 42868
	nop #pc 42872
	ret #pc 42876
	nop #pc 42880
be_else.9610: #pc 42880
	lw	%x5, 12(%x2)  #2596 pc 42884
	sw	%x1, 20(%x2)  #2596 pc 42888
	addi	%x2, %x2, 24  #2596 pc 42892
	jal	%x1, o_form.2684  #2596 pc 42896
	addi	%x2, %x2, -24  #2596 pc 42900
	lw	%x1, 20(%x2) #2596 pc 42904
	addi	%x24, %x0, 1  #pc 42908
	beq	%x5, %x24, 12  #2598 pc 42912
	j	be_else.9612 #pc 42916
	nop #pc 42920
	lw	%x5, 4(%x2)  #2599 pc 42924
	lw	%x6, 12(%x2)  #2599 pc 42928
	lw	%x22, 8(%x2)  #2599 pc 42932
	lw	%x23, 0(%x22)  #2599 pc 42936
	jalr	%x0, %x23, 0  #2599 pc 42940
	nop #pc 42944
be_else.9612: #pc 42944
	addi	%x24, %x0, 2  #pc 42948
	beq	%x5, %x24, 12  #2600 pc 42952
	j	be_else.9613 #pc 42956
	nop #pc 42960
	lw	%x5, 4(%x2)  #2601 pc 42964
	lw	%x6, 12(%x2)  #2601 pc 42968
	lw	%x22, 0(%x2)  #2601 pc 42972
	lw	%x23, 0(%x22)  #2601 pc 42976
	jalr	%x0, %x23, 0  #2601 pc 42980
	nop #pc 42984
be_else.9613: #pc 42984
	ret #pc 42988
	nop #pc 42992
be_else.9609: #pc 42992
	ret #pc 42996
	nop #pc 43000
bge_else.9608: #pc 43000
	ret #pc 43004
	nop #pc 43008
rt.3113:  #pc 43008
	addi	%x24, %x0, 56  #pc 43012
	add	%x24, %x24, %x22  #0 pc 43016
	lw	%x9, 0(%x24)  #0 pc 43020
	addi	%x24, %x0, 52  #pc 43024
	add	%x24, %x24, %x22  #0 pc 43028
	lw	%x10, 0(%x24)  #0 pc 43032
	addi	%x24, %x0, 48  #pc 43036
	add	%x24, %x24, %x22  #0 pc 43040
	lw	%x11, 0(%x24)  #0 pc 43044
	addi	%x24, %x0, 44  #pc 43048
	add	%x24, %x24, %x22  #0 pc 43052
	lw	%x12, 0(%x24)  #0 pc 43056
	addi	%x24, %x0, 40  #pc 43060
	add	%x24, %x24, %x22  #0 pc 43064
	lw	%x13, 0(%x24)  #0 pc 43068
	addi	%x24, %x0, 36  #pc 43072
	add	%x24, %x24, %x22  #0 pc 43076
	lw	%x14, 0(%x24)  #0 pc 43080
	addi	%x24, %x0, 32  #pc 43084
	add	%x24, %x24, %x22  #0 pc 43088
	lw	%x15, 0(%x24)  #0 pc 43092
	addi	%x24, %x0, 28  #pc 43096
	add	%x24, %x24, %x22  #0 pc 43100
	lw	%x16, 0(%x24)  #0 pc 43104
	addi	%x24, %x0, 24  #pc 43108
	add	%x24, %x24, %x22  #0 pc 43112
	lw	%x17, 0(%x24)  #0 pc 43116
	addi	%x24, %x0, 20  #pc 43120
	add	%x24, %x24, %x22  #0 pc 43124
	lw	%x18, 0(%x24)  #0 pc 43128
	addi	%x24, %x0, 16  #pc 43132
	add	%x24, %x24, %x22  #0 pc 43136
	lw	%x19, 0(%x24)  #0 pc 43140
	addi	%x24, %x0, 12  #pc 43144
	add	%x24, %x24, %x22  #0 pc 43148
	lw	%x20, 0(%x24)  #0 pc 43152
	addi	%x24, %x0, 8  #pc 43156
	add	%x24, %x24, %x22  #0 pc 43160
	lw	%x21, 0(%x24)  #0 pc 43164
	addi	%x24, %x0, 4  #pc 43168
	add	%x24, %x24, %x22  #0 pc 43172
	lw	%x22, 0(%x24)  #0 pc 43176
	add	%x24, %x0, %x20  #2614 pc 43180
	sw	%x5, 0(%x24)  #2614 pc 43184
	addi	%x24, %x0, 4  #pc 43188
	add	%x24, %x24, %x20  #2615 pc 43192
	sw	%x6, 0(%x24)  #2615 pc 43196
	addi	%x20, %x0, 2  #0 pc 43200
	sw	%x13, 0(%x2)  #2616 pc 43204
	sw	%x15, 4(%x2)  #2616 pc 43208
	sw	%x10, 8(%x2)  #2616 pc 43212
	sw	%x16, 12(%x2)  #2616 pc 43216
	sw	%x11, 16(%x2)  #2616 pc 43220
	sw	%x18, 20(%x2)  #2616 pc 43224
	sw	%x17, 24(%x2)  #2616 pc 43228
	sw	%x19, 28(%x2)  #2616 pc 43232
	sw	%x7, 32(%x2)  #2616 pc 43236
	sw	%x9, 36(%x2)  #2616 pc 43240
	sw	%x14, 40(%x2)  #2616 pc 43244
	sw	%x22, 44(%x2)  #2616 pc 43248
	sw	%x12, 48(%x2)  #2616 pc 43252
	sw	%x5, 52(%x2)  #2616 pc 43256
	sw	%x6, 56(%x2)  #2616 pc 43260
	sw	%x21, 60(%x2)  #2616 pc 43264
	mv	%x6, %x20 #pc 43268
	sw	%x1, 68(%x2)  #2616 pc 43272
	addi	%x2, %x2, 72  #2616 pc 43276
	jal	%x1, div.2570  #2616 pc 43280
	addi	%x2, %x2, -72  #2616 pc 43284
	lw	%x1, 68(%x2) #2616 pc 43288
	lw	%x6, 60(%x2)  #2616 pc 43292
	add	%x24, %x0, %x6  #2616 pc 43296
	sw	%x5, 0(%x24)  #2616 pc 43300
	addi	%x5, %x0, 2  #0 pc 43304
	lw	%x7, 56(%x2)  #2617 pc 43308
	mv	%x6, %x5 #pc 43312
	mv	%x5, %x7 #pc 43316
	sw	%x1, 68(%x2)  #2617 pc 43320
	addi	%x2, %x2, 72  #2617 pc 43324
	jal	%x1, div.2570  #2617 pc 43328
	addi	%x2, %x2, -72  #2617 pc 43332
	lw	%x1, 68(%x2) #2617 pc 43336
	lw	%x6, 60(%x2)  #2617 pc 43340
	addi	%x24, %x0, 4  #pc 43344
	add	%x24, %x24, %x6  #2617 pc 43348
	sw	%x5, 0(%x24)  #2617 pc 43352
	mv	%f0, l.7053  #0 pc 43356
	lw	%x5, 52(%x2)  #2618 pc 43360
	fsw	%f0, 64(%x2)  #2618 pc 43364
	sw	%x1, 76(%x2)  #2618 pc 43368
	addi	%x2, %x2, 80  #2618 pc 43372
	jal	%x1, float_of_int.2553  #2618 pc 43376
	addi	%x2, %x2, -80  #2618 pc 43380
	lw	%x1, 76(%x2) #2618 pc 43384
	flw	%f2, 64(%x2)  #2618 pc 43388
	fdiv	%f0, %f2, %f0  #2618 pc 43392
	lw	%x5, 48(%x2)  #2618 pc 43396
	add	%x24, %x0, %x5  #2618 pc 43400
	fsw	%f0, 0(%x24) #2618 pc 43404
	lw	%x22, 44(%x2)  #2619 pc 43408
	mv	%x5, %g0 #pc 43412
	sw	%x1, 76(%x2)  #2619 pc 43416
	lw	%x23, 0(%x22)  #2619 pc 43420
	addi	%x2, %x2, 80  #2619 pc 43424
	jalr	%x1, %x23, 0  #2619 pc 43428
	addi	%x2, %x2, -80  #2619 pc 43432
	lw	%x1, 76(%x2)  #2619 pc 43436
	lw	%x22, 44(%x2)  #2620 pc 43440
	sw	%x5, 72(%x2)  #2620 pc 43444
	mv	%x5, %g0 #pc 43448
	sw	%x1, 76(%x2)  #2620 pc 43452
	lw	%x23, 0(%x22)  #2620 pc 43456
	addi	%x2, %x2, 80  #2620 pc 43460
	jalr	%x1, %x23, 0  #2620 pc 43464
	addi	%x2, %x2, -80  #2620 pc 43468
	lw	%x1, 76(%x2)  #2620 pc 43472
	lw	%x22, 44(%x2)  #2621 pc 43476
	sw	%x5, 76(%x2)  #2621 pc 43480
	mv	%x5, %g0 #pc 43484
	sw	%x1, 84(%x2)  #2621 pc 43488
	lw	%x23, 0(%x22)  #2621 pc 43492
	addi	%x2, %x2, 88  #2621 pc 43496
	jalr	%x1, %x23, 0  #2621 pc 43500
	addi	%x2, %x2, -88  #2621 pc 43504
	lw	%x1, 84(%x2)  #2621 pc 43508
	lw	%x22, 40(%x2)  #2622 pc 43512
	sw	%x5, 80(%x2)  #2622 pc 43516
	mv	%x5, %g0 #pc 43520
	sw	%x1, 84(%x2)  #2622 pc 43524
	lw	%x23, 0(%x22)  #2622 pc 43528
	addi	%x2, %x2, 88  #2622 pc 43532
	jalr	%x1, %x23, 0  #2622 pc 43536
	addi	%x2, %x2, -88  #2622 pc 43540
	lw	%x1, 84(%x2)  #2622 pc 43544
	lw	%x5, 32(%x2)  #2623 pc 43548
	lw	%x22, 36(%x2)  #2623 pc 43552
	sw	%x1, 84(%x2)  #2623 pc 43556
	lw	%x23, 0(%x22)  #2623 pc 43560
	addi	%x2, %x2, 88  #2623 pc 43564
	jalr	%x1, %x23, 0  #2623 pc 43568
	addi	%x2, %x2, -88  #2623 pc 43572
	lw	%x1, 84(%x2)  #2623 pc 43576
	lw	%x22, 28(%x2)  #2624 pc 43580
	mv	%x5, %g0 #pc 43584
	sw	%x1, 84(%x2)  #2624 pc 43588
	lw	%x23, 0(%x22)  #2624 pc 43592
	addi	%x2, %x2, 88  #2624 pc 43596
	jalr	%x1, %x23, 0  #2624 pc 43600
	addi	%x2, %x2, -88  #2624 pc 43604
	lw	%x1, 84(%x2)  #2624 pc 43608
	lw	%x5, 24(%x2)  #2625 pc 43612
	sw	%x1, 84(%x2)  #2625 pc 43616
	addi	%x2, %x2, 88  #2625 pc 43620
	jal	%x1, d_vec.2743  #2625 pc 43624
	addi	%x2, %x2, -88  #2625 pc 43628
	lw	%x1, 84(%x2) #2625 pc 43632
	lw	%x6, 20(%x2)  #2625 pc 43636
	sw	%x1, 84(%x2)  #2625 pc 43640
	addi	%x2, %x2, 88  #2625 pc 43644
	jal	%x1, veccpy.2654  #2625 pc 43648
	addi	%x2, %x2, -88  #2625 pc 43652
	lw	%x1, 84(%x2) #2625 pc 43656
	lw	%x5, 24(%x2)  #2626 pc 43660
	lw	%x22, 16(%x2)  #2626 pc 43664
	sw	%x1, 84(%x2)  #2626 pc 43668
	lw	%x23, 0(%x22)  #2626 pc 43672
	addi	%x2, %x2, 88  #2626 pc 43676
	jalr	%x1, %x23, 0  #2626 pc 43680
	addi	%x2, %x2, -88  #2626 pc 43684
	lw	%x1, 84(%x2)  #2626 pc 43688
	lw	%x5, 12(%x2)  #2627 pc 43692
	add	%x24, %x0, %x5  #2627 pc 43696
	lw	%x5, 0(%x24)  #2627 pc 43700
	addi	%x5, %x5, -1  #2627 pc 43704
	lw	%x22, 8(%x2)  #2627 pc 43708
	sw	%x1, 84(%x2)  #2627 pc 43712
	lw	%x23, 0(%x22)  #2627 pc 43716
	addi	%x2, %x2, 88  #2627 pc 43720
	jalr	%x1, %x23, 0  #2627 pc 43724
	addi	%x2, %x2, -88  #2627 pc 43728
	lw	%x1, 84(%x2)  #2627 pc 43732
	addi	%x6, %x0, 0  #0 pc 43736
	addi	%x7, %x0, 0  #0 pc 43740
	lw	%x5, 76(%x2)  #2628 pc 43744
	lw	%x22, 4(%x2)  #2628 pc 43748
	sw	%x1, 84(%x2)  #2628 pc 43752
	lw	%x23, 0(%x22)  #2628 pc 43756
	addi	%x2, %x2, 88  #2628 pc 43760
	jalr	%x1, %x23, 0  #2628 pc 43764
	addi	%x2, %x2, -88  #2628 pc 43768
	lw	%x1, 84(%x2)  #2628 pc 43772
	addi	%x5, %x0, 0  #0 pc 43776
	addi	%x10, %x0, 2  #0 pc 43780
	lw	%x6, 72(%x2)  #2629 pc 43784
	lw	%x7, 76(%x2)  #2629 pc 43788
	lw	%x9, 80(%x2)  #2629 pc 43792
	lw	%x11, 32(%x2)  #2629 pc 43796
	lw	%x22, 0(%x2)  #2629 pc 43800
	lw	%x23, 0(%x22)  #2629 pc 43804
	jalr	%x0, %x23, 0  #2629 pc 43808
	nop #pc 43812
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 1  #0 pc 43816
	addi	%x6, %x0, 0  #0 pc 43820
	sw	%x1, 12(%x2)  #208 pc 43824
	addi	%x2, %x2, 16  #208 pc 43828
	jal	%x1, create_array.2593  #208 pc 43832
	addi	%x2, %x2, -16  #208 pc 43836
	lw	%x1, 12(%x2) #208 pc 43840
	addi	%x6, %x0, 0  #0 pc 43844
	mv	%f0, l.6293  #0 pc 43848
	sw	%x5, 8(%x2)  #213 pc 43852
	mv	%x5, %x6 #pc 43856
	sw	%x1, 12(%x2)  #213 pc 43860
	addi	%x2, %x2, 16  #213 pc 43864
	jal	%x1, create_float_array.2600  #213 pc 43868
	addi	%x2, %x2, -16  #213 pc 43872
	lw	%x1, 12(%x2) #213 pc 43876
	addi	%x6, %x0, 60  #0 pc 43880
	addi	%x7, %x0, 0  #0 pc 43884
	mv	%x9, %x3  #214 pc 43888
	addi	%x3, %x3, 48  #214 pc 43892
	addi	%x24, %x0, 40  #pc 43896
	add	%x24, %x24, %x9  #214 pc 43900
	sw	%x5, 0(%x24)  #214 pc 43904
	addi	%x24, %x0, 36  #pc 43908
	add	%x24, %x24, %x9  #214 pc 43912
	sw	%x5, 0(%x24)  #214 pc 43916
	addi	%x24, %x0, 32  #pc 43920
	add	%x24, %x24, %x9  #214 pc 43924
	sw	%x5, 0(%x24)  #214 pc 43928
	addi	%x24, %x0, 28  #pc 43932
	add	%x24, %x24, %x9  #214 pc 43936
	sw	%x5, 0(%x24)  #214 pc 43940
	addi	%x24, %x0, 24  #pc 43944
	add	%x24, %x24, %x9  #214 pc 43948
	sw	%x7, 0(%x24)  #214 pc 43952
	addi	%x24, %x0, 20  #pc 43956
	add	%x24, %x24, %x9  #214 pc 43960
	sw	%x5, 0(%x24)  #214 pc 43964
	addi	%x24, %x0, 16  #pc 43968
	add	%x24, %x24, %x9  #214 pc 43972
	sw	%x5, 0(%x24)  #214 pc 43976
	addi	%x24, %x0, 12  #pc 43980
	add	%x24, %x24, %x9  #214 pc 43984
	sw	%x7, 0(%x24)  #214 pc 43988
	addi	%x24, %x0, 8  #pc 43992
	add	%x24, %x24, %x9  #214 pc 43996
	sw	%x7, 0(%x24)  #214 pc 44000
	addi	%x24, %x0, 4  #pc 44004
	add	%x24, %x24, %x9  #214 pc 44008
	sw	%x7, 0(%x24)  #214 pc 44012
	add	%x24, %x0, %x9  #214 pc 44016
	sw	%x7, 0(%x24)  #214 pc 44020
	mv	%x5, %x9  #214 pc 44024
	mv	%x23, %x6 #pc 44028
	mv	%x6, %x5 #pc 44032
	mv	%x5, %x23 #pc 44036
	sw	%x1, 12(%x2)  #214 pc 44040
	addi	%x2, %x2, 16  #214 pc 44044
	jal	%x1, create_array.2593  #214 pc 44048
	addi	%x2, %x2, -16  #214 pc 44052
	lw	%x1, 12(%x2) #214 pc 44056
	addi	%x6, %x0, 3  #0 pc 44060
	mv	%f0, l.6293  #0 pc 44064
	sw	%x5, 12(%x2)  #218 pc 44068
	mv	%x5, %x6 #pc 44072
	sw	%x1, 20(%x2)  #218 pc 44076
	addi	%x2, %x2, 24  #218 pc 44080
	jal	%x1, create_float_array.2600  #218 pc 44084
	addi	%x2, %x2, -24  #218 pc 44088
	lw	%x1, 20(%x2) #218 pc 44092
	addi	%x6, %x0, 3  #0 pc 44096
	mv	%f0, l.6293  #0 pc 44100
	sw	%x5, 16(%x2)  #221 pc 44104
	mv	%x5, %x6 #pc 44108
	sw	%x1, 20(%x2)  #221 pc 44112
	addi	%x2, %x2, 24  #221 pc 44116
	jal	%x1, create_float_array.2600  #221 pc 44120
	addi	%x2, %x2, -24  #221 pc 44124
	lw	%x1, 20(%x2) #221 pc 44128
	addi	%x6, %x0, 3  #0 pc 44132
	mv	%f0, l.6293  #0 pc 44136
	sw	%x5, 20(%x2)  #224 pc 44140
	mv	%x5, %x6 #pc 44144
	sw	%x1, 28(%x2)  #224 pc 44148
	addi	%x2, %x2, 32  #224 pc 44152
	jal	%x1, create_float_array.2600  #224 pc 44156
	addi	%x2, %x2, -32  #224 pc 44160
	lw	%x1, 28(%x2) #224 pc 44164
	addi	%x6, %x0, 1  #0 pc 44168
	mv	%f0, l.6807  #0 pc 44172
	sw	%x5, 24(%x2)  #227 pc 44176
	mv	%x5, %x6 #pc 44180
	sw	%x1, 28(%x2)  #227 pc 44184
	addi	%x2, %x2, 32  #227 pc 44188
	jal	%x1, create_float_array.2600  #227 pc 44192
	addi	%x2, %x2, -32  #227 pc 44196
	lw	%x1, 28(%x2) #227 pc 44200
	addi	%x6, %x0, 50  #0 pc 44204
	addi	%x7, %x0, 1  #0 pc 44208
	addi	%x9, %x0, -1  #0 pc 44212
	sw	%x5, 28(%x2)  #230 pc 44216
	sw	%x6, 32(%x2)  #230 pc 44220
	mv	%x6, %x9 #pc 44224
	mv	%x5, %x7 #pc 44228
	sw	%x1, 36(%x2)  #230 pc 44232
	addi	%x2, %x2, 40  #230 pc 44236
	jal	%x1, create_array.2593  #230 pc 44240
	addi	%x2, %x2, -40  #230 pc 44244
	lw	%x1, 36(%x2) #230 pc 44248
	mv	%x6, %x5  #230 pc 44252
	lw	%x5, 32(%x2)  #230 pc 44256
	sw	%x1, 36(%x2)  #230 pc 44260
	addi	%x2, %x2, 40  #230 pc 44264
	jal	%x1, create_array.2593  #230 pc 44268
	addi	%x2, %x2, -40  #230 pc 44272
	lw	%x1, 36(%x2) #230 pc 44276
	addi	%x6, %x0, 1  #0 pc 44280
	add	%x24, %x0, %x5  #233 pc 44284
	lw	%x7, 0(%x24)  #233 pc 44288
	sw	%x5, 36(%x2)  #233 pc 44292
	sw	%x6, 40(%x2)  #233 pc 44296
	mv	%x5, %x6 #pc 44300
	mv	%x6, %x7 #pc 44304
	sw	%x1, 44(%x2)  #233 pc 44308
	addi	%x2, %x2, 48  #233 pc 44312
	jal	%x1, create_array.2593  #233 pc 44316
	addi	%x2, %x2, -48  #233 pc 44320
	lw	%x1, 44(%x2) #233 pc 44324
	mv	%x6, %x5  #233 pc 44328
	lw	%x5, 40(%x2)  #233 pc 44332
	sw	%x1, 44(%x2)  #233 pc 44336
	addi	%x2, %x2, 48  #233 pc 44340
	jal	%x1, create_array.2593  #233 pc 44344
	addi	%x2, %x2, -48  #233 pc 44348
	lw	%x1, 44(%x2) #233 pc 44352
	addi	%x6, %x0, 1  #0 pc 44356
	mv	%f0, l.6293  #0 pc 44360
	sw	%x5, 44(%x2)  #238 pc 44364
	mv	%x5, %x6 #pc 44368
	sw	%x1, 52(%x2)  #238 pc 44372
	addi	%x2, %x2, 56  #238 pc 44376
	jal	%x1, create_float_array.2600  #238 pc 44380
	addi	%x2, %x2, -56  #238 pc 44384
	lw	%x1, 52(%x2) #238 pc 44388
	addi	%x6, %x0, 1  #0 pc 44392
	addi	%x7, %x0, 0  #0 pc 44396
	sw	%x5, 48(%x2)  #241 pc 44400
	mv	%x5, %x6 #pc 44404
	mv	%x6, %x7 #pc 44408
	sw	%x1, 52(%x2)  #241 pc 44412
	addi	%x2, %x2, 56  #241 pc 44416
	jal	%x1, create_array.2593  #241 pc 44420
	addi	%x2, %x2, -56  #241 pc 44424
	lw	%x1, 52(%x2) #241 pc 44428
	addi	%x6, %x0, 1  #0 pc 44432
	mv	%f0, l.6734  #0 pc 44436
	sw	%x5, 52(%x2)  #244 pc 44440
	mv	%x5, %x6 #pc 44444
	sw	%x1, 60(%x2)  #244 pc 44448
	addi	%x2, %x2, 64  #244 pc 44452
	jal	%x1, create_float_array.2600  #244 pc 44456
	addi	%x2, %x2, -64  #244 pc 44460
	lw	%x1, 60(%x2) #244 pc 44464
	addi	%x6, %x0, 3  #0 pc 44468
	mv	%f0, l.6293  #0 pc 44472
	sw	%x5, 56(%x2)  #247 pc 44476
	mv	%x5, %x6 #pc 44480
	sw	%x1, 60(%x2)  #247 pc 44484
	addi	%x2, %x2, 64  #247 pc 44488
	jal	%x1, create_float_array.2600  #247 pc 44492
	addi	%x2, %x2, -64  #247 pc 44496
	lw	%x1, 60(%x2) #247 pc 44500
	addi	%x6, %x0, 1  #0 pc 44504
	addi	%x7, %x0, 0  #0 pc 44508
	sw	%x5, 60(%x2)  #250 pc 44512
	mv	%x5, %x6 #pc 44516
	mv	%x6, %x7 #pc 44520
	sw	%x1, 68(%x2)  #250 pc 44524
	addi	%x2, %x2, 72  #250 pc 44528
	jal	%x1, create_array.2593  #250 pc 44532
	addi	%x2, %x2, -72  #250 pc 44536
	lw	%x1, 68(%x2) #250 pc 44540
	addi	%x6, %x0, 3  #0 pc 44544
	mv	%f0, l.6293  #0 pc 44548
	sw	%x5, 64(%x2)  #253 pc 44552
	mv	%x5, %x6 #pc 44556
	sw	%x1, 68(%x2)  #253 pc 44560
	addi	%x2, %x2, 72  #253 pc 44564
	jal	%x1, create_float_array.2600  #253 pc 44568
	addi	%x2, %x2, -72  #253 pc 44572
	lw	%x1, 68(%x2) #253 pc 44576
	addi	%x6, %x0, 3  #0 pc 44580
	mv	%f0, l.6293  #0 pc 44584
	sw	%x5, 68(%x2)  #256 pc 44588
	mv	%x5, %x6 #pc 44592
	sw	%x1, 76(%x2)  #256 pc 44596
	addi	%x2, %x2, 80  #256 pc 44600
	jal	%x1, create_float_array.2600  #256 pc 44604
	addi	%x2, %x2, -80  #256 pc 44608
	lw	%x1, 76(%x2) #256 pc 44612
	addi	%x6, %x0, 3  #0 pc 44616
	mv	%f0, l.6293  #0 pc 44620
	sw	%x5, 72(%x2)  #260 pc 44624
	mv	%x5, %x6 #pc 44628
	sw	%x1, 76(%x2)  #260 pc 44632
	addi	%x2, %x2, 80  #260 pc 44636
	jal	%x1, create_float_array.2600  #260 pc 44640
	addi	%x2, %x2, -80  #260 pc 44644
	lw	%x1, 76(%x2) #260 pc 44648
	addi	%x6, %x0, 3  #0 pc 44652
	mv	%f0, l.6293  #0 pc 44656
	sw	%x5, 76(%x2)  #263 pc 44660
	mv	%x5, %x6 #pc 44664
	sw	%x1, 84(%x2)  #263 pc 44668
	addi	%x2, %x2, 88  #263 pc 44672
	jal	%x1, create_float_array.2600  #263 pc 44676
	addi	%x2, %x2, -88  #263 pc 44680
	lw	%x1, 84(%x2) #263 pc 44684
	addi	%x6, %x0, 2  #0 pc 44688
	addi	%x7, %x0, 0  #0 pc 44692
	sw	%x5, 80(%x2)  #267 pc 44696
	mv	%x5, %x6 #pc 44700
	mv	%x6, %x7 #pc 44704
	sw	%x1, 84(%x2)  #267 pc 44708
	addi	%x2, %x2, 88  #267 pc 44712
	jal	%x1, create_array.2593  #267 pc 44716
	addi	%x2, %x2, -88  #267 pc 44720
	lw	%x1, 84(%x2) #267 pc 44724
	addi	%x6, %x0, 2  #0 pc 44728
	addi	%x7, %x0, 0  #0 pc 44732
	sw	%x5, 84(%x2)  #270 pc 44736
	mv	%x5, %x6 #pc 44740
	mv	%x6, %x7 #pc 44744
	sw	%x1, 92(%x2)  #270 pc 44748
	addi	%x2, %x2, 96  #270 pc 44752
	jal	%x1, create_array.2593  #270 pc 44756
	addi	%x2, %x2, -96  #270 pc 44760
	lw	%x1, 92(%x2) #270 pc 44764
	addi	%x6, %x0, 1  #0 pc 44768
	mv	%f0, l.6293  #0 pc 44772
	sw	%x5, 88(%x2)  #273 pc 44776
	mv	%x5, %x6 #pc 44780
	sw	%x1, 92(%x2)  #273 pc 44784
	addi	%x2, %x2, 96  #273 pc 44788
	jal	%x1, create_float_array.2600  #273 pc 44792
	addi	%x2, %x2, -96  #273 pc 44796
	lw	%x1, 92(%x2) #273 pc 44800
	addi	%x6, %x0, 3  #0 pc 44804
	mv	%f0, l.6293  #0 pc 44808
	sw	%x5, 92(%x2)  #277 pc 44812
	mv	%x5, %x6 #pc 44816
	sw	%x1, 100(%x2)  #277 pc 44820
	addi	%x2, %x2, 104  #277 pc 44824
	jal	%x1, create_float_array.2600  #277 pc 44828
	addi	%x2, %x2, -104  #277 pc 44832
	lw	%x1, 100(%x2) #277 pc 44836
	addi	%x6, %x0, 3  #0 pc 44840
	mv	%f0, l.6293  #0 pc 44844
	sw	%x5, 96(%x2)  #280 pc 44848
	mv	%x5, %x6 #pc 44852
	sw	%x1, 100(%x2)  #280 pc 44856
	addi	%x2, %x2, 104  #280 pc 44860
	jal	%x1, create_float_array.2600  #280 pc 44864
	addi	%x2, %x2, -104  #280 pc 44868
	lw	%x1, 100(%x2) #280 pc 44872
	addi	%x6, %x0, 3  #0 pc 44876
	mv	%f0, l.6293  #0 pc 44880
	sw	%x5, 100(%x2)  #284 pc 44884
	mv	%x5, %x6 #pc 44888
	sw	%x1, 108(%x2)  #284 pc 44892
	addi	%x2, %x2, 112  #284 pc 44896
	jal	%x1, create_float_array.2600  #284 pc 44900
	addi	%x2, %x2, -112  #284 pc 44904
	lw	%x1, 108(%x2) #284 pc 44908
	addi	%x6, %x0, 3  #0 pc 44912
	mv	%f0, l.6293  #0 pc 44916
	sw	%x5, 104(%x2)  #286 pc 44920
	mv	%x5, %x6 #pc 44924
	sw	%x1, 108(%x2)  #286 pc 44928
	addi	%x2, %x2, 112  #286 pc 44932
	jal	%x1, create_float_array.2600  #286 pc 44936
	addi	%x2, %x2, -112  #286 pc 44940
	lw	%x1, 108(%x2) #286 pc 44944
	addi	%x6, %x0, 3  #0 pc 44948
	mv	%f0, l.6293  #0 pc 44952
	sw	%x5, 108(%x2)  #288 pc 44956
	mv	%x5, %x6 #pc 44960
	sw	%x1, 116(%x2)  #288 pc 44964
	addi	%x2, %x2, 120  #288 pc 44968
	jal	%x1, create_float_array.2600  #288 pc 44972
	addi	%x2, %x2, -120  #288 pc 44976
	lw	%x1, 116(%x2) #288 pc 44980
	addi	%x6, %x0, 3  #0 pc 44984
	mv	%f0, l.6293  #0 pc 44988
	sw	%x5, 112(%x2)  #292 pc 44992
	mv	%x5, %x6 #pc 44996
	sw	%x1, 116(%x2)  #292 pc 45000
	addi	%x2, %x2, 120  #292 pc 45004
	jal	%x1, create_float_array.2600  #292 pc 45008
	addi	%x2, %x2, -120  #292 pc 45012
	lw	%x1, 116(%x2) #292 pc 45016
	addi	%x6, %x0, 0  #0 pc 45020
	mv	%f0, l.6293  #0 pc 45024
	sw	%x5, 116(%x2)  #297 pc 45028
	mv	%x5, %x6 #pc 45032
	sw	%x1, 124(%x2)  #297 pc 45036
	addi	%x2, %x2, 128  #297 pc 45040
	jal	%x1, create_float_array.2600  #297 pc 45044
	addi	%x2, %x2, -128  #297 pc 45048
	lw	%x1, 124(%x2) #297 pc 45052
	mv	%x6, %x5  #297 pc 45056
	addi	%x5, %x0, 0  #0 pc 45060
	sw	%x6, 120(%x2)  #298 pc 45064
	sw	%x1, 124(%x2)  #298 pc 45068
	addi	%x2, %x2, 128  #298 pc 45072
	jal	%x1, create_array.2593  #298 pc 45076
	addi	%x2, %x2, -128  #298 pc 45080
	lw	%x1, 124(%x2) #298 pc 45084
	addi	%x6, %x0, 0  #0 pc 45088
	mv	%x7, %x3  #299 pc 45092
	addi	%x3, %x3, 8  #299 pc 45096
	addi	%x24, %x0, 4  #pc 45100
	add	%x24, %x24, %x7  #299 pc 45104
	sw	%x5, 0(%x24)  #299 pc 45108
	lw	%x5, 120(%x2)  #299 pc 45112
	add	%x24, %x0, %x7  #299 pc 45116
	sw	%x5, 0(%x24)  #299 pc 45120
	mv	%x5, %x7  #299 pc 45124
	mv	%x23, %x6 #pc 45128
	mv	%x6, %x5 #pc 45132
	mv	%x5, %x23 #pc 45136
	sw	%x1, 124(%x2)  #299 pc 45140
	addi	%x2, %x2, 128  #299 pc 45144
	jal	%x1, create_array.2593  #299 pc 45148
	addi	%x2, %x2, -128  #299 pc 45152
	lw	%x1, 124(%x2) #299 pc 45156
	mv	%x6, %x5  #299 pc 45160
	addi	%x5, %x0, 5  #0 pc 45164
	sw	%x1, 124(%x2)  #300 pc 45168
	addi	%x2, %x2, 128  #300 pc 45172
	jal	%x1, create_array.2593  #300 pc 45176
	addi	%x2, %x2, -128  #300 pc 45180
	lw	%x1, 124(%x2) #300 pc 45184
	addi	%x6, %x0, 0  #0 pc 45188
	mv	%f0, l.6293  #0 pc 45192
	sw	%x5, 124(%x2)  #305 pc 45196
	mv	%x5, %x6 #pc 45200
	sw	%x1, 132(%x2)  #305 pc 45204
	addi	%x2, %x2, 136  #305 pc 45208
	jal	%x1, create_float_array.2600  #305 pc 45212
	addi	%x2, %x2, -136  #305 pc 45216
	lw	%x1, 132(%x2) #305 pc 45220
	addi	%x6, %x0, 3  #0 pc 45224
	mv	%f0, l.6293  #0 pc 45228
	sw	%x5, 128(%x2)  #306 pc 45232
	mv	%x5, %x6 #pc 45236
	sw	%x1, 132(%x2)  #306 pc 45240
	addi	%x2, %x2, 136  #306 pc 45244
	jal	%x1, create_float_array.2600  #306 pc 45248
	addi	%x2, %x2, -136  #306 pc 45252
	lw	%x1, 132(%x2) #306 pc 45256
	addi	%x6, %x0, 60  #0 pc 45260
	lw	%x7, 128(%x2)  #307 pc 45264
	sw	%x5, 132(%x2)  #307 pc 45268
	mv	%x5, %x6 #pc 45272
	mv	%x6, %x7 #pc 45276
	sw	%x1, 140(%x2)  #307 pc 45280
	addi	%x2, %x2, 144  #307 pc 45284
	jal	%x1, create_array.2593  #307 pc 45288
	addi	%x2, %x2, -144  #307 pc 45292
	lw	%x1, 140(%x2) #307 pc 45296
	mv	%x6, %x3  #308 pc 45300
	addi	%x3, %x3, 8  #308 pc 45304
	addi	%x24, %x0, 4  #pc 45308
	add	%x24, %x24, %x6  #308 pc 45312
	sw	%x5, 0(%x24)  #308 pc 45316
	lw	%x5, 132(%x2)  #308 pc 45320
	add	%x24, %x0, %x6  #308 pc 45324
	sw	%x5, 0(%x24)  #308 pc 45328
	mv	%x5, %x6  #308 pc 45332
	addi	%x6, %x0, 0  #0 pc 45336
	mv	%f0, l.6293  #0 pc 45340
	sw	%x5, 136(%x2)  #313 pc 45344
	mv	%x5, %x6 #pc 45348
	sw	%x1, 140(%x2)  #313 pc 45352
	addi	%x2, %x2, 144  #313 pc 45356
	jal	%x1, create_float_array.2600  #313 pc 45360
	addi	%x2, %x2, -144  #313 pc 45364
	lw	%x1, 140(%x2) #313 pc 45368
	mv	%x6, %x5  #313 pc 45372
	addi	%x5, %x0, 0  #0 pc 45376
	sw	%x6, 140(%x2)  #314 pc 45380
	sw	%x1, 148(%x2)  #314 pc 45384
	addi	%x2, %x2, 152  #314 pc 45388
	jal	%x1, create_array.2593  #314 pc 45392
	addi	%x2, %x2, -152  #314 pc 45396
	lw	%x1, 148(%x2) #314 pc 45400
	mv	%x6, %x3  #315 pc 45404
	addi	%x3, %x3, 8  #315 pc 45408
	addi	%x24, %x0, 4  #pc 45412
	add	%x24, %x24, %x6  #315 pc 45416
	sw	%x5, 0(%x24)  #315 pc 45420
	lw	%x5, 140(%x2)  #315 pc 45424
	add	%x24, %x0, %x6  #315 pc 45428
	sw	%x5, 0(%x24)  #315 pc 45432
	mv	%x5, %x6  #315 pc 45436
	addi	%x6, %x0, 180  #0 pc 45440
	addi	%x7, %x0, 0  #0 pc 45444
	mv	%f0, l.6293  #0 pc 45448
	mv	%x9, %x3  #316 pc 45452
	addi	%x3, %x3, 16  #316 pc 45456
	addi	%x24, %x0, 8  #pc 45460
	add	%x24, %x24, %x9  #316 pc 45464
	fsw	%f0, 0(%x24) #316 pc 45468
	addi	%x24, %x0, 4  #pc 45472
	add	%x24, %x24, %x9  #316 pc 45476
	sw	%x5, 0(%x24)  #316 pc 45480
	add	%x24, %x0, %x9  #316 pc 45484
	sw	%x7, 0(%x24)  #316 pc 45488
	mv	%x5, %x9  #316 pc 45492
	mv	%x23, %x6 #pc 45496
	mv	%x6, %x5 #pc 45500
	mv	%x5, %x23 #pc 45504
	sw	%x1, 148(%x2)  #316 pc 45508
	addi	%x2, %x2, 152  #316 pc 45512
	jal	%x1, create_array.2593  #316 pc 45516
	addi	%x2, %x2, -152  #316 pc 45520
	lw	%x1, 148(%x2) #316 pc 45524
	addi	%x6, %x0, 1  #0 pc 45528
	addi	%x7, %x0, 0  #0 pc 45532
	sw	%x5, 144(%x2)  #320 pc 45536
	mv	%x5, %x6 #pc 45540
	mv	%x6, %x7 #pc 45544
	sw	%x1, 148(%x2)  #320 pc 45548
	addi	%x2, %x2, 152  #320 pc 45552
	jal	%x1, create_array.2593  #320 pc 45556
	addi	%x2, %x2, -152  #320 pc 45560
	lw	%x1, 148(%x2) #320 pc 45564
	mv	%x6, %x3  #803 pc 45568
	addi	%x3, %x3, 24  #803 pc 45572
	addi	%x24, %x0, 4268  #803 read_screen_settings.2755 pc 45576
	mv	%x7, %x24  #803 pc 45580
	add	%x24, %x0, %x6  #803 pc 45584
	sw	%x7, 0(%x24)  #803 pc 45588
	lw	%x7, 20(%x2)  #803 pc 45592
	addi	%x24, %x0, 20  #pc 45596
	add	%x24, %x24, %x6  #803 pc 45600
	sw	%x7, 0(%x24)  #803 pc 45604
	lw	%x9, 112(%x2)  #803 pc 45608
	addi	%x24, %x0, 16  #pc 45612
	add	%x24, %x24, %x6  #803 pc 45616
	sw	%x9, 0(%x24)  #803 pc 45620
	lw	%x10, 108(%x2)  #803 pc 45624
	addi	%x24, %x0, 12  #pc 45628
	add	%x24, %x24, %x6  #803 pc 45632
	sw	%x10, 0(%x24)  #803 pc 45636
	lw	%x11, 104(%x2)  #803 pc 45640
	addi	%x24, %x0, 8  #pc 45644
	add	%x24, %x24, %x6  #803 pc 45648
	sw	%x11, 0(%x24)  #803 pc 45652
	lw	%x12, 16(%x2)  #803 pc 45656
	addi	%x24, %x0, 4  #pc 45660
	add	%x24, %x24, %x6  #803 pc 45664
	sw	%x12, 0(%x24)  #803 pc 45668
	mv	%x12, %x3  #836 pc 45672
	addi	%x3, %x3, 16  #836 pc 45676
	addi	%x24, %x0, 5084  #836 read_light.2757 pc 45680
	mv	%x13, %x24  #836 pc 45684
	add	%x24, %x0, %x12  #836 pc 45688
	sw	%x13, 0(%x24)  #836 pc 45692
	lw	%x13, 24(%x2)  #836 pc 45696
	addi	%x24, %x0, 8  #pc 45700
	add	%x24, %x24, %x12  #836 pc 45704
	sw	%x13, 0(%x24)  #836 pc 45708
	lw	%x14, 28(%x2)  #836 pc 45712
	addi	%x24, %x0, 4  #pc 45716
	add	%x24, %x24, %x12  #836 pc 45720
	sw	%x14, 0(%x24)  #836 pc 45724
	mv	%x15, %x3  #899 pc 45728
	addi	%x3, %x3, 8  #899 pc 45732
	addi	%x24, %x0, 6636  #899 read_nth_object.2762 pc 45736
	mv	%x16, %x24  #899 pc 45740
	add	%x24, %x0, %x15  #899 pc 45744
	sw	%x16, 0(%x24)  #899 pc 45748
	lw	%x16, 12(%x2)  #899 pc 45752
	addi	%x24, %x0, 4  #pc 45756
	add	%x24, %x24, %x15  #899 pc 45760
	sw	%x16, 0(%x24)  #899 pc 45764
	mv	%x17, %x3  #982 pc 45768
	addi	%x3, %x3, 16  #982 pc 45772
	addi	%x24, %x0, 8512  #982 read_object.2764 pc 45776
	mv	%x18, %x24  #982 pc 45780
	add	%x24, %x0, %x17  #982 pc 45784
	sw	%x18, 0(%x24)  #982 pc 45788
	addi	%x24, %x0, 8  #pc 45792
	add	%x24, %x24, %x17  #982 pc 45796
	sw	%x15, 0(%x24)  #982 pc 45800
	lw	%x15, 8(%x2)  #982 pc 45804
	addi	%x24, %x0, 4  #pc 45808
	add	%x24, %x24, %x17  #982 pc 45812
	sw	%x15, 0(%x24)  #982 pc 45816
	mv	%x18, %x3  #991 pc 45820
	addi	%x3, %x3, 8  #991 pc 45824
	addi	%x24, %x0, 8660  #991 read_all_object.2766 pc 45828
	mv	%x19, %x24  #991 pc 45832
	add	%x24, %x0, %x18  #991 pc 45836
	sw	%x19, 0(%x24)  #991 pc 45840
	addi	%x24, %x0, 4  #pc 45844
	add	%x24, %x24, %x18  #991 pc 45848
	sw	%x17, 0(%x24)  #991 pc 45852
	mv	%x17, %x3  #1015 pc 45856
	addi	%x3, %x3, 8  #1015 pc 45860
	addi	%x24, %x0, 8956  #1015 read_and_network.2772 pc 45864
	mv	%x19, %x24  #1015 pc 45868
	add	%x24, %x0, %x17  #1015 pc 45872
	sw	%x19, 0(%x24)  #1015 pc 45876
	lw	%x19, 36(%x2)  #1015 pc 45880
	addi	%x24, %x0, 4  #pc 45884
	add	%x24, %x24, %x17  #1015 pc 45888
	sw	%x19, 0(%x24)  #1015 pc 45892
	mv	%x20, %x3  #1024 pc 45896
	addi	%x3, %x3, 24  #1024 pc 45900
	addi	%x24, %x0, 9080  #1024 read_parameter.2774 pc 45904
	mv	%x21, %x24  #1024 pc 45908
	add	%x24, %x0, %x20  #1024 pc 45912
	sw	%x21, 0(%x24)  #1024 pc 45916
	addi	%x24, %x0, 20  #pc 45920
	add	%x24, %x24, %x20  #1024 pc 45924
	sw	%x6, 0(%x24)  #1024 pc 45928
	addi	%x24, %x0, 16  #pc 45932
	add	%x24, %x24, %x20  #1024 pc 45936
	sw	%x12, 0(%x24)  #1024 pc 45940
	addi	%x24, %x0, 12  #pc 45944
	add	%x24, %x24, %x20  #1024 pc 45948
	sw	%x17, 0(%x24)  #1024 pc 45952
	addi	%x24, %x0, 8  #pc 45956
	add	%x24, %x24, %x20  #1024 pc 45960
	sw	%x18, 0(%x24)  #1024 pc 45964
	lw	%x6, 44(%x2)  #1024 pc 45968
	addi	%x24, %x0, 4  #pc 45972
	add	%x24, %x24, %x20  #1024 pc 45976
	sw	%x6, 0(%x24)  #1024 pc 45980
	mv	%x12, %x3  #1049 pc 45984
	addi	%x3, %x3, 8  #1049 pc 45988
	addi	%x24, %x0, 9328  #1049 solver_rect_surface.2776 pc 45992
	mv	%x17, %x24  #1049 pc 45996
	add	%x24, %x0, %x12  #1049 pc 46000
	sw	%x17, 0(%x24)  #1049 pc 46004
	lw	%x17, 48(%x2)  #1049 pc 46008
	addi	%x24, %x0, 4  #pc 46012
	add	%x24, %x24, %x12  #1049 pc 46016
	sw	%x17, 0(%x24)  #1049 pc 46020
	mv	%x18, %x3  #1064 pc 46024
	addi	%x3, %x3, 8  #1064 pc 46028
	addi	%x24, %x0, 9888  #1064 solver_rect.2785 pc 46032
	mv	%x21, %x24  #1064 pc 46036
	add	%x24, %x0, %x18  #1064 pc 46040
	sw	%x21, 0(%x24)  #1064 pc 46044
	addi	%x24, %x0, 4  #pc 46048
	add	%x24, %x24, %x18  #1064 pc 46052
	sw	%x12, 0(%x24)  #1064 pc 46056
	mv	%x12, %x3  #1073 pc 46060
	addi	%x3, %x3, 8  #1073 pc 46064
	addi	%x24, %x0, 10164  #1073 solver_surface.2791 pc 46068
	mv	%x21, %x24  #1073 pc 46072
	add	%x24, %x0, %x12  #1073 pc 46076
	sw	%x21, 0(%x24)  #1073 pc 46080
	addi	%x24, %x0, 4  #pc 46084
	add	%x24, %x24, %x12  #1073 pc 46088
	sw	%x17, 0(%x24)  #1073 pc 46092
	mv	%x21, %x3  #1124 pc 46096
	addi	%x3, %x3, 8  #1124 pc 46100
	addi	%x24, %x0, 11340  #1124 solver_second.2810 pc 46104
	mv	%x22, %x24  #1124 pc 46108
	add	%x24, %x0, %x21  #1124 pc 46112
	sw	%x22, 0(%x24)  #1124 pc 46116
	addi	%x24, %x0, 4  #pc 46120
	add	%x24, %x24, %x21  #1124 pc 46124
	sw	%x17, 0(%x24)  #1124 pc 46128
	mv	%x22, %x3  #1153 pc 46132
	addi	%x3, %x3, 24  #1153 pc 46136
	addi	%x24, %x0, 11928  #1153 solver.2816 pc 46140
	mv	%x23, %x24  #1153 pc 46144
	add	%x24, %x0, %x22  #1153 pc 46148
	sw	%x23, 0(%x24)  #1153 pc 46152
	addi	%x24, %x0, 16  #pc 46156
	add	%x24, %x24, %x22  #1153 pc 46160
	sw	%x12, 0(%x24)  #1153 pc 46164
	addi	%x24, %x0, 12  #pc 46168
	add	%x24, %x24, %x22  #1153 pc 46172
	sw	%x21, 0(%x24)  #1153 pc 46176
	addi	%x24, %x0, 8  #pc 46180
	add	%x24, %x24, %x22  #1153 pc 46184
	sw	%x18, 0(%x24)  #1153 pc 46188
	addi	%x24, %x0, 4  #pc 46192
	add	%x24, %x24, %x22  #1153 pc 46196
	sw	%x16, 0(%x24)  #1153 pc 46200
	mv	%x12, %x3  #1185 pc 46204
	addi	%x3, %x3, 8  #1185 pc 46208
	addi	%x24, %x0, 12336  #1185 solver_rect_fast.2820 pc 46212
	mv	%x18, %x24  #1185 pc 46216
	add	%x24, %x0, %x12  #1185 pc 46220
	sw	%x18, 0(%x24)  #1185 pc 46224
	addi	%x24, %x0, 4  #pc 46228
	add	%x24, %x24, %x12  #1185 pc 46232
	sw	%x17, 0(%x24)  #1185 pc 46236
	mv	%x18, %x3  #1218 pc 46240
	addi	%x3, %x3, 8  #1218 pc 46244
	addi	%x24, %x0, 13524  #1218 solver_surface_fast.2827 pc 46248
	mv	%x21, %x24  #1218 pc 46252
	add	%x24, %x0, %x18  #1218 pc 46256
	sw	%x21, 0(%x24)  #1218 pc 46260
	addi	%x24, %x0, 4  #pc 46264
	add	%x24, %x24, %x18  #1218 pc 46268
	sw	%x17, 0(%x24)  #1218 pc 46272
	mv	%x21, %x3  #1227 pc 46276
	addi	%x3, %x3, 8  #1227 pc 46280
	addi	%x24, %x0, 13712  #1227 solver_second_fast.2833 pc 46284
	mv	%x23, %x24  #1227 pc 46288
	add	%x24, %x0, %x21  #1227 pc 46292
	sw	%x23, 0(%x24)  #1227 pc 46296
	addi	%x24, %x0, 4  #pc 46300
	add	%x24, %x24, %x21  #1227 pc 46304
	sw	%x17, 0(%x24)  #1227 pc 46308
	mv	%x23, %x3  #1247 pc 46312
	addi	%x3, %x3, 24  #1247 pc 46316
	sw	%x20, 148(%x2)  #1247 pc 46320
	addi	%x24, %x0, 14260  #1247 solver_fast.2839 pc 46324
	mv	%x20, %x24  #1247 pc 46328
	add	%x24, %x0, %x23  #1247 pc 46332
	sw	%x20, 0(%x24)  #1247 pc 46336
	addi	%x24, %x0, 16  #pc 46340
	add	%x24, %x24, %x23  #1247 pc 46344
	sw	%x18, 0(%x24)  #1247 pc 46348
	addi	%x24, %x0, 12  #pc 46352
	add	%x24, %x24, %x23  #1247 pc 46356
	sw	%x21, 0(%x24)  #1247 pc 46360
	addi	%x24, %x0, 8  #pc 46364
	add	%x24, %x24, %x23  #1247 pc 46368
	sw	%x12, 0(%x24)  #1247 pc 46372
	addi	%x24, %x0, 4  #pc 46376
	add	%x24, %x24, %x23  #1247 pc 46380
	sw	%x16, 0(%x24)  #1247 pc 46384
	mv	%x18, %x3  #1267 pc 46388
	addi	%x3, %x3, 8  #1267 pc 46392
	addi	%x24, %x0, 14752  #1267 solver_surface_fast2.2843 pc 46396
	mv	%x20, %x24  #1267 pc 46400
	add	%x24, %x0, %x18  #1267 pc 46404
	sw	%x20, 0(%x24)  #1267 pc 46408
	addi	%x24, %x0, 4  #pc 46412
	add	%x24, %x24, %x18  #1267 pc 46416
	sw	%x17, 0(%x24)  #1267 pc 46420
	mv	%x20, %x3  #1275 pc 46424
	addi	%x3, %x3, 8  #1275 pc 46428
	addi	%x24, %x0, 14884  #1275 solver_second_fast2.2850 pc 46432
	mv	%x21, %x24  #1275 pc 46436
	add	%x24, %x0, %x20  #1275 pc 46440
	sw	%x21, 0(%x24)  #1275 pc 46444
	addi	%x24, %x0, 4  #pc 46448
	add	%x24, %x24, %x20  #1275 pc 46452
	sw	%x17, 0(%x24)  #1275 pc 46456
	mv	%x21, %x3  #1294 pc 46460
	addi	%x3, %x3, 24  #1294 pc 46464
	addi	%x24, %x0, 15320  #1294 solver_fast2.2857 pc 46468
	mv	%x10, %x24  #1294 pc 46472
	add	%x24, %x0, %x21  #1294 pc 46476
	sw	%x10, 0(%x24)  #1294 pc 46480
	addi	%x24, %x0, 16  #pc 46484
	add	%x24, %x24, %x21  #1294 pc 46488
	sw	%x18, 0(%x24)  #1294 pc 46492
	addi	%x24, %x0, 12  #pc 46496
	add	%x24, %x24, %x21  #1294 pc 46500
	sw	%x20, 0(%x24)  #1294 pc 46504
	addi	%x24, %x0, 8  #pc 46508
	add	%x24, %x24, %x21  #1294 pc 46512
	sw	%x12, 0(%x24)  #1294 pc 46516
	addi	%x24, %x0, 4  #pc 46520
	add	%x24, %x24, %x21  #1294 pc 46524
	sw	%x16, 0(%x24)  #1294 pc 46528
	mv	%x10, %x3  #1391 pc 46532
	addi	%x3, %x3, 8  #1391 pc 46536
	addi	%x24, %x0, 18168  #1391 iter_setup_dirvec_constants.2869 pc 46540
	mv	%x12, %x24  #1391 pc 46544
	add	%x24, %x0, %x10  #1391 pc 46548
	sw	%x12, 0(%x24)  #1391 pc 46552
	addi	%x24, %x0, 4  #pc 46556
	add	%x24, %x24, %x10  #1391 pc 46560
	sw	%x16, 0(%x24)  #1391 pc 46564
	mv	%x12, %x3  #1408 pc 46568
	addi	%x3, %x3, 16  #1408 pc 46572
	addi	%x24, %x0, 18528  #1408 setup_dirvec_constants.2872 pc 46576
	mv	%x18, %x24  #1408 pc 46580
	add	%x24, %x0, %x12  #1408 pc 46584
	sw	%x18, 0(%x24)  #1408 pc 46588
	addi	%x24, %x0, 8  #pc 46592
	add	%x24, %x24, %x12  #1408 pc 46596
	sw	%x15, 0(%x24)  #1408 pc 46600
	addi	%x24, %x0, 4  #pc 46604
	add	%x24, %x24, %x12  #1408 pc 46608
	sw	%x10, 0(%x24)  #1408 pc 46612
	mv	%x10, %x3  #1416 pc 46616
	addi	%x3, %x3, 8  #1416 pc 46620
	addi	%x24, %x0, 18576  #1416 setup_startp_constants.2874 pc 46624
	mv	%x18, %x24  #1416 pc 46628
	add	%x24, %x0, %x10  #1416 pc 46632
	sw	%x18, 0(%x24)  #1416 pc 46636
	addi	%x24, %x0, 4  #pc 46640
	add	%x24, %x24, %x10  #1416 pc 46644
	sw	%x16, 0(%x24)  #1416 pc 46648
	mv	%x18, %x3  #1435 pc 46652
	addi	%x3, %x3, 16  #1435 pc 46656
	addi	%x24, %x0, 19196  #1435 setup_startp.2877 pc 46660
	mv	%x20, %x24  #1435 pc 46664
	add	%x24, %x0, %x18  #1435 pc 46668
	sw	%x20, 0(%x24)  #1435 pc 46672
	lw	%x20, 100(%x2)  #1435 pc 46676
	addi	%x24, %x0, 12  #pc 46680
	add	%x24, %x24, %x18  #1435 pc 46684
	sw	%x20, 0(%x24)  #1435 pc 46688
	addi	%x24, %x0, 8  #pc 46692
	add	%x24, %x24, %x18  #1435 pc 46696
	sw	%x10, 0(%x24)  #1435 pc 46700
	addi	%x24, %x0, 4  #pc 46704
	add	%x24, %x24, %x18  #1435 pc 46708
	sw	%x15, 0(%x24)  #1435 pc 46712
	mv	%x10, %x3  #1485 pc 46716
	addi	%x3, %x3, 8  #1485 pc 46720
	sw	%x12, 152(%x2)  #1485 pc 46724
	addi	%x24, %x0, 20300  #1485 check_all_inside.2899 pc 46728
	mv	%x12, %x24  #1485 pc 46732
	add	%x24, %x0, %x10  #1485 pc 46736
	sw	%x12, 0(%x24)  #1485 pc 46740
	addi	%x24, %x0, 4  #pc 46744
	add	%x24, %x24, %x10  #1485 pc 46748
	sw	%x16, 0(%x24)  #1485 pc 46752
	mv	%x12, %x3  #1505 pc 46756
	addi	%x3, %x3, 32  #1505 pc 46760
	addi	%x24, %x0, 20476  #1505 shadow_check_and_group.2905 pc 46764
	mv	%x15, %x24  #1505 pc 46768
	add	%x24, %x0, %x12  #1505 pc 46772
	sw	%x15, 0(%x24)  #1505 pc 46776
	addi	%x24, %x0, 28  #pc 46780
	add	%x24, %x24, %x12  #1505 pc 46784
	sw	%x23, 0(%x24)  #1505 pc 46788
	addi	%x24, %x0, 24  #pc 46792
	add	%x24, %x24, %x12  #1505 pc 46796
	sw	%x17, 0(%x24)  #1505 pc 46800
	addi	%x24, %x0, 20  #pc 46804
	add	%x24, %x24, %x12  #1505 pc 46808
	sw	%x16, 0(%x24)  #1505 pc 46812
	lw	%x15, 136(%x2)  #1505 pc 46816
	addi	%x24, %x0, 16  #pc 46820
	add	%x24, %x24, %x12  #1505 pc 46824
	sw	%x15, 0(%x24)  #1505 pc 46828
	addi	%x24, %x0, 12  #pc 46832
	add	%x24, %x24, %x12  #1505 pc 46836
	sw	%x13, 0(%x24)  #1505 pc 46840
	lw	%x9, 60(%x2)  #1505 pc 46844
	addi	%x24, %x0, 8  #pc 46848
	add	%x24, %x24, %x12  #1505 pc 46852
	sw	%x9, 0(%x24)  #1505 pc 46856
	addi	%x24, %x0, 4  #pc 46860
	add	%x24, %x24, %x12  #1505 pc 46864
	sw	%x10, 0(%x24)  #1505 pc 46868
	mv	%x11, %x3  #1535 pc 46872
	addi	%x3, %x3, 16  #1535 pc 46876
	addi	%x24, %x0, 21084  #1535 shadow_check_one_or_group.2908 pc 46880
	mv	%x7, %x24  #1535 pc 46884
	add	%x24, %x0, %x11  #1535 pc 46888
	sw	%x7, 0(%x24)  #1535 pc 46892
	addi	%x24, %x0, 8  #pc 46896
	add	%x24, %x24, %x11  #1535 pc 46900
	sw	%x12, 0(%x24)  #1535 pc 46904
	addi	%x24, %x0, 4  #pc 46908
	add	%x24, %x24, %x11  #1535 pc 46912
	sw	%x19, 0(%x24)  #1535 pc 46916
	mv	%x7, %x3  #1550 pc 46920
	addi	%x3, %x3, 24  #1550 pc 46924
	addi	%x24, %x0, 21264  #1550 shadow_check_one_or_matrix.2911 pc 46928
	mv	%x12, %x24  #1550 pc 46932
	add	%x24, %x0, %x7  #1550 pc 46936
	sw	%x12, 0(%x24)  #1550 pc 46940
	addi	%x24, %x0, 20  #pc 46944
	add	%x24, %x24, %x7  #1550 pc 46948
	sw	%x23, 0(%x24)  #1550 pc 46952
	addi	%x24, %x0, 16  #pc 46956
	add	%x24, %x24, %x7  #1550 pc 46960
	sw	%x17, 0(%x24)  #1550 pc 46964
	addi	%x24, %x0, 12  #pc 46968
	add	%x24, %x24, %x7  #1550 pc 46972
	sw	%x11, 0(%x24)  #1550 pc 46976
	addi	%x24, %x0, 8  #pc 46980
	add	%x24, %x24, %x7  #1550 pc 46984
	sw	%x15, 0(%x24)  #1550 pc 46988
	addi	%x24, %x0, 4  #pc 46992
	add	%x24, %x24, %x7  #1550 pc 46996
	sw	%x9, 0(%x24)  #1550 pc 47000
	mv	%x11, %x3  #1586 pc 47004
	addi	%x3, %x3, 40  #1586 pc 47008
	addi	%x24, %x0, 21740  #1586 solve_each_element.2914 pc 47012
	mv	%x12, %x24  #1586 pc 47016
	add	%x24, %x0, %x11  #1586 pc 47020
	sw	%x12, 0(%x24)  #1586 pc 47024
	lw	%x12, 56(%x2)  #1586 pc 47028
	addi	%x24, %x0, 36  #pc 47032
	add	%x24, %x24, %x11  #1586 pc 47036
	sw	%x12, 0(%x24)  #1586 pc 47040
	lw	%x23, 96(%x2)  #1586 pc 47044
	addi	%x24, %x0, 32  #pc 47048
	add	%x24, %x24, %x11  #1586 pc 47052
	sw	%x23, 0(%x24)  #1586 pc 47056
	addi	%x24, %x0, 28  #pc 47060
	add	%x24, %x24, %x11  #1586 pc 47064
	sw	%x17, 0(%x24)  #1586 pc 47068
	addi	%x24, %x0, 24  #pc 47072
	add	%x24, %x24, %x11  #1586 pc 47076
	sw	%x22, 0(%x24)  #1586 pc 47080
	addi	%x24, %x0, 20  #pc 47084
	add	%x24, %x24, %x11  #1586 pc 47088
	sw	%x16, 0(%x24)  #1586 pc 47092
	lw	%x15, 52(%x2)  #1586 pc 47096
	addi	%x24, %x0, 16  #pc 47100
	add	%x24, %x24, %x11  #1586 pc 47104
	sw	%x15, 0(%x24)  #1586 pc 47108
	addi	%x24, %x0, 12  #pc 47112
	add	%x24, %x24, %x11  #1586 pc 47116
	sw	%x9, 0(%x24)  #1586 pc 47120
	lw	%x14, 64(%x2)  #1586 pc 47124
	addi	%x24, %x0, 8  #pc 47128
	add	%x24, %x24, %x11  #1586 pc 47132
	sw	%x14, 0(%x24)  #1586 pc 47136
	addi	%x24, %x0, 4  #pc 47140
	add	%x24, %x24, %x11  #1586 pc 47144
	sw	%x10, 0(%x24)  #1586 pc 47148
	mv	%x13, %x3  #1627 pc 47152
	addi	%x3, %x3, 16  #1627 pc 47156
	sw	%x5, 156(%x2)  #1627 pc 47160
	addi	%x24, %x0, 22528  #1627 solve_one_or_network.2918 pc 47164
	mv	%x5, %x24  #1627 pc 47168
	add	%x24, %x0, %x13  #1627 pc 47172
	sw	%x5, 0(%x24)  #1627 pc 47176
	addi	%x24, %x0, 8  #pc 47180
	add	%x24, %x24, %x13  #1627 pc 47184
	sw	%x11, 0(%x24)  #1627 pc 47188
	addi	%x24, %x0, 4  #pc 47192
	add	%x24, %x24, %x13  #1627 pc 47196
	sw	%x19, 0(%x24)  #1627 pc 47200
	mv	%x5, %x3  #1637 pc 47204
	addi	%x3, %x3, 24  #1637 pc 47208
	addi	%x24, %x0, 22688  #1637 trace_or_matrix.2922 pc 47212
	mv	%x11, %x24  #1637 pc 47216
	add	%x24, %x0, %x5  #1637 pc 47220
	sw	%x11, 0(%x24)  #1637 pc 47224
	addi	%x24, %x0, 20  #pc 47228
	add	%x24, %x24, %x5  #1637 pc 47232
	sw	%x12, 0(%x24)  #1637 pc 47236
	addi	%x24, %x0, 16  #pc 47240
	add	%x24, %x24, %x5  #1637 pc 47244
	sw	%x23, 0(%x24)  #1637 pc 47248
	addi	%x24, %x0, 12  #pc 47252
	add	%x24, %x24, %x5  #1637 pc 47256
	sw	%x17, 0(%x24)  #1637 pc 47260
	addi	%x24, %x0, 8  #pc 47264
	add	%x24, %x24, %x5  #1637 pc 47268
	sw	%x22, 0(%x24)  #1637 pc 47272
	addi	%x24, %x0, 4  #pc 47276
	add	%x24, %x24, %x5  #1637 pc 47280
	sw	%x13, 0(%x24)  #1637 pc 47284
	mv	%x11, %x3  #1664 pc 47288
	addi	%x3, %x3, 16  #1664 pc 47292
	addi	%x24, %x0, 23084  #1664 judge_intersection.2926 pc 47296
	mv	%x13, %x24  #1664 pc 47300
	add	%x24, %x0, %x11  #1664 pc 47304
	sw	%x13, 0(%x24)  #1664 pc 47308
	addi	%x24, %x0, 12  #pc 47312
	add	%x24, %x24, %x11  #1664 pc 47316
	sw	%x5, 0(%x24)  #1664 pc 47320
	addi	%x24, %x0, 8  #pc 47324
	add	%x24, %x24, %x11  #1664 pc 47328
	sw	%x12, 0(%x24)  #1664 pc 47332
	addi	%x24, %x0, 4  #pc 47336
	add	%x24, %x24, %x11  #1664 pc 47340
	sw	%x6, 0(%x24)  #1664 pc 47344
	mv	%x5, %x3  #1679 pc 47348
	addi	%x3, %x3, 40  #1679 pc 47352
	addi	%x24, %x0, 23268  #1679 solve_each_element_fast.2928 pc 47356
	mv	%x13, %x24  #1679 pc 47360
	add	%x24, %x0, %x5  #1679 pc 47364
	sw	%x13, 0(%x24)  #1679 pc 47368
	addi	%x24, %x0, 36  #pc 47372
	add	%x24, %x24, %x5  #1679 pc 47376
	sw	%x12, 0(%x24)  #1679 pc 47380
	addi	%x24, %x0, 32  #pc 47384
	add	%x24, %x24, %x5  #1679 pc 47388
	sw	%x20, 0(%x24)  #1679 pc 47392
	addi	%x24, %x0, 28  #pc 47396
	add	%x24, %x24, %x5  #1679 pc 47400
	sw	%x21, 0(%x24)  #1679 pc 47404
	addi	%x24, %x0, 24  #pc 47408
	add	%x24, %x24, %x5  #1679 pc 47412
	sw	%x17, 0(%x24)  #1679 pc 47416
	addi	%x24, %x0, 20  #pc 47420
	add	%x24, %x24, %x5  #1679 pc 47424
	sw	%x16, 0(%x24)  #1679 pc 47428
	addi	%x24, %x0, 16  #pc 47432
	add	%x24, %x24, %x5  #1679 pc 47436
	sw	%x15, 0(%x24)  #1679 pc 47440
	addi	%x24, %x0, 12  #pc 47444
	add	%x24, %x24, %x5  #1679 pc 47448
	sw	%x9, 0(%x24)  #1679 pc 47452
	addi	%x24, %x0, 8  #pc 47456
	add	%x24, %x24, %x5  #1679 pc 47460
	sw	%x14, 0(%x24)  #1679 pc 47464
	addi	%x24, %x0, 4  #pc 47468
	add	%x24, %x24, %x5  #1679 pc 47472
	sw	%x10, 0(%x24)  #1679 pc 47476
	mv	%x10, %x3  #1720 pc 47480
	addi	%x3, %x3, 16  #1720 pc 47484
	addi	%x24, %x0, 24088  #1720 solve_one_or_network_fast.2932 pc 47488
	mv	%x13, %x24  #1720 pc 47492
	add	%x24, %x0, %x10  #1720 pc 47496
	sw	%x13, 0(%x24)  #1720 pc 47500
	addi	%x24, %x0, 8  #pc 47504
	add	%x24, %x24, %x10  #1720 pc 47508
	sw	%x5, 0(%x24)  #1720 pc 47512
	addi	%x24, %x0, 4  #pc 47516
	add	%x24, %x24, %x10  #1720 pc 47520
	sw	%x19, 0(%x24)  #1720 pc 47524
	mv	%x5, %x3  #1730 pc 47528
	addi	%x3, %x3, 24  #1730 pc 47532
	addi	%x24, %x0, 24248  #1730 trace_or_matrix_fast.2936 pc 47536
	mv	%x13, %x24  #1730 pc 47540
	add	%x24, %x0, %x5  #1730 pc 47544
	sw	%x13, 0(%x24)  #1730 pc 47548
	addi	%x24, %x0, 16  #pc 47552
	add	%x24, %x24, %x5  #1730 pc 47556
	sw	%x12, 0(%x24)  #1730 pc 47560
	addi	%x24, %x0, 12  #pc 47564
	add	%x24, %x24, %x5  #1730 pc 47568
	sw	%x21, 0(%x24)  #1730 pc 47572
	addi	%x24, %x0, 8  #pc 47576
	add	%x24, %x24, %x5  #1730 pc 47580
	sw	%x17, 0(%x24)  #1730 pc 47584
	addi	%x24, %x0, 4  #pc 47588
	add	%x24, %x24, %x5  #1730 pc 47592
	sw	%x10, 0(%x24)  #1730 pc 47596
	mv	%x10, %x3  #1754 pc 47600
	addi	%x3, %x3, 16  #1754 pc 47604
	addi	%x24, %x0, 24628  #1754 judge_intersection_fast.2940 pc 47608
	mv	%x13, %x24  #1754 pc 47612
	add	%x24, %x0, %x10  #1754 pc 47616
	sw	%x13, 0(%x24)  #1754 pc 47620
	addi	%x24, %x0, 12  #pc 47624
	add	%x24, %x24, %x10  #1754 pc 47628
	sw	%x5, 0(%x24)  #1754 pc 47632
	addi	%x24, %x0, 8  #pc 47636
	add	%x24, %x24, %x10  #1754 pc 47640
	sw	%x12, 0(%x24)  #1754 pc 47644
	addi	%x24, %x0, 4  #pc 47648
	add	%x24, %x24, %x10  #1754 pc 47652
	sw	%x6, 0(%x24)  #1754 pc 47656
	mv	%x5, %x3  #1775 pc 47660
	addi	%x3, %x3, 16  #1775 pc 47664
	addi	%x24, %x0, 24812  #1775 get_nvector_rect.2942 pc 47668
	mv	%x13, %x24  #1775 pc 47672
	add	%x24, %x0, %x5  #1775 pc 47676
	sw	%x13, 0(%x24)  #1775 pc 47680
	lw	%x13, 68(%x2)  #1775 pc 47684
	addi	%x24, %x0, 8  #pc 47688
	add	%x24, %x24, %x5  #1775 pc 47692
	sw	%x13, 0(%x24)  #1775 pc 47696
	addi	%x24, %x0, 4  #pc 47700
	add	%x24, %x24, %x5  #1775 pc 47704
	sw	%x15, 0(%x24)  #1775 pc 47708
	mv	%x17, %x3  #1783 pc 47712
	addi	%x3, %x3, 8  #1783 pc 47716
	addi	%x24, %x0, 24980  #1783 get_nvector_plane.2944 pc 47720
	mv	%x19, %x24  #1783 pc 47724
	add	%x24, %x0, %x17  #1783 pc 47728
	sw	%x19, 0(%x24)  #1783 pc 47732
	addi	%x24, %x0, 4  #pc 47736
	add	%x24, %x24, %x17  #1783 pc 47740
	sw	%x13, 0(%x24)  #1783 pc 47744
	mv	%x19, %x3  #1791 pc 47748
	addi	%x3, %x3, 16  #1791 pc 47752
	addi	%x24, %x0, 25188  #1791 get_nvector_second.2946 pc 47756
	mv	%x20, %x24  #1791 pc 47760
	add	%x24, %x0, %x19  #1791 pc 47764
	sw	%x20, 0(%x24)  #1791 pc 47768
	addi	%x24, %x0, 8  #pc 47772
	add	%x24, %x24, %x19  #1791 pc 47776
	sw	%x13, 0(%x24)  #1791 pc 47780
	addi	%x24, %x0, 4  #pc 47784
	add	%x24, %x24, %x19  #1791 pc 47788
	sw	%x9, 0(%x24)  #1791 pc 47792
	mv	%x20, %x3  #1813 pc 47796
	addi	%x3, %x3, 16  #1813 pc 47800
	addi	%x24, %x0, 25992  #1813 get_nvector.2948 pc 47804
	mv	%x21, %x24  #1813 pc 47808
	add	%x24, %x0, %x20  #1813 pc 47812
	sw	%x21, 0(%x24)  #1813 pc 47816
	addi	%x24, %x0, 12  #pc 47820
	add	%x24, %x24, %x20  #1813 pc 47824
	sw	%x19, 0(%x24)  #1813 pc 47828
	addi	%x24, %x0, 8  #pc 47832
	add	%x24, %x24, %x20  #1813 pc 47836
	sw	%x5, 0(%x24)  #1813 pc 47840
	addi	%x24, %x0, 4  #pc 47844
	add	%x24, %x24, %x20  #1813 pc 47848
	sw	%x17, 0(%x24)  #1813 pc 47852
	mv	%x5, %x3  #1829 pc 47856
	addi	%x3, %x3, 8  #1829 pc 47860
	addi	%x24, %x0, 26160  #1829 utexture.2951 pc 47864
	mv	%x17, %x24  #1829 pc 47868
	add	%x24, %x0, %x5  #1829 pc 47872
	sw	%x17, 0(%x24)  #1829 pc 47876
	lw	%x17, 72(%x2)  #1829 pc 47880
	addi	%x24, %x0, 4  #pc 47884
	add	%x24, %x24, %x5  #1829 pc 47888
	sw	%x17, 0(%x24)  #1829 pc 47892
	mv	%x19, %x3  #1907 pc 47896
	addi	%x3, %x3, 16  #1907 pc 47900
	addi	%x24, %x0, 28140  #1907 add_light.2954 pc 47904
	mv	%x21, %x24  #1907 pc 47908
	add	%x24, %x0, %x19  #1907 pc 47912
	sw	%x21, 0(%x24)  #1907 pc 47916
	addi	%x24, %x0, 8  #pc 47920
	add	%x24, %x24, %x19  #1907 pc 47924
	sw	%x17, 0(%x24)  #1907 pc 47928
	lw	%x21, 80(%x2)  #1907 pc 47932
	addi	%x24, %x0, 4  #pc 47936
	add	%x24, %x24, %x19  #1907 pc 47940
	sw	%x21, 0(%x24)  #1907 pc 47944
	mv	%x22, %x3  #1924 pc 47948
	addi	%x3, %x3, 40  #1924 pc 47952
	sw	%x20, 160(%x2)  #1924 pc 47956
	addi	%x24, %x0, 28440  #1924 trace_reflections.2958 pc 47960
	mv	%x20, %x24  #1924 pc 47964
	add	%x24, %x0, %x22  #1924 pc 47968
	sw	%x20, 0(%x24)  #1924 pc 47972
	addi	%x24, %x0, 32  #pc 47976
	add	%x24, %x24, %x22  #1924 pc 47980
	sw	%x7, 0(%x24)  #1924 pc 47984
	lw	%x20, 144(%x2)  #1924 pc 47988
	addi	%x24, %x0, 28  #pc 47992
	add	%x24, %x24, %x22  #1924 pc 47996
	sw	%x20, 0(%x24)  #1924 pc 48000
	addi	%x24, %x0, 24  #pc 48004
	add	%x24, %x24, %x22  #1924 pc 48008
	sw	%x6, 0(%x24)  #1924 pc 48012
	addi	%x24, %x0, 20  #pc 48016
	add	%x24, %x24, %x22  #1924 pc 48020
	sw	%x13, 0(%x24)  #1924 pc 48024
	addi	%x24, %x0, 16  #pc 48028
	add	%x24, %x24, %x22  #1924 pc 48032
	sw	%x10, 0(%x24)  #1924 pc 48036
	addi	%x24, %x0, 12  #pc 48040
	add	%x24, %x24, %x22  #1924 pc 48044
	sw	%x15, 0(%x24)  #1924 pc 48048
	addi	%x24, %x0, 8  #pc 48052
	add	%x24, %x24, %x22  #1924 pc 48056
	sw	%x14, 0(%x24)  #1924 pc 48060
	addi	%x24, %x0, 4  #pc 48064
	add	%x24, %x24, %x22  #1924 pc 48068
	sw	%x19, 0(%x24)  #1924 pc 48072
	mv	%x20, %x3  #1953 pc 48076
	addi	%x3, %x3, 88  #1953 pc 48080
	sw	%x10, 164(%x2)  #1953 pc 48084
	addi	%x24, %x0, 29104  #1953 trace_ray.2963 pc 48088
	mv	%x10, %x24  #1953 pc 48092
	add	%x24, %x0, %x20  #1953 pc 48096
	sw	%x10, 0(%x24)  #1953 pc 48100
	addi	%x24, %x0, 80  #pc 48104
	add	%x24, %x24, %x20  #1953 pc 48108
	sw	%x5, 0(%x24)  #1953 pc 48112
	addi	%x24, %x0, 76  #pc 48116
	add	%x24, %x24, %x20  #1953 pc 48120
	sw	%x22, 0(%x24)  #1953 pc 48124
	addi	%x24, %x0, 72  #pc 48128
	add	%x24, %x24, %x20  #1953 pc 48132
	sw	%x12, 0(%x24)  #1953 pc 48136
	addi	%x24, %x0, 68  #pc 48140
	add	%x24, %x24, %x20  #1953 pc 48144
	sw	%x17, 0(%x24)  #1953 pc 48148
	addi	%x24, %x0, 64  #pc 48152
	add	%x24, %x24, %x20  #1953 pc 48156
	sw	%x23, 0(%x24)  #1953 pc 48160
	addi	%x24, %x0, 60  #pc 48164
	add	%x24, %x24, %x20  #1953 pc 48168
	sw	%x7, 0(%x24)  #1953 pc 48172
	addi	%x24, %x0, 56  #pc 48176
	add	%x24, %x24, %x20  #1953 pc 48180
	sw	%x18, 0(%x24)  #1953 pc 48184
	addi	%x24, %x0, 52  #pc 48188
	add	%x24, %x24, %x20  #1953 pc 48192
	sw	%x21, 0(%x24)  #1953 pc 48196
	addi	%x24, %x0, 48  #pc 48200
	add	%x24, %x24, %x20  #1953 pc 48204
	sw	%x6, 0(%x24)  #1953 pc 48208
	addi	%x24, %x0, 44  #pc 48212
	add	%x24, %x24, %x20  #1953 pc 48216
	sw	%x16, 0(%x24)  #1953 pc 48220
	addi	%x24, %x0, 40  #pc 48224
	add	%x24, %x24, %x20  #1953 pc 48228
	sw	%x13, 0(%x24)  #1953 pc 48232
	lw	%x10, 156(%x2)  #1953 pc 48236
	addi	%x24, %x0, 36  #pc 48240
	add	%x24, %x24, %x20  #1953 pc 48244
	sw	%x10, 0(%x24)  #1953 pc 48248
	lw	%x12, 24(%x2)  #1953 pc 48252
	addi	%x24, %x0, 32  #pc 48256
	add	%x24, %x24, %x20  #1953 pc 48260
	sw	%x12, 0(%x24)  #1953 pc 48264
	addi	%x24, %x0, 28  #pc 48268
	add	%x24, %x24, %x20  #1953 pc 48272
	sw	%x11, 0(%x24)  #1953 pc 48276
	addi	%x24, %x0, 24  #pc 48280
	add	%x24, %x24, %x20  #1953 pc 48284
	sw	%x15, 0(%x24)  #1953 pc 48288
	addi	%x24, %x0, 20  #pc 48292
	add	%x24, %x24, %x20  #1953 pc 48296
	sw	%x9, 0(%x24)  #1953 pc 48300
	addi	%x24, %x0, 16  #pc 48304
	add	%x24, %x24, %x20  #1953 pc 48308
	sw	%x14, 0(%x24)  #1953 pc 48312
	lw	%x11, 160(%x2)  #1953 pc 48316
	addi	%x24, %x0, 12  #pc 48320
	add	%x24, %x24, %x20  #1953 pc 48324
	sw	%x11, 0(%x24)  #1953 pc 48328
	lw	%x15, 28(%x2)  #1953 pc 48332
	addi	%x24, %x0, 8  #pc 48336
	add	%x24, %x24, %x20  #1953 pc 48340
	sw	%x15, 0(%x24)  #1953 pc 48344
	addi	%x24, %x0, 4  #pc 48348
	add	%x24, %x24, %x20  #1953 pc 48352
	sw	%x19, 0(%x24)  #1953 pc 48356
	mv	%x15, %x3  #2046 pc 48360
	addi	%x3, %x3, 56  #2046 pc 48364
	addi	%x24, %x0, 31156  #2046 trace_diffuse_ray.2969 pc 48368
	mv	%x19, %x24  #2046 pc 48372
	add	%x24, %x0, %x15  #2046 pc 48376
	sw	%x19, 0(%x24)  #2046 pc 48380
	addi	%x24, %x0, 48  #pc 48384
	add	%x24, %x24, %x15  #2046 pc 48388
	sw	%x5, 0(%x24)  #2046 pc 48392
	addi	%x24, %x0, 44  #pc 48396
	add	%x24, %x24, %x15  #2046 pc 48400
	sw	%x17, 0(%x24)  #2046 pc 48404
	addi	%x24, %x0, 40  #pc 48408
	add	%x24, %x24, %x15  #2046 pc 48412
	sw	%x7, 0(%x24)  #2046 pc 48416
	addi	%x24, %x0, 36  #pc 48420
	add	%x24, %x24, %x15  #2046 pc 48424
	sw	%x6, 0(%x24)  #2046 pc 48428
	addi	%x24, %x0, 32  #pc 48432
	add	%x24, %x24, %x15  #2046 pc 48436
	sw	%x16, 0(%x24)  #2046 pc 48440
	addi	%x24, %x0, 28  #pc 48444
	add	%x24, %x24, %x15  #2046 pc 48448
	sw	%x13, 0(%x24)  #2046 pc 48452
	addi	%x24, %x0, 24  #pc 48456
	add	%x24, %x24, %x15  #2046 pc 48460
	sw	%x12, 0(%x24)  #2046 pc 48464
	lw	%x5, 164(%x2)  #2046 pc 48468
	addi	%x24, %x0, 20  #pc 48472
	add	%x24, %x24, %x15  #2046 pc 48476
	sw	%x5, 0(%x24)  #2046 pc 48480
	addi	%x24, %x0, 16  #pc 48484
	add	%x24, %x24, %x15  #2046 pc 48488
	sw	%x9, 0(%x24)  #2046 pc 48492
	addi	%x24, %x0, 12  #pc 48496
	add	%x24, %x24, %x15  #2046 pc 48500
	sw	%x14, 0(%x24)  #2046 pc 48504
	addi	%x24, %x0, 8  #pc 48508
	add	%x24, %x24, %x15  #2046 pc 48512
	sw	%x11, 0(%x24)  #2046 pc 48516
	lw	%x5, 76(%x2)  #2046 pc 48520
	addi	%x24, %x0, 4  #pc 48524
	add	%x24, %x24, %x15  #2046 pc 48528
	sw	%x5, 0(%x24)  #2046 pc 48532
	mv	%x6, %x3  #2065 pc 48536
	addi	%x3, %x3, 8  #2065 pc 48540
	addi	%x24, %x0, 31756  #2065 iter_trace_diffuse_rays.2972 pc 48544
	mv	%x7, %x24  #2065 pc 48548
	add	%x24, %x0, %x6  #2065 pc 48552
	sw	%x7, 0(%x24)  #2065 pc 48556
	addi	%x24, %x0, 4  #pc 48560
	add	%x24, %x24, %x6  #2065 pc 48564
	sw	%x15, 0(%x24)  #2065 pc 48568
	mv	%x7, %x3  #2081 pc 48572
	addi	%x3, %x3, 16  #2081 pc 48576
	addi	%x24, %x0, 32084  #2081 trace_diffuse_rays.2977 pc 48580
	mv	%x9, %x24  #2081 pc 48584
	add	%x24, %x0, %x7  #2081 pc 48588
	sw	%x9, 0(%x24)  #2081 pc 48592
	addi	%x24, %x0, 8  #pc 48596
	add	%x24, %x24, %x7  #2081 pc 48600
	sw	%x18, 0(%x24)  #2081 pc 48604
	addi	%x24, %x0, 4  #pc 48608
	add	%x24, %x24, %x7  #2081 pc 48612
	sw	%x6, 0(%x24)  #2081 pc 48616
	mv	%x6, %x3  #2091 pc 48620
	addi	%x3, %x3, 16  #2091 pc 48624
	addi	%x24, %x0, 32188  #2091 trace_diffuse_ray_80percent.2981 pc 48628
	mv	%x9, %x24  #2091 pc 48632
	add	%x24, %x0, %x6  #2091 pc 48636
	sw	%x9, 0(%x24)  #2091 pc 48640
	addi	%x24, %x0, 8  #pc 48644
	add	%x24, %x24, %x6  #2091 pc 48648
	sw	%x7, 0(%x24)  #2091 pc 48652
	lw	%x9, 124(%x2)  #2091 pc 48656
	addi	%x24, %x0, 4  #pc 48660
	add	%x24, %x24, %x6  #2091 pc 48664
	sw	%x9, 0(%x24)  #2091 pc 48668
	mv	%x11, %x3  #2117 pc 48672
	addi	%x3, %x3, 16  #2117 pc 48676
	addi	%x24, %x0, 32636  #2117 calc_diffuse_using_1point.2985 pc 48680
	mv	%x13, %x24  #2117 pc 48684
	add	%x24, %x0, %x11  #2117 pc 48688
	sw	%x13, 0(%x24)  #2117 pc 48692
	addi	%x24, %x0, 12  #pc 48696
	add	%x24, %x24, %x11  #2117 pc 48700
	sw	%x6, 0(%x24)  #2117 pc 48704
	addi	%x24, %x0, 8  #pc 48708
	add	%x24, %x24, %x11  #2117 pc 48712
	sw	%x21, 0(%x24)  #2117 pc 48716
	addi	%x24, %x0, 4  #pc 48720
	add	%x24, %x24, %x11  #2117 pc 48724
	sw	%x5, 0(%x24)  #2117 pc 48728
	mv	%x6, %x3  #2136 pc 48732
	addi	%x3, %x3, 16  #2136 pc 48736
	addi	%x24, %x0, 32996  #2136 calc_diffuse_using_5points.2988 pc 48740
	mv	%x13, %x24  #2136 pc 48744
	add	%x24, %x0, %x6  #2136 pc 48748
	sw	%x13, 0(%x24)  #2136 pc 48752
	addi	%x24, %x0, 8  #pc 48756
	add	%x24, %x24, %x6  #2136 pc 48760
	sw	%x21, 0(%x24)  #2136 pc 48764
	addi	%x24, %x0, 4  #pc 48768
	add	%x24, %x24, %x6  #2136 pc 48772
	sw	%x5, 0(%x24)  #2136 pc 48776
	mv	%x13, %x3  #2156 pc 48780
	addi	%x3, %x3, 8  #2156 pc 48784
	addi	%x24, %x0, 33600  #2156 do_without_neighbors.2994 pc 48788
	mv	%x14, %x24  #2156 pc 48792
	add	%x24, %x0, %x13  #2156 pc 48796
	sw	%x14, 0(%x24)  #2156 pc 48800
	addi	%x24, %x0, 4  #pc 48804
	add	%x24, %x24, %x13  #2156 pc 48808
	sw	%x11, 0(%x24)  #2156 pc 48812
	mv	%x11, %x3  #2171 pc 48816
	addi	%x3, %x3, 8  #2171 pc 48820
	addi	%x24, %x0, 33828  #2171 neighbors_exist.2997 pc 48824
	mv	%x14, %x24  #2171 pc 48828
	add	%x24, %x0, %x11  #2171 pc 48832
	sw	%x14, 0(%x24)  #2171 pc 48836
	lw	%x14, 84(%x2)  #2171 pc 48840
	addi	%x24, %x0, 4  #pc 48844
	add	%x24, %x24, %x11  #2171 pc 48848
	sw	%x14, 0(%x24)  #2171 pc 48852
	mv	%x15, %x3  #2208 pc 48856
	addi	%x3, %x3, 16  #2208 pc 48860
	addi	%x24, %x0, 34424  #2208 try_exploit_neighbors.3010 pc 48864
	mv	%x17, %x24  #2208 pc 48868
	add	%x24, %x0, %x15  #2208 pc 48872
	sw	%x17, 0(%x24)  #2208 pc 48876
	addi	%x24, %x0, 8  #pc 48880
	add	%x24, %x24, %x15  #2208 pc 48884
	sw	%x13, 0(%x24)  #2208 pc 48888
	addi	%x24, %x0, 4  #pc 48892
	add	%x24, %x24, %x15  #2208 pc 48896
	sw	%x6, 0(%x24)  #2208 pc 48900
	mv	%x6, %x3  #2235 pc 48904
	addi	%x3, %x3, 8  #2235 pc 48908
	addi	%x24, %x0, 34812  #2235 write_ppm_header.3017 pc 48912
	mv	%x17, %x24  #2235 pc 48916
	add	%x24, %x0, %x6  #2235 pc 48920
	sw	%x17, 0(%x24)  #2235 pc 48924
	addi	%x24, %x0, 4  #pc 48928
	add	%x24, %x24, %x6  #2235 pc 48932
	sw	%x14, 0(%x24)  #2235 pc 48936
	mv	%x17, %x3  #2261 pc 48940
	addi	%x3, %x3, 8  #2261 pc 48944
	addi	%x24, %x0, 35228  #2261 write_rgb.3023 pc 48948
	mv	%x18, %x24  #2261 pc 48952
	add	%x24, %x0, %x17  #2261 pc 48956
	sw	%x18, 0(%x24)  #2261 pc 48960
	addi	%x24, %x0, 4  #pc 48964
	add	%x24, %x24, %x17  #2261 pc 48968
	sw	%x21, 0(%x24)  #2261 pc 48972
	mv	%x18, %x3  #2284 pc 48976
	addi	%x3, %x3, 16  #2284 pc 48980
	addi	%x24, %x0, 35512  #2284 pretrace_diffuse_rays.3025 pc 48984
	mv	%x19, %x24  #2284 pc 48988
	add	%x24, %x0, %x18  #2284 pc 48992
	sw	%x19, 0(%x24)  #2284 pc 48996
	addi	%x24, %x0, 12  #pc 49000
	add	%x24, %x24, %x18  #2284 pc 49004
	sw	%x7, 0(%x24)  #2284 pc 49008
	addi	%x24, %x0, 8  #pc 49012
	add	%x24, %x24, %x18  #2284 pc 49016
	sw	%x9, 0(%x24)  #2284 pc 49020
	addi	%x24, %x0, 4  #pc 49024
	add	%x24, %x24, %x18  #2284 pc 49028
	sw	%x5, 0(%x24)  #2284 pc 49032
	mv	%x5, %x3  #2314 pc 49036
	addi	%x3, %x3, 40  #2314 pc 49040
	addi	%x24, %x0, 35996  #2314 pretrace_pixels.3028 pc 49044
	mv	%x7, %x24  #2314 pc 49048
	add	%x24, %x0, %x5  #2314 pc 49052
	sw	%x7, 0(%x24)  #2314 pc 49056
	lw	%x7, 20(%x2)  #2314 pc 49060
	addi	%x24, %x0, 36  #pc 49064
	add	%x24, %x24, %x5  #2314 pc 49068
	sw	%x7, 0(%x24)  #2314 pc 49072
	addi	%x24, %x0, 32  #pc 49076
	add	%x24, %x24, %x5  #2314 pc 49080
	sw	%x20, 0(%x24)  #2314 pc 49084
	addi	%x24, %x0, 28  #pc 49088
	add	%x24, %x24, %x5  #2314 pc 49092
	sw	%x23, 0(%x24)  #2314 pc 49096
	lw	%x7, 104(%x2)  #2314 pc 49100
	addi	%x24, %x0, 24  #pc 49104
	add	%x24, %x24, %x5  #2314 pc 49108
	sw	%x7, 0(%x24)  #2314 pc 49112
	lw	%x7, 92(%x2)  #2314 pc 49116
	addi	%x24, %x0, 20  #pc 49120
	add	%x24, %x24, %x5  #2314 pc 49124
	sw	%x7, 0(%x24)  #2314 pc 49128
	addi	%x24, %x0, 16  #pc 49132
	add	%x24, %x24, %x5  #2314 pc 49136
	sw	%x21, 0(%x24)  #2314 pc 49140
	lw	%x19, 116(%x2)  #2314 pc 49144
	addi	%x24, %x0, 12  #pc 49148
	add	%x24, %x24, %x5  #2314 pc 49152
	sw	%x19, 0(%x24)  #2314 pc 49156
	addi	%x24, %x0, 8  #pc 49160
	add	%x24, %x24, %x5  #2314 pc 49164
	sw	%x18, 0(%x24)  #2314 pc 49168
	lw	%x18, 88(%x2)  #2314 pc 49172
	addi	%x24, %x0, 4  #pc 49176
	add	%x24, %x24, %x5  #2314 pc 49180
	sw	%x18, 0(%x24)  #2314 pc 49184
	mv	%x19, %x3  #2339 pc 49188
	addi	%x3, %x3, 32  #2339 pc 49192
	addi	%x24, %x0, 36764  #2339 pretrace_line.3035 pc 49196
	mv	%x20, %x24  #2339 pc 49200
	add	%x24, %x0, %x19  #2339 pc 49204
	sw	%x20, 0(%x24)  #2339 pc 49208
	lw	%x20, 112(%x2)  #2339 pc 49212
	addi	%x24, %x0, 24  #pc 49216
	add	%x24, %x24, %x19  #2339 pc 49220
	sw	%x20, 0(%x24)  #2339 pc 49224
	lw	%x20, 108(%x2)  #2339 pc 49228
	addi	%x24, %x0, 20  #pc 49232
	add	%x24, %x24, %x19  #2339 pc 49236
	sw	%x20, 0(%x24)  #2339 pc 49240
	addi	%x24, %x0, 16  #pc 49244
	add	%x24, %x24, %x19  #2339 pc 49248
	sw	%x7, 0(%x24)  #2339 pc 49252
	addi	%x24, %x0, 12  #pc 49256
	add	%x24, %x24, %x19  #2339 pc 49260
	sw	%x5, 0(%x24)  #2339 pc 49264
	addi	%x24, %x0, 8  #pc 49268
	add	%x24, %x24, %x19  #2339 pc 49272
	sw	%x14, 0(%x24)  #2339 pc 49276
	addi	%x24, %x0, 4  #pc 49280
	add	%x24, %x24, %x19  #2339 pc 49284
	sw	%x18, 0(%x24)  #2339 pc 49288
	mv	%x5, %x3  #2355 pc 49292
	addi	%x3, %x3, 32  #2355 pc 49296
	addi	%x24, %x0, 37088  #2355 scan_pixel.3039 pc 49300
	mv	%x20, %x24  #2355 pc 49304
	add	%x24, %x0, %x5  #2355 pc 49308
	sw	%x20, 0(%x24)  #2355 pc 49312
	addi	%x24, %x0, 24  #pc 49316
	add	%x24, %x24, %x5  #2355 pc 49320
	sw	%x17, 0(%x24)  #2355 pc 49324
	addi	%x24, %x0, 20  #pc 49328
	add	%x24, %x24, %x5  #2355 pc 49332
	sw	%x15, 0(%x24)  #2355 pc 49336
	addi	%x24, %x0, 16  #pc 49340
	add	%x24, %x24, %x5  #2355 pc 49344
	sw	%x21, 0(%x24)  #2355 pc 49348
	addi	%x24, %x0, 12  #pc 49352
	add	%x24, %x24, %x5  #2355 pc 49356
	sw	%x11, 0(%x24)  #2355 pc 49360
	addi	%x24, %x0, 8  #pc 49364
	add	%x24, %x24, %x5  #2355 pc 49368
	sw	%x14, 0(%x24)  #2355 pc 49372
	addi	%x24, %x0, 4  #pc 49376
	add	%x24, %x24, %x5  #2355 pc 49380
	sw	%x13, 0(%x24)  #2355 pc 49384
	mv	%x11, %x3  #2375 pc 49388
	addi	%x3, %x3, 16  #2375 pc 49392
	addi	%x24, %x0, 37548  #2375 scan_line.3046 pc 49396
	mv	%x13, %x24  #2375 pc 49400
	add	%x24, %x0, %x11  #2375 pc 49404
	sw	%x13, 0(%x24)  #2375 pc 49408
	addi	%x24, %x0, 12  #pc 49412
	add	%x24, %x24, %x11  #2375 pc 49416
	sw	%x5, 0(%x24)  #2375 pc 49420
	addi	%x24, %x0, 8  #pc 49424
	add	%x24, %x24, %x11  #2375 pc 49428
	sw	%x19, 0(%x24)  #2375 pc 49432
	addi	%x24, %x0, 4  #pc 49436
	add	%x24, %x24, %x11  #2375 pc 49440
	sw	%x14, 0(%x24)  #2375 pc 49444
	mv	%x5, %x3  #2427 pc 49448
	addi	%x3, %x3, 8  #2427 pc 49452
	addi	%x24, %x0, 38604  #2427 create_pixelline.3060 pc 49456
	mv	%x13, %x24  #2427 pc 49460
	add	%x24, %x0, %x5  #2427 pc 49464
	sw	%x13, 0(%x24)  #2427 pc 49468
	addi	%x24, %x0, 4  #pc 49472
	add	%x24, %x24, %x5  #2427 pc 49476
	sw	%x14, 0(%x24)  #2427 pc 49480
	mv	%x13, %x3  #2455 pc 49484
	addi	%x3, %x3, 8  #2455 pc 49488
	addi	%x24, %x0, 38888  #2455 calc_dirvec.3067 pc 49492
	mv	%x15, %x24  #2455 pc 49496
	add	%x24, %x0, %x13  #2455 pc 49500
	sw	%x15, 0(%x24)  #2455 pc 49504
	addi	%x24, %x0, 4  #pc 49508
	add	%x24, %x24, %x13  #2455 pc 49512
	sw	%x9, 0(%x24)  #2455 pc 49516
	mv	%x15, %x3  #2476 pc 49520
	addi	%x3, %x3, 8  #2476 pc 49524
	addi	%x24, %x0, 39992  #2476 calc_dirvecs.3075 pc 49528
	mv	%x17, %x24  #2476 pc 49532
	add	%x24, %x0, %x15  #2476 pc 49536
	sw	%x17, 0(%x24)  #2476 pc 49540
	addi	%x24, %x0, 4  #pc 49544
	add	%x24, %x24, %x15  #2476 pc 49548
	sw	%x13, 0(%x24)  #2476 pc 49552
	mv	%x13, %x3  #2490 pc 49556
	addi	%x3, %x3, 8  #2490 pc 49560
	addi	%x24, %x0, 40312  #2490 calc_dirvec_rows.3080 pc 49564
	mv	%x17, %x24  #2490 pc 49568
	add	%x24, %x0, %x13  #2490 pc 49572
	sw	%x17, 0(%x24)  #2490 pc 49576
	addi	%x24, %x0, 4  #pc 49580
	add	%x24, %x24, %x13  #2490 pc 49584
	sw	%x15, 0(%x24)  #2490 pc 49588
	mv	%x15, %x3  #2503 pc 49592
	addi	%x3, %x3, 8  #2503 pc 49596
	addi	%x24, %x0, 40516  #2503 create_dirvec.3084 pc 49600
	mv	%x17, %x24  #2503 pc 49604
	add	%x24, %x0, %x15  #2503 pc 49608
	sw	%x17, 0(%x24)  #2503 pc 49612
	lw	%x17, 8(%x2)  #2503 pc 49616
	addi	%x24, %x0, 4  #pc 49620
	add	%x24, %x24, %x15  #2503 pc 49624
	sw	%x17, 0(%x24)  #2503 pc 49628
	mv	%x20, %x3  #2509 pc 49632
	addi	%x3, %x3, 8  #2509 pc 49636
	addi	%x24, %x0, 40648  #2509 create_dirvec_elements.3086 pc 49640
	mv	%x21, %x24  #2509 pc 49644
	add	%x24, %x0, %x20  #2509 pc 49648
	sw	%x21, 0(%x24)  #2509 pc 49652
	addi	%x24, %x0, 4  #pc 49656
	add	%x24, %x24, %x20  #2509 pc 49660
	sw	%x15, 0(%x24)  #2509 pc 49664
	mv	%x21, %x3  #2516 pc 49668
	addi	%x3, %x3, 16  #2516 pc 49672
	addi	%x24, %x0, 40768  #2516 create_dirvecs.3089 pc 49676
	mv	%x22, %x24  #2516 pc 49680
	add	%x24, %x0, %x21  #2516 pc 49684
	sw	%x22, 0(%x24)  #2516 pc 49688
	addi	%x24, %x0, 12  #pc 49692
	add	%x24, %x24, %x21  #2516 pc 49696
	sw	%x9, 0(%x24)  #2516 pc 49700
	addi	%x24, %x0, 8  #pc 49704
	add	%x24, %x24, %x21  #2516 pc 49708
	sw	%x20, 0(%x24)  #2516 pc 49712
	addi	%x24, %x0, 4  #pc 49716
	add	%x24, %x24, %x21  #2516 pc 49720
	sw	%x15, 0(%x24)  #2516 pc 49724
	mv	%x20, %x3  #2528 pc 49728
	addi	%x3, %x3, 8  #2528 pc 49732
	addi	%x24, %x0, 41000  #2528 init_dirvec_constants.3091 pc 49736
	mv	%x22, %x24  #2528 pc 49740
	add	%x24, %x0, %x20  #2528 pc 49744
	sw	%x22, 0(%x24)  #2528 pc 49748
	lw	%x22, 152(%x2)  #2528 pc 49752
	addi	%x24, %x0, 4  #pc 49756
	add	%x24, %x24, %x20  #2528 pc 49760
	sw	%x22, 0(%x24)  #2528 pc 49764
	mv	%x23, %x3  #2535 pc 49768
	addi	%x3, %x3, 16  #2535 pc 49772
	sw	%x5, 168(%x2)  #2535 pc 49776
	addi	%x24, %x0, 41116  #2535 init_vecset_constants.3094 pc 49780
	mv	%x5, %x24  #2535 pc 49784
	add	%x24, %x0, %x23  #2535 pc 49788
	sw	%x5, 0(%x24)  #2535 pc 49792
	addi	%x24, %x0, 8  #pc 49796
	add	%x24, %x24, %x23  #2535 pc 49800
	sw	%x20, 0(%x24)  #2535 pc 49804
	addi	%x24, %x0, 4  #pc 49808
	add	%x24, %x24, %x23  #2535 pc 49812
	sw	%x9, 0(%x24)  #2535 pc 49816
	mv	%x5, %x3  #2542 pc 49820
	addi	%x3, %x3, 16  #2542 pc 49824
	addi	%x24, %x0, 41244  #2542 init_dirvecs.3096 pc 49828
	mv	%x9, %x24  #2542 pc 49832
	add	%x24, %x0, %x5  #2542 pc 49836
	sw	%x9, 0(%x24)  #2542 pc 49840
	addi	%x24, %x0, 12  #pc 49844
	add	%x24, %x24, %x5  #2542 pc 49848
	sw	%x23, 0(%x24)  #2542 pc 49852
	addi	%x24, %x0, 8  #pc 49856
	add	%x24, %x24, %x5  #2542 pc 49860
	sw	%x21, 0(%x24)  #2542 pc 49864
	addi	%x24, %x0, 4  #pc 49868
	add	%x24, %x24, %x5  #2542 pc 49872
	sw	%x13, 0(%x24)  #2542 pc 49876
	mv	%x9, %x3  #2553 pc 49880
	addi	%x3, %x3, 16  #2553 pc 49884
	addi	%x24, %x0, 41384  #2553 add_reflection.3098 pc 49888
	mv	%x13, %x24  #2553 pc 49892
	add	%x24, %x0, %x9  #2553 pc 49896
	sw	%x13, 0(%x24)  #2553 pc 49900
	addi	%x24, %x0, 12  #pc 49904
	add	%x24, %x24, %x9  #2553 pc 49908
	sw	%x22, 0(%x24)  #2553 pc 49912
	lw	%x13, 144(%x2)  #2553 pc 49916
	addi	%x24, %x0, 8  #pc 49920
	add	%x24, %x24, %x9  #2553 pc 49924
	sw	%x13, 0(%x24)  #2553 pc 49928
	addi	%x24, %x0, 4  #pc 49932
	add	%x24, %x24, %x9  #2553 pc 49936
	sw	%x15, 0(%x24)  #2553 pc 49940
	mv	%x13, %x3  #2562 pc 49944
	addi	%x3, %x3, 16  #2562 pc 49948
	addi	%x24, %x0, 41648  #2562 setup_rect_reflection.3105 pc 49952
	mv	%x15, %x24  #2562 pc 49956
	add	%x24, %x0, %x13  #2562 pc 49960
	sw	%x15, 0(%x24)  #2562 pc 49964
	addi	%x24, %x0, 12  #pc 49968
	add	%x24, %x24, %x13  #2562 pc 49972
	sw	%x10, 0(%x24)  #2562 pc 49976
	addi	%x24, %x0, 8  #pc 49980
	add	%x24, %x24, %x13  #2562 pc 49984
	sw	%x12, 0(%x24)  #2562 pc 49988
	addi	%x24, %x0, 4  #pc 49992
	add	%x24, %x24, %x13  #2562 pc 49996
	sw	%x9, 0(%x24)  #2562 pc 50000
	mv	%x15, %x3  #2576 pc 50004
	addi	%x3, %x3, 16  #2576 pc 50008
	addi	%x24, %x0, 42196  #2576 setup_surface_reflection.3108 pc 50012
	mv	%x20, %x24  #2576 pc 50016
	add	%x24, %x0, %x15  #2576 pc 50020
	sw	%x20, 0(%x24)  #2576 pc 50024
	addi	%x24, %x0, 12  #pc 50028
	add	%x24, %x24, %x15  #2576 pc 50032
	sw	%x10, 0(%x24)  #2576 pc 50036
	addi	%x24, %x0, 8  #pc 50040
	add	%x24, %x24, %x15  #2576 pc 50044
	sw	%x12, 0(%x24)  #2576 pc 50048
	addi	%x24, %x0, 4  #pc 50052
	add	%x24, %x24, %x15  #2576 pc 50056
	sw	%x9, 0(%x24)  #2576 pc 50060
	mv	%x9, %x3  #2591 pc 50064
	addi	%x3, %x3, 16  #2591 pc 50068
	addi	%x24, %x0, 42696  #2591 setup_reflections.3111 pc 50072
	mv	%x10, %x24  #2591 pc 50076
	add	%x24, %x0, %x9  #2591 pc 50080
	sw	%x10, 0(%x24)  #2591 pc 50084
	addi	%x24, %x0, 12  #pc 50088
	add	%x24, %x24, %x9  #2591 pc 50092
	sw	%x15, 0(%x24)  #2591 pc 50096
	addi	%x24, %x0, 8  #pc 50100
	add	%x24, %x24, %x9  #2591 pc 50104
	sw	%x13, 0(%x24)  #2591 pc 50108
	addi	%x24, %x0, 4  #pc 50112
	add	%x24, %x24, %x9  #2591 pc 50116
	sw	%x16, 0(%x24)  #2591 pc 50120
	mv	%x10, %x3  #2613 pc 50124
	addi	%x3, %x3, 64  #2613 pc 50128
	addi	%x24, %x0, 43008  #2613 rt.3113 pc 50132
	mv	%x13, %x24  #2613 pc 50136
	add	%x24, %x0, %x10  #2613 pc 50140
	sw	%x13, 0(%x24)  #2613 pc 50144
	addi	%x24, %x0, 56  #pc 50148
	add	%x24, %x24, %x10  #2613 pc 50152
	sw	%x6, 0(%x24)  #2613 pc 50156
	addi	%x24, %x0, 52  #pc 50160
	add	%x24, %x24, %x10  #2613 pc 50164
	sw	%x9, 0(%x24)  #2613 pc 50168
	addi	%x24, %x0, 48  #pc 50172
	add	%x24, %x24, %x10  #2613 pc 50176
	sw	%x22, 0(%x24)  #2613 pc 50180
	addi	%x24, %x0, 44  #pc 50184
	add	%x24, %x24, %x10  #2613 pc 50188
	sw	%x7, 0(%x24)  #2613 pc 50192
	addi	%x24, %x0, 40  #pc 50196
	add	%x24, %x24, %x10  #2613 pc 50200
	sw	%x11, 0(%x24)  #2613 pc 50204
	lw	%x6, 148(%x2)  #2613 pc 50208
	addi	%x24, %x0, 36  #pc 50212
	add	%x24, %x24, %x10  #2613 pc 50216
	sw	%x6, 0(%x24)  #2613 pc 50220
	addi	%x24, %x0, 32  #pc 50224
	add	%x24, %x24, %x10  #2613 pc 50228
	sw	%x19, 0(%x24)  #2613 pc 50232
	addi	%x24, %x0, 28  #pc 50236
	add	%x24, %x24, %x10  #2613 pc 50240
	sw	%x17, 0(%x24)  #2613 pc 50244
	lw	%x6, 136(%x2)  #2613 pc 50248
	addi	%x24, %x0, 24  #pc 50252
	add	%x24, %x24, %x10  #2613 pc 50256
	sw	%x6, 0(%x24)  #2613 pc 50260
	addi	%x24, %x0, 20  #pc 50264
	add	%x24, %x24, %x10  #2613 pc 50268
	sw	%x12, 0(%x24)  #2613 pc 50272
	addi	%x24, %x0, 16  #pc 50276
	add	%x24, %x24, %x10  #2613 pc 50280
	sw	%x5, 0(%x24)  #2613 pc 50284
	addi	%x24, %x0, 12  #pc 50288
	add	%x24, %x24, %x10  #2613 pc 50292
	sw	%x14, 0(%x24)  #2613 pc 50296
	addi	%x24, %x0, 8  #pc 50300
	add	%x24, %x24, %x10  #2613 pc 50304
	sw	%x18, 0(%x24)  #2613 pc 50308
	lw	%x5, 168(%x2)  #2613 pc 50312
	addi	%x24, %x0, 4  #pc 50316
	add	%x24, %x24, %x10  #2613 pc 50320
	sw	%x5, 0(%x24)  #2613 pc 50324
	addi	%x5, %x0, 512  #0 pc 50328
	addi	%x7, %x0, 3  #0 pc 50332
	mv	%x6, %x5 #pc 50336
	mv	%x22, %x10 #pc 50340
	sw	%x1, 172(%x2)  #2634 pc 50344
	lw	%x23, 0(%x22)  #2634 pc 50348
	addi	%x2, %x2, 176  #2634 pc 50352
	jalr	%x1, %x23, 0  #2634 pc 50356
	addi	%x2, %x2, -176  #2634 pc 50360
	lw	%x1, 172(%x2)  #2634 pc 50364
	addi	%x2, %x2, 112
