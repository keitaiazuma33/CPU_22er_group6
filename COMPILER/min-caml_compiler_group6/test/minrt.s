.section	".rodata"
.align	8
l.6924:	! 128.000000
l.6875:	! 0.900000
l.6764:	! 150.000000
l.6761:	! -150.000000
l.6742:	! 0.100000
l.6738:	! -2.000000
l.6735:	! 0.003906
l.6703:	! 20.000000
l.6701:	! 0.050000
l.6693:	! 0.250000
l.6684:	! 10.000000
l.6679:	! 0.300000
l.6677:	! 255.000000
l.6672:	! 0.150000
l.6665:	! 3.141593
l.6663:	! 30.000000
l.6661:	! 15.000000
l.6659:	! 0.000100
l.6610:	! 100000000.000000
l.6604:	! 1000000000.000000
l.6581:	! -0.100000
l.6567:	! 0.010000
l.6565:	! -0.200000
l.6346:	! 2.000000
l.6309:	! -200.000000
l.6306:	! 200.000000
l.6301:	! 0.017453
l.6213:	! -1.000000
l.6203:	! 0.090909
l.6201:	! 0.111111
l.6199:	! 0.142857
l.6197:	! 0.200000
l.6195:	! 0.333333
l.6193:	! 0.001389
l.6191:	! 0.041667
l.6188:	! 1.000000
l.6186:	! 0.000198
l.6184:	! 0.008333
l.6182:	! 0.166667
l.6180:	! 0.500000
l.6176:	! 0.000000
.section	".text"
fiszero.2479:  #pc 0
	fmv	%f1, l.6176  #0 pc 0
	feq	%f31, %f0, %f1  #1 pc 4
	bge	%f30, %f31, 12  #1 pc 8
	j	fbe_else.9033 #pc 12
	nop #pc 16
	addi	%x6, %x0, 1  #0 pc 20
	ret #pc 24
	nop #pc 28
fbe_else.9033: #pc 32
	addi	%x6, %x0, 0  #0 pc 32
	ret #pc 36
	nop #pc 40
fispos.2481:  #pc 44
	fmv	%f1, l.6176  #0 pc 44
	fle	%f31, %f0, %f1  #3 pc 48
	bge	%f30, %f31, 12  #3 pc 52
	j	fble_else.9034 #pc 56
	nop #pc 60
	addi	%x6, %x0, 0  #0 pc 64
	ret #pc 68
	nop #pc 72
fble_else.9034: #pc 76
	addi	%x6, %x0, 1  #0 pc 76
	ret #pc 80
	nop #pc 84
fisneg.2483:  #pc 88
	fmv	%f1, l.6176  #0 pc 88
	fle	%f31, %f1, %f0  #5 pc 92
	bge	%f30, %f31, 12  #5 pc 96
	j	fble_else.9035 #pc 100
	nop #pc 104
	addi	%x6, %x0, 0  #0 pc 108
	ret #pc 112
	nop #pc 116
fble_else.9035: #pc 120
	addi	%x6, %x0, 1  #0 pc 120
	ret #pc 124
	nop #pc 128
fneg.2485:  #pc 132
	fsub	%f0, %f30, %f0  #7 pc 132
	ret #pc 136
	nop #pc 140
fsqr.2487:  #pc 144
	fmul	%f0, %f0, %f0  #9 pc 144
	ret #pc 148
	nop #pc 152
fhalf.2489:  #pc 156
	fmv	%f1, l.6180  #0 pc 156
	fmul	%f0, %f1, %f0  #11 pc 160
	ret #pc 164
	nop #pc 168
fless.2491:  #pc 172
	fle	%f31, %f1, %f0  #13 pc 172
	bge	%f30, %f31, 12  #13 pc 176
	j	fble_else.9036 #pc 180
	nop #pc 184
	addi	%x6, %x0, 0  #0 pc 188
	ret #pc 192
	nop #pc 196
fble_else.9036: #pc 200
	addi	%x6, %x0, 1  #0 pc 200
	ret #pc 204
	nop #pc 208
sin.2494:  #pc 212
	fmul	%f1, %f0, %f0  #16 pc 212
	fmul	%f2, %f0, %f1  #17 pc 216
	fmul	%f3, %f2, %f1  #18 pc 220
	fmul	%f1, %f3, %f1  #19 pc 224
	fmv	%f4, l.6182  #0 pc 228
	fmul	%f2, %f4, %f2  #20 pc 232
	fsub	%f0, %f0, %f2  #20 pc 236
	fmv	%f2, l.6184  #0 pc 240
	fmul	%f2, %f2, %f3  #20 pc 244
	fadd	%f0, %f0, %f2  #20 pc 248
	fmv	%f2, l.6186  #0 pc 252
	fmul	%f1, %f2, %f1  #20 pc 256
	fsub	%f0, %f0, %f1  #20 pc 260
	ret #pc 264
	nop #pc 268
cos.2496:  #pc 272
	fmul	%f0, %f0, %f0  #24 pc 272
	fmul	%f1, %f0, %f0  #25 pc 276
	fmul	%f2, %f1, %f0  #26 pc 280
	fmv	%f3, l.6188  #0 pc 284
	fmv	%f4, l.6180  #0 pc 288
	fmul	%f0, %f4, %f0  #27 pc 292
	fsub	%f0, %f3, %f0  #27 pc 296
	fmv	%f3, l.6191  #0 pc 300
	fmul	%f1, %f3, %f1  #27 pc 304
	fadd	%f0, %f0, %f1  #27 pc 308
	fmv	%f1, l.6193  #0 pc 312
	fmul	%f1, %f1, %f2  #27 pc 316
	fsub	%f0, %f0, %f1  #27 pc 320
	ret #pc 324
	nop #pc 328
atan.2498:  #pc 332
	fmul	%f1, %f0, %f0  #31 pc 332
	fmul	%f2, %f0, %f1  #32 pc 336
	fmul	%f3, %f2, %f1  #33 pc 340
	fmul	%f4, %f3, %f1  #34 pc 344
	fmul	%f5, %f4, %f1  #35 pc 348
	fmul	%f1, %f5, %f1  #36 pc 352
	fmv	%f6, l.6195  #0 pc 356
	fmul	%f2, %f6, %f2  #37 pc 360
	fsub	%f0, %f0, %f2  #37 pc 364
	fmv	%f2, l.6197  #0 pc 368
	fmul	%f2, %f2, %f3  #37 pc 372
	fadd	%f0, %f0, %f2  #37 pc 376
	fmv	%f2, l.6199  #0 pc 380
	fmul	%f2, %f2, %f4  #37 pc 384
	fsub	%f0, %f0, %f2  #37 pc 388
	fmv	%f2, l.6201  #0 pc 392
	fmul	%f2, %f2, %f5  #37 pc 396
	fadd	%f0, %f0, %f2  #37 pc 400
	fmv	%f2, l.6203  #0 pc 404
	fmul	%f1, %f2, %f1  #37 pc 408
	fsub	%f0, %f0, %f1  #37 pc 412
	ret #pc 416
	nop #pc 420
floor.2500:  #pc 424
	fmv	%f1, l.6176  #0 pc 424
	fle	%f31, %f1, %f0  #41 pc 428
	bge	%f30, %f31, 12  #41 pc 432
	j	fble_else.9037 #pc 436
	nop #pc 440
	ftoi	%x6, %f0  #42 pc 444
	itof	%f0, %x6  #42 pc 448
	ret #pc 452
	nop #pc 456
fble_else.9037: #pc 460
	fmv	%f1, l.6188  #0 pc 460
	fsub	%f0, %f0, %f1  #44 pc 464
	ftoi	%x6, %f0  #44 pc 468
	itof	%f0, %x6  #44 pc 472
	ret #pc 476
	nop #pc 480
float_of_int.2504:  #pc 484
	itof	%f0, %x6  #50 pc 484
	ret #pc 488
	nop #pc 492
int_of_float.2506:  #pc 496
	ftoi	%x6, %f0  #53 pc 496
	ret #pc 500
	nop #pc 504
mul_abs.2508:  #pc 508
	addi	%x31, %x0, -1  #pc 508
	beq	%x8, %x31, 12  #57 pc 512
	j	be_else.9038 #pc 516
	nop #pc 520
	addi	%x6, %x9, 0  #58 pc 524
	ret #pc 528
	nop #pc 532
be_else.9038: #pc 536
	addi	%x10, %x0, 1  #0 pc 536
	sll	%x10, %x10, %x8  #60 pc 540
	and	%x10, %x7, %x10  #60 pc 544
	beq	%x10, %x0, 12  #60 pc 548
	j	be_else.9039 #pc 552
	nop #pc 556
	addi	%x8, %x8, -1  #61 pc 560
	j	mul_abs.2508  #61 pc 564
	nop #pc 568
be_else.9039: #pc 572
	addi	%x10, %x8, -1  #63 pc 572
	sll	%x8, %x6, %x8  #63 pc 576
	add	%x9, %x9, %x8  #63 pc 580
	addi	%x8, %x10, 0  #0 pc 584
	j	mul_abs.2508  #63 pc 588
	nop #pc 592
mul.2513:  #pc 596
	bge	%x6, %x0, 12  #67 pc 596
	j	bge_else.9040 #pc 600
	nop #pc 604
	addi	%x8, %x6, 0  #67 pc 608
	j	bge_cont.9041 #pc 612
	nop #pc 616
bge_else.9040: #pc 620
	sub	%x8, %x0, %x6  #67 pc 620
bge_cont.9041: #pc 624
	bge	%x7, %x0, 12  #68 pc 624
	j	bge_else.9042 #pc 628
	nop #pc 632
	addi	%x9, %x7, 0  #68 pc 636
	j	bge_cont.9043 #pc 640
	nop #pc 644
bge_else.9042: #pc 648
	sub	%x9, %x0, %x7  #68 pc 648
bge_cont.9043: #pc 652
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
	jal	%x1, mul_abs.2508  #69 pc 692
	addi	%x2, %x2, -12  #69 pc 696
	lw	%x1, 8(%x2) #69 pc 700
	lw	%x7, 4(%x2)  #70 pc 704
	srli	%x7, %x7, 31  #70 pc 708
	lw	%x8, 0(%x2)  #70 pc 712
	srli	%x8, %x8, 31  #70 pc 716
	beq	%x7, %x8, 12  #70 pc 720
	j	be_else.9044 #pc 724
	nop #pc 728
	ret #pc 732
	nop #pc 736
be_else.9044: #pc 740
	sub	%x6, %x0, %x6  #73 pc 740
	ret #pc 744
	nop #pc 748
div_abs.2516:  #pc 752
	addi	%x31, %x0, -1  #pc 752
	beq	%x8, %x31, 12  #77 pc 756
	j	be_else.9045 #pc 760
	nop #pc 764
	addi	%x6, %x9, 0  #78 pc 768
	ret #pc 772
	nop #pc 776
be_else.9045: #pc 780
	srl	%x10, %x6, %x8  #80 pc 780
	bge	%x10, %x7, 12  #80 pc 784
	j	ble_else.9046 #pc 788
	nop #pc 792
	sll	%x10, %x7, %x8  #81 pc 796
	sub	%x6, %x6, %x10  #81 pc 800
	addi	%x10, %x8, -1  #81 pc 804
	addi	%x11, %x0, 1  #0 pc 808
	sll	%x8, %x11, %x8  #81 pc 812
	add	%x9, %x9, %x8  #81 pc 816
	addi	%x8, %x10, 0  #0 pc 820
	j	div_abs.2516  #81 pc 824
	nop #pc 828
ble_else.9046: #pc 832
	addi	%x8, %x8, -1  #83 pc 832
	j	div_abs.2516  #83 pc 836
	nop #pc 840
div.2521:  #pc 844
	bge	%x6, %x0, 12  #87 pc 844
	j	bge_else.9047 #pc 848
	nop #pc 852
	addi	%x8, %x6, 0  #87 pc 856
	j	bge_cont.9048 #pc 860
	nop #pc 864
bge_else.9047: #pc 868
	sub	%x8, %x0, %x6  #87 pc 868
bge_cont.9048: #pc 872
	bge	%x7, %x0, 12  #88 pc 872
	j	bge_else.9049 #pc 876
	nop #pc 880
	addi	%x9, %x7, 0  #88 pc 884
	j	bge_cont.9050 #pc 888
	nop #pc 892
bge_else.9049: #pc 896
	sub	%x9, %x0, %x7  #88 pc 896
bge_cont.9050: #pc 900
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
	jal	%x1, div_abs.2516  #89 pc 940
	addi	%x2, %x2, -12  #89 pc 944
	lw	%x1, 8(%x2) #89 pc 948
	lw	%x7, 4(%x2)  #90 pc 952
	srli	%x7, %x7, 31  #90 pc 956
	lw	%x8, 0(%x2)  #90 pc 960
	srli	%x8, %x8, 31  #90 pc 964
	beq	%x7, %x8, 12  #90 pc 968
	j	be_else.9051 #pc 972
	nop #pc 976
	ret #pc 980
	nop #pc 984
be_else.9051: #pc 988
	sub	%x6, %x0, %x6  #93 pc 988
	ret #pc 992
	nop #pc 996
print_int.2524:  #pc 1000
	sw	%x5, 0(%x6)  #112 pc 1000
	addi	%x5, %x5, 4  #112 pc 1004
	ret #pc 1008
	nop #pc 1012
read_int.2526:  #pc 1016
	lw	%x6, 0(%x4)  #115 pc 1016
	addi	%x4, %x4, 4  #115 pc 1020
	ret #pc 1024
	nop #pc 1028
read_float.2528:  #pc 1032
	flw	%f0, 0(%x4)  #118 pc 1032
	addi	%x4, %x4, 4  #118 pc 1036
	ret #pc 1040
	nop #pc 1044
assign_array.2530:  #pc 1048
	bge	%x8, %x0, 12  #169 pc 1048
	j	bge_else.9053 #pc 1052
	nop #pc 1056
	beq	%x8, %x0, 12  #172 pc 1060
	j	be_else.9054 #pc 1064
	nop #pc 1068
	slli	%x8, %x8, 2  #173 pc 1072
	add	%x31, %x8, %x6  #173 pc 1076
	sw	%x7, 0(%x31)  #173 pc 1080
	ret #pc 1084
	nop #pc 1088
be_else.9054: #pc 1092
	slli	%x9, %x8, 2  #175 pc 1092
	add	%x31, %x9, %x6  #175 pc 1096
	sw	%x7, 0(%x31)  #175 pc 1100
	addi	%x8, %x8, -1  #176 pc 1104
	j	assign_array.2530  #176 pc 1108
	nop #pc 1112
bge_else.9053: #pc 1116
	ret #pc 1116
	nop #pc 1120
create_array.2534:  #pc 1124
	addi	%x8, %x3, 0  #180 pc 1124
	addi	%x9, %x8, 0  #181 pc 1128
	slli	%x10, %x6, 2  #182 pc 1132
	add	%x8, %x8, %x10  #182 pc 1136
	addi	%x3, %x8, 0  #182 pc 1140
	addi	%x8, %x6, -1  #183 pc 1144
	sw	%x9, 0(%x2)  #183 pc 1148
	addi	%x6, %x9, 0  #0 pc 1152
	sw	%x1, 4(%x2)  #183 pc 1156
	addi	%x2, %x2, 8  #183 pc 1160
	jal	%x1, assign_array.2530  #183 pc 1164
	addi	%x2, %x2, -8  #183 pc 1168
	lw	%x1, 4(%x2) #183 pc 1172
	lw	%x6, 0(%x2)  #184 pc 1176
	ret #pc 1180
	nop #pc 1184
assign_farray.2537:  #pc 1188
	bge	%x7, %x0, 12  #188 pc 1188
	j	bge_else.9057 #pc 1192
	nop #pc 1196
	beq	%x7, %x0, 12  #191 pc 1200
	j	be_else.9058 #pc 1204
	nop #pc 1208
	slli	%x7, %x7, 2  #192 pc 1212
	add	%x31, %x7, %x6  #192 pc 1216
	fsw	%f0, 0(%x31) #192 pc 1220
	ret #pc 1224
	nop #pc 1228
be_else.9058: #pc 1232
	slli	%x8, %x7, 2  #194 pc 1232
	add	%x31, %x8, %x6  #194 pc 1236
	fsw	%f0, 0(%x31) #194 pc 1240
	addi	%x7, %x7, -1  #195 pc 1244
	j	assign_farray.2537  #195 pc 1248
	nop #pc 1252
bge_else.9057: #pc 1256
	ret #pc 1256
	nop #pc 1260
create_float_array.2541:  #pc 1264
	addi	%x7, %x3, 0  #199 pc 1264
	addi	%x8, %x7, 0  #200 pc 1268
	slli	%x9, %x6, 2  #201 pc 1272
	add	%x7, %x7, %x9  #201 pc 1276
	addi	%x3, %x7, 0  #201 pc 1280
	addi	%x7, %x6, -1  #202 pc 1284
	sw	%x8, 0(%x2)  #202 pc 1288
	addi	%x6, %x8, 0  #0 pc 1292
	sw	%x1, 4(%x2)  #202 pc 1296
	addi	%x2, %x2, 8  #202 pc 1300
	jal	%x1, assign_farray.2537  #202 pc 1304
	addi	%x2, %x2, -8  #202 pc 1308
	lw	%x1, 4(%x2) #202 pc 1312
	lw	%x6, 0(%x2)  #203 pc 1316
	ret #pc 1320
	nop #pc 1324
xor.2574:  #pc 1328
	beq	%x6, %x0, 12  #341 pc 1328
	j	be_else.9061 #pc 1332
	nop #pc 1336
	addi	%x6, %x7, 0  #341 pc 1340
	ret #pc 1344
	nop #pc 1348
be_else.9061: #pc 1352
	beq	%x7, %x0, 12  #341 pc 1352
	j	be_else.9062 #pc 1356
	nop #pc 1360
	addi	%x6, %x0, 1  #0 pc 1364
	ret #pc 1368
	nop #pc 1372
be_else.9062: #pc 1376
	addi	%x6, %x0, 0  #0 pc 1376
	ret #pc 1380
	nop #pc 1384
sgn.2577:  #pc 1388
	fsw	%f0, 0(%x2)  #349 pc 1388
	sw	%x1, 8(%x2)  #349 pc 1392
	addi	%x2, %x2, 12  #349 pc 1396
	jal	%x1, fiszero.2479  #349 pc 1400
	addi	%x2, %x2, -12  #349 pc 1404
	lw	%x1, 8(%x2) #349 pc 1408
	beq	%x6, %x0, 12  #349 pc 1412
	j	be_else.9063 #pc 1416
	nop #pc 1420
	flw	%f0, 0(%x2)  #350 pc 1424
	sw	%x1, 8(%x2)  #350 pc 1428
	addi	%x2, %x2, 12  #350 pc 1432
	jal	%x1, fispos.2481  #350 pc 1436
	addi	%x2, %x2, -12  #350 pc 1440
	lw	%x1, 8(%x2) #350 pc 1444
	beq	%x6, %x0, 12  #350 pc 1448
	j	be_else.9064 #pc 1452
	nop #pc 1456
	addi	%x6, l.6213, 0  #0 pc 1460
	ret #pc 1464
	nop #pc 1468
be_else.9064: #pc 1472
	addi	%x6, l.6188, 0  #0 pc 1472
	ret #pc 1476
	nop #pc 1480
be_else.9063: #pc 1484
	addi	%x6, l.6176, 0  #0 pc 1484
	ret #pc 1488
	nop #pc 1492
fneg_cond.2579:  #pc 1496
	beq	%x6, %x0, 12  #356 pc 1496
	j	be_else.9065 #pc 1500
	nop #pc 1504
	j	fneg.2485  #356 pc 1508
	nop #pc 1512
be_else.9065: #pc 1516
	ret #pc 1516
	nop #pc 1520
add_mod5.2582:  #pc 1524
	add	%x6, %x6, %x7  #361 pc 1524
	addi	%x31, %x0, 5  #pc 1528
	bge	%x6, %x31, 12  #362 pc 1532
	j	bge_else.9066 #pc 1536
	nop #pc 1540
	addi	%x6, %x6, -5  #362 pc 1544
	ret #pc 1548
	nop #pc 1552
bge_else.9066: #pc 1556
	ret #pc 1556
	nop #pc 1560
vecset.2585:  #pc 1564
	fsw	%f0, 0(%x6)  #377 pc 1564
	fsw	%f1, 4(%x6)  #378 pc 1568
	fsw	%f2, 8(%x6)  #379 pc 1572
	ret #pc 1576
	nop #pc 1580
vecfill.2590:  #pc 1584
	fsw	%f0, 0(%x6)  #384 pc 1584
	fsw	%f0, 4(%x6)  #385 pc 1588
	fsw	%f0, 8(%x6)  #386 pc 1592
	ret #pc 1596
	nop #pc 1600
vecbzero.2593:  #pc 1604
	fmv	%f0, l.6176  #0 pc 1604
	j	vecfill.2590  #391 pc 1608
	nop #pc 1612
veccpy.2595:  #pc 1616
	flw	%f0, 0(%x7)  #396 pc 1616
	fsw	%f0, 0(%x6)  #396 pc 1620
	flw	%f0, 4(%x7)  #397 pc 1624
	fsw	%f0, 4(%x6)  #397 pc 1628
	flw	%f0, 8(%x7)  #398 pc 1632
	fsw	%f0, 8(%x6)  #398 pc 1636
	ret #pc 1640
	nop #pc 1644
vecunit_sgn.2598:  #pc 1648
	flw	%f0, 0(%x6)  #420 pc 1648
	sw	%x7, 0(%x2)  #420 pc 1652
	sw	%x6, 4(%x2)  #420 pc 1656
	sw	%x1, 8(%x2)  #420 pc 1660
	addi	%x2, %x2, 12  #420 pc 1664
	jal	%x1, fsqr.2487  #420 pc 1668
	addi	%x2, %x2, -12  #420 pc 1672
	lw	%x1, 8(%x2) #420 pc 1676
	lw	%x6, 4(%x2)  #420 pc 1680
	flw	%f1, 4(%x6)  #420 pc 1684
	fsw	%f0, 8(%x2)  #420 pc 1688
	fadd	%f0, %f1, %f30  #0 pc 1692
	sw	%x1, 16(%x2)  #420 pc 1696
	addi	%x2, %x2, 20  #420 pc 1700
	jal	%x1, fsqr.2487  #420 pc 1704
	addi	%x2, %x2, -20  #420 pc 1708
	lw	%x1, 16(%x2) #420 pc 1712
	flw	%f1, 8(%x2)  #420 pc 1716
	fadd	%f0, %f1, %f0  #420 pc 1720
	lw	%x6, 4(%x2)  #420 pc 1724
	flw	%f1, 8(%x6)  #420 pc 1728
	fsw	%f0, 16(%x2)  #420 pc 1732
	fadd	%f0, %f1, %f30  #0 pc 1736
	sw	%x1, 24(%x2)  #420 pc 1740
	addi	%x2, %x2, 28  #420 pc 1744
	jal	%x1, fsqr.2487  #420 pc 1748
	addi	%x2, %x2, -28  #420 pc 1752
	lw	%x1, 24(%x2) #420 pc 1756
	flw	%f1, 16(%x2)  #420 pc 1760
	fadd	%f0, %f1, %f0  #420 pc 1764
	fsqrt	%f0, %f0  #420 pc 1768
	fsw	%f0, 24(%x2)  #421 pc 1772
	sw	%x1, 32(%x2)  #421 pc 1776
	addi	%x2, %x2, 36  #421 pc 1780
	jal	%x1, fiszero.2479  #421 pc 1784
	addi	%x2, %x2, -36  #421 pc 1788
	lw	%x1, 32(%x2) #421 pc 1792
	beq	%x6, %x0, 12  #421 pc 1796
	j	be_else.9070 #pc 1800
	nop #pc 1804
	lw	%x6, 0(%x2)  #421 pc 1808
	beq	%x6, %x0, 12  #421 pc 1812
	j	be_else.9072 #pc 1816
	nop #pc 1820
	fmv	%f0, l.6188  #0 pc 1824
	flw	%f1, 24(%x2)  #421 pc 1828
	fdiv	%f0, %f0, %f1  #421 pc 1832
	j	be_cont.9073 #pc 1836
	nop #pc 1840
be_else.9072: #pc 1844
	fmv	%f0, l.6213  #0 pc 1844
	flw	%f1, 24(%x2)  #421 pc 1848
	fdiv	%f0, %f0, %f1  #421 pc 1852
be_cont.9073: #pc 1856
	j	be_cont.9071 #pc 1856
	nop #pc 1860
be_else.9070: #pc 1864
	fmv	%f0, l.6188  #0 pc 1864
be_cont.9071: #pc 1868
	lw	%x6, 4(%x2)  #422 pc 1868
	flw	%f1, 0(%x6)  #422 pc 1872
	fmul	%f1, %f1, %f0  #422 pc 1876
	fsw	%f1, 0(%x6)  #422 pc 1880
	flw	%f1, 4(%x6)  #423 pc 1884
	fmul	%f1, %f1, %f0  #423 pc 1888
	fsw	%f1, 4(%x6)  #423 pc 1892
	flw	%f1, 8(%x6)  #424 pc 1896
	fmul	%f0, %f1, %f0  #424 pc 1900
	fsw	%f0, 8(%x6)  #424 pc 1904
	ret #pc 1908
	nop #pc 1912
veciprod.2601:  #pc 1916
	flw	%f0, 0(%x6)  #429 pc 1916
	flw	%f1, 0(%x7)  #429 pc 1920
	fmul	%f0, %f0, %f1  #429 pc 1924
	flw	%f1, 4(%x6)  #429 pc 1928
	flw	%f2, 4(%x7)  #429 pc 1932
	fmul	%f1, %f1, %f2  #429 pc 1936
	fadd	%f0, %f0, %f1  #429 pc 1940
	flw	%f1, 8(%x6)  #429 pc 1944
	flw	%f2, 8(%x7)  #429 pc 1948
	fmul	%f1, %f1, %f2  #429 pc 1952
	fadd	%f0, %f0, %f1  #429 pc 1956
	ret #pc 1960
	nop #pc 1964
veciprod2.2604:  #pc 1968
	flw	%f3, 0(%x6)  #434 pc 1968
	fmul	%f0, %f3, %f0  #434 pc 1972
	flw	%f3, 4(%x6)  #434 pc 1976
	fmul	%f1, %f3, %f1  #434 pc 1980
	fadd	%f0, %f0, %f1  #434 pc 1984
	flw	%f1, 8(%x6)  #434 pc 1988
	fmul	%f1, %f1, %f2  #434 pc 1992
	fadd	%f0, %f0, %f1  #434 pc 1996
	ret #pc 2000
	nop #pc 2004
vecaccum.2609:  #pc 2008
	flw	%f1, 0(%x6)  #439 pc 2008
	flw	%f2, 0(%x7)  #439 pc 2012
	fmul	%f2, %f0, %f2  #439 pc 2016
	fadd	%f1, %f1, %f2  #439 pc 2020
	fsw	%f1, 0(%x6)  #439 pc 2024
	flw	%f1, 4(%x6)  #440 pc 2028
	flw	%f2, 4(%x7)  #440 pc 2032
	fmul	%f2, %f0, %f2  #440 pc 2036
	fadd	%f1, %f1, %f2  #440 pc 2040
	fsw	%f1, 4(%x6)  #440 pc 2044
	flw	%f1, 8(%x6)  #441 pc 2048
	flw	%f2, 8(%x7)  #441 pc 2052
	fmul	%f0, %f0, %f2  #441 pc 2056
	fadd	%f0, %f1, %f0  #441 pc 2060
	fsw	%f0, 8(%x6)  #441 pc 2064
	ret #pc 2068
	nop #pc 2072
vecadd.2613:  #pc 2076
	flw	%f0, 0(%x6)  #446 pc 2076
	flw	%f1, 0(%x7)  #446 pc 2080
	fadd	%f0, %f0, %f1  #446 pc 2084
	fsw	%f0, 0(%x6)  #446 pc 2088
	flw	%f0, 4(%x6)  #447 pc 2092
	flw	%f1, 4(%x7)  #447 pc 2096
	fadd	%f0, %f0, %f1  #447 pc 2100
	fsw	%f0, 4(%x6)  #447 pc 2104
	flw	%f0, 8(%x6)  #448 pc 2108
	flw	%f1, 8(%x7)  #448 pc 2112
	fadd	%f0, %f0, %f1  #448 pc 2116
	fsw	%f0, 8(%x6)  #448 pc 2120
	ret #pc 2124
	nop #pc 2128
vecscale.2616:  #pc 2132
	flw	%f1, 0(%x6)  #462 pc 2132
	fmul	%f1, %f1, %f0  #462 pc 2136
	fsw	%f1, 0(%x6)  #462 pc 2140
	flw	%f1, 4(%x6)  #463 pc 2144
	fmul	%f1, %f1, %f0  #463 pc 2148
	fsw	%f1, 4(%x6)  #463 pc 2152
	flw	%f1, 8(%x6)  #464 pc 2156
	fmul	%f0, %f1, %f0  #464 pc 2160
	fsw	%f0, 8(%x6)  #464 pc 2164
	ret #pc 2168
	nop #pc 2172
vecaccumv.2619:  #pc 2176
	flw	%f0, 0(%x6)  #469 pc 2176
	flw	%f1, 0(%x7)  #469 pc 2180
	flw	%f2, 0(%x8)  #469 pc 2184
	fmul	%f1, %f1, %f2  #469 pc 2188
	fadd	%f0, %f0, %f1  #469 pc 2192
	fsw	%f0, 0(%x6)  #469 pc 2196
	flw	%f0, 4(%x6)  #470 pc 2200
	flw	%f1, 4(%x7)  #470 pc 2204
	flw	%f2, 4(%x8)  #470 pc 2208
	fmul	%f1, %f1, %f2  #470 pc 2212
	fadd	%f0, %f0, %f1  #470 pc 2216
	fsw	%f0, 4(%x6)  #470 pc 2220
	flw	%f0, 8(%x6)  #471 pc 2224
	flw	%f1, 8(%x7)  #471 pc 2228
	flw	%f2, 8(%x8)  #471 pc 2232
	fmul	%f1, %f1, %f2  #471 pc 2236
	fadd	%f0, %f0, %f1  #471 pc 2240
	fsw	%f0, 8(%x6)  #471 pc 2244
	ret #pc 2248
	nop #pc 2252
o_texturetype.2623:  #pc 2256
	lw	%x6, 0(%x6)  #480 pc 2256
	ret #pc 2260
	nop #pc 2264
o_form.2625:  #pc 2268
	lw	%x6, 4(%x6)  #490 pc 2268
	ret #pc 2272
	nop #pc 2276
o_reflectiontype.2627:  #pc 2280
	lw	%x6, 8(%x6)  #500 pc 2280
	ret #pc 2284
	nop #pc 2288
o_isinvert.2629:  #pc 2292
	lw	%x6, 24(%x6)  #510 pc 2292
	ret #pc 2296
	nop #pc 2300
o_isrot.2631:  #pc 2304
	lw	%x6, 12(%x6)  #519 pc 2304
	ret #pc 2308
	nop #pc 2312
o_param_a.2633:  #pc 2316
	lw	%x6, 16(%x6)  #528 pc 2316
	flw	%f0, 0(%x6)  #533 pc 2320
	ret #pc 2324
	nop #pc 2328
o_param_b.2635:  #pc 2332
	lw	%x6, 16(%x6)  #538 pc 2332
	flw	%f0, 4(%x6)  #543 pc 2336
	ret #pc 2340
	nop #pc 2344
o_param_c.2637:  #pc 2348
	lw	%x6, 16(%x6)  #548 pc 2348
	flw	%f0, 8(%x6)  #553 pc 2352
	ret #pc 2356
	nop #pc 2360
o_param_abc.2639:  #pc 2364
	lw	%x6, 16(%x6)  #558 pc 2364
	ret #pc 2368
	nop #pc 2372
o_param_x.2641:  #pc 2376
	lw	%x6, 20(%x6)  #568 pc 2376
	flw	%f0, 0(%x6)  #573 pc 2380
	ret #pc 2384
	nop #pc 2388
o_param_y.2643:  #pc 2392
	lw	%x6, 20(%x6)  #578 pc 2392
	flw	%f0, 4(%x6)  #583 pc 2396
	ret #pc 2400
	nop #pc 2404
o_param_z.2645:  #pc 2408
	lw	%x6, 20(%x6)  #588 pc 2408
	flw	%f0, 8(%x6)  #593 pc 2412
	ret #pc 2416
	nop #pc 2420
o_diffuse.2647:  #pc 2424
	lw	%x6, 28(%x6)  #598 pc 2424
	flw	%f0, 0(%x6)  #603 pc 2428
	ret #pc 2432
	nop #pc 2436
o_hilight.2649:  #pc 2440
	lw	%x6, 28(%x6)  #608 pc 2440
	flw	%f0, 4(%x6)  #613 pc 2444
	ret #pc 2448
	nop #pc 2452
o_color_red.2651:  #pc 2456
	lw	%x6, 32(%x6)  #618 pc 2456
	flw	%f0, 0(%x6)  #623 pc 2460
	ret #pc 2464
	nop #pc 2468
o_color_green.2653:  #pc 2472
	lw	%x6, 32(%x6)  #628 pc 2472
	flw	%f0, 4(%x6)  #633 pc 2476
	ret #pc 2480
	nop #pc 2484
o_color_blue.2655:  #pc 2488
	lw	%x6, 32(%x6)  #638 pc 2488
	flw	%f0, 8(%x6)  #643 pc 2492
	ret #pc 2496
	nop #pc 2500
o_param_r1.2657:  #pc 2504
	lw	%x6, 36(%x6)  #648 pc 2504
	flw	%f0, 0(%x6)  #653 pc 2508
	ret #pc 2512
	nop #pc 2516
o_param_r2.2659:  #pc 2520
	lw	%x6, 36(%x6)  #658 pc 2520
	flw	%f0, 4(%x6)  #663 pc 2524
	ret #pc 2528
	nop #pc 2532
o_param_r3.2661:  #pc 2536
	lw	%x6, 36(%x6)  #668 pc 2536
	flw	%f0, 8(%x6)  #673 pc 2540
	ret #pc 2544
	nop #pc 2548
o_param_ctbl.2663:  #pc 2552
	lw	%x6, 40(%x6)  #685 pc 2552
	ret #pc 2556
	nop #pc 2560
p_rgb.2665:  #pc 2564
	lw	%x6, 0(%x6)  #699 pc 2564
	ret #pc 2568
	nop #pc 2572
p_intersection_points.2667:  #pc 2576
	lw	%x6, 4(%x6)  #706 pc 2576
	ret #pc 2580
	nop #pc 2584
p_surface_ids.2669:  #pc 2588
	lw	%x6, 8(%x6)  #714 pc 2588
	ret #pc 2592
	nop #pc 2596
p_calc_diffuse.2671:  #pc 2600
	lw	%x6, 12(%x6)  #721 pc 2600
	ret #pc 2604
	nop #pc 2608
p_energy.2673:  #pc 2612
	lw	%x6, 16(%x6)  #728 pc 2612
	ret #pc 2616
	nop #pc 2620
p_received_ray_20percent.2675:  #pc 2624
	lw	%x6, 20(%x6)  #735 pc 2624
	ret #pc 2628
	nop #pc 2632
p_group_id.2677:  #pc 2636
	lw	%x6, 24(%x6)  #751 pc 2636
	lw	%x6, 0(%x6)  #753 pc 2640
	ret #pc 2644
	nop #pc 2648
p_set_group_id.2679:  #pc 2652
	lw	%x6, 24(%x6)  #758 pc 2652
	sw	%x7, 0(%x6)  #760 pc 2656
	ret #pc 2660
	nop #pc 2664
p_nvectors.2682:  #pc 2668
	lw	%x6, 28(%x6)  #765 pc 2668
	ret #pc 2672
	nop #pc 2676
d_vec.2684:  #pc 2680
	lw	%x6, 0(%x6)  #776 pc 2680
	ret #pc 2684
	nop #pc 2688
d_const.2686:  #pc 2692
	lw	%x6, 4(%x6)  #782 pc 2692
	ret #pc 2696
	nop #pc 2700
r_surface_id.2688:  #pc 2704
	lw	%x6, 0(%x6)  #792 pc 2704
	ret #pc 2708
	nop #pc 2712
r_dvec.2690:  #pc 2716
	lw	%x6, 4(%x6)  #798 pc 2716
	ret #pc 2720
	nop #pc 2724
r_bright.2692:  #pc 2728
	flw	%f0, 8(%x6)  #804 pc 2728
	ret #pc 2732
	nop #pc 2736
rad.2694:  #pc 2740
	fmv	%f1, l.6301  #0 pc 2740
	fmul	%f0, %f0, %f1  #814 pc 2744
	ret #pc 2748
	nop #pc 2752
read_screen_settings.2696:  #pc 2756
	lw	%x6, 20(%x29)  #0 pc 2756
	lw	%x7, 16(%x29)  #0 pc 2760
	lw	%x8, 12(%x29)  #0 pc 2764
	lw	%x9, 8(%x29)  #0 pc 2768
	lw	%x10, 4(%x29)  #0 pc 2772
	sw	%x6, 0(%x2)  #821 pc 2776
	sw	%x8, 4(%x2)  #821 pc 2780
	sw	%x9, 8(%x2)  #821 pc 2784
	sw	%x7, 12(%x2)  #821 pc 2788
	sw	%x10, 16(%x2)  #821 pc 2792
	sw	%x1, 20(%x2)  #821 pc 2796
	addi	%x2, %x2, 24  #821 pc 2800
	jal	%x1, read_float.2528  #821 pc 2804
	addi	%x2, %x2, -24  #821 pc 2808
	lw	%x1, 20(%x2) #821 pc 2812
	lw	%x6, 16(%x2)  #821 pc 2816
	fsw	%f0, 0(%x6)  #821 pc 2820
	sw	%x1, 20(%x2)  #822 pc 2824
	addi	%x2, %x2, 24  #822 pc 2828
	jal	%x1, read_float.2528  #822 pc 2832
	addi	%x2, %x2, -24  #822 pc 2836
	lw	%x1, 20(%x2) #822 pc 2840
	lw	%x6, 16(%x2)  #822 pc 2844
	fsw	%f0, 4(%x6)  #822 pc 2848
	sw	%x1, 20(%x2)  #823 pc 2852
	addi	%x2, %x2, 24  #823 pc 2856
	jal	%x1, read_float.2528  #823 pc 2860
	addi	%x2, %x2, -24  #823 pc 2864
	lw	%x1, 20(%x2) #823 pc 2868
	lw	%x6, 16(%x2)  #823 pc 2872
	fsw	%f0, 8(%x6)  #823 pc 2876
	sw	%x1, 20(%x2)  #825 pc 2880
	addi	%x2, %x2, 24  #825 pc 2884
	jal	%x1, read_float.2528  #825 pc 2888
	addi	%x2, %x2, -24  #825 pc 2892
	lw	%x1, 20(%x2) #825 pc 2896
	sw	%x1, 20(%x2)  #825 pc 2900
	addi	%x2, %x2, 24  #825 pc 2904
	jal	%x1, rad.2694  #825 pc 2908
	addi	%x2, %x2, -24  #825 pc 2912
	lw	%x1, 20(%x2) #825 pc 2916
	fsw	%f0, 24(%x2)  #826 pc 2920
	sw	%x1, 32(%x2)  #826 pc 2924
	addi	%x2, %x2, 36  #826 pc 2928
	jal	%x1, cos.2496  #826 pc 2932
	addi	%x2, %x2, -36  #826 pc 2936
	lw	%x1, 32(%x2) #826 pc 2940
	flw	%f1, 24(%x2)  #827 pc 2944
	fsw	%f0, 32(%x2)  #827 pc 2948
	fadd	%f0, %f1, %f30  #0 pc 2952
	sw	%x1, 40(%x2)  #827 pc 2956
	addi	%x2, %x2, 44  #827 pc 2960
	jal	%x1, sin.2494  #827 pc 2964
	addi	%x2, %x2, -44  #827 pc 2968
	lw	%x1, 40(%x2) #827 pc 2972
	fsw	%f0, 40(%x2)  #828 pc 2976
	sw	%x1, 48(%x2)  #828 pc 2980
	addi	%x2, %x2, 52  #828 pc 2984
	jal	%x1, read_float.2528  #828 pc 2988
	addi	%x2, %x2, -52  #828 pc 2992
	lw	%x1, 48(%x2) #828 pc 2996
	sw	%x1, 48(%x2)  #828 pc 3000
	addi	%x2, %x2, 52  #828 pc 3004
	jal	%x1, rad.2694  #828 pc 3008
	addi	%x2, %x2, -52  #828 pc 3012
	lw	%x1, 48(%x2) #828 pc 3016
	fsw	%f0, 48(%x2)  #829 pc 3020
	sw	%x1, 56(%x2)  #829 pc 3024
	addi	%x2, %x2, 60  #829 pc 3028
	jal	%x1, cos.2496  #829 pc 3032
	addi	%x2, %x2, -60  #829 pc 3036
	lw	%x1, 56(%x2) #829 pc 3040
	flw	%f1, 48(%x2)  #830 pc 3044
	fsw	%f0, 56(%x2)  #830 pc 3048
	fadd	%f0, %f1, %f30  #0 pc 3052
	sw	%x1, 64(%x2)  #830 pc 3056
	addi	%x2, %x2, 68  #830 pc 3060
	jal	%x1, sin.2494  #830 pc 3064
	addi	%x2, %x2, -68  #830 pc 3068
	lw	%x1, 64(%x2) #830 pc 3072
	flw	%f1, 32(%x2)  #832 pc 3076
	fmul	%f2, %f1, %f0  #832 pc 3080
	fmv	%f3, l.6306  #0 pc 3084
	fmul	%f2, %f2, %f3  #832 pc 3088
	lw	%x6, 12(%x2)  #832 pc 3092
	fsw	%f2, 0(%x6)  #832 pc 3096
	fmv	%f2, l.6309  #0 pc 3100
	flw	%f3, 40(%x2)  #833 pc 3104
	fmul	%f2, %f3, %f2  #833 pc 3108
	fsw	%f2, 4(%x6)  #833 pc 3112
	flw	%f2, 56(%x2)  #834 pc 3116
	fmul	%f4, %f1, %f2  #834 pc 3120
	fmv	%f5, l.6306  #0 pc 3124
	fmul	%f4, %f4, %f5  #834 pc 3128
	fsw	%f4, 8(%x6)  #834 pc 3132
	lw	%x7, 8(%x2)  #836 pc 3136
	fsw	%f2, 0(%x7)  #836 pc 3140
	fmv	%f4, l.6176  #0 pc 3144
	fsw	%f4, 4(%x7)  #837 pc 3148
	fsw	%f0, 64(%x2)  #838 pc 3152
	sw	%x1, 72(%x2)  #838 pc 3156
	addi	%x2, %x2, 76  #838 pc 3160
	jal	%x1, fneg.2485  #838 pc 3164
	addi	%x2, %x2, -76  #838 pc 3168
	lw	%x1, 72(%x2) #838 pc 3172
	lw	%x6, 8(%x2)  #838 pc 3176
	fsw	%f0, 8(%x6)  #838 pc 3180
	flw	%f0, 40(%x2)  #840 pc 3184
	sw	%x1, 72(%x2)  #840 pc 3188
	addi	%x2, %x2, 76  #840 pc 3192
	jal	%x1, fneg.2485  #840 pc 3196
	addi	%x2, %x2, -76  #840 pc 3200
	lw	%x1, 72(%x2) #840 pc 3204
	flw	%f1, 64(%x2)  #840 pc 3208
	fmul	%f0, %f0, %f1  #840 pc 3212
	lw	%x6, 4(%x2)  #840 pc 3216
	fsw	%f0, 0(%x6)  #840 pc 3220
	flw	%f0, 32(%x2)  #841 pc 3224
	sw	%x1, 72(%x2)  #841 pc 3228
	addi	%x2, %x2, 76  #841 pc 3232
	jal	%x1, fneg.2485  #841 pc 3236
	addi	%x2, %x2, -76  #841 pc 3240
	lw	%x1, 72(%x2) #841 pc 3244
	lw	%x6, 4(%x2)  #841 pc 3248
	fsw	%f0, 4(%x6)  #841 pc 3252
	flw	%f0, 40(%x2)  #842 pc 3256
	sw	%x1, 72(%x2)  #842 pc 3260
	addi	%x2, %x2, 76  #842 pc 3264
	jal	%x1, fneg.2485  #842 pc 3268
	addi	%x2, %x2, -76  #842 pc 3272
	lw	%x1, 72(%x2) #842 pc 3276
	flw	%f1, 56(%x2)  #842 pc 3280
	fmul	%f0, %f0, %f1  #842 pc 3284
	lw	%x6, 4(%x2)  #842 pc 3288
	fsw	%f0, 8(%x6)  #842 pc 3292
	lw	%x6, 16(%x2)  #844 pc 3296
	flw	%f0, 0(%x6)  #844 pc 3300
	lw	%x7, 12(%x2)  #844 pc 3304
	flw	%f1, 0(%x7)  #844 pc 3308
	fsub	%f0, %f0, %f1  #844 pc 3312
	lw	%x8, 0(%x2)  #844 pc 3316
	fsw	%f0, 0(%x8)  #844 pc 3320
	flw	%f0, 4(%x6)  #845 pc 3324
	flw	%f1, 4(%x7)  #845 pc 3328
	fsub	%f0, %f0, %f1  #845 pc 3332
	fsw	%f0, 4(%x8)  #845 pc 3336
	flw	%f0, 8(%x6)  #846 pc 3340
	flw	%f1, 8(%x7)  #846 pc 3344
	fsub	%f0, %f0, %f1  #846 pc 3348
	fsw	%f0, 8(%x8)  #846 pc 3352
	ret #pc 3356
	nop #pc 3360
read_light.2698:  #pc 3364
	lw	%x6, 8(%x29)  #0 pc 3364
	lw	%x7, 4(%x29)  #0 pc 3368
	sw	%x7, 0(%x2)  #853 pc 3372
	sw	%x6, 4(%x2)  #853 pc 3376
	sw	%x1, 8(%x2)  #853 pc 3380
	addi	%x2, %x2, 12  #853 pc 3384
	jal	%x1, read_int.2526  #853 pc 3388
	addi	%x2, %x2, -12  #853 pc 3392
	lw	%x1, 8(%x2) #853 pc 3396
	sw	%x1, 8(%x2)  #856 pc 3400
	addi	%x2, %x2, 12  #856 pc 3404
	jal	%x1, read_float.2528  #856 pc 3408
	addi	%x2, %x2, -12  #856 pc 3412
	lw	%x1, 8(%x2) #856 pc 3416
	sw	%x1, 8(%x2)  #856 pc 3420
	addi	%x2, %x2, 12  #856 pc 3424
	jal	%x1, rad.2694  #856 pc 3428
	addi	%x2, %x2, -12  #856 pc 3432
	lw	%x1, 8(%x2) #856 pc 3436
	fsw	%f0, 8(%x2)  #857 pc 3440
	sw	%x1, 16(%x2)  #857 pc 3444
	addi	%x2, %x2, 20  #857 pc 3448
	jal	%x1, sin.2494  #857 pc 3452
	addi	%x2, %x2, -20  #857 pc 3456
	lw	%x1, 16(%x2) #857 pc 3460
	sw	%x1, 16(%x2)  #858 pc 3464
	addi	%x2, %x2, 20  #858 pc 3468
	jal	%x1, fneg.2485  #858 pc 3472
	addi	%x2, %x2, -20  #858 pc 3476
	lw	%x1, 16(%x2) #858 pc 3480
	lw	%x6, 4(%x2)  #858 pc 3484
	fsw	%f0, 4(%x6)  #858 pc 3488
	sw	%x1, 16(%x2)  #859 pc 3492
	addi	%x2, %x2, 20  #859 pc 3496
	jal	%x1, read_float.2528  #859 pc 3500
	addi	%x2, %x2, -20  #859 pc 3504
	lw	%x1, 16(%x2) #859 pc 3508
	sw	%x1, 16(%x2)  #859 pc 3512
	addi	%x2, %x2, 20  #859 pc 3516
	jal	%x1, rad.2694  #859 pc 3520
	addi	%x2, %x2, -20  #859 pc 3524
	lw	%x1, 16(%x2) #859 pc 3528
	flw	%f1, 8(%x2)  #860 pc 3532
	fsw	%f0, 16(%x2)  #860 pc 3536
	fadd	%f0, %f1, %f30  #0 pc 3540
	sw	%x1, 24(%x2)  #860 pc 3544
	addi	%x2, %x2, 28  #860 pc 3548
	jal	%x1, cos.2496  #860 pc 3552
	addi	%x2, %x2, -28  #860 pc 3556
	lw	%x1, 24(%x2) #860 pc 3560
	flw	%f1, 16(%x2)  #861 pc 3564
	fsw	%f0, 24(%x2)  #861 pc 3568
	fadd	%f0, %f1, %f30  #0 pc 3572
	sw	%x1, 32(%x2)  #861 pc 3576
	addi	%x2, %x2, 36  #861 pc 3580
	jal	%x1, sin.2494  #861 pc 3584
	addi	%x2, %x2, -36  #861 pc 3588
	lw	%x1, 32(%x2) #861 pc 3592
	flw	%f1, 24(%x2)  #862 pc 3596
	fmul	%f0, %f1, %f0  #862 pc 3600
	lw	%x6, 4(%x2)  #862 pc 3604
	fsw	%f0, 0(%x6)  #862 pc 3608
	flw	%f0, 16(%x2)  #863 pc 3612
	sw	%x1, 32(%x2)  #863 pc 3616
	addi	%x2, %x2, 36  #863 pc 3620
	jal	%x1, cos.2496  #863 pc 3624
	addi	%x2, %x2, -36  #863 pc 3628
	lw	%x1, 32(%x2) #863 pc 3632
	flw	%f1, 24(%x2)  #864 pc 3636
	fmul	%f0, %f1, %f0  #864 pc 3640
	lw	%x6, 4(%x2)  #864 pc 3644
	fsw	%f0, 8(%x6)  #864 pc 3648
	sw	%x1, 32(%x2)  #865 pc 3652
	addi	%x2, %x2, 36  #865 pc 3656
	jal	%x1, read_float.2528  #865 pc 3660
	addi	%x2, %x2, -36  #865 pc 3664
	lw	%x1, 32(%x2) #865 pc 3668
	lw	%x6, 0(%x2)  #865 pc 3672
	fsw	%f0, 0(%x6)  #865 pc 3676
	ret #pc 3680
	nop #pc 3684
rotate_quadratic_matrix.2700:  #pc 3688
	flw	%f0, 0(%x7)  #875 pc 3688
	sw	%x6, 0(%x2)  #875 pc 3692
	sw	%x7, 4(%x2)  #875 pc 3696
	sw	%x1, 8(%x2)  #875 pc 3700
	addi	%x2, %x2, 12  #875 pc 3704
	jal	%x1, cos.2496  #875 pc 3708
	addi	%x2, %x2, -12  #875 pc 3712
	lw	%x1, 8(%x2) #875 pc 3716
	lw	%x6, 4(%x2)  #876 pc 3720
	flw	%f1, 0(%x6)  #876 pc 3724
	fsw	%f0, 8(%x2)  #876 pc 3728
	fadd	%f0, %f1, %f30  #0 pc 3732
	sw	%x1, 16(%x2)  #876 pc 3736
	addi	%x2, %x2, 20  #876 pc 3740
	jal	%x1, sin.2494  #876 pc 3744
	addi	%x2, %x2, -20  #876 pc 3748
	lw	%x1, 16(%x2) #876 pc 3752
	lw	%x6, 4(%x2)  #877 pc 3756
	flw	%f1, 4(%x6)  #877 pc 3760
	fsw	%f0, 16(%x2)  #877 pc 3764
	fadd	%f0, %f1, %f30  #0 pc 3768
	sw	%x1, 24(%x2)  #877 pc 3772
	addi	%x2, %x2, 28  #877 pc 3776
	jal	%x1, cos.2496  #877 pc 3780
	addi	%x2, %x2, -28  #877 pc 3784
	lw	%x1, 24(%x2) #877 pc 3788
	lw	%x6, 4(%x2)  #878 pc 3792
	flw	%f1, 4(%x6)  #878 pc 3796
	fsw	%f0, 24(%x2)  #878 pc 3800
	fadd	%f0, %f1, %f30  #0 pc 3804
	sw	%x1, 32(%x2)  #878 pc 3808
	addi	%x2, %x2, 36  #878 pc 3812
	jal	%x1, sin.2494  #878 pc 3816
	addi	%x2, %x2, -36  #878 pc 3820
	lw	%x1, 32(%x2) #878 pc 3824
	lw	%x6, 4(%x2)  #879 pc 3828
	flw	%f1, 8(%x6)  #879 pc 3832
	fsw	%f0, 32(%x2)  #879 pc 3836
	fadd	%f0, %f1, %f30  #0 pc 3840
	sw	%x1, 40(%x2)  #879 pc 3844
	addi	%x2, %x2, 44  #879 pc 3848
	jal	%x1, cos.2496  #879 pc 3852
	addi	%x2, %x2, -44  #879 pc 3856
	lw	%x1, 40(%x2) #879 pc 3860
	lw	%x6, 4(%x2)  #880 pc 3864
	flw	%f1, 8(%x6)  #880 pc 3868
	fsw	%f0, 40(%x2)  #880 pc 3872
	fadd	%f0, %f1, %f30  #0 pc 3876
	sw	%x1, 48(%x2)  #880 pc 3880
	addi	%x2, %x2, 52  #880 pc 3884
	jal	%x1, sin.2494  #880 pc 3888
	addi	%x2, %x2, -52  #880 pc 3892
	lw	%x1, 48(%x2) #880 pc 3896
	flw	%f1, 40(%x2)  #882 pc 3900
	flw	%f2, 24(%x2)  #882 pc 3904
	fmul	%f3, %f2, %f1  #882 pc 3908
	flw	%f4, 32(%x2)  #883 pc 3912
	flw	%f5, 16(%x2)  #883 pc 3916
	fmul	%f6, %f5, %f4  #883 pc 3920
	fmul	%f6, %f6, %f1  #883 pc 3924
	flw	%f7, 8(%x2)  #883 pc 3928
	fmul	%f8, %f7, %f0  #883 pc 3932
	fsub	%f6, %f6, %f8  #883 pc 3936
	fmul	%f8, %f7, %f4  #884 pc 3940
	fmul	%f8, %f8, %f1  #884 pc 3944
	fmul	%f9, %f5, %f0  #884 pc 3948
	fadd	%f8, %f8, %f9  #884 pc 3952
	fmul	%f9, %f2, %f0  #886 pc 3956
	fmul	%f10, %f5, %f4  #887 pc 3960
	fmul	%f10, %f10, %f0  #887 pc 3964
	fmul	%f11, %f7, %f1  #887 pc 3968
	fadd	%f10, %f10, %f11  #887 pc 3972
	fmul	%f11, %f7, %f4  #888 pc 3976
	fmul	%f0, %f11, %f0  #888 pc 3980
	fmul	%f1, %f5, %f1  #888 pc 3984
	fsub	%f0, %f0, %f1  #888 pc 3988
	fsw	%f0, 48(%x2)  #890 pc 3992
	fsw	%f8, 56(%x2)  #890 pc 3996
	fsw	%f10, 64(%x2)  #890 pc 4000
	fsw	%f6, 72(%x2)  #890 pc 4004
	fsw	%f9, 80(%x2)  #890 pc 4008
	fsw	%f3, 88(%x2)  #890 pc 4012
	fadd	%f0, %f4, %f30  #0 pc 4016
	sw	%x1, 96(%x2)  #890 pc 4020
	addi	%x2, %x2, 100  #890 pc 4024
	jal	%x1, fneg.2485  #890 pc 4028
	addi	%x2, %x2, -100  #890 pc 4032
	lw	%x1, 96(%x2) #890 pc 4036
	flw	%f1, 24(%x2)  #891 pc 4040
	flw	%f2, 16(%x2)  #891 pc 4044
	fmul	%f2, %f2, %f1  #891 pc 4048
	flw	%f3, 8(%x2)  #892 pc 4052
	fmul	%f1, %f3, %f1  #892 pc 4056
	lw	%x6, 0(%x2)  #895 pc 4060
	flw	%f3, 0(%x6)  #895 pc 4064
	flw	%f4, 4(%x6)  #896 pc 4068
	flw	%f5, 8(%x6)  #897 pc 4072
	flw	%f6, 88(%x2)  #902 pc 4076
	fsw	%f1, 96(%x2)  #902 pc 4080
	fsw	%f2, 104(%x2)  #902 pc 4084
	fsw	%f5, 112(%x2)  #902 pc 4088
	fsw	%f0, 120(%x2)  #902 pc 4092
	fsw	%f4, 128(%x2)  #902 pc 4096
	fsw	%f3, 136(%x2)  #902 pc 4100
	fadd	%f0, %f6, %f30  #0 pc 4104
	sw	%x1, 144(%x2)  #902 pc 4108
	addi	%x2, %x2, 148  #902 pc 4112
	jal	%x1, fsqr.2487  #902 pc 4116
	addi	%x2, %x2, -148  #902 pc 4120
	lw	%x1, 144(%x2) #902 pc 4124
	flw	%f1, 136(%x2)  #902 pc 4128
	fmul	%f0, %f1, %f0  #902 pc 4132
	flw	%f2, 80(%x2)  #902 pc 4136
	fsw	%f0, 144(%x2)  #902 pc 4140
	fadd	%f0, %f2, %f30  #0 pc 4144
	sw	%x1, 152(%x2)  #902 pc 4148
	addi	%x2, %x2, 156  #902 pc 4152
	jal	%x1, fsqr.2487  #902 pc 4156
	addi	%x2, %x2, -156  #902 pc 4160
	lw	%x1, 152(%x2) #902 pc 4164
	flw	%f1, 128(%x2)  #902 pc 4168
	fmul	%f0, %f1, %f0  #902 pc 4172
	flw	%f2, 144(%x2)  #902 pc 4176
	fadd	%f0, %f2, %f0  #902 pc 4180
	flw	%f2, 120(%x2)  #902 pc 4184
	fsw	%f0, 152(%x2)  #902 pc 4188
	fadd	%f0, %f2, %f30  #0 pc 4192
	sw	%x1, 160(%x2)  #902 pc 4196
	addi	%x2, %x2, 164  #902 pc 4200
	jal	%x1, fsqr.2487  #902 pc 4204
	addi	%x2, %x2, -164  #902 pc 4208
	lw	%x1, 160(%x2) #902 pc 4212
	flw	%f1, 112(%x2)  #902 pc 4216
	fmul	%f0, %f1, %f0  #902 pc 4220
	flw	%f2, 152(%x2)  #902 pc 4224
	fadd	%f0, %f2, %f0  #902 pc 4228
	lw	%x6, 0(%x2)  #902 pc 4232
	fsw	%f0, 0(%x6)  #902 pc 4236
	flw	%f0, 72(%x2)  #903 pc 4240
	sw	%x1, 160(%x2)  #903 pc 4244
	addi	%x2, %x2, 164  #903 pc 4248
	jal	%x1, fsqr.2487  #903 pc 4252
	addi	%x2, %x2, -164  #903 pc 4256
	lw	%x1, 160(%x2) #903 pc 4260
	flw	%f1, 136(%x2)  #903 pc 4264
	fmul	%f0, %f1, %f0  #903 pc 4268
	flw	%f2, 64(%x2)  #903 pc 4272
	fsw	%f0, 160(%x2)  #903 pc 4276
	fadd	%f0, %f2, %f30  #0 pc 4280
	sw	%x1, 168(%x2)  #903 pc 4284
	addi	%x2, %x2, 172  #903 pc 4288
	jal	%x1, fsqr.2487  #903 pc 4292
	addi	%x2, %x2, -172  #903 pc 4296
	lw	%x1, 168(%x2) #903 pc 4300
	flw	%f1, 128(%x2)  #903 pc 4304
	fmul	%f0, %f1, %f0  #903 pc 4308
	flw	%f2, 160(%x2)  #903 pc 4312
	fadd	%f0, %f2, %f0  #903 pc 4316
	flw	%f2, 104(%x2)  #903 pc 4320
	fsw	%f0, 168(%x2)  #903 pc 4324
	fadd	%f0, %f2, %f30  #0 pc 4328
	sw	%x1, 176(%x2)  #903 pc 4332
	addi	%x2, %x2, 180  #903 pc 4336
	jal	%x1, fsqr.2487  #903 pc 4340
	addi	%x2, %x2, -180  #903 pc 4344
	lw	%x1, 176(%x2) #903 pc 4348
	flw	%f1, 112(%x2)  #903 pc 4352
	fmul	%f0, %f1, %f0  #903 pc 4356
	flw	%f2, 168(%x2)  #903 pc 4360
	fadd	%f0, %f2, %f0  #903 pc 4364
	lw	%x6, 0(%x2)  #903 pc 4368
	fsw	%f0, 4(%x6)  #903 pc 4372
	flw	%f0, 56(%x2)  #904 pc 4376
	sw	%x1, 176(%x2)  #904 pc 4380
	addi	%x2, %x2, 180  #904 pc 4384
	jal	%x1, fsqr.2487  #904 pc 4388
	addi	%x2, %x2, -180  #904 pc 4392
	lw	%x1, 176(%x2) #904 pc 4396
	flw	%f1, 136(%x2)  #904 pc 4400
	fmul	%f0, %f1, %f0  #904 pc 4404
	flw	%f2, 48(%x2)  #904 pc 4408
	fsw	%f0, 176(%x2)  #904 pc 4412
	fadd	%f0, %f2, %f30  #0 pc 4416
	sw	%x1, 184(%x2)  #904 pc 4420
	addi	%x2, %x2, 188  #904 pc 4424
	jal	%x1, fsqr.2487  #904 pc 4428
	addi	%x2, %x2, -188  #904 pc 4432
	lw	%x1, 184(%x2) #904 pc 4436
	flw	%f1, 128(%x2)  #904 pc 4440
	fmul	%f0, %f1, %f0  #904 pc 4444
	flw	%f2, 176(%x2)  #904 pc 4448
	fadd	%f0, %f2, %f0  #904 pc 4452
	flw	%f2, 96(%x2)  #904 pc 4456
	fsw	%f0, 184(%x2)  #904 pc 4460
	fadd	%f0, %f2, %f30  #0 pc 4464
	sw	%x1, 192(%x2)  #904 pc 4468
	addi	%x2, %x2, 196  #904 pc 4472
	jal	%x1, fsqr.2487  #904 pc 4476
	addi	%x2, %x2, -196  #904 pc 4480
	lw	%x1, 192(%x2) #904 pc 4484
	flw	%f1, 112(%x2)  #904 pc 4488
	fmul	%f0, %f1, %f0  #904 pc 4492
	flw	%f2, 184(%x2)  #904 pc 4496
	fadd	%f0, %f2, %f0  #904 pc 4500
	lw	%x6, 0(%x2)  #904 pc 4504
	fsw	%f0, 8(%x6)  #904 pc 4508
	fmv	%f0, l.6346  #0 pc 4512
	flw	%f2, 72(%x2)  #907 pc 4516
	flw	%f3, 136(%x2)  #907 pc 4520
	fmul	%f4, %f3, %f2  #907 pc 4524
	flw	%f5, 56(%x2)  #907 pc 4528
	fmul	%f4, %f4, %f5  #907 pc 4532
	flw	%f6, 64(%x2)  #907 pc 4536
	flw	%f7, 128(%x2)  #907 pc 4540
	fmul	%f8, %f7, %f6  #907 pc 4544
	flw	%f9, 48(%x2)  #907 pc 4548
	fmul	%f8, %f8, %f9  #907 pc 4552
	fadd	%f4, %f4, %f8  #907 pc 4556
	flw	%f8, 104(%x2)  #907 pc 4560
	fmul	%f10, %f1, %f8  #907 pc 4564
	flw	%f11, 96(%x2)  #907 pc 4568
	fmul	%f10, %f10, %f11  #907 pc 4572
	fadd	%f4, %f4, %f10  #907 pc 4576
	fmul	%f0, %f0, %f4  #907 pc 4580
	lw	%x6, 4(%x2)  #907 pc 4584
	fsw	%f0, 0(%x6)  #907 pc 4588
	fmv	%f0, l.6346  #0 pc 4592
	flw	%f4, 88(%x2)  #908 pc 4596
	fmul	%f10, %f3, %f4  #908 pc 4600
	fmul	%f5, %f10, %f5  #908 pc 4604
	flw	%f10, 80(%x2)  #908 pc 4608
	fmul	%f12, %f7, %f10  #908 pc 4612
	fmul	%f9, %f12, %f9  #908 pc 4616
	fadd	%f5, %f5, %f9  #908 pc 4620
	flw	%f9, 120(%x2)  #908 pc 4624
	fmul	%f12, %f1, %f9  #908 pc 4628
	fmul	%f11, %f12, %f11  #908 pc 4632
	fadd	%f5, %f5, %f11  #908 pc 4636
	fmul	%f0, %f0, %f5  #908 pc 4640
	fsw	%f0, 4(%x6)  #908 pc 4644
	fmv	%f0, l.6346  #0 pc 4648
	fmul	%f3, %f3, %f4  #909 pc 4652
	fmul	%f2, %f3, %f2  #909 pc 4656
	fmul	%f3, %f7, %f10  #909 pc 4660
	fmul	%f3, %f3, %f6  #909 pc 4664
	fadd	%f2, %f2, %f3  #909 pc 4668
	fmul	%f1, %f1, %f9  #909 pc 4672
	fmul	%f1, %f1, %f8  #909 pc 4676
	fadd	%f1, %f2, %f1  #909 pc 4680
	fmul	%f0, %f0, %f1  #909 pc 4684
	fsw	%f0, 8(%x6)  #909 pc 4688
	ret #pc 4692
	nop #pc 4696
read_nth_object.2703:  #pc 4700
	lw	%x7, 4(%x29)  #0 pc 4700
	sw	%x7, 0(%x2)  #916 pc 4704
	sw	%x6, 4(%x2)  #916 pc 4708
	sw	%x1, 8(%x2)  #916 pc 4712
	addi	%x2, %x2, 12  #916 pc 4716
	jal	%x1, read_int.2526  #916 pc 4720
	addi	%x2, %x2, -12  #916 pc 4724
	lw	%x1, 8(%x2) #916 pc 4728
	addi	%x31, %x0, -1  #pc 4732
	beq	%x6, %x31, 12  #917 pc 4736
	j	be_else.9084 #pc 4740
	nop #pc 4744
	addi	%x6, %x0, 0  #0 pc 4748
	ret #pc 4752
	nop #pc 4756
be_else.9084: #pc 4760
	sw	%x6, 8(%x2)  #919 pc 4760
	sw	%x1, 12(%x2)  #919 pc 4764
	addi	%x2, %x2, 16  #919 pc 4768
	jal	%x1, read_int.2526  #919 pc 4772
	addi	%x2, %x2, -16  #919 pc 4776
	lw	%x1, 12(%x2) #919 pc 4780
	sw	%x6, 12(%x2)  #920 pc 4784
	sw	%x1, 16(%x2)  #920 pc 4788
	addi	%x2, %x2, 20  #920 pc 4792
	jal	%x1, read_int.2526  #920 pc 4796
	addi	%x2, %x2, -20  #920 pc 4800
	lw	%x1, 16(%x2) #920 pc 4804
	sw	%x6, 16(%x2)  #921 pc 4808
	sw	%x1, 20(%x2)  #921 pc 4812
	addi	%x2, %x2, 24  #921 pc 4816
	jal	%x1, read_int.2526  #921 pc 4820
	addi	%x2, %x2, -24  #921 pc 4824
	lw	%x1, 20(%x2) #921 pc 4828
	addi	%x7, %x0, 3  #0 pc 4832
	fmv	%f0, l.6176  #0 pc 4836
	sw	%x6, 20(%x2)  #923 pc 4840
	addi	%x6, %x7, 0  #0 pc 4844
	sw	%x1, 24(%x2)  #923 pc 4848
	addi	%x2, %x2, 28  #923 pc 4852
	jal	%x1, create_float_array.2541  #923 pc 4856
	addi	%x2, %x2, -28  #923 pc 4860
	lw	%x1, 24(%x2) #923 pc 4864
	sw	%x6, 24(%x2)  #924 pc 4868
	sw	%x1, 28(%x2)  #924 pc 4872
	addi	%x2, %x2, 32  #924 pc 4876
	jal	%x1, read_float.2528  #924 pc 4880
	addi	%x2, %x2, -32  #924 pc 4884
	lw	%x1, 28(%x2) #924 pc 4888
	lw	%x6, 24(%x2)  #924 pc 4892
	fsw	%f0, 0(%x6)  #924 pc 4896
	sw	%x1, 28(%x2)  #925 pc 4900
	addi	%x2, %x2, 32  #925 pc 4904
	jal	%x1, read_float.2528  #925 pc 4908
	addi	%x2, %x2, -32  #925 pc 4912
	lw	%x1, 28(%x2) #925 pc 4916
	lw	%x6, 24(%x2)  #925 pc 4920
	fsw	%f0, 4(%x6)  #925 pc 4924
	sw	%x1, 28(%x2)  #926 pc 4928
	addi	%x2, %x2, 32  #926 pc 4932
	jal	%x1, read_float.2528  #926 pc 4936
	addi	%x2, %x2, -32  #926 pc 4940
	lw	%x1, 28(%x2) #926 pc 4944
	lw	%x6, 24(%x2)  #926 pc 4948
	fsw	%f0, 8(%x6)  #926 pc 4952
	addi	%x7, %x0, 3  #0 pc 4956
	fmv	%f0, l.6176  #0 pc 4960
	addi	%x6, %x7, 0  #0 pc 4964
	sw	%x1, 28(%x2)  #928 pc 4968
	addi	%x2, %x2, 32  #928 pc 4972
	jal	%x1, create_float_array.2541  #928 pc 4976
	addi	%x2, %x2, -32  #928 pc 4980
	lw	%x1, 28(%x2) #928 pc 4984
	sw	%x6, 28(%x2)  #929 pc 4988
	sw	%x1, 32(%x2)  #929 pc 4992
	addi	%x2, %x2, 36  #929 pc 4996
	jal	%x1, read_float.2528  #929 pc 5000
	addi	%x2, %x2, -36  #929 pc 5004
	lw	%x1, 32(%x2) #929 pc 5008
	lw	%x6, 28(%x2)  #929 pc 5012
	fsw	%f0, 0(%x6)  #929 pc 5016
	sw	%x1, 32(%x2)  #930 pc 5020
	addi	%x2, %x2, 36  #930 pc 5024
	jal	%x1, read_float.2528  #930 pc 5028
	addi	%x2, %x2, -36  #930 pc 5032
	lw	%x1, 32(%x2) #930 pc 5036
	lw	%x6, 28(%x2)  #930 pc 5040
	fsw	%f0, 4(%x6)  #930 pc 5044
	sw	%x1, 32(%x2)  #931 pc 5048
	addi	%x2, %x2, 36  #931 pc 5052
	jal	%x1, read_float.2528  #931 pc 5056
	addi	%x2, %x2, -36  #931 pc 5060
	lw	%x1, 32(%x2) #931 pc 5064
	lw	%x6, 28(%x2)  #931 pc 5068
	fsw	%f0, 8(%x6)  #931 pc 5072
	sw	%x1, 32(%x2)  #933 pc 5076
	addi	%x2, %x2, 36  #933 pc 5080
	jal	%x1, read_float.2528  #933 pc 5084
	addi	%x2, %x2, -36  #933 pc 5088
	lw	%x1, 32(%x2) #933 pc 5092
	sw	%x1, 32(%x2)  #933 pc 5096
	addi	%x2, %x2, 36  #933 pc 5100
	jal	%x1, fisneg.2483  #933 pc 5104
	addi	%x2, %x2, -36  #933 pc 5108
	lw	%x1, 32(%x2) #933 pc 5112
	addi	%x7, %x0, 2  #0 pc 5116
	fmv	%f0, l.6176  #0 pc 5120
	sw	%x6, 32(%x2)  #935 pc 5124
	addi	%x6, %x7, 0  #0 pc 5128
	sw	%x1, 36(%x2)  #935 pc 5132
	addi	%x2, %x2, 40  #935 pc 5136
	jal	%x1, create_float_array.2541  #935 pc 5140
	addi	%x2, %x2, -40  #935 pc 5144
	lw	%x1, 36(%x2) #935 pc 5148
	sw	%x6, 36(%x2)  #936 pc 5152
	sw	%x1, 40(%x2)  #936 pc 5156
	addi	%x2, %x2, 44  #936 pc 5160
	jal	%x1, read_float.2528  #936 pc 5164
	addi	%x2, %x2, -44  #936 pc 5168
	lw	%x1, 40(%x2) #936 pc 5172
	lw	%x6, 36(%x2)  #936 pc 5176
	fsw	%f0, 0(%x6)  #936 pc 5180
	sw	%x1, 40(%x2)  #937 pc 5184
	addi	%x2, %x2, 44  #937 pc 5188
	jal	%x1, read_float.2528  #937 pc 5192
	addi	%x2, %x2, -44  #937 pc 5196
	lw	%x1, 40(%x2) #937 pc 5200
	lw	%x6, 36(%x2)  #937 pc 5204
	fsw	%f0, 4(%x6)  #937 pc 5208
	addi	%x7, %x0, 3  #0 pc 5212
	fmv	%f0, l.6176  #0 pc 5216
	addi	%x6, %x7, 0  #0 pc 5220
	sw	%x1, 40(%x2)  #939 pc 5224
	addi	%x2, %x2, 44  #939 pc 5228
	jal	%x1, create_float_array.2541  #939 pc 5232
	addi	%x2, %x2, -44  #939 pc 5236
	lw	%x1, 40(%x2) #939 pc 5240
	sw	%x6, 40(%x2)  #940 pc 5244
	sw	%x1, 44(%x2)  #940 pc 5248
	addi	%x2, %x2, 48  #940 pc 5252
	jal	%x1, read_float.2528  #940 pc 5256
	addi	%x2, %x2, -48  #940 pc 5260
	lw	%x1, 44(%x2) #940 pc 5264
	lw	%x6, 40(%x2)  #940 pc 5268
	fsw	%f0, 0(%x6)  #940 pc 5272
	sw	%x1, 44(%x2)  #941 pc 5276
	addi	%x2, %x2, 48  #941 pc 5280
	jal	%x1, read_float.2528  #941 pc 5284
	addi	%x2, %x2, -48  #941 pc 5288
	lw	%x1, 44(%x2) #941 pc 5292
	lw	%x6, 40(%x2)  #941 pc 5296
	fsw	%f0, 4(%x6)  #941 pc 5300
	sw	%x1, 44(%x2)  #942 pc 5304
	addi	%x2, %x2, 48  #942 pc 5308
	jal	%x1, read_float.2528  #942 pc 5312
	addi	%x2, %x2, -48  #942 pc 5316
	lw	%x1, 44(%x2) #942 pc 5320
	lw	%x6, 40(%x2)  #942 pc 5324
	fsw	%f0, 8(%x6)  #942 pc 5328
	addi	%x7, %x0, 3  #0 pc 5332
	fmv	%f0, l.6176  #0 pc 5336
	addi	%x6, %x7, 0  #0 pc 5340
	sw	%x1, 44(%x2)  #944 pc 5344
	addi	%x2, %x2, 48  #944 pc 5348
	jal	%x1, create_float_array.2541  #944 pc 5352
	addi	%x2, %x2, -48  #944 pc 5356
	lw	%x1, 44(%x2) #944 pc 5360
	lw	%x7, 20(%x2)  #945 pc 5364
	beq	%x7, %x0, 12  #945 pc 5368
	j	be_else.9085 #pc 5372
	nop #pc 5376
	j	be_cont.9086 #pc 5380
	nop #pc 5384
be_else.9085: #pc 5388
	sw	%x6, 44(%x2)  #947 pc 5388
	sw	%x1, 48(%x2)  #947 pc 5392
	addi	%x2, %x2, 52  #947 pc 5396
	jal	%x1, read_float.2528  #947 pc 5400
	addi	%x2, %x2, -52  #947 pc 5404
	lw	%x1, 48(%x2) #947 pc 5408
	sw	%x1, 48(%x2)  #947 pc 5412
	addi	%x2, %x2, 52  #947 pc 5416
	jal	%x1, rad.2694  #947 pc 5420
	addi	%x2, %x2, -52  #947 pc 5424
	lw	%x1, 48(%x2) #947 pc 5428
	lw	%x6, 44(%x2)  #947 pc 5432
	fsw	%f0, 0(%x6)  #947 pc 5436
	sw	%x1, 48(%x2)  #948 pc 5440
	addi	%x2, %x2, 52  #948 pc 5444
	jal	%x1, read_float.2528  #948 pc 5448
	addi	%x2, %x2, -52  #948 pc 5452
	lw	%x1, 48(%x2) #948 pc 5456
	sw	%x1, 48(%x2)  #948 pc 5460
	addi	%x2, %x2, 52  #948 pc 5464
	jal	%x1, rad.2694  #948 pc 5468
	addi	%x2, %x2, -52  #948 pc 5472
	lw	%x1, 48(%x2) #948 pc 5476
	lw	%x6, 44(%x2)  #948 pc 5480
	fsw	%f0, 4(%x6)  #948 pc 5484
	sw	%x1, 48(%x2)  #949 pc 5488
	addi	%x2, %x2, 52  #949 pc 5492
	jal	%x1, read_float.2528  #949 pc 5496
	addi	%x2, %x2, -52  #949 pc 5500
	lw	%x1, 48(%x2) #949 pc 5504
	sw	%x1, 48(%x2)  #949 pc 5508
	addi	%x2, %x2, 52  #949 pc 5512
	jal	%x1, rad.2694  #949 pc 5516
	addi	%x2, %x2, -52  #949 pc 5520
	lw	%x1, 48(%x2) #949 pc 5524
	lw	%x6, 44(%x2)  #949 pc 5528
	fsw	%f0, 8(%x6)  #949 pc 5532
be_cont.9086: #pc 5536
	lw	%x7, 12(%x2)  #956 pc 5536
	addi	%x31, %x0, 2  #pc 5540
	beq	%x7, %x31, 12  #956 pc 5544
	j	be_else.9087 #pc 5548
	nop #pc 5552
	addi	%x8, %x0, 1  #0 pc 5556
	j	be_cont.9088 #pc 5560
	nop #pc 5564
be_else.9087: #pc 5568
	lw	%x8, 32(%x2)  #956 pc 5568
be_cont.9088: #pc 5572
	addi	%x9, %x0, 4  #0 pc 5572
	fmv	%f0, l.6176  #0 pc 5576
	sw	%x8, 48(%x2)  #957 pc 5580
	sw	%x6, 44(%x2)  #957 pc 5584
	addi	%x6, %x9, 0  #0 pc 5588
	sw	%x1, 52(%x2)  #957 pc 5592
	addi	%x2, %x2, 56  #957 pc 5596
	jal	%x1, create_float_array.2541  #957 pc 5600
	addi	%x2, %x2, -56  #957 pc 5604
	lw	%x1, 52(%x2) #957 pc 5608
	addi	%x7, %x3, 0  #960 pc 5612
	addi	%x3, %x3, 44  #960 pc 5616
	sw	%x6, 40(%x7)  #960 pc 5620
	lw	%x6, 44(%x2)  #960 pc 5624
	sw	%x6, 36(%x7)  #960 pc 5628
	lw	%x8, 40(%x2)  #960 pc 5632
	sw	%x8, 32(%x7)  #960 pc 5636
	lw	%x8, 36(%x2)  #960 pc 5640
	sw	%x8, 28(%x7)  #960 pc 5644
	lw	%x8, 48(%x2)  #960 pc 5648
	sw	%x8, 24(%x7)  #960 pc 5652
	lw	%x8, 28(%x2)  #960 pc 5656
	sw	%x8, 20(%x7)  #960 pc 5660
	lw	%x8, 24(%x2)  #960 pc 5664
	sw	%x8, 16(%x7)  #960 pc 5668
	lw	%x9, 20(%x2)  #960 pc 5672
	sw	%x9, 12(%x7)  #960 pc 5676
	lw	%x10, 16(%x2)  #960 pc 5680
	sw	%x10, 8(%x7)  #960 pc 5684
	lw	%x10, 12(%x2)  #960 pc 5688
	sw	%x10, 4(%x7)  #960 pc 5692
	lw	%x11, 8(%x2)  #960 pc 5696
	sw	%x11, 0(%x7)  #960 pc 5700
	lw	%x11, 4(%x2)  #968 pc 5704
	slli	%x11, %x11, 2  #968 pc 5708
	lw	%x12, 0(%x2)  #968 pc 5712
	add	%x31, %x11, %x12  #968 pc 5716
	sw	%x7, 0(%x31)  #968 pc 5720
	addi	%x31, %x0, 3  #pc 5724
	beq	%x10, %x31, 12  #970 pc 5728
	j	be_else.9089 #pc 5732
	nop #pc 5736
	flw	%f0, 0(%x8)  #973 pc 5740
	fsw	%f0, 56(%x2)  #974 pc 5744
	sw	%x1, 64(%x2)  #974 pc 5748
	addi	%x2, %x2, 68  #974 pc 5752
	jal	%x1, fiszero.2479  #974 pc 5756
	addi	%x2, %x2, -68  #974 pc 5760
	lw	%x1, 64(%x2) #974 pc 5764
	beq	%x6, %x0, 12  #974 pc 5768
	j	be_else.9092 #pc 5772
	nop #pc 5776
	flw	%f0, 56(%x2)  #974 pc 5780
	sw	%x1, 64(%x2)  #974 pc 5784
	addi	%x2, %x2, 68  #974 pc 5788
	jal	%x1, sgn.2577  #974 pc 5792
	addi	%x2, %x2, -68  #974 pc 5796
	lw	%x1, 64(%x2) #974 pc 5800
	flw	%f1, 56(%x2)  #974 pc 5804
	fsw	%f0, 64(%x2)  #974 pc 5808
	fadd	%f0, %f1, %f30  #0 pc 5812
	sw	%x1, 72(%x2)  #974 pc 5816
	addi	%x2, %x2, 76  #974 pc 5820
	jal	%x1, fsqr.2487  #974 pc 5824
	addi	%x2, %x2, -76  #974 pc 5828
	lw	%x1, 72(%x2) #974 pc 5832
	flw	%f1, 64(%x2)  #974 pc 5836
	fdiv	%f0, %f1, %f0  #974 pc 5840
	j	be_cont.9093 #pc 5844
	nop #pc 5848
be_else.9092: #pc 5852
	fmv	%f0, l.6176  #0 pc 5852
be_cont.9093: #pc 5856
	lw	%x6, 24(%x2)  #974 pc 5856
	fsw	%f0, 0(%x6)  #974 pc 5860
	flw	%f0, 4(%x6)  #975 pc 5864
	fsw	%f0, 72(%x2)  #976 pc 5868
	sw	%x1, 80(%x2)  #976 pc 5872
	addi	%x2, %x2, 84  #976 pc 5876
	jal	%x1, fiszero.2479  #976 pc 5880
	addi	%x2, %x2, -84  #976 pc 5884
	lw	%x1, 80(%x2) #976 pc 5888
	beq	%x6, %x0, 12  #976 pc 5892
	j	be_else.9094 #pc 5896
	nop #pc 5900
	flw	%f0, 72(%x2)  #976 pc 5904
	sw	%x1, 80(%x2)  #976 pc 5908
	addi	%x2, %x2, 84  #976 pc 5912
	jal	%x1, sgn.2577  #976 pc 5916
	addi	%x2, %x2, -84  #976 pc 5920
	lw	%x1, 80(%x2) #976 pc 5924
	flw	%f1, 72(%x2)  #976 pc 5928
	fsw	%f0, 80(%x2)  #976 pc 5932
	fadd	%f0, %f1, %f30  #0 pc 5936
	sw	%x1, 88(%x2)  #976 pc 5940
	addi	%x2, %x2, 92  #976 pc 5944
	jal	%x1, fsqr.2487  #976 pc 5948
	addi	%x2, %x2, -92  #976 pc 5952
	lw	%x1, 88(%x2) #976 pc 5956
	flw	%f1, 80(%x2)  #976 pc 5960
	fdiv	%f0, %f1, %f0  #976 pc 5964
	j	be_cont.9095 #pc 5968
	nop #pc 5972
be_else.9094: #pc 5976
	fmv	%f0, l.6176  #0 pc 5976
be_cont.9095: #pc 5980
	lw	%x6, 24(%x2)  #976 pc 5980
	fsw	%f0, 4(%x6)  #976 pc 5984
	flw	%f0, 8(%x6)  #977 pc 5988
	fsw	%f0, 88(%x2)  #978 pc 5992
	sw	%x1, 96(%x2)  #978 pc 5996
	addi	%x2, %x2, 100  #978 pc 6000
	jal	%x1, fiszero.2479  #978 pc 6004
	addi	%x2, %x2, -100  #978 pc 6008
	lw	%x1, 96(%x2) #978 pc 6012
	beq	%x6, %x0, 12  #978 pc 6016
	j	be_else.9096 #pc 6020
	nop #pc 6024
	flw	%f0, 88(%x2)  #978 pc 6028
	sw	%x1, 96(%x2)  #978 pc 6032
	addi	%x2, %x2, 100  #978 pc 6036
	jal	%x1, sgn.2577  #978 pc 6040
	addi	%x2, %x2, -100  #978 pc 6044
	lw	%x1, 96(%x2) #978 pc 6048
	flw	%f1, 88(%x2)  #978 pc 6052
	fsw	%f0, 96(%x2)  #978 pc 6056
	fadd	%f0, %f1, %f30  #0 pc 6060
	sw	%x1, 104(%x2)  #978 pc 6064
	addi	%x2, %x2, 108  #978 pc 6068
	jal	%x1, fsqr.2487  #978 pc 6072
	addi	%x2, %x2, -108  #978 pc 6076
	lw	%x1, 104(%x2) #978 pc 6080
	flw	%f1, 96(%x2)  #978 pc 6084
	fdiv	%f0, %f1, %f0  #978 pc 6088
	j	be_cont.9097 #pc 6092
	nop #pc 6096
be_else.9096: #pc 6100
	fmv	%f0, l.6176  #0 pc 6100
be_cont.9097: #pc 6104
	lw	%x6, 24(%x2)  #978 pc 6104
	fsw	%f0, 8(%x6)  #978 pc 6108
	j	be_cont.9090 #pc 6112
	nop #pc 6116
be_else.9089: #pc 6120
	addi	%x31, %x0, 2  #pc 6120
	beq	%x10, %x31, 12  #980 pc 6124
	j	be_else.9098 #pc 6128
	nop #pc 6132
	lw	%x7, 32(%x2)  #982 pc 6136
	beq	%x7, %x0, 12  #982 pc 6140
	j	be_else.9100 #pc 6144
	nop #pc 6148
	addi	%x7, %x0, 1  #0 pc 6152
	j	be_cont.9101 #pc 6156
	nop #pc 6160
be_else.9100: #pc 6164
	addi	%x7, %x0, 0  #0 pc 6164
be_cont.9101: #pc 6168
	addi	%x6, %x8, 0  #0 pc 6168
	sw	%x1, 104(%x2)  #982 pc 6172
	addi	%x2, %x2, 108  #982 pc 6176
	jal	%x1, vecunit_sgn.2598  #982 pc 6180
	addi	%x2, %x2, -108  #982 pc 6184
	lw	%x1, 104(%x2) #982 pc 6188
	j	be_cont.9099 #pc 6192
	nop #pc 6196
be_else.9098: #pc 6200
be_cont.9099: #pc 6200
be_cont.9090: #pc 6200
	lw	%x6, 20(%x2)  #986 pc 6200
	beq	%x6, %x0, 12  #986 pc 6204
	j	be_else.9102 #pc 6208
	nop #pc 6212
	j	be_cont.9103 #pc 6216
	nop #pc 6220
be_else.9102: #pc 6224
	lw	%x6, 24(%x2)  #987 pc 6224
	lw	%x7, 44(%x2)  #987 pc 6228
	sw	%x1, 104(%x2)  #987 pc 6232
	addi	%x2, %x2, 108  #987 pc 6236
	jal	%x1, rotate_quadratic_matrix.2700  #987 pc 6240
	addi	%x2, %x2, -108  #987 pc 6244
	lw	%x1, 104(%x2) #987 pc 6248
be_cont.9103: #pc 6252
	addi	%x6, %x0, 1  #0 pc 6252
	ret #pc 6256
	nop #pc 6260
read_object.2705:  #pc 6264
	lw	%x7, 8(%x29)  #0 pc 6264
	lw	%x8, 4(%x29)  #0 pc 6268
	addi	%x31, %x0, 60  #pc 6272
	bge	%x6, %x31, 12  #998 pc 6276
	j	bge_else.9104 #pc 6280
	nop #pc 6284
	ret #pc 6288
	nop #pc 6292
bge_else.9104: #pc 6296
	sw	%x29, 0(%x2)  #999 pc 6296
	sw	%x8, 4(%x2)  #999 pc 6300
	sw	%x6, 8(%x2)  #999 pc 6304
	addi	%x29, %x7, 0  #0 pc 6308
	sw	%x1, 12(%x2)  #999 pc 6312
	lw	%x30, 0(%x29)  #999 pc 6316
	addi	%x2, %x2, 16  #999 pc 6320
	jalr	%x1, %x30, 0  #999 pc 6324
	addi	%x2, %x2, -16  #999 pc 6328
	lw	%x1, 12(%x2)  #999 pc 6332
	beq	%x6, %x0, 12  #999 pc 6336
	j	be_else.9106 #pc 6340
	nop #pc 6344
	lw	%x6, 4(%x2)  #1002 pc 6348
	lw	%x7, 8(%x2)  #1002 pc 6352
	sw	%x7, 0(%x6)  #1002 pc 6356
	ret #pc 6360
	nop #pc 6364
be_else.9106: #pc 6368
	lw	%x6, 8(%x2)  #1000 pc 6368
	addi	%x6, %x6, 1  #1000 pc 6372
	lw	%x29, 0(%x2)  #1000 pc 6376
	lw	%x30, 0(%x29)  #1000 pc 6380
	jalr	%x0, %x30, 0  #1000 pc 6384
	nop #pc 6388
read_all_object.2707:  #pc 6392
	lw	%x29, 4(%x29)  #0 pc 6392
	addi	%x6, %x0, 0  #0 pc 6396
	lw	%x30, 0(%x29)  #1007 pc 6400
	jalr	%x0, %x30, 0  #1007 pc 6404
	nop #pc 6408
read_net_item.2709:  #pc 6412
	sw	%x6, 0(%x2)  #1014 pc 6412
	sw	%x1, 4(%x2)  #1014 pc 6416
	addi	%x2, %x2, 8  #1014 pc 6420
	jal	%x1, read_int.2526  #1014 pc 6424
	addi	%x2, %x2, -8  #1014 pc 6428
	lw	%x1, 4(%x2) #1014 pc 6432
	addi	%x31, %x0, -1  #pc 6436
	beq	%x6, %x31, 12  #1015 pc 6440
	j	be_else.9108 #pc 6444
	nop #pc 6448
	lw	%x6, 0(%x2)  #1015 pc 6452
	addi	%x6, %x6, 1  #1015 pc 6456
	addi	%x7, %x0, -1  #0 pc 6460
	j	create_array.2534  #1015 pc 6464
	nop #pc 6468
be_else.9108: #pc 6472
	lw	%x7, 0(%x2)  #1017 pc 6472
	addi	%x8, %x7, 1  #1017 pc 6476
	sw	%x6, 4(%x2)  #1017 pc 6480
	addi	%x6, %x8, 0  #0 pc 6484
	sw	%x1, 8(%x2)  #1017 pc 6488
	addi	%x2, %x2, 12  #1017 pc 6492
	jal	%x1, read_net_item.2709  #1017 pc 6496
	addi	%x2, %x2, -12  #1017 pc 6500
	lw	%x1, 8(%x2) #1017 pc 6504
	lw	%x7, 0(%x2)  #1018 pc 6508
	slli	%x7, %x7, 2  #1018 pc 6512
	lw	%x8, 4(%x2)  #1018 pc 6516
	add	%x31, %x7, %x6  #1018 pc 6520
	sw	%x8, 0(%x31)  #1018 pc 6524
	ret #pc 6528
	nop #pc 6532
read_or_network.2711:  #pc 6536
	addi	%x7, %x0, 0  #0 pc 6536
	sw	%x6, 0(%x2)  #1022 pc 6540
	addi	%x6, %x7, 0  #0 pc 6544
	sw	%x1, 4(%x2)  #1022 pc 6548
	addi	%x2, %x2, 8  #1022 pc 6552
	jal	%x1, read_net_item.2709  #1022 pc 6556
	addi	%x2, %x2, -8  #1022 pc 6560
	lw	%x1, 4(%x2) #1022 pc 6564
	addi	%x7, %x6, 0  #1022 pc 6568
	lw	%x6, 0(%x7)  #1023 pc 6572
	addi	%x31, %x0, -1  #pc 6576
	beq	%x6, %x31, 12  #1023 pc 6580
	j	be_else.9109 #pc 6584
	nop #pc 6588
	lw	%x6, 0(%x2)  #1024 pc 6592
	addi	%x6, %x6, 1  #1024 pc 6596
	j	create_array.2534  #1024 pc 6600
	nop #pc 6604
be_else.9109: #pc 6608
	lw	%x6, 0(%x2)  #1026 pc 6608
	addi	%x8, %x6, 1  #1026 pc 6612
	sw	%x7, 4(%x2)  #1026 pc 6616
	addi	%x6, %x8, 0  #0 pc 6620
	sw	%x1, 8(%x2)  #1026 pc 6624
	addi	%x2, %x2, 12  #1026 pc 6628
	jal	%x1, read_or_network.2711  #1026 pc 6632
	addi	%x2, %x2, -12  #1026 pc 6636
	lw	%x1, 8(%x2) #1026 pc 6640
	lw	%x7, 0(%x2)  #1027 pc 6644
	slli	%x7, %x7, 2  #1027 pc 6648
	lw	%x8, 4(%x2)  #1027 pc 6652
	add	%x31, %x7, %x6  #1027 pc 6656
	sw	%x8, 0(%x31)  #1027 pc 6660
	ret #pc 6664
	nop #pc 6668
read_and_network.2713:  #pc 6672
	lw	%x7, 4(%x29)  #0 pc 6672
	addi	%x8, %x0, 0  #0 pc 6676
	sw	%x29, 0(%x2)  #1031 pc 6680
	sw	%x7, 4(%x2)  #1031 pc 6684
	sw	%x6, 8(%x2)  #1031 pc 6688
	addi	%x6, %x8, 0  #0 pc 6692
	sw	%x1, 12(%x2)  #1031 pc 6696
	addi	%x2, %x2, 16  #1031 pc 6700
	jal	%x1, read_net_item.2709  #1031 pc 6704
	addi	%x2, %x2, -16  #1031 pc 6708
	lw	%x1, 12(%x2) #1031 pc 6712
	lw	%x7, 0(%x6)  #1032 pc 6716
	addi	%x31, %x0, -1  #pc 6720
	beq	%x7, %x31, 12  #1032 pc 6724
	j	be_else.9110 #pc 6728
	nop #pc 6732
	ret #pc 6736
	nop #pc 6740
be_else.9110: #pc 6744
	lw	%x7, 8(%x2)  #1034 pc 6744
	slli	%x8, %x7, 2  #1034 pc 6748
	lw	%x9, 4(%x2)  #1034 pc 6752
	add	%x31, %x8, %x9  #1034 pc 6756
	sw	%x6, 0(%x31)  #1034 pc 6760
	addi	%x6, %x7, 1  #1035 pc 6764
	lw	%x29, 0(%x2)  #1035 pc 6768
	lw	%x30, 0(%x29)  #1035 pc 6772
	jalr	%x0, %x30, 0  #1035 pc 6776
	nop #pc 6780
read_parameter.2715:  #pc 6784
	lw	%x6, 20(%x29)  #0 pc 6784
	lw	%x7, 16(%x29)  #0 pc 6788
	lw	%x8, 12(%x29)  #0 pc 6792
	lw	%x9, 8(%x29)  #0 pc 6796
	lw	%x10, 4(%x29)  #0 pc 6800
	sw	%x10, 0(%x2)  #1041 pc 6804
	sw	%x8, 4(%x2)  #1041 pc 6808
	sw	%x9, 8(%x2)  #1041 pc 6812
	sw	%x7, 12(%x2)  #1041 pc 6816
	addi	%x29, %x6, 0  #0 pc 6820
	sw	%x1, 16(%x2)  #1041 pc 6824
	lw	%x30, 0(%x29)  #1041 pc 6828
	addi	%x2, %x2, 20  #1041 pc 6832
	jalr	%x1, %x30, 0  #1041 pc 6836
	addi	%x2, %x2, -20  #1041 pc 6840
	lw	%x1, 16(%x2)  #1041 pc 6844
	lw	%x29, 12(%x2)  #1042 pc 6848
	sw	%x1, 16(%x2)  #1042 pc 6852
	lw	%x30, 0(%x29)  #1042 pc 6856
	addi	%x2, %x2, 20  #1042 pc 6860
	jalr	%x1, %x30, 0  #1042 pc 6864
	addi	%x2, %x2, -20  #1042 pc 6868
	lw	%x1, 16(%x2)  #1042 pc 6872
	lw	%x29, 8(%x2)  #1043 pc 6876
	sw	%x1, 16(%x2)  #1043 pc 6880
	lw	%x30, 0(%x29)  #1043 pc 6884
	addi	%x2, %x2, 20  #1043 pc 6888
	jalr	%x1, %x30, 0  #1043 pc 6892
	addi	%x2, %x2, -20  #1043 pc 6896
	lw	%x1, 16(%x2)  #1043 pc 6900
	addi	%x6, %x0, 0  #0 pc 6904
	lw	%x29, 4(%x2)  #1044 pc 6908
	sw	%x1, 16(%x2)  #1044 pc 6912
	lw	%x30, 0(%x29)  #1044 pc 6916
	addi	%x2, %x2, 20  #1044 pc 6920
	jalr	%x1, %x30, 0  #1044 pc 6924
	addi	%x2, %x2, -20  #1044 pc 6928
	lw	%x1, 16(%x2)  #1044 pc 6932
	addi	%x6, %x0, 0  #0 pc 6936
	sw	%x1, 16(%x2)  #1045 pc 6940
	addi	%x2, %x2, 20  #1045 pc 6944
	jal	%x1, read_or_network.2711  #1045 pc 6948
	addi	%x2, %x2, -20  #1045 pc 6952
	lw	%x1, 16(%x2) #1045 pc 6956
	lw	%x7, 0(%x2)  #1045 pc 6960
	sw	%x6, 0(%x7)  #1045 pc 6964
	ret #pc 6968
	nop #pc 6972
solver_rect_surface.2717:  #pc 6976
	lw	%x11, 4(%x29)  #0 pc 6976
	slli	%x12, %x8, 2  #1065 pc 6980
	add	%x31, %x12, %x7  #1065 pc 6984
	flw	%f3, 0(%x31)  #1065 pc 6988
	sw	%x11, 0(%x2)  #1065 pc 6992
	fsw	%f2, 8(%x2)  #1065 pc 6996
	sw	%x10, 16(%x2)  #1065 pc 7000
	fsw	%f1, 24(%x2)  #1065 pc 7004
	sw	%x9, 32(%x2)  #1065 pc 7008
	fsw	%f0, 40(%x2)  #1065 pc 7012
	sw	%x7, 48(%x2)  #1065 pc 7016
	sw	%x8, 52(%x2)  #1065 pc 7020
	sw	%x6, 56(%x2)  #1065 pc 7024
	fadd	%f0, %f3, %f30  #0 pc 7028
	sw	%x1, 60(%x2)  #1065 pc 7032
	addi	%x2, %x2, 64  #1065 pc 7036
	jal	%x1, fiszero.2479  #1065 pc 7040
	addi	%x2, %x2, -64  #1065 pc 7044
	lw	%x1, 60(%x2) #1065 pc 7048
	beq	%x6, %x0, 12  #1065 pc 7052
	j	be_else.9116 #pc 7056
	nop #pc 7060
	lw	%x6, 56(%x2)  #1066 pc 7064
	sw	%x1, 60(%x2)  #1066 pc 7068
	addi	%x2, %x2, 64  #1066 pc 7072
	jal	%x1, o_param_abc.2639  #1066 pc 7076
	addi	%x2, %x2, -64  #1066 pc 7080
	lw	%x1, 60(%x2) #1066 pc 7084
	lw	%x7, 56(%x2)  #1067 pc 7088
	sw	%x6, 60(%x2)  #1067 pc 7092
	addi	%x6, %x7, 0  #0 pc 7096
	sw	%x1, 64(%x2)  #1067 pc 7100
	addi	%x2, %x2, 68  #1067 pc 7104
	jal	%x1, o_isinvert.2629  #1067 pc 7108
	addi	%x2, %x2, -68  #1067 pc 7112
	lw	%x1, 64(%x2) #1067 pc 7116
	lw	%x7, 52(%x2)  #1067 pc 7120
	slli	%x8, %x7, 2  #1067 pc 7124
	lw	%x9, 48(%x2)  #1067 pc 7128
	add	%x31, %x8, %x9  #1067 pc 7132
	flw	%f0, 0(%x31)  #1067 pc 7136
	sw	%x6, 64(%x2)  #1067 pc 7140
	sw	%x1, 68(%x2)  #1067 pc 7144
	addi	%x2, %x2, 72  #1067 pc 7148
	jal	%x1, fisneg.2483  #1067 pc 7152
	addi	%x2, %x2, -72  #1067 pc 7156
	lw	%x1, 68(%x2) #1067 pc 7160
	addi	%x7, %x6, 0  #1067 pc 7164
	lw	%x6, 64(%x2)  #1067 pc 7168
	sw	%x1, 68(%x2)  #1067 pc 7172
	addi	%x2, %x2, 72  #1067 pc 7176
	jal	%x1, xor.2574  #1067 pc 7180
	addi	%x2, %x2, -72  #1067 pc 7184
	lw	%x1, 68(%x2) #1067 pc 7188
	lw	%x7, 52(%x2)  #1067 pc 7192
	slli	%x8, %x7, 2  #1067 pc 7196
	lw	%x9, 60(%x2)  #1067 pc 7200
	add	%x31, %x8, %x9  #1067 pc 7204
	flw	%f0, 0(%x31)  #1067 pc 7208
	sw	%x1, 68(%x2)  #1067 pc 7212
	addi	%x2, %x2, 72  #1067 pc 7216
	jal	%x1, fneg_cond.2579  #1067 pc 7220
	addi	%x2, %x2, -72  #1067 pc 7224
	lw	%x1, 68(%x2) #1067 pc 7228
	flw	%f1, 40(%x2)  #1069 pc 7232
	fsub	%f0, %f0, %f1  #1069 pc 7236
	lw	%x6, 52(%x2)  #1069 pc 7240
	slli	%x6, %x6, 2  #1069 pc 7244
	lw	%x7, 48(%x2)  #1069 pc 7248
	add	%x31, %x6, %x7  #1069 pc 7252
	flw	%f1, 0(%x31)  #1069 pc 7256
	fdiv	%f0, %f0, %f1  #1069 pc 7260
	lw	%x6, 32(%x2)  #1070 pc 7264
	slli	%x8, %x6, 2  #1070 pc 7268
	add	%x31, %x8, %x7  #1070 pc 7272
	flw	%f1, 0(%x31)  #1070 pc 7276
	fmul	%f1, %f0, %f1  #1070 pc 7280
	flw	%f2, 24(%x2)  #1070 pc 7284
	fadd	%f1, %f1, %f2  #1070 pc 7288
	fabs	%f1, %f1  #1070 pc 7292
	slli	%x6, %x6, 2  #1070 pc 7296
	lw	%x8, 60(%x2)  #1070 pc 7300
	add	%x31, %x6, %x8  #1070 pc 7304
	flw	%f2, 0(%x31)  #1070 pc 7308
	fsw	%f0, 72(%x2)  #1070 pc 7312
	fadd	%f0, %f1, %f30  #0 pc 7316
	fadd	%f1, %f2, %f30  #0 pc 7320
	sw	%x1, 80(%x2)  #1070 pc 7324
	addi	%x2, %x2, 84  #1070 pc 7328
	jal	%x1, fless.2491  #1070 pc 7332
	addi	%x2, %x2, -84  #1070 pc 7336
	lw	%x1, 80(%x2) #1070 pc 7340
	beq	%x6, %x0, 12  #1070 pc 7344
	j	be_else.9118 #pc 7348
	nop #pc 7352
	addi	%x6, %x0, 0  #0 pc 7356
	ret #pc 7360
	nop #pc 7364
be_else.9118: #pc 7368
	lw	%x6, 16(%x2)  #1071 pc 7368
	slli	%x7, %x6, 2  #1071 pc 7372
	lw	%x8, 48(%x2)  #1071 pc 7376
	add	%x31, %x7, %x8  #1071 pc 7380
	flw	%f0, 0(%x31)  #1071 pc 7384
	flw	%f1, 72(%x2)  #1071 pc 7388
	fmul	%f0, %f1, %f0  #1071 pc 7392
	flw	%f2, 8(%x2)  #1071 pc 7396
	fadd	%f0, %f0, %f2  #1071 pc 7400
	fabs	%f0, %f0  #1071 pc 7404
	slli	%x6, %x6, 2  #1071 pc 7408
	lw	%x7, 60(%x2)  #1071 pc 7412
	add	%x31, %x6, %x7  #1071 pc 7416
	flw	%f2, 0(%x31)  #1071 pc 7420
	fadd	%f1, %f2, %f30  #0 pc 7424
	sw	%x1, 80(%x2)  #1071 pc 7428
	addi	%x2, %x2, 84  #1071 pc 7432
	jal	%x1, fless.2491  #1071 pc 7436
	addi	%x2, %x2, -84  #1071 pc 7440
	lw	%x1, 80(%x2) #1071 pc 7444
	beq	%x6, %x0, 12  #1071 pc 7448
	j	be_else.9119 #pc 7452
	nop #pc 7456
	addi	%x6, %x0, 0  #0 pc 7460
	ret #pc 7464
	nop #pc 7468
be_else.9119: #pc 7472
	lw	%x6, 0(%x2)  #1072 pc 7472
	flw	%f0, 72(%x2)  #1072 pc 7476
	fsw	%f0, 0(%x6)  #1072 pc 7480
	addi	%x6, %x0, 1  #0 pc 7484
	ret #pc 7488
	nop #pc 7492
be_else.9116: #pc 7496
	addi	%x6, %x0, 0  #0 pc 7496
	ret #pc 7500
	nop #pc 7504
solver_rect.2726:  #pc 7508
	lw	%x29, 4(%x29)  #0 pc 7508
	addi	%x8, %x0, 0  #0 pc 7512
	addi	%x9, %x0, 1  #0 pc 7516
	addi	%x10, %x0, 2  #0 pc 7520
	fsw	%f0, 0(%x2)  #1080 pc 7524
	fsw	%f2, 8(%x2)  #1080 pc 7528
	fsw	%f1, 16(%x2)  #1080 pc 7532
	sw	%x7, 24(%x2)  #1080 pc 7536
	sw	%x6, 28(%x2)  #1080 pc 7540
	sw	%x29, 32(%x2)  #1080 pc 7544
	sw	%x1, 36(%x2)  #1080 pc 7548
	lw	%x30, 0(%x29)  #1080 pc 7552
	addi	%x2, %x2, 40  #1080 pc 7556
	jalr	%x1, %x30, 0  #1080 pc 7560
	addi	%x2, %x2, -40  #1080 pc 7564
	lw	%x1, 36(%x2)  #1080 pc 7568
	beq	%x6, %x0, 12  #1080 pc 7572
	j	be_else.9120 #pc 7576
	nop #pc 7580
	addi	%x8, %x0, 1  #0 pc 7584
	addi	%x9, %x0, 2  #0 pc 7588
	addi	%x10, %x0, 0  #0 pc 7592
	flw	%f0, 16(%x2)  #1081 pc 7596
	flw	%f1, 8(%x2)  #1081 pc 7600
	flw	%f2, 0(%x2)  #1081 pc 7604
	lw	%x6, 28(%x2)  #1081 pc 7608
	lw	%x7, 24(%x2)  #1081 pc 7612
	lw	%x29, 32(%x2)  #1081 pc 7616
	sw	%x1, 36(%x2)  #1081 pc 7620
	lw	%x30, 0(%x29)  #1081 pc 7624
	addi	%x2, %x2, 40  #1081 pc 7628
	jalr	%x1, %x30, 0  #1081 pc 7632
	addi	%x2, %x2, -40  #1081 pc 7636
	lw	%x1, 36(%x2)  #1081 pc 7640
	beq	%x6, %x0, 12  #1081 pc 7644
	j	be_else.9121 #pc 7648
	nop #pc 7652
	addi	%x8, %x0, 2  #0 pc 7656
	addi	%x9, %x0, 0  #0 pc 7660
	addi	%x10, %x0, 1  #0 pc 7664
	flw	%f0, 8(%x2)  #1082 pc 7668
	flw	%f1, 0(%x2)  #1082 pc 7672
	flw	%f2, 16(%x2)  #1082 pc 7676
	lw	%x6, 28(%x2)  #1082 pc 7680
	lw	%x7, 24(%x2)  #1082 pc 7684
	lw	%x29, 32(%x2)  #1082 pc 7688
	sw	%x1, 36(%x2)  #1082 pc 7692
	lw	%x30, 0(%x29)  #1082 pc 7696
	addi	%x2, %x2, 40  #1082 pc 7700
	jalr	%x1, %x30, 0  #1082 pc 7704
	addi	%x2, %x2, -40  #1082 pc 7708
	lw	%x1, 36(%x2)  #1082 pc 7712
	beq	%x6, %x0, 12  #1082 pc 7716
	j	be_else.9122 #pc 7720
	nop #pc 7724
	addi	%x6, %x0, 0  #0 pc 7728
	ret #pc 7732
	nop #pc 7736
be_else.9122: #pc 7740
	addi	%x6, %x0, 3  #0 pc 7740
	ret #pc 7744
	nop #pc 7748
be_else.9121: #pc 7752
	addi	%x6, %x0, 2  #0 pc 7752
	ret #pc 7756
	nop #pc 7760
be_else.9120: #pc 7764
	addi	%x6, %x0, 1  #0 pc 7764
	ret #pc 7768
	nop #pc 7772
solver_surface.2732:  #pc 7776
	lw	%x8, 4(%x29)  #1091 pc 7776
	sw	%x8, 0(%x2)  #1091 pc 7780
	fsw	%f2, 8(%x2)  #1091 pc 7784
	fsw	%f1, 16(%x2)  #1091 pc 7788
	fsw	%f0, 24(%x2)  #1091 pc 7792
	sw	%x7, 32(%x2)  #1091 pc 7796
	sw	%x1, 36(%x2)  #1091 pc 7800
	addi	%x2, %x2, 40  #1091 pc 7804
	jal	%x1, o_param_abc.2639  #1091 pc 7808
	addi	%x2, %x2, -40  #1091 pc 7812
	lw	%x1, 36(%x2) #1091 pc 7816
	addi	%x7, %x6, 0  #1091 pc 7820
	lw	%x6, 32(%x2)  #1092 pc 7824
	sw	%x7, 36(%x2)  #1092 pc 7828
	sw	%x1, 40(%x2)  #1092 pc 7832
	addi	%x2, %x2, 44  #1092 pc 7836
	jal	%x1, veciprod.2601  #1092 pc 7840
	addi	%x2, %x2, -44  #1092 pc 7844
	lw	%x1, 40(%x2) #1092 pc 7848
	fsw	%f0, 40(%x2)  #1093 pc 7852
	sw	%x1, 48(%x2)  #1093 pc 7856
	addi	%x2, %x2, 52  #1093 pc 7860
	jal	%x1, fispos.2481  #1093 pc 7864
	addi	%x2, %x2, -52  #1093 pc 7868
	lw	%x1, 48(%x2) #1093 pc 7872
	beq	%x6, %x0, 12  #1093 pc 7876
	j	be_else.9124 #pc 7880
	nop #pc 7884
	addi	%x6, %x0, 0  #0 pc 7888
	ret #pc 7892
	nop #pc 7896
be_else.9124: #pc 7900
	flw	%f0, 24(%x2)  #1094 pc 7900
	flw	%f1, 16(%x2)  #1094 pc 7904
	flw	%f2, 8(%x2)  #1094 pc 7908
	lw	%x6, 36(%x2)  #1094 pc 7912
	sw	%x1, 48(%x2)  #1094 pc 7916
	addi	%x2, %x2, 52  #1094 pc 7920
	jal	%x1, veciprod2.2604  #1094 pc 7924
	addi	%x2, %x2, -52  #1094 pc 7928
	lw	%x1, 48(%x2) #1094 pc 7932
	sw	%x1, 48(%x2)  #1094 pc 7936
	addi	%x2, %x2, 52  #1094 pc 7940
	jal	%x1, fneg.2485  #1094 pc 7944
	addi	%x2, %x2, -52  #1094 pc 7948
	lw	%x1, 48(%x2) #1094 pc 7952
	flw	%f1, 40(%x2)  #1094 pc 7956
	fdiv	%f0, %f0, %f1  #1094 pc 7960
	lw	%x6, 0(%x2)  #1094 pc 7964
	fsw	%f0, 0(%x6)  #1094 pc 7968
	addi	%x6, %x0, 1  #0 pc 7972
	ret #pc 7976
	nop #pc 7980
quadratic.2738:  #pc 7984
	fsw	%f0, 0(%x2)  #1104 pc 7984
	fsw	%f2, 8(%x2)  #1104 pc 7988
	fsw	%f1, 16(%x2)  #1104 pc 7992
	sw	%x6, 24(%x2)  #1104 pc 7996
	sw	%x1, 28(%x2)  #1104 pc 8000
	addi	%x2, %x2, 32  #1104 pc 8004
	jal	%x1, fsqr.2487  #1104 pc 8008
	addi	%x2, %x2, -32  #1104 pc 8012
	lw	%x1, 28(%x2) #1104 pc 8016
	lw	%x6, 24(%x2)  #1104 pc 8020
	fsw	%f0, 32(%x2)  #1104 pc 8024
	sw	%x1, 40(%x2)  #1104 pc 8028
	addi	%x2, %x2, 44  #1104 pc 8032
	jal	%x1, o_param_a.2633  #1104 pc 8036
	addi	%x2, %x2, -44  #1104 pc 8040
	lw	%x1, 40(%x2) #1104 pc 8044
	flw	%f1, 32(%x2)  #1104 pc 8048
	fmul	%f0, %f1, %f0  #1104 pc 8052
	flw	%f1, 16(%x2)  #1104 pc 8056
	fsw	%f0, 40(%x2)  #1104 pc 8060
	fadd	%f0, %f1, %f30  #0 pc 8064
	sw	%x1, 48(%x2)  #1104 pc 8068
	addi	%x2, %x2, 52  #1104 pc 8072
	jal	%x1, fsqr.2487  #1104 pc 8076
	addi	%x2, %x2, -52  #1104 pc 8080
	lw	%x1, 48(%x2) #1104 pc 8084
	lw	%x6, 24(%x2)  #1104 pc 8088
	fsw	%f0, 48(%x2)  #1104 pc 8092
	sw	%x1, 56(%x2)  #1104 pc 8096
	addi	%x2, %x2, 60  #1104 pc 8100
	jal	%x1, o_param_b.2635  #1104 pc 8104
	addi	%x2, %x2, -60  #1104 pc 8108
	lw	%x1, 56(%x2) #1104 pc 8112
	flw	%f1, 48(%x2)  #1104 pc 8116
	fmul	%f0, %f1, %f0  #1104 pc 8120
	flw	%f1, 40(%x2)  #1104 pc 8124
	fadd	%f0, %f1, %f0  #1104 pc 8128
	flw	%f1, 8(%x2)  #1104 pc 8132
	fsw	%f0, 56(%x2)  #1104 pc 8136
	fadd	%f0, %f1, %f30  #0 pc 8140
	sw	%x1, 64(%x2)  #1104 pc 8144
	addi	%x2, %x2, 68  #1104 pc 8148
	jal	%x1, fsqr.2487  #1104 pc 8152
	addi	%x2, %x2, -68  #1104 pc 8156
	lw	%x1, 64(%x2) #1104 pc 8160
	lw	%x6, 24(%x2)  #1104 pc 8164
	fsw	%f0, 64(%x2)  #1104 pc 8168
	sw	%x1, 72(%x2)  #1104 pc 8172
	addi	%x2, %x2, 76  #1104 pc 8176
	jal	%x1, o_param_c.2637  #1104 pc 8180
	addi	%x2, %x2, -76  #1104 pc 8184
	lw	%x1, 72(%x2) #1104 pc 8188
	flw	%f1, 64(%x2)  #1104 pc 8192
	fmul	%f0, %f1, %f0  #1104 pc 8196
	flw	%f1, 56(%x2)  #1104 pc 8200
	fadd	%f0, %f1, %f0  #1104 pc 8204
	lw	%x6, 24(%x2)  #1106 pc 8208
	fsw	%f0, 72(%x2)  #1106 pc 8212
	sw	%x1, 80(%x2)  #1106 pc 8216
	addi	%x2, %x2, 84  #1106 pc 8220
	jal	%x1, o_isrot.2631  #1106 pc 8224
	addi	%x2, %x2, -84  #1106 pc 8228
	lw	%x1, 80(%x2) #1106 pc 8232
	beq	%x6, %x0, 12  #1106 pc 8236
	j	be_else.9126 #pc 8240
	nop #pc 8244
	flw	%f0, 72(%x2)  #1107 pc 8248
	ret #pc 8252
	nop #pc 8256
be_else.9126: #pc 8260
	flw	%f0, 8(%x2)  #1110 pc 8260
	flw	%f1, 16(%x2)  #1110 pc 8264
	fmul	%f2, %f1, %f0  #1110 pc 8268
	lw	%x6, 24(%x2)  #1110 pc 8272
	fsw	%f2, 80(%x2)  #1110 pc 8276
	sw	%x1, 88(%x2)  #1110 pc 8280
	addi	%x2, %x2, 92  #1110 pc 8284
	jal	%x1, o_param_r1.2657  #1110 pc 8288
	addi	%x2, %x2, -92  #1110 pc 8292
	lw	%x1, 88(%x2) #1110 pc 8296
	flw	%f1, 80(%x2)  #1110 pc 8300
	fmul	%f0, %f1, %f0  #1110 pc 8304
	flw	%f1, 72(%x2)  #1109 pc 8308
	fadd	%f0, %f1, %f0  #1109 pc 8312
	flw	%f1, 0(%x2)  #1111 pc 8316
	flw	%f2, 8(%x2)  #1111 pc 8320
	fmul	%f2, %f2, %f1  #1111 pc 8324
	lw	%x6, 24(%x2)  #1111 pc 8328
	fsw	%f0, 88(%x2)  #1111 pc 8332
	fsw	%f2, 96(%x2)  #1111 pc 8336
	sw	%x1, 104(%x2)  #1111 pc 8340
	addi	%x2, %x2, 108  #1111 pc 8344
	jal	%x1, o_param_r2.2659  #1111 pc 8348
	addi	%x2, %x2, -108  #1111 pc 8352
	lw	%x1, 104(%x2) #1111 pc 8356
	flw	%f1, 96(%x2)  #1111 pc 8360
	fmul	%f0, %f1, %f0  #1111 pc 8364
	flw	%f1, 88(%x2)  #1109 pc 8368
	fadd	%f0, %f1, %f0  #1109 pc 8372
	flw	%f1, 16(%x2)  #1112 pc 8376
	flw	%f2, 0(%x2)  #1112 pc 8380
	fmul	%f1, %f2, %f1  #1112 pc 8384
	lw	%x6, 24(%x2)  #1112 pc 8388
	fsw	%f0, 104(%x2)  #1112 pc 8392
	fsw	%f1, 112(%x2)  #1112 pc 8396
	sw	%x1, 120(%x2)  #1112 pc 8400
	addi	%x2, %x2, 124  #1112 pc 8404
	jal	%x1, o_param_r3.2661  #1112 pc 8408
	addi	%x2, %x2, -124  #1112 pc 8412
	lw	%x1, 120(%x2) #1112 pc 8416
	flw	%f1, 112(%x2)  #1112 pc 8420
	fmul	%f0, %f1, %f0  #1112 pc 8424
	flw	%f1, 104(%x2)  #1109 pc 8428
	fadd	%f0, %f1, %f0  #1109 pc 8432
	ret #pc 8436
	nop #pc 8440
bilinear.2743:  #pc 8444
	fmul	%f6, %f0, %f3  #1118 pc 8444
	fsw	%f3, 0(%x2)  #1118 pc 8448
	fsw	%f0, 8(%x2)  #1118 pc 8452
	fsw	%f5, 16(%x2)  #1118 pc 8456
	fsw	%f2, 24(%x2)  #1118 pc 8460
	sw	%x6, 32(%x2)  #1118 pc 8464
	fsw	%f4, 40(%x2)  #1118 pc 8468
	fsw	%f1, 48(%x2)  #1118 pc 8472
	fsw	%f6, 56(%x2)  #1118 pc 8476
	sw	%x1, 64(%x2)  #1118 pc 8480
	addi	%x2, %x2, 68  #1118 pc 8484
	jal	%x1, o_param_a.2633  #1118 pc 8488
	addi	%x2, %x2, -68  #1118 pc 8492
	lw	%x1, 64(%x2) #1118 pc 8496
	flw	%f1, 56(%x2)  #1118 pc 8500
	fmul	%f0, %f1, %f0  #1118 pc 8504
	flw	%f1, 40(%x2)  #1119 pc 8508
	flw	%f2, 48(%x2)  #1119 pc 8512
	fmul	%f3, %f2, %f1  #1119 pc 8516
	lw	%x6, 32(%x2)  #1119 pc 8520
	fsw	%f0, 64(%x2)  #1119 pc 8524
	fsw	%f3, 72(%x2)  #1119 pc 8528
	sw	%x1, 80(%x2)  #1119 pc 8532
	addi	%x2, %x2, 84  #1119 pc 8536
	jal	%x1, o_param_b.2635  #1119 pc 8540
	addi	%x2, %x2, -84  #1119 pc 8544
	lw	%x1, 80(%x2) #1119 pc 8548
	flw	%f1, 72(%x2)  #1119 pc 8552
	fmul	%f0, %f1, %f0  #1119 pc 8556
	flw	%f1, 64(%x2)  #1118 pc 8560
	fadd	%f0, %f1, %f0  #1118 pc 8564
	flw	%f1, 16(%x2)  #1120 pc 8568
	flw	%f2, 24(%x2)  #1120 pc 8572
	fmul	%f3, %f2, %f1  #1120 pc 8576
	lw	%x6, 32(%x2)  #1120 pc 8580
	fsw	%f0, 80(%x2)  #1120 pc 8584
	fsw	%f3, 88(%x2)  #1120 pc 8588
	sw	%x1, 96(%x2)  #1120 pc 8592
	addi	%x2, %x2, 100  #1120 pc 8596
	jal	%x1, o_param_c.2637  #1120 pc 8600
	addi	%x2, %x2, -100  #1120 pc 8604
	lw	%x1, 96(%x2) #1120 pc 8608
	flw	%f1, 88(%x2)  #1120 pc 8612
	fmul	%f0, %f1, %f0  #1120 pc 8616
	flw	%f1, 80(%x2)  #1118 pc 8620
	fadd	%f0, %f1, %f0  #1118 pc 8624
	lw	%x6, 32(%x2)  #1122 pc 8628
	fsw	%f0, 96(%x2)  #1122 pc 8632
	sw	%x1, 104(%x2)  #1122 pc 8636
	addi	%x2, %x2, 108  #1122 pc 8640
	jal	%x1, o_isrot.2631  #1122 pc 8644
	addi	%x2, %x2, -108  #1122 pc 8648
	lw	%x1, 104(%x2) #1122 pc 8652
	beq	%x6, %x0, 12  #1122 pc 8656
	j	be_else.9128 #pc 8660
	nop #pc 8664
	flw	%f0, 96(%x2)  #1123 pc 8668
	ret #pc 8672
	nop #pc 8676
be_else.9128: #pc 8680
	flw	%f0, 40(%x2)  #1126 pc 8680
	flw	%f1, 24(%x2)  #1126 pc 8684
	fmul	%f2, %f1, %f0  #1126 pc 8688
	flw	%f3, 16(%x2)  #1126 pc 8692
	flw	%f4, 48(%x2)  #1126 pc 8696
	fmul	%f5, %f4, %f3  #1126 pc 8700
	fadd	%f2, %f2, %f5  #1126 pc 8704
	lw	%x6, 32(%x2)  #1126 pc 8708
	fsw	%f2, 104(%x2)  #1126 pc 8712
	sw	%x1, 112(%x2)  #1126 pc 8716
	addi	%x2, %x2, 116  #1126 pc 8720
	jal	%x1, o_param_r1.2657  #1126 pc 8724
	addi	%x2, %x2, -116  #1126 pc 8728
	lw	%x1, 112(%x2) #1126 pc 8732
	flw	%f1, 104(%x2)  #1126 pc 8736
	fmul	%f0, %f1, %f0  #1126 pc 8740
	flw	%f1, 16(%x2)  #1127 pc 8744
	flw	%f2, 8(%x2)  #1127 pc 8748
	fmul	%f1, %f2, %f1  #1127 pc 8752
	flw	%f3, 0(%x2)  #1127 pc 8756
	flw	%f4, 24(%x2)  #1127 pc 8760
	fmul	%f4, %f4, %f3  #1127 pc 8764
	fadd	%f1, %f1, %f4  #1127 pc 8768
	lw	%x6, 32(%x2)  #1127 pc 8772
	fsw	%f0, 112(%x2)  #1127 pc 8776
	fsw	%f1, 120(%x2)  #1127 pc 8780
	sw	%x1, 128(%x2)  #1127 pc 8784
	addi	%x2, %x2, 132  #1127 pc 8788
	jal	%x1, o_param_r2.2659  #1127 pc 8792
	addi	%x2, %x2, -132  #1127 pc 8796
	lw	%x1, 128(%x2) #1127 pc 8800
	flw	%f1, 120(%x2)  #1127 pc 8804
	fmul	%f0, %f1, %f0  #1127 pc 8808
	flw	%f1, 112(%x2)  #1126 pc 8812
	fadd	%f0, %f1, %f0  #1126 pc 8816
	flw	%f1, 40(%x2)  #1128 pc 8820
	flw	%f2, 8(%x2)  #1128 pc 8824
	fmul	%f1, %f2, %f1  #1128 pc 8828
	flw	%f2, 0(%x2)  #1128 pc 8832
	flw	%f3, 48(%x2)  #1128 pc 8836
	fmul	%f2, %f3, %f2  #1128 pc 8840
	fadd	%f1, %f1, %f2  #1128 pc 8844
	lw	%x6, 32(%x2)  #1128 pc 8848
	fsw	%f0, 128(%x2)  #1128 pc 8852
	fsw	%f1, 136(%x2)  #1128 pc 8856
	sw	%x1, 144(%x2)  #1128 pc 8860
	addi	%x2, %x2, 148  #1128 pc 8864
	jal	%x1, o_param_r3.2661  #1128 pc 8868
	addi	%x2, %x2, -148  #1128 pc 8872
	lw	%x1, 144(%x2) #1128 pc 8876
	flw	%f1, 136(%x2)  #1128 pc 8880
	fmul	%f0, %f1, %f0  #1128 pc 8884
	flw	%f1, 128(%x2)  #1126 pc 8888
	fadd	%f0, %f1, %f0  #1126 pc 8892
	sw	%x1, 144(%x2)  #1125 pc 8896
	addi	%x2, %x2, 148  #1125 pc 8900
	jal	%x1, fhalf.2489  #1125 pc 8904
	addi	%x2, %x2, -148  #1125 pc 8908
	lw	%x1, 144(%x2) #1125 pc 8912
	flw	%f1, 96(%x2)  #1125 pc 8916
	fadd	%f0, %f1, %f0  #1125 pc 8920
	ret #pc 8924
	nop #pc 8928
solver_second.2751:  #pc 8932
	lw	%x8, 4(%x29)  #0 pc 8932
	flw	%f3, 0(%x7)  #1143 pc 8936
	flw	%f4, 4(%x7)  #1143 pc 8940
	flw	%f5, 8(%x7)  #1143 pc 8944
	sw	%x8, 0(%x2)  #1143 pc 8948
	fsw	%f2, 8(%x2)  #1143 pc 8952
	fsw	%f1, 16(%x2)  #1143 pc 8956
	fsw	%f0, 24(%x2)  #1143 pc 8960
	sw	%x6, 32(%x2)  #1143 pc 8964
	sw	%x7, 36(%x2)  #1143 pc 8968
	fadd	%f2, %f5, %f30  #0 pc 8972
	fadd	%f1, %f4, %f30  #0 pc 8976
	fadd	%f0, %f3, %f30  #0 pc 8980
	sw	%x1, 40(%x2)  #1143 pc 8984
	addi	%x2, %x2, 44  #1143 pc 8988
	jal	%x1, quadratic.2738  #1143 pc 8992
	addi	%x2, %x2, -44  #1143 pc 8996
	lw	%x1, 40(%x2) #1143 pc 9000
	fsw	%f0, 40(%x2)  #1145 pc 9004
	sw	%x1, 48(%x2)  #1145 pc 9008
	addi	%x2, %x2, 52  #1145 pc 9012
	jal	%x1, fiszero.2479  #1145 pc 9016
	addi	%x2, %x2, -52  #1145 pc 9020
	lw	%x1, 48(%x2) #1145 pc 9024
	beq	%x6, %x0, 12  #1145 pc 9028
	j	be_else.9130 #pc 9032
	nop #pc 9036
	lw	%x6, 36(%x2)  #1150 pc 9040
	flw	%f0, 0(%x6)  #1150 pc 9044
	flw	%f1, 4(%x6)  #1150 pc 9048
	flw	%f2, 8(%x6)  #1150 pc 9052
	flw	%f3, 24(%x2)  #1150 pc 9056
	flw	%f4, 16(%x2)  #1150 pc 9060
	flw	%f5, 8(%x2)  #1150 pc 9064
	lw	%x6, 32(%x2)  #1150 pc 9068
	sw	%x1, 48(%x2)  #1150 pc 9072
	addi	%x2, %x2, 52  #1150 pc 9076
	jal	%x1, bilinear.2743  #1150 pc 9080
	addi	%x2, %x2, -52  #1150 pc 9084
	lw	%x1, 48(%x2) #1150 pc 9088
	flw	%f1, 24(%x2)  #1152 pc 9092
	flw	%f2, 16(%x2)  #1152 pc 9096
	flw	%f3, 8(%x2)  #1152 pc 9100
	lw	%x6, 32(%x2)  #1152 pc 9104
	fsw	%f0, 48(%x2)  #1152 pc 9108
	fadd	%f0, %f1, %f30  #0 pc 9112
	fadd	%f1, %f2, %f30  #0 pc 9116
	fadd	%f2, %f3, %f30  #0 pc 9120
	sw	%x1, 56(%x2)  #1152 pc 9124
	addi	%x2, %x2, 60  #1152 pc 9128
	jal	%x1, quadratic.2738  #1152 pc 9132
	addi	%x2, %x2, -60  #1152 pc 9136
	lw	%x1, 56(%x2) #1152 pc 9140
	lw	%x6, 32(%x2)  #1153 pc 9144
	fsw	%f0, 56(%x2)  #1153 pc 9148
	sw	%x1, 64(%x2)  #1153 pc 9152
	addi	%x2, %x2, 68  #1153 pc 9156
	jal	%x1, o_form.2625  #1153 pc 9160
	addi	%x2, %x2, -68  #1153 pc 9164
	lw	%x1, 64(%x2) #1153 pc 9168
	addi	%x31, %x0, 3  #pc 9172
	beq	%x6, %x31, 12  #1153 pc 9176
	j	be_else.9131 #pc 9180
	nop #pc 9184
	fmv	%f0, l.6188  #0 pc 9188
	flw	%f1, 56(%x2)  #1153 pc 9192
	fsub	%f0, %f1, %f0  #1153 pc 9196
	j	be_cont.9132 #pc 9200
	nop #pc 9204
be_else.9131: #pc 9208
	flw	%f0, 56(%x2)  #1153 pc 9208
be_cont.9132: #pc 9212
	flw	%f1, 48(%x2)  #1155 pc 9212
	fsw	%f0, 64(%x2)  #1155 pc 9216
	fadd	%f0, %f1, %f30  #0 pc 9220
	sw	%x1, 72(%x2)  #1155 pc 9224
	addi	%x2, %x2, 76  #1155 pc 9228
	jal	%x1, fsqr.2487  #1155 pc 9232
	addi	%x2, %x2, -76  #1155 pc 9236
	lw	%x1, 72(%x2) #1155 pc 9240
	flw	%f1, 64(%x2)  #1155 pc 9244
	flw	%f2, 40(%x2)  #1155 pc 9248
	fmul	%f1, %f2, %f1  #1155 pc 9252
	fsub	%f0, %f0, %f1  #1155 pc 9256
	fsw	%f0, 72(%x2)  #1157 pc 9260
	sw	%x1, 80(%x2)  #1157 pc 9264
	addi	%x2, %x2, 84  #1157 pc 9268
	jal	%x1, fispos.2481  #1157 pc 9272
	addi	%x2, %x2, -84  #1157 pc 9276
	lw	%x1, 80(%x2) #1157 pc 9280
	beq	%x6, %x0, 12  #1157 pc 9284
	j	be_else.9133 #pc 9288
	nop #pc 9292
	addi	%x6, %x0, 0  #0 pc 9296
	ret #pc 9300
	nop #pc 9304
be_else.9133: #pc 9308
	flw	%f0, 72(%x2)  #1158 pc 9308
	fsqrt	%f0, %f0  #1158 pc 9312
	lw	%x6, 32(%x2)  #1159 pc 9316
	fsw	%f0, 80(%x2)  #1159 pc 9320
	sw	%x1, 88(%x2)  #1159 pc 9324
	addi	%x2, %x2, 92  #1159 pc 9328
	jal	%x1, o_isinvert.2629  #1159 pc 9332
	addi	%x2, %x2, -92  #1159 pc 9336
	lw	%x1, 88(%x2) #1159 pc 9340
	beq	%x6, %x0, 12  #1159 pc 9344
	j	be_else.9134 #pc 9348
	nop #pc 9352
	flw	%f0, 80(%x2)  #1159 pc 9356
	sw	%x1, 88(%x2)  #1159 pc 9360
	addi	%x2, %x2, 92  #1159 pc 9364
	jal	%x1, fneg.2485  #1159 pc 9368
	addi	%x2, %x2, -92  #1159 pc 9372
	lw	%x1, 88(%x2) #1159 pc 9376
	j	be_cont.9135 #pc 9380
	nop #pc 9384
be_else.9134: #pc 9388
	flw	%f0, 80(%x2)  #1159 pc 9388
be_cont.9135: #pc 9392
	flw	%f1, 48(%x2)  #1160 pc 9392
	fsub	%f0, %f0, %f1  #1160 pc 9396
	flw	%f1, 40(%x2)  #1160 pc 9400
	fdiv	%f0, %f0, %f1  #1160 pc 9404
	lw	%x6, 0(%x2)  #1160 pc 9408
	fsw	%f0, 0(%x6)  #1160 pc 9412
	addi	%x6, %x0, 1  #0 pc 9416
	ret #pc 9420
	nop #pc 9424
be_else.9130: #pc 9428
	addi	%x6, %x0, 0  #0 pc 9428
	ret #pc 9432
	nop #pc 9436
solver.2757:  #pc 9440
	lw	%x9, 16(%x29)  #1169 pc 9440
	lw	%x10, 12(%x29)  #1169 pc 9444
	lw	%x11, 8(%x29)  #1169 pc 9448
	lw	%x12, 4(%x29)  #1169 pc 9452
	slli	%x6, %x6, 2  #1169 pc 9456
	add	%x31, %x6, %x12  #1169 pc 9460
	lw	%x6, 0(%x31)  #1169 pc 9464
	flw	%f0, 0(%x8)  #1171 pc 9468
	sw	%x10, 0(%x2)  #1171 pc 9472
	sw	%x9, 4(%x2)  #1171 pc 9476
	sw	%x7, 8(%x2)  #1171 pc 9480
	sw	%x11, 12(%x2)  #1171 pc 9484
	sw	%x6, 16(%x2)  #1171 pc 9488
	sw	%x8, 20(%x2)  #1171 pc 9492
	fsw	%f0, 24(%x2)  #1171 pc 9496
	sw	%x1, 32(%x2)  #1171 pc 9500
	addi	%x2, %x2, 36  #1171 pc 9504
	jal	%x1, o_param_x.2641  #1171 pc 9508
	addi	%x2, %x2, -36  #1171 pc 9512
	lw	%x1, 32(%x2) #1171 pc 9516
	flw	%f1, 24(%x2)  #1171 pc 9520
	fsub	%f0, %f1, %f0  #1171 pc 9524
	lw	%x6, 20(%x2)  #1172 pc 9528
	flw	%f1, 4(%x6)  #1172 pc 9532
	lw	%x7, 16(%x2)  #1172 pc 9536
	fsw	%f0, 32(%x2)  #1172 pc 9540
	fsw	%f1, 40(%x2)  #1172 pc 9544
	addi	%x6, %x7, 0  #0 pc 9548
	sw	%x1, 48(%x2)  #1172 pc 9552
	addi	%x2, %x2, 52  #1172 pc 9556
	jal	%x1, o_param_y.2643  #1172 pc 9560
	addi	%x2, %x2, -52  #1172 pc 9564
	lw	%x1, 48(%x2) #1172 pc 9568
	flw	%f1, 40(%x2)  #1172 pc 9572
	fsub	%f0, %f1, %f0  #1172 pc 9576
	lw	%x6, 20(%x2)  #1173 pc 9580
	flw	%f1, 8(%x6)  #1173 pc 9584
	lw	%x6, 16(%x2)  #1173 pc 9588
	fsw	%f0, 48(%x2)  #1173 pc 9592
	fsw	%f1, 56(%x2)  #1173 pc 9596
	sw	%x1, 64(%x2)  #1173 pc 9600
	addi	%x2, %x2, 68  #1173 pc 9604
	jal	%x1, o_param_z.2645  #1173 pc 9608
	addi	%x2, %x2, -68  #1173 pc 9612
	lw	%x1, 64(%x2) #1173 pc 9616
	flw	%f1, 56(%x2)  #1173 pc 9620
	fsub	%f0, %f1, %f0  #1173 pc 9624
	lw	%x6, 16(%x2)  #1174 pc 9628
	fsw	%f0, 64(%x2)  #1174 pc 9632
	sw	%x1, 72(%x2)  #1174 pc 9636
	addi	%x2, %x2, 76  #1174 pc 9640
	jal	%x1, o_form.2625  #1174 pc 9644
	addi	%x2, %x2, -76  #1174 pc 9648
	lw	%x1, 72(%x2) #1174 pc 9652
	addi	%x31, %x0, 1  #pc 9656
	beq	%x6, %x31, 12  #1176 pc 9660
	j	be_else.9136 #pc 9664
	nop #pc 9668
	flw	%f0, 32(%x2)  #1176 pc 9672
	flw	%f1, 48(%x2)  #1176 pc 9676
	flw	%f2, 64(%x2)  #1176 pc 9680
	lw	%x6, 16(%x2)  #1176 pc 9684
	lw	%x7, 8(%x2)  #1176 pc 9688
	lw	%x29, 12(%x2)  #1176 pc 9692
	lw	%x30, 0(%x29)  #1176 pc 9696
	jalr	%x0, %x30, 0  #1176 pc 9700
	nop #pc 9704
be_else.9136: #pc 9708
	addi	%x31, %x0, 2  #pc 9708
	beq	%x6, %x31, 12  #1177 pc 9712
	j	be_else.9137 #pc 9716
	nop #pc 9720
	flw	%f0, 32(%x2)  #1177 pc 9724
	flw	%f1, 48(%x2)  #1177 pc 9728
	flw	%f2, 64(%x2)  #1177 pc 9732
	lw	%x6, 16(%x2)  #1177 pc 9736
	lw	%x7, 8(%x2)  #1177 pc 9740
	lw	%x29, 4(%x2)  #1177 pc 9744
	lw	%x30, 0(%x29)  #1177 pc 9748
	jalr	%x0, %x30, 0  #1177 pc 9752
	nop #pc 9756
be_else.9137: #pc 9760
	flw	%f0, 32(%x2)  #1178 pc 9760
	flw	%f1, 48(%x2)  #1178 pc 9764
	flw	%f2, 64(%x2)  #1178 pc 9768
	lw	%x6, 16(%x2)  #1178 pc 9772
	lw	%x7, 8(%x2)  #1178 pc 9776
	lw	%x29, 0(%x2)  #1178 pc 9780
	lw	%x30, 0(%x29)  #1178 pc 9784
	jalr	%x0, %x30, 0  #1178 pc 9788
	nop #pc 9792
solver_rect_fast.2761:  #pc 9796
	lw	%x9, 4(%x29)  #0 pc 9796
	flw	%f3, 0(%x8)  #1201 pc 9800
	fsub	%f3, %f3, %f0  #1201 pc 9804
	flw	%f4, 4(%x8)  #1201 pc 9808
	fmul	%f3, %f3, %f4  #1201 pc 9812
	flw	%f4, 4(%x7)  #1203 pc 9816
	fmul	%f4, %f3, %f4  #1203 pc 9820
	fadd	%f4, %f4, %f1  #1203 pc 9824
	fabs	%f4, %f4  #1203 pc 9828
	sw	%x9, 0(%x2)  #1203 pc 9832
	fsw	%f0, 8(%x2)  #1203 pc 9836
	fsw	%f1, 16(%x2)  #1203 pc 9840
	sw	%x8, 24(%x2)  #1203 pc 9844
	sw	%x6, 28(%x2)  #1203 pc 9848
	fsw	%f2, 32(%x2)  #1203 pc 9852
	fsw	%f3, 40(%x2)  #1203 pc 9856
	sw	%x7, 48(%x2)  #1203 pc 9860
	fsw	%f4, 56(%x2)  #1203 pc 9864
	sw	%x1, 64(%x2)  #1203 pc 9868
	addi	%x2, %x2, 68  #1203 pc 9872
	jal	%x1, o_param_b.2635  #1203 pc 9876
	addi	%x2, %x2, -68  #1203 pc 9880
	lw	%x1, 64(%x2) #1203 pc 9884
	fadd	%f1, %f0, %f30  #1203 pc 9888
	flw	%f0, 56(%x2)  #1203 pc 9892
	sw	%x1, 64(%x2)  #1203 pc 9896
	addi	%x2, %x2, 68  #1203 pc 9900
	jal	%x1, fless.2491  #1203 pc 9904
	addi	%x2, %x2, -68  #1203 pc 9908
	lw	%x1, 64(%x2) #1203 pc 9912
	beq	%x6, %x0, 12  #1203 pc 9916
	j	be_else.9140 #pc 9920
	nop #pc 9924
	addi	%x6, %x0, 0  #0 pc 9928
	j	be_cont.9141 #pc 9932
	nop #pc 9936
be_else.9140: #pc 9940
	lw	%x6, 48(%x2)  #1204 pc 9940
	flw	%f0, 8(%x6)  #1204 pc 9944
	flw	%f1, 40(%x2)  #1204 pc 9948
	fmul	%f0, %f1, %f0  #1204 pc 9952
	flw	%f2, 32(%x2)  #1204 pc 9956
	fadd	%f0, %f0, %f2  #1204 pc 9960
	fabs	%f0, %f0  #1204 pc 9964
	lw	%x7, 28(%x2)  #1204 pc 9968
	fsw	%f0, 64(%x2)  #1204 pc 9972
	addi	%x6, %x7, 0  #0 pc 9976
	sw	%x1, 72(%x2)  #1204 pc 9980
	addi	%x2, %x2, 76  #1204 pc 9984
	jal	%x1, o_param_c.2637  #1204 pc 9988
	addi	%x2, %x2, -76  #1204 pc 9992
	lw	%x1, 72(%x2) #1204 pc 9996
	fadd	%f1, %f0, %f30  #1204 pc 10000
	flw	%f0, 64(%x2)  #1204 pc 10004
	sw	%x1, 72(%x2)  #1204 pc 10008
	addi	%x2, %x2, 76  #1204 pc 10012
	jal	%x1, fless.2491  #1204 pc 10016
	addi	%x2, %x2, -76  #1204 pc 10020
	lw	%x1, 72(%x2) #1204 pc 10024
	beq	%x6, %x0, 12  #1204 pc 10028
	j	be_else.9142 #pc 10032
	nop #pc 10036
	addi	%x6, %x0, 0  #0 pc 10040
	j	be_cont.9143 #pc 10044
	nop #pc 10048
be_else.9142: #pc 10052
	lw	%x6, 24(%x2)  #1205 pc 10052
	flw	%f0, 4(%x6)  #1205 pc 10056
	sw	%x1, 72(%x2)  #1205 pc 10060
	addi	%x2, %x2, 76  #1205 pc 10064
	jal	%x1, fiszero.2479  #1205 pc 10068
	addi	%x2, %x2, -76  #1205 pc 10072
	lw	%x1, 72(%x2) #1205 pc 10076
	beq	%x6, %x0, 12  #1205 pc 10080
	j	be_else.9144 #pc 10084
	nop #pc 10088
	addi	%x6, %x0, 1  #0 pc 10092
	j	be_cont.9145 #pc 10096
	nop #pc 10100
be_else.9144: #pc 10104
	addi	%x6, %x0, 0  #0 pc 10104
be_cont.9145: #pc 10108
be_cont.9143: #pc 10108
be_cont.9141: #pc 10108
	beq	%x6, %x0, 12  #1202 pc 10108
	j	be_else.9146 #pc 10112
	nop #pc 10116
	lw	%x6, 24(%x2)  #1210 pc 10120
	flw	%f0, 8(%x6)  #1210 pc 10124
	flw	%f1, 16(%x2)  #1210 pc 10128
	fsub	%f0, %f0, %f1  #1210 pc 10132
	flw	%f2, 12(%x6)  #1210 pc 10136
	fmul	%f0, %f0, %f2  #1210 pc 10140
	lw	%x7, 48(%x2)  #1212 pc 10144
	flw	%f2, 0(%x7)  #1212 pc 10148
	fmul	%f2, %f0, %f2  #1212 pc 10152
	flw	%f3, 8(%x2)  #1212 pc 10156
	fadd	%f2, %f2, %f3  #1212 pc 10160
	fabs	%f2, %f2  #1212 pc 10164
	lw	%x8, 28(%x2)  #1212 pc 10168
	fsw	%f0, 72(%x2)  #1212 pc 10172
	fsw	%f2, 80(%x2)  #1212 pc 10176
	addi	%x6, %x8, 0  #0 pc 10180
	sw	%x1, 88(%x2)  #1212 pc 10184
	addi	%x2, %x2, 92  #1212 pc 10188
	jal	%x1, o_param_a.2633  #1212 pc 10192
	addi	%x2, %x2, -92  #1212 pc 10196
	lw	%x1, 88(%x2) #1212 pc 10200
	fadd	%f1, %f0, %f30  #1212 pc 10204
	flw	%f0, 80(%x2)  #1212 pc 10208
	sw	%x1, 88(%x2)  #1212 pc 10212
	addi	%x2, %x2, 92  #1212 pc 10216
	jal	%x1, fless.2491  #1212 pc 10220
	addi	%x2, %x2, -92  #1212 pc 10224
	lw	%x1, 88(%x2) #1212 pc 10228
	beq	%x6, %x0, 12  #1212 pc 10232
	j	be_else.9147 #pc 10236
	nop #pc 10240
	addi	%x6, %x0, 0  #0 pc 10244
	j	be_cont.9148 #pc 10248
	nop #pc 10252
be_else.9147: #pc 10256
	lw	%x6, 48(%x2)  #1213 pc 10256
	flw	%f0, 8(%x6)  #1213 pc 10260
	flw	%f1, 72(%x2)  #1213 pc 10264
	fmul	%f0, %f1, %f0  #1213 pc 10268
	flw	%f2, 32(%x2)  #1213 pc 10272
	fadd	%f0, %f0, %f2  #1213 pc 10276
	fabs	%f0, %f0  #1213 pc 10280
	lw	%x7, 28(%x2)  #1213 pc 10284
	fsw	%f0, 88(%x2)  #1213 pc 10288
	addi	%x6, %x7, 0  #0 pc 10292
	sw	%x1, 96(%x2)  #1213 pc 10296
	addi	%x2, %x2, 100  #1213 pc 10300
	jal	%x1, o_param_c.2637  #1213 pc 10304
	addi	%x2, %x2, -100  #1213 pc 10308
	lw	%x1, 96(%x2) #1213 pc 10312
	fadd	%f1, %f0, %f30  #1213 pc 10316
	flw	%f0, 88(%x2)  #1213 pc 10320
	sw	%x1, 96(%x2)  #1213 pc 10324
	addi	%x2, %x2, 100  #1213 pc 10328
	jal	%x1, fless.2491  #1213 pc 10332
	addi	%x2, %x2, -100  #1213 pc 10336
	lw	%x1, 96(%x2) #1213 pc 10340
	beq	%x6, %x0, 12  #1213 pc 10344
	j	be_else.9149 #pc 10348
	nop #pc 10352
	addi	%x6, %x0, 0  #0 pc 10356
	j	be_cont.9150 #pc 10360
	nop #pc 10364
be_else.9149: #pc 10368
	lw	%x6, 24(%x2)  #1214 pc 10368
	flw	%f0, 12(%x6)  #1214 pc 10372
	sw	%x1, 96(%x2)  #1214 pc 10376
	addi	%x2, %x2, 100  #1214 pc 10380
	jal	%x1, fiszero.2479  #1214 pc 10384
	addi	%x2, %x2, -100  #1214 pc 10388
	lw	%x1, 96(%x2) #1214 pc 10392
	beq	%x6, %x0, 12  #1214 pc 10396
	j	be_else.9151 #pc 10400
	nop #pc 10404
	addi	%x6, %x0, 1  #0 pc 10408
	j	be_cont.9152 #pc 10412
	nop #pc 10416
be_else.9151: #pc 10420
	addi	%x6, %x0, 0  #0 pc 10420
be_cont.9152: #pc 10424
be_cont.9150: #pc 10424
be_cont.9148: #pc 10424
	beq	%x6, %x0, 12  #1211 pc 10424
	j	be_else.9153 #pc 10428
	nop #pc 10432
	lw	%x6, 24(%x2)  #1219 pc 10436
	flw	%f0, 16(%x6)  #1219 pc 10440
	flw	%f1, 32(%x2)  #1219 pc 10444
	fsub	%f0, %f0, %f1  #1219 pc 10448
	flw	%f1, 20(%x6)  #1219 pc 10452
	fmul	%f0, %f0, %f1  #1219 pc 10456
	lw	%x7, 48(%x2)  #1221 pc 10460
	flw	%f1, 0(%x7)  #1221 pc 10464
	fmul	%f1, %f0, %f1  #1221 pc 10468
	flw	%f2, 8(%x2)  #1221 pc 10472
	fadd	%f1, %f1, %f2  #1221 pc 10476
	fabs	%f1, %f1  #1221 pc 10480
	lw	%x8, 28(%x2)  #1221 pc 10484
	fsw	%f0, 96(%x2)  #1221 pc 10488
	fsw	%f1, 104(%x2)  #1221 pc 10492
	addi	%x6, %x8, 0  #0 pc 10496
	sw	%x1, 112(%x2)  #1221 pc 10500
	addi	%x2, %x2, 116  #1221 pc 10504
	jal	%x1, o_param_a.2633  #1221 pc 10508
	addi	%x2, %x2, -116  #1221 pc 10512
	lw	%x1, 112(%x2) #1221 pc 10516
	fadd	%f1, %f0, %f30  #1221 pc 10520
	flw	%f0, 104(%x2)  #1221 pc 10524
	sw	%x1, 112(%x2)  #1221 pc 10528
	addi	%x2, %x2, 116  #1221 pc 10532
	jal	%x1, fless.2491  #1221 pc 10536
	addi	%x2, %x2, -116  #1221 pc 10540
	lw	%x1, 112(%x2) #1221 pc 10544
	beq	%x6, %x0, 12  #1221 pc 10548
	j	be_else.9154 #pc 10552
	nop #pc 10556
	addi	%x6, %x0, 0  #0 pc 10560
	j	be_cont.9155 #pc 10564
	nop #pc 10568
be_else.9154: #pc 10572
	lw	%x6, 48(%x2)  #1222 pc 10572
	flw	%f0, 4(%x6)  #1222 pc 10576
	flw	%f1, 96(%x2)  #1222 pc 10580
	fmul	%f0, %f1, %f0  #1222 pc 10584
	flw	%f2, 16(%x2)  #1222 pc 10588
	fadd	%f0, %f0, %f2  #1222 pc 10592
	fabs	%f0, %f0  #1222 pc 10596
	lw	%x6, 28(%x2)  #1222 pc 10600
	fsw	%f0, 112(%x2)  #1222 pc 10604
	sw	%x1, 120(%x2)  #1222 pc 10608
	addi	%x2, %x2, 124  #1222 pc 10612
	jal	%x1, o_param_b.2635  #1222 pc 10616
	addi	%x2, %x2, -124  #1222 pc 10620
	lw	%x1, 120(%x2) #1222 pc 10624
	fadd	%f1, %f0, %f30  #1222 pc 10628
	flw	%f0, 112(%x2)  #1222 pc 10632
	sw	%x1, 120(%x2)  #1222 pc 10636
	addi	%x2, %x2, 124  #1222 pc 10640
	jal	%x1, fless.2491  #1222 pc 10644
	addi	%x2, %x2, -124  #1222 pc 10648
	lw	%x1, 120(%x2) #1222 pc 10652
	beq	%x6, %x0, 12  #1222 pc 10656
	j	be_else.9156 #pc 10660
	nop #pc 10664
	addi	%x6, %x0, 0  #0 pc 10668
	j	be_cont.9157 #pc 10672
	nop #pc 10676
be_else.9156: #pc 10680
	lw	%x6, 24(%x2)  #1223 pc 10680
	flw	%f0, 20(%x6)  #1223 pc 10684
	sw	%x1, 120(%x2)  #1223 pc 10688
	addi	%x2, %x2, 124  #1223 pc 10692
	jal	%x1, fiszero.2479  #1223 pc 10696
	addi	%x2, %x2, -124  #1223 pc 10700
	lw	%x1, 120(%x2) #1223 pc 10704
	beq	%x6, %x0, 12  #1223 pc 10708
	j	be_else.9158 #pc 10712
	nop #pc 10716
	addi	%x6, %x0, 1  #0 pc 10720
	j	be_cont.9159 #pc 10724
	nop #pc 10728
be_else.9158: #pc 10732
	addi	%x6, %x0, 0  #0 pc 10732
be_cont.9159: #pc 10736
be_cont.9157: #pc 10736
be_cont.9155: #pc 10736
	beq	%x6, %x0, 12  #1220 pc 10736
	j	be_else.9160 #pc 10740
	nop #pc 10744
	addi	%x6, %x0, 0  #0 pc 10748
	ret #pc 10752
	nop #pc 10756
be_else.9160: #pc 10760
	lw	%x6, 0(%x2)  #1227 pc 10760
	flw	%f0, 96(%x2)  #1227 pc 10764
	fsw	%f0, 0(%x6)  #1227 pc 10768
	addi	%x6, %x0, 3  #0 pc 10772
	ret #pc 10776
	nop #pc 10780
be_else.9153: #pc 10784
	lw	%x6, 0(%x2)  #1218 pc 10784
	flw	%f0, 72(%x2)  #1218 pc 10788
	fsw	%f0, 0(%x6)  #1218 pc 10792
	addi	%x6, %x0, 2  #0 pc 10796
	ret #pc 10800
	nop #pc 10804
be_else.9146: #pc 10808
	lw	%x6, 0(%x2)  #1209 pc 10808
	flw	%f0, 40(%x2)  #1209 pc 10812
	fsw	%f0, 0(%x6)  #1209 pc 10816
	addi	%x6, %x0, 1  #0 pc 10820
	ret #pc 10824
	nop #pc 10828
solver_surface_fast.2768:  #pc 10832
	lw	%x6, 4(%x29)  #0 pc 10832
	flw	%f3, 0(%x7)  #1234 pc 10836
	sw	%x6, 0(%x2)  #1234 pc 10840
	fsw	%f2, 8(%x2)  #1234 pc 10844
	fsw	%f1, 16(%x2)  #1234 pc 10848
	fsw	%f0, 24(%x2)  #1234 pc 10852
	sw	%x7, 32(%x2)  #1234 pc 10856
	fadd	%f0, %f3, %f30  #0 pc 10860
	sw	%x1, 36(%x2)  #1234 pc 10864
	addi	%x2, %x2, 40  #1234 pc 10868
	jal	%x1, fisneg.2483  #1234 pc 10872
	addi	%x2, %x2, -40  #1234 pc 10876
	lw	%x1, 36(%x2) #1234 pc 10880
	beq	%x6, %x0, 12  #1234 pc 10884
	j	be_else.9162 #pc 10888
	nop #pc 10892
	addi	%x6, %x0, 0  #0 pc 10896
	ret #pc 10900
	nop #pc 10904
be_else.9162: #pc 10908
	lw	%x6, 32(%x2)  #1236 pc 10908
	flw	%f0, 4(%x6)  #1236 pc 10912
	flw	%f1, 24(%x2)  #1236 pc 10916
	fmul	%f0, %f0, %f1  #1236 pc 10920
	flw	%f1, 8(%x6)  #1236 pc 10924
	flw	%f2, 16(%x2)  #1236 pc 10928
	fmul	%f1, %f1, %f2  #1236 pc 10932
	fadd	%f0, %f0, %f1  #1236 pc 10936
	flw	%f1, 12(%x6)  #1236 pc 10940
	flw	%f2, 8(%x2)  #1236 pc 10944
	fmul	%f1, %f1, %f2  #1236 pc 10948
	fadd	%f0, %f0, %f1  #1236 pc 10952
	lw	%x6, 0(%x2)  #1235 pc 10956
	fsw	%f0, 0(%x6)  #1235 pc 10960
	addi	%x6, %x0, 1  #0 pc 10964
	ret #pc 10968
	nop #pc 10972
solver_second_fast.2774:  #pc 10976
	lw	%x8, 4(%x29)  #0 pc 10976
	flw	%f3, 0(%x7)  #1244 pc 10980
	sw	%x8, 0(%x2)  #1245 pc 10984
	fsw	%f3, 8(%x2)  #1245 pc 10988
	sw	%x6, 16(%x2)  #1245 pc 10992
	fsw	%f2, 24(%x2)  #1245 pc 10996
	fsw	%f1, 32(%x2)  #1245 pc 11000
	fsw	%f0, 40(%x2)  #1245 pc 11004
	sw	%x7, 48(%x2)  #1245 pc 11008
	fadd	%f0, %f3, %f30  #0 pc 11012
	sw	%x1, 52(%x2)  #1245 pc 11016
	addi	%x2, %x2, 56  #1245 pc 11020
	jal	%x1, fiszero.2479  #1245 pc 11024
	addi	%x2, %x2, -56  #1245 pc 11028
	lw	%x1, 52(%x2) #1245 pc 11032
	beq	%x6, %x0, 12  #1245 pc 11036
	j	be_else.9165 #pc 11040
	nop #pc 11044
	lw	%x6, 48(%x2)  #1248 pc 11048
	flw	%f0, 4(%x6)  #1248 pc 11052
	flw	%f1, 40(%x2)  #1248 pc 11056
	fmul	%f0, %f0, %f1  #1248 pc 11060
	flw	%f2, 8(%x6)  #1248 pc 11064
	flw	%f3, 32(%x2)  #1248 pc 11068
	fmul	%f2, %f2, %f3  #1248 pc 11072
	fadd	%f0, %f0, %f2  #1248 pc 11076
	flw	%f2, 12(%x6)  #1248 pc 11080
	flw	%f4, 24(%x2)  #1248 pc 11084
	fmul	%f2, %f2, %f4  #1248 pc 11088
	fadd	%f0, %f0, %f2  #1248 pc 11092
	lw	%x7, 16(%x2)  #1249 pc 11096
	fsw	%f0, 56(%x2)  #1249 pc 11100
	addi	%x6, %x7, 0  #0 pc 11104
	fadd	%f2, %f4, %f30  #0 pc 11108
	fadd	%f0, %f1, %f30  #0 pc 11112
	fadd	%f1, %f3, %f30  #0 pc 11116
	sw	%x1, 64(%x2)  #1249 pc 11120
	addi	%x2, %x2, 68  #1249 pc 11124
	jal	%x1, quadratic.2738  #1249 pc 11128
	addi	%x2, %x2, -68  #1249 pc 11132
	lw	%x1, 64(%x2) #1249 pc 11136
	lw	%x6, 16(%x2)  #1250 pc 11140
	fsw	%f0, 64(%x2)  #1250 pc 11144
	sw	%x1, 72(%x2)  #1250 pc 11148
	addi	%x2, %x2, 76  #1250 pc 11152
	jal	%x1, o_form.2625  #1250 pc 11156
	addi	%x2, %x2, -76  #1250 pc 11160
	lw	%x1, 72(%x2) #1250 pc 11164
	addi	%x31, %x0, 3  #pc 11168
	beq	%x6, %x31, 12  #1250 pc 11172
	j	be_else.9167 #pc 11176
	nop #pc 11180
	fmv	%f0, l.6188  #0 pc 11184
	flw	%f1, 64(%x2)  #1250 pc 11188
	fsub	%f0, %f1, %f0  #1250 pc 11192
	j	be_cont.9168 #pc 11196
	nop #pc 11200
be_else.9167: #pc 11204
	flw	%f0, 64(%x2)  #1250 pc 11204
be_cont.9168: #pc 11208
	flw	%f1, 56(%x2)  #1251 pc 11208
	fsw	%f0, 72(%x2)  #1251 pc 11212
	fadd	%f0, %f1, %f30  #0 pc 11216
	sw	%x1, 80(%x2)  #1251 pc 11220
	addi	%x2, %x2, 84  #1251 pc 11224
	jal	%x1, fsqr.2487  #1251 pc 11228
	addi	%x2, %x2, -84  #1251 pc 11232
	lw	%x1, 80(%x2) #1251 pc 11236
	flw	%f1, 72(%x2)  #1251 pc 11240
	flw	%f2, 8(%x2)  #1251 pc 11244
	fmul	%f1, %f2, %f1  #1251 pc 11248
	fsub	%f0, %f0, %f1  #1251 pc 11252
	fsw	%f0, 80(%x2)  #1252 pc 11256
	sw	%x1, 88(%x2)  #1252 pc 11260
	addi	%x2, %x2, 92  #1252 pc 11264
	jal	%x1, fispos.2481  #1252 pc 11268
	addi	%x2, %x2, -92  #1252 pc 11272
	lw	%x1, 88(%x2) #1252 pc 11276
	beq	%x6, %x0, 12  #1252 pc 11280
	j	be_else.9169 #pc 11284
	nop #pc 11288
	addi	%x6, %x0, 0  #0 pc 11292
	ret #pc 11296
	nop #pc 11300
be_else.9169: #pc 11304
	lw	%x6, 16(%x2)  #1253 pc 11304
	sw	%x1, 88(%x2)  #1253 pc 11308
	addi	%x2, %x2, 92  #1253 pc 11312
	jal	%x1, o_isinvert.2629  #1253 pc 11316
	addi	%x2, %x2, -92  #1253 pc 11320
	lw	%x1, 88(%x2) #1253 pc 11324
	beq	%x6, %x0, 12  #1253 pc 11328
	j	be_else.9170 #pc 11332
	nop #pc 11336
	flw	%f0, 80(%x2)  #1256 pc 11340
	fsqrt	%f0, %f0  #1256 pc 11344
	flw	%f1, 56(%x2)  #1256 pc 11348
	fsub	%f0, %f1, %f0  #1256 pc 11352
	lw	%x6, 48(%x2)  #1256 pc 11356
	flw	%f1, 16(%x6)  #1256 pc 11360
	fmul	%f0, %f0, %f1  #1256 pc 11364
	lw	%x6, 0(%x2)  #1256 pc 11368
	fsw	%f0, 0(%x6)  #1256 pc 11372
	j	be_cont.9171 #pc 11376
	nop #pc 11380
be_else.9170: #pc 11384
	flw	%f0, 80(%x2)  #1254 pc 11384
	fsqrt	%f0, %f0  #1254 pc 11388
	flw	%f1, 56(%x2)  #1254 pc 11392
	fadd	%f0, %f1, %f0  #1254 pc 11396
	lw	%x6, 48(%x2)  #1254 pc 11400
	flw	%f1, 16(%x6)  #1254 pc 11404
	fmul	%f0, %f0, %f1  #1254 pc 11408
	lw	%x6, 0(%x2)  #1254 pc 11412
	fsw	%f0, 0(%x6)  #1254 pc 11416
be_cont.9171: #pc 11420
	addi	%x6, %x0, 1  #0 pc 11420
	ret #pc 11424
	nop #pc 11428
be_else.9165: #pc 11432
	addi	%x6, %x0, 0  #0 pc 11432
	ret #pc 11436
	nop #pc 11440
solver_fast.2780:  #pc 11444
	lw	%x9, 16(%x29)  #1263 pc 11444
	lw	%x10, 12(%x29)  #1263 pc 11448
	lw	%x11, 8(%x29)  #1263 pc 11452
	lw	%x12, 4(%x29)  #1263 pc 11456
	slli	%x13, %x6, 2  #1263 pc 11460
	add	%x31, %x13, %x12  #1263 pc 11464
	lw	%x12, 0(%x31)  #1263 pc 11468
	flw	%f0, 0(%x8)  #1264 pc 11472
	sw	%x10, 0(%x2)  #1264 pc 11476
	sw	%x9, 4(%x2)  #1264 pc 11480
	sw	%x11, 8(%x2)  #1264 pc 11484
	sw	%x6, 12(%x2)  #1264 pc 11488
	sw	%x7, 16(%x2)  #1264 pc 11492
	sw	%x12, 20(%x2)  #1264 pc 11496
	sw	%x8, 24(%x2)  #1264 pc 11500
	fsw	%f0, 32(%x2)  #1264 pc 11504
	addi	%x6, %x12, 0  #0 pc 11508
	sw	%x1, 40(%x2)  #1264 pc 11512
	addi	%x2, %x2, 44  #1264 pc 11516
	jal	%x1, o_param_x.2641  #1264 pc 11520
	addi	%x2, %x2, -44  #1264 pc 11524
	lw	%x1, 40(%x2) #1264 pc 11528
	flw	%f1, 32(%x2)  #1264 pc 11532
	fsub	%f0, %f1, %f0  #1264 pc 11536
	lw	%x6, 24(%x2)  #1265 pc 11540
	flw	%f1, 4(%x6)  #1265 pc 11544
	lw	%x7, 20(%x2)  #1265 pc 11548
	fsw	%f0, 40(%x2)  #1265 pc 11552
	fsw	%f1, 48(%x2)  #1265 pc 11556
	addi	%x6, %x7, 0  #0 pc 11560
	sw	%x1, 56(%x2)  #1265 pc 11564
	addi	%x2, %x2, 60  #1265 pc 11568
	jal	%x1, o_param_y.2643  #1265 pc 11572
	addi	%x2, %x2, -60  #1265 pc 11576
	lw	%x1, 56(%x2) #1265 pc 11580
	flw	%f1, 48(%x2)  #1265 pc 11584
	fsub	%f0, %f1, %f0  #1265 pc 11588
	lw	%x6, 24(%x2)  #1266 pc 11592
	flw	%f1, 8(%x6)  #1266 pc 11596
	lw	%x6, 20(%x2)  #1266 pc 11600
	fsw	%f0, 56(%x2)  #1266 pc 11604
	fsw	%f1, 64(%x2)  #1266 pc 11608
	sw	%x1, 72(%x2)  #1266 pc 11612
	addi	%x2, %x2, 76  #1266 pc 11616
	jal	%x1, o_param_z.2645  #1266 pc 11620
	addi	%x2, %x2, -76  #1266 pc 11624
	lw	%x1, 72(%x2) #1266 pc 11628
	flw	%f1, 64(%x2)  #1266 pc 11632
	fsub	%f0, %f1, %f0  #1266 pc 11636
	lw	%x6, 16(%x2)  #1267 pc 11640
	fsw	%f0, 72(%x2)  #1267 pc 11644
	sw	%x1, 80(%x2)  #1267 pc 11648
	addi	%x2, %x2, 84  #1267 pc 11652
	jal	%x1, d_const.2686  #1267 pc 11656
	addi	%x2, %x2, -84  #1267 pc 11660
	lw	%x1, 80(%x2) #1267 pc 11664
	lw	%x7, 12(%x2)  #1268 pc 11668
	slli	%x7, %x7, 2  #1268 pc 11672
	add	%x31, %x7, %x6  #1268 pc 11676
	lw	%x6, 0(%x31)  #1268 pc 11680
	lw	%x7, 20(%x2)  #1269 pc 11684
	sw	%x6, 80(%x2)  #1269 pc 11688
	addi	%x6, %x7, 0  #0 pc 11692
	sw	%x1, 84(%x2)  #1269 pc 11696
	addi	%x2, %x2, 88  #1269 pc 11700
	jal	%x1, o_form.2625  #1269 pc 11704
	addi	%x2, %x2, -88  #1269 pc 11708
	lw	%x1, 84(%x2) #1269 pc 11712
	addi	%x31, %x0, 1  #pc 11716
	beq	%x6, %x31, 12  #1270 pc 11720
	j	be_else.9173 #pc 11724
	nop #pc 11728
	lw	%x6, 16(%x2)  #1271 pc 11732
	sw	%x1, 84(%x2)  #1271 pc 11736
	addi	%x2, %x2, 88  #1271 pc 11740
	jal	%x1, d_vec.2684  #1271 pc 11744
	addi	%x2, %x2, -88  #1271 pc 11748
	lw	%x1, 84(%x2) #1271 pc 11752
	addi	%x7, %x6, 0  #1271 pc 11756
	flw	%f0, 40(%x2)  #1271 pc 11760
	flw	%f1, 56(%x2)  #1271 pc 11764
	flw	%f2, 72(%x2)  #1271 pc 11768
	lw	%x6, 20(%x2)  #1271 pc 11772
	lw	%x8, 80(%x2)  #1271 pc 11776
	lw	%x29, 8(%x2)  #1271 pc 11780
	lw	%x30, 0(%x29)  #1271 pc 11784
	jalr	%x0, %x30, 0  #1271 pc 11788
	nop #pc 11792
be_else.9173: #pc 11796
	addi	%x31, %x0, 2  #pc 11796
	beq	%x6, %x31, 12  #1272 pc 11800
	j	be_else.9174 #pc 11804
	nop #pc 11808
	flw	%f0, 40(%x2)  #1273 pc 11812
	flw	%f1, 56(%x2)  #1273 pc 11816
	flw	%f2, 72(%x2)  #1273 pc 11820
	lw	%x6, 20(%x2)  #1273 pc 11824
	lw	%x7, 80(%x2)  #1273 pc 11828
	lw	%x29, 4(%x2)  #1273 pc 11832
	lw	%x30, 0(%x29)  #1273 pc 11836
	jalr	%x0, %x30, 0  #1273 pc 11840
	nop #pc 11844
be_else.9174: #pc 11848
	flw	%f0, 40(%x2)  #1275 pc 11848
	flw	%f1, 56(%x2)  #1275 pc 11852
	flw	%f2, 72(%x2)  #1275 pc 11856
	lw	%x6, 20(%x2)  #1275 pc 11860
	lw	%x7, 80(%x2)  #1275 pc 11864
	lw	%x29, 0(%x2)  #1275 pc 11868
	lw	%x30, 0(%x29)  #1275 pc 11872
	jalr	%x0, %x30, 0  #1275 pc 11876
	nop #pc 11880
solver_surface_fast2.2784:  #pc 11884
	lw	%x6, 4(%x29)  #0 pc 11884
	flw	%f0, 0(%x7)  #1283 pc 11888
	sw	%x6, 0(%x2)  #1283 pc 11892
	sw	%x8, 4(%x2)  #1283 pc 11896
	sw	%x7, 8(%x2)  #1283 pc 11900
	sw	%x1, 12(%x2)  #1283 pc 11904
	addi	%x2, %x2, 16  #1283 pc 11908
	jal	%x1, fisneg.2483  #1283 pc 11912
	addi	%x2, %x2, -16  #1283 pc 11916
	lw	%x1, 12(%x2) #1283 pc 11920
	beq	%x6, %x0, 12  #1283 pc 11924
	j	be_else.9175 #pc 11928
	nop #pc 11932
	addi	%x6, %x0, 0  #0 pc 11936
	ret #pc 11940
	nop #pc 11944
be_else.9175: #pc 11948
	lw	%x6, 8(%x2)  #1284 pc 11948
	flw	%f0, 0(%x6)  #1284 pc 11952
	lw	%x6, 4(%x2)  #1284 pc 11956
	flw	%f1, 12(%x6)  #1284 pc 11960
	fmul	%f0, %f0, %f1  #1284 pc 11964
	lw	%x6, 0(%x2)  #1284 pc 11968
	fsw	%f0, 0(%x6)  #1284 pc 11972
	addi	%x6, %x0, 1  #0 pc 11976
	ret #pc 11980
	nop #pc 11984
solver_second_fast2.2791:  #pc 11988
	lw	%x9, 4(%x29)  #0 pc 11988
	flw	%f3, 0(%x7)  #1292 pc 11992
	sw	%x9, 0(%x2)  #1293 pc 11996
	sw	%x6, 4(%x2)  #1293 pc 12000
	fsw	%f3, 8(%x2)  #1293 pc 12004
	sw	%x8, 16(%x2)  #1293 pc 12008
	fsw	%f2, 24(%x2)  #1293 pc 12012
	fsw	%f1, 32(%x2)  #1293 pc 12016
	fsw	%f0, 40(%x2)  #1293 pc 12020
	sw	%x7, 48(%x2)  #1293 pc 12024
	fadd	%f0, %f3, %f30  #0 pc 12028
	sw	%x1, 52(%x2)  #1293 pc 12032
	addi	%x2, %x2, 56  #1293 pc 12036
	jal	%x1, fiszero.2479  #1293 pc 12040
	addi	%x2, %x2, -56  #1293 pc 12044
	lw	%x1, 52(%x2) #1293 pc 12048
	beq	%x6, %x0, 12  #1293 pc 12052
	j	be_else.9177 #pc 12056
	nop #pc 12060
	lw	%x6, 48(%x2)  #1296 pc 12064
	flw	%f0, 4(%x6)  #1296 pc 12068
	flw	%f1, 40(%x2)  #1296 pc 12072
	fmul	%f0, %f0, %f1  #1296 pc 12076
	flw	%f1, 8(%x6)  #1296 pc 12080
	flw	%f2, 32(%x2)  #1296 pc 12084
	fmul	%f1, %f1, %f2  #1296 pc 12088
	fadd	%f0, %f0, %f1  #1296 pc 12092
	flw	%f1, 12(%x6)  #1296 pc 12096
	flw	%f2, 24(%x2)  #1296 pc 12100
	fmul	%f1, %f1, %f2  #1296 pc 12104
	fadd	%f0, %f0, %f1  #1296 pc 12108
	lw	%x7, 16(%x2)  #1297 pc 12112
	flw	%f1, 12(%x7)  #1297 pc 12116
	fsw	%f0, 56(%x2)  #1298 pc 12120
	fsw	%f1, 64(%x2)  #1298 pc 12124
	sw	%x1, 72(%x2)  #1298 pc 12128
	addi	%x2, %x2, 76  #1298 pc 12132
	jal	%x1, fsqr.2487  #1298 pc 12136
	addi	%x2, %x2, -76  #1298 pc 12140
	lw	%x1, 72(%x2) #1298 pc 12144
	flw	%f1, 64(%x2)  #1298 pc 12148
	flw	%f2, 8(%x2)  #1298 pc 12152
	fmul	%f1, %f2, %f1  #1298 pc 12156
	fsub	%f0, %f0, %f1  #1298 pc 12160
	fsw	%f0, 72(%x2)  #1299 pc 12164
	sw	%x1, 80(%x2)  #1299 pc 12168
	addi	%x2, %x2, 84  #1299 pc 12172
	jal	%x1, fispos.2481  #1299 pc 12176
	addi	%x2, %x2, -84  #1299 pc 12180
	lw	%x1, 80(%x2) #1299 pc 12184
	beq	%x6, %x0, 12  #1299 pc 12188
	j	be_else.9179 #pc 12192
	nop #pc 12196
	addi	%x6, %x0, 0  #0 pc 12200
	ret #pc 12204
	nop #pc 12208
be_else.9179: #pc 12212
	lw	%x6, 4(%x2)  #1300 pc 12212
	sw	%x1, 80(%x2)  #1300 pc 12216
	addi	%x2, %x2, 84  #1300 pc 12220
	jal	%x1, o_isinvert.2629  #1300 pc 12224
	addi	%x2, %x2, -84  #1300 pc 12228
	lw	%x1, 80(%x2) #1300 pc 12232
	beq	%x6, %x0, 12  #1300 pc 12236
	j	be_else.9180 #pc 12240
	nop #pc 12244
	flw	%f0, 72(%x2)  #1303 pc 12248
	fsqrt	%f0, %f0  #1303 pc 12252
	flw	%f1, 56(%x2)  #1303 pc 12256
	fsub	%f0, %f1, %f0  #1303 pc 12260
	lw	%x6, 48(%x2)  #1303 pc 12264
	flw	%f1, 16(%x6)  #1303 pc 12268
	fmul	%f0, %f0, %f1  #1303 pc 12272
	lw	%x6, 0(%x2)  #1303 pc 12276
	fsw	%f0, 0(%x6)  #1303 pc 12280
	j	be_cont.9181 #pc 12284
	nop #pc 12288
be_else.9180: #pc 12292
	flw	%f0, 72(%x2)  #1301 pc 12292
	fsqrt	%f0, %f0  #1301 pc 12296
	flw	%f1, 56(%x2)  #1301 pc 12300
	fadd	%f0, %f1, %f0  #1301 pc 12304
	lw	%x6, 48(%x2)  #1301 pc 12308
	flw	%f1, 16(%x6)  #1301 pc 12312
	fmul	%f0, %f0, %f1  #1301 pc 12316
	lw	%x6, 0(%x2)  #1301 pc 12320
	fsw	%f0, 0(%x6)  #1301 pc 12324
be_cont.9181: #pc 12328
	addi	%x6, %x0, 1  #0 pc 12328
	ret #pc 12332
	nop #pc 12336
be_else.9177: #pc 12340
	addi	%x6, %x0, 0  #0 pc 12340
	ret #pc 12344
	nop #pc 12348
solver_fast2.2798:  #pc 12352
	lw	%x8, 16(%x29)  #1310 pc 12352
	lw	%x9, 12(%x29)  #1310 pc 12356
	lw	%x10, 8(%x29)  #1310 pc 12360
	lw	%x11, 4(%x29)  #1310 pc 12364
	slli	%x12, %x6, 2  #1310 pc 12368
	add	%x31, %x12, %x11  #1310 pc 12372
	lw	%x11, 0(%x31)  #1310 pc 12376
	sw	%x9, 0(%x2)  #1311 pc 12380
	sw	%x8, 4(%x2)  #1311 pc 12384
	sw	%x10, 8(%x2)  #1311 pc 12388
	sw	%x11, 12(%x2)  #1311 pc 12392
	sw	%x6, 16(%x2)  #1311 pc 12396
	sw	%x7, 20(%x2)  #1311 pc 12400
	addi	%x6, %x11, 0  #0 pc 12404
	sw	%x1, 24(%x2)  #1311 pc 12408
	addi	%x2, %x2, 28  #1311 pc 12412
	jal	%x1, o_param_ctbl.2663  #1311 pc 12416
	addi	%x2, %x2, -28  #1311 pc 12420
	lw	%x1, 24(%x2) #1311 pc 12424
	flw	%f0, 0(%x6)  #1312 pc 12428
	flw	%f1, 4(%x6)  #1313 pc 12432
	flw	%f2, 8(%x6)  #1314 pc 12436
	lw	%x7, 20(%x2)  #1315 pc 12440
	sw	%x6, 24(%x2)  #1315 pc 12444
	fsw	%f2, 32(%x2)  #1315 pc 12448
	fsw	%f1, 40(%x2)  #1315 pc 12452
	fsw	%f0, 48(%x2)  #1315 pc 12456
	addi	%x6, %x7, 0  #0 pc 12460
	sw	%x1, 56(%x2)  #1315 pc 12464
	addi	%x2, %x2, 60  #1315 pc 12468
	jal	%x1, d_const.2686  #1315 pc 12472
	addi	%x2, %x2, -60  #1315 pc 12476
	lw	%x1, 56(%x2) #1315 pc 12480
	lw	%x7, 16(%x2)  #1316 pc 12484
	slli	%x7, %x7, 2  #1316 pc 12488
	add	%x31, %x7, %x6  #1316 pc 12492
	lw	%x6, 0(%x31)  #1316 pc 12496
	lw	%x7, 12(%x2)  #1317 pc 12500
	sw	%x6, 56(%x2)  #1317 pc 12504
	addi	%x6, %x7, 0  #0 pc 12508
	sw	%x1, 60(%x2)  #1317 pc 12512
	addi	%x2, %x2, 64  #1317 pc 12516
	jal	%x1, o_form.2625  #1317 pc 12520
	addi	%x2, %x2, -64  #1317 pc 12524
	lw	%x1, 60(%x2) #1317 pc 12528
	addi	%x31, %x0, 1  #pc 12532
	beq	%x6, %x31, 12  #1318 pc 12536
	j	be_else.9183 #pc 12540
	nop #pc 12544
	lw	%x6, 20(%x2)  #1319 pc 12548
	sw	%x1, 60(%x2)  #1319 pc 12552
	addi	%x2, %x2, 64  #1319 pc 12556
	jal	%x1, d_vec.2684  #1319 pc 12560
	addi	%x2, %x2, -64  #1319 pc 12564
	lw	%x1, 60(%x2) #1319 pc 12568
	addi	%x7, %x6, 0  #1319 pc 12572
	flw	%f0, 48(%x2)  #1319 pc 12576
	flw	%f1, 40(%x2)  #1319 pc 12580
	flw	%f2, 32(%x2)  #1319 pc 12584
	lw	%x6, 12(%x2)  #1319 pc 12588
	lw	%x8, 56(%x2)  #1319 pc 12592
	lw	%x29, 8(%x2)  #1319 pc 12596
	lw	%x30, 0(%x29)  #1319 pc 12600
	jalr	%x0, %x30, 0  #1319 pc 12604
	nop #pc 12608
be_else.9183: #pc 12612
	addi	%x31, %x0, 2  #pc 12612
	beq	%x6, %x31, 12  #1320 pc 12616
	j	be_else.9184 #pc 12620
	nop #pc 12624
	flw	%f0, 48(%x2)  #1321 pc 12628
	flw	%f1, 40(%x2)  #1321 pc 12632
	flw	%f2, 32(%x2)  #1321 pc 12636
	lw	%x6, 12(%x2)  #1321 pc 12640
	lw	%x7, 56(%x2)  #1321 pc 12644
	lw	%x8, 24(%x2)  #1321 pc 12648
	lw	%x29, 4(%x2)  #1321 pc 12652
	lw	%x30, 0(%x29)  #1321 pc 12656
	jalr	%x0, %x30, 0  #1321 pc 12660
	nop #pc 12664
be_else.9184: #pc 12668
	flw	%f0, 48(%x2)  #1323 pc 12668
	flw	%f1, 40(%x2)  #1323 pc 12672
	flw	%f2, 32(%x2)  #1323 pc 12676
	lw	%x6, 12(%x2)  #1323 pc 12680
	lw	%x7, 56(%x2)  #1323 pc 12684
	lw	%x8, 24(%x2)  #1323 pc 12688
	lw	%x29, 0(%x2)  #1323 pc 12692
	lw	%x30, 0(%x29)  #1323 pc 12696
	jalr	%x0, %x30, 0  #1323 pc 12700
	nop #pc 12704
setup_rect_table.2801:  #pc 12708
	addi	%x8, %x0, 6  #0 pc 12708
	fmv	%f0, l.6176  #0 pc 12712
	sw	%x7, 0(%x2)  #1332 pc 12716
	sw	%x6, 4(%x2)  #1332 pc 12720
	addi	%x6, %x8, 0  #0 pc 12724
	sw	%x1, 8(%x2)  #1332 pc 12728
	addi	%x2, %x2, 12  #1332 pc 12732
	jal	%x1, create_float_array.2541  #1332 pc 12736
	addi	%x2, %x2, -12  #1332 pc 12740
	lw	%x1, 8(%x2) #1332 pc 12744
	lw	%x7, 4(%x2)  #1334 pc 12748
	flw	%f0, 0(%x7)  #1334 pc 12752
	sw	%x6, 8(%x2)  #1334 pc 12756
	sw	%x1, 12(%x2)  #1334 pc 12760
	addi	%x2, %x2, 16  #1334 pc 12764
	jal	%x1, fiszero.2479  #1334 pc 12768
	addi	%x2, %x2, -16  #1334 pc 12772
	lw	%x1, 12(%x2) #1334 pc 12776
	beq	%x6, %x0, 12  #1334 pc 12780
	j	be_else.9185 #pc 12784
	nop #pc 12788
	lw	%x6, 0(%x2)  #1338 pc 12792
	sw	%x1, 12(%x2)  #1338 pc 12796
	addi	%x2, %x2, 16  #1338 pc 12800
	jal	%x1, o_isinvert.2629  #1338 pc 12804
	addi	%x2, %x2, -16  #1338 pc 12808
	lw	%x1, 12(%x2) #1338 pc 12812
	lw	%x7, 4(%x2)  #1338 pc 12816
	flw	%f0, 0(%x7)  #1338 pc 12820
	sw	%x6, 12(%x2)  #1338 pc 12824
	sw	%x1, 16(%x2)  #1338 pc 12828
	addi	%x2, %x2, 20  #1338 pc 12832
	jal	%x1, fisneg.2483  #1338 pc 12836
	addi	%x2, %x2, -20  #1338 pc 12840
	lw	%x1, 16(%x2) #1338 pc 12844
	addi	%x7, %x6, 0  #1338 pc 12848
	lw	%x6, 12(%x2)  #1338 pc 12852
	sw	%x1, 16(%x2)  #1338 pc 12856
	addi	%x2, %x2, 20  #1338 pc 12860
	jal	%x1, xor.2574  #1338 pc 12864
	addi	%x2, %x2, -20  #1338 pc 12868
	lw	%x1, 16(%x2) #1338 pc 12872
	lw	%x7, 0(%x2)  #1338 pc 12876
	sw	%x6, 16(%x2)  #1338 pc 12880
	addi	%x6, %x7, 0  #0 pc 12884
	sw	%x1, 20(%x2)  #1338 pc 12888
	addi	%x2, %x2, 24  #1338 pc 12892
	jal	%x1, o_param_a.2633  #1338 pc 12896
	addi	%x2, %x2, -24  #1338 pc 12900
	lw	%x1, 20(%x2) #1338 pc 12904
	lw	%x6, 16(%x2)  #1338 pc 12908
	sw	%x1, 20(%x2)  #1338 pc 12912
	addi	%x2, %x2, 24  #1338 pc 12916
	jal	%x1, fneg_cond.2579  #1338 pc 12920
	addi	%x2, %x2, -24  #1338 pc 12924
	lw	%x1, 20(%x2) #1338 pc 12928
	lw	%x6, 8(%x2)  #1338 pc 12932
	fsw	%f0, 0(%x6)  #1338 pc 12936
	fmv	%f0, l.6188  #0 pc 12940
	lw	%x7, 4(%x2)  #1340 pc 12944
	flw	%f1, 0(%x7)  #1340 pc 12948
	fdiv	%f0, %f0, %f1  #1340 pc 12952
	fsw	%f0, 4(%x6)  #1340 pc 12956
	j	be_cont.9186 #pc 12960
	nop #pc 12964
be_else.9185: #pc 12968
	fmv	%f0, l.6176  #0 pc 12968
	lw	%x6, 8(%x2)  #1335 pc 12972
	fsw	%f0, 4(%x6)  #1335 pc 12976
be_cont.9186: #pc 12980
	lw	%x7, 4(%x2)  #1342 pc 12980
	flw	%f0, 4(%x7)  #1342 pc 12984
	sw	%x1, 20(%x2)  #1342 pc 12988
	addi	%x2, %x2, 24  #1342 pc 12992
	jal	%x1, fiszero.2479  #1342 pc 12996
	addi	%x2, %x2, -24  #1342 pc 13000
	lw	%x1, 20(%x2) #1342 pc 13004
	beq	%x6, %x0, 12  #1342 pc 13008
	j	be_else.9187 #pc 13012
	nop #pc 13016
	lw	%x6, 0(%x2)  #1345 pc 13020
	sw	%x1, 20(%x2)  #1345 pc 13024
	addi	%x2, %x2, 24  #1345 pc 13028
	jal	%x1, o_isinvert.2629  #1345 pc 13032
	addi	%x2, %x2, -24  #1345 pc 13036
	lw	%x1, 20(%x2) #1345 pc 13040
	lw	%x7, 4(%x2)  #1345 pc 13044
	flw	%f0, 4(%x7)  #1345 pc 13048
	sw	%x6, 20(%x2)  #1345 pc 13052
	sw	%x1, 24(%x2)  #1345 pc 13056
	addi	%x2, %x2, 28  #1345 pc 13060
	jal	%x1, fisneg.2483  #1345 pc 13064
	addi	%x2, %x2, -28  #1345 pc 13068
	lw	%x1, 24(%x2) #1345 pc 13072
	addi	%x7, %x6, 0  #1345 pc 13076
	lw	%x6, 20(%x2)  #1345 pc 13080
	sw	%x1, 24(%x2)  #1345 pc 13084
	addi	%x2, %x2, 28  #1345 pc 13088
	jal	%x1, xor.2574  #1345 pc 13092
	addi	%x2, %x2, -28  #1345 pc 13096
	lw	%x1, 24(%x2) #1345 pc 13100
	lw	%x7, 0(%x2)  #1345 pc 13104
	sw	%x6, 24(%x2)  #1345 pc 13108
	addi	%x6, %x7, 0  #0 pc 13112
	sw	%x1, 28(%x2)  #1345 pc 13116
	addi	%x2, %x2, 32  #1345 pc 13120
	jal	%x1, o_param_b.2635  #1345 pc 13124
	addi	%x2, %x2, -32  #1345 pc 13128
	lw	%x1, 28(%x2) #1345 pc 13132
	lw	%x6, 24(%x2)  #1345 pc 13136
	sw	%x1, 28(%x2)  #1345 pc 13140
	addi	%x2, %x2, 32  #1345 pc 13144
	jal	%x1, fneg_cond.2579  #1345 pc 13148
	addi	%x2, %x2, -32  #1345 pc 13152
	lw	%x1, 28(%x2) #1345 pc 13156
	lw	%x6, 8(%x2)  #1345 pc 13160
	fsw	%f0, 8(%x6)  #1345 pc 13164
	fmv	%f0, l.6188  #0 pc 13168
	lw	%x7, 4(%x2)  #1346 pc 13172
	flw	%f1, 4(%x7)  #1346 pc 13176
	fdiv	%f0, %f0, %f1  #1346 pc 13180
	fsw	%f0, 12(%x6)  #1346 pc 13184
	j	be_cont.9188 #pc 13188
	nop #pc 13192
be_else.9187: #pc 13196
	fmv	%f0, l.6176  #0 pc 13196
	lw	%x6, 8(%x2)  #1343 pc 13200
	fsw	%f0, 12(%x6)  #1343 pc 13204
be_cont.9188: #pc 13208
	lw	%x7, 4(%x2)  #1348 pc 13208
	flw	%f0, 8(%x7)  #1348 pc 13212
	sw	%x1, 28(%x2)  #1348 pc 13216
	addi	%x2, %x2, 32  #1348 pc 13220
	jal	%x1, fiszero.2479  #1348 pc 13224
	addi	%x2, %x2, -32  #1348 pc 13228
	lw	%x1, 28(%x2) #1348 pc 13232
	beq	%x6, %x0, 12  #1348 pc 13236
	j	be_else.9189 #pc 13240
	nop #pc 13244
	lw	%x6, 0(%x2)  #1351 pc 13248
	sw	%x1, 28(%x2)  #1351 pc 13252
	addi	%x2, %x2, 32  #1351 pc 13256
	jal	%x1, o_isinvert.2629  #1351 pc 13260
	addi	%x2, %x2, -32  #1351 pc 13264
	lw	%x1, 28(%x2) #1351 pc 13268
	lw	%x7, 4(%x2)  #1351 pc 13272
	flw	%f0, 8(%x7)  #1351 pc 13276
	sw	%x6, 28(%x2)  #1351 pc 13280
	sw	%x1, 32(%x2)  #1351 pc 13284
	addi	%x2, %x2, 36  #1351 pc 13288
	jal	%x1, fisneg.2483  #1351 pc 13292
	addi	%x2, %x2, -36  #1351 pc 13296
	lw	%x1, 32(%x2) #1351 pc 13300
	addi	%x7, %x6, 0  #1351 pc 13304
	lw	%x6, 28(%x2)  #1351 pc 13308
	sw	%x1, 32(%x2)  #1351 pc 13312
	addi	%x2, %x2, 36  #1351 pc 13316
	jal	%x1, xor.2574  #1351 pc 13320
	addi	%x2, %x2, -36  #1351 pc 13324
	lw	%x1, 32(%x2) #1351 pc 13328
	lw	%x7, 0(%x2)  #1351 pc 13332
	sw	%x6, 32(%x2)  #1351 pc 13336
	addi	%x6, %x7, 0  #0 pc 13340
	sw	%x1, 36(%x2)  #1351 pc 13344
	addi	%x2, %x2, 40  #1351 pc 13348
	jal	%x1, o_param_c.2637  #1351 pc 13352
	addi	%x2, %x2, -40  #1351 pc 13356
	lw	%x1, 36(%x2) #1351 pc 13360
	lw	%x6, 32(%x2)  #1351 pc 13364
	sw	%x1, 36(%x2)  #1351 pc 13368
	addi	%x2, %x2, 40  #1351 pc 13372
	jal	%x1, fneg_cond.2579  #1351 pc 13376
	addi	%x2, %x2, -40  #1351 pc 13380
	lw	%x1, 36(%x2) #1351 pc 13384
	lw	%x6, 8(%x2)  #1351 pc 13388
	fsw	%f0, 16(%x6)  #1351 pc 13392
	fmv	%f0, l.6188  #0 pc 13396
	lw	%x7, 4(%x2)  #1352 pc 13400
	flw	%f1, 8(%x7)  #1352 pc 13404
	fdiv	%f0, %f0, %f1  #1352 pc 13408
	fsw	%f0, 20(%x6)  #1352 pc 13412
	j	be_cont.9190 #pc 13416
	nop #pc 13420
be_else.9189: #pc 13424
	fmv	%f0, l.6176  #0 pc 13424
	lw	%x6, 8(%x2)  #1349 pc 13428
	fsw	%f0, 20(%x6)  #1349 pc 13432
be_cont.9190: #pc 13436
	ret #pc 13436
	nop #pc 13440
setup_surface_table.2804:  #pc 13444
	addi	%x8, %x0, 4  #0 pc 13444
	fmv	%f0, l.6176  #0 pc 13448
	sw	%x7, 0(%x2)  #1359 pc 13452
	sw	%x6, 4(%x2)  #1359 pc 13456
	addi	%x6, %x8, 0  #0 pc 13460
	sw	%x1, 8(%x2)  #1359 pc 13464
	addi	%x2, %x2, 12  #1359 pc 13468
	jal	%x1, create_float_array.2541  #1359 pc 13472
	addi	%x2, %x2, -12  #1359 pc 13476
	lw	%x1, 8(%x2) #1359 pc 13480
	lw	%x7, 4(%x2)  #1361 pc 13484
	flw	%f0, 0(%x7)  #1361 pc 13488
	lw	%x8, 0(%x2)  #1361 pc 13492
	sw	%x6, 8(%x2)  #1361 pc 13496
	fsw	%f0, 16(%x2)  #1361 pc 13500
	addi	%x6, %x8, 0  #0 pc 13504
	sw	%x1, 24(%x2)  #1361 pc 13508
	addi	%x2, %x2, 28  #1361 pc 13512
	jal	%x1, o_param_a.2633  #1361 pc 13516
	addi	%x2, %x2, -28  #1361 pc 13520
	lw	%x1, 24(%x2) #1361 pc 13524
	flw	%f1, 16(%x2)  #1361 pc 13528
	fmul	%f0, %f1, %f0  #1361 pc 13532
	lw	%x6, 4(%x2)  #1361 pc 13536
	flw	%f1, 4(%x6)  #1361 pc 13540
	lw	%x7, 0(%x2)  #1361 pc 13544
	fsw	%f0, 24(%x2)  #1361 pc 13548
	fsw	%f1, 32(%x2)  #1361 pc 13552
	addi	%x6, %x7, 0  #0 pc 13556
	sw	%x1, 40(%x2)  #1361 pc 13560
	addi	%x2, %x2, 44  #1361 pc 13564
	jal	%x1, o_param_b.2635  #1361 pc 13568
	addi	%x2, %x2, -44  #1361 pc 13572
	lw	%x1, 40(%x2) #1361 pc 13576
	flw	%f1, 32(%x2)  #1361 pc 13580
	fmul	%f0, %f1, %f0  #1361 pc 13584
	flw	%f1, 24(%x2)  #1361 pc 13588
	fadd	%f0, %f1, %f0  #1361 pc 13592
	lw	%x6, 4(%x2)  #1361 pc 13596
	flw	%f1, 8(%x6)  #1361 pc 13600
	lw	%x6, 0(%x2)  #1361 pc 13604
	fsw	%f0, 40(%x2)  #1361 pc 13608
	fsw	%f1, 48(%x2)  #1361 pc 13612
	sw	%x1, 56(%x2)  #1361 pc 13616
	addi	%x2, %x2, 60  #1361 pc 13620
	jal	%x1, o_param_c.2637  #1361 pc 13624
	addi	%x2, %x2, -60  #1361 pc 13628
	lw	%x1, 56(%x2) #1361 pc 13632
	flw	%f1, 48(%x2)  #1361 pc 13636
	fmul	%f0, %f1, %f0  #1361 pc 13640
	flw	%f1, 40(%x2)  #1361 pc 13644
	fadd	%f0, %f1, %f0  #1361 pc 13648
	fsw	%f0, 56(%x2)  #1363 pc 13652
	sw	%x1, 64(%x2)  #1363 pc 13656
	addi	%x2, %x2, 68  #1363 pc 13660
	jal	%x1, fispos.2481  #1363 pc 13664
	addi	%x2, %x2, -68  #1363 pc 13668
	lw	%x1, 64(%x2) #1363 pc 13672
	beq	%x6, %x0, 12  #1363 pc 13676
	j	be_else.9192 #pc 13680
	nop #pc 13684
	fmv	%f0, l.6176  #0 pc 13688
	lw	%x6, 8(%x2)  #1371 pc 13692
	fsw	%f0, 0(%x6)  #1371 pc 13696
	j	be_cont.9193 #pc 13700
	nop #pc 13704
be_else.9192: #pc 13708
	fmv	%f0, l.6213  #0 pc 13708
	flw	%f1, 56(%x2)  #1365 pc 13712
	fdiv	%f0, %f0, %f1  #1365 pc 13716
	lw	%x6, 8(%x2)  #1365 pc 13720
	fsw	%f0, 0(%x6)  #1365 pc 13724
	lw	%x7, 0(%x2)  #1367 pc 13728
	addi	%x6, %x7, 0  #0 pc 13732
	sw	%x1, 64(%x2)  #1367 pc 13736
	addi	%x2, %x2, 68  #1367 pc 13740
	jal	%x1, o_param_a.2633  #1367 pc 13744
	addi	%x2, %x2, -68  #1367 pc 13748
	lw	%x1, 64(%x2) #1367 pc 13752
	flw	%f1, 56(%x2)  #1367 pc 13756
	fdiv	%f0, %f0, %f1  #1367 pc 13760
	sw	%x1, 64(%x2)  #1367 pc 13764
	addi	%x2, %x2, 68  #1367 pc 13768
	jal	%x1, fneg.2485  #1367 pc 13772
	addi	%x2, %x2, -68  #1367 pc 13776
	lw	%x1, 64(%x2) #1367 pc 13780
	lw	%x6, 8(%x2)  #1367 pc 13784
	fsw	%f0, 4(%x6)  #1367 pc 13788
	lw	%x7, 0(%x2)  #1368 pc 13792
	addi	%x6, %x7, 0  #0 pc 13796
	sw	%x1, 64(%x2)  #1368 pc 13800
	addi	%x2, %x2, 68  #1368 pc 13804
	jal	%x1, o_param_b.2635  #1368 pc 13808
	addi	%x2, %x2, -68  #1368 pc 13812
	lw	%x1, 64(%x2) #1368 pc 13816
	flw	%f1, 56(%x2)  #1368 pc 13820
	fdiv	%f0, %f0, %f1  #1368 pc 13824
	sw	%x1, 64(%x2)  #1368 pc 13828
	addi	%x2, %x2, 68  #1368 pc 13832
	jal	%x1, fneg.2485  #1368 pc 13836
	addi	%x2, %x2, -68  #1368 pc 13840
	lw	%x1, 64(%x2) #1368 pc 13844
	lw	%x6, 8(%x2)  #1368 pc 13848
	fsw	%f0, 8(%x6)  #1368 pc 13852
	lw	%x7, 0(%x2)  #1369 pc 13856
	addi	%x6, %x7, 0  #0 pc 13860
	sw	%x1, 64(%x2)  #1369 pc 13864
	addi	%x2, %x2, 68  #1369 pc 13868
	jal	%x1, o_param_c.2637  #1369 pc 13872
	addi	%x2, %x2, -68  #1369 pc 13876
	lw	%x1, 64(%x2) #1369 pc 13880
	flw	%f1, 56(%x2)  #1369 pc 13884
	fdiv	%f0, %f0, %f1  #1369 pc 13888
	sw	%x1, 64(%x2)  #1369 pc 13892
	addi	%x2, %x2, 68  #1369 pc 13896
	jal	%x1, fneg.2485  #1369 pc 13900
	addi	%x2, %x2, -68  #1369 pc 13904
	lw	%x1, 64(%x2) #1369 pc 13908
	lw	%x6, 8(%x2)  #1369 pc 13912
	fsw	%f0, 12(%x6)  #1369 pc 13916
be_cont.9193: #pc 13920
	ret #pc 13920
	nop #pc 13924
setup_second_table.2807:  #pc 13928
	addi	%x8, %x0, 5  #0 pc 13928
	fmv	%f0, l.6176  #0 pc 13932
	sw	%x7, 0(%x2)  #1378 pc 13936
	sw	%x6, 4(%x2)  #1378 pc 13940
	addi	%x6, %x8, 0  #0 pc 13944
	sw	%x1, 8(%x2)  #1378 pc 13948
	addi	%x2, %x2, 12  #1378 pc 13952
	jal	%x1, create_float_array.2541  #1378 pc 13956
	addi	%x2, %x2, -12  #1378 pc 13960
	lw	%x1, 8(%x2) #1378 pc 13964
	lw	%x7, 4(%x2)  #1380 pc 13968
	flw	%f0, 0(%x7)  #1380 pc 13972
	flw	%f1, 4(%x7)  #1380 pc 13976
	flw	%f2, 8(%x7)  #1380 pc 13980
	lw	%x8, 0(%x2)  #1380 pc 13984
	sw	%x6, 8(%x2)  #1380 pc 13988
	addi	%x6, %x8, 0  #0 pc 13992
	sw	%x1, 12(%x2)  #1380 pc 13996
	addi	%x2, %x2, 16  #1380 pc 14000
	jal	%x1, quadratic.2738  #1380 pc 14004
	addi	%x2, %x2, -16  #1380 pc 14008
	lw	%x1, 12(%x2) #1380 pc 14012
	lw	%x6, 4(%x2)  #1381 pc 14016
	flw	%f1, 0(%x6)  #1381 pc 14020
	lw	%x7, 0(%x2)  #1381 pc 14024
	fsw	%f0, 16(%x2)  #1381 pc 14028
	fsw	%f1, 24(%x2)  #1381 pc 14032
	addi	%x6, %x7, 0  #0 pc 14036
	sw	%x1, 32(%x2)  #1381 pc 14040
	addi	%x2, %x2, 36  #1381 pc 14044
	jal	%x1, o_param_a.2633  #1381 pc 14048
	addi	%x2, %x2, -36  #1381 pc 14052
	lw	%x1, 32(%x2) #1381 pc 14056
	flw	%f1, 24(%x2)  #1381 pc 14060
	fmul	%f0, %f1, %f0  #1381 pc 14064
	sw	%x1, 32(%x2)  #1381 pc 14068
	addi	%x2, %x2, 36  #1381 pc 14072
	jal	%x1, fneg.2485  #1381 pc 14076
	addi	%x2, %x2, -36  #1381 pc 14080
	lw	%x1, 32(%x2) #1381 pc 14084
	lw	%x6, 4(%x2)  #1382 pc 14088
	flw	%f1, 4(%x6)  #1382 pc 14092
	lw	%x7, 0(%x2)  #1382 pc 14096
	fsw	%f0, 32(%x2)  #1382 pc 14100
	fsw	%f1, 40(%x2)  #1382 pc 14104
	addi	%x6, %x7, 0  #0 pc 14108
	sw	%x1, 48(%x2)  #1382 pc 14112
	addi	%x2, %x2, 52  #1382 pc 14116
	jal	%x1, o_param_b.2635  #1382 pc 14120
	addi	%x2, %x2, -52  #1382 pc 14124
	lw	%x1, 48(%x2) #1382 pc 14128
	flw	%f1, 40(%x2)  #1382 pc 14132
	fmul	%f0, %f1, %f0  #1382 pc 14136
	sw	%x1, 48(%x2)  #1382 pc 14140
	addi	%x2, %x2, 52  #1382 pc 14144
	jal	%x1, fneg.2485  #1382 pc 14148
	addi	%x2, %x2, -52  #1382 pc 14152
	lw	%x1, 48(%x2) #1382 pc 14156
	lw	%x6, 4(%x2)  #1383 pc 14160
	flw	%f1, 8(%x6)  #1383 pc 14164
	lw	%x7, 0(%x2)  #1383 pc 14168
	fsw	%f0, 48(%x2)  #1383 pc 14172
	fsw	%f1, 56(%x2)  #1383 pc 14176
	addi	%x6, %x7, 0  #0 pc 14180
	sw	%x1, 64(%x2)  #1383 pc 14184
	addi	%x2, %x2, 68  #1383 pc 14188
	jal	%x1, o_param_c.2637  #1383 pc 14192
	addi	%x2, %x2, -68  #1383 pc 14196
	lw	%x1, 64(%x2) #1383 pc 14200
	flw	%f1, 56(%x2)  #1383 pc 14204
	fmul	%f0, %f1, %f0  #1383 pc 14208
	sw	%x1, 64(%x2)  #1383 pc 14212
	addi	%x2, %x2, 68  #1383 pc 14216
	jal	%x1, fneg.2485  #1383 pc 14220
	addi	%x2, %x2, -68  #1383 pc 14224
	lw	%x1, 64(%x2) #1383 pc 14228
	lw	%x6, 8(%x2)  #1385 pc 14232
	flw	%f1, 16(%x2)  #1385 pc 14236
	fsw	%f1, 0(%x6)  #1385 pc 14240
	lw	%x7, 0(%x2)  #1389 pc 14244
	fsw	%f0, 64(%x2)  #1389 pc 14248
	addi	%x6, %x7, 0  #0 pc 14252
	sw	%x1, 72(%x2)  #1389 pc 14256
	addi	%x2, %x2, 76  #1389 pc 14260
	jal	%x1, o_isrot.2631  #1389 pc 14264
	addi	%x2, %x2, -76  #1389 pc 14268
	lw	%x1, 72(%x2) #1389 pc 14272
	beq	%x6, %x0, 12  #1389 pc 14276
	j	be_else.9195 #pc 14280
	nop #pc 14284
	lw	%x6, 8(%x2)  #1394 pc 14288
	flw	%f0, 32(%x2)  #1394 pc 14292
	fsw	%f0, 4(%x6)  #1394 pc 14296
	flw	%f0, 48(%x2)  #1395 pc 14300
	fsw	%f0, 8(%x6)  #1395 pc 14304
	flw	%f0, 64(%x2)  #1396 pc 14308
	fsw	%f0, 12(%x6)  #1396 pc 14312
	j	be_cont.9196 #pc 14316
	nop #pc 14320
be_else.9195: #pc 14324
	lw	%x6, 4(%x2)  #1390 pc 14324
	flw	%f0, 8(%x6)  #1390 pc 14328
	lw	%x7, 0(%x2)  #1390 pc 14332
	fsw	%f0, 72(%x2)  #1390 pc 14336
	addi	%x6, %x7, 0  #0 pc 14340
	sw	%x1, 80(%x2)  #1390 pc 14344
	addi	%x2, %x2, 84  #1390 pc 14348
	jal	%x1, o_param_r2.2659  #1390 pc 14352
	addi	%x2, %x2, -84  #1390 pc 14356
	lw	%x1, 80(%x2) #1390 pc 14360
	flw	%f1, 72(%x2)  #1390 pc 14364
	fmul	%f0, %f1, %f0  #1390 pc 14368
	lw	%x6, 4(%x2)  #1390 pc 14372
	flw	%f1, 4(%x6)  #1390 pc 14376
	lw	%x7, 0(%x2)  #1390 pc 14380
	fsw	%f0, 80(%x2)  #1390 pc 14384
	fsw	%f1, 88(%x2)  #1390 pc 14388
	addi	%x6, %x7, 0  #0 pc 14392
	sw	%x1, 96(%x2)  #1390 pc 14396
	addi	%x2, %x2, 100  #1390 pc 14400
	jal	%x1, o_param_r3.2661  #1390 pc 14404
	addi	%x2, %x2, -100  #1390 pc 14408
	lw	%x1, 96(%x2) #1390 pc 14412
	flw	%f1, 88(%x2)  #1390 pc 14416
	fmul	%f0, %f1, %f0  #1390 pc 14420
	flw	%f1, 80(%x2)  #1390 pc 14424
	fadd	%f0, %f1, %f0  #1390 pc 14428
	sw	%x1, 96(%x2)  #1390 pc 14432
	addi	%x2, %x2, 100  #1390 pc 14436
	jal	%x1, fhalf.2489  #1390 pc 14440
	addi	%x2, %x2, -100  #1390 pc 14444
	lw	%x1, 96(%x2) #1390 pc 14448
	flw	%f1, 32(%x2)  #1390 pc 14452
	fsub	%f0, %f1, %f0  #1390 pc 14456
	lw	%x6, 8(%x2)  #1390 pc 14460
	fsw	%f0, 4(%x6)  #1390 pc 14464
	lw	%x7, 4(%x2)  #1391 pc 14468
	flw	%f0, 8(%x7)  #1391 pc 14472
	lw	%x8, 0(%x2)  #1391 pc 14476
	fsw	%f0, 96(%x2)  #1391 pc 14480
	addi	%x6, %x8, 0  #0 pc 14484
	sw	%x1, 104(%x2)  #1391 pc 14488
	addi	%x2, %x2, 108  #1391 pc 14492
	jal	%x1, o_param_r1.2657  #1391 pc 14496
	addi	%x2, %x2, -108  #1391 pc 14500
	lw	%x1, 104(%x2) #1391 pc 14504
	flw	%f1, 96(%x2)  #1391 pc 14508
	fmul	%f0, %f1, %f0  #1391 pc 14512
	lw	%x6, 4(%x2)  #1391 pc 14516
	flw	%f1, 0(%x6)  #1391 pc 14520
	lw	%x7, 0(%x2)  #1391 pc 14524
	fsw	%f0, 104(%x2)  #1391 pc 14528
	fsw	%f1, 112(%x2)  #1391 pc 14532
	addi	%x6, %x7, 0  #0 pc 14536
	sw	%x1, 120(%x2)  #1391 pc 14540
	addi	%x2, %x2, 124  #1391 pc 14544
	jal	%x1, o_param_r3.2661  #1391 pc 14548
	addi	%x2, %x2, -124  #1391 pc 14552
	lw	%x1, 120(%x2) #1391 pc 14556
	flw	%f1, 112(%x2)  #1391 pc 14560
	fmul	%f0, %f1, %f0  #1391 pc 14564
	flw	%f1, 104(%x2)  #1391 pc 14568
	fadd	%f0, %f1, %f0  #1391 pc 14572
	sw	%x1, 120(%x2)  #1391 pc 14576
	addi	%x2, %x2, 124  #1391 pc 14580
	jal	%x1, fhalf.2489  #1391 pc 14584
	addi	%x2, %x2, -124  #1391 pc 14588
	lw	%x1, 120(%x2) #1391 pc 14592
	flw	%f1, 48(%x2)  #1391 pc 14596
	fsub	%f0, %f1, %f0  #1391 pc 14600
	lw	%x6, 8(%x2)  #1391 pc 14604
	fsw	%f0, 8(%x6)  #1391 pc 14608
	lw	%x7, 4(%x2)  #1392 pc 14612
	flw	%f0, 4(%x7)  #1392 pc 14616
	lw	%x8, 0(%x2)  #1392 pc 14620
	fsw	%f0, 120(%x2)  #1392 pc 14624
	addi	%x6, %x8, 0  #0 pc 14628
	sw	%x1, 128(%x2)  #1392 pc 14632
	addi	%x2, %x2, 132  #1392 pc 14636
	jal	%x1, o_param_r1.2657  #1392 pc 14640
	addi	%x2, %x2, -132  #1392 pc 14644
	lw	%x1, 128(%x2) #1392 pc 14648
	flw	%f1, 120(%x2)  #1392 pc 14652
	fmul	%f0, %f1, %f0  #1392 pc 14656
	lw	%x6, 4(%x2)  #1392 pc 14660
	flw	%f1, 0(%x6)  #1392 pc 14664
	lw	%x6, 0(%x2)  #1392 pc 14668
	fsw	%f0, 128(%x2)  #1392 pc 14672
	fsw	%f1, 136(%x2)  #1392 pc 14676
	sw	%x1, 144(%x2)  #1392 pc 14680
	addi	%x2, %x2, 148  #1392 pc 14684
	jal	%x1, o_param_r2.2659  #1392 pc 14688
	addi	%x2, %x2, -148  #1392 pc 14692
	lw	%x1, 144(%x2) #1392 pc 14696
	flw	%f1, 136(%x2)  #1392 pc 14700
	fmul	%f0, %f1, %f0  #1392 pc 14704
	flw	%f1, 128(%x2)  #1392 pc 14708
	fadd	%f0, %f1, %f0  #1392 pc 14712
	sw	%x1, 144(%x2)  #1392 pc 14716
	addi	%x2, %x2, 148  #1392 pc 14720
	jal	%x1, fhalf.2489  #1392 pc 14724
	addi	%x2, %x2, -148  #1392 pc 14728
	lw	%x1, 144(%x2) #1392 pc 14732
	flw	%f1, 64(%x2)  #1392 pc 14736
	fsub	%f0, %f1, %f0  #1392 pc 14740
	lw	%x6, 8(%x2)  #1392 pc 14744
	fsw	%f0, 12(%x6)  #1392 pc 14748
be_cont.9196: #pc 14752
	flw	%f0, 16(%x2)  #1398 pc 14752
	sw	%x1, 144(%x2)  #1398 pc 14756
	addi	%x2, %x2, 148  #1398 pc 14760
	jal	%x1, fiszero.2479  #1398 pc 14764
	addi	%x2, %x2, -148  #1398 pc 14768
	lw	%x1, 144(%x2) #1398 pc 14772
	beq	%x6, %x0, 12  #1398 pc 14776
	j	be_else.9197 #pc 14780
	nop #pc 14784
	fmv	%f0, l.6188  #0 pc 14788
	flw	%f1, 16(%x2)  #1399 pc 14792
	fdiv	%f0, %f0, %f1  #1399 pc 14796
	lw	%x6, 8(%x2)  #1399 pc 14800
	fsw	%f0, 16(%x6)  #1399 pc 14804
	j	be_cont.9198 #pc 14808
	nop #pc 14812
be_else.9197: #pc 14816
be_cont.9198: #pc 14816
	lw	%x6, 8(%x2)  #1401 pc 14816
	ret #pc 14820
	nop #pc 14824
iter_setup_dirvec_constants.2810:  #pc 14828
	lw	%x8, 4(%x29)  #0 pc 14828
	bge	%x7, %x0, 12  #1407 pc 14832
	j	bge_else.9199 #pc 14836
	nop #pc 14840
	slli	%x9, %x7, 2  #1408 pc 14844
	add	%x31, %x9, %x8  #1408 pc 14848
	lw	%x8, 0(%x31)  #1408 pc 14852
	sw	%x29, 0(%x2)  #1409 pc 14856
	sw	%x7, 4(%x2)  #1409 pc 14860
	sw	%x8, 8(%x2)  #1409 pc 14864
	sw	%x6, 12(%x2)  #1409 pc 14868
	sw	%x1, 16(%x2)  #1409 pc 14872
	addi	%x2, %x2, 20  #1409 pc 14876
	jal	%x1, d_const.2686  #1409 pc 14880
	addi	%x2, %x2, -20  #1409 pc 14884
	lw	%x1, 16(%x2) #1409 pc 14888
	lw	%x7, 12(%x2)  #1410 pc 14892
	sw	%x6, 16(%x2)  #1410 pc 14896
	addi	%x6, %x7, 0  #0 pc 14900
	sw	%x1, 20(%x2)  #1410 pc 14904
	addi	%x2, %x2, 24  #1410 pc 14908
	jal	%x1, d_vec.2684  #1410 pc 14912
	addi	%x2, %x2, -24  #1410 pc 14916
	lw	%x1, 20(%x2) #1410 pc 14920
	lw	%x7, 8(%x2)  #1411 pc 14924
	sw	%x6, 20(%x2)  #1411 pc 14928
	addi	%x6, %x7, 0  #0 pc 14932
	sw	%x1, 24(%x2)  #1411 pc 14936
	addi	%x2, %x2, 28  #1411 pc 14940
	jal	%x1, o_form.2625  #1411 pc 14944
	addi	%x2, %x2, -28  #1411 pc 14948
	lw	%x1, 24(%x2) #1411 pc 14952
	addi	%x31, %x0, 1  #pc 14956
	beq	%x6, %x31, 12  #1412 pc 14960
	j	be_else.9200 #pc 14964
	nop #pc 14968
	lw	%x6, 20(%x2)  #1413 pc 14972
	lw	%x7, 8(%x2)  #1413 pc 14976
	sw	%x1, 24(%x2)  #1413 pc 14980
	addi	%x2, %x2, 28  #1413 pc 14984
	jal	%x1, setup_rect_table.2801  #1413 pc 14988
	addi	%x2, %x2, -28  #1413 pc 14992
	lw	%x1, 24(%x2) #1413 pc 14996
	lw	%x7, 4(%x2)  #1413 pc 15000
	slli	%x8, %x7, 2  #1413 pc 15004
	lw	%x9, 16(%x2)  #1413 pc 15008
	add	%x31, %x8, %x9  #1413 pc 15012
	sw	%x6, 0(%x31)  #1413 pc 15016
	j	be_cont.9201 #pc 15020
	nop #pc 15024
be_else.9200: #pc 15028
	addi	%x31, %x0, 2  #pc 15028
	beq	%x6, %x31, 12  #1414 pc 15032
	j	be_else.9202 #pc 15036
	nop #pc 15040
	lw	%x6, 20(%x2)  #1415 pc 15044
	lw	%x7, 8(%x2)  #1415 pc 15048
	sw	%x1, 24(%x2)  #1415 pc 15052
	addi	%x2, %x2, 28  #1415 pc 15056
	jal	%x1, setup_surface_table.2804  #1415 pc 15060
	addi	%x2, %x2, -28  #1415 pc 15064
	lw	%x1, 24(%x2) #1415 pc 15068
	lw	%x7, 4(%x2)  #1415 pc 15072
	slli	%x8, %x7, 2  #1415 pc 15076
	lw	%x9, 16(%x2)  #1415 pc 15080
	add	%x31, %x8, %x9  #1415 pc 15084
	sw	%x6, 0(%x31)  #1415 pc 15088
	j	be_cont.9203 #pc 15092
	nop #pc 15096
be_else.9202: #pc 15100
	lw	%x6, 20(%x2)  #1417 pc 15100
	lw	%x7, 8(%x2)  #1417 pc 15104
	sw	%x1, 24(%x2)  #1417 pc 15108
	addi	%x2, %x2, 28  #1417 pc 15112
	jal	%x1, setup_second_table.2807  #1417 pc 15116
	addi	%x2, %x2, -28  #1417 pc 15120
	lw	%x1, 24(%x2) #1417 pc 15124
	lw	%x7, 4(%x2)  #1417 pc 15128
	slli	%x8, %x7, 2  #1417 pc 15132
	lw	%x9, 16(%x2)  #1417 pc 15136
	add	%x31, %x8, %x9  #1417 pc 15140
	sw	%x6, 0(%x31)  #1417 pc 15144
be_cont.9203: #pc 15148
be_cont.9201: #pc 15148
	addi	%x7, %x7, -1  #1419 pc 15148
	lw	%x6, 12(%x2)  #1419 pc 15152
	lw	%x29, 0(%x2)  #1419 pc 15156
	lw	%x30, 0(%x29)  #1419 pc 15160
	jalr	%x0, %x30, 0  #1419 pc 15164
	nop #pc 15168
bge_else.9199: #pc 15172
	ret #pc 15172
	nop #pc 15176
setup_dirvec_constants.2813:  #pc 15180
	lw	%x7, 8(%x29)  #0 pc 15180
	lw	%x29, 4(%x29)  #0 pc 15184
	lw	%x7, 0(%x7)  #1424 pc 15188
	addi	%x7, %x7, -1  #1424 pc 15192
	lw	%x30, 0(%x29)  #1424 pc 15196
	jalr	%x0, %x30, 0  #1424 pc 15200
	nop #pc 15204
setup_startp_constants.2815:  #pc 15208
	lw	%x8, 4(%x29)  #0 pc 15208
	bge	%x7, %x0, 12  #1432 pc 15212
	j	bge_else.9205 #pc 15216
	nop #pc 15220
	slli	%x9, %x7, 2  #1433 pc 15224
	add	%x31, %x9, %x8  #1433 pc 15228
	lw	%x8, 0(%x31)  #1433 pc 15232
	sw	%x29, 0(%x2)  #1434 pc 15236
	sw	%x7, 4(%x2)  #1434 pc 15240
	sw	%x6, 8(%x2)  #1434 pc 15244
	sw	%x8, 12(%x2)  #1434 pc 15248
	addi	%x6, %x8, 0  #0 pc 15252
	sw	%x1, 16(%x2)  #1434 pc 15256
	addi	%x2, %x2, 20  #1434 pc 15260
	jal	%x1, o_param_ctbl.2663  #1434 pc 15264
	addi	%x2, %x2, -20  #1434 pc 15268
	lw	%x1, 16(%x2) #1434 pc 15272
	lw	%x7, 12(%x2)  #1435 pc 15276
	sw	%x6, 16(%x2)  #1435 pc 15280
	addi	%x6, %x7, 0  #0 pc 15284
	sw	%x1, 20(%x2)  #1435 pc 15288
	addi	%x2, %x2, 24  #1435 pc 15292
	jal	%x1, o_form.2625  #1435 pc 15296
	addi	%x2, %x2, -24  #1435 pc 15300
	lw	%x1, 20(%x2) #1435 pc 15304
	lw	%x7, 8(%x2)  #1436 pc 15308
	flw	%f0, 0(%x7)  #1436 pc 15312
	lw	%x8, 12(%x2)  #1436 pc 15316
	sw	%x6, 20(%x2)  #1436 pc 15320
	fsw	%f0, 24(%x2)  #1436 pc 15324
	addi	%x6, %x8, 0  #0 pc 15328
	sw	%x1, 32(%x2)  #1436 pc 15332
	addi	%x2, %x2, 36  #1436 pc 15336
	jal	%x1, o_param_x.2641  #1436 pc 15340
	addi	%x2, %x2, -36  #1436 pc 15344
	lw	%x1, 32(%x2) #1436 pc 15348
	flw	%f1, 24(%x2)  #1436 pc 15352
	fsub	%f0, %f1, %f0  #1436 pc 15356
	lw	%x6, 16(%x2)  #1436 pc 15360
	fsw	%f0, 0(%x6)  #1436 pc 15364
	lw	%x7, 8(%x2)  #1437 pc 15368
	flw	%f0, 4(%x7)  #1437 pc 15372
	lw	%x8, 12(%x2)  #1437 pc 15376
	fsw	%f0, 32(%x2)  #1437 pc 15380
	addi	%x6, %x8, 0  #0 pc 15384
	sw	%x1, 40(%x2)  #1437 pc 15388
	addi	%x2, %x2, 44  #1437 pc 15392
	jal	%x1, o_param_y.2643  #1437 pc 15396
	addi	%x2, %x2, -44  #1437 pc 15400
	lw	%x1, 40(%x2) #1437 pc 15404
	flw	%f1, 32(%x2)  #1437 pc 15408
	fsub	%f0, %f1, %f0  #1437 pc 15412
	lw	%x6, 16(%x2)  #1437 pc 15416
	fsw	%f0, 4(%x6)  #1437 pc 15420
	lw	%x7, 8(%x2)  #1438 pc 15424
	flw	%f0, 8(%x7)  #1438 pc 15428
	lw	%x8, 12(%x2)  #1438 pc 15432
	fsw	%f0, 40(%x2)  #1438 pc 15436
	addi	%x6, %x8, 0  #0 pc 15440
	sw	%x1, 48(%x2)  #1438 pc 15444
	addi	%x2, %x2, 52  #1438 pc 15448
	jal	%x1, o_param_z.2645  #1438 pc 15452
	addi	%x2, %x2, -52  #1438 pc 15456
	lw	%x1, 48(%x2) #1438 pc 15460
	flw	%f1, 40(%x2)  #1438 pc 15464
	fsub	%f0, %f1, %f0  #1438 pc 15468
	lw	%x6, 16(%x2)  #1438 pc 15472
	fsw	%f0, 8(%x6)  #1438 pc 15476
	lw	%x7, 20(%x2)  #1439 pc 15480
	addi	%x31, %x0, 2  #pc 15484
	beq	%x7, %x31, 12  #1439 pc 15488
	j	be_else.9206 #pc 15492
	nop #pc 15496
	lw	%x7, 12(%x2)  #1441 pc 15500
	addi	%x6, %x7, 0  #0 pc 15504
	sw	%x1, 48(%x2)  #1441 pc 15508
	addi	%x2, %x2, 52  #1441 pc 15512
	jal	%x1, o_param_abc.2639  #1441 pc 15516
	addi	%x2, %x2, -52  #1441 pc 15520
	lw	%x1, 48(%x2) #1441 pc 15524
	lw	%x7, 16(%x2)  #1441 pc 15528
	flw	%f0, 0(%x7)  #1441 pc 15532
	flw	%f1, 4(%x7)  #1441 pc 15536
	flw	%f2, 8(%x7)  #1441 pc 15540
	sw	%x1, 48(%x2)  #1441 pc 15544
	addi	%x2, %x2, 52  #1441 pc 15548
	jal	%x1, veciprod2.2604  #1441 pc 15552
	addi	%x2, %x2, -52  #1441 pc 15556
	lw	%x1, 48(%x2) #1441 pc 15560
	lw	%x6, 16(%x2)  #1440 pc 15564
	fsw	%f0, 12(%x6)  #1440 pc 15568
	j	be_cont.9207 #pc 15572
	nop #pc 15576
be_else.9206: #pc 15580
	addi	%x31, %x0, 2  #pc 15580
	bge	%x31, %x7, 12  #1442 pc 15584
	j	ble_else.9208 #pc 15588
	nop #pc 15592
	j	ble_cont.9209 #pc 15596
	nop #pc 15600
ble_else.9208: #pc 15604
	flw	%f0, 0(%x6)  #1443 pc 15604
	flw	%f1, 4(%x6)  #1443 pc 15608
	flw	%f2, 8(%x6)  #1443 pc 15612
	lw	%x8, 12(%x2)  #1443 pc 15616
	addi	%x6, %x8, 0  #0 pc 15620
	sw	%x1, 48(%x2)  #1443 pc 15624
	addi	%x2, %x2, 52  #1443 pc 15628
	jal	%x1, quadratic.2738  #1443 pc 15632
	addi	%x2, %x2, -52  #1443 pc 15636
	lw	%x1, 48(%x2) #1443 pc 15640
	lw	%x6, 20(%x2)  #1444 pc 15644
	addi	%x31, %x0, 3  #pc 15648
	beq	%x6, %x31, 12  #1444 pc 15652
	j	be_else.9210 #pc 15656
	nop #pc 15660
	fmv	%f1, l.6188  #0 pc 15664
	fsub	%f0, %f0, %f1  #1444 pc 15668
	j	be_cont.9211 #pc 15672
	nop #pc 15676
be_else.9210: #pc 15680
be_cont.9211: #pc 15680
	lw	%x6, 16(%x2)  #1444 pc 15680
	fsw	%f0, 12(%x6)  #1444 pc 15684
ble_cont.9209: #pc 15688
be_cont.9207: #pc 15688
	lw	%x6, 4(%x2)  #1446 pc 15688
	addi	%x7, %x6, -1  #1446 pc 15692
	lw	%x6, 8(%x2)  #1446 pc 15696
	lw	%x29, 0(%x2)  #1446 pc 15700
	lw	%x30, 0(%x29)  #1446 pc 15704
	jalr	%x0, %x30, 0  #1446 pc 15708
	nop #pc 15712
bge_else.9205: #pc 15716
	ret #pc 15716
	nop #pc 15720
setup_startp.2818:  #pc 15724
	lw	%x7, 12(%x29)  #1451 pc 15724
	lw	%x8, 8(%x29)  #1451 pc 15728
	lw	%x9, 4(%x29)  #1451 pc 15732
	sw	%x6, 0(%x2)  #1451 pc 15736
	sw	%x8, 4(%x2)  #1451 pc 15740
	sw	%x9, 8(%x2)  #1451 pc 15744
	addi	%x30, %x7, 0  #0 pc 15748
	addi	%x7, %x6, 0  #0 pc 15752
	addi	%x6, %x30, 0  #0 pc 15756
	sw	%x1, 12(%x2)  #1451 pc 15760
	addi	%x2, %x2, 16  #1451 pc 15764
	jal	%x1, veccpy.2595  #1451 pc 15768
	addi	%x2, %x2, -16  #1451 pc 15772
	lw	%x1, 12(%x2) #1451 pc 15776
	lw	%x6, 8(%x2)  #1452 pc 15780
	lw	%x6, 0(%x6)  #1452 pc 15784
	addi	%x7, %x6, -1  #1452 pc 15788
	lw	%x6, 0(%x2)  #1452 pc 15792
	lw	%x29, 4(%x2)  #1452 pc 15796
	lw	%x30, 0(%x29)  #1452 pc 15800
	jalr	%x0, %x30, 0  #1452 pc 15804
	nop #pc 15808
is_rect_outside.2820:  #pc 15812
	fabs	%f0, %f0  #1464 pc 15812
	fsw	%f2, 0(%x2)  #1464 pc 15816
	sw	%x6, 8(%x2)  #1464 pc 15820
	fsw	%f1, 16(%x2)  #1464 pc 15824
	fsw	%f0, 24(%x2)  #1464 pc 15828
	sw	%x1, 32(%x2)  #1464 pc 15832
	addi	%x2, %x2, 36  #1464 pc 15836
	jal	%x1, o_param_a.2633  #1464 pc 15840
	addi	%x2, %x2, -36  #1464 pc 15844
	lw	%x1, 32(%x2) #1464 pc 15848
	fadd	%f1, %f0, %f30  #1464 pc 15852
	flw	%f0, 24(%x2)  #1464 pc 15856
	sw	%x1, 32(%x2)  #1464 pc 15860
	addi	%x2, %x2, 36  #1464 pc 15864
	jal	%x1, fless.2491  #1464 pc 15868
	addi	%x2, %x2, -36  #1464 pc 15872
	lw	%x1, 32(%x2) #1464 pc 15876
	beq	%x6, %x0, 12  #1464 pc 15880
	j	be_else.9214 #pc 15884
	nop #pc 15888
	addi	%x6, %x0, 0  #0 pc 15892
	j	be_cont.9215 #pc 15896
	nop #pc 15900
be_else.9214: #pc 15904
	flw	%f0, 16(%x2)  #1465 pc 15904
	fabs	%f0, %f0  #1465 pc 15908
	lw	%x6, 8(%x2)  #1465 pc 15912
	fsw	%f0, 32(%x2)  #1465 pc 15916
	sw	%x1, 40(%x2)  #1465 pc 15920
	addi	%x2, %x2, 44  #1465 pc 15924
	jal	%x1, o_param_b.2635  #1465 pc 15928
	addi	%x2, %x2, -44  #1465 pc 15932
	lw	%x1, 40(%x2) #1465 pc 15936
	fadd	%f1, %f0, %f30  #1465 pc 15940
	flw	%f0, 32(%x2)  #1465 pc 15944
	sw	%x1, 40(%x2)  #1465 pc 15948
	addi	%x2, %x2, 44  #1465 pc 15952
	jal	%x1, fless.2491  #1465 pc 15956
	addi	%x2, %x2, -44  #1465 pc 15960
	lw	%x1, 40(%x2) #1465 pc 15964
	beq	%x6, %x0, 12  #1465 pc 15968
	j	be_else.9216 #pc 15972
	nop #pc 15976
	addi	%x6, %x0, 0  #0 pc 15980
	j	be_cont.9217 #pc 15984
	nop #pc 15988
be_else.9216: #pc 15992
	flw	%f0, 0(%x2)  #1466 pc 15992
	fabs	%f0, %f0  #1466 pc 15996
	lw	%x6, 8(%x2)  #1466 pc 16000
	fsw	%f0, 40(%x2)  #1466 pc 16004
	sw	%x1, 48(%x2)  #1466 pc 16008
	addi	%x2, %x2, 52  #1466 pc 16012
	jal	%x1, o_param_c.2637  #1466 pc 16016
	addi	%x2, %x2, -52  #1466 pc 16020
	lw	%x1, 48(%x2) #1466 pc 16024
	fadd	%f1, %f0, %f30  #1466 pc 16028
	flw	%f0, 40(%x2)  #1466 pc 16032
	sw	%x1, 48(%x2)  #1466 pc 16036
	addi	%x2, %x2, 52  #1466 pc 16040
	jal	%x1, fless.2491  #1466 pc 16044
	addi	%x2, %x2, -52  #1466 pc 16048
	lw	%x1, 48(%x2) #1466 pc 16052
be_cont.9217: #pc 16056
be_cont.9215: #pc 16056
	beq	%x6, %x0, 12  #1463 pc 16056
	j	be_else.9218 #pc 16060
	nop #pc 16064
	lw	%x6, 8(%x2)  #1469 pc 16068
	sw	%x1, 48(%x2)  #1469 pc 16072
	addi	%x2, %x2, 52  #1469 pc 16076
	jal	%x1, o_isinvert.2629  #1469 pc 16080
	addi	%x2, %x2, -52  #1469 pc 16084
	lw	%x1, 48(%x2) #1469 pc 16088
	beq	%x6, %x0, 12  #1469 pc 16092
	j	be_else.9219 #pc 16096
	nop #pc 16100
	addi	%x6, %x0, 1  #0 pc 16104
	ret #pc 16108
	nop #pc 16112
be_else.9219: #pc 16116
	addi	%x6, %x0, 0  #0 pc 16116
	ret #pc 16120
	nop #pc 16124
be_else.9218: #pc 16128
	lw	%x6, 8(%x2)  #1469 pc 16128
	j	o_isinvert.2629  #1469 pc 16132
	nop #pc 16136
is_plane_outside.2825:  #pc 16140
	sw	%x6, 0(%x2)  #1474 pc 16140
	fsw	%f2, 8(%x2)  #1474 pc 16144
	fsw	%f1, 16(%x2)  #1474 pc 16148
	fsw	%f0, 24(%x2)  #1474 pc 16152
	sw	%x1, 32(%x2)  #1474 pc 16156
	addi	%x2, %x2, 36  #1474 pc 16160
	jal	%x1, o_param_abc.2639  #1474 pc 16164
	addi	%x2, %x2, -36  #1474 pc 16168
	lw	%x1, 32(%x2) #1474 pc 16172
	flw	%f0, 24(%x2)  #1474 pc 16176
	flw	%f1, 16(%x2)  #1474 pc 16180
	flw	%f2, 8(%x2)  #1474 pc 16184
	sw	%x1, 32(%x2)  #1474 pc 16188
	addi	%x2, %x2, 36  #1474 pc 16192
	jal	%x1, veciprod2.2604  #1474 pc 16196
	addi	%x2, %x2, -36  #1474 pc 16200
	lw	%x1, 32(%x2) #1474 pc 16204
	lw	%x6, 0(%x2)  #1475 pc 16208
	fsw	%f0, 32(%x2)  #1475 pc 16212
	sw	%x1, 40(%x2)  #1475 pc 16216
	addi	%x2, %x2, 44  #1475 pc 16220
	jal	%x1, o_isinvert.2629  #1475 pc 16224
	addi	%x2, %x2, -44  #1475 pc 16228
	lw	%x1, 40(%x2) #1475 pc 16232
	flw	%f0, 32(%x2)  #1475 pc 16236
	sw	%x6, 40(%x2)  #1475 pc 16240
	sw	%x1, 44(%x2)  #1475 pc 16244
	addi	%x2, %x2, 48  #1475 pc 16248
	jal	%x1, fisneg.2483  #1475 pc 16252
	addi	%x2, %x2, -48  #1475 pc 16256
	lw	%x1, 44(%x2) #1475 pc 16260
	addi	%x7, %x6, 0  #1475 pc 16264
	lw	%x6, 40(%x2)  #1475 pc 16268
	sw	%x1, 44(%x2)  #1475 pc 16272
	addi	%x2, %x2, 48  #1475 pc 16276
	jal	%x1, xor.2574  #1475 pc 16280
	addi	%x2, %x2, -48  #1475 pc 16284
	lw	%x1, 44(%x2) #1475 pc 16288
	beq	%x6, %x0, 12  #1475 pc 16292
	j	be_else.9221 #pc 16296
	nop #pc 16300
	addi	%x6, %x0, 1  #0 pc 16304
	ret #pc 16308
	nop #pc 16312
be_else.9221: #pc 16316
	addi	%x6, %x0, 0  #0 pc 16316
	ret #pc 16320
	nop #pc 16324
is_second_outside.2830:  #pc 16328
	sw	%x6, 0(%x2)  #1480 pc 16328
	sw	%x1, 4(%x2)  #1480 pc 16332
	addi	%x2, %x2, 8  #1480 pc 16336
	jal	%x1, quadratic.2738  #1480 pc 16340
	addi	%x2, %x2, -8  #1480 pc 16344
	lw	%x1, 4(%x2) #1480 pc 16348
	lw	%x6, 0(%x2)  #1481 pc 16352
	fsw	%f0, 8(%x2)  #1481 pc 16356
	sw	%x1, 16(%x2)  #1481 pc 16360
	addi	%x2, %x2, 20  #1481 pc 16364
	jal	%x1, o_form.2625  #1481 pc 16368
	addi	%x2, %x2, -20  #1481 pc 16372
	lw	%x1, 16(%x2) #1481 pc 16376
	addi	%x31, %x0, 3  #pc 16380
	beq	%x6, %x31, 12  #1481 pc 16384
	j	be_else.9223 #pc 16388
	nop #pc 16392
	fmv	%f0, l.6188  #0 pc 16396
	flw	%f1, 8(%x2)  #1481 pc 16400
	fsub	%f0, %f1, %f0  #1481 pc 16404
	j	be_cont.9224 #pc 16408
	nop #pc 16412
be_else.9223: #pc 16416
	flw	%f0, 8(%x2)  #1481 pc 16416
be_cont.9224: #pc 16420
	lw	%x6, 0(%x2)  #1482 pc 16420
	fsw	%f0, 16(%x2)  #1482 pc 16424
	sw	%x1, 24(%x2)  #1482 pc 16428
	addi	%x2, %x2, 28  #1482 pc 16432
	jal	%x1, o_isinvert.2629  #1482 pc 16436
	addi	%x2, %x2, -28  #1482 pc 16440
	lw	%x1, 24(%x2) #1482 pc 16444
	flw	%f0, 16(%x2)  #1482 pc 16448
	sw	%x6, 24(%x2)  #1482 pc 16452
	sw	%x1, 28(%x2)  #1482 pc 16456
	addi	%x2, %x2, 32  #1482 pc 16460
	jal	%x1, fisneg.2483  #1482 pc 16464
	addi	%x2, %x2, -32  #1482 pc 16468
	lw	%x1, 28(%x2) #1482 pc 16472
	addi	%x7, %x6, 0  #1482 pc 16476
	lw	%x6, 24(%x2)  #1482 pc 16480
	sw	%x1, 28(%x2)  #1482 pc 16484
	addi	%x2, %x2, 32  #1482 pc 16488
	jal	%x1, xor.2574  #1482 pc 16492
	addi	%x2, %x2, -32  #1482 pc 16496
	lw	%x1, 28(%x2) #1482 pc 16500
	beq	%x6, %x0, 12  #1482 pc 16504
	j	be_else.9225 #pc 16508
	nop #pc 16512
	addi	%x6, %x0, 1  #0 pc 16516
	ret #pc 16520
	nop #pc 16524
be_else.9225: #pc 16528
	addi	%x6, %x0, 0  #0 pc 16528
	ret #pc 16532
	nop #pc 16536
is_outside.2835:  #pc 16540
	fsw	%f2, 0(%x2)  #1487 pc 16540
	fsw	%f1, 8(%x2)  #1487 pc 16544
	sw	%x6, 16(%x2)  #1487 pc 16548
	fsw	%f0, 24(%x2)  #1487 pc 16552
	sw	%x1, 32(%x2)  #1487 pc 16556
	addi	%x2, %x2, 36  #1487 pc 16560
	jal	%x1, o_param_x.2641  #1487 pc 16564
	addi	%x2, %x2, -36  #1487 pc 16568
	lw	%x1, 32(%x2) #1487 pc 16572
	flw	%f1, 24(%x2)  #1487 pc 16576
	fsub	%f0, %f1, %f0  #1487 pc 16580
	lw	%x6, 16(%x2)  #1488 pc 16584
	fsw	%f0, 32(%x2)  #1488 pc 16588
	sw	%x1, 40(%x2)  #1488 pc 16592
	addi	%x2, %x2, 44  #1488 pc 16596
	jal	%x1, o_param_y.2643  #1488 pc 16600
	addi	%x2, %x2, -44  #1488 pc 16604
	lw	%x1, 40(%x2) #1488 pc 16608
	flw	%f1, 8(%x2)  #1488 pc 16612
	fsub	%f0, %f1, %f0  #1488 pc 16616
	lw	%x6, 16(%x2)  #1489 pc 16620
	fsw	%f0, 40(%x2)  #1489 pc 16624
	sw	%x1, 48(%x2)  #1489 pc 16628
	addi	%x2, %x2, 52  #1489 pc 16632
	jal	%x1, o_param_z.2645  #1489 pc 16636
	addi	%x2, %x2, -52  #1489 pc 16640
	lw	%x1, 48(%x2) #1489 pc 16644
	flw	%f1, 0(%x2)  #1489 pc 16648
	fsub	%f0, %f1, %f0  #1489 pc 16652
	lw	%x6, 16(%x2)  #1490 pc 16656
	fsw	%f0, 48(%x2)  #1490 pc 16660
	sw	%x1, 56(%x2)  #1490 pc 16664
	addi	%x2, %x2, 60  #1490 pc 16668
	jal	%x1, o_form.2625  #1490 pc 16672
	addi	%x2, %x2, -60  #1490 pc 16676
	lw	%x1, 56(%x2) #1490 pc 16680
	addi	%x31, %x0, 1  #pc 16684
	beq	%x6, %x31, 12  #1491 pc 16688
	j	be_else.9227 #pc 16692
	nop #pc 16696
	flw	%f0, 32(%x2)  #1492 pc 16700
	flw	%f1, 40(%x2)  #1492 pc 16704
	flw	%f2, 48(%x2)  #1492 pc 16708
	lw	%x6, 16(%x2)  #1492 pc 16712
	j	is_rect_outside.2820  #1492 pc 16716
	nop #pc 16720
be_else.9227: #pc 16724
	addi	%x31, %x0, 2  #pc 16724
	beq	%x6, %x31, 12  #1493 pc 16728
	j	be_else.9228 #pc 16732
	nop #pc 16736
	flw	%f0, 32(%x2)  #1494 pc 16740
	flw	%f1, 40(%x2)  #1494 pc 16744
	flw	%f2, 48(%x2)  #1494 pc 16748
	lw	%x6, 16(%x2)  #1494 pc 16752
	j	is_plane_outside.2825  #1494 pc 16756
	nop #pc 16760
be_else.9228: #pc 16764
	flw	%f0, 32(%x2)  #1496 pc 16764
	flw	%f1, 40(%x2)  #1496 pc 16768
	flw	%f2, 48(%x2)  #1496 pc 16772
	lw	%x6, 16(%x2)  #1496 pc 16776
	j	is_second_outside.2830  #1496 pc 16780
	nop #pc 16784
check_all_inside.2840:  #pc 16788
	lw	%x8, 4(%x29)  #1501 pc 16788
	slli	%x9, %x6, 2  #1501 pc 16792
	add	%x31, %x9, %x7  #1501 pc 16796
	lw	%x9, 0(%x31)  #1501 pc 16800
	addi	%x31, %x0, -1  #pc 16804
	beq	%x9, %x31, 12  #1502 pc 16808
	j	be_else.9229 #pc 16812
	nop #pc 16816
	addi	%x6, %x0, 1  #0 pc 16820
	ret #pc 16824
	nop #pc 16828
be_else.9229: #pc 16832
	slli	%x9, %x9, 2  #1505 pc 16832
	add	%x31, %x9, %x8  #1505 pc 16836
	lw	%x8, 0(%x31)  #1505 pc 16840
	fsw	%f2, 0(%x2)  #1505 pc 16844
	fsw	%f1, 8(%x2)  #1505 pc 16848
	fsw	%f0, 16(%x2)  #1505 pc 16852
	sw	%x7, 24(%x2)  #1505 pc 16856
	sw	%x29, 28(%x2)  #1505 pc 16860
	sw	%x6, 32(%x2)  #1505 pc 16864
	addi	%x6, %x8, 0  #0 pc 16868
	sw	%x1, 36(%x2)  #1505 pc 16872
	addi	%x2, %x2, 40  #1505 pc 16876
	jal	%x1, is_outside.2835  #1505 pc 16880
	addi	%x2, %x2, -40  #1505 pc 16884
	lw	%x1, 36(%x2) #1505 pc 16888
	beq	%x6, %x0, 12  #1505 pc 16892
	j	be_else.9230 #pc 16896
	nop #pc 16900
	lw	%x6, 32(%x2)  #1508 pc 16904
	addi	%x6, %x6, 1  #1508 pc 16908
	flw	%f0, 16(%x2)  #1508 pc 16912
	flw	%f1, 8(%x2)  #1508 pc 16916
	flw	%f2, 0(%x2)  #1508 pc 16920
	lw	%x7, 24(%x2)  #1508 pc 16924
	lw	%x29, 28(%x2)  #1508 pc 16928
	lw	%x30, 0(%x29)  #1508 pc 16932
	jalr	%x0, %x30, 0  #1508 pc 16936
	nop #pc 16940
be_else.9230: #pc 16944
	addi	%x6, %x0, 0  #0 pc 16944
	ret #pc 16948
	nop #pc 16952
shadow_check_and_group.2846:  #pc 16956
	lw	%x8, 28(%x29)  #0 pc 16956
	lw	%x9, 24(%x29)  #0 pc 16960
	lw	%x10, 20(%x29)  #0 pc 16964
	lw	%x11, 16(%x29)  #0 pc 16968
	lw	%x12, 12(%x29)  #0 pc 16972
	lw	%x13, 8(%x29)  #0 pc 16976
	lw	%x14, 4(%x29)  #0 pc 16980
	slli	%x15, %x6, 2  #1521 pc 16984
	add	%x31, %x15, %x7  #1521 pc 16988
	lw	%x15, 0(%x31)  #1521 pc 16992
	addi	%x31, %x0, -1  #pc 16996
	beq	%x15, %x31, 12  #1521 pc 17000
	j	be_else.9231 #pc 17004
	nop #pc 17008
	addi	%x6, %x0, 0  #0 pc 17012
	ret #pc 17016
	nop #pc 17020
be_else.9231: #pc 17024
	slli	%x15, %x6, 2  #1524 pc 17024
	add	%x31, %x15, %x7  #1524 pc 17028
	lw	%x15, 0(%x31)  #1524 pc 17032
	sw	%x14, 0(%x2)  #1525 pc 17036
	sw	%x13, 4(%x2)  #1525 pc 17040
	sw	%x12, 8(%x2)  #1525 pc 17044
	sw	%x7, 12(%x2)  #1525 pc 17048
	sw	%x29, 16(%x2)  #1525 pc 17052
	sw	%x6, 20(%x2)  #1525 pc 17056
	sw	%x10, 24(%x2)  #1525 pc 17060
	sw	%x15, 28(%x2)  #1525 pc 17064
	sw	%x9, 32(%x2)  #1525 pc 17068
	addi	%x7, %x11, 0  #0 pc 17072
	addi	%x6, %x15, 0  #0 pc 17076
	addi	%x29, %x8, 0  #0 pc 17080
	addi	%x8, %x13, 0  #0 pc 17084
	sw	%x1, 36(%x2)  #1525 pc 17088
	lw	%x30, 0(%x29)  #1525 pc 17092
	addi	%x2, %x2, 40  #1525 pc 17096
	jalr	%x1, %x30, 0  #1525 pc 17100
	addi	%x2, %x2, -40  #1525 pc 17104
	lw	%x1, 36(%x2)  #1525 pc 17108
	lw	%x7, 32(%x2)  #1526 pc 17112
	flw	%f0, 0(%x7)  #1526 pc 17116
	fsw	%f0, 40(%x2)  #1527 pc 17120
	beq	%x6, %x0, 12  #1527 pc 17124
	j	be_else.9233 #pc 17128
	nop #pc 17132
	addi	%x6, %x0, 0  #0 pc 17136
	j	be_cont.9234 #pc 17140
	nop #pc 17144
be_else.9233: #pc 17148
	fmv	%f1, l.6565  #0 pc 17148
	sw	%x1, 48(%x2)  #1527 pc 17152
	addi	%x2, %x2, 52  #1527 pc 17156
	jal	%x1, fless.2491  #1527 pc 17160
	addi	%x2, %x2, -52  #1527 pc 17164
	lw	%x1, 48(%x2) #1527 pc 17168
be_cont.9234: #pc 17172
	beq	%x6, %x0, 12  #1527 pc 17172
	j	be_else.9235 #pc 17176
	nop #pc 17180
	lw	%x6, 28(%x2)  #1543 pc 17184
	slli	%x6, %x6, 2  #1543 pc 17188
	lw	%x7, 24(%x2)  #1543 pc 17192
	add	%x31, %x6, %x7  #1543 pc 17196
	lw	%x6, 0(%x31)  #1543 pc 17200
	sw	%x1, 48(%x2)  #1543 pc 17204
	addi	%x2, %x2, 52  #1543 pc 17208
	jal	%x1, o_isinvert.2629  #1543 pc 17212
	addi	%x2, %x2, -52  #1543 pc 17216
	lw	%x1, 48(%x2) #1543 pc 17220
	beq	%x6, %x0, 12  #1543 pc 17224
	j	be_else.9236 #pc 17228
	nop #pc 17232
	addi	%x6, %x0, 0  #0 pc 17236
	ret #pc 17240
	nop #pc 17244
be_else.9236: #pc 17248
	lw	%x6, 20(%x2)  #1544 pc 17248
	addi	%x6, %x6, 1  #1544 pc 17252
	lw	%x7, 12(%x2)  #1544 pc 17256
	lw	%x29, 16(%x2)  #1544 pc 17260
	lw	%x30, 0(%x29)  #1544 pc 17264
	jalr	%x0, %x30, 0  #1544 pc 17268
	nop #pc 17272
be_else.9235: #pc 17276
	fmv	%f0, l.6567  #0 pc 17276
	flw	%f1, 40(%x2)  #1530 pc 17280
	fadd	%f0, %f1, %f0  #1530 pc 17284
	lw	%x6, 8(%x2)  #1531 pc 17288
	flw	%f1, 0(%x6)  #1531 pc 17292
	fmul	%f1, %f1, %f0  #1531 pc 17296
	lw	%x7, 4(%x2)  #1531 pc 17300
	flw	%f2, 0(%x7)  #1531 pc 17304
	fadd	%f1, %f1, %f2  #1531 pc 17308
	flw	%f2, 4(%x6)  #1532 pc 17312
	fmul	%f2, %f2, %f0  #1532 pc 17316
	flw	%f3, 4(%x7)  #1532 pc 17320
	fadd	%f2, %f2, %f3  #1532 pc 17324
	flw	%f3, 8(%x6)  #1533 pc 17328
	fmul	%f0, %f3, %f0  #1533 pc 17332
	flw	%f3, 8(%x7)  #1533 pc 17336
	fadd	%f0, %f0, %f3  #1533 pc 17340
	addi	%x6, %x0, 0  #0 pc 17344
	lw	%x7, 12(%x2)  #1534 pc 17348
	lw	%x29, 0(%x2)  #1534 pc 17352
	fadd	%f29, %f2, %f30  #0 pc 17356
	fadd	%f2, %f0, %f30  #0 pc 17360
	fadd	%f0, %f1, %f30  #0 pc 17364
	fadd	%f1, %f29, %f30  #0 pc 17368
	sw	%x1, 48(%x2)  #1534 pc 17372
	lw	%x30, 0(%x29)  #1534 pc 17376
	addi	%x2, %x2, 52  #1534 pc 17380
	jalr	%x1, %x30, 0  #1534 pc 17384
	addi	%x2, %x2, -52  #1534 pc 17388
	lw	%x1, 48(%x2)  #1534 pc 17392
	beq	%x6, %x0, 12  #1534 pc 17396
	j	be_else.9237 #pc 17400
	nop #pc 17404
	lw	%x6, 20(%x2)  #1537 pc 17408
	addi	%x6, %x6, 1  #1537 pc 17412
	lw	%x7, 12(%x2)  #1537 pc 17416
	lw	%x29, 16(%x2)  #1537 pc 17420
	lw	%x30, 0(%x29)  #1537 pc 17424
	jalr	%x0, %x30, 0  #1537 pc 17428
	nop #pc 17432
be_else.9237: #pc 17436
	addi	%x6, %x0, 1  #0 pc 17436
	ret #pc 17440
	nop #pc 17444
shadow_check_one_or_group.2849:  #pc 17448
	lw	%x8, 8(%x29)  #1551 pc 17448
	lw	%x9, 4(%x29)  #1551 pc 17452
	slli	%x10, %x6, 2  #1551 pc 17456
	add	%x31, %x10, %x7  #1551 pc 17460
	lw	%x10, 0(%x31)  #1551 pc 17464
	addi	%x31, %x0, -1  #pc 17468
	beq	%x10, %x31, 12  #1552 pc 17472
	j	be_else.9238 #pc 17476
	nop #pc 17480
	addi	%x6, %x0, 0  #0 pc 17484
	ret #pc 17488
	nop #pc 17492
be_else.9238: #pc 17496
	slli	%x10, %x10, 2  #1555 pc 17496
	add	%x31, %x10, %x9  #1555 pc 17500
	lw	%x9, 0(%x31)  #1555 pc 17504
	addi	%x10, %x0, 0  #0 pc 17508
	sw	%x7, 0(%x2)  #1556 pc 17512
	sw	%x29, 4(%x2)  #1556 pc 17516
	sw	%x6, 8(%x2)  #1556 pc 17520
	addi	%x7, %x9, 0  #0 pc 17524
	addi	%x6, %x10, 0  #0 pc 17528
	addi	%x29, %x8, 0  #0 pc 17532
	sw	%x1, 12(%x2)  #1556 pc 17536
	lw	%x30, 0(%x29)  #1556 pc 17540
	addi	%x2, %x2, 16  #1556 pc 17544
	jalr	%x1, %x30, 0  #1556 pc 17548
	addi	%x2, %x2, -16  #1556 pc 17552
	lw	%x1, 12(%x2)  #1556 pc 17556
	beq	%x6, %x0, 12  #1557 pc 17560
	j	be_else.9239 #pc 17564
	nop #pc 17568
	lw	%x6, 8(%x2)  #1560 pc 17572
	addi	%x6, %x6, 1  #1560 pc 17576
	lw	%x7, 0(%x2)  #1560 pc 17580
	lw	%x29, 4(%x2)  #1560 pc 17584
	lw	%x30, 0(%x29)  #1560 pc 17588
	jalr	%x0, %x30, 0  #1560 pc 17592
	nop #pc 17596
be_else.9239: #pc 17600
	addi	%x6, %x0, 1  #0 pc 17600
	ret #pc 17604
	nop #pc 17608
shadow_check_one_or_matrix.2852:  #pc 17612
	lw	%x8, 20(%x29)  #1566 pc 17612
	lw	%x9, 16(%x29)  #1566 pc 17616
	lw	%x10, 12(%x29)  #1566 pc 17620
	lw	%x11, 8(%x29)  #1566 pc 17624
	lw	%x12, 4(%x29)  #1566 pc 17628
	slli	%x13, %x6, 2  #1566 pc 17632
	add	%x31, %x13, %x7  #1566 pc 17636
	lw	%x13, 0(%x31)  #1566 pc 17640
	lw	%x14, 0(%x13)  #1567 pc 17644
	addi	%x31, %x0, -1  #pc 17648
	beq	%x14, %x31, 12  #1568 pc 17652
	j	be_else.9240 #pc 17656
	nop #pc 17660
	addi	%x6, %x0, 0  #0 pc 17664
	ret #pc 17668
	nop #pc 17672
be_else.9240: #pc 17676
	sw	%x13, 0(%x2)  #1572 pc 17676
	sw	%x10, 4(%x2)  #1572 pc 17680
	sw	%x7, 8(%x2)  #1572 pc 17684
	sw	%x29, 12(%x2)  #1572 pc 17688
	sw	%x6, 16(%x2)  #1572 pc 17692
	addi	%x31, %x0, 99  #pc 17696
	beq	%x14, %x31, 12  #1572 pc 17700
	j	be_else.9241 #pc 17704
	nop #pc 17708
	addi	%x6, %x0, 1  #0 pc 17712
	j	be_cont.9242 #pc 17716
	nop #pc 17720
be_else.9241: #pc 17724
	sw	%x9, 20(%x2)  #1575 pc 17724
	addi	%x7, %x11, 0  #0 pc 17728
	addi	%x6, %x14, 0  #0 pc 17732
	addi	%x29, %x8, 0  #0 pc 17736
	addi	%x8, %x12, 0  #0 pc 17740
	sw	%x1, 24(%x2)  #1575 pc 17744
	lw	%x30, 0(%x29)  #1575 pc 17748
	addi	%x2, %x2, 28  #1575 pc 17752
	jalr	%x1, %x30, 0  #1575 pc 17756
	addi	%x2, %x2, -28  #1575 pc 17760
	lw	%x1, 24(%x2)  #1575 pc 17764
	beq	%x6, %x0, 12  #1578 pc 17768
	j	be_else.9243 #pc 17772
	nop #pc 17776
	addi	%x6, %x0, 0  #0 pc 17780
	j	be_cont.9244 #pc 17784
	nop #pc 17788
be_else.9243: #pc 17792
	lw	%x6, 20(%x2)  #1579 pc 17792
	flw	%f0, 0(%x6)  #1579 pc 17796
	fmv	%f1, l.6581  #0 pc 17800
	sw	%x1, 24(%x2)  #1579 pc 17804
	addi	%x2, %x2, 28  #1579 pc 17808
	jal	%x1, fless.2491  #1579 pc 17812
	addi	%x2, %x2, -28  #1579 pc 17816
	lw	%x1, 24(%x2) #1579 pc 17820
	beq	%x6, %x0, 12  #1579 pc 17824
	j	be_else.9245 #pc 17828
	nop #pc 17832
	addi	%x6, %x0, 0  #0 pc 17836
	j	be_cont.9246 #pc 17840
	nop #pc 17844
be_else.9245: #pc 17848
	addi	%x6, %x0, 1  #0 pc 17848
	lw	%x7, 0(%x2)  #1580 pc 17852
	lw	%x29, 4(%x2)  #1580 pc 17856
	sw	%x1, 24(%x2)  #1580 pc 17860
	lw	%x30, 0(%x29)  #1580 pc 17864
	addi	%x2, %x2, 28  #1580 pc 17868
	jalr	%x1, %x30, 0  #1580 pc 17872
	addi	%x2, %x2, -28  #1580 pc 17876
	lw	%x1, 24(%x2)  #1580 pc 17880
	beq	%x6, %x0, 12  #1580 pc 17884
	j	be_else.9247 #pc 17888
	nop #pc 17892
	addi	%x6, %x0, 0  #0 pc 17896
	j	be_cont.9248 #pc 17900
	nop #pc 17904
be_else.9247: #pc 17908
	addi	%x6, %x0, 1  #0 pc 17908
be_cont.9248: #pc 17912
be_cont.9246: #pc 17912
be_cont.9244: #pc 17912
be_cont.9242: #pc 17912
	beq	%x6, %x0, 12  #1571 pc 17912
	j	be_else.9249 #pc 17916
	nop #pc 17920
	lw	%x6, 16(%x2)  #1591 pc 17924
	addi	%x6, %x6, 1  #1591 pc 17928
	lw	%x7, 8(%x2)  #1591 pc 17932
	lw	%x29, 12(%x2)  #1591 pc 17936
	lw	%x30, 0(%x29)  #1591 pc 17940
	jalr	%x0, %x30, 0  #1591 pc 17944
	nop #pc 17948
be_else.9249: #pc 17952
	addi	%x6, %x0, 1  #0 pc 17952
	lw	%x7, 0(%x2)  #1586 pc 17956
	lw	%x29, 4(%x2)  #1586 pc 17960
	sw	%x1, 24(%x2)  #1586 pc 17964
	lw	%x30, 0(%x29)  #1586 pc 17968
	addi	%x2, %x2, 28  #1586 pc 17972
	jalr	%x1, %x30, 0  #1586 pc 17976
	addi	%x2, %x2, -28  #1586 pc 17980
	lw	%x1, 24(%x2)  #1586 pc 17984
	beq	%x6, %x0, 12  #1586 pc 17988
	j	be_else.9250 #pc 17992
	nop #pc 17996
	lw	%x6, 16(%x2)  #1589 pc 18000
	addi	%x6, %x6, 1  #1589 pc 18004
	lw	%x7, 8(%x2)  #1589 pc 18008
	lw	%x29, 12(%x2)  #1589 pc 18012
	lw	%x30, 0(%x29)  #1589 pc 18016
	jalr	%x0, %x30, 0  #1589 pc 18020
	nop #pc 18024
be_else.9250: #pc 18028
	addi	%x6, %x0, 1  #0 pc 18028
	ret #pc 18032
	nop #pc 18036
solve_each_element.2855:  #pc 18040
	lw	%x9, 36(%x29)  #1602 pc 18040
	lw	%x10, 32(%x29)  #1602 pc 18044
	lw	%x11, 28(%x29)  #1602 pc 18048
	lw	%x12, 24(%x29)  #1602 pc 18052
	lw	%x13, 20(%x29)  #1602 pc 18056
	lw	%x14, 16(%x29)  #1602 pc 18060
	lw	%x15, 12(%x29)  #1602 pc 18064
	lw	%x16, 8(%x29)  #1602 pc 18068
	lw	%x17, 4(%x29)  #1602 pc 18072
	slli	%x18, %x6, 2  #1602 pc 18076
	add	%x31, %x18, %x7  #1602 pc 18080
	lw	%x18, 0(%x31)  #1602 pc 18084
	addi	%x31, %x0, -1  #pc 18088
	beq	%x18, %x31, 12  #1603 pc 18092
	j	be_else.9251 #pc 18096
	nop #pc 18100
	ret #pc 18104
	nop #pc 18108
be_else.9251: #pc 18112
	sw	%x14, 0(%x2)  #1605 pc 18112
	sw	%x16, 4(%x2)  #1605 pc 18116
	sw	%x15, 8(%x2)  #1605 pc 18120
	sw	%x17, 12(%x2)  #1605 pc 18124
	sw	%x10, 16(%x2)  #1605 pc 18128
	sw	%x9, 20(%x2)  #1605 pc 18132
	sw	%x11, 24(%x2)  #1605 pc 18136
	sw	%x8, 28(%x2)  #1605 pc 18140
	sw	%x7, 32(%x2)  #1605 pc 18144
	sw	%x29, 36(%x2)  #1605 pc 18148
	sw	%x6, 40(%x2)  #1605 pc 18152
	sw	%x13, 44(%x2)  #1605 pc 18156
	sw	%x18, 48(%x2)  #1605 pc 18160
	addi	%x7, %x8, 0  #0 pc 18164
	addi	%x6, %x18, 0  #0 pc 18168
	addi	%x29, %x12, 0  #0 pc 18172
	addi	%x8, %x10, 0  #0 pc 18176
	sw	%x1, 52(%x2)  #1605 pc 18180
	lw	%x30, 0(%x29)  #1605 pc 18184
	addi	%x2, %x2, 56  #1605 pc 18188
	jalr	%x1, %x30, 0  #1605 pc 18192
	addi	%x2, %x2, -56  #1605 pc 18196
	lw	%x1, 52(%x2)  #1605 pc 18200
	beq	%x6, %x0, 12  #1606 pc 18204
	j	be_else.9253 #pc 18208
	nop #pc 18212
	lw	%x6, 48(%x2)  #1634 pc 18216
	slli	%x6, %x6, 2  #1634 pc 18220
	lw	%x7, 44(%x2)  #1634 pc 18224
	add	%x31, %x6, %x7  #1634 pc 18228
	lw	%x6, 0(%x31)  #1634 pc 18232
	sw	%x1, 52(%x2)  #1634 pc 18236
	addi	%x2, %x2, 56  #1634 pc 18240
	jal	%x1, o_isinvert.2629  #1634 pc 18244
	addi	%x2, %x2, -56  #1634 pc 18248
	lw	%x1, 52(%x2) #1634 pc 18252
	beq	%x6, %x0, 12  #1634 pc 18256
	j	be_else.9254 #pc 18260
	nop #pc 18264
	ret #pc 18268
	nop #pc 18272
be_else.9254: #pc 18276
	lw	%x6, 40(%x2)  #1635 pc 18276
	addi	%x6, %x6, 1  #1635 pc 18280
	lw	%x7, 32(%x2)  #1635 pc 18284
	lw	%x8, 28(%x2)  #1635 pc 18288
	lw	%x29, 36(%x2)  #1635 pc 18292
	lw	%x30, 0(%x29)  #1635 pc 18296
	jalr	%x0, %x30, 0  #1635 pc 18300
	nop #pc 18304
be_else.9253: #pc 18308
	lw	%x7, 24(%x2)  #1610 pc 18308
	flw	%f1, 0(%x7)  #1610 pc 18312
	fmv	%f0, l.6176  #0 pc 18316
	sw	%x6, 52(%x2)  #1612 pc 18320
	fsw	%f1, 56(%x2)  #1612 pc 18324
	sw	%x1, 64(%x2)  #1612 pc 18328
	addi	%x2, %x2, 68  #1612 pc 18332
	jal	%x1, fless.2491  #1612 pc 18336
	addi	%x2, %x2, -68  #1612 pc 18340
	lw	%x1, 64(%x2) #1612 pc 18344
	beq	%x6, %x0, 12  #1612 pc 18348
	j	be_else.9256 #pc 18352
	nop #pc 18356
	j	be_cont.9257 #pc 18360
	nop #pc 18364
be_else.9256: #pc 18368
	lw	%x6, 20(%x2)  #1613 pc 18368
	flw	%f1, 0(%x6)  #1613 pc 18372
	flw	%f0, 56(%x2)  #1613 pc 18376
	sw	%x1, 64(%x2)  #1613 pc 18380
	addi	%x2, %x2, 68  #1613 pc 18384
	jal	%x1, fless.2491  #1613 pc 18388
	addi	%x2, %x2, -68  #1613 pc 18392
	lw	%x1, 64(%x2) #1613 pc 18396
	beq	%x6, %x0, 12  #1613 pc 18400
	j	be_else.9258 #pc 18404
	nop #pc 18408
	j	be_cont.9259 #pc 18412
	nop #pc 18416
be_else.9258: #pc 18420
	fmv	%f0, l.6567  #0 pc 18420
	flw	%f1, 56(%x2)  #1615 pc 18424
	fadd	%f0, %f1, %f0  #1615 pc 18428
	lw	%x6, 28(%x2)  #1616 pc 18432
	flw	%f1, 0(%x6)  #1616 pc 18436
	fmul	%f1, %f1, %f0  #1616 pc 18440
	lw	%x7, 16(%x2)  #1616 pc 18444
	flw	%f2, 0(%x7)  #1616 pc 18448
	fadd	%f1, %f1, %f2  #1616 pc 18452
	flw	%f2, 4(%x6)  #1617 pc 18456
	fmul	%f2, %f2, %f0  #1617 pc 18460
	flw	%f3, 4(%x7)  #1617 pc 18464
	fadd	%f2, %f2, %f3  #1617 pc 18468
	flw	%f3, 8(%x6)  #1618 pc 18472
	fmul	%f3, %f3, %f0  #1618 pc 18476
	flw	%f4, 8(%x7)  #1618 pc 18480
	fadd	%f3, %f3, %f4  #1618 pc 18484
	addi	%x7, %x0, 0  #0 pc 18488
	lw	%x8, 32(%x2)  #1619 pc 18492
	lw	%x29, 12(%x2)  #1619 pc 18496
	fsw	%f3, 64(%x2)  #1619 pc 18500
	fsw	%f2, 72(%x2)  #1619 pc 18504
	fsw	%f1, 80(%x2)  #1619 pc 18508
	fsw	%f0, 88(%x2)  #1619 pc 18512
	addi	%x6, %x7, 0  #0 pc 18516
	addi	%x7, %x8, 0  #0 pc 18520
	fadd	%f0, %f1, %f30  #0 pc 18524
	fadd	%f1, %f2, %f30  #0 pc 18528
	fadd	%f2, %f3, %f30  #0 pc 18532
	sw	%x1, 96(%x2)  #1619 pc 18536
	lw	%x30, 0(%x29)  #1619 pc 18540
	addi	%x2, %x2, 100  #1619 pc 18544
	jalr	%x1, %x30, 0  #1619 pc 18548
	addi	%x2, %x2, -100  #1619 pc 18552
	lw	%x1, 96(%x2)  #1619 pc 18556
	beq	%x6, %x0, 12  #1619 pc 18560
	j	be_else.9260 #pc 18564
	nop #pc 18568
	j	be_cont.9261 #pc 18572
	nop #pc 18576
be_else.9260: #pc 18580
	lw	%x6, 20(%x2)  #1621 pc 18580
	flw	%f0, 88(%x2)  #1621 pc 18584
	fsw	%f0, 0(%x6)  #1621 pc 18588
	flw	%f0, 80(%x2)  #1622 pc 18592
	flw	%f1, 72(%x2)  #1622 pc 18596
	flw	%f2, 64(%x2)  #1622 pc 18600
	lw	%x6, 8(%x2)  #1622 pc 18604
	sw	%x1, 96(%x2)  #1622 pc 18608
	addi	%x2, %x2, 100  #1622 pc 18612
	jal	%x1, vecset.2585  #1622 pc 18616
	addi	%x2, %x2, -100  #1622 pc 18620
	lw	%x1, 96(%x2) #1622 pc 18624
	lw	%x6, 4(%x2)  #1623 pc 18628
	lw	%x7, 48(%x2)  #1623 pc 18632
	sw	%x7, 0(%x6)  #1623 pc 18636
	lw	%x6, 0(%x2)  #1624 pc 18640
	lw	%x7, 52(%x2)  #1624 pc 18644
	sw	%x7, 0(%x6)  #1624 pc 18648
be_cont.9261: #pc 18652
be_cont.9259: #pc 18652
be_cont.9257: #pc 18652
	lw	%x6, 40(%x2)  #1630 pc 18652
	addi	%x6, %x6, 1  #1630 pc 18656
	lw	%x7, 32(%x2)  #1630 pc 18660
	lw	%x8, 28(%x2)  #1630 pc 18664
	lw	%x29, 36(%x2)  #1630 pc 18668
	lw	%x30, 0(%x29)  #1630 pc 18672
	jalr	%x0, %x30, 0  #1630 pc 18676
	nop #pc 18680
solve_one_or_network.2859:  #pc 18684
	lw	%x9, 8(%x29)  #1643 pc 18684
	lw	%x10, 4(%x29)  #1643 pc 18688
	slli	%x11, %x6, 2  #1643 pc 18692
	add	%x31, %x11, %x7  #1643 pc 18696
	lw	%x11, 0(%x31)  #1643 pc 18700
	addi	%x31, %x0, -1  #pc 18704
	beq	%x11, %x31, 12  #1644 pc 18708
	j	be_else.9262 #pc 18712
	nop #pc 18716
	ret #pc 18720
	nop #pc 18724
be_else.9262: #pc 18728
	slli	%x11, %x11, 2  #1645 pc 18728
	add	%x31, %x11, %x10  #1645 pc 18732
	lw	%x10, 0(%x31)  #1645 pc 18736
	addi	%x11, %x0, 0  #0 pc 18740
	sw	%x8, 0(%x2)  #1646 pc 18744
	sw	%x7, 4(%x2)  #1646 pc 18748
	sw	%x29, 8(%x2)  #1646 pc 18752
	sw	%x6, 12(%x2)  #1646 pc 18756
	addi	%x7, %x10, 0  #0 pc 18760
	addi	%x6, %x11, 0  #0 pc 18764
	addi	%x29, %x9, 0  #0 pc 18768
	sw	%x1, 16(%x2)  #1646 pc 18772
	lw	%x30, 0(%x29)  #1646 pc 18776
	addi	%x2, %x2, 20  #1646 pc 18780
	jalr	%x1, %x30, 0  #1646 pc 18784
	addi	%x2, %x2, -20  #1646 pc 18788
	lw	%x1, 16(%x2)  #1646 pc 18792
	lw	%x6, 12(%x2)  #1647 pc 18796
	addi	%x6, %x6, 1  #1647 pc 18800
	lw	%x7, 4(%x2)  #1647 pc 18804
	lw	%x8, 0(%x2)  #1647 pc 18808
	lw	%x29, 8(%x2)  #1647 pc 18812
	lw	%x30, 0(%x29)  #1647 pc 18816
	jalr	%x0, %x30, 0  #1647 pc 18820
	nop #pc 18824
trace_or_matrix.2863:  #pc 18828
	lw	%x9, 20(%x29)  #1653 pc 18828
	lw	%x10, 16(%x29)  #1653 pc 18832
	lw	%x11, 12(%x29)  #1653 pc 18836
	lw	%x12, 8(%x29)  #1653 pc 18840
	lw	%x13, 4(%x29)  #1653 pc 18844
	slli	%x14, %x6, 2  #1653 pc 18848
	add	%x31, %x14, %x7  #1653 pc 18852
	lw	%x14, 0(%x31)  #1653 pc 18856
	lw	%x15, 0(%x14)  #1654 pc 18860
	addi	%x31, %x0, -1  #pc 18864
	beq	%x15, %x31, 12  #1655 pc 18868
	j	be_else.9264 #pc 18872
	nop #pc 18876
	ret #pc 18880
	nop #pc 18884
be_else.9264: #pc 18888
	sw	%x8, 0(%x2)  #1658 pc 18888
	sw	%x7, 4(%x2)  #1658 pc 18892
	sw	%x29, 8(%x2)  #1658 pc 18896
	sw	%x6, 12(%x2)  #1658 pc 18900
	addi	%x31, %x0, 99  #pc 18904
	beq	%x15, %x31, 12  #1658 pc 18908
	j	be_else.9266 #pc 18912
	nop #pc 18916
	addi	%x9, %x0, 1  #0 pc 18920
	addi	%x7, %x14, 0  #0 pc 18924
	addi	%x6, %x9, 0  #0 pc 18928
	addi	%x29, %x13, 0  #0 pc 18932
	sw	%x1, 16(%x2)  #1659 pc 18936
	lw	%x30, 0(%x29)  #1659 pc 18940
	addi	%x2, %x2, 20  #1659 pc 18944
	jalr	%x1, %x30, 0  #1659 pc 18948
	addi	%x2, %x2, -20  #1659 pc 18952
	lw	%x1, 16(%x2)  #1659 pc 18956
	j	be_cont.9267 #pc 18960
	nop #pc 18964
be_else.9266: #pc 18968
	sw	%x14, 16(%x2)  #1663 pc 18968
	sw	%x13, 20(%x2)  #1663 pc 18972
	sw	%x9, 24(%x2)  #1663 pc 18976
	sw	%x11, 28(%x2)  #1663 pc 18980
	addi	%x7, %x8, 0  #0 pc 18984
	addi	%x6, %x15, 0  #0 pc 18988
	addi	%x29, %x12, 0  #0 pc 18992
	addi	%x8, %x10, 0  #0 pc 18996
	sw	%x1, 32(%x2)  #1663 pc 19000
	lw	%x30, 0(%x29)  #1663 pc 19004
	addi	%x2, %x2, 36  #1663 pc 19008
	jalr	%x1, %x30, 0  #1663 pc 19012
	addi	%x2, %x2, -36  #1663 pc 19016
	lw	%x1, 32(%x2)  #1663 pc 19020
	beq	%x6, %x0, 12  #1664 pc 19024
	j	be_else.9268 #pc 19028
	nop #pc 19032
	j	be_cont.9269 #pc 19036
	nop #pc 19040
be_else.9268: #pc 19044
	lw	%x6, 28(%x2)  #1665 pc 19044
	flw	%f0, 0(%x6)  #1665 pc 19048
	lw	%x6, 24(%x2)  #1666 pc 19052
	flw	%f1, 0(%x6)  #1666 pc 19056
	sw	%x1, 32(%x2)  #1666 pc 19060
	addi	%x2, %x2, 36  #1666 pc 19064
	jal	%x1, fless.2491  #1666 pc 19068
	addi	%x2, %x2, -36  #1666 pc 19072
	lw	%x1, 32(%x2) #1666 pc 19076
	beq	%x6, %x0, 12  #1666 pc 19080
	j	be_else.9270 #pc 19084
	nop #pc 19088
	j	be_cont.9271 #pc 19092
	nop #pc 19096
be_else.9270: #pc 19100
	addi	%x6, %x0, 1  #0 pc 19100
	lw	%x7, 16(%x2)  #1667 pc 19104
	lw	%x8, 0(%x2)  #1667 pc 19108
	lw	%x29, 20(%x2)  #1667 pc 19112
	sw	%x1, 32(%x2)  #1667 pc 19116
	lw	%x30, 0(%x29)  #1667 pc 19120
	addi	%x2, %x2, 36  #1667 pc 19124
	jalr	%x1, %x30, 0  #1667 pc 19128
	addi	%x2, %x2, -36  #1667 pc 19132
	lw	%x1, 32(%x2)  #1667 pc 19136
be_cont.9271: #pc 19140
be_cont.9269: #pc 19140
be_cont.9267: #pc 19140
	lw	%x6, 12(%x2)  #1671 pc 19140
	addi	%x6, %x6, 1  #1671 pc 19144
	lw	%x7, 4(%x2)  #1671 pc 19148
	lw	%x8, 0(%x2)  #1671 pc 19152
	lw	%x29, 8(%x2)  #1671 pc 19156
	lw	%x30, 0(%x29)  #1671 pc 19160
	jalr	%x0, %x30, 0  #1671 pc 19164
	nop #pc 19168
judge_intersection.2867:  #pc 19172
	lw	%x7, 12(%x29)  #0 pc 19172
	lw	%x8, 8(%x29)  #0 pc 19176
	lw	%x9, 4(%x29)  #0 pc 19180
	fmv	%f0, l.6604  #0 pc 19184
	fsw	%f0, 0(%x8)  #1680 pc 19188
	addi	%x10, %x0, 0  #0 pc 19192
	lw	%x9, 0(%x9)  #1681 pc 19196
	sw	%x8, 0(%x2)  #1681 pc 19200
	addi	%x8, %x6, 0  #0 pc 19204
	addi	%x29, %x7, 0  #0 pc 19208
	addi	%x7, %x9, 0  #0 pc 19212
	addi	%x6, %x10, 0  #0 pc 19216
	sw	%x1, 4(%x2)  #1681 pc 19220
	lw	%x30, 0(%x29)  #1681 pc 19224
	addi	%x2, %x2, 8  #1681 pc 19228
	jalr	%x1, %x30, 0  #1681 pc 19232
	addi	%x2, %x2, -8  #1681 pc 19236
	lw	%x1, 4(%x2)  #1681 pc 19240
	lw	%x6, 0(%x2)  #1682 pc 19244
	flw	%f1, 0(%x6)  #1682 pc 19248
	fmv	%f0, l.6581  #0 pc 19252
	fsw	%f1, 8(%x2)  #1684 pc 19256
	sw	%x1, 16(%x2)  #1684 pc 19260
	addi	%x2, %x2, 20  #1684 pc 19264
	jal	%x1, fless.2491  #1684 pc 19268
	addi	%x2, %x2, -20  #1684 pc 19272
	lw	%x1, 16(%x2) #1684 pc 19276
	beq	%x6, %x0, 12  #1684 pc 19280
	j	be_else.9273 #pc 19284
	nop #pc 19288
	addi	%x6, %x0, 0  #0 pc 19292
	ret #pc 19296
	nop #pc 19300
be_else.9273: #pc 19304
	fmv	%f1, l.6610  #0 pc 19304
	flw	%f0, 8(%x2)  #1685 pc 19308
	j	fless.2491  #1685 pc 19312
	nop #pc 19316
solve_each_element_fast.2869:  #pc 19320
	lw	%x9, 36(%x29)  #1695 pc 19320
	lw	%x10, 32(%x29)  #1695 pc 19324
	lw	%x11, 28(%x29)  #1695 pc 19328
	lw	%x12, 24(%x29)  #1695 pc 19332
	lw	%x13, 20(%x29)  #1695 pc 19336
	lw	%x14, 16(%x29)  #1695 pc 19340
	lw	%x15, 12(%x29)  #1695 pc 19344
	lw	%x16, 8(%x29)  #1695 pc 19348
	lw	%x17, 4(%x29)  #1695 pc 19352
	sw	%x14, 0(%x2)  #1695 pc 19356
	sw	%x16, 4(%x2)  #1695 pc 19360
	sw	%x15, 8(%x2)  #1695 pc 19364
	sw	%x17, 12(%x2)  #1695 pc 19368
	sw	%x10, 16(%x2)  #1695 pc 19372
	sw	%x9, 20(%x2)  #1695 pc 19376
	sw	%x12, 24(%x2)  #1695 pc 19380
	sw	%x29, 28(%x2)  #1695 pc 19384
	sw	%x13, 32(%x2)  #1695 pc 19388
	sw	%x8, 36(%x2)  #1695 pc 19392
	sw	%x11, 40(%x2)  #1695 pc 19396
	sw	%x7, 44(%x2)  #1695 pc 19400
	sw	%x6, 48(%x2)  #1695 pc 19404
	addi	%x6, %x8, 0  #0 pc 19408
	sw	%x1, 52(%x2)  #1695 pc 19412
	addi	%x2, %x2, 56  #1695 pc 19416
	jal	%x1, d_vec.2684  #1695 pc 19420
	addi	%x2, %x2, -56  #1695 pc 19424
	lw	%x1, 52(%x2) #1695 pc 19428
	lw	%x7, 48(%x2)  #1696 pc 19432
	slli	%x8, %x7, 2  #1696 pc 19436
	lw	%x9, 44(%x2)  #1696 pc 19440
	add	%x31, %x8, %x9  #1696 pc 19444
	lw	%x8, 0(%x31)  #1696 pc 19448
	addi	%x31, %x0, -1  #pc 19452
	beq	%x8, %x31, 12  #1697 pc 19456
	j	be_else.9274 #pc 19460
	nop #pc 19464
	ret #pc 19468
	nop #pc 19472
be_else.9274: #pc 19476
	lw	%x10, 36(%x2)  #1699 pc 19476
	lw	%x29, 40(%x2)  #1699 pc 19480
	sw	%x6, 52(%x2)  #1699 pc 19484
	sw	%x8, 56(%x2)  #1699 pc 19488
	addi	%x7, %x10, 0  #0 pc 19492
	addi	%x6, %x8, 0  #0 pc 19496
	sw	%x1, 60(%x2)  #1699 pc 19500
	lw	%x30, 0(%x29)  #1699 pc 19504
	addi	%x2, %x2, 64  #1699 pc 19508
	jalr	%x1, %x30, 0  #1699 pc 19512
	addi	%x2, %x2, -64  #1699 pc 19516
	lw	%x1, 60(%x2)  #1699 pc 19520
	beq	%x6, %x0, 12  #1700 pc 19524
	j	be_else.9276 #pc 19528
	nop #pc 19532
	lw	%x6, 56(%x2)  #1728 pc 19536
	slli	%x6, %x6, 2  #1728 pc 19540
	lw	%x7, 32(%x2)  #1728 pc 19544
	add	%x31, %x6, %x7  #1728 pc 19548
	lw	%x6, 0(%x31)  #1728 pc 19552
	sw	%x1, 60(%x2)  #1728 pc 19556
	addi	%x2, %x2, 64  #1728 pc 19560
	jal	%x1, o_isinvert.2629  #1728 pc 19564
	addi	%x2, %x2, -64  #1728 pc 19568
	lw	%x1, 60(%x2) #1728 pc 19572
	beq	%x6, %x0, 12  #1728 pc 19576
	j	be_else.9277 #pc 19580
	nop #pc 19584
	ret #pc 19588
	nop #pc 19592
be_else.9277: #pc 19596
	lw	%x6, 48(%x2)  #1729 pc 19596
	addi	%x6, %x6, 1  #1729 pc 19600
	lw	%x7, 44(%x2)  #1729 pc 19604
	lw	%x8, 36(%x2)  #1729 pc 19608
	lw	%x29, 28(%x2)  #1729 pc 19612
	lw	%x30, 0(%x29)  #1729 pc 19616
	jalr	%x0, %x30, 0  #1729 pc 19620
	nop #pc 19624
be_else.9276: #pc 19628
	lw	%x7, 24(%x2)  #1704 pc 19628
	flw	%f1, 0(%x7)  #1704 pc 19632
	fmv	%f0, l.6176  #0 pc 19636
	sw	%x6, 60(%x2)  #1706 pc 19640
	fsw	%f1, 64(%x2)  #1706 pc 19644
	sw	%x1, 72(%x2)  #1706 pc 19648
	addi	%x2, %x2, 76  #1706 pc 19652
	jal	%x1, fless.2491  #1706 pc 19656
	addi	%x2, %x2, -76  #1706 pc 19660
	lw	%x1, 72(%x2) #1706 pc 19664
	beq	%x6, %x0, 12  #1706 pc 19668
	j	be_else.9279 #pc 19672
	nop #pc 19676
	j	be_cont.9280 #pc 19680
	nop #pc 19684
be_else.9279: #pc 19688
	lw	%x6, 20(%x2)  #1707 pc 19688
	flw	%f1, 0(%x6)  #1707 pc 19692
	flw	%f0, 64(%x2)  #1707 pc 19696
	sw	%x1, 72(%x2)  #1707 pc 19700
	addi	%x2, %x2, 76  #1707 pc 19704
	jal	%x1, fless.2491  #1707 pc 19708
	addi	%x2, %x2, -76  #1707 pc 19712
	lw	%x1, 72(%x2) #1707 pc 19716
	beq	%x6, %x0, 12  #1707 pc 19720
	j	be_else.9281 #pc 19724
	nop #pc 19728
	j	be_cont.9282 #pc 19732
	nop #pc 19736
be_else.9281: #pc 19740
	fmv	%f0, l.6567  #0 pc 19740
	flw	%f1, 64(%x2)  #1709 pc 19744
	fadd	%f0, %f1, %f0  #1709 pc 19748
	lw	%x6, 52(%x2)  #1710 pc 19752
	flw	%f1, 0(%x6)  #1710 pc 19756
	fmul	%f1, %f1, %f0  #1710 pc 19760
	lw	%x7, 16(%x2)  #1710 pc 19764
	flw	%f2, 0(%x7)  #1710 pc 19768
	fadd	%f1, %f1, %f2  #1710 pc 19772
	flw	%f2, 4(%x6)  #1711 pc 19776
	fmul	%f2, %f2, %f0  #1711 pc 19780
	flw	%f3, 4(%x7)  #1711 pc 19784
	fadd	%f2, %f2, %f3  #1711 pc 19788
	flw	%f3, 8(%x6)  #1712 pc 19792
	fmul	%f3, %f3, %f0  #1712 pc 19796
	flw	%f4, 8(%x7)  #1712 pc 19800
	fadd	%f3, %f3, %f4  #1712 pc 19804
	addi	%x6, %x0, 0  #0 pc 19808
	lw	%x7, 44(%x2)  #1713 pc 19812
	lw	%x29, 12(%x2)  #1713 pc 19816
	fsw	%f3, 72(%x2)  #1713 pc 19820
	fsw	%f2, 80(%x2)  #1713 pc 19824
	fsw	%f1, 88(%x2)  #1713 pc 19828
	fsw	%f0, 96(%x2)  #1713 pc 19832
	fadd	%f0, %f1, %f30  #0 pc 19836
	fadd	%f1, %f2, %f30  #0 pc 19840
	fadd	%f2, %f3, %f30  #0 pc 19844
	sw	%x1, 104(%x2)  #1713 pc 19848
	lw	%x30, 0(%x29)  #1713 pc 19852
	addi	%x2, %x2, 108  #1713 pc 19856
	jalr	%x1, %x30, 0  #1713 pc 19860
	addi	%x2, %x2, -108  #1713 pc 19864
	lw	%x1, 104(%x2)  #1713 pc 19868
	beq	%x6, %x0, 12  #1713 pc 19872
	j	be_else.9283 #pc 19876
	nop #pc 19880
	j	be_cont.9284 #pc 19884
	nop #pc 19888
be_else.9283: #pc 19892
	lw	%x6, 20(%x2)  #1715 pc 19892
	flw	%f0, 96(%x2)  #1715 pc 19896
	fsw	%f0, 0(%x6)  #1715 pc 19900
	flw	%f0, 88(%x2)  #1716 pc 19904
	flw	%f1, 80(%x2)  #1716 pc 19908
	flw	%f2, 72(%x2)  #1716 pc 19912
	lw	%x6, 8(%x2)  #1716 pc 19916
	sw	%x1, 104(%x2)  #1716 pc 19920
	addi	%x2, %x2, 108  #1716 pc 19924
	jal	%x1, vecset.2585  #1716 pc 19928
	addi	%x2, %x2, -108  #1716 pc 19932
	lw	%x1, 104(%x2) #1716 pc 19936
	lw	%x6, 4(%x2)  #1717 pc 19940
	lw	%x7, 56(%x2)  #1717 pc 19944
	sw	%x7, 0(%x6)  #1717 pc 19948
	lw	%x6, 0(%x2)  #1718 pc 19952
	lw	%x7, 60(%x2)  #1718 pc 19956
	sw	%x7, 0(%x6)  #1718 pc 19960
be_cont.9284: #pc 19964
be_cont.9282: #pc 19964
be_cont.9280: #pc 19964
	lw	%x6, 48(%x2)  #1724 pc 19964
	addi	%x6, %x6, 1  #1724 pc 19968
	lw	%x7, 44(%x2)  #1724 pc 19972
	lw	%x8, 36(%x2)  #1724 pc 19976
	lw	%x29, 28(%x2)  #1724 pc 19980
	lw	%x30, 0(%x29)  #1724 pc 19984
	jalr	%x0, %x30, 0  #1724 pc 19988
	nop #pc 19992
solve_one_or_network_fast.2873:  #pc 19996
	lw	%x9, 8(%x29)  #1736 pc 19996
	lw	%x10, 4(%x29)  #1736 pc 20000
	slli	%x11, %x6, 2  #1736 pc 20004
	add	%x31, %x11, %x7  #1736 pc 20008
	lw	%x11, 0(%x31)  #1736 pc 20012
	addi	%x31, %x0, -1  #pc 20016
	beq	%x11, %x31, 12  #1737 pc 20020
	j	be_else.9285 #pc 20024
	nop #pc 20028
	ret #pc 20032
	nop #pc 20036
be_else.9285: #pc 20040
	slli	%x11, %x11, 2  #1738 pc 20040
	add	%x31, %x11, %x10  #1738 pc 20044
	lw	%x10, 0(%x31)  #1738 pc 20048
	addi	%x11, %x0, 0  #0 pc 20052
	sw	%x8, 0(%x2)  #1739 pc 20056
	sw	%x7, 4(%x2)  #1739 pc 20060
	sw	%x29, 8(%x2)  #1739 pc 20064
	sw	%x6, 12(%x2)  #1739 pc 20068
	addi	%x7, %x10, 0  #0 pc 20072
	addi	%x6, %x11, 0  #0 pc 20076
	addi	%x29, %x9, 0  #0 pc 20080
	sw	%x1, 16(%x2)  #1739 pc 20084
	lw	%x30, 0(%x29)  #1739 pc 20088
	addi	%x2, %x2, 20  #1739 pc 20092
	jalr	%x1, %x30, 0  #1739 pc 20096
	addi	%x2, %x2, -20  #1739 pc 20100
	lw	%x1, 16(%x2)  #1739 pc 20104
	lw	%x6, 12(%x2)  #1740 pc 20108
	addi	%x6, %x6, 1  #1740 pc 20112
	lw	%x7, 4(%x2)  #1740 pc 20116
	lw	%x8, 0(%x2)  #1740 pc 20120
	lw	%x29, 8(%x2)  #1740 pc 20124
	lw	%x30, 0(%x29)  #1740 pc 20128
	jalr	%x0, %x30, 0  #1740 pc 20132
	nop #pc 20136
trace_or_matrix_fast.2877:  #pc 20140
	lw	%x9, 16(%x29)  #1746 pc 20140
	lw	%x10, 12(%x29)  #1746 pc 20144
	lw	%x11, 8(%x29)  #1746 pc 20148
	lw	%x12, 4(%x29)  #1746 pc 20152
	slli	%x13, %x6, 2  #1746 pc 20156
	add	%x31, %x13, %x7  #1746 pc 20160
	lw	%x13, 0(%x31)  #1746 pc 20164
	lw	%x14, 0(%x13)  #1747 pc 20168
	addi	%x31, %x0, -1  #pc 20172
	beq	%x14, %x31, 12  #1748 pc 20176
	j	be_else.9287 #pc 20180
	nop #pc 20184
	ret #pc 20188
	nop #pc 20192
be_else.9287: #pc 20196
	sw	%x8, 0(%x2)  #1751 pc 20196
	sw	%x7, 4(%x2)  #1751 pc 20200
	sw	%x29, 8(%x2)  #1751 pc 20204
	sw	%x6, 12(%x2)  #1751 pc 20208
	addi	%x31, %x0, 99  #pc 20212
	beq	%x14, %x31, 12  #1751 pc 20216
	j	be_else.9289 #pc 20220
	nop #pc 20224
	addi	%x9, %x0, 1  #0 pc 20228
	addi	%x7, %x13, 0  #0 pc 20232
	addi	%x6, %x9, 0  #0 pc 20236
	addi	%x29, %x12, 0  #0 pc 20240
	sw	%x1, 16(%x2)  #1752 pc 20244
	lw	%x30, 0(%x29)  #1752 pc 20248
	addi	%x2, %x2, 20  #1752 pc 20252
	jalr	%x1, %x30, 0  #1752 pc 20256
	addi	%x2, %x2, -20  #1752 pc 20260
	lw	%x1, 16(%x2)  #1752 pc 20264
	j	be_cont.9290 #pc 20268
	nop #pc 20272
be_else.9289: #pc 20276
	sw	%x13, 16(%x2)  #1756 pc 20276
	sw	%x12, 20(%x2)  #1756 pc 20280
	sw	%x9, 24(%x2)  #1756 pc 20284
	sw	%x11, 28(%x2)  #1756 pc 20288
	addi	%x7, %x8, 0  #0 pc 20292
	addi	%x6, %x14, 0  #0 pc 20296
	addi	%x29, %x10, 0  #0 pc 20300
	sw	%x1, 32(%x2)  #1756 pc 20304
	lw	%x30, 0(%x29)  #1756 pc 20308
	addi	%x2, %x2, 36  #1756 pc 20312
	jalr	%x1, %x30, 0  #1756 pc 20316
	addi	%x2, %x2, -36  #1756 pc 20320
	lw	%x1, 32(%x2)  #1756 pc 20324
	beq	%x6, %x0, 12  #1757 pc 20328
	j	be_else.9291 #pc 20332
	nop #pc 20336
	j	be_cont.9292 #pc 20340
	nop #pc 20344
be_else.9291: #pc 20348
	lw	%x6, 28(%x2)  #1758 pc 20348
	flw	%f0, 0(%x6)  #1758 pc 20352
	lw	%x6, 24(%x2)  #1759 pc 20356
	flw	%f1, 0(%x6)  #1759 pc 20360
	sw	%x1, 32(%x2)  #1759 pc 20364
	addi	%x2, %x2, 36  #1759 pc 20368
	jal	%x1, fless.2491  #1759 pc 20372
	addi	%x2, %x2, -36  #1759 pc 20376
	lw	%x1, 32(%x2) #1759 pc 20380
	beq	%x6, %x0, 12  #1759 pc 20384
	j	be_else.9293 #pc 20388
	nop #pc 20392
	j	be_cont.9294 #pc 20396
	nop #pc 20400
be_else.9293: #pc 20404
	addi	%x6, %x0, 1  #0 pc 20404
	lw	%x7, 16(%x2)  #1760 pc 20408
	lw	%x8, 0(%x2)  #1760 pc 20412
	lw	%x29, 20(%x2)  #1760 pc 20416
	sw	%x1, 32(%x2)  #1760 pc 20420
	lw	%x30, 0(%x29)  #1760 pc 20424
	addi	%x2, %x2, 36  #1760 pc 20428
	jalr	%x1, %x30, 0  #1760 pc 20432
	addi	%x2, %x2, -36  #1760 pc 20436
	lw	%x1, 32(%x2)  #1760 pc 20440
be_cont.9294: #pc 20444
be_cont.9292: #pc 20444
be_cont.9290: #pc 20444
	lw	%x6, 12(%x2)  #1764 pc 20444
	addi	%x6, %x6, 1  #1764 pc 20448
	lw	%x7, 4(%x2)  #1764 pc 20452
	lw	%x8, 0(%x2)  #1764 pc 20456
	lw	%x29, 8(%x2)  #1764 pc 20460
	lw	%x30, 0(%x29)  #1764 pc 20464
	jalr	%x0, %x30, 0  #1764 pc 20468
	nop #pc 20472
judge_intersection_fast.2881:  #pc 20476
	lw	%x7, 12(%x29)  #0 pc 20476
	lw	%x8, 8(%x29)  #0 pc 20480
	lw	%x9, 4(%x29)  #0 pc 20484
	fmv	%f0, l.6604  #0 pc 20488
	fsw	%f0, 0(%x8)  #1771 pc 20492
	addi	%x10, %x0, 0  #0 pc 20496
	lw	%x9, 0(%x9)  #1772 pc 20500
	sw	%x8, 0(%x2)  #1772 pc 20504
	addi	%x8, %x6, 0  #0 pc 20508
	addi	%x29, %x7, 0  #0 pc 20512
	addi	%x7, %x9, 0  #0 pc 20516
	addi	%x6, %x10, 0  #0 pc 20520
	sw	%x1, 4(%x2)  #1772 pc 20524
	lw	%x30, 0(%x29)  #1772 pc 20528
	addi	%x2, %x2, 8  #1772 pc 20532
	jalr	%x1, %x30, 0  #1772 pc 20536
	addi	%x2, %x2, -8  #1772 pc 20540
	lw	%x1, 4(%x2)  #1772 pc 20544
	lw	%x6, 0(%x2)  #1773 pc 20548
	flw	%f1, 0(%x6)  #1773 pc 20552
	fmv	%f0, l.6581  #0 pc 20556
	fsw	%f1, 8(%x2)  #1775 pc 20560
	sw	%x1, 16(%x2)  #1775 pc 20564
	addi	%x2, %x2, 20  #1775 pc 20568
	jal	%x1, fless.2491  #1775 pc 20572
	addi	%x2, %x2, -20  #1775 pc 20576
	lw	%x1, 16(%x2) #1775 pc 20580
	beq	%x6, %x0, 12  #1775 pc 20584
	j	be_else.9296 #pc 20588
	nop #pc 20592
	addi	%x6, %x0, 0  #0 pc 20596
	ret #pc 20600
	nop #pc 20604
be_else.9296: #pc 20608
	fmv	%f1, l.6610  #0 pc 20608
	flw	%f0, 8(%x2)  #1776 pc 20612
	j	fless.2491  #1776 pc 20616
	nop #pc 20620
get_nvector_rect.2883:  #pc 20624
	lw	%x7, 8(%x29)  #0 pc 20624
	lw	%x8, 4(%x29)  #0 pc 20628
	lw	%x8, 0(%x8)  #1791 pc 20632
	sw	%x7, 0(%x2)  #1793 pc 20636
	sw	%x6, 4(%x2)  #1793 pc 20640
	sw	%x8, 8(%x2)  #1793 pc 20644
	addi	%x6, %x7, 0  #0 pc 20648
	sw	%x1, 12(%x2)  #1793 pc 20652
	addi	%x2, %x2, 16  #1793 pc 20656
	jal	%x1, vecbzero.2593  #1793 pc 20660
	addi	%x2, %x2, -16  #1793 pc 20664
	lw	%x1, 12(%x2) #1793 pc 20668
	lw	%x6, 8(%x2)  #1794 pc 20672
	addi	%x7, %x6, -1  #1794 pc 20676
	addi	%x6, %x6, -1  #1794 pc 20680
	slli	%x6, %x6, 2  #1794 pc 20684
	lw	%x8, 4(%x2)  #1794 pc 20688
	add	%x31, %x6, %x8  #1794 pc 20692
	flw	%f0, 0(%x31)  #1794 pc 20696
	sw	%x7, 12(%x2)  #1794 pc 20700
	sw	%x1, 16(%x2)  #1794 pc 20704
	addi	%x2, %x2, 20  #1794 pc 20708
	jal	%x1, sgn.2577  #1794 pc 20712
	addi	%x2, %x2, -20  #1794 pc 20716
	lw	%x1, 16(%x2) #1794 pc 20720
	sw	%x1, 16(%x2)  #1794 pc 20724
	addi	%x2, %x2, 20  #1794 pc 20728
	jal	%x1, fneg.2485  #1794 pc 20732
	addi	%x2, %x2, -20  #1794 pc 20736
	lw	%x1, 16(%x2) #1794 pc 20740
	lw	%x6, 12(%x2)  #1794 pc 20744
	slli	%x6, %x6, 2  #1794 pc 20748
	lw	%x7, 0(%x2)  #1794 pc 20752
	add	%x31, %x6, %x7  #1794 pc 20756
	fsw	%f0, 0(%x31) #1794 pc 20760
	ret #pc 20764
	nop #pc 20768
get_nvector_plane.2885:  #pc 20772
	lw	%x7, 4(%x29)  #0 pc 20772
	sw	%x6, 0(%x2)  #1800 pc 20776
	sw	%x7, 4(%x2)  #1800 pc 20780
	sw	%x1, 8(%x2)  #1800 pc 20784
	addi	%x2, %x2, 12  #1800 pc 20788
	jal	%x1, o_param_a.2633  #1800 pc 20792
	addi	%x2, %x2, -12  #1800 pc 20796
	lw	%x1, 8(%x2) #1800 pc 20800
	sw	%x1, 8(%x2)  #1800 pc 20804
	addi	%x2, %x2, 12  #1800 pc 20808
	jal	%x1, fneg.2485  #1800 pc 20812
	addi	%x2, %x2, -12  #1800 pc 20816
	lw	%x1, 8(%x2) #1800 pc 20820
	lw	%x6, 4(%x2)  #1800 pc 20824
	fsw	%f0, 0(%x6)  #1800 pc 20828
	lw	%x7, 0(%x2)  #1801 pc 20832
	addi	%x6, %x7, 0  #0 pc 20836
	sw	%x1, 8(%x2)  #1801 pc 20840
	addi	%x2, %x2, 12  #1801 pc 20844
	jal	%x1, o_param_b.2635  #1801 pc 20848
	addi	%x2, %x2, -12  #1801 pc 20852
	lw	%x1, 8(%x2) #1801 pc 20856
	sw	%x1, 8(%x2)  #1801 pc 20860
	addi	%x2, %x2, 12  #1801 pc 20864
	jal	%x1, fneg.2485  #1801 pc 20868
	addi	%x2, %x2, -12  #1801 pc 20872
	lw	%x1, 8(%x2) #1801 pc 20876
	lw	%x6, 4(%x2)  #1801 pc 20880
	fsw	%f0, 4(%x6)  #1801 pc 20884
	lw	%x7, 0(%x2)  #1802 pc 20888
	addi	%x6, %x7, 0  #0 pc 20892
	sw	%x1, 8(%x2)  #1802 pc 20896
	addi	%x2, %x2, 12  #1802 pc 20900
	jal	%x1, o_param_c.2637  #1802 pc 20904
	addi	%x2, %x2, -12  #1802 pc 20908
	lw	%x1, 8(%x2) #1802 pc 20912
	sw	%x1, 8(%x2)  #1802 pc 20916
	addi	%x2, %x2, 12  #1802 pc 20920
	jal	%x1, fneg.2485  #1802 pc 20924
	addi	%x2, %x2, -12  #1802 pc 20928
	lw	%x1, 8(%x2) #1802 pc 20932
	lw	%x6, 4(%x2)  #1802 pc 20936
	fsw	%f0, 8(%x6)  #1802 pc 20940
	ret #pc 20944
	nop #pc 20948
get_nvector_second.2887:  #pc 20952
	lw	%x7, 8(%x29)  #0 pc 20952
	lw	%x8, 4(%x29)  #0 pc 20956
	flw	%f0, 0(%x8)  #1807 pc 20960
	sw	%x7, 0(%x2)  #1807 pc 20964
	sw	%x6, 4(%x2)  #1807 pc 20968
	sw	%x8, 8(%x2)  #1807 pc 20972
	fsw	%f0, 16(%x2)  #1807 pc 20976
	sw	%x1, 24(%x2)  #1807 pc 20980
	addi	%x2, %x2, 28  #1807 pc 20984
	jal	%x1, o_param_x.2641  #1807 pc 20988
	addi	%x2, %x2, -28  #1807 pc 20992
	lw	%x1, 24(%x2) #1807 pc 20996
	flw	%f1, 16(%x2)  #1807 pc 21000
	fsub	%f0, %f1, %f0  #1807 pc 21004
	lw	%x6, 8(%x2)  #1808 pc 21008
	flw	%f1, 4(%x6)  #1808 pc 21012
	lw	%x7, 4(%x2)  #1808 pc 21016
	fsw	%f0, 24(%x2)  #1808 pc 21020
	fsw	%f1, 32(%x2)  #1808 pc 21024
	addi	%x6, %x7, 0  #0 pc 21028
	sw	%x1, 40(%x2)  #1808 pc 21032
	addi	%x2, %x2, 44  #1808 pc 21036
	jal	%x1, o_param_y.2643  #1808 pc 21040
	addi	%x2, %x2, -44  #1808 pc 21044
	lw	%x1, 40(%x2) #1808 pc 21048
	flw	%f1, 32(%x2)  #1808 pc 21052
	fsub	%f0, %f1, %f0  #1808 pc 21056
	lw	%x6, 8(%x2)  #1809 pc 21060
	flw	%f1, 8(%x6)  #1809 pc 21064
	lw	%x6, 4(%x2)  #1809 pc 21068
	fsw	%f0, 40(%x2)  #1809 pc 21072
	fsw	%f1, 48(%x2)  #1809 pc 21076
	sw	%x1, 56(%x2)  #1809 pc 21080
	addi	%x2, %x2, 60  #1809 pc 21084
	jal	%x1, o_param_z.2645  #1809 pc 21088
	addi	%x2, %x2, -60  #1809 pc 21092
	lw	%x1, 56(%x2) #1809 pc 21096
	flw	%f1, 48(%x2)  #1809 pc 21100
	fsub	%f0, %f1, %f0  #1809 pc 21104
	lw	%x6, 4(%x2)  #1811 pc 21108
	fsw	%f0, 56(%x2)  #1811 pc 21112
	sw	%x1, 64(%x2)  #1811 pc 21116
	addi	%x2, %x2, 68  #1811 pc 21120
	jal	%x1, o_param_a.2633  #1811 pc 21124
	addi	%x2, %x2, -68  #1811 pc 21128
	lw	%x1, 64(%x2) #1811 pc 21132
	flw	%f1, 24(%x2)  #1811 pc 21136
	fmul	%f0, %f1, %f0  #1811 pc 21140
	lw	%x6, 4(%x2)  #1812 pc 21144
	fsw	%f0, 64(%x2)  #1812 pc 21148
	sw	%x1, 72(%x2)  #1812 pc 21152
	addi	%x2, %x2, 76  #1812 pc 21156
	jal	%x1, o_param_b.2635  #1812 pc 21160
	addi	%x2, %x2, -76  #1812 pc 21164
	lw	%x1, 72(%x2) #1812 pc 21168
	flw	%f1, 40(%x2)  #1812 pc 21172
	fmul	%f0, %f1, %f0  #1812 pc 21176
	lw	%x6, 4(%x2)  #1813 pc 21180
	fsw	%f0, 72(%x2)  #1813 pc 21184
	sw	%x1, 80(%x2)  #1813 pc 21188
	addi	%x2, %x2, 84  #1813 pc 21192
	jal	%x1, o_param_c.2637  #1813 pc 21196
	addi	%x2, %x2, -84  #1813 pc 21200
	lw	%x1, 80(%x2) #1813 pc 21204
	flw	%f1, 56(%x2)  #1813 pc 21208
	fmul	%f0, %f1, %f0  #1813 pc 21212
	lw	%x6, 4(%x2)  #1815 pc 21216
	fsw	%f0, 80(%x2)  #1815 pc 21220
	sw	%x1, 88(%x2)  #1815 pc 21224
	addi	%x2, %x2, 92  #1815 pc 21228
	jal	%x1, o_isrot.2631  #1815 pc 21232
	addi	%x2, %x2, -92  #1815 pc 21236
	lw	%x1, 88(%x2) #1815 pc 21240
	beq	%x6, %x0, 12  #1815 pc 21244
	j	be_else.9300 #pc 21248
	nop #pc 21252
	lw	%x6, 0(%x2)  #1816 pc 21256
	flw	%f0, 64(%x2)  #1816 pc 21260
	fsw	%f0, 0(%x6)  #1816 pc 21264
	flw	%f0, 72(%x2)  #1817 pc 21268
	fsw	%f0, 4(%x6)  #1817 pc 21272
	flw	%f0, 80(%x2)  #1818 pc 21276
	fsw	%f0, 8(%x6)  #1818 pc 21280
	j	be_cont.9301 #pc 21284
	nop #pc 21288
be_else.9300: #pc 21292
	lw	%x6, 4(%x2)  #1820 pc 21292
	sw	%x1, 88(%x2)  #1820 pc 21296
	addi	%x2, %x2, 92  #1820 pc 21300
	jal	%x1, o_param_r3.2661  #1820 pc 21304
	addi	%x2, %x2, -92  #1820 pc 21308
	lw	%x1, 88(%x2) #1820 pc 21312
	flw	%f1, 40(%x2)  #1820 pc 21316
	fmul	%f0, %f1, %f0  #1820 pc 21320
	lw	%x6, 4(%x2)  #1820 pc 21324
	fsw	%f0, 88(%x2)  #1820 pc 21328
	sw	%x1, 96(%x2)  #1820 pc 21332
	addi	%x2, %x2, 100  #1820 pc 21336
	jal	%x1, o_param_r2.2659  #1820 pc 21340
	addi	%x2, %x2, -100  #1820 pc 21344
	lw	%x1, 96(%x2) #1820 pc 21348
	flw	%f1, 56(%x2)  #1820 pc 21352
	fmul	%f0, %f1, %f0  #1820 pc 21356
	flw	%f2, 88(%x2)  #1820 pc 21360
	fadd	%f0, %f2, %f0  #1820 pc 21364
	sw	%x1, 96(%x2)  #1820 pc 21368
	addi	%x2, %x2, 100  #1820 pc 21372
	jal	%x1, fhalf.2489  #1820 pc 21376
	addi	%x2, %x2, -100  #1820 pc 21380
	lw	%x1, 96(%x2) #1820 pc 21384
	flw	%f1, 64(%x2)  #1820 pc 21388
	fadd	%f0, %f1, %f0  #1820 pc 21392
	lw	%x6, 0(%x2)  #1820 pc 21396
	fsw	%f0, 0(%x6)  #1820 pc 21400
	lw	%x7, 4(%x2)  #1821 pc 21404
	addi	%x6, %x7, 0  #0 pc 21408
	sw	%x1, 96(%x2)  #1821 pc 21412
	addi	%x2, %x2, 100  #1821 pc 21416
	jal	%x1, o_param_r3.2661  #1821 pc 21420
	addi	%x2, %x2, -100  #1821 pc 21424
	lw	%x1, 96(%x2) #1821 pc 21428
	flw	%f1, 24(%x2)  #1821 pc 21432
	fmul	%f0, %f1, %f0  #1821 pc 21436
	lw	%x6, 4(%x2)  #1821 pc 21440
	fsw	%f0, 96(%x2)  #1821 pc 21444
	sw	%x1, 104(%x2)  #1821 pc 21448
	addi	%x2, %x2, 108  #1821 pc 21452
	jal	%x1, o_param_r1.2657  #1821 pc 21456
	addi	%x2, %x2, -108  #1821 pc 21460
	lw	%x1, 104(%x2) #1821 pc 21464
	flw	%f1, 56(%x2)  #1821 pc 21468
	fmul	%f0, %f1, %f0  #1821 pc 21472
	flw	%f1, 96(%x2)  #1821 pc 21476
	fadd	%f0, %f1, %f0  #1821 pc 21480
	sw	%x1, 104(%x2)  #1821 pc 21484
	addi	%x2, %x2, 108  #1821 pc 21488
	jal	%x1, fhalf.2489  #1821 pc 21492
	addi	%x2, %x2, -108  #1821 pc 21496
	lw	%x1, 104(%x2) #1821 pc 21500
	flw	%f1, 72(%x2)  #1821 pc 21504
	fadd	%f0, %f1, %f0  #1821 pc 21508
	lw	%x6, 0(%x2)  #1821 pc 21512
	fsw	%f0, 4(%x6)  #1821 pc 21516
	lw	%x7, 4(%x2)  #1822 pc 21520
	addi	%x6, %x7, 0  #0 pc 21524
	sw	%x1, 104(%x2)  #1822 pc 21528
	addi	%x2, %x2, 108  #1822 pc 21532
	jal	%x1, o_param_r2.2659  #1822 pc 21536
	addi	%x2, %x2, -108  #1822 pc 21540
	lw	%x1, 104(%x2) #1822 pc 21544
	flw	%f1, 24(%x2)  #1822 pc 21548
	fmul	%f0, %f1, %f0  #1822 pc 21552
	lw	%x6, 4(%x2)  #1822 pc 21556
	fsw	%f0, 104(%x2)  #1822 pc 21560
	sw	%x1, 112(%x2)  #1822 pc 21564
	addi	%x2, %x2, 116  #1822 pc 21568
	jal	%x1, o_param_r1.2657  #1822 pc 21572
	addi	%x2, %x2, -116  #1822 pc 21576
	lw	%x1, 112(%x2) #1822 pc 21580
	flw	%f1, 40(%x2)  #1822 pc 21584
	fmul	%f0, %f1, %f0  #1822 pc 21588
	flw	%f1, 104(%x2)  #1822 pc 21592
	fadd	%f0, %f1, %f0  #1822 pc 21596
	sw	%x1, 112(%x2)  #1822 pc 21600
	addi	%x2, %x2, 116  #1822 pc 21604
	jal	%x1, fhalf.2489  #1822 pc 21608
	addi	%x2, %x2, -116  #1822 pc 21612
	lw	%x1, 112(%x2) #1822 pc 21616
	flw	%f1, 80(%x2)  #1822 pc 21620
	fadd	%f0, %f1, %f0  #1822 pc 21624
	lw	%x6, 0(%x2)  #1822 pc 21628
	fsw	%f0, 8(%x6)  #1822 pc 21632
be_cont.9301: #pc 21636
	lw	%x7, 4(%x2)  #1824 pc 21636
	addi	%x6, %x7, 0  #0 pc 21640
	sw	%x1, 112(%x2)  #1824 pc 21644
	addi	%x2, %x2, 116  #1824 pc 21648
	jal	%x1, o_isinvert.2629  #1824 pc 21652
	addi	%x2, %x2, -116  #1824 pc 21656
	lw	%x1, 112(%x2) #1824 pc 21660
	addi	%x7, %x6, 0  #1824 pc 21664
	lw	%x6, 0(%x2)  #1824 pc 21668
	j	vecunit_sgn.2598  #1824 pc 21672
	nop #pc 21676
get_nvector.2889:  #pc 21680
	lw	%x8, 12(%x29)  #1829 pc 21680
	lw	%x9, 8(%x29)  #1829 pc 21684
	lw	%x10, 4(%x29)  #1829 pc 21688
	sw	%x8, 0(%x2)  #1829 pc 21692
	sw	%x6, 4(%x2)  #1829 pc 21696
	sw	%x10, 8(%x2)  #1829 pc 21700
	sw	%x7, 12(%x2)  #1829 pc 21704
	sw	%x9, 16(%x2)  #1829 pc 21708
	sw	%x1, 20(%x2)  #1829 pc 21712
	addi	%x2, %x2, 24  #1829 pc 21716
	jal	%x1, o_form.2625  #1829 pc 21720
	addi	%x2, %x2, -24  #1829 pc 21724
	lw	%x1, 20(%x2) #1829 pc 21728
	addi	%x31, %x0, 1  #pc 21732
	beq	%x6, %x31, 12  #1830 pc 21736
	j	be_else.9302 #pc 21740
	nop #pc 21744
	lw	%x6, 12(%x2)  #1831 pc 21748
	lw	%x29, 16(%x2)  #1831 pc 21752
	lw	%x30, 0(%x29)  #1831 pc 21756
	jalr	%x0, %x30, 0  #1831 pc 21760
	nop #pc 21764
be_else.9302: #pc 21768
	addi	%x31, %x0, 2  #pc 21768
	beq	%x6, %x31, 12  #1832 pc 21772
	j	be_else.9303 #pc 21776
	nop #pc 21780
	lw	%x6, 4(%x2)  #1833 pc 21784
	lw	%x29, 8(%x2)  #1833 pc 21788
	lw	%x30, 0(%x29)  #1833 pc 21792
	jalr	%x0, %x30, 0  #1833 pc 21796
	nop #pc 21800
be_else.9303: #pc 21804
	lw	%x6, 4(%x2)  #1835 pc 21804
	lw	%x29, 0(%x2)  #1835 pc 21808
	lw	%x30, 0(%x29)  #1835 pc 21812
	jalr	%x0, %x30, 0  #1835 pc 21816
	nop #pc 21820
utexture.2892:  #pc 21824
	lw	%x8, 4(%x29)  #1845 pc 21824
	sw	%x7, 0(%x2)  #1845 pc 21828
	sw	%x8, 4(%x2)  #1845 pc 21832
	sw	%x6, 8(%x2)  #1845 pc 21836
	sw	%x1, 12(%x2)  #1845 pc 21840
	addi	%x2, %x2, 16  #1845 pc 21844
	jal	%x1, o_texturetype.2623  #1845 pc 21848
	addi	%x2, %x2, -16  #1845 pc 21852
	lw	%x1, 12(%x2) #1845 pc 21856
	lw	%x7, 8(%x2)  #1847 pc 21860
	sw	%x6, 12(%x2)  #1847 pc 21864
	addi	%x6, %x7, 0  #0 pc 21868
	sw	%x1, 16(%x2)  #1847 pc 21872
	addi	%x2, %x2, 20  #1847 pc 21876
	jal	%x1, o_color_red.2651  #1847 pc 21880
	addi	%x2, %x2, -20  #1847 pc 21884
	lw	%x1, 16(%x2) #1847 pc 21888
	lw	%x6, 4(%x2)  #1847 pc 21892
	fsw	%f0, 0(%x6)  #1847 pc 21896
	lw	%x7, 8(%x2)  #1848 pc 21900
	addi	%x6, %x7, 0  #0 pc 21904
	sw	%x1, 16(%x2)  #1848 pc 21908
	addi	%x2, %x2, 20  #1848 pc 21912
	jal	%x1, o_color_green.2653  #1848 pc 21916
	addi	%x2, %x2, -20  #1848 pc 21920
	lw	%x1, 16(%x2) #1848 pc 21924
	lw	%x6, 4(%x2)  #1848 pc 21928
	fsw	%f0, 4(%x6)  #1848 pc 21932
	lw	%x7, 8(%x2)  #1849 pc 21936
	addi	%x6, %x7, 0  #0 pc 21940
	sw	%x1, 16(%x2)  #1849 pc 21944
	addi	%x2, %x2, 20  #1849 pc 21948
	jal	%x1, o_color_blue.2655  #1849 pc 21952
	addi	%x2, %x2, -20  #1849 pc 21956
	lw	%x1, 16(%x2) #1849 pc 21960
	lw	%x6, 4(%x2)  #1849 pc 21964
	fsw	%f0, 8(%x6)  #1849 pc 21968
	lw	%x7, 12(%x2)  #1850 pc 21972
	addi	%x31, %x0, 1  #pc 21976
	beq	%x7, %x31, 12  #1850 pc 21980
	j	be_else.9304 #pc 21984
	nop #pc 21988
	lw	%x7, 0(%x2)  #1853 pc 21992
	flw	%f0, 0(%x7)  #1853 pc 21996
	lw	%x8, 8(%x2)  #1853 pc 22000
	fsw	%f0, 16(%x2)  #1853 pc 22004
	addi	%x6, %x8, 0  #0 pc 22008
	sw	%x1, 24(%x2)  #1853 pc 22012
	addi	%x2, %x2, 28  #1853 pc 22016
	jal	%x1, o_param_x.2641  #1853 pc 22020
	addi	%x2, %x2, -28  #1853 pc 22024
	lw	%x1, 24(%x2) #1853 pc 22028
	flw	%f1, 16(%x2)  #1853 pc 22032
	fsub	%f0, %f1, %f0  #1853 pc 22036
	fmv	%f1, l.6701  #0 pc 22040
	fmul	%f1, %f0, %f1  #1855 pc 22044
	fsw	%f0, 24(%x2)  #1855 pc 22048
	fadd	%f0, %f1, %f30  #0 pc 22052
	sw	%x1, 32(%x2)  #1855 pc 22056
	addi	%x2, %x2, 36  #1855 pc 22060
	jal	%x1, floor.2500  #1855 pc 22064
	addi	%x2, %x2, -36  #1855 pc 22068
	lw	%x1, 32(%x2) #1855 pc 22072
	fmv	%f1, l.6703  #0 pc 22076
	fmul	%f0, %f0, %f1  #1855 pc 22080
	flw	%f1, 24(%x2)  #1856 pc 22084
	fsub	%f0, %f1, %f0  #1856 pc 22088
	fmv	%f1, l.6684  #0 pc 22092
	sw	%x1, 32(%x2)  #1856 pc 22096
	addi	%x2, %x2, 36  #1856 pc 22100
	jal	%x1, fless.2491  #1856 pc 22104
	addi	%x2, %x2, -36  #1856 pc 22108
	lw	%x1, 32(%x2) #1856 pc 22112
	lw	%x7, 0(%x2)  #1858 pc 22116
	flw	%f0, 8(%x7)  #1858 pc 22120
	lw	%x7, 8(%x2)  #1858 pc 22124
	sw	%x6, 32(%x2)  #1858 pc 22128
	fsw	%f0, 40(%x2)  #1858 pc 22132
	addi	%x6, %x7, 0  #0 pc 22136
	sw	%x1, 48(%x2)  #1858 pc 22140
	addi	%x2, %x2, 52  #1858 pc 22144
	jal	%x1, o_param_z.2645  #1858 pc 22148
	addi	%x2, %x2, -52  #1858 pc 22152
	lw	%x1, 48(%x2) #1858 pc 22156
	flw	%f1, 40(%x2)  #1858 pc 22160
	fsub	%f0, %f1, %f0  #1858 pc 22164
	fmv	%f1, l.6701  #0 pc 22168
	fmul	%f1, %f0, %f1  #1860 pc 22172
	fsw	%f0, 48(%x2)  #1860 pc 22176
	fadd	%f0, %f1, %f30  #0 pc 22180
	sw	%x1, 56(%x2)  #1860 pc 22184
	addi	%x2, %x2, 60  #1860 pc 22188
	jal	%x1, floor.2500  #1860 pc 22192
	addi	%x2, %x2, -60  #1860 pc 22196
	lw	%x1, 56(%x2) #1860 pc 22200
	fmv	%f1, l.6703  #0 pc 22204
	fmul	%f0, %f0, %f1  #1860 pc 22208
	flw	%f1, 48(%x2)  #1861 pc 22212
	fsub	%f0, %f1, %f0  #1861 pc 22216
	fmv	%f1, l.6684  #0 pc 22220
	sw	%x1, 56(%x2)  #1861 pc 22224
	addi	%x2, %x2, 60  #1861 pc 22228
	jal	%x1, fless.2491  #1861 pc 22232
	addi	%x2, %x2, -60  #1861 pc 22236
	lw	%x1, 56(%x2) #1861 pc 22240
	lw	%x7, 32(%x2)  #1864 pc 22244
	beq	%x7, %x0, 12  #1864 pc 22248
	j	be_else.9306 #pc 22252
	nop #pc 22256
	beq	%x6, %x0, 12  #1866 pc 22260
	j	be_else.9308 #pc 22264
	nop #pc 22268
	fmv	%f0, l.6677  #0 pc 22272
	j	be_cont.9309 #pc 22276
	nop #pc 22280
be_else.9308: #pc 22284
	fmv	%f0, l.6176  #0 pc 22284
be_cont.9309: #pc 22288
	j	be_cont.9307 #pc 22288
	nop #pc 22292
be_else.9306: #pc 22296
	beq	%x6, %x0, 12  #1865 pc 22296
	j	be_else.9310 #pc 22300
	nop #pc 22304
	fmv	%f0, l.6176  #0 pc 22308
	j	be_cont.9311 #pc 22312
	nop #pc 22316
be_else.9310: #pc 22320
	fmv	%f0, l.6677  #0 pc 22320
be_cont.9311: #pc 22324
be_cont.9307: #pc 22324
	lw	%x6, 4(%x2)  #1863 pc 22324
	fsw	%f0, 4(%x6)  #1863 pc 22328
	ret #pc 22332
	nop #pc 22336
be_else.9304: #pc 22340
	addi	%x31, %x0, 2  #pc 22340
	beq	%x7, %x31, 12  #1868 pc 22344
	j	be_else.9313 #pc 22348
	nop #pc 22352
	lw	%x7, 0(%x2)  #1871 pc 22356
	flw	%f0, 4(%x7)  #1871 pc 22360
	fmv	%f1, l.6693  #0 pc 22364
	fmul	%f0, %f0, %f1  #1871 pc 22368
	sw	%x1, 56(%x2)  #1871 pc 22372
	addi	%x2, %x2, 60  #1871 pc 22376
	jal	%x1, sin.2494  #1871 pc 22380
	addi	%x2, %x2, -60  #1871 pc 22384
	lw	%x1, 56(%x2) #1871 pc 22388
	sw	%x1, 56(%x2)  #1871 pc 22392
	addi	%x2, %x2, 60  #1871 pc 22396
	jal	%x1, fsqr.2487  #1871 pc 22400
	addi	%x2, %x2, -60  #1871 pc 22404
	lw	%x1, 56(%x2) #1871 pc 22408
	fmv	%f1, l.6677  #0 pc 22412
	fmul	%f1, %f1, %f0  #1872 pc 22416
	lw	%x6, 4(%x2)  #1872 pc 22420
	fsw	%f1, 0(%x6)  #1872 pc 22424
	fmv	%f1, l.6677  #0 pc 22428
	fmv	%f2, l.6188  #0 pc 22432
	fsub	%f0, %f2, %f0  #1873 pc 22436
	fmul	%f0, %f1, %f0  #1873 pc 22440
	fsw	%f0, 4(%x6)  #1873 pc 22444
	ret #pc 22448
	nop #pc 22452
be_else.9313: #pc 22456
	addi	%x31, %x0, 3  #pc 22456
	beq	%x7, %x31, 12  #1875 pc 22460
	j	be_else.9315 #pc 22464
	nop #pc 22468
	lw	%x7, 0(%x2)  #1878 pc 22472
	flw	%f0, 0(%x7)  #1878 pc 22476
	lw	%x8, 8(%x2)  #1878 pc 22480
	fsw	%f0, 56(%x2)  #1878 pc 22484
	addi	%x6, %x8, 0  #0 pc 22488
	sw	%x1, 64(%x2)  #1878 pc 22492
	addi	%x2, %x2, 68  #1878 pc 22496
	jal	%x1, o_param_x.2641  #1878 pc 22500
	addi	%x2, %x2, -68  #1878 pc 22504
	lw	%x1, 64(%x2) #1878 pc 22508
	flw	%f1, 56(%x2)  #1878 pc 22512
	fsub	%f0, %f1, %f0  #1878 pc 22516
	lw	%x6, 0(%x2)  #1879 pc 22520
	flw	%f1, 8(%x6)  #1879 pc 22524
	lw	%x6, 8(%x2)  #1879 pc 22528
	fsw	%f0, 64(%x2)  #1879 pc 22532
	fsw	%f1, 72(%x2)  #1879 pc 22536
	sw	%x1, 80(%x2)  #1879 pc 22540
	addi	%x2, %x2, 84  #1879 pc 22544
	jal	%x1, o_param_z.2645  #1879 pc 22548
	addi	%x2, %x2, -84  #1879 pc 22552
	lw	%x1, 80(%x2) #1879 pc 22556
	flw	%f1, 72(%x2)  #1879 pc 22560
	fsub	%f0, %f1, %f0  #1879 pc 22564
	flw	%f1, 64(%x2)  #1880 pc 22568
	fsw	%f0, 80(%x2)  #1880 pc 22572
	fadd	%f0, %f1, %f30  #0 pc 22576
	sw	%x1, 88(%x2)  #1880 pc 22580
	addi	%x2, %x2, 92  #1880 pc 22584
	jal	%x1, fsqr.2487  #1880 pc 22588
	addi	%x2, %x2, -92  #1880 pc 22592
	lw	%x1, 88(%x2) #1880 pc 22596
	flw	%f1, 80(%x2)  #1880 pc 22600
	fsw	%f0, 88(%x2)  #1880 pc 22604
	fadd	%f0, %f1, %f30  #0 pc 22608
	sw	%x1, 96(%x2)  #1880 pc 22612
	addi	%x2, %x2, 100  #1880 pc 22616
	jal	%x1, fsqr.2487  #1880 pc 22620
	addi	%x2, %x2, -100  #1880 pc 22624
	lw	%x1, 96(%x2) #1880 pc 22628
	flw	%f1, 88(%x2)  #1880 pc 22632
	fadd	%f0, %f1, %f0  #1880 pc 22636
	fmv	%f1, l.6684  #0 pc 22640
	fdiv	%f0, %f0, %f1  #1880 pc 22644
	fsqrt	%f0, %f0  #1880 pc 22648
	fsw	%f0, 96(%x2)  #1881 pc 22652
	sw	%x1, 104(%x2)  #1881 pc 22656
	addi	%x2, %x2, 108  #1881 pc 22660
	jal	%x1, floor.2500  #1881 pc 22664
	addi	%x2, %x2, -108  #1881 pc 22668
	lw	%x1, 104(%x2) #1881 pc 22672
	flw	%f1, 96(%x2)  #1881 pc 22676
	fsub	%f0, %f1, %f0  #1881 pc 22680
	fmv	%f1, l.6665  #0 pc 22684
	fmul	%f0, %f0, %f1  #1881 pc 22688
	sw	%x1, 104(%x2)  #1882 pc 22692
	addi	%x2, %x2, 108  #1882 pc 22696
	jal	%x1, cos.2496  #1882 pc 22700
	addi	%x2, %x2, -108  #1882 pc 22704
	lw	%x1, 104(%x2) #1882 pc 22708
	sw	%x1, 104(%x2)  #1882 pc 22712
	addi	%x2, %x2, 108  #1882 pc 22716
	jal	%x1, fsqr.2487  #1882 pc 22720
	addi	%x2, %x2, -108  #1882 pc 22724
	lw	%x1, 104(%x2) #1882 pc 22728
	fmv	%f1, l.6677  #0 pc 22732
	fmul	%f1, %f0, %f1  #1883 pc 22736
	lw	%x6, 4(%x2)  #1883 pc 22740
	fsw	%f1, 4(%x6)  #1883 pc 22744
	fmv	%f1, l.6188  #0 pc 22748
	fsub	%f0, %f1, %f0  #1884 pc 22752
	fmv	%f1, l.6677  #0 pc 22756
	fmul	%f0, %f0, %f1  #1884 pc 22760
	fsw	%f0, 8(%x6)  #1884 pc 22764
	ret #pc 22768
	nop #pc 22772
be_else.9315: #pc 22776
	addi	%x31, %x0, 4  #pc 22776
	beq	%x7, %x31, 12  #1886 pc 22780
	j	be_else.9317 #pc 22784
	nop #pc 22788
	lw	%x7, 0(%x2)  #1888 pc 22792
	flw	%f0, 0(%x7)  #1888 pc 22796
	lw	%x8, 8(%x2)  #1888 pc 22800
	fsw	%f0, 104(%x2)  #1888 pc 22804
	addi	%x6, %x8, 0  #0 pc 22808
	sw	%x1, 112(%x2)  #1888 pc 22812
	addi	%x2, %x2, 116  #1888 pc 22816
	jal	%x1, o_param_x.2641  #1888 pc 22820
	addi	%x2, %x2, -116  #1888 pc 22824
	lw	%x1, 112(%x2) #1888 pc 22828
	flw	%f1, 104(%x2)  #1888 pc 22832
	fsub	%f0, %f1, %f0  #1888 pc 22836
	lw	%x6, 8(%x2)  #1888 pc 22840
	fsw	%f0, 112(%x2)  #1888 pc 22844
	sw	%x1, 120(%x2)  #1888 pc 22848
	addi	%x2, %x2, 124  #1888 pc 22852
	jal	%x1, o_param_a.2633  #1888 pc 22856
	addi	%x2, %x2, -124  #1888 pc 22860
	lw	%x1, 120(%x2) #1888 pc 22864
	fsqrt	%f0, %f0  #1888 pc 22868
	flw	%f1, 112(%x2)  #1888 pc 22872
	fmul	%f0, %f1, %f0  #1888 pc 22876
	lw	%x6, 0(%x2)  #1889 pc 22880
	flw	%f1, 8(%x6)  #1889 pc 22884
	lw	%x7, 8(%x2)  #1889 pc 22888
	fsw	%f0, 120(%x2)  #1889 pc 22892
	fsw	%f1, 128(%x2)  #1889 pc 22896
	addi	%x6, %x7, 0  #0 pc 22900
	sw	%x1, 136(%x2)  #1889 pc 22904
	addi	%x2, %x2, 140  #1889 pc 22908
	jal	%x1, o_param_z.2645  #1889 pc 22912
	addi	%x2, %x2, -140  #1889 pc 22916
	lw	%x1, 136(%x2) #1889 pc 22920
	flw	%f1, 128(%x2)  #1889 pc 22924
	fsub	%f0, %f1, %f0  #1889 pc 22928
	lw	%x6, 8(%x2)  #1889 pc 22932
	fsw	%f0, 136(%x2)  #1889 pc 22936
	sw	%x1, 144(%x2)  #1889 pc 22940
	addi	%x2, %x2, 148  #1889 pc 22944
	jal	%x1, o_param_c.2637  #1889 pc 22948
	addi	%x2, %x2, -148  #1889 pc 22952
	lw	%x1, 144(%x2) #1889 pc 22956
	fsqrt	%f0, %f0  #1889 pc 22960
	flw	%f1, 136(%x2)  #1889 pc 22964
	fmul	%f0, %f1, %f0  #1889 pc 22968
	flw	%f1, 120(%x2)  #1890 pc 22972
	fsw	%f0, 144(%x2)  #1890 pc 22976
	fadd	%f0, %f1, %f30  #0 pc 22980
	sw	%x1, 152(%x2)  #1890 pc 22984
	addi	%x2, %x2, 156  #1890 pc 22988
	jal	%x1, fsqr.2487  #1890 pc 22992
	addi	%x2, %x2, -156  #1890 pc 22996
	lw	%x1, 152(%x2) #1890 pc 23000
	flw	%f1, 144(%x2)  #1890 pc 23004
	fsw	%f0, 152(%x2)  #1890 pc 23008
	fadd	%f0, %f1, %f30  #0 pc 23012
	sw	%x1, 160(%x2)  #1890 pc 23016
	addi	%x2, %x2, 164  #1890 pc 23020
	jal	%x1, fsqr.2487  #1890 pc 23024
	addi	%x2, %x2, -164  #1890 pc 23028
	lw	%x1, 160(%x2) #1890 pc 23032
	flw	%f1, 152(%x2)  #1890 pc 23036
	fadd	%f0, %f1, %f0  #1890 pc 23040
	flw	%f1, 120(%x2)  #1892 pc 23044
	fabs	%f2, %f1  #1892 pc 23048
	fmv	%f3, l.6659  #0 pc 23052
	fsw	%f0, 160(%x2)  #1892 pc 23056
	fadd	%f1, %f3, %f30  #0 pc 23060
	fadd	%f0, %f2, %f30  #0 pc 23064
	sw	%x1, 168(%x2)  #1892 pc 23068
	addi	%x2, %x2, 172  #1892 pc 23072
	jal	%x1, fless.2491  #1892 pc 23076
	addi	%x2, %x2, -172  #1892 pc 23080
	lw	%x1, 168(%x2) #1892 pc 23084
	beq	%x6, %x0, 12  #1892 pc 23088
	j	be_else.9318 #pc 23092
	nop #pc 23096
	flw	%f0, 120(%x2)  #1895 pc 23100
	flw	%f1, 144(%x2)  #1895 pc 23104
	fdiv	%f0, %f1, %f0  #1895 pc 23108
	fabs	%f0, %f0  #1895 pc 23112
	sw	%x1, 168(%x2)  #1897 pc 23116
	addi	%x2, %x2, 172  #1897 pc 23120
	jal	%x1, atan.2498  #1897 pc 23124
	addi	%x2, %x2, -172  #1897 pc 23128
	lw	%x1, 168(%x2) #1897 pc 23132
	fmv	%f1, l.6663  #0 pc 23136
	fmul	%f0, %f0, %f1  #1897 pc 23140
	fmv	%f1, l.6665  #0 pc 23144
	fdiv	%f0, %f0, %f1  #1897 pc 23148
	j	be_cont.9319 #pc 23152
	nop #pc 23156
be_else.9318: #pc 23160
	fmv	%f0, l.6661  #0 pc 23160
be_cont.9319: #pc 23164
	fsw	%f0, 168(%x2)  #1899 pc 23164
	sw	%x1, 176(%x2)  #1899 pc 23168
	addi	%x2, %x2, 180  #1899 pc 23172
	jal	%x1, floor.2500  #1899 pc 23176
	addi	%x2, %x2, -180  #1899 pc 23180
	lw	%x1, 176(%x2) #1899 pc 23184
	flw	%f1, 168(%x2)  #1899 pc 23188
	fsub	%f0, %f1, %f0  #1899 pc 23192
	lw	%x6, 0(%x2)  #1901 pc 23196
	flw	%f1, 4(%x6)  #1901 pc 23200
	lw	%x6, 8(%x2)  #1901 pc 23204
	fsw	%f0, 176(%x2)  #1901 pc 23208
	fsw	%f1, 184(%x2)  #1901 pc 23212
	sw	%x1, 192(%x2)  #1901 pc 23216
	addi	%x2, %x2, 196  #1901 pc 23220
	jal	%x1, o_param_y.2643  #1901 pc 23224
	addi	%x2, %x2, -196  #1901 pc 23228
	lw	%x1, 192(%x2) #1901 pc 23232
	flw	%f1, 184(%x2)  #1901 pc 23236
	fsub	%f0, %f1, %f0  #1901 pc 23240
	lw	%x6, 8(%x2)  #1901 pc 23244
	fsw	%f0, 192(%x2)  #1901 pc 23248
	sw	%x1, 200(%x2)  #1901 pc 23252
	addi	%x2, %x2, 204  #1901 pc 23256
	jal	%x1, o_param_b.2635  #1901 pc 23260
	addi	%x2, %x2, -204  #1901 pc 23264
	lw	%x1, 200(%x2) #1901 pc 23268
	fsqrt	%f0, %f0  #1901 pc 23272
	flw	%f1, 192(%x2)  #1901 pc 23276
	fmul	%f0, %f1, %f0  #1901 pc 23280
	flw	%f1, 160(%x2)  #1903 pc 23284
	fabs	%f2, %f1  #1903 pc 23288
	fmv	%f3, l.6659  #0 pc 23292
	fsw	%f0, 200(%x2)  #1903 pc 23296
	fadd	%f1, %f3, %f30  #0 pc 23300
	fadd	%f0, %f2, %f30  #0 pc 23304
	sw	%x1, 208(%x2)  #1903 pc 23308
	addi	%x2, %x2, 212  #1903 pc 23312
	jal	%x1, fless.2491  #1903 pc 23316
	addi	%x2, %x2, -212  #1903 pc 23320
	lw	%x1, 208(%x2) #1903 pc 23324
	beq	%x6, %x0, 12  #1903 pc 23328
	j	be_else.9320 #pc 23332
	nop #pc 23336
	flw	%f0, 160(%x2)  #1906 pc 23340
	flw	%f1, 200(%x2)  #1906 pc 23344
	fdiv	%f0, %f1, %f0  #1906 pc 23348
	fabs	%f0, %f0  #1906 pc 23352
	sw	%x1, 208(%x2)  #1907 pc 23356
	addi	%x2, %x2, 212  #1907 pc 23360
	jal	%x1, atan.2498  #1907 pc 23364
	addi	%x2, %x2, -212  #1907 pc 23368
	lw	%x1, 208(%x2) #1907 pc 23372
	fmv	%f1, l.6663  #0 pc 23376
	fmul	%f0, %f0, %f1  #1907 pc 23380
	fmv	%f1, l.6665  #0 pc 23384
	fdiv	%f0, %f0, %f1  #1907 pc 23388
	j	be_cont.9321 #pc 23392
	nop #pc 23396
be_else.9320: #pc 23400
	fmv	%f0, l.6661  #0 pc 23400
be_cont.9321: #pc 23404
	fsw	%f0, 208(%x2)  #1909 pc 23404
	sw	%x1, 216(%x2)  #1909 pc 23408
	addi	%x2, %x2, 220  #1909 pc 23412
	jal	%x1, floor.2500  #1909 pc 23416
	addi	%x2, %x2, -220  #1909 pc 23420
	lw	%x1, 216(%x2) #1909 pc 23424
	flw	%f1, 208(%x2)  #1909 pc 23428
	fsub	%f0, %f1, %f0  #1909 pc 23432
	fmv	%f1, l.6672  #0 pc 23436
	fmv	%f2, l.6180  #0 pc 23440
	flw	%f3, 176(%x2)  #1910 pc 23444
	fsub	%f2, %f2, %f3  #1910 pc 23448
	fsw	%f0, 216(%x2)  #1910 pc 23452
	fsw	%f1, 224(%x2)  #1910 pc 23456
	fadd	%f0, %f2, %f30  #0 pc 23460
	sw	%x1, 232(%x2)  #1910 pc 23464
	addi	%x2, %x2, 236  #1910 pc 23468
	jal	%x1, fsqr.2487  #1910 pc 23472
	addi	%x2, %x2, -236  #1910 pc 23476
	lw	%x1, 232(%x2) #1910 pc 23480
	flw	%f1, 224(%x2)  #1910 pc 23484
	fsub	%f0, %f1, %f0  #1910 pc 23488
	fmv	%f1, l.6180  #0 pc 23492
	flw	%f2, 216(%x2)  #1910 pc 23496
	fsub	%f1, %f1, %f2  #1910 pc 23500
	fsw	%f0, 232(%x2)  #1910 pc 23504
	fadd	%f0, %f1, %f30  #0 pc 23508
	sw	%x1, 240(%x2)  #1910 pc 23512
	addi	%x2, %x2, 244  #1910 pc 23516
	jal	%x1, fsqr.2487  #1910 pc 23520
	addi	%x2, %x2, -244  #1910 pc 23524
	lw	%x1, 240(%x2) #1910 pc 23528
	flw	%f1, 232(%x2)  #1910 pc 23532
	fsub	%f0, %f1, %f0  #1910 pc 23536
	fsw	%f0, 240(%x2)  #1911 pc 23540
	sw	%x1, 248(%x2)  #1911 pc 23544
	addi	%x2, %x2, 252  #1911 pc 23548
	jal	%x1, fisneg.2483  #1911 pc 23552
	addi	%x2, %x2, -252  #1911 pc 23556
	lw	%x1, 248(%x2) #1911 pc 23560
	beq	%x6, %x0, 12  #1911 pc 23564
	j	be_else.9322 #pc 23568
	nop #pc 23572
	flw	%f0, 240(%x2)  #1911 pc 23576
	j	be_cont.9323 #pc 23580
	nop #pc 23584
be_else.9322: #pc 23588
	fmv	%f0, l.6176  #0 pc 23588
be_cont.9323: #pc 23592
	fmv	%f1, l.6677  #0 pc 23592
	fmul	%f0, %f1, %f0  #1912 pc 23596
	fmv	%f1, l.6679  #0 pc 23600
	fdiv	%f0, %f0, %f1  #1912 pc 23604
	lw	%x6, 4(%x2)  #1912 pc 23608
	fsw	%f0, 8(%x6)  #1912 pc 23612
	ret #pc 23616
	nop #pc 23620
be_else.9317: #pc 23624
	ret #pc 23624
	nop #pc 23628
add_light.2895:  #pc 23632
	lw	%x6, 8(%x29)  #0 pc 23632
	lw	%x7, 4(%x29)  #0 pc 23636
	fsw	%f2, 0(%x2)  #1925 pc 23640
	fsw	%f1, 8(%x2)  #1925 pc 23644
	fsw	%f0, 16(%x2)  #1925 pc 23648
	sw	%x6, 24(%x2)  #1925 pc 23652
	sw	%x7, 28(%x2)  #1925 pc 23656
	sw	%x1, 32(%x2)  #1925 pc 23660
	addi	%x2, %x2, 36  #1925 pc 23664
	jal	%x1, fispos.2481  #1925 pc 23668
	addi	%x2, %x2, -36  #1925 pc 23672
	lw	%x1, 32(%x2) #1925 pc 23676
	beq	%x6, %x0, 12  #1925 pc 23680
	j	be_else.9326 #pc 23684
	nop #pc 23688
	j	be_cont.9327 #pc 23692
	nop #pc 23696
be_else.9326: #pc 23700
	flw	%f0, 16(%x2)  #1926 pc 23700
	lw	%x6, 28(%x2)  #1926 pc 23704
	lw	%x7, 24(%x2)  #1926 pc 23708
	sw	%x1, 32(%x2)  #1926 pc 23712
	addi	%x2, %x2, 36  #1926 pc 23716
	jal	%x1, vecaccum.2609  #1926 pc 23720
	addi	%x2, %x2, -36  #1926 pc 23724
	lw	%x1, 32(%x2) #1926 pc 23728
be_cont.9327: #pc 23732
	flw	%f0, 8(%x2)  #1930 pc 23732
	sw	%x1, 32(%x2)  #1930 pc 23736
	addi	%x2, %x2, 36  #1930 pc 23740
	jal	%x1, fispos.2481  #1930 pc 23744
	addi	%x2, %x2, -36  #1930 pc 23748
	lw	%x1, 32(%x2) #1930 pc 23752
	beq	%x6, %x0, 12  #1930 pc 23756
	j	be_else.9328 #pc 23760
	nop #pc 23764
	ret #pc 23768
	nop #pc 23772
be_else.9328: #pc 23776
	flw	%f0, 8(%x2)  #1931 pc 23776
	sw	%x1, 32(%x2)  #1931 pc 23780
	addi	%x2, %x2, 36  #1931 pc 23784
	jal	%x1, fsqr.2487  #1931 pc 23788
	addi	%x2, %x2, -36  #1931 pc 23792
	lw	%x1, 32(%x2) #1931 pc 23796
	sw	%x1, 32(%x2)  #1931 pc 23800
	addi	%x2, %x2, 36  #1931 pc 23804
	jal	%x1, fsqr.2487  #1931 pc 23808
	addi	%x2, %x2, -36  #1931 pc 23812
	lw	%x1, 32(%x2) #1931 pc 23816
	flw	%f1, 0(%x2)  #1931 pc 23820
	fmul	%f0, %f0, %f1  #1931 pc 23824
	lw	%x6, 28(%x2)  #1932 pc 23828
	flw	%f1, 0(%x6)  #1932 pc 23832
	fadd	%f1, %f1, %f0  #1932 pc 23836
	fsw	%f1, 0(%x6)  #1932 pc 23840
	flw	%f1, 4(%x6)  #1933 pc 23844
	fadd	%f1, %f1, %f0  #1933 pc 23848
	fsw	%f1, 4(%x6)  #1933 pc 23852
	flw	%f1, 8(%x6)  #1934 pc 23856
	fadd	%f0, %f1, %f0  #1934 pc 23860
	fsw	%f0, 8(%x6)  #1934 pc 23864
	ret #pc 23868
	nop #pc 23872
trace_reflections.2899:  #pc 23876
	lw	%x8, 32(%x29)  #0 pc 23876
	lw	%x9, 28(%x29)  #0 pc 23880
	lw	%x10, 24(%x29)  #0 pc 23884
	lw	%x11, 20(%x29)  #0 pc 23888
	lw	%x12, 16(%x29)  #0 pc 23892
	lw	%x13, 12(%x29)  #0 pc 23896
	lw	%x14, 8(%x29)  #0 pc 23900
	lw	%x15, 4(%x29)  #0 pc 23904
	bge	%x6, %x0, 12  #1941 pc 23908
	j	bge_else.9331 #pc 23912
	nop #pc 23916
	slli	%x16, %x6, 2  #1942 pc 23920
	add	%x31, %x16, %x9  #1942 pc 23924
	lw	%x9, 0(%x31)  #1942 pc 23928
	sw	%x29, 0(%x2)  #1943 pc 23932
	sw	%x6, 4(%x2)  #1943 pc 23936
	fsw	%f1, 8(%x2)  #1943 pc 23940
	sw	%x15, 16(%x2)  #1943 pc 23944
	sw	%x7, 20(%x2)  #1943 pc 23948
	fsw	%f0, 24(%x2)  #1943 pc 23952
	sw	%x11, 32(%x2)  #1943 pc 23956
	sw	%x8, 36(%x2)  #1943 pc 23960
	sw	%x10, 40(%x2)  #1943 pc 23964
	sw	%x9, 44(%x2)  #1943 pc 23968
	sw	%x13, 48(%x2)  #1943 pc 23972
	sw	%x14, 52(%x2)  #1943 pc 23976
	sw	%x12, 56(%x2)  #1943 pc 23980
	addi	%x6, %x9, 0  #0 pc 23984
	sw	%x1, 60(%x2)  #1943 pc 23988
	addi	%x2, %x2, 64  #1943 pc 23992
	jal	%x1, r_dvec.2690  #1943 pc 23996
	addi	%x2, %x2, -64  #1943 pc 24000
	lw	%x1, 60(%x2) #1943 pc 24004
	lw	%x29, 56(%x2)  #1946 pc 24008
	sw	%x6, 60(%x2)  #1946 pc 24012
	sw	%x1, 64(%x2)  #1946 pc 24016
	lw	%x30, 0(%x29)  #1946 pc 24020
	addi	%x2, %x2, 68  #1946 pc 24024
	jalr	%x1, %x30, 0  #1946 pc 24028
	addi	%x2, %x2, -68  #1946 pc 24032
	lw	%x1, 64(%x2)  #1946 pc 24036
	beq	%x6, %x0, 12  #1946 pc 24040
	j	be_else.9332 #pc 24044
	nop #pc 24048
	j	be_cont.9333 #pc 24052
	nop #pc 24056
be_else.9332: #pc 24060
	lw	%x6, 52(%x2)  #1947 pc 24060
	lw	%x6, 0(%x6)  #1947 pc 24064
	addi	%x7, %x0, 4  #0 pc 24068
	sw	%x1, 64(%x2)  #1947 pc 24072
	addi	%x2, %x2, 68  #1947 pc 24076
	jal	%x1, mul.2513  #1947 pc 24080
	addi	%x2, %x2, -68  #1947 pc 24084
	lw	%x1, 64(%x2) #1947 pc 24088
	lw	%x7, 48(%x2)  #1947 pc 24092
	lw	%x7, 0(%x7)  #1947 pc 24096
	add	%x6, %x6, %x7  #1947 pc 24100
	lw	%x7, 44(%x2)  #1948 pc 24104
	sw	%x6, 64(%x2)  #1948 pc 24108
	addi	%x6, %x7, 0  #0 pc 24112
	sw	%x1, 68(%x2)  #1948 pc 24116
	addi	%x2, %x2, 72  #1948 pc 24120
	jal	%x1, r_surface_id.2688  #1948 pc 24124
	addi	%x2, %x2, -72  #1948 pc 24128
	lw	%x1, 68(%x2) #1948 pc 24132
	lw	%x7, 64(%x2)  #1948 pc 24136
	beq	%x7, %x6, 12  #1948 pc 24140
	j	be_else.9334 #pc 24144
	nop #pc 24148
	addi	%x6, %x0, 0  #0 pc 24152
	lw	%x7, 40(%x2)  #1950 pc 24156
	lw	%x7, 0(%x7)  #1950 pc 24160
	lw	%x29, 36(%x2)  #1950 pc 24164
	sw	%x1, 68(%x2)  #1950 pc 24168
	lw	%x30, 0(%x29)  #1950 pc 24172
	addi	%x2, %x2, 72  #1950 pc 24176
	jalr	%x1, %x30, 0  #1950 pc 24180
	addi	%x2, %x2, -72  #1950 pc 24184
	lw	%x1, 68(%x2)  #1950 pc 24188
	beq	%x6, %x0, 12  #1950 pc 24192
	j	be_else.9336 #pc 24196
	nop #pc 24200
	lw	%x6, 60(%x2)  #1952 pc 24204
	sw	%x1, 68(%x2)  #1952 pc 24208
	addi	%x2, %x2, 72  #1952 pc 24212
	jal	%x1, d_vec.2684  #1952 pc 24216
	addi	%x2, %x2, -72  #1952 pc 24220
	lw	%x1, 68(%x2) #1952 pc 24224
	addi	%x7, %x6, 0  #1952 pc 24228
	lw	%x6, 32(%x2)  #1952 pc 24232
	sw	%x1, 68(%x2)  #1952 pc 24236
	addi	%x2, %x2, 72  #1952 pc 24240
	jal	%x1, veciprod.2601  #1952 pc 24244
	addi	%x2, %x2, -72  #1952 pc 24248
	lw	%x1, 68(%x2) #1952 pc 24252
	lw	%x6, 44(%x2)  #1953 pc 24256
	fsw	%f0, 72(%x2)  #1953 pc 24260
	sw	%x1, 80(%x2)  #1953 pc 24264
	addi	%x2, %x2, 84  #1953 pc 24268
	jal	%x1, r_bright.2692  #1953 pc 24272
	addi	%x2, %x2, -84  #1953 pc 24276
	lw	%x1, 80(%x2) #1953 pc 24280
	flw	%f1, 24(%x2)  #1954 pc 24284
	fmul	%f2, %f0, %f1  #1954 pc 24288
	flw	%f3, 72(%x2)  #1954 pc 24292
	fmul	%f2, %f2, %f3  #1954 pc 24296
	lw	%x6, 60(%x2)  #1955 pc 24300
	fsw	%f2, 80(%x2)  #1955 pc 24304
	fsw	%f0, 88(%x2)  #1955 pc 24308
	sw	%x1, 96(%x2)  #1955 pc 24312
	addi	%x2, %x2, 100  #1955 pc 24316
	jal	%x1, d_vec.2684  #1955 pc 24320
	addi	%x2, %x2, -100  #1955 pc 24324
	lw	%x1, 96(%x2) #1955 pc 24328
	addi	%x7, %x6, 0  #1955 pc 24332
	lw	%x6, 20(%x2)  #1955 pc 24336
	sw	%x1, 96(%x2)  #1955 pc 24340
	addi	%x2, %x2, 100  #1955 pc 24344
	jal	%x1, veciprod.2601  #1955 pc 24348
	addi	%x2, %x2, -100  #1955 pc 24352
	lw	%x1, 96(%x2) #1955 pc 24356
	flw	%f1, 88(%x2)  #1955 pc 24360
	fmul	%f1, %f1, %f0  #1955 pc 24364
	flw	%f0, 80(%x2)  #1956 pc 24368
	flw	%f2, 8(%x2)  #1956 pc 24372
	lw	%x29, 16(%x2)  #1956 pc 24376
	sw	%x1, 96(%x2)  #1956 pc 24380
	lw	%x30, 0(%x29)  #1956 pc 24384
	addi	%x2, %x2, 100  #1956 pc 24388
	jalr	%x1, %x30, 0  #1956 pc 24392
	addi	%x2, %x2, -100  #1956 pc 24396
	lw	%x1, 96(%x2)  #1956 pc 24400
	j	be_cont.9337 #pc 24404
	nop #pc 24408
be_else.9336: #pc 24412
be_cont.9337: #pc 24412
	j	be_cont.9335 #pc 24412
	nop #pc 24416
be_else.9334: #pc 24420
be_cont.9335: #pc 24420
be_cont.9333: #pc 24420
	lw	%x6, 4(%x2)  #1960 pc 24420
	addi	%x6, %x6, -1  #1960 pc 24424
	flw	%f0, 24(%x2)  #1960 pc 24428
	flw	%f1, 8(%x2)  #1960 pc 24432
	lw	%x7, 20(%x2)  #1960 pc 24436
	lw	%x29, 0(%x2)  #1960 pc 24440
	lw	%x30, 0(%x29)  #1960 pc 24444
	jalr	%x0, %x30, 0  #1960 pc 24448
	nop #pc 24452
bge_else.9331: #pc 24456
	ret #pc 24456
	nop #pc 24460
trace_ray.2904:  #pc 24464
	lw	%x9, 80(%x29)  #0 pc 24464
	lw	%x10, 76(%x29)  #0 pc 24468
	lw	%x11, 72(%x29)  #0 pc 24472
	lw	%x12, 68(%x29)  #0 pc 24476
	lw	%x13, 64(%x29)  #0 pc 24480
	lw	%x14, 60(%x29)  #0 pc 24484
	lw	%x15, 56(%x29)  #0 pc 24488
	lw	%x16, 52(%x29)  #0 pc 24492
	lw	%x17, 48(%x29)  #0 pc 24496
	lw	%x18, 44(%x29)  #0 pc 24500
	lw	%x19, 40(%x29)  #0 pc 24504
	lw	%x20, 36(%x29)  #0 pc 24508
	lw	%x21, 32(%x29)  #0 pc 24512
	lw	%x22, 28(%x29)  #0 pc 24516
	lw	%x23, 24(%x29)  #0 pc 24520
	lw	%x24, 20(%x29)  #0 pc 24524
	lw	%x25, 16(%x29)  #0 pc 24528
	lw	%x26, 12(%x29)  #0 pc 24532
	lw	%x27, 8(%x29)  #0 pc 24536
	lw	%x28, 4(%x29)  #0 pc 24540
	addi	%x31, %x0, 4  #pc 24544
	bge	%x31, %x6, 12  #1969 pc 24548
	j	ble_else.9340 #pc 24552
	nop #pc 24556
	sw	%x29, 0(%x2)  #1970 pc 24560
	fsw	%f1, 8(%x2)  #1970 pc 24564
	sw	%x11, 16(%x2)  #1970 pc 24568
	sw	%x10, 20(%x2)  #1970 pc 24572
	sw	%x20, 24(%x2)  #1970 pc 24576
	sw	%x15, 28(%x2)  #1970 pc 24580
	sw	%x28, 32(%x2)  #1970 pc 24584
	sw	%x14, 36(%x2)  #1970 pc 24588
	sw	%x17, 40(%x2)  #1970 pc 24592
	sw	%x19, 44(%x2)  #1970 pc 24596
	sw	%x12, 48(%x2)  #1970 pc 24600
	sw	%x8, 52(%x2)  #1970 pc 24604
	sw	%x23, 56(%x2)  #1970 pc 24608
	sw	%x9, 60(%x2)  #1970 pc 24612
	sw	%x24, 64(%x2)  #1970 pc 24616
	sw	%x13, 68(%x2)  #1970 pc 24620
	sw	%x26, 72(%x2)  #1970 pc 24624
	sw	%x18, 76(%x2)  #1970 pc 24628
	sw	%x25, 80(%x2)  #1970 pc 24632
	sw	%x16, 84(%x2)  #1970 pc 24636
	sw	%x27, 88(%x2)  #1970 pc 24640
	fsw	%f0, 96(%x2)  #1970 pc 24644
	sw	%x21, 104(%x2)  #1970 pc 24648
	sw	%x6, 108(%x2)  #1970 pc 24652
	sw	%x7, 112(%x2)  #1970 pc 24656
	sw	%x22, 116(%x2)  #1970 pc 24660
	addi	%x6, %x8, 0  #0 pc 24664
	sw	%x1, 120(%x2)  #1970 pc 24668
	addi	%x2, %x2, 124  #1970 pc 24672
	jal	%x1, p_surface_ids.2669  #1970 pc 24676
	addi	%x2, %x2, -124  #1970 pc 24680
	lw	%x1, 120(%x2) #1970 pc 24684
	lw	%x7, 112(%x2)  #1971 pc 24688
	lw	%x29, 116(%x2)  #1971 pc 24692
	sw	%x6, 120(%x2)  #1971 pc 24696
	addi	%x6, %x7, 0  #0 pc 24700
	sw	%x1, 124(%x2)  #1971 pc 24704
	lw	%x30, 0(%x29)  #1971 pc 24708
	addi	%x2, %x2, 128  #1971 pc 24712
	jalr	%x1, %x30, 0  #1971 pc 24716
	addi	%x2, %x2, -128  #1971 pc 24720
	lw	%x1, 124(%x2)  #1971 pc 24724
	beq	%x6, %x0, 12  #1971 pc 24728
	j	be_else.9343 #pc 24732
	nop #pc 24736
	addi	%x6, %x0, -1  #0 pc 24740
	lw	%x7, 108(%x2)  #2034 pc 24744
	slli	%x8, %x7, 2  #2034 pc 24748
	lw	%x9, 120(%x2)  #2034 pc 24752
	add	%x31, %x8, %x9  #2034 pc 24756
	sw	%x6, 0(%x31)  #2034 pc 24760
	beq	%x7, %x0, 12  #2036 pc 24764
	j	be_else.9344 #pc 24768
	nop #pc 24772
	ret #pc 24776
	nop #pc 24780
be_else.9344: #pc 24784
	lw	%x6, 112(%x2)  #2037 pc 24784
	lw	%x7, 104(%x2)  #2037 pc 24788
	sw	%x1, 124(%x2)  #2037 pc 24792
	addi	%x2, %x2, 128  #2037 pc 24796
	jal	%x1, veciprod.2601  #2037 pc 24800
	addi	%x2, %x2, -128  #2037 pc 24804
	lw	%x1, 124(%x2) #2037 pc 24808
	sw	%x1, 124(%x2)  #2037 pc 24812
	addi	%x2, %x2, 128  #2037 pc 24816
	jal	%x1, fneg.2485  #2037 pc 24820
	addi	%x2, %x2, -128  #2037 pc 24824
	lw	%x1, 124(%x2) #2037 pc 24828
	fsw	%f0, 128(%x2)  #2039 pc 24832
	sw	%x1, 136(%x2)  #2039 pc 24836
	addi	%x2, %x2, 140  #2039 pc 24840
	jal	%x1, fispos.2481  #2039 pc 24844
	addi	%x2, %x2, -140  #2039 pc 24848
	lw	%x1, 136(%x2) #2039 pc 24852
	beq	%x6, %x0, 12  #2039 pc 24856
	j	be_else.9347 #pc 24860
	nop #pc 24864
	ret #pc 24868
	nop #pc 24872
be_else.9347: #pc 24876
	flw	%f0, 128(%x2)  #2042 pc 24876
	sw	%x1, 136(%x2)  #2042 pc 24880
	addi	%x2, %x2, 140  #2042 pc 24884
	jal	%x1, fsqr.2487  #2042 pc 24888
	addi	%x2, %x2, -140  #2042 pc 24892
	lw	%x1, 136(%x2) #2042 pc 24896
	flw	%f1, 128(%x2)  #2042 pc 24900
	fmul	%f0, %f0, %f1  #2042 pc 24904
	flw	%f1, 96(%x2)  #2042 pc 24908
	fmul	%f0, %f0, %f1  #2042 pc 24912
	lw	%x6, 88(%x2)  #2042 pc 24916
	flw	%f1, 0(%x6)  #2042 pc 24920
	fmul	%f0, %f0, %f1  #2042 pc 24924
	lw	%x6, 84(%x2)  #2043 pc 24928
	flw	%f1, 0(%x6)  #2043 pc 24932
	fadd	%f1, %f1, %f0  #2043 pc 24936
	fsw	%f1, 0(%x6)  #2043 pc 24940
	flw	%f1, 4(%x6)  #2044 pc 24944
	fadd	%f1, %f1, %f0  #2044 pc 24948
	fsw	%f1, 4(%x6)  #2044 pc 24952
	flw	%f1, 8(%x6)  #2045 pc 24956
	fadd	%f0, %f1, %f0  #2045 pc 24960
	fsw	%f0, 8(%x6)  #2045 pc 24964
	ret #pc 24968
	nop #pc 24972
be_else.9343: #pc 24976
	lw	%x6, 80(%x2)  #1973 pc 24976
	lw	%x6, 0(%x6)  #1973 pc 24980
	slli	%x7, %x6, 2  #1974 pc 24984
	lw	%x8, 76(%x2)  #1974 pc 24988
	add	%x31, %x7, %x8  #1974 pc 24992
	lw	%x7, 0(%x31)  #1974 pc 24996
	sw	%x6, 136(%x2)  #1975 pc 25000
	sw	%x7, 140(%x2)  #1975 pc 25004
	addi	%x6, %x7, 0  #0 pc 25008
	sw	%x1, 144(%x2)  #1975 pc 25012
	addi	%x2, %x2, 148  #1975 pc 25016
	jal	%x1, o_reflectiontype.2627  #1975 pc 25020
	addi	%x2, %x2, -148  #1975 pc 25024
	lw	%x1, 144(%x2) #1975 pc 25028
	lw	%x7, 140(%x2)  #1976 pc 25032
	sw	%x6, 144(%x2)  #1976 pc 25036
	addi	%x6, %x7, 0  #0 pc 25040
	sw	%x1, 148(%x2)  #1976 pc 25044
	addi	%x2, %x2, 152  #1976 pc 25048
	jal	%x1, o_diffuse.2647  #1976 pc 25052
	addi	%x2, %x2, -152  #1976 pc 25056
	lw	%x1, 148(%x2) #1976 pc 25060
	flw	%f1, 96(%x2)  #1976 pc 25064
	fmul	%f0, %f0, %f1  #1976 pc 25068
	lw	%x6, 140(%x2)  #1978 pc 25072
	lw	%x7, 112(%x2)  #1978 pc 25076
	lw	%x29, 72(%x2)  #1978 pc 25080
	fsw	%f0, 152(%x2)  #1978 pc 25084
	sw	%x1, 160(%x2)  #1978 pc 25088
	lw	%x30, 0(%x29)  #1978 pc 25092
	addi	%x2, %x2, 164  #1978 pc 25096
	jalr	%x1, %x30, 0  #1978 pc 25100
	addi	%x2, %x2, -164  #1978 pc 25104
	lw	%x1, 160(%x2)  #1978 pc 25108
	lw	%x6, 68(%x2)  #1979 pc 25112
	lw	%x7, 64(%x2)  #1979 pc 25116
	sw	%x1, 160(%x2)  #1979 pc 25120
	addi	%x2, %x2, 164  #1979 pc 25124
	jal	%x1, veccpy.2595  #1979 pc 25128
	addi	%x2, %x2, -164  #1979 pc 25132
	lw	%x1, 160(%x2) #1979 pc 25136
	lw	%x6, 140(%x2)  #1980 pc 25140
	lw	%x7, 64(%x2)  #1980 pc 25144
	lw	%x29, 60(%x2)  #1980 pc 25148
	sw	%x1, 160(%x2)  #1980 pc 25152
	lw	%x30, 0(%x29)  #1980 pc 25156
	addi	%x2, %x2, 164  #1980 pc 25160
	jalr	%x1, %x30, 0  #1980 pc 25164
	addi	%x2, %x2, -164  #1980 pc 25168
	lw	%x1, 160(%x2)  #1980 pc 25172
	addi	%x7, %x0, 4  #0 pc 25176
	lw	%x6, 136(%x2)  #1983 pc 25180
	sw	%x1, 160(%x2)  #1983 pc 25184
	addi	%x2, %x2, 164  #1983 pc 25188
	jal	%x1, mul.2513  #1983 pc 25192
	addi	%x2, %x2, -164  #1983 pc 25196
	lw	%x1, 160(%x2) #1983 pc 25200
	lw	%x7, 56(%x2)  #1983 pc 25204
	lw	%x7, 0(%x7)  #1983 pc 25208
	add	%x6, %x6, %x7  #1983 pc 25212
	lw	%x7, 108(%x2)  #1983 pc 25216
	slli	%x8, %x7, 2  #1983 pc 25220
	lw	%x9, 120(%x2)  #1983 pc 25224
	add	%x31, %x8, %x9  #1983 pc 25228
	sw	%x6, 0(%x31)  #1983 pc 25232
	lw	%x6, 52(%x2)  #1984 pc 25236
	sw	%x1, 160(%x2)  #1984 pc 25240
	addi	%x2, %x2, 164  #1984 pc 25244
	jal	%x1, p_intersection_points.2667  #1984 pc 25248
	addi	%x2, %x2, -164  #1984 pc 25252
	lw	%x1, 160(%x2) #1984 pc 25256
	lw	%x7, 108(%x2)  #1985 pc 25260
	slli	%x8, %x7, 2  #1985 pc 25264
	add	%x31, %x8, %x6  #1985 pc 25268
	lw	%x6, 0(%x31)  #1985 pc 25272
	lw	%x8, 64(%x2)  #1985 pc 25276
	addi	%x7, %x8, 0  #0 pc 25280
	sw	%x1, 160(%x2)  #1985 pc 25284
	addi	%x2, %x2, 164  #1985 pc 25288
	jal	%x1, veccpy.2595  #1985 pc 25292
	addi	%x2, %x2, -164  #1985 pc 25296
	lw	%x1, 160(%x2) #1985 pc 25300
	lw	%x6, 52(%x2)  #1988 pc 25304
	sw	%x1, 160(%x2)  #1988 pc 25308
	addi	%x2, %x2, 164  #1988 pc 25312
	jal	%x1, p_calc_diffuse.2671  #1988 pc 25316
	addi	%x2, %x2, -164  #1988 pc 25320
	lw	%x1, 160(%x2) #1988 pc 25324
	lw	%x7, 140(%x2)  #1989 pc 25328
	sw	%x6, 160(%x2)  #1989 pc 25332
	addi	%x6, %x7, 0  #0 pc 25336
	sw	%x1, 164(%x2)  #1989 pc 25340
	addi	%x2, %x2, 168  #1989 pc 25344
	jal	%x1, o_diffuse.2647  #1989 pc 25348
	addi	%x2, %x2, -168  #1989 pc 25352
	lw	%x1, 164(%x2) #1989 pc 25356
	fmv	%f1, l.6180  #0 pc 25360
	sw	%x1, 164(%x2)  #1989 pc 25364
	addi	%x2, %x2, 168  #1989 pc 25368
	jal	%x1, fless.2491  #1989 pc 25372
	addi	%x2, %x2, -168  #1989 pc 25376
	lw	%x1, 164(%x2) #1989 pc 25380
	beq	%x6, %x0, 12  #1989 pc 25384
	j	be_else.9351 #pc 25388
	nop #pc 25392
	addi	%x6, %x0, 1  #0 pc 25396
	lw	%x7, 108(%x2)  #1992 pc 25400
	slli	%x8, %x7, 2  #1992 pc 25404
	lw	%x9, 160(%x2)  #1992 pc 25408
	add	%x31, %x8, %x9  #1992 pc 25412
	sw	%x6, 0(%x31)  #1992 pc 25416
	lw	%x6, 52(%x2)  #1993 pc 25420
	sw	%x1, 164(%x2)  #1993 pc 25424
	addi	%x2, %x2, 168  #1993 pc 25428
	jal	%x1, p_energy.2673  #1993 pc 25432
	addi	%x2, %x2, -168  #1993 pc 25436
	lw	%x1, 164(%x2) #1993 pc 25440
	lw	%x7, 108(%x2)  #1994 pc 25444
	slli	%x8, %x7, 2  #1994 pc 25448
	add	%x31, %x8, %x6  #1994 pc 25452
	lw	%x8, 0(%x31)  #1994 pc 25456
	lw	%x9, 48(%x2)  #1994 pc 25460
	sw	%x6, 164(%x2)  #1994 pc 25464
	addi	%x7, %x9, 0  #0 pc 25468
	addi	%x6, %x8, 0  #0 pc 25472
	sw	%x1, 168(%x2)  #1994 pc 25476
	addi	%x2, %x2, 172  #1994 pc 25480
	jal	%x1, veccpy.2595  #1994 pc 25484
	addi	%x2, %x2, -172  #1994 pc 25488
	lw	%x1, 168(%x2) #1994 pc 25492
	lw	%x6, 108(%x2)  #1995 pc 25496
	slli	%x7, %x6, 2  #1995 pc 25500
	lw	%x8, 164(%x2)  #1995 pc 25504
	add	%x31, %x7, %x8  #1995 pc 25508
	lw	%x7, 0(%x31)  #1995 pc 25512
	fmv	%f0, l.6735  #0 pc 25516
	flw	%f1, 152(%x2)  #1995 pc 25520
	fmul	%f0, %f0, %f1  #1995 pc 25524
	addi	%x6, %x7, 0  #0 pc 25528
	sw	%x1, 168(%x2)  #1995 pc 25532
	addi	%x2, %x2, 172  #1995 pc 25536
	jal	%x1, vecscale.2616  #1995 pc 25540
	addi	%x2, %x2, -172  #1995 pc 25544
	lw	%x1, 168(%x2) #1995 pc 25548
	lw	%x6, 52(%x2)  #1996 pc 25552
	sw	%x1, 168(%x2)  #1996 pc 25556
	addi	%x2, %x2, 172  #1996 pc 25560
	jal	%x1, p_nvectors.2682  #1996 pc 25564
	addi	%x2, %x2, -172  #1996 pc 25568
	lw	%x1, 168(%x2) #1996 pc 25572
	lw	%x7, 108(%x2)  #1997 pc 25576
	slli	%x8, %x7, 2  #1997 pc 25580
	add	%x31, %x8, %x6  #1997 pc 25584
	lw	%x6, 0(%x31)  #1997 pc 25588
	lw	%x8, 44(%x2)  #1997 pc 25592
	addi	%x7, %x8, 0  #0 pc 25596
	sw	%x1, 168(%x2)  #1997 pc 25600
	addi	%x2, %x2, 172  #1997 pc 25604
	jal	%x1, veccpy.2595  #1997 pc 25608
	addi	%x2, %x2, -172  #1997 pc 25612
	lw	%x1, 168(%x2) #1997 pc 25616
	j	be_cont.9352 #pc 25620
	nop #pc 25624
be_else.9351: #pc 25628
	addi	%x6, %x0, 0  #0 pc 25628
	lw	%x7, 108(%x2)  #1990 pc 25632
	slli	%x8, %x7, 2  #1990 pc 25636
	lw	%x9, 160(%x2)  #1990 pc 25640
	add	%x31, %x8, %x9  #1990 pc 25644
	sw	%x6, 0(%x31)  #1990 pc 25648
be_cont.9352: #pc 25652
	fmv	%f0, l.6738  #0 pc 25652
	lw	%x6, 112(%x2)  #2000 pc 25656
	lw	%x7, 44(%x2)  #2000 pc 25660
	fsw	%f0, 168(%x2)  #2000 pc 25664
	sw	%x1, 176(%x2)  #2000 pc 25668
	addi	%x2, %x2, 180  #2000 pc 25672
	jal	%x1, veciprod.2601  #2000 pc 25676
	addi	%x2, %x2, -180  #2000 pc 25680
	lw	%x1, 176(%x2) #2000 pc 25684
	flw	%f1, 168(%x2)  #2000 pc 25688
	fmul	%f0, %f1, %f0  #2000 pc 25692
	lw	%x6, 112(%x2)  #2002 pc 25696
	lw	%x7, 44(%x2)  #2002 pc 25700
	sw	%x1, 176(%x2)  #2002 pc 25704
	addi	%x2, %x2, 180  #2002 pc 25708
	jal	%x1, vecaccum.2609  #2002 pc 25712
	addi	%x2, %x2, -180  #2002 pc 25716
	lw	%x1, 176(%x2) #2002 pc 25720
	lw	%x6, 140(%x2)  #2004 pc 25724
	sw	%x1, 176(%x2)  #2004 pc 25728
	addi	%x2, %x2, 180  #2004 pc 25732
	jal	%x1, o_hilight.2649  #2004 pc 25736
	addi	%x2, %x2, -180  #2004 pc 25740
	lw	%x1, 176(%x2) #2004 pc 25744
	flw	%f1, 96(%x2)  #2004 pc 25748
	fmul	%f0, %f1, %f0  #2004 pc 25752
	addi	%x6, %x0, 0  #0 pc 25756
	lw	%x7, 40(%x2)  #2007 pc 25760
	lw	%x7, 0(%x7)  #2007 pc 25764
	lw	%x29, 36(%x2)  #2007 pc 25768
	fsw	%f0, 176(%x2)  #2007 pc 25772
	sw	%x1, 184(%x2)  #2007 pc 25776
	lw	%x30, 0(%x29)  #2007 pc 25780
	addi	%x2, %x2, 188  #2007 pc 25784
	jalr	%x1, %x30, 0  #2007 pc 25788
	addi	%x2, %x2, -188  #2007 pc 25792
	lw	%x1, 184(%x2)  #2007 pc 25796
	beq	%x6, %x0, 12  #2007 pc 25800
	j	be_else.9353 #pc 25804
	nop #pc 25808
	lw	%x6, 44(%x2)  #2008 pc 25812
	lw	%x7, 104(%x2)  #2008 pc 25816
	sw	%x1, 184(%x2)  #2008 pc 25820
	addi	%x2, %x2, 188  #2008 pc 25824
	jal	%x1, veciprod.2601  #2008 pc 25828
	addi	%x2, %x2, -188  #2008 pc 25832
	lw	%x1, 184(%x2) #2008 pc 25836
	sw	%x1, 184(%x2)  #2008 pc 25840
	addi	%x2, %x2, 188  #2008 pc 25844
	jal	%x1, fneg.2485  #2008 pc 25848
	addi	%x2, %x2, -188  #2008 pc 25852
	lw	%x1, 184(%x2) #2008 pc 25856
	flw	%f1, 152(%x2)  #2008 pc 25860
	fmul	%f0, %f0, %f1  #2008 pc 25864
	lw	%x6, 112(%x2)  #2009 pc 25868
	lw	%x7, 104(%x2)  #2009 pc 25872
	fsw	%f0, 184(%x2)  #2009 pc 25876
	sw	%x1, 192(%x2)  #2009 pc 25880
	addi	%x2, %x2, 196  #2009 pc 25884
	jal	%x1, veciprod.2601  #2009 pc 25888
	addi	%x2, %x2, -196  #2009 pc 25892
	lw	%x1, 192(%x2) #2009 pc 25896
	sw	%x1, 192(%x2)  #2009 pc 25900
	addi	%x2, %x2, 196  #2009 pc 25904
	jal	%x1, fneg.2485  #2009 pc 25908
	addi	%x2, %x2, -196  #2009 pc 25912
	lw	%x1, 192(%x2) #2009 pc 25916
	fadd	%f1, %f0, %f30  #2009 pc 25920
	flw	%f0, 184(%x2)  #2010 pc 25924
	flw	%f2, 176(%x2)  #2010 pc 25928
	lw	%x29, 32(%x2)  #2010 pc 25932
	sw	%x1, 192(%x2)  #2010 pc 25936
	lw	%x30, 0(%x29)  #2010 pc 25940
	addi	%x2, %x2, 196  #2010 pc 25944
	jalr	%x1, %x30, 0  #2010 pc 25948
	addi	%x2, %x2, -196  #2010 pc 25952
	lw	%x1, 192(%x2)  #2010 pc 25956
	j	be_cont.9354 #pc 25960
	nop #pc 25964
be_else.9353: #pc 25968
be_cont.9354: #pc 25968
	lw	%x6, 64(%x2)  #2014 pc 25968
	lw	%x29, 28(%x2)  #2014 pc 25972
	sw	%x1, 192(%x2)  #2014 pc 25976
	lw	%x30, 0(%x29)  #2014 pc 25980
	addi	%x2, %x2, 196  #2014 pc 25984
	jalr	%x1, %x30, 0  #2014 pc 25988
	addi	%x2, %x2, -196  #2014 pc 25992
	lw	%x1, 192(%x2)  #2014 pc 25996
	lw	%x6, 24(%x2)  #2015 pc 26000
	lw	%x6, 0(%x6)  #2015 pc 26004
	addi	%x6, %x6, -1  #2015 pc 26008
	flw	%f0, 152(%x2)  #2015 pc 26012
	flw	%f1, 176(%x2)  #2015 pc 26016
	lw	%x7, 112(%x2)  #2015 pc 26020
	lw	%x29, 20(%x2)  #2015 pc 26024
	sw	%x1, 192(%x2)  #2015 pc 26028
	lw	%x30, 0(%x29)  #2015 pc 26032
	addi	%x2, %x2, 196  #2015 pc 26036
	jalr	%x1, %x30, 0  #2015 pc 26040
	addi	%x2, %x2, -196  #2015 pc 26044
	lw	%x1, 192(%x2)  #2015 pc 26048
	fmv	%f0, l.6742  #0 pc 26052
	flw	%f1, 96(%x2)  #2018 pc 26056
	sw	%x1, 192(%x2)  #2018 pc 26060
	addi	%x2, %x2, 196  #2018 pc 26064
	jal	%x1, fless.2491  #2018 pc 26068
	addi	%x2, %x2, -196  #2018 pc 26072
	lw	%x1, 192(%x2) #2018 pc 26076
	beq	%x6, %x0, 12  #2018 pc 26080
	j	be_else.9355 #pc 26084
	nop #pc 26088
	ret #pc 26092
	nop #pc 26096
be_else.9355: #pc 26100
	lw	%x6, 108(%x2)  #2020 pc 26100
	addi	%x31, %x0, 4  #pc 26104
	bge	%x6, %x31, 12  #2020 pc 26108
	j	bge_else.9357 #pc 26112
	nop #pc 26116
	j	bge_cont.9358 #pc 26120
	nop #pc 26124
bge_else.9357: #pc 26128
	addi	%x7, %x6, 1  #2021 pc 26128
	addi	%x8, %x0, -1  #0 pc 26132
	slli	%x7, %x7, 2  #2021 pc 26136
	lw	%x9, 120(%x2)  #2021 pc 26140
	add	%x31, %x7, %x9  #2021 pc 26144
	sw	%x8, 0(%x31)  #2021 pc 26148
bge_cont.9358: #pc 26152
	lw	%x7, 144(%x2)  #2024 pc 26152
	addi	%x31, %x0, 2  #pc 26156
	beq	%x7, %x31, 12  #2024 pc 26160
	j	be_else.9359 #pc 26164
	nop #pc 26168
	fmv	%f0, l.6188  #0 pc 26172
	lw	%x7, 140(%x2)  #2025 pc 26176
	fsw	%f0, 192(%x2)  #2025 pc 26180
	addi	%x6, %x7, 0  #0 pc 26184
	sw	%x1, 200(%x2)  #2025 pc 26188
	addi	%x2, %x2, 204  #2025 pc 26192
	jal	%x1, o_diffuse.2647  #2025 pc 26196
	addi	%x2, %x2, -204  #2025 pc 26200
	lw	%x1, 200(%x2) #2025 pc 26204
	flw	%f1, 192(%x2)  #2025 pc 26208
	fsub	%f0, %f1, %f0  #2025 pc 26212
	flw	%f1, 96(%x2)  #2025 pc 26216
	fmul	%f0, %f1, %f0  #2025 pc 26220
	lw	%x6, 108(%x2)  #2026 pc 26224
	addi	%x6, %x6, 1  #2026 pc 26228
	lw	%x7, 16(%x2)  #2026 pc 26232
	flw	%f1, 0(%x7)  #2026 pc 26236
	flw	%f2, 8(%x2)  #2026 pc 26240
	fadd	%f1, %f2, %f1  #2026 pc 26244
	lw	%x7, 112(%x2)  #2026 pc 26248
	lw	%x8, 52(%x2)  #2026 pc 26252
	lw	%x29, 0(%x2)  #2026 pc 26256
	lw	%x30, 0(%x29)  #2026 pc 26260
	jalr	%x0, %x30, 0  #2026 pc 26264
	nop #pc 26268
be_else.9359: #pc 26272
	ret #pc 26272
	nop #pc 26276
ble_else.9340: #pc 26280
	ret #pc 26280
	nop #pc 26284
trace_diffuse_ray.2910:  #pc 26288
	lw	%x7, 48(%x29)  #0 pc 26288
	lw	%x8, 44(%x29)  #0 pc 26292
	lw	%x9, 40(%x29)  #0 pc 26296
	lw	%x10, 36(%x29)  #0 pc 26300
	lw	%x11, 32(%x29)  #0 pc 26304
	lw	%x12, 28(%x29)  #0 pc 26308
	lw	%x13, 24(%x29)  #0 pc 26312
	lw	%x14, 20(%x29)  #0 pc 26316
	lw	%x15, 16(%x29)  #0 pc 26320
	lw	%x16, 12(%x29)  #0 pc 26324
	lw	%x17, 8(%x29)  #0 pc 26328
	lw	%x18, 4(%x29)  #0 pc 26332
	sw	%x8, 0(%x2)  #2064 pc 26336
	sw	%x18, 4(%x2)  #2064 pc 26340
	fsw	%f0, 8(%x2)  #2064 pc 26344
	sw	%x13, 16(%x2)  #2064 pc 26348
	sw	%x12, 20(%x2)  #2064 pc 26352
	sw	%x9, 24(%x2)  #2064 pc 26356
	sw	%x10, 28(%x2)  #2064 pc 26360
	sw	%x15, 32(%x2)  #2064 pc 26364
	sw	%x7, 36(%x2)  #2064 pc 26368
	sw	%x17, 40(%x2)  #2064 pc 26372
	sw	%x6, 44(%x2)  #2064 pc 26376
	sw	%x11, 48(%x2)  #2064 pc 26380
	sw	%x16, 52(%x2)  #2064 pc 26384
	addi	%x29, %x14, 0  #0 pc 26388
	sw	%x1, 56(%x2)  #2064 pc 26392
	lw	%x30, 0(%x29)  #2064 pc 26396
	addi	%x2, %x2, 60  #2064 pc 26400
	jalr	%x1, %x30, 0  #2064 pc 26404
	addi	%x2, %x2, -60  #2064 pc 26408
	lw	%x1, 56(%x2)  #2064 pc 26412
	beq	%x6, %x0, 12  #2064 pc 26416
	j	be_else.9362 #pc 26420
	nop #pc 26424
	ret #pc 26428
	nop #pc 26432
be_else.9362: #pc 26436
	lw	%x6, 52(%x2)  #2065 pc 26436
	lw	%x6, 0(%x6)  #2065 pc 26440
	slli	%x6, %x6, 2  #2065 pc 26444
	lw	%x7, 48(%x2)  #2065 pc 26448
	add	%x31, %x6, %x7  #2065 pc 26452
	lw	%x6, 0(%x31)  #2065 pc 26456
	lw	%x7, 44(%x2)  #2066 pc 26460
	sw	%x6, 56(%x2)  #2066 pc 26464
	addi	%x6, %x7, 0  #0 pc 26468
	sw	%x1, 60(%x2)  #2066 pc 26472
	addi	%x2, %x2, 64  #2066 pc 26476
	jal	%x1, d_vec.2684  #2066 pc 26480
	addi	%x2, %x2, -64  #2066 pc 26484
	lw	%x1, 60(%x2) #2066 pc 26488
	addi	%x7, %x6, 0  #2066 pc 26492
	lw	%x6, 56(%x2)  #2066 pc 26496
	lw	%x29, 40(%x2)  #2066 pc 26500
	sw	%x1, 60(%x2)  #2066 pc 26504
	lw	%x30, 0(%x29)  #2066 pc 26508
	addi	%x2, %x2, 64  #2066 pc 26512
	jalr	%x1, %x30, 0  #2066 pc 26516
	addi	%x2, %x2, -64  #2066 pc 26520
	lw	%x1, 60(%x2)  #2066 pc 26524
	lw	%x6, 56(%x2)  #2067 pc 26528
	lw	%x7, 32(%x2)  #2067 pc 26532
	lw	%x29, 36(%x2)  #2067 pc 26536
	sw	%x1, 60(%x2)  #2067 pc 26540
	lw	%x30, 0(%x29)  #2067 pc 26544
	addi	%x2, %x2, 64  #2067 pc 26548
	jalr	%x1, %x30, 0  #2067 pc 26552
	addi	%x2, %x2, -64  #2067 pc 26556
	lw	%x1, 60(%x2)  #2067 pc 26560
	addi	%x6, %x0, 0  #0 pc 26564
	lw	%x7, 28(%x2)  #2070 pc 26568
	lw	%x7, 0(%x7)  #2070 pc 26572
	lw	%x29, 24(%x2)  #2070 pc 26576
	sw	%x1, 60(%x2)  #2070 pc 26580
	lw	%x30, 0(%x29)  #2070 pc 26584
	addi	%x2, %x2, 64  #2070 pc 26588
	jalr	%x1, %x30, 0  #2070 pc 26592
	addi	%x2, %x2, -64  #2070 pc 26596
	lw	%x1, 60(%x2)  #2070 pc 26600
	beq	%x6, %x0, 12  #2070 pc 26604
	j	be_else.9364 #pc 26608
	nop #pc 26612
	lw	%x6, 20(%x2)  #2071 pc 26616
	lw	%x7, 16(%x2)  #2071 pc 26620
	sw	%x1, 60(%x2)  #2071 pc 26624
	addi	%x2, %x2, 64  #2071 pc 26628
	jal	%x1, veciprod.2601  #2071 pc 26632
	addi	%x2, %x2, -64  #2071 pc 26636
	lw	%x1, 60(%x2) #2071 pc 26640
	sw	%x1, 60(%x2)  #2071 pc 26644
	addi	%x2, %x2, 64  #2071 pc 26648
	jal	%x1, fneg.2485  #2071 pc 26652
	addi	%x2, %x2, -64  #2071 pc 26656
	lw	%x1, 60(%x2) #2071 pc 26660
	fsw	%f0, 64(%x2)  #2072 pc 26664
	sw	%x1, 72(%x2)  #2072 pc 26668
	addi	%x2, %x2, 76  #2072 pc 26672
	jal	%x1, fispos.2481  #2072 pc 26676
	addi	%x2, %x2, -76  #2072 pc 26680
	lw	%x1, 72(%x2) #2072 pc 26684
	beq	%x6, %x0, 12  #2072 pc 26688
	j	be_else.9366 #pc 26692
	nop #pc 26696
	fmv	%f0, l.6176  #0 pc 26700
	j	be_cont.9367 #pc 26704
	nop #pc 26708
be_else.9366: #pc 26712
	flw	%f0, 64(%x2)  #2072 pc 26712
be_cont.9367: #pc 26716
	flw	%f1, 8(%x2)  #2073 pc 26716
	fmul	%f0, %f1, %f0  #2073 pc 26720
	lw	%x6, 56(%x2)  #2073 pc 26724
	fsw	%f0, 72(%x2)  #2073 pc 26728
	sw	%x1, 80(%x2)  #2073 pc 26732
	addi	%x2, %x2, 84  #2073 pc 26736
	jal	%x1, o_diffuse.2647  #2073 pc 26740
	addi	%x2, %x2, -84  #2073 pc 26744
	lw	%x1, 80(%x2) #2073 pc 26748
	flw	%f1, 72(%x2)  #2073 pc 26752
	fmul	%f0, %f1, %f0  #2073 pc 26756
	lw	%x6, 4(%x2)  #2073 pc 26760
	lw	%x7, 0(%x2)  #2073 pc 26764
	j	vecaccum.2609  #2073 pc 26768
	nop #pc 26772
be_else.9364: #pc 26776
	ret #pc 26776
	nop #pc 26780
iter_trace_diffuse_rays.2913:  #pc 26784
	lw	%x10, 4(%x29)  #0 pc 26784
	bge	%x9, %x0, 12  #2081 pc 26788
	j	bge_else.9369 #pc 26792
	nop #pc 26796
	slli	%x11, %x9, 2  #2082 pc 26800
	add	%x31, %x11, %x6  #2082 pc 26804
	lw	%x11, 0(%x31)  #2082 pc 26808
	sw	%x8, 0(%x2)  #2082 pc 26812
	sw	%x29, 4(%x2)  #2082 pc 26816
	sw	%x10, 8(%x2)  #2082 pc 26820
	sw	%x6, 12(%x2)  #2082 pc 26824
	sw	%x9, 16(%x2)  #2082 pc 26828
	sw	%x7, 20(%x2)  #2082 pc 26832
	addi	%x6, %x11, 0  #0 pc 26836
	sw	%x1, 24(%x2)  #2082 pc 26840
	addi	%x2, %x2, 28  #2082 pc 26844
	jal	%x1, d_vec.2684  #2082 pc 26848
	addi	%x2, %x2, -28  #2082 pc 26852
	lw	%x1, 24(%x2) #2082 pc 26856
	lw	%x7, 20(%x2)  #2082 pc 26860
	sw	%x1, 24(%x2)  #2082 pc 26864
	addi	%x2, %x2, 28  #2082 pc 26868
	jal	%x1, veciprod.2601  #2082 pc 26872
	addi	%x2, %x2, -28  #2082 pc 26876
	lw	%x1, 24(%x2) #2082 pc 26880
	fsw	%f0, 24(%x2)  #2086 pc 26884
	sw	%x1, 32(%x2)  #2086 pc 26888
	addi	%x2, %x2, 36  #2086 pc 26892
	jal	%x1, fisneg.2483  #2086 pc 26896
	addi	%x2, %x2, -36  #2086 pc 26900
	lw	%x1, 32(%x2) #2086 pc 26904
	beq	%x6, %x0, 12  #2086 pc 26908
	j	be_else.9370 #pc 26912
	nop #pc 26916
	lw	%x6, 16(%x2)  #2089 pc 26920
	slli	%x7, %x6, 2  #2089 pc 26924
	lw	%x8, 12(%x2)  #2089 pc 26928
	add	%x31, %x7, %x8  #2089 pc 26932
	lw	%x7, 0(%x31)  #2089 pc 26936
	fmv	%f0, l.6764  #0 pc 26940
	flw	%f1, 24(%x2)  #2089 pc 26944
	fdiv	%f0, %f1, %f0  #2089 pc 26948
	lw	%x29, 8(%x2)  #2089 pc 26952
	addi	%x6, %x7, 0  #0 pc 26956
	sw	%x1, 32(%x2)  #2089 pc 26960
	lw	%x30, 0(%x29)  #2089 pc 26964
	addi	%x2, %x2, 36  #2089 pc 26968
	jalr	%x1, %x30, 0  #2089 pc 26972
	addi	%x2, %x2, -36  #2089 pc 26976
	lw	%x1, 32(%x2)  #2089 pc 26980
	j	be_cont.9371 #pc 26984
	nop #pc 26988
be_else.9370: #pc 26992
	lw	%x6, 16(%x2)  #2087 pc 26992
	addi	%x7, %x6, 1  #2087 pc 26996
	slli	%x7, %x7, 2  #2087 pc 27000
	lw	%x8, 12(%x2)  #2087 pc 27004
	add	%x31, %x7, %x8  #2087 pc 27008
	lw	%x7, 0(%x31)  #2087 pc 27012
	fmv	%f0, l.6761  #0 pc 27016
	flw	%f1, 24(%x2)  #2087 pc 27020
	fdiv	%f0, %f1, %f0  #2087 pc 27024
	lw	%x29, 8(%x2)  #2087 pc 27028
	addi	%x6, %x7, 0  #0 pc 27032
	sw	%x1, 32(%x2)  #2087 pc 27036
	lw	%x30, 0(%x29)  #2087 pc 27040
	addi	%x2, %x2, 36  #2087 pc 27044
	jalr	%x1, %x30, 0  #2087 pc 27048
	addi	%x2, %x2, -36  #2087 pc 27052
	lw	%x1, 32(%x2)  #2087 pc 27056
be_cont.9371: #pc 27060
	lw	%x6, 16(%x2)  #2091 pc 27060
	addi	%x9, %x6, -2  #2091 pc 27064
	lw	%x6, 12(%x2)  #2091 pc 27068
	lw	%x7, 20(%x2)  #2091 pc 27072
	lw	%x8, 0(%x2)  #2091 pc 27076
	lw	%x29, 4(%x2)  #2091 pc 27080
	lw	%x30, 0(%x29)  #2091 pc 27084
	jalr	%x0, %x30, 0  #2091 pc 27088
	nop #pc 27092
bge_else.9369: #pc 27096
	ret #pc 27096
	nop #pc 27100
trace_diffuse_rays.2918:  #pc 27104
	lw	%x9, 8(%x29)  #2097 pc 27104
	lw	%x10, 4(%x29)  #2097 pc 27108
	sw	%x8, 0(%x2)  #2097 pc 27112
	sw	%x7, 4(%x2)  #2097 pc 27116
	sw	%x6, 8(%x2)  #2097 pc 27120
	sw	%x10, 12(%x2)  #2097 pc 27124
	addi	%x6, %x8, 0  #0 pc 27128
	addi	%x29, %x9, 0  #0 pc 27132
	sw	%x1, 16(%x2)  #2097 pc 27136
	lw	%x30, 0(%x29)  #2097 pc 27140
	addi	%x2, %x2, 20  #2097 pc 27144
	jalr	%x1, %x30, 0  #2097 pc 27148
	addi	%x2, %x2, -20  #2097 pc 27152
	lw	%x1, 16(%x2)  #2097 pc 27156
	addi	%x9, %x0, 118  #0 pc 27160
	lw	%x6, 8(%x2)  #2101 pc 27164
	lw	%x7, 4(%x2)  #2101 pc 27168
	lw	%x8, 0(%x2)  #2101 pc 27172
	lw	%x29, 12(%x2)  #2101 pc 27176
	lw	%x30, 0(%x29)  #2101 pc 27180
	jalr	%x0, %x30, 0  #2101 pc 27184
	nop #pc 27188
trace_diffuse_ray_80percent.2922:  #pc 27192
	lw	%x9, 8(%x29)  #0 pc 27192
	lw	%x10, 4(%x29)  #0 pc 27196
	sw	%x8, 0(%x2)  #2108 pc 27200
	sw	%x7, 4(%x2)  #2108 pc 27204
	sw	%x9, 8(%x2)  #2108 pc 27208
	sw	%x10, 12(%x2)  #2108 pc 27212
	sw	%x6, 16(%x2)  #2108 pc 27216
	beq	%x6, %x0, 12  #2108 pc 27220
	j	be_else.9373 #pc 27224
	nop #pc 27228
	j	be_cont.9374 #pc 27232
	nop #pc 27236
be_else.9373: #pc 27240
	lw	%x11, 0(%x10)  #2109 pc 27240
	addi	%x6, %x11, 0  #0 pc 27244
	addi	%x29, %x9, 0  #0 pc 27248
	sw	%x1, 20(%x2)  #2109 pc 27252
	lw	%x30, 0(%x29)  #2109 pc 27256
	addi	%x2, %x2, 24  #2109 pc 27260
	jalr	%x1, %x30, 0  #2109 pc 27264
	addi	%x2, %x2, -24  #2109 pc 27268
	lw	%x1, 20(%x2)  #2109 pc 27272
be_cont.9374: #pc 27276
	lw	%x6, 16(%x2)  #2112 pc 27276
	addi	%x31, %x0, 1  #pc 27280
	beq	%x6, %x31, 12  #2112 pc 27284
	j	be_else.9375 #pc 27288
	nop #pc 27292
	j	be_cont.9376 #pc 27296
	nop #pc 27300
be_else.9375: #pc 27304
	lw	%x7, 12(%x2)  #2113 pc 27304
	lw	%x8, 4(%x7)  #2113 pc 27308
	lw	%x9, 4(%x2)  #2113 pc 27312
	lw	%x10, 0(%x2)  #2113 pc 27316
	lw	%x29, 8(%x2)  #2113 pc 27320
	addi	%x7, %x9, 0  #0 pc 27324
	addi	%x6, %x8, 0  #0 pc 27328
	addi	%x8, %x10, 0  #0 pc 27332
	sw	%x1, 20(%x2)  #2113 pc 27336
	lw	%x30, 0(%x29)  #2113 pc 27340
	addi	%x2, %x2, 24  #2113 pc 27344
	jalr	%x1, %x30, 0  #2113 pc 27348
	addi	%x2, %x2, -24  #2113 pc 27352
	lw	%x1, 20(%x2)  #2113 pc 27356
be_cont.9376: #pc 27360
	lw	%x6, 16(%x2)  #2116 pc 27360
	addi	%x31, %x0, 2  #pc 27364
	beq	%x6, %x31, 12  #2116 pc 27368
	j	be_else.9377 #pc 27372
	nop #pc 27376
	j	be_cont.9378 #pc 27380
	nop #pc 27384
be_else.9377: #pc 27388
	lw	%x7, 12(%x2)  #2117 pc 27388
	lw	%x8, 8(%x7)  #2117 pc 27392
	lw	%x9, 4(%x2)  #2117 pc 27396
	lw	%x10, 0(%x2)  #2117 pc 27400
	lw	%x29, 8(%x2)  #2117 pc 27404
	addi	%x7, %x9, 0  #0 pc 27408
	addi	%x6, %x8, 0  #0 pc 27412
	addi	%x8, %x10, 0  #0 pc 27416
	sw	%x1, 20(%x2)  #2117 pc 27420
	lw	%x30, 0(%x29)  #2117 pc 27424
	addi	%x2, %x2, 24  #2117 pc 27428
	jalr	%x1, %x30, 0  #2117 pc 27432
	addi	%x2, %x2, -24  #2117 pc 27436
	lw	%x1, 20(%x2)  #2117 pc 27440
be_cont.9378: #pc 27444
	lw	%x6, 16(%x2)  #2120 pc 27444
	addi	%x31, %x0, 3  #pc 27448
	beq	%x6, %x31, 12  #2120 pc 27452
	j	be_else.9379 #pc 27456
	nop #pc 27460
	j	be_cont.9380 #pc 27464
	nop #pc 27468
be_else.9379: #pc 27472
	lw	%x7, 12(%x2)  #2121 pc 27472
	lw	%x8, 12(%x7)  #2121 pc 27476
	lw	%x9, 4(%x2)  #2121 pc 27480
	lw	%x10, 0(%x2)  #2121 pc 27484
	lw	%x29, 8(%x2)  #2121 pc 27488
	addi	%x7, %x9, 0  #0 pc 27492
	addi	%x6, %x8, 0  #0 pc 27496
	addi	%x8, %x10, 0  #0 pc 27500
	sw	%x1, 20(%x2)  #2121 pc 27504
	lw	%x30, 0(%x29)  #2121 pc 27508
	addi	%x2, %x2, 24  #2121 pc 27512
	jalr	%x1, %x30, 0  #2121 pc 27516
	addi	%x2, %x2, -24  #2121 pc 27520
	lw	%x1, 20(%x2)  #2121 pc 27524
be_cont.9380: #pc 27528
	lw	%x6, 16(%x2)  #2124 pc 27528
	addi	%x31, %x0, 4  #pc 27532
	beq	%x6, %x31, 12  #2124 pc 27536
	j	be_else.9381 #pc 27540
	nop #pc 27544
	ret #pc 27548
	nop #pc 27552
be_else.9381: #pc 27556
	lw	%x6, 12(%x2)  #2125 pc 27556
	lw	%x6, 16(%x6)  #2125 pc 27560
	lw	%x7, 4(%x2)  #2125 pc 27564
	lw	%x8, 0(%x2)  #2125 pc 27568
	lw	%x29, 8(%x2)  #2125 pc 27572
	lw	%x30, 0(%x29)  #2125 pc 27576
	jalr	%x0, %x30, 0  #2125 pc 27580
	nop #pc 27584
calc_diffuse_using_1point.2926:  #pc 27588
	lw	%x8, 12(%x29)  #2134 pc 27588
	lw	%x9, 8(%x29)  #2134 pc 27592
	lw	%x10, 4(%x29)  #2134 pc 27596
	sw	%x9, 0(%x2)  #2134 pc 27600
	sw	%x8, 4(%x2)  #2134 pc 27604
	sw	%x10, 8(%x2)  #2134 pc 27608
	sw	%x7, 12(%x2)  #2134 pc 27612
	sw	%x6, 16(%x2)  #2134 pc 27616
	sw	%x1, 20(%x2)  #2134 pc 27620
	addi	%x2, %x2, 24  #2134 pc 27624
	jal	%x1, p_received_ray_20percent.2675  #2134 pc 27628
	addi	%x2, %x2, -24  #2134 pc 27632
	lw	%x1, 20(%x2) #2134 pc 27636
	lw	%x7, 16(%x2)  #2135 pc 27640
	sw	%x6, 20(%x2)  #2135 pc 27644
	addi	%x6, %x7, 0  #0 pc 27648
	sw	%x1, 24(%x2)  #2135 pc 27652
	addi	%x2, %x2, 28  #2135 pc 27656
	jal	%x1, p_nvectors.2682  #2135 pc 27660
	addi	%x2, %x2, -28  #2135 pc 27664
	lw	%x1, 24(%x2) #2135 pc 27668
	lw	%x7, 16(%x2)  #2136 pc 27672
	sw	%x6, 24(%x2)  #2136 pc 27676
	addi	%x6, %x7, 0  #0 pc 27680
	sw	%x1, 28(%x2)  #2136 pc 27684
	addi	%x2, %x2, 32  #2136 pc 27688
	jal	%x1, p_intersection_points.2667  #2136 pc 27692
	addi	%x2, %x2, -32  #2136 pc 27696
	lw	%x1, 28(%x2) #2136 pc 27700
	lw	%x7, 16(%x2)  #2137 pc 27704
	sw	%x6, 28(%x2)  #2137 pc 27708
	addi	%x6, %x7, 0  #0 pc 27712
	sw	%x1, 32(%x2)  #2137 pc 27716
	addi	%x2, %x2, 36  #2137 pc 27720
	jal	%x1, p_energy.2673  #2137 pc 27724
	addi	%x2, %x2, -36  #2137 pc 27728
	lw	%x1, 32(%x2) #2137 pc 27732
	lw	%x7, 12(%x2)  #2139 pc 27736
	slli	%x8, %x7, 2  #2139 pc 27740
	lw	%x9, 20(%x2)  #2139 pc 27744
	add	%x31, %x8, %x9  #2139 pc 27748
	lw	%x8, 0(%x31)  #2139 pc 27752
	lw	%x9, 8(%x2)  #2139 pc 27756
	sw	%x6, 32(%x2)  #2139 pc 27760
	addi	%x7, %x8, 0  #0 pc 27764
	addi	%x6, %x9, 0  #0 pc 27768
	sw	%x1, 36(%x2)  #2139 pc 27772
	addi	%x2, %x2, 40  #2139 pc 27776
	jal	%x1, veccpy.2595  #2139 pc 27780
	addi	%x2, %x2, -40  #2139 pc 27784
	lw	%x1, 36(%x2) #2139 pc 27788
	lw	%x6, 16(%x2)  #2141 pc 27792
	sw	%x1, 36(%x2)  #2141 pc 27796
	addi	%x2, %x2, 40  #2141 pc 27800
	jal	%x1, p_group_id.2677  #2141 pc 27804
	addi	%x2, %x2, -40  #2141 pc 27808
	lw	%x1, 36(%x2) #2141 pc 27812
	lw	%x7, 12(%x2)  #2142 pc 27816
	slli	%x8, %x7, 2  #2142 pc 27820
	lw	%x9, 24(%x2)  #2142 pc 27824
	add	%x31, %x8, %x9  #2142 pc 27828
	lw	%x8, 0(%x31)  #2142 pc 27832
	slli	%x9, %x7, 2  #2143 pc 27836
	lw	%x10, 28(%x2)  #2143 pc 27840
	add	%x31, %x9, %x10  #2143 pc 27844
	lw	%x9, 0(%x31)  #2143 pc 27848
	lw	%x29, 4(%x2)  #2140 pc 27852
	addi	%x7, %x8, 0  #0 pc 27856
	addi	%x8, %x9, 0  #0 pc 27860
	sw	%x1, 36(%x2)  #2140 pc 27864
	lw	%x30, 0(%x29)  #2140 pc 27868
	addi	%x2, %x2, 40  #2140 pc 27872
	jalr	%x1, %x30, 0  #2140 pc 27876
	addi	%x2, %x2, -40  #2140 pc 27880
	lw	%x1, 36(%x2)  #2140 pc 27884
	lw	%x6, 12(%x2)  #2144 pc 27888
	slli	%x6, %x6, 2  #2144 pc 27892
	lw	%x7, 32(%x2)  #2144 pc 27896
	add	%x31, %x6, %x7  #2144 pc 27900
	lw	%x7, 0(%x31)  #2144 pc 27904
	lw	%x6, 0(%x2)  #2144 pc 27908
	lw	%x8, 8(%x2)  #2144 pc 27912
	j	vecaccumv.2619  #2144 pc 27916
	nop #pc 27920
calc_diffuse_using_5points.2929:  #pc 27924
	lw	%x11, 8(%x29)  #0 pc 27924
	lw	%x12, 4(%x29)  #0 pc 27928
	slli	%x13, %x6, 2  #2153 pc 27932
	add	%x31, %x13, %x7  #2153 pc 27936
	lw	%x7, 0(%x31)  #2153 pc 27940
	sw	%x11, 0(%x2)  #2153 pc 27944
	sw	%x12, 4(%x2)  #2153 pc 27948
	sw	%x10, 8(%x2)  #2153 pc 27952
	sw	%x9, 12(%x2)  #2153 pc 27956
	sw	%x8, 16(%x2)  #2153 pc 27960
	sw	%x6, 20(%x2)  #2153 pc 27964
	addi	%x6, %x7, 0  #0 pc 27968
	sw	%x1, 24(%x2)  #2153 pc 27972
	addi	%x2, %x2, 28  #2153 pc 27976
	jal	%x1, p_received_ray_20percent.2675  #2153 pc 27980
	addi	%x2, %x2, -28  #2153 pc 27984
	lw	%x1, 24(%x2) #2153 pc 27988
	lw	%x7, 20(%x2)  #2154 pc 27992
	addi	%x8, %x7, -1  #2154 pc 27996
	slli	%x8, %x8, 2  #2154 pc 28000
	lw	%x9, 16(%x2)  #2154 pc 28004
	add	%x31, %x8, %x9  #2154 pc 28008
	lw	%x8, 0(%x31)  #2154 pc 28012
	sw	%x6, 24(%x2)  #2154 pc 28016
	addi	%x6, %x8, 0  #0 pc 28020
	sw	%x1, 28(%x2)  #2154 pc 28024
	addi	%x2, %x2, 32  #2154 pc 28028
	jal	%x1, p_received_ray_20percent.2675  #2154 pc 28032
	addi	%x2, %x2, -32  #2154 pc 28036
	lw	%x1, 28(%x2) #2154 pc 28040
	lw	%x7, 20(%x2)  #2155 pc 28044
	slli	%x8, %x7, 2  #2155 pc 28048
	lw	%x9, 16(%x2)  #2155 pc 28052
	add	%x31, %x8, %x9  #2155 pc 28056
	lw	%x8, 0(%x31)  #2155 pc 28060
	sw	%x6, 28(%x2)  #2155 pc 28064
	addi	%x6, %x8, 0  #0 pc 28068
	sw	%x1, 32(%x2)  #2155 pc 28072
	addi	%x2, %x2, 36  #2155 pc 28076
	jal	%x1, p_received_ray_20percent.2675  #2155 pc 28080
	addi	%x2, %x2, -36  #2155 pc 28084
	lw	%x1, 32(%x2) #2155 pc 28088
	lw	%x7, 20(%x2)  #2156 pc 28092
	addi	%x8, %x7, 1  #2156 pc 28096
	slli	%x8, %x8, 2  #2156 pc 28100
	lw	%x9, 16(%x2)  #2156 pc 28104
	add	%x31, %x8, %x9  #2156 pc 28108
	lw	%x8, 0(%x31)  #2156 pc 28112
	sw	%x6, 32(%x2)  #2156 pc 28116
	addi	%x6, %x8, 0  #0 pc 28120
	sw	%x1, 36(%x2)  #2156 pc 28124
	addi	%x2, %x2, 40  #2156 pc 28128
	jal	%x1, p_received_ray_20percent.2675  #2156 pc 28132
	addi	%x2, %x2, -40  #2156 pc 28136
	lw	%x1, 36(%x2) #2156 pc 28140
	lw	%x7, 20(%x2)  #2157 pc 28144
	slli	%x8, %x7, 2  #2157 pc 28148
	lw	%x9, 12(%x2)  #2157 pc 28152
	add	%x31, %x8, %x9  #2157 pc 28156
	lw	%x8, 0(%x31)  #2157 pc 28160
	sw	%x6, 36(%x2)  #2157 pc 28164
	addi	%x6, %x8, 0  #0 pc 28168
	sw	%x1, 40(%x2)  #2157 pc 28172
	addi	%x2, %x2, 44  #2157 pc 28176
	jal	%x1, p_received_ray_20percent.2675  #2157 pc 28180
	addi	%x2, %x2, -44  #2157 pc 28184
	lw	%x1, 40(%x2) #2157 pc 28188
	lw	%x7, 8(%x2)  #2159 pc 28192
	slli	%x8, %x7, 2  #2159 pc 28196
	lw	%x9, 24(%x2)  #2159 pc 28200
	add	%x31, %x8, %x9  #2159 pc 28204
	lw	%x8, 0(%x31)  #2159 pc 28208
	lw	%x9, 4(%x2)  #2159 pc 28212
	sw	%x6, 40(%x2)  #2159 pc 28216
	addi	%x7, %x8, 0  #0 pc 28220
	addi	%x6, %x9, 0  #0 pc 28224
	sw	%x1, 44(%x2)  #2159 pc 28228
	addi	%x2, %x2, 48  #2159 pc 28232
	jal	%x1, veccpy.2595  #2159 pc 28236
	addi	%x2, %x2, -48  #2159 pc 28240
	lw	%x1, 44(%x2) #2159 pc 28244
	lw	%x6, 8(%x2)  #2160 pc 28248
	slli	%x7, %x6, 2  #2160 pc 28252
	lw	%x8, 28(%x2)  #2160 pc 28256
	add	%x31, %x7, %x8  #2160 pc 28260
	lw	%x7, 0(%x31)  #2160 pc 28264
	lw	%x8, 4(%x2)  #2160 pc 28268
	addi	%x6, %x8, 0  #0 pc 28272
	sw	%x1, 44(%x2)  #2160 pc 28276
	addi	%x2, %x2, 48  #2160 pc 28280
	jal	%x1, vecadd.2613  #2160 pc 28284
	addi	%x2, %x2, -48  #2160 pc 28288
	lw	%x1, 44(%x2) #2160 pc 28292
	lw	%x6, 8(%x2)  #2161 pc 28296
	slli	%x7, %x6, 2  #2161 pc 28300
	lw	%x8, 32(%x2)  #2161 pc 28304
	add	%x31, %x7, %x8  #2161 pc 28308
	lw	%x7, 0(%x31)  #2161 pc 28312
	lw	%x8, 4(%x2)  #2161 pc 28316
	addi	%x6, %x8, 0  #0 pc 28320
	sw	%x1, 44(%x2)  #2161 pc 28324
	addi	%x2, %x2, 48  #2161 pc 28328
	jal	%x1, vecadd.2613  #2161 pc 28332
	addi	%x2, %x2, -48  #2161 pc 28336
	lw	%x1, 44(%x2) #2161 pc 28340
	lw	%x6, 8(%x2)  #2162 pc 28344
	slli	%x7, %x6, 2  #2162 pc 28348
	lw	%x8, 36(%x2)  #2162 pc 28352
	add	%x31, %x7, %x8  #2162 pc 28356
	lw	%x7, 0(%x31)  #2162 pc 28360
	lw	%x8, 4(%x2)  #2162 pc 28364
	addi	%x6, %x8, 0  #0 pc 28368
	sw	%x1, 44(%x2)  #2162 pc 28372
	addi	%x2, %x2, 48  #2162 pc 28376
	jal	%x1, vecadd.2613  #2162 pc 28380
	addi	%x2, %x2, -48  #2162 pc 28384
	lw	%x1, 44(%x2) #2162 pc 28388
	lw	%x6, 8(%x2)  #2163 pc 28392
	slli	%x7, %x6, 2  #2163 pc 28396
	lw	%x8, 40(%x2)  #2163 pc 28400
	add	%x31, %x7, %x8  #2163 pc 28404
	lw	%x7, 0(%x31)  #2163 pc 28408
	lw	%x8, 4(%x2)  #2163 pc 28412
	addi	%x6, %x8, 0  #0 pc 28416
	sw	%x1, 44(%x2)  #2163 pc 28420
	addi	%x2, %x2, 48  #2163 pc 28424
	jal	%x1, vecadd.2613  #2163 pc 28428
	addi	%x2, %x2, -48  #2163 pc 28432
	lw	%x1, 44(%x2) #2163 pc 28436
	lw	%x6, 20(%x2)  #2165 pc 28440
	slli	%x6, %x6, 2  #2165 pc 28444
	lw	%x7, 16(%x2)  #2165 pc 28448
	add	%x31, %x6, %x7  #2165 pc 28452
	lw	%x6, 0(%x31)  #2165 pc 28456
	sw	%x1, 44(%x2)  #2165 pc 28460
	addi	%x2, %x2, 48  #2165 pc 28464
	jal	%x1, p_energy.2673  #2165 pc 28468
	addi	%x2, %x2, -48  #2165 pc 28472
	lw	%x1, 44(%x2) #2165 pc 28476
	lw	%x7, 8(%x2)  #2166 pc 28480
	slli	%x7, %x7, 2  #2166 pc 28484
	add	%x31, %x7, %x6  #2166 pc 28488
	lw	%x7, 0(%x31)  #2166 pc 28492
	lw	%x6, 0(%x2)  #2166 pc 28496
	lw	%x8, 4(%x2)  #2166 pc 28500
	j	vecaccumv.2619  #2166 pc 28504
	nop #pc 28508
do_without_neighbors.2935:  #pc 28512
	lw	%x8, 4(%x29)  #0 pc 28512
	addi	%x31, %x0, 4  #pc 28516
	bge	%x31, %x7, 12  #2172 pc 28520
	j	ble_else.9383 #pc 28524
	nop #pc 28528
	sw	%x29, 0(%x2)  #2174 pc 28532
	sw	%x8, 4(%x2)  #2174 pc 28536
	sw	%x6, 8(%x2)  #2174 pc 28540
	sw	%x7, 12(%x2)  #2174 pc 28544
	sw	%x1, 16(%x2)  #2174 pc 28548
	addi	%x2, %x2, 20  #2174 pc 28552
	jal	%x1, p_surface_ids.2669  #2174 pc 28556
	addi	%x2, %x2, -20  #2174 pc 28560
	lw	%x1, 16(%x2) #2174 pc 28564
	lw	%x7, 12(%x2)  #2175 pc 28568
	slli	%x8, %x7, 2  #2175 pc 28572
	add	%x31, %x8, %x6  #2175 pc 28576
	lw	%x6, 0(%x31)  #2175 pc 28580
	bge	%x6, %x0, 12  #2175 pc 28584
	j	bge_else.9384 #pc 28588
	nop #pc 28592
	lw	%x6, 8(%x2)  #2176 pc 28596
	sw	%x1, 16(%x2)  #2176 pc 28600
	addi	%x2, %x2, 20  #2176 pc 28604
	jal	%x1, p_calc_diffuse.2671  #2176 pc 28608
	addi	%x2, %x2, -20  #2176 pc 28612
	lw	%x1, 16(%x2) #2176 pc 28616
	lw	%x7, 12(%x2)  #2177 pc 28620
	slli	%x8, %x7, 2  #2177 pc 28624
	add	%x31, %x8, %x6  #2177 pc 28628
	lw	%x6, 0(%x31)  #2177 pc 28632
	beq	%x6, %x0, 12  #2177 pc 28636
	j	be_else.9385 #pc 28640
	nop #pc 28644
	j	be_cont.9386 #pc 28648
	nop #pc 28652
be_else.9385: #pc 28656
	lw	%x6, 8(%x2)  #2178 pc 28656
	lw	%x29, 4(%x2)  #2178 pc 28660
	sw	%x1, 16(%x2)  #2178 pc 28664
	lw	%x30, 0(%x29)  #2178 pc 28668
	addi	%x2, %x2, 20  #2178 pc 28672
	jalr	%x1, %x30, 0  #2178 pc 28676
	addi	%x2, %x2, -20  #2178 pc 28680
	lw	%x1, 16(%x2)  #2178 pc 28684
be_cont.9386: #pc 28688
	lw	%x6, 12(%x2)  #2180 pc 28688
	addi	%x7, %x6, 1  #2180 pc 28692
	lw	%x6, 8(%x2)  #2180 pc 28696
	lw	%x29, 0(%x2)  #2180 pc 28700
	lw	%x30, 0(%x29)  #2180 pc 28704
	jalr	%x0, %x30, 0  #2180 pc 28708
	nop #pc 28712
bge_else.9384: #pc 28716
	ret #pc 28716
	nop #pc 28720
ble_else.9383: #pc 28724
	ret #pc 28724
	nop #pc 28728
neighbors_exist.2938:  #pc 28732
	lw	%x8, 4(%x29)  #0 pc 28732
	lw	%x9, 4(%x8)  #2187 pc 28736
	addi	%x10, %x7, 1  #2187 pc 28740
	bge	%x10, %x9, 12  #2187 pc 28744
	j	ble_else.9389 #pc 28748
	nop #pc 28752
	addi	%x6, %x0, 0  #0 pc 28756
	ret #pc 28760
	nop #pc 28764
ble_else.9389: #pc 28768
	bge	%x0, %x7, 12  #2188 pc 28768
	j	ble_else.9390 #pc 28772
	nop #pc 28776
	addi	%x6, %x0, 0  #0 pc 28780
	ret #pc 28784
	nop #pc 28788
ble_else.9390: #pc 28792
	lw	%x7, 0(%x8)  #2189 pc 28792
	addi	%x8, %x6, 1  #2189 pc 28796
	bge	%x8, %x7, 12  #2189 pc 28800
	j	ble_else.9391 #pc 28804
	nop #pc 28808
	addi	%x6, %x0, 0  #0 pc 28812
	ret #pc 28816
	nop #pc 28820
ble_else.9391: #pc 28824
	bge	%x0, %x6, 12  #2190 pc 28824
	j	ble_else.9392 #pc 28828
	nop #pc 28832
	addi	%x6, %x0, 0  #0 pc 28836
	ret #pc 28840
	nop #pc 28844
ble_else.9392: #pc 28848
	addi	%x6, %x0, 1  #0 pc 28848
	ret #pc 28852
	nop #pc 28856
get_surface_id.2942:  #pc 28860
	sw	%x7, 0(%x2)  #2199 pc 28860
	sw	%x1, 4(%x2)  #2199 pc 28864
	addi	%x2, %x2, 8  #2199 pc 28868
	jal	%x1, p_surface_ids.2669  #2199 pc 28872
	addi	%x2, %x2, -8  #2199 pc 28876
	lw	%x1, 4(%x2) #2199 pc 28880
	lw	%x7, 0(%x2)  #2200 pc 28884
	slli	%x7, %x7, 2  #2200 pc 28888
	add	%x31, %x7, %x6  #2200 pc 28892
	lw	%x6, 0(%x31)  #2200 pc 28896
	ret #pc 28900
	nop #pc 28904
neighbors_are_available.2945:  #pc 28908
	slli	%x11, %x6, 2  #2206 pc 28908
	add	%x31, %x11, %x8  #2206 pc 28912
	lw	%x11, 0(%x31)  #2206 pc 28916
	sw	%x8, 0(%x2)  #2206 pc 28920
	sw	%x9, 4(%x2)  #2206 pc 28924
	sw	%x10, 8(%x2)  #2206 pc 28928
	sw	%x7, 12(%x2)  #2206 pc 28932
	sw	%x6, 16(%x2)  #2206 pc 28936
	addi	%x7, %x10, 0  #0 pc 28940
	addi	%x6, %x11, 0  #0 pc 28944
	sw	%x1, 20(%x2)  #2206 pc 28948
	addi	%x2, %x2, 24  #2206 pc 28952
	jal	%x1, get_surface_id.2942  #2206 pc 28956
	addi	%x2, %x2, -24  #2206 pc 28960
	lw	%x1, 20(%x2) #2206 pc 28964
	lw	%x7, 16(%x2)  #2208 pc 28968
	slli	%x8, %x7, 2  #2208 pc 28972
	lw	%x9, 12(%x2)  #2208 pc 28976
	add	%x31, %x8, %x9  #2208 pc 28980
	lw	%x8, 0(%x31)  #2208 pc 28984
	lw	%x9, 8(%x2)  #2208 pc 28988
	sw	%x6, 20(%x2)  #2208 pc 28992
	addi	%x7, %x9, 0  #0 pc 28996
	addi	%x6, %x8, 0  #0 pc 29000
	sw	%x1, 24(%x2)  #2208 pc 29004
	addi	%x2, %x2, 28  #2208 pc 29008
	jal	%x1, get_surface_id.2942  #2208 pc 29012
	addi	%x2, %x2, -28  #2208 pc 29016
	lw	%x1, 24(%x2) #2208 pc 29020
	lw	%x7, 20(%x2)  #2208 pc 29024
	beq	%x6, %x7, 12  #2208 pc 29028
	j	be_else.9393 #pc 29032
	nop #pc 29036
	lw	%x6, 16(%x2)  #2209 pc 29040
	slli	%x8, %x6, 2  #2209 pc 29044
	lw	%x9, 4(%x2)  #2209 pc 29048
	add	%x31, %x8, %x9  #2209 pc 29052
	lw	%x8, 0(%x31)  #2209 pc 29056
	lw	%x9, 8(%x2)  #2209 pc 29060
	addi	%x7, %x9, 0  #0 pc 29064
	addi	%x6, %x8, 0  #0 pc 29068
	sw	%x1, 24(%x2)  #2209 pc 29072
	addi	%x2, %x2, 28  #2209 pc 29076
	jal	%x1, get_surface_id.2942  #2209 pc 29080
	addi	%x2, %x2, -28  #2209 pc 29084
	lw	%x1, 24(%x2) #2209 pc 29088
	lw	%x7, 20(%x2)  #2209 pc 29092
	beq	%x6, %x7, 12  #2209 pc 29096
	j	be_else.9394 #pc 29100
	nop #pc 29104
	lw	%x6, 16(%x2)  #2210 pc 29108
	addi	%x8, %x6, -1  #2210 pc 29112
	slli	%x8, %x8, 2  #2210 pc 29116
	lw	%x9, 0(%x2)  #2210 pc 29120
	add	%x31, %x8, %x9  #2210 pc 29124
	lw	%x8, 0(%x31)  #2210 pc 29128
	lw	%x10, 8(%x2)  #2210 pc 29132
	addi	%x7, %x10, 0  #0 pc 29136
	addi	%x6, %x8, 0  #0 pc 29140
	sw	%x1, 24(%x2)  #2210 pc 29144
	addi	%x2, %x2, 28  #2210 pc 29148
	jal	%x1, get_surface_id.2942  #2210 pc 29152
	addi	%x2, %x2, -28  #2210 pc 29156
	lw	%x1, 24(%x2) #2210 pc 29160
	lw	%x7, 20(%x2)  #2210 pc 29164
	beq	%x6, %x7, 12  #2210 pc 29168
	j	be_else.9395 #pc 29172
	nop #pc 29176
	lw	%x6, 16(%x2)  #2211 pc 29180
	addi	%x6, %x6, 1  #2211 pc 29184
	slli	%x6, %x6, 2  #2211 pc 29188
	lw	%x8, 0(%x2)  #2211 pc 29192
	add	%x31, %x6, %x8  #2211 pc 29196
	lw	%x6, 0(%x31)  #2211 pc 29200
	lw	%x8, 8(%x2)  #2211 pc 29204
	addi	%x7, %x8, 0  #0 pc 29208
	sw	%x1, 24(%x2)  #2211 pc 29212
	addi	%x2, %x2, 28  #2211 pc 29216
	jal	%x1, get_surface_id.2942  #2211 pc 29220
	addi	%x2, %x2, -28  #2211 pc 29224
	lw	%x1, 24(%x2) #2211 pc 29228
	lw	%x7, 20(%x2)  #2211 pc 29232
	beq	%x6, %x7, 12  #2211 pc 29236
	j	be_else.9396 #pc 29240
	nop #pc 29244
	addi	%x6, %x0, 1  #0 pc 29248
	ret #pc 29252
	nop #pc 29256
be_else.9396: #pc 29260
	addi	%x6, %x0, 0  #0 pc 29260
	ret #pc 29264
	nop #pc 29268
be_else.9395: #pc 29272
	addi	%x6, %x0, 0  #0 pc 29272
	ret #pc 29276
	nop #pc 29280
be_else.9394: #pc 29284
	addi	%x6, %x0, 0  #0 pc 29284
	ret #pc 29288
	nop #pc 29292
be_else.9393: #pc 29296
	addi	%x6, %x0, 0  #0 pc 29296
	ret #pc 29300
	nop #pc 29304
try_exploit_neighbors.2951:  #pc 29308
	lw	%x12, 8(%x29)  #2224 pc 29308
	lw	%x13, 4(%x29)  #2224 pc 29312
	slli	%x14, %x6, 2  #2224 pc 29316
	add	%x31, %x14, %x9  #2224 pc 29320
	lw	%x14, 0(%x31)  #2224 pc 29324
	addi	%x31, %x0, 4  #pc 29328
	bge	%x31, %x11, 12  #2225 pc 29332
	j	ble_else.9397 #pc 29336
	nop #pc 29340
	sw	%x7, 0(%x2)  #2228 pc 29344
	sw	%x29, 4(%x2)  #2228 pc 29348
	sw	%x13, 8(%x2)  #2228 pc 29352
	sw	%x14, 12(%x2)  #2228 pc 29356
	sw	%x12, 16(%x2)  #2228 pc 29360
	sw	%x11, 20(%x2)  #2228 pc 29364
	sw	%x10, 24(%x2)  #2228 pc 29368
	sw	%x9, 28(%x2)  #2228 pc 29372
	sw	%x8, 32(%x2)  #2228 pc 29376
	sw	%x6, 36(%x2)  #2228 pc 29380
	addi	%x7, %x11, 0  #0 pc 29384
	addi	%x6, %x14, 0  #0 pc 29388
	sw	%x1, 40(%x2)  #2228 pc 29392
	addi	%x2, %x2, 44  #2228 pc 29396
	jal	%x1, get_surface_id.2942  #2228 pc 29400
	addi	%x2, %x2, -44  #2228 pc 29404
	lw	%x1, 40(%x2) #2228 pc 29408
	bge	%x6, %x0, 12  #2228 pc 29412
	j	bge_else.9398 #pc 29416
	nop #pc 29420
	lw	%x6, 36(%x2)  #2230 pc 29424
	lw	%x7, 32(%x2)  #2230 pc 29428
	lw	%x8, 28(%x2)  #2230 pc 29432
	lw	%x9, 24(%x2)  #2230 pc 29436
	lw	%x10, 20(%x2)  #2230 pc 29440
	sw	%x1, 40(%x2)  #2230 pc 29444
	addi	%x2, %x2, 44  #2230 pc 29448
	jal	%x1, neighbors_are_available.2945  #2230 pc 29452
	addi	%x2, %x2, -44  #2230 pc 29456
	lw	%x1, 40(%x2) #2230 pc 29460
	beq	%x6, %x0, 12  #2230 pc 29464
	j	be_else.9399 #pc 29468
	nop #pc 29472
	lw	%x6, 36(%x2)  #2242 pc 29476
	slli	%x6, %x6, 2  #2242 pc 29480
	lw	%x7, 28(%x2)  #2242 pc 29484
	add	%x31, %x6, %x7  #2242 pc 29488
	lw	%x6, 0(%x31)  #2242 pc 29492
	lw	%x7, 20(%x2)  #2242 pc 29496
	lw	%x29, 16(%x2)  #2242 pc 29500
	lw	%x30, 0(%x29)  #2242 pc 29504
	jalr	%x0, %x30, 0  #2242 pc 29508
	nop #pc 29512
be_else.9399: #pc 29516
	lw	%x6, 12(%x2)  #2233 pc 29516
	sw	%x1, 40(%x2)  #2233 pc 29520
	addi	%x2, %x2, 44  #2233 pc 29524
	jal	%x1, p_calc_diffuse.2671  #2233 pc 29528
	addi	%x2, %x2, -44  #2233 pc 29532
	lw	%x1, 40(%x2) #2233 pc 29536
	lw	%x10, 20(%x2)  #2234 pc 29540
	slli	%x7, %x10, 2  #2234 pc 29544
	add	%x31, %x7, %x6  #2234 pc 29548
	lw	%x6, 0(%x31)  #2234 pc 29552
	beq	%x6, %x0, 12  #2234 pc 29556
	j	be_else.9400 #pc 29560
	nop #pc 29564
	j	be_cont.9401 #pc 29568
	nop #pc 29572
be_else.9400: #pc 29576
	lw	%x6, 36(%x2)  #2235 pc 29576
	lw	%x7, 32(%x2)  #2235 pc 29580
	lw	%x8, 28(%x2)  #2235 pc 29584
	lw	%x9, 24(%x2)  #2235 pc 29588
	lw	%x29, 8(%x2)  #2235 pc 29592
	sw	%x1, 40(%x2)  #2235 pc 29596
	lw	%x30, 0(%x29)  #2235 pc 29600
	addi	%x2, %x2, 44  #2235 pc 29604
	jalr	%x1, %x30, 0  #2235 pc 29608
	addi	%x2, %x2, -44  #2235 pc 29612
	lw	%x1, 40(%x2)  #2235 pc 29616
be_cont.9401: #pc 29620
	lw	%x6, 20(%x2)  #2239 pc 29620
	addi	%x11, %x6, 1  #2239 pc 29624
	lw	%x6, 36(%x2)  #2239 pc 29628
	lw	%x7, 0(%x2)  #2239 pc 29632
	lw	%x8, 32(%x2)  #2239 pc 29636
	lw	%x9, 28(%x2)  #2239 pc 29640
	lw	%x10, 24(%x2)  #2239 pc 29644
	lw	%x29, 4(%x2)  #2239 pc 29648
	lw	%x30, 0(%x29)  #2239 pc 29652
	jalr	%x0, %x30, 0  #2239 pc 29656
	nop #pc 29660
bge_else.9398: #pc 29664
	ret #pc 29664
	nop #pc 29668
ble_else.9397: #pc 29672
	ret #pc 29672
	nop #pc 29676
write_ppm_header.2958:  #pc 29680
	lw	%x7, 4(%x29)  #0 pc 29680
	addi	%x8, %x0, 80  #0 pc 29684
	sw	%x7, 0(%x2)  #2252 pc 29688
	sw	%x6, 4(%x2)  #2252 pc 29692
	addi	%x6, %x8, 0  #0 pc 29696
	sw	%x1, 8(%x2)  #2252 pc 29700
	addi	%x2, %x2, 12  #2252 pc 29704
	jal	%x1, min_caml_print_char  #2252 pc 29708
	addi	%x2, %x2, -12  #2252 pc 29712
	lw	%x1, 8(%x2) #2252 pc 29716
	lw	%x6, 4(%x2)  #2253 pc 29720
	addi	%x6, %x6, 48  #2253 pc 29724
	sw	%x1, 8(%x2)  #2253 pc 29728
	addi	%x2, %x2, 12  #2253 pc 29732
	jal	%x1, min_caml_print_char  #2253 pc 29736
	addi	%x2, %x2, -12  #2253 pc 29740
	lw	%x1, 8(%x2) #2253 pc 29744
	addi	%x6, %x0, 10  #0 pc 29748
	sw	%x1, 8(%x2)  #2254 pc 29752
	addi	%x2, %x2, 12  #2254 pc 29756
	jal	%x1, min_caml_print_char  #2254 pc 29760
	addi	%x2, %x2, -12  #2254 pc 29764
	lw	%x1, 8(%x2) #2254 pc 29768
	lw	%x6, 0(%x2)  #2255 pc 29772
	lw	%x7, 0(%x6)  #2255 pc 29776
	addi	%x6, %x7, 0  #0 pc 29780
	sw	%x1, 8(%x2)  #2255 pc 29784
	addi	%x2, %x2, 12  #2255 pc 29788
	jal	%x1, print_int.2524  #2255 pc 29792
	addi	%x2, %x2, -12  #2255 pc 29796
	lw	%x1, 8(%x2) #2255 pc 29800
	addi	%x6, %x0, 32  #0 pc 29804
	sw	%x1, 8(%x2)  #2256 pc 29808
	addi	%x2, %x2, 12  #2256 pc 29812
	jal	%x1, min_caml_print_char  #2256 pc 29816
	addi	%x2, %x2, -12  #2256 pc 29820
	lw	%x1, 8(%x2) #2256 pc 29824
	lw	%x6, 0(%x2)  #2257 pc 29828
	lw	%x6, 4(%x6)  #2257 pc 29832
	sw	%x1, 8(%x2)  #2257 pc 29836
	addi	%x2, %x2, 12  #2257 pc 29840
	jal	%x1, print_int.2524  #2257 pc 29844
	addi	%x2, %x2, -12  #2257 pc 29848
	lw	%x1, 8(%x2) #2257 pc 29852
	addi	%x6, %x0, 32  #0 pc 29856
	sw	%x1, 8(%x2)  #2258 pc 29860
	addi	%x2, %x2, 12  #2258 pc 29864
	jal	%x1, min_caml_print_char  #2258 pc 29868
	addi	%x2, %x2, -12  #2258 pc 29872
	lw	%x1, 8(%x2) #2258 pc 29876
	addi	%x6, %x0, 255  #0 pc 29880
	sw	%x1, 8(%x2)  #2259 pc 29884
	addi	%x2, %x2, 12  #2259 pc 29888
	jal	%x1, print_int.2524  #2259 pc 29892
	addi	%x2, %x2, -12  #2259 pc 29896
	lw	%x1, 8(%x2) #2259 pc 29900
	addi	%x6, %x0, 10  #0 pc 29904
	j	min_caml_print_char  #2260 pc 29908
	nop #pc 29912
write_rgb_element_int.2960:  #pc 29916
	sw	%x1, 0(%x2)  #2265 pc 29916
	addi	%x2, %x2, 4  #2265 pc 29920
	jal	%x1, int_of_float.2506  #2265 pc 29924
	addi	%x2, %x2, -4  #2265 pc 29928
	lw	%x1, 0(%x2) #2265 pc 29932
	addi	%x31, %x0, 255  #pc 29936
	bge	%x31, %x6, 12  #2266 pc 29940
	j	ble_else.9404 #pc 29944
	nop #pc 29948
	bge	%x6, %x0, 12  #2266 pc 29952
	j	bge_else.9406 #pc 29956
	nop #pc 29960
	j	bge_cont.9407 #pc 29964
	nop #pc 29968
bge_else.9406: #pc 29972
	addi	%x6, %x0, 0  #0 pc 29972
bge_cont.9407: #pc 29976
	j	ble_cont.9405 #pc 29976
	nop #pc 29980
ble_else.9404: #pc 29984
	addi	%x6, %x0, 255  #0 pc 29984
ble_cont.9405: #pc 29988
	j	print_int.2524  #2267 pc 29988
	nop #pc 29992
write_rgb_element_char.2962:  #pc 29996
	sw	%x1, 0(%x2)  #2271 pc 29996
	addi	%x2, %x2, 4  #2271 pc 30000
	jal	%x1, int_of_float.2506  #2271 pc 30004
	addi	%x2, %x2, -4  #2271 pc 30008
	lw	%x1, 0(%x2) #2271 pc 30012
	addi	%x31, %x0, 255  #pc 30016
	bge	%x31, %x6, 12  #2272 pc 30020
	j	ble_else.9408 #pc 30024
	nop #pc 30028
	bge	%x6, %x0, 12  #2272 pc 30032
	j	bge_else.9410 #pc 30036
	nop #pc 30040
	j	bge_cont.9411 #pc 30044
	nop #pc 30048
bge_else.9410: #pc 30052
	addi	%x6, %x0, 0  #0 pc 30052
bge_cont.9411: #pc 30056
	j	ble_cont.9409 #pc 30056
	nop #pc 30060
ble_else.9408: #pc 30064
	addi	%x6, %x0, 255  #0 pc 30064
ble_cont.9409: #pc 30068
	j	min_caml_print_char  #2273 pc 30068
	nop #pc 30072
write_rgb.2964:  #pc 30076
	lw	%x7, 4(%x29)  #0 pc 30076
	addi	%x31, %x0, 3  #pc 30080
	beq	%x6, %x31, 12  #2277 pc 30084
	j	be_else.9412 #pc 30088
	nop #pc 30092
	flw	%f0, 0(%x7)  #2278 pc 30096
	sw	%x7, 0(%x2)  #2278 pc 30100
	sw	%x1, 4(%x2)  #2278 pc 30104
	addi	%x2, %x2, 8  #2278 pc 30108
	jal	%x1, write_rgb_element_int.2960  #2278 pc 30112
	addi	%x2, %x2, -8  #2278 pc 30116
	lw	%x1, 4(%x2) #2278 pc 30120
	addi	%x6, %x0, 32  #0 pc 30124
	sw	%x1, 4(%x2)  #2279 pc 30128
	addi	%x2, %x2, 8  #2279 pc 30132
	jal	%x1, min_caml_print_char  #2279 pc 30136
	addi	%x2, %x2, -8  #2279 pc 30140
	lw	%x1, 4(%x2) #2279 pc 30144
	lw	%x6, 0(%x2)  #2280 pc 30148
	flw	%f0, 4(%x6)  #2280 pc 30152
	sw	%x1, 4(%x2)  #2280 pc 30156
	addi	%x2, %x2, 8  #2280 pc 30160
	jal	%x1, write_rgb_element_int.2960  #2280 pc 30164
	addi	%x2, %x2, -8  #2280 pc 30168
	lw	%x1, 4(%x2) #2280 pc 30172
	addi	%x6, %x0, 32  #0 pc 30176
	sw	%x1, 4(%x2)  #2281 pc 30180
	addi	%x2, %x2, 8  #2281 pc 30184
	jal	%x1, min_caml_print_char  #2281 pc 30188
	addi	%x2, %x2, -8  #2281 pc 30192
	lw	%x1, 4(%x2) #2281 pc 30196
	lw	%x6, 0(%x2)  #2282 pc 30200
	flw	%f0, 8(%x6)  #2282 pc 30204
	sw	%x1, 4(%x2)  #2282 pc 30208
	addi	%x2, %x2, 8  #2282 pc 30212
	jal	%x1, write_rgb_element_int.2960  #2282 pc 30216
	addi	%x2, %x2, -8  #2282 pc 30220
	lw	%x1, 4(%x2) #2282 pc 30224
	addi	%x6, %x0, 10  #0 pc 30228
	j	min_caml_print_char  #2283 pc 30232
	nop #pc 30236
be_else.9412: #pc 30240
	flw	%f0, 0(%x7)  #2285 pc 30240
	sw	%x7, 0(%x2)  #2285 pc 30244
	sw	%x1, 4(%x2)  #2285 pc 30248
	addi	%x2, %x2, 8  #2285 pc 30252
	jal	%x1, write_rgb_element_char.2962  #2285 pc 30256
	addi	%x2, %x2, -8  #2285 pc 30260
	lw	%x1, 4(%x2) #2285 pc 30264
	lw	%x6, 0(%x2)  #2286 pc 30268
	flw	%f0, 4(%x6)  #2286 pc 30272
	sw	%x1, 4(%x2)  #2286 pc 30276
	addi	%x2, %x2, 8  #2286 pc 30280
	jal	%x1, write_rgb_element_char.2962  #2286 pc 30284
	addi	%x2, %x2, -8  #2286 pc 30288
	lw	%x1, 4(%x2) #2286 pc 30292
	lw	%x6, 0(%x2)  #2287 pc 30296
	flw	%f0, 8(%x6)  #2287 pc 30300
	j	write_rgb_element_char.2962  #2287 pc 30304
	nop #pc 30308
pretrace_diffuse_rays.2966:  #pc 30312
	lw	%x8, 12(%x29)  #0 pc 30312
	lw	%x9, 8(%x29)  #0 pc 30316
	lw	%x10, 4(%x29)  #0 pc 30320
	addi	%x31, %x0, 4  #pc 30324
	bge	%x31, %x7, 12  #2300 pc 30328
	j	ble_else.9413 #pc 30332
	nop #pc 30336
	sw	%x29, 0(%x2)  #2303 pc 30340
	sw	%x8, 4(%x2)  #2303 pc 30344
	sw	%x9, 8(%x2)  #2303 pc 30348
	sw	%x10, 12(%x2)  #2303 pc 30352
	sw	%x7, 16(%x2)  #2303 pc 30356
	sw	%x6, 20(%x2)  #2303 pc 30360
	sw	%x1, 24(%x2)  #2303 pc 30364
	addi	%x2, %x2, 28  #2303 pc 30368
	jal	%x1, get_surface_id.2942  #2303 pc 30372
	addi	%x2, %x2, -28  #2303 pc 30376
	lw	%x1, 24(%x2) #2303 pc 30380
	bge	%x6, %x0, 12  #2304 pc 30384
	j	bge_else.9414 #pc 30388
	nop #pc 30392
	lw	%x6, 20(%x2)  #2306 pc 30396
	sw	%x1, 24(%x2)  #2306 pc 30400
	addi	%x2, %x2, 28  #2306 pc 30404
	jal	%x1, p_calc_diffuse.2671  #2306 pc 30408
	addi	%x2, %x2, -28  #2306 pc 30412
	lw	%x1, 24(%x2) #2306 pc 30416
	lw	%x7, 16(%x2)  #2307 pc 30420
	slli	%x8, %x7, 2  #2307 pc 30424
	add	%x31, %x8, %x6  #2307 pc 30428
	lw	%x6, 0(%x31)  #2307 pc 30432
	beq	%x6, %x0, 12  #2307 pc 30436
	j	be_else.9415 #pc 30440
	nop #pc 30444
	j	be_cont.9416 #pc 30448
	nop #pc 30452
be_else.9415: #pc 30456
	lw	%x6, 20(%x2)  #2308 pc 30456
	sw	%x1, 24(%x2)  #2308 pc 30460
	addi	%x2, %x2, 28  #2308 pc 30464
	jal	%x1, p_group_id.2677  #2308 pc 30468
	addi	%x2, %x2, -28  #2308 pc 30472
	lw	%x1, 24(%x2) #2308 pc 30476
	lw	%x7, 12(%x2)  #2309 pc 30480
	sw	%x6, 24(%x2)  #2309 pc 30484
	addi	%x6, %x7, 0  #0 pc 30488
	sw	%x1, 28(%x2)  #2309 pc 30492
	addi	%x2, %x2, 32  #2309 pc 30496
	jal	%x1, vecbzero.2593  #2309 pc 30500
	addi	%x2, %x2, -32  #2309 pc 30504
	lw	%x1, 28(%x2) #2309 pc 30508
	lw	%x6, 20(%x2)  #2313 pc 30512
	sw	%x1, 28(%x2)  #2313 pc 30516
	addi	%x2, %x2, 32  #2313 pc 30520
	jal	%x1, p_nvectors.2682  #2313 pc 30524
	addi	%x2, %x2, -32  #2313 pc 30528
	lw	%x1, 28(%x2) #2313 pc 30532
	lw	%x7, 20(%x2)  #2314 pc 30536
	sw	%x6, 28(%x2)  #2314 pc 30540
	addi	%x6, %x7, 0  #0 pc 30544
	sw	%x1, 32(%x2)  #2314 pc 30548
	addi	%x2, %x2, 36  #2314 pc 30552
	jal	%x1, p_intersection_points.2667  #2314 pc 30556
	addi	%x2, %x2, -36  #2314 pc 30560
	lw	%x1, 32(%x2) #2314 pc 30564
	lw	%x7, 24(%x2)  #2316 pc 30568
	slli	%x7, %x7, 2  #2316 pc 30572
	lw	%x8, 8(%x2)  #2316 pc 30576
	add	%x31, %x7, %x8  #2316 pc 30580
	lw	%x7, 0(%x31)  #2316 pc 30584
	lw	%x8, 16(%x2)  #2317 pc 30588
	slli	%x9, %x8, 2  #2317 pc 30592
	lw	%x10, 28(%x2)  #2317 pc 30596
	add	%x31, %x9, %x10  #2317 pc 30600
	lw	%x9, 0(%x31)  #2317 pc 30604
	slli	%x10, %x8, 2  #2318 pc 30608
	add	%x31, %x10, %x6  #2318 pc 30612
	lw	%x6, 0(%x31)  #2318 pc 30616
	lw	%x29, 4(%x2)  #2315 pc 30620
	addi	%x8, %x6, 0  #0 pc 30624
	addi	%x6, %x7, 0  #0 pc 30628
	addi	%x7, %x9, 0  #0 pc 30632
	sw	%x1, 32(%x2)  #2315 pc 30636
	lw	%x30, 0(%x29)  #2315 pc 30640
	addi	%x2, %x2, 36  #2315 pc 30644
	jalr	%x1, %x30, 0  #2315 pc 30648
	addi	%x2, %x2, -36  #2315 pc 30652
	lw	%x1, 32(%x2)  #2315 pc 30656
	lw	%x6, 20(%x2)  #2319 pc 30660
	sw	%x1, 32(%x2)  #2319 pc 30664
	addi	%x2, %x2, 36  #2319 pc 30668
	jal	%x1, p_received_ray_20percent.2675  #2319 pc 30672
	addi	%x2, %x2, -36  #2319 pc 30676
	lw	%x1, 32(%x2) #2319 pc 30680
	lw	%x7, 16(%x2)  #2320 pc 30684
	slli	%x8, %x7, 2  #2320 pc 30688
	add	%x31, %x8, %x6  #2320 pc 30692
	lw	%x6, 0(%x31)  #2320 pc 30696
	lw	%x8, 12(%x2)  #2320 pc 30700
	addi	%x7, %x8, 0  #0 pc 30704
	sw	%x1, 32(%x2)  #2320 pc 30708
	addi	%x2, %x2, 36  #2320 pc 30712
	jal	%x1, veccpy.2595  #2320 pc 30716
	addi	%x2, %x2, -36  #2320 pc 30720
	lw	%x1, 32(%x2) #2320 pc 30724
be_cont.9416: #pc 30728
	lw	%x6, 16(%x2)  #2322 pc 30728
	addi	%x7, %x6, 1  #2322 pc 30732
	lw	%x6, 20(%x2)  #2322 pc 30736
	lw	%x29, 0(%x2)  #2322 pc 30740
	lw	%x30, 0(%x29)  #2322 pc 30744
	jalr	%x0, %x30, 0  #2322 pc 30748
	nop #pc 30752
bge_else.9414: #pc 30756
	ret #pc 30756
	nop #pc 30760
ble_else.9413: #pc 30764
	ret #pc 30764
	nop #pc 30768
pretrace_pixels.2969:  #pc 30772
	lw	%x9, 36(%x29)  #0 pc 30772
	lw	%x10, 32(%x29)  #0 pc 30776
	lw	%x11, 28(%x29)  #0 pc 30780
	lw	%x12, 24(%x29)  #0 pc 30784
	lw	%x13, 20(%x29)  #0 pc 30788
	lw	%x14, 16(%x29)  #0 pc 30792
	lw	%x15, 12(%x29)  #0 pc 30796
	lw	%x16, 8(%x29)  #0 pc 30800
	lw	%x17, 4(%x29)  #0 pc 30804
	bge	%x7, %x0, 12  #2330 pc 30808
	j	bge_else.9419 #pc 30812
	nop #pc 30816
	flw	%f3, 0(%x13)  #2332 pc 30820
	lw	%x13, 0(%x17)  #2332 pc 30824
	sub	%x13, %x7, %x13  #2332 pc 30828
	sw	%x29, 0(%x2)  #2332 pc 30832
	sw	%x16, 4(%x2)  #2332 pc 30836
	sw	%x8, 8(%x2)  #2332 pc 30840
	sw	%x10, 12(%x2)  #2332 pc 30844
	sw	%x6, 16(%x2)  #2332 pc 30848
	sw	%x7, 20(%x2)  #2332 pc 30852
	sw	%x9, 24(%x2)  #2332 pc 30856
	sw	%x11, 28(%x2)  #2332 pc 30860
	sw	%x14, 32(%x2)  #2332 pc 30864
	fsw	%f2, 40(%x2)  #2332 pc 30868
	fsw	%f1, 48(%x2)  #2332 pc 30872
	sw	%x15, 56(%x2)  #2332 pc 30876
	fsw	%f0, 64(%x2)  #2332 pc 30880
	sw	%x12, 72(%x2)  #2332 pc 30884
	fsw	%f3, 80(%x2)  #2332 pc 30888
	addi	%x6, %x13, 0  #0 pc 30892
	sw	%x1, 88(%x2)  #2332 pc 30896
	addi	%x2, %x2, 92  #2332 pc 30900
	jal	%x1, float_of_int.2504  #2332 pc 30904
	addi	%x2, %x2, -92  #2332 pc 30908
	lw	%x1, 88(%x2) #2332 pc 30912
	flw	%f1, 80(%x2)  #2332 pc 30916
	fmul	%f0, %f1, %f0  #2332 pc 30920
	lw	%x6, 72(%x2)  #2333 pc 30924
	flw	%f1, 0(%x6)  #2333 pc 30928
	fmul	%f1, %f0, %f1  #2333 pc 30932
	flw	%f2, 64(%x2)  #2333 pc 30936
	fadd	%f1, %f1, %f2  #2333 pc 30940
	lw	%x7, 56(%x2)  #2333 pc 30944
	fsw	%f1, 0(%x7)  #2333 pc 30948
	flw	%f1, 4(%x6)  #2334 pc 30952
	fmul	%f1, %f0, %f1  #2334 pc 30956
	flw	%f3, 48(%x2)  #2334 pc 30960
	fadd	%f1, %f1, %f3  #2334 pc 30964
	fsw	%f1, 4(%x7)  #2334 pc 30968
	flw	%f1, 8(%x6)  #2335 pc 30972
	fmul	%f0, %f0, %f1  #2335 pc 30976
	flw	%f1, 40(%x2)  #2335 pc 30980
	fadd	%f0, %f0, %f1  #2335 pc 30984
	fsw	%f0, 8(%x7)  #2335 pc 30988
	addi	%x6, %x0, 0  #0 pc 30992
	addi	%x30, %x7, 0  #0 pc 30996
	addi	%x7, %x6, 0  #0 pc 31000
	addi	%x6, %x30, 0  #0 pc 31004
	sw	%x1, 88(%x2)  #2336 pc 31008
	addi	%x2, %x2, 92  #2336 pc 31012
	jal	%x1, vecunit_sgn.2598  #2336 pc 31016
	addi	%x2, %x2, -92  #2336 pc 31020
	lw	%x1, 88(%x2) #2336 pc 31024
	lw	%x6, 32(%x2)  #2337 pc 31028
	sw	%x1, 88(%x2)  #2337 pc 31032
	addi	%x2, %x2, 92  #2337 pc 31036
	jal	%x1, vecbzero.2593  #2337 pc 31040
	addi	%x2, %x2, -92  #2337 pc 31044
	lw	%x1, 88(%x2) #2337 pc 31048
	lw	%x6, 28(%x2)  #2338 pc 31052
	lw	%x7, 24(%x2)  #2338 pc 31056
	sw	%x1, 88(%x2)  #2338 pc 31060
	addi	%x2, %x2, 92  #2338 pc 31064
	jal	%x1, veccpy.2595  #2338 pc 31068
	addi	%x2, %x2, -92  #2338 pc 31072
	lw	%x1, 88(%x2) #2338 pc 31076
	addi	%x6, %x0, 0  #0 pc 31080
	fmv	%f0, l.6188  #0 pc 31084
	lw	%x7, 20(%x2)  #2341 pc 31088
	slli	%x8, %x7, 2  #2341 pc 31092
	lw	%x9, 16(%x2)  #2341 pc 31096
	add	%x31, %x8, %x9  #2341 pc 31100
	lw	%x8, 0(%x31)  #2341 pc 31104
	fmv	%f1, l.6176  #0 pc 31108
	lw	%x10, 56(%x2)  #2341 pc 31112
	lw	%x29, 12(%x2)  #2341 pc 31116
	addi	%x7, %x10, 0  #0 pc 31120
	sw	%x1, 88(%x2)  #2341 pc 31124
	lw	%x30, 0(%x29)  #2341 pc 31128
	addi	%x2, %x2, 92  #2341 pc 31132
	jalr	%x1, %x30, 0  #2341 pc 31136
	addi	%x2, %x2, -92  #2341 pc 31140
	lw	%x1, 88(%x2)  #2341 pc 31144
	lw	%x6, 20(%x2)  #2342 pc 31148
	slli	%x7, %x6, 2  #2342 pc 31152
	lw	%x8, 16(%x2)  #2342 pc 31156
	add	%x31, %x7, %x8  #2342 pc 31160
	lw	%x7, 0(%x31)  #2342 pc 31164
	addi	%x6, %x7, 0  #0 pc 31168
	sw	%x1, 88(%x2)  #2342 pc 31172
	addi	%x2, %x2, 92  #2342 pc 31176
	jal	%x1, p_rgb.2665  #2342 pc 31180
	addi	%x2, %x2, -92  #2342 pc 31184
	lw	%x1, 88(%x2) #2342 pc 31188
	lw	%x7, 32(%x2)  #2342 pc 31192
	sw	%x1, 88(%x2)  #2342 pc 31196
	addi	%x2, %x2, 92  #2342 pc 31200
	jal	%x1, veccpy.2595  #2342 pc 31204
	addi	%x2, %x2, -92  #2342 pc 31208
	lw	%x1, 88(%x2) #2342 pc 31212
	lw	%x6, 20(%x2)  #2343 pc 31216
	slli	%x7, %x6, 2  #2343 pc 31220
	lw	%x8, 16(%x2)  #2343 pc 31224
	add	%x31, %x7, %x8  #2343 pc 31228
	lw	%x7, 0(%x31)  #2343 pc 31232
	lw	%x9, 8(%x2)  #2343 pc 31236
	addi	%x6, %x7, 0  #0 pc 31240
	addi	%x7, %x9, 0  #0 pc 31244
	sw	%x1, 88(%x2)  #2343 pc 31248
	addi	%x2, %x2, 92  #2343 pc 31252
	jal	%x1, p_set_group_id.2679  #2343 pc 31256
	addi	%x2, %x2, -92  #2343 pc 31260
	lw	%x1, 88(%x2) #2343 pc 31264
	lw	%x6, 20(%x2)  #2346 pc 31268
	slli	%x7, %x6, 2  #2346 pc 31272
	lw	%x8, 16(%x2)  #2346 pc 31276
	add	%x31, %x7, %x8  #2346 pc 31280
	lw	%x7, 0(%x31)  #2346 pc 31284
	addi	%x9, %x0, 0  #0 pc 31288
	lw	%x29, 4(%x2)  #2346 pc 31292
	addi	%x6, %x7, 0  #0 pc 31296
	addi	%x7, %x9, 0  #0 pc 31300
	sw	%x1, 88(%x2)  #2346 pc 31304
	lw	%x30, 0(%x29)  #2346 pc 31308
	addi	%x2, %x2, 92  #2346 pc 31312
	jalr	%x1, %x30, 0  #2346 pc 31316
	addi	%x2, %x2, -92  #2346 pc 31320
	lw	%x1, 88(%x2)  #2346 pc 31324
	lw	%x6, 20(%x2)  #2348 pc 31328
	addi	%x6, %x6, -1  #2348 pc 31332
	addi	%x7, %x0, 1  #0 pc 31336
	lw	%x8, 8(%x2)  #2348 pc 31340
	sw	%x6, 88(%x2)  #2348 pc 31344
	addi	%x6, %x8, 0  #0 pc 31348
	sw	%x1, 92(%x2)  #2348 pc 31352
	addi	%x2, %x2, 96  #2348 pc 31356
	jal	%x1, add_mod5.2582  #2348 pc 31360
	addi	%x2, %x2, -96  #2348 pc 31364
	lw	%x1, 92(%x2) #2348 pc 31368
	addi	%x8, %x6, 0  #2348 pc 31372
	flw	%f0, 64(%x2)  #2348 pc 31376
	flw	%f1, 48(%x2)  #2348 pc 31380
	flw	%f2, 40(%x2)  #2348 pc 31384
	lw	%x6, 16(%x2)  #2348 pc 31388
	lw	%x7, 88(%x2)  #2348 pc 31392
	lw	%x29, 0(%x2)  #2348 pc 31396
	lw	%x30, 0(%x29)  #2348 pc 31400
	jalr	%x0, %x30, 0  #2348 pc 31404
	nop #pc 31408
bge_else.9419: #pc 31412
	ret #pc 31412
	nop #pc 31416
pretrace_line.2976:  #pc 31420
	lw	%x9, 24(%x29)  #0 pc 31420
	lw	%x10, 20(%x29)  #0 pc 31424
	lw	%x11, 16(%x29)  #0 pc 31428
	lw	%x12, 12(%x29)  #0 pc 31432
	lw	%x13, 8(%x29)  #0 pc 31436
	lw	%x14, 4(%x29)  #0 pc 31440
	flw	%f0, 0(%x11)  #2355 pc 31444
	lw	%x11, 4(%x14)  #2355 pc 31448
	sub	%x7, %x7, %x11  #2355 pc 31452
	sw	%x8, 0(%x2)  #2355 pc 31456
	sw	%x6, 4(%x2)  #2355 pc 31460
	sw	%x12, 8(%x2)  #2355 pc 31464
	sw	%x13, 12(%x2)  #2355 pc 31468
	sw	%x9, 16(%x2)  #2355 pc 31472
	sw	%x10, 20(%x2)  #2355 pc 31476
	fsw	%f0, 24(%x2)  #2355 pc 31480
	addi	%x6, %x7, 0  #0 pc 31484
	sw	%x1, 32(%x2)  #2355 pc 31488
	addi	%x2, %x2, 36  #2355 pc 31492
	jal	%x1, float_of_int.2504  #2355 pc 31496
	addi	%x2, %x2, -36  #2355 pc 31500
	lw	%x1, 32(%x2) #2355 pc 31504
	flw	%f1, 24(%x2)  #2355 pc 31508
	fmul	%f0, %f1, %f0  #2355 pc 31512
	lw	%x6, 20(%x2)  #2358 pc 31516
	flw	%f1, 0(%x6)  #2358 pc 31520
	fmul	%f1, %f0, %f1  #2358 pc 31524
	lw	%x7, 16(%x2)  #2358 pc 31528
	flw	%f2, 0(%x7)  #2358 pc 31532
	fadd	%f1, %f1, %f2  #2358 pc 31536
	flw	%f2, 4(%x6)  #2359 pc 31540
	fmul	%f2, %f0, %f2  #2359 pc 31544
	flw	%f3, 4(%x7)  #2359 pc 31548
	fadd	%f2, %f2, %f3  #2359 pc 31552
	flw	%f3, 8(%x6)  #2360 pc 31556
	fmul	%f0, %f0, %f3  #2360 pc 31560
	flw	%f3, 8(%x7)  #2360 pc 31564
	fadd	%f0, %f0, %f3  #2360 pc 31568
	lw	%x6, 12(%x2)  #2361 pc 31572
	lw	%x6, 0(%x6)  #2361 pc 31576
	addi	%x7, %x6, -1  #2361 pc 31580
	lw	%x6, 4(%x2)  #2361 pc 31584
	lw	%x8, 0(%x2)  #2361 pc 31588
	lw	%x29, 8(%x2)  #2361 pc 31592
	fadd	%f29, %f2, %f30  #0 pc 31596
	fadd	%f2, %f0, %f30  #0 pc 31600
	fadd	%f0, %f1, %f30  #0 pc 31604
	fadd	%f1, %f29, %f30  #0 pc 31608
	lw	%x30, 0(%x29)  #2361 pc 31612
	jalr	%x0, %x30, 0  #2361 pc 31616
	nop #pc 31620
scan_pixel.2980:  #pc 31624
	lw	%x12, 24(%x29)  #0 pc 31624
	lw	%x13, 20(%x29)  #0 pc 31628
	lw	%x14, 16(%x29)  #0 pc 31632
	lw	%x15, 12(%x29)  #0 pc 31636
	lw	%x16, 8(%x29)  #0 pc 31640
	lw	%x17, 4(%x29)  #0 pc 31644
	lw	%x16, 0(%x16)  #2371 pc 31648
	bge	%x6, %x16, 12  #2371 pc 31652
	j	ble_else.9424 #pc 31656
	nop #pc 31660
	ret #pc 31664
	nop #pc 31668
ble_else.9424: #pc 31672
	slli	%x16, %x6, 2  #2374 pc 31672
	add	%x31, %x16, %x9  #2374 pc 31676
	lw	%x16, 0(%x31)  #2374 pc 31680
	sw	%x29, 0(%x2)  #2374 pc 31684
	sw	%x11, 4(%x2)  #2374 pc 31688
	sw	%x12, 8(%x2)  #2374 pc 31692
	sw	%x8, 12(%x2)  #2374 pc 31696
	sw	%x13, 16(%x2)  #2374 pc 31700
	sw	%x17, 20(%x2)  #2374 pc 31704
	sw	%x9, 24(%x2)  #2374 pc 31708
	sw	%x10, 28(%x2)  #2374 pc 31712
	sw	%x7, 32(%x2)  #2374 pc 31716
	sw	%x6, 36(%x2)  #2374 pc 31720
	sw	%x15, 40(%x2)  #2374 pc 31724
	sw	%x14, 44(%x2)  #2374 pc 31728
	addi	%x6, %x16, 0  #0 pc 31732
	sw	%x1, 48(%x2)  #2374 pc 31736
	addi	%x2, %x2, 52  #2374 pc 31740
	jal	%x1, p_rgb.2665  #2374 pc 31744
	addi	%x2, %x2, -52  #2374 pc 31748
	lw	%x1, 48(%x2) #2374 pc 31752
	addi	%x7, %x6, 0  #2374 pc 31756
	lw	%x6, 44(%x2)  #2374 pc 31760
	sw	%x1, 48(%x2)  #2374 pc 31764
	addi	%x2, %x2, 52  #2374 pc 31768
	jal	%x1, veccpy.2595  #2374 pc 31772
	addi	%x2, %x2, -52  #2374 pc 31776
	lw	%x1, 48(%x2) #2374 pc 31780
	lw	%x6, 36(%x2)  #2377 pc 31784
	lw	%x7, 32(%x2)  #2377 pc 31788
	lw	%x8, 28(%x2)  #2377 pc 31792
	lw	%x29, 40(%x2)  #2377 pc 31796
	sw	%x1, 48(%x2)  #2377 pc 31800
	lw	%x30, 0(%x29)  #2377 pc 31804
	addi	%x2, %x2, 52  #2377 pc 31808
	jalr	%x1, %x30, 0  #2377 pc 31812
	addi	%x2, %x2, -52  #2377 pc 31816
	lw	%x1, 48(%x2)  #2377 pc 31820
	beq	%x6, %x0, 12  #2377 pc 31824
	j	be_else.9426 #pc 31828
	nop #pc 31832
	lw	%x6, 36(%x2)  #2380 pc 31836
	slli	%x7, %x6, 2  #2380 pc 31840
	lw	%x8, 24(%x2)  #2380 pc 31844
	add	%x31, %x7, %x8  #2380 pc 31848
	lw	%x7, 0(%x31)  #2380 pc 31852
	addi	%x9, %x0, 0  #0 pc 31856
	lw	%x29, 20(%x2)  #2380 pc 31860
	addi	%x6, %x7, 0  #0 pc 31864
	addi	%x7, %x9, 0  #0 pc 31868
	sw	%x1, 48(%x2)  #2380 pc 31872
	lw	%x30, 0(%x29)  #2380 pc 31876
	addi	%x2, %x2, 52  #2380 pc 31880
	jalr	%x1, %x30, 0  #2380 pc 31884
	addi	%x2, %x2, -52  #2380 pc 31888
	lw	%x1, 48(%x2)  #2380 pc 31892
	j	be_cont.9427 #pc 31896
	nop #pc 31900
be_else.9426: #pc 31904
	addi	%x11, %x0, 0  #0 pc 31904
	lw	%x6, 36(%x2)  #2378 pc 31908
	lw	%x7, 32(%x2)  #2378 pc 31912
	lw	%x8, 12(%x2)  #2378 pc 31916
	lw	%x9, 24(%x2)  #2378 pc 31920
	lw	%x10, 28(%x2)  #2378 pc 31924
	lw	%x29, 16(%x2)  #2378 pc 31928
	sw	%x1, 48(%x2)  #2378 pc 31932
	lw	%x30, 0(%x29)  #2378 pc 31936
	addi	%x2, %x2, 52  #2378 pc 31940
	jalr	%x1, %x30, 0  #2378 pc 31944
	addi	%x2, %x2, -52  #2378 pc 31948
	lw	%x1, 48(%x2)  #2378 pc 31952
be_cont.9427: #pc 31956
	lw	%x6, 4(%x2)  #2383 pc 31956
	lw	%x29, 8(%x2)  #2383 pc 31960
	sw	%x1, 48(%x2)  #2383 pc 31964
	lw	%x30, 0(%x29)  #2383 pc 31968
	addi	%x2, %x2, 52  #2383 pc 31972
	jalr	%x1, %x30, 0  #2383 pc 31976
	addi	%x2, %x2, -52  #2383 pc 31980
	lw	%x1, 48(%x2)  #2383 pc 31984
	lw	%x6, 36(%x2)  #2385 pc 31988
	addi	%x6, %x6, 1  #2385 pc 31992
	lw	%x7, 32(%x2)  #2385 pc 31996
	lw	%x8, 12(%x2)  #2385 pc 32000
	lw	%x9, 24(%x2)  #2385 pc 32004
	lw	%x10, 28(%x2)  #2385 pc 32008
	lw	%x11, 4(%x2)  #2385 pc 32012
	lw	%x29, 0(%x2)  #2385 pc 32016
	lw	%x30, 0(%x29)  #2385 pc 32020
	jalr	%x0, %x30, 0  #2385 pc 32024
	nop #pc 32028
scan_line.2987:  #pc 32032
	lw	%x12, 12(%x29)  #0 pc 32032
	lw	%x13, 8(%x29)  #0 pc 32036
	lw	%x14, 4(%x29)  #0 pc 32040
	lw	%x15, 4(%x14)  #2392 pc 32044
	bge	%x6, %x15, 12  #2392 pc 32048
	j	ble_else.9428 #pc 32052
	nop #pc 32056
	ret #pc 32060
	nop #pc 32064
ble_else.9428: #pc 32068
	lw	%x14, 4(%x14)  #2394 pc 32068
	addi	%x14, %x14, -1  #2394 pc 32072
	sw	%x29, 0(%x2)  #2394 pc 32076
	sw	%x10, 4(%x2)  #2394 pc 32080
	sw	%x11, 8(%x2)  #2394 pc 32084
	sw	%x9, 12(%x2)  #2394 pc 32088
	sw	%x8, 16(%x2)  #2394 pc 32092
	sw	%x7, 20(%x2)  #2394 pc 32096
	sw	%x6, 24(%x2)  #2394 pc 32100
	sw	%x12, 28(%x2)  #2394 pc 32104
	bge	%x6, %x14, 12  #2394 pc 32108
	j	ble_else.9430 #pc 32112
	nop #pc 32116
	j	ble_cont.9431 #pc 32120
	nop #pc 32124
ble_else.9430: #pc 32128
	addi	%x14, %x6, 1  #2395 pc 32128
	addi	%x8, %x10, 0  #0 pc 32132
	addi	%x7, %x14, 0  #0 pc 32136
	addi	%x6, %x9, 0  #0 pc 32140
	addi	%x29, %x13, 0  #0 pc 32144
	sw	%x1, 32(%x2)  #2395 pc 32148
	lw	%x30, 0(%x29)  #2395 pc 32152
	addi	%x2, %x2, 36  #2395 pc 32156
	jalr	%x1, %x30, 0  #2395 pc 32160
	addi	%x2, %x2, -36  #2395 pc 32164
	lw	%x1, 32(%x2)  #2395 pc 32168
ble_cont.9431: #pc 32172
	addi	%x6, %x0, 0  #0 pc 32172
	lw	%x7, 24(%x2)  #2397 pc 32176
	lw	%x8, 20(%x2)  #2397 pc 32180
	lw	%x9, 16(%x2)  #2397 pc 32184
	lw	%x10, 12(%x2)  #2397 pc 32188
	lw	%x11, 8(%x2)  #2397 pc 32192
	lw	%x29, 28(%x2)  #2397 pc 32196
	sw	%x1, 32(%x2)  #2397 pc 32200
	lw	%x30, 0(%x29)  #2397 pc 32204
	addi	%x2, %x2, 36  #2397 pc 32208
	jalr	%x1, %x30, 0  #2397 pc 32212
	addi	%x2, %x2, -36  #2397 pc 32216
	lw	%x1, 32(%x2)  #2397 pc 32220
	lw	%x6, 24(%x2)  #2398 pc 32224
	addi	%x6, %x6, 1  #2398 pc 32228
	addi	%x7, %x0, 2  #0 pc 32232
	lw	%x8, 4(%x2)  #2398 pc 32236
	sw	%x6, 32(%x2)  #2398 pc 32240
	addi	%x6, %x8, 0  #0 pc 32244
	sw	%x1, 36(%x2)  #2398 pc 32248
	addi	%x2, %x2, 40  #2398 pc 32252
	jal	%x1, add_mod5.2582  #2398 pc 32256
	addi	%x2, %x2, -40  #2398 pc 32260
	lw	%x1, 36(%x2) #2398 pc 32264
	addi	%x10, %x6, 0  #2398 pc 32268
	lw	%x6, 32(%x2)  #2398 pc 32272
	lw	%x7, 16(%x2)  #2398 pc 32276
	lw	%x8, 12(%x2)  #2398 pc 32280
	lw	%x9, 20(%x2)  #2398 pc 32284
	lw	%x11, 8(%x2)  #2398 pc 32288
	lw	%x29, 0(%x2)  #2398 pc 32292
	lw	%x30, 0(%x29)  #2398 pc 32296
	jalr	%x0, %x30, 0  #2398 pc 32300
	nop #pc 32304
create_float5x3array.2994:  #pc 32308
	addi	%x6, %x0, 3  #0 pc 32308
	fmv	%f0, l.6176  #0 pc 32312
	sw	%x1, 0(%x2)  #2409 pc 32316
	addi	%x2, %x2, 4  #2409 pc 32320
	jal	%x1, create_float_array.2541  #2409 pc 32324
	addi	%x2, %x2, -4  #2409 pc 32328
	lw	%x1, 0(%x2) #2409 pc 32332
	addi	%x7, %x6, 0  #2409 pc 32336
	addi	%x6, %x0, 5  #0 pc 32340
	sw	%x1, 0(%x2)  #2410 pc 32344
	addi	%x2, %x2, 4  #2410 pc 32348
	jal	%x1, create_array.2534  #2410 pc 32352
	addi	%x2, %x2, -4  #2410 pc 32356
	lw	%x1, 0(%x2) #2410 pc 32360
	addi	%x7, %x0, 3  #0 pc 32364
	fmv	%f0, l.6176  #0 pc 32368
	sw	%x6, 0(%x2)  #2411 pc 32372
	addi	%x6, %x7, 0  #0 pc 32376
	sw	%x1, 4(%x2)  #2411 pc 32380
	addi	%x2, %x2, 8  #2411 pc 32384
	jal	%x1, create_float_array.2541  #2411 pc 32388
	addi	%x2, %x2, -8  #2411 pc 32392
	lw	%x1, 4(%x2) #2411 pc 32396
	lw	%x7, 0(%x2)  #2411 pc 32400
	sw	%x6, 4(%x7)  #2411 pc 32404
	addi	%x6, %x0, 3  #0 pc 32408
	fmv	%f0, l.6176  #0 pc 32412
	sw	%x1, 4(%x2)  #2412 pc 32416
	addi	%x2, %x2, 8  #2412 pc 32420
	jal	%x1, create_float_array.2541  #2412 pc 32424
	addi	%x2, %x2, -8  #2412 pc 32428
	lw	%x1, 4(%x2) #2412 pc 32432
	lw	%x7, 0(%x2)  #2412 pc 32436
	sw	%x6, 8(%x7)  #2412 pc 32440
	addi	%x6, %x0, 3  #0 pc 32444
	fmv	%f0, l.6176  #0 pc 32448
	sw	%x1, 4(%x2)  #2413 pc 32452
	addi	%x2, %x2, 8  #2413 pc 32456
	jal	%x1, create_float_array.2541  #2413 pc 32460
	addi	%x2, %x2, -8  #2413 pc 32464
	lw	%x1, 4(%x2) #2413 pc 32468
	lw	%x7, 0(%x2)  #2413 pc 32472
	sw	%x6, 12(%x7)  #2413 pc 32476
	addi	%x6, %x0, 3  #0 pc 32480
	fmv	%f0, l.6176  #0 pc 32484
	sw	%x1, 4(%x2)  #2414 pc 32488
	addi	%x2, %x2, 8  #2414 pc 32492
	jal	%x1, create_float_array.2541  #2414 pc 32496
	addi	%x2, %x2, -8  #2414 pc 32500
	lw	%x1, 4(%x2) #2414 pc 32504
	lw	%x7, 0(%x2)  #2414 pc 32508
	sw	%x6, 16(%x7)  #2414 pc 32512
	addi	%x6, %x7, 0  #2415 pc 32516
	ret #pc 32520
	nop #pc 32524
create_pixel.2996:  #pc 32528
	addi	%x6, %x0, 3  #0 pc 32528
	fmv	%f0, l.6176  #0 pc 32532
	sw	%x1, 0(%x2)  #2421 pc 32536
	addi	%x2, %x2, 4  #2421 pc 32540
	jal	%x1, create_float_array.2541  #2421 pc 32544
	addi	%x2, %x2, -4  #2421 pc 32548
	lw	%x1, 0(%x2) #2421 pc 32552
	sw	%x6, 0(%x2)  #2422 pc 32556
	sw	%x1, 4(%x2)  #2422 pc 32560
	addi	%x2, %x2, 8  #2422 pc 32564
	jal	%x1, create_float5x3array.2994  #2422 pc 32568
	addi	%x2, %x2, -8  #2422 pc 32572
	lw	%x1, 4(%x2) #2422 pc 32576
	addi	%x7, %x0, 5  #0 pc 32580
	addi	%x8, %x0, 0  #0 pc 32584
	sw	%x6, 4(%x2)  #2423 pc 32588
	addi	%x6, %x7, 0  #0 pc 32592
	addi	%x7, %x8, 0  #0 pc 32596
	sw	%x1, 8(%x2)  #2423 pc 32600
	addi	%x2, %x2, 12  #2423 pc 32604
	jal	%x1, create_array.2534  #2423 pc 32608
	addi	%x2, %x2, -12  #2423 pc 32612
	lw	%x1, 8(%x2) #2423 pc 32616
	addi	%x7, %x0, 5  #0 pc 32620
	addi	%x8, %x0, 0  #0 pc 32624
	sw	%x6, 8(%x2)  #2424 pc 32628
	addi	%x6, %x7, 0  #0 pc 32632
	addi	%x7, %x8, 0  #0 pc 32636
	sw	%x1, 12(%x2)  #2424 pc 32640
	addi	%x2, %x2, 16  #2424 pc 32644
	jal	%x1, create_array.2534  #2424 pc 32648
	addi	%x2, %x2, -16  #2424 pc 32652
	lw	%x1, 12(%x2) #2424 pc 32656
	sw	%x6, 12(%x2)  #2425 pc 32660
	sw	%x1, 16(%x2)  #2425 pc 32664
	addi	%x2, %x2, 20  #2425 pc 32668
	jal	%x1, create_float5x3array.2994  #2425 pc 32672
	addi	%x2, %x2, -20  #2425 pc 32676
	lw	%x1, 16(%x2) #2425 pc 32680
	sw	%x6, 16(%x2)  #2426 pc 32684
	sw	%x1, 20(%x2)  #2426 pc 32688
	addi	%x2, %x2, 24  #2426 pc 32692
	jal	%x1, create_float5x3array.2994  #2426 pc 32696
	addi	%x2, %x2, -24  #2426 pc 32700
	lw	%x1, 20(%x2) #2426 pc 32704
	addi	%x7, %x0, 1  #0 pc 32708
	addi	%x8, %x0, 0  #0 pc 32712
	sw	%x6, 20(%x2)  #2427 pc 32716
	addi	%x6, %x7, 0  #0 pc 32720
	addi	%x7, %x8, 0  #0 pc 32724
	sw	%x1, 24(%x2)  #2427 pc 32728
	addi	%x2, %x2, 28  #2427 pc 32732
	jal	%x1, create_array.2534  #2427 pc 32736
	addi	%x2, %x2, -28  #2427 pc 32740
	lw	%x1, 24(%x2) #2427 pc 32744
	sw	%x6, 24(%x2)  #2428 pc 32748
	sw	%x1, 28(%x2)  #2428 pc 32752
	addi	%x2, %x2, 32  #2428 pc 32756
	jal	%x1, create_float5x3array.2994  #2428 pc 32760
	addi	%x2, %x2, -32  #2428 pc 32764
	lw	%x1, 28(%x2) #2428 pc 32768
	addi	%x7, %x3, 0  #2429 pc 32772
	addi	%x3, %x3, 32  #2429 pc 32776
	sw	%x6, 28(%x7)  #2429 pc 32780
	lw	%x6, 24(%x2)  #2429 pc 32784
	sw	%x6, 24(%x7)  #2429 pc 32788
	lw	%x6, 20(%x2)  #2429 pc 32792
	sw	%x6, 20(%x7)  #2429 pc 32796
	lw	%x6, 16(%x2)  #2429 pc 32800
	sw	%x6, 16(%x7)  #2429 pc 32804
	lw	%x6, 12(%x2)  #2429 pc 32808
	sw	%x6, 12(%x7)  #2429 pc 32812
	lw	%x6, 8(%x2)  #2429 pc 32816
	sw	%x6, 8(%x7)  #2429 pc 32820
	lw	%x6, 4(%x2)  #2429 pc 32824
	sw	%x6, 4(%x7)  #2429 pc 32828
	lw	%x6, 0(%x2)  #2429 pc 32832
	sw	%x6, 0(%x7)  #2429 pc 32836
	addi	%x6, %x7, 0  #2429 pc 32840
	ret #pc 32844
	nop #pc 32848
init_line_elements.2998:  #pc 32852
	bge	%x7, %x0, 12  #2434 pc 32852
	j	bge_else.9432 #pc 32856
	nop #pc 32860
	sw	%x6, 0(%x2)  #2435 pc 32864
	sw	%x7, 4(%x2)  #2435 pc 32868
	sw	%x1, 8(%x2)  #2435 pc 32872
	addi	%x2, %x2, 12  #2435 pc 32876
	jal	%x1, create_pixel.2996  #2435 pc 32880
	addi	%x2, %x2, -12  #2435 pc 32884
	lw	%x1, 8(%x2) #2435 pc 32888
	lw	%x7, 4(%x2)  #2435 pc 32892
	slli	%x8, %x7, 2  #2435 pc 32896
	lw	%x9, 0(%x2)  #2435 pc 32900
	add	%x31, %x8, %x9  #2435 pc 32904
	sw	%x6, 0(%x31)  #2435 pc 32908
	addi	%x7, %x7, -1  #2436 pc 32912
	addi	%x6, %x9, 0  #0 pc 32916
	j	init_line_elements.2998  #2436 pc 32920
	nop #pc 32924
bge_else.9432: #pc 32928
	ret #pc 32928
	nop #pc 32932
create_pixelline.3001:  #pc 32936
	lw	%x6, 4(%x29)  #0 pc 32936
	lw	%x7, 0(%x6)  #2443 pc 32940
	sw	%x6, 0(%x2)  #2443 pc 32944
	sw	%x7, 4(%x2)  #2443 pc 32948
	sw	%x1, 8(%x2)  #2443 pc 32952
	addi	%x2, %x2, 12  #2443 pc 32956
	jal	%x1, create_pixel.2996  #2443 pc 32960
	addi	%x2, %x2, -12  #2443 pc 32964
	lw	%x1, 8(%x2) #2443 pc 32968
	addi	%x7, %x6, 0  #2443 pc 32972
	lw	%x6, 4(%x2)  #2443 pc 32976
	sw	%x1, 8(%x2)  #2443 pc 32980
	addi	%x2, %x2, 12  #2443 pc 32984
	jal	%x1, create_array.2534  #2443 pc 32988
	addi	%x2, %x2, -12  #2443 pc 32992
	lw	%x1, 8(%x2) #2443 pc 32996
	lw	%x7, 0(%x2)  #2444 pc 33000
	lw	%x7, 0(%x7)  #2444 pc 33004
	addi	%x7, %x7, -2  #2444 pc 33008
	j	init_line_elements.2998  #2444 pc 33012
	nop #pc 33016
tan.3003:  #pc 33020
	fsw	%f0, 0(%x2)  #2457 pc 33020
	sw	%x1, 8(%x2)  #2457 pc 33024
	addi	%x2, %x2, 12  #2457 pc 33028
	jal	%x1, sin.2494  #2457 pc 33032
	addi	%x2, %x2, -12  #2457 pc 33036
	lw	%x1, 8(%x2) #2457 pc 33040
	flw	%f1, 0(%x2)  #2457 pc 33044
	fsw	%f0, 8(%x2)  #2457 pc 33048
	fadd	%f0, %f1, %f30  #0 pc 33052
	sw	%x1, 16(%x2)  #2457 pc 33056
	addi	%x2, %x2, 20  #2457 pc 33060
	jal	%x1, cos.2496  #2457 pc 33064
	addi	%x2, %x2, -20  #2457 pc 33068
	lw	%x1, 16(%x2) #2457 pc 33072
	flw	%f1, 8(%x2)  #2457 pc 33076
	fdiv	%f0, %f1, %f0  #2457 pc 33080
	ret #pc 33084
	nop #pc 33088
adjust_position.3005:  #pc 33092
	fmul	%f0, %f0, %f0  #2462 pc 33092
	fmv	%f2, l.6742  #0 pc 33096
	fadd	%f0, %f0, %f2  #2462 pc 33100
	fsqrt	%f0, %f0  #2462 pc 33104
	fmv	%f2, l.6188  #0 pc 33108
	fdiv	%f2, %f2, %f0  #2463 pc 33112
	fsw	%f0, 0(%x2)  #2464 pc 33116
	fsw	%f1, 8(%x2)  #2464 pc 33120
	fadd	%f0, %f2, %f30  #0 pc 33124
	sw	%x1, 16(%x2)  #2464 pc 33128
	addi	%x2, %x2, 20  #2464 pc 33132
	jal	%x1, atan.2498  #2464 pc 33136
	addi	%x2, %x2, -20  #2464 pc 33140
	lw	%x1, 16(%x2) #2464 pc 33144
	flw	%f1, 8(%x2)  #2465 pc 33148
	fmul	%f0, %f0, %f1  #2465 pc 33152
	sw	%x1, 16(%x2)  #2465 pc 33156
	addi	%x2, %x2, 20  #2465 pc 33160
	jal	%x1, tan.3003  #2465 pc 33164
	addi	%x2, %x2, -20  #2465 pc 33168
	lw	%x1, 16(%x2) #2465 pc 33172
	flw	%f1, 0(%x2)  #2466 pc 33176
	fmul	%f0, %f0, %f1  #2466 pc 33180
	ret #pc 33184
	nop #pc 33188
calc_dirvec.3008:  #pc 33192
	lw	%x9, 4(%x29)  #0 pc 33192
	addi	%x31, %x0, 5  #pc 33196
	bge	%x6, %x31, 12  #2471 pc 33200
	j	bge_else.9433 #pc 33204
	nop #pc 33208
	sw	%x8, 0(%x2)  #2472 pc 33212
	sw	%x9, 4(%x2)  #2472 pc 33216
	sw	%x7, 8(%x2)  #2472 pc 33220
	fsw	%f0, 16(%x2)  #2472 pc 33224
	fsw	%f1, 24(%x2)  #2472 pc 33228
	sw	%x1, 32(%x2)  #2472 pc 33232
	addi	%x2, %x2, 36  #2472 pc 33236
	jal	%x1, fsqr.2487  #2472 pc 33240
	addi	%x2, %x2, -36  #2472 pc 33244
	lw	%x1, 32(%x2) #2472 pc 33248
	flw	%f1, 24(%x2)  #2472 pc 33252
	fsw	%f0, 32(%x2)  #2472 pc 33256
	fadd	%f0, %f1, %f30  #0 pc 33260
	sw	%x1, 40(%x2)  #2472 pc 33264
	addi	%x2, %x2, 44  #2472 pc 33268
	jal	%x1, fsqr.2487  #2472 pc 33272
	addi	%x2, %x2, -44  #2472 pc 33276
	lw	%x1, 40(%x2) #2472 pc 33280
	flw	%f1, 32(%x2)  #2472 pc 33284
	fadd	%f0, %f1, %f0  #2472 pc 33288
	fmv	%f1, l.6188  #0 pc 33292
	fadd	%f0, %f0, %f1  #2472 pc 33296
	fsqrt	%f0, %f0  #2472 pc 33300
	flw	%f1, 16(%x2)  #2473 pc 33304
	fdiv	%f1, %f1, %f0  #2473 pc 33308
	flw	%f2, 24(%x2)  #2474 pc 33312
	fdiv	%f2, %f2, %f0  #2474 pc 33316
	fmv	%f3, l.6188  #0 pc 33320
	fdiv	%f0, %f3, %f0  #2475 pc 33324
	lw	%x6, 8(%x2)  #2478 pc 33328
	slli	%x6, %x6, 2  #2478 pc 33332
	lw	%x7, 4(%x2)  #2478 pc 33336
	add	%x31, %x6, %x7  #2478 pc 33340
	lw	%x6, 0(%x31)  #2478 pc 33344
	lw	%x7, 0(%x2)  #2479 pc 33348
	slli	%x8, %x7, 2  #2479 pc 33352
	add	%x31, %x8, %x6  #2479 pc 33356
	lw	%x8, 0(%x31)  #2479 pc 33360
	sw	%x6, 40(%x2)  #2479 pc 33364
	fsw	%f0, 48(%x2)  #2479 pc 33368
	fsw	%f2, 56(%x2)  #2479 pc 33372
	fsw	%f1, 64(%x2)  #2479 pc 33376
	addi	%x6, %x8, 0  #0 pc 33380
	sw	%x1, 72(%x2)  #2479 pc 33384
	addi	%x2, %x2, 76  #2479 pc 33388
	jal	%x1, d_vec.2684  #2479 pc 33392
	addi	%x2, %x2, -76  #2479 pc 33396
	lw	%x1, 72(%x2) #2479 pc 33400
	flw	%f0, 64(%x2)  #2479 pc 33404
	flw	%f1, 56(%x2)  #2479 pc 33408
	flw	%f2, 48(%x2)  #2479 pc 33412
	sw	%x1, 72(%x2)  #2479 pc 33416
	addi	%x2, %x2, 76  #2479 pc 33420
	jal	%x1, vecset.2585  #2479 pc 33424
	addi	%x2, %x2, -76  #2479 pc 33428
	lw	%x1, 72(%x2) #2479 pc 33432
	lw	%x6, 0(%x2)  #2480 pc 33436
	addi	%x7, %x6, 40  #2480 pc 33440
	slli	%x7, %x7, 2  #2480 pc 33444
	lw	%x8, 40(%x2)  #2480 pc 33448
	add	%x31, %x7, %x8  #2480 pc 33452
	lw	%x7, 0(%x31)  #2480 pc 33456
	addi	%x6, %x7, 0  #0 pc 33460
	sw	%x1, 72(%x2)  #2480 pc 33464
	addi	%x2, %x2, 76  #2480 pc 33468
	jal	%x1, d_vec.2684  #2480 pc 33472
	addi	%x2, %x2, -76  #2480 pc 33476
	lw	%x1, 72(%x2) #2480 pc 33480
	flw	%f0, 56(%x2)  #2480 pc 33484
	sw	%x6, 72(%x2)  #2480 pc 33488
	sw	%x1, 76(%x2)  #2480 pc 33492
	addi	%x2, %x2, 80  #2480 pc 33496
	jal	%x1, fneg.2485  #2480 pc 33500
	addi	%x2, %x2, -80  #2480 pc 33504
	lw	%x1, 76(%x2) #2480 pc 33508
	fadd	%f2, %f0, %f30  #2480 pc 33512
	flw	%f0, 64(%x2)  #2480 pc 33516
	flw	%f1, 48(%x2)  #2480 pc 33520
	lw	%x6, 72(%x2)  #2480 pc 33524
	sw	%x1, 76(%x2)  #2480 pc 33528
	addi	%x2, %x2, 80  #2480 pc 33532
	jal	%x1, vecset.2585  #2480 pc 33536
	addi	%x2, %x2, -80  #2480 pc 33540
	lw	%x1, 76(%x2) #2480 pc 33544
	lw	%x6, 0(%x2)  #2481 pc 33548
	addi	%x7, %x6, 80  #2481 pc 33552
	slli	%x7, %x7, 2  #2481 pc 33556
	lw	%x8, 40(%x2)  #2481 pc 33560
	add	%x31, %x7, %x8  #2481 pc 33564
	lw	%x7, 0(%x31)  #2481 pc 33568
	addi	%x6, %x7, 0  #0 pc 33572
	sw	%x1, 76(%x2)  #2481 pc 33576
	addi	%x2, %x2, 80  #2481 pc 33580
	jal	%x1, d_vec.2684  #2481 pc 33584
	addi	%x2, %x2, -80  #2481 pc 33588
	lw	%x1, 76(%x2) #2481 pc 33592
	flw	%f0, 64(%x2)  #2481 pc 33596
	sw	%x6, 76(%x2)  #2481 pc 33600
	sw	%x1, 80(%x2)  #2481 pc 33604
	addi	%x2, %x2, 84  #2481 pc 33608
	jal	%x1, fneg.2485  #2481 pc 33612
	addi	%x2, %x2, -84  #2481 pc 33616
	lw	%x1, 80(%x2) #2481 pc 33620
	flw	%f1, 56(%x2)  #2481 pc 33624
	fsw	%f0, 80(%x2)  #2481 pc 33628
	fadd	%f0, %f1, %f30  #0 pc 33632
	sw	%x1, 88(%x2)  #2481 pc 33636
	addi	%x2, %x2, 92  #2481 pc 33640
	jal	%x1, fneg.2485  #2481 pc 33644
	addi	%x2, %x2, -92  #2481 pc 33648
	lw	%x1, 88(%x2) #2481 pc 33652
	fadd	%f2, %f0, %f30  #2481 pc 33656
	flw	%f0, 48(%x2)  #2481 pc 33660
	flw	%f1, 80(%x2)  #2481 pc 33664
	lw	%x6, 76(%x2)  #2481 pc 33668
	sw	%x1, 88(%x2)  #2481 pc 33672
	addi	%x2, %x2, 92  #2481 pc 33676
	jal	%x1, vecset.2585  #2481 pc 33680
	addi	%x2, %x2, -92  #2481 pc 33684
	lw	%x1, 88(%x2) #2481 pc 33688
	lw	%x6, 0(%x2)  #2482 pc 33692
	addi	%x7, %x6, 1  #2482 pc 33696
	slli	%x7, %x7, 2  #2482 pc 33700
	lw	%x8, 40(%x2)  #2482 pc 33704
	add	%x31, %x7, %x8  #2482 pc 33708
	lw	%x7, 0(%x31)  #2482 pc 33712
	addi	%x6, %x7, 0  #0 pc 33716
	sw	%x1, 88(%x2)  #2482 pc 33720
	addi	%x2, %x2, 92  #2482 pc 33724
	jal	%x1, d_vec.2684  #2482 pc 33728
	addi	%x2, %x2, -92  #2482 pc 33732
	lw	%x1, 88(%x2) #2482 pc 33736
	flw	%f0, 64(%x2)  #2482 pc 33740
	sw	%x6, 88(%x2)  #2482 pc 33744
	sw	%x1, 92(%x2)  #2482 pc 33748
	addi	%x2, %x2, 96  #2482 pc 33752
	jal	%x1, fneg.2485  #2482 pc 33756
	addi	%x2, %x2, -96  #2482 pc 33760
	lw	%x1, 92(%x2) #2482 pc 33764
	flw	%f1, 56(%x2)  #2482 pc 33768
	fsw	%f0, 96(%x2)  #2482 pc 33772
	fadd	%f0, %f1, %f30  #0 pc 33776
	sw	%x1, 104(%x2)  #2482 pc 33780
	addi	%x2, %x2, 108  #2482 pc 33784
	jal	%x1, fneg.2485  #2482 pc 33788
	addi	%x2, %x2, -108  #2482 pc 33792
	lw	%x1, 104(%x2) #2482 pc 33796
	flw	%f1, 48(%x2)  #2482 pc 33800
	fsw	%f0, 104(%x2)  #2482 pc 33804
	fadd	%f0, %f1, %f30  #0 pc 33808
	sw	%x1, 112(%x2)  #2482 pc 33812
	addi	%x2, %x2, 116  #2482 pc 33816
	jal	%x1, fneg.2485  #2482 pc 33820
	addi	%x2, %x2, -116  #2482 pc 33824
	lw	%x1, 112(%x2) #2482 pc 33828
	fadd	%f2, %f0, %f30  #2482 pc 33832
	flw	%f0, 96(%x2)  #2482 pc 33836
	flw	%f1, 104(%x2)  #2482 pc 33840
	lw	%x6, 88(%x2)  #2482 pc 33844
	sw	%x1, 112(%x2)  #2482 pc 33848
	addi	%x2, %x2, 116  #2482 pc 33852
	jal	%x1, vecset.2585  #2482 pc 33856
	addi	%x2, %x2, -116  #2482 pc 33860
	lw	%x1, 112(%x2) #2482 pc 33864
	lw	%x6, 0(%x2)  #2483 pc 33868
	addi	%x7, %x6, 41  #2483 pc 33872
	slli	%x7, %x7, 2  #2483 pc 33876
	lw	%x8, 40(%x2)  #2483 pc 33880
	add	%x31, %x7, %x8  #2483 pc 33884
	lw	%x7, 0(%x31)  #2483 pc 33888
	addi	%x6, %x7, 0  #0 pc 33892
	sw	%x1, 112(%x2)  #2483 pc 33896
	addi	%x2, %x2, 116  #2483 pc 33900
	jal	%x1, d_vec.2684  #2483 pc 33904
	addi	%x2, %x2, -116  #2483 pc 33908
	lw	%x1, 112(%x2) #2483 pc 33912
	flw	%f0, 64(%x2)  #2483 pc 33916
	sw	%x6, 112(%x2)  #2483 pc 33920
	sw	%x1, 116(%x2)  #2483 pc 33924
	addi	%x2, %x2, 120  #2483 pc 33928
	jal	%x1, fneg.2485  #2483 pc 33932
	addi	%x2, %x2, -120  #2483 pc 33936
	lw	%x1, 116(%x2) #2483 pc 33940
	flw	%f1, 48(%x2)  #2483 pc 33944
	fsw	%f0, 120(%x2)  #2483 pc 33948
	fadd	%f0, %f1, %f30  #0 pc 33952
	sw	%x1, 128(%x2)  #2483 pc 33956
	addi	%x2, %x2, 132  #2483 pc 33960
	jal	%x1, fneg.2485  #2483 pc 33964
	addi	%x2, %x2, -132  #2483 pc 33968
	lw	%x1, 128(%x2) #2483 pc 33972
	fadd	%f1, %f0, %f30  #2483 pc 33976
	flw	%f0, 120(%x2)  #2483 pc 33980
	flw	%f2, 56(%x2)  #2483 pc 33984
	lw	%x6, 112(%x2)  #2483 pc 33988
	sw	%x1, 128(%x2)  #2483 pc 33992
	addi	%x2, %x2, 132  #2483 pc 33996
	jal	%x1, vecset.2585  #2483 pc 34000
	addi	%x2, %x2, -132  #2483 pc 34004
	lw	%x1, 128(%x2) #2483 pc 34008
	lw	%x6, 0(%x2)  #2484 pc 34012
	addi	%x6, %x6, 81  #2484 pc 34016
	slli	%x6, %x6, 2  #2484 pc 34020
	lw	%x7, 40(%x2)  #2484 pc 34024
	add	%x31, %x6, %x7  #2484 pc 34028
	lw	%x6, 0(%x31)  #2484 pc 34032
	sw	%x1, 128(%x2)  #2484 pc 34036
	addi	%x2, %x2, 132  #2484 pc 34040
	jal	%x1, d_vec.2684  #2484 pc 34044
	addi	%x2, %x2, -132  #2484 pc 34048
	lw	%x1, 128(%x2) #2484 pc 34052
	flw	%f0, 48(%x2)  #2484 pc 34056
	sw	%x6, 128(%x2)  #2484 pc 34060
	sw	%x1, 132(%x2)  #2484 pc 34064
	addi	%x2, %x2, 136  #2484 pc 34068
	jal	%x1, fneg.2485  #2484 pc 34072
	addi	%x2, %x2, -136  #2484 pc 34076
	lw	%x1, 132(%x2) #2484 pc 34080
	flw	%f1, 64(%x2)  #2484 pc 34084
	flw	%f2, 56(%x2)  #2484 pc 34088
	lw	%x6, 128(%x2)  #2484 pc 34092
	j	vecset.2585  #2484 pc 34096
	nop #pc 34100
bge_else.9433: #pc 34104
	fsw	%f2, 136(%x2)  #2486 pc 34104
	sw	%x8, 0(%x2)  #2486 pc 34108
	sw	%x7, 8(%x2)  #2486 pc 34112
	sw	%x29, 144(%x2)  #2486 pc 34116
	fsw	%f3, 152(%x2)  #2486 pc 34120
	sw	%x6, 160(%x2)  #2486 pc 34124
	fadd	%f0, %f1, %f30  #0 pc 34128
	fadd	%f1, %f2, %f30  #0 pc 34132
	sw	%x1, 164(%x2)  #2486 pc 34136
	addi	%x2, %x2, 168  #2486 pc 34140
	jal	%x1, adjust_position.3005  #2486 pc 34144
	addi	%x2, %x2, -168  #2486 pc 34148
	lw	%x1, 164(%x2) #2486 pc 34152
	lw	%x6, 160(%x2)  #2487 pc 34156
	addi	%x6, %x6, 1  #2487 pc 34160
	flw	%f1, 152(%x2)  #2487 pc 34164
	fsw	%f0, 168(%x2)  #2487 pc 34168
	sw	%x6, 176(%x2)  #2487 pc 34172
	sw	%x1, 180(%x2)  #2487 pc 34176
	addi	%x2, %x2, 184  #2487 pc 34180
	jal	%x1, adjust_position.3005  #2487 pc 34184
	addi	%x2, %x2, -184  #2487 pc 34188
	lw	%x1, 180(%x2) #2487 pc 34192
	fadd	%f1, %f0, %f30  #2487 pc 34196
	flw	%f0, 168(%x2)  #2487 pc 34200
	flw	%f2, 136(%x2)  #2487 pc 34204
	flw	%f3, 152(%x2)  #2487 pc 34208
	lw	%x6, 176(%x2)  #2487 pc 34212
	lw	%x7, 8(%x2)  #2487 pc 34216
	lw	%x8, 0(%x2)  #2487 pc 34220
	lw	%x29, 144(%x2)  #2487 pc 34224
	lw	%x30, 0(%x29)  #2487 pc 34228
	jalr	%x0, %x30, 0  #2487 pc 34232
	nop #pc 34236
calc_dirvecs.3016:  #pc 34240
	lw	%x9, 4(%x29)  #0 pc 34240
	bge	%x6, %x0, 12  #2492 pc 34244
	j	bge_else.9441 #pc 34248
	nop #pc 34252
	sw	%x29, 0(%x2)  #2494 pc 34256
	sw	%x6, 4(%x2)  #2494 pc 34260
	fsw	%f0, 8(%x2)  #2494 pc 34264
	sw	%x8, 16(%x2)  #2494 pc 34268
	sw	%x7, 20(%x2)  #2494 pc 34272
	sw	%x9, 24(%x2)  #2494 pc 34276
	sw	%x1, 28(%x2)  #2494 pc 34280
	addi	%x2, %x2, 32  #2494 pc 34284
	jal	%x1, float_of_int.2504  #2494 pc 34288
	addi	%x2, %x2, -32  #2494 pc 34292
	lw	%x1, 28(%x2) #2494 pc 34296
	fmv	%f1, l.6197  #0 pc 34300
	fmul	%f0, %f0, %f1  #2494 pc 34304
	fmv	%f1, l.6875  #0 pc 34308
	fsub	%f2, %f0, %f1  #2494 pc 34312
	addi	%x6, %x0, 0  #0 pc 34316
	fmv	%f0, l.6176  #0 pc 34320
	fmv	%f1, l.6176  #0 pc 34324
	flw	%f3, 8(%x2)  #2495 pc 34328
	lw	%x7, 20(%x2)  #2495 pc 34332
	lw	%x8, 16(%x2)  #2495 pc 34336
	lw	%x29, 24(%x2)  #2495 pc 34340
	sw	%x1, 28(%x2)  #2495 pc 34344
	lw	%x30, 0(%x29)  #2495 pc 34348
	addi	%x2, %x2, 32  #2495 pc 34352
	jalr	%x1, %x30, 0  #2495 pc 34356
	addi	%x2, %x2, -32  #2495 pc 34360
	lw	%x1, 28(%x2)  #2495 pc 34364
	lw	%x6, 4(%x2)  #2497 pc 34368
	sw	%x1, 28(%x2)  #2497 pc 34372
	addi	%x2, %x2, 32  #2497 pc 34376
	jal	%x1, float_of_int.2504  #2497 pc 34380
	addi	%x2, %x2, -32  #2497 pc 34384
	lw	%x1, 28(%x2) #2497 pc 34388
	fmv	%f1, l.6197  #0 pc 34392
	fmul	%f0, %f0, %f1  #2497 pc 34396
	fmv	%f1, l.6742  #0 pc 34400
	fadd	%f2, %f0, %f1  #2497 pc 34404
	addi	%x6, %x0, 0  #0 pc 34408
	fmv	%f0, l.6176  #0 pc 34412
	fmv	%f1, l.6176  #0 pc 34416
	lw	%x7, 16(%x2)  #2498 pc 34420
	addi	%x8, %x7, 2  #2498 pc 34424
	flw	%f3, 8(%x2)  #2498 pc 34428
	lw	%x9, 20(%x2)  #2498 pc 34432
	lw	%x29, 24(%x2)  #2498 pc 34436
	addi	%x7, %x9, 0  #0 pc 34440
	sw	%x1, 28(%x2)  #2498 pc 34444
	lw	%x30, 0(%x29)  #2498 pc 34448
	addi	%x2, %x2, 32  #2498 pc 34452
	jalr	%x1, %x30, 0  #2498 pc 34456
	addi	%x2, %x2, -32  #2498 pc 34460
	lw	%x1, 28(%x2)  #2498 pc 34464
	lw	%x6, 4(%x2)  #2500 pc 34468
	addi	%x6, %x6, -1  #2500 pc 34472
	addi	%x7, %x0, 1  #0 pc 34476
	lw	%x8, 20(%x2)  #2500 pc 34480
	sw	%x6, 28(%x2)  #2500 pc 34484
	addi	%x6, %x8, 0  #0 pc 34488
	sw	%x1, 32(%x2)  #2500 pc 34492
	addi	%x2, %x2, 36  #2500 pc 34496
	jal	%x1, add_mod5.2582  #2500 pc 34500
	addi	%x2, %x2, -36  #2500 pc 34504
	lw	%x1, 32(%x2) #2500 pc 34508
	addi	%x7, %x6, 0  #2500 pc 34512
	flw	%f0, 8(%x2)  #2500 pc 34516
	lw	%x6, 28(%x2)  #2500 pc 34520
	lw	%x8, 16(%x2)  #2500 pc 34524
	lw	%x29, 0(%x2)  #2500 pc 34528
	lw	%x30, 0(%x29)  #2500 pc 34532
	jalr	%x0, %x30, 0  #2500 pc 34536
	nop #pc 34540
bge_else.9441: #pc 34544
	ret #pc 34544
	nop #pc 34548
calc_dirvec_rows.3021:  #pc 34552
	lw	%x9, 4(%x29)  #0 pc 34552
	bge	%x6, %x0, 12  #2506 pc 34556
	j	bge_else.9443 #pc 34560
	nop #pc 34564
	sw	%x29, 0(%x2)  #2507 pc 34568
	sw	%x6, 4(%x2)  #2507 pc 34572
	sw	%x8, 8(%x2)  #2507 pc 34576
	sw	%x7, 12(%x2)  #2507 pc 34580
	sw	%x9, 16(%x2)  #2507 pc 34584
	sw	%x1, 20(%x2)  #2507 pc 34588
	addi	%x2, %x2, 24  #2507 pc 34592
	jal	%x1, float_of_int.2504  #2507 pc 34596
	addi	%x2, %x2, -24  #2507 pc 34600
	lw	%x1, 20(%x2) #2507 pc 34604
	fmv	%f1, l.6197  #0 pc 34608
	fmul	%f0, %f0, %f1  #2507 pc 34612
	fmv	%f1, l.6875  #0 pc 34616
	fsub	%f0, %f0, %f1  #2507 pc 34620
	addi	%x6, %x0, 4  #0 pc 34624
	lw	%x7, 12(%x2)  #2508 pc 34628
	lw	%x8, 8(%x2)  #2508 pc 34632
	lw	%x29, 16(%x2)  #2508 pc 34636
	sw	%x1, 20(%x2)  #2508 pc 34640
	lw	%x30, 0(%x29)  #2508 pc 34644
	addi	%x2, %x2, 24  #2508 pc 34648
	jalr	%x1, %x30, 0  #2508 pc 34652
	addi	%x2, %x2, -24  #2508 pc 34656
	lw	%x1, 20(%x2)  #2508 pc 34660
	lw	%x6, 4(%x2)  #2509 pc 34664
	addi	%x6, %x6, -1  #2509 pc 34668
	addi	%x7, %x0, 2  #0 pc 34672
	lw	%x8, 12(%x2)  #2509 pc 34676
	sw	%x6, 20(%x2)  #2509 pc 34680
	addi	%x6, %x8, 0  #0 pc 34684
	sw	%x1, 24(%x2)  #2509 pc 34688
	addi	%x2, %x2, 28  #2509 pc 34692
	jal	%x1, add_mod5.2582  #2509 pc 34696
	addi	%x2, %x2, -28  #2509 pc 34700
	lw	%x1, 24(%x2) #2509 pc 34704
	addi	%x7, %x6, 0  #2509 pc 34708
	lw	%x6, 8(%x2)  #2509 pc 34712
	addi	%x8, %x6, 4  #2509 pc 34716
	lw	%x6, 20(%x2)  #2509 pc 34720
	lw	%x29, 0(%x2)  #2509 pc 34724
	lw	%x30, 0(%x29)  #2509 pc 34728
	jalr	%x0, %x30, 0  #2509 pc 34732
	nop #pc 34736
bge_else.9443: #pc 34740
	ret #pc 34740
	nop #pc 34744
create_dirvec.3025:  #pc 34748
	lw	%x6, 4(%x29)  #0 pc 34748
	addi	%x7, %x0, 3  #0 pc 34752
	fmv	%f0, l.6176  #0 pc 34756
	sw	%x6, 0(%x2)  #2519 pc 34760
	addi	%x6, %x7, 0  #0 pc 34764
	sw	%x1, 4(%x2)  #2519 pc 34768
	addi	%x2, %x2, 8  #2519 pc 34772
	jal	%x1, create_float_array.2541  #2519 pc 34776
	addi	%x2, %x2, -8  #2519 pc 34780
	lw	%x1, 4(%x2) #2519 pc 34784
	addi	%x7, %x6, 0  #2519 pc 34788
	lw	%x6, 0(%x2)  #2520 pc 34792
	lw	%x6, 0(%x6)  #2520 pc 34796
	sw	%x7, 4(%x2)  #2520 pc 34800
	sw	%x1, 8(%x2)  #2520 pc 34804
	addi	%x2, %x2, 12  #2520 pc 34808
	jal	%x1, create_array.2534  #2520 pc 34812
	addi	%x2, %x2, -12  #2520 pc 34816
	lw	%x1, 8(%x2) #2520 pc 34820
	addi	%x7, %x3, 0  #2521 pc 34824
	addi	%x3, %x3, 8  #2521 pc 34828
	sw	%x6, 4(%x7)  #2521 pc 34832
	lw	%x6, 4(%x2)  #2521 pc 34836
	sw	%x6, 0(%x7)  #2521 pc 34840
	addi	%x6, %x7, 0  #2521 pc 34844
	ret #pc 34848
	nop #pc 34852
create_dirvec_elements.3027:  #pc 34856
	lw	%x8, 4(%x29)  #0 pc 34856
	bge	%x7, %x0, 12  #2525 pc 34860
	j	bge_else.9445 #pc 34864
	nop #pc 34868
	sw	%x29, 0(%x2)  #2526 pc 34872
	sw	%x6, 4(%x2)  #2526 pc 34876
	sw	%x7, 8(%x2)  #2526 pc 34880
	addi	%x29, %x8, 0  #0 pc 34884
	sw	%x1, 12(%x2)  #2526 pc 34888
	lw	%x30, 0(%x29)  #2526 pc 34892
	addi	%x2, %x2, 16  #2526 pc 34896
	jalr	%x1, %x30, 0  #2526 pc 34900
	addi	%x2, %x2, -16  #2526 pc 34904
	lw	%x1, 12(%x2)  #2526 pc 34908
	lw	%x7, 8(%x2)  #2526 pc 34912
	slli	%x8, %x7, 2  #2526 pc 34916
	lw	%x9, 4(%x2)  #2526 pc 34920
	add	%x31, %x8, %x9  #2526 pc 34924
	sw	%x6, 0(%x31)  #2526 pc 34928
	addi	%x7, %x7, -1  #2527 pc 34932
	lw	%x29, 0(%x2)  #2527 pc 34936
	addi	%x6, %x9, 0  #0 pc 34940
	lw	%x30, 0(%x29)  #2527 pc 34944
	jalr	%x0, %x30, 0  #2527 pc 34948
	nop #pc 34952
bge_else.9445: #pc 34956
	ret #pc 34956
	nop #pc 34960
create_dirvecs.3030:  #pc 34964
	lw	%x7, 12(%x29)  #0 pc 34964
	lw	%x8, 8(%x29)  #0 pc 34968
	lw	%x9, 4(%x29)  #0 pc 34972
	bge	%x6, %x0, 12  #2532 pc 34976
	j	bge_else.9447 #pc 34980
	nop #pc 34984
	addi	%x10, %x0, 120  #0 pc 34988
	sw	%x29, 0(%x2)  #2533 pc 34992
	sw	%x8, 4(%x2)  #2533 pc 34996
	sw	%x7, 8(%x2)  #2533 pc 35000
	sw	%x6, 12(%x2)  #2533 pc 35004
	sw	%x10, 16(%x2)  #2533 pc 35008
	addi	%x29, %x9, 0  #0 pc 35012
	sw	%x1, 20(%x2)  #2533 pc 35016
	lw	%x30, 0(%x29)  #2533 pc 35020
	addi	%x2, %x2, 24  #2533 pc 35024
	jalr	%x1, %x30, 0  #2533 pc 35028
	addi	%x2, %x2, -24  #2533 pc 35032
	lw	%x1, 20(%x2)  #2533 pc 35036
	addi	%x7, %x6, 0  #2533 pc 35040
	lw	%x6, 16(%x2)  #2533 pc 35044
	sw	%x1, 20(%x2)  #2533 pc 35048
	addi	%x2, %x2, 24  #2533 pc 35052
	jal	%x1, create_array.2534  #2533 pc 35056
	addi	%x2, %x2, -24  #2533 pc 35060
	lw	%x1, 20(%x2) #2533 pc 35064
	lw	%x7, 12(%x2)  #2533 pc 35068
	slli	%x8, %x7, 2  #2533 pc 35072
	lw	%x9, 8(%x2)  #2533 pc 35076
	add	%x31, %x8, %x9  #2533 pc 35080
	sw	%x6, 0(%x31)  #2533 pc 35084
	slli	%x6, %x7, 2  #2534 pc 35088
	add	%x31, %x6, %x9  #2534 pc 35092
	lw	%x6, 0(%x31)  #2534 pc 35096
	addi	%x8, %x0, 118  #0 pc 35100
	lw	%x29, 4(%x2)  #2534 pc 35104
	addi	%x7, %x8, 0  #0 pc 35108
	sw	%x1, 20(%x2)  #2534 pc 35112
	lw	%x30, 0(%x29)  #2534 pc 35116
	addi	%x2, %x2, 24  #2534 pc 35120
	jalr	%x1, %x30, 0  #2534 pc 35124
	addi	%x2, %x2, -24  #2534 pc 35128
	lw	%x1, 20(%x2)  #2534 pc 35132
	lw	%x6, 12(%x2)  #2535 pc 35136
	addi	%x6, %x6, -1  #2535 pc 35140
	lw	%x29, 0(%x2)  #2535 pc 35144
	lw	%x30, 0(%x29)  #2535 pc 35148
	jalr	%x0, %x30, 0  #2535 pc 35152
	nop #pc 35156
bge_else.9447: #pc 35160
	ret #pc 35160
	nop #pc 35164
init_dirvec_constants.3032:  #pc 35168
	lw	%x8, 4(%x29)  #0 pc 35168
	bge	%x7, %x0, 12  #2544 pc 35172
	j	bge_else.9449 #pc 35176
	nop #pc 35180
	slli	%x9, %x7, 2  #2545 pc 35184
	add	%x31, %x9, %x6  #2545 pc 35188
	lw	%x9, 0(%x31)  #2545 pc 35192
	sw	%x6, 0(%x2)  #2545 pc 35196
	sw	%x29, 4(%x2)  #2545 pc 35200
	sw	%x7, 8(%x2)  #2545 pc 35204
	addi	%x6, %x9, 0  #0 pc 35208
	addi	%x29, %x8, 0  #0 pc 35212
	sw	%x1, 12(%x2)  #2545 pc 35216
	lw	%x30, 0(%x29)  #2545 pc 35220
	addi	%x2, %x2, 16  #2545 pc 35224
	jalr	%x1, %x30, 0  #2545 pc 35228
	addi	%x2, %x2, -16  #2545 pc 35232
	lw	%x1, 12(%x2)  #2545 pc 35236
	lw	%x6, 8(%x2)  #2546 pc 35240
	addi	%x7, %x6, -1  #2546 pc 35244
	lw	%x6, 0(%x2)  #2546 pc 35248
	lw	%x29, 4(%x2)  #2546 pc 35252
	lw	%x30, 0(%x29)  #2546 pc 35256
	jalr	%x0, %x30, 0  #2546 pc 35260
	nop #pc 35264
bge_else.9449: #pc 35268
	ret #pc 35268
	nop #pc 35272
init_vecset_constants.3035:  #pc 35276
	lw	%x7, 8(%x29)  #0 pc 35276
	lw	%x8, 4(%x29)  #0 pc 35280
	bge	%x6, %x0, 12  #2551 pc 35284
	j	bge_else.9451 #pc 35288
	nop #pc 35292
	slli	%x9, %x6, 2  #2552 pc 35296
	add	%x31, %x9, %x8  #2552 pc 35300
	lw	%x8, 0(%x31)  #2552 pc 35304
	addi	%x9, %x0, 119  #0 pc 35308
	sw	%x29, 0(%x2)  #2552 pc 35312
	sw	%x6, 4(%x2)  #2552 pc 35316
	addi	%x6, %x8, 0  #0 pc 35320
	addi	%x29, %x7, 0  #0 pc 35324
	addi	%x7, %x9, 0  #0 pc 35328
	sw	%x1, 8(%x2)  #2552 pc 35332
	lw	%x30, 0(%x29)  #2552 pc 35336
	addi	%x2, %x2, 12  #2552 pc 35340
	jalr	%x1, %x30, 0  #2552 pc 35344
	addi	%x2, %x2, -12  #2552 pc 35348
	lw	%x1, 8(%x2)  #2552 pc 35352
	lw	%x6, 4(%x2)  #2553 pc 35356
	addi	%x6, %x6, -1  #2553 pc 35360
	lw	%x29, 0(%x2)  #2553 pc 35364
	lw	%x30, 0(%x29)  #2553 pc 35368
	jalr	%x0, %x30, 0  #2553 pc 35372
	nop #pc 35376
bge_else.9451: #pc 35380
	ret #pc 35380
	nop #pc 35384
init_dirvecs.3037:  #pc 35388
	lw	%x6, 12(%x29)  #0 pc 35388
	lw	%x7, 8(%x29)  #0 pc 35392
	lw	%x8, 4(%x29)  #0 pc 35396
	addi	%x9, %x0, 4  #0 pc 35400
	sw	%x6, 0(%x2)  #2558 pc 35404
	sw	%x8, 4(%x2)  #2558 pc 35408
	addi	%x6, %x9, 0  #0 pc 35412
	addi	%x29, %x7, 0  #0 pc 35416
	sw	%x1, 8(%x2)  #2558 pc 35420
	lw	%x30, 0(%x29)  #2558 pc 35424
	addi	%x2, %x2, 12  #2558 pc 35428
	jalr	%x1, %x30, 0  #2558 pc 35432
	addi	%x2, %x2, -12  #2558 pc 35436
	lw	%x1, 8(%x2)  #2558 pc 35440
	addi	%x6, %x0, 9  #0 pc 35444
	addi	%x7, %x0, 0  #0 pc 35448
	addi	%x8, %x0, 0  #0 pc 35452
	lw	%x29, 4(%x2)  #2559 pc 35456
	sw	%x1, 8(%x2)  #2559 pc 35460
	lw	%x30, 0(%x29)  #2559 pc 35464
	addi	%x2, %x2, 12  #2559 pc 35468
	jalr	%x1, %x30, 0  #2559 pc 35472
	addi	%x2, %x2, -12  #2559 pc 35476
	lw	%x1, 8(%x2)  #2559 pc 35480
	addi	%x6, %x0, 4  #0 pc 35484
	lw	%x29, 0(%x2)  #2560 pc 35488
	lw	%x30, 0(%x29)  #2560 pc 35492
	jalr	%x0, %x30, 0  #2560 pc 35496
	nop #pc 35500
add_reflection.3039:  #pc 35504
	lw	%x8, 12(%x29)  #0 pc 35504
	lw	%x9, 8(%x29)  #0 pc 35508
	lw	%x29, 4(%x29)  #0 pc 35512
	sw	%x9, 0(%x2)  #2569 pc 35516
	sw	%x6, 4(%x2)  #2569 pc 35520
	sw	%x7, 8(%x2)  #2569 pc 35524
	fsw	%f0, 16(%x2)  #2569 pc 35528
	sw	%x8, 24(%x2)  #2569 pc 35532
	fsw	%f3, 32(%x2)  #2569 pc 35536
	fsw	%f2, 40(%x2)  #2569 pc 35540
	fsw	%f1, 48(%x2)  #2569 pc 35544
	sw	%x1, 56(%x2)  #2569 pc 35548
	lw	%x30, 0(%x29)  #2569 pc 35552
	addi	%x2, %x2, 60  #2569 pc 35556
	jalr	%x1, %x30, 0  #2569 pc 35560
	addi	%x2, %x2, -60  #2569 pc 35564
	lw	%x1, 56(%x2)  #2569 pc 35568
	sw	%x6, 56(%x2)  #2570 pc 35572
	sw	%x1, 60(%x2)  #2570 pc 35576
	addi	%x2, %x2, 64  #2570 pc 35580
	jal	%x1, d_vec.2684  #2570 pc 35584
	addi	%x2, %x2, -64  #2570 pc 35588
	lw	%x1, 60(%x2) #2570 pc 35592
	flw	%f0, 48(%x2)  #2570 pc 35596
	flw	%f1, 40(%x2)  #2570 pc 35600
	flw	%f2, 32(%x2)  #2570 pc 35604
	sw	%x1, 60(%x2)  #2570 pc 35608
	addi	%x2, %x2, 64  #2570 pc 35612
	jal	%x1, vecset.2585  #2570 pc 35616
	addi	%x2, %x2, -64  #2570 pc 35620
	lw	%x1, 60(%x2) #2570 pc 35624
	lw	%x6, 56(%x2)  #2571 pc 35628
	lw	%x29, 24(%x2)  #2571 pc 35632
	sw	%x1, 60(%x2)  #2571 pc 35636
	lw	%x30, 0(%x29)  #2571 pc 35640
	addi	%x2, %x2, 64  #2571 pc 35644
	jalr	%x1, %x30, 0  #2571 pc 35648
	addi	%x2, %x2, -64  #2571 pc 35652
	lw	%x1, 60(%x2)  #2571 pc 35656
	addi	%x6, %x3, 0  #2573 pc 35660
	addi	%x3, %x3, 12  #2573 pc 35664
	flw	%f0, 16(%x2)  #2573 pc 35668
	fsw	%f0, 8(%x6)  #2573 pc 35672
	lw	%x7, 56(%x2)  #2573 pc 35676
	sw	%x7, 4(%x6)  #2573 pc 35680
	lw	%x7, 8(%x2)  #2573 pc 35684
	sw	%x7, 0(%x6)  #2573 pc 35688
	lw	%x7, 4(%x2)  #2573 pc 35692
	slli	%x7, %x7, 2  #2573 pc 35696
	lw	%x8, 0(%x2)  #2573 pc 35700
	add	%x31, %x7, %x8  #2573 pc 35704
	sw	%x6, 0(%x31)  #2573 pc 35708
	ret #pc 35712
	nop #pc 35716
setup_rect_reflection.3046:  #pc 35720
	lw	%x8, 12(%x29)  #0 pc 35720
	lw	%x9, 8(%x29)  #0 pc 35724
	lw	%x10, 4(%x29)  #0 pc 35728
	addi	%x11, %x0, 4  #0 pc 35732
	sw	%x10, 0(%x2)  #2578 pc 35736
	sw	%x9, 4(%x2)  #2578 pc 35740
	sw	%x7, 8(%x2)  #2578 pc 35744
	sw	%x8, 12(%x2)  #2578 pc 35748
	addi	%x7, %x11, 0  #0 pc 35752
	sw	%x1, 16(%x2)  #2578 pc 35756
	addi	%x2, %x2, 20  #2578 pc 35760
	jal	%x1, mul.2513  #2578 pc 35764
	addi	%x2, %x2, -20  #2578 pc 35768
	lw	%x1, 16(%x2) #2578 pc 35772
	lw	%x7, 12(%x2)  #2579 pc 35776
	lw	%x8, 0(%x7)  #2579 pc 35780
	fmv	%f0, l.6188  #0 pc 35784
	lw	%x9, 8(%x2)  #2580 pc 35788
	sw	%x8, 16(%x2)  #2580 pc 35792
	sw	%x6, 20(%x2)  #2580 pc 35796
	fsw	%f0, 24(%x2)  #2580 pc 35800
	addi	%x6, %x9, 0  #0 pc 35804
	sw	%x1, 32(%x2)  #2580 pc 35808
	addi	%x2, %x2, 36  #2580 pc 35812
	jal	%x1, o_diffuse.2647  #2580 pc 35816
	addi	%x2, %x2, -36  #2580 pc 35820
	lw	%x1, 32(%x2) #2580 pc 35824
	flw	%f1, 24(%x2)  #2580 pc 35828
	fsub	%f0, %f1, %f0  #2580 pc 35832
	lw	%x6, 4(%x2)  #2581 pc 35836
	flw	%f1, 0(%x6)  #2581 pc 35840
	fsw	%f0, 32(%x2)  #2581 pc 35844
	fadd	%f0, %f1, %f30  #0 pc 35848
	sw	%x1, 40(%x2)  #2581 pc 35852
	addi	%x2, %x2, 44  #2581 pc 35856
	jal	%x1, fneg.2485  #2581 pc 35860
	addi	%x2, %x2, -44  #2581 pc 35864
	lw	%x1, 40(%x2) #2581 pc 35868
	lw	%x6, 4(%x2)  #2582 pc 35872
	flw	%f1, 4(%x6)  #2582 pc 35876
	fsw	%f0, 40(%x2)  #2582 pc 35880
	fadd	%f0, %f1, %f30  #0 pc 35884
	sw	%x1, 48(%x2)  #2582 pc 35888
	addi	%x2, %x2, 52  #2582 pc 35892
	jal	%x1, fneg.2485  #2582 pc 35896
	addi	%x2, %x2, -52  #2582 pc 35900
	lw	%x1, 48(%x2) #2582 pc 35904
	lw	%x6, 4(%x2)  #2583 pc 35908
	flw	%f1, 8(%x6)  #2583 pc 35912
	fsw	%f0, 48(%x2)  #2583 pc 35916
	fadd	%f0, %f1, %f30  #0 pc 35920
	sw	%x1, 56(%x2)  #2583 pc 35924
	addi	%x2, %x2, 60  #2583 pc 35928
	jal	%x1, fneg.2485  #2583 pc 35932
	addi	%x2, %x2, -60  #2583 pc 35936
	lw	%x1, 56(%x2) #2583 pc 35940
	fadd	%f3, %f0, %f30  #2583 pc 35944
	lw	%x6, 20(%x2)  #2584 pc 35948
	addi	%x7, %x6, 1  #2584 pc 35952
	lw	%x8, 4(%x2)  #2584 pc 35956
	flw	%f1, 0(%x8)  #2584 pc 35960
	flw	%f0, 32(%x2)  #2584 pc 35964
	flw	%f2, 48(%x2)  #2584 pc 35968
	lw	%x9, 16(%x2)  #2584 pc 35972
	lw	%x29, 0(%x2)  #2584 pc 35976
	fsw	%f3, 56(%x2)  #2584 pc 35980
	addi	%x6, %x9, 0  #0 pc 35984
	sw	%x1, 64(%x2)  #2584 pc 35988
	lw	%x30, 0(%x29)  #2584 pc 35992
	addi	%x2, %x2, 68  #2584 pc 35996
	jalr	%x1, %x30, 0  #2584 pc 36000
	addi	%x2, %x2, -68  #2584 pc 36004
	lw	%x1, 64(%x2)  #2584 pc 36008
	lw	%x6, 16(%x2)  #2585 pc 36012
	addi	%x7, %x6, 1  #2585 pc 36016
	lw	%x8, 20(%x2)  #2585 pc 36020
	addi	%x9, %x8, 2  #2585 pc 36024
	lw	%x10, 4(%x2)  #2585 pc 36028
	flw	%f2, 4(%x10)  #2585 pc 36032
	flw	%f0, 32(%x2)  #2585 pc 36036
	flw	%f1, 40(%x2)  #2585 pc 36040
	flw	%f3, 56(%x2)  #2585 pc 36044
	lw	%x29, 0(%x2)  #2585 pc 36048
	addi	%x6, %x7, 0  #0 pc 36052
	addi	%x7, %x9, 0  #0 pc 36056
	sw	%x1, 64(%x2)  #2585 pc 36060
	lw	%x30, 0(%x29)  #2585 pc 36064
	addi	%x2, %x2, 68  #2585 pc 36068
	jalr	%x1, %x30, 0  #2585 pc 36072
	addi	%x2, %x2, -68  #2585 pc 36076
	lw	%x1, 64(%x2)  #2585 pc 36080
	lw	%x6, 16(%x2)  #2586 pc 36084
	addi	%x7, %x6, 2  #2586 pc 36088
	lw	%x8, 20(%x2)  #2586 pc 36092
	addi	%x8, %x8, 3  #2586 pc 36096
	lw	%x9, 4(%x2)  #2586 pc 36100
	flw	%f3, 8(%x9)  #2586 pc 36104
	flw	%f0, 32(%x2)  #2586 pc 36108
	flw	%f1, 40(%x2)  #2586 pc 36112
	flw	%f2, 48(%x2)  #2586 pc 36116
	lw	%x29, 0(%x2)  #2586 pc 36120
	addi	%x6, %x7, 0  #0 pc 36124
	addi	%x7, %x8, 0  #0 pc 36128
	sw	%x1, 64(%x2)  #2586 pc 36132
	lw	%x30, 0(%x29)  #2586 pc 36136
	addi	%x2, %x2, 68  #2586 pc 36140
	jalr	%x1, %x30, 0  #2586 pc 36144
	addi	%x2, %x2, -68  #2586 pc 36148
	lw	%x1, 64(%x2)  #2586 pc 36152
	lw	%x6, 16(%x2)  #2587 pc 36156
	addi	%x6, %x6, 3  #2587 pc 36160
	lw	%x7, 12(%x2)  #2587 pc 36164
	sw	%x6, 0(%x7)  #2587 pc 36168
	ret #pc 36172
	nop #pc 36176
setup_surface_reflection.3049:  #pc 36180
	lw	%x8, 12(%x29)  #0 pc 36180
	lw	%x9, 8(%x29)  #0 pc 36184
	lw	%x10, 4(%x29)  #0 pc 36188
	addi	%x11, %x0, 4  #0 pc 36192
	sw	%x10, 0(%x2)  #2592 pc 36196
	sw	%x9, 4(%x2)  #2592 pc 36200
	sw	%x7, 8(%x2)  #2592 pc 36204
	sw	%x8, 12(%x2)  #2592 pc 36208
	addi	%x7, %x11, 0  #0 pc 36212
	sw	%x1, 16(%x2)  #2592 pc 36216
	addi	%x2, %x2, 20  #2592 pc 36220
	jal	%x1, mul.2513  #2592 pc 36224
	addi	%x2, %x2, -20  #2592 pc 36228
	lw	%x1, 16(%x2) #2592 pc 36232
	addi	%x6, %x6, 1  #2592 pc 36236
	lw	%x7, 12(%x2)  #2593 pc 36240
	lw	%x8, 0(%x7)  #2593 pc 36244
	fmv	%f0, l.6188  #0 pc 36248
	lw	%x9, 8(%x2)  #2594 pc 36252
	sw	%x6, 16(%x2)  #2594 pc 36256
	sw	%x8, 20(%x2)  #2594 pc 36260
	fsw	%f0, 24(%x2)  #2594 pc 36264
	addi	%x6, %x9, 0  #0 pc 36268
	sw	%x1, 32(%x2)  #2594 pc 36272
	addi	%x2, %x2, 36  #2594 pc 36276
	jal	%x1, o_diffuse.2647  #2594 pc 36280
	addi	%x2, %x2, -36  #2594 pc 36284
	lw	%x1, 32(%x2) #2594 pc 36288
	flw	%f1, 24(%x2)  #2594 pc 36292
	fsub	%f0, %f1, %f0  #2594 pc 36296
	lw	%x6, 8(%x2)  #2595 pc 36300
	fsw	%f0, 32(%x2)  #2595 pc 36304
	sw	%x1, 40(%x2)  #2595 pc 36308
	addi	%x2, %x2, 44  #2595 pc 36312
	jal	%x1, o_param_abc.2639  #2595 pc 36316
	addi	%x2, %x2, -44  #2595 pc 36320
	lw	%x1, 40(%x2) #2595 pc 36324
	addi	%x7, %x6, 0  #2595 pc 36328
	lw	%x6, 4(%x2)  #2595 pc 36332
	sw	%x1, 40(%x2)  #2595 pc 36336
	addi	%x2, %x2, 44  #2595 pc 36340
	jal	%x1, veciprod.2601  #2595 pc 36344
	addi	%x2, %x2, -44  #2595 pc 36348
	lw	%x1, 40(%x2) #2595 pc 36352
	fmv	%f1, l.6346  #0 pc 36356
	lw	%x6, 8(%x2)  #2598 pc 36360
	fsw	%f0, 40(%x2)  #2598 pc 36364
	fsw	%f1, 48(%x2)  #2598 pc 36368
	sw	%x1, 56(%x2)  #2598 pc 36372
	addi	%x2, %x2, 60  #2598 pc 36376
	jal	%x1, o_param_a.2633  #2598 pc 36380
	addi	%x2, %x2, -60  #2598 pc 36384
	lw	%x1, 56(%x2) #2598 pc 36388
	flw	%f1, 48(%x2)  #2598 pc 36392
	fmul	%f0, %f1, %f0  #2598 pc 36396
	flw	%f1, 40(%x2)  #2598 pc 36400
	fmul	%f0, %f0, %f1  #2598 pc 36404
	lw	%x6, 4(%x2)  #2598 pc 36408
	flw	%f2, 0(%x6)  #2598 pc 36412
	fsub	%f0, %f0, %f2  #2598 pc 36416
	fmv	%f2, l.6346  #0 pc 36420
	lw	%x7, 8(%x2)  #2599 pc 36424
	fsw	%f0, 56(%x2)  #2599 pc 36428
	fsw	%f2, 64(%x2)  #2599 pc 36432
	addi	%x6, %x7, 0  #0 pc 36436
	sw	%x1, 72(%x2)  #2599 pc 36440
	addi	%x2, %x2, 76  #2599 pc 36444
	jal	%x1, o_param_b.2635  #2599 pc 36448
	addi	%x2, %x2, -76  #2599 pc 36452
	lw	%x1, 72(%x2) #2599 pc 36456
	flw	%f1, 64(%x2)  #2599 pc 36460
	fmul	%f0, %f1, %f0  #2599 pc 36464
	flw	%f1, 40(%x2)  #2599 pc 36468
	fmul	%f0, %f0, %f1  #2599 pc 36472
	lw	%x6, 4(%x2)  #2599 pc 36476
	flw	%f2, 4(%x6)  #2599 pc 36480
	fsub	%f0, %f0, %f2  #2599 pc 36484
	fmv	%f2, l.6346  #0 pc 36488
	lw	%x7, 8(%x2)  #2600 pc 36492
	fsw	%f0, 72(%x2)  #2600 pc 36496
	fsw	%f2, 80(%x2)  #2600 pc 36500
	addi	%x6, %x7, 0  #0 pc 36504
	sw	%x1, 88(%x2)  #2600 pc 36508
	addi	%x2, %x2, 92  #2600 pc 36512
	jal	%x1, o_param_c.2637  #2600 pc 36516
	addi	%x2, %x2, -92  #2600 pc 36520
	lw	%x1, 88(%x2) #2600 pc 36524
	flw	%f1, 80(%x2)  #2600 pc 36528
	fmul	%f0, %f1, %f0  #2600 pc 36532
	flw	%f1, 40(%x2)  #2600 pc 36536
	fmul	%f0, %f0, %f1  #2600 pc 36540
	lw	%x6, 4(%x2)  #2600 pc 36544
	flw	%f1, 8(%x6)  #2600 pc 36548
	fsub	%f3, %f0, %f1  #2600 pc 36552
	flw	%f0, 32(%x2)  #2597 pc 36556
	flw	%f1, 56(%x2)  #2597 pc 36560
	flw	%f2, 72(%x2)  #2597 pc 36564
	lw	%x6, 20(%x2)  #2597 pc 36568
	lw	%x7, 16(%x2)  #2597 pc 36572
	lw	%x29, 0(%x2)  #2597 pc 36576
	sw	%x1, 88(%x2)  #2597 pc 36580
	lw	%x30, 0(%x29)  #2597 pc 36584
	addi	%x2, %x2, 92  #2597 pc 36588
	jalr	%x1, %x30, 0  #2597 pc 36592
	addi	%x2, %x2, -92  #2597 pc 36596
	lw	%x1, 88(%x2)  #2597 pc 36600
	lw	%x6, 20(%x2)  #2601 pc 36604
	addi	%x6, %x6, 1  #2601 pc 36608
	lw	%x7, 12(%x2)  #2601 pc 36612
	sw	%x6, 0(%x7)  #2601 pc 36616
	ret #pc 36620
	nop #pc 36624
setup_reflections.3052:  #pc 36628
	lw	%x7, 12(%x29)  #0 pc 36628
	lw	%x8, 8(%x29)  #0 pc 36632
	lw	%x9, 4(%x29)  #0 pc 36636
	bge	%x6, %x0, 12  #2607 pc 36640
	j	bge_else.9458 #pc 36644
	nop #pc 36648
	slli	%x10, %x6, 2  #2608 pc 36652
	add	%x31, %x10, %x9  #2608 pc 36656
	lw	%x9, 0(%x31)  #2608 pc 36660
	sw	%x7, 0(%x2)  #2609 pc 36664
	sw	%x6, 4(%x2)  #2609 pc 36668
	sw	%x8, 8(%x2)  #2609 pc 36672
	sw	%x9, 12(%x2)  #2609 pc 36676
	addi	%x6, %x9, 0  #0 pc 36680
	sw	%x1, 16(%x2)  #2609 pc 36684
	addi	%x2, %x2, 20  #2609 pc 36688
	jal	%x1, o_reflectiontype.2627  #2609 pc 36692
	addi	%x2, %x2, -20  #2609 pc 36696
	lw	%x1, 16(%x2) #2609 pc 36700
	addi	%x31, %x0, 2  #pc 36704
	beq	%x6, %x31, 12  #2609 pc 36708
	j	be_else.9459 #pc 36712
	nop #pc 36716
	lw	%x6, 12(%x2)  #2610 pc 36720
	sw	%x1, 16(%x2)  #2610 pc 36724
	addi	%x2, %x2, 20  #2610 pc 36728
	jal	%x1, o_diffuse.2647  #2610 pc 36732
	addi	%x2, %x2, -20  #2610 pc 36736
	lw	%x1, 16(%x2) #2610 pc 36740
	fmv	%f1, l.6188  #0 pc 36744
	sw	%x1, 16(%x2)  #2610 pc 36748
	addi	%x2, %x2, 20  #2610 pc 36752
	jal	%x1, fless.2491  #2610 pc 36756
	addi	%x2, %x2, -20  #2610 pc 36760
	lw	%x1, 16(%x2) #2610 pc 36764
	beq	%x6, %x0, 12  #2610 pc 36768
	j	be_else.9460 #pc 36772
	nop #pc 36776
	ret #pc 36780
	nop #pc 36784
be_else.9460: #pc 36788
	lw	%x6, 12(%x2)  #2611 pc 36788
	sw	%x1, 16(%x2)  #2611 pc 36792
	addi	%x2, %x2, 20  #2611 pc 36796
	jal	%x1, o_form.2625  #2611 pc 36800
	addi	%x2, %x2, -20  #2611 pc 36804
	lw	%x1, 16(%x2) #2611 pc 36808
	addi	%x31, %x0, 1  #pc 36812
	beq	%x6, %x31, 12  #2613 pc 36816
	j	be_else.9462 #pc 36820
	nop #pc 36824
	lw	%x6, 4(%x2)  #2614 pc 36828
	lw	%x7, 12(%x2)  #2614 pc 36832
	lw	%x29, 8(%x2)  #2614 pc 36836
	lw	%x30, 0(%x29)  #2614 pc 36840
	jalr	%x0, %x30, 0  #2614 pc 36844
	nop #pc 36848
be_else.9462: #pc 36852
	addi	%x31, %x0, 2  #pc 36852
	beq	%x6, %x31, 12  #2615 pc 36856
	j	be_else.9463 #pc 36860
	nop #pc 36864
	lw	%x6, 4(%x2)  #2616 pc 36868
	lw	%x7, 12(%x2)  #2616 pc 36872
	lw	%x29, 0(%x2)  #2616 pc 36876
	lw	%x30, 0(%x29)  #2616 pc 36880
	jalr	%x0, %x30, 0  #2616 pc 36884
	nop #pc 36888
be_else.9463: #pc 36892
	ret #pc 36892
	nop #pc 36896
be_else.9459: #pc 36900
	ret #pc 36900
	nop #pc 36904
bge_else.9458: #pc 36908
	ret #pc 36908
	nop #pc 36912
rt.3054:  #pc 36916
	lw	%x9, 56(%x29)  #0 pc 36916
	lw	%x10, 52(%x29)  #0 pc 36920
	lw	%x11, 48(%x29)  #0 pc 36924
	lw	%x12, 44(%x29)  #0 pc 36928
	lw	%x13, 40(%x29)  #0 pc 36932
	lw	%x14, 36(%x29)  #0 pc 36936
	lw	%x15, 32(%x29)  #0 pc 36940
	lw	%x16, 28(%x29)  #0 pc 36944
	lw	%x17, 24(%x29)  #0 pc 36948
	lw	%x18, 20(%x29)  #0 pc 36952
	lw	%x19, 16(%x29)  #0 pc 36956
	lw	%x20, 12(%x29)  #0 pc 36960
	lw	%x21, 8(%x29)  #0 pc 36964
	lw	%x22, 4(%x29)  #0 pc 36968
	sw	%x6, 0(%x20)  #2629 pc 36972
	sw	%x7, 4(%x20)  #2630 pc 36976
	addi	%x20, %x0, 2  #0 pc 36980
	sw	%x13, 0(%x2)  #2631 pc 36984
	sw	%x15, 4(%x2)  #2631 pc 36988
	sw	%x10, 8(%x2)  #2631 pc 36992
	sw	%x16, 12(%x2)  #2631 pc 36996
	sw	%x11, 16(%x2)  #2631 pc 37000
	sw	%x18, 20(%x2)  #2631 pc 37004
	sw	%x17, 24(%x2)  #2631 pc 37008
	sw	%x19, 28(%x2)  #2631 pc 37012
	sw	%x8, 32(%x2)  #2631 pc 37016
	sw	%x9, 36(%x2)  #2631 pc 37020
	sw	%x14, 40(%x2)  #2631 pc 37024
	sw	%x22, 44(%x2)  #2631 pc 37028
	sw	%x12, 48(%x2)  #2631 pc 37032
	sw	%x6, 52(%x2)  #2631 pc 37036
	sw	%x7, 56(%x2)  #2631 pc 37040
	sw	%x21, 60(%x2)  #2631 pc 37044
	addi	%x7, %x20, 0  #0 pc 37048
	sw	%x1, 64(%x2)  #2631 pc 37052
	addi	%x2, %x2, 68  #2631 pc 37056
	jal	%x1, div.2521  #2631 pc 37060
	addi	%x2, %x2, -68  #2631 pc 37064
	lw	%x1, 64(%x2) #2631 pc 37068
	lw	%x7, 60(%x2)  #2631 pc 37072
	sw	%x6, 0(%x7)  #2631 pc 37076
	addi	%x6, %x0, 2  #0 pc 37080
	lw	%x8, 56(%x2)  #2632 pc 37084
	addi	%x7, %x6, 0  #0 pc 37088
	addi	%x6, %x8, 0  #0 pc 37092
	sw	%x1, 64(%x2)  #2632 pc 37096
	addi	%x2, %x2, 68  #2632 pc 37100
	jal	%x1, div.2521  #2632 pc 37104
	addi	%x2, %x2, -68  #2632 pc 37108
	lw	%x1, 64(%x2) #2632 pc 37112
	lw	%x7, 60(%x2)  #2632 pc 37116
	sw	%x6, 4(%x7)  #2632 pc 37120
	fmv	%f0, l.6924  #0 pc 37124
	lw	%x6, 52(%x2)  #2633 pc 37128
	fsw	%f0, 64(%x2)  #2633 pc 37132
	sw	%x1, 72(%x2)  #2633 pc 37136
	addi	%x2, %x2, 76  #2633 pc 37140
	jal	%x1, float_of_int.2504  #2633 pc 37144
	addi	%x2, %x2, -76  #2633 pc 37148
	lw	%x1, 72(%x2) #2633 pc 37152
	flw	%f1, 64(%x2)  #2633 pc 37156
	fdiv	%f0, %f1, %f0  #2633 pc 37160
	lw	%x6, 48(%x2)  #2633 pc 37164
	fsw	%f0, 0(%x6)  #2633 pc 37168
	lw	%x29, 44(%x2)  #2634 pc 37172
	sw	%x1, 72(%x2)  #2634 pc 37176
	lw	%x30, 0(%x29)  #2634 pc 37180
	addi	%x2, %x2, 76  #2634 pc 37184
	jalr	%x1, %x30, 0  #2634 pc 37188
	addi	%x2, %x2, -76  #2634 pc 37192
	lw	%x1, 72(%x2)  #2634 pc 37196
	lw	%x29, 44(%x2)  #2635 pc 37200
	sw	%x6, 72(%x2)  #2635 pc 37204
	sw	%x1, 76(%x2)  #2635 pc 37208
	lw	%x30, 0(%x29)  #2635 pc 37212
	addi	%x2, %x2, 80  #2635 pc 37216
	jalr	%x1, %x30, 0  #2635 pc 37220
	addi	%x2, %x2, -80  #2635 pc 37224
	lw	%x1, 76(%x2)  #2635 pc 37228
	lw	%x29, 44(%x2)  #2636 pc 37232
	sw	%x6, 76(%x2)  #2636 pc 37236
	sw	%x1, 80(%x2)  #2636 pc 37240
	lw	%x30, 0(%x29)  #2636 pc 37244
	addi	%x2, %x2, 84  #2636 pc 37248
	jalr	%x1, %x30, 0  #2636 pc 37252
	addi	%x2, %x2, -84  #2636 pc 37256
	lw	%x1, 80(%x2)  #2636 pc 37260
	lw	%x29, 40(%x2)  #2637 pc 37264
	sw	%x6, 80(%x2)  #2637 pc 37268
	sw	%x1, 84(%x2)  #2637 pc 37272
	lw	%x30, 0(%x29)  #2637 pc 37276
	addi	%x2, %x2, 88  #2637 pc 37280
	jalr	%x1, %x30, 0  #2637 pc 37284
	addi	%x2, %x2, -88  #2637 pc 37288
	lw	%x1, 84(%x2)  #2637 pc 37292
	lw	%x6, 32(%x2)  #2638 pc 37296
	lw	%x29, 36(%x2)  #2638 pc 37300
	sw	%x1, 84(%x2)  #2638 pc 37304
	lw	%x30, 0(%x29)  #2638 pc 37308
	addi	%x2, %x2, 88  #2638 pc 37312
	jalr	%x1, %x30, 0  #2638 pc 37316
	addi	%x2, %x2, -88  #2638 pc 37320
	lw	%x1, 84(%x2)  #2638 pc 37324
	lw	%x29, 28(%x2)  #2639 pc 37328
	sw	%x1, 84(%x2)  #2639 pc 37332
	lw	%x30, 0(%x29)  #2639 pc 37336
	addi	%x2, %x2, 88  #2639 pc 37340
	jalr	%x1, %x30, 0  #2639 pc 37344
	addi	%x2, %x2, -88  #2639 pc 37348
	lw	%x1, 84(%x2)  #2639 pc 37352
	lw	%x6, 24(%x2)  #2640 pc 37356
	sw	%x1, 84(%x2)  #2640 pc 37360
	addi	%x2, %x2, 88  #2640 pc 37364
	jal	%x1, d_vec.2684  #2640 pc 37368
	addi	%x2, %x2, -88  #2640 pc 37372
	lw	%x1, 84(%x2) #2640 pc 37376
	lw	%x7, 20(%x2)  #2640 pc 37380
	sw	%x1, 84(%x2)  #2640 pc 37384
	addi	%x2, %x2, 88  #2640 pc 37388
	jal	%x1, veccpy.2595  #2640 pc 37392
	addi	%x2, %x2, -88  #2640 pc 37396
	lw	%x1, 84(%x2) #2640 pc 37400
	lw	%x6, 24(%x2)  #2641 pc 37404
	lw	%x29, 16(%x2)  #2641 pc 37408
	sw	%x1, 84(%x2)  #2641 pc 37412
	lw	%x30, 0(%x29)  #2641 pc 37416
	addi	%x2, %x2, 88  #2641 pc 37420
	jalr	%x1, %x30, 0  #2641 pc 37424
	addi	%x2, %x2, -88  #2641 pc 37428
	lw	%x1, 84(%x2)  #2641 pc 37432
	lw	%x6, 12(%x2)  #2642 pc 37436
	lw	%x6, 0(%x6)  #2642 pc 37440
	addi	%x6, %x6, -1  #2642 pc 37444
	lw	%x29, 8(%x2)  #2642 pc 37448
	sw	%x1, 84(%x2)  #2642 pc 37452
	lw	%x30, 0(%x29)  #2642 pc 37456
	addi	%x2, %x2, 88  #2642 pc 37460
	jalr	%x1, %x30, 0  #2642 pc 37464
	addi	%x2, %x2, -88  #2642 pc 37468
	lw	%x1, 84(%x2)  #2642 pc 37472
	addi	%x7, %x0, 0  #0 pc 37476
	addi	%x8, %x0, 0  #0 pc 37480
	lw	%x6, 76(%x2)  #2643 pc 37484
	lw	%x29, 4(%x2)  #2643 pc 37488
	sw	%x1, 84(%x2)  #2643 pc 37492
	lw	%x30, 0(%x29)  #2643 pc 37496
	addi	%x2, %x2, 88  #2643 pc 37500
	jalr	%x1, %x30, 0  #2643 pc 37504
	addi	%x2, %x2, -88  #2643 pc 37508
	lw	%x1, 84(%x2)  #2643 pc 37512
	addi	%x6, %x0, 0  #0 pc 37516
	addi	%x10, %x0, 2  #0 pc 37520
	lw	%x7, 72(%x2)  #2644 pc 37524
	lw	%x8, 76(%x2)  #2644 pc 37528
	lw	%x9, 80(%x2)  #2644 pc 37532
	lw	%x11, 32(%x2)  #2644 pc 37536
	lw	%x29, 0(%x2)  #2644 pc 37540
	lw	%x30, 0(%x29)  #2644 pc 37544
	jalr	%x0, %x30, 0  #2644 pc 37548
	nop #pc 37552
.global	min_caml_start
min_caml_start:
	addi	%x2, %x0, 1000000
	addi	%x3, %x0, 1002000
	addi	%x4, %x0, 8192
	addi	%x5, %x0, 65536
	addi	%x6, %x0, 1  #0 pc 37572
	addi	%x7, %x0, 0  #0 pc 37576
	sw	%x1, 0(%x2)  #223 pc 37580
	addi	%x2, %x2, 4  #223 pc 37584
	jal	%x1, create_array.2534  #223 pc 37588
	addi	%x2, %x2, -4  #223 pc 37592
	lw	%x1, 0(%x2) #223 pc 37596
	addi	%x7, %x0, 0  #0 pc 37600
	fmv	%f0, l.6176  #0 pc 37604
	sw	%x6, 0(%x2)  #228 pc 37608
	addi	%x6, %x7, 0  #0 pc 37612
	sw	%x1, 4(%x2)  #228 pc 37616
	addi	%x2, %x2, 8  #228 pc 37620
	jal	%x1, create_float_array.2541  #228 pc 37624
	addi	%x2, %x2, -8  #228 pc 37628
	lw	%x1, 4(%x2) #228 pc 37632
	addi	%x7, %x0, 60  #0 pc 37636
	addi	%x8, %x0, 0  #0 pc 37640
	addi	%x9, %x3, 0  #229 pc 37644
	addi	%x3, %x3, 44  #229 pc 37648
	sw	%x6, 40(%x9)  #229 pc 37652
	sw	%x6, 36(%x9)  #229 pc 37656
	sw	%x6, 32(%x9)  #229 pc 37660
	sw	%x6, 28(%x9)  #229 pc 37664
	sw	%x8, 24(%x9)  #229 pc 37668
	sw	%x6, 20(%x9)  #229 pc 37672
	sw	%x6, 16(%x9)  #229 pc 37676
	sw	%x8, 12(%x9)  #229 pc 37680
	sw	%x8, 8(%x9)  #229 pc 37684
	sw	%x8, 4(%x9)  #229 pc 37688
	sw	%x8, 0(%x9)  #229 pc 37692
	addi	%x6, %x9, 0  #229 pc 37696
	addi	%x30, %x7, 0  #0 pc 37700
	addi	%x7, %x6, 0  #0 pc 37704
	addi	%x6, %x30, 0  #0 pc 37708
	sw	%x1, 4(%x2)  #229 pc 37712
	addi	%x2, %x2, 8  #229 pc 37716
	jal	%x1, create_array.2534  #229 pc 37720
	addi	%x2, %x2, -8  #229 pc 37724
	lw	%x1, 4(%x2) #229 pc 37728
	addi	%x7, %x0, 3  #0 pc 37732
	fmv	%f0, l.6176  #0 pc 37736
	sw	%x6, 4(%x2)  #233 pc 37740
	addi	%x6, %x7, 0  #0 pc 37744
	sw	%x1, 8(%x2)  #233 pc 37748
	addi	%x2, %x2, 12  #233 pc 37752
	jal	%x1, create_float_array.2541  #233 pc 37756
	addi	%x2, %x2, -12  #233 pc 37760
	lw	%x1, 8(%x2) #233 pc 37764
	addi	%x7, %x0, 3  #0 pc 37768
	fmv	%f0, l.6176  #0 pc 37772
	sw	%x6, 8(%x2)  #236 pc 37776
	addi	%x6, %x7, 0  #0 pc 37780
	sw	%x1, 12(%x2)  #236 pc 37784
	addi	%x2, %x2, 16  #236 pc 37788
	jal	%x1, create_float_array.2541  #236 pc 37792
	addi	%x2, %x2, -16  #236 pc 37796
	lw	%x1, 12(%x2) #236 pc 37800
	addi	%x7, %x0, 3  #0 pc 37804
	fmv	%f0, l.6176  #0 pc 37808
	sw	%x6, 12(%x2)  #239 pc 37812
	addi	%x6, %x7, 0  #0 pc 37816
	sw	%x1, 16(%x2)  #239 pc 37820
	addi	%x2, %x2, 20  #239 pc 37824
	jal	%x1, create_float_array.2541  #239 pc 37828
	addi	%x2, %x2, -20  #239 pc 37832
	lw	%x1, 16(%x2) #239 pc 37836
	addi	%x7, %x0, 1  #0 pc 37840
	fmv	%f0, l.6677  #0 pc 37844
	sw	%x6, 16(%x2)  #242 pc 37848
	addi	%x6, %x7, 0  #0 pc 37852
	sw	%x1, 20(%x2)  #242 pc 37856
	addi	%x2, %x2, 24  #242 pc 37860
	jal	%x1, create_float_array.2541  #242 pc 37864
	addi	%x2, %x2, -24  #242 pc 37868
	lw	%x1, 20(%x2) #242 pc 37872
	addi	%x7, %x0, 50  #0 pc 37876
	addi	%x8, %x0, 1  #0 pc 37880
	addi	%x9, %x0, -1  #0 pc 37884
	sw	%x6, 20(%x2)  #245 pc 37888
	sw	%x7, 24(%x2)  #245 pc 37892
	addi	%x7, %x9, 0  #0 pc 37896
	addi	%x6, %x8, 0  #0 pc 37900
	sw	%x1, 28(%x2)  #245 pc 37904
	addi	%x2, %x2, 32  #245 pc 37908
	jal	%x1, create_array.2534  #245 pc 37912
	addi	%x2, %x2, -32  #245 pc 37916
	lw	%x1, 28(%x2) #245 pc 37920
	addi	%x7, %x6, 0  #245 pc 37924
	lw	%x6, 24(%x2)  #245 pc 37928
	sw	%x1, 28(%x2)  #245 pc 37932
	addi	%x2, %x2, 32  #245 pc 37936
	jal	%x1, create_array.2534  #245 pc 37940
	addi	%x2, %x2, -32  #245 pc 37944
	lw	%x1, 28(%x2) #245 pc 37948
	addi	%x7, %x0, 1  #0 pc 37952
	lw	%x8, 0(%x6)  #248 pc 37956
	sw	%x6, 28(%x2)  #248 pc 37960
	sw	%x7, 32(%x2)  #248 pc 37964
	addi	%x6, %x7, 0  #0 pc 37968
	addi	%x7, %x8, 0  #0 pc 37972
	sw	%x1, 36(%x2)  #248 pc 37976
	addi	%x2, %x2, 40  #248 pc 37980
	jal	%x1, create_array.2534  #248 pc 37984
	addi	%x2, %x2, -40  #248 pc 37988
	lw	%x1, 36(%x2) #248 pc 37992
	addi	%x7, %x6, 0  #248 pc 37996
	lw	%x6, 32(%x2)  #248 pc 38000
	sw	%x1, 36(%x2)  #248 pc 38004
	addi	%x2, %x2, 40  #248 pc 38008
	jal	%x1, create_array.2534  #248 pc 38012
	addi	%x2, %x2, -40  #248 pc 38016
	lw	%x1, 36(%x2) #248 pc 38020
	addi	%x7, %x0, 1  #0 pc 38024
	fmv	%f0, l.6176  #0 pc 38028
	sw	%x6, 36(%x2)  #253 pc 38032
	addi	%x6, %x7, 0  #0 pc 38036
	sw	%x1, 40(%x2)  #253 pc 38040
	addi	%x2, %x2, 44  #253 pc 38044
	jal	%x1, create_float_array.2541  #253 pc 38048
	addi	%x2, %x2, -44  #253 pc 38052
	lw	%x1, 40(%x2) #253 pc 38056
	addi	%x7, %x0, 1  #0 pc 38060
	addi	%x8, %x0, 0  #0 pc 38064
	sw	%x6, 40(%x2)  #256 pc 38068
	addi	%x6, %x7, 0  #0 pc 38072
	addi	%x7, %x8, 0  #0 pc 38076
	sw	%x1, 44(%x2)  #256 pc 38080
	addi	%x2, %x2, 48  #256 pc 38084
	jal	%x1, create_array.2534  #256 pc 38088
	addi	%x2, %x2, -48  #256 pc 38092
	lw	%x1, 44(%x2) #256 pc 38096
	addi	%x7, %x0, 1  #0 pc 38100
	fmv	%f0, l.6604  #0 pc 38104
	sw	%x6, 44(%x2)  #259 pc 38108
	addi	%x6, %x7, 0  #0 pc 38112
	sw	%x1, 48(%x2)  #259 pc 38116
	addi	%x2, %x2, 52  #259 pc 38120
	jal	%x1, create_float_array.2541  #259 pc 38124
	addi	%x2, %x2, -52  #259 pc 38128
	lw	%x1, 48(%x2) #259 pc 38132
	addi	%x7, %x0, 3  #0 pc 38136
	fmv	%f0, l.6176  #0 pc 38140
	sw	%x6, 48(%x2)  #262 pc 38144
	addi	%x6, %x7, 0  #0 pc 38148
	sw	%x1, 52(%x2)  #262 pc 38152
	addi	%x2, %x2, 56  #262 pc 38156
	jal	%x1, create_float_array.2541  #262 pc 38160
	addi	%x2, %x2, -56  #262 pc 38164
	lw	%x1, 52(%x2) #262 pc 38168
	addi	%x7, %x0, 1  #0 pc 38172
	addi	%x8, %x0, 0  #0 pc 38176
	sw	%x6, 52(%x2)  #265 pc 38180
	addi	%x6, %x7, 0  #0 pc 38184
	addi	%x7, %x8, 0  #0 pc 38188
	sw	%x1, 56(%x2)  #265 pc 38192
	addi	%x2, %x2, 60  #265 pc 38196
	jal	%x1, create_array.2534  #265 pc 38200
	addi	%x2, %x2, -60  #265 pc 38204
	lw	%x1, 56(%x2) #265 pc 38208
	addi	%x7, %x0, 3  #0 pc 38212
	fmv	%f0, l.6176  #0 pc 38216
	sw	%x6, 56(%x2)  #268 pc 38220
	addi	%x6, %x7, 0  #0 pc 38224
	sw	%x1, 60(%x2)  #268 pc 38228
	addi	%x2, %x2, 64  #268 pc 38232
	jal	%x1, create_float_array.2541  #268 pc 38236
	addi	%x2, %x2, -64  #268 pc 38240
	lw	%x1, 60(%x2) #268 pc 38244
	addi	%x7, %x0, 3  #0 pc 38248
	fmv	%f0, l.6176  #0 pc 38252
	sw	%x6, 60(%x2)  #271 pc 38256
	addi	%x6, %x7, 0  #0 pc 38260
	sw	%x1, 64(%x2)  #271 pc 38264
	addi	%x2, %x2, 68  #271 pc 38268
	jal	%x1, create_float_array.2541  #271 pc 38272
	addi	%x2, %x2, -68  #271 pc 38276
	lw	%x1, 64(%x2) #271 pc 38280
	addi	%x7, %x0, 3  #0 pc 38284
	fmv	%f0, l.6176  #0 pc 38288
	sw	%x6, 64(%x2)  #275 pc 38292
	addi	%x6, %x7, 0  #0 pc 38296
	sw	%x1, 68(%x2)  #275 pc 38300
	addi	%x2, %x2, 72  #275 pc 38304
	jal	%x1, create_float_array.2541  #275 pc 38308
	addi	%x2, %x2, -72  #275 pc 38312
	lw	%x1, 68(%x2) #275 pc 38316
	addi	%x7, %x0, 3  #0 pc 38320
	fmv	%f0, l.6176  #0 pc 38324
	sw	%x6, 68(%x2)  #278 pc 38328
	addi	%x6, %x7, 0  #0 pc 38332
	sw	%x1, 72(%x2)  #278 pc 38336
	addi	%x2, %x2, 76  #278 pc 38340
	jal	%x1, create_float_array.2541  #278 pc 38344
	addi	%x2, %x2, -76  #278 pc 38348
	lw	%x1, 72(%x2) #278 pc 38352
	addi	%x7, %x0, 2  #0 pc 38356
	addi	%x8, %x0, 0  #0 pc 38360
	sw	%x6, 72(%x2)  #282 pc 38364
	addi	%x6, %x7, 0  #0 pc 38368
	addi	%x7, %x8, 0  #0 pc 38372
	sw	%x1, 76(%x2)  #282 pc 38376
	addi	%x2, %x2, 80  #282 pc 38380
	jal	%x1, create_array.2534  #282 pc 38384
	addi	%x2, %x2, -80  #282 pc 38388
	lw	%x1, 76(%x2) #282 pc 38392
	addi	%x7, %x0, 2  #0 pc 38396
	addi	%x8, %x0, 0  #0 pc 38400
	sw	%x6, 76(%x2)  #285 pc 38404
	addi	%x6, %x7, 0  #0 pc 38408
	addi	%x7, %x8, 0  #0 pc 38412
	sw	%x1, 80(%x2)  #285 pc 38416
	addi	%x2, %x2, 84  #285 pc 38420
	jal	%x1, create_array.2534  #285 pc 38424
	addi	%x2, %x2, -84  #285 pc 38428
	lw	%x1, 80(%x2) #285 pc 38432
	addi	%x7, %x0, 1  #0 pc 38436
	fmv	%f0, l.6176  #0 pc 38440
	sw	%x6, 80(%x2)  #288 pc 38444
	addi	%x6, %x7, 0  #0 pc 38448
	sw	%x1, 84(%x2)  #288 pc 38452
	addi	%x2, %x2, 88  #288 pc 38456
	jal	%x1, create_float_array.2541  #288 pc 38460
	addi	%x2, %x2, -88  #288 pc 38464
	lw	%x1, 84(%x2) #288 pc 38468
	addi	%x7, %x0, 3  #0 pc 38472
	fmv	%f0, l.6176  #0 pc 38476
	sw	%x6, 84(%x2)  #292 pc 38480
	addi	%x6, %x7, 0  #0 pc 38484
	sw	%x1, 88(%x2)  #292 pc 38488
	addi	%x2, %x2, 92  #292 pc 38492
	jal	%x1, create_float_array.2541  #292 pc 38496
	addi	%x2, %x2, -92  #292 pc 38500
	lw	%x1, 88(%x2) #292 pc 38504
	addi	%x7, %x0, 3  #0 pc 38508
	fmv	%f0, l.6176  #0 pc 38512
	sw	%x6, 88(%x2)  #295 pc 38516
	addi	%x6, %x7, 0  #0 pc 38520
	sw	%x1, 92(%x2)  #295 pc 38524
	addi	%x2, %x2, 96  #295 pc 38528
	jal	%x1, create_float_array.2541  #295 pc 38532
	addi	%x2, %x2, -96  #295 pc 38536
	lw	%x1, 92(%x2) #295 pc 38540
	addi	%x7, %x0, 3  #0 pc 38544
	fmv	%f0, l.6176  #0 pc 38548
	sw	%x6, 92(%x2)  #299 pc 38552
	addi	%x6, %x7, 0  #0 pc 38556
	sw	%x1, 96(%x2)  #299 pc 38560
	addi	%x2, %x2, 100  #299 pc 38564
	jal	%x1, create_float_array.2541  #299 pc 38568
	addi	%x2, %x2, -100  #299 pc 38572
	lw	%x1, 96(%x2) #299 pc 38576
	addi	%x7, %x0, 3  #0 pc 38580
	fmv	%f0, l.6176  #0 pc 38584
	sw	%x6, 96(%x2)  #301 pc 38588
	addi	%x6, %x7, 0  #0 pc 38592
	sw	%x1, 100(%x2)  #301 pc 38596
	addi	%x2, %x2, 104  #301 pc 38600
	jal	%x1, create_float_array.2541  #301 pc 38604
	addi	%x2, %x2, -104  #301 pc 38608
	lw	%x1, 100(%x2) #301 pc 38612
	addi	%x7, %x0, 3  #0 pc 38616
	fmv	%f0, l.6176  #0 pc 38620
	sw	%x6, 100(%x2)  #303 pc 38624
	addi	%x6, %x7, 0  #0 pc 38628
	sw	%x1, 104(%x2)  #303 pc 38632
	addi	%x2, %x2, 108  #303 pc 38636
	jal	%x1, create_float_array.2541  #303 pc 38640
	addi	%x2, %x2, -108  #303 pc 38644
	lw	%x1, 104(%x2) #303 pc 38648
	addi	%x7, %x0, 3  #0 pc 38652
	fmv	%f0, l.6176  #0 pc 38656
	sw	%x6, 104(%x2)  #307 pc 38660
	addi	%x6, %x7, 0  #0 pc 38664
	sw	%x1, 108(%x2)  #307 pc 38668
	addi	%x2, %x2, 112  #307 pc 38672
	jal	%x1, create_float_array.2541  #307 pc 38676
	addi	%x2, %x2, -112  #307 pc 38680
	lw	%x1, 108(%x2) #307 pc 38684
	addi	%x7, %x0, 0  #0 pc 38688
	fmv	%f0, l.6176  #0 pc 38692
	sw	%x6, 108(%x2)  #312 pc 38696
	addi	%x6, %x7, 0  #0 pc 38700
	sw	%x1, 112(%x2)  #312 pc 38704
	addi	%x2, %x2, 116  #312 pc 38708
	jal	%x1, create_float_array.2541  #312 pc 38712
	addi	%x2, %x2, -116  #312 pc 38716
	lw	%x1, 112(%x2) #312 pc 38720
	addi	%x7, %x6, 0  #312 pc 38724
	addi	%x6, %x0, 0  #0 pc 38728
	sw	%x7, 112(%x2)  #313 pc 38732
	sw	%x1, 116(%x2)  #313 pc 38736
	addi	%x2, %x2, 120  #313 pc 38740
	jal	%x1, create_array.2534  #313 pc 38744
	addi	%x2, %x2, -120  #313 pc 38748
	lw	%x1, 116(%x2) #313 pc 38752
	addi	%x7, %x0, 0  #0 pc 38756
	addi	%x8, %x3, 0  #314 pc 38760
	addi	%x3, %x3, 8  #314 pc 38764
	sw	%x6, 4(%x8)  #314 pc 38768
	lw	%x6, 112(%x2)  #314 pc 38772
	sw	%x6, 0(%x8)  #314 pc 38776
	addi	%x6, %x8, 0  #314 pc 38780
	addi	%x30, %x7, 0  #0 pc 38784
	addi	%x7, %x6, 0  #0 pc 38788
	addi	%x6, %x30, 0  #0 pc 38792
	sw	%x1, 116(%x2)  #314 pc 38796
	addi	%x2, %x2, 120  #314 pc 38800
	jal	%x1, create_array.2534  #314 pc 38804
	addi	%x2, %x2, -120  #314 pc 38808
	lw	%x1, 116(%x2) #314 pc 38812
	addi	%x7, %x6, 0  #314 pc 38816
	addi	%x6, %x0, 5  #0 pc 38820
	sw	%x1, 116(%x2)  #315 pc 38824
	addi	%x2, %x2, 120  #315 pc 38828
	jal	%x1, create_array.2534  #315 pc 38832
	addi	%x2, %x2, -120  #315 pc 38836
	lw	%x1, 116(%x2) #315 pc 38840
	addi	%x7, %x0, 0  #0 pc 38844
	fmv	%f0, l.6176  #0 pc 38848
	sw	%x6, 116(%x2)  #320 pc 38852
	addi	%x6, %x7, 0  #0 pc 38856
	sw	%x1, 120(%x2)  #320 pc 38860
	addi	%x2, %x2, 124  #320 pc 38864
	jal	%x1, create_float_array.2541  #320 pc 38868
	addi	%x2, %x2, -124  #320 pc 38872
	lw	%x1, 120(%x2) #320 pc 38876
	addi	%x7, %x0, 3  #0 pc 38880
	fmv	%f0, l.6176  #0 pc 38884
	sw	%x6, 120(%x2)  #321 pc 38888
	addi	%x6, %x7, 0  #0 pc 38892
	sw	%x1, 124(%x2)  #321 pc 38896
	addi	%x2, %x2, 128  #321 pc 38900
	jal	%x1, create_float_array.2541  #321 pc 38904
	addi	%x2, %x2, -128  #321 pc 38908
	lw	%x1, 124(%x2) #321 pc 38912
	addi	%x7, %x0, 60  #0 pc 38916
	lw	%x8, 120(%x2)  #322 pc 38920
	sw	%x6, 124(%x2)  #322 pc 38924
	addi	%x6, %x7, 0  #0 pc 38928
	addi	%x7, %x8, 0  #0 pc 38932
	sw	%x1, 128(%x2)  #322 pc 38936
	addi	%x2, %x2, 132  #322 pc 38940
	jal	%x1, create_array.2534  #322 pc 38944
	addi	%x2, %x2, -132  #322 pc 38948
	lw	%x1, 128(%x2) #322 pc 38952
	addi	%x7, %x3, 0  #323 pc 38956
	addi	%x3, %x3, 8  #323 pc 38960
	sw	%x6, 4(%x7)  #323 pc 38964
	lw	%x6, 124(%x2)  #323 pc 38968
	sw	%x6, 0(%x7)  #323 pc 38972
	addi	%x6, %x7, 0  #323 pc 38976
	addi	%x7, %x0, 0  #0 pc 38980
	fmv	%f0, l.6176  #0 pc 38984
	sw	%x6, 128(%x2)  #328 pc 38988
	addi	%x6, %x7, 0  #0 pc 38992
	sw	%x1, 132(%x2)  #328 pc 38996
	addi	%x2, %x2, 136  #328 pc 39000
	jal	%x1, create_float_array.2541  #328 pc 39004
	addi	%x2, %x2, -136  #328 pc 39008
	lw	%x1, 132(%x2) #328 pc 39012
	addi	%x7, %x6, 0  #328 pc 39016
	addi	%x6, %x0, 0  #0 pc 39020
	sw	%x7, 132(%x2)  #329 pc 39024
	sw	%x1, 136(%x2)  #329 pc 39028
	addi	%x2, %x2, 140  #329 pc 39032
	jal	%x1, create_array.2534  #329 pc 39036
	addi	%x2, %x2, -140  #329 pc 39040
	lw	%x1, 136(%x2) #329 pc 39044
	addi	%x7, %x3, 0  #330 pc 39048
	addi	%x3, %x3, 8  #330 pc 39052
	sw	%x6, 4(%x7)  #330 pc 39056
	lw	%x6, 132(%x2)  #330 pc 39060
	sw	%x6, 0(%x7)  #330 pc 39064
	addi	%x6, %x7, 0  #330 pc 39068
	addi	%x7, %x0, 180  #0 pc 39072
	addi	%x8, %x0, 0  #0 pc 39076
	fmv	%f0, l.6176  #0 pc 39080
	addi	%x9, %x3, 0  #331 pc 39084
	addi	%x3, %x3, 12  #331 pc 39088
	fsw	%f0, 8(%x9)  #331 pc 39092
	sw	%x6, 4(%x9)  #331 pc 39096
	sw	%x8, 0(%x9)  #331 pc 39100
	addi	%x6, %x9, 0  #331 pc 39104
	addi	%x30, %x7, 0  #0 pc 39108
	addi	%x7, %x6, 0  #0 pc 39112
	addi	%x6, %x30, 0  #0 pc 39116
	sw	%x1, 136(%x2)  #331 pc 39120
	addi	%x2, %x2, 140  #331 pc 39124
	jal	%x1, create_array.2534  #331 pc 39128
	addi	%x2, %x2, -140  #331 pc 39132
	lw	%x1, 136(%x2) #331 pc 39136
	addi	%x7, %x0, 1  #0 pc 39140
	addi	%x8, %x0, 0  #0 pc 39144
	sw	%x6, 136(%x2)  #335 pc 39148
	addi	%x6, %x7, 0  #0 pc 39152
	addi	%x7, %x8, 0  #0 pc 39156
	sw	%x1, 140(%x2)  #335 pc 39160
	addi	%x2, %x2, 144  #335 pc 39164
	jal	%x1, create_array.2534  #335 pc 39168
	addi	%x2, %x2, -144  #335 pc 39172
	lw	%x1, 140(%x2) #335 pc 39176
	addi	%x7, %x3, 0  #818 pc 39180
	addi	%x3, %x3, 24  #818 pc 39184
	addi	%x31, %x0, 2756  #818 read_screen_settings.2696 pc 39188
	addi	%x8, %x31, 0  #818 pc 39192
	sw	%x8, 0(%x7)  #818 pc 39196
	lw	%x8, 12(%x2)  #818 pc 39200
	sw	%x8, 20(%x7)  #818 pc 39204
	lw	%x9, 104(%x2)  #818 pc 39208
	sw	%x9, 16(%x7)  #818 pc 39212
	lw	%x10, 100(%x2)  #818 pc 39216
	sw	%x10, 12(%x7)  #818 pc 39220
	lw	%x11, 96(%x2)  #818 pc 39224
	sw	%x11, 8(%x7)  #818 pc 39228
	lw	%x12, 8(%x2)  #818 pc 39232
	sw	%x12, 4(%x7)  #818 pc 39236
	addi	%x12, %x3, 0  #851 pc 39240
	addi	%x3, %x3, 12  #851 pc 39244
	addi	%x31, %x0, 3364  #851 read_light.2698 pc 39248
	addi	%x13, %x31, 0  #851 pc 39252
	sw	%x13, 0(%x12)  #851 pc 39256
	lw	%x13, 16(%x2)  #851 pc 39260
	sw	%x13, 8(%x12)  #851 pc 39264
	lw	%x14, 20(%x2)  #851 pc 39268
	sw	%x14, 4(%x12)  #851 pc 39272
	addi	%x15, %x3, 0  #914 pc 39276
	addi	%x3, %x3, 8  #914 pc 39280
	addi	%x31, %x0, 4700  #914 read_nth_object.2703 pc 39284
	addi	%x16, %x31, 0  #914 pc 39288
	sw	%x16, 0(%x15)  #914 pc 39292
	lw	%x16, 4(%x2)  #914 pc 39296
	sw	%x16, 4(%x15)  #914 pc 39300
	addi	%x17, %x3, 0  #997 pc 39304
	addi	%x3, %x3, 12  #997 pc 39308
	addi	%x31, %x0, 6264  #997 read_object.2705 pc 39312
	addi	%x18, %x31, 0  #997 pc 39316
	sw	%x18, 0(%x17)  #997 pc 39320
	sw	%x15, 8(%x17)  #997 pc 39324
	lw	%x15, 0(%x2)  #997 pc 39328
	sw	%x15, 4(%x17)  #997 pc 39332
	addi	%x18, %x3, 0  #1006 pc 39336
	addi	%x3, %x3, 8  #1006 pc 39340
	addi	%x31, %x0, 6392  #1006 read_all_object.2707 pc 39344
	addi	%x19, %x31, 0  #1006 pc 39348
	sw	%x19, 0(%x18)  #1006 pc 39352
	sw	%x17, 4(%x18)  #1006 pc 39356
	addi	%x17, %x3, 0  #1030 pc 39360
	addi	%x3, %x3, 8  #1030 pc 39364
	addi	%x31, %x0, 6672  #1030 read_and_network.2713 pc 39368
	addi	%x19, %x31, 0  #1030 pc 39372
	sw	%x19, 0(%x17)  #1030 pc 39376
	lw	%x19, 28(%x2)  #1030 pc 39380
	sw	%x19, 4(%x17)  #1030 pc 39384
	addi	%x20, %x3, 0  #1039 pc 39388
	addi	%x3, %x3, 24  #1039 pc 39392
	addi	%x31, %x0, 6784  #1039 read_parameter.2715 pc 39396
	addi	%x21, %x31, 0  #1039 pc 39400
	sw	%x21, 0(%x20)  #1039 pc 39404
	sw	%x7, 20(%x20)  #1039 pc 39408
	sw	%x12, 16(%x20)  #1039 pc 39412
	sw	%x17, 12(%x20)  #1039 pc 39416
	sw	%x18, 8(%x20)  #1039 pc 39420
	lw	%x7, 36(%x2)  #1039 pc 39424
	sw	%x7, 4(%x20)  #1039 pc 39428
	addi	%x12, %x3, 0  #1064 pc 39432
	addi	%x3, %x3, 8  #1064 pc 39436
	addi	%x31, %x0, 6976  #1064 solver_rect_surface.2717 pc 39440
	addi	%x17, %x31, 0  #1064 pc 39444
	sw	%x17, 0(%x12)  #1064 pc 39448
	lw	%x17, 40(%x2)  #1064 pc 39452
	sw	%x17, 4(%x12)  #1064 pc 39456
	addi	%x18, %x3, 0  #1079 pc 39460
	addi	%x3, %x3, 8  #1079 pc 39464
	addi	%x31, %x0, 7508  #1079 solver_rect.2726 pc 39468
	addi	%x21, %x31, 0  #1079 pc 39472
	sw	%x21, 0(%x18)  #1079 pc 39476
	sw	%x12, 4(%x18)  #1079 pc 39480
	addi	%x12, %x3, 0  #1088 pc 39484
	addi	%x3, %x3, 8  #1088 pc 39488
	addi	%x31, %x0, 7776  #1088 solver_surface.2732 pc 39492
	addi	%x21, %x31, 0  #1088 pc 39496
	sw	%x21, 0(%x12)  #1088 pc 39500
	sw	%x17, 4(%x12)  #1088 pc 39504
	addi	%x21, %x3, 0  #1139 pc 39508
	addi	%x3, %x3, 8  #1139 pc 39512
	addi	%x31, %x0, 8932  #1139 solver_second.2751 pc 39516
	addi	%x22, %x31, 0  #1139 pc 39520
	sw	%x22, 0(%x21)  #1139 pc 39524
	sw	%x17, 4(%x21)  #1139 pc 39528
	addi	%x22, %x3, 0  #1168 pc 39532
	addi	%x3, %x3, 20  #1168 pc 39536
	addi	%x31, %x0, 9440  #1168 solver.2757 pc 39540
	addi	%x23, %x31, 0  #1168 pc 39544
	sw	%x23, 0(%x22)  #1168 pc 39548
	sw	%x12, 16(%x22)  #1168 pc 39552
	sw	%x21, 12(%x22)  #1168 pc 39556
	sw	%x18, 8(%x22)  #1168 pc 39560
	sw	%x16, 4(%x22)  #1168 pc 39564
	addi	%x12, %x3, 0  #1200 pc 39568
	addi	%x3, %x3, 8  #1200 pc 39572
	addi	%x31, %x0, 9796  #1200 solver_rect_fast.2761 pc 39576
	addi	%x18, %x31, 0  #1200 pc 39580
	sw	%x18, 0(%x12)  #1200 pc 39584
	sw	%x17, 4(%x12)  #1200 pc 39588
	addi	%x18, %x3, 0  #1233 pc 39592
	addi	%x3, %x3, 8  #1233 pc 39596
	addi	%x31, %x0, 10832  #1233 solver_surface_fast.2768 pc 39600
	addi	%x21, %x31, 0  #1233 pc 39604
	sw	%x21, 0(%x18)  #1233 pc 39608
	sw	%x17, 4(%x18)  #1233 pc 39612
	addi	%x21, %x3, 0  #1242 pc 39616
	addi	%x3, %x3, 8  #1242 pc 39620
	addi	%x31, %x0, 10976  #1242 solver_second_fast.2774 pc 39624
	addi	%x23, %x31, 0  #1242 pc 39628
	sw	%x23, 0(%x21)  #1242 pc 39632
	sw	%x17, 4(%x21)  #1242 pc 39636
	addi	%x23, %x3, 0  #1262 pc 39640
	addi	%x3, %x3, 20  #1262 pc 39644
	addi	%x31, %x0, 11444  #1262 solver_fast.2780 pc 39648
	addi	%x24, %x31, 0  #1262 pc 39652
	sw	%x24, 0(%x23)  #1262 pc 39656
	sw	%x18, 16(%x23)  #1262 pc 39660
	sw	%x21, 12(%x23)  #1262 pc 39664
	sw	%x12, 8(%x23)  #1262 pc 39668
	sw	%x16, 4(%x23)  #1262 pc 39672
	addi	%x18, %x3, 0  #1282 pc 39676
	addi	%x3, %x3, 8  #1282 pc 39680
	addi	%x31, %x0, 11884  #1282 solver_surface_fast2.2784 pc 39684
	addi	%x21, %x31, 0  #1282 pc 39688
	sw	%x21, 0(%x18)  #1282 pc 39692
	sw	%x17, 4(%x18)  #1282 pc 39696
	addi	%x21, %x3, 0  #1290 pc 39700
	addi	%x3, %x3, 8  #1290 pc 39704
	addi	%x31, %x0, 11988  #1290 solver_second_fast2.2791 pc 39708
	addi	%x24, %x31, 0  #1290 pc 39712
	sw	%x24, 0(%x21)  #1290 pc 39716
	sw	%x17, 4(%x21)  #1290 pc 39720
	addi	%x24, %x3, 0  #1309 pc 39724
	addi	%x3, %x3, 20  #1309 pc 39728
	addi	%x31, %x0, 12352  #1309 solver_fast2.2798 pc 39732
	addi	%x25, %x31, 0  #1309 pc 39736
	sw	%x25, 0(%x24)  #1309 pc 39740
	sw	%x18, 16(%x24)  #1309 pc 39744
	sw	%x21, 12(%x24)  #1309 pc 39748
	sw	%x12, 8(%x24)  #1309 pc 39752
	sw	%x16, 4(%x24)  #1309 pc 39756
	addi	%x12, %x3, 0  #1406 pc 39760
	addi	%x3, %x3, 8  #1406 pc 39764
	addi	%x31, %x0, 14828  #1406 iter_setup_dirvec_constants.2810 pc 39768
	addi	%x18, %x31, 0  #1406 pc 39772
	sw	%x18, 0(%x12)  #1406 pc 39776
	sw	%x16, 4(%x12)  #1406 pc 39780
	addi	%x18, %x3, 0  #1423 pc 39784
	addi	%x3, %x3, 12  #1423 pc 39788
	addi	%x31, %x0, 15180  #1423 setup_dirvec_constants.2813 pc 39792
	addi	%x21, %x31, 0  #1423 pc 39796
	sw	%x21, 0(%x18)  #1423 pc 39800
	sw	%x15, 8(%x18)  #1423 pc 39804
	sw	%x12, 4(%x18)  #1423 pc 39808
	addi	%x12, %x3, 0  #1431 pc 39812
	addi	%x3, %x3, 8  #1431 pc 39816
	addi	%x31, %x0, 15208  #1431 setup_startp_constants.2815 pc 39820
	addi	%x21, %x31, 0  #1431 pc 39824
	sw	%x21, 0(%x12)  #1431 pc 39828
	sw	%x16, 4(%x12)  #1431 pc 39832
	addi	%x21, %x3, 0  #1450 pc 39836
	addi	%x3, %x3, 16  #1450 pc 39840
	addi	%x31, %x0, 15724  #1450 setup_startp.2818 pc 39844
	addi	%x25, %x31, 0  #1450 pc 39848
	sw	%x25, 0(%x21)  #1450 pc 39852
	lw	%x25, 92(%x2)  #1450 pc 39856
	sw	%x25, 12(%x21)  #1450 pc 39860
	sw	%x12, 8(%x21)  #1450 pc 39864
	sw	%x15, 4(%x21)  #1450 pc 39868
	addi	%x12, %x3, 0  #1500 pc 39872
	addi	%x3, %x3, 8  #1500 pc 39876
	addi	%x31, %x0, 16788  #1500 check_all_inside.2840 pc 39880
	addi	%x26, %x31, 0  #1500 pc 39884
	sw	%x26, 0(%x12)  #1500 pc 39888
	sw	%x16, 4(%x12)  #1500 pc 39892
	addi	%x26, %x3, 0  #1520 pc 39896
	addi	%x3, %x3, 32  #1520 pc 39900
	addi	%x31, %x0, 16956  #1520 shadow_check_and_group.2846 pc 39904
	addi	%x27, %x31, 0  #1520 pc 39908
	sw	%x27, 0(%x26)  #1520 pc 39912
	sw	%x23, 28(%x26)  #1520 pc 39916
	sw	%x17, 24(%x26)  #1520 pc 39920
	sw	%x16, 20(%x26)  #1520 pc 39924
	lw	%x27, 128(%x2)  #1520 pc 39928
	sw	%x27, 16(%x26)  #1520 pc 39932
	sw	%x13, 12(%x26)  #1520 pc 39936
	lw	%x28, 52(%x2)  #1520 pc 39940
	sw	%x28, 8(%x26)  #1520 pc 39944
	sw	%x12, 4(%x26)  #1520 pc 39948
	addi	%x29, %x3, 0  #1550 pc 39952
	addi	%x3, %x3, 12  #1550 pc 39956
	addi	%x31, %x0, 17448  #1550 shadow_check_one_or_group.2849 pc 39960
	addi	%x30, %x31, 0  #1550 pc 39964
	sw	%x30, 0(%x29)  #1550 pc 39968
	sw	%x26, 8(%x29)  #1550 pc 39972
	sw	%x19, 4(%x29)  #1550 pc 39976
	addi	%x26, %x3, 0  #1565 pc 39980
	addi	%x3, %x3, 24  #1565 pc 39984
	addi	%x31, %x0, 17612  #1565 shadow_check_one_or_matrix.2852 pc 39988
	addi	%x30, %x31, 0  #1565 pc 39992
	sw	%x30, 0(%x26)  #1565 pc 39996
	sw	%x23, 20(%x26)  #1565 pc 40000
	sw	%x17, 16(%x26)  #1565 pc 40004
	sw	%x29, 12(%x26)  #1565 pc 40008
	sw	%x27, 8(%x26)  #1565 pc 40012
	sw	%x28, 4(%x26)  #1565 pc 40016
	addi	%x23, %x3, 0  #1601 pc 40020
	addi	%x3, %x3, 40  #1601 pc 40024
	addi	%x31, %x0, 18040  #1601 solve_each_element.2855 pc 40028
	addi	%x29, %x31, 0  #1601 pc 40032
	sw	%x29, 0(%x23)  #1601 pc 40036
	lw	%x29, 48(%x2)  #1601 pc 40040
	sw	%x29, 36(%x23)  #1601 pc 40044
	lw	%x30, 88(%x2)  #1601 pc 40048
	sw	%x30, 32(%x23)  #1601 pc 40052
	sw	%x17, 28(%x23)  #1601 pc 40056
	sw	%x22, 24(%x23)  #1601 pc 40060
	sw	%x16, 20(%x23)  #1601 pc 40064
	lw	%x27, 44(%x2)  #1601 pc 40068
	sw	%x27, 16(%x23)  #1601 pc 40072
	sw	%x28, 12(%x23)  #1601 pc 40076
	sw	%x20, 140(%x2)  #1601 pc 40080
	lw	%x20, 56(%x2)  #1601 pc 40084
	sw	%x20, 8(%x23)  #1601 pc 40088
	sw	%x12, 4(%x23)  #1601 pc 40092
	sw	%x18, 144(%x2)  #1642 pc 40096
	addi	%x18, %x3, 0  #1642 pc 40100
	addi	%x3, %x3, 12  #1642 pc 40104
	addi	%x31, %x0, 18684  #1642 solve_one_or_network.2859 pc 40108
	addi	%x15, %x31, 0  #1642 pc 40112
	sw	%x15, 0(%x18)  #1642 pc 40116
	sw	%x23, 8(%x18)  #1642 pc 40120
	sw	%x19, 4(%x18)  #1642 pc 40124
	addi	%x15, %x3, 0  #1652 pc 40128
	addi	%x3, %x3, 24  #1652 pc 40132
	addi	%x31, %x0, 18828  #1652 trace_or_matrix.2863 pc 40136
	addi	%x23, %x31, 0  #1652 pc 40140
	sw	%x23, 0(%x15)  #1652 pc 40144
	sw	%x29, 20(%x15)  #1652 pc 40148
	sw	%x30, 16(%x15)  #1652 pc 40152
	sw	%x17, 12(%x15)  #1652 pc 40156
	sw	%x22, 8(%x15)  #1652 pc 40160
	sw	%x18, 4(%x15)  #1652 pc 40164
	addi	%x18, %x3, 0  #1679 pc 40168
	addi	%x3, %x3, 16  #1679 pc 40172
	addi	%x31, %x0, 19172  #1679 judge_intersection.2867 pc 40176
	addi	%x22, %x31, 0  #1679 pc 40180
	sw	%x22, 0(%x18)  #1679 pc 40184
	sw	%x15, 12(%x18)  #1679 pc 40188
	sw	%x29, 8(%x18)  #1679 pc 40192
	sw	%x7, 4(%x18)  #1679 pc 40196
	addi	%x15, %x3, 0  #1694 pc 40200
	addi	%x3, %x3, 40  #1694 pc 40204
	addi	%x31, %x0, 19320  #1694 solve_each_element_fast.2869 pc 40208
	addi	%x22, %x31, 0  #1694 pc 40212
	sw	%x22, 0(%x15)  #1694 pc 40216
	sw	%x29, 36(%x15)  #1694 pc 40220
	sw	%x25, 32(%x15)  #1694 pc 40224
	sw	%x24, 28(%x15)  #1694 pc 40228
	sw	%x17, 24(%x15)  #1694 pc 40232
	sw	%x16, 20(%x15)  #1694 pc 40236
	sw	%x27, 16(%x15)  #1694 pc 40240
	sw	%x28, 12(%x15)  #1694 pc 40244
	sw	%x20, 8(%x15)  #1694 pc 40248
	sw	%x12, 4(%x15)  #1694 pc 40252
	addi	%x12, %x3, 0  #1735 pc 40256
	addi	%x3, %x3, 12  #1735 pc 40260
	addi	%x31, %x0, 19996  #1735 solve_one_or_network_fast.2873 pc 40264
	addi	%x22, %x31, 0  #1735 pc 40268
	sw	%x22, 0(%x12)  #1735 pc 40272
	sw	%x15, 8(%x12)  #1735 pc 40276
	sw	%x19, 4(%x12)  #1735 pc 40280
	addi	%x15, %x3, 0  #1745 pc 40284
	addi	%x3, %x3, 20  #1745 pc 40288
	addi	%x31, %x0, 20140  #1745 trace_or_matrix_fast.2877 pc 40292
	addi	%x19, %x31, 0  #1745 pc 40296
	sw	%x19, 0(%x15)  #1745 pc 40300
	sw	%x29, 16(%x15)  #1745 pc 40304
	sw	%x24, 12(%x15)  #1745 pc 40308
	sw	%x17, 8(%x15)  #1745 pc 40312
	sw	%x12, 4(%x15)  #1745 pc 40316
	addi	%x12, %x3, 0  #1769 pc 40320
	addi	%x3, %x3, 16  #1769 pc 40324
	addi	%x31, %x0, 20476  #1769 judge_intersection_fast.2881 pc 40328
	addi	%x17, %x31, 0  #1769 pc 40332
	sw	%x17, 0(%x12)  #1769 pc 40336
	sw	%x15, 12(%x12)  #1769 pc 40340
	sw	%x29, 8(%x12)  #1769 pc 40344
	sw	%x7, 4(%x12)  #1769 pc 40348
	addi	%x15, %x3, 0  #1790 pc 40352
	addi	%x3, %x3, 12  #1790 pc 40356
	addi	%x31, %x0, 20624  #1790 get_nvector_rect.2883 pc 40360
	addi	%x17, %x31, 0  #1790 pc 40364
	sw	%x17, 0(%x15)  #1790 pc 40368
	lw	%x17, 60(%x2)  #1790 pc 40372
	sw	%x17, 8(%x15)  #1790 pc 40376
	sw	%x27, 4(%x15)  #1790 pc 40380
	addi	%x19, %x3, 0  #1798 pc 40384
	addi	%x3, %x3, 8  #1798 pc 40388
	addi	%x31, %x0, 20772  #1798 get_nvector_plane.2885 pc 40392
	addi	%x22, %x31, 0  #1798 pc 40396
	sw	%x22, 0(%x19)  #1798 pc 40400
	sw	%x17, 4(%x19)  #1798 pc 40404
	addi	%x22, %x3, 0  #1806 pc 40408
	addi	%x3, %x3, 12  #1806 pc 40412
	addi	%x31, %x0, 20952  #1806 get_nvector_second.2887 pc 40416
	addi	%x23, %x31, 0  #1806 pc 40420
	sw	%x23, 0(%x22)  #1806 pc 40424
	sw	%x17, 8(%x22)  #1806 pc 40428
	sw	%x28, 4(%x22)  #1806 pc 40432
	addi	%x23, %x3, 0  #1828 pc 40436
	addi	%x3, %x3, 16  #1828 pc 40440
	addi	%x31, %x0, 21680  #1828 get_nvector.2889 pc 40444
	addi	%x24, %x31, 0  #1828 pc 40448
	sw	%x24, 0(%x23)  #1828 pc 40452
	sw	%x22, 12(%x23)  #1828 pc 40456
	sw	%x15, 8(%x23)  #1828 pc 40460
	sw	%x19, 4(%x23)  #1828 pc 40464
	addi	%x15, %x3, 0  #1844 pc 40468
	addi	%x3, %x3, 8  #1844 pc 40472
	addi	%x31, %x0, 21824  #1844 utexture.2892 pc 40476
	addi	%x19, %x31, 0  #1844 pc 40480
	sw	%x19, 0(%x15)  #1844 pc 40484
	lw	%x19, 64(%x2)  #1844 pc 40488
	sw	%x19, 4(%x15)  #1844 pc 40492
	addi	%x22, %x3, 0  #1922 pc 40496
	addi	%x3, %x3, 12  #1922 pc 40500
	addi	%x31, %x0, 23632  #1922 add_light.2895 pc 40504
	addi	%x24, %x31, 0  #1922 pc 40508
	sw	%x24, 0(%x22)  #1922 pc 40512
	sw	%x19, 8(%x22)  #1922 pc 40516
	lw	%x24, 72(%x2)  #1922 pc 40520
	sw	%x24, 4(%x22)  #1922 pc 40524
	addi	%x25, %x3, 0  #1939 pc 40528
	addi	%x3, %x3, 36  #1939 pc 40532
	addi	%x31, %x0, 23876  #1939 trace_reflections.2899 pc 40536
	addi	%x10, %x31, 0  #1939 pc 40540
	sw	%x10, 0(%x25)  #1939 pc 40544
	sw	%x26, 32(%x25)  #1939 pc 40548
	lw	%x10, 136(%x2)  #1939 pc 40552
	sw	%x10, 28(%x25)  #1939 pc 40556
	sw	%x7, 24(%x25)  #1939 pc 40560
	sw	%x17, 20(%x25)  #1939 pc 40564
	sw	%x12, 16(%x25)  #1939 pc 40568
	sw	%x27, 12(%x25)  #1939 pc 40572
	sw	%x20, 8(%x25)  #1939 pc 40576
	sw	%x22, 4(%x25)  #1939 pc 40580
	addi	%x10, %x3, 0  #1968 pc 40584
	addi	%x3, %x3, 84  #1968 pc 40588
	addi	%x31, %x0, 24464  #1968 trace_ray.2904 pc 40592
	addi	%x9, %x31, 0  #1968 pc 40596
	sw	%x9, 0(%x10)  #1968 pc 40600
	sw	%x15, 80(%x10)  #1968 pc 40604
	sw	%x25, 76(%x10)  #1968 pc 40608
	sw	%x29, 72(%x10)  #1968 pc 40612
	sw	%x19, 68(%x10)  #1968 pc 40616
	sw	%x30, 64(%x10)  #1968 pc 40620
	sw	%x26, 60(%x10)  #1968 pc 40624
	sw	%x21, 56(%x10)  #1968 pc 40628
	sw	%x24, 52(%x10)  #1968 pc 40632
	sw	%x7, 48(%x10)  #1968 pc 40636
	sw	%x16, 44(%x10)  #1968 pc 40640
	sw	%x17, 40(%x10)  #1968 pc 40644
	sw	%x6, 36(%x10)  #1968 pc 40648
	sw	%x13, 32(%x10)  #1968 pc 40652
	sw	%x18, 28(%x10)  #1968 pc 40656
	sw	%x27, 24(%x10)  #1968 pc 40660
	sw	%x28, 20(%x10)  #1968 pc 40664
	sw	%x20, 16(%x10)  #1968 pc 40668
	sw	%x23, 12(%x10)  #1968 pc 40672
	sw	%x14, 8(%x10)  #1968 pc 40676
	sw	%x22, 4(%x10)  #1968 pc 40680
	addi	%x9, %x3, 0  #2061 pc 40684
	addi	%x3, %x3, 52  #2061 pc 40688
	addi	%x31, %x0, 26288  #2061 trace_diffuse_ray.2910 pc 40692
	addi	%x14, %x31, 0  #2061 pc 40696
	sw	%x14, 0(%x9)  #2061 pc 40700
	sw	%x15, 48(%x9)  #2061 pc 40704
	sw	%x19, 44(%x9)  #2061 pc 40708
	sw	%x26, 40(%x9)  #2061 pc 40712
	sw	%x7, 36(%x9)  #2061 pc 40716
	sw	%x16, 32(%x9)  #2061 pc 40720
	sw	%x17, 28(%x9)  #2061 pc 40724
	sw	%x13, 24(%x9)  #2061 pc 40728
	sw	%x12, 20(%x9)  #2061 pc 40732
	sw	%x28, 16(%x9)  #2061 pc 40736
	sw	%x20, 12(%x9)  #2061 pc 40740
	sw	%x23, 8(%x9)  #2061 pc 40744
	lw	%x7, 68(%x2)  #2061 pc 40748
	sw	%x7, 4(%x9)  #2061 pc 40752
	addi	%x12, %x3, 0  #2080 pc 40756
	addi	%x3, %x3, 8  #2080 pc 40760
	addi	%x31, %x0, 26784  #2080 iter_trace_diffuse_rays.2913 pc 40764
	addi	%x14, %x31, 0  #2080 pc 40768
	sw	%x14, 0(%x12)  #2080 pc 40772
	sw	%x9, 4(%x12)  #2080 pc 40776
	addi	%x9, %x3, 0  #2096 pc 40780
	addi	%x3, %x3, 12  #2096 pc 40784
	addi	%x31, %x0, 27104  #2096 trace_diffuse_rays.2918 pc 40788
	addi	%x14, %x31, 0  #2096 pc 40792
	sw	%x14, 0(%x9)  #2096 pc 40796
	sw	%x21, 8(%x9)  #2096 pc 40800
	sw	%x12, 4(%x9)  #2096 pc 40804
	addi	%x12, %x3, 0  #2106 pc 40808
	addi	%x3, %x3, 12  #2106 pc 40812
	addi	%x31, %x0, 27192  #2106 trace_diffuse_ray_80percent.2922 pc 40816
	addi	%x14, %x31, 0  #2106 pc 40820
	sw	%x14, 0(%x12)  #2106 pc 40824
	sw	%x9, 8(%x12)  #2106 pc 40828
	lw	%x14, 116(%x2)  #2106 pc 40832
	sw	%x14, 4(%x12)  #2106 pc 40836
	addi	%x15, %x3, 0  #2132 pc 40840
	addi	%x3, %x3, 16  #2132 pc 40844
	addi	%x31, %x0, 27588  #2132 calc_diffuse_using_1point.2926 pc 40848
	addi	%x17, %x31, 0  #2132 pc 40852
	sw	%x17, 0(%x15)  #2132 pc 40856
	sw	%x12, 12(%x15)  #2132 pc 40860
	sw	%x24, 8(%x15)  #2132 pc 40864
	sw	%x7, 4(%x15)  #2132 pc 40868
	addi	%x12, %x3, 0  #2151 pc 40872
	addi	%x3, %x3, 12  #2151 pc 40876
	addi	%x31, %x0, 27924  #2151 calc_diffuse_using_5points.2929 pc 40880
	addi	%x17, %x31, 0  #2151 pc 40884
	sw	%x17, 0(%x12)  #2151 pc 40888
	sw	%x24, 8(%x12)  #2151 pc 40892
	sw	%x7, 4(%x12)  #2151 pc 40896
	addi	%x17, %x3, 0  #2171 pc 40900
	addi	%x3, %x3, 8  #2171 pc 40904
	addi	%x31, %x0, 28512  #2171 do_without_neighbors.2935 pc 40908
	addi	%x18, %x31, 0  #2171 pc 40912
	sw	%x18, 0(%x17)  #2171 pc 40916
	sw	%x15, 4(%x17)  #2171 pc 40920
	addi	%x15, %x3, 0  #2186 pc 40924
	addi	%x3, %x3, 8  #2186 pc 40928
	addi	%x31, %x0, 28732  #2186 neighbors_exist.2938 pc 40932
	addi	%x18, %x31, 0  #2186 pc 40936
	sw	%x18, 0(%x15)  #2186 pc 40940
	lw	%x18, 76(%x2)  #2186 pc 40944
	sw	%x18, 4(%x15)  #2186 pc 40948
	addi	%x19, %x3, 0  #2223 pc 40952
	addi	%x3, %x3, 12  #2223 pc 40956
	addi	%x31, %x0, 29308  #2223 try_exploit_neighbors.2951 pc 40960
	addi	%x20, %x31, 0  #2223 pc 40964
	sw	%x20, 0(%x19)  #2223 pc 40968
	sw	%x17, 8(%x19)  #2223 pc 40972
	sw	%x12, 4(%x19)  #2223 pc 40976
	addi	%x12, %x3, 0  #2250 pc 40980
	addi	%x3, %x3, 8  #2250 pc 40984
	addi	%x31, %x0, 29680  #2250 write_ppm_header.2958 pc 40988
	addi	%x20, %x31, 0  #2250 pc 40992
	sw	%x20, 0(%x12)  #2250 pc 40996
	sw	%x18, 4(%x12)  #2250 pc 41000
	addi	%x20, %x3, 0  #2276 pc 41004
	addi	%x3, %x3, 8  #2276 pc 41008
	addi	%x31, %x0, 30076  #2276 write_rgb.2964 pc 41012
	addi	%x21, %x31, 0  #2276 pc 41016
	sw	%x21, 0(%x20)  #2276 pc 41020
	sw	%x24, 4(%x20)  #2276 pc 41024
	addi	%x21, %x3, 0  #2299 pc 41028
	addi	%x3, %x3, 16  #2299 pc 41032
	addi	%x31, %x0, 30312  #2299 pretrace_diffuse_rays.2966 pc 41036
	addi	%x22, %x31, 0  #2299 pc 41040
	sw	%x22, 0(%x21)  #2299 pc 41044
	sw	%x9, 12(%x21)  #2299 pc 41048
	sw	%x14, 8(%x21)  #2299 pc 41052
	sw	%x7, 4(%x21)  #2299 pc 41056
	addi	%x7, %x3, 0  #2329 pc 41060
	addi	%x3, %x3, 40  #2329 pc 41064
	addi	%x31, %x0, 30772  #2329 pretrace_pixels.2969 pc 41068
	addi	%x9, %x31, 0  #2329 pc 41072
	sw	%x9, 0(%x7)  #2329 pc 41076
	sw	%x8, 36(%x7)  #2329 pc 41080
	sw	%x10, 32(%x7)  #2329 pc 41084
	sw	%x30, 28(%x7)  #2329 pc 41088
	sw	%x11, 24(%x7)  #2329 pc 41092
	lw	%x8, 84(%x2)  #2329 pc 41096
	sw	%x8, 20(%x7)  #2329 pc 41100
	sw	%x24, 16(%x7)  #2329 pc 41104
	lw	%x9, 108(%x2)  #2329 pc 41108
	sw	%x9, 12(%x7)  #2329 pc 41112
	sw	%x21, 8(%x7)  #2329 pc 41116
	lw	%x9, 80(%x2)  #2329 pc 41120
	sw	%x9, 4(%x7)  #2329 pc 41124
	addi	%x10, %x3, 0  #2354 pc 41128
	addi	%x3, %x3, 28  #2354 pc 41132
	addi	%x31, %x0, 31420  #2354 pretrace_line.2976 pc 41136
	addi	%x11, %x31, 0  #2354 pc 41140
	sw	%x11, 0(%x10)  #2354 pc 41144
	lw	%x11, 104(%x2)  #2354 pc 41148
	sw	%x11, 24(%x10)  #2354 pc 41152
	lw	%x11, 100(%x2)  #2354 pc 41156
	sw	%x11, 20(%x10)  #2354 pc 41160
	sw	%x8, 16(%x10)  #2354 pc 41164
	sw	%x7, 12(%x10)  #2354 pc 41168
	sw	%x18, 8(%x10)  #2354 pc 41172
	sw	%x9, 4(%x10)  #2354 pc 41176
	addi	%x7, %x3, 0  #2370 pc 41180
	addi	%x3, %x3, 28  #2370 pc 41184
	addi	%x31, %x0, 31624  #2370 scan_pixel.2980 pc 41188
	addi	%x11, %x31, 0  #2370 pc 41192
	sw	%x11, 0(%x7)  #2370 pc 41196
	sw	%x20, 24(%x7)  #2370 pc 41200
	sw	%x19, 20(%x7)  #2370 pc 41204
	sw	%x24, 16(%x7)  #2370 pc 41208
	sw	%x15, 12(%x7)  #2370 pc 41212
	sw	%x18, 8(%x7)  #2370 pc 41216
	sw	%x17, 4(%x7)  #2370 pc 41220
	addi	%x11, %x3, 0  #2390 pc 41224
	addi	%x3, %x3, 16  #2390 pc 41228
	addi	%x31, %x0, 32032  #2390 scan_line.2987 pc 41232
	addi	%x15, %x31, 0  #2390 pc 41236
	sw	%x15, 0(%x11)  #2390 pc 41240
	sw	%x7, 12(%x11)  #2390 pc 41244
	sw	%x10, 8(%x11)  #2390 pc 41248
	sw	%x18, 4(%x11)  #2390 pc 41252
	addi	%x7, %x3, 0  #2442 pc 41256
	addi	%x3, %x3, 8  #2442 pc 41260
	addi	%x31, %x0, 32936  #2442 create_pixelline.3001 pc 41264
	addi	%x15, %x31, 0  #2442 pc 41268
	sw	%x15, 0(%x7)  #2442 pc 41272
	sw	%x18, 4(%x7)  #2442 pc 41276
	addi	%x15, %x3, 0  #2470 pc 41280
	addi	%x3, %x3, 8  #2470 pc 41284
	addi	%x31, %x0, 33192  #2470 calc_dirvec.3008 pc 41288
	addi	%x17, %x31, 0  #2470 pc 41292
	sw	%x17, 0(%x15)  #2470 pc 41296
	sw	%x14, 4(%x15)  #2470 pc 41300
	addi	%x17, %x3, 0  #2491 pc 41304
	addi	%x3, %x3, 8  #2491 pc 41308
	addi	%x31, %x0, 34240  #2491 calc_dirvecs.3016 pc 41312
	addi	%x19, %x31, 0  #2491 pc 41316
	sw	%x19, 0(%x17)  #2491 pc 41320
	sw	%x15, 4(%x17)  #2491 pc 41324
	addi	%x15, %x3, 0  #2505 pc 41328
	addi	%x3, %x3, 8  #2505 pc 41332
	addi	%x31, %x0, 34552  #2505 calc_dirvec_rows.3021 pc 41336
	addi	%x19, %x31, 0  #2505 pc 41340
	sw	%x19, 0(%x15)  #2505 pc 41344
	sw	%x17, 4(%x15)  #2505 pc 41348
	addi	%x17, %x3, 0  #2518 pc 41352
	addi	%x3, %x3, 8  #2518 pc 41356
	addi	%x31, %x0, 34748  #2518 create_dirvec.3025 pc 41360
	addi	%x19, %x31, 0  #2518 pc 41364
	sw	%x19, 0(%x17)  #2518 pc 41368
	lw	%x19, 0(%x2)  #2518 pc 41372
	sw	%x19, 4(%x17)  #2518 pc 41376
	addi	%x20, %x3, 0  #2524 pc 41380
	addi	%x3, %x3, 8  #2524 pc 41384
	addi	%x31, %x0, 34856  #2524 create_dirvec_elements.3027 pc 41388
	addi	%x21, %x31, 0  #2524 pc 41392
	sw	%x21, 0(%x20)  #2524 pc 41396
	sw	%x17, 4(%x20)  #2524 pc 41400
	addi	%x21, %x3, 0  #2531 pc 41404
	addi	%x3, %x3, 16  #2531 pc 41408
	addi	%x31, %x0, 34964  #2531 create_dirvecs.3030 pc 41412
	addi	%x22, %x31, 0  #2531 pc 41416
	sw	%x22, 0(%x21)  #2531 pc 41420
	sw	%x14, 12(%x21)  #2531 pc 41424
	sw	%x20, 8(%x21)  #2531 pc 41428
	sw	%x17, 4(%x21)  #2531 pc 41432
	addi	%x20, %x3, 0  #2543 pc 41436
	addi	%x3, %x3, 8  #2543 pc 41440
	addi	%x31, %x0, 35168  #2543 init_dirvec_constants.3032 pc 41444
	addi	%x22, %x31, 0  #2543 pc 41448
	sw	%x22, 0(%x20)  #2543 pc 41452
	lw	%x22, 144(%x2)  #2543 pc 41456
	sw	%x22, 4(%x20)  #2543 pc 41460
	addi	%x23, %x3, 0  #2550 pc 41464
	addi	%x3, %x3, 12  #2550 pc 41468
	addi	%x31, %x0, 35276  #2550 init_vecset_constants.3035 pc 41472
	addi	%x24, %x31, 0  #2550 pc 41476
	sw	%x24, 0(%x23)  #2550 pc 41480
	sw	%x20, 8(%x23)  #2550 pc 41484
	sw	%x14, 4(%x23)  #2550 pc 41488
	addi	%x14, %x3, 0  #2557 pc 41492
	addi	%x3, %x3, 16  #2557 pc 41496
	addi	%x31, %x0, 35388  #2557 init_dirvecs.3037 pc 41500
	addi	%x20, %x31, 0  #2557 pc 41504
	sw	%x20, 0(%x14)  #2557 pc 41508
	sw	%x23, 12(%x14)  #2557 pc 41512
	sw	%x21, 8(%x14)  #2557 pc 41516
	sw	%x15, 4(%x14)  #2557 pc 41520
	addi	%x15, %x3, 0  #2568 pc 41524
	addi	%x3, %x3, 16  #2568 pc 41528
	addi	%x31, %x0, 35504  #2568 add_reflection.3039 pc 41532
	addi	%x20, %x31, 0  #2568 pc 41536
	sw	%x20, 0(%x15)  #2568 pc 41540
	sw	%x22, 12(%x15)  #2568 pc 41544
	lw	%x20, 136(%x2)  #2568 pc 41548
	sw	%x20, 8(%x15)  #2568 pc 41552
	sw	%x17, 4(%x15)  #2568 pc 41556
	addi	%x17, %x3, 0  #2577 pc 41560
	addi	%x3, %x3, 16  #2577 pc 41564
	addi	%x31, %x0, 35720  #2577 setup_rect_reflection.3046 pc 41568
	addi	%x20, %x31, 0  #2577 pc 41572
	sw	%x20, 0(%x17)  #2577 pc 41576
	sw	%x6, 12(%x17)  #2577 pc 41580
	sw	%x13, 8(%x17)  #2577 pc 41584
	sw	%x15, 4(%x17)  #2577 pc 41588
	addi	%x20, %x3, 0  #2591 pc 41592
	addi	%x3, %x3, 16  #2591 pc 41596
	addi	%x31, %x0, 36180  #2591 setup_surface_reflection.3049 pc 41600
	addi	%x21, %x31, 0  #2591 pc 41604
	sw	%x21, 0(%x20)  #2591 pc 41608
	sw	%x6, 12(%x20)  #2591 pc 41612
	sw	%x13, 8(%x20)  #2591 pc 41616
	sw	%x15, 4(%x20)  #2591 pc 41620
	addi	%x6, %x3, 0  #2606 pc 41624
	addi	%x3, %x3, 16  #2606 pc 41628
	addi	%x31, %x0, 36628  #2606 setup_reflections.3052 pc 41632
	addi	%x15, %x31, 0  #2606 pc 41636
	sw	%x15, 0(%x6)  #2606 pc 41640
	sw	%x20, 12(%x6)  #2606 pc 41644
	sw	%x17, 8(%x6)  #2606 pc 41648
	sw	%x16, 4(%x6)  #2606 pc 41652
	addi	%x29, %x3, 0  #2628 pc 41656
	addi	%x3, %x3, 60  #2628 pc 41660
	addi	%x31, %x0, 36916  #2628 rt.3054 pc 41664
	addi	%x15, %x31, 0  #2628 pc 41668
	sw	%x15, 0(%x29)  #2628 pc 41672
	sw	%x12, 56(%x29)  #2628 pc 41676
	sw	%x6, 52(%x29)  #2628 pc 41680
	sw	%x22, 48(%x29)  #2628 pc 41684
	sw	%x8, 44(%x29)  #2628 pc 41688
	sw	%x11, 40(%x29)  #2628 pc 41692
	lw	%x6, 140(%x2)  #2628 pc 41696
	sw	%x6, 36(%x29)  #2628 pc 41700
	sw	%x10, 32(%x29)  #2628 pc 41704
	sw	%x19, 28(%x29)  #2628 pc 41708
	lw	%x6, 128(%x2)  #2628 pc 41712
	sw	%x6, 24(%x29)  #2628 pc 41716
	sw	%x13, 20(%x29)  #2628 pc 41720
	sw	%x14, 16(%x29)  #2628 pc 41724
	sw	%x18, 12(%x29)  #2628 pc 41728
	sw	%x9, 8(%x29)  #2628 pc 41732
	sw	%x7, 4(%x29)  #2628 pc 41736
	addi	%x6, %x0, 512  #0 pc 41740
	addi	%x8, %x0, 3  #0 pc 41744
	addi	%x7, %x6, 0  #0 pc 41748
	sw	%x1, 148(%x2)  #2649 pc 41752
	lw	%x30, 0(%x29)  #2649 pc 41756
	addi	%x2, %x2, 152  #2649 pc 41760
	jalr	%x1, %x30, 0  #2649 pc 41764
	addi	%x2, %x2, -152  #2649 pc 41768
	lw	%x1, 148(%x2)  #2649 pc 41772
