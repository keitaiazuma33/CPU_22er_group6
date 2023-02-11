.section	".rodata"
.align	8
l.7065:	! 128.000000
l.7016:	! 0.900000
l.6905:	! 150.000000
l.6902:	! -150.000000
l.6883:	! 0.100000
l.6879:	! -2.000000
l.6876:	! 0.003906
l.6844:	! 20.000000
l.6842:	! 0.050000
l.6834:	! 0.250000
l.6821:	! 0.300000
l.6819:	! 255.000000
l.6814:	! 0.150000
l.6807:	! 3.141593
l.6805:	! 30.000000
l.6803:	! 15.000000
l.6801:	! 0.000100
l.6752:	! 100000000.000000
l.6746:	! 1000000000.000000
l.6723:	! -0.100000
l.6709:	! 0.010000
l.6707:	! -0.200000
l.6488:	! 2.000000
l.6451:	! -200.000000
l.6448:	! 200.000000
l.6443:	! 0.017453
l.6355:	! -1.000000
l.6345:	! 10.000000
l.6332:	! 0.090909
l.6330:	! 0.111111
l.6328:	! 0.142857
l.6326:	! 0.200000
l.6324:	! 0.333333
l.6322:	! 0.001389
l.6320:	! 0.041667
l.6317:	! 1.000000
l.6315:	! 0.000198
l.6313:	! 0.008333
l.6311:	! 0.166667
l.6309:	! 0.500000
l.6305:	! 0.000000
.section	".text"
fiszero.2534:  #pc 0
	fmv	%f1, l.6305  #0 pc 0
	feq	%f31, %f0, %f1  #1 pc 4
	bge	%f30, %f31, 12  #1 pc 8
	j	fbe_else.9180 #pc 12
	nop #pc 16
	addi	%x5, %x0, 1  #0 pc 20
	ret #pc 24
	nop #pc 28
fbe_else.9180: #pc 32
	addi	%x5, %x0, 0  #0 pc 32
	ret #pc 36
	nop #pc 40
fispos.2536:  #pc 44
	fmv	%f1, l.6305  #0 pc 44
	fle	%f31, %f0, %f1  #3 pc 48
	bge	%f30, %f31, 12  #3 pc 52
	j	fble_else.9181 #pc 56
	nop #pc 60
	addi	%x5, %x0, 0  #0 pc 64
	ret #pc 68
	nop #pc 72
fble_else.9181: #pc 76
	addi	%x5, %x0, 1  #0 pc 76
	ret #pc 80
	nop #pc 84
fisneg.2538:  #pc 88
	fmv	%f1, l.6305  #0 pc 88
	fle	%f31, %f1, %f0  #5 pc 92
	bge	%f30, %f31, 12  #5 pc 96
	j	fble_else.9182 #pc 100
	nop #pc 104
	addi	%x5, %x0, 0  #0 pc 108
	ret #pc 112
	nop #pc 116
fble_else.9182: #pc 120
	addi	%x5, %x0, 1  #0 pc 120
	ret #pc 124
	nop #pc 128
fneg.2540:  #pc 132
	fsub	%f0, %f30, %f0  #7 pc 132
	ret #pc 136
	nop #pc 140
fsqr.2542:  #pc 144
	fmul	%f0, %f0, %f0  #9 pc 144
	ret #pc 148
	nop #pc 152
fhalf.2544:  #pc 156
	fmv	%f1, l.6309  #0 pc 156
	fmul	%f0, %f1, %f0  #11 pc 160
	ret #pc 164
	nop #pc 168
fless.2546:  #pc 172
	fle	%f31, %f1, %f0  #13 pc 172
	bge	%f30, %f31, 12  #13 pc 176
	j	fble_else.9183 #pc 180
	nop #pc 184
	addi	%x5, %x0, 0  #0 pc 188
	ret #pc 192
	nop #pc 196
fble_else.9183: #pc 200
	addi	%x5, %x0, 1  #0 pc 200
	ret #pc 204
	nop #pc 208
sin.2549:  #pc 212
	fmul	%f1, %f0, %f0  #16 pc 212
	fmul	%f2, %f0, %f1  #17 pc 216
	fmul	%f3, %f2, %f1  #18 pc 220
	fmul	%f1, %f3, %f1  #19 pc 224
	fmv	%f4, l.6311  #0 pc 228
	fmul	%f2, %f4, %f2  #20 pc 232
	fsub	%f0, %f0, %f2  #20 pc 236
	fmv	%f2, l.6313  #0 pc 240
	fmul	%f2, %f2, %f3  #20 pc 244
	fadd	%f0, %f0, %f2  #20 pc 248
	fmv	%f2, l.6315  #0 pc 252
	fmul	%f1, %f2, %f1  #20 pc 256
	fsub	%f0, %f0, %f1  #20 pc 260
	ret #pc 264
	nop #pc 268
cos.2551:  #pc 272
	fmul	%f0, %f0, %f0  #24 pc 272
	fmul	%f1, %f0, %f0  #25 pc 276
	fmul	%f2, %f1, %f0  #26 pc 280
	fmv	%f3, l.6317  #0 pc 284
	fmv	%f4, l.6309  #0 pc 288
	fmul	%f0, %f4, %f0  #27 pc 292
	fsub	%f0, %f3, %f0  #27 pc 296
	fmv	%f3, l.6320  #0 pc 300
	fmul	%f1, %f3, %f1  #27 pc 304
	fadd	%f0, %f0, %f1  #27 pc 308
	fmv	%f1, l.6322  #0 pc 312
	fmul	%f1, %f1, %f2  #27 pc 316
	fsub	%f0, %f0, %f1  #27 pc 320
	ret #pc 324
	nop #pc 328
atan.2553:  #pc 332
	fmul	%f1, %f0, %f0  #31 pc 332
	fmul	%f2, %f0, %f1  #32 pc 336
	fmul	%f3, %f2, %f1  #33 pc 340
	fmul	%f4, %f3, %f1  #34 pc 344
	fmul	%f5, %f4, %f1  #35 pc 348
	fmul	%f1, %f5, %f1  #36 pc 352
	fmv	%f6, l.6324  #0 pc 356
	fmul	%f2, %f6, %f2  #37 pc 360
	fsub	%f0, %f0, %f2  #37 pc 364
	fmv	%f2, l.6326  #0 pc 368
	fmul	%f2, %f2, %f3  #37 pc 372
	fadd	%f0, %f0, %f2  #37 pc 376
	fmv	%f2, l.6328  #0 pc 380
	fmul	%f2, %f2, %f4  #37 pc 384
	fsub	%f0, %f0, %f2  #37 pc 388
	fmv	%f2, l.6330  #0 pc 392
	fmul	%f2, %f2, %f5  #37 pc 396
	fadd	%f0, %f0, %f2  #37 pc 400
	fmv	%f2, l.6332  #0 pc 404
	fmul	%f1, %f2, %f1  #37 pc 408
	fsub	%f0, %f0, %f1  #37 pc 412
	ret #pc 416
	nop #pc 420
floor.2555:  #pc 424
	fmv	%f1, l.6305  #0 pc 424
	fle	%f31, %f1, %f0  #41 pc 428
	bge	%f30, %f31, 12  #41 pc 432
	j	fble_else.9184 #pc 436
	nop #pc 440
	ftoi	%x5, %f0  #42 pc 444
	itof	%f0, %x5  #42 pc 448
	ret #pc 452
	nop #pc 456
fble_else.9184: #pc 460
	fmv	%f1, l.6317  #0 pc 460
	fsub	%f0, %f0, %f1  #44 pc 464
	ftoi	%x5, %f0  #44 pc 468
	itof	%f0, %x5  #44 pc 472
	ret #pc 476
	nop #pc 480
float_of_int.2559:  #pc 484
	itof	%f0, %x5  #50 pc 484
	ret #pc 488
	nop #pc 492
int_of_float.2561:  #pc 496
	ftoi	%x5, %f0  #53 pc 496
	ret #pc 500
	nop #pc 504
mul_abs.2563:  #pc 508
	addi	%x31, %x0, -1  #pc 508
	beq	%x7, %x31, 12  #57 pc 512
	j	be_else.9185 #pc 516
	nop #pc 520
	addi	%x5, %x8, 0  #58 pc 524
	ret #pc 528
	nop #pc 532
be_else.9185: #pc 536
	addi	%x9, %x0, 1  #0 pc 536
	sll	%x9, %x9, %x7  #60 pc 540
	and	%x9, %x6, %x9  #60 pc 544
	beq	%x9, %x0, 12  #60 pc 548
	j	be_else.9186 #pc 552
	nop #pc 556
	addi	%x7, %x7, -1  #61 pc 560
	j	mul_abs.2563  #61 pc 564
	nop #pc 568
be_else.9186: #pc 572
	addi	%x9, %x7, -1  #63 pc 572
	sll	%x7, %x5, %x7  #63 pc 576
	add	%x8, %x8, %x7  #63 pc 580
	addi	%x7, %x9, 0  #0 pc 584
	j	mul_abs.2563  #63 pc 588
	nop #pc 592
mul.2568:  #pc 596
	bge	%x5, %x0, 12  #67 pc 596
	j	bge_else.9187 #pc 600
	nop #pc 604
	addi	%x7, %x5, 0  #67 pc 608
	j	bge_cont.9188 #pc 612
	nop #pc 616
bge_else.9187: #pc 620
	sub	%x7, %x0, %x5  #67 pc 620
bge_cont.9188: #pc 624
	bge	%x6, %x0, 12  #68 pc 624
	j	bge_else.9189 #pc 628
	nop #pc 632
	addi	%x8, %x6, 0  #68 pc 636
	j	bge_cont.9190 #pc 640
	nop #pc 644
bge_else.9189: #pc 648
	sub	%x8, %x0, %x6  #68 pc 648
bge_cont.9190: #pc 652
	addi	%x9, %x0, 30  #0 pc 652
	addi	%x10, %x0, 0  #0 pc 656
	sw	%x6, 0(%x2)  #69 pc 660
	sw	%x5, 4(%x2)  #69 pc 664
	addi	%x6, %x8, 0  #0 pc 668
	addi	%x5, %x7, 0  #0 pc 672
	addi	%x8, %x10, 0  #0 pc 676
	addi	%x7, %x9, 0  #0 pc 680
	sw	%x1, 8(%x2)  #69 pc 684
	addi	%x2, %x2, 12  #69 pc 688
	jal	%x1, mul_abs.2563  #69 pc 692
	addi	%x2, %x2, -12  #69 pc 696
	lw	%x1, 8(%x2) #69 pc 700
	lw	%x6, 4(%x2)  #70 pc 704
	srli	%x6, %x6, 31  #70 pc 708
	lw	%x7, 0(%x2)  #70 pc 712
	srli	%x7, %x7, 31  #70 pc 716
	beq	%x6, %x7, 12  #70 pc 720
	j	be_else.9191 #pc 724
	nop #pc 728
	ret #pc 732
	nop #pc 736
be_else.9191: #pc 740
	sub	%x5, %x0, %x5  #73 pc 740
	ret #pc 744
	nop #pc 748
div_abs.2571:  #pc 752
	addi	%x31, %x0, -1  #pc 752
	beq	%x7, %x31, 12  #77 pc 756
	j	be_else.9192 #pc 760
	nop #pc 764
	addi	%x5, %x8, 0  #78 pc 768
	ret #pc 772
	nop #pc 776
be_else.9192: #pc 780
	srl	%x9, %x5, %x7  #80 pc 780
	bge	%x9, %x6, 12  #80 pc 784
	j	ble_else.9193 #pc 788
	nop #pc 792
	sll	%x9, %x6, %x7  #81 pc 796
	sub	%x5, %x5, %x9  #81 pc 800
	addi	%x9, %x7, -1  #81 pc 804
	addi	%x10, %x0, 1  #0 pc 808
	sll	%x7, %x10, %x7  #81 pc 812
	add	%x8, %x8, %x7  #81 pc 816
	addi	%x7, %x9, 0  #0 pc 820
	j	div_abs.2571  #81 pc 824
	nop #pc 828
ble_else.9193: #pc 832
	addi	%x7, %x7, -1  #83 pc 832
	j	div_abs.2571  #83 pc 836
	nop #pc 840
div.2576:  #pc 844
	bge	%x5, %x0, 12  #87 pc 844
	j	bge_else.9194 #pc 848
	nop #pc 852
	addi	%x7, %x5, 0  #87 pc 856
	j	bge_cont.9195 #pc 860
	nop #pc 864
bge_else.9194: #pc 868
	sub	%x7, %x0, %x5  #87 pc 868
bge_cont.9195: #pc 872
	bge	%x6, %x0, 12  #88 pc 872
	j	bge_else.9196 #pc 876
	nop #pc 880
	addi	%x8, %x6, 0  #88 pc 884
	j	bge_cont.9197 #pc 888
	nop #pc 892
bge_else.9196: #pc 896
	sub	%x8, %x0, %x6  #88 pc 896
bge_cont.9197: #pc 900
	addi	%x9, %x0, 30  #0 pc 900
	addi	%x10, %x0, 0  #0 pc 904
	sw	%x6, 0(%x2)  #89 pc 908
	sw	%x5, 4(%x2)  #89 pc 912
	addi	%x6, %x8, 0  #0 pc 916
	addi	%x5, %x7, 0  #0 pc 920
	addi	%x8, %x10, 0  #0 pc 924
	addi	%x7, %x9, 0  #0 pc 928
	sw	%x1, 8(%x2)  #89 pc 932
	addi	%x2, %x2, 12  #89 pc 936
	jal	%x1, div_abs.2571  #89 pc 940
	addi	%x2, %x2, -12  #89 pc 944
	lw	%x1, 8(%x2) #89 pc 948
	lw	%x6, 4(%x2)  #90 pc 952
	srli	%x6, %x6, 31  #90 pc 956
	lw	%x7, 0(%x2)  #90 pc 960
	srli	%x7, %x7, 31  #90 pc 964
	beq	%x6, %x7, 12  #90 pc 968
	j	be_else.9198 #pc 972
	nop #pc 976
	ret #pc 980
	nop #pc 984
be_else.9198: #pc 988
	sub	%x5, %x0, %x5  #93 pc 988
	ret #pc 992
	nop #pc 996
print_char.2579:  #pc 1000
	out	%x5  #96 pc 1000
	ret #pc 1004
	nop #pc 1008
print_int.2581:  #pc 1012
	bge	%x5, %x0, 12  #100 pc 1012
	j	bge_else.9200 #pc 1016
	nop #pc 1020
	addi	%x31, %x0, 10  #pc 1024
	bge	%x5, %x31, 12  #104 pc 1028
	j	bge_else.9201 #pc 1032
	nop #pc 1036
	addi	%x6, %x0, 10  #0 pc 1040
	sw	%x5, 0(%x2)  #107 pc 1044
	sw	%x1, 4(%x2)  #107 pc 1048
	addi	%x2, %x2, 8  #107 pc 1052
	jal	%x1, div.2576  #107 pc 1056
	addi	%x2, %x2, -8  #107 pc 1060
	lw	%x1, 4(%x2) #107 pc 1064
	sw	%x5, 4(%x2)  #108 pc 1068
	sw	%x1, 8(%x2)  #108 pc 1072
	addi	%x2, %x2, 12  #108 pc 1076
	jal	%x1, print_int.2581  #108 pc 1080
	addi	%x2, %x2, -12  #108 pc 1084
	lw	%x1, 8(%x2) #108 pc 1088
	addi	%x6, %x0, 10  #0 pc 1092
	lw	%x5, 4(%x2)  #109 pc 1096
	sw	%x1, 8(%x2)  #109 pc 1100
	addi	%x2, %x2, 12  #109 pc 1104
	jal	%x1, mul.2568  #109 pc 1108
	addi	%x2, %x2, -12  #109 pc 1112
	lw	%x1, 8(%x2) #109 pc 1116
	lw	%x6, 0(%x2)  #109 pc 1120
	sub	%x5, %x6, %x5  #109 pc 1124
	addi	%x5, %x5, 48  #109 pc 1128
	out	%x5  #109 pc 1132
	ret #pc 1136
	nop #pc 1140
bge_else.9201: #pc 1144
	addi	%x5, %x5, 48  #105 pc 1144
	out	%x5  #105 pc 1148
	ret #pc 1152
	nop #pc 1156
bge_else.9200: #pc 1160
	addi	%x6, %x0, 45  #0 pc 1160
	out	%x6  #101 pc 1164
	sub	%x5, %x0, %x5  #102 pc 1168
	j	print_int.2581  #102 pc 1172
	nop #pc 1176
read_int_sub.2583:  #pc 1180
	in	%x7  #113 pc 1180
	addi	%x31, %x0, 48  #pc 1184
	bge	%x7, %x31, 12  #114 pc 1188
	j	bge_else.9204 #pc 1192
	nop #pc 1196
	addi	%x31, %x0, 57  #pc 1200
	bge	%x31, %x7, 12  #115 pc 1204
	j	ble_else.9205 #pc 1208
	nop #pc 1212
	addi	%x8, %x0, 10  #0 pc 1216
	sw	%x6, 0(%x2)  #116 pc 1220
	sw	%x7, 4(%x2)  #116 pc 1224
	addi	%x6, %x8, 0  #0 pc 1228
	sw	%x1, 8(%x2)  #116 pc 1232
	addi	%x2, %x2, 12  #116 pc 1236
	jal	%x1, mul.2568  #116 pc 1240
	addi	%x2, %x2, -12  #116 pc 1244
	lw	%x1, 8(%x2) #116 pc 1248
	lw	%x6, 4(%x2)  #116 pc 1252
	addi	%x6, %x6, -48  #116 pc 1256
	add	%x5, %x5, %x6  #116 pc 1260
	lw	%x6, 0(%x2)  #116 pc 1264
	addi	%x6, %x6, 1  #116 pc 1268
	j	read_int_sub.2583  #116 pc 1272
	nop #pc 1276
ble_else.9205: #pc 1280
	addi	%x31, %x0, 45  #pc 1280
	beq	%x7, %x31, 12  #118 pc 1284
	j	be_else.9206 #pc 1288
	nop #pc 1292
	sw	%x1, 8(%x2)  #119 pc 1296
	addi	%x2, %x2, 12  #119 pc 1300
	jal	%x1, read_int_sub.2583  #119 pc 1304
	addi	%x2, %x2, -12  #119 pc 1308
	lw	%x1, 8(%x2) #119 pc 1312
	lw	%x6, 4(%x5)  #119 pc 1316
	lw	%x5, 0(%x5)  #119 pc 1320
	sub	%x5, %x0, %x5  #120 pc 1324
	addi	%x7, %x3, 0  #120 pc 1328
	addi	%x3, %x3, 8  #120 pc 1332
	sw	%x6, 4(%x7)  #120 pc 1336
	sw	%x5, 0(%x7)  #120 pc 1340
	addi	%x5, %x7, 0  #120 pc 1344
	ret #pc 1348
	nop #pc 1352
be_else.9206: #pc 1356
	addi	%x7, %x3, 0  #121 pc 1356
	addi	%x3, %x3, 8  #121 pc 1360
	sw	%x6, 4(%x7)  #121 pc 1364
	sw	%x5, 0(%x7)  #121 pc 1368
	addi	%x5, %x7, 0  #121 pc 1372
	ret #pc 1376
	nop #pc 1380
bge_else.9204: #pc 1384
	addi	%x7, %x3, 0  #123 pc 1384
	addi	%x3, %x3, 8  #123 pc 1388
	sw	%x6, 4(%x7)  #123 pc 1392
	sw	%x5, 0(%x7)  #123 pc 1396
	addi	%x5, %x7, 0  #123 pc 1400
	ret #pc 1404
	nop #pc 1408
read_int.2586:  #pc 1412
	addi	%x5, %x0, 0  #0 pc 1412
	addi	%x6, %x0, 0  #0 pc 1416
	sw	%x1, 0(%x2)  #127 pc 1420
	addi	%x2, %x2, 4  #127 pc 1424
	jal	%x1, read_int_sub.2583  #127 pc 1428
	addi	%x2, %x2, -4  #127 pc 1432
	lw	%x1, 0(%x2) #127 pc 1436
	lw	%x5, 0(%x5)  #127 pc 1440
	ret #pc 1444
	nop #pc 1448
pow.2588:  #pc 1452
	bge	%x0, %x5, 12  #132 pc 1452
	j	ble_else.9207 #pc 1456
	nop #pc 1460
	ret #pc 1464
	nop #pc 1468
ble_else.9207: #pc 1472
	itof	%f1, %x5  #135 pc 1472
	fmul	%f0, %f0, %f1  #135 pc 1476
	addi	%x5, %x5, -1  #135 pc 1480
	j	pow.2588  #135 pc 1484
	nop #pc 1488
read_float_sub.2591:  #pc 1492
	in	%x5  #139 pc 1492
	addi	%x31, %x0, 48  #pc 1496
	bge	%x5, %x31, 12  #140 pc 1500
	j	bge_else.9208 #pc 1504
	nop #pc 1508
	addi	%x31, %x0, 57  #pc 1512
	bge	%x31, %x5, 12  #141 pc 1516
	j	ble_else.9209 #pc 1520
	nop #pc 1524
	fmv	%f1, l.6345  #0 pc 1528
	fmul	%f0, %f0, %f1  #142 pc 1532
	addi	%x5, %x5, -48  #142 pc 1536
	itof	%f1, %x5  #142 pc 1540
	fadd	%f0, %f0, %f1  #142 pc 1544
	j	read_float_sub.2591  #142 pc 1548
	nop #pc 1552
ble_else.9209: #pc 1556
	addi	%x31, %x0, 45  #pc 1556
	beq	%x5, %x31, 12  #144 pc 1560
	j	be_else.9210 #pc 1564
	nop #pc 1568
	sw	%x1, 0(%x2)  #145 pc 1572
	addi	%x2, %x2, 4  #145 pc 1576
	jal	%x1, read_float_sub.2591  #145 pc 1580
	addi	%x2, %x2, -4  #145 pc 1584
	lw	%x1, 0(%x2) #145 pc 1588
	fsub	%f0, %f30, %f0  #145 pc 1592
	ret #pc 1596
	nop #pc 1600
be_else.9210: #pc 1604
	addi	%x31, %x0, 46  #pc 1604
	beq	%x5, %x31, 12  #147 pc 1608
	j	be_else.9211 #pc 1612
	nop #pc 1616
	addi	%x5, %x0, 0  #0 pc 1620
	addi	%x6, %x0, 0  #0 pc 1624
	fsw	%f0, 0(%x2)  #148 pc 1628
	sw	%x1, 8(%x2)  #148 pc 1632
	addi	%x2, %x2, 12  #148 pc 1636
	jal	%x1, read_int_sub.2583  #148 pc 1640
	addi	%x2, %x2, -12  #148 pc 1644
	lw	%x1, 8(%x2) #148 pc 1648
	lw	%x6, 4(%x5)  #148 pc 1652
	lw	%x5, 0(%x5)  #148 pc 1656
	itof	%f0, %x5  #149 pc 1660
	fmv	%f1, l.6345  #0 pc 1664
	fsw	%f0, 8(%x2)  #149 pc 1668
	addi	%x5, %x6, 0  #0 pc 1672
	fadd	%f0, %f1, %f30  #0 pc 1676
	sw	%x1, 16(%x2)  #149 pc 1680
	addi	%x2, %x2, 20  #149 pc 1684
	jal	%x1, pow.2588  #149 pc 1688
	addi	%x2, %x2, -20  #149 pc 1692
	lw	%x1, 16(%x2) #149 pc 1696
	flw	%f1, 8(%x2)  #149 pc 1700
	fdiv	%f0, %f1, %f0  #149 pc 1704
	flw	%f1, 0(%x2)  #149 pc 1708
	fadd	%f0, %f1, %f0  #149 pc 1712
	ret #pc 1716
	nop #pc 1720
be_else.9211: #pc 1724
	ret #pc 1724
	nop #pc 1728
bge_else.9208: #pc 1732
	ret #pc 1732
	nop #pc 1736
read_float.2593:  #pc 1740
	fmv	%f0, l.6305  #0 pc 1740
	j	read_float_sub.2591  #156 pc 1744
	nop #pc 1748
assign_array.2595:  #pc 1752
	bge	%x7, %x0, 12  #160 pc 1752
	j	bge_else.9212 #pc 1756
	nop #pc 1760
	beq	%x7, %x0, 12  #163 pc 1764
	j	be_else.9213 #pc 1768
	nop #pc 1772
	slli	%x7, %x7, 2  #164 pc 1776
	add	%x31, %x7, %x5  #164 pc 1780
	sw	%x6, 0(%x31)  #164 pc 1784
	ret #pc 1788
	nop #pc 1792
be_else.9213: #pc 1796
	slli	%x8, %x7, 2  #166 pc 1796
	add	%x31, %x8, %x5  #166 pc 1800
	sw	%x6, 0(%x31)  #166 pc 1804
	addi	%x7, %x7, -1  #167 pc 1808
	j	assign_array.2595  #167 pc 1812
	nop #pc 1816
bge_else.9212: #pc 1820
	ret #pc 1820
	nop #pc 1824
create_array.2599:  #pc 1828
	addi	%x7, %x3, 0  #171 pc 1828
	addi	%x8, %x7, 0  #172 pc 1832
	slli	%x9, %x5, 2  #173 pc 1836
	add	%x7, %x7, %x9  #173 pc 1840
	addi	%x3, %x7, 0  #173 pc 1844
	addi	%x7, %x5, -1  #174 pc 1848
	sw	%x8, 0(%x2)  #174 pc 1852
	addi	%x5, %x8, 0  #0 pc 1856
	sw	%x1, 4(%x2)  #174 pc 1860
	addi	%x2, %x2, 8  #174 pc 1864
	jal	%x1, assign_array.2595  #174 pc 1868
	addi	%x2, %x2, -8  #174 pc 1872
	lw	%x1, 4(%x2) #174 pc 1876
	lw	%x5, 0(%x2)  #175 pc 1880
	ret #pc 1884
	nop #pc 1888
assign_farray.2602:  #pc 1892
	bge	%x6, %x0, 12  #179 pc 1892
	j	bge_else.9216 #pc 1896
	nop #pc 1900
	beq	%x6, %x0, 12  #182 pc 1904
	j	be_else.9217 #pc 1908
	nop #pc 1912
	slli	%x6, %x6, 2  #183 pc 1916
	add	%x31, %x6, %x5  #183 pc 1920
	fsw	%f0, 0(%x31) #183 pc 1924
	ret #pc 1928
	nop #pc 1932
be_else.9217: #pc 1936
	slli	%x7, %x6, 2  #185 pc 1936
	add	%x31, %x7, %x5  #185 pc 1940
	fsw	%f0, 0(%x31) #185 pc 1944
	addi	%x6, %x6, -1  #186 pc 1948
	j	assign_farray.2602  #186 pc 1952
	nop #pc 1956
bge_else.9216: #pc 1960
	ret #pc 1960
	nop #pc 1964
create_float_array.2606:  #pc 1968
	addi	%x6, %x3, 0  #190 pc 1968
	addi	%x7, %x6, 0  #191 pc 1972
	slli	%x8, %x5, 2  #192 pc 1976
	add	%x6, %x6, %x8  #192 pc 1980
	addi	%x3, %x6, 0  #192 pc 1984
	addi	%x6, %x5, -1  #193 pc 1988
	sw	%x7, 0(%x2)  #193 pc 1992
	addi	%x5, %x7, 0  #0 pc 1996
	sw	%x1, 4(%x2)  #193 pc 2000
	addi	%x2, %x2, 8  #193 pc 2004
	jal	%x1, assign_farray.2602  #193 pc 2008
	addi	%x2, %x2, -8  #193 pc 2012
	lw	%x1, 4(%x2) #193 pc 2016
	lw	%x5, 0(%x2)  #194 pc 2020
	ret #pc 2024
	nop #pc 2028
xor.2639:  #pc 2032
	beq	%x5, %x0, 12  #332 pc 2032
	j	be_else.9220 #pc 2036
	nop #pc 2040
	addi	%x5, %x6, 0  #332 pc 2044
	ret #pc 2048
	nop #pc 2052
be_else.9220: #pc 2056
	beq	%x6, %x0, 12  #332 pc 2056
	j	be_else.9221 #pc 2060
	nop #pc 2064
	addi	%x5, %x0, 1  #0 pc 2068
	ret #pc 2072
	nop #pc 2076
be_else.9221: #pc 2080
	addi	%x5, %x0, 0  #0 pc 2080
	ret #pc 2084
	nop #pc 2088
sgn.2642:  #pc 2092
	fsw	%f0, 0(%x2)  #340 pc 2092
	sw	%x1, 8(%x2)  #340 pc 2096
	addi	%x2, %x2, 12  #340 pc 2100
	jal	%x1, fiszero.2534  #340 pc 2104
	addi	%x2, %x2, -12  #340 pc 2108
	lw	%x1, 8(%x2) #340 pc 2112
	beq	%x5, %x0, 12  #340 pc 2116
	j	be_else.9222 #pc 2120
	nop #pc 2124
	flw	%f0, 0(%x2)  #341 pc 2128
	sw	%x1, 8(%x2)  #341 pc 2132
	addi	%x2, %x2, 12  #341 pc 2136
	jal	%x1, fispos.2536  #341 pc 2140
	addi	%x2, %x2, -12  #341 pc 2144
	lw	%x1, 8(%x2) #341 pc 2148
	beq	%x5, %x0, 12  #341 pc 2152
	j	be_else.9223 #pc 2156
	nop #pc 2160
	addi	%x5, l.6355, 0  #0 pc 2164
	ret #pc 2168
	nop #pc 2172
be_else.9223: #pc 2176
	addi	%x5, l.6317, 0  #0 pc 2176
	ret #pc 2180
	nop #pc 2184
be_else.9222: #pc 2188
	addi	%x5, l.6305, 0  #0 pc 2188
	ret #pc 2192
	nop #pc 2196
fneg_cond.2644:  #pc 2200
	beq	%x5, %x0, 12  #347 pc 2200
	j	be_else.9224 #pc 2204
	nop #pc 2208
	j	fneg.2540  #347 pc 2212
	nop #pc 2216
be_else.9224: #pc 2220
	ret #pc 2220
	nop #pc 2224
add_mod5.2647:  #pc 2228
	add	%x5, %x5, %x6  #352 pc 2228
	addi	%x31, %x0, 5  #pc 2232
	bge	%x5, %x31, 12  #353 pc 2236
	j	bge_else.9225 #pc 2240
	nop #pc 2244
	addi	%x5, %x5, -5  #353 pc 2248
	ret #pc 2252
	nop #pc 2256
bge_else.9225: #pc 2260
	ret #pc 2260
	nop #pc 2264
vecset.2650:  #pc 2268
	fsw	%f0, 0(%x5)  #368 pc 2268
	fsw	%f1, 4(%x5)  #369 pc 2272
	fsw	%f2, 8(%x5)  #370 pc 2276
	ret #pc 2280
	nop #pc 2284
vecfill.2655:  #pc 2288
	fsw	%f0, 0(%x5)  #375 pc 2288
	fsw	%f0, 4(%x5)  #376 pc 2292
	fsw	%f0, 8(%x5)  #377 pc 2296
	ret #pc 2300
	nop #pc 2304
vecbzero.2658:  #pc 2308
	fmv	%f0, l.6305  #0 pc 2308
	j	vecfill.2655  #382 pc 2312
	nop #pc 2316
veccpy.2660:  #pc 2320
	flw	%f0, 0(%x6)  #387 pc 2320
	fsw	%f0, 0(%x5)  #387 pc 2324
	flw	%f0, 4(%x6)  #388 pc 2328
	fsw	%f0, 4(%x5)  #388 pc 2332
	flw	%f0, 8(%x6)  #389 pc 2336
	fsw	%f0, 8(%x5)  #389 pc 2340
	ret #pc 2344
	nop #pc 2348
vecunit_sgn.2663:  #pc 2352
	flw	%f0, 0(%x5)  #411 pc 2352
	sw	%x6, 0(%x2)  #411 pc 2356
	sw	%x5, 4(%x2)  #411 pc 2360
	sw	%x1, 8(%x2)  #411 pc 2364
	addi	%x2, %x2, 12  #411 pc 2368
	jal	%x1, fsqr.2542  #411 pc 2372
	addi	%x2, %x2, -12  #411 pc 2376
	lw	%x1, 8(%x2) #411 pc 2380
	lw	%x5, 4(%x2)  #411 pc 2384
	flw	%f1, 4(%x5)  #411 pc 2388
	fsw	%f0, 8(%x2)  #411 pc 2392
	fadd	%f0, %f1, %f30  #0 pc 2396
	sw	%x1, 16(%x2)  #411 pc 2400
	addi	%x2, %x2, 20  #411 pc 2404
	jal	%x1, fsqr.2542  #411 pc 2408
	addi	%x2, %x2, -20  #411 pc 2412
	lw	%x1, 16(%x2) #411 pc 2416
	flw	%f1, 8(%x2)  #411 pc 2420
	fadd	%f0, %f1, %f0  #411 pc 2424
	lw	%x5, 4(%x2)  #411 pc 2428
	flw	%f1, 8(%x5)  #411 pc 2432
	fsw	%f0, 16(%x2)  #411 pc 2436
	fadd	%f0, %f1, %f30  #0 pc 2440
	sw	%x1, 24(%x2)  #411 pc 2444
	addi	%x2, %x2, 28  #411 pc 2448
	jal	%x1, fsqr.2542  #411 pc 2452
	addi	%x2, %x2, -28  #411 pc 2456
	lw	%x1, 24(%x2) #411 pc 2460
	flw	%f1, 16(%x2)  #411 pc 2464
	fadd	%f0, %f1, %f0  #411 pc 2468
	fsqrt	%f0, %f0  #411 pc 2472
	fsw	%f0, 24(%x2)  #412 pc 2476
	sw	%x1, 32(%x2)  #412 pc 2480
	addi	%x2, %x2, 36  #412 pc 2484
	jal	%x1, fiszero.2534  #412 pc 2488
	addi	%x2, %x2, -36  #412 pc 2492
	lw	%x1, 32(%x2) #412 pc 2496
	beq	%x5, %x0, 12  #412 pc 2500
	j	be_else.9229 #pc 2504
	nop #pc 2508
	lw	%x5, 0(%x2)  #412 pc 2512
	beq	%x5, %x0, 12  #412 pc 2516
	j	be_else.9231 #pc 2520
	nop #pc 2524
	fmv	%f0, l.6317  #0 pc 2528
	flw	%f1, 24(%x2)  #412 pc 2532
	fdiv	%f0, %f0, %f1  #412 pc 2536
	j	be_cont.9232 #pc 2540
	nop #pc 2544
be_else.9231: #pc 2548
	fmv	%f0, l.6355  #0 pc 2548
	flw	%f1, 24(%x2)  #412 pc 2552
	fdiv	%f0, %f0, %f1  #412 pc 2556
be_cont.9232: #pc 2560
	j	be_cont.9230 #pc 2560
	nop #pc 2564
be_else.9229: #pc 2568
	fmv	%f0, l.6317  #0 pc 2568
be_cont.9230: #pc 2572
	lw	%x5, 4(%x2)  #413 pc 2572
	flw	%f1, 0(%x5)  #413 pc 2576
	fmul	%f1, %f1, %f0  #413 pc 2580
	fsw	%f1, 0(%x5)  #413 pc 2584
	flw	%f1, 4(%x5)  #414 pc 2588
	fmul	%f1, %f1, %f0  #414 pc 2592
	fsw	%f1, 4(%x5)  #414 pc 2596
	flw	%f1, 8(%x5)  #415 pc 2600
	fmul	%f0, %f1, %f0  #415 pc 2604
	fsw	%f0, 8(%x5)  #415 pc 2608
	ret #pc 2612
	nop #pc 2616
veciprod.2666:  #pc 2620
	flw	%f0, 0(%x5)  #420 pc 2620
	flw	%f1, 0(%x6)  #420 pc 2624
	fmul	%f0, %f0, %f1  #420 pc 2628
	flw	%f1, 4(%x5)  #420 pc 2632
	flw	%f2, 4(%x6)  #420 pc 2636
	fmul	%f1, %f1, %f2  #420 pc 2640
	fadd	%f0, %f0, %f1  #420 pc 2644
	flw	%f1, 8(%x5)  #420 pc 2648
	flw	%f2, 8(%x6)  #420 pc 2652
	fmul	%f1, %f1, %f2  #420 pc 2656
	fadd	%f0, %f0, %f1  #420 pc 2660
	ret #pc 2664
	nop #pc 2668
veciprod2.2669:  #pc 2672
	flw	%f3, 0(%x5)  #425 pc 2672
	fmul	%f0, %f3, %f0  #425 pc 2676
	flw	%f3, 4(%x5)  #425 pc 2680
	fmul	%f1, %f3, %f1  #425 pc 2684
	fadd	%f0, %f0, %f1  #425 pc 2688
	flw	%f1, 8(%x5)  #425 pc 2692
	fmul	%f1, %f1, %f2  #425 pc 2696
	fadd	%f0, %f0, %f1  #425 pc 2700
	ret #pc 2704
	nop #pc 2708
vecaccum.2674:  #pc 2712
	flw	%f1, 0(%x5)  #430 pc 2712
	flw	%f2, 0(%x6)  #430 pc 2716
	fmul	%f2, %f0, %f2  #430 pc 2720
	fadd	%f1, %f1, %f2  #430 pc 2724
	fsw	%f1, 0(%x5)  #430 pc 2728
	flw	%f1, 4(%x5)  #431 pc 2732
	flw	%f2, 4(%x6)  #431 pc 2736
	fmul	%f2, %f0, %f2  #431 pc 2740
	fadd	%f1, %f1, %f2  #431 pc 2744
	fsw	%f1, 4(%x5)  #431 pc 2748
	flw	%f1, 8(%x5)  #432 pc 2752
	flw	%f2, 8(%x6)  #432 pc 2756
	fmul	%f0, %f0, %f2  #432 pc 2760
	fadd	%f0, %f1, %f0  #432 pc 2764
	fsw	%f0, 8(%x5)  #432 pc 2768
	ret #pc 2772
	nop #pc 2776
vecadd.2678:  #pc 2780
	flw	%f0, 0(%x5)  #437 pc 2780
	flw	%f1, 0(%x6)  #437 pc 2784
	fadd	%f0, %f0, %f1  #437 pc 2788
	fsw	%f0, 0(%x5)  #437 pc 2792
	flw	%f0, 4(%x5)  #438 pc 2796
	flw	%f1, 4(%x6)  #438 pc 2800
	fadd	%f0, %f0, %f1  #438 pc 2804
	fsw	%f0, 4(%x5)  #438 pc 2808
	flw	%f0, 8(%x5)  #439 pc 2812
	flw	%f1, 8(%x6)  #439 pc 2816
	fadd	%f0, %f0, %f1  #439 pc 2820
	fsw	%f0, 8(%x5)  #439 pc 2824
	ret #pc 2828
	nop #pc 2832
vecscale.2681:  #pc 2836
	flw	%f1, 0(%x5)  #453 pc 2836
	fmul	%f1, %f1, %f0  #453 pc 2840
	fsw	%f1, 0(%x5)  #453 pc 2844
	flw	%f1, 4(%x5)  #454 pc 2848
	fmul	%f1, %f1, %f0  #454 pc 2852
	fsw	%f1, 4(%x5)  #454 pc 2856
	flw	%f1, 8(%x5)  #455 pc 2860
	fmul	%f0, %f1, %f0  #455 pc 2864
	fsw	%f0, 8(%x5)  #455 pc 2868
	ret #pc 2872
	nop #pc 2876
vecaccumv.2684:  #pc 2880
	flw	%f0, 0(%x5)  #460 pc 2880
	flw	%f1, 0(%x6)  #460 pc 2884
	flw	%f2, 0(%x7)  #460 pc 2888
	fmul	%f1, %f1, %f2  #460 pc 2892
	fadd	%f0, %f0, %f1  #460 pc 2896
	fsw	%f0, 0(%x5)  #460 pc 2900
	flw	%f0, 4(%x5)  #461 pc 2904
	flw	%f1, 4(%x6)  #461 pc 2908
	flw	%f2, 4(%x7)  #461 pc 2912
	fmul	%f1, %f1, %f2  #461 pc 2916
	fadd	%f0, %f0, %f1  #461 pc 2920
	fsw	%f0, 4(%x5)  #461 pc 2924
	flw	%f0, 8(%x5)  #462 pc 2928
	flw	%f1, 8(%x6)  #462 pc 2932
	flw	%f2, 8(%x7)  #462 pc 2936
	fmul	%f1, %f1, %f2  #462 pc 2940
	fadd	%f0, %f0, %f1  #462 pc 2944
	fsw	%f0, 8(%x5)  #462 pc 2948
	ret #pc 2952
	nop #pc 2956
o_texturetype.2688:  #pc 2960
	lw	%x5, 0(%x5)  #471 pc 2960
	ret #pc 2964
	nop #pc 2968
o_form.2690:  #pc 2972
	lw	%x5, 4(%x5)  #481 pc 2972
	ret #pc 2976
	nop #pc 2980
o_reflectiontype.2692:  #pc 2984
	lw	%x5, 8(%x5)  #491 pc 2984
	ret #pc 2988
	nop #pc 2992
o_isinvert.2694:  #pc 2996
	lw	%x5, 24(%x5)  #501 pc 2996
	ret #pc 3000
	nop #pc 3004
o_isrot.2696:  #pc 3008
	lw	%x5, 12(%x5)  #510 pc 3008
	ret #pc 3012
	nop #pc 3016
o_param_a.2698:  #pc 3020
	lw	%x5, 16(%x5)  #519 pc 3020
	flw	%f0, 0(%x5)  #524 pc 3024
	ret #pc 3028
	nop #pc 3032
o_param_b.2700:  #pc 3036
	lw	%x5, 16(%x5)  #529 pc 3036
	flw	%f0, 4(%x5)  #534 pc 3040
	ret #pc 3044
	nop #pc 3048
o_param_c.2702:  #pc 3052
	lw	%x5, 16(%x5)  #539 pc 3052
	flw	%f0, 8(%x5)  #544 pc 3056
	ret #pc 3060
	nop #pc 3064
o_param_abc.2704:  #pc 3068
	lw	%x5, 16(%x5)  #549 pc 3068
	ret #pc 3072
	nop #pc 3076
o_param_x.2706:  #pc 3080
	lw	%x5, 20(%x5)  #559 pc 3080
	flw	%f0, 0(%x5)  #564 pc 3084
	ret #pc 3088
	nop #pc 3092
o_param_y.2708:  #pc 3096
	lw	%x5, 20(%x5)  #569 pc 3096
	flw	%f0, 4(%x5)  #574 pc 3100
	ret #pc 3104
	nop #pc 3108
o_param_z.2710:  #pc 3112
	lw	%x5, 20(%x5)  #579 pc 3112
	flw	%f0, 8(%x5)  #584 pc 3116
	ret #pc 3120
	nop #pc 3124
o_diffuse.2712:  #pc 3128
	lw	%x5, 28(%x5)  #589 pc 3128
	flw	%f0, 0(%x5)  #594 pc 3132
	ret #pc 3136
	nop #pc 3140
o_hilight.2714:  #pc 3144
	lw	%x5, 28(%x5)  #599 pc 3144
	flw	%f0, 4(%x5)  #604 pc 3148
	ret #pc 3152
	nop #pc 3156
o_color_red.2716:  #pc 3160
	lw	%x5, 32(%x5)  #609 pc 3160
	flw	%f0, 0(%x5)  #614 pc 3164
	ret #pc 3168
	nop #pc 3172
o_color_green.2718:  #pc 3176
	lw	%x5, 32(%x5)  #619 pc 3176
	flw	%f0, 4(%x5)  #624 pc 3180
	ret #pc 3184
	nop #pc 3188
o_color_blue.2720:  #pc 3192
	lw	%x5, 32(%x5)  #629 pc 3192
	flw	%f0, 8(%x5)  #634 pc 3196
	ret #pc 3200
	nop #pc 3204
o_param_r1.2722:  #pc 3208
	lw	%x5, 36(%x5)  #639 pc 3208
	flw	%f0, 0(%x5)  #644 pc 3212
	ret #pc 3216
	nop #pc 3220
o_param_r2.2724:  #pc 3224
	lw	%x5, 36(%x5)  #649 pc 3224
	flw	%f0, 4(%x5)  #654 pc 3228
	ret #pc 3232
	nop #pc 3236
o_param_r3.2726:  #pc 3240
	lw	%x5, 36(%x5)  #659 pc 3240
	flw	%f0, 8(%x5)  #664 pc 3244
	ret #pc 3248
	nop #pc 3252
o_param_ctbl.2728:  #pc 3256
	lw	%x5, 40(%x5)  #676 pc 3256
	ret #pc 3260
	nop #pc 3264
p_rgb.2730:  #pc 3268
	lw	%x5, 0(%x5)  #690 pc 3268
	ret #pc 3272
	nop #pc 3276
p_intersection_points.2732:  #pc 3280
	lw	%x5, 4(%x5)  #697 pc 3280
	ret #pc 3284
	nop #pc 3288
p_surface_ids.2734:  #pc 3292
	lw	%x5, 8(%x5)  #705 pc 3292
	ret #pc 3296
	nop #pc 3300
p_calc_diffuse.2736:  #pc 3304
	lw	%x5, 12(%x5)  #712 pc 3304
	ret #pc 3308
	nop #pc 3312
p_energy.2738:  #pc 3316
	lw	%x5, 16(%x5)  #719 pc 3316
	ret #pc 3320
	nop #pc 3324
p_received_ray_20percent.2740:  #pc 3328
	lw	%x5, 20(%x5)  #726 pc 3328
	ret #pc 3332
	nop #pc 3336
p_group_id.2742:  #pc 3340
	lw	%x5, 24(%x5)  #742 pc 3340
	lw	%x5, 0(%x5)  #744 pc 3344
	ret #pc 3348
	nop #pc 3352
p_set_group_id.2744:  #pc 3356
	lw	%x5, 24(%x5)  #749 pc 3356
	sw	%x6, 0(%x5)  #751 pc 3360
	ret #pc 3364
	nop #pc 3368
p_nvectors.2747:  #pc 3372
	lw	%x5, 28(%x5)  #756 pc 3372
	ret #pc 3376
	nop #pc 3380
d_vec.2749:  #pc 3384
	lw	%x5, 0(%x5)  #767 pc 3384
	ret #pc 3388
	nop #pc 3392
d_const.2751:  #pc 3396
	lw	%x5, 4(%x5)  #773 pc 3396
	ret #pc 3400
	nop #pc 3404
r_surface_id.2753:  #pc 3408
	lw	%x5, 0(%x5)  #783 pc 3408
	ret #pc 3412
	nop #pc 3416
r_dvec.2755:  #pc 3420
	lw	%x5, 4(%x5)  #789 pc 3420
	ret #pc 3424
	nop #pc 3428
r_bright.2757:  #pc 3432
	flw	%f0, 8(%x5)  #795 pc 3432
	ret #pc 3436
	nop #pc 3440
rad.2759:  #pc 3444
	fmv	%f1, l.6443  #0 pc 3444
	fmul	%f0, %f0, %f1  #805 pc 3448
	ret #pc 3452
	nop #pc 3456
read_screen_settings.2761:  #pc 3460
	lw	%x5, 20(%x29)  #0 pc 3460
	lw	%x6, 16(%x29)  #0 pc 3464
	lw	%x7, 12(%x29)  #0 pc 3468
	lw	%x8, 8(%x29)  #0 pc 3472
	lw	%x9, 4(%x29)  #0 pc 3476
	sw	%x5, 0(%x2)  #812 pc 3480
	sw	%x7, 4(%x2)  #812 pc 3484
	sw	%x8, 8(%x2)  #812 pc 3488
	sw	%x6, 12(%x2)  #812 pc 3492
	sw	%x9, 16(%x2)  #812 pc 3496
	sw	%x1, 20(%x2)  #812 pc 3500
	addi	%x2, %x2, 24  #812 pc 3504
	jal	%x1, read_float.2593  #812 pc 3508
	addi	%x2, %x2, -24  #812 pc 3512
	lw	%x1, 20(%x2) #812 pc 3516
	lw	%x5, 16(%x2)  #812 pc 3520
	fsw	%f0, 0(%x5)  #812 pc 3524
	sw	%x1, 20(%x2)  #813 pc 3528
	addi	%x2, %x2, 24  #813 pc 3532
	jal	%x1, read_float.2593  #813 pc 3536
	addi	%x2, %x2, -24  #813 pc 3540
	lw	%x1, 20(%x2) #813 pc 3544
	lw	%x5, 16(%x2)  #813 pc 3548
	fsw	%f0, 4(%x5)  #813 pc 3552
	sw	%x1, 20(%x2)  #814 pc 3556
	addi	%x2, %x2, 24  #814 pc 3560
	jal	%x1, read_float.2593  #814 pc 3564
	addi	%x2, %x2, -24  #814 pc 3568
	lw	%x1, 20(%x2) #814 pc 3572
	lw	%x5, 16(%x2)  #814 pc 3576
	fsw	%f0, 8(%x5)  #814 pc 3580
	sw	%x1, 20(%x2)  #816 pc 3584
	addi	%x2, %x2, 24  #816 pc 3588
	jal	%x1, read_float.2593  #816 pc 3592
	addi	%x2, %x2, -24  #816 pc 3596
	lw	%x1, 20(%x2) #816 pc 3600
	sw	%x1, 20(%x2)  #816 pc 3604
	addi	%x2, %x2, 24  #816 pc 3608
	jal	%x1, rad.2759  #816 pc 3612
	addi	%x2, %x2, -24  #816 pc 3616
	lw	%x1, 20(%x2) #816 pc 3620
	fsw	%f0, 24(%x2)  #817 pc 3624
	sw	%x1, 32(%x2)  #817 pc 3628
	addi	%x2, %x2, 36  #817 pc 3632
	jal	%x1, cos.2551  #817 pc 3636
	addi	%x2, %x2, -36  #817 pc 3640
	lw	%x1, 32(%x2) #817 pc 3644
	flw	%f1, 24(%x2)  #818 pc 3648
	fsw	%f0, 32(%x2)  #818 pc 3652
	fadd	%f0, %f1, %f30  #0 pc 3656
	sw	%x1, 40(%x2)  #818 pc 3660
	addi	%x2, %x2, 44  #818 pc 3664
	jal	%x1, sin.2549  #818 pc 3668
	addi	%x2, %x2, -44  #818 pc 3672
	lw	%x1, 40(%x2) #818 pc 3676
	fsw	%f0, 40(%x2)  #819 pc 3680
	sw	%x1, 48(%x2)  #819 pc 3684
	addi	%x2, %x2, 52  #819 pc 3688
	jal	%x1, read_float.2593  #819 pc 3692
	addi	%x2, %x2, -52  #819 pc 3696
	lw	%x1, 48(%x2) #819 pc 3700
	sw	%x1, 48(%x2)  #819 pc 3704
	addi	%x2, %x2, 52  #819 pc 3708
	jal	%x1, rad.2759  #819 pc 3712
	addi	%x2, %x2, -52  #819 pc 3716
	lw	%x1, 48(%x2) #819 pc 3720
	fsw	%f0, 48(%x2)  #820 pc 3724
	sw	%x1, 56(%x2)  #820 pc 3728
	addi	%x2, %x2, 60  #820 pc 3732
	jal	%x1, cos.2551  #820 pc 3736
	addi	%x2, %x2, -60  #820 pc 3740
	lw	%x1, 56(%x2) #820 pc 3744
	flw	%f1, 48(%x2)  #821 pc 3748
	fsw	%f0, 56(%x2)  #821 pc 3752
	fadd	%f0, %f1, %f30  #0 pc 3756
	sw	%x1, 64(%x2)  #821 pc 3760
	addi	%x2, %x2, 68  #821 pc 3764
	jal	%x1, sin.2549  #821 pc 3768
	addi	%x2, %x2, -68  #821 pc 3772
	lw	%x1, 64(%x2) #821 pc 3776
	flw	%f1, 32(%x2)  #823 pc 3780
	fmul	%f2, %f1, %f0  #823 pc 3784
	fmv	%f3, l.6448  #0 pc 3788
	fmul	%f2, %f2, %f3  #823 pc 3792
	lw	%x5, 12(%x2)  #823 pc 3796
	fsw	%f2, 0(%x5)  #823 pc 3800
	fmv	%f2, l.6451  #0 pc 3804
	flw	%f3, 40(%x2)  #824 pc 3808
	fmul	%f2, %f3, %f2  #824 pc 3812
	fsw	%f2, 4(%x5)  #824 pc 3816
	flw	%f2, 56(%x2)  #825 pc 3820
	fmul	%f4, %f1, %f2  #825 pc 3824
	fmv	%f5, l.6448  #0 pc 3828
	fmul	%f4, %f4, %f5  #825 pc 3832
	fsw	%f4, 8(%x5)  #825 pc 3836
	lw	%x6, 8(%x2)  #827 pc 3840
	fsw	%f2, 0(%x6)  #827 pc 3844
	fmv	%f4, l.6305  #0 pc 3848
	fsw	%f4, 4(%x6)  #828 pc 3852
	fsw	%f0, 64(%x2)  #829 pc 3856
	sw	%x1, 72(%x2)  #829 pc 3860
	addi	%x2, %x2, 76  #829 pc 3864
	jal	%x1, fneg.2540  #829 pc 3868
	addi	%x2, %x2, -76  #829 pc 3872
	lw	%x1, 72(%x2) #829 pc 3876
	lw	%x5, 8(%x2)  #829 pc 3880
	fsw	%f0, 8(%x5)  #829 pc 3884
	flw	%f0, 40(%x2)  #831 pc 3888
	sw	%x1, 72(%x2)  #831 pc 3892
	addi	%x2, %x2, 76  #831 pc 3896
	jal	%x1, fneg.2540  #831 pc 3900
	addi	%x2, %x2, -76  #831 pc 3904
	lw	%x1, 72(%x2) #831 pc 3908
	flw	%f1, 64(%x2)  #831 pc 3912
	fmul	%f0, %f0, %f1  #831 pc 3916
	lw	%x5, 4(%x2)  #831 pc 3920
	fsw	%f0, 0(%x5)  #831 pc 3924
	flw	%f0, 32(%x2)  #832 pc 3928
	sw	%x1, 72(%x2)  #832 pc 3932
	addi	%x2, %x2, 76  #832 pc 3936
	jal	%x1, fneg.2540  #832 pc 3940
	addi	%x2, %x2, -76  #832 pc 3944
	lw	%x1, 72(%x2) #832 pc 3948
	lw	%x5, 4(%x2)  #832 pc 3952
	fsw	%f0, 4(%x5)  #832 pc 3956
	flw	%f0, 40(%x2)  #833 pc 3960
	sw	%x1, 72(%x2)  #833 pc 3964
	addi	%x2, %x2, 76  #833 pc 3968
	jal	%x1, fneg.2540  #833 pc 3972
	addi	%x2, %x2, -76  #833 pc 3976
	lw	%x1, 72(%x2) #833 pc 3980
	flw	%f1, 56(%x2)  #833 pc 3984
	fmul	%f0, %f0, %f1  #833 pc 3988
	lw	%x5, 4(%x2)  #833 pc 3992
	fsw	%f0, 8(%x5)  #833 pc 3996
	lw	%x5, 16(%x2)  #835 pc 4000
	flw	%f0, 0(%x5)  #835 pc 4004
	lw	%x6, 12(%x2)  #835 pc 4008
	flw	%f1, 0(%x6)  #835 pc 4012
	fsub	%f0, %f0, %f1  #835 pc 4016
	lw	%x7, 0(%x2)  #835 pc 4020
	fsw	%f0, 0(%x7)  #835 pc 4024
	flw	%f0, 4(%x5)  #836 pc 4028
	flw	%f1, 4(%x6)  #836 pc 4032
	fsub	%f0, %f0, %f1  #836 pc 4036
	fsw	%f0, 4(%x7)  #836 pc 4040
	flw	%f0, 8(%x5)  #837 pc 4044
	flw	%f1, 8(%x6)  #837 pc 4048
	fsub	%f0, %f0, %f1  #837 pc 4052
	fsw	%f0, 8(%x7)  #837 pc 4056
	ret #pc 4060
	nop #pc 4064
read_light.2763:  #pc 4068
	lw	%x5, 8(%x29)  #0 pc 4068
	lw	%x6, 4(%x29)  #0 pc 4072
	sw	%x6, 0(%x2)  #844 pc 4076
	sw	%x5, 4(%x2)  #844 pc 4080
	sw	%x1, 8(%x2)  #844 pc 4084
	addi	%x2, %x2, 12  #844 pc 4088
	jal	%x1, read_int.2586  #844 pc 4092
	addi	%x2, %x2, -12  #844 pc 4096
	lw	%x1, 8(%x2) #844 pc 4100
	sw	%x1, 8(%x2)  #847 pc 4104
	addi	%x2, %x2, 12  #847 pc 4108
	jal	%x1, read_float.2593  #847 pc 4112
	addi	%x2, %x2, -12  #847 pc 4116
	lw	%x1, 8(%x2) #847 pc 4120
	sw	%x1, 8(%x2)  #847 pc 4124
	addi	%x2, %x2, 12  #847 pc 4128
	jal	%x1, rad.2759  #847 pc 4132
	addi	%x2, %x2, -12  #847 pc 4136
	lw	%x1, 8(%x2) #847 pc 4140
	fsw	%f0, 8(%x2)  #848 pc 4144
	sw	%x1, 16(%x2)  #848 pc 4148
	addi	%x2, %x2, 20  #848 pc 4152
	jal	%x1, sin.2549  #848 pc 4156
	addi	%x2, %x2, -20  #848 pc 4160
	lw	%x1, 16(%x2) #848 pc 4164
	sw	%x1, 16(%x2)  #849 pc 4168
	addi	%x2, %x2, 20  #849 pc 4172
	jal	%x1, fneg.2540  #849 pc 4176
	addi	%x2, %x2, -20  #849 pc 4180
	lw	%x1, 16(%x2) #849 pc 4184
	lw	%x5, 4(%x2)  #849 pc 4188
	fsw	%f0, 4(%x5)  #849 pc 4192
	sw	%x1, 16(%x2)  #850 pc 4196
	addi	%x2, %x2, 20  #850 pc 4200
	jal	%x1, read_float.2593  #850 pc 4204
	addi	%x2, %x2, -20  #850 pc 4208
	lw	%x1, 16(%x2) #850 pc 4212
	sw	%x1, 16(%x2)  #850 pc 4216
	addi	%x2, %x2, 20  #850 pc 4220
	jal	%x1, rad.2759  #850 pc 4224
	addi	%x2, %x2, -20  #850 pc 4228
	lw	%x1, 16(%x2) #850 pc 4232
	flw	%f1, 8(%x2)  #851 pc 4236
	fsw	%f0, 16(%x2)  #851 pc 4240
	fadd	%f0, %f1, %f30  #0 pc 4244
	sw	%x1, 24(%x2)  #851 pc 4248
	addi	%x2, %x2, 28  #851 pc 4252
	jal	%x1, cos.2551  #851 pc 4256
	addi	%x2, %x2, -28  #851 pc 4260
	lw	%x1, 24(%x2) #851 pc 4264
	flw	%f1, 16(%x2)  #852 pc 4268
	fsw	%f0, 24(%x2)  #852 pc 4272
	fadd	%f0, %f1, %f30  #0 pc 4276
	sw	%x1, 32(%x2)  #852 pc 4280
	addi	%x2, %x2, 36  #852 pc 4284
	jal	%x1, sin.2549  #852 pc 4288
	addi	%x2, %x2, -36  #852 pc 4292
	lw	%x1, 32(%x2) #852 pc 4296
	flw	%f1, 24(%x2)  #853 pc 4300
	fmul	%f0, %f1, %f0  #853 pc 4304
	lw	%x5, 4(%x2)  #853 pc 4308
	fsw	%f0, 0(%x5)  #853 pc 4312
	flw	%f0, 16(%x2)  #854 pc 4316
	sw	%x1, 32(%x2)  #854 pc 4320
	addi	%x2, %x2, 36  #854 pc 4324
	jal	%x1, cos.2551  #854 pc 4328
	addi	%x2, %x2, -36  #854 pc 4332
	lw	%x1, 32(%x2) #854 pc 4336
	flw	%f1, 24(%x2)  #855 pc 4340
	fmul	%f0, %f1, %f0  #855 pc 4344
	lw	%x5, 4(%x2)  #855 pc 4348
	fsw	%f0, 8(%x5)  #855 pc 4352
	sw	%x1, 32(%x2)  #856 pc 4356
	addi	%x2, %x2, 36  #856 pc 4360
	jal	%x1, read_float.2593  #856 pc 4364
	addi	%x2, %x2, -36  #856 pc 4368
	lw	%x1, 32(%x2) #856 pc 4372
	lw	%x5, 0(%x2)  #856 pc 4376
	fsw	%f0, 0(%x5)  #856 pc 4380
	ret #pc 4384
	nop #pc 4388
rotate_quadratic_matrix.2765:  #pc 4392
	flw	%f0, 0(%x6)  #866 pc 4392
	sw	%x5, 0(%x2)  #866 pc 4396
	sw	%x6, 4(%x2)  #866 pc 4400
	sw	%x1, 8(%x2)  #866 pc 4404
	addi	%x2, %x2, 12  #866 pc 4408
	jal	%x1, cos.2551  #866 pc 4412
	addi	%x2, %x2, -12  #866 pc 4416
	lw	%x1, 8(%x2) #866 pc 4420
	lw	%x5, 4(%x2)  #867 pc 4424
	flw	%f1, 0(%x5)  #867 pc 4428
	fsw	%f0, 8(%x2)  #867 pc 4432
	fadd	%f0, %f1, %f30  #0 pc 4436
	sw	%x1, 16(%x2)  #867 pc 4440
	addi	%x2, %x2, 20  #867 pc 4444
	jal	%x1, sin.2549  #867 pc 4448
	addi	%x2, %x2, -20  #867 pc 4452
	lw	%x1, 16(%x2) #867 pc 4456
	lw	%x5, 4(%x2)  #868 pc 4460
	flw	%f1, 4(%x5)  #868 pc 4464
	fsw	%f0, 16(%x2)  #868 pc 4468
	fadd	%f0, %f1, %f30  #0 pc 4472
	sw	%x1, 24(%x2)  #868 pc 4476
	addi	%x2, %x2, 28  #868 pc 4480
	jal	%x1, cos.2551  #868 pc 4484
	addi	%x2, %x2, -28  #868 pc 4488
	lw	%x1, 24(%x2) #868 pc 4492
	lw	%x5, 4(%x2)  #869 pc 4496
	flw	%f1, 4(%x5)  #869 pc 4500
	fsw	%f0, 24(%x2)  #869 pc 4504
	fadd	%f0, %f1, %f30  #0 pc 4508
	sw	%x1, 32(%x2)  #869 pc 4512
	addi	%x2, %x2, 36  #869 pc 4516
	jal	%x1, sin.2549  #869 pc 4520
	addi	%x2, %x2, -36  #869 pc 4524
	lw	%x1, 32(%x2) #869 pc 4528
	lw	%x5, 4(%x2)  #870 pc 4532
	flw	%f1, 8(%x5)  #870 pc 4536
	fsw	%f0, 32(%x2)  #870 pc 4540
	fadd	%f0, %f1, %f30  #0 pc 4544
	sw	%x1, 40(%x2)  #870 pc 4548
	addi	%x2, %x2, 44  #870 pc 4552
	jal	%x1, cos.2551  #870 pc 4556
	addi	%x2, %x2, -44  #870 pc 4560
	lw	%x1, 40(%x2) #870 pc 4564
	lw	%x5, 4(%x2)  #871 pc 4568
	flw	%f1, 8(%x5)  #871 pc 4572
	fsw	%f0, 40(%x2)  #871 pc 4576
	fadd	%f0, %f1, %f30  #0 pc 4580
	sw	%x1, 48(%x2)  #871 pc 4584
	addi	%x2, %x2, 52  #871 pc 4588
	jal	%x1, sin.2549  #871 pc 4592
	addi	%x2, %x2, -52  #871 pc 4596
	lw	%x1, 48(%x2) #871 pc 4600
	flw	%f1, 40(%x2)  #873 pc 4604
	flw	%f2, 24(%x2)  #873 pc 4608
	fmul	%f3, %f2, %f1  #873 pc 4612
	flw	%f4, 32(%x2)  #874 pc 4616
	flw	%f5, 16(%x2)  #874 pc 4620
	fmul	%f6, %f5, %f4  #874 pc 4624
	fmul	%f6, %f6, %f1  #874 pc 4628
	flw	%f7, 8(%x2)  #874 pc 4632
	fmul	%f8, %f7, %f0  #874 pc 4636
	fsub	%f6, %f6, %f8  #874 pc 4640
	fmul	%f8, %f7, %f4  #875 pc 4644
	fmul	%f8, %f8, %f1  #875 pc 4648
	fmul	%f9, %f5, %f0  #875 pc 4652
	fadd	%f8, %f8, %f9  #875 pc 4656
	fmul	%f9, %f2, %f0  #877 pc 4660
	fmul	%f10, %f5, %f4  #878 pc 4664
	fmul	%f10, %f10, %f0  #878 pc 4668
	fmul	%f11, %f7, %f1  #878 pc 4672
	fadd	%f10, %f10, %f11  #878 pc 4676
	fmul	%f11, %f7, %f4  #879 pc 4680
	fmul	%f0, %f11, %f0  #879 pc 4684
	fmul	%f1, %f5, %f1  #879 pc 4688
	fsub	%f0, %f0, %f1  #879 pc 4692
	fsw	%f0, 48(%x2)  #881 pc 4696
	fsw	%f8, 56(%x2)  #881 pc 4700
	fsw	%f10, 64(%x2)  #881 pc 4704
	fsw	%f6, 72(%x2)  #881 pc 4708
	fsw	%f9, 80(%x2)  #881 pc 4712
	fsw	%f3, 88(%x2)  #881 pc 4716
	fadd	%f0, %f4, %f30  #0 pc 4720
	sw	%x1, 96(%x2)  #881 pc 4724
	addi	%x2, %x2, 100  #881 pc 4728
	jal	%x1, fneg.2540  #881 pc 4732
	addi	%x2, %x2, -100  #881 pc 4736
	lw	%x1, 96(%x2) #881 pc 4740
	flw	%f1, 24(%x2)  #882 pc 4744
	flw	%f2, 16(%x2)  #882 pc 4748
	fmul	%f2, %f2, %f1  #882 pc 4752
	flw	%f3, 8(%x2)  #883 pc 4756
	fmul	%f1, %f3, %f1  #883 pc 4760
	lw	%x5, 0(%x2)  #886 pc 4764
	flw	%f3, 0(%x5)  #886 pc 4768
	flw	%f4, 4(%x5)  #887 pc 4772
	flw	%f5, 8(%x5)  #888 pc 4776
	flw	%f6, 88(%x2)  #893 pc 4780
	fsw	%f1, 96(%x2)  #893 pc 4784
	fsw	%f2, 104(%x2)  #893 pc 4788
	fsw	%f5, 112(%x2)  #893 pc 4792
	fsw	%f0, 120(%x2)  #893 pc 4796
	fsw	%f4, 128(%x2)  #893 pc 4800
	fsw	%f3, 136(%x2)  #893 pc 4804
	fadd	%f0, %f6, %f30  #0 pc 4808
	sw	%x1, 144(%x2)  #893 pc 4812
	addi	%x2, %x2, 148  #893 pc 4816
	jal	%x1, fsqr.2542  #893 pc 4820
	addi	%x2, %x2, -148  #893 pc 4824
	lw	%x1, 144(%x2) #893 pc 4828
	flw	%f1, 136(%x2)  #893 pc 4832
	fmul	%f0, %f1, %f0  #893 pc 4836
	flw	%f2, 80(%x2)  #893 pc 4840
	fsw	%f0, 144(%x2)  #893 pc 4844
	fadd	%f0, %f2, %f30  #0 pc 4848
	sw	%x1, 152(%x2)  #893 pc 4852
	addi	%x2, %x2, 156  #893 pc 4856
	jal	%x1, fsqr.2542  #893 pc 4860
	addi	%x2, %x2, -156  #893 pc 4864
	lw	%x1, 152(%x2) #893 pc 4868
	flw	%f1, 128(%x2)  #893 pc 4872
	fmul	%f0, %f1, %f0  #893 pc 4876
	flw	%f2, 144(%x2)  #893 pc 4880
	fadd	%f0, %f2, %f0  #893 pc 4884
	flw	%f2, 120(%x2)  #893 pc 4888
	fsw	%f0, 152(%x2)  #893 pc 4892
	fadd	%f0, %f2, %f30  #0 pc 4896
	sw	%x1, 160(%x2)  #893 pc 4900
	addi	%x2, %x2, 164  #893 pc 4904
	jal	%x1, fsqr.2542  #893 pc 4908
	addi	%x2, %x2, -164  #893 pc 4912
	lw	%x1, 160(%x2) #893 pc 4916
	flw	%f1, 112(%x2)  #893 pc 4920
	fmul	%f0, %f1, %f0  #893 pc 4924
	flw	%f2, 152(%x2)  #893 pc 4928
	fadd	%f0, %f2, %f0  #893 pc 4932
	lw	%x5, 0(%x2)  #893 pc 4936
	fsw	%f0, 0(%x5)  #893 pc 4940
	flw	%f0, 72(%x2)  #894 pc 4944
	sw	%x1, 160(%x2)  #894 pc 4948
	addi	%x2, %x2, 164  #894 pc 4952
	jal	%x1, fsqr.2542  #894 pc 4956
	addi	%x2, %x2, -164  #894 pc 4960
	lw	%x1, 160(%x2) #894 pc 4964
	flw	%f1, 136(%x2)  #894 pc 4968
	fmul	%f0, %f1, %f0  #894 pc 4972
	flw	%f2, 64(%x2)  #894 pc 4976
	fsw	%f0, 160(%x2)  #894 pc 4980
	fadd	%f0, %f2, %f30  #0 pc 4984
	sw	%x1, 168(%x2)  #894 pc 4988
	addi	%x2, %x2, 172  #894 pc 4992
	jal	%x1, fsqr.2542  #894 pc 4996
	addi	%x2, %x2, -172  #894 pc 5000
	lw	%x1, 168(%x2) #894 pc 5004
	flw	%f1, 128(%x2)  #894 pc 5008
	fmul	%f0, %f1, %f0  #894 pc 5012
	flw	%f2, 160(%x2)  #894 pc 5016
	fadd	%f0, %f2, %f0  #894 pc 5020
	flw	%f2, 104(%x2)  #894 pc 5024
	fsw	%f0, 168(%x2)  #894 pc 5028
	fadd	%f0, %f2, %f30  #0 pc 5032
	sw	%x1, 176(%x2)  #894 pc 5036
	addi	%x2, %x2, 180  #894 pc 5040
	jal	%x1, fsqr.2542  #894 pc 5044
	addi	%x2, %x2, -180  #894 pc 5048
	lw	%x1, 176(%x2) #894 pc 5052
	flw	%f1, 112(%x2)  #894 pc 5056
	fmul	%f0, %f1, %f0  #894 pc 5060
	flw	%f2, 168(%x2)  #894 pc 5064
	fadd	%f0, %f2, %f0  #894 pc 5068
	lw	%x5, 0(%x2)  #894 pc 5072
	fsw	%f0, 4(%x5)  #894 pc 5076
	flw	%f0, 56(%x2)  #895 pc 5080
	sw	%x1, 176(%x2)  #895 pc 5084
	addi	%x2, %x2, 180  #895 pc 5088
	jal	%x1, fsqr.2542  #895 pc 5092
	addi	%x2, %x2, -180  #895 pc 5096
	lw	%x1, 176(%x2) #895 pc 5100
	flw	%f1, 136(%x2)  #895 pc 5104
	fmul	%f0, %f1, %f0  #895 pc 5108
	flw	%f2, 48(%x2)  #895 pc 5112
	fsw	%f0, 176(%x2)  #895 pc 5116
	fadd	%f0, %f2, %f30  #0 pc 5120
	sw	%x1, 184(%x2)  #895 pc 5124
	addi	%x2, %x2, 188  #895 pc 5128
	jal	%x1, fsqr.2542  #895 pc 5132
	addi	%x2, %x2, -188  #895 pc 5136
	lw	%x1, 184(%x2) #895 pc 5140
	flw	%f1, 128(%x2)  #895 pc 5144
	fmul	%f0, %f1, %f0  #895 pc 5148
	flw	%f2, 176(%x2)  #895 pc 5152
	fadd	%f0, %f2, %f0  #895 pc 5156
	flw	%f2, 96(%x2)  #895 pc 5160
	fsw	%f0, 184(%x2)  #895 pc 5164
	fadd	%f0, %f2, %f30  #0 pc 5168
	sw	%x1, 192(%x2)  #895 pc 5172
	addi	%x2, %x2, 196  #895 pc 5176
	jal	%x1, fsqr.2542  #895 pc 5180
	addi	%x2, %x2, -196  #895 pc 5184
	lw	%x1, 192(%x2) #895 pc 5188
	flw	%f1, 112(%x2)  #895 pc 5192
	fmul	%f0, %f1, %f0  #895 pc 5196
	flw	%f2, 184(%x2)  #895 pc 5200
	fadd	%f0, %f2, %f0  #895 pc 5204
	lw	%x5, 0(%x2)  #895 pc 5208
	fsw	%f0, 8(%x5)  #895 pc 5212
	fmv	%f0, l.6488  #0 pc 5216
	flw	%f2, 72(%x2)  #898 pc 5220
	flw	%f3, 136(%x2)  #898 pc 5224
	fmul	%f4, %f3, %f2  #898 pc 5228
	flw	%f5, 56(%x2)  #898 pc 5232
	fmul	%f4, %f4, %f5  #898 pc 5236
	flw	%f6, 64(%x2)  #898 pc 5240
	flw	%f7, 128(%x2)  #898 pc 5244
	fmul	%f8, %f7, %f6  #898 pc 5248
	flw	%f9, 48(%x2)  #898 pc 5252
	fmul	%f8, %f8, %f9  #898 pc 5256
	fadd	%f4, %f4, %f8  #898 pc 5260
	flw	%f8, 104(%x2)  #898 pc 5264
	fmul	%f10, %f1, %f8  #898 pc 5268
	flw	%f11, 96(%x2)  #898 pc 5272
	fmul	%f10, %f10, %f11  #898 pc 5276
	fadd	%f4, %f4, %f10  #898 pc 5280
	fmul	%f0, %f0, %f4  #898 pc 5284
	lw	%x5, 4(%x2)  #898 pc 5288
	fsw	%f0, 0(%x5)  #898 pc 5292
	fmv	%f0, l.6488  #0 pc 5296
	flw	%f4, 88(%x2)  #899 pc 5300
	fmul	%f10, %f3, %f4  #899 pc 5304
	fmul	%f5, %f10, %f5  #899 pc 5308
	flw	%f10, 80(%x2)  #899 pc 5312
	fmul	%f12, %f7, %f10  #899 pc 5316
	fmul	%f9, %f12, %f9  #899 pc 5320
	fadd	%f5, %f5, %f9  #899 pc 5324
	flw	%f9, 120(%x2)  #899 pc 5328
	fmul	%f12, %f1, %f9  #899 pc 5332
	fmul	%f11, %f12, %f11  #899 pc 5336
	fadd	%f5, %f5, %f11  #899 pc 5340
	fmul	%f0, %f0, %f5  #899 pc 5344
	fsw	%f0, 4(%x5)  #899 pc 5348
	fmv	%f0, l.6488  #0 pc 5352
	fmul	%f3, %f3, %f4  #900 pc 5356
	fmul	%f2, %f3, %f2  #900 pc 5360
	fmul	%f3, %f7, %f10  #900 pc 5364
	fmul	%f3, %f3, %f6  #900 pc 5368
	fadd	%f2, %f2, %f3  #900 pc 5372
	fmul	%f1, %f1, %f9  #900 pc 5376
	fmul	%f1, %f1, %f8  #900 pc 5380
	fadd	%f1, %f2, %f1  #900 pc 5384
	fmul	%f0, %f0, %f1  #900 pc 5388
	fsw	%f0, 8(%x5)  #900 pc 5392
	ret #pc 5396
	nop #pc 5400
read_nth_object.2768:  #pc 5404
	lw	%x6, 4(%x29)  #0 pc 5404
	sw	%x6, 0(%x2)  #907 pc 5408
	sw	%x5, 4(%x2)  #907 pc 5412
	sw	%x1, 8(%x2)  #907 pc 5416
	addi	%x2, %x2, 12  #907 pc 5420
	jal	%x1, read_int.2586  #907 pc 5424
	addi	%x2, %x2, -12  #907 pc 5428
	lw	%x1, 8(%x2) #907 pc 5432
	addi	%x31, %x0, -1  #pc 5436
	beq	%x5, %x31, 12  #908 pc 5440
	j	be_else.9243 #pc 5444
	nop #pc 5448
	addi	%x5, %x0, 0  #0 pc 5452
	ret #pc 5456
	nop #pc 5460
be_else.9243: #pc 5464
	sw	%x5, 8(%x2)  #910 pc 5464
	sw	%x1, 12(%x2)  #910 pc 5468
	addi	%x2, %x2, 16  #910 pc 5472
	jal	%x1, read_int.2586  #910 pc 5476
	addi	%x2, %x2, -16  #910 pc 5480
	lw	%x1, 12(%x2) #910 pc 5484
	sw	%x5, 12(%x2)  #911 pc 5488
	sw	%x1, 16(%x2)  #911 pc 5492
	addi	%x2, %x2, 20  #911 pc 5496
	jal	%x1, read_int.2586  #911 pc 5500
	addi	%x2, %x2, -20  #911 pc 5504
	lw	%x1, 16(%x2) #911 pc 5508
	sw	%x5, 16(%x2)  #912 pc 5512
	sw	%x1, 20(%x2)  #912 pc 5516
	addi	%x2, %x2, 24  #912 pc 5520
	jal	%x1, read_int.2586  #912 pc 5524
	addi	%x2, %x2, -24  #912 pc 5528
	lw	%x1, 20(%x2) #912 pc 5532
	addi	%x6, %x0, 3  #0 pc 5536
	fmv	%f0, l.6305  #0 pc 5540
	sw	%x5, 20(%x2)  #914 pc 5544
	addi	%x5, %x6, 0  #0 pc 5548
	sw	%x1, 24(%x2)  #914 pc 5552
	addi	%x2, %x2, 28  #914 pc 5556
	jal	%x1, create_float_array.2606  #914 pc 5560
	addi	%x2, %x2, -28  #914 pc 5564
	lw	%x1, 24(%x2) #914 pc 5568
	sw	%x5, 24(%x2)  #915 pc 5572
	sw	%x1, 28(%x2)  #915 pc 5576
	addi	%x2, %x2, 32  #915 pc 5580
	jal	%x1, read_float.2593  #915 pc 5584
	addi	%x2, %x2, -32  #915 pc 5588
	lw	%x1, 28(%x2) #915 pc 5592
	lw	%x5, 24(%x2)  #915 pc 5596
	fsw	%f0, 0(%x5)  #915 pc 5600
	sw	%x1, 28(%x2)  #916 pc 5604
	addi	%x2, %x2, 32  #916 pc 5608
	jal	%x1, read_float.2593  #916 pc 5612
	addi	%x2, %x2, -32  #916 pc 5616
	lw	%x1, 28(%x2) #916 pc 5620
	lw	%x5, 24(%x2)  #916 pc 5624
	fsw	%f0, 4(%x5)  #916 pc 5628
	sw	%x1, 28(%x2)  #917 pc 5632
	addi	%x2, %x2, 32  #917 pc 5636
	jal	%x1, read_float.2593  #917 pc 5640
	addi	%x2, %x2, -32  #917 pc 5644
	lw	%x1, 28(%x2) #917 pc 5648
	lw	%x5, 24(%x2)  #917 pc 5652
	fsw	%f0, 8(%x5)  #917 pc 5656
	addi	%x6, %x0, 3  #0 pc 5660
	fmv	%f0, l.6305  #0 pc 5664
	addi	%x5, %x6, 0  #0 pc 5668
	sw	%x1, 28(%x2)  #919 pc 5672
	addi	%x2, %x2, 32  #919 pc 5676
	jal	%x1, create_float_array.2606  #919 pc 5680
	addi	%x2, %x2, -32  #919 pc 5684
	lw	%x1, 28(%x2) #919 pc 5688
	sw	%x5, 28(%x2)  #920 pc 5692
	sw	%x1, 32(%x2)  #920 pc 5696
	addi	%x2, %x2, 36  #920 pc 5700
	jal	%x1, read_float.2593  #920 pc 5704
	addi	%x2, %x2, -36  #920 pc 5708
	lw	%x1, 32(%x2) #920 pc 5712
	lw	%x5, 28(%x2)  #920 pc 5716
	fsw	%f0, 0(%x5)  #920 pc 5720
	sw	%x1, 32(%x2)  #921 pc 5724
	addi	%x2, %x2, 36  #921 pc 5728
	jal	%x1, read_float.2593  #921 pc 5732
	addi	%x2, %x2, -36  #921 pc 5736
	lw	%x1, 32(%x2) #921 pc 5740
	lw	%x5, 28(%x2)  #921 pc 5744
	fsw	%f0, 4(%x5)  #921 pc 5748
	sw	%x1, 32(%x2)  #922 pc 5752
	addi	%x2, %x2, 36  #922 pc 5756
	jal	%x1, read_float.2593  #922 pc 5760
	addi	%x2, %x2, -36  #922 pc 5764
	lw	%x1, 32(%x2) #922 pc 5768
	lw	%x5, 28(%x2)  #922 pc 5772
	fsw	%f0, 8(%x5)  #922 pc 5776
	sw	%x1, 32(%x2)  #924 pc 5780
	addi	%x2, %x2, 36  #924 pc 5784
	jal	%x1, read_float.2593  #924 pc 5788
	addi	%x2, %x2, -36  #924 pc 5792
	lw	%x1, 32(%x2) #924 pc 5796
	sw	%x1, 32(%x2)  #924 pc 5800
	addi	%x2, %x2, 36  #924 pc 5804
	jal	%x1, fisneg.2538  #924 pc 5808
	addi	%x2, %x2, -36  #924 pc 5812
	lw	%x1, 32(%x2) #924 pc 5816
	addi	%x6, %x0, 2  #0 pc 5820
	fmv	%f0, l.6305  #0 pc 5824
	sw	%x5, 32(%x2)  #926 pc 5828
	addi	%x5, %x6, 0  #0 pc 5832
	sw	%x1, 36(%x2)  #926 pc 5836
	addi	%x2, %x2, 40  #926 pc 5840
	jal	%x1, create_float_array.2606  #926 pc 5844
	addi	%x2, %x2, -40  #926 pc 5848
	lw	%x1, 36(%x2) #926 pc 5852
	sw	%x5, 36(%x2)  #927 pc 5856
	sw	%x1, 40(%x2)  #927 pc 5860
	addi	%x2, %x2, 44  #927 pc 5864
	jal	%x1, read_float.2593  #927 pc 5868
	addi	%x2, %x2, -44  #927 pc 5872
	lw	%x1, 40(%x2) #927 pc 5876
	lw	%x5, 36(%x2)  #927 pc 5880
	fsw	%f0, 0(%x5)  #927 pc 5884
	sw	%x1, 40(%x2)  #928 pc 5888
	addi	%x2, %x2, 44  #928 pc 5892
	jal	%x1, read_float.2593  #928 pc 5896
	addi	%x2, %x2, -44  #928 pc 5900
	lw	%x1, 40(%x2) #928 pc 5904
	lw	%x5, 36(%x2)  #928 pc 5908
	fsw	%f0, 4(%x5)  #928 pc 5912
	addi	%x6, %x0, 3  #0 pc 5916
	fmv	%f0, l.6305  #0 pc 5920
	addi	%x5, %x6, 0  #0 pc 5924
	sw	%x1, 40(%x2)  #930 pc 5928
	addi	%x2, %x2, 44  #930 pc 5932
	jal	%x1, create_float_array.2606  #930 pc 5936
	addi	%x2, %x2, -44  #930 pc 5940
	lw	%x1, 40(%x2) #930 pc 5944
	sw	%x5, 40(%x2)  #931 pc 5948
	sw	%x1, 44(%x2)  #931 pc 5952
	addi	%x2, %x2, 48  #931 pc 5956
	jal	%x1, read_float.2593  #931 pc 5960
	addi	%x2, %x2, -48  #931 pc 5964
	lw	%x1, 44(%x2) #931 pc 5968
	lw	%x5, 40(%x2)  #931 pc 5972
	fsw	%f0, 0(%x5)  #931 pc 5976
	sw	%x1, 44(%x2)  #932 pc 5980
	addi	%x2, %x2, 48  #932 pc 5984
	jal	%x1, read_float.2593  #932 pc 5988
	addi	%x2, %x2, -48  #932 pc 5992
	lw	%x1, 44(%x2) #932 pc 5996
	lw	%x5, 40(%x2)  #932 pc 6000
	fsw	%f0, 4(%x5)  #932 pc 6004
	sw	%x1, 44(%x2)  #933 pc 6008
	addi	%x2, %x2, 48  #933 pc 6012
	jal	%x1, read_float.2593  #933 pc 6016
	addi	%x2, %x2, -48  #933 pc 6020
	lw	%x1, 44(%x2) #933 pc 6024
	lw	%x5, 40(%x2)  #933 pc 6028
	fsw	%f0, 8(%x5)  #933 pc 6032
	addi	%x6, %x0, 3  #0 pc 6036
	fmv	%f0, l.6305  #0 pc 6040
	addi	%x5, %x6, 0  #0 pc 6044
	sw	%x1, 44(%x2)  #935 pc 6048
	addi	%x2, %x2, 48  #935 pc 6052
	jal	%x1, create_float_array.2606  #935 pc 6056
	addi	%x2, %x2, -48  #935 pc 6060
	lw	%x1, 44(%x2) #935 pc 6064
	lw	%x6, 20(%x2)  #936 pc 6068
	beq	%x6, %x0, 12  #936 pc 6072
	j	be_else.9244 #pc 6076
	nop #pc 6080
	j	be_cont.9245 #pc 6084
	nop #pc 6088
be_else.9244: #pc 6092
	sw	%x5, 44(%x2)  #938 pc 6092
	sw	%x1, 48(%x2)  #938 pc 6096
	addi	%x2, %x2, 52  #938 pc 6100
	jal	%x1, read_float.2593  #938 pc 6104
	addi	%x2, %x2, -52  #938 pc 6108
	lw	%x1, 48(%x2) #938 pc 6112
	sw	%x1, 48(%x2)  #938 pc 6116
	addi	%x2, %x2, 52  #938 pc 6120
	jal	%x1, rad.2759  #938 pc 6124
	addi	%x2, %x2, -52  #938 pc 6128
	lw	%x1, 48(%x2) #938 pc 6132
	lw	%x5, 44(%x2)  #938 pc 6136
	fsw	%f0, 0(%x5)  #938 pc 6140
	sw	%x1, 48(%x2)  #939 pc 6144
	addi	%x2, %x2, 52  #939 pc 6148
	jal	%x1, read_float.2593  #939 pc 6152
	addi	%x2, %x2, -52  #939 pc 6156
	lw	%x1, 48(%x2) #939 pc 6160
	sw	%x1, 48(%x2)  #939 pc 6164
	addi	%x2, %x2, 52  #939 pc 6168
	jal	%x1, rad.2759  #939 pc 6172
	addi	%x2, %x2, -52  #939 pc 6176
	lw	%x1, 48(%x2) #939 pc 6180
	lw	%x5, 44(%x2)  #939 pc 6184
	fsw	%f0, 4(%x5)  #939 pc 6188
	sw	%x1, 48(%x2)  #940 pc 6192
	addi	%x2, %x2, 52  #940 pc 6196
	jal	%x1, read_float.2593  #940 pc 6200
	addi	%x2, %x2, -52  #940 pc 6204
	lw	%x1, 48(%x2) #940 pc 6208
	sw	%x1, 48(%x2)  #940 pc 6212
	addi	%x2, %x2, 52  #940 pc 6216
	jal	%x1, rad.2759  #940 pc 6220
	addi	%x2, %x2, -52  #940 pc 6224
	lw	%x1, 48(%x2) #940 pc 6228
	lw	%x5, 44(%x2)  #940 pc 6232
	fsw	%f0, 8(%x5)  #940 pc 6236
be_cont.9245: #pc 6240
	lw	%x6, 12(%x2)  #947 pc 6240
	addi	%x31, %x0, 2  #pc 6244
	beq	%x6, %x31, 12  #947 pc 6248
	j	be_else.9246 #pc 6252
	nop #pc 6256
	addi	%x7, %x0, 1  #0 pc 6260
	j	be_cont.9247 #pc 6264
	nop #pc 6268
be_else.9246: #pc 6272
	lw	%x7, 32(%x2)  #947 pc 6272
be_cont.9247: #pc 6276
	addi	%x8, %x0, 4  #0 pc 6276
	fmv	%f0, l.6305  #0 pc 6280
	sw	%x7, 48(%x2)  #948 pc 6284
	sw	%x5, 44(%x2)  #948 pc 6288
	addi	%x5, %x8, 0  #0 pc 6292
	sw	%x1, 52(%x2)  #948 pc 6296
	addi	%x2, %x2, 56  #948 pc 6300
	jal	%x1, create_float_array.2606  #948 pc 6304
	addi	%x2, %x2, -56  #948 pc 6308
	lw	%x1, 52(%x2) #948 pc 6312
	addi	%x6, %x3, 0  #951 pc 6316
	addi	%x3, %x3, 44  #951 pc 6320
	sw	%x5, 40(%x6)  #951 pc 6324
	lw	%x5, 44(%x2)  #951 pc 6328
	sw	%x5, 36(%x6)  #951 pc 6332
	lw	%x7, 40(%x2)  #951 pc 6336
	sw	%x7, 32(%x6)  #951 pc 6340
	lw	%x7, 36(%x2)  #951 pc 6344
	sw	%x7, 28(%x6)  #951 pc 6348
	lw	%x7, 48(%x2)  #951 pc 6352
	sw	%x7, 24(%x6)  #951 pc 6356
	lw	%x7, 28(%x2)  #951 pc 6360
	sw	%x7, 20(%x6)  #951 pc 6364
	lw	%x7, 24(%x2)  #951 pc 6368
	sw	%x7, 16(%x6)  #951 pc 6372
	lw	%x8, 20(%x2)  #951 pc 6376
	sw	%x8, 12(%x6)  #951 pc 6380
	lw	%x9, 16(%x2)  #951 pc 6384
	sw	%x9, 8(%x6)  #951 pc 6388
	lw	%x9, 12(%x2)  #951 pc 6392
	sw	%x9, 4(%x6)  #951 pc 6396
	lw	%x10, 8(%x2)  #951 pc 6400
	sw	%x10, 0(%x6)  #951 pc 6404
	lw	%x10, 4(%x2)  #959 pc 6408
	slli	%x10, %x10, 2  #959 pc 6412
	lw	%x11, 0(%x2)  #959 pc 6416
	add	%x31, %x10, %x11  #959 pc 6420
	sw	%x6, 0(%x31)  #959 pc 6424
	addi	%x31, %x0, 3  #pc 6428
	beq	%x9, %x31, 12  #961 pc 6432
	j	be_else.9248 #pc 6436
	nop #pc 6440
	flw	%f0, 0(%x7)  #964 pc 6444
	fsw	%f0, 56(%x2)  #965 pc 6448
	sw	%x1, 64(%x2)  #965 pc 6452
	addi	%x2, %x2, 68  #965 pc 6456
	jal	%x1, fiszero.2534  #965 pc 6460
	addi	%x2, %x2, -68  #965 pc 6464
	lw	%x1, 64(%x2) #965 pc 6468
	beq	%x5, %x0, 12  #965 pc 6472
	j	be_else.9251 #pc 6476
	nop #pc 6480
	flw	%f0, 56(%x2)  #965 pc 6484
	sw	%x1, 64(%x2)  #965 pc 6488
	addi	%x2, %x2, 68  #965 pc 6492
	jal	%x1, sgn.2642  #965 pc 6496
	addi	%x2, %x2, -68  #965 pc 6500
	lw	%x1, 64(%x2) #965 pc 6504
	flw	%f1, 56(%x2)  #965 pc 6508
	fsw	%f0, 64(%x2)  #965 pc 6512
	fadd	%f0, %f1, %f30  #0 pc 6516
	sw	%x1, 72(%x2)  #965 pc 6520
	addi	%x2, %x2, 76  #965 pc 6524
	jal	%x1, fsqr.2542  #965 pc 6528
	addi	%x2, %x2, -76  #965 pc 6532
	lw	%x1, 72(%x2) #965 pc 6536
	flw	%f1, 64(%x2)  #965 pc 6540
	fdiv	%f0, %f1, %f0  #965 pc 6544
	j	be_cont.9252 #pc 6548
	nop #pc 6552
be_else.9251: #pc 6556
	fmv	%f0, l.6305  #0 pc 6556
be_cont.9252: #pc 6560
	lw	%x5, 24(%x2)  #965 pc 6560
	fsw	%f0, 0(%x5)  #965 pc 6564
	flw	%f0, 4(%x5)  #966 pc 6568
	fsw	%f0, 72(%x2)  #967 pc 6572
	sw	%x1, 80(%x2)  #967 pc 6576
	addi	%x2, %x2, 84  #967 pc 6580
	jal	%x1, fiszero.2534  #967 pc 6584
	addi	%x2, %x2, -84  #967 pc 6588
	lw	%x1, 80(%x2) #967 pc 6592
	beq	%x5, %x0, 12  #967 pc 6596
	j	be_else.9253 #pc 6600
	nop #pc 6604
	flw	%f0, 72(%x2)  #967 pc 6608
	sw	%x1, 80(%x2)  #967 pc 6612
	addi	%x2, %x2, 84  #967 pc 6616
	jal	%x1, sgn.2642  #967 pc 6620
	addi	%x2, %x2, -84  #967 pc 6624
	lw	%x1, 80(%x2) #967 pc 6628
	flw	%f1, 72(%x2)  #967 pc 6632
	fsw	%f0, 80(%x2)  #967 pc 6636
	fadd	%f0, %f1, %f30  #0 pc 6640
	sw	%x1, 88(%x2)  #967 pc 6644
	addi	%x2, %x2, 92  #967 pc 6648
	jal	%x1, fsqr.2542  #967 pc 6652
	addi	%x2, %x2, -92  #967 pc 6656
	lw	%x1, 88(%x2) #967 pc 6660
	flw	%f1, 80(%x2)  #967 pc 6664
	fdiv	%f0, %f1, %f0  #967 pc 6668
	j	be_cont.9254 #pc 6672
	nop #pc 6676
be_else.9253: #pc 6680
	fmv	%f0, l.6305  #0 pc 6680
be_cont.9254: #pc 6684
	lw	%x5, 24(%x2)  #967 pc 6684
	fsw	%f0, 4(%x5)  #967 pc 6688
	flw	%f0, 8(%x5)  #968 pc 6692
	fsw	%f0, 88(%x2)  #969 pc 6696
	sw	%x1, 96(%x2)  #969 pc 6700
	addi	%x2, %x2, 100  #969 pc 6704
	jal	%x1, fiszero.2534  #969 pc 6708
	addi	%x2, %x2, -100  #969 pc 6712
	lw	%x1, 96(%x2) #969 pc 6716
	beq	%x5, %x0, 12  #969 pc 6720
	j	be_else.9255 #pc 6724
	nop #pc 6728
	flw	%f0, 88(%x2)  #969 pc 6732
	sw	%x1, 96(%x2)  #969 pc 6736
	addi	%x2, %x2, 100  #969 pc 6740
	jal	%x1, sgn.2642  #969 pc 6744
	addi	%x2, %x2, -100  #969 pc 6748
	lw	%x1, 96(%x2) #969 pc 6752
	flw	%f1, 88(%x2)  #969 pc 6756
	fsw	%f0, 96(%x2)  #969 pc 6760
	fadd	%f0, %f1, %f30  #0 pc 6764
	sw	%x1, 104(%x2)  #969 pc 6768
	addi	%x2, %x2, 108  #969 pc 6772
	jal	%x1, fsqr.2542  #969 pc 6776
	addi	%x2, %x2, -108  #969 pc 6780
	lw	%x1, 104(%x2) #969 pc 6784
	flw	%f1, 96(%x2)  #969 pc 6788
	fdiv	%f0, %f1, %f0  #969 pc 6792
	j	be_cont.9256 #pc 6796
	nop #pc 6800
be_else.9255: #pc 6804
	fmv	%f0, l.6305  #0 pc 6804
be_cont.9256: #pc 6808
	lw	%x5, 24(%x2)  #969 pc 6808
	fsw	%f0, 8(%x5)  #969 pc 6812
	j	be_cont.9249 #pc 6816
	nop #pc 6820
be_else.9248: #pc 6824
	addi	%x31, %x0, 2  #pc 6824
	beq	%x9, %x31, 12  #971 pc 6828
	j	be_else.9257 #pc 6832
	nop #pc 6836
	lw	%x6, 32(%x2)  #973 pc 6840
	beq	%x6, %x0, 12  #973 pc 6844
	j	be_else.9259 #pc 6848
	nop #pc 6852
	addi	%x6, %x0, 1  #0 pc 6856
	j	be_cont.9260 #pc 6860
	nop #pc 6864
be_else.9259: #pc 6868
	addi	%x6, %x0, 0  #0 pc 6868
be_cont.9260: #pc 6872
	addi	%x5, %x7, 0  #0 pc 6872
	sw	%x1, 104(%x2)  #973 pc 6876
	addi	%x2, %x2, 108  #973 pc 6880
	jal	%x1, vecunit_sgn.2663  #973 pc 6884
	addi	%x2, %x2, -108  #973 pc 6888
	lw	%x1, 104(%x2) #973 pc 6892
	j	be_cont.9258 #pc 6896
	nop #pc 6900
be_else.9257: #pc 6904
be_cont.9258: #pc 6904
be_cont.9249: #pc 6904
	lw	%x5, 20(%x2)  #977 pc 6904
	beq	%x5, %x0, 12  #977 pc 6908
	j	be_else.9261 #pc 6912
	nop #pc 6916
	j	be_cont.9262 #pc 6920
	nop #pc 6924
be_else.9261: #pc 6928
	lw	%x5, 24(%x2)  #978 pc 6928
	lw	%x6, 44(%x2)  #978 pc 6932
	sw	%x1, 104(%x2)  #978 pc 6936
	addi	%x2, %x2, 108  #978 pc 6940
	jal	%x1, rotate_quadratic_matrix.2765  #978 pc 6944
	addi	%x2, %x2, -108  #978 pc 6948
	lw	%x1, 104(%x2) #978 pc 6952
be_cont.9262: #pc 6956
	addi	%x5, %x0, 1  #0 pc 6956
	ret #pc 6960
	nop #pc 6964
read_object.2770:  #pc 6968
	lw	%x6, 8(%x29)  #0 pc 6968
	lw	%x7, 4(%x29)  #0 pc 6972
	addi	%x31, %x0, 60  #pc 6976
	bge	%x5, %x31, 12  #989 pc 6980
	j	bge_else.9263 #pc 6984
	nop #pc 6988
	ret #pc 6992
	nop #pc 6996
bge_else.9263: #pc 7000
	sw	%x29, 0(%x2)  #990 pc 7000
	sw	%x7, 4(%x2)  #990 pc 7004
	sw	%x5, 8(%x2)  #990 pc 7008
	addi	%x29, %x6, 0  #0 pc 7012
	sw	%x1, 12(%x2)  #990 pc 7016
	lw	%x30, 0(%x29)  #990 pc 7020
	addi	%x2, %x2, 16  #990 pc 7024
	jalr	%x1, %x30, 0  #990 pc 7028
	addi	%x2, %x2, -16  #990 pc 7032
	lw	%x1, 12(%x2)  #990 pc 7036
	beq	%x5, %x0, 12  #990 pc 7040
	j	be_else.9265 #pc 7044
	nop #pc 7048
	lw	%x5, 4(%x2)  #993 pc 7052
	lw	%x6, 8(%x2)  #993 pc 7056
	sw	%x6, 0(%x5)  #993 pc 7060
	ret #pc 7064
	nop #pc 7068
be_else.9265: #pc 7072
	lw	%x5, 8(%x2)  #991 pc 7072
	addi	%x5, %x5, 1  #991 pc 7076
	lw	%x29, 0(%x2)  #991 pc 7080
	lw	%x30, 0(%x29)  #991 pc 7084
	jalr	%x0, %x30, 0  #991 pc 7088
	nop #pc 7092
read_all_object.2772:  #pc 7096
	lw	%x29, 4(%x29)  #0 pc 7096
	addi	%x5, %x0, 0  #0 pc 7100
	lw	%x30, 0(%x29)  #998 pc 7104
	jalr	%x0, %x30, 0  #998 pc 7108
	nop #pc 7112
read_net_item.2774:  #pc 7116
	sw	%x5, 0(%x2)  #1005 pc 7116
	sw	%x1, 4(%x2)  #1005 pc 7120
	addi	%x2, %x2, 8  #1005 pc 7124
	jal	%x1, read_int.2586  #1005 pc 7128
	addi	%x2, %x2, -8  #1005 pc 7132
	lw	%x1, 4(%x2) #1005 pc 7136
	addi	%x31, %x0, -1  #pc 7140
	beq	%x5, %x31, 12  #1006 pc 7144
	j	be_else.9267 #pc 7148
	nop #pc 7152
	lw	%x5, 0(%x2)  #1006 pc 7156
	addi	%x5, %x5, 1  #1006 pc 7160
	addi	%x6, %x0, -1  #0 pc 7164
	j	create_array.2599  #1006 pc 7168
	nop #pc 7172
be_else.9267: #pc 7176
	lw	%x6, 0(%x2)  #1008 pc 7176
	addi	%x7, %x6, 1  #1008 pc 7180
	sw	%x5, 4(%x2)  #1008 pc 7184
	addi	%x5, %x7, 0  #0 pc 7188
	sw	%x1, 8(%x2)  #1008 pc 7192
	addi	%x2, %x2, 12  #1008 pc 7196
	jal	%x1, read_net_item.2774  #1008 pc 7200
	addi	%x2, %x2, -12  #1008 pc 7204
	lw	%x1, 8(%x2) #1008 pc 7208
	lw	%x6, 0(%x2)  #1009 pc 7212
	slli	%x6, %x6, 2  #1009 pc 7216
	lw	%x7, 4(%x2)  #1009 pc 7220
	add	%x31, %x6, %x5  #1009 pc 7224
	sw	%x7, 0(%x31)  #1009 pc 7228
	ret #pc 7232
	nop #pc 7236
read_or_network.2776:  #pc 7240
	addi	%x6, %x0, 0  #0 pc 7240
	sw	%x5, 0(%x2)  #1013 pc 7244
	addi	%x5, %x6, 0  #0 pc 7248
	sw	%x1, 4(%x2)  #1013 pc 7252
	addi	%x2, %x2, 8  #1013 pc 7256
	jal	%x1, read_net_item.2774  #1013 pc 7260
	addi	%x2, %x2, -8  #1013 pc 7264
	lw	%x1, 4(%x2) #1013 pc 7268
	addi	%x6, %x5, 0  #1013 pc 7272
	lw	%x5, 0(%x6)  #1014 pc 7276
	addi	%x31, %x0, -1  #pc 7280
	beq	%x5, %x31, 12  #1014 pc 7284
	j	be_else.9268 #pc 7288
	nop #pc 7292
	lw	%x5, 0(%x2)  #1015 pc 7296
	addi	%x5, %x5, 1  #1015 pc 7300
	j	create_array.2599  #1015 pc 7304
	nop #pc 7308
be_else.9268: #pc 7312
	lw	%x5, 0(%x2)  #1017 pc 7312
	addi	%x7, %x5, 1  #1017 pc 7316
	sw	%x6, 4(%x2)  #1017 pc 7320
	addi	%x5, %x7, 0  #0 pc 7324
	sw	%x1, 8(%x2)  #1017 pc 7328
	addi	%x2, %x2, 12  #1017 pc 7332
	jal	%x1, read_or_network.2776  #1017 pc 7336
	addi	%x2, %x2, -12  #1017 pc 7340
	lw	%x1, 8(%x2) #1017 pc 7344
	lw	%x6, 0(%x2)  #1018 pc 7348
	slli	%x6, %x6, 2  #1018 pc 7352
	lw	%x7, 4(%x2)  #1018 pc 7356
	add	%x31, %x6, %x5  #1018 pc 7360
	sw	%x7, 0(%x31)  #1018 pc 7364
	ret #pc 7368
	nop #pc 7372
read_and_network.2778:  #pc 7376
	lw	%x6, 4(%x29)  #0 pc 7376
	addi	%x7, %x0, 0  #0 pc 7380
	sw	%x29, 0(%x2)  #1022 pc 7384
	sw	%x6, 4(%x2)  #1022 pc 7388
	sw	%x5, 8(%x2)  #1022 pc 7392
	addi	%x5, %x7, 0  #0 pc 7396
	sw	%x1, 12(%x2)  #1022 pc 7400
	addi	%x2, %x2, 16  #1022 pc 7404
	jal	%x1, read_net_item.2774  #1022 pc 7408
	addi	%x2, %x2, -16  #1022 pc 7412
	lw	%x1, 12(%x2) #1022 pc 7416
	lw	%x6, 0(%x5)  #1023 pc 7420
	addi	%x31, %x0, -1  #pc 7424
	beq	%x6, %x31, 12  #1023 pc 7428
	j	be_else.9269 #pc 7432
	nop #pc 7436
	ret #pc 7440
	nop #pc 7444
be_else.9269: #pc 7448
	lw	%x6, 8(%x2)  #1025 pc 7448
	slli	%x7, %x6, 2  #1025 pc 7452
	lw	%x8, 4(%x2)  #1025 pc 7456
	add	%x31, %x7, %x8  #1025 pc 7460
	sw	%x5, 0(%x31)  #1025 pc 7464
	addi	%x5, %x6, 1  #1026 pc 7468
	lw	%x29, 0(%x2)  #1026 pc 7472
	lw	%x30, 0(%x29)  #1026 pc 7476
	jalr	%x0, %x30, 0  #1026 pc 7480
	nop #pc 7484
read_parameter.2780:  #pc 7488
	lw	%x5, 20(%x29)  #0 pc 7488
	lw	%x6, 16(%x29)  #0 pc 7492
	lw	%x7, 12(%x29)  #0 pc 7496
	lw	%x8, 8(%x29)  #0 pc 7500
	lw	%x9, 4(%x29)  #0 pc 7504
	sw	%x9, 0(%x2)  #1032 pc 7508
	sw	%x7, 4(%x2)  #1032 pc 7512
	sw	%x8, 8(%x2)  #1032 pc 7516
	sw	%x6, 12(%x2)  #1032 pc 7520
	addi	%x29, %x5, 0  #0 pc 7524
	sw	%x1, 16(%x2)  #1032 pc 7528
	lw	%x30, 0(%x29)  #1032 pc 7532
	addi	%x2, %x2, 20  #1032 pc 7536
	jalr	%x1, %x30, 0  #1032 pc 7540
	addi	%x2, %x2, -20  #1032 pc 7544
	lw	%x1, 16(%x2)  #1032 pc 7548
	lw	%x29, 12(%x2)  #1033 pc 7552
	sw	%x1, 16(%x2)  #1033 pc 7556
	lw	%x30, 0(%x29)  #1033 pc 7560
	addi	%x2, %x2, 20  #1033 pc 7564
	jalr	%x1, %x30, 0  #1033 pc 7568
	addi	%x2, %x2, -20  #1033 pc 7572
	lw	%x1, 16(%x2)  #1033 pc 7576
	lw	%x29, 8(%x2)  #1034 pc 7580
	sw	%x1, 16(%x2)  #1034 pc 7584
	lw	%x30, 0(%x29)  #1034 pc 7588
	addi	%x2, %x2, 20  #1034 pc 7592
	jalr	%x1, %x30, 0  #1034 pc 7596
	addi	%x2, %x2, -20  #1034 pc 7600
	lw	%x1, 16(%x2)  #1034 pc 7604
	addi	%x5, %x0, 0  #0 pc 7608
	lw	%x29, 4(%x2)  #1035 pc 7612
	sw	%x1, 16(%x2)  #1035 pc 7616
	lw	%x30, 0(%x29)  #1035 pc 7620
	addi	%x2, %x2, 20  #1035 pc 7624
	jalr	%x1, %x30, 0  #1035 pc 7628
	addi	%x2, %x2, -20  #1035 pc 7632
	lw	%x1, 16(%x2)  #1035 pc 7636
	addi	%x5, %x0, 0  #0 pc 7640
	sw	%x1, 16(%x2)  #1036 pc 7644
	addi	%x2, %x2, 20  #1036 pc 7648
	jal	%x1, read_or_network.2776  #1036 pc 7652
	addi	%x2, %x2, -20  #1036 pc 7656
	lw	%x1, 16(%x2) #1036 pc 7660
	lw	%x6, 0(%x2)  #1036 pc 7664
	sw	%x5, 0(%x6)  #1036 pc 7668
	ret #pc 7672
	nop #pc 7676
solver_rect_surface.2782:  #pc 7680
	lw	%x10, 4(%x29)  #0 pc 7680
	slli	%x11, %x7, 2  #1056 pc 7684
	add	%x31, %x11, %x6  #1056 pc 7688
	flw	%f3, 0(%x31)  #1056 pc 7692
	sw	%x10, 0(%x2)  #1056 pc 7696
	fsw	%f2, 8(%x2)  #1056 pc 7700
	sw	%x9, 16(%x2)  #1056 pc 7704
	fsw	%f1, 24(%x2)  #1056 pc 7708
	sw	%x8, 32(%x2)  #1056 pc 7712
	fsw	%f0, 40(%x2)  #1056 pc 7716
	sw	%x6, 48(%x2)  #1056 pc 7720
	sw	%x7, 52(%x2)  #1056 pc 7724
	sw	%x5, 56(%x2)  #1056 pc 7728
	fadd	%f0, %f3, %f30  #0 pc 7732
	sw	%x1, 60(%x2)  #1056 pc 7736
	addi	%x2, %x2, 64  #1056 pc 7740
	jal	%x1, fiszero.2534  #1056 pc 7744
	addi	%x2, %x2, -64  #1056 pc 7748
	lw	%x1, 60(%x2) #1056 pc 7752
	beq	%x5, %x0, 12  #1056 pc 7756
	j	be_else.9275 #pc 7760
	nop #pc 7764
	lw	%x5, 56(%x2)  #1057 pc 7768
	sw	%x1, 60(%x2)  #1057 pc 7772
	addi	%x2, %x2, 64  #1057 pc 7776
	jal	%x1, o_param_abc.2704  #1057 pc 7780
	addi	%x2, %x2, -64  #1057 pc 7784
	lw	%x1, 60(%x2) #1057 pc 7788
	lw	%x6, 56(%x2)  #1058 pc 7792
	sw	%x5, 60(%x2)  #1058 pc 7796
	addi	%x5, %x6, 0  #0 pc 7800
	sw	%x1, 64(%x2)  #1058 pc 7804
	addi	%x2, %x2, 68  #1058 pc 7808
	jal	%x1, o_isinvert.2694  #1058 pc 7812
	addi	%x2, %x2, -68  #1058 pc 7816
	lw	%x1, 64(%x2) #1058 pc 7820
	lw	%x6, 52(%x2)  #1058 pc 7824
	slli	%x7, %x6, 2  #1058 pc 7828
	lw	%x8, 48(%x2)  #1058 pc 7832
	add	%x31, %x7, %x8  #1058 pc 7836
	flw	%f0, 0(%x31)  #1058 pc 7840
	sw	%x5, 64(%x2)  #1058 pc 7844
	sw	%x1, 68(%x2)  #1058 pc 7848
	addi	%x2, %x2, 72  #1058 pc 7852
	jal	%x1, fisneg.2538  #1058 pc 7856
	addi	%x2, %x2, -72  #1058 pc 7860
	lw	%x1, 68(%x2) #1058 pc 7864
	addi	%x6, %x5, 0  #1058 pc 7868
	lw	%x5, 64(%x2)  #1058 pc 7872
	sw	%x1, 68(%x2)  #1058 pc 7876
	addi	%x2, %x2, 72  #1058 pc 7880
	jal	%x1, xor.2639  #1058 pc 7884
	addi	%x2, %x2, -72  #1058 pc 7888
	lw	%x1, 68(%x2) #1058 pc 7892
	lw	%x6, 52(%x2)  #1058 pc 7896
	slli	%x7, %x6, 2  #1058 pc 7900
	lw	%x8, 60(%x2)  #1058 pc 7904
	add	%x31, %x7, %x8  #1058 pc 7908
	flw	%f0, 0(%x31)  #1058 pc 7912
	sw	%x1, 68(%x2)  #1058 pc 7916
	addi	%x2, %x2, 72  #1058 pc 7920
	jal	%x1, fneg_cond.2644  #1058 pc 7924
	addi	%x2, %x2, -72  #1058 pc 7928
	lw	%x1, 68(%x2) #1058 pc 7932
	flw	%f1, 40(%x2)  #1060 pc 7936
	fsub	%f0, %f0, %f1  #1060 pc 7940
	lw	%x5, 52(%x2)  #1060 pc 7944
	slli	%x5, %x5, 2  #1060 pc 7948
	lw	%x6, 48(%x2)  #1060 pc 7952
	add	%x31, %x5, %x6  #1060 pc 7956
	flw	%f1, 0(%x31)  #1060 pc 7960
	fdiv	%f0, %f0, %f1  #1060 pc 7964
	lw	%x5, 32(%x2)  #1061 pc 7968
	slli	%x7, %x5, 2  #1061 pc 7972
	add	%x31, %x7, %x6  #1061 pc 7976
	flw	%f1, 0(%x31)  #1061 pc 7980
	fmul	%f1, %f0, %f1  #1061 pc 7984
	flw	%f2, 24(%x2)  #1061 pc 7988
	fadd	%f1, %f1, %f2  #1061 pc 7992
	fabs	%f1, %f1  #1061 pc 7996
	slli	%x5, %x5, 2  #1061 pc 8000
	lw	%x7, 60(%x2)  #1061 pc 8004
	add	%x31, %x5, %x7  #1061 pc 8008
	flw	%f2, 0(%x31)  #1061 pc 8012
	fsw	%f0, 72(%x2)  #1061 pc 8016
	fadd	%f0, %f1, %f30  #0 pc 8020
	fadd	%f1, %f2, %f30  #0 pc 8024
	sw	%x1, 80(%x2)  #1061 pc 8028
	addi	%x2, %x2, 84  #1061 pc 8032
	jal	%x1, fless.2546  #1061 pc 8036
	addi	%x2, %x2, -84  #1061 pc 8040
	lw	%x1, 80(%x2) #1061 pc 8044
	beq	%x5, %x0, 12  #1061 pc 8048
	j	be_else.9277 #pc 8052
	nop #pc 8056
	addi	%x5, %x0, 0  #0 pc 8060
	ret #pc 8064
	nop #pc 8068
be_else.9277: #pc 8072
	lw	%x5, 16(%x2)  #1062 pc 8072
	slli	%x6, %x5, 2  #1062 pc 8076
	lw	%x7, 48(%x2)  #1062 pc 8080
	add	%x31, %x6, %x7  #1062 pc 8084
	flw	%f0, 0(%x31)  #1062 pc 8088
	flw	%f1, 72(%x2)  #1062 pc 8092
	fmul	%f0, %f1, %f0  #1062 pc 8096
	flw	%f2, 8(%x2)  #1062 pc 8100
	fadd	%f0, %f0, %f2  #1062 pc 8104
	fabs	%f0, %f0  #1062 pc 8108
	slli	%x5, %x5, 2  #1062 pc 8112
	lw	%x6, 60(%x2)  #1062 pc 8116
	add	%x31, %x5, %x6  #1062 pc 8120
	flw	%f2, 0(%x31)  #1062 pc 8124
	fadd	%f1, %f2, %f30  #0 pc 8128
	sw	%x1, 80(%x2)  #1062 pc 8132
	addi	%x2, %x2, 84  #1062 pc 8136
	jal	%x1, fless.2546  #1062 pc 8140
	addi	%x2, %x2, -84  #1062 pc 8144
	lw	%x1, 80(%x2) #1062 pc 8148
	beq	%x5, %x0, 12  #1062 pc 8152
	j	be_else.9278 #pc 8156
	nop #pc 8160
	addi	%x5, %x0, 0  #0 pc 8164
	ret #pc 8168
	nop #pc 8172
be_else.9278: #pc 8176
	lw	%x5, 0(%x2)  #1063 pc 8176
	flw	%f0, 72(%x2)  #1063 pc 8180
	fsw	%f0, 0(%x5)  #1063 pc 8184
	addi	%x5, %x0, 1  #0 pc 8188
	ret #pc 8192
	nop #pc 8196
be_else.9275: #pc 8200
	addi	%x5, %x0, 0  #0 pc 8200
	ret #pc 8204
	nop #pc 8208
solver_rect.2791:  #pc 8212
	lw	%x29, 4(%x29)  #0 pc 8212
	addi	%x7, %x0, 0  #0 pc 8216
	addi	%x8, %x0, 1  #0 pc 8220
	addi	%x9, %x0, 2  #0 pc 8224
	fsw	%f0, 0(%x2)  #1071 pc 8228
	fsw	%f2, 8(%x2)  #1071 pc 8232
	fsw	%f1, 16(%x2)  #1071 pc 8236
	sw	%x6, 24(%x2)  #1071 pc 8240
	sw	%x5, 28(%x2)  #1071 pc 8244
	sw	%x29, 32(%x2)  #1071 pc 8248
	sw	%x1, 36(%x2)  #1071 pc 8252
	lw	%x30, 0(%x29)  #1071 pc 8256
	addi	%x2, %x2, 40  #1071 pc 8260
	jalr	%x1, %x30, 0  #1071 pc 8264
	addi	%x2, %x2, -40  #1071 pc 8268
	lw	%x1, 36(%x2)  #1071 pc 8272
	beq	%x5, %x0, 12  #1071 pc 8276
	j	be_else.9279 #pc 8280
	nop #pc 8284
	addi	%x7, %x0, 1  #0 pc 8288
	addi	%x8, %x0, 2  #0 pc 8292
	addi	%x9, %x0, 0  #0 pc 8296
	flw	%f0, 16(%x2)  #1072 pc 8300
	flw	%f1, 8(%x2)  #1072 pc 8304
	flw	%f2, 0(%x2)  #1072 pc 8308
	lw	%x5, 28(%x2)  #1072 pc 8312
	lw	%x6, 24(%x2)  #1072 pc 8316
	lw	%x29, 32(%x2)  #1072 pc 8320
	sw	%x1, 36(%x2)  #1072 pc 8324
	lw	%x30, 0(%x29)  #1072 pc 8328
	addi	%x2, %x2, 40  #1072 pc 8332
	jalr	%x1, %x30, 0  #1072 pc 8336
	addi	%x2, %x2, -40  #1072 pc 8340
	lw	%x1, 36(%x2)  #1072 pc 8344
	beq	%x5, %x0, 12  #1072 pc 8348
	j	be_else.9280 #pc 8352
	nop #pc 8356
	addi	%x7, %x0, 2  #0 pc 8360
	addi	%x8, %x0, 0  #0 pc 8364
	addi	%x9, %x0, 1  #0 pc 8368
	flw	%f0, 8(%x2)  #1073 pc 8372
	flw	%f1, 0(%x2)  #1073 pc 8376
	flw	%f2, 16(%x2)  #1073 pc 8380
	lw	%x5, 28(%x2)  #1073 pc 8384
	lw	%x6, 24(%x2)  #1073 pc 8388
	lw	%x29, 32(%x2)  #1073 pc 8392
	sw	%x1, 36(%x2)  #1073 pc 8396
	lw	%x30, 0(%x29)  #1073 pc 8400
	addi	%x2, %x2, 40  #1073 pc 8404
	jalr	%x1, %x30, 0  #1073 pc 8408
	addi	%x2, %x2, -40  #1073 pc 8412
	lw	%x1, 36(%x2)  #1073 pc 8416
	beq	%x5, %x0, 12  #1073 pc 8420
	j	be_else.9281 #pc 8424
	nop #pc 8428
	addi	%x5, %x0, 0  #0 pc 8432
	ret #pc 8436
	nop #pc 8440
be_else.9281: #pc 8444
	addi	%x5, %x0, 3  #0 pc 8444
	ret #pc 8448
	nop #pc 8452
be_else.9280: #pc 8456
	addi	%x5, %x0, 2  #0 pc 8456
	ret #pc 8460
	nop #pc 8464
be_else.9279: #pc 8468
	addi	%x5, %x0, 1  #0 pc 8468
	ret #pc 8472
	nop #pc 8476
solver_surface.2797:  #pc 8480
	lw	%x7, 4(%x29)  #1082 pc 8480
	sw	%x7, 0(%x2)  #1082 pc 8484
	fsw	%f2, 8(%x2)  #1082 pc 8488
	fsw	%f1, 16(%x2)  #1082 pc 8492
	fsw	%f0, 24(%x2)  #1082 pc 8496
	sw	%x6, 32(%x2)  #1082 pc 8500
	sw	%x1, 36(%x2)  #1082 pc 8504
	addi	%x2, %x2, 40  #1082 pc 8508
	jal	%x1, o_param_abc.2704  #1082 pc 8512
	addi	%x2, %x2, -40  #1082 pc 8516
	lw	%x1, 36(%x2) #1082 pc 8520
	addi	%x6, %x5, 0  #1082 pc 8524
	lw	%x5, 32(%x2)  #1083 pc 8528
	sw	%x6, 36(%x2)  #1083 pc 8532
	sw	%x1, 40(%x2)  #1083 pc 8536
	addi	%x2, %x2, 44  #1083 pc 8540
	jal	%x1, veciprod.2666  #1083 pc 8544
	addi	%x2, %x2, -44  #1083 pc 8548
	lw	%x1, 40(%x2) #1083 pc 8552
	fsw	%f0, 40(%x2)  #1084 pc 8556
	sw	%x1, 48(%x2)  #1084 pc 8560
	addi	%x2, %x2, 52  #1084 pc 8564
	jal	%x1, fispos.2536  #1084 pc 8568
	addi	%x2, %x2, -52  #1084 pc 8572
	lw	%x1, 48(%x2) #1084 pc 8576
	beq	%x5, %x0, 12  #1084 pc 8580
	j	be_else.9283 #pc 8584
	nop #pc 8588
	addi	%x5, %x0, 0  #0 pc 8592
	ret #pc 8596
	nop #pc 8600
be_else.9283: #pc 8604
	flw	%f0, 24(%x2)  #1085 pc 8604
	flw	%f1, 16(%x2)  #1085 pc 8608
	flw	%f2, 8(%x2)  #1085 pc 8612
	lw	%x5, 36(%x2)  #1085 pc 8616
	sw	%x1, 48(%x2)  #1085 pc 8620
	addi	%x2, %x2, 52  #1085 pc 8624
	jal	%x1, veciprod2.2669  #1085 pc 8628
	addi	%x2, %x2, -52  #1085 pc 8632
	lw	%x1, 48(%x2) #1085 pc 8636
	sw	%x1, 48(%x2)  #1085 pc 8640
	addi	%x2, %x2, 52  #1085 pc 8644
	jal	%x1, fneg.2540  #1085 pc 8648
	addi	%x2, %x2, -52  #1085 pc 8652
	lw	%x1, 48(%x2) #1085 pc 8656
	flw	%f1, 40(%x2)  #1085 pc 8660
	fdiv	%f0, %f0, %f1  #1085 pc 8664
	lw	%x5, 0(%x2)  #1085 pc 8668
	fsw	%f0, 0(%x5)  #1085 pc 8672
	addi	%x5, %x0, 1  #0 pc 8676
	ret #pc 8680
	nop #pc 8684
quadratic.2803:  #pc 8688
	fsw	%f0, 0(%x2)  #1095 pc 8688
	fsw	%f2, 8(%x2)  #1095 pc 8692
	fsw	%f1, 16(%x2)  #1095 pc 8696
	sw	%x5, 24(%x2)  #1095 pc 8700
	sw	%x1, 28(%x2)  #1095 pc 8704
	addi	%x2, %x2, 32  #1095 pc 8708
	jal	%x1, fsqr.2542  #1095 pc 8712
	addi	%x2, %x2, -32  #1095 pc 8716
	lw	%x1, 28(%x2) #1095 pc 8720
	lw	%x5, 24(%x2)  #1095 pc 8724
	fsw	%f0, 32(%x2)  #1095 pc 8728
	sw	%x1, 40(%x2)  #1095 pc 8732
	addi	%x2, %x2, 44  #1095 pc 8736
	jal	%x1, o_param_a.2698  #1095 pc 8740
	addi	%x2, %x2, -44  #1095 pc 8744
	lw	%x1, 40(%x2) #1095 pc 8748
	flw	%f1, 32(%x2)  #1095 pc 8752
	fmul	%f0, %f1, %f0  #1095 pc 8756
	flw	%f1, 16(%x2)  #1095 pc 8760
	fsw	%f0, 40(%x2)  #1095 pc 8764
	fadd	%f0, %f1, %f30  #0 pc 8768
	sw	%x1, 48(%x2)  #1095 pc 8772
	addi	%x2, %x2, 52  #1095 pc 8776
	jal	%x1, fsqr.2542  #1095 pc 8780
	addi	%x2, %x2, -52  #1095 pc 8784
	lw	%x1, 48(%x2) #1095 pc 8788
	lw	%x5, 24(%x2)  #1095 pc 8792
	fsw	%f0, 48(%x2)  #1095 pc 8796
	sw	%x1, 56(%x2)  #1095 pc 8800
	addi	%x2, %x2, 60  #1095 pc 8804
	jal	%x1, o_param_b.2700  #1095 pc 8808
	addi	%x2, %x2, -60  #1095 pc 8812
	lw	%x1, 56(%x2) #1095 pc 8816
	flw	%f1, 48(%x2)  #1095 pc 8820
	fmul	%f0, %f1, %f0  #1095 pc 8824
	flw	%f1, 40(%x2)  #1095 pc 8828
	fadd	%f0, %f1, %f0  #1095 pc 8832
	flw	%f1, 8(%x2)  #1095 pc 8836
	fsw	%f0, 56(%x2)  #1095 pc 8840
	fadd	%f0, %f1, %f30  #0 pc 8844
	sw	%x1, 64(%x2)  #1095 pc 8848
	addi	%x2, %x2, 68  #1095 pc 8852
	jal	%x1, fsqr.2542  #1095 pc 8856
	addi	%x2, %x2, -68  #1095 pc 8860
	lw	%x1, 64(%x2) #1095 pc 8864
	lw	%x5, 24(%x2)  #1095 pc 8868
	fsw	%f0, 64(%x2)  #1095 pc 8872
	sw	%x1, 72(%x2)  #1095 pc 8876
	addi	%x2, %x2, 76  #1095 pc 8880
	jal	%x1, o_param_c.2702  #1095 pc 8884
	addi	%x2, %x2, -76  #1095 pc 8888
	lw	%x1, 72(%x2) #1095 pc 8892
	flw	%f1, 64(%x2)  #1095 pc 8896
	fmul	%f0, %f1, %f0  #1095 pc 8900
	flw	%f1, 56(%x2)  #1095 pc 8904
	fadd	%f0, %f1, %f0  #1095 pc 8908
	lw	%x5, 24(%x2)  #1097 pc 8912
	fsw	%f0, 72(%x2)  #1097 pc 8916
	sw	%x1, 80(%x2)  #1097 pc 8920
	addi	%x2, %x2, 84  #1097 pc 8924
	jal	%x1, o_isrot.2696  #1097 pc 8928
	addi	%x2, %x2, -84  #1097 pc 8932
	lw	%x1, 80(%x2) #1097 pc 8936
	beq	%x5, %x0, 12  #1097 pc 8940
	j	be_else.9285 #pc 8944
	nop #pc 8948
	flw	%f0, 72(%x2)  #1098 pc 8952
	ret #pc 8956
	nop #pc 8960
be_else.9285: #pc 8964
	flw	%f0, 8(%x2)  #1101 pc 8964
	flw	%f1, 16(%x2)  #1101 pc 8968
	fmul	%f2, %f1, %f0  #1101 pc 8972
	lw	%x5, 24(%x2)  #1101 pc 8976
	fsw	%f2, 80(%x2)  #1101 pc 8980
	sw	%x1, 88(%x2)  #1101 pc 8984
	addi	%x2, %x2, 92  #1101 pc 8988
	jal	%x1, o_param_r1.2722  #1101 pc 8992
	addi	%x2, %x2, -92  #1101 pc 8996
	lw	%x1, 88(%x2) #1101 pc 9000
	flw	%f1, 80(%x2)  #1101 pc 9004
	fmul	%f0, %f1, %f0  #1101 pc 9008
	flw	%f1, 72(%x2)  #1100 pc 9012
	fadd	%f0, %f1, %f0  #1100 pc 9016
	flw	%f1, 0(%x2)  #1102 pc 9020
	flw	%f2, 8(%x2)  #1102 pc 9024
	fmul	%f2, %f2, %f1  #1102 pc 9028
	lw	%x5, 24(%x2)  #1102 pc 9032
	fsw	%f0, 88(%x2)  #1102 pc 9036
	fsw	%f2, 96(%x2)  #1102 pc 9040
	sw	%x1, 104(%x2)  #1102 pc 9044
	addi	%x2, %x2, 108  #1102 pc 9048
	jal	%x1, o_param_r2.2724  #1102 pc 9052
	addi	%x2, %x2, -108  #1102 pc 9056
	lw	%x1, 104(%x2) #1102 pc 9060
	flw	%f1, 96(%x2)  #1102 pc 9064
	fmul	%f0, %f1, %f0  #1102 pc 9068
	flw	%f1, 88(%x2)  #1100 pc 9072
	fadd	%f0, %f1, %f0  #1100 pc 9076
	flw	%f1, 16(%x2)  #1103 pc 9080
	flw	%f2, 0(%x2)  #1103 pc 9084
	fmul	%f1, %f2, %f1  #1103 pc 9088
	lw	%x5, 24(%x2)  #1103 pc 9092
	fsw	%f0, 104(%x2)  #1103 pc 9096
	fsw	%f1, 112(%x2)  #1103 pc 9100
	sw	%x1, 120(%x2)  #1103 pc 9104
	addi	%x2, %x2, 124  #1103 pc 9108
	jal	%x1, o_param_r3.2726  #1103 pc 9112
	addi	%x2, %x2, -124  #1103 pc 9116
	lw	%x1, 120(%x2) #1103 pc 9120
	flw	%f1, 112(%x2)  #1103 pc 9124
	fmul	%f0, %f1, %f0  #1103 pc 9128
	flw	%f1, 104(%x2)  #1100 pc 9132
	fadd	%f0, %f1, %f0  #1100 pc 9136
	ret #pc 9140
	nop #pc 9144
bilinear.2808:  #pc 9148
	fmul	%f6, %f0, %f3  #1109 pc 9148
	fsw	%f3, 0(%x2)  #1109 pc 9152
	fsw	%f0, 8(%x2)  #1109 pc 9156
	fsw	%f5, 16(%x2)  #1109 pc 9160
	fsw	%f2, 24(%x2)  #1109 pc 9164
	sw	%x5, 32(%x2)  #1109 pc 9168
	fsw	%f4, 40(%x2)  #1109 pc 9172
	fsw	%f1, 48(%x2)  #1109 pc 9176
	fsw	%f6, 56(%x2)  #1109 pc 9180
	sw	%x1, 64(%x2)  #1109 pc 9184
	addi	%x2, %x2, 68  #1109 pc 9188
	jal	%x1, o_param_a.2698  #1109 pc 9192
	addi	%x2, %x2, -68  #1109 pc 9196
	lw	%x1, 64(%x2) #1109 pc 9200
	flw	%f1, 56(%x2)  #1109 pc 9204
	fmul	%f0, %f1, %f0  #1109 pc 9208
	flw	%f1, 40(%x2)  #1110 pc 9212
	flw	%f2, 48(%x2)  #1110 pc 9216
	fmul	%f3, %f2, %f1  #1110 pc 9220
	lw	%x5, 32(%x2)  #1110 pc 9224
	fsw	%f0, 64(%x2)  #1110 pc 9228
	fsw	%f3, 72(%x2)  #1110 pc 9232
	sw	%x1, 80(%x2)  #1110 pc 9236
	addi	%x2, %x2, 84  #1110 pc 9240
	jal	%x1, o_param_b.2700  #1110 pc 9244
	addi	%x2, %x2, -84  #1110 pc 9248
	lw	%x1, 80(%x2) #1110 pc 9252
	flw	%f1, 72(%x2)  #1110 pc 9256
	fmul	%f0, %f1, %f0  #1110 pc 9260
	flw	%f1, 64(%x2)  #1109 pc 9264
	fadd	%f0, %f1, %f0  #1109 pc 9268
	flw	%f1, 16(%x2)  #1111 pc 9272
	flw	%f2, 24(%x2)  #1111 pc 9276
	fmul	%f3, %f2, %f1  #1111 pc 9280
	lw	%x5, 32(%x2)  #1111 pc 9284
	fsw	%f0, 80(%x2)  #1111 pc 9288
	fsw	%f3, 88(%x2)  #1111 pc 9292
	sw	%x1, 96(%x2)  #1111 pc 9296
	addi	%x2, %x2, 100  #1111 pc 9300
	jal	%x1, o_param_c.2702  #1111 pc 9304
	addi	%x2, %x2, -100  #1111 pc 9308
	lw	%x1, 96(%x2) #1111 pc 9312
	flw	%f1, 88(%x2)  #1111 pc 9316
	fmul	%f0, %f1, %f0  #1111 pc 9320
	flw	%f1, 80(%x2)  #1109 pc 9324
	fadd	%f0, %f1, %f0  #1109 pc 9328
	lw	%x5, 32(%x2)  #1113 pc 9332
	fsw	%f0, 96(%x2)  #1113 pc 9336
	sw	%x1, 104(%x2)  #1113 pc 9340
	addi	%x2, %x2, 108  #1113 pc 9344
	jal	%x1, o_isrot.2696  #1113 pc 9348
	addi	%x2, %x2, -108  #1113 pc 9352
	lw	%x1, 104(%x2) #1113 pc 9356
	beq	%x5, %x0, 12  #1113 pc 9360
	j	be_else.9287 #pc 9364
	nop #pc 9368
	flw	%f0, 96(%x2)  #1114 pc 9372
	ret #pc 9376
	nop #pc 9380
be_else.9287: #pc 9384
	flw	%f0, 40(%x2)  #1117 pc 9384
	flw	%f1, 24(%x2)  #1117 pc 9388
	fmul	%f2, %f1, %f0  #1117 pc 9392
	flw	%f3, 16(%x2)  #1117 pc 9396
	flw	%f4, 48(%x2)  #1117 pc 9400
	fmul	%f5, %f4, %f3  #1117 pc 9404
	fadd	%f2, %f2, %f5  #1117 pc 9408
	lw	%x5, 32(%x2)  #1117 pc 9412
	fsw	%f2, 104(%x2)  #1117 pc 9416
	sw	%x1, 112(%x2)  #1117 pc 9420
	addi	%x2, %x2, 116  #1117 pc 9424
	jal	%x1, o_param_r1.2722  #1117 pc 9428
	addi	%x2, %x2, -116  #1117 pc 9432
	lw	%x1, 112(%x2) #1117 pc 9436
	flw	%f1, 104(%x2)  #1117 pc 9440
	fmul	%f0, %f1, %f0  #1117 pc 9444
	flw	%f1, 16(%x2)  #1118 pc 9448
	flw	%f2, 8(%x2)  #1118 pc 9452
	fmul	%f1, %f2, %f1  #1118 pc 9456
	flw	%f3, 0(%x2)  #1118 pc 9460
	flw	%f4, 24(%x2)  #1118 pc 9464
	fmul	%f4, %f4, %f3  #1118 pc 9468
	fadd	%f1, %f1, %f4  #1118 pc 9472
	lw	%x5, 32(%x2)  #1118 pc 9476
	fsw	%f0, 112(%x2)  #1118 pc 9480
	fsw	%f1, 120(%x2)  #1118 pc 9484
	sw	%x1, 128(%x2)  #1118 pc 9488
	addi	%x2, %x2, 132  #1118 pc 9492
	jal	%x1, o_param_r2.2724  #1118 pc 9496
	addi	%x2, %x2, -132  #1118 pc 9500
	lw	%x1, 128(%x2) #1118 pc 9504
	flw	%f1, 120(%x2)  #1118 pc 9508
	fmul	%f0, %f1, %f0  #1118 pc 9512
	flw	%f1, 112(%x2)  #1117 pc 9516
	fadd	%f0, %f1, %f0  #1117 pc 9520
	flw	%f1, 40(%x2)  #1119 pc 9524
	flw	%f2, 8(%x2)  #1119 pc 9528
	fmul	%f1, %f2, %f1  #1119 pc 9532
	flw	%f2, 0(%x2)  #1119 pc 9536
	flw	%f3, 48(%x2)  #1119 pc 9540
	fmul	%f2, %f3, %f2  #1119 pc 9544
	fadd	%f1, %f1, %f2  #1119 pc 9548
	lw	%x5, 32(%x2)  #1119 pc 9552
	fsw	%f0, 128(%x2)  #1119 pc 9556
	fsw	%f1, 136(%x2)  #1119 pc 9560
	sw	%x1, 144(%x2)  #1119 pc 9564
	addi	%x2, %x2, 148  #1119 pc 9568
	jal	%x1, o_param_r3.2726  #1119 pc 9572
	addi	%x2, %x2, -148  #1119 pc 9576
	lw	%x1, 144(%x2) #1119 pc 9580
	flw	%f1, 136(%x2)  #1119 pc 9584
	fmul	%f0, %f1, %f0  #1119 pc 9588
	flw	%f1, 128(%x2)  #1117 pc 9592
	fadd	%f0, %f1, %f0  #1117 pc 9596
	sw	%x1, 144(%x2)  #1116 pc 9600
	addi	%x2, %x2, 148  #1116 pc 9604
	jal	%x1, fhalf.2544  #1116 pc 9608
	addi	%x2, %x2, -148  #1116 pc 9612
	lw	%x1, 144(%x2) #1116 pc 9616
	flw	%f1, 96(%x2)  #1116 pc 9620
	fadd	%f0, %f1, %f0  #1116 pc 9624
	ret #pc 9628
	nop #pc 9632
solver_second.2816:  #pc 9636
	lw	%x7, 4(%x29)  #0 pc 9636
	flw	%f3, 0(%x6)  #1134 pc 9640
	flw	%f4, 4(%x6)  #1134 pc 9644
	flw	%f5, 8(%x6)  #1134 pc 9648
	sw	%x7, 0(%x2)  #1134 pc 9652
	fsw	%f2, 8(%x2)  #1134 pc 9656
	fsw	%f1, 16(%x2)  #1134 pc 9660
	fsw	%f0, 24(%x2)  #1134 pc 9664
	sw	%x5, 32(%x2)  #1134 pc 9668
	sw	%x6, 36(%x2)  #1134 pc 9672
	fadd	%f2, %f5, %f30  #0 pc 9676
	fadd	%f1, %f4, %f30  #0 pc 9680
	fadd	%f0, %f3, %f30  #0 pc 9684
	sw	%x1, 40(%x2)  #1134 pc 9688
	addi	%x2, %x2, 44  #1134 pc 9692
	jal	%x1, quadratic.2803  #1134 pc 9696
	addi	%x2, %x2, -44  #1134 pc 9700
	lw	%x1, 40(%x2) #1134 pc 9704
	fsw	%f0, 40(%x2)  #1136 pc 9708
	sw	%x1, 48(%x2)  #1136 pc 9712
	addi	%x2, %x2, 52  #1136 pc 9716
	jal	%x1, fiszero.2534  #1136 pc 9720
	addi	%x2, %x2, -52  #1136 pc 9724
	lw	%x1, 48(%x2) #1136 pc 9728
	beq	%x5, %x0, 12  #1136 pc 9732
	j	be_else.9289 #pc 9736
	nop #pc 9740
	lw	%x5, 36(%x2)  #1141 pc 9744
	flw	%f0, 0(%x5)  #1141 pc 9748
	flw	%f1, 4(%x5)  #1141 pc 9752
	flw	%f2, 8(%x5)  #1141 pc 9756
	flw	%f3, 24(%x2)  #1141 pc 9760
	flw	%f4, 16(%x2)  #1141 pc 9764
	flw	%f5, 8(%x2)  #1141 pc 9768
	lw	%x5, 32(%x2)  #1141 pc 9772
	sw	%x1, 48(%x2)  #1141 pc 9776
	addi	%x2, %x2, 52  #1141 pc 9780
	jal	%x1, bilinear.2808  #1141 pc 9784
	addi	%x2, %x2, -52  #1141 pc 9788
	lw	%x1, 48(%x2) #1141 pc 9792
	flw	%f1, 24(%x2)  #1143 pc 9796
	flw	%f2, 16(%x2)  #1143 pc 9800
	flw	%f3, 8(%x2)  #1143 pc 9804
	lw	%x5, 32(%x2)  #1143 pc 9808
	fsw	%f0, 48(%x2)  #1143 pc 9812
	fadd	%f0, %f1, %f30  #0 pc 9816
	fadd	%f1, %f2, %f30  #0 pc 9820
	fadd	%f2, %f3, %f30  #0 pc 9824
	sw	%x1, 56(%x2)  #1143 pc 9828
	addi	%x2, %x2, 60  #1143 pc 9832
	jal	%x1, quadratic.2803  #1143 pc 9836
	addi	%x2, %x2, -60  #1143 pc 9840
	lw	%x1, 56(%x2) #1143 pc 9844
	lw	%x5, 32(%x2)  #1144 pc 9848
	fsw	%f0, 56(%x2)  #1144 pc 9852
	sw	%x1, 64(%x2)  #1144 pc 9856
	addi	%x2, %x2, 68  #1144 pc 9860
	jal	%x1, o_form.2690  #1144 pc 9864
	addi	%x2, %x2, -68  #1144 pc 9868
	lw	%x1, 64(%x2) #1144 pc 9872
	addi	%x31, %x0, 3  #pc 9876
	beq	%x5, %x31, 12  #1144 pc 9880
	j	be_else.9290 #pc 9884
	nop #pc 9888
	fmv	%f0, l.6317  #0 pc 9892
	flw	%f1, 56(%x2)  #1144 pc 9896
	fsub	%f0, %f1, %f0  #1144 pc 9900
	j	be_cont.9291 #pc 9904
	nop #pc 9908
be_else.9290: #pc 9912
	flw	%f0, 56(%x2)  #1144 pc 9912
be_cont.9291: #pc 9916
	flw	%f1, 48(%x2)  #1146 pc 9916
	fsw	%f0, 64(%x2)  #1146 pc 9920
	fadd	%f0, %f1, %f30  #0 pc 9924
	sw	%x1, 72(%x2)  #1146 pc 9928
	addi	%x2, %x2, 76  #1146 pc 9932
	jal	%x1, fsqr.2542  #1146 pc 9936
	addi	%x2, %x2, -76  #1146 pc 9940
	lw	%x1, 72(%x2) #1146 pc 9944
	flw	%f1, 64(%x2)  #1146 pc 9948
	flw	%f2, 40(%x2)  #1146 pc 9952
	fmul	%f1, %f2, %f1  #1146 pc 9956
	fsub	%f0, %f0, %f1  #1146 pc 9960
	fsw	%f0, 72(%x2)  #1148 pc 9964
	sw	%x1, 80(%x2)  #1148 pc 9968
	addi	%x2, %x2, 84  #1148 pc 9972
	jal	%x1, fispos.2536  #1148 pc 9976
	addi	%x2, %x2, -84  #1148 pc 9980
	lw	%x1, 80(%x2) #1148 pc 9984
	beq	%x5, %x0, 12  #1148 pc 9988
	j	be_else.9292 #pc 9992
	nop #pc 9996
	addi	%x5, %x0, 0  #0 pc 10000
	ret #pc 10004
	nop #pc 10008
be_else.9292: #pc 10012
	flw	%f0, 72(%x2)  #1149 pc 10012
	fsqrt	%f0, %f0  #1149 pc 10016
	lw	%x5, 32(%x2)  #1150 pc 10020
	fsw	%f0, 80(%x2)  #1150 pc 10024
	sw	%x1, 88(%x2)  #1150 pc 10028
	addi	%x2, %x2, 92  #1150 pc 10032
	jal	%x1, o_isinvert.2694  #1150 pc 10036
	addi	%x2, %x2, -92  #1150 pc 10040
	lw	%x1, 88(%x2) #1150 pc 10044
	beq	%x5, %x0, 12  #1150 pc 10048
	j	be_else.9293 #pc 10052
	nop #pc 10056
	flw	%f0, 80(%x2)  #1150 pc 10060
	sw	%x1, 88(%x2)  #1150 pc 10064
	addi	%x2, %x2, 92  #1150 pc 10068
	jal	%x1, fneg.2540  #1150 pc 10072
	addi	%x2, %x2, -92  #1150 pc 10076
	lw	%x1, 88(%x2) #1150 pc 10080
	j	be_cont.9294 #pc 10084
	nop #pc 10088
be_else.9293: #pc 10092
	flw	%f0, 80(%x2)  #1150 pc 10092
be_cont.9294: #pc 10096
	flw	%f1, 48(%x2)  #1151 pc 10096
	fsub	%f0, %f0, %f1  #1151 pc 10100
	flw	%f1, 40(%x2)  #1151 pc 10104
	fdiv	%f0, %f0, %f1  #1151 pc 10108
	lw	%x5, 0(%x2)  #1151 pc 10112
	fsw	%f0, 0(%x5)  #1151 pc 10116
	addi	%x5, %x0, 1  #0 pc 10120
	ret #pc 10124
	nop #pc 10128
be_else.9289: #pc 10132
	addi	%x5, %x0, 0  #0 pc 10132
	ret #pc 10136
	nop #pc 10140
solver.2822:  #pc 10144
	lw	%x8, 16(%x29)  #1160 pc 10144
	lw	%x9, 12(%x29)  #1160 pc 10148
	lw	%x10, 8(%x29)  #1160 pc 10152
	lw	%x11, 4(%x29)  #1160 pc 10156
	slli	%x5, %x5, 2  #1160 pc 10160
	add	%x31, %x5, %x11  #1160 pc 10164
	lw	%x5, 0(%x31)  #1160 pc 10168
	flw	%f0, 0(%x7)  #1162 pc 10172
	sw	%x9, 0(%x2)  #1162 pc 10176
	sw	%x8, 4(%x2)  #1162 pc 10180
	sw	%x6, 8(%x2)  #1162 pc 10184
	sw	%x10, 12(%x2)  #1162 pc 10188
	sw	%x5, 16(%x2)  #1162 pc 10192
	sw	%x7, 20(%x2)  #1162 pc 10196
	fsw	%f0, 24(%x2)  #1162 pc 10200
	sw	%x1, 32(%x2)  #1162 pc 10204
	addi	%x2, %x2, 36  #1162 pc 10208
	jal	%x1, o_param_x.2706  #1162 pc 10212
	addi	%x2, %x2, -36  #1162 pc 10216
	lw	%x1, 32(%x2) #1162 pc 10220
	flw	%f1, 24(%x2)  #1162 pc 10224
	fsub	%f0, %f1, %f0  #1162 pc 10228
	lw	%x5, 20(%x2)  #1163 pc 10232
	flw	%f1, 4(%x5)  #1163 pc 10236
	lw	%x6, 16(%x2)  #1163 pc 10240
	fsw	%f0, 32(%x2)  #1163 pc 10244
	fsw	%f1, 40(%x2)  #1163 pc 10248
	addi	%x5, %x6, 0  #0 pc 10252
	sw	%x1, 48(%x2)  #1163 pc 10256
	addi	%x2, %x2, 52  #1163 pc 10260
	jal	%x1, o_param_y.2708  #1163 pc 10264
	addi	%x2, %x2, -52  #1163 pc 10268
	lw	%x1, 48(%x2) #1163 pc 10272
	flw	%f1, 40(%x2)  #1163 pc 10276
	fsub	%f0, %f1, %f0  #1163 pc 10280
	lw	%x5, 20(%x2)  #1164 pc 10284
	flw	%f1, 8(%x5)  #1164 pc 10288
	lw	%x5, 16(%x2)  #1164 pc 10292
	fsw	%f0, 48(%x2)  #1164 pc 10296
	fsw	%f1, 56(%x2)  #1164 pc 10300
	sw	%x1, 64(%x2)  #1164 pc 10304
	addi	%x2, %x2, 68  #1164 pc 10308
	jal	%x1, o_param_z.2710  #1164 pc 10312
	addi	%x2, %x2, -68  #1164 pc 10316
	lw	%x1, 64(%x2) #1164 pc 10320
	flw	%f1, 56(%x2)  #1164 pc 10324
	fsub	%f0, %f1, %f0  #1164 pc 10328
	lw	%x5, 16(%x2)  #1165 pc 10332
	fsw	%f0, 64(%x2)  #1165 pc 10336
	sw	%x1, 72(%x2)  #1165 pc 10340
	addi	%x2, %x2, 76  #1165 pc 10344
	jal	%x1, o_form.2690  #1165 pc 10348
	addi	%x2, %x2, -76  #1165 pc 10352
	lw	%x1, 72(%x2) #1165 pc 10356
	addi	%x31, %x0, 1  #pc 10360
	beq	%x5, %x31, 12  #1167 pc 10364
	j	be_else.9295 #pc 10368
	nop #pc 10372
	flw	%f0, 32(%x2)  #1167 pc 10376
	flw	%f1, 48(%x2)  #1167 pc 10380
	flw	%f2, 64(%x2)  #1167 pc 10384
	lw	%x5, 16(%x2)  #1167 pc 10388
	lw	%x6, 8(%x2)  #1167 pc 10392
	lw	%x29, 12(%x2)  #1167 pc 10396
	lw	%x30, 0(%x29)  #1167 pc 10400
	jalr	%x0, %x30, 0  #1167 pc 10404
	nop #pc 10408
be_else.9295: #pc 10412
	addi	%x31, %x0, 2  #pc 10412
	beq	%x5, %x31, 12  #1168 pc 10416
	j	be_else.9296 #pc 10420
	nop #pc 10424
	flw	%f0, 32(%x2)  #1168 pc 10428
	flw	%f1, 48(%x2)  #1168 pc 10432
	flw	%f2, 64(%x2)  #1168 pc 10436
	lw	%x5, 16(%x2)  #1168 pc 10440
	lw	%x6, 8(%x2)  #1168 pc 10444
	lw	%x29, 4(%x2)  #1168 pc 10448
	lw	%x30, 0(%x29)  #1168 pc 10452
	jalr	%x0, %x30, 0  #1168 pc 10456
	nop #pc 10460
be_else.9296: #pc 10464
	flw	%f0, 32(%x2)  #1169 pc 10464
	flw	%f1, 48(%x2)  #1169 pc 10468
	flw	%f2, 64(%x2)  #1169 pc 10472
	lw	%x5, 16(%x2)  #1169 pc 10476
	lw	%x6, 8(%x2)  #1169 pc 10480
	lw	%x29, 0(%x2)  #1169 pc 10484
	lw	%x30, 0(%x29)  #1169 pc 10488
	jalr	%x0, %x30, 0  #1169 pc 10492
	nop #pc 10496
solver_rect_fast.2826:  #pc 10500
	lw	%x8, 4(%x29)  #0 pc 10500
	flw	%f3, 0(%x7)  #1192 pc 10504
	fsub	%f3, %f3, %f0  #1192 pc 10508
	flw	%f4, 4(%x7)  #1192 pc 10512
	fmul	%f3, %f3, %f4  #1192 pc 10516
	flw	%f4, 4(%x6)  #1194 pc 10520
	fmul	%f4, %f3, %f4  #1194 pc 10524
	fadd	%f4, %f4, %f1  #1194 pc 10528
	fabs	%f4, %f4  #1194 pc 10532
	sw	%x8, 0(%x2)  #1194 pc 10536
	fsw	%f0, 8(%x2)  #1194 pc 10540
	fsw	%f1, 16(%x2)  #1194 pc 10544
	sw	%x7, 24(%x2)  #1194 pc 10548
	sw	%x5, 28(%x2)  #1194 pc 10552
	fsw	%f2, 32(%x2)  #1194 pc 10556
	fsw	%f3, 40(%x2)  #1194 pc 10560
	sw	%x6, 48(%x2)  #1194 pc 10564
	fsw	%f4, 56(%x2)  #1194 pc 10568
	sw	%x1, 64(%x2)  #1194 pc 10572
	addi	%x2, %x2, 68  #1194 pc 10576
	jal	%x1, o_param_b.2700  #1194 pc 10580
	addi	%x2, %x2, -68  #1194 pc 10584
	lw	%x1, 64(%x2) #1194 pc 10588
	fadd	%f1, %f0, %f30  #1194 pc 10592
	flw	%f0, 56(%x2)  #1194 pc 10596
	sw	%x1, 64(%x2)  #1194 pc 10600
	addi	%x2, %x2, 68  #1194 pc 10604
	jal	%x1, fless.2546  #1194 pc 10608
	addi	%x2, %x2, -68  #1194 pc 10612
	lw	%x1, 64(%x2) #1194 pc 10616
	beq	%x5, %x0, 12  #1194 pc 10620
	j	be_else.9299 #pc 10624
	nop #pc 10628
	addi	%x5, %x0, 0  #0 pc 10632
	j	be_cont.9300 #pc 10636
	nop #pc 10640
be_else.9299: #pc 10644
	lw	%x5, 48(%x2)  #1195 pc 10644
	flw	%f0, 8(%x5)  #1195 pc 10648
	flw	%f1, 40(%x2)  #1195 pc 10652
	fmul	%f0, %f1, %f0  #1195 pc 10656
	flw	%f2, 32(%x2)  #1195 pc 10660
	fadd	%f0, %f0, %f2  #1195 pc 10664
	fabs	%f0, %f0  #1195 pc 10668
	lw	%x6, 28(%x2)  #1195 pc 10672
	fsw	%f0, 64(%x2)  #1195 pc 10676
	addi	%x5, %x6, 0  #0 pc 10680
	sw	%x1, 72(%x2)  #1195 pc 10684
	addi	%x2, %x2, 76  #1195 pc 10688
	jal	%x1, o_param_c.2702  #1195 pc 10692
	addi	%x2, %x2, -76  #1195 pc 10696
	lw	%x1, 72(%x2) #1195 pc 10700
	fadd	%f1, %f0, %f30  #1195 pc 10704
	flw	%f0, 64(%x2)  #1195 pc 10708
	sw	%x1, 72(%x2)  #1195 pc 10712
	addi	%x2, %x2, 76  #1195 pc 10716
	jal	%x1, fless.2546  #1195 pc 10720
	addi	%x2, %x2, -76  #1195 pc 10724
	lw	%x1, 72(%x2) #1195 pc 10728
	beq	%x5, %x0, 12  #1195 pc 10732
	j	be_else.9301 #pc 10736
	nop #pc 10740
	addi	%x5, %x0, 0  #0 pc 10744
	j	be_cont.9302 #pc 10748
	nop #pc 10752
be_else.9301: #pc 10756
	lw	%x5, 24(%x2)  #1196 pc 10756
	flw	%f0, 4(%x5)  #1196 pc 10760
	sw	%x1, 72(%x2)  #1196 pc 10764
	addi	%x2, %x2, 76  #1196 pc 10768
	jal	%x1, fiszero.2534  #1196 pc 10772
	addi	%x2, %x2, -76  #1196 pc 10776
	lw	%x1, 72(%x2) #1196 pc 10780
	beq	%x5, %x0, 12  #1196 pc 10784
	j	be_else.9303 #pc 10788
	nop #pc 10792
	addi	%x5, %x0, 1  #0 pc 10796
	j	be_cont.9304 #pc 10800
	nop #pc 10804
be_else.9303: #pc 10808
	addi	%x5, %x0, 0  #0 pc 10808
be_cont.9304: #pc 10812
be_cont.9302: #pc 10812
be_cont.9300: #pc 10812
	beq	%x5, %x0, 12  #1193 pc 10812
	j	be_else.9305 #pc 10816
	nop #pc 10820
	lw	%x5, 24(%x2)  #1201 pc 10824
	flw	%f0, 8(%x5)  #1201 pc 10828
	flw	%f1, 16(%x2)  #1201 pc 10832
	fsub	%f0, %f0, %f1  #1201 pc 10836
	flw	%f2, 12(%x5)  #1201 pc 10840
	fmul	%f0, %f0, %f2  #1201 pc 10844
	lw	%x6, 48(%x2)  #1203 pc 10848
	flw	%f2, 0(%x6)  #1203 pc 10852
	fmul	%f2, %f0, %f2  #1203 pc 10856
	flw	%f3, 8(%x2)  #1203 pc 10860
	fadd	%f2, %f2, %f3  #1203 pc 10864
	fabs	%f2, %f2  #1203 pc 10868
	lw	%x7, 28(%x2)  #1203 pc 10872
	fsw	%f0, 72(%x2)  #1203 pc 10876
	fsw	%f2, 80(%x2)  #1203 pc 10880
	addi	%x5, %x7, 0  #0 pc 10884
	sw	%x1, 88(%x2)  #1203 pc 10888
	addi	%x2, %x2, 92  #1203 pc 10892
	jal	%x1, o_param_a.2698  #1203 pc 10896
	addi	%x2, %x2, -92  #1203 pc 10900
	lw	%x1, 88(%x2) #1203 pc 10904
	fadd	%f1, %f0, %f30  #1203 pc 10908
	flw	%f0, 80(%x2)  #1203 pc 10912
	sw	%x1, 88(%x2)  #1203 pc 10916
	addi	%x2, %x2, 92  #1203 pc 10920
	jal	%x1, fless.2546  #1203 pc 10924
	addi	%x2, %x2, -92  #1203 pc 10928
	lw	%x1, 88(%x2) #1203 pc 10932
	beq	%x5, %x0, 12  #1203 pc 10936
	j	be_else.9306 #pc 10940
	nop #pc 10944
	addi	%x5, %x0, 0  #0 pc 10948
	j	be_cont.9307 #pc 10952
	nop #pc 10956
be_else.9306: #pc 10960
	lw	%x5, 48(%x2)  #1204 pc 10960
	flw	%f0, 8(%x5)  #1204 pc 10964
	flw	%f1, 72(%x2)  #1204 pc 10968
	fmul	%f0, %f1, %f0  #1204 pc 10972
	flw	%f2, 32(%x2)  #1204 pc 10976
	fadd	%f0, %f0, %f2  #1204 pc 10980
	fabs	%f0, %f0  #1204 pc 10984
	lw	%x6, 28(%x2)  #1204 pc 10988
	fsw	%f0, 88(%x2)  #1204 pc 10992
	addi	%x5, %x6, 0  #0 pc 10996
	sw	%x1, 96(%x2)  #1204 pc 11000
	addi	%x2, %x2, 100  #1204 pc 11004
	jal	%x1, o_param_c.2702  #1204 pc 11008
	addi	%x2, %x2, -100  #1204 pc 11012
	lw	%x1, 96(%x2) #1204 pc 11016
	fadd	%f1, %f0, %f30  #1204 pc 11020
	flw	%f0, 88(%x2)  #1204 pc 11024
	sw	%x1, 96(%x2)  #1204 pc 11028
	addi	%x2, %x2, 100  #1204 pc 11032
	jal	%x1, fless.2546  #1204 pc 11036
	addi	%x2, %x2, -100  #1204 pc 11040
	lw	%x1, 96(%x2) #1204 pc 11044
	beq	%x5, %x0, 12  #1204 pc 11048
	j	be_else.9308 #pc 11052
	nop #pc 11056
	addi	%x5, %x0, 0  #0 pc 11060
	j	be_cont.9309 #pc 11064
	nop #pc 11068
be_else.9308: #pc 11072
	lw	%x5, 24(%x2)  #1205 pc 11072
	flw	%f0, 12(%x5)  #1205 pc 11076
	sw	%x1, 96(%x2)  #1205 pc 11080
	addi	%x2, %x2, 100  #1205 pc 11084
	jal	%x1, fiszero.2534  #1205 pc 11088
	addi	%x2, %x2, -100  #1205 pc 11092
	lw	%x1, 96(%x2) #1205 pc 11096
	beq	%x5, %x0, 12  #1205 pc 11100
	j	be_else.9310 #pc 11104
	nop #pc 11108
	addi	%x5, %x0, 1  #0 pc 11112
	j	be_cont.9311 #pc 11116
	nop #pc 11120
be_else.9310: #pc 11124
	addi	%x5, %x0, 0  #0 pc 11124
be_cont.9311: #pc 11128
be_cont.9309: #pc 11128
be_cont.9307: #pc 11128
	beq	%x5, %x0, 12  #1202 pc 11128
	j	be_else.9312 #pc 11132
	nop #pc 11136
	lw	%x5, 24(%x2)  #1210 pc 11140
	flw	%f0, 16(%x5)  #1210 pc 11144
	flw	%f1, 32(%x2)  #1210 pc 11148
	fsub	%f0, %f0, %f1  #1210 pc 11152
	flw	%f1, 20(%x5)  #1210 pc 11156
	fmul	%f0, %f0, %f1  #1210 pc 11160
	lw	%x6, 48(%x2)  #1212 pc 11164
	flw	%f1, 0(%x6)  #1212 pc 11168
	fmul	%f1, %f0, %f1  #1212 pc 11172
	flw	%f2, 8(%x2)  #1212 pc 11176
	fadd	%f1, %f1, %f2  #1212 pc 11180
	fabs	%f1, %f1  #1212 pc 11184
	lw	%x7, 28(%x2)  #1212 pc 11188
	fsw	%f0, 96(%x2)  #1212 pc 11192
	fsw	%f1, 104(%x2)  #1212 pc 11196
	addi	%x5, %x7, 0  #0 pc 11200
	sw	%x1, 112(%x2)  #1212 pc 11204
	addi	%x2, %x2, 116  #1212 pc 11208
	jal	%x1, o_param_a.2698  #1212 pc 11212
	addi	%x2, %x2, -116  #1212 pc 11216
	lw	%x1, 112(%x2) #1212 pc 11220
	fadd	%f1, %f0, %f30  #1212 pc 11224
	flw	%f0, 104(%x2)  #1212 pc 11228
	sw	%x1, 112(%x2)  #1212 pc 11232
	addi	%x2, %x2, 116  #1212 pc 11236
	jal	%x1, fless.2546  #1212 pc 11240
	addi	%x2, %x2, -116  #1212 pc 11244
	lw	%x1, 112(%x2) #1212 pc 11248
	beq	%x5, %x0, 12  #1212 pc 11252
	j	be_else.9313 #pc 11256
	nop #pc 11260
	addi	%x5, %x0, 0  #0 pc 11264
	j	be_cont.9314 #pc 11268
	nop #pc 11272
be_else.9313: #pc 11276
	lw	%x5, 48(%x2)  #1213 pc 11276
	flw	%f0, 4(%x5)  #1213 pc 11280
	flw	%f1, 96(%x2)  #1213 pc 11284
	fmul	%f0, %f1, %f0  #1213 pc 11288
	flw	%f2, 16(%x2)  #1213 pc 11292
	fadd	%f0, %f0, %f2  #1213 pc 11296
	fabs	%f0, %f0  #1213 pc 11300
	lw	%x5, 28(%x2)  #1213 pc 11304
	fsw	%f0, 112(%x2)  #1213 pc 11308
	sw	%x1, 120(%x2)  #1213 pc 11312
	addi	%x2, %x2, 124  #1213 pc 11316
	jal	%x1, o_param_b.2700  #1213 pc 11320
	addi	%x2, %x2, -124  #1213 pc 11324
	lw	%x1, 120(%x2) #1213 pc 11328
	fadd	%f1, %f0, %f30  #1213 pc 11332
	flw	%f0, 112(%x2)  #1213 pc 11336
	sw	%x1, 120(%x2)  #1213 pc 11340
	addi	%x2, %x2, 124  #1213 pc 11344
	jal	%x1, fless.2546  #1213 pc 11348
	addi	%x2, %x2, -124  #1213 pc 11352
	lw	%x1, 120(%x2) #1213 pc 11356
	beq	%x5, %x0, 12  #1213 pc 11360
	j	be_else.9315 #pc 11364
	nop #pc 11368
	addi	%x5, %x0, 0  #0 pc 11372
	j	be_cont.9316 #pc 11376
	nop #pc 11380
be_else.9315: #pc 11384
	lw	%x5, 24(%x2)  #1214 pc 11384
	flw	%f0, 20(%x5)  #1214 pc 11388
	sw	%x1, 120(%x2)  #1214 pc 11392
	addi	%x2, %x2, 124  #1214 pc 11396
	jal	%x1, fiszero.2534  #1214 pc 11400
	addi	%x2, %x2, -124  #1214 pc 11404
	lw	%x1, 120(%x2) #1214 pc 11408
	beq	%x5, %x0, 12  #1214 pc 11412
	j	be_else.9317 #pc 11416
	nop #pc 11420
	addi	%x5, %x0, 1  #0 pc 11424
	j	be_cont.9318 #pc 11428
	nop #pc 11432
be_else.9317: #pc 11436
	addi	%x5, %x0, 0  #0 pc 11436
be_cont.9318: #pc 11440
be_cont.9316: #pc 11440
be_cont.9314: #pc 11440
	beq	%x5, %x0, 12  #1211 pc 11440
	j	be_else.9319 #pc 11444
	nop #pc 11448
	addi	%x5, %x0, 0  #0 pc 11452
	ret #pc 11456
	nop #pc 11460
be_else.9319: #pc 11464
	lw	%x5, 0(%x2)  #1218 pc 11464
	flw	%f0, 96(%x2)  #1218 pc 11468
	fsw	%f0, 0(%x5)  #1218 pc 11472
	addi	%x5, %x0, 3  #0 pc 11476
	ret #pc 11480
	nop #pc 11484
be_else.9312: #pc 11488
	lw	%x5, 0(%x2)  #1209 pc 11488
	flw	%f0, 72(%x2)  #1209 pc 11492
	fsw	%f0, 0(%x5)  #1209 pc 11496
	addi	%x5, %x0, 2  #0 pc 11500
	ret #pc 11504
	nop #pc 11508
be_else.9305: #pc 11512
	lw	%x5, 0(%x2)  #1200 pc 11512
	flw	%f0, 40(%x2)  #1200 pc 11516
	fsw	%f0, 0(%x5)  #1200 pc 11520
	addi	%x5, %x0, 1  #0 pc 11524
	ret #pc 11528
	nop #pc 11532
solver_surface_fast.2833:  #pc 11536
	lw	%x5, 4(%x29)  #0 pc 11536
	flw	%f3, 0(%x6)  #1225 pc 11540
	sw	%x5, 0(%x2)  #1225 pc 11544
	fsw	%f2, 8(%x2)  #1225 pc 11548
	fsw	%f1, 16(%x2)  #1225 pc 11552
	fsw	%f0, 24(%x2)  #1225 pc 11556
	sw	%x6, 32(%x2)  #1225 pc 11560
	fadd	%f0, %f3, %f30  #0 pc 11564
	sw	%x1, 36(%x2)  #1225 pc 11568
	addi	%x2, %x2, 40  #1225 pc 11572
	jal	%x1, fisneg.2538  #1225 pc 11576
	addi	%x2, %x2, -40  #1225 pc 11580
	lw	%x1, 36(%x2) #1225 pc 11584
	beq	%x5, %x0, 12  #1225 pc 11588
	j	be_else.9321 #pc 11592
	nop #pc 11596
	addi	%x5, %x0, 0  #0 pc 11600
	ret #pc 11604
	nop #pc 11608
be_else.9321: #pc 11612
	lw	%x5, 32(%x2)  #1227 pc 11612
	flw	%f0, 4(%x5)  #1227 pc 11616
	flw	%f1, 24(%x2)  #1227 pc 11620
	fmul	%f0, %f0, %f1  #1227 pc 11624
	flw	%f1, 8(%x5)  #1227 pc 11628
	flw	%f2, 16(%x2)  #1227 pc 11632
	fmul	%f1, %f1, %f2  #1227 pc 11636
	fadd	%f0, %f0, %f1  #1227 pc 11640
	flw	%f1, 12(%x5)  #1227 pc 11644
	flw	%f2, 8(%x2)  #1227 pc 11648
	fmul	%f1, %f1, %f2  #1227 pc 11652
	fadd	%f0, %f0, %f1  #1227 pc 11656
	lw	%x5, 0(%x2)  #1226 pc 11660
	fsw	%f0, 0(%x5)  #1226 pc 11664
	addi	%x5, %x0, 1  #0 pc 11668
	ret #pc 11672
	nop #pc 11676
solver_second_fast.2839:  #pc 11680
	lw	%x7, 4(%x29)  #0 pc 11680
	flw	%f3, 0(%x6)  #1235 pc 11684
	sw	%x7, 0(%x2)  #1236 pc 11688
	fsw	%f3, 8(%x2)  #1236 pc 11692
	sw	%x5, 16(%x2)  #1236 pc 11696
	fsw	%f2, 24(%x2)  #1236 pc 11700
	fsw	%f1, 32(%x2)  #1236 pc 11704
	fsw	%f0, 40(%x2)  #1236 pc 11708
	sw	%x6, 48(%x2)  #1236 pc 11712
	fadd	%f0, %f3, %f30  #0 pc 11716
	sw	%x1, 52(%x2)  #1236 pc 11720
	addi	%x2, %x2, 56  #1236 pc 11724
	jal	%x1, fiszero.2534  #1236 pc 11728
	addi	%x2, %x2, -56  #1236 pc 11732
	lw	%x1, 52(%x2) #1236 pc 11736
	beq	%x5, %x0, 12  #1236 pc 11740
	j	be_else.9324 #pc 11744
	nop #pc 11748
	lw	%x5, 48(%x2)  #1239 pc 11752
	flw	%f0, 4(%x5)  #1239 pc 11756
	flw	%f1, 40(%x2)  #1239 pc 11760
	fmul	%f0, %f0, %f1  #1239 pc 11764
	flw	%f2, 8(%x5)  #1239 pc 11768
	flw	%f3, 32(%x2)  #1239 pc 11772
	fmul	%f2, %f2, %f3  #1239 pc 11776
	fadd	%f0, %f0, %f2  #1239 pc 11780
	flw	%f2, 12(%x5)  #1239 pc 11784
	flw	%f4, 24(%x2)  #1239 pc 11788
	fmul	%f2, %f2, %f4  #1239 pc 11792
	fadd	%f0, %f0, %f2  #1239 pc 11796
	lw	%x6, 16(%x2)  #1240 pc 11800
	fsw	%f0, 56(%x2)  #1240 pc 11804
	addi	%x5, %x6, 0  #0 pc 11808
	fadd	%f2, %f4, %f30  #0 pc 11812
	fadd	%f0, %f1, %f30  #0 pc 11816
	fadd	%f1, %f3, %f30  #0 pc 11820
	sw	%x1, 64(%x2)  #1240 pc 11824
	addi	%x2, %x2, 68  #1240 pc 11828
	jal	%x1, quadratic.2803  #1240 pc 11832
	addi	%x2, %x2, -68  #1240 pc 11836
	lw	%x1, 64(%x2) #1240 pc 11840
	lw	%x5, 16(%x2)  #1241 pc 11844
	fsw	%f0, 64(%x2)  #1241 pc 11848
	sw	%x1, 72(%x2)  #1241 pc 11852
	addi	%x2, %x2, 76  #1241 pc 11856
	jal	%x1, o_form.2690  #1241 pc 11860
	addi	%x2, %x2, -76  #1241 pc 11864
	lw	%x1, 72(%x2) #1241 pc 11868
	addi	%x31, %x0, 3  #pc 11872
	beq	%x5, %x31, 12  #1241 pc 11876
	j	be_else.9326 #pc 11880
	nop #pc 11884
	fmv	%f0, l.6317  #0 pc 11888
	flw	%f1, 64(%x2)  #1241 pc 11892
	fsub	%f0, %f1, %f0  #1241 pc 11896
	j	be_cont.9327 #pc 11900
	nop #pc 11904
be_else.9326: #pc 11908
	flw	%f0, 64(%x2)  #1241 pc 11908
be_cont.9327: #pc 11912
	flw	%f1, 56(%x2)  #1242 pc 11912
	fsw	%f0, 72(%x2)  #1242 pc 11916
	fadd	%f0, %f1, %f30  #0 pc 11920
	sw	%x1, 80(%x2)  #1242 pc 11924
	addi	%x2, %x2, 84  #1242 pc 11928
	jal	%x1, fsqr.2542  #1242 pc 11932
	addi	%x2, %x2, -84  #1242 pc 11936
	lw	%x1, 80(%x2) #1242 pc 11940
	flw	%f1, 72(%x2)  #1242 pc 11944
	flw	%f2, 8(%x2)  #1242 pc 11948
	fmul	%f1, %f2, %f1  #1242 pc 11952
	fsub	%f0, %f0, %f1  #1242 pc 11956
	fsw	%f0, 80(%x2)  #1243 pc 11960
	sw	%x1, 88(%x2)  #1243 pc 11964
	addi	%x2, %x2, 92  #1243 pc 11968
	jal	%x1, fispos.2536  #1243 pc 11972
	addi	%x2, %x2, -92  #1243 pc 11976
	lw	%x1, 88(%x2) #1243 pc 11980
	beq	%x5, %x0, 12  #1243 pc 11984
	j	be_else.9328 #pc 11988
	nop #pc 11992
	addi	%x5, %x0, 0  #0 pc 11996
	ret #pc 12000
	nop #pc 12004
be_else.9328: #pc 12008
	lw	%x5, 16(%x2)  #1244 pc 12008
	sw	%x1, 88(%x2)  #1244 pc 12012
	addi	%x2, %x2, 92  #1244 pc 12016
	jal	%x1, o_isinvert.2694  #1244 pc 12020
	addi	%x2, %x2, -92  #1244 pc 12024
	lw	%x1, 88(%x2) #1244 pc 12028
	beq	%x5, %x0, 12  #1244 pc 12032
	j	be_else.9329 #pc 12036
	nop #pc 12040
	flw	%f0, 80(%x2)  #1247 pc 12044
	fsqrt	%f0, %f0  #1247 pc 12048
	flw	%f1, 56(%x2)  #1247 pc 12052
	fsub	%f0, %f1, %f0  #1247 pc 12056
	lw	%x5, 48(%x2)  #1247 pc 12060
	flw	%f1, 16(%x5)  #1247 pc 12064
	fmul	%f0, %f0, %f1  #1247 pc 12068
	lw	%x5, 0(%x2)  #1247 pc 12072
	fsw	%f0, 0(%x5)  #1247 pc 12076
	j	be_cont.9330 #pc 12080
	nop #pc 12084
be_else.9329: #pc 12088
	flw	%f0, 80(%x2)  #1245 pc 12088
	fsqrt	%f0, %f0  #1245 pc 12092
	flw	%f1, 56(%x2)  #1245 pc 12096
	fadd	%f0, %f1, %f0  #1245 pc 12100
	lw	%x5, 48(%x2)  #1245 pc 12104
	flw	%f1, 16(%x5)  #1245 pc 12108
	fmul	%f0, %f0, %f1  #1245 pc 12112
	lw	%x5, 0(%x2)  #1245 pc 12116
	fsw	%f0, 0(%x5)  #1245 pc 12120
be_cont.9330: #pc 12124
	addi	%x5, %x0, 1  #0 pc 12124
	ret #pc 12128
	nop #pc 12132
be_else.9324: #pc 12136
	addi	%x5, %x0, 0  #0 pc 12136
	ret #pc 12140
	nop #pc 12144
solver_fast.2845:  #pc 12148
	lw	%x8, 16(%x29)  #1254 pc 12148
	lw	%x9, 12(%x29)  #1254 pc 12152
	lw	%x10, 8(%x29)  #1254 pc 12156
	lw	%x11, 4(%x29)  #1254 pc 12160
	slli	%x12, %x5, 2  #1254 pc 12164
	add	%x31, %x12, %x11  #1254 pc 12168
	lw	%x11, 0(%x31)  #1254 pc 12172
	flw	%f0, 0(%x7)  #1255 pc 12176
	sw	%x9, 0(%x2)  #1255 pc 12180
	sw	%x8, 4(%x2)  #1255 pc 12184
	sw	%x10, 8(%x2)  #1255 pc 12188
	sw	%x5, 12(%x2)  #1255 pc 12192
	sw	%x6, 16(%x2)  #1255 pc 12196
	sw	%x11, 20(%x2)  #1255 pc 12200
	sw	%x7, 24(%x2)  #1255 pc 12204
	fsw	%f0, 32(%x2)  #1255 pc 12208
	addi	%x5, %x11, 0  #0 pc 12212
	sw	%x1, 40(%x2)  #1255 pc 12216
	addi	%x2, %x2, 44  #1255 pc 12220
	jal	%x1, o_param_x.2706  #1255 pc 12224
	addi	%x2, %x2, -44  #1255 pc 12228
	lw	%x1, 40(%x2) #1255 pc 12232
	flw	%f1, 32(%x2)  #1255 pc 12236
	fsub	%f0, %f1, %f0  #1255 pc 12240
	lw	%x5, 24(%x2)  #1256 pc 12244
	flw	%f1, 4(%x5)  #1256 pc 12248
	lw	%x6, 20(%x2)  #1256 pc 12252
	fsw	%f0, 40(%x2)  #1256 pc 12256
	fsw	%f1, 48(%x2)  #1256 pc 12260
	addi	%x5, %x6, 0  #0 pc 12264
	sw	%x1, 56(%x2)  #1256 pc 12268
	addi	%x2, %x2, 60  #1256 pc 12272
	jal	%x1, o_param_y.2708  #1256 pc 12276
	addi	%x2, %x2, -60  #1256 pc 12280
	lw	%x1, 56(%x2) #1256 pc 12284
	flw	%f1, 48(%x2)  #1256 pc 12288
	fsub	%f0, %f1, %f0  #1256 pc 12292
	lw	%x5, 24(%x2)  #1257 pc 12296
	flw	%f1, 8(%x5)  #1257 pc 12300
	lw	%x5, 20(%x2)  #1257 pc 12304
	fsw	%f0, 56(%x2)  #1257 pc 12308
	fsw	%f1, 64(%x2)  #1257 pc 12312
	sw	%x1, 72(%x2)  #1257 pc 12316
	addi	%x2, %x2, 76  #1257 pc 12320
	jal	%x1, o_param_z.2710  #1257 pc 12324
	addi	%x2, %x2, -76  #1257 pc 12328
	lw	%x1, 72(%x2) #1257 pc 12332
	flw	%f1, 64(%x2)  #1257 pc 12336
	fsub	%f0, %f1, %f0  #1257 pc 12340
	lw	%x5, 16(%x2)  #1258 pc 12344
	fsw	%f0, 72(%x2)  #1258 pc 12348
	sw	%x1, 80(%x2)  #1258 pc 12352
	addi	%x2, %x2, 84  #1258 pc 12356
	jal	%x1, d_const.2751  #1258 pc 12360
	addi	%x2, %x2, -84  #1258 pc 12364
	lw	%x1, 80(%x2) #1258 pc 12368
	lw	%x6, 12(%x2)  #1259 pc 12372
	slli	%x6, %x6, 2  #1259 pc 12376
	add	%x31, %x6, %x5  #1259 pc 12380
	lw	%x5, 0(%x31)  #1259 pc 12384
	lw	%x6, 20(%x2)  #1260 pc 12388
	sw	%x5, 80(%x2)  #1260 pc 12392
	addi	%x5, %x6, 0  #0 pc 12396
	sw	%x1, 84(%x2)  #1260 pc 12400
	addi	%x2, %x2, 88  #1260 pc 12404
	jal	%x1, o_form.2690  #1260 pc 12408
	addi	%x2, %x2, -88  #1260 pc 12412
	lw	%x1, 84(%x2) #1260 pc 12416
	addi	%x31, %x0, 1  #pc 12420
	beq	%x5, %x31, 12  #1261 pc 12424
	j	be_else.9332 #pc 12428
	nop #pc 12432
	lw	%x5, 16(%x2)  #1262 pc 12436
	sw	%x1, 84(%x2)  #1262 pc 12440
	addi	%x2, %x2, 88  #1262 pc 12444
	jal	%x1, d_vec.2749  #1262 pc 12448
	addi	%x2, %x2, -88  #1262 pc 12452
	lw	%x1, 84(%x2) #1262 pc 12456
	addi	%x6, %x5, 0  #1262 pc 12460
	flw	%f0, 40(%x2)  #1262 pc 12464
	flw	%f1, 56(%x2)  #1262 pc 12468
	flw	%f2, 72(%x2)  #1262 pc 12472
	lw	%x5, 20(%x2)  #1262 pc 12476
	lw	%x7, 80(%x2)  #1262 pc 12480
	lw	%x29, 8(%x2)  #1262 pc 12484
	lw	%x30, 0(%x29)  #1262 pc 12488
	jalr	%x0, %x30, 0  #1262 pc 12492
	nop #pc 12496
be_else.9332: #pc 12500
	addi	%x31, %x0, 2  #pc 12500
	beq	%x5, %x31, 12  #1263 pc 12504
	j	be_else.9333 #pc 12508
	nop #pc 12512
	flw	%f0, 40(%x2)  #1264 pc 12516
	flw	%f1, 56(%x2)  #1264 pc 12520
	flw	%f2, 72(%x2)  #1264 pc 12524
	lw	%x5, 20(%x2)  #1264 pc 12528
	lw	%x6, 80(%x2)  #1264 pc 12532
	lw	%x29, 4(%x2)  #1264 pc 12536
	lw	%x30, 0(%x29)  #1264 pc 12540
	jalr	%x0, %x30, 0  #1264 pc 12544
	nop #pc 12548
be_else.9333: #pc 12552
	flw	%f0, 40(%x2)  #1266 pc 12552
	flw	%f1, 56(%x2)  #1266 pc 12556
	flw	%f2, 72(%x2)  #1266 pc 12560
	lw	%x5, 20(%x2)  #1266 pc 12564
	lw	%x6, 80(%x2)  #1266 pc 12568
	lw	%x29, 0(%x2)  #1266 pc 12572
	lw	%x30, 0(%x29)  #1266 pc 12576
	jalr	%x0, %x30, 0  #1266 pc 12580
	nop #pc 12584
solver_surface_fast2.2849:  #pc 12588
	lw	%x5, 4(%x29)  #0 pc 12588
	flw	%f0, 0(%x6)  #1274 pc 12592
	sw	%x5, 0(%x2)  #1274 pc 12596
	sw	%x7, 4(%x2)  #1274 pc 12600
	sw	%x6, 8(%x2)  #1274 pc 12604
	sw	%x1, 12(%x2)  #1274 pc 12608
	addi	%x2, %x2, 16  #1274 pc 12612
	jal	%x1, fisneg.2538  #1274 pc 12616
	addi	%x2, %x2, -16  #1274 pc 12620
	lw	%x1, 12(%x2) #1274 pc 12624
	beq	%x5, %x0, 12  #1274 pc 12628
	j	be_else.9334 #pc 12632
	nop #pc 12636
	addi	%x5, %x0, 0  #0 pc 12640
	ret #pc 12644
	nop #pc 12648
be_else.9334: #pc 12652
	lw	%x5, 8(%x2)  #1275 pc 12652
	flw	%f0, 0(%x5)  #1275 pc 12656
	lw	%x5, 4(%x2)  #1275 pc 12660
	flw	%f1, 12(%x5)  #1275 pc 12664
	fmul	%f0, %f0, %f1  #1275 pc 12668
	lw	%x5, 0(%x2)  #1275 pc 12672
	fsw	%f0, 0(%x5)  #1275 pc 12676
	addi	%x5, %x0, 1  #0 pc 12680
	ret #pc 12684
	nop #pc 12688
solver_second_fast2.2856:  #pc 12692
	lw	%x8, 4(%x29)  #0 pc 12692
	flw	%f3, 0(%x6)  #1283 pc 12696
	sw	%x8, 0(%x2)  #1284 pc 12700
	sw	%x5, 4(%x2)  #1284 pc 12704
	fsw	%f3, 8(%x2)  #1284 pc 12708
	sw	%x7, 16(%x2)  #1284 pc 12712
	fsw	%f2, 24(%x2)  #1284 pc 12716
	fsw	%f1, 32(%x2)  #1284 pc 12720
	fsw	%f0, 40(%x2)  #1284 pc 12724
	sw	%x6, 48(%x2)  #1284 pc 12728
	fadd	%f0, %f3, %f30  #0 pc 12732
	sw	%x1, 52(%x2)  #1284 pc 12736
	addi	%x2, %x2, 56  #1284 pc 12740
	jal	%x1, fiszero.2534  #1284 pc 12744
	addi	%x2, %x2, -56  #1284 pc 12748
	lw	%x1, 52(%x2) #1284 pc 12752
	beq	%x5, %x0, 12  #1284 pc 12756
	j	be_else.9336 #pc 12760
	nop #pc 12764
	lw	%x5, 48(%x2)  #1287 pc 12768
	flw	%f0, 4(%x5)  #1287 pc 12772
	flw	%f1, 40(%x2)  #1287 pc 12776
	fmul	%f0, %f0, %f1  #1287 pc 12780
	flw	%f1, 8(%x5)  #1287 pc 12784
	flw	%f2, 32(%x2)  #1287 pc 12788
	fmul	%f1, %f1, %f2  #1287 pc 12792
	fadd	%f0, %f0, %f1  #1287 pc 12796
	flw	%f1, 12(%x5)  #1287 pc 12800
	flw	%f2, 24(%x2)  #1287 pc 12804
	fmul	%f1, %f1, %f2  #1287 pc 12808
	fadd	%f0, %f0, %f1  #1287 pc 12812
	lw	%x6, 16(%x2)  #1288 pc 12816
	flw	%f1, 12(%x6)  #1288 pc 12820
	fsw	%f0, 56(%x2)  #1289 pc 12824
	fsw	%f1, 64(%x2)  #1289 pc 12828
	sw	%x1, 72(%x2)  #1289 pc 12832
	addi	%x2, %x2, 76  #1289 pc 12836
	jal	%x1, fsqr.2542  #1289 pc 12840
	addi	%x2, %x2, -76  #1289 pc 12844
	lw	%x1, 72(%x2) #1289 pc 12848
	flw	%f1, 64(%x2)  #1289 pc 12852
	flw	%f2, 8(%x2)  #1289 pc 12856
	fmul	%f1, %f2, %f1  #1289 pc 12860
	fsub	%f0, %f0, %f1  #1289 pc 12864
	fsw	%f0, 72(%x2)  #1290 pc 12868
	sw	%x1, 80(%x2)  #1290 pc 12872
	addi	%x2, %x2, 84  #1290 pc 12876
	jal	%x1, fispos.2536  #1290 pc 12880
	addi	%x2, %x2, -84  #1290 pc 12884
	lw	%x1, 80(%x2) #1290 pc 12888
	beq	%x5, %x0, 12  #1290 pc 12892
	j	be_else.9338 #pc 12896
	nop #pc 12900
	addi	%x5, %x0, 0  #0 pc 12904
	ret #pc 12908
	nop #pc 12912
be_else.9338: #pc 12916
	lw	%x5, 4(%x2)  #1291 pc 12916
	sw	%x1, 80(%x2)  #1291 pc 12920
	addi	%x2, %x2, 84  #1291 pc 12924
	jal	%x1, o_isinvert.2694  #1291 pc 12928
	addi	%x2, %x2, -84  #1291 pc 12932
	lw	%x1, 80(%x2) #1291 pc 12936
	beq	%x5, %x0, 12  #1291 pc 12940
	j	be_else.9339 #pc 12944
	nop #pc 12948
	flw	%f0, 72(%x2)  #1294 pc 12952
	fsqrt	%f0, %f0  #1294 pc 12956
	flw	%f1, 56(%x2)  #1294 pc 12960
	fsub	%f0, %f1, %f0  #1294 pc 12964
	lw	%x5, 48(%x2)  #1294 pc 12968
	flw	%f1, 16(%x5)  #1294 pc 12972
	fmul	%f0, %f0, %f1  #1294 pc 12976
	lw	%x5, 0(%x2)  #1294 pc 12980
	fsw	%f0, 0(%x5)  #1294 pc 12984
	j	be_cont.9340 #pc 12988
	nop #pc 12992
be_else.9339: #pc 12996
	flw	%f0, 72(%x2)  #1292 pc 12996
	fsqrt	%f0, %f0  #1292 pc 13000
	flw	%f1, 56(%x2)  #1292 pc 13004
	fadd	%f0, %f1, %f0  #1292 pc 13008
	lw	%x5, 48(%x2)  #1292 pc 13012
	flw	%f1, 16(%x5)  #1292 pc 13016
	fmul	%f0, %f0, %f1  #1292 pc 13020
	lw	%x5, 0(%x2)  #1292 pc 13024
	fsw	%f0, 0(%x5)  #1292 pc 13028
be_cont.9340: #pc 13032
	addi	%x5, %x0, 1  #0 pc 13032
	ret #pc 13036
	nop #pc 13040
be_else.9336: #pc 13044
	addi	%x5, %x0, 0  #0 pc 13044
	ret #pc 13048
	nop #pc 13052
solver_fast2.2863:  #pc 13056
	lw	%x7, 16(%x29)  #1301 pc 13056
	lw	%x8, 12(%x29)  #1301 pc 13060
	lw	%x9, 8(%x29)  #1301 pc 13064
	lw	%x10, 4(%x29)  #1301 pc 13068
	slli	%x11, %x5, 2  #1301 pc 13072
	add	%x31, %x11, %x10  #1301 pc 13076
	lw	%x10, 0(%x31)  #1301 pc 13080
	sw	%x8, 0(%x2)  #1302 pc 13084
	sw	%x7, 4(%x2)  #1302 pc 13088
	sw	%x9, 8(%x2)  #1302 pc 13092
	sw	%x10, 12(%x2)  #1302 pc 13096
	sw	%x5, 16(%x2)  #1302 pc 13100
	sw	%x6, 20(%x2)  #1302 pc 13104
	addi	%x5, %x10, 0  #0 pc 13108
	sw	%x1, 24(%x2)  #1302 pc 13112
	addi	%x2, %x2, 28  #1302 pc 13116
	jal	%x1, o_param_ctbl.2728  #1302 pc 13120
	addi	%x2, %x2, -28  #1302 pc 13124
	lw	%x1, 24(%x2) #1302 pc 13128
	flw	%f0, 0(%x5)  #1303 pc 13132
	flw	%f1, 4(%x5)  #1304 pc 13136
	flw	%f2, 8(%x5)  #1305 pc 13140
	lw	%x6, 20(%x2)  #1306 pc 13144
	sw	%x5, 24(%x2)  #1306 pc 13148
	fsw	%f2, 32(%x2)  #1306 pc 13152
	fsw	%f1, 40(%x2)  #1306 pc 13156
	fsw	%f0, 48(%x2)  #1306 pc 13160
	addi	%x5, %x6, 0  #0 pc 13164
	sw	%x1, 56(%x2)  #1306 pc 13168
	addi	%x2, %x2, 60  #1306 pc 13172
	jal	%x1, d_const.2751  #1306 pc 13176
	addi	%x2, %x2, -60  #1306 pc 13180
	lw	%x1, 56(%x2) #1306 pc 13184
	lw	%x6, 16(%x2)  #1307 pc 13188
	slli	%x6, %x6, 2  #1307 pc 13192
	add	%x31, %x6, %x5  #1307 pc 13196
	lw	%x5, 0(%x31)  #1307 pc 13200
	lw	%x6, 12(%x2)  #1308 pc 13204
	sw	%x5, 56(%x2)  #1308 pc 13208
	addi	%x5, %x6, 0  #0 pc 13212
	sw	%x1, 60(%x2)  #1308 pc 13216
	addi	%x2, %x2, 64  #1308 pc 13220
	jal	%x1, o_form.2690  #1308 pc 13224
	addi	%x2, %x2, -64  #1308 pc 13228
	lw	%x1, 60(%x2) #1308 pc 13232
	addi	%x31, %x0, 1  #pc 13236
	beq	%x5, %x31, 12  #1309 pc 13240
	j	be_else.9342 #pc 13244
	nop #pc 13248
	lw	%x5, 20(%x2)  #1310 pc 13252
	sw	%x1, 60(%x2)  #1310 pc 13256
	addi	%x2, %x2, 64  #1310 pc 13260
	jal	%x1, d_vec.2749  #1310 pc 13264
	addi	%x2, %x2, -64  #1310 pc 13268
	lw	%x1, 60(%x2) #1310 pc 13272
	addi	%x6, %x5, 0  #1310 pc 13276
	flw	%f0, 48(%x2)  #1310 pc 13280
	flw	%f1, 40(%x2)  #1310 pc 13284
	flw	%f2, 32(%x2)  #1310 pc 13288
	lw	%x5, 12(%x2)  #1310 pc 13292
	lw	%x7, 56(%x2)  #1310 pc 13296
	lw	%x29, 8(%x2)  #1310 pc 13300
	lw	%x30, 0(%x29)  #1310 pc 13304
	jalr	%x0, %x30, 0  #1310 pc 13308
	nop #pc 13312
be_else.9342: #pc 13316
	addi	%x31, %x0, 2  #pc 13316
	beq	%x5, %x31, 12  #1311 pc 13320
	j	be_else.9343 #pc 13324
	nop #pc 13328
	flw	%f0, 48(%x2)  #1312 pc 13332
	flw	%f1, 40(%x2)  #1312 pc 13336
	flw	%f2, 32(%x2)  #1312 pc 13340
	lw	%x5, 12(%x2)  #1312 pc 13344
	lw	%x6, 56(%x2)  #1312 pc 13348
	lw	%x7, 24(%x2)  #1312 pc 13352
	lw	%x29, 4(%x2)  #1312 pc 13356
	lw	%x30, 0(%x29)  #1312 pc 13360
	jalr	%x0, %x30, 0  #1312 pc 13364
	nop #pc 13368
be_else.9343: #pc 13372
	flw	%f0, 48(%x2)  #1314 pc 13372
	flw	%f1, 40(%x2)  #1314 pc 13376
	flw	%f2, 32(%x2)  #1314 pc 13380
	lw	%x5, 12(%x2)  #1314 pc 13384
	lw	%x6, 56(%x2)  #1314 pc 13388
	lw	%x7, 24(%x2)  #1314 pc 13392
	lw	%x29, 0(%x2)  #1314 pc 13396
	lw	%x30, 0(%x29)  #1314 pc 13400
	jalr	%x0, %x30, 0  #1314 pc 13404
	nop #pc 13408
setup_rect_table.2866:  #pc 13412
	addi	%x7, %x0, 6  #0 pc 13412
	fmv	%f0, l.6305  #0 pc 13416
	sw	%x6, 0(%x2)  #1323 pc 13420
	sw	%x5, 4(%x2)  #1323 pc 13424
	addi	%x5, %x7, 0  #0 pc 13428
	sw	%x1, 8(%x2)  #1323 pc 13432
	addi	%x2, %x2, 12  #1323 pc 13436
	jal	%x1, create_float_array.2606  #1323 pc 13440
	addi	%x2, %x2, -12  #1323 pc 13444
	lw	%x1, 8(%x2) #1323 pc 13448
	lw	%x6, 4(%x2)  #1325 pc 13452
	flw	%f0, 0(%x6)  #1325 pc 13456
	sw	%x5, 8(%x2)  #1325 pc 13460
	sw	%x1, 12(%x2)  #1325 pc 13464
	addi	%x2, %x2, 16  #1325 pc 13468
	jal	%x1, fiszero.2534  #1325 pc 13472
	addi	%x2, %x2, -16  #1325 pc 13476
	lw	%x1, 12(%x2) #1325 pc 13480
	beq	%x5, %x0, 12  #1325 pc 13484
	j	be_else.9344 #pc 13488
	nop #pc 13492
	lw	%x5, 0(%x2)  #1329 pc 13496
	sw	%x1, 12(%x2)  #1329 pc 13500
	addi	%x2, %x2, 16  #1329 pc 13504
	jal	%x1, o_isinvert.2694  #1329 pc 13508
	addi	%x2, %x2, -16  #1329 pc 13512
	lw	%x1, 12(%x2) #1329 pc 13516
	lw	%x6, 4(%x2)  #1329 pc 13520
	flw	%f0, 0(%x6)  #1329 pc 13524
	sw	%x5, 12(%x2)  #1329 pc 13528
	sw	%x1, 16(%x2)  #1329 pc 13532
	addi	%x2, %x2, 20  #1329 pc 13536
	jal	%x1, fisneg.2538  #1329 pc 13540
	addi	%x2, %x2, -20  #1329 pc 13544
	lw	%x1, 16(%x2) #1329 pc 13548
	addi	%x6, %x5, 0  #1329 pc 13552
	lw	%x5, 12(%x2)  #1329 pc 13556
	sw	%x1, 16(%x2)  #1329 pc 13560
	addi	%x2, %x2, 20  #1329 pc 13564
	jal	%x1, xor.2639  #1329 pc 13568
	addi	%x2, %x2, -20  #1329 pc 13572
	lw	%x1, 16(%x2) #1329 pc 13576
	lw	%x6, 0(%x2)  #1329 pc 13580
	sw	%x5, 16(%x2)  #1329 pc 13584
	addi	%x5, %x6, 0  #0 pc 13588
	sw	%x1, 20(%x2)  #1329 pc 13592
	addi	%x2, %x2, 24  #1329 pc 13596
	jal	%x1, o_param_a.2698  #1329 pc 13600
	addi	%x2, %x2, -24  #1329 pc 13604
	lw	%x1, 20(%x2) #1329 pc 13608
	lw	%x5, 16(%x2)  #1329 pc 13612
	sw	%x1, 20(%x2)  #1329 pc 13616
	addi	%x2, %x2, 24  #1329 pc 13620
	jal	%x1, fneg_cond.2644  #1329 pc 13624
	addi	%x2, %x2, -24  #1329 pc 13628
	lw	%x1, 20(%x2) #1329 pc 13632
	lw	%x5, 8(%x2)  #1329 pc 13636
	fsw	%f0, 0(%x5)  #1329 pc 13640
	fmv	%f0, l.6317  #0 pc 13644
	lw	%x6, 4(%x2)  #1331 pc 13648
	flw	%f1, 0(%x6)  #1331 pc 13652
	fdiv	%f0, %f0, %f1  #1331 pc 13656
	fsw	%f0, 4(%x5)  #1331 pc 13660
	j	be_cont.9345 #pc 13664
	nop #pc 13668
be_else.9344: #pc 13672
	fmv	%f0, l.6305  #0 pc 13672
	lw	%x5, 8(%x2)  #1326 pc 13676
	fsw	%f0, 4(%x5)  #1326 pc 13680
be_cont.9345: #pc 13684
	lw	%x6, 4(%x2)  #1333 pc 13684
	flw	%f0, 4(%x6)  #1333 pc 13688
	sw	%x1, 20(%x2)  #1333 pc 13692
	addi	%x2, %x2, 24  #1333 pc 13696
	jal	%x1, fiszero.2534  #1333 pc 13700
	addi	%x2, %x2, -24  #1333 pc 13704
	lw	%x1, 20(%x2) #1333 pc 13708
	beq	%x5, %x0, 12  #1333 pc 13712
	j	be_else.9346 #pc 13716
	nop #pc 13720
	lw	%x5, 0(%x2)  #1336 pc 13724
	sw	%x1, 20(%x2)  #1336 pc 13728
	addi	%x2, %x2, 24  #1336 pc 13732
	jal	%x1, o_isinvert.2694  #1336 pc 13736
	addi	%x2, %x2, -24  #1336 pc 13740
	lw	%x1, 20(%x2) #1336 pc 13744
	lw	%x6, 4(%x2)  #1336 pc 13748
	flw	%f0, 4(%x6)  #1336 pc 13752
	sw	%x5, 20(%x2)  #1336 pc 13756
	sw	%x1, 24(%x2)  #1336 pc 13760
	addi	%x2, %x2, 28  #1336 pc 13764
	jal	%x1, fisneg.2538  #1336 pc 13768
	addi	%x2, %x2, -28  #1336 pc 13772
	lw	%x1, 24(%x2) #1336 pc 13776
	addi	%x6, %x5, 0  #1336 pc 13780
	lw	%x5, 20(%x2)  #1336 pc 13784
	sw	%x1, 24(%x2)  #1336 pc 13788
	addi	%x2, %x2, 28  #1336 pc 13792
	jal	%x1, xor.2639  #1336 pc 13796
	addi	%x2, %x2, -28  #1336 pc 13800
	lw	%x1, 24(%x2) #1336 pc 13804
	lw	%x6, 0(%x2)  #1336 pc 13808
	sw	%x5, 24(%x2)  #1336 pc 13812
	addi	%x5, %x6, 0  #0 pc 13816
	sw	%x1, 28(%x2)  #1336 pc 13820
	addi	%x2, %x2, 32  #1336 pc 13824
	jal	%x1, o_param_b.2700  #1336 pc 13828
	addi	%x2, %x2, -32  #1336 pc 13832
	lw	%x1, 28(%x2) #1336 pc 13836
	lw	%x5, 24(%x2)  #1336 pc 13840
	sw	%x1, 28(%x2)  #1336 pc 13844
	addi	%x2, %x2, 32  #1336 pc 13848
	jal	%x1, fneg_cond.2644  #1336 pc 13852
	addi	%x2, %x2, -32  #1336 pc 13856
	lw	%x1, 28(%x2) #1336 pc 13860
	lw	%x5, 8(%x2)  #1336 pc 13864
	fsw	%f0, 8(%x5)  #1336 pc 13868
	fmv	%f0, l.6317  #0 pc 13872
	lw	%x6, 4(%x2)  #1337 pc 13876
	flw	%f1, 4(%x6)  #1337 pc 13880
	fdiv	%f0, %f0, %f1  #1337 pc 13884
	fsw	%f0, 12(%x5)  #1337 pc 13888
	j	be_cont.9347 #pc 13892
	nop #pc 13896
be_else.9346: #pc 13900
	fmv	%f0, l.6305  #0 pc 13900
	lw	%x5, 8(%x2)  #1334 pc 13904
	fsw	%f0, 12(%x5)  #1334 pc 13908
be_cont.9347: #pc 13912
	lw	%x6, 4(%x2)  #1339 pc 13912
	flw	%f0, 8(%x6)  #1339 pc 13916
	sw	%x1, 28(%x2)  #1339 pc 13920
	addi	%x2, %x2, 32  #1339 pc 13924
	jal	%x1, fiszero.2534  #1339 pc 13928
	addi	%x2, %x2, -32  #1339 pc 13932
	lw	%x1, 28(%x2) #1339 pc 13936
	beq	%x5, %x0, 12  #1339 pc 13940
	j	be_else.9348 #pc 13944
	nop #pc 13948
	lw	%x5, 0(%x2)  #1342 pc 13952
	sw	%x1, 28(%x2)  #1342 pc 13956
	addi	%x2, %x2, 32  #1342 pc 13960
	jal	%x1, o_isinvert.2694  #1342 pc 13964
	addi	%x2, %x2, -32  #1342 pc 13968
	lw	%x1, 28(%x2) #1342 pc 13972
	lw	%x6, 4(%x2)  #1342 pc 13976
	flw	%f0, 8(%x6)  #1342 pc 13980
	sw	%x5, 28(%x2)  #1342 pc 13984
	sw	%x1, 32(%x2)  #1342 pc 13988
	addi	%x2, %x2, 36  #1342 pc 13992
	jal	%x1, fisneg.2538  #1342 pc 13996
	addi	%x2, %x2, -36  #1342 pc 14000
	lw	%x1, 32(%x2) #1342 pc 14004
	addi	%x6, %x5, 0  #1342 pc 14008
	lw	%x5, 28(%x2)  #1342 pc 14012
	sw	%x1, 32(%x2)  #1342 pc 14016
	addi	%x2, %x2, 36  #1342 pc 14020
	jal	%x1, xor.2639  #1342 pc 14024
	addi	%x2, %x2, -36  #1342 pc 14028
	lw	%x1, 32(%x2) #1342 pc 14032
	lw	%x6, 0(%x2)  #1342 pc 14036
	sw	%x5, 32(%x2)  #1342 pc 14040
	addi	%x5, %x6, 0  #0 pc 14044
	sw	%x1, 36(%x2)  #1342 pc 14048
	addi	%x2, %x2, 40  #1342 pc 14052
	jal	%x1, o_param_c.2702  #1342 pc 14056
	addi	%x2, %x2, -40  #1342 pc 14060
	lw	%x1, 36(%x2) #1342 pc 14064
	lw	%x5, 32(%x2)  #1342 pc 14068
	sw	%x1, 36(%x2)  #1342 pc 14072
	addi	%x2, %x2, 40  #1342 pc 14076
	jal	%x1, fneg_cond.2644  #1342 pc 14080
	addi	%x2, %x2, -40  #1342 pc 14084
	lw	%x1, 36(%x2) #1342 pc 14088
	lw	%x5, 8(%x2)  #1342 pc 14092
	fsw	%f0, 16(%x5)  #1342 pc 14096
	fmv	%f0, l.6317  #0 pc 14100
	lw	%x6, 4(%x2)  #1343 pc 14104
	flw	%f1, 8(%x6)  #1343 pc 14108
	fdiv	%f0, %f0, %f1  #1343 pc 14112
	fsw	%f0, 20(%x5)  #1343 pc 14116
	j	be_cont.9349 #pc 14120
	nop #pc 14124
be_else.9348: #pc 14128
	fmv	%f0, l.6305  #0 pc 14128
	lw	%x5, 8(%x2)  #1340 pc 14132
	fsw	%f0, 20(%x5)  #1340 pc 14136
be_cont.9349: #pc 14140
	ret #pc 14140
	nop #pc 14144
setup_surface_table.2869:  #pc 14148
	addi	%x7, %x0, 4  #0 pc 14148
	fmv	%f0, l.6305  #0 pc 14152
	sw	%x6, 0(%x2)  #1350 pc 14156
	sw	%x5, 4(%x2)  #1350 pc 14160
	addi	%x5, %x7, 0  #0 pc 14164
	sw	%x1, 8(%x2)  #1350 pc 14168
	addi	%x2, %x2, 12  #1350 pc 14172
	jal	%x1, create_float_array.2606  #1350 pc 14176
	addi	%x2, %x2, -12  #1350 pc 14180
	lw	%x1, 8(%x2) #1350 pc 14184
	lw	%x6, 4(%x2)  #1352 pc 14188
	flw	%f0, 0(%x6)  #1352 pc 14192
	lw	%x7, 0(%x2)  #1352 pc 14196
	sw	%x5, 8(%x2)  #1352 pc 14200
	fsw	%f0, 16(%x2)  #1352 pc 14204
	addi	%x5, %x7, 0  #0 pc 14208
	sw	%x1, 24(%x2)  #1352 pc 14212
	addi	%x2, %x2, 28  #1352 pc 14216
	jal	%x1, o_param_a.2698  #1352 pc 14220
	addi	%x2, %x2, -28  #1352 pc 14224
	lw	%x1, 24(%x2) #1352 pc 14228
	flw	%f1, 16(%x2)  #1352 pc 14232
	fmul	%f0, %f1, %f0  #1352 pc 14236
	lw	%x5, 4(%x2)  #1352 pc 14240
	flw	%f1, 4(%x5)  #1352 pc 14244
	lw	%x6, 0(%x2)  #1352 pc 14248
	fsw	%f0, 24(%x2)  #1352 pc 14252
	fsw	%f1, 32(%x2)  #1352 pc 14256
	addi	%x5, %x6, 0  #0 pc 14260
	sw	%x1, 40(%x2)  #1352 pc 14264
	addi	%x2, %x2, 44  #1352 pc 14268
	jal	%x1, o_param_b.2700  #1352 pc 14272
	addi	%x2, %x2, -44  #1352 pc 14276
	lw	%x1, 40(%x2) #1352 pc 14280
	flw	%f1, 32(%x2)  #1352 pc 14284
	fmul	%f0, %f1, %f0  #1352 pc 14288
	flw	%f1, 24(%x2)  #1352 pc 14292
	fadd	%f0, %f1, %f0  #1352 pc 14296
	lw	%x5, 4(%x2)  #1352 pc 14300
	flw	%f1, 8(%x5)  #1352 pc 14304
	lw	%x5, 0(%x2)  #1352 pc 14308
	fsw	%f0, 40(%x2)  #1352 pc 14312
	fsw	%f1, 48(%x2)  #1352 pc 14316
	sw	%x1, 56(%x2)  #1352 pc 14320
	addi	%x2, %x2, 60  #1352 pc 14324
	jal	%x1, o_param_c.2702  #1352 pc 14328
	addi	%x2, %x2, -60  #1352 pc 14332
	lw	%x1, 56(%x2) #1352 pc 14336
	flw	%f1, 48(%x2)  #1352 pc 14340
	fmul	%f0, %f1, %f0  #1352 pc 14344
	flw	%f1, 40(%x2)  #1352 pc 14348
	fadd	%f0, %f1, %f0  #1352 pc 14352
	fsw	%f0, 56(%x2)  #1354 pc 14356
	sw	%x1, 64(%x2)  #1354 pc 14360
	addi	%x2, %x2, 68  #1354 pc 14364
	jal	%x1, fispos.2536  #1354 pc 14368
	addi	%x2, %x2, -68  #1354 pc 14372
	lw	%x1, 64(%x2) #1354 pc 14376
	beq	%x5, %x0, 12  #1354 pc 14380
	j	be_else.9351 #pc 14384
	nop #pc 14388
	fmv	%f0, l.6305  #0 pc 14392
	lw	%x5, 8(%x2)  #1362 pc 14396
	fsw	%f0, 0(%x5)  #1362 pc 14400
	j	be_cont.9352 #pc 14404
	nop #pc 14408
be_else.9351: #pc 14412
	fmv	%f0, l.6355  #0 pc 14412
	flw	%f1, 56(%x2)  #1356 pc 14416
	fdiv	%f0, %f0, %f1  #1356 pc 14420
	lw	%x5, 8(%x2)  #1356 pc 14424
	fsw	%f0, 0(%x5)  #1356 pc 14428
	lw	%x6, 0(%x2)  #1358 pc 14432
	addi	%x5, %x6, 0  #0 pc 14436
	sw	%x1, 64(%x2)  #1358 pc 14440
	addi	%x2, %x2, 68  #1358 pc 14444
	jal	%x1, o_param_a.2698  #1358 pc 14448
	addi	%x2, %x2, -68  #1358 pc 14452
	lw	%x1, 64(%x2) #1358 pc 14456
	flw	%f1, 56(%x2)  #1358 pc 14460
	fdiv	%f0, %f0, %f1  #1358 pc 14464
	sw	%x1, 64(%x2)  #1358 pc 14468
	addi	%x2, %x2, 68  #1358 pc 14472
	jal	%x1, fneg.2540  #1358 pc 14476
	addi	%x2, %x2, -68  #1358 pc 14480
	lw	%x1, 64(%x2) #1358 pc 14484
	lw	%x5, 8(%x2)  #1358 pc 14488
	fsw	%f0, 4(%x5)  #1358 pc 14492
	lw	%x6, 0(%x2)  #1359 pc 14496
	addi	%x5, %x6, 0  #0 pc 14500
	sw	%x1, 64(%x2)  #1359 pc 14504
	addi	%x2, %x2, 68  #1359 pc 14508
	jal	%x1, o_param_b.2700  #1359 pc 14512
	addi	%x2, %x2, -68  #1359 pc 14516
	lw	%x1, 64(%x2) #1359 pc 14520
	flw	%f1, 56(%x2)  #1359 pc 14524
	fdiv	%f0, %f0, %f1  #1359 pc 14528
	sw	%x1, 64(%x2)  #1359 pc 14532
	addi	%x2, %x2, 68  #1359 pc 14536
	jal	%x1, fneg.2540  #1359 pc 14540
	addi	%x2, %x2, -68  #1359 pc 14544
	lw	%x1, 64(%x2) #1359 pc 14548
	lw	%x5, 8(%x2)  #1359 pc 14552
	fsw	%f0, 8(%x5)  #1359 pc 14556
	lw	%x6, 0(%x2)  #1360 pc 14560
	addi	%x5, %x6, 0  #0 pc 14564
	sw	%x1, 64(%x2)  #1360 pc 14568
	addi	%x2, %x2, 68  #1360 pc 14572
	jal	%x1, o_param_c.2702  #1360 pc 14576
	addi	%x2, %x2, -68  #1360 pc 14580
	lw	%x1, 64(%x2) #1360 pc 14584
	flw	%f1, 56(%x2)  #1360 pc 14588
	fdiv	%f0, %f0, %f1  #1360 pc 14592
	sw	%x1, 64(%x2)  #1360 pc 14596
	addi	%x2, %x2, 68  #1360 pc 14600
	jal	%x1, fneg.2540  #1360 pc 14604
	addi	%x2, %x2, -68  #1360 pc 14608
	lw	%x1, 64(%x2) #1360 pc 14612
	lw	%x5, 8(%x2)  #1360 pc 14616
	fsw	%f0, 12(%x5)  #1360 pc 14620
be_cont.9352: #pc 14624
	ret #pc 14624
	nop #pc 14628
setup_second_table.2872:  #pc 14632
	addi	%x7, %x0, 5  #0 pc 14632
	fmv	%f0, l.6305  #0 pc 14636
	sw	%x6, 0(%x2)  #1369 pc 14640
	sw	%x5, 4(%x2)  #1369 pc 14644
	addi	%x5, %x7, 0  #0 pc 14648
	sw	%x1, 8(%x2)  #1369 pc 14652
	addi	%x2, %x2, 12  #1369 pc 14656
	jal	%x1, create_float_array.2606  #1369 pc 14660
	addi	%x2, %x2, -12  #1369 pc 14664
	lw	%x1, 8(%x2) #1369 pc 14668
	lw	%x6, 4(%x2)  #1371 pc 14672
	flw	%f0, 0(%x6)  #1371 pc 14676
	flw	%f1, 4(%x6)  #1371 pc 14680
	flw	%f2, 8(%x6)  #1371 pc 14684
	lw	%x7, 0(%x2)  #1371 pc 14688
	sw	%x5, 8(%x2)  #1371 pc 14692
	addi	%x5, %x7, 0  #0 pc 14696
	sw	%x1, 12(%x2)  #1371 pc 14700
	addi	%x2, %x2, 16  #1371 pc 14704
	jal	%x1, quadratic.2803  #1371 pc 14708
	addi	%x2, %x2, -16  #1371 pc 14712
	lw	%x1, 12(%x2) #1371 pc 14716
	lw	%x5, 4(%x2)  #1372 pc 14720
	flw	%f1, 0(%x5)  #1372 pc 14724
	lw	%x6, 0(%x2)  #1372 pc 14728
	fsw	%f0, 16(%x2)  #1372 pc 14732
	fsw	%f1, 24(%x2)  #1372 pc 14736
	addi	%x5, %x6, 0  #0 pc 14740
	sw	%x1, 32(%x2)  #1372 pc 14744
	addi	%x2, %x2, 36  #1372 pc 14748
	jal	%x1, o_param_a.2698  #1372 pc 14752
	addi	%x2, %x2, -36  #1372 pc 14756
	lw	%x1, 32(%x2) #1372 pc 14760
	flw	%f1, 24(%x2)  #1372 pc 14764
	fmul	%f0, %f1, %f0  #1372 pc 14768
	sw	%x1, 32(%x2)  #1372 pc 14772
	addi	%x2, %x2, 36  #1372 pc 14776
	jal	%x1, fneg.2540  #1372 pc 14780
	addi	%x2, %x2, -36  #1372 pc 14784
	lw	%x1, 32(%x2) #1372 pc 14788
	lw	%x5, 4(%x2)  #1373 pc 14792
	flw	%f1, 4(%x5)  #1373 pc 14796
	lw	%x6, 0(%x2)  #1373 pc 14800
	fsw	%f0, 32(%x2)  #1373 pc 14804
	fsw	%f1, 40(%x2)  #1373 pc 14808
	addi	%x5, %x6, 0  #0 pc 14812
	sw	%x1, 48(%x2)  #1373 pc 14816
	addi	%x2, %x2, 52  #1373 pc 14820
	jal	%x1, o_param_b.2700  #1373 pc 14824
	addi	%x2, %x2, -52  #1373 pc 14828
	lw	%x1, 48(%x2) #1373 pc 14832
	flw	%f1, 40(%x2)  #1373 pc 14836
	fmul	%f0, %f1, %f0  #1373 pc 14840
	sw	%x1, 48(%x2)  #1373 pc 14844
	addi	%x2, %x2, 52  #1373 pc 14848
	jal	%x1, fneg.2540  #1373 pc 14852
	addi	%x2, %x2, -52  #1373 pc 14856
	lw	%x1, 48(%x2) #1373 pc 14860
	lw	%x5, 4(%x2)  #1374 pc 14864
	flw	%f1, 8(%x5)  #1374 pc 14868
	lw	%x6, 0(%x2)  #1374 pc 14872
	fsw	%f0, 48(%x2)  #1374 pc 14876
	fsw	%f1, 56(%x2)  #1374 pc 14880
	addi	%x5, %x6, 0  #0 pc 14884
	sw	%x1, 64(%x2)  #1374 pc 14888
	addi	%x2, %x2, 68  #1374 pc 14892
	jal	%x1, o_param_c.2702  #1374 pc 14896
	addi	%x2, %x2, -68  #1374 pc 14900
	lw	%x1, 64(%x2) #1374 pc 14904
	flw	%f1, 56(%x2)  #1374 pc 14908
	fmul	%f0, %f1, %f0  #1374 pc 14912
	sw	%x1, 64(%x2)  #1374 pc 14916
	addi	%x2, %x2, 68  #1374 pc 14920
	jal	%x1, fneg.2540  #1374 pc 14924
	addi	%x2, %x2, -68  #1374 pc 14928
	lw	%x1, 64(%x2) #1374 pc 14932
	lw	%x5, 8(%x2)  #1376 pc 14936
	flw	%f1, 16(%x2)  #1376 pc 14940
	fsw	%f1, 0(%x5)  #1376 pc 14944
	lw	%x6, 0(%x2)  #1380 pc 14948
	fsw	%f0, 64(%x2)  #1380 pc 14952
	addi	%x5, %x6, 0  #0 pc 14956
	sw	%x1, 72(%x2)  #1380 pc 14960
	addi	%x2, %x2, 76  #1380 pc 14964
	jal	%x1, o_isrot.2696  #1380 pc 14968
	addi	%x2, %x2, -76  #1380 pc 14972
	lw	%x1, 72(%x2) #1380 pc 14976
	beq	%x5, %x0, 12  #1380 pc 14980
	j	be_else.9354 #pc 14984
	nop #pc 14988
	lw	%x5, 8(%x2)  #1385 pc 14992
	flw	%f0, 32(%x2)  #1385 pc 14996
	fsw	%f0, 4(%x5)  #1385 pc 15000
	flw	%f0, 48(%x2)  #1386 pc 15004
	fsw	%f0, 8(%x5)  #1386 pc 15008
	flw	%f0, 64(%x2)  #1387 pc 15012
	fsw	%f0, 12(%x5)  #1387 pc 15016
	j	be_cont.9355 #pc 15020
	nop #pc 15024
be_else.9354: #pc 15028
	lw	%x5, 4(%x2)  #1381 pc 15028
	flw	%f0, 8(%x5)  #1381 pc 15032
	lw	%x6, 0(%x2)  #1381 pc 15036
	fsw	%f0, 72(%x2)  #1381 pc 15040
	addi	%x5, %x6, 0  #0 pc 15044
	sw	%x1, 80(%x2)  #1381 pc 15048
	addi	%x2, %x2, 84  #1381 pc 15052
	jal	%x1, o_param_r2.2724  #1381 pc 15056
	addi	%x2, %x2, -84  #1381 pc 15060
	lw	%x1, 80(%x2) #1381 pc 15064
	flw	%f1, 72(%x2)  #1381 pc 15068
	fmul	%f0, %f1, %f0  #1381 pc 15072
	lw	%x5, 4(%x2)  #1381 pc 15076
	flw	%f1, 4(%x5)  #1381 pc 15080
	lw	%x6, 0(%x2)  #1381 pc 15084
	fsw	%f0, 80(%x2)  #1381 pc 15088
	fsw	%f1, 88(%x2)  #1381 pc 15092
	addi	%x5, %x6, 0  #0 pc 15096
	sw	%x1, 96(%x2)  #1381 pc 15100
	addi	%x2, %x2, 100  #1381 pc 15104
	jal	%x1, o_param_r3.2726  #1381 pc 15108
	addi	%x2, %x2, -100  #1381 pc 15112
	lw	%x1, 96(%x2) #1381 pc 15116
	flw	%f1, 88(%x2)  #1381 pc 15120
	fmul	%f0, %f1, %f0  #1381 pc 15124
	flw	%f1, 80(%x2)  #1381 pc 15128
	fadd	%f0, %f1, %f0  #1381 pc 15132
	sw	%x1, 96(%x2)  #1381 pc 15136
	addi	%x2, %x2, 100  #1381 pc 15140
	jal	%x1, fhalf.2544  #1381 pc 15144
	addi	%x2, %x2, -100  #1381 pc 15148
	lw	%x1, 96(%x2) #1381 pc 15152
	flw	%f1, 32(%x2)  #1381 pc 15156
	fsub	%f0, %f1, %f0  #1381 pc 15160
	lw	%x5, 8(%x2)  #1381 pc 15164
	fsw	%f0, 4(%x5)  #1381 pc 15168
	lw	%x6, 4(%x2)  #1382 pc 15172
	flw	%f0, 8(%x6)  #1382 pc 15176
	lw	%x7, 0(%x2)  #1382 pc 15180
	fsw	%f0, 96(%x2)  #1382 pc 15184
	addi	%x5, %x7, 0  #0 pc 15188
	sw	%x1, 104(%x2)  #1382 pc 15192
	addi	%x2, %x2, 108  #1382 pc 15196
	jal	%x1, o_param_r1.2722  #1382 pc 15200
	addi	%x2, %x2, -108  #1382 pc 15204
	lw	%x1, 104(%x2) #1382 pc 15208
	flw	%f1, 96(%x2)  #1382 pc 15212
	fmul	%f0, %f1, %f0  #1382 pc 15216
	lw	%x5, 4(%x2)  #1382 pc 15220
	flw	%f1, 0(%x5)  #1382 pc 15224
	lw	%x6, 0(%x2)  #1382 pc 15228
	fsw	%f0, 104(%x2)  #1382 pc 15232
	fsw	%f1, 112(%x2)  #1382 pc 15236
	addi	%x5, %x6, 0  #0 pc 15240
	sw	%x1, 120(%x2)  #1382 pc 15244
	addi	%x2, %x2, 124  #1382 pc 15248
	jal	%x1, o_param_r3.2726  #1382 pc 15252
	addi	%x2, %x2, -124  #1382 pc 15256
	lw	%x1, 120(%x2) #1382 pc 15260
	flw	%f1, 112(%x2)  #1382 pc 15264
	fmul	%f0, %f1, %f0  #1382 pc 15268
	flw	%f1, 104(%x2)  #1382 pc 15272
	fadd	%f0, %f1, %f0  #1382 pc 15276
	sw	%x1, 120(%x2)  #1382 pc 15280
	addi	%x2, %x2, 124  #1382 pc 15284
	jal	%x1, fhalf.2544  #1382 pc 15288
	addi	%x2, %x2, -124  #1382 pc 15292
	lw	%x1, 120(%x2) #1382 pc 15296
	flw	%f1, 48(%x2)  #1382 pc 15300
	fsub	%f0, %f1, %f0  #1382 pc 15304
	lw	%x5, 8(%x2)  #1382 pc 15308
	fsw	%f0, 8(%x5)  #1382 pc 15312
	lw	%x6, 4(%x2)  #1383 pc 15316
	flw	%f0, 4(%x6)  #1383 pc 15320
	lw	%x7, 0(%x2)  #1383 pc 15324
	fsw	%f0, 120(%x2)  #1383 pc 15328
	addi	%x5, %x7, 0  #0 pc 15332
	sw	%x1, 128(%x2)  #1383 pc 15336
	addi	%x2, %x2, 132  #1383 pc 15340
	jal	%x1, o_param_r1.2722  #1383 pc 15344
	addi	%x2, %x2, -132  #1383 pc 15348
	lw	%x1, 128(%x2) #1383 pc 15352
	flw	%f1, 120(%x2)  #1383 pc 15356
	fmul	%f0, %f1, %f0  #1383 pc 15360
	lw	%x5, 4(%x2)  #1383 pc 15364
	flw	%f1, 0(%x5)  #1383 pc 15368
	lw	%x5, 0(%x2)  #1383 pc 15372
	fsw	%f0, 128(%x2)  #1383 pc 15376
	fsw	%f1, 136(%x2)  #1383 pc 15380
	sw	%x1, 144(%x2)  #1383 pc 15384
	addi	%x2, %x2, 148  #1383 pc 15388
	jal	%x1, o_param_r2.2724  #1383 pc 15392
	addi	%x2, %x2, -148  #1383 pc 15396
	lw	%x1, 144(%x2) #1383 pc 15400
	flw	%f1, 136(%x2)  #1383 pc 15404
	fmul	%f0, %f1, %f0  #1383 pc 15408
	flw	%f1, 128(%x2)  #1383 pc 15412
	fadd	%f0, %f1, %f0  #1383 pc 15416
	sw	%x1, 144(%x2)  #1383 pc 15420
	addi	%x2, %x2, 148  #1383 pc 15424
	jal	%x1, fhalf.2544  #1383 pc 15428
	addi	%x2, %x2, -148  #1383 pc 15432
	lw	%x1, 144(%x2) #1383 pc 15436
	flw	%f1, 64(%x2)  #1383 pc 15440
	fsub	%f0, %f1, %f0  #1383 pc 15444
	lw	%x5, 8(%x2)  #1383 pc 15448
	fsw	%f0, 12(%x5)  #1383 pc 15452
be_cont.9355: #pc 15456
	flw	%f0, 16(%x2)  #1389 pc 15456
	sw	%x1, 144(%x2)  #1389 pc 15460
	addi	%x2, %x2, 148  #1389 pc 15464
	jal	%x1, fiszero.2534  #1389 pc 15468
	addi	%x2, %x2, -148  #1389 pc 15472
	lw	%x1, 144(%x2) #1389 pc 15476
	beq	%x5, %x0, 12  #1389 pc 15480
	j	be_else.9356 #pc 15484
	nop #pc 15488
	fmv	%f0, l.6317  #0 pc 15492
	flw	%f1, 16(%x2)  #1390 pc 15496
	fdiv	%f0, %f0, %f1  #1390 pc 15500
	lw	%x5, 8(%x2)  #1390 pc 15504
	fsw	%f0, 16(%x5)  #1390 pc 15508
	j	be_cont.9357 #pc 15512
	nop #pc 15516
be_else.9356: #pc 15520
be_cont.9357: #pc 15520
	lw	%x5, 8(%x2)  #1392 pc 15520
	ret #pc 15524
	nop #pc 15528
iter_setup_dirvec_constants.2875:  #pc 15532
	lw	%x7, 4(%x29)  #0 pc 15532
	bge	%x6, %x0, 12  #1398 pc 15536
	j	bge_else.9358 #pc 15540
	nop #pc 15544
	slli	%x8, %x6, 2  #1399 pc 15548
	add	%x31, %x8, %x7  #1399 pc 15552
	lw	%x7, 0(%x31)  #1399 pc 15556
	sw	%x29, 0(%x2)  #1400 pc 15560
	sw	%x6, 4(%x2)  #1400 pc 15564
	sw	%x7, 8(%x2)  #1400 pc 15568
	sw	%x5, 12(%x2)  #1400 pc 15572
	sw	%x1, 16(%x2)  #1400 pc 15576
	addi	%x2, %x2, 20  #1400 pc 15580
	jal	%x1, d_const.2751  #1400 pc 15584
	addi	%x2, %x2, -20  #1400 pc 15588
	lw	%x1, 16(%x2) #1400 pc 15592
	lw	%x6, 12(%x2)  #1401 pc 15596
	sw	%x5, 16(%x2)  #1401 pc 15600
	addi	%x5, %x6, 0  #0 pc 15604
	sw	%x1, 20(%x2)  #1401 pc 15608
	addi	%x2, %x2, 24  #1401 pc 15612
	jal	%x1, d_vec.2749  #1401 pc 15616
	addi	%x2, %x2, -24  #1401 pc 15620
	lw	%x1, 20(%x2) #1401 pc 15624
	lw	%x6, 8(%x2)  #1402 pc 15628
	sw	%x5, 20(%x2)  #1402 pc 15632
	addi	%x5, %x6, 0  #0 pc 15636
	sw	%x1, 24(%x2)  #1402 pc 15640
	addi	%x2, %x2, 28  #1402 pc 15644
	jal	%x1, o_form.2690  #1402 pc 15648
	addi	%x2, %x2, -28  #1402 pc 15652
	lw	%x1, 24(%x2) #1402 pc 15656
	addi	%x31, %x0, 1  #pc 15660
	beq	%x5, %x31, 12  #1403 pc 15664
	j	be_else.9359 #pc 15668
	nop #pc 15672
	lw	%x5, 20(%x2)  #1404 pc 15676
	lw	%x6, 8(%x2)  #1404 pc 15680
	sw	%x1, 24(%x2)  #1404 pc 15684
	addi	%x2, %x2, 28  #1404 pc 15688
	jal	%x1, setup_rect_table.2866  #1404 pc 15692
	addi	%x2, %x2, -28  #1404 pc 15696
	lw	%x1, 24(%x2) #1404 pc 15700
	lw	%x6, 4(%x2)  #1404 pc 15704
	slli	%x7, %x6, 2  #1404 pc 15708
	lw	%x8, 16(%x2)  #1404 pc 15712
	add	%x31, %x7, %x8  #1404 pc 15716
	sw	%x5, 0(%x31)  #1404 pc 15720
	j	be_cont.9360 #pc 15724
	nop #pc 15728
be_else.9359: #pc 15732
	addi	%x31, %x0, 2  #pc 15732
	beq	%x5, %x31, 12  #1405 pc 15736
	j	be_else.9361 #pc 15740
	nop #pc 15744
	lw	%x5, 20(%x2)  #1406 pc 15748
	lw	%x6, 8(%x2)  #1406 pc 15752
	sw	%x1, 24(%x2)  #1406 pc 15756
	addi	%x2, %x2, 28  #1406 pc 15760
	jal	%x1, setup_surface_table.2869  #1406 pc 15764
	addi	%x2, %x2, -28  #1406 pc 15768
	lw	%x1, 24(%x2) #1406 pc 15772
	lw	%x6, 4(%x2)  #1406 pc 15776
	slli	%x7, %x6, 2  #1406 pc 15780
	lw	%x8, 16(%x2)  #1406 pc 15784
	add	%x31, %x7, %x8  #1406 pc 15788
	sw	%x5, 0(%x31)  #1406 pc 15792
	j	be_cont.9362 #pc 15796
	nop #pc 15800
be_else.9361: #pc 15804
	lw	%x5, 20(%x2)  #1408 pc 15804
	lw	%x6, 8(%x2)  #1408 pc 15808
	sw	%x1, 24(%x2)  #1408 pc 15812
	addi	%x2, %x2, 28  #1408 pc 15816
	jal	%x1, setup_second_table.2872  #1408 pc 15820
	addi	%x2, %x2, -28  #1408 pc 15824
	lw	%x1, 24(%x2) #1408 pc 15828
	lw	%x6, 4(%x2)  #1408 pc 15832
	slli	%x7, %x6, 2  #1408 pc 15836
	lw	%x8, 16(%x2)  #1408 pc 15840
	add	%x31, %x7, %x8  #1408 pc 15844
	sw	%x5, 0(%x31)  #1408 pc 15848
be_cont.9362: #pc 15852
be_cont.9360: #pc 15852
	addi	%x6, %x6, -1  #1410 pc 15852
	lw	%x5, 12(%x2)  #1410 pc 15856
	lw	%x29, 0(%x2)  #1410 pc 15860
	lw	%x30, 0(%x29)  #1410 pc 15864
	jalr	%x0, %x30, 0  #1410 pc 15868
	nop #pc 15872
bge_else.9358: #pc 15876
	ret #pc 15876
	nop #pc 15880
setup_dirvec_constants.2878:  #pc 15884
	lw	%x6, 8(%x29)  #0 pc 15884
	lw	%x29, 4(%x29)  #0 pc 15888
	lw	%x6, 0(%x6)  #1415 pc 15892
	addi	%x6, %x6, -1  #1415 pc 15896
	lw	%x30, 0(%x29)  #1415 pc 15900
	jalr	%x0, %x30, 0  #1415 pc 15904
	nop #pc 15908
setup_startp_constants.2880:  #pc 15912
	lw	%x7, 4(%x29)  #0 pc 15912
	bge	%x6, %x0, 12  #1423 pc 15916
	j	bge_else.9364 #pc 15920
	nop #pc 15924
	slli	%x8, %x6, 2  #1424 pc 15928
	add	%x31, %x8, %x7  #1424 pc 15932
	lw	%x7, 0(%x31)  #1424 pc 15936
	sw	%x29, 0(%x2)  #1425 pc 15940
	sw	%x6, 4(%x2)  #1425 pc 15944
	sw	%x5, 8(%x2)  #1425 pc 15948
	sw	%x7, 12(%x2)  #1425 pc 15952
	addi	%x5, %x7, 0  #0 pc 15956
	sw	%x1, 16(%x2)  #1425 pc 15960
	addi	%x2, %x2, 20  #1425 pc 15964
	jal	%x1, o_param_ctbl.2728  #1425 pc 15968
	addi	%x2, %x2, -20  #1425 pc 15972
	lw	%x1, 16(%x2) #1425 pc 15976
	lw	%x6, 12(%x2)  #1426 pc 15980
	sw	%x5, 16(%x2)  #1426 pc 15984
	addi	%x5, %x6, 0  #0 pc 15988
	sw	%x1, 20(%x2)  #1426 pc 15992
	addi	%x2, %x2, 24  #1426 pc 15996
	jal	%x1, o_form.2690  #1426 pc 16000
	addi	%x2, %x2, -24  #1426 pc 16004
	lw	%x1, 20(%x2) #1426 pc 16008
	lw	%x6, 8(%x2)  #1427 pc 16012
	flw	%f0, 0(%x6)  #1427 pc 16016
	lw	%x7, 12(%x2)  #1427 pc 16020
	sw	%x5, 20(%x2)  #1427 pc 16024
	fsw	%f0, 24(%x2)  #1427 pc 16028
	addi	%x5, %x7, 0  #0 pc 16032
	sw	%x1, 32(%x2)  #1427 pc 16036
	addi	%x2, %x2, 36  #1427 pc 16040
	jal	%x1, o_param_x.2706  #1427 pc 16044
	addi	%x2, %x2, -36  #1427 pc 16048
	lw	%x1, 32(%x2) #1427 pc 16052
	flw	%f1, 24(%x2)  #1427 pc 16056
	fsub	%f0, %f1, %f0  #1427 pc 16060
	lw	%x5, 16(%x2)  #1427 pc 16064
	fsw	%f0, 0(%x5)  #1427 pc 16068
	lw	%x6, 8(%x2)  #1428 pc 16072
	flw	%f0, 4(%x6)  #1428 pc 16076
	lw	%x7, 12(%x2)  #1428 pc 16080
	fsw	%f0, 32(%x2)  #1428 pc 16084
	addi	%x5, %x7, 0  #0 pc 16088
	sw	%x1, 40(%x2)  #1428 pc 16092
	addi	%x2, %x2, 44  #1428 pc 16096
	jal	%x1, o_param_y.2708  #1428 pc 16100
	addi	%x2, %x2, -44  #1428 pc 16104
	lw	%x1, 40(%x2) #1428 pc 16108
	flw	%f1, 32(%x2)  #1428 pc 16112
	fsub	%f0, %f1, %f0  #1428 pc 16116
	lw	%x5, 16(%x2)  #1428 pc 16120
	fsw	%f0, 4(%x5)  #1428 pc 16124
	lw	%x6, 8(%x2)  #1429 pc 16128
	flw	%f0, 8(%x6)  #1429 pc 16132
	lw	%x7, 12(%x2)  #1429 pc 16136
	fsw	%f0, 40(%x2)  #1429 pc 16140
	addi	%x5, %x7, 0  #0 pc 16144
	sw	%x1, 48(%x2)  #1429 pc 16148
	addi	%x2, %x2, 52  #1429 pc 16152
	jal	%x1, o_param_z.2710  #1429 pc 16156
	addi	%x2, %x2, -52  #1429 pc 16160
	lw	%x1, 48(%x2) #1429 pc 16164
	flw	%f1, 40(%x2)  #1429 pc 16168
	fsub	%f0, %f1, %f0  #1429 pc 16172
	lw	%x5, 16(%x2)  #1429 pc 16176
	fsw	%f0, 8(%x5)  #1429 pc 16180
	lw	%x6, 20(%x2)  #1430 pc 16184
	addi	%x31, %x0, 2  #pc 16188
	beq	%x6, %x31, 12  #1430 pc 16192
	j	be_else.9365 #pc 16196
	nop #pc 16200
	lw	%x6, 12(%x2)  #1432 pc 16204
	addi	%x5, %x6, 0  #0 pc 16208
	sw	%x1, 48(%x2)  #1432 pc 16212
	addi	%x2, %x2, 52  #1432 pc 16216
	jal	%x1, o_param_abc.2704  #1432 pc 16220
	addi	%x2, %x2, -52  #1432 pc 16224
	lw	%x1, 48(%x2) #1432 pc 16228
	lw	%x6, 16(%x2)  #1432 pc 16232
	flw	%f0, 0(%x6)  #1432 pc 16236
	flw	%f1, 4(%x6)  #1432 pc 16240
	flw	%f2, 8(%x6)  #1432 pc 16244
	sw	%x1, 48(%x2)  #1432 pc 16248
	addi	%x2, %x2, 52  #1432 pc 16252
	jal	%x1, veciprod2.2669  #1432 pc 16256
	addi	%x2, %x2, -52  #1432 pc 16260
	lw	%x1, 48(%x2) #1432 pc 16264
	lw	%x5, 16(%x2)  #1431 pc 16268
	fsw	%f0, 12(%x5)  #1431 pc 16272
	j	be_cont.9366 #pc 16276
	nop #pc 16280
be_else.9365: #pc 16284
	addi	%x31, %x0, 2  #pc 16284
	bge	%x31, %x6, 12  #1433 pc 16288
	j	ble_else.9367 #pc 16292
	nop #pc 16296
	j	ble_cont.9368 #pc 16300
	nop #pc 16304
ble_else.9367: #pc 16308
	flw	%f0, 0(%x5)  #1434 pc 16308
	flw	%f1, 4(%x5)  #1434 pc 16312
	flw	%f2, 8(%x5)  #1434 pc 16316
	lw	%x7, 12(%x2)  #1434 pc 16320
	addi	%x5, %x7, 0  #0 pc 16324
	sw	%x1, 48(%x2)  #1434 pc 16328
	addi	%x2, %x2, 52  #1434 pc 16332
	jal	%x1, quadratic.2803  #1434 pc 16336
	addi	%x2, %x2, -52  #1434 pc 16340
	lw	%x1, 48(%x2) #1434 pc 16344
	lw	%x5, 20(%x2)  #1435 pc 16348
	addi	%x31, %x0, 3  #pc 16352
	beq	%x5, %x31, 12  #1435 pc 16356
	j	be_else.9369 #pc 16360
	nop #pc 16364
	fmv	%f1, l.6317  #0 pc 16368
	fsub	%f0, %f0, %f1  #1435 pc 16372
	j	be_cont.9370 #pc 16376
	nop #pc 16380
be_else.9369: #pc 16384
be_cont.9370: #pc 16384
	lw	%x5, 16(%x2)  #1435 pc 16384
	fsw	%f0, 12(%x5)  #1435 pc 16388
ble_cont.9368: #pc 16392
be_cont.9366: #pc 16392
	lw	%x5, 4(%x2)  #1437 pc 16392
	addi	%x6, %x5, -1  #1437 pc 16396
	lw	%x5, 8(%x2)  #1437 pc 16400
	lw	%x29, 0(%x2)  #1437 pc 16404
	lw	%x30, 0(%x29)  #1437 pc 16408
	jalr	%x0, %x30, 0  #1437 pc 16412
	nop #pc 16416
bge_else.9364: #pc 16420
	ret #pc 16420
	nop #pc 16424
setup_startp.2883:  #pc 16428
	lw	%x6, 12(%x29)  #1442 pc 16428
	lw	%x7, 8(%x29)  #1442 pc 16432
	lw	%x8, 4(%x29)  #1442 pc 16436
	sw	%x5, 0(%x2)  #1442 pc 16440
	sw	%x7, 4(%x2)  #1442 pc 16444
	sw	%x8, 8(%x2)  #1442 pc 16448
	addi	%x30, %x6, 0  #0 pc 16452
	addi	%x6, %x5, 0  #0 pc 16456
	addi	%x5, %x30, 0  #0 pc 16460
	sw	%x1, 12(%x2)  #1442 pc 16464
	addi	%x2, %x2, 16  #1442 pc 16468
	jal	%x1, veccpy.2660  #1442 pc 16472
	addi	%x2, %x2, -16  #1442 pc 16476
	lw	%x1, 12(%x2) #1442 pc 16480
	lw	%x5, 8(%x2)  #1443 pc 16484
	lw	%x5, 0(%x5)  #1443 pc 16488
	addi	%x6, %x5, -1  #1443 pc 16492
	lw	%x5, 0(%x2)  #1443 pc 16496
	lw	%x29, 4(%x2)  #1443 pc 16500
	lw	%x30, 0(%x29)  #1443 pc 16504
	jalr	%x0, %x30, 0  #1443 pc 16508
	nop #pc 16512
is_rect_outside.2885:  #pc 16516
	fabs	%f0, %f0  #1455 pc 16516
	fsw	%f2, 0(%x2)  #1455 pc 16520
	sw	%x5, 8(%x2)  #1455 pc 16524
	fsw	%f1, 16(%x2)  #1455 pc 16528
	fsw	%f0, 24(%x2)  #1455 pc 16532
	sw	%x1, 32(%x2)  #1455 pc 16536
	addi	%x2, %x2, 36  #1455 pc 16540
	jal	%x1, o_param_a.2698  #1455 pc 16544
	addi	%x2, %x2, -36  #1455 pc 16548
	lw	%x1, 32(%x2) #1455 pc 16552
	fadd	%f1, %f0, %f30  #1455 pc 16556
	flw	%f0, 24(%x2)  #1455 pc 16560
	sw	%x1, 32(%x2)  #1455 pc 16564
	addi	%x2, %x2, 36  #1455 pc 16568
	jal	%x1, fless.2546  #1455 pc 16572
	addi	%x2, %x2, -36  #1455 pc 16576
	lw	%x1, 32(%x2) #1455 pc 16580
	beq	%x5, %x0, 12  #1455 pc 16584
	j	be_else.9373 #pc 16588
	nop #pc 16592
	addi	%x5, %x0, 0  #0 pc 16596
	j	be_cont.9374 #pc 16600
	nop #pc 16604
be_else.9373: #pc 16608
	flw	%f0, 16(%x2)  #1456 pc 16608
	fabs	%f0, %f0  #1456 pc 16612
	lw	%x5, 8(%x2)  #1456 pc 16616
	fsw	%f0, 32(%x2)  #1456 pc 16620
	sw	%x1, 40(%x2)  #1456 pc 16624
	addi	%x2, %x2, 44  #1456 pc 16628
	jal	%x1, o_param_b.2700  #1456 pc 16632
	addi	%x2, %x2, -44  #1456 pc 16636
	lw	%x1, 40(%x2) #1456 pc 16640
	fadd	%f1, %f0, %f30  #1456 pc 16644
	flw	%f0, 32(%x2)  #1456 pc 16648
	sw	%x1, 40(%x2)  #1456 pc 16652
	addi	%x2, %x2, 44  #1456 pc 16656
	jal	%x1, fless.2546  #1456 pc 16660
	addi	%x2, %x2, -44  #1456 pc 16664
	lw	%x1, 40(%x2) #1456 pc 16668
	beq	%x5, %x0, 12  #1456 pc 16672
	j	be_else.9375 #pc 16676
	nop #pc 16680
	addi	%x5, %x0, 0  #0 pc 16684
	j	be_cont.9376 #pc 16688
	nop #pc 16692
be_else.9375: #pc 16696
	flw	%f0, 0(%x2)  #1457 pc 16696
	fabs	%f0, %f0  #1457 pc 16700
	lw	%x5, 8(%x2)  #1457 pc 16704
	fsw	%f0, 40(%x2)  #1457 pc 16708
	sw	%x1, 48(%x2)  #1457 pc 16712
	addi	%x2, %x2, 52  #1457 pc 16716
	jal	%x1, o_param_c.2702  #1457 pc 16720
	addi	%x2, %x2, -52  #1457 pc 16724
	lw	%x1, 48(%x2) #1457 pc 16728
	fadd	%f1, %f0, %f30  #1457 pc 16732
	flw	%f0, 40(%x2)  #1457 pc 16736
	sw	%x1, 48(%x2)  #1457 pc 16740
	addi	%x2, %x2, 52  #1457 pc 16744
	jal	%x1, fless.2546  #1457 pc 16748
	addi	%x2, %x2, -52  #1457 pc 16752
	lw	%x1, 48(%x2) #1457 pc 16756
be_cont.9376: #pc 16760
be_cont.9374: #pc 16760
	beq	%x5, %x0, 12  #1454 pc 16760
	j	be_else.9377 #pc 16764
	nop #pc 16768
	lw	%x5, 8(%x2)  #1460 pc 16772
	sw	%x1, 48(%x2)  #1460 pc 16776
	addi	%x2, %x2, 52  #1460 pc 16780
	jal	%x1, o_isinvert.2694  #1460 pc 16784
	addi	%x2, %x2, -52  #1460 pc 16788
	lw	%x1, 48(%x2) #1460 pc 16792
	beq	%x5, %x0, 12  #1460 pc 16796
	j	be_else.9378 #pc 16800
	nop #pc 16804
	addi	%x5, %x0, 1  #0 pc 16808
	ret #pc 16812
	nop #pc 16816
be_else.9378: #pc 16820
	addi	%x5, %x0, 0  #0 pc 16820
	ret #pc 16824
	nop #pc 16828
be_else.9377: #pc 16832
	lw	%x5, 8(%x2)  #1460 pc 16832
	j	o_isinvert.2694  #1460 pc 16836
	nop #pc 16840
is_plane_outside.2890:  #pc 16844
	sw	%x5, 0(%x2)  #1465 pc 16844
	fsw	%f2, 8(%x2)  #1465 pc 16848
	fsw	%f1, 16(%x2)  #1465 pc 16852
	fsw	%f0, 24(%x2)  #1465 pc 16856
	sw	%x1, 32(%x2)  #1465 pc 16860
	addi	%x2, %x2, 36  #1465 pc 16864
	jal	%x1, o_param_abc.2704  #1465 pc 16868
	addi	%x2, %x2, -36  #1465 pc 16872
	lw	%x1, 32(%x2) #1465 pc 16876
	flw	%f0, 24(%x2)  #1465 pc 16880
	flw	%f1, 16(%x2)  #1465 pc 16884
	flw	%f2, 8(%x2)  #1465 pc 16888
	sw	%x1, 32(%x2)  #1465 pc 16892
	addi	%x2, %x2, 36  #1465 pc 16896
	jal	%x1, veciprod2.2669  #1465 pc 16900
	addi	%x2, %x2, -36  #1465 pc 16904
	lw	%x1, 32(%x2) #1465 pc 16908
	lw	%x5, 0(%x2)  #1466 pc 16912
	fsw	%f0, 32(%x2)  #1466 pc 16916
	sw	%x1, 40(%x2)  #1466 pc 16920
	addi	%x2, %x2, 44  #1466 pc 16924
	jal	%x1, o_isinvert.2694  #1466 pc 16928
	addi	%x2, %x2, -44  #1466 pc 16932
	lw	%x1, 40(%x2) #1466 pc 16936
	flw	%f0, 32(%x2)  #1466 pc 16940
	sw	%x5, 40(%x2)  #1466 pc 16944
	sw	%x1, 44(%x2)  #1466 pc 16948
	addi	%x2, %x2, 48  #1466 pc 16952
	jal	%x1, fisneg.2538  #1466 pc 16956
	addi	%x2, %x2, -48  #1466 pc 16960
	lw	%x1, 44(%x2) #1466 pc 16964
	addi	%x6, %x5, 0  #1466 pc 16968
	lw	%x5, 40(%x2)  #1466 pc 16972
	sw	%x1, 44(%x2)  #1466 pc 16976
	addi	%x2, %x2, 48  #1466 pc 16980
	jal	%x1, xor.2639  #1466 pc 16984
	addi	%x2, %x2, -48  #1466 pc 16988
	lw	%x1, 44(%x2) #1466 pc 16992
	beq	%x5, %x0, 12  #1466 pc 16996
	j	be_else.9380 #pc 17000
	nop #pc 17004
	addi	%x5, %x0, 1  #0 pc 17008
	ret #pc 17012
	nop #pc 17016
be_else.9380: #pc 17020
	addi	%x5, %x0, 0  #0 pc 17020
	ret #pc 17024
	nop #pc 17028
is_second_outside.2895:  #pc 17032
	sw	%x5, 0(%x2)  #1471 pc 17032
	sw	%x1, 4(%x2)  #1471 pc 17036
	addi	%x2, %x2, 8  #1471 pc 17040
	jal	%x1, quadratic.2803  #1471 pc 17044
	addi	%x2, %x2, -8  #1471 pc 17048
	lw	%x1, 4(%x2) #1471 pc 17052
	lw	%x5, 0(%x2)  #1472 pc 17056
	fsw	%f0, 8(%x2)  #1472 pc 17060
	sw	%x1, 16(%x2)  #1472 pc 17064
	addi	%x2, %x2, 20  #1472 pc 17068
	jal	%x1, o_form.2690  #1472 pc 17072
	addi	%x2, %x2, -20  #1472 pc 17076
	lw	%x1, 16(%x2) #1472 pc 17080
	addi	%x31, %x0, 3  #pc 17084
	beq	%x5, %x31, 12  #1472 pc 17088
	j	be_else.9382 #pc 17092
	nop #pc 17096
	fmv	%f0, l.6317  #0 pc 17100
	flw	%f1, 8(%x2)  #1472 pc 17104
	fsub	%f0, %f1, %f0  #1472 pc 17108
	j	be_cont.9383 #pc 17112
	nop #pc 17116
be_else.9382: #pc 17120
	flw	%f0, 8(%x2)  #1472 pc 17120
be_cont.9383: #pc 17124
	lw	%x5, 0(%x2)  #1473 pc 17124
	fsw	%f0, 16(%x2)  #1473 pc 17128
	sw	%x1, 24(%x2)  #1473 pc 17132
	addi	%x2, %x2, 28  #1473 pc 17136
	jal	%x1, o_isinvert.2694  #1473 pc 17140
	addi	%x2, %x2, -28  #1473 pc 17144
	lw	%x1, 24(%x2) #1473 pc 17148
	flw	%f0, 16(%x2)  #1473 pc 17152
	sw	%x5, 24(%x2)  #1473 pc 17156
	sw	%x1, 28(%x2)  #1473 pc 17160
	addi	%x2, %x2, 32  #1473 pc 17164
	jal	%x1, fisneg.2538  #1473 pc 17168
	addi	%x2, %x2, -32  #1473 pc 17172
	lw	%x1, 28(%x2) #1473 pc 17176
	addi	%x6, %x5, 0  #1473 pc 17180
	lw	%x5, 24(%x2)  #1473 pc 17184
	sw	%x1, 28(%x2)  #1473 pc 17188
	addi	%x2, %x2, 32  #1473 pc 17192
	jal	%x1, xor.2639  #1473 pc 17196
	addi	%x2, %x2, -32  #1473 pc 17200
	lw	%x1, 28(%x2) #1473 pc 17204
	beq	%x5, %x0, 12  #1473 pc 17208
	j	be_else.9384 #pc 17212
	nop #pc 17216
	addi	%x5, %x0, 1  #0 pc 17220
	ret #pc 17224
	nop #pc 17228
be_else.9384: #pc 17232
	addi	%x5, %x0, 0  #0 pc 17232
	ret #pc 17236
	nop #pc 17240
is_outside.2900:  #pc 17244
	fsw	%f2, 0(%x2)  #1478 pc 17244
	fsw	%f1, 8(%x2)  #1478 pc 17248
	sw	%x5, 16(%x2)  #1478 pc 17252
	fsw	%f0, 24(%x2)  #1478 pc 17256
	sw	%x1, 32(%x2)  #1478 pc 17260
	addi	%x2, %x2, 36  #1478 pc 17264
	jal	%x1, o_param_x.2706  #1478 pc 17268
	addi	%x2, %x2, -36  #1478 pc 17272
	lw	%x1, 32(%x2) #1478 pc 17276
	flw	%f1, 24(%x2)  #1478 pc 17280
	fsub	%f0, %f1, %f0  #1478 pc 17284
	lw	%x5, 16(%x2)  #1479 pc 17288
	fsw	%f0, 32(%x2)  #1479 pc 17292
	sw	%x1, 40(%x2)  #1479 pc 17296
	addi	%x2, %x2, 44  #1479 pc 17300
	jal	%x1, o_param_y.2708  #1479 pc 17304
	addi	%x2, %x2, -44  #1479 pc 17308
	lw	%x1, 40(%x2) #1479 pc 17312
	flw	%f1, 8(%x2)  #1479 pc 17316
	fsub	%f0, %f1, %f0  #1479 pc 17320
	lw	%x5, 16(%x2)  #1480 pc 17324
	fsw	%f0, 40(%x2)  #1480 pc 17328
	sw	%x1, 48(%x2)  #1480 pc 17332
	addi	%x2, %x2, 52  #1480 pc 17336
	jal	%x1, o_param_z.2710  #1480 pc 17340
	addi	%x2, %x2, -52  #1480 pc 17344
	lw	%x1, 48(%x2) #1480 pc 17348
	flw	%f1, 0(%x2)  #1480 pc 17352
	fsub	%f0, %f1, %f0  #1480 pc 17356
	lw	%x5, 16(%x2)  #1481 pc 17360
	fsw	%f0, 48(%x2)  #1481 pc 17364
	sw	%x1, 56(%x2)  #1481 pc 17368
	addi	%x2, %x2, 60  #1481 pc 17372
	jal	%x1, o_form.2690  #1481 pc 17376
	addi	%x2, %x2, -60  #1481 pc 17380
	lw	%x1, 56(%x2) #1481 pc 17384
	addi	%x31, %x0, 1  #pc 17388
	beq	%x5, %x31, 12  #1482 pc 17392
	j	be_else.9386 #pc 17396
	nop #pc 17400
	flw	%f0, 32(%x2)  #1483 pc 17404
	flw	%f1, 40(%x2)  #1483 pc 17408
	flw	%f2, 48(%x2)  #1483 pc 17412
	lw	%x5, 16(%x2)  #1483 pc 17416
	j	is_rect_outside.2885  #1483 pc 17420
	nop #pc 17424
be_else.9386: #pc 17428
	addi	%x31, %x0, 2  #pc 17428
	beq	%x5, %x31, 12  #1484 pc 17432
	j	be_else.9387 #pc 17436
	nop #pc 17440
	flw	%f0, 32(%x2)  #1485 pc 17444
	flw	%f1, 40(%x2)  #1485 pc 17448
	flw	%f2, 48(%x2)  #1485 pc 17452
	lw	%x5, 16(%x2)  #1485 pc 17456
	j	is_plane_outside.2890  #1485 pc 17460
	nop #pc 17464
be_else.9387: #pc 17468
	flw	%f0, 32(%x2)  #1487 pc 17468
	flw	%f1, 40(%x2)  #1487 pc 17472
	flw	%f2, 48(%x2)  #1487 pc 17476
	lw	%x5, 16(%x2)  #1487 pc 17480
	j	is_second_outside.2895  #1487 pc 17484
	nop #pc 17488
check_all_inside.2905:  #pc 17492
	lw	%x7, 4(%x29)  #1492 pc 17492
	slli	%x8, %x5, 2  #1492 pc 17496
	add	%x31, %x8, %x6  #1492 pc 17500
	lw	%x8, 0(%x31)  #1492 pc 17504
	addi	%x31, %x0, -1  #pc 17508
	beq	%x8, %x31, 12  #1493 pc 17512
	j	be_else.9388 #pc 17516
	nop #pc 17520
	addi	%x5, %x0, 1  #0 pc 17524
	ret #pc 17528
	nop #pc 17532
be_else.9388: #pc 17536
	slli	%x8, %x8, 2  #1496 pc 17536
	add	%x31, %x8, %x7  #1496 pc 17540
	lw	%x7, 0(%x31)  #1496 pc 17544
	fsw	%f2, 0(%x2)  #1496 pc 17548
	fsw	%f1, 8(%x2)  #1496 pc 17552
	fsw	%f0, 16(%x2)  #1496 pc 17556
	sw	%x6, 24(%x2)  #1496 pc 17560
	sw	%x29, 28(%x2)  #1496 pc 17564
	sw	%x5, 32(%x2)  #1496 pc 17568
	addi	%x5, %x7, 0  #0 pc 17572
	sw	%x1, 36(%x2)  #1496 pc 17576
	addi	%x2, %x2, 40  #1496 pc 17580
	jal	%x1, is_outside.2900  #1496 pc 17584
	addi	%x2, %x2, -40  #1496 pc 17588
	lw	%x1, 36(%x2) #1496 pc 17592
	beq	%x5, %x0, 12  #1496 pc 17596
	j	be_else.9389 #pc 17600
	nop #pc 17604
	lw	%x5, 32(%x2)  #1499 pc 17608
	addi	%x5, %x5, 1  #1499 pc 17612
	flw	%f0, 16(%x2)  #1499 pc 17616
	flw	%f1, 8(%x2)  #1499 pc 17620
	flw	%f2, 0(%x2)  #1499 pc 17624
	lw	%x6, 24(%x2)  #1499 pc 17628
	lw	%x29, 28(%x2)  #1499 pc 17632
	lw	%x30, 0(%x29)  #1499 pc 17636
	jalr	%x0, %x30, 0  #1499 pc 17640
	nop #pc 17644
be_else.9389: #pc 17648
	addi	%x5, %x0, 0  #0 pc 17648
	ret #pc 17652
	nop #pc 17656
shadow_check_and_group.2911:  #pc 17660
	lw	%x7, 28(%x29)  #0 pc 17660
	lw	%x8, 24(%x29)  #0 pc 17664
	lw	%x9, 20(%x29)  #0 pc 17668
	lw	%x10, 16(%x29)  #0 pc 17672
	lw	%x11, 12(%x29)  #0 pc 17676
	lw	%x12, 8(%x29)  #0 pc 17680
	lw	%x13, 4(%x29)  #0 pc 17684
	slli	%x14, %x5, 2  #1512 pc 17688
	add	%x31, %x14, %x6  #1512 pc 17692
	lw	%x14, 0(%x31)  #1512 pc 17696
	addi	%x31, %x0, -1  #pc 17700
	beq	%x14, %x31, 12  #1512 pc 17704
	j	be_else.9390 #pc 17708
	nop #pc 17712
	addi	%x5, %x0, 0  #0 pc 17716
	ret #pc 17720
	nop #pc 17724
be_else.9390: #pc 17728
	slli	%x14, %x5, 2  #1515 pc 17728
	add	%x31, %x14, %x6  #1515 pc 17732
	lw	%x14, 0(%x31)  #1515 pc 17736
	sw	%x13, 0(%x2)  #1516 pc 17740
	sw	%x12, 4(%x2)  #1516 pc 17744
	sw	%x11, 8(%x2)  #1516 pc 17748
	sw	%x6, 12(%x2)  #1516 pc 17752
	sw	%x29, 16(%x2)  #1516 pc 17756
	sw	%x5, 20(%x2)  #1516 pc 17760
	sw	%x9, 24(%x2)  #1516 pc 17764
	sw	%x14, 28(%x2)  #1516 pc 17768
	sw	%x8, 32(%x2)  #1516 pc 17772
	addi	%x6, %x10, 0  #0 pc 17776
	addi	%x5, %x14, 0  #0 pc 17780
	addi	%x29, %x7, 0  #0 pc 17784
	addi	%x7, %x12, 0  #0 pc 17788
	sw	%x1, 36(%x2)  #1516 pc 17792
	lw	%x30, 0(%x29)  #1516 pc 17796
	addi	%x2, %x2, 40  #1516 pc 17800
	jalr	%x1, %x30, 0  #1516 pc 17804
	addi	%x2, %x2, -40  #1516 pc 17808
	lw	%x1, 36(%x2)  #1516 pc 17812
	lw	%x6, 32(%x2)  #1517 pc 17816
	flw	%f0, 0(%x6)  #1517 pc 17820
	fsw	%f0, 40(%x2)  #1518 pc 17824
	beq	%x5, %x0, 12  #1518 pc 17828
	j	be_else.9392 #pc 17832
	nop #pc 17836
	addi	%x5, %x0, 0  #0 pc 17840
	j	be_cont.9393 #pc 17844
	nop #pc 17848
be_else.9392: #pc 17852
	fmv	%f1, l.6707  #0 pc 17852
	sw	%x1, 48(%x2)  #1518 pc 17856
	addi	%x2, %x2, 52  #1518 pc 17860
	jal	%x1, fless.2546  #1518 pc 17864
	addi	%x2, %x2, -52  #1518 pc 17868
	lw	%x1, 48(%x2) #1518 pc 17872
be_cont.9393: #pc 17876
	beq	%x5, %x0, 12  #1518 pc 17876
	j	be_else.9394 #pc 17880
	nop #pc 17884
	lw	%x5, 28(%x2)  #1534 pc 17888
	slli	%x5, %x5, 2  #1534 pc 17892
	lw	%x6, 24(%x2)  #1534 pc 17896
	add	%x31, %x5, %x6  #1534 pc 17900
	lw	%x5, 0(%x31)  #1534 pc 17904
	sw	%x1, 48(%x2)  #1534 pc 17908
	addi	%x2, %x2, 52  #1534 pc 17912
	jal	%x1, o_isinvert.2694  #1534 pc 17916
	addi	%x2, %x2, -52  #1534 pc 17920
	lw	%x1, 48(%x2) #1534 pc 17924
	beq	%x5, %x0, 12  #1534 pc 17928
	j	be_else.9395 #pc 17932
	nop #pc 17936
	addi	%x5, %x0, 0  #0 pc 17940
	ret #pc 17944
	nop #pc 17948
be_else.9395: #pc 17952
	lw	%x5, 20(%x2)  #1535 pc 17952
	addi	%x5, %x5, 1  #1535 pc 17956
	lw	%x6, 12(%x2)  #1535 pc 17960
	lw	%x29, 16(%x2)  #1535 pc 17964
	lw	%x30, 0(%x29)  #1535 pc 17968
	jalr	%x0, %x30, 0  #1535 pc 17972
	nop #pc 17976
be_else.9394: #pc 17980
	fmv	%f0, l.6709  #0 pc 17980
	flw	%f1, 40(%x2)  #1521 pc 17984
	fadd	%f0, %f1, %f0  #1521 pc 17988
	lw	%x5, 8(%x2)  #1522 pc 17992
	flw	%f1, 0(%x5)  #1522 pc 17996
	fmul	%f1, %f1, %f0  #1522 pc 18000
	lw	%x6, 4(%x2)  #1522 pc 18004
	flw	%f2, 0(%x6)  #1522 pc 18008
	fadd	%f1, %f1, %f2  #1522 pc 18012
	flw	%f2, 4(%x5)  #1523 pc 18016
	fmul	%f2, %f2, %f0  #1523 pc 18020
	flw	%f3, 4(%x6)  #1523 pc 18024
	fadd	%f2, %f2, %f3  #1523 pc 18028
	flw	%f3, 8(%x5)  #1524 pc 18032
	fmul	%f0, %f3, %f0  #1524 pc 18036
	flw	%f3, 8(%x6)  #1524 pc 18040
	fadd	%f0, %f0, %f3  #1524 pc 18044
	addi	%x5, %x0, 0  #0 pc 18048
	lw	%x6, 12(%x2)  #1525 pc 18052
	lw	%x29, 0(%x2)  #1525 pc 18056
	fadd	%f29, %f2, %f30  #0 pc 18060
	fadd	%f2, %f0, %f30  #0 pc 18064
	fadd	%f0, %f1, %f30  #0 pc 18068
	fadd	%f1, %f29, %f30  #0 pc 18072
	sw	%x1, 48(%x2)  #1525 pc 18076
	lw	%x30, 0(%x29)  #1525 pc 18080
	addi	%x2, %x2, 52  #1525 pc 18084
	jalr	%x1, %x30, 0  #1525 pc 18088
	addi	%x2, %x2, -52  #1525 pc 18092
	lw	%x1, 48(%x2)  #1525 pc 18096
	beq	%x5, %x0, 12  #1525 pc 18100
	j	be_else.9396 #pc 18104
	nop #pc 18108
	lw	%x5, 20(%x2)  #1528 pc 18112
	addi	%x5, %x5, 1  #1528 pc 18116
	lw	%x6, 12(%x2)  #1528 pc 18120
	lw	%x29, 16(%x2)  #1528 pc 18124
	lw	%x30, 0(%x29)  #1528 pc 18128
	jalr	%x0, %x30, 0  #1528 pc 18132
	nop #pc 18136
be_else.9396: #pc 18140
	addi	%x5, %x0, 1  #0 pc 18140
	ret #pc 18144
	nop #pc 18148
shadow_check_one_or_group.2914:  #pc 18152
	lw	%x7, 8(%x29)  #1542 pc 18152
	lw	%x8, 4(%x29)  #1542 pc 18156
	slli	%x9, %x5, 2  #1542 pc 18160
	add	%x31, %x9, %x6  #1542 pc 18164
	lw	%x9, 0(%x31)  #1542 pc 18168
	addi	%x31, %x0, -1  #pc 18172
	beq	%x9, %x31, 12  #1543 pc 18176
	j	be_else.9397 #pc 18180
	nop #pc 18184
	addi	%x5, %x0, 0  #0 pc 18188
	ret #pc 18192
	nop #pc 18196
be_else.9397: #pc 18200
	slli	%x9, %x9, 2  #1546 pc 18200
	add	%x31, %x9, %x8  #1546 pc 18204
	lw	%x8, 0(%x31)  #1546 pc 18208
	addi	%x9, %x0, 0  #0 pc 18212
	sw	%x6, 0(%x2)  #1547 pc 18216
	sw	%x29, 4(%x2)  #1547 pc 18220
	sw	%x5, 8(%x2)  #1547 pc 18224
	addi	%x6, %x8, 0  #0 pc 18228
	addi	%x5, %x9, 0  #0 pc 18232
	addi	%x29, %x7, 0  #0 pc 18236
	sw	%x1, 12(%x2)  #1547 pc 18240
	lw	%x30, 0(%x29)  #1547 pc 18244
	addi	%x2, %x2, 16  #1547 pc 18248
	jalr	%x1, %x30, 0  #1547 pc 18252
	addi	%x2, %x2, -16  #1547 pc 18256
	lw	%x1, 12(%x2)  #1547 pc 18260
	beq	%x5, %x0, 12  #1548 pc 18264
	j	be_else.9398 #pc 18268
	nop #pc 18272
	lw	%x5, 8(%x2)  #1551 pc 18276
	addi	%x5, %x5, 1  #1551 pc 18280
	lw	%x6, 0(%x2)  #1551 pc 18284
	lw	%x29, 4(%x2)  #1551 pc 18288
	lw	%x30, 0(%x29)  #1551 pc 18292
	jalr	%x0, %x30, 0  #1551 pc 18296
	nop #pc 18300
be_else.9398: #pc 18304
	addi	%x5, %x0, 1  #0 pc 18304
	ret #pc 18308
	nop #pc 18312
shadow_check_one_or_matrix.2917:  #pc 18316
	lw	%x7, 20(%x29)  #1557 pc 18316
	lw	%x8, 16(%x29)  #1557 pc 18320
	lw	%x9, 12(%x29)  #1557 pc 18324
	lw	%x10, 8(%x29)  #1557 pc 18328
	lw	%x11, 4(%x29)  #1557 pc 18332
	slli	%x12, %x5, 2  #1557 pc 18336
	add	%x31, %x12, %x6  #1557 pc 18340
	lw	%x12, 0(%x31)  #1557 pc 18344
	lw	%x13, 0(%x12)  #1558 pc 18348
	addi	%x31, %x0, -1  #pc 18352
	beq	%x13, %x31, 12  #1559 pc 18356
	j	be_else.9399 #pc 18360
	nop #pc 18364
	addi	%x5, %x0, 0  #0 pc 18368
	ret #pc 18372
	nop #pc 18376
be_else.9399: #pc 18380
	sw	%x12, 0(%x2)  #1563 pc 18380
	sw	%x9, 4(%x2)  #1563 pc 18384
	sw	%x6, 8(%x2)  #1563 pc 18388
	sw	%x29, 12(%x2)  #1563 pc 18392
	sw	%x5, 16(%x2)  #1563 pc 18396
	addi	%x31, %x0, 99  #pc 18400
	beq	%x13, %x31, 12  #1563 pc 18404
	j	be_else.9400 #pc 18408
	nop #pc 18412
	addi	%x5, %x0, 1  #0 pc 18416
	j	be_cont.9401 #pc 18420
	nop #pc 18424
be_else.9400: #pc 18428
	sw	%x8, 20(%x2)  #1566 pc 18428
	addi	%x6, %x10, 0  #0 pc 18432
	addi	%x5, %x13, 0  #0 pc 18436
	addi	%x29, %x7, 0  #0 pc 18440
	addi	%x7, %x11, 0  #0 pc 18444
	sw	%x1, 24(%x2)  #1566 pc 18448
	lw	%x30, 0(%x29)  #1566 pc 18452
	addi	%x2, %x2, 28  #1566 pc 18456
	jalr	%x1, %x30, 0  #1566 pc 18460
	addi	%x2, %x2, -28  #1566 pc 18464
	lw	%x1, 24(%x2)  #1566 pc 18468
	beq	%x5, %x0, 12  #1569 pc 18472
	j	be_else.9402 #pc 18476
	nop #pc 18480
	addi	%x5, %x0, 0  #0 pc 18484
	j	be_cont.9403 #pc 18488
	nop #pc 18492
be_else.9402: #pc 18496
	lw	%x5, 20(%x2)  #1570 pc 18496
	flw	%f0, 0(%x5)  #1570 pc 18500
	fmv	%f1, l.6723  #0 pc 18504
	sw	%x1, 24(%x2)  #1570 pc 18508
	addi	%x2, %x2, 28  #1570 pc 18512
	jal	%x1, fless.2546  #1570 pc 18516
	addi	%x2, %x2, -28  #1570 pc 18520
	lw	%x1, 24(%x2) #1570 pc 18524
	beq	%x5, %x0, 12  #1570 pc 18528
	j	be_else.9404 #pc 18532
	nop #pc 18536
	addi	%x5, %x0, 0  #0 pc 18540
	j	be_cont.9405 #pc 18544
	nop #pc 18548
be_else.9404: #pc 18552
	addi	%x5, %x0, 1  #0 pc 18552
	lw	%x6, 0(%x2)  #1571 pc 18556
	lw	%x29, 4(%x2)  #1571 pc 18560
	sw	%x1, 24(%x2)  #1571 pc 18564
	lw	%x30, 0(%x29)  #1571 pc 18568
	addi	%x2, %x2, 28  #1571 pc 18572
	jalr	%x1, %x30, 0  #1571 pc 18576
	addi	%x2, %x2, -28  #1571 pc 18580
	lw	%x1, 24(%x2)  #1571 pc 18584
	beq	%x5, %x0, 12  #1571 pc 18588
	j	be_else.9406 #pc 18592
	nop #pc 18596
	addi	%x5, %x0, 0  #0 pc 18600
	j	be_cont.9407 #pc 18604
	nop #pc 18608
be_else.9406: #pc 18612
	addi	%x5, %x0, 1  #0 pc 18612
be_cont.9407: #pc 18616
be_cont.9405: #pc 18616
be_cont.9403: #pc 18616
be_cont.9401: #pc 18616
	beq	%x5, %x0, 12  #1562 pc 18616
	j	be_else.9408 #pc 18620
	nop #pc 18624
	lw	%x5, 16(%x2)  #1582 pc 18628
	addi	%x5, %x5, 1  #1582 pc 18632
	lw	%x6, 8(%x2)  #1582 pc 18636
	lw	%x29, 12(%x2)  #1582 pc 18640
	lw	%x30, 0(%x29)  #1582 pc 18644
	jalr	%x0, %x30, 0  #1582 pc 18648
	nop #pc 18652
be_else.9408: #pc 18656
	addi	%x5, %x0, 1  #0 pc 18656
	lw	%x6, 0(%x2)  #1577 pc 18660
	lw	%x29, 4(%x2)  #1577 pc 18664
	sw	%x1, 24(%x2)  #1577 pc 18668
	lw	%x30, 0(%x29)  #1577 pc 18672
	addi	%x2, %x2, 28  #1577 pc 18676
	jalr	%x1, %x30, 0  #1577 pc 18680
	addi	%x2, %x2, -28  #1577 pc 18684
	lw	%x1, 24(%x2)  #1577 pc 18688
	beq	%x5, %x0, 12  #1577 pc 18692
	j	be_else.9409 #pc 18696
	nop #pc 18700
	lw	%x5, 16(%x2)  #1580 pc 18704
	addi	%x5, %x5, 1  #1580 pc 18708
	lw	%x6, 8(%x2)  #1580 pc 18712
	lw	%x29, 12(%x2)  #1580 pc 18716
	lw	%x30, 0(%x29)  #1580 pc 18720
	jalr	%x0, %x30, 0  #1580 pc 18724
	nop #pc 18728
be_else.9409: #pc 18732
	addi	%x5, %x0, 1  #0 pc 18732
	ret #pc 18736
	nop #pc 18740
solve_each_element.2920:  #pc 18744
	lw	%x8, 36(%x29)  #1593 pc 18744
	lw	%x9, 32(%x29)  #1593 pc 18748
	lw	%x10, 28(%x29)  #1593 pc 18752
	lw	%x11, 24(%x29)  #1593 pc 18756
	lw	%x12, 20(%x29)  #1593 pc 18760
	lw	%x13, 16(%x29)  #1593 pc 18764
	lw	%x14, 12(%x29)  #1593 pc 18768
	lw	%x15, 8(%x29)  #1593 pc 18772
	lw	%x16, 4(%x29)  #1593 pc 18776
	slli	%x17, %x5, 2  #1593 pc 18780
	add	%x31, %x17, %x6  #1593 pc 18784
	lw	%x17, 0(%x31)  #1593 pc 18788
	addi	%x31, %x0, -1  #pc 18792
	beq	%x17, %x31, 12  #1594 pc 18796
	j	be_else.9410 #pc 18800
	nop #pc 18804
	ret #pc 18808
	nop #pc 18812
be_else.9410: #pc 18816
	sw	%x13, 0(%x2)  #1596 pc 18816
	sw	%x15, 4(%x2)  #1596 pc 18820
	sw	%x14, 8(%x2)  #1596 pc 18824
	sw	%x16, 12(%x2)  #1596 pc 18828
	sw	%x9, 16(%x2)  #1596 pc 18832
	sw	%x8, 20(%x2)  #1596 pc 18836
	sw	%x10, 24(%x2)  #1596 pc 18840
	sw	%x7, 28(%x2)  #1596 pc 18844
	sw	%x6, 32(%x2)  #1596 pc 18848
	sw	%x29, 36(%x2)  #1596 pc 18852
	sw	%x5, 40(%x2)  #1596 pc 18856
	sw	%x12, 44(%x2)  #1596 pc 18860
	sw	%x17, 48(%x2)  #1596 pc 18864
	addi	%x6, %x7, 0  #0 pc 18868
	addi	%x5, %x17, 0  #0 pc 18872
	addi	%x29, %x11, 0  #0 pc 18876
	addi	%x7, %x9, 0  #0 pc 18880
	sw	%x1, 52(%x2)  #1596 pc 18884
	lw	%x30, 0(%x29)  #1596 pc 18888
	addi	%x2, %x2, 56  #1596 pc 18892
	jalr	%x1, %x30, 0  #1596 pc 18896
	addi	%x2, %x2, -56  #1596 pc 18900
	lw	%x1, 52(%x2)  #1596 pc 18904
	beq	%x5, %x0, 12  #1597 pc 18908
	j	be_else.9412 #pc 18912
	nop #pc 18916
	lw	%x5, 48(%x2)  #1625 pc 18920
	slli	%x5, %x5, 2  #1625 pc 18924
	lw	%x6, 44(%x2)  #1625 pc 18928
	add	%x31, %x5, %x6  #1625 pc 18932
	lw	%x5, 0(%x31)  #1625 pc 18936
	sw	%x1, 52(%x2)  #1625 pc 18940
	addi	%x2, %x2, 56  #1625 pc 18944
	jal	%x1, o_isinvert.2694  #1625 pc 18948
	addi	%x2, %x2, -56  #1625 pc 18952
	lw	%x1, 52(%x2) #1625 pc 18956
	beq	%x5, %x0, 12  #1625 pc 18960
	j	be_else.9413 #pc 18964
	nop #pc 18968
	ret #pc 18972
	nop #pc 18976
be_else.9413: #pc 18980
	lw	%x5, 40(%x2)  #1626 pc 18980
	addi	%x5, %x5, 1  #1626 pc 18984
	lw	%x6, 32(%x2)  #1626 pc 18988
	lw	%x7, 28(%x2)  #1626 pc 18992
	lw	%x29, 36(%x2)  #1626 pc 18996
	lw	%x30, 0(%x29)  #1626 pc 19000
	jalr	%x0, %x30, 0  #1626 pc 19004
	nop #pc 19008
be_else.9412: #pc 19012
	lw	%x6, 24(%x2)  #1601 pc 19012
	flw	%f1, 0(%x6)  #1601 pc 19016
	fmv	%f0, l.6305  #0 pc 19020
	sw	%x5, 52(%x2)  #1603 pc 19024
	fsw	%f1, 56(%x2)  #1603 pc 19028
	sw	%x1, 64(%x2)  #1603 pc 19032
	addi	%x2, %x2, 68  #1603 pc 19036
	jal	%x1, fless.2546  #1603 pc 19040
	addi	%x2, %x2, -68  #1603 pc 19044
	lw	%x1, 64(%x2) #1603 pc 19048
	beq	%x5, %x0, 12  #1603 pc 19052
	j	be_else.9415 #pc 19056
	nop #pc 19060
	j	be_cont.9416 #pc 19064
	nop #pc 19068
be_else.9415: #pc 19072
	lw	%x5, 20(%x2)  #1604 pc 19072
	flw	%f1, 0(%x5)  #1604 pc 19076
	flw	%f0, 56(%x2)  #1604 pc 19080
	sw	%x1, 64(%x2)  #1604 pc 19084
	addi	%x2, %x2, 68  #1604 pc 19088
	jal	%x1, fless.2546  #1604 pc 19092
	addi	%x2, %x2, -68  #1604 pc 19096
	lw	%x1, 64(%x2) #1604 pc 19100
	beq	%x5, %x0, 12  #1604 pc 19104
	j	be_else.9417 #pc 19108
	nop #pc 19112
	j	be_cont.9418 #pc 19116
	nop #pc 19120
be_else.9417: #pc 19124
	fmv	%f0, l.6709  #0 pc 19124
	flw	%f1, 56(%x2)  #1606 pc 19128
	fadd	%f0, %f1, %f0  #1606 pc 19132
	lw	%x5, 28(%x2)  #1607 pc 19136
	flw	%f1, 0(%x5)  #1607 pc 19140
	fmul	%f1, %f1, %f0  #1607 pc 19144
	lw	%x6, 16(%x2)  #1607 pc 19148
	flw	%f2, 0(%x6)  #1607 pc 19152
	fadd	%f1, %f1, %f2  #1607 pc 19156
	flw	%f2, 4(%x5)  #1608 pc 19160
	fmul	%f2, %f2, %f0  #1608 pc 19164
	flw	%f3, 4(%x6)  #1608 pc 19168
	fadd	%f2, %f2, %f3  #1608 pc 19172
	flw	%f3, 8(%x5)  #1609 pc 19176
	fmul	%f3, %f3, %f0  #1609 pc 19180
	flw	%f4, 8(%x6)  #1609 pc 19184
	fadd	%f3, %f3, %f4  #1609 pc 19188
	addi	%x6, %x0, 0  #0 pc 19192
	lw	%x7, 32(%x2)  #1610 pc 19196
	lw	%x29, 12(%x2)  #1610 pc 19200
	fsw	%f3, 64(%x2)  #1610 pc 19204
	fsw	%f2, 72(%x2)  #1610 pc 19208
	fsw	%f1, 80(%x2)  #1610 pc 19212
	fsw	%f0, 88(%x2)  #1610 pc 19216
	addi	%x5, %x6, 0  #0 pc 19220
	addi	%x6, %x7, 0  #0 pc 19224
	fadd	%f0, %f1, %f30  #0 pc 19228
	fadd	%f1, %f2, %f30  #0 pc 19232
	fadd	%f2, %f3, %f30  #0 pc 19236
	sw	%x1, 96(%x2)  #1610 pc 19240
	lw	%x30, 0(%x29)  #1610 pc 19244
	addi	%x2, %x2, 100  #1610 pc 19248
	jalr	%x1, %x30, 0  #1610 pc 19252
	addi	%x2, %x2, -100  #1610 pc 19256
	lw	%x1, 96(%x2)  #1610 pc 19260
	beq	%x5, %x0, 12  #1610 pc 19264
	j	be_else.9419 #pc 19268
	nop #pc 19272
	j	be_cont.9420 #pc 19276
	nop #pc 19280
be_else.9419: #pc 19284
	lw	%x5, 20(%x2)  #1612 pc 19284
	flw	%f0, 88(%x2)  #1612 pc 19288
	fsw	%f0, 0(%x5)  #1612 pc 19292
	flw	%f0, 80(%x2)  #1613 pc 19296
	flw	%f1, 72(%x2)  #1613 pc 19300
	flw	%f2, 64(%x2)  #1613 pc 19304
	lw	%x5, 8(%x2)  #1613 pc 19308
	sw	%x1, 96(%x2)  #1613 pc 19312
	addi	%x2, %x2, 100  #1613 pc 19316
	jal	%x1, vecset.2650  #1613 pc 19320
	addi	%x2, %x2, -100  #1613 pc 19324
	lw	%x1, 96(%x2) #1613 pc 19328
	lw	%x5, 4(%x2)  #1614 pc 19332
	lw	%x6, 48(%x2)  #1614 pc 19336
	sw	%x6, 0(%x5)  #1614 pc 19340
	lw	%x5, 0(%x2)  #1615 pc 19344
	lw	%x6, 52(%x2)  #1615 pc 19348
	sw	%x6, 0(%x5)  #1615 pc 19352
be_cont.9420: #pc 19356
be_cont.9418: #pc 19356
be_cont.9416: #pc 19356
	lw	%x5, 40(%x2)  #1621 pc 19356
	addi	%x5, %x5, 1  #1621 pc 19360
	lw	%x6, 32(%x2)  #1621 pc 19364
	lw	%x7, 28(%x2)  #1621 pc 19368
	lw	%x29, 36(%x2)  #1621 pc 19372
	lw	%x30, 0(%x29)  #1621 pc 19376
	jalr	%x0, %x30, 0  #1621 pc 19380
	nop #pc 19384
solve_one_or_network.2924:  #pc 19388
	lw	%x8, 8(%x29)  #1634 pc 19388
	lw	%x9, 4(%x29)  #1634 pc 19392
	slli	%x10, %x5, 2  #1634 pc 19396
	add	%x31, %x10, %x6  #1634 pc 19400
	lw	%x10, 0(%x31)  #1634 pc 19404
	addi	%x31, %x0, -1  #pc 19408
	beq	%x10, %x31, 12  #1635 pc 19412
	j	be_else.9421 #pc 19416
	nop #pc 19420
	ret #pc 19424
	nop #pc 19428
be_else.9421: #pc 19432
	slli	%x10, %x10, 2  #1636 pc 19432
	add	%x31, %x10, %x9  #1636 pc 19436
	lw	%x9, 0(%x31)  #1636 pc 19440
	addi	%x10, %x0, 0  #0 pc 19444
	sw	%x7, 0(%x2)  #1637 pc 19448
	sw	%x6, 4(%x2)  #1637 pc 19452
	sw	%x29, 8(%x2)  #1637 pc 19456
	sw	%x5, 12(%x2)  #1637 pc 19460
	addi	%x6, %x9, 0  #0 pc 19464
	addi	%x5, %x10, 0  #0 pc 19468
	addi	%x29, %x8, 0  #0 pc 19472
	sw	%x1, 16(%x2)  #1637 pc 19476
	lw	%x30, 0(%x29)  #1637 pc 19480
	addi	%x2, %x2, 20  #1637 pc 19484
	jalr	%x1, %x30, 0  #1637 pc 19488
	addi	%x2, %x2, -20  #1637 pc 19492
	lw	%x1, 16(%x2)  #1637 pc 19496
	lw	%x5, 12(%x2)  #1638 pc 19500
	addi	%x5, %x5, 1  #1638 pc 19504
	lw	%x6, 4(%x2)  #1638 pc 19508
	lw	%x7, 0(%x2)  #1638 pc 19512
	lw	%x29, 8(%x2)  #1638 pc 19516
	lw	%x30, 0(%x29)  #1638 pc 19520
	jalr	%x0, %x30, 0  #1638 pc 19524
	nop #pc 19528
trace_or_matrix.2928:  #pc 19532
	lw	%x8, 20(%x29)  #1644 pc 19532
	lw	%x9, 16(%x29)  #1644 pc 19536
	lw	%x10, 12(%x29)  #1644 pc 19540
	lw	%x11, 8(%x29)  #1644 pc 19544
	lw	%x12, 4(%x29)  #1644 pc 19548
	slli	%x13, %x5, 2  #1644 pc 19552
	add	%x31, %x13, %x6  #1644 pc 19556
	lw	%x13, 0(%x31)  #1644 pc 19560
	lw	%x14, 0(%x13)  #1645 pc 19564
	addi	%x31, %x0, -1  #pc 19568
	beq	%x14, %x31, 12  #1646 pc 19572
	j	be_else.9423 #pc 19576
	nop #pc 19580
	ret #pc 19584
	nop #pc 19588
be_else.9423: #pc 19592
	sw	%x7, 0(%x2)  #1649 pc 19592
	sw	%x6, 4(%x2)  #1649 pc 19596
	sw	%x29, 8(%x2)  #1649 pc 19600
	sw	%x5, 12(%x2)  #1649 pc 19604
	addi	%x31, %x0, 99  #pc 19608
	beq	%x14, %x31, 12  #1649 pc 19612
	j	be_else.9425 #pc 19616
	nop #pc 19620
	addi	%x8, %x0, 1  #0 pc 19624
	addi	%x6, %x13, 0  #0 pc 19628
	addi	%x5, %x8, 0  #0 pc 19632
	addi	%x29, %x12, 0  #0 pc 19636
	sw	%x1, 16(%x2)  #1650 pc 19640
	lw	%x30, 0(%x29)  #1650 pc 19644
	addi	%x2, %x2, 20  #1650 pc 19648
	jalr	%x1, %x30, 0  #1650 pc 19652
	addi	%x2, %x2, -20  #1650 pc 19656
	lw	%x1, 16(%x2)  #1650 pc 19660
	j	be_cont.9426 #pc 19664
	nop #pc 19668
be_else.9425: #pc 19672
	sw	%x13, 16(%x2)  #1654 pc 19672
	sw	%x12, 20(%x2)  #1654 pc 19676
	sw	%x8, 24(%x2)  #1654 pc 19680
	sw	%x10, 28(%x2)  #1654 pc 19684
	addi	%x6, %x7, 0  #0 pc 19688
	addi	%x5, %x14, 0  #0 pc 19692
	addi	%x29, %x11, 0  #0 pc 19696
	addi	%x7, %x9, 0  #0 pc 19700
	sw	%x1, 32(%x2)  #1654 pc 19704
	lw	%x30, 0(%x29)  #1654 pc 19708
	addi	%x2, %x2, 36  #1654 pc 19712
	jalr	%x1, %x30, 0  #1654 pc 19716
	addi	%x2, %x2, -36  #1654 pc 19720
	lw	%x1, 32(%x2)  #1654 pc 19724
	beq	%x5, %x0, 12  #1655 pc 19728
	j	be_else.9427 #pc 19732
	nop #pc 19736
	j	be_cont.9428 #pc 19740
	nop #pc 19744
be_else.9427: #pc 19748
	lw	%x5, 28(%x2)  #1656 pc 19748
	flw	%f0, 0(%x5)  #1656 pc 19752
	lw	%x5, 24(%x2)  #1657 pc 19756
	flw	%f1, 0(%x5)  #1657 pc 19760
	sw	%x1, 32(%x2)  #1657 pc 19764
	addi	%x2, %x2, 36  #1657 pc 19768
	jal	%x1, fless.2546  #1657 pc 19772
	addi	%x2, %x2, -36  #1657 pc 19776
	lw	%x1, 32(%x2) #1657 pc 19780
	beq	%x5, %x0, 12  #1657 pc 19784
	j	be_else.9429 #pc 19788
	nop #pc 19792
	j	be_cont.9430 #pc 19796
	nop #pc 19800
be_else.9429: #pc 19804
	addi	%x5, %x0, 1  #0 pc 19804
	lw	%x6, 16(%x2)  #1658 pc 19808
	lw	%x7, 0(%x2)  #1658 pc 19812
	lw	%x29, 20(%x2)  #1658 pc 19816
	sw	%x1, 32(%x2)  #1658 pc 19820
	lw	%x30, 0(%x29)  #1658 pc 19824
	addi	%x2, %x2, 36  #1658 pc 19828
	jalr	%x1, %x30, 0  #1658 pc 19832
	addi	%x2, %x2, -36  #1658 pc 19836
	lw	%x1, 32(%x2)  #1658 pc 19840
be_cont.9430: #pc 19844
be_cont.9428: #pc 19844
be_cont.9426: #pc 19844
	lw	%x5, 12(%x2)  #1662 pc 19844
	addi	%x5, %x5, 1  #1662 pc 19848
	lw	%x6, 4(%x2)  #1662 pc 19852
	lw	%x7, 0(%x2)  #1662 pc 19856
	lw	%x29, 8(%x2)  #1662 pc 19860
	lw	%x30, 0(%x29)  #1662 pc 19864
	jalr	%x0, %x30, 0  #1662 pc 19868
	nop #pc 19872
judge_intersection.2932:  #pc 19876
	lw	%x6, 12(%x29)  #0 pc 19876
	lw	%x7, 8(%x29)  #0 pc 19880
	lw	%x8, 4(%x29)  #0 pc 19884
	fmv	%f0, l.6746  #0 pc 19888
	fsw	%f0, 0(%x7)  #1671 pc 19892
	addi	%x9, %x0, 0  #0 pc 19896
	lw	%x8, 0(%x8)  #1672 pc 19900
	sw	%x7, 0(%x2)  #1672 pc 19904
	addi	%x7, %x5, 0  #0 pc 19908
	addi	%x29, %x6, 0  #0 pc 19912
	addi	%x6, %x8, 0  #0 pc 19916
	addi	%x5, %x9, 0  #0 pc 19920
	sw	%x1, 4(%x2)  #1672 pc 19924
	lw	%x30, 0(%x29)  #1672 pc 19928
	addi	%x2, %x2, 8  #1672 pc 19932
	jalr	%x1, %x30, 0  #1672 pc 19936
	addi	%x2, %x2, -8  #1672 pc 19940
	lw	%x1, 4(%x2)  #1672 pc 19944
	lw	%x5, 0(%x2)  #1673 pc 19948
	flw	%f1, 0(%x5)  #1673 pc 19952
	fmv	%f0, l.6723  #0 pc 19956
	fsw	%f1, 8(%x2)  #1675 pc 19960
	sw	%x1, 16(%x2)  #1675 pc 19964
	addi	%x2, %x2, 20  #1675 pc 19968
	jal	%x1, fless.2546  #1675 pc 19972
	addi	%x2, %x2, -20  #1675 pc 19976
	lw	%x1, 16(%x2) #1675 pc 19980
	beq	%x5, %x0, 12  #1675 pc 19984
	j	be_else.9432 #pc 19988
	nop #pc 19992
	addi	%x5, %x0, 0  #0 pc 19996
	ret #pc 20000
	nop #pc 20004
be_else.9432: #pc 20008
	fmv	%f1, l.6752  #0 pc 20008
	flw	%f0, 8(%x2)  #1676 pc 20012
	j	fless.2546  #1676 pc 20016
	nop #pc 20020
solve_each_element_fast.2934:  #pc 20024
	lw	%x8, 36(%x29)  #1686 pc 20024
	lw	%x9, 32(%x29)  #1686 pc 20028
	lw	%x10, 28(%x29)  #1686 pc 20032
	lw	%x11, 24(%x29)  #1686 pc 20036
	lw	%x12, 20(%x29)  #1686 pc 20040
	lw	%x13, 16(%x29)  #1686 pc 20044
	lw	%x14, 12(%x29)  #1686 pc 20048
	lw	%x15, 8(%x29)  #1686 pc 20052
	lw	%x16, 4(%x29)  #1686 pc 20056
	sw	%x13, 0(%x2)  #1686 pc 20060
	sw	%x15, 4(%x2)  #1686 pc 20064
	sw	%x14, 8(%x2)  #1686 pc 20068
	sw	%x16, 12(%x2)  #1686 pc 20072
	sw	%x9, 16(%x2)  #1686 pc 20076
	sw	%x8, 20(%x2)  #1686 pc 20080
	sw	%x11, 24(%x2)  #1686 pc 20084
	sw	%x29, 28(%x2)  #1686 pc 20088
	sw	%x12, 32(%x2)  #1686 pc 20092
	sw	%x7, 36(%x2)  #1686 pc 20096
	sw	%x10, 40(%x2)  #1686 pc 20100
	sw	%x6, 44(%x2)  #1686 pc 20104
	sw	%x5, 48(%x2)  #1686 pc 20108
	addi	%x5, %x7, 0  #0 pc 20112
	sw	%x1, 52(%x2)  #1686 pc 20116
	addi	%x2, %x2, 56  #1686 pc 20120
	jal	%x1, d_vec.2749  #1686 pc 20124
	addi	%x2, %x2, -56  #1686 pc 20128
	lw	%x1, 52(%x2) #1686 pc 20132
	lw	%x6, 48(%x2)  #1687 pc 20136
	slli	%x7, %x6, 2  #1687 pc 20140
	lw	%x8, 44(%x2)  #1687 pc 20144
	add	%x31, %x7, %x8  #1687 pc 20148
	lw	%x7, 0(%x31)  #1687 pc 20152
	addi	%x31, %x0, -1  #pc 20156
	beq	%x7, %x31, 12  #1688 pc 20160
	j	be_else.9433 #pc 20164
	nop #pc 20168
	ret #pc 20172
	nop #pc 20176
be_else.9433: #pc 20180
	lw	%x9, 36(%x2)  #1690 pc 20180
	lw	%x29, 40(%x2)  #1690 pc 20184
	sw	%x5, 52(%x2)  #1690 pc 20188
	sw	%x7, 56(%x2)  #1690 pc 20192
	addi	%x6, %x9, 0  #0 pc 20196
	addi	%x5, %x7, 0  #0 pc 20200
	sw	%x1, 60(%x2)  #1690 pc 20204
	lw	%x30, 0(%x29)  #1690 pc 20208
	addi	%x2, %x2, 64  #1690 pc 20212
	jalr	%x1, %x30, 0  #1690 pc 20216
	addi	%x2, %x2, -64  #1690 pc 20220
	lw	%x1, 60(%x2)  #1690 pc 20224
	beq	%x5, %x0, 12  #1691 pc 20228
	j	be_else.9435 #pc 20232
	nop #pc 20236
	lw	%x5, 56(%x2)  #1719 pc 20240
	slli	%x5, %x5, 2  #1719 pc 20244
	lw	%x6, 32(%x2)  #1719 pc 20248
	add	%x31, %x5, %x6  #1719 pc 20252
	lw	%x5, 0(%x31)  #1719 pc 20256
	sw	%x1, 60(%x2)  #1719 pc 20260
	addi	%x2, %x2, 64  #1719 pc 20264
	jal	%x1, o_isinvert.2694  #1719 pc 20268
	addi	%x2, %x2, -64  #1719 pc 20272
	lw	%x1, 60(%x2) #1719 pc 20276
	beq	%x5, %x0, 12  #1719 pc 20280
	j	be_else.9436 #pc 20284
	nop #pc 20288
	ret #pc 20292
	nop #pc 20296
be_else.9436: #pc 20300
	lw	%x5, 48(%x2)  #1720 pc 20300
	addi	%x5, %x5, 1  #1720 pc 20304
	lw	%x6, 44(%x2)  #1720 pc 20308
	lw	%x7, 36(%x2)  #1720 pc 20312
	lw	%x29, 28(%x2)  #1720 pc 20316
	lw	%x30, 0(%x29)  #1720 pc 20320
	jalr	%x0, %x30, 0  #1720 pc 20324
	nop #pc 20328
be_else.9435: #pc 20332
	lw	%x6, 24(%x2)  #1695 pc 20332
	flw	%f1, 0(%x6)  #1695 pc 20336
	fmv	%f0, l.6305  #0 pc 20340
	sw	%x5, 60(%x2)  #1697 pc 20344
	fsw	%f1, 64(%x2)  #1697 pc 20348
	sw	%x1, 72(%x2)  #1697 pc 20352
	addi	%x2, %x2, 76  #1697 pc 20356
	jal	%x1, fless.2546  #1697 pc 20360
	addi	%x2, %x2, -76  #1697 pc 20364
	lw	%x1, 72(%x2) #1697 pc 20368
	beq	%x5, %x0, 12  #1697 pc 20372
	j	be_else.9438 #pc 20376
	nop #pc 20380
	j	be_cont.9439 #pc 20384
	nop #pc 20388
be_else.9438: #pc 20392
	lw	%x5, 20(%x2)  #1698 pc 20392
	flw	%f1, 0(%x5)  #1698 pc 20396
	flw	%f0, 64(%x2)  #1698 pc 20400
	sw	%x1, 72(%x2)  #1698 pc 20404
	addi	%x2, %x2, 76  #1698 pc 20408
	jal	%x1, fless.2546  #1698 pc 20412
	addi	%x2, %x2, -76  #1698 pc 20416
	lw	%x1, 72(%x2) #1698 pc 20420
	beq	%x5, %x0, 12  #1698 pc 20424
	j	be_else.9440 #pc 20428
	nop #pc 20432
	j	be_cont.9441 #pc 20436
	nop #pc 20440
be_else.9440: #pc 20444
	fmv	%f0, l.6709  #0 pc 20444
	flw	%f1, 64(%x2)  #1700 pc 20448
	fadd	%f0, %f1, %f0  #1700 pc 20452
	lw	%x5, 52(%x2)  #1701 pc 20456
	flw	%f1, 0(%x5)  #1701 pc 20460
	fmul	%f1, %f1, %f0  #1701 pc 20464
	lw	%x6, 16(%x2)  #1701 pc 20468
	flw	%f2, 0(%x6)  #1701 pc 20472
	fadd	%f1, %f1, %f2  #1701 pc 20476
	flw	%f2, 4(%x5)  #1702 pc 20480
	fmul	%f2, %f2, %f0  #1702 pc 20484
	flw	%f3, 4(%x6)  #1702 pc 20488
	fadd	%f2, %f2, %f3  #1702 pc 20492
	flw	%f3, 8(%x5)  #1703 pc 20496
	fmul	%f3, %f3, %f0  #1703 pc 20500
	flw	%f4, 8(%x6)  #1703 pc 20504
	fadd	%f3, %f3, %f4  #1703 pc 20508
	addi	%x5, %x0, 0  #0 pc 20512
	lw	%x6, 44(%x2)  #1704 pc 20516
	lw	%x29, 12(%x2)  #1704 pc 20520
	fsw	%f3, 72(%x2)  #1704 pc 20524
	fsw	%f2, 80(%x2)  #1704 pc 20528
	fsw	%f1, 88(%x2)  #1704 pc 20532
	fsw	%f0, 96(%x2)  #1704 pc 20536
	fadd	%f0, %f1, %f30  #0 pc 20540
	fadd	%f1, %f2, %f30  #0 pc 20544
	fadd	%f2, %f3, %f30  #0 pc 20548
	sw	%x1, 104(%x2)  #1704 pc 20552
	lw	%x30, 0(%x29)  #1704 pc 20556
	addi	%x2, %x2, 108  #1704 pc 20560
	jalr	%x1, %x30, 0  #1704 pc 20564
	addi	%x2, %x2, -108  #1704 pc 20568
	lw	%x1, 104(%x2)  #1704 pc 20572
	beq	%x5, %x0, 12  #1704 pc 20576
	j	be_else.9442 #pc 20580
	nop #pc 20584
	j	be_cont.9443 #pc 20588
	nop #pc 20592
be_else.9442: #pc 20596
	lw	%x5, 20(%x2)  #1706 pc 20596
	flw	%f0, 96(%x2)  #1706 pc 20600
	fsw	%f0, 0(%x5)  #1706 pc 20604
	flw	%f0, 88(%x2)  #1707 pc 20608
	flw	%f1, 80(%x2)  #1707 pc 20612
	flw	%f2, 72(%x2)  #1707 pc 20616
	lw	%x5, 8(%x2)  #1707 pc 20620
	sw	%x1, 104(%x2)  #1707 pc 20624
	addi	%x2, %x2, 108  #1707 pc 20628
	jal	%x1, vecset.2650  #1707 pc 20632
	addi	%x2, %x2, -108  #1707 pc 20636
	lw	%x1, 104(%x2) #1707 pc 20640
	lw	%x5, 4(%x2)  #1708 pc 20644
	lw	%x6, 56(%x2)  #1708 pc 20648
	sw	%x6, 0(%x5)  #1708 pc 20652
	lw	%x5, 0(%x2)  #1709 pc 20656
	lw	%x6, 60(%x2)  #1709 pc 20660
	sw	%x6, 0(%x5)  #1709 pc 20664
be_cont.9443: #pc 20668
be_cont.9441: #pc 20668
be_cont.9439: #pc 20668
	lw	%x5, 48(%x2)  #1715 pc 20668
	addi	%x5, %x5, 1  #1715 pc 20672
	lw	%x6, 44(%x2)  #1715 pc 20676
	lw	%x7, 36(%x2)  #1715 pc 20680
	lw	%x29, 28(%x2)  #1715 pc 20684
	lw	%x30, 0(%x29)  #1715 pc 20688
	jalr	%x0, %x30, 0  #1715 pc 20692
	nop #pc 20696
solve_one_or_network_fast.2938:  #pc 20700
	lw	%x8, 8(%x29)  #1727 pc 20700
	lw	%x9, 4(%x29)  #1727 pc 20704
	slli	%x10, %x5, 2  #1727 pc 20708
	add	%x31, %x10, %x6  #1727 pc 20712
	lw	%x10, 0(%x31)  #1727 pc 20716
	addi	%x31, %x0, -1  #pc 20720
	beq	%x10, %x31, 12  #1728 pc 20724
	j	be_else.9444 #pc 20728
	nop #pc 20732
	ret #pc 20736
	nop #pc 20740
be_else.9444: #pc 20744
	slli	%x10, %x10, 2  #1729 pc 20744
	add	%x31, %x10, %x9  #1729 pc 20748
	lw	%x9, 0(%x31)  #1729 pc 20752
	addi	%x10, %x0, 0  #0 pc 20756
	sw	%x7, 0(%x2)  #1730 pc 20760
	sw	%x6, 4(%x2)  #1730 pc 20764
	sw	%x29, 8(%x2)  #1730 pc 20768
	sw	%x5, 12(%x2)  #1730 pc 20772
	addi	%x6, %x9, 0  #0 pc 20776
	addi	%x5, %x10, 0  #0 pc 20780
	addi	%x29, %x8, 0  #0 pc 20784
	sw	%x1, 16(%x2)  #1730 pc 20788
	lw	%x30, 0(%x29)  #1730 pc 20792
	addi	%x2, %x2, 20  #1730 pc 20796
	jalr	%x1, %x30, 0  #1730 pc 20800
	addi	%x2, %x2, -20  #1730 pc 20804
	lw	%x1, 16(%x2)  #1730 pc 20808
	lw	%x5, 12(%x2)  #1731 pc 20812
	addi	%x5, %x5, 1  #1731 pc 20816
	lw	%x6, 4(%x2)  #1731 pc 20820
	lw	%x7, 0(%x2)  #1731 pc 20824
	lw	%x29, 8(%x2)  #1731 pc 20828
	lw	%x30, 0(%x29)  #1731 pc 20832
	jalr	%x0, %x30, 0  #1731 pc 20836
	nop #pc 20840
trace_or_matrix_fast.2942:  #pc 20844
	lw	%x8, 16(%x29)  #1737 pc 20844
	lw	%x9, 12(%x29)  #1737 pc 20848
	lw	%x10, 8(%x29)  #1737 pc 20852
	lw	%x11, 4(%x29)  #1737 pc 20856
	slli	%x12, %x5, 2  #1737 pc 20860
	add	%x31, %x12, %x6  #1737 pc 20864
	lw	%x12, 0(%x31)  #1737 pc 20868
	lw	%x13, 0(%x12)  #1738 pc 20872
	addi	%x31, %x0, -1  #pc 20876
	beq	%x13, %x31, 12  #1739 pc 20880
	j	be_else.9446 #pc 20884
	nop #pc 20888
	ret #pc 20892
	nop #pc 20896
be_else.9446: #pc 20900
	sw	%x7, 0(%x2)  #1742 pc 20900
	sw	%x6, 4(%x2)  #1742 pc 20904
	sw	%x29, 8(%x2)  #1742 pc 20908
	sw	%x5, 12(%x2)  #1742 pc 20912
	addi	%x31, %x0, 99  #pc 20916
	beq	%x13, %x31, 12  #1742 pc 20920
	j	be_else.9448 #pc 20924
	nop #pc 20928
	addi	%x8, %x0, 1  #0 pc 20932
	addi	%x6, %x12, 0  #0 pc 20936
	addi	%x5, %x8, 0  #0 pc 20940
	addi	%x29, %x11, 0  #0 pc 20944
	sw	%x1, 16(%x2)  #1743 pc 20948
	lw	%x30, 0(%x29)  #1743 pc 20952
	addi	%x2, %x2, 20  #1743 pc 20956
	jalr	%x1, %x30, 0  #1743 pc 20960
	addi	%x2, %x2, -20  #1743 pc 20964
	lw	%x1, 16(%x2)  #1743 pc 20968
	j	be_cont.9449 #pc 20972
	nop #pc 20976
be_else.9448: #pc 20980
	sw	%x12, 16(%x2)  #1747 pc 20980
	sw	%x11, 20(%x2)  #1747 pc 20984
	sw	%x8, 24(%x2)  #1747 pc 20988
	sw	%x10, 28(%x2)  #1747 pc 20992
	addi	%x6, %x7, 0  #0 pc 20996
	addi	%x5, %x13, 0  #0 pc 21000
	addi	%x29, %x9, 0  #0 pc 21004
	sw	%x1, 32(%x2)  #1747 pc 21008
	lw	%x30, 0(%x29)  #1747 pc 21012
	addi	%x2, %x2, 36  #1747 pc 21016
	jalr	%x1, %x30, 0  #1747 pc 21020
	addi	%x2, %x2, -36  #1747 pc 21024
	lw	%x1, 32(%x2)  #1747 pc 21028
	beq	%x5, %x0, 12  #1748 pc 21032
	j	be_else.9450 #pc 21036
	nop #pc 21040
	j	be_cont.9451 #pc 21044
	nop #pc 21048
be_else.9450: #pc 21052
	lw	%x5, 28(%x2)  #1749 pc 21052
	flw	%f0, 0(%x5)  #1749 pc 21056
	lw	%x5, 24(%x2)  #1750 pc 21060
	flw	%f1, 0(%x5)  #1750 pc 21064
	sw	%x1, 32(%x2)  #1750 pc 21068
	addi	%x2, %x2, 36  #1750 pc 21072
	jal	%x1, fless.2546  #1750 pc 21076
	addi	%x2, %x2, -36  #1750 pc 21080
	lw	%x1, 32(%x2) #1750 pc 21084
	beq	%x5, %x0, 12  #1750 pc 21088
	j	be_else.9452 #pc 21092
	nop #pc 21096
	j	be_cont.9453 #pc 21100
	nop #pc 21104
be_else.9452: #pc 21108
	addi	%x5, %x0, 1  #0 pc 21108
	lw	%x6, 16(%x2)  #1751 pc 21112
	lw	%x7, 0(%x2)  #1751 pc 21116
	lw	%x29, 20(%x2)  #1751 pc 21120
	sw	%x1, 32(%x2)  #1751 pc 21124
	lw	%x30, 0(%x29)  #1751 pc 21128
	addi	%x2, %x2, 36  #1751 pc 21132
	jalr	%x1, %x30, 0  #1751 pc 21136
	addi	%x2, %x2, -36  #1751 pc 21140
	lw	%x1, 32(%x2)  #1751 pc 21144
be_cont.9453: #pc 21148
be_cont.9451: #pc 21148
be_cont.9449: #pc 21148
	lw	%x5, 12(%x2)  #1755 pc 21148
	addi	%x5, %x5, 1  #1755 pc 21152
	lw	%x6, 4(%x2)  #1755 pc 21156
	lw	%x7, 0(%x2)  #1755 pc 21160
	lw	%x29, 8(%x2)  #1755 pc 21164
	lw	%x30, 0(%x29)  #1755 pc 21168
	jalr	%x0, %x30, 0  #1755 pc 21172
	nop #pc 21176
judge_intersection_fast.2946:  #pc 21180
	lw	%x6, 12(%x29)  #0 pc 21180
	lw	%x7, 8(%x29)  #0 pc 21184
	lw	%x8, 4(%x29)  #0 pc 21188
	fmv	%f0, l.6746  #0 pc 21192
	fsw	%f0, 0(%x7)  #1762 pc 21196
	addi	%x9, %x0, 0  #0 pc 21200
	lw	%x8, 0(%x8)  #1763 pc 21204
	sw	%x7, 0(%x2)  #1763 pc 21208
	addi	%x7, %x5, 0  #0 pc 21212
	addi	%x29, %x6, 0  #0 pc 21216
	addi	%x6, %x8, 0  #0 pc 21220
	addi	%x5, %x9, 0  #0 pc 21224
	sw	%x1, 4(%x2)  #1763 pc 21228
	lw	%x30, 0(%x29)  #1763 pc 21232
	addi	%x2, %x2, 8  #1763 pc 21236
	jalr	%x1, %x30, 0  #1763 pc 21240
	addi	%x2, %x2, -8  #1763 pc 21244
	lw	%x1, 4(%x2)  #1763 pc 21248
	lw	%x5, 0(%x2)  #1764 pc 21252
	flw	%f1, 0(%x5)  #1764 pc 21256
	fmv	%f0, l.6723  #0 pc 21260
	fsw	%f1, 8(%x2)  #1766 pc 21264
	sw	%x1, 16(%x2)  #1766 pc 21268
	addi	%x2, %x2, 20  #1766 pc 21272
	jal	%x1, fless.2546  #1766 pc 21276
	addi	%x2, %x2, -20  #1766 pc 21280
	lw	%x1, 16(%x2) #1766 pc 21284
	beq	%x5, %x0, 12  #1766 pc 21288
	j	be_else.9455 #pc 21292
	nop #pc 21296
	addi	%x5, %x0, 0  #0 pc 21300
	ret #pc 21304
	nop #pc 21308
be_else.9455: #pc 21312
	fmv	%f1, l.6752  #0 pc 21312
	flw	%f0, 8(%x2)  #1767 pc 21316
	j	fless.2546  #1767 pc 21320
	nop #pc 21324
get_nvector_rect.2948:  #pc 21328
	lw	%x6, 8(%x29)  #0 pc 21328
	lw	%x7, 4(%x29)  #0 pc 21332
	lw	%x7, 0(%x7)  #1782 pc 21336
	sw	%x6, 0(%x2)  #1784 pc 21340
	sw	%x5, 4(%x2)  #1784 pc 21344
	sw	%x7, 8(%x2)  #1784 pc 21348
	addi	%x5, %x6, 0  #0 pc 21352
	sw	%x1, 12(%x2)  #1784 pc 21356
	addi	%x2, %x2, 16  #1784 pc 21360
	jal	%x1, vecbzero.2658  #1784 pc 21364
	addi	%x2, %x2, -16  #1784 pc 21368
	lw	%x1, 12(%x2) #1784 pc 21372
	lw	%x5, 8(%x2)  #1785 pc 21376
	addi	%x6, %x5, -1  #1785 pc 21380
	addi	%x5, %x5, -1  #1785 pc 21384
	slli	%x5, %x5, 2  #1785 pc 21388
	lw	%x7, 4(%x2)  #1785 pc 21392
	add	%x31, %x5, %x7  #1785 pc 21396
	flw	%f0, 0(%x31)  #1785 pc 21400
	sw	%x6, 12(%x2)  #1785 pc 21404
	sw	%x1, 16(%x2)  #1785 pc 21408
	addi	%x2, %x2, 20  #1785 pc 21412
	jal	%x1, sgn.2642  #1785 pc 21416
	addi	%x2, %x2, -20  #1785 pc 21420
	lw	%x1, 16(%x2) #1785 pc 21424
	sw	%x1, 16(%x2)  #1785 pc 21428
	addi	%x2, %x2, 20  #1785 pc 21432
	jal	%x1, fneg.2540  #1785 pc 21436
	addi	%x2, %x2, -20  #1785 pc 21440
	lw	%x1, 16(%x2) #1785 pc 21444
	lw	%x5, 12(%x2)  #1785 pc 21448
	slli	%x5, %x5, 2  #1785 pc 21452
	lw	%x6, 0(%x2)  #1785 pc 21456
	add	%x31, %x5, %x6  #1785 pc 21460
	fsw	%f0, 0(%x31) #1785 pc 21464
	ret #pc 21468
	nop #pc 21472
get_nvector_plane.2950:  #pc 21476
	lw	%x6, 4(%x29)  #0 pc 21476
	sw	%x5, 0(%x2)  #1791 pc 21480
	sw	%x6, 4(%x2)  #1791 pc 21484
	sw	%x1, 8(%x2)  #1791 pc 21488
	addi	%x2, %x2, 12  #1791 pc 21492
	jal	%x1, o_param_a.2698  #1791 pc 21496
	addi	%x2, %x2, -12  #1791 pc 21500
	lw	%x1, 8(%x2) #1791 pc 21504
	sw	%x1, 8(%x2)  #1791 pc 21508
	addi	%x2, %x2, 12  #1791 pc 21512
	jal	%x1, fneg.2540  #1791 pc 21516
	addi	%x2, %x2, -12  #1791 pc 21520
	lw	%x1, 8(%x2) #1791 pc 21524
	lw	%x5, 4(%x2)  #1791 pc 21528
	fsw	%f0, 0(%x5)  #1791 pc 21532
	lw	%x6, 0(%x2)  #1792 pc 21536
	addi	%x5, %x6, 0  #0 pc 21540
	sw	%x1, 8(%x2)  #1792 pc 21544
	addi	%x2, %x2, 12  #1792 pc 21548
	jal	%x1, o_param_b.2700  #1792 pc 21552
	addi	%x2, %x2, -12  #1792 pc 21556
	lw	%x1, 8(%x2) #1792 pc 21560
	sw	%x1, 8(%x2)  #1792 pc 21564
	addi	%x2, %x2, 12  #1792 pc 21568
	jal	%x1, fneg.2540  #1792 pc 21572
	addi	%x2, %x2, -12  #1792 pc 21576
	lw	%x1, 8(%x2) #1792 pc 21580
	lw	%x5, 4(%x2)  #1792 pc 21584
	fsw	%f0, 4(%x5)  #1792 pc 21588
	lw	%x6, 0(%x2)  #1793 pc 21592
	addi	%x5, %x6, 0  #0 pc 21596
	sw	%x1, 8(%x2)  #1793 pc 21600
	addi	%x2, %x2, 12  #1793 pc 21604
	jal	%x1, o_param_c.2702  #1793 pc 21608
	addi	%x2, %x2, -12  #1793 pc 21612
	lw	%x1, 8(%x2) #1793 pc 21616
	sw	%x1, 8(%x2)  #1793 pc 21620
	addi	%x2, %x2, 12  #1793 pc 21624
	jal	%x1, fneg.2540  #1793 pc 21628
	addi	%x2, %x2, -12  #1793 pc 21632
	lw	%x1, 8(%x2) #1793 pc 21636
	lw	%x5, 4(%x2)  #1793 pc 21640
	fsw	%f0, 8(%x5)  #1793 pc 21644
	ret #pc 21648
	nop #pc 21652
get_nvector_second.2952:  #pc 21656
	lw	%x6, 8(%x29)  #0 pc 21656
	lw	%x7, 4(%x29)  #0 pc 21660
	flw	%f0, 0(%x7)  #1798 pc 21664
	sw	%x6, 0(%x2)  #1798 pc 21668
	sw	%x5, 4(%x2)  #1798 pc 21672
	sw	%x7, 8(%x2)  #1798 pc 21676
	fsw	%f0, 16(%x2)  #1798 pc 21680
	sw	%x1, 24(%x2)  #1798 pc 21684
	addi	%x2, %x2, 28  #1798 pc 21688
	jal	%x1, o_param_x.2706  #1798 pc 21692
	addi	%x2, %x2, -28  #1798 pc 21696
	lw	%x1, 24(%x2) #1798 pc 21700
	flw	%f1, 16(%x2)  #1798 pc 21704
	fsub	%f0, %f1, %f0  #1798 pc 21708
	lw	%x5, 8(%x2)  #1799 pc 21712
	flw	%f1, 4(%x5)  #1799 pc 21716
	lw	%x6, 4(%x2)  #1799 pc 21720
	fsw	%f0, 24(%x2)  #1799 pc 21724
	fsw	%f1, 32(%x2)  #1799 pc 21728
	addi	%x5, %x6, 0  #0 pc 21732
	sw	%x1, 40(%x2)  #1799 pc 21736
	addi	%x2, %x2, 44  #1799 pc 21740
	jal	%x1, o_param_y.2708  #1799 pc 21744
	addi	%x2, %x2, -44  #1799 pc 21748
	lw	%x1, 40(%x2) #1799 pc 21752
	flw	%f1, 32(%x2)  #1799 pc 21756
	fsub	%f0, %f1, %f0  #1799 pc 21760
	lw	%x5, 8(%x2)  #1800 pc 21764
	flw	%f1, 8(%x5)  #1800 pc 21768
	lw	%x5, 4(%x2)  #1800 pc 21772
	fsw	%f0, 40(%x2)  #1800 pc 21776
	fsw	%f1, 48(%x2)  #1800 pc 21780
	sw	%x1, 56(%x2)  #1800 pc 21784
	addi	%x2, %x2, 60  #1800 pc 21788
	jal	%x1, o_param_z.2710  #1800 pc 21792
	addi	%x2, %x2, -60  #1800 pc 21796
	lw	%x1, 56(%x2) #1800 pc 21800
	flw	%f1, 48(%x2)  #1800 pc 21804
	fsub	%f0, %f1, %f0  #1800 pc 21808
	lw	%x5, 4(%x2)  #1802 pc 21812
	fsw	%f0, 56(%x2)  #1802 pc 21816
	sw	%x1, 64(%x2)  #1802 pc 21820
	addi	%x2, %x2, 68  #1802 pc 21824
	jal	%x1, o_param_a.2698  #1802 pc 21828
	addi	%x2, %x2, -68  #1802 pc 21832
	lw	%x1, 64(%x2) #1802 pc 21836
	flw	%f1, 24(%x2)  #1802 pc 21840
	fmul	%f0, %f1, %f0  #1802 pc 21844
	lw	%x5, 4(%x2)  #1803 pc 21848
	fsw	%f0, 64(%x2)  #1803 pc 21852
	sw	%x1, 72(%x2)  #1803 pc 21856
	addi	%x2, %x2, 76  #1803 pc 21860
	jal	%x1, o_param_b.2700  #1803 pc 21864
	addi	%x2, %x2, -76  #1803 pc 21868
	lw	%x1, 72(%x2) #1803 pc 21872
	flw	%f1, 40(%x2)  #1803 pc 21876
	fmul	%f0, %f1, %f0  #1803 pc 21880
	lw	%x5, 4(%x2)  #1804 pc 21884
	fsw	%f0, 72(%x2)  #1804 pc 21888
	sw	%x1, 80(%x2)  #1804 pc 21892
	addi	%x2, %x2, 84  #1804 pc 21896
	jal	%x1, o_param_c.2702  #1804 pc 21900
	addi	%x2, %x2, -84  #1804 pc 21904
	lw	%x1, 80(%x2) #1804 pc 21908
	flw	%f1, 56(%x2)  #1804 pc 21912
	fmul	%f0, %f1, %f0  #1804 pc 21916
	lw	%x5, 4(%x2)  #1806 pc 21920
	fsw	%f0, 80(%x2)  #1806 pc 21924
	sw	%x1, 88(%x2)  #1806 pc 21928
	addi	%x2, %x2, 92  #1806 pc 21932
	jal	%x1, o_isrot.2696  #1806 pc 21936
	addi	%x2, %x2, -92  #1806 pc 21940
	lw	%x1, 88(%x2) #1806 pc 21944
	beq	%x5, %x0, 12  #1806 pc 21948
	j	be_else.9459 #pc 21952
	nop #pc 21956
	lw	%x5, 0(%x2)  #1807 pc 21960
	flw	%f0, 64(%x2)  #1807 pc 21964
	fsw	%f0, 0(%x5)  #1807 pc 21968
	flw	%f0, 72(%x2)  #1808 pc 21972
	fsw	%f0, 4(%x5)  #1808 pc 21976
	flw	%f0, 80(%x2)  #1809 pc 21980
	fsw	%f0, 8(%x5)  #1809 pc 21984
	j	be_cont.9460 #pc 21988
	nop #pc 21992
be_else.9459: #pc 21996
	lw	%x5, 4(%x2)  #1811 pc 21996
	sw	%x1, 88(%x2)  #1811 pc 22000
	addi	%x2, %x2, 92  #1811 pc 22004
	jal	%x1, o_param_r3.2726  #1811 pc 22008
	addi	%x2, %x2, -92  #1811 pc 22012
	lw	%x1, 88(%x2) #1811 pc 22016
	flw	%f1, 40(%x2)  #1811 pc 22020
	fmul	%f0, %f1, %f0  #1811 pc 22024
	lw	%x5, 4(%x2)  #1811 pc 22028
	fsw	%f0, 88(%x2)  #1811 pc 22032
	sw	%x1, 96(%x2)  #1811 pc 22036
	addi	%x2, %x2, 100  #1811 pc 22040
	jal	%x1, o_param_r2.2724  #1811 pc 22044
	addi	%x2, %x2, -100  #1811 pc 22048
	lw	%x1, 96(%x2) #1811 pc 22052
	flw	%f1, 56(%x2)  #1811 pc 22056
	fmul	%f0, %f1, %f0  #1811 pc 22060
	flw	%f2, 88(%x2)  #1811 pc 22064
	fadd	%f0, %f2, %f0  #1811 pc 22068
	sw	%x1, 96(%x2)  #1811 pc 22072
	addi	%x2, %x2, 100  #1811 pc 22076
	jal	%x1, fhalf.2544  #1811 pc 22080
	addi	%x2, %x2, -100  #1811 pc 22084
	lw	%x1, 96(%x2) #1811 pc 22088
	flw	%f1, 64(%x2)  #1811 pc 22092
	fadd	%f0, %f1, %f0  #1811 pc 22096
	lw	%x5, 0(%x2)  #1811 pc 22100
	fsw	%f0, 0(%x5)  #1811 pc 22104
	lw	%x6, 4(%x2)  #1812 pc 22108
	addi	%x5, %x6, 0  #0 pc 22112
	sw	%x1, 96(%x2)  #1812 pc 22116
	addi	%x2, %x2, 100  #1812 pc 22120
	jal	%x1, o_param_r3.2726  #1812 pc 22124
	addi	%x2, %x2, -100  #1812 pc 22128
	lw	%x1, 96(%x2) #1812 pc 22132
	flw	%f1, 24(%x2)  #1812 pc 22136
	fmul	%f0, %f1, %f0  #1812 pc 22140
	lw	%x5, 4(%x2)  #1812 pc 22144
	fsw	%f0, 96(%x2)  #1812 pc 22148
	sw	%x1, 104(%x2)  #1812 pc 22152
	addi	%x2, %x2, 108  #1812 pc 22156
	jal	%x1, o_param_r1.2722  #1812 pc 22160
	addi	%x2, %x2, -108  #1812 pc 22164
	lw	%x1, 104(%x2) #1812 pc 22168
	flw	%f1, 56(%x2)  #1812 pc 22172
	fmul	%f0, %f1, %f0  #1812 pc 22176
	flw	%f1, 96(%x2)  #1812 pc 22180
	fadd	%f0, %f1, %f0  #1812 pc 22184
	sw	%x1, 104(%x2)  #1812 pc 22188
	addi	%x2, %x2, 108  #1812 pc 22192
	jal	%x1, fhalf.2544  #1812 pc 22196
	addi	%x2, %x2, -108  #1812 pc 22200
	lw	%x1, 104(%x2) #1812 pc 22204
	flw	%f1, 72(%x2)  #1812 pc 22208
	fadd	%f0, %f1, %f0  #1812 pc 22212
	lw	%x5, 0(%x2)  #1812 pc 22216
	fsw	%f0, 4(%x5)  #1812 pc 22220
	lw	%x6, 4(%x2)  #1813 pc 22224
	addi	%x5, %x6, 0  #0 pc 22228
	sw	%x1, 104(%x2)  #1813 pc 22232
	addi	%x2, %x2, 108  #1813 pc 22236
	jal	%x1, o_param_r2.2724  #1813 pc 22240
	addi	%x2, %x2, -108  #1813 pc 22244
	lw	%x1, 104(%x2) #1813 pc 22248
	flw	%f1, 24(%x2)  #1813 pc 22252
	fmul	%f0, %f1, %f0  #1813 pc 22256
	lw	%x5, 4(%x2)  #1813 pc 22260
	fsw	%f0, 104(%x2)  #1813 pc 22264
	sw	%x1, 112(%x2)  #1813 pc 22268
	addi	%x2, %x2, 116  #1813 pc 22272
	jal	%x1, o_param_r1.2722  #1813 pc 22276
	addi	%x2, %x2, -116  #1813 pc 22280
	lw	%x1, 112(%x2) #1813 pc 22284
	flw	%f1, 40(%x2)  #1813 pc 22288
	fmul	%f0, %f1, %f0  #1813 pc 22292
	flw	%f1, 104(%x2)  #1813 pc 22296
	fadd	%f0, %f1, %f0  #1813 pc 22300
	sw	%x1, 112(%x2)  #1813 pc 22304
	addi	%x2, %x2, 116  #1813 pc 22308
	jal	%x1, fhalf.2544  #1813 pc 22312
	addi	%x2, %x2, -116  #1813 pc 22316
	lw	%x1, 112(%x2) #1813 pc 22320
	flw	%f1, 80(%x2)  #1813 pc 22324
	fadd	%f0, %f1, %f0  #1813 pc 22328
	lw	%x5, 0(%x2)  #1813 pc 22332
	fsw	%f0, 8(%x5)  #1813 pc 22336
be_cont.9460: #pc 22340
	lw	%x6, 4(%x2)  #1815 pc 22340
	addi	%x5, %x6, 0  #0 pc 22344
	sw	%x1, 112(%x2)  #1815 pc 22348
	addi	%x2, %x2, 116  #1815 pc 22352
	jal	%x1, o_isinvert.2694  #1815 pc 22356
	addi	%x2, %x2, -116  #1815 pc 22360
	lw	%x1, 112(%x2) #1815 pc 22364
	addi	%x6, %x5, 0  #1815 pc 22368
	lw	%x5, 0(%x2)  #1815 pc 22372
	j	vecunit_sgn.2663  #1815 pc 22376
	nop #pc 22380
get_nvector.2954:  #pc 22384
	lw	%x7, 12(%x29)  #1820 pc 22384
	lw	%x8, 8(%x29)  #1820 pc 22388
	lw	%x9, 4(%x29)  #1820 pc 22392
	sw	%x7, 0(%x2)  #1820 pc 22396
	sw	%x5, 4(%x2)  #1820 pc 22400
	sw	%x9, 8(%x2)  #1820 pc 22404
	sw	%x6, 12(%x2)  #1820 pc 22408
	sw	%x8, 16(%x2)  #1820 pc 22412
	sw	%x1, 20(%x2)  #1820 pc 22416
	addi	%x2, %x2, 24  #1820 pc 22420
	jal	%x1, o_form.2690  #1820 pc 22424
	addi	%x2, %x2, -24  #1820 pc 22428
	lw	%x1, 20(%x2) #1820 pc 22432
	addi	%x31, %x0, 1  #pc 22436
	beq	%x5, %x31, 12  #1821 pc 22440
	j	be_else.9461 #pc 22444
	nop #pc 22448
	lw	%x5, 12(%x2)  #1822 pc 22452
	lw	%x29, 16(%x2)  #1822 pc 22456
	lw	%x30, 0(%x29)  #1822 pc 22460
	jalr	%x0, %x30, 0  #1822 pc 22464
	nop #pc 22468
be_else.9461: #pc 22472
	addi	%x31, %x0, 2  #pc 22472
	beq	%x5, %x31, 12  #1823 pc 22476
	j	be_else.9462 #pc 22480
	nop #pc 22484
	lw	%x5, 4(%x2)  #1824 pc 22488
	lw	%x29, 8(%x2)  #1824 pc 22492
	lw	%x30, 0(%x29)  #1824 pc 22496
	jalr	%x0, %x30, 0  #1824 pc 22500
	nop #pc 22504
be_else.9462: #pc 22508
	lw	%x5, 4(%x2)  #1826 pc 22508
	lw	%x29, 0(%x2)  #1826 pc 22512
	lw	%x30, 0(%x29)  #1826 pc 22516
	jalr	%x0, %x30, 0  #1826 pc 22520
	nop #pc 22524
utexture.2957:  #pc 22528
	lw	%x7, 4(%x29)  #1836 pc 22528
	sw	%x6, 0(%x2)  #1836 pc 22532
	sw	%x7, 4(%x2)  #1836 pc 22536
	sw	%x5, 8(%x2)  #1836 pc 22540
	sw	%x1, 12(%x2)  #1836 pc 22544
	addi	%x2, %x2, 16  #1836 pc 22548
	jal	%x1, o_texturetype.2688  #1836 pc 22552
	addi	%x2, %x2, -16  #1836 pc 22556
	lw	%x1, 12(%x2) #1836 pc 22560
	lw	%x6, 8(%x2)  #1838 pc 22564
	sw	%x5, 12(%x2)  #1838 pc 22568
	addi	%x5, %x6, 0  #0 pc 22572
	sw	%x1, 16(%x2)  #1838 pc 22576
	addi	%x2, %x2, 20  #1838 pc 22580
	jal	%x1, o_color_red.2716  #1838 pc 22584
	addi	%x2, %x2, -20  #1838 pc 22588
	lw	%x1, 16(%x2) #1838 pc 22592
	lw	%x5, 4(%x2)  #1838 pc 22596
	fsw	%f0, 0(%x5)  #1838 pc 22600
	lw	%x6, 8(%x2)  #1839 pc 22604
	addi	%x5, %x6, 0  #0 pc 22608
	sw	%x1, 16(%x2)  #1839 pc 22612
	addi	%x2, %x2, 20  #1839 pc 22616
	jal	%x1, o_color_green.2718  #1839 pc 22620
	addi	%x2, %x2, -20  #1839 pc 22624
	lw	%x1, 16(%x2) #1839 pc 22628
	lw	%x5, 4(%x2)  #1839 pc 22632
	fsw	%f0, 4(%x5)  #1839 pc 22636
	lw	%x6, 8(%x2)  #1840 pc 22640
	addi	%x5, %x6, 0  #0 pc 22644
	sw	%x1, 16(%x2)  #1840 pc 22648
	addi	%x2, %x2, 20  #1840 pc 22652
	jal	%x1, o_color_blue.2720  #1840 pc 22656
	addi	%x2, %x2, -20  #1840 pc 22660
	lw	%x1, 16(%x2) #1840 pc 22664
	lw	%x5, 4(%x2)  #1840 pc 22668
	fsw	%f0, 8(%x5)  #1840 pc 22672
	lw	%x6, 12(%x2)  #1841 pc 22676
	addi	%x31, %x0, 1  #pc 22680
	beq	%x6, %x31, 12  #1841 pc 22684
	j	be_else.9463 #pc 22688
	nop #pc 22692
	lw	%x6, 0(%x2)  #1844 pc 22696
	flw	%f0, 0(%x6)  #1844 pc 22700
	lw	%x7, 8(%x2)  #1844 pc 22704
	fsw	%f0, 16(%x2)  #1844 pc 22708
	addi	%x5, %x7, 0  #0 pc 22712
	sw	%x1, 24(%x2)  #1844 pc 22716
	addi	%x2, %x2, 28  #1844 pc 22720
	jal	%x1, o_param_x.2706  #1844 pc 22724
	addi	%x2, %x2, -28  #1844 pc 22728
	lw	%x1, 24(%x2) #1844 pc 22732
	flw	%f1, 16(%x2)  #1844 pc 22736
	fsub	%f0, %f1, %f0  #1844 pc 22740
	fmv	%f1, l.6842  #0 pc 22744
	fmul	%f1, %f0, %f1  #1846 pc 22748
	fsw	%f0, 24(%x2)  #1846 pc 22752
	fadd	%f0, %f1, %f30  #0 pc 22756
	sw	%x1, 32(%x2)  #1846 pc 22760
	addi	%x2, %x2, 36  #1846 pc 22764
	jal	%x1, floor.2555  #1846 pc 22768
	addi	%x2, %x2, -36  #1846 pc 22772
	lw	%x1, 32(%x2) #1846 pc 22776
	fmv	%f1, l.6844  #0 pc 22780
	fmul	%f0, %f0, %f1  #1846 pc 22784
	flw	%f1, 24(%x2)  #1847 pc 22788
	fsub	%f0, %f1, %f0  #1847 pc 22792
	fmv	%f1, l.6345  #0 pc 22796
	sw	%x1, 32(%x2)  #1847 pc 22800
	addi	%x2, %x2, 36  #1847 pc 22804
	jal	%x1, fless.2546  #1847 pc 22808
	addi	%x2, %x2, -36  #1847 pc 22812
	lw	%x1, 32(%x2) #1847 pc 22816
	lw	%x6, 0(%x2)  #1849 pc 22820
	flw	%f0, 8(%x6)  #1849 pc 22824
	lw	%x6, 8(%x2)  #1849 pc 22828
	sw	%x5, 32(%x2)  #1849 pc 22832
	fsw	%f0, 40(%x2)  #1849 pc 22836
	addi	%x5, %x6, 0  #0 pc 22840
	sw	%x1, 48(%x2)  #1849 pc 22844
	addi	%x2, %x2, 52  #1849 pc 22848
	jal	%x1, o_param_z.2710  #1849 pc 22852
	addi	%x2, %x2, -52  #1849 pc 22856
	lw	%x1, 48(%x2) #1849 pc 22860
	flw	%f1, 40(%x2)  #1849 pc 22864
	fsub	%f0, %f1, %f0  #1849 pc 22868
	fmv	%f1, l.6842  #0 pc 22872
	fmul	%f1, %f0, %f1  #1851 pc 22876
	fsw	%f0, 48(%x2)  #1851 pc 22880
	fadd	%f0, %f1, %f30  #0 pc 22884
	sw	%x1, 56(%x2)  #1851 pc 22888
	addi	%x2, %x2, 60  #1851 pc 22892
	jal	%x1, floor.2555  #1851 pc 22896
	addi	%x2, %x2, -60  #1851 pc 22900
	lw	%x1, 56(%x2) #1851 pc 22904
	fmv	%f1, l.6844  #0 pc 22908
	fmul	%f0, %f0, %f1  #1851 pc 22912
	flw	%f1, 48(%x2)  #1852 pc 22916
	fsub	%f0, %f1, %f0  #1852 pc 22920
	fmv	%f1, l.6345  #0 pc 22924
	sw	%x1, 56(%x2)  #1852 pc 22928
	addi	%x2, %x2, 60  #1852 pc 22932
	jal	%x1, fless.2546  #1852 pc 22936
	addi	%x2, %x2, -60  #1852 pc 22940
	lw	%x1, 56(%x2) #1852 pc 22944
	lw	%x6, 32(%x2)  #1855 pc 22948
	beq	%x6, %x0, 12  #1855 pc 22952
	j	be_else.9465 #pc 22956
	nop #pc 22960
	beq	%x5, %x0, 12  #1857 pc 22964
	j	be_else.9467 #pc 22968
	nop #pc 22972
	fmv	%f0, l.6819  #0 pc 22976
	j	be_cont.9468 #pc 22980
	nop #pc 22984
be_else.9467: #pc 22988
	fmv	%f0, l.6305  #0 pc 22988
be_cont.9468: #pc 22992
	j	be_cont.9466 #pc 22992
	nop #pc 22996
be_else.9465: #pc 23000
	beq	%x5, %x0, 12  #1856 pc 23000
	j	be_else.9469 #pc 23004
	nop #pc 23008
	fmv	%f0, l.6305  #0 pc 23012
	j	be_cont.9470 #pc 23016
	nop #pc 23020
be_else.9469: #pc 23024
	fmv	%f0, l.6819  #0 pc 23024
be_cont.9470: #pc 23028
be_cont.9466: #pc 23028
	lw	%x5, 4(%x2)  #1854 pc 23028
	fsw	%f0, 4(%x5)  #1854 pc 23032
	ret #pc 23036
	nop #pc 23040
be_else.9463: #pc 23044
	addi	%x31, %x0, 2  #pc 23044
	beq	%x6, %x31, 12  #1859 pc 23048
	j	be_else.9472 #pc 23052
	nop #pc 23056
	lw	%x6, 0(%x2)  #1862 pc 23060
	flw	%f0, 4(%x6)  #1862 pc 23064
	fmv	%f1, l.6834  #0 pc 23068
	fmul	%f0, %f0, %f1  #1862 pc 23072
	sw	%x1, 56(%x2)  #1862 pc 23076
	addi	%x2, %x2, 60  #1862 pc 23080
	jal	%x1, sin.2549  #1862 pc 23084
	addi	%x2, %x2, -60  #1862 pc 23088
	lw	%x1, 56(%x2) #1862 pc 23092
	sw	%x1, 56(%x2)  #1862 pc 23096
	addi	%x2, %x2, 60  #1862 pc 23100
	jal	%x1, fsqr.2542  #1862 pc 23104
	addi	%x2, %x2, -60  #1862 pc 23108
	lw	%x1, 56(%x2) #1862 pc 23112
	fmv	%f1, l.6819  #0 pc 23116
	fmul	%f1, %f1, %f0  #1863 pc 23120
	lw	%x5, 4(%x2)  #1863 pc 23124
	fsw	%f1, 0(%x5)  #1863 pc 23128
	fmv	%f1, l.6819  #0 pc 23132
	fmv	%f2, l.6317  #0 pc 23136
	fsub	%f0, %f2, %f0  #1864 pc 23140
	fmul	%f0, %f1, %f0  #1864 pc 23144
	fsw	%f0, 4(%x5)  #1864 pc 23148
	ret #pc 23152
	nop #pc 23156
be_else.9472: #pc 23160
	addi	%x31, %x0, 3  #pc 23160
	beq	%x6, %x31, 12  #1866 pc 23164
	j	be_else.9474 #pc 23168
	nop #pc 23172
	lw	%x6, 0(%x2)  #1869 pc 23176
	flw	%f0, 0(%x6)  #1869 pc 23180
	lw	%x7, 8(%x2)  #1869 pc 23184
	fsw	%f0, 56(%x2)  #1869 pc 23188
	addi	%x5, %x7, 0  #0 pc 23192
	sw	%x1, 64(%x2)  #1869 pc 23196
	addi	%x2, %x2, 68  #1869 pc 23200
	jal	%x1, o_param_x.2706  #1869 pc 23204
	addi	%x2, %x2, -68  #1869 pc 23208
	lw	%x1, 64(%x2) #1869 pc 23212
	flw	%f1, 56(%x2)  #1869 pc 23216
	fsub	%f0, %f1, %f0  #1869 pc 23220
	lw	%x5, 0(%x2)  #1870 pc 23224
	flw	%f1, 8(%x5)  #1870 pc 23228
	lw	%x5, 8(%x2)  #1870 pc 23232
	fsw	%f0, 64(%x2)  #1870 pc 23236
	fsw	%f1, 72(%x2)  #1870 pc 23240
	sw	%x1, 80(%x2)  #1870 pc 23244
	addi	%x2, %x2, 84  #1870 pc 23248
	jal	%x1, o_param_z.2710  #1870 pc 23252
	addi	%x2, %x2, -84  #1870 pc 23256
	lw	%x1, 80(%x2) #1870 pc 23260
	flw	%f1, 72(%x2)  #1870 pc 23264
	fsub	%f0, %f1, %f0  #1870 pc 23268
	flw	%f1, 64(%x2)  #1871 pc 23272
	fsw	%f0, 80(%x2)  #1871 pc 23276
	fadd	%f0, %f1, %f30  #0 pc 23280
	sw	%x1, 88(%x2)  #1871 pc 23284
	addi	%x2, %x2, 92  #1871 pc 23288
	jal	%x1, fsqr.2542  #1871 pc 23292
	addi	%x2, %x2, -92  #1871 pc 23296
	lw	%x1, 88(%x2) #1871 pc 23300
	flw	%f1, 80(%x2)  #1871 pc 23304
	fsw	%f0, 88(%x2)  #1871 pc 23308
	fadd	%f0, %f1, %f30  #0 pc 23312
	sw	%x1, 96(%x2)  #1871 pc 23316
	addi	%x2, %x2, 100  #1871 pc 23320
	jal	%x1, fsqr.2542  #1871 pc 23324
	addi	%x2, %x2, -100  #1871 pc 23328
	lw	%x1, 96(%x2) #1871 pc 23332
	flw	%f1, 88(%x2)  #1871 pc 23336
	fadd	%f0, %f1, %f0  #1871 pc 23340
	fmv	%f1, l.6345  #0 pc 23344
	fdiv	%f0, %f0, %f1  #1871 pc 23348
	fsqrt	%f0, %f0  #1871 pc 23352
	fsw	%f0, 96(%x2)  #1872 pc 23356
	sw	%x1, 104(%x2)  #1872 pc 23360
	addi	%x2, %x2, 108  #1872 pc 23364
	jal	%x1, floor.2555  #1872 pc 23368
	addi	%x2, %x2, -108  #1872 pc 23372
	lw	%x1, 104(%x2) #1872 pc 23376
	flw	%f1, 96(%x2)  #1872 pc 23380
	fsub	%f0, %f1, %f0  #1872 pc 23384
	fmv	%f1, l.6807  #0 pc 23388
	fmul	%f0, %f0, %f1  #1872 pc 23392
	sw	%x1, 104(%x2)  #1873 pc 23396
	addi	%x2, %x2, 108  #1873 pc 23400
	jal	%x1, cos.2551  #1873 pc 23404
	addi	%x2, %x2, -108  #1873 pc 23408
	lw	%x1, 104(%x2) #1873 pc 23412
	sw	%x1, 104(%x2)  #1873 pc 23416
	addi	%x2, %x2, 108  #1873 pc 23420
	jal	%x1, fsqr.2542  #1873 pc 23424
	addi	%x2, %x2, -108  #1873 pc 23428
	lw	%x1, 104(%x2) #1873 pc 23432
	fmv	%f1, l.6819  #0 pc 23436
	fmul	%f1, %f0, %f1  #1874 pc 23440
	lw	%x5, 4(%x2)  #1874 pc 23444
	fsw	%f1, 4(%x5)  #1874 pc 23448
	fmv	%f1, l.6317  #0 pc 23452
	fsub	%f0, %f1, %f0  #1875 pc 23456
	fmv	%f1, l.6819  #0 pc 23460
	fmul	%f0, %f0, %f1  #1875 pc 23464
	fsw	%f0, 8(%x5)  #1875 pc 23468
	ret #pc 23472
	nop #pc 23476
be_else.9474: #pc 23480
	addi	%x31, %x0, 4  #pc 23480
	beq	%x6, %x31, 12  #1877 pc 23484
	j	be_else.9476 #pc 23488
	nop #pc 23492
	lw	%x6, 0(%x2)  #1879 pc 23496
	flw	%f0, 0(%x6)  #1879 pc 23500
	lw	%x7, 8(%x2)  #1879 pc 23504
	fsw	%f0, 104(%x2)  #1879 pc 23508
	addi	%x5, %x7, 0  #0 pc 23512
	sw	%x1, 112(%x2)  #1879 pc 23516
	addi	%x2, %x2, 116  #1879 pc 23520
	jal	%x1, o_param_x.2706  #1879 pc 23524
	addi	%x2, %x2, -116  #1879 pc 23528
	lw	%x1, 112(%x2) #1879 pc 23532
	flw	%f1, 104(%x2)  #1879 pc 23536
	fsub	%f0, %f1, %f0  #1879 pc 23540
	lw	%x5, 8(%x2)  #1879 pc 23544
	fsw	%f0, 112(%x2)  #1879 pc 23548
	sw	%x1, 120(%x2)  #1879 pc 23552
	addi	%x2, %x2, 124  #1879 pc 23556
	jal	%x1, o_param_a.2698  #1879 pc 23560
	addi	%x2, %x2, -124  #1879 pc 23564
	lw	%x1, 120(%x2) #1879 pc 23568
	fsqrt	%f0, %f0  #1879 pc 23572
	flw	%f1, 112(%x2)  #1879 pc 23576
	fmul	%f0, %f1, %f0  #1879 pc 23580
	lw	%x5, 0(%x2)  #1880 pc 23584
	flw	%f1, 8(%x5)  #1880 pc 23588
	lw	%x6, 8(%x2)  #1880 pc 23592
	fsw	%f0, 120(%x2)  #1880 pc 23596
	fsw	%f1, 128(%x2)  #1880 pc 23600
	addi	%x5, %x6, 0  #0 pc 23604
	sw	%x1, 136(%x2)  #1880 pc 23608
	addi	%x2, %x2, 140  #1880 pc 23612
	jal	%x1, o_param_z.2710  #1880 pc 23616
	addi	%x2, %x2, -140  #1880 pc 23620
	lw	%x1, 136(%x2) #1880 pc 23624
	flw	%f1, 128(%x2)  #1880 pc 23628
	fsub	%f0, %f1, %f0  #1880 pc 23632
	lw	%x5, 8(%x2)  #1880 pc 23636
	fsw	%f0, 136(%x2)  #1880 pc 23640
	sw	%x1, 144(%x2)  #1880 pc 23644
	addi	%x2, %x2, 148  #1880 pc 23648
	jal	%x1, o_param_c.2702  #1880 pc 23652
	addi	%x2, %x2, -148  #1880 pc 23656
	lw	%x1, 144(%x2) #1880 pc 23660
	fsqrt	%f0, %f0  #1880 pc 23664
	flw	%f1, 136(%x2)  #1880 pc 23668
	fmul	%f0, %f1, %f0  #1880 pc 23672
	flw	%f1, 120(%x2)  #1881 pc 23676
	fsw	%f0, 144(%x2)  #1881 pc 23680
	fadd	%f0, %f1, %f30  #0 pc 23684
	sw	%x1, 152(%x2)  #1881 pc 23688
	addi	%x2, %x2, 156  #1881 pc 23692
	jal	%x1, fsqr.2542  #1881 pc 23696
	addi	%x2, %x2, -156  #1881 pc 23700
	lw	%x1, 152(%x2) #1881 pc 23704
	flw	%f1, 144(%x2)  #1881 pc 23708
	fsw	%f0, 152(%x2)  #1881 pc 23712
	fadd	%f0, %f1, %f30  #0 pc 23716
	sw	%x1, 160(%x2)  #1881 pc 23720
	addi	%x2, %x2, 164  #1881 pc 23724
	jal	%x1, fsqr.2542  #1881 pc 23728
	addi	%x2, %x2, -164  #1881 pc 23732
	lw	%x1, 160(%x2) #1881 pc 23736
	flw	%f1, 152(%x2)  #1881 pc 23740
	fadd	%f0, %f1, %f0  #1881 pc 23744
	flw	%f1, 120(%x2)  #1883 pc 23748
	fabs	%f2, %f1  #1883 pc 23752
	fmv	%f3, l.6801  #0 pc 23756
	fsw	%f0, 160(%x2)  #1883 pc 23760
	fadd	%f1, %f3, %f30  #0 pc 23764
	fadd	%f0, %f2, %f30  #0 pc 23768
	sw	%x1, 168(%x2)  #1883 pc 23772
	addi	%x2, %x2, 172  #1883 pc 23776
	jal	%x1, fless.2546  #1883 pc 23780
	addi	%x2, %x2, -172  #1883 pc 23784
	lw	%x1, 168(%x2) #1883 pc 23788
	beq	%x5, %x0, 12  #1883 pc 23792
	j	be_else.9477 #pc 23796
	nop #pc 23800
	flw	%f0, 120(%x2)  #1886 pc 23804
	flw	%f1, 144(%x2)  #1886 pc 23808
	fdiv	%f0, %f1, %f0  #1886 pc 23812
	fabs	%f0, %f0  #1886 pc 23816
	sw	%x1, 168(%x2)  #1888 pc 23820
	addi	%x2, %x2, 172  #1888 pc 23824
	jal	%x1, atan.2553  #1888 pc 23828
	addi	%x2, %x2, -172  #1888 pc 23832
	lw	%x1, 168(%x2) #1888 pc 23836
	fmv	%f1, l.6805  #0 pc 23840
	fmul	%f0, %f0, %f1  #1888 pc 23844
	fmv	%f1, l.6807  #0 pc 23848
	fdiv	%f0, %f0, %f1  #1888 pc 23852
	j	be_cont.9478 #pc 23856
	nop #pc 23860
be_else.9477: #pc 23864
	fmv	%f0, l.6803  #0 pc 23864
be_cont.9478: #pc 23868
	fsw	%f0, 168(%x2)  #1890 pc 23868
	sw	%x1, 176(%x2)  #1890 pc 23872
	addi	%x2, %x2, 180  #1890 pc 23876
	jal	%x1, floor.2555  #1890 pc 23880
	addi	%x2, %x2, -180  #1890 pc 23884
	lw	%x1, 176(%x2) #1890 pc 23888
	flw	%f1, 168(%x2)  #1890 pc 23892
	fsub	%f0, %f1, %f0  #1890 pc 23896
	lw	%x5, 0(%x2)  #1892 pc 23900
	flw	%f1, 4(%x5)  #1892 pc 23904
	lw	%x5, 8(%x2)  #1892 pc 23908
	fsw	%f0, 176(%x2)  #1892 pc 23912
	fsw	%f1, 184(%x2)  #1892 pc 23916
	sw	%x1, 192(%x2)  #1892 pc 23920
	addi	%x2, %x2, 196  #1892 pc 23924
	jal	%x1, o_param_y.2708  #1892 pc 23928
	addi	%x2, %x2, -196  #1892 pc 23932
	lw	%x1, 192(%x2) #1892 pc 23936
	flw	%f1, 184(%x2)  #1892 pc 23940
	fsub	%f0, %f1, %f0  #1892 pc 23944
	lw	%x5, 8(%x2)  #1892 pc 23948
	fsw	%f0, 192(%x2)  #1892 pc 23952
	sw	%x1, 200(%x2)  #1892 pc 23956
	addi	%x2, %x2, 204  #1892 pc 23960
	jal	%x1, o_param_b.2700  #1892 pc 23964
	addi	%x2, %x2, -204  #1892 pc 23968
	lw	%x1, 200(%x2) #1892 pc 23972
	fsqrt	%f0, %f0  #1892 pc 23976
	flw	%f1, 192(%x2)  #1892 pc 23980
	fmul	%f0, %f1, %f0  #1892 pc 23984
	flw	%f1, 160(%x2)  #1894 pc 23988
	fabs	%f2, %f1  #1894 pc 23992
	fmv	%f3, l.6801  #0 pc 23996
	fsw	%f0, 200(%x2)  #1894 pc 24000
	fadd	%f1, %f3, %f30  #0 pc 24004
	fadd	%f0, %f2, %f30  #0 pc 24008
	sw	%x1, 208(%x2)  #1894 pc 24012
	addi	%x2, %x2, 212  #1894 pc 24016
	jal	%x1, fless.2546  #1894 pc 24020
	addi	%x2, %x2, -212  #1894 pc 24024
	lw	%x1, 208(%x2) #1894 pc 24028
	beq	%x5, %x0, 12  #1894 pc 24032
	j	be_else.9479 #pc 24036
	nop #pc 24040
	flw	%f0, 160(%x2)  #1897 pc 24044
	flw	%f1, 200(%x2)  #1897 pc 24048
	fdiv	%f0, %f1, %f0  #1897 pc 24052
	fabs	%f0, %f0  #1897 pc 24056
	sw	%x1, 208(%x2)  #1898 pc 24060
	addi	%x2, %x2, 212  #1898 pc 24064
	jal	%x1, atan.2553  #1898 pc 24068
	addi	%x2, %x2, -212  #1898 pc 24072
	lw	%x1, 208(%x2) #1898 pc 24076
	fmv	%f1, l.6805  #0 pc 24080
	fmul	%f0, %f0, %f1  #1898 pc 24084
	fmv	%f1, l.6807  #0 pc 24088
	fdiv	%f0, %f0, %f1  #1898 pc 24092
	j	be_cont.9480 #pc 24096
	nop #pc 24100
be_else.9479: #pc 24104
	fmv	%f0, l.6803  #0 pc 24104
be_cont.9480: #pc 24108
	fsw	%f0, 208(%x2)  #1900 pc 24108
	sw	%x1, 216(%x2)  #1900 pc 24112
	addi	%x2, %x2, 220  #1900 pc 24116
	jal	%x1, floor.2555  #1900 pc 24120
	addi	%x2, %x2, -220  #1900 pc 24124
	lw	%x1, 216(%x2) #1900 pc 24128
	flw	%f1, 208(%x2)  #1900 pc 24132
	fsub	%f0, %f1, %f0  #1900 pc 24136
	fmv	%f1, l.6814  #0 pc 24140
	fmv	%f2, l.6309  #0 pc 24144
	flw	%f3, 176(%x2)  #1901 pc 24148
	fsub	%f2, %f2, %f3  #1901 pc 24152
	fsw	%f0, 216(%x2)  #1901 pc 24156
	fsw	%f1, 224(%x2)  #1901 pc 24160
	fadd	%f0, %f2, %f30  #0 pc 24164
	sw	%x1, 232(%x2)  #1901 pc 24168
	addi	%x2, %x2, 236  #1901 pc 24172
	jal	%x1, fsqr.2542  #1901 pc 24176
	addi	%x2, %x2, -236  #1901 pc 24180
	lw	%x1, 232(%x2) #1901 pc 24184
	flw	%f1, 224(%x2)  #1901 pc 24188
	fsub	%f0, %f1, %f0  #1901 pc 24192
	fmv	%f1, l.6309  #0 pc 24196
	flw	%f2, 216(%x2)  #1901 pc 24200
	fsub	%f1, %f1, %f2  #1901 pc 24204
	fsw	%f0, 232(%x2)  #1901 pc 24208
	fadd	%f0, %f1, %f30  #0 pc 24212
	sw	%x1, 240(%x2)  #1901 pc 24216
	addi	%x2, %x2, 244  #1901 pc 24220
	jal	%x1, fsqr.2542  #1901 pc 24224
	addi	%x2, %x2, -244  #1901 pc 24228
	lw	%x1, 240(%x2) #1901 pc 24232
	flw	%f1, 232(%x2)  #1901 pc 24236
	fsub	%f0, %f1, %f0  #1901 pc 24240
	fsw	%f0, 240(%x2)  #1902 pc 24244
	sw	%x1, 248(%x2)  #1902 pc 24248
	addi	%x2, %x2, 252  #1902 pc 24252
	jal	%x1, fisneg.2538  #1902 pc 24256
	addi	%x2, %x2, -252  #1902 pc 24260
	lw	%x1, 248(%x2) #1902 pc 24264
	beq	%x5, %x0, 12  #1902 pc 24268
	j	be_else.9481 #pc 24272
	nop #pc 24276
	flw	%f0, 240(%x2)  #1902 pc 24280
	j	be_cont.9482 #pc 24284
	nop #pc 24288
be_else.9481: #pc 24292
	fmv	%f0, l.6305  #0 pc 24292
be_cont.9482: #pc 24296
	fmv	%f1, l.6819  #0 pc 24296
	fmul	%f0, %f1, %f0  #1903 pc 24300
	fmv	%f1, l.6821  #0 pc 24304
	fdiv	%f0, %f0, %f1  #1903 pc 24308
	lw	%x5, 4(%x2)  #1903 pc 24312
	fsw	%f0, 8(%x5)  #1903 pc 24316
	ret #pc 24320
	nop #pc 24324
be_else.9476: #pc 24328
	ret #pc 24328
	nop #pc 24332
add_light.2960:  #pc 24336
	lw	%x5, 8(%x29)  #0 pc 24336
	lw	%x6, 4(%x29)  #0 pc 24340
	fsw	%f2, 0(%x2)  #1916 pc 24344
	fsw	%f1, 8(%x2)  #1916 pc 24348
	fsw	%f0, 16(%x2)  #1916 pc 24352
	sw	%x5, 24(%x2)  #1916 pc 24356
	sw	%x6, 28(%x2)  #1916 pc 24360
	sw	%x1, 32(%x2)  #1916 pc 24364
	addi	%x2, %x2, 36  #1916 pc 24368
	jal	%x1, fispos.2536  #1916 pc 24372
	addi	%x2, %x2, -36  #1916 pc 24376
	lw	%x1, 32(%x2) #1916 pc 24380
	beq	%x5, %x0, 12  #1916 pc 24384
	j	be_else.9485 #pc 24388
	nop #pc 24392
	j	be_cont.9486 #pc 24396
	nop #pc 24400
be_else.9485: #pc 24404
	flw	%f0, 16(%x2)  #1917 pc 24404
	lw	%x5, 28(%x2)  #1917 pc 24408
	lw	%x6, 24(%x2)  #1917 pc 24412
	sw	%x1, 32(%x2)  #1917 pc 24416
	addi	%x2, %x2, 36  #1917 pc 24420
	jal	%x1, vecaccum.2674  #1917 pc 24424
	addi	%x2, %x2, -36  #1917 pc 24428
	lw	%x1, 32(%x2) #1917 pc 24432
be_cont.9486: #pc 24436
	flw	%f0, 8(%x2)  #1921 pc 24436
	sw	%x1, 32(%x2)  #1921 pc 24440
	addi	%x2, %x2, 36  #1921 pc 24444
	jal	%x1, fispos.2536  #1921 pc 24448
	addi	%x2, %x2, -36  #1921 pc 24452
	lw	%x1, 32(%x2) #1921 pc 24456
	beq	%x5, %x0, 12  #1921 pc 24460
	j	be_else.9487 #pc 24464
	nop #pc 24468
	ret #pc 24472
	nop #pc 24476
be_else.9487: #pc 24480
	flw	%f0, 8(%x2)  #1922 pc 24480
	sw	%x1, 32(%x2)  #1922 pc 24484
	addi	%x2, %x2, 36  #1922 pc 24488
	jal	%x1, fsqr.2542  #1922 pc 24492
	addi	%x2, %x2, -36  #1922 pc 24496
	lw	%x1, 32(%x2) #1922 pc 24500
	sw	%x1, 32(%x2)  #1922 pc 24504
	addi	%x2, %x2, 36  #1922 pc 24508
	jal	%x1, fsqr.2542  #1922 pc 24512
	addi	%x2, %x2, -36  #1922 pc 24516
	lw	%x1, 32(%x2) #1922 pc 24520
	flw	%f1, 0(%x2)  #1922 pc 24524
	fmul	%f0, %f0, %f1  #1922 pc 24528
	lw	%x5, 28(%x2)  #1923 pc 24532
	flw	%f1, 0(%x5)  #1923 pc 24536
	fadd	%f1, %f1, %f0  #1923 pc 24540
	fsw	%f1, 0(%x5)  #1923 pc 24544
	flw	%f1, 4(%x5)  #1924 pc 24548
	fadd	%f1, %f1, %f0  #1924 pc 24552
	fsw	%f1, 4(%x5)  #1924 pc 24556
	flw	%f1, 8(%x5)  #1925 pc 24560
	fadd	%f0, %f1, %f0  #1925 pc 24564
	fsw	%f0, 8(%x5)  #1925 pc 24568
	ret #pc 24572
	nop #pc 24576
trace_reflections.2964:  #pc 24580
	lw	%x7, 32(%x29)  #0 pc 24580
	lw	%x8, 28(%x29)  #0 pc 24584
	lw	%x9, 24(%x29)  #0 pc 24588
	lw	%x10, 20(%x29)  #0 pc 24592
	lw	%x11, 16(%x29)  #0 pc 24596
	lw	%x12, 12(%x29)  #0 pc 24600
	lw	%x13, 8(%x29)  #0 pc 24604
	lw	%x14, 4(%x29)  #0 pc 24608
	bge	%x5, %x0, 12  #1932 pc 24612
	j	bge_else.9490 #pc 24616
	nop #pc 24620
	slli	%x15, %x5, 2  #1933 pc 24624
	add	%x31, %x15, %x8  #1933 pc 24628
	lw	%x8, 0(%x31)  #1933 pc 24632
	sw	%x29, 0(%x2)  #1934 pc 24636
	sw	%x5, 4(%x2)  #1934 pc 24640
	fsw	%f1, 8(%x2)  #1934 pc 24644
	sw	%x14, 16(%x2)  #1934 pc 24648
	sw	%x6, 20(%x2)  #1934 pc 24652
	fsw	%f0, 24(%x2)  #1934 pc 24656
	sw	%x10, 32(%x2)  #1934 pc 24660
	sw	%x7, 36(%x2)  #1934 pc 24664
	sw	%x9, 40(%x2)  #1934 pc 24668
	sw	%x8, 44(%x2)  #1934 pc 24672
	sw	%x12, 48(%x2)  #1934 pc 24676
	sw	%x13, 52(%x2)  #1934 pc 24680
	sw	%x11, 56(%x2)  #1934 pc 24684
	addi	%x5, %x8, 0  #0 pc 24688
	sw	%x1, 60(%x2)  #1934 pc 24692
	addi	%x2, %x2, 64  #1934 pc 24696
	jal	%x1, r_dvec.2755  #1934 pc 24700
	addi	%x2, %x2, -64  #1934 pc 24704
	lw	%x1, 60(%x2) #1934 pc 24708
	lw	%x29, 56(%x2)  #1937 pc 24712
	sw	%x5, 60(%x2)  #1937 pc 24716
	sw	%x1, 64(%x2)  #1937 pc 24720
	lw	%x30, 0(%x29)  #1937 pc 24724
	addi	%x2, %x2, 68  #1937 pc 24728
	jalr	%x1, %x30, 0  #1937 pc 24732
	addi	%x2, %x2, -68  #1937 pc 24736
	lw	%x1, 64(%x2)  #1937 pc 24740
	beq	%x5, %x0, 12  #1937 pc 24744
	j	be_else.9491 #pc 24748
	nop #pc 24752
	j	be_cont.9492 #pc 24756
	nop #pc 24760
be_else.9491: #pc 24764
	lw	%x5, 52(%x2)  #1938 pc 24764
	lw	%x5, 0(%x5)  #1938 pc 24768
	addi	%x6, %x0, 4  #0 pc 24772
	sw	%x1, 64(%x2)  #1938 pc 24776
	addi	%x2, %x2, 68  #1938 pc 24780
	jal	%x1, mul.2568  #1938 pc 24784
	addi	%x2, %x2, -68  #1938 pc 24788
	lw	%x1, 64(%x2) #1938 pc 24792
	lw	%x6, 48(%x2)  #1938 pc 24796
	lw	%x6, 0(%x6)  #1938 pc 24800
	add	%x5, %x5, %x6  #1938 pc 24804
	lw	%x6, 44(%x2)  #1939 pc 24808
	sw	%x5, 64(%x2)  #1939 pc 24812
	addi	%x5, %x6, 0  #0 pc 24816
	sw	%x1, 68(%x2)  #1939 pc 24820
	addi	%x2, %x2, 72  #1939 pc 24824
	jal	%x1, r_surface_id.2753  #1939 pc 24828
	addi	%x2, %x2, -72  #1939 pc 24832
	lw	%x1, 68(%x2) #1939 pc 24836
	lw	%x6, 64(%x2)  #1939 pc 24840
	beq	%x6, %x5, 12  #1939 pc 24844
	j	be_else.9493 #pc 24848
	nop #pc 24852
	addi	%x5, %x0, 0  #0 pc 24856
	lw	%x6, 40(%x2)  #1941 pc 24860
	lw	%x6, 0(%x6)  #1941 pc 24864
	lw	%x29, 36(%x2)  #1941 pc 24868
	sw	%x1, 68(%x2)  #1941 pc 24872
	lw	%x30, 0(%x29)  #1941 pc 24876
	addi	%x2, %x2, 72  #1941 pc 24880
	jalr	%x1, %x30, 0  #1941 pc 24884
	addi	%x2, %x2, -72  #1941 pc 24888
	lw	%x1, 68(%x2)  #1941 pc 24892
	beq	%x5, %x0, 12  #1941 pc 24896
	j	be_else.9495 #pc 24900
	nop #pc 24904
	lw	%x5, 60(%x2)  #1943 pc 24908
	sw	%x1, 68(%x2)  #1943 pc 24912
	addi	%x2, %x2, 72  #1943 pc 24916
	jal	%x1, d_vec.2749  #1943 pc 24920
	addi	%x2, %x2, -72  #1943 pc 24924
	lw	%x1, 68(%x2) #1943 pc 24928
	addi	%x6, %x5, 0  #1943 pc 24932
	lw	%x5, 32(%x2)  #1943 pc 24936
	sw	%x1, 68(%x2)  #1943 pc 24940
	addi	%x2, %x2, 72  #1943 pc 24944
	jal	%x1, veciprod.2666  #1943 pc 24948
	addi	%x2, %x2, -72  #1943 pc 24952
	lw	%x1, 68(%x2) #1943 pc 24956
	lw	%x5, 44(%x2)  #1944 pc 24960
	fsw	%f0, 72(%x2)  #1944 pc 24964
	sw	%x1, 80(%x2)  #1944 pc 24968
	addi	%x2, %x2, 84  #1944 pc 24972
	jal	%x1, r_bright.2757  #1944 pc 24976
	addi	%x2, %x2, -84  #1944 pc 24980
	lw	%x1, 80(%x2) #1944 pc 24984
	flw	%f1, 24(%x2)  #1945 pc 24988
	fmul	%f2, %f0, %f1  #1945 pc 24992
	flw	%f3, 72(%x2)  #1945 pc 24996
	fmul	%f2, %f2, %f3  #1945 pc 25000
	lw	%x5, 60(%x2)  #1946 pc 25004
	fsw	%f2, 80(%x2)  #1946 pc 25008
	fsw	%f0, 88(%x2)  #1946 pc 25012
	sw	%x1, 96(%x2)  #1946 pc 25016
	addi	%x2, %x2, 100  #1946 pc 25020
	jal	%x1, d_vec.2749  #1946 pc 25024
	addi	%x2, %x2, -100  #1946 pc 25028
	lw	%x1, 96(%x2) #1946 pc 25032
	addi	%x6, %x5, 0  #1946 pc 25036
	lw	%x5, 20(%x2)  #1946 pc 25040
	sw	%x1, 96(%x2)  #1946 pc 25044
	addi	%x2, %x2, 100  #1946 pc 25048
	jal	%x1, veciprod.2666  #1946 pc 25052
	addi	%x2, %x2, -100  #1946 pc 25056
	lw	%x1, 96(%x2) #1946 pc 25060
	flw	%f1, 88(%x2)  #1946 pc 25064
	fmul	%f1, %f1, %f0  #1946 pc 25068
	flw	%f0, 80(%x2)  #1947 pc 25072
	flw	%f2, 8(%x2)  #1947 pc 25076
	lw	%x29, 16(%x2)  #1947 pc 25080
	sw	%x1, 96(%x2)  #1947 pc 25084
	lw	%x30, 0(%x29)  #1947 pc 25088
	addi	%x2, %x2, 100  #1947 pc 25092
	jalr	%x1, %x30, 0  #1947 pc 25096
	addi	%x2, %x2, -100  #1947 pc 25100
	lw	%x1, 96(%x2)  #1947 pc 25104
	j	be_cont.9496 #pc 25108
	nop #pc 25112
be_else.9495: #pc 25116
be_cont.9496: #pc 25116
	j	be_cont.9494 #pc 25116
	nop #pc 25120
be_else.9493: #pc 25124
be_cont.9494: #pc 25124
be_cont.9492: #pc 25124
	lw	%x5, 4(%x2)  #1951 pc 25124
	addi	%x5, %x5, -1  #1951 pc 25128
	flw	%f0, 24(%x2)  #1951 pc 25132
	flw	%f1, 8(%x2)  #1951 pc 25136
	lw	%x6, 20(%x2)  #1951 pc 25140
	lw	%x29, 0(%x2)  #1951 pc 25144
	lw	%x30, 0(%x29)  #1951 pc 25148
	jalr	%x0, %x30, 0  #1951 pc 25152
	nop #pc 25156
bge_else.9490: #pc 25160
	ret #pc 25160
	nop #pc 25164
trace_ray.2969:  #pc 25168
	lw	%x8, 80(%x29)  #0 pc 25168
	lw	%x9, 76(%x29)  #0 pc 25172
	lw	%x10, 72(%x29)  #0 pc 25176
	lw	%x11, 68(%x29)  #0 pc 25180
	lw	%x12, 64(%x29)  #0 pc 25184
	lw	%x13, 60(%x29)  #0 pc 25188
	lw	%x14, 56(%x29)  #0 pc 25192
	lw	%x15, 52(%x29)  #0 pc 25196
	lw	%x16, 48(%x29)  #0 pc 25200
	lw	%x17, 44(%x29)  #0 pc 25204
	lw	%x18, 40(%x29)  #0 pc 25208
	lw	%x19, 36(%x29)  #0 pc 25212
	lw	%x20, 32(%x29)  #0 pc 25216
	lw	%x21, 28(%x29)  #0 pc 25220
	lw	%x22, 24(%x29)  #0 pc 25224
	lw	%x23, 20(%x29)  #0 pc 25228
	lw	%x24, 16(%x29)  #0 pc 25232
	lw	%x25, 12(%x29)  #0 pc 25236
	lw	%x26, 8(%x29)  #0 pc 25240
	lw	%x27, 4(%x29)  #0 pc 25244
	addi	%x31, %x0, 4  #pc 25248
	bge	%x31, %x5, 12  #1960 pc 25252
	j	ble_else.9499 #pc 25256
	nop #pc 25260
	sw	%x29, 0(%x2)  #1961 pc 25264
	fsw	%f1, 8(%x2)  #1961 pc 25268
	sw	%x10, 16(%x2)  #1961 pc 25272
	sw	%x9, 20(%x2)  #1961 pc 25276
	sw	%x19, 24(%x2)  #1961 pc 25280
	sw	%x14, 28(%x2)  #1961 pc 25284
	sw	%x27, 32(%x2)  #1961 pc 25288
	sw	%x13, 36(%x2)  #1961 pc 25292
	sw	%x16, 40(%x2)  #1961 pc 25296
	sw	%x18, 44(%x2)  #1961 pc 25300
	sw	%x11, 48(%x2)  #1961 pc 25304
	sw	%x7, 52(%x2)  #1961 pc 25308
	sw	%x22, 56(%x2)  #1961 pc 25312
	sw	%x8, 60(%x2)  #1961 pc 25316
	sw	%x23, 64(%x2)  #1961 pc 25320
	sw	%x12, 68(%x2)  #1961 pc 25324
	sw	%x25, 72(%x2)  #1961 pc 25328
	sw	%x17, 76(%x2)  #1961 pc 25332
	sw	%x24, 80(%x2)  #1961 pc 25336
	sw	%x15, 84(%x2)  #1961 pc 25340
	sw	%x26, 88(%x2)  #1961 pc 25344
	fsw	%f0, 96(%x2)  #1961 pc 25348
	sw	%x20, 104(%x2)  #1961 pc 25352
	sw	%x5, 108(%x2)  #1961 pc 25356
	sw	%x6, 112(%x2)  #1961 pc 25360
	sw	%x21, 116(%x2)  #1961 pc 25364
	addi	%x5, %x7, 0  #0 pc 25368
	sw	%x1, 120(%x2)  #1961 pc 25372
	addi	%x2, %x2, 124  #1961 pc 25376
	jal	%x1, p_surface_ids.2734  #1961 pc 25380
	addi	%x2, %x2, -124  #1961 pc 25384
	lw	%x1, 120(%x2) #1961 pc 25388
	lw	%x6, 112(%x2)  #1962 pc 25392
	lw	%x29, 116(%x2)  #1962 pc 25396
	sw	%x5, 120(%x2)  #1962 pc 25400
	addi	%x5, %x6, 0  #0 pc 25404
	sw	%x1, 124(%x2)  #1962 pc 25408
	lw	%x30, 0(%x29)  #1962 pc 25412
	addi	%x2, %x2, 128  #1962 pc 25416
	jalr	%x1, %x30, 0  #1962 pc 25420
	addi	%x2, %x2, -128  #1962 pc 25424
	lw	%x1, 124(%x2)  #1962 pc 25428
	beq	%x5, %x0, 12  #1962 pc 25432
	j	be_else.9502 #pc 25436
	nop #pc 25440
	addi	%x5, %x0, -1  #0 pc 25444
	lw	%x6, 108(%x2)  #2025 pc 25448
	slli	%x7, %x6, 2  #2025 pc 25452
	lw	%x8, 120(%x2)  #2025 pc 25456
	add	%x31, %x7, %x8  #2025 pc 25460
	sw	%x5, 0(%x31)  #2025 pc 25464
	beq	%x6, %x0, 12  #2027 pc 25468
	j	be_else.9503 #pc 25472
	nop #pc 25476
	ret #pc 25480
	nop #pc 25484
be_else.9503: #pc 25488
	lw	%x5, 112(%x2)  #2028 pc 25488
	lw	%x6, 104(%x2)  #2028 pc 25492
	sw	%x1, 124(%x2)  #2028 pc 25496
	addi	%x2, %x2, 128  #2028 pc 25500
	jal	%x1, veciprod.2666  #2028 pc 25504
	addi	%x2, %x2, -128  #2028 pc 25508
	lw	%x1, 124(%x2) #2028 pc 25512
	sw	%x1, 124(%x2)  #2028 pc 25516
	addi	%x2, %x2, 128  #2028 pc 25520
	jal	%x1, fneg.2540  #2028 pc 25524
	addi	%x2, %x2, -128  #2028 pc 25528
	lw	%x1, 124(%x2) #2028 pc 25532
	fsw	%f0, 128(%x2)  #2030 pc 25536
	sw	%x1, 136(%x2)  #2030 pc 25540
	addi	%x2, %x2, 140  #2030 pc 25544
	jal	%x1, fispos.2536  #2030 pc 25548
	addi	%x2, %x2, -140  #2030 pc 25552
	lw	%x1, 136(%x2) #2030 pc 25556
	beq	%x5, %x0, 12  #2030 pc 25560
	j	be_else.9506 #pc 25564
	nop #pc 25568
	ret #pc 25572
	nop #pc 25576
be_else.9506: #pc 25580
	flw	%f0, 128(%x2)  #2033 pc 25580
	sw	%x1, 136(%x2)  #2033 pc 25584
	addi	%x2, %x2, 140  #2033 pc 25588
	jal	%x1, fsqr.2542  #2033 pc 25592
	addi	%x2, %x2, -140  #2033 pc 25596
	lw	%x1, 136(%x2) #2033 pc 25600
	flw	%f1, 128(%x2)  #2033 pc 25604
	fmul	%f0, %f0, %f1  #2033 pc 25608
	flw	%f1, 96(%x2)  #2033 pc 25612
	fmul	%f0, %f0, %f1  #2033 pc 25616
	lw	%x5, 88(%x2)  #2033 pc 25620
	flw	%f1, 0(%x5)  #2033 pc 25624
	fmul	%f0, %f0, %f1  #2033 pc 25628
	lw	%x5, 84(%x2)  #2034 pc 25632
	flw	%f1, 0(%x5)  #2034 pc 25636
	fadd	%f1, %f1, %f0  #2034 pc 25640
	fsw	%f1, 0(%x5)  #2034 pc 25644
	flw	%f1, 4(%x5)  #2035 pc 25648
	fadd	%f1, %f1, %f0  #2035 pc 25652
	fsw	%f1, 4(%x5)  #2035 pc 25656
	flw	%f1, 8(%x5)  #2036 pc 25660
	fadd	%f0, %f1, %f0  #2036 pc 25664
	fsw	%f0, 8(%x5)  #2036 pc 25668
	ret #pc 25672
	nop #pc 25676
be_else.9502: #pc 25680
	lw	%x5, 80(%x2)  #1964 pc 25680
	lw	%x5, 0(%x5)  #1964 pc 25684
	slli	%x6, %x5, 2  #1965 pc 25688
	lw	%x7, 76(%x2)  #1965 pc 25692
	add	%x31, %x6, %x7  #1965 pc 25696
	lw	%x6, 0(%x31)  #1965 pc 25700
	sw	%x5, 136(%x2)  #1966 pc 25704
	sw	%x6, 140(%x2)  #1966 pc 25708
	addi	%x5, %x6, 0  #0 pc 25712
	sw	%x1, 144(%x2)  #1966 pc 25716
	addi	%x2, %x2, 148  #1966 pc 25720
	jal	%x1, o_reflectiontype.2692  #1966 pc 25724
	addi	%x2, %x2, -148  #1966 pc 25728
	lw	%x1, 144(%x2) #1966 pc 25732
	lw	%x6, 140(%x2)  #1967 pc 25736
	sw	%x5, 144(%x2)  #1967 pc 25740
	addi	%x5, %x6, 0  #0 pc 25744
	sw	%x1, 148(%x2)  #1967 pc 25748
	addi	%x2, %x2, 152  #1967 pc 25752
	jal	%x1, o_diffuse.2712  #1967 pc 25756
	addi	%x2, %x2, -152  #1967 pc 25760
	lw	%x1, 148(%x2) #1967 pc 25764
	flw	%f1, 96(%x2)  #1967 pc 25768
	fmul	%f0, %f0, %f1  #1967 pc 25772
	lw	%x5, 140(%x2)  #1969 pc 25776
	lw	%x6, 112(%x2)  #1969 pc 25780
	lw	%x29, 72(%x2)  #1969 pc 25784
	fsw	%f0, 152(%x2)  #1969 pc 25788
	sw	%x1, 160(%x2)  #1969 pc 25792
	lw	%x30, 0(%x29)  #1969 pc 25796
	addi	%x2, %x2, 164  #1969 pc 25800
	jalr	%x1, %x30, 0  #1969 pc 25804
	addi	%x2, %x2, -164  #1969 pc 25808
	lw	%x1, 160(%x2)  #1969 pc 25812
	lw	%x5, 68(%x2)  #1970 pc 25816
	lw	%x6, 64(%x2)  #1970 pc 25820
	sw	%x1, 160(%x2)  #1970 pc 25824
	addi	%x2, %x2, 164  #1970 pc 25828
	jal	%x1, veccpy.2660  #1970 pc 25832
	addi	%x2, %x2, -164  #1970 pc 25836
	lw	%x1, 160(%x2) #1970 pc 25840
	lw	%x5, 140(%x2)  #1971 pc 25844
	lw	%x6, 64(%x2)  #1971 pc 25848
	lw	%x29, 60(%x2)  #1971 pc 25852
	sw	%x1, 160(%x2)  #1971 pc 25856
	lw	%x30, 0(%x29)  #1971 pc 25860
	addi	%x2, %x2, 164  #1971 pc 25864
	jalr	%x1, %x30, 0  #1971 pc 25868
	addi	%x2, %x2, -164  #1971 pc 25872
	lw	%x1, 160(%x2)  #1971 pc 25876
	addi	%x6, %x0, 4  #0 pc 25880
	lw	%x5, 136(%x2)  #1974 pc 25884
	sw	%x1, 160(%x2)  #1974 pc 25888
	addi	%x2, %x2, 164  #1974 pc 25892
	jal	%x1, mul.2568  #1974 pc 25896
	addi	%x2, %x2, -164  #1974 pc 25900
	lw	%x1, 160(%x2) #1974 pc 25904
	lw	%x6, 56(%x2)  #1974 pc 25908
	lw	%x6, 0(%x6)  #1974 pc 25912
	add	%x5, %x5, %x6  #1974 pc 25916
	lw	%x6, 108(%x2)  #1974 pc 25920
	slli	%x7, %x6, 2  #1974 pc 25924
	lw	%x8, 120(%x2)  #1974 pc 25928
	add	%x31, %x7, %x8  #1974 pc 25932
	sw	%x5, 0(%x31)  #1974 pc 25936
	lw	%x5, 52(%x2)  #1975 pc 25940
	sw	%x1, 160(%x2)  #1975 pc 25944
	addi	%x2, %x2, 164  #1975 pc 25948
	jal	%x1, p_intersection_points.2732  #1975 pc 25952
	addi	%x2, %x2, -164  #1975 pc 25956
	lw	%x1, 160(%x2) #1975 pc 25960
	lw	%x6, 108(%x2)  #1976 pc 25964
	slli	%x7, %x6, 2  #1976 pc 25968
	add	%x31, %x7, %x5  #1976 pc 25972
	lw	%x5, 0(%x31)  #1976 pc 25976
	lw	%x7, 64(%x2)  #1976 pc 25980
	addi	%x6, %x7, 0  #0 pc 25984
	sw	%x1, 160(%x2)  #1976 pc 25988
	addi	%x2, %x2, 164  #1976 pc 25992
	jal	%x1, veccpy.2660  #1976 pc 25996
	addi	%x2, %x2, -164  #1976 pc 26000
	lw	%x1, 160(%x2) #1976 pc 26004
	lw	%x5, 52(%x2)  #1979 pc 26008
	sw	%x1, 160(%x2)  #1979 pc 26012
	addi	%x2, %x2, 164  #1979 pc 26016
	jal	%x1, p_calc_diffuse.2736  #1979 pc 26020
	addi	%x2, %x2, -164  #1979 pc 26024
	lw	%x1, 160(%x2) #1979 pc 26028
	lw	%x6, 140(%x2)  #1980 pc 26032
	sw	%x5, 160(%x2)  #1980 pc 26036
	addi	%x5, %x6, 0  #0 pc 26040
	sw	%x1, 164(%x2)  #1980 pc 26044
	addi	%x2, %x2, 168  #1980 pc 26048
	jal	%x1, o_diffuse.2712  #1980 pc 26052
	addi	%x2, %x2, -168  #1980 pc 26056
	lw	%x1, 164(%x2) #1980 pc 26060
	fmv	%f1, l.6309  #0 pc 26064
	sw	%x1, 164(%x2)  #1980 pc 26068
	addi	%x2, %x2, 168  #1980 pc 26072
	jal	%x1, fless.2546  #1980 pc 26076
	addi	%x2, %x2, -168  #1980 pc 26080
	lw	%x1, 164(%x2) #1980 pc 26084
	beq	%x5, %x0, 12  #1980 pc 26088
	j	be_else.9510 #pc 26092
	nop #pc 26096
	addi	%x5, %x0, 1  #0 pc 26100
	lw	%x6, 108(%x2)  #1983 pc 26104
	slli	%x7, %x6, 2  #1983 pc 26108
	lw	%x8, 160(%x2)  #1983 pc 26112
	add	%x31, %x7, %x8  #1983 pc 26116
	sw	%x5, 0(%x31)  #1983 pc 26120
	lw	%x5, 52(%x2)  #1984 pc 26124
	sw	%x1, 164(%x2)  #1984 pc 26128
	addi	%x2, %x2, 168  #1984 pc 26132
	jal	%x1, p_energy.2738  #1984 pc 26136
	addi	%x2, %x2, -168  #1984 pc 26140
	lw	%x1, 164(%x2) #1984 pc 26144
	lw	%x6, 108(%x2)  #1985 pc 26148
	slli	%x7, %x6, 2  #1985 pc 26152
	add	%x31, %x7, %x5  #1985 pc 26156
	lw	%x7, 0(%x31)  #1985 pc 26160
	lw	%x8, 48(%x2)  #1985 pc 26164
	sw	%x5, 164(%x2)  #1985 pc 26168
	addi	%x6, %x8, 0  #0 pc 26172
	addi	%x5, %x7, 0  #0 pc 26176
	sw	%x1, 168(%x2)  #1985 pc 26180
	addi	%x2, %x2, 172  #1985 pc 26184
	jal	%x1, veccpy.2660  #1985 pc 26188
	addi	%x2, %x2, -172  #1985 pc 26192
	lw	%x1, 168(%x2) #1985 pc 26196
	lw	%x5, 108(%x2)  #1986 pc 26200
	slli	%x6, %x5, 2  #1986 pc 26204
	lw	%x7, 164(%x2)  #1986 pc 26208
	add	%x31, %x6, %x7  #1986 pc 26212
	lw	%x6, 0(%x31)  #1986 pc 26216
	fmv	%f0, l.6876  #0 pc 26220
	flw	%f1, 152(%x2)  #1986 pc 26224
	fmul	%f0, %f0, %f1  #1986 pc 26228
	addi	%x5, %x6, 0  #0 pc 26232
	sw	%x1, 168(%x2)  #1986 pc 26236
	addi	%x2, %x2, 172  #1986 pc 26240
	jal	%x1, vecscale.2681  #1986 pc 26244
	addi	%x2, %x2, -172  #1986 pc 26248
	lw	%x1, 168(%x2) #1986 pc 26252
	lw	%x5, 52(%x2)  #1987 pc 26256
	sw	%x1, 168(%x2)  #1987 pc 26260
	addi	%x2, %x2, 172  #1987 pc 26264
	jal	%x1, p_nvectors.2747  #1987 pc 26268
	addi	%x2, %x2, -172  #1987 pc 26272
	lw	%x1, 168(%x2) #1987 pc 26276
	lw	%x6, 108(%x2)  #1988 pc 26280
	slli	%x7, %x6, 2  #1988 pc 26284
	add	%x31, %x7, %x5  #1988 pc 26288
	lw	%x5, 0(%x31)  #1988 pc 26292
	lw	%x7, 44(%x2)  #1988 pc 26296
	addi	%x6, %x7, 0  #0 pc 26300
	sw	%x1, 168(%x2)  #1988 pc 26304
	addi	%x2, %x2, 172  #1988 pc 26308
	jal	%x1, veccpy.2660  #1988 pc 26312
	addi	%x2, %x2, -172  #1988 pc 26316
	lw	%x1, 168(%x2) #1988 pc 26320
	j	be_cont.9511 #pc 26324
	nop #pc 26328
be_else.9510: #pc 26332
	addi	%x5, %x0, 0  #0 pc 26332
	lw	%x6, 108(%x2)  #1981 pc 26336
	slli	%x7, %x6, 2  #1981 pc 26340
	lw	%x8, 160(%x2)  #1981 pc 26344
	add	%x31, %x7, %x8  #1981 pc 26348
	sw	%x5, 0(%x31)  #1981 pc 26352
be_cont.9511: #pc 26356
	fmv	%f0, l.6879  #0 pc 26356
	lw	%x5, 112(%x2)  #1991 pc 26360
	lw	%x6, 44(%x2)  #1991 pc 26364
	fsw	%f0, 168(%x2)  #1991 pc 26368
	sw	%x1, 176(%x2)  #1991 pc 26372
	addi	%x2, %x2, 180  #1991 pc 26376
	jal	%x1, veciprod.2666  #1991 pc 26380
	addi	%x2, %x2, -180  #1991 pc 26384
	lw	%x1, 176(%x2) #1991 pc 26388
	flw	%f1, 168(%x2)  #1991 pc 26392
	fmul	%f0, %f1, %f0  #1991 pc 26396
	lw	%x5, 112(%x2)  #1993 pc 26400
	lw	%x6, 44(%x2)  #1993 pc 26404
	sw	%x1, 176(%x2)  #1993 pc 26408
	addi	%x2, %x2, 180  #1993 pc 26412
	jal	%x1, vecaccum.2674  #1993 pc 26416
	addi	%x2, %x2, -180  #1993 pc 26420
	lw	%x1, 176(%x2) #1993 pc 26424
	lw	%x5, 140(%x2)  #1995 pc 26428
	sw	%x1, 176(%x2)  #1995 pc 26432
	addi	%x2, %x2, 180  #1995 pc 26436
	jal	%x1, o_hilight.2714  #1995 pc 26440
	addi	%x2, %x2, -180  #1995 pc 26444
	lw	%x1, 176(%x2) #1995 pc 26448
	flw	%f1, 96(%x2)  #1995 pc 26452
	fmul	%f0, %f1, %f0  #1995 pc 26456
	addi	%x5, %x0, 0  #0 pc 26460
	lw	%x6, 40(%x2)  #1998 pc 26464
	lw	%x6, 0(%x6)  #1998 pc 26468
	lw	%x29, 36(%x2)  #1998 pc 26472
	fsw	%f0, 176(%x2)  #1998 pc 26476
	sw	%x1, 184(%x2)  #1998 pc 26480
	lw	%x30, 0(%x29)  #1998 pc 26484
	addi	%x2, %x2, 188  #1998 pc 26488
	jalr	%x1, %x30, 0  #1998 pc 26492
	addi	%x2, %x2, -188  #1998 pc 26496
	lw	%x1, 184(%x2)  #1998 pc 26500
	beq	%x5, %x0, 12  #1998 pc 26504
	j	be_else.9512 #pc 26508
	nop #pc 26512
	lw	%x5, 44(%x2)  #1999 pc 26516
	lw	%x6, 104(%x2)  #1999 pc 26520
	sw	%x1, 184(%x2)  #1999 pc 26524
	addi	%x2, %x2, 188  #1999 pc 26528
	jal	%x1, veciprod.2666  #1999 pc 26532
	addi	%x2, %x2, -188  #1999 pc 26536
	lw	%x1, 184(%x2) #1999 pc 26540
	sw	%x1, 184(%x2)  #1999 pc 26544
	addi	%x2, %x2, 188  #1999 pc 26548
	jal	%x1, fneg.2540  #1999 pc 26552
	addi	%x2, %x2, -188  #1999 pc 26556
	lw	%x1, 184(%x2) #1999 pc 26560
	flw	%f1, 152(%x2)  #1999 pc 26564
	fmul	%f0, %f0, %f1  #1999 pc 26568
	lw	%x5, 112(%x2)  #2000 pc 26572
	lw	%x6, 104(%x2)  #2000 pc 26576
	fsw	%f0, 184(%x2)  #2000 pc 26580
	sw	%x1, 192(%x2)  #2000 pc 26584
	addi	%x2, %x2, 196  #2000 pc 26588
	jal	%x1, veciprod.2666  #2000 pc 26592
	addi	%x2, %x2, -196  #2000 pc 26596
	lw	%x1, 192(%x2) #2000 pc 26600
	sw	%x1, 192(%x2)  #2000 pc 26604
	addi	%x2, %x2, 196  #2000 pc 26608
	jal	%x1, fneg.2540  #2000 pc 26612
	addi	%x2, %x2, -196  #2000 pc 26616
	lw	%x1, 192(%x2) #2000 pc 26620
	fadd	%f1, %f0, %f30  #2000 pc 26624
	flw	%f0, 184(%x2)  #2001 pc 26628
	flw	%f2, 176(%x2)  #2001 pc 26632
	lw	%x29, 32(%x2)  #2001 pc 26636
	sw	%x1, 192(%x2)  #2001 pc 26640
	lw	%x30, 0(%x29)  #2001 pc 26644
	addi	%x2, %x2, 196  #2001 pc 26648
	jalr	%x1, %x30, 0  #2001 pc 26652
	addi	%x2, %x2, -196  #2001 pc 26656
	lw	%x1, 192(%x2)  #2001 pc 26660
	j	be_cont.9513 #pc 26664
	nop #pc 26668
be_else.9512: #pc 26672
be_cont.9513: #pc 26672
	lw	%x5, 64(%x2)  #2005 pc 26672
	lw	%x29, 28(%x2)  #2005 pc 26676
	sw	%x1, 192(%x2)  #2005 pc 26680
	lw	%x30, 0(%x29)  #2005 pc 26684
	addi	%x2, %x2, 196  #2005 pc 26688
	jalr	%x1, %x30, 0  #2005 pc 26692
	addi	%x2, %x2, -196  #2005 pc 26696
	lw	%x1, 192(%x2)  #2005 pc 26700
	lw	%x5, 24(%x2)  #2006 pc 26704
	lw	%x5, 0(%x5)  #2006 pc 26708
	addi	%x5, %x5, -1  #2006 pc 26712
	flw	%f0, 152(%x2)  #2006 pc 26716
	flw	%f1, 176(%x2)  #2006 pc 26720
	lw	%x6, 112(%x2)  #2006 pc 26724
	lw	%x29, 20(%x2)  #2006 pc 26728
	sw	%x1, 192(%x2)  #2006 pc 26732
	lw	%x30, 0(%x29)  #2006 pc 26736
	addi	%x2, %x2, 196  #2006 pc 26740
	jalr	%x1, %x30, 0  #2006 pc 26744
	addi	%x2, %x2, -196  #2006 pc 26748
	lw	%x1, 192(%x2)  #2006 pc 26752
	fmv	%f0, l.6883  #0 pc 26756
	flw	%f1, 96(%x2)  #2009 pc 26760
	sw	%x1, 192(%x2)  #2009 pc 26764
	addi	%x2, %x2, 196  #2009 pc 26768
	jal	%x1, fless.2546  #2009 pc 26772
	addi	%x2, %x2, -196  #2009 pc 26776
	lw	%x1, 192(%x2) #2009 pc 26780
	beq	%x5, %x0, 12  #2009 pc 26784
	j	be_else.9514 #pc 26788
	nop #pc 26792
	ret #pc 26796
	nop #pc 26800
be_else.9514: #pc 26804
	lw	%x5, 108(%x2)  #2011 pc 26804
	addi	%x31, %x0, 4  #pc 26808
	bge	%x5, %x31, 12  #2011 pc 26812
	j	bge_else.9516 #pc 26816
	nop #pc 26820
	j	bge_cont.9517 #pc 26824
	nop #pc 26828
bge_else.9516: #pc 26832
	addi	%x6, %x5, 1  #2012 pc 26832
	addi	%x7, %x0, -1  #0 pc 26836
	slli	%x6, %x6, 2  #2012 pc 26840
	lw	%x8, 120(%x2)  #2012 pc 26844
	add	%x31, %x6, %x8  #2012 pc 26848
	sw	%x7, 0(%x31)  #2012 pc 26852
bge_cont.9517: #pc 26856
	lw	%x6, 144(%x2)  #2015 pc 26856
	addi	%x31, %x0, 2  #pc 26860
	beq	%x6, %x31, 12  #2015 pc 26864
	j	be_else.9518 #pc 26868
	nop #pc 26872
	fmv	%f0, l.6317  #0 pc 26876
	lw	%x6, 140(%x2)  #2016 pc 26880
	fsw	%f0, 192(%x2)  #2016 pc 26884
	addi	%x5, %x6, 0  #0 pc 26888
	sw	%x1, 200(%x2)  #2016 pc 26892
	addi	%x2, %x2, 204  #2016 pc 26896
	jal	%x1, o_diffuse.2712  #2016 pc 26900
	addi	%x2, %x2, -204  #2016 pc 26904
	lw	%x1, 200(%x2) #2016 pc 26908
	flw	%f1, 192(%x2)  #2016 pc 26912
	fsub	%f0, %f1, %f0  #2016 pc 26916
	flw	%f1, 96(%x2)  #2016 pc 26920
	fmul	%f0, %f1, %f0  #2016 pc 26924
	lw	%x5, 108(%x2)  #2017 pc 26928
	addi	%x5, %x5, 1  #2017 pc 26932
	lw	%x6, 16(%x2)  #2017 pc 26936
	flw	%f1, 0(%x6)  #2017 pc 26940
	flw	%f2, 8(%x2)  #2017 pc 26944
	fadd	%f1, %f2, %f1  #2017 pc 26948
	lw	%x6, 112(%x2)  #2017 pc 26952
	lw	%x7, 52(%x2)  #2017 pc 26956
	lw	%x29, 0(%x2)  #2017 pc 26960
	lw	%x30, 0(%x29)  #2017 pc 26964
	jalr	%x0, %x30, 0  #2017 pc 26968
	nop #pc 26972
be_else.9518: #pc 26976
	ret #pc 26976
	nop #pc 26980
ble_else.9499: #pc 26984
	ret #pc 26984
	nop #pc 26988
trace_diffuse_ray.2975:  #pc 26992
	lw	%x6, 48(%x29)  #0 pc 26992
	lw	%x7, 44(%x29)  #0 pc 26996
	lw	%x8, 40(%x29)  #0 pc 27000
	lw	%x9, 36(%x29)  #0 pc 27004
	lw	%x10, 32(%x29)  #0 pc 27008
	lw	%x11, 28(%x29)  #0 pc 27012
	lw	%x12, 24(%x29)  #0 pc 27016
	lw	%x13, 20(%x29)  #0 pc 27020
	lw	%x14, 16(%x29)  #0 pc 27024
	lw	%x15, 12(%x29)  #0 pc 27028
	lw	%x16, 8(%x29)  #0 pc 27032
	lw	%x17, 4(%x29)  #0 pc 27036
	sw	%x7, 0(%x2)  #2055 pc 27040
	sw	%x17, 4(%x2)  #2055 pc 27044
	fsw	%f0, 8(%x2)  #2055 pc 27048
	sw	%x12, 16(%x2)  #2055 pc 27052
	sw	%x11, 20(%x2)  #2055 pc 27056
	sw	%x8, 24(%x2)  #2055 pc 27060
	sw	%x9, 28(%x2)  #2055 pc 27064
	sw	%x14, 32(%x2)  #2055 pc 27068
	sw	%x6, 36(%x2)  #2055 pc 27072
	sw	%x16, 40(%x2)  #2055 pc 27076
	sw	%x5, 44(%x2)  #2055 pc 27080
	sw	%x10, 48(%x2)  #2055 pc 27084
	sw	%x15, 52(%x2)  #2055 pc 27088
	addi	%x29, %x13, 0  #0 pc 27092
	sw	%x1, 56(%x2)  #2055 pc 27096
	lw	%x30, 0(%x29)  #2055 pc 27100
	addi	%x2, %x2, 60  #2055 pc 27104
	jalr	%x1, %x30, 0  #2055 pc 27108
	addi	%x2, %x2, -60  #2055 pc 27112
	lw	%x1, 56(%x2)  #2055 pc 27116
	beq	%x5, %x0, 12  #2055 pc 27120
	j	be_else.9521 #pc 27124
	nop #pc 27128
	ret #pc 27132
	nop #pc 27136
be_else.9521: #pc 27140
	lw	%x5, 52(%x2)  #2056 pc 27140
	lw	%x5, 0(%x5)  #2056 pc 27144
	slli	%x5, %x5, 2  #2056 pc 27148
	lw	%x6, 48(%x2)  #2056 pc 27152
	add	%x31, %x5, %x6  #2056 pc 27156
	lw	%x5, 0(%x31)  #2056 pc 27160
	lw	%x6, 44(%x2)  #2057 pc 27164
	sw	%x5, 56(%x2)  #2057 pc 27168
	addi	%x5, %x6, 0  #0 pc 27172
	sw	%x1, 60(%x2)  #2057 pc 27176
	addi	%x2, %x2, 64  #2057 pc 27180
	jal	%x1, d_vec.2749  #2057 pc 27184
	addi	%x2, %x2, -64  #2057 pc 27188
	lw	%x1, 60(%x2) #2057 pc 27192
	addi	%x6, %x5, 0  #2057 pc 27196
	lw	%x5, 56(%x2)  #2057 pc 27200
	lw	%x29, 40(%x2)  #2057 pc 27204
	sw	%x1, 60(%x2)  #2057 pc 27208
	lw	%x30, 0(%x29)  #2057 pc 27212
	addi	%x2, %x2, 64  #2057 pc 27216
	jalr	%x1, %x30, 0  #2057 pc 27220
	addi	%x2, %x2, -64  #2057 pc 27224
	lw	%x1, 60(%x2)  #2057 pc 27228
	lw	%x5, 56(%x2)  #2058 pc 27232
	lw	%x6, 32(%x2)  #2058 pc 27236
	lw	%x29, 36(%x2)  #2058 pc 27240
	sw	%x1, 60(%x2)  #2058 pc 27244
	lw	%x30, 0(%x29)  #2058 pc 27248
	addi	%x2, %x2, 64  #2058 pc 27252
	jalr	%x1, %x30, 0  #2058 pc 27256
	addi	%x2, %x2, -64  #2058 pc 27260
	lw	%x1, 60(%x2)  #2058 pc 27264
	addi	%x5, %x0, 0  #0 pc 27268
	lw	%x6, 28(%x2)  #2061 pc 27272
	lw	%x6, 0(%x6)  #2061 pc 27276
	lw	%x29, 24(%x2)  #2061 pc 27280
	sw	%x1, 60(%x2)  #2061 pc 27284
	lw	%x30, 0(%x29)  #2061 pc 27288
	addi	%x2, %x2, 64  #2061 pc 27292
	jalr	%x1, %x30, 0  #2061 pc 27296
	addi	%x2, %x2, -64  #2061 pc 27300
	lw	%x1, 60(%x2)  #2061 pc 27304
	beq	%x5, %x0, 12  #2061 pc 27308
	j	be_else.9523 #pc 27312
	nop #pc 27316
	lw	%x5, 20(%x2)  #2062 pc 27320
	lw	%x6, 16(%x2)  #2062 pc 27324
	sw	%x1, 60(%x2)  #2062 pc 27328
	addi	%x2, %x2, 64  #2062 pc 27332
	jal	%x1, veciprod.2666  #2062 pc 27336
	addi	%x2, %x2, -64  #2062 pc 27340
	lw	%x1, 60(%x2) #2062 pc 27344
	sw	%x1, 60(%x2)  #2062 pc 27348
	addi	%x2, %x2, 64  #2062 pc 27352
	jal	%x1, fneg.2540  #2062 pc 27356
	addi	%x2, %x2, -64  #2062 pc 27360
	lw	%x1, 60(%x2) #2062 pc 27364
	fsw	%f0, 64(%x2)  #2063 pc 27368
	sw	%x1, 72(%x2)  #2063 pc 27372
	addi	%x2, %x2, 76  #2063 pc 27376
	jal	%x1, fispos.2536  #2063 pc 27380
	addi	%x2, %x2, -76  #2063 pc 27384
	lw	%x1, 72(%x2) #2063 pc 27388
	beq	%x5, %x0, 12  #2063 pc 27392
	j	be_else.9525 #pc 27396
	nop #pc 27400
	fmv	%f0, l.6305  #0 pc 27404
	j	be_cont.9526 #pc 27408
	nop #pc 27412
be_else.9525: #pc 27416
	flw	%f0, 64(%x2)  #2063 pc 27416
be_cont.9526: #pc 27420
	flw	%f1, 8(%x2)  #2064 pc 27420
	fmul	%f0, %f1, %f0  #2064 pc 27424
	lw	%x5, 56(%x2)  #2064 pc 27428
	fsw	%f0, 72(%x2)  #2064 pc 27432
	sw	%x1, 80(%x2)  #2064 pc 27436
	addi	%x2, %x2, 84  #2064 pc 27440
	jal	%x1, o_diffuse.2712  #2064 pc 27444
	addi	%x2, %x2, -84  #2064 pc 27448
	lw	%x1, 80(%x2) #2064 pc 27452
	flw	%f1, 72(%x2)  #2064 pc 27456
	fmul	%f0, %f1, %f0  #2064 pc 27460
	lw	%x5, 4(%x2)  #2064 pc 27464
	lw	%x6, 0(%x2)  #2064 pc 27468
	j	vecaccum.2674  #2064 pc 27472
	nop #pc 27476
be_else.9523: #pc 27480
	ret #pc 27480
	nop #pc 27484
iter_trace_diffuse_rays.2978:  #pc 27488
	lw	%x9, 4(%x29)  #0 pc 27488
	bge	%x8, %x0, 12  #2072 pc 27492
	j	bge_else.9528 #pc 27496
	nop #pc 27500
	slli	%x10, %x8, 2  #2073 pc 27504
	add	%x31, %x10, %x5  #2073 pc 27508
	lw	%x10, 0(%x31)  #2073 pc 27512
	sw	%x7, 0(%x2)  #2073 pc 27516
	sw	%x29, 4(%x2)  #2073 pc 27520
	sw	%x9, 8(%x2)  #2073 pc 27524
	sw	%x5, 12(%x2)  #2073 pc 27528
	sw	%x8, 16(%x2)  #2073 pc 27532
	sw	%x6, 20(%x2)  #2073 pc 27536
	addi	%x5, %x10, 0  #0 pc 27540
	sw	%x1, 24(%x2)  #2073 pc 27544
	addi	%x2, %x2, 28  #2073 pc 27548
	jal	%x1, d_vec.2749  #2073 pc 27552
	addi	%x2, %x2, -28  #2073 pc 27556
	lw	%x1, 24(%x2) #2073 pc 27560
	lw	%x6, 20(%x2)  #2073 pc 27564
	sw	%x1, 24(%x2)  #2073 pc 27568
	addi	%x2, %x2, 28  #2073 pc 27572
	jal	%x1, veciprod.2666  #2073 pc 27576
	addi	%x2, %x2, -28  #2073 pc 27580
	lw	%x1, 24(%x2) #2073 pc 27584
	fsw	%f0, 24(%x2)  #2077 pc 27588
	sw	%x1, 32(%x2)  #2077 pc 27592
	addi	%x2, %x2, 36  #2077 pc 27596
	jal	%x1, fisneg.2538  #2077 pc 27600
	addi	%x2, %x2, -36  #2077 pc 27604
	lw	%x1, 32(%x2) #2077 pc 27608
	beq	%x5, %x0, 12  #2077 pc 27612
	j	be_else.9529 #pc 27616
	nop #pc 27620
	lw	%x5, 16(%x2)  #2080 pc 27624
	slli	%x6, %x5, 2  #2080 pc 27628
	lw	%x7, 12(%x2)  #2080 pc 27632
	add	%x31, %x6, %x7  #2080 pc 27636
	lw	%x6, 0(%x31)  #2080 pc 27640
	fmv	%f0, l.6905  #0 pc 27644
	flw	%f1, 24(%x2)  #2080 pc 27648
	fdiv	%f0, %f1, %f0  #2080 pc 27652
	lw	%x29, 8(%x2)  #2080 pc 27656
	addi	%x5, %x6, 0  #0 pc 27660
	sw	%x1, 32(%x2)  #2080 pc 27664
	lw	%x30, 0(%x29)  #2080 pc 27668
	addi	%x2, %x2, 36  #2080 pc 27672
	jalr	%x1, %x30, 0  #2080 pc 27676
	addi	%x2, %x2, -36  #2080 pc 27680
	lw	%x1, 32(%x2)  #2080 pc 27684
	j	be_cont.9530 #pc 27688
	nop #pc 27692
be_else.9529: #pc 27696
	lw	%x5, 16(%x2)  #2078 pc 27696
	addi	%x6, %x5, 1  #2078 pc 27700
	slli	%x6, %x6, 2  #2078 pc 27704
	lw	%x7, 12(%x2)  #2078 pc 27708
	add	%x31, %x6, %x7  #2078 pc 27712
	lw	%x6, 0(%x31)  #2078 pc 27716
	fmv	%f0, l.6902  #0 pc 27720
	flw	%f1, 24(%x2)  #2078 pc 27724
	fdiv	%f0, %f1, %f0  #2078 pc 27728
	lw	%x29, 8(%x2)  #2078 pc 27732
	addi	%x5, %x6, 0  #0 pc 27736
	sw	%x1, 32(%x2)  #2078 pc 27740
	lw	%x30, 0(%x29)  #2078 pc 27744
	addi	%x2, %x2, 36  #2078 pc 27748
	jalr	%x1, %x30, 0  #2078 pc 27752
	addi	%x2, %x2, -36  #2078 pc 27756
	lw	%x1, 32(%x2)  #2078 pc 27760
be_cont.9530: #pc 27764
	lw	%x5, 16(%x2)  #2082 pc 27764
	addi	%x8, %x5, -2  #2082 pc 27768
	lw	%x5, 12(%x2)  #2082 pc 27772
	lw	%x6, 20(%x2)  #2082 pc 27776
	lw	%x7, 0(%x2)  #2082 pc 27780
	lw	%x29, 4(%x2)  #2082 pc 27784
	lw	%x30, 0(%x29)  #2082 pc 27788
	jalr	%x0, %x30, 0  #2082 pc 27792
	nop #pc 27796
bge_else.9528: #pc 27800
	ret #pc 27800
	nop #pc 27804
trace_diffuse_rays.2983:  #pc 27808
	lw	%x8, 8(%x29)  #2088 pc 27808
	lw	%x9, 4(%x29)  #2088 pc 27812
	sw	%x7, 0(%x2)  #2088 pc 27816
	sw	%x6, 4(%x2)  #2088 pc 27820
	sw	%x5, 8(%x2)  #2088 pc 27824
	sw	%x9, 12(%x2)  #2088 pc 27828
	addi	%x5, %x7, 0  #0 pc 27832
	addi	%x29, %x8, 0  #0 pc 27836
	sw	%x1, 16(%x2)  #2088 pc 27840
	lw	%x30, 0(%x29)  #2088 pc 27844
	addi	%x2, %x2, 20  #2088 pc 27848
	jalr	%x1, %x30, 0  #2088 pc 27852
	addi	%x2, %x2, -20  #2088 pc 27856
	lw	%x1, 16(%x2)  #2088 pc 27860
	addi	%x8, %x0, 118  #0 pc 27864
	lw	%x5, 8(%x2)  #2092 pc 27868
	lw	%x6, 4(%x2)  #2092 pc 27872
	lw	%x7, 0(%x2)  #2092 pc 27876
	lw	%x29, 12(%x2)  #2092 pc 27880
	lw	%x30, 0(%x29)  #2092 pc 27884
	jalr	%x0, %x30, 0  #2092 pc 27888
	nop #pc 27892
trace_diffuse_ray_80percent.2987:  #pc 27896
	lw	%x8, 8(%x29)  #0 pc 27896
	lw	%x9, 4(%x29)  #0 pc 27900
	sw	%x7, 0(%x2)  #2099 pc 27904
	sw	%x6, 4(%x2)  #2099 pc 27908
	sw	%x8, 8(%x2)  #2099 pc 27912
	sw	%x9, 12(%x2)  #2099 pc 27916
	sw	%x5, 16(%x2)  #2099 pc 27920
	beq	%x5, %x0, 12  #2099 pc 27924
	j	be_else.9532 #pc 27928
	nop #pc 27932
	j	be_cont.9533 #pc 27936
	nop #pc 27940
be_else.9532: #pc 27944
	lw	%x10, 0(%x9)  #2100 pc 27944
	addi	%x5, %x10, 0  #0 pc 27948
	addi	%x29, %x8, 0  #0 pc 27952
	sw	%x1, 20(%x2)  #2100 pc 27956
	lw	%x30, 0(%x29)  #2100 pc 27960
	addi	%x2, %x2, 24  #2100 pc 27964
	jalr	%x1, %x30, 0  #2100 pc 27968
	addi	%x2, %x2, -24  #2100 pc 27972
	lw	%x1, 20(%x2)  #2100 pc 27976
be_cont.9533: #pc 27980
	lw	%x5, 16(%x2)  #2103 pc 27980
	addi	%x31, %x0, 1  #pc 27984
	beq	%x5, %x31, 12  #2103 pc 27988
	j	be_else.9534 #pc 27992
	nop #pc 27996
	j	be_cont.9535 #pc 28000
	nop #pc 28004
be_else.9534: #pc 28008
	lw	%x6, 12(%x2)  #2104 pc 28008
	lw	%x7, 4(%x6)  #2104 pc 28012
	lw	%x8, 4(%x2)  #2104 pc 28016
	lw	%x9, 0(%x2)  #2104 pc 28020
	lw	%x29, 8(%x2)  #2104 pc 28024
	addi	%x6, %x8, 0  #0 pc 28028
	addi	%x5, %x7, 0  #0 pc 28032
	addi	%x7, %x9, 0  #0 pc 28036
	sw	%x1, 20(%x2)  #2104 pc 28040
	lw	%x30, 0(%x29)  #2104 pc 28044
	addi	%x2, %x2, 24  #2104 pc 28048
	jalr	%x1, %x30, 0  #2104 pc 28052
	addi	%x2, %x2, -24  #2104 pc 28056
	lw	%x1, 20(%x2)  #2104 pc 28060
be_cont.9535: #pc 28064
	lw	%x5, 16(%x2)  #2107 pc 28064
	addi	%x31, %x0, 2  #pc 28068
	beq	%x5, %x31, 12  #2107 pc 28072
	j	be_else.9536 #pc 28076
	nop #pc 28080
	j	be_cont.9537 #pc 28084
	nop #pc 28088
be_else.9536: #pc 28092
	lw	%x6, 12(%x2)  #2108 pc 28092
	lw	%x7, 8(%x6)  #2108 pc 28096
	lw	%x8, 4(%x2)  #2108 pc 28100
	lw	%x9, 0(%x2)  #2108 pc 28104
	lw	%x29, 8(%x2)  #2108 pc 28108
	addi	%x6, %x8, 0  #0 pc 28112
	addi	%x5, %x7, 0  #0 pc 28116
	addi	%x7, %x9, 0  #0 pc 28120
	sw	%x1, 20(%x2)  #2108 pc 28124
	lw	%x30, 0(%x29)  #2108 pc 28128
	addi	%x2, %x2, 24  #2108 pc 28132
	jalr	%x1, %x30, 0  #2108 pc 28136
	addi	%x2, %x2, -24  #2108 pc 28140
	lw	%x1, 20(%x2)  #2108 pc 28144
be_cont.9537: #pc 28148
	lw	%x5, 16(%x2)  #2111 pc 28148
	addi	%x31, %x0, 3  #pc 28152
	beq	%x5, %x31, 12  #2111 pc 28156
	j	be_else.9538 #pc 28160
	nop #pc 28164
	j	be_cont.9539 #pc 28168
	nop #pc 28172
be_else.9538: #pc 28176
	lw	%x6, 12(%x2)  #2112 pc 28176
	lw	%x7, 12(%x6)  #2112 pc 28180
	lw	%x8, 4(%x2)  #2112 pc 28184
	lw	%x9, 0(%x2)  #2112 pc 28188
	lw	%x29, 8(%x2)  #2112 pc 28192
	addi	%x6, %x8, 0  #0 pc 28196
	addi	%x5, %x7, 0  #0 pc 28200
	addi	%x7, %x9, 0  #0 pc 28204
	sw	%x1, 20(%x2)  #2112 pc 28208
	lw	%x30, 0(%x29)  #2112 pc 28212
	addi	%x2, %x2, 24  #2112 pc 28216
	jalr	%x1, %x30, 0  #2112 pc 28220
	addi	%x2, %x2, -24  #2112 pc 28224
	lw	%x1, 20(%x2)  #2112 pc 28228
be_cont.9539: #pc 28232
	lw	%x5, 16(%x2)  #2115 pc 28232
	addi	%x31, %x0, 4  #pc 28236
	beq	%x5, %x31, 12  #2115 pc 28240
	j	be_else.9540 #pc 28244
	nop #pc 28248
	ret #pc 28252
	nop #pc 28256
be_else.9540: #pc 28260
	lw	%x5, 12(%x2)  #2116 pc 28260
	lw	%x5, 16(%x5)  #2116 pc 28264
	lw	%x6, 4(%x2)  #2116 pc 28268
	lw	%x7, 0(%x2)  #2116 pc 28272
	lw	%x29, 8(%x2)  #2116 pc 28276
	lw	%x30, 0(%x29)  #2116 pc 28280
	jalr	%x0, %x30, 0  #2116 pc 28284
	nop #pc 28288
calc_diffuse_using_1point.2991:  #pc 28292
	lw	%x7, 12(%x29)  #2125 pc 28292
	lw	%x8, 8(%x29)  #2125 pc 28296
	lw	%x9, 4(%x29)  #2125 pc 28300
	sw	%x8, 0(%x2)  #2125 pc 28304
	sw	%x7, 4(%x2)  #2125 pc 28308
	sw	%x9, 8(%x2)  #2125 pc 28312
	sw	%x6, 12(%x2)  #2125 pc 28316
	sw	%x5, 16(%x2)  #2125 pc 28320
	sw	%x1, 20(%x2)  #2125 pc 28324
	addi	%x2, %x2, 24  #2125 pc 28328
	jal	%x1, p_received_ray_20percent.2740  #2125 pc 28332
	addi	%x2, %x2, -24  #2125 pc 28336
	lw	%x1, 20(%x2) #2125 pc 28340
	lw	%x6, 16(%x2)  #2126 pc 28344
	sw	%x5, 20(%x2)  #2126 pc 28348
	addi	%x5, %x6, 0  #0 pc 28352
	sw	%x1, 24(%x2)  #2126 pc 28356
	addi	%x2, %x2, 28  #2126 pc 28360
	jal	%x1, p_nvectors.2747  #2126 pc 28364
	addi	%x2, %x2, -28  #2126 pc 28368
	lw	%x1, 24(%x2) #2126 pc 28372
	lw	%x6, 16(%x2)  #2127 pc 28376
	sw	%x5, 24(%x2)  #2127 pc 28380
	addi	%x5, %x6, 0  #0 pc 28384
	sw	%x1, 28(%x2)  #2127 pc 28388
	addi	%x2, %x2, 32  #2127 pc 28392
	jal	%x1, p_intersection_points.2732  #2127 pc 28396
	addi	%x2, %x2, -32  #2127 pc 28400
	lw	%x1, 28(%x2) #2127 pc 28404
	lw	%x6, 16(%x2)  #2128 pc 28408
	sw	%x5, 28(%x2)  #2128 pc 28412
	addi	%x5, %x6, 0  #0 pc 28416
	sw	%x1, 32(%x2)  #2128 pc 28420
	addi	%x2, %x2, 36  #2128 pc 28424
	jal	%x1, p_energy.2738  #2128 pc 28428
	addi	%x2, %x2, -36  #2128 pc 28432
	lw	%x1, 32(%x2) #2128 pc 28436
	lw	%x6, 12(%x2)  #2130 pc 28440
	slli	%x7, %x6, 2  #2130 pc 28444
	lw	%x8, 20(%x2)  #2130 pc 28448
	add	%x31, %x7, %x8  #2130 pc 28452
	lw	%x7, 0(%x31)  #2130 pc 28456
	lw	%x8, 8(%x2)  #2130 pc 28460
	sw	%x5, 32(%x2)  #2130 pc 28464
	addi	%x6, %x7, 0  #0 pc 28468
	addi	%x5, %x8, 0  #0 pc 28472
	sw	%x1, 36(%x2)  #2130 pc 28476
	addi	%x2, %x2, 40  #2130 pc 28480
	jal	%x1, veccpy.2660  #2130 pc 28484
	addi	%x2, %x2, -40  #2130 pc 28488
	lw	%x1, 36(%x2) #2130 pc 28492
	lw	%x5, 16(%x2)  #2132 pc 28496
	sw	%x1, 36(%x2)  #2132 pc 28500
	addi	%x2, %x2, 40  #2132 pc 28504
	jal	%x1, p_group_id.2742  #2132 pc 28508
	addi	%x2, %x2, -40  #2132 pc 28512
	lw	%x1, 36(%x2) #2132 pc 28516
	lw	%x6, 12(%x2)  #2133 pc 28520
	slli	%x7, %x6, 2  #2133 pc 28524
	lw	%x8, 24(%x2)  #2133 pc 28528
	add	%x31, %x7, %x8  #2133 pc 28532
	lw	%x7, 0(%x31)  #2133 pc 28536
	slli	%x8, %x6, 2  #2134 pc 28540
	lw	%x9, 28(%x2)  #2134 pc 28544
	add	%x31, %x8, %x9  #2134 pc 28548
	lw	%x8, 0(%x31)  #2134 pc 28552
	lw	%x29, 4(%x2)  #2131 pc 28556
	addi	%x6, %x7, 0  #0 pc 28560
	addi	%x7, %x8, 0  #0 pc 28564
	sw	%x1, 36(%x2)  #2131 pc 28568
	lw	%x30, 0(%x29)  #2131 pc 28572
	addi	%x2, %x2, 40  #2131 pc 28576
	jalr	%x1, %x30, 0  #2131 pc 28580
	addi	%x2, %x2, -40  #2131 pc 28584
	lw	%x1, 36(%x2)  #2131 pc 28588
	lw	%x5, 12(%x2)  #2135 pc 28592
	slli	%x5, %x5, 2  #2135 pc 28596
	lw	%x6, 32(%x2)  #2135 pc 28600
	add	%x31, %x5, %x6  #2135 pc 28604
	lw	%x6, 0(%x31)  #2135 pc 28608
	lw	%x5, 0(%x2)  #2135 pc 28612
	lw	%x7, 8(%x2)  #2135 pc 28616
	j	vecaccumv.2684  #2135 pc 28620
	nop #pc 28624
calc_diffuse_using_5points.2994:  #pc 28628
	lw	%x10, 8(%x29)  #0 pc 28628
	lw	%x11, 4(%x29)  #0 pc 28632
	slli	%x12, %x5, 2  #2144 pc 28636
	add	%x31, %x12, %x6  #2144 pc 28640
	lw	%x6, 0(%x31)  #2144 pc 28644
	sw	%x10, 0(%x2)  #2144 pc 28648
	sw	%x11, 4(%x2)  #2144 pc 28652
	sw	%x9, 8(%x2)  #2144 pc 28656
	sw	%x8, 12(%x2)  #2144 pc 28660
	sw	%x7, 16(%x2)  #2144 pc 28664
	sw	%x5, 20(%x2)  #2144 pc 28668
	addi	%x5, %x6, 0  #0 pc 28672
	sw	%x1, 24(%x2)  #2144 pc 28676
	addi	%x2, %x2, 28  #2144 pc 28680
	jal	%x1, p_received_ray_20percent.2740  #2144 pc 28684
	addi	%x2, %x2, -28  #2144 pc 28688
	lw	%x1, 24(%x2) #2144 pc 28692
	lw	%x6, 20(%x2)  #2145 pc 28696
	addi	%x7, %x6, -1  #2145 pc 28700
	slli	%x7, %x7, 2  #2145 pc 28704
	lw	%x8, 16(%x2)  #2145 pc 28708
	add	%x31, %x7, %x8  #2145 pc 28712
	lw	%x7, 0(%x31)  #2145 pc 28716
	sw	%x5, 24(%x2)  #2145 pc 28720
	addi	%x5, %x7, 0  #0 pc 28724
	sw	%x1, 28(%x2)  #2145 pc 28728
	addi	%x2, %x2, 32  #2145 pc 28732
	jal	%x1, p_received_ray_20percent.2740  #2145 pc 28736
	addi	%x2, %x2, -32  #2145 pc 28740
	lw	%x1, 28(%x2) #2145 pc 28744
	lw	%x6, 20(%x2)  #2146 pc 28748
	slli	%x7, %x6, 2  #2146 pc 28752
	lw	%x8, 16(%x2)  #2146 pc 28756
	add	%x31, %x7, %x8  #2146 pc 28760
	lw	%x7, 0(%x31)  #2146 pc 28764
	sw	%x5, 28(%x2)  #2146 pc 28768
	addi	%x5, %x7, 0  #0 pc 28772
	sw	%x1, 32(%x2)  #2146 pc 28776
	addi	%x2, %x2, 36  #2146 pc 28780
	jal	%x1, p_received_ray_20percent.2740  #2146 pc 28784
	addi	%x2, %x2, -36  #2146 pc 28788
	lw	%x1, 32(%x2) #2146 pc 28792
	lw	%x6, 20(%x2)  #2147 pc 28796
	addi	%x7, %x6, 1  #2147 pc 28800
	slli	%x7, %x7, 2  #2147 pc 28804
	lw	%x8, 16(%x2)  #2147 pc 28808
	add	%x31, %x7, %x8  #2147 pc 28812
	lw	%x7, 0(%x31)  #2147 pc 28816
	sw	%x5, 32(%x2)  #2147 pc 28820
	addi	%x5, %x7, 0  #0 pc 28824
	sw	%x1, 36(%x2)  #2147 pc 28828
	addi	%x2, %x2, 40  #2147 pc 28832
	jal	%x1, p_received_ray_20percent.2740  #2147 pc 28836
	addi	%x2, %x2, -40  #2147 pc 28840
	lw	%x1, 36(%x2) #2147 pc 28844
	lw	%x6, 20(%x2)  #2148 pc 28848
	slli	%x7, %x6, 2  #2148 pc 28852
	lw	%x8, 12(%x2)  #2148 pc 28856
	add	%x31, %x7, %x8  #2148 pc 28860
	lw	%x7, 0(%x31)  #2148 pc 28864
	sw	%x5, 36(%x2)  #2148 pc 28868
	addi	%x5, %x7, 0  #0 pc 28872
	sw	%x1, 40(%x2)  #2148 pc 28876
	addi	%x2, %x2, 44  #2148 pc 28880
	jal	%x1, p_received_ray_20percent.2740  #2148 pc 28884
	addi	%x2, %x2, -44  #2148 pc 28888
	lw	%x1, 40(%x2) #2148 pc 28892
	lw	%x6, 8(%x2)  #2150 pc 28896
	slli	%x7, %x6, 2  #2150 pc 28900
	lw	%x8, 24(%x2)  #2150 pc 28904
	add	%x31, %x7, %x8  #2150 pc 28908
	lw	%x7, 0(%x31)  #2150 pc 28912
	lw	%x8, 4(%x2)  #2150 pc 28916
	sw	%x5, 40(%x2)  #2150 pc 28920
	addi	%x6, %x7, 0  #0 pc 28924
	addi	%x5, %x8, 0  #0 pc 28928
	sw	%x1, 44(%x2)  #2150 pc 28932
	addi	%x2, %x2, 48  #2150 pc 28936
	jal	%x1, veccpy.2660  #2150 pc 28940
	addi	%x2, %x2, -48  #2150 pc 28944
	lw	%x1, 44(%x2) #2150 pc 28948
	lw	%x5, 8(%x2)  #2151 pc 28952
	slli	%x6, %x5, 2  #2151 pc 28956
	lw	%x7, 28(%x2)  #2151 pc 28960
	add	%x31, %x6, %x7  #2151 pc 28964
	lw	%x6, 0(%x31)  #2151 pc 28968
	lw	%x7, 4(%x2)  #2151 pc 28972
	addi	%x5, %x7, 0  #0 pc 28976
	sw	%x1, 44(%x2)  #2151 pc 28980
	addi	%x2, %x2, 48  #2151 pc 28984
	jal	%x1, vecadd.2678  #2151 pc 28988
	addi	%x2, %x2, -48  #2151 pc 28992
	lw	%x1, 44(%x2) #2151 pc 28996
	lw	%x5, 8(%x2)  #2152 pc 29000
	slli	%x6, %x5, 2  #2152 pc 29004
	lw	%x7, 32(%x2)  #2152 pc 29008
	add	%x31, %x6, %x7  #2152 pc 29012
	lw	%x6, 0(%x31)  #2152 pc 29016
	lw	%x7, 4(%x2)  #2152 pc 29020
	addi	%x5, %x7, 0  #0 pc 29024
	sw	%x1, 44(%x2)  #2152 pc 29028
	addi	%x2, %x2, 48  #2152 pc 29032
	jal	%x1, vecadd.2678  #2152 pc 29036
	addi	%x2, %x2, -48  #2152 pc 29040
	lw	%x1, 44(%x2) #2152 pc 29044
	lw	%x5, 8(%x2)  #2153 pc 29048
	slli	%x6, %x5, 2  #2153 pc 29052
	lw	%x7, 36(%x2)  #2153 pc 29056
	add	%x31, %x6, %x7  #2153 pc 29060
	lw	%x6, 0(%x31)  #2153 pc 29064
	lw	%x7, 4(%x2)  #2153 pc 29068
	addi	%x5, %x7, 0  #0 pc 29072
	sw	%x1, 44(%x2)  #2153 pc 29076
	addi	%x2, %x2, 48  #2153 pc 29080
	jal	%x1, vecadd.2678  #2153 pc 29084
	addi	%x2, %x2, -48  #2153 pc 29088
	lw	%x1, 44(%x2) #2153 pc 29092
	lw	%x5, 8(%x2)  #2154 pc 29096
	slli	%x6, %x5, 2  #2154 pc 29100
	lw	%x7, 40(%x2)  #2154 pc 29104
	add	%x31, %x6, %x7  #2154 pc 29108
	lw	%x6, 0(%x31)  #2154 pc 29112
	lw	%x7, 4(%x2)  #2154 pc 29116
	addi	%x5, %x7, 0  #0 pc 29120
	sw	%x1, 44(%x2)  #2154 pc 29124
	addi	%x2, %x2, 48  #2154 pc 29128
	jal	%x1, vecadd.2678  #2154 pc 29132
	addi	%x2, %x2, -48  #2154 pc 29136
	lw	%x1, 44(%x2) #2154 pc 29140
	lw	%x5, 20(%x2)  #2156 pc 29144
	slli	%x5, %x5, 2  #2156 pc 29148
	lw	%x6, 16(%x2)  #2156 pc 29152
	add	%x31, %x5, %x6  #2156 pc 29156
	lw	%x5, 0(%x31)  #2156 pc 29160
	sw	%x1, 44(%x2)  #2156 pc 29164
	addi	%x2, %x2, 48  #2156 pc 29168
	jal	%x1, p_energy.2738  #2156 pc 29172
	addi	%x2, %x2, -48  #2156 pc 29176
	lw	%x1, 44(%x2) #2156 pc 29180
	lw	%x6, 8(%x2)  #2157 pc 29184
	slli	%x6, %x6, 2  #2157 pc 29188
	add	%x31, %x6, %x5  #2157 pc 29192
	lw	%x6, 0(%x31)  #2157 pc 29196
	lw	%x5, 0(%x2)  #2157 pc 29200
	lw	%x7, 4(%x2)  #2157 pc 29204
	j	vecaccumv.2684  #2157 pc 29208
	nop #pc 29212
do_without_neighbors.3000:  #pc 29216
	lw	%x7, 4(%x29)  #0 pc 29216
	addi	%x31, %x0, 4  #pc 29220
	bge	%x31, %x6, 12  #2163 pc 29224
	j	ble_else.9542 #pc 29228
	nop #pc 29232
	sw	%x29, 0(%x2)  #2165 pc 29236
	sw	%x7, 4(%x2)  #2165 pc 29240
	sw	%x5, 8(%x2)  #2165 pc 29244
	sw	%x6, 12(%x2)  #2165 pc 29248
	sw	%x1, 16(%x2)  #2165 pc 29252
	addi	%x2, %x2, 20  #2165 pc 29256
	jal	%x1, p_surface_ids.2734  #2165 pc 29260
	addi	%x2, %x2, -20  #2165 pc 29264
	lw	%x1, 16(%x2) #2165 pc 29268
	lw	%x6, 12(%x2)  #2166 pc 29272
	slli	%x7, %x6, 2  #2166 pc 29276
	add	%x31, %x7, %x5  #2166 pc 29280
	lw	%x5, 0(%x31)  #2166 pc 29284
	bge	%x5, %x0, 12  #2166 pc 29288
	j	bge_else.9543 #pc 29292
	nop #pc 29296
	lw	%x5, 8(%x2)  #2167 pc 29300
	sw	%x1, 16(%x2)  #2167 pc 29304
	addi	%x2, %x2, 20  #2167 pc 29308
	jal	%x1, p_calc_diffuse.2736  #2167 pc 29312
	addi	%x2, %x2, -20  #2167 pc 29316
	lw	%x1, 16(%x2) #2167 pc 29320
	lw	%x6, 12(%x2)  #2168 pc 29324
	slli	%x7, %x6, 2  #2168 pc 29328
	add	%x31, %x7, %x5  #2168 pc 29332
	lw	%x5, 0(%x31)  #2168 pc 29336
	beq	%x5, %x0, 12  #2168 pc 29340
	j	be_else.9544 #pc 29344
	nop #pc 29348
	j	be_cont.9545 #pc 29352
	nop #pc 29356
be_else.9544: #pc 29360
	lw	%x5, 8(%x2)  #2169 pc 29360
	lw	%x29, 4(%x2)  #2169 pc 29364
	sw	%x1, 16(%x2)  #2169 pc 29368
	lw	%x30, 0(%x29)  #2169 pc 29372
	addi	%x2, %x2, 20  #2169 pc 29376
	jalr	%x1, %x30, 0  #2169 pc 29380
	addi	%x2, %x2, -20  #2169 pc 29384
	lw	%x1, 16(%x2)  #2169 pc 29388
be_cont.9545: #pc 29392
	lw	%x5, 12(%x2)  #2171 pc 29392
	addi	%x6, %x5, 1  #2171 pc 29396
	lw	%x5, 8(%x2)  #2171 pc 29400
	lw	%x29, 0(%x2)  #2171 pc 29404
	lw	%x30, 0(%x29)  #2171 pc 29408
	jalr	%x0, %x30, 0  #2171 pc 29412
	nop #pc 29416
bge_else.9543: #pc 29420
	ret #pc 29420
	nop #pc 29424
ble_else.9542: #pc 29428
	ret #pc 29428
	nop #pc 29432
neighbors_exist.3003:  #pc 29436
	lw	%x7, 4(%x29)  #0 pc 29436
	lw	%x8, 4(%x7)  #2178 pc 29440
	addi	%x9, %x6, 1  #2178 pc 29444
	bge	%x9, %x8, 12  #2178 pc 29448
	j	ble_else.9548 #pc 29452
	nop #pc 29456
	addi	%x5, %x0, 0  #0 pc 29460
	ret #pc 29464
	nop #pc 29468
ble_else.9548: #pc 29472
	bge	%x0, %x6, 12  #2179 pc 29472
	j	ble_else.9549 #pc 29476
	nop #pc 29480
	addi	%x5, %x0, 0  #0 pc 29484
	ret #pc 29488
	nop #pc 29492
ble_else.9549: #pc 29496
	lw	%x6, 0(%x7)  #2180 pc 29496
	addi	%x7, %x5, 1  #2180 pc 29500
	bge	%x7, %x6, 12  #2180 pc 29504
	j	ble_else.9550 #pc 29508
	nop #pc 29512
	addi	%x5, %x0, 0  #0 pc 29516
	ret #pc 29520
	nop #pc 29524
ble_else.9550: #pc 29528
	bge	%x0, %x5, 12  #2181 pc 29528
	j	ble_else.9551 #pc 29532
	nop #pc 29536
	addi	%x5, %x0, 0  #0 pc 29540
	ret #pc 29544
	nop #pc 29548
ble_else.9551: #pc 29552
	addi	%x5, %x0, 1  #0 pc 29552
	ret #pc 29556
	nop #pc 29560
get_surface_id.3007:  #pc 29564
	sw	%x6, 0(%x2)  #2190 pc 29564
	sw	%x1, 4(%x2)  #2190 pc 29568
	addi	%x2, %x2, 8  #2190 pc 29572
	jal	%x1, p_surface_ids.2734  #2190 pc 29576
	addi	%x2, %x2, -8  #2190 pc 29580
	lw	%x1, 4(%x2) #2190 pc 29584
	lw	%x6, 0(%x2)  #2191 pc 29588
	slli	%x6, %x6, 2  #2191 pc 29592
	add	%x31, %x6, %x5  #2191 pc 29596
	lw	%x5, 0(%x31)  #2191 pc 29600
	ret #pc 29604
	nop #pc 29608
neighbors_are_available.3010:  #pc 29612
	slli	%x10, %x5, 2  #2197 pc 29612
	add	%x31, %x10, %x7  #2197 pc 29616
	lw	%x10, 0(%x31)  #2197 pc 29620
	sw	%x7, 0(%x2)  #2197 pc 29624
	sw	%x8, 4(%x2)  #2197 pc 29628
	sw	%x9, 8(%x2)  #2197 pc 29632
	sw	%x6, 12(%x2)  #2197 pc 29636
	sw	%x5, 16(%x2)  #2197 pc 29640
	addi	%x6, %x9, 0  #0 pc 29644
	addi	%x5, %x10, 0  #0 pc 29648
	sw	%x1, 20(%x2)  #2197 pc 29652
	addi	%x2, %x2, 24  #2197 pc 29656
	jal	%x1, get_surface_id.3007  #2197 pc 29660
	addi	%x2, %x2, -24  #2197 pc 29664
	lw	%x1, 20(%x2) #2197 pc 29668
	lw	%x6, 16(%x2)  #2199 pc 29672
	slli	%x7, %x6, 2  #2199 pc 29676
	lw	%x8, 12(%x2)  #2199 pc 29680
	add	%x31, %x7, %x8  #2199 pc 29684
	lw	%x7, 0(%x31)  #2199 pc 29688
	lw	%x8, 8(%x2)  #2199 pc 29692
	sw	%x5, 20(%x2)  #2199 pc 29696
	addi	%x6, %x8, 0  #0 pc 29700
	addi	%x5, %x7, 0  #0 pc 29704
	sw	%x1, 24(%x2)  #2199 pc 29708
	addi	%x2, %x2, 28  #2199 pc 29712
	jal	%x1, get_surface_id.3007  #2199 pc 29716
	addi	%x2, %x2, -28  #2199 pc 29720
	lw	%x1, 24(%x2) #2199 pc 29724
	lw	%x6, 20(%x2)  #2199 pc 29728
	beq	%x5, %x6, 12  #2199 pc 29732
	j	be_else.9552 #pc 29736
	nop #pc 29740
	lw	%x5, 16(%x2)  #2200 pc 29744
	slli	%x7, %x5, 2  #2200 pc 29748
	lw	%x8, 4(%x2)  #2200 pc 29752
	add	%x31, %x7, %x8  #2200 pc 29756
	lw	%x7, 0(%x31)  #2200 pc 29760
	lw	%x8, 8(%x2)  #2200 pc 29764
	addi	%x6, %x8, 0  #0 pc 29768
	addi	%x5, %x7, 0  #0 pc 29772
	sw	%x1, 24(%x2)  #2200 pc 29776
	addi	%x2, %x2, 28  #2200 pc 29780
	jal	%x1, get_surface_id.3007  #2200 pc 29784
	addi	%x2, %x2, -28  #2200 pc 29788
	lw	%x1, 24(%x2) #2200 pc 29792
	lw	%x6, 20(%x2)  #2200 pc 29796
	beq	%x5, %x6, 12  #2200 pc 29800
	j	be_else.9553 #pc 29804
	nop #pc 29808
	lw	%x5, 16(%x2)  #2201 pc 29812
	addi	%x7, %x5, -1  #2201 pc 29816
	slli	%x7, %x7, 2  #2201 pc 29820
	lw	%x8, 0(%x2)  #2201 pc 29824
	add	%x31, %x7, %x8  #2201 pc 29828
	lw	%x7, 0(%x31)  #2201 pc 29832
	lw	%x9, 8(%x2)  #2201 pc 29836
	addi	%x6, %x9, 0  #0 pc 29840
	addi	%x5, %x7, 0  #0 pc 29844
	sw	%x1, 24(%x2)  #2201 pc 29848
	addi	%x2, %x2, 28  #2201 pc 29852
	jal	%x1, get_surface_id.3007  #2201 pc 29856
	addi	%x2, %x2, -28  #2201 pc 29860
	lw	%x1, 24(%x2) #2201 pc 29864
	lw	%x6, 20(%x2)  #2201 pc 29868
	beq	%x5, %x6, 12  #2201 pc 29872
	j	be_else.9554 #pc 29876
	nop #pc 29880
	lw	%x5, 16(%x2)  #2202 pc 29884
	addi	%x5, %x5, 1  #2202 pc 29888
	slli	%x5, %x5, 2  #2202 pc 29892
	lw	%x7, 0(%x2)  #2202 pc 29896
	add	%x31, %x5, %x7  #2202 pc 29900
	lw	%x5, 0(%x31)  #2202 pc 29904
	lw	%x7, 8(%x2)  #2202 pc 29908
	addi	%x6, %x7, 0  #0 pc 29912
	sw	%x1, 24(%x2)  #2202 pc 29916
	addi	%x2, %x2, 28  #2202 pc 29920
	jal	%x1, get_surface_id.3007  #2202 pc 29924
	addi	%x2, %x2, -28  #2202 pc 29928
	lw	%x1, 24(%x2) #2202 pc 29932
	lw	%x6, 20(%x2)  #2202 pc 29936
	beq	%x5, %x6, 12  #2202 pc 29940
	j	be_else.9555 #pc 29944
	nop #pc 29948
	addi	%x5, %x0, 1  #0 pc 29952
	ret #pc 29956
	nop #pc 29960
be_else.9555: #pc 29964
	addi	%x5, %x0, 0  #0 pc 29964
	ret #pc 29968
	nop #pc 29972
be_else.9554: #pc 29976
	addi	%x5, %x0, 0  #0 pc 29976
	ret #pc 29980
	nop #pc 29984
be_else.9553: #pc 29988
	addi	%x5, %x0, 0  #0 pc 29988
	ret #pc 29992
	nop #pc 29996
be_else.9552: #pc 30000
	addi	%x5, %x0, 0  #0 pc 30000
	ret #pc 30004
	nop #pc 30008
try_exploit_neighbors.3016:  #pc 30012
	lw	%x11, 8(%x29)  #2215 pc 30012
	lw	%x12, 4(%x29)  #2215 pc 30016
	slli	%x13, %x5, 2  #2215 pc 30020
	add	%x31, %x13, %x8  #2215 pc 30024
	lw	%x13, 0(%x31)  #2215 pc 30028
	addi	%x31, %x0, 4  #pc 30032
	bge	%x31, %x10, 12  #2216 pc 30036
	j	ble_else.9556 #pc 30040
	nop #pc 30044
	sw	%x6, 0(%x2)  #2219 pc 30048
	sw	%x29, 4(%x2)  #2219 pc 30052
	sw	%x12, 8(%x2)  #2219 pc 30056
	sw	%x13, 12(%x2)  #2219 pc 30060
	sw	%x11, 16(%x2)  #2219 pc 30064
	sw	%x10, 20(%x2)  #2219 pc 30068
	sw	%x9, 24(%x2)  #2219 pc 30072
	sw	%x8, 28(%x2)  #2219 pc 30076
	sw	%x7, 32(%x2)  #2219 pc 30080
	sw	%x5, 36(%x2)  #2219 pc 30084
	addi	%x6, %x10, 0  #0 pc 30088
	addi	%x5, %x13, 0  #0 pc 30092
	sw	%x1, 40(%x2)  #2219 pc 30096
	addi	%x2, %x2, 44  #2219 pc 30100
	jal	%x1, get_surface_id.3007  #2219 pc 30104
	addi	%x2, %x2, -44  #2219 pc 30108
	lw	%x1, 40(%x2) #2219 pc 30112
	bge	%x5, %x0, 12  #2219 pc 30116
	j	bge_else.9557 #pc 30120
	nop #pc 30124
	lw	%x5, 36(%x2)  #2221 pc 30128
	lw	%x6, 32(%x2)  #2221 pc 30132
	lw	%x7, 28(%x2)  #2221 pc 30136
	lw	%x8, 24(%x2)  #2221 pc 30140
	lw	%x9, 20(%x2)  #2221 pc 30144
	sw	%x1, 40(%x2)  #2221 pc 30148
	addi	%x2, %x2, 44  #2221 pc 30152
	jal	%x1, neighbors_are_available.3010  #2221 pc 30156
	addi	%x2, %x2, -44  #2221 pc 30160
	lw	%x1, 40(%x2) #2221 pc 30164
	beq	%x5, %x0, 12  #2221 pc 30168
	j	be_else.9558 #pc 30172
	nop #pc 30176
	lw	%x5, 36(%x2)  #2233 pc 30180
	slli	%x5, %x5, 2  #2233 pc 30184
	lw	%x6, 28(%x2)  #2233 pc 30188
	add	%x31, %x5, %x6  #2233 pc 30192
	lw	%x5, 0(%x31)  #2233 pc 30196
	lw	%x6, 20(%x2)  #2233 pc 30200
	lw	%x29, 16(%x2)  #2233 pc 30204
	lw	%x30, 0(%x29)  #2233 pc 30208
	jalr	%x0, %x30, 0  #2233 pc 30212
	nop #pc 30216
be_else.9558: #pc 30220
	lw	%x5, 12(%x2)  #2224 pc 30220
	sw	%x1, 40(%x2)  #2224 pc 30224
	addi	%x2, %x2, 44  #2224 pc 30228
	jal	%x1, p_calc_diffuse.2736  #2224 pc 30232
	addi	%x2, %x2, -44  #2224 pc 30236
	lw	%x1, 40(%x2) #2224 pc 30240
	lw	%x9, 20(%x2)  #2225 pc 30244
	slli	%x6, %x9, 2  #2225 pc 30248
	add	%x31, %x6, %x5  #2225 pc 30252
	lw	%x5, 0(%x31)  #2225 pc 30256
	beq	%x5, %x0, 12  #2225 pc 30260
	j	be_else.9559 #pc 30264
	nop #pc 30268
	j	be_cont.9560 #pc 30272
	nop #pc 30276
be_else.9559: #pc 30280
	lw	%x5, 36(%x2)  #2226 pc 30280
	lw	%x6, 32(%x2)  #2226 pc 30284
	lw	%x7, 28(%x2)  #2226 pc 30288
	lw	%x8, 24(%x2)  #2226 pc 30292
	lw	%x29, 8(%x2)  #2226 pc 30296
	sw	%x1, 40(%x2)  #2226 pc 30300
	lw	%x30, 0(%x29)  #2226 pc 30304
	addi	%x2, %x2, 44  #2226 pc 30308
	jalr	%x1, %x30, 0  #2226 pc 30312
	addi	%x2, %x2, -44  #2226 pc 30316
	lw	%x1, 40(%x2)  #2226 pc 30320
be_cont.9560: #pc 30324
	lw	%x5, 20(%x2)  #2230 pc 30324
	addi	%x10, %x5, 1  #2230 pc 30328
	lw	%x5, 36(%x2)  #2230 pc 30332
	lw	%x6, 0(%x2)  #2230 pc 30336
	lw	%x7, 32(%x2)  #2230 pc 30340
	lw	%x8, 28(%x2)  #2230 pc 30344
	lw	%x9, 24(%x2)  #2230 pc 30348
	lw	%x29, 4(%x2)  #2230 pc 30352
	lw	%x30, 0(%x29)  #2230 pc 30356
	jalr	%x0, %x30, 0  #2230 pc 30360
	nop #pc 30364
bge_else.9557: #pc 30368
	ret #pc 30368
	nop #pc 30372
ble_else.9556: #pc 30376
	ret #pc 30376
	nop #pc 30380
write_ppm_header.3023:  #pc 30384
	lw	%x6, 4(%x29)  #0 pc 30384
	addi	%x7, %x0, 80  #0 pc 30388
	sw	%x6, 0(%x2)  #2243 pc 30392
	sw	%x5, 4(%x2)  #2243 pc 30396
	addi	%x5, %x7, 0  #0 pc 30400
	sw	%x1, 8(%x2)  #2243 pc 30404
	addi	%x2, %x2, 12  #2243 pc 30408
	jal	%x1, print_char.2579  #2243 pc 30412
	addi	%x2, %x2, -12  #2243 pc 30416
	lw	%x1, 8(%x2) #2243 pc 30420
	lw	%x5, 4(%x2)  #2244 pc 30424
	addi	%x5, %x5, 48  #2244 pc 30428
	sw	%x1, 8(%x2)  #2244 pc 30432
	addi	%x2, %x2, 12  #2244 pc 30436
	jal	%x1, print_char.2579  #2244 pc 30440
	addi	%x2, %x2, -12  #2244 pc 30444
	lw	%x1, 8(%x2) #2244 pc 30448
	addi	%x5, %x0, 10  #0 pc 30452
	sw	%x1, 8(%x2)  #2245 pc 30456
	addi	%x2, %x2, 12  #2245 pc 30460
	jal	%x1, print_char.2579  #2245 pc 30464
	addi	%x2, %x2, -12  #2245 pc 30468
	lw	%x1, 8(%x2) #2245 pc 30472
	lw	%x5, 0(%x2)  #2246 pc 30476
	lw	%x6, 0(%x5)  #2246 pc 30480
	addi	%x5, %x6, 0  #0 pc 30484
	sw	%x1, 8(%x2)  #2246 pc 30488
	addi	%x2, %x2, 12  #2246 pc 30492
	jal	%x1, print_int.2581  #2246 pc 30496
	addi	%x2, %x2, -12  #2246 pc 30500
	lw	%x1, 8(%x2) #2246 pc 30504
	addi	%x5, %x0, 32  #0 pc 30508
	sw	%x1, 8(%x2)  #2247 pc 30512
	addi	%x2, %x2, 12  #2247 pc 30516
	jal	%x1, print_char.2579  #2247 pc 30520
	addi	%x2, %x2, -12  #2247 pc 30524
	lw	%x1, 8(%x2) #2247 pc 30528
	lw	%x5, 0(%x2)  #2248 pc 30532
	lw	%x5, 4(%x5)  #2248 pc 30536
	sw	%x1, 8(%x2)  #2248 pc 30540
	addi	%x2, %x2, 12  #2248 pc 30544
	jal	%x1, print_int.2581  #2248 pc 30548
	addi	%x2, %x2, -12  #2248 pc 30552
	lw	%x1, 8(%x2) #2248 pc 30556
	addi	%x5, %x0, 32  #0 pc 30560
	sw	%x1, 8(%x2)  #2249 pc 30564
	addi	%x2, %x2, 12  #2249 pc 30568
	jal	%x1, print_char.2579  #2249 pc 30572
	addi	%x2, %x2, -12  #2249 pc 30576
	lw	%x1, 8(%x2) #2249 pc 30580
	addi	%x5, %x0, 255  #0 pc 30584
	sw	%x1, 8(%x2)  #2250 pc 30588
	addi	%x2, %x2, 12  #2250 pc 30592
	jal	%x1, print_int.2581  #2250 pc 30596
	addi	%x2, %x2, -12  #2250 pc 30600
	lw	%x1, 8(%x2) #2250 pc 30604
	addi	%x5, %x0, 10  #0 pc 30608
	j	print_char.2579  #2251 pc 30612
	nop #pc 30616
write_rgb_element_int.3025:  #pc 30620
	sw	%x1, 0(%x2)  #2256 pc 30620
	addi	%x2, %x2, 4  #2256 pc 30624
	jal	%x1, int_of_float.2561  #2256 pc 30628
	addi	%x2, %x2, -4  #2256 pc 30632
	lw	%x1, 0(%x2) #2256 pc 30636
	addi	%x31, %x0, 255  #pc 30640
	bge	%x31, %x5, 12  #2257 pc 30644
	j	ble_else.9563 #pc 30648
	nop #pc 30652
	bge	%x5, %x0, 12  #2257 pc 30656
	j	bge_else.9565 #pc 30660
	nop #pc 30664
	j	bge_cont.9566 #pc 30668
	nop #pc 30672
bge_else.9565: #pc 30676
	addi	%x5, %x0, 0  #0 pc 30676
bge_cont.9566: #pc 30680
	j	ble_cont.9564 #pc 30680
	nop #pc 30684
ble_else.9563: #pc 30688
	addi	%x5, %x0, 255  #0 pc 30688
ble_cont.9564: #pc 30692
	j	print_int.2581  #2258 pc 30692
	nop #pc 30696
write_rgb_element_char.3027:  #pc 30700
	sw	%x1, 0(%x2)  #2262 pc 30700
	addi	%x2, %x2, 4  #2262 pc 30704
	jal	%x1, int_of_float.2561  #2262 pc 30708
	addi	%x2, %x2, -4  #2262 pc 30712
	lw	%x1, 0(%x2) #2262 pc 30716
	addi	%x31, %x0, 255  #pc 30720
	bge	%x31, %x5, 12  #2263 pc 30724
	j	ble_else.9567 #pc 30728
	nop #pc 30732
	bge	%x5, %x0, 12  #2263 pc 30736
	j	bge_else.9569 #pc 30740
	nop #pc 30744
	j	bge_cont.9570 #pc 30748
	nop #pc 30752
bge_else.9569: #pc 30756
	addi	%x5, %x0, 0  #0 pc 30756
bge_cont.9570: #pc 30760
	j	ble_cont.9568 #pc 30760
	nop #pc 30764
ble_else.9567: #pc 30768
	addi	%x5, %x0, 255  #0 pc 30768
ble_cont.9568: #pc 30772
	j	print_char.2579  #2264 pc 30772
	nop #pc 30776
write_rgb.3029:  #pc 30780
	lw	%x6, 4(%x29)  #0 pc 30780
	addi	%x31, %x0, 3  #pc 30784
	beq	%x5, %x31, 12  #2268 pc 30788
	j	be_else.9571 #pc 30792
	nop #pc 30796
	flw	%f0, 0(%x6)  #2269 pc 30800
	sw	%x6, 0(%x2)  #2269 pc 30804
	sw	%x1, 4(%x2)  #2269 pc 30808
	addi	%x2, %x2, 8  #2269 pc 30812
	jal	%x1, write_rgb_element_int.3025  #2269 pc 30816
	addi	%x2, %x2, -8  #2269 pc 30820
	lw	%x1, 4(%x2) #2269 pc 30824
	addi	%x5, %x0, 32  #0 pc 30828
	sw	%x1, 4(%x2)  #2270 pc 30832
	addi	%x2, %x2, 8  #2270 pc 30836
	jal	%x1, print_char.2579  #2270 pc 30840
	addi	%x2, %x2, -8  #2270 pc 30844
	lw	%x1, 4(%x2) #2270 pc 30848
	lw	%x5, 0(%x2)  #2271 pc 30852
	flw	%f0, 4(%x5)  #2271 pc 30856
	sw	%x1, 4(%x2)  #2271 pc 30860
	addi	%x2, %x2, 8  #2271 pc 30864
	jal	%x1, write_rgb_element_int.3025  #2271 pc 30868
	addi	%x2, %x2, -8  #2271 pc 30872
	lw	%x1, 4(%x2) #2271 pc 30876
	addi	%x5, %x0, 32  #0 pc 30880
	sw	%x1, 4(%x2)  #2272 pc 30884
	addi	%x2, %x2, 8  #2272 pc 30888
	jal	%x1, print_char.2579  #2272 pc 30892
	addi	%x2, %x2, -8  #2272 pc 30896
	lw	%x1, 4(%x2) #2272 pc 30900
	lw	%x5, 0(%x2)  #2273 pc 30904
	flw	%f0, 8(%x5)  #2273 pc 30908
	sw	%x1, 4(%x2)  #2273 pc 30912
	addi	%x2, %x2, 8  #2273 pc 30916
	jal	%x1, write_rgb_element_int.3025  #2273 pc 30920
	addi	%x2, %x2, -8  #2273 pc 30924
	lw	%x1, 4(%x2) #2273 pc 30928
	addi	%x5, %x0, 10  #0 pc 30932
	j	print_char.2579  #2274 pc 30936
	nop #pc 30940
be_else.9571: #pc 30944
	flw	%f0, 0(%x6)  #2276 pc 30944
	sw	%x6, 0(%x2)  #2276 pc 30948
	sw	%x1, 4(%x2)  #2276 pc 30952
	addi	%x2, %x2, 8  #2276 pc 30956
	jal	%x1, write_rgb_element_char.3027  #2276 pc 30960
	addi	%x2, %x2, -8  #2276 pc 30964
	lw	%x1, 4(%x2) #2276 pc 30968
	lw	%x5, 0(%x2)  #2277 pc 30972
	flw	%f0, 4(%x5)  #2277 pc 30976
	sw	%x1, 4(%x2)  #2277 pc 30980
	addi	%x2, %x2, 8  #2277 pc 30984
	jal	%x1, write_rgb_element_char.3027  #2277 pc 30988
	addi	%x2, %x2, -8  #2277 pc 30992
	lw	%x1, 4(%x2) #2277 pc 30996
	lw	%x5, 0(%x2)  #2278 pc 31000
	flw	%f0, 8(%x5)  #2278 pc 31004
	j	write_rgb_element_char.3027  #2278 pc 31008
	nop #pc 31012
pretrace_diffuse_rays.3031:  #pc 31016
	lw	%x7, 12(%x29)  #0 pc 31016
	lw	%x8, 8(%x29)  #0 pc 31020
	lw	%x9, 4(%x29)  #0 pc 31024
	addi	%x31, %x0, 4  #pc 31028
	bge	%x31, %x6, 12  #2291 pc 31032
	j	ble_else.9572 #pc 31036
	nop #pc 31040
	sw	%x29, 0(%x2)  #2294 pc 31044
	sw	%x7, 4(%x2)  #2294 pc 31048
	sw	%x8, 8(%x2)  #2294 pc 31052
	sw	%x9, 12(%x2)  #2294 pc 31056
	sw	%x6, 16(%x2)  #2294 pc 31060
	sw	%x5, 20(%x2)  #2294 pc 31064
	sw	%x1, 24(%x2)  #2294 pc 31068
	addi	%x2, %x2, 28  #2294 pc 31072
	jal	%x1, get_surface_id.3007  #2294 pc 31076
	addi	%x2, %x2, -28  #2294 pc 31080
	lw	%x1, 24(%x2) #2294 pc 31084
	bge	%x5, %x0, 12  #2295 pc 31088
	j	bge_else.9573 #pc 31092
	nop #pc 31096
	lw	%x5, 20(%x2)  #2297 pc 31100
	sw	%x1, 24(%x2)  #2297 pc 31104
	addi	%x2, %x2, 28  #2297 pc 31108
	jal	%x1, p_calc_diffuse.2736  #2297 pc 31112
	addi	%x2, %x2, -28  #2297 pc 31116
	lw	%x1, 24(%x2) #2297 pc 31120
	lw	%x6, 16(%x2)  #2298 pc 31124
	slli	%x7, %x6, 2  #2298 pc 31128
	add	%x31, %x7, %x5  #2298 pc 31132
	lw	%x5, 0(%x31)  #2298 pc 31136
	beq	%x5, %x0, 12  #2298 pc 31140
	j	be_else.9574 #pc 31144
	nop #pc 31148
	j	be_cont.9575 #pc 31152
	nop #pc 31156
be_else.9574: #pc 31160
	lw	%x5, 20(%x2)  #2299 pc 31160
	sw	%x1, 24(%x2)  #2299 pc 31164
	addi	%x2, %x2, 28  #2299 pc 31168
	jal	%x1, p_group_id.2742  #2299 pc 31172
	addi	%x2, %x2, -28  #2299 pc 31176
	lw	%x1, 24(%x2) #2299 pc 31180
	lw	%x6, 12(%x2)  #2300 pc 31184
	sw	%x5, 24(%x2)  #2300 pc 31188
	addi	%x5, %x6, 0  #0 pc 31192
	sw	%x1, 28(%x2)  #2300 pc 31196
	addi	%x2, %x2, 32  #2300 pc 31200
	jal	%x1, vecbzero.2658  #2300 pc 31204
	addi	%x2, %x2, -32  #2300 pc 31208
	lw	%x1, 28(%x2) #2300 pc 31212
	lw	%x5, 20(%x2)  #2304 pc 31216
	sw	%x1, 28(%x2)  #2304 pc 31220
	addi	%x2, %x2, 32  #2304 pc 31224
	jal	%x1, p_nvectors.2747  #2304 pc 31228
	addi	%x2, %x2, -32  #2304 pc 31232
	lw	%x1, 28(%x2) #2304 pc 31236
	lw	%x6, 20(%x2)  #2305 pc 31240
	sw	%x5, 28(%x2)  #2305 pc 31244
	addi	%x5, %x6, 0  #0 pc 31248
	sw	%x1, 32(%x2)  #2305 pc 31252
	addi	%x2, %x2, 36  #2305 pc 31256
	jal	%x1, p_intersection_points.2732  #2305 pc 31260
	addi	%x2, %x2, -36  #2305 pc 31264
	lw	%x1, 32(%x2) #2305 pc 31268
	lw	%x6, 24(%x2)  #2307 pc 31272
	slli	%x6, %x6, 2  #2307 pc 31276
	lw	%x7, 8(%x2)  #2307 pc 31280
	add	%x31, %x6, %x7  #2307 pc 31284
	lw	%x6, 0(%x31)  #2307 pc 31288
	lw	%x7, 16(%x2)  #2308 pc 31292
	slli	%x8, %x7, 2  #2308 pc 31296
	lw	%x9, 28(%x2)  #2308 pc 31300
	add	%x31, %x8, %x9  #2308 pc 31304
	lw	%x8, 0(%x31)  #2308 pc 31308
	slli	%x9, %x7, 2  #2309 pc 31312
	add	%x31, %x9, %x5  #2309 pc 31316
	lw	%x5, 0(%x31)  #2309 pc 31320
	lw	%x29, 4(%x2)  #2306 pc 31324
	addi	%x7, %x5, 0  #0 pc 31328
	addi	%x5, %x6, 0  #0 pc 31332
	addi	%x6, %x8, 0  #0 pc 31336
	sw	%x1, 32(%x2)  #2306 pc 31340
	lw	%x30, 0(%x29)  #2306 pc 31344
	addi	%x2, %x2, 36  #2306 pc 31348
	jalr	%x1, %x30, 0  #2306 pc 31352
	addi	%x2, %x2, -36  #2306 pc 31356
	lw	%x1, 32(%x2)  #2306 pc 31360
	lw	%x5, 20(%x2)  #2310 pc 31364
	sw	%x1, 32(%x2)  #2310 pc 31368
	addi	%x2, %x2, 36  #2310 pc 31372
	jal	%x1, p_received_ray_20percent.2740  #2310 pc 31376
	addi	%x2, %x2, -36  #2310 pc 31380
	lw	%x1, 32(%x2) #2310 pc 31384
	lw	%x6, 16(%x2)  #2311 pc 31388
	slli	%x7, %x6, 2  #2311 pc 31392
	add	%x31, %x7, %x5  #2311 pc 31396
	lw	%x5, 0(%x31)  #2311 pc 31400
	lw	%x7, 12(%x2)  #2311 pc 31404
	addi	%x6, %x7, 0  #0 pc 31408
	sw	%x1, 32(%x2)  #2311 pc 31412
	addi	%x2, %x2, 36  #2311 pc 31416
	jal	%x1, veccpy.2660  #2311 pc 31420
	addi	%x2, %x2, -36  #2311 pc 31424
	lw	%x1, 32(%x2) #2311 pc 31428
be_cont.9575: #pc 31432
	lw	%x5, 16(%x2)  #2313 pc 31432
	addi	%x6, %x5, 1  #2313 pc 31436
	lw	%x5, 20(%x2)  #2313 pc 31440
	lw	%x29, 0(%x2)  #2313 pc 31444
	lw	%x30, 0(%x29)  #2313 pc 31448
	jalr	%x0, %x30, 0  #2313 pc 31452
	nop #pc 31456
bge_else.9573: #pc 31460
	ret #pc 31460
	nop #pc 31464
ble_else.9572: #pc 31468
	ret #pc 31468
	nop #pc 31472
pretrace_pixels.3034:  #pc 31476
	lw	%x8, 36(%x29)  #0 pc 31476
	lw	%x9, 32(%x29)  #0 pc 31480
	lw	%x10, 28(%x29)  #0 pc 31484
	lw	%x11, 24(%x29)  #0 pc 31488
	lw	%x12, 20(%x29)  #0 pc 31492
	lw	%x13, 16(%x29)  #0 pc 31496
	lw	%x14, 12(%x29)  #0 pc 31500
	lw	%x15, 8(%x29)  #0 pc 31504
	lw	%x16, 4(%x29)  #0 pc 31508
	bge	%x6, %x0, 12  #2321 pc 31512
	j	bge_else.9578 #pc 31516
	nop #pc 31520
	flw	%f3, 0(%x12)  #2323 pc 31524
	lw	%x12, 0(%x16)  #2323 pc 31528
	sub	%x12, %x6, %x12  #2323 pc 31532
	sw	%x29, 0(%x2)  #2323 pc 31536
	sw	%x15, 4(%x2)  #2323 pc 31540
	sw	%x7, 8(%x2)  #2323 pc 31544
	sw	%x9, 12(%x2)  #2323 pc 31548
	sw	%x5, 16(%x2)  #2323 pc 31552
	sw	%x6, 20(%x2)  #2323 pc 31556
	sw	%x8, 24(%x2)  #2323 pc 31560
	sw	%x10, 28(%x2)  #2323 pc 31564
	sw	%x13, 32(%x2)  #2323 pc 31568
	fsw	%f2, 40(%x2)  #2323 pc 31572
	fsw	%f1, 48(%x2)  #2323 pc 31576
	sw	%x14, 56(%x2)  #2323 pc 31580
	fsw	%f0, 64(%x2)  #2323 pc 31584
	sw	%x11, 72(%x2)  #2323 pc 31588
	fsw	%f3, 80(%x2)  #2323 pc 31592
	addi	%x5, %x12, 0  #0 pc 31596
	sw	%x1, 88(%x2)  #2323 pc 31600
	addi	%x2, %x2, 92  #2323 pc 31604
	jal	%x1, float_of_int.2559  #2323 pc 31608
	addi	%x2, %x2, -92  #2323 pc 31612
	lw	%x1, 88(%x2) #2323 pc 31616
	flw	%f1, 80(%x2)  #2323 pc 31620
	fmul	%f0, %f1, %f0  #2323 pc 31624
	lw	%x5, 72(%x2)  #2324 pc 31628
	flw	%f1, 0(%x5)  #2324 pc 31632
	fmul	%f1, %f0, %f1  #2324 pc 31636
	flw	%f2, 64(%x2)  #2324 pc 31640
	fadd	%f1, %f1, %f2  #2324 pc 31644
	lw	%x6, 56(%x2)  #2324 pc 31648
	fsw	%f1, 0(%x6)  #2324 pc 31652
	flw	%f1, 4(%x5)  #2325 pc 31656
	fmul	%f1, %f0, %f1  #2325 pc 31660
	flw	%f3, 48(%x2)  #2325 pc 31664
	fadd	%f1, %f1, %f3  #2325 pc 31668
	fsw	%f1, 4(%x6)  #2325 pc 31672
	flw	%f1, 8(%x5)  #2326 pc 31676
	fmul	%f0, %f0, %f1  #2326 pc 31680
	flw	%f1, 40(%x2)  #2326 pc 31684
	fadd	%f0, %f0, %f1  #2326 pc 31688
	fsw	%f0, 8(%x6)  #2326 pc 31692
	addi	%x5, %x0, 0  #0 pc 31696
	addi	%x30, %x6, 0  #0 pc 31700
	addi	%x6, %x5, 0  #0 pc 31704
	addi	%x5, %x30, 0  #0 pc 31708
	sw	%x1, 88(%x2)  #2327 pc 31712
	addi	%x2, %x2, 92  #2327 pc 31716
	jal	%x1, vecunit_sgn.2663  #2327 pc 31720
	addi	%x2, %x2, -92  #2327 pc 31724
	lw	%x1, 88(%x2) #2327 pc 31728
	lw	%x5, 32(%x2)  #2328 pc 31732
	sw	%x1, 88(%x2)  #2328 pc 31736
	addi	%x2, %x2, 92  #2328 pc 31740
	jal	%x1, vecbzero.2658  #2328 pc 31744
	addi	%x2, %x2, -92  #2328 pc 31748
	lw	%x1, 88(%x2) #2328 pc 31752
	lw	%x5, 28(%x2)  #2329 pc 31756
	lw	%x6, 24(%x2)  #2329 pc 31760
	sw	%x1, 88(%x2)  #2329 pc 31764
	addi	%x2, %x2, 92  #2329 pc 31768
	jal	%x1, veccpy.2660  #2329 pc 31772
	addi	%x2, %x2, -92  #2329 pc 31776
	lw	%x1, 88(%x2) #2329 pc 31780
	addi	%x5, %x0, 0  #0 pc 31784
	fmv	%f0, l.6317  #0 pc 31788
	lw	%x6, 20(%x2)  #2332 pc 31792
	slli	%x7, %x6, 2  #2332 pc 31796
	lw	%x8, 16(%x2)  #2332 pc 31800
	add	%x31, %x7, %x8  #2332 pc 31804
	lw	%x7, 0(%x31)  #2332 pc 31808
	fmv	%f1, l.6305  #0 pc 31812
	lw	%x9, 56(%x2)  #2332 pc 31816
	lw	%x29, 12(%x2)  #2332 pc 31820
	addi	%x6, %x9, 0  #0 pc 31824
	sw	%x1, 88(%x2)  #2332 pc 31828
	lw	%x30, 0(%x29)  #2332 pc 31832
	addi	%x2, %x2, 92  #2332 pc 31836
	jalr	%x1, %x30, 0  #2332 pc 31840
	addi	%x2, %x2, -92  #2332 pc 31844
	lw	%x1, 88(%x2)  #2332 pc 31848
	lw	%x5, 20(%x2)  #2333 pc 31852
	slli	%x6, %x5, 2  #2333 pc 31856
	lw	%x7, 16(%x2)  #2333 pc 31860
	add	%x31, %x6, %x7  #2333 pc 31864
	lw	%x6, 0(%x31)  #2333 pc 31868
	addi	%x5, %x6, 0  #0 pc 31872
	sw	%x1, 88(%x2)  #2333 pc 31876
	addi	%x2, %x2, 92  #2333 pc 31880
	jal	%x1, p_rgb.2730  #2333 pc 31884
	addi	%x2, %x2, -92  #2333 pc 31888
	lw	%x1, 88(%x2) #2333 pc 31892
	lw	%x6, 32(%x2)  #2333 pc 31896
	sw	%x1, 88(%x2)  #2333 pc 31900
	addi	%x2, %x2, 92  #2333 pc 31904
	jal	%x1, veccpy.2660  #2333 pc 31908
	addi	%x2, %x2, -92  #2333 pc 31912
	lw	%x1, 88(%x2) #2333 pc 31916
	lw	%x5, 20(%x2)  #2334 pc 31920
	slli	%x6, %x5, 2  #2334 pc 31924
	lw	%x7, 16(%x2)  #2334 pc 31928
	add	%x31, %x6, %x7  #2334 pc 31932
	lw	%x6, 0(%x31)  #2334 pc 31936
	lw	%x8, 8(%x2)  #2334 pc 31940
	addi	%x5, %x6, 0  #0 pc 31944
	addi	%x6, %x8, 0  #0 pc 31948
	sw	%x1, 88(%x2)  #2334 pc 31952
	addi	%x2, %x2, 92  #2334 pc 31956
	jal	%x1, p_set_group_id.2744  #2334 pc 31960
	addi	%x2, %x2, -92  #2334 pc 31964
	lw	%x1, 88(%x2) #2334 pc 31968
	lw	%x5, 20(%x2)  #2337 pc 31972
	slli	%x6, %x5, 2  #2337 pc 31976
	lw	%x7, 16(%x2)  #2337 pc 31980
	add	%x31, %x6, %x7  #2337 pc 31984
	lw	%x6, 0(%x31)  #2337 pc 31988
	addi	%x8, %x0, 0  #0 pc 31992
	lw	%x29, 4(%x2)  #2337 pc 31996
	addi	%x5, %x6, 0  #0 pc 32000
	addi	%x6, %x8, 0  #0 pc 32004
	sw	%x1, 88(%x2)  #2337 pc 32008
	lw	%x30, 0(%x29)  #2337 pc 32012
	addi	%x2, %x2, 92  #2337 pc 32016
	jalr	%x1, %x30, 0  #2337 pc 32020
	addi	%x2, %x2, -92  #2337 pc 32024
	lw	%x1, 88(%x2)  #2337 pc 32028
	lw	%x5, 20(%x2)  #2339 pc 32032
	addi	%x5, %x5, -1  #2339 pc 32036
	addi	%x6, %x0, 1  #0 pc 32040
	lw	%x7, 8(%x2)  #2339 pc 32044
	sw	%x5, 88(%x2)  #2339 pc 32048
	addi	%x5, %x7, 0  #0 pc 32052
	sw	%x1, 92(%x2)  #2339 pc 32056
	addi	%x2, %x2, 96  #2339 pc 32060
	jal	%x1, add_mod5.2647  #2339 pc 32064
	addi	%x2, %x2, -96  #2339 pc 32068
	lw	%x1, 92(%x2) #2339 pc 32072
	addi	%x7, %x5, 0  #2339 pc 32076
	flw	%f0, 64(%x2)  #2339 pc 32080
	flw	%f1, 48(%x2)  #2339 pc 32084
	flw	%f2, 40(%x2)  #2339 pc 32088
	lw	%x5, 16(%x2)  #2339 pc 32092
	lw	%x6, 88(%x2)  #2339 pc 32096
	lw	%x29, 0(%x2)  #2339 pc 32100
	lw	%x30, 0(%x29)  #2339 pc 32104
	jalr	%x0, %x30, 0  #2339 pc 32108
	nop #pc 32112
bge_else.9578: #pc 32116
	ret #pc 32116
	nop #pc 32120
pretrace_line.3041:  #pc 32124
	lw	%x8, 24(%x29)  #0 pc 32124
	lw	%x9, 20(%x29)  #0 pc 32128
	lw	%x10, 16(%x29)  #0 pc 32132
	lw	%x11, 12(%x29)  #0 pc 32136
	lw	%x12, 8(%x29)  #0 pc 32140
	lw	%x13, 4(%x29)  #0 pc 32144
	flw	%f0, 0(%x10)  #2346 pc 32148
	lw	%x10, 4(%x13)  #2346 pc 32152
	sub	%x6, %x6, %x10  #2346 pc 32156
	sw	%x7, 0(%x2)  #2346 pc 32160
	sw	%x5, 4(%x2)  #2346 pc 32164
	sw	%x11, 8(%x2)  #2346 pc 32168
	sw	%x12, 12(%x2)  #2346 pc 32172
	sw	%x8, 16(%x2)  #2346 pc 32176
	sw	%x9, 20(%x2)  #2346 pc 32180
	fsw	%f0, 24(%x2)  #2346 pc 32184
	addi	%x5, %x6, 0  #0 pc 32188
	sw	%x1, 32(%x2)  #2346 pc 32192
	addi	%x2, %x2, 36  #2346 pc 32196
	jal	%x1, float_of_int.2559  #2346 pc 32200
	addi	%x2, %x2, -36  #2346 pc 32204
	lw	%x1, 32(%x2) #2346 pc 32208
	flw	%f1, 24(%x2)  #2346 pc 32212
	fmul	%f0, %f1, %f0  #2346 pc 32216
	lw	%x5, 20(%x2)  #2349 pc 32220
	flw	%f1, 0(%x5)  #2349 pc 32224
	fmul	%f1, %f0, %f1  #2349 pc 32228
	lw	%x6, 16(%x2)  #2349 pc 32232
	flw	%f2, 0(%x6)  #2349 pc 32236
	fadd	%f1, %f1, %f2  #2349 pc 32240
	flw	%f2, 4(%x5)  #2350 pc 32244
	fmul	%f2, %f0, %f2  #2350 pc 32248
	flw	%f3, 4(%x6)  #2350 pc 32252
	fadd	%f2, %f2, %f3  #2350 pc 32256
	flw	%f3, 8(%x5)  #2351 pc 32260
	fmul	%f0, %f0, %f3  #2351 pc 32264
	flw	%f3, 8(%x6)  #2351 pc 32268
	fadd	%f0, %f0, %f3  #2351 pc 32272
	lw	%x5, 12(%x2)  #2352 pc 32276
	lw	%x5, 0(%x5)  #2352 pc 32280
	addi	%x6, %x5, -1  #2352 pc 32284
	lw	%x5, 4(%x2)  #2352 pc 32288
	lw	%x7, 0(%x2)  #2352 pc 32292
	lw	%x29, 8(%x2)  #2352 pc 32296
	fadd	%f29, %f2, %f30  #0 pc 32300
	fadd	%f2, %f0, %f30  #0 pc 32304
	fadd	%f0, %f1, %f30  #0 pc 32308
	fadd	%f1, %f29, %f30  #0 pc 32312
	lw	%x30, 0(%x29)  #2352 pc 32316
	jalr	%x0, %x30, 0  #2352 pc 32320
	nop #pc 32324
scan_pixel.3045:  #pc 32328
	lw	%x11, 24(%x29)  #0 pc 32328
	lw	%x12, 20(%x29)  #0 pc 32332
	lw	%x13, 16(%x29)  #0 pc 32336
	lw	%x14, 12(%x29)  #0 pc 32340
	lw	%x15, 8(%x29)  #0 pc 32344
	lw	%x16, 4(%x29)  #0 pc 32348
	lw	%x15, 0(%x15)  #2362 pc 32352
	bge	%x5, %x15, 12  #2362 pc 32356
	j	ble_else.9583 #pc 32360
	nop #pc 32364
	ret #pc 32368
	nop #pc 32372
ble_else.9583: #pc 32376
	slli	%x15, %x5, 2  #2365 pc 32376
	add	%x31, %x15, %x8  #2365 pc 32380
	lw	%x15, 0(%x31)  #2365 pc 32384
	sw	%x29, 0(%x2)  #2365 pc 32388
	sw	%x10, 4(%x2)  #2365 pc 32392
	sw	%x11, 8(%x2)  #2365 pc 32396
	sw	%x7, 12(%x2)  #2365 pc 32400
	sw	%x12, 16(%x2)  #2365 pc 32404
	sw	%x16, 20(%x2)  #2365 pc 32408
	sw	%x8, 24(%x2)  #2365 pc 32412
	sw	%x9, 28(%x2)  #2365 pc 32416
	sw	%x6, 32(%x2)  #2365 pc 32420
	sw	%x5, 36(%x2)  #2365 pc 32424
	sw	%x14, 40(%x2)  #2365 pc 32428
	sw	%x13, 44(%x2)  #2365 pc 32432
	addi	%x5, %x15, 0  #0 pc 32436
	sw	%x1, 48(%x2)  #2365 pc 32440
	addi	%x2, %x2, 52  #2365 pc 32444
	jal	%x1, p_rgb.2730  #2365 pc 32448
	addi	%x2, %x2, -52  #2365 pc 32452
	lw	%x1, 48(%x2) #2365 pc 32456
	addi	%x6, %x5, 0  #2365 pc 32460
	lw	%x5, 44(%x2)  #2365 pc 32464
	sw	%x1, 48(%x2)  #2365 pc 32468
	addi	%x2, %x2, 52  #2365 pc 32472
	jal	%x1, veccpy.2660  #2365 pc 32476
	addi	%x2, %x2, -52  #2365 pc 32480
	lw	%x1, 48(%x2) #2365 pc 32484
	lw	%x5, 36(%x2)  #2368 pc 32488
	lw	%x6, 32(%x2)  #2368 pc 32492
	lw	%x7, 28(%x2)  #2368 pc 32496
	lw	%x29, 40(%x2)  #2368 pc 32500
	sw	%x1, 48(%x2)  #2368 pc 32504
	lw	%x30, 0(%x29)  #2368 pc 32508
	addi	%x2, %x2, 52  #2368 pc 32512
	jalr	%x1, %x30, 0  #2368 pc 32516
	addi	%x2, %x2, -52  #2368 pc 32520
	lw	%x1, 48(%x2)  #2368 pc 32524
	beq	%x5, %x0, 12  #2368 pc 32528
	j	be_else.9585 #pc 32532
	nop #pc 32536
	lw	%x5, 36(%x2)  #2371 pc 32540
	slli	%x6, %x5, 2  #2371 pc 32544
	lw	%x7, 24(%x2)  #2371 pc 32548
	add	%x31, %x6, %x7  #2371 pc 32552
	lw	%x6, 0(%x31)  #2371 pc 32556
	addi	%x8, %x0, 0  #0 pc 32560
	lw	%x29, 20(%x2)  #2371 pc 32564
	addi	%x5, %x6, 0  #0 pc 32568
	addi	%x6, %x8, 0  #0 pc 32572
	sw	%x1, 48(%x2)  #2371 pc 32576
	lw	%x30, 0(%x29)  #2371 pc 32580
	addi	%x2, %x2, 52  #2371 pc 32584
	jalr	%x1, %x30, 0  #2371 pc 32588
	addi	%x2, %x2, -52  #2371 pc 32592
	lw	%x1, 48(%x2)  #2371 pc 32596
	j	be_cont.9586 #pc 32600
	nop #pc 32604
be_else.9585: #pc 32608
	addi	%x10, %x0, 0  #0 pc 32608
	lw	%x5, 36(%x2)  #2369 pc 32612
	lw	%x6, 32(%x2)  #2369 pc 32616
	lw	%x7, 12(%x2)  #2369 pc 32620
	lw	%x8, 24(%x2)  #2369 pc 32624
	lw	%x9, 28(%x2)  #2369 pc 32628
	lw	%x29, 16(%x2)  #2369 pc 32632
	sw	%x1, 48(%x2)  #2369 pc 32636
	lw	%x30, 0(%x29)  #2369 pc 32640
	addi	%x2, %x2, 52  #2369 pc 32644
	jalr	%x1, %x30, 0  #2369 pc 32648
	addi	%x2, %x2, -52  #2369 pc 32652
	lw	%x1, 48(%x2)  #2369 pc 32656
be_cont.9586: #pc 32660
	lw	%x5, 4(%x2)  #2374 pc 32660
	lw	%x29, 8(%x2)  #2374 pc 32664
	sw	%x1, 48(%x2)  #2374 pc 32668
	lw	%x30, 0(%x29)  #2374 pc 32672
	addi	%x2, %x2, 52  #2374 pc 32676
	jalr	%x1, %x30, 0  #2374 pc 32680
	addi	%x2, %x2, -52  #2374 pc 32684
	lw	%x1, 48(%x2)  #2374 pc 32688
	lw	%x5, 36(%x2)  #2376 pc 32692
	addi	%x5, %x5, 1  #2376 pc 32696
	lw	%x6, 32(%x2)  #2376 pc 32700
	lw	%x7, 12(%x2)  #2376 pc 32704
	lw	%x8, 24(%x2)  #2376 pc 32708
	lw	%x9, 28(%x2)  #2376 pc 32712
	lw	%x10, 4(%x2)  #2376 pc 32716
	lw	%x29, 0(%x2)  #2376 pc 32720
	lw	%x30, 0(%x29)  #2376 pc 32724
	jalr	%x0, %x30, 0  #2376 pc 32728
	nop #pc 32732
scan_line.3052:  #pc 32736
	lw	%x11, 12(%x29)  #0 pc 32736
	lw	%x12, 8(%x29)  #0 pc 32740
	lw	%x13, 4(%x29)  #0 pc 32744
	lw	%x14, 4(%x13)  #2383 pc 32748
	bge	%x5, %x14, 12  #2383 pc 32752
	j	ble_else.9587 #pc 32756
	nop #pc 32760
	ret #pc 32764
	nop #pc 32768
ble_else.9587: #pc 32772
	lw	%x13, 4(%x13)  #2385 pc 32772
	addi	%x13, %x13, -1  #2385 pc 32776
	sw	%x29, 0(%x2)  #2385 pc 32780
	sw	%x9, 4(%x2)  #2385 pc 32784
	sw	%x10, 8(%x2)  #2385 pc 32788
	sw	%x8, 12(%x2)  #2385 pc 32792
	sw	%x7, 16(%x2)  #2385 pc 32796
	sw	%x6, 20(%x2)  #2385 pc 32800
	sw	%x5, 24(%x2)  #2385 pc 32804
	sw	%x11, 28(%x2)  #2385 pc 32808
	bge	%x5, %x13, 12  #2385 pc 32812
	j	ble_else.9589 #pc 32816
	nop #pc 32820
	j	ble_cont.9590 #pc 32824
	nop #pc 32828
ble_else.9589: #pc 32832
	addi	%x13, %x5, 1  #2386 pc 32832
	addi	%x7, %x9, 0  #0 pc 32836
	addi	%x6, %x13, 0  #0 pc 32840
	addi	%x5, %x8, 0  #0 pc 32844
	addi	%x29, %x12, 0  #0 pc 32848
	sw	%x1, 32(%x2)  #2386 pc 32852
	lw	%x30, 0(%x29)  #2386 pc 32856
	addi	%x2, %x2, 36  #2386 pc 32860
	jalr	%x1, %x30, 0  #2386 pc 32864
	addi	%x2, %x2, -36  #2386 pc 32868
	lw	%x1, 32(%x2)  #2386 pc 32872
ble_cont.9590: #pc 32876
	addi	%x5, %x0, 0  #0 pc 32876
	lw	%x6, 24(%x2)  #2388 pc 32880
	lw	%x7, 20(%x2)  #2388 pc 32884
	lw	%x8, 16(%x2)  #2388 pc 32888
	lw	%x9, 12(%x2)  #2388 pc 32892
	lw	%x10, 8(%x2)  #2388 pc 32896
	lw	%x29, 28(%x2)  #2388 pc 32900
	sw	%x1, 32(%x2)  #2388 pc 32904
	lw	%x30, 0(%x29)  #2388 pc 32908
	addi	%x2, %x2, 36  #2388 pc 32912
	jalr	%x1, %x30, 0  #2388 pc 32916
	addi	%x2, %x2, -36  #2388 pc 32920
	lw	%x1, 32(%x2)  #2388 pc 32924
	lw	%x5, 24(%x2)  #2389 pc 32928
	addi	%x5, %x5, 1  #2389 pc 32932
	addi	%x6, %x0, 2  #0 pc 32936
	lw	%x7, 4(%x2)  #2389 pc 32940
	sw	%x5, 32(%x2)  #2389 pc 32944
	addi	%x5, %x7, 0  #0 pc 32948
	sw	%x1, 36(%x2)  #2389 pc 32952
	addi	%x2, %x2, 40  #2389 pc 32956
	jal	%x1, add_mod5.2647  #2389 pc 32960
	addi	%x2, %x2, -40  #2389 pc 32964
	lw	%x1, 36(%x2) #2389 pc 32968
	addi	%x9, %x5, 0  #2389 pc 32972
	lw	%x5, 32(%x2)  #2389 pc 32976
	lw	%x6, 16(%x2)  #2389 pc 32980
	lw	%x7, 12(%x2)  #2389 pc 32984
	lw	%x8, 20(%x2)  #2389 pc 32988
	lw	%x10, 8(%x2)  #2389 pc 32992
	lw	%x29, 0(%x2)  #2389 pc 32996
	lw	%x30, 0(%x29)  #2389 pc 33000
	jalr	%x0, %x30, 0  #2389 pc 33004
	nop #pc 33008
create_float5x3array.3059:  #pc 33012
	addi	%x5, %x0, 3  #0 pc 33012
	fmv	%f0, l.6305  #0 pc 33016
	sw	%x1, 0(%x2)  #2400 pc 33020
	addi	%x2, %x2, 4  #2400 pc 33024
	jal	%x1, create_float_array.2606  #2400 pc 33028
	addi	%x2, %x2, -4  #2400 pc 33032
	lw	%x1, 0(%x2) #2400 pc 33036
	addi	%x6, %x5, 0  #2400 pc 33040
	addi	%x5, %x0, 5  #0 pc 33044
	sw	%x1, 0(%x2)  #2401 pc 33048
	addi	%x2, %x2, 4  #2401 pc 33052
	jal	%x1, create_array.2599  #2401 pc 33056
	addi	%x2, %x2, -4  #2401 pc 33060
	lw	%x1, 0(%x2) #2401 pc 33064
	addi	%x6, %x0, 3  #0 pc 33068
	fmv	%f0, l.6305  #0 pc 33072
	sw	%x5, 0(%x2)  #2402 pc 33076
	addi	%x5, %x6, 0  #0 pc 33080
	sw	%x1, 4(%x2)  #2402 pc 33084
	addi	%x2, %x2, 8  #2402 pc 33088
	jal	%x1, create_float_array.2606  #2402 pc 33092
	addi	%x2, %x2, -8  #2402 pc 33096
	lw	%x1, 4(%x2) #2402 pc 33100
	lw	%x6, 0(%x2)  #2402 pc 33104
	sw	%x5, 4(%x6)  #2402 pc 33108
	addi	%x5, %x0, 3  #0 pc 33112
	fmv	%f0, l.6305  #0 pc 33116
	sw	%x1, 4(%x2)  #2403 pc 33120
	addi	%x2, %x2, 8  #2403 pc 33124
	jal	%x1, create_float_array.2606  #2403 pc 33128
	addi	%x2, %x2, -8  #2403 pc 33132
	lw	%x1, 4(%x2) #2403 pc 33136
	lw	%x6, 0(%x2)  #2403 pc 33140
	sw	%x5, 8(%x6)  #2403 pc 33144
	addi	%x5, %x0, 3  #0 pc 33148
	fmv	%f0, l.6305  #0 pc 33152
	sw	%x1, 4(%x2)  #2404 pc 33156
	addi	%x2, %x2, 8  #2404 pc 33160
	jal	%x1, create_float_array.2606  #2404 pc 33164
	addi	%x2, %x2, -8  #2404 pc 33168
	lw	%x1, 4(%x2) #2404 pc 33172
	lw	%x6, 0(%x2)  #2404 pc 33176
	sw	%x5, 12(%x6)  #2404 pc 33180
	addi	%x5, %x0, 3  #0 pc 33184
	fmv	%f0, l.6305  #0 pc 33188
	sw	%x1, 4(%x2)  #2405 pc 33192
	addi	%x2, %x2, 8  #2405 pc 33196
	jal	%x1, create_float_array.2606  #2405 pc 33200
	addi	%x2, %x2, -8  #2405 pc 33204
	lw	%x1, 4(%x2) #2405 pc 33208
	lw	%x6, 0(%x2)  #2405 pc 33212
	sw	%x5, 16(%x6)  #2405 pc 33216
	addi	%x5, %x6, 0  #2406 pc 33220
	ret #pc 33224
	nop #pc 33228
create_pixel.3061:  #pc 33232
	addi	%x5, %x0, 3  #0 pc 33232
	fmv	%f0, l.6305  #0 pc 33236
	sw	%x1, 0(%x2)  #2412 pc 33240
	addi	%x2, %x2, 4  #2412 pc 33244
	jal	%x1, create_float_array.2606  #2412 pc 33248
	addi	%x2, %x2, -4  #2412 pc 33252
	lw	%x1, 0(%x2) #2412 pc 33256
	sw	%x5, 0(%x2)  #2413 pc 33260
	sw	%x1, 4(%x2)  #2413 pc 33264
	addi	%x2, %x2, 8  #2413 pc 33268
	jal	%x1, create_float5x3array.3059  #2413 pc 33272
	addi	%x2, %x2, -8  #2413 pc 33276
	lw	%x1, 4(%x2) #2413 pc 33280
	addi	%x6, %x0, 5  #0 pc 33284
	addi	%x7, %x0, 0  #0 pc 33288
	sw	%x5, 4(%x2)  #2414 pc 33292
	addi	%x5, %x6, 0  #0 pc 33296
	addi	%x6, %x7, 0  #0 pc 33300
	sw	%x1, 8(%x2)  #2414 pc 33304
	addi	%x2, %x2, 12  #2414 pc 33308
	jal	%x1, create_array.2599  #2414 pc 33312
	addi	%x2, %x2, -12  #2414 pc 33316
	lw	%x1, 8(%x2) #2414 pc 33320
	addi	%x6, %x0, 5  #0 pc 33324
	addi	%x7, %x0, 0  #0 pc 33328
	sw	%x5, 8(%x2)  #2415 pc 33332
	addi	%x5, %x6, 0  #0 pc 33336
	addi	%x6, %x7, 0  #0 pc 33340
	sw	%x1, 12(%x2)  #2415 pc 33344
	addi	%x2, %x2, 16  #2415 pc 33348
	jal	%x1, create_array.2599  #2415 pc 33352
	addi	%x2, %x2, -16  #2415 pc 33356
	lw	%x1, 12(%x2) #2415 pc 33360
	sw	%x5, 12(%x2)  #2416 pc 33364
	sw	%x1, 16(%x2)  #2416 pc 33368
	addi	%x2, %x2, 20  #2416 pc 33372
	jal	%x1, create_float5x3array.3059  #2416 pc 33376
	addi	%x2, %x2, -20  #2416 pc 33380
	lw	%x1, 16(%x2) #2416 pc 33384
	sw	%x5, 16(%x2)  #2417 pc 33388
	sw	%x1, 20(%x2)  #2417 pc 33392
	addi	%x2, %x2, 24  #2417 pc 33396
	jal	%x1, create_float5x3array.3059  #2417 pc 33400
	addi	%x2, %x2, -24  #2417 pc 33404
	lw	%x1, 20(%x2) #2417 pc 33408
	addi	%x6, %x0, 1  #0 pc 33412
	addi	%x7, %x0, 0  #0 pc 33416
	sw	%x5, 20(%x2)  #2418 pc 33420
	addi	%x5, %x6, 0  #0 pc 33424
	addi	%x6, %x7, 0  #0 pc 33428
	sw	%x1, 24(%x2)  #2418 pc 33432
	addi	%x2, %x2, 28  #2418 pc 33436
	jal	%x1, create_array.2599  #2418 pc 33440
	addi	%x2, %x2, -28  #2418 pc 33444
	lw	%x1, 24(%x2) #2418 pc 33448
	sw	%x5, 24(%x2)  #2419 pc 33452
	sw	%x1, 28(%x2)  #2419 pc 33456
	addi	%x2, %x2, 32  #2419 pc 33460
	jal	%x1, create_float5x3array.3059  #2419 pc 33464
	addi	%x2, %x2, -32  #2419 pc 33468
	lw	%x1, 28(%x2) #2419 pc 33472
	addi	%x6, %x3, 0  #2420 pc 33476
	addi	%x3, %x3, 32  #2420 pc 33480
	sw	%x5, 28(%x6)  #2420 pc 33484
	lw	%x5, 24(%x2)  #2420 pc 33488
	sw	%x5, 24(%x6)  #2420 pc 33492
	lw	%x5, 20(%x2)  #2420 pc 33496
	sw	%x5, 20(%x6)  #2420 pc 33500
	lw	%x5, 16(%x2)  #2420 pc 33504
	sw	%x5, 16(%x6)  #2420 pc 33508
	lw	%x5, 12(%x2)  #2420 pc 33512
	sw	%x5, 12(%x6)  #2420 pc 33516
	lw	%x5, 8(%x2)  #2420 pc 33520
	sw	%x5, 8(%x6)  #2420 pc 33524
	lw	%x5, 4(%x2)  #2420 pc 33528
	sw	%x5, 4(%x6)  #2420 pc 33532
	lw	%x5, 0(%x2)  #2420 pc 33536
	sw	%x5, 0(%x6)  #2420 pc 33540
	addi	%x5, %x6, 0  #2420 pc 33544
	ret #pc 33548
	nop #pc 33552
init_line_elements.3063:  #pc 33556
	bge	%x6, %x0, 12  #2425 pc 33556
	j	bge_else.9591 #pc 33560
	nop #pc 33564
	sw	%x5, 0(%x2)  #2426 pc 33568
	sw	%x6, 4(%x2)  #2426 pc 33572
	sw	%x1, 8(%x2)  #2426 pc 33576
	addi	%x2, %x2, 12  #2426 pc 33580
	jal	%x1, create_pixel.3061  #2426 pc 33584
	addi	%x2, %x2, -12  #2426 pc 33588
	lw	%x1, 8(%x2) #2426 pc 33592
	lw	%x6, 4(%x2)  #2426 pc 33596
	slli	%x7, %x6, 2  #2426 pc 33600
	lw	%x8, 0(%x2)  #2426 pc 33604
	add	%x31, %x7, %x8  #2426 pc 33608
	sw	%x5, 0(%x31)  #2426 pc 33612
	addi	%x6, %x6, -1  #2427 pc 33616
	addi	%x5, %x8, 0  #0 pc 33620
	j	init_line_elements.3063  #2427 pc 33624
	nop #pc 33628
bge_else.9591: #pc 33632
	ret #pc 33632
	nop #pc 33636
create_pixelline.3066:  #pc 33640
	lw	%x5, 4(%x29)  #0 pc 33640
	lw	%x6, 0(%x5)  #2434 pc 33644
	sw	%x5, 0(%x2)  #2434 pc 33648
	sw	%x6, 4(%x2)  #2434 pc 33652
	sw	%x1, 8(%x2)  #2434 pc 33656
	addi	%x2, %x2, 12  #2434 pc 33660
	jal	%x1, create_pixel.3061  #2434 pc 33664
	addi	%x2, %x2, -12  #2434 pc 33668
	lw	%x1, 8(%x2) #2434 pc 33672
	addi	%x6, %x5, 0  #2434 pc 33676
	lw	%x5, 4(%x2)  #2434 pc 33680
	sw	%x1, 8(%x2)  #2434 pc 33684
	addi	%x2, %x2, 12  #2434 pc 33688
	jal	%x1, create_array.2599  #2434 pc 33692
	addi	%x2, %x2, -12  #2434 pc 33696
	lw	%x1, 8(%x2) #2434 pc 33700
	lw	%x6, 0(%x2)  #2435 pc 33704
	lw	%x6, 0(%x6)  #2435 pc 33708
	addi	%x6, %x6, -2  #2435 pc 33712
	j	init_line_elements.3063  #2435 pc 33716
	nop #pc 33720
tan.3068:  #pc 33724
	fsw	%f0, 0(%x2)  #2448 pc 33724
	sw	%x1, 8(%x2)  #2448 pc 33728
	addi	%x2, %x2, 12  #2448 pc 33732
	jal	%x1, sin.2549  #2448 pc 33736
	addi	%x2, %x2, -12  #2448 pc 33740
	lw	%x1, 8(%x2) #2448 pc 33744
	flw	%f1, 0(%x2)  #2448 pc 33748
	fsw	%f0, 8(%x2)  #2448 pc 33752
	fadd	%f0, %f1, %f30  #0 pc 33756
	sw	%x1, 16(%x2)  #2448 pc 33760
	addi	%x2, %x2, 20  #2448 pc 33764
	jal	%x1, cos.2551  #2448 pc 33768
	addi	%x2, %x2, -20  #2448 pc 33772
	lw	%x1, 16(%x2) #2448 pc 33776
	flw	%f1, 8(%x2)  #2448 pc 33780
	fdiv	%f0, %f1, %f0  #2448 pc 33784
	ret #pc 33788
	nop #pc 33792
adjust_position.3070:  #pc 33796
	fmul	%f0, %f0, %f0  #2453 pc 33796
	fmv	%f2, l.6883  #0 pc 33800
	fadd	%f0, %f0, %f2  #2453 pc 33804
	fsqrt	%f0, %f0  #2453 pc 33808
	fmv	%f2, l.6317  #0 pc 33812
	fdiv	%f2, %f2, %f0  #2454 pc 33816
	fsw	%f0, 0(%x2)  #2455 pc 33820
	fsw	%f1, 8(%x2)  #2455 pc 33824
	fadd	%f0, %f2, %f30  #0 pc 33828
	sw	%x1, 16(%x2)  #2455 pc 33832
	addi	%x2, %x2, 20  #2455 pc 33836
	jal	%x1, atan.2553  #2455 pc 33840
	addi	%x2, %x2, -20  #2455 pc 33844
	lw	%x1, 16(%x2) #2455 pc 33848
	flw	%f1, 8(%x2)  #2456 pc 33852
	fmul	%f0, %f0, %f1  #2456 pc 33856
	sw	%x1, 16(%x2)  #2456 pc 33860
	addi	%x2, %x2, 20  #2456 pc 33864
	jal	%x1, tan.3068  #2456 pc 33868
	addi	%x2, %x2, -20  #2456 pc 33872
	lw	%x1, 16(%x2) #2456 pc 33876
	flw	%f1, 0(%x2)  #2457 pc 33880
	fmul	%f0, %f0, %f1  #2457 pc 33884
	ret #pc 33888
	nop #pc 33892
calc_dirvec.3073:  #pc 33896
	lw	%x8, 4(%x29)  #0 pc 33896
	addi	%x31, %x0, 5  #pc 33900
	bge	%x5, %x31, 12  #2462 pc 33904
	j	bge_else.9592 #pc 33908
	nop #pc 33912
	sw	%x7, 0(%x2)  #2463 pc 33916
	sw	%x8, 4(%x2)  #2463 pc 33920
	sw	%x6, 8(%x2)  #2463 pc 33924
	fsw	%f0, 16(%x2)  #2463 pc 33928
	fsw	%f1, 24(%x2)  #2463 pc 33932
	sw	%x1, 32(%x2)  #2463 pc 33936
	addi	%x2, %x2, 36  #2463 pc 33940
	jal	%x1, fsqr.2542  #2463 pc 33944
	addi	%x2, %x2, -36  #2463 pc 33948
	lw	%x1, 32(%x2) #2463 pc 33952
	flw	%f1, 24(%x2)  #2463 pc 33956
	fsw	%f0, 32(%x2)  #2463 pc 33960
	fadd	%f0, %f1, %f30  #0 pc 33964
	sw	%x1, 40(%x2)  #2463 pc 33968
	addi	%x2, %x2, 44  #2463 pc 33972
	jal	%x1, fsqr.2542  #2463 pc 33976
	addi	%x2, %x2, -44  #2463 pc 33980
	lw	%x1, 40(%x2) #2463 pc 33984
	flw	%f1, 32(%x2)  #2463 pc 33988
	fadd	%f0, %f1, %f0  #2463 pc 33992
	fmv	%f1, l.6317  #0 pc 33996
	fadd	%f0, %f0, %f1  #2463 pc 34000
	fsqrt	%f0, %f0  #2463 pc 34004
	flw	%f1, 16(%x2)  #2464 pc 34008
	fdiv	%f1, %f1, %f0  #2464 pc 34012
	flw	%f2, 24(%x2)  #2465 pc 34016
	fdiv	%f2, %f2, %f0  #2465 pc 34020
	fmv	%f3, l.6317  #0 pc 34024
	fdiv	%f0, %f3, %f0  #2466 pc 34028
	lw	%x5, 8(%x2)  #2469 pc 34032
	slli	%x5, %x5, 2  #2469 pc 34036
	lw	%x6, 4(%x2)  #2469 pc 34040
	add	%x31, %x5, %x6  #2469 pc 34044
	lw	%x5, 0(%x31)  #2469 pc 34048
	lw	%x6, 0(%x2)  #2470 pc 34052
	slli	%x7, %x6, 2  #2470 pc 34056
	add	%x31, %x7, %x5  #2470 pc 34060
	lw	%x7, 0(%x31)  #2470 pc 34064
	sw	%x5, 40(%x2)  #2470 pc 34068
	fsw	%f0, 48(%x2)  #2470 pc 34072
	fsw	%f2, 56(%x2)  #2470 pc 34076
	fsw	%f1, 64(%x2)  #2470 pc 34080
	addi	%x5, %x7, 0  #0 pc 34084
	sw	%x1, 72(%x2)  #2470 pc 34088
	addi	%x2, %x2, 76  #2470 pc 34092
	jal	%x1, d_vec.2749  #2470 pc 34096
	addi	%x2, %x2, -76  #2470 pc 34100
	lw	%x1, 72(%x2) #2470 pc 34104
	flw	%f0, 64(%x2)  #2470 pc 34108
	flw	%f1, 56(%x2)  #2470 pc 34112
	flw	%f2, 48(%x2)  #2470 pc 34116
	sw	%x1, 72(%x2)  #2470 pc 34120
	addi	%x2, %x2, 76  #2470 pc 34124
	jal	%x1, vecset.2650  #2470 pc 34128
	addi	%x2, %x2, -76  #2470 pc 34132
	lw	%x1, 72(%x2) #2470 pc 34136
	lw	%x5, 0(%x2)  #2471 pc 34140
	addi	%x6, %x5, 40  #2471 pc 34144
	slli	%x6, %x6, 2  #2471 pc 34148
	lw	%x7, 40(%x2)  #2471 pc 34152
	add	%x31, %x6, %x7  #2471 pc 34156
	lw	%x6, 0(%x31)  #2471 pc 34160
	addi	%x5, %x6, 0  #0 pc 34164
	sw	%x1, 72(%x2)  #2471 pc 34168
	addi	%x2, %x2, 76  #2471 pc 34172
	jal	%x1, d_vec.2749  #2471 pc 34176
	addi	%x2, %x2, -76  #2471 pc 34180
	lw	%x1, 72(%x2) #2471 pc 34184
	flw	%f0, 56(%x2)  #2471 pc 34188
	sw	%x5, 72(%x2)  #2471 pc 34192
	sw	%x1, 76(%x2)  #2471 pc 34196
	addi	%x2, %x2, 80  #2471 pc 34200
	jal	%x1, fneg.2540  #2471 pc 34204
	addi	%x2, %x2, -80  #2471 pc 34208
	lw	%x1, 76(%x2) #2471 pc 34212
	fadd	%f2, %f0, %f30  #2471 pc 34216
	flw	%f0, 64(%x2)  #2471 pc 34220
	flw	%f1, 48(%x2)  #2471 pc 34224
	lw	%x5, 72(%x2)  #2471 pc 34228
	sw	%x1, 76(%x2)  #2471 pc 34232
	addi	%x2, %x2, 80  #2471 pc 34236
	jal	%x1, vecset.2650  #2471 pc 34240
	addi	%x2, %x2, -80  #2471 pc 34244
	lw	%x1, 76(%x2) #2471 pc 34248
	lw	%x5, 0(%x2)  #2472 pc 34252
	addi	%x6, %x5, 80  #2472 pc 34256
	slli	%x6, %x6, 2  #2472 pc 34260
	lw	%x7, 40(%x2)  #2472 pc 34264
	add	%x31, %x6, %x7  #2472 pc 34268
	lw	%x6, 0(%x31)  #2472 pc 34272
	addi	%x5, %x6, 0  #0 pc 34276
	sw	%x1, 76(%x2)  #2472 pc 34280
	addi	%x2, %x2, 80  #2472 pc 34284
	jal	%x1, d_vec.2749  #2472 pc 34288
	addi	%x2, %x2, -80  #2472 pc 34292
	lw	%x1, 76(%x2) #2472 pc 34296
	flw	%f0, 64(%x2)  #2472 pc 34300
	sw	%x5, 76(%x2)  #2472 pc 34304
	sw	%x1, 80(%x2)  #2472 pc 34308
	addi	%x2, %x2, 84  #2472 pc 34312
	jal	%x1, fneg.2540  #2472 pc 34316
	addi	%x2, %x2, -84  #2472 pc 34320
	lw	%x1, 80(%x2) #2472 pc 34324
	flw	%f1, 56(%x2)  #2472 pc 34328
	fsw	%f0, 80(%x2)  #2472 pc 34332
	fadd	%f0, %f1, %f30  #0 pc 34336
	sw	%x1, 88(%x2)  #2472 pc 34340
	addi	%x2, %x2, 92  #2472 pc 34344
	jal	%x1, fneg.2540  #2472 pc 34348
	addi	%x2, %x2, -92  #2472 pc 34352
	lw	%x1, 88(%x2) #2472 pc 34356
	fadd	%f2, %f0, %f30  #2472 pc 34360
	flw	%f0, 48(%x2)  #2472 pc 34364
	flw	%f1, 80(%x2)  #2472 pc 34368
	lw	%x5, 76(%x2)  #2472 pc 34372
	sw	%x1, 88(%x2)  #2472 pc 34376
	addi	%x2, %x2, 92  #2472 pc 34380
	jal	%x1, vecset.2650  #2472 pc 34384
	addi	%x2, %x2, -92  #2472 pc 34388
	lw	%x1, 88(%x2) #2472 pc 34392
	lw	%x5, 0(%x2)  #2473 pc 34396
	addi	%x6, %x5, 1  #2473 pc 34400
	slli	%x6, %x6, 2  #2473 pc 34404
	lw	%x7, 40(%x2)  #2473 pc 34408
	add	%x31, %x6, %x7  #2473 pc 34412
	lw	%x6, 0(%x31)  #2473 pc 34416
	addi	%x5, %x6, 0  #0 pc 34420
	sw	%x1, 88(%x2)  #2473 pc 34424
	addi	%x2, %x2, 92  #2473 pc 34428
	jal	%x1, d_vec.2749  #2473 pc 34432
	addi	%x2, %x2, -92  #2473 pc 34436
	lw	%x1, 88(%x2) #2473 pc 34440
	flw	%f0, 64(%x2)  #2473 pc 34444
	sw	%x5, 88(%x2)  #2473 pc 34448
	sw	%x1, 92(%x2)  #2473 pc 34452
	addi	%x2, %x2, 96  #2473 pc 34456
	jal	%x1, fneg.2540  #2473 pc 34460
	addi	%x2, %x2, -96  #2473 pc 34464
	lw	%x1, 92(%x2) #2473 pc 34468
	flw	%f1, 56(%x2)  #2473 pc 34472
	fsw	%f0, 96(%x2)  #2473 pc 34476
	fadd	%f0, %f1, %f30  #0 pc 34480
	sw	%x1, 104(%x2)  #2473 pc 34484
	addi	%x2, %x2, 108  #2473 pc 34488
	jal	%x1, fneg.2540  #2473 pc 34492
	addi	%x2, %x2, -108  #2473 pc 34496
	lw	%x1, 104(%x2) #2473 pc 34500
	flw	%f1, 48(%x2)  #2473 pc 34504
	fsw	%f0, 104(%x2)  #2473 pc 34508
	fadd	%f0, %f1, %f30  #0 pc 34512
	sw	%x1, 112(%x2)  #2473 pc 34516
	addi	%x2, %x2, 116  #2473 pc 34520
	jal	%x1, fneg.2540  #2473 pc 34524
	addi	%x2, %x2, -116  #2473 pc 34528
	lw	%x1, 112(%x2) #2473 pc 34532
	fadd	%f2, %f0, %f30  #2473 pc 34536
	flw	%f0, 96(%x2)  #2473 pc 34540
	flw	%f1, 104(%x2)  #2473 pc 34544
	lw	%x5, 88(%x2)  #2473 pc 34548
	sw	%x1, 112(%x2)  #2473 pc 34552
	addi	%x2, %x2, 116  #2473 pc 34556
	jal	%x1, vecset.2650  #2473 pc 34560
	addi	%x2, %x2, -116  #2473 pc 34564
	lw	%x1, 112(%x2) #2473 pc 34568
	lw	%x5, 0(%x2)  #2474 pc 34572
	addi	%x6, %x5, 41  #2474 pc 34576
	slli	%x6, %x6, 2  #2474 pc 34580
	lw	%x7, 40(%x2)  #2474 pc 34584
	add	%x31, %x6, %x7  #2474 pc 34588
	lw	%x6, 0(%x31)  #2474 pc 34592
	addi	%x5, %x6, 0  #0 pc 34596
	sw	%x1, 112(%x2)  #2474 pc 34600
	addi	%x2, %x2, 116  #2474 pc 34604
	jal	%x1, d_vec.2749  #2474 pc 34608
	addi	%x2, %x2, -116  #2474 pc 34612
	lw	%x1, 112(%x2) #2474 pc 34616
	flw	%f0, 64(%x2)  #2474 pc 34620
	sw	%x5, 112(%x2)  #2474 pc 34624
	sw	%x1, 116(%x2)  #2474 pc 34628
	addi	%x2, %x2, 120  #2474 pc 34632
	jal	%x1, fneg.2540  #2474 pc 34636
	addi	%x2, %x2, -120  #2474 pc 34640
	lw	%x1, 116(%x2) #2474 pc 34644
	flw	%f1, 48(%x2)  #2474 pc 34648
	fsw	%f0, 120(%x2)  #2474 pc 34652
	fadd	%f0, %f1, %f30  #0 pc 34656
	sw	%x1, 128(%x2)  #2474 pc 34660
	addi	%x2, %x2, 132  #2474 pc 34664
	jal	%x1, fneg.2540  #2474 pc 34668
	addi	%x2, %x2, -132  #2474 pc 34672
	lw	%x1, 128(%x2) #2474 pc 34676
	fadd	%f1, %f0, %f30  #2474 pc 34680
	flw	%f0, 120(%x2)  #2474 pc 34684
	flw	%f2, 56(%x2)  #2474 pc 34688
	lw	%x5, 112(%x2)  #2474 pc 34692
	sw	%x1, 128(%x2)  #2474 pc 34696
	addi	%x2, %x2, 132  #2474 pc 34700
	jal	%x1, vecset.2650  #2474 pc 34704
	addi	%x2, %x2, -132  #2474 pc 34708
	lw	%x1, 128(%x2) #2474 pc 34712
	lw	%x5, 0(%x2)  #2475 pc 34716
	addi	%x5, %x5, 81  #2475 pc 34720
	slli	%x5, %x5, 2  #2475 pc 34724
	lw	%x6, 40(%x2)  #2475 pc 34728
	add	%x31, %x5, %x6  #2475 pc 34732
	lw	%x5, 0(%x31)  #2475 pc 34736
	sw	%x1, 128(%x2)  #2475 pc 34740
	addi	%x2, %x2, 132  #2475 pc 34744
	jal	%x1, d_vec.2749  #2475 pc 34748
	addi	%x2, %x2, -132  #2475 pc 34752
	lw	%x1, 128(%x2) #2475 pc 34756
	flw	%f0, 48(%x2)  #2475 pc 34760
	sw	%x5, 128(%x2)  #2475 pc 34764
	sw	%x1, 132(%x2)  #2475 pc 34768
	addi	%x2, %x2, 136  #2475 pc 34772
	jal	%x1, fneg.2540  #2475 pc 34776
	addi	%x2, %x2, -136  #2475 pc 34780
	lw	%x1, 132(%x2) #2475 pc 34784
	flw	%f1, 64(%x2)  #2475 pc 34788
	flw	%f2, 56(%x2)  #2475 pc 34792
	lw	%x5, 128(%x2)  #2475 pc 34796
	j	vecset.2650  #2475 pc 34800
	nop #pc 34804
bge_else.9592: #pc 34808
	fsw	%f2, 136(%x2)  #2477 pc 34808
	sw	%x7, 0(%x2)  #2477 pc 34812
	sw	%x6, 8(%x2)  #2477 pc 34816
	sw	%x29, 144(%x2)  #2477 pc 34820
	fsw	%f3, 152(%x2)  #2477 pc 34824
	sw	%x5, 160(%x2)  #2477 pc 34828
	fadd	%f0, %f1, %f30  #0 pc 34832
	fadd	%f1, %f2, %f30  #0 pc 34836
	sw	%x1, 164(%x2)  #2477 pc 34840
	addi	%x2, %x2, 168  #2477 pc 34844
	jal	%x1, adjust_position.3070  #2477 pc 34848
	addi	%x2, %x2, -168  #2477 pc 34852
	lw	%x1, 164(%x2) #2477 pc 34856
	lw	%x5, 160(%x2)  #2478 pc 34860
	addi	%x5, %x5, 1  #2478 pc 34864
	flw	%f1, 152(%x2)  #2478 pc 34868
	fsw	%f0, 168(%x2)  #2478 pc 34872
	sw	%x5, 176(%x2)  #2478 pc 34876
	sw	%x1, 180(%x2)  #2478 pc 34880
	addi	%x2, %x2, 184  #2478 pc 34884
	jal	%x1, adjust_position.3070  #2478 pc 34888
	addi	%x2, %x2, -184  #2478 pc 34892
	lw	%x1, 180(%x2) #2478 pc 34896
	fadd	%f1, %f0, %f30  #2478 pc 34900
	flw	%f0, 168(%x2)  #2478 pc 34904
	flw	%f2, 136(%x2)  #2478 pc 34908
	flw	%f3, 152(%x2)  #2478 pc 34912
	lw	%x5, 176(%x2)  #2478 pc 34916
	lw	%x6, 8(%x2)  #2478 pc 34920
	lw	%x7, 0(%x2)  #2478 pc 34924
	lw	%x29, 144(%x2)  #2478 pc 34928
	lw	%x30, 0(%x29)  #2478 pc 34932
	jalr	%x0, %x30, 0  #2478 pc 34936
	nop #pc 34940
calc_dirvecs.3081:  #pc 34944
	lw	%x8, 4(%x29)  #0 pc 34944
	bge	%x5, %x0, 12  #2483 pc 34948
	j	bge_else.9600 #pc 34952
	nop #pc 34956
	sw	%x29, 0(%x2)  #2485 pc 34960
	sw	%x5, 4(%x2)  #2485 pc 34964
	fsw	%f0, 8(%x2)  #2485 pc 34968
	sw	%x7, 16(%x2)  #2485 pc 34972
	sw	%x6, 20(%x2)  #2485 pc 34976
	sw	%x8, 24(%x2)  #2485 pc 34980
	sw	%x1, 28(%x2)  #2485 pc 34984
	addi	%x2, %x2, 32  #2485 pc 34988
	jal	%x1, float_of_int.2559  #2485 pc 34992
	addi	%x2, %x2, -32  #2485 pc 34996
	lw	%x1, 28(%x2) #2485 pc 35000
	fmv	%f1, l.6326  #0 pc 35004
	fmul	%f0, %f0, %f1  #2485 pc 35008
	fmv	%f1, l.7016  #0 pc 35012
	fsub	%f2, %f0, %f1  #2485 pc 35016
	addi	%x5, %x0, 0  #0 pc 35020
	fmv	%f0, l.6305  #0 pc 35024
	fmv	%f1, l.6305  #0 pc 35028
	flw	%f3, 8(%x2)  #2486 pc 35032
	lw	%x6, 20(%x2)  #2486 pc 35036
	lw	%x7, 16(%x2)  #2486 pc 35040
	lw	%x29, 24(%x2)  #2486 pc 35044
	sw	%x1, 28(%x2)  #2486 pc 35048
	lw	%x30, 0(%x29)  #2486 pc 35052
	addi	%x2, %x2, 32  #2486 pc 35056
	jalr	%x1, %x30, 0  #2486 pc 35060
	addi	%x2, %x2, -32  #2486 pc 35064
	lw	%x1, 28(%x2)  #2486 pc 35068
	lw	%x5, 4(%x2)  #2488 pc 35072
	sw	%x1, 28(%x2)  #2488 pc 35076
	addi	%x2, %x2, 32  #2488 pc 35080
	jal	%x1, float_of_int.2559  #2488 pc 35084
	addi	%x2, %x2, -32  #2488 pc 35088
	lw	%x1, 28(%x2) #2488 pc 35092
	fmv	%f1, l.6326  #0 pc 35096
	fmul	%f0, %f0, %f1  #2488 pc 35100
	fmv	%f1, l.6883  #0 pc 35104
	fadd	%f2, %f0, %f1  #2488 pc 35108
	addi	%x5, %x0, 0  #0 pc 35112
	fmv	%f0, l.6305  #0 pc 35116
	fmv	%f1, l.6305  #0 pc 35120
	lw	%x6, 16(%x2)  #2489 pc 35124
	addi	%x7, %x6, 2  #2489 pc 35128
	flw	%f3, 8(%x2)  #2489 pc 35132
	lw	%x8, 20(%x2)  #2489 pc 35136
	lw	%x29, 24(%x2)  #2489 pc 35140
	addi	%x6, %x8, 0  #0 pc 35144
	sw	%x1, 28(%x2)  #2489 pc 35148
	lw	%x30, 0(%x29)  #2489 pc 35152
	addi	%x2, %x2, 32  #2489 pc 35156
	jalr	%x1, %x30, 0  #2489 pc 35160
	addi	%x2, %x2, -32  #2489 pc 35164
	lw	%x1, 28(%x2)  #2489 pc 35168
	lw	%x5, 4(%x2)  #2491 pc 35172
	addi	%x5, %x5, -1  #2491 pc 35176
	addi	%x6, %x0, 1  #0 pc 35180
	lw	%x7, 20(%x2)  #2491 pc 35184
	sw	%x5, 28(%x2)  #2491 pc 35188
	addi	%x5, %x7, 0  #0 pc 35192
	sw	%x1, 32(%x2)  #2491 pc 35196
	addi	%x2, %x2, 36  #2491 pc 35200
	jal	%x1, add_mod5.2647  #2491 pc 35204
	addi	%x2, %x2, -36  #2491 pc 35208
	lw	%x1, 32(%x2) #2491 pc 35212
	addi	%x6, %x5, 0  #2491 pc 35216
	flw	%f0, 8(%x2)  #2491 pc 35220
	lw	%x5, 28(%x2)  #2491 pc 35224
	lw	%x7, 16(%x2)  #2491 pc 35228
	lw	%x29, 0(%x2)  #2491 pc 35232
	lw	%x30, 0(%x29)  #2491 pc 35236
	jalr	%x0, %x30, 0  #2491 pc 35240
	nop #pc 35244
bge_else.9600: #pc 35248
	ret #pc 35248
	nop #pc 35252
calc_dirvec_rows.3086:  #pc 35256
	lw	%x8, 4(%x29)  #0 pc 35256
	bge	%x5, %x0, 12  #2497 pc 35260
	j	bge_else.9602 #pc 35264
	nop #pc 35268
	sw	%x29, 0(%x2)  #2498 pc 35272
	sw	%x5, 4(%x2)  #2498 pc 35276
	sw	%x7, 8(%x2)  #2498 pc 35280
	sw	%x6, 12(%x2)  #2498 pc 35284
	sw	%x8, 16(%x2)  #2498 pc 35288
	sw	%x1, 20(%x2)  #2498 pc 35292
	addi	%x2, %x2, 24  #2498 pc 35296
	jal	%x1, float_of_int.2559  #2498 pc 35300
	addi	%x2, %x2, -24  #2498 pc 35304
	lw	%x1, 20(%x2) #2498 pc 35308
	fmv	%f1, l.6326  #0 pc 35312
	fmul	%f0, %f0, %f1  #2498 pc 35316
	fmv	%f1, l.7016  #0 pc 35320
	fsub	%f0, %f0, %f1  #2498 pc 35324
	addi	%x5, %x0, 4  #0 pc 35328
	lw	%x6, 12(%x2)  #2499 pc 35332
	lw	%x7, 8(%x2)  #2499 pc 35336
	lw	%x29, 16(%x2)  #2499 pc 35340
	sw	%x1, 20(%x2)  #2499 pc 35344
	lw	%x30, 0(%x29)  #2499 pc 35348
	addi	%x2, %x2, 24  #2499 pc 35352
	jalr	%x1, %x30, 0  #2499 pc 35356
	addi	%x2, %x2, -24  #2499 pc 35360
	lw	%x1, 20(%x2)  #2499 pc 35364
	lw	%x5, 4(%x2)  #2500 pc 35368
	addi	%x5, %x5, -1  #2500 pc 35372
	addi	%x6, %x0, 2  #0 pc 35376
	lw	%x7, 12(%x2)  #2500 pc 35380
	sw	%x5, 20(%x2)  #2500 pc 35384
	addi	%x5, %x7, 0  #0 pc 35388
	sw	%x1, 24(%x2)  #2500 pc 35392
	addi	%x2, %x2, 28  #2500 pc 35396
	jal	%x1, add_mod5.2647  #2500 pc 35400
	addi	%x2, %x2, -28  #2500 pc 35404
	lw	%x1, 24(%x2) #2500 pc 35408
	addi	%x6, %x5, 0  #2500 pc 35412
	lw	%x5, 8(%x2)  #2500 pc 35416
	addi	%x7, %x5, 4  #2500 pc 35420
	lw	%x5, 20(%x2)  #2500 pc 35424
	lw	%x29, 0(%x2)  #2500 pc 35428
	lw	%x30, 0(%x29)  #2500 pc 35432
	jalr	%x0, %x30, 0  #2500 pc 35436
	nop #pc 35440
bge_else.9602: #pc 35444
	ret #pc 35444
	nop #pc 35448
create_dirvec.3090:  #pc 35452
	lw	%x5, 4(%x29)  #0 pc 35452
	addi	%x6, %x0, 3  #0 pc 35456
	fmv	%f0, l.6305  #0 pc 35460
	sw	%x5, 0(%x2)  #2510 pc 35464
	addi	%x5, %x6, 0  #0 pc 35468
	sw	%x1, 4(%x2)  #2510 pc 35472
	addi	%x2, %x2, 8  #2510 pc 35476
	jal	%x1, create_float_array.2606  #2510 pc 35480
	addi	%x2, %x2, -8  #2510 pc 35484
	lw	%x1, 4(%x2) #2510 pc 35488
	addi	%x6, %x5, 0  #2510 pc 35492
	lw	%x5, 0(%x2)  #2511 pc 35496
	lw	%x5, 0(%x5)  #2511 pc 35500
	sw	%x6, 4(%x2)  #2511 pc 35504
	sw	%x1, 8(%x2)  #2511 pc 35508
	addi	%x2, %x2, 12  #2511 pc 35512
	jal	%x1, create_array.2599  #2511 pc 35516
	addi	%x2, %x2, -12  #2511 pc 35520
	lw	%x1, 8(%x2) #2511 pc 35524
	addi	%x6, %x3, 0  #2512 pc 35528
	addi	%x3, %x3, 8  #2512 pc 35532
	sw	%x5, 4(%x6)  #2512 pc 35536
	lw	%x5, 4(%x2)  #2512 pc 35540
	sw	%x5, 0(%x6)  #2512 pc 35544
	addi	%x5, %x6, 0  #2512 pc 35548
	ret #pc 35552
	nop #pc 35556
create_dirvec_elements.3092:  #pc 35560
	lw	%x7, 4(%x29)  #0 pc 35560
	bge	%x6, %x0, 12  #2516 pc 35564
	j	bge_else.9604 #pc 35568
	nop #pc 35572
	sw	%x29, 0(%x2)  #2517 pc 35576
	sw	%x5, 4(%x2)  #2517 pc 35580
	sw	%x6, 8(%x2)  #2517 pc 35584
	addi	%x29, %x7, 0  #0 pc 35588
	sw	%x1, 12(%x2)  #2517 pc 35592
	lw	%x30, 0(%x29)  #2517 pc 35596
	addi	%x2, %x2, 16  #2517 pc 35600
	jalr	%x1, %x30, 0  #2517 pc 35604
	addi	%x2, %x2, -16  #2517 pc 35608
	lw	%x1, 12(%x2)  #2517 pc 35612
	lw	%x6, 8(%x2)  #2517 pc 35616
	slli	%x7, %x6, 2  #2517 pc 35620
	lw	%x8, 4(%x2)  #2517 pc 35624
	add	%x31, %x7, %x8  #2517 pc 35628
	sw	%x5, 0(%x31)  #2517 pc 35632
	addi	%x6, %x6, -1  #2518 pc 35636
	lw	%x29, 0(%x2)  #2518 pc 35640
	addi	%x5, %x8, 0  #0 pc 35644
	lw	%x30, 0(%x29)  #2518 pc 35648
	jalr	%x0, %x30, 0  #2518 pc 35652
	nop #pc 35656
bge_else.9604: #pc 35660
	ret #pc 35660
	nop #pc 35664
create_dirvecs.3095:  #pc 35668
	lw	%x6, 12(%x29)  #0 pc 35668
	lw	%x7, 8(%x29)  #0 pc 35672
	lw	%x8, 4(%x29)  #0 pc 35676
	bge	%x5, %x0, 12  #2523 pc 35680
	j	bge_else.9606 #pc 35684
	nop #pc 35688
	addi	%x9, %x0, 120  #0 pc 35692
	sw	%x29, 0(%x2)  #2524 pc 35696
	sw	%x7, 4(%x2)  #2524 pc 35700
	sw	%x6, 8(%x2)  #2524 pc 35704
	sw	%x5, 12(%x2)  #2524 pc 35708
	sw	%x9, 16(%x2)  #2524 pc 35712
	addi	%x29, %x8, 0  #0 pc 35716
	sw	%x1, 20(%x2)  #2524 pc 35720
	lw	%x30, 0(%x29)  #2524 pc 35724
	addi	%x2, %x2, 24  #2524 pc 35728
	jalr	%x1, %x30, 0  #2524 pc 35732
	addi	%x2, %x2, -24  #2524 pc 35736
	lw	%x1, 20(%x2)  #2524 pc 35740
	addi	%x6, %x5, 0  #2524 pc 35744
	lw	%x5, 16(%x2)  #2524 pc 35748
	sw	%x1, 20(%x2)  #2524 pc 35752
	addi	%x2, %x2, 24  #2524 pc 35756
	jal	%x1, create_array.2599  #2524 pc 35760
	addi	%x2, %x2, -24  #2524 pc 35764
	lw	%x1, 20(%x2) #2524 pc 35768
	lw	%x6, 12(%x2)  #2524 pc 35772
	slli	%x7, %x6, 2  #2524 pc 35776
	lw	%x8, 8(%x2)  #2524 pc 35780
	add	%x31, %x7, %x8  #2524 pc 35784
	sw	%x5, 0(%x31)  #2524 pc 35788
	slli	%x5, %x6, 2  #2525 pc 35792
	add	%x31, %x5, %x8  #2525 pc 35796
	lw	%x5, 0(%x31)  #2525 pc 35800
	addi	%x7, %x0, 118  #0 pc 35804
	lw	%x29, 4(%x2)  #2525 pc 35808
	addi	%x6, %x7, 0  #0 pc 35812
	sw	%x1, 20(%x2)  #2525 pc 35816
	lw	%x30, 0(%x29)  #2525 pc 35820
	addi	%x2, %x2, 24  #2525 pc 35824
	jalr	%x1, %x30, 0  #2525 pc 35828
	addi	%x2, %x2, -24  #2525 pc 35832
	lw	%x1, 20(%x2)  #2525 pc 35836
	lw	%x5, 12(%x2)  #2526 pc 35840
	addi	%x5, %x5, -1  #2526 pc 35844
	lw	%x29, 0(%x2)  #2526 pc 35848
	lw	%x30, 0(%x29)  #2526 pc 35852
	jalr	%x0, %x30, 0  #2526 pc 35856
	nop #pc 35860
bge_else.9606: #pc 35864
	ret #pc 35864
	nop #pc 35868
init_dirvec_constants.3097:  #pc 35872
	lw	%x7, 4(%x29)  #0 pc 35872
	bge	%x6, %x0, 12  #2535 pc 35876
	j	bge_else.9608 #pc 35880
	nop #pc 35884
	slli	%x8, %x6, 2  #2536 pc 35888
	add	%x31, %x8, %x5  #2536 pc 35892
	lw	%x8, 0(%x31)  #2536 pc 35896
	sw	%x5, 0(%x2)  #2536 pc 35900
	sw	%x29, 4(%x2)  #2536 pc 35904
	sw	%x6, 8(%x2)  #2536 pc 35908
	addi	%x5, %x8, 0  #0 pc 35912
	addi	%x29, %x7, 0  #0 pc 35916
	sw	%x1, 12(%x2)  #2536 pc 35920
	lw	%x30, 0(%x29)  #2536 pc 35924
	addi	%x2, %x2, 16  #2536 pc 35928
	jalr	%x1, %x30, 0  #2536 pc 35932
	addi	%x2, %x2, -16  #2536 pc 35936
	lw	%x1, 12(%x2)  #2536 pc 35940
	lw	%x5, 8(%x2)  #2537 pc 35944
	addi	%x6, %x5, -1  #2537 pc 35948
	lw	%x5, 0(%x2)  #2537 pc 35952
	lw	%x29, 4(%x2)  #2537 pc 35956
	lw	%x30, 0(%x29)  #2537 pc 35960
	jalr	%x0, %x30, 0  #2537 pc 35964
	nop #pc 35968
bge_else.9608: #pc 35972
	ret #pc 35972
	nop #pc 35976
init_vecset_constants.3100:  #pc 35980
	lw	%x6, 8(%x29)  #0 pc 35980
	lw	%x7, 4(%x29)  #0 pc 35984
	bge	%x5, %x0, 12  #2542 pc 35988
	j	bge_else.9610 #pc 35992
	nop #pc 35996
	slli	%x8, %x5, 2  #2543 pc 36000
	add	%x31, %x8, %x7  #2543 pc 36004
	lw	%x7, 0(%x31)  #2543 pc 36008
	addi	%x8, %x0, 119  #0 pc 36012
	sw	%x29, 0(%x2)  #2543 pc 36016
	sw	%x5, 4(%x2)  #2543 pc 36020
	addi	%x5, %x7, 0  #0 pc 36024
	addi	%x29, %x6, 0  #0 pc 36028
	addi	%x6, %x8, 0  #0 pc 36032
	sw	%x1, 8(%x2)  #2543 pc 36036
	lw	%x30, 0(%x29)  #2543 pc 36040
	addi	%x2, %x2, 12  #2543 pc 36044
	jalr	%x1, %x30, 0  #2543 pc 36048
	addi	%x2, %x2, -12  #2543 pc 36052
	lw	%x1, 8(%x2)  #2543 pc 36056
	lw	%x5, 4(%x2)  #2544 pc 36060
	addi	%x5, %x5, -1  #2544 pc 36064
	lw	%x29, 0(%x2)  #2544 pc 36068
	lw	%x30, 0(%x29)  #2544 pc 36072
	jalr	%x0, %x30, 0  #2544 pc 36076
	nop #pc 36080
bge_else.9610: #pc 36084
	ret #pc 36084
	nop #pc 36088
init_dirvecs.3102:  #pc 36092
	lw	%x5, 12(%x29)  #0 pc 36092
	lw	%x6, 8(%x29)  #0 pc 36096
	lw	%x7, 4(%x29)  #0 pc 36100
	addi	%x8, %x0, 4  #0 pc 36104
	sw	%x5, 0(%x2)  #2549 pc 36108
	sw	%x7, 4(%x2)  #2549 pc 36112
	addi	%x5, %x8, 0  #0 pc 36116
	addi	%x29, %x6, 0  #0 pc 36120
	sw	%x1, 8(%x2)  #2549 pc 36124
	lw	%x30, 0(%x29)  #2549 pc 36128
	addi	%x2, %x2, 12  #2549 pc 36132
	jalr	%x1, %x30, 0  #2549 pc 36136
	addi	%x2, %x2, -12  #2549 pc 36140
	lw	%x1, 8(%x2)  #2549 pc 36144
	addi	%x5, %x0, 9  #0 pc 36148
	addi	%x6, %x0, 0  #0 pc 36152
	addi	%x7, %x0, 0  #0 pc 36156
	lw	%x29, 4(%x2)  #2550 pc 36160
	sw	%x1, 8(%x2)  #2550 pc 36164
	lw	%x30, 0(%x29)  #2550 pc 36168
	addi	%x2, %x2, 12  #2550 pc 36172
	jalr	%x1, %x30, 0  #2550 pc 36176
	addi	%x2, %x2, -12  #2550 pc 36180
	lw	%x1, 8(%x2)  #2550 pc 36184
	addi	%x5, %x0, 4  #0 pc 36188
	lw	%x29, 0(%x2)  #2551 pc 36192
	lw	%x30, 0(%x29)  #2551 pc 36196
	jalr	%x0, %x30, 0  #2551 pc 36200
	nop #pc 36204
add_reflection.3104:  #pc 36208
	lw	%x7, 12(%x29)  #0 pc 36208
	lw	%x8, 8(%x29)  #0 pc 36212
	lw	%x29, 4(%x29)  #0 pc 36216
	sw	%x8, 0(%x2)  #2560 pc 36220
	sw	%x5, 4(%x2)  #2560 pc 36224
	sw	%x6, 8(%x2)  #2560 pc 36228
	fsw	%f0, 16(%x2)  #2560 pc 36232
	sw	%x7, 24(%x2)  #2560 pc 36236
	fsw	%f3, 32(%x2)  #2560 pc 36240
	fsw	%f2, 40(%x2)  #2560 pc 36244
	fsw	%f1, 48(%x2)  #2560 pc 36248
	sw	%x1, 56(%x2)  #2560 pc 36252
	lw	%x30, 0(%x29)  #2560 pc 36256
	addi	%x2, %x2, 60  #2560 pc 36260
	jalr	%x1, %x30, 0  #2560 pc 36264
	addi	%x2, %x2, -60  #2560 pc 36268
	lw	%x1, 56(%x2)  #2560 pc 36272
	sw	%x5, 56(%x2)  #2561 pc 36276
	sw	%x1, 60(%x2)  #2561 pc 36280
	addi	%x2, %x2, 64  #2561 pc 36284
	jal	%x1, d_vec.2749  #2561 pc 36288
	addi	%x2, %x2, -64  #2561 pc 36292
	lw	%x1, 60(%x2) #2561 pc 36296
	flw	%f0, 48(%x2)  #2561 pc 36300
	flw	%f1, 40(%x2)  #2561 pc 36304
	flw	%f2, 32(%x2)  #2561 pc 36308
	sw	%x1, 60(%x2)  #2561 pc 36312
	addi	%x2, %x2, 64  #2561 pc 36316
	jal	%x1, vecset.2650  #2561 pc 36320
	addi	%x2, %x2, -64  #2561 pc 36324
	lw	%x1, 60(%x2) #2561 pc 36328
	lw	%x5, 56(%x2)  #2562 pc 36332
	lw	%x29, 24(%x2)  #2562 pc 36336
	sw	%x1, 60(%x2)  #2562 pc 36340
	lw	%x30, 0(%x29)  #2562 pc 36344
	addi	%x2, %x2, 64  #2562 pc 36348
	jalr	%x1, %x30, 0  #2562 pc 36352
	addi	%x2, %x2, -64  #2562 pc 36356
	lw	%x1, 60(%x2)  #2562 pc 36360
	addi	%x5, %x3, 0  #2564 pc 36364
	addi	%x3, %x3, 12  #2564 pc 36368
	flw	%f0, 16(%x2)  #2564 pc 36372
	fsw	%f0, 8(%x5)  #2564 pc 36376
	lw	%x6, 56(%x2)  #2564 pc 36380
	sw	%x6, 4(%x5)  #2564 pc 36384
	lw	%x6, 8(%x2)  #2564 pc 36388
	sw	%x6, 0(%x5)  #2564 pc 36392
	lw	%x6, 4(%x2)  #2564 pc 36396
	slli	%x6, %x6, 2  #2564 pc 36400
	lw	%x7, 0(%x2)  #2564 pc 36404
	add	%x31, %x6, %x7  #2564 pc 36408
	sw	%x5, 0(%x31)  #2564 pc 36412
	ret #pc 36416
	nop #pc 36420
setup_rect_reflection.3111:  #pc 36424
	lw	%x7, 12(%x29)  #0 pc 36424
	lw	%x8, 8(%x29)  #0 pc 36428
	lw	%x9, 4(%x29)  #0 pc 36432
	addi	%x10, %x0, 4  #0 pc 36436
	sw	%x9, 0(%x2)  #2569 pc 36440
	sw	%x8, 4(%x2)  #2569 pc 36444
	sw	%x6, 8(%x2)  #2569 pc 36448
	sw	%x7, 12(%x2)  #2569 pc 36452
	addi	%x6, %x10, 0  #0 pc 36456
	sw	%x1, 16(%x2)  #2569 pc 36460
	addi	%x2, %x2, 20  #2569 pc 36464
	jal	%x1, mul.2568  #2569 pc 36468
	addi	%x2, %x2, -20  #2569 pc 36472
	lw	%x1, 16(%x2) #2569 pc 36476
	lw	%x6, 12(%x2)  #2570 pc 36480
	lw	%x7, 0(%x6)  #2570 pc 36484
	fmv	%f0, l.6317  #0 pc 36488
	lw	%x8, 8(%x2)  #2571 pc 36492
	sw	%x7, 16(%x2)  #2571 pc 36496
	sw	%x5, 20(%x2)  #2571 pc 36500
	fsw	%f0, 24(%x2)  #2571 pc 36504
	addi	%x5, %x8, 0  #0 pc 36508
	sw	%x1, 32(%x2)  #2571 pc 36512
	addi	%x2, %x2, 36  #2571 pc 36516
	jal	%x1, o_diffuse.2712  #2571 pc 36520
	addi	%x2, %x2, -36  #2571 pc 36524
	lw	%x1, 32(%x2) #2571 pc 36528
	flw	%f1, 24(%x2)  #2571 pc 36532
	fsub	%f0, %f1, %f0  #2571 pc 36536
	lw	%x5, 4(%x2)  #2572 pc 36540
	flw	%f1, 0(%x5)  #2572 pc 36544
	fsw	%f0, 32(%x2)  #2572 pc 36548
	fadd	%f0, %f1, %f30  #0 pc 36552
	sw	%x1, 40(%x2)  #2572 pc 36556
	addi	%x2, %x2, 44  #2572 pc 36560
	jal	%x1, fneg.2540  #2572 pc 36564
	addi	%x2, %x2, -44  #2572 pc 36568
	lw	%x1, 40(%x2) #2572 pc 36572
	lw	%x5, 4(%x2)  #2573 pc 36576
	flw	%f1, 4(%x5)  #2573 pc 36580
	fsw	%f0, 40(%x2)  #2573 pc 36584
	fadd	%f0, %f1, %f30  #0 pc 36588
	sw	%x1, 48(%x2)  #2573 pc 36592
	addi	%x2, %x2, 52  #2573 pc 36596
	jal	%x1, fneg.2540  #2573 pc 36600
	addi	%x2, %x2, -52  #2573 pc 36604
	lw	%x1, 48(%x2) #2573 pc 36608
	lw	%x5, 4(%x2)  #2574 pc 36612
	flw	%f1, 8(%x5)  #2574 pc 36616
	fsw	%f0, 48(%x2)  #2574 pc 36620
	fadd	%f0, %f1, %f30  #0 pc 36624
	sw	%x1, 56(%x2)  #2574 pc 36628
	addi	%x2, %x2, 60  #2574 pc 36632
	jal	%x1, fneg.2540  #2574 pc 36636
	addi	%x2, %x2, -60  #2574 pc 36640
	lw	%x1, 56(%x2) #2574 pc 36644
	fadd	%f3, %f0, %f30  #2574 pc 36648
	lw	%x5, 20(%x2)  #2575 pc 36652
	addi	%x6, %x5, 1  #2575 pc 36656
	lw	%x7, 4(%x2)  #2575 pc 36660
	flw	%f1, 0(%x7)  #2575 pc 36664
	flw	%f0, 32(%x2)  #2575 pc 36668
	flw	%f2, 48(%x2)  #2575 pc 36672
	lw	%x8, 16(%x2)  #2575 pc 36676
	lw	%x29, 0(%x2)  #2575 pc 36680
	fsw	%f3, 56(%x2)  #2575 pc 36684
	addi	%x5, %x8, 0  #0 pc 36688
	sw	%x1, 64(%x2)  #2575 pc 36692
	lw	%x30, 0(%x29)  #2575 pc 36696
	addi	%x2, %x2, 68  #2575 pc 36700
	jalr	%x1, %x30, 0  #2575 pc 36704
	addi	%x2, %x2, -68  #2575 pc 36708
	lw	%x1, 64(%x2)  #2575 pc 36712
	lw	%x5, 16(%x2)  #2576 pc 36716
	addi	%x6, %x5, 1  #2576 pc 36720
	lw	%x7, 20(%x2)  #2576 pc 36724
	addi	%x8, %x7, 2  #2576 pc 36728
	lw	%x9, 4(%x2)  #2576 pc 36732
	flw	%f2, 4(%x9)  #2576 pc 36736
	flw	%f0, 32(%x2)  #2576 pc 36740
	flw	%f1, 40(%x2)  #2576 pc 36744
	flw	%f3, 56(%x2)  #2576 pc 36748
	lw	%x29, 0(%x2)  #2576 pc 36752
	addi	%x5, %x6, 0  #0 pc 36756
	addi	%x6, %x8, 0  #0 pc 36760
	sw	%x1, 64(%x2)  #2576 pc 36764
	lw	%x30, 0(%x29)  #2576 pc 36768
	addi	%x2, %x2, 68  #2576 pc 36772
	jalr	%x1, %x30, 0  #2576 pc 36776
	addi	%x2, %x2, -68  #2576 pc 36780
	lw	%x1, 64(%x2)  #2576 pc 36784
	lw	%x5, 16(%x2)  #2577 pc 36788
	addi	%x6, %x5, 2  #2577 pc 36792
	lw	%x7, 20(%x2)  #2577 pc 36796
	addi	%x7, %x7, 3  #2577 pc 36800
	lw	%x8, 4(%x2)  #2577 pc 36804
	flw	%f3, 8(%x8)  #2577 pc 36808
	flw	%f0, 32(%x2)  #2577 pc 36812
	flw	%f1, 40(%x2)  #2577 pc 36816
	flw	%f2, 48(%x2)  #2577 pc 36820
	lw	%x29, 0(%x2)  #2577 pc 36824
	addi	%x5, %x6, 0  #0 pc 36828
	addi	%x6, %x7, 0  #0 pc 36832
	sw	%x1, 64(%x2)  #2577 pc 36836
	lw	%x30, 0(%x29)  #2577 pc 36840
	addi	%x2, %x2, 68  #2577 pc 36844
	jalr	%x1, %x30, 0  #2577 pc 36848
	addi	%x2, %x2, -68  #2577 pc 36852
	lw	%x1, 64(%x2)  #2577 pc 36856
	lw	%x5, 16(%x2)  #2578 pc 36860
	addi	%x5, %x5, 3  #2578 pc 36864
	lw	%x6, 12(%x2)  #2578 pc 36868
	sw	%x5, 0(%x6)  #2578 pc 36872
	ret #pc 36876
	nop #pc 36880
setup_surface_reflection.3114:  #pc 36884
	lw	%x7, 12(%x29)  #0 pc 36884
	lw	%x8, 8(%x29)  #0 pc 36888
	lw	%x9, 4(%x29)  #0 pc 36892
	addi	%x10, %x0, 4  #0 pc 36896
	sw	%x9, 0(%x2)  #2583 pc 36900
	sw	%x8, 4(%x2)  #2583 pc 36904
	sw	%x6, 8(%x2)  #2583 pc 36908
	sw	%x7, 12(%x2)  #2583 pc 36912
	addi	%x6, %x10, 0  #0 pc 36916
	sw	%x1, 16(%x2)  #2583 pc 36920
	addi	%x2, %x2, 20  #2583 pc 36924
	jal	%x1, mul.2568  #2583 pc 36928
	addi	%x2, %x2, -20  #2583 pc 36932
	lw	%x1, 16(%x2) #2583 pc 36936
	addi	%x5, %x5, 1  #2583 pc 36940
	lw	%x6, 12(%x2)  #2584 pc 36944
	lw	%x7, 0(%x6)  #2584 pc 36948
	fmv	%f0, l.6317  #0 pc 36952
	lw	%x8, 8(%x2)  #2585 pc 36956
	sw	%x5, 16(%x2)  #2585 pc 36960
	sw	%x7, 20(%x2)  #2585 pc 36964
	fsw	%f0, 24(%x2)  #2585 pc 36968
	addi	%x5, %x8, 0  #0 pc 36972
	sw	%x1, 32(%x2)  #2585 pc 36976
	addi	%x2, %x2, 36  #2585 pc 36980
	jal	%x1, o_diffuse.2712  #2585 pc 36984
	addi	%x2, %x2, -36  #2585 pc 36988
	lw	%x1, 32(%x2) #2585 pc 36992
	flw	%f1, 24(%x2)  #2585 pc 36996
	fsub	%f0, %f1, %f0  #2585 pc 37000
	lw	%x5, 8(%x2)  #2586 pc 37004
	fsw	%f0, 32(%x2)  #2586 pc 37008
	sw	%x1, 40(%x2)  #2586 pc 37012
	addi	%x2, %x2, 44  #2586 pc 37016
	jal	%x1, o_param_abc.2704  #2586 pc 37020
	addi	%x2, %x2, -44  #2586 pc 37024
	lw	%x1, 40(%x2) #2586 pc 37028
	addi	%x6, %x5, 0  #2586 pc 37032
	lw	%x5, 4(%x2)  #2586 pc 37036
	sw	%x1, 40(%x2)  #2586 pc 37040
	addi	%x2, %x2, 44  #2586 pc 37044
	jal	%x1, veciprod.2666  #2586 pc 37048
	addi	%x2, %x2, -44  #2586 pc 37052
	lw	%x1, 40(%x2) #2586 pc 37056
	fmv	%f1, l.6488  #0 pc 37060
	lw	%x5, 8(%x2)  #2589 pc 37064
	fsw	%f0, 40(%x2)  #2589 pc 37068
	fsw	%f1, 48(%x2)  #2589 pc 37072
	sw	%x1, 56(%x2)  #2589 pc 37076
	addi	%x2, %x2, 60  #2589 pc 37080
	jal	%x1, o_param_a.2698  #2589 pc 37084
	addi	%x2, %x2, -60  #2589 pc 37088
	lw	%x1, 56(%x2) #2589 pc 37092
	flw	%f1, 48(%x2)  #2589 pc 37096
	fmul	%f0, %f1, %f0  #2589 pc 37100
	flw	%f1, 40(%x2)  #2589 pc 37104
	fmul	%f0, %f0, %f1  #2589 pc 37108
	lw	%x5, 4(%x2)  #2589 pc 37112
	flw	%f2, 0(%x5)  #2589 pc 37116
	fsub	%f0, %f0, %f2  #2589 pc 37120
	fmv	%f2, l.6488  #0 pc 37124
	lw	%x6, 8(%x2)  #2590 pc 37128
	fsw	%f0, 56(%x2)  #2590 pc 37132
	fsw	%f2, 64(%x2)  #2590 pc 37136
	addi	%x5, %x6, 0  #0 pc 37140
	sw	%x1, 72(%x2)  #2590 pc 37144
	addi	%x2, %x2, 76  #2590 pc 37148
	jal	%x1, o_param_b.2700  #2590 pc 37152
	addi	%x2, %x2, -76  #2590 pc 37156
	lw	%x1, 72(%x2) #2590 pc 37160
	flw	%f1, 64(%x2)  #2590 pc 37164
	fmul	%f0, %f1, %f0  #2590 pc 37168
	flw	%f1, 40(%x2)  #2590 pc 37172
	fmul	%f0, %f0, %f1  #2590 pc 37176
	lw	%x5, 4(%x2)  #2590 pc 37180
	flw	%f2, 4(%x5)  #2590 pc 37184
	fsub	%f0, %f0, %f2  #2590 pc 37188
	fmv	%f2, l.6488  #0 pc 37192
	lw	%x6, 8(%x2)  #2591 pc 37196
	fsw	%f0, 72(%x2)  #2591 pc 37200
	fsw	%f2, 80(%x2)  #2591 pc 37204
	addi	%x5, %x6, 0  #0 pc 37208
	sw	%x1, 88(%x2)  #2591 pc 37212
	addi	%x2, %x2, 92  #2591 pc 37216
	jal	%x1, o_param_c.2702  #2591 pc 37220
	addi	%x2, %x2, -92  #2591 pc 37224
	lw	%x1, 88(%x2) #2591 pc 37228
	flw	%f1, 80(%x2)  #2591 pc 37232
	fmul	%f0, %f1, %f0  #2591 pc 37236
	flw	%f1, 40(%x2)  #2591 pc 37240
	fmul	%f0, %f0, %f1  #2591 pc 37244
	lw	%x5, 4(%x2)  #2591 pc 37248
	flw	%f1, 8(%x5)  #2591 pc 37252
	fsub	%f3, %f0, %f1  #2591 pc 37256
	flw	%f0, 32(%x2)  #2588 pc 37260
	flw	%f1, 56(%x2)  #2588 pc 37264
	flw	%f2, 72(%x2)  #2588 pc 37268
	lw	%x5, 20(%x2)  #2588 pc 37272
	lw	%x6, 16(%x2)  #2588 pc 37276
	lw	%x29, 0(%x2)  #2588 pc 37280
	sw	%x1, 88(%x2)  #2588 pc 37284
	lw	%x30, 0(%x29)  #2588 pc 37288
	addi	%x2, %x2, 92  #2588 pc 37292
	jalr	%x1, %x30, 0  #2588 pc 37296
	addi	%x2, %x2, -92  #2588 pc 37300
	lw	%x1, 88(%x2)  #2588 pc 37304
	lw	%x5, 20(%x2)  #2592 pc 37308
	addi	%x5, %x5, 1  #2592 pc 37312
	lw	%x6, 12(%x2)  #2592 pc 37316
	sw	%x5, 0(%x6)  #2592 pc 37320
	ret #pc 37324
	nop #pc 37328
setup_reflections.3117:  #pc 37332
	lw	%x6, 12(%x29)  #0 pc 37332
	lw	%x7, 8(%x29)  #0 pc 37336
	lw	%x8, 4(%x29)  #0 pc 37340
	bge	%x5, %x0, 12  #2598 pc 37344
	j	bge_else.9617 #pc 37348
	nop #pc 37352
	slli	%x9, %x5, 2  #2599 pc 37356
	add	%x31, %x9, %x8  #2599 pc 37360
	lw	%x8, 0(%x31)  #2599 pc 37364
	sw	%x6, 0(%x2)  #2600 pc 37368
	sw	%x5, 4(%x2)  #2600 pc 37372
	sw	%x7, 8(%x2)  #2600 pc 37376
	sw	%x8, 12(%x2)  #2600 pc 37380
	addi	%x5, %x8, 0  #0 pc 37384
	sw	%x1, 16(%x2)  #2600 pc 37388
	addi	%x2, %x2, 20  #2600 pc 37392
	jal	%x1, o_reflectiontype.2692  #2600 pc 37396
	addi	%x2, %x2, -20  #2600 pc 37400
	lw	%x1, 16(%x2) #2600 pc 37404
	addi	%x31, %x0, 2  #pc 37408
	beq	%x5, %x31, 12  #2600 pc 37412
	j	be_else.9618 #pc 37416
	nop #pc 37420
	lw	%x5, 12(%x2)  #2601 pc 37424
	sw	%x1, 16(%x2)  #2601 pc 37428
	addi	%x2, %x2, 20  #2601 pc 37432
	jal	%x1, o_diffuse.2712  #2601 pc 37436
	addi	%x2, %x2, -20  #2601 pc 37440
	lw	%x1, 16(%x2) #2601 pc 37444
	fmv	%f1, l.6317  #0 pc 37448
	sw	%x1, 16(%x2)  #2601 pc 37452
	addi	%x2, %x2, 20  #2601 pc 37456
	jal	%x1, fless.2546  #2601 pc 37460
	addi	%x2, %x2, -20  #2601 pc 37464
	lw	%x1, 16(%x2) #2601 pc 37468
	beq	%x5, %x0, 12  #2601 pc 37472
	j	be_else.9619 #pc 37476
	nop #pc 37480
	ret #pc 37484
	nop #pc 37488
be_else.9619: #pc 37492
	lw	%x5, 12(%x2)  #2602 pc 37492
	sw	%x1, 16(%x2)  #2602 pc 37496
	addi	%x2, %x2, 20  #2602 pc 37500
	jal	%x1, o_form.2690  #2602 pc 37504
	addi	%x2, %x2, -20  #2602 pc 37508
	lw	%x1, 16(%x2) #2602 pc 37512
	addi	%x31, %x0, 1  #pc 37516
	beq	%x5, %x31, 12  #2604 pc 37520
	j	be_else.9621 #pc 37524
	nop #pc 37528
	lw	%x5, 4(%x2)  #2605 pc 37532
	lw	%x6, 12(%x2)  #2605 pc 37536
	lw	%x29, 8(%x2)  #2605 pc 37540
	lw	%x30, 0(%x29)  #2605 pc 37544
	jalr	%x0, %x30, 0  #2605 pc 37548
	nop #pc 37552
be_else.9621: #pc 37556
	addi	%x31, %x0, 2  #pc 37556
	beq	%x5, %x31, 12  #2606 pc 37560
	j	be_else.9622 #pc 37564
	nop #pc 37568
	lw	%x5, 4(%x2)  #2607 pc 37572
	lw	%x6, 12(%x2)  #2607 pc 37576
	lw	%x29, 0(%x2)  #2607 pc 37580
	lw	%x30, 0(%x29)  #2607 pc 37584
	jalr	%x0, %x30, 0  #2607 pc 37588
	nop #pc 37592
be_else.9622: #pc 37596
	ret #pc 37596
	nop #pc 37600
be_else.9618: #pc 37604
	ret #pc 37604
	nop #pc 37608
bge_else.9617: #pc 37612
	ret #pc 37612
	nop #pc 37616
rt.3119:  #pc 37620
	lw	%x8, 56(%x29)  #0 pc 37620
	lw	%x9, 52(%x29)  #0 pc 37624
	lw	%x10, 48(%x29)  #0 pc 37628
	lw	%x11, 44(%x29)  #0 pc 37632
	lw	%x12, 40(%x29)  #0 pc 37636
	lw	%x13, 36(%x29)  #0 pc 37640
	lw	%x14, 32(%x29)  #0 pc 37644
	lw	%x15, 28(%x29)  #0 pc 37648
	lw	%x16, 24(%x29)  #0 pc 37652
	lw	%x17, 20(%x29)  #0 pc 37656
	lw	%x18, 16(%x29)  #0 pc 37660
	lw	%x19, 12(%x29)  #0 pc 37664
	lw	%x20, 8(%x29)  #0 pc 37668
	lw	%x21, 4(%x29)  #0 pc 37672
	sw	%x5, 0(%x19)  #2620 pc 37676
	sw	%x6, 4(%x19)  #2621 pc 37680
	addi	%x19, %x0, 2  #0 pc 37684
	sw	%x12, 0(%x2)  #2622 pc 37688
	sw	%x14, 4(%x2)  #2622 pc 37692
	sw	%x9, 8(%x2)  #2622 pc 37696
	sw	%x15, 12(%x2)  #2622 pc 37700
	sw	%x10, 16(%x2)  #2622 pc 37704
	sw	%x17, 20(%x2)  #2622 pc 37708
	sw	%x16, 24(%x2)  #2622 pc 37712
	sw	%x18, 28(%x2)  #2622 pc 37716
	sw	%x7, 32(%x2)  #2622 pc 37720
	sw	%x8, 36(%x2)  #2622 pc 37724
	sw	%x13, 40(%x2)  #2622 pc 37728
	sw	%x21, 44(%x2)  #2622 pc 37732
	sw	%x11, 48(%x2)  #2622 pc 37736
	sw	%x5, 52(%x2)  #2622 pc 37740
	sw	%x6, 56(%x2)  #2622 pc 37744
	sw	%x20, 60(%x2)  #2622 pc 37748
	addi	%x6, %x19, 0  #0 pc 37752
	sw	%x1, 64(%x2)  #2622 pc 37756
	addi	%x2, %x2, 68  #2622 pc 37760
	jal	%x1, div.2576  #2622 pc 37764
	addi	%x2, %x2, -68  #2622 pc 37768
	lw	%x1, 64(%x2) #2622 pc 37772
	lw	%x6, 60(%x2)  #2622 pc 37776
	sw	%x5, 0(%x6)  #2622 pc 37780
	addi	%x5, %x0, 2  #0 pc 37784
	lw	%x7, 56(%x2)  #2623 pc 37788
	addi	%x6, %x5, 0  #0 pc 37792
	addi	%x5, %x7, 0  #0 pc 37796
	sw	%x1, 64(%x2)  #2623 pc 37800
	addi	%x2, %x2, 68  #2623 pc 37804
	jal	%x1, div.2576  #2623 pc 37808
	addi	%x2, %x2, -68  #2623 pc 37812
	lw	%x1, 64(%x2) #2623 pc 37816
	lw	%x6, 60(%x2)  #2623 pc 37820
	sw	%x5, 4(%x6)  #2623 pc 37824
	fmv	%f0, l.7065  #0 pc 37828
	lw	%x5, 52(%x2)  #2624 pc 37832
	fsw	%f0, 64(%x2)  #2624 pc 37836
	sw	%x1, 72(%x2)  #2624 pc 37840
	addi	%x2, %x2, 76  #2624 pc 37844
	jal	%x1, float_of_int.2559  #2624 pc 37848
	addi	%x2, %x2, -76  #2624 pc 37852
	lw	%x1, 72(%x2) #2624 pc 37856
	flw	%f1, 64(%x2)  #2624 pc 37860
	fdiv	%f0, %f1, %f0  #2624 pc 37864
	lw	%x5, 48(%x2)  #2624 pc 37868
	fsw	%f0, 0(%x5)  #2624 pc 37872
	lw	%x29, 44(%x2)  #2625 pc 37876
	sw	%x1, 72(%x2)  #2625 pc 37880
	lw	%x30, 0(%x29)  #2625 pc 37884
	addi	%x2, %x2, 76  #2625 pc 37888
	jalr	%x1, %x30, 0  #2625 pc 37892
	addi	%x2, %x2, -76  #2625 pc 37896
	lw	%x1, 72(%x2)  #2625 pc 37900
	lw	%x29, 44(%x2)  #2626 pc 37904
	sw	%x5, 72(%x2)  #2626 pc 37908
	sw	%x1, 76(%x2)  #2626 pc 37912
	lw	%x30, 0(%x29)  #2626 pc 37916
	addi	%x2, %x2, 80  #2626 pc 37920
	jalr	%x1, %x30, 0  #2626 pc 37924
	addi	%x2, %x2, -80  #2626 pc 37928
	lw	%x1, 76(%x2)  #2626 pc 37932
	lw	%x29, 44(%x2)  #2627 pc 37936
	sw	%x5, 76(%x2)  #2627 pc 37940
	sw	%x1, 80(%x2)  #2627 pc 37944
	lw	%x30, 0(%x29)  #2627 pc 37948
	addi	%x2, %x2, 84  #2627 pc 37952
	jalr	%x1, %x30, 0  #2627 pc 37956
	addi	%x2, %x2, -84  #2627 pc 37960
	lw	%x1, 80(%x2)  #2627 pc 37964
	lw	%x29, 40(%x2)  #2628 pc 37968
	sw	%x5, 80(%x2)  #2628 pc 37972
	sw	%x1, 84(%x2)  #2628 pc 37976
	lw	%x30, 0(%x29)  #2628 pc 37980
	addi	%x2, %x2, 88  #2628 pc 37984
	jalr	%x1, %x30, 0  #2628 pc 37988
	addi	%x2, %x2, -88  #2628 pc 37992
	lw	%x1, 84(%x2)  #2628 pc 37996
	lw	%x5, 32(%x2)  #2629 pc 38000
	lw	%x29, 36(%x2)  #2629 pc 38004
	sw	%x1, 84(%x2)  #2629 pc 38008
	lw	%x30, 0(%x29)  #2629 pc 38012
	addi	%x2, %x2, 88  #2629 pc 38016
	jalr	%x1, %x30, 0  #2629 pc 38020
	addi	%x2, %x2, -88  #2629 pc 38024
	lw	%x1, 84(%x2)  #2629 pc 38028
	lw	%x29, 28(%x2)  #2630 pc 38032
	sw	%x1, 84(%x2)  #2630 pc 38036
	lw	%x30, 0(%x29)  #2630 pc 38040
	addi	%x2, %x2, 88  #2630 pc 38044
	jalr	%x1, %x30, 0  #2630 pc 38048
	addi	%x2, %x2, -88  #2630 pc 38052
	lw	%x1, 84(%x2)  #2630 pc 38056
	lw	%x5, 24(%x2)  #2631 pc 38060
	sw	%x1, 84(%x2)  #2631 pc 38064
	addi	%x2, %x2, 88  #2631 pc 38068
	jal	%x1, d_vec.2749  #2631 pc 38072
	addi	%x2, %x2, -88  #2631 pc 38076
	lw	%x1, 84(%x2) #2631 pc 38080
	lw	%x6, 20(%x2)  #2631 pc 38084
	sw	%x1, 84(%x2)  #2631 pc 38088
	addi	%x2, %x2, 88  #2631 pc 38092
	jal	%x1, veccpy.2660  #2631 pc 38096
	addi	%x2, %x2, -88  #2631 pc 38100
	lw	%x1, 84(%x2) #2631 pc 38104
	lw	%x5, 24(%x2)  #2632 pc 38108
	lw	%x29, 16(%x2)  #2632 pc 38112
	sw	%x1, 84(%x2)  #2632 pc 38116
	lw	%x30, 0(%x29)  #2632 pc 38120
	addi	%x2, %x2, 88  #2632 pc 38124
	jalr	%x1, %x30, 0  #2632 pc 38128
	addi	%x2, %x2, -88  #2632 pc 38132
	lw	%x1, 84(%x2)  #2632 pc 38136
	lw	%x5, 12(%x2)  #2633 pc 38140
	lw	%x5, 0(%x5)  #2633 pc 38144
	addi	%x5, %x5, -1  #2633 pc 38148
	lw	%x29, 8(%x2)  #2633 pc 38152
	sw	%x1, 84(%x2)  #2633 pc 38156
	lw	%x30, 0(%x29)  #2633 pc 38160
	addi	%x2, %x2, 88  #2633 pc 38164
	jalr	%x1, %x30, 0  #2633 pc 38168
	addi	%x2, %x2, -88  #2633 pc 38172
	lw	%x1, 84(%x2)  #2633 pc 38176
	addi	%x6, %x0, 0  #0 pc 38180
	addi	%x7, %x0, 0  #0 pc 38184
	lw	%x5, 76(%x2)  #2634 pc 38188
	lw	%x29, 4(%x2)  #2634 pc 38192
	sw	%x1, 84(%x2)  #2634 pc 38196
	lw	%x30, 0(%x29)  #2634 pc 38200
	addi	%x2, %x2, 88  #2634 pc 38204
	jalr	%x1, %x30, 0  #2634 pc 38208
	addi	%x2, %x2, -88  #2634 pc 38212
	lw	%x1, 84(%x2)  #2634 pc 38216
	addi	%x5, %x0, 0  #0 pc 38220
	addi	%x9, %x0, 2  #0 pc 38224
	lw	%x6, 72(%x2)  #2635 pc 38228
	lw	%x7, 76(%x2)  #2635 pc 38232
	lw	%x8, 80(%x2)  #2635 pc 38236
	lw	%x10, 32(%x2)  #2635 pc 38240
	lw	%x29, 0(%x2)  #2635 pc 38244
	lw	%x30, 0(%x29)  #2635 pc 38248
	jalr	%x0, %x30, 0  #2635 pc 38252
	nop #pc 38256
.global	min_caml_start
min_caml_start:
	addi	%x2, %x0, 0
	addi	%x3, %x0, 1024
	addi	%x5, %x0, 1  #0 pc 38268
	addi	%x6, %x0, 0  #0 pc 38272
	sw	%x1, 0(%x2)  #214 pc 38276
	addi	%x2, %x2, 4  #214 pc 38280
	jal	%x1, create_array.2599  #214 pc 38284
	addi	%x2, %x2, -4  #214 pc 38288
	lw	%x1, 0(%x2) #214 pc 38292
	addi	%x6, %x0, 0  #0 pc 38296
	fmv	%f0, l.6305  #0 pc 38300
	sw	%x5, 0(%x2)  #219 pc 38304
	addi	%x5, %x6, 0  #0 pc 38308
	sw	%x1, 4(%x2)  #219 pc 38312
	addi	%x2, %x2, 8  #219 pc 38316
	jal	%x1, create_float_array.2606  #219 pc 38320
	addi	%x2, %x2, -8  #219 pc 38324
	lw	%x1, 4(%x2) #219 pc 38328
	addi	%x6, %x0, 60  #0 pc 38332
	addi	%x7, %x0, 0  #0 pc 38336
	addi	%x8, %x3, 0  #220 pc 38340
	addi	%x3, %x3, 44  #220 pc 38344
	sw	%x5, 40(%x8)  #220 pc 38348
	sw	%x5, 36(%x8)  #220 pc 38352
	sw	%x5, 32(%x8)  #220 pc 38356
	sw	%x5, 28(%x8)  #220 pc 38360
	sw	%x7, 24(%x8)  #220 pc 38364
	sw	%x5, 20(%x8)  #220 pc 38368
	sw	%x5, 16(%x8)  #220 pc 38372
	sw	%x7, 12(%x8)  #220 pc 38376
	sw	%x7, 8(%x8)  #220 pc 38380
	sw	%x7, 4(%x8)  #220 pc 38384
	sw	%x7, 0(%x8)  #220 pc 38388
	addi	%x5, %x8, 0  #220 pc 38392
	addi	%x30, %x6, 0  #0 pc 38396
	addi	%x6, %x5, 0  #0 pc 38400
	addi	%x5, %x30, 0  #0 pc 38404
	sw	%x1, 4(%x2)  #220 pc 38408
	addi	%x2, %x2, 8  #220 pc 38412
	jal	%x1, create_array.2599  #220 pc 38416
	addi	%x2, %x2, -8  #220 pc 38420
	lw	%x1, 4(%x2) #220 pc 38424
	addi	%x6, %x0, 3  #0 pc 38428
	fmv	%f0, l.6305  #0 pc 38432
	sw	%x5, 4(%x2)  #224 pc 38436
	addi	%x5, %x6, 0  #0 pc 38440
	sw	%x1, 8(%x2)  #224 pc 38444
	addi	%x2, %x2, 12  #224 pc 38448
	jal	%x1, create_float_array.2606  #224 pc 38452
	addi	%x2, %x2, -12  #224 pc 38456
	lw	%x1, 8(%x2) #224 pc 38460
	addi	%x6, %x0, 3  #0 pc 38464
	fmv	%f0, l.6305  #0 pc 38468
	sw	%x5, 8(%x2)  #227 pc 38472
	addi	%x5, %x6, 0  #0 pc 38476
	sw	%x1, 12(%x2)  #227 pc 38480
	addi	%x2, %x2, 16  #227 pc 38484
	jal	%x1, create_float_array.2606  #227 pc 38488
	addi	%x2, %x2, -16  #227 pc 38492
	lw	%x1, 12(%x2) #227 pc 38496
	addi	%x6, %x0, 3  #0 pc 38500
	fmv	%f0, l.6305  #0 pc 38504
	sw	%x5, 12(%x2)  #230 pc 38508
	addi	%x5, %x6, 0  #0 pc 38512
	sw	%x1, 16(%x2)  #230 pc 38516
	addi	%x2, %x2, 20  #230 pc 38520
	jal	%x1, create_float_array.2606  #230 pc 38524
	addi	%x2, %x2, -20  #230 pc 38528
	lw	%x1, 16(%x2) #230 pc 38532
	addi	%x6, %x0, 1  #0 pc 38536
	fmv	%f0, l.6819  #0 pc 38540
	sw	%x5, 16(%x2)  #233 pc 38544
	addi	%x5, %x6, 0  #0 pc 38548
	sw	%x1, 20(%x2)  #233 pc 38552
	addi	%x2, %x2, 24  #233 pc 38556
	jal	%x1, create_float_array.2606  #233 pc 38560
	addi	%x2, %x2, -24  #233 pc 38564
	lw	%x1, 20(%x2) #233 pc 38568
	addi	%x6, %x0, 50  #0 pc 38572
	addi	%x7, %x0, 1  #0 pc 38576
	addi	%x8, %x0, -1  #0 pc 38580
	sw	%x5, 20(%x2)  #236 pc 38584
	sw	%x6, 24(%x2)  #236 pc 38588
	addi	%x6, %x8, 0  #0 pc 38592
	addi	%x5, %x7, 0  #0 pc 38596
	sw	%x1, 28(%x2)  #236 pc 38600
	addi	%x2, %x2, 32  #236 pc 38604
	jal	%x1, create_array.2599  #236 pc 38608
	addi	%x2, %x2, -32  #236 pc 38612
	lw	%x1, 28(%x2) #236 pc 38616
	addi	%x6, %x5, 0  #236 pc 38620
	lw	%x5, 24(%x2)  #236 pc 38624
	sw	%x1, 28(%x2)  #236 pc 38628
	addi	%x2, %x2, 32  #236 pc 38632
	jal	%x1, create_array.2599  #236 pc 38636
	addi	%x2, %x2, -32  #236 pc 38640
	lw	%x1, 28(%x2) #236 pc 38644
	addi	%x6, %x0, 1  #0 pc 38648
	lw	%x7, 0(%x5)  #239 pc 38652
	sw	%x5, 28(%x2)  #239 pc 38656
	sw	%x6, 32(%x2)  #239 pc 38660
	addi	%x5, %x6, 0  #0 pc 38664
	addi	%x6, %x7, 0  #0 pc 38668
	sw	%x1, 36(%x2)  #239 pc 38672
	addi	%x2, %x2, 40  #239 pc 38676
	jal	%x1, create_array.2599  #239 pc 38680
	addi	%x2, %x2, -40  #239 pc 38684
	lw	%x1, 36(%x2) #239 pc 38688
	addi	%x6, %x5, 0  #239 pc 38692
	lw	%x5, 32(%x2)  #239 pc 38696
	sw	%x1, 36(%x2)  #239 pc 38700
	addi	%x2, %x2, 40  #239 pc 38704
	jal	%x1, create_array.2599  #239 pc 38708
	addi	%x2, %x2, -40  #239 pc 38712
	lw	%x1, 36(%x2) #239 pc 38716
	addi	%x6, %x0, 1  #0 pc 38720
	fmv	%f0, l.6305  #0 pc 38724
	sw	%x5, 36(%x2)  #244 pc 38728
	addi	%x5, %x6, 0  #0 pc 38732
	sw	%x1, 40(%x2)  #244 pc 38736
	addi	%x2, %x2, 44  #244 pc 38740
	jal	%x1, create_float_array.2606  #244 pc 38744
	addi	%x2, %x2, -44  #244 pc 38748
	lw	%x1, 40(%x2) #244 pc 38752
	addi	%x6, %x0, 1  #0 pc 38756
	addi	%x7, %x0, 0  #0 pc 38760
	sw	%x5, 40(%x2)  #247 pc 38764
	addi	%x5, %x6, 0  #0 pc 38768
	addi	%x6, %x7, 0  #0 pc 38772
	sw	%x1, 44(%x2)  #247 pc 38776
	addi	%x2, %x2, 48  #247 pc 38780
	jal	%x1, create_array.2599  #247 pc 38784
	addi	%x2, %x2, -48  #247 pc 38788
	lw	%x1, 44(%x2) #247 pc 38792
	addi	%x6, %x0, 1  #0 pc 38796
	fmv	%f0, l.6746  #0 pc 38800
	sw	%x5, 44(%x2)  #250 pc 38804
	addi	%x5, %x6, 0  #0 pc 38808
	sw	%x1, 48(%x2)  #250 pc 38812
	addi	%x2, %x2, 52  #250 pc 38816
	jal	%x1, create_float_array.2606  #250 pc 38820
	addi	%x2, %x2, -52  #250 pc 38824
	lw	%x1, 48(%x2) #250 pc 38828
	addi	%x6, %x0, 3  #0 pc 38832
	fmv	%f0, l.6305  #0 pc 38836
	sw	%x5, 48(%x2)  #253 pc 38840
	addi	%x5, %x6, 0  #0 pc 38844
	sw	%x1, 52(%x2)  #253 pc 38848
	addi	%x2, %x2, 56  #253 pc 38852
	jal	%x1, create_float_array.2606  #253 pc 38856
	addi	%x2, %x2, -56  #253 pc 38860
	lw	%x1, 52(%x2) #253 pc 38864
	addi	%x6, %x0, 1  #0 pc 38868
	addi	%x7, %x0, 0  #0 pc 38872
	sw	%x5, 52(%x2)  #256 pc 38876
	addi	%x5, %x6, 0  #0 pc 38880
	addi	%x6, %x7, 0  #0 pc 38884
	sw	%x1, 56(%x2)  #256 pc 38888
	addi	%x2, %x2, 60  #256 pc 38892
	jal	%x1, create_array.2599  #256 pc 38896
	addi	%x2, %x2, -60  #256 pc 38900
	lw	%x1, 56(%x2) #256 pc 38904
	addi	%x6, %x0, 3  #0 pc 38908
	fmv	%f0, l.6305  #0 pc 38912
	sw	%x5, 56(%x2)  #259 pc 38916
	addi	%x5, %x6, 0  #0 pc 38920
	sw	%x1, 60(%x2)  #259 pc 38924
	addi	%x2, %x2, 64  #259 pc 38928
	jal	%x1, create_float_array.2606  #259 pc 38932
	addi	%x2, %x2, -64  #259 pc 38936
	lw	%x1, 60(%x2) #259 pc 38940
	addi	%x6, %x0, 3  #0 pc 38944
	fmv	%f0, l.6305  #0 pc 38948
	sw	%x5, 60(%x2)  #262 pc 38952
	addi	%x5, %x6, 0  #0 pc 38956
	sw	%x1, 64(%x2)  #262 pc 38960
	addi	%x2, %x2, 68  #262 pc 38964
	jal	%x1, create_float_array.2606  #262 pc 38968
	addi	%x2, %x2, -68  #262 pc 38972
	lw	%x1, 64(%x2) #262 pc 38976
	addi	%x6, %x0, 3  #0 pc 38980
	fmv	%f0, l.6305  #0 pc 38984
	sw	%x5, 64(%x2)  #266 pc 38988
	addi	%x5, %x6, 0  #0 pc 38992
	sw	%x1, 68(%x2)  #266 pc 38996
	addi	%x2, %x2, 72  #266 pc 39000
	jal	%x1, create_float_array.2606  #266 pc 39004
	addi	%x2, %x2, -72  #266 pc 39008
	lw	%x1, 68(%x2) #266 pc 39012
	addi	%x6, %x0, 3  #0 pc 39016
	fmv	%f0, l.6305  #0 pc 39020
	sw	%x5, 68(%x2)  #269 pc 39024
	addi	%x5, %x6, 0  #0 pc 39028
	sw	%x1, 72(%x2)  #269 pc 39032
	addi	%x2, %x2, 76  #269 pc 39036
	jal	%x1, create_float_array.2606  #269 pc 39040
	addi	%x2, %x2, -76  #269 pc 39044
	lw	%x1, 72(%x2) #269 pc 39048
	addi	%x6, %x0, 2  #0 pc 39052
	addi	%x7, %x0, 0  #0 pc 39056
	sw	%x5, 72(%x2)  #273 pc 39060
	addi	%x5, %x6, 0  #0 pc 39064
	addi	%x6, %x7, 0  #0 pc 39068
	sw	%x1, 76(%x2)  #273 pc 39072
	addi	%x2, %x2, 80  #273 pc 39076
	jal	%x1, create_array.2599  #273 pc 39080
	addi	%x2, %x2, -80  #273 pc 39084
	lw	%x1, 76(%x2) #273 pc 39088
	addi	%x6, %x0, 2  #0 pc 39092
	addi	%x7, %x0, 0  #0 pc 39096
	sw	%x5, 76(%x2)  #276 pc 39100
	addi	%x5, %x6, 0  #0 pc 39104
	addi	%x6, %x7, 0  #0 pc 39108
	sw	%x1, 80(%x2)  #276 pc 39112
	addi	%x2, %x2, 84  #276 pc 39116
	jal	%x1, create_array.2599  #276 pc 39120
	addi	%x2, %x2, -84  #276 pc 39124
	lw	%x1, 80(%x2) #276 pc 39128
	addi	%x6, %x0, 1  #0 pc 39132
	fmv	%f0, l.6305  #0 pc 39136
	sw	%x5, 80(%x2)  #279 pc 39140
	addi	%x5, %x6, 0  #0 pc 39144
	sw	%x1, 84(%x2)  #279 pc 39148
	addi	%x2, %x2, 88  #279 pc 39152
	jal	%x1, create_float_array.2606  #279 pc 39156
	addi	%x2, %x2, -88  #279 pc 39160
	lw	%x1, 84(%x2) #279 pc 39164
	addi	%x6, %x0, 3  #0 pc 39168
	fmv	%f0, l.6305  #0 pc 39172
	sw	%x5, 84(%x2)  #283 pc 39176
	addi	%x5, %x6, 0  #0 pc 39180
	sw	%x1, 88(%x2)  #283 pc 39184
	addi	%x2, %x2, 92  #283 pc 39188
	jal	%x1, create_float_array.2606  #283 pc 39192
	addi	%x2, %x2, -92  #283 pc 39196
	lw	%x1, 88(%x2) #283 pc 39200
	addi	%x6, %x0, 3  #0 pc 39204
	fmv	%f0, l.6305  #0 pc 39208
	sw	%x5, 88(%x2)  #286 pc 39212
	addi	%x5, %x6, 0  #0 pc 39216
	sw	%x1, 92(%x2)  #286 pc 39220
	addi	%x2, %x2, 96  #286 pc 39224
	jal	%x1, create_float_array.2606  #286 pc 39228
	addi	%x2, %x2, -96  #286 pc 39232
	lw	%x1, 92(%x2) #286 pc 39236
	addi	%x6, %x0, 3  #0 pc 39240
	fmv	%f0, l.6305  #0 pc 39244
	sw	%x5, 92(%x2)  #290 pc 39248
	addi	%x5, %x6, 0  #0 pc 39252
	sw	%x1, 96(%x2)  #290 pc 39256
	addi	%x2, %x2, 100  #290 pc 39260
	jal	%x1, create_float_array.2606  #290 pc 39264
	addi	%x2, %x2, -100  #290 pc 39268
	lw	%x1, 96(%x2) #290 pc 39272
	addi	%x6, %x0, 3  #0 pc 39276
	fmv	%f0, l.6305  #0 pc 39280
	sw	%x5, 96(%x2)  #292 pc 39284
	addi	%x5, %x6, 0  #0 pc 39288
	sw	%x1, 100(%x2)  #292 pc 39292
	addi	%x2, %x2, 104  #292 pc 39296
	jal	%x1, create_float_array.2606  #292 pc 39300
	addi	%x2, %x2, -104  #292 pc 39304
	lw	%x1, 100(%x2) #292 pc 39308
	addi	%x6, %x0, 3  #0 pc 39312
	fmv	%f0, l.6305  #0 pc 39316
	sw	%x5, 100(%x2)  #294 pc 39320
	addi	%x5, %x6, 0  #0 pc 39324
	sw	%x1, 104(%x2)  #294 pc 39328
	addi	%x2, %x2, 108  #294 pc 39332
	jal	%x1, create_float_array.2606  #294 pc 39336
	addi	%x2, %x2, -108  #294 pc 39340
	lw	%x1, 104(%x2) #294 pc 39344
	addi	%x6, %x0, 3  #0 pc 39348
	fmv	%f0, l.6305  #0 pc 39352
	sw	%x5, 104(%x2)  #298 pc 39356
	addi	%x5, %x6, 0  #0 pc 39360
	sw	%x1, 108(%x2)  #298 pc 39364
	addi	%x2, %x2, 112  #298 pc 39368
	jal	%x1, create_float_array.2606  #298 pc 39372
	addi	%x2, %x2, -112  #298 pc 39376
	lw	%x1, 108(%x2) #298 pc 39380
	addi	%x6, %x0, 0  #0 pc 39384
	fmv	%f0, l.6305  #0 pc 39388
	sw	%x5, 108(%x2)  #303 pc 39392
	addi	%x5, %x6, 0  #0 pc 39396
	sw	%x1, 112(%x2)  #303 pc 39400
	addi	%x2, %x2, 116  #303 pc 39404
	jal	%x1, create_float_array.2606  #303 pc 39408
	addi	%x2, %x2, -116  #303 pc 39412
	lw	%x1, 112(%x2) #303 pc 39416
	addi	%x6, %x5, 0  #303 pc 39420
	addi	%x5, %x0, 0  #0 pc 39424
	sw	%x6, 112(%x2)  #304 pc 39428
	sw	%x1, 116(%x2)  #304 pc 39432
	addi	%x2, %x2, 120  #304 pc 39436
	jal	%x1, create_array.2599  #304 pc 39440
	addi	%x2, %x2, -120  #304 pc 39444
	lw	%x1, 116(%x2) #304 pc 39448
	addi	%x6, %x0, 0  #0 pc 39452
	addi	%x7, %x3, 0  #305 pc 39456
	addi	%x3, %x3, 8  #305 pc 39460
	sw	%x5, 4(%x7)  #305 pc 39464
	lw	%x5, 112(%x2)  #305 pc 39468
	sw	%x5, 0(%x7)  #305 pc 39472
	addi	%x5, %x7, 0  #305 pc 39476
	addi	%x30, %x6, 0  #0 pc 39480
	addi	%x6, %x5, 0  #0 pc 39484
	addi	%x5, %x30, 0  #0 pc 39488
	sw	%x1, 116(%x2)  #305 pc 39492
	addi	%x2, %x2, 120  #305 pc 39496
	jal	%x1, create_array.2599  #305 pc 39500
	addi	%x2, %x2, -120  #305 pc 39504
	lw	%x1, 116(%x2) #305 pc 39508
	addi	%x6, %x5, 0  #305 pc 39512
	addi	%x5, %x0, 5  #0 pc 39516
	sw	%x1, 116(%x2)  #306 pc 39520
	addi	%x2, %x2, 120  #306 pc 39524
	jal	%x1, create_array.2599  #306 pc 39528
	addi	%x2, %x2, -120  #306 pc 39532
	lw	%x1, 116(%x2) #306 pc 39536
	addi	%x6, %x0, 0  #0 pc 39540
	fmv	%f0, l.6305  #0 pc 39544
	sw	%x5, 116(%x2)  #311 pc 39548
	addi	%x5, %x6, 0  #0 pc 39552
	sw	%x1, 120(%x2)  #311 pc 39556
	addi	%x2, %x2, 124  #311 pc 39560
	jal	%x1, create_float_array.2606  #311 pc 39564
	addi	%x2, %x2, -124  #311 pc 39568
	lw	%x1, 120(%x2) #311 pc 39572
	addi	%x6, %x0, 3  #0 pc 39576
	fmv	%f0, l.6305  #0 pc 39580
	sw	%x5, 120(%x2)  #312 pc 39584
	addi	%x5, %x6, 0  #0 pc 39588
	sw	%x1, 124(%x2)  #312 pc 39592
	addi	%x2, %x2, 128  #312 pc 39596
	jal	%x1, create_float_array.2606  #312 pc 39600
	addi	%x2, %x2, -128  #312 pc 39604
	lw	%x1, 124(%x2) #312 pc 39608
	addi	%x6, %x0, 60  #0 pc 39612
	lw	%x7, 120(%x2)  #313 pc 39616
	sw	%x5, 124(%x2)  #313 pc 39620
	addi	%x5, %x6, 0  #0 pc 39624
	addi	%x6, %x7, 0  #0 pc 39628
	sw	%x1, 128(%x2)  #313 pc 39632
	addi	%x2, %x2, 132  #313 pc 39636
	jal	%x1, create_array.2599  #313 pc 39640
	addi	%x2, %x2, -132  #313 pc 39644
	lw	%x1, 128(%x2) #313 pc 39648
	addi	%x6, %x3, 0  #314 pc 39652
	addi	%x3, %x3, 8  #314 pc 39656
	sw	%x5, 4(%x6)  #314 pc 39660
	lw	%x5, 124(%x2)  #314 pc 39664
	sw	%x5, 0(%x6)  #314 pc 39668
	addi	%x5, %x6, 0  #314 pc 39672
	addi	%x6, %x0, 0  #0 pc 39676
	fmv	%f0, l.6305  #0 pc 39680
	sw	%x5, 128(%x2)  #319 pc 39684
	addi	%x5, %x6, 0  #0 pc 39688
	sw	%x1, 132(%x2)  #319 pc 39692
	addi	%x2, %x2, 136  #319 pc 39696
	jal	%x1, create_float_array.2606  #319 pc 39700
	addi	%x2, %x2, -136  #319 pc 39704
	lw	%x1, 132(%x2) #319 pc 39708
	addi	%x6, %x5, 0  #319 pc 39712
	addi	%x5, %x0, 0  #0 pc 39716
	sw	%x6, 132(%x2)  #320 pc 39720
	sw	%x1, 136(%x2)  #320 pc 39724
	addi	%x2, %x2, 140  #320 pc 39728
	jal	%x1, create_array.2599  #320 pc 39732
	addi	%x2, %x2, -140  #320 pc 39736
	lw	%x1, 136(%x2) #320 pc 39740
	addi	%x6, %x3, 0  #321 pc 39744
	addi	%x3, %x3, 8  #321 pc 39748
	sw	%x5, 4(%x6)  #321 pc 39752
	lw	%x5, 132(%x2)  #321 pc 39756
	sw	%x5, 0(%x6)  #321 pc 39760
	addi	%x5, %x6, 0  #321 pc 39764
	addi	%x6, %x0, 180  #0 pc 39768
	addi	%x7, %x0, 0  #0 pc 39772
	fmv	%f0, l.6305  #0 pc 39776
	addi	%x8, %x3, 0  #322 pc 39780
	addi	%x3, %x3, 12  #322 pc 39784
	fsw	%f0, 8(%x8)  #322 pc 39788
	sw	%x5, 4(%x8)  #322 pc 39792
	sw	%x7, 0(%x8)  #322 pc 39796
	addi	%x5, %x8, 0  #322 pc 39800
	addi	%x30, %x6, 0  #0 pc 39804
	addi	%x6, %x5, 0  #0 pc 39808
	addi	%x5, %x30, 0  #0 pc 39812
	sw	%x1, 136(%x2)  #322 pc 39816
	addi	%x2, %x2, 140  #322 pc 39820
	jal	%x1, create_array.2599  #322 pc 39824
	addi	%x2, %x2, -140  #322 pc 39828
	lw	%x1, 136(%x2) #322 pc 39832
	addi	%x6, %x0, 1  #0 pc 39836
	addi	%x7, %x0, 0  #0 pc 39840
	sw	%x5, 136(%x2)  #326 pc 39844
	addi	%x5, %x6, 0  #0 pc 39848
	addi	%x6, %x7, 0  #0 pc 39852
	sw	%x1, 140(%x2)  #326 pc 39856
	addi	%x2, %x2, 144  #326 pc 39860
	jal	%x1, create_array.2599  #326 pc 39864
	addi	%x2, %x2, -144  #326 pc 39868
	lw	%x1, 140(%x2) #326 pc 39872
	addi	%x6, %x3, 0  #809 pc 39876
	addi	%x3, %x3, 24  #809 pc 39880
	addi	%x31, %x0, 3460  #809 read_screen_settings.2761 pc 39884
	addi	%x7, %x31, 0  #809 pc 39888
	sw	%x7, 0(%x6)  #809 pc 39892
	lw	%x7, 12(%x2)  #809 pc 39896
	sw	%x7, 20(%x6)  #809 pc 39900
	lw	%x8, 104(%x2)  #809 pc 39904
	sw	%x8, 16(%x6)  #809 pc 39908
	lw	%x9, 100(%x2)  #809 pc 39912
	sw	%x9, 12(%x6)  #809 pc 39916
	lw	%x10, 96(%x2)  #809 pc 39920
	sw	%x10, 8(%x6)  #809 pc 39924
	lw	%x11, 8(%x2)  #809 pc 39928
	sw	%x11, 4(%x6)  #809 pc 39932
	addi	%x11, %x3, 0  #842 pc 39936
	addi	%x3, %x3, 12  #842 pc 39940
	addi	%x31, %x0, 4068  #842 read_light.2763 pc 39944
	addi	%x12, %x31, 0  #842 pc 39948
	sw	%x12, 0(%x11)  #842 pc 39952
	lw	%x12, 16(%x2)  #842 pc 39956
	sw	%x12, 8(%x11)  #842 pc 39960
	lw	%x13, 20(%x2)  #842 pc 39964
	sw	%x13, 4(%x11)  #842 pc 39968
	addi	%x14, %x3, 0  #905 pc 39972
	addi	%x3, %x3, 8  #905 pc 39976
	addi	%x31, %x0, 5404  #905 read_nth_object.2768 pc 39980
	addi	%x15, %x31, 0  #905 pc 39984
	sw	%x15, 0(%x14)  #905 pc 39988
	lw	%x15, 4(%x2)  #905 pc 39992
	sw	%x15, 4(%x14)  #905 pc 39996
	addi	%x16, %x3, 0  #988 pc 40000
	addi	%x3, %x3, 12  #988 pc 40004
	addi	%x31, %x0, 6968  #988 read_object.2770 pc 40008
	addi	%x17, %x31, 0  #988 pc 40012
	sw	%x17, 0(%x16)  #988 pc 40016
	sw	%x14, 8(%x16)  #988 pc 40020
	lw	%x14, 0(%x2)  #988 pc 40024
	sw	%x14, 4(%x16)  #988 pc 40028
	addi	%x17, %x3, 0  #997 pc 40032
	addi	%x3, %x3, 8  #997 pc 40036
	addi	%x31, %x0, 7096  #997 read_all_object.2772 pc 40040
	addi	%x18, %x31, 0  #997 pc 40044
	sw	%x18, 0(%x17)  #997 pc 40048
	sw	%x16, 4(%x17)  #997 pc 40052
	addi	%x16, %x3, 0  #1021 pc 40056
	addi	%x3, %x3, 8  #1021 pc 40060
	addi	%x31, %x0, 7376  #1021 read_and_network.2778 pc 40064
	addi	%x18, %x31, 0  #1021 pc 40068
	sw	%x18, 0(%x16)  #1021 pc 40072
	lw	%x18, 28(%x2)  #1021 pc 40076
	sw	%x18, 4(%x16)  #1021 pc 40080
	addi	%x19, %x3, 0  #1030 pc 40084
	addi	%x3, %x3, 24  #1030 pc 40088
	addi	%x31, %x0, 7488  #1030 read_parameter.2780 pc 40092
	addi	%x20, %x31, 0  #1030 pc 40096
	sw	%x20, 0(%x19)  #1030 pc 40100
	sw	%x6, 20(%x19)  #1030 pc 40104
	sw	%x11, 16(%x19)  #1030 pc 40108
	sw	%x16, 12(%x19)  #1030 pc 40112
	sw	%x17, 8(%x19)  #1030 pc 40116
	lw	%x6, 36(%x2)  #1030 pc 40120
	sw	%x6, 4(%x19)  #1030 pc 40124
	addi	%x11, %x3, 0  #1055 pc 40128
	addi	%x3, %x3, 8  #1055 pc 40132
	addi	%x31, %x0, 7680  #1055 solver_rect_surface.2782 pc 40136
	addi	%x16, %x31, 0  #1055 pc 40140
	sw	%x16, 0(%x11)  #1055 pc 40144
	lw	%x16, 40(%x2)  #1055 pc 40148
	sw	%x16, 4(%x11)  #1055 pc 40152
	addi	%x17, %x3, 0  #1070 pc 40156
	addi	%x3, %x3, 8  #1070 pc 40160
	addi	%x31, %x0, 8212  #1070 solver_rect.2791 pc 40164
	addi	%x20, %x31, 0  #1070 pc 40168
	sw	%x20, 0(%x17)  #1070 pc 40172
	sw	%x11, 4(%x17)  #1070 pc 40176
	addi	%x11, %x3, 0  #1079 pc 40180
	addi	%x3, %x3, 8  #1079 pc 40184
	addi	%x31, %x0, 8480  #1079 solver_surface.2797 pc 40188
	addi	%x20, %x31, 0  #1079 pc 40192
	sw	%x20, 0(%x11)  #1079 pc 40196
	sw	%x16, 4(%x11)  #1079 pc 40200
	addi	%x20, %x3, 0  #1130 pc 40204
	addi	%x3, %x3, 8  #1130 pc 40208
	addi	%x31, %x0, 9636  #1130 solver_second.2816 pc 40212
	addi	%x21, %x31, 0  #1130 pc 40216
	sw	%x21, 0(%x20)  #1130 pc 40220
	sw	%x16, 4(%x20)  #1130 pc 40224
	addi	%x21, %x3, 0  #1159 pc 40228
	addi	%x3, %x3, 20  #1159 pc 40232
	addi	%x31, %x0, 10144  #1159 solver.2822 pc 40236
	addi	%x22, %x31, 0  #1159 pc 40240
	sw	%x22, 0(%x21)  #1159 pc 40244
	sw	%x11, 16(%x21)  #1159 pc 40248
	sw	%x20, 12(%x21)  #1159 pc 40252
	sw	%x17, 8(%x21)  #1159 pc 40256
	sw	%x15, 4(%x21)  #1159 pc 40260
	addi	%x11, %x3, 0  #1191 pc 40264
	addi	%x3, %x3, 8  #1191 pc 40268
	addi	%x31, %x0, 10500  #1191 solver_rect_fast.2826 pc 40272
	addi	%x17, %x31, 0  #1191 pc 40276
	sw	%x17, 0(%x11)  #1191 pc 40280
	sw	%x16, 4(%x11)  #1191 pc 40284
	addi	%x17, %x3, 0  #1224 pc 40288
	addi	%x3, %x3, 8  #1224 pc 40292
	addi	%x31, %x0, 11536  #1224 solver_surface_fast.2833 pc 40296
	addi	%x20, %x31, 0  #1224 pc 40300
	sw	%x20, 0(%x17)  #1224 pc 40304
	sw	%x16, 4(%x17)  #1224 pc 40308
	addi	%x20, %x3, 0  #1233 pc 40312
	addi	%x3, %x3, 8  #1233 pc 40316
	addi	%x31, %x0, 11680  #1233 solver_second_fast.2839 pc 40320
	addi	%x22, %x31, 0  #1233 pc 40324
	sw	%x22, 0(%x20)  #1233 pc 40328
	sw	%x16, 4(%x20)  #1233 pc 40332
	addi	%x22, %x3, 0  #1253 pc 40336
	addi	%x3, %x3, 20  #1253 pc 40340
	addi	%x31, %x0, 12148  #1253 solver_fast.2845 pc 40344
	addi	%x23, %x31, 0  #1253 pc 40348
	sw	%x23, 0(%x22)  #1253 pc 40352
	sw	%x17, 16(%x22)  #1253 pc 40356
	sw	%x20, 12(%x22)  #1253 pc 40360
	sw	%x11, 8(%x22)  #1253 pc 40364
	sw	%x15, 4(%x22)  #1253 pc 40368
	addi	%x17, %x3, 0  #1273 pc 40372
	addi	%x3, %x3, 8  #1273 pc 40376
	addi	%x31, %x0, 12588  #1273 solver_surface_fast2.2849 pc 40380
	addi	%x20, %x31, 0  #1273 pc 40384
	sw	%x20, 0(%x17)  #1273 pc 40388
	sw	%x16, 4(%x17)  #1273 pc 40392
	addi	%x20, %x3, 0  #1281 pc 40396
	addi	%x3, %x3, 8  #1281 pc 40400
	addi	%x31, %x0, 12692  #1281 solver_second_fast2.2856 pc 40404
	addi	%x23, %x31, 0  #1281 pc 40408
	sw	%x23, 0(%x20)  #1281 pc 40412
	sw	%x16, 4(%x20)  #1281 pc 40416
	addi	%x23, %x3, 0  #1300 pc 40420
	addi	%x3, %x3, 20  #1300 pc 40424
	addi	%x31, %x0, 13056  #1300 solver_fast2.2863 pc 40428
	addi	%x24, %x31, 0  #1300 pc 40432
	sw	%x24, 0(%x23)  #1300 pc 40436
	sw	%x17, 16(%x23)  #1300 pc 40440
	sw	%x20, 12(%x23)  #1300 pc 40444
	sw	%x11, 8(%x23)  #1300 pc 40448
	sw	%x15, 4(%x23)  #1300 pc 40452
	addi	%x11, %x3, 0  #1397 pc 40456
	addi	%x3, %x3, 8  #1397 pc 40460
	addi	%x31, %x0, 15532  #1397 iter_setup_dirvec_constants.2875 pc 40464
	addi	%x17, %x31, 0  #1397 pc 40468
	sw	%x17, 0(%x11)  #1397 pc 40472
	sw	%x15, 4(%x11)  #1397 pc 40476
	addi	%x17, %x3, 0  #1414 pc 40480
	addi	%x3, %x3, 12  #1414 pc 40484
	addi	%x31, %x0, 15884  #1414 setup_dirvec_constants.2878 pc 40488
	addi	%x20, %x31, 0  #1414 pc 40492
	sw	%x20, 0(%x17)  #1414 pc 40496
	sw	%x14, 8(%x17)  #1414 pc 40500
	sw	%x11, 4(%x17)  #1414 pc 40504
	addi	%x11, %x3, 0  #1422 pc 40508
	addi	%x3, %x3, 8  #1422 pc 40512
	addi	%x31, %x0, 15912  #1422 setup_startp_constants.2880 pc 40516
	addi	%x20, %x31, 0  #1422 pc 40520
	sw	%x20, 0(%x11)  #1422 pc 40524
	sw	%x15, 4(%x11)  #1422 pc 40528
	addi	%x20, %x3, 0  #1441 pc 40532
	addi	%x3, %x3, 16  #1441 pc 40536
	addi	%x31, %x0, 16428  #1441 setup_startp.2883 pc 40540
	addi	%x24, %x31, 0  #1441 pc 40544
	sw	%x24, 0(%x20)  #1441 pc 40548
	lw	%x24, 92(%x2)  #1441 pc 40552
	sw	%x24, 12(%x20)  #1441 pc 40556
	sw	%x11, 8(%x20)  #1441 pc 40560
	sw	%x14, 4(%x20)  #1441 pc 40564
	addi	%x11, %x3, 0  #1491 pc 40568
	addi	%x3, %x3, 8  #1491 pc 40572
	addi	%x31, %x0, 17492  #1491 check_all_inside.2905 pc 40576
	addi	%x25, %x31, 0  #1491 pc 40580
	sw	%x25, 0(%x11)  #1491 pc 40584
	sw	%x15, 4(%x11)  #1491 pc 40588
	addi	%x25, %x3, 0  #1511 pc 40592
	addi	%x3, %x3, 32  #1511 pc 40596
	addi	%x31, %x0, 17660  #1511 shadow_check_and_group.2911 pc 40600
	addi	%x26, %x31, 0  #1511 pc 40604
	sw	%x26, 0(%x25)  #1511 pc 40608
	sw	%x22, 28(%x25)  #1511 pc 40612
	sw	%x16, 24(%x25)  #1511 pc 40616
	sw	%x15, 20(%x25)  #1511 pc 40620
	lw	%x26, 128(%x2)  #1511 pc 40624
	sw	%x26, 16(%x25)  #1511 pc 40628
	sw	%x12, 12(%x25)  #1511 pc 40632
	lw	%x27, 52(%x2)  #1511 pc 40636
	sw	%x27, 8(%x25)  #1511 pc 40640
	sw	%x11, 4(%x25)  #1511 pc 40644
	addi	%x28, %x3, 0  #1541 pc 40648
	addi	%x3, %x3, 12  #1541 pc 40652
	addi	%x31, %x0, 18152  #1541 shadow_check_one_or_group.2914 pc 40656
	addi	%x29, %x31, 0  #1541 pc 40660
	sw	%x29, 0(%x28)  #1541 pc 40664
	sw	%x25, 8(%x28)  #1541 pc 40668
	sw	%x18, 4(%x28)  #1541 pc 40672
	addi	%x25, %x3, 0  #1556 pc 40676
	addi	%x3, %x3, 24  #1556 pc 40680
	addi	%x31, %x0, 18316  #1556 shadow_check_one_or_matrix.2917 pc 40684
	addi	%x29, %x31, 0  #1556 pc 40688
	sw	%x29, 0(%x25)  #1556 pc 40692
	sw	%x22, 20(%x25)  #1556 pc 40696
	sw	%x16, 16(%x25)  #1556 pc 40700
	sw	%x28, 12(%x25)  #1556 pc 40704
	sw	%x26, 8(%x25)  #1556 pc 40708
	sw	%x27, 4(%x25)  #1556 pc 40712
	addi	%x22, %x3, 0  #1592 pc 40716
	addi	%x3, %x3, 40  #1592 pc 40720
	addi	%x31, %x0, 18744  #1592 solve_each_element.2920 pc 40724
	addi	%x28, %x31, 0  #1592 pc 40728
	sw	%x28, 0(%x22)  #1592 pc 40732
	lw	%x28, 48(%x2)  #1592 pc 40736
	sw	%x28, 36(%x22)  #1592 pc 40740
	lw	%x29, 88(%x2)  #1592 pc 40744
	sw	%x29, 32(%x22)  #1592 pc 40748
	sw	%x16, 28(%x22)  #1592 pc 40752
	sw	%x21, 24(%x22)  #1592 pc 40756
	sw	%x15, 20(%x22)  #1592 pc 40760
	lw	%x30, 44(%x2)  #1592 pc 40764
	sw	%x30, 16(%x22)  #1592 pc 40768
	sw	%x27, 12(%x22)  #1592 pc 40772
	lw	%x26, 56(%x2)  #1592 pc 40776
	sw	%x26, 8(%x22)  #1592 pc 40780
	sw	%x11, 4(%x22)  #1592 pc 40784
	sw	%x19, 140(%x2)  #1633 pc 40788
	addi	%x19, %x3, 0  #1633 pc 40792
	addi	%x3, %x3, 12  #1633 pc 40796
	sw	%x17, 144(%x2)  #1633 pc 40800
	addi	%x31, %x0, 19388  #1633 solve_one_or_network.2924 pc 40804
	addi	%x17, %x31, 0  #1633 pc 40808
	sw	%x17, 0(%x19)  #1633 pc 40812
	sw	%x22, 8(%x19)  #1633 pc 40816
	sw	%x18, 4(%x19)  #1633 pc 40820
	addi	%x17, %x3, 0  #1643 pc 40824
	addi	%x3, %x3, 24  #1643 pc 40828
	addi	%x31, %x0, 19532  #1643 trace_or_matrix.2928 pc 40832
	addi	%x22, %x31, 0  #1643 pc 40836
	sw	%x22, 0(%x17)  #1643 pc 40840
	sw	%x28, 20(%x17)  #1643 pc 40844
	sw	%x29, 16(%x17)  #1643 pc 40848
	sw	%x16, 12(%x17)  #1643 pc 40852
	sw	%x21, 8(%x17)  #1643 pc 40856
	sw	%x19, 4(%x17)  #1643 pc 40860
	addi	%x19, %x3, 0  #1670 pc 40864
	addi	%x3, %x3, 16  #1670 pc 40868
	addi	%x31, %x0, 19876  #1670 judge_intersection.2932 pc 40872
	addi	%x21, %x31, 0  #1670 pc 40876
	sw	%x21, 0(%x19)  #1670 pc 40880
	sw	%x17, 12(%x19)  #1670 pc 40884
	sw	%x28, 8(%x19)  #1670 pc 40888
	sw	%x6, 4(%x19)  #1670 pc 40892
	addi	%x17, %x3, 0  #1685 pc 40896
	addi	%x3, %x3, 40  #1685 pc 40900
	addi	%x31, %x0, 20024  #1685 solve_each_element_fast.2934 pc 40904
	addi	%x21, %x31, 0  #1685 pc 40908
	sw	%x21, 0(%x17)  #1685 pc 40912
	sw	%x28, 36(%x17)  #1685 pc 40916
	sw	%x24, 32(%x17)  #1685 pc 40920
	sw	%x23, 28(%x17)  #1685 pc 40924
	sw	%x16, 24(%x17)  #1685 pc 40928
	sw	%x15, 20(%x17)  #1685 pc 40932
	sw	%x30, 16(%x17)  #1685 pc 40936
	sw	%x27, 12(%x17)  #1685 pc 40940
	sw	%x26, 8(%x17)  #1685 pc 40944
	sw	%x11, 4(%x17)  #1685 pc 40948
	addi	%x11, %x3, 0  #1726 pc 40952
	addi	%x3, %x3, 12  #1726 pc 40956
	addi	%x31, %x0, 20700  #1726 solve_one_or_network_fast.2938 pc 40960
	addi	%x21, %x31, 0  #1726 pc 40964
	sw	%x21, 0(%x11)  #1726 pc 40968
	sw	%x17, 8(%x11)  #1726 pc 40972
	sw	%x18, 4(%x11)  #1726 pc 40976
	addi	%x17, %x3, 0  #1736 pc 40980
	addi	%x3, %x3, 20  #1736 pc 40984
	addi	%x31, %x0, 20844  #1736 trace_or_matrix_fast.2942 pc 40988
	addi	%x18, %x31, 0  #1736 pc 40992
	sw	%x18, 0(%x17)  #1736 pc 40996
	sw	%x28, 16(%x17)  #1736 pc 41000
	sw	%x23, 12(%x17)  #1736 pc 41004
	sw	%x16, 8(%x17)  #1736 pc 41008
	sw	%x11, 4(%x17)  #1736 pc 41012
	addi	%x11, %x3, 0  #1760 pc 41016
	addi	%x3, %x3, 16  #1760 pc 41020
	addi	%x31, %x0, 21180  #1760 judge_intersection_fast.2946 pc 41024
	addi	%x16, %x31, 0  #1760 pc 41028
	sw	%x16, 0(%x11)  #1760 pc 41032
	sw	%x17, 12(%x11)  #1760 pc 41036
	sw	%x28, 8(%x11)  #1760 pc 41040
	sw	%x6, 4(%x11)  #1760 pc 41044
	addi	%x16, %x3, 0  #1781 pc 41048
	addi	%x3, %x3, 12  #1781 pc 41052
	addi	%x31, %x0, 21328  #1781 get_nvector_rect.2948 pc 41056
	addi	%x17, %x31, 0  #1781 pc 41060
	sw	%x17, 0(%x16)  #1781 pc 41064
	lw	%x17, 60(%x2)  #1781 pc 41068
	sw	%x17, 8(%x16)  #1781 pc 41072
	sw	%x30, 4(%x16)  #1781 pc 41076
	addi	%x18, %x3, 0  #1789 pc 41080
	addi	%x3, %x3, 8  #1789 pc 41084
	addi	%x31, %x0, 21476  #1789 get_nvector_plane.2950 pc 41088
	addi	%x21, %x31, 0  #1789 pc 41092
	sw	%x21, 0(%x18)  #1789 pc 41096
	sw	%x17, 4(%x18)  #1789 pc 41100
	addi	%x21, %x3, 0  #1797 pc 41104
	addi	%x3, %x3, 12  #1797 pc 41108
	addi	%x31, %x0, 21656  #1797 get_nvector_second.2952 pc 41112
	addi	%x22, %x31, 0  #1797 pc 41116
	sw	%x22, 0(%x21)  #1797 pc 41120
	sw	%x17, 8(%x21)  #1797 pc 41124
	sw	%x27, 4(%x21)  #1797 pc 41128
	addi	%x22, %x3, 0  #1819 pc 41132
	addi	%x3, %x3, 16  #1819 pc 41136
	addi	%x31, %x0, 22384  #1819 get_nvector.2954 pc 41140
	addi	%x23, %x31, 0  #1819 pc 41144
	sw	%x23, 0(%x22)  #1819 pc 41148
	sw	%x21, 12(%x22)  #1819 pc 41152
	sw	%x16, 8(%x22)  #1819 pc 41156
	sw	%x18, 4(%x22)  #1819 pc 41160
	addi	%x16, %x3, 0  #1835 pc 41164
	addi	%x3, %x3, 8  #1835 pc 41168
	addi	%x31, %x0, 22528  #1835 utexture.2957 pc 41172
	addi	%x18, %x31, 0  #1835 pc 41176
	sw	%x18, 0(%x16)  #1835 pc 41180
	lw	%x18, 64(%x2)  #1835 pc 41184
	sw	%x18, 4(%x16)  #1835 pc 41188
	addi	%x21, %x3, 0  #1913 pc 41192
	addi	%x3, %x3, 12  #1913 pc 41196
	addi	%x31, %x0, 24336  #1913 add_light.2960 pc 41200
	addi	%x23, %x31, 0  #1913 pc 41204
	sw	%x23, 0(%x21)  #1913 pc 41208
	sw	%x18, 8(%x21)  #1913 pc 41212
	lw	%x23, 72(%x2)  #1913 pc 41216
	sw	%x23, 4(%x21)  #1913 pc 41220
	addi	%x24, %x3, 0  #1930 pc 41224
	addi	%x3, %x3, 36  #1930 pc 41228
	addi	%x31, %x0, 24580  #1930 trace_reflections.2964 pc 41232
	addi	%x14, %x31, 0  #1930 pc 41236
	sw	%x14, 0(%x24)  #1930 pc 41240
	sw	%x25, 32(%x24)  #1930 pc 41244
	lw	%x14, 136(%x2)  #1930 pc 41248
	sw	%x14, 28(%x24)  #1930 pc 41252
	sw	%x6, 24(%x24)  #1930 pc 41256
	sw	%x17, 20(%x24)  #1930 pc 41260
	sw	%x11, 16(%x24)  #1930 pc 41264
	sw	%x30, 12(%x24)  #1930 pc 41268
	sw	%x26, 8(%x24)  #1930 pc 41272
	sw	%x21, 4(%x24)  #1930 pc 41276
	addi	%x14, %x3, 0  #1959 pc 41280
	addi	%x3, %x3, 84  #1959 pc 41284
	addi	%x31, %x0, 25168  #1959 trace_ray.2969 pc 41288
	addi	%x9, %x31, 0  #1959 pc 41292
	sw	%x9, 0(%x14)  #1959 pc 41296
	sw	%x16, 80(%x14)  #1959 pc 41300
	sw	%x24, 76(%x14)  #1959 pc 41304
	sw	%x28, 72(%x14)  #1959 pc 41308
	sw	%x18, 68(%x14)  #1959 pc 41312
	sw	%x29, 64(%x14)  #1959 pc 41316
	sw	%x25, 60(%x14)  #1959 pc 41320
	sw	%x20, 56(%x14)  #1959 pc 41324
	sw	%x23, 52(%x14)  #1959 pc 41328
	sw	%x6, 48(%x14)  #1959 pc 41332
	sw	%x15, 44(%x14)  #1959 pc 41336
	sw	%x17, 40(%x14)  #1959 pc 41340
	sw	%x5, 36(%x14)  #1959 pc 41344
	sw	%x12, 32(%x14)  #1959 pc 41348
	sw	%x19, 28(%x14)  #1959 pc 41352
	sw	%x30, 24(%x14)  #1959 pc 41356
	sw	%x27, 20(%x14)  #1959 pc 41360
	sw	%x26, 16(%x14)  #1959 pc 41364
	sw	%x22, 12(%x14)  #1959 pc 41368
	sw	%x13, 8(%x14)  #1959 pc 41372
	sw	%x21, 4(%x14)  #1959 pc 41376
	addi	%x9, %x3, 0  #2052 pc 41380
	addi	%x3, %x3, 52  #2052 pc 41384
	addi	%x31, %x0, 26992  #2052 trace_diffuse_ray.2975 pc 41388
	addi	%x13, %x31, 0  #2052 pc 41392
	sw	%x13, 0(%x9)  #2052 pc 41396
	sw	%x16, 48(%x9)  #2052 pc 41400
	sw	%x18, 44(%x9)  #2052 pc 41404
	sw	%x25, 40(%x9)  #2052 pc 41408
	sw	%x6, 36(%x9)  #2052 pc 41412
	sw	%x15, 32(%x9)  #2052 pc 41416
	sw	%x17, 28(%x9)  #2052 pc 41420
	sw	%x12, 24(%x9)  #2052 pc 41424
	sw	%x11, 20(%x9)  #2052 pc 41428
	sw	%x27, 16(%x9)  #2052 pc 41432
	sw	%x26, 12(%x9)  #2052 pc 41436
	sw	%x22, 8(%x9)  #2052 pc 41440
	lw	%x6, 68(%x2)  #2052 pc 41444
	sw	%x6, 4(%x9)  #2052 pc 41448
	addi	%x11, %x3, 0  #2071 pc 41452
	addi	%x3, %x3, 8  #2071 pc 41456
	addi	%x31, %x0, 27488  #2071 iter_trace_diffuse_rays.2978 pc 41460
	addi	%x13, %x31, 0  #2071 pc 41464
	sw	%x13, 0(%x11)  #2071 pc 41468
	sw	%x9, 4(%x11)  #2071 pc 41472
	addi	%x9, %x3, 0  #2087 pc 41476
	addi	%x3, %x3, 12  #2087 pc 41480
	addi	%x31, %x0, 27808  #2087 trace_diffuse_rays.2983 pc 41484
	addi	%x13, %x31, 0  #2087 pc 41488
	sw	%x13, 0(%x9)  #2087 pc 41492
	sw	%x20, 8(%x9)  #2087 pc 41496
	sw	%x11, 4(%x9)  #2087 pc 41500
	addi	%x11, %x3, 0  #2097 pc 41504
	addi	%x3, %x3, 12  #2097 pc 41508
	addi	%x31, %x0, 27896  #2097 trace_diffuse_ray_80percent.2987 pc 41512
	addi	%x13, %x31, 0  #2097 pc 41516
	sw	%x13, 0(%x11)  #2097 pc 41520
	sw	%x9, 8(%x11)  #2097 pc 41524
	lw	%x13, 116(%x2)  #2097 pc 41528
	sw	%x13, 4(%x11)  #2097 pc 41532
	addi	%x16, %x3, 0  #2123 pc 41536
	addi	%x3, %x3, 16  #2123 pc 41540
	addi	%x31, %x0, 28292  #2123 calc_diffuse_using_1point.2991 pc 41544
	addi	%x17, %x31, 0  #2123 pc 41548
	sw	%x17, 0(%x16)  #2123 pc 41552
	sw	%x11, 12(%x16)  #2123 pc 41556
	sw	%x23, 8(%x16)  #2123 pc 41560
	sw	%x6, 4(%x16)  #2123 pc 41564
	addi	%x11, %x3, 0  #2142 pc 41568
	addi	%x3, %x3, 12  #2142 pc 41572
	addi	%x31, %x0, 28628  #2142 calc_diffuse_using_5points.2994 pc 41576
	addi	%x17, %x31, 0  #2142 pc 41580
	sw	%x17, 0(%x11)  #2142 pc 41584
	sw	%x23, 8(%x11)  #2142 pc 41588
	sw	%x6, 4(%x11)  #2142 pc 41592
	addi	%x17, %x3, 0  #2162 pc 41596
	addi	%x3, %x3, 8  #2162 pc 41600
	addi	%x31, %x0, 29216  #2162 do_without_neighbors.3000 pc 41604
	addi	%x18, %x31, 0  #2162 pc 41608
	sw	%x18, 0(%x17)  #2162 pc 41612
	sw	%x16, 4(%x17)  #2162 pc 41616
	addi	%x16, %x3, 0  #2177 pc 41620
	addi	%x3, %x3, 8  #2177 pc 41624
	addi	%x31, %x0, 29436  #2177 neighbors_exist.3003 pc 41628
	addi	%x18, %x31, 0  #2177 pc 41632
	sw	%x18, 0(%x16)  #2177 pc 41636
	lw	%x18, 76(%x2)  #2177 pc 41640
	sw	%x18, 4(%x16)  #2177 pc 41644
	addi	%x19, %x3, 0  #2214 pc 41648
	addi	%x3, %x3, 12  #2214 pc 41652
	addi	%x31, %x0, 30012  #2214 try_exploit_neighbors.3016 pc 41656
	addi	%x20, %x31, 0  #2214 pc 41660
	sw	%x20, 0(%x19)  #2214 pc 41664
	sw	%x17, 8(%x19)  #2214 pc 41668
	sw	%x11, 4(%x19)  #2214 pc 41672
	addi	%x11, %x3, 0  #2241 pc 41676
	addi	%x3, %x3, 8  #2241 pc 41680
	addi	%x31, %x0, 30384  #2241 write_ppm_header.3023 pc 41684
	addi	%x20, %x31, 0  #2241 pc 41688
	sw	%x20, 0(%x11)  #2241 pc 41692
	sw	%x18, 4(%x11)  #2241 pc 41696
	addi	%x20, %x3, 0  #2267 pc 41700
	addi	%x3, %x3, 8  #2267 pc 41704
	addi	%x31, %x0, 30780  #2267 write_rgb.3029 pc 41708
	addi	%x21, %x31, 0  #2267 pc 41712
	sw	%x21, 0(%x20)  #2267 pc 41716
	sw	%x23, 4(%x20)  #2267 pc 41720
	addi	%x21, %x3, 0  #2290 pc 41724
	addi	%x3, %x3, 16  #2290 pc 41728
	addi	%x31, %x0, 31016  #2290 pretrace_diffuse_rays.3031 pc 41732
	addi	%x22, %x31, 0  #2290 pc 41736
	sw	%x22, 0(%x21)  #2290 pc 41740
	sw	%x9, 12(%x21)  #2290 pc 41744
	sw	%x13, 8(%x21)  #2290 pc 41748
	sw	%x6, 4(%x21)  #2290 pc 41752
	addi	%x6, %x3, 0  #2320 pc 41756
	addi	%x3, %x3, 40  #2320 pc 41760
	addi	%x31, %x0, 31476  #2320 pretrace_pixels.3034 pc 41764
	addi	%x9, %x31, 0  #2320 pc 41768
	sw	%x9, 0(%x6)  #2320 pc 41772
	sw	%x7, 36(%x6)  #2320 pc 41776
	sw	%x14, 32(%x6)  #2320 pc 41780
	sw	%x29, 28(%x6)  #2320 pc 41784
	sw	%x10, 24(%x6)  #2320 pc 41788
	lw	%x7, 84(%x2)  #2320 pc 41792
	sw	%x7, 20(%x6)  #2320 pc 41796
	sw	%x23, 16(%x6)  #2320 pc 41800
	lw	%x9, 108(%x2)  #2320 pc 41804
	sw	%x9, 12(%x6)  #2320 pc 41808
	sw	%x21, 8(%x6)  #2320 pc 41812
	lw	%x9, 80(%x2)  #2320 pc 41816
	sw	%x9, 4(%x6)  #2320 pc 41820
	addi	%x10, %x3, 0  #2345 pc 41824
	addi	%x3, %x3, 28  #2345 pc 41828
	addi	%x31, %x0, 32124  #2345 pretrace_line.3041 pc 41832
	addi	%x14, %x31, 0  #2345 pc 41836
	sw	%x14, 0(%x10)  #2345 pc 41840
	sw	%x8, 24(%x10)  #2345 pc 41844
	lw	%x8, 100(%x2)  #2345 pc 41848
	sw	%x8, 20(%x10)  #2345 pc 41852
	sw	%x7, 16(%x10)  #2345 pc 41856
	sw	%x6, 12(%x10)  #2345 pc 41860
	sw	%x18, 8(%x10)  #2345 pc 41864
	sw	%x9, 4(%x10)  #2345 pc 41868
	addi	%x6, %x3, 0  #2361 pc 41872
	addi	%x3, %x3, 28  #2361 pc 41876
	addi	%x31, %x0, 32328  #2361 scan_pixel.3045 pc 41880
	addi	%x8, %x31, 0  #2361 pc 41884
	sw	%x8, 0(%x6)  #2361 pc 41888
	sw	%x20, 24(%x6)  #2361 pc 41892
	sw	%x19, 20(%x6)  #2361 pc 41896
	sw	%x23, 16(%x6)  #2361 pc 41900
	sw	%x16, 12(%x6)  #2361 pc 41904
	sw	%x18, 8(%x6)  #2361 pc 41908
	sw	%x17, 4(%x6)  #2361 pc 41912
	addi	%x8, %x3, 0  #2381 pc 41916
	addi	%x3, %x3, 16  #2381 pc 41920
	addi	%x31, %x0, 32736  #2381 scan_line.3052 pc 41924
	addi	%x14, %x31, 0  #2381 pc 41928
	sw	%x14, 0(%x8)  #2381 pc 41932
	sw	%x6, 12(%x8)  #2381 pc 41936
	sw	%x10, 8(%x8)  #2381 pc 41940
	sw	%x18, 4(%x8)  #2381 pc 41944
	addi	%x6, %x3, 0  #2433 pc 41948
	addi	%x3, %x3, 8  #2433 pc 41952
	addi	%x31, %x0, 33640  #2433 create_pixelline.3066 pc 41956
	addi	%x14, %x31, 0  #2433 pc 41960
	sw	%x14, 0(%x6)  #2433 pc 41964
	sw	%x18, 4(%x6)  #2433 pc 41968
	addi	%x14, %x3, 0  #2461 pc 41972
	addi	%x3, %x3, 8  #2461 pc 41976
	addi	%x31, %x0, 33896  #2461 calc_dirvec.3073 pc 41980
	addi	%x16, %x31, 0  #2461 pc 41984
	sw	%x16, 0(%x14)  #2461 pc 41988
	sw	%x13, 4(%x14)  #2461 pc 41992
	addi	%x16, %x3, 0  #2482 pc 41996
	addi	%x3, %x3, 8  #2482 pc 42000
	addi	%x31, %x0, 34944  #2482 calc_dirvecs.3081 pc 42004
	addi	%x17, %x31, 0  #2482 pc 42008
	sw	%x17, 0(%x16)  #2482 pc 42012
	sw	%x14, 4(%x16)  #2482 pc 42016
	addi	%x14, %x3, 0  #2496 pc 42020
	addi	%x3, %x3, 8  #2496 pc 42024
	addi	%x31, %x0, 35256  #2496 calc_dirvec_rows.3086 pc 42028
	addi	%x17, %x31, 0  #2496 pc 42032
	sw	%x17, 0(%x14)  #2496 pc 42036
	sw	%x16, 4(%x14)  #2496 pc 42040
	addi	%x16, %x3, 0  #2509 pc 42044
	addi	%x3, %x3, 8  #2509 pc 42048
	addi	%x31, %x0, 35452  #2509 create_dirvec.3090 pc 42052
	addi	%x17, %x31, 0  #2509 pc 42056
	sw	%x17, 0(%x16)  #2509 pc 42060
	lw	%x17, 0(%x2)  #2509 pc 42064
	sw	%x17, 4(%x16)  #2509 pc 42068
	addi	%x19, %x3, 0  #2515 pc 42072
	addi	%x3, %x3, 8  #2515 pc 42076
	addi	%x31, %x0, 35560  #2515 create_dirvec_elements.3092 pc 42080
	addi	%x20, %x31, 0  #2515 pc 42084
	sw	%x20, 0(%x19)  #2515 pc 42088
	sw	%x16, 4(%x19)  #2515 pc 42092
	addi	%x20, %x3, 0  #2522 pc 42096
	addi	%x3, %x3, 16  #2522 pc 42100
	addi	%x31, %x0, 35668  #2522 create_dirvecs.3095 pc 42104
	addi	%x21, %x31, 0  #2522 pc 42108
	sw	%x21, 0(%x20)  #2522 pc 42112
	sw	%x13, 12(%x20)  #2522 pc 42116
	sw	%x19, 8(%x20)  #2522 pc 42120
	sw	%x16, 4(%x20)  #2522 pc 42124
	addi	%x19, %x3, 0  #2534 pc 42128
	addi	%x3, %x3, 8  #2534 pc 42132
	addi	%x31, %x0, 35872  #2534 init_dirvec_constants.3097 pc 42136
	addi	%x21, %x31, 0  #2534 pc 42140
	sw	%x21, 0(%x19)  #2534 pc 42144
	lw	%x21, 144(%x2)  #2534 pc 42148
	sw	%x21, 4(%x19)  #2534 pc 42152
	addi	%x22, %x3, 0  #2541 pc 42156
	addi	%x3, %x3, 12  #2541 pc 42160
	addi	%x31, %x0, 35980  #2541 init_vecset_constants.3100 pc 42164
	addi	%x23, %x31, 0  #2541 pc 42168
	sw	%x23, 0(%x22)  #2541 pc 42172
	sw	%x19, 8(%x22)  #2541 pc 42176
	sw	%x13, 4(%x22)  #2541 pc 42180
	addi	%x13, %x3, 0  #2548 pc 42184
	addi	%x3, %x3, 16  #2548 pc 42188
	addi	%x31, %x0, 36092  #2548 init_dirvecs.3102 pc 42192
	addi	%x19, %x31, 0  #2548 pc 42196
	sw	%x19, 0(%x13)  #2548 pc 42200
	sw	%x22, 12(%x13)  #2548 pc 42204
	sw	%x20, 8(%x13)  #2548 pc 42208
	sw	%x14, 4(%x13)  #2548 pc 42212
	addi	%x14, %x3, 0  #2559 pc 42216
	addi	%x3, %x3, 16  #2559 pc 42220
	addi	%x31, %x0, 36208  #2559 add_reflection.3104 pc 42224
	addi	%x19, %x31, 0  #2559 pc 42228
	sw	%x19, 0(%x14)  #2559 pc 42232
	sw	%x21, 12(%x14)  #2559 pc 42236
	lw	%x19, 136(%x2)  #2559 pc 42240
	sw	%x19, 8(%x14)  #2559 pc 42244
	sw	%x16, 4(%x14)  #2559 pc 42248
	addi	%x16, %x3, 0  #2568 pc 42252
	addi	%x3, %x3, 16  #2568 pc 42256
	addi	%x31, %x0, 36424  #2568 setup_rect_reflection.3111 pc 42260
	addi	%x19, %x31, 0  #2568 pc 42264
	sw	%x19, 0(%x16)  #2568 pc 42268
	sw	%x5, 12(%x16)  #2568 pc 42272
	sw	%x12, 8(%x16)  #2568 pc 42276
	sw	%x14, 4(%x16)  #2568 pc 42280
	addi	%x19, %x3, 0  #2582 pc 42284
	addi	%x3, %x3, 16  #2582 pc 42288
	addi	%x31, %x0, 36884  #2582 setup_surface_reflection.3114 pc 42292
	addi	%x20, %x31, 0  #2582 pc 42296
	sw	%x20, 0(%x19)  #2582 pc 42300
	sw	%x5, 12(%x19)  #2582 pc 42304
	sw	%x12, 8(%x19)  #2582 pc 42308
	sw	%x14, 4(%x19)  #2582 pc 42312
	addi	%x5, %x3, 0  #2597 pc 42316
	addi	%x3, %x3, 16  #2597 pc 42320
	addi	%x31, %x0, 37332  #2597 setup_reflections.3117 pc 42324
	addi	%x14, %x31, 0  #2597 pc 42328
	sw	%x14, 0(%x5)  #2597 pc 42332
	sw	%x19, 12(%x5)  #2597 pc 42336
	sw	%x16, 8(%x5)  #2597 pc 42340
	sw	%x15, 4(%x5)  #2597 pc 42344
	addi	%x29, %x3, 0  #2619 pc 42348
	addi	%x3, %x3, 60  #2619 pc 42352
	addi	%x31, %x0, 37620  #2619 rt.3119 pc 42356
	addi	%x14, %x31, 0  #2619 pc 42360
	sw	%x14, 0(%x29)  #2619 pc 42364
	sw	%x11, 56(%x29)  #2619 pc 42368
	sw	%x5, 52(%x29)  #2619 pc 42372
	sw	%x21, 48(%x29)  #2619 pc 42376
	sw	%x7, 44(%x29)  #2619 pc 42380
	sw	%x8, 40(%x29)  #2619 pc 42384
	lw	%x5, 140(%x2)  #2619 pc 42388
	sw	%x5, 36(%x29)  #2619 pc 42392
	sw	%x10, 32(%x29)  #2619 pc 42396
	sw	%x17, 28(%x29)  #2619 pc 42400
	lw	%x5, 128(%x2)  #2619 pc 42404
	sw	%x5, 24(%x29)  #2619 pc 42408
	sw	%x12, 20(%x29)  #2619 pc 42412
	sw	%x13, 16(%x29)  #2619 pc 42416
	sw	%x18, 12(%x29)  #2619 pc 42420
	sw	%x9, 8(%x29)  #2619 pc 42424
	sw	%x6, 4(%x29)  #2619 pc 42428
	addi	%x5, %x0, 512  #0 pc 42432
	addi	%x7, %x0, 3  #0 pc 42436
	addi	%x6, %x5, 0  #0 pc 42440
	sw	%x1, 148(%x2)  #2640 pc 42444
	lw	%x30, 0(%x29)  #2640 pc 42448
	addi	%x2, %x2, 152  #2640 pc 42452
	jalr	%x1, %x30, 0  #2640 pc 42456
	addi	%x2, %x2, -152  #2640 pc 42460
	lw	%x1, 148(%x2)  #2640 pc 42464
	addi	%x2, %x2, 112
