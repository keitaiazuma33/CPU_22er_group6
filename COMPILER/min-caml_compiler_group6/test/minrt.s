.section	".rodata"
.align	8
l.6955:	! 128.000000
l.6906:	! 0.900000
l.6795:	! 150.000000
l.6792:	! -150.000000
l.6773:	! 0.100000
l.6769:	! -2.000000
l.6766:	! 0.003906
l.6734:	! 20.000000
l.6732:	! 0.050000
l.6724:	! 0.250000
l.6715:	! 10.000000
l.6710:	! 0.300000
l.6708:	! 255.000000
l.6703:	! 0.150000
l.6696:	! 3.141593
l.6694:	! 30.000000
l.6692:	! 15.000000
l.6690:	! 0.000100
l.6641:	! 100000000.000000
l.6635:	! 1000000000.000000
l.6612:	! -0.100000
l.6598:	! 0.010000
l.6596:	! -0.200000
l.6377:	! 2.000000
l.6340:	! -200.000000
l.6337:	! 200.000000
l.6332:	! 0.017453
l.6244:	! -1.000000
l.6234:	! 0.090909
l.6232:	! 0.111111
l.6230:	! 0.142857
l.6228:	! 0.200000
l.6226:	! 0.333333
l.6224:	! 0.001389
l.6222:	! 0.041667
l.6219:	! 1.000000
l.6217:	! 0.000198
l.6215:	! 0.008333
l.6213:	! 0.166667
l.6211:	! 0.500000
l.6207:	! 0.000000
.section	".text"
fiszero.2493:  #pc 0
	fmv	%f1, l.6207  #0 pc 0
	feq	%f31, %f0, %f1  #1 pc 4
	bge	%f30, %f31, 12  #1 pc 8
	j	fbe_else.9067 #pc 12
	nop #pc 16
	addi	%x6, %x0, 1  #0 pc 20
	ret #pc 24
	nop #pc 28
fbe_else.9067: #pc 32
	addi	%x6, %x0, 0  #0 pc 32
	ret #pc 36
	nop #pc 40
fispos.2495:  #pc 44
	fmv	%f1, l.6207  #0 pc 44
	fle	%f31, %f0, %f1  #3 pc 48
	bge	%f30, %f31, 12  #3 pc 52
	j	fble_else.9068 #pc 56
	nop #pc 60
	addi	%x6, %x0, 0  #0 pc 64
	ret #pc 68
	nop #pc 72
fble_else.9068: #pc 76
	addi	%x6, %x0, 1  #0 pc 76
	ret #pc 80
	nop #pc 84
fisneg.2497:  #pc 88
	fmv	%f1, l.6207  #0 pc 88
	fle	%f31, %f1, %f0  #5 pc 92
	bge	%f30, %f31, 12  #5 pc 96
	j	fble_else.9069 #pc 100
	nop #pc 104
	addi	%x6, %x0, 0  #0 pc 108
	ret #pc 112
	nop #pc 116
fble_else.9069: #pc 120
	addi	%x6, %x0, 1  #0 pc 120
	ret #pc 124
	nop #pc 128
fneg.2499:  #pc 132
	fsub	%f0, %f30, %f0  #7 pc 132
	ret #pc 136
	nop #pc 140
fsqr.2501:  #pc 144
	fmul	%f0, %f0, %f0  #9 pc 144
	ret #pc 148
	nop #pc 152
fhalf.2503:  #pc 156
	fmv	%f1, l.6211  #0 pc 156
	fmul	%f0, %f1, %f0  #11 pc 160
	ret #pc 164
	nop #pc 168
fless.2505:  #pc 172
	fle	%f31, %f1, %f0  #13 pc 172
	bge	%f30, %f31, 12  #13 pc 176
	j	fble_else.9070 #pc 180
	nop #pc 184
	addi	%x6, %x0, 0  #0 pc 188
	ret #pc 192
	nop #pc 196
fble_else.9070: #pc 200
	addi	%x6, %x0, 1  #0 pc 200
	ret #pc 204
	nop #pc 208
sin.2508:  #pc 212
	fmul	%f1, %f0, %f0  #16 pc 212
	fmul	%f2, %f0, %f1  #17 pc 216
	fmul	%f3, %f2, %f1  #18 pc 220
	fmul	%f1, %f3, %f1  #19 pc 224
	fmv	%f4, l.6213  #0 pc 228
	fmul	%f2, %f4, %f2  #20 pc 232
	fsub	%f0, %f0, %f2  #20 pc 236
	fmv	%f2, l.6215  #0 pc 240
	fmul	%f2, %f2, %f3  #20 pc 244
	fadd	%f0, %f0, %f2  #20 pc 248
	fmv	%f2, l.6217  #0 pc 252
	fmul	%f1, %f2, %f1  #20 pc 256
	fsub	%f0, %f0, %f1  #20 pc 260
	ret #pc 264
	nop #pc 268
cos.2510:  #pc 272
	fmul	%f0, %f0, %f0  #24 pc 272
	fmul	%f1, %f0, %f0  #25 pc 276
	fmul	%f2, %f1, %f0  #26 pc 280
	fmv	%f3, l.6219  #0 pc 284
	fmv	%f4, l.6211  #0 pc 288
	fmul	%f0, %f4, %f0  #27 pc 292
	fsub	%f0, %f3, %f0  #27 pc 296
	fmv	%f3, l.6222  #0 pc 300
	fmul	%f1, %f3, %f1  #27 pc 304
	fadd	%f0, %f0, %f1  #27 pc 308
	fmv	%f1, l.6224  #0 pc 312
	fmul	%f1, %f1, %f2  #27 pc 316
	fsub	%f0, %f0, %f1  #27 pc 320
	ret #pc 324
	nop #pc 328
atan.2512:  #pc 332
	fmul	%f1, %f0, %f0  #31 pc 332
	fmul	%f2, %f0, %f1  #32 pc 336
	fmul	%f3, %f2, %f1  #33 pc 340
	fmul	%f4, %f3, %f1  #34 pc 344
	fmul	%f5, %f4, %f1  #35 pc 348
	fmul	%f1, %f5, %f1  #36 pc 352
	fmv	%f6, l.6226  #0 pc 356
	fmul	%f2, %f6, %f2  #37 pc 360
	fsub	%f0, %f0, %f2  #37 pc 364
	fmv	%f2, l.6228  #0 pc 368
	fmul	%f2, %f2, %f3  #37 pc 372
	fadd	%f0, %f0, %f2  #37 pc 376
	fmv	%f2, l.6230  #0 pc 380
	fmul	%f2, %f2, %f4  #37 pc 384
	fsub	%f0, %f0, %f2  #37 pc 388
	fmv	%f2, l.6232  #0 pc 392
	fmul	%f2, %f2, %f5  #37 pc 396
	fadd	%f0, %f0, %f2  #37 pc 400
	fmv	%f2, l.6234  #0 pc 404
	fmul	%f1, %f2, %f1  #37 pc 408
	fsub	%f0, %f0, %f1  #37 pc 412
	ret #pc 416
	nop #pc 420
floor.2514:  #pc 424
	fmv	%f1, l.6207  #0 pc 424
	fle	%f31, %f1, %f0  #41 pc 428
	bge	%f30, %f31, 12  #41 pc 432
	j	fble_else.9071 #pc 436
	nop #pc 440
	ftoi	%x6, %f0  #42 pc 444
	itof	%f0, %x6  #42 pc 448
	ret #pc 452
	nop #pc 456
fble_else.9071: #pc 460
	fmv	%f1, l.6219  #0 pc 460
	fsub	%f0, %f0, %f1  #44 pc 464
	ftoi	%x6, %f0  #44 pc 468
	itof	%f0, %x6  #44 pc 472
	ret #pc 476
	nop #pc 480
float_of_int.2518:  #pc 484
	itof	%f0, %x6  #50 pc 484
	ret #pc 488
	nop #pc 492
int_of_float.2520:  #pc 496
	ftoi	%x6, %f0  #53 pc 496
	ret #pc 500
	nop #pc 504
mul_abs.2522:  #pc 508
	addi	%x31, %x0, -1  #pc 508
	beq	%x8, %x31, 12  #57 pc 512
	j	be_else.9072 #pc 516
	nop #pc 520
	addi	%x6, %x9, 0  #58 pc 524
	ret #pc 528
	nop #pc 532
be_else.9072: #pc 536
	addi	%x10, %x0, 1  #0 pc 536
	sll	%x10, %x10, %x8  #60 pc 540
	and	%x10, %x7, %x10  #60 pc 544
	beq	%x10, %x0, 12  #60 pc 548
	j	be_else.9073 #pc 552
	nop #pc 556
	addi	%x8, %x8, -1  #61 pc 560
	j	mul_abs.2522  #61 pc 564
	nop #pc 568
be_else.9073: #pc 572
	addi	%x10, %x8, -1  #63 pc 572
	sll	%x8, %x6, %x8  #63 pc 576
	add	%x9, %x9, %x8  #63 pc 580
	addi	%x8, %x10, 0  #0 pc 584
	j	mul_abs.2522  #63 pc 588
	nop #pc 592
mul.2527:  #pc 596
	bge	%x6, %x0, 12  #67 pc 596
	j	bge_else.9074 #pc 600
	nop #pc 604
	addi	%x8, %x6, 0  #67 pc 608
	j	bge_cont.9075 #pc 612
	nop #pc 616
bge_else.9074: #pc 620
	sub	%x8, %x0, %x6  #67 pc 620
bge_cont.9075: #pc 624
	bge	%x7, %x0, 12  #68 pc 624
	j	bge_else.9076 #pc 628
	nop #pc 632
	addi	%x9, %x7, 0  #68 pc 636
	j	bge_cont.9077 #pc 640
	nop #pc 644
bge_else.9076: #pc 648
	sub	%x9, %x0, %x7  #68 pc 648
bge_cont.9077: #pc 652
	addi	%x10, %x0, 30  #0 pc 652
	addi	%x11, %x0, 0  #0 pc 656
	sw	%x7, 0(%x2)  #69 pc 660
	sw	%x6, 4(%x2)  #69 pc 664
	addi	%x7, %x9, 0  #0 pc 668
	addi	%x6, %x8, 0  #0 pc 672
	addi	%x9, %x11, 0  #0 pc 676
	addi	%x8, %x10, 0  #0 pc 680
	sw	%x1, 8(%x2)  #69 pc 684
	addi	%x2, %x2, 12  #69 pc 688
	jal	%x1, mul_abs.2522  #69 pc 692
	addi	%x2, %x2, -12  #69 pc 696
	lw	%x1, 8(%x2) #69 pc 700
	lw	%x7, 4(%x2)  #70 pc 704
	srli	%x7, %x7, 31  #70 pc 708
	lw	%x8, 0(%x2)  #70 pc 712
	srli	%x8, %x8, 31  #70 pc 716
	beq	%x7, %x8, 12  #70 pc 720
	j	be_else.9078 #pc 724
	nop #pc 728
	ret #pc 732
	nop #pc 736
be_else.9078: #pc 740
	sub	%x6, %x0, %x6  #73 pc 740
	ret #pc 744
	nop #pc 748
div_abs.2530:  #pc 752
	addi	%x31, %x0, -1  #pc 752
	beq	%x8, %x31, 12  #77 pc 756
	j	be_else.9079 #pc 760
	nop #pc 764
	addi	%x6, %x9, 0  #78 pc 768
	ret #pc 772
	nop #pc 776
be_else.9079: #pc 780
	srl	%x10, %x6, %x8  #80 pc 780
	bge	%x10, %x7, 12  #80 pc 784
	j	ble_else.9080 #pc 788
	nop #pc 792
	sll	%x10, %x7, %x8  #81 pc 796
	sub	%x6, %x6, %x10  #81 pc 800
	addi	%x10, %x8, -1  #81 pc 804
	addi	%x11, %x0, 1  #0 pc 808
	sll	%x8, %x11, %x8  #81 pc 812
	add	%x9, %x9, %x8  #81 pc 816
	addi	%x8, %x10, 0  #0 pc 820
	j	div_abs.2530  #81 pc 824
	nop #pc 828
ble_else.9080: #pc 832
	addi	%x8, %x8, -1  #83 pc 832
	j	div_abs.2530  #83 pc 836
	nop #pc 840
div.2535:  #pc 844
	bge	%x6, %x0, 12  #87 pc 844
	j	bge_else.9081 #pc 848
	nop #pc 852
	addi	%x8, %x6, 0  #87 pc 856
	j	bge_cont.9082 #pc 860
	nop #pc 864
bge_else.9081: #pc 868
	sub	%x8, %x0, %x6  #87 pc 868
bge_cont.9082: #pc 872
	bge	%x7, %x0, 12  #88 pc 872
	j	bge_else.9083 #pc 876
	nop #pc 880
	addi	%x9, %x7, 0  #88 pc 884
	j	bge_cont.9084 #pc 888
	nop #pc 892
bge_else.9083: #pc 896
	sub	%x9, %x0, %x7  #88 pc 896
bge_cont.9084: #pc 900
	addi	%x10, %x0, 30  #0 pc 900
	addi	%x11, %x0, 0  #0 pc 904
	sw	%x7, 0(%x2)  #89 pc 908
	sw	%x6, 4(%x2)  #89 pc 912
	addi	%x7, %x9, 0  #0 pc 916
	addi	%x6, %x8, 0  #0 pc 920
	addi	%x9, %x11, 0  #0 pc 924
	addi	%x8, %x10, 0  #0 pc 928
	sw	%x1, 8(%x2)  #89 pc 932
	addi	%x2, %x2, 12  #89 pc 936
	jal	%x1, div_abs.2530  #89 pc 940
	addi	%x2, %x2, -12  #89 pc 944
	lw	%x1, 8(%x2) #89 pc 948
	lw	%x7, 4(%x2)  #90 pc 952
	srli	%x7, %x7, 31  #90 pc 956
	lw	%x8, 0(%x2)  #90 pc 960
	srli	%x8, %x8, 31  #90 pc 964
	beq	%x7, %x8, 12  #90 pc 968
	j	be_else.9085 #pc 972
	nop #pc 976
	ret #pc 980
	nop #pc 984
be_else.9085: #pc 988
	sub	%x6, %x0, %x6  #93 pc 988
	ret #pc 992
	nop #pc 996
print_char.2538:  #pc 1000
	sw	%x6, 0(%x5)  #96 pc 1000
	addi	%x5, %x5, 4  #96 pc 1004
	ret #pc 1008
	nop #pc 1012
print_int.2540:  #pc 1016
	bge	%x6, %x0, 12  #100 pc 1016
	j	bge_else.9087 #pc 1020
	nop #pc 1024
	addi	%x31, %x0, 10  #pc 1028
	bge	%x6, %x31, 12  #104 pc 1032
	j	bge_else.9088 #pc 1036
	nop #pc 1040
	addi	%x7, %x0, 10  #0 pc 1044
	sw	%x6, 0(%x2)  #107 pc 1048
	sw	%x1, 4(%x2)  #107 pc 1052
	addi	%x2, %x2, 8  #107 pc 1056
	jal	%x1, div.2535  #107 pc 1060
	addi	%x2, %x2, -8  #107 pc 1064
	lw	%x1, 4(%x2) #107 pc 1068
	sw	%x6, 4(%x2)  #108 pc 1072
	sw	%x1, 8(%x2)  #108 pc 1076
	addi	%x2, %x2, 12  #108 pc 1080
	jal	%x1, print_int.2540  #108 pc 1084
	addi	%x2, %x2, -12  #108 pc 1088
	lw	%x1, 8(%x2) #108 pc 1092
	addi	%x7, %x0, 10  #0 pc 1096
	lw	%x6, 4(%x2)  #109 pc 1100
	sw	%x1, 8(%x2)  #109 pc 1104
	addi	%x2, %x2, 12  #109 pc 1108
	jal	%x1, mul.2527  #109 pc 1112
	addi	%x2, %x2, -12  #109 pc 1116
	lw	%x1, 8(%x2) #109 pc 1120
	lw	%x7, 0(%x2)  #109 pc 1124
	sub	%x6, %x7, %x6  #109 pc 1128
	addi	%x6, %x6, 48  #109 pc 1132
	sw	%x6, 0(%x5)  #109 pc 1136
	addi	%x5, %x5, 4  #109 pc 1140
	ret #pc 1144
	nop #pc 1148
bge_else.9088: #pc 1152
	addi	%x6, %x6, 48  #105 pc 1152
	sw	%x6, 0(%x5)  #105 pc 1156
	addi	%x5, %x5, 4  #105 pc 1160
	ret #pc 1164
	nop #pc 1168
bge_else.9087: #pc 1172
	addi	%x7, %x0, 45  #0 pc 1172
	sw	%x7, 0(%x5)  #101 pc 1176
	addi	%x5, %x5, 4  #101 pc 1180
	sub	%x6, %x0, %x6  #102 pc 1184
	j	print_int.2540  #102 pc 1188
	nop #pc 1192
read_int.2542:  #pc 1196
	lw	%x6, 0(%x4)  #115 pc 1196
	addi	%x4, %x4, 4  #115 pc 1200
	ret #pc 1204
	nop #pc 1208
read_float.2544:  #pc 1212
	flw	%f0, 0(%x4)  #118 pc 1212
	addi	%x4, %x4, 4  #118 pc 1216
	ret #pc 1220
	nop #pc 1224
assign_array.2546:  #pc 1228
	bge	%x8, %x0, 12  #169 pc 1228
	j	bge_else.9091 #pc 1232
	nop #pc 1236
	beq	%x8, %x0, 12  #172 pc 1240
	j	be_else.9092 #pc 1244
	nop #pc 1248
	slli	%x8, %x8, 2  #173 pc 1252
	add	%x31, %x8, %x6  #173 pc 1256
	sw	%x7, 0(%x31)  #173 pc 1260
	ret #pc 1264
	nop #pc 1268
be_else.9092: #pc 1272
	slli	%x9, %x8, 2  #175 pc 1272
	add	%x31, %x9, %x6  #175 pc 1276
	sw	%x7, 0(%x31)  #175 pc 1280
	addi	%x8, %x8, -1  #176 pc 1284
	j	assign_array.2546  #176 pc 1288
	nop #pc 1292
bge_else.9091: #pc 1296
	ret #pc 1296
	nop #pc 1300
create_array.2550:  #pc 1304
	addi	%x8, %x3, 0  #180 pc 1304
	addi	%x9, %x8, 0  #181 pc 1308
	slli	%x10, %x6, 2  #182 pc 1312
	add	%x8, %x8, %x10  #182 pc 1316
	addi	%x3, %x8, 0  #182 pc 1320
	addi	%x8, %x6, -1  #183 pc 1324
	sw	%x9, 0(%x2)  #183 pc 1328
	addi	%x6, %x9, 0  #0 pc 1332
	sw	%x1, 4(%x2)  #183 pc 1336
	addi	%x2, %x2, 8  #183 pc 1340
	jal	%x1, assign_array.2546  #183 pc 1344
	addi	%x2, %x2, -8  #183 pc 1348
	lw	%x1, 4(%x2) #183 pc 1352
	lw	%x6, 0(%x2)  #184 pc 1356
	ret #pc 1360
	nop #pc 1364
assign_farray.2553:  #pc 1368
	bge	%x7, %x0, 12  #188 pc 1368
	j	bge_else.9095 #pc 1372
	nop #pc 1376
	beq	%x7, %x0, 12  #191 pc 1380
	j	be_else.9096 #pc 1384
	nop #pc 1388
	slli	%x7, %x7, 2  #192 pc 1392
	add	%x31, %x7, %x6  #192 pc 1396
	fsw	%f0, 0(%x31) #192 pc 1400
	ret #pc 1404
	nop #pc 1408
be_else.9096: #pc 1412
	slli	%x8, %x7, 2  #194 pc 1412
	add	%x31, %x8, %x6  #194 pc 1416
	fsw	%f0, 0(%x31) #194 pc 1420
	addi	%x7, %x7, -1  #195 pc 1424
	j	assign_farray.2553  #195 pc 1428
	nop #pc 1432
bge_else.9095: #pc 1436
	ret #pc 1436
	nop #pc 1440
create_float_array.2557:  #pc 1444
	addi	%x7, %x3, 0  #199 pc 1444
	addi	%x8, %x7, 0  #200 pc 1448
	slli	%x9, %x6, 2  #201 pc 1452
	add	%x7, %x7, %x9  #201 pc 1456
	addi	%x3, %x7, 0  #201 pc 1460
	addi	%x7, %x6, -1  #202 pc 1464
	sw	%x8, 0(%x2)  #202 pc 1468
	addi	%x6, %x8, 0  #0 pc 1472
	sw	%x1, 4(%x2)  #202 pc 1476
	addi	%x2, %x2, 8  #202 pc 1480
	jal	%x1, assign_farray.2553  #202 pc 1484
	addi	%x2, %x2, -8  #202 pc 1488
	lw	%x1, 4(%x2) #202 pc 1492
	lw	%x6, 0(%x2)  #203 pc 1496
	ret #pc 1500
	nop #pc 1504
xor.2590:  #pc 1508
	beq	%x6, %x0, 12  #341 pc 1508
	j	be_else.9099 #pc 1512
	nop #pc 1516
	addi	%x6, %x7, 0  #341 pc 1520
	ret #pc 1524
	nop #pc 1528
be_else.9099: #pc 1532
	beq	%x7, %x0, 12  #341 pc 1532
	j	be_else.9100 #pc 1536
	nop #pc 1540
	addi	%x6, %x0, 1  #0 pc 1544
	ret #pc 1548
	nop #pc 1552
be_else.9100: #pc 1556
	addi	%x6, %x0, 0  #0 pc 1556
	ret #pc 1560
	nop #pc 1564
sgn.2593:  #pc 1568
	fsw	%f0, 0(%x2)  #349 pc 1568
	sw	%x1, 8(%x2)  #349 pc 1572
	addi	%x2, %x2, 12  #349 pc 1576
	jal	%x1, fiszero.2493  #349 pc 1580
	addi	%x2, %x2, -12  #349 pc 1584
	lw	%x1, 8(%x2) #349 pc 1588
	beq	%x6, %x0, 12  #349 pc 1592
	j	be_else.9101 #pc 1596
	nop #pc 1600
	flw	%f0, 0(%x2)  #350 pc 1604
	sw	%x1, 8(%x2)  #350 pc 1608
	addi	%x2, %x2, 12  #350 pc 1612
	jal	%x1, fispos.2495  #350 pc 1616
	addi	%x2, %x2, -12  #350 pc 1620
	lw	%x1, 8(%x2) #350 pc 1624
	beq	%x6, %x0, 12  #350 pc 1628
	j	be_else.9102 #pc 1632
	nop #pc 1636
	addi	%x6, l.6244, 0  #0 pc 1640
	ret #pc 1644
	nop #pc 1648
be_else.9102: #pc 1652
	addi	%x6, l.6219, 0  #0 pc 1652
	ret #pc 1656
	nop #pc 1660
be_else.9101: #pc 1664
	addi	%x6, l.6207, 0  #0 pc 1664
	ret #pc 1668
	nop #pc 1672
fneg_cond.2595:  #pc 1676
	beq	%x6, %x0, 12  #356 pc 1676
	j	be_else.9103 #pc 1680
	nop #pc 1684
	j	fneg.2499  #356 pc 1688
	nop #pc 1692
be_else.9103: #pc 1696
	ret #pc 1696
	nop #pc 1700
add_mod5.2598:  #pc 1704
	add	%x6, %x6, %x7  #361 pc 1704
	addi	%x31, %x0, 5  #pc 1708
	bge	%x6, %x31, 12  #362 pc 1712
	j	bge_else.9104 #pc 1716
	nop #pc 1720
	addi	%x6, %x6, -5  #362 pc 1724
	ret #pc 1728
	nop #pc 1732
bge_else.9104: #pc 1736
	ret #pc 1736
	nop #pc 1740
vecset.2601:  #pc 1744
	fsw	%f0, 0(%x6)  #377 pc 1744
	fsw	%f1, 4(%x6)  #378 pc 1748
	fsw	%f2, 8(%x6)  #379 pc 1752
	ret #pc 1756
	nop #pc 1760
vecfill.2606:  #pc 1764
	fsw	%f0, 0(%x6)  #384 pc 1764
	fsw	%f0, 4(%x6)  #385 pc 1768
	fsw	%f0, 8(%x6)  #386 pc 1772
	ret #pc 1776
	nop #pc 1780
vecbzero.2609:  #pc 1784
	fmv	%f0, l.6207  #0 pc 1784
	j	vecfill.2606  #391 pc 1788
	nop #pc 1792
veccpy.2611:  #pc 1796
	flw	%f0, 0(%x7)  #396 pc 1796
	fsw	%f0, 0(%x6)  #396 pc 1800
	flw	%f0, 4(%x7)  #397 pc 1804
	fsw	%f0, 4(%x6)  #397 pc 1808
	flw	%f0, 8(%x7)  #398 pc 1812
	fsw	%f0, 8(%x6)  #398 pc 1816
	ret #pc 1820
	nop #pc 1824
vecunit_sgn.2614:  #pc 1828
	flw	%f0, 0(%x6)  #420 pc 1828
	sw	%x7, 0(%x2)  #420 pc 1832
	sw	%x6, 4(%x2)  #420 pc 1836
	sw	%x1, 8(%x2)  #420 pc 1840
	addi	%x2, %x2, 12  #420 pc 1844
	jal	%x1, fsqr.2501  #420 pc 1848
	addi	%x2, %x2, -12  #420 pc 1852
	lw	%x1, 8(%x2) #420 pc 1856
	lw	%x6, 4(%x2)  #420 pc 1860
	flw	%f1, 4(%x6)  #420 pc 1864
	fsw	%f0, 8(%x2)  #420 pc 1868
	fadd	%f0, %f1, %f30  #0 pc 1872
	sw	%x1, 16(%x2)  #420 pc 1876
	addi	%x2, %x2, 20  #420 pc 1880
	jal	%x1, fsqr.2501  #420 pc 1884
	addi	%x2, %x2, -20  #420 pc 1888
	lw	%x1, 16(%x2) #420 pc 1892
	flw	%f1, 8(%x2)  #420 pc 1896
	fadd	%f0, %f1, %f0  #420 pc 1900
	lw	%x6, 4(%x2)  #420 pc 1904
	flw	%f1, 8(%x6)  #420 pc 1908
	fsw	%f0, 16(%x2)  #420 pc 1912
	fadd	%f0, %f1, %f30  #0 pc 1916
	sw	%x1, 24(%x2)  #420 pc 1920
	addi	%x2, %x2, 28  #420 pc 1924
	jal	%x1, fsqr.2501  #420 pc 1928
	addi	%x2, %x2, -28  #420 pc 1932
	lw	%x1, 24(%x2) #420 pc 1936
	flw	%f1, 16(%x2)  #420 pc 1940
	fadd	%f0, %f1, %f0  #420 pc 1944
	fsqrt	%f0, %f0  #420 pc 1948
	fsw	%f0, 24(%x2)  #421 pc 1952
	sw	%x1, 32(%x2)  #421 pc 1956
	addi	%x2, %x2, 36  #421 pc 1960
	jal	%x1, fiszero.2493  #421 pc 1964
	addi	%x2, %x2, -36  #421 pc 1968
	lw	%x1, 32(%x2) #421 pc 1972
	beq	%x6, %x0, 12  #421 pc 1976
	j	be_else.9108 #pc 1980
	nop #pc 1984
	lw	%x6, 0(%x2)  #421 pc 1988
	beq	%x6, %x0, 12  #421 pc 1992
	j	be_else.9110 #pc 1996
	nop #pc 2000
	fmv	%f0, l.6219  #0 pc 2004
	flw	%f1, 24(%x2)  #421 pc 2008
	fdiv	%f0, %f0, %f1  #421 pc 2012
	j	be_cont.9111 #pc 2016
	nop #pc 2020
be_else.9110: #pc 2024
	fmv	%f0, l.6244  #0 pc 2024
	flw	%f1, 24(%x2)  #421 pc 2028
	fdiv	%f0, %f0, %f1  #421 pc 2032
be_cont.9111: #pc 2036
	j	be_cont.9109 #pc 2036
	nop #pc 2040
be_else.9108: #pc 2044
	fmv	%f0, l.6219  #0 pc 2044
be_cont.9109: #pc 2048
	lw	%x6, 4(%x2)  #422 pc 2048
	flw	%f1, 0(%x6)  #422 pc 2052
	fmul	%f1, %f1, %f0  #422 pc 2056
	fsw	%f1, 0(%x6)  #422 pc 2060
	flw	%f1, 4(%x6)  #423 pc 2064
	fmul	%f1, %f1, %f0  #423 pc 2068
	fsw	%f1, 4(%x6)  #423 pc 2072
	flw	%f1, 8(%x6)  #424 pc 2076
	fmul	%f0, %f1, %f0  #424 pc 2080
	fsw	%f0, 8(%x6)  #424 pc 2084
	ret #pc 2088
	nop #pc 2092
veciprod.2617:  #pc 2096
	flw	%f0, 0(%x6)  #429 pc 2096
	flw	%f1, 0(%x7)  #429 pc 2100
	fmul	%f0, %f0, %f1  #429 pc 2104
	flw	%f1, 4(%x6)  #429 pc 2108
	flw	%f2, 4(%x7)  #429 pc 2112
	fmul	%f1, %f1, %f2  #429 pc 2116
	fadd	%f0, %f0, %f1  #429 pc 2120
	flw	%f1, 8(%x6)  #429 pc 2124
	flw	%f2, 8(%x7)  #429 pc 2128
	fmul	%f1, %f1, %f2  #429 pc 2132
	fadd	%f0, %f0, %f1  #429 pc 2136
	ret #pc 2140
	nop #pc 2144
veciprod2.2620:  #pc 2148
	flw	%f3, 0(%x6)  #434 pc 2148
	fmul	%f0, %f3, %f0  #434 pc 2152
	flw	%f3, 4(%x6)  #434 pc 2156
	fmul	%f1, %f3, %f1  #434 pc 2160
	fadd	%f0, %f0, %f1  #434 pc 2164
	flw	%f1, 8(%x6)  #434 pc 2168
	fmul	%f1, %f1, %f2  #434 pc 2172
	fadd	%f0, %f0, %f1  #434 pc 2176
	ret #pc 2180
	nop #pc 2184
vecaccum.2625:  #pc 2188
	flw	%f1, 0(%x6)  #439 pc 2188
	flw	%f2, 0(%x7)  #439 pc 2192
	fmul	%f2, %f0, %f2  #439 pc 2196
	fadd	%f1, %f1, %f2  #439 pc 2200
	fsw	%f1, 0(%x6)  #439 pc 2204
	flw	%f1, 4(%x6)  #440 pc 2208
	flw	%f2, 4(%x7)  #440 pc 2212
	fmul	%f2, %f0, %f2  #440 pc 2216
	fadd	%f1, %f1, %f2  #440 pc 2220
	fsw	%f1, 4(%x6)  #440 pc 2224
	flw	%f1, 8(%x6)  #441 pc 2228
	flw	%f2, 8(%x7)  #441 pc 2232
	fmul	%f0, %f0, %f2  #441 pc 2236
	fadd	%f0, %f1, %f0  #441 pc 2240
	fsw	%f0, 8(%x6)  #441 pc 2244
	ret #pc 2248
	nop #pc 2252
vecadd.2629:  #pc 2256
	flw	%f0, 0(%x6)  #446 pc 2256
	flw	%f1, 0(%x7)  #446 pc 2260
	fadd	%f0, %f0, %f1  #446 pc 2264
	fsw	%f0, 0(%x6)  #446 pc 2268
	flw	%f0, 4(%x6)  #447 pc 2272
	flw	%f1, 4(%x7)  #447 pc 2276
	fadd	%f0, %f0, %f1  #447 pc 2280
	fsw	%f0, 4(%x6)  #447 pc 2284
	flw	%f0, 8(%x6)  #448 pc 2288
	flw	%f1, 8(%x7)  #448 pc 2292
	fadd	%f0, %f0, %f1  #448 pc 2296
	fsw	%f0, 8(%x6)  #448 pc 2300
	ret #pc 2304
	nop #pc 2308
vecscale.2632:  #pc 2312
	flw	%f1, 0(%x6)  #462 pc 2312
	fmul	%f1, %f1, %f0  #462 pc 2316
	fsw	%f1, 0(%x6)  #462 pc 2320
	flw	%f1, 4(%x6)  #463 pc 2324
	fmul	%f1, %f1, %f0  #463 pc 2328
	fsw	%f1, 4(%x6)  #463 pc 2332
	flw	%f1, 8(%x6)  #464 pc 2336
	fmul	%f0, %f1, %f0  #464 pc 2340
	fsw	%f0, 8(%x6)  #464 pc 2344
	ret #pc 2348
	nop #pc 2352
vecaccumv.2635:  #pc 2356
	flw	%f0, 0(%x6)  #469 pc 2356
	flw	%f1, 0(%x7)  #469 pc 2360
	flw	%f2, 0(%x8)  #469 pc 2364
	fmul	%f1, %f1, %f2  #469 pc 2368
	fadd	%f0, %f0, %f1  #469 pc 2372
	fsw	%f0, 0(%x6)  #469 pc 2376
	flw	%f0, 4(%x6)  #470 pc 2380
	flw	%f1, 4(%x7)  #470 pc 2384
	flw	%f2, 4(%x8)  #470 pc 2388
	fmul	%f1, %f1, %f2  #470 pc 2392
	fadd	%f0, %f0, %f1  #470 pc 2396
	fsw	%f0, 4(%x6)  #470 pc 2400
	flw	%f0, 8(%x6)  #471 pc 2404
	flw	%f1, 8(%x7)  #471 pc 2408
	flw	%f2, 8(%x8)  #471 pc 2412
	fmul	%f1, %f1, %f2  #471 pc 2416
	fadd	%f0, %f0, %f1  #471 pc 2420
	fsw	%f0, 8(%x6)  #471 pc 2424
	ret #pc 2428
	nop #pc 2432
o_texturetype.2639:  #pc 2436
	lw	%x6, 0(%x6)  #480 pc 2436
	ret #pc 2440
	nop #pc 2444
o_form.2641:  #pc 2448
	lw	%x6, 4(%x6)  #490 pc 2448
	ret #pc 2452
	nop #pc 2456
o_reflectiontype.2643:  #pc 2460
	lw	%x6, 8(%x6)  #500 pc 2460
	ret #pc 2464
	nop #pc 2468
o_isinvert.2645:  #pc 2472
	lw	%x6, 24(%x6)  #510 pc 2472
	ret #pc 2476
	nop #pc 2480
o_isrot.2647:  #pc 2484
	lw	%x6, 12(%x6)  #519 pc 2484
	ret #pc 2488
	nop #pc 2492
o_param_a.2649:  #pc 2496
	lw	%x6, 16(%x6)  #528 pc 2496
	flw	%f0, 0(%x6)  #533 pc 2500
	ret #pc 2504
	nop #pc 2508
o_param_b.2651:  #pc 2512
	lw	%x6, 16(%x6)  #538 pc 2512
	flw	%f0, 4(%x6)  #543 pc 2516
	ret #pc 2520
	nop #pc 2524
o_param_c.2653:  #pc 2528
	lw	%x6, 16(%x6)  #548 pc 2528
	flw	%f0, 8(%x6)  #553 pc 2532
	ret #pc 2536
	nop #pc 2540
o_param_abc.2655:  #pc 2544
	lw	%x6, 16(%x6)  #558 pc 2544
	ret #pc 2548
	nop #pc 2552
o_param_x.2657:  #pc 2556
	lw	%x6, 20(%x6)  #568 pc 2556
	flw	%f0, 0(%x6)  #573 pc 2560
	ret #pc 2564
	nop #pc 2568
o_param_y.2659:  #pc 2572
	lw	%x6, 20(%x6)  #578 pc 2572
	flw	%f0, 4(%x6)  #583 pc 2576
	ret #pc 2580
	nop #pc 2584
o_param_z.2661:  #pc 2588
	lw	%x6, 20(%x6)  #588 pc 2588
	flw	%f0, 8(%x6)  #593 pc 2592
	ret #pc 2596
	nop #pc 2600
o_diffuse.2663:  #pc 2604
	lw	%x6, 28(%x6)  #598 pc 2604
	flw	%f0, 0(%x6)  #603 pc 2608
	ret #pc 2612
	nop #pc 2616
o_hilight.2665:  #pc 2620
	lw	%x6, 28(%x6)  #608 pc 2620
	flw	%f0, 4(%x6)  #613 pc 2624
	ret #pc 2628
	nop #pc 2632
o_color_red.2667:  #pc 2636
	lw	%x6, 32(%x6)  #618 pc 2636
	flw	%f0, 0(%x6)  #623 pc 2640
	ret #pc 2644
	nop #pc 2648
o_color_green.2669:  #pc 2652
	lw	%x6, 32(%x6)  #628 pc 2652
	flw	%f0, 4(%x6)  #633 pc 2656
	ret #pc 2660
	nop #pc 2664
o_color_blue.2671:  #pc 2668
	lw	%x6, 32(%x6)  #638 pc 2668
	flw	%f0, 8(%x6)  #643 pc 2672
	ret #pc 2676
	nop #pc 2680
o_param_r1.2673:  #pc 2684
	lw	%x6, 36(%x6)  #648 pc 2684
	flw	%f0, 0(%x6)  #653 pc 2688
	ret #pc 2692
	nop #pc 2696
o_param_r2.2675:  #pc 2700
	lw	%x6, 36(%x6)  #658 pc 2700
	flw	%f0, 4(%x6)  #663 pc 2704
	ret #pc 2708
	nop #pc 2712
o_param_r3.2677:  #pc 2716
	lw	%x6, 36(%x6)  #668 pc 2716
	flw	%f0, 8(%x6)  #673 pc 2720
	ret #pc 2724
	nop #pc 2728
o_param_ctbl.2679:  #pc 2732
	lw	%x6, 40(%x6)  #685 pc 2732
	ret #pc 2736
	nop #pc 2740
p_rgb.2681:  #pc 2744
	lw	%x6, 0(%x6)  #699 pc 2744
	ret #pc 2748
	nop #pc 2752
p_intersection_points.2683:  #pc 2756
	lw	%x6, 4(%x6)  #706 pc 2756
	ret #pc 2760
	nop #pc 2764
p_surface_ids.2685:  #pc 2768
	lw	%x6, 8(%x6)  #714 pc 2768
	ret #pc 2772
	nop #pc 2776
p_calc_diffuse.2687:  #pc 2780
	lw	%x6, 12(%x6)  #721 pc 2780
	ret #pc 2784
	nop #pc 2788
p_energy.2689:  #pc 2792
	lw	%x6, 16(%x6)  #728 pc 2792
	ret #pc 2796
	nop #pc 2800
p_received_ray_20percent.2691:  #pc 2804
	lw	%x6, 20(%x6)  #735 pc 2804
	ret #pc 2808
	nop #pc 2812
p_group_id.2693:  #pc 2816
	lw	%x6, 24(%x6)  #751 pc 2816
	lw	%x6, 0(%x6)  #753 pc 2820
	ret #pc 2824
	nop #pc 2828
p_set_group_id.2695:  #pc 2832
	lw	%x6, 24(%x6)  #758 pc 2832
	sw	%x7, 0(%x6)  #760 pc 2836
	ret #pc 2840
	nop #pc 2844
p_nvectors.2698:  #pc 2848
	lw	%x6, 28(%x6)  #765 pc 2848
	ret #pc 2852
	nop #pc 2856
d_vec.2700:  #pc 2860
	lw	%x6, 0(%x6)  #776 pc 2860
	ret #pc 2864
	nop #pc 2868
d_const.2702:  #pc 2872
	lw	%x6, 4(%x6)  #782 pc 2872
	ret #pc 2876
	nop #pc 2880
r_surface_id.2704:  #pc 2884
	lw	%x6, 0(%x6)  #792 pc 2884
	ret #pc 2888
	nop #pc 2892
r_dvec.2706:  #pc 2896
	lw	%x6, 4(%x6)  #798 pc 2896
	ret #pc 2900
	nop #pc 2904
r_bright.2708:  #pc 2908
	flw	%f0, 8(%x6)  #804 pc 2908
	ret #pc 2912
	nop #pc 2916
rad.2710:  #pc 2920
	fmv	%f1, l.6332  #0 pc 2920
	fmul	%f0, %f0, %f1  #814 pc 2924
	ret #pc 2928
	nop #pc 2932
read_screen_settings.2712:  #pc 2936
	lw	%x6, 20(%x29)  #0 pc 2936
	lw	%x7, 16(%x29)  #0 pc 2940
	lw	%x8, 12(%x29)  #0 pc 2944
	lw	%x9, 8(%x29)  #0 pc 2948
	lw	%x10, 4(%x29)  #0 pc 2952
	sw	%x6, 0(%x2)  #821 pc 2956
	sw	%x8, 4(%x2)  #821 pc 2960
	sw	%x9, 8(%x2)  #821 pc 2964
	sw	%x7, 12(%x2)  #821 pc 2968
	sw	%x10, 16(%x2)  #821 pc 2972
	sw	%x1, 20(%x2)  #821 pc 2976
	addi	%x2, %x2, 24  #821 pc 2980
	jal	%x1, read_float.2544  #821 pc 2984
	addi	%x2, %x2, -24  #821 pc 2988
	lw	%x1, 20(%x2) #821 pc 2992
	lw	%x6, 16(%x2)  #821 pc 2996
	fsw	%f0, 0(%x6)  #821 pc 3000
	sw	%x1, 20(%x2)  #822 pc 3004
	addi	%x2, %x2, 24  #822 pc 3008
	jal	%x1, read_float.2544  #822 pc 3012
	addi	%x2, %x2, -24  #822 pc 3016
	lw	%x1, 20(%x2) #822 pc 3020
	lw	%x6, 16(%x2)  #822 pc 3024
	fsw	%f0, 4(%x6)  #822 pc 3028
	sw	%x1, 20(%x2)  #823 pc 3032
	addi	%x2, %x2, 24  #823 pc 3036
	jal	%x1, read_float.2544  #823 pc 3040
	addi	%x2, %x2, -24  #823 pc 3044
	lw	%x1, 20(%x2) #823 pc 3048
	lw	%x6, 16(%x2)  #823 pc 3052
	fsw	%f0, 8(%x6)  #823 pc 3056
	sw	%x1, 20(%x2)  #825 pc 3060
	addi	%x2, %x2, 24  #825 pc 3064
	jal	%x1, read_float.2544  #825 pc 3068
	addi	%x2, %x2, -24  #825 pc 3072
	lw	%x1, 20(%x2) #825 pc 3076
	sw	%x1, 20(%x2)  #825 pc 3080
	addi	%x2, %x2, 24  #825 pc 3084
	jal	%x1, rad.2710  #825 pc 3088
	addi	%x2, %x2, -24  #825 pc 3092
	lw	%x1, 20(%x2) #825 pc 3096
	fsw	%f0, 24(%x2)  #826 pc 3100
	sw	%x1, 32(%x2)  #826 pc 3104
	addi	%x2, %x2, 36  #826 pc 3108
	jal	%x1, cos.2510  #826 pc 3112
	addi	%x2, %x2, -36  #826 pc 3116
	lw	%x1, 32(%x2) #826 pc 3120
	flw	%f1, 24(%x2)  #827 pc 3124
	fsw	%f0, 32(%x2)  #827 pc 3128
	fadd	%f0, %f1, %f30  #0 pc 3132
	sw	%x1, 40(%x2)  #827 pc 3136
	addi	%x2, %x2, 44  #827 pc 3140
	jal	%x1, sin.2508  #827 pc 3144
	addi	%x2, %x2, -44  #827 pc 3148
	lw	%x1, 40(%x2) #827 pc 3152
	fsw	%f0, 40(%x2)  #828 pc 3156
	sw	%x1, 48(%x2)  #828 pc 3160
	addi	%x2, %x2, 52  #828 pc 3164
	jal	%x1, read_float.2544  #828 pc 3168
	addi	%x2, %x2, -52  #828 pc 3172
	lw	%x1, 48(%x2) #828 pc 3176
	sw	%x1, 48(%x2)  #828 pc 3180
	addi	%x2, %x2, 52  #828 pc 3184
	jal	%x1, rad.2710  #828 pc 3188
	addi	%x2, %x2, -52  #828 pc 3192
	lw	%x1, 48(%x2) #828 pc 3196
	fsw	%f0, 48(%x2)  #829 pc 3200
	sw	%x1, 56(%x2)  #829 pc 3204
	addi	%x2, %x2, 60  #829 pc 3208
	jal	%x1, cos.2510  #829 pc 3212
	addi	%x2, %x2, -60  #829 pc 3216
	lw	%x1, 56(%x2) #829 pc 3220
	flw	%f1, 48(%x2)  #830 pc 3224
	fsw	%f0, 56(%x2)  #830 pc 3228
	fadd	%f0, %f1, %f30  #0 pc 3232
	sw	%x1, 64(%x2)  #830 pc 3236
	addi	%x2, %x2, 68  #830 pc 3240
	jal	%x1, sin.2508  #830 pc 3244
	addi	%x2, %x2, -68  #830 pc 3248
	lw	%x1, 64(%x2) #830 pc 3252
	flw	%f1, 32(%x2)  #832 pc 3256
	fmul	%f2, %f1, %f0  #832 pc 3260
	fmv	%f3, l.6337  #0 pc 3264
	fmul	%f2, %f2, %f3  #832 pc 3268
	lw	%x6, 12(%x2)  #832 pc 3272
	fsw	%f2, 0(%x6)  #832 pc 3276
	fmv	%f2, l.6340  #0 pc 3280
	flw	%f3, 40(%x2)  #833 pc 3284
	fmul	%f2, %f3, %f2  #833 pc 3288
	fsw	%f2, 4(%x6)  #833 pc 3292
	flw	%f2, 56(%x2)  #834 pc 3296
	fmul	%f4, %f1, %f2  #834 pc 3300
	fmv	%f5, l.6337  #0 pc 3304
	fmul	%f4, %f4, %f5  #834 pc 3308
	fsw	%f4, 8(%x6)  #834 pc 3312
	lw	%x7, 8(%x2)  #836 pc 3316
	fsw	%f2, 0(%x7)  #836 pc 3320
	fmv	%f4, l.6207  #0 pc 3324
	fsw	%f4, 4(%x7)  #837 pc 3328
	fsw	%f0, 64(%x2)  #838 pc 3332
	sw	%x1, 72(%x2)  #838 pc 3336
	addi	%x2, %x2, 76  #838 pc 3340
	jal	%x1, fneg.2499  #838 pc 3344
	addi	%x2, %x2, -76  #838 pc 3348
	lw	%x1, 72(%x2) #838 pc 3352
	lw	%x6, 8(%x2)  #838 pc 3356
	fsw	%f0, 8(%x6)  #838 pc 3360
	flw	%f0, 40(%x2)  #840 pc 3364
	sw	%x1, 72(%x2)  #840 pc 3368
	addi	%x2, %x2, 76  #840 pc 3372
	jal	%x1, fneg.2499  #840 pc 3376
	addi	%x2, %x2, -76  #840 pc 3380
	lw	%x1, 72(%x2) #840 pc 3384
	flw	%f1, 64(%x2)  #840 pc 3388
	fmul	%f0, %f0, %f1  #840 pc 3392
	lw	%x6, 4(%x2)  #840 pc 3396
	fsw	%f0, 0(%x6)  #840 pc 3400
	flw	%f0, 32(%x2)  #841 pc 3404
	sw	%x1, 72(%x2)  #841 pc 3408
	addi	%x2, %x2, 76  #841 pc 3412
	jal	%x1, fneg.2499  #841 pc 3416
	addi	%x2, %x2, -76  #841 pc 3420
	lw	%x1, 72(%x2) #841 pc 3424
	lw	%x6, 4(%x2)  #841 pc 3428
	fsw	%f0, 4(%x6)  #841 pc 3432
	flw	%f0, 40(%x2)  #842 pc 3436
	sw	%x1, 72(%x2)  #842 pc 3440
	addi	%x2, %x2, 76  #842 pc 3444
	jal	%x1, fneg.2499  #842 pc 3448
	addi	%x2, %x2, -76  #842 pc 3452
	lw	%x1, 72(%x2) #842 pc 3456
	flw	%f1, 56(%x2)  #842 pc 3460
	fmul	%f0, %f0, %f1  #842 pc 3464
	lw	%x6, 4(%x2)  #842 pc 3468
	fsw	%f0, 8(%x6)  #842 pc 3472
	lw	%x6, 16(%x2)  #844 pc 3476
	flw	%f0, 0(%x6)  #844 pc 3480
	lw	%x7, 12(%x2)  #844 pc 3484
	flw	%f1, 0(%x7)  #844 pc 3488
	fsub	%f0, %f0, %f1  #844 pc 3492
	lw	%x8, 0(%x2)  #844 pc 3496
	fsw	%f0, 0(%x8)  #844 pc 3500
	flw	%f0, 4(%x6)  #845 pc 3504
	flw	%f1, 4(%x7)  #845 pc 3508
	fsub	%f0, %f0, %f1  #845 pc 3512
	fsw	%f0, 4(%x8)  #845 pc 3516
	flw	%f0, 8(%x6)  #846 pc 3520
	flw	%f1, 8(%x7)  #846 pc 3524
	fsub	%f0, %f0, %f1  #846 pc 3528
	fsw	%f0, 8(%x8)  #846 pc 3532
	ret #pc 3536
	nop #pc 3540
read_light.2714:  #pc 3544
	lw	%x6, 8(%x29)  #0 pc 3544
	lw	%x7, 4(%x29)  #0 pc 3548
	sw	%x7, 0(%x2)  #853 pc 3552
	sw	%x6, 4(%x2)  #853 pc 3556
	sw	%x1, 8(%x2)  #853 pc 3560
	addi	%x2, %x2, 12  #853 pc 3564
	jal	%x1, read_int.2542  #853 pc 3568
	addi	%x2, %x2, -12  #853 pc 3572
	lw	%x1, 8(%x2) #853 pc 3576
	sw	%x1, 8(%x2)  #856 pc 3580
	addi	%x2, %x2, 12  #856 pc 3584
	jal	%x1, read_float.2544  #856 pc 3588
	addi	%x2, %x2, -12  #856 pc 3592
	lw	%x1, 8(%x2) #856 pc 3596
	sw	%x1, 8(%x2)  #856 pc 3600
	addi	%x2, %x2, 12  #856 pc 3604
	jal	%x1, rad.2710  #856 pc 3608
	addi	%x2, %x2, -12  #856 pc 3612
	lw	%x1, 8(%x2) #856 pc 3616
	fsw	%f0, 8(%x2)  #857 pc 3620
	sw	%x1, 16(%x2)  #857 pc 3624
	addi	%x2, %x2, 20  #857 pc 3628
	jal	%x1, sin.2508  #857 pc 3632
	addi	%x2, %x2, -20  #857 pc 3636
	lw	%x1, 16(%x2) #857 pc 3640
	sw	%x1, 16(%x2)  #858 pc 3644
	addi	%x2, %x2, 20  #858 pc 3648
	jal	%x1, fneg.2499  #858 pc 3652
	addi	%x2, %x2, -20  #858 pc 3656
	lw	%x1, 16(%x2) #858 pc 3660
	lw	%x6, 4(%x2)  #858 pc 3664
	fsw	%f0, 4(%x6)  #858 pc 3668
	sw	%x1, 16(%x2)  #859 pc 3672
	addi	%x2, %x2, 20  #859 pc 3676
	jal	%x1, read_float.2544  #859 pc 3680
	addi	%x2, %x2, -20  #859 pc 3684
	lw	%x1, 16(%x2) #859 pc 3688
	sw	%x1, 16(%x2)  #859 pc 3692
	addi	%x2, %x2, 20  #859 pc 3696
	jal	%x1, rad.2710  #859 pc 3700
	addi	%x2, %x2, -20  #859 pc 3704
	lw	%x1, 16(%x2) #859 pc 3708
	flw	%f1, 8(%x2)  #860 pc 3712
	fsw	%f0, 16(%x2)  #860 pc 3716
	fadd	%f0, %f1, %f30  #0 pc 3720
	sw	%x1, 24(%x2)  #860 pc 3724
	addi	%x2, %x2, 28  #860 pc 3728
	jal	%x1, cos.2510  #860 pc 3732
	addi	%x2, %x2, -28  #860 pc 3736
	lw	%x1, 24(%x2) #860 pc 3740
	flw	%f1, 16(%x2)  #861 pc 3744
	fsw	%f0, 24(%x2)  #861 pc 3748
	fadd	%f0, %f1, %f30  #0 pc 3752
	sw	%x1, 32(%x2)  #861 pc 3756
	addi	%x2, %x2, 36  #861 pc 3760
	jal	%x1, sin.2508  #861 pc 3764
	addi	%x2, %x2, -36  #861 pc 3768
	lw	%x1, 32(%x2) #861 pc 3772
	flw	%f1, 24(%x2)  #862 pc 3776
	fmul	%f0, %f1, %f0  #862 pc 3780
	lw	%x6, 4(%x2)  #862 pc 3784
	fsw	%f0, 0(%x6)  #862 pc 3788
	flw	%f0, 16(%x2)  #863 pc 3792
	sw	%x1, 32(%x2)  #863 pc 3796
	addi	%x2, %x2, 36  #863 pc 3800
	jal	%x1, cos.2510  #863 pc 3804
	addi	%x2, %x2, -36  #863 pc 3808
	lw	%x1, 32(%x2) #863 pc 3812
	flw	%f1, 24(%x2)  #864 pc 3816
	fmul	%f0, %f1, %f0  #864 pc 3820
	lw	%x6, 4(%x2)  #864 pc 3824
	fsw	%f0, 8(%x6)  #864 pc 3828
	sw	%x1, 32(%x2)  #865 pc 3832
	addi	%x2, %x2, 36  #865 pc 3836
	jal	%x1, read_float.2544  #865 pc 3840
	addi	%x2, %x2, -36  #865 pc 3844
	lw	%x1, 32(%x2) #865 pc 3848
	lw	%x6, 0(%x2)  #865 pc 3852
	fsw	%f0, 0(%x6)  #865 pc 3856
	ret #pc 3860
	nop #pc 3864
rotate_quadratic_matrix.2716:  #pc 3868
	flw	%f0, 0(%x7)  #875 pc 3868
	sw	%x6, 0(%x2)  #875 pc 3872
	sw	%x7, 4(%x2)  #875 pc 3876
	sw	%x1, 8(%x2)  #875 pc 3880
	addi	%x2, %x2, 12  #875 pc 3884
	jal	%x1, cos.2510  #875 pc 3888
	addi	%x2, %x2, -12  #875 pc 3892
	lw	%x1, 8(%x2) #875 pc 3896
	lw	%x6, 4(%x2)  #876 pc 3900
	flw	%f1, 0(%x6)  #876 pc 3904
	fsw	%f0, 8(%x2)  #876 pc 3908
	fadd	%f0, %f1, %f30  #0 pc 3912
	sw	%x1, 16(%x2)  #876 pc 3916
	addi	%x2, %x2, 20  #876 pc 3920
	jal	%x1, sin.2508  #876 pc 3924
	addi	%x2, %x2, -20  #876 pc 3928
	lw	%x1, 16(%x2) #876 pc 3932
	lw	%x6, 4(%x2)  #877 pc 3936
	flw	%f1, 4(%x6)  #877 pc 3940
	fsw	%f0, 16(%x2)  #877 pc 3944
	fadd	%f0, %f1, %f30  #0 pc 3948
	sw	%x1, 24(%x2)  #877 pc 3952
	addi	%x2, %x2, 28  #877 pc 3956
	jal	%x1, cos.2510  #877 pc 3960
	addi	%x2, %x2, -28  #877 pc 3964
	lw	%x1, 24(%x2) #877 pc 3968
	lw	%x6, 4(%x2)  #878 pc 3972
	flw	%f1, 4(%x6)  #878 pc 3976
	fsw	%f0, 24(%x2)  #878 pc 3980
	fadd	%f0, %f1, %f30  #0 pc 3984
	sw	%x1, 32(%x2)  #878 pc 3988
	addi	%x2, %x2, 36  #878 pc 3992
	jal	%x1, sin.2508  #878 pc 3996
	addi	%x2, %x2, -36  #878 pc 4000
	lw	%x1, 32(%x2) #878 pc 4004
	lw	%x6, 4(%x2)  #879 pc 4008
	flw	%f1, 8(%x6)  #879 pc 4012
	fsw	%f0, 32(%x2)  #879 pc 4016
	fadd	%f0, %f1, %f30  #0 pc 4020
	sw	%x1, 40(%x2)  #879 pc 4024
	addi	%x2, %x2, 44  #879 pc 4028
	jal	%x1, cos.2510  #879 pc 4032
	addi	%x2, %x2, -44  #879 pc 4036
	lw	%x1, 40(%x2) #879 pc 4040
	lw	%x6, 4(%x2)  #880 pc 4044
	flw	%f1, 8(%x6)  #880 pc 4048
	fsw	%f0, 40(%x2)  #880 pc 4052
	fadd	%f0, %f1, %f30  #0 pc 4056
	sw	%x1, 48(%x2)  #880 pc 4060
	addi	%x2, %x2, 52  #880 pc 4064
	jal	%x1, sin.2508  #880 pc 4068
	addi	%x2, %x2, -52  #880 pc 4072
	lw	%x1, 48(%x2) #880 pc 4076
	flw	%f1, 40(%x2)  #882 pc 4080
	flw	%f2, 24(%x2)  #882 pc 4084
	fmul	%f3, %f2, %f1  #882 pc 4088
	flw	%f4, 32(%x2)  #883 pc 4092
	flw	%f5, 16(%x2)  #883 pc 4096
	fmul	%f6, %f5, %f4  #883 pc 4100
	fmul	%f6, %f6, %f1  #883 pc 4104
	flw	%f7, 8(%x2)  #883 pc 4108
	fmul	%f8, %f7, %f0  #883 pc 4112
	fsub	%f6, %f6, %f8  #883 pc 4116
	fmul	%f8, %f7, %f4  #884 pc 4120
	fmul	%f8, %f8, %f1  #884 pc 4124
	fmul	%f9, %f5, %f0  #884 pc 4128
	fadd	%f8, %f8, %f9  #884 pc 4132
	fmul	%f9, %f2, %f0  #886 pc 4136
	fmul	%f10, %f5, %f4  #887 pc 4140
	fmul	%f10, %f10, %f0  #887 pc 4144
	fmul	%f11, %f7, %f1  #887 pc 4148
	fadd	%f10, %f10, %f11  #887 pc 4152
	fmul	%f11, %f7, %f4  #888 pc 4156
	fmul	%f0, %f11, %f0  #888 pc 4160
	fmul	%f1, %f5, %f1  #888 pc 4164
	fsub	%f0, %f0, %f1  #888 pc 4168
	fsw	%f0, 48(%x2)  #890 pc 4172
	fsw	%f8, 56(%x2)  #890 pc 4176
	fsw	%f10, 64(%x2)  #890 pc 4180
	fsw	%f6, 72(%x2)  #890 pc 4184
	fsw	%f9, 80(%x2)  #890 pc 4188
	fsw	%f3, 88(%x2)  #890 pc 4192
	fadd	%f0, %f4, %f30  #0 pc 4196
	sw	%x1, 96(%x2)  #890 pc 4200
	addi	%x2, %x2, 100  #890 pc 4204
	jal	%x1, fneg.2499  #890 pc 4208
	addi	%x2, %x2, -100  #890 pc 4212
	lw	%x1, 96(%x2) #890 pc 4216
	flw	%f1, 24(%x2)  #891 pc 4220
	flw	%f2, 16(%x2)  #891 pc 4224
	fmul	%f2, %f2, %f1  #891 pc 4228
	flw	%f3, 8(%x2)  #892 pc 4232
	fmul	%f1, %f3, %f1  #892 pc 4236
	lw	%x6, 0(%x2)  #895 pc 4240
	flw	%f3, 0(%x6)  #895 pc 4244
	flw	%f4, 4(%x6)  #896 pc 4248
	flw	%f5, 8(%x6)  #897 pc 4252
	flw	%f6, 88(%x2)  #902 pc 4256
	fsw	%f1, 96(%x2)  #902 pc 4260
	fsw	%f2, 104(%x2)  #902 pc 4264
	fsw	%f5, 112(%x2)  #902 pc 4268
	fsw	%f0, 120(%x2)  #902 pc 4272
	fsw	%f4, 128(%x2)  #902 pc 4276
	fsw	%f3, 136(%x2)  #902 pc 4280
	fadd	%f0, %f6, %f30  #0 pc 4284
	sw	%x1, 144(%x2)  #902 pc 4288
	addi	%x2, %x2, 148  #902 pc 4292
	jal	%x1, fsqr.2501  #902 pc 4296
	addi	%x2, %x2, -148  #902 pc 4300
	lw	%x1, 144(%x2) #902 pc 4304
	flw	%f1, 136(%x2)  #902 pc 4308
	fmul	%f0, %f1, %f0  #902 pc 4312
	flw	%f2, 80(%x2)  #902 pc 4316
	fsw	%f0, 144(%x2)  #902 pc 4320
	fadd	%f0, %f2, %f30  #0 pc 4324
	sw	%x1, 152(%x2)  #902 pc 4328
	addi	%x2, %x2, 156  #902 pc 4332
	jal	%x1, fsqr.2501  #902 pc 4336
	addi	%x2, %x2, -156  #902 pc 4340
	lw	%x1, 152(%x2) #902 pc 4344
	flw	%f1, 128(%x2)  #902 pc 4348
	fmul	%f0, %f1, %f0  #902 pc 4352
	flw	%f2, 144(%x2)  #902 pc 4356
	fadd	%f0, %f2, %f0  #902 pc 4360
	flw	%f2, 120(%x2)  #902 pc 4364
	fsw	%f0, 152(%x2)  #902 pc 4368
	fadd	%f0, %f2, %f30  #0 pc 4372
	sw	%x1, 160(%x2)  #902 pc 4376
	addi	%x2, %x2, 164  #902 pc 4380
	jal	%x1, fsqr.2501  #902 pc 4384
	addi	%x2, %x2, -164  #902 pc 4388
	lw	%x1, 160(%x2) #902 pc 4392
	flw	%f1, 112(%x2)  #902 pc 4396
	fmul	%f0, %f1, %f0  #902 pc 4400
	flw	%f2, 152(%x2)  #902 pc 4404
	fadd	%f0, %f2, %f0  #902 pc 4408
	lw	%x6, 0(%x2)  #902 pc 4412
	fsw	%f0, 0(%x6)  #902 pc 4416
	flw	%f0, 72(%x2)  #903 pc 4420
	sw	%x1, 160(%x2)  #903 pc 4424
	addi	%x2, %x2, 164  #903 pc 4428
	jal	%x1, fsqr.2501  #903 pc 4432
	addi	%x2, %x2, -164  #903 pc 4436
	lw	%x1, 160(%x2) #903 pc 4440
	flw	%f1, 136(%x2)  #903 pc 4444
	fmul	%f0, %f1, %f0  #903 pc 4448
	flw	%f2, 64(%x2)  #903 pc 4452
	fsw	%f0, 160(%x2)  #903 pc 4456
	fadd	%f0, %f2, %f30  #0 pc 4460
	sw	%x1, 168(%x2)  #903 pc 4464
	addi	%x2, %x2, 172  #903 pc 4468
	jal	%x1, fsqr.2501  #903 pc 4472
	addi	%x2, %x2, -172  #903 pc 4476
	lw	%x1, 168(%x2) #903 pc 4480
	flw	%f1, 128(%x2)  #903 pc 4484
	fmul	%f0, %f1, %f0  #903 pc 4488
	flw	%f2, 160(%x2)  #903 pc 4492
	fadd	%f0, %f2, %f0  #903 pc 4496
	flw	%f2, 104(%x2)  #903 pc 4500
	fsw	%f0, 168(%x2)  #903 pc 4504
	fadd	%f0, %f2, %f30  #0 pc 4508
	sw	%x1, 176(%x2)  #903 pc 4512
	addi	%x2, %x2, 180  #903 pc 4516
	jal	%x1, fsqr.2501  #903 pc 4520
	addi	%x2, %x2, -180  #903 pc 4524
	lw	%x1, 176(%x2) #903 pc 4528
	flw	%f1, 112(%x2)  #903 pc 4532
	fmul	%f0, %f1, %f0  #903 pc 4536
	flw	%f2, 168(%x2)  #903 pc 4540
	fadd	%f0, %f2, %f0  #903 pc 4544
	lw	%x6, 0(%x2)  #903 pc 4548
	fsw	%f0, 4(%x6)  #903 pc 4552
	flw	%f0, 56(%x2)  #904 pc 4556
	sw	%x1, 176(%x2)  #904 pc 4560
	addi	%x2, %x2, 180  #904 pc 4564
	jal	%x1, fsqr.2501  #904 pc 4568
	addi	%x2, %x2, -180  #904 pc 4572
	lw	%x1, 176(%x2) #904 pc 4576
	flw	%f1, 136(%x2)  #904 pc 4580
	fmul	%f0, %f1, %f0  #904 pc 4584
	flw	%f2, 48(%x2)  #904 pc 4588
	fsw	%f0, 176(%x2)  #904 pc 4592
	fadd	%f0, %f2, %f30  #0 pc 4596
	sw	%x1, 184(%x2)  #904 pc 4600
	addi	%x2, %x2, 188  #904 pc 4604
	jal	%x1, fsqr.2501  #904 pc 4608
	addi	%x2, %x2, -188  #904 pc 4612
	lw	%x1, 184(%x2) #904 pc 4616
	flw	%f1, 128(%x2)  #904 pc 4620
	fmul	%f0, %f1, %f0  #904 pc 4624
	flw	%f2, 176(%x2)  #904 pc 4628
	fadd	%f0, %f2, %f0  #904 pc 4632
	flw	%f2, 96(%x2)  #904 pc 4636
	fsw	%f0, 184(%x2)  #904 pc 4640
	fadd	%f0, %f2, %f30  #0 pc 4644
	sw	%x1, 192(%x2)  #904 pc 4648
	addi	%x2, %x2, 196  #904 pc 4652
	jal	%x1, fsqr.2501  #904 pc 4656
	addi	%x2, %x2, -196  #904 pc 4660
	lw	%x1, 192(%x2) #904 pc 4664
	flw	%f1, 112(%x2)  #904 pc 4668
	fmul	%f0, %f1, %f0  #904 pc 4672
	flw	%f2, 184(%x2)  #904 pc 4676
	fadd	%f0, %f2, %f0  #904 pc 4680
	lw	%x6, 0(%x2)  #904 pc 4684
	fsw	%f0, 8(%x6)  #904 pc 4688
	fmv	%f0, l.6377  #0 pc 4692
	flw	%f2, 72(%x2)  #907 pc 4696
	flw	%f3, 136(%x2)  #907 pc 4700
	fmul	%f4, %f3, %f2  #907 pc 4704
	flw	%f5, 56(%x2)  #907 pc 4708
	fmul	%f4, %f4, %f5  #907 pc 4712
	flw	%f6, 64(%x2)  #907 pc 4716
	flw	%f7, 128(%x2)  #907 pc 4720
	fmul	%f8, %f7, %f6  #907 pc 4724
	flw	%f9, 48(%x2)  #907 pc 4728
	fmul	%f8, %f8, %f9  #907 pc 4732
	fadd	%f4, %f4, %f8  #907 pc 4736
	flw	%f8, 104(%x2)  #907 pc 4740
	fmul	%f10, %f1, %f8  #907 pc 4744
	flw	%f11, 96(%x2)  #907 pc 4748
	fmul	%f10, %f10, %f11  #907 pc 4752
	fadd	%f4, %f4, %f10  #907 pc 4756
	fmul	%f0, %f0, %f4  #907 pc 4760
	lw	%x6, 4(%x2)  #907 pc 4764
	fsw	%f0, 0(%x6)  #907 pc 4768
	fmv	%f0, l.6377  #0 pc 4772
	flw	%f4, 88(%x2)  #908 pc 4776
	fmul	%f10, %f3, %f4  #908 pc 4780
	fmul	%f5, %f10, %f5  #908 pc 4784
	flw	%f10, 80(%x2)  #908 pc 4788
	fmul	%f12, %f7, %f10  #908 pc 4792
	fmul	%f9, %f12, %f9  #908 pc 4796
	fadd	%f5, %f5, %f9  #908 pc 4800
	flw	%f9, 120(%x2)  #908 pc 4804
	fmul	%f12, %f1, %f9  #908 pc 4808
	fmul	%f11, %f12, %f11  #908 pc 4812
	fadd	%f5, %f5, %f11  #908 pc 4816
	fmul	%f0, %f0, %f5  #908 pc 4820
	fsw	%f0, 4(%x6)  #908 pc 4824
	fmv	%f0, l.6377  #0 pc 4828
	fmul	%f3, %f3, %f4  #909 pc 4832
	fmul	%f2, %f3, %f2  #909 pc 4836
	fmul	%f3, %f7, %f10  #909 pc 4840
	fmul	%f3, %f3, %f6  #909 pc 4844
	fadd	%f2, %f2, %f3  #909 pc 4848
	fmul	%f1, %f1, %f9  #909 pc 4852
	fmul	%f1, %f1, %f8  #909 pc 4856
	fadd	%f1, %f2, %f1  #909 pc 4860
	fmul	%f0, %f0, %f1  #909 pc 4864
	fsw	%f0, 8(%x6)  #909 pc 4868
	ret #pc 4872
	nop #pc 4876
read_nth_object.2719:  #pc 4880
	lw	%x7, 4(%x29)  #0 pc 4880
	sw	%x7, 0(%x2)  #916 pc 4884
	sw	%x6, 4(%x2)  #916 pc 4888
	sw	%x1, 8(%x2)  #916 pc 4892
	addi	%x2, %x2, 12  #916 pc 4896
	jal	%x1, read_int.2542  #916 pc 4900
	addi	%x2, %x2, -12  #916 pc 4904
	lw	%x1, 8(%x2) #916 pc 4908
	addi	%x31, %x0, -1  #pc 4912
	beq	%x6, %x31, 12  #917 pc 4916
	j	be_else.9122 #pc 4920
	nop #pc 4924
	addi	%x6, %x0, 0  #0 pc 4928
	ret #pc 4932
	nop #pc 4936
be_else.9122: #pc 4940
	sw	%x6, 8(%x2)  #919 pc 4940
	sw	%x1, 12(%x2)  #919 pc 4944
	addi	%x2, %x2, 16  #919 pc 4948
	jal	%x1, read_int.2542  #919 pc 4952
	addi	%x2, %x2, -16  #919 pc 4956
	lw	%x1, 12(%x2) #919 pc 4960
	sw	%x6, 12(%x2)  #920 pc 4964
	sw	%x1, 16(%x2)  #920 pc 4968
	addi	%x2, %x2, 20  #920 pc 4972
	jal	%x1, read_int.2542  #920 pc 4976
	addi	%x2, %x2, -20  #920 pc 4980
	lw	%x1, 16(%x2) #920 pc 4984
	sw	%x6, 16(%x2)  #921 pc 4988
	sw	%x1, 20(%x2)  #921 pc 4992
	addi	%x2, %x2, 24  #921 pc 4996
	jal	%x1, read_int.2542  #921 pc 5000
	addi	%x2, %x2, -24  #921 pc 5004
	lw	%x1, 20(%x2) #921 pc 5008
	addi	%x7, %x0, 3  #0 pc 5012
	fmv	%f0, l.6207  #0 pc 5016
	sw	%x6, 20(%x2)  #923 pc 5020
	addi	%x6, %x7, 0  #0 pc 5024
	sw	%x1, 24(%x2)  #923 pc 5028
	addi	%x2, %x2, 28  #923 pc 5032
	jal	%x1, create_float_array.2557  #923 pc 5036
	addi	%x2, %x2, -28  #923 pc 5040
	lw	%x1, 24(%x2) #923 pc 5044
	sw	%x6, 24(%x2)  #924 pc 5048
	sw	%x1, 28(%x2)  #924 pc 5052
	addi	%x2, %x2, 32  #924 pc 5056
	jal	%x1, read_float.2544  #924 pc 5060
	addi	%x2, %x2, -32  #924 pc 5064
	lw	%x1, 28(%x2) #924 pc 5068
	lw	%x6, 24(%x2)  #924 pc 5072
	fsw	%f0, 0(%x6)  #924 pc 5076
	sw	%x1, 28(%x2)  #925 pc 5080
	addi	%x2, %x2, 32  #925 pc 5084
	jal	%x1, read_float.2544  #925 pc 5088
	addi	%x2, %x2, -32  #925 pc 5092
	lw	%x1, 28(%x2) #925 pc 5096
	lw	%x6, 24(%x2)  #925 pc 5100
	fsw	%f0, 4(%x6)  #925 pc 5104
	sw	%x1, 28(%x2)  #926 pc 5108
	addi	%x2, %x2, 32  #926 pc 5112
	jal	%x1, read_float.2544  #926 pc 5116
	addi	%x2, %x2, -32  #926 pc 5120
	lw	%x1, 28(%x2) #926 pc 5124
	lw	%x6, 24(%x2)  #926 pc 5128
	fsw	%f0, 8(%x6)  #926 pc 5132
	addi	%x7, %x0, 3  #0 pc 5136
	fmv	%f0, l.6207  #0 pc 5140
	addi	%x6, %x7, 0  #0 pc 5144
	sw	%x1, 28(%x2)  #928 pc 5148
	addi	%x2, %x2, 32  #928 pc 5152
	jal	%x1, create_float_array.2557  #928 pc 5156
	addi	%x2, %x2, -32  #928 pc 5160
	lw	%x1, 28(%x2) #928 pc 5164
	sw	%x6, 28(%x2)  #929 pc 5168
	sw	%x1, 32(%x2)  #929 pc 5172
	addi	%x2, %x2, 36  #929 pc 5176
	jal	%x1, read_float.2544  #929 pc 5180
	addi	%x2, %x2, -36  #929 pc 5184
	lw	%x1, 32(%x2) #929 pc 5188
	lw	%x6, 28(%x2)  #929 pc 5192
	fsw	%f0, 0(%x6)  #929 pc 5196
	sw	%x1, 32(%x2)  #930 pc 5200
	addi	%x2, %x2, 36  #930 pc 5204
	jal	%x1, read_float.2544  #930 pc 5208
	addi	%x2, %x2, -36  #930 pc 5212
	lw	%x1, 32(%x2) #930 pc 5216
	lw	%x6, 28(%x2)  #930 pc 5220
	fsw	%f0, 4(%x6)  #930 pc 5224
	sw	%x1, 32(%x2)  #931 pc 5228
	addi	%x2, %x2, 36  #931 pc 5232
	jal	%x1, read_float.2544  #931 pc 5236
	addi	%x2, %x2, -36  #931 pc 5240
	lw	%x1, 32(%x2) #931 pc 5244
	lw	%x6, 28(%x2)  #931 pc 5248
	fsw	%f0, 8(%x6)  #931 pc 5252
	sw	%x1, 32(%x2)  #933 pc 5256
	addi	%x2, %x2, 36  #933 pc 5260
	jal	%x1, read_float.2544  #933 pc 5264
	addi	%x2, %x2, -36  #933 pc 5268
	lw	%x1, 32(%x2) #933 pc 5272
	sw	%x1, 32(%x2)  #933 pc 5276
	addi	%x2, %x2, 36  #933 pc 5280
	jal	%x1, fisneg.2497  #933 pc 5284
	addi	%x2, %x2, -36  #933 pc 5288
	lw	%x1, 32(%x2) #933 pc 5292
	addi	%x7, %x0, 2  #0 pc 5296
	fmv	%f0, l.6207  #0 pc 5300
	sw	%x6, 32(%x2)  #935 pc 5304
	addi	%x6, %x7, 0  #0 pc 5308
	sw	%x1, 36(%x2)  #935 pc 5312
	addi	%x2, %x2, 40  #935 pc 5316
	jal	%x1, create_float_array.2557  #935 pc 5320
	addi	%x2, %x2, -40  #935 pc 5324
	lw	%x1, 36(%x2) #935 pc 5328
	sw	%x6, 36(%x2)  #936 pc 5332
	sw	%x1, 40(%x2)  #936 pc 5336
	addi	%x2, %x2, 44  #936 pc 5340
	jal	%x1, read_float.2544  #936 pc 5344
	addi	%x2, %x2, -44  #936 pc 5348
	lw	%x1, 40(%x2) #936 pc 5352
	lw	%x6, 36(%x2)  #936 pc 5356
	fsw	%f0, 0(%x6)  #936 pc 5360
	sw	%x1, 40(%x2)  #937 pc 5364
	addi	%x2, %x2, 44  #937 pc 5368
	jal	%x1, read_float.2544  #937 pc 5372
	addi	%x2, %x2, -44  #937 pc 5376
	lw	%x1, 40(%x2) #937 pc 5380
	lw	%x6, 36(%x2)  #937 pc 5384
	fsw	%f0, 4(%x6)  #937 pc 5388
	addi	%x7, %x0, 3  #0 pc 5392
	fmv	%f0, l.6207  #0 pc 5396
	addi	%x6, %x7, 0  #0 pc 5400
	sw	%x1, 40(%x2)  #939 pc 5404
	addi	%x2, %x2, 44  #939 pc 5408
	jal	%x1, create_float_array.2557  #939 pc 5412
	addi	%x2, %x2, -44  #939 pc 5416
	lw	%x1, 40(%x2) #939 pc 5420
	sw	%x6, 40(%x2)  #940 pc 5424
	sw	%x1, 44(%x2)  #940 pc 5428
	addi	%x2, %x2, 48  #940 pc 5432
	jal	%x1, read_float.2544  #940 pc 5436
	addi	%x2, %x2, -48  #940 pc 5440
	lw	%x1, 44(%x2) #940 pc 5444
	lw	%x6, 40(%x2)  #940 pc 5448
	fsw	%f0, 0(%x6)  #940 pc 5452
	sw	%x1, 44(%x2)  #941 pc 5456
	addi	%x2, %x2, 48  #941 pc 5460
	jal	%x1, read_float.2544  #941 pc 5464
	addi	%x2, %x2, -48  #941 pc 5468
	lw	%x1, 44(%x2) #941 pc 5472
	lw	%x6, 40(%x2)  #941 pc 5476
	fsw	%f0, 4(%x6)  #941 pc 5480
	sw	%x1, 44(%x2)  #942 pc 5484
	addi	%x2, %x2, 48  #942 pc 5488
	jal	%x1, read_float.2544  #942 pc 5492
	addi	%x2, %x2, -48  #942 pc 5496
	lw	%x1, 44(%x2) #942 pc 5500
	lw	%x6, 40(%x2)  #942 pc 5504
	fsw	%f0, 8(%x6)  #942 pc 5508
	addi	%x7, %x0, 3  #0 pc 5512
	fmv	%f0, l.6207  #0 pc 5516
	addi	%x6, %x7, 0  #0 pc 5520
	sw	%x1, 44(%x2)  #944 pc 5524
	addi	%x2, %x2, 48  #944 pc 5528
	jal	%x1, create_float_array.2557  #944 pc 5532
	addi	%x2, %x2, -48  #944 pc 5536
	lw	%x1, 44(%x2) #944 pc 5540
	lw	%x7, 20(%x2)  #945 pc 5544
	beq	%x7, %x0, 12  #945 pc 5548
	j	be_else.9123 #pc 5552
	nop #pc 5556
	j	be_cont.9124 #pc 5560
	nop #pc 5564
be_else.9123: #pc 5568
	sw	%x6, 44(%x2)  #947 pc 5568
	sw	%x1, 48(%x2)  #947 pc 5572
	addi	%x2, %x2, 52  #947 pc 5576
	jal	%x1, read_float.2544  #947 pc 5580
	addi	%x2, %x2, -52  #947 pc 5584
	lw	%x1, 48(%x2) #947 pc 5588
	sw	%x1, 48(%x2)  #947 pc 5592
	addi	%x2, %x2, 52  #947 pc 5596
	jal	%x1, rad.2710  #947 pc 5600
	addi	%x2, %x2, -52  #947 pc 5604
	lw	%x1, 48(%x2) #947 pc 5608
	lw	%x6, 44(%x2)  #947 pc 5612
	fsw	%f0, 0(%x6)  #947 pc 5616
	sw	%x1, 48(%x2)  #948 pc 5620
	addi	%x2, %x2, 52  #948 pc 5624
	jal	%x1, read_float.2544  #948 pc 5628
	addi	%x2, %x2, -52  #948 pc 5632
	lw	%x1, 48(%x2) #948 pc 5636
	sw	%x1, 48(%x2)  #948 pc 5640
	addi	%x2, %x2, 52  #948 pc 5644
	jal	%x1, rad.2710  #948 pc 5648
	addi	%x2, %x2, -52  #948 pc 5652
	lw	%x1, 48(%x2) #948 pc 5656
	lw	%x6, 44(%x2)  #948 pc 5660
	fsw	%f0, 4(%x6)  #948 pc 5664
	sw	%x1, 48(%x2)  #949 pc 5668
	addi	%x2, %x2, 52  #949 pc 5672
	jal	%x1, read_float.2544  #949 pc 5676
	addi	%x2, %x2, -52  #949 pc 5680
	lw	%x1, 48(%x2) #949 pc 5684
	sw	%x1, 48(%x2)  #949 pc 5688
	addi	%x2, %x2, 52  #949 pc 5692
	jal	%x1, rad.2710  #949 pc 5696
	addi	%x2, %x2, -52  #949 pc 5700
	lw	%x1, 48(%x2) #949 pc 5704
	lw	%x6, 44(%x2)  #949 pc 5708
	fsw	%f0, 8(%x6)  #949 pc 5712
be_cont.9124: #pc 5716
	lw	%x7, 12(%x2)  #956 pc 5716
	addi	%x31, %x0, 2  #pc 5720
	beq	%x7, %x31, 12  #956 pc 5724
	j	be_else.9125 #pc 5728
	nop #pc 5732
	addi	%x8, %x0, 1  #0 pc 5736
	j	be_cont.9126 #pc 5740
	nop #pc 5744
be_else.9125: #pc 5748
	lw	%x8, 32(%x2)  #956 pc 5748
be_cont.9126: #pc 5752
	addi	%x9, %x0, 4  #0 pc 5752
	fmv	%f0, l.6207  #0 pc 5756
	sw	%x8, 48(%x2)  #957 pc 5760
	sw	%x6, 44(%x2)  #957 pc 5764
	addi	%x6, %x9, 0  #0 pc 5768
	sw	%x1, 52(%x2)  #957 pc 5772
	addi	%x2, %x2, 56  #957 pc 5776
	jal	%x1, create_float_array.2557  #957 pc 5780
	addi	%x2, %x2, -56  #957 pc 5784
	lw	%x1, 52(%x2) #957 pc 5788
	addi	%x7, %x3, 0  #960 pc 5792
	addi	%x3, %x3, 44  #960 pc 5796
	sw	%x6, 40(%x7)  #960 pc 5800
	lw	%x6, 44(%x2)  #960 pc 5804
	sw	%x6, 36(%x7)  #960 pc 5808
	lw	%x8, 40(%x2)  #960 pc 5812
	sw	%x8, 32(%x7)  #960 pc 5816
	lw	%x8, 36(%x2)  #960 pc 5820
	sw	%x8, 28(%x7)  #960 pc 5824
	lw	%x8, 48(%x2)  #960 pc 5828
	sw	%x8, 24(%x7)  #960 pc 5832
	lw	%x8, 28(%x2)  #960 pc 5836
	sw	%x8, 20(%x7)  #960 pc 5840
	lw	%x8, 24(%x2)  #960 pc 5844
	sw	%x8, 16(%x7)  #960 pc 5848
	lw	%x9, 20(%x2)  #960 pc 5852
	sw	%x9, 12(%x7)  #960 pc 5856
	lw	%x10, 16(%x2)  #960 pc 5860
	sw	%x10, 8(%x7)  #960 pc 5864
	lw	%x10, 12(%x2)  #960 pc 5868
	sw	%x10, 4(%x7)  #960 pc 5872
	lw	%x11, 8(%x2)  #960 pc 5876
	sw	%x11, 0(%x7)  #960 pc 5880
	lw	%x11, 4(%x2)  #968 pc 5884
	slli	%x11, %x11, 2  #968 pc 5888
	lw	%x12, 0(%x2)  #968 pc 5892
	add	%x31, %x11, %x12  #968 pc 5896
	sw	%x7, 0(%x31)  #968 pc 5900
	addi	%x31, %x0, 3  #pc 5904
	beq	%x10, %x31, 12  #970 pc 5908
	j	be_else.9127 #pc 5912
	nop #pc 5916
	flw	%f0, 0(%x8)  #973 pc 5920
	fsw	%f0, 56(%x2)  #974 pc 5924
	sw	%x1, 64(%x2)  #974 pc 5928
	addi	%x2, %x2, 68  #974 pc 5932
	jal	%x1, fiszero.2493  #974 pc 5936
	addi	%x2, %x2, -68  #974 pc 5940
	lw	%x1, 64(%x2) #974 pc 5944
	beq	%x6, %x0, 12  #974 pc 5948
	j	be_else.9130 #pc 5952
	nop #pc 5956
	flw	%f0, 56(%x2)  #974 pc 5960
	sw	%x1, 64(%x2)  #974 pc 5964
	addi	%x2, %x2, 68  #974 pc 5968
	jal	%x1, sgn.2593  #974 pc 5972
	addi	%x2, %x2, -68  #974 pc 5976
	lw	%x1, 64(%x2) #974 pc 5980
	flw	%f1, 56(%x2)  #974 pc 5984
	fsw	%f0, 64(%x2)  #974 pc 5988
	fadd	%f0, %f1, %f30  #0 pc 5992
	sw	%x1, 72(%x2)  #974 pc 5996
	addi	%x2, %x2, 76  #974 pc 6000
	jal	%x1, fsqr.2501  #974 pc 6004
	addi	%x2, %x2, -76  #974 pc 6008
	lw	%x1, 72(%x2) #974 pc 6012
	flw	%f1, 64(%x2)  #974 pc 6016
	fdiv	%f0, %f1, %f0  #974 pc 6020
	j	be_cont.9131 #pc 6024
	nop #pc 6028
be_else.9130: #pc 6032
	fmv	%f0, l.6207  #0 pc 6032
be_cont.9131: #pc 6036
	lw	%x6, 24(%x2)  #974 pc 6036
	fsw	%f0, 0(%x6)  #974 pc 6040
	flw	%f0, 4(%x6)  #975 pc 6044
	fsw	%f0, 72(%x2)  #976 pc 6048
	sw	%x1, 80(%x2)  #976 pc 6052
	addi	%x2, %x2, 84  #976 pc 6056
	jal	%x1, fiszero.2493  #976 pc 6060
	addi	%x2, %x2, -84  #976 pc 6064
	lw	%x1, 80(%x2) #976 pc 6068
	beq	%x6, %x0, 12  #976 pc 6072
	j	be_else.9132 #pc 6076
	nop #pc 6080
	flw	%f0, 72(%x2)  #976 pc 6084
	sw	%x1, 80(%x2)  #976 pc 6088
	addi	%x2, %x2, 84  #976 pc 6092
	jal	%x1, sgn.2593  #976 pc 6096
	addi	%x2, %x2, -84  #976 pc 6100
	lw	%x1, 80(%x2) #976 pc 6104
	flw	%f1, 72(%x2)  #976 pc 6108
	fsw	%f0, 80(%x2)  #976 pc 6112
	fadd	%f0, %f1, %f30  #0 pc 6116
	sw	%x1, 88(%x2)  #976 pc 6120
	addi	%x2, %x2, 92  #976 pc 6124
	jal	%x1, fsqr.2501  #976 pc 6128
	addi	%x2, %x2, -92  #976 pc 6132
	lw	%x1, 88(%x2) #976 pc 6136
	flw	%f1, 80(%x2)  #976 pc 6140
	fdiv	%f0, %f1, %f0  #976 pc 6144
	j	be_cont.9133 #pc 6148
	nop #pc 6152
be_else.9132: #pc 6156
	fmv	%f0, l.6207  #0 pc 6156
be_cont.9133: #pc 6160
	lw	%x6, 24(%x2)  #976 pc 6160
	fsw	%f0, 4(%x6)  #976 pc 6164
	flw	%f0, 8(%x6)  #977 pc 6168
	fsw	%f0, 88(%x2)  #978 pc 6172
	sw	%x1, 96(%x2)  #978 pc 6176
	addi	%x2, %x2, 100  #978 pc 6180
	jal	%x1, fiszero.2493  #978 pc 6184
	addi	%x2, %x2, -100  #978 pc 6188
	lw	%x1, 96(%x2) #978 pc 6192
	beq	%x6, %x0, 12  #978 pc 6196
	j	be_else.9134 #pc 6200
	nop #pc 6204
	flw	%f0, 88(%x2)  #978 pc 6208
	sw	%x1, 96(%x2)  #978 pc 6212
	addi	%x2, %x2, 100  #978 pc 6216
	jal	%x1, sgn.2593  #978 pc 6220
	addi	%x2, %x2, -100  #978 pc 6224
	lw	%x1, 96(%x2) #978 pc 6228
	flw	%f1, 88(%x2)  #978 pc 6232
	fsw	%f0, 96(%x2)  #978 pc 6236
	fadd	%f0, %f1, %f30  #0 pc 6240
	sw	%x1, 104(%x2)  #978 pc 6244
	addi	%x2, %x2, 108  #978 pc 6248
	jal	%x1, fsqr.2501  #978 pc 6252
	addi	%x2, %x2, -108  #978 pc 6256
	lw	%x1, 104(%x2) #978 pc 6260
	flw	%f1, 96(%x2)  #978 pc 6264
	fdiv	%f0, %f1, %f0  #978 pc 6268
	j	be_cont.9135 #pc 6272
	nop #pc 6276
be_else.9134: #pc 6280
	fmv	%f0, l.6207  #0 pc 6280
be_cont.9135: #pc 6284
	lw	%x6, 24(%x2)  #978 pc 6284
	fsw	%f0, 8(%x6)  #978 pc 6288
	j	be_cont.9128 #pc 6292
	nop #pc 6296
be_else.9127: #pc 6300
	addi	%x31, %x0, 2  #pc 6300
	beq	%x10, %x31, 12  #980 pc 6304
	j	be_else.9136 #pc 6308
	nop #pc 6312
	lw	%x7, 32(%x2)  #982 pc 6316
	beq	%x7, %x0, 12  #982 pc 6320
	j	be_else.9138 #pc 6324
	nop #pc 6328
	addi	%x7, %x0, 1  #0 pc 6332
	j	be_cont.9139 #pc 6336
	nop #pc 6340
be_else.9138: #pc 6344
	addi	%x7, %x0, 0  #0 pc 6344
be_cont.9139: #pc 6348
	addi	%x6, %x8, 0  #0 pc 6348
	sw	%x1, 104(%x2)  #982 pc 6352
	addi	%x2, %x2, 108  #982 pc 6356
	jal	%x1, vecunit_sgn.2614  #982 pc 6360
	addi	%x2, %x2, -108  #982 pc 6364
	lw	%x1, 104(%x2) #982 pc 6368
	j	be_cont.9137 #pc 6372
	nop #pc 6376
be_else.9136: #pc 6380
be_cont.9137: #pc 6380
be_cont.9128: #pc 6380
	lw	%x6, 20(%x2)  #986 pc 6380
	beq	%x6, %x0, 12  #986 pc 6384
	j	be_else.9140 #pc 6388
	nop #pc 6392
	j	be_cont.9141 #pc 6396
	nop #pc 6400
be_else.9140: #pc 6404
	lw	%x6, 24(%x2)  #987 pc 6404
	lw	%x7, 44(%x2)  #987 pc 6408
	sw	%x1, 104(%x2)  #987 pc 6412
	addi	%x2, %x2, 108  #987 pc 6416
	jal	%x1, rotate_quadratic_matrix.2716  #987 pc 6420
	addi	%x2, %x2, -108  #987 pc 6424
	lw	%x1, 104(%x2) #987 pc 6428
be_cont.9141: #pc 6432
	addi	%x6, %x0, 1  #0 pc 6432
	ret #pc 6436
	nop #pc 6440
read_object.2721:  #pc 6444
	lw	%x7, 8(%x29)  #0 pc 6444
	lw	%x8, 4(%x29)  #0 pc 6448
	addi	%x31, %x0, 60  #pc 6452
	bge	%x6, %x31, 12  #998 pc 6456
	j	bge_else.9142 #pc 6460
	nop #pc 6464
	ret #pc 6468
	nop #pc 6472
bge_else.9142: #pc 6476
	sw	%x29, 0(%x2)  #999 pc 6476
	sw	%x8, 4(%x2)  #999 pc 6480
	sw	%x6, 8(%x2)  #999 pc 6484
	addi	%x29, %x7, 0  #0 pc 6488
	sw	%x1, 12(%x2)  #999 pc 6492
	lw	%x30, 0(%x29)  #999 pc 6496
	addi	%x2, %x2, 16  #999 pc 6500
	jalr	%x1, %x30, 0  #999 pc 6504
	addi	%x2, %x2, -16  #999 pc 6508
	lw	%x1, 12(%x2)  #999 pc 6512
	beq	%x6, %x0, 12  #999 pc 6516
	j	be_else.9144 #pc 6520
	nop #pc 6524
	lw	%x6, 4(%x2)  #1002 pc 6528
	lw	%x7, 8(%x2)  #1002 pc 6532
	sw	%x7, 0(%x6)  #1002 pc 6536
	ret #pc 6540
	nop #pc 6544
be_else.9144: #pc 6548
	lw	%x6, 8(%x2)  #1000 pc 6548
	addi	%x6, %x6, 1  #1000 pc 6552
	lw	%x29, 0(%x2)  #1000 pc 6556
	lw	%x30, 0(%x29)  #1000 pc 6560
	jalr	%x0, %x30, 0  #1000 pc 6564
	nop #pc 6568
read_all_object.2723:  #pc 6572
	lw	%x29, 4(%x29)  #0 pc 6572
	addi	%x6, %x0, 0  #0 pc 6576
	lw	%x30, 0(%x29)  #1007 pc 6580
	jalr	%x0, %x30, 0  #1007 pc 6584
	nop #pc 6588
read_net_item.2725:  #pc 6592
	sw	%x6, 0(%x2)  #1014 pc 6592
	sw	%x1, 4(%x2)  #1014 pc 6596
	addi	%x2, %x2, 8  #1014 pc 6600
	jal	%x1, read_int.2542  #1014 pc 6604
	addi	%x2, %x2, -8  #1014 pc 6608
	lw	%x1, 4(%x2) #1014 pc 6612
	addi	%x31, %x0, -1  #pc 6616
	beq	%x6, %x31, 12  #1015 pc 6620
	j	be_else.9146 #pc 6624
	nop #pc 6628
	lw	%x6, 0(%x2)  #1015 pc 6632
	addi	%x6, %x6, 1  #1015 pc 6636
	addi	%x7, %x0, -1  #0 pc 6640
	j	create_array.2550  #1015 pc 6644
	nop #pc 6648
be_else.9146: #pc 6652
	lw	%x7, 0(%x2)  #1017 pc 6652
	addi	%x8, %x7, 1  #1017 pc 6656
	sw	%x6, 4(%x2)  #1017 pc 6660
	addi	%x6, %x8, 0  #0 pc 6664
	sw	%x1, 8(%x2)  #1017 pc 6668
	addi	%x2, %x2, 12  #1017 pc 6672
	jal	%x1, read_net_item.2725  #1017 pc 6676
	addi	%x2, %x2, -12  #1017 pc 6680
	lw	%x1, 8(%x2) #1017 pc 6684
	lw	%x7, 0(%x2)  #1018 pc 6688
	slli	%x7, %x7, 2  #1018 pc 6692
	lw	%x8, 4(%x2)  #1018 pc 6696
	add	%x31, %x7, %x6  #1018 pc 6700
	sw	%x8, 0(%x31)  #1018 pc 6704
	ret #pc 6708
	nop #pc 6712
read_or_network.2727:  #pc 6716
	addi	%x7, %x0, 0  #0 pc 6716
	sw	%x6, 0(%x2)  #1022 pc 6720
	addi	%x6, %x7, 0  #0 pc 6724
	sw	%x1, 4(%x2)  #1022 pc 6728
	addi	%x2, %x2, 8  #1022 pc 6732
	jal	%x1, read_net_item.2725  #1022 pc 6736
	addi	%x2, %x2, -8  #1022 pc 6740
	lw	%x1, 4(%x2) #1022 pc 6744
	addi	%x7, %x6, 0  #1022 pc 6748
	lw	%x6, 0(%x7)  #1023 pc 6752
	addi	%x31, %x0, -1  #pc 6756
	beq	%x6, %x31, 12  #1023 pc 6760
	j	be_else.9147 #pc 6764
	nop #pc 6768
	lw	%x6, 0(%x2)  #1024 pc 6772
	addi	%x6, %x6, 1  #1024 pc 6776
	j	create_array.2550  #1024 pc 6780
	nop #pc 6784
be_else.9147: #pc 6788
	lw	%x6, 0(%x2)  #1026 pc 6788
	addi	%x8, %x6, 1  #1026 pc 6792
	sw	%x7, 4(%x2)  #1026 pc 6796
	addi	%x6, %x8, 0  #0 pc 6800
	sw	%x1, 8(%x2)  #1026 pc 6804
	addi	%x2, %x2, 12  #1026 pc 6808
	jal	%x1, read_or_network.2727  #1026 pc 6812
	addi	%x2, %x2, -12  #1026 pc 6816
	lw	%x1, 8(%x2) #1026 pc 6820
	lw	%x7, 0(%x2)  #1027 pc 6824
	slli	%x7, %x7, 2  #1027 pc 6828
	lw	%x8, 4(%x2)  #1027 pc 6832
	add	%x31, %x7, %x6  #1027 pc 6836
	sw	%x8, 0(%x31)  #1027 pc 6840
	ret #pc 6844
	nop #pc 6848
read_and_network.2729:  #pc 6852
	lw	%x7, 4(%x29)  #0 pc 6852
	addi	%x8, %x0, 0  #0 pc 6856
	sw	%x29, 0(%x2)  #1031 pc 6860
	sw	%x7, 4(%x2)  #1031 pc 6864
	sw	%x6, 8(%x2)  #1031 pc 6868
	addi	%x6, %x8, 0  #0 pc 6872
	sw	%x1, 12(%x2)  #1031 pc 6876
	addi	%x2, %x2, 16  #1031 pc 6880
	jal	%x1, read_net_item.2725  #1031 pc 6884
	addi	%x2, %x2, -16  #1031 pc 6888
	lw	%x1, 12(%x2) #1031 pc 6892
	lw	%x7, 0(%x6)  #1032 pc 6896
	addi	%x31, %x0, -1  #pc 6900
	beq	%x7, %x31, 12  #1032 pc 6904
	j	be_else.9148 #pc 6908
	nop #pc 6912
	ret #pc 6916
	nop #pc 6920
be_else.9148: #pc 6924
	lw	%x7, 8(%x2)  #1034 pc 6924
	slli	%x8, %x7, 2  #1034 pc 6928
	lw	%x9, 4(%x2)  #1034 pc 6932
	add	%x31, %x8, %x9  #1034 pc 6936
	sw	%x6, 0(%x31)  #1034 pc 6940
	addi	%x6, %x7, 1  #1035 pc 6944
	lw	%x29, 0(%x2)  #1035 pc 6948
	lw	%x30, 0(%x29)  #1035 pc 6952
	jalr	%x0, %x30, 0  #1035 pc 6956
	nop #pc 6960
read_parameter.2731:  #pc 6964
	lw	%x6, 20(%x29)  #0 pc 6964
	lw	%x7, 16(%x29)  #0 pc 6968
	lw	%x8, 12(%x29)  #0 pc 6972
	lw	%x9, 8(%x29)  #0 pc 6976
	lw	%x10, 4(%x29)  #0 pc 6980
	sw	%x10, 0(%x2)  #1041 pc 6984
	sw	%x8, 4(%x2)  #1041 pc 6988
	sw	%x9, 8(%x2)  #1041 pc 6992
	sw	%x7, 12(%x2)  #1041 pc 6996
	addi	%x29, %x6, 0  #0 pc 7000
	sw	%x1, 16(%x2)  #1041 pc 7004
	lw	%x30, 0(%x29)  #1041 pc 7008
	addi	%x2, %x2, 20  #1041 pc 7012
	jalr	%x1, %x30, 0  #1041 pc 7016
	addi	%x2, %x2, -20  #1041 pc 7020
	lw	%x1, 16(%x2)  #1041 pc 7024
	lw	%x29, 12(%x2)  #1042 pc 7028
	sw	%x1, 16(%x2)  #1042 pc 7032
	lw	%x30, 0(%x29)  #1042 pc 7036
	addi	%x2, %x2, 20  #1042 pc 7040
	jalr	%x1, %x30, 0  #1042 pc 7044
	addi	%x2, %x2, -20  #1042 pc 7048
	lw	%x1, 16(%x2)  #1042 pc 7052
	lw	%x29, 8(%x2)  #1043 pc 7056
	sw	%x1, 16(%x2)  #1043 pc 7060
	lw	%x30, 0(%x29)  #1043 pc 7064
	addi	%x2, %x2, 20  #1043 pc 7068
	jalr	%x1, %x30, 0  #1043 pc 7072
	addi	%x2, %x2, -20  #1043 pc 7076
	lw	%x1, 16(%x2)  #1043 pc 7080
	addi	%x6, %x0, 0  #0 pc 7084
	lw	%x29, 4(%x2)  #1044 pc 7088
	sw	%x1, 16(%x2)  #1044 pc 7092
	lw	%x30, 0(%x29)  #1044 pc 7096
	addi	%x2, %x2, 20  #1044 pc 7100
	jalr	%x1, %x30, 0  #1044 pc 7104
	addi	%x2, %x2, -20  #1044 pc 7108
	lw	%x1, 16(%x2)  #1044 pc 7112
	addi	%x6, %x0, 0  #0 pc 7116
	sw	%x1, 16(%x2)  #1045 pc 7120
	addi	%x2, %x2, 20  #1045 pc 7124
	jal	%x1, read_or_network.2727  #1045 pc 7128
	addi	%x2, %x2, -20  #1045 pc 7132
	lw	%x1, 16(%x2) #1045 pc 7136
	lw	%x7, 0(%x2)  #1045 pc 7140
	sw	%x6, 0(%x7)  #1045 pc 7144
	ret #pc 7148
	nop #pc 7152
solver_rect_surface.2733:  #pc 7156
	lw	%x11, 4(%x29)  #0 pc 7156
	slli	%x12, %x8, 2  #1065 pc 7160
	add	%x31, %x12, %x7  #1065 pc 7164
	flw	%f3, 0(%x31)  #1065 pc 7168
	sw	%x11, 0(%x2)  #1065 pc 7172
	fsw	%f2, 8(%x2)  #1065 pc 7176
	sw	%x10, 16(%x2)  #1065 pc 7180
	fsw	%f1, 24(%x2)  #1065 pc 7184
	sw	%x9, 32(%x2)  #1065 pc 7188
	fsw	%f0, 40(%x2)  #1065 pc 7192
	sw	%x7, 48(%x2)  #1065 pc 7196
	sw	%x8, 52(%x2)  #1065 pc 7200
	sw	%x6, 56(%x2)  #1065 pc 7204
	fadd	%f0, %f3, %f30  #0 pc 7208
	sw	%x1, 60(%x2)  #1065 pc 7212
	addi	%x2, %x2, 64  #1065 pc 7216
	jal	%x1, fiszero.2493  #1065 pc 7220
	addi	%x2, %x2, -64  #1065 pc 7224
	lw	%x1, 60(%x2) #1065 pc 7228
	beq	%x6, %x0, 12  #1065 pc 7232
	j	be_else.9154 #pc 7236
	nop #pc 7240
	lw	%x6, 56(%x2)  #1066 pc 7244
	sw	%x1, 60(%x2)  #1066 pc 7248
	addi	%x2, %x2, 64  #1066 pc 7252
	jal	%x1, o_param_abc.2655  #1066 pc 7256
	addi	%x2, %x2, -64  #1066 pc 7260
	lw	%x1, 60(%x2) #1066 pc 7264
	lw	%x7, 56(%x2)  #1067 pc 7268
	sw	%x6, 60(%x2)  #1067 pc 7272
	addi	%x6, %x7, 0  #0 pc 7276
	sw	%x1, 64(%x2)  #1067 pc 7280
	addi	%x2, %x2, 68  #1067 pc 7284
	jal	%x1, o_isinvert.2645  #1067 pc 7288
	addi	%x2, %x2, -68  #1067 pc 7292
	lw	%x1, 64(%x2) #1067 pc 7296
	lw	%x7, 52(%x2)  #1067 pc 7300
	slli	%x8, %x7, 2  #1067 pc 7304
	lw	%x9, 48(%x2)  #1067 pc 7308
	add	%x31, %x8, %x9  #1067 pc 7312
	flw	%f0, 0(%x31)  #1067 pc 7316
	sw	%x6, 64(%x2)  #1067 pc 7320
	sw	%x1, 68(%x2)  #1067 pc 7324
	addi	%x2, %x2, 72  #1067 pc 7328
	jal	%x1, fisneg.2497  #1067 pc 7332
	addi	%x2, %x2, -72  #1067 pc 7336
	lw	%x1, 68(%x2) #1067 pc 7340
	addi	%x7, %x6, 0  #1067 pc 7344
	lw	%x6, 64(%x2)  #1067 pc 7348
	sw	%x1, 68(%x2)  #1067 pc 7352
	addi	%x2, %x2, 72  #1067 pc 7356
	jal	%x1, xor.2590  #1067 pc 7360
	addi	%x2, %x2, -72  #1067 pc 7364
	lw	%x1, 68(%x2) #1067 pc 7368
	lw	%x7, 52(%x2)  #1067 pc 7372
	slli	%x8, %x7, 2  #1067 pc 7376
	lw	%x9, 60(%x2)  #1067 pc 7380
	add	%x31, %x8, %x9  #1067 pc 7384
	flw	%f0, 0(%x31)  #1067 pc 7388
	sw	%x1, 68(%x2)  #1067 pc 7392
	addi	%x2, %x2, 72  #1067 pc 7396
	jal	%x1, fneg_cond.2595  #1067 pc 7400
	addi	%x2, %x2, -72  #1067 pc 7404
	lw	%x1, 68(%x2) #1067 pc 7408
	flw	%f1, 40(%x2)  #1069 pc 7412
	fsub	%f0, %f0, %f1  #1069 pc 7416
	lw	%x6, 52(%x2)  #1069 pc 7420
	slli	%x6, %x6, 2  #1069 pc 7424
	lw	%x7, 48(%x2)  #1069 pc 7428
	add	%x31, %x6, %x7  #1069 pc 7432
	flw	%f1, 0(%x31)  #1069 pc 7436
	fdiv	%f0, %f0, %f1  #1069 pc 7440
	lw	%x6, 32(%x2)  #1070 pc 7444
	slli	%x8, %x6, 2  #1070 pc 7448
	add	%x31, %x8, %x7  #1070 pc 7452
	flw	%f1, 0(%x31)  #1070 pc 7456
	fmul	%f1, %f0, %f1  #1070 pc 7460
	flw	%f2, 24(%x2)  #1070 pc 7464
	fadd	%f1, %f1, %f2  #1070 pc 7468
	fabs	%f1, %f1  #1070 pc 7472
	slli	%x6, %x6, 2  #1070 pc 7476
	lw	%x8, 60(%x2)  #1070 pc 7480
	add	%x31, %x6, %x8  #1070 pc 7484
	flw	%f2, 0(%x31)  #1070 pc 7488
	fsw	%f0, 72(%x2)  #1070 pc 7492
	fadd	%f0, %f1, %f30  #0 pc 7496
	fadd	%f1, %f2, %f30  #0 pc 7500
	sw	%x1, 80(%x2)  #1070 pc 7504
	addi	%x2, %x2, 84  #1070 pc 7508
	jal	%x1, fless.2505  #1070 pc 7512
	addi	%x2, %x2, -84  #1070 pc 7516
	lw	%x1, 80(%x2) #1070 pc 7520
	beq	%x6, %x0, 12  #1070 pc 7524
	j	be_else.9156 #pc 7528
	nop #pc 7532
	addi	%x6, %x0, 0  #0 pc 7536
	ret #pc 7540
	nop #pc 7544
be_else.9156: #pc 7548
	lw	%x6, 16(%x2)  #1071 pc 7548
	slli	%x7, %x6, 2  #1071 pc 7552
	lw	%x8, 48(%x2)  #1071 pc 7556
	add	%x31, %x7, %x8  #1071 pc 7560
	flw	%f0, 0(%x31)  #1071 pc 7564
	flw	%f1, 72(%x2)  #1071 pc 7568
	fmul	%f0, %f1, %f0  #1071 pc 7572
	flw	%f2, 8(%x2)  #1071 pc 7576
	fadd	%f0, %f0, %f2  #1071 pc 7580
	fabs	%f0, %f0  #1071 pc 7584
	slli	%x6, %x6, 2  #1071 pc 7588
	lw	%x7, 60(%x2)  #1071 pc 7592
	add	%x31, %x6, %x7  #1071 pc 7596
	flw	%f2, 0(%x31)  #1071 pc 7600
	fadd	%f1, %f2, %f30  #0 pc 7604
	sw	%x1, 80(%x2)  #1071 pc 7608
	addi	%x2, %x2, 84  #1071 pc 7612
	jal	%x1, fless.2505  #1071 pc 7616
	addi	%x2, %x2, -84  #1071 pc 7620
	lw	%x1, 80(%x2) #1071 pc 7624
	beq	%x6, %x0, 12  #1071 pc 7628
	j	be_else.9157 #pc 7632
	nop #pc 7636
	addi	%x6, %x0, 0  #0 pc 7640
	ret #pc 7644
	nop #pc 7648
be_else.9157: #pc 7652
	lw	%x6, 0(%x2)  #1072 pc 7652
	flw	%f0, 72(%x2)  #1072 pc 7656
	fsw	%f0, 0(%x6)  #1072 pc 7660
	addi	%x6, %x0, 1  #0 pc 7664
	ret #pc 7668
	nop #pc 7672
be_else.9154: #pc 7676
	addi	%x6, %x0, 0  #0 pc 7676
	ret #pc 7680
	nop #pc 7684
solver_rect.2742:  #pc 7688
	lw	%x29, 4(%x29)  #0 pc 7688
	addi	%x8, %x0, 0  #0 pc 7692
	addi	%x9, %x0, 1  #0 pc 7696
	addi	%x10, %x0, 2  #0 pc 7700
	fsw	%f0, 0(%x2)  #1080 pc 7704
	fsw	%f2, 8(%x2)  #1080 pc 7708
	fsw	%f1, 16(%x2)  #1080 pc 7712
	sw	%x7, 24(%x2)  #1080 pc 7716
	sw	%x6, 28(%x2)  #1080 pc 7720
	sw	%x29, 32(%x2)  #1080 pc 7724
	sw	%x1, 36(%x2)  #1080 pc 7728
	lw	%x30, 0(%x29)  #1080 pc 7732
	addi	%x2, %x2, 40  #1080 pc 7736
	jalr	%x1, %x30, 0  #1080 pc 7740
	addi	%x2, %x2, -40  #1080 pc 7744
	lw	%x1, 36(%x2)  #1080 pc 7748
	beq	%x6, %x0, 12  #1080 pc 7752
	j	be_else.9158 #pc 7756
	nop #pc 7760
	addi	%x8, %x0, 1  #0 pc 7764
	addi	%x9, %x0, 2  #0 pc 7768
	addi	%x10, %x0, 0  #0 pc 7772
	flw	%f0, 16(%x2)  #1081 pc 7776
	flw	%f1, 8(%x2)  #1081 pc 7780
	flw	%f2, 0(%x2)  #1081 pc 7784
	lw	%x6, 28(%x2)  #1081 pc 7788
	lw	%x7, 24(%x2)  #1081 pc 7792
	lw	%x29, 32(%x2)  #1081 pc 7796
	sw	%x1, 36(%x2)  #1081 pc 7800
	lw	%x30, 0(%x29)  #1081 pc 7804
	addi	%x2, %x2, 40  #1081 pc 7808
	jalr	%x1, %x30, 0  #1081 pc 7812
	addi	%x2, %x2, -40  #1081 pc 7816
	lw	%x1, 36(%x2)  #1081 pc 7820
	beq	%x6, %x0, 12  #1081 pc 7824
	j	be_else.9159 #pc 7828
	nop #pc 7832
	addi	%x8, %x0, 2  #0 pc 7836
	addi	%x9, %x0, 0  #0 pc 7840
	addi	%x10, %x0, 1  #0 pc 7844
	flw	%f0, 8(%x2)  #1082 pc 7848
	flw	%f1, 0(%x2)  #1082 pc 7852
	flw	%f2, 16(%x2)  #1082 pc 7856
	lw	%x6, 28(%x2)  #1082 pc 7860
	lw	%x7, 24(%x2)  #1082 pc 7864
	lw	%x29, 32(%x2)  #1082 pc 7868
	sw	%x1, 36(%x2)  #1082 pc 7872
	lw	%x30, 0(%x29)  #1082 pc 7876
	addi	%x2, %x2, 40  #1082 pc 7880
	jalr	%x1, %x30, 0  #1082 pc 7884
	addi	%x2, %x2, -40  #1082 pc 7888
	lw	%x1, 36(%x2)  #1082 pc 7892
	beq	%x6, %x0, 12  #1082 pc 7896
	j	be_else.9160 #pc 7900
	nop #pc 7904
	addi	%x6, %x0, 0  #0 pc 7908
	ret #pc 7912
	nop #pc 7916
be_else.9160: #pc 7920
	addi	%x6, %x0, 3  #0 pc 7920
	ret #pc 7924
	nop #pc 7928
be_else.9159: #pc 7932
	addi	%x6, %x0, 2  #0 pc 7932
	ret #pc 7936
	nop #pc 7940
be_else.9158: #pc 7944
	addi	%x6, %x0, 1  #0 pc 7944
	ret #pc 7948
	nop #pc 7952
solver_surface.2748:  #pc 7956
	lw	%x8, 4(%x29)  #1091 pc 7956
	sw	%x8, 0(%x2)  #1091 pc 7960
	fsw	%f2, 8(%x2)  #1091 pc 7964
	fsw	%f1, 16(%x2)  #1091 pc 7968
	fsw	%f0, 24(%x2)  #1091 pc 7972
	sw	%x7, 32(%x2)  #1091 pc 7976
	sw	%x1, 36(%x2)  #1091 pc 7980
	addi	%x2, %x2, 40  #1091 pc 7984
	jal	%x1, o_param_abc.2655  #1091 pc 7988
	addi	%x2, %x2, -40  #1091 pc 7992
	lw	%x1, 36(%x2) #1091 pc 7996
	addi	%x7, %x6, 0  #1091 pc 8000
	lw	%x6, 32(%x2)  #1092 pc 8004
	sw	%x7, 36(%x2)  #1092 pc 8008
	sw	%x1, 40(%x2)  #1092 pc 8012
	addi	%x2, %x2, 44  #1092 pc 8016
	jal	%x1, veciprod.2617  #1092 pc 8020
	addi	%x2, %x2, -44  #1092 pc 8024
	lw	%x1, 40(%x2) #1092 pc 8028
	fsw	%f0, 40(%x2)  #1093 pc 8032
	sw	%x1, 48(%x2)  #1093 pc 8036
	addi	%x2, %x2, 52  #1093 pc 8040
	jal	%x1, fispos.2495  #1093 pc 8044
	addi	%x2, %x2, -52  #1093 pc 8048
	lw	%x1, 48(%x2) #1093 pc 8052
	beq	%x6, %x0, 12  #1093 pc 8056
	j	be_else.9162 #pc 8060
	nop #pc 8064
	addi	%x6, %x0, 0  #0 pc 8068
	ret #pc 8072
	nop #pc 8076
be_else.9162: #pc 8080
	flw	%f0, 24(%x2)  #1094 pc 8080
	flw	%f1, 16(%x2)  #1094 pc 8084
	flw	%f2, 8(%x2)  #1094 pc 8088
	lw	%x6, 36(%x2)  #1094 pc 8092
	sw	%x1, 48(%x2)  #1094 pc 8096
	addi	%x2, %x2, 52  #1094 pc 8100
	jal	%x1, veciprod2.2620  #1094 pc 8104
	addi	%x2, %x2, -52  #1094 pc 8108
	lw	%x1, 48(%x2) #1094 pc 8112
	sw	%x1, 48(%x2)  #1094 pc 8116
	addi	%x2, %x2, 52  #1094 pc 8120
	jal	%x1, fneg.2499  #1094 pc 8124
	addi	%x2, %x2, -52  #1094 pc 8128
	lw	%x1, 48(%x2) #1094 pc 8132
	flw	%f1, 40(%x2)  #1094 pc 8136
	fdiv	%f0, %f0, %f1  #1094 pc 8140
	lw	%x6, 0(%x2)  #1094 pc 8144
	fsw	%f0, 0(%x6)  #1094 pc 8148
	addi	%x6, %x0, 1  #0 pc 8152
	ret #pc 8156
	nop #pc 8160
quadratic.2754:  #pc 8164
	fsw	%f0, 0(%x2)  #1104 pc 8164
	fsw	%f2, 8(%x2)  #1104 pc 8168
	fsw	%f1, 16(%x2)  #1104 pc 8172
	sw	%x6, 24(%x2)  #1104 pc 8176
	sw	%x1, 28(%x2)  #1104 pc 8180
	addi	%x2, %x2, 32  #1104 pc 8184
	jal	%x1, fsqr.2501  #1104 pc 8188
	addi	%x2, %x2, -32  #1104 pc 8192
	lw	%x1, 28(%x2) #1104 pc 8196
	lw	%x6, 24(%x2)  #1104 pc 8200
	fsw	%f0, 32(%x2)  #1104 pc 8204
	sw	%x1, 40(%x2)  #1104 pc 8208
	addi	%x2, %x2, 44  #1104 pc 8212
	jal	%x1, o_param_a.2649  #1104 pc 8216
	addi	%x2, %x2, -44  #1104 pc 8220
	lw	%x1, 40(%x2) #1104 pc 8224
	flw	%f1, 32(%x2)  #1104 pc 8228
	fmul	%f0, %f1, %f0  #1104 pc 8232
	flw	%f1, 16(%x2)  #1104 pc 8236
	fsw	%f0, 40(%x2)  #1104 pc 8240
	fadd	%f0, %f1, %f30  #0 pc 8244
	sw	%x1, 48(%x2)  #1104 pc 8248
	addi	%x2, %x2, 52  #1104 pc 8252
	jal	%x1, fsqr.2501  #1104 pc 8256
	addi	%x2, %x2, -52  #1104 pc 8260
	lw	%x1, 48(%x2) #1104 pc 8264
	lw	%x6, 24(%x2)  #1104 pc 8268
	fsw	%f0, 48(%x2)  #1104 pc 8272
	sw	%x1, 56(%x2)  #1104 pc 8276
	addi	%x2, %x2, 60  #1104 pc 8280
	jal	%x1, o_param_b.2651  #1104 pc 8284
	addi	%x2, %x2, -60  #1104 pc 8288
	lw	%x1, 56(%x2) #1104 pc 8292
	flw	%f1, 48(%x2)  #1104 pc 8296
	fmul	%f0, %f1, %f0  #1104 pc 8300
	flw	%f1, 40(%x2)  #1104 pc 8304
	fadd	%f0, %f1, %f0  #1104 pc 8308
	flw	%f1, 8(%x2)  #1104 pc 8312
	fsw	%f0, 56(%x2)  #1104 pc 8316
	fadd	%f0, %f1, %f30  #0 pc 8320
	sw	%x1, 64(%x2)  #1104 pc 8324
	addi	%x2, %x2, 68  #1104 pc 8328
	jal	%x1, fsqr.2501  #1104 pc 8332
	addi	%x2, %x2, -68  #1104 pc 8336
	lw	%x1, 64(%x2) #1104 pc 8340
	lw	%x6, 24(%x2)  #1104 pc 8344
	fsw	%f0, 64(%x2)  #1104 pc 8348
	sw	%x1, 72(%x2)  #1104 pc 8352
	addi	%x2, %x2, 76  #1104 pc 8356
	jal	%x1, o_param_c.2653  #1104 pc 8360
	addi	%x2, %x2, -76  #1104 pc 8364
	lw	%x1, 72(%x2) #1104 pc 8368
	flw	%f1, 64(%x2)  #1104 pc 8372
	fmul	%f0, %f1, %f0  #1104 pc 8376
	flw	%f1, 56(%x2)  #1104 pc 8380
	fadd	%f0, %f1, %f0  #1104 pc 8384
	lw	%x6, 24(%x2)  #1106 pc 8388
	fsw	%f0, 72(%x2)  #1106 pc 8392
	sw	%x1, 80(%x2)  #1106 pc 8396
	addi	%x2, %x2, 84  #1106 pc 8400
	jal	%x1, o_isrot.2647  #1106 pc 8404
	addi	%x2, %x2, -84  #1106 pc 8408
	lw	%x1, 80(%x2) #1106 pc 8412
	beq	%x6, %x0, 12  #1106 pc 8416
	j	be_else.9164 #pc 8420
	nop #pc 8424
	flw	%f0, 72(%x2)  #1107 pc 8428
	ret #pc 8432
	nop #pc 8436
be_else.9164: #pc 8440
	flw	%f0, 8(%x2)  #1110 pc 8440
	flw	%f1, 16(%x2)  #1110 pc 8444
	fmul	%f2, %f1, %f0  #1110 pc 8448
	lw	%x6, 24(%x2)  #1110 pc 8452
	fsw	%f2, 80(%x2)  #1110 pc 8456
	sw	%x1, 88(%x2)  #1110 pc 8460
	addi	%x2, %x2, 92  #1110 pc 8464
	jal	%x1, o_param_r1.2673  #1110 pc 8468
	addi	%x2, %x2, -92  #1110 pc 8472
	lw	%x1, 88(%x2) #1110 pc 8476
	flw	%f1, 80(%x2)  #1110 pc 8480
	fmul	%f0, %f1, %f0  #1110 pc 8484
	flw	%f1, 72(%x2)  #1109 pc 8488
	fadd	%f0, %f1, %f0  #1109 pc 8492
	flw	%f1, 0(%x2)  #1111 pc 8496
	flw	%f2, 8(%x2)  #1111 pc 8500
	fmul	%f2, %f2, %f1  #1111 pc 8504
	lw	%x6, 24(%x2)  #1111 pc 8508
	fsw	%f0, 88(%x2)  #1111 pc 8512
	fsw	%f2, 96(%x2)  #1111 pc 8516
	sw	%x1, 104(%x2)  #1111 pc 8520
	addi	%x2, %x2, 108  #1111 pc 8524
	jal	%x1, o_param_r2.2675  #1111 pc 8528
	addi	%x2, %x2, -108  #1111 pc 8532
	lw	%x1, 104(%x2) #1111 pc 8536
	flw	%f1, 96(%x2)  #1111 pc 8540
	fmul	%f0, %f1, %f0  #1111 pc 8544
	flw	%f1, 88(%x2)  #1109 pc 8548
	fadd	%f0, %f1, %f0  #1109 pc 8552
	flw	%f1, 16(%x2)  #1112 pc 8556
	flw	%f2, 0(%x2)  #1112 pc 8560
	fmul	%f1, %f2, %f1  #1112 pc 8564
	lw	%x6, 24(%x2)  #1112 pc 8568
	fsw	%f0, 104(%x2)  #1112 pc 8572
	fsw	%f1, 112(%x2)  #1112 pc 8576
	sw	%x1, 120(%x2)  #1112 pc 8580
	addi	%x2, %x2, 124  #1112 pc 8584
	jal	%x1, o_param_r3.2677  #1112 pc 8588
	addi	%x2, %x2, -124  #1112 pc 8592
	lw	%x1, 120(%x2) #1112 pc 8596
	flw	%f1, 112(%x2)  #1112 pc 8600
	fmul	%f0, %f1, %f0  #1112 pc 8604
	flw	%f1, 104(%x2)  #1109 pc 8608
	fadd	%f0, %f1, %f0  #1109 pc 8612
	ret #pc 8616
	nop #pc 8620
bilinear.2759:  #pc 8624
	fmul	%f6, %f0, %f3  #1118 pc 8624
	fsw	%f3, 0(%x2)  #1118 pc 8628
	fsw	%f0, 8(%x2)  #1118 pc 8632
	fsw	%f5, 16(%x2)  #1118 pc 8636
	fsw	%f2, 24(%x2)  #1118 pc 8640
	sw	%x6, 32(%x2)  #1118 pc 8644
	fsw	%f4, 40(%x2)  #1118 pc 8648
	fsw	%f1, 48(%x2)  #1118 pc 8652
	fsw	%f6, 56(%x2)  #1118 pc 8656
	sw	%x1, 64(%x2)  #1118 pc 8660
	addi	%x2, %x2, 68  #1118 pc 8664
	jal	%x1, o_param_a.2649  #1118 pc 8668
	addi	%x2, %x2, -68  #1118 pc 8672
	lw	%x1, 64(%x2) #1118 pc 8676
	flw	%f1, 56(%x2)  #1118 pc 8680
	fmul	%f0, %f1, %f0  #1118 pc 8684
	flw	%f1, 40(%x2)  #1119 pc 8688
	flw	%f2, 48(%x2)  #1119 pc 8692
	fmul	%f3, %f2, %f1  #1119 pc 8696
	lw	%x6, 32(%x2)  #1119 pc 8700
	fsw	%f0, 64(%x2)  #1119 pc 8704
	fsw	%f3, 72(%x2)  #1119 pc 8708
	sw	%x1, 80(%x2)  #1119 pc 8712
	addi	%x2, %x2, 84  #1119 pc 8716
	jal	%x1, o_param_b.2651  #1119 pc 8720
	addi	%x2, %x2, -84  #1119 pc 8724
	lw	%x1, 80(%x2) #1119 pc 8728
	flw	%f1, 72(%x2)  #1119 pc 8732
	fmul	%f0, %f1, %f0  #1119 pc 8736
	flw	%f1, 64(%x2)  #1118 pc 8740
	fadd	%f0, %f1, %f0  #1118 pc 8744
	flw	%f1, 16(%x2)  #1120 pc 8748
	flw	%f2, 24(%x2)  #1120 pc 8752
	fmul	%f3, %f2, %f1  #1120 pc 8756
	lw	%x6, 32(%x2)  #1120 pc 8760
	fsw	%f0, 80(%x2)  #1120 pc 8764
	fsw	%f3, 88(%x2)  #1120 pc 8768
	sw	%x1, 96(%x2)  #1120 pc 8772
	addi	%x2, %x2, 100  #1120 pc 8776
	jal	%x1, o_param_c.2653  #1120 pc 8780
	addi	%x2, %x2, -100  #1120 pc 8784
	lw	%x1, 96(%x2) #1120 pc 8788
	flw	%f1, 88(%x2)  #1120 pc 8792
	fmul	%f0, %f1, %f0  #1120 pc 8796
	flw	%f1, 80(%x2)  #1118 pc 8800
	fadd	%f0, %f1, %f0  #1118 pc 8804
	lw	%x6, 32(%x2)  #1122 pc 8808
	fsw	%f0, 96(%x2)  #1122 pc 8812
	sw	%x1, 104(%x2)  #1122 pc 8816
	addi	%x2, %x2, 108  #1122 pc 8820
	jal	%x1, o_isrot.2647  #1122 pc 8824
	addi	%x2, %x2, -108  #1122 pc 8828
	lw	%x1, 104(%x2) #1122 pc 8832
	beq	%x6, %x0, 12  #1122 pc 8836
	j	be_else.9166 #pc 8840
	nop #pc 8844
	flw	%f0, 96(%x2)  #1123 pc 8848
	ret #pc 8852
	nop #pc 8856
be_else.9166: #pc 8860
	flw	%f0, 40(%x2)  #1126 pc 8860
	flw	%f1, 24(%x2)  #1126 pc 8864
	fmul	%f2, %f1, %f0  #1126 pc 8868
	flw	%f3, 16(%x2)  #1126 pc 8872
	flw	%f4, 48(%x2)  #1126 pc 8876
	fmul	%f5, %f4, %f3  #1126 pc 8880
	fadd	%f2, %f2, %f5  #1126 pc 8884
	lw	%x6, 32(%x2)  #1126 pc 8888
	fsw	%f2, 104(%x2)  #1126 pc 8892
	sw	%x1, 112(%x2)  #1126 pc 8896
	addi	%x2, %x2, 116  #1126 pc 8900
	jal	%x1, o_param_r1.2673  #1126 pc 8904
	addi	%x2, %x2, -116  #1126 pc 8908
	lw	%x1, 112(%x2) #1126 pc 8912
	flw	%f1, 104(%x2)  #1126 pc 8916
	fmul	%f0, %f1, %f0  #1126 pc 8920
	flw	%f1, 16(%x2)  #1127 pc 8924
	flw	%f2, 8(%x2)  #1127 pc 8928
	fmul	%f1, %f2, %f1  #1127 pc 8932
	flw	%f3, 0(%x2)  #1127 pc 8936
	flw	%f4, 24(%x2)  #1127 pc 8940
	fmul	%f4, %f4, %f3  #1127 pc 8944
	fadd	%f1, %f1, %f4  #1127 pc 8948
	lw	%x6, 32(%x2)  #1127 pc 8952
	fsw	%f0, 112(%x2)  #1127 pc 8956
	fsw	%f1, 120(%x2)  #1127 pc 8960
	sw	%x1, 128(%x2)  #1127 pc 8964
	addi	%x2, %x2, 132  #1127 pc 8968
	jal	%x1, o_param_r2.2675  #1127 pc 8972
	addi	%x2, %x2, -132  #1127 pc 8976
	lw	%x1, 128(%x2) #1127 pc 8980
	flw	%f1, 120(%x2)  #1127 pc 8984
	fmul	%f0, %f1, %f0  #1127 pc 8988
	flw	%f1, 112(%x2)  #1126 pc 8992
	fadd	%f0, %f1, %f0  #1126 pc 8996
	flw	%f1, 40(%x2)  #1128 pc 9000
	flw	%f2, 8(%x2)  #1128 pc 9004
	fmul	%f1, %f2, %f1  #1128 pc 9008
	flw	%f2, 0(%x2)  #1128 pc 9012
	flw	%f3, 48(%x2)  #1128 pc 9016
	fmul	%f2, %f3, %f2  #1128 pc 9020
	fadd	%f1, %f1, %f2  #1128 pc 9024
	lw	%x6, 32(%x2)  #1128 pc 9028
	fsw	%f0, 128(%x2)  #1128 pc 9032
	fsw	%f1, 136(%x2)  #1128 pc 9036
	sw	%x1, 144(%x2)  #1128 pc 9040
	addi	%x2, %x2, 148  #1128 pc 9044
	jal	%x1, o_param_r3.2677  #1128 pc 9048
	addi	%x2, %x2, -148  #1128 pc 9052
	lw	%x1, 144(%x2) #1128 pc 9056
	flw	%f1, 136(%x2)  #1128 pc 9060
	fmul	%f0, %f1, %f0  #1128 pc 9064
	flw	%f1, 128(%x2)  #1126 pc 9068
	fadd	%f0, %f1, %f0  #1126 pc 9072
	sw	%x1, 144(%x2)  #1125 pc 9076
	addi	%x2, %x2, 148  #1125 pc 9080
	jal	%x1, fhalf.2503  #1125 pc 9084
	addi	%x2, %x2, -148  #1125 pc 9088
	lw	%x1, 144(%x2) #1125 pc 9092
	flw	%f1, 96(%x2)  #1125 pc 9096
	fadd	%f0, %f1, %f0  #1125 pc 9100
	ret #pc 9104
	nop #pc 9108
solver_second.2767:  #pc 9112
	lw	%x8, 4(%x29)  #0 pc 9112
	flw	%f3, 0(%x7)  #1143 pc 9116
	flw	%f4, 4(%x7)  #1143 pc 9120
	flw	%f5, 8(%x7)  #1143 pc 9124
	sw	%x8, 0(%x2)  #1143 pc 9128
	fsw	%f2, 8(%x2)  #1143 pc 9132
	fsw	%f1, 16(%x2)  #1143 pc 9136
	fsw	%f0, 24(%x2)  #1143 pc 9140
	sw	%x6, 32(%x2)  #1143 pc 9144
	sw	%x7, 36(%x2)  #1143 pc 9148
	fadd	%f2, %f5, %f30  #0 pc 9152
	fadd	%f1, %f4, %f30  #0 pc 9156
	fadd	%f0, %f3, %f30  #0 pc 9160
	sw	%x1, 40(%x2)  #1143 pc 9164
	addi	%x2, %x2, 44  #1143 pc 9168
	jal	%x1, quadratic.2754  #1143 pc 9172
	addi	%x2, %x2, -44  #1143 pc 9176
	lw	%x1, 40(%x2) #1143 pc 9180
	fsw	%f0, 40(%x2)  #1145 pc 9184
	sw	%x1, 48(%x2)  #1145 pc 9188
	addi	%x2, %x2, 52  #1145 pc 9192
	jal	%x1, fiszero.2493  #1145 pc 9196
	addi	%x2, %x2, -52  #1145 pc 9200
	lw	%x1, 48(%x2) #1145 pc 9204
	beq	%x6, %x0, 12  #1145 pc 9208
	j	be_else.9168 #pc 9212
	nop #pc 9216
	lw	%x6, 36(%x2)  #1150 pc 9220
	flw	%f0, 0(%x6)  #1150 pc 9224
	flw	%f1, 4(%x6)  #1150 pc 9228
	flw	%f2, 8(%x6)  #1150 pc 9232
	flw	%f3, 24(%x2)  #1150 pc 9236
	flw	%f4, 16(%x2)  #1150 pc 9240
	flw	%f5, 8(%x2)  #1150 pc 9244
	lw	%x6, 32(%x2)  #1150 pc 9248
	sw	%x1, 48(%x2)  #1150 pc 9252
	addi	%x2, %x2, 52  #1150 pc 9256
	jal	%x1, bilinear.2759  #1150 pc 9260
	addi	%x2, %x2, -52  #1150 pc 9264
	lw	%x1, 48(%x2) #1150 pc 9268
	flw	%f1, 24(%x2)  #1152 pc 9272
	flw	%f2, 16(%x2)  #1152 pc 9276
	flw	%f3, 8(%x2)  #1152 pc 9280
	lw	%x6, 32(%x2)  #1152 pc 9284
	fsw	%f0, 48(%x2)  #1152 pc 9288
	fadd	%f0, %f1, %f30  #0 pc 9292
	fadd	%f1, %f2, %f30  #0 pc 9296
	fadd	%f2, %f3, %f30  #0 pc 9300
	sw	%x1, 56(%x2)  #1152 pc 9304
	addi	%x2, %x2, 60  #1152 pc 9308
	jal	%x1, quadratic.2754  #1152 pc 9312
	addi	%x2, %x2, -60  #1152 pc 9316
	lw	%x1, 56(%x2) #1152 pc 9320
	lw	%x6, 32(%x2)  #1153 pc 9324
	fsw	%f0, 56(%x2)  #1153 pc 9328
	sw	%x1, 64(%x2)  #1153 pc 9332
	addi	%x2, %x2, 68  #1153 pc 9336
	jal	%x1, o_form.2641  #1153 pc 9340
	addi	%x2, %x2, -68  #1153 pc 9344
	lw	%x1, 64(%x2) #1153 pc 9348
	addi	%x31, %x0, 3  #pc 9352
	beq	%x6, %x31, 12  #1153 pc 9356
	j	be_else.9169 #pc 9360
	nop #pc 9364
	fmv	%f0, l.6219  #0 pc 9368
	flw	%f1, 56(%x2)  #1153 pc 9372
	fsub	%f0, %f1, %f0  #1153 pc 9376
	j	be_cont.9170 #pc 9380
	nop #pc 9384
be_else.9169: #pc 9388
	flw	%f0, 56(%x2)  #1153 pc 9388
be_cont.9170: #pc 9392
	flw	%f1, 48(%x2)  #1155 pc 9392
	fsw	%f0, 64(%x2)  #1155 pc 9396
	fadd	%f0, %f1, %f30  #0 pc 9400
	sw	%x1, 72(%x2)  #1155 pc 9404
	addi	%x2, %x2, 76  #1155 pc 9408
	jal	%x1, fsqr.2501  #1155 pc 9412
	addi	%x2, %x2, -76  #1155 pc 9416
	lw	%x1, 72(%x2) #1155 pc 9420
	flw	%f1, 64(%x2)  #1155 pc 9424
	flw	%f2, 40(%x2)  #1155 pc 9428
	fmul	%f1, %f2, %f1  #1155 pc 9432
	fsub	%f0, %f0, %f1  #1155 pc 9436
	fsw	%f0, 72(%x2)  #1157 pc 9440
	sw	%x1, 80(%x2)  #1157 pc 9444
	addi	%x2, %x2, 84  #1157 pc 9448
	jal	%x1, fispos.2495  #1157 pc 9452
	addi	%x2, %x2, -84  #1157 pc 9456
	lw	%x1, 80(%x2) #1157 pc 9460
	beq	%x6, %x0, 12  #1157 pc 9464
	j	be_else.9171 #pc 9468
	nop #pc 9472
	addi	%x6, %x0, 0  #0 pc 9476
	ret #pc 9480
	nop #pc 9484
be_else.9171: #pc 9488
	flw	%f0, 72(%x2)  #1158 pc 9488
	fsqrt	%f0, %f0  #1158 pc 9492
	lw	%x6, 32(%x2)  #1159 pc 9496
	fsw	%f0, 80(%x2)  #1159 pc 9500
	sw	%x1, 88(%x2)  #1159 pc 9504
	addi	%x2, %x2, 92  #1159 pc 9508
	jal	%x1, o_isinvert.2645  #1159 pc 9512
	addi	%x2, %x2, -92  #1159 pc 9516
	lw	%x1, 88(%x2) #1159 pc 9520
	beq	%x6, %x0, 12  #1159 pc 9524
	j	be_else.9172 #pc 9528
	nop #pc 9532
	flw	%f0, 80(%x2)  #1159 pc 9536
	sw	%x1, 88(%x2)  #1159 pc 9540
	addi	%x2, %x2, 92  #1159 pc 9544
	jal	%x1, fneg.2499  #1159 pc 9548
	addi	%x2, %x2, -92  #1159 pc 9552
	lw	%x1, 88(%x2) #1159 pc 9556
	j	be_cont.9173 #pc 9560
	nop #pc 9564
be_else.9172: #pc 9568
	flw	%f0, 80(%x2)  #1159 pc 9568
be_cont.9173: #pc 9572
	flw	%f1, 48(%x2)  #1160 pc 9572
	fsub	%f0, %f0, %f1  #1160 pc 9576
	flw	%f1, 40(%x2)  #1160 pc 9580
	fdiv	%f0, %f0, %f1  #1160 pc 9584
	lw	%x6, 0(%x2)  #1160 pc 9588
	fsw	%f0, 0(%x6)  #1160 pc 9592
	addi	%x6, %x0, 1  #0 pc 9596
	ret #pc 9600
	nop #pc 9604
be_else.9168: #pc 9608
	addi	%x6, %x0, 0  #0 pc 9608
	ret #pc 9612
	nop #pc 9616
solver.2773:  #pc 9620
	lw	%x9, 16(%x29)  #1169 pc 9620
	lw	%x10, 12(%x29)  #1169 pc 9624
	lw	%x11, 8(%x29)  #1169 pc 9628
	lw	%x12, 4(%x29)  #1169 pc 9632
	slli	%x6, %x6, 2  #1169 pc 9636
	add	%x31, %x6, %x12  #1169 pc 9640
	lw	%x6, 0(%x31)  #1169 pc 9644
	flw	%f0, 0(%x8)  #1171 pc 9648
	sw	%x10, 0(%x2)  #1171 pc 9652
	sw	%x9, 4(%x2)  #1171 pc 9656
	sw	%x7, 8(%x2)  #1171 pc 9660
	sw	%x11, 12(%x2)  #1171 pc 9664
	sw	%x6, 16(%x2)  #1171 pc 9668
	sw	%x8, 20(%x2)  #1171 pc 9672
	fsw	%f0, 24(%x2)  #1171 pc 9676
	sw	%x1, 32(%x2)  #1171 pc 9680
	addi	%x2, %x2, 36  #1171 pc 9684
	jal	%x1, o_param_x.2657  #1171 pc 9688
	addi	%x2, %x2, -36  #1171 pc 9692
	lw	%x1, 32(%x2) #1171 pc 9696
	flw	%f1, 24(%x2)  #1171 pc 9700
	fsub	%f0, %f1, %f0  #1171 pc 9704
	lw	%x6, 20(%x2)  #1172 pc 9708
	flw	%f1, 4(%x6)  #1172 pc 9712
	lw	%x7, 16(%x2)  #1172 pc 9716
	fsw	%f0, 32(%x2)  #1172 pc 9720
	fsw	%f1, 40(%x2)  #1172 pc 9724
	addi	%x6, %x7, 0  #0 pc 9728
	sw	%x1, 48(%x2)  #1172 pc 9732
	addi	%x2, %x2, 52  #1172 pc 9736
	jal	%x1, o_param_y.2659  #1172 pc 9740
	addi	%x2, %x2, -52  #1172 pc 9744
	lw	%x1, 48(%x2) #1172 pc 9748
	flw	%f1, 40(%x2)  #1172 pc 9752
	fsub	%f0, %f1, %f0  #1172 pc 9756
	lw	%x6, 20(%x2)  #1173 pc 9760
	flw	%f1, 8(%x6)  #1173 pc 9764
	lw	%x6, 16(%x2)  #1173 pc 9768
	fsw	%f0, 48(%x2)  #1173 pc 9772
	fsw	%f1, 56(%x2)  #1173 pc 9776
	sw	%x1, 64(%x2)  #1173 pc 9780
	addi	%x2, %x2, 68  #1173 pc 9784
	jal	%x1, o_param_z.2661  #1173 pc 9788
	addi	%x2, %x2, -68  #1173 pc 9792
	lw	%x1, 64(%x2) #1173 pc 9796
	flw	%f1, 56(%x2)  #1173 pc 9800
	fsub	%f0, %f1, %f0  #1173 pc 9804
	lw	%x6, 16(%x2)  #1174 pc 9808
	fsw	%f0, 64(%x2)  #1174 pc 9812
	sw	%x1, 72(%x2)  #1174 pc 9816
	addi	%x2, %x2, 76  #1174 pc 9820
	jal	%x1, o_form.2641  #1174 pc 9824
	addi	%x2, %x2, -76  #1174 pc 9828
	lw	%x1, 72(%x2) #1174 pc 9832
	addi	%x31, %x0, 1  #pc 9836
	beq	%x6, %x31, 12  #1176 pc 9840
	j	be_else.9174 #pc 9844
	nop #pc 9848
	flw	%f0, 32(%x2)  #1176 pc 9852
	flw	%f1, 48(%x2)  #1176 pc 9856
	flw	%f2, 64(%x2)  #1176 pc 9860
	lw	%x6, 16(%x2)  #1176 pc 9864
	lw	%x7, 8(%x2)  #1176 pc 9868
	lw	%x29, 12(%x2)  #1176 pc 9872
	lw	%x30, 0(%x29)  #1176 pc 9876
	jalr	%x0, %x30, 0  #1176 pc 9880
	nop #pc 9884
be_else.9174: #pc 9888
	addi	%x31, %x0, 2  #pc 9888
	beq	%x6, %x31, 12  #1177 pc 9892
	j	be_else.9175 #pc 9896
	nop #pc 9900
	flw	%f0, 32(%x2)  #1177 pc 9904
	flw	%f1, 48(%x2)  #1177 pc 9908
	flw	%f2, 64(%x2)  #1177 pc 9912
	lw	%x6, 16(%x2)  #1177 pc 9916
	lw	%x7, 8(%x2)  #1177 pc 9920
	lw	%x29, 4(%x2)  #1177 pc 9924
	lw	%x30, 0(%x29)  #1177 pc 9928
	jalr	%x0, %x30, 0  #1177 pc 9932
	nop #pc 9936
be_else.9175: #pc 9940
	flw	%f0, 32(%x2)  #1178 pc 9940
	flw	%f1, 48(%x2)  #1178 pc 9944
	flw	%f2, 64(%x2)  #1178 pc 9948
	lw	%x6, 16(%x2)  #1178 pc 9952
	lw	%x7, 8(%x2)  #1178 pc 9956
	lw	%x29, 0(%x2)  #1178 pc 9960
	lw	%x30, 0(%x29)  #1178 pc 9964
	jalr	%x0, %x30, 0  #1178 pc 9968
	nop #pc 9972
solver_rect_fast.2777:  #pc 9976
	lw	%x9, 4(%x29)  #0 pc 9976
	flw	%f3, 0(%x8)  #1201 pc 9980
	fsub	%f3, %f3, %f0  #1201 pc 9984
	flw	%f4, 4(%x8)  #1201 pc 9988
	fmul	%f3, %f3, %f4  #1201 pc 9992
	flw	%f4, 4(%x7)  #1203 pc 9996
	fmul	%f4, %f3, %f4  #1203 pc 10000
	fadd	%f4, %f4, %f1  #1203 pc 10004
	fabs	%f4, %f4  #1203 pc 10008
	sw	%x9, 0(%x2)  #1203 pc 10012
	fsw	%f0, 8(%x2)  #1203 pc 10016
	fsw	%f1, 16(%x2)  #1203 pc 10020
	sw	%x8, 24(%x2)  #1203 pc 10024
	sw	%x6, 28(%x2)  #1203 pc 10028
	fsw	%f2, 32(%x2)  #1203 pc 10032
	fsw	%f3, 40(%x2)  #1203 pc 10036
	sw	%x7, 48(%x2)  #1203 pc 10040
	fsw	%f4, 56(%x2)  #1203 pc 10044
	sw	%x1, 64(%x2)  #1203 pc 10048
	addi	%x2, %x2, 68  #1203 pc 10052
	jal	%x1, o_param_b.2651  #1203 pc 10056
	addi	%x2, %x2, -68  #1203 pc 10060
	lw	%x1, 64(%x2) #1203 pc 10064
	fadd	%f1, %f0, %f30  #1203 pc 10068
	flw	%f0, 56(%x2)  #1203 pc 10072
	sw	%x1, 64(%x2)  #1203 pc 10076
	addi	%x2, %x2, 68  #1203 pc 10080
	jal	%x1, fless.2505  #1203 pc 10084
	addi	%x2, %x2, -68  #1203 pc 10088
	lw	%x1, 64(%x2) #1203 pc 10092
	beq	%x6, %x0, 12  #1203 pc 10096
	j	be_else.9178 #pc 10100
	nop #pc 10104
	addi	%x6, %x0, 0  #0 pc 10108
	j	be_cont.9179 #pc 10112
	nop #pc 10116
be_else.9178: #pc 10120
	lw	%x6, 48(%x2)  #1204 pc 10120
	flw	%f0, 8(%x6)  #1204 pc 10124
	flw	%f1, 40(%x2)  #1204 pc 10128
	fmul	%f0, %f1, %f0  #1204 pc 10132
	flw	%f2, 32(%x2)  #1204 pc 10136
	fadd	%f0, %f0, %f2  #1204 pc 10140
	fabs	%f0, %f0  #1204 pc 10144
	lw	%x7, 28(%x2)  #1204 pc 10148
	fsw	%f0, 64(%x2)  #1204 pc 10152
	addi	%x6, %x7, 0  #0 pc 10156
	sw	%x1, 72(%x2)  #1204 pc 10160
	addi	%x2, %x2, 76  #1204 pc 10164
	jal	%x1, o_param_c.2653  #1204 pc 10168
	addi	%x2, %x2, -76  #1204 pc 10172
	lw	%x1, 72(%x2) #1204 pc 10176
	fadd	%f1, %f0, %f30  #1204 pc 10180
	flw	%f0, 64(%x2)  #1204 pc 10184
	sw	%x1, 72(%x2)  #1204 pc 10188
	addi	%x2, %x2, 76  #1204 pc 10192
	jal	%x1, fless.2505  #1204 pc 10196
	addi	%x2, %x2, -76  #1204 pc 10200
	lw	%x1, 72(%x2) #1204 pc 10204
	beq	%x6, %x0, 12  #1204 pc 10208
	j	be_else.9180 #pc 10212
	nop #pc 10216
	addi	%x6, %x0, 0  #0 pc 10220
	j	be_cont.9181 #pc 10224
	nop #pc 10228
be_else.9180: #pc 10232
	lw	%x6, 24(%x2)  #1205 pc 10232
	flw	%f0, 4(%x6)  #1205 pc 10236
	sw	%x1, 72(%x2)  #1205 pc 10240
	addi	%x2, %x2, 76  #1205 pc 10244
	jal	%x1, fiszero.2493  #1205 pc 10248
	addi	%x2, %x2, -76  #1205 pc 10252
	lw	%x1, 72(%x2) #1205 pc 10256
	beq	%x6, %x0, 12  #1205 pc 10260
	j	be_else.9182 #pc 10264
	nop #pc 10268
	addi	%x6, %x0, 1  #0 pc 10272
	j	be_cont.9183 #pc 10276
	nop #pc 10280
be_else.9182: #pc 10284
	addi	%x6, %x0, 0  #0 pc 10284
be_cont.9183: #pc 10288
be_cont.9181: #pc 10288
be_cont.9179: #pc 10288
	beq	%x6, %x0, 12  #1202 pc 10288
	j	be_else.9184 #pc 10292
	nop #pc 10296
	lw	%x6, 24(%x2)  #1210 pc 10300
	flw	%f0, 8(%x6)  #1210 pc 10304
	flw	%f1, 16(%x2)  #1210 pc 10308
	fsub	%f0, %f0, %f1  #1210 pc 10312
	flw	%f2, 12(%x6)  #1210 pc 10316
	fmul	%f0, %f0, %f2  #1210 pc 10320
	lw	%x7, 48(%x2)  #1212 pc 10324
	flw	%f2, 0(%x7)  #1212 pc 10328
	fmul	%f2, %f0, %f2  #1212 pc 10332
	flw	%f3, 8(%x2)  #1212 pc 10336
	fadd	%f2, %f2, %f3  #1212 pc 10340
	fabs	%f2, %f2  #1212 pc 10344
	lw	%x8, 28(%x2)  #1212 pc 10348
	fsw	%f0, 72(%x2)  #1212 pc 10352
	fsw	%f2, 80(%x2)  #1212 pc 10356
	addi	%x6, %x8, 0  #0 pc 10360
	sw	%x1, 88(%x2)  #1212 pc 10364
	addi	%x2, %x2, 92  #1212 pc 10368
	jal	%x1, o_param_a.2649  #1212 pc 10372
	addi	%x2, %x2, -92  #1212 pc 10376
	lw	%x1, 88(%x2) #1212 pc 10380
	fadd	%f1, %f0, %f30  #1212 pc 10384
	flw	%f0, 80(%x2)  #1212 pc 10388
	sw	%x1, 88(%x2)  #1212 pc 10392
	addi	%x2, %x2, 92  #1212 pc 10396
	jal	%x1, fless.2505  #1212 pc 10400
	addi	%x2, %x2, -92  #1212 pc 10404
	lw	%x1, 88(%x2) #1212 pc 10408
	beq	%x6, %x0, 12  #1212 pc 10412
	j	be_else.9185 #pc 10416
	nop #pc 10420
	addi	%x6, %x0, 0  #0 pc 10424
	j	be_cont.9186 #pc 10428
	nop #pc 10432
be_else.9185: #pc 10436
	lw	%x6, 48(%x2)  #1213 pc 10436
	flw	%f0, 8(%x6)  #1213 pc 10440
	flw	%f1, 72(%x2)  #1213 pc 10444
	fmul	%f0, %f1, %f0  #1213 pc 10448
	flw	%f2, 32(%x2)  #1213 pc 10452
	fadd	%f0, %f0, %f2  #1213 pc 10456
	fabs	%f0, %f0  #1213 pc 10460
	lw	%x7, 28(%x2)  #1213 pc 10464
	fsw	%f0, 88(%x2)  #1213 pc 10468
	addi	%x6, %x7, 0  #0 pc 10472
	sw	%x1, 96(%x2)  #1213 pc 10476
	addi	%x2, %x2, 100  #1213 pc 10480
	jal	%x1, o_param_c.2653  #1213 pc 10484
	addi	%x2, %x2, -100  #1213 pc 10488
	lw	%x1, 96(%x2) #1213 pc 10492
	fadd	%f1, %f0, %f30  #1213 pc 10496
	flw	%f0, 88(%x2)  #1213 pc 10500
	sw	%x1, 96(%x2)  #1213 pc 10504
	addi	%x2, %x2, 100  #1213 pc 10508
	jal	%x1, fless.2505  #1213 pc 10512
	addi	%x2, %x2, -100  #1213 pc 10516
	lw	%x1, 96(%x2) #1213 pc 10520
	beq	%x6, %x0, 12  #1213 pc 10524
	j	be_else.9187 #pc 10528
	nop #pc 10532
	addi	%x6, %x0, 0  #0 pc 10536
	j	be_cont.9188 #pc 10540
	nop #pc 10544
be_else.9187: #pc 10548
	lw	%x6, 24(%x2)  #1214 pc 10548
	flw	%f0, 12(%x6)  #1214 pc 10552
	sw	%x1, 96(%x2)  #1214 pc 10556
	addi	%x2, %x2, 100  #1214 pc 10560
	jal	%x1, fiszero.2493  #1214 pc 10564
	addi	%x2, %x2, -100  #1214 pc 10568
	lw	%x1, 96(%x2) #1214 pc 10572
	beq	%x6, %x0, 12  #1214 pc 10576
	j	be_else.9189 #pc 10580
	nop #pc 10584
	addi	%x6, %x0, 1  #0 pc 10588
	j	be_cont.9190 #pc 10592
	nop #pc 10596
be_else.9189: #pc 10600
	addi	%x6, %x0, 0  #0 pc 10600
be_cont.9190: #pc 10604
be_cont.9188: #pc 10604
be_cont.9186: #pc 10604
	beq	%x6, %x0, 12  #1211 pc 10604
	j	be_else.9191 #pc 10608
	nop #pc 10612
	lw	%x6, 24(%x2)  #1219 pc 10616
	flw	%f0, 16(%x6)  #1219 pc 10620
	flw	%f1, 32(%x2)  #1219 pc 10624
	fsub	%f0, %f0, %f1  #1219 pc 10628
	flw	%f1, 20(%x6)  #1219 pc 10632
	fmul	%f0, %f0, %f1  #1219 pc 10636
	lw	%x7, 48(%x2)  #1221 pc 10640
	flw	%f1, 0(%x7)  #1221 pc 10644
	fmul	%f1, %f0, %f1  #1221 pc 10648
	flw	%f2, 8(%x2)  #1221 pc 10652
	fadd	%f1, %f1, %f2  #1221 pc 10656
	fabs	%f1, %f1  #1221 pc 10660
	lw	%x8, 28(%x2)  #1221 pc 10664
	fsw	%f0, 96(%x2)  #1221 pc 10668
	fsw	%f1, 104(%x2)  #1221 pc 10672
	addi	%x6, %x8, 0  #0 pc 10676
	sw	%x1, 112(%x2)  #1221 pc 10680
	addi	%x2, %x2, 116  #1221 pc 10684
	jal	%x1, o_param_a.2649  #1221 pc 10688
	addi	%x2, %x2, -116  #1221 pc 10692
	lw	%x1, 112(%x2) #1221 pc 10696
	fadd	%f1, %f0, %f30  #1221 pc 10700
	flw	%f0, 104(%x2)  #1221 pc 10704
	sw	%x1, 112(%x2)  #1221 pc 10708
	addi	%x2, %x2, 116  #1221 pc 10712
	jal	%x1, fless.2505  #1221 pc 10716
	addi	%x2, %x2, -116  #1221 pc 10720
	lw	%x1, 112(%x2) #1221 pc 10724
	beq	%x6, %x0, 12  #1221 pc 10728
	j	be_else.9192 #pc 10732
	nop #pc 10736
	addi	%x6, %x0, 0  #0 pc 10740
	j	be_cont.9193 #pc 10744
	nop #pc 10748
be_else.9192: #pc 10752
	lw	%x6, 48(%x2)  #1222 pc 10752
	flw	%f0, 4(%x6)  #1222 pc 10756
	flw	%f1, 96(%x2)  #1222 pc 10760
	fmul	%f0, %f1, %f0  #1222 pc 10764
	flw	%f2, 16(%x2)  #1222 pc 10768
	fadd	%f0, %f0, %f2  #1222 pc 10772
	fabs	%f0, %f0  #1222 pc 10776
	lw	%x6, 28(%x2)  #1222 pc 10780
	fsw	%f0, 112(%x2)  #1222 pc 10784
	sw	%x1, 120(%x2)  #1222 pc 10788
	addi	%x2, %x2, 124  #1222 pc 10792
	jal	%x1, o_param_b.2651  #1222 pc 10796
	addi	%x2, %x2, -124  #1222 pc 10800
	lw	%x1, 120(%x2) #1222 pc 10804
	fadd	%f1, %f0, %f30  #1222 pc 10808
	flw	%f0, 112(%x2)  #1222 pc 10812
	sw	%x1, 120(%x2)  #1222 pc 10816
	addi	%x2, %x2, 124  #1222 pc 10820
	jal	%x1, fless.2505  #1222 pc 10824
	addi	%x2, %x2, -124  #1222 pc 10828
	lw	%x1, 120(%x2) #1222 pc 10832
	beq	%x6, %x0, 12  #1222 pc 10836
	j	be_else.9194 #pc 10840
	nop #pc 10844
	addi	%x6, %x0, 0  #0 pc 10848
	j	be_cont.9195 #pc 10852
	nop #pc 10856
be_else.9194: #pc 10860
	lw	%x6, 24(%x2)  #1223 pc 10860
	flw	%f0, 20(%x6)  #1223 pc 10864
	sw	%x1, 120(%x2)  #1223 pc 10868
	addi	%x2, %x2, 124  #1223 pc 10872
	jal	%x1, fiszero.2493  #1223 pc 10876
	addi	%x2, %x2, -124  #1223 pc 10880
	lw	%x1, 120(%x2) #1223 pc 10884
	beq	%x6, %x0, 12  #1223 pc 10888
	j	be_else.9196 #pc 10892
	nop #pc 10896
	addi	%x6, %x0, 1  #0 pc 10900
	j	be_cont.9197 #pc 10904
	nop #pc 10908
be_else.9196: #pc 10912
	addi	%x6, %x0, 0  #0 pc 10912
be_cont.9197: #pc 10916
be_cont.9195: #pc 10916
be_cont.9193: #pc 10916
	beq	%x6, %x0, 12  #1220 pc 10916
	j	be_else.9198 #pc 10920
	nop #pc 10924
	addi	%x6, %x0, 0  #0 pc 10928
	ret #pc 10932
	nop #pc 10936
be_else.9198: #pc 10940
	lw	%x6, 0(%x2)  #1227 pc 10940
	flw	%f0, 96(%x2)  #1227 pc 10944
	fsw	%f0, 0(%x6)  #1227 pc 10948
	addi	%x6, %x0, 3  #0 pc 10952
	ret #pc 10956
	nop #pc 10960
be_else.9191: #pc 10964
	lw	%x6, 0(%x2)  #1218 pc 10964
	flw	%f0, 72(%x2)  #1218 pc 10968
	fsw	%f0, 0(%x6)  #1218 pc 10972
	addi	%x6, %x0, 2  #0 pc 10976
	ret #pc 10980
	nop #pc 10984
be_else.9184: #pc 10988
	lw	%x6, 0(%x2)  #1209 pc 10988
	flw	%f0, 40(%x2)  #1209 pc 10992
	fsw	%f0, 0(%x6)  #1209 pc 10996
	addi	%x6, %x0, 1  #0 pc 11000
	ret #pc 11004
	nop #pc 11008
solver_surface_fast.2784:  #pc 11012
	lw	%x6, 4(%x29)  #0 pc 11012
	flw	%f3, 0(%x7)  #1234 pc 11016
	sw	%x6, 0(%x2)  #1234 pc 11020
	fsw	%f2, 8(%x2)  #1234 pc 11024
	fsw	%f1, 16(%x2)  #1234 pc 11028
	fsw	%f0, 24(%x2)  #1234 pc 11032
	sw	%x7, 32(%x2)  #1234 pc 11036
	fadd	%f0, %f3, %f30  #0 pc 11040
	sw	%x1, 36(%x2)  #1234 pc 11044
	addi	%x2, %x2, 40  #1234 pc 11048
	jal	%x1, fisneg.2497  #1234 pc 11052
	addi	%x2, %x2, -40  #1234 pc 11056
	lw	%x1, 36(%x2) #1234 pc 11060
	beq	%x6, %x0, 12  #1234 pc 11064
	j	be_else.9200 #pc 11068
	nop #pc 11072
	addi	%x6, %x0, 0  #0 pc 11076
	ret #pc 11080
	nop #pc 11084
be_else.9200: #pc 11088
	lw	%x6, 32(%x2)  #1236 pc 11088
	flw	%f0, 4(%x6)  #1236 pc 11092
	flw	%f1, 24(%x2)  #1236 pc 11096
	fmul	%f0, %f0, %f1  #1236 pc 11100
	flw	%f1, 8(%x6)  #1236 pc 11104
	flw	%f2, 16(%x2)  #1236 pc 11108
	fmul	%f1, %f1, %f2  #1236 pc 11112
	fadd	%f0, %f0, %f1  #1236 pc 11116
	flw	%f1, 12(%x6)  #1236 pc 11120
	flw	%f2, 8(%x2)  #1236 pc 11124
	fmul	%f1, %f1, %f2  #1236 pc 11128
	fadd	%f0, %f0, %f1  #1236 pc 11132
	lw	%x6, 0(%x2)  #1235 pc 11136
	fsw	%f0, 0(%x6)  #1235 pc 11140
	addi	%x6, %x0, 1  #0 pc 11144
	ret #pc 11148
	nop #pc 11152
solver_second_fast.2790:  #pc 11156
	lw	%x8, 4(%x29)  #0 pc 11156
	flw	%f3, 0(%x7)  #1244 pc 11160
	sw	%x8, 0(%x2)  #1245 pc 11164
	fsw	%f3, 8(%x2)  #1245 pc 11168
	sw	%x6, 16(%x2)  #1245 pc 11172
	fsw	%f2, 24(%x2)  #1245 pc 11176
	fsw	%f1, 32(%x2)  #1245 pc 11180
	fsw	%f0, 40(%x2)  #1245 pc 11184
	sw	%x7, 48(%x2)  #1245 pc 11188
	fadd	%f0, %f3, %f30  #0 pc 11192
	sw	%x1, 52(%x2)  #1245 pc 11196
	addi	%x2, %x2, 56  #1245 pc 11200
	jal	%x1, fiszero.2493  #1245 pc 11204
	addi	%x2, %x2, -56  #1245 pc 11208
	lw	%x1, 52(%x2) #1245 pc 11212
	beq	%x6, %x0, 12  #1245 pc 11216
	j	be_else.9203 #pc 11220
	nop #pc 11224
	lw	%x6, 48(%x2)  #1248 pc 11228
	flw	%f0, 4(%x6)  #1248 pc 11232
	flw	%f1, 40(%x2)  #1248 pc 11236
	fmul	%f0, %f0, %f1  #1248 pc 11240
	flw	%f2, 8(%x6)  #1248 pc 11244
	flw	%f3, 32(%x2)  #1248 pc 11248
	fmul	%f2, %f2, %f3  #1248 pc 11252
	fadd	%f0, %f0, %f2  #1248 pc 11256
	flw	%f2, 12(%x6)  #1248 pc 11260
	flw	%f4, 24(%x2)  #1248 pc 11264
	fmul	%f2, %f2, %f4  #1248 pc 11268
	fadd	%f0, %f0, %f2  #1248 pc 11272
	lw	%x7, 16(%x2)  #1249 pc 11276
	fsw	%f0, 56(%x2)  #1249 pc 11280
	addi	%x6, %x7, 0  #0 pc 11284
	fadd	%f2, %f4, %f30  #0 pc 11288
	fadd	%f0, %f1, %f30  #0 pc 11292
	fadd	%f1, %f3, %f30  #0 pc 11296
	sw	%x1, 64(%x2)  #1249 pc 11300
	addi	%x2, %x2, 68  #1249 pc 11304
	jal	%x1, quadratic.2754  #1249 pc 11308
	addi	%x2, %x2, -68  #1249 pc 11312
	lw	%x1, 64(%x2) #1249 pc 11316
	lw	%x6, 16(%x2)  #1250 pc 11320
	fsw	%f0, 64(%x2)  #1250 pc 11324
	sw	%x1, 72(%x2)  #1250 pc 11328
	addi	%x2, %x2, 76  #1250 pc 11332
	jal	%x1, o_form.2641  #1250 pc 11336
	addi	%x2, %x2, -76  #1250 pc 11340
	lw	%x1, 72(%x2) #1250 pc 11344
	addi	%x31, %x0, 3  #pc 11348
	beq	%x6, %x31, 12  #1250 pc 11352
	j	be_else.9205 #pc 11356
	nop #pc 11360
	fmv	%f0, l.6219  #0 pc 11364
	flw	%f1, 64(%x2)  #1250 pc 11368
	fsub	%f0, %f1, %f0  #1250 pc 11372
	j	be_cont.9206 #pc 11376
	nop #pc 11380
be_else.9205: #pc 11384
	flw	%f0, 64(%x2)  #1250 pc 11384
be_cont.9206: #pc 11388
	flw	%f1, 56(%x2)  #1251 pc 11388
	fsw	%f0, 72(%x2)  #1251 pc 11392
	fadd	%f0, %f1, %f30  #0 pc 11396
	sw	%x1, 80(%x2)  #1251 pc 11400
	addi	%x2, %x2, 84  #1251 pc 11404
	jal	%x1, fsqr.2501  #1251 pc 11408
	addi	%x2, %x2, -84  #1251 pc 11412
	lw	%x1, 80(%x2) #1251 pc 11416
	flw	%f1, 72(%x2)  #1251 pc 11420
	flw	%f2, 8(%x2)  #1251 pc 11424
	fmul	%f1, %f2, %f1  #1251 pc 11428
	fsub	%f0, %f0, %f1  #1251 pc 11432
	fsw	%f0, 80(%x2)  #1252 pc 11436
	sw	%x1, 88(%x2)  #1252 pc 11440
	addi	%x2, %x2, 92  #1252 pc 11444
	jal	%x1, fispos.2495  #1252 pc 11448
	addi	%x2, %x2, -92  #1252 pc 11452
	lw	%x1, 88(%x2) #1252 pc 11456
	beq	%x6, %x0, 12  #1252 pc 11460
	j	be_else.9207 #pc 11464
	nop #pc 11468
	addi	%x6, %x0, 0  #0 pc 11472
	ret #pc 11476
	nop #pc 11480
be_else.9207: #pc 11484
	lw	%x6, 16(%x2)  #1253 pc 11484
	sw	%x1, 88(%x2)  #1253 pc 11488
	addi	%x2, %x2, 92  #1253 pc 11492
	jal	%x1, o_isinvert.2645  #1253 pc 11496
	addi	%x2, %x2, -92  #1253 pc 11500
	lw	%x1, 88(%x2) #1253 pc 11504
	beq	%x6, %x0, 12  #1253 pc 11508
	j	be_else.9208 #pc 11512
	nop #pc 11516
	flw	%f0, 80(%x2)  #1256 pc 11520
	fsqrt	%f0, %f0  #1256 pc 11524
	flw	%f1, 56(%x2)  #1256 pc 11528
	fsub	%f0, %f1, %f0  #1256 pc 11532
	lw	%x6, 48(%x2)  #1256 pc 11536
	flw	%f1, 16(%x6)  #1256 pc 11540
	fmul	%f0, %f0, %f1  #1256 pc 11544
	lw	%x6, 0(%x2)  #1256 pc 11548
	fsw	%f0, 0(%x6)  #1256 pc 11552
	j	be_cont.9209 #pc 11556
	nop #pc 11560
be_else.9208: #pc 11564
	flw	%f0, 80(%x2)  #1254 pc 11564
	fsqrt	%f0, %f0  #1254 pc 11568
	flw	%f1, 56(%x2)  #1254 pc 11572
	fadd	%f0, %f1, %f0  #1254 pc 11576
	lw	%x6, 48(%x2)  #1254 pc 11580
	flw	%f1, 16(%x6)  #1254 pc 11584
	fmul	%f0, %f0, %f1  #1254 pc 11588
	lw	%x6, 0(%x2)  #1254 pc 11592
	fsw	%f0, 0(%x6)  #1254 pc 11596
be_cont.9209: #pc 11600
	addi	%x6, %x0, 1  #0 pc 11600
	ret #pc 11604
	nop #pc 11608
be_else.9203: #pc 11612
	addi	%x6, %x0, 0  #0 pc 11612
	ret #pc 11616
	nop #pc 11620
solver_fast.2796:  #pc 11624
	lw	%x9, 16(%x29)  #1263 pc 11624
	lw	%x10, 12(%x29)  #1263 pc 11628
	lw	%x11, 8(%x29)  #1263 pc 11632
	lw	%x12, 4(%x29)  #1263 pc 11636
	slli	%x13, %x6, 2  #1263 pc 11640
	add	%x31, %x13, %x12  #1263 pc 11644
	lw	%x12, 0(%x31)  #1263 pc 11648
	flw	%f0, 0(%x8)  #1264 pc 11652
	sw	%x10, 0(%x2)  #1264 pc 11656
	sw	%x9, 4(%x2)  #1264 pc 11660
	sw	%x11, 8(%x2)  #1264 pc 11664
	sw	%x6, 12(%x2)  #1264 pc 11668
	sw	%x7, 16(%x2)  #1264 pc 11672
	sw	%x12, 20(%x2)  #1264 pc 11676
	sw	%x8, 24(%x2)  #1264 pc 11680
	fsw	%f0, 32(%x2)  #1264 pc 11684
	addi	%x6, %x12, 0  #0 pc 11688
	sw	%x1, 40(%x2)  #1264 pc 11692
	addi	%x2, %x2, 44  #1264 pc 11696
	jal	%x1, o_param_x.2657  #1264 pc 11700
	addi	%x2, %x2, -44  #1264 pc 11704
	lw	%x1, 40(%x2) #1264 pc 11708
	flw	%f1, 32(%x2)  #1264 pc 11712
	fsub	%f0, %f1, %f0  #1264 pc 11716
	lw	%x6, 24(%x2)  #1265 pc 11720
	flw	%f1, 4(%x6)  #1265 pc 11724
	lw	%x7, 20(%x2)  #1265 pc 11728
	fsw	%f0, 40(%x2)  #1265 pc 11732
	fsw	%f1, 48(%x2)  #1265 pc 11736
	addi	%x6, %x7, 0  #0 pc 11740
	sw	%x1, 56(%x2)  #1265 pc 11744
	addi	%x2, %x2, 60  #1265 pc 11748
	jal	%x1, o_param_y.2659  #1265 pc 11752
	addi	%x2, %x2, -60  #1265 pc 11756
	lw	%x1, 56(%x2) #1265 pc 11760
	flw	%f1, 48(%x2)  #1265 pc 11764
	fsub	%f0, %f1, %f0  #1265 pc 11768
	lw	%x6, 24(%x2)  #1266 pc 11772
	flw	%f1, 8(%x6)  #1266 pc 11776
	lw	%x6, 20(%x2)  #1266 pc 11780
	fsw	%f0, 56(%x2)  #1266 pc 11784
	fsw	%f1, 64(%x2)  #1266 pc 11788
	sw	%x1, 72(%x2)  #1266 pc 11792
	addi	%x2, %x2, 76  #1266 pc 11796
	jal	%x1, o_param_z.2661  #1266 pc 11800
	addi	%x2, %x2, -76  #1266 pc 11804
	lw	%x1, 72(%x2) #1266 pc 11808
	flw	%f1, 64(%x2)  #1266 pc 11812
	fsub	%f0, %f1, %f0  #1266 pc 11816
	lw	%x6, 16(%x2)  #1267 pc 11820
	fsw	%f0, 72(%x2)  #1267 pc 11824
	sw	%x1, 80(%x2)  #1267 pc 11828
	addi	%x2, %x2, 84  #1267 pc 11832
	jal	%x1, d_const.2702  #1267 pc 11836
	addi	%x2, %x2, -84  #1267 pc 11840
	lw	%x1, 80(%x2) #1267 pc 11844
	lw	%x7, 12(%x2)  #1268 pc 11848
	slli	%x7, %x7, 2  #1268 pc 11852
	add	%x31, %x7, %x6  #1268 pc 11856
	lw	%x6, 0(%x31)  #1268 pc 11860
	lw	%x7, 20(%x2)  #1269 pc 11864
	sw	%x6, 80(%x2)  #1269 pc 11868
	addi	%x6, %x7, 0  #0 pc 11872
	sw	%x1, 84(%x2)  #1269 pc 11876
	addi	%x2, %x2, 88  #1269 pc 11880
	jal	%x1, o_form.2641  #1269 pc 11884
	addi	%x2, %x2, -88  #1269 pc 11888
	lw	%x1, 84(%x2) #1269 pc 11892
	addi	%x31, %x0, 1  #pc 11896
	beq	%x6, %x31, 12  #1270 pc 11900
	j	be_else.9211 #pc 11904
	nop #pc 11908
	lw	%x6, 16(%x2)  #1271 pc 11912
	sw	%x1, 84(%x2)  #1271 pc 11916
	addi	%x2, %x2, 88  #1271 pc 11920
	jal	%x1, d_vec.2700  #1271 pc 11924
	addi	%x2, %x2, -88  #1271 pc 11928
	lw	%x1, 84(%x2) #1271 pc 11932
	addi	%x7, %x6, 0  #1271 pc 11936
	flw	%f0, 40(%x2)  #1271 pc 11940
	flw	%f1, 56(%x2)  #1271 pc 11944
	flw	%f2, 72(%x2)  #1271 pc 11948
	lw	%x6, 20(%x2)  #1271 pc 11952
	lw	%x8, 80(%x2)  #1271 pc 11956
	lw	%x29, 8(%x2)  #1271 pc 11960
	lw	%x30, 0(%x29)  #1271 pc 11964
	jalr	%x0, %x30, 0  #1271 pc 11968
	nop #pc 11972
be_else.9211: #pc 11976
	addi	%x31, %x0, 2  #pc 11976
	beq	%x6, %x31, 12  #1272 pc 11980
	j	be_else.9212 #pc 11984
	nop #pc 11988
	flw	%f0, 40(%x2)  #1273 pc 11992
	flw	%f1, 56(%x2)  #1273 pc 11996
	flw	%f2, 72(%x2)  #1273 pc 12000
	lw	%x6, 20(%x2)  #1273 pc 12004
	lw	%x7, 80(%x2)  #1273 pc 12008
	lw	%x29, 4(%x2)  #1273 pc 12012
	lw	%x30, 0(%x29)  #1273 pc 12016
	jalr	%x0, %x30, 0  #1273 pc 12020
	nop #pc 12024
be_else.9212: #pc 12028
	flw	%f0, 40(%x2)  #1275 pc 12028
	flw	%f1, 56(%x2)  #1275 pc 12032
	flw	%f2, 72(%x2)  #1275 pc 12036
	lw	%x6, 20(%x2)  #1275 pc 12040
	lw	%x7, 80(%x2)  #1275 pc 12044
	lw	%x29, 0(%x2)  #1275 pc 12048
	lw	%x30, 0(%x29)  #1275 pc 12052
	jalr	%x0, %x30, 0  #1275 pc 12056
	nop #pc 12060
solver_surface_fast2.2800:  #pc 12064
	lw	%x6, 4(%x29)  #0 pc 12064
	flw	%f0, 0(%x7)  #1283 pc 12068
	sw	%x6, 0(%x2)  #1283 pc 12072
	sw	%x8, 4(%x2)  #1283 pc 12076
	sw	%x7, 8(%x2)  #1283 pc 12080
	sw	%x1, 12(%x2)  #1283 pc 12084
	addi	%x2, %x2, 16  #1283 pc 12088
	jal	%x1, fisneg.2497  #1283 pc 12092
	addi	%x2, %x2, -16  #1283 pc 12096
	lw	%x1, 12(%x2) #1283 pc 12100
	beq	%x6, %x0, 12  #1283 pc 12104
	j	be_else.9213 #pc 12108
	nop #pc 12112
	addi	%x6, %x0, 0  #0 pc 12116
	ret #pc 12120
	nop #pc 12124
be_else.9213: #pc 12128
	lw	%x6, 8(%x2)  #1284 pc 12128
	flw	%f0, 0(%x6)  #1284 pc 12132
	lw	%x6, 4(%x2)  #1284 pc 12136
	flw	%f1, 12(%x6)  #1284 pc 12140
	fmul	%f0, %f0, %f1  #1284 pc 12144
	lw	%x6, 0(%x2)  #1284 pc 12148
	fsw	%f0, 0(%x6)  #1284 pc 12152
	addi	%x6, %x0, 1  #0 pc 12156
	ret #pc 12160
	nop #pc 12164
solver_second_fast2.2807:  #pc 12168
	lw	%x9, 4(%x29)  #0 pc 12168
	flw	%f3, 0(%x7)  #1292 pc 12172
	sw	%x9, 0(%x2)  #1293 pc 12176
	sw	%x6, 4(%x2)  #1293 pc 12180
	fsw	%f3, 8(%x2)  #1293 pc 12184
	sw	%x8, 16(%x2)  #1293 pc 12188
	fsw	%f2, 24(%x2)  #1293 pc 12192
	fsw	%f1, 32(%x2)  #1293 pc 12196
	fsw	%f0, 40(%x2)  #1293 pc 12200
	sw	%x7, 48(%x2)  #1293 pc 12204
	fadd	%f0, %f3, %f30  #0 pc 12208
	sw	%x1, 52(%x2)  #1293 pc 12212
	addi	%x2, %x2, 56  #1293 pc 12216
	jal	%x1, fiszero.2493  #1293 pc 12220
	addi	%x2, %x2, -56  #1293 pc 12224
	lw	%x1, 52(%x2) #1293 pc 12228
	beq	%x6, %x0, 12  #1293 pc 12232
	j	be_else.9215 #pc 12236
	nop #pc 12240
	lw	%x6, 48(%x2)  #1296 pc 12244
	flw	%f0, 4(%x6)  #1296 pc 12248
	flw	%f1, 40(%x2)  #1296 pc 12252
	fmul	%f0, %f0, %f1  #1296 pc 12256
	flw	%f1, 8(%x6)  #1296 pc 12260
	flw	%f2, 32(%x2)  #1296 pc 12264
	fmul	%f1, %f1, %f2  #1296 pc 12268
	fadd	%f0, %f0, %f1  #1296 pc 12272
	flw	%f1, 12(%x6)  #1296 pc 12276
	flw	%f2, 24(%x2)  #1296 pc 12280
	fmul	%f1, %f1, %f2  #1296 pc 12284
	fadd	%f0, %f0, %f1  #1296 pc 12288
	lw	%x7, 16(%x2)  #1297 pc 12292
	flw	%f1, 12(%x7)  #1297 pc 12296
	fsw	%f0, 56(%x2)  #1298 pc 12300
	fsw	%f1, 64(%x2)  #1298 pc 12304
	sw	%x1, 72(%x2)  #1298 pc 12308
	addi	%x2, %x2, 76  #1298 pc 12312
	jal	%x1, fsqr.2501  #1298 pc 12316
	addi	%x2, %x2, -76  #1298 pc 12320
	lw	%x1, 72(%x2) #1298 pc 12324
	flw	%f1, 64(%x2)  #1298 pc 12328
	flw	%f2, 8(%x2)  #1298 pc 12332
	fmul	%f1, %f2, %f1  #1298 pc 12336
	fsub	%f0, %f0, %f1  #1298 pc 12340
	fsw	%f0, 72(%x2)  #1299 pc 12344
	sw	%x1, 80(%x2)  #1299 pc 12348
	addi	%x2, %x2, 84  #1299 pc 12352
	jal	%x1, fispos.2495  #1299 pc 12356
	addi	%x2, %x2, -84  #1299 pc 12360
	lw	%x1, 80(%x2) #1299 pc 12364
	beq	%x6, %x0, 12  #1299 pc 12368
	j	be_else.9217 #pc 12372
	nop #pc 12376
	addi	%x6, %x0, 0  #0 pc 12380
	ret #pc 12384
	nop #pc 12388
be_else.9217: #pc 12392
	lw	%x6, 4(%x2)  #1300 pc 12392
	sw	%x1, 80(%x2)  #1300 pc 12396
	addi	%x2, %x2, 84  #1300 pc 12400
	jal	%x1, o_isinvert.2645  #1300 pc 12404
	addi	%x2, %x2, -84  #1300 pc 12408
	lw	%x1, 80(%x2) #1300 pc 12412
	beq	%x6, %x0, 12  #1300 pc 12416
	j	be_else.9218 #pc 12420
	nop #pc 12424
	flw	%f0, 72(%x2)  #1303 pc 12428
	fsqrt	%f0, %f0  #1303 pc 12432
	flw	%f1, 56(%x2)  #1303 pc 12436
	fsub	%f0, %f1, %f0  #1303 pc 12440
	lw	%x6, 48(%x2)  #1303 pc 12444
	flw	%f1, 16(%x6)  #1303 pc 12448
	fmul	%f0, %f0, %f1  #1303 pc 12452
	lw	%x6, 0(%x2)  #1303 pc 12456
	fsw	%f0, 0(%x6)  #1303 pc 12460
	j	be_cont.9219 #pc 12464
	nop #pc 12468
be_else.9218: #pc 12472
	flw	%f0, 72(%x2)  #1301 pc 12472
	fsqrt	%f0, %f0  #1301 pc 12476
	flw	%f1, 56(%x2)  #1301 pc 12480
	fadd	%f0, %f1, %f0  #1301 pc 12484
	lw	%x6, 48(%x2)  #1301 pc 12488
	flw	%f1, 16(%x6)  #1301 pc 12492
	fmul	%f0, %f0, %f1  #1301 pc 12496
	lw	%x6, 0(%x2)  #1301 pc 12500
	fsw	%f0, 0(%x6)  #1301 pc 12504
be_cont.9219: #pc 12508
	addi	%x6, %x0, 1  #0 pc 12508
	ret #pc 12512
	nop #pc 12516
be_else.9215: #pc 12520
	addi	%x6, %x0, 0  #0 pc 12520
	ret #pc 12524
	nop #pc 12528
solver_fast2.2814:  #pc 12532
	lw	%x8, 16(%x29)  #1310 pc 12532
	lw	%x9, 12(%x29)  #1310 pc 12536
	lw	%x10, 8(%x29)  #1310 pc 12540
	lw	%x11, 4(%x29)  #1310 pc 12544
	slli	%x12, %x6, 2  #1310 pc 12548
	add	%x31, %x12, %x11  #1310 pc 12552
	lw	%x11, 0(%x31)  #1310 pc 12556
	sw	%x9, 0(%x2)  #1311 pc 12560
	sw	%x8, 4(%x2)  #1311 pc 12564
	sw	%x10, 8(%x2)  #1311 pc 12568
	sw	%x11, 12(%x2)  #1311 pc 12572
	sw	%x6, 16(%x2)  #1311 pc 12576
	sw	%x7, 20(%x2)  #1311 pc 12580
	addi	%x6, %x11, 0  #0 pc 12584
	sw	%x1, 24(%x2)  #1311 pc 12588
	addi	%x2, %x2, 28  #1311 pc 12592
	jal	%x1, o_param_ctbl.2679  #1311 pc 12596
	addi	%x2, %x2, -28  #1311 pc 12600
	lw	%x1, 24(%x2) #1311 pc 12604
	flw	%f0, 0(%x6)  #1312 pc 12608
	flw	%f1, 4(%x6)  #1313 pc 12612
	flw	%f2, 8(%x6)  #1314 pc 12616
	lw	%x7, 20(%x2)  #1315 pc 12620
	sw	%x6, 24(%x2)  #1315 pc 12624
	fsw	%f2, 32(%x2)  #1315 pc 12628
	fsw	%f1, 40(%x2)  #1315 pc 12632
	fsw	%f0, 48(%x2)  #1315 pc 12636
	addi	%x6, %x7, 0  #0 pc 12640
	sw	%x1, 56(%x2)  #1315 pc 12644
	addi	%x2, %x2, 60  #1315 pc 12648
	jal	%x1, d_const.2702  #1315 pc 12652
	addi	%x2, %x2, -60  #1315 pc 12656
	lw	%x1, 56(%x2) #1315 pc 12660
	lw	%x7, 16(%x2)  #1316 pc 12664
	slli	%x7, %x7, 2  #1316 pc 12668
	add	%x31, %x7, %x6  #1316 pc 12672
	lw	%x6, 0(%x31)  #1316 pc 12676
	lw	%x7, 12(%x2)  #1317 pc 12680
	sw	%x6, 56(%x2)  #1317 pc 12684
	addi	%x6, %x7, 0  #0 pc 12688
	sw	%x1, 60(%x2)  #1317 pc 12692
	addi	%x2, %x2, 64  #1317 pc 12696
	jal	%x1, o_form.2641  #1317 pc 12700
	addi	%x2, %x2, -64  #1317 pc 12704
	lw	%x1, 60(%x2) #1317 pc 12708
	addi	%x31, %x0, 1  #pc 12712
	beq	%x6, %x31, 12  #1318 pc 12716
	j	be_else.9221 #pc 12720
	nop #pc 12724
	lw	%x6, 20(%x2)  #1319 pc 12728
	sw	%x1, 60(%x2)  #1319 pc 12732
	addi	%x2, %x2, 64  #1319 pc 12736
	jal	%x1, d_vec.2700  #1319 pc 12740
	addi	%x2, %x2, -64  #1319 pc 12744
	lw	%x1, 60(%x2) #1319 pc 12748
	addi	%x7, %x6, 0  #1319 pc 12752
	flw	%f0, 48(%x2)  #1319 pc 12756
	flw	%f1, 40(%x2)  #1319 pc 12760
	flw	%f2, 32(%x2)  #1319 pc 12764
	lw	%x6, 12(%x2)  #1319 pc 12768
	lw	%x8, 56(%x2)  #1319 pc 12772
	lw	%x29, 8(%x2)  #1319 pc 12776
	lw	%x30, 0(%x29)  #1319 pc 12780
	jalr	%x0, %x30, 0  #1319 pc 12784
	nop #pc 12788
be_else.9221: #pc 12792
	addi	%x31, %x0, 2  #pc 12792
	beq	%x6, %x31, 12  #1320 pc 12796
	j	be_else.9222 #pc 12800
	nop #pc 12804
	flw	%f0, 48(%x2)  #1321 pc 12808
	flw	%f1, 40(%x2)  #1321 pc 12812
	flw	%f2, 32(%x2)  #1321 pc 12816
	lw	%x6, 12(%x2)  #1321 pc 12820
	lw	%x7, 56(%x2)  #1321 pc 12824
	lw	%x8, 24(%x2)  #1321 pc 12828
	lw	%x29, 4(%x2)  #1321 pc 12832
	lw	%x30, 0(%x29)  #1321 pc 12836
	jalr	%x0, %x30, 0  #1321 pc 12840
	nop #pc 12844
be_else.9222: #pc 12848
	flw	%f0, 48(%x2)  #1323 pc 12848
	flw	%f1, 40(%x2)  #1323 pc 12852
	flw	%f2, 32(%x2)  #1323 pc 12856
	lw	%x6, 12(%x2)  #1323 pc 12860
	lw	%x7, 56(%x2)  #1323 pc 12864
	lw	%x8, 24(%x2)  #1323 pc 12868
	lw	%x29, 0(%x2)  #1323 pc 12872
	lw	%x30, 0(%x29)  #1323 pc 12876
	jalr	%x0, %x30, 0  #1323 pc 12880
	nop #pc 12884
setup_rect_table.2817:  #pc 12888
	addi	%x8, %x0, 6  #0 pc 12888
	fmv	%f0, l.6207  #0 pc 12892
	sw	%x7, 0(%x2)  #1332 pc 12896
	sw	%x6, 4(%x2)  #1332 pc 12900
	addi	%x6, %x8, 0  #0 pc 12904
	sw	%x1, 8(%x2)  #1332 pc 12908
	addi	%x2, %x2, 12  #1332 pc 12912
	jal	%x1, create_float_array.2557  #1332 pc 12916
	addi	%x2, %x2, -12  #1332 pc 12920
	lw	%x1, 8(%x2) #1332 pc 12924
	lw	%x7, 4(%x2)  #1334 pc 12928
	flw	%f0, 0(%x7)  #1334 pc 12932
	sw	%x6, 8(%x2)  #1334 pc 12936
	sw	%x1, 12(%x2)  #1334 pc 12940
	addi	%x2, %x2, 16  #1334 pc 12944
	jal	%x1, fiszero.2493  #1334 pc 12948
	addi	%x2, %x2, -16  #1334 pc 12952
	lw	%x1, 12(%x2) #1334 pc 12956
	beq	%x6, %x0, 12  #1334 pc 12960
	j	be_else.9223 #pc 12964
	nop #pc 12968
	lw	%x6, 0(%x2)  #1338 pc 12972
	sw	%x1, 12(%x2)  #1338 pc 12976
	addi	%x2, %x2, 16  #1338 pc 12980
	jal	%x1, o_isinvert.2645  #1338 pc 12984
	addi	%x2, %x2, -16  #1338 pc 12988
	lw	%x1, 12(%x2) #1338 pc 12992
	lw	%x7, 4(%x2)  #1338 pc 12996
	flw	%f0, 0(%x7)  #1338 pc 13000
	sw	%x6, 12(%x2)  #1338 pc 13004
	sw	%x1, 16(%x2)  #1338 pc 13008
	addi	%x2, %x2, 20  #1338 pc 13012
	jal	%x1, fisneg.2497  #1338 pc 13016
	addi	%x2, %x2, -20  #1338 pc 13020
	lw	%x1, 16(%x2) #1338 pc 13024
	addi	%x7, %x6, 0  #1338 pc 13028
	lw	%x6, 12(%x2)  #1338 pc 13032
	sw	%x1, 16(%x2)  #1338 pc 13036
	addi	%x2, %x2, 20  #1338 pc 13040
	jal	%x1, xor.2590  #1338 pc 13044
	addi	%x2, %x2, -20  #1338 pc 13048
	lw	%x1, 16(%x2) #1338 pc 13052
	lw	%x7, 0(%x2)  #1338 pc 13056
	sw	%x6, 16(%x2)  #1338 pc 13060
	addi	%x6, %x7, 0  #0 pc 13064
	sw	%x1, 20(%x2)  #1338 pc 13068
	addi	%x2, %x2, 24  #1338 pc 13072
	jal	%x1, o_param_a.2649  #1338 pc 13076
	addi	%x2, %x2, -24  #1338 pc 13080
	lw	%x1, 20(%x2) #1338 pc 13084
	lw	%x6, 16(%x2)  #1338 pc 13088
	sw	%x1, 20(%x2)  #1338 pc 13092
	addi	%x2, %x2, 24  #1338 pc 13096
	jal	%x1, fneg_cond.2595  #1338 pc 13100
	addi	%x2, %x2, -24  #1338 pc 13104
	lw	%x1, 20(%x2) #1338 pc 13108
	lw	%x6, 8(%x2)  #1338 pc 13112
	fsw	%f0, 0(%x6)  #1338 pc 13116
	fmv	%f0, l.6219  #0 pc 13120
	lw	%x7, 4(%x2)  #1340 pc 13124
	flw	%f1, 0(%x7)  #1340 pc 13128
	fdiv	%f0, %f0, %f1  #1340 pc 13132
	fsw	%f0, 4(%x6)  #1340 pc 13136
	j	be_cont.9224 #pc 13140
	nop #pc 13144
be_else.9223: #pc 13148
	fmv	%f0, l.6207  #0 pc 13148
	lw	%x6, 8(%x2)  #1335 pc 13152
	fsw	%f0, 4(%x6)  #1335 pc 13156
be_cont.9224: #pc 13160
	lw	%x7, 4(%x2)  #1342 pc 13160
	flw	%f0, 4(%x7)  #1342 pc 13164
	sw	%x1, 20(%x2)  #1342 pc 13168
	addi	%x2, %x2, 24  #1342 pc 13172
	jal	%x1, fiszero.2493  #1342 pc 13176
	addi	%x2, %x2, -24  #1342 pc 13180
	lw	%x1, 20(%x2) #1342 pc 13184
	beq	%x6, %x0, 12  #1342 pc 13188
	j	be_else.9225 #pc 13192
	nop #pc 13196
	lw	%x6, 0(%x2)  #1345 pc 13200
	sw	%x1, 20(%x2)  #1345 pc 13204
	addi	%x2, %x2, 24  #1345 pc 13208
	jal	%x1, o_isinvert.2645  #1345 pc 13212
	addi	%x2, %x2, -24  #1345 pc 13216
	lw	%x1, 20(%x2) #1345 pc 13220
	lw	%x7, 4(%x2)  #1345 pc 13224
	flw	%f0, 4(%x7)  #1345 pc 13228
	sw	%x6, 20(%x2)  #1345 pc 13232
	sw	%x1, 24(%x2)  #1345 pc 13236
	addi	%x2, %x2, 28  #1345 pc 13240
	jal	%x1, fisneg.2497  #1345 pc 13244
	addi	%x2, %x2, -28  #1345 pc 13248
	lw	%x1, 24(%x2) #1345 pc 13252
	addi	%x7, %x6, 0  #1345 pc 13256
	lw	%x6, 20(%x2)  #1345 pc 13260
	sw	%x1, 24(%x2)  #1345 pc 13264
	addi	%x2, %x2, 28  #1345 pc 13268
	jal	%x1, xor.2590  #1345 pc 13272
	addi	%x2, %x2, -28  #1345 pc 13276
	lw	%x1, 24(%x2) #1345 pc 13280
	lw	%x7, 0(%x2)  #1345 pc 13284
	sw	%x6, 24(%x2)  #1345 pc 13288
	addi	%x6, %x7, 0  #0 pc 13292
	sw	%x1, 28(%x2)  #1345 pc 13296
	addi	%x2, %x2, 32  #1345 pc 13300
	jal	%x1, o_param_b.2651  #1345 pc 13304
	addi	%x2, %x2, -32  #1345 pc 13308
	lw	%x1, 28(%x2) #1345 pc 13312
	lw	%x6, 24(%x2)  #1345 pc 13316
	sw	%x1, 28(%x2)  #1345 pc 13320
	addi	%x2, %x2, 32  #1345 pc 13324
	jal	%x1, fneg_cond.2595  #1345 pc 13328
	addi	%x2, %x2, -32  #1345 pc 13332
	lw	%x1, 28(%x2) #1345 pc 13336
	lw	%x6, 8(%x2)  #1345 pc 13340
	fsw	%f0, 8(%x6)  #1345 pc 13344
	fmv	%f0, l.6219  #0 pc 13348
	lw	%x7, 4(%x2)  #1346 pc 13352
	flw	%f1, 4(%x7)  #1346 pc 13356
	fdiv	%f0, %f0, %f1  #1346 pc 13360
	fsw	%f0, 12(%x6)  #1346 pc 13364
	j	be_cont.9226 #pc 13368
	nop #pc 13372
be_else.9225: #pc 13376
	fmv	%f0, l.6207  #0 pc 13376
	lw	%x6, 8(%x2)  #1343 pc 13380
	fsw	%f0, 12(%x6)  #1343 pc 13384
be_cont.9226: #pc 13388
	lw	%x7, 4(%x2)  #1348 pc 13388
	flw	%f0, 8(%x7)  #1348 pc 13392
	sw	%x1, 28(%x2)  #1348 pc 13396
	addi	%x2, %x2, 32  #1348 pc 13400
	jal	%x1, fiszero.2493  #1348 pc 13404
	addi	%x2, %x2, -32  #1348 pc 13408
	lw	%x1, 28(%x2) #1348 pc 13412
	beq	%x6, %x0, 12  #1348 pc 13416
	j	be_else.9227 #pc 13420
	nop #pc 13424
	lw	%x6, 0(%x2)  #1351 pc 13428
	sw	%x1, 28(%x2)  #1351 pc 13432
	addi	%x2, %x2, 32  #1351 pc 13436
	jal	%x1, o_isinvert.2645  #1351 pc 13440
	addi	%x2, %x2, -32  #1351 pc 13444
	lw	%x1, 28(%x2) #1351 pc 13448
	lw	%x7, 4(%x2)  #1351 pc 13452
	flw	%f0, 8(%x7)  #1351 pc 13456
	sw	%x6, 28(%x2)  #1351 pc 13460
	sw	%x1, 32(%x2)  #1351 pc 13464
	addi	%x2, %x2, 36  #1351 pc 13468
	jal	%x1, fisneg.2497  #1351 pc 13472
	addi	%x2, %x2, -36  #1351 pc 13476
	lw	%x1, 32(%x2) #1351 pc 13480
	addi	%x7, %x6, 0  #1351 pc 13484
	lw	%x6, 28(%x2)  #1351 pc 13488
	sw	%x1, 32(%x2)  #1351 pc 13492
	addi	%x2, %x2, 36  #1351 pc 13496
	jal	%x1, xor.2590  #1351 pc 13500
	addi	%x2, %x2, -36  #1351 pc 13504
	lw	%x1, 32(%x2) #1351 pc 13508
	lw	%x7, 0(%x2)  #1351 pc 13512
	sw	%x6, 32(%x2)  #1351 pc 13516
	addi	%x6, %x7, 0  #0 pc 13520
	sw	%x1, 36(%x2)  #1351 pc 13524
	addi	%x2, %x2, 40  #1351 pc 13528
	jal	%x1, o_param_c.2653  #1351 pc 13532
	addi	%x2, %x2, -40  #1351 pc 13536
	lw	%x1, 36(%x2) #1351 pc 13540
	lw	%x6, 32(%x2)  #1351 pc 13544
	sw	%x1, 36(%x2)  #1351 pc 13548
	addi	%x2, %x2, 40  #1351 pc 13552
	jal	%x1, fneg_cond.2595  #1351 pc 13556
	addi	%x2, %x2, -40  #1351 pc 13560
	lw	%x1, 36(%x2) #1351 pc 13564
	lw	%x6, 8(%x2)  #1351 pc 13568
	fsw	%f0, 16(%x6)  #1351 pc 13572
	fmv	%f0, l.6219  #0 pc 13576
	lw	%x7, 4(%x2)  #1352 pc 13580
	flw	%f1, 8(%x7)  #1352 pc 13584
	fdiv	%f0, %f0, %f1  #1352 pc 13588
	fsw	%f0, 20(%x6)  #1352 pc 13592
	j	be_cont.9228 #pc 13596
	nop #pc 13600
be_else.9227: #pc 13604
	fmv	%f0, l.6207  #0 pc 13604
	lw	%x6, 8(%x2)  #1349 pc 13608
	fsw	%f0, 20(%x6)  #1349 pc 13612
be_cont.9228: #pc 13616
	ret #pc 13616
	nop #pc 13620
setup_surface_table.2820:  #pc 13624
	addi	%x8, %x0, 4  #0 pc 13624
	fmv	%f0, l.6207  #0 pc 13628
	sw	%x7, 0(%x2)  #1359 pc 13632
	sw	%x6, 4(%x2)  #1359 pc 13636
	addi	%x6, %x8, 0  #0 pc 13640
	sw	%x1, 8(%x2)  #1359 pc 13644
	addi	%x2, %x2, 12  #1359 pc 13648
	jal	%x1, create_float_array.2557  #1359 pc 13652
	addi	%x2, %x2, -12  #1359 pc 13656
	lw	%x1, 8(%x2) #1359 pc 13660
	lw	%x7, 4(%x2)  #1361 pc 13664
	flw	%f0, 0(%x7)  #1361 pc 13668
	lw	%x8, 0(%x2)  #1361 pc 13672
	sw	%x6, 8(%x2)  #1361 pc 13676
	fsw	%f0, 16(%x2)  #1361 pc 13680
	addi	%x6, %x8, 0  #0 pc 13684
	sw	%x1, 24(%x2)  #1361 pc 13688
	addi	%x2, %x2, 28  #1361 pc 13692
	jal	%x1, o_param_a.2649  #1361 pc 13696
	addi	%x2, %x2, -28  #1361 pc 13700
	lw	%x1, 24(%x2) #1361 pc 13704
	flw	%f1, 16(%x2)  #1361 pc 13708
	fmul	%f0, %f1, %f0  #1361 pc 13712
	lw	%x6, 4(%x2)  #1361 pc 13716
	flw	%f1, 4(%x6)  #1361 pc 13720
	lw	%x7, 0(%x2)  #1361 pc 13724
	fsw	%f0, 24(%x2)  #1361 pc 13728
	fsw	%f1, 32(%x2)  #1361 pc 13732
	addi	%x6, %x7, 0  #0 pc 13736
	sw	%x1, 40(%x2)  #1361 pc 13740
	addi	%x2, %x2, 44  #1361 pc 13744
	jal	%x1, o_param_b.2651  #1361 pc 13748
	addi	%x2, %x2, -44  #1361 pc 13752
	lw	%x1, 40(%x2) #1361 pc 13756
	flw	%f1, 32(%x2)  #1361 pc 13760
	fmul	%f0, %f1, %f0  #1361 pc 13764
	flw	%f1, 24(%x2)  #1361 pc 13768
	fadd	%f0, %f1, %f0  #1361 pc 13772
	lw	%x6, 4(%x2)  #1361 pc 13776
	flw	%f1, 8(%x6)  #1361 pc 13780
	lw	%x6, 0(%x2)  #1361 pc 13784
	fsw	%f0, 40(%x2)  #1361 pc 13788
	fsw	%f1, 48(%x2)  #1361 pc 13792
	sw	%x1, 56(%x2)  #1361 pc 13796
	addi	%x2, %x2, 60  #1361 pc 13800
	jal	%x1, o_param_c.2653  #1361 pc 13804
	addi	%x2, %x2, -60  #1361 pc 13808
	lw	%x1, 56(%x2) #1361 pc 13812
	flw	%f1, 48(%x2)  #1361 pc 13816
	fmul	%f0, %f1, %f0  #1361 pc 13820
	flw	%f1, 40(%x2)  #1361 pc 13824
	fadd	%f0, %f1, %f0  #1361 pc 13828
	fsw	%f0, 56(%x2)  #1363 pc 13832
	sw	%x1, 64(%x2)  #1363 pc 13836
	addi	%x2, %x2, 68  #1363 pc 13840
	jal	%x1, fispos.2495  #1363 pc 13844
	addi	%x2, %x2, -68  #1363 pc 13848
	lw	%x1, 64(%x2) #1363 pc 13852
	beq	%x6, %x0, 12  #1363 pc 13856
	j	be_else.9230 #pc 13860
	nop #pc 13864
	fmv	%f0, l.6207  #0 pc 13868
	lw	%x6, 8(%x2)  #1371 pc 13872
	fsw	%f0, 0(%x6)  #1371 pc 13876
	j	be_cont.9231 #pc 13880
	nop #pc 13884
be_else.9230: #pc 13888
	fmv	%f0, l.6244  #0 pc 13888
	flw	%f1, 56(%x2)  #1365 pc 13892
	fdiv	%f0, %f0, %f1  #1365 pc 13896
	lw	%x6, 8(%x2)  #1365 pc 13900
	fsw	%f0, 0(%x6)  #1365 pc 13904
	lw	%x7, 0(%x2)  #1367 pc 13908
	addi	%x6, %x7, 0  #0 pc 13912
	sw	%x1, 64(%x2)  #1367 pc 13916
	addi	%x2, %x2, 68  #1367 pc 13920
	jal	%x1, o_param_a.2649  #1367 pc 13924
	addi	%x2, %x2, -68  #1367 pc 13928
	lw	%x1, 64(%x2) #1367 pc 13932
	flw	%f1, 56(%x2)  #1367 pc 13936
	fdiv	%f0, %f0, %f1  #1367 pc 13940
	sw	%x1, 64(%x2)  #1367 pc 13944
	addi	%x2, %x2, 68  #1367 pc 13948
	jal	%x1, fneg.2499  #1367 pc 13952
	addi	%x2, %x2, -68  #1367 pc 13956
	lw	%x1, 64(%x2) #1367 pc 13960
	lw	%x6, 8(%x2)  #1367 pc 13964
	fsw	%f0, 4(%x6)  #1367 pc 13968
	lw	%x7, 0(%x2)  #1368 pc 13972
	addi	%x6, %x7, 0  #0 pc 13976
	sw	%x1, 64(%x2)  #1368 pc 13980
	addi	%x2, %x2, 68  #1368 pc 13984
	jal	%x1, o_param_b.2651  #1368 pc 13988
	addi	%x2, %x2, -68  #1368 pc 13992
	lw	%x1, 64(%x2) #1368 pc 13996
	flw	%f1, 56(%x2)  #1368 pc 14000
	fdiv	%f0, %f0, %f1  #1368 pc 14004
	sw	%x1, 64(%x2)  #1368 pc 14008
	addi	%x2, %x2, 68  #1368 pc 14012
	jal	%x1, fneg.2499  #1368 pc 14016
	addi	%x2, %x2, -68  #1368 pc 14020
	lw	%x1, 64(%x2) #1368 pc 14024
	lw	%x6, 8(%x2)  #1368 pc 14028
	fsw	%f0, 8(%x6)  #1368 pc 14032
	lw	%x7, 0(%x2)  #1369 pc 14036
	addi	%x6, %x7, 0  #0 pc 14040
	sw	%x1, 64(%x2)  #1369 pc 14044
	addi	%x2, %x2, 68  #1369 pc 14048
	jal	%x1, o_param_c.2653  #1369 pc 14052
	addi	%x2, %x2, -68  #1369 pc 14056
	lw	%x1, 64(%x2) #1369 pc 14060
	flw	%f1, 56(%x2)  #1369 pc 14064
	fdiv	%f0, %f0, %f1  #1369 pc 14068
	sw	%x1, 64(%x2)  #1369 pc 14072
	addi	%x2, %x2, 68  #1369 pc 14076
	jal	%x1, fneg.2499  #1369 pc 14080
	addi	%x2, %x2, -68  #1369 pc 14084
	lw	%x1, 64(%x2) #1369 pc 14088
	lw	%x6, 8(%x2)  #1369 pc 14092
	fsw	%f0, 12(%x6)  #1369 pc 14096
be_cont.9231: #pc 14100
	ret #pc 14100
	nop #pc 14104
setup_second_table.2823:  #pc 14108
	addi	%x8, %x0, 5  #0 pc 14108
	fmv	%f0, l.6207  #0 pc 14112
	sw	%x7, 0(%x2)  #1378 pc 14116
	sw	%x6, 4(%x2)  #1378 pc 14120
	addi	%x6, %x8, 0  #0 pc 14124
	sw	%x1, 8(%x2)  #1378 pc 14128
	addi	%x2, %x2, 12  #1378 pc 14132
	jal	%x1, create_float_array.2557  #1378 pc 14136
	addi	%x2, %x2, -12  #1378 pc 14140
	lw	%x1, 8(%x2) #1378 pc 14144
	lw	%x7, 4(%x2)  #1380 pc 14148
	flw	%f0, 0(%x7)  #1380 pc 14152
	flw	%f1, 4(%x7)  #1380 pc 14156
	flw	%f2, 8(%x7)  #1380 pc 14160
	lw	%x8, 0(%x2)  #1380 pc 14164
	sw	%x6, 8(%x2)  #1380 pc 14168
	addi	%x6, %x8, 0  #0 pc 14172
	sw	%x1, 12(%x2)  #1380 pc 14176
	addi	%x2, %x2, 16  #1380 pc 14180
	jal	%x1, quadratic.2754  #1380 pc 14184
	addi	%x2, %x2, -16  #1380 pc 14188
	lw	%x1, 12(%x2) #1380 pc 14192
	lw	%x6, 4(%x2)  #1381 pc 14196
	flw	%f1, 0(%x6)  #1381 pc 14200
	lw	%x7, 0(%x2)  #1381 pc 14204
	fsw	%f0, 16(%x2)  #1381 pc 14208
	fsw	%f1, 24(%x2)  #1381 pc 14212
	addi	%x6, %x7, 0  #0 pc 14216
	sw	%x1, 32(%x2)  #1381 pc 14220
	addi	%x2, %x2, 36  #1381 pc 14224
	jal	%x1, o_param_a.2649  #1381 pc 14228
	addi	%x2, %x2, -36  #1381 pc 14232
	lw	%x1, 32(%x2) #1381 pc 14236
	flw	%f1, 24(%x2)  #1381 pc 14240
	fmul	%f0, %f1, %f0  #1381 pc 14244
	sw	%x1, 32(%x2)  #1381 pc 14248
	addi	%x2, %x2, 36  #1381 pc 14252
	jal	%x1, fneg.2499  #1381 pc 14256
	addi	%x2, %x2, -36  #1381 pc 14260
	lw	%x1, 32(%x2) #1381 pc 14264
	lw	%x6, 4(%x2)  #1382 pc 14268
	flw	%f1, 4(%x6)  #1382 pc 14272
	lw	%x7, 0(%x2)  #1382 pc 14276
	fsw	%f0, 32(%x2)  #1382 pc 14280
	fsw	%f1, 40(%x2)  #1382 pc 14284
	addi	%x6, %x7, 0  #0 pc 14288
	sw	%x1, 48(%x2)  #1382 pc 14292
	addi	%x2, %x2, 52  #1382 pc 14296
	jal	%x1, o_param_b.2651  #1382 pc 14300
	addi	%x2, %x2, -52  #1382 pc 14304
	lw	%x1, 48(%x2) #1382 pc 14308
	flw	%f1, 40(%x2)  #1382 pc 14312
	fmul	%f0, %f1, %f0  #1382 pc 14316
	sw	%x1, 48(%x2)  #1382 pc 14320
	addi	%x2, %x2, 52  #1382 pc 14324
	jal	%x1, fneg.2499  #1382 pc 14328
	addi	%x2, %x2, -52  #1382 pc 14332
	lw	%x1, 48(%x2) #1382 pc 14336
	lw	%x6, 4(%x2)  #1383 pc 14340
	flw	%f1, 8(%x6)  #1383 pc 14344
	lw	%x7, 0(%x2)  #1383 pc 14348
	fsw	%f0, 48(%x2)  #1383 pc 14352
	fsw	%f1, 56(%x2)  #1383 pc 14356
	addi	%x6, %x7, 0  #0 pc 14360
	sw	%x1, 64(%x2)  #1383 pc 14364
	addi	%x2, %x2, 68  #1383 pc 14368
	jal	%x1, o_param_c.2653  #1383 pc 14372
	addi	%x2, %x2, -68  #1383 pc 14376
	lw	%x1, 64(%x2) #1383 pc 14380
	flw	%f1, 56(%x2)  #1383 pc 14384
	fmul	%f0, %f1, %f0  #1383 pc 14388
	sw	%x1, 64(%x2)  #1383 pc 14392
	addi	%x2, %x2, 68  #1383 pc 14396
	jal	%x1, fneg.2499  #1383 pc 14400
	addi	%x2, %x2, -68  #1383 pc 14404
	lw	%x1, 64(%x2) #1383 pc 14408
	lw	%x6, 8(%x2)  #1385 pc 14412
	flw	%f1, 16(%x2)  #1385 pc 14416
	fsw	%f1, 0(%x6)  #1385 pc 14420
	lw	%x7, 0(%x2)  #1389 pc 14424
	fsw	%f0, 64(%x2)  #1389 pc 14428
	addi	%x6, %x7, 0  #0 pc 14432
	sw	%x1, 72(%x2)  #1389 pc 14436
	addi	%x2, %x2, 76  #1389 pc 14440
	jal	%x1, o_isrot.2647  #1389 pc 14444
	addi	%x2, %x2, -76  #1389 pc 14448
	lw	%x1, 72(%x2) #1389 pc 14452
	beq	%x6, %x0, 12  #1389 pc 14456
	j	be_else.9233 #pc 14460
	nop #pc 14464
	lw	%x6, 8(%x2)  #1394 pc 14468
	flw	%f0, 32(%x2)  #1394 pc 14472
	fsw	%f0, 4(%x6)  #1394 pc 14476
	flw	%f0, 48(%x2)  #1395 pc 14480
	fsw	%f0, 8(%x6)  #1395 pc 14484
	flw	%f0, 64(%x2)  #1396 pc 14488
	fsw	%f0, 12(%x6)  #1396 pc 14492
	j	be_cont.9234 #pc 14496
	nop #pc 14500
be_else.9233: #pc 14504
	lw	%x6, 4(%x2)  #1390 pc 14504
	flw	%f0, 8(%x6)  #1390 pc 14508
	lw	%x7, 0(%x2)  #1390 pc 14512
	fsw	%f0, 72(%x2)  #1390 pc 14516
	addi	%x6, %x7, 0  #0 pc 14520
	sw	%x1, 80(%x2)  #1390 pc 14524
	addi	%x2, %x2, 84  #1390 pc 14528
	jal	%x1, o_param_r2.2675  #1390 pc 14532
	addi	%x2, %x2, -84  #1390 pc 14536
	lw	%x1, 80(%x2) #1390 pc 14540
	flw	%f1, 72(%x2)  #1390 pc 14544
	fmul	%f0, %f1, %f0  #1390 pc 14548
	lw	%x6, 4(%x2)  #1390 pc 14552
	flw	%f1, 4(%x6)  #1390 pc 14556
	lw	%x7, 0(%x2)  #1390 pc 14560
	fsw	%f0, 80(%x2)  #1390 pc 14564
	fsw	%f1, 88(%x2)  #1390 pc 14568
	addi	%x6, %x7, 0  #0 pc 14572
	sw	%x1, 96(%x2)  #1390 pc 14576
	addi	%x2, %x2, 100  #1390 pc 14580
	jal	%x1, o_param_r3.2677  #1390 pc 14584
	addi	%x2, %x2, -100  #1390 pc 14588
	lw	%x1, 96(%x2) #1390 pc 14592
	flw	%f1, 88(%x2)  #1390 pc 14596
	fmul	%f0, %f1, %f0  #1390 pc 14600
	flw	%f1, 80(%x2)  #1390 pc 14604
	fadd	%f0, %f1, %f0  #1390 pc 14608
	sw	%x1, 96(%x2)  #1390 pc 14612
	addi	%x2, %x2, 100  #1390 pc 14616
	jal	%x1, fhalf.2503  #1390 pc 14620
	addi	%x2, %x2, -100  #1390 pc 14624
	lw	%x1, 96(%x2) #1390 pc 14628
	flw	%f1, 32(%x2)  #1390 pc 14632
	fsub	%f0, %f1, %f0  #1390 pc 14636
	lw	%x6, 8(%x2)  #1390 pc 14640
	fsw	%f0, 4(%x6)  #1390 pc 14644
	lw	%x7, 4(%x2)  #1391 pc 14648
	flw	%f0, 8(%x7)  #1391 pc 14652
	lw	%x8, 0(%x2)  #1391 pc 14656
	fsw	%f0, 96(%x2)  #1391 pc 14660
	addi	%x6, %x8, 0  #0 pc 14664
	sw	%x1, 104(%x2)  #1391 pc 14668
	addi	%x2, %x2, 108  #1391 pc 14672
	jal	%x1, o_param_r1.2673  #1391 pc 14676
	addi	%x2, %x2, -108  #1391 pc 14680
	lw	%x1, 104(%x2) #1391 pc 14684
	flw	%f1, 96(%x2)  #1391 pc 14688
	fmul	%f0, %f1, %f0  #1391 pc 14692
	lw	%x6, 4(%x2)  #1391 pc 14696
	flw	%f1, 0(%x6)  #1391 pc 14700
	lw	%x7, 0(%x2)  #1391 pc 14704
	fsw	%f0, 104(%x2)  #1391 pc 14708
	fsw	%f1, 112(%x2)  #1391 pc 14712
	addi	%x6, %x7, 0  #0 pc 14716
	sw	%x1, 120(%x2)  #1391 pc 14720
	addi	%x2, %x2, 124  #1391 pc 14724
	jal	%x1, o_param_r3.2677  #1391 pc 14728
	addi	%x2, %x2, -124  #1391 pc 14732
	lw	%x1, 120(%x2) #1391 pc 14736
	flw	%f1, 112(%x2)  #1391 pc 14740
	fmul	%f0, %f1, %f0  #1391 pc 14744
	flw	%f1, 104(%x2)  #1391 pc 14748
	fadd	%f0, %f1, %f0  #1391 pc 14752
	sw	%x1, 120(%x2)  #1391 pc 14756
	addi	%x2, %x2, 124  #1391 pc 14760
	jal	%x1, fhalf.2503  #1391 pc 14764
	addi	%x2, %x2, -124  #1391 pc 14768
	lw	%x1, 120(%x2) #1391 pc 14772
	flw	%f1, 48(%x2)  #1391 pc 14776
	fsub	%f0, %f1, %f0  #1391 pc 14780
	lw	%x6, 8(%x2)  #1391 pc 14784
	fsw	%f0, 8(%x6)  #1391 pc 14788
	lw	%x7, 4(%x2)  #1392 pc 14792
	flw	%f0, 4(%x7)  #1392 pc 14796
	lw	%x8, 0(%x2)  #1392 pc 14800
	fsw	%f0, 120(%x2)  #1392 pc 14804
	addi	%x6, %x8, 0  #0 pc 14808
	sw	%x1, 128(%x2)  #1392 pc 14812
	addi	%x2, %x2, 132  #1392 pc 14816
	jal	%x1, o_param_r1.2673  #1392 pc 14820
	addi	%x2, %x2, -132  #1392 pc 14824
	lw	%x1, 128(%x2) #1392 pc 14828
	flw	%f1, 120(%x2)  #1392 pc 14832
	fmul	%f0, %f1, %f0  #1392 pc 14836
	lw	%x6, 4(%x2)  #1392 pc 14840
	flw	%f1, 0(%x6)  #1392 pc 14844
	lw	%x6, 0(%x2)  #1392 pc 14848
	fsw	%f0, 128(%x2)  #1392 pc 14852
	fsw	%f1, 136(%x2)  #1392 pc 14856
	sw	%x1, 144(%x2)  #1392 pc 14860
	addi	%x2, %x2, 148  #1392 pc 14864
	jal	%x1, o_param_r2.2675  #1392 pc 14868
	addi	%x2, %x2, -148  #1392 pc 14872
	lw	%x1, 144(%x2) #1392 pc 14876
	flw	%f1, 136(%x2)  #1392 pc 14880
	fmul	%f0, %f1, %f0  #1392 pc 14884
	flw	%f1, 128(%x2)  #1392 pc 14888
	fadd	%f0, %f1, %f0  #1392 pc 14892
	sw	%x1, 144(%x2)  #1392 pc 14896
	addi	%x2, %x2, 148  #1392 pc 14900
	jal	%x1, fhalf.2503  #1392 pc 14904
	addi	%x2, %x2, -148  #1392 pc 14908
	lw	%x1, 144(%x2) #1392 pc 14912
	flw	%f1, 64(%x2)  #1392 pc 14916
	fsub	%f0, %f1, %f0  #1392 pc 14920
	lw	%x6, 8(%x2)  #1392 pc 14924
	fsw	%f0, 12(%x6)  #1392 pc 14928
be_cont.9234: #pc 14932
	flw	%f0, 16(%x2)  #1398 pc 14932
	sw	%x1, 144(%x2)  #1398 pc 14936
	addi	%x2, %x2, 148  #1398 pc 14940
	jal	%x1, fiszero.2493  #1398 pc 14944
	addi	%x2, %x2, -148  #1398 pc 14948
	lw	%x1, 144(%x2) #1398 pc 14952
	beq	%x6, %x0, 12  #1398 pc 14956
	j	be_else.9235 #pc 14960
	nop #pc 14964
	fmv	%f0, l.6219  #0 pc 14968
	flw	%f1, 16(%x2)  #1399 pc 14972
	fdiv	%f0, %f0, %f1  #1399 pc 14976
	lw	%x6, 8(%x2)  #1399 pc 14980
	fsw	%f0, 16(%x6)  #1399 pc 14984
	j	be_cont.9236 #pc 14988
	nop #pc 14992
be_else.9235: #pc 14996
be_cont.9236: #pc 14996
	lw	%x6, 8(%x2)  #1401 pc 14996
	ret #pc 15000
	nop #pc 15004
iter_setup_dirvec_constants.2826:  #pc 15008
	lw	%x8, 4(%x29)  #0 pc 15008
	bge	%x7, %x0, 12  #1407 pc 15012
	j	bge_else.9237 #pc 15016
	nop #pc 15020
	slli	%x9, %x7, 2  #1408 pc 15024
	add	%x31, %x9, %x8  #1408 pc 15028
	lw	%x8, 0(%x31)  #1408 pc 15032
	sw	%x29, 0(%x2)  #1409 pc 15036
	sw	%x7, 4(%x2)  #1409 pc 15040
	sw	%x8, 8(%x2)  #1409 pc 15044
	sw	%x6, 12(%x2)  #1409 pc 15048
	sw	%x1, 16(%x2)  #1409 pc 15052
	addi	%x2, %x2, 20  #1409 pc 15056
	jal	%x1, d_const.2702  #1409 pc 15060
	addi	%x2, %x2, -20  #1409 pc 15064
	lw	%x1, 16(%x2) #1409 pc 15068
	lw	%x7, 12(%x2)  #1410 pc 15072
	sw	%x6, 16(%x2)  #1410 pc 15076
	addi	%x6, %x7, 0  #0 pc 15080
	sw	%x1, 20(%x2)  #1410 pc 15084
	addi	%x2, %x2, 24  #1410 pc 15088
	jal	%x1, d_vec.2700  #1410 pc 15092
	addi	%x2, %x2, -24  #1410 pc 15096
	lw	%x1, 20(%x2) #1410 pc 15100
	lw	%x7, 8(%x2)  #1411 pc 15104
	sw	%x6, 20(%x2)  #1411 pc 15108
	addi	%x6, %x7, 0  #0 pc 15112
	sw	%x1, 24(%x2)  #1411 pc 15116
	addi	%x2, %x2, 28  #1411 pc 15120
	jal	%x1, o_form.2641  #1411 pc 15124
	addi	%x2, %x2, -28  #1411 pc 15128
	lw	%x1, 24(%x2) #1411 pc 15132
	addi	%x31, %x0, 1  #pc 15136
	beq	%x6, %x31, 12  #1412 pc 15140
	j	be_else.9238 #pc 15144
	nop #pc 15148
	lw	%x6, 20(%x2)  #1413 pc 15152
	lw	%x7, 8(%x2)  #1413 pc 15156
	sw	%x1, 24(%x2)  #1413 pc 15160
	addi	%x2, %x2, 28  #1413 pc 15164
	jal	%x1, setup_rect_table.2817  #1413 pc 15168
	addi	%x2, %x2, -28  #1413 pc 15172
	lw	%x1, 24(%x2) #1413 pc 15176
	lw	%x7, 4(%x2)  #1413 pc 15180
	slli	%x8, %x7, 2  #1413 pc 15184
	lw	%x9, 16(%x2)  #1413 pc 15188
	add	%x31, %x8, %x9  #1413 pc 15192
	sw	%x6, 0(%x31)  #1413 pc 15196
	j	be_cont.9239 #pc 15200
	nop #pc 15204
be_else.9238: #pc 15208
	addi	%x31, %x0, 2  #pc 15208
	beq	%x6, %x31, 12  #1414 pc 15212
	j	be_else.9240 #pc 15216
	nop #pc 15220
	lw	%x6, 20(%x2)  #1415 pc 15224
	lw	%x7, 8(%x2)  #1415 pc 15228
	sw	%x1, 24(%x2)  #1415 pc 15232
	addi	%x2, %x2, 28  #1415 pc 15236
	jal	%x1, setup_surface_table.2820  #1415 pc 15240
	addi	%x2, %x2, -28  #1415 pc 15244
	lw	%x1, 24(%x2) #1415 pc 15248
	lw	%x7, 4(%x2)  #1415 pc 15252
	slli	%x8, %x7, 2  #1415 pc 15256
	lw	%x9, 16(%x2)  #1415 pc 15260
	add	%x31, %x8, %x9  #1415 pc 15264
	sw	%x6, 0(%x31)  #1415 pc 15268
	j	be_cont.9241 #pc 15272
	nop #pc 15276
be_else.9240: #pc 15280
	lw	%x6, 20(%x2)  #1417 pc 15280
	lw	%x7, 8(%x2)  #1417 pc 15284
	sw	%x1, 24(%x2)  #1417 pc 15288
	addi	%x2, %x2, 28  #1417 pc 15292
	jal	%x1, setup_second_table.2823  #1417 pc 15296
	addi	%x2, %x2, -28  #1417 pc 15300
	lw	%x1, 24(%x2) #1417 pc 15304
	lw	%x7, 4(%x2)  #1417 pc 15308
	slli	%x8, %x7, 2  #1417 pc 15312
	lw	%x9, 16(%x2)  #1417 pc 15316
	add	%x31, %x8, %x9  #1417 pc 15320
	sw	%x6, 0(%x31)  #1417 pc 15324
be_cont.9241: #pc 15328
be_cont.9239: #pc 15328
	addi	%x7, %x7, -1  #1419 pc 15328
	lw	%x6, 12(%x2)  #1419 pc 15332
	lw	%x29, 0(%x2)  #1419 pc 15336
	lw	%x30, 0(%x29)  #1419 pc 15340
	jalr	%x0, %x30, 0  #1419 pc 15344
	nop #pc 15348
bge_else.9237: #pc 15352
	ret #pc 15352
	nop #pc 15356
setup_dirvec_constants.2829:  #pc 15360
	lw	%x7, 8(%x29)  #0 pc 15360
	lw	%x29, 4(%x29)  #0 pc 15364
	lw	%x7, 0(%x7)  #1424 pc 15368
	addi	%x7, %x7, -1  #1424 pc 15372
	lw	%x30, 0(%x29)  #1424 pc 15376
	jalr	%x0, %x30, 0  #1424 pc 15380
	nop #pc 15384
setup_startp_constants.2831:  #pc 15388
	lw	%x8, 4(%x29)  #0 pc 15388
	bge	%x7, %x0, 12  #1432 pc 15392
	j	bge_else.9243 #pc 15396
	nop #pc 15400
	slli	%x9, %x7, 2  #1433 pc 15404
	add	%x31, %x9, %x8  #1433 pc 15408
	lw	%x8, 0(%x31)  #1433 pc 15412
	sw	%x29, 0(%x2)  #1434 pc 15416
	sw	%x7, 4(%x2)  #1434 pc 15420
	sw	%x6, 8(%x2)  #1434 pc 15424
	sw	%x8, 12(%x2)  #1434 pc 15428
	addi	%x6, %x8, 0  #0 pc 15432
	sw	%x1, 16(%x2)  #1434 pc 15436
	addi	%x2, %x2, 20  #1434 pc 15440
	jal	%x1, o_param_ctbl.2679  #1434 pc 15444
	addi	%x2, %x2, -20  #1434 pc 15448
	lw	%x1, 16(%x2) #1434 pc 15452
	lw	%x7, 12(%x2)  #1435 pc 15456
	sw	%x6, 16(%x2)  #1435 pc 15460
	addi	%x6, %x7, 0  #0 pc 15464
	sw	%x1, 20(%x2)  #1435 pc 15468
	addi	%x2, %x2, 24  #1435 pc 15472
	jal	%x1, o_form.2641  #1435 pc 15476
	addi	%x2, %x2, -24  #1435 pc 15480
	lw	%x1, 20(%x2) #1435 pc 15484
	lw	%x7, 8(%x2)  #1436 pc 15488
	flw	%f0, 0(%x7)  #1436 pc 15492
	lw	%x8, 12(%x2)  #1436 pc 15496
	sw	%x6, 20(%x2)  #1436 pc 15500
	fsw	%f0, 24(%x2)  #1436 pc 15504
	addi	%x6, %x8, 0  #0 pc 15508
	sw	%x1, 32(%x2)  #1436 pc 15512
	addi	%x2, %x2, 36  #1436 pc 15516
	jal	%x1, o_param_x.2657  #1436 pc 15520
	addi	%x2, %x2, -36  #1436 pc 15524
	lw	%x1, 32(%x2) #1436 pc 15528
	flw	%f1, 24(%x2)  #1436 pc 15532
	fsub	%f0, %f1, %f0  #1436 pc 15536
	lw	%x6, 16(%x2)  #1436 pc 15540
	fsw	%f0, 0(%x6)  #1436 pc 15544
	lw	%x7, 8(%x2)  #1437 pc 15548
	flw	%f0, 4(%x7)  #1437 pc 15552
	lw	%x8, 12(%x2)  #1437 pc 15556
	fsw	%f0, 32(%x2)  #1437 pc 15560
	addi	%x6, %x8, 0  #0 pc 15564
	sw	%x1, 40(%x2)  #1437 pc 15568
	addi	%x2, %x2, 44  #1437 pc 15572
	jal	%x1, o_param_y.2659  #1437 pc 15576
	addi	%x2, %x2, -44  #1437 pc 15580
	lw	%x1, 40(%x2) #1437 pc 15584
	flw	%f1, 32(%x2)  #1437 pc 15588
	fsub	%f0, %f1, %f0  #1437 pc 15592
	lw	%x6, 16(%x2)  #1437 pc 15596
	fsw	%f0, 4(%x6)  #1437 pc 15600
	lw	%x7, 8(%x2)  #1438 pc 15604
	flw	%f0, 8(%x7)  #1438 pc 15608
	lw	%x8, 12(%x2)  #1438 pc 15612
	fsw	%f0, 40(%x2)  #1438 pc 15616
	addi	%x6, %x8, 0  #0 pc 15620
	sw	%x1, 48(%x2)  #1438 pc 15624
	addi	%x2, %x2, 52  #1438 pc 15628
	jal	%x1, o_param_z.2661  #1438 pc 15632
	addi	%x2, %x2, -52  #1438 pc 15636
	lw	%x1, 48(%x2) #1438 pc 15640
	flw	%f1, 40(%x2)  #1438 pc 15644
	fsub	%f0, %f1, %f0  #1438 pc 15648
	lw	%x6, 16(%x2)  #1438 pc 15652
	fsw	%f0, 8(%x6)  #1438 pc 15656
	lw	%x7, 20(%x2)  #1439 pc 15660
	addi	%x31, %x0, 2  #pc 15664
	beq	%x7, %x31, 12  #1439 pc 15668
	j	be_else.9244 #pc 15672
	nop #pc 15676
	lw	%x7, 12(%x2)  #1441 pc 15680
	addi	%x6, %x7, 0  #0 pc 15684
	sw	%x1, 48(%x2)  #1441 pc 15688
	addi	%x2, %x2, 52  #1441 pc 15692
	jal	%x1, o_param_abc.2655  #1441 pc 15696
	addi	%x2, %x2, -52  #1441 pc 15700
	lw	%x1, 48(%x2) #1441 pc 15704
	lw	%x7, 16(%x2)  #1441 pc 15708
	flw	%f0, 0(%x7)  #1441 pc 15712
	flw	%f1, 4(%x7)  #1441 pc 15716
	flw	%f2, 8(%x7)  #1441 pc 15720
	sw	%x1, 48(%x2)  #1441 pc 15724
	addi	%x2, %x2, 52  #1441 pc 15728
	jal	%x1, veciprod2.2620  #1441 pc 15732
	addi	%x2, %x2, -52  #1441 pc 15736
	lw	%x1, 48(%x2) #1441 pc 15740
	lw	%x6, 16(%x2)  #1440 pc 15744
	fsw	%f0, 12(%x6)  #1440 pc 15748
	j	be_cont.9245 #pc 15752
	nop #pc 15756
be_else.9244: #pc 15760
	addi	%x31, %x0, 2  #pc 15760
	bge	%x31, %x7, 12  #1442 pc 15764
	j	ble_else.9246 #pc 15768
	nop #pc 15772
	j	ble_cont.9247 #pc 15776
	nop #pc 15780
ble_else.9246: #pc 15784
	flw	%f0, 0(%x6)  #1443 pc 15784
	flw	%f1, 4(%x6)  #1443 pc 15788
	flw	%f2, 8(%x6)  #1443 pc 15792
	lw	%x8, 12(%x2)  #1443 pc 15796
	addi	%x6, %x8, 0  #0 pc 15800
	sw	%x1, 48(%x2)  #1443 pc 15804
	addi	%x2, %x2, 52  #1443 pc 15808
	jal	%x1, quadratic.2754  #1443 pc 15812
	addi	%x2, %x2, -52  #1443 pc 15816
	lw	%x1, 48(%x2) #1443 pc 15820
	lw	%x6, 20(%x2)  #1444 pc 15824
	addi	%x31, %x0, 3  #pc 15828
	beq	%x6, %x31, 12  #1444 pc 15832
	j	be_else.9248 #pc 15836
	nop #pc 15840
	fmv	%f1, l.6219  #0 pc 15844
	fsub	%f0, %f0, %f1  #1444 pc 15848
	j	be_cont.9249 #pc 15852
	nop #pc 15856
be_else.9248: #pc 15860
be_cont.9249: #pc 15860
	lw	%x6, 16(%x2)  #1444 pc 15860
	fsw	%f0, 12(%x6)  #1444 pc 15864
ble_cont.9247: #pc 15868
be_cont.9245: #pc 15868
	lw	%x6, 4(%x2)  #1446 pc 15868
	addi	%x7, %x6, -1  #1446 pc 15872
	lw	%x6, 8(%x2)  #1446 pc 15876
	lw	%x29, 0(%x2)  #1446 pc 15880
	lw	%x30, 0(%x29)  #1446 pc 15884
	jalr	%x0, %x30, 0  #1446 pc 15888
	nop #pc 15892
bge_else.9243: #pc 15896
	ret #pc 15896
	nop #pc 15900
setup_startp.2834:  #pc 15904
	lw	%x7, 12(%x29)  #1451 pc 15904
	lw	%x8, 8(%x29)  #1451 pc 15908
	lw	%x9, 4(%x29)  #1451 pc 15912
	sw	%x6, 0(%x2)  #1451 pc 15916
	sw	%x8, 4(%x2)  #1451 pc 15920
	sw	%x9, 8(%x2)  #1451 pc 15924
	addi	%x30, %x7, 0  #0 pc 15928
	addi	%x7, %x6, 0  #0 pc 15932
	addi	%x6, %x30, 0  #0 pc 15936
	sw	%x1, 12(%x2)  #1451 pc 15940
	addi	%x2, %x2, 16  #1451 pc 15944
	jal	%x1, veccpy.2611  #1451 pc 15948
	addi	%x2, %x2, -16  #1451 pc 15952
	lw	%x1, 12(%x2) #1451 pc 15956
	lw	%x6, 8(%x2)  #1452 pc 15960
	lw	%x6, 0(%x6)  #1452 pc 15964
	addi	%x7, %x6, -1  #1452 pc 15968
	lw	%x6, 0(%x2)  #1452 pc 15972
	lw	%x29, 4(%x2)  #1452 pc 15976
	lw	%x30, 0(%x29)  #1452 pc 15980
	jalr	%x0, %x30, 0  #1452 pc 15984
	nop #pc 15988
is_rect_outside.2836:  #pc 15992
	fabs	%f0, %f0  #1464 pc 15992
	fsw	%f2, 0(%x2)  #1464 pc 15996
	sw	%x6, 8(%x2)  #1464 pc 16000
	fsw	%f1, 16(%x2)  #1464 pc 16004
	fsw	%f0, 24(%x2)  #1464 pc 16008
	sw	%x1, 32(%x2)  #1464 pc 16012
	addi	%x2, %x2, 36  #1464 pc 16016
	jal	%x1, o_param_a.2649  #1464 pc 16020
	addi	%x2, %x2, -36  #1464 pc 16024
	lw	%x1, 32(%x2) #1464 pc 16028
	fadd	%f1, %f0, %f30  #1464 pc 16032
	flw	%f0, 24(%x2)  #1464 pc 16036
	sw	%x1, 32(%x2)  #1464 pc 16040
	addi	%x2, %x2, 36  #1464 pc 16044
	jal	%x1, fless.2505  #1464 pc 16048
	addi	%x2, %x2, -36  #1464 pc 16052
	lw	%x1, 32(%x2) #1464 pc 16056
	beq	%x6, %x0, 12  #1464 pc 16060
	j	be_else.9252 #pc 16064
	nop #pc 16068
	addi	%x6, %x0, 0  #0 pc 16072
	j	be_cont.9253 #pc 16076
	nop #pc 16080
be_else.9252: #pc 16084
	flw	%f0, 16(%x2)  #1465 pc 16084
	fabs	%f0, %f0  #1465 pc 16088
	lw	%x6, 8(%x2)  #1465 pc 16092
	fsw	%f0, 32(%x2)  #1465 pc 16096
	sw	%x1, 40(%x2)  #1465 pc 16100
	addi	%x2, %x2, 44  #1465 pc 16104
	jal	%x1, o_param_b.2651  #1465 pc 16108
	addi	%x2, %x2, -44  #1465 pc 16112
	lw	%x1, 40(%x2) #1465 pc 16116
	fadd	%f1, %f0, %f30  #1465 pc 16120
	flw	%f0, 32(%x2)  #1465 pc 16124
	sw	%x1, 40(%x2)  #1465 pc 16128
	addi	%x2, %x2, 44  #1465 pc 16132
	jal	%x1, fless.2505  #1465 pc 16136
	addi	%x2, %x2, -44  #1465 pc 16140
	lw	%x1, 40(%x2) #1465 pc 16144
	beq	%x6, %x0, 12  #1465 pc 16148
	j	be_else.9254 #pc 16152
	nop #pc 16156
	addi	%x6, %x0, 0  #0 pc 16160
	j	be_cont.9255 #pc 16164
	nop #pc 16168
be_else.9254: #pc 16172
	flw	%f0, 0(%x2)  #1466 pc 16172
	fabs	%f0, %f0  #1466 pc 16176
	lw	%x6, 8(%x2)  #1466 pc 16180
	fsw	%f0, 40(%x2)  #1466 pc 16184
	sw	%x1, 48(%x2)  #1466 pc 16188
	addi	%x2, %x2, 52  #1466 pc 16192
	jal	%x1, o_param_c.2653  #1466 pc 16196
	addi	%x2, %x2, -52  #1466 pc 16200
	lw	%x1, 48(%x2) #1466 pc 16204
	fadd	%f1, %f0, %f30  #1466 pc 16208
	flw	%f0, 40(%x2)  #1466 pc 16212
	sw	%x1, 48(%x2)  #1466 pc 16216
	addi	%x2, %x2, 52  #1466 pc 16220
	jal	%x1, fless.2505  #1466 pc 16224
	addi	%x2, %x2, -52  #1466 pc 16228
	lw	%x1, 48(%x2) #1466 pc 16232
be_cont.9255: #pc 16236
be_cont.9253: #pc 16236
	beq	%x6, %x0, 12  #1463 pc 16236
	j	be_else.9256 #pc 16240
	nop #pc 16244
	lw	%x6, 8(%x2)  #1469 pc 16248
	sw	%x1, 48(%x2)  #1469 pc 16252
	addi	%x2, %x2, 52  #1469 pc 16256
	jal	%x1, o_isinvert.2645  #1469 pc 16260
	addi	%x2, %x2, -52  #1469 pc 16264
	lw	%x1, 48(%x2) #1469 pc 16268
	beq	%x6, %x0, 12  #1469 pc 16272
	j	be_else.9257 #pc 16276
	nop #pc 16280
	addi	%x6, %x0, 1  #0 pc 16284
	ret #pc 16288
	nop #pc 16292
be_else.9257: #pc 16296
	addi	%x6, %x0, 0  #0 pc 16296
	ret #pc 16300
	nop #pc 16304
be_else.9256: #pc 16308
	lw	%x6, 8(%x2)  #1469 pc 16308
	j	o_isinvert.2645  #1469 pc 16312
	nop #pc 16316
is_plane_outside.2841:  #pc 16320
	sw	%x6, 0(%x2)  #1474 pc 16320
	fsw	%f2, 8(%x2)  #1474 pc 16324
	fsw	%f1, 16(%x2)  #1474 pc 16328
	fsw	%f0, 24(%x2)  #1474 pc 16332
	sw	%x1, 32(%x2)  #1474 pc 16336
	addi	%x2, %x2, 36  #1474 pc 16340
	jal	%x1, o_param_abc.2655  #1474 pc 16344
	addi	%x2, %x2, -36  #1474 pc 16348
	lw	%x1, 32(%x2) #1474 pc 16352
	flw	%f0, 24(%x2)  #1474 pc 16356
	flw	%f1, 16(%x2)  #1474 pc 16360
	flw	%f2, 8(%x2)  #1474 pc 16364
	sw	%x1, 32(%x2)  #1474 pc 16368
	addi	%x2, %x2, 36  #1474 pc 16372
	jal	%x1, veciprod2.2620  #1474 pc 16376
	addi	%x2, %x2, -36  #1474 pc 16380
	lw	%x1, 32(%x2) #1474 pc 16384
	lw	%x6, 0(%x2)  #1475 pc 16388
	fsw	%f0, 32(%x2)  #1475 pc 16392
	sw	%x1, 40(%x2)  #1475 pc 16396
	addi	%x2, %x2, 44  #1475 pc 16400
	jal	%x1, o_isinvert.2645  #1475 pc 16404
	addi	%x2, %x2, -44  #1475 pc 16408
	lw	%x1, 40(%x2) #1475 pc 16412
	flw	%f0, 32(%x2)  #1475 pc 16416
	sw	%x6, 40(%x2)  #1475 pc 16420
	sw	%x1, 44(%x2)  #1475 pc 16424
	addi	%x2, %x2, 48  #1475 pc 16428
	jal	%x1, fisneg.2497  #1475 pc 16432
	addi	%x2, %x2, -48  #1475 pc 16436
	lw	%x1, 44(%x2) #1475 pc 16440
	addi	%x7, %x6, 0  #1475 pc 16444
	lw	%x6, 40(%x2)  #1475 pc 16448
	sw	%x1, 44(%x2)  #1475 pc 16452
	addi	%x2, %x2, 48  #1475 pc 16456
	jal	%x1, xor.2590  #1475 pc 16460
	addi	%x2, %x2, -48  #1475 pc 16464
	lw	%x1, 44(%x2) #1475 pc 16468
	beq	%x6, %x0, 12  #1475 pc 16472
	j	be_else.9259 #pc 16476
	nop #pc 16480
	addi	%x6, %x0, 1  #0 pc 16484
	ret #pc 16488
	nop #pc 16492
be_else.9259: #pc 16496
	addi	%x6, %x0, 0  #0 pc 16496
	ret #pc 16500
	nop #pc 16504
is_second_outside.2846:  #pc 16508
	sw	%x6, 0(%x2)  #1480 pc 16508
	sw	%x1, 4(%x2)  #1480 pc 16512
	addi	%x2, %x2, 8  #1480 pc 16516
	jal	%x1, quadratic.2754  #1480 pc 16520
	addi	%x2, %x2, -8  #1480 pc 16524
	lw	%x1, 4(%x2) #1480 pc 16528
	lw	%x6, 0(%x2)  #1481 pc 16532
	fsw	%f0, 8(%x2)  #1481 pc 16536
	sw	%x1, 16(%x2)  #1481 pc 16540
	addi	%x2, %x2, 20  #1481 pc 16544
	jal	%x1, o_form.2641  #1481 pc 16548
	addi	%x2, %x2, -20  #1481 pc 16552
	lw	%x1, 16(%x2) #1481 pc 16556
	addi	%x31, %x0, 3  #pc 16560
	beq	%x6, %x31, 12  #1481 pc 16564
	j	be_else.9261 #pc 16568
	nop #pc 16572
	fmv	%f0, l.6219  #0 pc 16576
	flw	%f1, 8(%x2)  #1481 pc 16580
	fsub	%f0, %f1, %f0  #1481 pc 16584
	j	be_cont.9262 #pc 16588
	nop #pc 16592
be_else.9261: #pc 16596
	flw	%f0, 8(%x2)  #1481 pc 16596
be_cont.9262: #pc 16600
	lw	%x6, 0(%x2)  #1482 pc 16600
	fsw	%f0, 16(%x2)  #1482 pc 16604
	sw	%x1, 24(%x2)  #1482 pc 16608
	addi	%x2, %x2, 28  #1482 pc 16612
	jal	%x1, o_isinvert.2645  #1482 pc 16616
	addi	%x2, %x2, -28  #1482 pc 16620
	lw	%x1, 24(%x2) #1482 pc 16624
	flw	%f0, 16(%x2)  #1482 pc 16628
	sw	%x6, 24(%x2)  #1482 pc 16632
	sw	%x1, 28(%x2)  #1482 pc 16636
	addi	%x2, %x2, 32  #1482 pc 16640
	jal	%x1, fisneg.2497  #1482 pc 16644
	addi	%x2, %x2, -32  #1482 pc 16648
	lw	%x1, 28(%x2) #1482 pc 16652
	addi	%x7, %x6, 0  #1482 pc 16656
	lw	%x6, 24(%x2)  #1482 pc 16660
	sw	%x1, 28(%x2)  #1482 pc 16664
	addi	%x2, %x2, 32  #1482 pc 16668
	jal	%x1, xor.2590  #1482 pc 16672
	addi	%x2, %x2, -32  #1482 pc 16676
	lw	%x1, 28(%x2) #1482 pc 16680
	beq	%x6, %x0, 12  #1482 pc 16684
	j	be_else.9263 #pc 16688
	nop #pc 16692
	addi	%x6, %x0, 1  #0 pc 16696
	ret #pc 16700
	nop #pc 16704
be_else.9263: #pc 16708
	addi	%x6, %x0, 0  #0 pc 16708
	ret #pc 16712
	nop #pc 16716
is_outside.2851:  #pc 16720
	fsw	%f2, 0(%x2)  #1487 pc 16720
	fsw	%f1, 8(%x2)  #1487 pc 16724
	sw	%x6, 16(%x2)  #1487 pc 16728
	fsw	%f0, 24(%x2)  #1487 pc 16732
	sw	%x1, 32(%x2)  #1487 pc 16736
	addi	%x2, %x2, 36  #1487 pc 16740
	jal	%x1, o_param_x.2657  #1487 pc 16744
	addi	%x2, %x2, -36  #1487 pc 16748
	lw	%x1, 32(%x2) #1487 pc 16752
	flw	%f1, 24(%x2)  #1487 pc 16756
	fsub	%f0, %f1, %f0  #1487 pc 16760
	lw	%x6, 16(%x2)  #1488 pc 16764
	fsw	%f0, 32(%x2)  #1488 pc 16768
	sw	%x1, 40(%x2)  #1488 pc 16772
	addi	%x2, %x2, 44  #1488 pc 16776
	jal	%x1, o_param_y.2659  #1488 pc 16780
	addi	%x2, %x2, -44  #1488 pc 16784
	lw	%x1, 40(%x2) #1488 pc 16788
	flw	%f1, 8(%x2)  #1488 pc 16792
	fsub	%f0, %f1, %f0  #1488 pc 16796
	lw	%x6, 16(%x2)  #1489 pc 16800
	fsw	%f0, 40(%x2)  #1489 pc 16804
	sw	%x1, 48(%x2)  #1489 pc 16808
	addi	%x2, %x2, 52  #1489 pc 16812
	jal	%x1, o_param_z.2661  #1489 pc 16816
	addi	%x2, %x2, -52  #1489 pc 16820
	lw	%x1, 48(%x2) #1489 pc 16824
	flw	%f1, 0(%x2)  #1489 pc 16828
	fsub	%f0, %f1, %f0  #1489 pc 16832
	lw	%x6, 16(%x2)  #1490 pc 16836
	fsw	%f0, 48(%x2)  #1490 pc 16840
	sw	%x1, 56(%x2)  #1490 pc 16844
	addi	%x2, %x2, 60  #1490 pc 16848
	jal	%x1, o_form.2641  #1490 pc 16852
	addi	%x2, %x2, -60  #1490 pc 16856
	lw	%x1, 56(%x2) #1490 pc 16860
	addi	%x31, %x0, 1  #pc 16864
	beq	%x6, %x31, 12  #1491 pc 16868
	j	be_else.9265 #pc 16872
	nop #pc 16876
	flw	%f0, 32(%x2)  #1492 pc 16880
	flw	%f1, 40(%x2)  #1492 pc 16884
	flw	%f2, 48(%x2)  #1492 pc 16888
	lw	%x6, 16(%x2)  #1492 pc 16892
	j	is_rect_outside.2836  #1492 pc 16896
	nop #pc 16900
be_else.9265: #pc 16904
	addi	%x31, %x0, 2  #pc 16904
	beq	%x6, %x31, 12  #1493 pc 16908
	j	be_else.9266 #pc 16912
	nop #pc 16916
	flw	%f0, 32(%x2)  #1494 pc 16920
	flw	%f1, 40(%x2)  #1494 pc 16924
	flw	%f2, 48(%x2)  #1494 pc 16928
	lw	%x6, 16(%x2)  #1494 pc 16932
	j	is_plane_outside.2841  #1494 pc 16936
	nop #pc 16940
be_else.9266: #pc 16944
	flw	%f0, 32(%x2)  #1496 pc 16944
	flw	%f1, 40(%x2)  #1496 pc 16948
	flw	%f2, 48(%x2)  #1496 pc 16952
	lw	%x6, 16(%x2)  #1496 pc 16956
	j	is_second_outside.2846  #1496 pc 16960
	nop #pc 16964
check_all_inside.2856:  #pc 16968
	lw	%x8, 4(%x29)  #1501 pc 16968
	slli	%x9, %x6, 2  #1501 pc 16972
	add	%x31, %x9, %x7  #1501 pc 16976
	lw	%x9, 0(%x31)  #1501 pc 16980
	addi	%x31, %x0, -1  #pc 16984
	beq	%x9, %x31, 12  #1502 pc 16988
	j	be_else.9267 #pc 16992
	nop #pc 16996
	addi	%x6, %x0, 1  #0 pc 17000
	ret #pc 17004
	nop #pc 17008
be_else.9267: #pc 17012
	slli	%x9, %x9, 2  #1505 pc 17012
	add	%x31, %x9, %x8  #1505 pc 17016
	lw	%x8, 0(%x31)  #1505 pc 17020
	fsw	%f2, 0(%x2)  #1505 pc 17024
	fsw	%f1, 8(%x2)  #1505 pc 17028
	fsw	%f0, 16(%x2)  #1505 pc 17032
	sw	%x7, 24(%x2)  #1505 pc 17036
	sw	%x29, 28(%x2)  #1505 pc 17040
	sw	%x6, 32(%x2)  #1505 pc 17044
	addi	%x6, %x8, 0  #0 pc 17048
	sw	%x1, 36(%x2)  #1505 pc 17052
	addi	%x2, %x2, 40  #1505 pc 17056
	jal	%x1, is_outside.2851  #1505 pc 17060
	addi	%x2, %x2, -40  #1505 pc 17064
	lw	%x1, 36(%x2) #1505 pc 17068
	beq	%x6, %x0, 12  #1505 pc 17072
	j	be_else.9268 #pc 17076
	nop #pc 17080
	lw	%x6, 32(%x2)  #1508 pc 17084
	addi	%x6, %x6, 1  #1508 pc 17088
	flw	%f0, 16(%x2)  #1508 pc 17092
	flw	%f1, 8(%x2)  #1508 pc 17096
	flw	%f2, 0(%x2)  #1508 pc 17100
	lw	%x7, 24(%x2)  #1508 pc 17104
	lw	%x29, 28(%x2)  #1508 pc 17108
	lw	%x30, 0(%x29)  #1508 pc 17112
	jalr	%x0, %x30, 0  #1508 pc 17116
	nop #pc 17120
be_else.9268: #pc 17124
	addi	%x6, %x0, 0  #0 pc 17124
	ret #pc 17128
	nop #pc 17132
shadow_check_and_group.2862:  #pc 17136
	lw	%x8, 28(%x29)  #0 pc 17136
	lw	%x9, 24(%x29)  #0 pc 17140
	lw	%x10, 20(%x29)  #0 pc 17144
	lw	%x11, 16(%x29)  #0 pc 17148
	lw	%x12, 12(%x29)  #0 pc 17152
	lw	%x13, 8(%x29)  #0 pc 17156
	lw	%x14, 4(%x29)  #0 pc 17160
	slli	%x15, %x6, 2  #1521 pc 17164
	add	%x31, %x15, %x7  #1521 pc 17168
	lw	%x15, 0(%x31)  #1521 pc 17172
	addi	%x31, %x0, -1  #pc 17176
	beq	%x15, %x31, 12  #1521 pc 17180
	j	be_else.9269 #pc 17184
	nop #pc 17188
	addi	%x6, %x0, 0  #0 pc 17192
	ret #pc 17196
	nop #pc 17200
be_else.9269: #pc 17204
	slli	%x15, %x6, 2  #1524 pc 17204
	add	%x31, %x15, %x7  #1524 pc 17208
	lw	%x15, 0(%x31)  #1524 pc 17212
	sw	%x14, 0(%x2)  #1525 pc 17216
	sw	%x13, 4(%x2)  #1525 pc 17220
	sw	%x12, 8(%x2)  #1525 pc 17224
	sw	%x7, 12(%x2)  #1525 pc 17228
	sw	%x29, 16(%x2)  #1525 pc 17232
	sw	%x6, 20(%x2)  #1525 pc 17236
	sw	%x10, 24(%x2)  #1525 pc 17240
	sw	%x15, 28(%x2)  #1525 pc 17244
	sw	%x9, 32(%x2)  #1525 pc 17248
	addi	%x7, %x11, 0  #0 pc 17252
	addi	%x6, %x15, 0  #0 pc 17256
	addi	%x29, %x8, 0  #0 pc 17260
	addi	%x8, %x13, 0  #0 pc 17264
	sw	%x1, 36(%x2)  #1525 pc 17268
	lw	%x30, 0(%x29)  #1525 pc 17272
	addi	%x2, %x2, 40  #1525 pc 17276
	jalr	%x1, %x30, 0  #1525 pc 17280
	addi	%x2, %x2, -40  #1525 pc 17284
	lw	%x1, 36(%x2)  #1525 pc 17288
	lw	%x7, 32(%x2)  #1526 pc 17292
	flw	%f0, 0(%x7)  #1526 pc 17296
	fsw	%f0, 40(%x2)  #1527 pc 17300
	beq	%x6, %x0, 12  #1527 pc 17304
	j	be_else.9271 #pc 17308
	nop #pc 17312
	addi	%x6, %x0, 0  #0 pc 17316
	j	be_cont.9272 #pc 17320
	nop #pc 17324
be_else.9271: #pc 17328
	fmv	%f1, l.6596  #0 pc 17328
	sw	%x1, 48(%x2)  #1527 pc 17332
	addi	%x2, %x2, 52  #1527 pc 17336
	jal	%x1, fless.2505  #1527 pc 17340
	addi	%x2, %x2, -52  #1527 pc 17344
	lw	%x1, 48(%x2) #1527 pc 17348
be_cont.9272: #pc 17352
	beq	%x6, %x0, 12  #1527 pc 17352
	j	be_else.9273 #pc 17356
	nop #pc 17360
	lw	%x6, 28(%x2)  #1543 pc 17364
	slli	%x6, %x6, 2  #1543 pc 17368
	lw	%x7, 24(%x2)  #1543 pc 17372
	add	%x31, %x6, %x7  #1543 pc 17376
	lw	%x6, 0(%x31)  #1543 pc 17380
	sw	%x1, 48(%x2)  #1543 pc 17384
	addi	%x2, %x2, 52  #1543 pc 17388
	jal	%x1, o_isinvert.2645  #1543 pc 17392
	addi	%x2, %x2, -52  #1543 pc 17396
	lw	%x1, 48(%x2) #1543 pc 17400
	beq	%x6, %x0, 12  #1543 pc 17404
	j	be_else.9274 #pc 17408
	nop #pc 17412
	addi	%x6, %x0, 0  #0 pc 17416
	ret #pc 17420
	nop #pc 17424
be_else.9274: #pc 17428
	lw	%x6, 20(%x2)  #1544 pc 17428
	addi	%x6, %x6, 1  #1544 pc 17432
	lw	%x7, 12(%x2)  #1544 pc 17436
	lw	%x29, 16(%x2)  #1544 pc 17440
	lw	%x30, 0(%x29)  #1544 pc 17444
	jalr	%x0, %x30, 0  #1544 pc 17448
	nop #pc 17452
be_else.9273: #pc 17456
	fmv	%f0, l.6598  #0 pc 17456
	flw	%f1, 40(%x2)  #1530 pc 17460
	fadd	%f0, %f1, %f0  #1530 pc 17464
	lw	%x6, 8(%x2)  #1531 pc 17468
	flw	%f1, 0(%x6)  #1531 pc 17472
	fmul	%f1, %f1, %f0  #1531 pc 17476
	lw	%x7, 4(%x2)  #1531 pc 17480
	flw	%f2, 0(%x7)  #1531 pc 17484
	fadd	%f1, %f1, %f2  #1531 pc 17488
	flw	%f2, 4(%x6)  #1532 pc 17492
	fmul	%f2, %f2, %f0  #1532 pc 17496
	flw	%f3, 4(%x7)  #1532 pc 17500
	fadd	%f2, %f2, %f3  #1532 pc 17504
	flw	%f3, 8(%x6)  #1533 pc 17508
	fmul	%f0, %f3, %f0  #1533 pc 17512
	flw	%f3, 8(%x7)  #1533 pc 17516
	fadd	%f0, %f0, %f3  #1533 pc 17520
	addi	%x6, %x0, 0  #0 pc 17524
	lw	%x7, 12(%x2)  #1534 pc 17528
	lw	%x29, 0(%x2)  #1534 pc 17532
	fadd	%f29, %f2, %f30  #0 pc 17536
	fadd	%f2, %f0, %f30  #0 pc 17540
	fadd	%f0, %f1, %f30  #0 pc 17544
	fadd	%f1, %f29, %f30  #0 pc 17548
	sw	%x1, 48(%x2)  #1534 pc 17552
	lw	%x30, 0(%x29)  #1534 pc 17556
	addi	%x2, %x2, 52  #1534 pc 17560
	jalr	%x1, %x30, 0  #1534 pc 17564
	addi	%x2, %x2, -52  #1534 pc 17568
	lw	%x1, 48(%x2)  #1534 pc 17572
	beq	%x6, %x0, 12  #1534 pc 17576
	j	be_else.9275 #pc 17580
	nop #pc 17584
	lw	%x6, 20(%x2)  #1537 pc 17588
	addi	%x6, %x6, 1  #1537 pc 17592
	lw	%x7, 12(%x2)  #1537 pc 17596
	lw	%x29, 16(%x2)  #1537 pc 17600
	lw	%x30, 0(%x29)  #1537 pc 17604
	jalr	%x0, %x30, 0  #1537 pc 17608
	nop #pc 17612
be_else.9275: #pc 17616
	addi	%x6, %x0, 1  #0 pc 17616
	ret #pc 17620
	nop #pc 17624
shadow_check_one_or_group.2865:  #pc 17628
	lw	%x8, 8(%x29)  #1551 pc 17628
	lw	%x9, 4(%x29)  #1551 pc 17632
	slli	%x10, %x6, 2  #1551 pc 17636
	add	%x31, %x10, %x7  #1551 pc 17640
	lw	%x10, 0(%x31)  #1551 pc 17644
	addi	%x31, %x0, -1  #pc 17648
	beq	%x10, %x31, 12  #1552 pc 17652
	j	be_else.9276 #pc 17656
	nop #pc 17660
	addi	%x6, %x0, 0  #0 pc 17664
	ret #pc 17668
	nop #pc 17672
be_else.9276: #pc 17676
	slli	%x10, %x10, 2  #1555 pc 17676
	add	%x31, %x10, %x9  #1555 pc 17680
	lw	%x9, 0(%x31)  #1555 pc 17684
	addi	%x10, %x0, 0  #0 pc 17688
	sw	%x7, 0(%x2)  #1556 pc 17692
	sw	%x29, 4(%x2)  #1556 pc 17696
	sw	%x6, 8(%x2)  #1556 pc 17700
	addi	%x7, %x9, 0  #0 pc 17704
	addi	%x6, %x10, 0  #0 pc 17708
	addi	%x29, %x8, 0  #0 pc 17712
	sw	%x1, 12(%x2)  #1556 pc 17716
	lw	%x30, 0(%x29)  #1556 pc 17720
	addi	%x2, %x2, 16  #1556 pc 17724
	jalr	%x1, %x30, 0  #1556 pc 17728
	addi	%x2, %x2, -16  #1556 pc 17732
	lw	%x1, 12(%x2)  #1556 pc 17736
	beq	%x6, %x0, 12  #1557 pc 17740
	j	be_else.9277 #pc 17744
	nop #pc 17748
	lw	%x6, 8(%x2)  #1560 pc 17752
	addi	%x6, %x6, 1  #1560 pc 17756
	lw	%x7, 0(%x2)  #1560 pc 17760
	lw	%x29, 4(%x2)  #1560 pc 17764
	lw	%x30, 0(%x29)  #1560 pc 17768
	jalr	%x0, %x30, 0  #1560 pc 17772
	nop #pc 17776
be_else.9277: #pc 17780
	addi	%x6, %x0, 1  #0 pc 17780
	ret #pc 17784
	nop #pc 17788
shadow_check_one_or_matrix.2868:  #pc 17792
	lw	%x8, 20(%x29)  #1566 pc 17792
	lw	%x9, 16(%x29)  #1566 pc 17796
	lw	%x10, 12(%x29)  #1566 pc 17800
	lw	%x11, 8(%x29)  #1566 pc 17804
	lw	%x12, 4(%x29)  #1566 pc 17808
	slli	%x13, %x6, 2  #1566 pc 17812
	add	%x31, %x13, %x7  #1566 pc 17816
	lw	%x13, 0(%x31)  #1566 pc 17820
	lw	%x14, 0(%x13)  #1567 pc 17824
	addi	%x31, %x0, -1  #pc 17828
	beq	%x14, %x31, 12  #1568 pc 17832
	j	be_else.9278 #pc 17836
	nop #pc 17840
	addi	%x6, %x0, 0  #0 pc 17844
	ret #pc 17848
	nop #pc 17852
be_else.9278: #pc 17856
	sw	%x13, 0(%x2)  #1572 pc 17856
	sw	%x10, 4(%x2)  #1572 pc 17860
	sw	%x7, 8(%x2)  #1572 pc 17864
	sw	%x29, 12(%x2)  #1572 pc 17868
	sw	%x6, 16(%x2)  #1572 pc 17872
	addi	%x31, %x0, 99  #pc 17876
	beq	%x14, %x31, 12  #1572 pc 17880
	j	be_else.9279 #pc 17884
	nop #pc 17888
	addi	%x6, %x0, 1  #0 pc 17892
	j	be_cont.9280 #pc 17896
	nop #pc 17900
be_else.9279: #pc 17904
	sw	%x9, 20(%x2)  #1575 pc 17904
	addi	%x7, %x11, 0  #0 pc 17908
	addi	%x6, %x14, 0  #0 pc 17912
	addi	%x29, %x8, 0  #0 pc 17916
	addi	%x8, %x12, 0  #0 pc 17920
	sw	%x1, 24(%x2)  #1575 pc 17924
	lw	%x30, 0(%x29)  #1575 pc 17928
	addi	%x2, %x2, 28  #1575 pc 17932
	jalr	%x1, %x30, 0  #1575 pc 17936
	addi	%x2, %x2, -28  #1575 pc 17940
	lw	%x1, 24(%x2)  #1575 pc 17944
	beq	%x6, %x0, 12  #1578 pc 17948
	j	be_else.9281 #pc 17952
	nop #pc 17956
	addi	%x6, %x0, 0  #0 pc 17960
	j	be_cont.9282 #pc 17964
	nop #pc 17968
be_else.9281: #pc 17972
	lw	%x6, 20(%x2)  #1579 pc 17972
	flw	%f0, 0(%x6)  #1579 pc 17976
	fmv	%f1, l.6612  #0 pc 17980
	sw	%x1, 24(%x2)  #1579 pc 17984
	addi	%x2, %x2, 28  #1579 pc 17988
	jal	%x1, fless.2505  #1579 pc 17992
	addi	%x2, %x2, -28  #1579 pc 17996
	lw	%x1, 24(%x2) #1579 pc 18000
	beq	%x6, %x0, 12  #1579 pc 18004
	j	be_else.9283 #pc 18008
	nop #pc 18012
	addi	%x6, %x0, 0  #0 pc 18016
	j	be_cont.9284 #pc 18020
	nop #pc 18024
be_else.9283: #pc 18028
	addi	%x6, %x0, 1  #0 pc 18028
	lw	%x7, 0(%x2)  #1580 pc 18032
	lw	%x29, 4(%x2)  #1580 pc 18036
	sw	%x1, 24(%x2)  #1580 pc 18040
	lw	%x30, 0(%x29)  #1580 pc 18044
	addi	%x2, %x2, 28  #1580 pc 18048
	jalr	%x1, %x30, 0  #1580 pc 18052
	addi	%x2, %x2, -28  #1580 pc 18056
	lw	%x1, 24(%x2)  #1580 pc 18060
	beq	%x6, %x0, 12  #1580 pc 18064
	j	be_else.9285 #pc 18068
	nop #pc 18072
	addi	%x6, %x0, 0  #0 pc 18076
	j	be_cont.9286 #pc 18080
	nop #pc 18084
be_else.9285: #pc 18088
	addi	%x6, %x0, 1  #0 pc 18088
be_cont.9286: #pc 18092
be_cont.9284: #pc 18092
be_cont.9282: #pc 18092
be_cont.9280: #pc 18092
	beq	%x6, %x0, 12  #1571 pc 18092
	j	be_else.9287 #pc 18096
	nop #pc 18100
	lw	%x6, 16(%x2)  #1591 pc 18104
	addi	%x6, %x6, 1  #1591 pc 18108
	lw	%x7, 8(%x2)  #1591 pc 18112
	lw	%x29, 12(%x2)  #1591 pc 18116
	lw	%x30, 0(%x29)  #1591 pc 18120
	jalr	%x0, %x30, 0  #1591 pc 18124
	nop #pc 18128
be_else.9287: #pc 18132
	addi	%x6, %x0, 1  #0 pc 18132
	lw	%x7, 0(%x2)  #1586 pc 18136
	lw	%x29, 4(%x2)  #1586 pc 18140
	sw	%x1, 24(%x2)  #1586 pc 18144
	lw	%x30, 0(%x29)  #1586 pc 18148
	addi	%x2, %x2, 28  #1586 pc 18152
	jalr	%x1, %x30, 0  #1586 pc 18156
	addi	%x2, %x2, -28  #1586 pc 18160
	lw	%x1, 24(%x2)  #1586 pc 18164
	beq	%x6, %x0, 12  #1586 pc 18168
	j	be_else.9288 #pc 18172
	nop #pc 18176
	lw	%x6, 16(%x2)  #1589 pc 18180
	addi	%x6, %x6, 1  #1589 pc 18184
	lw	%x7, 8(%x2)  #1589 pc 18188
	lw	%x29, 12(%x2)  #1589 pc 18192
	lw	%x30, 0(%x29)  #1589 pc 18196
	jalr	%x0, %x30, 0  #1589 pc 18200
	nop #pc 18204
be_else.9288: #pc 18208
	addi	%x6, %x0, 1  #0 pc 18208
	ret #pc 18212
	nop #pc 18216
solve_each_element.2871:  #pc 18220
	lw	%x9, 36(%x29)  #1602 pc 18220
	lw	%x10, 32(%x29)  #1602 pc 18224
	lw	%x11, 28(%x29)  #1602 pc 18228
	lw	%x12, 24(%x29)  #1602 pc 18232
	lw	%x13, 20(%x29)  #1602 pc 18236
	lw	%x14, 16(%x29)  #1602 pc 18240
	lw	%x15, 12(%x29)  #1602 pc 18244
	lw	%x16, 8(%x29)  #1602 pc 18248
	lw	%x17, 4(%x29)  #1602 pc 18252
	slli	%x18, %x6, 2  #1602 pc 18256
	add	%x31, %x18, %x7  #1602 pc 18260
	lw	%x18, 0(%x31)  #1602 pc 18264
	addi	%x31, %x0, -1  #pc 18268
	beq	%x18, %x31, 12  #1603 pc 18272
	j	be_else.9289 #pc 18276
	nop #pc 18280
	ret #pc 18284
	nop #pc 18288
be_else.9289: #pc 18292
	sw	%x14, 0(%x2)  #1605 pc 18292
	sw	%x16, 4(%x2)  #1605 pc 18296
	sw	%x15, 8(%x2)  #1605 pc 18300
	sw	%x17, 12(%x2)  #1605 pc 18304
	sw	%x10, 16(%x2)  #1605 pc 18308
	sw	%x9, 20(%x2)  #1605 pc 18312
	sw	%x11, 24(%x2)  #1605 pc 18316
	sw	%x8, 28(%x2)  #1605 pc 18320
	sw	%x7, 32(%x2)  #1605 pc 18324
	sw	%x29, 36(%x2)  #1605 pc 18328
	sw	%x6, 40(%x2)  #1605 pc 18332
	sw	%x13, 44(%x2)  #1605 pc 18336
	sw	%x18, 48(%x2)  #1605 pc 18340
	addi	%x7, %x8, 0  #0 pc 18344
	addi	%x6, %x18, 0  #0 pc 18348
	addi	%x29, %x12, 0  #0 pc 18352
	addi	%x8, %x10, 0  #0 pc 18356
	sw	%x1, 52(%x2)  #1605 pc 18360
	lw	%x30, 0(%x29)  #1605 pc 18364
	addi	%x2, %x2, 56  #1605 pc 18368
	jalr	%x1, %x30, 0  #1605 pc 18372
	addi	%x2, %x2, -56  #1605 pc 18376
	lw	%x1, 52(%x2)  #1605 pc 18380
	beq	%x6, %x0, 12  #1606 pc 18384
	j	be_else.9291 #pc 18388
	nop #pc 18392
	lw	%x6, 48(%x2)  #1634 pc 18396
	slli	%x6, %x6, 2  #1634 pc 18400
	lw	%x7, 44(%x2)  #1634 pc 18404
	add	%x31, %x6, %x7  #1634 pc 18408
	lw	%x6, 0(%x31)  #1634 pc 18412
	sw	%x1, 52(%x2)  #1634 pc 18416
	addi	%x2, %x2, 56  #1634 pc 18420
	jal	%x1, o_isinvert.2645  #1634 pc 18424
	addi	%x2, %x2, -56  #1634 pc 18428
	lw	%x1, 52(%x2) #1634 pc 18432
	beq	%x6, %x0, 12  #1634 pc 18436
	j	be_else.9292 #pc 18440
	nop #pc 18444
	ret #pc 18448
	nop #pc 18452
be_else.9292: #pc 18456
	lw	%x6, 40(%x2)  #1635 pc 18456
	addi	%x6, %x6, 1  #1635 pc 18460
	lw	%x7, 32(%x2)  #1635 pc 18464
	lw	%x8, 28(%x2)  #1635 pc 18468
	lw	%x29, 36(%x2)  #1635 pc 18472
	lw	%x30, 0(%x29)  #1635 pc 18476
	jalr	%x0, %x30, 0  #1635 pc 18480
	nop #pc 18484
be_else.9291: #pc 18488
	lw	%x7, 24(%x2)  #1610 pc 18488
	flw	%f1, 0(%x7)  #1610 pc 18492
	fmv	%f0, l.6207  #0 pc 18496
	sw	%x6, 52(%x2)  #1612 pc 18500
	fsw	%f1, 56(%x2)  #1612 pc 18504
	sw	%x1, 64(%x2)  #1612 pc 18508
	addi	%x2, %x2, 68  #1612 pc 18512
	jal	%x1, fless.2505  #1612 pc 18516
	addi	%x2, %x2, -68  #1612 pc 18520
	lw	%x1, 64(%x2) #1612 pc 18524
	beq	%x6, %x0, 12  #1612 pc 18528
	j	be_else.9294 #pc 18532
	nop #pc 18536
	j	be_cont.9295 #pc 18540
	nop #pc 18544
be_else.9294: #pc 18548
	lw	%x6, 20(%x2)  #1613 pc 18548
	flw	%f1, 0(%x6)  #1613 pc 18552
	flw	%f0, 56(%x2)  #1613 pc 18556
	sw	%x1, 64(%x2)  #1613 pc 18560
	addi	%x2, %x2, 68  #1613 pc 18564
	jal	%x1, fless.2505  #1613 pc 18568
	addi	%x2, %x2, -68  #1613 pc 18572
	lw	%x1, 64(%x2) #1613 pc 18576
	beq	%x6, %x0, 12  #1613 pc 18580
	j	be_else.9296 #pc 18584
	nop #pc 18588
	j	be_cont.9297 #pc 18592
	nop #pc 18596
be_else.9296: #pc 18600
	fmv	%f0, l.6598  #0 pc 18600
	flw	%f1, 56(%x2)  #1615 pc 18604
	fadd	%f0, %f1, %f0  #1615 pc 18608
	lw	%x6, 28(%x2)  #1616 pc 18612
	flw	%f1, 0(%x6)  #1616 pc 18616
	fmul	%f1, %f1, %f0  #1616 pc 18620
	lw	%x7, 16(%x2)  #1616 pc 18624
	flw	%f2, 0(%x7)  #1616 pc 18628
	fadd	%f1, %f1, %f2  #1616 pc 18632
	flw	%f2, 4(%x6)  #1617 pc 18636
	fmul	%f2, %f2, %f0  #1617 pc 18640
	flw	%f3, 4(%x7)  #1617 pc 18644
	fadd	%f2, %f2, %f3  #1617 pc 18648
	flw	%f3, 8(%x6)  #1618 pc 18652
	fmul	%f3, %f3, %f0  #1618 pc 18656
	flw	%f4, 8(%x7)  #1618 pc 18660
	fadd	%f3, %f3, %f4  #1618 pc 18664
	addi	%x7, %x0, 0  #0 pc 18668
	lw	%x8, 32(%x2)  #1619 pc 18672
	lw	%x29, 12(%x2)  #1619 pc 18676
	fsw	%f3, 64(%x2)  #1619 pc 18680
	fsw	%f2, 72(%x2)  #1619 pc 18684
	fsw	%f1, 80(%x2)  #1619 pc 18688
	fsw	%f0, 88(%x2)  #1619 pc 18692
	addi	%x6, %x7, 0  #0 pc 18696
	addi	%x7, %x8, 0  #0 pc 18700
	fadd	%f0, %f1, %f30  #0 pc 18704
	fadd	%f1, %f2, %f30  #0 pc 18708
	fadd	%f2, %f3, %f30  #0 pc 18712
	sw	%x1, 96(%x2)  #1619 pc 18716
	lw	%x30, 0(%x29)  #1619 pc 18720
	addi	%x2, %x2, 100  #1619 pc 18724
	jalr	%x1, %x30, 0  #1619 pc 18728
	addi	%x2, %x2, -100  #1619 pc 18732
	lw	%x1, 96(%x2)  #1619 pc 18736
	beq	%x6, %x0, 12  #1619 pc 18740
	j	be_else.9298 #pc 18744
	nop #pc 18748
	j	be_cont.9299 #pc 18752
	nop #pc 18756
be_else.9298: #pc 18760
	lw	%x6, 20(%x2)  #1621 pc 18760
	flw	%f0, 88(%x2)  #1621 pc 18764
	fsw	%f0, 0(%x6)  #1621 pc 18768
	flw	%f0, 80(%x2)  #1622 pc 18772
	flw	%f1, 72(%x2)  #1622 pc 18776
	flw	%f2, 64(%x2)  #1622 pc 18780
	lw	%x6, 8(%x2)  #1622 pc 18784
	sw	%x1, 96(%x2)  #1622 pc 18788
	addi	%x2, %x2, 100  #1622 pc 18792
	jal	%x1, vecset.2601  #1622 pc 18796
	addi	%x2, %x2, -100  #1622 pc 18800
	lw	%x1, 96(%x2) #1622 pc 18804
	lw	%x6, 4(%x2)  #1623 pc 18808
	lw	%x7, 48(%x2)  #1623 pc 18812
	sw	%x7, 0(%x6)  #1623 pc 18816
	lw	%x6, 0(%x2)  #1624 pc 18820
	lw	%x7, 52(%x2)  #1624 pc 18824
	sw	%x7, 0(%x6)  #1624 pc 18828
be_cont.9299: #pc 18832
be_cont.9297: #pc 18832
be_cont.9295: #pc 18832
	lw	%x6, 40(%x2)  #1630 pc 18832
	addi	%x6, %x6, 1  #1630 pc 18836
	lw	%x7, 32(%x2)  #1630 pc 18840
	lw	%x8, 28(%x2)  #1630 pc 18844
	lw	%x29, 36(%x2)  #1630 pc 18848
	lw	%x30, 0(%x29)  #1630 pc 18852
	jalr	%x0, %x30, 0  #1630 pc 18856
	nop #pc 18860
solve_one_or_network.2875:  #pc 18864
	lw	%x9, 8(%x29)  #1643 pc 18864
	lw	%x10, 4(%x29)  #1643 pc 18868
	slli	%x11, %x6, 2  #1643 pc 18872
	add	%x31, %x11, %x7  #1643 pc 18876
	lw	%x11, 0(%x31)  #1643 pc 18880
	addi	%x31, %x0, -1  #pc 18884
	beq	%x11, %x31, 12  #1644 pc 18888
	j	be_else.9300 #pc 18892
	nop #pc 18896
	ret #pc 18900
	nop #pc 18904
be_else.9300: #pc 18908
	slli	%x11, %x11, 2  #1645 pc 18908
	add	%x31, %x11, %x10  #1645 pc 18912
	lw	%x10, 0(%x31)  #1645 pc 18916
	addi	%x11, %x0, 0  #0 pc 18920
	sw	%x8, 0(%x2)  #1646 pc 18924
	sw	%x7, 4(%x2)  #1646 pc 18928
	sw	%x29, 8(%x2)  #1646 pc 18932
	sw	%x6, 12(%x2)  #1646 pc 18936
	addi	%x7, %x10, 0  #0 pc 18940
	addi	%x6, %x11, 0  #0 pc 18944
	addi	%x29, %x9, 0  #0 pc 18948
	sw	%x1, 16(%x2)  #1646 pc 18952
	lw	%x30, 0(%x29)  #1646 pc 18956
	addi	%x2, %x2, 20  #1646 pc 18960
	jalr	%x1, %x30, 0  #1646 pc 18964
	addi	%x2, %x2, -20  #1646 pc 18968
	lw	%x1, 16(%x2)  #1646 pc 18972
	lw	%x6, 12(%x2)  #1647 pc 18976
	addi	%x6, %x6, 1  #1647 pc 18980
	lw	%x7, 4(%x2)  #1647 pc 18984
	lw	%x8, 0(%x2)  #1647 pc 18988
	lw	%x29, 8(%x2)  #1647 pc 18992
	lw	%x30, 0(%x29)  #1647 pc 18996
	jalr	%x0, %x30, 0  #1647 pc 19000
	nop #pc 19004
trace_or_matrix.2879:  #pc 19008
	lw	%x9, 20(%x29)  #1653 pc 19008
	lw	%x10, 16(%x29)  #1653 pc 19012
	lw	%x11, 12(%x29)  #1653 pc 19016
	lw	%x12, 8(%x29)  #1653 pc 19020
	lw	%x13, 4(%x29)  #1653 pc 19024
	slli	%x14, %x6, 2  #1653 pc 19028
	add	%x31, %x14, %x7  #1653 pc 19032
	lw	%x14, 0(%x31)  #1653 pc 19036
	lw	%x15, 0(%x14)  #1654 pc 19040
	addi	%x31, %x0, -1  #pc 19044
	beq	%x15, %x31, 12  #1655 pc 19048
	j	be_else.9302 #pc 19052
	nop #pc 19056
	ret #pc 19060
	nop #pc 19064
be_else.9302: #pc 19068
	sw	%x8, 0(%x2)  #1658 pc 19068
	sw	%x7, 4(%x2)  #1658 pc 19072
	sw	%x29, 8(%x2)  #1658 pc 19076
	sw	%x6, 12(%x2)  #1658 pc 19080
	addi	%x31, %x0, 99  #pc 19084
	beq	%x15, %x31, 12  #1658 pc 19088
	j	be_else.9304 #pc 19092
	nop #pc 19096
	addi	%x9, %x0, 1  #0 pc 19100
	addi	%x7, %x14, 0  #0 pc 19104
	addi	%x6, %x9, 0  #0 pc 19108
	addi	%x29, %x13, 0  #0 pc 19112
	sw	%x1, 16(%x2)  #1659 pc 19116
	lw	%x30, 0(%x29)  #1659 pc 19120
	addi	%x2, %x2, 20  #1659 pc 19124
	jalr	%x1, %x30, 0  #1659 pc 19128
	addi	%x2, %x2, -20  #1659 pc 19132
	lw	%x1, 16(%x2)  #1659 pc 19136
	j	be_cont.9305 #pc 19140
	nop #pc 19144
be_else.9304: #pc 19148
	sw	%x14, 16(%x2)  #1663 pc 19148
	sw	%x13, 20(%x2)  #1663 pc 19152
	sw	%x9, 24(%x2)  #1663 pc 19156
	sw	%x11, 28(%x2)  #1663 pc 19160
	addi	%x7, %x8, 0  #0 pc 19164
	addi	%x6, %x15, 0  #0 pc 19168
	addi	%x29, %x12, 0  #0 pc 19172
	addi	%x8, %x10, 0  #0 pc 19176
	sw	%x1, 32(%x2)  #1663 pc 19180
	lw	%x30, 0(%x29)  #1663 pc 19184
	addi	%x2, %x2, 36  #1663 pc 19188
	jalr	%x1, %x30, 0  #1663 pc 19192
	addi	%x2, %x2, -36  #1663 pc 19196
	lw	%x1, 32(%x2)  #1663 pc 19200
	beq	%x6, %x0, 12  #1664 pc 19204
	j	be_else.9306 #pc 19208
	nop #pc 19212
	j	be_cont.9307 #pc 19216
	nop #pc 19220
be_else.9306: #pc 19224
	lw	%x6, 28(%x2)  #1665 pc 19224
	flw	%f0, 0(%x6)  #1665 pc 19228
	lw	%x6, 24(%x2)  #1666 pc 19232
	flw	%f1, 0(%x6)  #1666 pc 19236
	sw	%x1, 32(%x2)  #1666 pc 19240
	addi	%x2, %x2, 36  #1666 pc 19244
	jal	%x1, fless.2505  #1666 pc 19248
	addi	%x2, %x2, -36  #1666 pc 19252
	lw	%x1, 32(%x2) #1666 pc 19256
	beq	%x6, %x0, 12  #1666 pc 19260
	j	be_else.9308 #pc 19264
	nop #pc 19268
	j	be_cont.9309 #pc 19272
	nop #pc 19276
be_else.9308: #pc 19280
	addi	%x6, %x0, 1  #0 pc 19280
	lw	%x7, 16(%x2)  #1667 pc 19284
	lw	%x8, 0(%x2)  #1667 pc 19288
	lw	%x29, 20(%x2)  #1667 pc 19292
	sw	%x1, 32(%x2)  #1667 pc 19296
	lw	%x30, 0(%x29)  #1667 pc 19300
	addi	%x2, %x2, 36  #1667 pc 19304
	jalr	%x1, %x30, 0  #1667 pc 19308
	addi	%x2, %x2, -36  #1667 pc 19312
	lw	%x1, 32(%x2)  #1667 pc 19316
be_cont.9309: #pc 19320
be_cont.9307: #pc 19320
be_cont.9305: #pc 19320
	lw	%x6, 12(%x2)  #1671 pc 19320
	addi	%x6, %x6, 1  #1671 pc 19324
	lw	%x7, 4(%x2)  #1671 pc 19328
	lw	%x8, 0(%x2)  #1671 pc 19332
	lw	%x29, 8(%x2)  #1671 pc 19336
	lw	%x30, 0(%x29)  #1671 pc 19340
	jalr	%x0, %x30, 0  #1671 pc 19344
	nop #pc 19348
judge_intersection.2883:  #pc 19352
	lw	%x7, 12(%x29)  #0 pc 19352
	lw	%x8, 8(%x29)  #0 pc 19356
	lw	%x9, 4(%x29)  #0 pc 19360
	fmv	%f0, l.6635  #0 pc 19364
	fsw	%f0, 0(%x8)  #1680 pc 19368
	addi	%x10, %x0, 0  #0 pc 19372
	lw	%x9, 0(%x9)  #1681 pc 19376
	sw	%x8, 0(%x2)  #1681 pc 19380
	addi	%x8, %x6, 0  #0 pc 19384
	addi	%x29, %x7, 0  #0 pc 19388
	addi	%x7, %x9, 0  #0 pc 19392
	addi	%x6, %x10, 0  #0 pc 19396
	sw	%x1, 4(%x2)  #1681 pc 19400
	lw	%x30, 0(%x29)  #1681 pc 19404
	addi	%x2, %x2, 8  #1681 pc 19408
	jalr	%x1, %x30, 0  #1681 pc 19412
	addi	%x2, %x2, -8  #1681 pc 19416
	lw	%x1, 4(%x2)  #1681 pc 19420
	lw	%x6, 0(%x2)  #1682 pc 19424
	flw	%f1, 0(%x6)  #1682 pc 19428
	fmv	%f0, l.6612  #0 pc 19432
	fsw	%f1, 8(%x2)  #1684 pc 19436
	sw	%x1, 16(%x2)  #1684 pc 19440
	addi	%x2, %x2, 20  #1684 pc 19444
	jal	%x1, fless.2505  #1684 pc 19448
	addi	%x2, %x2, -20  #1684 pc 19452
	lw	%x1, 16(%x2) #1684 pc 19456
	beq	%x6, %x0, 12  #1684 pc 19460
	j	be_else.9311 #pc 19464
	nop #pc 19468
	addi	%x6, %x0, 0  #0 pc 19472
	ret #pc 19476
	nop #pc 19480
be_else.9311: #pc 19484
	fmv	%f1, l.6641  #0 pc 19484
	flw	%f0, 8(%x2)  #1685 pc 19488
	j	fless.2505  #1685 pc 19492
	nop #pc 19496
solve_each_element_fast.2885:  #pc 19500
	lw	%x9, 36(%x29)  #1695 pc 19500
	lw	%x10, 32(%x29)  #1695 pc 19504
	lw	%x11, 28(%x29)  #1695 pc 19508
	lw	%x12, 24(%x29)  #1695 pc 19512
	lw	%x13, 20(%x29)  #1695 pc 19516
	lw	%x14, 16(%x29)  #1695 pc 19520
	lw	%x15, 12(%x29)  #1695 pc 19524
	lw	%x16, 8(%x29)  #1695 pc 19528
	lw	%x17, 4(%x29)  #1695 pc 19532
	sw	%x14, 0(%x2)  #1695 pc 19536
	sw	%x16, 4(%x2)  #1695 pc 19540
	sw	%x15, 8(%x2)  #1695 pc 19544
	sw	%x17, 12(%x2)  #1695 pc 19548
	sw	%x10, 16(%x2)  #1695 pc 19552
	sw	%x9, 20(%x2)  #1695 pc 19556
	sw	%x12, 24(%x2)  #1695 pc 19560
	sw	%x29, 28(%x2)  #1695 pc 19564
	sw	%x13, 32(%x2)  #1695 pc 19568
	sw	%x8, 36(%x2)  #1695 pc 19572
	sw	%x11, 40(%x2)  #1695 pc 19576
	sw	%x7, 44(%x2)  #1695 pc 19580
	sw	%x6, 48(%x2)  #1695 pc 19584
	addi	%x6, %x8, 0  #0 pc 19588
	sw	%x1, 52(%x2)  #1695 pc 19592
	addi	%x2, %x2, 56  #1695 pc 19596
	jal	%x1, d_vec.2700  #1695 pc 19600
	addi	%x2, %x2, -56  #1695 pc 19604
	lw	%x1, 52(%x2) #1695 pc 19608
	lw	%x7, 48(%x2)  #1696 pc 19612
	slli	%x8, %x7, 2  #1696 pc 19616
	lw	%x9, 44(%x2)  #1696 pc 19620
	add	%x31, %x8, %x9  #1696 pc 19624
	lw	%x8, 0(%x31)  #1696 pc 19628
	addi	%x31, %x0, -1  #pc 19632
	beq	%x8, %x31, 12  #1697 pc 19636
	j	be_else.9312 #pc 19640
	nop #pc 19644
	ret #pc 19648
	nop #pc 19652
be_else.9312: #pc 19656
	lw	%x10, 36(%x2)  #1699 pc 19656
	lw	%x29, 40(%x2)  #1699 pc 19660
	sw	%x6, 52(%x2)  #1699 pc 19664
	sw	%x8, 56(%x2)  #1699 pc 19668
	addi	%x7, %x10, 0  #0 pc 19672
	addi	%x6, %x8, 0  #0 pc 19676
	sw	%x1, 60(%x2)  #1699 pc 19680
	lw	%x30, 0(%x29)  #1699 pc 19684
	addi	%x2, %x2, 64  #1699 pc 19688
	jalr	%x1, %x30, 0  #1699 pc 19692
	addi	%x2, %x2, -64  #1699 pc 19696
	lw	%x1, 60(%x2)  #1699 pc 19700
	beq	%x6, %x0, 12  #1700 pc 19704
	j	be_else.9314 #pc 19708
	nop #pc 19712
	lw	%x6, 56(%x2)  #1728 pc 19716
	slli	%x6, %x6, 2  #1728 pc 19720
	lw	%x7, 32(%x2)  #1728 pc 19724
	add	%x31, %x6, %x7  #1728 pc 19728
	lw	%x6, 0(%x31)  #1728 pc 19732
	sw	%x1, 60(%x2)  #1728 pc 19736
	addi	%x2, %x2, 64  #1728 pc 19740
	jal	%x1, o_isinvert.2645  #1728 pc 19744
	addi	%x2, %x2, -64  #1728 pc 19748
	lw	%x1, 60(%x2) #1728 pc 19752
	beq	%x6, %x0, 12  #1728 pc 19756
	j	be_else.9315 #pc 19760
	nop #pc 19764
	ret #pc 19768
	nop #pc 19772
be_else.9315: #pc 19776
	lw	%x6, 48(%x2)  #1729 pc 19776
	addi	%x6, %x6, 1  #1729 pc 19780
	lw	%x7, 44(%x2)  #1729 pc 19784
	lw	%x8, 36(%x2)  #1729 pc 19788
	lw	%x29, 28(%x2)  #1729 pc 19792
	lw	%x30, 0(%x29)  #1729 pc 19796
	jalr	%x0, %x30, 0  #1729 pc 19800
	nop #pc 19804
be_else.9314: #pc 19808
	lw	%x7, 24(%x2)  #1704 pc 19808
	flw	%f1, 0(%x7)  #1704 pc 19812
	fmv	%f0, l.6207  #0 pc 19816
	sw	%x6, 60(%x2)  #1706 pc 19820
	fsw	%f1, 64(%x2)  #1706 pc 19824
	sw	%x1, 72(%x2)  #1706 pc 19828
	addi	%x2, %x2, 76  #1706 pc 19832
	jal	%x1, fless.2505  #1706 pc 19836
	addi	%x2, %x2, -76  #1706 pc 19840
	lw	%x1, 72(%x2) #1706 pc 19844
	beq	%x6, %x0, 12  #1706 pc 19848
	j	be_else.9317 #pc 19852
	nop #pc 19856
	j	be_cont.9318 #pc 19860
	nop #pc 19864
be_else.9317: #pc 19868
	lw	%x6, 20(%x2)  #1707 pc 19868
	flw	%f1, 0(%x6)  #1707 pc 19872
	flw	%f0, 64(%x2)  #1707 pc 19876
	sw	%x1, 72(%x2)  #1707 pc 19880
	addi	%x2, %x2, 76  #1707 pc 19884
	jal	%x1, fless.2505  #1707 pc 19888
	addi	%x2, %x2, -76  #1707 pc 19892
	lw	%x1, 72(%x2) #1707 pc 19896
	beq	%x6, %x0, 12  #1707 pc 19900
	j	be_else.9319 #pc 19904
	nop #pc 19908
	j	be_cont.9320 #pc 19912
	nop #pc 19916
be_else.9319: #pc 19920
	fmv	%f0, l.6598  #0 pc 19920
	flw	%f1, 64(%x2)  #1709 pc 19924
	fadd	%f0, %f1, %f0  #1709 pc 19928
	lw	%x6, 52(%x2)  #1710 pc 19932
	flw	%f1, 0(%x6)  #1710 pc 19936
	fmul	%f1, %f1, %f0  #1710 pc 19940
	lw	%x7, 16(%x2)  #1710 pc 19944
	flw	%f2, 0(%x7)  #1710 pc 19948
	fadd	%f1, %f1, %f2  #1710 pc 19952
	flw	%f2, 4(%x6)  #1711 pc 19956
	fmul	%f2, %f2, %f0  #1711 pc 19960
	flw	%f3, 4(%x7)  #1711 pc 19964
	fadd	%f2, %f2, %f3  #1711 pc 19968
	flw	%f3, 8(%x6)  #1712 pc 19972
	fmul	%f3, %f3, %f0  #1712 pc 19976
	flw	%f4, 8(%x7)  #1712 pc 19980
	fadd	%f3, %f3, %f4  #1712 pc 19984
	addi	%x6, %x0, 0  #0 pc 19988
	lw	%x7, 44(%x2)  #1713 pc 19992
	lw	%x29, 12(%x2)  #1713 pc 19996
	fsw	%f3, 72(%x2)  #1713 pc 20000
	fsw	%f2, 80(%x2)  #1713 pc 20004
	fsw	%f1, 88(%x2)  #1713 pc 20008
	fsw	%f0, 96(%x2)  #1713 pc 20012
	fadd	%f0, %f1, %f30  #0 pc 20016
	fadd	%f1, %f2, %f30  #0 pc 20020
	fadd	%f2, %f3, %f30  #0 pc 20024
	sw	%x1, 104(%x2)  #1713 pc 20028
	lw	%x30, 0(%x29)  #1713 pc 20032
	addi	%x2, %x2, 108  #1713 pc 20036
	jalr	%x1, %x30, 0  #1713 pc 20040
	addi	%x2, %x2, -108  #1713 pc 20044
	lw	%x1, 104(%x2)  #1713 pc 20048
	beq	%x6, %x0, 12  #1713 pc 20052
	j	be_else.9321 #pc 20056
	nop #pc 20060
	j	be_cont.9322 #pc 20064
	nop #pc 20068
be_else.9321: #pc 20072
	lw	%x6, 20(%x2)  #1715 pc 20072
	flw	%f0, 96(%x2)  #1715 pc 20076
	fsw	%f0, 0(%x6)  #1715 pc 20080
	flw	%f0, 88(%x2)  #1716 pc 20084
	flw	%f1, 80(%x2)  #1716 pc 20088
	flw	%f2, 72(%x2)  #1716 pc 20092
	lw	%x6, 8(%x2)  #1716 pc 20096
	sw	%x1, 104(%x2)  #1716 pc 20100
	addi	%x2, %x2, 108  #1716 pc 20104
	jal	%x1, vecset.2601  #1716 pc 20108
	addi	%x2, %x2, -108  #1716 pc 20112
	lw	%x1, 104(%x2) #1716 pc 20116
	lw	%x6, 4(%x2)  #1717 pc 20120
	lw	%x7, 56(%x2)  #1717 pc 20124
	sw	%x7, 0(%x6)  #1717 pc 20128
	lw	%x6, 0(%x2)  #1718 pc 20132
	lw	%x7, 60(%x2)  #1718 pc 20136
	sw	%x7, 0(%x6)  #1718 pc 20140
be_cont.9322: #pc 20144
be_cont.9320: #pc 20144
be_cont.9318: #pc 20144
	lw	%x6, 48(%x2)  #1724 pc 20144
	addi	%x6, %x6, 1  #1724 pc 20148
	lw	%x7, 44(%x2)  #1724 pc 20152
	lw	%x8, 36(%x2)  #1724 pc 20156
	lw	%x29, 28(%x2)  #1724 pc 20160
	lw	%x30, 0(%x29)  #1724 pc 20164
	jalr	%x0, %x30, 0  #1724 pc 20168
	nop #pc 20172
solve_one_or_network_fast.2889:  #pc 20176
	lw	%x9, 8(%x29)  #1736 pc 20176
	lw	%x10, 4(%x29)  #1736 pc 20180
	slli	%x11, %x6, 2  #1736 pc 20184
	add	%x31, %x11, %x7  #1736 pc 20188
	lw	%x11, 0(%x31)  #1736 pc 20192
	addi	%x31, %x0, -1  #pc 20196
	beq	%x11, %x31, 12  #1737 pc 20200
	j	be_else.9323 #pc 20204
	nop #pc 20208
	ret #pc 20212
	nop #pc 20216
be_else.9323: #pc 20220
	slli	%x11, %x11, 2  #1738 pc 20220
	add	%x31, %x11, %x10  #1738 pc 20224
	lw	%x10, 0(%x31)  #1738 pc 20228
	addi	%x11, %x0, 0  #0 pc 20232
	sw	%x8, 0(%x2)  #1739 pc 20236
	sw	%x7, 4(%x2)  #1739 pc 20240
	sw	%x29, 8(%x2)  #1739 pc 20244
	sw	%x6, 12(%x2)  #1739 pc 20248
	addi	%x7, %x10, 0  #0 pc 20252
	addi	%x6, %x11, 0  #0 pc 20256
	addi	%x29, %x9, 0  #0 pc 20260
	sw	%x1, 16(%x2)  #1739 pc 20264
	lw	%x30, 0(%x29)  #1739 pc 20268
	addi	%x2, %x2, 20  #1739 pc 20272
	jalr	%x1, %x30, 0  #1739 pc 20276
	addi	%x2, %x2, -20  #1739 pc 20280
	lw	%x1, 16(%x2)  #1739 pc 20284
	lw	%x6, 12(%x2)  #1740 pc 20288
	addi	%x6, %x6, 1  #1740 pc 20292
	lw	%x7, 4(%x2)  #1740 pc 20296
	lw	%x8, 0(%x2)  #1740 pc 20300
	lw	%x29, 8(%x2)  #1740 pc 20304
	lw	%x30, 0(%x29)  #1740 pc 20308
	jalr	%x0, %x30, 0  #1740 pc 20312
	nop #pc 20316
trace_or_matrix_fast.2893:  #pc 20320
	lw	%x9, 16(%x29)  #1746 pc 20320
	lw	%x10, 12(%x29)  #1746 pc 20324
	lw	%x11, 8(%x29)  #1746 pc 20328
	lw	%x12, 4(%x29)  #1746 pc 20332
	slli	%x13, %x6, 2  #1746 pc 20336
	add	%x31, %x13, %x7  #1746 pc 20340
	lw	%x13, 0(%x31)  #1746 pc 20344
	lw	%x14, 0(%x13)  #1747 pc 20348
	addi	%x31, %x0, -1  #pc 20352
	beq	%x14, %x31, 12  #1748 pc 20356
	j	be_else.9325 #pc 20360
	nop #pc 20364
	ret #pc 20368
	nop #pc 20372
be_else.9325: #pc 20376
	sw	%x8, 0(%x2)  #1751 pc 20376
	sw	%x7, 4(%x2)  #1751 pc 20380
	sw	%x29, 8(%x2)  #1751 pc 20384
	sw	%x6, 12(%x2)  #1751 pc 20388
	addi	%x31, %x0, 99  #pc 20392
	beq	%x14, %x31, 12  #1751 pc 20396
	j	be_else.9327 #pc 20400
	nop #pc 20404
	addi	%x9, %x0, 1  #0 pc 20408
	addi	%x7, %x13, 0  #0 pc 20412
	addi	%x6, %x9, 0  #0 pc 20416
	addi	%x29, %x12, 0  #0 pc 20420
	sw	%x1, 16(%x2)  #1752 pc 20424
	lw	%x30, 0(%x29)  #1752 pc 20428
	addi	%x2, %x2, 20  #1752 pc 20432
	jalr	%x1, %x30, 0  #1752 pc 20436
	addi	%x2, %x2, -20  #1752 pc 20440
	lw	%x1, 16(%x2)  #1752 pc 20444
	j	be_cont.9328 #pc 20448
	nop #pc 20452
be_else.9327: #pc 20456
	sw	%x13, 16(%x2)  #1756 pc 20456
	sw	%x12, 20(%x2)  #1756 pc 20460
	sw	%x9, 24(%x2)  #1756 pc 20464
	sw	%x11, 28(%x2)  #1756 pc 20468
	addi	%x7, %x8, 0  #0 pc 20472
	addi	%x6, %x14, 0  #0 pc 20476
	addi	%x29, %x10, 0  #0 pc 20480
	sw	%x1, 32(%x2)  #1756 pc 20484
	lw	%x30, 0(%x29)  #1756 pc 20488
	addi	%x2, %x2, 36  #1756 pc 20492
	jalr	%x1, %x30, 0  #1756 pc 20496
	addi	%x2, %x2, -36  #1756 pc 20500
	lw	%x1, 32(%x2)  #1756 pc 20504
	beq	%x6, %x0, 12  #1757 pc 20508
	j	be_else.9329 #pc 20512
	nop #pc 20516
	j	be_cont.9330 #pc 20520
	nop #pc 20524
be_else.9329: #pc 20528
	lw	%x6, 28(%x2)  #1758 pc 20528
	flw	%f0, 0(%x6)  #1758 pc 20532
	lw	%x6, 24(%x2)  #1759 pc 20536
	flw	%f1, 0(%x6)  #1759 pc 20540
	sw	%x1, 32(%x2)  #1759 pc 20544
	addi	%x2, %x2, 36  #1759 pc 20548
	jal	%x1, fless.2505  #1759 pc 20552
	addi	%x2, %x2, -36  #1759 pc 20556
	lw	%x1, 32(%x2) #1759 pc 20560
	beq	%x6, %x0, 12  #1759 pc 20564
	j	be_else.9331 #pc 20568
	nop #pc 20572
	j	be_cont.9332 #pc 20576
	nop #pc 20580
be_else.9331: #pc 20584
	addi	%x6, %x0, 1  #0 pc 20584
	lw	%x7, 16(%x2)  #1760 pc 20588
	lw	%x8, 0(%x2)  #1760 pc 20592
	lw	%x29, 20(%x2)  #1760 pc 20596
	sw	%x1, 32(%x2)  #1760 pc 20600
	lw	%x30, 0(%x29)  #1760 pc 20604
	addi	%x2, %x2, 36  #1760 pc 20608
	jalr	%x1, %x30, 0  #1760 pc 20612
	addi	%x2, %x2, -36  #1760 pc 20616
	lw	%x1, 32(%x2)  #1760 pc 20620
be_cont.9332: #pc 20624
be_cont.9330: #pc 20624
be_cont.9328: #pc 20624
	lw	%x6, 12(%x2)  #1764 pc 20624
	addi	%x6, %x6, 1  #1764 pc 20628
	lw	%x7, 4(%x2)  #1764 pc 20632
	lw	%x8, 0(%x2)  #1764 pc 20636
	lw	%x29, 8(%x2)  #1764 pc 20640
	lw	%x30, 0(%x29)  #1764 pc 20644
	jalr	%x0, %x30, 0  #1764 pc 20648
	nop #pc 20652
judge_intersection_fast.2897:  #pc 20656
	lw	%x7, 12(%x29)  #0 pc 20656
	lw	%x8, 8(%x29)  #0 pc 20660
	lw	%x9, 4(%x29)  #0 pc 20664
	fmv	%f0, l.6635  #0 pc 20668
	fsw	%f0, 0(%x8)  #1771 pc 20672
	addi	%x10, %x0, 0  #0 pc 20676
	lw	%x9, 0(%x9)  #1772 pc 20680
	sw	%x8, 0(%x2)  #1772 pc 20684
	addi	%x8, %x6, 0  #0 pc 20688
	addi	%x29, %x7, 0  #0 pc 20692
	addi	%x7, %x9, 0  #0 pc 20696
	addi	%x6, %x10, 0  #0 pc 20700
	sw	%x1, 4(%x2)  #1772 pc 20704
	lw	%x30, 0(%x29)  #1772 pc 20708
	addi	%x2, %x2, 8  #1772 pc 20712
	jalr	%x1, %x30, 0  #1772 pc 20716
	addi	%x2, %x2, -8  #1772 pc 20720
	lw	%x1, 4(%x2)  #1772 pc 20724
	lw	%x6, 0(%x2)  #1773 pc 20728
	flw	%f1, 0(%x6)  #1773 pc 20732
	fmv	%f0, l.6612  #0 pc 20736
	fsw	%f1, 8(%x2)  #1775 pc 20740
	sw	%x1, 16(%x2)  #1775 pc 20744
	addi	%x2, %x2, 20  #1775 pc 20748
	jal	%x1, fless.2505  #1775 pc 20752
	addi	%x2, %x2, -20  #1775 pc 20756
	lw	%x1, 16(%x2) #1775 pc 20760
	beq	%x6, %x0, 12  #1775 pc 20764
	j	be_else.9334 #pc 20768
	nop #pc 20772
	addi	%x6, %x0, 0  #0 pc 20776
	ret #pc 20780
	nop #pc 20784
be_else.9334: #pc 20788
	fmv	%f1, l.6641  #0 pc 20788
	flw	%f0, 8(%x2)  #1776 pc 20792
	j	fless.2505  #1776 pc 20796
	nop #pc 20800
get_nvector_rect.2899:  #pc 20804
	lw	%x7, 8(%x29)  #0 pc 20804
	lw	%x8, 4(%x29)  #0 pc 20808
	lw	%x8, 0(%x8)  #1791 pc 20812
	sw	%x7, 0(%x2)  #1793 pc 20816
	sw	%x6, 4(%x2)  #1793 pc 20820
	sw	%x8, 8(%x2)  #1793 pc 20824
	addi	%x6, %x7, 0  #0 pc 20828
	sw	%x1, 12(%x2)  #1793 pc 20832
	addi	%x2, %x2, 16  #1793 pc 20836
	jal	%x1, vecbzero.2609  #1793 pc 20840
	addi	%x2, %x2, -16  #1793 pc 20844
	lw	%x1, 12(%x2) #1793 pc 20848
	lw	%x6, 8(%x2)  #1794 pc 20852
	addi	%x7, %x6, -1  #1794 pc 20856
	addi	%x6, %x6, -1  #1794 pc 20860
	slli	%x6, %x6, 2  #1794 pc 20864
	lw	%x8, 4(%x2)  #1794 pc 20868
	add	%x31, %x6, %x8  #1794 pc 20872
	flw	%f0, 0(%x31)  #1794 pc 20876
	sw	%x7, 12(%x2)  #1794 pc 20880
	sw	%x1, 16(%x2)  #1794 pc 20884
	addi	%x2, %x2, 20  #1794 pc 20888
	jal	%x1, sgn.2593  #1794 pc 20892
	addi	%x2, %x2, -20  #1794 pc 20896
	lw	%x1, 16(%x2) #1794 pc 20900
	sw	%x1, 16(%x2)  #1794 pc 20904
	addi	%x2, %x2, 20  #1794 pc 20908
	jal	%x1, fneg.2499  #1794 pc 20912
	addi	%x2, %x2, -20  #1794 pc 20916
	lw	%x1, 16(%x2) #1794 pc 20920
	lw	%x6, 12(%x2)  #1794 pc 20924
	slli	%x6, %x6, 2  #1794 pc 20928
	lw	%x7, 0(%x2)  #1794 pc 20932
	add	%x31, %x6, %x7  #1794 pc 20936
	fsw	%f0, 0(%x31) #1794 pc 20940
	ret #pc 20944
	nop #pc 20948
get_nvector_plane.2901:  #pc 20952
	lw	%x7, 4(%x29)  #0 pc 20952
	sw	%x6, 0(%x2)  #1800 pc 20956
	sw	%x7, 4(%x2)  #1800 pc 20960
	sw	%x1, 8(%x2)  #1800 pc 20964
	addi	%x2, %x2, 12  #1800 pc 20968
	jal	%x1, o_param_a.2649  #1800 pc 20972
	addi	%x2, %x2, -12  #1800 pc 20976
	lw	%x1, 8(%x2) #1800 pc 20980
	sw	%x1, 8(%x2)  #1800 pc 20984
	addi	%x2, %x2, 12  #1800 pc 20988
	jal	%x1, fneg.2499  #1800 pc 20992
	addi	%x2, %x2, -12  #1800 pc 20996
	lw	%x1, 8(%x2) #1800 pc 21000
	lw	%x6, 4(%x2)  #1800 pc 21004
	fsw	%f0, 0(%x6)  #1800 pc 21008
	lw	%x7, 0(%x2)  #1801 pc 21012
	addi	%x6, %x7, 0  #0 pc 21016
	sw	%x1, 8(%x2)  #1801 pc 21020
	addi	%x2, %x2, 12  #1801 pc 21024
	jal	%x1, o_param_b.2651  #1801 pc 21028
	addi	%x2, %x2, -12  #1801 pc 21032
	lw	%x1, 8(%x2) #1801 pc 21036
	sw	%x1, 8(%x2)  #1801 pc 21040
	addi	%x2, %x2, 12  #1801 pc 21044
	jal	%x1, fneg.2499  #1801 pc 21048
	addi	%x2, %x2, -12  #1801 pc 21052
	lw	%x1, 8(%x2) #1801 pc 21056
	lw	%x6, 4(%x2)  #1801 pc 21060
	fsw	%f0, 4(%x6)  #1801 pc 21064
	lw	%x7, 0(%x2)  #1802 pc 21068
	addi	%x6, %x7, 0  #0 pc 21072
	sw	%x1, 8(%x2)  #1802 pc 21076
	addi	%x2, %x2, 12  #1802 pc 21080
	jal	%x1, o_param_c.2653  #1802 pc 21084
	addi	%x2, %x2, -12  #1802 pc 21088
	lw	%x1, 8(%x2) #1802 pc 21092
	sw	%x1, 8(%x2)  #1802 pc 21096
	addi	%x2, %x2, 12  #1802 pc 21100
	jal	%x1, fneg.2499  #1802 pc 21104
	addi	%x2, %x2, -12  #1802 pc 21108
	lw	%x1, 8(%x2) #1802 pc 21112
	lw	%x6, 4(%x2)  #1802 pc 21116
	fsw	%f0, 8(%x6)  #1802 pc 21120
	ret #pc 21124
	nop #pc 21128
get_nvector_second.2903:  #pc 21132
	lw	%x7, 8(%x29)  #0 pc 21132
	lw	%x8, 4(%x29)  #0 pc 21136
	flw	%f0, 0(%x8)  #1807 pc 21140
	sw	%x7, 0(%x2)  #1807 pc 21144
	sw	%x6, 4(%x2)  #1807 pc 21148
	sw	%x8, 8(%x2)  #1807 pc 21152
	fsw	%f0, 16(%x2)  #1807 pc 21156
	sw	%x1, 24(%x2)  #1807 pc 21160
	addi	%x2, %x2, 28  #1807 pc 21164
	jal	%x1, o_param_x.2657  #1807 pc 21168
	addi	%x2, %x2, -28  #1807 pc 21172
	lw	%x1, 24(%x2) #1807 pc 21176
	flw	%f1, 16(%x2)  #1807 pc 21180
	fsub	%f0, %f1, %f0  #1807 pc 21184
	lw	%x6, 8(%x2)  #1808 pc 21188
	flw	%f1, 4(%x6)  #1808 pc 21192
	lw	%x7, 4(%x2)  #1808 pc 21196
	fsw	%f0, 24(%x2)  #1808 pc 21200
	fsw	%f1, 32(%x2)  #1808 pc 21204
	addi	%x6, %x7, 0  #0 pc 21208
	sw	%x1, 40(%x2)  #1808 pc 21212
	addi	%x2, %x2, 44  #1808 pc 21216
	jal	%x1, o_param_y.2659  #1808 pc 21220
	addi	%x2, %x2, -44  #1808 pc 21224
	lw	%x1, 40(%x2) #1808 pc 21228
	flw	%f1, 32(%x2)  #1808 pc 21232
	fsub	%f0, %f1, %f0  #1808 pc 21236
	lw	%x6, 8(%x2)  #1809 pc 21240
	flw	%f1, 8(%x6)  #1809 pc 21244
	lw	%x6, 4(%x2)  #1809 pc 21248
	fsw	%f0, 40(%x2)  #1809 pc 21252
	fsw	%f1, 48(%x2)  #1809 pc 21256
	sw	%x1, 56(%x2)  #1809 pc 21260
	addi	%x2, %x2, 60  #1809 pc 21264
	jal	%x1, o_param_z.2661  #1809 pc 21268
	addi	%x2, %x2, -60  #1809 pc 21272
	lw	%x1, 56(%x2) #1809 pc 21276
	flw	%f1, 48(%x2)  #1809 pc 21280
	fsub	%f0, %f1, %f0  #1809 pc 21284
	lw	%x6, 4(%x2)  #1811 pc 21288
	fsw	%f0, 56(%x2)  #1811 pc 21292
	sw	%x1, 64(%x2)  #1811 pc 21296
	addi	%x2, %x2, 68  #1811 pc 21300
	jal	%x1, o_param_a.2649  #1811 pc 21304
	addi	%x2, %x2, -68  #1811 pc 21308
	lw	%x1, 64(%x2) #1811 pc 21312
	flw	%f1, 24(%x2)  #1811 pc 21316
	fmul	%f0, %f1, %f0  #1811 pc 21320
	lw	%x6, 4(%x2)  #1812 pc 21324
	fsw	%f0, 64(%x2)  #1812 pc 21328
	sw	%x1, 72(%x2)  #1812 pc 21332
	addi	%x2, %x2, 76  #1812 pc 21336
	jal	%x1, o_param_b.2651  #1812 pc 21340
	addi	%x2, %x2, -76  #1812 pc 21344
	lw	%x1, 72(%x2) #1812 pc 21348
	flw	%f1, 40(%x2)  #1812 pc 21352
	fmul	%f0, %f1, %f0  #1812 pc 21356
	lw	%x6, 4(%x2)  #1813 pc 21360
	fsw	%f0, 72(%x2)  #1813 pc 21364
	sw	%x1, 80(%x2)  #1813 pc 21368
	addi	%x2, %x2, 84  #1813 pc 21372
	jal	%x1, o_param_c.2653  #1813 pc 21376
	addi	%x2, %x2, -84  #1813 pc 21380
	lw	%x1, 80(%x2) #1813 pc 21384
	flw	%f1, 56(%x2)  #1813 pc 21388
	fmul	%f0, %f1, %f0  #1813 pc 21392
	lw	%x6, 4(%x2)  #1815 pc 21396
	fsw	%f0, 80(%x2)  #1815 pc 21400
	sw	%x1, 88(%x2)  #1815 pc 21404
	addi	%x2, %x2, 92  #1815 pc 21408
	jal	%x1, o_isrot.2647  #1815 pc 21412
	addi	%x2, %x2, -92  #1815 pc 21416
	lw	%x1, 88(%x2) #1815 pc 21420
	beq	%x6, %x0, 12  #1815 pc 21424
	j	be_else.9338 #pc 21428
	nop #pc 21432
	lw	%x6, 0(%x2)  #1816 pc 21436
	flw	%f0, 64(%x2)  #1816 pc 21440
	fsw	%f0, 0(%x6)  #1816 pc 21444
	flw	%f0, 72(%x2)  #1817 pc 21448
	fsw	%f0, 4(%x6)  #1817 pc 21452
	flw	%f0, 80(%x2)  #1818 pc 21456
	fsw	%f0, 8(%x6)  #1818 pc 21460
	j	be_cont.9339 #pc 21464
	nop #pc 21468
be_else.9338: #pc 21472
	lw	%x6, 4(%x2)  #1820 pc 21472
	sw	%x1, 88(%x2)  #1820 pc 21476
	addi	%x2, %x2, 92  #1820 pc 21480
	jal	%x1, o_param_r3.2677  #1820 pc 21484
	addi	%x2, %x2, -92  #1820 pc 21488
	lw	%x1, 88(%x2) #1820 pc 21492
	flw	%f1, 40(%x2)  #1820 pc 21496
	fmul	%f0, %f1, %f0  #1820 pc 21500
	lw	%x6, 4(%x2)  #1820 pc 21504
	fsw	%f0, 88(%x2)  #1820 pc 21508
	sw	%x1, 96(%x2)  #1820 pc 21512
	addi	%x2, %x2, 100  #1820 pc 21516
	jal	%x1, o_param_r2.2675  #1820 pc 21520
	addi	%x2, %x2, -100  #1820 pc 21524
	lw	%x1, 96(%x2) #1820 pc 21528
	flw	%f1, 56(%x2)  #1820 pc 21532
	fmul	%f0, %f1, %f0  #1820 pc 21536
	flw	%f2, 88(%x2)  #1820 pc 21540
	fadd	%f0, %f2, %f0  #1820 pc 21544
	sw	%x1, 96(%x2)  #1820 pc 21548
	addi	%x2, %x2, 100  #1820 pc 21552
	jal	%x1, fhalf.2503  #1820 pc 21556
	addi	%x2, %x2, -100  #1820 pc 21560
	lw	%x1, 96(%x2) #1820 pc 21564
	flw	%f1, 64(%x2)  #1820 pc 21568
	fadd	%f0, %f1, %f0  #1820 pc 21572
	lw	%x6, 0(%x2)  #1820 pc 21576
	fsw	%f0, 0(%x6)  #1820 pc 21580
	lw	%x7, 4(%x2)  #1821 pc 21584
	addi	%x6, %x7, 0  #0 pc 21588
	sw	%x1, 96(%x2)  #1821 pc 21592
	addi	%x2, %x2, 100  #1821 pc 21596
	jal	%x1, o_param_r3.2677  #1821 pc 21600
	addi	%x2, %x2, -100  #1821 pc 21604
	lw	%x1, 96(%x2) #1821 pc 21608
	flw	%f1, 24(%x2)  #1821 pc 21612
	fmul	%f0, %f1, %f0  #1821 pc 21616
	lw	%x6, 4(%x2)  #1821 pc 21620
	fsw	%f0, 96(%x2)  #1821 pc 21624
	sw	%x1, 104(%x2)  #1821 pc 21628
	addi	%x2, %x2, 108  #1821 pc 21632
	jal	%x1, o_param_r1.2673  #1821 pc 21636
	addi	%x2, %x2, -108  #1821 pc 21640
	lw	%x1, 104(%x2) #1821 pc 21644
	flw	%f1, 56(%x2)  #1821 pc 21648
	fmul	%f0, %f1, %f0  #1821 pc 21652
	flw	%f1, 96(%x2)  #1821 pc 21656
	fadd	%f0, %f1, %f0  #1821 pc 21660
	sw	%x1, 104(%x2)  #1821 pc 21664
	addi	%x2, %x2, 108  #1821 pc 21668
	jal	%x1, fhalf.2503  #1821 pc 21672
	addi	%x2, %x2, -108  #1821 pc 21676
	lw	%x1, 104(%x2) #1821 pc 21680
	flw	%f1, 72(%x2)  #1821 pc 21684
	fadd	%f0, %f1, %f0  #1821 pc 21688
	lw	%x6, 0(%x2)  #1821 pc 21692
	fsw	%f0, 4(%x6)  #1821 pc 21696
	lw	%x7, 4(%x2)  #1822 pc 21700
	addi	%x6, %x7, 0  #0 pc 21704
	sw	%x1, 104(%x2)  #1822 pc 21708
	addi	%x2, %x2, 108  #1822 pc 21712
	jal	%x1, o_param_r2.2675  #1822 pc 21716
	addi	%x2, %x2, -108  #1822 pc 21720
	lw	%x1, 104(%x2) #1822 pc 21724
	flw	%f1, 24(%x2)  #1822 pc 21728
	fmul	%f0, %f1, %f0  #1822 pc 21732
	lw	%x6, 4(%x2)  #1822 pc 21736
	fsw	%f0, 104(%x2)  #1822 pc 21740
	sw	%x1, 112(%x2)  #1822 pc 21744
	addi	%x2, %x2, 116  #1822 pc 21748
	jal	%x1, o_param_r1.2673  #1822 pc 21752
	addi	%x2, %x2, -116  #1822 pc 21756
	lw	%x1, 112(%x2) #1822 pc 21760
	flw	%f1, 40(%x2)  #1822 pc 21764
	fmul	%f0, %f1, %f0  #1822 pc 21768
	flw	%f1, 104(%x2)  #1822 pc 21772
	fadd	%f0, %f1, %f0  #1822 pc 21776
	sw	%x1, 112(%x2)  #1822 pc 21780
	addi	%x2, %x2, 116  #1822 pc 21784
	jal	%x1, fhalf.2503  #1822 pc 21788
	addi	%x2, %x2, -116  #1822 pc 21792
	lw	%x1, 112(%x2) #1822 pc 21796
	flw	%f1, 80(%x2)  #1822 pc 21800
	fadd	%f0, %f1, %f0  #1822 pc 21804
	lw	%x6, 0(%x2)  #1822 pc 21808
	fsw	%f0, 8(%x6)  #1822 pc 21812
be_cont.9339: #pc 21816
	lw	%x7, 4(%x2)  #1824 pc 21816
	addi	%x6, %x7, 0  #0 pc 21820
	sw	%x1, 112(%x2)  #1824 pc 21824
	addi	%x2, %x2, 116  #1824 pc 21828
	jal	%x1, o_isinvert.2645  #1824 pc 21832
	addi	%x2, %x2, -116  #1824 pc 21836
	lw	%x1, 112(%x2) #1824 pc 21840
	addi	%x7, %x6, 0  #1824 pc 21844
	lw	%x6, 0(%x2)  #1824 pc 21848
	j	vecunit_sgn.2614  #1824 pc 21852
	nop #pc 21856
get_nvector.2905:  #pc 21860
	lw	%x8, 12(%x29)  #1829 pc 21860
	lw	%x9, 8(%x29)  #1829 pc 21864
	lw	%x10, 4(%x29)  #1829 pc 21868
	sw	%x8, 0(%x2)  #1829 pc 21872
	sw	%x6, 4(%x2)  #1829 pc 21876
	sw	%x10, 8(%x2)  #1829 pc 21880
	sw	%x7, 12(%x2)  #1829 pc 21884
	sw	%x9, 16(%x2)  #1829 pc 21888
	sw	%x1, 20(%x2)  #1829 pc 21892
	addi	%x2, %x2, 24  #1829 pc 21896
	jal	%x1, o_form.2641  #1829 pc 21900
	addi	%x2, %x2, -24  #1829 pc 21904
	lw	%x1, 20(%x2) #1829 pc 21908
	addi	%x31, %x0, 1  #pc 21912
	beq	%x6, %x31, 12  #1830 pc 21916
	j	be_else.9340 #pc 21920
	nop #pc 21924
	lw	%x6, 12(%x2)  #1831 pc 21928
	lw	%x29, 16(%x2)  #1831 pc 21932
	lw	%x30, 0(%x29)  #1831 pc 21936
	jalr	%x0, %x30, 0  #1831 pc 21940
	nop #pc 21944
be_else.9340: #pc 21948
	addi	%x31, %x0, 2  #pc 21948
	beq	%x6, %x31, 12  #1832 pc 21952
	j	be_else.9341 #pc 21956
	nop #pc 21960
	lw	%x6, 4(%x2)  #1833 pc 21964
	lw	%x29, 8(%x2)  #1833 pc 21968
	lw	%x30, 0(%x29)  #1833 pc 21972
	jalr	%x0, %x30, 0  #1833 pc 21976
	nop #pc 21980
be_else.9341: #pc 21984
	lw	%x6, 4(%x2)  #1835 pc 21984
	lw	%x29, 0(%x2)  #1835 pc 21988
	lw	%x30, 0(%x29)  #1835 pc 21992
	jalr	%x0, %x30, 0  #1835 pc 21996
	nop #pc 22000
utexture.2908:  #pc 22004
	lw	%x8, 4(%x29)  #1845 pc 22004
	sw	%x7, 0(%x2)  #1845 pc 22008
	sw	%x8, 4(%x2)  #1845 pc 22012
	sw	%x6, 8(%x2)  #1845 pc 22016
	sw	%x1, 12(%x2)  #1845 pc 22020
	addi	%x2, %x2, 16  #1845 pc 22024
	jal	%x1, o_texturetype.2639  #1845 pc 22028
	addi	%x2, %x2, -16  #1845 pc 22032
	lw	%x1, 12(%x2) #1845 pc 22036
	lw	%x7, 8(%x2)  #1847 pc 22040
	sw	%x6, 12(%x2)  #1847 pc 22044
	addi	%x6, %x7, 0  #0 pc 22048
	sw	%x1, 16(%x2)  #1847 pc 22052
	addi	%x2, %x2, 20  #1847 pc 22056
	jal	%x1, o_color_red.2667  #1847 pc 22060
	addi	%x2, %x2, -20  #1847 pc 22064
	lw	%x1, 16(%x2) #1847 pc 22068
	lw	%x6, 4(%x2)  #1847 pc 22072
	fsw	%f0, 0(%x6)  #1847 pc 22076
	lw	%x7, 8(%x2)  #1848 pc 22080
	addi	%x6, %x7, 0  #0 pc 22084
	sw	%x1, 16(%x2)  #1848 pc 22088
	addi	%x2, %x2, 20  #1848 pc 22092
	jal	%x1, o_color_green.2669  #1848 pc 22096
	addi	%x2, %x2, -20  #1848 pc 22100
	lw	%x1, 16(%x2) #1848 pc 22104
	lw	%x6, 4(%x2)  #1848 pc 22108
	fsw	%f0, 4(%x6)  #1848 pc 22112
	lw	%x7, 8(%x2)  #1849 pc 22116
	addi	%x6, %x7, 0  #0 pc 22120
	sw	%x1, 16(%x2)  #1849 pc 22124
	addi	%x2, %x2, 20  #1849 pc 22128
	jal	%x1, o_color_blue.2671  #1849 pc 22132
	addi	%x2, %x2, -20  #1849 pc 22136
	lw	%x1, 16(%x2) #1849 pc 22140
	lw	%x6, 4(%x2)  #1849 pc 22144
	fsw	%f0, 8(%x6)  #1849 pc 22148
	lw	%x7, 12(%x2)  #1850 pc 22152
	addi	%x31, %x0, 1  #pc 22156
	beq	%x7, %x31, 12  #1850 pc 22160
	j	be_else.9342 #pc 22164
	nop #pc 22168
	lw	%x7, 0(%x2)  #1853 pc 22172
	flw	%f0, 0(%x7)  #1853 pc 22176
	lw	%x8, 8(%x2)  #1853 pc 22180
	fsw	%f0, 16(%x2)  #1853 pc 22184
	addi	%x6, %x8, 0  #0 pc 22188
	sw	%x1, 24(%x2)  #1853 pc 22192
	addi	%x2, %x2, 28  #1853 pc 22196
	jal	%x1, o_param_x.2657  #1853 pc 22200
	addi	%x2, %x2, -28  #1853 pc 22204
	lw	%x1, 24(%x2) #1853 pc 22208
	flw	%f1, 16(%x2)  #1853 pc 22212
	fsub	%f0, %f1, %f0  #1853 pc 22216
	fmv	%f1, l.6732  #0 pc 22220
	fmul	%f1, %f0, %f1  #1855 pc 22224
	fsw	%f0, 24(%x2)  #1855 pc 22228
	fadd	%f0, %f1, %f30  #0 pc 22232
	sw	%x1, 32(%x2)  #1855 pc 22236
	addi	%x2, %x2, 36  #1855 pc 22240
	jal	%x1, floor.2514  #1855 pc 22244
	addi	%x2, %x2, -36  #1855 pc 22248
	lw	%x1, 32(%x2) #1855 pc 22252
	fmv	%f1, l.6734  #0 pc 22256
	fmul	%f0, %f0, %f1  #1855 pc 22260
	flw	%f1, 24(%x2)  #1856 pc 22264
	fsub	%f0, %f1, %f0  #1856 pc 22268
	fmv	%f1, l.6715  #0 pc 22272
	sw	%x1, 32(%x2)  #1856 pc 22276
	addi	%x2, %x2, 36  #1856 pc 22280
	jal	%x1, fless.2505  #1856 pc 22284
	addi	%x2, %x2, -36  #1856 pc 22288
	lw	%x1, 32(%x2) #1856 pc 22292
	lw	%x7, 0(%x2)  #1858 pc 22296
	flw	%f0, 8(%x7)  #1858 pc 22300
	lw	%x7, 8(%x2)  #1858 pc 22304
	sw	%x6, 32(%x2)  #1858 pc 22308
	fsw	%f0, 40(%x2)  #1858 pc 22312
	addi	%x6, %x7, 0  #0 pc 22316
	sw	%x1, 48(%x2)  #1858 pc 22320
	addi	%x2, %x2, 52  #1858 pc 22324
	jal	%x1, o_param_z.2661  #1858 pc 22328
	addi	%x2, %x2, -52  #1858 pc 22332
	lw	%x1, 48(%x2) #1858 pc 22336
	flw	%f1, 40(%x2)  #1858 pc 22340
	fsub	%f0, %f1, %f0  #1858 pc 22344
	fmv	%f1, l.6732  #0 pc 22348
	fmul	%f1, %f0, %f1  #1860 pc 22352
	fsw	%f0, 48(%x2)  #1860 pc 22356
	fadd	%f0, %f1, %f30  #0 pc 22360
	sw	%x1, 56(%x2)  #1860 pc 22364
	addi	%x2, %x2, 60  #1860 pc 22368
	jal	%x1, floor.2514  #1860 pc 22372
	addi	%x2, %x2, -60  #1860 pc 22376
	lw	%x1, 56(%x2) #1860 pc 22380
	fmv	%f1, l.6734  #0 pc 22384
	fmul	%f0, %f0, %f1  #1860 pc 22388
	flw	%f1, 48(%x2)  #1861 pc 22392
	fsub	%f0, %f1, %f0  #1861 pc 22396
	fmv	%f1, l.6715  #0 pc 22400
	sw	%x1, 56(%x2)  #1861 pc 22404
	addi	%x2, %x2, 60  #1861 pc 22408
	jal	%x1, fless.2505  #1861 pc 22412
	addi	%x2, %x2, -60  #1861 pc 22416
	lw	%x1, 56(%x2) #1861 pc 22420
	lw	%x7, 32(%x2)  #1864 pc 22424
	beq	%x7, %x0, 12  #1864 pc 22428
	j	be_else.9344 #pc 22432
	nop #pc 22436
	beq	%x6, %x0, 12  #1866 pc 22440
	j	be_else.9346 #pc 22444
	nop #pc 22448
	fmv	%f0, l.6708  #0 pc 22452
	j	be_cont.9347 #pc 22456
	nop #pc 22460
be_else.9346: #pc 22464
	fmv	%f0, l.6207  #0 pc 22464
be_cont.9347: #pc 22468
	j	be_cont.9345 #pc 22468
	nop #pc 22472
be_else.9344: #pc 22476
	beq	%x6, %x0, 12  #1865 pc 22476
	j	be_else.9348 #pc 22480
	nop #pc 22484
	fmv	%f0, l.6207  #0 pc 22488
	j	be_cont.9349 #pc 22492
	nop #pc 22496
be_else.9348: #pc 22500
	fmv	%f0, l.6708  #0 pc 22500
be_cont.9349: #pc 22504
be_cont.9345: #pc 22504
	lw	%x6, 4(%x2)  #1863 pc 22504
	fsw	%f0, 4(%x6)  #1863 pc 22508
	ret #pc 22512
	nop #pc 22516
be_else.9342: #pc 22520
	addi	%x31, %x0, 2  #pc 22520
	beq	%x7, %x31, 12  #1868 pc 22524
	j	be_else.9351 #pc 22528
	nop #pc 22532
	lw	%x7, 0(%x2)  #1871 pc 22536
	flw	%f0, 4(%x7)  #1871 pc 22540
	fmv	%f1, l.6724  #0 pc 22544
	fmul	%f0, %f0, %f1  #1871 pc 22548
	sw	%x1, 56(%x2)  #1871 pc 22552
	addi	%x2, %x2, 60  #1871 pc 22556
	jal	%x1, sin.2508  #1871 pc 22560
	addi	%x2, %x2, -60  #1871 pc 22564
	lw	%x1, 56(%x2) #1871 pc 22568
	sw	%x1, 56(%x2)  #1871 pc 22572
	addi	%x2, %x2, 60  #1871 pc 22576
	jal	%x1, fsqr.2501  #1871 pc 22580
	addi	%x2, %x2, -60  #1871 pc 22584
	lw	%x1, 56(%x2) #1871 pc 22588
	fmv	%f1, l.6708  #0 pc 22592
	fmul	%f1, %f1, %f0  #1872 pc 22596
	lw	%x6, 4(%x2)  #1872 pc 22600
	fsw	%f1, 0(%x6)  #1872 pc 22604
	fmv	%f1, l.6708  #0 pc 22608
	fmv	%f2, l.6219  #0 pc 22612
	fsub	%f0, %f2, %f0  #1873 pc 22616
	fmul	%f0, %f1, %f0  #1873 pc 22620
	fsw	%f0, 4(%x6)  #1873 pc 22624
	ret #pc 22628
	nop #pc 22632
be_else.9351: #pc 22636
	addi	%x31, %x0, 3  #pc 22636
	beq	%x7, %x31, 12  #1875 pc 22640
	j	be_else.9353 #pc 22644
	nop #pc 22648
	lw	%x7, 0(%x2)  #1878 pc 22652
	flw	%f0, 0(%x7)  #1878 pc 22656
	lw	%x8, 8(%x2)  #1878 pc 22660
	fsw	%f0, 56(%x2)  #1878 pc 22664
	addi	%x6, %x8, 0  #0 pc 22668
	sw	%x1, 64(%x2)  #1878 pc 22672
	addi	%x2, %x2, 68  #1878 pc 22676
	jal	%x1, o_param_x.2657  #1878 pc 22680
	addi	%x2, %x2, -68  #1878 pc 22684
	lw	%x1, 64(%x2) #1878 pc 22688
	flw	%f1, 56(%x2)  #1878 pc 22692
	fsub	%f0, %f1, %f0  #1878 pc 22696
	lw	%x6, 0(%x2)  #1879 pc 22700
	flw	%f1, 8(%x6)  #1879 pc 22704
	lw	%x6, 8(%x2)  #1879 pc 22708
	fsw	%f0, 64(%x2)  #1879 pc 22712
	fsw	%f1, 72(%x2)  #1879 pc 22716
	sw	%x1, 80(%x2)  #1879 pc 22720
	addi	%x2, %x2, 84  #1879 pc 22724
	jal	%x1, o_param_z.2661  #1879 pc 22728
	addi	%x2, %x2, -84  #1879 pc 22732
	lw	%x1, 80(%x2) #1879 pc 22736
	flw	%f1, 72(%x2)  #1879 pc 22740
	fsub	%f0, %f1, %f0  #1879 pc 22744
	flw	%f1, 64(%x2)  #1880 pc 22748
	fsw	%f0, 80(%x2)  #1880 pc 22752
	fadd	%f0, %f1, %f30  #0 pc 22756
	sw	%x1, 88(%x2)  #1880 pc 22760
	addi	%x2, %x2, 92  #1880 pc 22764
	jal	%x1, fsqr.2501  #1880 pc 22768
	addi	%x2, %x2, -92  #1880 pc 22772
	lw	%x1, 88(%x2) #1880 pc 22776
	flw	%f1, 80(%x2)  #1880 pc 22780
	fsw	%f0, 88(%x2)  #1880 pc 22784
	fadd	%f0, %f1, %f30  #0 pc 22788
	sw	%x1, 96(%x2)  #1880 pc 22792
	addi	%x2, %x2, 100  #1880 pc 22796
	jal	%x1, fsqr.2501  #1880 pc 22800
	addi	%x2, %x2, -100  #1880 pc 22804
	lw	%x1, 96(%x2) #1880 pc 22808
	flw	%f1, 88(%x2)  #1880 pc 22812
	fadd	%f0, %f1, %f0  #1880 pc 22816
	fmv	%f1, l.6715  #0 pc 22820
	fdiv	%f0, %f0, %f1  #1880 pc 22824
	fsqrt	%f0, %f0  #1880 pc 22828
	fsw	%f0, 96(%x2)  #1881 pc 22832
	sw	%x1, 104(%x2)  #1881 pc 22836
	addi	%x2, %x2, 108  #1881 pc 22840
	jal	%x1, floor.2514  #1881 pc 22844
	addi	%x2, %x2, -108  #1881 pc 22848
	lw	%x1, 104(%x2) #1881 pc 22852
	flw	%f1, 96(%x2)  #1881 pc 22856
	fsub	%f0, %f1, %f0  #1881 pc 22860
	fmv	%f1, l.6696  #0 pc 22864
	fmul	%f0, %f0, %f1  #1881 pc 22868
	sw	%x1, 104(%x2)  #1882 pc 22872
	addi	%x2, %x2, 108  #1882 pc 22876
	jal	%x1, cos.2510  #1882 pc 22880
	addi	%x2, %x2, -108  #1882 pc 22884
	lw	%x1, 104(%x2) #1882 pc 22888
	sw	%x1, 104(%x2)  #1882 pc 22892
	addi	%x2, %x2, 108  #1882 pc 22896
	jal	%x1, fsqr.2501  #1882 pc 22900
	addi	%x2, %x2, -108  #1882 pc 22904
	lw	%x1, 104(%x2) #1882 pc 22908
	fmv	%f1, l.6708  #0 pc 22912
	fmul	%f1, %f0, %f1  #1883 pc 22916
	lw	%x6, 4(%x2)  #1883 pc 22920
	fsw	%f1, 4(%x6)  #1883 pc 22924
	fmv	%f1, l.6219  #0 pc 22928
	fsub	%f0, %f1, %f0  #1884 pc 22932
	fmv	%f1, l.6708  #0 pc 22936
	fmul	%f0, %f0, %f1  #1884 pc 22940
	fsw	%f0, 8(%x6)  #1884 pc 22944
	ret #pc 22948
	nop #pc 22952
be_else.9353: #pc 22956
	addi	%x31, %x0, 4  #pc 22956
	beq	%x7, %x31, 12  #1886 pc 22960
	j	be_else.9355 #pc 22964
	nop #pc 22968
	lw	%x7, 0(%x2)  #1888 pc 22972
	flw	%f0, 0(%x7)  #1888 pc 22976
	lw	%x8, 8(%x2)  #1888 pc 22980
	fsw	%f0, 104(%x2)  #1888 pc 22984
	addi	%x6, %x8, 0  #0 pc 22988
	sw	%x1, 112(%x2)  #1888 pc 22992
	addi	%x2, %x2, 116  #1888 pc 22996
	jal	%x1, o_param_x.2657  #1888 pc 23000
	addi	%x2, %x2, -116  #1888 pc 23004
	lw	%x1, 112(%x2) #1888 pc 23008
	flw	%f1, 104(%x2)  #1888 pc 23012
	fsub	%f0, %f1, %f0  #1888 pc 23016
	lw	%x6, 8(%x2)  #1888 pc 23020
	fsw	%f0, 112(%x2)  #1888 pc 23024
	sw	%x1, 120(%x2)  #1888 pc 23028
	addi	%x2, %x2, 124  #1888 pc 23032
	jal	%x1, o_param_a.2649  #1888 pc 23036
	addi	%x2, %x2, -124  #1888 pc 23040
	lw	%x1, 120(%x2) #1888 pc 23044
	fsqrt	%f0, %f0  #1888 pc 23048
	flw	%f1, 112(%x2)  #1888 pc 23052
	fmul	%f0, %f1, %f0  #1888 pc 23056
	lw	%x6, 0(%x2)  #1889 pc 23060
	flw	%f1, 8(%x6)  #1889 pc 23064
	lw	%x7, 8(%x2)  #1889 pc 23068
	fsw	%f0, 120(%x2)  #1889 pc 23072
	fsw	%f1, 128(%x2)  #1889 pc 23076
	addi	%x6, %x7, 0  #0 pc 23080
	sw	%x1, 136(%x2)  #1889 pc 23084
	addi	%x2, %x2, 140  #1889 pc 23088
	jal	%x1, o_param_z.2661  #1889 pc 23092
	addi	%x2, %x2, -140  #1889 pc 23096
	lw	%x1, 136(%x2) #1889 pc 23100
	flw	%f1, 128(%x2)  #1889 pc 23104
	fsub	%f0, %f1, %f0  #1889 pc 23108
	lw	%x6, 8(%x2)  #1889 pc 23112
	fsw	%f0, 136(%x2)  #1889 pc 23116
	sw	%x1, 144(%x2)  #1889 pc 23120
	addi	%x2, %x2, 148  #1889 pc 23124
	jal	%x1, o_param_c.2653  #1889 pc 23128
	addi	%x2, %x2, -148  #1889 pc 23132
	lw	%x1, 144(%x2) #1889 pc 23136
	fsqrt	%f0, %f0  #1889 pc 23140
	flw	%f1, 136(%x2)  #1889 pc 23144
	fmul	%f0, %f1, %f0  #1889 pc 23148
	flw	%f1, 120(%x2)  #1890 pc 23152
	fsw	%f0, 144(%x2)  #1890 pc 23156
	fadd	%f0, %f1, %f30  #0 pc 23160
	sw	%x1, 152(%x2)  #1890 pc 23164
	addi	%x2, %x2, 156  #1890 pc 23168
	jal	%x1, fsqr.2501  #1890 pc 23172
	addi	%x2, %x2, -156  #1890 pc 23176
	lw	%x1, 152(%x2) #1890 pc 23180
	flw	%f1, 144(%x2)  #1890 pc 23184
	fsw	%f0, 152(%x2)  #1890 pc 23188
	fadd	%f0, %f1, %f30  #0 pc 23192
	sw	%x1, 160(%x2)  #1890 pc 23196
	addi	%x2, %x2, 164  #1890 pc 23200
	jal	%x1, fsqr.2501  #1890 pc 23204
	addi	%x2, %x2, -164  #1890 pc 23208
	lw	%x1, 160(%x2) #1890 pc 23212
	flw	%f1, 152(%x2)  #1890 pc 23216
	fadd	%f0, %f1, %f0  #1890 pc 23220
	flw	%f1, 120(%x2)  #1892 pc 23224
	fabs	%f2, %f1  #1892 pc 23228
	fmv	%f3, l.6690  #0 pc 23232
	fsw	%f0, 160(%x2)  #1892 pc 23236
	fadd	%f1, %f3, %f30  #0 pc 23240
	fadd	%f0, %f2, %f30  #0 pc 23244
	sw	%x1, 168(%x2)  #1892 pc 23248
	addi	%x2, %x2, 172  #1892 pc 23252
	jal	%x1, fless.2505  #1892 pc 23256
	addi	%x2, %x2, -172  #1892 pc 23260
	lw	%x1, 168(%x2) #1892 pc 23264
	beq	%x6, %x0, 12  #1892 pc 23268
	j	be_else.9356 #pc 23272
	nop #pc 23276
	flw	%f0, 120(%x2)  #1895 pc 23280
	flw	%f1, 144(%x2)  #1895 pc 23284
	fdiv	%f0, %f1, %f0  #1895 pc 23288
	fabs	%f0, %f0  #1895 pc 23292
	sw	%x1, 168(%x2)  #1897 pc 23296
	addi	%x2, %x2, 172  #1897 pc 23300
	jal	%x1, atan.2512  #1897 pc 23304
	addi	%x2, %x2, -172  #1897 pc 23308
	lw	%x1, 168(%x2) #1897 pc 23312
	fmv	%f1, l.6694  #0 pc 23316
	fmul	%f0, %f0, %f1  #1897 pc 23320
	fmv	%f1, l.6696  #0 pc 23324
	fdiv	%f0, %f0, %f1  #1897 pc 23328
	j	be_cont.9357 #pc 23332
	nop #pc 23336
be_else.9356: #pc 23340
	fmv	%f0, l.6692  #0 pc 23340
be_cont.9357: #pc 23344
	fsw	%f0, 168(%x2)  #1899 pc 23344
	sw	%x1, 176(%x2)  #1899 pc 23348
	addi	%x2, %x2, 180  #1899 pc 23352
	jal	%x1, floor.2514  #1899 pc 23356
	addi	%x2, %x2, -180  #1899 pc 23360
	lw	%x1, 176(%x2) #1899 pc 23364
	flw	%f1, 168(%x2)  #1899 pc 23368
	fsub	%f0, %f1, %f0  #1899 pc 23372
	lw	%x6, 0(%x2)  #1901 pc 23376
	flw	%f1, 4(%x6)  #1901 pc 23380
	lw	%x6, 8(%x2)  #1901 pc 23384
	fsw	%f0, 176(%x2)  #1901 pc 23388
	fsw	%f1, 184(%x2)  #1901 pc 23392
	sw	%x1, 192(%x2)  #1901 pc 23396
	addi	%x2, %x2, 196  #1901 pc 23400
	jal	%x1, o_param_y.2659  #1901 pc 23404
	addi	%x2, %x2, -196  #1901 pc 23408
	lw	%x1, 192(%x2) #1901 pc 23412
	flw	%f1, 184(%x2)  #1901 pc 23416
	fsub	%f0, %f1, %f0  #1901 pc 23420
	lw	%x6, 8(%x2)  #1901 pc 23424
	fsw	%f0, 192(%x2)  #1901 pc 23428
	sw	%x1, 200(%x2)  #1901 pc 23432
	addi	%x2, %x2, 204  #1901 pc 23436
	jal	%x1, o_param_b.2651  #1901 pc 23440
	addi	%x2, %x2, -204  #1901 pc 23444
	lw	%x1, 200(%x2) #1901 pc 23448
	fsqrt	%f0, %f0  #1901 pc 23452
	flw	%f1, 192(%x2)  #1901 pc 23456
	fmul	%f0, %f1, %f0  #1901 pc 23460
	flw	%f1, 160(%x2)  #1903 pc 23464
	fabs	%f2, %f1  #1903 pc 23468
	fmv	%f3, l.6690  #0 pc 23472
	fsw	%f0, 200(%x2)  #1903 pc 23476
	fadd	%f1, %f3, %f30  #0 pc 23480
	fadd	%f0, %f2, %f30  #0 pc 23484
	sw	%x1, 208(%x2)  #1903 pc 23488
	addi	%x2, %x2, 212  #1903 pc 23492
	jal	%x1, fless.2505  #1903 pc 23496
	addi	%x2, %x2, -212  #1903 pc 23500
	lw	%x1, 208(%x2) #1903 pc 23504
	beq	%x6, %x0, 12  #1903 pc 23508
	j	be_else.9358 #pc 23512
	nop #pc 23516
	flw	%f0, 160(%x2)  #1906 pc 23520
	flw	%f1, 200(%x2)  #1906 pc 23524
	fdiv	%f0, %f1, %f0  #1906 pc 23528
	fabs	%f0, %f0  #1906 pc 23532
	sw	%x1, 208(%x2)  #1907 pc 23536
	addi	%x2, %x2, 212  #1907 pc 23540
	jal	%x1, atan.2512  #1907 pc 23544
	addi	%x2, %x2, -212  #1907 pc 23548
	lw	%x1, 208(%x2) #1907 pc 23552
	fmv	%f1, l.6694  #0 pc 23556
	fmul	%f0, %f0, %f1  #1907 pc 23560
	fmv	%f1, l.6696  #0 pc 23564
	fdiv	%f0, %f0, %f1  #1907 pc 23568
	j	be_cont.9359 #pc 23572
	nop #pc 23576
be_else.9358: #pc 23580
	fmv	%f0, l.6692  #0 pc 23580
be_cont.9359: #pc 23584
	fsw	%f0, 208(%x2)  #1909 pc 23584
	sw	%x1, 216(%x2)  #1909 pc 23588
	addi	%x2, %x2, 220  #1909 pc 23592
	jal	%x1, floor.2514  #1909 pc 23596
	addi	%x2, %x2, -220  #1909 pc 23600
	lw	%x1, 216(%x2) #1909 pc 23604
	flw	%f1, 208(%x2)  #1909 pc 23608
	fsub	%f0, %f1, %f0  #1909 pc 23612
	fmv	%f1, l.6703  #0 pc 23616
	fmv	%f2, l.6211  #0 pc 23620
	flw	%f3, 176(%x2)  #1910 pc 23624
	fsub	%f2, %f2, %f3  #1910 pc 23628
	fsw	%f0, 216(%x2)  #1910 pc 23632
	fsw	%f1, 224(%x2)  #1910 pc 23636
	fadd	%f0, %f2, %f30  #0 pc 23640
	sw	%x1, 232(%x2)  #1910 pc 23644
	addi	%x2, %x2, 236  #1910 pc 23648
	jal	%x1, fsqr.2501  #1910 pc 23652
	addi	%x2, %x2, -236  #1910 pc 23656
	lw	%x1, 232(%x2) #1910 pc 23660
	flw	%f1, 224(%x2)  #1910 pc 23664
	fsub	%f0, %f1, %f0  #1910 pc 23668
	fmv	%f1, l.6211  #0 pc 23672
	flw	%f2, 216(%x2)  #1910 pc 23676
	fsub	%f1, %f1, %f2  #1910 pc 23680
	fsw	%f0, 232(%x2)  #1910 pc 23684
	fadd	%f0, %f1, %f30  #0 pc 23688
	sw	%x1, 240(%x2)  #1910 pc 23692
	addi	%x2, %x2, 244  #1910 pc 23696
	jal	%x1, fsqr.2501  #1910 pc 23700
	addi	%x2, %x2, -244  #1910 pc 23704
	lw	%x1, 240(%x2) #1910 pc 23708
	flw	%f1, 232(%x2)  #1910 pc 23712
	fsub	%f0, %f1, %f0  #1910 pc 23716
	fsw	%f0, 240(%x2)  #1911 pc 23720
	sw	%x1, 248(%x2)  #1911 pc 23724
	addi	%x2, %x2, 252  #1911 pc 23728
	jal	%x1, fisneg.2497  #1911 pc 23732
	addi	%x2, %x2, -252  #1911 pc 23736
	lw	%x1, 248(%x2) #1911 pc 23740
	beq	%x6, %x0, 12  #1911 pc 23744
	j	be_else.9360 #pc 23748
	nop #pc 23752
	flw	%f0, 240(%x2)  #1911 pc 23756
	j	be_cont.9361 #pc 23760
	nop #pc 23764
be_else.9360: #pc 23768
	fmv	%f0, l.6207  #0 pc 23768
be_cont.9361: #pc 23772
	fmv	%f1, l.6708  #0 pc 23772
	fmul	%f0, %f1, %f0  #1912 pc 23776
	fmv	%f1, l.6710  #0 pc 23780
	fdiv	%f0, %f0, %f1  #1912 pc 23784
	lw	%x6, 4(%x2)  #1912 pc 23788
	fsw	%f0, 8(%x6)  #1912 pc 23792
	ret #pc 23796
	nop #pc 23800
be_else.9355: #pc 23804
	ret #pc 23804
	nop #pc 23808
add_light.2911:  #pc 23812
	lw	%x6, 8(%x29)  #0 pc 23812
	lw	%x7, 4(%x29)  #0 pc 23816
	fsw	%f2, 0(%x2)  #1925 pc 23820
	fsw	%f1, 8(%x2)  #1925 pc 23824
	fsw	%f0, 16(%x2)  #1925 pc 23828
	sw	%x6, 24(%x2)  #1925 pc 23832
	sw	%x7, 28(%x2)  #1925 pc 23836
	sw	%x1, 32(%x2)  #1925 pc 23840
	addi	%x2, %x2, 36  #1925 pc 23844
	jal	%x1, fispos.2495  #1925 pc 23848
	addi	%x2, %x2, -36  #1925 pc 23852
	lw	%x1, 32(%x2) #1925 pc 23856
	beq	%x6, %x0, 12  #1925 pc 23860
	j	be_else.9364 #pc 23864
	nop #pc 23868
	j	be_cont.9365 #pc 23872
	nop #pc 23876
be_else.9364: #pc 23880
	flw	%f0, 16(%x2)  #1926 pc 23880
	lw	%x6, 28(%x2)  #1926 pc 23884
	lw	%x7, 24(%x2)  #1926 pc 23888
	sw	%x1, 32(%x2)  #1926 pc 23892
	addi	%x2, %x2, 36  #1926 pc 23896
	jal	%x1, vecaccum.2625  #1926 pc 23900
	addi	%x2, %x2, -36  #1926 pc 23904
	lw	%x1, 32(%x2) #1926 pc 23908
be_cont.9365: #pc 23912
	flw	%f0, 8(%x2)  #1930 pc 23912
	sw	%x1, 32(%x2)  #1930 pc 23916
	addi	%x2, %x2, 36  #1930 pc 23920
	jal	%x1, fispos.2495  #1930 pc 23924
	addi	%x2, %x2, -36  #1930 pc 23928
	lw	%x1, 32(%x2) #1930 pc 23932
	beq	%x6, %x0, 12  #1930 pc 23936
	j	be_else.9366 #pc 23940
	nop #pc 23944
	ret #pc 23948
	nop #pc 23952
be_else.9366: #pc 23956
	flw	%f0, 8(%x2)  #1931 pc 23956
	sw	%x1, 32(%x2)  #1931 pc 23960
	addi	%x2, %x2, 36  #1931 pc 23964
	jal	%x1, fsqr.2501  #1931 pc 23968
	addi	%x2, %x2, -36  #1931 pc 23972
	lw	%x1, 32(%x2) #1931 pc 23976
	sw	%x1, 32(%x2)  #1931 pc 23980
	addi	%x2, %x2, 36  #1931 pc 23984
	jal	%x1, fsqr.2501  #1931 pc 23988
	addi	%x2, %x2, -36  #1931 pc 23992
	lw	%x1, 32(%x2) #1931 pc 23996
	flw	%f1, 0(%x2)  #1931 pc 24000
	fmul	%f0, %f0, %f1  #1931 pc 24004
	lw	%x6, 28(%x2)  #1932 pc 24008
	flw	%f1, 0(%x6)  #1932 pc 24012
	fadd	%f1, %f1, %f0  #1932 pc 24016
	fsw	%f1, 0(%x6)  #1932 pc 24020
	flw	%f1, 4(%x6)  #1933 pc 24024
	fadd	%f1, %f1, %f0  #1933 pc 24028
	fsw	%f1, 4(%x6)  #1933 pc 24032
	flw	%f1, 8(%x6)  #1934 pc 24036
	fadd	%f0, %f1, %f0  #1934 pc 24040
	fsw	%f0, 8(%x6)  #1934 pc 24044
	ret #pc 24048
	nop #pc 24052
trace_reflections.2915:  #pc 24056
	lw	%x8, 32(%x29)  #0 pc 24056
	lw	%x9, 28(%x29)  #0 pc 24060
	lw	%x10, 24(%x29)  #0 pc 24064
	lw	%x11, 20(%x29)  #0 pc 24068
	lw	%x12, 16(%x29)  #0 pc 24072
	lw	%x13, 12(%x29)  #0 pc 24076
	lw	%x14, 8(%x29)  #0 pc 24080
	lw	%x15, 4(%x29)  #0 pc 24084
	bge	%x6, %x0, 12  #1941 pc 24088
	j	bge_else.9369 #pc 24092
	nop #pc 24096
	slli	%x16, %x6, 2  #1942 pc 24100
	add	%x31, %x16, %x9  #1942 pc 24104
	lw	%x9, 0(%x31)  #1942 pc 24108
	sw	%x29, 0(%x2)  #1943 pc 24112
	sw	%x6, 4(%x2)  #1943 pc 24116
	fsw	%f1, 8(%x2)  #1943 pc 24120
	sw	%x15, 16(%x2)  #1943 pc 24124
	sw	%x7, 20(%x2)  #1943 pc 24128
	fsw	%f0, 24(%x2)  #1943 pc 24132
	sw	%x11, 32(%x2)  #1943 pc 24136
	sw	%x8, 36(%x2)  #1943 pc 24140
	sw	%x10, 40(%x2)  #1943 pc 24144
	sw	%x9, 44(%x2)  #1943 pc 24148
	sw	%x13, 48(%x2)  #1943 pc 24152
	sw	%x14, 52(%x2)  #1943 pc 24156
	sw	%x12, 56(%x2)  #1943 pc 24160
	addi	%x6, %x9, 0  #0 pc 24164
	sw	%x1, 60(%x2)  #1943 pc 24168
	addi	%x2, %x2, 64  #1943 pc 24172
	jal	%x1, r_dvec.2706  #1943 pc 24176
	addi	%x2, %x2, -64  #1943 pc 24180
	lw	%x1, 60(%x2) #1943 pc 24184
	lw	%x29, 56(%x2)  #1946 pc 24188
	sw	%x6, 60(%x2)  #1946 pc 24192
	sw	%x1, 64(%x2)  #1946 pc 24196
	lw	%x30, 0(%x29)  #1946 pc 24200
	addi	%x2, %x2, 68  #1946 pc 24204
	jalr	%x1, %x30, 0  #1946 pc 24208
	addi	%x2, %x2, -68  #1946 pc 24212
	lw	%x1, 64(%x2)  #1946 pc 24216
	beq	%x6, %x0, 12  #1946 pc 24220
	j	be_else.9370 #pc 24224
	nop #pc 24228
	j	be_cont.9371 #pc 24232
	nop #pc 24236
be_else.9370: #pc 24240
	lw	%x6, 52(%x2)  #1947 pc 24240
	lw	%x6, 0(%x6)  #1947 pc 24244
	addi	%x7, %x0, 4  #0 pc 24248
	sw	%x1, 64(%x2)  #1947 pc 24252
	addi	%x2, %x2, 68  #1947 pc 24256
	jal	%x1, mul.2527  #1947 pc 24260
	addi	%x2, %x2, -68  #1947 pc 24264
	lw	%x1, 64(%x2) #1947 pc 24268
	lw	%x7, 48(%x2)  #1947 pc 24272
	lw	%x7, 0(%x7)  #1947 pc 24276
	add	%x6, %x6, %x7  #1947 pc 24280
	lw	%x7, 44(%x2)  #1948 pc 24284
	sw	%x6, 64(%x2)  #1948 pc 24288
	addi	%x6, %x7, 0  #0 pc 24292
	sw	%x1, 68(%x2)  #1948 pc 24296
	addi	%x2, %x2, 72  #1948 pc 24300
	jal	%x1, r_surface_id.2704  #1948 pc 24304
	addi	%x2, %x2, -72  #1948 pc 24308
	lw	%x1, 68(%x2) #1948 pc 24312
	lw	%x7, 64(%x2)  #1948 pc 24316
	beq	%x7, %x6, 12  #1948 pc 24320
	j	be_else.9372 #pc 24324
	nop #pc 24328
	addi	%x6, %x0, 0  #0 pc 24332
	lw	%x7, 40(%x2)  #1950 pc 24336
	lw	%x7, 0(%x7)  #1950 pc 24340
	lw	%x29, 36(%x2)  #1950 pc 24344
	sw	%x1, 68(%x2)  #1950 pc 24348
	lw	%x30, 0(%x29)  #1950 pc 24352
	addi	%x2, %x2, 72  #1950 pc 24356
	jalr	%x1, %x30, 0  #1950 pc 24360
	addi	%x2, %x2, -72  #1950 pc 24364
	lw	%x1, 68(%x2)  #1950 pc 24368
	beq	%x6, %x0, 12  #1950 pc 24372
	j	be_else.9374 #pc 24376
	nop #pc 24380
	lw	%x6, 60(%x2)  #1952 pc 24384
	sw	%x1, 68(%x2)  #1952 pc 24388
	addi	%x2, %x2, 72  #1952 pc 24392
	jal	%x1, d_vec.2700  #1952 pc 24396
	addi	%x2, %x2, -72  #1952 pc 24400
	lw	%x1, 68(%x2) #1952 pc 24404
	addi	%x7, %x6, 0  #1952 pc 24408
	lw	%x6, 32(%x2)  #1952 pc 24412
	sw	%x1, 68(%x2)  #1952 pc 24416
	addi	%x2, %x2, 72  #1952 pc 24420
	jal	%x1, veciprod.2617  #1952 pc 24424
	addi	%x2, %x2, -72  #1952 pc 24428
	lw	%x1, 68(%x2) #1952 pc 24432
	lw	%x6, 44(%x2)  #1953 pc 24436
	fsw	%f0, 72(%x2)  #1953 pc 24440
	sw	%x1, 80(%x2)  #1953 pc 24444
	addi	%x2, %x2, 84  #1953 pc 24448
	jal	%x1, r_bright.2708  #1953 pc 24452
	addi	%x2, %x2, -84  #1953 pc 24456
	lw	%x1, 80(%x2) #1953 pc 24460
	flw	%f1, 24(%x2)  #1954 pc 24464
	fmul	%f2, %f0, %f1  #1954 pc 24468
	flw	%f3, 72(%x2)  #1954 pc 24472
	fmul	%f2, %f2, %f3  #1954 pc 24476
	lw	%x6, 60(%x2)  #1955 pc 24480
	fsw	%f2, 80(%x2)  #1955 pc 24484
	fsw	%f0, 88(%x2)  #1955 pc 24488
	sw	%x1, 96(%x2)  #1955 pc 24492
	addi	%x2, %x2, 100  #1955 pc 24496
	jal	%x1, d_vec.2700  #1955 pc 24500
	addi	%x2, %x2, -100  #1955 pc 24504
	lw	%x1, 96(%x2) #1955 pc 24508
	addi	%x7, %x6, 0  #1955 pc 24512
	lw	%x6, 20(%x2)  #1955 pc 24516
	sw	%x1, 96(%x2)  #1955 pc 24520
	addi	%x2, %x2, 100  #1955 pc 24524
	jal	%x1, veciprod.2617  #1955 pc 24528
	addi	%x2, %x2, -100  #1955 pc 24532
	lw	%x1, 96(%x2) #1955 pc 24536
	flw	%f1, 88(%x2)  #1955 pc 24540
	fmul	%f1, %f1, %f0  #1955 pc 24544
	flw	%f0, 80(%x2)  #1956 pc 24548
	flw	%f2, 8(%x2)  #1956 pc 24552
	lw	%x29, 16(%x2)  #1956 pc 24556
	sw	%x1, 96(%x2)  #1956 pc 24560
	lw	%x30, 0(%x29)  #1956 pc 24564
	addi	%x2, %x2, 100  #1956 pc 24568
	jalr	%x1, %x30, 0  #1956 pc 24572
	addi	%x2, %x2, -100  #1956 pc 24576
	lw	%x1, 96(%x2)  #1956 pc 24580
	j	be_cont.9375 #pc 24584
	nop #pc 24588
be_else.9374: #pc 24592
be_cont.9375: #pc 24592
	j	be_cont.9373 #pc 24592
	nop #pc 24596
be_else.9372: #pc 24600
be_cont.9373: #pc 24600
be_cont.9371: #pc 24600
	lw	%x6, 4(%x2)  #1960 pc 24600
	addi	%x6, %x6, -1  #1960 pc 24604
	flw	%f0, 24(%x2)  #1960 pc 24608
	flw	%f1, 8(%x2)  #1960 pc 24612
	lw	%x7, 20(%x2)  #1960 pc 24616
	lw	%x29, 0(%x2)  #1960 pc 24620
	lw	%x30, 0(%x29)  #1960 pc 24624
	jalr	%x0, %x30, 0  #1960 pc 24628
	nop #pc 24632
bge_else.9369: #pc 24636
	ret #pc 24636
	nop #pc 24640
trace_ray.2920:  #pc 24644
	lw	%x9, 80(%x29)  #0 pc 24644
	lw	%x10, 76(%x29)  #0 pc 24648
	lw	%x11, 72(%x29)  #0 pc 24652
	lw	%x12, 68(%x29)  #0 pc 24656
	lw	%x13, 64(%x29)  #0 pc 24660
	lw	%x14, 60(%x29)  #0 pc 24664
	lw	%x15, 56(%x29)  #0 pc 24668
	lw	%x16, 52(%x29)  #0 pc 24672
	lw	%x17, 48(%x29)  #0 pc 24676
	lw	%x18, 44(%x29)  #0 pc 24680
	lw	%x19, 40(%x29)  #0 pc 24684
	lw	%x20, 36(%x29)  #0 pc 24688
	lw	%x21, 32(%x29)  #0 pc 24692
	lw	%x22, 28(%x29)  #0 pc 24696
	lw	%x23, 24(%x29)  #0 pc 24700
	lw	%x24, 20(%x29)  #0 pc 24704
	lw	%x25, 16(%x29)  #0 pc 24708
	lw	%x26, 12(%x29)  #0 pc 24712
	lw	%x27, 8(%x29)  #0 pc 24716
	lw	%x28, 4(%x29)  #0 pc 24720
	addi	%x31, %x0, 4  #pc 24724
	bge	%x31, %x6, 12  #1969 pc 24728
	j	ble_else.9378 #pc 24732
	nop #pc 24736
	sw	%x29, 0(%x2)  #1970 pc 24740
	fsw	%f1, 8(%x2)  #1970 pc 24744
	sw	%x11, 16(%x2)  #1970 pc 24748
	sw	%x10, 20(%x2)  #1970 pc 24752
	sw	%x20, 24(%x2)  #1970 pc 24756
	sw	%x15, 28(%x2)  #1970 pc 24760
	sw	%x28, 32(%x2)  #1970 pc 24764
	sw	%x14, 36(%x2)  #1970 pc 24768
	sw	%x17, 40(%x2)  #1970 pc 24772
	sw	%x19, 44(%x2)  #1970 pc 24776
	sw	%x12, 48(%x2)  #1970 pc 24780
	sw	%x8, 52(%x2)  #1970 pc 24784
	sw	%x23, 56(%x2)  #1970 pc 24788
	sw	%x9, 60(%x2)  #1970 pc 24792
	sw	%x24, 64(%x2)  #1970 pc 24796
	sw	%x13, 68(%x2)  #1970 pc 24800
	sw	%x26, 72(%x2)  #1970 pc 24804
	sw	%x18, 76(%x2)  #1970 pc 24808
	sw	%x25, 80(%x2)  #1970 pc 24812
	sw	%x16, 84(%x2)  #1970 pc 24816
	sw	%x27, 88(%x2)  #1970 pc 24820
	fsw	%f0, 96(%x2)  #1970 pc 24824
	sw	%x21, 104(%x2)  #1970 pc 24828
	sw	%x6, 108(%x2)  #1970 pc 24832
	sw	%x7, 112(%x2)  #1970 pc 24836
	sw	%x22, 116(%x2)  #1970 pc 24840
	addi	%x6, %x8, 0  #0 pc 24844
	sw	%x1, 120(%x2)  #1970 pc 24848
	addi	%x2, %x2, 124  #1970 pc 24852
	jal	%x1, p_surface_ids.2685  #1970 pc 24856
	addi	%x2, %x2, -124  #1970 pc 24860
	lw	%x1, 120(%x2) #1970 pc 24864
	lw	%x7, 112(%x2)  #1971 pc 24868
	lw	%x29, 116(%x2)  #1971 pc 24872
	sw	%x6, 120(%x2)  #1971 pc 24876
	addi	%x6, %x7, 0  #0 pc 24880
	sw	%x1, 124(%x2)  #1971 pc 24884
	lw	%x30, 0(%x29)  #1971 pc 24888
	addi	%x2, %x2, 128  #1971 pc 24892
	jalr	%x1, %x30, 0  #1971 pc 24896
	addi	%x2, %x2, -128  #1971 pc 24900
	lw	%x1, 124(%x2)  #1971 pc 24904
	beq	%x6, %x0, 12  #1971 pc 24908
	j	be_else.9381 #pc 24912
	nop #pc 24916
	addi	%x6, %x0, -1  #0 pc 24920
	lw	%x7, 108(%x2)  #2034 pc 24924
	slli	%x8, %x7, 2  #2034 pc 24928
	lw	%x9, 120(%x2)  #2034 pc 24932
	add	%x31, %x8, %x9  #2034 pc 24936
	sw	%x6, 0(%x31)  #2034 pc 24940
	beq	%x7, %x0, 12  #2036 pc 24944
	j	be_else.9382 #pc 24948
	nop #pc 24952
	ret #pc 24956
	nop #pc 24960
be_else.9382: #pc 24964
	lw	%x6, 112(%x2)  #2037 pc 24964
	lw	%x7, 104(%x2)  #2037 pc 24968
	sw	%x1, 124(%x2)  #2037 pc 24972
	addi	%x2, %x2, 128  #2037 pc 24976
	jal	%x1, veciprod.2617  #2037 pc 24980
	addi	%x2, %x2, -128  #2037 pc 24984
	lw	%x1, 124(%x2) #2037 pc 24988
	sw	%x1, 124(%x2)  #2037 pc 24992
	addi	%x2, %x2, 128  #2037 pc 24996
	jal	%x1, fneg.2499  #2037 pc 25000
	addi	%x2, %x2, -128  #2037 pc 25004
	lw	%x1, 124(%x2) #2037 pc 25008
	fsw	%f0, 128(%x2)  #2039 pc 25012
	sw	%x1, 136(%x2)  #2039 pc 25016
	addi	%x2, %x2, 140  #2039 pc 25020
	jal	%x1, fispos.2495  #2039 pc 25024
	addi	%x2, %x2, -140  #2039 pc 25028
	lw	%x1, 136(%x2) #2039 pc 25032
	beq	%x6, %x0, 12  #2039 pc 25036
	j	be_else.9385 #pc 25040
	nop #pc 25044
	ret #pc 25048
	nop #pc 25052
be_else.9385: #pc 25056
	flw	%f0, 128(%x2)  #2042 pc 25056
	sw	%x1, 136(%x2)  #2042 pc 25060
	addi	%x2, %x2, 140  #2042 pc 25064
	jal	%x1, fsqr.2501  #2042 pc 25068
	addi	%x2, %x2, -140  #2042 pc 25072
	lw	%x1, 136(%x2) #2042 pc 25076
	flw	%f1, 128(%x2)  #2042 pc 25080
	fmul	%f0, %f0, %f1  #2042 pc 25084
	flw	%f1, 96(%x2)  #2042 pc 25088
	fmul	%f0, %f0, %f1  #2042 pc 25092
	lw	%x6, 88(%x2)  #2042 pc 25096
	flw	%f1, 0(%x6)  #2042 pc 25100
	fmul	%f0, %f0, %f1  #2042 pc 25104
	lw	%x6, 84(%x2)  #2043 pc 25108
	flw	%f1, 0(%x6)  #2043 pc 25112
	fadd	%f1, %f1, %f0  #2043 pc 25116
	fsw	%f1, 0(%x6)  #2043 pc 25120
	flw	%f1, 4(%x6)  #2044 pc 25124
	fadd	%f1, %f1, %f0  #2044 pc 25128
	fsw	%f1, 4(%x6)  #2044 pc 25132
	flw	%f1, 8(%x6)  #2045 pc 25136
	fadd	%f0, %f1, %f0  #2045 pc 25140
	fsw	%f0, 8(%x6)  #2045 pc 25144
	ret #pc 25148
	nop #pc 25152
be_else.9381: #pc 25156
	lw	%x6, 80(%x2)  #1973 pc 25156
	lw	%x6, 0(%x6)  #1973 pc 25160
	slli	%x7, %x6, 2  #1974 pc 25164
	lw	%x8, 76(%x2)  #1974 pc 25168
	add	%x31, %x7, %x8  #1974 pc 25172
	lw	%x7, 0(%x31)  #1974 pc 25176
	sw	%x6, 136(%x2)  #1975 pc 25180
	sw	%x7, 140(%x2)  #1975 pc 25184
	addi	%x6, %x7, 0  #0 pc 25188
	sw	%x1, 144(%x2)  #1975 pc 25192
	addi	%x2, %x2, 148  #1975 pc 25196
	jal	%x1, o_reflectiontype.2643  #1975 pc 25200
	addi	%x2, %x2, -148  #1975 pc 25204
	lw	%x1, 144(%x2) #1975 pc 25208
	lw	%x7, 140(%x2)  #1976 pc 25212
	sw	%x6, 144(%x2)  #1976 pc 25216
	addi	%x6, %x7, 0  #0 pc 25220
	sw	%x1, 148(%x2)  #1976 pc 25224
	addi	%x2, %x2, 152  #1976 pc 25228
	jal	%x1, o_diffuse.2663  #1976 pc 25232
	addi	%x2, %x2, -152  #1976 pc 25236
	lw	%x1, 148(%x2) #1976 pc 25240
	flw	%f1, 96(%x2)  #1976 pc 25244
	fmul	%f0, %f0, %f1  #1976 pc 25248
	lw	%x6, 140(%x2)  #1978 pc 25252
	lw	%x7, 112(%x2)  #1978 pc 25256
	lw	%x29, 72(%x2)  #1978 pc 25260
	fsw	%f0, 152(%x2)  #1978 pc 25264
	sw	%x1, 160(%x2)  #1978 pc 25268
	lw	%x30, 0(%x29)  #1978 pc 25272
	addi	%x2, %x2, 164  #1978 pc 25276
	jalr	%x1, %x30, 0  #1978 pc 25280
	addi	%x2, %x2, -164  #1978 pc 25284
	lw	%x1, 160(%x2)  #1978 pc 25288
	lw	%x6, 68(%x2)  #1979 pc 25292
	lw	%x7, 64(%x2)  #1979 pc 25296
	sw	%x1, 160(%x2)  #1979 pc 25300
	addi	%x2, %x2, 164  #1979 pc 25304
	jal	%x1, veccpy.2611  #1979 pc 25308
	addi	%x2, %x2, -164  #1979 pc 25312
	lw	%x1, 160(%x2) #1979 pc 25316
	lw	%x6, 140(%x2)  #1980 pc 25320
	lw	%x7, 64(%x2)  #1980 pc 25324
	lw	%x29, 60(%x2)  #1980 pc 25328
	sw	%x1, 160(%x2)  #1980 pc 25332
	lw	%x30, 0(%x29)  #1980 pc 25336
	addi	%x2, %x2, 164  #1980 pc 25340
	jalr	%x1, %x30, 0  #1980 pc 25344
	addi	%x2, %x2, -164  #1980 pc 25348
	lw	%x1, 160(%x2)  #1980 pc 25352
	addi	%x7, %x0, 4  #0 pc 25356
	lw	%x6, 136(%x2)  #1983 pc 25360
	sw	%x1, 160(%x2)  #1983 pc 25364
	addi	%x2, %x2, 164  #1983 pc 25368
	jal	%x1, mul.2527  #1983 pc 25372
	addi	%x2, %x2, -164  #1983 pc 25376
	lw	%x1, 160(%x2) #1983 pc 25380
	lw	%x7, 56(%x2)  #1983 pc 25384
	lw	%x7, 0(%x7)  #1983 pc 25388
	add	%x6, %x6, %x7  #1983 pc 25392
	lw	%x7, 108(%x2)  #1983 pc 25396
	slli	%x8, %x7, 2  #1983 pc 25400
	lw	%x9, 120(%x2)  #1983 pc 25404
	add	%x31, %x8, %x9  #1983 pc 25408
	sw	%x6, 0(%x31)  #1983 pc 25412
	lw	%x6, 52(%x2)  #1984 pc 25416
	sw	%x1, 160(%x2)  #1984 pc 25420
	addi	%x2, %x2, 164  #1984 pc 25424
	jal	%x1, p_intersection_points.2683  #1984 pc 25428
	addi	%x2, %x2, -164  #1984 pc 25432
	lw	%x1, 160(%x2) #1984 pc 25436
	lw	%x7, 108(%x2)  #1985 pc 25440
	slli	%x8, %x7, 2  #1985 pc 25444
	add	%x31, %x8, %x6  #1985 pc 25448
	lw	%x6, 0(%x31)  #1985 pc 25452
	lw	%x8, 64(%x2)  #1985 pc 25456
	addi	%x7, %x8, 0  #0 pc 25460
	sw	%x1, 160(%x2)  #1985 pc 25464
	addi	%x2, %x2, 164  #1985 pc 25468
	jal	%x1, veccpy.2611  #1985 pc 25472
	addi	%x2, %x2, -164  #1985 pc 25476
	lw	%x1, 160(%x2) #1985 pc 25480
	lw	%x6, 52(%x2)  #1988 pc 25484
	sw	%x1, 160(%x2)  #1988 pc 25488
	addi	%x2, %x2, 164  #1988 pc 25492
	jal	%x1, p_calc_diffuse.2687  #1988 pc 25496
	addi	%x2, %x2, -164  #1988 pc 25500
	lw	%x1, 160(%x2) #1988 pc 25504
	lw	%x7, 140(%x2)  #1989 pc 25508
	sw	%x6, 160(%x2)  #1989 pc 25512
	addi	%x6, %x7, 0  #0 pc 25516
	sw	%x1, 164(%x2)  #1989 pc 25520
	addi	%x2, %x2, 168  #1989 pc 25524
	jal	%x1, o_diffuse.2663  #1989 pc 25528
	addi	%x2, %x2, -168  #1989 pc 25532
	lw	%x1, 164(%x2) #1989 pc 25536
	fmv	%f1, l.6211  #0 pc 25540
	sw	%x1, 164(%x2)  #1989 pc 25544
	addi	%x2, %x2, 168  #1989 pc 25548
	jal	%x1, fless.2505  #1989 pc 25552
	addi	%x2, %x2, -168  #1989 pc 25556
	lw	%x1, 164(%x2) #1989 pc 25560
	beq	%x6, %x0, 12  #1989 pc 25564
	j	be_else.9389 #pc 25568
	nop #pc 25572
	addi	%x6, %x0, 1  #0 pc 25576
	lw	%x7, 108(%x2)  #1992 pc 25580
	slli	%x8, %x7, 2  #1992 pc 25584
	lw	%x9, 160(%x2)  #1992 pc 25588
	add	%x31, %x8, %x9  #1992 pc 25592
	sw	%x6, 0(%x31)  #1992 pc 25596
	lw	%x6, 52(%x2)  #1993 pc 25600
	sw	%x1, 164(%x2)  #1993 pc 25604
	addi	%x2, %x2, 168  #1993 pc 25608
	jal	%x1, p_energy.2689  #1993 pc 25612
	addi	%x2, %x2, -168  #1993 pc 25616
	lw	%x1, 164(%x2) #1993 pc 25620
	lw	%x7, 108(%x2)  #1994 pc 25624
	slli	%x8, %x7, 2  #1994 pc 25628
	add	%x31, %x8, %x6  #1994 pc 25632
	lw	%x8, 0(%x31)  #1994 pc 25636
	lw	%x9, 48(%x2)  #1994 pc 25640
	sw	%x6, 164(%x2)  #1994 pc 25644
	addi	%x7, %x9, 0  #0 pc 25648
	addi	%x6, %x8, 0  #0 pc 25652
	sw	%x1, 168(%x2)  #1994 pc 25656
	addi	%x2, %x2, 172  #1994 pc 25660
	jal	%x1, veccpy.2611  #1994 pc 25664
	addi	%x2, %x2, -172  #1994 pc 25668
	lw	%x1, 168(%x2) #1994 pc 25672
	lw	%x6, 108(%x2)  #1995 pc 25676
	slli	%x7, %x6, 2  #1995 pc 25680
	lw	%x8, 164(%x2)  #1995 pc 25684
	add	%x31, %x7, %x8  #1995 pc 25688
	lw	%x7, 0(%x31)  #1995 pc 25692
	fmv	%f0, l.6766  #0 pc 25696
	flw	%f1, 152(%x2)  #1995 pc 25700
	fmul	%f0, %f0, %f1  #1995 pc 25704
	addi	%x6, %x7, 0  #0 pc 25708
	sw	%x1, 168(%x2)  #1995 pc 25712
	addi	%x2, %x2, 172  #1995 pc 25716
	jal	%x1, vecscale.2632  #1995 pc 25720
	addi	%x2, %x2, -172  #1995 pc 25724
	lw	%x1, 168(%x2) #1995 pc 25728
	lw	%x6, 52(%x2)  #1996 pc 25732
	sw	%x1, 168(%x2)  #1996 pc 25736
	addi	%x2, %x2, 172  #1996 pc 25740
	jal	%x1, p_nvectors.2698  #1996 pc 25744
	addi	%x2, %x2, -172  #1996 pc 25748
	lw	%x1, 168(%x2) #1996 pc 25752
	lw	%x7, 108(%x2)  #1997 pc 25756
	slli	%x8, %x7, 2  #1997 pc 25760
	add	%x31, %x8, %x6  #1997 pc 25764
	lw	%x6, 0(%x31)  #1997 pc 25768
	lw	%x8, 44(%x2)  #1997 pc 25772
	addi	%x7, %x8, 0  #0 pc 25776
	sw	%x1, 168(%x2)  #1997 pc 25780
	addi	%x2, %x2, 172  #1997 pc 25784
	jal	%x1, veccpy.2611  #1997 pc 25788
	addi	%x2, %x2, -172  #1997 pc 25792
	lw	%x1, 168(%x2) #1997 pc 25796
	j	be_cont.9390 #pc 25800
	nop #pc 25804
be_else.9389: #pc 25808
	addi	%x6, %x0, 0  #0 pc 25808
	lw	%x7, 108(%x2)  #1990 pc 25812
	slli	%x8, %x7, 2  #1990 pc 25816
	lw	%x9, 160(%x2)  #1990 pc 25820
	add	%x31, %x8, %x9  #1990 pc 25824
	sw	%x6, 0(%x31)  #1990 pc 25828
be_cont.9390: #pc 25832
	fmv	%f0, l.6769  #0 pc 25832
	lw	%x6, 112(%x2)  #2000 pc 25836
	lw	%x7, 44(%x2)  #2000 pc 25840
	fsw	%f0, 168(%x2)  #2000 pc 25844
	sw	%x1, 176(%x2)  #2000 pc 25848
	addi	%x2, %x2, 180  #2000 pc 25852
	jal	%x1, veciprod.2617  #2000 pc 25856
	addi	%x2, %x2, -180  #2000 pc 25860
	lw	%x1, 176(%x2) #2000 pc 25864
	flw	%f1, 168(%x2)  #2000 pc 25868
	fmul	%f0, %f1, %f0  #2000 pc 25872
	lw	%x6, 112(%x2)  #2002 pc 25876
	lw	%x7, 44(%x2)  #2002 pc 25880
	sw	%x1, 176(%x2)  #2002 pc 25884
	addi	%x2, %x2, 180  #2002 pc 25888
	jal	%x1, vecaccum.2625  #2002 pc 25892
	addi	%x2, %x2, -180  #2002 pc 25896
	lw	%x1, 176(%x2) #2002 pc 25900
	lw	%x6, 140(%x2)  #2004 pc 25904
	sw	%x1, 176(%x2)  #2004 pc 25908
	addi	%x2, %x2, 180  #2004 pc 25912
	jal	%x1, o_hilight.2665  #2004 pc 25916
	addi	%x2, %x2, -180  #2004 pc 25920
	lw	%x1, 176(%x2) #2004 pc 25924
	flw	%f1, 96(%x2)  #2004 pc 25928
	fmul	%f0, %f1, %f0  #2004 pc 25932
	addi	%x6, %x0, 0  #0 pc 25936
	lw	%x7, 40(%x2)  #2007 pc 25940
	lw	%x7, 0(%x7)  #2007 pc 25944
	lw	%x29, 36(%x2)  #2007 pc 25948
	fsw	%f0, 176(%x2)  #2007 pc 25952
	sw	%x1, 184(%x2)  #2007 pc 25956
	lw	%x30, 0(%x29)  #2007 pc 25960
	addi	%x2, %x2, 188  #2007 pc 25964
	jalr	%x1, %x30, 0  #2007 pc 25968
	addi	%x2, %x2, -188  #2007 pc 25972
	lw	%x1, 184(%x2)  #2007 pc 25976
	beq	%x6, %x0, 12  #2007 pc 25980
	j	be_else.9391 #pc 25984
	nop #pc 25988
	lw	%x6, 44(%x2)  #2008 pc 25992
	lw	%x7, 104(%x2)  #2008 pc 25996
	sw	%x1, 184(%x2)  #2008 pc 26000
	addi	%x2, %x2, 188  #2008 pc 26004
	jal	%x1, veciprod.2617  #2008 pc 26008
	addi	%x2, %x2, -188  #2008 pc 26012
	lw	%x1, 184(%x2) #2008 pc 26016
	sw	%x1, 184(%x2)  #2008 pc 26020
	addi	%x2, %x2, 188  #2008 pc 26024
	jal	%x1, fneg.2499  #2008 pc 26028
	addi	%x2, %x2, -188  #2008 pc 26032
	lw	%x1, 184(%x2) #2008 pc 26036
	flw	%f1, 152(%x2)  #2008 pc 26040
	fmul	%f0, %f0, %f1  #2008 pc 26044
	lw	%x6, 112(%x2)  #2009 pc 26048
	lw	%x7, 104(%x2)  #2009 pc 26052
	fsw	%f0, 184(%x2)  #2009 pc 26056
	sw	%x1, 192(%x2)  #2009 pc 26060
	addi	%x2, %x2, 196  #2009 pc 26064
	jal	%x1, veciprod.2617  #2009 pc 26068
	addi	%x2, %x2, -196  #2009 pc 26072
	lw	%x1, 192(%x2) #2009 pc 26076
	sw	%x1, 192(%x2)  #2009 pc 26080
	addi	%x2, %x2, 196  #2009 pc 26084
	jal	%x1, fneg.2499  #2009 pc 26088
	addi	%x2, %x2, -196  #2009 pc 26092
	lw	%x1, 192(%x2) #2009 pc 26096
	fadd	%f1, %f0, %f30  #2009 pc 26100
	flw	%f0, 184(%x2)  #2010 pc 26104
	flw	%f2, 176(%x2)  #2010 pc 26108
	lw	%x29, 32(%x2)  #2010 pc 26112
	sw	%x1, 192(%x2)  #2010 pc 26116
	lw	%x30, 0(%x29)  #2010 pc 26120
	addi	%x2, %x2, 196  #2010 pc 26124
	jalr	%x1, %x30, 0  #2010 pc 26128
	addi	%x2, %x2, -196  #2010 pc 26132
	lw	%x1, 192(%x2)  #2010 pc 26136
	j	be_cont.9392 #pc 26140
	nop #pc 26144
be_else.9391: #pc 26148
be_cont.9392: #pc 26148
	lw	%x6, 64(%x2)  #2014 pc 26148
	lw	%x29, 28(%x2)  #2014 pc 26152
	sw	%x1, 192(%x2)  #2014 pc 26156
	lw	%x30, 0(%x29)  #2014 pc 26160
	addi	%x2, %x2, 196  #2014 pc 26164
	jalr	%x1, %x30, 0  #2014 pc 26168
	addi	%x2, %x2, -196  #2014 pc 26172
	lw	%x1, 192(%x2)  #2014 pc 26176
	lw	%x6, 24(%x2)  #2015 pc 26180
	lw	%x6, 0(%x6)  #2015 pc 26184
	addi	%x6, %x6, -1  #2015 pc 26188
	flw	%f0, 152(%x2)  #2015 pc 26192
	flw	%f1, 176(%x2)  #2015 pc 26196
	lw	%x7, 112(%x2)  #2015 pc 26200
	lw	%x29, 20(%x2)  #2015 pc 26204
	sw	%x1, 192(%x2)  #2015 pc 26208
	lw	%x30, 0(%x29)  #2015 pc 26212
	addi	%x2, %x2, 196  #2015 pc 26216
	jalr	%x1, %x30, 0  #2015 pc 26220
	addi	%x2, %x2, -196  #2015 pc 26224
	lw	%x1, 192(%x2)  #2015 pc 26228
	fmv	%f0, l.6773  #0 pc 26232
	flw	%f1, 96(%x2)  #2018 pc 26236
	sw	%x1, 192(%x2)  #2018 pc 26240
	addi	%x2, %x2, 196  #2018 pc 26244
	jal	%x1, fless.2505  #2018 pc 26248
	addi	%x2, %x2, -196  #2018 pc 26252
	lw	%x1, 192(%x2) #2018 pc 26256
	beq	%x6, %x0, 12  #2018 pc 26260
	j	be_else.9393 #pc 26264
	nop #pc 26268
	ret #pc 26272
	nop #pc 26276
be_else.9393: #pc 26280
	lw	%x6, 108(%x2)  #2020 pc 26280
	addi	%x31, %x0, 4  #pc 26284
	bge	%x6, %x31, 12  #2020 pc 26288
	j	bge_else.9395 #pc 26292
	nop #pc 26296
	j	bge_cont.9396 #pc 26300
	nop #pc 26304
bge_else.9395: #pc 26308
	addi	%x7, %x6, 1  #2021 pc 26308
	addi	%x8, %x0, -1  #0 pc 26312
	slli	%x7, %x7, 2  #2021 pc 26316
	lw	%x9, 120(%x2)  #2021 pc 26320
	add	%x31, %x7, %x9  #2021 pc 26324
	sw	%x8, 0(%x31)  #2021 pc 26328
bge_cont.9396: #pc 26332
	lw	%x7, 144(%x2)  #2024 pc 26332
	addi	%x31, %x0, 2  #pc 26336
	beq	%x7, %x31, 12  #2024 pc 26340
	j	be_else.9397 #pc 26344
	nop #pc 26348
	fmv	%f0, l.6219  #0 pc 26352
	lw	%x7, 140(%x2)  #2025 pc 26356
	fsw	%f0, 192(%x2)  #2025 pc 26360
	addi	%x6, %x7, 0  #0 pc 26364
	sw	%x1, 200(%x2)  #2025 pc 26368
	addi	%x2, %x2, 204  #2025 pc 26372
	jal	%x1, o_diffuse.2663  #2025 pc 26376
	addi	%x2, %x2, -204  #2025 pc 26380
	lw	%x1, 200(%x2) #2025 pc 26384
	flw	%f1, 192(%x2)  #2025 pc 26388
	fsub	%f0, %f1, %f0  #2025 pc 26392
	flw	%f1, 96(%x2)  #2025 pc 26396
	fmul	%f0, %f1, %f0  #2025 pc 26400
	lw	%x6, 108(%x2)  #2026 pc 26404
	addi	%x6, %x6, 1  #2026 pc 26408
	lw	%x7, 16(%x2)  #2026 pc 26412
	flw	%f1, 0(%x7)  #2026 pc 26416
	flw	%f2, 8(%x2)  #2026 pc 26420
	fadd	%f1, %f2, %f1  #2026 pc 26424
	lw	%x7, 112(%x2)  #2026 pc 26428
	lw	%x8, 52(%x2)  #2026 pc 26432
	lw	%x29, 0(%x2)  #2026 pc 26436
	lw	%x30, 0(%x29)  #2026 pc 26440
	jalr	%x0, %x30, 0  #2026 pc 26444
	nop #pc 26448
be_else.9397: #pc 26452
	ret #pc 26452
	nop #pc 26456
ble_else.9378: #pc 26460
	ret #pc 26460
	nop #pc 26464
trace_diffuse_ray.2926:  #pc 26468
	lw	%x7, 48(%x29)  #0 pc 26468
	lw	%x8, 44(%x29)  #0 pc 26472
	lw	%x9, 40(%x29)  #0 pc 26476
	lw	%x10, 36(%x29)  #0 pc 26480
	lw	%x11, 32(%x29)  #0 pc 26484
	lw	%x12, 28(%x29)  #0 pc 26488
	lw	%x13, 24(%x29)  #0 pc 26492
	lw	%x14, 20(%x29)  #0 pc 26496
	lw	%x15, 16(%x29)  #0 pc 26500
	lw	%x16, 12(%x29)  #0 pc 26504
	lw	%x17, 8(%x29)  #0 pc 26508
	lw	%x18, 4(%x29)  #0 pc 26512
	sw	%x8, 0(%x2)  #2064 pc 26516
	sw	%x18, 4(%x2)  #2064 pc 26520
	fsw	%f0, 8(%x2)  #2064 pc 26524
	sw	%x13, 16(%x2)  #2064 pc 26528
	sw	%x12, 20(%x2)  #2064 pc 26532
	sw	%x9, 24(%x2)  #2064 pc 26536
	sw	%x10, 28(%x2)  #2064 pc 26540
	sw	%x15, 32(%x2)  #2064 pc 26544
	sw	%x7, 36(%x2)  #2064 pc 26548
	sw	%x17, 40(%x2)  #2064 pc 26552
	sw	%x6, 44(%x2)  #2064 pc 26556
	sw	%x11, 48(%x2)  #2064 pc 26560
	sw	%x16, 52(%x2)  #2064 pc 26564
	addi	%x29, %x14, 0  #0 pc 26568
	sw	%x1, 56(%x2)  #2064 pc 26572
	lw	%x30, 0(%x29)  #2064 pc 26576
	addi	%x2, %x2, 60  #2064 pc 26580
	jalr	%x1, %x30, 0  #2064 pc 26584
	addi	%x2, %x2, -60  #2064 pc 26588
	lw	%x1, 56(%x2)  #2064 pc 26592
	beq	%x6, %x0, 12  #2064 pc 26596
	j	be_else.9400 #pc 26600
	nop #pc 26604
	ret #pc 26608
	nop #pc 26612
be_else.9400: #pc 26616
	lw	%x6, 52(%x2)  #2065 pc 26616
	lw	%x6, 0(%x6)  #2065 pc 26620
	slli	%x6, %x6, 2  #2065 pc 26624
	lw	%x7, 48(%x2)  #2065 pc 26628
	add	%x31, %x6, %x7  #2065 pc 26632
	lw	%x6, 0(%x31)  #2065 pc 26636
	lw	%x7, 44(%x2)  #2066 pc 26640
	sw	%x6, 56(%x2)  #2066 pc 26644
	addi	%x6, %x7, 0  #0 pc 26648
	sw	%x1, 60(%x2)  #2066 pc 26652
	addi	%x2, %x2, 64  #2066 pc 26656
	jal	%x1, d_vec.2700  #2066 pc 26660
	addi	%x2, %x2, -64  #2066 pc 26664
	lw	%x1, 60(%x2) #2066 pc 26668
	addi	%x7, %x6, 0  #2066 pc 26672
	lw	%x6, 56(%x2)  #2066 pc 26676
	lw	%x29, 40(%x2)  #2066 pc 26680
	sw	%x1, 60(%x2)  #2066 pc 26684
	lw	%x30, 0(%x29)  #2066 pc 26688
	addi	%x2, %x2, 64  #2066 pc 26692
	jalr	%x1, %x30, 0  #2066 pc 26696
	addi	%x2, %x2, -64  #2066 pc 26700
	lw	%x1, 60(%x2)  #2066 pc 26704
	lw	%x6, 56(%x2)  #2067 pc 26708
	lw	%x7, 32(%x2)  #2067 pc 26712
	lw	%x29, 36(%x2)  #2067 pc 26716
	sw	%x1, 60(%x2)  #2067 pc 26720
	lw	%x30, 0(%x29)  #2067 pc 26724
	addi	%x2, %x2, 64  #2067 pc 26728
	jalr	%x1, %x30, 0  #2067 pc 26732
	addi	%x2, %x2, -64  #2067 pc 26736
	lw	%x1, 60(%x2)  #2067 pc 26740
	addi	%x6, %x0, 0  #0 pc 26744
	lw	%x7, 28(%x2)  #2070 pc 26748
	lw	%x7, 0(%x7)  #2070 pc 26752
	lw	%x29, 24(%x2)  #2070 pc 26756
	sw	%x1, 60(%x2)  #2070 pc 26760
	lw	%x30, 0(%x29)  #2070 pc 26764
	addi	%x2, %x2, 64  #2070 pc 26768
	jalr	%x1, %x30, 0  #2070 pc 26772
	addi	%x2, %x2, -64  #2070 pc 26776
	lw	%x1, 60(%x2)  #2070 pc 26780
	beq	%x6, %x0, 12  #2070 pc 26784
	j	be_else.9402 #pc 26788
	nop #pc 26792
	lw	%x6, 20(%x2)  #2071 pc 26796
	lw	%x7, 16(%x2)  #2071 pc 26800
	sw	%x1, 60(%x2)  #2071 pc 26804
	addi	%x2, %x2, 64  #2071 pc 26808
	jal	%x1, veciprod.2617  #2071 pc 26812
	addi	%x2, %x2, -64  #2071 pc 26816
	lw	%x1, 60(%x2) #2071 pc 26820
	sw	%x1, 60(%x2)  #2071 pc 26824
	addi	%x2, %x2, 64  #2071 pc 26828
	jal	%x1, fneg.2499  #2071 pc 26832
	addi	%x2, %x2, -64  #2071 pc 26836
	lw	%x1, 60(%x2) #2071 pc 26840
	fsw	%f0, 64(%x2)  #2072 pc 26844
	sw	%x1, 72(%x2)  #2072 pc 26848
	addi	%x2, %x2, 76  #2072 pc 26852
	jal	%x1, fispos.2495  #2072 pc 26856
	addi	%x2, %x2, -76  #2072 pc 26860
	lw	%x1, 72(%x2) #2072 pc 26864
	beq	%x6, %x0, 12  #2072 pc 26868
	j	be_else.9404 #pc 26872
	nop #pc 26876
	fmv	%f0, l.6207  #0 pc 26880
	j	be_cont.9405 #pc 26884
	nop #pc 26888
be_else.9404: #pc 26892
	flw	%f0, 64(%x2)  #2072 pc 26892
be_cont.9405: #pc 26896
	flw	%f1, 8(%x2)  #2073 pc 26896
	fmul	%f0, %f1, %f0  #2073 pc 26900
	lw	%x6, 56(%x2)  #2073 pc 26904
	fsw	%f0, 72(%x2)  #2073 pc 26908
	sw	%x1, 80(%x2)  #2073 pc 26912
	addi	%x2, %x2, 84  #2073 pc 26916
	jal	%x1, o_diffuse.2663  #2073 pc 26920
	addi	%x2, %x2, -84  #2073 pc 26924
	lw	%x1, 80(%x2) #2073 pc 26928
	flw	%f1, 72(%x2)  #2073 pc 26932
	fmul	%f0, %f1, %f0  #2073 pc 26936
	lw	%x6, 4(%x2)  #2073 pc 26940
	lw	%x7, 0(%x2)  #2073 pc 26944
	j	vecaccum.2625  #2073 pc 26948
	nop #pc 26952
be_else.9402: #pc 26956
	ret #pc 26956
	nop #pc 26960
iter_trace_diffuse_rays.2929:  #pc 26964
	lw	%x10, 4(%x29)  #0 pc 26964
	bge	%x9, %x0, 12  #2081 pc 26968
	j	bge_else.9407 #pc 26972
	nop #pc 26976
	slli	%x11, %x9, 2  #2082 pc 26980
	add	%x31, %x11, %x6  #2082 pc 26984
	lw	%x11, 0(%x31)  #2082 pc 26988
	sw	%x8, 0(%x2)  #2082 pc 26992
	sw	%x29, 4(%x2)  #2082 pc 26996
	sw	%x10, 8(%x2)  #2082 pc 27000
	sw	%x6, 12(%x2)  #2082 pc 27004
	sw	%x9, 16(%x2)  #2082 pc 27008
	sw	%x7, 20(%x2)  #2082 pc 27012
	addi	%x6, %x11, 0  #0 pc 27016
	sw	%x1, 24(%x2)  #2082 pc 27020
	addi	%x2, %x2, 28  #2082 pc 27024
	jal	%x1, d_vec.2700  #2082 pc 27028
	addi	%x2, %x2, -28  #2082 pc 27032
	lw	%x1, 24(%x2) #2082 pc 27036
	lw	%x7, 20(%x2)  #2082 pc 27040
	sw	%x1, 24(%x2)  #2082 pc 27044
	addi	%x2, %x2, 28  #2082 pc 27048
	jal	%x1, veciprod.2617  #2082 pc 27052
	addi	%x2, %x2, -28  #2082 pc 27056
	lw	%x1, 24(%x2) #2082 pc 27060
	fsw	%f0, 24(%x2)  #2086 pc 27064
	sw	%x1, 32(%x2)  #2086 pc 27068
	addi	%x2, %x2, 36  #2086 pc 27072
	jal	%x1, fisneg.2497  #2086 pc 27076
	addi	%x2, %x2, -36  #2086 pc 27080
	lw	%x1, 32(%x2) #2086 pc 27084
	beq	%x6, %x0, 12  #2086 pc 27088
	j	be_else.9408 #pc 27092
	nop #pc 27096
	lw	%x6, 16(%x2)  #2089 pc 27100
	slli	%x7, %x6, 2  #2089 pc 27104
	lw	%x8, 12(%x2)  #2089 pc 27108
	add	%x31, %x7, %x8  #2089 pc 27112
	lw	%x7, 0(%x31)  #2089 pc 27116
	fmv	%f0, l.6795  #0 pc 27120
	flw	%f1, 24(%x2)  #2089 pc 27124
	fdiv	%f0, %f1, %f0  #2089 pc 27128
	lw	%x29, 8(%x2)  #2089 pc 27132
	addi	%x6, %x7, 0  #0 pc 27136
	sw	%x1, 32(%x2)  #2089 pc 27140
	lw	%x30, 0(%x29)  #2089 pc 27144
	addi	%x2, %x2, 36  #2089 pc 27148
	jalr	%x1, %x30, 0  #2089 pc 27152
	addi	%x2, %x2, -36  #2089 pc 27156
	lw	%x1, 32(%x2)  #2089 pc 27160
	j	be_cont.9409 #pc 27164
	nop #pc 27168
be_else.9408: #pc 27172
	lw	%x6, 16(%x2)  #2087 pc 27172
	addi	%x7, %x6, 1  #2087 pc 27176
	slli	%x7, %x7, 2  #2087 pc 27180
	lw	%x8, 12(%x2)  #2087 pc 27184
	add	%x31, %x7, %x8  #2087 pc 27188
	lw	%x7, 0(%x31)  #2087 pc 27192
	fmv	%f0, l.6792  #0 pc 27196
	flw	%f1, 24(%x2)  #2087 pc 27200
	fdiv	%f0, %f1, %f0  #2087 pc 27204
	lw	%x29, 8(%x2)  #2087 pc 27208
	addi	%x6, %x7, 0  #0 pc 27212
	sw	%x1, 32(%x2)  #2087 pc 27216
	lw	%x30, 0(%x29)  #2087 pc 27220
	addi	%x2, %x2, 36  #2087 pc 27224
	jalr	%x1, %x30, 0  #2087 pc 27228
	addi	%x2, %x2, -36  #2087 pc 27232
	lw	%x1, 32(%x2)  #2087 pc 27236
be_cont.9409: #pc 27240
	lw	%x6, 16(%x2)  #2091 pc 27240
	addi	%x9, %x6, -2  #2091 pc 27244
	lw	%x6, 12(%x2)  #2091 pc 27248
	lw	%x7, 20(%x2)  #2091 pc 27252
	lw	%x8, 0(%x2)  #2091 pc 27256
	lw	%x29, 4(%x2)  #2091 pc 27260
	lw	%x30, 0(%x29)  #2091 pc 27264
	jalr	%x0, %x30, 0  #2091 pc 27268
	nop #pc 27272
bge_else.9407: #pc 27276
	ret #pc 27276
	nop #pc 27280
trace_diffuse_rays.2934:  #pc 27284
	lw	%x9, 8(%x29)  #2097 pc 27284
	lw	%x10, 4(%x29)  #2097 pc 27288
	sw	%x8, 0(%x2)  #2097 pc 27292
	sw	%x7, 4(%x2)  #2097 pc 27296
	sw	%x6, 8(%x2)  #2097 pc 27300
	sw	%x10, 12(%x2)  #2097 pc 27304
	addi	%x6, %x8, 0  #0 pc 27308
	addi	%x29, %x9, 0  #0 pc 27312
	sw	%x1, 16(%x2)  #2097 pc 27316
	lw	%x30, 0(%x29)  #2097 pc 27320
	addi	%x2, %x2, 20  #2097 pc 27324
	jalr	%x1, %x30, 0  #2097 pc 27328
	addi	%x2, %x2, -20  #2097 pc 27332
	lw	%x1, 16(%x2)  #2097 pc 27336
	addi	%x9, %x0, 118  #0 pc 27340
	lw	%x6, 8(%x2)  #2101 pc 27344
	lw	%x7, 4(%x2)  #2101 pc 27348
	lw	%x8, 0(%x2)  #2101 pc 27352
	lw	%x29, 12(%x2)  #2101 pc 27356
	lw	%x30, 0(%x29)  #2101 pc 27360
	jalr	%x0, %x30, 0  #2101 pc 27364
	nop #pc 27368
trace_diffuse_ray_80percent.2938:  #pc 27372
	lw	%x9, 8(%x29)  #0 pc 27372
	lw	%x10, 4(%x29)  #0 pc 27376
	sw	%x8, 0(%x2)  #2108 pc 27380
	sw	%x7, 4(%x2)  #2108 pc 27384
	sw	%x9, 8(%x2)  #2108 pc 27388
	sw	%x10, 12(%x2)  #2108 pc 27392
	sw	%x6, 16(%x2)  #2108 pc 27396
	beq	%x6, %x0, 12  #2108 pc 27400
	j	be_else.9411 #pc 27404
	nop #pc 27408
	j	be_cont.9412 #pc 27412
	nop #pc 27416
be_else.9411: #pc 27420
	lw	%x11, 0(%x10)  #2109 pc 27420
	addi	%x6, %x11, 0  #0 pc 27424
	addi	%x29, %x9, 0  #0 pc 27428
	sw	%x1, 20(%x2)  #2109 pc 27432
	lw	%x30, 0(%x29)  #2109 pc 27436
	addi	%x2, %x2, 24  #2109 pc 27440
	jalr	%x1, %x30, 0  #2109 pc 27444
	addi	%x2, %x2, -24  #2109 pc 27448
	lw	%x1, 20(%x2)  #2109 pc 27452
be_cont.9412: #pc 27456
	lw	%x6, 16(%x2)  #2112 pc 27456
	addi	%x31, %x0, 1  #pc 27460
	beq	%x6, %x31, 12  #2112 pc 27464
	j	be_else.9413 #pc 27468
	nop #pc 27472
	j	be_cont.9414 #pc 27476
	nop #pc 27480
be_else.9413: #pc 27484
	lw	%x7, 12(%x2)  #2113 pc 27484
	lw	%x8, 4(%x7)  #2113 pc 27488
	lw	%x9, 4(%x2)  #2113 pc 27492
	lw	%x10, 0(%x2)  #2113 pc 27496
	lw	%x29, 8(%x2)  #2113 pc 27500
	addi	%x7, %x9, 0  #0 pc 27504
	addi	%x6, %x8, 0  #0 pc 27508
	addi	%x8, %x10, 0  #0 pc 27512
	sw	%x1, 20(%x2)  #2113 pc 27516
	lw	%x30, 0(%x29)  #2113 pc 27520
	addi	%x2, %x2, 24  #2113 pc 27524
	jalr	%x1, %x30, 0  #2113 pc 27528
	addi	%x2, %x2, -24  #2113 pc 27532
	lw	%x1, 20(%x2)  #2113 pc 27536
be_cont.9414: #pc 27540
	lw	%x6, 16(%x2)  #2116 pc 27540
	addi	%x31, %x0, 2  #pc 27544
	beq	%x6, %x31, 12  #2116 pc 27548
	j	be_else.9415 #pc 27552
	nop #pc 27556
	j	be_cont.9416 #pc 27560
	nop #pc 27564
be_else.9415: #pc 27568
	lw	%x7, 12(%x2)  #2117 pc 27568
	lw	%x8, 8(%x7)  #2117 pc 27572
	lw	%x9, 4(%x2)  #2117 pc 27576
	lw	%x10, 0(%x2)  #2117 pc 27580
	lw	%x29, 8(%x2)  #2117 pc 27584
	addi	%x7, %x9, 0  #0 pc 27588
	addi	%x6, %x8, 0  #0 pc 27592
	addi	%x8, %x10, 0  #0 pc 27596
	sw	%x1, 20(%x2)  #2117 pc 27600
	lw	%x30, 0(%x29)  #2117 pc 27604
	addi	%x2, %x2, 24  #2117 pc 27608
	jalr	%x1, %x30, 0  #2117 pc 27612
	addi	%x2, %x2, -24  #2117 pc 27616
	lw	%x1, 20(%x2)  #2117 pc 27620
be_cont.9416: #pc 27624
	lw	%x6, 16(%x2)  #2120 pc 27624
	addi	%x31, %x0, 3  #pc 27628
	beq	%x6, %x31, 12  #2120 pc 27632
	j	be_else.9417 #pc 27636
	nop #pc 27640
	j	be_cont.9418 #pc 27644
	nop #pc 27648
be_else.9417: #pc 27652
	lw	%x7, 12(%x2)  #2121 pc 27652
	lw	%x8, 12(%x7)  #2121 pc 27656
	lw	%x9, 4(%x2)  #2121 pc 27660
	lw	%x10, 0(%x2)  #2121 pc 27664
	lw	%x29, 8(%x2)  #2121 pc 27668
	addi	%x7, %x9, 0  #0 pc 27672
	addi	%x6, %x8, 0  #0 pc 27676
	addi	%x8, %x10, 0  #0 pc 27680
	sw	%x1, 20(%x2)  #2121 pc 27684
	lw	%x30, 0(%x29)  #2121 pc 27688
	addi	%x2, %x2, 24  #2121 pc 27692
	jalr	%x1, %x30, 0  #2121 pc 27696
	addi	%x2, %x2, -24  #2121 pc 27700
	lw	%x1, 20(%x2)  #2121 pc 27704
be_cont.9418: #pc 27708
	lw	%x6, 16(%x2)  #2124 pc 27708
	addi	%x31, %x0, 4  #pc 27712
	beq	%x6, %x31, 12  #2124 pc 27716
	j	be_else.9419 #pc 27720
	nop #pc 27724
	ret #pc 27728
	nop #pc 27732
be_else.9419: #pc 27736
	lw	%x6, 12(%x2)  #2125 pc 27736
	lw	%x6, 16(%x6)  #2125 pc 27740
	lw	%x7, 4(%x2)  #2125 pc 27744
	lw	%x8, 0(%x2)  #2125 pc 27748
	lw	%x29, 8(%x2)  #2125 pc 27752
	lw	%x30, 0(%x29)  #2125 pc 27756
	jalr	%x0, %x30, 0  #2125 pc 27760
	nop #pc 27764
calc_diffuse_using_1point.2942:  #pc 27768
	lw	%x8, 12(%x29)  #2134 pc 27768
	lw	%x9, 8(%x29)  #2134 pc 27772
	lw	%x10, 4(%x29)  #2134 pc 27776
	sw	%x9, 0(%x2)  #2134 pc 27780
	sw	%x8, 4(%x2)  #2134 pc 27784
	sw	%x10, 8(%x2)  #2134 pc 27788
	sw	%x7, 12(%x2)  #2134 pc 27792
	sw	%x6, 16(%x2)  #2134 pc 27796
	sw	%x1, 20(%x2)  #2134 pc 27800
	addi	%x2, %x2, 24  #2134 pc 27804
	jal	%x1, p_received_ray_20percent.2691  #2134 pc 27808
	addi	%x2, %x2, -24  #2134 pc 27812
	lw	%x1, 20(%x2) #2134 pc 27816
	lw	%x7, 16(%x2)  #2135 pc 27820
	sw	%x6, 20(%x2)  #2135 pc 27824
	addi	%x6, %x7, 0  #0 pc 27828
	sw	%x1, 24(%x2)  #2135 pc 27832
	addi	%x2, %x2, 28  #2135 pc 27836
	jal	%x1, p_nvectors.2698  #2135 pc 27840
	addi	%x2, %x2, -28  #2135 pc 27844
	lw	%x1, 24(%x2) #2135 pc 27848
	lw	%x7, 16(%x2)  #2136 pc 27852
	sw	%x6, 24(%x2)  #2136 pc 27856
	addi	%x6, %x7, 0  #0 pc 27860
	sw	%x1, 28(%x2)  #2136 pc 27864
	addi	%x2, %x2, 32  #2136 pc 27868
	jal	%x1, p_intersection_points.2683  #2136 pc 27872
	addi	%x2, %x2, -32  #2136 pc 27876
	lw	%x1, 28(%x2) #2136 pc 27880
	lw	%x7, 16(%x2)  #2137 pc 27884
	sw	%x6, 28(%x2)  #2137 pc 27888
	addi	%x6, %x7, 0  #0 pc 27892
	sw	%x1, 32(%x2)  #2137 pc 27896
	addi	%x2, %x2, 36  #2137 pc 27900
	jal	%x1, p_energy.2689  #2137 pc 27904
	addi	%x2, %x2, -36  #2137 pc 27908
	lw	%x1, 32(%x2) #2137 pc 27912
	lw	%x7, 12(%x2)  #2139 pc 27916
	slli	%x8, %x7, 2  #2139 pc 27920
	lw	%x9, 20(%x2)  #2139 pc 27924
	add	%x31, %x8, %x9  #2139 pc 27928
	lw	%x8, 0(%x31)  #2139 pc 27932
	lw	%x9, 8(%x2)  #2139 pc 27936
	sw	%x6, 32(%x2)  #2139 pc 27940
	addi	%x7, %x8, 0  #0 pc 27944
	addi	%x6, %x9, 0  #0 pc 27948
	sw	%x1, 36(%x2)  #2139 pc 27952
	addi	%x2, %x2, 40  #2139 pc 27956
	jal	%x1, veccpy.2611  #2139 pc 27960
	addi	%x2, %x2, -40  #2139 pc 27964
	lw	%x1, 36(%x2) #2139 pc 27968
	lw	%x6, 16(%x2)  #2141 pc 27972
	sw	%x1, 36(%x2)  #2141 pc 27976
	addi	%x2, %x2, 40  #2141 pc 27980
	jal	%x1, p_group_id.2693  #2141 pc 27984
	addi	%x2, %x2, -40  #2141 pc 27988
	lw	%x1, 36(%x2) #2141 pc 27992
	lw	%x7, 12(%x2)  #2142 pc 27996
	slli	%x8, %x7, 2  #2142 pc 28000
	lw	%x9, 24(%x2)  #2142 pc 28004
	add	%x31, %x8, %x9  #2142 pc 28008
	lw	%x8, 0(%x31)  #2142 pc 28012
	slli	%x9, %x7, 2  #2143 pc 28016
	lw	%x10, 28(%x2)  #2143 pc 28020
	add	%x31, %x9, %x10  #2143 pc 28024
	lw	%x9, 0(%x31)  #2143 pc 28028
	lw	%x29, 4(%x2)  #2140 pc 28032
	addi	%x7, %x8, 0  #0 pc 28036
	addi	%x8, %x9, 0  #0 pc 28040
	sw	%x1, 36(%x2)  #2140 pc 28044
	lw	%x30, 0(%x29)  #2140 pc 28048
	addi	%x2, %x2, 40  #2140 pc 28052
	jalr	%x1, %x30, 0  #2140 pc 28056
	addi	%x2, %x2, -40  #2140 pc 28060
	lw	%x1, 36(%x2)  #2140 pc 28064
	lw	%x6, 12(%x2)  #2144 pc 28068
	slli	%x6, %x6, 2  #2144 pc 28072
	lw	%x7, 32(%x2)  #2144 pc 28076
	add	%x31, %x6, %x7  #2144 pc 28080
	lw	%x7, 0(%x31)  #2144 pc 28084
	lw	%x6, 0(%x2)  #2144 pc 28088
	lw	%x8, 8(%x2)  #2144 pc 28092
	j	vecaccumv.2635  #2144 pc 28096
	nop #pc 28100
calc_diffuse_using_5points.2945:  #pc 28104
	lw	%x11, 8(%x29)  #0 pc 28104
	lw	%x12, 4(%x29)  #0 pc 28108
	slli	%x13, %x6, 2  #2153 pc 28112
	add	%x31, %x13, %x7  #2153 pc 28116
	lw	%x7, 0(%x31)  #2153 pc 28120
	sw	%x11, 0(%x2)  #2153 pc 28124
	sw	%x12, 4(%x2)  #2153 pc 28128
	sw	%x10, 8(%x2)  #2153 pc 28132
	sw	%x9, 12(%x2)  #2153 pc 28136
	sw	%x8, 16(%x2)  #2153 pc 28140
	sw	%x6, 20(%x2)  #2153 pc 28144
	addi	%x6, %x7, 0  #0 pc 28148
	sw	%x1, 24(%x2)  #2153 pc 28152
	addi	%x2, %x2, 28  #2153 pc 28156
	jal	%x1, p_received_ray_20percent.2691  #2153 pc 28160
	addi	%x2, %x2, -28  #2153 pc 28164
	lw	%x1, 24(%x2) #2153 pc 28168
	lw	%x7, 20(%x2)  #2154 pc 28172
	addi	%x8, %x7, -1  #2154 pc 28176
	slli	%x8, %x8, 2  #2154 pc 28180
	lw	%x9, 16(%x2)  #2154 pc 28184
	add	%x31, %x8, %x9  #2154 pc 28188
	lw	%x8, 0(%x31)  #2154 pc 28192
	sw	%x6, 24(%x2)  #2154 pc 28196
	addi	%x6, %x8, 0  #0 pc 28200
	sw	%x1, 28(%x2)  #2154 pc 28204
	addi	%x2, %x2, 32  #2154 pc 28208
	jal	%x1, p_received_ray_20percent.2691  #2154 pc 28212
	addi	%x2, %x2, -32  #2154 pc 28216
	lw	%x1, 28(%x2) #2154 pc 28220
	lw	%x7, 20(%x2)  #2155 pc 28224
	slli	%x8, %x7, 2  #2155 pc 28228
	lw	%x9, 16(%x2)  #2155 pc 28232
	add	%x31, %x8, %x9  #2155 pc 28236
	lw	%x8, 0(%x31)  #2155 pc 28240
	sw	%x6, 28(%x2)  #2155 pc 28244
	addi	%x6, %x8, 0  #0 pc 28248
	sw	%x1, 32(%x2)  #2155 pc 28252
	addi	%x2, %x2, 36  #2155 pc 28256
	jal	%x1, p_received_ray_20percent.2691  #2155 pc 28260
	addi	%x2, %x2, -36  #2155 pc 28264
	lw	%x1, 32(%x2) #2155 pc 28268
	lw	%x7, 20(%x2)  #2156 pc 28272
	addi	%x8, %x7, 1  #2156 pc 28276
	slli	%x8, %x8, 2  #2156 pc 28280
	lw	%x9, 16(%x2)  #2156 pc 28284
	add	%x31, %x8, %x9  #2156 pc 28288
	lw	%x8, 0(%x31)  #2156 pc 28292
	sw	%x6, 32(%x2)  #2156 pc 28296
	addi	%x6, %x8, 0  #0 pc 28300
	sw	%x1, 36(%x2)  #2156 pc 28304
	addi	%x2, %x2, 40  #2156 pc 28308
	jal	%x1, p_received_ray_20percent.2691  #2156 pc 28312
	addi	%x2, %x2, -40  #2156 pc 28316
	lw	%x1, 36(%x2) #2156 pc 28320
	lw	%x7, 20(%x2)  #2157 pc 28324
	slli	%x8, %x7, 2  #2157 pc 28328
	lw	%x9, 12(%x2)  #2157 pc 28332
	add	%x31, %x8, %x9  #2157 pc 28336
	lw	%x8, 0(%x31)  #2157 pc 28340
	sw	%x6, 36(%x2)  #2157 pc 28344
	addi	%x6, %x8, 0  #0 pc 28348
	sw	%x1, 40(%x2)  #2157 pc 28352
	addi	%x2, %x2, 44  #2157 pc 28356
	jal	%x1, p_received_ray_20percent.2691  #2157 pc 28360
	addi	%x2, %x2, -44  #2157 pc 28364
	lw	%x1, 40(%x2) #2157 pc 28368
	lw	%x7, 8(%x2)  #2159 pc 28372
	slli	%x8, %x7, 2  #2159 pc 28376
	lw	%x9, 24(%x2)  #2159 pc 28380
	add	%x31, %x8, %x9  #2159 pc 28384
	lw	%x8, 0(%x31)  #2159 pc 28388
	lw	%x9, 4(%x2)  #2159 pc 28392
	sw	%x6, 40(%x2)  #2159 pc 28396
	addi	%x7, %x8, 0  #0 pc 28400
	addi	%x6, %x9, 0  #0 pc 28404
	sw	%x1, 44(%x2)  #2159 pc 28408
	addi	%x2, %x2, 48  #2159 pc 28412
	jal	%x1, veccpy.2611  #2159 pc 28416
	addi	%x2, %x2, -48  #2159 pc 28420
	lw	%x1, 44(%x2) #2159 pc 28424
	lw	%x6, 8(%x2)  #2160 pc 28428
	slli	%x7, %x6, 2  #2160 pc 28432
	lw	%x8, 28(%x2)  #2160 pc 28436
	add	%x31, %x7, %x8  #2160 pc 28440
	lw	%x7, 0(%x31)  #2160 pc 28444
	lw	%x8, 4(%x2)  #2160 pc 28448
	addi	%x6, %x8, 0  #0 pc 28452
	sw	%x1, 44(%x2)  #2160 pc 28456
	addi	%x2, %x2, 48  #2160 pc 28460
	jal	%x1, vecadd.2629  #2160 pc 28464
	addi	%x2, %x2, -48  #2160 pc 28468
	lw	%x1, 44(%x2) #2160 pc 28472
	lw	%x6, 8(%x2)  #2161 pc 28476
	slli	%x7, %x6, 2  #2161 pc 28480
	lw	%x8, 32(%x2)  #2161 pc 28484
	add	%x31, %x7, %x8  #2161 pc 28488
	lw	%x7, 0(%x31)  #2161 pc 28492
	lw	%x8, 4(%x2)  #2161 pc 28496
	addi	%x6, %x8, 0  #0 pc 28500
	sw	%x1, 44(%x2)  #2161 pc 28504
	addi	%x2, %x2, 48  #2161 pc 28508
	jal	%x1, vecadd.2629  #2161 pc 28512
	addi	%x2, %x2, -48  #2161 pc 28516
	lw	%x1, 44(%x2) #2161 pc 28520
	lw	%x6, 8(%x2)  #2162 pc 28524
	slli	%x7, %x6, 2  #2162 pc 28528
	lw	%x8, 36(%x2)  #2162 pc 28532
	add	%x31, %x7, %x8  #2162 pc 28536
	lw	%x7, 0(%x31)  #2162 pc 28540
	lw	%x8, 4(%x2)  #2162 pc 28544
	addi	%x6, %x8, 0  #0 pc 28548
	sw	%x1, 44(%x2)  #2162 pc 28552
	addi	%x2, %x2, 48  #2162 pc 28556
	jal	%x1, vecadd.2629  #2162 pc 28560
	addi	%x2, %x2, -48  #2162 pc 28564
	lw	%x1, 44(%x2) #2162 pc 28568
	lw	%x6, 8(%x2)  #2163 pc 28572
	slli	%x7, %x6, 2  #2163 pc 28576
	lw	%x8, 40(%x2)  #2163 pc 28580
	add	%x31, %x7, %x8  #2163 pc 28584
	lw	%x7, 0(%x31)  #2163 pc 28588
	lw	%x8, 4(%x2)  #2163 pc 28592
	addi	%x6, %x8, 0  #0 pc 28596
	sw	%x1, 44(%x2)  #2163 pc 28600
	addi	%x2, %x2, 48  #2163 pc 28604
	jal	%x1, vecadd.2629  #2163 pc 28608
	addi	%x2, %x2, -48  #2163 pc 28612
	lw	%x1, 44(%x2) #2163 pc 28616
	lw	%x6, 20(%x2)  #2165 pc 28620
	slli	%x6, %x6, 2  #2165 pc 28624
	lw	%x7, 16(%x2)  #2165 pc 28628
	add	%x31, %x6, %x7  #2165 pc 28632
	lw	%x6, 0(%x31)  #2165 pc 28636
	sw	%x1, 44(%x2)  #2165 pc 28640
	addi	%x2, %x2, 48  #2165 pc 28644
	jal	%x1, p_energy.2689  #2165 pc 28648
	addi	%x2, %x2, -48  #2165 pc 28652
	lw	%x1, 44(%x2) #2165 pc 28656
	lw	%x7, 8(%x2)  #2166 pc 28660
	slli	%x7, %x7, 2  #2166 pc 28664
	add	%x31, %x7, %x6  #2166 pc 28668
	lw	%x7, 0(%x31)  #2166 pc 28672
	lw	%x6, 0(%x2)  #2166 pc 28676
	lw	%x8, 4(%x2)  #2166 pc 28680
	j	vecaccumv.2635  #2166 pc 28684
	nop #pc 28688
do_without_neighbors.2951:  #pc 28692
	lw	%x8, 4(%x29)  #0 pc 28692
	addi	%x31, %x0, 4  #pc 28696
	bge	%x31, %x7, 12  #2172 pc 28700
	j	ble_else.9421 #pc 28704
	nop #pc 28708
	sw	%x29, 0(%x2)  #2174 pc 28712
	sw	%x8, 4(%x2)  #2174 pc 28716
	sw	%x6, 8(%x2)  #2174 pc 28720
	sw	%x7, 12(%x2)  #2174 pc 28724
	sw	%x1, 16(%x2)  #2174 pc 28728
	addi	%x2, %x2, 20  #2174 pc 28732
	jal	%x1, p_surface_ids.2685  #2174 pc 28736
	addi	%x2, %x2, -20  #2174 pc 28740
	lw	%x1, 16(%x2) #2174 pc 28744
	lw	%x7, 12(%x2)  #2175 pc 28748
	slli	%x8, %x7, 2  #2175 pc 28752
	add	%x31, %x8, %x6  #2175 pc 28756
	lw	%x6, 0(%x31)  #2175 pc 28760
	bge	%x6, %x0, 12  #2175 pc 28764
	j	bge_else.9422 #pc 28768
	nop #pc 28772
	lw	%x6, 8(%x2)  #2176 pc 28776
	sw	%x1, 16(%x2)  #2176 pc 28780
	addi	%x2, %x2, 20  #2176 pc 28784
	jal	%x1, p_calc_diffuse.2687  #2176 pc 28788
	addi	%x2, %x2, -20  #2176 pc 28792
	lw	%x1, 16(%x2) #2176 pc 28796
	lw	%x7, 12(%x2)  #2177 pc 28800
	slli	%x8, %x7, 2  #2177 pc 28804
	add	%x31, %x8, %x6  #2177 pc 28808
	lw	%x6, 0(%x31)  #2177 pc 28812
	beq	%x6, %x0, 12  #2177 pc 28816
	j	be_else.9423 #pc 28820
	nop #pc 28824
	j	be_cont.9424 #pc 28828
	nop #pc 28832
be_else.9423: #pc 28836
	lw	%x6, 8(%x2)  #2178 pc 28836
	lw	%x29, 4(%x2)  #2178 pc 28840
	sw	%x1, 16(%x2)  #2178 pc 28844
	lw	%x30, 0(%x29)  #2178 pc 28848
	addi	%x2, %x2, 20  #2178 pc 28852
	jalr	%x1, %x30, 0  #2178 pc 28856
	addi	%x2, %x2, -20  #2178 pc 28860
	lw	%x1, 16(%x2)  #2178 pc 28864
be_cont.9424: #pc 28868
	lw	%x6, 12(%x2)  #2180 pc 28868
	addi	%x7, %x6, 1  #2180 pc 28872
	lw	%x6, 8(%x2)  #2180 pc 28876
	lw	%x29, 0(%x2)  #2180 pc 28880
	lw	%x30, 0(%x29)  #2180 pc 28884
	jalr	%x0, %x30, 0  #2180 pc 28888
	nop #pc 28892
bge_else.9422: #pc 28896
	ret #pc 28896
	nop #pc 28900
ble_else.9421: #pc 28904
	ret #pc 28904
	nop #pc 28908
neighbors_exist.2954:  #pc 28912
	lw	%x8, 4(%x29)  #0 pc 28912
	lw	%x9, 4(%x8)  #2187 pc 28916
	addi	%x10, %x7, 1  #2187 pc 28920
	bge	%x10, %x9, 12  #2187 pc 28924
	j	ble_else.9427 #pc 28928
	nop #pc 28932
	addi	%x6, %x0, 0  #0 pc 28936
	ret #pc 28940
	nop #pc 28944
ble_else.9427: #pc 28948
	bge	%x0, %x7, 12  #2188 pc 28948
	j	ble_else.9428 #pc 28952
	nop #pc 28956
	addi	%x6, %x0, 0  #0 pc 28960
	ret #pc 28964
	nop #pc 28968
ble_else.9428: #pc 28972
	lw	%x7, 0(%x8)  #2189 pc 28972
	addi	%x8, %x6, 1  #2189 pc 28976
	bge	%x8, %x7, 12  #2189 pc 28980
	j	ble_else.9429 #pc 28984
	nop #pc 28988
	addi	%x6, %x0, 0  #0 pc 28992
	ret #pc 28996
	nop #pc 29000
ble_else.9429: #pc 29004
	bge	%x0, %x6, 12  #2190 pc 29004
	j	ble_else.9430 #pc 29008
	nop #pc 29012
	addi	%x6, %x0, 0  #0 pc 29016
	ret #pc 29020
	nop #pc 29024
ble_else.9430: #pc 29028
	addi	%x6, %x0, 1  #0 pc 29028
	ret #pc 29032
	nop #pc 29036
get_surface_id.2958:  #pc 29040
	sw	%x7, 0(%x2)  #2199 pc 29040
	sw	%x1, 4(%x2)  #2199 pc 29044
	addi	%x2, %x2, 8  #2199 pc 29048
	jal	%x1, p_surface_ids.2685  #2199 pc 29052
	addi	%x2, %x2, -8  #2199 pc 29056
	lw	%x1, 4(%x2) #2199 pc 29060
	lw	%x7, 0(%x2)  #2200 pc 29064
	slli	%x7, %x7, 2  #2200 pc 29068
	add	%x31, %x7, %x6  #2200 pc 29072
	lw	%x6, 0(%x31)  #2200 pc 29076
	ret #pc 29080
	nop #pc 29084
neighbors_are_available.2961:  #pc 29088
	slli	%x11, %x6, 2  #2206 pc 29088
	add	%x31, %x11, %x8  #2206 pc 29092
	lw	%x11, 0(%x31)  #2206 pc 29096
	sw	%x8, 0(%x2)  #2206 pc 29100
	sw	%x9, 4(%x2)  #2206 pc 29104
	sw	%x10, 8(%x2)  #2206 pc 29108
	sw	%x7, 12(%x2)  #2206 pc 29112
	sw	%x6, 16(%x2)  #2206 pc 29116
	addi	%x7, %x10, 0  #0 pc 29120
	addi	%x6, %x11, 0  #0 pc 29124
	sw	%x1, 20(%x2)  #2206 pc 29128
	addi	%x2, %x2, 24  #2206 pc 29132
	jal	%x1, get_surface_id.2958  #2206 pc 29136
	addi	%x2, %x2, -24  #2206 pc 29140
	lw	%x1, 20(%x2) #2206 pc 29144
	lw	%x7, 16(%x2)  #2208 pc 29148
	slli	%x8, %x7, 2  #2208 pc 29152
	lw	%x9, 12(%x2)  #2208 pc 29156
	add	%x31, %x8, %x9  #2208 pc 29160
	lw	%x8, 0(%x31)  #2208 pc 29164
	lw	%x9, 8(%x2)  #2208 pc 29168
	sw	%x6, 20(%x2)  #2208 pc 29172
	addi	%x7, %x9, 0  #0 pc 29176
	addi	%x6, %x8, 0  #0 pc 29180
	sw	%x1, 24(%x2)  #2208 pc 29184
	addi	%x2, %x2, 28  #2208 pc 29188
	jal	%x1, get_surface_id.2958  #2208 pc 29192
	addi	%x2, %x2, -28  #2208 pc 29196
	lw	%x1, 24(%x2) #2208 pc 29200
	lw	%x7, 20(%x2)  #2208 pc 29204
	beq	%x6, %x7, 12  #2208 pc 29208
	j	be_else.9431 #pc 29212
	nop #pc 29216
	lw	%x6, 16(%x2)  #2209 pc 29220
	slli	%x8, %x6, 2  #2209 pc 29224
	lw	%x9, 4(%x2)  #2209 pc 29228
	add	%x31, %x8, %x9  #2209 pc 29232
	lw	%x8, 0(%x31)  #2209 pc 29236
	lw	%x9, 8(%x2)  #2209 pc 29240
	addi	%x7, %x9, 0  #0 pc 29244
	addi	%x6, %x8, 0  #0 pc 29248
	sw	%x1, 24(%x2)  #2209 pc 29252
	addi	%x2, %x2, 28  #2209 pc 29256
	jal	%x1, get_surface_id.2958  #2209 pc 29260
	addi	%x2, %x2, -28  #2209 pc 29264
	lw	%x1, 24(%x2) #2209 pc 29268
	lw	%x7, 20(%x2)  #2209 pc 29272
	beq	%x6, %x7, 12  #2209 pc 29276
	j	be_else.9432 #pc 29280
	nop #pc 29284
	lw	%x6, 16(%x2)  #2210 pc 29288
	addi	%x8, %x6, -1  #2210 pc 29292
	slli	%x8, %x8, 2  #2210 pc 29296
	lw	%x9, 0(%x2)  #2210 pc 29300
	add	%x31, %x8, %x9  #2210 pc 29304
	lw	%x8, 0(%x31)  #2210 pc 29308
	lw	%x10, 8(%x2)  #2210 pc 29312
	addi	%x7, %x10, 0  #0 pc 29316
	addi	%x6, %x8, 0  #0 pc 29320
	sw	%x1, 24(%x2)  #2210 pc 29324
	addi	%x2, %x2, 28  #2210 pc 29328
	jal	%x1, get_surface_id.2958  #2210 pc 29332
	addi	%x2, %x2, -28  #2210 pc 29336
	lw	%x1, 24(%x2) #2210 pc 29340
	lw	%x7, 20(%x2)  #2210 pc 29344
	beq	%x6, %x7, 12  #2210 pc 29348
	j	be_else.9433 #pc 29352
	nop #pc 29356
	lw	%x6, 16(%x2)  #2211 pc 29360
	addi	%x6, %x6, 1  #2211 pc 29364
	slli	%x6, %x6, 2  #2211 pc 29368
	lw	%x8, 0(%x2)  #2211 pc 29372
	add	%x31, %x6, %x8  #2211 pc 29376
	lw	%x6, 0(%x31)  #2211 pc 29380
	lw	%x8, 8(%x2)  #2211 pc 29384
	addi	%x7, %x8, 0  #0 pc 29388
	sw	%x1, 24(%x2)  #2211 pc 29392
	addi	%x2, %x2, 28  #2211 pc 29396
	jal	%x1, get_surface_id.2958  #2211 pc 29400
	addi	%x2, %x2, -28  #2211 pc 29404
	lw	%x1, 24(%x2) #2211 pc 29408
	lw	%x7, 20(%x2)  #2211 pc 29412
	beq	%x6, %x7, 12  #2211 pc 29416
	j	be_else.9434 #pc 29420
	nop #pc 29424
	addi	%x6, %x0, 1  #0 pc 29428
	ret #pc 29432
	nop #pc 29436
be_else.9434: #pc 29440
	addi	%x6, %x0, 0  #0 pc 29440
	ret #pc 29444
	nop #pc 29448
be_else.9433: #pc 29452
	addi	%x6, %x0, 0  #0 pc 29452
	ret #pc 29456
	nop #pc 29460
be_else.9432: #pc 29464
	addi	%x6, %x0, 0  #0 pc 29464
	ret #pc 29468
	nop #pc 29472
be_else.9431: #pc 29476
	addi	%x6, %x0, 0  #0 pc 29476
	ret #pc 29480
	nop #pc 29484
try_exploit_neighbors.2967:  #pc 29488
	lw	%x12, 8(%x29)  #2224 pc 29488
	lw	%x13, 4(%x29)  #2224 pc 29492
	slli	%x14, %x6, 2  #2224 pc 29496
	add	%x31, %x14, %x9  #2224 pc 29500
	lw	%x14, 0(%x31)  #2224 pc 29504
	addi	%x31, %x0, 4  #pc 29508
	bge	%x31, %x11, 12  #2225 pc 29512
	j	ble_else.9435 #pc 29516
	nop #pc 29520
	sw	%x7, 0(%x2)  #2228 pc 29524
	sw	%x29, 4(%x2)  #2228 pc 29528
	sw	%x13, 8(%x2)  #2228 pc 29532
	sw	%x14, 12(%x2)  #2228 pc 29536
	sw	%x12, 16(%x2)  #2228 pc 29540
	sw	%x11, 20(%x2)  #2228 pc 29544
	sw	%x10, 24(%x2)  #2228 pc 29548
	sw	%x9, 28(%x2)  #2228 pc 29552
	sw	%x8, 32(%x2)  #2228 pc 29556
	sw	%x6, 36(%x2)  #2228 pc 29560
	addi	%x7, %x11, 0  #0 pc 29564
	addi	%x6, %x14, 0  #0 pc 29568
	sw	%x1, 40(%x2)  #2228 pc 29572
	addi	%x2, %x2, 44  #2228 pc 29576
	jal	%x1, get_surface_id.2958  #2228 pc 29580
	addi	%x2, %x2, -44  #2228 pc 29584
	lw	%x1, 40(%x2) #2228 pc 29588
	bge	%x6, %x0, 12  #2228 pc 29592
	j	bge_else.9436 #pc 29596
	nop #pc 29600
	lw	%x6, 36(%x2)  #2230 pc 29604
	lw	%x7, 32(%x2)  #2230 pc 29608
	lw	%x8, 28(%x2)  #2230 pc 29612
	lw	%x9, 24(%x2)  #2230 pc 29616
	lw	%x10, 20(%x2)  #2230 pc 29620
	sw	%x1, 40(%x2)  #2230 pc 29624
	addi	%x2, %x2, 44  #2230 pc 29628
	jal	%x1, neighbors_are_available.2961  #2230 pc 29632
	addi	%x2, %x2, -44  #2230 pc 29636
	lw	%x1, 40(%x2) #2230 pc 29640
	beq	%x6, %x0, 12  #2230 pc 29644
	j	be_else.9437 #pc 29648
	nop #pc 29652
	lw	%x6, 36(%x2)  #2242 pc 29656
	slli	%x6, %x6, 2  #2242 pc 29660
	lw	%x7, 28(%x2)  #2242 pc 29664
	add	%x31, %x6, %x7  #2242 pc 29668
	lw	%x6, 0(%x31)  #2242 pc 29672
	lw	%x7, 20(%x2)  #2242 pc 29676
	lw	%x29, 16(%x2)  #2242 pc 29680
	lw	%x30, 0(%x29)  #2242 pc 29684
	jalr	%x0, %x30, 0  #2242 pc 29688
	nop #pc 29692
be_else.9437: #pc 29696
	lw	%x6, 12(%x2)  #2233 pc 29696
	sw	%x1, 40(%x2)  #2233 pc 29700
	addi	%x2, %x2, 44  #2233 pc 29704
	jal	%x1, p_calc_diffuse.2687  #2233 pc 29708
	addi	%x2, %x2, -44  #2233 pc 29712
	lw	%x1, 40(%x2) #2233 pc 29716
	lw	%x10, 20(%x2)  #2234 pc 29720
	slli	%x7, %x10, 2  #2234 pc 29724
	add	%x31, %x7, %x6  #2234 pc 29728
	lw	%x6, 0(%x31)  #2234 pc 29732
	beq	%x6, %x0, 12  #2234 pc 29736
	j	be_else.9438 #pc 29740
	nop #pc 29744
	j	be_cont.9439 #pc 29748
	nop #pc 29752
be_else.9438: #pc 29756
	lw	%x6, 36(%x2)  #2235 pc 29756
	lw	%x7, 32(%x2)  #2235 pc 29760
	lw	%x8, 28(%x2)  #2235 pc 29764
	lw	%x9, 24(%x2)  #2235 pc 29768
	lw	%x29, 8(%x2)  #2235 pc 29772
	sw	%x1, 40(%x2)  #2235 pc 29776
	lw	%x30, 0(%x29)  #2235 pc 29780
	addi	%x2, %x2, 44  #2235 pc 29784
	jalr	%x1, %x30, 0  #2235 pc 29788
	addi	%x2, %x2, -44  #2235 pc 29792
	lw	%x1, 40(%x2)  #2235 pc 29796
be_cont.9439: #pc 29800
	lw	%x6, 20(%x2)  #2239 pc 29800
	addi	%x11, %x6, 1  #2239 pc 29804
	lw	%x6, 36(%x2)  #2239 pc 29808
	lw	%x7, 0(%x2)  #2239 pc 29812
	lw	%x8, 32(%x2)  #2239 pc 29816
	lw	%x9, 28(%x2)  #2239 pc 29820
	lw	%x10, 24(%x2)  #2239 pc 29824
	lw	%x29, 4(%x2)  #2239 pc 29828
	lw	%x30, 0(%x29)  #2239 pc 29832
	jalr	%x0, %x30, 0  #2239 pc 29836
	nop #pc 29840
bge_else.9436: #pc 29844
	ret #pc 29844
	nop #pc 29848
ble_else.9435: #pc 29852
	ret #pc 29852
	nop #pc 29856
write_ppm_header.2974:  #pc 29860
	lw	%x7, 4(%x29)  #0 pc 29860
	addi	%x8, %x0, 80  #0 pc 29864
	sw	%x7, 0(%x2)  #2252 pc 29868
	sw	%x6, 4(%x2)  #2252 pc 29872
	addi	%x6, %x8, 0  #0 pc 29876
	sw	%x1, 8(%x2)  #2252 pc 29880
	addi	%x2, %x2, 12  #2252 pc 29884
	jal	%x1, print_char.2538  #2252 pc 29888
	addi	%x2, %x2, -12  #2252 pc 29892
	lw	%x1, 8(%x2) #2252 pc 29896
	lw	%x6, 4(%x2)  #2253 pc 29900
	addi	%x6, %x6, 48  #2253 pc 29904
	sw	%x1, 8(%x2)  #2253 pc 29908
	addi	%x2, %x2, 12  #2253 pc 29912
	jal	%x1, print_char.2538  #2253 pc 29916
	addi	%x2, %x2, -12  #2253 pc 29920
	lw	%x1, 8(%x2) #2253 pc 29924
	addi	%x6, %x0, 10  #0 pc 29928
	sw	%x1, 8(%x2)  #2254 pc 29932
	addi	%x2, %x2, 12  #2254 pc 29936
	jal	%x1, print_char.2538  #2254 pc 29940
	addi	%x2, %x2, -12  #2254 pc 29944
	lw	%x1, 8(%x2) #2254 pc 29948
	lw	%x6, 0(%x2)  #2255 pc 29952
	lw	%x7, 0(%x6)  #2255 pc 29956
	addi	%x6, %x7, 0  #0 pc 29960
	sw	%x1, 8(%x2)  #2255 pc 29964
	addi	%x2, %x2, 12  #2255 pc 29968
	jal	%x1, print_int.2540  #2255 pc 29972
	addi	%x2, %x2, -12  #2255 pc 29976
	lw	%x1, 8(%x2) #2255 pc 29980
	addi	%x6, %x0, 32  #0 pc 29984
	sw	%x1, 8(%x2)  #2256 pc 29988
	addi	%x2, %x2, 12  #2256 pc 29992
	jal	%x1, print_char.2538  #2256 pc 29996
	addi	%x2, %x2, -12  #2256 pc 30000
	lw	%x1, 8(%x2) #2256 pc 30004
	lw	%x6, 0(%x2)  #2257 pc 30008
	lw	%x6, 4(%x6)  #2257 pc 30012
	sw	%x1, 8(%x2)  #2257 pc 30016
	addi	%x2, %x2, 12  #2257 pc 30020
	jal	%x1, print_int.2540  #2257 pc 30024
	addi	%x2, %x2, -12  #2257 pc 30028
	lw	%x1, 8(%x2) #2257 pc 30032
	addi	%x6, %x0, 32  #0 pc 30036
	sw	%x1, 8(%x2)  #2258 pc 30040
	addi	%x2, %x2, 12  #2258 pc 30044
	jal	%x1, print_char.2538  #2258 pc 30048
	addi	%x2, %x2, -12  #2258 pc 30052
	lw	%x1, 8(%x2) #2258 pc 30056
	addi	%x6, %x0, 255  #0 pc 30060
	sw	%x1, 8(%x2)  #2259 pc 30064
	addi	%x2, %x2, 12  #2259 pc 30068
	jal	%x1, print_int.2540  #2259 pc 30072
	addi	%x2, %x2, -12  #2259 pc 30076
	lw	%x1, 8(%x2) #2259 pc 30080
	addi	%x6, %x0, 10  #0 pc 30084
	j	print_char.2538  #2260 pc 30088
	nop #pc 30092
write_rgb_element_int.2976:  #pc 30096
	sw	%x1, 0(%x2)  #2265 pc 30096
	addi	%x2, %x2, 4  #2265 pc 30100
	jal	%x1, int_of_float.2520  #2265 pc 30104
	addi	%x2, %x2, -4  #2265 pc 30108
	lw	%x1, 0(%x2) #2265 pc 30112
	addi	%x31, %x0, 255  #pc 30116
	bge	%x31, %x6, 12  #2266 pc 30120
	j	ble_else.9442 #pc 30124
	nop #pc 30128
	bge	%x6, %x0, 12  #2266 pc 30132
	j	bge_else.9444 #pc 30136
	nop #pc 30140
	j	bge_cont.9445 #pc 30144
	nop #pc 30148
bge_else.9444: #pc 30152
	addi	%x6, %x0, 0  #0 pc 30152
bge_cont.9445: #pc 30156
	j	ble_cont.9443 #pc 30156
	nop #pc 30160
ble_else.9442: #pc 30164
	addi	%x6, %x0, 255  #0 pc 30164
ble_cont.9443: #pc 30168
	j	print_int.2540  #2267 pc 30168
	nop #pc 30172
write_rgb_element_char.2978:  #pc 30176
	sw	%x1, 0(%x2)  #2271 pc 30176
	addi	%x2, %x2, 4  #2271 pc 30180
	jal	%x1, int_of_float.2520  #2271 pc 30184
	addi	%x2, %x2, -4  #2271 pc 30188
	lw	%x1, 0(%x2) #2271 pc 30192
	addi	%x31, %x0, 255  #pc 30196
	bge	%x31, %x6, 12  #2272 pc 30200
	j	ble_else.9446 #pc 30204
	nop #pc 30208
	bge	%x6, %x0, 12  #2272 pc 30212
	j	bge_else.9448 #pc 30216
	nop #pc 30220
	j	bge_cont.9449 #pc 30224
	nop #pc 30228
bge_else.9448: #pc 30232
	addi	%x6, %x0, 0  #0 pc 30232
bge_cont.9449: #pc 30236
	j	ble_cont.9447 #pc 30236
	nop #pc 30240
ble_else.9446: #pc 30244
	addi	%x6, %x0, 255  #0 pc 30244
ble_cont.9447: #pc 30248
	j	print_char.2538  #2273 pc 30248
	nop #pc 30252
write_rgb.2980:  #pc 30256
	lw	%x7, 4(%x29)  #0 pc 30256
	addi	%x31, %x0, 3  #pc 30260
	beq	%x6, %x31, 12  #2277 pc 30264
	j	be_else.9450 #pc 30268
	nop #pc 30272
	flw	%f0, 0(%x7)  #2278 pc 30276
	sw	%x7, 0(%x2)  #2278 pc 30280
	sw	%x1, 4(%x2)  #2278 pc 30284
	addi	%x2, %x2, 8  #2278 pc 30288
	jal	%x1, write_rgb_element_int.2976  #2278 pc 30292
	addi	%x2, %x2, -8  #2278 pc 30296
	lw	%x1, 4(%x2) #2278 pc 30300
	addi	%x6, %x0, 32  #0 pc 30304
	sw	%x1, 4(%x2)  #2279 pc 30308
	addi	%x2, %x2, 8  #2279 pc 30312
	jal	%x1, print_char.2538  #2279 pc 30316
	addi	%x2, %x2, -8  #2279 pc 30320
	lw	%x1, 4(%x2) #2279 pc 30324
	lw	%x6, 0(%x2)  #2280 pc 30328
	flw	%f0, 4(%x6)  #2280 pc 30332
	sw	%x1, 4(%x2)  #2280 pc 30336
	addi	%x2, %x2, 8  #2280 pc 30340
	jal	%x1, write_rgb_element_int.2976  #2280 pc 30344
	addi	%x2, %x2, -8  #2280 pc 30348
	lw	%x1, 4(%x2) #2280 pc 30352
	addi	%x6, %x0, 32  #0 pc 30356
	sw	%x1, 4(%x2)  #2281 pc 30360
	addi	%x2, %x2, 8  #2281 pc 30364
	jal	%x1, print_char.2538  #2281 pc 30368
	addi	%x2, %x2, -8  #2281 pc 30372
	lw	%x1, 4(%x2) #2281 pc 30376
	lw	%x6, 0(%x2)  #2282 pc 30380
	flw	%f0, 8(%x6)  #2282 pc 30384
	sw	%x1, 4(%x2)  #2282 pc 30388
	addi	%x2, %x2, 8  #2282 pc 30392
	jal	%x1, write_rgb_element_int.2976  #2282 pc 30396
	addi	%x2, %x2, -8  #2282 pc 30400
	lw	%x1, 4(%x2) #2282 pc 30404
	addi	%x6, %x0, 10  #0 pc 30408
	j	print_char.2538  #2283 pc 30412
	nop #pc 30416
be_else.9450: #pc 30420
	flw	%f0, 0(%x7)  #2285 pc 30420
	sw	%x7, 0(%x2)  #2285 pc 30424
	sw	%x1, 4(%x2)  #2285 pc 30428
	addi	%x2, %x2, 8  #2285 pc 30432
	jal	%x1, write_rgb_element_char.2978  #2285 pc 30436
	addi	%x2, %x2, -8  #2285 pc 30440
	lw	%x1, 4(%x2) #2285 pc 30444
	lw	%x6, 0(%x2)  #2286 pc 30448
	flw	%f0, 4(%x6)  #2286 pc 30452
	sw	%x1, 4(%x2)  #2286 pc 30456
	addi	%x2, %x2, 8  #2286 pc 30460
	jal	%x1, write_rgb_element_char.2978  #2286 pc 30464
	addi	%x2, %x2, -8  #2286 pc 30468
	lw	%x1, 4(%x2) #2286 pc 30472
	lw	%x6, 0(%x2)  #2287 pc 30476
	flw	%f0, 8(%x6)  #2287 pc 30480
	j	write_rgb_element_char.2978  #2287 pc 30484
	nop #pc 30488
pretrace_diffuse_rays.2982:  #pc 30492
	lw	%x8, 12(%x29)  #0 pc 30492
	lw	%x9, 8(%x29)  #0 pc 30496
	lw	%x10, 4(%x29)  #0 pc 30500
	addi	%x31, %x0, 4  #pc 30504
	bge	%x31, %x7, 12  #2300 pc 30508
	j	ble_else.9451 #pc 30512
	nop #pc 30516
	sw	%x29, 0(%x2)  #2303 pc 30520
	sw	%x8, 4(%x2)  #2303 pc 30524
	sw	%x9, 8(%x2)  #2303 pc 30528
	sw	%x10, 12(%x2)  #2303 pc 30532
	sw	%x7, 16(%x2)  #2303 pc 30536
	sw	%x6, 20(%x2)  #2303 pc 30540
	sw	%x1, 24(%x2)  #2303 pc 30544
	addi	%x2, %x2, 28  #2303 pc 30548
	jal	%x1, get_surface_id.2958  #2303 pc 30552
	addi	%x2, %x2, -28  #2303 pc 30556
	lw	%x1, 24(%x2) #2303 pc 30560
	bge	%x6, %x0, 12  #2304 pc 30564
	j	bge_else.9452 #pc 30568
	nop #pc 30572
	lw	%x6, 20(%x2)  #2306 pc 30576
	sw	%x1, 24(%x2)  #2306 pc 30580
	addi	%x2, %x2, 28  #2306 pc 30584
	jal	%x1, p_calc_diffuse.2687  #2306 pc 30588
	addi	%x2, %x2, -28  #2306 pc 30592
	lw	%x1, 24(%x2) #2306 pc 30596
	lw	%x7, 16(%x2)  #2307 pc 30600
	slli	%x8, %x7, 2  #2307 pc 30604
	add	%x31, %x8, %x6  #2307 pc 30608
	lw	%x6, 0(%x31)  #2307 pc 30612
	beq	%x6, %x0, 12  #2307 pc 30616
	j	be_else.9453 #pc 30620
	nop #pc 30624
	j	be_cont.9454 #pc 30628
	nop #pc 30632
be_else.9453: #pc 30636
	lw	%x6, 20(%x2)  #2308 pc 30636
	sw	%x1, 24(%x2)  #2308 pc 30640
	addi	%x2, %x2, 28  #2308 pc 30644
	jal	%x1, p_group_id.2693  #2308 pc 30648
	addi	%x2, %x2, -28  #2308 pc 30652
	lw	%x1, 24(%x2) #2308 pc 30656
	lw	%x7, 12(%x2)  #2309 pc 30660
	sw	%x6, 24(%x2)  #2309 pc 30664
	addi	%x6, %x7, 0  #0 pc 30668
	sw	%x1, 28(%x2)  #2309 pc 30672
	addi	%x2, %x2, 32  #2309 pc 30676
	jal	%x1, vecbzero.2609  #2309 pc 30680
	addi	%x2, %x2, -32  #2309 pc 30684
	lw	%x1, 28(%x2) #2309 pc 30688
	lw	%x6, 20(%x2)  #2313 pc 30692
	sw	%x1, 28(%x2)  #2313 pc 30696
	addi	%x2, %x2, 32  #2313 pc 30700
	jal	%x1, p_nvectors.2698  #2313 pc 30704
	addi	%x2, %x2, -32  #2313 pc 30708
	lw	%x1, 28(%x2) #2313 pc 30712
	lw	%x7, 20(%x2)  #2314 pc 30716
	sw	%x6, 28(%x2)  #2314 pc 30720
	addi	%x6, %x7, 0  #0 pc 30724
	sw	%x1, 32(%x2)  #2314 pc 30728
	addi	%x2, %x2, 36  #2314 pc 30732
	jal	%x1, p_intersection_points.2683  #2314 pc 30736
	addi	%x2, %x2, -36  #2314 pc 30740
	lw	%x1, 32(%x2) #2314 pc 30744
	lw	%x7, 24(%x2)  #2316 pc 30748
	slli	%x7, %x7, 2  #2316 pc 30752
	lw	%x8, 8(%x2)  #2316 pc 30756
	add	%x31, %x7, %x8  #2316 pc 30760
	lw	%x7, 0(%x31)  #2316 pc 30764
	lw	%x8, 16(%x2)  #2317 pc 30768
	slli	%x9, %x8, 2  #2317 pc 30772
	lw	%x10, 28(%x2)  #2317 pc 30776
	add	%x31, %x9, %x10  #2317 pc 30780
	lw	%x9, 0(%x31)  #2317 pc 30784
	slli	%x10, %x8, 2  #2318 pc 30788
	add	%x31, %x10, %x6  #2318 pc 30792
	lw	%x6, 0(%x31)  #2318 pc 30796
	lw	%x29, 4(%x2)  #2315 pc 30800
	addi	%x8, %x6, 0  #0 pc 30804
	addi	%x6, %x7, 0  #0 pc 30808
	addi	%x7, %x9, 0  #0 pc 30812
	sw	%x1, 32(%x2)  #2315 pc 30816
	lw	%x30, 0(%x29)  #2315 pc 30820
	addi	%x2, %x2, 36  #2315 pc 30824
	jalr	%x1, %x30, 0  #2315 pc 30828
	addi	%x2, %x2, -36  #2315 pc 30832
	lw	%x1, 32(%x2)  #2315 pc 30836
	lw	%x6, 20(%x2)  #2319 pc 30840
	sw	%x1, 32(%x2)  #2319 pc 30844
	addi	%x2, %x2, 36  #2319 pc 30848
	jal	%x1, p_received_ray_20percent.2691  #2319 pc 30852
	addi	%x2, %x2, -36  #2319 pc 30856
	lw	%x1, 32(%x2) #2319 pc 30860
	lw	%x7, 16(%x2)  #2320 pc 30864
	slli	%x8, %x7, 2  #2320 pc 30868
	add	%x31, %x8, %x6  #2320 pc 30872
	lw	%x6, 0(%x31)  #2320 pc 30876
	lw	%x8, 12(%x2)  #2320 pc 30880
	addi	%x7, %x8, 0  #0 pc 30884
	sw	%x1, 32(%x2)  #2320 pc 30888
	addi	%x2, %x2, 36  #2320 pc 30892
	jal	%x1, veccpy.2611  #2320 pc 30896
	addi	%x2, %x2, -36  #2320 pc 30900
	lw	%x1, 32(%x2) #2320 pc 30904
be_cont.9454: #pc 30908
	lw	%x6, 16(%x2)  #2322 pc 30908
	addi	%x7, %x6, 1  #2322 pc 30912
	lw	%x6, 20(%x2)  #2322 pc 30916
	lw	%x29, 0(%x2)  #2322 pc 30920
	lw	%x30, 0(%x29)  #2322 pc 30924
	jalr	%x0, %x30, 0  #2322 pc 30928
	nop #pc 30932
bge_else.9452: #pc 30936
	ret #pc 30936
	nop #pc 30940
ble_else.9451: #pc 30944
	ret #pc 30944
	nop #pc 30948
pretrace_pixels.2985:  #pc 30952
	lw	%x9, 36(%x29)  #0 pc 30952
	lw	%x10, 32(%x29)  #0 pc 30956
	lw	%x11, 28(%x29)  #0 pc 30960
	lw	%x12, 24(%x29)  #0 pc 30964
	lw	%x13, 20(%x29)  #0 pc 30968
	lw	%x14, 16(%x29)  #0 pc 30972
	lw	%x15, 12(%x29)  #0 pc 30976
	lw	%x16, 8(%x29)  #0 pc 30980
	lw	%x17, 4(%x29)  #0 pc 30984
	bge	%x7, %x0, 12  #2330 pc 30988
	j	bge_else.9457 #pc 30992
	nop #pc 30996
	flw	%f3, 0(%x13)  #2332 pc 31000
	lw	%x13, 0(%x17)  #2332 pc 31004
	sub	%x13, %x7, %x13  #2332 pc 31008
	sw	%x29, 0(%x2)  #2332 pc 31012
	sw	%x16, 4(%x2)  #2332 pc 31016
	sw	%x8, 8(%x2)  #2332 pc 31020
	sw	%x10, 12(%x2)  #2332 pc 31024
	sw	%x6, 16(%x2)  #2332 pc 31028
	sw	%x7, 20(%x2)  #2332 pc 31032
	sw	%x9, 24(%x2)  #2332 pc 31036
	sw	%x11, 28(%x2)  #2332 pc 31040
	sw	%x14, 32(%x2)  #2332 pc 31044
	fsw	%f2, 40(%x2)  #2332 pc 31048
	fsw	%f1, 48(%x2)  #2332 pc 31052
	sw	%x15, 56(%x2)  #2332 pc 31056
	fsw	%f0, 64(%x2)  #2332 pc 31060
	sw	%x12, 72(%x2)  #2332 pc 31064
	fsw	%f3, 80(%x2)  #2332 pc 31068
	addi	%x6, %x13, 0  #0 pc 31072
	sw	%x1, 88(%x2)  #2332 pc 31076
	addi	%x2, %x2, 92  #2332 pc 31080
	jal	%x1, float_of_int.2518  #2332 pc 31084
	addi	%x2, %x2, -92  #2332 pc 31088
	lw	%x1, 88(%x2) #2332 pc 31092
	flw	%f1, 80(%x2)  #2332 pc 31096
	fmul	%f0, %f1, %f0  #2332 pc 31100
	lw	%x6, 72(%x2)  #2333 pc 31104
	flw	%f1, 0(%x6)  #2333 pc 31108
	fmul	%f1, %f0, %f1  #2333 pc 31112
	flw	%f2, 64(%x2)  #2333 pc 31116
	fadd	%f1, %f1, %f2  #2333 pc 31120
	lw	%x7, 56(%x2)  #2333 pc 31124
	fsw	%f1, 0(%x7)  #2333 pc 31128
	flw	%f1, 4(%x6)  #2334 pc 31132
	fmul	%f1, %f0, %f1  #2334 pc 31136
	flw	%f3, 48(%x2)  #2334 pc 31140
	fadd	%f1, %f1, %f3  #2334 pc 31144
	fsw	%f1, 4(%x7)  #2334 pc 31148
	flw	%f1, 8(%x6)  #2335 pc 31152
	fmul	%f0, %f0, %f1  #2335 pc 31156
	flw	%f1, 40(%x2)  #2335 pc 31160
	fadd	%f0, %f0, %f1  #2335 pc 31164
	fsw	%f0, 8(%x7)  #2335 pc 31168
	addi	%x6, %x0, 0  #0 pc 31172
	addi	%x30, %x7, 0  #0 pc 31176
	addi	%x7, %x6, 0  #0 pc 31180
	addi	%x6, %x30, 0  #0 pc 31184
	sw	%x1, 88(%x2)  #2336 pc 31188
	addi	%x2, %x2, 92  #2336 pc 31192
	jal	%x1, vecunit_sgn.2614  #2336 pc 31196
	addi	%x2, %x2, -92  #2336 pc 31200
	lw	%x1, 88(%x2) #2336 pc 31204
	lw	%x6, 32(%x2)  #2337 pc 31208
	sw	%x1, 88(%x2)  #2337 pc 31212
	addi	%x2, %x2, 92  #2337 pc 31216
	jal	%x1, vecbzero.2609  #2337 pc 31220
	addi	%x2, %x2, -92  #2337 pc 31224
	lw	%x1, 88(%x2) #2337 pc 31228
	lw	%x6, 28(%x2)  #2338 pc 31232
	lw	%x7, 24(%x2)  #2338 pc 31236
	sw	%x1, 88(%x2)  #2338 pc 31240
	addi	%x2, %x2, 92  #2338 pc 31244
	jal	%x1, veccpy.2611  #2338 pc 31248
	addi	%x2, %x2, -92  #2338 pc 31252
	lw	%x1, 88(%x2) #2338 pc 31256
	addi	%x6, %x0, 0  #0 pc 31260
	fmv	%f0, l.6219  #0 pc 31264
	lw	%x7, 20(%x2)  #2341 pc 31268
	slli	%x8, %x7, 2  #2341 pc 31272
	lw	%x9, 16(%x2)  #2341 pc 31276
	add	%x31, %x8, %x9  #2341 pc 31280
	lw	%x8, 0(%x31)  #2341 pc 31284
	fmv	%f1, l.6207  #0 pc 31288
	lw	%x10, 56(%x2)  #2341 pc 31292
	lw	%x29, 12(%x2)  #2341 pc 31296
	addi	%x7, %x10, 0  #0 pc 31300
	sw	%x1, 88(%x2)  #2341 pc 31304
	lw	%x30, 0(%x29)  #2341 pc 31308
	addi	%x2, %x2, 92  #2341 pc 31312
	jalr	%x1, %x30, 0  #2341 pc 31316
	addi	%x2, %x2, -92  #2341 pc 31320
	lw	%x1, 88(%x2)  #2341 pc 31324
	lw	%x6, 20(%x2)  #2342 pc 31328
	slli	%x7, %x6, 2  #2342 pc 31332
	lw	%x8, 16(%x2)  #2342 pc 31336
	add	%x31, %x7, %x8  #2342 pc 31340
	lw	%x7, 0(%x31)  #2342 pc 31344
	addi	%x6, %x7, 0  #0 pc 31348
	sw	%x1, 88(%x2)  #2342 pc 31352
	addi	%x2, %x2, 92  #2342 pc 31356
	jal	%x1, p_rgb.2681  #2342 pc 31360
	addi	%x2, %x2, -92  #2342 pc 31364
	lw	%x1, 88(%x2) #2342 pc 31368
	lw	%x7, 32(%x2)  #2342 pc 31372
	sw	%x1, 88(%x2)  #2342 pc 31376
	addi	%x2, %x2, 92  #2342 pc 31380
	jal	%x1, veccpy.2611  #2342 pc 31384
	addi	%x2, %x2, -92  #2342 pc 31388
	lw	%x1, 88(%x2) #2342 pc 31392
	lw	%x6, 20(%x2)  #2343 pc 31396
	slli	%x7, %x6, 2  #2343 pc 31400
	lw	%x8, 16(%x2)  #2343 pc 31404
	add	%x31, %x7, %x8  #2343 pc 31408
	lw	%x7, 0(%x31)  #2343 pc 31412
	lw	%x9, 8(%x2)  #2343 pc 31416
	addi	%x6, %x7, 0  #0 pc 31420
	addi	%x7, %x9, 0  #0 pc 31424
	sw	%x1, 88(%x2)  #2343 pc 31428
	addi	%x2, %x2, 92  #2343 pc 31432
	jal	%x1, p_set_group_id.2695  #2343 pc 31436
	addi	%x2, %x2, -92  #2343 pc 31440
	lw	%x1, 88(%x2) #2343 pc 31444
	lw	%x6, 20(%x2)  #2346 pc 31448
	slli	%x7, %x6, 2  #2346 pc 31452
	lw	%x8, 16(%x2)  #2346 pc 31456
	add	%x31, %x7, %x8  #2346 pc 31460
	lw	%x7, 0(%x31)  #2346 pc 31464
	addi	%x9, %x0, 0  #0 pc 31468
	lw	%x29, 4(%x2)  #2346 pc 31472
	addi	%x6, %x7, 0  #0 pc 31476
	addi	%x7, %x9, 0  #0 pc 31480
	sw	%x1, 88(%x2)  #2346 pc 31484
	lw	%x30, 0(%x29)  #2346 pc 31488
	addi	%x2, %x2, 92  #2346 pc 31492
	jalr	%x1, %x30, 0  #2346 pc 31496
	addi	%x2, %x2, -92  #2346 pc 31500
	lw	%x1, 88(%x2)  #2346 pc 31504
	lw	%x6, 20(%x2)  #2348 pc 31508
	addi	%x6, %x6, -1  #2348 pc 31512
	addi	%x7, %x0, 1  #0 pc 31516
	lw	%x8, 8(%x2)  #2348 pc 31520
	sw	%x6, 88(%x2)  #2348 pc 31524
	addi	%x6, %x8, 0  #0 pc 31528
	sw	%x1, 92(%x2)  #2348 pc 31532
	addi	%x2, %x2, 96  #2348 pc 31536
	jal	%x1, add_mod5.2598  #2348 pc 31540
	addi	%x2, %x2, -96  #2348 pc 31544
	lw	%x1, 92(%x2) #2348 pc 31548
	addi	%x8, %x6, 0  #2348 pc 31552
	flw	%f0, 64(%x2)  #2348 pc 31556
	flw	%f1, 48(%x2)  #2348 pc 31560
	flw	%f2, 40(%x2)  #2348 pc 31564
	lw	%x6, 16(%x2)  #2348 pc 31568
	lw	%x7, 88(%x2)  #2348 pc 31572
	lw	%x29, 0(%x2)  #2348 pc 31576
	lw	%x30, 0(%x29)  #2348 pc 31580
	jalr	%x0, %x30, 0  #2348 pc 31584
	nop #pc 31588
bge_else.9457: #pc 31592
	ret #pc 31592
	nop #pc 31596
pretrace_line.2992:  #pc 31600
	lw	%x9, 24(%x29)  #0 pc 31600
	lw	%x10, 20(%x29)  #0 pc 31604
	lw	%x11, 16(%x29)  #0 pc 31608
	lw	%x12, 12(%x29)  #0 pc 31612
	lw	%x13, 8(%x29)  #0 pc 31616
	lw	%x14, 4(%x29)  #0 pc 31620
	flw	%f0, 0(%x11)  #2355 pc 31624
	lw	%x11, 4(%x14)  #2355 pc 31628
	sub	%x7, %x7, %x11  #2355 pc 31632
	sw	%x8, 0(%x2)  #2355 pc 31636
	sw	%x6, 4(%x2)  #2355 pc 31640
	sw	%x12, 8(%x2)  #2355 pc 31644
	sw	%x13, 12(%x2)  #2355 pc 31648
	sw	%x9, 16(%x2)  #2355 pc 31652
	sw	%x10, 20(%x2)  #2355 pc 31656
	fsw	%f0, 24(%x2)  #2355 pc 31660
	addi	%x6, %x7, 0  #0 pc 31664
	sw	%x1, 32(%x2)  #2355 pc 31668
	addi	%x2, %x2, 36  #2355 pc 31672
	jal	%x1, float_of_int.2518  #2355 pc 31676
	addi	%x2, %x2, -36  #2355 pc 31680
	lw	%x1, 32(%x2) #2355 pc 31684
	flw	%f1, 24(%x2)  #2355 pc 31688
	fmul	%f0, %f1, %f0  #2355 pc 31692
	lw	%x6, 20(%x2)  #2358 pc 31696
	flw	%f1, 0(%x6)  #2358 pc 31700
	fmul	%f1, %f0, %f1  #2358 pc 31704
	lw	%x7, 16(%x2)  #2358 pc 31708
	flw	%f2, 0(%x7)  #2358 pc 31712
	fadd	%f1, %f1, %f2  #2358 pc 31716
	flw	%f2, 4(%x6)  #2359 pc 31720
	fmul	%f2, %f0, %f2  #2359 pc 31724
	flw	%f3, 4(%x7)  #2359 pc 31728
	fadd	%f2, %f2, %f3  #2359 pc 31732
	flw	%f3, 8(%x6)  #2360 pc 31736
	fmul	%f0, %f0, %f3  #2360 pc 31740
	flw	%f3, 8(%x7)  #2360 pc 31744
	fadd	%f0, %f0, %f3  #2360 pc 31748
	lw	%x6, 12(%x2)  #2361 pc 31752
	lw	%x6, 0(%x6)  #2361 pc 31756
	addi	%x7, %x6, -1  #2361 pc 31760
	lw	%x6, 4(%x2)  #2361 pc 31764
	lw	%x8, 0(%x2)  #2361 pc 31768
	lw	%x29, 8(%x2)  #2361 pc 31772
	fadd	%f29, %f2, %f30  #0 pc 31776
	fadd	%f2, %f0, %f30  #0 pc 31780
	fadd	%f0, %f1, %f30  #0 pc 31784
	fadd	%f1, %f29, %f30  #0 pc 31788
	lw	%x30, 0(%x29)  #2361 pc 31792
	jalr	%x0, %x30, 0  #2361 pc 31796
	nop #pc 31800
scan_pixel.2996:  #pc 31804
	lw	%x12, 24(%x29)  #0 pc 31804
	lw	%x13, 20(%x29)  #0 pc 31808
	lw	%x14, 16(%x29)  #0 pc 31812
	lw	%x15, 12(%x29)  #0 pc 31816
	lw	%x16, 8(%x29)  #0 pc 31820
	lw	%x17, 4(%x29)  #0 pc 31824
	lw	%x16, 0(%x16)  #2371 pc 31828
	bge	%x6, %x16, 12  #2371 pc 31832
	j	ble_else.9462 #pc 31836
	nop #pc 31840
	ret #pc 31844
	nop #pc 31848
ble_else.9462: #pc 31852
	slli	%x16, %x6, 2  #2374 pc 31852
	add	%x31, %x16, %x9  #2374 pc 31856
	lw	%x16, 0(%x31)  #2374 pc 31860
	sw	%x29, 0(%x2)  #2374 pc 31864
	sw	%x11, 4(%x2)  #2374 pc 31868
	sw	%x12, 8(%x2)  #2374 pc 31872
	sw	%x8, 12(%x2)  #2374 pc 31876
	sw	%x13, 16(%x2)  #2374 pc 31880
	sw	%x17, 20(%x2)  #2374 pc 31884
	sw	%x9, 24(%x2)  #2374 pc 31888
	sw	%x10, 28(%x2)  #2374 pc 31892
	sw	%x7, 32(%x2)  #2374 pc 31896
	sw	%x6, 36(%x2)  #2374 pc 31900
	sw	%x15, 40(%x2)  #2374 pc 31904
	sw	%x14, 44(%x2)  #2374 pc 31908
	addi	%x6, %x16, 0  #0 pc 31912
	sw	%x1, 48(%x2)  #2374 pc 31916
	addi	%x2, %x2, 52  #2374 pc 31920
	jal	%x1, p_rgb.2681  #2374 pc 31924
	addi	%x2, %x2, -52  #2374 pc 31928
	lw	%x1, 48(%x2) #2374 pc 31932
	addi	%x7, %x6, 0  #2374 pc 31936
	lw	%x6, 44(%x2)  #2374 pc 31940
	sw	%x1, 48(%x2)  #2374 pc 31944
	addi	%x2, %x2, 52  #2374 pc 31948
	jal	%x1, veccpy.2611  #2374 pc 31952
	addi	%x2, %x2, -52  #2374 pc 31956
	lw	%x1, 48(%x2) #2374 pc 31960
	lw	%x6, 36(%x2)  #2377 pc 31964
	lw	%x7, 32(%x2)  #2377 pc 31968
	lw	%x8, 28(%x2)  #2377 pc 31972
	lw	%x29, 40(%x2)  #2377 pc 31976
	sw	%x1, 48(%x2)  #2377 pc 31980
	lw	%x30, 0(%x29)  #2377 pc 31984
	addi	%x2, %x2, 52  #2377 pc 31988
	jalr	%x1, %x30, 0  #2377 pc 31992
	addi	%x2, %x2, -52  #2377 pc 31996
	lw	%x1, 48(%x2)  #2377 pc 32000
	beq	%x6, %x0, 12  #2377 pc 32004
	j	be_else.9464 #pc 32008
	nop #pc 32012
	lw	%x6, 36(%x2)  #2380 pc 32016
	slli	%x7, %x6, 2  #2380 pc 32020
	lw	%x8, 24(%x2)  #2380 pc 32024
	add	%x31, %x7, %x8  #2380 pc 32028
	lw	%x7, 0(%x31)  #2380 pc 32032
	addi	%x9, %x0, 0  #0 pc 32036
	lw	%x29, 20(%x2)  #2380 pc 32040
	addi	%x6, %x7, 0  #0 pc 32044
	addi	%x7, %x9, 0  #0 pc 32048
	sw	%x1, 48(%x2)  #2380 pc 32052
	lw	%x30, 0(%x29)  #2380 pc 32056
	addi	%x2, %x2, 52  #2380 pc 32060
	jalr	%x1, %x30, 0  #2380 pc 32064
	addi	%x2, %x2, -52  #2380 pc 32068
	lw	%x1, 48(%x2)  #2380 pc 32072
	j	be_cont.9465 #pc 32076
	nop #pc 32080
be_else.9464: #pc 32084
	addi	%x11, %x0, 0  #0 pc 32084
	lw	%x6, 36(%x2)  #2378 pc 32088
	lw	%x7, 32(%x2)  #2378 pc 32092
	lw	%x8, 12(%x2)  #2378 pc 32096
	lw	%x9, 24(%x2)  #2378 pc 32100
	lw	%x10, 28(%x2)  #2378 pc 32104
	lw	%x29, 16(%x2)  #2378 pc 32108
	sw	%x1, 48(%x2)  #2378 pc 32112
	lw	%x30, 0(%x29)  #2378 pc 32116
	addi	%x2, %x2, 52  #2378 pc 32120
	jalr	%x1, %x30, 0  #2378 pc 32124
	addi	%x2, %x2, -52  #2378 pc 32128
	lw	%x1, 48(%x2)  #2378 pc 32132
be_cont.9465: #pc 32136
	lw	%x6, 4(%x2)  #2383 pc 32136
	lw	%x29, 8(%x2)  #2383 pc 32140
	sw	%x1, 48(%x2)  #2383 pc 32144
	lw	%x30, 0(%x29)  #2383 pc 32148
	addi	%x2, %x2, 52  #2383 pc 32152
	jalr	%x1, %x30, 0  #2383 pc 32156
	addi	%x2, %x2, -52  #2383 pc 32160
	lw	%x1, 48(%x2)  #2383 pc 32164
	lw	%x6, 36(%x2)  #2385 pc 32168
	addi	%x6, %x6, 1  #2385 pc 32172
	lw	%x7, 32(%x2)  #2385 pc 32176
	lw	%x8, 12(%x2)  #2385 pc 32180
	lw	%x9, 24(%x2)  #2385 pc 32184
	lw	%x10, 28(%x2)  #2385 pc 32188
	lw	%x11, 4(%x2)  #2385 pc 32192
	lw	%x29, 0(%x2)  #2385 pc 32196
	lw	%x30, 0(%x29)  #2385 pc 32200
	jalr	%x0, %x30, 0  #2385 pc 32204
	nop #pc 32208
scan_line.3003:  #pc 32212
	lw	%x12, 12(%x29)  #0 pc 32212
	lw	%x13, 8(%x29)  #0 pc 32216
	lw	%x14, 4(%x29)  #0 pc 32220
	lw	%x15, 4(%x14)  #2392 pc 32224
	bge	%x6, %x15, 12  #2392 pc 32228
	j	ble_else.9466 #pc 32232
	nop #pc 32236
	ret #pc 32240
	nop #pc 32244
ble_else.9466: #pc 32248
	lw	%x14, 4(%x14)  #2394 pc 32248
	addi	%x14, %x14, -1  #2394 pc 32252
	sw	%x29, 0(%x2)  #2394 pc 32256
	sw	%x10, 4(%x2)  #2394 pc 32260
	sw	%x11, 8(%x2)  #2394 pc 32264
	sw	%x9, 12(%x2)  #2394 pc 32268
	sw	%x8, 16(%x2)  #2394 pc 32272
	sw	%x7, 20(%x2)  #2394 pc 32276
	sw	%x6, 24(%x2)  #2394 pc 32280
	sw	%x12, 28(%x2)  #2394 pc 32284
	bge	%x6, %x14, 12  #2394 pc 32288
	j	ble_else.9468 #pc 32292
	nop #pc 32296
	j	ble_cont.9469 #pc 32300
	nop #pc 32304
ble_else.9468: #pc 32308
	addi	%x14, %x6, 1  #2395 pc 32308
	addi	%x8, %x10, 0  #0 pc 32312
	addi	%x7, %x14, 0  #0 pc 32316
	addi	%x6, %x9, 0  #0 pc 32320
	addi	%x29, %x13, 0  #0 pc 32324
	sw	%x1, 32(%x2)  #2395 pc 32328
	lw	%x30, 0(%x29)  #2395 pc 32332
	addi	%x2, %x2, 36  #2395 pc 32336
	jalr	%x1, %x30, 0  #2395 pc 32340
	addi	%x2, %x2, -36  #2395 pc 32344
	lw	%x1, 32(%x2)  #2395 pc 32348
ble_cont.9469: #pc 32352
	addi	%x6, %x0, 0  #0 pc 32352
	lw	%x7, 24(%x2)  #2397 pc 32356
	lw	%x8, 20(%x2)  #2397 pc 32360
	lw	%x9, 16(%x2)  #2397 pc 32364
	lw	%x10, 12(%x2)  #2397 pc 32368
	lw	%x11, 8(%x2)  #2397 pc 32372
	lw	%x29, 28(%x2)  #2397 pc 32376
	sw	%x1, 32(%x2)  #2397 pc 32380
	lw	%x30, 0(%x29)  #2397 pc 32384
	addi	%x2, %x2, 36  #2397 pc 32388
	jalr	%x1, %x30, 0  #2397 pc 32392
	addi	%x2, %x2, -36  #2397 pc 32396
	lw	%x1, 32(%x2)  #2397 pc 32400
	lw	%x6, 24(%x2)  #2398 pc 32404
	addi	%x6, %x6, 1  #2398 pc 32408
	addi	%x7, %x0, 2  #0 pc 32412
	lw	%x8, 4(%x2)  #2398 pc 32416
	sw	%x6, 32(%x2)  #2398 pc 32420
	addi	%x6, %x8, 0  #0 pc 32424
	sw	%x1, 36(%x2)  #2398 pc 32428
	addi	%x2, %x2, 40  #2398 pc 32432
	jal	%x1, add_mod5.2598  #2398 pc 32436
	addi	%x2, %x2, -40  #2398 pc 32440
	lw	%x1, 36(%x2) #2398 pc 32444
	addi	%x10, %x6, 0  #2398 pc 32448
	lw	%x6, 32(%x2)  #2398 pc 32452
	lw	%x7, 16(%x2)  #2398 pc 32456
	lw	%x8, 12(%x2)  #2398 pc 32460
	lw	%x9, 20(%x2)  #2398 pc 32464
	lw	%x11, 8(%x2)  #2398 pc 32468
	lw	%x29, 0(%x2)  #2398 pc 32472
	lw	%x30, 0(%x29)  #2398 pc 32476
	jalr	%x0, %x30, 0  #2398 pc 32480
	nop #pc 32484
create_float5x3array.3010:  #pc 32488
	addi	%x6, %x0, 3  #0 pc 32488
	fmv	%f0, l.6207  #0 pc 32492
	sw	%x1, 0(%x2)  #2409 pc 32496
	addi	%x2, %x2, 4  #2409 pc 32500
	jal	%x1, create_float_array.2557  #2409 pc 32504
	addi	%x2, %x2, -4  #2409 pc 32508
	lw	%x1, 0(%x2) #2409 pc 32512
	addi	%x7, %x6, 0  #2409 pc 32516
	addi	%x6, %x0, 5  #0 pc 32520
	sw	%x1, 0(%x2)  #2410 pc 32524
	addi	%x2, %x2, 4  #2410 pc 32528
	jal	%x1, create_array.2550  #2410 pc 32532
	addi	%x2, %x2, -4  #2410 pc 32536
	lw	%x1, 0(%x2) #2410 pc 32540
	addi	%x7, %x0, 3  #0 pc 32544
	fmv	%f0, l.6207  #0 pc 32548
	sw	%x6, 0(%x2)  #2411 pc 32552
	addi	%x6, %x7, 0  #0 pc 32556
	sw	%x1, 4(%x2)  #2411 pc 32560
	addi	%x2, %x2, 8  #2411 pc 32564
	jal	%x1, create_float_array.2557  #2411 pc 32568
	addi	%x2, %x2, -8  #2411 pc 32572
	lw	%x1, 4(%x2) #2411 pc 32576
	lw	%x7, 0(%x2)  #2411 pc 32580
	sw	%x6, 4(%x7)  #2411 pc 32584
	addi	%x6, %x0, 3  #0 pc 32588
	fmv	%f0, l.6207  #0 pc 32592
	sw	%x1, 4(%x2)  #2412 pc 32596
	addi	%x2, %x2, 8  #2412 pc 32600
	jal	%x1, create_float_array.2557  #2412 pc 32604
	addi	%x2, %x2, -8  #2412 pc 32608
	lw	%x1, 4(%x2) #2412 pc 32612
	lw	%x7, 0(%x2)  #2412 pc 32616
	sw	%x6, 8(%x7)  #2412 pc 32620
	addi	%x6, %x0, 3  #0 pc 32624
	fmv	%f0, l.6207  #0 pc 32628
	sw	%x1, 4(%x2)  #2413 pc 32632
	addi	%x2, %x2, 8  #2413 pc 32636
	jal	%x1, create_float_array.2557  #2413 pc 32640
	addi	%x2, %x2, -8  #2413 pc 32644
	lw	%x1, 4(%x2) #2413 pc 32648
	lw	%x7, 0(%x2)  #2413 pc 32652
	sw	%x6, 12(%x7)  #2413 pc 32656
	addi	%x6, %x0, 3  #0 pc 32660
	fmv	%f0, l.6207  #0 pc 32664
	sw	%x1, 4(%x2)  #2414 pc 32668
	addi	%x2, %x2, 8  #2414 pc 32672
	jal	%x1, create_float_array.2557  #2414 pc 32676
	addi	%x2, %x2, -8  #2414 pc 32680
	lw	%x1, 4(%x2) #2414 pc 32684
	lw	%x7, 0(%x2)  #2414 pc 32688
	sw	%x6, 16(%x7)  #2414 pc 32692
	addi	%x6, %x7, 0  #2415 pc 32696
	ret #pc 32700
	nop #pc 32704
create_pixel.3012:  #pc 32708
	addi	%x6, %x0, 3  #0 pc 32708
	fmv	%f0, l.6207  #0 pc 32712
	sw	%x1, 0(%x2)  #2421 pc 32716
	addi	%x2, %x2, 4  #2421 pc 32720
	jal	%x1, create_float_array.2557  #2421 pc 32724
	addi	%x2, %x2, -4  #2421 pc 32728
	lw	%x1, 0(%x2) #2421 pc 32732
	sw	%x6, 0(%x2)  #2422 pc 32736
	sw	%x1, 4(%x2)  #2422 pc 32740
	addi	%x2, %x2, 8  #2422 pc 32744
	jal	%x1, create_float5x3array.3010  #2422 pc 32748
	addi	%x2, %x2, -8  #2422 pc 32752
	lw	%x1, 4(%x2) #2422 pc 32756
	addi	%x7, %x0, 5  #0 pc 32760
	addi	%x8, %x0, 0  #0 pc 32764
	sw	%x6, 4(%x2)  #2423 pc 32768
	addi	%x6, %x7, 0  #0 pc 32772
	addi	%x7, %x8, 0  #0 pc 32776
	sw	%x1, 8(%x2)  #2423 pc 32780
	addi	%x2, %x2, 12  #2423 pc 32784
	jal	%x1, create_array.2550  #2423 pc 32788
	addi	%x2, %x2, -12  #2423 pc 32792
	lw	%x1, 8(%x2) #2423 pc 32796
	addi	%x7, %x0, 5  #0 pc 32800
	addi	%x8, %x0, 0  #0 pc 32804
	sw	%x6, 8(%x2)  #2424 pc 32808
	addi	%x6, %x7, 0  #0 pc 32812
	addi	%x7, %x8, 0  #0 pc 32816
	sw	%x1, 12(%x2)  #2424 pc 32820
	addi	%x2, %x2, 16  #2424 pc 32824
	jal	%x1, create_array.2550  #2424 pc 32828
	addi	%x2, %x2, -16  #2424 pc 32832
	lw	%x1, 12(%x2) #2424 pc 32836
	sw	%x6, 12(%x2)  #2425 pc 32840
	sw	%x1, 16(%x2)  #2425 pc 32844
	addi	%x2, %x2, 20  #2425 pc 32848
	jal	%x1, create_float5x3array.3010  #2425 pc 32852
	addi	%x2, %x2, -20  #2425 pc 32856
	lw	%x1, 16(%x2) #2425 pc 32860
	sw	%x6, 16(%x2)  #2426 pc 32864
	sw	%x1, 20(%x2)  #2426 pc 32868
	addi	%x2, %x2, 24  #2426 pc 32872
	jal	%x1, create_float5x3array.3010  #2426 pc 32876
	addi	%x2, %x2, -24  #2426 pc 32880
	lw	%x1, 20(%x2) #2426 pc 32884
	addi	%x7, %x0, 1  #0 pc 32888
	addi	%x8, %x0, 0  #0 pc 32892
	sw	%x6, 20(%x2)  #2427 pc 32896
	addi	%x6, %x7, 0  #0 pc 32900
	addi	%x7, %x8, 0  #0 pc 32904
	sw	%x1, 24(%x2)  #2427 pc 32908
	addi	%x2, %x2, 28  #2427 pc 32912
	jal	%x1, create_array.2550  #2427 pc 32916
	addi	%x2, %x2, -28  #2427 pc 32920
	lw	%x1, 24(%x2) #2427 pc 32924
	sw	%x6, 24(%x2)  #2428 pc 32928
	sw	%x1, 28(%x2)  #2428 pc 32932
	addi	%x2, %x2, 32  #2428 pc 32936
	jal	%x1, create_float5x3array.3010  #2428 pc 32940
	addi	%x2, %x2, -32  #2428 pc 32944
	lw	%x1, 28(%x2) #2428 pc 32948
	addi	%x7, %x3, 0  #2429 pc 32952
	addi	%x3, %x3, 32  #2429 pc 32956
	sw	%x6, 28(%x7)  #2429 pc 32960
	lw	%x6, 24(%x2)  #2429 pc 32964
	sw	%x6, 24(%x7)  #2429 pc 32968
	lw	%x6, 20(%x2)  #2429 pc 32972
	sw	%x6, 20(%x7)  #2429 pc 32976
	lw	%x6, 16(%x2)  #2429 pc 32980
	sw	%x6, 16(%x7)  #2429 pc 32984
	lw	%x6, 12(%x2)  #2429 pc 32988
	sw	%x6, 12(%x7)  #2429 pc 32992
	lw	%x6, 8(%x2)  #2429 pc 32996
	sw	%x6, 8(%x7)  #2429 pc 33000
	lw	%x6, 4(%x2)  #2429 pc 33004
	sw	%x6, 4(%x7)  #2429 pc 33008
	lw	%x6, 0(%x2)  #2429 pc 33012
	sw	%x6, 0(%x7)  #2429 pc 33016
	addi	%x6, %x7, 0  #2429 pc 33020
	ret #pc 33024
	nop #pc 33028
init_line_elements.3014:  #pc 33032
	bge	%x7, %x0, 12  #2434 pc 33032
	j	bge_else.9470 #pc 33036
	nop #pc 33040
	sw	%x6, 0(%x2)  #2435 pc 33044
	sw	%x7, 4(%x2)  #2435 pc 33048
	sw	%x1, 8(%x2)  #2435 pc 33052
	addi	%x2, %x2, 12  #2435 pc 33056
	jal	%x1, create_pixel.3012  #2435 pc 33060
	addi	%x2, %x2, -12  #2435 pc 33064
	lw	%x1, 8(%x2) #2435 pc 33068
	lw	%x7, 4(%x2)  #2435 pc 33072
	slli	%x8, %x7, 2  #2435 pc 33076
	lw	%x9, 0(%x2)  #2435 pc 33080
	add	%x31, %x8, %x9  #2435 pc 33084
	sw	%x6, 0(%x31)  #2435 pc 33088
	addi	%x7, %x7, -1  #2436 pc 33092
	addi	%x6, %x9, 0  #0 pc 33096
	j	init_line_elements.3014  #2436 pc 33100
	nop #pc 33104
bge_else.9470: #pc 33108
	ret #pc 33108
	nop #pc 33112
create_pixelline.3017:  #pc 33116
	lw	%x6, 4(%x29)  #0 pc 33116
	lw	%x7, 0(%x6)  #2443 pc 33120
	sw	%x6, 0(%x2)  #2443 pc 33124
	sw	%x7, 4(%x2)  #2443 pc 33128
	sw	%x1, 8(%x2)  #2443 pc 33132
	addi	%x2, %x2, 12  #2443 pc 33136
	jal	%x1, create_pixel.3012  #2443 pc 33140
	addi	%x2, %x2, -12  #2443 pc 33144
	lw	%x1, 8(%x2) #2443 pc 33148
	addi	%x7, %x6, 0  #2443 pc 33152
	lw	%x6, 4(%x2)  #2443 pc 33156
	sw	%x1, 8(%x2)  #2443 pc 33160
	addi	%x2, %x2, 12  #2443 pc 33164
	jal	%x1, create_array.2550  #2443 pc 33168
	addi	%x2, %x2, -12  #2443 pc 33172
	lw	%x1, 8(%x2) #2443 pc 33176
	lw	%x7, 0(%x2)  #2444 pc 33180
	lw	%x7, 0(%x7)  #2444 pc 33184
	addi	%x7, %x7, -2  #2444 pc 33188
	j	init_line_elements.3014  #2444 pc 33192
	nop #pc 33196
tan.3019:  #pc 33200
	fsw	%f0, 0(%x2)  #2457 pc 33200
	sw	%x1, 8(%x2)  #2457 pc 33204
	addi	%x2, %x2, 12  #2457 pc 33208
	jal	%x1, sin.2508  #2457 pc 33212
	addi	%x2, %x2, -12  #2457 pc 33216
	lw	%x1, 8(%x2) #2457 pc 33220
	flw	%f1, 0(%x2)  #2457 pc 33224
	fsw	%f0, 8(%x2)  #2457 pc 33228
	fadd	%f0, %f1, %f30  #0 pc 33232
	sw	%x1, 16(%x2)  #2457 pc 33236
	addi	%x2, %x2, 20  #2457 pc 33240
	jal	%x1, cos.2510  #2457 pc 33244
	addi	%x2, %x2, -20  #2457 pc 33248
	lw	%x1, 16(%x2) #2457 pc 33252
	flw	%f1, 8(%x2)  #2457 pc 33256
	fdiv	%f0, %f1, %f0  #2457 pc 33260
	ret #pc 33264
	nop #pc 33268
adjust_position.3021:  #pc 33272
	fmul	%f0, %f0, %f0  #2462 pc 33272
	fmv	%f2, l.6773  #0 pc 33276
	fadd	%f0, %f0, %f2  #2462 pc 33280
	fsqrt	%f0, %f0  #2462 pc 33284
	fmv	%f2, l.6219  #0 pc 33288
	fdiv	%f2, %f2, %f0  #2463 pc 33292
	fsw	%f0, 0(%x2)  #2464 pc 33296
	fsw	%f1, 8(%x2)  #2464 pc 33300
	fadd	%f0, %f2, %f30  #0 pc 33304
	sw	%x1, 16(%x2)  #2464 pc 33308
	addi	%x2, %x2, 20  #2464 pc 33312
	jal	%x1, atan.2512  #2464 pc 33316
	addi	%x2, %x2, -20  #2464 pc 33320
	lw	%x1, 16(%x2) #2464 pc 33324
	flw	%f1, 8(%x2)  #2465 pc 33328
	fmul	%f0, %f0, %f1  #2465 pc 33332
	sw	%x1, 16(%x2)  #2465 pc 33336
	addi	%x2, %x2, 20  #2465 pc 33340
	jal	%x1, tan.3019  #2465 pc 33344
	addi	%x2, %x2, -20  #2465 pc 33348
	lw	%x1, 16(%x2) #2465 pc 33352
	flw	%f1, 0(%x2)  #2466 pc 33356
	fmul	%f0, %f0, %f1  #2466 pc 33360
	ret #pc 33364
	nop #pc 33368
calc_dirvec.3024:  #pc 33372
	lw	%x9, 4(%x29)  #0 pc 33372
	addi	%x31, %x0, 5  #pc 33376
	bge	%x6, %x31, 12  #2471 pc 33380
	j	bge_else.9471 #pc 33384
	nop #pc 33388
	sw	%x8, 0(%x2)  #2472 pc 33392
	sw	%x9, 4(%x2)  #2472 pc 33396
	sw	%x7, 8(%x2)  #2472 pc 33400
	fsw	%f0, 16(%x2)  #2472 pc 33404
	fsw	%f1, 24(%x2)  #2472 pc 33408
	sw	%x1, 32(%x2)  #2472 pc 33412
	addi	%x2, %x2, 36  #2472 pc 33416
	jal	%x1, fsqr.2501  #2472 pc 33420
	addi	%x2, %x2, -36  #2472 pc 33424
	lw	%x1, 32(%x2) #2472 pc 33428
	flw	%f1, 24(%x2)  #2472 pc 33432
	fsw	%f0, 32(%x2)  #2472 pc 33436
	fadd	%f0, %f1, %f30  #0 pc 33440
	sw	%x1, 40(%x2)  #2472 pc 33444
	addi	%x2, %x2, 44  #2472 pc 33448
	jal	%x1, fsqr.2501  #2472 pc 33452
	addi	%x2, %x2, -44  #2472 pc 33456
	lw	%x1, 40(%x2) #2472 pc 33460
	flw	%f1, 32(%x2)  #2472 pc 33464
	fadd	%f0, %f1, %f0  #2472 pc 33468
	fmv	%f1, l.6219  #0 pc 33472
	fadd	%f0, %f0, %f1  #2472 pc 33476
	fsqrt	%f0, %f0  #2472 pc 33480
	flw	%f1, 16(%x2)  #2473 pc 33484
	fdiv	%f1, %f1, %f0  #2473 pc 33488
	flw	%f2, 24(%x2)  #2474 pc 33492
	fdiv	%f2, %f2, %f0  #2474 pc 33496
	fmv	%f3, l.6219  #0 pc 33500
	fdiv	%f0, %f3, %f0  #2475 pc 33504
	lw	%x6, 8(%x2)  #2478 pc 33508
	slli	%x6, %x6, 2  #2478 pc 33512
	lw	%x7, 4(%x2)  #2478 pc 33516
	add	%x31, %x6, %x7  #2478 pc 33520
	lw	%x6, 0(%x31)  #2478 pc 33524
	lw	%x7, 0(%x2)  #2479 pc 33528
	slli	%x8, %x7, 2  #2479 pc 33532
	add	%x31, %x8, %x6  #2479 pc 33536
	lw	%x8, 0(%x31)  #2479 pc 33540
	sw	%x6, 40(%x2)  #2479 pc 33544
	fsw	%f0, 48(%x2)  #2479 pc 33548
	fsw	%f2, 56(%x2)  #2479 pc 33552
	fsw	%f1, 64(%x2)  #2479 pc 33556
	addi	%x6, %x8, 0  #0 pc 33560
	sw	%x1, 72(%x2)  #2479 pc 33564
	addi	%x2, %x2, 76  #2479 pc 33568
	jal	%x1, d_vec.2700  #2479 pc 33572
	addi	%x2, %x2, -76  #2479 pc 33576
	lw	%x1, 72(%x2) #2479 pc 33580
	flw	%f0, 64(%x2)  #2479 pc 33584
	flw	%f1, 56(%x2)  #2479 pc 33588
	flw	%f2, 48(%x2)  #2479 pc 33592
	sw	%x1, 72(%x2)  #2479 pc 33596
	addi	%x2, %x2, 76  #2479 pc 33600
	jal	%x1, vecset.2601  #2479 pc 33604
	addi	%x2, %x2, -76  #2479 pc 33608
	lw	%x1, 72(%x2) #2479 pc 33612
	lw	%x6, 0(%x2)  #2480 pc 33616
	addi	%x7, %x6, 40  #2480 pc 33620
	slli	%x7, %x7, 2  #2480 pc 33624
	lw	%x8, 40(%x2)  #2480 pc 33628
	add	%x31, %x7, %x8  #2480 pc 33632
	lw	%x7, 0(%x31)  #2480 pc 33636
	addi	%x6, %x7, 0  #0 pc 33640
	sw	%x1, 72(%x2)  #2480 pc 33644
	addi	%x2, %x2, 76  #2480 pc 33648
	jal	%x1, d_vec.2700  #2480 pc 33652
	addi	%x2, %x2, -76  #2480 pc 33656
	lw	%x1, 72(%x2) #2480 pc 33660
	flw	%f0, 56(%x2)  #2480 pc 33664
	sw	%x6, 72(%x2)  #2480 pc 33668
	sw	%x1, 76(%x2)  #2480 pc 33672
	addi	%x2, %x2, 80  #2480 pc 33676
	jal	%x1, fneg.2499  #2480 pc 33680
	addi	%x2, %x2, -80  #2480 pc 33684
	lw	%x1, 76(%x2) #2480 pc 33688
	fadd	%f2, %f0, %f30  #2480 pc 33692
	flw	%f0, 64(%x2)  #2480 pc 33696
	flw	%f1, 48(%x2)  #2480 pc 33700
	lw	%x6, 72(%x2)  #2480 pc 33704
	sw	%x1, 76(%x2)  #2480 pc 33708
	addi	%x2, %x2, 80  #2480 pc 33712
	jal	%x1, vecset.2601  #2480 pc 33716
	addi	%x2, %x2, -80  #2480 pc 33720
	lw	%x1, 76(%x2) #2480 pc 33724
	lw	%x6, 0(%x2)  #2481 pc 33728
	addi	%x7, %x6, 80  #2481 pc 33732
	slli	%x7, %x7, 2  #2481 pc 33736
	lw	%x8, 40(%x2)  #2481 pc 33740
	add	%x31, %x7, %x8  #2481 pc 33744
	lw	%x7, 0(%x31)  #2481 pc 33748
	addi	%x6, %x7, 0  #0 pc 33752
	sw	%x1, 76(%x2)  #2481 pc 33756
	addi	%x2, %x2, 80  #2481 pc 33760
	jal	%x1, d_vec.2700  #2481 pc 33764
	addi	%x2, %x2, -80  #2481 pc 33768
	lw	%x1, 76(%x2) #2481 pc 33772
	flw	%f0, 64(%x2)  #2481 pc 33776
	sw	%x6, 76(%x2)  #2481 pc 33780
	sw	%x1, 80(%x2)  #2481 pc 33784
	addi	%x2, %x2, 84  #2481 pc 33788
	jal	%x1, fneg.2499  #2481 pc 33792
	addi	%x2, %x2, -84  #2481 pc 33796
	lw	%x1, 80(%x2) #2481 pc 33800
	flw	%f1, 56(%x2)  #2481 pc 33804
	fsw	%f0, 80(%x2)  #2481 pc 33808
	fadd	%f0, %f1, %f30  #0 pc 33812
	sw	%x1, 88(%x2)  #2481 pc 33816
	addi	%x2, %x2, 92  #2481 pc 33820
	jal	%x1, fneg.2499  #2481 pc 33824
	addi	%x2, %x2, -92  #2481 pc 33828
	lw	%x1, 88(%x2) #2481 pc 33832
	fadd	%f2, %f0, %f30  #2481 pc 33836
	flw	%f0, 48(%x2)  #2481 pc 33840
	flw	%f1, 80(%x2)  #2481 pc 33844
	lw	%x6, 76(%x2)  #2481 pc 33848
	sw	%x1, 88(%x2)  #2481 pc 33852
	addi	%x2, %x2, 92  #2481 pc 33856
	jal	%x1, vecset.2601  #2481 pc 33860
	addi	%x2, %x2, -92  #2481 pc 33864
	lw	%x1, 88(%x2) #2481 pc 33868
	lw	%x6, 0(%x2)  #2482 pc 33872
	addi	%x7, %x6, 1  #2482 pc 33876
	slli	%x7, %x7, 2  #2482 pc 33880
	lw	%x8, 40(%x2)  #2482 pc 33884
	add	%x31, %x7, %x8  #2482 pc 33888
	lw	%x7, 0(%x31)  #2482 pc 33892
	addi	%x6, %x7, 0  #0 pc 33896
	sw	%x1, 88(%x2)  #2482 pc 33900
	addi	%x2, %x2, 92  #2482 pc 33904
	jal	%x1, d_vec.2700  #2482 pc 33908
	addi	%x2, %x2, -92  #2482 pc 33912
	lw	%x1, 88(%x2) #2482 pc 33916
	flw	%f0, 64(%x2)  #2482 pc 33920
	sw	%x6, 88(%x2)  #2482 pc 33924
	sw	%x1, 92(%x2)  #2482 pc 33928
	addi	%x2, %x2, 96  #2482 pc 33932
	jal	%x1, fneg.2499  #2482 pc 33936
	addi	%x2, %x2, -96  #2482 pc 33940
	lw	%x1, 92(%x2) #2482 pc 33944
	flw	%f1, 56(%x2)  #2482 pc 33948
	fsw	%f0, 96(%x2)  #2482 pc 33952
	fadd	%f0, %f1, %f30  #0 pc 33956
	sw	%x1, 104(%x2)  #2482 pc 33960
	addi	%x2, %x2, 108  #2482 pc 33964
	jal	%x1, fneg.2499  #2482 pc 33968
	addi	%x2, %x2, -108  #2482 pc 33972
	lw	%x1, 104(%x2) #2482 pc 33976
	flw	%f1, 48(%x2)  #2482 pc 33980
	fsw	%f0, 104(%x2)  #2482 pc 33984
	fadd	%f0, %f1, %f30  #0 pc 33988
	sw	%x1, 112(%x2)  #2482 pc 33992
	addi	%x2, %x2, 116  #2482 pc 33996
	jal	%x1, fneg.2499  #2482 pc 34000
	addi	%x2, %x2, -116  #2482 pc 34004
	lw	%x1, 112(%x2) #2482 pc 34008
	fadd	%f2, %f0, %f30  #2482 pc 34012
	flw	%f0, 96(%x2)  #2482 pc 34016
	flw	%f1, 104(%x2)  #2482 pc 34020
	lw	%x6, 88(%x2)  #2482 pc 34024
	sw	%x1, 112(%x2)  #2482 pc 34028
	addi	%x2, %x2, 116  #2482 pc 34032
	jal	%x1, vecset.2601  #2482 pc 34036
	addi	%x2, %x2, -116  #2482 pc 34040
	lw	%x1, 112(%x2) #2482 pc 34044
	lw	%x6, 0(%x2)  #2483 pc 34048
	addi	%x7, %x6, 41  #2483 pc 34052
	slli	%x7, %x7, 2  #2483 pc 34056
	lw	%x8, 40(%x2)  #2483 pc 34060
	add	%x31, %x7, %x8  #2483 pc 34064
	lw	%x7, 0(%x31)  #2483 pc 34068
	addi	%x6, %x7, 0  #0 pc 34072
	sw	%x1, 112(%x2)  #2483 pc 34076
	addi	%x2, %x2, 116  #2483 pc 34080
	jal	%x1, d_vec.2700  #2483 pc 34084
	addi	%x2, %x2, -116  #2483 pc 34088
	lw	%x1, 112(%x2) #2483 pc 34092
	flw	%f0, 64(%x2)  #2483 pc 34096
	sw	%x6, 112(%x2)  #2483 pc 34100
	sw	%x1, 116(%x2)  #2483 pc 34104
	addi	%x2, %x2, 120  #2483 pc 34108
	jal	%x1, fneg.2499  #2483 pc 34112
	addi	%x2, %x2, -120  #2483 pc 34116
	lw	%x1, 116(%x2) #2483 pc 34120
	flw	%f1, 48(%x2)  #2483 pc 34124
	fsw	%f0, 120(%x2)  #2483 pc 34128
	fadd	%f0, %f1, %f30  #0 pc 34132
	sw	%x1, 128(%x2)  #2483 pc 34136
	addi	%x2, %x2, 132  #2483 pc 34140
	jal	%x1, fneg.2499  #2483 pc 34144
	addi	%x2, %x2, -132  #2483 pc 34148
	lw	%x1, 128(%x2) #2483 pc 34152
	fadd	%f1, %f0, %f30  #2483 pc 34156
	flw	%f0, 120(%x2)  #2483 pc 34160
	flw	%f2, 56(%x2)  #2483 pc 34164
	lw	%x6, 112(%x2)  #2483 pc 34168
	sw	%x1, 128(%x2)  #2483 pc 34172
	addi	%x2, %x2, 132  #2483 pc 34176
	jal	%x1, vecset.2601  #2483 pc 34180
	addi	%x2, %x2, -132  #2483 pc 34184
	lw	%x1, 128(%x2) #2483 pc 34188
	lw	%x6, 0(%x2)  #2484 pc 34192
	addi	%x6, %x6, 81  #2484 pc 34196
	slli	%x6, %x6, 2  #2484 pc 34200
	lw	%x7, 40(%x2)  #2484 pc 34204
	add	%x31, %x6, %x7  #2484 pc 34208
	lw	%x6, 0(%x31)  #2484 pc 34212
	sw	%x1, 128(%x2)  #2484 pc 34216
	addi	%x2, %x2, 132  #2484 pc 34220
	jal	%x1, d_vec.2700  #2484 pc 34224
	addi	%x2, %x2, -132  #2484 pc 34228
	lw	%x1, 128(%x2) #2484 pc 34232
	flw	%f0, 48(%x2)  #2484 pc 34236
	sw	%x6, 128(%x2)  #2484 pc 34240
	sw	%x1, 132(%x2)  #2484 pc 34244
	addi	%x2, %x2, 136  #2484 pc 34248
	jal	%x1, fneg.2499  #2484 pc 34252
	addi	%x2, %x2, -136  #2484 pc 34256
	lw	%x1, 132(%x2) #2484 pc 34260
	flw	%f1, 64(%x2)  #2484 pc 34264
	flw	%f2, 56(%x2)  #2484 pc 34268
	lw	%x6, 128(%x2)  #2484 pc 34272
	j	vecset.2601  #2484 pc 34276
	nop #pc 34280
bge_else.9471: #pc 34284
	fsw	%f2, 136(%x2)  #2486 pc 34284
	sw	%x8, 0(%x2)  #2486 pc 34288
	sw	%x7, 8(%x2)  #2486 pc 34292
	sw	%x29, 144(%x2)  #2486 pc 34296
	fsw	%f3, 152(%x2)  #2486 pc 34300
	sw	%x6, 160(%x2)  #2486 pc 34304
	fadd	%f0, %f1, %f30  #0 pc 34308
	fadd	%f1, %f2, %f30  #0 pc 34312
	sw	%x1, 164(%x2)  #2486 pc 34316
	addi	%x2, %x2, 168  #2486 pc 34320
	jal	%x1, adjust_position.3021  #2486 pc 34324
	addi	%x2, %x2, -168  #2486 pc 34328
	lw	%x1, 164(%x2) #2486 pc 34332
	lw	%x6, 160(%x2)  #2487 pc 34336
	addi	%x6, %x6, 1  #2487 pc 34340
	flw	%f1, 152(%x2)  #2487 pc 34344
	fsw	%f0, 168(%x2)  #2487 pc 34348
	sw	%x6, 176(%x2)  #2487 pc 34352
	sw	%x1, 180(%x2)  #2487 pc 34356
	addi	%x2, %x2, 184  #2487 pc 34360
	jal	%x1, adjust_position.3021  #2487 pc 34364
	addi	%x2, %x2, -184  #2487 pc 34368
	lw	%x1, 180(%x2) #2487 pc 34372
	fadd	%f1, %f0, %f30  #2487 pc 34376
	flw	%f0, 168(%x2)  #2487 pc 34380
	flw	%f2, 136(%x2)  #2487 pc 34384
	flw	%f3, 152(%x2)  #2487 pc 34388
	lw	%x6, 176(%x2)  #2487 pc 34392
	lw	%x7, 8(%x2)  #2487 pc 34396
	lw	%x8, 0(%x2)  #2487 pc 34400
	lw	%x29, 144(%x2)  #2487 pc 34404
	lw	%x30, 0(%x29)  #2487 pc 34408
	jalr	%x0, %x30, 0  #2487 pc 34412
	nop #pc 34416
calc_dirvecs.3032:  #pc 34420
	lw	%x9, 4(%x29)  #0 pc 34420
	bge	%x6, %x0, 12  #2492 pc 34424
	j	bge_else.9479 #pc 34428
	nop #pc 34432
	sw	%x29, 0(%x2)  #2494 pc 34436
	sw	%x6, 4(%x2)  #2494 pc 34440
	fsw	%f0, 8(%x2)  #2494 pc 34444
	sw	%x8, 16(%x2)  #2494 pc 34448
	sw	%x7, 20(%x2)  #2494 pc 34452
	sw	%x9, 24(%x2)  #2494 pc 34456
	sw	%x1, 28(%x2)  #2494 pc 34460
	addi	%x2, %x2, 32  #2494 pc 34464
	jal	%x1, float_of_int.2518  #2494 pc 34468
	addi	%x2, %x2, -32  #2494 pc 34472
	lw	%x1, 28(%x2) #2494 pc 34476
	fmv	%f1, l.6228  #0 pc 34480
	fmul	%f0, %f0, %f1  #2494 pc 34484
	fmv	%f1, l.6906  #0 pc 34488
	fsub	%f2, %f0, %f1  #2494 pc 34492
	addi	%x6, %x0, 0  #0 pc 34496
	fmv	%f0, l.6207  #0 pc 34500
	fmv	%f1, l.6207  #0 pc 34504
	flw	%f3, 8(%x2)  #2495 pc 34508
	lw	%x7, 20(%x2)  #2495 pc 34512
	lw	%x8, 16(%x2)  #2495 pc 34516
	lw	%x29, 24(%x2)  #2495 pc 34520
	sw	%x1, 28(%x2)  #2495 pc 34524
	lw	%x30, 0(%x29)  #2495 pc 34528
	addi	%x2, %x2, 32  #2495 pc 34532
	jalr	%x1, %x30, 0  #2495 pc 34536
	addi	%x2, %x2, -32  #2495 pc 34540
	lw	%x1, 28(%x2)  #2495 pc 34544
	lw	%x6, 4(%x2)  #2497 pc 34548
	sw	%x1, 28(%x2)  #2497 pc 34552
	addi	%x2, %x2, 32  #2497 pc 34556
	jal	%x1, float_of_int.2518  #2497 pc 34560
	addi	%x2, %x2, -32  #2497 pc 34564
	lw	%x1, 28(%x2) #2497 pc 34568
	fmv	%f1, l.6228  #0 pc 34572
	fmul	%f0, %f0, %f1  #2497 pc 34576
	fmv	%f1, l.6773  #0 pc 34580
	fadd	%f2, %f0, %f1  #2497 pc 34584
	addi	%x6, %x0, 0  #0 pc 34588
	fmv	%f0, l.6207  #0 pc 34592
	fmv	%f1, l.6207  #0 pc 34596
	lw	%x7, 16(%x2)  #2498 pc 34600
	addi	%x8, %x7, 2  #2498 pc 34604
	flw	%f3, 8(%x2)  #2498 pc 34608
	lw	%x9, 20(%x2)  #2498 pc 34612
	lw	%x29, 24(%x2)  #2498 pc 34616
	addi	%x7, %x9, 0  #0 pc 34620
	sw	%x1, 28(%x2)  #2498 pc 34624
	lw	%x30, 0(%x29)  #2498 pc 34628
	addi	%x2, %x2, 32  #2498 pc 34632
	jalr	%x1, %x30, 0  #2498 pc 34636
	addi	%x2, %x2, -32  #2498 pc 34640
	lw	%x1, 28(%x2)  #2498 pc 34644
	lw	%x6, 4(%x2)  #2500 pc 34648
	addi	%x6, %x6, -1  #2500 pc 34652
	addi	%x7, %x0, 1  #0 pc 34656
	lw	%x8, 20(%x2)  #2500 pc 34660
	sw	%x6, 28(%x2)  #2500 pc 34664
	addi	%x6, %x8, 0  #0 pc 34668
	sw	%x1, 32(%x2)  #2500 pc 34672
	addi	%x2, %x2, 36  #2500 pc 34676
	jal	%x1, add_mod5.2598  #2500 pc 34680
	addi	%x2, %x2, -36  #2500 pc 34684
	lw	%x1, 32(%x2) #2500 pc 34688
	addi	%x7, %x6, 0  #2500 pc 34692
	flw	%f0, 8(%x2)  #2500 pc 34696
	lw	%x6, 28(%x2)  #2500 pc 34700
	lw	%x8, 16(%x2)  #2500 pc 34704
	lw	%x29, 0(%x2)  #2500 pc 34708
	lw	%x30, 0(%x29)  #2500 pc 34712
	jalr	%x0, %x30, 0  #2500 pc 34716
	nop #pc 34720
bge_else.9479: #pc 34724
	ret #pc 34724
	nop #pc 34728
calc_dirvec_rows.3037:  #pc 34732
	lw	%x9, 4(%x29)  #0 pc 34732
	bge	%x6, %x0, 12  #2506 pc 34736
	j	bge_else.9481 #pc 34740
	nop #pc 34744
	sw	%x29, 0(%x2)  #2507 pc 34748
	sw	%x6, 4(%x2)  #2507 pc 34752
	sw	%x8, 8(%x2)  #2507 pc 34756
	sw	%x7, 12(%x2)  #2507 pc 34760
	sw	%x9, 16(%x2)  #2507 pc 34764
	sw	%x1, 20(%x2)  #2507 pc 34768
	addi	%x2, %x2, 24  #2507 pc 34772
	jal	%x1, float_of_int.2518  #2507 pc 34776
	addi	%x2, %x2, -24  #2507 pc 34780
	lw	%x1, 20(%x2) #2507 pc 34784
	fmv	%f1, l.6228  #0 pc 34788
	fmul	%f0, %f0, %f1  #2507 pc 34792
	fmv	%f1, l.6906  #0 pc 34796
	fsub	%f0, %f0, %f1  #2507 pc 34800
	addi	%x6, %x0, 4  #0 pc 34804
	lw	%x7, 12(%x2)  #2508 pc 34808
	lw	%x8, 8(%x2)  #2508 pc 34812
	lw	%x29, 16(%x2)  #2508 pc 34816
	sw	%x1, 20(%x2)  #2508 pc 34820
	lw	%x30, 0(%x29)  #2508 pc 34824
	addi	%x2, %x2, 24  #2508 pc 34828
	jalr	%x1, %x30, 0  #2508 pc 34832
	addi	%x2, %x2, -24  #2508 pc 34836
	lw	%x1, 20(%x2)  #2508 pc 34840
	lw	%x6, 4(%x2)  #2509 pc 34844
	addi	%x6, %x6, -1  #2509 pc 34848
	addi	%x7, %x0, 2  #0 pc 34852
	lw	%x8, 12(%x2)  #2509 pc 34856
	sw	%x6, 20(%x2)  #2509 pc 34860
	addi	%x6, %x8, 0  #0 pc 34864
	sw	%x1, 24(%x2)  #2509 pc 34868
	addi	%x2, %x2, 28  #2509 pc 34872
	jal	%x1, add_mod5.2598  #2509 pc 34876
	addi	%x2, %x2, -28  #2509 pc 34880
	lw	%x1, 24(%x2) #2509 pc 34884
	addi	%x7, %x6, 0  #2509 pc 34888
	lw	%x6, 8(%x2)  #2509 pc 34892
	addi	%x8, %x6, 4  #2509 pc 34896
	lw	%x6, 20(%x2)  #2509 pc 34900
	lw	%x29, 0(%x2)  #2509 pc 34904
	lw	%x30, 0(%x29)  #2509 pc 34908
	jalr	%x0, %x30, 0  #2509 pc 34912
	nop #pc 34916
bge_else.9481: #pc 34920
	ret #pc 34920
	nop #pc 34924
create_dirvec.3041:  #pc 34928
	lw	%x6, 4(%x29)  #0 pc 34928
	addi	%x7, %x0, 3  #0 pc 34932
	fmv	%f0, l.6207  #0 pc 34936
	sw	%x6, 0(%x2)  #2519 pc 34940
	addi	%x6, %x7, 0  #0 pc 34944
	sw	%x1, 4(%x2)  #2519 pc 34948
	addi	%x2, %x2, 8  #2519 pc 34952
	jal	%x1, create_float_array.2557  #2519 pc 34956
	addi	%x2, %x2, -8  #2519 pc 34960
	lw	%x1, 4(%x2) #2519 pc 34964
	addi	%x7, %x6, 0  #2519 pc 34968
	lw	%x6, 0(%x2)  #2520 pc 34972
	lw	%x6, 0(%x6)  #2520 pc 34976
	sw	%x7, 4(%x2)  #2520 pc 34980
	sw	%x1, 8(%x2)  #2520 pc 34984
	addi	%x2, %x2, 12  #2520 pc 34988
	jal	%x1, create_array.2550  #2520 pc 34992
	addi	%x2, %x2, -12  #2520 pc 34996
	lw	%x1, 8(%x2) #2520 pc 35000
	addi	%x7, %x3, 0  #2521 pc 35004
	addi	%x3, %x3, 8  #2521 pc 35008
	sw	%x6, 4(%x7)  #2521 pc 35012
	lw	%x6, 4(%x2)  #2521 pc 35016
	sw	%x6, 0(%x7)  #2521 pc 35020
	addi	%x6, %x7, 0  #2521 pc 35024
	ret #pc 35028
	nop #pc 35032
create_dirvec_elements.3043:  #pc 35036
	lw	%x8, 4(%x29)  #0 pc 35036
	bge	%x7, %x0, 12  #2525 pc 35040
	j	bge_else.9483 #pc 35044
	nop #pc 35048
	sw	%x29, 0(%x2)  #2526 pc 35052
	sw	%x6, 4(%x2)  #2526 pc 35056
	sw	%x7, 8(%x2)  #2526 pc 35060
	addi	%x29, %x8, 0  #0 pc 35064
	sw	%x1, 12(%x2)  #2526 pc 35068
	lw	%x30, 0(%x29)  #2526 pc 35072
	addi	%x2, %x2, 16  #2526 pc 35076
	jalr	%x1, %x30, 0  #2526 pc 35080
	addi	%x2, %x2, -16  #2526 pc 35084
	lw	%x1, 12(%x2)  #2526 pc 35088
	lw	%x7, 8(%x2)  #2526 pc 35092
	slli	%x8, %x7, 2  #2526 pc 35096
	lw	%x9, 4(%x2)  #2526 pc 35100
	add	%x31, %x8, %x9  #2526 pc 35104
	sw	%x6, 0(%x31)  #2526 pc 35108
	addi	%x7, %x7, -1  #2527 pc 35112
	lw	%x29, 0(%x2)  #2527 pc 35116
	addi	%x6, %x9, 0  #0 pc 35120
	lw	%x30, 0(%x29)  #2527 pc 35124
	jalr	%x0, %x30, 0  #2527 pc 35128
	nop #pc 35132
bge_else.9483: #pc 35136
	ret #pc 35136
	nop #pc 35140
create_dirvecs.3046:  #pc 35144
	lw	%x7, 12(%x29)  #0 pc 35144
	lw	%x8, 8(%x29)  #0 pc 35148
	lw	%x9, 4(%x29)  #0 pc 35152
	bge	%x6, %x0, 12  #2532 pc 35156
	j	bge_else.9485 #pc 35160
	nop #pc 35164
	addi	%x10, %x0, 120  #0 pc 35168
	sw	%x29, 0(%x2)  #2533 pc 35172
	sw	%x8, 4(%x2)  #2533 pc 35176
	sw	%x7, 8(%x2)  #2533 pc 35180
	sw	%x6, 12(%x2)  #2533 pc 35184
	sw	%x10, 16(%x2)  #2533 pc 35188
	addi	%x29, %x9, 0  #0 pc 35192
	sw	%x1, 20(%x2)  #2533 pc 35196
	lw	%x30, 0(%x29)  #2533 pc 35200
	addi	%x2, %x2, 24  #2533 pc 35204
	jalr	%x1, %x30, 0  #2533 pc 35208
	addi	%x2, %x2, -24  #2533 pc 35212
	lw	%x1, 20(%x2)  #2533 pc 35216
	addi	%x7, %x6, 0  #2533 pc 35220
	lw	%x6, 16(%x2)  #2533 pc 35224
	sw	%x1, 20(%x2)  #2533 pc 35228
	addi	%x2, %x2, 24  #2533 pc 35232
	jal	%x1, create_array.2550  #2533 pc 35236
	addi	%x2, %x2, -24  #2533 pc 35240
	lw	%x1, 20(%x2) #2533 pc 35244
	lw	%x7, 12(%x2)  #2533 pc 35248
	slli	%x8, %x7, 2  #2533 pc 35252
	lw	%x9, 8(%x2)  #2533 pc 35256
	add	%x31, %x8, %x9  #2533 pc 35260
	sw	%x6, 0(%x31)  #2533 pc 35264
	slli	%x6, %x7, 2  #2534 pc 35268
	add	%x31, %x6, %x9  #2534 pc 35272
	lw	%x6, 0(%x31)  #2534 pc 35276
	addi	%x8, %x0, 118  #0 pc 35280
	lw	%x29, 4(%x2)  #2534 pc 35284
	addi	%x7, %x8, 0  #0 pc 35288
	sw	%x1, 20(%x2)  #2534 pc 35292
	lw	%x30, 0(%x29)  #2534 pc 35296
	addi	%x2, %x2, 24  #2534 pc 35300
	jalr	%x1, %x30, 0  #2534 pc 35304
	addi	%x2, %x2, -24  #2534 pc 35308
	lw	%x1, 20(%x2)  #2534 pc 35312
	lw	%x6, 12(%x2)  #2535 pc 35316
	addi	%x6, %x6, -1  #2535 pc 35320
	lw	%x29, 0(%x2)  #2535 pc 35324
	lw	%x30, 0(%x29)  #2535 pc 35328
	jalr	%x0, %x30, 0  #2535 pc 35332
	nop #pc 35336
bge_else.9485: #pc 35340
	ret #pc 35340
	nop #pc 35344
init_dirvec_constants.3048:  #pc 35348
	lw	%x8, 4(%x29)  #0 pc 35348
	bge	%x7, %x0, 12  #2544 pc 35352
	j	bge_else.9487 #pc 35356
	nop #pc 35360
	slli	%x9, %x7, 2  #2545 pc 35364
	add	%x31, %x9, %x6  #2545 pc 35368
	lw	%x9, 0(%x31)  #2545 pc 35372
	sw	%x6, 0(%x2)  #2545 pc 35376
	sw	%x29, 4(%x2)  #2545 pc 35380
	sw	%x7, 8(%x2)  #2545 pc 35384
	addi	%x6, %x9, 0  #0 pc 35388
	addi	%x29, %x8, 0  #0 pc 35392
	sw	%x1, 12(%x2)  #2545 pc 35396
	lw	%x30, 0(%x29)  #2545 pc 35400
	addi	%x2, %x2, 16  #2545 pc 35404
	jalr	%x1, %x30, 0  #2545 pc 35408
	addi	%x2, %x2, -16  #2545 pc 35412
	lw	%x1, 12(%x2)  #2545 pc 35416
	lw	%x6, 8(%x2)  #2546 pc 35420
	addi	%x7, %x6, -1  #2546 pc 35424
	lw	%x6, 0(%x2)  #2546 pc 35428
	lw	%x29, 4(%x2)  #2546 pc 35432
	lw	%x30, 0(%x29)  #2546 pc 35436
	jalr	%x0, %x30, 0  #2546 pc 35440
	nop #pc 35444
bge_else.9487: #pc 35448
	ret #pc 35448
	nop #pc 35452
init_vecset_constants.3051:  #pc 35456
	lw	%x7, 8(%x29)  #0 pc 35456
	lw	%x8, 4(%x29)  #0 pc 35460
	bge	%x6, %x0, 12  #2551 pc 35464
	j	bge_else.9489 #pc 35468
	nop #pc 35472
	slli	%x9, %x6, 2  #2552 pc 35476
	add	%x31, %x9, %x8  #2552 pc 35480
	lw	%x8, 0(%x31)  #2552 pc 35484
	addi	%x9, %x0, 119  #0 pc 35488
	sw	%x29, 0(%x2)  #2552 pc 35492
	sw	%x6, 4(%x2)  #2552 pc 35496
	addi	%x6, %x8, 0  #0 pc 35500
	addi	%x29, %x7, 0  #0 pc 35504
	addi	%x7, %x9, 0  #0 pc 35508
	sw	%x1, 8(%x2)  #2552 pc 35512
	lw	%x30, 0(%x29)  #2552 pc 35516
	addi	%x2, %x2, 12  #2552 pc 35520
	jalr	%x1, %x30, 0  #2552 pc 35524
	addi	%x2, %x2, -12  #2552 pc 35528
	lw	%x1, 8(%x2)  #2552 pc 35532
	lw	%x6, 4(%x2)  #2553 pc 35536
	addi	%x6, %x6, -1  #2553 pc 35540
	lw	%x29, 0(%x2)  #2553 pc 35544
	lw	%x30, 0(%x29)  #2553 pc 35548
	jalr	%x0, %x30, 0  #2553 pc 35552
	nop #pc 35556
bge_else.9489: #pc 35560
	ret #pc 35560
	nop #pc 35564
init_dirvecs.3053:  #pc 35568
	lw	%x6, 12(%x29)  #0 pc 35568
	lw	%x7, 8(%x29)  #0 pc 35572
	lw	%x8, 4(%x29)  #0 pc 35576
	addi	%x9, %x0, 4  #0 pc 35580
	sw	%x6, 0(%x2)  #2558 pc 35584
	sw	%x8, 4(%x2)  #2558 pc 35588
	addi	%x6, %x9, 0  #0 pc 35592
	addi	%x29, %x7, 0  #0 pc 35596
	sw	%x1, 8(%x2)  #2558 pc 35600
	lw	%x30, 0(%x29)  #2558 pc 35604
	addi	%x2, %x2, 12  #2558 pc 35608
	jalr	%x1, %x30, 0  #2558 pc 35612
	addi	%x2, %x2, -12  #2558 pc 35616
	lw	%x1, 8(%x2)  #2558 pc 35620
	addi	%x6, %x0, 9  #0 pc 35624
	addi	%x7, %x0, 0  #0 pc 35628
	addi	%x8, %x0, 0  #0 pc 35632
	lw	%x29, 4(%x2)  #2559 pc 35636
	sw	%x1, 8(%x2)  #2559 pc 35640
	lw	%x30, 0(%x29)  #2559 pc 35644
	addi	%x2, %x2, 12  #2559 pc 35648
	jalr	%x1, %x30, 0  #2559 pc 35652
	addi	%x2, %x2, -12  #2559 pc 35656
	lw	%x1, 8(%x2)  #2559 pc 35660
	addi	%x6, %x0, 4  #0 pc 35664
	lw	%x29, 0(%x2)  #2560 pc 35668
	lw	%x30, 0(%x29)  #2560 pc 35672
	jalr	%x0, %x30, 0  #2560 pc 35676
	nop #pc 35680
add_reflection.3055:  #pc 35684
	lw	%x8, 12(%x29)  #0 pc 35684
	lw	%x9, 8(%x29)  #0 pc 35688
	lw	%x29, 4(%x29)  #0 pc 35692
	sw	%x9, 0(%x2)  #2569 pc 35696
	sw	%x6, 4(%x2)  #2569 pc 35700
	sw	%x7, 8(%x2)  #2569 pc 35704
	fsw	%f0, 16(%x2)  #2569 pc 35708
	sw	%x8, 24(%x2)  #2569 pc 35712
	fsw	%f3, 32(%x2)  #2569 pc 35716
	fsw	%f2, 40(%x2)  #2569 pc 35720
	fsw	%f1, 48(%x2)  #2569 pc 35724
	sw	%x1, 56(%x2)  #2569 pc 35728
	lw	%x30, 0(%x29)  #2569 pc 35732
	addi	%x2, %x2, 60  #2569 pc 35736
	jalr	%x1, %x30, 0  #2569 pc 35740
	addi	%x2, %x2, -60  #2569 pc 35744
	lw	%x1, 56(%x2)  #2569 pc 35748
	sw	%x6, 56(%x2)  #2570 pc 35752
	sw	%x1, 60(%x2)  #2570 pc 35756
	addi	%x2, %x2, 64  #2570 pc 35760
	jal	%x1, d_vec.2700  #2570 pc 35764
	addi	%x2, %x2, -64  #2570 pc 35768
	lw	%x1, 60(%x2) #2570 pc 35772
	flw	%f0, 48(%x2)  #2570 pc 35776
	flw	%f1, 40(%x2)  #2570 pc 35780
	flw	%f2, 32(%x2)  #2570 pc 35784
	sw	%x1, 60(%x2)  #2570 pc 35788
	addi	%x2, %x2, 64  #2570 pc 35792
	jal	%x1, vecset.2601  #2570 pc 35796
	addi	%x2, %x2, -64  #2570 pc 35800
	lw	%x1, 60(%x2) #2570 pc 35804
	lw	%x6, 56(%x2)  #2571 pc 35808
	lw	%x29, 24(%x2)  #2571 pc 35812
	sw	%x1, 60(%x2)  #2571 pc 35816
	lw	%x30, 0(%x29)  #2571 pc 35820
	addi	%x2, %x2, 64  #2571 pc 35824
	jalr	%x1, %x30, 0  #2571 pc 35828
	addi	%x2, %x2, -64  #2571 pc 35832
	lw	%x1, 60(%x2)  #2571 pc 35836
	addi	%x6, %x3, 0  #2573 pc 35840
	addi	%x3, %x3, 12  #2573 pc 35844
	flw	%f0, 16(%x2)  #2573 pc 35848
	fsw	%f0, 8(%x6)  #2573 pc 35852
	lw	%x7, 56(%x2)  #2573 pc 35856
	sw	%x7, 4(%x6)  #2573 pc 35860
	lw	%x7, 8(%x2)  #2573 pc 35864
	sw	%x7, 0(%x6)  #2573 pc 35868
	lw	%x7, 4(%x2)  #2573 pc 35872
	slli	%x7, %x7, 2  #2573 pc 35876
	lw	%x8, 0(%x2)  #2573 pc 35880
	add	%x31, %x7, %x8  #2573 pc 35884
	sw	%x6, 0(%x31)  #2573 pc 35888
	ret #pc 35892
	nop #pc 35896
setup_rect_reflection.3062:  #pc 35900
	lw	%x8, 12(%x29)  #0 pc 35900
	lw	%x9, 8(%x29)  #0 pc 35904
	lw	%x10, 4(%x29)  #0 pc 35908
	addi	%x11, %x0, 4  #0 pc 35912
	sw	%x10, 0(%x2)  #2578 pc 35916
	sw	%x9, 4(%x2)  #2578 pc 35920
	sw	%x7, 8(%x2)  #2578 pc 35924
	sw	%x8, 12(%x2)  #2578 pc 35928
	addi	%x7, %x11, 0  #0 pc 35932
	sw	%x1, 16(%x2)  #2578 pc 35936
	addi	%x2, %x2, 20  #2578 pc 35940
	jal	%x1, mul.2527  #2578 pc 35944
	addi	%x2, %x2, -20  #2578 pc 35948
	lw	%x1, 16(%x2) #2578 pc 35952
	lw	%x7, 12(%x2)  #2579 pc 35956
	lw	%x8, 0(%x7)  #2579 pc 35960
	fmv	%f0, l.6219  #0 pc 35964
	lw	%x9, 8(%x2)  #2580 pc 35968
	sw	%x8, 16(%x2)  #2580 pc 35972
	sw	%x6, 20(%x2)  #2580 pc 35976
	fsw	%f0, 24(%x2)  #2580 pc 35980
	addi	%x6, %x9, 0  #0 pc 35984
	sw	%x1, 32(%x2)  #2580 pc 35988
	addi	%x2, %x2, 36  #2580 pc 35992
	jal	%x1, o_diffuse.2663  #2580 pc 35996
	addi	%x2, %x2, -36  #2580 pc 36000
	lw	%x1, 32(%x2) #2580 pc 36004
	flw	%f1, 24(%x2)  #2580 pc 36008
	fsub	%f0, %f1, %f0  #2580 pc 36012
	lw	%x6, 4(%x2)  #2581 pc 36016
	flw	%f1, 0(%x6)  #2581 pc 36020
	fsw	%f0, 32(%x2)  #2581 pc 36024
	fadd	%f0, %f1, %f30  #0 pc 36028
	sw	%x1, 40(%x2)  #2581 pc 36032
	addi	%x2, %x2, 44  #2581 pc 36036
	jal	%x1, fneg.2499  #2581 pc 36040
	addi	%x2, %x2, -44  #2581 pc 36044
	lw	%x1, 40(%x2) #2581 pc 36048
	lw	%x6, 4(%x2)  #2582 pc 36052
	flw	%f1, 4(%x6)  #2582 pc 36056
	fsw	%f0, 40(%x2)  #2582 pc 36060
	fadd	%f0, %f1, %f30  #0 pc 36064
	sw	%x1, 48(%x2)  #2582 pc 36068
	addi	%x2, %x2, 52  #2582 pc 36072
	jal	%x1, fneg.2499  #2582 pc 36076
	addi	%x2, %x2, -52  #2582 pc 36080
	lw	%x1, 48(%x2) #2582 pc 36084
	lw	%x6, 4(%x2)  #2583 pc 36088
	flw	%f1, 8(%x6)  #2583 pc 36092
	fsw	%f0, 48(%x2)  #2583 pc 36096
	fadd	%f0, %f1, %f30  #0 pc 36100
	sw	%x1, 56(%x2)  #2583 pc 36104
	addi	%x2, %x2, 60  #2583 pc 36108
	jal	%x1, fneg.2499  #2583 pc 36112
	addi	%x2, %x2, -60  #2583 pc 36116
	lw	%x1, 56(%x2) #2583 pc 36120
	fadd	%f3, %f0, %f30  #2583 pc 36124
	lw	%x6, 20(%x2)  #2584 pc 36128
	addi	%x7, %x6, 1  #2584 pc 36132
	lw	%x8, 4(%x2)  #2584 pc 36136
	flw	%f1, 0(%x8)  #2584 pc 36140
	flw	%f0, 32(%x2)  #2584 pc 36144
	flw	%f2, 48(%x2)  #2584 pc 36148
	lw	%x9, 16(%x2)  #2584 pc 36152
	lw	%x29, 0(%x2)  #2584 pc 36156
	fsw	%f3, 56(%x2)  #2584 pc 36160
	addi	%x6, %x9, 0  #0 pc 36164
	sw	%x1, 64(%x2)  #2584 pc 36168
	lw	%x30, 0(%x29)  #2584 pc 36172
	addi	%x2, %x2, 68  #2584 pc 36176
	jalr	%x1, %x30, 0  #2584 pc 36180
	addi	%x2, %x2, -68  #2584 pc 36184
	lw	%x1, 64(%x2)  #2584 pc 36188
	lw	%x6, 16(%x2)  #2585 pc 36192
	addi	%x7, %x6, 1  #2585 pc 36196
	lw	%x8, 20(%x2)  #2585 pc 36200
	addi	%x9, %x8, 2  #2585 pc 36204
	lw	%x10, 4(%x2)  #2585 pc 36208
	flw	%f2, 4(%x10)  #2585 pc 36212
	flw	%f0, 32(%x2)  #2585 pc 36216
	flw	%f1, 40(%x2)  #2585 pc 36220
	flw	%f3, 56(%x2)  #2585 pc 36224
	lw	%x29, 0(%x2)  #2585 pc 36228
	addi	%x6, %x7, 0  #0 pc 36232
	addi	%x7, %x9, 0  #0 pc 36236
	sw	%x1, 64(%x2)  #2585 pc 36240
	lw	%x30, 0(%x29)  #2585 pc 36244
	addi	%x2, %x2, 68  #2585 pc 36248
	jalr	%x1, %x30, 0  #2585 pc 36252
	addi	%x2, %x2, -68  #2585 pc 36256
	lw	%x1, 64(%x2)  #2585 pc 36260
	lw	%x6, 16(%x2)  #2586 pc 36264
	addi	%x7, %x6, 2  #2586 pc 36268
	lw	%x8, 20(%x2)  #2586 pc 36272
	addi	%x8, %x8, 3  #2586 pc 36276
	lw	%x9, 4(%x2)  #2586 pc 36280
	flw	%f3, 8(%x9)  #2586 pc 36284
	flw	%f0, 32(%x2)  #2586 pc 36288
	flw	%f1, 40(%x2)  #2586 pc 36292
	flw	%f2, 48(%x2)  #2586 pc 36296
	lw	%x29, 0(%x2)  #2586 pc 36300
	addi	%x6, %x7, 0  #0 pc 36304
	addi	%x7, %x8, 0  #0 pc 36308
	sw	%x1, 64(%x2)  #2586 pc 36312
	lw	%x30, 0(%x29)  #2586 pc 36316
	addi	%x2, %x2, 68  #2586 pc 36320
	jalr	%x1, %x30, 0  #2586 pc 36324
	addi	%x2, %x2, -68  #2586 pc 36328
	lw	%x1, 64(%x2)  #2586 pc 36332
	lw	%x6, 16(%x2)  #2587 pc 36336
	addi	%x6, %x6, 3  #2587 pc 36340
	lw	%x7, 12(%x2)  #2587 pc 36344
	sw	%x6, 0(%x7)  #2587 pc 36348
	ret #pc 36352
	nop #pc 36356
setup_surface_reflection.3065:  #pc 36360
	lw	%x8, 12(%x29)  #0 pc 36360
	lw	%x9, 8(%x29)  #0 pc 36364
	lw	%x10, 4(%x29)  #0 pc 36368
	addi	%x11, %x0, 4  #0 pc 36372
	sw	%x10, 0(%x2)  #2592 pc 36376
	sw	%x9, 4(%x2)  #2592 pc 36380
	sw	%x7, 8(%x2)  #2592 pc 36384
	sw	%x8, 12(%x2)  #2592 pc 36388
	addi	%x7, %x11, 0  #0 pc 36392
	sw	%x1, 16(%x2)  #2592 pc 36396
	addi	%x2, %x2, 20  #2592 pc 36400
	jal	%x1, mul.2527  #2592 pc 36404
	addi	%x2, %x2, -20  #2592 pc 36408
	lw	%x1, 16(%x2) #2592 pc 36412
	addi	%x6, %x6, 1  #2592 pc 36416
	lw	%x7, 12(%x2)  #2593 pc 36420
	lw	%x8, 0(%x7)  #2593 pc 36424
	fmv	%f0, l.6219  #0 pc 36428
	lw	%x9, 8(%x2)  #2594 pc 36432
	sw	%x6, 16(%x2)  #2594 pc 36436
	sw	%x8, 20(%x2)  #2594 pc 36440
	fsw	%f0, 24(%x2)  #2594 pc 36444
	addi	%x6, %x9, 0  #0 pc 36448
	sw	%x1, 32(%x2)  #2594 pc 36452
	addi	%x2, %x2, 36  #2594 pc 36456
	jal	%x1, o_diffuse.2663  #2594 pc 36460
	addi	%x2, %x2, -36  #2594 pc 36464
	lw	%x1, 32(%x2) #2594 pc 36468
	flw	%f1, 24(%x2)  #2594 pc 36472
	fsub	%f0, %f1, %f0  #2594 pc 36476
	lw	%x6, 8(%x2)  #2595 pc 36480
	fsw	%f0, 32(%x2)  #2595 pc 36484
	sw	%x1, 40(%x2)  #2595 pc 36488
	addi	%x2, %x2, 44  #2595 pc 36492
	jal	%x1, o_param_abc.2655  #2595 pc 36496
	addi	%x2, %x2, -44  #2595 pc 36500
	lw	%x1, 40(%x2) #2595 pc 36504
	addi	%x7, %x6, 0  #2595 pc 36508
	lw	%x6, 4(%x2)  #2595 pc 36512
	sw	%x1, 40(%x2)  #2595 pc 36516
	addi	%x2, %x2, 44  #2595 pc 36520
	jal	%x1, veciprod.2617  #2595 pc 36524
	addi	%x2, %x2, -44  #2595 pc 36528
	lw	%x1, 40(%x2) #2595 pc 36532
	fmv	%f1, l.6377  #0 pc 36536
	lw	%x6, 8(%x2)  #2598 pc 36540
	fsw	%f0, 40(%x2)  #2598 pc 36544
	fsw	%f1, 48(%x2)  #2598 pc 36548
	sw	%x1, 56(%x2)  #2598 pc 36552
	addi	%x2, %x2, 60  #2598 pc 36556
	jal	%x1, o_param_a.2649  #2598 pc 36560
	addi	%x2, %x2, -60  #2598 pc 36564
	lw	%x1, 56(%x2) #2598 pc 36568
	flw	%f1, 48(%x2)  #2598 pc 36572
	fmul	%f0, %f1, %f0  #2598 pc 36576
	flw	%f1, 40(%x2)  #2598 pc 36580
	fmul	%f0, %f0, %f1  #2598 pc 36584
	lw	%x6, 4(%x2)  #2598 pc 36588
	flw	%f2, 0(%x6)  #2598 pc 36592
	fsub	%f0, %f0, %f2  #2598 pc 36596
	fmv	%f2, l.6377  #0 pc 36600
	lw	%x7, 8(%x2)  #2599 pc 36604
	fsw	%f0, 56(%x2)  #2599 pc 36608
	fsw	%f2, 64(%x2)  #2599 pc 36612
	addi	%x6, %x7, 0  #0 pc 36616
	sw	%x1, 72(%x2)  #2599 pc 36620
	addi	%x2, %x2, 76  #2599 pc 36624
	jal	%x1, o_param_b.2651  #2599 pc 36628
	addi	%x2, %x2, -76  #2599 pc 36632
	lw	%x1, 72(%x2) #2599 pc 36636
	flw	%f1, 64(%x2)  #2599 pc 36640
	fmul	%f0, %f1, %f0  #2599 pc 36644
	flw	%f1, 40(%x2)  #2599 pc 36648
	fmul	%f0, %f0, %f1  #2599 pc 36652
	lw	%x6, 4(%x2)  #2599 pc 36656
	flw	%f2, 4(%x6)  #2599 pc 36660
	fsub	%f0, %f0, %f2  #2599 pc 36664
	fmv	%f2, l.6377  #0 pc 36668
	lw	%x7, 8(%x2)  #2600 pc 36672
	fsw	%f0, 72(%x2)  #2600 pc 36676
	fsw	%f2, 80(%x2)  #2600 pc 36680
	addi	%x6, %x7, 0  #0 pc 36684
	sw	%x1, 88(%x2)  #2600 pc 36688
	addi	%x2, %x2, 92  #2600 pc 36692
	jal	%x1, o_param_c.2653  #2600 pc 36696
	addi	%x2, %x2, -92  #2600 pc 36700
	lw	%x1, 88(%x2) #2600 pc 36704
	flw	%f1, 80(%x2)  #2600 pc 36708
	fmul	%f0, %f1, %f0  #2600 pc 36712
	flw	%f1, 40(%x2)  #2600 pc 36716
	fmul	%f0, %f0, %f1  #2600 pc 36720
	lw	%x6, 4(%x2)  #2600 pc 36724
	flw	%f1, 8(%x6)  #2600 pc 36728
	fsub	%f3, %f0, %f1  #2600 pc 36732
	flw	%f0, 32(%x2)  #2597 pc 36736
	flw	%f1, 56(%x2)  #2597 pc 36740
	flw	%f2, 72(%x2)  #2597 pc 36744
	lw	%x6, 20(%x2)  #2597 pc 36748
	lw	%x7, 16(%x2)  #2597 pc 36752
	lw	%x29, 0(%x2)  #2597 pc 36756
	sw	%x1, 88(%x2)  #2597 pc 36760
	lw	%x30, 0(%x29)  #2597 pc 36764
	addi	%x2, %x2, 92  #2597 pc 36768
	jalr	%x1, %x30, 0  #2597 pc 36772
	addi	%x2, %x2, -92  #2597 pc 36776
	lw	%x1, 88(%x2)  #2597 pc 36780
	lw	%x6, 20(%x2)  #2601 pc 36784
	addi	%x6, %x6, 1  #2601 pc 36788
	lw	%x7, 12(%x2)  #2601 pc 36792
	sw	%x6, 0(%x7)  #2601 pc 36796
	ret #pc 36800
	nop #pc 36804
setup_reflections.3068:  #pc 36808
	lw	%x7, 12(%x29)  #0 pc 36808
	lw	%x8, 8(%x29)  #0 pc 36812
	lw	%x9, 4(%x29)  #0 pc 36816
	bge	%x6, %x0, 12  #2607 pc 36820
	j	bge_else.9496 #pc 36824
	nop #pc 36828
	slli	%x10, %x6, 2  #2608 pc 36832
	add	%x31, %x10, %x9  #2608 pc 36836
	lw	%x9, 0(%x31)  #2608 pc 36840
	sw	%x7, 0(%x2)  #2609 pc 36844
	sw	%x6, 4(%x2)  #2609 pc 36848
	sw	%x8, 8(%x2)  #2609 pc 36852
	sw	%x9, 12(%x2)  #2609 pc 36856
	addi	%x6, %x9, 0  #0 pc 36860
	sw	%x1, 16(%x2)  #2609 pc 36864
	addi	%x2, %x2, 20  #2609 pc 36868
	jal	%x1, o_reflectiontype.2643  #2609 pc 36872
	addi	%x2, %x2, -20  #2609 pc 36876
	lw	%x1, 16(%x2) #2609 pc 36880
	addi	%x31, %x0, 2  #pc 36884
	beq	%x6, %x31, 12  #2609 pc 36888
	j	be_else.9497 #pc 36892
	nop #pc 36896
	lw	%x6, 12(%x2)  #2610 pc 36900
	sw	%x1, 16(%x2)  #2610 pc 36904
	addi	%x2, %x2, 20  #2610 pc 36908
	jal	%x1, o_diffuse.2663  #2610 pc 36912
	addi	%x2, %x2, -20  #2610 pc 36916
	lw	%x1, 16(%x2) #2610 pc 36920
	fmv	%f1, l.6219  #0 pc 36924
	sw	%x1, 16(%x2)  #2610 pc 36928
	addi	%x2, %x2, 20  #2610 pc 36932
	jal	%x1, fless.2505  #2610 pc 36936
	addi	%x2, %x2, -20  #2610 pc 36940
	lw	%x1, 16(%x2) #2610 pc 36944
	beq	%x6, %x0, 12  #2610 pc 36948
	j	be_else.9498 #pc 36952
	nop #pc 36956
	ret #pc 36960
	nop #pc 36964
be_else.9498: #pc 36968
	lw	%x6, 12(%x2)  #2611 pc 36968
	sw	%x1, 16(%x2)  #2611 pc 36972
	addi	%x2, %x2, 20  #2611 pc 36976
	jal	%x1, o_form.2641  #2611 pc 36980
	addi	%x2, %x2, -20  #2611 pc 36984
	lw	%x1, 16(%x2) #2611 pc 36988
	addi	%x31, %x0, 1  #pc 36992
	beq	%x6, %x31, 12  #2613 pc 36996
	j	be_else.9500 #pc 37000
	nop #pc 37004
	lw	%x6, 4(%x2)  #2614 pc 37008
	lw	%x7, 12(%x2)  #2614 pc 37012
	lw	%x29, 8(%x2)  #2614 pc 37016
	lw	%x30, 0(%x29)  #2614 pc 37020
	jalr	%x0, %x30, 0  #2614 pc 37024
	nop #pc 37028
be_else.9500: #pc 37032
	addi	%x31, %x0, 2  #pc 37032
	beq	%x6, %x31, 12  #2615 pc 37036
	j	be_else.9501 #pc 37040
	nop #pc 37044
	lw	%x6, 4(%x2)  #2616 pc 37048
	lw	%x7, 12(%x2)  #2616 pc 37052
	lw	%x29, 0(%x2)  #2616 pc 37056
	lw	%x30, 0(%x29)  #2616 pc 37060
	jalr	%x0, %x30, 0  #2616 pc 37064
	nop #pc 37068
be_else.9501: #pc 37072
	ret #pc 37072
	nop #pc 37076
be_else.9497: #pc 37080
	ret #pc 37080
	nop #pc 37084
bge_else.9496: #pc 37088
	ret #pc 37088
	nop #pc 37092
rt.3070:  #pc 37096
	lw	%x9, 56(%x29)  #0 pc 37096
	lw	%x10, 52(%x29)  #0 pc 37100
	lw	%x11, 48(%x29)  #0 pc 37104
	lw	%x12, 44(%x29)  #0 pc 37108
	lw	%x13, 40(%x29)  #0 pc 37112
	lw	%x14, 36(%x29)  #0 pc 37116
	lw	%x15, 32(%x29)  #0 pc 37120
	lw	%x16, 28(%x29)  #0 pc 37124
	lw	%x17, 24(%x29)  #0 pc 37128
	lw	%x18, 20(%x29)  #0 pc 37132
	lw	%x19, 16(%x29)  #0 pc 37136
	lw	%x20, 12(%x29)  #0 pc 37140
	lw	%x21, 8(%x29)  #0 pc 37144
	lw	%x22, 4(%x29)  #0 pc 37148
	sw	%x6, 0(%x20)  #2629 pc 37152
	sw	%x7, 4(%x20)  #2630 pc 37156
	addi	%x20, %x0, 2  #0 pc 37160
	sw	%x13, 0(%x2)  #2631 pc 37164
	sw	%x15, 4(%x2)  #2631 pc 37168
	sw	%x10, 8(%x2)  #2631 pc 37172
	sw	%x16, 12(%x2)  #2631 pc 37176
	sw	%x11, 16(%x2)  #2631 pc 37180
	sw	%x18, 20(%x2)  #2631 pc 37184
	sw	%x17, 24(%x2)  #2631 pc 37188
	sw	%x19, 28(%x2)  #2631 pc 37192
	sw	%x8, 32(%x2)  #2631 pc 37196
	sw	%x9, 36(%x2)  #2631 pc 37200
	sw	%x14, 40(%x2)  #2631 pc 37204
	sw	%x22, 44(%x2)  #2631 pc 37208
	sw	%x12, 48(%x2)  #2631 pc 37212
	sw	%x6, 52(%x2)  #2631 pc 37216
	sw	%x7, 56(%x2)  #2631 pc 37220
	sw	%x21, 60(%x2)  #2631 pc 37224
	addi	%x7, %x20, 0  #0 pc 37228
	sw	%x1, 64(%x2)  #2631 pc 37232
	addi	%x2, %x2, 68  #2631 pc 37236
	jal	%x1, div.2535  #2631 pc 37240
	addi	%x2, %x2, -68  #2631 pc 37244
	lw	%x1, 64(%x2) #2631 pc 37248
	lw	%x7, 60(%x2)  #2631 pc 37252
	sw	%x6, 0(%x7)  #2631 pc 37256
	addi	%x6, %x0, 2  #0 pc 37260
	lw	%x8, 56(%x2)  #2632 pc 37264
	addi	%x7, %x6, 0  #0 pc 37268
	addi	%x6, %x8, 0  #0 pc 37272
	sw	%x1, 64(%x2)  #2632 pc 37276
	addi	%x2, %x2, 68  #2632 pc 37280
	jal	%x1, div.2535  #2632 pc 37284
	addi	%x2, %x2, -68  #2632 pc 37288
	lw	%x1, 64(%x2) #2632 pc 37292
	lw	%x7, 60(%x2)  #2632 pc 37296
	sw	%x6, 4(%x7)  #2632 pc 37300
	fmv	%f0, l.6955  #0 pc 37304
	lw	%x6, 52(%x2)  #2633 pc 37308
	fsw	%f0, 64(%x2)  #2633 pc 37312
	sw	%x1, 72(%x2)  #2633 pc 37316
	addi	%x2, %x2, 76  #2633 pc 37320
	jal	%x1, float_of_int.2518  #2633 pc 37324
	addi	%x2, %x2, -76  #2633 pc 37328
	lw	%x1, 72(%x2) #2633 pc 37332
	flw	%f1, 64(%x2)  #2633 pc 37336
	fdiv	%f0, %f1, %f0  #2633 pc 37340
	lw	%x6, 48(%x2)  #2633 pc 37344
	fsw	%f0, 0(%x6)  #2633 pc 37348
	lw	%x29, 44(%x2)  #2634 pc 37352
	sw	%x1, 72(%x2)  #2634 pc 37356
	lw	%x30, 0(%x29)  #2634 pc 37360
	addi	%x2, %x2, 76  #2634 pc 37364
	jalr	%x1, %x30, 0  #2634 pc 37368
	addi	%x2, %x2, -76  #2634 pc 37372
	lw	%x1, 72(%x2)  #2634 pc 37376
	lw	%x29, 44(%x2)  #2635 pc 37380
	sw	%x6, 72(%x2)  #2635 pc 37384
	sw	%x1, 76(%x2)  #2635 pc 37388
	lw	%x30, 0(%x29)  #2635 pc 37392
	addi	%x2, %x2, 80  #2635 pc 37396
	jalr	%x1, %x30, 0  #2635 pc 37400
	addi	%x2, %x2, -80  #2635 pc 37404
	lw	%x1, 76(%x2)  #2635 pc 37408
	lw	%x29, 44(%x2)  #2636 pc 37412
	sw	%x6, 76(%x2)  #2636 pc 37416
	sw	%x1, 80(%x2)  #2636 pc 37420
	lw	%x30, 0(%x29)  #2636 pc 37424
	addi	%x2, %x2, 84  #2636 pc 37428
	jalr	%x1, %x30, 0  #2636 pc 37432
	addi	%x2, %x2, -84  #2636 pc 37436
	lw	%x1, 80(%x2)  #2636 pc 37440
	lw	%x29, 40(%x2)  #2637 pc 37444
	sw	%x6, 80(%x2)  #2637 pc 37448
	sw	%x1, 84(%x2)  #2637 pc 37452
	lw	%x30, 0(%x29)  #2637 pc 37456
	addi	%x2, %x2, 88  #2637 pc 37460
	jalr	%x1, %x30, 0  #2637 pc 37464
	addi	%x2, %x2, -88  #2637 pc 37468
	lw	%x1, 84(%x2)  #2637 pc 37472
	lw	%x6, 32(%x2)  #2638 pc 37476
	lw	%x29, 36(%x2)  #2638 pc 37480
	sw	%x1, 84(%x2)  #2638 pc 37484
	lw	%x30, 0(%x29)  #2638 pc 37488
	addi	%x2, %x2, 88  #2638 pc 37492
	jalr	%x1, %x30, 0  #2638 pc 37496
	addi	%x2, %x2, -88  #2638 pc 37500
	lw	%x1, 84(%x2)  #2638 pc 37504
	lw	%x29, 28(%x2)  #2639 pc 37508
	sw	%x1, 84(%x2)  #2639 pc 37512
	lw	%x30, 0(%x29)  #2639 pc 37516
	addi	%x2, %x2, 88  #2639 pc 37520
	jalr	%x1, %x30, 0  #2639 pc 37524
	addi	%x2, %x2, -88  #2639 pc 37528
	lw	%x1, 84(%x2)  #2639 pc 37532
	lw	%x6, 24(%x2)  #2640 pc 37536
	sw	%x1, 84(%x2)  #2640 pc 37540
	addi	%x2, %x2, 88  #2640 pc 37544
	jal	%x1, d_vec.2700  #2640 pc 37548
	addi	%x2, %x2, -88  #2640 pc 37552
	lw	%x1, 84(%x2) #2640 pc 37556
	lw	%x7, 20(%x2)  #2640 pc 37560
	sw	%x1, 84(%x2)  #2640 pc 37564
	addi	%x2, %x2, 88  #2640 pc 37568
	jal	%x1, veccpy.2611  #2640 pc 37572
	addi	%x2, %x2, -88  #2640 pc 37576
	lw	%x1, 84(%x2) #2640 pc 37580
	lw	%x6, 24(%x2)  #2641 pc 37584
	lw	%x29, 16(%x2)  #2641 pc 37588
	sw	%x1, 84(%x2)  #2641 pc 37592
	lw	%x30, 0(%x29)  #2641 pc 37596
	addi	%x2, %x2, 88  #2641 pc 37600
	jalr	%x1, %x30, 0  #2641 pc 37604
	addi	%x2, %x2, -88  #2641 pc 37608
	lw	%x1, 84(%x2)  #2641 pc 37612
	lw	%x6, 12(%x2)  #2642 pc 37616
	lw	%x6, 0(%x6)  #2642 pc 37620
	addi	%x6, %x6, -1  #2642 pc 37624
	lw	%x29, 8(%x2)  #2642 pc 37628
	sw	%x1, 84(%x2)  #2642 pc 37632
	lw	%x30, 0(%x29)  #2642 pc 37636
	addi	%x2, %x2, 88  #2642 pc 37640
	jalr	%x1, %x30, 0  #2642 pc 37644
	addi	%x2, %x2, -88  #2642 pc 37648
	lw	%x1, 84(%x2)  #2642 pc 37652
	addi	%x7, %x0, 0  #0 pc 37656
	addi	%x8, %x0, 0  #0 pc 37660
	lw	%x6, 76(%x2)  #2643 pc 37664
	lw	%x29, 4(%x2)  #2643 pc 37668
	sw	%x1, 84(%x2)  #2643 pc 37672
	lw	%x30, 0(%x29)  #2643 pc 37676
	addi	%x2, %x2, 88  #2643 pc 37680
	jalr	%x1, %x30, 0  #2643 pc 37684
	addi	%x2, %x2, -88  #2643 pc 37688
	lw	%x1, 84(%x2)  #2643 pc 37692
	addi	%x6, %x0, 0  #0 pc 37696
	addi	%x10, %x0, 2  #0 pc 37700
	lw	%x7, 72(%x2)  #2644 pc 37704
	lw	%x8, 76(%x2)  #2644 pc 37708
	lw	%x9, 80(%x2)  #2644 pc 37712
	lw	%x11, 32(%x2)  #2644 pc 37716
	lw	%x29, 0(%x2)  #2644 pc 37720
	lw	%x30, 0(%x29)  #2644 pc 37724
	jalr	%x0, %x30, 0  #2644 pc 37728
	nop #pc 37732
.global	min_caml_start
min_caml_start:
	addi	%x2, %x0, 1000000
	addi	%x3, %x0, 1002000
	addi	%x4, %x0, 8192
	addi	%x5, %x0, 65536
	addi	%x6, %x0, 1  #0 pc 37752
	addi	%x7, %x0, 0  #0 pc 37756
	sw	%x1, 0(%x2)  #223 pc 37760
	addi	%x2, %x2, 4  #223 pc 37764
	jal	%x1, create_array.2550  #223 pc 37768
	addi	%x2, %x2, -4  #223 pc 37772
	lw	%x1, 0(%x2) #223 pc 37776
	addi	%x7, %x0, 0  #0 pc 37780
	fmv	%f0, l.6207  #0 pc 37784
	sw	%x6, 0(%x2)  #228 pc 37788
	addi	%x6, %x7, 0  #0 pc 37792
	sw	%x1, 4(%x2)  #228 pc 37796
	addi	%x2, %x2, 8  #228 pc 37800
	jal	%x1, create_float_array.2557  #228 pc 37804
	addi	%x2, %x2, -8  #228 pc 37808
	lw	%x1, 4(%x2) #228 pc 37812
	addi	%x7, %x0, 60  #0 pc 37816
	addi	%x8, %x0, 0  #0 pc 37820
	addi	%x9, %x3, 0  #229 pc 37824
	addi	%x3, %x3, 44  #229 pc 37828
	sw	%x6, 40(%x9)  #229 pc 37832
	sw	%x6, 36(%x9)  #229 pc 37836
	sw	%x6, 32(%x9)  #229 pc 37840
	sw	%x6, 28(%x9)  #229 pc 37844
	sw	%x8, 24(%x9)  #229 pc 37848
	sw	%x6, 20(%x9)  #229 pc 37852
	sw	%x6, 16(%x9)  #229 pc 37856
	sw	%x8, 12(%x9)  #229 pc 37860
	sw	%x8, 8(%x9)  #229 pc 37864
	sw	%x8, 4(%x9)  #229 pc 37868
	sw	%x8, 0(%x9)  #229 pc 37872
	addi	%x6, %x9, 0  #229 pc 37876
	addi	%x30, %x7, 0  #0 pc 37880
	addi	%x7, %x6, 0  #0 pc 37884
	addi	%x6, %x30, 0  #0 pc 37888
	sw	%x1, 4(%x2)  #229 pc 37892
	addi	%x2, %x2, 8  #229 pc 37896
	jal	%x1, create_array.2550  #229 pc 37900
	addi	%x2, %x2, -8  #229 pc 37904
	lw	%x1, 4(%x2) #229 pc 37908
	addi	%x7, %x0, 3  #0 pc 37912
	fmv	%f0, l.6207  #0 pc 37916
	sw	%x6, 4(%x2)  #233 pc 37920
	addi	%x6, %x7, 0  #0 pc 37924
	sw	%x1, 8(%x2)  #233 pc 37928
	addi	%x2, %x2, 12  #233 pc 37932
	jal	%x1, create_float_array.2557  #233 pc 37936
	addi	%x2, %x2, -12  #233 pc 37940
	lw	%x1, 8(%x2) #233 pc 37944
	addi	%x7, %x0, 3  #0 pc 37948
	fmv	%f0, l.6207  #0 pc 37952
	sw	%x6, 8(%x2)  #236 pc 37956
	addi	%x6, %x7, 0  #0 pc 37960
	sw	%x1, 12(%x2)  #236 pc 37964
	addi	%x2, %x2, 16  #236 pc 37968
	jal	%x1, create_float_array.2557  #236 pc 37972
	addi	%x2, %x2, -16  #236 pc 37976
	lw	%x1, 12(%x2) #236 pc 37980
	addi	%x7, %x0, 3  #0 pc 37984
	fmv	%f0, l.6207  #0 pc 37988
	sw	%x6, 12(%x2)  #239 pc 37992
	addi	%x6, %x7, 0  #0 pc 37996
	sw	%x1, 16(%x2)  #239 pc 38000
	addi	%x2, %x2, 20  #239 pc 38004
	jal	%x1, create_float_array.2557  #239 pc 38008
	addi	%x2, %x2, -20  #239 pc 38012
	lw	%x1, 16(%x2) #239 pc 38016
	addi	%x7, %x0, 1  #0 pc 38020
	fmv	%f0, l.6708  #0 pc 38024
	sw	%x6, 16(%x2)  #242 pc 38028
	addi	%x6, %x7, 0  #0 pc 38032
	sw	%x1, 20(%x2)  #242 pc 38036
	addi	%x2, %x2, 24  #242 pc 38040
	jal	%x1, create_float_array.2557  #242 pc 38044
	addi	%x2, %x2, -24  #242 pc 38048
	lw	%x1, 20(%x2) #242 pc 38052
	addi	%x7, %x0, 50  #0 pc 38056
	addi	%x8, %x0, 1  #0 pc 38060
	addi	%x9, %x0, -1  #0 pc 38064
	sw	%x6, 20(%x2)  #245 pc 38068
	sw	%x7, 24(%x2)  #245 pc 38072
	addi	%x7, %x9, 0  #0 pc 38076
	addi	%x6, %x8, 0  #0 pc 38080
	sw	%x1, 28(%x2)  #245 pc 38084
	addi	%x2, %x2, 32  #245 pc 38088
	jal	%x1, create_array.2550  #245 pc 38092
	addi	%x2, %x2, -32  #245 pc 38096
	lw	%x1, 28(%x2) #245 pc 38100
	addi	%x7, %x6, 0  #245 pc 38104
	lw	%x6, 24(%x2)  #245 pc 38108
	sw	%x1, 28(%x2)  #245 pc 38112
	addi	%x2, %x2, 32  #245 pc 38116
	jal	%x1, create_array.2550  #245 pc 38120
	addi	%x2, %x2, -32  #245 pc 38124
	lw	%x1, 28(%x2) #245 pc 38128
	addi	%x7, %x0, 1  #0 pc 38132
	lw	%x8, 0(%x6)  #248 pc 38136
	sw	%x6, 28(%x2)  #248 pc 38140
	sw	%x7, 32(%x2)  #248 pc 38144
	addi	%x6, %x7, 0  #0 pc 38148
	addi	%x7, %x8, 0  #0 pc 38152
	sw	%x1, 36(%x2)  #248 pc 38156
	addi	%x2, %x2, 40  #248 pc 38160
	jal	%x1, create_array.2550  #248 pc 38164
	addi	%x2, %x2, -40  #248 pc 38168
	lw	%x1, 36(%x2) #248 pc 38172
	addi	%x7, %x6, 0  #248 pc 38176
	lw	%x6, 32(%x2)  #248 pc 38180
	sw	%x1, 36(%x2)  #248 pc 38184
	addi	%x2, %x2, 40  #248 pc 38188
	jal	%x1, create_array.2550  #248 pc 38192
	addi	%x2, %x2, -40  #248 pc 38196
	lw	%x1, 36(%x2) #248 pc 38200
	addi	%x7, %x0, 1  #0 pc 38204
	fmv	%f0, l.6207  #0 pc 38208
	sw	%x6, 36(%x2)  #253 pc 38212
	addi	%x6, %x7, 0  #0 pc 38216
	sw	%x1, 40(%x2)  #253 pc 38220
	addi	%x2, %x2, 44  #253 pc 38224
	jal	%x1, create_float_array.2557  #253 pc 38228
	addi	%x2, %x2, -44  #253 pc 38232
	lw	%x1, 40(%x2) #253 pc 38236
	addi	%x7, %x0, 1  #0 pc 38240
	addi	%x8, %x0, 0  #0 pc 38244
	sw	%x6, 40(%x2)  #256 pc 38248
	addi	%x6, %x7, 0  #0 pc 38252
	addi	%x7, %x8, 0  #0 pc 38256
	sw	%x1, 44(%x2)  #256 pc 38260
	addi	%x2, %x2, 48  #256 pc 38264
	jal	%x1, create_array.2550  #256 pc 38268
	addi	%x2, %x2, -48  #256 pc 38272
	lw	%x1, 44(%x2) #256 pc 38276
	addi	%x7, %x0, 1  #0 pc 38280
	fmv	%f0, l.6635  #0 pc 38284
	sw	%x6, 44(%x2)  #259 pc 38288
	addi	%x6, %x7, 0  #0 pc 38292
	sw	%x1, 48(%x2)  #259 pc 38296
	addi	%x2, %x2, 52  #259 pc 38300
	jal	%x1, create_float_array.2557  #259 pc 38304
	addi	%x2, %x2, -52  #259 pc 38308
	lw	%x1, 48(%x2) #259 pc 38312
	addi	%x7, %x0, 3  #0 pc 38316
	fmv	%f0, l.6207  #0 pc 38320
	sw	%x6, 48(%x2)  #262 pc 38324
	addi	%x6, %x7, 0  #0 pc 38328
	sw	%x1, 52(%x2)  #262 pc 38332
	addi	%x2, %x2, 56  #262 pc 38336
	jal	%x1, create_float_array.2557  #262 pc 38340
	addi	%x2, %x2, -56  #262 pc 38344
	lw	%x1, 52(%x2) #262 pc 38348
	addi	%x7, %x0, 1  #0 pc 38352
	addi	%x8, %x0, 0  #0 pc 38356
	sw	%x6, 52(%x2)  #265 pc 38360
	addi	%x6, %x7, 0  #0 pc 38364
	addi	%x7, %x8, 0  #0 pc 38368
	sw	%x1, 56(%x2)  #265 pc 38372
	addi	%x2, %x2, 60  #265 pc 38376
	jal	%x1, create_array.2550  #265 pc 38380
	addi	%x2, %x2, -60  #265 pc 38384
	lw	%x1, 56(%x2) #265 pc 38388
	addi	%x7, %x0, 3  #0 pc 38392
	fmv	%f0, l.6207  #0 pc 38396
	sw	%x6, 56(%x2)  #268 pc 38400
	addi	%x6, %x7, 0  #0 pc 38404
	sw	%x1, 60(%x2)  #268 pc 38408
	addi	%x2, %x2, 64  #268 pc 38412
	jal	%x1, create_float_array.2557  #268 pc 38416
	addi	%x2, %x2, -64  #268 pc 38420
	lw	%x1, 60(%x2) #268 pc 38424
	addi	%x7, %x0, 3  #0 pc 38428
	fmv	%f0, l.6207  #0 pc 38432
	sw	%x6, 60(%x2)  #271 pc 38436
	addi	%x6, %x7, 0  #0 pc 38440
	sw	%x1, 64(%x2)  #271 pc 38444
	addi	%x2, %x2, 68  #271 pc 38448
	jal	%x1, create_float_array.2557  #271 pc 38452
	addi	%x2, %x2, -68  #271 pc 38456
	lw	%x1, 64(%x2) #271 pc 38460
	addi	%x7, %x0, 3  #0 pc 38464
	fmv	%f0, l.6207  #0 pc 38468
	sw	%x6, 64(%x2)  #275 pc 38472
	addi	%x6, %x7, 0  #0 pc 38476
	sw	%x1, 68(%x2)  #275 pc 38480
	addi	%x2, %x2, 72  #275 pc 38484
	jal	%x1, create_float_array.2557  #275 pc 38488
	addi	%x2, %x2, -72  #275 pc 38492
	lw	%x1, 68(%x2) #275 pc 38496
	addi	%x7, %x0, 3  #0 pc 38500
	fmv	%f0, l.6207  #0 pc 38504
	sw	%x6, 68(%x2)  #278 pc 38508
	addi	%x6, %x7, 0  #0 pc 38512
	sw	%x1, 72(%x2)  #278 pc 38516
	addi	%x2, %x2, 76  #278 pc 38520
	jal	%x1, create_float_array.2557  #278 pc 38524
	addi	%x2, %x2, -76  #278 pc 38528
	lw	%x1, 72(%x2) #278 pc 38532
	addi	%x7, %x0, 2  #0 pc 38536
	addi	%x8, %x0, 0  #0 pc 38540
	sw	%x6, 72(%x2)  #282 pc 38544
	addi	%x6, %x7, 0  #0 pc 38548
	addi	%x7, %x8, 0  #0 pc 38552
	sw	%x1, 76(%x2)  #282 pc 38556
	addi	%x2, %x2, 80  #282 pc 38560
	jal	%x1, create_array.2550  #282 pc 38564
	addi	%x2, %x2, -80  #282 pc 38568
	lw	%x1, 76(%x2) #282 pc 38572
	addi	%x7, %x0, 2  #0 pc 38576
	addi	%x8, %x0, 0  #0 pc 38580
	sw	%x6, 76(%x2)  #285 pc 38584
	addi	%x6, %x7, 0  #0 pc 38588
	addi	%x7, %x8, 0  #0 pc 38592
	sw	%x1, 80(%x2)  #285 pc 38596
	addi	%x2, %x2, 84  #285 pc 38600
	jal	%x1, create_array.2550  #285 pc 38604
	addi	%x2, %x2, -84  #285 pc 38608
	lw	%x1, 80(%x2) #285 pc 38612
	addi	%x7, %x0, 1  #0 pc 38616
	fmv	%f0, l.6207  #0 pc 38620
	sw	%x6, 80(%x2)  #288 pc 38624
	addi	%x6, %x7, 0  #0 pc 38628
	sw	%x1, 84(%x2)  #288 pc 38632
	addi	%x2, %x2, 88  #288 pc 38636
	jal	%x1, create_float_array.2557  #288 pc 38640
	addi	%x2, %x2, -88  #288 pc 38644
	lw	%x1, 84(%x2) #288 pc 38648
	addi	%x7, %x0, 3  #0 pc 38652
	fmv	%f0, l.6207  #0 pc 38656
	sw	%x6, 84(%x2)  #292 pc 38660
	addi	%x6, %x7, 0  #0 pc 38664
	sw	%x1, 88(%x2)  #292 pc 38668
	addi	%x2, %x2, 92  #292 pc 38672
	jal	%x1, create_float_array.2557  #292 pc 38676
	addi	%x2, %x2, -92  #292 pc 38680
	lw	%x1, 88(%x2) #292 pc 38684
	addi	%x7, %x0, 3  #0 pc 38688
	fmv	%f0, l.6207  #0 pc 38692
	sw	%x6, 88(%x2)  #295 pc 38696
	addi	%x6, %x7, 0  #0 pc 38700
	sw	%x1, 92(%x2)  #295 pc 38704
	addi	%x2, %x2, 96  #295 pc 38708
	jal	%x1, create_float_array.2557  #295 pc 38712
	addi	%x2, %x2, -96  #295 pc 38716
	lw	%x1, 92(%x2) #295 pc 38720
	addi	%x7, %x0, 3  #0 pc 38724
	fmv	%f0, l.6207  #0 pc 38728
	sw	%x6, 92(%x2)  #299 pc 38732
	addi	%x6, %x7, 0  #0 pc 38736
	sw	%x1, 96(%x2)  #299 pc 38740
	addi	%x2, %x2, 100  #299 pc 38744
	jal	%x1, create_float_array.2557  #299 pc 38748
	addi	%x2, %x2, -100  #299 pc 38752
	lw	%x1, 96(%x2) #299 pc 38756
	addi	%x7, %x0, 3  #0 pc 38760
	fmv	%f0, l.6207  #0 pc 38764
	sw	%x6, 96(%x2)  #301 pc 38768
	addi	%x6, %x7, 0  #0 pc 38772
	sw	%x1, 100(%x2)  #301 pc 38776
	addi	%x2, %x2, 104  #301 pc 38780
	jal	%x1, create_float_array.2557  #301 pc 38784
	addi	%x2, %x2, -104  #301 pc 38788
	lw	%x1, 100(%x2) #301 pc 38792
	addi	%x7, %x0, 3  #0 pc 38796
	fmv	%f0, l.6207  #0 pc 38800
	sw	%x6, 100(%x2)  #303 pc 38804
	addi	%x6, %x7, 0  #0 pc 38808
	sw	%x1, 104(%x2)  #303 pc 38812
	addi	%x2, %x2, 108  #303 pc 38816
	jal	%x1, create_float_array.2557  #303 pc 38820
	addi	%x2, %x2, -108  #303 pc 38824
	lw	%x1, 104(%x2) #303 pc 38828
	addi	%x7, %x0, 3  #0 pc 38832
	fmv	%f0, l.6207  #0 pc 38836
	sw	%x6, 104(%x2)  #307 pc 38840
	addi	%x6, %x7, 0  #0 pc 38844
	sw	%x1, 108(%x2)  #307 pc 38848
	addi	%x2, %x2, 112  #307 pc 38852
	jal	%x1, create_float_array.2557  #307 pc 38856
	addi	%x2, %x2, -112  #307 pc 38860
	lw	%x1, 108(%x2) #307 pc 38864
	addi	%x7, %x0, 0  #0 pc 38868
	fmv	%f0, l.6207  #0 pc 38872
	sw	%x6, 108(%x2)  #312 pc 38876
	addi	%x6, %x7, 0  #0 pc 38880
	sw	%x1, 112(%x2)  #312 pc 38884
	addi	%x2, %x2, 116  #312 pc 38888
	jal	%x1, create_float_array.2557  #312 pc 38892
	addi	%x2, %x2, -116  #312 pc 38896
	lw	%x1, 112(%x2) #312 pc 38900
	addi	%x7, %x6, 0  #312 pc 38904
	addi	%x6, %x0, 0  #0 pc 38908
	sw	%x7, 112(%x2)  #313 pc 38912
	sw	%x1, 116(%x2)  #313 pc 38916
	addi	%x2, %x2, 120  #313 pc 38920
	jal	%x1, create_array.2550  #313 pc 38924
	addi	%x2, %x2, -120  #313 pc 38928
	lw	%x1, 116(%x2) #313 pc 38932
	addi	%x7, %x0, 0  #0 pc 38936
	addi	%x8, %x3, 0  #314 pc 38940
	addi	%x3, %x3, 8  #314 pc 38944
	sw	%x6, 4(%x8)  #314 pc 38948
	lw	%x6, 112(%x2)  #314 pc 38952
	sw	%x6, 0(%x8)  #314 pc 38956
	addi	%x6, %x8, 0  #314 pc 38960
	addi	%x30, %x7, 0  #0 pc 38964
	addi	%x7, %x6, 0  #0 pc 38968
	addi	%x6, %x30, 0  #0 pc 38972
	sw	%x1, 116(%x2)  #314 pc 38976
	addi	%x2, %x2, 120  #314 pc 38980
	jal	%x1, create_array.2550  #314 pc 38984
	addi	%x2, %x2, -120  #314 pc 38988
	lw	%x1, 116(%x2) #314 pc 38992
	addi	%x7, %x6, 0  #314 pc 38996
	addi	%x6, %x0, 5  #0 pc 39000
	sw	%x1, 116(%x2)  #315 pc 39004
	addi	%x2, %x2, 120  #315 pc 39008
	jal	%x1, create_array.2550  #315 pc 39012
	addi	%x2, %x2, -120  #315 pc 39016
	lw	%x1, 116(%x2) #315 pc 39020
	addi	%x7, %x0, 0  #0 pc 39024
	fmv	%f0, l.6207  #0 pc 39028
	sw	%x6, 116(%x2)  #320 pc 39032
	addi	%x6, %x7, 0  #0 pc 39036
	sw	%x1, 120(%x2)  #320 pc 39040
	addi	%x2, %x2, 124  #320 pc 39044
	jal	%x1, create_float_array.2557  #320 pc 39048
	addi	%x2, %x2, -124  #320 pc 39052
	lw	%x1, 120(%x2) #320 pc 39056
	addi	%x7, %x0, 3  #0 pc 39060
	fmv	%f0, l.6207  #0 pc 39064
	sw	%x6, 120(%x2)  #321 pc 39068
	addi	%x6, %x7, 0  #0 pc 39072
	sw	%x1, 124(%x2)  #321 pc 39076
	addi	%x2, %x2, 128  #321 pc 39080
	jal	%x1, create_float_array.2557  #321 pc 39084
	addi	%x2, %x2, -128  #321 pc 39088
	lw	%x1, 124(%x2) #321 pc 39092
	addi	%x7, %x0, 60  #0 pc 39096
	lw	%x8, 120(%x2)  #322 pc 39100
	sw	%x6, 124(%x2)  #322 pc 39104
	addi	%x6, %x7, 0  #0 pc 39108
	addi	%x7, %x8, 0  #0 pc 39112
	sw	%x1, 128(%x2)  #322 pc 39116
	addi	%x2, %x2, 132  #322 pc 39120
	jal	%x1, create_array.2550  #322 pc 39124
	addi	%x2, %x2, -132  #322 pc 39128
	lw	%x1, 128(%x2) #322 pc 39132
	addi	%x7, %x3, 0  #323 pc 39136
	addi	%x3, %x3, 8  #323 pc 39140
	sw	%x6, 4(%x7)  #323 pc 39144
	lw	%x6, 124(%x2)  #323 pc 39148
	sw	%x6, 0(%x7)  #323 pc 39152
	addi	%x6, %x7, 0  #323 pc 39156
	addi	%x7, %x0, 0  #0 pc 39160
	fmv	%f0, l.6207  #0 pc 39164
	sw	%x6, 128(%x2)  #328 pc 39168
	addi	%x6, %x7, 0  #0 pc 39172
	sw	%x1, 132(%x2)  #328 pc 39176
	addi	%x2, %x2, 136  #328 pc 39180
	jal	%x1, create_float_array.2557  #328 pc 39184
	addi	%x2, %x2, -136  #328 pc 39188
	lw	%x1, 132(%x2) #328 pc 39192
	addi	%x7, %x6, 0  #328 pc 39196
	addi	%x6, %x0, 0  #0 pc 39200
	sw	%x7, 132(%x2)  #329 pc 39204
	sw	%x1, 136(%x2)  #329 pc 39208
	addi	%x2, %x2, 140  #329 pc 39212
	jal	%x1, create_array.2550  #329 pc 39216
	addi	%x2, %x2, -140  #329 pc 39220
	lw	%x1, 136(%x2) #329 pc 39224
	addi	%x7, %x3, 0  #330 pc 39228
	addi	%x3, %x3, 8  #330 pc 39232
	sw	%x6, 4(%x7)  #330 pc 39236
	lw	%x6, 132(%x2)  #330 pc 39240
	sw	%x6, 0(%x7)  #330 pc 39244
	addi	%x6, %x7, 0  #330 pc 39248
	addi	%x7, %x0, 180  #0 pc 39252
	addi	%x8, %x0, 0  #0 pc 39256
	fmv	%f0, l.6207  #0 pc 39260
	addi	%x9, %x3, 0  #331 pc 39264
	addi	%x3, %x3, 12  #331 pc 39268
	fsw	%f0, 8(%x9)  #331 pc 39272
	sw	%x6, 4(%x9)  #331 pc 39276
	sw	%x8, 0(%x9)  #331 pc 39280
	addi	%x6, %x9, 0  #331 pc 39284
	addi	%x30, %x7, 0  #0 pc 39288
	addi	%x7, %x6, 0  #0 pc 39292
	addi	%x6, %x30, 0  #0 pc 39296
	sw	%x1, 136(%x2)  #331 pc 39300
	addi	%x2, %x2, 140  #331 pc 39304
	jal	%x1, create_array.2550  #331 pc 39308
	addi	%x2, %x2, -140  #331 pc 39312
	lw	%x1, 136(%x2) #331 pc 39316
	addi	%x7, %x0, 1  #0 pc 39320
	addi	%x8, %x0, 0  #0 pc 39324
	sw	%x6, 136(%x2)  #335 pc 39328
	addi	%x6, %x7, 0  #0 pc 39332
	addi	%x7, %x8, 0  #0 pc 39336
	sw	%x1, 140(%x2)  #335 pc 39340
	addi	%x2, %x2, 144  #335 pc 39344
	jal	%x1, create_array.2550  #335 pc 39348
	addi	%x2, %x2, -144  #335 pc 39352
	lw	%x1, 140(%x2) #335 pc 39356
	addi	%x7, %x3, 0  #818 pc 39360
	addi	%x3, %x3, 24  #818 pc 39364
	addi	%x31, %x0, 2936  #818 read_screen_settings.2712 pc 39368
	addi	%x8, %x31, 0  #818 pc 39372
	sw	%x8, 0(%x7)  #818 pc 39376
	lw	%x8, 12(%x2)  #818 pc 39380
	sw	%x8, 20(%x7)  #818 pc 39384
	lw	%x9, 104(%x2)  #818 pc 39388
	sw	%x9, 16(%x7)  #818 pc 39392
	lw	%x10, 100(%x2)  #818 pc 39396
	sw	%x10, 12(%x7)  #818 pc 39400
	lw	%x11, 96(%x2)  #818 pc 39404
	sw	%x11, 8(%x7)  #818 pc 39408
	lw	%x12, 8(%x2)  #818 pc 39412
	sw	%x12, 4(%x7)  #818 pc 39416
	addi	%x12, %x3, 0  #851 pc 39420
	addi	%x3, %x3, 12  #851 pc 39424
	addi	%x31, %x0, 3544  #851 read_light.2714 pc 39428
	addi	%x13, %x31, 0  #851 pc 39432
	sw	%x13, 0(%x12)  #851 pc 39436
	lw	%x13, 16(%x2)  #851 pc 39440
	sw	%x13, 8(%x12)  #851 pc 39444
	lw	%x14, 20(%x2)  #851 pc 39448
	sw	%x14, 4(%x12)  #851 pc 39452
	addi	%x15, %x3, 0  #914 pc 39456
	addi	%x3, %x3, 8  #914 pc 39460
	addi	%x31, %x0, 4880  #914 read_nth_object.2719 pc 39464
	addi	%x16, %x31, 0  #914 pc 39468
	sw	%x16, 0(%x15)  #914 pc 39472
	lw	%x16, 4(%x2)  #914 pc 39476
	sw	%x16, 4(%x15)  #914 pc 39480
	addi	%x17, %x3, 0  #997 pc 39484
	addi	%x3, %x3, 12  #997 pc 39488
	addi	%x31, %x0, 6444  #997 read_object.2721 pc 39492
	addi	%x18, %x31, 0  #997 pc 39496
	sw	%x18, 0(%x17)  #997 pc 39500
	sw	%x15, 8(%x17)  #997 pc 39504
	lw	%x15, 0(%x2)  #997 pc 39508
	sw	%x15, 4(%x17)  #997 pc 39512
	addi	%x18, %x3, 0  #1006 pc 39516
	addi	%x3, %x3, 8  #1006 pc 39520
	addi	%x31, %x0, 6572  #1006 read_all_object.2723 pc 39524
	addi	%x19, %x31, 0  #1006 pc 39528
	sw	%x19, 0(%x18)  #1006 pc 39532
	sw	%x17, 4(%x18)  #1006 pc 39536
	addi	%x17, %x3, 0  #1030 pc 39540
	addi	%x3, %x3, 8  #1030 pc 39544
	addi	%x31, %x0, 6852  #1030 read_and_network.2729 pc 39548
	addi	%x19, %x31, 0  #1030 pc 39552
	sw	%x19, 0(%x17)  #1030 pc 39556
	lw	%x19, 28(%x2)  #1030 pc 39560
	sw	%x19, 4(%x17)  #1030 pc 39564
	addi	%x20, %x3, 0  #1039 pc 39568
	addi	%x3, %x3, 24  #1039 pc 39572
	addi	%x31, %x0, 6964  #1039 read_parameter.2731 pc 39576
	addi	%x21, %x31, 0  #1039 pc 39580
	sw	%x21, 0(%x20)  #1039 pc 39584
	sw	%x7, 20(%x20)  #1039 pc 39588
	sw	%x12, 16(%x20)  #1039 pc 39592
	sw	%x17, 12(%x20)  #1039 pc 39596
	sw	%x18, 8(%x20)  #1039 pc 39600
	lw	%x7, 36(%x2)  #1039 pc 39604
	sw	%x7, 4(%x20)  #1039 pc 39608
	addi	%x12, %x3, 0  #1064 pc 39612
	addi	%x3, %x3, 8  #1064 pc 39616
	addi	%x31, %x0, 7156  #1064 solver_rect_surface.2733 pc 39620
	addi	%x17, %x31, 0  #1064 pc 39624
	sw	%x17, 0(%x12)  #1064 pc 39628
	lw	%x17, 40(%x2)  #1064 pc 39632
	sw	%x17, 4(%x12)  #1064 pc 39636
	addi	%x18, %x3, 0  #1079 pc 39640
	addi	%x3, %x3, 8  #1079 pc 39644
	addi	%x31, %x0, 7688  #1079 solver_rect.2742 pc 39648
	addi	%x21, %x31, 0  #1079 pc 39652
	sw	%x21, 0(%x18)  #1079 pc 39656
	sw	%x12, 4(%x18)  #1079 pc 39660
	addi	%x12, %x3, 0  #1088 pc 39664
	addi	%x3, %x3, 8  #1088 pc 39668
	addi	%x31, %x0, 7956  #1088 solver_surface.2748 pc 39672
	addi	%x21, %x31, 0  #1088 pc 39676
	sw	%x21, 0(%x12)  #1088 pc 39680
	sw	%x17, 4(%x12)  #1088 pc 39684
	addi	%x21, %x3, 0  #1139 pc 39688
	addi	%x3, %x3, 8  #1139 pc 39692
	addi	%x31, %x0, 9112  #1139 solver_second.2767 pc 39696
	addi	%x22, %x31, 0  #1139 pc 39700
	sw	%x22, 0(%x21)  #1139 pc 39704
	sw	%x17, 4(%x21)  #1139 pc 39708
	addi	%x22, %x3, 0  #1168 pc 39712
	addi	%x3, %x3, 20  #1168 pc 39716
	addi	%x31, %x0, 9620  #1168 solver.2773 pc 39720
	addi	%x23, %x31, 0  #1168 pc 39724
	sw	%x23, 0(%x22)  #1168 pc 39728
	sw	%x12, 16(%x22)  #1168 pc 39732
	sw	%x21, 12(%x22)  #1168 pc 39736
	sw	%x18, 8(%x22)  #1168 pc 39740
	sw	%x16, 4(%x22)  #1168 pc 39744
	addi	%x12, %x3, 0  #1200 pc 39748
	addi	%x3, %x3, 8  #1200 pc 39752
	addi	%x31, %x0, 9976  #1200 solver_rect_fast.2777 pc 39756
	addi	%x18, %x31, 0  #1200 pc 39760
	sw	%x18, 0(%x12)  #1200 pc 39764
	sw	%x17, 4(%x12)  #1200 pc 39768
	addi	%x18, %x3, 0  #1233 pc 39772
	addi	%x3, %x3, 8  #1233 pc 39776
	addi	%x31, %x0, 11012  #1233 solver_surface_fast.2784 pc 39780
	addi	%x21, %x31, 0  #1233 pc 39784
	sw	%x21, 0(%x18)  #1233 pc 39788
	sw	%x17, 4(%x18)  #1233 pc 39792
	addi	%x21, %x3, 0  #1242 pc 39796
	addi	%x3, %x3, 8  #1242 pc 39800
	addi	%x31, %x0, 11156  #1242 solver_second_fast.2790 pc 39804
	addi	%x23, %x31, 0  #1242 pc 39808
	sw	%x23, 0(%x21)  #1242 pc 39812
	sw	%x17, 4(%x21)  #1242 pc 39816
	addi	%x23, %x3, 0  #1262 pc 39820
	addi	%x3, %x3, 20  #1262 pc 39824
	addi	%x31, %x0, 11624  #1262 solver_fast.2796 pc 39828
	addi	%x24, %x31, 0  #1262 pc 39832
	sw	%x24, 0(%x23)  #1262 pc 39836
	sw	%x18, 16(%x23)  #1262 pc 39840
	sw	%x21, 12(%x23)  #1262 pc 39844
	sw	%x12, 8(%x23)  #1262 pc 39848
	sw	%x16, 4(%x23)  #1262 pc 39852
	addi	%x18, %x3, 0  #1282 pc 39856
	addi	%x3, %x3, 8  #1282 pc 39860
	addi	%x31, %x0, 12064  #1282 solver_surface_fast2.2800 pc 39864
	addi	%x21, %x31, 0  #1282 pc 39868
	sw	%x21, 0(%x18)  #1282 pc 39872
	sw	%x17, 4(%x18)  #1282 pc 39876
	addi	%x21, %x3, 0  #1290 pc 39880
	addi	%x3, %x3, 8  #1290 pc 39884
	addi	%x31, %x0, 12168  #1290 solver_second_fast2.2807 pc 39888
	addi	%x24, %x31, 0  #1290 pc 39892
	sw	%x24, 0(%x21)  #1290 pc 39896
	sw	%x17, 4(%x21)  #1290 pc 39900
	addi	%x24, %x3, 0  #1309 pc 39904
	addi	%x3, %x3, 20  #1309 pc 39908
	addi	%x31, %x0, 12532  #1309 solver_fast2.2814 pc 39912
	addi	%x25, %x31, 0  #1309 pc 39916
	sw	%x25, 0(%x24)  #1309 pc 39920
	sw	%x18, 16(%x24)  #1309 pc 39924
	sw	%x21, 12(%x24)  #1309 pc 39928
	sw	%x12, 8(%x24)  #1309 pc 39932
	sw	%x16, 4(%x24)  #1309 pc 39936
	addi	%x12, %x3, 0  #1406 pc 39940
	addi	%x3, %x3, 8  #1406 pc 39944
	addi	%x31, %x0, 15008  #1406 iter_setup_dirvec_constants.2826 pc 39948
	addi	%x18, %x31, 0  #1406 pc 39952
	sw	%x18, 0(%x12)  #1406 pc 39956
	sw	%x16, 4(%x12)  #1406 pc 39960
	addi	%x18, %x3, 0  #1423 pc 39964
	addi	%x3, %x3, 12  #1423 pc 39968
	addi	%x31, %x0, 15360  #1423 setup_dirvec_constants.2829 pc 39972
	addi	%x21, %x31, 0  #1423 pc 39976
	sw	%x21, 0(%x18)  #1423 pc 39980
	sw	%x15, 8(%x18)  #1423 pc 39984
	sw	%x12, 4(%x18)  #1423 pc 39988
	addi	%x12, %x3, 0  #1431 pc 39992
	addi	%x3, %x3, 8  #1431 pc 39996
	addi	%x31, %x0, 15388  #1431 setup_startp_constants.2831 pc 40000
	addi	%x21, %x31, 0  #1431 pc 40004
	sw	%x21, 0(%x12)  #1431 pc 40008
	sw	%x16, 4(%x12)  #1431 pc 40012
	addi	%x21, %x3, 0  #1450 pc 40016
	addi	%x3, %x3, 16  #1450 pc 40020
	addi	%x31, %x0, 15904  #1450 setup_startp.2834 pc 40024
	addi	%x25, %x31, 0  #1450 pc 40028
	sw	%x25, 0(%x21)  #1450 pc 40032
	lw	%x25, 92(%x2)  #1450 pc 40036
	sw	%x25, 12(%x21)  #1450 pc 40040
	sw	%x12, 8(%x21)  #1450 pc 40044
	sw	%x15, 4(%x21)  #1450 pc 40048
	addi	%x12, %x3, 0  #1500 pc 40052
	addi	%x3, %x3, 8  #1500 pc 40056
	addi	%x31, %x0, 16968  #1500 check_all_inside.2856 pc 40060
	addi	%x26, %x31, 0  #1500 pc 40064
	sw	%x26, 0(%x12)  #1500 pc 40068
	sw	%x16, 4(%x12)  #1500 pc 40072
	addi	%x26, %x3, 0  #1520 pc 40076
	addi	%x3, %x3, 32  #1520 pc 40080
	addi	%x31, %x0, 17136  #1520 shadow_check_and_group.2862 pc 40084
	addi	%x27, %x31, 0  #1520 pc 40088
	sw	%x27, 0(%x26)  #1520 pc 40092
	sw	%x23, 28(%x26)  #1520 pc 40096
	sw	%x17, 24(%x26)  #1520 pc 40100
	sw	%x16, 20(%x26)  #1520 pc 40104
	lw	%x27, 128(%x2)  #1520 pc 40108
	sw	%x27, 16(%x26)  #1520 pc 40112
	sw	%x13, 12(%x26)  #1520 pc 40116
	lw	%x28, 52(%x2)  #1520 pc 40120
	sw	%x28, 8(%x26)  #1520 pc 40124
	sw	%x12, 4(%x26)  #1520 pc 40128
	addi	%x29, %x3, 0  #1550 pc 40132
	addi	%x3, %x3, 12  #1550 pc 40136
	addi	%x31, %x0, 17628  #1550 shadow_check_one_or_group.2865 pc 40140
	addi	%x30, %x31, 0  #1550 pc 40144
	sw	%x30, 0(%x29)  #1550 pc 40148
	sw	%x26, 8(%x29)  #1550 pc 40152
	sw	%x19, 4(%x29)  #1550 pc 40156
	addi	%x26, %x3, 0  #1565 pc 40160
	addi	%x3, %x3, 24  #1565 pc 40164
	addi	%x31, %x0, 17792  #1565 shadow_check_one_or_matrix.2868 pc 40168
	addi	%x30, %x31, 0  #1565 pc 40172
	sw	%x30, 0(%x26)  #1565 pc 40176
	sw	%x23, 20(%x26)  #1565 pc 40180
	sw	%x17, 16(%x26)  #1565 pc 40184
	sw	%x29, 12(%x26)  #1565 pc 40188
	sw	%x27, 8(%x26)  #1565 pc 40192
	sw	%x28, 4(%x26)  #1565 pc 40196
	addi	%x23, %x3, 0  #1601 pc 40200
	addi	%x3, %x3, 40  #1601 pc 40204
	addi	%x31, %x0, 18220  #1601 solve_each_element.2871 pc 40208
	addi	%x29, %x31, 0  #1601 pc 40212
	sw	%x29, 0(%x23)  #1601 pc 40216
	lw	%x29, 48(%x2)  #1601 pc 40220
	sw	%x29, 36(%x23)  #1601 pc 40224
	lw	%x30, 88(%x2)  #1601 pc 40228
	sw	%x30, 32(%x23)  #1601 pc 40232
	sw	%x17, 28(%x23)  #1601 pc 40236
	sw	%x22, 24(%x23)  #1601 pc 40240
	sw	%x16, 20(%x23)  #1601 pc 40244
	lw	%x27, 44(%x2)  #1601 pc 40248
	sw	%x27, 16(%x23)  #1601 pc 40252
	sw	%x28, 12(%x23)  #1601 pc 40256
	sw	%x20, 140(%x2)  #1601 pc 40260
	lw	%x20, 56(%x2)  #1601 pc 40264
	sw	%x20, 8(%x23)  #1601 pc 40268
	sw	%x12, 4(%x23)  #1601 pc 40272
	sw	%x18, 144(%x2)  #1642 pc 40276
	addi	%x18, %x3, 0  #1642 pc 40280
	addi	%x3, %x3, 12  #1642 pc 40284
	addi	%x31, %x0, 18864  #1642 solve_one_or_network.2875 pc 40288
	addi	%x15, %x31, 0  #1642 pc 40292
	sw	%x15, 0(%x18)  #1642 pc 40296
	sw	%x23, 8(%x18)  #1642 pc 40300
	sw	%x19, 4(%x18)  #1642 pc 40304
	addi	%x15, %x3, 0  #1652 pc 40308
	addi	%x3, %x3, 24  #1652 pc 40312
	addi	%x31, %x0, 19008  #1652 trace_or_matrix.2879 pc 40316
	addi	%x23, %x31, 0  #1652 pc 40320
	sw	%x23, 0(%x15)  #1652 pc 40324
	sw	%x29, 20(%x15)  #1652 pc 40328
	sw	%x30, 16(%x15)  #1652 pc 40332
	sw	%x17, 12(%x15)  #1652 pc 40336
	sw	%x22, 8(%x15)  #1652 pc 40340
	sw	%x18, 4(%x15)  #1652 pc 40344
	addi	%x18, %x3, 0  #1679 pc 40348
	addi	%x3, %x3, 16  #1679 pc 40352
	addi	%x31, %x0, 19352  #1679 judge_intersection.2883 pc 40356
	addi	%x22, %x31, 0  #1679 pc 40360
	sw	%x22, 0(%x18)  #1679 pc 40364
	sw	%x15, 12(%x18)  #1679 pc 40368
	sw	%x29, 8(%x18)  #1679 pc 40372
	sw	%x7, 4(%x18)  #1679 pc 40376
	addi	%x15, %x3, 0  #1694 pc 40380
	addi	%x3, %x3, 40  #1694 pc 40384
	addi	%x31, %x0, 19500  #1694 solve_each_element_fast.2885 pc 40388
	addi	%x22, %x31, 0  #1694 pc 40392
	sw	%x22, 0(%x15)  #1694 pc 40396
	sw	%x29, 36(%x15)  #1694 pc 40400
	sw	%x25, 32(%x15)  #1694 pc 40404
	sw	%x24, 28(%x15)  #1694 pc 40408
	sw	%x17, 24(%x15)  #1694 pc 40412
	sw	%x16, 20(%x15)  #1694 pc 40416
	sw	%x27, 16(%x15)  #1694 pc 40420
	sw	%x28, 12(%x15)  #1694 pc 40424
	sw	%x20, 8(%x15)  #1694 pc 40428
	sw	%x12, 4(%x15)  #1694 pc 40432
	addi	%x12, %x3, 0  #1735 pc 40436
	addi	%x3, %x3, 12  #1735 pc 40440
	addi	%x31, %x0, 20176  #1735 solve_one_or_network_fast.2889 pc 40444
	addi	%x22, %x31, 0  #1735 pc 40448
	sw	%x22, 0(%x12)  #1735 pc 40452
	sw	%x15, 8(%x12)  #1735 pc 40456
	sw	%x19, 4(%x12)  #1735 pc 40460
	addi	%x15, %x3, 0  #1745 pc 40464
	addi	%x3, %x3, 20  #1745 pc 40468
	addi	%x31, %x0, 20320  #1745 trace_or_matrix_fast.2893 pc 40472
	addi	%x19, %x31, 0  #1745 pc 40476
	sw	%x19, 0(%x15)  #1745 pc 40480
	sw	%x29, 16(%x15)  #1745 pc 40484
	sw	%x24, 12(%x15)  #1745 pc 40488
	sw	%x17, 8(%x15)  #1745 pc 40492
	sw	%x12, 4(%x15)  #1745 pc 40496
	addi	%x12, %x3, 0  #1769 pc 40500
	addi	%x3, %x3, 16  #1769 pc 40504
	addi	%x31, %x0, 20656  #1769 judge_intersection_fast.2897 pc 40508
	addi	%x17, %x31, 0  #1769 pc 40512
	sw	%x17, 0(%x12)  #1769 pc 40516
	sw	%x15, 12(%x12)  #1769 pc 40520
	sw	%x29, 8(%x12)  #1769 pc 40524
	sw	%x7, 4(%x12)  #1769 pc 40528
	addi	%x15, %x3, 0  #1790 pc 40532
	addi	%x3, %x3, 12  #1790 pc 40536
	addi	%x31, %x0, 20804  #1790 get_nvector_rect.2899 pc 40540
	addi	%x17, %x31, 0  #1790 pc 40544
	sw	%x17, 0(%x15)  #1790 pc 40548
	lw	%x17, 60(%x2)  #1790 pc 40552
	sw	%x17, 8(%x15)  #1790 pc 40556
	sw	%x27, 4(%x15)  #1790 pc 40560
	addi	%x19, %x3, 0  #1798 pc 40564
	addi	%x3, %x3, 8  #1798 pc 40568
	addi	%x31, %x0, 20952  #1798 get_nvector_plane.2901 pc 40572
	addi	%x22, %x31, 0  #1798 pc 40576
	sw	%x22, 0(%x19)  #1798 pc 40580
	sw	%x17, 4(%x19)  #1798 pc 40584
	addi	%x22, %x3, 0  #1806 pc 40588
	addi	%x3, %x3, 12  #1806 pc 40592
	addi	%x31, %x0, 21132  #1806 get_nvector_second.2903 pc 40596
	addi	%x23, %x31, 0  #1806 pc 40600
	sw	%x23, 0(%x22)  #1806 pc 40604
	sw	%x17, 8(%x22)  #1806 pc 40608
	sw	%x28, 4(%x22)  #1806 pc 40612
	addi	%x23, %x3, 0  #1828 pc 40616
	addi	%x3, %x3, 16  #1828 pc 40620
	addi	%x31, %x0, 21860  #1828 get_nvector.2905 pc 40624
	addi	%x24, %x31, 0  #1828 pc 40628
	sw	%x24, 0(%x23)  #1828 pc 40632
	sw	%x22, 12(%x23)  #1828 pc 40636
	sw	%x15, 8(%x23)  #1828 pc 40640
	sw	%x19, 4(%x23)  #1828 pc 40644
	addi	%x15, %x3, 0  #1844 pc 40648
	addi	%x3, %x3, 8  #1844 pc 40652
	addi	%x31, %x0, 22004  #1844 utexture.2908 pc 40656
	addi	%x19, %x31, 0  #1844 pc 40660
	sw	%x19, 0(%x15)  #1844 pc 40664
	lw	%x19, 64(%x2)  #1844 pc 40668
	sw	%x19, 4(%x15)  #1844 pc 40672
	addi	%x22, %x3, 0  #1922 pc 40676
	addi	%x3, %x3, 12  #1922 pc 40680
	addi	%x31, %x0, 23812  #1922 add_light.2911 pc 40684
	addi	%x24, %x31, 0  #1922 pc 40688
	sw	%x24, 0(%x22)  #1922 pc 40692
	sw	%x19, 8(%x22)  #1922 pc 40696
	lw	%x24, 72(%x2)  #1922 pc 40700
	sw	%x24, 4(%x22)  #1922 pc 40704
	addi	%x25, %x3, 0  #1939 pc 40708
	addi	%x3, %x3, 36  #1939 pc 40712
	addi	%x31, %x0, 24056  #1939 trace_reflections.2915 pc 40716
	addi	%x10, %x31, 0  #1939 pc 40720
	sw	%x10, 0(%x25)  #1939 pc 40724
	sw	%x26, 32(%x25)  #1939 pc 40728
	lw	%x10, 136(%x2)  #1939 pc 40732
	sw	%x10, 28(%x25)  #1939 pc 40736
	sw	%x7, 24(%x25)  #1939 pc 40740
	sw	%x17, 20(%x25)  #1939 pc 40744
	sw	%x12, 16(%x25)  #1939 pc 40748
	sw	%x27, 12(%x25)  #1939 pc 40752
	sw	%x20, 8(%x25)  #1939 pc 40756
	sw	%x22, 4(%x25)  #1939 pc 40760
	addi	%x10, %x3, 0  #1968 pc 40764
	addi	%x3, %x3, 84  #1968 pc 40768
	addi	%x31, %x0, 24644  #1968 trace_ray.2920 pc 40772
	addi	%x9, %x31, 0  #1968 pc 40776
	sw	%x9, 0(%x10)  #1968 pc 40780
	sw	%x15, 80(%x10)  #1968 pc 40784
	sw	%x25, 76(%x10)  #1968 pc 40788
	sw	%x29, 72(%x10)  #1968 pc 40792
	sw	%x19, 68(%x10)  #1968 pc 40796
	sw	%x30, 64(%x10)  #1968 pc 40800
	sw	%x26, 60(%x10)  #1968 pc 40804
	sw	%x21, 56(%x10)  #1968 pc 40808
	sw	%x24, 52(%x10)  #1968 pc 40812
	sw	%x7, 48(%x10)  #1968 pc 40816
	sw	%x16, 44(%x10)  #1968 pc 40820
	sw	%x17, 40(%x10)  #1968 pc 40824
	sw	%x6, 36(%x10)  #1968 pc 40828
	sw	%x13, 32(%x10)  #1968 pc 40832
	sw	%x18, 28(%x10)  #1968 pc 40836
	sw	%x27, 24(%x10)  #1968 pc 40840
	sw	%x28, 20(%x10)  #1968 pc 40844
	sw	%x20, 16(%x10)  #1968 pc 40848
	sw	%x23, 12(%x10)  #1968 pc 40852
	sw	%x14, 8(%x10)  #1968 pc 40856
	sw	%x22, 4(%x10)  #1968 pc 40860
	addi	%x9, %x3, 0  #2061 pc 40864
	addi	%x3, %x3, 52  #2061 pc 40868
	addi	%x31, %x0, 26468  #2061 trace_diffuse_ray.2926 pc 40872
	addi	%x14, %x31, 0  #2061 pc 40876
	sw	%x14, 0(%x9)  #2061 pc 40880
	sw	%x15, 48(%x9)  #2061 pc 40884
	sw	%x19, 44(%x9)  #2061 pc 40888
	sw	%x26, 40(%x9)  #2061 pc 40892
	sw	%x7, 36(%x9)  #2061 pc 40896
	sw	%x16, 32(%x9)  #2061 pc 40900
	sw	%x17, 28(%x9)  #2061 pc 40904
	sw	%x13, 24(%x9)  #2061 pc 40908
	sw	%x12, 20(%x9)  #2061 pc 40912
	sw	%x28, 16(%x9)  #2061 pc 40916
	sw	%x20, 12(%x9)  #2061 pc 40920
	sw	%x23, 8(%x9)  #2061 pc 40924
	lw	%x7, 68(%x2)  #2061 pc 40928
	sw	%x7, 4(%x9)  #2061 pc 40932
	addi	%x12, %x3, 0  #2080 pc 40936
	addi	%x3, %x3, 8  #2080 pc 40940
	addi	%x31, %x0, 26964  #2080 iter_trace_diffuse_rays.2929 pc 40944
	addi	%x14, %x31, 0  #2080 pc 40948
	sw	%x14, 0(%x12)  #2080 pc 40952
	sw	%x9, 4(%x12)  #2080 pc 40956
	addi	%x9, %x3, 0  #2096 pc 40960
	addi	%x3, %x3, 12  #2096 pc 40964
	addi	%x31, %x0, 27284  #2096 trace_diffuse_rays.2934 pc 40968
	addi	%x14, %x31, 0  #2096 pc 40972
	sw	%x14, 0(%x9)  #2096 pc 40976
	sw	%x21, 8(%x9)  #2096 pc 40980
	sw	%x12, 4(%x9)  #2096 pc 40984
	addi	%x12, %x3, 0  #2106 pc 40988
	addi	%x3, %x3, 12  #2106 pc 40992
	addi	%x31, %x0, 27372  #2106 trace_diffuse_ray_80percent.2938 pc 40996
	addi	%x14, %x31, 0  #2106 pc 41000
	sw	%x14, 0(%x12)  #2106 pc 41004
	sw	%x9, 8(%x12)  #2106 pc 41008
	lw	%x14, 116(%x2)  #2106 pc 41012
	sw	%x14, 4(%x12)  #2106 pc 41016
	addi	%x15, %x3, 0  #2132 pc 41020
	addi	%x3, %x3, 16  #2132 pc 41024
	addi	%x31, %x0, 27768  #2132 calc_diffuse_using_1point.2942 pc 41028
	addi	%x17, %x31, 0  #2132 pc 41032
	sw	%x17, 0(%x15)  #2132 pc 41036
	sw	%x12, 12(%x15)  #2132 pc 41040
	sw	%x24, 8(%x15)  #2132 pc 41044
	sw	%x7, 4(%x15)  #2132 pc 41048
	addi	%x12, %x3, 0  #2151 pc 41052
	addi	%x3, %x3, 12  #2151 pc 41056
	addi	%x31, %x0, 28104  #2151 calc_diffuse_using_5points.2945 pc 41060
	addi	%x17, %x31, 0  #2151 pc 41064
	sw	%x17, 0(%x12)  #2151 pc 41068
	sw	%x24, 8(%x12)  #2151 pc 41072
	sw	%x7, 4(%x12)  #2151 pc 41076
	addi	%x17, %x3, 0  #2171 pc 41080
	addi	%x3, %x3, 8  #2171 pc 41084
	addi	%x31, %x0, 28692  #2171 do_without_neighbors.2951 pc 41088
	addi	%x18, %x31, 0  #2171 pc 41092
	sw	%x18, 0(%x17)  #2171 pc 41096
	sw	%x15, 4(%x17)  #2171 pc 41100
	addi	%x15, %x3, 0  #2186 pc 41104
	addi	%x3, %x3, 8  #2186 pc 41108
	addi	%x31, %x0, 28912  #2186 neighbors_exist.2954 pc 41112
	addi	%x18, %x31, 0  #2186 pc 41116
	sw	%x18, 0(%x15)  #2186 pc 41120
	lw	%x18, 76(%x2)  #2186 pc 41124
	sw	%x18, 4(%x15)  #2186 pc 41128
	addi	%x19, %x3, 0  #2223 pc 41132
	addi	%x3, %x3, 12  #2223 pc 41136
	addi	%x31, %x0, 29488  #2223 try_exploit_neighbors.2967 pc 41140
	addi	%x20, %x31, 0  #2223 pc 41144
	sw	%x20, 0(%x19)  #2223 pc 41148
	sw	%x17, 8(%x19)  #2223 pc 41152
	sw	%x12, 4(%x19)  #2223 pc 41156
	addi	%x12, %x3, 0  #2250 pc 41160
	addi	%x3, %x3, 8  #2250 pc 41164
	addi	%x31, %x0, 29860  #2250 write_ppm_header.2974 pc 41168
	addi	%x20, %x31, 0  #2250 pc 41172
	sw	%x20, 0(%x12)  #2250 pc 41176
	sw	%x18, 4(%x12)  #2250 pc 41180
	addi	%x20, %x3, 0  #2276 pc 41184
	addi	%x3, %x3, 8  #2276 pc 41188
	addi	%x31, %x0, 30256  #2276 write_rgb.2980 pc 41192
	addi	%x21, %x31, 0  #2276 pc 41196
	sw	%x21, 0(%x20)  #2276 pc 41200
	sw	%x24, 4(%x20)  #2276 pc 41204
	addi	%x21, %x3, 0  #2299 pc 41208
	addi	%x3, %x3, 16  #2299 pc 41212
	addi	%x31, %x0, 30492  #2299 pretrace_diffuse_rays.2982 pc 41216
	addi	%x22, %x31, 0  #2299 pc 41220
	sw	%x22, 0(%x21)  #2299 pc 41224
	sw	%x9, 12(%x21)  #2299 pc 41228
	sw	%x14, 8(%x21)  #2299 pc 41232
	sw	%x7, 4(%x21)  #2299 pc 41236
	addi	%x7, %x3, 0  #2329 pc 41240
	addi	%x3, %x3, 40  #2329 pc 41244
	addi	%x31, %x0, 30952  #2329 pretrace_pixels.2985 pc 41248
	addi	%x9, %x31, 0  #2329 pc 41252
	sw	%x9, 0(%x7)  #2329 pc 41256
	sw	%x8, 36(%x7)  #2329 pc 41260
	sw	%x10, 32(%x7)  #2329 pc 41264
	sw	%x30, 28(%x7)  #2329 pc 41268
	sw	%x11, 24(%x7)  #2329 pc 41272
	lw	%x8, 84(%x2)  #2329 pc 41276
	sw	%x8, 20(%x7)  #2329 pc 41280
	sw	%x24, 16(%x7)  #2329 pc 41284
	lw	%x9, 108(%x2)  #2329 pc 41288
	sw	%x9, 12(%x7)  #2329 pc 41292
	sw	%x21, 8(%x7)  #2329 pc 41296
	lw	%x9, 80(%x2)  #2329 pc 41300
	sw	%x9, 4(%x7)  #2329 pc 41304
	addi	%x10, %x3, 0  #2354 pc 41308
	addi	%x3, %x3, 28  #2354 pc 41312
	addi	%x31, %x0, 31600  #2354 pretrace_line.2992 pc 41316
	addi	%x11, %x31, 0  #2354 pc 41320
	sw	%x11, 0(%x10)  #2354 pc 41324
	lw	%x11, 104(%x2)  #2354 pc 41328
	sw	%x11, 24(%x10)  #2354 pc 41332
	lw	%x11, 100(%x2)  #2354 pc 41336
	sw	%x11, 20(%x10)  #2354 pc 41340
	sw	%x8, 16(%x10)  #2354 pc 41344
	sw	%x7, 12(%x10)  #2354 pc 41348
	sw	%x18, 8(%x10)  #2354 pc 41352
	sw	%x9, 4(%x10)  #2354 pc 41356
	addi	%x7, %x3, 0  #2370 pc 41360
	addi	%x3, %x3, 28  #2370 pc 41364
	addi	%x31, %x0, 31804  #2370 scan_pixel.2996 pc 41368
	addi	%x11, %x31, 0  #2370 pc 41372
	sw	%x11, 0(%x7)  #2370 pc 41376
	sw	%x20, 24(%x7)  #2370 pc 41380
	sw	%x19, 20(%x7)  #2370 pc 41384
	sw	%x24, 16(%x7)  #2370 pc 41388
	sw	%x15, 12(%x7)  #2370 pc 41392
	sw	%x18, 8(%x7)  #2370 pc 41396
	sw	%x17, 4(%x7)  #2370 pc 41400
	addi	%x11, %x3, 0  #2390 pc 41404
	addi	%x3, %x3, 16  #2390 pc 41408
	addi	%x31, %x0, 32212  #2390 scan_line.3003 pc 41412
	addi	%x15, %x31, 0  #2390 pc 41416
	sw	%x15, 0(%x11)  #2390 pc 41420
	sw	%x7, 12(%x11)  #2390 pc 41424
	sw	%x10, 8(%x11)  #2390 pc 41428
	sw	%x18, 4(%x11)  #2390 pc 41432
	addi	%x7, %x3, 0  #2442 pc 41436
	addi	%x3, %x3, 8  #2442 pc 41440
	addi	%x31, %x0, 33116  #2442 create_pixelline.3017 pc 41444
	addi	%x15, %x31, 0  #2442 pc 41448
	sw	%x15, 0(%x7)  #2442 pc 41452
	sw	%x18, 4(%x7)  #2442 pc 41456
	addi	%x15, %x3, 0  #2470 pc 41460
	addi	%x3, %x3, 8  #2470 pc 41464
	addi	%x31, %x0, 33372  #2470 calc_dirvec.3024 pc 41468
	addi	%x17, %x31, 0  #2470 pc 41472
	sw	%x17, 0(%x15)  #2470 pc 41476
	sw	%x14, 4(%x15)  #2470 pc 41480
	addi	%x17, %x3, 0  #2491 pc 41484
	addi	%x3, %x3, 8  #2491 pc 41488
	addi	%x31, %x0, 34420  #2491 calc_dirvecs.3032 pc 41492
	addi	%x19, %x31, 0  #2491 pc 41496
	sw	%x19, 0(%x17)  #2491 pc 41500
	sw	%x15, 4(%x17)  #2491 pc 41504
	addi	%x15, %x3, 0  #2505 pc 41508
	addi	%x3, %x3, 8  #2505 pc 41512
	addi	%x31, %x0, 34732  #2505 calc_dirvec_rows.3037 pc 41516
	addi	%x19, %x31, 0  #2505 pc 41520
	sw	%x19, 0(%x15)  #2505 pc 41524
	sw	%x17, 4(%x15)  #2505 pc 41528
	addi	%x17, %x3, 0  #2518 pc 41532
	addi	%x3, %x3, 8  #2518 pc 41536
	addi	%x31, %x0, 34928  #2518 create_dirvec.3041 pc 41540
	addi	%x19, %x31, 0  #2518 pc 41544
	sw	%x19, 0(%x17)  #2518 pc 41548
	lw	%x19, 0(%x2)  #2518 pc 41552
	sw	%x19, 4(%x17)  #2518 pc 41556
	addi	%x20, %x3, 0  #2524 pc 41560
	addi	%x3, %x3, 8  #2524 pc 41564
	addi	%x31, %x0, 35036  #2524 create_dirvec_elements.3043 pc 41568
	addi	%x21, %x31, 0  #2524 pc 41572
	sw	%x21, 0(%x20)  #2524 pc 41576
	sw	%x17, 4(%x20)  #2524 pc 41580
	addi	%x21, %x3, 0  #2531 pc 41584
	addi	%x3, %x3, 16  #2531 pc 41588
	addi	%x31, %x0, 35144  #2531 create_dirvecs.3046 pc 41592
	addi	%x22, %x31, 0  #2531 pc 41596
	sw	%x22, 0(%x21)  #2531 pc 41600
	sw	%x14, 12(%x21)  #2531 pc 41604
	sw	%x20, 8(%x21)  #2531 pc 41608
	sw	%x17, 4(%x21)  #2531 pc 41612
	addi	%x20, %x3, 0  #2543 pc 41616
	addi	%x3, %x3, 8  #2543 pc 41620
	addi	%x31, %x0, 35348  #2543 init_dirvec_constants.3048 pc 41624
	addi	%x22, %x31, 0  #2543 pc 41628
	sw	%x22, 0(%x20)  #2543 pc 41632
	lw	%x22, 144(%x2)  #2543 pc 41636
	sw	%x22, 4(%x20)  #2543 pc 41640
	addi	%x23, %x3, 0  #2550 pc 41644
	addi	%x3, %x3, 12  #2550 pc 41648
	addi	%x31, %x0, 35456  #2550 init_vecset_constants.3051 pc 41652
	addi	%x24, %x31, 0  #2550 pc 41656
	sw	%x24, 0(%x23)  #2550 pc 41660
	sw	%x20, 8(%x23)  #2550 pc 41664
	sw	%x14, 4(%x23)  #2550 pc 41668
	addi	%x14, %x3, 0  #2557 pc 41672
	addi	%x3, %x3, 16  #2557 pc 41676
	addi	%x31, %x0, 35568  #2557 init_dirvecs.3053 pc 41680
	addi	%x20, %x31, 0  #2557 pc 41684
	sw	%x20, 0(%x14)  #2557 pc 41688
	sw	%x23, 12(%x14)  #2557 pc 41692
	sw	%x21, 8(%x14)  #2557 pc 41696
	sw	%x15, 4(%x14)  #2557 pc 41700
	addi	%x15, %x3, 0  #2568 pc 41704
	addi	%x3, %x3, 16  #2568 pc 41708
	addi	%x31, %x0, 35684  #2568 add_reflection.3055 pc 41712
	addi	%x20, %x31, 0  #2568 pc 41716
	sw	%x20, 0(%x15)  #2568 pc 41720
	sw	%x22, 12(%x15)  #2568 pc 41724
	lw	%x20, 136(%x2)  #2568 pc 41728
	sw	%x20, 8(%x15)  #2568 pc 41732
	sw	%x17, 4(%x15)  #2568 pc 41736
	addi	%x17, %x3, 0  #2577 pc 41740
	addi	%x3, %x3, 16  #2577 pc 41744
	addi	%x31, %x0, 35900  #2577 setup_rect_reflection.3062 pc 41748
	addi	%x20, %x31, 0  #2577 pc 41752
	sw	%x20, 0(%x17)  #2577 pc 41756
	sw	%x6, 12(%x17)  #2577 pc 41760
	sw	%x13, 8(%x17)  #2577 pc 41764
	sw	%x15, 4(%x17)  #2577 pc 41768
	addi	%x20, %x3, 0  #2591 pc 41772
	addi	%x3, %x3, 16  #2591 pc 41776
	addi	%x31, %x0, 36360  #2591 setup_surface_reflection.3065 pc 41780
	addi	%x21, %x31, 0  #2591 pc 41784
	sw	%x21, 0(%x20)  #2591 pc 41788
	sw	%x6, 12(%x20)  #2591 pc 41792
	sw	%x13, 8(%x20)  #2591 pc 41796
	sw	%x15, 4(%x20)  #2591 pc 41800
	addi	%x6, %x3, 0  #2606 pc 41804
	addi	%x3, %x3, 16  #2606 pc 41808
	addi	%x31, %x0, 36808  #2606 setup_reflections.3068 pc 41812
	addi	%x15, %x31, 0  #2606 pc 41816
	sw	%x15, 0(%x6)  #2606 pc 41820
	sw	%x20, 12(%x6)  #2606 pc 41824
	sw	%x17, 8(%x6)  #2606 pc 41828
	sw	%x16, 4(%x6)  #2606 pc 41832
	addi	%x29, %x3, 0  #2628 pc 41836
	addi	%x3, %x3, 60  #2628 pc 41840
	addi	%x31, %x0, 37096  #2628 rt.3070 pc 41844
	addi	%x15, %x31, 0  #2628 pc 41848
	sw	%x15, 0(%x29)  #2628 pc 41852
	sw	%x12, 56(%x29)  #2628 pc 41856
	sw	%x6, 52(%x29)  #2628 pc 41860
	sw	%x22, 48(%x29)  #2628 pc 41864
	sw	%x8, 44(%x29)  #2628 pc 41868
	sw	%x11, 40(%x29)  #2628 pc 41872
	lw	%x6, 140(%x2)  #2628 pc 41876
	sw	%x6, 36(%x29)  #2628 pc 41880
	sw	%x10, 32(%x29)  #2628 pc 41884
	sw	%x19, 28(%x29)  #2628 pc 41888
	lw	%x6, 128(%x2)  #2628 pc 41892
	sw	%x6, 24(%x29)  #2628 pc 41896
	sw	%x13, 20(%x29)  #2628 pc 41900
	sw	%x14, 16(%x29)  #2628 pc 41904
	sw	%x18, 12(%x29)  #2628 pc 41908
	sw	%x9, 8(%x29)  #2628 pc 41912
	sw	%x7, 4(%x29)  #2628 pc 41916
	addi	%x6, %x0, 512  #0 pc 41920
	addi	%x8, %x0, 3  #0 pc 41924
	addi	%x7, %x6, 0  #0 pc 41928
	sw	%x1, 148(%x2)  #2649 pc 41932
	lw	%x30, 0(%x29)  #2649 pc 41936
	addi	%x2, %x2, 152  #2649 pc 41940
	jalr	%x1, %x30, 0  #2649 pc 41944
	addi	%x2, %x2, -152  #2649 pc 41948
	lw	%x1, 148(%x2)  #2649 pc 41952
