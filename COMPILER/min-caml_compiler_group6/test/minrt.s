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
	fmv	%f1, l.6293  #0 pc 0
	feq	%f31, %f0, %f1  #1 pc 4
	bge	%f30, %f31, 12  #1 pc 8
	j	fbe_else.9177 #pc 12
	nop #pc 16
	addi	%x5, %x0, 1  #0 pc 20
	ret #pc 24
	nop #pc 28
fbe_else.9177: #pc 28
	addi	%x5, %x0, 0  #0 pc 32
	ret #pc 36
	nop #pc 40
fispos.2530:  #pc 44
	fmv	%f1, l.6293  #0 pc 44
	fle	%f31, %f0, %f1  #3 pc 48
	bge	%f30, %f31, 12  #3 pc 52
	j	fble_else.9178 #pc 56
	nop #pc 60
	addi	%x5, %x0, 0  #0 pc 64
	ret #pc 68
	nop #pc 72
fble_else.9178: #pc 72
	addi	%x5, %x0, 1  #0 pc 76
	ret #pc 80
	nop #pc 84
fisneg.2532:  #pc 88
	fmv	%f1, l.6293  #0 pc 88
	fle	%f31, %f1, %f0  #5 pc 92
	bge	%f30, %f31, 12  #5 pc 96
	j	fble_else.9179 #pc 100
	nop #pc 104
	addi	%x5, %x0, 0  #0 pc 108
	ret #pc 112
	nop #pc 116
fble_else.9179: #pc 116
	addi	%x5, %x0, 1  #0 pc 120
	ret #pc 124
	nop #pc 128
fneg.2534:  #pc 132
	fsub	%f0, %f30, %f0  #7 pc 132
	ret #pc 136
	nop #pc 140
fsqr.2536:  #pc 144
	fmul	%f0, %f0, %f0  #9 pc 144
	ret #pc 148
	nop #pc 152
fhalf.2538:  #pc 156
	fmv	%f1, l.6297  #0 pc 156
	fmul	%f0, %f1, %f0  #11 pc 160
	ret #pc 164
	nop #pc 168
fless.2540:  #pc 172
	fle	%f31, %f1, %f0  #13 pc 172
	bge	%f30, %f31, 12  #13 pc 176
	j	fble_else.9180 #pc 180
	nop #pc 184
	addi	%x5, %x0, 0  #0 pc 188
	ret #pc 192
	nop #pc 196
fble_else.9180: #pc 196
	addi	%x5, %x0, 1  #0 pc 200
	ret #pc 204
	nop #pc 208
sin.2543:  #pc 212
	fmul	%f1, %f0, %f0  #16 pc 212
	fmul	%f2, %f0, %f1  #17 pc 216
	fmul	%f3, %f2, %f1  #18 pc 220
	fmul	%f1, %f3, %f1  #19 pc 224
	fmv	%f4, l.6299  #0 pc 228
	fmul	%f2, %f4, %f2  #20 pc 232
	fsub	%f0, %f0, %f2  #20 pc 236
	fmv	%f2, l.6301  #0 pc 240
	fmul	%f2, %f2, %f3  #20 pc 244
	fadd	%f0, %f0, %f2  #20 pc 248
	fmv	%f2, l.6303  #0 pc 252
	fmul	%f1, %f2, %f1  #20 pc 256
	fsub	%f0, %f0, %f1  #20 pc 260
	ret #pc 264
	nop #pc 268
cos.2545:  #pc 272
	fmul	%f0, %f0, %f0  #24 pc 272
	fmul	%f1, %f0, %f0  #25 pc 276
	fmul	%f2, %f1, %f0  #26 pc 280
	fmv	%f3, l.6305  #0 pc 284
	fmv	%f4, l.6297  #0 pc 288
	fmul	%f0, %f4, %f0  #27 pc 292
	fsub	%f0, %f3, %f0  #27 pc 296
	fmv	%f3, l.6308  #0 pc 300
	fmul	%f1, %f3, %f1  #27 pc 304
	fadd	%f0, %f0, %f1  #27 pc 308
	fmv	%f1, l.6310  #0 pc 312
	fmul	%f1, %f1, %f2  #27 pc 316
	fsub	%f0, %f0, %f1  #27 pc 320
	ret #pc 324
	nop #pc 328
atan.2547:  #pc 332
	fmul	%f1, %f0, %f0  #31 pc 332
	fmul	%f2, %f0, %f1  #32 pc 336
	fmul	%f3, %f2, %f1  #33 pc 340
	fmul	%f4, %f3, %f1  #34 pc 344
	fmul	%f5, %f4, %f1  #35 pc 348
	fmul	%f1, %f5, %f1  #36 pc 352
	fmv	%f6, l.6312  #0 pc 356
	fmul	%f2, %f6, %f2  #37 pc 360
	fsub	%f0, %f0, %f2  #37 pc 364
	fmv	%f2, l.6314  #0 pc 368
	fmul	%f2, %f2, %f3  #37 pc 372
	fadd	%f0, %f0, %f2  #37 pc 376
	fmv	%f2, l.6316  #0 pc 380
	fmul	%f2, %f2, %f4  #37 pc 384
	fsub	%f0, %f0, %f2  #37 pc 388
	fmv	%f2, l.6318  #0 pc 392
	fmul	%f2, %f2, %f5  #37 pc 396
	fadd	%f0, %f0, %f2  #37 pc 400
	fmv	%f2, l.6320  #0 pc 404
	fmul	%f1, %f2, %f1  #37 pc 408
	fsub	%f0, %f0, %f1  #37 pc 412
	ret #pc 416
	nop #pc 420
floor.2549:  #pc 424
	fmv	%f1, l.6293  #0 pc 424
	fle	%f31, %f1, %f0  #41 pc 428
	bge	%f30, %f31, 12  #41 pc 432
	j	fble_else.9181 #pc 436
	nop #pc 440
	ftoi	%x5, %f0  #42 pc 444
	itof	%f0, %x5  #42 pc 448
	ret #pc 452
	nop #pc 456
fble_else.9181: #pc 456
	fmv	%f1, l.6305  #0 pc 460
	fsub	%f0, %f0, %f1  #44 pc 464
	ftoi	%x5, %f0  #44 pc 468
	itof	%f0, %x5  #44 pc 472
	ret #pc 476
	nop #pc 480
float_of_int.2553:  #pc 484
	itof	%f0, %x5  #50 pc 484
	ret #pc 488
	nop #pc 492
int_of_float.2555:  #pc 496
	ftoi	%x5, %f0  #53 pc 496
	ret #pc 500
	nop #pc 504
mul_abs.2557:  #pc 508
	addi	%x24, %x0, -1  #pc 508
	beq	%x7, %x24, 12  #57 pc 512
	j	be_else.9182 #pc 516
	nop #pc 520
	addi	%x5, %x9, 0  #58 pc 524
	ret #pc 528
	nop #pc 532
be_else.9182: #pc 532
	addi	%x10, %x0, 1  #0 pc 536
	sll	%x10, %x10, %x7  #60 pc 540
	and	%x10, %x6, %x10  #60 pc 544
	beq	%x10, %x0, 12  #60 pc 548
	j	be_else.9183 #pc 552
	nop #pc 556
	addi	%x7, %x7, -1  #61 pc 560
	j	mul_abs.2557  #61 pc 564
	nop #pc 568
be_else.9183: #pc 568
	addi	%x10, %x7, -1  #63 pc 572
	sll	%x7, %x5, %x7  #63 pc 576
	add	%x9, %x9, %x7  #63 pc 580
	addi	%x7, %x10, 0  #0 pc 584
	j	mul_abs.2557  #63 pc 588
	nop #pc 592
mul.2562:  #pc 596
	bge	%x5, %x0, 12  #67 pc 596
	j	bge_else.9184 #pc 600
	nop #pc 604
	addi	%x7, %x5, 0  #67 pc 608
	j	bge_cont.9185 #pc 612
	nop #pc 616
bge_else.9184: #pc 616
	sub	%x7, %x0, %x5  #67 pc 620
bge_cont.9185: #pc 620
	bge	%x6, %x0, 12  #68 pc 624
	j	bge_else.9186 #pc 628
	nop #pc 632
	addi	%x9, %x6, 0  #68 pc 636
	j	bge_cont.9187 #pc 640
	nop #pc 644
bge_else.9186: #pc 644
	sub	%x9, %x0, %x6  #68 pc 648
bge_cont.9187: #pc 648
	addi	%x10, %x0, 30  #0 pc 652
	addi	%x11, %x0, 0  #0 pc 656
	sw	%x6, 0(%x2)  #69 pc 660
	sw	%x5, 4(%x2)  #69 pc 664
	addi	%x6, %x9, 0  #0 pc 668
	addi	%x5, %x7, 0  #0 pc 672
	addi	%x9, %x11, 0  #0 pc 676
	addi	%x7, %x10, 0  #0 pc 680
	sw	%x1, 12(%x2)  #69 pc 684
	addi	%x2, %x2, 16  #69 pc 688
	jal	%x1, mul_abs.2557  #69 pc 692
	addi	%x2, %x2, -16  #69 pc 696
	lw	%x1, 12(%x2) #69 pc 700
	lw	%x6, 4(%x2)  #70 pc 704
	srli	%x6, %x6, 31  #70 pc 708
	lw	%x7, 0(%x2)  #70 pc 712
	srli	%x7, %x7, 31  #70 pc 716
	beq	%x6, %x7, 12  #70 pc 720
	j	be_else.9188 #pc 724
	nop #pc 728
	ret #pc 732
	nop #pc 736
be_else.9188: #pc 736
	sub	%x5, %x0, %x5  #73 pc 740
	ret #pc 744
	nop #pc 748
div_abs.2565:  #pc 752
	addi	%x24, %x0, -1  #pc 752
	beq	%x7, %x24, 12  #77 pc 756
	j	be_else.9189 #pc 760
	nop #pc 764
	addi	%x5, %x9, 0  #78 pc 768
	ret #pc 772
	nop #pc 776
be_else.9189: #pc 776
	srl	%x10, %x5, %x7  #80 pc 780
	bge	%x10, %x6, 12  #80 pc 784
	j	ble_else.9190 #pc 788
	nop #pc 792
	sll	%x10, %x6, %x7  #81 pc 796
	sub	%x5, %x5, %x10  #81 pc 800
	addi	%x10, %x7, -1  #81 pc 804
	addi	%x11, %x0, 1  #0 pc 808
	sll	%x7, %x11, %x7  #81 pc 812
	add	%x9, %x9, %x7  #81 pc 816
	addi	%x7, %x10, 0  #0 pc 820
	j	div_abs.2565  #81 pc 824
	nop #pc 828
ble_else.9190: #pc 828
	addi	%x7, %x7, -1  #83 pc 832
	j	div_abs.2565  #83 pc 836
	nop #pc 840
div.2570:  #pc 844
	bge	%x5, %x0, 12  #87 pc 844
	j	bge_else.9191 #pc 848
	nop #pc 852
	addi	%x7, %x5, 0  #87 pc 856
	j	bge_cont.9192 #pc 860
	nop #pc 864
bge_else.9191: #pc 864
	sub	%x7, %x0, %x5  #87 pc 868
bge_cont.9192: #pc 868
	bge	%x6, %x0, 12  #88 pc 872
	j	bge_else.9193 #pc 876
	nop #pc 880
	addi	%x9, %x6, 0  #88 pc 884
	j	bge_cont.9194 #pc 888
	nop #pc 892
bge_else.9193: #pc 892
	sub	%x9, %x0, %x6  #88 pc 896
bge_cont.9194: #pc 896
	addi	%x10, %x0, 30  #0 pc 900
	addi	%x11, %x0, 0  #0 pc 904
	sw	%x6, 0(%x2)  #89 pc 908
	sw	%x5, 4(%x2)  #89 pc 912
	addi	%x6, %x9, 0  #0 pc 916
	addi	%x5, %x7, 0  #0 pc 920
	addi	%x9, %x11, 0  #0 pc 924
	addi	%x7, %x10, 0  #0 pc 928
	sw	%x1, 12(%x2)  #89 pc 932
	addi	%x2, %x2, 16  #89 pc 936
	jal	%x1, div_abs.2565  #89 pc 940
	addi	%x2, %x2, -16  #89 pc 944
	lw	%x1, 12(%x2) #89 pc 948
	lw	%x6, 4(%x2)  #90 pc 952
	srli	%x6, %x6, 31  #90 pc 956
	lw	%x7, 0(%x2)  #90 pc 960
	srli	%x7, %x7, 31  #90 pc 964
	beq	%x6, %x7, 12  #90 pc 968
	j	be_else.9195 #pc 972
	nop #pc 976
	ret #pc 980
	nop #pc 984
be_else.9195: #pc 984
	sub	%x5, %x0, %x5  #93 pc 988
	ret #pc 992
	nop #pc 996
print_char.2573:  #pc 1000
	out	%x5  #96 pc 1000
	ret #pc 1004
	nop #pc 1008
print_int.2575:  #pc 1012
	bge	%x5, %x0, 12  #100 pc 1012
	j	bge_else.9197 #pc 1016
	nop #pc 1020
	addi	%x24, %x0, 10  #pc 1024
	bge	%x5, %x24, 12  #104 pc 1028
	j	bge_else.9198 #pc 1032
	nop #pc 1036
	addi	%x6, %x0, 10  #0 pc 1040
	sw	%x5, 0(%x2)  #107 pc 1044
	sw	%x1, 4(%x2)  #107 pc 1048
	addi	%x2, %x2, 8  #107 pc 1052
	jal	%x1, div.2570  #107 pc 1056
	addi	%x2, %x2, -8  #107 pc 1060
	lw	%x1, 4(%x2) #107 pc 1064
	sw	%x5, 4(%x2)  #108 pc 1068
	sw	%x1, 12(%x2)  #108 pc 1072
	addi	%x2, %x2, 16  #108 pc 1076
	jal	%x1, print_int.2575  #108 pc 1080
	addi	%x2, %x2, -16  #108 pc 1084
	lw	%x1, 12(%x2) #108 pc 1088
	addi	%x6, %x0, 10  #0 pc 1092
	lw	%x5, 4(%x2)  #109 pc 1096
	sw	%x1, 12(%x2)  #109 pc 1100
	addi	%x2, %x2, 16  #109 pc 1104
	jal	%x1, mul.2562  #109 pc 1108
	addi	%x2, %x2, -16  #109 pc 1112
	lw	%x1, 12(%x2) #109 pc 1116
	lw	%x6, 0(%x2)  #109 pc 1120
	sub	%x5, %x6, %x5  #109 pc 1124
	addi	%x5, %x5, 48  #109 pc 1128
	out	%x5  #109 pc 1132
	ret #pc 1136
	nop #pc 1140
bge_else.9198: #pc 1140
	addi	%x5, %x5, 48  #105 pc 1144
	out	%x5  #105 pc 1148
	ret #pc 1152
	nop #pc 1156
bge_else.9197: #pc 1156
	sub	%x5, %x0, %x5  #102 pc 1160
	j	print_int.2575  #102 pc 1164
	nop #pc 1168
read_int_sub.2577:  #pc 1172
	in	%x7  #113 pc 1172
	addi	%x24, %x0, 48  #pc 1176
	bge	%x7, %x24, 12  #114 pc 1180
	j	bge_else.9201 #pc 1184
	nop #pc 1188
	addi	%x24, %x0, 57  #pc 1192
	bge	%x24, %x7, 12  #115 pc 1196
	j	ble_else.9202 #pc 1200
	nop #pc 1204
	addi	%x9, %x0, 10  #0 pc 1208
	sw	%x6, 0(%x2)  #116 pc 1212
	sw	%x7, 4(%x2)  #116 pc 1216
	addi	%x6, %x9, 0  #0 pc 1220
	sw	%x1, 12(%x2)  #116 pc 1224
	addi	%x2, %x2, 16  #116 pc 1228
	jal	%x1, mul.2562  #116 pc 1232
	addi	%x2, %x2, -16  #116 pc 1236
	lw	%x1, 12(%x2) #116 pc 1240
	lw	%x6, 4(%x2)  #116 pc 1244
	addi	%x6, %x6, -48  #116 pc 1248
	add	%x5, %x5, %x6  #116 pc 1252
	lw	%x6, 0(%x2)  #116 pc 1256
	addi	%x6, %x6, 1  #116 pc 1260
	j	read_int_sub.2577  #116 pc 1264
	nop #pc 1268
ble_else.9202: #pc 1268
	addi	%x24, %x0, 45  #pc 1272
	beq	%x7, %x24, 12  #118 pc 1276
	j	be_else.9203 #pc 1280
	nop #pc 1284
	sw	%x1, 12(%x2)  #119 pc 1288
	addi	%x2, %x2, 16  #119 pc 1292
	jal	%x1, read_int_sub.2577  #119 pc 1296
	addi	%x2, %x2, -16  #119 pc 1300
	lw	%x1, 12(%x2) #119 pc 1304
	addi	%x24, %x0, 4  #pc 1308
	add	%x24, %x24, %x5  #119 pc 1312
	lw	%x6, 0(%x24)  #119 pc 1316
	add	%x24, %x0, %x5  #119 pc 1320
	lw	%x5, 0(%x24)  #119 pc 1324
	sub	%x5, %x0, %x5  #120 pc 1328
	addi	%x7, %x3, 0  #120 pc 1332
	addi	%x3, %x3, 8  #120 pc 1336
	addi	%x24, %x0, 4  #pc 1340
	add	%x24, %x24, %x7  #120 pc 1344
	sw	%x6, 0(%x24)  #120 pc 1348
	add	%x24, %x0, %x7  #120 pc 1352
	sw	%x5, 0(%x24)  #120 pc 1356
	addi	%x5, %x7, 0  #120 pc 1360
	ret #pc 1364
	nop #pc 1368
be_else.9203: #pc 1368
	addi	%x7, %x3, 0  #121 pc 1372
	addi	%x3, %x3, 8  #121 pc 1376
	addi	%x24, %x0, 4  #pc 1380
	add	%x24, %x24, %x7  #121 pc 1384
	sw	%x6, 0(%x24)  #121 pc 1388
	add	%x24, %x0, %x7  #121 pc 1392
	sw	%x5, 0(%x24)  #121 pc 1396
	addi	%x5, %x7, 0  #121 pc 1400
	ret #pc 1404
	nop #pc 1408
bge_else.9201: #pc 1408
	addi	%x7, %x3, 0  #123 pc 1412
	addi	%x3, %x3, 8  #123 pc 1416
	addi	%x24, %x0, 4  #pc 1420
	add	%x24, %x24, %x7  #123 pc 1424
	sw	%x6, 0(%x24)  #123 pc 1428
	add	%x24, %x0, %x7  #123 pc 1432
	sw	%x5, 0(%x24)  #123 pc 1436
	addi	%x5, %x7, 0  #123 pc 1440
	ret #pc 1444
	nop #pc 1448
read_int.2580:  #pc 1452
	addi	%x5, %x0, 0  #0 pc 1452
	addi	%x6, %x0, 0  #0 pc 1456
	sw	%x1, 4(%x2)  #127 pc 1460
	addi	%x2, %x2, 8  #127 pc 1464
	jal	%x1, read_int_sub.2577  #127 pc 1468
	addi	%x2, %x2, -8  #127 pc 1472
	lw	%x1, 4(%x2) #127 pc 1476
	add	%x24, %x0, %x5  #127 pc 1480
	lw	%x5, 0(%x24)  #127 pc 1484
	ret #pc 1488
	nop #pc 1492
pow.2582:  #pc 1496
	bge	%x0, %x5, 12  #132 pc 1496
	j	ble_else.9204 #pc 1500
	nop #pc 1504
	ret #pc 1508
	nop #pc 1512
ble_else.9204: #pc 1512
	itof	%f1, %x5  #135 pc 1516
	fmul	%f0, %f0, %f1  #135 pc 1520
	addi	%x5, %x5, -1  #135 pc 1524
	j	pow.2582  #135 pc 1528
	nop #pc 1532
read_float_sub.2585:  #pc 1536
	in	%x5  #139 pc 1536
	addi	%x24, %x0, 48  #pc 1540
	bge	%x5, %x24, 12  #140 pc 1544
	j	bge_else.9205 #pc 1548
	nop #pc 1552
	addi	%x24, %x0, 57  #pc 1556
	bge	%x24, %x5, 12  #141 pc 1560
	j	ble_else.9206 #pc 1564
	nop #pc 1568
	fmv	%f1, l.6333  #0 pc 1572
	fmul	%f0, %f0, %f1  #142 pc 1576
	addi	%x5, %x5, -48  #142 pc 1580
	itof	%f1, %x5  #142 pc 1584
	fadd	%f0, %f0, %f1  #142 pc 1588
	j	read_float_sub.2585  #142 pc 1592
	nop #pc 1596
ble_else.9206: #pc 1596
	addi	%x24, %x0, 45  #pc 1600
	beq	%x5, %x24, 12  #144 pc 1604
	j	be_else.9207 #pc 1608
	nop #pc 1612
	sw	%x1, 4(%x2)  #145 pc 1616
	addi	%x2, %x2, 8  #145 pc 1620
	jal	%x1, read_float_sub.2585  #145 pc 1624
	addi	%x2, %x2, -8  #145 pc 1628
	lw	%x1, 4(%x2) #145 pc 1632
	fsub	%f0, %f30, %f0  #145 pc 1636
	ret #pc 1640
	nop #pc 1644
be_else.9207: #pc 1644
	addi	%x24, %x0, 46  #pc 1648
	beq	%x5, %x24, 12  #147 pc 1652
	j	be_else.9208 #pc 1656
	nop #pc 1660
	addi	%x5, %x0, 0  #0 pc 1664
	addi	%x6, %x0, 0  #0 pc 1668
	fsw	%f0, 0(%x2)  #148 pc 1672
	sw	%x1, 12(%x2)  #148 pc 1676
	addi	%x2, %x2, 16  #148 pc 1680
	jal	%x1, read_int_sub.2577  #148 pc 1684
	addi	%x2, %x2, -16  #148 pc 1688
	lw	%x1, 12(%x2) #148 pc 1692
	addi	%x24, %x0, 4  #pc 1696
	add	%x24, %x24, %x5  #148 pc 1700
	lw	%x6, 0(%x24)  #148 pc 1704
	add	%x24, %x0, %x5  #148 pc 1708
	lw	%x5, 0(%x24)  #148 pc 1712
	itof	%f0, %x5  #149 pc 1716
	fmv	%f1, l.6333  #0 pc 1720
	fsw	%f0, 8(%x2)  #149 pc 1724
	addi	%x5, %x6, 0  #0 pc 1728
	fadd	%f0, %f1, %f30  #0 pc 1732
	sw	%x1, 20(%x2)  #149 pc 1736
	addi	%x2, %x2, 24  #149 pc 1740
	jal	%x1, pow.2582  #149 pc 1744
	addi	%x2, %x2, -24  #149 pc 1748
	lw	%x1, 20(%x2) #149 pc 1752
	flw	%f1, 8(%x2)  #149 pc 1756
	fdiv	%f0, %f1, %f0  #149 pc 1760
	flw	%f1, 0(%x2)  #149 pc 1764
	fadd	%f0, %f1, %f0  #149 pc 1768
	ret #pc 1772
	nop #pc 1776
be_else.9208: #pc 1776
	ret #pc 1780
	nop #pc 1784
bge_else.9205: #pc 1784
	ret #pc 1788
	nop #pc 1792
read_float.2587:  #pc 1796
	fmv	%f0, l.6293  #0 pc 1796
	j	read_float_sub.2585  #156 pc 1800
	nop #pc 1804
assign_array.2589:  #pc 1808
	beq	%x7, %x0, 12  #160 pc 1808
	j	be_else.9209 #pc 1812
	nop #pc 1816
	slli	%x7, %x7, 2  #161 pc 1820
	add	%x24, %x7, %x5  #161 pc 1824
	sw	%x6, 0(%x24)  #161 pc 1828
	ret #pc 1832
	nop #pc 1836
be_else.9209: #pc 1836
	slli	%x9, %x7, 2  #163 pc 1840
	add	%x24, %x9, %x5  #163 pc 1844
	sw	%x6, 0(%x24)  #163 pc 1848
	addi	%x7, %x7, -1  #164 pc 1852
	j	assign_array.2589  #164 pc 1856
	nop #pc 1860
create_array.2593:  #pc 1864
	addi	%x7, %x3, 0  #168 pc 1864
	sw	%x7, 0(%x2)  #171 pc 1868
	addi	%x23, %x7, 0  #0 pc 1872
	addi	%x7, %x5, 0  #0 pc 1876
	addi	%x5, %x23, 0  #0 pc 1880
	sw	%x1, 4(%x2)  #171 pc 1884
	addi	%x2, %x2, 8  #171 pc 1888
	jal	%x1, assign_array.2589  #171 pc 1892
	addi	%x2, %x2, -8  #171 pc 1896
	lw	%x1, 4(%x2) #171 pc 1900
	lw	%x5, 0(%x2)  #172 pc 1904
	ret #pc 1908
	nop #pc 1912
assign_farray.2596:  #pc 1916
	beq	%x6, %x0, 12  #176 pc 1916
	j	be_else.9211 #pc 1920
	nop #pc 1924
	slli	%x6, %x6, 2  #177 pc 1928
	add	%x24, %x6, %x5  #177 pc 1932
	fsw	%f0, 0(%x24) #177 pc 1936
	ret #pc 1940
	nop #pc 1944
be_else.9211: #pc 1944
	slli	%x7, %x6, 2  #179 pc 1948
	add	%x24, %x7, %x5  #179 pc 1952
	fsw	%f0, 0(%x24) #179 pc 1956
	addi	%x6, %x6, -1  #180 pc 1960
	j	assign_farray.2596  #180 pc 1964
	nop #pc 1968
create_float_array.2600:  #pc 1972
	addi	%x6, %x3, 0  #184 pc 1972
	sw	%x6, 0(%x2)  #187 pc 1976
	addi	%x23, %x6, 0  #0 pc 1980
	addi	%x6, %x5, 0  #0 pc 1984
	addi	%x5, %x23, 0  #0 pc 1988
	sw	%x1, 4(%x2)  #187 pc 1992
	addi	%x2, %x2, 8  #187 pc 1996
	jal	%x1, assign_farray.2596  #187 pc 2000
	addi	%x2, %x2, -8  #187 pc 2004
	lw	%x1, 4(%x2) #187 pc 2008
	lw	%x5, 0(%x2)  #188 pc 2012
	ret #pc 2016
	nop #pc 2020
xor.2633:  #pc 2024
	beq	%x5, %x0, 12  #326 pc 2024
	j	be_else.9213 #pc 2028
	nop #pc 2032
	addi	%x5, %x6, 0  #326 pc 2036
	ret #pc 2040
	nop #pc 2044
be_else.9213: #pc 2044
	beq	%x6, %x0, 12  #326 pc 2048
	j	be_else.9214 #pc 2052
	nop #pc 2056
	addi	%x5, %x0, 1  #0 pc 2060
	ret #pc 2064
	nop #pc 2068
be_else.9214: #pc 2068
	addi	%x5, %x0, 0  #0 pc 2072
	ret #pc 2076
	nop #pc 2080
sgn.2636:  #pc 2084
	fsw	%f0, 0(%x2)  #334 pc 2084
	sw	%x1, 12(%x2)  #334 pc 2088
	addi	%x2, %x2, 16  #334 pc 2092
	jal	%x1, fiszero.2528  #334 pc 2096
	addi	%x2, %x2, -16  #334 pc 2100
	lw	%x1, 12(%x2) #334 pc 2104
	beq	%x5, %x0, 12  #334 pc 2108
	j	be_else.9215 #pc 2112
	nop #pc 2116
	flw	%f0, 0(%x2)  #335 pc 2120
	sw	%x1, 12(%x2)  #335 pc 2124
	addi	%x2, %x2, 16  #335 pc 2128
	jal	%x1, fispos.2530  #335 pc 2132
	addi	%x2, %x2, -16  #335 pc 2136
	lw	%x1, 12(%x2) #335 pc 2140
	beq	%x5, %x0, 12  #335 pc 2144
	j	be_else.9216 #pc 2148
	nop #pc 2152
	addi	%x5, l.6343, 0  #0 pc 2156
	ret #pc 2160
	nop #pc 2164
be_else.9216: #pc 2164
	addi	%x5, l.6305, 0  #0 pc 2168
	ret #pc 2172
	nop #pc 2176
be_else.9215: #pc 2176
	addi	%x5, l.6293, 0  #0 pc 2180
	ret #pc 2184
	nop #pc 2188
fneg_cond.2638:  #pc 2192
	beq	%x5, %x0, 12  #341 pc 2192
	j	be_else.9217 #pc 2196
	nop #pc 2200
	j	fneg.2534  #341 pc 2204
	nop #pc 2208
be_else.9217: #pc 2208
	ret #pc 2212
	nop #pc 2216
add_mod5.2641:  #pc 2220
	add	%x5, %x5, %x6  #346 pc 2220
	addi	%x24, %x0, 5  #pc 2224
	bge	%x5, %x24, 12  #347 pc 2228
	j	bge_else.9218 #pc 2232
	nop #pc 2236
	addi	%x5, %x5, -5  #347 pc 2240
	ret #pc 2244
	nop #pc 2248
bge_else.9218: #pc 2248
	ret #pc 2252
	nop #pc 2256
vecset.2644:  #pc 2260
	add	%x24, %x0, %x5  #362 pc 2260
	fsw	%f0, 0(%x24) #362 pc 2264
	addi	%x24, %x0, 4  #pc 2268
	add	%x24, %x24, %x5  #363 pc 2272
	fsw	%f1, 0(%x24) #363 pc 2276
	addi	%x24, %x0, 8  #pc 2280
	add	%x24, %x24, %x5  #364 pc 2284
	fsw	%f2, 0(%x24) #364 pc 2288
	ret #pc 2292
	nop #pc 2296
vecfill.2649:  #pc 2300
	add	%x24, %x0, %x5  #369 pc 2300
	fsw	%f0, 0(%x24) #369 pc 2304
	addi	%x24, %x0, 4  #pc 2308
	add	%x24, %x24, %x5  #370 pc 2312
	fsw	%f0, 0(%x24) #370 pc 2316
	addi	%x24, %x0, 8  #pc 2320
	add	%x24, %x24, %x5  #371 pc 2324
	fsw	%f0, 0(%x24) #371 pc 2328
	ret #pc 2332
	nop #pc 2336
vecbzero.2652:  #pc 2340
	fmv	%f0, l.6293  #0 pc 2340
	j	vecfill.2649  #376 pc 2344
	nop #pc 2348
veccpy.2654:  #pc 2352
	add	%x24, %x0, %x6  #381 pc 2352
	flw	%f0, 0(%x24)  #381 pc 2356
	add	%x24, %x0, %x5  #381 pc 2360
	fsw	%f0, 0(%x24) #381 pc 2364
	addi	%x24, %x0, 4  #pc 2368
	add	%x24, %x24, %x6  #382 pc 2372
	flw	%f0, 0(%x24)  #382 pc 2376
	addi	%x24, %x0, 4  #pc 2380
	add	%x24, %x24, %x5  #382 pc 2384
	fsw	%f0, 0(%x24) #382 pc 2388
	addi	%x24, %x0, 8  #pc 2392
	add	%x24, %x24, %x6  #383 pc 2396
	flw	%f0, 0(%x24)  #383 pc 2400
	addi	%x24, %x0, 8  #pc 2404
	add	%x24, %x24, %x5  #383 pc 2408
	fsw	%f0, 0(%x24) #383 pc 2412
	ret #pc 2416
	nop #pc 2420
vecunit_sgn.2657:  #pc 2424
	add	%x24, %x0, %x5  #405 pc 2424
	flw	%f0, 0(%x24)  #405 pc 2428
	sw	%x6, 0(%x2)  #405 pc 2432
	sw	%x5, 4(%x2)  #405 pc 2436
	sw	%x1, 12(%x2)  #405 pc 2440
	addi	%x2, %x2, 16  #405 pc 2444
	jal	%x1, fsqr.2536  #405 pc 2448
	addi	%x2, %x2, -16  #405 pc 2452
	lw	%x1, 12(%x2) #405 pc 2456
	lw	%x5, 4(%x2)  #405 pc 2460
	addi	%x24, %x0, 4  #pc 2464
	add	%x24, %x24, %x5  #405 pc 2468
	flw	%f1, 0(%x24)  #405 pc 2472
	fsw	%f0, 8(%x2)  #405 pc 2476
	fadd	%f0, %f1, %f30  #0 pc 2480
	sw	%x1, 20(%x2)  #405 pc 2484
	addi	%x2, %x2, 24  #405 pc 2488
	jal	%x1, fsqr.2536  #405 pc 2492
	addi	%x2, %x2, -24  #405 pc 2496
	lw	%x1, 20(%x2) #405 pc 2500
	flw	%f1, 8(%x2)  #405 pc 2504
	fadd	%f0, %f1, %f0  #405 pc 2508
	lw	%x5, 4(%x2)  #405 pc 2512
	addi	%x24, %x0, 8  #pc 2516
	add	%x24, %x24, %x5  #405 pc 2520
	flw	%f1, 0(%x24)  #405 pc 2524
	fsw	%f0, 16(%x2)  #405 pc 2528
	fadd	%f0, %f1, %f30  #0 pc 2532
	sw	%x1, 28(%x2)  #405 pc 2536
	addi	%x2, %x2, 32  #405 pc 2540
	jal	%x1, fsqr.2536  #405 pc 2544
	addi	%x2, %x2, -32  #405 pc 2548
	lw	%x1, 28(%x2) #405 pc 2552
	flw	%f1, 16(%x2)  #405 pc 2556
	fadd	%f0, %f1, %f0  #405 pc 2560
	fsqrt	%f0, %f0  #405 pc 2564
	fsw	%f0, 24(%x2)  #406 pc 2568
	sw	%x1, 36(%x2)  #406 pc 2572
	addi	%x2, %x2, 40  #406 pc 2576
	jal	%x1, fiszero.2528  #406 pc 2580
	addi	%x2, %x2, -40  #406 pc 2584
	lw	%x1, 36(%x2) #406 pc 2588
	beq	%x5, %x0, 12  #406 pc 2592
	j	be_else.9222 #pc 2596
	nop #pc 2600
	lw	%x5, 0(%x2)  #406 pc 2604
	beq	%x5, %x0, 12  #406 pc 2608
	j	be_else.9224 #pc 2612
	nop #pc 2616
	fmv	%f0, l.6305  #0 pc 2620
	flw	%f1, 24(%x2)  #406 pc 2624
	fdiv	%f0, %f0, %f1  #406 pc 2628
	j	be_cont.9225 #pc 2632
	nop #pc 2636
be_else.9224: #pc 2636
	fmv	%f0, l.6343  #0 pc 2640
	flw	%f1, 24(%x2)  #406 pc 2644
	fdiv	%f0, %f0, %f1  #406 pc 2648
be_cont.9225: #pc 2648
	j	be_cont.9223 #pc 2652
	nop #pc 2656
be_else.9222: #pc 2656
	fmv	%f0, l.6305  #0 pc 2660
be_cont.9223: #pc 2660
	lw	%x5, 4(%x2)  #407 pc 2664
	add	%x24, %x0, %x5  #407 pc 2668
	flw	%f1, 0(%x24)  #407 pc 2672
	fmul	%f1, %f1, %f0  #407 pc 2676
	add	%x24, %x0, %x5  #407 pc 2680
	fsw	%f1, 0(%x24) #407 pc 2684
	addi	%x24, %x0, 4  #pc 2688
	add	%x24, %x24, %x5  #408 pc 2692
	flw	%f1, 0(%x24)  #408 pc 2696
	fmul	%f1, %f1, %f0  #408 pc 2700
	addi	%x24, %x0, 4  #pc 2704
	add	%x24, %x24, %x5  #408 pc 2708
	fsw	%f1, 0(%x24) #408 pc 2712
	addi	%x24, %x0, 8  #pc 2716
	add	%x24, %x24, %x5  #409 pc 2720
	flw	%f1, 0(%x24)  #409 pc 2724
	fmul	%f0, %f1, %f0  #409 pc 2728
	addi	%x24, %x0, 8  #pc 2732
	add	%x24, %x24, %x5  #409 pc 2736
	fsw	%f0, 0(%x24) #409 pc 2740
	ret #pc 2744
	nop #pc 2748
veciprod.2660:  #pc 2752
	add	%x24, %x0, %x5  #414 pc 2752
	flw	%f0, 0(%x24)  #414 pc 2756
	add	%x24, %x0, %x6  #414 pc 2760
	flw	%f1, 0(%x24)  #414 pc 2764
	fmul	%f0, %f0, %f1  #414 pc 2768
	addi	%x24, %x0, 4  #pc 2772
	add	%x24, %x24, %x5  #414 pc 2776
	flw	%f1, 0(%x24)  #414 pc 2780
	addi	%x24, %x0, 4  #pc 2784
	add	%x24, %x24, %x6  #414 pc 2788
	flw	%f2, 0(%x24)  #414 pc 2792
	fmul	%f1, %f1, %f2  #414 pc 2796
	fadd	%f0, %f0, %f1  #414 pc 2800
	addi	%x24, %x0, 8  #pc 2804
	add	%x24, %x24, %x5  #414 pc 2808
	flw	%f1, 0(%x24)  #414 pc 2812
	addi	%x24, %x0, 8  #pc 2816
	add	%x24, %x24, %x6  #414 pc 2820
	flw	%f2, 0(%x24)  #414 pc 2824
	fmul	%f1, %f1, %f2  #414 pc 2828
	fadd	%f0, %f0, %f1  #414 pc 2832
	ret #pc 2836
	nop #pc 2840
veciprod2.2663:  #pc 2844
	add	%x24, %x0, %x5  #419 pc 2844
	flw	%f3, 0(%x24)  #419 pc 2848
	fmul	%f0, %f3, %f0  #419 pc 2852
	addi	%x24, %x0, 4  #pc 2856
	add	%x24, %x24, %x5  #419 pc 2860
	flw	%f3, 0(%x24)  #419 pc 2864
	fmul	%f1, %f3, %f1  #419 pc 2868
	fadd	%f0, %f0, %f1  #419 pc 2872
	addi	%x24, %x0, 8  #pc 2876
	add	%x24, %x24, %x5  #419 pc 2880
	flw	%f1, 0(%x24)  #419 pc 2884
	fmul	%f1, %f1, %f2  #419 pc 2888
	fadd	%f0, %f0, %f1  #419 pc 2892
	ret #pc 2896
	nop #pc 2900
vecaccum.2668:  #pc 2904
	add	%x24, %x0, %x5  #424 pc 2904
	flw	%f1, 0(%x24)  #424 pc 2908
	add	%x24, %x0, %x6  #424 pc 2912
	flw	%f2, 0(%x24)  #424 pc 2916
	fmul	%f2, %f0, %f2  #424 pc 2920
	fadd	%f1, %f1, %f2  #424 pc 2924
	add	%x24, %x0, %x5  #424 pc 2928
	fsw	%f1, 0(%x24) #424 pc 2932
	addi	%x24, %x0, 4  #pc 2936
	add	%x24, %x24, %x5  #425 pc 2940
	flw	%f1, 0(%x24)  #425 pc 2944
	addi	%x24, %x0, 4  #pc 2948
	add	%x24, %x24, %x6  #425 pc 2952
	flw	%f2, 0(%x24)  #425 pc 2956
	fmul	%f2, %f0, %f2  #425 pc 2960
	fadd	%f1, %f1, %f2  #425 pc 2964
	addi	%x24, %x0, 4  #pc 2968
	add	%x24, %x24, %x5  #425 pc 2972
	fsw	%f1, 0(%x24) #425 pc 2976
	addi	%x24, %x0, 8  #pc 2980
	add	%x24, %x24, %x5  #426 pc 2984
	flw	%f1, 0(%x24)  #426 pc 2988
	addi	%x24, %x0, 8  #pc 2992
	add	%x24, %x24, %x6  #426 pc 2996
	flw	%f2, 0(%x24)  #426 pc 3000
	fmul	%f0, %f0, %f2  #426 pc 3004
	fadd	%f0, %f1, %f0  #426 pc 3008
	addi	%x24, %x0, 8  #pc 3012
	add	%x24, %x24, %x5  #426 pc 3016
	fsw	%f0, 0(%x24) #426 pc 3020
	ret #pc 3024
	nop #pc 3028
vecadd.2672:  #pc 3032
	add	%x24, %x0, %x5  #431 pc 3032
	flw	%f0, 0(%x24)  #431 pc 3036
	add	%x24, %x0, %x6  #431 pc 3040
	flw	%f1, 0(%x24)  #431 pc 3044
	fadd	%f0, %f0, %f1  #431 pc 3048
	add	%x24, %x0, %x5  #431 pc 3052
	fsw	%f0, 0(%x24) #431 pc 3056
	addi	%x24, %x0, 4  #pc 3060
	add	%x24, %x24, %x5  #432 pc 3064
	flw	%f0, 0(%x24)  #432 pc 3068
	addi	%x24, %x0, 4  #pc 3072
	add	%x24, %x24, %x6  #432 pc 3076
	flw	%f1, 0(%x24)  #432 pc 3080
	fadd	%f0, %f0, %f1  #432 pc 3084
	addi	%x24, %x0, 4  #pc 3088
	add	%x24, %x24, %x5  #432 pc 3092
	fsw	%f0, 0(%x24) #432 pc 3096
	addi	%x24, %x0, 8  #pc 3100
	add	%x24, %x24, %x5  #433 pc 3104
	flw	%f0, 0(%x24)  #433 pc 3108
	addi	%x24, %x0, 8  #pc 3112
	add	%x24, %x24, %x6  #433 pc 3116
	flw	%f1, 0(%x24)  #433 pc 3120
	fadd	%f0, %f0, %f1  #433 pc 3124
	addi	%x24, %x0, 8  #pc 3128
	add	%x24, %x24, %x5  #433 pc 3132
	fsw	%f0, 0(%x24) #433 pc 3136
	ret #pc 3140
	nop #pc 3144
vecscale.2675:  #pc 3148
	add	%x24, %x0, %x5  #447 pc 3148
	flw	%f1, 0(%x24)  #447 pc 3152
	fmul	%f1, %f1, %f0  #447 pc 3156
	add	%x24, %x0, %x5  #447 pc 3160
	fsw	%f1, 0(%x24) #447 pc 3164
	addi	%x24, %x0, 4  #pc 3168
	add	%x24, %x24, %x5  #448 pc 3172
	flw	%f1, 0(%x24)  #448 pc 3176
	fmul	%f1, %f1, %f0  #448 pc 3180
	addi	%x24, %x0, 4  #pc 3184
	add	%x24, %x24, %x5  #448 pc 3188
	fsw	%f1, 0(%x24) #448 pc 3192
	addi	%x24, %x0, 8  #pc 3196
	add	%x24, %x24, %x5  #449 pc 3200
	flw	%f1, 0(%x24)  #449 pc 3204
	fmul	%f0, %f1, %f0  #449 pc 3208
	addi	%x24, %x0, 8  #pc 3212
	add	%x24, %x24, %x5  #449 pc 3216
	fsw	%f0, 0(%x24) #449 pc 3220
	ret #pc 3224
	nop #pc 3228
vecaccumv.2678:  #pc 3232
	add	%x24, %x0, %x5  #454 pc 3232
	flw	%f0, 0(%x24)  #454 pc 3236
	add	%x24, %x0, %x6  #454 pc 3240
	flw	%f1, 0(%x24)  #454 pc 3244
	add	%x24, %x0, %x7  #454 pc 3248
	flw	%f2, 0(%x24)  #454 pc 3252
	fmul	%f1, %f1, %f2  #454 pc 3256
	fadd	%f0, %f0, %f1  #454 pc 3260
	add	%x24, %x0, %x5  #454 pc 3264
	fsw	%f0, 0(%x24) #454 pc 3268
	addi	%x24, %x0, 4  #pc 3272
	add	%x24, %x24, %x5  #455 pc 3276
	flw	%f0, 0(%x24)  #455 pc 3280
	addi	%x24, %x0, 4  #pc 3284
	add	%x24, %x24, %x6  #455 pc 3288
	flw	%f1, 0(%x24)  #455 pc 3292
	addi	%x24, %x0, 4  #pc 3296
	add	%x24, %x24, %x7  #455 pc 3300
	flw	%f2, 0(%x24)  #455 pc 3304
	fmul	%f1, %f1, %f2  #455 pc 3308
	fadd	%f0, %f0, %f1  #455 pc 3312
	addi	%x24, %x0, 4  #pc 3316
	add	%x24, %x24, %x5  #455 pc 3320
	fsw	%f0, 0(%x24) #455 pc 3324
	addi	%x24, %x0, 8  #pc 3328
	add	%x24, %x24, %x5  #456 pc 3332
	flw	%f0, 0(%x24)  #456 pc 3336
	addi	%x24, %x0, 8  #pc 3340
	add	%x24, %x24, %x6  #456 pc 3344
	flw	%f1, 0(%x24)  #456 pc 3348
	addi	%x24, %x0, 8  #pc 3352
	add	%x24, %x24, %x7  #456 pc 3356
	flw	%f2, 0(%x24)  #456 pc 3360
	fmul	%f1, %f1, %f2  #456 pc 3364
	fadd	%f0, %f0, %f1  #456 pc 3368
	addi	%x24, %x0, 8  #pc 3372
	add	%x24, %x24, %x5  #456 pc 3376
	fsw	%f0, 0(%x24) #456 pc 3380
	ret #pc 3384
	nop #pc 3388
o_texturetype.2682:  #pc 3392
	add	%x24, %x0, %x5  #465 pc 3392
	lw	%x5, 0(%x24)  #465 pc 3396
	ret #pc 3400
	nop #pc 3404
o_form.2684:  #pc 3408
	addi	%x24, %x0, 4  #pc 3408
	add	%x24, %x24, %x5  #475 pc 3412
	lw	%x5, 0(%x24)  #475 pc 3416
	ret #pc 3420
	nop #pc 3424
o_reflectiontype.2686:  #pc 3428
	addi	%x24, %x0, 8  #pc 3428
	add	%x24, %x24, %x5  #485 pc 3432
	lw	%x5, 0(%x24)  #485 pc 3436
	ret #pc 3440
	nop #pc 3444
o_isinvert.2688:  #pc 3448
	addi	%x24, %x0, 24  #pc 3448
	add	%x24, %x24, %x5  #495 pc 3452
	lw	%x5, 0(%x24)  #495 pc 3456
	ret #pc 3460
	nop #pc 3464
o_isrot.2690:  #pc 3468
	addi	%x24, %x0, 12  #pc 3468
	add	%x24, %x24, %x5  #504 pc 3472
	lw	%x5, 0(%x24)  #504 pc 3476
	ret #pc 3480
	nop #pc 3484
o_param_a.2692:  #pc 3488
	addi	%x24, %x0, 16  #pc 3488
	add	%x24, %x24, %x5  #513 pc 3492
	lw	%x5, 0(%x24)  #513 pc 3496
	add	%x24, %x0, %x5  #518 pc 3500
	flw	%f0, 0(%x24)  #518 pc 3504
	ret #pc 3508
	nop #pc 3512
o_param_b.2694:  #pc 3516
	addi	%x24, %x0, 16  #pc 3516
	add	%x24, %x24, %x5  #523 pc 3520
	lw	%x5, 0(%x24)  #523 pc 3524
	addi	%x24, %x0, 4  #pc 3528
	add	%x24, %x24, %x5  #528 pc 3532
	flw	%f0, 0(%x24)  #528 pc 3536
	ret #pc 3540
	nop #pc 3544
o_param_c.2696:  #pc 3548
	addi	%x24, %x0, 16  #pc 3548
	add	%x24, %x24, %x5  #533 pc 3552
	lw	%x5, 0(%x24)  #533 pc 3556
	addi	%x24, %x0, 8  #pc 3560
	add	%x24, %x24, %x5  #538 pc 3564
	flw	%f0, 0(%x24)  #538 pc 3568
	ret #pc 3572
	nop #pc 3576
o_param_abc.2698:  #pc 3580
	addi	%x24, %x0, 16  #pc 3580
	add	%x24, %x24, %x5  #543 pc 3584
	lw	%x5, 0(%x24)  #543 pc 3588
	ret #pc 3592
	nop #pc 3596
o_param_x.2700:  #pc 3600
	addi	%x24, %x0, 20  #pc 3600
	add	%x24, %x24, %x5  #553 pc 3604
	lw	%x5, 0(%x24)  #553 pc 3608
	add	%x24, %x0, %x5  #558 pc 3612
	flw	%f0, 0(%x24)  #558 pc 3616
	ret #pc 3620
	nop #pc 3624
o_param_y.2702:  #pc 3628
	addi	%x24, %x0, 20  #pc 3628
	add	%x24, %x24, %x5  #563 pc 3632
	lw	%x5, 0(%x24)  #563 pc 3636
	addi	%x24, %x0, 4  #pc 3640
	add	%x24, %x24, %x5  #568 pc 3644
	flw	%f0, 0(%x24)  #568 pc 3648
	ret #pc 3652
	nop #pc 3656
o_param_z.2704:  #pc 3660
	addi	%x24, %x0, 20  #pc 3660
	add	%x24, %x24, %x5  #573 pc 3664
	lw	%x5, 0(%x24)  #573 pc 3668
	addi	%x24, %x0, 8  #pc 3672
	add	%x24, %x24, %x5  #578 pc 3676
	flw	%f0, 0(%x24)  #578 pc 3680
	ret #pc 3684
	nop #pc 3688
o_diffuse.2706:  #pc 3692
	addi	%x24, %x0, 28  #pc 3692
	add	%x24, %x24, %x5  #583 pc 3696
	lw	%x5, 0(%x24)  #583 pc 3700
	add	%x24, %x0, %x5  #588 pc 3704
	flw	%f0, 0(%x24)  #588 pc 3708
	ret #pc 3712
	nop #pc 3716
o_hilight.2708:  #pc 3720
	addi	%x24, %x0, 28  #pc 3720
	add	%x24, %x24, %x5  #593 pc 3724
	lw	%x5, 0(%x24)  #593 pc 3728
	addi	%x24, %x0, 4  #pc 3732
	add	%x24, %x24, %x5  #598 pc 3736
	flw	%f0, 0(%x24)  #598 pc 3740
	ret #pc 3744
	nop #pc 3748
o_color_red.2710:  #pc 3752
	addi	%x24, %x0, 32  #pc 3752
	add	%x24, %x24, %x5  #603 pc 3756
	lw	%x5, 0(%x24)  #603 pc 3760
	add	%x24, %x0, %x5  #608 pc 3764
	flw	%f0, 0(%x24)  #608 pc 3768
	ret #pc 3772
	nop #pc 3776
o_color_green.2712:  #pc 3780
	addi	%x24, %x0, 32  #pc 3780
	add	%x24, %x24, %x5  #613 pc 3784
	lw	%x5, 0(%x24)  #613 pc 3788
	addi	%x24, %x0, 4  #pc 3792
	add	%x24, %x24, %x5  #618 pc 3796
	flw	%f0, 0(%x24)  #618 pc 3800
	ret #pc 3804
	nop #pc 3808
o_color_blue.2714:  #pc 3812
	addi	%x24, %x0, 32  #pc 3812
	add	%x24, %x24, %x5  #623 pc 3816
	lw	%x5, 0(%x24)  #623 pc 3820
	addi	%x24, %x0, 8  #pc 3824
	add	%x24, %x24, %x5  #628 pc 3828
	flw	%f0, 0(%x24)  #628 pc 3832
	ret #pc 3836
	nop #pc 3840
o_param_r1.2716:  #pc 3844
	addi	%x24, %x0, 36  #pc 3844
	add	%x24, %x24, %x5  #633 pc 3848
	lw	%x5, 0(%x24)  #633 pc 3852
	add	%x24, %x0, %x5  #638 pc 3856
	flw	%f0, 0(%x24)  #638 pc 3860
	ret #pc 3864
	nop #pc 3868
o_param_r2.2718:  #pc 3872
	addi	%x24, %x0, 36  #pc 3872
	add	%x24, %x24, %x5  #643 pc 3876
	lw	%x5, 0(%x24)  #643 pc 3880
	addi	%x24, %x0, 4  #pc 3884
	add	%x24, %x24, %x5  #648 pc 3888
	flw	%f0, 0(%x24)  #648 pc 3892
	ret #pc 3896
	nop #pc 3900
o_param_r3.2720:  #pc 3904
	addi	%x24, %x0, 36  #pc 3904
	add	%x24, %x24, %x5  #653 pc 3908
	lw	%x5, 0(%x24)  #653 pc 3912
	addi	%x24, %x0, 8  #pc 3916
	add	%x24, %x24, %x5  #658 pc 3920
	flw	%f0, 0(%x24)  #658 pc 3924
	ret #pc 3928
	nop #pc 3932
o_param_ctbl.2722:  #pc 3936
	addi	%x24, %x0, 40  #pc 3936
	add	%x24, %x24, %x5  #670 pc 3940
	lw	%x5, 0(%x24)  #670 pc 3944
	ret #pc 3948
	nop #pc 3952
p_rgb.2724:  #pc 3956
	add	%x24, %x0, %x5  #684 pc 3956
	lw	%x5, 0(%x24)  #684 pc 3960
	ret #pc 3964
	nop #pc 3968
p_intersection_points.2726:  #pc 3972
	addi	%x24, %x0, 4  #pc 3972
	add	%x24, %x24, %x5  #691 pc 3976
	lw	%x5, 0(%x24)  #691 pc 3980
	ret #pc 3984
	nop #pc 3988
p_surface_ids.2728:  #pc 3992
	addi	%x24, %x0, 8  #pc 3992
	add	%x24, %x24, %x5  #699 pc 3996
	lw	%x5, 0(%x24)  #699 pc 4000
	ret #pc 4004
	nop #pc 4008
p_calc_diffuse.2730:  #pc 4012
	addi	%x24, %x0, 12  #pc 4012
	add	%x24, %x24, %x5  #706 pc 4016
	lw	%x5, 0(%x24)  #706 pc 4020
	ret #pc 4024
	nop #pc 4028
p_energy.2732:  #pc 4032
	addi	%x24, %x0, 16  #pc 4032
	add	%x24, %x24, %x5  #713 pc 4036
	lw	%x5, 0(%x24)  #713 pc 4040
	ret #pc 4044
	nop #pc 4048
p_received_ray_20percent.2734:  #pc 4052
	addi	%x24, %x0, 20  #pc 4052
	add	%x24, %x24, %x5  #720 pc 4056
	lw	%x5, 0(%x24)  #720 pc 4060
	ret #pc 4064
	nop #pc 4068
p_group_id.2736:  #pc 4072
	addi	%x24, %x0, 24  #pc 4072
	add	%x24, %x24, %x5  #736 pc 4076
	lw	%x5, 0(%x24)  #736 pc 4080
	add	%x24, %x0, %x5  #738 pc 4084
	lw	%x5, 0(%x24)  #738 pc 4088
	ret #pc 4092
	nop #pc 4096
p_set_group_id.2738:  #pc 4100
	addi	%x24, %x0, 24  #pc 4100
	add	%x24, %x24, %x5  #743 pc 4104
	lw	%x5, 0(%x24)  #743 pc 4108
	add	%x24, %x0, %x5  #745 pc 4112
	sw	%x6, 0(%x24)  #745 pc 4116
	ret #pc 4120
	nop #pc 4124
p_nvectors.2741:  #pc 4128
	addi	%x24, %x0, 28  #pc 4128
	add	%x24, %x24, %x5  #750 pc 4132
	lw	%x5, 0(%x24)  #750 pc 4136
	ret #pc 4140
	nop #pc 4144
d_vec.2743:  #pc 4148
	add	%x24, %x0, %x5  #761 pc 4148
	lw	%x5, 0(%x24)  #761 pc 4152
	ret #pc 4156
	nop #pc 4160
d_const.2745:  #pc 4164
	addi	%x24, %x0, 4  #pc 4164
	add	%x24, %x24, %x5  #767 pc 4168
	lw	%x5, 0(%x24)  #767 pc 4172
	ret #pc 4176
	nop #pc 4180
r_surface_id.2747:  #pc 4184
	add	%x24, %x0, %x5  #777 pc 4184
	lw	%x5, 0(%x24)  #777 pc 4188
	ret #pc 4192
	nop #pc 4196
r_dvec.2749:  #pc 4200
	addi	%x24, %x0, 4  #pc 4200
	add	%x24, %x24, %x5  #783 pc 4204
	lw	%x5, 0(%x24)  #783 pc 4208
	ret #pc 4212
	nop #pc 4216
r_bright.2751:  #pc 4220
	addi	%x24, %x0, 8  #pc 4220
	add	%x24, %x24, %x5  #789 pc 4224
	flw	%f0, 0(%x24)  #789 pc 4228
	ret #pc 4232
	nop #pc 4236
rad.2753:  #pc 4240
	fmv	%f1, l.6431  #0 pc 4240
	fmul	%f0, %f0, %f1  #799 pc 4244
	ret #pc 4248
	nop #pc 4252
read_screen_settings.2755:  #pc 4256
	addi	%x24, %x0, 20  #pc 4256
	add	%x24, %x24, %x22  #0 pc 4260
	lw	%x5, 0(%x24)  #0 pc 4264
	addi	%x24, %x0, 16  #pc 4268
	add	%x24, %x24, %x22  #0 pc 4272
	lw	%x6, 0(%x24)  #0 pc 4276
	addi	%x24, %x0, 12  #pc 4280
	add	%x24, %x24, %x22  #0 pc 4284
	lw	%x7, 0(%x24)  #0 pc 4288
	addi	%x24, %x0, 8  #pc 4292
	add	%x24, %x24, %x22  #0 pc 4296
	lw	%x9, 0(%x24)  #0 pc 4300
	addi	%x24, %x0, 4  #pc 4304
	add	%x24, %x24, %x22  #0 pc 4308
	lw	%x10, 0(%x24)  #0 pc 4312
	sw	%x5, 0(%x2)  #806 pc 4316
	sw	%x7, 4(%x2)  #806 pc 4320
	sw	%x9, 8(%x2)  #806 pc 4324
	sw	%x6, 12(%x2)  #806 pc 4328
	sw	%x10, 16(%x2)  #806 pc 4332
	addi	%x5, %x0, 0  #0 pc 4336
	sw	%x1, 20(%x2)  #806 pc 4340
	addi	%x2, %x2, 24  #806 pc 4344
	jal	%x1, read_float.2587  #806 pc 4348
	addi	%x2, %x2, -24  #806 pc 4352
	lw	%x1, 20(%x2) #806 pc 4356
	lw	%x5, 16(%x2)  #806 pc 4360
	add	%x24, %x0, %x5  #806 pc 4364
	fsw	%f0, 0(%x24) #806 pc 4368
	addi	%x5, %x0, 0  #0 pc 4372
	sw	%x1, 20(%x2)  #807 pc 4376
	addi	%x2, %x2, 24  #807 pc 4380
	jal	%x1, read_float.2587  #807 pc 4384
	addi	%x2, %x2, -24  #807 pc 4388
	lw	%x1, 20(%x2) #807 pc 4392
	lw	%x5, 16(%x2)  #807 pc 4396
	addi	%x24, %x0, 4  #pc 4400
	add	%x24, %x24, %x5  #807 pc 4404
	fsw	%f0, 0(%x24) #807 pc 4408
	addi	%x5, %x0, 0  #0 pc 4412
	sw	%x1, 20(%x2)  #808 pc 4416
	addi	%x2, %x2, 24  #808 pc 4420
	jal	%x1, read_float.2587  #808 pc 4424
	addi	%x2, %x2, -24  #808 pc 4428
	lw	%x1, 20(%x2) #808 pc 4432
	lw	%x5, 16(%x2)  #808 pc 4436
	addi	%x24, %x0, 8  #pc 4440
	add	%x24, %x24, %x5  #808 pc 4444
	fsw	%f0, 0(%x24) #808 pc 4448
	addi	%x5, %x0, 0  #0 pc 4452
	sw	%x1, 20(%x2)  #810 pc 4456
	addi	%x2, %x2, 24  #810 pc 4460
	jal	%x1, read_float.2587  #810 pc 4464
	addi	%x2, %x2, -24  #810 pc 4468
	lw	%x1, 20(%x2) #810 pc 4472
	sw	%x1, 20(%x2)  #810 pc 4476
	addi	%x2, %x2, 24  #810 pc 4480
	jal	%x1, rad.2753  #810 pc 4484
	addi	%x2, %x2, -24  #810 pc 4488
	lw	%x1, 20(%x2) #810 pc 4492
	fsw	%f0, 24(%x2)  #811 pc 4496
	sw	%x1, 36(%x2)  #811 pc 4500
	addi	%x2, %x2, 40  #811 pc 4504
	jal	%x1, cos.2545  #811 pc 4508
	addi	%x2, %x2, -40  #811 pc 4512
	lw	%x1, 36(%x2) #811 pc 4516
	flw	%f1, 24(%x2)  #812 pc 4520
	fsw	%f0, 32(%x2)  #812 pc 4524
	fadd	%f0, %f1, %f30  #0 pc 4528
	sw	%x1, 44(%x2)  #812 pc 4532
	addi	%x2, %x2, 48  #812 pc 4536
	jal	%x1, sin.2543  #812 pc 4540
	addi	%x2, %x2, -48  #812 pc 4544
	lw	%x1, 44(%x2) #812 pc 4548
	fsw	%f0, 40(%x2)  #813 pc 4552
	addi	%x5, %x0, 0  #0 pc 4556
	sw	%x1, 52(%x2)  #813 pc 4560
	addi	%x2, %x2, 56  #813 pc 4564
	jal	%x1, read_float.2587  #813 pc 4568
	addi	%x2, %x2, -56  #813 pc 4572
	lw	%x1, 52(%x2) #813 pc 4576
	sw	%x1, 52(%x2)  #813 pc 4580
	addi	%x2, %x2, 56  #813 pc 4584
	jal	%x1, rad.2753  #813 pc 4588
	addi	%x2, %x2, -56  #813 pc 4592
	lw	%x1, 52(%x2) #813 pc 4596
	fsw	%f0, 48(%x2)  #814 pc 4600
	sw	%x1, 60(%x2)  #814 pc 4604
	addi	%x2, %x2, 64  #814 pc 4608
	jal	%x1, cos.2545  #814 pc 4612
	addi	%x2, %x2, -64  #814 pc 4616
	lw	%x1, 60(%x2) #814 pc 4620
	flw	%f1, 48(%x2)  #815 pc 4624
	fsw	%f0, 56(%x2)  #815 pc 4628
	fadd	%f0, %f1, %f30  #0 pc 4632
	sw	%x1, 68(%x2)  #815 pc 4636
	addi	%x2, %x2, 72  #815 pc 4640
	jal	%x1, sin.2543  #815 pc 4644
	addi	%x2, %x2, -72  #815 pc 4648
	lw	%x1, 68(%x2) #815 pc 4652
	flw	%f1, 32(%x2)  #817 pc 4656
	fmul	%f2, %f1, %f0  #817 pc 4660
	fmv	%f3, l.6436  #0 pc 4664
	fmul	%f2, %f2, %f3  #817 pc 4668
	lw	%x5, 12(%x2)  #817 pc 4672
	add	%x24, %x0, %x5  #817 pc 4676
	fsw	%f2, 0(%x24) #817 pc 4680
	fmv	%f2, l.6439  #0 pc 4684
	flw	%f3, 40(%x2)  #818 pc 4688
	fmul	%f2, %f3, %f2  #818 pc 4692
	addi	%x24, %x0, 4  #pc 4696
	add	%x24, %x24, %x5  #818 pc 4700
	fsw	%f2, 0(%x24) #818 pc 4704
	flw	%f2, 56(%x2)  #819 pc 4708
	fmul	%f4, %f1, %f2  #819 pc 4712
	fmv	%f5, l.6436  #0 pc 4716
	fmul	%f4, %f4, %f5  #819 pc 4720
	addi	%x24, %x0, 8  #pc 4724
	add	%x24, %x24, %x5  #819 pc 4728
	fsw	%f4, 0(%x24) #819 pc 4732
	lw	%x6, 8(%x2)  #821 pc 4736
	add	%x24, %x0, %x6  #821 pc 4740
	fsw	%f2, 0(%x24) #821 pc 4744
	fmv	%f4, l.6293  #0 pc 4748
	addi	%x24, %x0, 4  #pc 4752
	add	%x24, %x24, %x6  #822 pc 4756
	fsw	%f4, 0(%x24) #822 pc 4760
	fsw	%f0, 64(%x2)  #823 pc 4764
	sw	%x1, 76(%x2)  #823 pc 4768
	addi	%x2, %x2, 80  #823 pc 4772
	jal	%x1, fneg.2534  #823 pc 4776
	addi	%x2, %x2, -80  #823 pc 4780
	lw	%x1, 76(%x2) #823 pc 4784
	lw	%x5, 8(%x2)  #823 pc 4788
	addi	%x24, %x0, 8  #pc 4792
	add	%x24, %x24, %x5  #823 pc 4796
	fsw	%f0, 0(%x24) #823 pc 4800
	flw	%f0, 40(%x2)  #825 pc 4804
	sw	%x1, 76(%x2)  #825 pc 4808
	addi	%x2, %x2, 80  #825 pc 4812
	jal	%x1, fneg.2534  #825 pc 4816
	addi	%x2, %x2, -80  #825 pc 4820
	lw	%x1, 76(%x2) #825 pc 4824
	flw	%f1, 64(%x2)  #825 pc 4828
	fmul	%f0, %f0, %f1  #825 pc 4832
	lw	%x5, 4(%x2)  #825 pc 4836
	add	%x24, %x0, %x5  #825 pc 4840
	fsw	%f0, 0(%x24) #825 pc 4844
	flw	%f0, 32(%x2)  #826 pc 4848
	sw	%x1, 76(%x2)  #826 pc 4852
	addi	%x2, %x2, 80  #826 pc 4856
	jal	%x1, fneg.2534  #826 pc 4860
	addi	%x2, %x2, -80  #826 pc 4864
	lw	%x1, 76(%x2) #826 pc 4868
	lw	%x5, 4(%x2)  #826 pc 4872
	addi	%x24, %x0, 4  #pc 4876
	add	%x24, %x24, %x5  #826 pc 4880
	fsw	%f0, 0(%x24) #826 pc 4884
	flw	%f0, 40(%x2)  #827 pc 4888
	sw	%x1, 76(%x2)  #827 pc 4892
	addi	%x2, %x2, 80  #827 pc 4896
	jal	%x1, fneg.2534  #827 pc 4900
	addi	%x2, %x2, -80  #827 pc 4904
	lw	%x1, 76(%x2) #827 pc 4908
	flw	%f1, 56(%x2)  #827 pc 4912
	fmul	%f0, %f0, %f1  #827 pc 4916
	lw	%x5, 4(%x2)  #827 pc 4920
	addi	%x24, %x0, 8  #pc 4924
	add	%x24, %x24, %x5  #827 pc 4928
	fsw	%f0, 0(%x24) #827 pc 4932
	lw	%x5, 16(%x2)  #829 pc 4936
	add	%x24, %x0, %x5  #829 pc 4940
	flw	%f0, 0(%x24)  #829 pc 4944
	lw	%x6, 12(%x2)  #829 pc 4948
	add	%x24, %x0, %x6  #829 pc 4952
	flw	%f1, 0(%x24)  #829 pc 4956
	fsub	%f0, %f0, %f1  #829 pc 4960
	lw	%x7, 0(%x2)  #829 pc 4964
	add	%x24, %x0, %x7  #829 pc 4968
	fsw	%f0, 0(%x24) #829 pc 4972
	addi	%x24, %x0, 4  #pc 4976
	add	%x24, %x24, %x5  #830 pc 4980
	flw	%f0, 0(%x24)  #830 pc 4984
	addi	%x24, %x0, 4  #pc 4988
	add	%x24, %x24, %x6  #830 pc 4992
	flw	%f1, 0(%x24)  #830 pc 4996
	fsub	%f0, %f0, %f1  #830 pc 5000
	addi	%x24, %x0, 4  #pc 5004
	add	%x24, %x24, %x7  #830 pc 5008
	fsw	%f0, 0(%x24) #830 pc 5012
	addi	%x24, %x0, 8  #pc 5016
	add	%x24, %x24, %x5  #831 pc 5020
	flw	%f0, 0(%x24)  #831 pc 5024
	addi	%x24, %x0, 8  #pc 5028
	add	%x24, %x24, %x6  #831 pc 5032
	flw	%f1, 0(%x24)  #831 pc 5036
	fsub	%f0, %f0, %f1  #831 pc 5040
	addi	%x24, %x0, 8  #pc 5044
	add	%x24, %x24, %x7  #831 pc 5048
	fsw	%f0, 0(%x24) #831 pc 5052
	ret #pc 5056
	nop #pc 5060
read_light.2757:  #pc 5064
	addi	%x24, %x0, 8  #pc 5064
	add	%x24, %x24, %x22  #0 pc 5068
	lw	%x5, 0(%x24)  #0 pc 5072
	addi	%x24, %x0, 4  #pc 5076
	add	%x24, %x24, %x22  #0 pc 5080
	lw	%x6, 0(%x24)  #0 pc 5084
	sw	%x6, 0(%x2)  #838 pc 5088
	sw	%x5, 4(%x2)  #838 pc 5092
	addi	%x5, %x0, 0  #0 pc 5096
	sw	%x1, 12(%x2)  #838 pc 5100
	addi	%x2, %x2, 16  #838 pc 5104
	jal	%x1, read_int.2580  #838 pc 5108
	addi	%x2, %x2, -16  #838 pc 5112
	lw	%x1, 12(%x2) #838 pc 5116
	addi	%x5, %x0, 0  #0 pc 5120
	sw	%x1, 12(%x2)  #841 pc 5124
	addi	%x2, %x2, 16  #841 pc 5128
	jal	%x1, read_float.2587  #841 pc 5132
	addi	%x2, %x2, -16  #841 pc 5136
	lw	%x1, 12(%x2) #841 pc 5140
	sw	%x1, 12(%x2)  #841 pc 5144
	addi	%x2, %x2, 16  #841 pc 5148
	jal	%x1, rad.2753  #841 pc 5152
	addi	%x2, %x2, -16  #841 pc 5156
	lw	%x1, 12(%x2) #841 pc 5160
	fsw	%f0, 8(%x2)  #842 pc 5164
	sw	%x1, 20(%x2)  #842 pc 5168
	addi	%x2, %x2, 24  #842 pc 5172
	jal	%x1, sin.2543  #842 pc 5176
	addi	%x2, %x2, -24  #842 pc 5180
	lw	%x1, 20(%x2) #842 pc 5184
	sw	%x1, 20(%x2)  #843 pc 5188
	addi	%x2, %x2, 24  #843 pc 5192
	jal	%x1, fneg.2534  #843 pc 5196
	addi	%x2, %x2, -24  #843 pc 5200
	lw	%x1, 20(%x2) #843 pc 5204
	lw	%x5, 4(%x2)  #843 pc 5208
	addi	%x24, %x0, 4  #pc 5212
	add	%x24, %x24, %x5  #843 pc 5216
	fsw	%f0, 0(%x24) #843 pc 5220
	addi	%x5, %x0, 0  #0 pc 5224
	sw	%x1, 20(%x2)  #844 pc 5228
	addi	%x2, %x2, 24  #844 pc 5232
	jal	%x1, read_float.2587  #844 pc 5236
	addi	%x2, %x2, -24  #844 pc 5240
	lw	%x1, 20(%x2) #844 pc 5244
	sw	%x1, 20(%x2)  #844 pc 5248
	addi	%x2, %x2, 24  #844 pc 5252
	jal	%x1, rad.2753  #844 pc 5256
	addi	%x2, %x2, -24  #844 pc 5260
	lw	%x1, 20(%x2) #844 pc 5264
	flw	%f1, 8(%x2)  #845 pc 5268
	fsw	%f0, 16(%x2)  #845 pc 5272
	fadd	%f0, %f1, %f30  #0 pc 5276
	sw	%x1, 28(%x2)  #845 pc 5280
	addi	%x2, %x2, 32  #845 pc 5284
	jal	%x1, cos.2545  #845 pc 5288
	addi	%x2, %x2, -32  #845 pc 5292
	lw	%x1, 28(%x2) #845 pc 5296
	flw	%f1, 16(%x2)  #846 pc 5300
	fsw	%f0, 24(%x2)  #846 pc 5304
	fadd	%f0, %f1, %f30  #0 pc 5308
	sw	%x1, 36(%x2)  #846 pc 5312
	addi	%x2, %x2, 40  #846 pc 5316
	jal	%x1, sin.2543  #846 pc 5320
	addi	%x2, %x2, -40  #846 pc 5324
	lw	%x1, 36(%x2) #846 pc 5328
	flw	%f1, 24(%x2)  #847 pc 5332
	fmul	%f0, %f1, %f0  #847 pc 5336
	lw	%x5, 4(%x2)  #847 pc 5340
	add	%x24, %x0, %x5  #847 pc 5344
	fsw	%f0, 0(%x24) #847 pc 5348
	flw	%f0, 16(%x2)  #848 pc 5352
	sw	%x1, 36(%x2)  #848 pc 5356
	addi	%x2, %x2, 40  #848 pc 5360
	jal	%x1, cos.2545  #848 pc 5364
	addi	%x2, %x2, -40  #848 pc 5368
	lw	%x1, 36(%x2) #848 pc 5372
	flw	%f1, 24(%x2)  #849 pc 5376
	fmul	%f0, %f1, %f0  #849 pc 5380
	lw	%x5, 4(%x2)  #849 pc 5384
	addi	%x24, %x0, 8  #pc 5388
	add	%x24, %x24, %x5  #849 pc 5392
	fsw	%f0, 0(%x24) #849 pc 5396
	addi	%x5, %x0, 0  #0 pc 5400
	sw	%x1, 36(%x2)  #850 pc 5404
	addi	%x2, %x2, 40  #850 pc 5408
	jal	%x1, read_float.2587  #850 pc 5412
	addi	%x2, %x2, -40  #850 pc 5416
	lw	%x1, 36(%x2) #850 pc 5420
	lw	%x5, 0(%x2)  #850 pc 5424
	add	%x24, %x0, %x5  #850 pc 5428
	fsw	%f0, 0(%x24) #850 pc 5432
	ret #pc 5436
	nop #pc 5440
rotate_quadratic_matrix.2759:  #pc 5444
	add	%x24, %x0, %x6  #860 pc 5444
	flw	%f0, 0(%x24)  #860 pc 5448
	sw	%x5, 0(%x2)  #860 pc 5452
	sw	%x6, 4(%x2)  #860 pc 5456
	sw	%x1, 12(%x2)  #860 pc 5460
	addi	%x2, %x2, 16  #860 pc 5464
	jal	%x1, cos.2545  #860 pc 5468
	addi	%x2, %x2, -16  #860 pc 5472
	lw	%x1, 12(%x2) #860 pc 5476
	lw	%x5, 4(%x2)  #861 pc 5480
	add	%x24, %x0, %x5  #861 pc 5484
	flw	%f1, 0(%x24)  #861 pc 5488
	fsw	%f0, 8(%x2)  #861 pc 5492
	fadd	%f0, %f1, %f30  #0 pc 5496
	sw	%x1, 20(%x2)  #861 pc 5500
	addi	%x2, %x2, 24  #861 pc 5504
	jal	%x1, sin.2543  #861 pc 5508
	addi	%x2, %x2, -24  #861 pc 5512
	lw	%x1, 20(%x2) #861 pc 5516
	lw	%x5, 4(%x2)  #862 pc 5520
	addi	%x24, %x0, 4  #pc 5524
	add	%x24, %x24, %x5  #862 pc 5528
	flw	%f1, 0(%x24)  #862 pc 5532
	fsw	%f0, 16(%x2)  #862 pc 5536
	fadd	%f0, %f1, %f30  #0 pc 5540
	sw	%x1, 28(%x2)  #862 pc 5544
	addi	%x2, %x2, 32  #862 pc 5548
	jal	%x1, cos.2545  #862 pc 5552
	addi	%x2, %x2, -32  #862 pc 5556
	lw	%x1, 28(%x2) #862 pc 5560
	lw	%x5, 4(%x2)  #863 pc 5564
	addi	%x24, %x0, 4  #pc 5568
	add	%x24, %x24, %x5  #863 pc 5572
	flw	%f1, 0(%x24)  #863 pc 5576
	fsw	%f0, 24(%x2)  #863 pc 5580
	fadd	%f0, %f1, %f30  #0 pc 5584
	sw	%x1, 36(%x2)  #863 pc 5588
	addi	%x2, %x2, 40  #863 pc 5592
	jal	%x1, sin.2543  #863 pc 5596
	addi	%x2, %x2, -40  #863 pc 5600
	lw	%x1, 36(%x2) #863 pc 5604
	lw	%x5, 4(%x2)  #864 pc 5608
	addi	%x24, %x0, 8  #pc 5612
	add	%x24, %x24, %x5  #864 pc 5616
	flw	%f1, 0(%x24)  #864 pc 5620
	fsw	%f0, 32(%x2)  #864 pc 5624
	fadd	%f0, %f1, %f30  #0 pc 5628
	sw	%x1, 44(%x2)  #864 pc 5632
	addi	%x2, %x2, 48  #864 pc 5636
	jal	%x1, cos.2545  #864 pc 5640
	addi	%x2, %x2, -48  #864 pc 5644
	lw	%x1, 44(%x2) #864 pc 5648
	lw	%x5, 4(%x2)  #865 pc 5652
	addi	%x24, %x0, 8  #pc 5656
	add	%x24, %x24, %x5  #865 pc 5660
	flw	%f1, 0(%x24)  #865 pc 5664
	fsw	%f0, 40(%x2)  #865 pc 5668
	fadd	%f0, %f1, %f30  #0 pc 5672
	sw	%x1, 52(%x2)  #865 pc 5676
	addi	%x2, %x2, 56  #865 pc 5680
	jal	%x1, sin.2543  #865 pc 5684
	addi	%x2, %x2, -56  #865 pc 5688
	lw	%x1, 52(%x2) #865 pc 5692
	flw	%f1, 40(%x2)  #867 pc 5696
	flw	%f2, 24(%x2)  #867 pc 5700
	fmul	%f3, %f2, %f1  #867 pc 5704
	flw	%f4, 32(%x2)  #868 pc 5708
	flw	%f5, 16(%x2)  #868 pc 5712
	fmul	%f6, %f5, %f4  #868 pc 5716
	fmul	%f6, %f6, %f1  #868 pc 5720
	flw	%f7, 8(%x2)  #868 pc 5724
	fmul	%f8, %f7, %f0  #868 pc 5728
	fsub	%f6, %f6, %f8  #868 pc 5732
	fmul	%f8, %f7, %f4  #869 pc 5736
	fmul	%f8, %f8, %f1  #869 pc 5740
	fmul	%f9, %f5, %f0  #869 pc 5744
	fadd	%f8, %f8, %f9  #869 pc 5748
	fmul	%f9, %f2, %f0  #871 pc 5752
	fmul	%f10, %f5, %f4  #872 pc 5756
	fmul	%f10, %f10, %f0  #872 pc 5760
	fmul	%f11, %f7, %f1  #872 pc 5764
	fadd	%f10, %f10, %f11  #872 pc 5768
	fmul	%f11, %f7, %f4  #873 pc 5772
	fmul	%f0, %f11, %f0  #873 pc 5776
	fmul	%f1, %f5, %f1  #873 pc 5780
	fsub	%f0, %f0, %f1  #873 pc 5784
	fsw	%f0, 48(%x2)  #875 pc 5788
	fsw	%f8, 56(%x2)  #875 pc 5792
	fsw	%f10, 64(%x2)  #875 pc 5796
	fsw	%f6, 72(%x2)  #875 pc 5800
	fsw	%f9, 80(%x2)  #875 pc 5804
	fsw	%f3, 88(%x2)  #875 pc 5808
	fadd	%f0, %f4, %f30  #0 pc 5812
	sw	%x1, 100(%x2)  #875 pc 5816
	addi	%x2, %x2, 104  #875 pc 5820
	jal	%x1, fneg.2534  #875 pc 5824
	addi	%x2, %x2, -104  #875 pc 5828
	lw	%x1, 100(%x2) #875 pc 5832
	flw	%f1, 24(%x2)  #876 pc 5836
	flw	%f2, 16(%x2)  #876 pc 5840
	fmul	%f2, %f2, %f1  #876 pc 5844
	flw	%f3, 8(%x2)  #877 pc 5848
	fmul	%f1, %f3, %f1  #877 pc 5852
	lw	%x5, 0(%x2)  #880 pc 5856
	add	%x24, %x0, %x5  #880 pc 5860
	flw	%f3, 0(%x24)  #880 pc 5864
	addi	%x24, %x0, 4  #pc 5868
	add	%x24, %x24, %x5  #881 pc 5872
	flw	%f4, 0(%x24)  #881 pc 5876
	addi	%x24, %x0, 8  #pc 5880
	add	%x24, %x24, %x5  #882 pc 5884
	flw	%f5, 0(%x24)  #882 pc 5888
	flw	%f6, 88(%x2)  #887 pc 5892
	fsw	%f1, 96(%x2)  #887 pc 5896
	fsw	%f2, 104(%x2)  #887 pc 5900
	fsw	%f5, 112(%x2)  #887 pc 5904
	fsw	%f0, 120(%x2)  #887 pc 5908
	fsw	%f4, 128(%x2)  #887 pc 5912
	fsw	%f3, 136(%x2)  #887 pc 5916
	fadd	%f0, %f6, %f30  #0 pc 5920
	sw	%x1, 148(%x2)  #887 pc 5924
	addi	%x2, %x2, 152  #887 pc 5928
	jal	%x1, fsqr.2536  #887 pc 5932
	addi	%x2, %x2, -152  #887 pc 5936
	lw	%x1, 148(%x2) #887 pc 5940
	flw	%f1, 136(%x2)  #887 pc 5944
	fmul	%f0, %f1, %f0  #887 pc 5948
	flw	%f2, 80(%x2)  #887 pc 5952
	fsw	%f0, 144(%x2)  #887 pc 5956
	fadd	%f0, %f2, %f30  #0 pc 5960
	sw	%x1, 156(%x2)  #887 pc 5964
	addi	%x2, %x2, 160  #887 pc 5968
	jal	%x1, fsqr.2536  #887 pc 5972
	addi	%x2, %x2, -160  #887 pc 5976
	lw	%x1, 156(%x2) #887 pc 5980
	flw	%f1, 128(%x2)  #887 pc 5984
	fmul	%f0, %f1, %f0  #887 pc 5988
	flw	%f2, 144(%x2)  #887 pc 5992
	fadd	%f0, %f2, %f0  #887 pc 5996
	flw	%f2, 120(%x2)  #887 pc 6000
	fsw	%f0, 152(%x2)  #887 pc 6004
	fadd	%f0, %f2, %f30  #0 pc 6008
	sw	%x1, 164(%x2)  #887 pc 6012
	addi	%x2, %x2, 168  #887 pc 6016
	jal	%x1, fsqr.2536  #887 pc 6020
	addi	%x2, %x2, -168  #887 pc 6024
	lw	%x1, 164(%x2) #887 pc 6028
	flw	%f1, 112(%x2)  #887 pc 6032
	fmul	%f0, %f1, %f0  #887 pc 6036
	flw	%f2, 152(%x2)  #887 pc 6040
	fadd	%f0, %f2, %f0  #887 pc 6044
	lw	%x5, 0(%x2)  #887 pc 6048
	add	%x24, %x0, %x5  #887 pc 6052
	fsw	%f0, 0(%x24) #887 pc 6056
	flw	%f0, 72(%x2)  #888 pc 6060
	sw	%x1, 164(%x2)  #888 pc 6064
	addi	%x2, %x2, 168  #888 pc 6068
	jal	%x1, fsqr.2536  #888 pc 6072
	addi	%x2, %x2, -168  #888 pc 6076
	lw	%x1, 164(%x2) #888 pc 6080
	flw	%f1, 136(%x2)  #888 pc 6084
	fmul	%f0, %f1, %f0  #888 pc 6088
	flw	%f2, 64(%x2)  #888 pc 6092
	fsw	%f0, 160(%x2)  #888 pc 6096
	fadd	%f0, %f2, %f30  #0 pc 6100
	sw	%x1, 172(%x2)  #888 pc 6104
	addi	%x2, %x2, 176  #888 pc 6108
	jal	%x1, fsqr.2536  #888 pc 6112
	addi	%x2, %x2, -176  #888 pc 6116
	lw	%x1, 172(%x2) #888 pc 6120
	flw	%f1, 128(%x2)  #888 pc 6124
	fmul	%f0, %f1, %f0  #888 pc 6128
	flw	%f2, 160(%x2)  #888 pc 6132
	fadd	%f0, %f2, %f0  #888 pc 6136
	flw	%f2, 104(%x2)  #888 pc 6140
	fsw	%f0, 168(%x2)  #888 pc 6144
	fadd	%f0, %f2, %f30  #0 pc 6148
	sw	%x1, 180(%x2)  #888 pc 6152
	addi	%x2, %x2, 184  #888 pc 6156
	jal	%x1, fsqr.2536  #888 pc 6160
	addi	%x2, %x2, -184  #888 pc 6164
	lw	%x1, 180(%x2) #888 pc 6168
	flw	%f1, 112(%x2)  #888 pc 6172
	fmul	%f0, %f1, %f0  #888 pc 6176
	flw	%f2, 168(%x2)  #888 pc 6180
	fadd	%f0, %f2, %f0  #888 pc 6184
	lw	%x5, 0(%x2)  #888 pc 6188
	addi	%x24, %x0, 4  #pc 6192
	add	%x24, %x24, %x5  #888 pc 6196
	fsw	%f0, 0(%x24) #888 pc 6200
	flw	%f0, 56(%x2)  #889 pc 6204
	sw	%x1, 180(%x2)  #889 pc 6208
	addi	%x2, %x2, 184  #889 pc 6212
	jal	%x1, fsqr.2536  #889 pc 6216
	addi	%x2, %x2, -184  #889 pc 6220
	lw	%x1, 180(%x2) #889 pc 6224
	flw	%f1, 136(%x2)  #889 pc 6228
	fmul	%f0, %f1, %f0  #889 pc 6232
	flw	%f2, 48(%x2)  #889 pc 6236
	fsw	%f0, 176(%x2)  #889 pc 6240
	fadd	%f0, %f2, %f30  #0 pc 6244
	sw	%x1, 188(%x2)  #889 pc 6248
	addi	%x2, %x2, 192  #889 pc 6252
	jal	%x1, fsqr.2536  #889 pc 6256
	addi	%x2, %x2, -192  #889 pc 6260
	lw	%x1, 188(%x2) #889 pc 6264
	flw	%f1, 128(%x2)  #889 pc 6268
	fmul	%f0, %f1, %f0  #889 pc 6272
	flw	%f2, 176(%x2)  #889 pc 6276
	fadd	%f0, %f2, %f0  #889 pc 6280
	flw	%f2, 96(%x2)  #889 pc 6284
	fsw	%f0, 184(%x2)  #889 pc 6288
	fadd	%f0, %f2, %f30  #0 pc 6292
	sw	%x1, 196(%x2)  #889 pc 6296
	addi	%x2, %x2, 200  #889 pc 6300
	jal	%x1, fsqr.2536  #889 pc 6304
	addi	%x2, %x2, -200  #889 pc 6308
	lw	%x1, 196(%x2) #889 pc 6312
	flw	%f1, 112(%x2)  #889 pc 6316
	fmul	%f0, %f1, %f0  #889 pc 6320
	flw	%f2, 184(%x2)  #889 pc 6324
	fadd	%f0, %f2, %f0  #889 pc 6328
	lw	%x5, 0(%x2)  #889 pc 6332
	addi	%x24, %x0, 8  #pc 6336
	add	%x24, %x24, %x5  #889 pc 6340
	fsw	%f0, 0(%x24) #889 pc 6344
	fmv	%f0, l.6476  #0 pc 6348
	flw	%f2, 72(%x2)  #892 pc 6352
	flw	%f3, 136(%x2)  #892 pc 6356
	fmul	%f4, %f3, %f2  #892 pc 6360
	flw	%f5, 56(%x2)  #892 pc 6364
	fmul	%f4, %f4, %f5  #892 pc 6368
	flw	%f6, 64(%x2)  #892 pc 6372
	flw	%f7, 128(%x2)  #892 pc 6376
	fmul	%f8, %f7, %f6  #892 pc 6380
	flw	%f9, 48(%x2)  #892 pc 6384
	fmul	%f8, %f8, %f9  #892 pc 6388
	fadd	%f4, %f4, %f8  #892 pc 6392
	flw	%f8, 104(%x2)  #892 pc 6396
	fmul	%f10, %f1, %f8  #892 pc 6400
	flw	%f11, 96(%x2)  #892 pc 6404
	fmul	%f10, %f10, %f11  #892 pc 6408
	fadd	%f4, %f4, %f10  #892 pc 6412
	fmul	%f0, %f0, %f4  #892 pc 6416
	lw	%x5, 4(%x2)  #892 pc 6420
	add	%x24, %x0, %x5  #892 pc 6424
	fsw	%f0, 0(%x24) #892 pc 6428
	fmv	%f0, l.6476  #0 pc 6432
	flw	%f4, 88(%x2)  #893 pc 6436
	fmul	%f10, %f3, %f4  #893 pc 6440
	fmul	%f5, %f10, %f5  #893 pc 6444
	flw	%f10, 80(%x2)  #893 pc 6448
	fmul	%f12, %f7, %f10  #893 pc 6452
	fmul	%f9, %f12, %f9  #893 pc 6456
	fadd	%f5, %f5, %f9  #893 pc 6460
	flw	%f9, 120(%x2)  #893 pc 6464
	fmul	%f12, %f1, %f9  #893 pc 6468
	fmul	%f11, %f12, %f11  #893 pc 6472
	fadd	%f5, %f5, %f11  #893 pc 6476
	fmul	%f0, %f0, %f5  #893 pc 6480
	addi	%x24, %x0, 4  #pc 6484
	add	%x24, %x24, %x5  #893 pc 6488
	fsw	%f0, 0(%x24) #893 pc 6492
	fmv	%f0, l.6476  #0 pc 6496
	fmul	%f3, %f3, %f4  #894 pc 6500
	fmul	%f2, %f3, %f2  #894 pc 6504
	fmul	%f3, %f7, %f10  #894 pc 6508
	fmul	%f3, %f3, %f6  #894 pc 6512
	fadd	%f2, %f2, %f3  #894 pc 6516
	fmul	%f1, %f1, %f9  #894 pc 6520
	fmul	%f1, %f1, %f8  #894 pc 6524
	fadd	%f1, %f2, %f1  #894 pc 6528
	fmul	%f0, %f0, %f1  #894 pc 6532
	addi	%x24, %x0, 8  #pc 6536
	add	%x24, %x24, %x5  #894 pc 6540
	fsw	%f0, 0(%x24) #894 pc 6544
	ret #pc 6548
	nop #pc 6552
read_nth_object.2762:  #pc 6556
	addi	%x24, %x0, 4  #pc 6556
	add	%x24, %x24, %x22  #0 pc 6560
	lw	%x6, 0(%x24)  #0 pc 6564
	sw	%x6, 0(%x2)  #901 pc 6568
	sw	%x5, 4(%x2)  #901 pc 6572
	addi	%x5, %x0, 0  #0 pc 6576
	sw	%x1, 12(%x2)  #901 pc 6580
	addi	%x2, %x2, 16  #901 pc 6584
	jal	%x1, read_int.2580  #901 pc 6588
	addi	%x2, %x2, -16  #901 pc 6592
	lw	%x1, 12(%x2) #901 pc 6596
	addi	%x24, %x0, -1  #pc 6600
	beq	%x5, %x24, 12  #902 pc 6604
	j	be_else.9236 #pc 6608
	nop #pc 6612
	addi	%x5, %x0, 0  #0 pc 6616
	ret #pc 6620
	nop #pc 6624
be_else.9236: #pc 6624
	sw	%x5, 8(%x2)  #904 pc 6628
	addi	%x5, %x0, 0  #0 pc 6632
	sw	%x1, 12(%x2)  #904 pc 6636
	addi	%x2, %x2, 16  #904 pc 6640
	jal	%x1, read_int.2580  #904 pc 6644
	addi	%x2, %x2, -16  #904 pc 6648
	lw	%x1, 12(%x2) #904 pc 6652
	sw	%x5, 12(%x2)  #905 pc 6656
	addi	%x5, %x0, 0  #0 pc 6660
	sw	%x1, 20(%x2)  #905 pc 6664
	addi	%x2, %x2, 24  #905 pc 6668
	jal	%x1, read_int.2580  #905 pc 6672
	addi	%x2, %x2, -24  #905 pc 6676
	lw	%x1, 20(%x2) #905 pc 6680
	sw	%x5, 16(%x2)  #906 pc 6684
	addi	%x5, %x0, 0  #0 pc 6688
	sw	%x1, 20(%x2)  #906 pc 6692
	addi	%x2, %x2, 24  #906 pc 6696
	jal	%x1, read_int.2580  #906 pc 6700
	addi	%x2, %x2, -24  #906 pc 6704
	lw	%x1, 20(%x2) #906 pc 6708
	addi	%x6, %x0, 3  #0 pc 6712
	fmv	%f0, l.6293  #0 pc 6716
	sw	%x5, 20(%x2)  #908 pc 6720
	addi	%x5, %x6, 0  #0 pc 6724
	sw	%x1, 28(%x2)  #908 pc 6728
	addi	%x2, %x2, 32  #908 pc 6732
	jal	%x1, create_float_array.2600  #908 pc 6736
	addi	%x2, %x2, -32  #908 pc 6740
	lw	%x1, 28(%x2) #908 pc 6744
	sw	%x5, 24(%x2)  #909 pc 6748
	addi	%x5, %x0, 0  #0 pc 6752
	sw	%x1, 28(%x2)  #909 pc 6756
	addi	%x2, %x2, 32  #909 pc 6760
	jal	%x1, read_float.2587  #909 pc 6764
	addi	%x2, %x2, -32  #909 pc 6768
	lw	%x1, 28(%x2) #909 pc 6772
	lw	%x5, 24(%x2)  #909 pc 6776
	add	%x24, %x0, %x5  #909 pc 6780
	fsw	%f0, 0(%x24) #909 pc 6784
	addi	%x5, %x0, 0  #0 pc 6788
	sw	%x1, 28(%x2)  #910 pc 6792
	addi	%x2, %x2, 32  #910 pc 6796
	jal	%x1, read_float.2587  #910 pc 6800
	addi	%x2, %x2, -32  #910 pc 6804
	lw	%x1, 28(%x2) #910 pc 6808
	lw	%x5, 24(%x2)  #910 pc 6812
	addi	%x24, %x0, 4  #pc 6816
	add	%x24, %x24, %x5  #910 pc 6820
	fsw	%f0, 0(%x24) #910 pc 6824
	addi	%x5, %x0, 0  #0 pc 6828
	sw	%x1, 28(%x2)  #911 pc 6832
	addi	%x2, %x2, 32  #911 pc 6836
	jal	%x1, read_float.2587  #911 pc 6840
	addi	%x2, %x2, -32  #911 pc 6844
	lw	%x1, 28(%x2) #911 pc 6848
	lw	%x5, 24(%x2)  #911 pc 6852
	addi	%x24, %x0, 8  #pc 6856
	add	%x24, %x24, %x5  #911 pc 6860
	fsw	%f0, 0(%x24) #911 pc 6864
	addi	%x6, %x0, 3  #0 pc 6868
	fmv	%f0, l.6293  #0 pc 6872
	addi	%x5, %x6, 0  #0 pc 6876
	sw	%x1, 28(%x2)  #913 pc 6880
	addi	%x2, %x2, 32  #913 pc 6884
	jal	%x1, create_float_array.2600  #913 pc 6888
	addi	%x2, %x2, -32  #913 pc 6892
	lw	%x1, 28(%x2) #913 pc 6896
	sw	%x5, 28(%x2)  #914 pc 6900
	addi	%x5, %x0, 0  #0 pc 6904
	sw	%x1, 36(%x2)  #914 pc 6908
	addi	%x2, %x2, 40  #914 pc 6912
	jal	%x1, read_float.2587  #914 pc 6916
	addi	%x2, %x2, -40  #914 pc 6920
	lw	%x1, 36(%x2) #914 pc 6924
	lw	%x5, 28(%x2)  #914 pc 6928
	add	%x24, %x0, %x5  #914 pc 6932
	fsw	%f0, 0(%x24) #914 pc 6936
	addi	%x5, %x0, 0  #0 pc 6940
	sw	%x1, 36(%x2)  #915 pc 6944
	addi	%x2, %x2, 40  #915 pc 6948
	jal	%x1, read_float.2587  #915 pc 6952
	addi	%x2, %x2, -40  #915 pc 6956
	lw	%x1, 36(%x2) #915 pc 6960
	lw	%x5, 28(%x2)  #915 pc 6964
	addi	%x24, %x0, 4  #pc 6968
	add	%x24, %x24, %x5  #915 pc 6972
	fsw	%f0, 0(%x24) #915 pc 6976
	addi	%x5, %x0, 0  #0 pc 6980
	sw	%x1, 36(%x2)  #916 pc 6984
	addi	%x2, %x2, 40  #916 pc 6988
	jal	%x1, read_float.2587  #916 pc 6992
	addi	%x2, %x2, -40  #916 pc 6996
	lw	%x1, 36(%x2) #916 pc 7000
	lw	%x5, 28(%x2)  #916 pc 7004
	addi	%x24, %x0, 8  #pc 7008
	add	%x24, %x24, %x5  #916 pc 7012
	fsw	%f0, 0(%x24) #916 pc 7016
	addi	%x5, %x0, 0  #0 pc 7020
	sw	%x1, 36(%x2)  #918 pc 7024
	addi	%x2, %x2, 40  #918 pc 7028
	jal	%x1, read_float.2587  #918 pc 7032
	addi	%x2, %x2, -40  #918 pc 7036
	lw	%x1, 36(%x2) #918 pc 7040
	sw	%x1, 36(%x2)  #918 pc 7044
	addi	%x2, %x2, 40  #918 pc 7048
	jal	%x1, fisneg.2532  #918 pc 7052
	addi	%x2, %x2, -40  #918 pc 7056
	lw	%x1, 36(%x2) #918 pc 7060
	addi	%x6, %x0, 2  #0 pc 7064
	fmv	%f0, l.6293  #0 pc 7068
	sw	%x5, 32(%x2)  #920 pc 7072
	addi	%x5, %x6, 0  #0 pc 7076
	sw	%x1, 36(%x2)  #920 pc 7080
	addi	%x2, %x2, 40  #920 pc 7084
	jal	%x1, create_float_array.2600  #920 pc 7088
	addi	%x2, %x2, -40  #920 pc 7092
	lw	%x1, 36(%x2) #920 pc 7096
	sw	%x5, 36(%x2)  #921 pc 7100
	addi	%x5, %x0, 0  #0 pc 7104
	sw	%x1, 44(%x2)  #921 pc 7108
	addi	%x2, %x2, 48  #921 pc 7112
	jal	%x1, read_float.2587  #921 pc 7116
	addi	%x2, %x2, -48  #921 pc 7120
	lw	%x1, 44(%x2) #921 pc 7124
	lw	%x5, 36(%x2)  #921 pc 7128
	add	%x24, %x0, %x5  #921 pc 7132
	fsw	%f0, 0(%x24) #921 pc 7136
	addi	%x5, %x0, 0  #0 pc 7140
	sw	%x1, 44(%x2)  #922 pc 7144
	addi	%x2, %x2, 48  #922 pc 7148
	jal	%x1, read_float.2587  #922 pc 7152
	addi	%x2, %x2, -48  #922 pc 7156
	lw	%x1, 44(%x2) #922 pc 7160
	lw	%x5, 36(%x2)  #922 pc 7164
	addi	%x24, %x0, 4  #pc 7168
	add	%x24, %x24, %x5  #922 pc 7172
	fsw	%f0, 0(%x24) #922 pc 7176
	addi	%x6, %x0, 3  #0 pc 7180
	fmv	%f0, l.6293  #0 pc 7184
	addi	%x5, %x6, 0  #0 pc 7188
	sw	%x1, 44(%x2)  #924 pc 7192
	addi	%x2, %x2, 48  #924 pc 7196
	jal	%x1, create_float_array.2600  #924 pc 7200
	addi	%x2, %x2, -48  #924 pc 7204
	lw	%x1, 44(%x2) #924 pc 7208
	sw	%x5, 40(%x2)  #925 pc 7212
	addi	%x5, %x0, 0  #0 pc 7216
	sw	%x1, 44(%x2)  #925 pc 7220
	addi	%x2, %x2, 48  #925 pc 7224
	jal	%x1, read_float.2587  #925 pc 7228
	addi	%x2, %x2, -48  #925 pc 7232
	lw	%x1, 44(%x2) #925 pc 7236
	lw	%x5, 40(%x2)  #925 pc 7240
	add	%x24, %x0, %x5  #925 pc 7244
	fsw	%f0, 0(%x24) #925 pc 7248
	addi	%x5, %x0, 0  #0 pc 7252
	sw	%x1, 44(%x2)  #926 pc 7256
	addi	%x2, %x2, 48  #926 pc 7260
	jal	%x1, read_float.2587  #926 pc 7264
	addi	%x2, %x2, -48  #926 pc 7268
	lw	%x1, 44(%x2) #926 pc 7272
	lw	%x5, 40(%x2)  #926 pc 7276
	addi	%x24, %x0, 4  #pc 7280
	add	%x24, %x24, %x5  #926 pc 7284
	fsw	%f0, 0(%x24) #926 pc 7288
	addi	%x5, %x0, 0  #0 pc 7292
	sw	%x1, 44(%x2)  #927 pc 7296
	addi	%x2, %x2, 48  #927 pc 7300
	jal	%x1, read_float.2587  #927 pc 7304
	addi	%x2, %x2, -48  #927 pc 7308
	lw	%x1, 44(%x2) #927 pc 7312
	lw	%x5, 40(%x2)  #927 pc 7316
	addi	%x24, %x0, 8  #pc 7320
	add	%x24, %x24, %x5  #927 pc 7324
	fsw	%f0, 0(%x24) #927 pc 7328
	addi	%x6, %x0, 3  #0 pc 7332
	fmv	%f0, l.6293  #0 pc 7336
	addi	%x5, %x6, 0  #0 pc 7340
	sw	%x1, 44(%x2)  #929 pc 7344
	addi	%x2, %x2, 48  #929 pc 7348
	jal	%x1, create_float_array.2600  #929 pc 7352
	addi	%x2, %x2, -48  #929 pc 7356
	lw	%x1, 44(%x2) #929 pc 7360
	lw	%x6, 20(%x2)  #930 pc 7364
	beq	%x6, %x0, 12  #930 pc 7368
	j	be_else.9237 #pc 7372
	nop #pc 7376
	j	be_cont.9238 #pc 7380
	nop #pc 7384
be_else.9237: #pc 7384
	sw	%x5, 44(%x2)  #932 pc 7388
	addi	%x5, %x0, 0  #0 pc 7392
	sw	%x1, 52(%x2)  #932 pc 7396
	addi	%x2, %x2, 56  #932 pc 7400
	jal	%x1, read_float.2587  #932 pc 7404
	addi	%x2, %x2, -56  #932 pc 7408
	lw	%x1, 52(%x2) #932 pc 7412
	sw	%x1, 52(%x2)  #932 pc 7416
	addi	%x2, %x2, 56  #932 pc 7420
	jal	%x1, rad.2753  #932 pc 7424
	addi	%x2, %x2, -56  #932 pc 7428
	lw	%x1, 52(%x2) #932 pc 7432
	lw	%x5, 44(%x2)  #932 pc 7436
	add	%x24, %x0, %x5  #932 pc 7440
	fsw	%f0, 0(%x24) #932 pc 7444
	addi	%x5, %x0, 0  #0 pc 7448
	sw	%x1, 52(%x2)  #933 pc 7452
	addi	%x2, %x2, 56  #933 pc 7456
	jal	%x1, read_float.2587  #933 pc 7460
	addi	%x2, %x2, -56  #933 pc 7464
	lw	%x1, 52(%x2) #933 pc 7468
	sw	%x1, 52(%x2)  #933 pc 7472
	addi	%x2, %x2, 56  #933 pc 7476
	jal	%x1, rad.2753  #933 pc 7480
	addi	%x2, %x2, -56  #933 pc 7484
	lw	%x1, 52(%x2) #933 pc 7488
	lw	%x5, 44(%x2)  #933 pc 7492
	addi	%x24, %x0, 4  #pc 7496
	add	%x24, %x24, %x5  #933 pc 7500
	fsw	%f0, 0(%x24) #933 pc 7504
	addi	%x5, %x0, 0  #0 pc 7508
	sw	%x1, 52(%x2)  #934 pc 7512
	addi	%x2, %x2, 56  #934 pc 7516
	jal	%x1, read_float.2587  #934 pc 7520
	addi	%x2, %x2, -56  #934 pc 7524
	lw	%x1, 52(%x2) #934 pc 7528
	sw	%x1, 52(%x2)  #934 pc 7532
	addi	%x2, %x2, 56  #934 pc 7536
	jal	%x1, rad.2753  #934 pc 7540
	addi	%x2, %x2, -56  #934 pc 7544
	lw	%x1, 52(%x2) #934 pc 7548
	lw	%x5, 44(%x2)  #934 pc 7552
	addi	%x24, %x0, 8  #pc 7556
	add	%x24, %x24, %x5  #934 pc 7560
	fsw	%f0, 0(%x24) #934 pc 7564
be_cont.9238: #pc 7564
	lw	%x6, 12(%x2)  #941 pc 7568
	addi	%x24, %x0, 2  #pc 7572
	beq	%x6, %x24, 12  #941 pc 7576
	j	be_else.9239 #pc 7580
	nop #pc 7584
	addi	%x7, %x0, 1  #0 pc 7588
	j	be_cont.9240 #pc 7592
	nop #pc 7596
be_else.9239: #pc 7596
	lw	%x7, 32(%x2)  #941 pc 7600
be_cont.9240: #pc 7600
	addi	%x9, %x0, 4  #0 pc 7604
	fmv	%f0, l.6293  #0 pc 7608
	sw	%x7, 48(%x2)  #942 pc 7612
	sw	%x5, 44(%x2)  #942 pc 7616
	addi	%x5, %x9, 0  #0 pc 7620
	sw	%x1, 52(%x2)  #942 pc 7624
	addi	%x2, %x2, 56  #942 pc 7628
	jal	%x1, create_float_array.2600  #942 pc 7632
	addi	%x2, %x2, -56  #942 pc 7636
	lw	%x1, 52(%x2) #942 pc 7640
	addi	%x6, %x3, 0  #945 pc 7644
	addi	%x3, %x3, 48  #945 pc 7648
	addi	%x24, %x0, 40  #pc 7652
	add	%x24, %x24, %x6  #945 pc 7656
	sw	%x5, 0(%x24)  #945 pc 7660
	lw	%x5, 44(%x2)  #945 pc 7664
	addi	%x24, %x0, 36  #pc 7668
	add	%x24, %x24, %x6  #945 pc 7672
	sw	%x5, 0(%x24)  #945 pc 7676
	lw	%x7, 40(%x2)  #945 pc 7680
	addi	%x24, %x0, 32  #pc 7684
	add	%x24, %x24, %x6  #945 pc 7688
	sw	%x7, 0(%x24)  #945 pc 7692
	lw	%x7, 36(%x2)  #945 pc 7696
	addi	%x24, %x0, 28  #pc 7700
	add	%x24, %x24, %x6  #945 pc 7704
	sw	%x7, 0(%x24)  #945 pc 7708
	lw	%x7, 48(%x2)  #945 pc 7712
	addi	%x24, %x0, 24  #pc 7716
	add	%x24, %x24, %x6  #945 pc 7720
	sw	%x7, 0(%x24)  #945 pc 7724
	lw	%x7, 28(%x2)  #945 pc 7728
	addi	%x24, %x0, 20  #pc 7732
	add	%x24, %x24, %x6  #945 pc 7736
	sw	%x7, 0(%x24)  #945 pc 7740
	lw	%x7, 24(%x2)  #945 pc 7744
	addi	%x24, %x0, 16  #pc 7748
	add	%x24, %x24, %x6  #945 pc 7752
	sw	%x7, 0(%x24)  #945 pc 7756
	lw	%x9, 20(%x2)  #945 pc 7760
	addi	%x24, %x0, 12  #pc 7764
	add	%x24, %x24, %x6  #945 pc 7768
	sw	%x9, 0(%x24)  #945 pc 7772
	lw	%x10, 16(%x2)  #945 pc 7776
	addi	%x24, %x0, 8  #pc 7780
	add	%x24, %x24, %x6  #945 pc 7784
	sw	%x10, 0(%x24)  #945 pc 7788
	lw	%x10, 12(%x2)  #945 pc 7792
	addi	%x24, %x0, 4  #pc 7796
	add	%x24, %x24, %x6  #945 pc 7800
	sw	%x10, 0(%x24)  #945 pc 7804
	lw	%x11, 8(%x2)  #945 pc 7808
	add	%x24, %x0, %x6  #945 pc 7812
	sw	%x11, 0(%x24)  #945 pc 7816
	lw	%x11, 4(%x2)  #953 pc 7820
	slli	%x11, %x11, 2  #953 pc 7824
	lw	%x12, 0(%x2)  #953 pc 7828
	add	%x24, %x11, %x12  #953 pc 7832
	sw	%x6, 0(%x24)  #953 pc 7836
	addi	%x24, %x0, 3  #pc 7840
	beq	%x10, %x24, 12  #955 pc 7844
	j	be_else.9241 #pc 7848
	nop #pc 7852
	add	%x24, %x0, %x7  #958 pc 7856
	flw	%f0, 0(%x24)  #958 pc 7860
	fsw	%f0, 56(%x2)  #959 pc 7864
	sw	%x1, 68(%x2)  #959 pc 7868
	addi	%x2, %x2, 72  #959 pc 7872
	jal	%x1, fiszero.2528  #959 pc 7876
	addi	%x2, %x2, -72  #959 pc 7880
	lw	%x1, 68(%x2) #959 pc 7884
	beq	%x5, %x0, 12  #959 pc 7888
	j	be_else.9244 #pc 7892
	nop #pc 7896
	flw	%f0, 56(%x2)  #959 pc 7900
	sw	%x1, 68(%x2)  #959 pc 7904
	addi	%x2, %x2, 72  #959 pc 7908
	jal	%x1, sgn.2636  #959 pc 7912
	addi	%x2, %x2, -72  #959 pc 7916
	lw	%x1, 68(%x2) #959 pc 7920
	flw	%f1, 56(%x2)  #959 pc 7924
	fsw	%f0, 64(%x2)  #959 pc 7928
	fadd	%f0, %f1, %f30  #0 pc 7932
	sw	%x1, 76(%x2)  #959 pc 7936
	addi	%x2, %x2, 80  #959 pc 7940
	jal	%x1, fsqr.2536  #959 pc 7944
	addi	%x2, %x2, -80  #959 pc 7948
	lw	%x1, 76(%x2) #959 pc 7952
	flw	%f1, 64(%x2)  #959 pc 7956
	fdiv	%f0, %f1, %f0  #959 pc 7960
	j	be_cont.9245 #pc 7964
	nop #pc 7968
be_else.9244: #pc 7968
	fmv	%f0, l.6293  #0 pc 7972
be_cont.9245: #pc 7972
	lw	%x5, 24(%x2)  #959 pc 7976
	add	%x24, %x0, %x5  #959 pc 7980
	fsw	%f0, 0(%x24) #959 pc 7984
	addi	%x24, %x0, 4  #pc 7988
	add	%x24, %x24, %x5  #960 pc 7992
	flw	%f0, 0(%x24)  #960 pc 7996
	fsw	%f0, 72(%x2)  #961 pc 8000
	sw	%x1, 84(%x2)  #961 pc 8004
	addi	%x2, %x2, 88  #961 pc 8008
	jal	%x1, fiszero.2528  #961 pc 8012
	addi	%x2, %x2, -88  #961 pc 8016
	lw	%x1, 84(%x2) #961 pc 8020
	beq	%x5, %x0, 12  #961 pc 8024
	j	be_else.9246 #pc 8028
	nop #pc 8032
	flw	%f0, 72(%x2)  #961 pc 8036
	sw	%x1, 84(%x2)  #961 pc 8040
	addi	%x2, %x2, 88  #961 pc 8044
	jal	%x1, sgn.2636  #961 pc 8048
	addi	%x2, %x2, -88  #961 pc 8052
	lw	%x1, 84(%x2) #961 pc 8056
	flw	%f1, 72(%x2)  #961 pc 8060
	fsw	%f0, 80(%x2)  #961 pc 8064
	fadd	%f0, %f1, %f30  #0 pc 8068
	sw	%x1, 92(%x2)  #961 pc 8072
	addi	%x2, %x2, 96  #961 pc 8076
	jal	%x1, fsqr.2536  #961 pc 8080
	addi	%x2, %x2, -96  #961 pc 8084
	lw	%x1, 92(%x2) #961 pc 8088
	flw	%f1, 80(%x2)  #961 pc 8092
	fdiv	%f0, %f1, %f0  #961 pc 8096
	j	be_cont.9247 #pc 8100
	nop #pc 8104
be_else.9246: #pc 8104
	fmv	%f0, l.6293  #0 pc 8108
be_cont.9247: #pc 8108
	lw	%x5, 24(%x2)  #961 pc 8112
	addi	%x24, %x0, 4  #pc 8116
	add	%x24, %x24, %x5  #961 pc 8120
	fsw	%f0, 0(%x24) #961 pc 8124
	addi	%x24, %x0, 8  #pc 8128
	add	%x24, %x24, %x5  #962 pc 8132
	flw	%f0, 0(%x24)  #962 pc 8136
	fsw	%f0, 88(%x2)  #963 pc 8140
	sw	%x1, 100(%x2)  #963 pc 8144
	addi	%x2, %x2, 104  #963 pc 8148
	jal	%x1, fiszero.2528  #963 pc 8152
	addi	%x2, %x2, -104  #963 pc 8156
	lw	%x1, 100(%x2) #963 pc 8160
	beq	%x5, %x0, 12  #963 pc 8164
	j	be_else.9248 #pc 8168
	nop #pc 8172
	flw	%f0, 88(%x2)  #963 pc 8176
	sw	%x1, 100(%x2)  #963 pc 8180
	addi	%x2, %x2, 104  #963 pc 8184
	jal	%x1, sgn.2636  #963 pc 8188
	addi	%x2, %x2, -104  #963 pc 8192
	lw	%x1, 100(%x2) #963 pc 8196
	flw	%f1, 88(%x2)  #963 pc 8200
	fsw	%f0, 96(%x2)  #963 pc 8204
	fadd	%f0, %f1, %f30  #0 pc 8208
	sw	%x1, 108(%x2)  #963 pc 8212
	addi	%x2, %x2, 112  #963 pc 8216
	jal	%x1, fsqr.2536  #963 pc 8220
	addi	%x2, %x2, -112  #963 pc 8224
	lw	%x1, 108(%x2) #963 pc 8228
	flw	%f1, 96(%x2)  #963 pc 8232
	fdiv	%f0, %f1, %f0  #963 pc 8236
	j	be_cont.9249 #pc 8240
	nop #pc 8244
be_else.9248: #pc 8244
	fmv	%f0, l.6293  #0 pc 8248
be_cont.9249: #pc 8248
	lw	%x5, 24(%x2)  #963 pc 8252
	addi	%x24, %x0, 8  #pc 8256
	add	%x24, %x24, %x5  #963 pc 8260
	fsw	%f0, 0(%x24) #963 pc 8264
	j	be_cont.9242 #pc 8268
	nop #pc 8272
be_else.9241: #pc 8272
	addi	%x24, %x0, 2  #pc 8276
	beq	%x10, %x24, 12  #965 pc 8280
	j	be_else.9250 #pc 8284
	nop #pc 8288
	lw	%x6, 32(%x2)  #967 pc 8292
	beq	%x6, %x0, 12  #967 pc 8296
	j	be_else.9252 #pc 8300
	nop #pc 8304
	addi	%x6, %x0, 1  #0 pc 8308
	j	be_cont.9253 #pc 8312
	nop #pc 8316
be_else.9252: #pc 8316
	addi	%x6, %x0, 0  #0 pc 8320
be_cont.9253: #pc 8320
	addi	%x5, %x7, 0  #0 pc 8324
	sw	%x1, 108(%x2)  #967 pc 8328
	addi	%x2, %x2, 112  #967 pc 8332
	jal	%x1, vecunit_sgn.2657  #967 pc 8336
	addi	%x2, %x2, -112  #967 pc 8340
	lw	%x1, 108(%x2) #967 pc 8344
	j	be_cont.9251 #pc 8348
	nop #pc 8352
be_else.9250: #pc 8352
be_cont.9251: #pc 8352
be_cont.9242: #pc 8352
	lw	%x5, 20(%x2)  #971 pc 8356
	beq	%x5, %x0, 12  #971 pc 8360
	j	be_else.9254 #pc 8364
	nop #pc 8368
	j	be_cont.9255 #pc 8372
	nop #pc 8376
be_else.9254: #pc 8376
	lw	%x5, 24(%x2)  #972 pc 8380
	lw	%x6, 44(%x2)  #972 pc 8384
	sw	%x1, 108(%x2)  #972 pc 8388
	addi	%x2, %x2, 112  #972 pc 8392
	jal	%x1, rotate_quadratic_matrix.2759  #972 pc 8396
	addi	%x2, %x2, -112  #972 pc 8400
	lw	%x1, 108(%x2) #972 pc 8404
be_cont.9255: #pc 8404
	addi	%x5, %x0, 1  #0 pc 8408
	ret #pc 8412
	nop #pc 8416
read_object.2764:  #pc 8420
	addi	%x24, %x0, 8  #pc 8420
	add	%x24, %x24, %x22  #0 pc 8424
	lw	%x6, 0(%x24)  #0 pc 8428
	addi	%x24, %x0, 4  #pc 8432
	add	%x24, %x24, %x22  #0 pc 8436
	lw	%x7, 0(%x24)  #0 pc 8440
	addi	%x24, %x0, 60  #pc 8444
	bge	%x5, %x24, 12  #983 pc 8448
	j	bge_else.9256 #pc 8452
	nop #pc 8456
	ret #pc 8460
	nop #pc 8464
bge_else.9256: #pc 8464
	sw	%x22, 0(%x2)  #984 pc 8468
	sw	%x7, 4(%x2)  #984 pc 8472
	sw	%x5, 8(%x2)  #984 pc 8476
	addi	%x22, %x6, 0  #0 pc 8480
	sw	%x1, 12(%x2)  #984 pc 8484
	lw	%x23, 0(%x22)  #984 pc 8488
	addi	%x2, %x2, 16  #984 pc 8492
	jalr	%x1, %x23, 0  #984 pc 8496
	addi	%x2, %x2, -16  #984 pc 8500
	lw	%x1, 12(%x2)  #984 pc 8504
	beq	%x5, %x0, 12  #984 pc 8508
	j	be_else.9258 #pc 8512
	nop #pc 8516
	lw	%x5, 4(%x2)  #987 pc 8520
	lw	%x6, 8(%x2)  #987 pc 8524
	add	%x24, %x0, %x5  #987 pc 8528
	sw	%x6, 0(%x24)  #987 pc 8532
	ret #pc 8536
	nop #pc 8540
be_else.9258: #pc 8540
	lw	%x5, 8(%x2)  #985 pc 8544
	addi	%x5, %x5, 1  #985 pc 8548
	lw	%x22, 0(%x2)  #985 pc 8552
	lw	%x23, 0(%x22)  #985 pc 8556
	jalr	%x0, %x23, 0  #985 pc 8560
	nop #pc 8564
read_all_object.2766:  #pc 8568
	addi	%x24, %x0, 4  #pc 8568
	add	%x24, %x24, %x22  #0 pc 8572
	lw	%x22, 0(%x24)  #0 pc 8576
	addi	%x5, %x0, 0  #0 pc 8580
	lw	%x23, 0(%x22)  #992 pc 8584
	jalr	%x0, %x23, 0  #992 pc 8588
	nop #pc 8592
read_net_item.2768:  #pc 8596
	sw	%x5, 0(%x2)  #999 pc 8596
	addi	%x5, %x0, 0  #0 pc 8600
	sw	%x1, 4(%x2)  #999 pc 8604
	addi	%x2, %x2, 8  #999 pc 8608
	jal	%x1, read_int.2580  #999 pc 8612
	addi	%x2, %x2, -8  #999 pc 8616
	lw	%x1, 4(%x2) #999 pc 8620
	addi	%x24, %x0, -1  #pc 8624
	beq	%x5, %x24, 12  #1000 pc 8628
	j	be_else.9260 #pc 8632
	nop #pc 8636
	lw	%x5, 0(%x2)  #1000 pc 8640
	addi	%x5, %x5, 1  #1000 pc 8644
	addi	%x6, %x0, -1  #0 pc 8648
	j	create_array.2593  #1000 pc 8652
	nop #pc 8656
be_else.9260: #pc 8656
	lw	%x6, 0(%x2)  #1002 pc 8660
	addi	%x7, %x6, 1  #1002 pc 8664
	sw	%x5, 4(%x2)  #1002 pc 8668
	addi	%x5, %x7, 0  #0 pc 8672
	sw	%x1, 12(%x2)  #1002 pc 8676
	addi	%x2, %x2, 16  #1002 pc 8680
	jal	%x1, read_net_item.2768  #1002 pc 8684
	addi	%x2, %x2, -16  #1002 pc 8688
	lw	%x1, 12(%x2) #1002 pc 8692
	lw	%x6, 0(%x2)  #1003 pc 8696
	slli	%x6, %x6, 2  #1003 pc 8700
	lw	%x7, 4(%x2)  #1003 pc 8704
	add	%x24, %x6, %x5  #1003 pc 8708
	sw	%x7, 0(%x24)  #1003 pc 8712
	ret #pc 8716
	nop #pc 8720
read_or_network.2770:  #pc 8724
	addi	%x6, %x0, 0  #0 pc 8724
	sw	%x5, 0(%x2)  #1007 pc 8728
	addi	%x5, %x6, 0  #0 pc 8732
	sw	%x1, 4(%x2)  #1007 pc 8736
	addi	%x2, %x2, 8  #1007 pc 8740
	jal	%x1, read_net_item.2768  #1007 pc 8744
	addi	%x2, %x2, -8  #1007 pc 8748
	lw	%x1, 4(%x2) #1007 pc 8752
	addi	%x6, %x5, 0  #1007 pc 8756
	add	%x24, %x0, %x6  #1008 pc 8760
	lw	%x5, 0(%x24)  #1008 pc 8764
	addi	%x24, %x0, -1  #pc 8768
	beq	%x5, %x24, 12  #1008 pc 8772
	j	be_else.9261 #pc 8776
	nop #pc 8780
	lw	%x5, 0(%x2)  #1009 pc 8784
	addi	%x5, %x5, 1  #1009 pc 8788
	j	create_array.2593  #1009 pc 8792
	nop #pc 8796
be_else.9261: #pc 8796
	lw	%x5, 0(%x2)  #1011 pc 8800
	addi	%x7, %x5, 1  #1011 pc 8804
	sw	%x6, 4(%x2)  #1011 pc 8808
	addi	%x5, %x7, 0  #0 pc 8812
	sw	%x1, 12(%x2)  #1011 pc 8816
	addi	%x2, %x2, 16  #1011 pc 8820
	jal	%x1, read_or_network.2770  #1011 pc 8824
	addi	%x2, %x2, -16  #1011 pc 8828
	lw	%x1, 12(%x2) #1011 pc 8832
	lw	%x6, 0(%x2)  #1012 pc 8836
	slli	%x6, %x6, 2  #1012 pc 8840
	lw	%x7, 4(%x2)  #1012 pc 8844
	add	%x24, %x6, %x5  #1012 pc 8848
	sw	%x7, 0(%x24)  #1012 pc 8852
	ret #pc 8856
	nop #pc 8860
read_and_network.2772:  #pc 8864
	addi	%x24, %x0, 4  #pc 8864
	add	%x24, %x24, %x22  #0 pc 8868
	lw	%x6, 0(%x24)  #0 pc 8872
	addi	%x7, %x0, 0  #0 pc 8876
	sw	%x22, 0(%x2)  #1016 pc 8880
	sw	%x6, 4(%x2)  #1016 pc 8884
	sw	%x5, 8(%x2)  #1016 pc 8888
	addi	%x5, %x7, 0  #0 pc 8892
	sw	%x1, 12(%x2)  #1016 pc 8896
	addi	%x2, %x2, 16  #1016 pc 8900
	jal	%x1, read_net_item.2768  #1016 pc 8904
	addi	%x2, %x2, -16  #1016 pc 8908
	lw	%x1, 12(%x2) #1016 pc 8912
	add	%x24, %x0, %x5  #1017 pc 8916
	lw	%x6, 0(%x24)  #1017 pc 8920
	addi	%x24, %x0, -1  #pc 8924
	beq	%x6, %x24, 12  #1017 pc 8928
	j	be_else.9262 #pc 8932
	nop #pc 8936
	ret #pc 8940
	nop #pc 8944
be_else.9262: #pc 8944
	lw	%x6, 8(%x2)  #1019 pc 8948
	slli	%x7, %x6, 2  #1019 pc 8952
	lw	%x9, 4(%x2)  #1019 pc 8956
	add	%x24, %x7, %x9  #1019 pc 8960
	sw	%x5, 0(%x24)  #1019 pc 8964
	addi	%x5, %x6, 1  #1020 pc 8968
	lw	%x22, 0(%x2)  #1020 pc 8972
	lw	%x23, 0(%x22)  #1020 pc 8976
	jalr	%x0, %x23, 0  #1020 pc 8980
	nop #pc 8984
read_parameter.2774:  #pc 8988
	addi	%x24, %x0, 20  #pc 8988
	add	%x24, %x24, %x22  #0 pc 8992
	lw	%x5, 0(%x24)  #0 pc 8996
	addi	%x24, %x0, 16  #pc 9000
	add	%x24, %x24, %x22  #0 pc 9004
	lw	%x6, 0(%x24)  #0 pc 9008
	addi	%x24, %x0, 12  #pc 9012
	add	%x24, %x24, %x22  #0 pc 9016
	lw	%x7, 0(%x24)  #0 pc 9020
	addi	%x24, %x0, 8  #pc 9024
	add	%x24, %x24, %x22  #0 pc 9028
	lw	%x9, 0(%x24)  #0 pc 9032
	addi	%x24, %x0, 4  #pc 9036
	add	%x24, %x24, %x22  #0 pc 9040
	lw	%x10, 0(%x24)  #0 pc 9044
	sw	%x10, 0(%x2)  #1026 pc 9048
	sw	%x7, 4(%x2)  #1026 pc 9052
	sw	%x9, 8(%x2)  #1026 pc 9056
	sw	%x6, 12(%x2)  #1026 pc 9060
	addi	%x22, %x5, 0  #0 pc 9064
	addi	%x5, %x0, 0  #0 pc 9068
	sw	%x1, 20(%x2)  #1026 pc 9072
	lw	%x23, 0(%x22)  #1026 pc 9076
	addi	%x2, %x2, 24  #1026 pc 9080
	jalr	%x1, %x23, 0  #1026 pc 9084
	addi	%x2, %x2, -24  #1026 pc 9088
	lw	%x1, 20(%x2)  #1026 pc 9092
	lw	%x22, 12(%x2)  #1027 pc 9096
	addi	%x5, %x0, 0  #0 pc 9100
	sw	%x1, 20(%x2)  #1027 pc 9104
	lw	%x23, 0(%x22)  #1027 pc 9108
	addi	%x2, %x2, 24  #1027 pc 9112
	jalr	%x1, %x23, 0  #1027 pc 9116
	addi	%x2, %x2, -24  #1027 pc 9120
	lw	%x1, 20(%x2)  #1027 pc 9124
	lw	%x22, 8(%x2)  #1028 pc 9128
	addi	%x5, %x0, 0  #0 pc 9132
	sw	%x1, 20(%x2)  #1028 pc 9136
	lw	%x23, 0(%x22)  #1028 pc 9140
	addi	%x2, %x2, 24  #1028 pc 9144
	jalr	%x1, %x23, 0  #1028 pc 9148
	addi	%x2, %x2, -24  #1028 pc 9152
	lw	%x1, 20(%x2)  #1028 pc 9156
	addi	%x5, %x0, 0  #0 pc 9160
	lw	%x22, 4(%x2)  #1029 pc 9164
	sw	%x1, 20(%x2)  #1029 pc 9168
	lw	%x23, 0(%x22)  #1029 pc 9172
	addi	%x2, %x2, 24  #1029 pc 9176
	jalr	%x1, %x23, 0  #1029 pc 9180
	addi	%x2, %x2, -24  #1029 pc 9184
	lw	%x1, 20(%x2)  #1029 pc 9188
	addi	%x5, %x0, 0  #0 pc 9192
	sw	%x1, 20(%x2)  #1030 pc 9196
	addi	%x2, %x2, 24  #1030 pc 9200
	jal	%x1, read_or_network.2770  #1030 pc 9204
	addi	%x2, %x2, -24  #1030 pc 9208
	lw	%x1, 20(%x2) #1030 pc 9212
	lw	%x6, 0(%x2)  #1030 pc 9216
	add	%x24, %x0, %x6  #1030 pc 9220
	sw	%x5, 0(%x24)  #1030 pc 9224
	ret #pc 9228
	nop #pc 9232
solver_rect_surface.2776:  #pc 9236
	addi	%x24, %x0, 4  #pc 9236
	add	%x24, %x24, %x22  #0 pc 9240
	lw	%x11, 0(%x24)  #0 pc 9244
	slli	%x12, %x7, 2  #1050 pc 9248
	add	%x24, %x12, %x6  #1050 pc 9252
	flw	%f3, 0(%x24)  #1050 pc 9256
	sw	%x11, 0(%x2)  #1050 pc 9260
	fsw	%f2, 8(%x2)  #1050 pc 9264
	sw	%x10, 16(%x2)  #1050 pc 9268
	fsw	%f1, 24(%x2)  #1050 pc 9272
	sw	%x9, 32(%x2)  #1050 pc 9276
	fsw	%f0, 40(%x2)  #1050 pc 9280
	sw	%x6, 48(%x2)  #1050 pc 9284
	sw	%x7, 52(%x2)  #1050 pc 9288
	sw	%x5, 56(%x2)  #1050 pc 9292
	fadd	%f0, %f3, %f30  #0 pc 9296
	sw	%x1, 60(%x2)  #1050 pc 9300
	addi	%x2, %x2, 64  #1050 pc 9304
	jal	%x1, fiszero.2528  #1050 pc 9308
	addi	%x2, %x2, -64  #1050 pc 9312
	lw	%x1, 60(%x2) #1050 pc 9316
	beq	%x5, %x0, 12  #1050 pc 9320
	j	be_else.9268 #pc 9324
	nop #pc 9328
	lw	%x5, 56(%x2)  #1051 pc 9332
	sw	%x1, 60(%x2)  #1051 pc 9336
	addi	%x2, %x2, 64  #1051 pc 9340
	jal	%x1, o_param_abc.2698  #1051 pc 9344
	addi	%x2, %x2, -64  #1051 pc 9348
	lw	%x1, 60(%x2) #1051 pc 9352
	lw	%x6, 56(%x2)  #1052 pc 9356
	sw	%x5, 60(%x2)  #1052 pc 9360
	addi	%x5, %x6, 0  #0 pc 9364
	sw	%x1, 68(%x2)  #1052 pc 9368
	addi	%x2, %x2, 72  #1052 pc 9372
	jal	%x1, o_isinvert.2688  #1052 pc 9376
	addi	%x2, %x2, -72  #1052 pc 9380
	lw	%x1, 68(%x2) #1052 pc 9384
	lw	%x6, 52(%x2)  #1052 pc 9388
	slli	%x7, %x6, 2  #1052 pc 9392
	lw	%x9, 48(%x2)  #1052 pc 9396
	add	%x24, %x7, %x9  #1052 pc 9400
	flw	%f0, 0(%x24)  #1052 pc 9404
	sw	%x5, 64(%x2)  #1052 pc 9408
	sw	%x1, 68(%x2)  #1052 pc 9412
	addi	%x2, %x2, 72  #1052 pc 9416
	jal	%x1, fisneg.2532  #1052 pc 9420
	addi	%x2, %x2, -72  #1052 pc 9424
	lw	%x1, 68(%x2) #1052 pc 9428
	addi	%x6, %x5, 0  #1052 pc 9432
	lw	%x5, 64(%x2)  #1052 pc 9436
	sw	%x1, 68(%x2)  #1052 pc 9440
	addi	%x2, %x2, 72  #1052 pc 9444
	jal	%x1, xor.2633  #1052 pc 9448
	addi	%x2, %x2, -72  #1052 pc 9452
	lw	%x1, 68(%x2) #1052 pc 9456
	lw	%x6, 52(%x2)  #1052 pc 9460
	slli	%x7, %x6, 2  #1052 pc 9464
	lw	%x9, 60(%x2)  #1052 pc 9468
	add	%x24, %x7, %x9  #1052 pc 9472
	flw	%f0, 0(%x24)  #1052 pc 9476
	sw	%x1, 68(%x2)  #1052 pc 9480
	addi	%x2, %x2, 72  #1052 pc 9484
	jal	%x1, fneg_cond.2638  #1052 pc 9488
	addi	%x2, %x2, -72  #1052 pc 9492
	lw	%x1, 68(%x2) #1052 pc 9496
	flw	%f1, 40(%x2)  #1054 pc 9500
	fsub	%f0, %f0, %f1  #1054 pc 9504
	lw	%x5, 52(%x2)  #1054 pc 9508
	slli	%x5, %x5, 2  #1054 pc 9512
	lw	%x6, 48(%x2)  #1054 pc 9516
	add	%x24, %x5, %x6  #1054 pc 9520
	flw	%f1, 0(%x24)  #1054 pc 9524
	fdiv	%f0, %f0, %f1  #1054 pc 9528
	lw	%x5, 32(%x2)  #1055 pc 9532
	slli	%x7, %x5, 2  #1055 pc 9536
	add	%x24, %x7, %x6  #1055 pc 9540
	flw	%f1, 0(%x24)  #1055 pc 9544
	fmul	%f1, %f0, %f1  #1055 pc 9548
	flw	%f2, 24(%x2)  #1055 pc 9552
	fadd	%f1, %f1, %f2  #1055 pc 9556
	fabs	%f1, %f1  #1055 pc 9560
	slli	%x5, %x5, 2  #1055 pc 9564
	lw	%x7, 60(%x2)  #1055 pc 9568
	add	%x24, %x5, %x7  #1055 pc 9572
	flw	%f2, 0(%x24)  #1055 pc 9576
	fsw	%f0, 72(%x2)  #1055 pc 9580
	fadd	%f0, %f1, %f30  #0 pc 9584
	fadd	%f1, %f2, %f30  #0 pc 9588
	sw	%x1, 84(%x2)  #1055 pc 9592
	addi	%x2, %x2, 88  #1055 pc 9596
	jal	%x1, fless.2540  #1055 pc 9600
	addi	%x2, %x2, -88  #1055 pc 9604
	lw	%x1, 84(%x2) #1055 pc 9608
	beq	%x5, %x0, 12  #1055 pc 9612
	j	be_else.9270 #pc 9616
	nop #pc 9620
	addi	%x5, %x0, 0  #0 pc 9624
	ret #pc 9628
	nop #pc 9632
be_else.9270: #pc 9632
	lw	%x5, 16(%x2)  #1056 pc 9636
	slli	%x6, %x5, 2  #1056 pc 9640
	lw	%x7, 48(%x2)  #1056 pc 9644
	add	%x24, %x6, %x7  #1056 pc 9648
	flw	%f0, 0(%x24)  #1056 pc 9652
	flw	%f1, 72(%x2)  #1056 pc 9656
	fmul	%f0, %f1, %f0  #1056 pc 9660
	flw	%f2, 8(%x2)  #1056 pc 9664
	fadd	%f0, %f0, %f2  #1056 pc 9668
	fabs	%f0, %f0  #1056 pc 9672
	slli	%x5, %x5, 2  #1056 pc 9676
	lw	%x6, 60(%x2)  #1056 pc 9680
	add	%x24, %x5, %x6  #1056 pc 9684
	flw	%f2, 0(%x24)  #1056 pc 9688
	fadd	%f1, %f2, %f30  #0 pc 9692
	sw	%x1, 84(%x2)  #1056 pc 9696
	addi	%x2, %x2, 88  #1056 pc 9700
	jal	%x1, fless.2540  #1056 pc 9704
	addi	%x2, %x2, -88  #1056 pc 9708
	lw	%x1, 84(%x2) #1056 pc 9712
	beq	%x5, %x0, 12  #1056 pc 9716
	j	be_else.9271 #pc 9720
	nop #pc 9724
	addi	%x5, %x0, 0  #0 pc 9728
	ret #pc 9732
	nop #pc 9736
be_else.9271: #pc 9736
	lw	%x5, 0(%x2)  #1057 pc 9740
	flw	%f0, 72(%x2)  #1057 pc 9744
	add	%x24, %x0, %x5  #1057 pc 9748
	fsw	%f0, 0(%x24) #1057 pc 9752
	addi	%x5, %x0, 1  #0 pc 9756
	ret #pc 9760
	nop #pc 9764
be_else.9268: #pc 9764
	addi	%x5, %x0, 0  #0 pc 9768
	ret #pc 9772
	nop #pc 9776
solver_rect.2785:  #pc 9780
	addi	%x24, %x0, 4  #pc 9780
	add	%x24, %x24, %x22  #0 pc 9784
	lw	%x22, 0(%x24)  #0 pc 9788
	addi	%x7, %x0, 0  #0 pc 9792
	addi	%x9, %x0, 1  #0 pc 9796
	addi	%x10, %x0, 2  #0 pc 9800
	fsw	%f0, 0(%x2)  #1065 pc 9804
	fsw	%f2, 8(%x2)  #1065 pc 9808
	fsw	%f1, 16(%x2)  #1065 pc 9812
	sw	%x6, 24(%x2)  #1065 pc 9816
	sw	%x5, 28(%x2)  #1065 pc 9820
	sw	%x22, 32(%x2)  #1065 pc 9824
	sw	%x1, 36(%x2)  #1065 pc 9828
	lw	%x23, 0(%x22)  #1065 pc 9832
	addi	%x2, %x2, 40  #1065 pc 9836
	jalr	%x1, %x23, 0  #1065 pc 9840
	addi	%x2, %x2, -40  #1065 pc 9844
	lw	%x1, 36(%x2)  #1065 pc 9848
	beq	%x5, %x0, 12  #1065 pc 9852
	j	be_else.9272 #pc 9856
	nop #pc 9860
	addi	%x7, %x0, 1  #0 pc 9864
	addi	%x9, %x0, 2  #0 pc 9868
	addi	%x10, %x0, 0  #0 pc 9872
	flw	%f0, 16(%x2)  #1066 pc 9876
	flw	%f1, 8(%x2)  #1066 pc 9880
	flw	%f2, 0(%x2)  #1066 pc 9884
	lw	%x5, 28(%x2)  #1066 pc 9888
	lw	%x6, 24(%x2)  #1066 pc 9892
	lw	%x22, 32(%x2)  #1066 pc 9896
	sw	%x1, 36(%x2)  #1066 pc 9900
	lw	%x23, 0(%x22)  #1066 pc 9904
	addi	%x2, %x2, 40  #1066 pc 9908
	jalr	%x1, %x23, 0  #1066 pc 9912
	addi	%x2, %x2, -40  #1066 pc 9916
	lw	%x1, 36(%x2)  #1066 pc 9920
	beq	%x5, %x0, 12  #1066 pc 9924
	j	be_else.9273 #pc 9928
	nop #pc 9932
	addi	%x7, %x0, 2  #0 pc 9936
	addi	%x9, %x0, 0  #0 pc 9940
	addi	%x10, %x0, 1  #0 pc 9944
	flw	%f0, 8(%x2)  #1067 pc 9948
	flw	%f1, 0(%x2)  #1067 pc 9952
	flw	%f2, 16(%x2)  #1067 pc 9956
	lw	%x5, 28(%x2)  #1067 pc 9960
	lw	%x6, 24(%x2)  #1067 pc 9964
	lw	%x22, 32(%x2)  #1067 pc 9968
	sw	%x1, 36(%x2)  #1067 pc 9972
	lw	%x23, 0(%x22)  #1067 pc 9976
	addi	%x2, %x2, 40  #1067 pc 9980
	jalr	%x1, %x23, 0  #1067 pc 9984
	addi	%x2, %x2, -40  #1067 pc 9988
	lw	%x1, 36(%x2)  #1067 pc 9992
	beq	%x5, %x0, 12  #1067 pc 9996
	j	be_else.9274 #pc 10000
	nop #pc 10004
	addi	%x5, %x0, 0  #0 pc 10008
	ret #pc 10012
	nop #pc 10016
be_else.9274: #pc 10016
	addi	%x5, %x0, 3  #0 pc 10020
	ret #pc 10024
	nop #pc 10028
be_else.9273: #pc 10028
	addi	%x5, %x0, 2  #0 pc 10032
	ret #pc 10036
	nop #pc 10040
be_else.9272: #pc 10040
	addi	%x5, %x0, 1  #0 pc 10044
	ret #pc 10048
	nop #pc 10052
solver_surface.2791:  #pc 10056
	addi	%x24, %x0, 4  #pc 10056
	add	%x24, %x24, %x22  #1076 pc 10060
	lw	%x7, 0(%x24)  #1076 pc 10064
	sw	%x7, 0(%x2)  #1076 pc 10068
	fsw	%f2, 8(%x2)  #1076 pc 10072
	fsw	%f1, 16(%x2)  #1076 pc 10076
	fsw	%f0, 24(%x2)  #1076 pc 10080
	sw	%x6, 32(%x2)  #1076 pc 10084
	sw	%x1, 36(%x2)  #1076 pc 10088
	addi	%x2, %x2, 40  #1076 pc 10092
	jal	%x1, o_param_abc.2698  #1076 pc 10096
	addi	%x2, %x2, -40  #1076 pc 10100
	lw	%x1, 36(%x2) #1076 pc 10104
	addi	%x6, %x5, 0  #1076 pc 10108
	lw	%x5, 32(%x2)  #1077 pc 10112
	sw	%x6, 36(%x2)  #1077 pc 10116
	sw	%x1, 44(%x2)  #1077 pc 10120
	addi	%x2, %x2, 48  #1077 pc 10124
	jal	%x1, veciprod.2660  #1077 pc 10128
	addi	%x2, %x2, -48  #1077 pc 10132
	lw	%x1, 44(%x2) #1077 pc 10136
	fsw	%f0, 40(%x2)  #1078 pc 10140
	sw	%x1, 52(%x2)  #1078 pc 10144
	addi	%x2, %x2, 56  #1078 pc 10148
	jal	%x1, fispos.2530  #1078 pc 10152
	addi	%x2, %x2, -56  #1078 pc 10156
	lw	%x1, 52(%x2) #1078 pc 10160
	beq	%x5, %x0, 12  #1078 pc 10164
	j	be_else.9276 #pc 10168
	nop #pc 10172
	addi	%x5, %x0, 0  #0 pc 10176
	ret #pc 10180
	nop #pc 10184
be_else.9276: #pc 10184
	flw	%f0, 24(%x2)  #1079 pc 10188
	flw	%f1, 16(%x2)  #1079 pc 10192
	flw	%f2, 8(%x2)  #1079 pc 10196
	lw	%x5, 36(%x2)  #1079 pc 10200
	sw	%x1, 52(%x2)  #1079 pc 10204
	addi	%x2, %x2, 56  #1079 pc 10208
	jal	%x1, veciprod2.2663  #1079 pc 10212
	addi	%x2, %x2, -56  #1079 pc 10216
	lw	%x1, 52(%x2) #1079 pc 10220
	sw	%x1, 52(%x2)  #1079 pc 10224
	addi	%x2, %x2, 56  #1079 pc 10228
	jal	%x1, fneg.2534  #1079 pc 10232
	addi	%x2, %x2, -56  #1079 pc 10236
	lw	%x1, 52(%x2) #1079 pc 10240
	flw	%f1, 40(%x2)  #1079 pc 10244
	fdiv	%f0, %f0, %f1  #1079 pc 10248
	lw	%x5, 0(%x2)  #1079 pc 10252
	add	%x24, %x0, %x5  #1079 pc 10256
	fsw	%f0, 0(%x24) #1079 pc 10260
	addi	%x5, %x0, 1  #0 pc 10264
	ret #pc 10268
	nop #pc 10272
quadratic.2797:  #pc 10276
	fsw	%f0, 0(%x2)  #1089 pc 10276
	fsw	%f2, 8(%x2)  #1089 pc 10280
	fsw	%f1, 16(%x2)  #1089 pc 10284
	sw	%x5, 24(%x2)  #1089 pc 10288
	sw	%x1, 28(%x2)  #1089 pc 10292
	addi	%x2, %x2, 32  #1089 pc 10296
	jal	%x1, fsqr.2536  #1089 pc 10300
	addi	%x2, %x2, -32  #1089 pc 10304
	lw	%x1, 28(%x2) #1089 pc 10308
	lw	%x5, 24(%x2)  #1089 pc 10312
	fsw	%f0, 32(%x2)  #1089 pc 10316
	sw	%x1, 44(%x2)  #1089 pc 10320
	addi	%x2, %x2, 48  #1089 pc 10324
	jal	%x1, o_param_a.2692  #1089 pc 10328
	addi	%x2, %x2, -48  #1089 pc 10332
	lw	%x1, 44(%x2) #1089 pc 10336
	flw	%f1, 32(%x2)  #1089 pc 10340
	fmul	%f0, %f1, %f0  #1089 pc 10344
	flw	%f1, 16(%x2)  #1089 pc 10348
	fsw	%f0, 40(%x2)  #1089 pc 10352
	fadd	%f0, %f1, %f30  #0 pc 10356
	sw	%x1, 52(%x2)  #1089 pc 10360
	addi	%x2, %x2, 56  #1089 pc 10364
	jal	%x1, fsqr.2536  #1089 pc 10368
	addi	%x2, %x2, -56  #1089 pc 10372
	lw	%x1, 52(%x2) #1089 pc 10376
	lw	%x5, 24(%x2)  #1089 pc 10380
	fsw	%f0, 48(%x2)  #1089 pc 10384
	sw	%x1, 60(%x2)  #1089 pc 10388
	addi	%x2, %x2, 64  #1089 pc 10392
	jal	%x1, o_param_b.2694  #1089 pc 10396
	addi	%x2, %x2, -64  #1089 pc 10400
	lw	%x1, 60(%x2) #1089 pc 10404
	flw	%f1, 48(%x2)  #1089 pc 10408
	fmul	%f0, %f1, %f0  #1089 pc 10412
	flw	%f1, 40(%x2)  #1089 pc 10416
	fadd	%f0, %f1, %f0  #1089 pc 10420
	flw	%f1, 8(%x2)  #1089 pc 10424
	fsw	%f0, 56(%x2)  #1089 pc 10428
	fadd	%f0, %f1, %f30  #0 pc 10432
	sw	%x1, 68(%x2)  #1089 pc 10436
	addi	%x2, %x2, 72  #1089 pc 10440
	jal	%x1, fsqr.2536  #1089 pc 10444
	addi	%x2, %x2, -72  #1089 pc 10448
	lw	%x1, 68(%x2) #1089 pc 10452
	lw	%x5, 24(%x2)  #1089 pc 10456
	fsw	%f0, 64(%x2)  #1089 pc 10460
	sw	%x1, 76(%x2)  #1089 pc 10464
	addi	%x2, %x2, 80  #1089 pc 10468
	jal	%x1, o_param_c.2696  #1089 pc 10472
	addi	%x2, %x2, -80  #1089 pc 10476
	lw	%x1, 76(%x2) #1089 pc 10480
	flw	%f1, 64(%x2)  #1089 pc 10484
	fmul	%f0, %f1, %f0  #1089 pc 10488
	flw	%f1, 56(%x2)  #1089 pc 10492
	fadd	%f0, %f1, %f0  #1089 pc 10496
	lw	%x5, 24(%x2)  #1091 pc 10500
	fsw	%f0, 72(%x2)  #1091 pc 10504
	sw	%x1, 84(%x2)  #1091 pc 10508
	addi	%x2, %x2, 88  #1091 pc 10512
	jal	%x1, o_isrot.2690  #1091 pc 10516
	addi	%x2, %x2, -88  #1091 pc 10520
	lw	%x1, 84(%x2) #1091 pc 10524
	beq	%x5, %x0, 12  #1091 pc 10528
	j	be_else.9278 #pc 10532
	nop #pc 10536
	flw	%f0, 72(%x2)  #1092 pc 10540
	ret #pc 10544
	nop #pc 10548
be_else.9278: #pc 10548
	flw	%f0, 8(%x2)  #1095 pc 10552
	flw	%f1, 16(%x2)  #1095 pc 10556
	fmul	%f2, %f1, %f0  #1095 pc 10560
	lw	%x5, 24(%x2)  #1095 pc 10564
	fsw	%f2, 80(%x2)  #1095 pc 10568
	sw	%x1, 92(%x2)  #1095 pc 10572
	addi	%x2, %x2, 96  #1095 pc 10576
	jal	%x1, o_param_r1.2716  #1095 pc 10580
	addi	%x2, %x2, -96  #1095 pc 10584
	lw	%x1, 92(%x2) #1095 pc 10588
	flw	%f1, 80(%x2)  #1095 pc 10592
	fmul	%f0, %f1, %f0  #1095 pc 10596
	flw	%f1, 72(%x2)  #1094 pc 10600
	fadd	%f0, %f1, %f0  #1094 pc 10604
	flw	%f1, 0(%x2)  #1096 pc 10608
	flw	%f2, 8(%x2)  #1096 pc 10612
	fmul	%f2, %f2, %f1  #1096 pc 10616
	lw	%x5, 24(%x2)  #1096 pc 10620
	fsw	%f0, 88(%x2)  #1096 pc 10624
	fsw	%f2, 96(%x2)  #1096 pc 10628
	sw	%x1, 108(%x2)  #1096 pc 10632
	addi	%x2, %x2, 112  #1096 pc 10636
	jal	%x1, o_param_r2.2718  #1096 pc 10640
	addi	%x2, %x2, -112  #1096 pc 10644
	lw	%x1, 108(%x2) #1096 pc 10648
	flw	%f1, 96(%x2)  #1096 pc 10652
	fmul	%f0, %f1, %f0  #1096 pc 10656
	flw	%f1, 88(%x2)  #1094 pc 10660
	fadd	%f0, %f1, %f0  #1094 pc 10664
	flw	%f1, 16(%x2)  #1097 pc 10668
	flw	%f2, 0(%x2)  #1097 pc 10672
	fmul	%f1, %f2, %f1  #1097 pc 10676
	lw	%x5, 24(%x2)  #1097 pc 10680
	fsw	%f0, 104(%x2)  #1097 pc 10684
	fsw	%f1, 112(%x2)  #1097 pc 10688
	sw	%x1, 124(%x2)  #1097 pc 10692
	addi	%x2, %x2, 128  #1097 pc 10696
	jal	%x1, o_param_r3.2720  #1097 pc 10700
	addi	%x2, %x2, -128  #1097 pc 10704
	lw	%x1, 124(%x2) #1097 pc 10708
	flw	%f1, 112(%x2)  #1097 pc 10712
	fmul	%f0, %f1, %f0  #1097 pc 10716
	flw	%f1, 104(%x2)  #1094 pc 10720
	fadd	%f0, %f1, %f0  #1094 pc 10724
	ret #pc 10728
	nop #pc 10732
bilinear.2802:  #pc 10736
	fmul	%f6, %f0, %f3  #1103 pc 10736
	fsw	%f3, 0(%x2)  #1103 pc 10740
	fsw	%f0, 8(%x2)  #1103 pc 10744
	fsw	%f5, 16(%x2)  #1103 pc 10748
	fsw	%f2, 24(%x2)  #1103 pc 10752
	sw	%x5, 32(%x2)  #1103 pc 10756
	fsw	%f4, 40(%x2)  #1103 pc 10760
	fsw	%f1, 48(%x2)  #1103 pc 10764
	fsw	%f6, 56(%x2)  #1103 pc 10768
	sw	%x1, 68(%x2)  #1103 pc 10772
	addi	%x2, %x2, 72  #1103 pc 10776
	jal	%x1, o_param_a.2692  #1103 pc 10780
	addi	%x2, %x2, -72  #1103 pc 10784
	lw	%x1, 68(%x2) #1103 pc 10788
	flw	%f1, 56(%x2)  #1103 pc 10792
	fmul	%f0, %f1, %f0  #1103 pc 10796
	flw	%f1, 40(%x2)  #1104 pc 10800
	flw	%f2, 48(%x2)  #1104 pc 10804
	fmul	%f3, %f2, %f1  #1104 pc 10808
	lw	%x5, 32(%x2)  #1104 pc 10812
	fsw	%f0, 64(%x2)  #1104 pc 10816
	fsw	%f3, 72(%x2)  #1104 pc 10820
	sw	%x1, 84(%x2)  #1104 pc 10824
	addi	%x2, %x2, 88  #1104 pc 10828
	jal	%x1, o_param_b.2694  #1104 pc 10832
	addi	%x2, %x2, -88  #1104 pc 10836
	lw	%x1, 84(%x2) #1104 pc 10840
	flw	%f1, 72(%x2)  #1104 pc 10844
	fmul	%f0, %f1, %f0  #1104 pc 10848
	flw	%f1, 64(%x2)  #1103 pc 10852
	fadd	%f0, %f1, %f0  #1103 pc 10856
	flw	%f1, 16(%x2)  #1105 pc 10860
	flw	%f2, 24(%x2)  #1105 pc 10864
	fmul	%f3, %f2, %f1  #1105 pc 10868
	lw	%x5, 32(%x2)  #1105 pc 10872
	fsw	%f0, 80(%x2)  #1105 pc 10876
	fsw	%f3, 88(%x2)  #1105 pc 10880
	sw	%x1, 100(%x2)  #1105 pc 10884
	addi	%x2, %x2, 104  #1105 pc 10888
	jal	%x1, o_param_c.2696  #1105 pc 10892
	addi	%x2, %x2, -104  #1105 pc 10896
	lw	%x1, 100(%x2) #1105 pc 10900
	flw	%f1, 88(%x2)  #1105 pc 10904
	fmul	%f0, %f1, %f0  #1105 pc 10908
	flw	%f1, 80(%x2)  #1103 pc 10912
	fadd	%f0, %f1, %f0  #1103 pc 10916
	lw	%x5, 32(%x2)  #1107 pc 10920
	fsw	%f0, 96(%x2)  #1107 pc 10924
	sw	%x1, 108(%x2)  #1107 pc 10928
	addi	%x2, %x2, 112  #1107 pc 10932
	jal	%x1, o_isrot.2690  #1107 pc 10936
	addi	%x2, %x2, -112  #1107 pc 10940
	lw	%x1, 108(%x2) #1107 pc 10944
	beq	%x5, %x0, 12  #1107 pc 10948
	j	be_else.9280 #pc 10952
	nop #pc 10956
	flw	%f0, 96(%x2)  #1108 pc 10960
	ret #pc 10964
	nop #pc 10968
be_else.9280: #pc 10968
	flw	%f0, 40(%x2)  #1111 pc 10972
	flw	%f1, 24(%x2)  #1111 pc 10976
	fmul	%f2, %f1, %f0  #1111 pc 10980
	flw	%f3, 16(%x2)  #1111 pc 10984
	flw	%f4, 48(%x2)  #1111 pc 10988
	fmul	%f5, %f4, %f3  #1111 pc 10992
	fadd	%f2, %f2, %f5  #1111 pc 10996
	lw	%x5, 32(%x2)  #1111 pc 11000
	fsw	%f2, 104(%x2)  #1111 pc 11004
	sw	%x1, 116(%x2)  #1111 pc 11008
	addi	%x2, %x2, 120  #1111 pc 11012
	jal	%x1, o_param_r1.2716  #1111 pc 11016
	addi	%x2, %x2, -120  #1111 pc 11020
	lw	%x1, 116(%x2) #1111 pc 11024
	flw	%f1, 104(%x2)  #1111 pc 11028
	fmul	%f0, %f1, %f0  #1111 pc 11032
	flw	%f1, 16(%x2)  #1112 pc 11036
	flw	%f2, 8(%x2)  #1112 pc 11040
	fmul	%f1, %f2, %f1  #1112 pc 11044
	flw	%f3, 0(%x2)  #1112 pc 11048
	flw	%f4, 24(%x2)  #1112 pc 11052
	fmul	%f4, %f4, %f3  #1112 pc 11056
	fadd	%f1, %f1, %f4  #1112 pc 11060
	lw	%x5, 32(%x2)  #1112 pc 11064
	fsw	%f0, 112(%x2)  #1112 pc 11068
	fsw	%f1, 120(%x2)  #1112 pc 11072
	sw	%x1, 132(%x2)  #1112 pc 11076
	addi	%x2, %x2, 136  #1112 pc 11080
	jal	%x1, o_param_r2.2718  #1112 pc 11084
	addi	%x2, %x2, -136  #1112 pc 11088
	lw	%x1, 132(%x2) #1112 pc 11092
	flw	%f1, 120(%x2)  #1112 pc 11096
	fmul	%f0, %f1, %f0  #1112 pc 11100
	flw	%f1, 112(%x2)  #1111 pc 11104
	fadd	%f0, %f1, %f0  #1111 pc 11108
	flw	%f1, 40(%x2)  #1113 pc 11112
	flw	%f2, 8(%x2)  #1113 pc 11116
	fmul	%f1, %f2, %f1  #1113 pc 11120
	flw	%f2, 0(%x2)  #1113 pc 11124
	flw	%f3, 48(%x2)  #1113 pc 11128
	fmul	%f2, %f3, %f2  #1113 pc 11132
	fadd	%f1, %f1, %f2  #1113 pc 11136
	lw	%x5, 32(%x2)  #1113 pc 11140
	fsw	%f0, 128(%x2)  #1113 pc 11144
	fsw	%f1, 136(%x2)  #1113 pc 11148
	sw	%x1, 148(%x2)  #1113 pc 11152
	addi	%x2, %x2, 152  #1113 pc 11156
	jal	%x1, o_param_r3.2720  #1113 pc 11160
	addi	%x2, %x2, -152  #1113 pc 11164
	lw	%x1, 148(%x2) #1113 pc 11168
	flw	%f1, 136(%x2)  #1113 pc 11172
	fmul	%f0, %f1, %f0  #1113 pc 11176
	flw	%f1, 128(%x2)  #1111 pc 11180
	fadd	%f0, %f1, %f0  #1111 pc 11184
	sw	%x1, 148(%x2)  #1110 pc 11188
	addi	%x2, %x2, 152  #1110 pc 11192
	jal	%x1, fhalf.2538  #1110 pc 11196
	addi	%x2, %x2, -152  #1110 pc 11200
	lw	%x1, 148(%x2) #1110 pc 11204
	flw	%f1, 96(%x2)  #1110 pc 11208
	fadd	%f0, %f1, %f0  #1110 pc 11212
	ret #pc 11216
	nop #pc 11220
solver_second.2810:  #pc 11224
	addi	%x24, %x0, 4  #pc 11224
	add	%x24, %x24, %x22  #0 pc 11228
	lw	%x7, 0(%x24)  #0 pc 11232
	add	%x24, %x0, %x6  #1128 pc 11236
	flw	%f3, 0(%x24)  #1128 pc 11240
	addi	%x24, %x0, 4  #pc 11244
	add	%x24, %x24, %x6  #1128 pc 11248
	flw	%f4, 0(%x24)  #1128 pc 11252
	addi	%x24, %x0, 8  #pc 11256
	add	%x24, %x24, %x6  #1128 pc 11260
	flw	%f5, 0(%x24)  #1128 pc 11264
	sw	%x7, 0(%x2)  #1128 pc 11268
	fsw	%f2, 8(%x2)  #1128 pc 11272
	fsw	%f1, 16(%x2)  #1128 pc 11276
	fsw	%f0, 24(%x2)  #1128 pc 11280
	sw	%x5, 32(%x2)  #1128 pc 11284
	sw	%x6, 36(%x2)  #1128 pc 11288
	fadd	%f2, %f5, %f30  #0 pc 11292
	fadd	%f1, %f4, %f30  #0 pc 11296
	fadd	%f0, %f3, %f30  #0 pc 11300
	sw	%x1, 44(%x2)  #1128 pc 11304
	addi	%x2, %x2, 48  #1128 pc 11308
	jal	%x1, quadratic.2797  #1128 pc 11312
	addi	%x2, %x2, -48  #1128 pc 11316
	lw	%x1, 44(%x2) #1128 pc 11320
	fsw	%f0, 40(%x2)  #1130 pc 11324
	sw	%x1, 52(%x2)  #1130 pc 11328
	addi	%x2, %x2, 56  #1130 pc 11332
	jal	%x1, fiszero.2528  #1130 pc 11336
	addi	%x2, %x2, -56  #1130 pc 11340
	lw	%x1, 52(%x2) #1130 pc 11344
	beq	%x5, %x0, 12  #1130 pc 11348
	j	be_else.9282 #pc 11352
	nop #pc 11356
	lw	%x5, 36(%x2)  #1135 pc 11360
	add	%x24, %x0, %x5  #1135 pc 11364
	flw	%f0, 0(%x24)  #1135 pc 11368
	addi	%x24, %x0, 4  #pc 11372
	add	%x24, %x24, %x5  #1135 pc 11376
	flw	%f1, 0(%x24)  #1135 pc 11380
	addi	%x24, %x0, 8  #pc 11384
	add	%x24, %x24, %x5  #1135 pc 11388
	flw	%f2, 0(%x24)  #1135 pc 11392
	flw	%f3, 24(%x2)  #1135 pc 11396
	flw	%f4, 16(%x2)  #1135 pc 11400
	flw	%f5, 8(%x2)  #1135 pc 11404
	lw	%x5, 32(%x2)  #1135 pc 11408
	sw	%x1, 52(%x2)  #1135 pc 11412
	addi	%x2, %x2, 56  #1135 pc 11416
	jal	%x1, bilinear.2802  #1135 pc 11420
	addi	%x2, %x2, -56  #1135 pc 11424
	lw	%x1, 52(%x2) #1135 pc 11428
	flw	%f1, 24(%x2)  #1137 pc 11432
	flw	%f2, 16(%x2)  #1137 pc 11436
	flw	%f3, 8(%x2)  #1137 pc 11440
	lw	%x5, 32(%x2)  #1137 pc 11444
	fsw	%f0, 48(%x2)  #1137 pc 11448
	fadd	%f0, %f1, %f30  #0 pc 11452
	fadd	%f1, %f2, %f30  #0 pc 11456
	fadd	%f2, %f3, %f30  #0 pc 11460
	sw	%x1, 60(%x2)  #1137 pc 11464
	addi	%x2, %x2, 64  #1137 pc 11468
	jal	%x1, quadratic.2797  #1137 pc 11472
	addi	%x2, %x2, -64  #1137 pc 11476
	lw	%x1, 60(%x2) #1137 pc 11480
	lw	%x5, 32(%x2)  #1138 pc 11484
	fsw	%f0, 56(%x2)  #1138 pc 11488
	sw	%x1, 68(%x2)  #1138 pc 11492
	addi	%x2, %x2, 72  #1138 pc 11496
	jal	%x1, o_form.2684  #1138 pc 11500
	addi	%x2, %x2, -72  #1138 pc 11504
	lw	%x1, 68(%x2) #1138 pc 11508
	addi	%x24, %x0, 3  #pc 11512
	beq	%x5, %x24, 12  #1138 pc 11516
	j	be_else.9283 #pc 11520
	nop #pc 11524
	fmv	%f0, l.6305  #0 pc 11528
	flw	%f1, 56(%x2)  #1138 pc 11532
	fsub	%f0, %f1, %f0  #1138 pc 11536
	j	be_cont.9284 #pc 11540
	nop #pc 11544
be_else.9283: #pc 11544
	flw	%f0, 56(%x2)  #1138 pc 11548
be_cont.9284: #pc 11548
	flw	%f1, 48(%x2)  #1140 pc 11552
	fsw	%f0, 64(%x2)  #1140 pc 11556
	fadd	%f0, %f1, %f30  #0 pc 11560
	sw	%x1, 76(%x2)  #1140 pc 11564
	addi	%x2, %x2, 80  #1140 pc 11568
	jal	%x1, fsqr.2536  #1140 pc 11572
	addi	%x2, %x2, -80  #1140 pc 11576
	lw	%x1, 76(%x2) #1140 pc 11580
	flw	%f1, 64(%x2)  #1140 pc 11584
	flw	%f2, 40(%x2)  #1140 pc 11588
	fmul	%f1, %f2, %f1  #1140 pc 11592
	fsub	%f0, %f0, %f1  #1140 pc 11596
	fsw	%f0, 72(%x2)  #1142 pc 11600
	sw	%x1, 84(%x2)  #1142 pc 11604
	addi	%x2, %x2, 88  #1142 pc 11608
	jal	%x1, fispos.2530  #1142 pc 11612
	addi	%x2, %x2, -88  #1142 pc 11616
	lw	%x1, 84(%x2) #1142 pc 11620
	beq	%x5, %x0, 12  #1142 pc 11624
	j	be_else.9285 #pc 11628
	nop #pc 11632
	addi	%x5, %x0, 0  #0 pc 11636
	ret #pc 11640
	nop #pc 11644
be_else.9285: #pc 11644
	flw	%f0, 72(%x2)  #1143 pc 11648
	fsqrt	%f0, %f0  #1143 pc 11652
	lw	%x5, 32(%x2)  #1144 pc 11656
	fsw	%f0, 80(%x2)  #1144 pc 11660
	sw	%x1, 92(%x2)  #1144 pc 11664
	addi	%x2, %x2, 96  #1144 pc 11668
	jal	%x1, o_isinvert.2688  #1144 pc 11672
	addi	%x2, %x2, -96  #1144 pc 11676
	lw	%x1, 92(%x2) #1144 pc 11680
	beq	%x5, %x0, 12  #1144 pc 11684
	j	be_else.9286 #pc 11688
	nop #pc 11692
	flw	%f0, 80(%x2)  #1144 pc 11696
	sw	%x1, 92(%x2)  #1144 pc 11700
	addi	%x2, %x2, 96  #1144 pc 11704
	jal	%x1, fneg.2534  #1144 pc 11708
	addi	%x2, %x2, -96  #1144 pc 11712
	lw	%x1, 92(%x2) #1144 pc 11716
	j	be_cont.9287 #pc 11720
	nop #pc 11724
be_else.9286: #pc 11724
	flw	%f0, 80(%x2)  #1144 pc 11728
be_cont.9287: #pc 11728
	flw	%f1, 48(%x2)  #1145 pc 11732
	fsub	%f0, %f0, %f1  #1145 pc 11736
	flw	%f1, 40(%x2)  #1145 pc 11740
	fdiv	%f0, %f0, %f1  #1145 pc 11744
	lw	%x5, 0(%x2)  #1145 pc 11748
	add	%x24, %x0, %x5  #1145 pc 11752
	fsw	%f0, 0(%x24) #1145 pc 11756
	addi	%x5, %x0, 1  #0 pc 11760
	ret #pc 11764
	nop #pc 11768
be_else.9282: #pc 11768
	addi	%x5, %x0, 0  #0 pc 11772
	ret #pc 11776
	nop #pc 11780
solver.2816:  #pc 11784
	addi	%x24, %x0, 16  #pc 11784
	add	%x24, %x24, %x22  #1154 pc 11788
	lw	%x9, 0(%x24)  #1154 pc 11792
	addi	%x24, %x0, 12  #pc 11796
	add	%x24, %x24, %x22  #1154 pc 11800
	lw	%x10, 0(%x24)  #1154 pc 11804
	addi	%x24, %x0, 8  #pc 11808
	add	%x24, %x24, %x22  #1154 pc 11812
	lw	%x11, 0(%x24)  #1154 pc 11816
	addi	%x24, %x0, 4  #pc 11820
	add	%x24, %x24, %x22  #1154 pc 11824
	lw	%x12, 0(%x24)  #1154 pc 11828
	slli	%x5, %x5, 2  #1154 pc 11832
	add	%x24, %x5, %x12  #1154 pc 11836
	lw	%x5, 0(%x24)  #1154 pc 11840
	add	%x24, %x0, %x7  #1156 pc 11844
	flw	%f0, 0(%x24)  #1156 pc 11848
	sw	%x10, 0(%x2)  #1156 pc 11852
	sw	%x9, 4(%x2)  #1156 pc 11856
	sw	%x6, 8(%x2)  #1156 pc 11860
	sw	%x11, 12(%x2)  #1156 pc 11864
	sw	%x5, 16(%x2)  #1156 pc 11868
	sw	%x7, 20(%x2)  #1156 pc 11872
	fsw	%f0, 24(%x2)  #1156 pc 11876
	sw	%x1, 36(%x2)  #1156 pc 11880
	addi	%x2, %x2, 40  #1156 pc 11884
	jal	%x1, o_param_x.2700  #1156 pc 11888
	addi	%x2, %x2, -40  #1156 pc 11892
	lw	%x1, 36(%x2) #1156 pc 11896
	flw	%f1, 24(%x2)  #1156 pc 11900
	fsub	%f0, %f1, %f0  #1156 pc 11904
	lw	%x5, 20(%x2)  #1157 pc 11908
	addi	%x24, %x0, 4  #pc 11912
	add	%x24, %x24, %x5  #1157 pc 11916
	flw	%f1, 0(%x24)  #1157 pc 11920
	lw	%x6, 16(%x2)  #1157 pc 11924
	fsw	%f0, 32(%x2)  #1157 pc 11928
	fsw	%f1, 40(%x2)  #1157 pc 11932
	addi	%x5, %x6, 0  #0 pc 11936
	sw	%x1, 52(%x2)  #1157 pc 11940
	addi	%x2, %x2, 56  #1157 pc 11944
	jal	%x1, o_param_y.2702  #1157 pc 11948
	addi	%x2, %x2, -56  #1157 pc 11952
	lw	%x1, 52(%x2) #1157 pc 11956
	flw	%f1, 40(%x2)  #1157 pc 11960
	fsub	%f0, %f1, %f0  #1157 pc 11964
	lw	%x5, 20(%x2)  #1158 pc 11968
	addi	%x24, %x0, 8  #pc 11972
	add	%x24, %x24, %x5  #1158 pc 11976
	flw	%f1, 0(%x24)  #1158 pc 11980
	lw	%x5, 16(%x2)  #1158 pc 11984
	fsw	%f0, 48(%x2)  #1158 pc 11988
	fsw	%f1, 56(%x2)  #1158 pc 11992
	sw	%x1, 68(%x2)  #1158 pc 11996
	addi	%x2, %x2, 72  #1158 pc 12000
	jal	%x1, o_param_z.2704  #1158 pc 12004
	addi	%x2, %x2, -72  #1158 pc 12008
	lw	%x1, 68(%x2) #1158 pc 12012
	flw	%f1, 56(%x2)  #1158 pc 12016
	fsub	%f0, %f1, %f0  #1158 pc 12020
	lw	%x5, 16(%x2)  #1159 pc 12024
	fsw	%f0, 64(%x2)  #1159 pc 12028
	sw	%x1, 76(%x2)  #1159 pc 12032
	addi	%x2, %x2, 80  #1159 pc 12036
	jal	%x1, o_form.2684  #1159 pc 12040
	addi	%x2, %x2, -80  #1159 pc 12044
	lw	%x1, 76(%x2) #1159 pc 12048
	addi	%x24, %x0, 1  #pc 12052
	beq	%x5, %x24, 12  #1161 pc 12056
	j	be_else.9288 #pc 12060
	nop #pc 12064
	flw	%f0, 32(%x2)  #1161 pc 12068
	flw	%f1, 48(%x2)  #1161 pc 12072
	flw	%f2, 64(%x2)  #1161 pc 12076
	lw	%x5, 16(%x2)  #1161 pc 12080
	lw	%x6, 8(%x2)  #1161 pc 12084
	lw	%x22, 12(%x2)  #1161 pc 12088
	lw	%x23, 0(%x22)  #1161 pc 12092
	jalr	%x0, %x23, 0  #1161 pc 12096
	nop #pc 12100
be_else.9288: #pc 12100
	addi	%x24, %x0, 2  #pc 12104
	beq	%x5, %x24, 12  #1162 pc 12108
	j	be_else.9289 #pc 12112
	nop #pc 12116
	flw	%f0, 32(%x2)  #1162 pc 12120
	flw	%f1, 48(%x2)  #1162 pc 12124
	flw	%f2, 64(%x2)  #1162 pc 12128
	lw	%x5, 16(%x2)  #1162 pc 12132
	lw	%x6, 8(%x2)  #1162 pc 12136
	lw	%x22, 4(%x2)  #1162 pc 12140
	lw	%x23, 0(%x22)  #1162 pc 12144
	jalr	%x0, %x23, 0  #1162 pc 12148
	nop #pc 12152
be_else.9289: #pc 12152
	flw	%f0, 32(%x2)  #1163 pc 12156
	flw	%f1, 48(%x2)  #1163 pc 12160
	flw	%f2, 64(%x2)  #1163 pc 12164
	lw	%x5, 16(%x2)  #1163 pc 12168
	lw	%x6, 8(%x2)  #1163 pc 12172
	lw	%x22, 0(%x2)  #1163 pc 12176
	lw	%x23, 0(%x22)  #1163 pc 12180
	jalr	%x0, %x23, 0  #1163 pc 12184
	nop #pc 12188
solver_rect_fast.2820:  #pc 12192
	addi	%x24, %x0, 4  #pc 12192
	add	%x24, %x24, %x22  #0 pc 12196
	lw	%x9, 0(%x24)  #0 pc 12200
	add	%x24, %x0, %x7  #1186 pc 12204
	flw	%f3, 0(%x24)  #1186 pc 12208
	fsub	%f3, %f3, %f0  #1186 pc 12212
	addi	%x24, %x0, 4  #pc 12216
	add	%x24, %x24, %x7  #1186 pc 12220
	flw	%f4, 0(%x24)  #1186 pc 12224
	fmul	%f3, %f3, %f4  #1186 pc 12228
	addi	%x24, %x0, 4  #pc 12232
	add	%x24, %x24, %x6  #1188 pc 12236
	flw	%f4, 0(%x24)  #1188 pc 12240
	fmul	%f4, %f3, %f4  #1188 pc 12244
	fadd	%f4, %f4, %f1  #1188 pc 12248
	fabs	%f4, %f4  #1188 pc 12252
	sw	%x9, 0(%x2)  #1188 pc 12256
	fsw	%f0, 8(%x2)  #1188 pc 12260
	fsw	%f1, 16(%x2)  #1188 pc 12264
	sw	%x7, 24(%x2)  #1188 pc 12268
	sw	%x5, 28(%x2)  #1188 pc 12272
	fsw	%f2, 32(%x2)  #1188 pc 12276
	fsw	%f3, 40(%x2)  #1188 pc 12280
	sw	%x6, 48(%x2)  #1188 pc 12284
	fsw	%f4, 56(%x2)  #1188 pc 12288
	sw	%x1, 68(%x2)  #1188 pc 12292
	addi	%x2, %x2, 72  #1188 pc 12296
	jal	%x1, o_param_b.2694  #1188 pc 12300
	addi	%x2, %x2, -72  #1188 pc 12304
	lw	%x1, 68(%x2) #1188 pc 12308
	fadd	%f1, %f0, %f30  #1188 pc 12312
	flw	%f0, 56(%x2)  #1188 pc 12316
	sw	%x1, 68(%x2)  #1188 pc 12320
	addi	%x2, %x2, 72  #1188 pc 12324
	jal	%x1, fless.2540  #1188 pc 12328
	addi	%x2, %x2, -72  #1188 pc 12332
	lw	%x1, 68(%x2) #1188 pc 12336
	beq	%x5, %x0, 12  #1188 pc 12340
	j	be_else.9292 #pc 12344
	nop #pc 12348
	addi	%x5, %x0, 0  #0 pc 12352
	j	be_cont.9293 #pc 12356
	nop #pc 12360
be_else.9292: #pc 12360
	lw	%x5, 48(%x2)  #1189 pc 12364
	addi	%x24, %x0, 8  #pc 12368
	add	%x24, %x24, %x5  #1189 pc 12372
	flw	%f0, 0(%x24)  #1189 pc 12376
	flw	%f1, 40(%x2)  #1189 pc 12380
	fmul	%f0, %f1, %f0  #1189 pc 12384
	flw	%f2, 32(%x2)  #1189 pc 12388
	fadd	%f0, %f0, %f2  #1189 pc 12392
	fabs	%f0, %f0  #1189 pc 12396
	lw	%x6, 28(%x2)  #1189 pc 12400
	fsw	%f0, 64(%x2)  #1189 pc 12404
	addi	%x5, %x6, 0  #0 pc 12408
	sw	%x1, 76(%x2)  #1189 pc 12412
	addi	%x2, %x2, 80  #1189 pc 12416
	jal	%x1, o_param_c.2696  #1189 pc 12420
	addi	%x2, %x2, -80  #1189 pc 12424
	lw	%x1, 76(%x2) #1189 pc 12428
	fadd	%f1, %f0, %f30  #1189 pc 12432
	flw	%f0, 64(%x2)  #1189 pc 12436
	sw	%x1, 76(%x2)  #1189 pc 12440
	addi	%x2, %x2, 80  #1189 pc 12444
	jal	%x1, fless.2540  #1189 pc 12448
	addi	%x2, %x2, -80  #1189 pc 12452
	lw	%x1, 76(%x2) #1189 pc 12456
	beq	%x5, %x0, 12  #1189 pc 12460
	j	be_else.9294 #pc 12464
	nop #pc 12468
	addi	%x5, %x0, 0  #0 pc 12472
	j	be_cont.9295 #pc 12476
	nop #pc 12480
be_else.9294: #pc 12480
	lw	%x5, 24(%x2)  #1190 pc 12484
	addi	%x24, %x0, 4  #pc 12488
	add	%x24, %x24, %x5  #1190 pc 12492
	flw	%f0, 0(%x24)  #1190 pc 12496
	sw	%x1, 76(%x2)  #1190 pc 12500
	addi	%x2, %x2, 80  #1190 pc 12504
	jal	%x1, fiszero.2528  #1190 pc 12508
	addi	%x2, %x2, -80  #1190 pc 12512
	lw	%x1, 76(%x2) #1190 pc 12516
	beq	%x5, %x0, 12  #1190 pc 12520
	j	be_else.9296 #pc 12524
	nop #pc 12528
	addi	%x5, %x0, 1  #0 pc 12532
	j	be_cont.9297 #pc 12536
	nop #pc 12540
be_else.9296: #pc 12540
	addi	%x5, %x0, 0  #0 pc 12544
be_cont.9297: #pc 12544
be_cont.9295: #pc 12544
be_cont.9293: #pc 12544
	beq	%x5, %x0, 12  #1187 pc 12548
	j	be_else.9298 #pc 12552
	nop #pc 12556
	lw	%x5, 24(%x2)  #1195 pc 12560
	addi	%x24, %x0, 8  #pc 12564
	add	%x24, %x24, %x5  #1195 pc 12568
	flw	%f0, 0(%x24)  #1195 pc 12572
	flw	%f1, 16(%x2)  #1195 pc 12576
	fsub	%f0, %f0, %f1  #1195 pc 12580
	addi	%x24, %x0, 12  #pc 12584
	add	%x24, %x24, %x5  #1195 pc 12588
	flw	%f2, 0(%x24)  #1195 pc 12592
	fmul	%f0, %f0, %f2  #1195 pc 12596
	lw	%x6, 48(%x2)  #1197 pc 12600
	add	%x24, %x0, %x6  #1197 pc 12604
	flw	%f2, 0(%x24)  #1197 pc 12608
	fmul	%f2, %f0, %f2  #1197 pc 12612
	flw	%f3, 8(%x2)  #1197 pc 12616
	fadd	%f2, %f2, %f3  #1197 pc 12620
	fabs	%f2, %f2  #1197 pc 12624
	lw	%x7, 28(%x2)  #1197 pc 12628
	fsw	%f0, 72(%x2)  #1197 pc 12632
	fsw	%f2, 80(%x2)  #1197 pc 12636
	addi	%x5, %x7, 0  #0 pc 12640
	sw	%x1, 92(%x2)  #1197 pc 12644
	addi	%x2, %x2, 96  #1197 pc 12648
	jal	%x1, o_param_a.2692  #1197 pc 12652
	addi	%x2, %x2, -96  #1197 pc 12656
	lw	%x1, 92(%x2) #1197 pc 12660
	fadd	%f1, %f0, %f30  #1197 pc 12664
	flw	%f0, 80(%x2)  #1197 pc 12668
	sw	%x1, 92(%x2)  #1197 pc 12672
	addi	%x2, %x2, 96  #1197 pc 12676
	jal	%x1, fless.2540  #1197 pc 12680
	addi	%x2, %x2, -96  #1197 pc 12684
	lw	%x1, 92(%x2) #1197 pc 12688
	beq	%x5, %x0, 12  #1197 pc 12692
	j	be_else.9299 #pc 12696
	nop #pc 12700
	addi	%x5, %x0, 0  #0 pc 12704
	j	be_cont.9300 #pc 12708
	nop #pc 12712
be_else.9299: #pc 12712
	lw	%x5, 48(%x2)  #1198 pc 12716
	addi	%x24, %x0, 8  #pc 12720
	add	%x24, %x24, %x5  #1198 pc 12724
	flw	%f0, 0(%x24)  #1198 pc 12728
	flw	%f1, 72(%x2)  #1198 pc 12732
	fmul	%f0, %f1, %f0  #1198 pc 12736
	flw	%f2, 32(%x2)  #1198 pc 12740
	fadd	%f0, %f0, %f2  #1198 pc 12744
	fabs	%f0, %f0  #1198 pc 12748
	lw	%x6, 28(%x2)  #1198 pc 12752
	fsw	%f0, 88(%x2)  #1198 pc 12756
	addi	%x5, %x6, 0  #0 pc 12760
	sw	%x1, 100(%x2)  #1198 pc 12764
	addi	%x2, %x2, 104  #1198 pc 12768
	jal	%x1, o_param_c.2696  #1198 pc 12772
	addi	%x2, %x2, -104  #1198 pc 12776
	lw	%x1, 100(%x2) #1198 pc 12780
	fadd	%f1, %f0, %f30  #1198 pc 12784
	flw	%f0, 88(%x2)  #1198 pc 12788
	sw	%x1, 100(%x2)  #1198 pc 12792
	addi	%x2, %x2, 104  #1198 pc 12796
	jal	%x1, fless.2540  #1198 pc 12800
	addi	%x2, %x2, -104  #1198 pc 12804
	lw	%x1, 100(%x2) #1198 pc 12808
	beq	%x5, %x0, 12  #1198 pc 12812
	j	be_else.9301 #pc 12816
	nop #pc 12820
	addi	%x5, %x0, 0  #0 pc 12824
	j	be_cont.9302 #pc 12828
	nop #pc 12832
be_else.9301: #pc 12832
	lw	%x5, 24(%x2)  #1199 pc 12836
	addi	%x24, %x0, 12  #pc 12840
	add	%x24, %x24, %x5  #1199 pc 12844
	flw	%f0, 0(%x24)  #1199 pc 12848
	sw	%x1, 100(%x2)  #1199 pc 12852
	addi	%x2, %x2, 104  #1199 pc 12856
	jal	%x1, fiszero.2528  #1199 pc 12860
	addi	%x2, %x2, -104  #1199 pc 12864
	lw	%x1, 100(%x2) #1199 pc 12868
	beq	%x5, %x0, 12  #1199 pc 12872
	j	be_else.9303 #pc 12876
	nop #pc 12880
	addi	%x5, %x0, 1  #0 pc 12884
	j	be_cont.9304 #pc 12888
	nop #pc 12892
be_else.9303: #pc 12892
	addi	%x5, %x0, 0  #0 pc 12896
be_cont.9304: #pc 12896
be_cont.9302: #pc 12896
be_cont.9300: #pc 12896
	beq	%x5, %x0, 12  #1196 pc 12900
	j	be_else.9305 #pc 12904
	nop #pc 12908
	lw	%x5, 24(%x2)  #1204 pc 12912
	addi	%x24, %x0, 16  #pc 12916
	add	%x24, %x24, %x5  #1204 pc 12920
	flw	%f0, 0(%x24)  #1204 pc 12924
	flw	%f1, 32(%x2)  #1204 pc 12928
	fsub	%f0, %f0, %f1  #1204 pc 12932
	addi	%x24, %x0, 20  #pc 12936
	add	%x24, %x24, %x5  #1204 pc 12940
	flw	%f1, 0(%x24)  #1204 pc 12944
	fmul	%f0, %f0, %f1  #1204 pc 12948
	lw	%x6, 48(%x2)  #1206 pc 12952
	add	%x24, %x0, %x6  #1206 pc 12956
	flw	%f1, 0(%x24)  #1206 pc 12960
	fmul	%f1, %f0, %f1  #1206 pc 12964
	flw	%f2, 8(%x2)  #1206 pc 12968
	fadd	%f1, %f1, %f2  #1206 pc 12972
	fabs	%f1, %f1  #1206 pc 12976
	lw	%x7, 28(%x2)  #1206 pc 12980
	fsw	%f0, 96(%x2)  #1206 pc 12984
	fsw	%f1, 104(%x2)  #1206 pc 12988
	addi	%x5, %x7, 0  #0 pc 12992
	sw	%x1, 116(%x2)  #1206 pc 12996
	addi	%x2, %x2, 120  #1206 pc 13000
	jal	%x1, o_param_a.2692  #1206 pc 13004
	addi	%x2, %x2, -120  #1206 pc 13008
	lw	%x1, 116(%x2) #1206 pc 13012
	fadd	%f1, %f0, %f30  #1206 pc 13016
	flw	%f0, 104(%x2)  #1206 pc 13020
	sw	%x1, 116(%x2)  #1206 pc 13024
	addi	%x2, %x2, 120  #1206 pc 13028
	jal	%x1, fless.2540  #1206 pc 13032
	addi	%x2, %x2, -120  #1206 pc 13036
	lw	%x1, 116(%x2) #1206 pc 13040
	beq	%x5, %x0, 12  #1206 pc 13044
	j	be_else.9306 #pc 13048
	nop #pc 13052
	addi	%x5, %x0, 0  #0 pc 13056
	j	be_cont.9307 #pc 13060
	nop #pc 13064
be_else.9306: #pc 13064
	lw	%x5, 48(%x2)  #1207 pc 13068
	addi	%x24, %x0, 4  #pc 13072
	add	%x24, %x24, %x5  #1207 pc 13076
	flw	%f0, 0(%x24)  #1207 pc 13080
	flw	%f1, 96(%x2)  #1207 pc 13084
	fmul	%f0, %f1, %f0  #1207 pc 13088
	flw	%f2, 16(%x2)  #1207 pc 13092
	fadd	%f0, %f0, %f2  #1207 pc 13096
	fabs	%f0, %f0  #1207 pc 13100
	lw	%x5, 28(%x2)  #1207 pc 13104
	fsw	%f0, 112(%x2)  #1207 pc 13108
	sw	%x1, 124(%x2)  #1207 pc 13112
	addi	%x2, %x2, 128  #1207 pc 13116
	jal	%x1, o_param_b.2694  #1207 pc 13120
	addi	%x2, %x2, -128  #1207 pc 13124
	lw	%x1, 124(%x2) #1207 pc 13128
	fadd	%f1, %f0, %f30  #1207 pc 13132
	flw	%f0, 112(%x2)  #1207 pc 13136
	sw	%x1, 124(%x2)  #1207 pc 13140
	addi	%x2, %x2, 128  #1207 pc 13144
	jal	%x1, fless.2540  #1207 pc 13148
	addi	%x2, %x2, -128  #1207 pc 13152
	lw	%x1, 124(%x2) #1207 pc 13156
	beq	%x5, %x0, 12  #1207 pc 13160
	j	be_else.9308 #pc 13164
	nop #pc 13168
	addi	%x5, %x0, 0  #0 pc 13172
	j	be_cont.9309 #pc 13176
	nop #pc 13180
be_else.9308: #pc 13180
	lw	%x5, 24(%x2)  #1208 pc 13184
	addi	%x24, %x0, 20  #pc 13188
	add	%x24, %x24, %x5  #1208 pc 13192
	flw	%f0, 0(%x24)  #1208 pc 13196
	sw	%x1, 124(%x2)  #1208 pc 13200
	addi	%x2, %x2, 128  #1208 pc 13204
	jal	%x1, fiszero.2528  #1208 pc 13208
	addi	%x2, %x2, -128  #1208 pc 13212
	lw	%x1, 124(%x2) #1208 pc 13216
	beq	%x5, %x0, 12  #1208 pc 13220
	j	be_else.9310 #pc 13224
	nop #pc 13228
	addi	%x5, %x0, 1  #0 pc 13232
	j	be_cont.9311 #pc 13236
	nop #pc 13240
be_else.9310: #pc 13240
	addi	%x5, %x0, 0  #0 pc 13244
be_cont.9311: #pc 13244
be_cont.9309: #pc 13244
be_cont.9307: #pc 13244
	beq	%x5, %x0, 12  #1205 pc 13248
	j	be_else.9312 #pc 13252
	nop #pc 13256
	addi	%x5, %x0, 0  #0 pc 13260
	ret #pc 13264
	nop #pc 13268
be_else.9312: #pc 13268
	lw	%x5, 0(%x2)  #1212 pc 13272
	flw	%f0, 96(%x2)  #1212 pc 13276
	add	%x24, %x0, %x5  #1212 pc 13280
	fsw	%f0, 0(%x24) #1212 pc 13284
	addi	%x5, %x0, 3  #0 pc 13288
	ret #pc 13292
	nop #pc 13296
be_else.9305: #pc 13296
	lw	%x5, 0(%x2)  #1203 pc 13300
	flw	%f0, 72(%x2)  #1203 pc 13304
	add	%x24, %x0, %x5  #1203 pc 13308
	fsw	%f0, 0(%x24) #1203 pc 13312
	addi	%x5, %x0, 2  #0 pc 13316
	ret #pc 13320
	nop #pc 13324
be_else.9298: #pc 13324
	lw	%x5, 0(%x2)  #1194 pc 13328
	flw	%f0, 40(%x2)  #1194 pc 13332
	add	%x24, %x0, %x5  #1194 pc 13336
	fsw	%f0, 0(%x24) #1194 pc 13340
	addi	%x5, %x0, 1  #0 pc 13344
	ret #pc 13348
	nop #pc 13352
solver_surface_fast.2827:  #pc 13356
	addi	%x24, %x0, 4  #pc 13356
	add	%x24, %x24, %x22  #0 pc 13360
	lw	%x5, 0(%x24)  #0 pc 13364
	add	%x24, %x0, %x6  #1219 pc 13368
	flw	%f3, 0(%x24)  #1219 pc 13372
	sw	%x5, 0(%x2)  #1219 pc 13376
	fsw	%f2, 8(%x2)  #1219 pc 13380
	fsw	%f1, 16(%x2)  #1219 pc 13384
	fsw	%f0, 24(%x2)  #1219 pc 13388
	sw	%x6, 32(%x2)  #1219 pc 13392
	fadd	%f0, %f3, %f30  #0 pc 13396
	sw	%x1, 36(%x2)  #1219 pc 13400
	addi	%x2, %x2, 40  #1219 pc 13404
	jal	%x1, fisneg.2532  #1219 pc 13408
	addi	%x2, %x2, -40  #1219 pc 13412
	lw	%x1, 36(%x2) #1219 pc 13416
	beq	%x5, %x0, 12  #1219 pc 13420
	j	be_else.9314 #pc 13424
	nop #pc 13428
	addi	%x5, %x0, 0  #0 pc 13432
	ret #pc 13436
	nop #pc 13440
be_else.9314: #pc 13440
	lw	%x5, 32(%x2)  #1221 pc 13444
	addi	%x24, %x0, 4  #pc 13448
	add	%x24, %x24, %x5  #1221 pc 13452
	flw	%f0, 0(%x24)  #1221 pc 13456
	flw	%f1, 24(%x2)  #1221 pc 13460
	fmul	%f0, %f0, %f1  #1221 pc 13464
	addi	%x24, %x0, 8  #pc 13468
	add	%x24, %x24, %x5  #1221 pc 13472
	flw	%f1, 0(%x24)  #1221 pc 13476
	flw	%f2, 16(%x2)  #1221 pc 13480
	fmul	%f1, %f1, %f2  #1221 pc 13484
	fadd	%f0, %f0, %f1  #1221 pc 13488
	addi	%x24, %x0, 12  #pc 13492
	add	%x24, %x24, %x5  #1221 pc 13496
	flw	%f1, 0(%x24)  #1221 pc 13500
	flw	%f2, 8(%x2)  #1221 pc 13504
	fmul	%f1, %f1, %f2  #1221 pc 13508
	fadd	%f0, %f0, %f1  #1221 pc 13512
	lw	%x5, 0(%x2)  #1220 pc 13516
	add	%x24, %x0, %x5  #1220 pc 13520
	fsw	%f0, 0(%x24) #1220 pc 13524
	addi	%x5, %x0, 1  #0 pc 13528
	ret #pc 13532
	nop #pc 13536
solver_second_fast.2833:  #pc 13540
	addi	%x24, %x0, 4  #pc 13540
	add	%x24, %x24, %x22  #0 pc 13544
	lw	%x7, 0(%x24)  #0 pc 13548
	add	%x24, %x0, %x6  #1229 pc 13552
	flw	%f3, 0(%x24)  #1229 pc 13556
	sw	%x7, 0(%x2)  #1230 pc 13560
	fsw	%f3, 8(%x2)  #1230 pc 13564
	sw	%x5, 16(%x2)  #1230 pc 13568
	fsw	%f2, 24(%x2)  #1230 pc 13572
	fsw	%f1, 32(%x2)  #1230 pc 13576
	fsw	%f0, 40(%x2)  #1230 pc 13580
	sw	%x6, 48(%x2)  #1230 pc 13584
	fadd	%f0, %f3, %f30  #0 pc 13588
	sw	%x1, 52(%x2)  #1230 pc 13592
	addi	%x2, %x2, 56  #1230 pc 13596
	jal	%x1, fiszero.2528  #1230 pc 13600
	addi	%x2, %x2, -56  #1230 pc 13604
	lw	%x1, 52(%x2) #1230 pc 13608
	beq	%x5, %x0, 12  #1230 pc 13612
	j	be_else.9317 #pc 13616
	nop #pc 13620
	lw	%x5, 48(%x2)  #1233 pc 13624
	addi	%x24, %x0, 4  #pc 13628
	add	%x24, %x24, %x5  #1233 pc 13632
	flw	%f0, 0(%x24)  #1233 pc 13636
	flw	%f1, 40(%x2)  #1233 pc 13640
	fmul	%f0, %f0, %f1  #1233 pc 13644
	addi	%x24, %x0, 8  #pc 13648
	add	%x24, %x24, %x5  #1233 pc 13652
	flw	%f2, 0(%x24)  #1233 pc 13656
	flw	%f3, 32(%x2)  #1233 pc 13660
	fmul	%f2, %f2, %f3  #1233 pc 13664
	fadd	%f0, %f0, %f2  #1233 pc 13668
	addi	%x24, %x0, 12  #pc 13672
	add	%x24, %x24, %x5  #1233 pc 13676
	flw	%f2, 0(%x24)  #1233 pc 13680
	flw	%f4, 24(%x2)  #1233 pc 13684
	fmul	%f2, %f2, %f4  #1233 pc 13688
	fadd	%f0, %f0, %f2  #1233 pc 13692
	lw	%x6, 16(%x2)  #1234 pc 13696
	fsw	%f0, 56(%x2)  #1234 pc 13700
	addi	%x5, %x6, 0  #0 pc 13704
	fadd	%f2, %f4, %f30  #0 pc 13708
	fadd	%f0, %f1, %f30  #0 pc 13712
	fadd	%f1, %f3, %f30  #0 pc 13716
	sw	%x1, 68(%x2)  #1234 pc 13720
	addi	%x2, %x2, 72  #1234 pc 13724
	jal	%x1, quadratic.2797  #1234 pc 13728
	addi	%x2, %x2, -72  #1234 pc 13732
	lw	%x1, 68(%x2) #1234 pc 13736
	lw	%x5, 16(%x2)  #1235 pc 13740
	fsw	%f0, 64(%x2)  #1235 pc 13744
	sw	%x1, 76(%x2)  #1235 pc 13748
	addi	%x2, %x2, 80  #1235 pc 13752
	jal	%x1, o_form.2684  #1235 pc 13756
	addi	%x2, %x2, -80  #1235 pc 13760
	lw	%x1, 76(%x2) #1235 pc 13764
	addi	%x24, %x0, 3  #pc 13768
	beq	%x5, %x24, 12  #1235 pc 13772
	j	be_else.9319 #pc 13776
	nop #pc 13780
	fmv	%f0, l.6305  #0 pc 13784
	flw	%f1, 64(%x2)  #1235 pc 13788
	fsub	%f0, %f1, %f0  #1235 pc 13792
	j	be_cont.9320 #pc 13796
	nop #pc 13800
be_else.9319: #pc 13800
	flw	%f0, 64(%x2)  #1235 pc 13804
be_cont.9320: #pc 13804
	flw	%f1, 56(%x2)  #1236 pc 13808
	fsw	%f0, 72(%x2)  #1236 pc 13812
	fadd	%f0, %f1, %f30  #0 pc 13816
	sw	%x1, 84(%x2)  #1236 pc 13820
	addi	%x2, %x2, 88  #1236 pc 13824
	jal	%x1, fsqr.2536  #1236 pc 13828
	addi	%x2, %x2, -88  #1236 pc 13832
	lw	%x1, 84(%x2) #1236 pc 13836
	flw	%f1, 72(%x2)  #1236 pc 13840
	flw	%f2, 8(%x2)  #1236 pc 13844
	fmul	%f1, %f2, %f1  #1236 pc 13848
	fsub	%f0, %f0, %f1  #1236 pc 13852
	fsw	%f0, 80(%x2)  #1237 pc 13856
	sw	%x1, 92(%x2)  #1237 pc 13860
	addi	%x2, %x2, 96  #1237 pc 13864
	jal	%x1, fispos.2530  #1237 pc 13868
	addi	%x2, %x2, -96  #1237 pc 13872
	lw	%x1, 92(%x2) #1237 pc 13876
	beq	%x5, %x0, 12  #1237 pc 13880
	j	be_else.9321 #pc 13884
	nop #pc 13888
	addi	%x5, %x0, 0  #0 pc 13892
	ret #pc 13896
	nop #pc 13900
be_else.9321: #pc 13900
	lw	%x5, 16(%x2)  #1238 pc 13904
	sw	%x1, 92(%x2)  #1238 pc 13908
	addi	%x2, %x2, 96  #1238 pc 13912
	jal	%x1, o_isinvert.2688  #1238 pc 13916
	addi	%x2, %x2, -96  #1238 pc 13920
	lw	%x1, 92(%x2) #1238 pc 13924
	beq	%x5, %x0, 12  #1238 pc 13928
	j	be_else.9322 #pc 13932
	nop #pc 13936
	flw	%f0, 80(%x2)  #1241 pc 13940
	fsqrt	%f0, %f0  #1241 pc 13944
	flw	%f1, 56(%x2)  #1241 pc 13948
	fsub	%f0, %f1, %f0  #1241 pc 13952
	lw	%x5, 48(%x2)  #1241 pc 13956
	addi	%x24, %x0, 16  #pc 13960
	add	%x24, %x24, %x5  #1241 pc 13964
	flw	%f1, 0(%x24)  #1241 pc 13968
	fmul	%f0, %f0, %f1  #1241 pc 13972
	lw	%x5, 0(%x2)  #1241 pc 13976
	add	%x24, %x0, %x5  #1241 pc 13980
	fsw	%f0, 0(%x24) #1241 pc 13984
	j	be_cont.9323 #pc 13988
	nop #pc 13992
be_else.9322: #pc 13992
	flw	%f0, 80(%x2)  #1239 pc 13996
	fsqrt	%f0, %f0  #1239 pc 14000
	flw	%f1, 56(%x2)  #1239 pc 14004
	fadd	%f0, %f1, %f0  #1239 pc 14008
	lw	%x5, 48(%x2)  #1239 pc 14012
	addi	%x24, %x0, 16  #pc 14016
	add	%x24, %x24, %x5  #1239 pc 14020
	flw	%f1, 0(%x24)  #1239 pc 14024
	fmul	%f0, %f0, %f1  #1239 pc 14028
	lw	%x5, 0(%x2)  #1239 pc 14032
	add	%x24, %x0, %x5  #1239 pc 14036
	fsw	%f0, 0(%x24) #1239 pc 14040
be_cont.9323: #pc 14040
	addi	%x5, %x0, 1  #0 pc 14044
	ret #pc 14048
	nop #pc 14052
be_else.9317: #pc 14052
	addi	%x5, %x0, 0  #0 pc 14056
	ret #pc 14060
	nop #pc 14064
solver_fast.2839:  #pc 14068
	addi	%x24, %x0, 16  #pc 14068
	add	%x24, %x24, %x22  #1248 pc 14072
	lw	%x9, 0(%x24)  #1248 pc 14076
	addi	%x24, %x0, 12  #pc 14080
	add	%x24, %x24, %x22  #1248 pc 14084
	lw	%x10, 0(%x24)  #1248 pc 14088
	addi	%x24, %x0, 8  #pc 14092
	add	%x24, %x24, %x22  #1248 pc 14096
	lw	%x11, 0(%x24)  #1248 pc 14100
	addi	%x24, %x0, 4  #pc 14104
	add	%x24, %x24, %x22  #1248 pc 14108
	lw	%x12, 0(%x24)  #1248 pc 14112
	slli	%x13, %x5, 2  #1248 pc 14116
	add	%x24, %x13, %x12  #1248 pc 14120
	lw	%x12, 0(%x24)  #1248 pc 14124
	add	%x24, %x0, %x7  #1249 pc 14128
	flw	%f0, 0(%x24)  #1249 pc 14132
	sw	%x10, 0(%x2)  #1249 pc 14136
	sw	%x9, 4(%x2)  #1249 pc 14140
	sw	%x11, 8(%x2)  #1249 pc 14144
	sw	%x5, 12(%x2)  #1249 pc 14148
	sw	%x6, 16(%x2)  #1249 pc 14152
	sw	%x12, 20(%x2)  #1249 pc 14156
	sw	%x7, 24(%x2)  #1249 pc 14160
	fsw	%f0, 32(%x2)  #1249 pc 14164
	addi	%x5, %x12, 0  #0 pc 14168
	sw	%x1, 44(%x2)  #1249 pc 14172
	addi	%x2, %x2, 48  #1249 pc 14176
	jal	%x1, o_param_x.2700  #1249 pc 14180
	addi	%x2, %x2, -48  #1249 pc 14184
	lw	%x1, 44(%x2) #1249 pc 14188
	flw	%f1, 32(%x2)  #1249 pc 14192
	fsub	%f0, %f1, %f0  #1249 pc 14196
	lw	%x5, 24(%x2)  #1250 pc 14200
	addi	%x24, %x0, 4  #pc 14204
	add	%x24, %x24, %x5  #1250 pc 14208
	flw	%f1, 0(%x24)  #1250 pc 14212
	lw	%x6, 20(%x2)  #1250 pc 14216
	fsw	%f0, 40(%x2)  #1250 pc 14220
	fsw	%f1, 48(%x2)  #1250 pc 14224
	addi	%x5, %x6, 0  #0 pc 14228
	sw	%x1, 60(%x2)  #1250 pc 14232
	addi	%x2, %x2, 64  #1250 pc 14236
	jal	%x1, o_param_y.2702  #1250 pc 14240
	addi	%x2, %x2, -64  #1250 pc 14244
	lw	%x1, 60(%x2) #1250 pc 14248
	flw	%f1, 48(%x2)  #1250 pc 14252
	fsub	%f0, %f1, %f0  #1250 pc 14256
	lw	%x5, 24(%x2)  #1251 pc 14260
	addi	%x24, %x0, 8  #pc 14264
	add	%x24, %x24, %x5  #1251 pc 14268
	flw	%f1, 0(%x24)  #1251 pc 14272
	lw	%x5, 20(%x2)  #1251 pc 14276
	fsw	%f0, 56(%x2)  #1251 pc 14280
	fsw	%f1, 64(%x2)  #1251 pc 14284
	sw	%x1, 76(%x2)  #1251 pc 14288
	addi	%x2, %x2, 80  #1251 pc 14292
	jal	%x1, o_param_z.2704  #1251 pc 14296
	addi	%x2, %x2, -80  #1251 pc 14300
	lw	%x1, 76(%x2) #1251 pc 14304
	flw	%f1, 64(%x2)  #1251 pc 14308
	fsub	%f0, %f1, %f0  #1251 pc 14312
	lw	%x5, 16(%x2)  #1252 pc 14316
	fsw	%f0, 72(%x2)  #1252 pc 14320
	sw	%x1, 84(%x2)  #1252 pc 14324
	addi	%x2, %x2, 88  #1252 pc 14328
	jal	%x1, d_const.2745  #1252 pc 14332
	addi	%x2, %x2, -88  #1252 pc 14336
	lw	%x1, 84(%x2) #1252 pc 14340
	lw	%x6, 12(%x2)  #1253 pc 14344
	slli	%x6, %x6, 2  #1253 pc 14348
	add	%x24, %x6, %x5  #1253 pc 14352
	lw	%x5, 0(%x24)  #1253 pc 14356
	lw	%x6, 20(%x2)  #1254 pc 14360
	sw	%x5, 80(%x2)  #1254 pc 14364
	addi	%x5, %x6, 0  #0 pc 14368
	sw	%x1, 84(%x2)  #1254 pc 14372
	addi	%x2, %x2, 88  #1254 pc 14376
	jal	%x1, o_form.2684  #1254 pc 14380
	addi	%x2, %x2, -88  #1254 pc 14384
	lw	%x1, 84(%x2) #1254 pc 14388
	addi	%x24, %x0, 1  #pc 14392
	beq	%x5, %x24, 12  #1255 pc 14396
	j	be_else.9325 #pc 14400
	nop #pc 14404
	lw	%x5, 16(%x2)  #1256 pc 14408
	sw	%x1, 84(%x2)  #1256 pc 14412
	addi	%x2, %x2, 88  #1256 pc 14416
	jal	%x1, d_vec.2743  #1256 pc 14420
	addi	%x2, %x2, -88  #1256 pc 14424
	lw	%x1, 84(%x2) #1256 pc 14428
	addi	%x6, %x5, 0  #1256 pc 14432
	flw	%f0, 40(%x2)  #1256 pc 14436
	flw	%f1, 56(%x2)  #1256 pc 14440
	flw	%f2, 72(%x2)  #1256 pc 14444
	lw	%x5, 20(%x2)  #1256 pc 14448
	lw	%x7, 80(%x2)  #1256 pc 14452
	lw	%x22, 8(%x2)  #1256 pc 14456
	lw	%x23, 0(%x22)  #1256 pc 14460
	jalr	%x0, %x23, 0  #1256 pc 14464
	nop #pc 14468
be_else.9325: #pc 14468
	addi	%x24, %x0, 2  #pc 14472
	beq	%x5, %x24, 12  #1257 pc 14476
	j	be_else.9326 #pc 14480
	nop #pc 14484
	flw	%f0, 40(%x2)  #1258 pc 14488
	flw	%f1, 56(%x2)  #1258 pc 14492
	flw	%f2, 72(%x2)  #1258 pc 14496
	lw	%x5, 20(%x2)  #1258 pc 14500
	lw	%x6, 80(%x2)  #1258 pc 14504
	lw	%x22, 4(%x2)  #1258 pc 14508
	lw	%x23, 0(%x22)  #1258 pc 14512
	jalr	%x0, %x23, 0  #1258 pc 14516
	nop #pc 14520
be_else.9326: #pc 14520
	flw	%f0, 40(%x2)  #1260 pc 14524
	flw	%f1, 56(%x2)  #1260 pc 14528
	flw	%f2, 72(%x2)  #1260 pc 14532
	lw	%x5, 20(%x2)  #1260 pc 14536
	lw	%x6, 80(%x2)  #1260 pc 14540
	lw	%x22, 0(%x2)  #1260 pc 14544
	lw	%x23, 0(%x22)  #1260 pc 14548
	jalr	%x0, %x23, 0  #1260 pc 14552
	nop #pc 14556
solver_surface_fast2.2843:  #pc 14560
	addi	%x24, %x0, 4  #pc 14560
	add	%x24, %x24, %x22  #0 pc 14564
	lw	%x5, 0(%x24)  #0 pc 14568
	add	%x24, %x0, %x6  #1268 pc 14572
	flw	%f0, 0(%x24)  #1268 pc 14576
	sw	%x5, 0(%x2)  #1268 pc 14580
	sw	%x7, 4(%x2)  #1268 pc 14584
	sw	%x6, 8(%x2)  #1268 pc 14588
	sw	%x1, 12(%x2)  #1268 pc 14592
	addi	%x2, %x2, 16  #1268 pc 14596
	jal	%x1, fisneg.2532  #1268 pc 14600
	addi	%x2, %x2, -16  #1268 pc 14604
	lw	%x1, 12(%x2) #1268 pc 14608
	beq	%x5, %x0, 12  #1268 pc 14612
	j	be_else.9327 #pc 14616
	nop #pc 14620
	addi	%x5, %x0, 0  #0 pc 14624
	ret #pc 14628
	nop #pc 14632
be_else.9327: #pc 14632
	lw	%x5, 8(%x2)  #1269 pc 14636
	add	%x24, %x0, %x5  #1269 pc 14640
	flw	%f0, 0(%x24)  #1269 pc 14644
	lw	%x5, 4(%x2)  #1269 pc 14648
	addi	%x24, %x0, 12  #pc 14652
	add	%x24, %x24, %x5  #1269 pc 14656
	flw	%f1, 0(%x24)  #1269 pc 14660
	fmul	%f0, %f0, %f1  #1269 pc 14664
	lw	%x5, 0(%x2)  #1269 pc 14668
	add	%x24, %x0, %x5  #1269 pc 14672
	fsw	%f0, 0(%x24) #1269 pc 14676
	addi	%x5, %x0, 1  #0 pc 14680
	ret #pc 14684
	nop #pc 14688
solver_second_fast2.2850:  #pc 14692
	addi	%x24, %x0, 4  #pc 14692
	add	%x24, %x24, %x22  #0 pc 14696
	lw	%x9, 0(%x24)  #0 pc 14700
	add	%x24, %x0, %x6  #1277 pc 14704
	flw	%f3, 0(%x24)  #1277 pc 14708
	sw	%x9, 0(%x2)  #1278 pc 14712
	sw	%x5, 4(%x2)  #1278 pc 14716
	fsw	%f3, 8(%x2)  #1278 pc 14720
	sw	%x7, 16(%x2)  #1278 pc 14724
	fsw	%f2, 24(%x2)  #1278 pc 14728
	fsw	%f1, 32(%x2)  #1278 pc 14732
	fsw	%f0, 40(%x2)  #1278 pc 14736
	sw	%x6, 48(%x2)  #1278 pc 14740
	fadd	%f0, %f3, %f30  #0 pc 14744
	sw	%x1, 52(%x2)  #1278 pc 14748
	addi	%x2, %x2, 56  #1278 pc 14752
	jal	%x1, fiszero.2528  #1278 pc 14756
	addi	%x2, %x2, -56  #1278 pc 14760
	lw	%x1, 52(%x2) #1278 pc 14764
	beq	%x5, %x0, 12  #1278 pc 14768
	j	be_else.9329 #pc 14772
	nop #pc 14776
	lw	%x5, 48(%x2)  #1281 pc 14780
	addi	%x24, %x0, 4  #pc 14784
	add	%x24, %x24, %x5  #1281 pc 14788
	flw	%f0, 0(%x24)  #1281 pc 14792
	flw	%f1, 40(%x2)  #1281 pc 14796
	fmul	%f0, %f0, %f1  #1281 pc 14800
	addi	%x24, %x0, 8  #pc 14804
	add	%x24, %x24, %x5  #1281 pc 14808
	flw	%f1, 0(%x24)  #1281 pc 14812
	flw	%f2, 32(%x2)  #1281 pc 14816
	fmul	%f1, %f1, %f2  #1281 pc 14820
	fadd	%f0, %f0, %f1  #1281 pc 14824
	addi	%x24, %x0, 12  #pc 14828
	add	%x24, %x24, %x5  #1281 pc 14832
	flw	%f1, 0(%x24)  #1281 pc 14836
	flw	%f2, 24(%x2)  #1281 pc 14840
	fmul	%f1, %f1, %f2  #1281 pc 14844
	fadd	%f0, %f0, %f1  #1281 pc 14848
	lw	%x6, 16(%x2)  #1282 pc 14852
	addi	%x24, %x0, 12  #pc 14856
	add	%x24, %x24, %x6  #1282 pc 14860
	flw	%f1, 0(%x24)  #1282 pc 14864
	fsw	%f0, 56(%x2)  #1283 pc 14868
	fsw	%f1, 64(%x2)  #1283 pc 14872
	sw	%x1, 76(%x2)  #1283 pc 14876
	addi	%x2, %x2, 80  #1283 pc 14880
	jal	%x1, fsqr.2536  #1283 pc 14884
	addi	%x2, %x2, -80  #1283 pc 14888
	lw	%x1, 76(%x2) #1283 pc 14892
	flw	%f1, 64(%x2)  #1283 pc 14896
	flw	%f2, 8(%x2)  #1283 pc 14900
	fmul	%f1, %f2, %f1  #1283 pc 14904
	fsub	%f0, %f0, %f1  #1283 pc 14908
	fsw	%f0, 72(%x2)  #1284 pc 14912
	sw	%x1, 84(%x2)  #1284 pc 14916
	addi	%x2, %x2, 88  #1284 pc 14920
	jal	%x1, fispos.2530  #1284 pc 14924
	addi	%x2, %x2, -88  #1284 pc 14928
	lw	%x1, 84(%x2) #1284 pc 14932
	beq	%x5, %x0, 12  #1284 pc 14936
	j	be_else.9331 #pc 14940
	nop #pc 14944
	addi	%x5, %x0, 0  #0 pc 14948
	ret #pc 14952
	nop #pc 14956
be_else.9331: #pc 14956
	lw	%x5, 4(%x2)  #1285 pc 14960
	sw	%x1, 84(%x2)  #1285 pc 14964
	addi	%x2, %x2, 88  #1285 pc 14968
	jal	%x1, o_isinvert.2688  #1285 pc 14972
	addi	%x2, %x2, -88  #1285 pc 14976
	lw	%x1, 84(%x2) #1285 pc 14980
	beq	%x5, %x0, 12  #1285 pc 14984
	j	be_else.9332 #pc 14988
	nop #pc 14992
	flw	%f0, 72(%x2)  #1288 pc 14996
	fsqrt	%f0, %f0  #1288 pc 15000
	flw	%f1, 56(%x2)  #1288 pc 15004
	fsub	%f0, %f1, %f0  #1288 pc 15008
	lw	%x5, 48(%x2)  #1288 pc 15012
	addi	%x24, %x0, 16  #pc 15016
	add	%x24, %x24, %x5  #1288 pc 15020
	flw	%f1, 0(%x24)  #1288 pc 15024
	fmul	%f0, %f0, %f1  #1288 pc 15028
	lw	%x5, 0(%x2)  #1288 pc 15032
	add	%x24, %x0, %x5  #1288 pc 15036
	fsw	%f0, 0(%x24) #1288 pc 15040
	j	be_cont.9333 #pc 15044
	nop #pc 15048
be_else.9332: #pc 15048
	flw	%f0, 72(%x2)  #1286 pc 15052
	fsqrt	%f0, %f0  #1286 pc 15056
	flw	%f1, 56(%x2)  #1286 pc 15060
	fadd	%f0, %f1, %f0  #1286 pc 15064
	lw	%x5, 48(%x2)  #1286 pc 15068
	addi	%x24, %x0, 16  #pc 15072
	add	%x24, %x24, %x5  #1286 pc 15076
	flw	%f1, 0(%x24)  #1286 pc 15080
	fmul	%f0, %f0, %f1  #1286 pc 15084
	lw	%x5, 0(%x2)  #1286 pc 15088
	add	%x24, %x0, %x5  #1286 pc 15092
	fsw	%f0, 0(%x24) #1286 pc 15096
be_cont.9333: #pc 15096
	addi	%x5, %x0, 1  #0 pc 15100
	ret #pc 15104
	nop #pc 15108
be_else.9329: #pc 15108
	addi	%x5, %x0, 0  #0 pc 15112
	ret #pc 15116
	nop #pc 15120
solver_fast2.2857:  #pc 15124
	addi	%x24, %x0, 16  #pc 15124
	add	%x24, %x24, %x22  #1295 pc 15128
	lw	%x7, 0(%x24)  #1295 pc 15132
	addi	%x24, %x0, 12  #pc 15136
	add	%x24, %x24, %x22  #1295 pc 15140
	lw	%x9, 0(%x24)  #1295 pc 15144
	addi	%x24, %x0, 8  #pc 15148
	add	%x24, %x24, %x22  #1295 pc 15152
	lw	%x10, 0(%x24)  #1295 pc 15156
	addi	%x24, %x0, 4  #pc 15160
	add	%x24, %x24, %x22  #1295 pc 15164
	lw	%x11, 0(%x24)  #1295 pc 15168
	slli	%x12, %x5, 2  #1295 pc 15172
	add	%x24, %x12, %x11  #1295 pc 15176
	lw	%x11, 0(%x24)  #1295 pc 15180
	sw	%x9, 0(%x2)  #1296 pc 15184
	sw	%x7, 4(%x2)  #1296 pc 15188
	sw	%x10, 8(%x2)  #1296 pc 15192
	sw	%x11, 12(%x2)  #1296 pc 15196
	sw	%x5, 16(%x2)  #1296 pc 15200
	sw	%x6, 20(%x2)  #1296 pc 15204
	addi	%x5, %x11, 0  #0 pc 15208
	sw	%x1, 28(%x2)  #1296 pc 15212
	addi	%x2, %x2, 32  #1296 pc 15216
	jal	%x1, o_param_ctbl.2722  #1296 pc 15220
	addi	%x2, %x2, -32  #1296 pc 15224
	lw	%x1, 28(%x2) #1296 pc 15228
	add	%x24, %x0, %x5  #1297 pc 15232
	flw	%f0, 0(%x24)  #1297 pc 15236
	addi	%x24, %x0, 4  #pc 15240
	add	%x24, %x24, %x5  #1298 pc 15244
	flw	%f1, 0(%x24)  #1298 pc 15248
	addi	%x24, %x0, 8  #pc 15252
	add	%x24, %x24, %x5  #1299 pc 15256
	flw	%f2, 0(%x24)  #1299 pc 15260
	lw	%x6, 20(%x2)  #1300 pc 15264
	sw	%x5, 24(%x2)  #1300 pc 15268
	fsw	%f2, 32(%x2)  #1300 pc 15272
	fsw	%f1, 40(%x2)  #1300 pc 15276
	fsw	%f0, 48(%x2)  #1300 pc 15280
	addi	%x5, %x6, 0  #0 pc 15284
	sw	%x1, 60(%x2)  #1300 pc 15288
	addi	%x2, %x2, 64  #1300 pc 15292
	jal	%x1, d_const.2745  #1300 pc 15296
	addi	%x2, %x2, -64  #1300 pc 15300
	lw	%x1, 60(%x2) #1300 pc 15304
	lw	%x6, 16(%x2)  #1301 pc 15308
	slli	%x6, %x6, 2  #1301 pc 15312
	add	%x24, %x6, %x5  #1301 pc 15316
	lw	%x5, 0(%x24)  #1301 pc 15320
	lw	%x6, 12(%x2)  #1302 pc 15324
	sw	%x5, 56(%x2)  #1302 pc 15328
	addi	%x5, %x6, 0  #0 pc 15332
	sw	%x1, 60(%x2)  #1302 pc 15336
	addi	%x2, %x2, 64  #1302 pc 15340
	jal	%x1, o_form.2684  #1302 pc 15344
	addi	%x2, %x2, -64  #1302 pc 15348
	lw	%x1, 60(%x2) #1302 pc 15352
	addi	%x24, %x0, 1  #pc 15356
	beq	%x5, %x24, 12  #1303 pc 15360
	j	be_else.9335 #pc 15364
	nop #pc 15368
	lw	%x5, 20(%x2)  #1304 pc 15372
	sw	%x1, 60(%x2)  #1304 pc 15376
	addi	%x2, %x2, 64  #1304 pc 15380
	jal	%x1, d_vec.2743  #1304 pc 15384
	addi	%x2, %x2, -64  #1304 pc 15388
	lw	%x1, 60(%x2) #1304 pc 15392
	addi	%x6, %x5, 0  #1304 pc 15396
	flw	%f0, 48(%x2)  #1304 pc 15400
	flw	%f1, 40(%x2)  #1304 pc 15404
	flw	%f2, 32(%x2)  #1304 pc 15408
	lw	%x5, 12(%x2)  #1304 pc 15412
	lw	%x7, 56(%x2)  #1304 pc 15416
	lw	%x22, 8(%x2)  #1304 pc 15420
	lw	%x23, 0(%x22)  #1304 pc 15424
	jalr	%x0, %x23, 0  #1304 pc 15428
	nop #pc 15432
be_else.9335: #pc 15432
	addi	%x24, %x0, 2  #pc 15436
	beq	%x5, %x24, 12  #1305 pc 15440
	j	be_else.9336 #pc 15444
	nop #pc 15448
	flw	%f0, 48(%x2)  #1306 pc 15452
	flw	%f1, 40(%x2)  #1306 pc 15456
	flw	%f2, 32(%x2)  #1306 pc 15460
	lw	%x5, 12(%x2)  #1306 pc 15464
	lw	%x6, 56(%x2)  #1306 pc 15468
	lw	%x7, 24(%x2)  #1306 pc 15472
	lw	%x22, 4(%x2)  #1306 pc 15476
	lw	%x23, 0(%x22)  #1306 pc 15480
	jalr	%x0, %x23, 0  #1306 pc 15484
	nop #pc 15488
be_else.9336: #pc 15488
	flw	%f0, 48(%x2)  #1308 pc 15492
	flw	%f1, 40(%x2)  #1308 pc 15496
	flw	%f2, 32(%x2)  #1308 pc 15500
	lw	%x5, 12(%x2)  #1308 pc 15504
	lw	%x6, 56(%x2)  #1308 pc 15508
	lw	%x7, 24(%x2)  #1308 pc 15512
	lw	%x22, 0(%x2)  #1308 pc 15516
	lw	%x23, 0(%x22)  #1308 pc 15520
	jalr	%x0, %x23, 0  #1308 pc 15524
	nop #pc 15528
setup_rect_table.2860:  #pc 15532
	addi	%x7, %x0, 6  #0 pc 15532
	fmv	%f0, l.6293  #0 pc 15536
	sw	%x6, 0(%x2)  #1317 pc 15540
	sw	%x5, 4(%x2)  #1317 pc 15544
	addi	%x5, %x7, 0  #0 pc 15548
	sw	%x1, 12(%x2)  #1317 pc 15552
	addi	%x2, %x2, 16  #1317 pc 15556
	jal	%x1, create_float_array.2600  #1317 pc 15560
	addi	%x2, %x2, -16  #1317 pc 15564
	lw	%x1, 12(%x2) #1317 pc 15568
	lw	%x6, 4(%x2)  #1319 pc 15572
	add	%x24, %x0, %x6  #1319 pc 15576
	flw	%f0, 0(%x24)  #1319 pc 15580
	sw	%x5, 8(%x2)  #1319 pc 15584
	sw	%x1, 12(%x2)  #1319 pc 15588
	addi	%x2, %x2, 16  #1319 pc 15592
	jal	%x1, fiszero.2528  #1319 pc 15596
	addi	%x2, %x2, -16  #1319 pc 15600
	lw	%x1, 12(%x2) #1319 pc 15604
	beq	%x5, %x0, 12  #1319 pc 15608
	j	be_else.9337 #pc 15612
	nop #pc 15616
	lw	%x5, 0(%x2)  #1323 pc 15620
	sw	%x1, 12(%x2)  #1323 pc 15624
	addi	%x2, %x2, 16  #1323 pc 15628
	jal	%x1, o_isinvert.2688  #1323 pc 15632
	addi	%x2, %x2, -16  #1323 pc 15636
	lw	%x1, 12(%x2) #1323 pc 15640
	lw	%x6, 4(%x2)  #1323 pc 15644
	add	%x24, %x0, %x6  #1323 pc 15648
	flw	%f0, 0(%x24)  #1323 pc 15652
	sw	%x5, 12(%x2)  #1323 pc 15656
	sw	%x1, 20(%x2)  #1323 pc 15660
	addi	%x2, %x2, 24  #1323 pc 15664
	jal	%x1, fisneg.2532  #1323 pc 15668
	addi	%x2, %x2, -24  #1323 pc 15672
	lw	%x1, 20(%x2) #1323 pc 15676
	addi	%x6, %x5, 0  #1323 pc 15680
	lw	%x5, 12(%x2)  #1323 pc 15684
	sw	%x1, 20(%x2)  #1323 pc 15688
	addi	%x2, %x2, 24  #1323 pc 15692
	jal	%x1, xor.2633  #1323 pc 15696
	addi	%x2, %x2, -24  #1323 pc 15700
	lw	%x1, 20(%x2) #1323 pc 15704
	lw	%x6, 0(%x2)  #1323 pc 15708
	sw	%x5, 16(%x2)  #1323 pc 15712
	addi	%x5, %x6, 0  #0 pc 15716
	sw	%x1, 20(%x2)  #1323 pc 15720
	addi	%x2, %x2, 24  #1323 pc 15724
	jal	%x1, o_param_a.2692  #1323 pc 15728
	addi	%x2, %x2, -24  #1323 pc 15732
	lw	%x1, 20(%x2) #1323 pc 15736
	lw	%x5, 16(%x2)  #1323 pc 15740
	sw	%x1, 20(%x2)  #1323 pc 15744
	addi	%x2, %x2, 24  #1323 pc 15748
	jal	%x1, fneg_cond.2638  #1323 pc 15752
	addi	%x2, %x2, -24  #1323 pc 15756
	lw	%x1, 20(%x2) #1323 pc 15760
	lw	%x5, 8(%x2)  #1323 pc 15764
	add	%x24, %x0, %x5  #1323 pc 15768
	fsw	%f0, 0(%x24) #1323 pc 15772
	fmv	%f0, l.6305  #0 pc 15776
	lw	%x6, 4(%x2)  #1325 pc 15780
	add	%x24, %x0, %x6  #1325 pc 15784
	flw	%f1, 0(%x24)  #1325 pc 15788
	fdiv	%f0, %f0, %f1  #1325 pc 15792
	addi	%x24, %x0, 4  #pc 15796
	add	%x24, %x24, %x5  #1325 pc 15800
	fsw	%f0, 0(%x24) #1325 pc 15804
	j	be_cont.9338 #pc 15808
	nop #pc 15812
be_else.9337: #pc 15812
	fmv	%f0, l.6293  #0 pc 15816
	lw	%x5, 8(%x2)  #1320 pc 15820
	addi	%x24, %x0, 4  #pc 15824
	add	%x24, %x24, %x5  #1320 pc 15828
	fsw	%f0, 0(%x24) #1320 pc 15832
be_cont.9338: #pc 15832
	lw	%x6, 4(%x2)  #1327 pc 15836
	addi	%x24, %x0, 4  #pc 15840
	add	%x24, %x24, %x6  #1327 pc 15844
	flw	%f0, 0(%x24)  #1327 pc 15848
	sw	%x1, 20(%x2)  #1327 pc 15852
	addi	%x2, %x2, 24  #1327 pc 15856
	jal	%x1, fiszero.2528  #1327 pc 15860
	addi	%x2, %x2, -24  #1327 pc 15864
	lw	%x1, 20(%x2) #1327 pc 15868
	beq	%x5, %x0, 12  #1327 pc 15872
	j	be_else.9339 #pc 15876
	nop #pc 15880
	lw	%x5, 0(%x2)  #1330 pc 15884
	sw	%x1, 20(%x2)  #1330 pc 15888
	addi	%x2, %x2, 24  #1330 pc 15892
	jal	%x1, o_isinvert.2688  #1330 pc 15896
	addi	%x2, %x2, -24  #1330 pc 15900
	lw	%x1, 20(%x2) #1330 pc 15904
	lw	%x6, 4(%x2)  #1330 pc 15908
	addi	%x24, %x0, 4  #pc 15912
	add	%x24, %x24, %x6  #1330 pc 15916
	flw	%f0, 0(%x24)  #1330 pc 15920
	sw	%x5, 20(%x2)  #1330 pc 15924
	sw	%x1, 28(%x2)  #1330 pc 15928
	addi	%x2, %x2, 32  #1330 pc 15932
	jal	%x1, fisneg.2532  #1330 pc 15936
	addi	%x2, %x2, -32  #1330 pc 15940
	lw	%x1, 28(%x2) #1330 pc 15944
	addi	%x6, %x5, 0  #1330 pc 15948
	lw	%x5, 20(%x2)  #1330 pc 15952
	sw	%x1, 28(%x2)  #1330 pc 15956
	addi	%x2, %x2, 32  #1330 pc 15960
	jal	%x1, xor.2633  #1330 pc 15964
	addi	%x2, %x2, -32  #1330 pc 15968
	lw	%x1, 28(%x2) #1330 pc 15972
	lw	%x6, 0(%x2)  #1330 pc 15976
	sw	%x5, 24(%x2)  #1330 pc 15980
	addi	%x5, %x6, 0  #0 pc 15984
	sw	%x1, 28(%x2)  #1330 pc 15988
	addi	%x2, %x2, 32  #1330 pc 15992
	jal	%x1, o_param_b.2694  #1330 pc 15996
	addi	%x2, %x2, -32  #1330 pc 16000
	lw	%x1, 28(%x2) #1330 pc 16004
	lw	%x5, 24(%x2)  #1330 pc 16008
	sw	%x1, 28(%x2)  #1330 pc 16012
	addi	%x2, %x2, 32  #1330 pc 16016
	jal	%x1, fneg_cond.2638  #1330 pc 16020
	addi	%x2, %x2, -32  #1330 pc 16024
	lw	%x1, 28(%x2) #1330 pc 16028
	lw	%x5, 8(%x2)  #1330 pc 16032
	addi	%x24, %x0, 8  #pc 16036
	add	%x24, %x24, %x5  #1330 pc 16040
	fsw	%f0, 0(%x24) #1330 pc 16044
	fmv	%f0, l.6305  #0 pc 16048
	lw	%x6, 4(%x2)  #1331 pc 16052
	addi	%x24, %x0, 4  #pc 16056
	add	%x24, %x24, %x6  #1331 pc 16060
	flw	%f1, 0(%x24)  #1331 pc 16064
	fdiv	%f0, %f0, %f1  #1331 pc 16068
	addi	%x24, %x0, 12  #pc 16072
	add	%x24, %x24, %x5  #1331 pc 16076
	fsw	%f0, 0(%x24) #1331 pc 16080
	j	be_cont.9340 #pc 16084
	nop #pc 16088
be_else.9339: #pc 16088
	fmv	%f0, l.6293  #0 pc 16092
	lw	%x5, 8(%x2)  #1328 pc 16096
	addi	%x24, %x0, 12  #pc 16100
	add	%x24, %x24, %x5  #1328 pc 16104
	fsw	%f0, 0(%x24) #1328 pc 16108
be_cont.9340: #pc 16108
	lw	%x6, 4(%x2)  #1333 pc 16112
	addi	%x24, %x0, 8  #pc 16116
	add	%x24, %x24, %x6  #1333 pc 16120
	flw	%f0, 0(%x24)  #1333 pc 16124
	sw	%x1, 28(%x2)  #1333 pc 16128
	addi	%x2, %x2, 32  #1333 pc 16132
	jal	%x1, fiszero.2528  #1333 pc 16136
	addi	%x2, %x2, -32  #1333 pc 16140
	lw	%x1, 28(%x2) #1333 pc 16144
	beq	%x5, %x0, 12  #1333 pc 16148
	j	be_else.9341 #pc 16152
	nop #pc 16156
	lw	%x5, 0(%x2)  #1336 pc 16160
	sw	%x1, 28(%x2)  #1336 pc 16164
	addi	%x2, %x2, 32  #1336 pc 16168
	jal	%x1, o_isinvert.2688  #1336 pc 16172
	addi	%x2, %x2, -32  #1336 pc 16176
	lw	%x1, 28(%x2) #1336 pc 16180
	lw	%x6, 4(%x2)  #1336 pc 16184
	addi	%x24, %x0, 8  #pc 16188
	add	%x24, %x24, %x6  #1336 pc 16192
	flw	%f0, 0(%x24)  #1336 pc 16196
	sw	%x5, 28(%x2)  #1336 pc 16200
	sw	%x1, 36(%x2)  #1336 pc 16204
	addi	%x2, %x2, 40  #1336 pc 16208
	jal	%x1, fisneg.2532  #1336 pc 16212
	addi	%x2, %x2, -40  #1336 pc 16216
	lw	%x1, 36(%x2) #1336 pc 16220
	addi	%x6, %x5, 0  #1336 pc 16224
	lw	%x5, 28(%x2)  #1336 pc 16228
	sw	%x1, 36(%x2)  #1336 pc 16232
	addi	%x2, %x2, 40  #1336 pc 16236
	jal	%x1, xor.2633  #1336 pc 16240
	addi	%x2, %x2, -40  #1336 pc 16244
	lw	%x1, 36(%x2) #1336 pc 16248
	lw	%x6, 0(%x2)  #1336 pc 16252
	sw	%x5, 32(%x2)  #1336 pc 16256
	addi	%x5, %x6, 0  #0 pc 16260
	sw	%x1, 36(%x2)  #1336 pc 16264
	addi	%x2, %x2, 40  #1336 pc 16268
	jal	%x1, o_param_c.2696  #1336 pc 16272
	addi	%x2, %x2, -40  #1336 pc 16276
	lw	%x1, 36(%x2) #1336 pc 16280
	lw	%x5, 32(%x2)  #1336 pc 16284
	sw	%x1, 36(%x2)  #1336 pc 16288
	addi	%x2, %x2, 40  #1336 pc 16292
	jal	%x1, fneg_cond.2638  #1336 pc 16296
	addi	%x2, %x2, -40  #1336 pc 16300
	lw	%x1, 36(%x2) #1336 pc 16304
	lw	%x5, 8(%x2)  #1336 pc 16308
	addi	%x24, %x0, 16  #pc 16312
	add	%x24, %x24, %x5  #1336 pc 16316
	fsw	%f0, 0(%x24) #1336 pc 16320
	fmv	%f0, l.6305  #0 pc 16324
	lw	%x6, 4(%x2)  #1337 pc 16328
	addi	%x24, %x0, 8  #pc 16332
	add	%x24, %x24, %x6  #1337 pc 16336
	flw	%f1, 0(%x24)  #1337 pc 16340
	fdiv	%f0, %f0, %f1  #1337 pc 16344
	addi	%x24, %x0, 20  #pc 16348
	add	%x24, %x24, %x5  #1337 pc 16352
	fsw	%f0, 0(%x24) #1337 pc 16356
	j	be_cont.9342 #pc 16360
	nop #pc 16364
be_else.9341: #pc 16364
	fmv	%f0, l.6293  #0 pc 16368
	lw	%x5, 8(%x2)  #1334 pc 16372
	addi	%x24, %x0, 20  #pc 16376
	add	%x24, %x24, %x5  #1334 pc 16380
	fsw	%f0, 0(%x24) #1334 pc 16384
be_cont.9342: #pc 16384
	ret #pc 16388
	nop #pc 16392
setup_surface_table.2863:  #pc 16396
	addi	%x7, %x0, 4  #0 pc 16396
	fmv	%f0, l.6293  #0 pc 16400
	sw	%x6, 0(%x2)  #1344 pc 16404
	sw	%x5, 4(%x2)  #1344 pc 16408
	addi	%x5, %x7, 0  #0 pc 16412
	sw	%x1, 12(%x2)  #1344 pc 16416
	addi	%x2, %x2, 16  #1344 pc 16420
	jal	%x1, create_float_array.2600  #1344 pc 16424
	addi	%x2, %x2, -16  #1344 pc 16428
	lw	%x1, 12(%x2) #1344 pc 16432
	lw	%x6, 4(%x2)  #1346 pc 16436
	add	%x24, %x0, %x6  #1346 pc 16440
	flw	%f0, 0(%x24)  #1346 pc 16444
	lw	%x7, 0(%x2)  #1346 pc 16448
	sw	%x5, 8(%x2)  #1346 pc 16452
	fsw	%f0, 16(%x2)  #1346 pc 16456
	addi	%x5, %x7, 0  #0 pc 16460
	sw	%x1, 28(%x2)  #1346 pc 16464
	addi	%x2, %x2, 32  #1346 pc 16468
	jal	%x1, o_param_a.2692  #1346 pc 16472
	addi	%x2, %x2, -32  #1346 pc 16476
	lw	%x1, 28(%x2) #1346 pc 16480
	flw	%f1, 16(%x2)  #1346 pc 16484
	fmul	%f0, %f1, %f0  #1346 pc 16488
	lw	%x5, 4(%x2)  #1346 pc 16492
	addi	%x24, %x0, 4  #pc 16496
	add	%x24, %x24, %x5  #1346 pc 16500
	flw	%f1, 0(%x24)  #1346 pc 16504
	lw	%x6, 0(%x2)  #1346 pc 16508
	fsw	%f0, 24(%x2)  #1346 pc 16512
	fsw	%f1, 32(%x2)  #1346 pc 16516
	addi	%x5, %x6, 0  #0 pc 16520
	sw	%x1, 44(%x2)  #1346 pc 16524
	addi	%x2, %x2, 48  #1346 pc 16528
	jal	%x1, o_param_b.2694  #1346 pc 16532
	addi	%x2, %x2, -48  #1346 pc 16536
	lw	%x1, 44(%x2) #1346 pc 16540
	flw	%f1, 32(%x2)  #1346 pc 16544
	fmul	%f0, %f1, %f0  #1346 pc 16548
	flw	%f1, 24(%x2)  #1346 pc 16552
	fadd	%f0, %f1, %f0  #1346 pc 16556
	lw	%x5, 4(%x2)  #1346 pc 16560
	addi	%x24, %x0, 8  #pc 16564
	add	%x24, %x24, %x5  #1346 pc 16568
	flw	%f1, 0(%x24)  #1346 pc 16572
	lw	%x5, 0(%x2)  #1346 pc 16576
	fsw	%f0, 40(%x2)  #1346 pc 16580
	fsw	%f1, 48(%x2)  #1346 pc 16584
	sw	%x1, 60(%x2)  #1346 pc 16588
	addi	%x2, %x2, 64  #1346 pc 16592
	jal	%x1, o_param_c.2696  #1346 pc 16596
	addi	%x2, %x2, -64  #1346 pc 16600
	lw	%x1, 60(%x2) #1346 pc 16604
	flw	%f1, 48(%x2)  #1346 pc 16608
	fmul	%f0, %f1, %f0  #1346 pc 16612
	flw	%f1, 40(%x2)  #1346 pc 16616
	fadd	%f0, %f1, %f0  #1346 pc 16620
	fsw	%f0, 56(%x2)  #1348 pc 16624
	sw	%x1, 68(%x2)  #1348 pc 16628
	addi	%x2, %x2, 72  #1348 pc 16632
	jal	%x1, fispos.2530  #1348 pc 16636
	addi	%x2, %x2, -72  #1348 pc 16640
	lw	%x1, 68(%x2) #1348 pc 16644
	beq	%x5, %x0, 12  #1348 pc 16648
	j	be_else.9344 #pc 16652
	nop #pc 16656
	fmv	%f0, l.6293  #0 pc 16660
	lw	%x5, 8(%x2)  #1356 pc 16664
	add	%x24, %x0, %x5  #1356 pc 16668
	fsw	%f0, 0(%x24) #1356 pc 16672
	j	be_cont.9345 #pc 16676
	nop #pc 16680
be_else.9344: #pc 16680
	fmv	%f0, l.6343  #0 pc 16684
	flw	%f1, 56(%x2)  #1350 pc 16688
	fdiv	%f0, %f0, %f1  #1350 pc 16692
	lw	%x5, 8(%x2)  #1350 pc 16696
	add	%x24, %x0, %x5  #1350 pc 16700
	fsw	%f0, 0(%x24) #1350 pc 16704
	lw	%x6, 0(%x2)  #1352 pc 16708
	addi	%x5, %x6, 0  #0 pc 16712
	sw	%x1, 68(%x2)  #1352 pc 16716
	addi	%x2, %x2, 72  #1352 pc 16720
	jal	%x1, o_param_a.2692  #1352 pc 16724
	addi	%x2, %x2, -72  #1352 pc 16728
	lw	%x1, 68(%x2) #1352 pc 16732
	flw	%f1, 56(%x2)  #1352 pc 16736
	fdiv	%f0, %f0, %f1  #1352 pc 16740
	sw	%x1, 68(%x2)  #1352 pc 16744
	addi	%x2, %x2, 72  #1352 pc 16748
	jal	%x1, fneg.2534  #1352 pc 16752
	addi	%x2, %x2, -72  #1352 pc 16756
	lw	%x1, 68(%x2) #1352 pc 16760
	lw	%x5, 8(%x2)  #1352 pc 16764
	addi	%x24, %x0, 4  #pc 16768
	add	%x24, %x24, %x5  #1352 pc 16772
	fsw	%f0, 0(%x24) #1352 pc 16776
	lw	%x6, 0(%x2)  #1353 pc 16780
	addi	%x5, %x6, 0  #0 pc 16784
	sw	%x1, 68(%x2)  #1353 pc 16788
	addi	%x2, %x2, 72  #1353 pc 16792
	jal	%x1, o_param_b.2694  #1353 pc 16796
	addi	%x2, %x2, -72  #1353 pc 16800
	lw	%x1, 68(%x2) #1353 pc 16804
	flw	%f1, 56(%x2)  #1353 pc 16808
	fdiv	%f0, %f0, %f1  #1353 pc 16812
	sw	%x1, 68(%x2)  #1353 pc 16816
	addi	%x2, %x2, 72  #1353 pc 16820
	jal	%x1, fneg.2534  #1353 pc 16824
	addi	%x2, %x2, -72  #1353 pc 16828
	lw	%x1, 68(%x2) #1353 pc 16832
	lw	%x5, 8(%x2)  #1353 pc 16836
	addi	%x24, %x0, 8  #pc 16840
	add	%x24, %x24, %x5  #1353 pc 16844
	fsw	%f0, 0(%x24) #1353 pc 16848
	lw	%x6, 0(%x2)  #1354 pc 16852
	addi	%x5, %x6, 0  #0 pc 16856
	sw	%x1, 68(%x2)  #1354 pc 16860
	addi	%x2, %x2, 72  #1354 pc 16864
	jal	%x1, o_param_c.2696  #1354 pc 16868
	addi	%x2, %x2, -72  #1354 pc 16872
	lw	%x1, 68(%x2) #1354 pc 16876
	flw	%f1, 56(%x2)  #1354 pc 16880
	fdiv	%f0, %f0, %f1  #1354 pc 16884
	sw	%x1, 68(%x2)  #1354 pc 16888
	addi	%x2, %x2, 72  #1354 pc 16892
	jal	%x1, fneg.2534  #1354 pc 16896
	addi	%x2, %x2, -72  #1354 pc 16900
	lw	%x1, 68(%x2) #1354 pc 16904
	lw	%x5, 8(%x2)  #1354 pc 16908
	addi	%x24, %x0, 12  #pc 16912
	add	%x24, %x24, %x5  #1354 pc 16916
	fsw	%f0, 0(%x24) #1354 pc 16920
be_cont.9345: #pc 16920
	ret #pc 16924
	nop #pc 16928
setup_second_table.2866:  #pc 16932
	addi	%x7, %x0, 5  #0 pc 16932
	fmv	%f0, l.6293  #0 pc 16936
	sw	%x6, 0(%x2)  #1363 pc 16940
	sw	%x5, 4(%x2)  #1363 pc 16944
	addi	%x5, %x7, 0  #0 pc 16948
	sw	%x1, 12(%x2)  #1363 pc 16952
	addi	%x2, %x2, 16  #1363 pc 16956
	jal	%x1, create_float_array.2600  #1363 pc 16960
	addi	%x2, %x2, -16  #1363 pc 16964
	lw	%x1, 12(%x2) #1363 pc 16968
	lw	%x6, 4(%x2)  #1365 pc 16972
	add	%x24, %x0, %x6  #1365 pc 16976
	flw	%f0, 0(%x24)  #1365 pc 16980
	addi	%x24, %x0, 4  #pc 16984
	add	%x24, %x24, %x6  #1365 pc 16988
	flw	%f1, 0(%x24)  #1365 pc 16992
	addi	%x24, %x0, 8  #pc 16996
	add	%x24, %x24, %x6  #1365 pc 17000
	flw	%f2, 0(%x24)  #1365 pc 17004
	lw	%x7, 0(%x2)  #1365 pc 17008
	sw	%x5, 8(%x2)  #1365 pc 17012
	addi	%x5, %x7, 0  #0 pc 17016
	sw	%x1, 12(%x2)  #1365 pc 17020
	addi	%x2, %x2, 16  #1365 pc 17024
	jal	%x1, quadratic.2797  #1365 pc 17028
	addi	%x2, %x2, -16  #1365 pc 17032
	lw	%x1, 12(%x2) #1365 pc 17036
	lw	%x5, 4(%x2)  #1366 pc 17040
	add	%x24, %x0, %x5  #1366 pc 17044
	flw	%f1, 0(%x24)  #1366 pc 17048
	lw	%x6, 0(%x2)  #1366 pc 17052
	fsw	%f0, 16(%x2)  #1366 pc 17056
	fsw	%f1, 24(%x2)  #1366 pc 17060
	addi	%x5, %x6, 0  #0 pc 17064
	sw	%x1, 36(%x2)  #1366 pc 17068
	addi	%x2, %x2, 40  #1366 pc 17072
	jal	%x1, o_param_a.2692  #1366 pc 17076
	addi	%x2, %x2, -40  #1366 pc 17080
	lw	%x1, 36(%x2) #1366 pc 17084
	flw	%f1, 24(%x2)  #1366 pc 17088
	fmul	%f0, %f1, %f0  #1366 pc 17092
	sw	%x1, 36(%x2)  #1366 pc 17096
	addi	%x2, %x2, 40  #1366 pc 17100
	jal	%x1, fneg.2534  #1366 pc 17104
	addi	%x2, %x2, -40  #1366 pc 17108
	lw	%x1, 36(%x2) #1366 pc 17112
	lw	%x5, 4(%x2)  #1367 pc 17116
	addi	%x24, %x0, 4  #pc 17120
	add	%x24, %x24, %x5  #1367 pc 17124
	flw	%f1, 0(%x24)  #1367 pc 17128
	lw	%x6, 0(%x2)  #1367 pc 17132
	fsw	%f0, 32(%x2)  #1367 pc 17136
	fsw	%f1, 40(%x2)  #1367 pc 17140
	addi	%x5, %x6, 0  #0 pc 17144
	sw	%x1, 52(%x2)  #1367 pc 17148
	addi	%x2, %x2, 56  #1367 pc 17152
	jal	%x1, o_param_b.2694  #1367 pc 17156
	addi	%x2, %x2, -56  #1367 pc 17160
	lw	%x1, 52(%x2) #1367 pc 17164
	flw	%f1, 40(%x2)  #1367 pc 17168
	fmul	%f0, %f1, %f0  #1367 pc 17172
	sw	%x1, 52(%x2)  #1367 pc 17176
	addi	%x2, %x2, 56  #1367 pc 17180
	jal	%x1, fneg.2534  #1367 pc 17184
	addi	%x2, %x2, -56  #1367 pc 17188
	lw	%x1, 52(%x2) #1367 pc 17192
	lw	%x5, 4(%x2)  #1368 pc 17196
	addi	%x24, %x0, 8  #pc 17200
	add	%x24, %x24, %x5  #1368 pc 17204
	flw	%f1, 0(%x24)  #1368 pc 17208
	lw	%x6, 0(%x2)  #1368 pc 17212
	fsw	%f0, 48(%x2)  #1368 pc 17216
	fsw	%f1, 56(%x2)  #1368 pc 17220
	addi	%x5, %x6, 0  #0 pc 17224
	sw	%x1, 68(%x2)  #1368 pc 17228
	addi	%x2, %x2, 72  #1368 pc 17232
	jal	%x1, o_param_c.2696  #1368 pc 17236
	addi	%x2, %x2, -72  #1368 pc 17240
	lw	%x1, 68(%x2) #1368 pc 17244
	flw	%f1, 56(%x2)  #1368 pc 17248
	fmul	%f0, %f1, %f0  #1368 pc 17252
	sw	%x1, 68(%x2)  #1368 pc 17256
	addi	%x2, %x2, 72  #1368 pc 17260
	jal	%x1, fneg.2534  #1368 pc 17264
	addi	%x2, %x2, -72  #1368 pc 17268
	lw	%x1, 68(%x2) #1368 pc 17272
	lw	%x5, 8(%x2)  #1370 pc 17276
	flw	%f1, 16(%x2)  #1370 pc 17280
	add	%x24, %x0, %x5  #1370 pc 17284
	fsw	%f1, 0(%x24) #1370 pc 17288
	lw	%x6, 0(%x2)  #1374 pc 17292
	fsw	%f0, 64(%x2)  #1374 pc 17296
	addi	%x5, %x6, 0  #0 pc 17300
	sw	%x1, 76(%x2)  #1374 pc 17304
	addi	%x2, %x2, 80  #1374 pc 17308
	jal	%x1, o_isrot.2690  #1374 pc 17312
	addi	%x2, %x2, -80  #1374 pc 17316
	lw	%x1, 76(%x2) #1374 pc 17320
	beq	%x5, %x0, 12  #1374 pc 17324
	j	be_else.9347 #pc 17328
	nop #pc 17332
	lw	%x5, 8(%x2)  #1379 pc 17336
	flw	%f0, 32(%x2)  #1379 pc 17340
	addi	%x24, %x0, 4  #pc 17344
	add	%x24, %x24, %x5  #1379 pc 17348
	fsw	%f0, 0(%x24) #1379 pc 17352
	flw	%f0, 48(%x2)  #1380 pc 17356
	addi	%x24, %x0, 8  #pc 17360
	add	%x24, %x24, %x5  #1380 pc 17364
	fsw	%f0, 0(%x24) #1380 pc 17368
	flw	%f0, 64(%x2)  #1381 pc 17372
	addi	%x24, %x0, 12  #pc 17376
	add	%x24, %x24, %x5  #1381 pc 17380
	fsw	%f0, 0(%x24) #1381 pc 17384
	j	be_cont.9348 #pc 17388
	nop #pc 17392
be_else.9347: #pc 17392
	lw	%x5, 4(%x2)  #1375 pc 17396
	addi	%x24, %x0, 8  #pc 17400
	add	%x24, %x24, %x5  #1375 pc 17404
	flw	%f0, 0(%x24)  #1375 pc 17408
	lw	%x6, 0(%x2)  #1375 pc 17412
	fsw	%f0, 72(%x2)  #1375 pc 17416
	addi	%x5, %x6, 0  #0 pc 17420
	sw	%x1, 84(%x2)  #1375 pc 17424
	addi	%x2, %x2, 88  #1375 pc 17428
	jal	%x1, o_param_r2.2718  #1375 pc 17432
	addi	%x2, %x2, -88  #1375 pc 17436
	lw	%x1, 84(%x2) #1375 pc 17440
	flw	%f1, 72(%x2)  #1375 pc 17444
	fmul	%f0, %f1, %f0  #1375 pc 17448
	lw	%x5, 4(%x2)  #1375 pc 17452
	addi	%x24, %x0, 4  #pc 17456
	add	%x24, %x24, %x5  #1375 pc 17460
	flw	%f1, 0(%x24)  #1375 pc 17464
	lw	%x6, 0(%x2)  #1375 pc 17468
	fsw	%f0, 80(%x2)  #1375 pc 17472
	fsw	%f1, 88(%x2)  #1375 pc 17476
	addi	%x5, %x6, 0  #0 pc 17480
	sw	%x1, 100(%x2)  #1375 pc 17484
	addi	%x2, %x2, 104  #1375 pc 17488
	jal	%x1, o_param_r3.2720  #1375 pc 17492
	addi	%x2, %x2, -104  #1375 pc 17496
	lw	%x1, 100(%x2) #1375 pc 17500
	flw	%f1, 88(%x2)  #1375 pc 17504
	fmul	%f0, %f1, %f0  #1375 pc 17508
	flw	%f1, 80(%x2)  #1375 pc 17512
	fadd	%f0, %f1, %f0  #1375 pc 17516
	sw	%x1, 100(%x2)  #1375 pc 17520
	addi	%x2, %x2, 104  #1375 pc 17524
	jal	%x1, fhalf.2538  #1375 pc 17528
	addi	%x2, %x2, -104  #1375 pc 17532
	lw	%x1, 100(%x2) #1375 pc 17536
	flw	%f1, 32(%x2)  #1375 pc 17540
	fsub	%f0, %f1, %f0  #1375 pc 17544
	lw	%x5, 8(%x2)  #1375 pc 17548
	addi	%x24, %x0, 4  #pc 17552
	add	%x24, %x24, %x5  #1375 pc 17556
	fsw	%f0, 0(%x24) #1375 pc 17560
	lw	%x6, 4(%x2)  #1376 pc 17564
	addi	%x24, %x0, 8  #pc 17568
	add	%x24, %x24, %x6  #1376 pc 17572
	flw	%f0, 0(%x24)  #1376 pc 17576
	lw	%x7, 0(%x2)  #1376 pc 17580
	fsw	%f0, 96(%x2)  #1376 pc 17584
	addi	%x5, %x7, 0  #0 pc 17588
	sw	%x1, 108(%x2)  #1376 pc 17592
	addi	%x2, %x2, 112  #1376 pc 17596
	jal	%x1, o_param_r1.2716  #1376 pc 17600
	addi	%x2, %x2, -112  #1376 pc 17604
	lw	%x1, 108(%x2) #1376 pc 17608
	flw	%f1, 96(%x2)  #1376 pc 17612
	fmul	%f0, %f1, %f0  #1376 pc 17616
	lw	%x5, 4(%x2)  #1376 pc 17620
	add	%x24, %x0, %x5  #1376 pc 17624
	flw	%f1, 0(%x24)  #1376 pc 17628
	lw	%x6, 0(%x2)  #1376 pc 17632
	fsw	%f0, 104(%x2)  #1376 pc 17636
	fsw	%f1, 112(%x2)  #1376 pc 17640
	addi	%x5, %x6, 0  #0 pc 17644
	sw	%x1, 124(%x2)  #1376 pc 17648
	addi	%x2, %x2, 128  #1376 pc 17652
	jal	%x1, o_param_r3.2720  #1376 pc 17656
	addi	%x2, %x2, -128  #1376 pc 17660
	lw	%x1, 124(%x2) #1376 pc 17664
	flw	%f1, 112(%x2)  #1376 pc 17668
	fmul	%f0, %f1, %f0  #1376 pc 17672
	flw	%f1, 104(%x2)  #1376 pc 17676
	fadd	%f0, %f1, %f0  #1376 pc 17680
	sw	%x1, 124(%x2)  #1376 pc 17684
	addi	%x2, %x2, 128  #1376 pc 17688
	jal	%x1, fhalf.2538  #1376 pc 17692
	addi	%x2, %x2, -128  #1376 pc 17696
	lw	%x1, 124(%x2) #1376 pc 17700
	flw	%f1, 48(%x2)  #1376 pc 17704
	fsub	%f0, %f1, %f0  #1376 pc 17708
	lw	%x5, 8(%x2)  #1376 pc 17712
	addi	%x24, %x0, 8  #pc 17716
	add	%x24, %x24, %x5  #1376 pc 17720
	fsw	%f0, 0(%x24) #1376 pc 17724
	lw	%x6, 4(%x2)  #1377 pc 17728
	addi	%x24, %x0, 4  #pc 17732
	add	%x24, %x24, %x6  #1377 pc 17736
	flw	%f0, 0(%x24)  #1377 pc 17740
	lw	%x7, 0(%x2)  #1377 pc 17744
	fsw	%f0, 120(%x2)  #1377 pc 17748
	addi	%x5, %x7, 0  #0 pc 17752
	sw	%x1, 132(%x2)  #1377 pc 17756
	addi	%x2, %x2, 136  #1377 pc 17760
	jal	%x1, o_param_r1.2716  #1377 pc 17764
	addi	%x2, %x2, -136  #1377 pc 17768
	lw	%x1, 132(%x2) #1377 pc 17772
	flw	%f1, 120(%x2)  #1377 pc 17776
	fmul	%f0, %f1, %f0  #1377 pc 17780
	lw	%x5, 4(%x2)  #1377 pc 17784
	add	%x24, %x0, %x5  #1377 pc 17788
	flw	%f1, 0(%x24)  #1377 pc 17792
	lw	%x5, 0(%x2)  #1377 pc 17796
	fsw	%f0, 128(%x2)  #1377 pc 17800
	fsw	%f1, 136(%x2)  #1377 pc 17804
	sw	%x1, 148(%x2)  #1377 pc 17808
	addi	%x2, %x2, 152  #1377 pc 17812
	jal	%x1, o_param_r2.2718  #1377 pc 17816
	addi	%x2, %x2, -152  #1377 pc 17820
	lw	%x1, 148(%x2) #1377 pc 17824
	flw	%f1, 136(%x2)  #1377 pc 17828
	fmul	%f0, %f1, %f0  #1377 pc 17832
	flw	%f1, 128(%x2)  #1377 pc 17836
	fadd	%f0, %f1, %f0  #1377 pc 17840
	sw	%x1, 148(%x2)  #1377 pc 17844
	addi	%x2, %x2, 152  #1377 pc 17848
	jal	%x1, fhalf.2538  #1377 pc 17852
	addi	%x2, %x2, -152  #1377 pc 17856
	lw	%x1, 148(%x2) #1377 pc 17860
	flw	%f1, 64(%x2)  #1377 pc 17864
	fsub	%f0, %f1, %f0  #1377 pc 17868
	lw	%x5, 8(%x2)  #1377 pc 17872
	addi	%x24, %x0, 12  #pc 17876
	add	%x24, %x24, %x5  #1377 pc 17880
	fsw	%f0, 0(%x24) #1377 pc 17884
be_cont.9348: #pc 17884
	flw	%f0, 16(%x2)  #1383 pc 17888
	sw	%x1, 148(%x2)  #1383 pc 17892
	addi	%x2, %x2, 152  #1383 pc 17896
	jal	%x1, fiszero.2528  #1383 pc 17900
	addi	%x2, %x2, -152  #1383 pc 17904
	lw	%x1, 148(%x2) #1383 pc 17908
	beq	%x5, %x0, 12  #1383 pc 17912
	j	be_else.9349 #pc 17916
	nop #pc 17920
	fmv	%f0, l.6305  #0 pc 17924
	flw	%f1, 16(%x2)  #1384 pc 17928
	fdiv	%f0, %f0, %f1  #1384 pc 17932
	lw	%x5, 8(%x2)  #1384 pc 17936
	addi	%x24, %x0, 16  #pc 17940
	add	%x24, %x24, %x5  #1384 pc 17944
	fsw	%f0, 0(%x24) #1384 pc 17948
	j	be_cont.9350 #pc 17952
	nop #pc 17956
be_else.9349: #pc 17956
be_cont.9350: #pc 17956
	lw	%x5, 8(%x2)  #1386 pc 17960
	ret #pc 17964
	nop #pc 17968
iter_setup_dirvec_constants.2869:  #pc 17972
	addi	%x24, %x0, 4  #pc 17972
	add	%x24, %x24, %x22  #0 pc 17976
	lw	%x7, 0(%x24)  #0 pc 17980
	bge	%x6, %x0, 12  #1392 pc 17984
	j	bge_else.9351 #pc 17988
	nop #pc 17992
	slli	%x9, %x6, 2  #1393 pc 17996
	add	%x24, %x9, %x7  #1393 pc 18000
	lw	%x7, 0(%x24)  #1393 pc 18004
	sw	%x22, 0(%x2)  #1394 pc 18008
	sw	%x6, 4(%x2)  #1394 pc 18012
	sw	%x7, 8(%x2)  #1394 pc 18016
	sw	%x5, 12(%x2)  #1394 pc 18020
	sw	%x1, 20(%x2)  #1394 pc 18024
	addi	%x2, %x2, 24  #1394 pc 18028
	jal	%x1, d_const.2745  #1394 pc 18032
	addi	%x2, %x2, -24  #1394 pc 18036
	lw	%x1, 20(%x2) #1394 pc 18040
	lw	%x6, 12(%x2)  #1395 pc 18044
	sw	%x5, 16(%x2)  #1395 pc 18048
	addi	%x5, %x6, 0  #0 pc 18052
	sw	%x1, 20(%x2)  #1395 pc 18056
	addi	%x2, %x2, 24  #1395 pc 18060
	jal	%x1, d_vec.2743  #1395 pc 18064
	addi	%x2, %x2, -24  #1395 pc 18068
	lw	%x1, 20(%x2) #1395 pc 18072
	lw	%x6, 8(%x2)  #1396 pc 18076
	sw	%x5, 20(%x2)  #1396 pc 18080
	addi	%x5, %x6, 0  #0 pc 18084
	sw	%x1, 28(%x2)  #1396 pc 18088
	addi	%x2, %x2, 32  #1396 pc 18092
	jal	%x1, o_form.2684  #1396 pc 18096
	addi	%x2, %x2, -32  #1396 pc 18100
	lw	%x1, 28(%x2) #1396 pc 18104
	addi	%x24, %x0, 1  #pc 18108
	beq	%x5, %x24, 12  #1397 pc 18112
	j	be_else.9352 #pc 18116
	nop #pc 18120
	lw	%x5, 20(%x2)  #1398 pc 18124
	lw	%x6, 8(%x2)  #1398 pc 18128
	sw	%x1, 28(%x2)  #1398 pc 18132
	addi	%x2, %x2, 32  #1398 pc 18136
	jal	%x1, setup_rect_table.2860  #1398 pc 18140
	addi	%x2, %x2, -32  #1398 pc 18144
	lw	%x1, 28(%x2) #1398 pc 18148
	lw	%x6, 4(%x2)  #1398 pc 18152
	slli	%x7, %x6, 2  #1398 pc 18156
	lw	%x9, 16(%x2)  #1398 pc 18160
	add	%x24, %x7, %x9  #1398 pc 18164
	sw	%x5, 0(%x24)  #1398 pc 18168
	j	be_cont.9353 #pc 18172
	nop #pc 18176
be_else.9352: #pc 18176
	addi	%x24, %x0, 2  #pc 18180
	beq	%x5, %x24, 12  #1399 pc 18184
	j	be_else.9354 #pc 18188
	nop #pc 18192
	lw	%x5, 20(%x2)  #1400 pc 18196
	lw	%x6, 8(%x2)  #1400 pc 18200
	sw	%x1, 28(%x2)  #1400 pc 18204
	addi	%x2, %x2, 32  #1400 pc 18208
	jal	%x1, setup_surface_table.2863  #1400 pc 18212
	addi	%x2, %x2, -32  #1400 pc 18216
	lw	%x1, 28(%x2) #1400 pc 18220
	lw	%x6, 4(%x2)  #1400 pc 18224
	slli	%x7, %x6, 2  #1400 pc 18228
	lw	%x9, 16(%x2)  #1400 pc 18232
	add	%x24, %x7, %x9  #1400 pc 18236
	sw	%x5, 0(%x24)  #1400 pc 18240
	j	be_cont.9355 #pc 18244
	nop #pc 18248
be_else.9354: #pc 18248
	lw	%x5, 20(%x2)  #1402 pc 18252
	lw	%x6, 8(%x2)  #1402 pc 18256
	sw	%x1, 28(%x2)  #1402 pc 18260
	addi	%x2, %x2, 32  #1402 pc 18264
	jal	%x1, setup_second_table.2866  #1402 pc 18268
	addi	%x2, %x2, -32  #1402 pc 18272
	lw	%x1, 28(%x2) #1402 pc 18276
	lw	%x6, 4(%x2)  #1402 pc 18280
	slli	%x7, %x6, 2  #1402 pc 18284
	lw	%x9, 16(%x2)  #1402 pc 18288
	add	%x24, %x7, %x9  #1402 pc 18292
	sw	%x5, 0(%x24)  #1402 pc 18296
be_cont.9355: #pc 18296
be_cont.9353: #pc 18296
	addi	%x6, %x6, -1  #1404 pc 18300
	lw	%x5, 12(%x2)  #1404 pc 18304
	lw	%x22, 0(%x2)  #1404 pc 18308
	lw	%x23, 0(%x22)  #1404 pc 18312
	jalr	%x0, %x23, 0  #1404 pc 18316
	nop #pc 18320
bge_else.9351: #pc 18320
	ret #pc 18324
	nop #pc 18328
setup_dirvec_constants.2872:  #pc 18332
	addi	%x24, %x0, 8  #pc 18332
	add	%x24, %x24, %x22  #0 pc 18336
	lw	%x6, 0(%x24)  #0 pc 18340
	addi	%x24, %x0, 4  #pc 18344
	add	%x24, %x24, %x22  #0 pc 18348
	lw	%x22, 0(%x24)  #0 pc 18352
	add	%x24, %x0, %x6  #1409 pc 18356
	lw	%x6, 0(%x24)  #1409 pc 18360
	addi	%x6, %x6, -1  #1409 pc 18364
	lw	%x23, 0(%x22)  #1409 pc 18368
	jalr	%x0, %x23, 0  #1409 pc 18372
	nop #pc 18376
setup_startp_constants.2874:  #pc 18380
	addi	%x24, %x0, 4  #pc 18380
	add	%x24, %x24, %x22  #0 pc 18384
	lw	%x7, 0(%x24)  #0 pc 18388
	bge	%x6, %x0, 12  #1417 pc 18392
	j	bge_else.9357 #pc 18396
	nop #pc 18400
	slli	%x9, %x6, 2  #1418 pc 18404
	add	%x24, %x9, %x7  #1418 pc 18408
	lw	%x7, 0(%x24)  #1418 pc 18412
	sw	%x22, 0(%x2)  #1419 pc 18416
	sw	%x6, 4(%x2)  #1419 pc 18420
	sw	%x5, 8(%x2)  #1419 pc 18424
	sw	%x7, 12(%x2)  #1419 pc 18428
	addi	%x5, %x7, 0  #0 pc 18432
	sw	%x1, 20(%x2)  #1419 pc 18436
	addi	%x2, %x2, 24  #1419 pc 18440
	jal	%x1, o_param_ctbl.2722  #1419 pc 18444
	addi	%x2, %x2, -24  #1419 pc 18448
	lw	%x1, 20(%x2) #1419 pc 18452
	lw	%x6, 12(%x2)  #1420 pc 18456
	sw	%x5, 16(%x2)  #1420 pc 18460
	addi	%x5, %x6, 0  #0 pc 18464
	sw	%x1, 20(%x2)  #1420 pc 18468
	addi	%x2, %x2, 24  #1420 pc 18472
	jal	%x1, o_form.2684  #1420 pc 18476
	addi	%x2, %x2, -24  #1420 pc 18480
	lw	%x1, 20(%x2) #1420 pc 18484
	lw	%x6, 8(%x2)  #1421 pc 18488
	add	%x24, %x0, %x6  #1421 pc 18492
	flw	%f0, 0(%x24)  #1421 pc 18496
	lw	%x7, 12(%x2)  #1421 pc 18500
	sw	%x5, 20(%x2)  #1421 pc 18504
	fsw	%f0, 24(%x2)  #1421 pc 18508
	addi	%x5, %x7, 0  #0 pc 18512
	sw	%x1, 36(%x2)  #1421 pc 18516
	addi	%x2, %x2, 40  #1421 pc 18520
	jal	%x1, o_param_x.2700  #1421 pc 18524
	addi	%x2, %x2, -40  #1421 pc 18528
	lw	%x1, 36(%x2) #1421 pc 18532
	flw	%f1, 24(%x2)  #1421 pc 18536
	fsub	%f0, %f1, %f0  #1421 pc 18540
	lw	%x5, 16(%x2)  #1421 pc 18544
	add	%x24, %x0, %x5  #1421 pc 18548
	fsw	%f0, 0(%x24) #1421 pc 18552
	lw	%x6, 8(%x2)  #1422 pc 18556
	addi	%x24, %x0, 4  #pc 18560
	add	%x24, %x24, %x6  #1422 pc 18564
	flw	%f0, 0(%x24)  #1422 pc 18568
	lw	%x7, 12(%x2)  #1422 pc 18572
	fsw	%f0, 32(%x2)  #1422 pc 18576
	addi	%x5, %x7, 0  #0 pc 18580
	sw	%x1, 44(%x2)  #1422 pc 18584
	addi	%x2, %x2, 48  #1422 pc 18588
	jal	%x1, o_param_y.2702  #1422 pc 18592
	addi	%x2, %x2, -48  #1422 pc 18596
	lw	%x1, 44(%x2) #1422 pc 18600
	flw	%f1, 32(%x2)  #1422 pc 18604
	fsub	%f0, %f1, %f0  #1422 pc 18608
	lw	%x5, 16(%x2)  #1422 pc 18612
	addi	%x24, %x0, 4  #pc 18616
	add	%x24, %x24, %x5  #1422 pc 18620
	fsw	%f0, 0(%x24) #1422 pc 18624
	lw	%x6, 8(%x2)  #1423 pc 18628
	addi	%x24, %x0, 8  #pc 18632
	add	%x24, %x24, %x6  #1423 pc 18636
	flw	%f0, 0(%x24)  #1423 pc 18640
	lw	%x7, 12(%x2)  #1423 pc 18644
	fsw	%f0, 40(%x2)  #1423 pc 18648
	addi	%x5, %x7, 0  #0 pc 18652
	sw	%x1, 52(%x2)  #1423 pc 18656
	addi	%x2, %x2, 56  #1423 pc 18660
	jal	%x1, o_param_z.2704  #1423 pc 18664
	addi	%x2, %x2, -56  #1423 pc 18668
	lw	%x1, 52(%x2) #1423 pc 18672
	flw	%f1, 40(%x2)  #1423 pc 18676
	fsub	%f0, %f1, %f0  #1423 pc 18680
	lw	%x5, 16(%x2)  #1423 pc 18684
	addi	%x24, %x0, 8  #pc 18688
	add	%x24, %x24, %x5  #1423 pc 18692
	fsw	%f0, 0(%x24) #1423 pc 18696
	lw	%x6, 20(%x2)  #1424 pc 18700
	addi	%x24, %x0, 2  #pc 18704
	beq	%x6, %x24, 12  #1424 pc 18708
	j	be_else.9358 #pc 18712
	nop #pc 18716
	lw	%x6, 12(%x2)  #1426 pc 18720
	addi	%x5, %x6, 0  #0 pc 18724
	sw	%x1, 52(%x2)  #1426 pc 18728
	addi	%x2, %x2, 56  #1426 pc 18732
	jal	%x1, o_param_abc.2698  #1426 pc 18736
	addi	%x2, %x2, -56  #1426 pc 18740
	lw	%x1, 52(%x2) #1426 pc 18744
	lw	%x6, 16(%x2)  #1426 pc 18748
	add	%x24, %x0, %x6  #1426 pc 18752
	flw	%f0, 0(%x24)  #1426 pc 18756
	addi	%x24, %x0, 4  #pc 18760
	add	%x24, %x24, %x6  #1426 pc 18764
	flw	%f1, 0(%x24)  #1426 pc 18768
	addi	%x24, %x0, 8  #pc 18772
	add	%x24, %x24, %x6  #1426 pc 18776
	flw	%f2, 0(%x24)  #1426 pc 18780
	sw	%x1, 52(%x2)  #1426 pc 18784
	addi	%x2, %x2, 56  #1426 pc 18788
	jal	%x1, veciprod2.2663  #1426 pc 18792
	addi	%x2, %x2, -56  #1426 pc 18796
	lw	%x1, 52(%x2) #1426 pc 18800
	lw	%x5, 16(%x2)  #1425 pc 18804
	addi	%x24, %x0, 12  #pc 18808
	add	%x24, %x24, %x5  #1425 pc 18812
	fsw	%f0, 0(%x24) #1425 pc 18816
	j	be_cont.9359 #pc 18820
	nop #pc 18824
be_else.9358: #pc 18824
	addi	%x24, %x0, 2  #pc 18828
	bge	%x24, %x6, 12  #1427 pc 18832
	j	ble_else.9360 #pc 18836
	nop #pc 18840
	j	ble_cont.9361 #pc 18844
	nop #pc 18848
ble_else.9360: #pc 18848
	add	%x24, %x0, %x5  #1428 pc 18852
	flw	%f0, 0(%x24)  #1428 pc 18856
	addi	%x24, %x0, 4  #pc 18860
	add	%x24, %x24, %x5  #1428 pc 18864
	flw	%f1, 0(%x24)  #1428 pc 18868
	addi	%x24, %x0, 8  #pc 18872
	add	%x24, %x24, %x5  #1428 pc 18876
	flw	%f2, 0(%x24)  #1428 pc 18880
	lw	%x7, 12(%x2)  #1428 pc 18884
	addi	%x5, %x7, 0  #0 pc 18888
	sw	%x1, 52(%x2)  #1428 pc 18892
	addi	%x2, %x2, 56  #1428 pc 18896
	jal	%x1, quadratic.2797  #1428 pc 18900
	addi	%x2, %x2, -56  #1428 pc 18904
	lw	%x1, 52(%x2) #1428 pc 18908
	lw	%x5, 20(%x2)  #1429 pc 18912
	addi	%x24, %x0, 3  #pc 18916
	beq	%x5, %x24, 12  #1429 pc 18920
	j	be_else.9362 #pc 18924
	nop #pc 18928
	fmv	%f1, l.6305  #0 pc 18932
	fsub	%f0, %f0, %f1  #1429 pc 18936
	j	be_cont.9363 #pc 18940
	nop #pc 18944
be_else.9362: #pc 18944
be_cont.9363: #pc 18944
	lw	%x5, 16(%x2)  #1429 pc 18948
	addi	%x24, %x0, 12  #pc 18952
	add	%x24, %x24, %x5  #1429 pc 18956
	fsw	%f0, 0(%x24) #1429 pc 18960
ble_cont.9361: #pc 18960
be_cont.9359: #pc 18960
	lw	%x5, 4(%x2)  #1431 pc 18964
	addi	%x6, %x5, -1  #1431 pc 18968
	lw	%x5, 8(%x2)  #1431 pc 18972
	lw	%x22, 0(%x2)  #1431 pc 18976
	lw	%x23, 0(%x22)  #1431 pc 18980
	jalr	%x0, %x23, 0  #1431 pc 18984
	nop #pc 18988
bge_else.9357: #pc 18988
	ret #pc 18992
	nop #pc 18996
setup_startp.2877:  #pc 19000
	addi	%x24, %x0, 12  #pc 19000
	add	%x24, %x24, %x22  #1436 pc 19004
	lw	%x6, 0(%x24)  #1436 pc 19008
	addi	%x24, %x0, 8  #pc 19012
	add	%x24, %x24, %x22  #1436 pc 19016
	lw	%x7, 0(%x24)  #1436 pc 19020
	addi	%x24, %x0, 4  #pc 19024
	add	%x24, %x24, %x22  #1436 pc 19028
	lw	%x9, 0(%x24)  #1436 pc 19032
	sw	%x5, 0(%x2)  #1436 pc 19036
	sw	%x7, 4(%x2)  #1436 pc 19040
	sw	%x9, 8(%x2)  #1436 pc 19044
	addi	%x23, %x6, 0  #0 pc 19048
	addi	%x6, %x5, 0  #0 pc 19052
	addi	%x5, %x23, 0  #0 pc 19056
	sw	%x1, 12(%x2)  #1436 pc 19060
	addi	%x2, %x2, 16  #1436 pc 19064
	jal	%x1, veccpy.2654  #1436 pc 19068
	addi	%x2, %x2, -16  #1436 pc 19072
	lw	%x1, 12(%x2) #1436 pc 19076
	lw	%x5, 8(%x2)  #1437 pc 19080
	add	%x24, %x0, %x5  #1437 pc 19084
	lw	%x5, 0(%x24)  #1437 pc 19088
	addi	%x6, %x5, -1  #1437 pc 19092
	lw	%x5, 0(%x2)  #1437 pc 19096
	lw	%x22, 4(%x2)  #1437 pc 19100
	lw	%x23, 0(%x22)  #1437 pc 19104
	jalr	%x0, %x23, 0  #1437 pc 19108
	nop #pc 19112
is_rect_outside.2879:  #pc 19116
	fabs	%f0, %f0  #1449 pc 19116
	fsw	%f2, 0(%x2)  #1449 pc 19120
	sw	%x5, 8(%x2)  #1449 pc 19124
	fsw	%f1, 16(%x2)  #1449 pc 19128
	fsw	%f0, 24(%x2)  #1449 pc 19132
	sw	%x1, 36(%x2)  #1449 pc 19136
	addi	%x2, %x2, 40  #1449 pc 19140
	jal	%x1, o_param_a.2692  #1449 pc 19144
	addi	%x2, %x2, -40  #1449 pc 19148
	lw	%x1, 36(%x2) #1449 pc 19152
	fadd	%f1, %f0, %f30  #1449 pc 19156
	flw	%f0, 24(%x2)  #1449 pc 19160
	sw	%x1, 36(%x2)  #1449 pc 19164
	addi	%x2, %x2, 40  #1449 pc 19168
	jal	%x1, fless.2540  #1449 pc 19172
	addi	%x2, %x2, -40  #1449 pc 19176
	lw	%x1, 36(%x2) #1449 pc 19180
	beq	%x5, %x0, 12  #1449 pc 19184
	j	be_else.9366 #pc 19188
	nop #pc 19192
	addi	%x5, %x0, 0  #0 pc 19196
	j	be_cont.9367 #pc 19200
	nop #pc 19204
be_else.9366: #pc 19204
	flw	%f0, 16(%x2)  #1450 pc 19208
	fabs	%f0, %f0  #1450 pc 19212
	lw	%x5, 8(%x2)  #1450 pc 19216
	fsw	%f0, 32(%x2)  #1450 pc 19220
	sw	%x1, 44(%x2)  #1450 pc 19224
	addi	%x2, %x2, 48  #1450 pc 19228
	jal	%x1, o_param_b.2694  #1450 pc 19232
	addi	%x2, %x2, -48  #1450 pc 19236
	lw	%x1, 44(%x2) #1450 pc 19240
	fadd	%f1, %f0, %f30  #1450 pc 19244
	flw	%f0, 32(%x2)  #1450 pc 19248
	sw	%x1, 44(%x2)  #1450 pc 19252
	addi	%x2, %x2, 48  #1450 pc 19256
	jal	%x1, fless.2540  #1450 pc 19260
	addi	%x2, %x2, -48  #1450 pc 19264
	lw	%x1, 44(%x2) #1450 pc 19268
	beq	%x5, %x0, 12  #1450 pc 19272
	j	be_else.9368 #pc 19276
	nop #pc 19280
	addi	%x5, %x0, 0  #0 pc 19284
	j	be_cont.9369 #pc 19288
	nop #pc 19292
be_else.9368: #pc 19292
	flw	%f0, 0(%x2)  #1451 pc 19296
	fabs	%f0, %f0  #1451 pc 19300
	lw	%x5, 8(%x2)  #1451 pc 19304
	fsw	%f0, 40(%x2)  #1451 pc 19308
	sw	%x1, 52(%x2)  #1451 pc 19312
	addi	%x2, %x2, 56  #1451 pc 19316
	jal	%x1, o_param_c.2696  #1451 pc 19320
	addi	%x2, %x2, -56  #1451 pc 19324
	lw	%x1, 52(%x2) #1451 pc 19328
	fadd	%f1, %f0, %f30  #1451 pc 19332
	flw	%f0, 40(%x2)  #1451 pc 19336
	sw	%x1, 52(%x2)  #1451 pc 19340
	addi	%x2, %x2, 56  #1451 pc 19344
	jal	%x1, fless.2540  #1451 pc 19348
	addi	%x2, %x2, -56  #1451 pc 19352
	lw	%x1, 52(%x2) #1451 pc 19356
be_cont.9369: #pc 19356
be_cont.9367: #pc 19356
	beq	%x5, %x0, 12  #1448 pc 19360
	j	be_else.9370 #pc 19364
	nop #pc 19368
	lw	%x5, 8(%x2)  #1454 pc 19372
	sw	%x1, 52(%x2)  #1454 pc 19376
	addi	%x2, %x2, 56  #1454 pc 19380
	jal	%x1, o_isinvert.2688  #1454 pc 19384
	addi	%x2, %x2, -56  #1454 pc 19388
	lw	%x1, 52(%x2) #1454 pc 19392
	beq	%x5, %x0, 12  #1454 pc 19396
	j	be_else.9371 #pc 19400
	nop #pc 19404
	addi	%x5, %x0, 1  #0 pc 19408
	ret #pc 19412
	nop #pc 19416
be_else.9371: #pc 19416
	addi	%x5, %x0, 0  #0 pc 19420
	ret #pc 19424
	nop #pc 19428
be_else.9370: #pc 19428
	lw	%x5, 8(%x2)  #1454 pc 19432
	j	o_isinvert.2688  #1454 pc 19436
	nop #pc 19440
is_plane_outside.2884:  #pc 19444
	sw	%x5, 0(%x2)  #1459 pc 19444
	fsw	%f2, 8(%x2)  #1459 pc 19448
	fsw	%f1, 16(%x2)  #1459 pc 19452
	fsw	%f0, 24(%x2)  #1459 pc 19456
	sw	%x1, 36(%x2)  #1459 pc 19460
	addi	%x2, %x2, 40  #1459 pc 19464
	jal	%x1, o_param_abc.2698  #1459 pc 19468
	addi	%x2, %x2, -40  #1459 pc 19472
	lw	%x1, 36(%x2) #1459 pc 19476
	flw	%f0, 24(%x2)  #1459 pc 19480
	flw	%f1, 16(%x2)  #1459 pc 19484
	flw	%f2, 8(%x2)  #1459 pc 19488
	sw	%x1, 36(%x2)  #1459 pc 19492
	addi	%x2, %x2, 40  #1459 pc 19496
	jal	%x1, veciprod2.2663  #1459 pc 19500
	addi	%x2, %x2, -40  #1459 pc 19504
	lw	%x1, 36(%x2) #1459 pc 19508
	lw	%x5, 0(%x2)  #1460 pc 19512
	fsw	%f0, 32(%x2)  #1460 pc 19516
	sw	%x1, 44(%x2)  #1460 pc 19520
	addi	%x2, %x2, 48  #1460 pc 19524
	jal	%x1, o_isinvert.2688  #1460 pc 19528
	addi	%x2, %x2, -48  #1460 pc 19532
	lw	%x1, 44(%x2) #1460 pc 19536
	flw	%f0, 32(%x2)  #1460 pc 19540
	sw	%x5, 40(%x2)  #1460 pc 19544
	sw	%x1, 44(%x2)  #1460 pc 19548
	addi	%x2, %x2, 48  #1460 pc 19552
	jal	%x1, fisneg.2532  #1460 pc 19556
	addi	%x2, %x2, -48  #1460 pc 19560
	lw	%x1, 44(%x2) #1460 pc 19564
	addi	%x6, %x5, 0  #1460 pc 19568
	lw	%x5, 40(%x2)  #1460 pc 19572
	sw	%x1, 44(%x2)  #1460 pc 19576
	addi	%x2, %x2, 48  #1460 pc 19580
	jal	%x1, xor.2633  #1460 pc 19584
	addi	%x2, %x2, -48  #1460 pc 19588
	lw	%x1, 44(%x2) #1460 pc 19592
	beq	%x5, %x0, 12  #1460 pc 19596
	j	be_else.9373 #pc 19600
	nop #pc 19604
	addi	%x5, %x0, 1  #0 pc 19608
	ret #pc 19612
	nop #pc 19616
be_else.9373: #pc 19616
	addi	%x5, %x0, 0  #0 pc 19620
	ret #pc 19624
	nop #pc 19628
is_second_outside.2889:  #pc 19632
	sw	%x5, 0(%x2)  #1465 pc 19632
	sw	%x1, 4(%x2)  #1465 pc 19636
	addi	%x2, %x2, 8  #1465 pc 19640
	jal	%x1, quadratic.2797  #1465 pc 19644
	addi	%x2, %x2, -8  #1465 pc 19648
	lw	%x1, 4(%x2) #1465 pc 19652
	lw	%x5, 0(%x2)  #1466 pc 19656
	fsw	%f0, 8(%x2)  #1466 pc 19660
	sw	%x1, 20(%x2)  #1466 pc 19664
	addi	%x2, %x2, 24  #1466 pc 19668
	jal	%x1, o_form.2684  #1466 pc 19672
	addi	%x2, %x2, -24  #1466 pc 19676
	lw	%x1, 20(%x2) #1466 pc 19680
	addi	%x24, %x0, 3  #pc 19684
	beq	%x5, %x24, 12  #1466 pc 19688
	j	be_else.9375 #pc 19692
	nop #pc 19696
	fmv	%f0, l.6305  #0 pc 19700
	flw	%f1, 8(%x2)  #1466 pc 19704
	fsub	%f0, %f1, %f0  #1466 pc 19708
	j	be_cont.9376 #pc 19712
	nop #pc 19716
be_else.9375: #pc 19716
	flw	%f0, 8(%x2)  #1466 pc 19720
be_cont.9376: #pc 19720
	lw	%x5, 0(%x2)  #1467 pc 19724
	fsw	%f0, 16(%x2)  #1467 pc 19728
	sw	%x1, 28(%x2)  #1467 pc 19732
	addi	%x2, %x2, 32  #1467 pc 19736
	jal	%x1, o_isinvert.2688  #1467 pc 19740
	addi	%x2, %x2, -32  #1467 pc 19744
	lw	%x1, 28(%x2) #1467 pc 19748
	flw	%f0, 16(%x2)  #1467 pc 19752
	sw	%x5, 24(%x2)  #1467 pc 19756
	sw	%x1, 28(%x2)  #1467 pc 19760
	addi	%x2, %x2, 32  #1467 pc 19764
	jal	%x1, fisneg.2532  #1467 pc 19768
	addi	%x2, %x2, -32  #1467 pc 19772
	lw	%x1, 28(%x2) #1467 pc 19776
	addi	%x6, %x5, 0  #1467 pc 19780
	lw	%x5, 24(%x2)  #1467 pc 19784
	sw	%x1, 28(%x2)  #1467 pc 19788
	addi	%x2, %x2, 32  #1467 pc 19792
	jal	%x1, xor.2633  #1467 pc 19796
	addi	%x2, %x2, -32  #1467 pc 19800
	lw	%x1, 28(%x2) #1467 pc 19804
	beq	%x5, %x0, 12  #1467 pc 19808
	j	be_else.9377 #pc 19812
	nop #pc 19816
	addi	%x5, %x0, 1  #0 pc 19820
	ret #pc 19824
	nop #pc 19828
be_else.9377: #pc 19828
	addi	%x5, %x0, 0  #0 pc 19832
	ret #pc 19836
	nop #pc 19840
is_outside.2894:  #pc 19844
	fsw	%f2, 0(%x2)  #1472 pc 19844
	fsw	%f1, 8(%x2)  #1472 pc 19848
	sw	%x5, 16(%x2)  #1472 pc 19852
	fsw	%f0, 24(%x2)  #1472 pc 19856
	sw	%x1, 36(%x2)  #1472 pc 19860
	addi	%x2, %x2, 40  #1472 pc 19864
	jal	%x1, o_param_x.2700  #1472 pc 19868
	addi	%x2, %x2, -40  #1472 pc 19872
	lw	%x1, 36(%x2) #1472 pc 19876
	flw	%f1, 24(%x2)  #1472 pc 19880
	fsub	%f0, %f1, %f0  #1472 pc 19884
	lw	%x5, 16(%x2)  #1473 pc 19888
	fsw	%f0, 32(%x2)  #1473 pc 19892
	sw	%x1, 44(%x2)  #1473 pc 19896
	addi	%x2, %x2, 48  #1473 pc 19900
	jal	%x1, o_param_y.2702  #1473 pc 19904
	addi	%x2, %x2, -48  #1473 pc 19908
	lw	%x1, 44(%x2) #1473 pc 19912
	flw	%f1, 8(%x2)  #1473 pc 19916
	fsub	%f0, %f1, %f0  #1473 pc 19920
	lw	%x5, 16(%x2)  #1474 pc 19924
	fsw	%f0, 40(%x2)  #1474 pc 19928
	sw	%x1, 52(%x2)  #1474 pc 19932
	addi	%x2, %x2, 56  #1474 pc 19936
	jal	%x1, o_param_z.2704  #1474 pc 19940
	addi	%x2, %x2, -56  #1474 pc 19944
	lw	%x1, 52(%x2) #1474 pc 19948
	flw	%f1, 0(%x2)  #1474 pc 19952
	fsub	%f0, %f1, %f0  #1474 pc 19956
	lw	%x5, 16(%x2)  #1475 pc 19960
	fsw	%f0, 48(%x2)  #1475 pc 19964
	sw	%x1, 60(%x2)  #1475 pc 19968
	addi	%x2, %x2, 64  #1475 pc 19972
	jal	%x1, o_form.2684  #1475 pc 19976
	addi	%x2, %x2, -64  #1475 pc 19980
	lw	%x1, 60(%x2) #1475 pc 19984
	addi	%x24, %x0, 1  #pc 19988
	beq	%x5, %x24, 12  #1476 pc 19992
	j	be_else.9379 #pc 19996
	nop #pc 20000
	flw	%f0, 32(%x2)  #1477 pc 20004
	flw	%f1, 40(%x2)  #1477 pc 20008
	flw	%f2, 48(%x2)  #1477 pc 20012
	lw	%x5, 16(%x2)  #1477 pc 20016
	j	is_rect_outside.2879  #1477 pc 20020
	nop #pc 20024
be_else.9379: #pc 20024
	addi	%x24, %x0, 2  #pc 20028
	beq	%x5, %x24, 12  #1478 pc 20032
	j	be_else.9380 #pc 20036
	nop #pc 20040
	flw	%f0, 32(%x2)  #1479 pc 20044
	flw	%f1, 40(%x2)  #1479 pc 20048
	flw	%f2, 48(%x2)  #1479 pc 20052
	lw	%x5, 16(%x2)  #1479 pc 20056
	j	is_plane_outside.2884  #1479 pc 20060
	nop #pc 20064
be_else.9380: #pc 20064
	flw	%f0, 32(%x2)  #1481 pc 20068
	flw	%f1, 40(%x2)  #1481 pc 20072
	flw	%f2, 48(%x2)  #1481 pc 20076
	lw	%x5, 16(%x2)  #1481 pc 20080
	j	is_second_outside.2889  #1481 pc 20084
	nop #pc 20088
check_all_inside.2899:  #pc 20092
	addi	%x24, %x0, 4  #pc 20092
	add	%x24, %x24, %x22  #1486 pc 20096
	lw	%x7, 0(%x24)  #1486 pc 20100
	slli	%x9, %x5, 2  #1486 pc 20104
	add	%x24, %x9, %x6  #1486 pc 20108
	lw	%x9, 0(%x24)  #1486 pc 20112
	addi	%x24, %x0, -1  #pc 20116
	beq	%x9, %x24, 12  #1487 pc 20120
	j	be_else.9381 #pc 20124
	nop #pc 20128
	addi	%x5, %x0, 1  #0 pc 20132
	ret #pc 20136
	nop #pc 20140
be_else.9381: #pc 20140
	slli	%x9, %x9, 2  #1490 pc 20144
	add	%x24, %x9, %x7  #1490 pc 20148
	lw	%x7, 0(%x24)  #1490 pc 20152
	fsw	%f2, 0(%x2)  #1490 pc 20156
	fsw	%f1, 8(%x2)  #1490 pc 20160
	fsw	%f0, 16(%x2)  #1490 pc 20164
	sw	%x6, 24(%x2)  #1490 pc 20168
	sw	%x22, 28(%x2)  #1490 pc 20172
	sw	%x5, 32(%x2)  #1490 pc 20176
	addi	%x5, %x7, 0  #0 pc 20180
	sw	%x1, 36(%x2)  #1490 pc 20184
	addi	%x2, %x2, 40  #1490 pc 20188
	jal	%x1, is_outside.2894  #1490 pc 20192
	addi	%x2, %x2, -40  #1490 pc 20196
	lw	%x1, 36(%x2) #1490 pc 20200
	beq	%x5, %x0, 12  #1490 pc 20204
	j	be_else.9382 #pc 20208
	nop #pc 20212
	lw	%x5, 32(%x2)  #1493 pc 20216
	addi	%x5, %x5, 1  #1493 pc 20220
	flw	%f0, 16(%x2)  #1493 pc 20224
	flw	%f1, 8(%x2)  #1493 pc 20228
	flw	%f2, 0(%x2)  #1493 pc 20232
	lw	%x6, 24(%x2)  #1493 pc 20236
	lw	%x22, 28(%x2)  #1493 pc 20240
	lw	%x23, 0(%x22)  #1493 pc 20244
	jalr	%x0, %x23, 0  #1493 pc 20248
	nop #pc 20252
be_else.9382: #pc 20252
	addi	%x5, %x0, 0  #0 pc 20256
	ret #pc 20260
	nop #pc 20264
shadow_check_and_group.2905:  #pc 20268
	addi	%x24, %x0, 28  #pc 20268
	add	%x24, %x24, %x22  #0 pc 20272
	lw	%x7, 0(%x24)  #0 pc 20276
	addi	%x24, %x0, 24  #pc 20280
	add	%x24, %x24, %x22  #0 pc 20284
	lw	%x9, 0(%x24)  #0 pc 20288
	addi	%x24, %x0, 20  #pc 20292
	add	%x24, %x24, %x22  #0 pc 20296
	lw	%x10, 0(%x24)  #0 pc 20300
	addi	%x24, %x0, 16  #pc 20304
	add	%x24, %x24, %x22  #0 pc 20308
	lw	%x11, 0(%x24)  #0 pc 20312
	addi	%x24, %x0, 12  #pc 20316
	add	%x24, %x24, %x22  #0 pc 20320
	lw	%x12, 0(%x24)  #0 pc 20324
	addi	%x24, %x0, 8  #pc 20328
	add	%x24, %x24, %x22  #0 pc 20332
	lw	%x13, 0(%x24)  #0 pc 20336
	addi	%x24, %x0, 4  #pc 20340
	add	%x24, %x24, %x22  #0 pc 20344
	lw	%x14, 0(%x24)  #0 pc 20348
	slli	%x15, %x5, 2  #1506 pc 20352
	add	%x24, %x15, %x6  #1506 pc 20356
	lw	%x15, 0(%x24)  #1506 pc 20360
	addi	%x24, %x0, -1  #pc 20364
	beq	%x15, %x24, 12  #1506 pc 20368
	j	be_else.9383 #pc 20372
	nop #pc 20376
	addi	%x5, %x0, 0  #0 pc 20380
	ret #pc 20384
	nop #pc 20388
be_else.9383: #pc 20388
	slli	%x15, %x5, 2  #1509 pc 20392
	add	%x24, %x15, %x6  #1509 pc 20396
	lw	%x15, 0(%x24)  #1509 pc 20400
	sw	%x14, 0(%x2)  #1510 pc 20404
	sw	%x13, 4(%x2)  #1510 pc 20408
	sw	%x12, 8(%x2)  #1510 pc 20412
	sw	%x6, 12(%x2)  #1510 pc 20416
	sw	%x22, 16(%x2)  #1510 pc 20420
	sw	%x5, 20(%x2)  #1510 pc 20424
	sw	%x10, 24(%x2)  #1510 pc 20428
	sw	%x15, 28(%x2)  #1510 pc 20432
	sw	%x9, 32(%x2)  #1510 pc 20436
	addi	%x6, %x11, 0  #0 pc 20440
	addi	%x5, %x15, 0  #0 pc 20444
	addi	%x22, %x7, 0  #0 pc 20448
	addi	%x7, %x13, 0  #0 pc 20452
	sw	%x1, 36(%x2)  #1510 pc 20456
	lw	%x23, 0(%x22)  #1510 pc 20460
	addi	%x2, %x2, 40  #1510 pc 20464
	jalr	%x1, %x23, 0  #1510 pc 20468
	addi	%x2, %x2, -40  #1510 pc 20472
	lw	%x1, 36(%x2)  #1510 pc 20476
	lw	%x6, 32(%x2)  #1511 pc 20480
	add	%x24, %x0, %x6  #1511 pc 20484
	flw	%f0, 0(%x24)  #1511 pc 20488
	fsw	%f0, 40(%x2)  #1512 pc 20492
	beq	%x5, %x0, 12  #1512 pc 20496
	j	be_else.9385 #pc 20500
	nop #pc 20504
	addi	%x5, %x0, 0  #0 pc 20508
	j	be_cont.9386 #pc 20512
	nop #pc 20516
be_else.9385: #pc 20516
	fmv	%f1, l.6695  #0 pc 20520
	sw	%x1, 52(%x2)  #1512 pc 20524
	addi	%x2, %x2, 56  #1512 pc 20528
	jal	%x1, fless.2540  #1512 pc 20532
	addi	%x2, %x2, -56  #1512 pc 20536
	lw	%x1, 52(%x2) #1512 pc 20540
be_cont.9386: #pc 20540
	beq	%x5, %x0, 12  #1512 pc 20544
	j	be_else.9387 #pc 20548
	nop #pc 20552
	lw	%x5, 28(%x2)  #1528 pc 20556
	slli	%x5, %x5, 2  #1528 pc 20560
	lw	%x6, 24(%x2)  #1528 pc 20564
	add	%x24, %x5, %x6  #1528 pc 20568
	lw	%x5, 0(%x24)  #1528 pc 20572
	sw	%x1, 52(%x2)  #1528 pc 20576
	addi	%x2, %x2, 56  #1528 pc 20580
	jal	%x1, o_isinvert.2688  #1528 pc 20584
	addi	%x2, %x2, -56  #1528 pc 20588
	lw	%x1, 52(%x2) #1528 pc 20592
	beq	%x5, %x0, 12  #1528 pc 20596
	j	be_else.9388 #pc 20600
	nop #pc 20604
	addi	%x5, %x0, 0  #0 pc 20608
	ret #pc 20612
	nop #pc 20616
be_else.9388: #pc 20616
	lw	%x5, 20(%x2)  #1529 pc 20620
	addi	%x5, %x5, 1  #1529 pc 20624
	lw	%x6, 12(%x2)  #1529 pc 20628
	lw	%x22, 16(%x2)  #1529 pc 20632
	lw	%x23, 0(%x22)  #1529 pc 20636
	jalr	%x0, %x23, 0  #1529 pc 20640
	nop #pc 20644
be_else.9387: #pc 20644
	fmv	%f0, l.6697  #0 pc 20648
	flw	%f1, 40(%x2)  #1515 pc 20652
	fadd	%f0, %f1, %f0  #1515 pc 20656
	lw	%x5, 8(%x2)  #1516 pc 20660
	add	%x24, %x0, %x5  #1516 pc 20664
	flw	%f1, 0(%x24)  #1516 pc 20668
	fmul	%f1, %f1, %f0  #1516 pc 20672
	lw	%x6, 4(%x2)  #1516 pc 20676
	add	%x24, %x0, %x6  #1516 pc 20680
	flw	%f2, 0(%x24)  #1516 pc 20684
	fadd	%f1, %f1, %f2  #1516 pc 20688
	addi	%x24, %x0, 4  #pc 20692
	add	%x24, %x24, %x5  #1517 pc 20696
	flw	%f2, 0(%x24)  #1517 pc 20700
	fmul	%f2, %f2, %f0  #1517 pc 20704
	addi	%x24, %x0, 4  #pc 20708
	add	%x24, %x24, %x6  #1517 pc 20712
	flw	%f3, 0(%x24)  #1517 pc 20716
	fadd	%f2, %f2, %f3  #1517 pc 20720
	addi	%x24, %x0, 8  #pc 20724
	add	%x24, %x24, %x5  #1518 pc 20728
	flw	%f3, 0(%x24)  #1518 pc 20732
	fmul	%f0, %f3, %f0  #1518 pc 20736
	addi	%x24, %x0, 8  #pc 20740
	add	%x24, %x24, %x6  #1518 pc 20744
	flw	%f3, 0(%x24)  #1518 pc 20748
	fadd	%f0, %f0, %f3  #1518 pc 20752
	addi	%x5, %x0, 0  #0 pc 20756
	lw	%x6, 12(%x2)  #1519 pc 20760
	lw	%x22, 0(%x2)  #1519 pc 20764
	fadd	%f29, %f2, %f30  #0 pc 20768
	fadd	%f2, %f0, %f30  #0 pc 20772
	fadd	%f0, %f1, %f30  #0 pc 20776
	fadd	%f1, %f29, %f30  #0 pc 20780
	sw	%x1, 52(%x2)  #1519 pc 20784
	lw	%x23, 0(%x22)  #1519 pc 20788
	addi	%x2, %x2, 56  #1519 pc 20792
	jalr	%x1, %x23, 0  #1519 pc 20796
	addi	%x2, %x2, -56  #1519 pc 20800
	lw	%x1, 52(%x2)  #1519 pc 20804
	beq	%x5, %x0, 12  #1519 pc 20808
	j	be_else.9389 #pc 20812
	nop #pc 20816
	lw	%x5, 20(%x2)  #1522 pc 20820
	addi	%x5, %x5, 1  #1522 pc 20824
	lw	%x6, 12(%x2)  #1522 pc 20828
	lw	%x22, 16(%x2)  #1522 pc 20832
	lw	%x23, 0(%x22)  #1522 pc 20836
	jalr	%x0, %x23, 0  #1522 pc 20840
	nop #pc 20844
be_else.9389: #pc 20844
	addi	%x5, %x0, 1  #0 pc 20848
	ret #pc 20852
	nop #pc 20856
shadow_check_one_or_group.2908:  #pc 20860
	addi	%x24, %x0, 8  #pc 20860
	add	%x24, %x24, %x22  #1536 pc 20864
	lw	%x7, 0(%x24)  #1536 pc 20868
	addi	%x24, %x0, 4  #pc 20872
	add	%x24, %x24, %x22  #1536 pc 20876
	lw	%x9, 0(%x24)  #1536 pc 20880
	slli	%x10, %x5, 2  #1536 pc 20884
	add	%x24, %x10, %x6  #1536 pc 20888
	lw	%x10, 0(%x24)  #1536 pc 20892
	addi	%x24, %x0, -1  #pc 20896
	beq	%x10, %x24, 12  #1537 pc 20900
	j	be_else.9390 #pc 20904
	nop #pc 20908
	addi	%x5, %x0, 0  #0 pc 20912
	ret #pc 20916
	nop #pc 20920
be_else.9390: #pc 20920
	slli	%x10, %x10, 2  #1540 pc 20924
	add	%x24, %x10, %x9  #1540 pc 20928
	lw	%x9, 0(%x24)  #1540 pc 20932
	addi	%x10, %x0, 0  #0 pc 20936
	sw	%x6, 0(%x2)  #1541 pc 20940
	sw	%x22, 4(%x2)  #1541 pc 20944
	sw	%x5, 8(%x2)  #1541 pc 20948
	addi	%x6, %x9, 0  #0 pc 20952
	addi	%x5, %x10, 0  #0 pc 20956
	addi	%x22, %x7, 0  #0 pc 20960
	sw	%x1, 12(%x2)  #1541 pc 20964
	lw	%x23, 0(%x22)  #1541 pc 20968
	addi	%x2, %x2, 16  #1541 pc 20972
	jalr	%x1, %x23, 0  #1541 pc 20976
	addi	%x2, %x2, -16  #1541 pc 20980
	lw	%x1, 12(%x2)  #1541 pc 20984
	beq	%x5, %x0, 12  #1542 pc 20988
	j	be_else.9391 #pc 20992
	nop #pc 20996
	lw	%x5, 8(%x2)  #1545 pc 21000
	addi	%x5, %x5, 1  #1545 pc 21004
	lw	%x6, 0(%x2)  #1545 pc 21008
	lw	%x22, 4(%x2)  #1545 pc 21012
	lw	%x23, 0(%x22)  #1545 pc 21016
	jalr	%x0, %x23, 0  #1545 pc 21020
	nop #pc 21024
be_else.9391: #pc 21024
	addi	%x5, %x0, 1  #0 pc 21028
	ret #pc 21032
	nop #pc 21036
shadow_check_one_or_matrix.2911:  #pc 21040
	addi	%x24, %x0, 20  #pc 21040
	add	%x24, %x24, %x22  #1551 pc 21044
	lw	%x7, 0(%x24)  #1551 pc 21048
	addi	%x24, %x0, 16  #pc 21052
	add	%x24, %x24, %x22  #1551 pc 21056
	lw	%x9, 0(%x24)  #1551 pc 21060
	addi	%x24, %x0, 12  #pc 21064
	add	%x24, %x24, %x22  #1551 pc 21068
	lw	%x10, 0(%x24)  #1551 pc 21072
	addi	%x24, %x0, 8  #pc 21076
	add	%x24, %x24, %x22  #1551 pc 21080
	lw	%x11, 0(%x24)  #1551 pc 21084
	addi	%x24, %x0, 4  #pc 21088
	add	%x24, %x24, %x22  #1551 pc 21092
	lw	%x12, 0(%x24)  #1551 pc 21096
	slli	%x13, %x5, 2  #1551 pc 21100
	add	%x24, %x13, %x6  #1551 pc 21104
	lw	%x13, 0(%x24)  #1551 pc 21108
	add	%x24, %x0, %x13  #1552 pc 21112
	lw	%x14, 0(%x24)  #1552 pc 21116
	addi	%x24, %x0, -1  #pc 21120
	beq	%x14, %x24, 12  #1553 pc 21124
	j	be_else.9392 #pc 21128
	nop #pc 21132
	addi	%x5, %x0, 0  #0 pc 21136
	ret #pc 21140
	nop #pc 21144
be_else.9392: #pc 21144
	sw	%x13, 0(%x2)  #1557 pc 21148
	sw	%x10, 4(%x2)  #1557 pc 21152
	sw	%x6, 8(%x2)  #1557 pc 21156
	sw	%x22, 12(%x2)  #1557 pc 21160
	sw	%x5, 16(%x2)  #1557 pc 21164
	addi	%x24, %x0, 99  #pc 21168
	beq	%x14, %x24, 12  #1557 pc 21172
	j	be_else.9393 #pc 21176
	nop #pc 21180
	addi	%x5, %x0, 1  #0 pc 21184
	j	be_cont.9394 #pc 21188
	nop #pc 21192
be_else.9393: #pc 21192
	sw	%x9, 20(%x2)  #1560 pc 21196
	addi	%x6, %x11, 0  #0 pc 21200
	addi	%x5, %x14, 0  #0 pc 21204
	addi	%x22, %x7, 0  #0 pc 21208
	addi	%x7, %x12, 0  #0 pc 21212
	sw	%x1, 28(%x2)  #1560 pc 21216
	lw	%x23, 0(%x22)  #1560 pc 21220
	addi	%x2, %x2, 32  #1560 pc 21224
	jalr	%x1, %x23, 0  #1560 pc 21228
	addi	%x2, %x2, -32  #1560 pc 21232
	lw	%x1, 28(%x2)  #1560 pc 21236
	beq	%x5, %x0, 12  #1563 pc 21240
	j	be_else.9395 #pc 21244
	nop #pc 21248
	addi	%x5, %x0, 0  #0 pc 21252
	j	be_cont.9396 #pc 21256
	nop #pc 21260
be_else.9395: #pc 21260
	lw	%x5, 20(%x2)  #1564 pc 21264
	add	%x24, %x0, %x5  #1564 pc 21268
	flw	%f0, 0(%x24)  #1564 pc 21272
	fmv	%f1, l.6711  #0 pc 21276
	sw	%x1, 28(%x2)  #1564 pc 21280
	addi	%x2, %x2, 32  #1564 pc 21284
	jal	%x1, fless.2540  #1564 pc 21288
	addi	%x2, %x2, -32  #1564 pc 21292
	lw	%x1, 28(%x2) #1564 pc 21296
	beq	%x5, %x0, 12  #1564 pc 21300
	j	be_else.9397 #pc 21304
	nop #pc 21308
	addi	%x5, %x0, 0  #0 pc 21312
	j	be_cont.9398 #pc 21316
	nop #pc 21320
be_else.9397: #pc 21320
	addi	%x5, %x0, 1  #0 pc 21324
	lw	%x6, 0(%x2)  #1565 pc 21328
	lw	%x22, 4(%x2)  #1565 pc 21332
	sw	%x1, 28(%x2)  #1565 pc 21336
	lw	%x23, 0(%x22)  #1565 pc 21340
	addi	%x2, %x2, 32  #1565 pc 21344
	jalr	%x1, %x23, 0  #1565 pc 21348
	addi	%x2, %x2, -32  #1565 pc 21352
	lw	%x1, 28(%x2)  #1565 pc 21356
	beq	%x5, %x0, 12  #1565 pc 21360
	j	be_else.9399 #pc 21364
	nop #pc 21368
	addi	%x5, %x0, 0  #0 pc 21372
	j	be_cont.9400 #pc 21376
	nop #pc 21380
be_else.9399: #pc 21380
	addi	%x5, %x0, 1  #0 pc 21384
be_cont.9400: #pc 21384
be_cont.9398: #pc 21384
be_cont.9396: #pc 21384
be_cont.9394: #pc 21384
	beq	%x5, %x0, 12  #1556 pc 21388
	j	be_else.9401 #pc 21392
	nop #pc 21396
	lw	%x5, 16(%x2)  #1576 pc 21400
	addi	%x5, %x5, 1  #1576 pc 21404
	lw	%x6, 8(%x2)  #1576 pc 21408
	lw	%x22, 12(%x2)  #1576 pc 21412
	lw	%x23, 0(%x22)  #1576 pc 21416
	jalr	%x0, %x23, 0  #1576 pc 21420
	nop #pc 21424
be_else.9401: #pc 21424
	addi	%x5, %x0, 1  #0 pc 21428
	lw	%x6, 0(%x2)  #1571 pc 21432
	lw	%x22, 4(%x2)  #1571 pc 21436
	sw	%x1, 28(%x2)  #1571 pc 21440
	lw	%x23, 0(%x22)  #1571 pc 21444
	addi	%x2, %x2, 32  #1571 pc 21448
	jalr	%x1, %x23, 0  #1571 pc 21452
	addi	%x2, %x2, -32  #1571 pc 21456
	lw	%x1, 28(%x2)  #1571 pc 21460
	beq	%x5, %x0, 12  #1571 pc 21464
	j	be_else.9402 #pc 21468
	nop #pc 21472
	lw	%x5, 16(%x2)  #1574 pc 21476
	addi	%x5, %x5, 1  #1574 pc 21480
	lw	%x6, 8(%x2)  #1574 pc 21484
	lw	%x22, 12(%x2)  #1574 pc 21488
	lw	%x23, 0(%x22)  #1574 pc 21492
	jalr	%x0, %x23, 0  #1574 pc 21496
	nop #pc 21500
be_else.9402: #pc 21500
	addi	%x5, %x0, 1  #0 pc 21504
	ret #pc 21508
	nop #pc 21512
solve_each_element.2914:  #pc 21516
	addi	%x24, %x0, 36  #pc 21516
	add	%x24, %x24, %x22  #1587 pc 21520
	lw	%x9, 0(%x24)  #1587 pc 21524
	addi	%x24, %x0, 32  #pc 21528
	add	%x24, %x24, %x22  #1587 pc 21532
	lw	%x10, 0(%x24)  #1587 pc 21536
	addi	%x24, %x0, 28  #pc 21540
	add	%x24, %x24, %x22  #1587 pc 21544
	lw	%x11, 0(%x24)  #1587 pc 21548
	addi	%x24, %x0, 24  #pc 21552
	add	%x24, %x24, %x22  #1587 pc 21556
	lw	%x12, 0(%x24)  #1587 pc 21560
	addi	%x24, %x0, 20  #pc 21564
	add	%x24, %x24, %x22  #1587 pc 21568
	lw	%x13, 0(%x24)  #1587 pc 21572
	addi	%x24, %x0, 16  #pc 21576
	add	%x24, %x24, %x22  #1587 pc 21580
	lw	%x14, 0(%x24)  #1587 pc 21584
	addi	%x24, %x0, 12  #pc 21588
	add	%x24, %x24, %x22  #1587 pc 21592
	lw	%x15, 0(%x24)  #1587 pc 21596
	addi	%x24, %x0, 8  #pc 21600
	add	%x24, %x24, %x22  #1587 pc 21604
	lw	%x16, 0(%x24)  #1587 pc 21608
	addi	%x24, %x0, 4  #pc 21612
	add	%x24, %x24, %x22  #1587 pc 21616
	lw	%x17, 0(%x24)  #1587 pc 21620
	slli	%x18, %x5, 2  #1587 pc 21624
	add	%x24, %x18, %x6  #1587 pc 21628
	lw	%x18, 0(%x24)  #1587 pc 21632
	addi	%x24, %x0, -1  #pc 21636
	beq	%x18, %x24, 12  #1588 pc 21640
	j	be_else.9403 #pc 21644
	nop #pc 21648
	ret #pc 21652
	nop #pc 21656
be_else.9403: #pc 21656
	sw	%x14, 0(%x2)  #1590 pc 21660
	sw	%x16, 4(%x2)  #1590 pc 21664
	sw	%x15, 8(%x2)  #1590 pc 21668
	sw	%x17, 12(%x2)  #1590 pc 21672
	sw	%x10, 16(%x2)  #1590 pc 21676
	sw	%x9, 20(%x2)  #1590 pc 21680
	sw	%x11, 24(%x2)  #1590 pc 21684
	sw	%x7, 28(%x2)  #1590 pc 21688
	sw	%x6, 32(%x2)  #1590 pc 21692
	sw	%x22, 36(%x2)  #1590 pc 21696
	sw	%x5, 40(%x2)  #1590 pc 21700
	sw	%x13, 44(%x2)  #1590 pc 21704
	sw	%x18, 48(%x2)  #1590 pc 21708
	addi	%x6, %x7, 0  #0 pc 21712
	addi	%x5, %x18, 0  #0 pc 21716
	addi	%x22, %x12, 0  #0 pc 21720
	addi	%x7, %x10, 0  #0 pc 21724
	sw	%x1, 52(%x2)  #1590 pc 21728
	lw	%x23, 0(%x22)  #1590 pc 21732
	addi	%x2, %x2, 56  #1590 pc 21736
	jalr	%x1, %x23, 0  #1590 pc 21740
	addi	%x2, %x2, -56  #1590 pc 21744
	lw	%x1, 52(%x2)  #1590 pc 21748
	beq	%x5, %x0, 12  #1591 pc 21752
	j	be_else.9405 #pc 21756
	nop #pc 21760
	lw	%x5, 48(%x2)  #1619 pc 21764
	slli	%x5, %x5, 2  #1619 pc 21768
	lw	%x6, 44(%x2)  #1619 pc 21772
	add	%x24, %x5, %x6  #1619 pc 21776
	lw	%x5, 0(%x24)  #1619 pc 21780
	sw	%x1, 52(%x2)  #1619 pc 21784
	addi	%x2, %x2, 56  #1619 pc 21788
	jal	%x1, o_isinvert.2688  #1619 pc 21792
	addi	%x2, %x2, -56  #1619 pc 21796
	lw	%x1, 52(%x2) #1619 pc 21800
	beq	%x5, %x0, 12  #1619 pc 21804
	j	be_else.9406 #pc 21808
	nop #pc 21812
	ret #pc 21816
	nop #pc 21820
be_else.9406: #pc 21820
	lw	%x5, 40(%x2)  #1620 pc 21824
	addi	%x5, %x5, 1  #1620 pc 21828
	lw	%x6, 32(%x2)  #1620 pc 21832
	lw	%x7, 28(%x2)  #1620 pc 21836
	lw	%x22, 36(%x2)  #1620 pc 21840
	lw	%x23, 0(%x22)  #1620 pc 21844
	jalr	%x0, %x23, 0  #1620 pc 21848
	nop #pc 21852
be_else.9405: #pc 21852
	lw	%x6, 24(%x2)  #1595 pc 21856
	add	%x24, %x0, %x6  #1595 pc 21860
	flw	%f1, 0(%x24)  #1595 pc 21864
	fmv	%f0, l.6293  #0 pc 21868
	sw	%x5, 52(%x2)  #1597 pc 21872
	fsw	%f1, 56(%x2)  #1597 pc 21876
	sw	%x1, 68(%x2)  #1597 pc 21880
	addi	%x2, %x2, 72  #1597 pc 21884
	jal	%x1, fless.2540  #1597 pc 21888
	addi	%x2, %x2, -72  #1597 pc 21892
	lw	%x1, 68(%x2) #1597 pc 21896
	beq	%x5, %x0, 12  #1597 pc 21900
	j	be_else.9408 #pc 21904
	nop #pc 21908
	j	be_cont.9409 #pc 21912
	nop #pc 21916
be_else.9408: #pc 21916
	lw	%x5, 20(%x2)  #1598 pc 21920
	add	%x24, %x0, %x5  #1598 pc 21924
	flw	%f1, 0(%x24)  #1598 pc 21928
	flw	%f0, 56(%x2)  #1598 pc 21932
	sw	%x1, 68(%x2)  #1598 pc 21936
	addi	%x2, %x2, 72  #1598 pc 21940
	jal	%x1, fless.2540  #1598 pc 21944
	addi	%x2, %x2, -72  #1598 pc 21948
	lw	%x1, 68(%x2) #1598 pc 21952
	beq	%x5, %x0, 12  #1598 pc 21956
	j	be_else.9410 #pc 21960
	nop #pc 21964
	j	be_cont.9411 #pc 21968
	nop #pc 21972
be_else.9410: #pc 21972
	fmv	%f0, l.6697  #0 pc 21976
	flw	%f1, 56(%x2)  #1600 pc 21980
	fadd	%f0, %f1, %f0  #1600 pc 21984
	lw	%x5, 28(%x2)  #1601 pc 21988
	add	%x24, %x0, %x5  #1601 pc 21992
	flw	%f1, 0(%x24)  #1601 pc 21996
	fmul	%f1, %f1, %f0  #1601 pc 22000
	lw	%x6, 16(%x2)  #1601 pc 22004
	add	%x24, %x0, %x6  #1601 pc 22008
	flw	%f2, 0(%x24)  #1601 pc 22012
	fadd	%f1, %f1, %f2  #1601 pc 22016
	addi	%x24, %x0, 4  #pc 22020
	add	%x24, %x24, %x5  #1602 pc 22024
	flw	%f2, 0(%x24)  #1602 pc 22028
	fmul	%f2, %f2, %f0  #1602 pc 22032
	addi	%x24, %x0, 4  #pc 22036
	add	%x24, %x24, %x6  #1602 pc 22040
	flw	%f3, 0(%x24)  #1602 pc 22044
	fadd	%f2, %f2, %f3  #1602 pc 22048
	addi	%x24, %x0, 8  #pc 22052
	add	%x24, %x24, %x5  #1603 pc 22056
	flw	%f3, 0(%x24)  #1603 pc 22060
	fmul	%f3, %f3, %f0  #1603 pc 22064
	addi	%x24, %x0, 8  #pc 22068
	add	%x24, %x24, %x6  #1603 pc 22072
	flw	%f4, 0(%x24)  #1603 pc 22076
	fadd	%f3, %f3, %f4  #1603 pc 22080
	addi	%x6, %x0, 0  #0 pc 22084
	lw	%x7, 32(%x2)  #1604 pc 22088
	lw	%x22, 12(%x2)  #1604 pc 22092
	fsw	%f3, 64(%x2)  #1604 pc 22096
	fsw	%f2, 72(%x2)  #1604 pc 22100
	fsw	%f1, 80(%x2)  #1604 pc 22104
	fsw	%f0, 88(%x2)  #1604 pc 22108
	addi	%x5, %x6, 0  #0 pc 22112
	addi	%x6, %x7, 0  #0 pc 22116
	fadd	%f0, %f1, %f30  #0 pc 22120
	fadd	%f1, %f2, %f30  #0 pc 22124
	fadd	%f2, %f3, %f30  #0 pc 22128
	sw	%x1, 100(%x2)  #1604 pc 22132
	lw	%x23, 0(%x22)  #1604 pc 22136
	addi	%x2, %x2, 104  #1604 pc 22140
	jalr	%x1, %x23, 0  #1604 pc 22144
	addi	%x2, %x2, -104  #1604 pc 22148
	lw	%x1, 100(%x2)  #1604 pc 22152
	beq	%x5, %x0, 12  #1604 pc 22156
	j	be_else.9412 #pc 22160
	nop #pc 22164
	j	be_cont.9413 #pc 22168
	nop #pc 22172
be_else.9412: #pc 22172
	lw	%x5, 20(%x2)  #1606 pc 22176
	flw	%f0, 88(%x2)  #1606 pc 22180
	add	%x24, %x0, %x5  #1606 pc 22184
	fsw	%f0, 0(%x24) #1606 pc 22188
	flw	%f0, 80(%x2)  #1607 pc 22192
	flw	%f1, 72(%x2)  #1607 pc 22196
	flw	%f2, 64(%x2)  #1607 pc 22200
	lw	%x5, 8(%x2)  #1607 pc 22204
	sw	%x1, 100(%x2)  #1607 pc 22208
	addi	%x2, %x2, 104  #1607 pc 22212
	jal	%x1, vecset.2644  #1607 pc 22216
	addi	%x2, %x2, -104  #1607 pc 22220
	lw	%x1, 100(%x2) #1607 pc 22224
	lw	%x5, 4(%x2)  #1608 pc 22228
	lw	%x6, 48(%x2)  #1608 pc 22232
	add	%x24, %x0, %x5  #1608 pc 22236
	sw	%x6, 0(%x24)  #1608 pc 22240
	lw	%x5, 0(%x2)  #1609 pc 22244
	lw	%x6, 52(%x2)  #1609 pc 22248
	add	%x24, %x0, %x5  #1609 pc 22252
	sw	%x6, 0(%x24)  #1609 pc 22256
be_cont.9413: #pc 22256
be_cont.9411: #pc 22256
be_cont.9409: #pc 22256
	lw	%x5, 40(%x2)  #1615 pc 22260
	addi	%x5, %x5, 1  #1615 pc 22264
	lw	%x6, 32(%x2)  #1615 pc 22268
	lw	%x7, 28(%x2)  #1615 pc 22272
	lw	%x22, 36(%x2)  #1615 pc 22276
	lw	%x23, 0(%x22)  #1615 pc 22280
	jalr	%x0, %x23, 0  #1615 pc 22284
	nop #pc 22288
solve_one_or_network.2918:  #pc 22292
	addi	%x24, %x0, 8  #pc 22292
	add	%x24, %x24, %x22  #1628 pc 22296
	lw	%x9, 0(%x24)  #1628 pc 22300
	addi	%x24, %x0, 4  #pc 22304
	add	%x24, %x24, %x22  #1628 pc 22308
	lw	%x10, 0(%x24)  #1628 pc 22312
	slli	%x11, %x5, 2  #1628 pc 22316
	add	%x24, %x11, %x6  #1628 pc 22320
	lw	%x11, 0(%x24)  #1628 pc 22324
	addi	%x24, %x0, -1  #pc 22328
	beq	%x11, %x24, 12  #1629 pc 22332
	j	be_else.9414 #pc 22336
	nop #pc 22340
	ret #pc 22344
	nop #pc 22348
be_else.9414: #pc 22348
	slli	%x11, %x11, 2  #1630 pc 22352
	add	%x24, %x11, %x10  #1630 pc 22356
	lw	%x10, 0(%x24)  #1630 pc 22360
	addi	%x11, %x0, 0  #0 pc 22364
	sw	%x7, 0(%x2)  #1631 pc 22368
	sw	%x6, 4(%x2)  #1631 pc 22372
	sw	%x22, 8(%x2)  #1631 pc 22376
	sw	%x5, 12(%x2)  #1631 pc 22380
	addi	%x6, %x10, 0  #0 pc 22384
	addi	%x5, %x11, 0  #0 pc 22388
	addi	%x22, %x9, 0  #0 pc 22392
	sw	%x1, 20(%x2)  #1631 pc 22396
	lw	%x23, 0(%x22)  #1631 pc 22400
	addi	%x2, %x2, 24  #1631 pc 22404
	jalr	%x1, %x23, 0  #1631 pc 22408
	addi	%x2, %x2, -24  #1631 pc 22412
	lw	%x1, 20(%x2)  #1631 pc 22416
	lw	%x5, 12(%x2)  #1632 pc 22420
	addi	%x5, %x5, 1  #1632 pc 22424
	lw	%x6, 4(%x2)  #1632 pc 22428
	lw	%x7, 0(%x2)  #1632 pc 22432
	lw	%x22, 8(%x2)  #1632 pc 22436
	lw	%x23, 0(%x22)  #1632 pc 22440
	jalr	%x0, %x23, 0  #1632 pc 22444
	nop #pc 22448
trace_or_matrix.2922:  #pc 22452
	addi	%x24, %x0, 20  #pc 22452
	add	%x24, %x24, %x22  #1638 pc 22456
	lw	%x9, 0(%x24)  #1638 pc 22460
	addi	%x24, %x0, 16  #pc 22464
	add	%x24, %x24, %x22  #1638 pc 22468
	lw	%x10, 0(%x24)  #1638 pc 22472
	addi	%x24, %x0, 12  #pc 22476
	add	%x24, %x24, %x22  #1638 pc 22480
	lw	%x11, 0(%x24)  #1638 pc 22484
	addi	%x24, %x0, 8  #pc 22488
	add	%x24, %x24, %x22  #1638 pc 22492
	lw	%x12, 0(%x24)  #1638 pc 22496
	addi	%x24, %x0, 4  #pc 22500
	add	%x24, %x24, %x22  #1638 pc 22504
	lw	%x13, 0(%x24)  #1638 pc 22508
	slli	%x14, %x5, 2  #1638 pc 22512
	add	%x24, %x14, %x6  #1638 pc 22516
	lw	%x14, 0(%x24)  #1638 pc 22520
	add	%x24, %x0, %x14  #1639 pc 22524
	lw	%x15, 0(%x24)  #1639 pc 22528
	addi	%x24, %x0, -1  #pc 22532
	beq	%x15, %x24, 12  #1640 pc 22536
	j	be_else.9416 #pc 22540
	nop #pc 22544
	ret #pc 22548
	nop #pc 22552
be_else.9416: #pc 22552
	sw	%x7, 0(%x2)  #1643 pc 22556
	sw	%x6, 4(%x2)  #1643 pc 22560
	sw	%x22, 8(%x2)  #1643 pc 22564
	sw	%x5, 12(%x2)  #1643 pc 22568
	addi	%x24, %x0, 99  #pc 22572
	beq	%x15, %x24, 12  #1643 pc 22576
	j	be_else.9418 #pc 22580
	nop #pc 22584
	addi	%x9, %x0, 1  #0 pc 22588
	addi	%x6, %x14, 0  #0 pc 22592
	addi	%x5, %x9, 0  #0 pc 22596
	addi	%x22, %x13, 0  #0 pc 22600
	sw	%x1, 20(%x2)  #1644 pc 22604
	lw	%x23, 0(%x22)  #1644 pc 22608
	addi	%x2, %x2, 24  #1644 pc 22612
	jalr	%x1, %x23, 0  #1644 pc 22616
	addi	%x2, %x2, -24  #1644 pc 22620
	lw	%x1, 20(%x2)  #1644 pc 22624
	j	be_cont.9419 #pc 22628
	nop #pc 22632
be_else.9418: #pc 22632
	sw	%x14, 16(%x2)  #1648 pc 22636
	sw	%x13, 20(%x2)  #1648 pc 22640
	sw	%x9, 24(%x2)  #1648 pc 22644
	sw	%x11, 28(%x2)  #1648 pc 22648
	addi	%x6, %x7, 0  #0 pc 22652
	addi	%x5, %x15, 0  #0 pc 22656
	addi	%x22, %x12, 0  #0 pc 22660
	addi	%x7, %x10, 0  #0 pc 22664
	sw	%x1, 36(%x2)  #1648 pc 22668
	lw	%x23, 0(%x22)  #1648 pc 22672
	addi	%x2, %x2, 40  #1648 pc 22676
	jalr	%x1, %x23, 0  #1648 pc 22680
	addi	%x2, %x2, -40  #1648 pc 22684
	lw	%x1, 36(%x2)  #1648 pc 22688
	beq	%x5, %x0, 12  #1649 pc 22692
	j	be_else.9420 #pc 22696
	nop #pc 22700
	j	be_cont.9421 #pc 22704
	nop #pc 22708
be_else.9420: #pc 22708
	lw	%x5, 28(%x2)  #1650 pc 22712
	add	%x24, %x0, %x5  #1650 pc 22716
	flw	%f0, 0(%x24)  #1650 pc 22720
	lw	%x5, 24(%x2)  #1651 pc 22724
	add	%x24, %x0, %x5  #1651 pc 22728
	flw	%f1, 0(%x24)  #1651 pc 22732
	sw	%x1, 36(%x2)  #1651 pc 22736
	addi	%x2, %x2, 40  #1651 pc 22740
	jal	%x1, fless.2540  #1651 pc 22744
	addi	%x2, %x2, -40  #1651 pc 22748
	lw	%x1, 36(%x2) #1651 pc 22752
	beq	%x5, %x0, 12  #1651 pc 22756
	j	be_else.9422 #pc 22760
	nop #pc 22764
	j	be_cont.9423 #pc 22768
	nop #pc 22772
be_else.9422: #pc 22772
	addi	%x5, %x0, 1  #0 pc 22776
	lw	%x6, 16(%x2)  #1652 pc 22780
	lw	%x7, 0(%x2)  #1652 pc 22784
	lw	%x22, 20(%x2)  #1652 pc 22788
	sw	%x1, 36(%x2)  #1652 pc 22792
	lw	%x23, 0(%x22)  #1652 pc 22796
	addi	%x2, %x2, 40  #1652 pc 22800
	jalr	%x1, %x23, 0  #1652 pc 22804
	addi	%x2, %x2, -40  #1652 pc 22808
	lw	%x1, 36(%x2)  #1652 pc 22812
be_cont.9423: #pc 22812
be_cont.9421: #pc 22812
be_cont.9419: #pc 22812
	lw	%x5, 12(%x2)  #1656 pc 22816
	addi	%x5, %x5, 1  #1656 pc 22820
	lw	%x6, 4(%x2)  #1656 pc 22824
	lw	%x7, 0(%x2)  #1656 pc 22828
	lw	%x22, 8(%x2)  #1656 pc 22832
	lw	%x23, 0(%x22)  #1656 pc 22836
	jalr	%x0, %x23, 0  #1656 pc 22840
	nop #pc 22844
judge_intersection.2926:  #pc 22848
	addi	%x24, %x0, 12  #pc 22848
	add	%x24, %x24, %x22  #0 pc 22852
	lw	%x6, 0(%x24)  #0 pc 22856
	addi	%x24, %x0, 8  #pc 22860
	add	%x24, %x24, %x22  #0 pc 22864
	lw	%x7, 0(%x24)  #0 pc 22868
	addi	%x24, %x0, 4  #pc 22872
	add	%x24, %x24, %x22  #0 pc 22876
	lw	%x9, 0(%x24)  #0 pc 22880
	fmv	%f0, l.6734  #0 pc 22884
	add	%x24, %x0, %x7  #1665 pc 22888
	fsw	%f0, 0(%x24) #1665 pc 22892
	addi	%x10, %x0, 0  #0 pc 22896
	add	%x24, %x0, %x9  #1666 pc 22900
	lw	%x9, 0(%x24)  #1666 pc 22904
	sw	%x7, 0(%x2)  #1666 pc 22908
	addi	%x7, %x5, 0  #0 pc 22912
	addi	%x22, %x6, 0  #0 pc 22916
	addi	%x6, %x9, 0  #0 pc 22920
	addi	%x5, %x10, 0  #0 pc 22924
	sw	%x1, 4(%x2)  #1666 pc 22928
	lw	%x23, 0(%x22)  #1666 pc 22932
	addi	%x2, %x2, 8  #1666 pc 22936
	jalr	%x1, %x23, 0  #1666 pc 22940
	addi	%x2, %x2, -8  #1666 pc 22944
	lw	%x1, 4(%x2)  #1666 pc 22948
	lw	%x5, 0(%x2)  #1667 pc 22952
	add	%x24, %x0, %x5  #1667 pc 22956
	flw	%f1, 0(%x24)  #1667 pc 22960
	fmv	%f0, l.6711  #0 pc 22964
	fsw	%f1, 8(%x2)  #1669 pc 22968
	sw	%x1, 20(%x2)  #1669 pc 22972
	addi	%x2, %x2, 24  #1669 pc 22976
	jal	%x1, fless.2540  #1669 pc 22980
	addi	%x2, %x2, -24  #1669 pc 22984
	lw	%x1, 20(%x2) #1669 pc 22988
	beq	%x5, %x0, 12  #1669 pc 22992
	j	be_else.9425 #pc 22996
	nop #pc 23000
	addi	%x5, %x0, 0  #0 pc 23004
	ret #pc 23008
	nop #pc 23012
be_else.9425: #pc 23012
	fmv	%f1, l.6740  #0 pc 23016
	flw	%f0, 8(%x2)  #1670 pc 23020
	j	fless.2540  #1670 pc 23024
	nop #pc 23028
solve_each_element_fast.2928:  #pc 23032
	addi	%x24, %x0, 36  #pc 23032
	add	%x24, %x24, %x22  #1680 pc 23036
	lw	%x9, 0(%x24)  #1680 pc 23040
	addi	%x24, %x0, 32  #pc 23044
	add	%x24, %x24, %x22  #1680 pc 23048
	lw	%x10, 0(%x24)  #1680 pc 23052
	addi	%x24, %x0, 28  #pc 23056
	add	%x24, %x24, %x22  #1680 pc 23060
	lw	%x11, 0(%x24)  #1680 pc 23064
	addi	%x24, %x0, 24  #pc 23068
	add	%x24, %x24, %x22  #1680 pc 23072
	lw	%x12, 0(%x24)  #1680 pc 23076
	addi	%x24, %x0, 20  #pc 23080
	add	%x24, %x24, %x22  #1680 pc 23084
	lw	%x13, 0(%x24)  #1680 pc 23088
	addi	%x24, %x0, 16  #pc 23092
	add	%x24, %x24, %x22  #1680 pc 23096
	lw	%x14, 0(%x24)  #1680 pc 23100
	addi	%x24, %x0, 12  #pc 23104
	add	%x24, %x24, %x22  #1680 pc 23108
	lw	%x15, 0(%x24)  #1680 pc 23112
	addi	%x24, %x0, 8  #pc 23116
	add	%x24, %x24, %x22  #1680 pc 23120
	lw	%x16, 0(%x24)  #1680 pc 23124
	addi	%x24, %x0, 4  #pc 23128
	add	%x24, %x24, %x22  #1680 pc 23132
	lw	%x17, 0(%x24)  #1680 pc 23136
	sw	%x14, 0(%x2)  #1680 pc 23140
	sw	%x16, 4(%x2)  #1680 pc 23144
	sw	%x15, 8(%x2)  #1680 pc 23148
	sw	%x17, 12(%x2)  #1680 pc 23152
	sw	%x10, 16(%x2)  #1680 pc 23156
	sw	%x9, 20(%x2)  #1680 pc 23160
	sw	%x12, 24(%x2)  #1680 pc 23164
	sw	%x22, 28(%x2)  #1680 pc 23168
	sw	%x13, 32(%x2)  #1680 pc 23172
	sw	%x7, 36(%x2)  #1680 pc 23176
	sw	%x11, 40(%x2)  #1680 pc 23180
	sw	%x6, 44(%x2)  #1680 pc 23184
	sw	%x5, 48(%x2)  #1680 pc 23188
	addi	%x5, %x7, 0  #0 pc 23192
	sw	%x1, 52(%x2)  #1680 pc 23196
	addi	%x2, %x2, 56  #1680 pc 23200
	jal	%x1, d_vec.2743  #1680 pc 23204
	addi	%x2, %x2, -56  #1680 pc 23208
	lw	%x1, 52(%x2) #1680 pc 23212
	lw	%x6, 48(%x2)  #1681 pc 23216
	slli	%x7, %x6, 2  #1681 pc 23220
	lw	%x9, 44(%x2)  #1681 pc 23224
	add	%x24, %x7, %x9  #1681 pc 23228
	lw	%x7, 0(%x24)  #1681 pc 23232
	addi	%x24, %x0, -1  #pc 23236
	beq	%x7, %x24, 12  #1682 pc 23240
	j	be_else.9426 #pc 23244
	nop #pc 23248
	ret #pc 23252
	nop #pc 23256
be_else.9426: #pc 23256
	lw	%x10, 36(%x2)  #1684 pc 23260
	lw	%x22, 40(%x2)  #1684 pc 23264
	sw	%x5, 52(%x2)  #1684 pc 23268
	sw	%x7, 56(%x2)  #1684 pc 23272
	addi	%x6, %x10, 0  #0 pc 23276
	addi	%x5, %x7, 0  #0 pc 23280
	sw	%x1, 60(%x2)  #1684 pc 23284
	lw	%x23, 0(%x22)  #1684 pc 23288
	addi	%x2, %x2, 64  #1684 pc 23292
	jalr	%x1, %x23, 0  #1684 pc 23296
	addi	%x2, %x2, -64  #1684 pc 23300
	lw	%x1, 60(%x2)  #1684 pc 23304
	beq	%x5, %x0, 12  #1685 pc 23308
	j	be_else.9428 #pc 23312
	nop #pc 23316
	lw	%x5, 56(%x2)  #1713 pc 23320
	slli	%x5, %x5, 2  #1713 pc 23324
	lw	%x6, 32(%x2)  #1713 pc 23328
	add	%x24, %x5, %x6  #1713 pc 23332
	lw	%x5, 0(%x24)  #1713 pc 23336
	sw	%x1, 60(%x2)  #1713 pc 23340
	addi	%x2, %x2, 64  #1713 pc 23344
	jal	%x1, o_isinvert.2688  #1713 pc 23348
	addi	%x2, %x2, -64  #1713 pc 23352
	lw	%x1, 60(%x2) #1713 pc 23356
	beq	%x5, %x0, 12  #1713 pc 23360
	j	be_else.9429 #pc 23364
	nop #pc 23368
	ret #pc 23372
	nop #pc 23376
be_else.9429: #pc 23376
	lw	%x5, 48(%x2)  #1714 pc 23380
	addi	%x5, %x5, 1  #1714 pc 23384
	lw	%x6, 44(%x2)  #1714 pc 23388
	lw	%x7, 36(%x2)  #1714 pc 23392
	lw	%x22, 28(%x2)  #1714 pc 23396
	lw	%x23, 0(%x22)  #1714 pc 23400
	jalr	%x0, %x23, 0  #1714 pc 23404
	nop #pc 23408
be_else.9428: #pc 23408
	lw	%x6, 24(%x2)  #1689 pc 23412
	add	%x24, %x0, %x6  #1689 pc 23416
	flw	%f1, 0(%x24)  #1689 pc 23420
	fmv	%f0, l.6293  #0 pc 23424
	sw	%x5, 60(%x2)  #1691 pc 23428
	fsw	%f1, 64(%x2)  #1691 pc 23432
	sw	%x1, 76(%x2)  #1691 pc 23436
	addi	%x2, %x2, 80  #1691 pc 23440
	jal	%x1, fless.2540  #1691 pc 23444
	addi	%x2, %x2, -80  #1691 pc 23448
	lw	%x1, 76(%x2) #1691 pc 23452
	beq	%x5, %x0, 12  #1691 pc 23456
	j	be_else.9431 #pc 23460
	nop #pc 23464
	j	be_cont.9432 #pc 23468
	nop #pc 23472
be_else.9431: #pc 23472
	lw	%x5, 20(%x2)  #1692 pc 23476
	add	%x24, %x0, %x5  #1692 pc 23480
	flw	%f1, 0(%x24)  #1692 pc 23484
	flw	%f0, 64(%x2)  #1692 pc 23488
	sw	%x1, 76(%x2)  #1692 pc 23492
	addi	%x2, %x2, 80  #1692 pc 23496
	jal	%x1, fless.2540  #1692 pc 23500
	addi	%x2, %x2, -80  #1692 pc 23504
	lw	%x1, 76(%x2) #1692 pc 23508
	beq	%x5, %x0, 12  #1692 pc 23512
	j	be_else.9433 #pc 23516
	nop #pc 23520
	j	be_cont.9434 #pc 23524
	nop #pc 23528
be_else.9433: #pc 23528
	fmv	%f0, l.6697  #0 pc 23532
	flw	%f1, 64(%x2)  #1694 pc 23536
	fadd	%f0, %f1, %f0  #1694 pc 23540
	lw	%x5, 52(%x2)  #1695 pc 23544
	add	%x24, %x0, %x5  #1695 pc 23548
	flw	%f1, 0(%x24)  #1695 pc 23552
	fmul	%f1, %f1, %f0  #1695 pc 23556
	lw	%x6, 16(%x2)  #1695 pc 23560
	add	%x24, %x0, %x6  #1695 pc 23564
	flw	%f2, 0(%x24)  #1695 pc 23568
	fadd	%f1, %f1, %f2  #1695 pc 23572
	addi	%x24, %x0, 4  #pc 23576
	add	%x24, %x24, %x5  #1696 pc 23580
	flw	%f2, 0(%x24)  #1696 pc 23584
	fmul	%f2, %f2, %f0  #1696 pc 23588
	addi	%x24, %x0, 4  #pc 23592
	add	%x24, %x24, %x6  #1696 pc 23596
	flw	%f3, 0(%x24)  #1696 pc 23600
	fadd	%f2, %f2, %f3  #1696 pc 23604
	addi	%x24, %x0, 8  #pc 23608
	add	%x24, %x24, %x5  #1697 pc 23612
	flw	%f3, 0(%x24)  #1697 pc 23616
	fmul	%f3, %f3, %f0  #1697 pc 23620
	addi	%x24, %x0, 8  #pc 23624
	add	%x24, %x24, %x6  #1697 pc 23628
	flw	%f4, 0(%x24)  #1697 pc 23632
	fadd	%f3, %f3, %f4  #1697 pc 23636
	addi	%x5, %x0, 0  #0 pc 23640
	lw	%x6, 44(%x2)  #1698 pc 23644
	lw	%x22, 12(%x2)  #1698 pc 23648
	fsw	%f3, 72(%x2)  #1698 pc 23652
	fsw	%f2, 80(%x2)  #1698 pc 23656
	fsw	%f1, 88(%x2)  #1698 pc 23660
	fsw	%f0, 96(%x2)  #1698 pc 23664
	fadd	%f0, %f1, %f30  #0 pc 23668
	fadd	%f1, %f2, %f30  #0 pc 23672
	fadd	%f2, %f3, %f30  #0 pc 23676
	sw	%x1, 108(%x2)  #1698 pc 23680
	lw	%x23, 0(%x22)  #1698 pc 23684
	addi	%x2, %x2, 112  #1698 pc 23688
	jalr	%x1, %x23, 0  #1698 pc 23692
	addi	%x2, %x2, -112  #1698 pc 23696
	lw	%x1, 108(%x2)  #1698 pc 23700
	beq	%x5, %x0, 12  #1698 pc 23704
	j	be_else.9435 #pc 23708
	nop #pc 23712
	j	be_cont.9436 #pc 23716
	nop #pc 23720
be_else.9435: #pc 23720
	lw	%x5, 20(%x2)  #1700 pc 23724
	flw	%f0, 96(%x2)  #1700 pc 23728
	add	%x24, %x0, %x5  #1700 pc 23732
	fsw	%f0, 0(%x24) #1700 pc 23736
	flw	%f0, 88(%x2)  #1701 pc 23740
	flw	%f1, 80(%x2)  #1701 pc 23744
	flw	%f2, 72(%x2)  #1701 pc 23748
	lw	%x5, 8(%x2)  #1701 pc 23752
	sw	%x1, 108(%x2)  #1701 pc 23756
	addi	%x2, %x2, 112  #1701 pc 23760
	jal	%x1, vecset.2644  #1701 pc 23764
	addi	%x2, %x2, -112  #1701 pc 23768
	lw	%x1, 108(%x2) #1701 pc 23772
	lw	%x5, 4(%x2)  #1702 pc 23776
	lw	%x6, 56(%x2)  #1702 pc 23780
	add	%x24, %x0, %x5  #1702 pc 23784
	sw	%x6, 0(%x24)  #1702 pc 23788
	lw	%x5, 0(%x2)  #1703 pc 23792
	lw	%x6, 60(%x2)  #1703 pc 23796
	add	%x24, %x0, %x5  #1703 pc 23800
	sw	%x6, 0(%x24)  #1703 pc 23804
be_cont.9436: #pc 23804
be_cont.9434: #pc 23804
be_cont.9432: #pc 23804
	lw	%x5, 48(%x2)  #1709 pc 23808
	addi	%x5, %x5, 1  #1709 pc 23812
	lw	%x6, 44(%x2)  #1709 pc 23816
	lw	%x7, 36(%x2)  #1709 pc 23820
	lw	%x22, 28(%x2)  #1709 pc 23824
	lw	%x23, 0(%x22)  #1709 pc 23828
	jalr	%x0, %x23, 0  #1709 pc 23832
	nop #pc 23836
solve_one_or_network_fast.2932:  #pc 23840
	addi	%x24, %x0, 8  #pc 23840
	add	%x24, %x24, %x22  #1721 pc 23844
	lw	%x9, 0(%x24)  #1721 pc 23848
	addi	%x24, %x0, 4  #pc 23852
	add	%x24, %x24, %x22  #1721 pc 23856
	lw	%x10, 0(%x24)  #1721 pc 23860
	slli	%x11, %x5, 2  #1721 pc 23864
	add	%x24, %x11, %x6  #1721 pc 23868
	lw	%x11, 0(%x24)  #1721 pc 23872
	addi	%x24, %x0, -1  #pc 23876
	beq	%x11, %x24, 12  #1722 pc 23880
	j	be_else.9437 #pc 23884
	nop #pc 23888
	ret #pc 23892
	nop #pc 23896
be_else.9437: #pc 23896
	slli	%x11, %x11, 2  #1723 pc 23900
	add	%x24, %x11, %x10  #1723 pc 23904
	lw	%x10, 0(%x24)  #1723 pc 23908
	addi	%x11, %x0, 0  #0 pc 23912
	sw	%x7, 0(%x2)  #1724 pc 23916
	sw	%x6, 4(%x2)  #1724 pc 23920
	sw	%x22, 8(%x2)  #1724 pc 23924
	sw	%x5, 12(%x2)  #1724 pc 23928
	addi	%x6, %x10, 0  #0 pc 23932
	addi	%x5, %x11, 0  #0 pc 23936
	addi	%x22, %x9, 0  #0 pc 23940
	sw	%x1, 20(%x2)  #1724 pc 23944
	lw	%x23, 0(%x22)  #1724 pc 23948
	addi	%x2, %x2, 24  #1724 pc 23952
	jalr	%x1, %x23, 0  #1724 pc 23956
	addi	%x2, %x2, -24  #1724 pc 23960
	lw	%x1, 20(%x2)  #1724 pc 23964
	lw	%x5, 12(%x2)  #1725 pc 23968
	addi	%x5, %x5, 1  #1725 pc 23972
	lw	%x6, 4(%x2)  #1725 pc 23976
	lw	%x7, 0(%x2)  #1725 pc 23980
	lw	%x22, 8(%x2)  #1725 pc 23984
	lw	%x23, 0(%x22)  #1725 pc 23988
	jalr	%x0, %x23, 0  #1725 pc 23992
	nop #pc 23996
trace_or_matrix_fast.2936:  #pc 24000
	addi	%x24, %x0, 16  #pc 24000
	add	%x24, %x24, %x22  #1731 pc 24004
	lw	%x9, 0(%x24)  #1731 pc 24008
	addi	%x24, %x0, 12  #pc 24012
	add	%x24, %x24, %x22  #1731 pc 24016
	lw	%x10, 0(%x24)  #1731 pc 24020
	addi	%x24, %x0, 8  #pc 24024
	add	%x24, %x24, %x22  #1731 pc 24028
	lw	%x11, 0(%x24)  #1731 pc 24032
	addi	%x24, %x0, 4  #pc 24036
	add	%x24, %x24, %x22  #1731 pc 24040
	lw	%x12, 0(%x24)  #1731 pc 24044
	slli	%x13, %x5, 2  #1731 pc 24048
	add	%x24, %x13, %x6  #1731 pc 24052
	lw	%x13, 0(%x24)  #1731 pc 24056
	add	%x24, %x0, %x13  #1732 pc 24060
	lw	%x14, 0(%x24)  #1732 pc 24064
	addi	%x24, %x0, -1  #pc 24068
	beq	%x14, %x24, 12  #1733 pc 24072
	j	be_else.9439 #pc 24076
	nop #pc 24080
	ret #pc 24084
	nop #pc 24088
be_else.9439: #pc 24088
	sw	%x7, 0(%x2)  #1736 pc 24092
	sw	%x6, 4(%x2)  #1736 pc 24096
	sw	%x22, 8(%x2)  #1736 pc 24100
	sw	%x5, 12(%x2)  #1736 pc 24104
	addi	%x24, %x0, 99  #pc 24108
	beq	%x14, %x24, 12  #1736 pc 24112
	j	be_else.9441 #pc 24116
	nop #pc 24120
	addi	%x9, %x0, 1  #0 pc 24124
	addi	%x6, %x13, 0  #0 pc 24128
	addi	%x5, %x9, 0  #0 pc 24132
	addi	%x22, %x12, 0  #0 pc 24136
	sw	%x1, 20(%x2)  #1737 pc 24140
	lw	%x23, 0(%x22)  #1737 pc 24144
	addi	%x2, %x2, 24  #1737 pc 24148
	jalr	%x1, %x23, 0  #1737 pc 24152
	addi	%x2, %x2, -24  #1737 pc 24156
	lw	%x1, 20(%x2)  #1737 pc 24160
	j	be_cont.9442 #pc 24164
	nop #pc 24168
be_else.9441: #pc 24168
	sw	%x13, 16(%x2)  #1741 pc 24172
	sw	%x12, 20(%x2)  #1741 pc 24176
	sw	%x9, 24(%x2)  #1741 pc 24180
	sw	%x11, 28(%x2)  #1741 pc 24184
	addi	%x6, %x7, 0  #0 pc 24188
	addi	%x5, %x14, 0  #0 pc 24192
	addi	%x22, %x10, 0  #0 pc 24196
	sw	%x1, 36(%x2)  #1741 pc 24200
	lw	%x23, 0(%x22)  #1741 pc 24204
	addi	%x2, %x2, 40  #1741 pc 24208
	jalr	%x1, %x23, 0  #1741 pc 24212
	addi	%x2, %x2, -40  #1741 pc 24216
	lw	%x1, 36(%x2)  #1741 pc 24220
	beq	%x5, %x0, 12  #1742 pc 24224
	j	be_else.9443 #pc 24228
	nop #pc 24232
	j	be_cont.9444 #pc 24236
	nop #pc 24240
be_else.9443: #pc 24240
	lw	%x5, 28(%x2)  #1743 pc 24244
	add	%x24, %x0, %x5  #1743 pc 24248
	flw	%f0, 0(%x24)  #1743 pc 24252
	lw	%x5, 24(%x2)  #1744 pc 24256
	add	%x24, %x0, %x5  #1744 pc 24260
	flw	%f1, 0(%x24)  #1744 pc 24264
	sw	%x1, 36(%x2)  #1744 pc 24268
	addi	%x2, %x2, 40  #1744 pc 24272
	jal	%x1, fless.2540  #1744 pc 24276
	addi	%x2, %x2, -40  #1744 pc 24280
	lw	%x1, 36(%x2) #1744 pc 24284
	beq	%x5, %x0, 12  #1744 pc 24288
	j	be_else.9445 #pc 24292
	nop #pc 24296
	j	be_cont.9446 #pc 24300
	nop #pc 24304
be_else.9445: #pc 24304
	addi	%x5, %x0, 1  #0 pc 24308
	lw	%x6, 16(%x2)  #1745 pc 24312
	lw	%x7, 0(%x2)  #1745 pc 24316
	lw	%x22, 20(%x2)  #1745 pc 24320
	sw	%x1, 36(%x2)  #1745 pc 24324
	lw	%x23, 0(%x22)  #1745 pc 24328
	addi	%x2, %x2, 40  #1745 pc 24332
	jalr	%x1, %x23, 0  #1745 pc 24336
	addi	%x2, %x2, -40  #1745 pc 24340
	lw	%x1, 36(%x2)  #1745 pc 24344
be_cont.9446: #pc 24344
be_cont.9444: #pc 24344
be_cont.9442: #pc 24344
	lw	%x5, 12(%x2)  #1749 pc 24348
	addi	%x5, %x5, 1  #1749 pc 24352
	lw	%x6, 4(%x2)  #1749 pc 24356
	lw	%x7, 0(%x2)  #1749 pc 24360
	lw	%x22, 8(%x2)  #1749 pc 24364
	lw	%x23, 0(%x22)  #1749 pc 24368
	jalr	%x0, %x23, 0  #1749 pc 24372
	nop #pc 24376
judge_intersection_fast.2940:  #pc 24380
	addi	%x24, %x0, 12  #pc 24380
	add	%x24, %x24, %x22  #0 pc 24384
	lw	%x6, 0(%x24)  #0 pc 24388
	addi	%x24, %x0, 8  #pc 24392
	add	%x24, %x24, %x22  #0 pc 24396
	lw	%x7, 0(%x24)  #0 pc 24400
	addi	%x24, %x0, 4  #pc 24404
	add	%x24, %x24, %x22  #0 pc 24408
	lw	%x9, 0(%x24)  #0 pc 24412
	fmv	%f0, l.6734  #0 pc 24416
	add	%x24, %x0, %x7  #1756 pc 24420
	fsw	%f0, 0(%x24) #1756 pc 24424
	addi	%x10, %x0, 0  #0 pc 24428
	add	%x24, %x0, %x9  #1757 pc 24432
	lw	%x9, 0(%x24)  #1757 pc 24436
	sw	%x7, 0(%x2)  #1757 pc 24440
	addi	%x7, %x5, 0  #0 pc 24444
	addi	%x22, %x6, 0  #0 pc 24448
	addi	%x6, %x9, 0  #0 pc 24452
	addi	%x5, %x10, 0  #0 pc 24456
	sw	%x1, 4(%x2)  #1757 pc 24460
	lw	%x23, 0(%x22)  #1757 pc 24464
	addi	%x2, %x2, 8  #1757 pc 24468
	jalr	%x1, %x23, 0  #1757 pc 24472
	addi	%x2, %x2, -8  #1757 pc 24476
	lw	%x1, 4(%x2)  #1757 pc 24480
	lw	%x5, 0(%x2)  #1758 pc 24484
	add	%x24, %x0, %x5  #1758 pc 24488
	flw	%f1, 0(%x24)  #1758 pc 24492
	fmv	%f0, l.6711  #0 pc 24496
	fsw	%f1, 8(%x2)  #1760 pc 24500
	sw	%x1, 20(%x2)  #1760 pc 24504
	addi	%x2, %x2, 24  #1760 pc 24508
	jal	%x1, fless.2540  #1760 pc 24512
	addi	%x2, %x2, -24  #1760 pc 24516
	lw	%x1, 20(%x2) #1760 pc 24520
	beq	%x5, %x0, 12  #1760 pc 24524
	j	be_else.9448 #pc 24528
	nop #pc 24532
	addi	%x5, %x0, 0  #0 pc 24536
	ret #pc 24540
	nop #pc 24544
be_else.9448: #pc 24544
	fmv	%f1, l.6740  #0 pc 24548
	flw	%f0, 8(%x2)  #1761 pc 24552
	j	fless.2540  #1761 pc 24556
	nop #pc 24560
get_nvector_rect.2942:  #pc 24564
	addi	%x24, %x0, 8  #pc 24564
	add	%x24, %x24, %x22  #0 pc 24568
	lw	%x6, 0(%x24)  #0 pc 24572
	addi	%x24, %x0, 4  #pc 24576
	add	%x24, %x24, %x22  #0 pc 24580
	lw	%x7, 0(%x24)  #0 pc 24584
	add	%x24, %x0, %x7  #1776 pc 24588
	lw	%x7, 0(%x24)  #1776 pc 24592
	sw	%x6, 0(%x2)  #1778 pc 24596
	sw	%x5, 4(%x2)  #1778 pc 24600
	sw	%x7, 8(%x2)  #1778 pc 24604
	addi	%x5, %x6, 0  #0 pc 24608
	sw	%x1, 12(%x2)  #1778 pc 24612
	addi	%x2, %x2, 16  #1778 pc 24616
	jal	%x1, vecbzero.2652  #1778 pc 24620
	addi	%x2, %x2, -16  #1778 pc 24624
	lw	%x1, 12(%x2) #1778 pc 24628
	lw	%x5, 8(%x2)  #1779 pc 24632
	addi	%x6, %x5, -1  #1779 pc 24636
	addi	%x5, %x5, -1  #1779 pc 24640
	slli	%x5, %x5, 2  #1779 pc 24644
	lw	%x7, 4(%x2)  #1779 pc 24648
	add	%x24, %x5, %x7  #1779 pc 24652
	flw	%f0, 0(%x24)  #1779 pc 24656
	sw	%x6, 12(%x2)  #1779 pc 24660
	sw	%x1, 20(%x2)  #1779 pc 24664
	addi	%x2, %x2, 24  #1779 pc 24668
	jal	%x1, sgn.2636  #1779 pc 24672
	addi	%x2, %x2, -24  #1779 pc 24676
	lw	%x1, 20(%x2) #1779 pc 24680
	sw	%x1, 20(%x2)  #1779 pc 24684
	addi	%x2, %x2, 24  #1779 pc 24688
	jal	%x1, fneg.2534  #1779 pc 24692
	addi	%x2, %x2, -24  #1779 pc 24696
	lw	%x1, 20(%x2) #1779 pc 24700
	lw	%x5, 12(%x2)  #1779 pc 24704
	slli	%x5, %x5, 2  #1779 pc 24708
	lw	%x6, 0(%x2)  #1779 pc 24712
	add	%x24, %x5, %x6  #1779 pc 24716
	fsw	%f0, 0(%x24) #1779 pc 24720
	ret #pc 24724
	nop #pc 24728
get_nvector_plane.2944:  #pc 24732
	addi	%x24, %x0, 4  #pc 24732
	add	%x24, %x24, %x22  #0 pc 24736
	lw	%x6, 0(%x24)  #0 pc 24740
	sw	%x5, 0(%x2)  #1785 pc 24744
	sw	%x6, 4(%x2)  #1785 pc 24748
	sw	%x1, 12(%x2)  #1785 pc 24752
	addi	%x2, %x2, 16  #1785 pc 24756
	jal	%x1, o_param_a.2692  #1785 pc 24760
	addi	%x2, %x2, -16  #1785 pc 24764
	lw	%x1, 12(%x2) #1785 pc 24768
	sw	%x1, 12(%x2)  #1785 pc 24772
	addi	%x2, %x2, 16  #1785 pc 24776
	jal	%x1, fneg.2534  #1785 pc 24780
	addi	%x2, %x2, -16  #1785 pc 24784
	lw	%x1, 12(%x2) #1785 pc 24788
	lw	%x5, 4(%x2)  #1785 pc 24792
	add	%x24, %x0, %x5  #1785 pc 24796
	fsw	%f0, 0(%x24) #1785 pc 24800
	lw	%x6, 0(%x2)  #1786 pc 24804
	addi	%x5, %x6, 0  #0 pc 24808
	sw	%x1, 12(%x2)  #1786 pc 24812
	addi	%x2, %x2, 16  #1786 pc 24816
	jal	%x1, o_param_b.2694  #1786 pc 24820
	addi	%x2, %x2, -16  #1786 pc 24824
	lw	%x1, 12(%x2) #1786 pc 24828
	sw	%x1, 12(%x2)  #1786 pc 24832
	addi	%x2, %x2, 16  #1786 pc 24836
	jal	%x1, fneg.2534  #1786 pc 24840
	addi	%x2, %x2, -16  #1786 pc 24844
	lw	%x1, 12(%x2) #1786 pc 24848
	lw	%x5, 4(%x2)  #1786 pc 24852
	addi	%x24, %x0, 4  #pc 24856
	add	%x24, %x24, %x5  #1786 pc 24860
	fsw	%f0, 0(%x24) #1786 pc 24864
	lw	%x6, 0(%x2)  #1787 pc 24868
	addi	%x5, %x6, 0  #0 pc 24872
	sw	%x1, 12(%x2)  #1787 pc 24876
	addi	%x2, %x2, 16  #1787 pc 24880
	jal	%x1, o_param_c.2696  #1787 pc 24884
	addi	%x2, %x2, -16  #1787 pc 24888
	lw	%x1, 12(%x2) #1787 pc 24892
	sw	%x1, 12(%x2)  #1787 pc 24896
	addi	%x2, %x2, 16  #1787 pc 24900
	jal	%x1, fneg.2534  #1787 pc 24904
	addi	%x2, %x2, -16  #1787 pc 24908
	lw	%x1, 12(%x2) #1787 pc 24912
	lw	%x5, 4(%x2)  #1787 pc 24916
	addi	%x24, %x0, 8  #pc 24920
	add	%x24, %x24, %x5  #1787 pc 24924
	fsw	%f0, 0(%x24) #1787 pc 24928
	ret #pc 24932
	nop #pc 24936
get_nvector_second.2946:  #pc 24940
	addi	%x24, %x0, 8  #pc 24940
	add	%x24, %x24, %x22  #0 pc 24944
	lw	%x6, 0(%x24)  #0 pc 24948
	addi	%x24, %x0, 4  #pc 24952
	add	%x24, %x24, %x22  #0 pc 24956
	lw	%x7, 0(%x24)  #0 pc 24960
	add	%x24, %x0, %x7  #1792 pc 24964
	flw	%f0, 0(%x24)  #1792 pc 24968
	sw	%x6, 0(%x2)  #1792 pc 24972
	sw	%x5, 4(%x2)  #1792 pc 24976
	sw	%x7, 8(%x2)  #1792 pc 24980
	fsw	%f0, 16(%x2)  #1792 pc 24984
	sw	%x1, 28(%x2)  #1792 pc 24988
	addi	%x2, %x2, 32  #1792 pc 24992
	jal	%x1, o_param_x.2700  #1792 pc 24996
	addi	%x2, %x2, -32  #1792 pc 25000
	lw	%x1, 28(%x2) #1792 pc 25004
	flw	%f1, 16(%x2)  #1792 pc 25008
	fsub	%f0, %f1, %f0  #1792 pc 25012
	lw	%x5, 8(%x2)  #1793 pc 25016
	addi	%x24, %x0, 4  #pc 25020
	add	%x24, %x24, %x5  #1793 pc 25024
	flw	%f1, 0(%x24)  #1793 pc 25028
	lw	%x6, 4(%x2)  #1793 pc 25032
	fsw	%f0, 24(%x2)  #1793 pc 25036
	fsw	%f1, 32(%x2)  #1793 pc 25040
	addi	%x5, %x6, 0  #0 pc 25044
	sw	%x1, 44(%x2)  #1793 pc 25048
	addi	%x2, %x2, 48  #1793 pc 25052
	jal	%x1, o_param_y.2702  #1793 pc 25056
	addi	%x2, %x2, -48  #1793 pc 25060
	lw	%x1, 44(%x2) #1793 pc 25064
	flw	%f1, 32(%x2)  #1793 pc 25068
	fsub	%f0, %f1, %f0  #1793 pc 25072
	lw	%x5, 8(%x2)  #1794 pc 25076
	addi	%x24, %x0, 8  #pc 25080
	add	%x24, %x24, %x5  #1794 pc 25084
	flw	%f1, 0(%x24)  #1794 pc 25088
	lw	%x5, 4(%x2)  #1794 pc 25092
	fsw	%f0, 40(%x2)  #1794 pc 25096
	fsw	%f1, 48(%x2)  #1794 pc 25100
	sw	%x1, 60(%x2)  #1794 pc 25104
	addi	%x2, %x2, 64  #1794 pc 25108
	jal	%x1, o_param_z.2704  #1794 pc 25112
	addi	%x2, %x2, -64  #1794 pc 25116
	lw	%x1, 60(%x2) #1794 pc 25120
	flw	%f1, 48(%x2)  #1794 pc 25124
	fsub	%f0, %f1, %f0  #1794 pc 25128
	lw	%x5, 4(%x2)  #1796 pc 25132
	fsw	%f0, 56(%x2)  #1796 pc 25136
	sw	%x1, 68(%x2)  #1796 pc 25140
	addi	%x2, %x2, 72  #1796 pc 25144
	jal	%x1, o_param_a.2692  #1796 pc 25148
	addi	%x2, %x2, -72  #1796 pc 25152
	lw	%x1, 68(%x2) #1796 pc 25156
	flw	%f1, 24(%x2)  #1796 pc 25160
	fmul	%f0, %f1, %f0  #1796 pc 25164
	lw	%x5, 4(%x2)  #1797 pc 25168
	fsw	%f0, 64(%x2)  #1797 pc 25172
	sw	%x1, 76(%x2)  #1797 pc 25176
	addi	%x2, %x2, 80  #1797 pc 25180
	jal	%x1, o_param_b.2694  #1797 pc 25184
	addi	%x2, %x2, -80  #1797 pc 25188
	lw	%x1, 76(%x2) #1797 pc 25192
	flw	%f1, 40(%x2)  #1797 pc 25196
	fmul	%f0, %f1, %f0  #1797 pc 25200
	lw	%x5, 4(%x2)  #1798 pc 25204
	fsw	%f0, 72(%x2)  #1798 pc 25208
	sw	%x1, 84(%x2)  #1798 pc 25212
	addi	%x2, %x2, 88  #1798 pc 25216
	jal	%x1, o_param_c.2696  #1798 pc 25220
	addi	%x2, %x2, -88  #1798 pc 25224
	lw	%x1, 84(%x2) #1798 pc 25228
	flw	%f1, 56(%x2)  #1798 pc 25232
	fmul	%f0, %f1, %f0  #1798 pc 25236
	lw	%x5, 4(%x2)  #1800 pc 25240
	fsw	%f0, 80(%x2)  #1800 pc 25244
	sw	%x1, 92(%x2)  #1800 pc 25248
	addi	%x2, %x2, 96  #1800 pc 25252
	jal	%x1, o_isrot.2690  #1800 pc 25256
	addi	%x2, %x2, -96  #1800 pc 25260
	lw	%x1, 92(%x2) #1800 pc 25264
	beq	%x5, %x0, 12  #1800 pc 25268
	j	be_else.9452 #pc 25272
	nop #pc 25276
	lw	%x5, 0(%x2)  #1801 pc 25280
	flw	%f0, 64(%x2)  #1801 pc 25284
	add	%x24, %x0, %x5  #1801 pc 25288
	fsw	%f0, 0(%x24) #1801 pc 25292
	flw	%f0, 72(%x2)  #1802 pc 25296
	addi	%x24, %x0, 4  #pc 25300
	add	%x24, %x24, %x5  #1802 pc 25304
	fsw	%f0, 0(%x24) #1802 pc 25308
	flw	%f0, 80(%x2)  #1803 pc 25312
	addi	%x24, %x0, 8  #pc 25316
	add	%x24, %x24, %x5  #1803 pc 25320
	fsw	%f0, 0(%x24) #1803 pc 25324
	j	be_cont.9453 #pc 25328
	nop #pc 25332
be_else.9452: #pc 25332
	lw	%x5, 4(%x2)  #1805 pc 25336
	sw	%x1, 92(%x2)  #1805 pc 25340
	addi	%x2, %x2, 96  #1805 pc 25344
	jal	%x1, o_param_r3.2720  #1805 pc 25348
	addi	%x2, %x2, -96  #1805 pc 25352
	lw	%x1, 92(%x2) #1805 pc 25356
	flw	%f1, 40(%x2)  #1805 pc 25360
	fmul	%f0, %f1, %f0  #1805 pc 25364
	lw	%x5, 4(%x2)  #1805 pc 25368
	fsw	%f0, 88(%x2)  #1805 pc 25372
	sw	%x1, 100(%x2)  #1805 pc 25376
	addi	%x2, %x2, 104  #1805 pc 25380
	jal	%x1, o_param_r2.2718  #1805 pc 25384
	addi	%x2, %x2, -104  #1805 pc 25388
	lw	%x1, 100(%x2) #1805 pc 25392
	flw	%f1, 56(%x2)  #1805 pc 25396
	fmul	%f0, %f1, %f0  #1805 pc 25400
	flw	%f2, 88(%x2)  #1805 pc 25404
	fadd	%f0, %f2, %f0  #1805 pc 25408
	sw	%x1, 100(%x2)  #1805 pc 25412
	addi	%x2, %x2, 104  #1805 pc 25416
	jal	%x1, fhalf.2538  #1805 pc 25420
	addi	%x2, %x2, -104  #1805 pc 25424
	lw	%x1, 100(%x2) #1805 pc 25428
	flw	%f1, 64(%x2)  #1805 pc 25432
	fadd	%f0, %f1, %f0  #1805 pc 25436
	lw	%x5, 0(%x2)  #1805 pc 25440
	add	%x24, %x0, %x5  #1805 pc 25444
	fsw	%f0, 0(%x24) #1805 pc 25448
	lw	%x6, 4(%x2)  #1806 pc 25452
	addi	%x5, %x6, 0  #0 pc 25456
	sw	%x1, 100(%x2)  #1806 pc 25460
	addi	%x2, %x2, 104  #1806 pc 25464
	jal	%x1, o_param_r3.2720  #1806 pc 25468
	addi	%x2, %x2, -104  #1806 pc 25472
	lw	%x1, 100(%x2) #1806 pc 25476
	flw	%f1, 24(%x2)  #1806 pc 25480
	fmul	%f0, %f1, %f0  #1806 pc 25484
	lw	%x5, 4(%x2)  #1806 pc 25488
	fsw	%f0, 96(%x2)  #1806 pc 25492
	sw	%x1, 108(%x2)  #1806 pc 25496
	addi	%x2, %x2, 112  #1806 pc 25500
	jal	%x1, o_param_r1.2716  #1806 pc 25504
	addi	%x2, %x2, -112  #1806 pc 25508
	lw	%x1, 108(%x2) #1806 pc 25512
	flw	%f1, 56(%x2)  #1806 pc 25516
	fmul	%f0, %f1, %f0  #1806 pc 25520
	flw	%f1, 96(%x2)  #1806 pc 25524
	fadd	%f0, %f1, %f0  #1806 pc 25528
	sw	%x1, 108(%x2)  #1806 pc 25532
	addi	%x2, %x2, 112  #1806 pc 25536
	jal	%x1, fhalf.2538  #1806 pc 25540
	addi	%x2, %x2, -112  #1806 pc 25544
	lw	%x1, 108(%x2) #1806 pc 25548
	flw	%f1, 72(%x2)  #1806 pc 25552
	fadd	%f0, %f1, %f0  #1806 pc 25556
	lw	%x5, 0(%x2)  #1806 pc 25560
	addi	%x24, %x0, 4  #pc 25564
	add	%x24, %x24, %x5  #1806 pc 25568
	fsw	%f0, 0(%x24) #1806 pc 25572
	lw	%x6, 4(%x2)  #1807 pc 25576
	addi	%x5, %x6, 0  #0 pc 25580
	sw	%x1, 108(%x2)  #1807 pc 25584
	addi	%x2, %x2, 112  #1807 pc 25588
	jal	%x1, o_param_r2.2718  #1807 pc 25592
	addi	%x2, %x2, -112  #1807 pc 25596
	lw	%x1, 108(%x2) #1807 pc 25600
	flw	%f1, 24(%x2)  #1807 pc 25604
	fmul	%f0, %f1, %f0  #1807 pc 25608
	lw	%x5, 4(%x2)  #1807 pc 25612
	fsw	%f0, 104(%x2)  #1807 pc 25616
	sw	%x1, 116(%x2)  #1807 pc 25620
	addi	%x2, %x2, 120  #1807 pc 25624
	jal	%x1, o_param_r1.2716  #1807 pc 25628
	addi	%x2, %x2, -120  #1807 pc 25632
	lw	%x1, 116(%x2) #1807 pc 25636
	flw	%f1, 40(%x2)  #1807 pc 25640
	fmul	%f0, %f1, %f0  #1807 pc 25644
	flw	%f1, 104(%x2)  #1807 pc 25648
	fadd	%f0, %f1, %f0  #1807 pc 25652
	sw	%x1, 116(%x2)  #1807 pc 25656
	addi	%x2, %x2, 120  #1807 pc 25660
	jal	%x1, fhalf.2538  #1807 pc 25664
	addi	%x2, %x2, -120  #1807 pc 25668
	lw	%x1, 116(%x2) #1807 pc 25672
	flw	%f1, 80(%x2)  #1807 pc 25676
	fadd	%f0, %f1, %f0  #1807 pc 25680
	lw	%x5, 0(%x2)  #1807 pc 25684
	addi	%x24, %x0, 8  #pc 25688
	add	%x24, %x24, %x5  #1807 pc 25692
	fsw	%f0, 0(%x24) #1807 pc 25696
be_cont.9453: #pc 25696
	lw	%x6, 4(%x2)  #1809 pc 25700
	addi	%x5, %x6, 0  #0 pc 25704
	sw	%x1, 116(%x2)  #1809 pc 25708
	addi	%x2, %x2, 120  #1809 pc 25712
	jal	%x1, o_isinvert.2688  #1809 pc 25716
	addi	%x2, %x2, -120  #1809 pc 25720
	lw	%x1, 116(%x2) #1809 pc 25724
	addi	%x6, %x5, 0  #1809 pc 25728
	lw	%x5, 0(%x2)  #1809 pc 25732
	j	vecunit_sgn.2657  #1809 pc 25736
	nop #pc 25740
get_nvector.2948:  #pc 25744
	addi	%x24, %x0, 12  #pc 25744
	add	%x24, %x24, %x22  #1814 pc 25748
	lw	%x7, 0(%x24)  #1814 pc 25752
	addi	%x24, %x0, 8  #pc 25756
	add	%x24, %x24, %x22  #1814 pc 25760
	lw	%x9, 0(%x24)  #1814 pc 25764
	addi	%x24, %x0, 4  #pc 25768
	add	%x24, %x24, %x22  #1814 pc 25772
	lw	%x10, 0(%x24)  #1814 pc 25776
	sw	%x7, 0(%x2)  #1814 pc 25780
	sw	%x5, 4(%x2)  #1814 pc 25784
	sw	%x10, 8(%x2)  #1814 pc 25788
	sw	%x6, 12(%x2)  #1814 pc 25792
	sw	%x9, 16(%x2)  #1814 pc 25796
	sw	%x1, 20(%x2)  #1814 pc 25800
	addi	%x2, %x2, 24  #1814 pc 25804
	jal	%x1, o_form.2684  #1814 pc 25808
	addi	%x2, %x2, -24  #1814 pc 25812
	lw	%x1, 20(%x2) #1814 pc 25816
	addi	%x24, %x0, 1  #pc 25820
	beq	%x5, %x24, 12  #1815 pc 25824
	j	be_else.9454 #pc 25828
	nop #pc 25832
	lw	%x5, 12(%x2)  #1816 pc 25836
	lw	%x22, 16(%x2)  #1816 pc 25840
	lw	%x23, 0(%x22)  #1816 pc 25844
	jalr	%x0, %x23, 0  #1816 pc 25848
	nop #pc 25852
be_else.9454: #pc 25852
	addi	%x24, %x0, 2  #pc 25856
	beq	%x5, %x24, 12  #1817 pc 25860
	j	be_else.9455 #pc 25864
	nop #pc 25868
	lw	%x5, 4(%x2)  #1818 pc 25872
	lw	%x22, 8(%x2)  #1818 pc 25876
	lw	%x23, 0(%x22)  #1818 pc 25880
	jalr	%x0, %x23, 0  #1818 pc 25884
	nop #pc 25888
be_else.9455: #pc 25888
	lw	%x5, 4(%x2)  #1820 pc 25892
	lw	%x22, 0(%x2)  #1820 pc 25896
	lw	%x23, 0(%x22)  #1820 pc 25900
	jalr	%x0, %x23, 0  #1820 pc 25904
	nop #pc 25908
utexture.2951:  #pc 25912
	addi	%x24, %x0, 4  #pc 25912
	add	%x24, %x24, %x22  #1830 pc 25916
	lw	%x7, 0(%x24)  #1830 pc 25920
	sw	%x6, 0(%x2)  #1830 pc 25924
	sw	%x7, 4(%x2)  #1830 pc 25928
	sw	%x5, 8(%x2)  #1830 pc 25932
	sw	%x1, 12(%x2)  #1830 pc 25936
	addi	%x2, %x2, 16  #1830 pc 25940
	jal	%x1, o_texturetype.2682  #1830 pc 25944
	addi	%x2, %x2, -16  #1830 pc 25948
	lw	%x1, 12(%x2) #1830 pc 25952
	lw	%x6, 8(%x2)  #1832 pc 25956
	sw	%x5, 12(%x2)  #1832 pc 25960
	addi	%x5, %x6, 0  #0 pc 25964
	sw	%x1, 20(%x2)  #1832 pc 25968
	addi	%x2, %x2, 24  #1832 pc 25972
	jal	%x1, o_color_red.2710  #1832 pc 25976
	addi	%x2, %x2, -24  #1832 pc 25980
	lw	%x1, 20(%x2) #1832 pc 25984
	lw	%x5, 4(%x2)  #1832 pc 25988
	add	%x24, %x0, %x5  #1832 pc 25992
	fsw	%f0, 0(%x24) #1832 pc 25996
	lw	%x6, 8(%x2)  #1833 pc 26000
	addi	%x5, %x6, 0  #0 pc 26004
	sw	%x1, 20(%x2)  #1833 pc 26008
	addi	%x2, %x2, 24  #1833 pc 26012
	jal	%x1, o_color_green.2712  #1833 pc 26016
	addi	%x2, %x2, -24  #1833 pc 26020
	lw	%x1, 20(%x2) #1833 pc 26024
	lw	%x5, 4(%x2)  #1833 pc 26028
	addi	%x24, %x0, 4  #pc 26032
	add	%x24, %x24, %x5  #1833 pc 26036
	fsw	%f0, 0(%x24) #1833 pc 26040
	lw	%x6, 8(%x2)  #1834 pc 26044
	addi	%x5, %x6, 0  #0 pc 26048
	sw	%x1, 20(%x2)  #1834 pc 26052
	addi	%x2, %x2, 24  #1834 pc 26056
	jal	%x1, o_color_blue.2714  #1834 pc 26060
	addi	%x2, %x2, -24  #1834 pc 26064
	lw	%x1, 20(%x2) #1834 pc 26068
	lw	%x5, 4(%x2)  #1834 pc 26072
	addi	%x24, %x0, 8  #pc 26076
	add	%x24, %x24, %x5  #1834 pc 26080
	fsw	%f0, 0(%x24) #1834 pc 26084
	lw	%x6, 12(%x2)  #1835 pc 26088
	addi	%x24, %x0, 1  #pc 26092
	beq	%x6, %x24, 12  #1835 pc 26096
	j	be_else.9456 #pc 26100
	nop #pc 26104
	lw	%x6, 0(%x2)  #1838 pc 26108
	add	%x24, %x0, %x6  #1838 pc 26112
	flw	%f0, 0(%x24)  #1838 pc 26116
	lw	%x7, 8(%x2)  #1838 pc 26120
	fsw	%f0, 16(%x2)  #1838 pc 26124
	addi	%x5, %x7, 0  #0 pc 26128
	sw	%x1, 28(%x2)  #1838 pc 26132
	addi	%x2, %x2, 32  #1838 pc 26136
	jal	%x1, o_param_x.2700  #1838 pc 26140
	addi	%x2, %x2, -32  #1838 pc 26144
	lw	%x1, 28(%x2) #1838 pc 26148
	flw	%f1, 16(%x2)  #1838 pc 26152
	fsub	%f0, %f1, %f0  #1838 pc 26156
	fmv	%f1, l.6830  #0 pc 26160
	fmul	%f1, %f0, %f1  #1840 pc 26164
	fsw	%f0, 24(%x2)  #1840 pc 26168
	fadd	%f0, %f1, %f30  #0 pc 26172
	sw	%x1, 36(%x2)  #1840 pc 26176
	addi	%x2, %x2, 40  #1840 pc 26180
	jal	%x1, floor.2549  #1840 pc 26184
	addi	%x2, %x2, -40  #1840 pc 26188
	lw	%x1, 36(%x2) #1840 pc 26192
	fmv	%f1, l.6832  #0 pc 26196
	fmul	%f0, %f0, %f1  #1840 pc 26200
	flw	%f1, 24(%x2)  #1841 pc 26204
	fsub	%f0, %f1, %f0  #1841 pc 26208
	fmv	%f1, l.6333  #0 pc 26212
	sw	%x1, 36(%x2)  #1841 pc 26216
	addi	%x2, %x2, 40  #1841 pc 26220
	jal	%x1, fless.2540  #1841 pc 26224
	addi	%x2, %x2, -40  #1841 pc 26228
	lw	%x1, 36(%x2) #1841 pc 26232
	lw	%x6, 0(%x2)  #1843 pc 26236
	addi	%x24, %x0, 8  #pc 26240
	add	%x24, %x24, %x6  #1843 pc 26244
	flw	%f0, 0(%x24)  #1843 pc 26248
	lw	%x6, 8(%x2)  #1843 pc 26252
	sw	%x5, 32(%x2)  #1843 pc 26256
	fsw	%f0, 40(%x2)  #1843 pc 26260
	addi	%x5, %x6, 0  #0 pc 26264
	sw	%x1, 52(%x2)  #1843 pc 26268
	addi	%x2, %x2, 56  #1843 pc 26272
	jal	%x1, o_param_z.2704  #1843 pc 26276
	addi	%x2, %x2, -56  #1843 pc 26280
	lw	%x1, 52(%x2) #1843 pc 26284
	flw	%f1, 40(%x2)  #1843 pc 26288
	fsub	%f0, %f1, %f0  #1843 pc 26292
	fmv	%f1, l.6830  #0 pc 26296
	fmul	%f1, %f0, %f1  #1845 pc 26300
	fsw	%f0, 48(%x2)  #1845 pc 26304
	fadd	%f0, %f1, %f30  #0 pc 26308
	sw	%x1, 60(%x2)  #1845 pc 26312
	addi	%x2, %x2, 64  #1845 pc 26316
	jal	%x1, floor.2549  #1845 pc 26320
	addi	%x2, %x2, -64  #1845 pc 26324
	lw	%x1, 60(%x2) #1845 pc 26328
	fmv	%f1, l.6832  #0 pc 26332
	fmul	%f0, %f0, %f1  #1845 pc 26336
	flw	%f1, 48(%x2)  #1846 pc 26340
	fsub	%f0, %f1, %f0  #1846 pc 26344
	fmv	%f1, l.6333  #0 pc 26348
	sw	%x1, 60(%x2)  #1846 pc 26352
	addi	%x2, %x2, 64  #1846 pc 26356
	jal	%x1, fless.2540  #1846 pc 26360
	addi	%x2, %x2, -64  #1846 pc 26364
	lw	%x1, 60(%x2) #1846 pc 26368
	lw	%x6, 32(%x2)  #1849 pc 26372
	beq	%x6, %x0, 12  #1849 pc 26376
	j	be_else.9458 #pc 26380
	nop #pc 26384
	beq	%x5, %x0, 12  #1851 pc 26388
	j	be_else.9460 #pc 26392
	nop #pc 26396
	fmv	%f0, l.6807  #0 pc 26400
	j	be_cont.9461 #pc 26404
	nop #pc 26408
be_else.9460: #pc 26408
	fmv	%f0, l.6293  #0 pc 26412
be_cont.9461: #pc 26412
	j	be_cont.9459 #pc 26416
	nop #pc 26420
be_else.9458: #pc 26420
	beq	%x5, %x0, 12  #1850 pc 26424
	j	be_else.9462 #pc 26428
	nop #pc 26432
	fmv	%f0, l.6293  #0 pc 26436
	j	be_cont.9463 #pc 26440
	nop #pc 26444
be_else.9462: #pc 26444
	fmv	%f0, l.6807  #0 pc 26448
be_cont.9463: #pc 26448
be_cont.9459: #pc 26448
	lw	%x5, 4(%x2)  #1848 pc 26452
	addi	%x24, %x0, 4  #pc 26456
	add	%x24, %x24, %x5  #1848 pc 26460
	fsw	%f0, 0(%x24) #1848 pc 26464
	ret #pc 26468
	nop #pc 26472
be_else.9456: #pc 26472
	addi	%x24, %x0, 2  #pc 26476
	beq	%x6, %x24, 12  #1853 pc 26480
	j	be_else.9465 #pc 26484
	nop #pc 26488
	lw	%x6, 0(%x2)  #1856 pc 26492
	addi	%x24, %x0, 4  #pc 26496
	add	%x24, %x24, %x6  #1856 pc 26500
	flw	%f0, 0(%x24)  #1856 pc 26504
	fmv	%f1, l.6822  #0 pc 26508
	fmul	%f0, %f0, %f1  #1856 pc 26512
	sw	%x1, 60(%x2)  #1856 pc 26516
	addi	%x2, %x2, 64  #1856 pc 26520
	jal	%x1, sin.2543  #1856 pc 26524
	addi	%x2, %x2, -64  #1856 pc 26528
	lw	%x1, 60(%x2) #1856 pc 26532
	sw	%x1, 60(%x2)  #1856 pc 26536
	addi	%x2, %x2, 64  #1856 pc 26540
	jal	%x1, fsqr.2536  #1856 pc 26544
	addi	%x2, %x2, -64  #1856 pc 26548
	lw	%x1, 60(%x2) #1856 pc 26552
	fmv	%f1, l.6807  #0 pc 26556
	fmul	%f1, %f1, %f0  #1857 pc 26560
	lw	%x5, 4(%x2)  #1857 pc 26564
	add	%x24, %x0, %x5  #1857 pc 26568
	fsw	%f1, 0(%x24) #1857 pc 26572
	fmv	%f1, l.6807  #0 pc 26576
	fmv	%f2, l.6305  #0 pc 26580
	fsub	%f0, %f2, %f0  #1858 pc 26584
	fmul	%f0, %f1, %f0  #1858 pc 26588
	addi	%x24, %x0, 4  #pc 26592
	add	%x24, %x24, %x5  #1858 pc 26596
	fsw	%f0, 0(%x24) #1858 pc 26600
	ret #pc 26604
	nop #pc 26608
be_else.9465: #pc 26608
	addi	%x24, %x0, 3  #pc 26612
	beq	%x6, %x24, 12  #1860 pc 26616
	j	be_else.9467 #pc 26620
	nop #pc 26624
	lw	%x6, 0(%x2)  #1863 pc 26628
	add	%x24, %x0, %x6  #1863 pc 26632
	flw	%f0, 0(%x24)  #1863 pc 26636
	lw	%x7, 8(%x2)  #1863 pc 26640
	fsw	%f0, 56(%x2)  #1863 pc 26644
	addi	%x5, %x7, 0  #0 pc 26648
	sw	%x1, 68(%x2)  #1863 pc 26652
	addi	%x2, %x2, 72  #1863 pc 26656
	jal	%x1, o_param_x.2700  #1863 pc 26660
	addi	%x2, %x2, -72  #1863 pc 26664
	lw	%x1, 68(%x2) #1863 pc 26668
	flw	%f1, 56(%x2)  #1863 pc 26672
	fsub	%f0, %f1, %f0  #1863 pc 26676
	lw	%x5, 0(%x2)  #1864 pc 26680
	addi	%x24, %x0, 8  #pc 26684
	add	%x24, %x24, %x5  #1864 pc 26688
	flw	%f1, 0(%x24)  #1864 pc 26692
	lw	%x5, 8(%x2)  #1864 pc 26696
	fsw	%f0, 64(%x2)  #1864 pc 26700
	fsw	%f1, 72(%x2)  #1864 pc 26704
	sw	%x1, 84(%x2)  #1864 pc 26708
	addi	%x2, %x2, 88  #1864 pc 26712
	jal	%x1, o_param_z.2704  #1864 pc 26716
	addi	%x2, %x2, -88  #1864 pc 26720
	lw	%x1, 84(%x2) #1864 pc 26724
	flw	%f1, 72(%x2)  #1864 pc 26728
	fsub	%f0, %f1, %f0  #1864 pc 26732
	flw	%f1, 64(%x2)  #1865 pc 26736
	fsw	%f0, 80(%x2)  #1865 pc 26740
	fadd	%f0, %f1, %f30  #0 pc 26744
	sw	%x1, 92(%x2)  #1865 pc 26748
	addi	%x2, %x2, 96  #1865 pc 26752
	jal	%x1, fsqr.2536  #1865 pc 26756
	addi	%x2, %x2, -96  #1865 pc 26760
	lw	%x1, 92(%x2) #1865 pc 26764
	flw	%f1, 80(%x2)  #1865 pc 26768
	fsw	%f0, 88(%x2)  #1865 pc 26772
	fadd	%f0, %f1, %f30  #0 pc 26776
	sw	%x1, 100(%x2)  #1865 pc 26780
	addi	%x2, %x2, 104  #1865 pc 26784
	jal	%x1, fsqr.2536  #1865 pc 26788
	addi	%x2, %x2, -104  #1865 pc 26792
	lw	%x1, 100(%x2) #1865 pc 26796
	flw	%f1, 88(%x2)  #1865 pc 26800
	fadd	%f0, %f1, %f0  #1865 pc 26804
	fmv	%f1, l.6333  #0 pc 26808
	fdiv	%f0, %f0, %f1  #1865 pc 26812
	fsqrt	%f0, %f0  #1865 pc 26816
	fsw	%f0, 96(%x2)  #1866 pc 26820
	sw	%x1, 108(%x2)  #1866 pc 26824
	addi	%x2, %x2, 112  #1866 pc 26828
	jal	%x1, floor.2549  #1866 pc 26832
	addi	%x2, %x2, -112  #1866 pc 26836
	lw	%x1, 108(%x2) #1866 pc 26840
	flw	%f1, 96(%x2)  #1866 pc 26844
	fsub	%f0, %f1, %f0  #1866 pc 26848
	fmv	%f1, l.6795  #0 pc 26852
	fmul	%f0, %f0, %f1  #1866 pc 26856
	sw	%x1, 108(%x2)  #1867 pc 26860
	addi	%x2, %x2, 112  #1867 pc 26864
	jal	%x1, cos.2545  #1867 pc 26868
	addi	%x2, %x2, -112  #1867 pc 26872
	lw	%x1, 108(%x2) #1867 pc 26876
	sw	%x1, 108(%x2)  #1867 pc 26880
	addi	%x2, %x2, 112  #1867 pc 26884
	jal	%x1, fsqr.2536  #1867 pc 26888
	addi	%x2, %x2, -112  #1867 pc 26892
	lw	%x1, 108(%x2) #1867 pc 26896
	fmv	%f1, l.6807  #0 pc 26900
	fmul	%f1, %f0, %f1  #1868 pc 26904
	lw	%x5, 4(%x2)  #1868 pc 26908
	addi	%x24, %x0, 4  #pc 26912
	add	%x24, %x24, %x5  #1868 pc 26916
	fsw	%f1, 0(%x24) #1868 pc 26920
	fmv	%f1, l.6305  #0 pc 26924
	fsub	%f0, %f1, %f0  #1869 pc 26928
	fmv	%f1, l.6807  #0 pc 26932
	fmul	%f0, %f0, %f1  #1869 pc 26936
	addi	%x24, %x0, 8  #pc 26940
	add	%x24, %x24, %x5  #1869 pc 26944
	fsw	%f0, 0(%x24) #1869 pc 26948
	ret #pc 26952
	nop #pc 26956
be_else.9467: #pc 26956
	addi	%x24, %x0, 4  #pc 26960
	beq	%x6, %x24, 12  #1871 pc 26964
	j	be_else.9469 #pc 26968
	nop #pc 26972
	lw	%x6, 0(%x2)  #1873 pc 26976
	add	%x24, %x0, %x6  #1873 pc 26980
	flw	%f0, 0(%x24)  #1873 pc 26984
	lw	%x7, 8(%x2)  #1873 pc 26988
	fsw	%f0, 104(%x2)  #1873 pc 26992
	addi	%x5, %x7, 0  #0 pc 26996
	sw	%x1, 116(%x2)  #1873 pc 27000
	addi	%x2, %x2, 120  #1873 pc 27004
	jal	%x1, o_param_x.2700  #1873 pc 27008
	addi	%x2, %x2, -120  #1873 pc 27012
	lw	%x1, 116(%x2) #1873 pc 27016
	flw	%f1, 104(%x2)  #1873 pc 27020
	fsub	%f0, %f1, %f0  #1873 pc 27024
	lw	%x5, 8(%x2)  #1873 pc 27028
	fsw	%f0, 112(%x2)  #1873 pc 27032
	sw	%x1, 124(%x2)  #1873 pc 27036
	addi	%x2, %x2, 128  #1873 pc 27040
	jal	%x1, o_param_a.2692  #1873 pc 27044
	addi	%x2, %x2, -128  #1873 pc 27048
	lw	%x1, 124(%x2) #1873 pc 27052
	fsqrt	%f0, %f0  #1873 pc 27056
	flw	%f1, 112(%x2)  #1873 pc 27060
	fmul	%f0, %f1, %f0  #1873 pc 27064
	lw	%x5, 0(%x2)  #1874 pc 27068
	addi	%x24, %x0, 8  #pc 27072
	add	%x24, %x24, %x5  #1874 pc 27076
	flw	%f1, 0(%x24)  #1874 pc 27080
	lw	%x6, 8(%x2)  #1874 pc 27084
	fsw	%f0, 120(%x2)  #1874 pc 27088
	fsw	%f1, 128(%x2)  #1874 pc 27092
	addi	%x5, %x6, 0  #0 pc 27096
	sw	%x1, 140(%x2)  #1874 pc 27100
	addi	%x2, %x2, 144  #1874 pc 27104
	jal	%x1, o_param_z.2704  #1874 pc 27108
	addi	%x2, %x2, -144  #1874 pc 27112
	lw	%x1, 140(%x2) #1874 pc 27116
	flw	%f1, 128(%x2)  #1874 pc 27120
	fsub	%f0, %f1, %f0  #1874 pc 27124
	lw	%x5, 8(%x2)  #1874 pc 27128
	fsw	%f0, 136(%x2)  #1874 pc 27132
	sw	%x1, 148(%x2)  #1874 pc 27136
	addi	%x2, %x2, 152  #1874 pc 27140
	jal	%x1, o_param_c.2696  #1874 pc 27144
	addi	%x2, %x2, -152  #1874 pc 27148
	lw	%x1, 148(%x2) #1874 pc 27152
	fsqrt	%f0, %f0  #1874 pc 27156
	flw	%f1, 136(%x2)  #1874 pc 27160
	fmul	%f0, %f1, %f0  #1874 pc 27164
	flw	%f1, 120(%x2)  #1875 pc 27168
	fsw	%f0, 144(%x2)  #1875 pc 27172
	fadd	%f0, %f1, %f30  #0 pc 27176
	sw	%x1, 156(%x2)  #1875 pc 27180
	addi	%x2, %x2, 160  #1875 pc 27184
	jal	%x1, fsqr.2536  #1875 pc 27188
	addi	%x2, %x2, -160  #1875 pc 27192
	lw	%x1, 156(%x2) #1875 pc 27196
	flw	%f1, 144(%x2)  #1875 pc 27200
	fsw	%f0, 152(%x2)  #1875 pc 27204
	fadd	%f0, %f1, %f30  #0 pc 27208
	sw	%x1, 164(%x2)  #1875 pc 27212
	addi	%x2, %x2, 168  #1875 pc 27216
	jal	%x1, fsqr.2536  #1875 pc 27220
	addi	%x2, %x2, -168  #1875 pc 27224
	lw	%x1, 164(%x2) #1875 pc 27228
	flw	%f1, 152(%x2)  #1875 pc 27232
	fadd	%f0, %f1, %f0  #1875 pc 27236
	flw	%f1, 120(%x2)  #1877 pc 27240
	fabs	%f2, %f1  #1877 pc 27244
	fmv	%f3, l.6789  #0 pc 27248
	fsw	%f0, 160(%x2)  #1877 pc 27252
	fadd	%f1, %f3, %f30  #0 pc 27256
	fadd	%f0, %f2, %f30  #0 pc 27260
	sw	%x1, 172(%x2)  #1877 pc 27264
	addi	%x2, %x2, 176  #1877 pc 27268
	jal	%x1, fless.2540  #1877 pc 27272
	addi	%x2, %x2, -176  #1877 pc 27276
	lw	%x1, 172(%x2) #1877 pc 27280
	beq	%x5, %x0, 12  #1877 pc 27284
	j	be_else.9470 #pc 27288
	nop #pc 27292
	flw	%f0, 120(%x2)  #1880 pc 27296
	flw	%f1, 144(%x2)  #1880 pc 27300
	fdiv	%f0, %f1, %f0  #1880 pc 27304
	fabs	%f0, %f0  #1880 pc 27308
	sw	%x1, 172(%x2)  #1882 pc 27312
	addi	%x2, %x2, 176  #1882 pc 27316
	jal	%x1, atan.2547  #1882 pc 27320
	addi	%x2, %x2, -176  #1882 pc 27324
	lw	%x1, 172(%x2) #1882 pc 27328
	fmv	%f1, l.6793  #0 pc 27332
	fmul	%f0, %f0, %f1  #1882 pc 27336
	fmv	%f1, l.6795  #0 pc 27340
	fdiv	%f0, %f0, %f1  #1882 pc 27344
	j	be_cont.9471 #pc 27348
	nop #pc 27352
be_else.9470: #pc 27352
	fmv	%f0, l.6791  #0 pc 27356
be_cont.9471: #pc 27356
	fsw	%f0, 168(%x2)  #1884 pc 27360
	sw	%x1, 180(%x2)  #1884 pc 27364
	addi	%x2, %x2, 184  #1884 pc 27368
	jal	%x1, floor.2549  #1884 pc 27372
	addi	%x2, %x2, -184  #1884 pc 27376
	lw	%x1, 180(%x2) #1884 pc 27380
	flw	%f1, 168(%x2)  #1884 pc 27384
	fsub	%f0, %f1, %f0  #1884 pc 27388
	lw	%x5, 0(%x2)  #1886 pc 27392
	addi	%x24, %x0, 4  #pc 27396
	add	%x24, %x24, %x5  #1886 pc 27400
	flw	%f1, 0(%x24)  #1886 pc 27404
	lw	%x5, 8(%x2)  #1886 pc 27408
	fsw	%f0, 176(%x2)  #1886 pc 27412
	fsw	%f1, 184(%x2)  #1886 pc 27416
	sw	%x1, 196(%x2)  #1886 pc 27420
	addi	%x2, %x2, 200  #1886 pc 27424
	jal	%x1, o_param_y.2702  #1886 pc 27428
	addi	%x2, %x2, -200  #1886 pc 27432
	lw	%x1, 196(%x2) #1886 pc 27436
	flw	%f1, 184(%x2)  #1886 pc 27440
	fsub	%f0, %f1, %f0  #1886 pc 27444
	lw	%x5, 8(%x2)  #1886 pc 27448
	fsw	%f0, 192(%x2)  #1886 pc 27452
	sw	%x1, 204(%x2)  #1886 pc 27456
	addi	%x2, %x2, 208  #1886 pc 27460
	jal	%x1, o_param_b.2694  #1886 pc 27464
	addi	%x2, %x2, -208  #1886 pc 27468
	lw	%x1, 204(%x2) #1886 pc 27472
	fsqrt	%f0, %f0  #1886 pc 27476
	flw	%f1, 192(%x2)  #1886 pc 27480
	fmul	%f0, %f1, %f0  #1886 pc 27484
	flw	%f1, 160(%x2)  #1888 pc 27488
	fabs	%f2, %f1  #1888 pc 27492
	fmv	%f3, l.6789  #0 pc 27496
	fsw	%f0, 200(%x2)  #1888 pc 27500
	fadd	%f1, %f3, %f30  #0 pc 27504
	fadd	%f0, %f2, %f30  #0 pc 27508
	sw	%x1, 212(%x2)  #1888 pc 27512
	addi	%x2, %x2, 216  #1888 pc 27516
	jal	%x1, fless.2540  #1888 pc 27520
	addi	%x2, %x2, -216  #1888 pc 27524
	lw	%x1, 212(%x2) #1888 pc 27528
	beq	%x5, %x0, 12  #1888 pc 27532
	j	be_else.9472 #pc 27536
	nop #pc 27540
	flw	%f0, 160(%x2)  #1891 pc 27544
	flw	%f1, 200(%x2)  #1891 pc 27548
	fdiv	%f0, %f1, %f0  #1891 pc 27552
	fabs	%f0, %f0  #1891 pc 27556
	sw	%x1, 212(%x2)  #1892 pc 27560
	addi	%x2, %x2, 216  #1892 pc 27564
	jal	%x1, atan.2547  #1892 pc 27568
	addi	%x2, %x2, -216  #1892 pc 27572
	lw	%x1, 212(%x2) #1892 pc 27576
	fmv	%f1, l.6793  #0 pc 27580
	fmul	%f0, %f0, %f1  #1892 pc 27584
	fmv	%f1, l.6795  #0 pc 27588
	fdiv	%f0, %f0, %f1  #1892 pc 27592
	j	be_cont.9473 #pc 27596
	nop #pc 27600
be_else.9472: #pc 27600
	fmv	%f0, l.6791  #0 pc 27604
be_cont.9473: #pc 27604
	fsw	%f0, 208(%x2)  #1894 pc 27608
	sw	%x1, 220(%x2)  #1894 pc 27612
	addi	%x2, %x2, 224  #1894 pc 27616
	jal	%x1, floor.2549  #1894 pc 27620
	addi	%x2, %x2, -224  #1894 pc 27624
	lw	%x1, 220(%x2) #1894 pc 27628
	flw	%f1, 208(%x2)  #1894 pc 27632
	fsub	%f0, %f1, %f0  #1894 pc 27636
	fmv	%f1, l.6802  #0 pc 27640
	fmv	%f2, l.6297  #0 pc 27644
	flw	%f3, 176(%x2)  #1895 pc 27648
	fsub	%f2, %f2, %f3  #1895 pc 27652
	fsw	%f0, 216(%x2)  #1895 pc 27656
	fsw	%f1, 224(%x2)  #1895 pc 27660
	fadd	%f0, %f2, %f30  #0 pc 27664
	sw	%x1, 236(%x2)  #1895 pc 27668
	addi	%x2, %x2, 240  #1895 pc 27672
	jal	%x1, fsqr.2536  #1895 pc 27676
	addi	%x2, %x2, -240  #1895 pc 27680
	lw	%x1, 236(%x2) #1895 pc 27684
	flw	%f1, 224(%x2)  #1895 pc 27688
	fsub	%f0, %f1, %f0  #1895 pc 27692
	fmv	%f1, l.6297  #0 pc 27696
	flw	%f2, 216(%x2)  #1895 pc 27700
	fsub	%f1, %f1, %f2  #1895 pc 27704
	fsw	%f0, 232(%x2)  #1895 pc 27708
	fadd	%f0, %f1, %f30  #0 pc 27712
	sw	%x1, 244(%x2)  #1895 pc 27716
	addi	%x2, %x2, 248  #1895 pc 27720
	jal	%x1, fsqr.2536  #1895 pc 27724
	addi	%x2, %x2, -248  #1895 pc 27728
	lw	%x1, 244(%x2) #1895 pc 27732
	flw	%f1, 232(%x2)  #1895 pc 27736
	fsub	%f0, %f1, %f0  #1895 pc 27740
	fsw	%f0, 240(%x2)  #1896 pc 27744
	sw	%x1, 252(%x2)  #1896 pc 27748
	addi	%x2, %x2, 256  #1896 pc 27752
	jal	%x1, fisneg.2532  #1896 pc 27756
	addi	%x2, %x2, -256  #1896 pc 27760
	lw	%x1, 252(%x2) #1896 pc 27764
	beq	%x5, %x0, 12  #1896 pc 27768
	j	be_else.9474 #pc 27772
	nop #pc 27776
	flw	%f0, 240(%x2)  #1896 pc 27780
	j	be_cont.9475 #pc 27784
	nop #pc 27788
be_else.9474: #pc 27788
	fmv	%f0, l.6293  #0 pc 27792
be_cont.9475: #pc 27792
	fmv	%f1, l.6807  #0 pc 27796
	fmul	%f0, %f1, %f0  #1897 pc 27800
	fmv	%f1, l.6809  #0 pc 27804
	fdiv	%f0, %f0, %f1  #1897 pc 27808
	lw	%x5, 4(%x2)  #1897 pc 27812
	addi	%x24, %x0, 8  #pc 27816
	add	%x24, %x24, %x5  #1897 pc 27820
	fsw	%f0, 0(%x24) #1897 pc 27824
	ret #pc 27828
	nop #pc 27832
be_else.9469: #pc 27832
	ret #pc 27836
	nop #pc 27840
add_light.2954:  #pc 27844
	addi	%x24, %x0, 8  #pc 27844
	add	%x24, %x24, %x22  #0 pc 27848
	lw	%x5, 0(%x24)  #0 pc 27852
	addi	%x24, %x0, 4  #pc 27856
	add	%x24, %x24, %x22  #0 pc 27860
	lw	%x6, 0(%x24)  #0 pc 27864
	fsw	%f2, 0(%x2)  #1910 pc 27868
	fsw	%f1, 8(%x2)  #1910 pc 27872
	fsw	%f0, 16(%x2)  #1910 pc 27876
	sw	%x5, 24(%x2)  #1910 pc 27880
	sw	%x6, 28(%x2)  #1910 pc 27884
	sw	%x1, 36(%x2)  #1910 pc 27888
	addi	%x2, %x2, 40  #1910 pc 27892
	jal	%x1, fispos.2530  #1910 pc 27896
	addi	%x2, %x2, -40  #1910 pc 27900
	lw	%x1, 36(%x2) #1910 pc 27904
	beq	%x5, %x0, 12  #1910 pc 27908
	j	be_else.9478 #pc 27912
	nop #pc 27916
	j	be_cont.9479 #pc 27920
	nop #pc 27924
be_else.9478: #pc 27924
	flw	%f0, 16(%x2)  #1911 pc 27928
	lw	%x5, 28(%x2)  #1911 pc 27932
	lw	%x6, 24(%x2)  #1911 pc 27936
	sw	%x1, 36(%x2)  #1911 pc 27940
	addi	%x2, %x2, 40  #1911 pc 27944
	jal	%x1, vecaccum.2668  #1911 pc 27948
	addi	%x2, %x2, -40  #1911 pc 27952
	lw	%x1, 36(%x2) #1911 pc 27956
be_cont.9479: #pc 27956
	flw	%f0, 8(%x2)  #1915 pc 27960
	sw	%x1, 36(%x2)  #1915 pc 27964
	addi	%x2, %x2, 40  #1915 pc 27968
	jal	%x1, fispos.2530  #1915 pc 27972
	addi	%x2, %x2, -40  #1915 pc 27976
	lw	%x1, 36(%x2) #1915 pc 27980
	beq	%x5, %x0, 12  #1915 pc 27984
	j	be_else.9480 #pc 27988
	nop #pc 27992
	ret #pc 27996
	nop #pc 28000
be_else.9480: #pc 28000
	flw	%f0, 8(%x2)  #1916 pc 28004
	sw	%x1, 36(%x2)  #1916 pc 28008
	addi	%x2, %x2, 40  #1916 pc 28012
	jal	%x1, fsqr.2536  #1916 pc 28016
	addi	%x2, %x2, -40  #1916 pc 28020
	lw	%x1, 36(%x2) #1916 pc 28024
	sw	%x1, 36(%x2)  #1916 pc 28028
	addi	%x2, %x2, 40  #1916 pc 28032
	jal	%x1, fsqr.2536  #1916 pc 28036
	addi	%x2, %x2, -40  #1916 pc 28040
	lw	%x1, 36(%x2) #1916 pc 28044
	flw	%f1, 0(%x2)  #1916 pc 28048
	fmul	%f0, %f0, %f1  #1916 pc 28052
	lw	%x5, 28(%x2)  #1917 pc 28056
	add	%x24, %x0, %x5  #1917 pc 28060
	flw	%f1, 0(%x24)  #1917 pc 28064
	fadd	%f1, %f1, %f0  #1917 pc 28068
	add	%x24, %x0, %x5  #1917 pc 28072
	fsw	%f1, 0(%x24) #1917 pc 28076
	addi	%x24, %x0, 4  #pc 28080
	add	%x24, %x24, %x5  #1918 pc 28084
	flw	%f1, 0(%x24)  #1918 pc 28088
	fadd	%f1, %f1, %f0  #1918 pc 28092
	addi	%x24, %x0, 4  #pc 28096
	add	%x24, %x24, %x5  #1918 pc 28100
	fsw	%f1, 0(%x24) #1918 pc 28104
	addi	%x24, %x0, 8  #pc 28108
	add	%x24, %x24, %x5  #1919 pc 28112
	flw	%f1, 0(%x24)  #1919 pc 28116
	fadd	%f0, %f1, %f0  #1919 pc 28120
	addi	%x24, %x0, 8  #pc 28124
	add	%x24, %x24, %x5  #1919 pc 28128
	fsw	%f0, 0(%x24) #1919 pc 28132
	ret #pc 28136
	nop #pc 28140
trace_reflections.2958:  #pc 28144
	addi	%x24, %x0, 32  #pc 28144
	add	%x24, %x24, %x22  #0 pc 28148
	lw	%x7, 0(%x24)  #0 pc 28152
	addi	%x24, %x0, 28  #pc 28156
	add	%x24, %x24, %x22  #0 pc 28160
	lw	%x9, 0(%x24)  #0 pc 28164
	addi	%x24, %x0, 24  #pc 28168
	add	%x24, %x24, %x22  #0 pc 28172
	lw	%x10, 0(%x24)  #0 pc 28176
	addi	%x24, %x0, 20  #pc 28180
	add	%x24, %x24, %x22  #0 pc 28184
	lw	%x11, 0(%x24)  #0 pc 28188
	addi	%x24, %x0, 16  #pc 28192
	add	%x24, %x24, %x22  #0 pc 28196
	lw	%x12, 0(%x24)  #0 pc 28200
	addi	%x24, %x0, 12  #pc 28204
	add	%x24, %x24, %x22  #0 pc 28208
	lw	%x13, 0(%x24)  #0 pc 28212
	addi	%x24, %x0, 8  #pc 28216
	add	%x24, %x24, %x22  #0 pc 28220
	lw	%x14, 0(%x24)  #0 pc 28224
	addi	%x24, %x0, 4  #pc 28228
	add	%x24, %x24, %x22  #0 pc 28232
	lw	%x15, 0(%x24)  #0 pc 28236
	bge	%x5, %x0, 12  #1926 pc 28240
	j	bge_else.9483 #pc 28244
	nop #pc 28248
	slli	%x16, %x5, 2  #1927 pc 28252
	add	%x24, %x16, %x9  #1927 pc 28256
	lw	%x9, 0(%x24)  #1927 pc 28260
	sw	%x22, 0(%x2)  #1928 pc 28264
	sw	%x5, 4(%x2)  #1928 pc 28268
	fsw	%f1, 8(%x2)  #1928 pc 28272
	sw	%x15, 16(%x2)  #1928 pc 28276
	sw	%x6, 20(%x2)  #1928 pc 28280
	fsw	%f0, 24(%x2)  #1928 pc 28284
	sw	%x11, 32(%x2)  #1928 pc 28288
	sw	%x7, 36(%x2)  #1928 pc 28292
	sw	%x10, 40(%x2)  #1928 pc 28296
	sw	%x9, 44(%x2)  #1928 pc 28300
	sw	%x13, 48(%x2)  #1928 pc 28304
	sw	%x14, 52(%x2)  #1928 pc 28308
	sw	%x12, 56(%x2)  #1928 pc 28312
	addi	%x5, %x9, 0  #0 pc 28316
	sw	%x1, 60(%x2)  #1928 pc 28320
	addi	%x2, %x2, 64  #1928 pc 28324
	jal	%x1, r_dvec.2749  #1928 pc 28328
	addi	%x2, %x2, -64  #1928 pc 28332
	lw	%x1, 60(%x2) #1928 pc 28336
	lw	%x22, 56(%x2)  #1931 pc 28340
	sw	%x5, 60(%x2)  #1931 pc 28344
	sw	%x1, 68(%x2)  #1931 pc 28348
	lw	%x23, 0(%x22)  #1931 pc 28352
	addi	%x2, %x2, 72  #1931 pc 28356
	jalr	%x1, %x23, 0  #1931 pc 28360
	addi	%x2, %x2, -72  #1931 pc 28364
	lw	%x1, 68(%x2)  #1931 pc 28368
	beq	%x5, %x0, 12  #1931 pc 28372
	j	be_else.9484 #pc 28376
	nop #pc 28380
	j	be_cont.9485 #pc 28384
	nop #pc 28388
be_else.9484: #pc 28388
	lw	%x5, 52(%x2)  #1932 pc 28392
	add	%x24, %x0, %x5  #1932 pc 28396
	lw	%x5, 0(%x24)  #1932 pc 28400
	addi	%x6, %x0, 4  #0 pc 28404
	sw	%x1, 68(%x2)  #1932 pc 28408
	addi	%x2, %x2, 72  #1932 pc 28412
	jal	%x1, mul.2562  #1932 pc 28416
	addi	%x2, %x2, -72  #1932 pc 28420
	lw	%x1, 68(%x2) #1932 pc 28424
	lw	%x6, 48(%x2)  #1932 pc 28428
	add	%x24, %x0, %x6  #1932 pc 28432
	lw	%x6, 0(%x24)  #1932 pc 28436
	add	%x5, %x5, %x6  #1932 pc 28440
	lw	%x6, 44(%x2)  #1933 pc 28444
	sw	%x5, 64(%x2)  #1933 pc 28448
	addi	%x5, %x6, 0  #0 pc 28452
	sw	%x1, 68(%x2)  #1933 pc 28456
	addi	%x2, %x2, 72  #1933 pc 28460
	jal	%x1, r_surface_id.2747  #1933 pc 28464
	addi	%x2, %x2, -72  #1933 pc 28468
	lw	%x1, 68(%x2) #1933 pc 28472
	lw	%x6, 64(%x2)  #1933 pc 28476
	beq	%x6, %x5, 12  #1933 pc 28480
	j	be_else.9486 #pc 28484
	nop #pc 28488
	addi	%x5, %x0, 0  #0 pc 28492
	lw	%x6, 40(%x2)  #1935 pc 28496
	add	%x24, %x0, %x6  #1935 pc 28500
	lw	%x6, 0(%x24)  #1935 pc 28504
	lw	%x22, 36(%x2)  #1935 pc 28508
	sw	%x1, 68(%x2)  #1935 pc 28512
	lw	%x23, 0(%x22)  #1935 pc 28516
	addi	%x2, %x2, 72  #1935 pc 28520
	jalr	%x1, %x23, 0  #1935 pc 28524
	addi	%x2, %x2, -72  #1935 pc 28528
	lw	%x1, 68(%x2)  #1935 pc 28532
	beq	%x5, %x0, 12  #1935 pc 28536
	j	be_else.9488 #pc 28540
	nop #pc 28544
	lw	%x5, 60(%x2)  #1937 pc 28548
	sw	%x1, 68(%x2)  #1937 pc 28552
	addi	%x2, %x2, 72  #1937 pc 28556
	jal	%x1, d_vec.2743  #1937 pc 28560
	addi	%x2, %x2, -72  #1937 pc 28564
	lw	%x1, 68(%x2) #1937 pc 28568
	addi	%x6, %x5, 0  #1937 pc 28572
	lw	%x5, 32(%x2)  #1937 pc 28576
	sw	%x1, 68(%x2)  #1937 pc 28580
	addi	%x2, %x2, 72  #1937 pc 28584
	jal	%x1, veciprod.2660  #1937 pc 28588
	addi	%x2, %x2, -72  #1937 pc 28592
	lw	%x1, 68(%x2) #1937 pc 28596
	lw	%x5, 44(%x2)  #1938 pc 28600
	fsw	%f0, 72(%x2)  #1938 pc 28604
	sw	%x1, 84(%x2)  #1938 pc 28608
	addi	%x2, %x2, 88  #1938 pc 28612
	jal	%x1, r_bright.2751  #1938 pc 28616
	addi	%x2, %x2, -88  #1938 pc 28620
	lw	%x1, 84(%x2) #1938 pc 28624
	flw	%f1, 24(%x2)  #1939 pc 28628
	fmul	%f2, %f0, %f1  #1939 pc 28632
	flw	%f3, 72(%x2)  #1939 pc 28636
	fmul	%f2, %f2, %f3  #1939 pc 28640
	lw	%x5, 60(%x2)  #1940 pc 28644
	fsw	%f2, 80(%x2)  #1940 pc 28648
	fsw	%f0, 88(%x2)  #1940 pc 28652
	sw	%x1, 100(%x2)  #1940 pc 28656
	addi	%x2, %x2, 104  #1940 pc 28660
	jal	%x1, d_vec.2743  #1940 pc 28664
	addi	%x2, %x2, -104  #1940 pc 28668
	lw	%x1, 100(%x2) #1940 pc 28672
	addi	%x6, %x5, 0  #1940 pc 28676
	lw	%x5, 20(%x2)  #1940 pc 28680
	sw	%x1, 100(%x2)  #1940 pc 28684
	addi	%x2, %x2, 104  #1940 pc 28688
	jal	%x1, veciprod.2660  #1940 pc 28692
	addi	%x2, %x2, -104  #1940 pc 28696
	lw	%x1, 100(%x2) #1940 pc 28700
	flw	%f1, 88(%x2)  #1940 pc 28704
	fmul	%f1, %f1, %f0  #1940 pc 28708
	flw	%f0, 80(%x2)  #1941 pc 28712
	flw	%f2, 8(%x2)  #1941 pc 28716
	lw	%x22, 16(%x2)  #1941 pc 28720
	sw	%x1, 100(%x2)  #1941 pc 28724
	lw	%x23, 0(%x22)  #1941 pc 28728
	addi	%x2, %x2, 104  #1941 pc 28732
	jalr	%x1, %x23, 0  #1941 pc 28736
	addi	%x2, %x2, -104  #1941 pc 28740
	lw	%x1, 100(%x2)  #1941 pc 28744
	j	be_cont.9489 #pc 28748
	nop #pc 28752
be_else.9488: #pc 28752
be_cont.9489: #pc 28752
	j	be_cont.9487 #pc 28756
	nop #pc 28760
be_else.9486: #pc 28760
be_cont.9487: #pc 28760
be_cont.9485: #pc 28760
	lw	%x5, 4(%x2)  #1945 pc 28764
	addi	%x5, %x5, -1  #1945 pc 28768
	flw	%f0, 24(%x2)  #1945 pc 28772
	flw	%f1, 8(%x2)  #1945 pc 28776
	lw	%x6, 20(%x2)  #1945 pc 28780
	lw	%x22, 0(%x2)  #1945 pc 28784
	lw	%x23, 0(%x22)  #1945 pc 28788
	jalr	%x0, %x23, 0  #1945 pc 28792
	nop #pc 28796
bge_else.9483: #pc 28796
	ret #pc 28800
	nop #pc 28804
trace_ray.2963:  #pc 28808
	addi	%x24, %x0, 80  #pc 28808
	add	%x24, %x24, %x22  #0 pc 28812
	lw	%x9, 0(%x24)  #0 pc 28816
	addi	%x24, %x0, 76  #pc 28820
	add	%x24, %x24, %x22  #0 pc 28824
	lw	%x10, 0(%x24)  #0 pc 28828
	addi	%x24, %x0, 72  #pc 28832
	add	%x24, %x24, %x22  #0 pc 28836
	lw	%x11, 0(%x24)  #0 pc 28840
	addi	%x24, %x0, 68  #pc 28844
	add	%x24, %x24, %x22  #0 pc 28848
	lw	%x12, 0(%x24)  #0 pc 28852
	addi	%x24, %x0, 64  #pc 28856
	add	%x24, %x24, %x22  #0 pc 28860
	lw	%x13, 0(%x24)  #0 pc 28864
	addi	%x24, %x0, 60  #pc 28868
	add	%x24, %x24, %x22  #0 pc 28872
	lw	%x14, 0(%x24)  #0 pc 28876
	addi	%x24, %x0, 56  #pc 28880
	add	%x24, %x24, %x22  #0 pc 28884
	lw	%x15, 0(%x24)  #0 pc 28888
	addi	%x24, %x0, 52  #pc 28892
	add	%x24, %x24, %x22  #0 pc 28896
	lw	%x16, 0(%x24)  #0 pc 28900
	addi	%x24, %x0, 48  #pc 28904
	add	%x24, %x24, %x22  #0 pc 28908
	lw	%x17, 0(%x24)  #0 pc 28912
	addi	%x24, %x0, 44  #pc 28916
	add	%x24, %x24, %x22  #0 pc 28920
	lw	%x18, 0(%x24)  #0 pc 28924
	addi	%x24, %x0, 40  #pc 28928
	add	%x24, %x24, %x22  #0 pc 28932
	lw	%x19, 0(%x24)  #0 pc 28936
	addi	%x24, %x0, 36  #pc 28940
	add	%x24, %x24, %x22  #0 pc 28944
	lw	%x20, 0(%x24)  #0 pc 28948
	addi	%x24, %x0, 32  #pc 28952
	add	%x24, %x24, %x22  #0 pc 28956
	lw	%x21, 0(%x24)  #0 pc 28960
	addi	%x24, %x0, 28  #pc 28964
	add	%x24, %x24, %x22  #0 pc 28968
	lw	%x23, 0(%x24)  #0 pc 28972
	sw	%x11, 0(%x2)  #0 pc 28976
	addi	%x24, %x0, 24  #pc 28980
	add	%x24, %x24, %x22  #0 pc 28984
	lw	%x11, 0(%x24)  #0 pc 28988
	sw	%x10, 4(%x2)  #0 pc 28992
	addi	%x24, %x0, 20  #pc 28996
	add	%x24, %x24, %x22  #0 pc 29000
	lw	%x10, 0(%x24)  #0 pc 29004
	sw	%x20, 8(%x2)  #0 pc 29008
	addi	%x24, %x0, 16  #pc 29012
	add	%x24, %x24, %x22  #0 pc 29016
	lw	%x20, 0(%x24)  #0 pc 29020
	sw	%x15, 12(%x2)  #0 pc 29024
	addi	%x24, %x0, 12  #pc 29028
	add	%x24, %x24, %x22  #0 pc 29032
	lw	%x15, 0(%x24)  #0 pc 29036
	sw	%x14, 16(%x2)  #0 pc 29040
	addi	%x24, %x0, 8  #pc 29044
	add	%x24, %x24, %x22  #0 pc 29048
	lw	%x14, 0(%x24)  #0 pc 29052
	sw	%x22, 20(%x2)  #0 pc 29056
	addi	%x24, %x0, 4  #pc 29060
	add	%x24, %x24, %x22  #0 pc 29064
	lw	%x22, 0(%x24)  #0 pc 29068
	addi	%x24, %x0, 4  #pc 29072
	bge	%x24, %x5, 12  #1954 pc 29076
	j	ble_else.9492 #pc 29080
	nop #pc 29084
	fsw	%f1, 24(%x2)  #1955 pc 29088
	sw	%x22, 32(%x2)  #1955 pc 29092
	sw	%x17, 36(%x2)  #1955 pc 29096
	sw	%x19, 40(%x2)  #1955 pc 29100
	sw	%x12, 44(%x2)  #1955 pc 29104
	sw	%x7, 48(%x2)  #1955 pc 29108
	sw	%x11, 52(%x2)  #1955 pc 29112
	sw	%x9, 56(%x2)  #1955 pc 29116
	sw	%x10, 60(%x2)  #1955 pc 29120
	sw	%x13, 64(%x2)  #1955 pc 29124
	sw	%x15, 68(%x2)  #1955 pc 29128
	sw	%x18, 72(%x2)  #1955 pc 29132
	sw	%x20, 76(%x2)  #1955 pc 29136
	sw	%x16, 80(%x2)  #1955 pc 29140
	sw	%x14, 84(%x2)  #1955 pc 29144
	fsw	%f0, 88(%x2)  #1955 pc 29148
	sw	%x21, 96(%x2)  #1955 pc 29152
	sw	%x5, 100(%x2)  #1955 pc 29156
	sw	%x6, 104(%x2)  #1955 pc 29160
	sw	%x23, 108(%x2)  #1955 pc 29164
	addi	%x5, %x7, 0  #0 pc 29168
	sw	%x1, 116(%x2)  #1955 pc 29172
	addi	%x2, %x2, 120  #1955 pc 29176
	jal	%x1, p_surface_ids.2728  #1955 pc 29180
	addi	%x2, %x2, -120  #1955 pc 29184
	lw	%x1, 116(%x2) #1955 pc 29188
	lw	%x6, 104(%x2)  #1956 pc 29192
	lw	%x22, 108(%x2)  #1956 pc 29196
	sw	%x5, 112(%x2)  #1956 pc 29200
	addi	%x5, %x6, 0  #0 pc 29204
	sw	%x1, 116(%x2)  #1956 pc 29208
	lw	%x23, 0(%x22)  #1956 pc 29212
	addi	%x2, %x2, 120  #1956 pc 29216
	jalr	%x1, %x23, 0  #1956 pc 29220
	addi	%x2, %x2, -120  #1956 pc 29224
	lw	%x1, 116(%x2)  #1956 pc 29228
	beq	%x5, %x0, 12  #1956 pc 29232
	j	be_else.9493 #pc 29236
	nop #pc 29240
	addi	%x5, %x0, -1  #0 pc 29244
	lw	%x6, 100(%x2)  #2019 pc 29248
	slli	%x7, %x6, 2  #2019 pc 29252
	lw	%x9, 112(%x2)  #2019 pc 29256
	add	%x24, %x7, %x9  #2019 pc 29260
	sw	%x5, 0(%x24)  #2019 pc 29264
	beq	%x6, %x0, 12  #2021 pc 29268
	j	be_else.9494 #pc 29272
	nop #pc 29276
	ret #pc 29280
	nop #pc 29284
be_else.9494: #pc 29284
	lw	%x5, 104(%x2)  #2022 pc 29288
	lw	%x6, 96(%x2)  #2022 pc 29292
	sw	%x1, 116(%x2)  #2022 pc 29296
	addi	%x2, %x2, 120  #2022 pc 29300
	jal	%x1, veciprod.2660  #2022 pc 29304
	addi	%x2, %x2, -120  #2022 pc 29308
	lw	%x1, 116(%x2) #2022 pc 29312
	sw	%x1, 116(%x2)  #2022 pc 29316
	addi	%x2, %x2, 120  #2022 pc 29320
	jal	%x1, fneg.2534  #2022 pc 29324
	addi	%x2, %x2, -120  #2022 pc 29328
	lw	%x1, 116(%x2) #2022 pc 29332
	fsw	%f0, 120(%x2)  #2024 pc 29336
	sw	%x1, 132(%x2)  #2024 pc 29340
	addi	%x2, %x2, 136  #2024 pc 29344
	jal	%x1, fispos.2530  #2024 pc 29348
	addi	%x2, %x2, -136  #2024 pc 29352
	lw	%x1, 132(%x2) #2024 pc 29356
	beq	%x5, %x0, 12  #2024 pc 29360
	j	be_else.9497 #pc 29364
	nop #pc 29368
	ret #pc 29372
	nop #pc 29376
be_else.9497: #pc 29376
	flw	%f0, 120(%x2)  #2027 pc 29380
	sw	%x1, 132(%x2)  #2027 pc 29384
	addi	%x2, %x2, 136  #2027 pc 29388
	jal	%x1, fsqr.2536  #2027 pc 29392
	addi	%x2, %x2, -136  #2027 pc 29396
	lw	%x1, 132(%x2) #2027 pc 29400
	flw	%f1, 120(%x2)  #2027 pc 29404
	fmul	%f0, %f0, %f1  #2027 pc 29408
	flw	%f1, 88(%x2)  #2027 pc 29412
	fmul	%f0, %f0, %f1  #2027 pc 29416
	lw	%x5, 84(%x2)  #2027 pc 29420
	add	%x24, %x0, %x5  #2027 pc 29424
	flw	%f1, 0(%x24)  #2027 pc 29428
	fmul	%f0, %f0, %f1  #2027 pc 29432
	lw	%x5, 80(%x2)  #2028 pc 29436
	add	%x24, %x0, %x5  #2028 pc 29440
	flw	%f1, 0(%x24)  #2028 pc 29444
	fadd	%f1, %f1, %f0  #2028 pc 29448
	add	%x24, %x0, %x5  #2028 pc 29452
	fsw	%f1, 0(%x24) #2028 pc 29456
	addi	%x24, %x0, 4  #pc 29460
	add	%x24, %x24, %x5  #2029 pc 29464
	flw	%f1, 0(%x24)  #2029 pc 29468
	fadd	%f1, %f1, %f0  #2029 pc 29472
	addi	%x24, %x0, 4  #pc 29476
	add	%x24, %x24, %x5  #2029 pc 29480
	fsw	%f1, 0(%x24) #2029 pc 29484
	addi	%x24, %x0, 8  #pc 29488
	add	%x24, %x24, %x5  #2030 pc 29492
	flw	%f1, 0(%x24)  #2030 pc 29496
	fadd	%f0, %f1, %f0  #2030 pc 29500
	addi	%x24, %x0, 8  #pc 29504
	add	%x24, %x24, %x5  #2030 pc 29508
	fsw	%f0, 0(%x24) #2030 pc 29512
	ret #pc 29516
	nop #pc 29520
be_else.9493: #pc 29520
	lw	%x5, 76(%x2)  #1958 pc 29524
	add	%x24, %x0, %x5  #1958 pc 29528
	lw	%x5, 0(%x24)  #1958 pc 29532
	slli	%x6, %x5, 2  #1959 pc 29536
	lw	%x7, 72(%x2)  #1959 pc 29540
	add	%x24, %x6, %x7  #1959 pc 29544
	lw	%x6, 0(%x24)  #1959 pc 29548
	sw	%x5, 128(%x2)  #1960 pc 29552
	sw	%x6, 132(%x2)  #1960 pc 29556
	addi	%x5, %x6, 0  #0 pc 29560
	sw	%x1, 140(%x2)  #1960 pc 29564
	addi	%x2, %x2, 144  #1960 pc 29568
	jal	%x1, o_reflectiontype.2686  #1960 pc 29572
	addi	%x2, %x2, -144  #1960 pc 29576
	lw	%x1, 140(%x2) #1960 pc 29580
	lw	%x6, 132(%x2)  #1961 pc 29584
	sw	%x5, 136(%x2)  #1961 pc 29588
	addi	%x5, %x6, 0  #0 pc 29592
	sw	%x1, 140(%x2)  #1961 pc 29596
	addi	%x2, %x2, 144  #1961 pc 29600
	jal	%x1, o_diffuse.2706  #1961 pc 29604
	addi	%x2, %x2, -144  #1961 pc 29608
	lw	%x1, 140(%x2) #1961 pc 29612
	flw	%f1, 88(%x2)  #1961 pc 29616
	fmul	%f0, %f0, %f1  #1961 pc 29620
	lw	%x5, 132(%x2)  #1963 pc 29624
	lw	%x6, 104(%x2)  #1963 pc 29628
	lw	%x22, 68(%x2)  #1963 pc 29632
	fsw	%f0, 144(%x2)  #1963 pc 29636
	sw	%x1, 156(%x2)  #1963 pc 29640
	lw	%x23, 0(%x22)  #1963 pc 29644
	addi	%x2, %x2, 160  #1963 pc 29648
	jalr	%x1, %x23, 0  #1963 pc 29652
	addi	%x2, %x2, -160  #1963 pc 29656
	lw	%x1, 156(%x2)  #1963 pc 29660
	lw	%x5, 64(%x2)  #1964 pc 29664
	lw	%x6, 60(%x2)  #1964 pc 29668
	sw	%x1, 156(%x2)  #1964 pc 29672
	addi	%x2, %x2, 160  #1964 pc 29676
	jal	%x1, veccpy.2654  #1964 pc 29680
	addi	%x2, %x2, -160  #1964 pc 29684
	lw	%x1, 156(%x2) #1964 pc 29688
	lw	%x5, 132(%x2)  #1965 pc 29692
	lw	%x6, 60(%x2)  #1965 pc 29696
	lw	%x22, 56(%x2)  #1965 pc 29700
	sw	%x1, 156(%x2)  #1965 pc 29704
	lw	%x23, 0(%x22)  #1965 pc 29708
	addi	%x2, %x2, 160  #1965 pc 29712
	jalr	%x1, %x23, 0  #1965 pc 29716
	addi	%x2, %x2, -160  #1965 pc 29720
	lw	%x1, 156(%x2)  #1965 pc 29724
	addi	%x6, %x0, 4  #0 pc 29728
	lw	%x5, 128(%x2)  #1968 pc 29732
	sw	%x1, 156(%x2)  #1968 pc 29736
	addi	%x2, %x2, 160  #1968 pc 29740
	jal	%x1, mul.2562  #1968 pc 29744
	addi	%x2, %x2, -160  #1968 pc 29748
	lw	%x1, 156(%x2) #1968 pc 29752
	lw	%x6, 52(%x2)  #1968 pc 29756
	add	%x24, %x0, %x6  #1968 pc 29760
	lw	%x6, 0(%x24)  #1968 pc 29764
	add	%x5, %x5, %x6  #1968 pc 29768
	lw	%x6, 100(%x2)  #1968 pc 29772
	slli	%x7, %x6, 2  #1968 pc 29776
	lw	%x9, 112(%x2)  #1968 pc 29780
	add	%x24, %x7, %x9  #1968 pc 29784
	sw	%x5, 0(%x24)  #1968 pc 29788
	lw	%x5, 48(%x2)  #1969 pc 29792
	sw	%x1, 156(%x2)  #1969 pc 29796
	addi	%x2, %x2, 160  #1969 pc 29800
	jal	%x1, p_intersection_points.2726  #1969 pc 29804
	addi	%x2, %x2, -160  #1969 pc 29808
	lw	%x1, 156(%x2) #1969 pc 29812
	lw	%x6, 100(%x2)  #1970 pc 29816
	slli	%x7, %x6, 2  #1970 pc 29820
	add	%x24, %x7, %x5  #1970 pc 29824
	lw	%x5, 0(%x24)  #1970 pc 29828
	lw	%x7, 60(%x2)  #1970 pc 29832
	addi	%x6, %x7, 0  #0 pc 29836
	sw	%x1, 156(%x2)  #1970 pc 29840
	addi	%x2, %x2, 160  #1970 pc 29844
	jal	%x1, veccpy.2654  #1970 pc 29848
	addi	%x2, %x2, -160  #1970 pc 29852
	lw	%x1, 156(%x2) #1970 pc 29856
	lw	%x5, 48(%x2)  #1973 pc 29860
	sw	%x1, 156(%x2)  #1973 pc 29864
	addi	%x2, %x2, 160  #1973 pc 29868
	jal	%x1, p_calc_diffuse.2730  #1973 pc 29872
	addi	%x2, %x2, -160  #1973 pc 29876
	lw	%x1, 156(%x2) #1973 pc 29880
	lw	%x6, 132(%x2)  #1974 pc 29884
	sw	%x5, 152(%x2)  #1974 pc 29888
	addi	%x5, %x6, 0  #0 pc 29892
	sw	%x1, 156(%x2)  #1974 pc 29896
	addi	%x2, %x2, 160  #1974 pc 29900
	jal	%x1, o_diffuse.2706  #1974 pc 29904
	addi	%x2, %x2, -160  #1974 pc 29908
	lw	%x1, 156(%x2) #1974 pc 29912
	fmv	%f1, l.6297  #0 pc 29916
	sw	%x1, 156(%x2)  #1974 pc 29920
	addi	%x2, %x2, 160  #1974 pc 29924
	jal	%x1, fless.2540  #1974 pc 29928
	addi	%x2, %x2, -160  #1974 pc 29932
	lw	%x1, 156(%x2) #1974 pc 29936
	beq	%x5, %x0, 12  #1974 pc 29940
	j	be_else.9501 #pc 29944
	nop #pc 29948
	addi	%x5, %x0, 1  #0 pc 29952
	lw	%x6, 100(%x2)  #1977 pc 29956
	slli	%x7, %x6, 2  #1977 pc 29960
	lw	%x9, 152(%x2)  #1977 pc 29964
	add	%x24, %x7, %x9  #1977 pc 29968
	sw	%x5, 0(%x24)  #1977 pc 29972
	lw	%x5, 48(%x2)  #1978 pc 29976
	sw	%x1, 156(%x2)  #1978 pc 29980
	addi	%x2, %x2, 160  #1978 pc 29984
	jal	%x1, p_energy.2732  #1978 pc 29988
	addi	%x2, %x2, -160  #1978 pc 29992
	lw	%x1, 156(%x2) #1978 pc 29996
	lw	%x6, 100(%x2)  #1979 pc 30000
	slli	%x7, %x6, 2  #1979 pc 30004
	add	%x24, %x7, %x5  #1979 pc 30008
	lw	%x7, 0(%x24)  #1979 pc 30012
	lw	%x9, 44(%x2)  #1979 pc 30016
	sw	%x5, 156(%x2)  #1979 pc 30020
	addi	%x6, %x9, 0  #0 pc 30024
	addi	%x5, %x7, 0  #0 pc 30028
	sw	%x1, 164(%x2)  #1979 pc 30032
	addi	%x2, %x2, 168  #1979 pc 30036
	jal	%x1, veccpy.2654  #1979 pc 30040
	addi	%x2, %x2, -168  #1979 pc 30044
	lw	%x1, 164(%x2) #1979 pc 30048
	lw	%x5, 100(%x2)  #1980 pc 30052
	slli	%x6, %x5, 2  #1980 pc 30056
	lw	%x7, 156(%x2)  #1980 pc 30060
	add	%x24, %x6, %x7  #1980 pc 30064
	lw	%x6, 0(%x24)  #1980 pc 30068
	fmv	%f0, l.6864  #0 pc 30072
	flw	%f1, 144(%x2)  #1980 pc 30076
	fmul	%f0, %f0, %f1  #1980 pc 30080
	addi	%x5, %x6, 0  #0 pc 30084
	sw	%x1, 164(%x2)  #1980 pc 30088
	addi	%x2, %x2, 168  #1980 pc 30092
	jal	%x1, vecscale.2675  #1980 pc 30096
	addi	%x2, %x2, -168  #1980 pc 30100
	lw	%x1, 164(%x2) #1980 pc 30104
	lw	%x5, 48(%x2)  #1981 pc 30108
	sw	%x1, 164(%x2)  #1981 pc 30112
	addi	%x2, %x2, 168  #1981 pc 30116
	jal	%x1, p_nvectors.2741  #1981 pc 30120
	addi	%x2, %x2, -168  #1981 pc 30124
	lw	%x1, 164(%x2) #1981 pc 30128
	lw	%x6, 100(%x2)  #1982 pc 30132
	slli	%x7, %x6, 2  #1982 pc 30136
	add	%x24, %x7, %x5  #1982 pc 30140
	lw	%x5, 0(%x24)  #1982 pc 30144
	lw	%x7, 40(%x2)  #1982 pc 30148
	addi	%x6, %x7, 0  #0 pc 30152
	sw	%x1, 164(%x2)  #1982 pc 30156
	addi	%x2, %x2, 168  #1982 pc 30160
	jal	%x1, veccpy.2654  #1982 pc 30164
	addi	%x2, %x2, -168  #1982 pc 30168
	lw	%x1, 164(%x2) #1982 pc 30172
	j	be_cont.9502 #pc 30176
	nop #pc 30180
be_else.9501: #pc 30180
	addi	%x5, %x0, 0  #0 pc 30184
	lw	%x6, 100(%x2)  #1975 pc 30188
	slli	%x7, %x6, 2  #1975 pc 30192
	lw	%x9, 152(%x2)  #1975 pc 30196
	add	%x24, %x7, %x9  #1975 pc 30200
	sw	%x5, 0(%x24)  #1975 pc 30204
be_cont.9502: #pc 30204
	fmv	%f0, l.6867  #0 pc 30208
	lw	%x5, 104(%x2)  #1985 pc 30212
	lw	%x6, 40(%x2)  #1985 pc 30216
	fsw	%f0, 160(%x2)  #1985 pc 30220
	sw	%x1, 172(%x2)  #1985 pc 30224
	addi	%x2, %x2, 176  #1985 pc 30228
	jal	%x1, veciprod.2660  #1985 pc 30232
	addi	%x2, %x2, -176  #1985 pc 30236
	lw	%x1, 172(%x2) #1985 pc 30240
	flw	%f1, 160(%x2)  #1985 pc 30244
	fmul	%f0, %f1, %f0  #1985 pc 30248
	lw	%x5, 104(%x2)  #1987 pc 30252
	lw	%x6, 40(%x2)  #1987 pc 30256
	sw	%x1, 172(%x2)  #1987 pc 30260
	addi	%x2, %x2, 176  #1987 pc 30264
	jal	%x1, vecaccum.2668  #1987 pc 30268
	addi	%x2, %x2, -176  #1987 pc 30272
	lw	%x1, 172(%x2) #1987 pc 30276
	lw	%x5, 132(%x2)  #1989 pc 30280
	sw	%x1, 172(%x2)  #1989 pc 30284
	addi	%x2, %x2, 176  #1989 pc 30288
	jal	%x1, o_hilight.2708  #1989 pc 30292
	addi	%x2, %x2, -176  #1989 pc 30296
	lw	%x1, 172(%x2) #1989 pc 30300
	flw	%f1, 88(%x2)  #1989 pc 30304
	fmul	%f0, %f1, %f0  #1989 pc 30308
	addi	%x5, %x0, 0  #0 pc 30312
	lw	%x6, 36(%x2)  #1992 pc 30316
	add	%x24, %x0, %x6  #1992 pc 30320
	lw	%x6, 0(%x24)  #1992 pc 30324
	lw	%x22, 16(%x2)  #1992 pc 30328
	fsw	%f0, 168(%x2)  #1992 pc 30332
	sw	%x1, 180(%x2)  #1992 pc 30336
	lw	%x23, 0(%x22)  #1992 pc 30340
	addi	%x2, %x2, 184  #1992 pc 30344
	jalr	%x1, %x23, 0  #1992 pc 30348
	addi	%x2, %x2, -184  #1992 pc 30352
	lw	%x1, 180(%x2)  #1992 pc 30356
	beq	%x5, %x0, 12  #1992 pc 30360
	j	be_else.9503 #pc 30364
	nop #pc 30368
	lw	%x5, 40(%x2)  #1993 pc 30372
	lw	%x6, 96(%x2)  #1993 pc 30376
	sw	%x1, 180(%x2)  #1993 pc 30380
	addi	%x2, %x2, 184  #1993 pc 30384
	jal	%x1, veciprod.2660  #1993 pc 30388
	addi	%x2, %x2, -184  #1993 pc 30392
	lw	%x1, 180(%x2) #1993 pc 30396
	sw	%x1, 180(%x2)  #1993 pc 30400
	addi	%x2, %x2, 184  #1993 pc 30404
	jal	%x1, fneg.2534  #1993 pc 30408
	addi	%x2, %x2, -184  #1993 pc 30412
	lw	%x1, 180(%x2) #1993 pc 30416
	flw	%f1, 144(%x2)  #1993 pc 30420
	fmul	%f0, %f0, %f1  #1993 pc 30424
	lw	%x5, 104(%x2)  #1994 pc 30428
	lw	%x6, 96(%x2)  #1994 pc 30432
	fsw	%f0, 176(%x2)  #1994 pc 30436
	sw	%x1, 188(%x2)  #1994 pc 30440
	addi	%x2, %x2, 192  #1994 pc 30444
	jal	%x1, veciprod.2660  #1994 pc 30448
	addi	%x2, %x2, -192  #1994 pc 30452
	lw	%x1, 188(%x2) #1994 pc 30456
	sw	%x1, 188(%x2)  #1994 pc 30460
	addi	%x2, %x2, 192  #1994 pc 30464
	jal	%x1, fneg.2534  #1994 pc 30468
	addi	%x2, %x2, -192  #1994 pc 30472
	lw	%x1, 188(%x2) #1994 pc 30476
	fadd	%f1, %f0, %f30  #1994 pc 30480
	flw	%f0, 176(%x2)  #1995 pc 30484
	flw	%f2, 168(%x2)  #1995 pc 30488
	lw	%x22, 32(%x2)  #1995 pc 30492
	sw	%x1, 188(%x2)  #1995 pc 30496
	lw	%x23, 0(%x22)  #1995 pc 30500
	addi	%x2, %x2, 192  #1995 pc 30504
	jalr	%x1, %x23, 0  #1995 pc 30508
	addi	%x2, %x2, -192  #1995 pc 30512
	lw	%x1, 188(%x2)  #1995 pc 30516
	j	be_cont.9504 #pc 30520
	nop #pc 30524
be_else.9503: #pc 30524
be_cont.9504: #pc 30524
	lw	%x5, 60(%x2)  #1999 pc 30528
	lw	%x22, 12(%x2)  #1999 pc 30532
	sw	%x1, 188(%x2)  #1999 pc 30536
	lw	%x23, 0(%x22)  #1999 pc 30540
	addi	%x2, %x2, 192  #1999 pc 30544
	jalr	%x1, %x23, 0  #1999 pc 30548
	addi	%x2, %x2, -192  #1999 pc 30552
	lw	%x1, 188(%x2)  #1999 pc 30556
	lw	%x5, 8(%x2)  #2000 pc 30560
	add	%x24, %x0, %x5  #2000 pc 30564
	lw	%x5, 0(%x24)  #2000 pc 30568
	addi	%x5, %x5, -1  #2000 pc 30572
	flw	%f0, 144(%x2)  #2000 pc 30576
	flw	%f1, 168(%x2)  #2000 pc 30580
	lw	%x6, 104(%x2)  #2000 pc 30584
	lw	%x22, 4(%x2)  #2000 pc 30588
	sw	%x1, 188(%x2)  #2000 pc 30592
	lw	%x23, 0(%x22)  #2000 pc 30596
	addi	%x2, %x2, 192  #2000 pc 30600
	jalr	%x1, %x23, 0  #2000 pc 30604
	addi	%x2, %x2, -192  #2000 pc 30608
	lw	%x1, 188(%x2)  #2000 pc 30612
	fmv	%f0, l.6871  #0 pc 30616
	flw	%f1, 88(%x2)  #2003 pc 30620
	sw	%x1, 188(%x2)  #2003 pc 30624
	addi	%x2, %x2, 192  #2003 pc 30628
	jal	%x1, fless.2540  #2003 pc 30632
	addi	%x2, %x2, -192  #2003 pc 30636
	lw	%x1, 188(%x2) #2003 pc 30640
	beq	%x5, %x0, 12  #2003 pc 30644
	j	be_else.9505 #pc 30648
	nop #pc 30652
	ret #pc 30656
	nop #pc 30660
be_else.9505: #pc 30660
	lw	%x5, 100(%x2)  #2005 pc 30664
	addi	%x24, %x0, 4  #pc 30668
	bge	%x5, %x24, 12  #2005 pc 30672
	j	bge_else.9507 #pc 30676
	nop #pc 30680
	j	bge_cont.9508 #pc 30684
	nop #pc 30688
bge_else.9507: #pc 30688
	addi	%x6, %x5, 1  #2006 pc 30692
	addi	%x7, %x0, -1  #0 pc 30696
	slli	%x6, %x6, 2  #2006 pc 30700
	lw	%x9, 112(%x2)  #2006 pc 30704
	add	%x24, %x6, %x9  #2006 pc 30708
	sw	%x7, 0(%x24)  #2006 pc 30712
bge_cont.9508: #pc 30712
	lw	%x6, 136(%x2)  #2009 pc 30716
	addi	%x24, %x0, 2  #pc 30720
	beq	%x6, %x24, 12  #2009 pc 30724
	j	be_else.9509 #pc 30728
	nop #pc 30732
	fmv	%f0, l.6305  #0 pc 30736
	lw	%x6, 132(%x2)  #2010 pc 30740
	fsw	%f0, 184(%x2)  #2010 pc 30744
	addi	%x5, %x6, 0  #0 pc 30748
	sw	%x1, 196(%x2)  #2010 pc 30752
	addi	%x2, %x2, 200  #2010 pc 30756
	jal	%x1, o_diffuse.2706  #2010 pc 30760
	addi	%x2, %x2, -200  #2010 pc 30764
	lw	%x1, 196(%x2) #2010 pc 30768
	flw	%f1, 184(%x2)  #2010 pc 30772
	fsub	%f0, %f1, %f0  #2010 pc 30776
	flw	%f1, 88(%x2)  #2010 pc 30780
	fmul	%f0, %f1, %f0  #2010 pc 30784
	lw	%x5, 100(%x2)  #2011 pc 30788
	addi	%x5, %x5, 1  #2011 pc 30792
	lw	%x6, 0(%x2)  #2011 pc 30796
	add	%x24, %x0, %x6  #2011 pc 30800
	flw	%f1, 0(%x24)  #2011 pc 30804
	flw	%f2, 24(%x2)  #2011 pc 30808
	fadd	%f1, %f2, %f1  #2011 pc 30812
	lw	%x6, 104(%x2)  #2011 pc 30816
	lw	%x7, 48(%x2)  #2011 pc 30820
	lw	%x22, 20(%x2)  #2011 pc 30824
	lw	%x23, 0(%x22)  #2011 pc 30828
	jalr	%x0, %x23, 0  #2011 pc 30832
	nop #pc 30836
be_else.9509: #pc 30836
	ret #pc 30840
	nop #pc 30844
ble_else.9492: #pc 30844
	ret #pc 30848
	nop #pc 30852
trace_diffuse_ray.2969:  #pc 30856
	addi	%x24, %x0, 48  #pc 30856
	add	%x24, %x24, %x22  #0 pc 30860
	lw	%x6, 0(%x24)  #0 pc 30864
	addi	%x24, %x0, 44  #pc 30868
	add	%x24, %x24, %x22  #0 pc 30872
	lw	%x7, 0(%x24)  #0 pc 30876
	addi	%x24, %x0, 40  #pc 30880
	add	%x24, %x24, %x22  #0 pc 30884
	lw	%x9, 0(%x24)  #0 pc 30888
	addi	%x24, %x0, 36  #pc 30892
	add	%x24, %x24, %x22  #0 pc 30896
	lw	%x10, 0(%x24)  #0 pc 30900
	addi	%x24, %x0, 32  #pc 30904
	add	%x24, %x24, %x22  #0 pc 30908
	lw	%x11, 0(%x24)  #0 pc 30912
	addi	%x24, %x0, 28  #pc 30916
	add	%x24, %x24, %x22  #0 pc 30920
	lw	%x12, 0(%x24)  #0 pc 30924
	addi	%x24, %x0, 24  #pc 30928
	add	%x24, %x24, %x22  #0 pc 30932
	lw	%x13, 0(%x24)  #0 pc 30936
	addi	%x24, %x0, 20  #pc 30940
	add	%x24, %x24, %x22  #0 pc 30944
	lw	%x14, 0(%x24)  #0 pc 30948
	addi	%x24, %x0, 16  #pc 30952
	add	%x24, %x24, %x22  #0 pc 30956
	lw	%x15, 0(%x24)  #0 pc 30960
	addi	%x24, %x0, 12  #pc 30964
	add	%x24, %x24, %x22  #0 pc 30968
	lw	%x16, 0(%x24)  #0 pc 30972
	addi	%x24, %x0, 8  #pc 30976
	add	%x24, %x24, %x22  #0 pc 30980
	lw	%x17, 0(%x24)  #0 pc 30984
	addi	%x24, %x0, 4  #pc 30988
	add	%x24, %x24, %x22  #0 pc 30992
	lw	%x18, 0(%x24)  #0 pc 30996
	sw	%x7, 0(%x2)  #2049 pc 31000
	sw	%x18, 4(%x2)  #2049 pc 31004
	fsw	%f0, 8(%x2)  #2049 pc 31008
	sw	%x13, 16(%x2)  #2049 pc 31012
	sw	%x12, 20(%x2)  #2049 pc 31016
	sw	%x9, 24(%x2)  #2049 pc 31020
	sw	%x10, 28(%x2)  #2049 pc 31024
	sw	%x15, 32(%x2)  #2049 pc 31028
	sw	%x6, 36(%x2)  #2049 pc 31032
	sw	%x17, 40(%x2)  #2049 pc 31036
	sw	%x5, 44(%x2)  #2049 pc 31040
	sw	%x11, 48(%x2)  #2049 pc 31044
	sw	%x16, 52(%x2)  #2049 pc 31048
	addi	%x22, %x14, 0  #0 pc 31052
	sw	%x1, 60(%x2)  #2049 pc 31056
	lw	%x23, 0(%x22)  #2049 pc 31060
	addi	%x2, %x2, 64  #2049 pc 31064
	jalr	%x1, %x23, 0  #2049 pc 31068
	addi	%x2, %x2, -64  #2049 pc 31072
	lw	%x1, 60(%x2)  #2049 pc 31076
	beq	%x5, %x0, 12  #2049 pc 31080
	j	be_else.9512 #pc 31084
	nop #pc 31088
	ret #pc 31092
	nop #pc 31096
be_else.9512: #pc 31096
	lw	%x5, 52(%x2)  #2050 pc 31100
	add	%x24, %x0, %x5  #2050 pc 31104
	lw	%x5, 0(%x24)  #2050 pc 31108
	slli	%x5, %x5, 2  #2050 pc 31112
	lw	%x6, 48(%x2)  #2050 pc 31116
	add	%x24, %x5, %x6  #2050 pc 31120
	lw	%x5, 0(%x24)  #2050 pc 31124
	lw	%x6, 44(%x2)  #2051 pc 31128
	sw	%x5, 56(%x2)  #2051 pc 31132
	addi	%x5, %x6, 0  #0 pc 31136
	sw	%x1, 60(%x2)  #2051 pc 31140
	addi	%x2, %x2, 64  #2051 pc 31144
	jal	%x1, d_vec.2743  #2051 pc 31148
	addi	%x2, %x2, -64  #2051 pc 31152
	lw	%x1, 60(%x2) #2051 pc 31156
	addi	%x6, %x5, 0  #2051 pc 31160
	lw	%x5, 56(%x2)  #2051 pc 31164
	lw	%x22, 40(%x2)  #2051 pc 31168
	sw	%x1, 60(%x2)  #2051 pc 31172
	lw	%x23, 0(%x22)  #2051 pc 31176
	addi	%x2, %x2, 64  #2051 pc 31180
	jalr	%x1, %x23, 0  #2051 pc 31184
	addi	%x2, %x2, -64  #2051 pc 31188
	lw	%x1, 60(%x2)  #2051 pc 31192
	lw	%x5, 56(%x2)  #2052 pc 31196
	lw	%x6, 32(%x2)  #2052 pc 31200
	lw	%x22, 36(%x2)  #2052 pc 31204
	sw	%x1, 60(%x2)  #2052 pc 31208
	lw	%x23, 0(%x22)  #2052 pc 31212
	addi	%x2, %x2, 64  #2052 pc 31216
	jalr	%x1, %x23, 0  #2052 pc 31220
	addi	%x2, %x2, -64  #2052 pc 31224
	lw	%x1, 60(%x2)  #2052 pc 31228
	addi	%x5, %x0, 0  #0 pc 31232
	lw	%x6, 28(%x2)  #2055 pc 31236
	add	%x24, %x0, %x6  #2055 pc 31240
	lw	%x6, 0(%x24)  #2055 pc 31244
	lw	%x22, 24(%x2)  #2055 pc 31248
	sw	%x1, 60(%x2)  #2055 pc 31252
	lw	%x23, 0(%x22)  #2055 pc 31256
	addi	%x2, %x2, 64  #2055 pc 31260
	jalr	%x1, %x23, 0  #2055 pc 31264
	addi	%x2, %x2, -64  #2055 pc 31268
	lw	%x1, 60(%x2)  #2055 pc 31272
	beq	%x5, %x0, 12  #2055 pc 31276
	j	be_else.9514 #pc 31280
	nop #pc 31284
	lw	%x5, 20(%x2)  #2056 pc 31288
	lw	%x6, 16(%x2)  #2056 pc 31292
	sw	%x1, 60(%x2)  #2056 pc 31296
	addi	%x2, %x2, 64  #2056 pc 31300
	jal	%x1, veciprod.2660  #2056 pc 31304
	addi	%x2, %x2, -64  #2056 pc 31308
	lw	%x1, 60(%x2) #2056 pc 31312
	sw	%x1, 60(%x2)  #2056 pc 31316
	addi	%x2, %x2, 64  #2056 pc 31320
	jal	%x1, fneg.2534  #2056 pc 31324
	addi	%x2, %x2, -64  #2056 pc 31328
	lw	%x1, 60(%x2) #2056 pc 31332
	fsw	%f0, 64(%x2)  #2057 pc 31336
	sw	%x1, 76(%x2)  #2057 pc 31340
	addi	%x2, %x2, 80  #2057 pc 31344
	jal	%x1, fispos.2530  #2057 pc 31348
	addi	%x2, %x2, -80  #2057 pc 31352
	lw	%x1, 76(%x2) #2057 pc 31356
	beq	%x5, %x0, 12  #2057 pc 31360
	j	be_else.9516 #pc 31364
	nop #pc 31368
	fmv	%f0, l.6293  #0 pc 31372
	j	be_cont.9517 #pc 31376
	nop #pc 31380
be_else.9516: #pc 31380
	flw	%f0, 64(%x2)  #2057 pc 31384
be_cont.9517: #pc 31384
	flw	%f1, 8(%x2)  #2058 pc 31388
	fmul	%f0, %f1, %f0  #2058 pc 31392
	lw	%x5, 56(%x2)  #2058 pc 31396
	fsw	%f0, 72(%x2)  #2058 pc 31400
	sw	%x1, 84(%x2)  #2058 pc 31404
	addi	%x2, %x2, 88  #2058 pc 31408
	jal	%x1, o_diffuse.2706  #2058 pc 31412
	addi	%x2, %x2, -88  #2058 pc 31416
	lw	%x1, 84(%x2) #2058 pc 31420
	flw	%f1, 72(%x2)  #2058 pc 31424
	fmul	%f0, %f1, %f0  #2058 pc 31428
	lw	%x5, 4(%x2)  #2058 pc 31432
	lw	%x6, 0(%x2)  #2058 pc 31436
	j	vecaccum.2668  #2058 pc 31440
	nop #pc 31444
be_else.9514: #pc 31444
	ret #pc 31448
	nop #pc 31452
iter_trace_diffuse_rays.2972:  #pc 31456
	addi	%x24, %x0, 4  #pc 31456
	add	%x24, %x24, %x22  #0 pc 31460
	lw	%x10, 0(%x24)  #0 pc 31464
	bge	%x9, %x0, 12  #2066 pc 31468
	j	bge_else.9519 #pc 31472
	nop #pc 31476
	slli	%x11, %x9, 2  #2067 pc 31480
	add	%x24, %x11, %x5  #2067 pc 31484
	lw	%x11, 0(%x24)  #2067 pc 31488
	sw	%x7, 0(%x2)  #2067 pc 31492
	sw	%x22, 4(%x2)  #2067 pc 31496
	sw	%x10, 8(%x2)  #2067 pc 31500
	sw	%x5, 12(%x2)  #2067 pc 31504
	sw	%x9, 16(%x2)  #2067 pc 31508
	sw	%x6, 20(%x2)  #2067 pc 31512
	addi	%x5, %x11, 0  #0 pc 31516
	sw	%x1, 28(%x2)  #2067 pc 31520
	addi	%x2, %x2, 32  #2067 pc 31524
	jal	%x1, d_vec.2743  #2067 pc 31528
	addi	%x2, %x2, -32  #2067 pc 31532
	lw	%x1, 28(%x2) #2067 pc 31536
	lw	%x6, 20(%x2)  #2067 pc 31540
	sw	%x1, 28(%x2)  #2067 pc 31544
	addi	%x2, %x2, 32  #2067 pc 31548
	jal	%x1, veciprod.2660  #2067 pc 31552
	addi	%x2, %x2, -32  #2067 pc 31556
	lw	%x1, 28(%x2) #2067 pc 31560
	fsw	%f0, 24(%x2)  #2071 pc 31564
	sw	%x1, 36(%x2)  #2071 pc 31568
	addi	%x2, %x2, 40  #2071 pc 31572
	jal	%x1, fisneg.2532  #2071 pc 31576
	addi	%x2, %x2, -40  #2071 pc 31580
	lw	%x1, 36(%x2) #2071 pc 31584
	beq	%x5, %x0, 12  #2071 pc 31588
	j	be_else.9520 #pc 31592
	nop #pc 31596
	lw	%x5, 16(%x2)  #2074 pc 31600
	slli	%x6, %x5, 2  #2074 pc 31604
	lw	%x7, 12(%x2)  #2074 pc 31608
	add	%x24, %x6, %x7  #2074 pc 31612
	lw	%x6, 0(%x24)  #2074 pc 31616
	fmv	%f0, l.6893  #0 pc 31620
	flw	%f1, 24(%x2)  #2074 pc 31624
	fdiv	%f0, %f1, %f0  #2074 pc 31628
	lw	%x22, 8(%x2)  #2074 pc 31632
	addi	%x5, %x6, 0  #0 pc 31636
	sw	%x1, 36(%x2)  #2074 pc 31640
	lw	%x23, 0(%x22)  #2074 pc 31644
	addi	%x2, %x2, 40  #2074 pc 31648
	jalr	%x1, %x23, 0  #2074 pc 31652
	addi	%x2, %x2, -40  #2074 pc 31656
	lw	%x1, 36(%x2)  #2074 pc 31660
	j	be_cont.9521 #pc 31664
	nop #pc 31668
be_else.9520: #pc 31668
	lw	%x5, 16(%x2)  #2072 pc 31672
	addi	%x6, %x5, 1  #2072 pc 31676
	slli	%x6, %x6, 2  #2072 pc 31680
	lw	%x7, 12(%x2)  #2072 pc 31684
	add	%x24, %x6, %x7  #2072 pc 31688
	lw	%x6, 0(%x24)  #2072 pc 31692
	fmv	%f0, l.6890  #0 pc 31696
	flw	%f1, 24(%x2)  #2072 pc 31700
	fdiv	%f0, %f1, %f0  #2072 pc 31704
	lw	%x22, 8(%x2)  #2072 pc 31708
	addi	%x5, %x6, 0  #0 pc 31712
	sw	%x1, 36(%x2)  #2072 pc 31716
	lw	%x23, 0(%x22)  #2072 pc 31720
	addi	%x2, %x2, 40  #2072 pc 31724
	jalr	%x1, %x23, 0  #2072 pc 31728
	addi	%x2, %x2, -40  #2072 pc 31732
	lw	%x1, 36(%x2)  #2072 pc 31736
be_cont.9521: #pc 31736
	lw	%x5, 16(%x2)  #2076 pc 31740
	addi	%x9, %x5, -2  #2076 pc 31744
	lw	%x5, 12(%x2)  #2076 pc 31748
	lw	%x6, 20(%x2)  #2076 pc 31752
	lw	%x7, 0(%x2)  #2076 pc 31756
	lw	%x22, 4(%x2)  #2076 pc 31760
	lw	%x23, 0(%x22)  #2076 pc 31764
	jalr	%x0, %x23, 0  #2076 pc 31768
	nop #pc 31772
bge_else.9519: #pc 31772
	ret #pc 31776
	nop #pc 31780
trace_diffuse_rays.2977:  #pc 31784
	addi	%x24, %x0, 8  #pc 31784
	add	%x24, %x24, %x22  #2082 pc 31788
	lw	%x9, 0(%x24)  #2082 pc 31792
	addi	%x24, %x0, 4  #pc 31796
	add	%x24, %x24, %x22  #2082 pc 31800
	lw	%x10, 0(%x24)  #2082 pc 31804
	sw	%x7, 0(%x2)  #2082 pc 31808
	sw	%x6, 4(%x2)  #2082 pc 31812
	sw	%x5, 8(%x2)  #2082 pc 31816
	sw	%x10, 12(%x2)  #2082 pc 31820
	addi	%x5, %x7, 0  #0 pc 31824
	addi	%x22, %x9, 0  #0 pc 31828
	sw	%x1, 20(%x2)  #2082 pc 31832
	lw	%x23, 0(%x22)  #2082 pc 31836
	addi	%x2, %x2, 24  #2082 pc 31840
	jalr	%x1, %x23, 0  #2082 pc 31844
	addi	%x2, %x2, -24  #2082 pc 31848
	lw	%x1, 20(%x2)  #2082 pc 31852
	addi	%x9, %x0, 118  #0 pc 31856
	lw	%x5, 8(%x2)  #2086 pc 31860
	lw	%x6, 4(%x2)  #2086 pc 31864
	lw	%x7, 0(%x2)  #2086 pc 31868
	lw	%x22, 12(%x2)  #2086 pc 31872
	lw	%x23, 0(%x22)  #2086 pc 31876
	jalr	%x0, %x23, 0  #2086 pc 31880
	nop #pc 31884
trace_diffuse_ray_80percent.2981:  #pc 31888
	addi	%x24, %x0, 8  #pc 31888
	add	%x24, %x24, %x22  #0 pc 31892
	lw	%x9, 0(%x24)  #0 pc 31896
	addi	%x24, %x0, 4  #pc 31900
	add	%x24, %x24, %x22  #0 pc 31904
	lw	%x10, 0(%x24)  #0 pc 31908
	sw	%x7, 0(%x2)  #2093 pc 31912
	sw	%x6, 4(%x2)  #2093 pc 31916
	sw	%x9, 8(%x2)  #2093 pc 31920
	sw	%x10, 12(%x2)  #2093 pc 31924
	sw	%x5, 16(%x2)  #2093 pc 31928
	beq	%x5, %x0, 12  #2093 pc 31932
	j	be_else.9523 #pc 31936
	nop #pc 31940
	j	be_cont.9524 #pc 31944
	nop #pc 31948
be_else.9523: #pc 31948
	add	%x24, %x0, %x10  #2094 pc 31952
	lw	%x11, 0(%x24)  #2094 pc 31956
	addi	%x5, %x11, 0  #0 pc 31960
	addi	%x22, %x9, 0  #0 pc 31964
	sw	%x1, 20(%x2)  #2094 pc 31968
	lw	%x23, 0(%x22)  #2094 pc 31972
	addi	%x2, %x2, 24  #2094 pc 31976
	jalr	%x1, %x23, 0  #2094 pc 31980
	addi	%x2, %x2, -24  #2094 pc 31984
	lw	%x1, 20(%x2)  #2094 pc 31988
be_cont.9524: #pc 31988
	lw	%x5, 16(%x2)  #2097 pc 31992
	addi	%x24, %x0, 1  #pc 31996
	beq	%x5, %x24, 12  #2097 pc 32000
	j	be_else.9525 #pc 32004
	nop #pc 32008
	j	be_cont.9526 #pc 32012
	nop #pc 32016
be_else.9525: #pc 32016
	lw	%x6, 12(%x2)  #2098 pc 32020
	addi	%x24, %x0, 4  #pc 32024
	add	%x24, %x24, %x6  #2098 pc 32028
	lw	%x7, 0(%x24)  #2098 pc 32032
	lw	%x9, 4(%x2)  #2098 pc 32036
	lw	%x10, 0(%x2)  #2098 pc 32040
	lw	%x22, 8(%x2)  #2098 pc 32044
	addi	%x6, %x9, 0  #0 pc 32048
	addi	%x5, %x7, 0  #0 pc 32052
	addi	%x7, %x10, 0  #0 pc 32056
	sw	%x1, 20(%x2)  #2098 pc 32060
	lw	%x23, 0(%x22)  #2098 pc 32064
	addi	%x2, %x2, 24  #2098 pc 32068
	jalr	%x1, %x23, 0  #2098 pc 32072
	addi	%x2, %x2, -24  #2098 pc 32076
	lw	%x1, 20(%x2)  #2098 pc 32080
be_cont.9526: #pc 32080
	lw	%x5, 16(%x2)  #2101 pc 32084
	addi	%x24, %x0, 2  #pc 32088
	beq	%x5, %x24, 12  #2101 pc 32092
	j	be_else.9527 #pc 32096
	nop #pc 32100
	j	be_cont.9528 #pc 32104
	nop #pc 32108
be_else.9527: #pc 32108
	lw	%x6, 12(%x2)  #2102 pc 32112
	addi	%x24, %x0, 8  #pc 32116
	add	%x24, %x24, %x6  #2102 pc 32120
	lw	%x7, 0(%x24)  #2102 pc 32124
	lw	%x9, 4(%x2)  #2102 pc 32128
	lw	%x10, 0(%x2)  #2102 pc 32132
	lw	%x22, 8(%x2)  #2102 pc 32136
	addi	%x6, %x9, 0  #0 pc 32140
	addi	%x5, %x7, 0  #0 pc 32144
	addi	%x7, %x10, 0  #0 pc 32148
	sw	%x1, 20(%x2)  #2102 pc 32152
	lw	%x23, 0(%x22)  #2102 pc 32156
	addi	%x2, %x2, 24  #2102 pc 32160
	jalr	%x1, %x23, 0  #2102 pc 32164
	addi	%x2, %x2, -24  #2102 pc 32168
	lw	%x1, 20(%x2)  #2102 pc 32172
be_cont.9528: #pc 32172
	lw	%x5, 16(%x2)  #2105 pc 32176
	addi	%x24, %x0, 3  #pc 32180
	beq	%x5, %x24, 12  #2105 pc 32184
	j	be_else.9529 #pc 32188
	nop #pc 32192
	j	be_cont.9530 #pc 32196
	nop #pc 32200
be_else.9529: #pc 32200
	lw	%x6, 12(%x2)  #2106 pc 32204
	addi	%x24, %x0, 12  #pc 32208
	add	%x24, %x24, %x6  #2106 pc 32212
	lw	%x7, 0(%x24)  #2106 pc 32216
	lw	%x9, 4(%x2)  #2106 pc 32220
	lw	%x10, 0(%x2)  #2106 pc 32224
	lw	%x22, 8(%x2)  #2106 pc 32228
	addi	%x6, %x9, 0  #0 pc 32232
	addi	%x5, %x7, 0  #0 pc 32236
	addi	%x7, %x10, 0  #0 pc 32240
	sw	%x1, 20(%x2)  #2106 pc 32244
	lw	%x23, 0(%x22)  #2106 pc 32248
	addi	%x2, %x2, 24  #2106 pc 32252
	jalr	%x1, %x23, 0  #2106 pc 32256
	addi	%x2, %x2, -24  #2106 pc 32260
	lw	%x1, 20(%x2)  #2106 pc 32264
be_cont.9530: #pc 32264
	lw	%x5, 16(%x2)  #2109 pc 32268
	addi	%x24, %x0, 4  #pc 32272
	beq	%x5, %x24, 12  #2109 pc 32276
	j	be_else.9531 #pc 32280
	nop #pc 32284
	ret #pc 32288
	nop #pc 32292
be_else.9531: #pc 32292
	lw	%x5, 12(%x2)  #2110 pc 32296
	addi	%x24, %x0, 16  #pc 32300
	add	%x24, %x24, %x5  #2110 pc 32304
	lw	%x5, 0(%x24)  #2110 pc 32308
	lw	%x6, 4(%x2)  #2110 pc 32312
	lw	%x7, 0(%x2)  #2110 pc 32316
	lw	%x22, 8(%x2)  #2110 pc 32320
	lw	%x23, 0(%x22)  #2110 pc 32324
	jalr	%x0, %x23, 0  #2110 pc 32328
	nop #pc 32332
calc_diffuse_using_1point.2985:  #pc 32336
	addi	%x24, %x0, 12  #pc 32336
	add	%x24, %x24, %x22  #2119 pc 32340
	lw	%x7, 0(%x24)  #2119 pc 32344
	addi	%x24, %x0, 8  #pc 32348
	add	%x24, %x24, %x22  #2119 pc 32352
	lw	%x9, 0(%x24)  #2119 pc 32356
	addi	%x24, %x0, 4  #pc 32360
	add	%x24, %x24, %x22  #2119 pc 32364
	lw	%x10, 0(%x24)  #2119 pc 32368
	sw	%x9, 0(%x2)  #2119 pc 32372
	sw	%x7, 4(%x2)  #2119 pc 32376
	sw	%x10, 8(%x2)  #2119 pc 32380
	sw	%x6, 12(%x2)  #2119 pc 32384
	sw	%x5, 16(%x2)  #2119 pc 32388
	sw	%x1, 20(%x2)  #2119 pc 32392
	addi	%x2, %x2, 24  #2119 pc 32396
	jal	%x1, p_received_ray_20percent.2734  #2119 pc 32400
	addi	%x2, %x2, -24  #2119 pc 32404
	lw	%x1, 20(%x2) #2119 pc 32408
	lw	%x6, 16(%x2)  #2120 pc 32412
	sw	%x5, 20(%x2)  #2120 pc 32416
	addi	%x5, %x6, 0  #0 pc 32420
	sw	%x1, 28(%x2)  #2120 pc 32424
	addi	%x2, %x2, 32  #2120 pc 32428
	jal	%x1, p_nvectors.2741  #2120 pc 32432
	addi	%x2, %x2, -32  #2120 pc 32436
	lw	%x1, 28(%x2) #2120 pc 32440
	lw	%x6, 16(%x2)  #2121 pc 32444
	sw	%x5, 24(%x2)  #2121 pc 32448
	addi	%x5, %x6, 0  #0 pc 32452
	sw	%x1, 28(%x2)  #2121 pc 32456
	addi	%x2, %x2, 32  #2121 pc 32460
	jal	%x1, p_intersection_points.2726  #2121 pc 32464
	addi	%x2, %x2, -32  #2121 pc 32468
	lw	%x1, 28(%x2) #2121 pc 32472
	lw	%x6, 16(%x2)  #2122 pc 32476
	sw	%x5, 28(%x2)  #2122 pc 32480
	addi	%x5, %x6, 0  #0 pc 32484
	sw	%x1, 36(%x2)  #2122 pc 32488
	addi	%x2, %x2, 40  #2122 pc 32492
	jal	%x1, p_energy.2732  #2122 pc 32496
	addi	%x2, %x2, -40  #2122 pc 32500
	lw	%x1, 36(%x2) #2122 pc 32504
	lw	%x6, 12(%x2)  #2124 pc 32508
	slli	%x7, %x6, 2  #2124 pc 32512
	lw	%x9, 20(%x2)  #2124 pc 32516
	add	%x24, %x7, %x9  #2124 pc 32520
	lw	%x7, 0(%x24)  #2124 pc 32524
	lw	%x9, 8(%x2)  #2124 pc 32528
	sw	%x5, 32(%x2)  #2124 pc 32532
	addi	%x6, %x7, 0  #0 pc 32536
	addi	%x5, %x9, 0  #0 pc 32540
	sw	%x1, 36(%x2)  #2124 pc 32544
	addi	%x2, %x2, 40  #2124 pc 32548
	jal	%x1, veccpy.2654  #2124 pc 32552
	addi	%x2, %x2, -40  #2124 pc 32556
	lw	%x1, 36(%x2) #2124 pc 32560
	lw	%x5, 16(%x2)  #2126 pc 32564
	sw	%x1, 36(%x2)  #2126 pc 32568
	addi	%x2, %x2, 40  #2126 pc 32572
	jal	%x1, p_group_id.2736  #2126 pc 32576
	addi	%x2, %x2, -40  #2126 pc 32580
	lw	%x1, 36(%x2) #2126 pc 32584
	lw	%x6, 12(%x2)  #2127 pc 32588
	slli	%x7, %x6, 2  #2127 pc 32592
	lw	%x9, 24(%x2)  #2127 pc 32596
	add	%x24, %x7, %x9  #2127 pc 32600
	lw	%x7, 0(%x24)  #2127 pc 32604
	slli	%x9, %x6, 2  #2128 pc 32608
	lw	%x10, 28(%x2)  #2128 pc 32612
	add	%x24, %x9, %x10  #2128 pc 32616
	lw	%x9, 0(%x24)  #2128 pc 32620
	lw	%x22, 4(%x2)  #2125 pc 32624
	addi	%x6, %x7, 0  #0 pc 32628
	addi	%x7, %x9, 0  #0 pc 32632
	sw	%x1, 36(%x2)  #2125 pc 32636
	lw	%x23, 0(%x22)  #2125 pc 32640
	addi	%x2, %x2, 40  #2125 pc 32644
	jalr	%x1, %x23, 0  #2125 pc 32648
	addi	%x2, %x2, -40  #2125 pc 32652
	lw	%x1, 36(%x2)  #2125 pc 32656
	lw	%x5, 12(%x2)  #2129 pc 32660
	slli	%x5, %x5, 2  #2129 pc 32664
	lw	%x6, 32(%x2)  #2129 pc 32668
	add	%x24, %x5, %x6  #2129 pc 32672
	lw	%x6, 0(%x24)  #2129 pc 32676
	lw	%x5, 0(%x2)  #2129 pc 32680
	lw	%x7, 8(%x2)  #2129 pc 32684
	j	vecaccumv.2678  #2129 pc 32688
	nop #pc 32692
calc_diffuse_using_5points.2988:  #pc 32696
	addi	%x24, %x0, 8  #pc 32696
	add	%x24, %x24, %x22  #0 pc 32700
	lw	%x11, 0(%x24)  #0 pc 32704
	addi	%x24, %x0, 4  #pc 32708
	add	%x24, %x24, %x22  #0 pc 32712
	lw	%x12, 0(%x24)  #0 pc 32716
	slli	%x13, %x5, 2  #2138 pc 32720
	add	%x24, %x13, %x6  #2138 pc 32724
	lw	%x6, 0(%x24)  #2138 pc 32728
	sw	%x11, 0(%x2)  #2138 pc 32732
	sw	%x12, 4(%x2)  #2138 pc 32736
	sw	%x10, 8(%x2)  #2138 pc 32740
	sw	%x9, 12(%x2)  #2138 pc 32744
	sw	%x7, 16(%x2)  #2138 pc 32748
	sw	%x5, 20(%x2)  #2138 pc 32752
	addi	%x5, %x6, 0  #0 pc 32756
	sw	%x1, 28(%x2)  #2138 pc 32760
	addi	%x2, %x2, 32  #2138 pc 32764
	jal	%x1, p_received_ray_20percent.2734  #2138 pc 32768
	addi	%x2, %x2, -32  #2138 pc 32772
	lw	%x1, 28(%x2) #2138 pc 32776
	lw	%x6, 20(%x2)  #2139 pc 32780
	addi	%x7, %x6, -1  #2139 pc 32784
	slli	%x7, %x7, 2  #2139 pc 32788
	lw	%x9, 16(%x2)  #2139 pc 32792
	add	%x24, %x7, %x9  #2139 pc 32796
	lw	%x7, 0(%x24)  #2139 pc 32800
	sw	%x5, 24(%x2)  #2139 pc 32804
	addi	%x5, %x7, 0  #0 pc 32808
	sw	%x1, 28(%x2)  #2139 pc 32812
	addi	%x2, %x2, 32  #2139 pc 32816
	jal	%x1, p_received_ray_20percent.2734  #2139 pc 32820
	addi	%x2, %x2, -32  #2139 pc 32824
	lw	%x1, 28(%x2) #2139 pc 32828
	lw	%x6, 20(%x2)  #2140 pc 32832
	slli	%x7, %x6, 2  #2140 pc 32836
	lw	%x9, 16(%x2)  #2140 pc 32840
	add	%x24, %x7, %x9  #2140 pc 32844
	lw	%x7, 0(%x24)  #2140 pc 32848
	sw	%x5, 28(%x2)  #2140 pc 32852
	addi	%x5, %x7, 0  #0 pc 32856
	sw	%x1, 36(%x2)  #2140 pc 32860
	addi	%x2, %x2, 40  #2140 pc 32864
	jal	%x1, p_received_ray_20percent.2734  #2140 pc 32868
	addi	%x2, %x2, -40  #2140 pc 32872
	lw	%x1, 36(%x2) #2140 pc 32876
	lw	%x6, 20(%x2)  #2141 pc 32880
	addi	%x7, %x6, 1  #2141 pc 32884
	slli	%x7, %x7, 2  #2141 pc 32888
	lw	%x9, 16(%x2)  #2141 pc 32892
	add	%x24, %x7, %x9  #2141 pc 32896
	lw	%x7, 0(%x24)  #2141 pc 32900
	sw	%x5, 32(%x2)  #2141 pc 32904
	addi	%x5, %x7, 0  #0 pc 32908
	sw	%x1, 36(%x2)  #2141 pc 32912
	addi	%x2, %x2, 40  #2141 pc 32916
	jal	%x1, p_received_ray_20percent.2734  #2141 pc 32920
	addi	%x2, %x2, -40  #2141 pc 32924
	lw	%x1, 36(%x2) #2141 pc 32928
	lw	%x6, 20(%x2)  #2142 pc 32932
	slli	%x7, %x6, 2  #2142 pc 32936
	lw	%x9, 12(%x2)  #2142 pc 32940
	add	%x24, %x7, %x9  #2142 pc 32944
	lw	%x7, 0(%x24)  #2142 pc 32948
	sw	%x5, 36(%x2)  #2142 pc 32952
	addi	%x5, %x7, 0  #0 pc 32956
	sw	%x1, 44(%x2)  #2142 pc 32960
	addi	%x2, %x2, 48  #2142 pc 32964
	jal	%x1, p_received_ray_20percent.2734  #2142 pc 32968
	addi	%x2, %x2, -48  #2142 pc 32972
	lw	%x1, 44(%x2) #2142 pc 32976
	lw	%x6, 8(%x2)  #2144 pc 32980
	slli	%x7, %x6, 2  #2144 pc 32984
	lw	%x9, 24(%x2)  #2144 pc 32988
	add	%x24, %x7, %x9  #2144 pc 32992
	lw	%x7, 0(%x24)  #2144 pc 32996
	lw	%x9, 4(%x2)  #2144 pc 33000
	sw	%x5, 40(%x2)  #2144 pc 33004
	addi	%x6, %x7, 0  #0 pc 33008
	addi	%x5, %x9, 0  #0 pc 33012
	sw	%x1, 44(%x2)  #2144 pc 33016
	addi	%x2, %x2, 48  #2144 pc 33020
	jal	%x1, veccpy.2654  #2144 pc 33024
	addi	%x2, %x2, -48  #2144 pc 33028
	lw	%x1, 44(%x2) #2144 pc 33032
	lw	%x5, 8(%x2)  #2145 pc 33036
	slli	%x6, %x5, 2  #2145 pc 33040
	lw	%x7, 28(%x2)  #2145 pc 33044
	add	%x24, %x6, %x7  #2145 pc 33048
	lw	%x6, 0(%x24)  #2145 pc 33052
	lw	%x7, 4(%x2)  #2145 pc 33056
	addi	%x5, %x7, 0  #0 pc 33060
	sw	%x1, 44(%x2)  #2145 pc 33064
	addi	%x2, %x2, 48  #2145 pc 33068
	jal	%x1, vecadd.2672  #2145 pc 33072
	addi	%x2, %x2, -48  #2145 pc 33076
	lw	%x1, 44(%x2) #2145 pc 33080
	lw	%x5, 8(%x2)  #2146 pc 33084
	slli	%x6, %x5, 2  #2146 pc 33088
	lw	%x7, 32(%x2)  #2146 pc 33092
	add	%x24, %x6, %x7  #2146 pc 33096
	lw	%x6, 0(%x24)  #2146 pc 33100
	lw	%x7, 4(%x2)  #2146 pc 33104
	addi	%x5, %x7, 0  #0 pc 33108
	sw	%x1, 44(%x2)  #2146 pc 33112
	addi	%x2, %x2, 48  #2146 pc 33116
	jal	%x1, vecadd.2672  #2146 pc 33120
	addi	%x2, %x2, -48  #2146 pc 33124
	lw	%x1, 44(%x2) #2146 pc 33128
	lw	%x5, 8(%x2)  #2147 pc 33132
	slli	%x6, %x5, 2  #2147 pc 33136
	lw	%x7, 36(%x2)  #2147 pc 33140
	add	%x24, %x6, %x7  #2147 pc 33144
	lw	%x6, 0(%x24)  #2147 pc 33148
	lw	%x7, 4(%x2)  #2147 pc 33152
	addi	%x5, %x7, 0  #0 pc 33156
	sw	%x1, 44(%x2)  #2147 pc 33160
	addi	%x2, %x2, 48  #2147 pc 33164
	jal	%x1, vecadd.2672  #2147 pc 33168
	addi	%x2, %x2, -48  #2147 pc 33172
	lw	%x1, 44(%x2) #2147 pc 33176
	lw	%x5, 8(%x2)  #2148 pc 33180
	slli	%x6, %x5, 2  #2148 pc 33184
	lw	%x7, 40(%x2)  #2148 pc 33188
	add	%x24, %x6, %x7  #2148 pc 33192
	lw	%x6, 0(%x24)  #2148 pc 33196
	lw	%x7, 4(%x2)  #2148 pc 33200
	addi	%x5, %x7, 0  #0 pc 33204
	sw	%x1, 44(%x2)  #2148 pc 33208
	addi	%x2, %x2, 48  #2148 pc 33212
	jal	%x1, vecadd.2672  #2148 pc 33216
	addi	%x2, %x2, -48  #2148 pc 33220
	lw	%x1, 44(%x2) #2148 pc 33224
	lw	%x5, 20(%x2)  #2150 pc 33228
	slli	%x5, %x5, 2  #2150 pc 33232
	lw	%x6, 16(%x2)  #2150 pc 33236
	add	%x24, %x5, %x6  #2150 pc 33240
	lw	%x5, 0(%x24)  #2150 pc 33244
	sw	%x1, 44(%x2)  #2150 pc 33248
	addi	%x2, %x2, 48  #2150 pc 33252
	jal	%x1, p_energy.2732  #2150 pc 33256
	addi	%x2, %x2, -48  #2150 pc 33260
	lw	%x1, 44(%x2) #2150 pc 33264
	lw	%x6, 8(%x2)  #2151 pc 33268
	slli	%x6, %x6, 2  #2151 pc 33272
	add	%x24, %x6, %x5  #2151 pc 33276
	lw	%x6, 0(%x24)  #2151 pc 33280
	lw	%x5, 0(%x2)  #2151 pc 33284
	lw	%x7, 4(%x2)  #2151 pc 33288
	j	vecaccumv.2678  #2151 pc 33292
	nop #pc 33296
do_without_neighbors.2994:  #pc 33300
	addi	%x24, %x0, 4  #pc 33300
	add	%x24, %x24, %x22  #0 pc 33304
	lw	%x7, 0(%x24)  #0 pc 33308
	addi	%x24, %x0, 4  #pc 33312
	bge	%x24, %x6, 12  #2157 pc 33316
	j	ble_else.9533 #pc 33320
	nop #pc 33324
	sw	%x22, 0(%x2)  #2159 pc 33328
	sw	%x7, 4(%x2)  #2159 pc 33332
	sw	%x5, 8(%x2)  #2159 pc 33336
	sw	%x6, 12(%x2)  #2159 pc 33340
	sw	%x1, 20(%x2)  #2159 pc 33344
	addi	%x2, %x2, 24  #2159 pc 33348
	jal	%x1, p_surface_ids.2728  #2159 pc 33352
	addi	%x2, %x2, -24  #2159 pc 33356
	lw	%x1, 20(%x2) #2159 pc 33360
	lw	%x6, 12(%x2)  #2160 pc 33364
	slli	%x7, %x6, 2  #2160 pc 33368
	add	%x24, %x7, %x5  #2160 pc 33372
	lw	%x5, 0(%x24)  #2160 pc 33376
	bge	%x5, %x0, 12  #2160 pc 33380
	j	bge_else.9534 #pc 33384
	nop #pc 33388
	lw	%x5, 8(%x2)  #2161 pc 33392
	sw	%x1, 20(%x2)  #2161 pc 33396
	addi	%x2, %x2, 24  #2161 pc 33400
	jal	%x1, p_calc_diffuse.2730  #2161 pc 33404
	addi	%x2, %x2, -24  #2161 pc 33408
	lw	%x1, 20(%x2) #2161 pc 33412
	lw	%x6, 12(%x2)  #2162 pc 33416
	slli	%x7, %x6, 2  #2162 pc 33420
	add	%x24, %x7, %x5  #2162 pc 33424
	lw	%x5, 0(%x24)  #2162 pc 33428
	beq	%x5, %x0, 12  #2162 pc 33432
	j	be_else.9535 #pc 33436
	nop #pc 33440
	j	be_cont.9536 #pc 33444
	nop #pc 33448
be_else.9535: #pc 33448
	lw	%x5, 8(%x2)  #2163 pc 33452
	lw	%x22, 4(%x2)  #2163 pc 33456
	sw	%x1, 20(%x2)  #2163 pc 33460
	lw	%x23, 0(%x22)  #2163 pc 33464
	addi	%x2, %x2, 24  #2163 pc 33468
	jalr	%x1, %x23, 0  #2163 pc 33472
	addi	%x2, %x2, -24  #2163 pc 33476
	lw	%x1, 20(%x2)  #2163 pc 33480
be_cont.9536: #pc 33480
	lw	%x5, 12(%x2)  #2165 pc 33484
	addi	%x6, %x5, 1  #2165 pc 33488
	lw	%x5, 8(%x2)  #2165 pc 33492
	lw	%x22, 0(%x2)  #2165 pc 33496
	lw	%x23, 0(%x22)  #2165 pc 33500
	jalr	%x0, %x23, 0  #2165 pc 33504
	nop #pc 33508
bge_else.9534: #pc 33508
	ret #pc 33512
	nop #pc 33516
ble_else.9533: #pc 33516
	ret #pc 33520
	nop #pc 33524
neighbors_exist.2997:  #pc 33528
	addi	%x24, %x0, 4  #pc 33528
	add	%x24, %x24, %x22  #0 pc 33532
	lw	%x7, 0(%x24)  #0 pc 33536
	addi	%x24, %x0, 4  #pc 33540
	add	%x24, %x24, %x7  #2172 pc 33544
	lw	%x9, 0(%x24)  #2172 pc 33548
	addi	%x10, %x6, 1  #2172 pc 33552
	bge	%x10, %x9, 12  #2172 pc 33556
	j	ble_else.9539 #pc 33560
	nop #pc 33564
	addi	%x5, %x0, 0  #0 pc 33568
	ret #pc 33572
	nop #pc 33576
ble_else.9539: #pc 33576
	bge	%x0, %x6, 12  #2173 pc 33580
	j	ble_else.9540 #pc 33584
	nop #pc 33588
	addi	%x5, %x0, 0  #0 pc 33592
	ret #pc 33596
	nop #pc 33600
ble_else.9540: #pc 33600
	add	%x24, %x0, %x7  #2174 pc 33604
	lw	%x6, 0(%x24)  #2174 pc 33608
	addi	%x7, %x5, 1  #2174 pc 33612
	bge	%x7, %x6, 12  #2174 pc 33616
	j	ble_else.9541 #pc 33620
	nop #pc 33624
	addi	%x5, %x0, 0  #0 pc 33628
	ret #pc 33632
	nop #pc 33636
ble_else.9541: #pc 33636
	bge	%x0, %x5, 12  #2175 pc 33640
	j	ble_else.9542 #pc 33644
	nop #pc 33648
	addi	%x5, %x0, 0  #0 pc 33652
	ret #pc 33656
	nop #pc 33660
ble_else.9542: #pc 33660
	addi	%x5, %x0, 1  #0 pc 33664
	ret #pc 33668
	nop #pc 33672
get_surface_id.3001:  #pc 33676
	sw	%x6, 0(%x2)  #2184 pc 33676
	sw	%x1, 4(%x2)  #2184 pc 33680
	addi	%x2, %x2, 8  #2184 pc 33684
	jal	%x1, p_surface_ids.2728  #2184 pc 33688
	addi	%x2, %x2, -8  #2184 pc 33692
	lw	%x1, 4(%x2) #2184 pc 33696
	lw	%x6, 0(%x2)  #2185 pc 33700
	slli	%x6, %x6, 2  #2185 pc 33704
	add	%x24, %x6, %x5  #2185 pc 33708
	lw	%x5, 0(%x24)  #2185 pc 33712
	ret #pc 33716
	nop #pc 33720
neighbors_are_available.3004:  #pc 33724
	slli	%x11, %x5, 2  #2191 pc 33724
	add	%x24, %x11, %x7  #2191 pc 33728
	lw	%x11, 0(%x24)  #2191 pc 33732
	sw	%x7, 0(%x2)  #2191 pc 33736
	sw	%x9, 4(%x2)  #2191 pc 33740
	sw	%x10, 8(%x2)  #2191 pc 33744
	sw	%x6, 12(%x2)  #2191 pc 33748
	sw	%x5, 16(%x2)  #2191 pc 33752
	addi	%x6, %x10, 0  #0 pc 33756
	addi	%x5, %x11, 0  #0 pc 33760
	sw	%x1, 20(%x2)  #2191 pc 33764
	addi	%x2, %x2, 24  #2191 pc 33768
	jal	%x1, get_surface_id.3001  #2191 pc 33772
	addi	%x2, %x2, -24  #2191 pc 33776
	lw	%x1, 20(%x2) #2191 pc 33780
	lw	%x6, 16(%x2)  #2193 pc 33784
	slli	%x7, %x6, 2  #2193 pc 33788
	lw	%x9, 12(%x2)  #2193 pc 33792
	add	%x24, %x7, %x9  #2193 pc 33796
	lw	%x7, 0(%x24)  #2193 pc 33800
	lw	%x9, 8(%x2)  #2193 pc 33804
	sw	%x5, 20(%x2)  #2193 pc 33808
	addi	%x6, %x9, 0  #0 pc 33812
	addi	%x5, %x7, 0  #0 pc 33816
	sw	%x1, 28(%x2)  #2193 pc 33820
	addi	%x2, %x2, 32  #2193 pc 33824
	jal	%x1, get_surface_id.3001  #2193 pc 33828
	addi	%x2, %x2, -32  #2193 pc 33832
	lw	%x1, 28(%x2) #2193 pc 33836
	lw	%x6, 20(%x2)  #2193 pc 33840
	beq	%x5, %x6, 12  #2193 pc 33844
	j	be_else.9543 #pc 33848
	nop #pc 33852
	lw	%x5, 16(%x2)  #2194 pc 33856
	slli	%x7, %x5, 2  #2194 pc 33860
	lw	%x9, 4(%x2)  #2194 pc 33864
	add	%x24, %x7, %x9  #2194 pc 33868
	lw	%x7, 0(%x24)  #2194 pc 33872
	lw	%x9, 8(%x2)  #2194 pc 33876
	addi	%x6, %x9, 0  #0 pc 33880
	addi	%x5, %x7, 0  #0 pc 33884
	sw	%x1, 28(%x2)  #2194 pc 33888
	addi	%x2, %x2, 32  #2194 pc 33892
	jal	%x1, get_surface_id.3001  #2194 pc 33896
	addi	%x2, %x2, -32  #2194 pc 33900
	lw	%x1, 28(%x2) #2194 pc 33904
	lw	%x6, 20(%x2)  #2194 pc 33908
	beq	%x5, %x6, 12  #2194 pc 33912
	j	be_else.9544 #pc 33916
	nop #pc 33920
	lw	%x5, 16(%x2)  #2195 pc 33924
	addi	%x7, %x5, -1  #2195 pc 33928
	slli	%x7, %x7, 2  #2195 pc 33932
	lw	%x9, 0(%x2)  #2195 pc 33936
	add	%x24, %x7, %x9  #2195 pc 33940
	lw	%x7, 0(%x24)  #2195 pc 33944
	lw	%x10, 8(%x2)  #2195 pc 33948
	addi	%x6, %x10, 0  #0 pc 33952
	addi	%x5, %x7, 0  #0 pc 33956
	sw	%x1, 28(%x2)  #2195 pc 33960
	addi	%x2, %x2, 32  #2195 pc 33964
	jal	%x1, get_surface_id.3001  #2195 pc 33968
	addi	%x2, %x2, -32  #2195 pc 33972
	lw	%x1, 28(%x2) #2195 pc 33976
	lw	%x6, 20(%x2)  #2195 pc 33980
	beq	%x5, %x6, 12  #2195 pc 33984
	j	be_else.9545 #pc 33988
	nop #pc 33992
	lw	%x5, 16(%x2)  #2196 pc 33996
	addi	%x5, %x5, 1  #2196 pc 34000
	slli	%x5, %x5, 2  #2196 pc 34004
	lw	%x7, 0(%x2)  #2196 pc 34008
	add	%x24, %x5, %x7  #2196 pc 34012
	lw	%x5, 0(%x24)  #2196 pc 34016
	lw	%x7, 8(%x2)  #2196 pc 34020
	addi	%x6, %x7, 0  #0 pc 34024
	sw	%x1, 28(%x2)  #2196 pc 34028
	addi	%x2, %x2, 32  #2196 pc 34032
	jal	%x1, get_surface_id.3001  #2196 pc 34036
	addi	%x2, %x2, -32  #2196 pc 34040
	lw	%x1, 28(%x2) #2196 pc 34044
	lw	%x6, 20(%x2)  #2196 pc 34048
	beq	%x5, %x6, 12  #2196 pc 34052
	j	be_else.9546 #pc 34056
	nop #pc 34060
	addi	%x5, %x0, 1  #0 pc 34064
	ret #pc 34068
	nop #pc 34072
be_else.9546: #pc 34072
	addi	%x5, %x0, 0  #0 pc 34076
	ret #pc 34080
	nop #pc 34084
be_else.9545: #pc 34084
	addi	%x5, %x0, 0  #0 pc 34088
	ret #pc 34092
	nop #pc 34096
be_else.9544: #pc 34096
	addi	%x5, %x0, 0  #0 pc 34100
	ret #pc 34104
	nop #pc 34108
be_else.9543: #pc 34108
	addi	%x5, %x0, 0  #0 pc 34112
	ret #pc 34116
	nop #pc 34120
try_exploit_neighbors.3010:  #pc 34124
	addi	%x24, %x0, 8  #pc 34124
	add	%x24, %x24, %x22  #2209 pc 34128
	lw	%x12, 0(%x24)  #2209 pc 34132
	addi	%x24, %x0, 4  #pc 34136
	add	%x24, %x24, %x22  #2209 pc 34140
	lw	%x13, 0(%x24)  #2209 pc 34144
	slli	%x14, %x5, 2  #2209 pc 34148
	add	%x24, %x14, %x9  #2209 pc 34152
	lw	%x14, 0(%x24)  #2209 pc 34156
	addi	%x24, %x0, 4  #pc 34160
	bge	%x24, %x11, 12  #2210 pc 34164
	j	ble_else.9547 #pc 34168
	nop #pc 34172
	sw	%x6, 0(%x2)  #2213 pc 34176
	sw	%x22, 4(%x2)  #2213 pc 34180
	sw	%x13, 8(%x2)  #2213 pc 34184
	sw	%x14, 12(%x2)  #2213 pc 34188
	sw	%x12, 16(%x2)  #2213 pc 34192
	sw	%x11, 20(%x2)  #2213 pc 34196
	sw	%x10, 24(%x2)  #2213 pc 34200
	sw	%x9, 28(%x2)  #2213 pc 34204
	sw	%x7, 32(%x2)  #2213 pc 34208
	sw	%x5, 36(%x2)  #2213 pc 34212
	addi	%x6, %x11, 0  #0 pc 34216
	addi	%x5, %x14, 0  #0 pc 34220
	sw	%x1, 44(%x2)  #2213 pc 34224
	addi	%x2, %x2, 48  #2213 pc 34228
	jal	%x1, get_surface_id.3001  #2213 pc 34232
	addi	%x2, %x2, -48  #2213 pc 34236
	lw	%x1, 44(%x2) #2213 pc 34240
	bge	%x5, %x0, 12  #2213 pc 34244
	j	bge_else.9548 #pc 34248
	nop #pc 34252
	lw	%x5, 36(%x2)  #2215 pc 34256
	lw	%x6, 32(%x2)  #2215 pc 34260
	lw	%x7, 28(%x2)  #2215 pc 34264
	lw	%x9, 24(%x2)  #2215 pc 34268
	lw	%x10, 20(%x2)  #2215 pc 34272
	sw	%x1, 44(%x2)  #2215 pc 34276
	addi	%x2, %x2, 48  #2215 pc 34280
	jal	%x1, neighbors_are_available.3004  #2215 pc 34284
	addi	%x2, %x2, -48  #2215 pc 34288
	lw	%x1, 44(%x2) #2215 pc 34292
	beq	%x5, %x0, 12  #2215 pc 34296
	j	be_else.9549 #pc 34300
	nop #pc 34304
	lw	%x5, 36(%x2)  #2227 pc 34308
	slli	%x5, %x5, 2  #2227 pc 34312
	lw	%x6, 28(%x2)  #2227 pc 34316
	add	%x24, %x5, %x6  #2227 pc 34320
	lw	%x5, 0(%x24)  #2227 pc 34324
	lw	%x6, 20(%x2)  #2227 pc 34328
	lw	%x22, 16(%x2)  #2227 pc 34332
	lw	%x23, 0(%x22)  #2227 pc 34336
	jalr	%x0, %x23, 0  #2227 pc 34340
	nop #pc 34344
be_else.9549: #pc 34344
	lw	%x5, 12(%x2)  #2218 pc 34348
	sw	%x1, 44(%x2)  #2218 pc 34352
	addi	%x2, %x2, 48  #2218 pc 34356
	jal	%x1, p_calc_diffuse.2730  #2218 pc 34360
	addi	%x2, %x2, -48  #2218 pc 34364
	lw	%x1, 44(%x2) #2218 pc 34368
	lw	%x10, 20(%x2)  #2219 pc 34372
	slli	%x6, %x10, 2  #2219 pc 34376
	add	%x24, %x6, %x5  #2219 pc 34380
	lw	%x5, 0(%x24)  #2219 pc 34384
	beq	%x5, %x0, 12  #2219 pc 34388
	j	be_else.9550 #pc 34392
	nop #pc 34396
	j	be_cont.9551 #pc 34400
	nop #pc 34404
be_else.9550: #pc 34404
	lw	%x5, 36(%x2)  #2220 pc 34408
	lw	%x6, 32(%x2)  #2220 pc 34412
	lw	%x7, 28(%x2)  #2220 pc 34416
	lw	%x9, 24(%x2)  #2220 pc 34420
	lw	%x22, 8(%x2)  #2220 pc 34424
	sw	%x1, 44(%x2)  #2220 pc 34428
	lw	%x23, 0(%x22)  #2220 pc 34432
	addi	%x2, %x2, 48  #2220 pc 34436
	jalr	%x1, %x23, 0  #2220 pc 34440
	addi	%x2, %x2, -48  #2220 pc 34444
	lw	%x1, 44(%x2)  #2220 pc 34448
be_cont.9551: #pc 34448
	lw	%x5, 20(%x2)  #2224 pc 34452
	addi	%x11, %x5, 1  #2224 pc 34456
	lw	%x5, 36(%x2)  #2224 pc 34460
	lw	%x6, 0(%x2)  #2224 pc 34464
	lw	%x7, 32(%x2)  #2224 pc 34468
	lw	%x9, 28(%x2)  #2224 pc 34472
	lw	%x10, 24(%x2)  #2224 pc 34476
	lw	%x22, 4(%x2)  #2224 pc 34480
	lw	%x23, 0(%x22)  #2224 pc 34484
	jalr	%x0, %x23, 0  #2224 pc 34488
	nop #pc 34492
bge_else.9548: #pc 34492
	ret #pc 34496
	nop #pc 34500
ble_else.9547: #pc 34500
	ret #pc 34504
	nop #pc 34508
write_ppm_header.3017:  #pc 34512
	addi	%x24, %x0, 4  #pc 34512
	add	%x24, %x24, %x22  #0 pc 34516
	lw	%x6, 0(%x24)  #0 pc 34520
	addi	%x7, %x0, 80  #0 pc 34524
	sw	%x6, 0(%x2)  #2237 pc 34528
	sw	%x5, 4(%x2)  #2237 pc 34532
	addi	%x5, %x7, 0  #0 pc 34536
	sw	%x1, 12(%x2)  #2237 pc 34540
	addi	%x2, %x2, 16  #2237 pc 34544
	jal	%x1, print_char.2573  #2237 pc 34548
	addi	%x2, %x2, -16  #2237 pc 34552
	lw	%x1, 12(%x2) #2237 pc 34556
	lw	%x5, 4(%x2)  #2238 pc 34560
	addi	%x5, %x5, 48  #2238 pc 34564
	sw	%x1, 12(%x2)  #2238 pc 34568
	addi	%x2, %x2, 16  #2238 pc 34572
	jal	%x1, print_char.2573  #2238 pc 34576
	addi	%x2, %x2, -16  #2238 pc 34580
	lw	%x1, 12(%x2) #2238 pc 34584
	addi	%x5, %x0, 10  #0 pc 34588
	sw	%x1, 12(%x2)  #2239 pc 34592
	addi	%x2, %x2, 16  #2239 pc 34596
	jal	%x1, print_char.2573  #2239 pc 34600
	addi	%x2, %x2, -16  #2239 pc 34604
	lw	%x1, 12(%x2) #2239 pc 34608
	lw	%x5, 0(%x2)  #2240 pc 34612
	add	%x24, %x0, %x5  #2240 pc 34616
	lw	%x6, 0(%x24)  #2240 pc 34620
	addi	%x5, %x6, 0  #0 pc 34624
	sw	%x1, 12(%x2)  #2240 pc 34628
	addi	%x2, %x2, 16  #2240 pc 34632
	jal	%x1, print_int.2575  #2240 pc 34636
	addi	%x2, %x2, -16  #2240 pc 34640
	lw	%x1, 12(%x2) #2240 pc 34644
	addi	%x5, %x0, 32  #0 pc 34648
	sw	%x1, 12(%x2)  #2241 pc 34652
	addi	%x2, %x2, 16  #2241 pc 34656
	jal	%x1, print_char.2573  #2241 pc 34660
	addi	%x2, %x2, -16  #2241 pc 34664
	lw	%x1, 12(%x2) #2241 pc 34668
	lw	%x5, 0(%x2)  #2242 pc 34672
	addi	%x24, %x0, 4  #pc 34676
	add	%x24, %x24, %x5  #2242 pc 34680
	lw	%x5, 0(%x24)  #2242 pc 34684
	sw	%x1, 12(%x2)  #2242 pc 34688
	addi	%x2, %x2, 16  #2242 pc 34692
	jal	%x1, print_int.2575  #2242 pc 34696
	addi	%x2, %x2, -16  #2242 pc 34700
	lw	%x1, 12(%x2) #2242 pc 34704
	addi	%x5, %x0, 32  #0 pc 34708
	sw	%x1, 12(%x2)  #2243 pc 34712
	addi	%x2, %x2, 16  #2243 pc 34716
	jal	%x1, print_char.2573  #2243 pc 34720
	addi	%x2, %x2, -16  #2243 pc 34724
	lw	%x1, 12(%x2) #2243 pc 34728
	addi	%x5, %x0, 255  #0 pc 34732
	sw	%x1, 12(%x2)  #2244 pc 34736
	addi	%x2, %x2, 16  #2244 pc 34740
	jal	%x1, print_int.2575  #2244 pc 34744
	addi	%x2, %x2, -16  #2244 pc 34748
	lw	%x1, 12(%x2) #2244 pc 34752
	addi	%x5, %x0, 10  #0 pc 34756
	j	print_char.2573  #2245 pc 34760
	nop #pc 34764
write_rgb_element_int.3019:  #pc 34768
	sw	%x1, 4(%x2)  #2250 pc 34768
	addi	%x2, %x2, 8  #2250 pc 34772
	jal	%x1, int_of_float.2555  #2250 pc 34776
	addi	%x2, %x2, -8  #2250 pc 34780
	lw	%x1, 4(%x2) #2250 pc 34784
	addi	%x24, %x0, 255  #pc 34788
	bge	%x24, %x5, 12  #2251 pc 34792
	j	ble_else.9554 #pc 34796
	nop #pc 34800
	bge	%x5, %x0, 12  #2251 pc 34804
	j	bge_else.9556 #pc 34808
	nop #pc 34812
	j	bge_cont.9557 #pc 34816
	nop #pc 34820
bge_else.9556: #pc 34820
	addi	%x5, %x0, 0  #0 pc 34824
bge_cont.9557: #pc 34824
	j	ble_cont.9555 #pc 34828
	nop #pc 34832
ble_else.9554: #pc 34832
	addi	%x5, %x0, 255  #0 pc 34836
ble_cont.9555: #pc 34836
	j	print_int.2575  #2252 pc 34840
	nop #pc 34844
write_rgb_element_char.3021:  #pc 34848
	sw	%x1, 4(%x2)  #2256 pc 34848
	addi	%x2, %x2, 8  #2256 pc 34852
	jal	%x1, int_of_float.2555  #2256 pc 34856
	addi	%x2, %x2, -8  #2256 pc 34860
	lw	%x1, 4(%x2) #2256 pc 34864
	addi	%x24, %x0, 255  #pc 34868
	bge	%x24, %x5, 12  #2257 pc 34872
	j	ble_else.9558 #pc 34876
	nop #pc 34880
	bge	%x5, %x0, 12  #2257 pc 34884
	j	bge_else.9560 #pc 34888
	nop #pc 34892
	j	bge_cont.9561 #pc 34896
	nop #pc 34900
bge_else.9560: #pc 34900
	addi	%x5, %x0, 0  #0 pc 34904
bge_cont.9561: #pc 34904
	j	ble_cont.9559 #pc 34908
	nop #pc 34912
ble_else.9558: #pc 34912
	addi	%x5, %x0, 255  #0 pc 34916
ble_cont.9559: #pc 34916
	j	print_char.2573  #2258 pc 34920
	nop #pc 34924
write_rgb.3023:  #pc 34928
	addi	%x24, %x0, 4  #pc 34928
	add	%x24, %x24, %x22  #0 pc 34932
	lw	%x6, 0(%x24)  #0 pc 34936
	addi	%x24, %x0, 3  #pc 34940
	beq	%x5, %x24, 12  #2262 pc 34944
	j	be_else.9562 #pc 34948
	nop #pc 34952
	add	%x24, %x0, %x6  #2263 pc 34956
	flw	%f0, 0(%x24)  #2263 pc 34960
	sw	%x6, 0(%x2)  #2263 pc 34964
	sw	%x1, 4(%x2)  #2263 pc 34968
	addi	%x2, %x2, 8  #2263 pc 34972
	jal	%x1, write_rgb_element_int.3019  #2263 pc 34976
	addi	%x2, %x2, -8  #2263 pc 34980
	lw	%x1, 4(%x2) #2263 pc 34984
	addi	%x5, %x0, 32  #0 pc 34988
	sw	%x1, 4(%x2)  #2264 pc 34992
	addi	%x2, %x2, 8  #2264 pc 34996
	jal	%x1, print_char.2573  #2264 pc 35000
	addi	%x2, %x2, -8  #2264 pc 35004
	lw	%x1, 4(%x2) #2264 pc 35008
	lw	%x5, 0(%x2)  #2265 pc 35012
	addi	%x24, %x0, 4  #pc 35016
	add	%x24, %x24, %x5  #2265 pc 35020
	flw	%f0, 0(%x24)  #2265 pc 35024
	sw	%x1, 4(%x2)  #2265 pc 35028
	addi	%x2, %x2, 8  #2265 pc 35032
	jal	%x1, write_rgb_element_int.3019  #2265 pc 35036
	addi	%x2, %x2, -8  #2265 pc 35040
	lw	%x1, 4(%x2) #2265 pc 35044
	addi	%x5, %x0, 32  #0 pc 35048
	sw	%x1, 4(%x2)  #2266 pc 35052
	addi	%x2, %x2, 8  #2266 pc 35056
	jal	%x1, print_char.2573  #2266 pc 35060
	addi	%x2, %x2, -8  #2266 pc 35064
	lw	%x1, 4(%x2) #2266 pc 35068
	lw	%x5, 0(%x2)  #2267 pc 35072
	addi	%x24, %x0, 8  #pc 35076
	add	%x24, %x24, %x5  #2267 pc 35080
	flw	%f0, 0(%x24)  #2267 pc 35084
	sw	%x1, 4(%x2)  #2267 pc 35088
	addi	%x2, %x2, 8  #2267 pc 35092
	jal	%x1, write_rgb_element_int.3019  #2267 pc 35096
	addi	%x2, %x2, -8  #2267 pc 35100
	lw	%x1, 4(%x2) #2267 pc 35104
	addi	%x5, %x0, 10  #0 pc 35108
	j	print_char.2573  #2268 pc 35112
	nop #pc 35116
be_else.9562: #pc 35116
	add	%x24, %x0, %x6  #2270 pc 35120
	flw	%f0, 0(%x24)  #2270 pc 35124
	sw	%x6, 0(%x2)  #2270 pc 35128
	sw	%x1, 4(%x2)  #2270 pc 35132
	addi	%x2, %x2, 8  #2270 pc 35136
	jal	%x1, write_rgb_element_char.3021  #2270 pc 35140
	addi	%x2, %x2, -8  #2270 pc 35144
	lw	%x1, 4(%x2) #2270 pc 35148
	lw	%x5, 0(%x2)  #2271 pc 35152
	addi	%x24, %x0, 4  #pc 35156
	add	%x24, %x24, %x5  #2271 pc 35160
	flw	%f0, 0(%x24)  #2271 pc 35164
	sw	%x1, 4(%x2)  #2271 pc 35168
	addi	%x2, %x2, 8  #2271 pc 35172
	jal	%x1, write_rgb_element_char.3021  #2271 pc 35176
	addi	%x2, %x2, -8  #2271 pc 35180
	lw	%x1, 4(%x2) #2271 pc 35184
	lw	%x5, 0(%x2)  #2272 pc 35188
	addi	%x24, %x0, 8  #pc 35192
	add	%x24, %x24, %x5  #2272 pc 35196
	flw	%f0, 0(%x24)  #2272 pc 35200
	j	write_rgb_element_char.3021  #2272 pc 35204
	nop #pc 35208
pretrace_diffuse_rays.3025:  #pc 35212
	addi	%x24, %x0, 12  #pc 35212
	add	%x24, %x24, %x22  #0 pc 35216
	lw	%x7, 0(%x24)  #0 pc 35220
	addi	%x24, %x0, 8  #pc 35224
	add	%x24, %x24, %x22  #0 pc 35228
	lw	%x9, 0(%x24)  #0 pc 35232
	addi	%x24, %x0, 4  #pc 35236
	add	%x24, %x24, %x22  #0 pc 35240
	lw	%x10, 0(%x24)  #0 pc 35244
	addi	%x24, %x0, 4  #pc 35248
	bge	%x24, %x6, 12  #2285 pc 35252
	j	ble_else.9563 #pc 35256
	nop #pc 35260
	sw	%x22, 0(%x2)  #2288 pc 35264
	sw	%x7, 4(%x2)  #2288 pc 35268
	sw	%x9, 8(%x2)  #2288 pc 35272
	sw	%x10, 12(%x2)  #2288 pc 35276
	sw	%x6, 16(%x2)  #2288 pc 35280
	sw	%x5, 20(%x2)  #2288 pc 35284
	sw	%x1, 28(%x2)  #2288 pc 35288
	addi	%x2, %x2, 32  #2288 pc 35292
	jal	%x1, get_surface_id.3001  #2288 pc 35296
	addi	%x2, %x2, -32  #2288 pc 35300
	lw	%x1, 28(%x2) #2288 pc 35304
	bge	%x5, %x0, 12  #2289 pc 35308
	j	bge_else.9564 #pc 35312
	nop #pc 35316
	lw	%x5, 20(%x2)  #2291 pc 35320
	sw	%x1, 28(%x2)  #2291 pc 35324
	addi	%x2, %x2, 32  #2291 pc 35328
	jal	%x1, p_calc_diffuse.2730  #2291 pc 35332
	addi	%x2, %x2, -32  #2291 pc 35336
	lw	%x1, 28(%x2) #2291 pc 35340
	lw	%x6, 16(%x2)  #2292 pc 35344
	slli	%x7, %x6, 2  #2292 pc 35348
	add	%x24, %x7, %x5  #2292 pc 35352
	lw	%x5, 0(%x24)  #2292 pc 35356
	beq	%x5, %x0, 12  #2292 pc 35360
	j	be_else.9565 #pc 35364
	nop #pc 35368
	j	be_cont.9566 #pc 35372
	nop #pc 35376
be_else.9565: #pc 35376
	lw	%x5, 20(%x2)  #2293 pc 35380
	sw	%x1, 28(%x2)  #2293 pc 35384
	addi	%x2, %x2, 32  #2293 pc 35388
	jal	%x1, p_group_id.2736  #2293 pc 35392
	addi	%x2, %x2, -32  #2293 pc 35396
	lw	%x1, 28(%x2) #2293 pc 35400
	lw	%x6, 12(%x2)  #2294 pc 35404
	sw	%x5, 24(%x2)  #2294 pc 35408
	addi	%x5, %x6, 0  #0 pc 35412
	sw	%x1, 28(%x2)  #2294 pc 35416
	addi	%x2, %x2, 32  #2294 pc 35420
	jal	%x1, vecbzero.2652  #2294 pc 35424
	addi	%x2, %x2, -32  #2294 pc 35428
	lw	%x1, 28(%x2) #2294 pc 35432
	lw	%x5, 20(%x2)  #2298 pc 35436
	sw	%x1, 28(%x2)  #2298 pc 35440
	addi	%x2, %x2, 32  #2298 pc 35444
	jal	%x1, p_nvectors.2741  #2298 pc 35448
	addi	%x2, %x2, -32  #2298 pc 35452
	lw	%x1, 28(%x2) #2298 pc 35456
	lw	%x6, 20(%x2)  #2299 pc 35460
	sw	%x5, 28(%x2)  #2299 pc 35464
	addi	%x5, %x6, 0  #0 pc 35468
	sw	%x1, 36(%x2)  #2299 pc 35472
	addi	%x2, %x2, 40  #2299 pc 35476
	jal	%x1, p_intersection_points.2726  #2299 pc 35480
	addi	%x2, %x2, -40  #2299 pc 35484
	lw	%x1, 36(%x2) #2299 pc 35488
	lw	%x6, 24(%x2)  #2301 pc 35492
	slli	%x6, %x6, 2  #2301 pc 35496
	lw	%x7, 8(%x2)  #2301 pc 35500
	add	%x24, %x6, %x7  #2301 pc 35504
	lw	%x6, 0(%x24)  #2301 pc 35508
	lw	%x7, 16(%x2)  #2302 pc 35512
	slli	%x9, %x7, 2  #2302 pc 35516
	lw	%x10, 28(%x2)  #2302 pc 35520
	add	%x24, %x9, %x10  #2302 pc 35524
	lw	%x9, 0(%x24)  #2302 pc 35528
	slli	%x10, %x7, 2  #2303 pc 35532
	add	%x24, %x10, %x5  #2303 pc 35536
	lw	%x5, 0(%x24)  #2303 pc 35540
	lw	%x22, 4(%x2)  #2300 pc 35544
	addi	%x7, %x5, 0  #0 pc 35548
	addi	%x5, %x6, 0  #0 pc 35552
	addi	%x6, %x9, 0  #0 pc 35556
	sw	%x1, 36(%x2)  #2300 pc 35560
	lw	%x23, 0(%x22)  #2300 pc 35564
	addi	%x2, %x2, 40  #2300 pc 35568
	jalr	%x1, %x23, 0  #2300 pc 35572
	addi	%x2, %x2, -40  #2300 pc 35576
	lw	%x1, 36(%x2)  #2300 pc 35580
	lw	%x5, 20(%x2)  #2304 pc 35584
	sw	%x1, 36(%x2)  #2304 pc 35588
	addi	%x2, %x2, 40  #2304 pc 35592
	jal	%x1, p_received_ray_20percent.2734  #2304 pc 35596
	addi	%x2, %x2, -40  #2304 pc 35600
	lw	%x1, 36(%x2) #2304 pc 35604
	lw	%x6, 16(%x2)  #2305 pc 35608
	slli	%x7, %x6, 2  #2305 pc 35612
	add	%x24, %x7, %x5  #2305 pc 35616
	lw	%x5, 0(%x24)  #2305 pc 35620
	lw	%x7, 12(%x2)  #2305 pc 35624
	addi	%x6, %x7, 0  #0 pc 35628
	sw	%x1, 36(%x2)  #2305 pc 35632
	addi	%x2, %x2, 40  #2305 pc 35636
	jal	%x1, veccpy.2654  #2305 pc 35640
	addi	%x2, %x2, -40  #2305 pc 35644
	lw	%x1, 36(%x2) #2305 pc 35648
be_cont.9566: #pc 35648
	lw	%x5, 16(%x2)  #2307 pc 35652
	addi	%x6, %x5, 1  #2307 pc 35656
	lw	%x5, 20(%x2)  #2307 pc 35660
	lw	%x22, 0(%x2)  #2307 pc 35664
	lw	%x23, 0(%x22)  #2307 pc 35668
	jalr	%x0, %x23, 0  #2307 pc 35672
	nop #pc 35676
bge_else.9564: #pc 35676
	ret #pc 35680
	nop #pc 35684
ble_else.9563: #pc 35684
	ret #pc 35688
	nop #pc 35692
pretrace_pixels.3028:  #pc 35696
	addi	%x24, %x0, 36  #pc 35696
	add	%x24, %x24, %x22  #0 pc 35700
	lw	%x9, 0(%x24)  #0 pc 35704
	addi	%x24, %x0, 32  #pc 35708
	add	%x24, %x24, %x22  #0 pc 35712
	lw	%x10, 0(%x24)  #0 pc 35716
	addi	%x24, %x0, 28  #pc 35720
	add	%x24, %x24, %x22  #0 pc 35724
	lw	%x11, 0(%x24)  #0 pc 35728
	addi	%x24, %x0, 24  #pc 35732
	add	%x24, %x24, %x22  #0 pc 35736
	lw	%x12, 0(%x24)  #0 pc 35740
	addi	%x24, %x0, 20  #pc 35744
	add	%x24, %x24, %x22  #0 pc 35748
	lw	%x13, 0(%x24)  #0 pc 35752
	addi	%x24, %x0, 16  #pc 35756
	add	%x24, %x24, %x22  #0 pc 35760
	lw	%x14, 0(%x24)  #0 pc 35764
	addi	%x24, %x0, 12  #pc 35768
	add	%x24, %x24, %x22  #0 pc 35772
	lw	%x15, 0(%x24)  #0 pc 35776
	addi	%x24, %x0, 8  #pc 35780
	add	%x24, %x24, %x22  #0 pc 35784
	lw	%x16, 0(%x24)  #0 pc 35788
	addi	%x24, %x0, 4  #pc 35792
	add	%x24, %x24, %x22  #0 pc 35796
	lw	%x17, 0(%x24)  #0 pc 35800
	bge	%x6, %x0, 12  #2315 pc 35804
	j	bge_else.9569 #pc 35808
	nop #pc 35812
	add	%x24, %x0, %x13  #2317 pc 35816
	flw	%f3, 0(%x24)  #2317 pc 35820
	add	%x24, %x0, %x17  #2317 pc 35824
	lw	%x13, 0(%x24)  #2317 pc 35828
	sub	%x13, %x6, %x13  #2317 pc 35832
	sw	%x22, 0(%x2)  #2317 pc 35836
	sw	%x16, 4(%x2)  #2317 pc 35840
	sw	%x7, 8(%x2)  #2317 pc 35844
	sw	%x10, 12(%x2)  #2317 pc 35848
	sw	%x5, 16(%x2)  #2317 pc 35852
	sw	%x6, 20(%x2)  #2317 pc 35856
	sw	%x9, 24(%x2)  #2317 pc 35860
	sw	%x11, 28(%x2)  #2317 pc 35864
	sw	%x14, 32(%x2)  #2317 pc 35868
	fsw	%f2, 40(%x2)  #2317 pc 35872
	fsw	%f1, 48(%x2)  #2317 pc 35876
	sw	%x15, 56(%x2)  #2317 pc 35880
	fsw	%f0, 64(%x2)  #2317 pc 35884
	sw	%x12, 72(%x2)  #2317 pc 35888
	fsw	%f3, 80(%x2)  #2317 pc 35892
	addi	%x5, %x13, 0  #0 pc 35896
	sw	%x1, 92(%x2)  #2317 pc 35900
	addi	%x2, %x2, 96  #2317 pc 35904
	jal	%x1, float_of_int.2553  #2317 pc 35908
	addi	%x2, %x2, -96  #2317 pc 35912
	lw	%x1, 92(%x2) #2317 pc 35916
	flw	%f1, 80(%x2)  #2317 pc 35920
	fmul	%f0, %f1, %f0  #2317 pc 35924
	lw	%x5, 72(%x2)  #2318 pc 35928
	add	%x24, %x0, %x5  #2318 pc 35932
	flw	%f1, 0(%x24)  #2318 pc 35936
	fmul	%f1, %f0, %f1  #2318 pc 35940
	flw	%f2, 64(%x2)  #2318 pc 35944
	fadd	%f1, %f1, %f2  #2318 pc 35948
	lw	%x6, 56(%x2)  #2318 pc 35952
	add	%x24, %x0, %x6  #2318 pc 35956
	fsw	%f1, 0(%x24) #2318 pc 35960
	addi	%x24, %x0, 4  #pc 35964
	add	%x24, %x24, %x5  #2319 pc 35968
	flw	%f1, 0(%x24)  #2319 pc 35972
	fmul	%f1, %f0, %f1  #2319 pc 35976
	flw	%f3, 48(%x2)  #2319 pc 35980
	fadd	%f1, %f1, %f3  #2319 pc 35984
	addi	%x24, %x0, 4  #pc 35988
	add	%x24, %x24, %x6  #2319 pc 35992
	fsw	%f1, 0(%x24) #2319 pc 35996
	addi	%x24, %x0, 8  #pc 36000
	add	%x24, %x24, %x5  #2320 pc 36004
	flw	%f1, 0(%x24)  #2320 pc 36008
	fmul	%f0, %f0, %f1  #2320 pc 36012
	flw	%f1, 40(%x2)  #2320 pc 36016
	fadd	%f0, %f0, %f1  #2320 pc 36020
	addi	%x24, %x0, 8  #pc 36024
	add	%x24, %x24, %x6  #2320 pc 36028
	fsw	%f0, 0(%x24) #2320 pc 36032
	addi	%x5, %x0, 0  #0 pc 36036
	addi	%x23, %x6, 0  #0 pc 36040
	addi	%x6, %x5, 0  #0 pc 36044
	addi	%x5, %x23, 0  #0 pc 36048
	sw	%x1, 92(%x2)  #2321 pc 36052
	addi	%x2, %x2, 96  #2321 pc 36056
	jal	%x1, vecunit_sgn.2657  #2321 pc 36060
	addi	%x2, %x2, -96  #2321 pc 36064
	lw	%x1, 92(%x2) #2321 pc 36068
	lw	%x5, 32(%x2)  #2322 pc 36072
	sw	%x1, 92(%x2)  #2322 pc 36076
	addi	%x2, %x2, 96  #2322 pc 36080
	jal	%x1, vecbzero.2652  #2322 pc 36084
	addi	%x2, %x2, -96  #2322 pc 36088
	lw	%x1, 92(%x2) #2322 pc 36092
	lw	%x5, 28(%x2)  #2323 pc 36096
	lw	%x6, 24(%x2)  #2323 pc 36100
	sw	%x1, 92(%x2)  #2323 pc 36104
	addi	%x2, %x2, 96  #2323 pc 36108
	jal	%x1, veccpy.2654  #2323 pc 36112
	addi	%x2, %x2, -96  #2323 pc 36116
	lw	%x1, 92(%x2) #2323 pc 36120
	addi	%x5, %x0, 0  #0 pc 36124
	fmv	%f0, l.6305  #0 pc 36128
	lw	%x6, 20(%x2)  #2326 pc 36132
	slli	%x7, %x6, 2  #2326 pc 36136
	lw	%x9, 16(%x2)  #2326 pc 36140
	add	%x24, %x7, %x9  #2326 pc 36144
	lw	%x7, 0(%x24)  #2326 pc 36148
	fmv	%f1, l.6293  #0 pc 36152
	lw	%x10, 56(%x2)  #2326 pc 36156
	lw	%x22, 12(%x2)  #2326 pc 36160
	addi	%x6, %x10, 0  #0 pc 36164
	sw	%x1, 92(%x2)  #2326 pc 36168
	lw	%x23, 0(%x22)  #2326 pc 36172
	addi	%x2, %x2, 96  #2326 pc 36176
	jalr	%x1, %x23, 0  #2326 pc 36180
	addi	%x2, %x2, -96  #2326 pc 36184
	lw	%x1, 92(%x2)  #2326 pc 36188
	lw	%x5, 20(%x2)  #2327 pc 36192
	slli	%x6, %x5, 2  #2327 pc 36196
	lw	%x7, 16(%x2)  #2327 pc 36200
	add	%x24, %x6, %x7  #2327 pc 36204
	lw	%x6, 0(%x24)  #2327 pc 36208
	addi	%x5, %x6, 0  #0 pc 36212
	sw	%x1, 92(%x2)  #2327 pc 36216
	addi	%x2, %x2, 96  #2327 pc 36220
	jal	%x1, p_rgb.2724  #2327 pc 36224
	addi	%x2, %x2, -96  #2327 pc 36228
	lw	%x1, 92(%x2) #2327 pc 36232
	lw	%x6, 32(%x2)  #2327 pc 36236
	sw	%x1, 92(%x2)  #2327 pc 36240
	addi	%x2, %x2, 96  #2327 pc 36244
	jal	%x1, veccpy.2654  #2327 pc 36248
	addi	%x2, %x2, -96  #2327 pc 36252
	lw	%x1, 92(%x2) #2327 pc 36256
	lw	%x5, 20(%x2)  #2328 pc 36260
	slli	%x6, %x5, 2  #2328 pc 36264
	lw	%x7, 16(%x2)  #2328 pc 36268
	add	%x24, %x6, %x7  #2328 pc 36272
	lw	%x6, 0(%x24)  #2328 pc 36276
	lw	%x9, 8(%x2)  #2328 pc 36280
	addi	%x5, %x6, 0  #0 pc 36284
	addi	%x6, %x9, 0  #0 pc 36288
	sw	%x1, 92(%x2)  #2328 pc 36292
	addi	%x2, %x2, 96  #2328 pc 36296
	jal	%x1, p_set_group_id.2738  #2328 pc 36300
	addi	%x2, %x2, -96  #2328 pc 36304
	lw	%x1, 92(%x2) #2328 pc 36308
	lw	%x5, 20(%x2)  #2331 pc 36312
	slli	%x6, %x5, 2  #2331 pc 36316
	lw	%x7, 16(%x2)  #2331 pc 36320
	add	%x24, %x6, %x7  #2331 pc 36324
	lw	%x6, 0(%x24)  #2331 pc 36328
	addi	%x9, %x0, 0  #0 pc 36332
	lw	%x22, 4(%x2)  #2331 pc 36336
	addi	%x5, %x6, 0  #0 pc 36340
	addi	%x6, %x9, 0  #0 pc 36344
	sw	%x1, 92(%x2)  #2331 pc 36348
	lw	%x23, 0(%x22)  #2331 pc 36352
	addi	%x2, %x2, 96  #2331 pc 36356
	jalr	%x1, %x23, 0  #2331 pc 36360
	addi	%x2, %x2, -96  #2331 pc 36364
	lw	%x1, 92(%x2)  #2331 pc 36368
	lw	%x5, 20(%x2)  #2333 pc 36372
	addi	%x5, %x5, -1  #2333 pc 36376
	addi	%x6, %x0, 1  #0 pc 36380
	lw	%x7, 8(%x2)  #2333 pc 36384
	sw	%x5, 88(%x2)  #2333 pc 36388
	addi	%x5, %x7, 0  #0 pc 36392
	sw	%x1, 92(%x2)  #2333 pc 36396
	addi	%x2, %x2, 96  #2333 pc 36400
	jal	%x1, add_mod5.2641  #2333 pc 36404
	addi	%x2, %x2, -96  #2333 pc 36408
	lw	%x1, 92(%x2) #2333 pc 36412
	addi	%x7, %x5, 0  #2333 pc 36416
	flw	%f0, 64(%x2)  #2333 pc 36420
	flw	%f1, 48(%x2)  #2333 pc 36424
	flw	%f2, 40(%x2)  #2333 pc 36428
	lw	%x5, 16(%x2)  #2333 pc 36432
	lw	%x6, 88(%x2)  #2333 pc 36436
	lw	%x22, 0(%x2)  #2333 pc 36440
	lw	%x23, 0(%x22)  #2333 pc 36444
	jalr	%x0, %x23, 0  #2333 pc 36448
	nop #pc 36452
bge_else.9569: #pc 36452
	ret #pc 36456
	nop #pc 36460
pretrace_line.3035:  #pc 36464
	addi	%x24, %x0, 24  #pc 36464
	add	%x24, %x24, %x22  #0 pc 36468
	lw	%x9, 0(%x24)  #0 pc 36472
	addi	%x24, %x0, 20  #pc 36476
	add	%x24, %x24, %x22  #0 pc 36480
	lw	%x10, 0(%x24)  #0 pc 36484
	addi	%x24, %x0, 16  #pc 36488
	add	%x24, %x24, %x22  #0 pc 36492
	lw	%x11, 0(%x24)  #0 pc 36496
	addi	%x24, %x0, 12  #pc 36500
	add	%x24, %x24, %x22  #0 pc 36504
	lw	%x12, 0(%x24)  #0 pc 36508
	addi	%x24, %x0, 8  #pc 36512
	add	%x24, %x24, %x22  #0 pc 36516
	lw	%x13, 0(%x24)  #0 pc 36520
	addi	%x24, %x0, 4  #pc 36524
	add	%x24, %x24, %x22  #0 pc 36528
	lw	%x14, 0(%x24)  #0 pc 36532
	add	%x24, %x0, %x11  #2340 pc 36536
	flw	%f0, 0(%x24)  #2340 pc 36540
	addi	%x24, %x0, 4  #pc 36544
	add	%x24, %x24, %x14  #2340 pc 36548
	lw	%x11, 0(%x24)  #2340 pc 36552
	sub	%x6, %x6, %x11  #2340 pc 36556
	sw	%x7, 0(%x2)  #2340 pc 36560
	sw	%x5, 4(%x2)  #2340 pc 36564
	sw	%x12, 8(%x2)  #2340 pc 36568
	sw	%x13, 12(%x2)  #2340 pc 36572
	sw	%x9, 16(%x2)  #2340 pc 36576
	sw	%x10, 20(%x2)  #2340 pc 36580
	fsw	%f0, 24(%x2)  #2340 pc 36584
	addi	%x5, %x6, 0  #0 pc 36588
	sw	%x1, 36(%x2)  #2340 pc 36592
	addi	%x2, %x2, 40  #2340 pc 36596
	jal	%x1, float_of_int.2553  #2340 pc 36600
	addi	%x2, %x2, -40  #2340 pc 36604
	lw	%x1, 36(%x2) #2340 pc 36608
	flw	%f1, 24(%x2)  #2340 pc 36612
	fmul	%f0, %f1, %f0  #2340 pc 36616
	lw	%x5, 20(%x2)  #2343 pc 36620
	add	%x24, %x0, %x5  #2343 pc 36624
	flw	%f1, 0(%x24)  #2343 pc 36628
	fmul	%f1, %f0, %f1  #2343 pc 36632
	lw	%x6, 16(%x2)  #2343 pc 36636
	add	%x24, %x0, %x6  #2343 pc 36640
	flw	%f2, 0(%x24)  #2343 pc 36644
	fadd	%f1, %f1, %f2  #2343 pc 36648
	addi	%x24, %x0, 4  #pc 36652
	add	%x24, %x24, %x5  #2344 pc 36656
	flw	%f2, 0(%x24)  #2344 pc 36660
	fmul	%f2, %f0, %f2  #2344 pc 36664
	addi	%x24, %x0, 4  #pc 36668
	add	%x24, %x24, %x6  #2344 pc 36672
	flw	%f3, 0(%x24)  #2344 pc 36676
	fadd	%f2, %f2, %f3  #2344 pc 36680
	addi	%x24, %x0, 8  #pc 36684
	add	%x24, %x24, %x5  #2345 pc 36688
	flw	%f3, 0(%x24)  #2345 pc 36692
	fmul	%f0, %f0, %f3  #2345 pc 36696
	addi	%x24, %x0, 8  #pc 36700
	add	%x24, %x24, %x6  #2345 pc 36704
	flw	%f3, 0(%x24)  #2345 pc 36708
	fadd	%f0, %f0, %f3  #2345 pc 36712
	lw	%x5, 12(%x2)  #2346 pc 36716
	add	%x24, %x0, %x5  #2346 pc 36720
	lw	%x5, 0(%x24)  #2346 pc 36724
	addi	%x6, %x5, -1  #2346 pc 36728
	lw	%x5, 4(%x2)  #2346 pc 36732
	lw	%x7, 0(%x2)  #2346 pc 36736
	lw	%x22, 8(%x2)  #2346 pc 36740
	fadd	%f29, %f2, %f30  #0 pc 36744
	fadd	%f2, %f0, %f30  #0 pc 36748
	fadd	%f0, %f1, %f30  #0 pc 36752
	fadd	%f1, %f29, %f30  #0 pc 36756
	lw	%x23, 0(%x22)  #2346 pc 36760
	jalr	%x0, %x23, 0  #2346 pc 36764
	nop #pc 36768
scan_pixel.3039:  #pc 36772
	addi	%x24, %x0, 24  #pc 36772
	add	%x24, %x24, %x22  #0 pc 36776
	lw	%x12, 0(%x24)  #0 pc 36780
	addi	%x24, %x0, 20  #pc 36784
	add	%x24, %x24, %x22  #0 pc 36788
	lw	%x13, 0(%x24)  #0 pc 36792
	addi	%x24, %x0, 16  #pc 36796
	add	%x24, %x24, %x22  #0 pc 36800
	lw	%x14, 0(%x24)  #0 pc 36804
	addi	%x24, %x0, 12  #pc 36808
	add	%x24, %x24, %x22  #0 pc 36812
	lw	%x15, 0(%x24)  #0 pc 36816
	addi	%x24, %x0, 8  #pc 36820
	add	%x24, %x24, %x22  #0 pc 36824
	lw	%x16, 0(%x24)  #0 pc 36828
	addi	%x24, %x0, 4  #pc 36832
	add	%x24, %x24, %x22  #0 pc 36836
	lw	%x17, 0(%x24)  #0 pc 36840
	add	%x24, %x0, %x16  #2356 pc 36844
	lw	%x16, 0(%x24)  #2356 pc 36848
	bge	%x5, %x16, 12  #2356 pc 36852
	j	ble_else.9574 #pc 36856
	nop #pc 36860
	ret #pc 36864
	nop #pc 36868
ble_else.9574: #pc 36868
	slli	%x16, %x5, 2  #2359 pc 36872
	add	%x24, %x16, %x9  #2359 pc 36876
	lw	%x16, 0(%x24)  #2359 pc 36880
	sw	%x22, 0(%x2)  #2359 pc 36884
	sw	%x11, 4(%x2)  #2359 pc 36888
	sw	%x12, 8(%x2)  #2359 pc 36892
	sw	%x7, 12(%x2)  #2359 pc 36896
	sw	%x13, 16(%x2)  #2359 pc 36900
	sw	%x17, 20(%x2)  #2359 pc 36904
	sw	%x9, 24(%x2)  #2359 pc 36908
	sw	%x10, 28(%x2)  #2359 pc 36912
	sw	%x6, 32(%x2)  #2359 pc 36916
	sw	%x5, 36(%x2)  #2359 pc 36920
	sw	%x15, 40(%x2)  #2359 pc 36924
	sw	%x14, 44(%x2)  #2359 pc 36928
	addi	%x5, %x16, 0  #0 pc 36932
	sw	%x1, 52(%x2)  #2359 pc 36936
	addi	%x2, %x2, 56  #2359 pc 36940
	jal	%x1, p_rgb.2724  #2359 pc 36944
	addi	%x2, %x2, -56  #2359 pc 36948
	lw	%x1, 52(%x2) #2359 pc 36952
	addi	%x6, %x5, 0  #2359 pc 36956
	lw	%x5, 44(%x2)  #2359 pc 36960
	sw	%x1, 52(%x2)  #2359 pc 36964
	addi	%x2, %x2, 56  #2359 pc 36968
	jal	%x1, veccpy.2654  #2359 pc 36972
	addi	%x2, %x2, -56  #2359 pc 36976
	lw	%x1, 52(%x2) #2359 pc 36980
	lw	%x5, 36(%x2)  #2362 pc 36984
	lw	%x6, 32(%x2)  #2362 pc 36988
	lw	%x7, 28(%x2)  #2362 pc 36992
	lw	%x22, 40(%x2)  #2362 pc 36996
	sw	%x1, 52(%x2)  #2362 pc 37000
	lw	%x23, 0(%x22)  #2362 pc 37004
	addi	%x2, %x2, 56  #2362 pc 37008
	jalr	%x1, %x23, 0  #2362 pc 37012
	addi	%x2, %x2, -56  #2362 pc 37016
	lw	%x1, 52(%x2)  #2362 pc 37020
	beq	%x5, %x0, 12  #2362 pc 37024
	j	be_else.9576 #pc 37028
	nop #pc 37032
	lw	%x5, 36(%x2)  #2365 pc 37036
	slli	%x6, %x5, 2  #2365 pc 37040
	lw	%x7, 24(%x2)  #2365 pc 37044
	add	%x24, %x6, %x7  #2365 pc 37048
	lw	%x6, 0(%x24)  #2365 pc 37052
	addi	%x9, %x0, 0  #0 pc 37056
	lw	%x22, 20(%x2)  #2365 pc 37060
	addi	%x5, %x6, 0  #0 pc 37064
	addi	%x6, %x9, 0  #0 pc 37068
	sw	%x1, 52(%x2)  #2365 pc 37072
	lw	%x23, 0(%x22)  #2365 pc 37076
	addi	%x2, %x2, 56  #2365 pc 37080
	jalr	%x1, %x23, 0  #2365 pc 37084
	addi	%x2, %x2, -56  #2365 pc 37088
	lw	%x1, 52(%x2)  #2365 pc 37092
	j	be_cont.9577 #pc 37096
	nop #pc 37100
be_else.9576: #pc 37100
	addi	%x11, %x0, 0  #0 pc 37104
	lw	%x5, 36(%x2)  #2363 pc 37108
	lw	%x6, 32(%x2)  #2363 pc 37112
	lw	%x7, 12(%x2)  #2363 pc 37116
	lw	%x9, 24(%x2)  #2363 pc 37120
	lw	%x10, 28(%x2)  #2363 pc 37124
	lw	%x22, 16(%x2)  #2363 pc 37128
	sw	%x1, 52(%x2)  #2363 pc 37132
	lw	%x23, 0(%x22)  #2363 pc 37136
	addi	%x2, %x2, 56  #2363 pc 37140
	jalr	%x1, %x23, 0  #2363 pc 37144
	addi	%x2, %x2, -56  #2363 pc 37148
	lw	%x1, 52(%x2)  #2363 pc 37152
be_cont.9577: #pc 37152
	lw	%x5, 4(%x2)  #2368 pc 37156
	lw	%x22, 8(%x2)  #2368 pc 37160
	sw	%x1, 52(%x2)  #2368 pc 37164
	lw	%x23, 0(%x22)  #2368 pc 37168
	addi	%x2, %x2, 56  #2368 pc 37172
	jalr	%x1, %x23, 0  #2368 pc 37176
	addi	%x2, %x2, -56  #2368 pc 37180
	lw	%x1, 52(%x2)  #2368 pc 37184
	lw	%x5, 36(%x2)  #2370 pc 37188
	addi	%x5, %x5, 1  #2370 pc 37192
	lw	%x6, 32(%x2)  #2370 pc 37196
	lw	%x7, 12(%x2)  #2370 pc 37200
	lw	%x9, 24(%x2)  #2370 pc 37204
	lw	%x10, 28(%x2)  #2370 pc 37208
	lw	%x11, 4(%x2)  #2370 pc 37212
	lw	%x22, 0(%x2)  #2370 pc 37216
	lw	%x23, 0(%x22)  #2370 pc 37220
	jalr	%x0, %x23, 0  #2370 pc 37224
	nop #pc 37228
scan_line.3046:  #pc 37232
	addi	%x24, %x0, 12  #pc 37232
	add	%x24, %x24, %x22  #0 pc 37236
	lw	%x12, 0(%x24)  #0 pc 37240
	addi	%x24, %x0, 8  #pc 37244
	add	%x24, %x24, %x22  #0 pc 37248
	lw	%x13, 0(%x24)  #0 pc 37252
	addi	%x24, %x0, 4  #pc 37256
	add	%x24, %x24, %x22  #0 pc 37260
	lw	%x14, 0(%x24)  #0 pc 37264
	addi	%x24, %x0, 4  #pc 37268
	add	%x24, %x24, %x14  #2377 pc 37272
	lw	%x15, 0(%x24)  #2377 pc 37276
	bge	%x5, %x15, 12  #2377 pc 37280
	j	ble_else.9578 #pc 37284
	nop #pc 37288
	ret #pc 37292
	nop #pc 37296
ble_else.9578: #pc 37296
	addi	%x24, %x0, 4  #pc 37300
	add	%x24, %x24, %x14  #2379 pc 37304
	lw	%x14, 0(%x24)  #2379 pc 37308
	addi	%x14, %x14, -1  #2379 pc 37312
	sw	%x22, 0(%x2)  #2379 pc 37316
	sw	%x10, 4(%x2)  #2379 pc 37320
	sw	%x11, 8(%x2)  #2379 pc 37324
	sw	%x9, 12(%x2)  #2379 pc 37328
	sw	%x7, 16(%x2)  #2379 pc 37332
	sw	%x6, 20(%x2)  #2379 pc 37336
	sw	%x5, 24(%x2)  #2379 pc 37340
	sw	%x12, 28(%x2)  #2379 pc 37344
	bge	%x5, %x14, 12  #2379 pc 37348
	j	ble_else.9580 #pc 37352
	nop #pc 37356
	j	ble_cont.9581 #pc 37360
	nop #pc 37364
ble_else.9580: #pc 37364
	addi	%x14, %x5, 1  #2380 pc 37368
	addi	%x7, %x10, 0  #0 pc 37372
	addi	%x6, %x14, 0  #0 pc 37376
	addi	%x5, %x9, 0  #0 pc 37380
	addi	%x22, %x13, 0  #0 pc 37384
	sw	%x1, 36(%x2)  #2380 pc 37388
	lw	%x23, 0(%x22)  #2380 pc 37392
	addi	%x2, %x2, 40  #2380 pc 37396
	jalr	%x1, %x23, 0  #2380 pc 37400
	addi	%x2, %x2, -40  #2380 pc 37404
	lw	%x1, 36(%x2)  #2380 pc 37408
ble_cont.9581: #pc 37408
	addi	%x5, %x0, 0  #0 pc 37412
	lw	%x6, 24(%x2)  #2382 pc 37416
	lw	%x7, 20(%x2)  #2382 pc 37420
	lw	%x9, 16(%x2)  #2382 pc 37424
	lw	%x10, 12(%x2)  #2382 pc 37428
	lw	%x11, 8(%x2)  #2382 pc 37432
	lw	%x22, 28(%x2)  #2382 pc 37436
	sw	%x1, 36(%x2)  #2382 pc 37440
	lw	%x23, 0(%x22)  #2382 pc 37444
	addi	%x2, %x2, 40  #2382 pc 37448
	jalr	%x1, %x23, 0  #2382 pc 37452
	addi	%x2, %x2, -40  #2382 pc 37456
	lw	%x1, 36(%x2)  #2382 pc 37460
	lw	%x5, 24(%x2)  #2383 pc 37464
	addi	%x5, %x5, 1  #2383 pc 37468
	addi	%x6, %x0, 2  #0 pc 37472
	lw	%x7, 4(%x2)  #2383 pc 37476
	sw	%x5, 32(%x2)  #2383 pc 37480
	addi	%x5, %x7, 0  #0 pc 37484
	sw	%x1, 36(%x2)  #2383 pc 37488
	addi	%x2, %x2, 40  #2383 pc 37492
	jal	%x1, add_mod5.2641  #2383 pc 37496
	addi	%x2, %x2, -40  #2383 pc 37500
	lw	%x1, 36(%x2) #2383 pc 37504
	addi	%x10, %x5, 0  #2383 pc 37508
	lw	%x5, 32(%x2)  #2383 pc 37512
	lw	%x6, 16(%x2)  #2383 pc 37516
	lw	%x7, 12(%x2)  #2383 pc 37520
	lw	%x9, 20(%x2)  #2383 pc 37524
	lw	%x11, 8(%x2)  #2383 pc 37528
	lw	%x22, 0(%x2)  #2383 pc 37532
	lw	%x23, 0(%x22)  #2383 pc 37536
	jalr	%x0, %x23, 0  #2383 pc 37540
	nop #pc 37544
create_float5x3array.3053:  #pc 37548
	addi	%x5, %x0, 3  #0 pc 37548
	fmv	%f0, l.6293  #0 pc 37552
	sw	%x1, 4(%x2)  #2394 pc 37556
	addi	%x2, %x2, 8  #2394 pc 37560
	jal	%x1, create_float_array.2600  #2394 pc 37564
	addi	%x2, %x2, -8  #2394 pc 37568
	lw	%x1, 4(%x2) #2394 pc 37572
	addi	%x6, %x5, 0  #2394 pc 37576
	addi	%x5, %x0, 5  #0 pc 37580
	sw	%x1, 4(%x2)  #2395 pc 37584
	addi	%x2, %x2, 8  #2395 pc 37588
	jal	%x1, create_array.2593  #2395 pc 37592
	addi	%x2, %x2, -8  #2395 pc 37596
	lw	%x1, 4(%x2) #2395 pc 37600
	addi	%x6, %x0, 3  #0 pc 37604
	fmv	%f0, l.6293  #0 pc 37608
	sw	%x5, 0(%x2)  #2396 pc 37612
	addi	%x5, %x6, 0  #0 pc 37616
	sw	%x1, 4(%x2)  #2396 pc 37620
	addi	%x2, %x2, 8  #2396 pc 37624
	jal	%x1, create_float_array.2600  #2396 pc 37628
	addi	%x2, %x2, -8  #2396 pc 37632
	lw	%x1, 4(%x2) #2396 pc 37636
	lw	%x6, 0(%x2)  #2396 pc 37640
	addi	%x24, %x0, 4  #pc 37644
	add	%x24, %x24, %x6  #2396 pc 37648
	sw	%x5, 0(%x24)  #2396 pc 37652
	addi	%x5, %x0, 3  #0 pc 37656
	fmv	%f0, l.6293  #0 pc 37660
	sw	%x1, 4(%x2)  #2397 pc 37664
	addi	%x2, %x2, 8  #2397 pc 37668
	jal	%x1, create_float_array.2600  #2397 pc 37672
	addi	%x2, %x2, -8  #2397 pc 37676
	lw	%x1, 4(%x2) #2397 pc 37680
	lw	%x6, 0(%x2)  #2397 pc 37684
	addi	%x24, %x0, 8  #pc 37688
	add	%x24, %x24, %x6  #2397 pc 37692
	sw	%x5, 0(%x24)  #2397 pc 37696
	addi	%x5, %x0, 3  #0 pc 37700
	fmv	%f0, l.6293  #0 pc 37704
	sw	%x1, 4(%x2)  #2398 pc 37708
	addi	%x2, %x2, 8  #2398 pc 37712
	jal	%x1, create_float_array.2600  #2398 pc 37716
	addi	%x2, %x2, -8  #2398 pc 37720
	lw	%x1, 4(%x2) #2398 pc 37724
	lw	%x6, 0(%x2)  #2398 pc 37728
	addi	%x24, %x0, 12  #pc 37732
	add	%x24, %x24, %x6  #2398 pc 37736
	sw	%x5, 0(%x24)  #2398 pc 37740
	addi	%x5, %x0, 3  #0 pc 37744
	fmv	%f0, l.6293  #0 pc 37748
	sw	%x1, 4(%x2)  #2399 pc 37752
	addi	%x2, %x2, 8  #2399 pc 37756
	jal	%x1, create_float_array.2600  #2399 pc 37760
	addi	%x2, %x2, -8  #2399 pc 37764
	lw	%x1, 4(%x2) #2399 pc 37768
	lw	%x6, 0(%x2)  #2399 pc 37772
	addi	%x24, %x0, 16  #pc 37776
	add	%x24, %x24, %x6  #2399 pc 37780
	sw	%x5, 0(%x24)  #2399 pc 37784
	addi	%x5, %x6, 0  #2400 pc 37788
	ret #pc 37792
	nop #pc 37796
create_pixel.3055:  #pc 37800
	addi	%x5, %x0, 3  #0 pc 37800
	fmv	%f0, l.6293  #0 pc 37804
	sw	%x1, 4(%x2)  #2406 pc 37808
	addi	%x2, %x2, 8  #2406 pc 37812
	jal	%x1, create_float_array.2600  #2406 pc 37816
	addi	%x2, %x2, -8  #2406 pc 37820
	lw	%x1, 4(%x2) #2406 pc 37824
	sw	%x5, 0(%x2)  #2407 pc 37828
	addi	%x5, %x0, 0  #0 pc 37832
	sw	%x1, 4(%x2)  #2407 pc 37836
	addi	%x2, %x2, 8  #2407 pc 37840
	jal	%x1, create_float5x3array.3053  #2407 pc 37844
	addi	%x2, %x2, -8  #2407 pc 37848
	lw	%x1, 4(%x2) #2407 pc 37852
	addi	%x6, %x0, 5  #0 pc 37856
	addi	%x7, %x0, 0  #0 pc 37860
	sw	%x5, 4(%x2)  #2408 pc 37864
	addi	%x5, %x6, 0  #0 pc 37868
	addi	%x6, %x7, 0  #0 pc 37872
	sw	%x1, 12(%x2)  #2408 pc 37876
	addi	%x2, %x2, 16  #2408 pc 37880
	jal	%x1, create_array.2593  #2408 pc 37884
	addi	%x2, %x2, -16  #2408 pc 37888
	lw	%x1, 12(%x2) #2408 pc 37892
	addi	%x6, %x0, 5  #0 pc 37896
	addi	%x7, %x0, 0  #0 pc 37900
	sw	%x5, 8(%x2)  #2409 pc 37904
	addi	%x5, %x6, 0  #0 pc 37908
	addi	%x6, %x7, 0  #0 pc 37912
	sw	%x1, 12(%x2)  #2409 pc 37916
	addi	%x2, %x2, 16  #2409 pc 37920
	jal	%x1, create_array.2593  #2409 pc 37924
	addi	%x2, %x2, -16  #2409 pc 37928
	lw	%x1, 12(%x2) #2409 pc 37932
	sw	%x5, 12(%x2)  #2410 pc 37936
	addi	%x5, %x0, 0  #0 pc 37940
	sw	%x1, 20(%x2)  #2410 pc 37944
	addi	%x2, %x2, 24  #2410 pc 37948
	jal	%x1, create_float5x3array.3053  #2410 pc 37952
	addi	%x2, %x2, -24  #2410 pc 37956
	lw	%x1, 20(%x2) #2410 pc 37960
	sw	%x5, 16(%x2)  #2411 pc 37964
	addi	%x5, %x0, 0  #0 pc 37968
	sw	%x1, 20(%x2)  #2411 pc 37972
	addi	%x2, %x2, 24  #2411 pc 37976
	jal	%x1, create_float5x3array.3053  #2411 pc 37980
	addi	%x2, %x2, -24  #2411 pc 37984
	lw	%x1, 20(%x2) #2411 pc 37988
	addi	%x6, %x0, 1  #0 pc 37992
	addi	%x7, %x0, 0  #0 pc 37996
	sw	%x5, 20(%x2)  #2412 pc 38000
	addi	%x5, %x6, 0  #0 pc 38004
	addi	%x6, %x7, 0  #0 pc 38008
	sw	%x1, 28(%x2)  #2412 pc 38012
	addi	%x2, %x2, 32  #2412 pc 38016
	jal	%x1, create_array.2593  #2412 pc 38020
	addi	%x2, %x2, -32  #2412 pc 38024
	lw	%x1, 28(%x2) #2412 pc 38028
	sw	%x5, 24(%x2)  #2413 pc 38032
	addi	%x5, %x0, 0  #0 pc 38036
	sw	%x1, 28(%x2)  #2413 pc 38040
	addi	%x2, %x2, 32  #2413 pc 38044
	jal	%x1, create_float5x3array.3053  #2413 pc 38048
	addi	%x2, %x2, -32  #2413 pc 38052
	lw	%x1, 28(%x2) #2413 pc 38056
	addi	%x6, %x3, 0  #2414 pc 38060
	addi	%x3, %x3, 32  #2414 pc 38064
	addi	%x24, %x0, 28  #pc 38068
	add	%x24, %x24, %x6  #2414 pc 38072
	sw	%x5, 0(%x24)  #2414 pc 38076
	lw	%x5, 24(%x2)  #2414 pc 38080
	addi	%x24, %x0, 24  #pc 38084
	add	%x24, %x24, %x6  #2414 pc 38088
	sw	%x5, 0(%x24)  #2414 pc 38092
	lw	%x5, 20(%x2)  #2414 pc 38096
	addi	%x24, %x0, 20  #pc 38100
	add	%x24, %x24, %x6  #2414 pc 38104
	sw	%x5, 0(%x24)  #2414 pc 38108
	lw	%x5, 16(%x2)  #2414 pc 38112
	addi	%x24, %x0, 16  #pc 38116
	add	%x24, %x24, %x6  #2414 pc 38120
	sw	%x5, 0(%x24)  #2414 pc 38124
	lw	%x5, 12(%x2)  #2414 pc 38128
	addi	%x24, %x0, 12  #pc 38132
	add	%x24, %x24, %x6  #2414 pc 38136
	sw	%x5, 0(%x24)  #2414 pc 38140
	lw	%x5, 8(%x2)  #2414 pc 38144
	addi	%x24, %x0, 8  #pc 38148
	add	%x24, %x24, %x6  #2414 pc 38152
	sw	%x5, 0(%x24)  #2414 pc 38156
	lw	%x5, 4(%x2)  #2414 pc 38160
	addi	%x24, %x0, 4  #pc 38164
	add	%x24, %x24, %x6  #2414 pc 38168
	sw	%x5, 0(%x24)  #2414 pc 38172
	lw	%x5, 0(%x2)  #2414 pc 38176
	add	%x24, %x0, %x6  #2414 pc 38180
	sw	%x5, 0(%x24)  #2414 pc 38184
	addi	%x5, %x6, 0  #2414 pc 38188
	ret #pc 38192
	nop #pc 38196
init_line_elements.3057:  #pc 38200
	bge	%x6, %x0, 12  #2419 pc 38200
	j	bge_else.9582 #pc 38204
	nop #pc 38208
	sw	%x5, 0(%x2)  #2420 pc 38212
	sw	%x6, 4(%x2)  #2420 pc 38216
	addi	%x5, %x0, 0  #0 pc 38220
	sw	%x1, 12(%x2)  #2420 pc 38224
	addi	%x2, %x2, 16  #2420 pc 38228
	jal	%x1, create_pixel.3055  #2420 pc 38232
	addi	%x2, %x2, -16  #2420 pc 38236
	lw	%x1, 12(%x2) #2420 pc 38240
	lw	%x6, 4(%x2)  #2420 pc 38244
	slli	%x7, %x6, 2  #2420 pc 38248
	lw	%x9, 0(%x2)  #2420 pc 38252
	add	%x24, %x7, %x9  #2420 pc 38256
	sw	%x5, 0(%x24)  #2420 pc 38260
	addi	%x6, %x6, -1  #2421 pc 38264
	addi	%x5, %x9, 0  #0 pc 38268
	j	init_line_elements.3057  #2421 pc 38272
	nop #pc 38276
bge_else.9582: #pc 38276
	ret #pc 38280
	nop #pc 38284
create_pixelline.3060:  #pc 38288
	addi	%x24, %x0, 4  #pc 38288
	add	%x24, %x24, %x22  #0 pc 38292
	lw	%x5, 0(%x24)  #0 pc 38296
	add	%x24, %x0, %x5  #2428 pc 38300
	lw	%x6, 0(%x24)  #2428 pc 38304
	sw	%x5, 0(%x2)  #2428 pc 38308
	sw	%x6, 4(%x2)  #2428 pc 38312
	addi	%x5, %x0, 0  #0 pc 38316
	sw	%x1, 12(%x2)  #2428 pc 38320
	addi	%x2, %x2, 16  #2428 pc 38324
	jal	%x1, create_pixel.3055  #2428 pc 38328
	addi	%x2, %x2, -16  #2428 pc 38332
	lw	%x1, 12(%x2) #2428 pc 38336
	addi	%x6, %x5, 0  #2428 pc 38340
	lw	%x5, 4(%x2)  #2428 pc 38344
	sw	%x1, 12(%x2)  #2428 pc 38348
	addi	%x2, %x2, 16  #2428 pc 38352
	jal	%x1, create_array.2593  #2428 pc 38356
	addi	%x2, %x2, -16  #2428 pc 38360
	lw	%x1, 12(%x2) #2428 pc 38364
	lw	%x6, 0(%x2)  #2429 pc 38368
	add	%x24, %x0, %x6  #2429 pc 38372
	lw	%x6, 0(%x24)  #2429 pc 38376
	addi	%x6, %x6, -2  #2429 pc 38380
	j	init_line_elements.3057  #2429 pc 38384
	nop #pc 38388
tan.3062:  #pc 38392
	fsw	%f0, 0(%x2)  #2442 pc 38392
	sw	%x1, 12(%x2)  #2442 pc 38396
	addi	%x2, %x2, 16  #2442 pc 38400
	jal	%x1, sin.2543  #2442 pc 38404
	addi	%x2, %x2, -16  #2442 pc 38408
	lw	%x1, 12(%x2) #2442 pc 38412
	flw	%f1, 0(%x2)  #2442 pc 38416
	fsw	%f0, 8(%x2)  #2442 pc 38420
	fadd	%f0, %f1, %f30  #0 pc 38424
	sw	%x1, 20(%x2)  #2442 pc 38428
	addi	%x2, %x2, 24  #2442 pc 38432
	jal	%x1, cos.2545  #2442 pc 38436
	addi	%x2, %x2, -24  #2442 pc 38440
	lw	%x1, 20(%x2) #2442 pc 38444
	flw	%f1, 8(%x2)  #2442 pc 38448
	fdiv	%f0, %f1, %f0  #2442 pc 38452
	ret #pc 38456
	nop #pc 38460
adjust_position.3064:  #pc 38464
	fmul	%f0, %f0, %f0  #2447 pc 38464
	fmv	%f2, l.6871  #0 pc 38468
	fadd	%f0, %f0, %f2  #2447 pc 38472
	fsqrt	%f0, %f0  #2447 pc 38476
	fmv	%f2, l.6305  #0 pc 38480
	fdiv	%f2, %f2, %f0  #2448 pc 38484
	fsw	%f0, 0(%x2)  #2449 pc 38488
	fsw	%f1, 8(%x2)  #2449 pc 38492
	fadd	%f0, %f2, %f30  #0 pc 38496
	sw	%x1, 20(%x2)  #2449 pc 38500
	addi	%x2, %x2, 24  #2449 pc 38504
	jal	%x1, atan.2547  #2449 pc 38508
	addi	%x2, %x2, -24  #2449 pc 38512
	lw	%x1, 20(%x2) #2449 pc 38516
	flw	%f1, 8(%x2)  #2450 pc 38520
	fmul	%f0, %f0, %f1  #2450 pc 38524
	sw	%x1, 20(%x2)  #2450 pc 38528
	addi	%x2, %x2, 24  #2450 pc 38532
	jal	%x1, tan.3062  #2450 pc 38536
	addi	%x2, %x2, -24  #2450 pc 38540
	lw	%x1, 20(%x2) #2450 pc 38544
	flw	%f1, 0(%x2)  #2451 pc 38548
	fmul	%f0, %f0, %f1  #2451 pc 38552
	ret #pc 38556
	nop #pc 38560
calc_dirvec.3067:  #pc 38564
	addi	%x24, %x0, 4  #pc 38564
	add	%x24, %x24, %x22  #0 pc 38568
	lw	%x9, 0(%x24)  #0 pc 38572
	addi	%x24, %x0, 5  #pc 38576
	bge	%x5, %x24, 12  #2456 pc 38580
	j	bge_else.9583 #pc 38584
	nop #pc 38588
	sw	%x7, 0(%x2)  #2457 pc 38592
	sw	%x9, 4(%x2)  #2457 pc 38596
	sw	%x6, 8(%x2)  #2457 pc 38600
	fsw	%f0, 16(%x2)  #2457 pc 38604
	fsw	%f1, 24(%x2)  #2457 pc 38608
	sw	%x1, 36(%x2)  #2457 pc 38612
	addi	%x2, %x2, 40  #2457 pc 38616
	jal	%x1, fsqr.2536  #2457 pc 38620
	addi	%x2, %x2, -40  #2457 pc 38624
	lw	%x1, 36(%x2) #2457 pc 38628
	flw	%f1, 24(%x2)  #2457 pc 38632
	fsw	%f0, 32(%x2)  #2457 pc 38636
	fadd	%f0, %f1, %f30  #0 pc 38640
	sw	%x1, 44(%x2)  #2457 pc 38644
	addi	%x2, %x2, 48  #2457 pc 38648
	jal	%x1, fsqr.2536  #2457 pc 38652
	addi	%x2, %x2, -48  #2457 pc 38656
	lw	%x1, 44(%x2) #2457 pc 38660
	flw	%f1, 32(%x2)  #2457 pc 38664
	fadd	%f0, %f1, %f0  #2457 pc 38668
	fmv	%f1, l.6305  #0 pc 38672
	fadd	%f0, %f0, %f1  #2457 pc 38676
	fsqrt	%f0, %f0  #2457 pc 38680
	flw	%f1, 16(%x2)  #2458 pc 38684
	fdiv	%f1, %f1, %f0  #2458 pc 38688
	flw	%f2, 24(%x2)  #2459 pc 38692
	fdiv	%f2, %f2, %f0  #2459 pc 38696
	fmv	%f3, l.6305  #0 pc 38700
	fdiv	%f0, %f3, %f0  #2460 pc 38704
	lw	%x5, 8(%x2)  #2463 pc 38708
	slli	%x5, %x5, 2  #2463 pc 38712
	lw	%x6, 4(%x2)  #2463 pc 38716
	add	%x24, %x5, %x6  #2463 pc 38720
	lw	%x5, 0(%x24)  #2463 pc 38724
	lw	%x6, 0(%x2)  #2464 pc 38728
	slli	%x7, %x6, 2  #2464 pc 38732
	add	%x24, %x7, %x5  #2464 pc 38736
	lw	%x7, 0(%x24)  #2464 pc 38740
	sw	%x5, 40(%x2)  #2464 pc 38744
	fsw	%f0, 48(%x2)  #2464 pc 38748
	fsw	%f2, 56(%x2)  #2464 pc 38752
	fsw	%f1, 64(%x2)  #2464 pc 38756
	addi	%x5, %x7, 0  #0 pc 38760
	sw	%x1, 76(%x2)  #2464 pc 38764
	addi	%x2, %x2, 80  #2464 pc 38768
	jal	%x1, d_vec.2743  #2464 pc 38772
	addi	%x2, %x2, -80  #2464 pc 38776
	lw	%x1, 76(%x2) #2464 pc 38780
	flw	%f0, 64(%x2)  #2464 pc 38784
	flw	%f1, 56(%x2)  #2464 pc 38788
	flw	%f2, 48(%x2)  #2464 pc 38792
	sw	%x1, 76(%x2)  #2464 pc 38796
	addi	%x2, %x2, 80  #2464 pc 38800
	jal	%x1, vecset.2644  #2464 pc 38804
	addi	%x2, %x2, -80  #2464 pc 38808
	lw	%x1, 76(%x2) #2464 pc 38812
	lw	%x5, 0(%x2)  #2465 pc 38816
	addi	%x6, %x5, 40  #2465 pc 38820
	slli	%x6, %x6, 2  #2465 pc 38824
	lw	%x7, 40(%x2)  #2465 pc 38828
	add	%x24, %x6, %x7  #2465 pc 38832
	lw	%x6, 0(%x24)  #2465 pc 38836
	addi	%x5, %x6, 0  #0 pc 38840
	sw	%x1, 76(%x2)  #2465 pc 38844
	addi	%x2, %x2, 80  #2465 pc 38848
	jal	%x1, d_vec.2743  #2465 pc 38852
	addi	%x2, %x2, -80  #2465 pc 38856
	lw	%x1, 76(%x2) #2465 pc 38860
	flw	%f0, 56(%x2)  #2465 pc 38864
	sw	%x5, 72(%x2)  #2465 pc 38868
	sw	%x1, 76(%x2)  #2465 pc 38872
	addi	%x2, %x2, 80  #2465 pc 38876
	jal	%x1, fneg.2534  #2465 pc 38880
	addi	%x2, %x2, -80  #2465 pc 38884
	lw	%x1, 76(%x2) #2465 pc 38888
	fadd	%f2, %f0, %f30  #2465 pc 38892
	flw	%f0, 64(%x2)  #2465 pc 38896
	flw	%f1, 48(%x2)  #2465 pc 38900
	lw	%x5, 72(%x2)  #2465 pc 38904
	sw	%x1, 76(%x2)  #2465 pc 38908
	addi	%x2, %x2, 80  #2465 pc 38912
	jal	%x1, vecset.2644  #2465 pc 38916
	addi	%x2, %x2, -80  #2465 pc 38920
	lw	%x1, 76(%x2) #2465 pc 38924
	lw	%x5, 0(%x2)  #2466 pc 38928
	addi	%x6, %x5, 80  #2466 pc 38932
	slli	%x6, %x6, 2  #2466 pc 38936
	lw	%x7, 40(%x2)  #2466 pc 38940
	add	%x24, %x6, %x7  #2466 pc 38944
	lw	%x6, 0(%x24)  #2466 pc 38948
	addi	%x5, %x6, 0  #0 pc 38952
	sw	%x1, 76(%x2)  #2466 pc 38956
	addi	%x2, %x2, 80  #2466 pc 38960
	jal	%x1, d_vec.2743  #2466 pc 38964
	addi	%x2, %x2, -80  #2466 pc 38968
	lw	%x1, 76(%x2) #2466 pc 38972
	flw	%f0, 64(%x2)  #2466 pc 38976
	sw	%x5, 76(%x2)  #2466 pc 38980
	sw	%x1, 84(%x2)  #2466 pc 38984
	addi	%x2, %x2, 88  #2466 pc 38988
	jal	%x1, fneg.2534  #2466 pc 38992
	addi	%x2, %x2, -88  #2466 pc 38996
	lw	%x1, 84(%x2) #2466 pc 39000
	flw	%f1, 56(%x2)  #2466 pc 39004
	fsw	%f0, 80(%x2)  #2466 pc 39008
	fadd	%f0, %f1, %f30  #0 pc 39012
	sw	%x1, 92(%x2)  #2466 pc 39016
	addi	%x2, %x2, 96  #2466 pc 39020
	jal	%x1, fneg.2534  #2466 pc 39024
	addi	%x2, %x2, -96  #2466 pc 39028
	lw	%x1, 92(%x2) #2466 pc 39032
	fadd	%f2, %f0, %f30  #2466 pc 39036
	flw	%f0, 48(%x2)  #2466 pc 39040
	flw	%f1, 80(%x2)  #2466 pc 39044
	lw	%x5, 76(%x2)  #2466 pc 39048
	sw	%x1, 92(%x2)  #2466 pc 39052
	addi	%x2, %x2, 96  #2466 pc 39056
	jal	%x1, vecset.2644  #2466 pc 39060
	addi	%x2, %x2, -96  #2466 pc 39064
	lw	%x1, 92(%x2) #2466 pc 39068
	lw	%x5, 0(%x2)  #2467 pc 39072
	addi	%x6, %x5, 1  #2467 pc 39076
	slli	%x6, %x6, 2  #2467 pc 39080
	lw	%x7, 40(%x2)  #2467 pc 39084
	add	%x24, %x6, %x7  #2467 pc 39088
	lw	%x6, 0(%x24)  #2467 pc 39092
	addi	%x5, %x6, 0  #0 pc 39096
	sw	%x1, 92(%x2)  #2467 pc 39100
	addi	%x2, %x2, 96  #2467 pc 39104
	jal	%x1, d_vec.2743  #2467 pc 39108
	addi	%x2, %x2, -96  #2467 pc 39112
	lw	%x1, 92(%x2) #2467 pc 39116
	flw	%f0, 64(%x2)  #2467 pc 39120
	sw	%x5, 88(%x2)  #2467 pc 39124
	sw	%x1, 92(%x2)  #2467 pc 39128
	addi	%x2, %x2, 96  #2467 pc 39132
	jal	%x1, fneg.2534  #2467 pc 39136
	addi	%x2, %x2, -96  #2467 pc 39140
	lw	%x1, 92(%x2) #2467 pc 39144
	flw	%f1, 56(%x2)  #2467 pc 39148
	fsw	%f0, 96(%x2)  #2467 pc 39152
	fadd	%f0, %f1, %f30  #0 pc 39156
	sw	%x1, 108(%x2)  #2467 pc 39160
	addi	%x2, %x2, 112  #2467 pc 39164
	jal	%x1, fneg.2534  #2467 pc 39168
	addi	%x2, %x2, -112  #2467 pc 39172
	lw	%x1, 108(%x2) #2467 pc 39176
	flw	%f1, 48(%x2)  #2467 pc 39180
	fsw	%f0, 104(%x2)  #2467 pc 39184
	fadd	%f0, %f1, %f30  #0 pc 39188
	sw	%x1, 116(%x2)  #2467 pc 39192
	addi	%x2, %x2, 120  #2467 pc 39196
	jal	%x1, fneg.2534  #2467 pc 39200
	addi	%x2, %x2, -120  #2467 pc 39204
	lw	%x1, 116(%x2) #2467 pc 39208
	fadd	%f2, %f0, %f30  #2467 pc 39212
	flw	%f0, 96(%x2)  #2467 pc 39216
	flw	%f1, 104(%x2)  #2467 pc 39220
	lw	%x5, 88(%x2)  #2467 pc 39224
	sw	%x1, 116(%x2)  #2467 pc 39228
	addi	%x2, %x2, 120  #2467 pc 39232
	jal	%x1, vecset.2644  #2467 pc 39236
	addi	%x2, %x2, -120  #2467 pc 39240
	lw	%x1, 116(%x2) #2467 pc 39244
	lw	%x5, 0(%x2)  #2468 pc 39248
	addi	%x6, %x5, 41  #2468 pc 39252
	slli	%x6, %x6, 2  #2468 pc 39256
	lw	%x7, 40(%x2)  #2468 pc 39260
	add	%x24, %x6, %x7  #2468 pc 39264
	lw	%x6, 0(%x24)  #2468 pc 39268
	addi	%x5, %x6, 0  #0 pc 39272
	sw	%x1, 116(%x2)  #2468 pc 39276
	addi	%x2, %x2, 120  #2468 pc 39280
	jal	%x1, d_vec.2743  #2468 pc 39284
	addi	%x2, %x2, -120  #2468 pc 39288
	lw	%x1, 116(%x2) #2468 pc 39292
	flw	%f0, 64(%x2)  #2468 pc 39296
	sw	%x5, 112(%x2)  #2468 pc 39300
	sw	%x1, 116(%x2)  #2468 pc 39304
	addi	%x2, %x2, 120  #2468 pc 39308
	jal	%x1, fneg.2534  #2468 pc 39312
	addi	%x2, %x2, -120  #2468 pc 39316
	lw	%x1, 116(%x2) #2468 pc 39320
	flw	%f1, 48(%x2)  #2468 pc 39324
	fsw	%f0, 120(%x2)  #2468 pc 39328
	fadd	%f0, %f1, %f30  #0 pc 39332
	sw	%x1, 132(%x2)  #2468 pc 39336
	addi	%x2, %x2, 136  #2468 pc 39340
	jal	%x1, fneg.2534  #2468 pc 39344
	addi	%x2, %x2, -136  #2468 pc 39348
	lw	%x1, 132(%x2) #2468 pc 39352
	fadd	%f1, %f0, %f30  #2468 pc 39356
	flw	%f0, 120(%x2)  #2468 pc 39360
	flw	%f2, 56(%x2)  #2468 pc 39364
	lw	%x5, 112(%x2)  #2468 pc 39368
	sw	%x1, 132(%x2)  #2468 pc 39372
	addi	%x2, %x2, 136  #2468 pc 39376
	jal	%x1, vecset.2644  #2468 pc 39380
	addi	%x2, %x2, -136  #2468 pc 39384
	lw	%x1, 132(%x2) #2468 pc 39388
	lw	%x5, 0(%x2)  #2469 pc 39392
	addi	%x5, %x5, 81  #2469 pc 39396
	slli	%x5, %x5, 2  #2469 pc 39400
	lw	%x6, 40(%x2)  #2469 pc 39404
	add	%x24, %x5, %x6  #2469 pc 39408
	lw	%x5, 0(%x24)  #2469 pc 39412
	sw	%x1, 132(%x2)  #2469 pc 39416
	addi	%x2, %x2, 136  #2469 pc 39420
	jal	%x1, d_vec.2743  #2469 pc 39424
	addi	%x2, %x2, -136  #2469 pc 39428
	lw	%x1, 132(%x2) #2469 pc 39432
	flw	%f0, 48(%x2)  #2469 pc 39436
	sw	%x5, 128(%x2)  #2469 pc 39440
	sw	%x1, 132(%x2)  #2469 pc 39444
	addi	%x2, %x2, 136  #2469 pc 39448
	jal	%x1, fneg.2534  #2469 pc 39452
	addi	%x2, %x2, -136  #2469 pc 39456
	lw	%x1, 132(%x2) #2469 pc 39460
	flw	%f1, 64(%x2)  #2469 pc 39464
	flw	%f2, 56(%x2)  #2469 pc 39468
	lw	%x5, 128(%x2)  #2469 pc 39472
	j	vecset.2644  #2469 pc 39476
	nop #pc 39480
bge_else.9583: #pc 39480
	fsw	%f2, 136(%x2)  #2471 pc 39484
	sw	%x7, 0(%x2)  #2471 pc 39488
	sw	%x6, 8(%x2)  #2471 pc 39492
	sw	%x22, 144(%x2)  #2471 pc 39496
	fsw	%f3, 152(%x2)  #2471 pc 39500
	sw	%x5, 160(%x2)  #2471 pc 39504
	fadd	%f0, %f1, %f30  #0 pc 39508
	fadd	%f1, %f2, %f30  #0 pc 39512
	sw	%x1, 164(%x2)  #2471 pc 39516
	addi	%x2, %x2, 168  #2471 pc 39520
	jal	%x1, adjust_position.3064  #2471 pc 39524
	addi	%x2, %x2, -168  #2471 pc 39528
	lw	%x1, 164(%x2) #2471 pc 39532
	lw	%x5, 160(%x2)  #2472 pc 39536
	addi	%x5, %x5, 1  #2472 pc 39540
	flw	%f1, 152(%x2)  #2472 pc 39544
	fsw	%f0, 168(%x2)  #2472 pc 39548
	sw	%x5, 176(%x2)  #2472 pc 39552
	sw	%x1, 180(%x2)  #2472 pc 39556
	addi	%x2, %x2, 184  #2472 pc 39560
	jal	%x1, adjust_position.3064  #2472 pc 39564
	addi	%x2, %x2, -184  #2472 pc 39568
	lw	%x1, 180(%x2) #2472 pc 39572
	fadd	%f1, %f0, %f30  #2472 pc 39576
	flw	%f0, 168(%x2)  #2472 pc 39580
	flw	%f2, 136(%x2)  #2472 pc 39584
	flw	%f3, 152(%x2)  #2472 pc 39588
	lw	%x5, 176(%x2)  #2472 pc 39592
	lw	%x6, 8(%x2)  #2472 pc 39596
	lw	%x7, 0(%x2)  #2472 pc 39600
	lw	%x22, 144(%x2)  #2472 pc 39604
	lw	%x23, 0(%x22)  #2472 pc 39608
	jalr	%x0, %x23, 0  #2472 pc 39612
	nop #pc 39616
calc_dirvecs.3075:  #pc 39620
	addi	%x24, %x0, 4  #pc 39620
	add	%x24, %x24, %x22  #0 pc 39624
	lw	%x9, 0(%x24)  #0 pc 39628
	bge	%x5, %x0, 12  #2477 pc 39632
	j	bge_else.9591 #pc 39636
	nop #pc 39640
	sw	%x22, 0(%x2)  #2479 pc 39644
	sw	%x5, 4(%x2)  #2479 pc 39648
	fsw	%f0, 8(%x2)  #2479 pc 39652
	sw	%x7, 16(%x2)  #2479 pc 39656
	sw	%x6, 20(%x2)  #2479 pc 39660
	sw	%x9, 24(%x2)  #2479 pc 39664
	sw	%x1, 28(%x2)  #2479 pc 39668
	addi	%x2, %x2, 32  #2479 pc 39672
	jal	%x1, float_of_int.2553  #2479 pc 39676
	addi	%x2, %x2, -32  #2479 pc 39680
	lw	%x1, 28(%x2) #2479 pc 39684
	fmv	%f1, l.6314  #0 pc 39688
	fmul	%f0, %f0, %f1  #2479 pc 39692
	fmv	%f1, l.7004  #0 pc 39696
	fsub	%f2, %f0, %f1  #2479 pc 39700
	addi	%x5, %x0, 0  #0 pc 39704
	fmv	%f0, l.6293  #0 pc 39708
	fmv	%f1, l.6293  #0 pc 39712
	flw	%f3, 8(%x2)  #2480 pc 39716
	lw	%x6, 20(%x2)  #2480 pc 39720
	lw	%x7, 16(%x2)  #2480 pc 39724
	lw	%x22, 24(%x2)  #2480 pc 39728
	sw	%x1, 28(%x2)  #2480 pc 39732
	lw	%x23, 0(%x22)  #2480 pc 39736
	addi	%x2, %x2, 32  #2480 pc 39740
	jalr	%x1, %x23, 0  #2480 pc 39744
	addi	%x2, %x2, -32  #2480 pc 39748
	lw	%x1, 28(%x2)  #2480 pc 39752
	lw	%x5, 4(%x2)  #2482 pc 39756
	sw	%x1, 28(%x2)  #2482 pc 39760
	addi	%x2, %x2, 32  #2482 pc 39764
	jal	%x1, float_of_int.2553  #2482 pc 39768
	addi	%x2, %x2, -32  #2482 pc 39772
	lw	%x1, 28(%x2) #2482 pc 39776
	fmv	%f1, l.6314  #0 pc 39780
	fmul	%f0, %f0, %f1  #2482 pc 39784
	fmv	%f1, l.6871  #0 pc 39788
	fadd	%f2, %f0, %f1  #2482 pc 39792
	addi	%x5, %x0, 0  #0 pc 39796
	fmv	%f0, l.6293  #0 pc 39800
	fmv	%f1, l.6293  #0 pc 39804
	lw	%x6, 16(%x2)  #2483 pc 39808
	addi	%x7, %x6, 2  #2483 pc 39812
	flw	%f3, 8(%x2)  #2483 pc 39816
	lw	%x9, 20(%x2)  #2483 pc 39820
	lw	%x22, 24(%x2)  #2483 pc 39824
	addi	%x6, %x9, 0  #0 pc 39828
	sw	%x1, 28(%x2)  #2483 pc 39832
	lw	%x23, 0(%x22)  #2483 pc 39836
	addi	%x2, %x2, 32  #2483 pc 39840
	jalr	%x1, %x23, 0  #2483 pc 39844
	addi	%x2, %x2, -32  #2483 pc 39848
	lw	%x1, 28(%x2)  #2483 pc 39852
	lw	%x5, 4(%x2)  #2485 pc 39856
	addi	%x5, %x5, -1  #2485 pc 39860
	addi	%x6, %x0, 1  #0 pc 39864
	lw	%x7, 20(%x2)  #2485 pc 39868
	sw	%x5, 28(%x2)  #2485 pc 39872
	addi	%x5, %x7, 0  #0 pc 39876
	sw	%x1, 36(%x2)  #2485 pc 39880
	addi	%x2, %x2, 40  #2485 pc 39884
	jal	%x1, add_mod5.2641  #2485 pc 39888
	addi	%x2, %x2, -40  #2485 pc 39892
	lw	%x1, 36(%x2) #2485 pc 39896
	addi	%x6, %x5, 0  #2485 pc 39900
	flw	%f0, 8(%x2)  #2485 pc 39904
	lw	%x5, 28(%x2)  #2485 pc 39908
	lw	%x7, 16(%x2)  #2485 pc 39912
	lw	%x22, 0(%x2)  #2485 pc 39916
	lw	%x23, 0(%x22)  #2485 pc 39920
	jalr	%x0, %x23, 0  #2485 pc 39924
	nop #pc 39928
bge_else.9591: #pc 39928
	ret #pc 39932
	nop #pc 39936
calc_dirvec_rows.3080:  #pc 39940
	addi	%x24, %x0, 4  #pc 39940
	add	%x24, %x24, %x22  #0 pc 39944
	lw	%x9, 0(%x24)  #0 pc 39948
	bge	%x5, %x0, 12  #2491 pc 39952
	j	bge_else.9593 #pc 39956
	nop #pc 39960
	sw	%x22, 0(%x2)  #2492 pc 39964
	sw	%x5, 4(%x2)  #2492 pc 39968
	sw	%x7, 8(%x2)  #2492 pc 39972
	sw	%x6, 12(%x2)  #2492 pc 39976
	sw	%x9, 16(%x2)  #2492 pc 39980
	sw	%x1, 20(%x2)  #2492 pc 39984
	addi	%x2, %x2, 24  #2492 pc 39988
	jal	%x1, float_of_int.2553  #2492 pc 39992
	addi	%x2, %x2, -24  #2492 pc 39996
	lw	%x1, 20(%x2) #2492 pc 40000
	fmv	%f1, l.6314  #0 pc 40004
	fmul	%f0, %f0, %f1  #2492 pc 40008
	fmv	%f1, l.7004  #0 pc 40012
	fsub	%f0, %f0, %f1  #2492 pc 40016
	addi	%x5, %x0, 4  #0 pc 40020
	lw	%x6, 12(%x2)  #2493 pc 40024
	lw	%x7, 8(%x2)  #2493 pc 40028
	lw	%x22, 16(%x2)  #2493 pc 40032
	sw	%x1, 20(%x2)  #2493 pc 40036
	lw	%x23, 0(%x22)  #2493 pc 40040
	addi	%x2, %x2, 24  #2493 pc 40044
	jalr	%x1, %x23, 0  #2493 pc 40048
	addi	%x2, %x2, -24  #2493 pc 40052
	lw	%x1, 20(%x2)  #2493 pc 40056
	lw	%x5, 4(%x2)  #2494 pc 40060
	addi	%x5, %x5, -1  #2494 pc 40064
	addi	%x6, %x0, 2  #0 pc 40068
	lw	%x7, 12(%x2)  #2494 pc 40072
	sw	%x5, 20(%x2)  #2494 pc 40076
	addi	%x5, %x7, 0  #0 pc 40080
	sw	%x1, 28(%x2)  #2494 pc 40084
	addi	%x2, %x2, 32  #2494 pc 40088
	jal	%x1, add_mod5.2641  #2494 pc 40092
	addi	%x2, %x2, -32  #2494 pc 40096
	lw	%x1, 28(%x2) #2494 pc 40100
	addi	%x6, %x5, 0  #2494 pc 40104
	lw	%x5, 8(%x2)  #2494 pc 40108
	addi	%x7, %x5, 4  #2494 pc 40112
	lw	%x5, 20(%x2)  #2494 pc 40116
	lw	%x22, 0(%x2)  #2494 pc 40120
	lw	%x23, 0(%x22)  #2494 pc 40124
	jalr	%x0, %x23, 0  #2494 pc 40128
	nop #pc 40132
bge_else.9593: #pc 40132
	ret #pc 40136
	nop #pc 40140
create_dirvec.3084:  #pc 40144
	addi	%x24, %x0, 4  #pc 40144
	add	%x24, %x24, %x22  #0 pc 40148
	lw	%x5, 0(%x24)  #0 pc 40152
	addi	%x6, %x0, 3  #0 pc 40156
	fmv	%f0, l.6293  #0 pc 40160
	sw	%x5, 0(%x2)  #2504 pc 40164
	addi	%x5, %x6, 0  #0 pc 40168
	sw	%x1, 4(%x2)  #2504 pc 40172
	addi	%x2, %x2, 8  #2504 pc 40176
	jal	%x1, create_float_array.2600  #2504 pc 40180
	addi	%x2, %x2, -8  #2504 pc 40184
	lw	%x1, 4(%x2) #2504 pc 40188
	addi	%x6, %x5, 0  #2504 pc 40192
	lw	%x5, 0(%x2)  #2505 pc 40196
	add	%x24, %x0, %x5  #2505 pc 40200
	lw	%x5, 0(%x24)  #2505 pc 40204
	sw	%x6, 4(%x2)  #2505 pc 40208
	sw	%x1, 12(%x2)  #2505 pc 40212
	addi	%x2, %x2, 16  #2505 pc 40216
	jal	%x1, create_array.2593  #2505 pc 40220
	addi	%x2, %x2, -16  #2505 pc 40224
	lw	%x1, 12(%x2) #2505 pc 40228
	addi	%x6, %x3, 0  #2506 pc 40232
	addi	%x3, %x3, 8  #2506 pc 40236
	addi	%x24, %x0, 4  #pc 40240
	add	%x24, %x24, %x6  #2506 pc 40244
	sw	%x5, 0(%x24)  #2506 pc 40248
	lw	%x5, 4(%x2)  #2506 pc 40252
	add	%x24, %x0, %x6  #2506 pc 40256
	sw	%x5, 0(%x24)  #2506 pc 40260
	addi	%x5, %x6, 0  #2506 pc 40264
	ret #pc 40268
	nop #pc 40272
create_dirvec_elements.3086:  #pc 40276
	addi	%x24, %x0, 4  #pc 40276
	add	%x24, %x24, %x22  #0 pc 40280
	lw	%x7, 0(%x24)  #0 pc 40284
	bge	%x6, %x0, 12  #2510 pc 40288
	j	bge_else.9595 #pc 40292
	nop #pc 40296
	sw	%x22, 0(%x2)  #2511 pc 40300
	sw	%x5, 4(%x2)  #2511 pc 40304
	sw	%x6, 8(%x2)  #2511 pc 40308
	addi	%x5, %x0, 0  #0 pc 40312
	addi	%x22, %x7, 0  #0 pc 40316
	sw	%x1, 12(%x2)  #2511 pc 40320
	lw	%x23, 0(%x22)  #2511 pc 40324
	addi	%x2, %x2, 16  #2511 pc 40328
	jalr	%x1, %x23, 0  #2511 pc 40332
	addi	%x2, %x2, -16  #2511 pc 40336
	lw	%x1, 12(%x2)  #2511 pc 40340
	lw	%x6, 8(%x2)  #2511 pc 40344
	slli	%x7, %x6, 2  #2511 pc 40348
	lw	%x9, 4(%x2)  #2511 pc 40352
	add	%x24, %x7, %x9  #2511 pc 40356
	sw	%x5, 0(%x24)  #2511 pc 40360
	addi	%x6, %x6, -1  #2512 pc 40364
	lw	%x22, 0(%x2)  #2512 pc 40368
	addi	%x5, %x9, 0  #0 pc 40372
	lw	%x23, 0(%x22)  #2512 pc 40376
	jalr	%x0, %x23, 0  #2512 pc 40380
	nop #pc 40384
bge_else.9595: #pc 40384
	ret #pc 40388
	nop #pc 40392
create_dirvecs.3089:  #pc 40396
	addi	%x24, %x0, 12  #pc 40396
	add	%x24, %x24, %x22  #0 pc 40400
	lw	%x6, 0(%x24)  #0 pc 40404
	addi	%x24, %x0, 8  #pc 40408
	add	%x24, %x24, %x22  #0 pc 40412
	lw	%x7, 0(%x24)  #0 pc 40416
	addi	%x24, %x0, 4  #pc 40420
	add	%x24, %x24, %x22  #0 pc 40424
	lw	%x9, 0(%x24)  #0 pc 40428
	bge	%x5, %x0, 12  #2517 pc 40432
	j	bge_else.9597 #pc 40436
	nop #pc 40440
	addi	%x10, %x0, 120  #0 pc 40444
	sw	%x22, 0(%x2)  #2518 pc 40448
	sw	%x7, 4(%x2)  #2518 pc 40452
	sw	%x6, 8(%x2)  #2518 pc 40456
	sw	%x5, 12(%x2)  #2518 pc 40460
	sw	%x10, 16(%x2)  #2518 pc 40464
	addi	%x5, %x0, 0  #0 pc 40468
	addi	%x22, %x9, 0  #0 pc 40472
	sw	%x1, 20(%x2)  #2518 pc 40476
	lw	%x23, 0(%x22)  #2518 pc 40480
	addi	%x2, %x2, 24  #2518 pc 40484
	jalr	%x1, %x23, 0  #2518 pc 40488
	addi	%x2, %x2, -24  #2518 pc 40492
	lw	%x1, 20(%x2)  #2518 pc 40496
	addi	%x6, %x5, 0  #2518 pc 40500
	lw	%x5, 16(%x2)  #2518 pc 40504
	sw	%x1, 20(%x2)  #2518 pc 40508
	addi	%x2, %x2, 24  #2518 pc 40512
	jal	%x1, create_array.2593  #2518 pc 40516
	addi	%x2, %x2, -24  #2518 pc 40520
	lw	%x1, 20(%x2) #2518 pc 40524
	lw	%x6, 12(%x2)  #2518 pc 40528
	slli	%x7, %x6, 2  #2518 pc 40532
	lw	%x9, 8(%x2)  #2518 pc 40536
	add	%x24, %x7, %x9  #2518 pc 40540
	sw	%x5, 0(%x24)  #2518 pc 40544
	slli	%x5, %x6, 2  #2519 pc 40548
	add	%x24, %x5, %x9  #2519 pc 40552
	lw	%x5, 0(%x24)  #2519 pc 40556
	addi	%x7, %x0, 118  #0 pc 40560
	lw	%x22, 4(%x2)  #2519 pc 40564
	addi	%x6, %x7, 0  #0 pc 40568
	sw	%x1, 20(%x2)  #2519 pc 40572
	lw	%x23, 0(%x22)  #2519 pc 40576
	addi	%x2, %x2, 24  #2519 pc 40580
	jalr	%x1, %x23, 0  #2519 pc 40584
	addi	%x2, %x2, -24  #2519 pc 40588
	lw	%x1, 20(%x2)  #2519 pc 40592
	lw	%x5, 12(%x2)  #2520 pc 40596
	addi	%x5, %x5, -1  #2520 pc 40600
	lw	%x22, 0(%x2)  #2520 pc 40604
	lw	%x23, 0(%x22)  #2520 pc 40608
	jalr	%x0, %x23, 0  #2520 pc 40612
	nop #pc 40616
bge_else.9597: #pc 40616
	ret #pc 40620
	nop #pc 40624
init_dirvec_constants.3091:  #pc 40628
	addi	%x24, %x0, 4  #pc 40628
	add	%x24, %x24, %x22  #0 pc 40632
	lw	%x7, 0(%x24)  #0 pc 40636
	bge	%x6, %x0, 12  #2529 pc 40640
	j	bge_else.9599 #pc 40644
	nop #pc 40648
	slli	%x9, %x6, 2  #2530 pc 40652
	add	%x24, %x9, %x5  #2530 pc 40656
	lw	%x9, 0(%x24)  #2530 pc 40660
	sw	%x5, 0(%x2)  #2530 pc 40664
	sw	%x22, 4(%x2)  #2530 pc 40668
	sw	%x6, 8(%x2)  #2530 pc 40672
	addi	%x5, %x9, 0  #0 pc 40676
	addi	%x22, %x7, 0  #0 pc 40680
	sw	%x1, 12(%x2)  #2530 pc 40684
	lw	%x23, 0(%x22)  #2530 pc 40688
	addi	%x2, %x2, 16  #2530 pc 40692
	jalr	%x1, %x23, 0  #2530 pc 40696
	addi	%x2, %x2, -16  #2530 pc 40700
	lw	%x1, 12(%x2)  #2530 pc 40704
	lw	%x5, 8(%x2)  #2531 pc 40708
	addi	%x6, %x5, -1  #2531 pc 40712
	lw	%x5, 0(%x2)  #2531 pc 40716
	lw	%x22, 4(%x2)  #2531 pc 40720
	lw	%x23, 0(%x22)  #2531 pc 40724
	jalr	%x0, %x23, 0  #2531 pc 40728
	nop #pc 40732
bge_else.9599: #pc 40732
	ret #pc 40736
	nop #pc 40740
init_vecset_constants.3094:  #pc 40744
	addi	%x24, %x0, 8  #pc 40744
	add	%x24, %x24, %x22  #0 pc 40748
	lw	%x6, 0(%x24)  #0 pc 40752
	addi	%x24, %x0, 4  #pc 40756
	add	%x24, %x24, %x22  #0 pc 40760
	lw	%x7, 0(%x24)  #0 pc 40764
	bge	%x5, %x0, 12  #2536 pc 40768
	j	bge_else.9601 #pc 40772
	nop #pc 40776
	slli	%x9, %x5, 2  #2537 pc 40780
	add	%x24, %x9, %x7  #2537 pc 40784
	lw	%x7, 0(%x24)  #2537 pc 40788
	addi	%x9, %x0, 119  #0 pc 40792
	sw	%x22, 0(%x2)  #2537 pc 40796
	sw	%x5, 4(%x2)  #2537 pc 40800
	addi	%x5, %x7, 0  #0 pc 40804
	addi	%x22, %x6, 0  #0 pc 40808
	addi	%x6, %x9, 0  #0 pc 40812
	sw	%x1, 12(%x2)  #2537 pc 40816
	lw	%x23, 0(%x22)  #2537 pc 40820
	addi	%x2, %x2, 16  #2537 pc 40824
	jalr	%x1, %x23, 0  #2537 pc 40828
	addi	%x2, %x2, -16  #2537 pc 40832
	lw	%x1, 12(%x2)  #2537 pc 40836
	lw	%x5, 4(%x2)  #2538 pc 40840
	addi	%x5, %x5, -1  #2538 pc 40844
	lw	%x22, 0(%x2)  #2538 pc 40848
	lw	%x23, 0(%x22)  #2538 pc 40852
	jalr	%x0, %x23, 0  #2538 pc 40856
	nop #pc 40860
bge_else.9601: #pc 40860
	ret #pc 40864
	nop #pc 40868
init_dirvecs.3096:  #pc 40872
	addi	%x24, %x0, 12  #pc 40872
	add	%x24, %x24, %x22  #0 pc 40876
	lw	%x5, 0(%x24)  #0 pc 40880
	addi	%x24, %x0, 8  #pc 40884
	add	%x24, %x24, %x22  #0 pc 40888
	lw	%x6, 0(%x24)  #0 pc 40892
	addi	%x24, %x0, 4  #pc 40896
	add	%x24, %x24, %x22  #0 pc 40900
	lw	%x7, 0(%x24)  #0 pc 40904
	addi	%x9, %x0, 4  #0 pc 40908
	sw	%x5, 0(%x2)  #2543 pc 40912
	sw	%x7, 4(%x2)  #2543 pc 40916
	addi	%x5, %x9, 0  #0 pc 40920
	addi	%x22, %x6, 0  #0 pc 40924
	sw	%x1, 12(%x2)  #2543 pc 40928
	lw	%x23, 0(%x22)  #2543 pc 40932
	addi	%x2, %x2, 16  #2543 pc 40936
	jalr	%x1, %x23, 0  #2543 pc 40940
	addi	%x2, %x2, -16  #2543 pc 40944
	lw	%x1, 12(%x2)  #2543 pc 40948
	addi	%x5, %x0, 9  #0 pc 40952
	addi	%x6, %x0, 0  #0 pc 40956
	addi	%x7, %x0, 0  #0 pc 40960
	lw	%x22, 4(%x2)  #2544 pc 40964
	sw	%x1, 12(%x2)  #2544 pc 40968
	lw	%x23, 0(%x22)  #2544 pc 40972
	addi	%x2, %x2, 16  #2544 pc 40976
	jalr	%x1, %x23, 0  #2544 pc 40980
	addi	%x2, %x2, -16  #2544 pc 40984
	lw	%x1, 12(%x2)  #2544 pc 40988
	addi	%x5, %x0, 4  #0 pc 40992
	lw	%x22, 0(%x2)  #2545 pc 40996
	lw	%x23, 0(%x22)  #2545 pc 41000
	jalr	%x0, %x23, 0  #2545 pc 41004
	nop #pc 41008
add_reflection.3098:  #pc 41012
	addi	%x24, %x0, 12  #pc 41012
	add	%x24, %x24, %x22  #0 pc 41016
	lw	%x7, 0(%x24)  #0 pc 41020
	addi	%x24, %x0, 8  #pc 41024
	add	%x24, %x24, %x22  #0 pc 41028
	lw	%x9, 0(%x24)  #0 pc 41032
	addi	%x24, %x0, 4  #pc 41036
	add	%x24, %x24, %x22  #0 pc 41040
	lw	%x22, 0(%x24)  #0 pc 41044
	sw	%x9, 0(%x2)  #2554 pc 41048
	sw	%x5, 4(%x2)  #2554 pc 41052
	sw	%x6, 8(%x2)  #2554 pc 41056
	fsw	%f0, 16(%x2)  #2554 pc 41060
	sw	%x7, 24(%x2)  #2554 pc 41064
	fsw	%f3, 32(%x2)  #2554 pc 41068
	fsw	%f2, 40(%x2)  #2554 pc 41072
	fsw	%f1, 48(%x2)  #2554 pc 41076
	addi	%x5, %x0, 0  #0 pc 41080
	sw	%x1, 60(%x2)  #2554 pc 41084
	lw	%x23, 0(%x22)  #2554 pc 41088
	addi	%x2, %x2, 64  #2554 pc 41092
	jalr	%x1, %x23, 0  #2554 pc 41096
	addi	%x2, %x2, -64  #2554 pc 41100
	lw	%x1, 60(%x2)  #2554 pc 41104
	sw	%x5, 56(%x2)  #2555 pc 41108
	sw	%x1, 60(%x2)  #2555 pc 41112
	addi	%x2, %x2, 64  #2555 pc 41116
	jal	%x1, d_vec.2743  #2555 pc 41120
	addi	%x2, %x2, -64  #2555 pc 41124
	lw	%x1, 60(%x2) #2555 pc 41128
	flw	%f0, 48(%x2)  #2555 pc 41132
	flw	%f1, 40(%x2)  #2555 pc 41136
	flw	%f2, 32(%x2)  #2555 pc 41140
	sw	%x1, 60(%x2)  #2555 pc 41144
	addi	%x2, %x2, 64  #2555 pc 41148
	jal	%x1, vecset.2644  #2555 pc 41152
	addi	%x2, %x2, -64  #2555 pc 41156
	lw	%x1, 60(%x2) #2555 pc 41160
	lw	%x5, 56(%x2)  #2556 pc 41164
	lw	%x22, 24(%x2)  #2556 pc 41168
	sw	%x1, 60(%x2)  #2556 pc 41172
	lw	%x23, 0(%x22)  #2556 pc 41176
	addi	%x2, %x2, 64  #2556 pc 41180
	jalr	%x1, %x23, 0  #2556 pc 41184
	addi	%x2, %x2, -64  #2556 pc 41188
	lw	%x1, 60(%x2)  #2556 pc 41192
	addi	%x5, %x3, 0  #2558 pc 41196
	addi	%x3, %x3, 16  #2558 pc 41200
	flw	%f0, 16(%x2)  #2558 pc 41204
	addi	%x24, %x0, 8  #pc 41208
	add	%x24, %x24, %x5  #2558 pc 41212
	fsw	%f0, 0(%x24) #2558 pc 41216
	lw	%x6, 56(%x2)  #2558 pc 41220
	addi	%x24, %x0, 4  #pc 41224
	add	%x24, %x24, %x5  #2558 pc 41228
	sw	%x6, 0(%x24)  #2558 pc 41232
	lw	%x6, 8(%x2)  #2558 pc 41236
	add	%x24, %x0, %x5  #2558 pc 41240
	sw	%x6, 0(%x24)  #2558 pc 41244
	lw	%x6, 4(%x2)  #2558 pc 41248
	slli	%x6, %x6, 2  #2558 pc 41252
	lw	%x7, 0(%x2)  #2558 pc 41256
	add	%x24, %x6, %x7  #2558 pc 41260
	sw	%x5, 0(%x24)  #2558 pc 41264
	ret #pc 41268
	nop #pc 41272
setup_rect_reflection.3105:  #pc 41276
	addi	%x24, %x0, 12  #pc 41276
	add	%x24, %x24, %x22  #0 pc 41280
	lw	%x7, 0(%x24)  #0 pc 41284
	addi	%x24, %x0, 8  #pc 41288
	add	%x24, %x24, %x22  #0 pc 41292
	lw	%x9, 0(%x24)  #0 pc 41296
	addi	%x24, %x0, 4  #pc 41300
	add	%x24, %x24, %x22  #0 pc 41304
	lw	%x10, 0(%x24)  #0 pc 41308
	addi	%x11, %x0, 4  #0 pc 41312
	sw	%x10, 0(%x2)  #2563 pc 41316
	sw	%x9, 4(%x2)  #2563 pc 41320
	sw	%x6, 8(%x2)  #2563 pc 41324
	sw	%x7, 12(%x2)  #2563 pc 41328
	addi	%x6, %x11, 0  #0 pc 41332
	sw	%x1, 20(%x2)  #2563 pc 41336
	addi	%x2, %x2, 24  #2563 pc 41340
	jal	%x1, mul.2562  #2563 pc 41344
	addi	%x2, %x2, -24  #2563 pc 41348
	lw	%x1, 20(%x2) #2563 pc 41352
	lw	%x6, 12(%x2)  #2564 pc 41356
	add	%x24, %x0, %x6  #2564 pc 41360
	lw	%x7, 0(%x24)  #2564 pc 41364
	fmv	%f0, l.6305  #0 pc 41368
	lw	%x9, 8(%x2)  #2565 pc 41372
	sw	%x7, 16(%x2)  #2565 pc 41376
	sw	%x5, 20(%x2)  #2565 pc 41380
	fsw	%f0, 24(%x2)  #2565 pc 41384
	addi	%x5, %x9, 0  #0 pc 41388
	sw	%x1, 36(%x2)  #2565 pc 41392
	addi	%x2, %x2, 40  #2565 pc 41396
	jal	%x1, o_diffuse.2706  #2565 pc 41400
	addi	%x2, %x2, -40  #2565 pc 41404
	lw	%x1, 36(%x2) #2565 pc 41408
	flw	%f1, 24(%x2)  #2565 pc 41412
	fsub	%f0, %f1, %f0  #2565 pc 41416
	lw	%x5, 4(%x2)  #2566 pc 41420
	add	%x24, %x0, %x5  #2566 pc 41424
	flw	%f1, 0(%x24)  #2566 pc 41428
	fsw	%f0, 32(%x2)  #2566 pc 41432
	fadd	%f0, %f1, %f30  #0 pc 41436
	sw	%x1, 44(%x2)  #2566 pc 41440
	addi	%x2, %x2, 48  #2566 pc 41444
	jal	%x1, fneg.2534  #2566 pc 41448
	addi	%x2, %x2, -48  #2566 pc 41452
	lw	%x1, 44(%x2) #2566 pc 41456
	lw	%x5, 4(%x2)  #2567 pc 41460
	addi	%x24, %x0, 4  #pc 41464
	add	%x24, %x24, %x5  #2567 pc 41468
	flw	%f1, 0(%x24)  #2567 pc 41472
	fsw	%f0, 40(%x2)  #2567 pc 41476
	fadd	%f0, %f1, %f30  #0 pc 41480
	sw	%x1, 52(%x2)  #2567 pc 41484
	addi	%x2, %x2, 56  #2567 pc 41488
	jal	%x1, fneg.2534  #2567 pc 41492
	addi	%x2, %x2, -56  #2567 pc 41496
	lw	%x1, 52(%x2) #2567 pc 41500
	lw	%x5, 4(%x2)  #2568 pc 41504
	addi	%x24, %x0, 8  #pc 41508
	add	%x24, %x24, %x5  #2568 pc 41512
	flw	%f1, 0(%x24)  #2568 pc 41516
	fsw	%f0, 48(%x2)  #2568 pc 41520
	fadd	%f0, %f1, %f30  #0 pc 41524
	sw	%x1, 60(%x2)  #2568 pc 41528
	addi	%x2, %x2, 64  #2568 pc 41532
	jal	%x1, fneg.2534  #2568 pc 41536
	addi	%x2, %x2, -64  #2568 pc 41540
	lw	%x1, 60(%x2) #2568 pc 41544
	fadd	%f3, %f0, %f30  #2568 pc 41548
	lw	%x5, 20(%x2)  #2569 pc 41552
	addi	%x6, %x5, 1  #2569 pc 41556
	lw	%x7, 4(%x2)  #2569 pc 41560
	add	%x24, %x0, %x7  #2569 pc 41564
	flw	%f1, 0(%x24)  #2569 pc 41568
	flw	%f0, 32(%x2)  #2569 pc 41572
	flw	%f2, 48(%x2)  #2569 pc 41576
	lw	%x9, 16(%x2)  #2569 pc 41580
	lw	%x22, 0(%x2)  #2569 pc 41584
	fsw	%f3, 56(%x2)  #2569 pc 41588
	addi	%x5, %x9, 0  #0 pc 41592
	sw	%x1, 68(%x2)  #2569 pc 41596
	lw	%x23, 0(%x22)  #2569 pc 41600
	addi	%x2, %x2, 72  #2569 pc 41604
	jalr	%x1, %x23, 0  #2569 pc 41608
	addi	%x2, %x2, -72  #2569 pc 41612
	lw	%x1, 68(%x2)  #2569 pc 41616
	lw	%x5, 16(%x2)  #2570 pc 41620
	addi	%x6, %x5, 1  #2570 pc 41624
	lw	%x7, 20(%x2)  #2570 pc 41628
	addi	%x9, %x7, 2  #2570 pc 41632
	lw	%x10, 4(%x2)  #2570 pc 41636
	addi	%x24, %x0, 4  #pc 41640
	add	%x24, %x24, %x10  #2570 pc 41644
	flw	%f2, 0(%x24)  #2570 pc 41648
	flw	%f0, 32(%x2)  #2570 pc 41652
	flw	%f1, 40(%x2)  #2570 pc 41656
	flw	%f3, 56(%x2)  #2570 pc 41660
	lw	%x22, 0(%x2)  #2570 pc 41664
	addi	%x5, %x6, 0  #0 pc 41668
	addi	%x6, %x9, 0  #0 pc 41672
	sw	%x1, 68(%x2)  #2570 pc 41676
	lw	%x23, 0(%x22)  #2570 pc 41680
	addi	%x2, %x2, 72  #2570 pc 41684
	jalr	%x1, %x23, 0  #2570 pc 41688
	addi	%x2, %x2, -72  #2570 pc 41692
	lw	%x1, 68(%x2)  #2570 pc 41696
	lw	%x5, 16(%x2)  #2571 pc 41700
	addi	%x6, %x5, 2  #2571 pc 41704
	lw	%x7, 20(%x2)  #2571 pc 41708
	addi	%x7, %x7, 3  #2571 pc 41712
	lw	%x9, 4(%x2)  #2571 pc 41716
	addi	%x24, %x0, 8  #pc 41720
	add	%x24, %x24, %x9  #2571 pc 41724
	flw	%f3, 0(%x24)  #2571 pc 41728
	flw	%f0, 32(%x2)  #2571 pc 41732
	flw	%f1, 40(%x2)  #2571 pc 41736
	flw	%f2, 48(%x2)  #2571 pc 41740
	lw	%x22, 0(%x2)  #2571 pc 41744
	addi	%x5, %x6, 0  #0 pc 41748
	addi	%x6, %x7, 0  #0 pc 41752
	sw	%x1, 68(%x2)  #2571 pc 41756
	lw	%x23, 0(%x22)  #2571 pc 41760
	addi	%x2, %x2, 72  #2571 pc 41764
	jalr	%x1, %x23, 0  #2571 pc 41768
	addi	%x2, %x2, -72  #2571 pc 41772
	lw	%x1, 68(%x2)  #2571 pc 41776
	lw	%x5, 16(%x2)  #2572 pc 41780
	addi	%x5, %x5, 3  #2572 pc 41784
	lw	%x6, 12(%x2)  #2572 pc 41788
	add	%x24, %x0, %x6  #2572 pc 41792
	sw	%x5, 0(%x24)  #2572 pc 41796
	ret #pc 41800
	nop #pc 41804
setup_surface_reflection.3108:  #pc 41808
	addi	%x24, %x0, 12  #pc 41808
	add	%x24, %x24, %x22  #0 pc 41812
	lw	%x7, 0(%x24)  #0 pc 41816
	addi	%x24, %x0, 8  #pc 41820
	add	%x24, %x24, %x22  #0 pc 41824
	lw	%x9, 0(%x24)  #0 pc 41828
	addi	%x24, %x0, 4  #pc 41832
	add	%x24, %x24, %x22  #0 pc 41836
	lw	%x10, 0(%x24)  #0 pc 41840
	addi	%x11, %x0, 4  #0 pc 41844
	sw	%x10, 0(%x2)  #2577 pc 41848
	sw	%x9, 4(%x2)  #2577 pc 41852
	sw	%x6, 8(%x2)  #2577 pc 41856
	sw	%x7, 12(%x2)  #2577 pc 41860
	addi	%x6, %x11, 0  #0 pc 41864
	sw	%x1, 20(%x2)  #2577 pc 41868
	addi	%x2, %x2, 24  #2577 pc 41872
	jal	%x1, mul.2562  #2577 pc 41876
	addi	%x2, %x2, -24  #2577 pc 41880
	lw	%x1, 20(%x2) #2577 pc 41884
	addi	%x5, %x5, 1  #2577 pc 41888
	lw	%x6, 12(%x2)  #2578 pc 41892
	add	%x24, %x0, %x6  #2578 pc 41896
	lw	%x7, 0(%x24)  #2578 pc 41900
	fmv	%f0, l.6305  #0 pc 41904
	lw	%x9, 8(%x2)  #2579 pc 41908
	sw	%x5, 16(%x2)  #2579 pc 41912
	sw	%x7, 20(%x2)  #2579 pc 41916
	fsw	%f0, 24(%x2)  #2579 pc 41920
	addi	%x5, %x9, 0  #0 pc 41924
	sw	%x1, 36(%x2)  #2579 pc 41928
	addi	%x2, %x2, 40  #2579 pc 41932
	jal	%x1, o_diffuse.2706  #2579 pc 41936
	addi	%x2, %x2, -40  #2579 pc 41940
	lw	%x1, 36(%x2) #2579 pc 41944
	flw	%f1, 24(%x2)  #2579 pc 41948
	fsub	%f0, %f1, %f0  #2579 pc 41952
	lw	%x5, 8(%x2)  #2580 pc 41956
	fsw	%f0, 32(%x2)  #2580 pc 41960
	sw	%x1, 44(%x2)  #2580 pc 41964
	addi	%x2, %x2, 48  #2580 pc 41968
	jal	%x1, o_param_abc.2698  #2580 pc 41972
	addi	%x2, %x2, -48  #2580 pc 41976
	lw	%x1, 44(%x2) #2580 pc 41980
	addi	%x6, %x5, 0  #2580 pc 41984
	lw	%x5, 4(%x2)  #2580 pc 41988
	sw	%x1, 44(%x2)  #2580 pc 41992
	addi	%x2, %x2, 48  #2580 pc 41996
	jal	%x1, veciprod.2660  #2580 pc 42000
	addi	%x2, %x2, -48  #2580 pc 42004
	lw	%x1, 44(%x2) #2580 pc 42008
	fmv	%f1, l.6476  #0 pc 42012
	lw	%x5, 8(%x2)  #2583 pc 42016
	fsw	%f0, 40(%x2)  #2583 pc 42020
	fsw	%f1, 48(%x2)  #2583 pc 42024
	sw	%x1, 60(%x2)  #2583 pc 42028
	addi	%x2, %x2, 64  #2583 pc 42032
	jal	%x1, o_param_a.2692  #2583 pc 42036
	addi	%x2, %x2, -64  #2583 pc 42040
	lw	%x1, 60(%x2) #2583 pc 42044
	flw	%f1, 48(%x2)  #2583 pc 42048
	fmul	%f0, %f1, %f0  #2583 pc 42052
	flw	%f1, 40(%x2)  #2583 pc 42056
	fmul	%f0, %f0, %f1  #2583 pc 42060
	lw	%x5, 4(%x2)  #2583 pc 42064
	add	%x24, %x0, %x5  #2583 pc 42068
	flw	%f2, 0(%x24)  #2583 pc 42072
	fsub	%f0, %f0, %f2  #2583 pc 42076
	fmv	%f2, l.6476  #0 pc 42080
	lw	%x6, 8(%x2)  #2584 pc 42084
	fsw	%f0, 56(%x2)  #2584 pc 42088
	fsw	%f2, 64(%x2)  #2584 pc 42092
	addi	%x5, %x6, 0  #0 pc 42096
	sw	%x1, 76(%x2)  #2584 pc 42100
	addi	%x2, %x2, 80  #2584 pc 42104
	jal	%x1, o_param_b.2694  #2584 pc 42108
	addi	%x2, %x2, -80  #2584 pc 42112
	lw	%x1, 76(%x2) #2584 pc 42116
	flw	%f1, 64(%x2)  #2584 pc 42120
	fmul	%f0, %f1, %f0  #2584 pc 42124
	flw	%f1, 40(%x2)  #2584 pc 42128
	fmul	%f0, %f0, %f1  #2584 pc 42132
	lw	%x5, 4(%x2)  #2584 pc 42136
	addi	%x24, %x0, 4  #pc 42140
	add	%x24, %x24, %x5  #2584 pc 42144
	flw	%f2, 0(%x24)  #2584 pc 42148
	fsub	%f0, %f0, %f2  #2584 pc 42152
	fmv	%f2, l.6476  #0 pc 42156
	lw	%x6, 8(%x2)  #2585 pc 42160
	fsw	%f0, 72(%x2)  #2585 pc 42164
	fsw	%f2, 80(%x2)  #2585 pc 42168
	addi	%x5, %x6, 0  #0 pc 42172
	sw	%x1, 92(%x2)  #2585 pc 42176
	addi	%x2, %x2, 96  #2585 pc 42180
	jal	%x1, o_param_c.2696  #2585 pc 42184
	addi	%x2, %x2, -96  #2585 pc 42188
	lw	%x1, 92(%x2) #2585 pc 42192
	flw	%f1, 80(%x2)  #2585 pc 42196
	fmul	%f0, %f1, %f0  #2585 pc 42200
	flw	%f1, 40(%x2)  #2585 pc 42204
	fmul	%f0, %f0, %f1  #2585 pc 42208
	lw	%x5, 4(%x2)  #2585 pc 42212
	addi	%x24, %x0, 8  #pc 42216
	add	%x24, %x24, %x5  #2585 pc 42220
	flw	%f1, 0(%x24)  #2585 pc 42224
	fsub	%f3, %f0, %f1  #2585 pc 42228
	flw	%f0, 32(%x2)  #2582 pc 42232
	flw	%f1, 56(%x2)  #2582 pc 42236
	flw	%f2, 72(%x2)  #2582 pc 42240
	lw	%x5, 20(%x2)  #2582 pc 42244
	lw	%x6, 16(%x2)  #2582 pc 42248
	lw	%x22, 0(%x2)  #2582 pc 42252
	sw	%x1, 92(%x2)  #2582 pc 42256
	lw	%x23, 0(%x22)  #2582 pc 42260
	addi	%x2, %x2, 96  #2582 pc 42264
	jalr	%x1, %x23, 0  #2582 pc 42268
	addi	%x2, %x2, -96  #2582 pc 42272
	lw	%x1, 92(%x2)  #2582 pc 42276
	lw	%x5, 20(%x2)  #2586 pc 42280
	addi	%x5, %x5, 1  #2586 pc 42284
	lw	%x6, 12(%x2)  #2586 pc 42288
	add	%x24, %x0, %x6  #2586 pc 42292
	sw	%x5, 0(%x24)  #2586 pc 42296
	ret #pc 42300
	nop #pc 42304
setup_reflections.3111:  #pc 42308
	addi	%x24, %x0, 12  #pc 42308
	add	%x24, %x24, %x22  #0 pc 42312
	lw	%x6, 0(%x24)  #0 pc 42316
	addi	%x24, %x0, 8  #pc 42320
	add	%x24, %x24, %x22  #0 pc 42324
	lw	%x7, 0(%x24)  #0 pc 42328
	addi	%x24, %x0, 4  #pc 42332
	add	%x24, %x24, %x22  #0 pc 42336
	lw	%x9, 0(%x24)  #0 pc 42340
	bge	%x5, %x0, 12  #2592 pc 42344
	j	bge_else.9608 #pc 42348
	nop #pc 42352
	slli	%x10, %x5, 2  #2593 pc 42356
	add	%x24, %x10, %x9  #2593 pc 42360
	lw	%x9, 0(%x24)  #2593 pc 42364
	sw	%x6, 0(%x2)  #2594 pc 42368
	sw	%x5, 4(%x2)  #2594 pc 42372
	sw	%x7, 8(%x2)  #2594 pc 42376
	sw	%x9, 12(%x2)  #2594 pc 42380
	addi	%x5, %x9, 0  #0 pc 42384
	sw	%x1, 20(%x2)  #2594 pc 42388
	addi	%x2, %x2, 24  #2594 pc 42392
	jal	%x1, o_reflectiontype.2686  #2594 pc 42396
	addi	%x2, %x2, -24  #2594 pc 42400
	lw	%x1, 20(%x2) #2594 pc 42404
	addi	%x24, %x0, 2  #pc 42408
	beq	%x5, %x24, 12  #2594 pc 42412
	j	be_else.9609 #pc 42416
	nop #pc 42420
	lw	%x5, 12(%x2)  #2595 pc 42424
	sw	%x1, 20(%x2)  #2595 pc 42428
	addi	%x2, %x2, 24  #2595 pc 42432
	jal	%x1, o_diffuse.2706  #2595 pc 42436
	addi	%x2, %x2, -24  #2595 pc 42440
	lw	%x1, 20(%x2) #2595 pc 42444
	fmv	%f1, l.6305  #0 pc 42448
	sw	%x1, 20(%x2)  #2595 pc 42452
	addi	%x2, %x2, 24  #2595 pc 42456
	jal	%x1, fless.2540  #2595 pc 42460
	addi	%x2, %x2, -24  #2595 pc 42464
	lw	%x1, 20(%x2) #2595 pc 42468
	beq	%x5, %x0, 12  #2595 pc 42472
	j	be_else.9610 #pc 42476
	nop #pc 42480
	ret #pc 42484
	nop #pc 42488
be_else.9610: #pc 42488
	lw	%x5, 12(%x2)  #2596 pc 42492
	sw	%x1, 20(%x2)  #2596 pc 42496
	addi	%x2, %x2, 24  #2596 pc 42500
	jal	%x1, o_form.2684  #2596 pc 42504
	addi	%x2, %x2, -24  #2596 pc 42508
	lw	%x1, 20(%x2) #2596 pc 42512
	addi	%x24, %x0, 1  #pc 42516
	beq	%x5, %x24, 12  #2598 pc 42520
	j	be_else.9612 #pc 42524
	nop #pc 42528
	lw	%x5, 4(%x2)  #2599 pc 42532
	lw	%x6, 12(%x2)  #2599 pc 42536
	lw	%x22, 8(%x2)  #2599 pc 42540
	lw	%x23, 0(%x22)  #2599 pc 42544
	jalr	%x0, %x23, 0  #2599 pc 42548
	nop #pc 42552
be_else.9612: #pc 42552
	addi	%x24, %x0, 2  #pc 42556
	beq	%x5, %x24, 12  #2600 pc 42560
	j	be_else.9613 #pc 42564
	nop #pc 42568
	lw	%x5, 4(%x2)  #2601 pc 42572
	lw	%x6, 12(%x2)  #2601 pc 42576
	lw	%x22, 0(%x2)  #2601 pc 42580
	lw	%x23, 0(%x22)  #2601 pc 42584
	jalr	%x0, %x23, 0  #2601 pc 42588
	nop #pc 42592
be_else.9613: #pc 42592
	ret #pc 42596
	nop #pc 42600
be_else.9609: #pc 42600
	ret #pc 42604
	nop #pc 42608
bge_else.9608: #pc 42608
	ret #pc 42612
	nop #pc 42616
rt.3113:  #pc 42620
	addi	%x24, %x0, 56  #pc 42620
	add	%x24, %x24, %x22  #0 pc 42624
	lw	%x9, 0(%x24)  #0 pc 42628
	addi	%x24, %x0, 52  #pc 42632
	add	%x24, %x24, %x22  #0 pc 42636
	lw	%x10, 0(%x24)  #0 pc 42640
	addi	%x24, %x0, 48  #pc 42644
	add	%x24, %x24, %x22  #0 pc 42648
	lw	%x11, 0(%x24)  #0 pc 42652
	addi	%x24, %x0, 44  #pc 42656
	add	%x24, %x24, %x22  #0 pc 42660
	lw	%x12, 0(%x24)  #0 pc 42664
	addi	%x24, %x0, 40  #pc 42668
	add	%x24, %x24, %x22  #0 pc 42672
	lw	%x13, 0(%x24)  #0 pc 42676
	addi	%x24, %x0, 36  #pc 42680
	add	%x24, %x24, %x22  #0 pc 42684
	lw	%x14, 0(%x24)  #0 pc 42688
	addi	%x24, %x0, 32  #pc 42692
	add	%x24, %x24, %x22  #0 pc 42696
	lw	%x15, 0(%x24)  #0 pc 42700
	addi	%x24, %x0, 28  #pc 42704
	add	%x24, %x24, %x22  #0 pc 42708
	lw	%x16, 0(%x24)  #0 pc 42712
	addi	%x24, %x0, 24  #pc 42716
	add	%x24, %x24, %x22  #0 pc 42720
	lw	%x17, 0(%x24)  #0 pc 42724
	addi	%x24, %x0, 20  #pc 42728
	add	%x24, %x24, %x22  #0 pc 42732
	lw	%x18, 0(%x24)  #0 pc 42736
	addi	%x24, %x0, 16  #pc 42740
	add	%x24, %x24, %x22  #0 pc 42744
	lw	%x19, 0(%x24)  #0 pc 42748
	addi	%x24, %x0, 12  #pc 42752
	add	%x24, %x24, %x22  #0 pc 42756
	lw	%x20, 0(%x24)  #0 pc 42760
	addi	%x24, %x0, 8  #pc 42764
	add	%x24, %x24, %x22  #0 pc 42768
	lw	%x21, 0(%x24)  #0 pc 42772
	addi	%x24, %x0, 4  #pc 42776
	add	%x24, %x24, %x22  #0 pc 42780
	lw	%x22, 0(%x24)  #0 pc 42784
	add	%x24, %x0, %x20  #2614 pc 42788
	sw	%x5, 0(%x24)  #2614 pc 42792
	addi	%x24, %x0, 4  #pc 42796
	add	%x24, %x24, %x20  #2615 pc 42800
	sw	%x6, 0(%x24)  #2615 pc 42804
	addi	%x20, %x0, 2  #0 pc 42808
	sw	%x13, 0(%x2)  #2616 pc 42812
	sw	%x15, 4(%x2)  #2616 pc 42816
	sw	%x10, 8(%x2)  #2616 pc 42820
	sw	%x16, 12(%x2)  #2616 pc 42824
	sw	%x11, 16(%x2)  #2616 pc 42828
	sw	%x18, 20(%x2)  #2616 pc 42832
	sw	%x17, 24(%x2)  #2616 pc 42836
	sw	%x19, 28(%x2)  #2616 pc 42840
	sw	%x7, 32(%x2)  #2616 pc 42844
	sw	%x9, 36(%x2)  #2616 pc 42848
	sw	%x14, 40(%x2)  #2616 pc 42852
	sw	%x22, 44(%x2)  #2616 pc 42856
	sw	%x12, 48(%x2)  #2616 pc 42860
	sw	%x5, 52(%x2)  #2616 pc 42864
	sw	%x6, 56(%x2)  #2616 pc 42868
	sw	%x21, 60(%x2)  #2616 pc 42872
	addi	%x6, %x20, 0  #0 pc 42876
	sw	%x1, 68(%x2)  #2616 pc 42880
	addi	%x2, %x2, 72  #2616 pc 42884
	jal	%x1, div.2570  #2616 pc 42888
	addi	%x2, %x2, -72  #2616 pc 42892
	lw	%x1, 68(%x2) #2616 pc 42896
	lw	%x6, 60(%x2)  #2616 pc 42900
	add	%x24, %x0, %x6  #2616 pc 42904
	sw	%x5, 0(%x24)  #2616 pc 42908
	addi	%x5, %x0, 2  #0 pc 42912
	lw	%x7, 56(%x2)  #2617 pc 42916
	addi	%x6, %x5, 0  #0 pc 42920
	addi	%x5, %x7, 0  #0 pc 42924
	sw	%x1, 68(%x2)  #2617 pc 42928
	addi	%x2, %x2, 72  #2617 pc 42932
	jal	%x1, div.2570  #2617 pc 42936
	addi	%x2, %x2, -72  #2617 pc 42940
	lw	%x1, 68(%x2) #2617 pc 42944
	lw	%x6, 60(%x2)  #2617 pc 42948
	addi	%x24, %x0, 4  #pc 42952
	add	%x24, %x24, %x6  #2617 pc 42956
	sw	%x5, 0(%x24)  #2617 pc 42960
	fmv	%f0, l.7053  #0 pc 42964
	lw	%x5, 52(%x2)  #2618 pc 42968
	fsw	%f0, 64(%x2)  #2618 pc 42972
	sw	%x1, 76(%x2)  #2618 pc 42976
	addi	%x2, %x2, 80  #2618 pc 42980
	jal	%x1, float_of_int.2553  #2618 pc 42984
	addi	%x2, %x2, -80  #2618 pc 42988
	lw	%x1, 76(%x2) #2618 pc 42992
	flw	%f1, 64(%x2)  #2618 pc 42996
	fdiv	%f0, %f1, %f0  #2618 pc 43000
	lw	%x5, 48(%x2)  #2618 pc 43004
	add	%x24, %x0, %x5  #2618 pc 43008
	fsw	%f0, 0(%x24) #2618 pc 43012
	lw	%x22, 44(%x2)  #2619 pc 43016
	addi	%x5, %x0, 0  #0 pc 43020
	sw	%x1, 76(%x2)  #2619 pc 43024
	lw	%x23, 0(%x22)  #2619 pc 43028
	addi	%x2, %x2, 80  #2619 pc 43032
	jalr	%x1, %x23, 0  #2619 pc 43036
	addi	%x2, %x2, -80  #2619 pc 43040
	lw	%x1, 76(%x2)  #2619 pc 43044
	lw	%x22, 44(%x2)  #2620 pc 43048
	sw	%x5, 72(%x2)  #2620 pc 43052
	addi	%x5, %x0, 0  #0 pc 43056
	sw	%x1, 76(%x2)  #2620 pc 43060
	lw	%x23, 0(%x22)  #2620 pc 43064
	addi	%x2, %x2, 80  #2620 pc 43068
	jalr	%x1, %x23, 0  #2620 pc 43072
	addi	%x2, %x2, -80  #2620 pc 43076
	lw	%x1, 76(%x2)  #2620 pc 43080
	lw	%x22, 44(%x2)  #2621 pc 43084
	sw	%x5, 76(%x2)  #2621 pc 43088
	addi	%x5, %x0, 0  #0 pc 43092
	sw	%x1, 84(%x2)  #2621 pc 43096
	lw	%x23, 0(%x22)  #2621 pc 43100
	addi	%x2, %x2, 88  #2621 pc 43104
	jalr	%x1, %x23, 0  #2621 pc 43108
	addi	%x2, %x2, -88  #2621 pc 43112
	lw	%x1, 84(%x2)  #2621 pc 43116
	lw	%x22, 40(%x2)  #2622 pc 43120
	sw	%x5, 80(%x2)  #2622 pc 43124
	addi	%x5, %x0, 0  #0 pc 43128
	sw	%x1, 84(%x2)  #2622 pc 43132
	lw	%x23, 0(%x22)  #2622 pc 43136
	addi	%x2, %x2, 88  #2622 pc 43140
	jalr	%x1, %x23, 0  #2622 pc 43144
	addi	%x2, %x2, -88  #2622 pc 43148
	lw	%x1, 84(%x2)  #2622 pc 43152
	lw	%x5, 32(%x2)  #2623 pc 43156
	lw	%x22, 36(%x2)  #2623 pc 43160
	sw	%x1, 84(%x2)  #2623 pc 43164
	lw	%x23, 0(%x22)  #2623 pc 43168
	addi	%x2, %x2, 88  #2623 pc 43172
	jalr	%x1, %x23, 0  #2623 pc 43176
	addi	%x2, %x2, -88  #2623 pc 43180
	lw	%x1, 84(%x2)  #2623 pc 43184
	lw	%x22, 28(%x2)  #2624 pc 43188
	addi	%x5, %x0, 0  #0 pc 43192
	sw	%x1, 84(%x2)  #2624 pc 43196
	lw	%x23, 0(%x22)  #2624 pc 43200
	addi	%x2, %x2, 88  #2624 pc 43204
	jalr	%x1, %x23, 0  #2624 pc 43208
	addi	%x2, %x2, -88  #2624 pc 43212
	lw	%x1, 84(%x2)  #2624 pc 43216
	lw	%x5, 24(%x2)  #2625 pc 43220
	sw	%x1, 84(%x2)  #2625 pc 43224
	addi	%x2, %x2, 88  #2625 pc 43228
	jal	%x1, d_vec.2743  #2625 pc 43232
	addi	%x2, %x2, -88  #2625 pc 43236
	lw	%x1, 84(%x2) #2625 pc 43240
	lw	%x6, 20(%x2)  #2625 pc 43244
	sw	%x1, 84(%x2)  #2625 pc 43248
	addi	%x2, %x2, 88  #2625 pc 43252
	jal	%x1, veccpy.2654  #2625 pc 43256
	addi	%x2, %x2, -88  #2625 pc 43260
	lw	%x1, 84(%x2) #2625 pc 43264
	lw	%x5, 24(%x2)  #2626 pc 43268
	lw	%x22, 16(%x2)  #2626 pc 43272
	sw	%x1, 84(%x2)  #2626 pc 43276
	lw	%x23, 0(%x22)  #2626 pc 43280
	addi	%x2, %x2, 88  #2626 pc 43284
	jalr	%x1, %x23, 0  #2626 pc 43288
	addi	%x2, %x2, -88  #2626 pc 43292
	lw	%x1, 84(%x2)  #2626 pc 43296
	lw	%x5, 12(%x2)  #2627 pc 43300
	add	%x24, %x0, %x5  #2627 pc 43304
	lw	%x5, 0(%x24)  #2627 pc 43308
	addi	%x5, %x5, -1  #2627 pc 43312
	lw	%x22, 8(%x2)  #2627 pc 43316
	sw	%x1, 84(%x2)  #2627 pc 43320
	lw	%x23, 0(%x22)  #2627 pc 43324
	addi	%x2, %x2, 88  #2627 pc 43328
	jalr	%x1, %x23, 0  #2627 pc 43332
	addi	%x2, %x2, -88  #2627 pc 43336
	lw	%x1, 84(%x2)  #2627 pc 43340
	addi	%x6, %x0, 0  #0 pc 43344
	addi	%x7, %x0, 0  #0 pc 43348
	lw	%x5, 76(%x2)  #2628 pc 43352
	lw	%x22, 4(%x2)  #2628 pc 43356
	sw	%x1, 84(%x2)  #2628 pc 43360
	lw	%x23, 0(%x22)  #2628 pc 43364
	addi	%x2, %x2, 88  #2628 pc 43368
	jalr	%x1, %x23, 0  #2628 pc 43372
	addi	%x2, %x2, -88  #2628 pc 43376
	lw	%x1, 84(%x2)  #2628 pc 43380
	addi	%x5, %x0, 0  #0 pc 43384
	addi	%x10, %x0, 2  #0 pc 43388
	lw	%x6, 72(%x2)  #2629 pc 43392
	lw	%x7, 76(%x2)  #2629 pc 43396
	lw	%x9, 80(%x2)  #2629 pc 43400
	lw	%x11, 32(%x2)  #2629 pc 43404
	lw	%x22, 0(%x2)  #2629 pc 43408
	lw	%x23, 0(%x22)  #2629 pc 43412
	jalr	%x0, %x23, 0  #2629 pc 43416
	nop #pc 43420
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 1  #0 pc 43424
	addi	%x6, %x0, 0  #0 pc 43428
	sw	%x1, 12(%x2)  #208 pc 43432
	addi	%x2, %x2, 16  #208 pc 43436
	jal	%x1, create_array.2593  #208 pc 43440
	addi	%x2, %x2, -16  #208 pc 43444
	lw	%x1, 12(%x2) #208 pc 43448
	addi	%x6, %x0, 0  #0 pc 43452
	fmv	%f0, l.6293  #0 pc 43456
	sw	%x5, 8(%x2)  #213 pc 43460
	addi	%x5, %x6, 0  #0 pc 43464
	sw	%x1, 12(%x2)  #213 pc 43468
	addi	%x2, %x2, 16  #213 pc 43472
	jal	%x1, create_float_array.2600  #213 pc 43476
	addi	%x2, %x2, -16  #213 pc 43480
	lw	%x1, 12(%x2) #213 pc 43484
	addi	%x6, %x0, 60  #0 pc 43488
	addi	%x7, %x0, 0  #0 pc 43492
	addi	%x9, %x3, 0  #214 pc 43496
	addi	%x3, %x3, 48  #214 pc 43500
	addi	%x24, %x0, 40  #pc 43504
	add	%x24, %x24, %x9  #214 pc 43508
	sw	%x5, 0(%x24)  #214 pc 43512
	addi	%x24, %x0, 36  #pc 43516
	add	%x24, %x24, %x9  #214 pc 43520
	sw	%x5, 0(%x24)  #214 pc 43524
	addi	%x24, %x0, 32  #pc 43528
	add	%x24, %x24, %x9  #214 pc 43532
	sw	%x5, 0(%x24)  #214 pc 43536
	addi	%x24, %x0, 28  #pc 43540
	add	%x24, %x24, %x9  #214 pc 43544
	sw	%x5, 0(%x24)  #214 pc 43548
	addi	%x24, %x0, 24  #pc 43552
	add	%x24, %x24, %x9  #214 pc 43556
	sw	%x7, 0(%x24)  #214 pc 43560
	addi	%x24, %x0, 20  #pc 43564
	add	%x24, %x24, %x9  #214 pc 43568
	sw	%x5, 0(%x24)  #214 pc 43572
	addi	%x24, %x0, 16  #pc 43576
	add	%x24, %x24, %x9  #214 pc 43580
	sw	%x5, 0(%x24)  #214 pc 43584
	addi	%x24, %x0, 12  #pc 43588
	add	%x24, %x24, %x9  #214 pc 43592
	sw	%x7, 0(%x24)  #214 pc 43596
	addi	%x24, %x0, 8  #pc 43600
	add	%x24, %x24, %x9  #214 pc 43604
	sw	%x7, 0(%x24)  #214 pc 43608
	addi	%x24, %x0, 4  #pc 43612
	add	%x24, %x24, %x9  #214 pc 43616
	sw	%x7, 0(%x24)  #214 pc 43620
	add	%x24, %x0, %x9  #214 pc 43624
	sw	%x7, 0(%x24)  #214 pc 43628
	addi	%x5, %x9, 0  #214 pc 43632
	addi	%x23, %x6, 0  #0 pc 43636
	addi	%x6, %x5, 0  #0 pc 43640
	addi	%x5, %x23, 0  #0 pc 43644
	sw	%x1, 12(%x2)  #214 pc 43648
	addi	%x2, %x2, 16  #214 pc 43652
	jal	%x1, create_array.2593  #214 pc 43656
	addi	%x2, %x2, -16  #214 pc 43660
	lw	%x1, 12(%x2) #214 pc 43664
	addi	%x6, %x0, 3  #0 pc 43668
	fmv	%f0, l.6293  #0 pc 43672
	sw	%x5, 12(%x2)  #218 pc 43676
	addi	%x5, %x6, 0  #0 pc 43680
	sw	%x1, 20(%x2)  #218 pc 43684
	addi	%x2, %x2, 24  #218 pc 43688
	jal	%x1, create_float_array.2600  #218 pc 43692
	addi	%x2, %x2, -24  #218 pc 43696
	lw	%x1, 20(%x2) #218 pc 43700
	addi	%x6, %x0, 3  #0 pc 43704
	fmv	%f0, l.6293  #0 pc 43708
	sw	%x5, 16(%x2)  #221 pc 43712
	addi	%x5, %x6, 0  #0 pc 43716
	sw	%x1, 20(%x2)  #221 pc 43720
	addi	%x2, %x2, 24  #221 pc 43724
	jal	%x1, create_float_array.2600  #221 pc 43728
	addi	%x2, %x2, -24  #221 pc 43732
	lw	%x1, 20(%x2) #221 pc 43736
	addi	%x6, %x0, 3  #0 pc 43740
	fmv	%f0, l.6293  #0 pc 43744
	sw	%x5, 20(%x2)  #224 pc 43748
	addi	%x5, %x6, 0  #0 pc 43752
	sw	%x1, 28(%x2)  #224 pc 43756
	addi	%x2, %x2, 32  #224 pc 43760
	jal	%x1, create_float_array.2600  #224 pc 43764
	addi	%x2, %x2, -32  #224 pc 43768
	lw	%x1, 28(%x2) #224 pc 43772
	addi	%x6, %x0, 1  #0 pc 43776
	fmv	%f0, l.6807  #0 pc 43780
	sw	%x5, 24(%x2)  #227 pc 43784
	addi	%x5, %x6, 0  #0 pc 43788
	sw	%x1, 28(%x2)  #227 pc 43792
	addi	%x2, %x2, 32  #227 pc 43796
	jal	%x1, create_float_array.2600  #227 pc 43800
	addi	%x2, %x2, -32  #227 pc 43804
	lw	%x1, 28(%x2) #227 pc 43808
	addi	%x6, %x0, 50  #0 pc 43812
	addi	%x7, %x0, 1  #0 pc 43816
	addi	%x9, %x0, -1  #0 pc 43820
	sw	%x5, 28(%x2)  #230 pc 43824
	sw	%x6, 32(%x2)  #230 pc 43828
	addi	%x6, %x9, 0  #0 pc 43832
	addi	%x5, %x7, 0  #0 pc 43836
	sw	%x1, 36(%x2)  #230 pc 43840
	addi	%x2, %x2, 40  #230 pc 43844
	jal	%x1, create_array.2593  #230 pc 43848
	addi	%x2, %x2, -40  #230 pc 43852
	lw	%x1, 36(%x2) #230 pc 43856
	addi	%x6, %x5, 0  #230 pc 43860
	lw	%x5, 32(%x2)  #230 pc 43864
	sw	%x1, 36(%x2)  #230 pc 43868
	addi	%x2, %x2, 40  #230 pc 43872
	jal	%x1, create_array.2593  #230 pc 43876
	addi	%x2, %x2, -40  #230 pc 43880
	lw	%x1, 36(%x2) #230 pc 43884
	addi	%x6, %x0, 1  #0 pc 43888
	add	%x24, %x0, %x5  #233 pc 43892
	lw	%x7, 0(%x24)  #233 pc 43896
	sw	%x5, 36(%x2)  #233 pc 43900
	sw	%x6, 40(%x2)  #233 pc 43904
	addi	%x5, %x6, 0  #0 pc 43908
	addi	%x6, %x7, 0  #0 pc 43912
	sw	%x1, 44(%x2)  #233 pc 43916
	addi	%x2, %x2, 48  #233 pc 43920
	jal	%x1, create_array.2593  #233 pc 43924
	addi	%x2, %x2, -48  #233 pc 43928
	lw	%x1, 44(%x2) #233 pc 43932
	addi	%x6, %x5, 0  #233 pc 43936
	lw	%x5, 40(%x2)  #233 pc 43940
	sw	%x1, 44(%x2)  #233 pc 43944
	addi	%x2, %x2, 48  #233 pc 43948
	jal	%x1, create_array.2593  #233 pc 43952
	addi	%x2, %x2, -48  #233 pc 43956
	lw	%x1, 44(%x2) #233 pc 43960
	addi	%x6, %x0, 1  #0 pc 43964
	fmv	%f0, l.6293  #0 pc 43968
	sw	%x5, 44(%x2)  #238 pc 43972
	addi	%x5, %x6, 0  #0 pc 43976
	sw	%x1, 52(%x2)  #238 pc 43980
	addi	%x2, %x2, 56  #238 pc 43984
	jal	%x1, create_float_array.2600  #238 pc 43988
	addi	%x2, %x2, -56  #238 pc 43992
	lw	%x1, 52(%x2) #238 pc 43996
	addi	%x6, %x0, 1  #0 pc 44000
	addi	%x7, %x0, 0  #0 pc 44004
	sw	%x5, 48(%x2)  #241 pc 44008
	addi	%x5, %x6, 0  #0 pc 44012
	addi	%x6, %x7, 0  #0 pc 44016
	sw	%x1, 52(%x2)  #241 pc 44020
	addi	%x2, %x2, 56  #241 pc 44024
	jal	%x1, create_array.2593  #241 pc 44028
	addi	%x2, %x2, -56  #241 pc 44032
	lw	%x1, 52(%x2) #241 pc 44036
	addi	%x6, %x0, 1  #0 pc 44040
	fmv	%f0, l.6734  #0 pc 44044
	sw	%x5, 52(%x2)  #244 pc 44048
	addi	%x5, %x6, 0  #0 pc 44052
	sw	%x1, 60(%x2)  #244 pc 44056
	addi	%x2, %x2, 64  #244 pc 44060
	jal	%x1, create_float_array.2600  #244 pc 44064
	addi	%x2, %x2, -64  #244 pc 44068
	lw	%x1, 60(%x2) #244 pc 44072
	addi	%x6, %x0, 3  #0 pc 44076
	fmv	%f0, l.6293  #0 pc 44080
	sw	%x5, 56(%x2)  #247 pc 44084
	addi	%x5, %x6, 0  #0 pc 44088
	sw	%x1, 60(%x2)  #247 pc 44092
	addi	%x2, %x2, 64  #247 pc 44096
	jal	%x1, create_float_array.2600  #247 pc 44100
	addi	%x2, %x2, -64  #247 pc 44104
	lw	%x1, 60(%x2) #247 pc 44108
	addi	%x6, %x0, 1  #0 pc 44112
	addi	%x7, %x0, 0  #0 pc 44116
	sw	%x5, 60(%x2)  #250 pc 44120
	addi	%x5, %x6, 0  #0 pc 44124
	addi	%x6, %x7, 0  #0 pc 44128
	sw	%x1, 68(%x2)  #250 pc 44132
	addi	%x2, %x2, 72  #250 pc 44136
	jal	%x1, create_array.2593  #250 pc 44140
	addi	%x2, %x2, -72  #250 pc 44144
	lw	%x1, 68(%x2) #250 pc 44148
	addi	%x6, %x0, 3  #0 pc 44152
	fmv	%f0, l.6293  #0 pc 44156
	sw	%x5, 64(%x2)  #253 pc 44160
	addi	%x5, %x6, 0  #0 pc 44164
	sw	%x1, 68(%x2)  #253 pc 44168
	addi	%x2, %x2, 72  #253 pc 44172
	jal	%x1, create_float_array.2600  #253 pc 44176
	addi	%x2, %x2, -72  #253 pc 44180
	lw	%x1, 68(%x2) #253 pc 44184
	addi	%x6, %x0, 3  #0 pc 44188
	fmv	%f0, l.6293  #0 pc 44192
	sw	%x5, 68(%x2)  #256 pc 44196
	addi	%x5, %x6, 0  #0 pc 44200
	sw	%x1, 76(%x2)  #256 pc 44204
	addi	%x2, %x2, 80  #256 pc 44208
	jal	%x1, create_float_array.2600  #256 pc 44212
	addi	%x2, %x2, -80  #256 pc 44216
	lw	%x1, 76(%x2) #256 pc 44220
	addi	%x6, %x0, 3  #0 pc 44224
	fmv	%f0, l.6293  #0 pc 44228
	sw	%x5, 72(%x2)  #260 pc 44232
	addi	%x5, %x6, 0  #0 pc 44236
	sw	%x1, 76(%x2)  #260 pc 44240
	addi	%x2, %x2, 80  #260 pc 44244
	jal	%x1, create_float_array.2600  #260 pc 44248
	addi	%x2, %x2, -80  #260 pc 44252
	lw	%x1, 76(%x2) #260 pc 44256
	addi	%x6, %x0, 3  #0 pc 44260
	fmv	%f0, l.6293  #0 pc 44264
	sw	%x5, 76(%x2)  #263 pc 44268
	addi	%x5, %x6, 0  #0 pc 44272
	sw	%x1, 84(%x2)  #263 pc 44276
	addi	%x2, %x2, 88  #263 pc 44280
	jal	%x1, create_float_array.2600  #263 pc 44284
	addi	%x2, %x2, -88  #263 pc 44288
	lw	%x1, 84(%x2) #263 pc 44292
	addi	%x6, %x0, 2  #0 pc 44296
	addi	%x7, %x0, 0  #0 pc 44300
	sw	%x5, 80(%x2)  #267 pc 44304
	addi	%x5, %x6, 0  #0 pc 44308
	addi	%x6, %x7, 0  #0 pc 44312
	sw	%x1, 84(%x2)  #267 pc 44316
	addi	%x2, %x2, 88  #267 pc 44320
	jal	%x1, create_array.2593  #267 pc 44324
	addi	%x2, %x2, -88  #267 pc 44328
	lw	%x1, 84(%x2) #267 pc 44332
	addi	%x6, %x0, 2  #0 pc 44336
	addi	%x7, %x0, 0  #0 pc 44340
	sw	%x5, 84(%x2)  #270 pc 44344
	addi	%x5, %x6, 0  #0 pc 44348
	addi	%x6, %x7, 0  #0 pc 44352
	sw	%x1, 92(%x2)  #270 pc 44356
	addi	%x2, %x2, 96  #270 pc 44360
	jal	%x1, create_array.2593  #270 pc 44364
	addi	%x2, %x2, -96  #270 pc 44368
	lw	%x1, 92(%x2) #270 pc 44372
	addi	%x6, %x0, 1  #0 pc 44376
	fmv	%f0, l.6293  #0 pc 44380
	sw	%x5, 88(%x2)  #273 pc 44384
	addi	%x5, %x6, 0  #0 pc 44388
	sw	%x1, 92(%x2)  #273 pc 44392
	addi	%x2, %x2, 96  #273 pc 44396
	jal	%x1, create_float_array.2600  #273 pc 44400
	addi	%x2, %x2, -96  #273 pc 44404
	lw	%x1, 92(%x2) #273 pc 44408
	addi	%x6, %x0, 3  #0 pc 44412
	fmv	%f0, l.6293  #0 pc 44416
	sw	%x5, 92(%x2)  #277 pc 44420
	addi	%x5, %x6, 0  #0 pc 44424
	sw	%x1, 100(%x2)  #277 pc 44428
	addi	%x2, %x2, 104  #277 pc 44432
	jal	%x1, create_float_array.2600  #277 pc 44436
	addi	%x2, %x2, -104  #277 pc 44440
	lw	%x1, 100(%x2) #277 pc 44444
	addi	%x6, %x0, 3  #0 pc 44448
	fmv	%f0, l.6293  #0 pc 44452
	sw	%x5, 96(%x2)  #280 pc 44456
	addi	%x5, %x6, 0  #0 pc 44460
	sw	%x1, 100(%x2)  #280 pc 44464
	addi	%x2, %x2, 104  #280 pc 44468
	jal	%x1, create_float_array.2600  #280 pc 44472
	addi	%x2, %x2, -104  #280 pc 44476
	lw	%x1, 100(%x2) #280 pc 44480
	addi	%x6, %x0, 3  #0 pc 44484
	fmv	%f0, l.6293  #0 pc 44488
	sw	%x5, 100(%x2)  #284 pc 44492
	addi	%x5, %x6, 0  #0 pc 44496
	sw	%x1, 108(%x2)  #284 pc 44500
	addi	%x2, %x2, 112  #284 pc 44504
	jal	%x1, create_float_array.2600  #284 pc 44508
	addi	%x2, %x2, -112  #284 pc 44512
	lw	%x1, 108(%x2) #284 pc 44516
	addi	%x6, %x0, 3  #0 pc 44520
	fmv	%f0, l.6293  #0 pc 44524
	sw	%x5, 104(%x2)  #286 pc 44528
	addi	%x5, %x6, 0  #0 pc 44532
	sw	%x1, 108(%x2)  #286 pc 44536
	addi	%x2, %x2, 112  #286 pc 44540
	jal	%x1, create_float_array.2600  #286 pc 44544
	addi	%x2, %x2, -112  #286 pc 44548
	lw	%x1, 108(%x2) #286 pc 44552
	addi	%x6, %x0, 3  #0 pc 44556
	fmv	%f0, l.6293  #0 pc 44560
	sw	%x5, 108(%x2)  #288 pc 44564
	addi	%x5, %x6, 0  #0 pc 44568
	sw	%x1, 116(%x2)  #288 pc 44572
	addi	%x2, %x2, 120  #288 pc 44576
	jal	%x1, create_float_array.2600  #288 pc 44580
	addi	%x2, %x2, -120  #288 pc 44584
	lw	%x1, 116(%x2) #288 pc 44588
	addi	%x6, %x0, 3  #0 pc 44592
	fmv	%f0, l.6293  #0 pc 44596
	sw	%x5, 112(%x2)  #292 pc 44600
	addi	%x5, %x6, 0  #0 pc 44604
	sw	%x1, 116(%x2)  #292 pc 44608
	addi	%x2, %x2, 120  #292 pc 44612
	jal	%x1, create_float_array.2600  #292 pc 44616
	addi	%x2, %x2, -120  #292 pc 44620
	lw	%x1, 116(%x2) #292 pc 44624
	addi	%x6, %x0, 0  #0 pc 44628
	fmv	%f0, l.6293  #0 pc 44632
	sw	%x5, 116(%x2)  #297 pc 44636
	addi	%x5, %x6, 0  #0 pc 44640
	sw	%x1, 124(%x2)  #297 pc 44644
	addi	%x2, %x2, 128  #297 pc 44648
	jal	%x1, create_float_array.2600  #297 pc 44652
	addi	%x2, %x2, -128  #297 pc 44656
	lw	%x1, 124(%x2) #297 pc 44660
	addi	%x6, %x5, 0  #297 pc 44664
	addi	%x5, %x0, 0  #0 pc 44668
	sw	%x6, 120(%x2)  #298 pc 44672
	sw	%x1, 124(%x2)  #298 pc 44676
	addi	%x2, %x2, 128  #298 pc 44680
	jal	%x1, create_array.2593  #298 pc 44684
	addi	%x2, %x2, -128  #298 pc 44688
	lw	%x1, 124(%x2) #298 pc 44692
	addi	%x6, %x0, 0  #0 pc 44696
	addi	%x7, %x3, 0  #299 pc 44700
	addi	%x3, %x3, 8  #299 pc 44704
	addi	%x24, %x0, 4  #pc 44708
	add	%x24, %x24, %x7  #299 pc 44712
	sw	%x5, 0(%x24)  #299 pc 44716
	lw	%x5, 120(%x2)  #299 pc 44720
	add	%x24, %x0, %x7  #299 pc 44724
	sw	%x5, 0(%x24)  #299 pc 44728
	addi	%x5, %x7, 0  #299 pc 44732
	addi	%x23, %x6, 0  #0 pc 44736
	addi	%x6, %x5, 0  #0 pc 44740
	addi	%x5, %x23, 0  #0 pc 44744
	sw	%x1, 124(%x2)  #299 pc 44748
	addi	%x2, %x2, 128  #299 pc 44752
	jal	%x1, create_array.2593  #299 pc 44756
	addi	%x2, %x2, -128  #299 pc 44760
	lw	%x1, 124(%x2) #299 pc 44764
	addi	%x6, %x5, 0  #299 pc 44768
	addi	%x5, %x0, 5  #0 pc 44772
	sw	%x1, 124(%x2)  #300 pc 44776
	addi	%x2, %x2, 128  #300 pc 44780
	jal	%x1, create_array.2593  #300 pc 44784
	addi	%x2, %x2, -128  #300 pc 44788
	lw	%x1, 124(%x2) #300 pc 44792
	addi	%x6, %x0, 0  #0 pc 44796
	fmv	%f0, l.6293  #0 pc 44800
	sw	%x5, 124(%x2)  #305 pc 44804
	addi	%x5, %x6, 0  #0 pc 44808
	sw	%x1, 132(%x2)  #305 pc 44812
	addi	%x2, %x2, 136  #305 pc 44816
	jal	%x1, create_float_array.2600  #305 pc 44820
	addi	%x2, %x2, -136  #305 pc 44824
	lw	%x1, 132(%x2) #305 pc 44828
	addi	%x6, %x0, 3  #0 pc 44832
	fmv	%f0, l.6293  #0 pc 44836
	sw	%x5, 128(%x2)  #306 pc 44840
	addi	%x5, %x6, 0  #0 pc 44844
	sw	%x1, 132(%x2)  #306 pc 44848
	addi	%x2, %x2, 136  #306 pc 44852
	jal	%x1, create_float_array.2600  #306 pc 44856
	addi	%x2, %x2, -136  #306 pc 44860
	lw	%x1, 132(%x2) #306 pc 44864
	addi	%x6, %x0, 60  #0 pc 44868
	lw	%x7, 128(%x2)  #307 pc 44872
	sw	%x5, 132(%x2)  #307 pc 44876
	addi	%x5, %x6, 0  #0 pc 44880
	addi	%x6, %x7, 0  #0 pc 44884
	sw	%x1, 140(%x2)  #307 pc 44888
	addi	%x2, %x2, 144  #307 pc 44892
	jal	%x1, create_array.2593  #307 pc 44896
	addi	%x2, %x2, -144  #307 pc 44900
	lw	%x1, 140(%x2) #307 pc 44904
	addi	%x6, %x3, 0  #308 pc 44908
	addi	%x3, %x3, 8  #308 pc 44912
	addi	%x24, %x0, 4  #pc 44916
	add	%x24, %x24, %x6  #308 pc 44920
	sw	%x5, 0(%x24)  #308 pc 44924
	lw	%x5, 132(%x2)  #308 pc 44928
	add	%x24, %x0, %x6  #308 pc 44932
	sw	%x5, 0(%x24)  #308 pc 44936
	addi	%x5, %x6, 0  #308 pc 44940
	addi	%x6, %x0, 0  #0 pc 44944
	fmv	%f0, l.6293  #0 pc 44948
	sw	%x5, 136(%x2)  #313 pc 44952
	addi	%x5, %x6, 0  #0 pc 44956
	sw	%x1, 140(%x2)  #313 pc 44960
	addi	%x2, %x2, 144  #313 pc 44964
	jal	%x1, create_float_array.2600  #313 pc 44968
	addi	%x2, %x2, -144  #313 pc 44972
	lw	%x1, 140(%x2) #313 pc 44976
	addi	%x6, %x5, 0  #313 pc 44980
	addi	%x5, %x0, 0  #0 pc 44984
	sw	%x6, 140(%x2)  #314 pc 44988
	sw	%x1, 148(%x2)  #314 pc 44992
	addi	%x2, %x2, 152  #314 pc 44996
	jal	%x1, create_array.2593  #314 pc 45000
	addi	%x2, %x2, -152  #314 pc 45004
	lw	%x1, 148(%x2) #314 pc 45008
	addi	%x6, %x3, 0  #315 pc 45012
	addi	%x3, %x3, 8  #315 pc 45016
	addi	%x24, %x0, 4  #pc 45020
	add	%x24, %x24, %x6  #315 pc 45024
	sw	%x5, 0(%x24)  #315 pc 45028
	lw	%x5, 140(%x2)  #315 pc 45032
	add	%x24, %x0, %x6  #315 pc 45036
	sw	%x5, 0(%x24)  #315 pc 45040
	addi	%x5, %x6, 0  #315 pc 45044
	addi	%x6, %x0, 180  #0 pc 45048
	addi	%x7, %x0, 0  #0 pc 45052
	fmv	%f0, l.6293  #0 pc 45056
	addi	%x9, %x3, 0  #316 pc 45060
	addi	%x3, %x3, 16  #316 pc 45064
	addi	%x24, %x0, 8  #pc 45068
	add	%x24, %x24, %x9  #316 pc 45072
	fsw	%f0, 0(%x24) #316 pc 45076
	addi	%x24, %x0, 4  #pc 45080
	add	%x24, %x24, %x9  #316 pc 45084
	sw	%x5, 0(%x24)  #316 pc 45088
	add	%x24, %x0, %x9  #316 pc 45092
	sw	%x7, 0(%x24)  #316 pc 45096
	addi	%x5, %x9, 0  #316 pc 45100
	addi	%x23, %x6, 0  #0 pc 45104
	addi	%x6, %x5, 0  #0 pc 45108
	addi	%x5, %x23, 0  #0 pc 45112
	sw	%x1, 148(%x2)  #316 pc 45116
	addi	%x2, %x2, 152  #316 pc 45120
	jal	%x1, create_array.2593  #316 pc 45124
	addi	%x2, %x2, -152  #316 pc 45128
	lw	%x1, 148(%x2) #316 pc 45132
	addi	%x6, %x0, 1  #0 pc 45136
	addi	%x7, %x0, 0  #0 pc 45140
	sw	%x5, 144(%x2)  #320 pc 45144
	addi	%x5, %x6, 0  #0 pc 45148
	addi	%x6, %x7, 0  #0 pc 45152
	sw	%x1, 148(%x2)  #320 pc 45156
	addi	%x2, %x2, 152  #320 pc 45160
	jal	%x1, create_array.2593  #320 pc 45164
	addi	%x2, %x2, -152  #320 pc 45168
	lw	%x1, 148(%x2) #320 pc 45172
	addi	%x6, %x3, 0  #803 pc 45176
	addi	%x3, %x3, 24  #803 pc 45180
	addi	%x24, %x0, 4256  #803 read_screen_settings.2755 pc 45184
	addi	%x7, %x24, 0  #803 pc 45188
	add	%x24, %x0, %x6  #803 pc 45192
	sw	%x7, 0(%x24)  #803 pc 45196
	lw	%x7, 20(%x2)  #803 pc 45200
	addi	%x24, %x0, 20  #pc 45204
	add	%x24, %x24, %x6  #803 pc 45208
	sw	%x7, 0(%x24)  #803 pc 45212
	lw	%x9, 112(%x2)  #803 pc 45216
	addi	%x24, %x0, 16  #pc 45220
	add	%x24, %x24, %x6  #803 pc 45224
	sw	%x9, 0(%x24)  #803 pc 45228
	lw	%x10, 108(%x2)  #803 pc 45232
	addi	%x24, %x0, 12  #pc 45236
	add	%x24, %x24, %x6  #803 pc 45240
	sw	%x10, 0(%x24)  #803 pc 45244
	lw	%x11, 104(%x2)  #803 pc 45248
	addi	%x24, %x0, 8  #pc 45252
	add	%x24, %x24, %x6  #803 pc 45256
	sw	%x11, 0(%x24)  #803 pc 45260
	lw	%x12, 16(%x2)  #803 pc 45264
	addi	%x24, %x0, 4  #pc 45268
	add	%x24, %x24, %x6  #803 pc 45272
	sw	%x12, 0(%x24)  #803 pc 45276
	addi	%x12, %x3, 0  #836 pc 45280
	addi	%x3, %x3, 16  #836 pc 45284
	addi	%x24, %x0, 5064  #836 read_light.2757 pc 45288
	addi	%x13, %x24, 0  #836 pc 45292
	add	%x24, %x0, %x12  #836 pc 45296
	sw	%x13, 0(%x24)  #836 pc 45300
	lw	%x13, 24(%x2)  #836 pc 45304
	addi	%x24, %x0, 8  #pc 45308
	add	%x24, %x24, %x12  #836 pc 45312
	sw	%x13, 0(%x24)  #836 pc 45316
	lw	%x14, 28(%x2)  #836 pc 45320
	addi	%x24, %x0, 4  #pc 45324
	add	%x24, %x24, %x12  #836 pc 45328
	sw	%x14, 0(%x24)  #836 pc 45332
	addi	%x15, %x3, 0  #899 pc 45336
	addi	%x3, %x3, 8  #899 pc 45340
	addi	%x24, %x0, 6556  #899 read_nth_object.2762 pc 45344
	addi	%x16, %x24, 0  #899 pc 45348
	add	%x24, %x0, %x15  #899 pc 45352
	sw	%x16, 0(%x24)  #899 pc 45356
	lw	%x16, 12(%x2)  #899 pc 45360
	addi	%x24, %x0, 4  #pc 45364
	add	%x24, %x24, %x15  #899 pc 45368
	sw	%x16, 0(%x24)  #899 pc 45372
	addi	%x17, %x3, 0  #982 pc 45376
	addi	%x3, %x3, 16  #982 pc 45380
	addi	%x24, %x0, 8420  #982 read_object.2764 pc 45384
	addi	%x18, %x24, 0  #982 pc 45388
	add	%x24, %x0, %x17  #982 pc 45392
	sw	%x18, 0(%x24)  #982 pc 45396
	addi	%x24, %x0, 8  #pc 45400
	add	%x24, %x24, %x17  #982 pc 45404
	sw	%x15, 0(%x24)  #982 pc 45408
	lw	%x15, 8(%x2)  #982 pc 45412
	addi	%x24, %x0, 4  #pc 45416
	add	%x24, %x24, %x17  #982 pc 45420
	sw	%x15, 0(%x24)  #982 pc 45424
	addi	%x18, %x3, 0  #991 pc 45428
	addi	%x3, %x3, 8  #991 pc 45432
	addi	%x24, %x0, 8568  #991 read_all_object.2766 pc 45436
	addi	%x19, %x24, 0  #991 pc 45440
	add	%x24, %x0, %x18  #991 pc 45444
	sw	%x19, 0(%x24)  #991 pc 45448
	addi	%x24, %x0, 4  #pc 45452
	add	%x24, %x24, %x18  #991 pc 45456
	sw	%x17, 0(%x24)  #991 pc 45460
	addi	%x17, %x3, 0  #1015 pc 45464
	addi	%x3, %x3, 8  #1015 pc 45468
	addi	%x24, %x0, 8864  #1015 read_and_network.2772 pc 45472
	addi	%x19, %x24, 0  #1015 pc 45476
	add	%x24, %x0, %x17  #1015 pc 45480
	sw	%x19, 0(%x24)  #1015 pc 45484
	lw	%x19, 36(%x2)  #1015 pc 45488
	addi	%x24, %x0, 4  #pc 45492
	add	%x24, %x24, %x17  #1015 pc 45496
	sw	%x19, 0(%x24)  #1015 pc 45500
	addi	%x20, %x3, 0  #1024 pc 45504
	addi	%x3, %x3, 24  #1024 pc 45508
	addi	%x24, %x0, 8988  #1024 read_parameter.2774 pc 45512
	addi	%x21, %x24, 0  #1024 pc 45516
	add	%x24, %x0, %x20  #1024 pc 45520
	sw	%x21, 0(%x24)  #1024 pc 45524
	addi	%x24, %x0, 20  #pc 45528
	add	%x24, %x24, %x20  #1024 pc 45532
	sw	%x6, 0(%x24)  #1024 pc 45536
	addi	%x24, %x0, 16  #pc 45540
	add	%x24, %x24, %x20  #1024 pc 45544
	sw	%x12, 0(%x24)  #1024 pc 45548
	addi	%x24, %x0, 12  #pc 45552
	add	%x24, %x24, %x20  #1024 pc 45556
	sw	%x17, 0(%x24)  #1024 pc 45560
	addi	%x24, %x0, 8  #pc 45564
	add	%x24, %x24, %x20  #1024 pc 45568
	sw	%x18, 0(%x24)  #1024 pc 45572
	lw	%x6, 44(%x2)  #1024 pc 45576
	addi	%x24, %x0, 4  #pc 45580
	add	%x24, %x24, %x20  #1024 pc 45584
	sw	%x6, 0(%x24)  #1024 pc 45588
	addi	%x12, %x3, 0  #1049 pc 45592
	addi	%x3, %x3, 8  #1049 pc 45596
	addi	%x24, %x0, 9236  #1049 solver_rect_surface.2776 pc 45600
	addi	%x17, %x24, 0  #1049 pc 45604
	add	%x24, %x0, %x12  #1049 pc 45608
	sw	%x17, 0(%x24)  #1049 pc 45612
	lw	%x17, 48(%x2)  #1049 pc 45616
	addi	%x24, %x0, 4  #pc 45620
	add	%x24, %x24, %x12  #1049 pc 45624
	sw	%x17, 0(%x24)  #1049 pc 45628
	addi	%x18, %x3, 0  #1064 pc 45632
	addi	%x3, %x3, 8  #1064 pc 45636
	addi	%x24, %x0, 9780  #1064 solver_rect.2785 pc 45640
	addi	%x21, %x24, 0  #1064 pc 45644
	add	%x24, %x0, %x18  #1064 pc 45648
	sw	%x21, 0(%x24)  #1064 pc 45652
	addi	%x24, %x0, 4  #pc 45656
	add	%x24, %x24, %x18  #1064 pc 45660
	sw	%x12, 0(%x24)  #1064 pc 45664
	addi	%x12, %x3, 0  #1073 pc 45668
	addi	%x3, %x3, 8  #1073 pc 45672
	addi	%x24, %x0, 10056  #1073 solver_surface.2791 pc 45676
	addi	%x21, %x24, 0  #1073 pc 45680
	add	%x24, %x0, %x12  #1073 pc 45684
	sw	%x21, 0(%x24)  #1073 pc 45688
	addi	%x24, %x0, 4  #pc 45692
	add	%x24, %x24, %x12  #1073 pc 45696
	sw	%x17, 0(%x24)  #1073 pc 45700
	addi	%x21, %x3, 0  #1124 pc 45704
	addi	%x3, %x3, 8  #1124 pc 45708
	addi	%x24, %x0, 11224  #1124 solver_second.2810 pc 45712
	addi	%x22, %x24, 0  #1124 pc 45716
	add	%x24, %x0, %x21  #1124 pc 45720
	sw	%x22, 0(%x24)  #1124 pc 45724
	addi	%x24, %x0, 4  #pc 45728
	add	%x24, %x24, %x21  #1124 pc 45732
	sw	%x17, 0(%x24)  #1124 pc 45736
	addi	%x22, %x3, 0  #1153 pc 45740
	addi	%x3, %x3, 24  #1153 pc 45744
	addi	%x24, %x0, 11784  #1153 solver.2816 pc 45748
	addi	%x23, %x24, 0  #1153 pc 45752
	add	%x24, %x0, %x22  #1153 pc 45756
	sw	%x23, 0(%x24)  #1153 pc 45760
	addi	%x24, %x0, 16  #pc 45764
	add	%x24, %x24, %x22  #1153 pc 45768
	sw	%x12, 0(%x24)  #1153 pc 45772
	addi	%x24, %x0, 12  #pc 45776
	add	%x24, %x24, %x22  #1153 pc 45780
	sw	%x21, 0(%x24)  #1153 pc 45784
	addi	%x24, %x0, 8  #pc 45788
	add	%x24, %x24, %x22  #1153 pc 45792
	sw	%x18, 0(%x24)  #1153 pc 45796
	addi	%x24, %x0, 4  #pc 45800
	add	%x24, %x24, %x22  #1153 pc 45804
	sw	%x16, 0(%x24)  #1153 pc 45808
	addi	%x12, %x3, 0  #1185 pc 45812
	addi	%x3, %x3, 8  #1185 pc 45816
	addi	%x24, %x0, 12192  #1185 solver_rect_fast.2820 pc 45820
	addi	%x18, %x24, 0  #1185 pc 45824
	add	%x24, %x0, %x12  #1185 pc 45828
	sw	%x18, 0(%x24)  #1185 pc 45832
	addi	%x24, %x0, 4  #pc 45836
	add	%x24, %x24, %x12  #1185 pc 45840
	sw	%x17, 0(%x24)  #1185 pc 45844
	addi	%x18, %x3, 0  #1218 pc 45848
	addi	%x3, %x3, 8  #1218 pc 45852
	addi	%x24, %x0, 13356  #1218 solver_surface_fast.2827 pc 45856
	addi	%x21, %x24, 0  #1218 pc 45860
	add	%x24, %x0, %x18  #1218 pc 45864
	sw	%x21, 0(%x24)  #1218 pc 45868
	addi	%x24, %x0, 4  #pc 45872
	add	%x24, %x24, %x18  #1218 pc 45876
	sw	%x17, 0(%x24)  #1218 pc 45880
	addi	%x21, %x3, 0  #1227 pc 45884
	addi	%x3, %x3, 8  #1227 pc 45888
	addi	%x24, %x0, 13540  #1227 solver_second_fast.2833 pc 45892
	addi	%x23, %x24, 0  #1227 pc 45896
	add	%x24, %x0, %x21  #1227 pc 45900
	sw	%x23, 0(%x24)  #1227 pc 45904
	addi	%x24, %x0, 4  #pc 45908
	add	%x24, %x24, %x21  #1227 pc 45912
	sw	%x17, 0(%x24)  #1227 pc 45916
	addi	%x23, %x3, 0  #1247 pc 45920
	addi	%x3, %x3, 24  #1247 pc 45924
	sw	%x20, 148(%x2)  #1247 pc 45928
	addi	%x24, %x0, 14068  #1247 solver_fast.2839 pc 45932
	addi	%x20, %x24, 0  #1247 pc 45936
	add	%x24, %x0, %x23  #1247 pc 45940
	sw	%x20, 0(%x24)  #1247 pc 45944
	addi	%x24, %x0, 16  #pc 45948
	add	%x24, %x24, %x23  #1247 pc 45952
	sw	%x18, 0(%x24)  #1247 pc 45956
	addi	%x24, %x0, 12  #pc 45960
	add	%x24, %x24, %x23  #1247 pc 45964
	sw	%x21, 0(%x24)  #1247 pc 45968
	addi	%x24, %x0, 8  #pc 45972
	add	%x24, %x24, %x23  #1247 pc 45976
	sw	%x12, 0(%x24)  #1247 pc 45980
	addi	%x24, %x0, 4  #pc 45984
	add	%x24, %x24, %x23  #1247 pc 45988
	sw	%x16, 0(%x24)  #1247 pc 45992
	addi	%x18, %x3, 0  #1267 pc 45996
	addi	%x3, %x3, 8  #1267 pc 46000
	addi	%x24, %x0, 14560  #1267 solver_surface_fast2.2843 pc 46004
	addi	%x20, %x24, 0  #1267 pc 46008
	add	%x24, %x0, %x18  #1267 pc 46012
	sw	%x20, 0(%x24)  #1267 pc 46016
	addi	%x24, %x0, 4  #pc 46020
	add	%x24, %x24, %x18  #1267 pc 46024
	sw	%x17, 0(%x24)  #1267 pc 46028
	addi	%x20, %x3, 0  #1275 pc 46032
	addi	%x3, %x3, 8  #1275 pc 46036
	addi	%x24, %x0, 14692  #1275 solver_second_fast2.2850 pc 46040
	addi	%x21, %x24, 0  #1275 pc 46044
	add	%x24, %x0, %x20  #1275 pc 46048
	sw	%x21, 0(%x24)  #1275 pc 46052
	addi	%x24, %x0, 4  #pc 46056
	add	%x24, %x24, %x20  #1275 pc 46060
	sw	%x17, 0(%x24)  #1275 pc 46064
	addi	%x21, %x3, 0  #1294 pc 46068
	addi	%x3, %x3, 24  #1294 pc 46072
	addi	%x24, %x0, 15124  #1294 solver_fast2.2857 pc 46076
	addi	%x10, %x24, 0  #1294 pc 46080
	add	%x24, %x0, %x21  #1294 pc 46084
	sw	%x10, 0(%x24)  #1294 pc 46088
	addi	%x24, %x0, 16  #pc 46092
	add	%x24, %x24, %x21  #1294 pc 46096
	sw	%x18, 0(%x24)  #1294 pc 46100
	addi	%x24, %x0, 12  #pc 46104
	add	%x24, %x24, %x21  #1294 pc 46108
	sw	%x20, 0(%x24)  #1294 pc 46112
	addi	%x24, %x0, 8  #pc 46116
	add	%x24, %x24, %x21  #1294 pc 46120
	sw	%x12, 0(%x24)  #1294 pc 46124
	addi	%x24, %x0, 4  #pc 46128
	add	%x24, %x24, %x21  #1294 pc 46132
	sw	%x16, 0(%x24)  #1294 pc 46136
	addi	%x10, %x3, 0  #1391 pc 46140
	addi	%x3, %x3, 8  #1391 pc 46144
	addi	%x24, %x0, 17972  #1391 iter_setup_dirvec_constants.2869 pc 46148
	addi	%x12, %x24, 0  #1391 pc 46152
	add	%x24, %x0, %x10  #1391 pc 46156
	sw	%x12, 0(%x24)  #1391 pc 46160
	addi	%x24, %x0, 4  #pc 46164
	add	%x24, %x24, %x10  #1391 pc 46168
	sw	%x16, 0(%x24)  #1391 pc 46172
	addi	%x12, %x3, 0  #1408 pc 46176
	addi	%x3, %x3, 16  #1408 pc 46180
	addi	%x24, %x0, 18332  #1408 setup_dirvec_constants.2872 pc 46184
	addi	%x18, %x24, 0  #1408 pc 46188
	add	%x24, %x0, %x12  #1408 pc 46192
	sw	%x18, 0(%x24)  #1408 pc 46196
	addi	%x24, %x0, 8  #pc 46200
	add	%x24, %x24, %x12  #1408 pc 46204
	sw	%x15, 0(%x24)  #1408 pc 46208
	addi	%x24, %x0, 4  #pc 46212
	add	%x24, %x24, %x12  #1408 pc 46216
	sw	%x10, 0(%x24)  #1408 pc 46220
	addi	%x10, %x3, 0  #1416 pc 46224
	addi	%x3, %x3, 8  #1416 pc 46228
	addi	%x24, %x0, 18380  #1416 setup_startp_constants.2874 pc 46232
	addi	%x18, %x24, 0  #1416 pc 46236
	add	%x24, %x0, %x10  #1416 pc 46240
	sw	%x18, 0(%x24)  #1416 pc 46244
	addi	%x24, %x0, 4  #pc 46248
	add	%x24, %x24, %x10  #1416 pc 46252
	sw	%x16, 0(%x24)  #1416 pc 46256
	addi	%x18, %x3, 0  #1435 pc 46260
	addi	%x3, %x3, 16  #1435 pc 46264
	addi	%x24, %x0, 19000  #1435 setup_startp.2877 pc 46268
	addi	%x20, %x24, 0  #1435 pc 46272
	add	%x24, %x0, %x18  #1435 pc 46276
	sw	%x20, 0(%x24)  #1435 pc 46280
	lw	%x20, 100(%x2)  #1435 pc 46284
	addi	%x24, %x0, 12  #pc 46288
	add	%x24, %x24, %x18  #1435 pc 46292
	sw	%x20, 0(%x24)  #1435 pc 46296
	addi	%x24, %x0, 8  #pc 46300
	add	%x24, %x24, %x18  #1435 pc 46304
	sw	%x10, 0(%x24)  #1435 pc 46308
	addi	%x24, %x0, 4  #pc 46312
	add	%x24, %x24, %x18  #1435 pc 46316
	sw	%x15, 0(%x24)  #1435 pc 46320
	addi	%x10, %x3, 0  #1485 pc 46324
	addi	%x3, %x3, 8  #1485 pc 46328
	sw	%x12, 152(%x2)  #1485 pc 46332
	addi	%x24, %x0, 20092  #1485 check_all_inside.2899 pc 46336
	addi	%x12, %x24, 0  #1485 pc 46340
	add	%x24, %x0, %x10  #1485 pc 46344
	sw	%x12, 0(%x24)  #1485 pc 46348
	addi	%x24, %x0, 4  #pc 46352
	add	%x24, %x24, %x10  #1485 pc 46356
	sw	%x16, 0(%x24)  #1485 pc 46360
	addi	%x12, %x3, 0  #1505 pc 46364
	addi	%x3, %x3, 32  #1505 pc 46368
	addi	%x24, %x0, 20268  #1505 shadow_check_and_group.2905 pc 46372
	addi	%x15, %x24, 0  #1505 pc 46376
	add	%x24, %x0, %x12  #1505 pc 46380
	sw	%x15, 0(%x24)  #1505 pc 46384
	addi	%x24, %x0, 28  #pc 46388
	add	%x24, %x24, %x12  #1505 pc 46392
	sw	%x23, 0(%x24)  #1505 pc 46396
	addi	%x24, %x0, 24  #pc 46400
	add	%x24, %x24, %x12  #1505 pc 46404
	sw	%x17, 0(%x24)  #1505 pc 46408
	addi	%x24, %x0, 20  #pc 46412
	add	%x24, %x24, %x12  #1505 pc 46416
	sw	%x16, 0(%x24)  #1505 pc 46420
	lw	%x15, 136(%x2)  #1505 pc 46424
	addi	%x24, %x0, 16  #pc 46428
	add	%x24, %x24, %x12  #1505 pc 46432
	sw	%x15, 0(%x24)  #1505 pc 46436
	addi	%x24, %x0, 12  #pc 46440
	add	%x24, %x24, %x12  #1505 pc 46444
	sw	%x13, 0(%x24)  #1505 pc 46448
	lw	%x9, 60(%x2)  #1505 pc 46452
	addi	%x24, %x0, 8  #pc 46456
	add	%x24, %x24, %x12  #1505 pc 46460
	sw	%x9, 0(%x24)  #1505 pc 46464
	addi	%x24, %x0, 4  #pc 46468
	add	%x24, %x24, %x12  #1505 pc 46472
	sw	%x10, 0(%x24)  #1505 pc 46476
	addi	%x11, %x3, 0  #1535 pc 46480
	addi	%x3, %x3, 16  #1535 pc 46484
	addi	%x24, %x0, 20860  #1535 shadow_check_one_or_group.2908 pc 46488
	addi	%x7, %x24, 0  #1535 pc 46492
	add	%x24, %x0, %x11  #1535 pc 46496
	sw	%x7, 0(%x24)  #1535 pc 46500
	addi	%x24, %x0, 8  #pc 46504
	add	%x24, %x24, %x11  #1535 pc 46508
	sw	%x12, 0(%x24)  #1535 pc 46512
	addi	%x24, %x0, 4  #pc 46516
	add	%x24, %x24, %x11  #1535 pc 46520
	sw	%x19, 0(%x24)  #1535 pc 46524
	addi	%x7, %x3, 0  #1550 pc 46528
	addi	%x3, %x3, 24  #1550 pc 46532
	addi	%x24, %x0, 21040  #1550 shadow_check_one_or_matrix.2911 pc 46536
	addi	%x12, %x24, 0  #1550 pc 46540
	add	%x24, %x0, %x7  #1550 pc 46544
	sw	%x12, 0(%x24)  #1550 pc 46548
	addi	%x24, %x0, 20  #pc 46552
	add	%x24, %x24, %x7  #1550 pc 46556
	sw	%x23, 0(%x24)  #1550 pc 46560
	addi	%x24, %x0, 16  #pc 46564
	add	%x24, %x24, %x7  #1550 pc 46568
	sw	%x17, 0(%x24)  #1550 pc 46572
	addi	%x24, %x0, 12  #pc 46576
	add	%x24, %x24, %x7  #1550 pc 46580
	sw	%x11, 0(%x24)  #1550 pc 46584
	addi	%x24, %x0, 8  #pc 46588
	add	%x24, %x24, %x7  #1550 pc 46592
	sw	%x15, 0(%x24)  #1550 pc 46596
	addi	%x24, %x0, 4  #pc 46600
	add	%x24, %x24, %x7  #1550 pc 46604
	sw	%x9, 0(%x24)  #1550 pc 46608
	addi	%x11, %x3, 0  #1586 pc 46612
	addi	%x3, %x3, 40  #1586 pc 46616
	addi	%x24, %x0, 21516  #1586 solve_each_element.2914 pc 46620
	addi	%x12, %x24, 0  #1586 pc 46624
	add	%x24, %x0, %x11  #1586 pc 46628
	sw	%x12, 0(%x24)  #1586 pc 46632
	lw	%x12, 56(%x2)  #1586 pc 46636
	addi	%x24, %x0, 36  #pc 46640
	add	%x24, %x24, %x11  #1586 pc 46644
	sw	%x12, 0(%x24)  #1586 pc 46648
	lw	%x23, 96(%x2)  #1586 pc 46652
	addi	%x24, %x0, 32  #pc 46656
	add	%x24, %x24, %x11  #1586 pc 46660
	sw	%x23, 0(%x24)  #1586 pc 46664
	addi	%x24, %x0, 28  #pc 46668
	add	%x24, %x24, %x11  #1586 pc 46672
	sw	%x17, 0(%x24)  #1586 pc 46676
	addi	%x24, %x0, 24  #pc 46680
	add	%x24, %x24, %x11  #1586 pc 46684
	sw	%x22, 0(%x24)  #1586 pc 46688
	addi	%x24, %x0, 20  #pc 46692
	add	%x24, %x24, %x11  #1586 pc 46696
	sw	%x16, 0(%x24)  #1586 pc 46700
	lw	%x15, 52(%x2)  #1586 pc 46704
	addi	%x24, %x0, 16  #pc 46708
	add	%x24, %x24, %x11  #1586 pc 46712
	sw	%x15, 0(%x24)  #1586 pc 46716
	addi	%x24, %x0, 12  #pc 46720
	add	%x24, %x24, %x11  #1586 pc 46724
	sw	%x9, 0(%x24)  #1586 pc 46728
	lw	%x14, 64(%x2)  #1586 pc 46732
	addi	%x24, %x0, 8  #pc 46736
	add	%x24, %x24, %x11  #1586 pc 46740
	sw	%x14, 0(%x24)  #1586 pc 46744
	addi	%x24, %x0, 4  #pc 46748
	add	%x24, %x24, %x11  #1586 pc 46752
	sw	%x10, 0(%x24)  #1586 pc 46756
	addi	%x13, %x3, 0  #1627 pc 46760
	addi	%x3, %x3, 16  #1627 pc 46764
	sw	%x5, 156(%x2)  #1627 pc 46768
	addi	%x24, %x0, 22292  #1627 solve_one_or_network.2918 pc 46772
	addi	%x5, %x24, 0  #1627 pc 46776
	add	%x24, %x0, %x13  #1627 pc 46780
	sw	%x5, 0(%x24)  #1627 pc 46784
	addi	%x24, %x0, 8  #pc 46788
	add	%x24, %x24, %x13  #1627 pc 46792
	sw	%x11, 0(%x24)  #1627 pc 46796
	addi	%x24, %x0, 4  #pc 46800
	add	%x24, %x24, %x13  #1627 pc 46804
	sw	%x19, 0(%x24)  #1627 pc 46808
	addi	%x5, %x3, 0  #1637 pc 46812
	addi	%x3, %x3, 24  #1637 pc 46816
	addi	%x24, %x0, 22452  #1637 trace_or_matrix.2922 pc 46820
	addi	%x11, %x24, 0  #1637 pc 46824
	add	%x24, %x0, %x5  #1637 pc 46828
	sw	%x11, 0(%x24)  #1637 pc 46832
	addi	%x24, %x0, 20  #pc 46836
	add	%x24, %x24, %x5  #1637 pc 46840
	sw	%x12, 0(%x24)  #1637 pc 46844
	addi	%x24, %x0, 16  #pc 46848
	add	%x24, %x24, %x5  #1637 pc 46852
	sw	%x23, 0(%x24)  #1637 pc 46856
	addi	%x24, %x0, 12  #pc 46860
	add	%x24, %x24, %x5  #1637 pc 46864
	sw	%x17, 0(%x24)  #1637 pc 46868
	addi	%x24, %x0, 8  #pc 46872
	add	%x24, %x24, %x5  #1637 pc 46876
	sw	%x22, 0(%x24)  #1637 pc 46880
	addi	%x24, %x0, 4  #pc 46884
	add	%x24, %x24, %x5  #1637 pc 46888
	sw	%x13, 0(%x24)  #1637 pc 46892
	addi	%x11, %x3, 0  #1664 pc 46896
	addi	%x3, %x3, 16  #1664 pc 46900
	addi	%x24, %x0, 22848  #1664 judge_intersection.2926 pc 46904
	addi	%x13, %x24, 0  #1664 pc 46908
	add	%x24, %x0, %x11  #1664 pc 46912
	sw	%x13, 0(%x24)  #1664 pc 46916
	addi	%x24, %x0, 12  #pc 46920
	add	%x24, %x24, %x11  #1664 pc 46924
	sw	%x5, 0(%x24)  #1664 pc 46928
	addi	%x24, %x0, 8  #pc 46932
	add	%x24, %x24, %x11  #1664 pc 46936
	sw	%x12, 0(%x24)  #1664 pc 46940
	addi	%x24, %x0, 4  #pc 46944
	add	%x24, %x24, %x11  #1664 pc 46948
	sw	%x6, 0(%x24)  #1664 pc 46952
	addi	%x5, %x3, 0  #1679 pc 46956
	addi	%x3, %x3, 40  #1679 pc 46960
	addi	%x24, %x0, 23032  #1679 solve_each_element_fast.2928 pc 46964
	addi	%x13, %x24, 0  #1679 pc 46968
	add	%x24, %x0, %x5  #1679 pc 46972
	sw	%x13, 0(%x24)  #1679 pc 46976
	addi	%x24, %x0, 36  #pc 46980
	add	%x24, %x24, %x5  #1679 pc 46984
	sw	%x12, 0(%x24)  #1679 pc 46988
	addi	%x24, %x0, 32  #pc 46992
	add	%x24, %x24, %x5  #1679 pc 46996
	sw	%x20, 0(%x24)  #1679 pc 47000
	addi	%x24, %x0, 28  #pc 47004
	add	%x24, %x24, %x5  #1679 pc 47008
	sw	%x21, 0(%x24)  #1679 pc 47012
	addi	%x24, %x0, 24  #pc 47016
	add	%x24, %x24, %x5  #1679 pc 47020
	sw	%x17, 0(%x24)  #1679 pc 47024
	addi	%x24, %x0, 20  #pc 47028
	add	%x24, %x24, %x5  #1679 pc 47032
	sw	%x16, 0(%x24)  #1679 pc 47036
	addi	%x24, %x0, 16  #pc 47040
	add	%x24, %x24, %x5  #1679 pc 47044
	sw	%x15, 0(%x24)  #1679 pc 47048
	addi	%x24, %x0, 12  #pc 47052
	add	%x24, %x24, %x5  #1679 pc 47056
	sw	%x9, 0(%x24)  #1679 pc 47060
	addi	%x24, %x0, 8  #pc 47064
	add	%x24, %x24, %x5  #1679 pc 47068
	sw	%x14, 0(%x24)  #1679 pc 47072
	addi	%x24, %x0, 4  #pc 47076
	add	%x24, %x24, %x5  #1679 pc 47080
	sw	%x10, 0(%x24)  #1679 pc 47084
	addi	%x10, %x3, 0  #1720 pc 47088
	addi	%x3, %x3, 16  #1720 pc 47092
	addi	%x24, %x0, 23840  #1720 solve_one_or_network_fast.2932 pc 47096
	addi	%x13, %x24, 0  #1720 pc 47100
	add	%x24, %x0, %x10  #1720 pc 47104
	sw	%x13, 0(%x24)  #1720 pc 47108
	addi	%x24, %x0, 8  #pc 47112
	add	%x24, %x24, %x10  #1720 pc 47116
	sw	%x5, 0(%x24)  #1720 pc 47120
	addi	%x24, %x0, 4  #pc 47124
	add	%x24, %x24, %x10  #1720 pc 47128
	sw	%x19, 0(%x24)  #1720 pc 47132
	addi	%x5, %x3, 0  #1730 pc 47136
	addi	%x3, %x3, 24  #1730 pc 47140
	addi	%x24, %x0, 24000  #1730 trace_or_matrix_fast.2936 pc 47144
	addi	%x13, %x24, 0  #1730 pc 47148
	add	%x24, %x0, %x5  #1730 pc 47152
	sw	%x13, 0(%x24)  #1730 pc 47156
	addi	%x24, %x0, 16  #pc 47160
	add	%x24, %x24, %x5  #1730 pc 47164
	sw	%x12, 0(%x24)  #1730 pc 47168
	addi	%x24, %x0, 12  #pc 47172
	add	%x24, %x24, %x5  #1730 pc 47176
	sw	%x21, 0(%x24)  #1730 pc 47180
	addi	%x24, %x0, 8  #pc 47184
	add	%x24, %x24, %x5  #1730 pc 47188
	sw	%x17, 0(%x24)  #1730 pc 47192
	addi	%x24, %x0, 4  #pc 47196
	add	%x24, %x24, %x5  #1730 pc 47200
	sw	%x10, 0(%x24)  #1730 pc 47204
	addi	%x10, %x3, 0  #1754 pc 47208
	addi	%x3, %x3, 16  #1754 pc 47212
	addi	%x24, %x0, 24380  #1754 judge_intersection_fast.2940 pc 47216
	addi	%x13, %x24, 0  #1754 pc 47220
	add	%x24, %x0, %x10  #1754 pc 47224
	sw	%x13, 0(%x24)  #1754 pc 47228
	addi	%x24, %x0, 12  #pc 47232
	add	%x24, %x24, %x10  #1754 pc 47236
	sw	%x5, 0(%x24)  #1754 pc 47240
	addi	%x24, %x0, 8  #pc 47244
	add	%x24, %x24, %x10  #1754 pc 47248
	sw	%x12, 0(%x24)  #1754 pc 47252
	addi	%x24, %x0, 4  #pc 47256
	add	%x24, %x24, %x10  #1754 pc 47260
	sw	%x6, 0(%x24)  #1754 pc 47264
	addi	%x5, %x3, 0  #1775 pc 47268
	addi	%x3, %x3, 16  #1775 pc 47272
	addi	%x24, %x0, 24564  #1775 get_nvector_rect.2942 pc 47276
	addi	%x13, %x24, 0  #1775 pc 47280
	add	%x24, %x0, %x5  #1775 pc 47284
	sw	%x13, 0(%x24)  #1775 pc 47288
	lw	%x13, 68(%x2)  #1775 pc 47292
	addi	%x24, %x0, 8  #pc 47296
	add	%x24, %x24, %x5  #1775 pc 47300
	sw	%x13, 0(%x24)  #1775 pc 47304
	addi	%x24, %x0, 4  #pc 47308
	add	%x24, %x24, %x5  #1775 pc 47312
	sw	%x15, 0(%x24)  #1775 pc 47316
	addi	%x17, %x3, 0  #1783 pc 47320
	addi	%x3, %x3, 8  #1783 pc 47324
	addi	%x24, %x0, 24732  #1783 get_nvector_plane.2944 pc 47328
	addi	%x19, %x24, 0  #1783 pc 47332
	add	%x24, %x0, %x17  #1783 pc 47336
	sw	%x19, 0(%x24)  #1783 pc 47340
	addi	%x24, %x0, 4  #pc 47344
	add	%x24, %x24, %x17  #1783 pc 47348
	sw	%x13, 0(%x24)  #1783 pc 47352
	addi	%x19, %x3, 0  #1791 pc 47356
	addi	%x3, %x3, 16  #1791 pc 47360
	addi	%x24, %x0, 24940  #1791 get_nvector_second.2946 pc 47364
	addi	%x20, %x24, 0  #1791 pc 47368
	add	%x24, %x0, %x19  #1791 pc 47372
	sw	%x20, 0(%x24)  #1791 pc 47376
	addi	%x24, %x0, 8  #pc 47380
	add	%x24, %x24, %x19  #1791 pc 47384
	sw	%x13, 0(%x24)  #1791 pc 47388
	addi	%x24, %x0, 4  #pc 47392
	add	%x24, %x24, %x19  #1791 pc 47396
	sw	%x9, 0(%x24)  #1791 pc 47400
	addi	%x20, %x3, 0  #1813 pc 47404
	addi	%x3, %x3, 16  #1813 pc 47408
	addi	%x24, %x0, 25744  #1813 get_nvector.2948 pc 47412
	addi	%x21, %x24, 0  #1813 pc 47416
	add	%x24, %x0, %x20  #1813 pc 47420
	sw	%x21, 0(%x24)  #1813 pc 47424
	addi	%x24, %x0, 12  #pc 47428
	add	%x24, %x24, %x20  #1813 pc 47432
	sw	%x19, 0(%x24)  #1813 pc 47436
	addi	%x24, %x0, 8  #pc 47440
	add	%x24, %x24, %x20  #1813 pc 47444
	sw	%x5, 0(%x24)  #1813 pc 47448
	addi	%x24, %x0, 4  #pc 47452
	add	%x24, %x24, %x20  #1813 pc 47456
	sw	%x17, 0(%x24)  #1813 pc 47460
	addi	%x5, %x3, 0  #1829 pc 47464
	addi	%x3, %x3, 8  #1829 pc 47468
	addi	%x24, %x0, 25912  #1829 utexture.2951 pc 47472
	addi	%x17, %x24, 0  #1829 pc 47476
	add	%x24, %x0, %x5  #1829 pc 47480
	sw	%x17, 0(%x24)  #1829 pc 47484
	lw	%x17, 72(%x2)  #1829 pc 47488
	addi	%x24, %x0, 4  #pc 47492
	add	%x24, %x24, %x5  #1829 pc 47496
	sw	%x17, 0(%x24)  #1829 pc 47500
	addi	%x19, %x3, 0  #1907 pc 47504
	addi	%x3, %x3, 16  #1907 pc 47508
	addi	%x24, %x0, 27844  #1907 add_light.2954 pc 47512
	addi	%x21, %x24, 0  #1907 pc 47516
	add	%x24, %x0, %x19  #1907 pc 47520
	sw	%x21, 0(%x24)  #1907 pc 47524
	addi	%x24, %x0, 8  #pc 47528
	add	%x24, %x24, %x19  #1907 pc 47532
	sw	%x17, 0(%x24)  #1907 pc 47536
	lw	%x21, 80(%x2)  #1907 pc 47540
	addi	%x24, %x0, 4  #pc 47544
	add	%x24, %x24, %x19  #1907 pc 47548
	sw	%x21, 0(%x24)  #1907 pc 47552
	addi	%x22, %x3, 0  #1924 pc 47556
	addi	%x3, %x3, 40  #1924 pc 47560
	sw	%x20, 160(%x2)  #1924 pc 47564
	addi	%x24, %x0, 28144  #1924 trace_reflections.2958 pc 47568
	addi	%x20, %x24, 0  #1924 pc 47572
	add	%x24, %x0, %x22  #1924 pc 47576
	sw	%x20, 0(%x24)  #1924 pc 47580
	addi	%x24, %x0, 32  #pc 47584
	add	%x24, %x24, %x22  #1924 pc 47588
	sw	%x7, 0(%x24)  #1924 pc 47592
	lw	%x20, 144(%x2)  #1924 pc 47596
	addi	%x24, %x0, 28  #pc 47600
	add	%x24, %x24, %x22  #1924 pc 47604
	sw	%x20, 0(%x24)  #1924 pc 47608
	addi	%x24, %x0, 24  #pc 47612
	add	%x24, %x24, %x22  #1924 pc 47616
	sw	%x6, 0(%x24)  #1924 pc 47620
	addi	%x24, %x0, 20  #pc 47624
	add	%x24, %x24, %x22  #1924 pc 47628
	sw	%x13, 0(%x24)  #1924 pc 47632
	addi	%x24, %x0, 16  #pc 47636
	add	%x24, %x24, %x22  #1924 pc 47640
	sw	%x10, 0(%x24)  #1924 pc 47644
	addi	%x24, %x0, 12  #pc 47648
	add	%x24, %x24, %x22  #1924 pc 47652
	sw	%x15, 0(%x24)  #1924 pc 47656
	addi	%x24, %x0, 8  #pc 47660
	add	%x24, %x24, %x22  #1924 pc 47664
	sw	%x14, 0(%x24)  #1924 pc 47668
	addi	%x24, %x0, 4  #pc 47672
	add	%x24, %x24, %x22  #1924 pc 47676
	sw	%x19, 0(%x24)  #1924 pc 47680
	addi	%x20, %x3, 0  #1953 pc 47684
	addi	%x3, %x3, 88  #1953 pc 47688
	sw	%x10, 164(%x2)  #1953 pc 47692
	addi	%x24, %x0, 28808  #1953 trace_ray.2963 pc 47696
	addi	%x10, %x24, 0  #1953 pc 47700
	add	%x24, %x0, %x20  #1953 pc 47704
	sw	%x10, 0(%x24)  #1953 pc 47708
	addi	%x24, %x0, 80  #pc 47712
	add	%x24, %x24, %x20  #1953 pc 47716
	sw	%x5, 0(%x24)  #1953 pc 47720
	addi	%x24, %x0, 76  #pc 47724
	add	%x24, %x24, %x20  #1953 pc 47728
	sw	%x22, 0(%x24)  #1953 pc 47732
	addi	%x24, %x0, 72  #pc 47736
	add	%x24, %x24, %x20  #1953 pc 47740
	sw	%x12, 0(%x24)  #1953 pc 47744
	addi	%x24, %x0, 68  #pc 47748
	add	%x24, %x24, %x20  #1953 pc 47752
	sw	%x17, 0(%x24)  #1953 pc 47756
	addi	%x24, %x0, 64  #pc 47760
	add	%x24, %x24, %x20  #1953 pc 47764
	sw	%x23, 0(%x24)  #1953 pc 47768
	addi	%x24, %x0, 60  #pc 47772
	add	%x24, %x24, %x20  #1953 pc 47776
	sw	%x7, 0(%x24)  #1953 pc 47780
	addi	%x24, %x0, 56  #pc 47784
	add	%x24, %x24, %x20  #1953 pc 47788
	sw	%x18, 0(%x24)  #1953 pc 47792
	addi	%x24, %x0, 52  #pc 47796
	add	%x24, %x24, %x20  #1953 pc 47800
	sw	%x21, 0(%x24)  #1953 pc 47804
	addi	%x24, %x0, 48  #pc 47808
	add	%x24, %x24, %x20  #1953 pc 47812
	sw	%x6, 0(%x24)  #1953 pc 47816
	addi	%x24, %x0, 44  #pc 47820
	add	%x24, %x24, %x20  #1953 pc 47824
	sw	%x16, 0(%x24)  #1953 pc 47828
	addi	%x24, %x0, 40  #pc 47832
	add	%x24, %x24, %x20  #1953 pc 47836
	sw	%x13, 0(%x24)  #1953 pc 47840
	lw	%x10, 156(%x2)  #1953 pc 47844
	addi	%x24, %x0, 36  #pc 47848
	add	%x24, %x24, %x20  #1953 pc 47852
	sw	%x10, 0(%x24)  #1953 pc 47856
	lw	%x12, 24(%x2)  #1953 pc 47860
	addi	%x24, %x0, 32  #pc 47864
	add	%x24, %x24, %x20  #1953 pc 47868
	sw	%x12, 0(%x24)  #1953 pc 47872
	addi	%x24, %x0, 28  #pc 47876
	add	%x24, %x24, %x20  #1953 pc 47880
	sw	%x11, 0(%x24)  #1953 pc 47884
	addi	%x24, %x0, 24  #pc 47888
	add	%x24, %x24, %x20  #1953 pc 47892
	sw	%x15, 0(%x24)  #1953 pc 47896
	addi	%x24, %x0, 20  #pc 47900
	add	%x24, %x24, %x20  #1953 pc 47904
	sw	%x9, 0(%x24)  #1953 pc 47908
	addi	%x24, %x0, 16  #pc 47912
	add	%x24, %x24, %x20  #1953 pc 47916
	sw	%x14, 0(%x24)  #1953 pc 47920
	lw	%x11, 160(%x2)  #1953 pc 47924
	addi	%x24, %x0, 12  #pc 47928
	add	%x24, %x24, %x20  #1953 pc 47932
	sw	%x11, 0(%x24)  #1953 pc 47936
	lw	%x15, 28(%x2)  #1953 pc 47940
	addi	%x24, %x0, 8  #pc 47944
	add	%x24, %x24, %x20  #1953 pc 47948
	sw	%x15, 0(%x24)  #1953 pc 47952
	addi	%x24, %x0, 4  #pc 47956
	add	%x24, %x24, %x20  #1953 pc 47960
	sw	%x19, 0(%x24)  #1953 pc 47964
	addi	%x15, %x3, 0  #2046 pc 47968
	addi	%x3, %x3, 56  #2046 pc 47972
	addi	%x24, %x0, 30856  #2046 trace_diffuse_ray.2969 pc 47976
	addi	%x19, %x24, 0  #2046 pc 47980
	add	%x24, %x0, %x15  #2046 pc 47984
	sw	%x19, 0(%x24)  #2046 pc 47988
	addi	%x24, %x0, 48  #pc 47992
	add	%x24, %x24, %x15  #2046 pc 47996
	sw	%x5, 0(%x24)  #2046 pc 48000
	addi	%x24, %x0, 44  #pc 48004
	add	%x24, %x24, %x15  #2046 pc 48008
	sw	%x17, 0(%x24)  #2046 pc 48012
	addi	%x24, %x0, 40  #pc 48016
	add	%x24, %x24, %x15  #2046 pc 48020
	sw	%x7, 0(%x24)  #2046 pc 48024
	addi	%x24, %x0, 36  #pc 48028
	add	%x24, %x24, %x15  #2046 pc 48032
	sw	%x6, 0(%x24)  #2046 pc 48036
	addi	%x24, %x0, 32  #pc 48040
	add	%x24, %x24, %x15  #2046 pc 48044
	sw	%x16, 0(%x24)  #2046 pc 48048
	addi	%x24, %x0, 28  #pc 48052
	add	%x24, %x24, %x15  #2046 pc 48056
	sw	%x13, 0(%x24)  #2046 pc 48060
	addi	%x24, %x0, 24  #pc 48064
	add	%x24, %x24, %x15  #2046 pc 48068
	sw	%x12, 0(%x24)  #2046 pc 48072
	lw	%x5, 164(%x2)  #2046 pc 48076
	addi	%x24, %x0, 20  #pc 48080
	add	%x24, %x24, %x15  #2046 pc 48084
	sw	%x5, 0(%x24)  #2046 pc 48088
	addi	%x24, %x0, 16  #pc 48092
	add	%x24, %x24, %x15  #2046 pc 48096
	sw	%x9, 0(%x24)  #2046 pc 48100
	addi	%x24, %x0, 12  #pc 48104
	add	%x24, %x24, %x15  #2046 pc 48108
	sw	%x14, 0(%x24)  #2046 pc 48112
	addi	%x24, %x0, 8  #pc 48116
	add	%x24, %x24, %x15  #2046 pc 48120
	sw	%x11, 0(%x24)  #2046 pc 48124
	lw	%x5, 76(%x2)  #2046 pc 48128
	addi	%x24, %x0, 4  #pc 48132
	add	%x24, %x24, %x15  #2046 pc 48136
	sw	%x5, 0(%x24)  #2046 pc 48140
	addi	%x6, %x3, 0  #2065 pc 48144
	addi	%x3, %x3, 8  #2065 pc 48148
	addi	%x24, %x0, 31456  #2065 iter_trace_diffuse_rays.2972 pc 48152
	addi	%x7, %x24, 0  #2065 pc 48156
	add	%x24, %x0, %x6  #2065 pc 48160
	sw	%x7, 0(%x24)  #2065 pc 48164
	addi	%x24, %x0, 4  #pc 48168
	add	%x24, %x24, %x6  #2065 pc 48172
	sw	%x15, 0(%x24)  #2065 pc 48176
	addi	%x7, %x3, 0  #2081 pc 48180
	addi	%x3, %x3, 16  #2081 pc 48184
	addi	%x24, %x0, 31784  #2081 trace_diffuse_rays.2977 pc 48188
	addi	%x9, %x24, 0  #2081 pc 48192
	add	%x24, %x0, %x7  #2081 pc 48196
	sw	%x9, 0(%x24)  #2081 pc 48200
	addi	%x24, %x0, 8  #pc 48204
	add	%x24, %x24, %x7  #2081 pc 48208
	sw	%x18, 0(%x24)  #2081 pc 48212
	addi	%x24, %x0, 4  #pc 48216
	add	%x24, %x24, %x7  #2081 pc 48220
	sw	%x6, 0(%x24)  #2081 pc 48224
	addi	%x6, %x3, 0  #2091 pc 48228
	addi	%x3, %x3, 16  #2091 pc 48232
	addi	%x24, %x0, 31888  #2091 trace_diffuse_ray_80percent.2981 pc 48236
	addi	%x9, %x24, 0  #2091 pc 48240
	add	%x24, %x0, %x6  #2091 pc 48244
	sw	%x9, 0(%x24)  #2091 pc 48248
	addi	%x24, %x0, 8  #pc 48252
	add	%x24, %x24, %x6  #2091 pc 48256
	sw	%x7, 0(%x24)  #2091 pc 48260
	lw	%x9, 124(%x2)  #2091 pc 48264
	addi	%x24, %x0, 4  #pc 48268
	add	%x24, %x24, %x6  #2091 pc 48272
	sw	%x9, 0(%x24)  #2091 pc 48276
	addi	%x11, %x3, 0  #2117 pc 48280
	addi	%x3, %x3, 16  #2117 pc 48284
	addi	%x24, %x0, 32336  #2117 calc_diffuse_using_1point.2985 pc 48288
	addi	%x13, %x24, 0  #2117 pc 48292
	add	%x24, %x0, %x11  #2117 pc 48296
	sw	%x13, 0(%x24)  #2117 pc 48300
	addi	%x24, %x0, 12  #pc 48304
	add	%x24, %x24, %x11  #2117 pc 48308
	sw	%x6, 0(%x24)  #2117 pc 48312
	addi	%x24, %x0, 8  #pc 48316
	add	%x24, %x24, %x11  #2117 pc 48320
	sw	%x21, 0(%x24)  #2117 pc 48324
	addi	%x24, %x0, 4  #pc 48328
	add	%x24, %x24, %x11  #2117 pc 48332
	sw	%x5, 0(%x24)  #2117 pc 48336
	addi	%x6, %x3, 0  #2136 pc 48340
	addi	%x3, %x3, 16  #2136 pc 48344
	addi	%x24, %x0, 32696  #2136 calc_diffuse_using_5points.2988 pc 48348
	addi	%x13, %x24, 0  #2136 pc 48352
	add	%x24, %x0, %x6  #2136 pc 48356
	sw	%x13, 0(%x24)  #2136 pc 48360
	addi	%x24, %x0, 8  #pc 48364
	add	%x24, %x24, %x6  #2136 pc 48368
	sw	%x21, 0(%x24)  #2136 pc 48372
	addi	%x24, %x0, 4  #pc 48376
	add	%x24, %x24, %x6  #2136 pc 48380
	sw	%x5, 0(%x24)  #2136 pc 48384
	addi	%x13, %x3, 0  #2156 pc 48388
	addi	%x3, %x3, 8  #2156 pc 48392
	addi	%x24, %x0, 33300  #2156 do_without_neighbors.2994 pc 48396
	addi	%x14, %x24, 0  #2156 pc 48400
	add	%x24, %x0, %x13  #2156 pc 48404
	sw	%x14, 0(%x24)  #2156 pc 48408
	addi	%x24, %x0, 4  #pc 48412
	add	%x24, %x24, %x13  #2156 pc 48416
	sw	%x11, 0(%x24)  #2156 pc 48420
	addi	%x11, %x3, 0  #2171 pc 48424
	addi	%x3, %x3, 8  #2171 pc 48428
	addi	%x24, %x0, 33528  #2171 neighbors_exist.2997 pc 48432
	addi	%x14, %x24, 0  #2171 pc 48436
	add	%x24, %x0, %x11  #2171 pc 48440
	sw	%x14, 0(%x24)  #2171 pc 48444
	lw	%x14, 84(%x2)  #2171 pc 48448
	addi	%x24, %x0, 4  #pc 48452
	add	%x24, %x24, %x11  #2171 pc 48456
	sw	%x14, 0(%x24)  #2171 pc 48460
	addi	%x15, %x3, 0  #2208 pc 48464
	addi	%x3, %x3, 16  #2208 pc 48468
	addi	%x24, %x0, 34124  #2208 try_exploit_neighbors.3010 pc 48472
	addi	%x17, %x24, 0  #2208 pc 48476
	add	%x24, %x0, %x15  #2208 pc 48480
	sw	%x17, 0(%x24)  #2208 pc 48484
	addi	%x24, %x0, 8  #pc 48488
	add	%x24, %x24, %x15  #2208 pc 48492
	sw	%x13, 0(%x24)  #2208 pc 48496
	addi	%x24, %x0, 4  #pc 48500
	add	%x24, %x24, %x15  #2208 pc 48504
	sw	%x6, 0(%x24)  #2208 pc 48508
	addi	%x6, %x3, 0  #2235 pc 48512
	addi	%x3, %x3, 8  #2235 pc 48516
	addi	%x24, %x0, 34512  #2235 write_ppm_header.3017 pc 48520
	addi	%x17, %x24, 0  #2235 pc 48524
	add	%x24, %x0, %x6  #2235 pc 48528
	sw	%x17, 0(%x24)  #2235 pc 48532
	addi	%x24, %x0, 4  #pc 48536
	add	%x24, %x24, %x6  #2235 pc 48540
	sw	%x14, 0(%x24)  #2235 pc 48544
	addi	%x17, %x3, 0  #2261 pc 48548
	addi	%x3, %x3, 8  #2261 pc 48552
	addi	%x24, %x0, 34928  #2261 write_rgb.3023 pc 48556
	addi	%x18, %x24, 0  #2261 pc 48560
	add	%x24, %x0, %x17  #2261 pc 48564
	sw	%x18, 0(%x24)  #2261 pc 48568
	addi	%x24, %x0, 4  #pc 48572
	add	%x24, %x24, %x17  #2261 pc 48576
	sw	%x21, 0(%x24)  #2261 pc 48580
	addi	%x18, %x3, 0  #2284 pc 48584
	addi	%x3, %x3, 16  #2284 pc 48588
	addi	%x24, %x0, 35212  #2284 pretrace_diffuse_rays.3025 pc 48592
	addi	%x19, %x24, 0  #2284 pc 48596
	add	%x24, %x0, %x18  #2284 pc 48600
	sw	%x19, 0(%x24)  #2284 pc 48604
	addi	%x24, %x0, 12  #pc 48608
	add	%x24, %x24, %x18  #2284 pc 48612
	sw	%x7, 0(%x24)  #2284 pc 48616
	addi	%x24, %x0, 8  #pc 48620
	add	%x24, %x24, %x18  #2284 pc 48624
	sw	%x9, 0(%x24)  #2284 pc 48628
	addi	%x24, %x0, 4  #pc 48632
	add	%x24, %x24, %x18  #2284 pc 48636
	sw	%x5, 0(%x24)  #2284 pc 48640
	addi	%x5, %x3, 0  #2314 pc 48644
	addi	%x3, %x3, 40  #2314 pc 48648
	addi	%x24, %x0, 35696  #2314 pretrace_pixels.3028 pc 48652
	addi	%x7, %x24, 0  #2314 pc 48656
	add	%x24, %x0, %x5  #2314 pc 48660
	sw	%x7, 0(%x24)  #2314 pc 48664
	lw	%x7, 20(%x2)  #2314 pc 48668
	addi	%x24, %x0, 36  #pc 48672
	add	%x24, %x24, %x5  #2314 pc 48676
	sw	%x7, 0(%x24)  #2314 pc 48680
	addi	%x24, %x0, 32  #pc 48684
	add	%x24, %x24, %x5  #2314 pc 48688
	sw	%x20, 0(%x24)  #2314 pc 48692
	addi	%x24, %x0, 28  #pc 48696
	add	%x24, %x24, %x5  #2314 pc 48700
	sw	%x23, 0(%x24)  #2314 pc 48704
	lw	%x7, 104(%x2)  #2314 pc 48708
	addi	%x24, %x0, 24  #pc 48712
	add	%x24, %x24, %x5  #2314 pc 48716
	sw	%x7, 0(%x24)  #2314 pc 48720
	lw	%x7, 92(%x2)  #2314 pc 48724
	addi	%x24, %x0, 20  #pc 48728
	add	%x24, %x24, %x5  #2314 pc 48732
	sw	%x7, 0(%x24)  #2314 pc 48736
	addi	%x24, %x0, 16  #pc 48740
	add	%x24, %x24, %x5  #2314 pc 48744
	sw	%x21, 0(%x24)  #2314 pc 48748
	lw	%x19, 116(%x2)  #2314 pc 48752
	addi	%x24, %x0, 12  #pc 48756
	add	%x24, %x24, %x5  #2314 pc 48760
	sw	%x19, 0(%x24)  #2314 pc 48764
	addi	%x24, %x0, 8  #pc 48768
	add	%x24, %x24, %x5  #2314 pc 48772
	sw	%x18, 0(%x24)  #2314 pc 48776
	lw	%x18, 88(%x2)  #2314 pc 48780
	addi	%x24, %x0, 4  #pc 48784
	add	%x24, %x24, %x5  #2314 pc 48788
	sw	%x18, 0(%x24)  #2314 pc 48792
	addi	%x19, %x3, 0  #2339 pc 48796
	addi	%x3, %x3, 32  #2339 pc 48800
	addi	%x24, %x0, 36464  #2339 pretrace_line.3035 pc 48804
	addi	%x20, %x24, 0  #2339 pc 48808
	add	%x24, %x0, %x19  #2339 pc 48812
	sw	%x20, 0(%x24)  #2339 pc 48816
	lw	%x20, 112(%x2)  #2339 pc 48820
	addi	%x24, %x0, 24  #pc 48824
	add	%x24, %x24, %x19  #2339 pc 48828
	sw	%x20, 0(%x24)  #2339 pc 48832
	lw	%x20, 108(%x2)  #2339 pc 48836
	addi	%x24, %x0, 20  #pc 48840
	add	%x24, %x24, %x19  #2339 pc 48844
	sw	%x20, 0(%x24)  #2339 pc 48848
	addi	%x24, %x0, 16  #pc 48852
	add	%x24, %x24, %x19  #2339 pc 48856
	sw	%x7, 0(%x24)  #2339 pc 48860
	addi	%x24, %x0, 12  #pc 48864
	add	%x24, %x24, %x19  #2339 pc 48868
	sw	%x5, 0(%x24)  #2339 pc 48872
	addi	%x24, %x0, 8  #pc 48876
	add	%x24, %x24, %x19  #2339 pc 48880
	sw	%x14, 0(%x24)  #2339 pc 48884
	addi	%x24, %x0, 4  #pc 48888
	add	%x24, %x24, %x19  #2339 pc 48892
	sw	%x18, 0(%x24)  #2339 pc 48896
	addi	%x5, %x3, 0  #2355 pc 48900
	addi	%x3, %x3, 32  #2355 pc 48904
	addi	%x24, %x0, 36772  #2355 scan_pixel.3039 pc 48908
	addi	%x20, %x24, 0  #2355 pc 48912
	add	%x24, %x0, %x5  #2355 pc 48916
	sw	%x20, 0(%x24)  #2355 pc 48920
	addi	%x24, %x0, 24  #pc 48924
	add	%x24, %x24, %x5  #2355 pc 48928
	sw	%x17, 0(%x24)  #2355 pc 48932
	addi	%x24, %x0, 20  #pc 48936
	add	%x24, %x24, %x5  #2355 pc 48940
	sw	%x15, 0(%x24)  #2355 pc 48944
	addi	%x24, %x0, 16  #pc 48948
	add	%x24, %x24, %x5  #2355 pc 48952
	sw	%x21, 0(%x24)  #2355 pc 48956
	addi	%x24, %x0, 12  #pc 48960
	add	%x24, %x24, %x5  #2355 pc 48964
	sw	%x11, 0(%x24)  #2355 pc 48968
	addi	%x24, %x0, 8  #pc 48972
	add	%x24, %x24, %x5  #2355 pc 48976
	sw	%x14, 0(%x24)  #2355 pc 48980
	addi	%x24, %x0, 4  #pc 48984
	add	%x24, %x24, %x5  #2355 pc 48988
	sw	%x13, 0(%x24)  #2355 pc 48992
	addi	%x11, %x3, 0  #2375 pc 48996
	addi	%x3, %x3, 16  #2375 pc 49000
	addi	%x24, %x0, 37232  #2375 scan_line.3046 pc 49004
	addi	%x13, %x24, 0  #2375 pc 49008
	add	%x24, %x0, %x11  #2375 pc 49012
	sw	%x13, 0(%x24)  #2375 pc 49016
	addi	%x24, %x0, 12  #pc 49020
	add	%x24, %x24, %x11  #2375 pc 49024
	sw	%x5, 0(%x24)  #2375 pc 49028
	addi	%x24, %x0, 8  #pc 49032
	add	%x24, %x24, %x11  #2375 pc 49036
	sw	%x19, 0(%x24)  #2375 pc 49040
	addi	%x24, %x0, 4  #pc 49044
	add	%x24, %x24, %x11  #2375 pc 49048
	sw	%x14, 0(%x24)  #2375 pc 49052
	addi	%x5, %x3, 0  #2427 pc 49056
	addi	%x3, %x3, 8  #2427 pc 49060
	addi	%x24, %x0, 38288  #2427 create_pixelline.3060 pc 49064
	addi	%x13, %x24, 0  #2427 pc 49068
	add	%x24, %x0, %x5  #2427 pc 49072
	sw	%x13, 0(%x24)  #2427 pc 49076
	addi	%x24, %x0, 4  #pc 49080
	add	%x24, %x24, %x5  #2427 pc 49084
	sw	%x14, 0(%x24)  #2427 pc 49088
	addi	%x13, %x3, 0  #2455 pc 49092
	addi	%x3, %x3, 8  #2455 pc 49096
	addi	%x24, %x0, 38564  #2455 calc_dirvec.3067 pc 49100
	addi	%x15, %x24, 0  #2455 pc 49104
	add	%x24, %x0, %x13  #2455 pc 49108
	sw	%x15, 0(%x24)  #2455 pc 49112
	addi	%x24, %x0, 4  #pc 49116
	add	%x24, %x24, %x13  #2455 pc 49120
	sw	%x9, 0(%x24)  #2455 pc 49124
	addi	%x15, %x3, 0  #2476 pc 49128
	addi	%x3, %x3, 8  #2476 pc 49132
	addi	%x24, %x0, 39620  #2476 calc_dirvecs.3075 pc 49136
	addi	%x17, %x24, 0  #2476 pc 49140
	add	%x24, %x0, %x15  #2476 pc 49144
	sw	%x17, 0(%x24)  #2476 pc 49148
	addi	%x24, %x0, 4  #pc 49152
	add	%x24, %x24, %x15  #2476 pc 49156
	sw	%x13, 0(%x24)  #2476 pc 49160
	addi	%x13, %x3, 0  #2490 pc 49164
	addi	%x3, %x3, 8  #2490 pc 49168
	addi	%x24, %x0, 39940  #2490 calc_dirvec_rows.3080 pc 49172
	addi	%x17, %x24, 0  #2490 pc 49176
	add	%x24, %x0, %x13  #2490 pc 49180
	sw	%x17, 0(%x24)  #2490 pc 49184
	addi	%x24, %x0, 4  #pc 49188
	add	%x24, %x24, %x13  #2490 pc 49192
	sw	%x15, 0(%x24)  #2490 pc 49196
	addi	%x15, %x3, 0  #2503 pc 49200
	addi	%x3, %x3, 8  #2503 pc 49204
	addi	%x24, %x0, 40144  #2503 create_dirvec.3084 pc 49208
	addi	%x17, %x24, 0  #2503 pc 49212
	add	%x24, %x0, %x15  #2503 pc 49216
	sw	%x17, 0(%x24)  #2503 pc 49220
	lw	%x17, 8(%x2)  #2503 pc 49224
	addi	%x24, %x0, 4  #pc 49228
	add	%x24, %x24, %x15  #2503 pc 49232
	sw	%x17, 0(%x24)  #2503 pc 49236
	addi	%x20, %x3, 0  #2509 pc 49240
	addi	%x3, %x3, 8  #2509 pc 49244
	addi	%x24, %x0, 40276  #2509 create_dirvec_elements.3086 pc 49248
	addi	%x21, %x24, 0  #2509 pc 49252
	add	%x24, %x0, %x20  #2509 pc 49256
	sw	%x21, 0(%x24)  #2509 pc 49260
	addi	%x24, %x0, 4  #pc 49264
	add	%x24, %x24, %x20  #2509 pc 49268
	sw	%x15, 0(%x24)  #2509 pc 49272
	addi	%x21, %x3, 0  #2516 pc 49276
	addi	%x3, %x3, 16  #2516 pc 49280
	addi	%x24, %x0, 40396  #2516 create_dirvecs.3089 pc 49284
	addi	%x22, %x24, 0  #2516 pc 49288
	add	%x24, %x0, %x21  #2516 pc 49292
	sw	%x22, 0(%x24)  #2516 pc 49296
	addi	%x24, %x0, 12  #pc 49300
	add	%x24, %x24, %x21  #2516 pc 49304
	sw	%x9, 0(%x24)  #2516 pc 49308
	addi	%x24, %x0, 8  #pc 49312
	add	%x24, %x24, %x21  #2516 pc 49316
	sw	%x20, 0(%x24)  #2516 pc 49320
	addi	%x24, %x0, 4  #pc 49324
	add	%x24, %x24, %x21  #2516 pc 49328
	sw	%x15, 0(%x24)  #2516 pc 49332
	addi	%x20, %x3, 0  #2528 pc 49336
	addi	%x3, %x3, 8  #2528 pc 49340
	addi	%x24, %x0, 40628  #2528 init_dirvec_constants.3091 pc 49344
	addi	%x22, %x24, 0  #2528 pc 49348
	add	%x24, %x0, %x20  #2528 pc 49352
	sw	%x22, 0(%x24)  #2528 pc 49356
	lw	%x22, 152(%x2)  #2528 pc 49360
	addi	%x24, %x0, 4  #pc 49364
	add	%x24, %x24, %x20  #2528 pc 49368
	sw	%x22, 0(%x24)  #2528 pc 49372
	addi	%x23, %x3, 0  #2535 pc 49376
	addi	%x3, %x3, 16  #2535 pc 49380
	sw	%x5, 168(%x2)  #2535 pc 49384
	addi	%x24, %x0, 40744  #2535 init_vecset_constants.3094 pc 49388
	addi	%x5, %x24, 0  #2535 pc 49392
	add	%x24, %x0, %x23  #2535 pc 49396
	sw	%x5, 0(%x24)  #2535 pc 49400
	addi	%x24, %x0, 8  #pc 49404
	add	%x24, %x24, %x23  #2535 pc 49408
	sw	%x20, 0(%x24)  #2535 pc 49412
	addi	%x24, %x0, 4  #pc 49416
	add	%x24, %x24, %x23  #2535 pc 49420
	sw	%x9, 0(%x24)  #2535 pc 49424
	addi	%x5, %x3, 0  #2542 pc 49428
	addi	%x3, %x3, 16  #2542 pc 49432
	addi	%x24, %x0, 40872  #2542 init_dirvecs.3096 pc 49436
	addi	%x9, %x24, 0  #2542 pc 49440
	add	%x24, %x0, %x5  #2542 pc 49444
	sw	%x9, 0(%x24)  #2542 pc 49448
	addi	%x24, %x0, 12  #pc 49452
	add	%x24, %x24, %x5  #2542 pc 49456
	sw	%x23, 0(%x24)  #2542 pc 49460
	addi	%x24, %x0, 8  #pc 49464
	add	%x24, %x24, %x5  #2542 pc 49468
	sw	%x21, 0(%x24)  #2542 pc 49472
	addi	%x24, %x0, 4  #pc 49476
	add	%x24, %x24, %x5  #2542 pc 49480
	sw	%x13, 0(%x24)  #2542 pc 49484
	addi	%x9, %x3, 0  #2553 pc 49488
	addi	%x3, %x3, 16  #2553 pc 49492
	addi	%x24, %x0, 41012  #2553 add_reflection.3098 pc 49496
	addi	%x13, %x24, 0  #2553 pc 49500
	add	%x24, %x0, %x9  #2553 pc 49504
	sw	%x13, 0(%x24)  #2553 pc 49508
	addi	%x24, %x0, 12  #pc 49512
	add	%x24, %x24, %x9  #2553 pc 49516
	sw	%x22, 0(%x24)  #2553 pc 49520
	lw	%x13, 144(%x2)  #2553 pc 49524
	addi	%x24, %x0, 8  #pc 49528
	add	%x24, %x24, %x9  #2553 pc 49532
	sw	%x13, 0(%x24)  #2553 pc 49536
	addi	%x24, %x0, 4  #pc 49540
	add	%x24, %x24, %x9  #2553 pc 49544
	sw	%x15, 0(%x24)  #2553 pc 49548
	addi	%x13, %x3, 0  #2562 pc 49552
	addi	%x3, %x3, 16  #2562 pc 49556
	addi	%x24, %x0, 41276  #2562 setup_rect_reflection.3105 pc 49560
	addi	%x15, %x24, 0  #2562 pc 49564
	add	%x24, %x0, %x13  #2562 pc 49568
	sw	%x15, 0(%x24)  #2562 pc 49572
	addi	%x24, %x0, 12  #pc 49576
	add	%x24, %x24, %x13  #2562 pc 49580
	sw	%x10, 0(%x24)  #2562 pc 49584
	addi	%x24, %x0, 8  #pc 49588
	add	%x24, %x24, %x13  #2562 pc 49592
	sw	%x12, 0(%x24)  #2562 pc 49596
	addi	%x24, %x0, 4  #pc 49600
	add	%x24, %x24, %x13  #2562 pc 49604
	sw	%x9, 0(%x24)  #2562 pc 49608
	addi	%x15, %x3, 0  #2576 pc 49612
	addi	%x3, %x3, 16  #2576 pc 49616
	addi	%x24, %x0, 41808  #2576 setup_surface_reflection.3108 pc 49620
	addi	%x20, %x24, 0  #2576 pc 49624
	add	%x24, %x0, %x15  #2576 pc 49628
	sw	%x20, 0(%x24)  #2576 pc 49632
	addi	%x24, %x0, 12  #pc 49636
	add	%x24, %x24, %x15  #2576 pc 49640
	sw	%x10, 0(%x24)  #2576 pc 49644
	addi	%x24, %x0, 8  #pc 49648
	add	%x24, %x24, %x15  #2576 pc 49652
	sw	%x12, 0(%x24)  #2576 pc 49656
	addi	%x24, %x0, 4  #pc 49660
	add	%x24, %x24, %x15  #2576 pc 49664
	sw	%x9, 0(%x24)  #2576 pc 49668
	addi	%x9, %x3, 0  #2591 pc 49672
	addi	%x3, %x3, 16  #2591 pc 49676
	addi	%x24, %x0, 42308  #2591 setup_reflections.3111 pc 49680
	addi	%x10, %x24, 0  #2591 pc 49684
	add	%x24, %x0, %x9  #2591 pc 49688
	sw	%x10, 0(%x24)  #2591 pc 49692
	addi	%x24, %x0, 12  #pc 49696
	add	%x24, %x24, %x9  #2591 pc 49700
	sw	%x15, 0(%x24)  #2591 pc 49704
	addi	%x24, %x0, 8  #pc 49708
	add	%x24, %x24, %x9  #2591 pc 49712
	sw	%x13, 0(%x24)  #2591 pc 49716
	addi	%x24, %x0, 4  #pc 49720
	add	%x24, %x24, %x9  #2591 pc 49724
	sw	%x16, 0(%x24)  #2591 pc 49728
	addi	%x10, %x3, 0  #2613 pc 49732
	addi	%x3, %x3, 64  #2613 pc 49736
	addi	%x24, %x0, 42620  #2613 rt.3113 pc 49740
	addi	%x13, %x24, 0  #2613 pc 49744
	add	%x24, %x0, %x10  #2613 pc 49748
	sw	%x13, 0(%x24)  #2613 pc 49752
	addi	%x24, %x0, 56  #pc 49756
	add	%x24, %x24, %x10  #2613 pc 49760
	sw	%x6, 0(%x24)  #2613 pc 49764
	addi	%x24, %x0, 52  #pc 49768
	add	%x24, %x24, %x10  #2613 pc 49772
	sw	%x9, 0(%x24)  #2613 pc 49776
	addi	%x24, %x0, 48  #pc 49780
	add	%x24, %x24, %x10  #2613 pc 49784
	sw	%x22, 0(%x24)  #2613 pc 49788
	addi	%x24, %x0, 44  #pc 49792
	add	%x24, %x24, %x10  #2613 pc 49796
	sw	%x7, 0(%x24)  #2613 pc 49800
	addi	%x24, %x0, 40  #pc 49804
	add	%x24, %x24, %x10  #2613 pc 49808
	sw	%x11, 0(%x24)  #2613 pc 49812
	lw	%x6, 148(%x2)  #2613 pc 49816
	addi	%x24, %x0, 36  #pc 49820
	add	%x24, %x24, %x10  #2613 pc 49824
	sw	%x6, 0(%x24)  #2613 pc 49828
	addi	%x24, %x0, 32  #pc 49832
	add	%x24, %x24, %x10  #2613 pc 49836
	sw	%x19, 0(%x24)  #2613 pc 49840
	addi	%x24, %x0, 28  #pc 49844
	add	%x24, %x24, %x10  #2613 pc 49848
	sw	%x17, 0(%x24)  #2613 pc 49852
	lw	%x6, 136(%x2)  #2613 pc 49856
	addi	%x24, %x0, 24  #pc 49860
	add	%x24, %x24, %x10  #2613 pc 49864
	sw	%x6, 0(%x24)  #2613 pc 49868
	addi	%x24, %x0, 20  #pc 49872
	add	%x24, %x24, %x10  #2613 pc 49876
	sw	%x12, 0(%x24)  #2613 pc 49880
	addi	%x24, %x0, 16  #pc 49884
	add	%x24, %x24, %x10  #2613 pc 49888
	sw	%x5, 0(%x24)  #2613 pc 49892
	addi	%x24, %x0, 12  #pc 49896
	add	%x24, %x24, %x10  #2613 pc 49900
	sw	%x14, 0(%x24)  #2613 pc 49904
	addi	%x24, %x0, 8  #pc 49908
	add	%x24, %x24, %x10  #2613 pc 49912
	sw	%x18, 0(%x24)  #2613 pc 49916
	lw	%x5, 168(%x2)  #2613 pc 49920
	addi	%x24, %x0, 4  #pc 49924
	add	%x24, %x24, %x10  #2613 pc 49928
	sw	%x5, 0(%x24)  #2613 pc 49932
	addi	%x5, %x0, 8  #0 pc 49936
	addi	%x7, %x0, 3  #0 pc 49940
	addi	%x6, %x5, 0  #0 pc 49944
	addi	%x22, %x10, 0  #0 pc 49948
	sw	%x1, 172(%x2)  #2634 pc 49952
	lw	%x23, 0(%x22)  #2634 pc 49956
	addi	%x2, %x2, 176  #2634 pc 49960
	jalr	%x1, %x23, 0  #2634 pc 49964
	addi	%x2, %x2, -176  #2634 pc 49968
	lw	%x1, 172(%x2)  #2634 pc 49972
	addi	%x2, %x2, 112
