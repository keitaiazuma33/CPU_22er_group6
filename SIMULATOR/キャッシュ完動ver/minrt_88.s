.section	".rodata"
.align	8
l.7003:	! 128.000000
l.6954:	! 0.900000
l.6843:	! 150.000000
l.6840:	! -150.000000
l.6821:	! 0.100000
l.6817:	! -2.000000
l.6814:	! 0.003906
l.6782:	! 20.000000
l.6780:	! 0.050000
l.6772:	! 0.250000
l.6763:	! 10.000000
l.6758:	! 0.300000
l.6756:	! 255.000000
l.6751:	! 0.150000
l.6744:	! 3.141593
l.6742:	! 30.000000
l.6740:	! 15.000000
l.6738:	! 0.000100
l.6689:	! 100000000.000000
l.6683:	! 1000000000.000000
l.6660:	! -0.100000
l.6646:	! 0.010000
l.6644:	! -0.200000
l.6425:	! 2.000000
l.6388:	! -200.000000
l.6385:	! 200.000000
l.6380:	! 0.017453
l.6292:	! -1.000000
l.6283:	! 0.090909
l.6281:	! 0.111111
l.6279:	! 0.142857
l.6277:	! 0.200000
l.6275:	! 0.333333
l.6268:	! 0.001389
l.6266:	! 0.041667
l.6263:	! 1.000000
l.6259:	! 3.141593
l.6256:	! 6.283185
l.6254:	! 0.000198
l.6252:	! 0.008333
l.6250:	! 0.166667
l.6248:	! 0.500000
l.6244:	! 0.000000
.section	".text"
fiszero.2509:  #pc 0
	fmv	%f1, l.6244  #0 pc 0
	feq	%f31, %f0, %f1  #1 pc 4
	ftoi	%x31, %f31  #1 pc 8
	blt	%x0, %x31, 12  #1 pc 12
	j	fbe_else.9115 #pc 16
	nop #pc 20
	addi	%x6, %x0, 1  #0 pc 24
	ret #pc 28
	nop #pc 32
fbe_else.9115: #pc 36
	addi	%x6, %x0, 0  #0 pc 36
	ret #pc 40
	nop #pc 44
fispos.2511:  #pc 48
	fmv	%f1, l.6244  #0 pc 48
	fle	%f31, %f0, %f1  #3 pc 52
	ftoi	%x31, %f31  #3 pc 56
	blt	%x0, %x31, 12  #3 pc 60
	j	fble_else.9116 #pc 64
	nop #pc 68
	addi	%x6, %x0, 0  #0 pc 72
	ret #pc 76
	nop #pc 80
fble_else.9116: #pc 84
	addi	%x6, %x0, 1  #0 pc 84
	ret #pc 88
	nop #pc 92
fisneg.2513:  #pc 96
	fmv	%f1, l.6244  #0 pc 96
	fle	%f31, %f1, %f0  #5 pc 100
	ftoi	%x31, %f31  #5 pc 104
	blt	%x0, %x31, 12  #5 pc 108
	j	fble_else.9117 #pc 112
	nop #pc 116
	addi	%x6, %x0, 0  #0 pc 120
	ret #pc 124
	nop #pc 128
fble_else.9117: #pc 132
	addi	%x6, %x0, 1  #0 pc 132
	ret #pc 136
	nop #pc 140
fneg.2515:  #pc 144
	fsub	%f0, %f30, %f0  #7 pc 144
	ret #pc 148
	nop #pc 152
fsqr.2517:  #pc 156
	fmul	%f0, %f0, %f0  #9 pc 156
	ret #pc 160
	nop #pc 164
fhalf.2519:  #pc 168
	fmv	%f1, l.6248  #0 pc 168
	fmul	%f0, %f1, %f0  #11 pc 172
	ret #pc 176
	nop #pc 180
fless.2521:  #pc 184
	fle	%f31, %f1, %f0  #13 pc 184
	ftoi	%x31, %f31  #13 pc 188
	blt	%x0, %x31, 12  #13 pc 192
	j	fble_else.9118 #pc 196
	nop #pc 200
	addi	%x6, %x0, 0  #0 pc 204
	ret #pc 208
	nop #pc 212
fble_else.9118: #pc 216
	addi	%x6, %x0, 1  #0 pc 216
	ret #pc 220
	nop #pc 224
sin_sub.2524:  #pc 228
	fmul	%f1, %f0, %f0  #16 pc 228
	fmul	%f2, %f0, %f1  #17 pc 232
	fmul	%f3, %f2, %f1  #18 pc 236
	fmul	%f1, %f3, %f1  #19 pc 240
	fmv	%f4, l.6250  #0 pc 244
	fmul	%f2, %f4, %f2  #20 pc 248
	fsub	%f0, %f0, %f2  #20 pc 252
	fmv	%f2, l.6252  #0 pc 256
	fmul	%f2, %f2, %f3  #20 pc 260
	fadd	%f0, %f0, %f2  #20 pc 264
	fmv	%f2, l.6254  #0 pc 268
	fmul	%f1, %f2, %f1  #20 pc 272
	fsub	%f0, %f0, %f1  #20 pc 276
	ret #pc 280
	nop #pc 284
sin.2526:  #pc 288
	fmv	%f1, l.6256  #0 pc 288
	fle	%f31, %f0, %f1  #24 pc 292
	ftoi	%x31, %f31  #24 pc 296
	blt	%x0, %x31, 12  #24 pc 300
	j	fble_else.9119 #pc 304
	nop #pc 308
	fmv	%f1, l.6259  #0 pc 312
	fle	%f31, %f0, %f1  #27 pc 316
	ftoi	%x31, %f31  #27 pc 320
	blt	%x0, %x31, 12  #27 pc 324
	j	fble_else.9120 #pc 328
	nop #pc 332
	fmv	%f1, l.6244  #0 pc 336
	fle	%f31, %f1, %f0  #30 pc 340
	ftoi	%x31, %f31  #30 pc 344
	blt	%x0, %x31, 12  #30 pc 348
	j	fble_else.9121 #pc 352
	nop #pc 356
	j	sin_sub.2524  #33 pc 360
	nop #pc 364
fble_else.9121: #pc 368
	fsub	%f0, %f30, %f0  #31 pc 368
	sw	%x1, 0(%x2)  #31 pc 372
	addi	%x2, %x2, 4  #31 pc 376
	jal	%x1, sin.2526  #31 pc 380
	addi	%x2, %x2, -4  #31 pc 384
	lw	%x1, 0(%x2) #31 pc 388
	fsub	%f0, %f30, %f0  #31 pc 392
	ret #pc 396
	nop #pc 400
fble_else.9120: #pc 404
	fmv	%f1, l.6259  #0 pc 404
	fsub	%f0, %f0, %f1  #28 pc 408
	sw	%x1, 0(%x2)  #28 pc 412
	addi	%x2, %x2, 4  #28 pc 416
	jal	%x1, sin_sub.2524  #28 pc 420
	addi	%x2, %x2, -4  #28 pc 424
	lw	%x1, 0(%x2) #28 pc 428
	fsub	%f0, %f30, %f0  #28 pc 432
	ret #pc 436
	nop #pc 440
fble_else.9119: #pc 444
	fmv	%f1, l.6256  #0 pc 444
	fsub	%f0, %f0, %f1  #25 pc 448
	j	sin.2526  #25 pc 452
	nop #pc 456
cos_sub.2528:  #pc 460
	fmul	%f0, %f0, %f0  #37 pc 460
	fmul	%f1, %f0, %f0  #38 pc 464
	fmul	%f2, %f1, %f0  #39 pc 468
	fmv	%f3, l.6263  #0 pc 472
	fmv	%f4, l.6248  #0 pc 476
	fmul	%f0, %f4, %f0  #40 pc 480
	fsub	%f0, %f3, %f0  #40 pc 484
	fmv	%f3, l.6266  #0 pc 488
	fmul	%f1, %f3, %f1  #40 pc 492
	fadd	%f0, %f0, %f1  #40 pc 496
	fmv	%f1, l.6268  #0 pc 500
	fmul	%f1, %f1, %f2  #40 pc 504
	fsub	%f0, %f0, %f1  #40 pc 508
	ret #pc 512
	nop #pc 516
cos.2530:  #pc 520
	fmv	%f1, l.6256  #0 pc 520
	fle	%f31, %f0, %f1  #44 pc 524
	ftoi	%x31, %f31  #44 pc 528
	blt	%x0, %x31, 12  #44 pc 532
	j	fble_else.9122 #pc 536
	nop #pc 540
	fmv	%f1, l.6259  #0 pc 544
	fle	%f31, %f0, %f1  #47 pc 548
	ftoi	%x31, %f31  #47 pc 552
	blt	%x0, %x31, 12  #47 pc 556
	j	fble_else.9123 #pc 560
	nop #pc 564
	fmv	%f1, l.6244  #0 pc 568
	fle	%f31, %f1, %f0  #50 pc 572
	ftoi	%x31, %f31  #50 pc 576
	blt	%x0, %x31, 12  #50 pc 580
	j	fble_else.9124 #pc 584
	nop #pc 588
	j	cos_sub.2528  #53 pc 592
	nop #pc 596
fble_else.9124: #pc 600
	fsub	%f0, %f30, %f0  #51 pc 600
	j	cos.2530  #51 pc 604
	nop #pc 608
fble_else.9123: #pc 612
	fmv	%f1, l.6259  #0 pc 612
	fsub	%f0, %f0, %f1  #48 pc 616
	sw	%x1, 0(%x2)  #48 pc 620
	addi	%x2, %x2, 4  #48 pc 624
	jal	%x1, cos_sub.2528  #48 pc 628
	addi	%x2, %x2, -4  #48 pc 632
	lw	%x1, 0(%x2) #48 pc 636
	fsub	%f0, %f30, %f0  #48 pc 640
	ret #pc 644
	nop #pc 648
fble_else.9122: #pc 652
	fmv	%f1, l.6256  #0 pc 652
	fsub	%f0, %f0, %f1  #45 pc 656
	j	cos.2530  #45 pc 660
	nop #pc 664
atan.2532:  #pc 668
	fmul	%f1, %f0, %f0  #57 pc 668
	fmul	%f2, %f0, %f1  #58 pc 672
	fmul	%f3, %f2, %f1  #59 pc 676
	fmul	%f4, %f3, %f1  #60 pc 680
	fmul	%f5, %f4, %f1  #61 pc 684
	fmul	%f1, %f5, %f1  #62 pc 688
	fmv	%f6, l.6275  #0 pc 692
	fmul	%f2, %f6, %f2  #63 pc 696
	fsub	%f0, %f0, %f2  #63 pc 700
	fmv	%f2, l.6277  #0 pc 704
	fmul	%f2, %f2, %f3  #63 pc 708
	fadd	%f0, %f0, %f2  #63 pc 712
	fmv	%f2, l.6279  #0 pc 716
	fmul	%f2, %f2, %f4  #63 pc 720
	fsub	%f0, %f0, %f2  #63 pc 724
	fmv	%f2, l.6281  #0 pc 728
	fmul	%f2, %f2, %f5  #63 pc 732
	fadd	%f0, %f0, %f2  #63 pc 736
	fmv	%f2, l.6283  #0 pc 740
	fmul	%f1, %f2, %f1  #63 pc 744
	fsub	%f0, %f0, %f1  #63 pc 748
	ret #pc 752
	nop #pc 756
floor.2534:  #pc 760
	ftoi	%x6, %f0  #67 pc 760
	itof	%f1, %x6  #67 pc 764
	fle	%f31, %f1, %f0  #68 pc 768
	ftoi	%x31, %f31  #68 pc 772
	blt	%x0, %x31, 12  #68 pc 776
	j	fble_else.9125 #pc 780
	nop #pc 784
	fadd	%f0, %f1, %f30  #71 pc 788
	ret #pc 792
	nop #pc 796
fble_else.9125: #pc 800
	fmv	%f0, l.6263  #0 pc 800
	fsub	%f0, %f1, %f0  #69 pc 804
	ret #pc 808
	nop #pc 812
float_of_int.2538:  #pc 816
	itof	%f0, %x6  #77 pc 816
	ret #pc 820
	nop #pc 824
int_of_float.2540:  #pc 828
	ftoi	%x6, %f0  #80 pc 828
	ret #pc 832
	nop #pc 836
mul_abs.2542:  #pc 840
	addi	%x31, %x0, -1  #pc 840
	beq	%x8, %x31, 12  #84 pc 844
	j	be_else.9126 #pc 848
	nop #pc 852
	addi	%x6, %x9, 0  #85 pc 856
	ret #pc 860
	nop #pc 864
be_else.9126: #pc 868
	addi	%x10, %x0, 1  #0 pc 868
	sll	%x10, %x10, %x8  #87 pc 872
	and	%x10, %x7, %x10  #87 pc 876
	beq	%x10, %x0, 12  #87 pc 880
	j	be_else.9127 #pc 884
	nop #pc 888
	addi	%x8, %x8, -1  #88 pc 892
	j	mul_abs.2542  #88 pc 896
	nop #pc 900
be_else.9127: #pc 904
	addi	%x10, %x8, -1  #90 pc 904
	sll	%x8, %x6, %x8  #90 pc 908
	add	%x9, %x9, %x8  #90 pc 912
	addi	%x8, %x10, 0  #0 pc 916
	j	mul_abs.2542  #90 pc 920
	nop #pc 924
mul.2547:  #pc 928
	bge	%x6, %x0, 12  #94 pc 928
	j	bge_else.9128 #pc 932
	nop #pc 936
	addi	%x8, %x6, 0  #94 pc 940
	j	bge_cont.9129 #pc 944
	nop #pc 948
bge_else.9128: #pc 952
	sub	%x8, %x0, %x6  #94 pc 952
bge_cont.9129: #pc 956
	bge	%x7, %x0, 12  #95 pc 956
	j	bge_else.9130 #pc 960
	nop #pc 964
	addi	%x9, %x7, 0  #95 pc 968
	j	bge_cont.9131 #pc 972
	nop #pc 976
bge_else.9130: #pc 980
	sub	%x9, %x0, %x7  #95 pc 980
bge_cont.9131: #pc 984
	addi	%x10, %x0, 30  #0 pc 984
	addi	%x11, %x0, 0  #0 pc 988
	sw	%x7, 0(%x2)  #96 pc 992
	sw	%x6, 4(%x2)  #96 pc 996
	addi	%x7, %x9, 0  #0 pc 1000
	addi	%x6, %x8, 0  #0 pc 1004
	addi	%x9, %x11, 0  #0 pc 1008
	addi	%x8, %x10, 0  #0 pc 1012
	sw	%x1, 8(%x2)  #96 pc 1016
	addi	%x2, %x2, 12  #96 pc 1020
	jal	%x1, mul_abs.2542  #96 pc 1024
	addi	%x2, %x2, -12  #96 pc 1028
	lw	%x1, 8(%x2) #96 pc 1032
	lw	%x7, 4(%x2)  #97 pc 1036
	srli	%x7, %x7, 31  #97 pc 1040
	lw	%x8, 0(%x2)  #97 pc 1044
	srli	%x8, %x8, 31  #97 pc 1048
	beq	%x7, %x8, 12  #97 pc 1052
	j	be_else.9132 #pc 1056
	nop #pc 1060
	ret #pc 1064
	nop #pc 1068
be_else.9132: #pc 1072
	sub	%x6, %x0, %x6  #100 pc 1072
	ret #pc 1076
	nop #pc 1080
div_abs.2550:  #pc 1084
	addi	%x31, %x0, -1  #pc 1084
	beq	%x8, %x31, 12  #104 pc 1088
	j	be_else.9133 #pc 1092
	nop #pc 1096
	addi	%x6, %x9, 0  #105 pc 1100
	ret #pc 1104
	nop #pc 1108
be_else.9133: #pc 1112
	srl	%x10, %x6, %x8  #107 pc 1112
	bge	%x10, %x7, 12  #107 pc 1116
	j	ble_else.9134 #pc 1120
	nop #pc 1124
	sll	%x10, %x7, %x8  #108 pc 1128
	sub	%x6, %x6, %x10  #108 pc 1132
	addi	%x10, %x8, -1  #108 pc 1136
	addi	%x11, %x0, 1  #0 pc 1140
	sll	%x8, %x11, %x8  #108 pc 1144
	add	%x9, %x9, %x8  #108 pc 1148
	addi	%x8, %x10, 0  #0 pc 1152
	j	div_abs.2550  #108 pc 1156
	nop #pc 1160
ble_else.9134: #pc 1164
	addi	%x8, %x8, -1  #110 pc 1164
	j	div_abs.2550  #110 pc 1168
	nop #pc 1172
div.2555:  #pc 1176
	bge	%x6, %x0, 12  #114 pc 1176
	j	bge_else.9135 #pc 1180
	nop #pc 1184
	addi	%x8, %x6, 0  #114 pc 1188
	j	bge_cont.9136 #pc 1192
	nop #pc 1196
bge_else.9135: #pc 1200
	sub	%x8, %x0, %x6  #114 pc 1200
bge_cont.9136: #pc 1204
	bge	%x7, %x0, 12  #115 pc 1204
	j	bge_else.9137 #pc 1208
	nop #pc 1212
	addi	%x9, %x7, 0  #115 pc 1216
	j	bge_cont.9138 #pc 1220
	nop #pc 1224
bge_else.9137: #pc 1228
	sub	%x9, %x0, %x7  #115 pc 1228
bge_cont.9138: #pc 1232
	addi	%x10, %x0, 30  #0 pc 1232
	addi	%x11, %x0, 0  #0 pc 1236
	sw	%x7, 0(%x2)  #116 pc 1240
	sw	%x6, 4(%x2)  #116 pc 1244
	addi	%x7, %x9, 0  #0 pc 1248
	addi	%x6, %x8, 0  #0 pc 1252
	addi	%x9, %x11, 0  #0 pc 1256
	addi	%x8, %x10, 0  #0 pc 1260
	sw	%x1, 8(%x2)  #116 pc 1264
	addi	%x2, %x2, 12  #116 pc 1268
	jal	%x1, div_abs.2550  #116 pc 1272
	addi	%x2, %x2, -12  #116 pc 1276
	lw	%x1, 8(%x2) #116 pc 1280
	lw	%x7, 4(%x2)  #117 pc 1284
	srli	%x7, %x7, 31  #117 pc 1288
	lw	%x8, 0(%x2)  #117 pc 1292
	srli	%x8, %x8, 31  #117 pc 1296
	beq	%x7, %x8, 12  #117 pc 1300
	j	be_else.9139 #pc 1304
	nop #pc 1308
	ret #pc 1312
	nop #pc 1316
be_else.9139: #pc 1320
	sub	%x6, %x0, %x6  #120 pc 1320
	ret #pc 1324
	nop #pc 1328
print_char.2558:  #pc 1332
	sw	%x6, 0(%x5)  #123 pc 1332
	addi	%x5, %x5, 4  #123 pc 1336
	ret #pc 1340
	nop #pc 1344
print_int.2560:  #pc 1348
	bge	%x6, %x0, 12  #127 pc 1348
	j	bge_else.9141 #pc 1352
	nop #pc 1356
	addi	%x31, %x0, 10  #pc 1360
	bge	%x6, %x31, 12  #131 pc 1364
	j	bge_else.9142 #pc 1368
	nop #pc 1372
	addi	%x7, %x0, 10  #0 pc 1376
	sw	%x6, 0(%x2)  #134 pc 1380
	sw	%x1, 4(%x2)  #134 pc 1384
	addi	%x2, %x2, 8  #134 pc 1388
	jal	%x1, div.2555  #134 pc 1392
	addi	%x2, %x2, -8  #134 pc 1396
	lw	%x1, 4(%x2) #134 pc 1400
	sw	%x6, 4(%x2)  #135 pc 1404
	sw	%x1, 8(%x2)  #135 pc 1408
	addi	%x2, %x2, 12  #135 pc 1412
	jal	%x1, print_int.2560  #135 pc 1416
	addi	%x2, %x2, -12  #135 pc 1420
	lw	%x1, 8(%x2) #135 pc 1424
	addi	%x7, %x0, 10  #0 pc 1428
	lw	%x6, 4(%x2)  #136 pc 1432
	sw	%x1, 8(%x2)  #136 pc 1436
	addi	%x2, %x2, 12  #136 pc 1440
	jal	%x1, mul.2547  #136 pc 1444
	addi	%x2, %x2, -12  #136 pc 1448
	lw	%x1, 8(%x2) #136 pc 1452
	lw	%x7, 0(%x2)  #136 pc 1456
	sub	%x6, %x7, %x6  #136 pc 1460
	addi	%x6, %x6, 48  #136 pc 1464
	sw	%x6, 0(%x5)  #136 pc 1468
	addi	%x5, %x5, 4  #136 pc 1472
	ret #pc 1476
	nop #pc 1480
bge_else.9142: #pc 1484
	addi	%x6, %x6, 48  #132 pc 1484
	sw	%x6, 0(%x5)  #132 pc 1488
	addi	%x5, %x5, 4  #132 pc 1492
	ret #pc 1496
	nop #pc 1500
bge_else.9141: #pc 1504
	addi	%x7, %x0, 45  #0 pc 1504
	sw	%x7, 0(%x5)  #128 pc 1508
	addi	%x5, %x5, 4  #128 pc 1512
	sub	%x6, %x0, %x6  #129 pc 1516
	j	print_int.2560  #129 pc 1520
	nop #pc 1524
read_int.2562:  #pc 1528
	lw	%x6, 0(%x4)  #142 pc 1528
	addi	%x4, %x4, 4  #142 pc 1532
	ret #pc 1536
	nop #pc 1540
read_float.2564:  #pc 1544
	flw	%f0, 0(%x4)  #145 pc 1544
	addi	%x4, %x4, 4  #145 pc 1548
	ret #pc 1552
	nop #pc 1556
assign_array.2566:  #pc 1560
	bge	%x8, %x0, 12  #196 pc 1560
	j	bge_else.9145 #pc 1564
	nop #pc 1568
	beq	%x8, %x0, 12  #199 pc 1572
	j	be_else.9146 #pc 1576
	nop #pc 1580
	slli	%x8, %x8, 2  #200 pc 1584
	add	%x31, %x8, %x6  #200 pc 1588
	sw	%x7, 0(%x31)  #200 pc 1592
	ret #pc 1596
	nop #pc 1600
be_else.9146: #pc 1604
	slli	%x9, %x8, 2  #202 pc 1604
	add	%x31, %x9, %x6  #202 pc 1608
	sw	%x7, 0(%x31)  #202 pc 1612
	addi	%x8, %x8, -1  #203 pc 1616
	j	assign_array.2566  #203 pc 1620
	nop #pc 1624
bge_else.9145: #pc 1628
	ret #pc 1628
	nop #pc 1632
create_array.2570:  #pc 1636
	addi	%x8, %x3, 0  #207 pc 1636
	addi	%x9, %x8, 0  #208 pc 1640
	slli	%x10, %x6, 2  #209 pc 1644
	add	%x8, %x8, %x10  #209 pc 1648
	addi	%x3, %x8, 0  #209 pc 1652
	addi	%x8, %x6, -1  #210 pc 1656
	sw	%x9, 0(%x2)  #210 pc 1660
	addi	%x6, %x9, 0  #0 pc 1664
	sw	%x1, 4(%x2)  #210 pc 1668
	addi	%x2, %x2, 8  #210 pc 1672
	jal	%x1, assign_array.2566  #210 pc 1676
	addi	%x2, %x2, -8  #210 pc 1680
	lw	%x1, 4(%x2) #210 pc 1684
	lw	%x6, 0(%x2)  #211 pc 1688
	ret #pc 1692
	nop #pc 1696
assign_farray.2573:  #pc 1700
	bge	%x7, %x0, 12  #215 pc 1700
	j	bge_else.9149 #pc 1704
	nop #pc 1708
	beq	%x7, %x0, 12  #218 pc 1712
	j	be_else.9150 #pc 1716
	nop #pc 1720
	slli	%x7, %x7, 2  #219 pc 1724
	add	%x31, %x7, %x6  #219 pc 1728
	fsw	%f0, 0(%x31) #219 pc 1732
	ret #pc 1736
	nop #pc 1740
be_else.9150: #pc 1744
	slli	%x8, %x7, 2  #221 pc 1744
	add	%x31, %x8, %x6  #221 pc 1748
	fsw	%f0, 0(%x31) #221 pc 1752
	addi	%x7, %x7, -1  #222 pc 1756
	j	assign_farray.2573  #222 pc 1760
	nop #pc 1764
bge_else.9149: #pc 1768
	ret #pc 1768
	nop #pc 1772
create_float_array.2577:  #pc 1776
	addi	%x7, %x3, 0  #226 pc 1776
	addi	%x8, %x7, 0  #227 pc 1780
	slli	%x9, %x6, 2  #228 pc 1784
	add	%x7, %x7, %x9  #228 pc 1788
	addi	%x3, %x7, 0  #228 pc 1792
	addi	%x7, %x6, -1  #229 pc 1796
	sw	%x8, 0(%x2)  #229 pc 1800
	addi	%x6, %x8, 0  #0 pc 1804
	sw	%x1, 4(%x2)  #229 pc 1808
	addi	%x2, %x2, 8  #229 pc 1812
	jal	%x1, assign_farray.2573  #229 pc 1816
	addi	%x2, %x2, -8  #229 pc 1820
	lw	%x1, 4(%x2) #229 pc 1824
	lw	%x6, 0(%x2)  #230 pc 1828
	ret #pc 1832
	nop #pc 1836
xor.2610:  #pc 1840
	beq	%x6, %x0, 12  #368 pc 1840
	j	be_else.9153 #pc 1844
	nop #pc 1848
	addi	%x6, %x7, 0  #368 pc 1852
	ret #pc 1856
	nop #pc 1860
be_else.9153: #pc 1864
	beq	%x7, %x0, 12  #368 pc 1864
	j	be_else.9154 #pc 1868
	nop #pc 1872
	addi	%x6, %x0, 1  #0 pc 1876
	ret #pc 1880
	nop #pc 1884
be_else.9154: #pc 1888
	addi	%x6, %x0, 0  #0 pc 1888
	ret #pc 1892
	nop #pc 1896
sgn.2613:  #pc 1900
	fsw	%f0, 0(%x2)  #376 pc 1900
	sw	%x1, 8(%x2)  #376 pc 1904
	addi	%x2, %x2, 12  #376 pc 1908
	jal	%x1, fiszero.2509  #376 pc 1912
	addi	%x2, %x2, -12  #376 pc 1916
	lw	%x1, 8(%x2) #376 pc 1920
	beq	%x6, %x0, 12  #376 pc 1924
	j	be_else.9155 #pc 1928
	nop #pc 1932
	flw	%f0, 0(%x2)  #377 pc 1936
	sw	%x1, 8(%x2)  #377 pc 1940
	addi	%x2, %x2, 12  #377 pc 1944
	jal	%x1, fispos.2511  #377 pc 1948
	addi	%x2, %x2, -12  #377 pc 1952
	lw	%x1, 8(%x2) #377 pc 1956
	beq	%x6, %x0, 12  #377 pc 1960
	j	be_else.9156 #pc 1964
	nop #pc 1968
	fmv	%f0, l.6292  #0 pc 1972
	ret #pc 1976
	nop #pc 1980
be_else.9156: #pc 1984
	fmv	%f0, l.6263  #0 pc 1984
	ret #pc 1988
	nop #pc 1992
be_else.9155: #pc 1996
	fmv	%f0, l.6244  #0 pc 1996
	ret #pc 2000
	nop #pc 2004
fneg_cond.2615:  #pc 2008
	beq	%x6, %x0, 12  #383 pc 2008
	j	be_else.9157 #pc 2012
	nop #pc 2016
	j	fneg.2515  #383 pc 2020
	nop #pc 2024
be_else.9157: #pc 2028
	ret #pc 2028
	nop #pc 2032
add_mod5.2618:  #pc 2036
	add	%x6, %x6, %x7  #388 pc 2036
	addi	%x31, %x0, 5  #pc 2040
	bge	%x6, %x31, 12  #389 pc 2044
	j	bge_else.9158 #pc 2048
	nop #pc 2052
	addi	%x6, %x6, -5  #389 pc 2056
	ret #pc 2060
	nop #pc 2064
bge_else.9158: #pc 2068
	ret #pc 2068
	nop #pc 2072
vecset.2621:  #pc 2076
	fsw	%f0, 0(%x6)  #404 pc 2076
	fsw	%f1, 4(%x6)  #405 pc 2080
	fsw	%f2, 8(%x6)  #406 pc 2084
	ret #pc 2088
	nop #pc 2092
vecfill.2626:  #pc 2096
	fsw	%f0, 0(%x6)  #411 pc 2096
	fsw	%f0, 4(%x6)  #412 pc 2100
	fsw	%f0, 8(%x6)  #413 pc 2104
	ret #pc 2108
	nop #pc 2112
vecbzero.2629:  #pc 2116
	fmv	%f0, l.6244  #0 pc 2116
	j	vecfill.2626  #418 pc 2120
	nop #pc 2124
veccpy.2631:  #pc 2128
	flw	%f0, 0(%x7)  #423 pc 2128
	fsw	%f0, 0(%x6)  #423 pc 2132
	flw	%f0, 4(%x7)  #424 pc 2136
	fsw	%f0, 4(%x6)  #424 pc 2140
	flw	%f0, 8(%x7)  #425 pc 2144
	fsw	%f0, 8(%x6)  #425 pc 2148
	ret #pc 2152
	nop #pc 2156
vecunit_sgn.2634:  #pc 2160
	flw	%f0, 0(%x6)  #447 pc 2160
	sw	%x7, 0(%x2)  #447 pc 2164
	sw	%x6, 4(%x2)  #447 pc 2168
	sw	%x1, 8(%x2)  #447 pc 2172
	addi	%x2, %x2, 12  #447 pc 2176
	jal	%x1, fsqr.2517  #447 pc 2180
	addi	%x2, %x2, -12  #447 pc 2184
	lw	%x1, 8(%x2) #447 pc 2188
	lw	%x6, 4(%x2)  #447 pc 2192
	flw	%f1, 4(%x6)  #447 pc 2196
	fsw	%f0, 8(%x2)  #447 pc 2200
	fadd	%f0, %f1, %f30  #0 pc 2204
	sw	%x1, 16(%x2)  #447 pc 2208
	addi	%x2, %x2, 20  #447 pc 2212
	jal	%x1, fsqr.2517  #447 pc 2216
	addi	%x2, %x2, -20  #447 pc 2220
	lw	%x1, 16(%x2) #447 pc 2224
	flw	%f1, 8(%x2)  #447 pc 2228
	fadd	%f0, %f1, %f0  #447 pc 2232
	lw	%x6, 4(%x2)  #447 pc 2236
	flw	%f1, 8(%x6)  #447 pc 2240
	fsw	%f0, 16(%x2)  #447 pc 2244
	fadd	%f0, %f1, %f30  #0 pc 2248
	sw	%x1, 24(%x2)  #447 pc 2252
	addi	%x2, %x2, 28  #447 pc 2256
	jal	%x1, fsqr.2517  #447 pc 2260
	addi	%x2, %x2, -28  #447 pc 2264
	lw	%x1, 24(%x2) #447 pc 2268
	flw	%f1, 16(%x2)  #447 pc 2272
	fadd	%f0, %f1, %f0  #447 pc 2276
	fsqrt	%f0, %f0  #447 pc 2280
	fsw	%f0, 24(%x2)  #448 pc 2284
	sw	%x1, 32(%x2)  #448 pc 2288
	addi	%x2, %x2, 36  #448 pc 2292
	jal	%x1, fiszero.2509  #448 pc 2296
	addi	%x2, %x2, -36  #448 pc 2300
	lw	%x1, 32(%x2) #448 pc 2304
	beq	%x6, %x0, 12  #448 pc 2308
	j	be_else.9162 #pc 2312
	nop #pc 2316
	lw	%x6, 0(%x2)  #448 pc 2320
	beq	%x6, %x0, 12  #448 pc 2324
	j	be_else.9164 #pc 2328
	nop #pc 2332
	fmv	%f0, l.6263  #0 pc 2336
	flw	%f1, 24(%x2)  #448 pc 2340
	fdiv	%f0, %f0, %f1  #448 pc 2344
	j	be_cont.9165 #pc 2348
	nop #pc 2352
be_else.9164: #pc 2356
	fmv	%f0, l.6292  #0 pc 2356
	flw	%f1, 24(%x2)  #448 pc 2360
	fdiv	%f0, %f0, %f1  #448 pc 2364
be_cont.9165: #pc 2368
	j	be_cont.9163 #pc 2368
	nop #pc 2372
be_else.9162: #pc 2376
	fmv	%f0, l.6263  #0 pc 2376
be_cont.9163: #pc 2380
	lw	%x6, 4(%x2)  #449 pc 2380
	flw	%f1, 0(%x6)  #449 pc 2384
	fmul	%f1, %f1, %f0  #449 pc 2388
	fsw	%f1, 0(%x6)  #449 pc 2392
	flw	%f1, 4(%x6)  #450 pc 2396
	fmul	%f1, %f1, %f0  #450 pc 2400
	fsw	%f1, 4(%x6)  #450 pc 2404
	flw	%f1, 8(%x6)  #451 pc 2408
	fmul	%f0, %f1, %f0  #451 pc 2412
	fsw	%f0, 8(%x6)  #451 pc 2416
	ret #pc 2420
	nop #pc 2424
veciprod.2637:  #pc 2428
	flw	%f0, 0(%x6)  #456 pc 2428
	flw	%f1, 0(%x7)  #456 pc 2432
	fmul	%f0, %f0, %f1  #456 pc 2436
	flw	%f1, 4(%x6)  #456 pc 2440
	flw	%f2, 4(%x7)  #456 pc 2444
	fmul	%f1, %f1, %f2  #456 pc 2448
	fadd	%f0, %f0, %f1  #456 pc 2452
	flw	%f1, 8(%x6)  #456 pc 2456
	flw	%f2, 8(%x7)  #456 pc 2460
	fmul	%f1, %f1, %f2  #456 pc 2464
	fadd	%f0, %f0, %f1  #456 pc 2468
	ret #pc 2472
	nop #pc 2476
veciprod2.2640:  #pc 2480
	flw	%f3, 0(%x6)  #461 pc 2480
	fmul	%f0, %f3, %f0  #461 pc 2484
	flw	%f3, 4(%x6)  #461 pc 2488
	fmul	%f1, %f3, %f1  #461 pc 2492
	fadd	%f0, %f0, %f1  #461 pc 2496
	flw	%f1, 8(%x6)  #461 pc 2500
	fmul	%f1, %f1, %f2  #461 pc 2504
	fadd	%f0, %f0, %f1  #461 pc 2508
	ret #pc 2512
	nop #pc 2516
vecaccum.2645:  #pc 2520
	flw	%f1, 0(%x6)  #466 pc 2520
	flw	%f2, 0(%x7)  #466 pc 2524
	fmul	%f2, %f0, %f2  #466 pc 2528
	fadd	%f1, %f1, %f2  #466 pc 2532
	fsw	%f1, 0(%x6)  #466 pc 2536
	flw	%f1, 4(%x6)  #467 pc 2540
	flw	%f2, 4(%x7)  #467 pc 2544
	fmul	%f2, %f0, %f2  #467 pc 2548
	fadd	%f1, %f1, %f2  #467 pc 2552
	fsw	%f1, 4(%x6)  #467 pc 2556
	flw	%f1, 8(%x6)  #468 pc 2560
	flw	%f2, 8(%x7)  #468 pc 2564
	fmul	%f0, %f0, %f2  #468 pc 2568
	fadd	%f0, %f1, %f0  #468 pc 2572
	fsw	%f0, 8(%x6)  #468 pc 2576
	ret #pc 2580
	nop #pc 2584
vecadd.2649:  #pc 2588
	flw	%f0, 0(%x6)  #473 pc 2588
	flw	%f1, 0(%x7)  #473 pc 2592
	fadd	%f0, %f0, %f1  #473 pc 2596
	fsw	%f0, 0(%x6)  #473 pc 2600
	flw	%f0, 4(%x6)  #474 pc 2604
	flw	%f1, 4(%x7)  #474 pc 2608
	fadd	%f0, %f0, %f1  #474 pc 2612
	fsw	%f0, 4(%x6)  #474 pc 2616
	flw	%f0, 8(%x6)  #475 pc 2620
	flw	%f1, 8(%x7)  #475 pc 2624
	fadd	%f0, %f0, %f1  #475 pc 2628
	fsw	%f0, 8(%x6)  #475 pc 2632
	ret #pc 2636
	nop #pc 2640
vecscale.2652:  #pc 2644
	flw	%f1, 0(%x6)  #489 pc 2644
	fmul	%f1, %f1, %f0  #489 pc 2648
	fsw	%f1, 0(%x6)  #489 pc 2652
	flw	%f1, 4(%x6)  #490 pc 2656
	fmul	%f1, %f1, %f0  #490 pc 2660
	fsw	%f1, 4(%x6)  #490 pc 2664
	flw	%f1, 8(%x6)  #491 pc 2668
	fmul	%f0, %f1, %f0  #491 pc 2672
	fsw	%f0, 8(%x6)  #491 pc 2676
	ret #pc 2680
	nop #pc 2684
vecaccumv.2655:  #pc 2688
	flw	%f0, 0(%x6)  #496 pc 2688
	flw	%f1, 0(%x7)  #496 pc 2692
	flw	%f2, 0(%x8)  #496 pc 2696
	fmul	%f1, %f1, %f2  #496 pc 2700
	fadd	%f0, %f0, %f1  #496 pc 2704
	fsw	%f0, 0(%x6)  #496 pc 2708
	flw	%f0, 4(%x6)  #497 pc 2712
	flw	%f1, 4(%x7)  #497 pc 2716
	flw	%f2, 4(%x8)  #497 pc 2720
	fmul	%f1, %f1, %f2  #497 pc 2724
	fadd	%f0, %f0, %f1  #497 pc 2728
	fsw	%f0, 4(%x6)  #497 pc 2732
	flw	%f0, 8(%x6)  #498 pc 2736
	flw	%f1, 8(%x7)  #498 pc 2740
	flw	%f2, 8(%x8)  #498 pc 2744
	fmul	%f1, %f1, %f2  #498 pc 2748
	fadd	%f0, %f0, %f1  #498 pc 2752
	fsw	%f0, 8(%x6)  #498 pc 2756
	ret #pc 2760
	nop #pc 2764
o_texturetype.2659:  #pc 2768
	lw	%x6, 0(%x6)  #507 pc 2768
	ret #pc 2772
	nop #pc 2776
o_form.2661:  #pc 2780
	lw	%x6, 4(%x6)  #517 pc 2780
	ret #pc 2784
	nop #pc 2788
o_reflectiontype.2663:  #pc 2792
	lw	%x6, 8(%x6)  #527 pc 2792
	ret #pc 2796
	nop #pc 2800
o_isinvert.2665:  #pc 2804
	lw	%x6, 24(%x6)  #537 pc 2804
	ret #pc 2808
	nop #pc 2812
o_isrot.2667:  #pc 2816
	lw	%x6, 12(%x6)  #546 pc 2816
	ret #pc 2820
	nop #pc 2824
o_param_a.2669:  #pc 2828
	lw	%x6, 16(%x6)  #555 pc 2828
	flw	%f0, 0(%x6)  #560 pc 2832
	ret #pc 2836
	nop #pc 2840
o_param_b.2671:  #pc 2844
	lw	%x6, 16(%x6)  #565 pc 2844
	flw	%f0, 4(%x6)  #570 pc 2848
	ret #pc 2852
	nop #pc 2856
o_param_c.2673:  #pc 2860
	lw	%x6, 16(%x6)  #575 pc 2860
	flw	%f0, 8(%x6)  #580 pc 2864
	ret #pc 2868
	nop #pc 2872
o_param_abc.2675:  #pc 2876
	lw	%x6, 16(%x6)  #585 pc 2876
	ret #pc 2880
	nop #pc 2884
o_param_x.2677:  #pc 2888
	lw	%x6, 20(%x6)  #595 pc 2888
	flw	%f0, 0(%x6)  #600 pc 2892
	ret #pc 2896
	nop #pc 2900
o_param_y.2679:  #pc 2904
	lw	%x6, 20(%x6)  #605 pc 2904
	flw	%f0, 4(%x6)  #610 pc 2908
	ret #pc 2912
	nop #pc 2916
o_param_z.2681:  #pc 2920
	lw	%x6, 20(%x6)  #615 pc 2920
	flw	%f0, 8(%x6)  #620 pc 2924
	ret #pc 2928
	nop #pc 2932
o_diffuse.2683:  #pc 2936
	lw	%x6, 28(%x6)  #625 pc 2936
	flw	%f0, 0(%x6)  #630 pc 2940
	ret #pc 2944
	nop #pc 2948
o_hilight.2685:  #pc 2952
	lw	%x6, 28(%x6)  #635 pc 2952
	flw	%f0, 4(%x6)  #640 pc 2956
	ret #pc 2960
	nop #pc 2964
o_color_red.2687:  #pc 2968
	lw	%x6, 32(%x6)  #645 pc 2968
	flw	%f0, 0(%x6)  #650 pc 2972
	ret #pc 2976
	nop #pc 2980
o_color_green.2689:  #pc 2984
	lw	%x6, 32(%x6)  #655 pc 2984
	flw	%f0, 4(%x6)  #660 pc 2988
	ret #pc 2992
	nop #pc 2996
o_color_blue.2691:  #pc 3000
	lw	%x6, 32(%x6)  #665 pc 3000
	flw	%f0, 8(%x6)  #670 pc 3004
	ret #pc 3008
	nop #pc 3012
o_param_r1.2693:  #pc 3016
	lw	%x6, 36(%x6)  #675 pc 3016
	flw	%f0, 0(%x6)  #680 pc 3020
	ret #pc 3024
	nop #pc 3028
o_param_r2.2695:  #pc 3032
	lw	%x6, 36(%x6)  #685 pc 3032
	flw	%f0, 4(%x6)  #690 pc 3036
	ret #pc 3040
	nop #pc 3044
o_param_r3.2697:  #pc 3048
	lw	%x6, 36(%x6)  #695 pc 3048
	flw	%f0, 8(%x6)  #700 pc 3052
	ret #pc 3056
	nop #pc 3060
o_param_ctbl.2699:  #pc 3064
	lw	%x6, 40(%x6)  #712 pc 3064
	ret #pc 3068
	nop #pc 3072
p_rgb.2701:  #pc 3076
	lw	%x6, 0(%x6)  #726 pc 3076
	ret #pc 3080
	nop #pc 3084
p_intersection_points.2703:  #pc 3088
	lw	%x6, 4(%x6)  #733 pc 3088
	ret #pc 3092
	nop #pc 3096
p_surface_ids.2705:  #pc 3100
	lw	%x6, 8(%x6)  #741 pc 3100
	ret #pc 3104
	nop #pc 3108
p_calc_diffuse.2707:  #pc 3112
	lw	%x6, 12(%x6)  #748 pc 3112
	ret #pc 3116
	nop #pc 3120
p_energy.2709:  #pc 3124
	lw	%x6, 16(%x6)  #755 pc 3124
	ret #pc 3128
	nop #pc 3132
p_received_ray_20percent.2711:  #pc 3136
	lw	%x6, 20(%x6)  #762 pc 3136
	ret #pc 3140
	nop #pc 3144
p_group_id.2713:  #pc 3148
	lw	%x6, 24(%x6)  #778 pc 3148
	lw	%x6, 0(%x6)  #780 pc 3152
	ret #pc 3156
	nop #pc 3160
p_set_group_id.2715:  #pc 3164
	lw	%x6, 24(%x6)  #785 pc 3164
	sw	%x7, 0(%x6)  #787 pc 3168
	ret #pc 3172
	nop #pc 3176
p_nvectors.2718:  #pc 3180
	lw	%x6, 28(%x6)  #792 pc 3180
	ret #pc 3184
	nop #pc 3188
d_vec.2720:  #pc 3192
	lw	%x6, 0(%x6)  #803 pc 3192
	ret #pc 3196
	nop #pc 3200
d_const.2722:  #pc 3204
	lw	%x6, 4(%x6)  #809 pc 3204
	ret #pc 3208
	nop #pc 3212
r_surface_id.2724:  #pc 3216
	lw	%x6, 0(%x6)  #819 pc 3216
	ret #pc 3220
	nop #pc 3224
r_dvec.2726:  #pc 3228
	lw	%x6, 4(%x6)  #825 pc 3228
	ret #pc 3232
	nop #pc 3236
r_bright.2728:  #pc 3240
	flw	%f0, 8(%x6)  #831 pc 3240
	ret #pc 3244
	nop #pc 3248
rad.2730:  #pc 3252
	fmv	%f1, l.6380  #0 pc 3252
	fmul	%f0, %f0, %f1  #841 pc 3256
	ret #pc 3260
	nop #pc 3264
read_screen_settings.2732:  #pc 3268
	lw	%x6, 20(%x29)  #0 pc 3268
	lw	%x7, 16(%x29)  #0 pc 3272
	lw	%x8, 12(%x29)  #0 pc 3276
	lw	%x9, 8(%x29)  #0 pc 3280
	lw	%x10, 4(%x29)  #0 pc 3284
	sw	%x6, 0(%x2)  #848 pc 3288
	sw	%x8, 4(%x2)  #848 pc 3292
	sw	%x9, 8(%x2)  #848 pc 3296
	sw	%x7, 12(%x2)  #848 pc 3300
	sw	%x10, 16(%x2)  #848 pc 3304
	sw	%x1, 20(%x2)  #848 pc 3308
	addi	%x2, %x2, 24  #848 pc 3312
	jal	%x1, read_float.2564  #848 pc 3316
	addi	%x2, %x2, -24  #848 pc 3320
	lw	%x1, 20(%x2) #848 pc 3324
	lw	%x6, 16(%x2)  #848 pc 3328
	fsw	%f0, 0(%x6)  #848 pc 3332
	sw	%x1, 20(%x2)  #849 pc 3336
	addi	%x2, %x2, 24  #849 pc 3340
	jal	%x1, read_float.2564  #849 pc 3344
	addi	%x2, %x2, -24  #849 pc 3348
	lw	%x1, 20(%x2) #849 pc 3352
	lw	%x6, 16(%x2)  #849 pc 3356
	fsw	%f0, 4(%x6)  #849 pc 3360
	sw	%x1, 20(%x2)  #850 pc 3364
	addi	%x2, %x2, 24  #850 pc 3368
	jal	%x1, read_float.2564  #850 pc 3372
	addi	%x2, %x2, -24  #850 pc 3376
	lw	%x1, 20(%x2) #850 pc 3380
	lw	%x6, 16(%x2)  #850 pc 3384
	fsw	%f0, 8(%x6)  #850 pc 3388
	sw	%x1, 20(%x2)  #852 pc 3392
	addi	%x2, %x2, 24  #852 pc 3396
	jal	%x1, read_float.2564  #852 pc 3400
	addi	%x2, %x2, -24  #852 pc 3404
	lw	%x1, 20(%x2) #852 pc 3408
	sw	%x1, 20(%x2)  #852 pc 3412
	addi	%x2, %x2, 24  #852 pc 3416
	jal	%x1, rad.2730  #852 pc 3420
	addi	%x2, %x2, -24  #852 pc 3424
	lw	%x1, 20(%x2) #852 pc 3428
	fsw	%f0, 24(%x2)  #853 pc 3432
	sw	%x1, 32(%x2)  #853 pc 3436
	addi	%x2, %x2, 36  #853 pc 3440
	jal	%x1, cos.2530  #853 pc 3444
	addi	%x2, %x2, -36  #853 pc 3448
	lw	%x1, 32(%x2) #853 pc 3452
	flw	%f1, 24(%x2)  #854 pc 3456
	fsw	%f0, 32(%x2)  #854 pc 3460
	fadd	%f0, %f1, %f30  #0 pc 3464
	sw	%x1, 40(%x2)  #854 pc 3468
	addi	%x2, %x2, 44  #854 pc 3472
	jal	%x1, sin.2526  #854 pc 3476
	addi	%x2, %x2, -44  #854 pc 3480
	lw	%x1, 40(%x2) #854 pc 3484
	fsw	%f0, 40(%x2)  #855 pc 3488
	sw	%x1, 48(%x2)  #855 pc 3492
	addi	%x2, %x2, 52  #855 pc 3496
	jal	%x1, read_float.2564  #855 pc 3500
	addi	%x2, %x2, -52  #855 pc 3504
	lw	%x1, 48(%x2) #855 pc 3508
	sw	%x1, 48(%x2)  #855 pc 3512
	addi	%x2, %x2, 52  #855 pc 3516
	jal	%x1, rad.2730  #855 pc 3520
	addi	%x2, %x2, -52  #855 pc 3524
	lw	%x1, 48(%x2) #855 pc 3528
	fsw	%f0, 48(%x2)  #856 pc 3532
	sw	%x1, 56(%x2)  #856 pc 3536
	addi	%x2, %x2, 60  #856 pc 3540
	jal	%x1, cos.2530  #856 pc 3544
	addi	%x2, %x2, -60  #856 pc 3548
	lw	%x1, 56(%x2) #856 pc 3552
	flw	%f1, 48(%x2)  #857 pc 3556
	fsw	%f0, 56(%x2)  #857 pc 3560
	fadd	%f0, %f1, %f30  #0 pc 3564
	sw	%x1, 64(%x2)  #857 pc 3568
	addi	%x2, %x2, 68  #857 pc 3572
	jal	%x1, sin.2526  #857 pc 3576
	addi	%x2, %x2, -68  #857 pc 3580
	lw	%x1, 64(%x2) #857 pc 3584
	flw	%f1, 32(%x2)  #859 pc 3588
	fmul	%f2, %f1, %f0  #859 pc 3592
	fmv	%f3, l.6385  #0 pc 3596
	fmul	%f2, %f2, %f3  #859 pc 3600
	lw	%x6, 12(%x2)  #859 pc 3604
	fsw	%f2, 0(%x6)  #859 pc 3608
	fmv	%f2, l.6388  #0 pc 3612
	flw	%f3, 40(%x2)  #860 pc 3616
	fmul	%f2, %f3, %f2  #860 pc 3620
	fsw	%f2, 4(%x6)  #860 pc 3624
	flw	%f2, 56(%x2)  #861 pc 3628
	fmul	%f4, %f1, %f2  #861 pc 3632
	fmv	%f5, l.6385  #0 pc 3636
	fmul	%f4, %f4, %f5  #861 pc 3640
	fsw	%f4, 8(%x6)  #861 pc 3644
	lw	%x7, 8(%x2)  #863 pc 3648
	fsw	%f2, 0(%x7)  #863 pc 3652
	fmv	%f4, l.6244  #0 pc 3656
	fsw	%f4, 4(%x7)  #864 pc 3660
	fsw	%f0, 64(%x2)  #865 pc 3664
	sw	%x1, 72(%x2)  #865 pc 3668
	addi	%x2, %x2, 76  #865 pc 3672
	jal	%x1, fneg.2515  #865 pc 3676
	addi	%x2, %x2, -76  #865 pc 3680
	lw	%x1, 72(%x2) #865 pc 3684
	lw	%x6, 8(%x2)  #865 pc 3688
	fsw	%f0, 8(%x6)  #865 pc 3692
	flw	%f0, 40(%x2)  #867 pc 3696
	sw	%x1, 72(%x2)  #867 pc 3700
	addi	%x2, %x2, 76  #867 pc 3704
	jal	%x1, fneg.2515  #867 pc 3708
	addi	%x2, %x2, -76  #867 pc 3712
	lw	%x1, 72(%x2) #867 pc 3716
	flw	%f1, 64(%x2)  #867 pc 3720
	fmul	%f0, %f0, %f1  #867 pc 3724
	lw	%x6, 4(%x2)  #867 pc 3728
	fsw	%f0, 0(%x6)  #867 pc 3732
	flw	%f0, 32(%x2)  #868 pc 3736
	sw	%x1, 72(%x2)  #868 pc 3740
	addi	%x2, %x2, 76  #868 pc 3744
	jal	%x1, fneg.2515  #868 pc 3748
	addi	%x2, %x2, -76  #868 pc 3752
	lw	%x1, 72(%x2) #868 pc 3756
	lw	%x6, 4(%x2)  #868 pc 3760
	fsw	%f0, 4(%x6)  #868 pc 3764
	flw	%f0, 40(%x2)  #869 pc 3768
	sw	%x1, 72(%x2)  #869 pc 3772
	addi	%x2, %x2, 76  #869 pc 3776
	jal	%x1, fneg.2515  #869 pc 3780
	addi	%x2, %x2, -76  #869 pc 3784
	lw	%x1, 72(%x2) #869 pc 3788
	flw	%f1, 56(%x2)  #869 pc 3792
	fmul	%f0, %f0, %f1  #869 pc 3796
	lw	%x6, 4(%x2)  #869 pc 3800
	fsw	%f0, 8(%x6)  #869 pc 3804
	lw	%x6, 16(%x2)  #871 pc 3808
	flw	%f0, 0(%x6)  #871 pc 3812
	lw	%x7, 12(%x2)  #871 pc 3816
	flw	%f1, 0(%x7)  #871 pc 3820
	fsub	%f0, %f0, %f1  #871 pc 3824
	lw	%x8, 0(%x2)  #871 pc 3828
	fsw	%f0, 0(%x8)  #871 pc 3832
	flw	%f0, 4(%x6)  #872 pc 3836
	flw	%f1, 4(%x7)  #872 pc 3840
	fsub	%f0, %f0, %f1  #872 pc 3844
	fsw	%f0, 4(%x8)  #872 pc 3848
	flw	%f0, 8(%x6)  #873 pc 3852
	flw	%f1, 8(%x7)  #873 pc 3856
	fsub	%f0, %f0, %f1  #873 pc 3860
	fsw	%f0, 8(%x8)  #873 pc 3864
	ret #pc 3868
	nop #pc 3872
read_light.2734:  #pc 3876
	lw	%x6, 8(%x29)  #0 pc 3876
	lw	%x7, 4(%x29)  #0 pc 3880
	sw	%x7, 0(%x2)  #880 pc 3884
	sw	%x6, 4(%x2)  #880 pc 3888
	sw	%x1, 8(%x2)  #880 pc 3892
	addi	%x2, %x2, 12  #880 pc 3896
	jal	%x1, read_int.2562  #880 pc 3900
	addi	%x2, %x2, -12  #880 pc 3904
	lw	%x1, 8(%x2) #880 pc 3908
	sw	%x1, 8(%x2)  #883 pc 3912
	addi	%x2, %x2, 12  #883 pc 3916
	jal	%x1, read_float.2564  #883 pc 3920
	addi	%x2, %x2, -12  #883 pc 3924
	lw	%x1, 8(%x2) #883 pc 3928
	sw	%x1, 8(%x2)  #883 pc 3932
	addi	%x2, %x2, 12  #883 pc 3936
	jal	%x1, rad.2730  #883 pc 3940
	addi	%x2, %x2, -12  #883 pc 3944
	lw	%x1, 8(%x2) #883 pc 3948
	fsw	%f0, 8(%x2)  #884 pc 3952
	sw	%x1, 16(%x2)  #884 pc 3956
	addi	%x2, %x2, 20  #884 pc 3960
	jal	%x1, sin.2526  #884 pc 3964
	addi	%x2, %x2, -20  #884 pc 3968
	lw	%x1, 16(%x2) #884 pc 3972
	sw	%x1, 16(%x2)  #885 pc 3976
	addi	%x2, %x2, 20  #885 pc 3980
	jal	%x1, fneg.2515  #885 pc 3984
	addi	%x2, %x2, -20  #885 pc 3988
	lw	%x1, 16(%x2) #885 pc 3992
	lw	%x6, 4(%x2)  #885 pc 3996
	fsw	%f0, 4(%x6)  #885 pc 4000
	sw	%x1, 16(%x2)  #886 pc 4004
	addi	%x2, %x2, 20  #886 pc 4008
	jal	%x1, read_float.2564  #886 pc 4012
	addi	%x2, %x2, -20  #886 pc 4016
	lw	%x1, 16(%x2) #886 pc 4020
	sw	%x1, 16(%x2)  #886 pc 4024
	addi	%x2, %x2, 20  #886 pc 4028
	jal	%x1, rad.2730  #886 pc 4032
	addi	%x2, %x2, -20  #886 pc 4036
	lw	%x1, 16(%x2) #886 pc 4040
	flw	%f1, 8(%x2)  #887 pc 4044
	fsw	%f0, 16(%x2)  #887 pc 4048
	fadd	%f0, %f1, %f30  #0 pc 4052
	sw	%x1, 24(%x2)  #887 pc 4056
	addi	%x2, %x2, 28  #887 pc 4060
	jal	%x1, cos.2530  #887 pc 4064
	addi	%x2, %x2, -28  #887 pc 4068 #ok
	lw	%x1, 24(%x2) #887 pc 4072
	flw	%f1, 16(%x2)  #888 pc 4076
	fsw	%f0, 24(%x2)  #888 pc 4080
	fadd	%f0, %f1, %f30  #0 pc 4084
	sw	%x1, 32(%x2)  #888 pc 4088
	addi	%x2, %x2, 36  #888 pc 4092
	jal	%x1, sin.2526  #888 pc 4096
	addi	%x2, %x2, -36  #888 pc 4100
	lw	%x1, 32(%x2) #888 pc 4104
	flw	%f1, 24(%x2)  #889 pc 4108
	fmul	%f0, %f1, %f0  #889 pc 4112
	lw	%x6, 4(%x2)  #889 pc 4116
	fsw	%f0, 0(%x6)  #889 pc 4120
	flw	%f0, 16(%x2)  #890 pc 4124
	sw	%x1, 32(%x2)  #890 pc 4128
	addi	%x2, %x2, 36  #890 pc 4132
	jal	%x1, cos.2530  #890 pc 4136
	addi	%x2, %x2, -36  #890 pc 4140
	lw	%x1, 32(%x2) #890 pc 4144
	flw	%f1, 24(%x2)  #891 pc 4148
	fmul	%f0, %f1, %f0  #891 pc 4152
	lw	%x6, 4(%x2)  #891 pc 4156
	fsw	%f0, 8(%x6)  #891 pc 4160
	sw	%x1, 32(%x2)  #892 pc 4164
	addi	%x2, %x2, 36  #892 pc 4168
	jal	%x1, read_float.2564  #892 pc 4172
	addi	%x2, %x2, -36  #892 pc 4176
	lw	%x1, 32(%x2) #892 pc 4180
	lw	%x6, 0(%x2)  #892 pc 4184
	fsw	%f0, 0(%x6)  #892 pc 4188
	ret #pc 4192
	nop #pc 4196
rotate_quadratic_matrix.2736:  #pc 4200
	flw	%f0, 0(%x7)  #902 pc 4200
	sw	%x6, 0(%x2)  #902 pc 4204
	sw	%x7, 4(%x2)  #902 pc 4208
	sw	%x1, 8(%x2)  #902 pc 4212
	addi	%x2, %x2, 12  #902 pc 4216
	jal	%x1, cos.2530  #902 pc 4220
	addi	%x2, %x2, -12  #902 pc 4224
	lw	%x1, 8(%x2) #902 pc 4228
	lw	%x6, 4(%x2)  #903 pc 4232
	flw	%f1, 0(%x6)  #903 pc 4236
	fsw	%f0, 8(%x2)  #903 pc 4240
	fadd	%f0, %f1, %f30  #0 pc 4244
	sw	%x1, 16(%x2)  #903 pc 4248
	addi	%x2, %x2, 20  #903 pc 4252
	jal	%x1, sin.2526  #903 pc 4256
	addi	%x2, %x2, -20  #903 pc 4260
	lw	%x1, 16(%x2) #903 pc 4264
	lw	%x6, 4(%x2)  #904 pc 4268
	flw	%f1, 4(%x6)  #904 pc 4272
	fsw	%f0, 16(%x2)  #904 pc 4276
	fadd	%f0, %f1, %f30  #0 pc 4280
	sw	%x1, 24(%x2)  #904 pc 4284
	addi	%x2, %x2, 28  #904 pc 4288
	jal	%x1, cos.2530  #904 pc 4292
	addi	%x2, %x2, -28  #904 pc 4296
	lw	%x1, 24(%x2) #904 pc 4300
	lw	%x6, 4(%x2)  #905 pc 4304
	flw	%f1, 4(%x6)  #905 pc 4308
	fsw	%f0, 24(%x2)  #905 pc 4312
	fadd	%f0, %f1, %f30  #0 pc 4316
	sw	%x1, 32(%x2)  #905 pc 4320
	addi	%x2, %x2, 36  #905 pc 4324
	jal	%x1, sin.2526  #905 pc 4328
	addi	%x2, %x2, -36  #905 pc 4332
	lw	%x1, 32(%x2) #905 pc 4336
	lw	%x6, 4(%x2)  #906 pc 4340
	flw	%f1, 8(%x6)  #906 pc 4344
	fsw	%f0, 32(%x2)  #906 pc 4348
	fadd	%f0, %f1, %f30  #0 pc 4352
	sw	%x1, 40(%x2)  #906 pc 4356
	addi	%x2, %x2, 44  #906 pc 4360
	jal	%x1, cos.2530  #906 pc 4364
	addi	%x2, %x2, -44  #906 pc 4368
	lw	%x1, 40(%x2) #906 pc 4372
	lw	%x6, 4(%x2)  #907 pc 4376
	flw	%f1, 8(%x6)  #907 pc 4380
	fsw	%f0, 40(%x2)  #907 pc 4384
	fadd	%f0, %f1, %f30  #0 pc 4388
	sw	%x1, 48(%x2)  #907 pc 4392
	addi	%x2, %x2, 52  #907 pc 4396
	jal	%x1, sin.2526  #907 pc 4400
	addi	%x2, %x2, -52  #907 pc 4404
	lw	%x1, 48(%x2) #907 pc 4408
	flw	%f1, 40(%x2)  #909 pc 4412
	flw	%f2, 24(%x2)  #909 pc 4416
	fmul	%f3, %f2, %f1  #909 pc 4420
	flw	%f4, 32(%x2)  #910 pc 4424
	flw	%f5, 16(%x2)  #910 pc 4428
	fmul	%f6, %f5, %f4  #910 pc 4432
	fmul	%f6, %f6, %f1  #910 pc 4436
	flw	%f7, 8(%x2)  #910 pc 4440
	fmul	%f8, %f7, %f0  #910 pc 4444
	fsub	%f6, %f6, %f8  #910 pc 4448
	fmul	%f8, %f7, %f4  #911 pc 4452
	fmul	%f8, %f8, %f1  #911 pc 4456
	fmul	%f9, %f5, %f0  #911 pc 4460
	fadd	%f8, %f8, %f9  #911 pc 4464
	fmul	%f9, %f2, %f0  #913 pc 4468
	fmul	%f10, %f5, %f4  #914 pc 4472
	fmul	%f10, %f10, %f0  #914 pc 4476
	fmul	%f11, %f7, %f1  #914 pc 4480
	fadd	%f10, %f10, %f11  #914 pc 4484
	fmul	%f11, %f7, %f4  #915 pc 4488
	fmul	%f0, %f11, %f0  #915 pc 4492
	fmul	%f1, %f5, %f1  #915 pc 4496
	fsub	%f0, %f0, %f1  #915 pc 4500
	fsw	%f0, 48(%x2)  #917 pc 4504
	fsw	%f8, 56(%x2)  #917 pc 4508
	fsw	%f10, 64(%x2)  #917 pc 4512
	fsw	%f6, 72(%x2)  #917 pc 4516
	fsw	%f9, 80(%x2)  #917 pc 4520
	fsw	%f3, 88(%x2)  #917 pc 4524
	fadd	%f0, %f4, %f30  #0 pc 4528
	sw	%x1, 96(%x2)  #917 pc 4532
	addi	%x2, %x2, 100  #917 pc 4536
	jal	%x1, fneg.2515  #917 pc 4540
	addi	%x2, %x2, -100  #917 pc 4544
	lw	%x1, 96(%x2) #917 pc 4548
	flw	%f1, 24(%x2)  #918 pc 4552
	flw	%f2, 16(%x2)  #918 pc 4556
	fmul	%f2, %f2, %f1  #918 pc 4560
	flw	%f3, 8(%x2)  #919 pc 4564
	fmul	%f1, %f3, %f1  #919 pc 4568
	lw	%x6, 0(%x2)  #922 pc 4572
	flw	%f3, 0(%x6)  #922 pc 4576
	flw	%f4, 4(%x6)  #923 pc 4580
	flw	%f5, 8(%x6)  #924 pc 4584
	flw	%f6, 88(%x2)  #929 pc 4588
	fsw	%f1, 96(%x2)  #929 pc 4592
	fsw	%f2, 104(%x2)  #929 pc 4596
	fsw	%f5, 112(%x2)  #929 pc 4600
	fsw	%f0, 120(%x2)  #929 pc 4604
	fsw	%f4, 128(%x2)  #929 pc 4608
	fsw	%f3, 136(%x2)  #929 pc 4612
	fadd	%f0, %f6, %f30  #0 pc 4616
	sw	%x1, 144(%x2)  #929 pc 4620
	addi	%x2, %x2, 148  #929 pc 4624
	jal	%x1, fsqr.2517  #929 pc 4628
	addi	%x2, %x2, -148  #929 pc 4632
	lw	%x1, 144(%x2) #929 pc 4636
	flw	%f1, 136(%x2)  #929 pc 4640
	fmul	%f0, %f1, %f0  #929 pc 4644
	flw	%f2, 80(%x2)  #929 pc 4648
	fsw	%f0, 144(%x2)  #929 pc 4652
	fadd	%f0, %f2, %f30  #0 pc 4656
	sw	%x1, 152(%x2)  #929 pc 4660
	addi	%x2, %x2, 156  #929 pc 4664
	jal	%x1, fsqr.2517  #929 pc 4668
	addi	%x2, %x2, -156  #929 pc 4672
	lw	%x1, 152(%x2) #929 pc 4676
	flw	%f1, 128(%x2)  #929 pc 4680
	fmul	%f0, %f1, %f0  #929 pc 4684
	flw	%f2, 144(%x2)  #929 pc 4688
	fadd	%f0, %f2, %f0  #929 pc 4692
	flw	%f2, 120(%x2)  #929 pc 4696
	fsw	%f0, 152(%x2)  #929 pc 4700
	fadd	%f0, %f2, %f30  #0 pc 4704
	sw	%x1, 160(%x2)  #929 pc 4708
	addi	%x2, %x2, 164  #929 pc 4712
	jal	%x1, fsqr.2517  #929 pc 4716
	addi	%x2, %x2, -164  #929 pc 4720
	lw	%x1, 160(%x2) #929 pc 4724
	flw	%f1, 112(%x2)  #929 pc 4728
	fmul	%f0, %f1, %f0  #929 pc 4732
	flw	%f2, 152(%x2)  #929 pc 4736
	fadd	%f0, %f2, %f0  #929 pc 4740
	lw	%x6, 0(%x2)  #929 pc 4744
	fsw	%f0, 0(%x6)  #929 pc 4748
	flw	%f0, 72(%x2)  #930 pc 4752
	sw	%x1, 160(%x2)  #930 pc 4756
	addi	%x2, %x2, 164  #930 pc 4760
	jal	%x1, fsqr.2517  #930 pc 4764
	addi	%x2, %x2, -164  #930 pc 4768
	lw	%x1, 160(%x2) #930 pc 4772
	flw	%f1, 136(%x2)  #930 pc 4776
	fmul	%f0, %f1, %f0  #930 pc 4780
	flw	%f2, 64(%x2)  #930 pc 4784
	fsw	%f0, 160(%x2)  #930 pc 4788
	fadd	%f0, %f2, %f30  #0 pc 4792
	sw	%x1, 168(%x2)  #930 pc 4796
	addi	%x2, %x2, 172  #930 pc 4800
	jal	%x1, fsqr.2517  #930 pc 4804
	addi	%x2, %x2, -172  #930 pc 4808
	lw	%x1, 168(%x2) #930 pc 4812
	flw	%f1, 128(%x2)  #930 pc 4816
	fmul	%f0, %f1, %f0  #930 pc 4820
	flw	%f2, 160(%x2)  #930 pc 4824
	fadd	%f0, %f2, %f0  #930 pc 4828
	flw	%f2, 104(%x2)  #930 pc 4832
	fsw	%f0, 168(%x2)  #930 pc 4836
	fadd	%f0, %f2, %f30  #0 pc 4840
	sw	%x1, 176(%x2)  #930 pc 4844
	addi	%x2, %x2, 180  #930 pc 4848
	jal	%x1, fsqr.2517  #930 pc 4852
	addi	%x2, %x2, -180  #930 pc 4856
	lw	%x1, 176(%x2) #930 pc 4860
	flw	%f1, 112(%x2)  #930 pc 4864
	fmul	%f0, %f1, %f0  #930 pc 4868
	flw	%f2, 168(%x2)  #930 pc 4872
	fadd	%f0, %f2, %f0  #930 pc 4876
	lw	%x6, 0(%x2)  #930 pc 4880
	fsw	%f0, 4(%x6)  #930 pc 4884
	flw	%f0, 56(%x2)  #931 pc 4888
	sw	%x1, 176(%x2)  #931 pc 4892
	addi	%x2, %x2, 180  #931 pc 4896
	jal	%x1, fsqr.2517  #931 pc 4900
	addi	%x2, %x2, -180  #931 pc 4904
	lw	%x1, 176(%x2) #931 pc 4908
	flw	%f1, 136(%x2)  #931 pc 4912
	fmul	%f0, %f1, %f0  #931 pc 4916
	flw	%f2, 48(%x2)  #931 pc 4920
	fsw	%f0, 176(%x2)  #931 pc 4924
	fadd	%f0, %f2, %f30  #0 pc 4928
	sw	%x1, 184(%x2)  #931 pc 4932
	addi	%x2, %x2, 188  #931 pc 4936
	jal	%x1, fsqr.2517  #931 pc 4940
	addi	%x2, %x2, -188  #931 pc 4944
	lw	%x1, 184(%x2) #931 pc 4948
	flw	%f1, 128(%x2)  #931 pc 4952
	fmul	%f0, %f1, %f0  #931 pc 4956
	flw	%f2, 176(%x2)  #931 pc 4960
	fadd	%f0, %f2, %f0  #931 pc 4964
	flw	%f2, 96(%x2)  #931 pc 4968
	fsw	%f0, 184(%x2)  #931 pc 4972
	fadd	%f0, %f2, %f30  #0 pc 4976
	sw	%x1, 192(%x2)  #931 pc 4980
	addi	%x2, %x2, 196  #931 pc 4984
	jal	%x1, fsqr.2517  #931 pc 4988
	addi	%x2, %x2, -196  #931 pc 4992
	lw	%x1, 192(%x2) #931 pc 4996
	flw	%f1, 112(%x2)  #931 pc 5000
	fmul	%f0, %f1, %f0  #931 pc 5004
	flw	%f2, 184(%x2)  #931 pc 5008
	fadd	%f0, %f2, %f0  #931 pc 5012
	lw	%x6, 0(%x2)  #931 pc 5016
	fsw	%f0, 8(%x6)  #931 pc 5020
	fmv	%f0, l.6425  #0 pc 5024
	flw	%f2, 72(%x2)  #934 pc 5028
	flw	%f3, 136(%x2)  #934 pc 5032
	fmul	%f4, %f3, %f2  #934 pc 5036
	flw	%f5, 56(%x2)  #934 pc 5040
	fmul	%f4, %f4, %f5  #934 pc 5044
	flw	%f6, 64(%x2)  #934 pc 5048
	flw	%f7, 128(%x2)  #934 pc 5052
	fmul	%f8, %f7, %f6  #934 pc 5056
	flw	%f9, 48(%x2)  #934 pc 5060
	fmul	%f8, %f8, %f9  #934 pc 5064
	fadd	%f4, %f4, %f8  #934 pc 5068
	flw	%f8, 104(%x2)  #934 pc 5072
	fmul	%f10, %f1, %f8  #934 pc 5076
	flw	%f11, 96(%x2)  #934 pc 5080
	fmul	%f10, %f10, %f11  #934 pc 5084
	fadd	%f4, %f4, %f10  #934 pc 5088
	fmul	%f0, %f0, %f4  #934 pc 5092
	lw	%x6, 4(%x2)  #934 pc 5096
	fsw	%f0, 0(%x6)  #934 pc 5100
	fmv	%f0, l.6425  #0 pc 5104
	flw	%f4, 88(%x2)  #935 pc 5108
	fmul	%f10, %f3, %f4  #935 pc 5112
	fmul	%f5, %f10, %f5  #935 pc 5116
	flw	%f10, 80(%x2)  #935 pc 5120
	fmul	%f12, %f7, %f10  #935 pc 5124
	fmul	%f9, %f12, %f9  #935 pc 5128
	fadd	%f5, %f5, %f9  #935 pc 5132
	flw	%f9, 120(%x2)  #935 pc 5136
	fmul	%f12, %f1, %f9  #935 pc 5140
	fmul	%f11, %f12, %f11  #935 pc 5144
	fadd	%f5, %f5, %f11  #935 pc 5148
	fmul	%f0, %f0, %f5  #935 pc 5152
	fsw	%f0, 4(%x6)  #935 pc 5156
	fmv	%f0, l.6425  #0 pc 5160
	fmul	%f3, %f3, %f4  #936 pc 5164
	fmul	%f2, %f3, %f2  #936 pc 5168
	fmul	%f3, %f7, %f10  #936 pc 5172
	fmul	%f3, %f3, %f6  #936 pc 5176
	fadd	%f2, %f2, %f3  #936 pc 5180
	fmul	%f1, %f1, %f9  #936 pc 5184
	fmul	%f1, %f1, %f8  #936 pc 5188
	fadd	%f1, %f2, %f1  #936 pc 5192
	fmul	%f0, %f0, %f1  #936 pc 5196
	fsw	%f0, 8(%x6)  #936 pc 5200
	ret #pc 5204
	nop #pc 5208
read_nth_object.2739:  #pc 5212
	lw	%x7, 4(%x29)  #0 pc 5212
	sw	%x7, 0(%x2)  #943 pc 5216
	sw	%x6, 4(%x2)  #943 pc 5220
	sw	%x1, 8(%x2)  #943 pc 5224
	addi	%x2, %x2, 12  #943 pc 5228
	jal	%x1, read_int.2562  #943 pc 5232
	addi	%x2, %x2, -12  #943 pc 5236
	lw	%x1, 8(%x2) #943 pc 5240
	addi	%x31, %x0, -1  #pc 5244
	beq	%x6, %x31, 12  #944 pc 5248
	j	be_else.9176 #pc 5252
	nop #pc 5256
	addi	%x6, %x0, 0  #0 pc 5260
	ret #pc 5264
	nop #pc 5268
be_else.9176: #pc 5272
	sw	%x6, 8(%x2)  #946 pc 5272
	sw	%x1, 12(%x2)  #946 pc 5276
	addi	%x2, %x2, 16  #946 pc 5280
	jal	%x1, read_int.2562  #946 pc 5284
	addi	%x2, %x2, -16  #946 pc 5288
	lw	%x1, 12(%x2) #946 pc 5292
	sw	%x6, 12(%x2)  #947 pc 5296
	sw	%x1, 16(%x2)  #947 pc 5300
	addi	%x2, %x2, 20  #947 pc 5304
	jal	%x1, read_int.2562  #947 pc 5308
	addi	%x2, %x2, -20  #947 pc 5312
	lw	%x1, 16(%x2) #947 pc 5316
	sw	%x6, 16(%x2)  #948 pc 5320
	sw	%x1, 20(%x2)  #948 pc 5324
	addi	%x2, %x2, 24  #948 pc 5328
	jal	%x1, read_int.2562  #948 pc 5332
	addi	%x2, %x2, -24  #948 pc 5336
	lw	%x1, 20(%x2) #948 pc 5340
	addi	%x7, %x0, 3  #0 pc 5344
	fmv	%f0, l.6244  #0 pc 5348
	sw	%x6, 20(%x2)  #950 pc 5352
	addi	%x6, %x7, 0  #0 pc 5356
	sw	%x1, 24(%x2)  #950 pc 5360
	addi	%x2, %x2, 28  #950 pc 5364
	jal	%x1, create_float_array.2577  #950 pc 5368
	addi	%x2, %x2, -28  #950 pc 5372
	lw	%x1, 24(%x2) #950 pc 5376
	sw	%x6, 24(%x2)  #951 pc 5380
	sw	%x1, 28(%x2)  #951 pc 5384
	addi	%x2, %x2, 32  #951 pc 5388
	jal	%x1, read_float.2564  #951 pc 5392
	addi	%x2, %x2, -32  #951 pc 5396
	lw	%x1, 28(%x2) #951 pc 5400
	lw	%x6, 24(%x2)  #951 pc 5404
	fsw	%f0, 0(%x6)  #951 pc 5408
	sw	%x1, 28(%x2)  #952 pc 5412
	addi	%x2, %x2, 32  #952 pc 5416
	jal	%x1, read_float.2564  #952 pc 5420
	addi	%x2, %x2, -32  #952 pc 5424
	lw	%x1, 28(%x2) #952 pc 5428
	lw	%x6, 24(%x2)  #952 pc 5432
	fsw	%f0, 4(%x6)  #952 pc 5436
	sw	%x1, 28(%x2)  #953 pc 5440
	addi	%x2, %x2, 32  #953 pc 5444
	jal	%x1, read_float.2564  #953 pc 5448
	addi	%x2, %x2, -32  #953 pc 5452
	lw	%x1, 28(%x2) #953 pc 5456
	lw	%x6, 24(%x2)  #953 pc 5460
	fsw	%f0, 8(%x6)  #953 pc 5464
	addi	%x7, %x0, 3  #0 pc 5468
	fmv	%f0, l.6244  #0 pc 5472
	addi	%x6, %x7, 0  #0 pc 5476
	sw	%x1, 28(%x2)  #955 pc 5480
	addi	%x2, %x2, 32  #955 pc 5484
	jal	%x1, create_float_array.2577  #955 pc 5488
	addi	%x2, %x2, -32  #955 pc 5492
	lw	%x1, 28(%x2) #955 pc 5496
	sw	%x6, 28(%x2)  #956 pc 5500
	sw	%x1, 32(%x2)  #956 pc 5504
	addi	%x2, %x2, 36  #956 pc 5508
	jal	%x1, read_float.2564  #956 pc 5512
	addi	%x2, %x2, -36  #956 pc 5516
	lw	%x1, 32(%x2) #956 pc 5520
	lw	%x6, 28(%x2)  #956 pc 5524
	fsw	%f0, 0(%x6)  #956 pc 5528
	sw	%x1, 32(%x2)  #957 pc 5532
	addi	%x2, %x2, 36  #957 pc 5536
	jal	%x1, read_float.2564  #957 pc 5540
	addi	%x2, %x2, -36  #957 pc 5544
	lw	%x1, 32(%x2) #957 pc 5548
	lw	%x6, 28(%x2)  #957 pc 5552
	fsw	%f0, 4(%x6)  #957 pc 5556
	sw	%x1, 32(%x2)  #958 pc 5560
	addi	%x2, %x2, 36  #958 pc 5564
	jal	%x1, read_float.2564  #958 pc 5568
	addi	%x2, %x2, -36  #958 pc 5572
	lw	%x1, 32(%x2) #958 pc 5576
	lw	%x6, 28(%x2)  #958 pc 5580
	fsw	%f0, 8(%x6)  #958 pc 5584
	sw	%x1, 32(%x2)  #960 pc 5588
	addi	%x2, %x2, 36  #960 pc 5592
	jal	%x1, read_float.2564  #960 pc 5596
	addi	%x2, %x2, -36  #960 pc 5600
	lw	%x1, 32(%x2) #960 pc 5604
	sw	%x1, 32(%x2)  #960 pc 5608
	addi	%x2, %x2, 36  #960 pc 5612
	jal	%x1, fisneg.2513  #960 pc 5616
	addi	%x2, %x2, -36  #960 pc 5620
	lw	%x1, 32(%x2) #960 pc 5624
	addi	%x7, %x0, 2  #0 pc 5628
	fmv	%f0, l.6244  #0 pc 5632
	sw	%x6, 32(%x2)  #962 pc 5636
	addi	%x6, %x7, 0  #0 pc 5640
	sw	%x1, 36(%x2)  #962 pc 5644
	addi	%x2, %x2, 40  #962 pc 5648
	jal	%x1, create_float_array.2577  #962 pc 5652
	addi	%x2, %x2, -40  #962 pc 5656
	lw	%x1, 36(%x2) #962 pc 5660
	sw	%x6, 36(%x2)  #963 pc 5664
	sw	%x1, 40(%x2)  #963 pc 5668
	addi	%x2, %x2, 44  #963 pc 5672
	jal	%x1, read_float.2564  #963 pc 5676
	addi	%x2, %x2, -44  #963 pc 5680
	lw	%x1, 40(%x2) #963 pc 5684
	lw	%x6, 36(%x2)  #963 pc 5688
	fsw	%f0, 0(%x6)  #963 pc 5692
	sw	%x1, 40(%x2)  #964 pc 5696
	addi	%x2, %x2, 44  #964 pc 5700
	jal	%x1, read_float.2564  #964 pc 5704
	addi	%x2, %x2, -44  #964 pc 5708
	lw	%x1, 40(%x2) #964 pc 5712
	lw	%x6, 36(%x2)  #964 pc 5716
	fsw	%f0, 4(%x6)  #964 pc 5720
	addi	%x7, %x0, 3  #0 pc 5724
	fmv	%f0, l.6244  #0 pc 5728
	addi	%x6, %x7, 0  #0 pc 5732
	sw	%x1, 40(%x2)  #966 pc 5736
	addi	%x2, %x2, 44  #966 pc 5740
	jal	%x1, create_float_array.2577  #966 pc 5744
	addi	%x2, %x2, -44  #966 pc 5748
	lw	%x1, 40(%x2) #966 pc 5752
	sw	%x6, 40(%x2)  #967 pc 5756
	sw	%x1, 44(%x2)  #967 pc 5760
	addi	%x2, %x2, 48  #967 pc 5764
	jal	%x1, read_float.2564  #967 pc 5768
	addi	%x2, %x2, -48  #967 pc 5772
	lw	%x1, 44(%x2) #967 pc 5776
	lw	%x6, 40(%x2)  #967 pc 5780
	fsw	%f0, 0(%x6)  #967 pc 5784
	sw	%x1, 44(%x2)  #968 pc 5788
	addi	%x2, %x2, 48  #968 pc 5792
	jal	%x1, read_float.2564  #968 pc 5796
	addi	%x2, %x2, -48  #968 pc 5800
	lw	%x1, 44(%x2) #968 pc 5804
	lw	%x6, 40(%x2)  #968 pc 5808
	fsw	%f0, 4(%x6)  #968 pc 5812
	sw	%x1, 44(%x2)  #969 pc 5816
	addi	%x2, %x2, 48  #969 pc 5820
	jal	%x1, read_float.2564  #969 pc 5824
	addi	%x2, %x2, -48  #969 pc 5828
	lw	%x1, 44(%x2) #969 pc 5832
	lw	%x6, 40(%x2)  #969 pc 5836
	fsw	%f0, 8(%x6)  #969 pc 5840
	addi	%x7, %x0, 3  #0 pc 5844
	fmv	%f0, l.6244  #0 pc 5848
	addi	%x6, %x7, 0  #0 pc 5852
	sw	%x1, 44(%x2)  #971 pc 5856
	addi	%x2, %x2, 48  #971 pc 5860
	jal	%x1, create_float_array.2577  #971 pc 5864
	addi	%x2, %x2, -48  #971 pc 5868
	lw	%x1, 44(%x2) #971 pc 5872
	lw	%x7, 20(%x2)  #972 pc 5876
	beq	%x7, %x0, 12  #972 pc 5880
	j	be_else.9177 #pc 5884
	nop #pc 5888
	j	be_cont.9178 #pc 5892
	nop #pc 5896
be_else.9177: #pc 5900
	sw	%x6, 44(%x2)  #974 pc 5900
	sw	%x1, 48(%x2)  #974 pc 5904
	addi	%x2, %x2, 52  #974 pc 5908
	jal	%x1, read_float.2564  #974 pc 5912
	addi	%x2, %x2, -52  #974 pc 5916
	lw	%x1, 48(%x2) #974 pc 5920
	sw	%x1, 48(%x2)  #974 pc 5924
	addi	%x2, %x2, 52  #974 pc 5928
	jal	%x1, rad.2730  #974 pc 5932
	addi	%x2, %x2, -52  #974 pc 5936
	lw	%x1, 48(%x2) #974 pc 5940
	lw	%x6, 44(%x2)  #974 pc 5944
	fsw	%f0, 0(%x6)  #974 pc 5948
	sw	%x1, 48(%x2)  #975 pc 5952
	addi	%x2, %x2, 52  #975 pc 5956
	jal	%x1, read_float.2564  #975 pc 5960
	addi	%x2, %x2, -52  #975 pc 5964
	lw	%x1, 48(%x2) #975 pc 5968
	sw	%x1, 48(%x2)  #975 pc 5972
	addi	%x2, %x2, 52  #975 pc 5976
	jal	%x1, rad.2730  #975 pc 5980
	addi	%x2, %x2, -52  #975 pc 5984
	lw	%x1, 48(%x2) #975 pc 5988
	lw	%x6, 44(%x2)  #975 pc 5992
	fsw	%f0, 4(%x6)  #975 pc 5996
	sw	%x1, 48(%x2)  #976 pc 6000
	addi	%x2, %x2, 52  #976 pc 6004
	jal	%x1, read_float.2564  #976 pc 6008
	addi	%x2, %x2, -52  #976 pc 6012
	lw	%x1, 48(%x2) #976 pc 6016
	sw	%x1, 48(%x2)  #976 pc 6020
	addi	%x2, %x2, 52  #976 pc 6024
	jal	%x1, rad.2730  #976 pc 6028
	addi	%x2, %x2, -52  #976 pc 6032
	lw	%x1, 48(%x2) #976 pc 6036
	lw	%x6, 44(%x2)  #976 pc 6040
	fsw	%f0, 8(%x6)  #976 pc 6044
be_cont.9178: #pc 6048
	lw	%x7, 12(%x2)  #983 pc 6048
	addi	%x31, %x0, 2  #pc 6052
	beq	%x7, %x31, 12  #983 pc 6056
	j	be_else.9179 #pc 6060
	nop #pc 6064
	addi	%x8, %x0, 1  #0 pc 6068
	j	be_cont.9180 #pc 6072
	nop #pc 6076
be_else.9179: #pc 6080
	lw	%x8, 32(%x2)  #983 pc 6080
be_cont.9180: #pc 6084
	addi	%x9, %x0, 4  #0 pc 6084
	fmv	%f0, l.6244  #0 pc 6088
	sw	%x8, 48(%x2)  #984 pc 6092
	sw	%x6, 44(%x2)  #984 pc 6096
	addi	%x6, %x9, 0  #0 pc 6100
	sw	%x1, 52(%x2)  #984 pc 6104
	addi	%x2, %x2, 56  #984 pc 6108
	jal	%x1, create_float_array.2577  #984 pc 6112
	addi	%x2, %x2, -56  #984 pc 6116
	lw	%x1, 52(%x2) #984 pc 6120
	addi	%x7, %x3, 0  #987 pc 6124
	addi	%x3, %x3, 44  #987 pc 6128
	sw	%x6, 40(%x7)  #987 pc 6132
	lw	%x6, 44(%x2)  #987 pc 6136
	sw	%x6, 36(%x7)  #987 pc 6140
	lw	%x8, 40(%x2)  #987 pc 6144
	sw	%x8, 32(%x7)  #987 pc 6148
	lw	%x8, 36(%x2)  #987 pc 6152
	sw	%x8, 28(%x7)  #987 pc 6156
	lw	%x8, 48(%x2)  #987 pc 6160
	sw	%x8, 24(%x7)  #987 pc 6164
	lw	%x8, 28(%x2)  #987 pc 6168
	sw	%x8, 20(%x7)  #987 pc 6172
	lw	%x8, 24(%x2)  #987 pc 6176
	sw	%x8, 16(%x7)  #987 pc 6180
	lw	%x9, 20(%x2)  #987 pc 6184
	sw	%x9, 12(%x7)  #987 pc 6188
	lw	%x10, 16(%x2)  #987 pc 6192
	sw	%x10, 8(%x7)  #987 pc 6196
	lw	%x10, 12(%x2)  #987 pc 6200
	sw	%x10, 4(%x7)  #987 pc 6204
	lw	%x11, 8(%x2)  #987 pc 6208
	sw	%x11, 0(%x7)  #987 pc 6212
	lw	%x11, 4(%x2)  #995 pc 6216
	slli	%x11, %x11, 2  #995 pc 6220
	lw	%x12, 0(%x2)  #995 pc 6224
	add	%x31, %x11, %x12  #995 pc 6228
	sw	%x7, 0(%x31)  #995 pc 6232
	addi	%x31, %x0, 3  #pc 6236
	beq	%x10, %x31, 12  #997 pc 6240
	j	be_else.9181 #pc 6244
	nop #pc 6248
	flw	%f0, 0(%x8)  #1000 pc 6252
	fsw	%f0, 56(%x2)  #1001 pc 6256
	sw	%x1, 64(%x2)  #1001 pc 6260
	addi	%x2, %x2, 68  #1001 pc 6264
	jal	%x1, fiszero.2509  #1001 pc 6268
	addi	%x2, %x2, -68  #1001 pc 6272
	lw	%x1, 64(%x2) #1001 pc 6276
	beq	%x6, %x0, 12  #1001 pc 6280
	j	be_else.9184 #pc 6284
	nop #pc 6288
	flw	%f0, 56(%x2)  #1001 pc 6292
	sw	%x1, 64(%x2)  #1001 pc 6296
	addi	%x2, %x2, 68  #1001 pc 6300
	jal	%x1, sgn.2613  #1001 pc 6304
	addi	%x2, %x2, -68  #1001 pc 6308
	lw	%x1, 64(%x2) #1001 pc 6312
	flw	%f1, 56(%x2)  #1001 pc 6316
	fsw	%f0, 64(%x2)  #1001 pc 6320
	fadd	%f0, %f1, %f30  #0 pc 6324
	sw	%x1, 72(%x2)  #1001 pc 6328
	addi	%x2, %x2, 76  #1001 pc 6332
	jal	%x1, fsqr.2517  #1001 pc 6336
	addi	%x2, %x2, -76  #1001 pc 6340
	lw	%x1, 72(%x2) #1001 pc 6344
	flw	%f1, 64(%x2)  #1001 pc 6348
	fdiv	%f0, %f1, %f0  #1001 pc 6352
	j	be_cont.9185 #pc 6356
	nop #pc 6360
be_else.9184: #pc 6364
	fmv	%f0, l.6244  #0 pc 6364
be_cont.9185: #pc 6368
	lw	%x6, 24(%x2)  #1001 pc 6368
	fsw	%f0, 0(%x6)  #1001 pc 6372
	flw	%f0, 4(%x6)  #1002 pc 6376
	fsw	%f0, 72(%x2)  #1003 pc 6380
	sw	%x1, 80(%x2)  #1003 pc 6384
	addi	%x2, %x2, 84  #1003 pc 6388
	jal	%x1, fiszero.2509  #1003 pc 6392
	addi	%x2, %x2, -84  #1003 pc 6396
	lw	%x1, 80(%x2) #1003 pc 6400
	beq	%x6, %x0, 12  #1003 pc 6404
	j	be_else.9186 #pc 6408
	nop #pc 6412
	flw	%f0, 72(%x2)  #1003 pc 6416
	sw	%x1, 80(%x2)  #1003 pc 6420
	addi	%x2, %x2, 84  #1003 pc 6424
	jal	%x1, sgn.2613  #1003 pc 6428
	addi	%x2, %x2, -84  #1003 pc 6432
	lw	%x1, 80(%x2) #1003 pc 6436
	flw	%f1, 72(%x2)  #1003 pc 6440
	fsw	%f0, 80(%x2)  #1003 pc 6444
	fadd	%f0, %f1, %f30  #0 pc 6448
	sw	%x1, 88(%x2)  #1003 pc 6452
	addi	%x2, %x2, 92  #1003 pc 6456
	jal	%x1, fsqr.2517  #1003 pc 6460
	addi	%x2, %x2, -92  #1003 pc 6464
	lw	%x1, 88(%x2) #1003 pc 6468
	flw	%f1, 80(%x2)  #1003 pc 6472
	fdiv	%f0, %f1, %f0  #1003 pc 6476
	j	be_cont.9187 #pc 6480
	nop #pc 6484
be_else.9186: #pc 6488
	fmv	%f0, l.6244  #0 pc 6488
be_cont.9187: #pc 6492
	lw	%x6, 24(%x2)  #1003 pc 6492
	fsw	%f0, 4(%x6)  #1003 pc 6496
	flw	%f0, 8(%x6)  #1004 pc 6500
	fsw	%f0, 88(%x2)  #1005 pc 6504
	sw	%x1, 96(%x2)  #1005 pc 6508
	addi	%x2, %x2, 100  #1005 pc 6512
	jal	%x1, fiszero.2509  #1005 pc 6516
	addi	%x2, %x2, -100  #1005 pc 6520
	lw	%x1, 96(%x2) #1005 pc 6524
	beq	%x6, %x0, 12  #1005 pc 6528
	j	be_else.9188 #pc 6532
	nop #pc 6536
	flw	%f0, 88(%x2)  #1005 pc 6540
	sw	%x1, 96(%x2)  #1005 pc 6544
	addi	%x2, %x2, 100  #1005 pc 6548
	jal	%x1, sgn.2613  #1005 pc 6552
	addi	%x2, %x2, -100  #1005 pc 6556
	lw	%x1, 96(%x2) #1005 pc 6560
	flw	%f1, 88(%x2)  #1005 pc 6564
	fsw	%f0, 96(%x2)  #1005 pc 6568
	fadd	%f0, %f1, %f30  #0 pc 6572
	sw	%x1, 104(%x2)  #1005 pc 6576
	addi	%x2, %x2, 108  #1005 pc 6580
	jal	%x1, fsqr.2517  #1005 pc 6584
	addi	%x2, %x2, -108  #1005 pc 6588
	lw	%x1, 104(%x2) #1005 pc 6592
	flw	%f1, 96(%x2)  #1005 pc 6596
	fdiv	%f0, %f1, %f0  #1005 pc 6600
	j	be_cont.9189 #pc 6604
	nop #pc 6608
be_else.9188: #pc 6612
	fmv	%f0, l.6244  #0 pc 6612
be_cont.9189: #pc 6616
	lw	%x6, 24(%x2)  #1005 pc 6616
	fsw	%f0, 8(%x6)  #1005 pc 6620
	j	be_cont.9182 #pc 6624
	nop #pc 6628
be_else.9181: #pc 6632
	addi	%x31, %x0, 2  #pc 6632
	beq	%x10, %x31, 12  #1007 pc 6636
	j	be_else.9190 #pc 6640
	nop #pc 6644
	lw	%x7, 32(%x2)  #1009 pc 6648
	beq	%x7, %x0, 12  #1009 pc 6652
	j	be_else.9192 #pc 6656
	nop #pc 6660
	addi	%x7, %x0, 1  #0 pc 6664
	j	be_cont.9193 #pc 6668
	nop #pc 6672
be_else.9192: #pc 6676
	addi	%x7, %x0, 0  #0 pc 6676
be_cont.9193: #pc 6680
	addi	%x6, %x8, 0  #0 pc 6680
	sw	%x1, 104(%x2)  #1009 pc 6684
	addi	%x2, %x2, 108  #1009 pc 6688
	jal	%x1, vecunit_sgn.2634  #1009 pc 6692
	addi	%x2, %x2, -108  #1009 pc 6696
	lw	%x1, 104(%x2) #1009 pc 6700
	j	be_cont.9191 #pc 6704
	nop #pc 6708
be_else.9190: #pc 6712
be_cont.9191: #pc 6712
be_cont.9182: #pc 6712
	lw	%x6, 20(%x2)  #1013 pc 6712
	beq	%x6, %x0, 12  #1013 pc 6716
	j	be_else.9194 #pc 6720
	nop #pc 6724
	j	be_cont.9195 #pc 6728
	nop #pc 6732
be_else.9194: #pc 6736
	lw	%x6, 24(%x2)  #1014 pc 6736
	lw	%x7, 44(%x2)  #1014 pc 6740
	sw	%x1, 104(%x2)  #1014 pc 6744
	addi	%x2, %x2, 108  #1014 pc 6748
	jal	%x1, rotate_quadratic_matrix.2736  #1014 pc 6752
	addi	%x2, %x2, -108  #1014 pc 6756
	lw	%x1, 104(%x2) #1014 pc 6760
be_cont.9195: #pc 6764
	addi	%x6, %x0, 1  #0 pc 6764
	ret #pc 6768
	nop #pc 6772
read_object.2741:  #pc 6776
	lw	%x7, 8(%x29)  #0 pc 6776
	lw	%x8, 4(%x29)  #0 pc 6780
	addi	%x31, %x0, 60  #pc 6784
	bge	%x6, %x31, 12  #1025 pc 6788
	j	bge_else.9196 #pc 6792
	nop #pc 6796
	ret #pc 6800
	nop #pc 6804
bge_else.9196: #pc 6808
	sw	%x29, 0(%x2)  #1026 pc 6808
	sw	%x8, 4(%x2)  #1026 pc 6812
	sw	%x6, 8(%x2)  #1026 pc 6816
	addi	%x29, %x7, 0  #0 pc 6820
	sw	%x1, 12(%x2)  #1026 pc 6824
	lw	%x30, 0(%x29)  #1026 pc 6828
	addi	%x2, %x2, 16  #1026 pc 6832
	jalr	%x1, %x30, 0  #1026 pc 6836
	addi	%x2, %x2, -16  #1026 pc 6840
	lw	%x1, 12(%x2)  #1026 pc 6844
	beq	%x6, %x0, 12  #1026 pc 6848
	j	be_else.9198 #pc 6852
	nop #pc 6856
	lw	%x6, 4(%x2)  #1029 pc 6860
	lw	%x7, 8(%x2)  #1029 pc 6864
	sw	%x7, 0(%x6)  #1029 pc 6868
	ret #pc 6872
	nop #pc 6876
be_else.9198: #pc 6880
	lw	%x6, 8(%x2)  #1027 pc 6880
	addi	%x6, %x6, 1  #1027 pc 6884
	lw	%x29, 0(%x2)  #1027 pc 6888
	lw	%x30, 0(%x29)  #1027 pc 6892
	jalr	%x0, %x30, 0  #1027 pc 6896
	nop #pc 6900
read_all_object.2743:  #pc 6904
	lw	%x29, 4(%x29)  #0 pc 6904
	addi	%x6, %x0, 0  #0 pc 6908
	lw	%x30, 0(%x29)  #1034 pc 6912
	jalr	%x0, %x30, 0  #1034 pc 6916
	nop #pc 6920
read_net_item.2745:  #pc 6924
	sw	%x6, 0(%x2)  #1041 pc 6924
	sw	%x1, 4(%x2)  #1041 pc 6928
	addi	%x2, %x2, 8  #1041 pc 6932
	jal	%x1, read_int.2562  #1041 pc 6936
	addi	%x2, %x2, -8  #1041 pc 6940
	lw	%x1, 4(%x2) #1041 pc 6944
	addi	%x31, %x0, -1  #pc 6948
	beq	%x6, %x31, 12  #1042 pc 6952
	j	be_else.9200 #pc 6956
	nop #pc 6960
	lw	%x6, 0(%x2)  #1042 pc 6964
	addi	%x6, %x6, 1  #1042 pc 6968
	addi	%x7, %x0, -1  #0 pc 6972
	j	create_array.2570  #1042 pc 6976
	nop #pc 6980
be_else.9200: #pc 6984
	lw	%x7, 0(%x2)  #1044 pc 6984
	addi	%x8, %x7, 1  #1044 pc 6988
	sw	%x6, 4(%x2)  #1044 pc 6992
	addi	%x6, %x8, 0  #0 pc 6996
	sw	%x1, 8(%x2)  #1044 pc 7000
	addi	%x2, %x2, 12  #1044 pc 7004
	jal	%x1, read_net_item.2745  #1044 pc 7008
	addi	%x2, %x2, -12  #1044 pc 7012
	lw	%x1, 8(%x2) #1044 pc 7016
	lw	%x7, 0(%x2)  #1045 pc 7020
	slli	%x7, %x7, 2  #1045 pc 7024
	lw	%x8, 4(%x2)  #1045 pc 7028
	add	%x31, %x7, %x6  #1045 pc 7032
	sw	%x8, 0(%x31)  #1045 pc 7036
	ret #pc 7040
	nop #pc 7044
read_or_network.2747:  #pc 7048
	addi	%x7, %x0, 0  #0 pc 7048
	sw	%x6, 0(%x2)  #1049 pc 7052
	addi	%x6, %x7, 0  #0 pc 7056
	sw	%x1, 4(%x2)  #1049 pc 7060
	addi	%x2, %x2, 8  #1049 pc 7064
	jal	%x1, read_net_item.2745  #1049 pc 7068
	addi	%x2, %x2, -8  #1049 pc 7072
	lw	%x1, 4(%x2) #1049 pc 7076
	addi	%x7, %x6, 0  #1049 pc 7080
	lw	%x6, 0(%x7)  #1050 pc 7084
	addi	%x31, %x0, -1  #pc 7088
	beq	%x6, %x31, 12  #1050 pc 7092
	j	be_else.9201 #pc 7096
	nop #pc 7100
	lw	%x6, 0(%x2)  #1051 pc 7104
	addi	%x6, %x6, 1  #1051 pc 7108
	j	create_array.2570  #1051 pc 7112
	nop #pc 7116
be_else.9201: #pc 7120
	lw	%x6, 0(%x2)  #1053 pc 7120
	addi	%x8, %x6, 1  #1053 pc 7124
	sw	%x7, 4(%x2)  #1053 pc 7128
	addi	%x6, %x8, 0  #0 pc 7132
	sw	%x1, 8(%x2)  #1053 pc 7136
	addi	%x2, %x2, 12  #1053 pc 7140
	jal	%x1, read_or_network.2747  #1053 pc 7144
	addi	%x2, %x2, -12  #1053 pc 7148
	lw	%x1, 8(%x2) #1053 pc 7152
	lw	%x7, 0(%x2)  #1054 pc 7156
	slli	%x7, %x7, 2  #1054 pc 7160
	lw	%x8, 4(%x2)  #1054 pc 7164
	add	%x31, %x7, %x6  #1054 pc 7168
	sw	%x8, 0(%x31)  #1054 pc 7172
	ret #pc 7176
	nop #pc 7180
read_and_network.2749:  #pc 7184
	lw	%x7, 4(%x29)  #0 pc 7184
	addi	%x8, %x0, 0  #0 pc 7188
	sw	%x29, 0(%x2)  #1058 pc 7192
	sw	%x7, 4(%x2)  #1058 pc 7196
	sw	%x6, 8(%x2)  #1058 pc 7200
	addi	%x6, %x8, 0  #0 pc 7204
	sw	%x1, 12(%x2)  #1058 pc 7208
	addi	%x2, %x2, 16  #1058 pc 7212
	jal	%x1, read_net_item.2745  #1058 pc 7216
	addi	%x2, %x2, -16  #1058 pc 7220
	lw	%x1, 12(%x2) #1058 pc 7224
	lw	%x7, 0(%x6)  #1059 pc 7228
	addi	%x31, %x0, -1  #pc 7232
	beq	%x7, %x31, 12  #1059 pc 7236
	j	be_else.9202 #pc 7240
	nop #pc 7244
	ret #pc 7248
	nop #pc 7252
be_else.9202: #pc 7256
	lw	%x7, 8(%x2)  #1061 pc 7256
	slli	%x8, %x7, 2  #1061 pc 7260
	lw	%x9, 4(%x2)  #1061 pc 7264
	add	%x31, %x8, %x9  #1061 pc 7268
	sw	%x6, 0(%x31)  #1061 pc 7272
	addi	%x6, %x7, 1  #1062 pc 7276
	lw	%x29, 0(%x2)  #1062 pc 7280
	lw	%x30, 0(%x29)  #1062 pc 7284
	jalr	%x0, %x30, 0  #1062 pc 7288
	nop #pc 7292
read_parameter.2751:  #pc 7296
	lw	%x6, 20(%x29)  #0 pc 7296
	lw	%x7, 16(%x29)  #0 pc 7300
	lw	%x8, 12(%x29)  #0 pc 7304
	lw	%x9, 8(%x29)  #0 pc 7308
	lw	%x10, 4(%x29)  #0 pc 7312
	sw	%x10, 0(%x2)  #1068 pc 7316
	sw	%x8, 4(%x2)  #1068 pc 7320
	sw	%x9, 8(%x2)  #1068 pc 7324
	sw	%x7, 12(%x2)  #1068 pc 7328
	addi	%x29, %x6, 0  #0 pc 7332
	sw	%x1, 16(%x2)  #1068 pc 7336
	lw	%x30, 0(%x29)  #1068 pc 7340
	addi	%x2, %x2, 20  #1068 pc 7344
	jalr	%x1, %x30, 0  #1068 pc 7348
	addi	%x2, %x2, -20  #1068 pc 7352
	lw	%x1, 16(%x2)  #1068 pc 7356
	lw	%x29, 12(%x2)  #1069 pc 7360
	sw	%x1, 16(%x2)  #1069 pc 7364
	lw	%x30, 0(%x29)  #1069 pc 7368
	addi	%x2, %x2, 20  #1069 pc 7372
	jalr	%x1, %x30, 0  #1069 pc 7376
	addi	%x2, %x2, -20  #1069 pc 7380
	lw	%x1, 16(%x2)  #1069 pc 7384
	lw	%x29, 8(%x2)  #1070 pc 7388
	sw	%x1, 16(%x2)  #1070 pc 7392
	lw	%x30, 0(%x29)  #1070 pc 7396
	addi	%x2, %x2, 20  #1070 pc 7400
	jalr	%x1, %x30, 0  #1070 pc 7404
	addi	%x2, %x2, -20  #1070 pc 7408
	lw	%x1, 16(%x2)  #1070 pc 7412
	addi	%x6, %x0, 0  #0 pc 7416
	lw	%x29, 4(%x2)  #1071 pc 7420
	sw	%x1, 16(%x2)  #1071 pc 7424
	lw	%x30, 0(%x29)  #1071 pc 7428
	addi	%x2, %x2, 20  #1071 pc 7432
	jalr	%x1, %x30, 0  #1071 pc 7436
	addi	%x2, %x2, -20  #1071 pc 7440
	lw	%x1, 16(%x2)  #1071 pc 7444
	addi	%x6, %x0, 0  #0 pc 7448
	sw	%x1, 16(%x2)  #1072 pc 7452
	addi	%x2, %x2, 20  #1072 pc 7456
	jal	%x1, read_or_network.2747  #1072 pc 7460
	addi	%x2, %x2, -20  #1072 pc 7464
	lw	%x1, 16(%x2) #1072 pc 7468
	lw	%x7, 0(%x2)  #1072 pc 7472
	sw	%x6, 0(%x7)  #1072 pc 7476
	ret #pc 7480
	nop #pc 7484
solver_rect_surface.2753:  #pc 7488
	lw	%x11, 4(%x29)  #0 pc 7488
	slli	%x12, %x8, 2  #1092 pc 7492
	add	%x31, %x12, %x7  #1092 pc 7496
	flw	%f3, 0(%x31)  #1092 pc 7500
	sw	%x11, 0(%x2)  #1092 pc 7504
	fsw	%f2, 8(%x2)  #1092 pc 7508
	sw	%x10, 16(%x2)  #1092 pc 7512
	fsw	%f1, 24(%x2)  #1092 pc 7516
	sw	%x9, 32(%x2)  #1092 pc 7520
	fsw	%f0, 40(%x2)  #1092 pc 7524
	sw	%x7, 48(%x2)  #1092 pc 7528
	sw	%x8, 52(%x2)  #1092 pc 7532
	sw	%x6, 56(%x2)  #1092 pc 7536
	fadd	%f0, %f3, %f30  #0 pc 7540
	sw	%x1, 60(%x2)  #1092 pc 7544
	addi	%x2, %x2, 64  #1092 pc 7548
	jal	%x1, fiszero.2509  #1092 pc 7552
	addi	%x2, %x2, -64  #1092 pc 7556
	lw	%x1, 60(%x2) #1092 pc 7560
	beq	%x6, %x0, 12  #1092 pc 7564
	j	be_else.9208 #pc 7568
	nop #pc 7572
	lw	%x6, 56(%x2)  #1093 pc 7576
	sw	%x1, 60(%x2)  #1093 pc 7580
	addi	%x2, %x2, 64  #1093 pc 7584
	jal	%x1, o_param_abc.2675  #1093 pc 7588
	addi	%x2, %x2, -64  #1093 pc 7592
	lw	%x1, 60(%x2) #1093 pc 7596
	lw	%x7, 56(%x2)  #1094 pc 7600
	sw	%x6, 60(%x2)  #1094 pc 7604
	addi	%x6, %x7, 0  #0 pc 7608
	sw	%x1, 64(%x2)  #1094 pc 7612
	addi	%x2, %x2, 68  #1094 pc 7616
	jal	%x1, o_isinvert.2665  #1094 pc 7620
	addi	%x2, %x2, -68  #1094 pc 7624
	lw	%x1, 64(%x2) #1094 pc 7628
	lw	%x7, 52(%x2)  #1094 pc 7632
	slli	%x8, %x7, 2  #1094 pc 7636
	lw	%x9, 48(%x2)  #1094 pc 7640
	add	%x31, %x8, %x9  #1094 pc 7644
	flw	%f0, 0(%x31)  #1094 pc 7648
	sw	%x6, 64(%x2)  #1094 pc 7652
	sw	%x1, 68(%x2)  #1094 pc 7656
	addi	%x2, %x2, 72  #1094 pc 7660
	jal	%x1, fisneg.2513  #1094 pc 7664
	addi	%x2, %x2, -72  #1094 pc 7668
	lw	%x1, 68(%x2) #1094 pc 7672
	addi	%x7, %x6, 0  #1094 pc 7676
	lw	%x6, 64(%x2)  #1094 pc 7680
	sw	%x1, 68(%x2)  #1094 pc 7684
	addi	%x2, %x2, 72  #1094 pc 7688
	jal	%x1, xor.2610  #1094 pc 7692
	addi	%x2, %x2, -72  #1094 pc 7696
	lw	%x1, 68(%x2) #1094 pc 7700
	lw	%x7, 52(%x2)  #1094 pc 7704
	slli	%x8, %x7, 2  #1094 pc 7708
	lw	%x9, 60(%x2)  #1094 pc 7712
	add	%x31, %x8, %x9  #1094 pc 7716
	flw	%f0, 0(%x31)  #1094 pc 7720
	sw	%x1, 68(%x2)  #1094 pc 7724
	addi	%x2, %x2, 72  #1094 pc 7728
	jal	%x1, fneg_cond.2615  #1094 pc 7732
	addi	%x2, %x2, -72  #1094 pc 7736
	lw	%x1, 68(%x2) #1094 pc 7740
	flw	%f1, 40(%x2)  #1096 pc 7744
	fsub	%f0, %f0, %f1  #1096 pc 7748
	lw	%x6, 52(%x2)  #1096 pc 7752
	slli	%x6, %x6, 2  #1096 pc 7756
	lw	%x7, 48(%x2)  #1096 pc 7760
	add	%x31, %x6, %x7  #1096 pc 7764
	flw	%f1, 0(%x31)  #1096 pc 7768
	fdiv	%f0, %f0, %f1  #1096 pc 7772
	lw	%x6, 32(%x2)  #1097 pc 7776
	slli	%x8, %x6, 2  #1097 pc 7780
	add	%x31, %x8, %x7  #1097 pc 7784
	flw	%f1, 0(%x31)  #1097 pc 7788
	fmul	%f1, %f0, %f1  #1097 pc 7792
	flw	%f2, 24(%x2)  #1097 pc 7796
	fadd	%f1, %f1, %f2  #1097 pc 7800
	fabs	%f1, %f1  #1097 pc 7804
	slli	%x6, %x6, 2  #1097 pc 7808
	lw	%x8, 60(%x2)  #1097 pc 7812
	add	%x31, %x6, %x8  #1097 pc 7816
	flw	%f2, 0(%x31)  #1097 pc 7820
	fsw	%f0, 72(%x2)  #1097 pc 7824
	fadd	%f0, %f1, %f30  #0 pc 7828
	fadd	%f1, %f2, %f30  #0 pc 7832
	sw	%x1, 80(%x2)  #1097 pc 7836
	addi	%x2, %x2, 84  #1097 pc 7840
	jal	%x1, fless.2521  #1097 pc 7844
	addi	%x2, %x2, -84  #1097 pc 7848
	lw	%x1, 80(%x2) #1097 pc 7852
	beq	%x6, %x0, 12  #1097 pc 7856
	j	be_else.9210 #pc 7860
	nop #pc 7864
	addi	%x6, %x0, 0  #0 pc 7868
	ret #pc 7872
	nop #pc 7876
be_else.9210: #pc 7880
	lw	%x6, 16(%x2)  #1098 pc 7880
	slli	%x7, %x6, 2  #1098 pc 7884
	lw	%x8, 48(%x2)  #1098 pc 7888
	add	%x31, %x7, %x8  #1098 pc 7892
	flw	%f0, 0(%x31)  #1098 pc 7896
	flw	%f1, 72(%x2)  #1098 pc 7900
	fmul	%f0, %f1, %f0  #1098 pc 7904
	flw	%f2, 8(%x2)  #1098 pc 7908
	fadd	%f0, %f0, %f2  #1098 pc 7912
	fabs	%f0, %f0  #1098 pc 7916
	slli	%x6, %x6, 2  #1098 pc 7920
	lw	%x7, 60(%x2)  #1098 pc 7924
	add	%x31, %x6, %x7  #1098 pc 7928
	flw	%f2, 0(%x31)  #1098 pc 7932
	fadd	%f1, %f2, %f30  #0 pc 7936
	sw	%x1, 80(%x2)  #1098 pc 7940
	addi	%x2, %x2, 84  #1098 pc 7944
	jal	%x1, fless.2521  #1098 pc 7948
	addi	%x2, %x2, -84  #1098 pc 7952
	lw	%x1, 80(%x2) #1098 pc 7956
	beq	%x6, %x0, 12  #1098 pc 7960
	j	be_else.9211 #pc 7964
	nop #pc 7968
	addi	%x6, %x0, 0  #0 pc 7972
	ret #pc 7976
	nop #pc 7980
be_else.9211: #pc 7984
	lw	%x6, 0(%x2)  #1099 pc 7984
	flw	%f0, 72(%x2)  #1099 pc 7988
	fsw	%f0, 0(%x6)  #1099 pc 7992
	addi	%x6, %x0, 1  #0 pc 7996
	ret #pc 8000
	nop #pc 8004
be_else.9208: #pc 8008
	addi	%x6, %x0, 0  #0 pc 8008
	ret #pc 8012
	nop #pc 8016
solver_rect.2762:  #pc 8020
	lw	%x29, 4(%x29)  #0 pc 8020
	addi	%x8, %x0, 0  #0 pc 8024
	addi	%x9, %x0, 1  #0 pc 8028
	addi	%x10, %x0, 2  #0 pc 8032
	fsw	%f0, 0(%x2)  #1107 pc 8036
	fsw	%f2, 8(%x2)  #1107 pc 8040
	fsw	%f1, 16(%x2)  #1107 pc 8044
	sw	%x7, 24(%x2)  #1107 pc 8048
	sw	%x6, 28(%x2)  #1107 pc 8052
	sw	%x29, 32(%x2)  #1107 pc 8056
	sw	%x1, 36(%x2)  #1107 pc 8060
	lw	%x30, 0(%x29)  #1107 pc 8064
	addi	%x2, %x2, 40  #1107 pc 8068
	jalr	%x1, %x30, 0  #1107 pc 8072
	addi	%x2, %x2, -40  #1107 pc 8076
	lw	%x1, 36(%x2)  #1107 pc 8080
	beq	%x6, %x0, 12  #1107 pc 8084
	j	be_else.9212 #pc 8088
	nop #pc 8092
	addi	%x8, %x0, 1  #0 pc 8096
	addi	%x9, %x0, 2  #0 pc 8100
	addi	%x10, %x0, 0  #0 pc 8104
	flw	%f0, 16(%x2)  #1108 pc 8108
	flw	%f1, 8(%x2)  #1108 pc 8112
	flw	%f2, 0(%x2)  #1108 pc 8116
	lw	%x6, 28(%x2)  #1108 pc 8120
	lw	%x7, 24(%x2)  #1108 pc 8124
	lw	%x29, 32(%x2)  #1108 pc 8128
	sw	%x1, 36(%x2)  #1108 pc 8132
	lw	%x30, 0(%x29)  #1108 pc 8136
	addi	%x2, %x2, 40  #1108 pc 8140
	jalr	%x1, %x30, 0  #1108 pc 8144
	addi	%x2, %x2, -40  #1108 pc 8148
	lw	%x1, 36(%x2)  #1108 pc 8152
	beq	%x6, %x0, 12  #1108 pc 8156
	j	be_else.9213 #pc 8160
	nop #pc 8164
	addi	%x8, %x0, 2  #0 pc 8168
	addi	%x9, %x0, 0  #0 pc 8172
	addi	%x10, %x0, 1  #0 pc 8176
	flw	%f0, 8(%x2)  #1109 pc 8180
	flw	%f1, 0(%x2)  #1109 pc 8184
	flw	%f2, 16(%x2)  #1109 pc 8188
	lw	%x6, 28(%x2)  #1109 pc 8192
	lw	%x7, 24(%x2)  #1109 pc 8196
	lw	%x29, 32(%x2)  #1109 pc 8200
	sw	%x1, 36(%x2)  #1109 pc 8204
	lw	%x30, 0(%x29)  #1109 pc 8208
	addi	%x2, %x2, 40  #1109 pc 8212
	jalr	%x1, %x30, 0  #1109 pc 8216
	addi	%x2, %x2, -40  #1109 pc 8220
	lw	%x1, 36(%x2)  #1109 pc 8224
	beq	%x6, %x0, 12  #1109 pc 8228
	j	be_else.9214 #pc 8232
	nop #pc 8236
	addi	%x6, %x0, 0  #0 pc 8240
	ret #pc 8244
	nop #pc 8248
be_else.9214: #pc 8252
	addi	%x6, %x0, 3  #0 pc 8252
	ret #pc 8256
	nop #pc 8260
be_else.9213: #pc 8264
	addi	%x6, %x0, 2  #0 pc 8264
	ret #pc 8268
	nop #pc 8272
be_else.9212: #pc 8276
	addi	%x6, %x0, 1  #0 pc 8276
	ret #pc 8280
	nop #pc 8284
solver_surface.2768:  #pc 8288
	lw	%x8, 4(%x29)  #1118 pc 8288
	sw	%x8, 0(%x2)  #1118 pc 8292
	fsw	%f2, 8(%x2)  #1118 pc 8296
	fsw	%f1, 16(%x2)  #1118 pc 8300
	fsw	%f0, 24(%x2)  #1118 pc 8304
	sw	%x7, 32(%x2)  #1118 pc 8308
	sw	%x1, 36(%x2)  #1118 pc 8312
	addi	%x2, %x2, 40  #1118 pc 8316
	jal	%x1, o_param_abc.2675  #1118 pc 8320
	addi	%x2, %x2, -40  #1118 pc 8324
	lw	%x1, 36(%x2) #1118 pc 8328
	addi	%x7, %x6, 0  #1118 pc 8332
	lw	%x6, 32(%x2)  #1119 pc 8336
	sw	%x7, 36(%x2)  #1119 pc 8340
	sw	%x1, 40(%x2)  #1119 pc 8344
	addi	%x2, %x2, 44  #1119 pc 8348
	jal	%x1, veciprod.2637  #1119 pc 8352
	addi	%x2, %x2, -44  #1119 pc 8356
	lw	%x1, 40(%x2) #1119 pc 8360
	fsw	%f0, 40(%x2)  #1120 pc 8364
	sw	%x1, 48(%x2)  #1120 pc 8368
	addi	%x2, %x2, 52  #1120 pc 8372
	jal	%x1, fispos.2511  #1120 pc 8376
	addi	%x2, %x2, -52  #1120 pc 8380
	lw	%x1, 48(%x2) #1120 pc 8384
	beq	%x6, %x0, 12  #1120 pc 8388
	j	be_else.9216 #pc 8392
	nop #pc 8396
	addi	%x6, %x0, 0  #0 pc 8400
	ret #pc 8404
	nop #pc 8408
be_else.9216: #pc 8412
	flw	%f0, 24(%x2)  #1121 pc 8412
	flw	%f1, 16(%x2)  #1121 pc 8416
	flw	%f2, 8(%x2)  #1121 pc 8420
	lw	%x6, 36(%x2)  #1121 pc 8424
	sw	%x1, 48(%x2)  #1121 pc 8428
	addi	%x2, %x2, 52  #1121 pc 8432
	jal	%x1, veciprod2.2640  #1121 pc 8436
	addi	%x2, %x2, -52  #1121 pc 8440
	lw	%x1, 48(%x2) #1121 pc 8444
	sw	%x1, 48(%x2)  #1121 pc 8448
	addi	%x2, %x2, 52  #1121 pc 8452
	jal	%x1, fneg.2515  #1121 pc 8456
	addi	%x2, %x2, -52  #1121 pc 8460
	lw	%x1, 48(%x2) #1121 pc 8464
	flw	%f1, 40(%x2)  #1121 pc 8468
	fdiv	%f0, %f0, %f1  #1121 pc 8472
	lw	%x6, 0(%x2)  #1121 pc 8476
	fsw	%f0, 0(%x6)  #1121 pc 8480
	addi	%x6, %x0, 1  #0 pc 8484
	ret #pc 8488
	nop #pc 8492
quadratic.2774:  #pc 8496
	fsw	%f0, 0(%x2)  #1131 pc 8496
	fsw	%f2, 8(%x2)  #1131 pc 8500
	fsw	%f1, 16(%x2)  #1131 pc 8504
	sw	%x6, 24(%x2)  #1131 pc 8508
	sw	%x1, 28(%x2)  #1131 pc 8512
	addi	%x2, %x2, 32  #1131 pc 8516
	jal	%x1, fsqr.2517  #1131 pc 8520
	addi	%x2, %x2, -32  #1131 pc 8524
	lw	%x1, 28(%x2) #1131 pc 8528
	lw	%x6, 24(%x2)  #1131 pc 8532
	fsw	%f0, 32(%x2)  #1131 pc 8536
	sw	%x1, 40(%x2)  #1131 pc 8540
	addi	%x2, %x2, 44  #1131 pc 8544
	jal	%x1, o_param_a.2669  #1131 pc 8548
	addi	%x2, %x2, -44  #1131 pc 8552
	lw	%x1, 40(%x2) #1131 pc 8556
	flw	%f1, 32(%x2)  #1131 pc 8560
	fmul	%f0, %f1, %f0  #1131 pc 8564
	flw	%f1, 16(%x2)  #1131 pc 8568
	fsw	%f0, 40(%x2)  #1131 pc 8572
	fadd	%f0, %f1, %f30  #0 pc 8576
	sw	%x1, 48(%x2)  #1131 pc 8580
	addi	%x2, %x2, 52  #1131 pc 8584
	jal	%x1, fsqr.2517  #1131 pc 8588
	addi	%x2, %x2, -52  #1131 pc 8592
	lw	%x1, 48(%x2) #1131 pc 8596
	lw	%x6, 24(%x2)  #1131 pc 8600
	fsw	%f0, 48(%x2)  #1131 pc 8604
	sw	%x1, 56(%x2)  #1131 pc 8608
	addi	%x2, %x2, 60  #1131 pc 8612
	jal	%x1, o_param_b.2671  #1131 pc 8616
	addi	%x2, %x2, -60  #1131 pc 8620
	lw	%x1, 56(%x2) #1131 pc 8624
	flw	%f1, 48(%x2)  #1131 pc 8628
	fmul	%f0, %f1, %f0  #1131 pc 8632
	flw	%f1, 40(%x2)  #1131 pc 8636
	fadd	%f0, %f1, %f0  #1131 pc 8640
	flw	%f1, 8(%x2)  #1131 pc 8644
	fsw	%f0, 56(%x2)  #1131 pc 8648
	fadd	%f0, %f1, %f30  #0 pc 8652
	sw	%x1, 64(%x2)  #1131 pc 8656
	addi	%x2, %x2, 68  #1131 pc 8660
	jal	%x1, fsqr.2517  #1131 pc 8664
	addi	%x2, %x2, -68  #1131 pc 8668
	lw	%x1, 64(%x2) #1131 pc 8672
	lw	%x6, 24(%x2)  #1131 pc 8676
	fsw	%f0, 64(%x2)  #1131 pc 8680
	sw	%x1, 72(%x2)  #1131 pc 8684
	addi	%x2, %x2, 76  #1131 pc 8688
	jal	%x1, o_param_c.2673  #1131 pc 8692
	addi	%x2, %x2, -76  #1131 pc 8696
	lw	%x1, 72(%x2) #1131 pc 8700
	flw	%f1, 64(%x2)  #1131 pc 8704
	fmul	%f0, %f1, %f0  #1131 pc 8708
	flw	%f1, 56(%x2)  #1131 pc 8712
	fadd	%f0, %f1, %f0  #1131 pc 8716
	lw	%x6, 24(%x2)  #1133 pc 8720
	fsw	%f0, 72(%x2)  #1133 pc 8724
	sw	%x1, 80(%x2)  #1133 pc 8728
	addi	%x2, %x2, 84  #1133 pc 8732
	jal	%x1, o_isrot.2667  #1133 pc 8736
	addi	%x2, %x2, -84  #1133 pc 8740
	lw	%x1, 80(%x2) #1133 pc 8744
	beq	%x6, %x0, 12  #1133 pc 8748
	j	be_else.9218 #pc 8752
	nop #pc 8756
	flw	%f0, 72(%x2)  #1134 pc 8760
	ret #pc 8764
	nop #pc 8768
be_else.9218: #pc 8772
	flw	%f0, 8(%x2)  #1137 pc 8772
	flw	%f1, 16(%x2)  #1137 pc 8776
	fmul	%f2, %f1, %f0  #1137 pc 8780
	lw	%x6, 24(%x2)  #1137 pc 8784
	fsw	%f2, 80(%x2)  #1137 pc 8788
	sw	%x1, 88(%x2)  #1137 pc 8792
	addi	%x2, %x2, 92  #1137 pc 8796
	jal	%x1, o_param_r1.2693  #1137 pc 8800
	addi	%x2, %x2, -92  #1137 pc 8804
	lw	%x1, 88(%x2) #1137 pc 8808
	flw	%f1, 80(%x2)  #1137 pc 8812
	fmul	%f0, %f1, %f0  #1137 pc 8816
	flw	%f1, 72(%x2)  #1136 pc 8820
	fadd	%f0, %f1, %f0  #1136 pc 8824
	flw	%f1, 0(%x2)  #1138 pc 8828
	flw	%f2, 8(%x2)  #1138 pc 8832
	fmul	%f2, %f2, %f1  #1138 pc 8836
	lw	%x6, 24(%x2)  #1138 pc 8840
	fsw	%f0, 88(%x2)  #1138 pc 8844
	fsw	%f2, 96(%x2)  #1138 pc 8848
	sw	%x1, 104(%x2)  #1138 pc 8852
	addi	%x2, %x2, 108  #1138 pc 8856
	jal	%x1, o_param_r2.2695  #1138 pc 8860
	addi	%x2, %x2, -108  #1138 pc 8864
	lw	%x1, 104(%x2) #1138 pc 8868
	flw	%f1, 96(%x2)  #1138 pc 8872
	fmul	%f0, %f1, %f0  #1138 pc 8876
	flw	%f1, 88(%x2)  #1136 pc 8880
	fadd	%f0, %f1, %f0  #1136 pc 8884
	flw	%f1, 16(%x2)  #1139 pc 8888
	flw	%f2, 0(%x2)  #1139 pc 8892
	fmul	%f1, %f2, %f1  #1139 pc 8896
	lw	%x6, 24(%x2)  #1139 pc 8900
	fsw	%f0, 104(%x2)  #1139 pc 8904
	fsw	%f1, 112(%x2)  #1139 pc 8908
	sw	%x1, 120(%x2)  #1139 pc 8912
	addi	%x2, %x2, 124  #1139 pc 8916
	jal	%x1, o_param_r3.2697  #1139 pc 8920
	addi	%x2, %x2, -124  #1139 pc 8924
	lw	%x1, 120(%x2) #1139 pc 8928
	flw	%f1, 112(%x2)  #1139 pc 8932
	fmul	%f0, %f1, %f0  #1139 pc 8936
	flw	%f1, 104(%x2)  #1136 pc 8940
	fadd	%f0, %f1, %f0  #1136 pc 8944
	ret #pc 8948
	nop #pc 8952
bilinear.2779:  #pc 8956
	fmul	%f6, %f0, %f3  #1145 pc 8956
	fsw	%f3, 0(%x2)  #1145 pc 8960
	fsw	%f0, 8(%x2)  #1145 pc 8964
	fsw	%f5, 16(%x2)  #1145 pc 8968
	fsw	%f2, 24(%x2)  #1145 pc 8972
	sw	%x6, 32(%x2)  #1145 pc 8976
	fsw	%f4, 40(%x2)  #1145 pc 8980
	fsw	%f1, 48(%x2)  #1145 pc 8984
	fsw	%f6, 56(%x2)  #1145 pc 8988
	sw	%x1, 64(%x2)  #1145 pc 8992
	addi	%x2, %x2, 68  #1145 pc 8996
	jal	%x1, o_param_a.2669  #1145 pc 9000
	addi	%x2, %x2, -68  #1145 pc 9004
	lw	%x1, 64(%x2) #1145 pc 9008
	flw	%f1, 56(%x2)  #1145 pc 9012
	fmul	%f0, %f1, %f0  #1145 pc 9016
	flw	%f1, 40(%x2)  #1146 pc 9020
	flw	%f2, 48(%x2)  #1146 pc 9024
	fmul	%f3, %f2, %f1  #1146 pc 9028
	lw	%x6, 32(%x2)  #1146 pc 9032
	fsw	%f0, 64(%x2)  #1146 pc 9036
	fsw	%f3, 72(%x2)  #1146 pc 9040
	sw	%x1, 80(%x2)  #1146 pc 9044
	addi	%x2, %x2, 84  #1146 pc 9048
	jal	%x1, o_param_b.2671  #1146 pc 9052
	addi	%x2, %x2, -84  #1146 pc 9056
	lw	%x1, 80(%x2) #1146 pc 9060
	flw	%f1, 72(%x2)  #1146 pc 9064
	fmul	%f0, %f1, %f0  #1146 pc 9068
	flw	%f1, 64(%x2)  #1145 pc 9072
	fadd	%f0, %f1, %f0  #1145 pc 9076
	flw	%f1, 16(%x2)  #1147 pc 9080
	flw	%f2, 24(%x2)  #1147 pc 9084
	fmul	%f3, %f2, %f1  #1147 pc 9088
	lw	%x6, 32(%x2)  #1147 pc 9092
	fsw	%f0, 80(%x2)  #1147 pc 9096
	fsw	%f3, 88(%x2)  #1147 pc 9100
	sw	%x1, 96(%x2)  #1147 pc 9104
	addi	%x2, %x2, 100  #1147 pc 9108
	jal	%x1, o_param_c.2673  #1147 pc 9112
	addi	%x2, %x2, -100  #1147 pc 9116
	lw	%x1, 96(%x2) #1147 pc 9120
	flw	%f1, 88(%x2)  #1147 pc 9124
	fmul	%f0, %f1, %f0  #1147 pc 9128
	flw	%f1, 80(%x2)  #1145 pc 9132
	fadd	%f0, %f1, %f0  #1145 pc 9136
	lw	%x6, 32(%x2)  #1149 pc 9140
	fsw	%f0, 96(%x2)  #1149 pc 9144
	sw	%x1, 104(%x2)  #1149 pc 9148
	addi	%x2, %x2, 108  #1149 pc 9152
	jal	%x1, o_isrot.2667  #1149 pc 9156
	addi	%x2, %x2, -108  #1149 pc 9160
	lw	%x1, 104(%x2) #1149 pc 9164
	beq	%x6, %x0, 12  #1149 pc 9168
	j	be_else.9220 #pc 9172
	nop #pc 9176
	flw	%f0, 96(%x2)  #1150 pc 9180
	ret #pc 9184
	nop #pc 9188
be_else.9220: #pc 9192
	flw	%f0, 40(%x2)  #1153 pc 9192
	flw	%f1, 24(%x2)  #1153 pc 9196
	fmul	%f2, %f1, %f0  #1153 pc 9200
	flw	%f3, 16(%x2)  #1153 pc 9204
	flw	%f4, 48(%x2)  #1153 pc 9208
	fmul	%f5, %f4, %f3  #1153 pc 9212
	fadd	%f2, %f2, %f5  #1153 pc 9216
	lw	%x6, 32(%x2)  #1153 pc 9220
	fsw	%f2, 104(%x2)  #1153 pc 9224
	sw	%x1, 112(%x2)  #1153 pc 9228
	addi	%x2, %x2, 116  #1153 pc 9232
	jal	%x1, o_param_r1.2693  #1153 pc 9236
	addi	%x2, %x2, -116  #1153 pc 9240
	lw	%x1, 112(%x2) #1153 pc 9244
	flw	%f1, 104(%x2)  #1153 pc 9248
	fmul	%f0, %f1, %f0  #1153 pc 9252
	flw	%f1, 16(%x2)  #1154 pc 9256
	flw	%f2, 8(%x2)  #1154 pc 9260
	fmul	%f1, %f2, %f1  #1154 pc 9264
	flw	%f3, 0(%x2)  #1154 pc 9268
	flw	%f4, 24(%x2)  #1154 pc 9272
	fmul	%f4, %f4, %f3  #1154 pc 9276
	fadd	%f1, %f1, %f4  #1154 pc 9280
	lw	%x6, 32(%x2)  #1154 pc 9284
	fsw	%f0, 112(%x2)  #1154 pc 9288
	fsw	%f1, 120(%x2)  #1154 pc 9292
	sw	%x1, 128(%x2)  #1154 pc 9296
	addi	%x2, %x2, 132  #1154 pc 9300
	jal	%x1, o_param_r2.2695  #1154 pc 9304
	addi	%x2, %x2, -132  #1154 pc 9308
	lw	%x1, 128(%x2) #1154 pc 9312
	flw	%f1, 120(%x2)  #1154 pc 9316
	fmul	%f0, %f1, %f0  #1154 pc 9320
	flw	%f1, 112(%x2)  #1153 pc 9324
	fadd	%f0, %f1, %f0  #1153 pc 9328
	flw	%f1, 40(%x2)  #1155 pc 9332
	flw	%f2, 8(%x2)  #1155 pc 9336
	fmul	%f1, %f2, %f1  #1155 pc 9340
	flw	%f2, 0(%x2)  #1155 pc 9344
	flw	%f3, 48(%x2)  #1155 pc 9348
	fmul	%f2, %f3, %f2  #1155 pc 9352
	fadd	%f1, %f1, %f2  #1155 pc 9356
	lw	%x6, 32(%x2)  #1155 pc 9360
	fsw	%f0, 128(%x2)  #1155 pc 9364
	fsw	%f1, 136(%x2)  #1155 pc 9368
	sw	%x1, 144(%x2)  #1155 pc 9372
	addi	%x2, %x2, 148  #1155 pc 9376
	jal	%x1, o_param_r3.2697  #1155 pc 9380
	addi	%x2, %x2, -148  #1155 pc 9384
	lw	%x1, 144(%x2) #1155 pc 9388
	flw	%f1, 136(%x2)  #1155 pc 9392
	fmul	%f0, %f1, %f0  #1155 pc 9396
	flw	%f1, 128(%x2)  #1153 pc 9400
	fadd	%f0, %f1, %f0  #1153 pc 9404
	sw	%x1, 144(%x2)  #1152 pc 9408
	addi	%x2, %x2, 148  #1152 pc 9412
	jal	%x1, fhalf.2519  #1152 pc 9416
	addi	%x2, %x2, -148  #1152 pc 9420
	lw	%x1, 144(%x2) #1152 pc 9424
	flw	%f1, 96(%x2)  #1152 pc 9428
	fadd	%f0, %f1, %f0  #1152 pc 9432
	ret #pc 9436
	nop #pc 9440
solver_second.2787:  #pc 9444
	lw	%x8, 4(%x29)  #0 pc 9444
	flw	%f3, 0(%x7)  #1170 pc 9448
	flw	%f4, 4(%x7)  #1170 pc 9452
	flw	%f5, 8(%x7)  #1170 pc 9456
	sw	%x8, 0(%x2)  #1170 pc 9460
	fsw	%f2, 8(%x2)  #1170 pc 9464
	fsw	%f1, 16(%x2)  #1170 pc 9468
	fsw	%f0, 24(%x2)  #1170 pc 9472
	sw	%x6, 32(%x2)  #1170 pc 9476
	sw	%x7, 36(%x2)  #1170 pc 9480
	fadd	%f2, %f5, %f30  #0 pc 9484
	fadd	%f1, %f4, %f30  #0 pc 9488
	fadd	%f0, %f3, %f30  #0 pc 9492
	sw	%x1, 40(%x2)  #1170 pc 9496
	addi	%x2, %x2, 44  #1170 pc 9500
	jal	%x1, quadratic.2774  #1170 pc 9504
	addi	%x2, %x2, -44  #1170 pc 9508
	lw	%x1, 40(%x2) #1170 pc 9512
	fsw	%f0, 40(%x2)  #1172 pc 9516
	sw	%x1, 48(%x2)  #1172 pc 9520
	addi	%x2, %x2, 52  #1172 pc 9524
	jal	%x1, fiszero.2509  #1172 pc 9528
	addi	%x2, %x2, -52  #1172 pc 9532
	lw	%x1, 48(%x2) #1172 pc 9536
	beq	%x6, %x0, 12  #1172 pc 9540
	j	be_else.9222 #pc 9544
	nop #pc 9548
	lw	%x6, 36(%x2)  #1177 pc 9552
	flw	%f0, 0(%x6)  #1177 pc 9556
	flw	%f1, 4(%x6)  #1177 pc 9560
	flw	%f2, 8(%x6)  #1177 pc 9564
	flw	%f3, 24(%x2)  #1177 pc 9568
	flw	%f4, 16(%x2)  #1177 pc 9572
	flw	%f5, 8(%x2)  #1177 pc 9576
	lw	%x6, 32(%x2)  #1177 pc 9580
	sw	%x1, 48(%x2)  #1177 pc 9584
	addi	%x2, %x2, 52  #1177 pc 9588
	jal	%x1, bilinear.2779  #1177 pc 9592
	addi	%x2, %x2, -52  #1177 pc 9596
	lw	%x1, 48(%x2) #1177 pc 9600
	flw	%f1, 24(%x2)  #1179 pc 9604
	flw	%f2, 16(%x2)  #1179 pc 9608
	flw	%f3, 8(%x2)  #1179 pc 9612
	lw	%x6, 32(%x2)  #1179 pc 9616
	fsw	%f0, 48(%x2)  #1179 pc 9620
	fadd	%f0, %f1, %f30  #0 pc 9624
	fadd	%f1, %f2, %f30  #0 pc 9628
	fadd	%f2, %f3, %f30  #0 pc 9632
	sw	%x1, 56(%x2)  #1179 pc 9636
	addi	%x2, %x2, 60  #1179 pc 9640
	jal	%x1, quadratic.2774  #1179 pc 9644
	addi	%x2, %x2, -60  #1179 pc 9648
	lw	%x1, 56(%x2) #1179 pc 9652
	lw	%x6, 32(%x2)  #1180 pc 9656
	fsw	%f0, 56(%x2)  #1180 pc 9660
	sw	%x1, 64(%x2)  #1180 pc 9664
	addi	%x2, %x2, 68  #1180 pc 9668
	jal	%x1, o_form.2661  #1180 pc 9672
	addi	%x2, %x2, -68  #1180 pc 9676
	lw	%x1, 64(%x2) #1180 pc 9680
	addi	%x31, %x0, 3  #pc 9684
	beq	%x6, %x31, 12  #1180 pc 9688
	j	be_else.9223 #pc 9692
	nop #pc 9696
	fmv	%f0, l.6263  #0 pc 9700
	flw	%f1, 56(%x2)  #1180 pc 9704
	fsub	%f0, %f1, %f0  #1180 pc 9708
	j	be_cont.9224 #pc 9712
	nop #pc 9716
be_else.9223: #pc 9720
	flw	%f0, 56(%x2)  #1180 pc 9720
be_cont.9224: #pc 9724
	flw	%f1, 48(%x2)  #1182 pc 9724
	fsw	%f0, 64(%x2)  #1182 pc 9728
	fadd	%f0, %f1, %f30  #0 pc 9732
	sw	%x1, 72(%x2)  #1182 pc 9736
	addi	%x2, %x2, 76  #1182 pc 9740
	jal	%x1, fsqr.2517  #1182 pc 9744
	addi	%x2, %x2, -76  #1182 pc 9748
	lw	%x1, 72(%x2) #1182 pc 9752
	flw	%f1, 64(%x2)  #1182 pc 9756
	flw	%f2, 40(%x2)  #1182 pc 9760
	fmul	%f1, %f2, %f1  #1182 pc 9764
	fsub	%f0, %f0, %f1  #1182 pc 9768
	fsw	%f0, 72(%x2)  #1184 pc 9772
	sw	%x1, 80(%x2)  #1184 pc 9776
	addi	%x2, %x2, 84  #1184 pc 9780
	jal	%x1, fispos.2511  #1184 pc 9784
	addi	%x2, %x2, -84  #1184 pc 9788
	lw	%x1, 80(%x2) #1184 pc 9792
	beq	%x6, %x0, 12  #1184 pc 9796
	j	be_else.9225 #pc 9800
	nop #pc 9804
	addi	%x6, %x0, 0  #0 pc 9808
	ret #pc 9812
	nop #pc 9816
be_else.9225: #pc 9820
	flw	%f0, 72(%x2)  #1185 pc 9820
	fsqrt	%f0, %f0  #1185 pc 9824
	lw	%x6, 32(%x2)  #1186 pc 9828
	fsw	%f0, 80(%x2)  #1186 pc 9832
	sw	%x1, 88(%x2)  #1186 pc 9836
	addi	%x2, %x2, 92  #1186 pc 9840
	jal	%x1, o_isinvert.2665  #1186 pc 9844
	addi	%x2, %x2, -92  #1186 pc 9848
	lw	%x1, 88(%x2) #1186 pc 9852
	beq	%x6, %x0, 12  #1186 pc 9856
	j	be_else.9226 #pc 9860
	nop #pc 9864
	flw	%f0, 80(%x2)  #1186 pc 9868
	sw	%x1, 88(%x2)  #1186 pc 9872
	addi	%x2, %x2, 92  #1186 pc 9876
	jal	%x1, fneg.2515  #1186 pc 9880
	addi	%x2, %x2, -92  #1186 pc 9884
	lw	%x1, 88(%x2) #1186 pc 9888
	j	be_cont.9227 #pc 9892
	nop #pc 9896
be_else.9226: #pc 9900
	flw	%f0, 80(%x2)  #1186 pc 9900
be_cont.9227: #pc 9904
	flw	%f1, 48(%x2)  #1187 pc 9904
	fsub	%f0, %f0, %f1  #1187 pc 9908
	flw	%f1, 40(%x2)  #1187 pc 9912
	fdiv	%f0, %f0, %f1  #1187 pc 9916
	lw	%x6, 0(%x2)  #1187 pc 9920
	fsw	%f0, 0(%x6)  #1187 pc 9924
	addi	%x6, %x0, 1  #0 pc 9928
	ret #pc 9932
	nop #pc 9936
be_else.9222: #pc 9940
	addi	%x6, %x0, 0  #0 pc 9940
	ret #pc 9944
	nop #pc 9948
solver.2793:  #pc 9952
	lw	%x9, 16(%x29)  #1196 pc 9952
	lw	%x10, 12(%x29)  #1196 pc 9956
	lw	%x11, 8(%x29)  #1196 pc 9960
	lw	%x12, 4(%x29)  #1196 pc 9964
	slli	%x6, %x6, 2  #1196 pc 9968
	add	%x31, %x6, %x12  #1196 pc 9972
	lw	%x6, 0(%x31)  #1196 pc 9976
	flw	%f0, 0(%x8)  #1198 pc 9980
	sw	%x10, 0(%x2)  #1198 pc 9984
	sw	%x9, 4(%x2)  #1198 pc 9988
	sw	%x7, 8(%x2)  #1198 pc 9992
	sw	%x11, 12(%x2)  #1198 pc 9996
	sw	%x6, 16(%x2)  #1198 pc 10000
	sw	%x8, 20(%x2)  #1198 pc 10004
	fsw	%f0, 24(%x2)  #1198 pc 10008
	sw	%x1, 32(%x2)  #1198 pc 10012
	addi	%x2, %x2, 36  #1198 pc 10016
	jal	%x1, o_param_x.2677  #1198 pc 10020
	addi	%x2, %x2, -36  #1198 pc 10024
	lw	%x1, 32(%x2) #1198 pc 10028
	flw	%f1, 24(%x2)  #1198 pc 10032
	fsub	%f0, %f1, %f0  #1198 pc 10036
	lw	%x6, 20(%x2)  #1199 pc 10040
	flw	%f1, 4(%x6)  #1199 pc 10044
	lw	%x7, 16(%x2)  #1199 pc 10048
	fsw	%f0, 32(%x2)  #1199 pc 10052
	fsw	%f1, 40(%x2)  #1199 pc 10056
	addi	%x6, %x7, 0  #0 pc 10060
	sw	%x1, 48(%x2)  #1199 pc 10064
	addi	%x2, %x2, 52  #1199 pc 10068
	jal	%x1, o_param_y.2679  #1199 pc 10072
	addi	%x2, %x2, -52  #1199 pc 10076
	lw	%x1, 48(%x2) #1199 pc 10080
	flw	%f1, 40(%x2)  #1199 pc 10084
	fsub	%f0, %f1, %f0  #1199 pc 10088
	lw	%x6, 20(%x2)  #1200 pc 10092
	flw	%f1, 8(%x6)  #1200 pc 10096
	lw	%x6, 16(%x2)  #1200 pc 10100
	fsw	%f0, 48(%x2)  #1200 pc 10104
	fsw	%f1, 56(%x2)  #1200 pc 10108
	sw	%x1, 64(%x2)  #1200 pc 10112
	addi	%x2, %x2, 68  #1200 pc 10116
	jal	%x1, o_param_z.2681  #1200 pc 10120
	addi	%x2, %x2, -68  #1200 pc 10124
	lw	%x1, 64(%x2) #1200 pc 10128
	flw	%f1, 56(%x2)  #1200 pc 10132
	fsub	%f0, %f1, %f0  #1200 pc 10136
	lw	%x6, 16(%x2)  #1201 pc 10140
	fsw	%f0, 64(%x2)  #1201 pc 10144
	sw	%x1, 72(%x2)  #1201 pc 10148
	addi	%x2, %x2, 76  #1201 pc 10152
	jal	%x1, o_form.2661  #1201 pc 10156
	addi	%x2, %x2, -76  #1201 pc 10160
	lw	%x1, 72(%x2) #1201 pc 10164
	addi	%x31, %x0, 1  #pc 10168
	beq	%x6, %x31, 12  #1203 pc 10172
	j	be_else.9228 #pc 10176
	nop #pc 10180
	flw	%f0, 32(%x2)  #1203 pc 10184
	flw	%f1, 48(%x2)  #1203 pc 10188
	flw	%f2, 64(%x2)  #1203 pc 10192
	lw	%x6, 16(%x2)  #1203 pc 10196
	lw	%x7, 8(%x2)  #1203 pc 10200
	lw	%x29, 12(%x2)  #1203 pc 10204
	lw	%x30, 0(%x29)  #1203 pc 10208
	jalr	%x0, %x30, 0  #1203 pc 10212
	nop #pc 10216
be_else.9228: #pc 10220
	addi	%x31, %x0, 2  #pc 10220
	beq	%x6, %x31, 12  #1204 pc 10224
	j	be_else.9229 #pc 10228
	nop #pc 10232
	flw	%f0, 32(%x2)  #1204 pc 10236
	flw	%f1, 48(%x2)  #1204 pc 10240
	flw	%f2, 64(%x2)  #1204 pc 10244
	lw	%x6, 16(%x2)  #1204 pc 10248
	lw	%x7, 8(%x2)  #1204 pc 10252
	lw	%x29, 4(%x2)  #1204 pc 10256
	lw	%x30, 0(%x29)  #1204 pc 10260
	jalr	%x0, %x30, 0  #1204 pc 10264
	nop #pc 10268
be_else.9229: #pc 10272
	flw	%f0, 32(%x2)  #1205 pc 10272
	flw	%f1, 48(%x2)  #1205 pc 10276
	flw	%f2, 64(%x2)  #1205 pc 10280
	lw	%x6, 16(%x2)  #1205 pc 10284
	lw	%x7, 8(%x2)  #1205 pc 10288
	lw	%x29, 0(%x2)  #1205 pc 10292
	lw	%x30, 0(%x29)  #1205 pc 10296
	jalr	%x0, %x30, 0  #1205 pc 10300
	nop #pc 10304
solver_rect_fast.2797:  #pc 10308
	lw	%x9, 4(%x29)  #0 pc 10308
	flw	%f3, 0(%x8)  #1228 pc 10312
	fsub	%f3, %f3, %f0  #1228 pc 10316
	flw	%f4, 4(%x8)  #1228 pc 10320
	fmul	%f3, %f3, %f4  #1228 pc 10324
	flw	%f4, 4(%x7)  #1230 pc 10328
	fmul	%f4, %f3, %f4  #1230 pc 10332
	fadd	%f4, %f4, %f1  #1230 pc 10336
	fabs	%f4, %f4  #1230 pc 10340
	sw	%x9, 0(%x2)  #1230 pc 10344
	fsw	%f0, 8(%x2)  #1230 pc 10348
	fsw	%f1, 16(%x2)  #1230 pc 10352
	sw	%x8, 24(%x2)  #1230 pc 10356
	sw	%x6, 28(%x2)  #1230 pc 10360
	fsw	%f2, 32(%x2)  #1230 pc 10364
	fsw	%f3, 40(%x2)  #1230 pc 10368
	sw	%x7, 48(%x2)  #1230 pc 10372
	fsw	%f4, 56(%x2)  #1230 pc 10376
	sw	%x1, 64(%x2)  #1230 pc 10380
	addi	%x2, %x2, 68  #1230 pc 10384
	jal	%x1, o_param_b.2671  #1230 pc 10388
	addi	%x2, %x2, -68  #1230 pc 10392
	lw	%x1, 64(%x2) #1230 pc 10396
	fadd	%f1, %f0, %f30  #1230 pc 10400
	flw	%f0, 56(%x2)  #1230 pc 10404
	sw	%x1, 64(%x2)  #1230 pc 10408
	addi	%x2, %x2, 68  #1230 pc 10412
	jal	%x1, fless.2521  #1230 pc 10416
	addi	%x2, %x2, -68  #1230 pc 10420
	lw	%x1, 64(%x2) #1230 pc 10424
	beq	%x6, %x0, 12  #1230 pc 10428
	j	be_else.9232 #pc 10432
	nop #pc 10436
	addi	%x6, %x0, 0  #0 pc 10440
	j	be_cont.9233 #pc 10444
	nop #pc 10448
be_else.9232: #pc 10452
	lw	%x6, 48(%x2)  #1231 pc 10452
	flw	%f0, 8(%x6)  #1231 pc 10456
	flw	%f1, 40(%x2)  #1231 pc 10460
	fmul	%f0, %f1, %f0  #1231 pc 10464
	flw	%f2, 32(%x2)  #1231 pc 10468
	fadd	%f0, %f0, %f2  #1231 pc 10472
	fabs	%f0, %f0  #1231 pc 10476
	lw	%x7, 28(%x2)  #1231 pc 10480
	fsw	%f0, 64(%x2)  #1231 pc 10484
	addi	%x6, %x7, 0  #0 pc 10488
	sw	%x1, 72(%x2)  #1231 pc 10492
	addi	%x2, %x2, 76  #1231 pc 10496
	jal	%x1, o_param_c.2673  #1231 pc 10500
	addi	%x2, %x2, -76  #1231 pc 10504
	lw	%x1, 72(%x2) #1231 pc 10508
	fadd	%f1, %f0, %f30  #1231 pc 10512
	flw	%f0, 64(%x2)  #1231 pc 10516
	sw	%x1, 72(%x2)  #1231 pc 10520
	addi	%x2, %x2, 76  #1231 pc 10524
	jal	%x1, fless.2521  #1231 pc 10528
	addi	%x2, %x2, -76  #1231 pc 10532
	lw	%x1, 72(%x2) #1231 pc 10536
	beq	%x6, %x0, 12  #1231 pc 10540
	j	be_else.9234 #pc 10544
	nop #pc 10548
	addi	%x6, %x0, 0  #0 pc 10552
	j	be_cont.9235 #pc 10556
	nop #pc 10560
be_else.9234: #pc 10564
	lw	%x6, 24(%x2)  #1232 pc 10564
	flw	%f0, 4(%x6)  #1232 pc 10568
	sw	%x1, 72(%x2)  #1232 pc 10572
	addi	%x2, %x2, 76  #1232 pc 10576
	jal	%x1, fiszero.2509  #1232 pc 10580
	addi	%x2, %x2, -76  #1232 pc 10584
	lw	%x1, 72(%x2) #1232 pc 10588
	beq	%x6, %x0, 12  #1232 pc 10592
	j	be_else.9236 #pc 10596
	nop #pc 10600
	addi	%x6, %x0, 1  #0 pc 10604
	j	be_cont.9237 #pc 10608
	nop #pc 10612
be_else.9236: #pc 10616
	addi	%x6, %x0, 0  #0 pc 10616
be_cont.9237: #pc 10620
be_cont.9235: #pc 10620
be_cont.9233: #pc 10620
	beq	%x6, %x0, 12  #1229 pc 10620
	j	be_else.9238 #pc 10624
	nop #pc 10628
	lw	%x6, 24(%x2)  #1237 pc 10632
	flw	%f0, 8(%x6)  #1237 pc 10636
	flw	%f1, 16(%x2)  #1237 pc 10640
	fsub	%f0, %f0, %f1  #1237 pc 10644
	flw	%f2, 12(%x6)  #1237 pc 10648
	fmul	%f0, %f0, %f2  #1237 pc 10652
	lw	%x7, 48(%x2)  #1239 pc 10656
	flw	%f2, 0(%x7)  #1239 pc 10660
	fmul	%f2, %f0, %f2  #1239 pc 10664
	flw	%f3, 8(%x2)  #1239 pc 10668
	fadd	%f2, %f2, %f3  #1239 pc 10672
	fabs	%f2, %f2  #1239 pc 10676
	lw	%x8, 28(%x2)  #1239 pc 10680
	fsw	%f0, 72(%x2)  #1239 pc 10684
	fsw	%f2, 80(%x2)  #1239 pc 10688
	addi	%x6, %x8, 0  #0 pc 10692
	sw	%x1, 88(%x2)  #1239 pc 10696
	addi	%x2, %x2, 92  #1239 pc 10700
	jal	%x1, o_param_a.2669  #1239 pc 10704
	addi	%x2, %x2, -92  #1239 pc 10708
	lw	%x1, 88(%x2) #1239 pc 10712
	fadd	%f1, %f0, %f30  #1239 pc 10716
	flw	%f0, 80(%x2)  #1239 pc 10720
	sw	%x1, 88(%x2)  #1239 pc 10724
	addi	%x2, %x2, 92  #1239 pc 10728
	jal	%x1, fless.2521  #1239 pc 10732
	addi	%x2, %x2, -92  #1239 pc 10736
	lw	%x1, 88(%x2) #1239 pc 10740
	beq	%x6, %x0, 12  #1239 pc 10744
	j	be_else.9239 #pc 10748
	nop #pc 10752
	addi	%x6, %x0, 0  #0 pc 10756
	j	be_cont.9240 #pc 10760
	nop #pc 10764
be_else.9239: #pc 10768
	lw	%x6, 48(%x2)  #1240 pc 10768
	flw	%f0, 8(%x6)  #1240 pc 10772
	flw	%f1, 72(%x2)  #1240 pc 10776
	fmul	%f0, %f1, %f0  #1240 pc 10780
	flw	%f2, 32(%x2)  #1240 pc 10784
	fadd	%f0, %f0, %f2  #1240 pc 10788
	fabs	%f0, %f0  #1240 pc 10792
	lw	%x7, 28(%x2)  #1240 pc 10796
	fsw	%f0, 88(%x2)  #1240 pc 10800
	addi	%x6, %x7, 0  #0 pc 10804
	sw	%x1, 96(%x2)  #1240 pc 10808
	addi	%x2, %x2, 100  #1240 pc 10812
	jal	%x1, o_param_c.2673  #1240 pc 10816
	addi	%x2, %x2, -100  #1240 pc 10820
	lw	%x1, 96(%x2) #1240 pc 10824
	fadd	%f1, %f0, %f30  #1240 pc 10828
	flw	%f0, 88(%x2)  #1240 pc 10832
	sw	%x1, 96(%x2)  #1240 pc 10836
	addi	%x2, %x2, 100  #1240 pc 10840
	jal	%x1, fless.2521  #1240 pc 10844
	addi	%x2, %x2, -100  #1240 pc 10848
	lw	%x1, 96(%x2) #1240 pc 10852
	beq	%x6, %x0, 12  #1240 pc 10856
	j	be_else.9241 #pc 10860
	nop #pc 10864
	addi	%x6, %x0, 0  #0 pc 10868
	j	be_cont.9242 #pc 10872
	nop #pc 10876
be_else.9241: #pc 10880
	lw	%x6, 24(%x2)  #1241 pc 10880
	flw	%f0, 12(%x6)  #1241 pc 10884
	sw	%x1, 96(%x2)  #1241 pc 10888
	addi	%x2, %x2, 100  #1241 pc 10892
	jal	%x1, fiszero.2509  #1241 pc 10896
	addi	%x2, %x2, -100  #1241 pc 10900
	lw	%x1, 96(%x2) #1241 pc 10904
	beq	%x6, %x0, 12  #1241 pc 10908
	j	be_else.9243 #pc 10912
	nop #pc 10916
	addi	%x6, %x0, 1  #0 pc 10920
	j	be_cont.9244 #pc 10924
	nop #pc 10928
be_else.9243: #pc 10932
	addi	%x6, %x0, 0  #0 pc 10932
be_cont.9244: #pc 10936
be_cont.9242: #pc 10936
be_cont.9240: #pc 10936
	beq	%x6, %x0, 12  #1238 pc 10936
	j	be_else.9245 #pc 10940
	nop #pc 10944
	lw	%x6, 24(%x2)  #1246 pc 10948
	flw	%f0, 16(%x6)  #1246 pc 10952
	flw	%f1, 32(%x2)  #1246 pc 10956
	fsub	%f0, %f0, %f1  #1246 pc 10960
	flw	%f1, 20(%x6)  #1246 pc 10964
	fmul	%f0, %f0, %f1  #1246 pc 10968
	lw	%x7, 48(%x2)  #1248 pc 10972
	flw	%f1, 0(%x7)  #1248 pc 10976
	fmul	%f1, %f0, %f1  #1248 pc 10980
	flw	%f2, 8(%x2)  #1248 pc 10984
	fadd	%f1, %f1, %f2  #1248 pc 10988
	fabs	%f1, %f1  #1248 pc 10992
	lw	%x8, 28(%x2)  #1248 pc 10996
	fsw	%f0, 96(%x2)  #1248 pc 11000
	fsw	%f1, 104(%x2)  #1248 pc 11004
	addi	%x6, %x8, 0  #0 pc 11008
	sw	%x1, 112(%x2)  #1248 pc 11012
	addi	%x2, %x2, 116  #1248 pc 11016
	jal	%x1, o_param_a.2669  #1248 pc 11020
	addi	%x2, %x2, -116  #1248 pc 11024
	lw	%x1, 112(%x2) #1248 pc 11028
	fadd	%f1, %f0, %f30  #1248 pc 11032
	flw	%f0, 104(%x2)  #1248 pc 11036
	sw	%x1, 112(%x2)  #1248 pc 11040
	addi	%x2, %x2, 116  #1248 pc 11044
	jal	%x1, fless.2521  #1248 pc 11048
	addi	%x2, %x2, -116  #1248 pc 11052
	lw	%x1, 112(%x2) #1248 pc 11056
	beq	%x6, %x0, 12  #1248 pc 11060
	j	be_else.9246 #pc 11064
	nop #pc 11068
	addi	%x6, %x0, 0  #0 pc 11072
	j	be_cont.9247 #pc 11076
	nop #pc 11080
be_else.9246: #pc 11084
	lw	%x6, 48(%x2)  #1249 pc 11084
	flw	%f0, 4(%x6)  #1249 pc 11088
	flw	%f1, 96(%x2)  #1249 pc 11092
	fmul	%f0, %f1, %f0  #1249 pc 11096
	flw	%f2, 16(%x2)  #1249 pc 11100
	fadd	%f0, %f0, %f2  #1249 pc 11104
	fabs	%f0, %f0  #1249 pc 11108
	lw	%x6, 28(%x2)  #1249 pc 11112
	fsw	%f0, 112(%x2)  #1249 pc 11116
	sw	%x1, 120(%x2)  #1249 pc 11120
	addi	%x2, %x2, 124  #1249 pc 11124
	jal	%x1, o_param_b.2671  #1249 pc 11128
	addi	%x2, %x2, -124  #1249 pc 11132
	lw	%x1, 120(%x2) #1249 pc 11136
	fadd	%f1, %f0, %f30  #1249 pc 11140
	flw	%f0, 112(%x2)  #1249 pc 11144
	sw	%x1, 120(%x2)  #1249 pc 11148
	addi	%x2, %x2, 124  #1249 pc 11152
	jal	%x1, fless.2521  #1249 pc 11156
	addi	%x2, %x2, -124  #1249 pc 11160
	lw	%x1, 120(%x2) #1249 pc 11164
	beq	%x6, %x0, 12  #1249 pc 11168
	j	be_else.9248 #pc 11172
	nop #pc 11176
	addi	%x6, %x0, 0  #0 pc 11180
	j	be_cont.9249 #pc 11184
	nop #pc 11188
be_else.9248: #pc 11192
	lw	%x6, 24(%x2)  #1250 pc 11192
	flw	%f0, 20(%x6)  #1250 pc 11196
	sw	%x1, 120(%x2)  #1250 pc 11200
	addi	%x2, %x2, 124  #1250 pc 11204
	jal	%x1, fiszero.2509  #1250 pc 11208
	addi	%x2, %x2, -124  #1250 pc 11212
	lw	%x1, 120(%x2) #1250 pc 11216
	beq	%x6, %x0, 12  #1250 pc 11220
	j	be_else.9250 #pc 11224
	nop #pc 11228
	addi	%x6, %x0, 1  #0 pc 11232
	j	be_cont.9251 #pc 11236
	nop #pc 11240
be_else.9250: #pc 11244
	addi	%x6, %x0, 0  #0 pc 11244
be_cont.9251: #pc 11248
be_cont.9249: #pc 11248
be_cont.9247: #pc 11248
	beq	%x6, %x0, 12  #1247 pc 11248
	j	be_else.9252 #pc 11252
	nop #pc 11256
	addi	%x6, %x0, 0  #0 pc 11260
	ret #pc 11264
	nop #pc 11268
be_else.9252: #pc 11272
	lw	%x6, 0(%x2)  #1254 pc 11272
	flw	%f0, 96(%x2)  #1254 pc 11276
	fsw	%f0, 0(%x6)  #1254 pc 11280
	addi	%x6, %x0, 3  #0 pc 11284
	ret #pc 11288
	nop #pc 11292
be_else.9245: #pc 11296
	lw	%x6, 0(%x2)  #1245 pc 11296
	flw	%f0, 72(%x2)  #1245 pc 11300
	fsw	%f0, 0(%x6)  #1245 pc 11304
	addi	%x6, %x0, 2  #0 pc 11308
	ret #pc 11312
	nop #pc 11316
be_else.9238: #pc 11320
	lw	%x6, 0(%x2)  #1236 pc 11320
	flw	%f0, 40(%x2)  #1236 pc 11324
	fsw	%f0, 0(%x6)  #1236 pc 11328
	addi	%x6, %x0, 1  #0 pc 11332
	ret #pc 11336
	nop #pc 11340
solver_surface_fast.2804:  #pc 11344
	lw	%x6, 4(%x29)  #0 pc 11344
	flw	%f3, 0(%x7)  #1261 pc 11348
	sw	%x6, 0(%x2)  #1261 pc 11352
	fsw	%f2, 8(%x2)  #1261 pc 11356
	fsw	%f1, 16(%x2)  #1261 pc 11360
	fsw	%f0, 24(%x2)  #1261 pc 11364
	sw	%x7, 32(%x2)  #1261 pc 11368
	fadd	%f0, %f3, %f30  #0 pc 11372
	sw	%x1, 36(%x2)  #1261 pc 11376
	addi	%x2, %x2, 40  #1261 pc 11380
	jal	%x1, fisneg.2513  #1261 pc 11384
	addi	%x2, %x2, -40  #1261 pc 11388
	lw	%x1, 36(%x2) #1261 pc 11392
	beq	%x6, %x0, 12  #1261 pc 11396
	j	be_else.9254 #pc 11400
	nop #pc 11404
	addi	%x6, %x0, 0  #0 pc 11408
	ret #pc 11412
	nop #pc 11416
be_else.9254: #pc 11420
	lw	%x6, 32(%x2)  #1263 pc 11420
	flw	%f0, 4(%x6)  #1263 pc 11424
	flw	%f1, 24(%x2)  #1263 pc 11428
	fmul	%f0, %f0, %f1  #1263 pc 11432
	flw	%f1, 8(%x6)  #1263 pc 11436
	flw	%f2, 16(%x2)  #1263 pc 11440
	fmul	%f1, %f1, %f2  #1263 pc 11444
	fadd	%f0, %f0, %f1  #1263 pc 11448
	flw	%f1, 12(%x6)  #1263 pc 11452
	flw	%f2, 8(%x2)  #1263 pc 11456
	fmul	%f1, %f1, %f2  #1263 pc 11460
	fadd	%f0, %f0, %f1  #1263 pc 11464
	lw	%x6, 0(%x2)  #1262 pc 11468
	fsw	%f0, 0(%x6)  #1262 pc 11472
	addi	%x6, %x0, 1  #0 pc 11476
	ret #pc 11480
	nop #pc 11484
solver_second_fast.2810:  #pc 11488
	lw	%x8, 4(%x29)  #0 pc 11488
	flw	%f3, 0(%x7)  #1271 pc 11492
	sw	%x8, 0(%x2)  #1272 pc 11496
	fsw	%f3, 8(%x2)  #1272 pc 11500
	sw	%x6, 16(%x2)  #1272 pc 11504
	fsw	%f2, 24(%x2)  #1272 pc 11508
	fsw	%f1, 32(%x2)  #1272 pc 11512
	fsw	%f0, 40(%x2)  #1272 pc 11516
	sw	%x7, 48(%x2)  #1272 pc 11520
	fadd	%f0, %f3, %f30  #0 pc 11524
	sw	%x1, 52(%x2)  #1272 pc 11528
	addi	%x2, %x2, 56  #1272 pc 11532
	jal	%x1, fiszero.2509  #1272 pc 11536
	addi	%x2, %x2, -56  #1272 pc 11540
	lw	%x1, 52(%x2) #1272 pc 11544
	beq	%x6, %x0, 12  #1272 pc 11548
	j	be_else.9257 #pc 11552
	nop #pc 11556
	lw	%x6, 48(%x2)  #1275 pc 11560
	flw	%f0, 4(%x6)  #1275 pc 11564
	flw	%f1, 40(%x2)  #1275 pc 11568
	fmul	%f0, %f0, %f1  #1275 pc 11572
	flw	%f2, 8(%x6)  #1275 pc 11576
	flw	%f3, 32(%x2)  #1275 pc 11580
	fmul	%f2, %f2, %f3  #1275 pc 11584
	fadd	%f0, %f0, %f2  #1275 pc 11588
	flw	%f2, 12(%x6)  #1275 pc 11592
	flw	%f4, 24(%x2)  #1275 pc 11596
	fmul	%f2, %f2, %f4  #1275 pc 11600
	fadd	%f0, %f0, %f2  #1275 pc 11604
	lw	%x7, 16(%x2)  #1276 pc 11608
	fsw	%f0, 56(%x2)  #1276 pc 11612
	addi	%x6, %x7, 0  #0 pc 11616
	fadd	%f2, %f4, %f30  #0 pc 11620
	fadd	%f0, %f1, %f30  #0 pc 11624
	fadd	%f1, %f3, %f30  #0 pc 11628
	sw	%x1, 64(%x2)  #1276 pc 11632
	addi	%x2, %x2, 68  #1276 pc 11636
	jal	%x1, quadratic.2774  #1276 pc 11640
	addi	%x2, %x2, -68  #1276 pc 11644
	lw	%x1, 64(%x2) #1276 pc 11648
	lw	%x6, 16(%x2)  #1277 pc 11652
	fsw	%f0, 64(%x2)  #1277 pc 11656
	sw	%x1, 72(%x2)  #1277 pc 11660
	addi	%x2, %x2, 76  #1277 pc 11664
	jal	%x1, o_form.2661  #1277 pc 11668
	addi	%x2, %x2, -76  #1277 pc 11672
	lw	%x1, 72(%x2) #1277 pc 11676
	addi	%x31, %x0, 3  #pc 11680
	beq	%x6, %x31, 12  #1277 pc 11684
	j	be_else.9259 #pc 11688
	nop #pc 11692
	fmv	%f0, l.6263  #0 pc 11696
	flw	%f1, 64(%x2)  #1277 pc 11700
	fsub	%f0, %f1, %f0  #1277 pc 11704
	j	be_cont.9260 #pc 11708
	nop #pc 11712
be_else.9259: #pc 11716
	flw	%f0, 64(%x2)  #1277 pc 11716
be_cont.9260: #pc 11720
	flw	%f1, 56(%x2)  #1278 pc 11720
	fsw	%f0, 72(%x2)  #1278 pc 11724
	fadd	%f0, %f1, %f30  #0 pc 11728
	sw	%x1, 80(%x2)  #1278 pc 11732
	addi	%x2, %x2, 84  #1278 pc 11736
	jal	%x1, fsqr.2517  #1278 pc 11740
	addi	%x2, %x2, -84  #1278 pc 11744
	lw	%x1, 80(%x2) #1278 pc 11748
	flw	%f1, 72(%x2)  #1278 pc 11752
	flw	%f2, 8(%x2)  #1278 pc 11756
	fmul	%f1, %f2, %f1  #1278 pc 11760
	fsub	%f0, %f0, %f1  #1278 pc 11764
	fsw	%f0, 80(%x2)  #1279 pc 11768
	sw	%x1, 88(%x2)  #1279 pc 11772
	addi	%x2, %x2, 92  #1279 pc 11776
	jal	%x1, fispos.2511  #1279 pc 11780
	addi	%x2, %x2, -92  #1279 pc 11784
	lw	%x1, 88(%x2) #1279 pc 11788
	beq	%x6, %x0, 12  #1279 pc 11792
	j	be_else.9261 #pc 11796
	nop #pc 11800
	addi	%x6, %x0, 0  #0 pc 11804
	ret #pc 11808
	nop #pc 11812
be_else.9261: #pc 11816
	lw	%x6, 16(%x2)  #1280 pc 11816
	sw	%x1, 88(%x2)  #1280 pc 11820
	addi	%x2, %x2, 92  #1280 pc 11824
	jal	%x1, o_isinvert.2665  #1280 pc 11828
	addi	%x2, %x2, -92  #1280 pc 11832
	lw	%x1, 88(%x2) #1280 pc 11836
	beq	%x6, %x0, 12  #1280 pc 11840
	j	be_else.9262 #pc 11844
	nop #pc 11848
	flw	%f0, 80(%x2)  #1283 pc 11852
	fsqrt	%f0, %f0  #1283 pc 11856
	flw	%f1, 56(%x2)  #1283 pc 11860
	fsub	%f0, %f1, %f0  #1283 pc 11864
	lw	%x6, 48(%x2)  #1283 pc 11868
	flw	%f1, 16(%x6)  #1283 pc 11872
	fmul	%f0, %f0, %f1  #1283 pc 11876
	lw	%x6, 0(%x2)  #1283 pc 11880
	fsw	%f0, 0(%x6)  #1283 pc 11884
	j	be_cont.9263 #pc 11888
	nop #pc 11892
be_else.9262: #pc 11896
	flw	%f0, 80(%x2)  #1281 pc 11896
	fsqrt	%f0, %f0  #1281 pc 11900
	flw	%f1, 56(%x2)  #1281 pc 11904
	fadd	%f0, %f1, %f0  #1281 pc 11908
	lw	%x6, 48(%x2)  #1281 pc 11912
	flw	%f1, 16(%x6)  #1281 pc 11916
	fmul	%f0, %f0, %f1  #1281 pc 11920
	lw	%x6, 0(%x2)  #1281 pc 11924
	fsw	%f0, 0(%x6)  #1281 pc 11928
be_cont.9263: #pc 11932
	addi	%x6, %x0, 1  #0 pc 11932
	ret #pc 11936
	nop #pc 11940
be_else.9257: #pc 11944
	addi	%x6, %x0, 0  #0 pc 11944
	ret #pc 11948
	nop #pc 11952
solver_fast.2816:  #pc 11956
	lw	%x9, 16(%x29)  #1290 pc 11956
	lw	%x10, 12(%x29)  #1290 pc 11960
	lw	%x11, 8(%x29)  #1290 pc 11964
	lw	%x12, 4(%x29)  #1290 pc 11968
	slli	%x13, %x6, 2  #1290 pc 11972
	add	%x31, %x13, %x12  #1290 pc 11976
	lw	%x12, 0(%x31)  #1290 pc 11980
	flw	%f0, 0(%x8)  #1291 pc 11984
	sw	%x10, 0(%x2)  #1291 pc 11988
	sw	%x9, 4(%x2)  #1291 pc 11992
	sw	%x11, 8(%x2)  #1291 pc 11996
	sw	%x6, 12(%x2)  #1291 pc 12000
	sw	%x7, 16(%x2)  #1291 pc 12004
	sw	%x12, 20(%x2)  #1291 pc 12008
	sw	%x8, 24(%x2)  #1291 pc 12012
	fsw	%f0, 32(%x2)  #1291 pc 12016
	addi	%x6, %x12, 0  #0 pc 12020
	sw	%x1, 40(%x2)  #1291 pc 12024
	addi	%x2, %x2, 44  #1291 pc 12028
	jal	%x1, o_param_x.2677  #1291 pc 12032
	addi	%x2, %x2, -44  #1291 pc 12036
	lw	%x1, 40(%x2) #1291 pc 12040
	flw	%f1, 32(%x2)  #1291 pc 12044
	fsub	%f0, %f1, %f0  #1291 pc 12048
	lw	%x6, 24(%x2)  #1292 pc 12052
	flw	%f1, 4(%x6)  #1292 pc 12056
	lw	%x7, 20(%x2)  #1292 pc 12060
	fsw	%f0, 40(%x2)  #1292 pc 12064
	fsw	%f1, 48(%x2)  #1292 pc 12068
	addi	%x6, %x7, 0  #0 pc 12072
	sw	%x1, 56(%x2)  #1292 pc 12076
	addi	%x2, %x2, 60  #1292 pc 12080
	jal	%x1, o_param_y.2679  #1292 pc 12084
	addi	%x2, %x2, -60  #1292 pc 12088
	lw	%x1, 56(%x2) #1292 pc 12092
	flw	%f1, 48(%x2)  #1292 pc 12096
	fsub	%f0, %f1, %f0  #1292 pc 12100
	lw	%x6, 24(%x2)  #1293 pc 12104
	flw	%f1, 8(%x6)  #1293 pc 12108
	lw	%x6, 20(%x2)  #1293 pc 12112
	fsw	%f0, 56(%x2)  #1293 pc 12116
	fsw	%f1, 64(%x2)  #1293 pc 12120
	sw	%x1, 72(%x2)  #1293 pc 12124
	addi	%x2, %x2, 76  #1293 pc 12128
	jal	%x1, o_param_z.2681  #1293 pc 12132
	addi	%x2, %x2, -76  #1293 pc 12136
	lw	%x1, 72(%x2) #1293 pc 12140
	flw	%f1, 64(%x2)  #1293 pc 12144
	fsub	%f0, %f1, %f0  #1293 pc 12148
	lw	%x6, 16(%x2)  #1294 pc 12152
	fsw	%f0, 72(%x2)  #1294 pc 12156
	sw	%x1, 80(%x2)  #1294 pc 12160
	addi	%x2, %x2, 84  #1294 pc 12164
	jal	%x1, d_const.2722  #1294 pc 12168
	addi	%x2, %x2, -84  #1294 pc 12172
	lw	%x1, 80(%x2) #1294 pc 12176
	lw	%x7, 12(%x2)  #1295 pc 12180
	slli	%x7, %x7, 2  #1295 pc 12184
	add	%x31, %x7, %x6  #1295 pc 12188
	lw	%x6, 0(%x31)  #1295 pc 12192
	lw	%x7, 20(%x2)  #1296 pc 12196
	sw	%x6, 80(%x2)  #1296 pc 12200
	addi	%x6, %x7, 0  #0 pc 12204
	sw	%x1, 84(%x2)  #1296 pc 12208
	addi	%x2, %x2, 88  #1296 pc 12212
	jal	%x1, o_form.2661  #1296 pc 12216
	addi	%x2, %x2, -88  #1296 pc 12220
	lw	%x1, 84(%x2) #1296 pc 12224
	addi	%x31, %x0, 1  #pc 12228
	beq	%x6, %x31, 12  #1297 pc 12232
	j	be_else.9265 #pc 12236
	nop #pc 12240
	lw	%x6, 16(%x2)  #1298 pc 12244
	sw	%x1, 84(%x2)  #1298 pc 12248
	addi	%x2, %x2, 88  #1298 pc 12252
	jal	%x1, d_vec.2720  #1298 pc 12256
	addi	%x2, %x2, -88  #1298 pc 12260
	lw	%x1, 84(%x2) #1298 pc 12264
	addi	%x7, %x6, 0  #1298 pc 12268
	flw	%f0, 40(%x2)  #1298 pc 12272
	flw	%f1, 56(%x2)  #1298 pc 12276
	flw	%f2, 72(%x2)  #1298 pc 12280
	lw	%x6, 20(%x2)  #1298 pc 12284
	lw	%x8, 80(%x2)  #1298 pc 12288
	lw	%x29, 8(%x2)  #1298 pc 12292
	lw	%x30, 0(%x29)  #1298 pc 12296
	jalr	%x0, %x30, 0  #1298 pc 12300
	nop #pc 12304
be_else.9265: #pc 12308
	addi	%x31, %x0, 2  #pc 12308
	beq	%x6, %x31, 12  #1299 pc 12312
	j	be_else.9266 #pc 12316
	nop #pc 12320
	flw	%f0, 40(%x2)  #1300 pc 12324
	flw	%f1, 56(%x2)  #1300 pc 12328
	flw	%f2, 72(%x2)  #1300 pc 12332
	lw	%x6, 20(%x2)  #1300 pc 12336
	lw	%x7, 80(%x2)  #1300 pc 12340
	lw	%x29, 4(%x2)  #1300 pc 12344
	lw	%x30, 0(%x29)  #1300 pc 12348
	jalr	%x0, %x30, 0  #1300 pc 12352
	nop #pc 12356
be_else.9266: #pc 12360
	flw	%f0, 40(%x2)  #1302 pc 12360
	flw	%f1, 56(%x2)  #1302 pc 12364
	flw	%f2, 72(%x2)  #1302 pc 12368
	lw	%x6, 20(%x2)  #1302 pc 12372
	lw	%x7, 80(%x2)  #1302 pc 12376
	lw	%x29, 0(%x2)  #1302 pc 12380
	lw	%x30, 0(%x29)  #1302 pc 12384
	jalr	%x0, %x30, 0  #1302 pc 12388
	nop #pc 12392
solver_surface_fast2.2820:  #pc 12396
	lw	%x6, 4(%x29)  #0 pc 12396
	flw	%f0, 0(%x7)  #1310 pc 12400
	sw	%x6, 0(%x2)  #1310 pc 12404
	sw	%x8, 4(%x2)  #1310 pc 12408
	sw	%x7, 8(%x2)  #1310 pc 12412
	sw	%x1, 12(%x2)  #1310 pc 12416
	addi	%x2, %x2, 16  #1310 pc 12420
	jal	%x1, fisneg.2513  #1310 pc 12424
	addi	%x2, %x2, -16  #1310 pc 12428
	lw	%x1, 12(%x2) #1310 pc 12432
	beq	%x6, %x0, 12  #1310 pc 12436
	j	be_else.9267 #pc 12440
	nop #pc 12444
	addi	%x6, %x0, 0  #0 pc 12448
	ret #pc 12452
	nop #pc 12456
be_else.9267: #pc 12460
	lw	%x6, 8(%x2)  #1311 pc 12460
	flw	%f0, 0(%x6)  #1311 pc 12464
	lw	%x6, 4(%x2)  #1311 pc 12468
	flw	%f1, 12(%x6)  #1311 pc 12472
	fmul	%f0, %f0, %f1  #1311 pc 12476
	lw	%x6, 0(%x2)  #1311 pc 12480
	fsw	%f0, 0(%x6)  #1311 pc 12484
	addi	%x6, %x0, 1  #0 pc 12488
	ret #pc 12492
	nop #pc 12496
solver_second_fast2.2827:  #pc 12500
	lw	%x9, 4(%x29)  #0 pc 12500
	flw	%f3, 0(%x7)  #1319 pc 12504
	sw	%x9, 0(%x2)  #1320 pc 12508
	sw	%x6, 4(%x2)  #1320 pc 12512
	fsw	%f3, 8(%x2)  #1320 pc 12516
	sw	%x8, 16(%x2)  #1320 pc 12520
	fsw	%f2, 24(%x2)  #1320 pc 12524
	fsw	%f1, 32(%x2)  #1320 pc 12528
	fsw	%f0, 40(%x2)  #1320 pc 12532
	sw	%x7, 48(%x2)  #1320 pc 12536
	fadd	%f0, %f3, %f30  #0 pc 12540
	sw	%x1, 52(%x2)  #1320 pc 12544
	addi	%x2, %x2, 56  #1320 pc 12548
	jal	%x1, fiszero.2509  #1320 pc 12552
	addi	%x2, %x2, -56  #1320 pc 12556
	lw	%x1, 52(%x2) #1320 pc 12560
	beq	%x6, %x0, 12  #1320 pc 12564
	j	be_else.9269 #pc 12568
	nop #pc 12572
	lw	%x6, 48(%x2)  #1323 pc 12576
	flw	%f0, 4(%x6)  #1323 pc 12580
	flw	%f1, 40(%x2)  #1323 pc 12584
	fmul	%f0, %f0, %f1  #1323 pc 12588
	flw	%f1, 8(%x6)  #1323 pc 12592
	flw	%f2, 32(%x2)  #1323 pc 12596
	fmul	%f1, %f1, %f2  #1323 pc 12600
	fadd	%f0, %f0, %f1  #1323 pc 12604
	flw	%f1, 12(%x6)  #1323 pc 12608
	flw	%f2, 24(%x2)  #1323 pc 12612
	fmul	%f1, %f1, %f2  #1323 pc 12616
	fadd	%f0, %f0, %f1  #1323 pc 12620
	lw	%x7, 16(%x2)  #1324 pc 12624
	flw	%f1, 12(%x7)  #1324 pc 12628
	fsw	%f0, 56(%x2)  #1325 pc 12632
	fsw	%f1, 64(%x2)  #1325 pc 12636
	sw	%x1, 72(%x2)  #1325 pc 12640
	addi	%x2, %x2, 76  #1325 pc 12644
	jal	%x1, fsqr.2517  #1325 pc 12648
	addi	%x2, %x2, -76  #1325 pc 12652
	lw	%x1, 72(%x2) #1325 pc 12656
	flw	%f1, 64(%x2)  #1325 pc 12660
	flw	%f2, 8(%x2)  #1325 pc 12664
	fmul	%f1, %f2, %f1  #1325 pc 12668
	fsub	%f0, %f0, %f1  #1325 pc 12672
	fsw	%f0, 72(%x2)  #1326 pc 12676
	sw	%x1, 80(%x2)  #1326 pc 12680
	addi	%x2, %x2, 84  #1326 pc 12684
	jal	%x1, fispos.2511  #1326 pc 12688
	addi	%x2, %x2, -84  #1326 pc 12692
	lw	%x1, 80(%x2) #1326 pc 12696
	beq	%x6, %x0, 12  #1326 pc 12700
	j	be_else.9271 #pc 12704
	nop #pc 12708
	addi	%x6, %x0, 0  #0 pc 12712
	ret #pc 12716
	nop #pc 12720
be_else.9271: #pc 12724
	lw	%x6, 4(%x2)  #1327 pc 12724
	sw	%x1, 80(%x2)  #1327 pc 12728
	addi	%x2, %x2, 84  #1327 pc 12732
	jal	%x1, o_isinvert.2665  #1327 pc 12736
	addi	%x2, %x2, -84  #1327 pc 12740
	lw	%x1, 80(%x2) #1327 pc 12744
	beq	%x6, %x0, 12  #1327 pc 12748
	j	be_else.9272 #pc 12752
	nop #pc 12756
	flw	%f0, 72(%x2)  #1330 pc 12760
	fsqrt	%f0, %f0  #1330 pc 12764
	flw	%f1, 56(%x2)  #1330 pc 12768
	fsub	%f0, %f1, %f0  #1330 pc 12772
	lw	%x6, 48(%x2)  #1330 pc 12776
	flw	%f1, 16(%x6)  #1330 pc 12780
	fmul	%f0, %f0, %f1  #1330 pc 12784
	lw	%x6, 0(%x2)  #1330 pc 12788
	fsw	%f0, 0(%x6)  #1330 pc 12792
	j	be_cont.9273 #pc 12796
	nop #pc 12800
be_else.9272: #pc 12804
	flw	%f0, 72(%x2)  #1328 pc 12804
	fsqrt	%f0, %f0  #1328 pc 12808
	flw	%f1, 56(%x2)  #1328 pc 12812
	fadd	%f0, %f1, %f0  #1328 pc 12816
	lw	%x6, 48(%x2)  #1328 pc 12820
	flw	%f1, 16(%x6)  #1328 pc 12824
	fmul	%f0, %f0, %f1  #1328 pc 12828
	lw	%x6, 0(%x2)  #1328 pc 12832
	fsw	%f0, 0(%x6)  #1328 pc 12836
be_cont.9273: #pc 12840
	addi	%x6, %x0, 1  #0 pc 12840
	ret #pc 12844
	nop #pc 12848
be_else.9269: #pc 12852
	addi	%x6, %x0, 0  #0 pc 12852
	ret #pc 12856
	nop #pc 12860
solver_fast2.2834:  #pc 12864
	lw	%x8, 16(%x29)  #1337 pc 12864
	lw	%x9, 12(%x29)  #1337 pc 12868
	lw	%x10, 8(%x29)  #1337 pc 12872
	lw	%x11, 4(%x29)  #1337 pc 12876
	slli	%x12, %x6, 2  #1337 pc 12880
	add	%x31, %x12, %x11  #1337 pc 12884
	lw	%x11, 0(%x31)  #1337 pc 12888
	sw	%x9, 0(%x2)  #1338 pc 12892
	sw	%x8, 4(%x2)  #1338 pc 12896
	sw	%x10, 8(%x2)  #1338 pc 12900
	sw	%x11, 12(%x2)  #1338 pc 12904
	sw	%x6, 16(%x2)  #1338 pc 12908
	sw	%x7, 20(%x2)  #1338 pc 12912
	addi	%x6, %x11, 0  #0 pc 12916
	sw	%x1, 24(%x2)  #1338 pc 12920
	addi	%x2, %x2, 28  #1338 pc 12924
	jal	%x1, o_param_ctbl.2699  #1338 pc 12928
	addi	%x2, %x2, -28  #1338 pc 12932
	lw	%x1, 24(%x2) #1338 pc 12936
	flw	%f0, 0(%x6)  #1339 pc 12940
	flw	%f1, 4(%x6)  #1340 pc 12944
	flw	%f2, 8(%x6)  #1341 pc 12948
	lw	%x7, 20(%x2)  #1342 pc 12952
	sw	%x6, 24(%x2)  #1342 pc 12956
	fsw	%f2, 32(%x2)  #1342 pc 12960
	fsw	%f1, 40(%x2)  #1342 pc 12964
	fsw	%f0, 48(%x2)  #1342 pc 12968
	addi	%x6, %x7, 0  #0 pc 12972
	sw	%x1, 56(%x2)  #1342 pc 12976
	addi	%x2, %x2, 60  #1342 pc 12980
	jal	%x1, d_const.2722  #1342 pc 12984
	addi	%x2, %x2, -60  #1342 pc 12988
	lw	%x1, 56(%x2) #1342 pc 12992
	lw	%x7, 16(%x2)  #1343 pc 12996
	slli	%x7, %x7, 2  #1343 pc 13000
	add	%x31, %x7, %x6  #1343 pc 13004
	lw	%x6, 0(%x31)  #1343 pc 13008
	lw	%x7, 12(%x2)  #1344 pc 13012
	sw	%x6, 56(%x2)  #1344 pc 13016
	addi	%x6, %x7, 0  #0 pc 13020
	sw	%x1, 60(%x2)  #1344 pc 13024
	addi	%x2, %x2, 64  #1344 pc 13028
	jal	%x1, o_form.2661  #1344 pc 13032
	addi	%x2, %x2, -64  #1344 pc 13036
	lw	%x1, 60(%x2) #1344 pc 13040
	addi	%x31, %x0, 1  #pc 13044
	beq	%x6, %x31, 12  #1345 pc 13048
	j	be_else.9275 #pc 13052
	nop #pc 13056
	lw	%x6, 20(%x2)  #1346 pc 13060
	sw	%x1, 60(%x2)  #1346 pc 13064
	addi	%x2, %x2, 64  #1346 pc 13068
	jal	%x1, d_vec.2720  #1346 pc 13072
	addi	%x2, %x2, -64  #1346 pc 13076
	lw	%x1, 60(%x2) #1346 pc 13080
	addi	%x7, %x6, 0  #1346 pc 13084
	flw	%f0, 48(%x2)  #1346 pc 13088
	flw	%f1, 40(%x2)  #1346 pc 13092
	flw	%f2, 32(%x2)  #1346 pc 13096
	lw	%x6, 12(%x2)  #1346 pc 13100
	lw	%x8, 56(%x2)  #1346 pc 13104
	lw	%x29, 8(%x2)  #1346 pc 13108
	lw	%x30, 0(%x29)  #1346 pc 13112
	jalr	%x0, %x30, 0  #1346 pc 13116
	nop #pc 13120
be_else.9275: #pc 13124
	addi	%x31, %x0, 2  #pc 13124
	beq	%x6, %x31, 12  #1347 pc 13128
	j	be_else.9276 #pc 13132
	nop #pc 13136
	flw	%f0, 48(%x2)  #1348 pc 13140
	flw	%f1, 40(%x2)  #1348 pc 13144
	flw	%f2, 32(%x2)  #1348 pc 13148
	lw	%x6, 12(%x2)  #1348 pc 13152
	lw	%x7, 56(%x2)  #1348 pc 13156
	lw	%x8, 24(%x2)  #1348 pc 13160
	lw	%x29, 4(%x2)  #1348 pc 13164
	lw	%x30, 0(%x29)  #1348 pc 13168
	jalr	%x0, %x30, 0  #1348 pc 13172
	nop #pc 13176
be_else.9276: #pc 13180
	flw	%f0, 48(%x2)  #1350 pc 13180
	flw	%f1, 40(%x2)  #1350 pc 13184
	flw	%f2, 32(%x2)  #1350 pc 13188
	lw	%x6, 12(%x2)  #1350 pc 13192
	lw	%x7, 56(%x2)  #1350 pc 13196
	lw	%x8, 24(%x2)  #1350 pc 13200
	lw	%x29, 0(%x2)  #1350 pc 13204
	lw	%x30, 0(%x29)  #1350 pc 13208
	jalr	%x0, %x30, 0  #1350 pc 13212
	nop #pc 13216
setup_rect_table.2837:  #pc 13220
	addi	%x8, %x0, 6  #0 pc 13220
	fmv	%f0, l.6244  #0 pc 13224
	sw	%x7, 0(%x2)  #1359 pc 13228
	sw	%x6, 4(%x2)  #1359 pc 13232
	addi	%x6, %x8, 0  #0 pc 13236
	sw	%x1, 8(%x2)  #1359 pc 13240
	addi	%x2, %x2, 12  #1359 pc 13244
	jal	%x1, create_float_array.2577  #1359 pc 13248
	addi	%x2, %x2, -12  #1359 pc 13252
	lw	%x1, 8(%x2) #1359 pc 13256
	lw	%x7, 4(%x2)  #1361 pc 13260
	flw	%f0, 0(%x7)  #1361 pc 13264
	sw	%x6, 8(%x2)  #1361 pc 13268
	sw	%x1, 12(%x2)  #1361 pc 13272
	addi	%x2, %x2, 16  #1361 pc 13276
	jal	%x1, fiszero.2509  #1361 pc 13280
	addi	%x2, %x2, -16  #1361 pc 13284
	lw	%x1, 12(%x2) #1361 pc 13288
	beq	%x6, %x0, 12  #1361 pc 13292
	j	be_else.9277 #pc 13296
	nop #pc 13300
	lw	%x6, 0(%x2)  #1365 pc 13304
	sw	%x1, 12(%x2)  #1365 pc 13308
	addi	%x2, %x2, 16  #1365 pc 13312
	jal	%x1, o_isinvert.2665  #1365 pc 13316
	addi	%x2, %x2, -16  #1365 pc 13320
	lw	%x1, 12(%x2) #1365 pc 13324
	lw	%x7, 4(%x2)  #1365 pc 13328
	flw	%f0, 0(%x7)  #1365 pc 13332
	sw	%x6, 12(%x2)  #1365 pc 13336
	sw	%x1, 16(%x2)  #1365 pc 13340
	addi	%x2, %x2, 20  #1365 pc 13344
	jal	%x1, fisneg.2513  #1365 pc 13348
	addi	%x2, %x2, -20  #1365 pc 13352
	lw	%x1, 16(%x2) #1365 pc 13356
	addi	%x7, %x6, 0  #1365 pc 13360
	lw	%x6, 12(%x2)  #1365 pc 13364
	sw	%x1, 16(%x2)  #1365 pc 13368
	addi	%x2, %x2, 20  #1365 pc 13372
	jal	%x1, xor.2610  #1365 pc 13376
	addi	%x2, %x2, -20  #1365 pc 13380
	lw	%x1, 16(%x2) #1365 pc 13384
	lw	%x7, 0(%x2)  #1365 pc 13388
	sw	%x6, 16(%x2)  #1365 pc 13392
	addi	%x6, %x7, 0  #0 pc 13396
	sw	%x1, 20(%x2)  #1365 pc 13400
	addi	%x2, %x2, 24  #1365 pc 13404
	jal	%x1, o_param_a.2669  #1365 pc 13408
	addi	%x2, %x2, -24  #1365 pc 13412
	lw	%x1, 20(%x2) #1365 pc 13416
	lw	%x6, 16(%x2)  #1365 pc 13420
	sw	%x1, 20(%x2)  #1365 pc 13424
	addi	%x2, %x2, 24  #1365 pc 13428
	jal	%x1, fneg_cond.2615  #1365 pc 13432
	addi	%x2, %x2, -24  #1365 pc 13436
	lw	%x1, 20(%x2) #1365 pc 13440
	lw	%x6, 8(%x2)  #1365 pc 13444
	fsw	%f0, 0(%x6)  #1365 pc 13448
	fmv	%f0, l.6263  #0 pc 13452
	lw	%x7, 4(%x2)  #1367 pc 13456
	flw	%f1, 0(%x7)  #1367 pc 13460
	fdiv	%f0, %f0, %f1  #1367 pc 13464
	fsw	%f0, 4(%x6)  #1367 pc 13468
	j	be_cont.9278 #pc 13472
	nop #pc 13476
be_else.9277: #pc 13480
	fmv	%f0, l.6244  #0 pc 13480
	lw	%x6, 8(%x2)  #1362 pc 13484
	fsw	%f0, 4(%x6)  #1362 pc 13488
be_cont.9278: #pc 13492
	lw	%x7, 4(%x2)  #1369 pc 13492
	flw	%f0, 4(%x7)  #1369 pc 13496
	sw	%x1, 20(%x2)  #1369 pc 13500
	addi	%x2, %x2, 24  #1369 pc 13504
	jal	%x1, fiszero.2509  #1369 pc 13508
	addi	%x2, %x2, -24  #1369 pc 13512
	lw	%x1, 20(%x2) #1369 pc 13516
	beq	%x6, %x0, 12  #1369 pc 13520
	j	be_else.9279 #pc 13524
	nop #pc 13528
	lw	%x6, 0(%x2)  #1372 pc 13532
	sw	%x1, 20(%x2)  #1372 pc 13536
	addi	%x2, %x2, 24  #1372 pc 13540
	jal	%x1, o_isinvert.2665  #1372 pc 13544
	addi	%x2, %x2, -24  #1372 pc 13548
	lw	%x1, 20(%x2) #1372 pc 13552
	lw	%x7, 4(%x2)  #1372 pc 13556
	flw	%f0, 4(%x7)  #1372 pc 13560
	sw	%x6, 20(%x2)  #1372 pc 13564
	sw	%x1, 24(%x2)  #1372 pc 13568
	addi	%x2, %x2, 28  #1372 pc 13572
	jal	%x1, fisneg.2513  #1372 pc 13576
	addi	%x2, %x2, -28  #1372 pc 13580
	lw	%x1, 24(%x2) #1372 pc 13584
	addi	%x7, %x6, 0  #1372 pc 13588
	lw	%x6, 20(%x2)  #1372 pc 13592
	sw	%x1, 24(%x2)  #1372 pc 13596
	addi	%x2, %x2, 28  #1372 pc 13600
	jal	%x1, xor.2610  #1372 pc 13604
	addi	%x2, %x2, -28  #1372 pc 13608
	lw	%x1, 24(%x2) #1372 pc 13612
	lw	%x7, 0(%x2)  #1372 pc 13616
	sw	%x6, 24(%x2)  #1372 pc 13620
	addi	%x6, %x7, 0  #0 pc 13624
	sw	%x1, 28(%x2)  #1372 pc 13628
	addi	%x2, %x2, 32  #1372 pc 13632
	jal	%x1, o_param_b.2671  #1372 pc 13636
	addi	%x2, %x2, -32  #1372 pc 13640
	lw	%x1, 28(%x2) #1372 pc 13644
	lw	%x6, 24(%x2)  #1372 pc 13648
	sw	%x1, 28(%x2)  #1372 pc 13652
	addi	%x2, %x2, 32  #1372 pc 13656
	jal	%x1, fneg_cond.2615  #1372 pc 13660
	addi	%x2, %x2, -32  #1372 pc 13664
	lw	%x1, 28(%x2) #1372 pc 13668
	lw	%x6, 8(%x2)  #1372 pc 13672
	fsw	%f0, 8(%x6)  #1372 pc 13676
	fmv	%f0, l.6263  #0 pc 13680
	lw	%x7, 4(%x2)  #1373 pc 13684
	flw	%f1, 4(%x7)  #1373 pc 13688
	fdiv	%f0, %f0, %f1  #1373 pc 13692
	fsw	%f0, 12(%x6)  #1373 pc 13696
	j	be_cont.9280 #pc 13700
	nop #pc 13704
be_else.9279: #pc 13708
	fmv	%f0, l.6244  #0 pc 13708
	lw	%x6, 8(%x2)  #1370 pc 13712
	fsw	%f0, 12(%x6)  #1370 pc 13716
be_cont.9280: #pc 13720
	lw	%x7, 4(%x2)  #1375 pc 13720
	flw	%f0, 8(%x7)  #1375 pc 13724
	sw	%x1, 28(%x2)  #1375 pc 13728
	addi	%x2, %x2, 32  #1375 pc 13732
	jal	%x1, fiszero.2509  #1375 pc 13736
	addi	%x2, %x2, -32  #1375 pc 13740
	lw	%x1, 28(%x2) #1375 pc 13744
	beq	%x6, %x0, 12  #1375 pc 13748
	j	be_else.9281 #pc 13752
	nop #pc 13756
	lw	%x6, 0(%x2)  #1378 pc 13760
	sw	%x1, 28(%x2)  #1378 pc 13764
	addi	%x2, %x2, 32  #1378 pc 13768
	jal	%x1, o_isinvert.2665  #1378 pc 13772
	addi	%x2, %x2, -32  #1378 pc 13776
	lw	%x1, 28(%x2) #1378 pc 13780
	lw	%x7, 4(%x2)  #1378 pc 13784
	flw	%f0, 8(%x7)  #1378 pc 13788
	sw	%x6, 28(%x2)  #1378 pc 13792
	sw	%x1, 32(%x2)  #1378 pc 13796
	addi	%x2, %x2, 36  #1378 pc 13800
	jal	%x1, fisneg.2513  #1378 pc 13804
	addi	%x2, %x2, -36  #1378 pc 13808
	lw	%x1, 32(%x2) #1378 pc 13812
	addi	%x7, %x6, 0  #1378 pc 13816
	lw	%x6, 28(%x2)  #1378 pc 13820
	sw	%x1, 32(%x2)  #1378 pc 13824
	addi	%x2, %x2, 36  #1378 pc 13828
	jal	%x1, xor.2610  #1378 pc 13832
	addi	%x2, %x2, -36  #1378 pc 13836
	lw	%x1, 32(%x2) #1378 pc 13840
	lw	%x7, 0(%x2)  #1378 pc 13844
	sw	%x6, 32(%x2)  #1378 pc 13848
	addi	%x6, %x7, 0  #0 pc 13852
	sw	%x1, 36(%x2)  #1378 pc 13856
	addi	%x2, %x2, 40  #1378 pc 13860
	jal	%x1, o_param_c.2673  #1378 pc 13864
	addi	%x2, %x2, -40  #1378 pc 13868
	lw	%x1, 36(%x2) #1378 pc 13872
	lw	%x6, 32(%x2)  #1378 pc 13876
	sw	%x1, 36(%x2)  #1378 pc 13880
	addi	%x2, %x2, 40  #1378 pc 13884
	jal	%x1, fneg_cond.2615  #1378 pc 13888
	addi	%x2, %x2, -40  #1378 pc 13892
	lw	%x1, 36(%x2) #1378 pc 13896
	lw	%x6, 8(%x2)  #1378 pc 13900
	fsw	%f0, 16(%x6)  #1378 pc 13904
	fmv	%f0, l.6263  #0 pc 13908
	lw	%x7, 4(%x2)  #1379 pc 13912
	flw	%f1, 8(%x7)  #1379 pc 13916
	fdiv	%f0, %f0, %f1  #1379 pc 13920
	fsw	%f0, 20(%x6)  #1379 pc 13924
	j	be_cont.9282 #pc 13928
	nop #pc 13932
be_else.9281: #pc 13936
	fmv	%f0, l.6244  #0 pc 13936
	lw	%x6, 8(%x2)  #1376 pc 13940
	fsw	%f0, 20(%x6)  #1376 pc 13944
be_cont.9282: #pc 13948
	ret #pc 13948
	nop #pc 13952
setup_surface_table.2840:  #pc 13956
	addi	%x8, %x0, 4  #0 pc 13956
	fmv	%f0, l.6244  #0 pc 13960
	sw	%x7, 0(%x2)  #1386 pc 13964
	sw	%x6, 4(%x2)  #1386 pc 13968
	addi	%x6, %x8, 0  #0 pc 13972
	sw	%x1, 8(%x2)  #1386 pc 13976
	addi	%x2, %x2, 12  #1386 pc 13980
	jal	%x1, create_float_array.2577  #1386 pc 13984
	addi	%x2, %x2, -12  #1386 pc 13988
	lw	%x1, 8(%x2) #1386 pc 13992
	lw	%x7, 4(%x2)  #1388 pc 13996
	flw	%f0, 0(%x7)  #1388 pc 14000
	lw	%x8, 0(%x2)  #1388 pc 14004
	sw	%x6, 8(%x2)  #1388 pc 14008
	fsw	%f0, 16(%x2)  #1388 pc 14012
	addi	%x6, %x8, 0  #0 pc 14016
	sw	%x1, 24(%x2)  #1388 pc 14020
	addi	%x2, %x2, 28  #1388 pc 14024
	jal	%x1, o_param_a.2669  #1388 pc 14028
	addi	%x2, %x2, -28  #1388 pc 14032
	lw	%x1, 24(%x2) #1388 pc 14036
	flw	%f1, 16(%x2)  #1388 pc 14040
	fmul	%f0, %f1, %f0  #1388 pc 14044
	lw	%x6, 4(%x2)  #1388 pc 14048
	flw	%f1, 4(%x6)  #1388 pc 14052
	lw	%x7, 0(%x2)  #1388 pc 14056
	fsw	%f0, 24(%x2)  #1388 pc 14060
	fsw	%f1, 32(%x2)  #1388 pc 14064
	addi	%x6, %x7, 0  #0 pc 14068
	sw	%x1, 40(%x2)  #1388 pc 14072
	addi	%x2, %x2, 44  #1388 pc 14076
	jal	%x1, o_param_b.2671  #1388 pc 14080
	addi	%x2, %x2, -44  #1388 pc 14084
	lw	%x1, 40(%x2) #1388 pc 14088
	flw	%f1, 32(%x2)  #1388 pc 14092
	fmul	%f0, %f1, %f0  #1388 pc 14096
	flw	%f1, 24(%x2)  #1388 pc 14100
	fadd	%f0, %f1, %f0  #1388 pc 14104
	lw	%x6, 4(%x2)  #1388 pc 14108
	flw	%f1, 8(%x6)  #1388 pc 14112
	lw	%x6, 0(%x2)  #1388 pc 14116
	fsw	%f0, 40(%x2)  #1388 pc 14120
	fsw	%f1, 48(%x2)  #1388 pc 14124
	sw	%x1, 56(%x2)  #1388 pc 14128
	addi	%x2, %x2, 60  #1388 pc 14132
	jal	%x1, o_param_c.2673  #1388 pc 14136
	addi	%x2, %x2, -60  #1388 pc 14140
	lw	%x1, 56(%x2) #1388 pc 14144
	flw	%f1, 48(%x2)  #1388 pc 14148
	fmul	%f0, %f1, %f0  #1388 pc 14152
	flw	%f1, 40(%x2)  #1388 pc 14156
	fadd	%f0, %f1, %f0  #1388 pc 14160
	fsw	%f0, 56(%x2)  #1390 pc 14164
	sw	%x1, 64(%x2)  #1390 pc 14168
	addi	%x2, %x2, 68  #1390 pc 14172
	jal	%x1, fispos.2511  #1390 pc 14176
	addi	%x2, %x2, -68  #1390 pc 14180
	lw	%x1, 64(%x2) #1390 pc 14184
	beq	%x6, %x0, 12  #1390 pc 14188
	j	be_else.9284 #pc 14192
	nop #pc 14196
	fmv	%f0, l.6244  #0 pc 14200
	lw	%x6, 8(%x2)  #1398 pc 14204
	fsw	%f0, 0(%x6)  #1398 pc 14208
	j	be_cont.9285 #pc 14212
	nop #pc 14216
be_else.9284: #pc 14220
	fmv	%f0, l.6292  #0 pc 14220
	flw	%f1, 56(%x2)  #1392 pc 14224
	fdiv	%f0, %f0, %f1  #1392 pc 14228
	lw	%x6, 8(%x2)  #1392 pc 14232
	fsw	%f0, 0(%x6)  #1392 pc 14236
	lw	%x7, 0(%x2)  #1394 pc 14240
	addi	%x6, %x7, 0  #0 pc 14244
	sw	%x1, 64(%x2)  #1394 pc 14248
	addi	%x2, %x2, 68  #1394 pc 14252
	jal	%x1, o_param_a.2669  #1394 pc 14256
	addi	%x2, %x2, -68  #1394 pc 14260
	lw	%x1, 64(%x2) #1394 pc 14264
	flw	%f1, 56(%x2)  #1394 pc 14268
	fdiv	%f0, %f0, %f1  #1394 pc 14272
	sw	%x1, 64(%x2)  #1394 pc 14276
	addi	%x2, %x2, 68  #1394 pc 14280
	jal	%x1, fneg.2515  #1394 pc 14284
	addi	%x2, %x2, -68  #1394 pc 14288
	lw	%x1, 64(%x2) #1394 pc 14292
	lw	%x6, 8(%x2)  #1394 pc 14296
	fsw	%f0, 4(%x6)  #1394 pc 14300
	lw	%x7, 0(%x2)  #1395 pc 14304
	addi	%x6, %x7, 0  #0 pc 14308
	sw	%x1, 64(%x2)  #1395 pc 14312
	addi	%x2, %x2, 68  #1395 pc 14316
	jal	%x1, o_param_b.2671  #1395 pc 14320
	addi	%x2, %x2, -68  #1395 pc 14324
	lw	%x1, 64(%x2) #1395 pc 14328
	flw	%f1, 56(%x2)  #1395 pc 14332
	fdiv	%f0, %f0, %f1  #1395 pc 14336
	sw	%x1, 64(%x2)  #1395 pc 14340
	addi	%x2, %x2, 68  #1395 pc 14344
	jal	%x1, fneg.2515  #1395 pc 14348
	addi	%x2, %x2, -68  #1395 pc 14352
	lw	%x1, 64(%x2) #1395 pc 14356
	lw	%x6, 8(%x2)  #1395 pc 14360
	fsw	%f0, 8(%x6)  #1395 pc 14364
	lw	%x7, 0(%x2)  #1396 pc 14368
	addi	%x6, %x7, 0  #0 pc 14372
	sw	%x1, 64(%x2)  #1396 pc 14376
	addi	%x2, %x2, 68  #1396 pc 14380
	jal	%x1, o_param_c.2673  #1396 pc 14384
	addi	%x2, %x2, -68  #1396 pc 14388
	lw	%x1, 64(%x2) #1396 pc 14392
	flw	%f1, 56(%x2)  #1396 pc 14396
	fdiv	%f0, %f0, %f1  #1396 pc 14400
	sw	%x1, 64(%x2)  #1396 pc 14404
	addi	%x2, %x2, 68  #1396 pc 14408
	jal	%x1, fneg.2515  #1396 pc 14412
	addi	%x2, %x2, -68  #1396 pc 14416
	lw	%x1, 64(%x2) #1396 pc 14420
	lw	%x6, 8(%x2)  #1396 pc 14424
	fsw	%f0, 12(%x6)  #1396 pc 14428
be_cont.9285: #pc 14432
	ret #pc 14432
	nop #pc 14436
setup_second_table.2843:  #pc 14440
	addi	%x8, %x0, 5  #0 pc 14440
	fmv	%f0, l.6244  #0 pc 14444
	sw	%x7, 0(%x2)  #1405 pc 14448
	sw	%x6, 4(%x2)  #1405 pc 14452
	addi	%x6, %x8, 0  #0 pc 14456
	sw	%x1, 8(%x2)  #1405 pc 14460
	addi	%x2, %x2, 12  #1405 pc 14464
	jal	%x1, create_float_array.2577  #1405 pc 14468
	addi	%x2, %x2, -12  #1405 pc 14472
	lw	%x1, 8(%x2) #1405 pc 14476
	lw	%x7, 4(%x2)  #1407 pc 14480
	flw	%f0, 0(%x7)  #1407 pc 14484
	flw	%f1, 4(%x7)  #1407 pc 14488
	flw	%f2, 8(%x7)  #1407 pc 14492
	lw	%x8, 0(%x2)  #1407 pc 14496
	sw	%x6, 8(%x2)  #1407 pc 14500
	addi	%x6, %x8, 0  #0 pc 14504
	sw	%x1, 12(%x2)  #1407 pc 14508
	addi	%x2, %x2, 16  #1407 pc 14512
	jal	%x1, quadratic.2774  #1407 pc 14516
	addi	%x2, %x2, -16  #1407 pc 14520
	lw	%x1, 12(%x2) #1407 pc 14524
	lw	%x6, 4(%x2)  #1408 pc 14528
	flw	%f1, 0(%x6)  #1408 pc 14532
	lw	%x7, 0(%x2)  #1408 pc 14536
	fsw	%f0, 16(%x2)  #1408 pc 14540
	fsw	%f1, 24(%x2)  #1408 pc 14544
	addi	%x6, %x7, 0  #0 pc 14548
	sw	%x1, 32(%x2)  #1408 pc 14552
	addi	%x2, %x2, 36  #1408 pc 14556
	jal	%x1, o_param_a.2669  #1408 pc 14560
	addi	%x2, %x2, -36  #1408 pc 14564
	lw	%x1, 32(%x2) #1408 pc 14568
	flw	%f1, 24(%x2)  #1408 pc 14572
	fmul	%f0, %f1, %f0  #1408 pc 14576
	sw	%x1, 32(%x2)  #1408 pc 14580
	addi	%x2, %x2, 36  #1408 pc 14584
	jal	%x1, fneg.2515  #1408 pc 14588
	addi	%x2, %x2, -36  #1408 pc 14592
	lw	%x1, 32(%x2) #1408 pc 14596
	lw	%x6, 4(%x2)  #1409 pc 14600
	flw	%f1, 4(%x6)  #1409 pc 14604
	lw	%x7, 0(%x2)  #1409 pc 14608
	fsw	%f0, 32(%x2)  #1409 pc 14612
	fsw	%f1, 40(%x2)  #1409 pc 14616
	addi	%x6, %x7, 0  #0 pc 14620
	sw	%x1, 48(%x2)  #1409 pc 14624
	addi	%x2, %x2, 52  #1409 pc 14628
	jal	%x1, o_param_b.2671  #1409 pc 14632
	addi	%x2, %x2, -52  #1409 pc 14636
	lw	%x1, 48(%x2) #1409 pc 14640
	flw	%f1, 40(%x2)  #1409 pc 14644
	fmul	%f0, %f1, %f0  #1409 pc 14648
	sw	%x1, 48(%x2)  #1409 pc 14652
	addi	%x2, %x2, 52  #1409 pc 14656
	jal	%x1, fneg.2515  #1409 pc 14660
	addi	%x2, %x2, -52  #1409 pc 14664
	lw	%x1, 48(%x2) #1409 pc 14668
	lw	%x6, 4(%x2)  #1410 pc 14672
	flw	%f1, 8(%x6)  #1410 pc 14676
	lw	%x7, 0(%x2)  #1410 pc 14680
	fsw	%f0, 48(%x2)  #1410 pc 14684
	fsw	%f1, 56(%x2)  #1410 pc 14688
	addi	%x6, %x7, 0  #0 pc 14692
	sw	%x1, 64(%x2)  #1410 pc 14696
	addi	%x2, %x2, 68  #1410 pc 14700
	jal	%x1, o_param_c.2673  #1410 pc 14704
	addi	%x2, %x2, -68  #1410 pc 14708
	lw	%x1, 64(%x2) #1410 pc 14712
	flw	%f1, 56(%x2)  #1410 pc 14716
	fmul	%f0, %f1, %f0  #1410 pc 14720
	sw	%x1, 64(%x2)  #1410 pc 14724
	addi	%x2, %x2, 68  #1410 pc 14728
	jal	%x1, fneg.2515  #1410 pc 14732
	addi	%x2, %x2, -68  #1410 pc 14736
	lw	%x1, 64(%x2) #1410 pc 14740
	lw	%x6, 8(%x2)  #1412 pc 14744
	flw	%f1, 16(%x2)  #1412 pc 14748
	fsw	%f1, 0(%x6)  #1412 pc 14752
	lw	%x7, 0(%x2)  #1416 pc 14756
	fsw	%f0, 64(%x2)  #1416 pc 14760
	addi	%x6, %x7, 0  #0 pc 14764
	sw	%x1, 72(%x2)  #1416 pc 14768
	addi	%x2, %x2, 76  #1416 pc 14772
	jal	%x1, o_isrot.2667  #1416 pc 14776
	addi	%x2, %x2, -76  #1416 pc 14780
	lw	%x1, 72(%x2) #1416 pc 14784
	beq	%x6, %x0, 12  #1416 pc 14788
	j	be_else.9287 #pc 14792
	nop #pc 14796
	lw	%x6, 8(%x2)  #1421 pc 14800
	flw	%f0, 32(%x2)  #1421 pc 14804
	fsw	%f0, 4(%x6)  #1421 pc 14808
	flw	%f0, 48(%x2)  #1422 pc 14812
	fsw	%f0, 8(%x6)  #1422 pc 14816
	flw	%f0, 64(%x2)  #1423 pc 14820
	fsw	%f0, 12(%x6)  #1423 pc 14824
	j	be_cont.9288 #pc 14828
	nop #pc 14832
be_else.9287: #pc 14836
	lw	%x6, 4(%x2)  #1417 pc 14836
	flw	%f0, 8(%x6)  #1417 pc 14840
	lw	%x7, 0(%x2)  #1417 pc 14844
	fsw	%f0, 72(%x2)  #1417 pc 14848
	addi	%x6, %x7, 0  #0 pc 14852
	sw	%x1, 80(%x2)  #1417 pc 14856
	addi	%x2, %x2, 84  #1417 pc 14860
	jal	%x1, o_param_r2.2695  #1417 pc 14864
	addi	%x2, %x2, -84  #1417 pc 14868
	lw	%x1, 80(%x2) #1417 pc 14872
	flw	%f1, 72(%x2)  #1417 pc 14876
	fmul	%f0, %f1, %f0  #1417 pc 14880
	lw	%x6, 4(%x2)  #1417 pc 14884
	flw	%f1, 4(%x6)  #1417 pc 14888
	lw	%x7, 0(%x2)  #1417 pc 14892
	fsw	%f0, 80(%x2)  #1417 pc 14896
	fsw	%f1, 88(%x2)  #1417 pc 14900
	addi	%x6, %x7, 0  #0 pc 14904
	sw	%x1, 96(%x2)  #1417 pc 14908
	addi	%x2, %x2, 100  #1417 pc 14912
	jal	%x1, o_param_r3.2697  #1417 pc 14916
	addi	%x2, %x2, -100  #1417 pc 14920
	lw	%x1, 96(%x2) #1417 pc 14924
	flw	%f1, 88(%x2)  #1417 pc 14928
	fmul	%f0, %f1, %f0  #1417 pc 14932
	flw	%f1, 80(%x2)  #1417 pc 14936
	fadd	%f0, %f1, %f0  #1417 pc 14940
	sw	%x1, 96(%x2)  #1417 pc 14944
	addi	%x2, %x2, 100  #1417 pc 14948
	jal	%x1, fhalf.2519  #1417 pc 14952
	addi	%x2, %x2, -100  #1417 pc 14956
	lw	%x1, 96(%x2) #1417 pc 14960
	flw	%f1, 32(%x2)  #1417 pc 14964
	fsub	%f0, %f1, %f0  #1417 pc 14968
	lw	%x6, 8(%x2)  #1417 pc 14972
	fsw	%f0, 4(%x6)  #1417 pc 14976
	lw	%x7, 4(%x2)  #1418 pc 14980
	flw	%f0, 8(%x7)  #1418 pc 14984
	lw	%x8, 0(%x2)  #1418 pc 14988
	fsw	%f0, 96(%x2)  #1418 pc 14992
	addi	%x6, %x8, 0  #0 pc 14996
	sw	%x1, 104(%x2)  #1418 pc 15000
	addi	%x2, %x2, 108  #1418 pc 15004
	jal	%x1, o_param_r1.2693  #1418 pc 15008
	addi	%x2, %x2, -108  #1418 pc 15012
	lw	%x1, 104(%x2) #1418 pc 15016
	flw	%f1, 96(%x2)  #1418 pc 15020
	fmul	%f0, %f1, %f0  #1418 pc 15024
	lw	%x6, 4(%x2)  #1418 pc 15028
	flw	%f1, 0(%x6)  #1418 pc 15032
	lw	%x7, 0(%x2)  #1418 pc 15036
	fsw	%f0, 104(%x2)  #1418 pc 15040
	fsw	%f1, 112(%x2)  #1418 pc 15044
	addi	%x6, %x7, 0  #0 pc 15048
	sw	%x1, 120(%x2)  #1418 pc 15052
	addi	%x2, %x2, 124  #1418 pc 15056
	jal	%x1, o_param_r3.2697  #1418 pc 15060
	addi	%x2, %x2, -124  #1418 pc 15064
	lw	%x1, 120(%x2) #1418 pc 15068
	flw	%f1, 112(%x2)  #1418 pc 15072
	fmul	%f0, %f1, %f0  #1418 pc 15076
	flw	%f1, 104(%x2)  #1418 pc 15080
	fadd	%f0, %f1, %f0  #1418 pc 15084
	sw	%x1, 120(%x2)  #1418 pc 15088
	addi	%x2, %x2, 124  #1418 pc 15092
	jal	%x1, fhalf.2519  #1418 pc 15096
	addi	%x2, %x2, -124  #1418 pc 15100
	lw	%x1, 120(%x2) #1418 pc 15104
	flw	%f1, 48(%x2)  #1418 pc 15108
	fsub	%f0, %f1, %f0  #1418 pc 15112
	lw	%x6, 8(%x2)  #1418 pc 15116
	fsw	%f0, 8(%x6)  #1418 pc 15120
	lw	%x7, 4(%x2)  #1419 pc 15124
	flw	%f0, 4(%x7)  #1419 pc 15128
	lw	%x8, 0(%x2)  #1419 pc 15132
	fsw	%f0, 120(%x2)  #1419 pc 15136
	addi	%x6, %x8, 0  #0 pc 15140
	sw	%x1, 128(%x2)  #1419 pc 15144
	addi	%x2, %x2, 132  #1419 pc 15148
	jal	%x1, o_param_r1.2693  #1419 pc 15152
	addi	%x2, %x2, -132  #1419 pc 15156
	lw	%x1, 128(%x2) #1419 pc 15160
	flw	%f1, 120(%x2)  #1419 pc 15164
	fmul	%f0, %f1, %f0  #1419 pc 15168
	lw	%x6, 4(%x2)  #1419 pc 15172
	flw	%f1, 0(%x6)  #1419 pc 15176
	lw	%x6, 0(%x2)  #1419 pc 15180
	fsw	%f0, 128(%x2)  #1419 pc 15184
	fsw	%f1, 136(%x2)  #1419 pc 15188
	sw	%x1, 144(%x2)  #1419 pc 15192
	addi	%x2, %x2, 148  #1419 pc 15196
	jal	%x1, o_param_r2.2695  #1419 pc 15200
	addi	%x2, %x2, -148  #1419 pc 15204
	lw	%x1, 144(%x2) #1419 pc 15208
	flw	%f1, 136(%x2)  #1419 pc 15212
	fmul	%f0, %f1, %f0  #1419 pc 15216
	flw	%f1, 128(%x2)  #1419 pc 15220
	fadd	%f0, %f1, %f0  #1419 pc 15224
	sw	%x1, 144(%x2)  #1419 pc 15228
	addi	%x2, %x2, 148  #1419 pc 15232
	jal	%x1, fhalf.2519  #1419 pc 15236
	addi	%x2, %x2, -148  #1419 pc 15240
	lw	%x1, 144(%x2) #1419 pc 15244
	flw	%f1, 64(%x2)  #1419 pc 15248
	fsub	%f0, %f1, %f0  #1419 pc 15252
	lw	%x6, 8(%x2)  #1419 pc 15256
	fsw	%f0, 12(%x6)  #1419 pc 15260
be_cont.9288: #pc 15264
	flw	%f0, 16(%x2)  #1425 pc 15264
	sw	%x1, 144(%x2)  #1425 pc 15268
	addi	%x2, %x2, 148  #1425 pc 15272
	jal	%x1, fiszero.2509  #1425 pc 15276
	addi	%x2, %x2, -148  #1425 pc 15280
	lw	%x1, 144(%x2) #1425 pc 15284
	beq	%x6, %x0, 12  #1425 pc 15288
	j	be_else.9289 #pc 15292
	nop #pc 15296
	fmv	%f0, l.6263  #0 pc 15300
	flw	%f1, 16(%x2)  #1426 pc 15304
	fdiv	%f0, %f0, %f1  #1426 pc 15308
	lw	%x6, 8(%x2)  #1426 pc 15312
	fsw	%f0, 16(%x6)  #1426 pc 15316
	j	be_cont.9290 #pc 15320
	nop #pc 15324
be_else.9289: #pc 15328
be_cont.9290: #pc 15328
	lw	%x6, 8(%x2)  #1428 pc 15328
	ret #pc 15332
	nop #pc 15336
iter_setup_dirvec_constants.2846:  #pc 15340
	lw	%x8, 4(%x29)  #0 pc 15340
	bge	%x7, %x0, 12  #1434 pc 15344
	j	bge_else.9291 #pc 15348
	nop #pc 15352
	slli	%x9, %x7, 2  #1435 pc 15356
	add	%x31, %x9, %x8  #1435 pc 15360
	lw	%x8, 0(%x31)  #1435 pc 15364
	sw	%x29, 0(%x2)  #1436 pc 15368
	sw	%x7, 4(%x2)  #1436 pc 15372
	sw	%x8, 8(%x2)  #1436 pc 15376
	sw	%x6, 12(%x2)  #1436 pc 15380
	sw	%x1, 16(%x2)  #1436 pc 15384
	addi	%x2, %x2, 20  #1436 pc 15388
	jal	%x1, d_const.2722  #1436 pc 15392
	addi	%x2, %x2, -20  #1436 pc 15396
	lw	%x1, 16(%x2) #1436 pc 15400
	lw	%x7, 12(%x2)  #1437 pc 15404
	sw	%x6, 16(%x2)  #1437 pc 15408
	addi	%x6, %x7, 0  #0 pc 15412
	sw	%x1, 20(%x2)  #1437 pc 15416
	addi	%x2, %x2, 24  #1437 pc 15420
	jal	%x1, d_vec.2720  #1437 pc 15424
	addi	%x2, %x2, -24  #1437 pc 15428
	lw	%x1, 20(%x2) #1437 pc 15432
	lw	%x7, 8(%x2)  #1438 pc 15436
	sw	%x6, 20(%x2)  #1438 pc 15440
	addi	%x6, %x7, 0  #0 pc 15444
	sw	%x1, 24(%x2)  #1438 pc 15448
	addi	%x2, %x2, 28  #1438 pc 15452
	jal	%x1, o_form.2661  #1438 pc 15456
	addi	%x2, %x2, -28  #1438 pc 15460
	lw	%x1, 24(%x2) #1438 pc 15464
	addi	%x31, %x0, 1  #pc 15468
	beq	%x6, %x31, 12  #1439 pc 15472
	j	be_else.9292 #pc 15476
	nop #pc 15480
	lw	%x6, 20(%x2)  #1440 pc 15484
	lw	%x7, 8(%x2)  #1440 pc 15488
	sw	%x1, 24(%x2)  #1440 pc 15492
	addi	%x2, %x2, 28  #1440 pc 15496
	jal	%x1, setup_rect_table.2837  #1440 pc 15500
	addi	%x2, %x2, -28  #1440 pc 15504
	lw	%x1, 24(%x2) #1440 pc 15508
	lw	%x7, 4(%x2)  #1440 pc 15512
	slli	%x8, %x7, 2  #1440 pc 15516
	lw	%x9, 16(%x2)  #1440 pc 15520
	add	%x31, %x8, %x9  #1440 pc 15524
	sw	%x6, 0(%x31)  #1440 pc 15528
	j	be_cont.9293 #pc 15532
	nop #pc 15536
be_else.9292: #pc 15540
	addi	%x31, %x0, 2  #pc 15540
	beq	%x6, %x31, 12  #1441 pc 15544
	j	be_else.9294 #pc 15548
	nop #pc 15552
	lw	%x6, 20(%x2)  #1442 pc 15556
	lw	%x7, 8(%x2)  #1442 pc 15560
	sw	%x1, 24(%x2)  #1442 pc 15564
	addi	%x2, %x2, 28  #1442 pc 15568
	jal	%x1, setup_surface_table.2840  #1442 pc 15572
	addi	%x2, %x2, -28  #1442 pc 15576
	lw	%x1, 24(%x2) #1442 pc 15580
	lw	%x7, 4(%x2)  #1442 pc 15584
	slli	%x8, %x7, 2  #1442 pc 15588
	lw	%x9, 16(%x2)  #1442 pc 15592
	add	%x31, %x8, %x9  #1442 pc 15596
	sw	%x6, 0(%x31)  #1442 pc 15600
	j	be_cont.9295 #pc 15604
	nop #pc 15608
be_else.9294: #pc 15612
	lw	%x6, 20(%x2)  #1444 pc 15612
	lw	%x7, 8(%x2)  #1444 pc 15616
	sw	%x1, 24(%x2)  #1444 pc 15620
	addi	%x2, %x2, 28  #1444 pc 15624
	jal	%x1, setup_second_table.2843  #1444 pc 15628
	addi	%x2, %x2, -28  #1444 pc 15632
	lw	%x1, 24(%x2) #1444 pc 15636
	lw	%x7, 4(%x2)  #1444 pc 15640
	slli	%x8, %x7, 2  #1444 pc 15644
	lw	%x9, 16(%x2)  #1444 pc 15648
	add	%x31, %x8, %x9  #1444 pc 15652
	sw	%x6, 0(%x31)  #1444 pc 15656
be_cont.9295: #pc 15660
be_cont.9293: #pc 15660
	addi	%x7, %x7, -1  #1446 pc 15660
	lw	%x6, 12(%x2)  #1446 pc 15664
	lw	%x29, 0(%x2)  #1446 pc 15668
	lw	%x30, 0(%x29)  #1446 pc 15672
	jalr	%x0, %x30, 0  #1446 pc 15676
	nop #pc 15680
bge_else.9291: #pc 15684
	ret #pc 15684
	nop #pc 15688
setup_dirvec_constants.2849:  #pc 15692
	lw	%x7, 8(%x29)  #0 pc 15692
	lw	%x29, 4(%x29)  #0 pc 15696
	lw	%x7, 0(%x7)  #1451 pc 15700
	addi	%x7, %x7, -1  #1451 pc 15704
	lw	%x30, 0(%x29)  #1451 pc 15708
	jalr	%x0, %x30, 0  #1451 pc 15712
	nop #pc 15716
setup_startp_constants.2851:  #pc 15720
	lw	%x8, 4(%x29)  #0 pc 15720
	bge	%x7, %x0, 12  #1459 pc 15724
	j	bge_else.9297 #pc 15728
	nop #pc 15732
	slli	%x9, %x7, 2  #1460 pc 15736
	add	%x31, %x9, %x8  #1460 pc 15740
	lw	%x8, 0(%x31)  #1460 pc 15744
	sw	%x29, 0(%x2)  #1461 pc 15748
	sw	%x7, 4(%x2)  #1461 pc 15752
	sw	%x6, 8(%x2)  #1461 pc 15756
	sw	%x8, 12(%x2)  #1461 pc 15760
	addi	%x6, %x8, 0  #0 pc 15764
	sw	%x1, 16(%x2)  #1461 pc 15768
	addi	%x2, %x2, 20  #1461 pc 15772
	jal	%x1, o_param_ctbl.2699  #1461 pc 15776
	addi	%x2, %x2, -20  #1461 pc 15780
	lw	%x1, 16(%x2) #1461 pc 15784
	lw	%x7, 12(%x2)  #1462 pc 15788
	sw	%x6, 16(%x2)  #1462 pc 15792
	addi	%x6, %x7, 0  #0 pc 15796
	sw	%x1, 20(%x2)  #1462 pc 15800
	addi	%x2, %x2, 24  #1462 pc 15804
	jal	%x1, o_form.2661  #1462 pc 15808
	addi	%x2, %x2, -24  #1462 pc 15812
	lw	%x1, 20(%x2) #1462 pc 15816
	lw	%x7, 8(%x2)  #1463 pc 15820
	flw	%f0, 0(%x7)  #1463 pc 15824
	lw	%x8, 12(%x2)  #1463 pc 15828
	sw	%x6, 20(%x2)  #1463 pc 15832
	fsw	%f0, 24(%x2)  #1463 pc 15836
	addi	%x6, %x8, 0  #0 pc 15840
	sw	%x1, 32(%x2)  #1463 pc 15844
	addi	%x2, %x2, 36  #1463 pc 15848
	jal	%x1, o_param_x.2677  #1463 pc 15852
	addi	%x2, %x2, -36  #1463 pc 15856
	lw	%x1, 32(%x2) #1463 pc 15860
	flw	%f1, 24(%x2)  #1463 pc 15864
	fsub	%f0, %f1, %f0  #1463 pc 15868
	lw	%x6, 16(%x2)  #1463 pc 15872
	fsw	%f0, 0(%x6)  #1463 pc 15876
	lw	%x7, 8(%x2)  #1464 pc 15880
	flw	%f0, 4(%x7)  #1464 pc 15884
	lw	%x8, 12(%x2)  #1464 pc 15888
	fsw	%f0, 32(%x2)  #1464 pc 15892
	addi	%x6, %x8, 0  #0 pc 15896
	sw	%x1, 40(%x2)  #1464 pc 15900
	addi	%x2, %x2, 44  #1464 pc 15904
	jal	%x1, o_param_y.2679  #1464 pc 15908
	addi	%x2, %x2, -44  #1464 pc 15912
	lw	%x1, 40(%x2) #1464 pc 15916
	flw	%f1, 32(%x2)  #1464 pc 15920
	fsub	%f0, %f1, %f0  #1464 pc 15924
	lw	%x6, 16(%x2)  #1464 pc 15928
	fsw	%f0, 4(%x6)  #1464 pc 15932
	lw	%x7, 8(%x2)  #1465 pc 15936
	flw	%f0, 8(%x7)  #1465 pc 15940
	lw	%x8, 12(%x2)  #1465 pc 15944
	fsw	%f0, 40(%x2)  #1465 pc 15948
	addi	%x6, %x8, 0  #0 pc 15952
	sw	%x1, 48(%x2)  #1465 pc 15956
	addi	%x2, %x2, 52  #1465 pc 15960
	jal	%x1, o_param_z.2681  #1465 pc 15964
	addi	%x2, %x2, -52  #1465 pc 15968
	lw	%x1, 48(%x2) #1465 pc 15972
	flw	%f1, 40(%x2)  #1465 pc 15976
	fsub	%f0, %f1, %f0  #1465 pc 15980
	lw	%x6, 16(%x2)  #1465 pc 15984
	fsw	%f0, 8(%x6)  #1465 pc 15988
	lw	%x7, 20(%x2)  #1466 pc 15992
	addi	%x31, %x0, 2  #pc 15996
	beq	%x7, %x31, 12  #1466 pc 16000
	j	be_else.9298 #pc 16004
	nop #pc 16008
	lw	%x7, 12(%x2)  #1468 pc 16012
	addi	%x6, %x7, 0  #0 pc 16016
	sw	%x1, 48(%x2)  #1468 pc 16020
	addi	%x2, %x2, 52  #1468 pc 16024
	jal	%x1, o_param_abc.2675  #1468 pc 16028
	addi	%x2, %x2, -52  #1468 pc 16032
	lw	%x1, 48(%x2) #1468 pc 16036
	lw	%x7, 16(%x2)  #1468 pc 16040
	flw	%f0, 0(%x7)  #1468 pc 16044
	flw	%f1, 4(%x7)  #1468 pc 16048
	flw	%f2, 8(%x7)  #1468 pc 16052
	sw	%x1, 48(%x2)  #1468 pc 16056
	addi	%x2, %x2, 52  #1468 pc 16060
	jal	%x1, veciprod2.2640  #1468 pc 16064
	addi	%x2, %x2, -52  #1468 pc 16068
	lw	%x1, 48(%x2) #1468 pc 16072
	lw	%x6, 16(%x2)  #1467 pc 16076
	fsw	%f0, 12(%x6)  #1467 pc 16080
	j	be_cont.9299 #pc 16084
	nop #pc 16088
be_else.9298: #pc 16092
	addi	%x31, %x0, 2  #pc 16092
	bge	%x31, %x7, 12  #1469 pc 16096
	j	ble_else.9300 #pc 16100
	nop #pc 16104
	j	ble_cont.9301 #pc 16108
	nop #pc 16112
ble_else.9300: #pc 16116
	flw	%f0, 0(%x6)  #1470 pc 16116
	flw	%f1, 4(%x6)  #1470 pc 16120
	flw	%f2, 8(%x6)  #1470 pc 16124
	lw	%x8, 12(%x2)  #1470 pc 16128
	addi	%x6, %x8, 0  #0 pc 16132
	sw	%x1, 48(%x2)  #1470 pc 16136
	addi	%x2, %x2, 52  #1470 pc 16140
	jal	%x1, quadratic.2774  #1470 pc 16144
	addi	%x2, %x2, -52  #1470 pc 16148
	lw	%x1, 48(%x2) #1470 pc 16152
	lw	%x6, 20(%x2)  #1471 pc 16156
	addi	%x31, %x0, 3  #pc 16160
	beq	%x6, %x31, 12  #1471 pc 16164
	j	be_else.9302 #pc 16168
	nop #pc 16172
	fmv	%f1, l.6263  #0 pc 16176
	fsub	%f0, %f0, %f1  #1471 pc 16180
	j	be_cont.9303 #pc 16184
	nop #pc 16188
be_else.9302: #pc 16192
be_cont.9303: #pc 16192
	lw	%x6, 16(%x2)  #1471 pc 16192
	fsw	%f0, 12(%x6)  #1471 pc 16196
ble_cont.9301: #pc 16200
be_cont.9299: #pc 16200
	lw	%x6, 4(%x2)  #1473 pc 16200
	addi	%x7, %x6, -1  #1473 pc 16204
	lw	%x6, 8(%x2)  #1473 pc 16208
	lw	%x29, 0(%x2)  #1473 pc 16212
	lw	%x30, 0(%x29)  #1473 pc 16216
	jalr	%x0, %x30, 0  #1473 pc 16220
	nop #pc 16224
bge_else.9297: #pc 16228
	ret #pc 16228
	nop #pc 16232
setup_startp.2854:  #pc 16236
	lw	%x7, 12(%x29)  #1478 pc 16236
	lw	%x8, 8(%x29)  #1478 pc 16240
	lw	%x9, 4(%x29)  #1478 pc 16244
	sw	%x6, 0(%x2)  #1478 pc 16248
	sw	%x8, 4(%x2)  #1478 pc 16252
	sw	%x9, 8(%x2)  #1478 pc 16256
	addi	%x30, %x7, 0  #0 pc 16260
	addi	%x7, %x6, 0  #0 pc 16264
	addi	%x6, %x30, 0  #0 pc 16268
	sw	%x1, 12(%x2)  #1478 pc 16272
	addi	%x2, %x2, 16  #1478 pc 16276
	jal	%x1, veccpy.2631  #1478 pc 16280
	addi	%x2, %x2, -16  #1478 pc 16284
	lw	%x1, 12(%x2) #1478 pc 16288
	lw	%x6, 8(%x2)  #1479 pc 16292
	lw	%x6, 0(%x6)  #1479 pc 16296
	addi	%x7, %x6, -1  #1479 pc 16300
	lw	%x6, 0(%x2)  #1479 pc 16304
	lw	%x29, 4(%x2)  #1479 pc 16308
	lw	%x30, 0(%x29)  #1479 pc 16312
	jalr	%x0, %x30, 0  #1479 pc 16316
	nop #pc 16320
is_rect_outside.2856:  #pc 16324
	fabs	%f0, %f0  #1491 pc 16324
	fsw	%f2, 0(%x2)  #1491 pc 16328
	sw	%x6, 8(%x2)  #1491 pc 16332
	fsw	%f1, 16(%x2)  #1491 pc 16336
	fsw	%f0, 24(%x2)  #1491 pc 16340
	sw	%x1, 32(%x2)  #1491 pc 16344
	addi	%x2, %x2, 36  #1491 pc 16348
	jal	%x1, o_param_a.2669  #1491 pc 16352
	addi	%x2, %x2, -36  #1491 pc 16356
	lw	%x1, 32(%x2) #1491 pc 16360
	fadd	%f1, %f0, %f30  #1491 pc 16364
	flw	%f0, 24(%x2)  #1491 pc 16368
	sw	%x1, 32(%x2)  #1491 pc 16372
	addi	%x2, %x2, 36  #1491 pc 16376
	jal	%x1, fless.2521  #1491 pc 16380
	addi	%x2, %x2, -36  #1491 pc 16384
	lw	%x1, 32(%x2) #1491 pc 16388
	beq	%x6, %x0, 12  #1491 pc 16392
	j	be_else.9306 #pc 16396
	nop #pc 16400
	addi	%x6, %x0, 0  #0 pc 16404
	j	be_cont.9307 #pc 16408
	nop #pc 16412
be_else.9306: #pc 16416
	flw	%f0, 16(%x2)  #1492 pc 16416
	fabs	%f0, %f0  #1492 pc 16420
	lw	%x6, 8(%x2)  #1492 pc 16424
	fsw	%f0, 32(%x2)  #1492 pc 16428
	sw	%x1, 40(%x2)  #1492 pc 16432
	addi	%x2, %x2, 44  #1492 pc 16436
	jal	%x1, o_param_b.2671  #1492 pc 16440
	addi	%x2, %x2, -44  #1492 pc 16444
	lw	%x1, 40(%x2) #1492 pc 16448
	fadd	%f1, %f0, %f30  #1492 pc 16452
	flw	%f0, 32(%x2)  #1492 pc 16456
	sw	%x1, 40(%x2)  #1492 pc 16460
	addi	%x2, %x2, 44  #1492 pc 16464
	jal	%x1, fless.2521  #1492 pc 16468
	addi	%x2, %x2, -44  #1492 pc 16472
	lw	%x1, 40(%x2) #1492 pc 16476
	beq	%x6, %x0, 12  #1492 pc 16480
	j	be_else.9308 #pc 16484
	nop #pc 16488
	addi	%x6, %x0, 0  #0 pc 16492
	j	be_cont.9309 #pc 16496
	nop #pc 16500
be_else.9308: #pc 16504
	flw	%f0, 0(%x2)  #1493 pc 16504
	fabs	%f0, %f0  #1493 pc 16508
	lw	%x6, 8(%x2)  #1493 pc 16512
	fsw	%f0, 40(%x2)  #1493 pc 16516
	sw	%x1, 48(%x2)  #1493 pc 16520
	addi	%x2, %x2, 52  #1493 pc 16524
	jal	%x1, o_param_c.2673  #1493 pc 16528
	addi	%x2, %x2, -52  #1493 pc 16532
	lw	%x1, 48(%x2) #1493 pc 16536
	fadd	%f1, %f0, %f30  #1493 pc 16540
	flw	%f0, 40(%x2)  #1493 pc 16544
	sw	%x1, 48(%x2)  #1493 pc 16548
	addi	%x2, %x2, 52  #1493 pc 16552
	jal	%x1, fless.2521  #1493 pc 16556
	addi	%x2, %x2, -52  #1493 pc 16560
	lw	%x1, 48(%x2) #1493 pc 16564
be_cont.9309: #pc 16568
be_cont.9307: #pc 16568
	beq	%x6, %x0, 12  #1490 pc 16568
	j	be_else.9310 #pc 16572
	nop #pc 16576
	lw	%x6, 8(%x2)  #1496 pc 16580
	sw	%x1, 48(%x2)  #1496 pc 16584
	addi	%x2, %x2, 52  #1496 pc 16588
	jal	%x1, o_isinvert.2665  #1496 pc 16592
	addi	%x2, %x2, -52  #1496 pc 16596
	lw	%x1, 48(%x2) #1496 pc 16600
	beq	%x6, %x0, 12  #1496 pc 16604
	j	be_else.9311 #pc 16608
	nop #pc 16612
	addi	%x6, %x0, 1  #0 pc 16616
	ret #pc 16620
	nop #pc 16624
be_else.9311: #pc 16628
	addi	%x6, %x0, 0  #0 pc 16628
	ret #pc 16632
	nop #pc 16636
be_else.9310: #pc 16640
	lw	%x6, 8(%x2)  #1496 pc 16640
	j	o_isinvert.2665  #1496 pc 16644
	nop #pc 16648
is_plane_outside.2861:  #pc 16652
	sw	%x6, 0(%x2)  #1501 pc 16652
	fsw	%f2, 8(%x2)  #1501 pc 16656
	fsw	%f1, 16(%x2)  #1501 pc 16660
	fsw	%f0, 24(%x2)  #1501 pc 16664
	sw	%x1, 32(%x2)  #1501 pc 16668
	addi	%x2, %x2, 36  #1501 pc 16672
	jal	%x1, o_param_abc.2675  #1501 pc 16676
	addi	%x2, %x2, -36  #1501 pc 16680
	lw	%x1, 32(%x2) #1501 pc 16684
	flw	%f0, 24(%x2)  #1501 pc 16688
	flw	%f1, 16(%x2)  #1501 pc 16692
	flw	%f2, 8(%x2)  #1501 pc 16696
	sw	%x1, 32(%x2)  #1501 pc 16700
	addi	%x2, %x2, 36  #1501 pc 16704
	jal	%x1, veciprod2.2640  #1501 pc 16708
	addi	%x2, %x2, -36  #1501 pc 16712
	lw	%x1, 32(%x2) #1501 pc 16716
	lw	%x6, 0(%x2)  #1502 pc 16720
	fsw	%f0, 32(%x2)  #1502 pc 16724
	sw	%x1, 40(%x2)  #1502 pc 16728
	addi	%x2, %x2, 44  #1502 pc 16732
	jal	%x1, o_isinvert.2665  #1502 pc 16736
	addi	%x2, %x2, -44  #1502 pc 16740
	lw	%x1, 40(%x2) #1502 pc 16744
	flw	%f0, 32(%x2)  #1502 pc 16748
	sw	%x6, 40(%x2)  #1502 pc 16752
	sw	%x1, 44(%x2)  #1502 pc 16756
	addi	%x2, %x2, 48  #1502 pc 16760
	jal	%x1, fisneg.2513  #1502 pc 16764
	addi	%x2, %x2, -48  #1502 pc 16768
	lw	%x1, 44(%x2) #1502 pc 16772
	addi	%x7, %x6, 0  #1502 pc 16776
	lw	%x6, 40(%x2)  #1502 pc 16780
	sw	%x1, 44(%x2)  #1502 pc 16784
	addi	%x2, %x2, 48  #1502 pc 16788
	jal	%x1, xor.2610  #1502 pc 16792
	addi	%x2, %x2, -48  #1502 pc 16796
	lw	%x1, 44(%x2) #1502 pc 16800
	beq	%x6, %x0, 12  #1502 pc 16804
	j	be_else.9313 #pc 16808
	nop #pc 16812
	addi	%x6, %x0, 1  #0 pc 16816
	ret #pc 16820
	nop #pc 16824
be_else.9313: #pc 16828
	addi	%x6, %x0, 0  #0 pc 16828
	ret #pc 16832
	nop #pc 16836
is_second_outside.2866:  #pc 16840
	sw	%x6, 0(%x2)  #1507 pc 16840
	sw	%x1, 4(%x2)  #1507 pc 16844
	addi	%x2, %x2, 8  #1507 pc 16848
	jal	%x1, quadratic.2774  #1507 pc 16852
	addi	%x2, %x2, -8  #1507 pc 16856
	lw	%x1, 4(%x2) #1507 pc 16860
	lw	%x6, 0(%x2)  #1508 pc 16864
	fsw	%f0, 8(%x2)  #1508 pc 16868
	sw	%x1, 16(%x2)  #1508 pc 16872
	addi	%x2, %x2, 20  #1508 pc 16876
	jal	%x1, o_form.2661  #1508 pc 16880
	addi	%x2, %x2, -20  #1508 pc 16884
	lw	%x1, 16(%x2) #1508 pc 16888
	addi	%x31, %x0, 3  #pc 16892
	beq	%x6, %x31, 12  #1508 pc 16896
	j	be_else.9315 #pc 16900
	nop #pc 16904
	fmv	%f0, l.6263  #0 pc 16908
	flw	%f1, 8(%x2)  #1508 pc 16912
	fsub	%f0, %f1, %f0  #1508 pc 16916
	j	be_cont.9316 #pc 16920
	nop #pc 16924
be_else.9315: #pc 16928
	flw	%f0, 8(%x2)  #1508 pc 16928
be_cont.9316: #pc 16932
	lw	%x6, 0(%x2)  #1509 pc 16932
	fsw	%f0, 16(%x2)  #1509 pc 16936
	sw	%x1, 24(%x2)  #1509 pc 16940
	addi	%x2, %x2, 28  #1509 pc 16944
	jal	%x1, o_isinvert.2665  #1509 pc 16948
	addi	%x2, %x2, -28  #1509 pc 16952
	lw	%x1, 24(%x2) #1509 pc 16956
	flw	%f0, 16(%x2)  #1509 pc 16960
	sw	%x6, 24(%x2)  #1509 pc 16964
	sw	%x1, 28(%x2)  #1509 pc 16968
	addi	%x2, %x2, 32  #1509 pc 16972
	jal	%x1, fisneg.2513  #1509 pc 16976
	addi	%x2, %x2, -32  #1509 pc 16980
	lw	%x1, 28(%x2) #1509 pc 16984
	addi	%x7, %x6, 0  #1509 pc 16988
	lw	%x6, 24(%x2)  #1509 pc 16992
	sw	%x1, 28(%x2)  #1509 pc 16996
	addi	%x2, %x2, 32  #1509 pc 17000
	jal	%x1, xor.2610  #1509 pc 17004
	addi	%x2, %x2, -32  #1509 pc 17008
	lw	%x1, 28(%x2) #1509 pc 17012
	beq	%x6, %x0, 12  #1509 pc 17016
	j	be_else.9317 #pc 17020
	nop #pc 17024
	addi	%x6, %x0, 1  #0 pc 17028
	ret #pc 17032
	nop #pc 17036
be_else.9317: #pc 17040
	addi	%x6, %x0, 0  #0 pc 17040
	ret #pc 17044
	nop #pc 17048
is_outside.2871:  #pc 17052
	fsw	%f2, 0(%x2)  #1514 pc 17052
	fsw	%f1, 8(%x2)  #1514 pc 17056
	sw	%x6, 16(%x2)  #1514 pc 17060
	fsw	%f0, 24(%x2)  #1514 pc 17064
	sw	%x1, 32(%x2)  #1514 pc 17068
	addi	%x2, %x2, 36  #1514 pc 17072
	jal	%x1, o_param_x.2677  #1514 pc 17076
	addi	%x2, %x2, -36  #1514 pc 17080
	lw	%x1, 32(%x2) #1514 pc 17084
	flw	%f1, 24(%x2)  #1514 pc 17088
	fsub	%f0, %f1, %f0  #1514 pc 17092
	lw	%x6, 16(%x2)  #1515 pc 17096
	fsw	%f0, 32(%x2)  #1515 pc 17100
	sw	%x1, 40(%x2)  #1515 pc 17104
	addi	%x2, %x2, 44  #1515 pc 17108
	jal	%x1, o_param_y.2679  #1515 pc 17112
	addi	%x2, %x2, -44  #1515 pc 17116
	lw	%x1, 40(%x2) #1515 pc 17120
	flw	%f1, 8(%x2)  #1515 pc 17124
	fsub	%f0, %f1, %f0  #1515 pc 17128
	lw	%x6, 16(%x2)  #1516 pc 17132
	fsw	%f0, 40(%x2)  #1516 pc 17136
	sw	%x1, 48(%x2)  #1516 pc 17140
	addi	%x2, %x2, 52  #1516 pc 17144
	jal	%x1, o_param_z.2681  #1516 pc 17148
	addi	%x2, %x2, -52  #1516 pc 17152
	lw	%x1, 48(%x2) #1516 pc 17156
	flw	%f1, 0(%x2)  #1516 pc 17160
	fsub	%f0, %f1, %f0  #1516 pc 17164
	lw	%x6, 16(%x2)  #1517 pc 17168
	fsw	%f0, 48(%x2)  #1517 pc 17172
	sw	%x1, 56(%x2)  #1517 pc 17176
	addi	%x2, %x2, 60  #1517 pc 17180
	jal	%x1, o_form.2661  #1517 pc 17184
	addi	%x2, %x2, -60  #1517 pc 17188
	lw	%x1, 56(%x2) #1517 pc 17192
	addi	%x31, %x0, 1  #pc 17196
	beq	%x6, %x31, 12  #1518 pc 17200
	j	be_else.9319 #pc 17204
	nop #pc 17208
	flw	%f0, 32(%x2)  #1519 pc 17212
	flw	%f1, 40(%x2)  #1519 pc 17216
	flw	%f2, 48(%x2)  #1519 pc 17220
	lw	%x6, 16(%x2)  #1519 pc 17224
	j	is_rect_outside.2856  #1519 pc 17228
	nop #pc 17232
be_else.9319: #pc 17236
	addi	%x31, %x0, 2  #pc 17236
	beq	%x6, %x31, 12  #1520 pc 17240
	j	be_else.9320 #pc 17244
	nop #pc 17248
	flw	%f0, 32(%x2)  #1521 pc 17252
	flw	%f1, 40(%x2)  #1521 pc 17256
	flw	%f2, 48(%x2)  #1521 pc 17260
	lw	%x6, 16(%x2)  #1521 pc 17264
	j	is_plane_outside.2861  #1521 pc 17268
	nop #pc 17272
be_else.9320: #pc 17276
	flw	%f0, 32(%x2)  #1523 pc 17276
	flw	%f1, 40(%x2)  #1523 pc 17280
	flw	%f2, 48(%x2)  #1523 pc 17284
	lw	%x6, 16(%x2)  #1523 pc 17288
	j	is_second_outside.2866  #1523 pc 17292
	nop #pc 17296
check_all_inside.2876:  #pc 17300
	lw	%x8, 4(%x29)  #1528 pc 17300
	slli	%x9, %x6, 2  #1528 pc 17304
	add	%x31, %x9, %x7  #1528 pc 17308
	lw	%x9, 0(%x31)  #1528 pc 17312
	addi	%x31, %x0, -1  #pc 17316
	beq	%x9, %x31, 12  #1529 pc 17320
	j	be_else.9321 #pc 17324
	nop #pc 17328
	addi	%x6, %x0, 1  #0 pc 17332
	ret #pc 17336
	nop #pc 17340
be_else.9321: #pc 17344
	slli	%x9, %x9, 2  #1532 pc 17344
	add	%x31, %x9, %x8  #1532 pc 17348
	lw	%x8, 0(%x31)  #1532 pc 17352
	fsw	%f2, 0(%x2)  #1532 pc 17356
	fsw	%f1, 8(%x2)  #1532 pc 17360
	fsw	%f0, 16(%x2)  #1532 pc 17364
	sw	%x7, 24(%x2)  #1532 pc 17368
	sw	%x29, 28(%x2)  #1532 pc 17372
	sw	%x6, 32(%x2)  #1532 pc 17376
	addi	%x6, %x8, 0  #0 pc 17380
	sw	%x1, 36(%x2)  #1532 pc 17384
	addi	%x2, %x2, 40  #1532 pc 17388
	jal	%x1, is_outside.2871  #1532 pc 17392
	addi	%x2, %x2, -40  #1532 pc 17396
	lw	%x1, 36(%x2) #1532 pc 17400
	beq	%x6, %x0, 12  #1532 pc 17404
	j	be_else.9322 #pc 17408
	nop #pc 17412
	lw	%x6, 32(%x2)  #1535 pc 17416
	addi	%x6, %x6, 1  #1535 pc 17420
	flw	%f0, 16(%x2)  #1535 pc 17424
	flw	%f1, 8(%x2)  #1535 pc 17428
	flw	%f2, 0(%x2)  #1535 pc 17432
	lw	%x7, 24(%x2)  #1535 pc 17436
	lw	%x29, 28(%x2)  #1535 pc 17440
	lw	%x30, 0(%x29)  #1535 pc 17444
	jalr	%x0, %x30, 0  #1535 pc 17448
	nop #pc 17452
be_else.9322: #pc 17456
	addi	%x6, %x0, 0  #0 pc 17456
	ret #pc 17460
	nop #pc 17464
shadow_check_and_group.2882:  #pc 17468
	lw	%x8, 28(%x29)  #0 pc 17468
	lw	%x9, 24(%x29)  #0 pc 17472
	lw	%x10, 20(%x29)  #0 pc 17476
	lw	%x11, 16(%x29)  #0 pc 17480
	lw	%x12, 12(%x29)  #0 pc 17484
	lw	%x13, 8(%x29)  #0 pc 17488
	lw	%x14, 4(%x29)  #0 pc 17492
	slli	%x15, %x6, 2  #1548 pc 17496
	add	%x31, %x15, %x7  #1548 pc 17500
	lw	%x15, 0(%x31)  #1548 pc 17504
	addi	%x31, %x0, -1  #pc 17508
	beq	%x15, %x31, 12  #1548 pc 17512
	j	be_else.9323 #pc 17516
	nop #pc 17520
	addi	%x6, %x0, 0  #0 pc 17524
	ret #pc 17528
	nop #pc 17532
be_else.9323: #pc 17536
	slli	%x15, %x6, 2  #1551 pc 17536
	add	%x31, %x15, %x7  #1551 pc 17540
	lw	%x15, 0(%x31)  #1551 pc 17544
	sw	%x14, 0(%x2)  #1552 pc 17548
	sw	%x13, 4(%x2)  #1552 pc 17552
	sw	%x12, 8(%x2)  #1552 pc 17556
	sw	%x7, 12(%x2)  #1552 pc 17560
	sw	%x29, 16(%x2)  #1552 pc 17564
	sw	%x6, 20(%x2)  #1552 pc 17568
	sw	%x10, 24(%x2)  #1552 pc 17572
	sw	%x15, 28(%x2)  #1552 pc 17576
	sw	%x9, 32(%x2)  #1552 pc 17580
	addi	%x7, %x11, 0  #0 pc 17584
	addi	%x6, %x15, 0  #0 pc 17588
	addi	%x29, %x8, 0  #0 pc 17592
	addi	%x8, %x13, 0  #0 pc 17596
	sw	%x1, 36(%x2)  #1552 pc 17600
	lw	%x30, 0(%x29)  #1552 pc 17604
	addi	%x2, %x2, 40  #1552 pc 17608
	jalr	%x1, %x30, 0  #1552 pc 17612
	addi	%x2, %x2, -40  #1552 pc 17616
	lw	%x1, 36(%x2)  #1552 pc 17620
	lw	%x7, 32(%x2)  #1553 pc 17624
	flw	%f0, 0(%x7)  #1553 pc 17628
	fsw	%f0, 40(%x2)  #1554 pc 17632
	beq	%x6, %x0, 12  #1554 pc 17636
	j	be_else.9325 #pc 17640
	nop #pc 17644
	addi	%x6, %x0, 0  #0 pc 17648
	j	be_cont.9326 #pc 17652
	nop #pc 17656
be_else.9325: #pc 17660
	fmv	%f1, l.6644  #0 pc 17660
	sw	%x1, 48(%x2)  #1554 pc 17664
	addi	%x2, %x2, 52  #1554 pc 17668
	jal	%x1, fless.2521  #1554 pc 17672
	addi	%x2, %x2, -52  #1554 pc 17676
	lw	%x1, 48(%x2) #1554 pc 17680
be_cont.9326: #pc 17684
	beq	%x6, %x0, 12  #1554 pc 17684
	j	be_else.9327 #pc 17688
	nop #pc 17692
	lw	%x6, 28(%x2)  #1570 pc 17696
	slli	%x6, %x6, 2  #1570 pc 17700
	lw	%x7, 24(%x2)  #1570 pc 17704
	add	%x31, %x6, %x7  #1570 pc 17708
	lw	%x6, 0(%x31)  #1570 pc 17712
	sw	%x1, 48(%x2)  #1570 pc 17716
	addi	%x2, %x2, 52  #1570 pc 17720
	jal	%x1, o_isinvert.2665  #1570 pc 17724
	addi	%x2, %x2, -52  #1570 pc 17728
	lw	%x1, 48(%x2) #1570 pc 17732
	beq	%x6, %x0, 12  #1570 pc 17736
	j	be_else.9328 #pc 17740
	nop #pc 17744
	addi	%x6, %x0, 0  #0 pc 17748
	ret #pc 17752
	nop #pc 17756
be_else.9328: #pc 17760
	lw	%x6, 20(%x2)  #1571 pc 17760
	addi	%x6, %x6, 1  #1571 pc 17764
	lw	%x7, 12(%x2)  #1571 pc 17768
	lw	%x29, 16(%x2)  #1571 pc 17772
	lw	%x30, 0(%x29)  #1571 pc 17776
	jalr	%x0, %x30, 0  #1571 pc 17780
	nop #pc 17784
be_else.9327: #pc 17788
	fmv	%f0, l.6646  #0 pc 17788
	flw	%f1, 40(%x2)  #1557 pc 17792
	fadd	%f0, %f1, %f0  #1557 pc 17796
	lw	%x6, 8(%x2)  #1558 pc 17800
	flw	%f1, 0(%x6)  #1558 pc 17804
	fmul	%f1, %f1, %f0  #1558 pc 17808
	lw	%x7, 4(%x2)  #1558 pc 17812
	flw	%f2, 0(%x7)  #1558 pc 17816
	fadd	%f1, %f1, %f2  #1558 pc 17820
	flw	%f2, 4(%x6)  #1559 pc 17824
	fmul	%f2, %f2, %f0  #1559 pc 17828
	flw	%f3, 4(%x7)  #1559 pc 17832
	fadd	%f2, %f2, %f3  #1559 pc 17836
	flw	%f3, 8(%x6)  #1560 pc 17840
	fmul	%f0, %f3, %f0  #1560 pc 17844
	flw	%f3, 8(%x7)  #1560 pc 17848
	fadd	%f0, %f0, %f3  #1560 pc 17852
	addi	%x6, %x0, 0  #0 pc 17856
	lw	%x7, 12(%x2)  #1561 pc 17860
	lw	%x29, 0(%x2)  #1561 pc 17864
	fadd	%f29, %f2, %f30  #0 pc 17868
	fadd	%f2, %f0, %f30  #0 pc 17872
	fadd	%f0, %f1, %f30  #0 pc 17876
	fadd	%f1, %f29, %f30  #0 pc 17880
	sw	%x1, 48(%x2)  #1561 pc 17884
	lw	%x30, 0(%x29)  #1561 pc 17888
	addi	%x2, %x2, 52  #1561 pc 17892
	jalr	%x1, %x30, 0  #1561 pc 17896
	addi	%x2, %x2, -52  #1561 pc 17900
	lw	%x1, 48(%x2)  #1561 pc 17904
	beq	%x6, %x0, 12  #1561 pc 17908
	j	be_else.9329 #pc 17912
	nop #pc 17916
	lw	%x6, 20(%x2)  #1564 pc 17920
	addi	%x6, %x6, 1  #1564 pc 17924
	lw	%x7, 12(%x2)  #1564 pc 17928
	lw	%x29, 16(%x2)  #1564 pc 17932
	lw	%x30, 0(%x29)  #1564 pc 17936
	jalr	%x0, %x30, 0  #1564 pc 17940
	nop #pc 17944
be_else.9329: #pc 17948
	addi	%x6, %x0, 1  #0 pc 17948
	ret #pc 17952
	nop #pc 17956
shadow_check_one_or_group.2885:  #pc 17960
	lw	%x8, 8(%x29)  #1578 pc 17960
	lw	%x9, 4(%x29)  #1578 pc 17964
	slli	%x10, %x6, 2  #1578 pc 17968
	add	%x31, %x10, %x7  #1578 pc 17972
	lw	%x10, 0(%x31)  #1578 pc 17976
	addi	%x31, %x0, -1  #pc 17980
	beq	%x10, %x31, 12  #1579 pc 17984
	j	be_else.9330 #pc 17988
	nop #pc 17992
	addi	%x6, %x0, 0  #0 pc 17996
	ret #pc 18000
	nop #pc 18004
be_else.9330: #pc 18008
	slli	%x10, %x10, 2  #1582 pc 18008
	add	%x31, %x10, %x9  #1582 pc 18012
	lw	%x9, 0(%x31)  #1582 pc 18016
	addi	%x10, %x0, 0  #0 pc 18020
	sw	%x7, 0(%x2)  #1583 pc 18024
	sw	%x29, 4(%x2)  #1583 pc 18028
	sw	%x6, 8(%x2)  #1583 pc 18032
	addi	%x7, %x9, 0  #0 pc 18036
	addi	%x6, %x10, 0  #0 pc 18040
	addi	%x29, %x8, 0  #0 pc 18044
	sw	%x1, 12(%x2)  #1583 pc 18048
	lw	%x30, 0(%x29)  #1583 pc 18052
	addi	%x2, %x2, 16  #1583 pc 18056
	jalr	%x1, %x30, 0  #1583 pc 18060
	addi	%x2, %x2, -16  #1583 pc 18064
	lw	%x1, 12(%x2)  #1583 pc 18068
	beq	%x6, %x0, 12  #1584 pc 18072
	j	be_else.9331 #pc 18076
	nop #pc 18080
	lw	%x6, 8(%x2)  #1587 pc 18084
	addi	%x6, %x6, 1  #1587 pc 18088
	lw	%x7, 0(%x2)  #1587 pc 18092
	lw	%x29, 4(%x2)  #1587 pc 18096
	lw	%x30, 0(%x29)  #1587 pc 18100
	jalr	%x0, %x30, 0  #1587 pc 18104
	nop #pc 18108
be_else.9331: #pc 18112
	addi	%x6, %x0, 1  #0 pc 18112
	ret #pc 18116
	nop #pc 18120
shadow_check_one_or_matrix.2888:  #pc 18124
	lw	%x8, 20(%x29)  #1593 pc 18124
	lw	%x9, 16(%x29)  #1593 pc 18128
	lw	%x10, 12(%x29)  #1593 pc 18132
	lw	%x11, 8(%x29)  #1593 pc 18136
	lw	%x12, 4(%x29)  #1593 pc 18140
	slli	%x13, %x6, 2  #1593 pc 18144
	add	%x31, %x13, %x7  #1593 pc 18148
	lw	%x13, 0(%x31)  #1593 pc 18152
	lw	%x14, 0(%x13)  #1594 pc 18156
	addi	%x31, %x0, -1  #pc 18160
	beq	%x14, %x31, 12  #1595 pc 18164
	j	be_else.9332 #pc 18168
	nop #pc 18172
	addi	%x6, %x0, 0  #0 pc 18176
	ret #pc 18180
	nop #pc 18184
be_else.9332: #pc 18188
	sw	%x13, 0(%x2)  #1599 pc 18188
	sw	%x10, 4(%x2)  #1599 pc 18192
	sw	%x7, 8(%x2)  #1599 pc 18196
	sw	%x29, 12(%x2)  #1599 pc 18200
	sw	%x6, 16(%x2)  #1599 pc 18204
	addi	%x31, %x0, 99  #pc 18208
	beq	%x14, %x31, 12  #1599 pc 18212
	j	be_else.9333 #pc 18216
	nop #pc 18220
	addi	%x6, %x0, 1  #0 pc 18224
	j	be_cont.9334 #pc 18228
	nop #pc 18232
be_else.9333: #pc 18236
	sw	%x9, 20(%x2)  #1602 pc 18236
	addi	%x7, %x11, 0  #0 pc 18240
	addi	%x6, %x14, 0  #0 pc 18244
	addi	%x29, %x8, 0  #0 pc 18248
	addi	%x8, %x12, 0  #0 pc 18252
	sw	%x1, 24(%x2)  #1602 pc 18256
	lw	%x30, 0(%x29)  #1602 pc 18260
	addi	%x2, %x2, 28  #1602 pc 18264
	jalr	%x1, %x30, 0  #1602 pc 18268
	addi	%x2, %x2, -28  #1602 pc 18272
	lw	%x1, 24(%x2)  #1602 pc 18276
	beq	%x6, %x0, 12  #1605 pc 18280
	j	be_else.9335 #pc 18284
	nop #pc 18288
	addi	%x6, %x0, 0  #0 pc 18292
	j	be_cont.9336 #pc 18296
	nop #pc 18300
be_else.9335: #pc 18304
	lw	%x6, 20(%x2)  #1606 pc 18304
	flw	%f0, 0(%x6)  #1606 pc 18308
	fmv	%f1, l.6660  #0 pc 18312
	sw	%x1, 24(%x2)  #1606 pc 18316
	addi	%x2, %x2, 28  #1606 pc 18320
	jal	%x1, fless.2521  #1606 pc 18324
	addi	%x2, %x2, -28  #1606 pc 18328
	lw	%x1, 24(%x2) #1606 pc 18332
	beq	%x6, %x0, 12  #1606 pc 18336
	j	be_else.9337 #pc 18340
	nop #pc 18344
	addi	%x6, %x0, 0  #0 pc 18348
	j	be_cont.9338 #pc 18352
	nop #pc 18356
be_else.9337: #pc 18360
	addi	%x6, %x0, 1  #0 pc 18360
	lw	%x7, 0(%x2)  #1607 pc 18364
	lw	%x29, 4(%x2)  #1607 pc 18368
	sw	%x1, 24(%x2)  #1607 pc 18372
	lw	%x30, 0(%x29)  #1607 pc 18376
	addi	%x2, %x2, 28  #1607 pc 18380
	jalr	%x1, %x30, 0  #1607 pc 18384
	addi	%x2, %x2, -28  #1607 pc 18388
	lw	%x1, 24(%x2)  #1607 pc 18392
	beq	%x6, %x0, 12  #1607 pc 18396
	j	be_else.9339 #pc 18400
	nop #pc 18404
	addi	%x6, %x0, 0  #0 pc 18408
	j	be_cont.9340 #pc 18412
	nop #pc 18416
be_else.9339: #pc 18420
	addi	%x6, %x0, 1  #0 pc 18420
be_cont.9340: #pc 18424
be_cont.9338: #pc 18424
be_cont.9336: #pc 18424
be_cont.9334: #pc 18424
	beq	%x6, %x0, 12  #1598 pc 18424
	j	be_else.9341 #pc 18428
	nop #pc 18432
	lw	%x6, 16(%x2)  #1618 pc 18436
	addi	%x6, %x6, 1  #1618 pc 18440
	lw	%x7, 8(%x2)  #1618 pc 18444
	lw	%x29, 12(%x2)  #1618 pc 18448
	lw	%x30, 0(%x29)  #1618 pc 18452
	jalr	%x0, %x30, 0  #1618 pc 18456
	nop #pc 18460
be_else.9341: #pc 18464
	addi	%x6, %x0, 1  #0 pc 18464
	lw	%x7, 0(%x2)  #1613 pc 18468
	lw	%x29, 4(%x2)  #1613 pc 18472
	sw	%x1, 24(%x2)  #1613 pc 18476
	lw	%x30, 0(%x29)  #1613 pc 18480
	addi	%x2, %x2, 28  #1613 pc 18484
	jalr	%x1, %x30, 0  #1613 pc 18488
	addi	%x2, %x2, -28  #1613 pc 18492
	lw	%x1, 24(%x2)  #1613 pc 18496
	beq	%x6, %x0, 12  #1613 pc 18500
	j	be_else.9342 #pc 18504
	nop #pc 18508
	lw	%x6, 16(%x2)  #1616 pc 18512
	addi	%x6, %x6, 1  #1616 pc 18516
	lw	%x7, 8(%x2)  #1616 pc 18520
	lw	%x29, 12(%x2)  #1616 pc 18524
	lw	%x30, 0(%x29)  #1616 pc 18528
	jalr	%x0, %x30, 0  #1616 pc 18532
	nop #pc 18536
be_else.9342: #pc 18540
	addi	%x6, %x0, 1  #0 pc 18540
	ret #pc 18544
	nop #pc 18548
solve_each_element.2891:  #pc 18552
	lw	%x9, 36(%x29)  #1629 pc 18552
	lw	%x10, 32(%x29)  #1629 pc 18556
	lw	%x11, 28(%x29)  #1629 pc 18560
	lw	%x12, 24(%x29)  #1629 pc 18564
	lw	%x13, 20(%x29)  #1629 pc 18568
	lw	%x14, 16(%x29)  #1629 pc 18572
	lw	%x15, 12(%x29)  #1629 pc 18576
	lw	%x16, 8(%x29)  #1629 pc 18580
	lw	%x17, 4(%x29)  #1629 pc 18584
	slli	%x18, %x6, 2  #1629 pc 18588
	add	%x31, %x18, %x7  #1629 pc 18592
	lw	%x18, 0(%x31)  #1629 pc 18596
	addi	%x31, %x0, -1  #pc 18600
	beq	%x18, %x31, 12  #1630 pc 18604
	j	be_else.9343 #pc 18608
	nop #pc 18612
	ret #pc 18616
	nop #pc 18620
be_else.9343: #pc 18624
	sw	%x14, 0(%x2)  #1632 pc 18624
	sw	%x16, 4(%x2)  #1632 pc 18628
	sw	%x15, 8(%x2)  #1632 pc 18632
	sw	%x17, 12(%x2)  #1632 pc 18636
	sw	%x10, 16(%x2)  #1632 pc 18640
	sw	%x9, 20(%x2)  #1632 pc 18644
	sw	%x11, 24(%x2)  #1632 pc 18648
	sw	%x8, 28(%x2)  #1632 pc 18652
	sw	%x7, 32(%x2)  #1632 pc 18656
	sw	%x29, 36(%x2)  #1632 pc 18660
	sw	%x6, 40(%x2)  #1632 pc 18664
	sw	%x13, 44(%x2)  #1632 pc 18668
	sw	%x18, 48(%x2)  #1632 pc 18672
	addi	%x7, %x8, 0  #0 pc 18676
	addi	%x6, %x18, 0  #0 pc 18680
	addi	%x29, %x12, 0  #0 pc 18684
	addi	%x8, %x10, 0  #0 pc 18688
	sw	%x1, 52(%x2)  #1632 pc 18692
	lw	%x30, 0(%x29)  #1632 pc 18696
	addi	%x2, %x2, 56  #1632 pc 18700
	jalr	%x1, %x30, 0  #1632 pc 18704
	addi	%x2, %x2, -56  #1632 pc 18708
	lw	%x1, 52(%x2)  #1632 pc 18712
	beq	%x6, %x0, 12  #1633 pc 18716
	j	be_else.9345 #pc 18720
	nop #pc 18724
	lw	%x6, 48(%x2)  #1661 pc 18728
	slli	%x6, %x6, 2  #1661 pc 18732
	lw	%x7, 44(%x2)  #1661 pc 18736
	add	%x31, %x6, %x7  #1661 pc 18740
	lw	%x6, 0(%x31)  #1661 pc 18744
	sw	%x1, 52(%x2)  #1661 pc 18748
	addi	%x2, %x2, 56  #1661 pc 18752
	jal	%x1, o_isinvert.2665  #1661 pc 18756
	addi	%x2, %x2, -56  #1661 pc 18760
	lw	%x1, 52(%x2) #1661 pc 18764
	beq	%x6, %x0, 12  #1661 pc 18768
	j	be_else.9346 #pc 18772
	nop #pc 18776
	ret #pc 18780
	nop #pc 18784
be_else.9346: #pc 18788
	lw	%x6, 40(%x2)  #1662 pc 18788
	addi	%x6, %x6, 1  #1662 pc 18792
	lw	%x7, 32(%x2)  #1662 pc 18796
	lw	%x8, 28(%x2)  #1662 pc 18800
	lw	%x29, 36(%x2)  #1662 pc 18804
	lw	%x30, 0(%x29)  #1662 pc 18808
	jalr	%x0, %x30, 0  #1662 pc 18812
	nop #pc 18816
be_else.9345: #pc 18820
	lw	%x7, 24(%x2)  #1637 pc 18820
	flw	%f1, 0(%x7)  #1637 pc 18824
	fmv	%f0, l.6244  #0 pc 18828
	sw	%x6, 52(%x2)  #1639 pc 18832
	fsw	%f1, 56(%x2)  #1639 pc 18836
	sw	%x1, 64(%x2)  #1639 pc 18840
	addi	%x2, %x2, 68  #1639 pc 18844
	jal	%x1, fless.2521  #1639 pc 18848
	addi	%x2, %x2, -68  #1639 pc 18852
	lw	%x1, 64(%x2) #1639 pc 18856
	beq	%x6, %x0, 12  #1639 pc 18860
	j	be_else.9348 #pc 18864
	nop #pc 18868
	j	be_cont.9349 #pc 18872
	nop #pc 18876
be_else.9348: #pc 18880
	lw	%x6, 20(%x2)  #1640 pc 18880
	flw	%f1, 0(%x6)  #1640 pc 18884
	flw	%f0, 56(%x2)  #1640 pc 18888
	sw	%x1, 64(%x2)  #1640 pc 18892
	addi	%x2, %x2, 68  #1640 pc 18896
	jal	%x1, fless.2521  #1640 pc 18900
	addi	%x2, %x2, -68  #1640 pc 18904
	lw	%x1, 64(%x2) #1640 pc 18908
	beq	%x6, %x0, 12  #1640 pc 18912
	j	be_else.9350 #pc 18916
	nop #pc 18920
	j	be_cont.9351 #pc 18924
	nop #pc 18928
be_else.9350: #pc 18932
	fmv	%f0, l.6646  #0 pc 18932
	flw	%f1, 56(%x2)  #1642 pc 18936
	fadd	%f0, %f1, %f0  #1642 pc 18940
	lw	%x6, 28(%x2)  #1643 pc 18944
	flw	%f1, 0(%x6)  #1643 pc 18948
	fmul	%f1, %f1, %f0  #1643 pc 18952
	lw	%x7, 16(%x2)  #1643 pc 18956
	flw	%f2, 0(%x7)  #1643 pc 18960
	fadd	%f1, %f1, %f2  #1643 pc 18964
	flw	%f2, 4(%x6)  #1644 pc 18968
	fmul	%f2, %f2, %f0  #1644 pc 18972
	flw	%f3, 4(%x7)  #1644 pc 18976
	fadd	%f2, %f2, %f3  #1644 pc 18980
	flw	%f3, 8(%x6)  #1645 pc 18984
	fmul	%f3, %f3, %f0  #1645 pc 18988
	flw	%f4, 8(%x7)  #1645 pc 18992
	fadd	%f3, %f3, %f4  #1645 pc 18996
	addi	%x7, %x0, 0  #0 pc 19000
	lw	%x8, 32(%x2)  #1646 pc 19004
	lw	%x29, 12(%x2)  #1646 pc 19008
	fsw	%f3, 64(%x2)  #1646 pc 19012
	fsw	%f2, 72(%x2)  #1646 pc 19016
	fsw	%f1, 80(%x2)  #1646 pc 19020
	fsw	%f0, 88(%x2)  #1646 pc 19024
	addi	%x6, %x7, 0  #0 pc 19028
	addi	%x7, %x8, 0  #0 pc 19032
	fadd	%f0, %f1, %f30  #0 pc 19036
	fadd	%f1, %f2, %f30  #0 pc 19040
	fadd	%f2, %f3, %f30  #0 pc 19044
	sw	%x1, 96(%x2)  #1646 pc 19048
	lw	%x30, 0(%x29)  #1646 pc 19052
	addi	%x2, %x2, 100  #1646 pc 19056
	jalr	%x1, %x30, 0  #1646 pc 19060
	addi	%x2, %x2, -100  #1646 pc 19064
	lw	%x1, 96(%x2)  #1646 pc 19068
	beq	%x6, %x0, 12  #1646 pc 19072
	j	be_else.9352 #pc 19076
	nop #pc 19080
	j	be_cont.9353 #pc 19084
	nop #pc 19088
be_else.9352: #pc 19092
	lw	%x6, 20(%x2)  #1648 pc 19092
	flw	%f0, 88(%x2)  #1648 pc 19096
	fsw	%f0, 0(%x6)  #1648 pc 19100
	flw	%f0, 80(%x2)  #1649 pc 19104
	flw	%f1, 72(%x2)  #1649 pc 19108
	flw	%f2, 64(%x2)  #1649 pc 19112
	lw	%x6, 8(%x2)  #1649 pc 19116
	sw	%x1, 96(%x2)  #1649 pc 19120
	addi	%x2, %x2, 100  #1649 pc 19124
	jal	%x1, vecset.2621  #1649 pc 19128
	addi	%x2, %x2, -100  #1649 pc 19132
	lw	%x1, 96(%x2) #1649 pc 19136
	lw	%x6, 4(%x2)  #1650 pc 19140
	lw	%x7, 48(%x2)  #1650 pc 19144
	sw	%x7, 0(%x6)  #1650 pc 19148
	lw	%x6, 0(%x2)  #1651 pc 19152
	lw	%x7, 52(%x2)  #1651 pc 19156
	sw	%x7, 0(%x6)  #1651 pc 19160
be_cont.9353: #pc 19164
be_cont.9351: #pc 19164
be_cont.9349: #pc 19164
	lw	%x6, 40(%x2)  #1657 pc 19164
	addi	%x6, %x6, 1  #1657 pc 19168
	lw	%x7, 32(%x2)  #1657 pc 19172
	lw	%x8, 28(%x2)  #1657 pc 19176
	lw	%x29, 36(%x2)  #1657 pc 19180
	lw	%x30, 0(%x29)  #1657 pc 19184
	jalr	%x0, %x30, 0  #1657 pc 19188
	nop #pc 19192
solve_one_or_network.2895:  #pc 19196
	lw	%x9, 8(%x29)  #1670 pc 19196
	lw	%x10, 4(%x29)  #1670 pc 19200
	slli	%x11, %x6, 2  #1670 pc 19204
	add	%x31, %x11, %x7  #1670 pc 19208
	lw	%x11, 0(%x31)  #1670 pc 19212
	addi	%x31, %x0, -1  #pc 19216
	beq	%x11, %x31, 12  #1671 pc 19220
	j	be_else.9354 #pc 19224
	nop #pc 19228
	ret #pc 19232
	nop #pc 19236
be_else.9354: #pc 19240
	slli	%x11, %x11, 2  #1672 pc 19240
	add	%x31, %x11, %x10  #1672 pc 19244
	lw	%x10, 0(%x31)  #1672 pc 19248
	addi	%x11, %x0, 0  #0 pc 19252
	sw	%x8, 0(%x2)  #1673 pc 19256
	sw	%x7, 4(%x2)  #1673 pc 19260
	sw	%x29, 8(%x2)  #1673 pc 19264
	sw	%x6, 12(%x2)  #1673 pc 19268
	addi	%x7, %x10, 0  #0 pc 19272
	addi	%x6, %x11, 0  #0 pc 19276
	addi	%x29, %x9, 0  #0 pc 19280
	sw	%x1, 16(%x2)  #1673 pc 19284
	lw	%x30, 0(%x29)  #1673 pc 19288
	addi	%x2, %x2, 20  #1673 pc 19292
	jalr	%x1, %x30, 0  #1673 pc 19296
	addi	%x2, %x2, -20  #1673 pc 19300
	lw	%x1, 16(%x2)  #1673 pc 19304
	lw	%x6, 12(%x2)  #1674 pc 19308
	addi	%x6, %x6, 1  #1674 pc 19312
	lw	%x7, 4(%x2)  #1674 pc 19316
	lw	%x8, 0(%x2)  #1674 pc 19320
	lw	%x29, 8(%x2)  #1674 pc 19324
	lw	%x30, 0(%x29)  #1674 pc 19328
	jalr	%x0, %x30, 0  #1674 pc 19332
	nop #pc 19336
trace_or_matrix.2899:  #pc 19340
	lw	%x9, 20(%x29)  #1680 pc 19340
	lw	%x10, 16(%x29)  #1680 pc 19344
	lw	%x11, 12(%x29)  #1680 pc 19348
	lw	%x12, 8(%x29)  #1680 pc 19352
	lw	%x13, 4(%x29)  #1680 pc 19356
	slli	%x14, %x6, 2  #1680 pc 19360
	add	%x31, %x14, %x7  #1680 pc 19364
	lw	%x14, 0(%x31)  #1680 pc 19368
	lw	%x15, 0(%x14)  #1681 pc 19372
	addi	%x31, %x0, -1  #pc 19376
	beq	%x15, %x31, 12  #1682 pc 19380
	j	be_else.9356 #pc 19384
	nop #pc 19388
	ret #pc 19392
	nop #pc 19396
be_else.9356: #pc 19400
	sw	%x8, 0(%x2)  #1685 pc 19400
	sw	%x7, 4(%x2)  #1685 pc 19404
	sw	%x29, 8(%x2)  #1685 pc 19408
	sw	%x6, 12(%x2)  #1685 pc 19412
	addi	%x31, %x0, 99  #pc 19416
	beq	%x15, %x31, 12  #1685 pc 19420
	j	be_else.9358 #pc 19424
	nop #pc 19428
	addi	%x9, %x0, 1  #0 pc 19432
	addi	%x7, %x14, 0  #0 pc 19436
	addi	%x6, %x9, 0  #0 pc 19440
	addi	%x29, %x13, 0  #0 pc 19444
	sw	%x1, 16(%x2)  #1686 pc 19448
	lw	%x30, 0(%x29)  #1686 pc 19452
	addi	%x2, %x2, 20  #1686 pc 19456
	jalr	%x1, %x30, 0  #1686 pc 19460
	addi	%x2, %x2, -20  #1686 pc 19464
	lw	%x1, 16(%x2)  #1686 pc 19468
	j	be_cont.9359 #pc 19472
	nop #pc 19476
be_else.9358: #pc 19480
	sw	%x14, 16(%x2)  #1690 pc 19480
	sw	%x13, 20(%x2)  #1690 pc 19484
	sw	%x9, 24(%x2)  #1690 pc 19488
	sw	%x11, 28(%x2)  #1690 pc 19492
	addi	%x7, %x8, 0  #0 pc 19496
	addi	%x6, %x15, 0  #0 pc 19500
	addi	%x29, %x12, 0  #0 pc 19504
	addi	%x8, %x10, 0  #0 pc 19508
	sw	%x1, 32(%x2)  #1690 pc 19512
	lw	%x30, 0(%x29)  #1690 pc 19516
	addi	%x2, %x2, 36  #1690 pc 19520
	jalr	%x1, %x30, 0  #1690 pc 19524
	addi	%x2, %x2, -36  #1690 pc 19528
	lw	%x1, 32(%x2)  #1690 pc 19532
	beq	%x6, %x0, 12  #1691 pc 19536
	j	be_else.9360 #pc 19540
	nop #pc 19544
	j	be_cont.9361 #pc 19548
	nop #pc 19552
be_else.9360: #pc 19556
	lw	%x6, 28(%x2)  #1692 pc 19556
	flw	%f0, 0(%x6)  #1692 pc 19560
	lw	%x6, 24(%x2)  #1693 pc 19564
	flw	%f1, 0(%x6)  #1693 pc 19568
	sw	%x1, 32(%x2)  #1693 pc 19572
	addi	%x2, %x2, 36  #1693 pc 19576
	jal	%x1, fless.2521  #1693 pc 19580
	addi	%x2, %x2, -36  #1693 pc 19584
	lw	%x1, 32(%x2) #1693 pc 19588
	beq	%x6, %x0, 12  #1693 pc 19592
	j	be_else.9362 #pc 19596
	nop #pc 19600
	j	be_cont.9363 #pc 19604
	nop #pc 19608
be_else.9362: #pc 19612
	addi	%x6, %x0, 1  #0 pc 19612
	lw	%x7, 16(%x2)  #1694 pc 19616
	lw	%x8, 0(%x2)  #1694 pc 19620
	lw	%x29, 20(%x2)  #1694 pc 19624
	sw	%x1, 32(%x2)  #1694 pc 19628
	lw	%x30, 0(%x29)  #1694 pc 19632
	addi	%x2, %x2, 36  #1694 pc 19636
	jalr	%x1, %x30, 0  #1694 pc 19640
	addi	%x2, %x2, -36  #1694 pc 19644
	lw	%x1, 32(%x2)  #1694 pc 19648
be_cont.9363: #pc 19652
be_cont.9361: #pc 19652
be_cont.9359: #pc 19652
	lw	%x6, 12(%x2)  #1698 pc 19652
	addi	%x6, %x6, 1  #1698 pc 19656
	lw	%x7, 4(%x2)  #1698 pc 19660
	lw	%x8, 0(%x2)  #1698 pc 19664
	lw	%x29, 8(%x2)  #1698 pc 19668
	lw	%x30, 0(%x29)  #1698 pc 19672
	jalr	%x0, %x30, 0  #1698 pc 19676
	nop #pc 19680
judge_intersection.2903:  #pc 19684
	lw	%x7, 12(%x29)  #0 pc 19684
	lw	%x8, 8(%x29)  #0 pc 19688
	lw	%x9, 4(%x29)  #0 pc 19692
	fmv	%f0, l.6683  #0 pc 19696
	fsw	%f0, 0(%x8)  #1707 pc 19700
	addi	%x10, %x0, 0  #0 pc 19704
	lw	%x9, 0(%x9)  #1708 pc 19708
	sw	%x8, 0(%x2)  #1708 pc 19712
	addi	%x8, %x6, 0  #0 pc 19716
	addi	%x29, %x7, 0  #0 pc 19720
	addi	%x7, %x9, 0  #0 pc 19724
	addi	%x6, %x10, 0  #0 pc 19728
	sw	%x1, 4(%x2)  #1708 pc 19732
	lw	%x30, 0(%x29)  #1708 pc 19736
	addi	%x2, %x2, 8  #1708 pc 19740
	jalr	%x1, %x30, 0  #1708 pc 19744
	addi	%x2, %x2, -8  #1708 pc 19748
	lw	%x1, 4(%x2)  #1708 pc 19752
	lw	%x6, 0(%x2)  #1709 pc 19756
	flw	%f1, 0(%x6)  #1709 pc 19760
	fmv	%f0, l.6660  #0 pc 19764
	fsw	%f1, 8(%x2)  #1711 pc 19768
	sw	%x1, 16(%x2)  #1711 pc 19772
	addi	%x2, %x2, 20  #1711 pc 19776
	jal	%x1, fless.2521  #1711 pc 19780
	addi	%x2, %x2, -20  #1711 pc 19784
	lw	%x1, 16(%x2) #1711 pc 19788
	beq	%x6, %x0, 12  #1711 pc 19792
	j	be_else.9365 #pc 19796
	nop #pc 19800
	addi	%x6, %x0, 0  #0 pc 19804
	ret #pc 19808
	nop #pc 19812
be_else.9365: #pc 19816
	fmv	%f1, l.6689  #0 pc 19816
	flw	%f0, 8(%x2)  #1712 pc 19820
	j	fless.2521  #1712 pc 19824
	nop #pc 19828
solve_each_element_fast.2905:  #pc 19832
	lw	%x9, 36(%x29)  #1722 pc 19832
	lw	%x10, 32(%x29)  #1722 pc 19836
	lw	%x11, 28(%x29)  #1722 pc 19840
	lw	%x12, 24(%x29)  #1722 pc 19844
	lw	%x13, 20(%x29)  #1722 pc 19848
	lw	%x14, 16(%x29)  #1722 pc 19852
	lw	%x15, 12(%x29)  #1722 pc 19856
	lw	%x16, 8(%x29)  #1722 pc 19860
	lw	%x17, 4(%x29)  #1722 pc 19864
	sw	%x14, 0(%x2)  #1722 pc 19868
	sw	%x16, 4(%x2)  #1722 pc 19872
	sw	%x15, 8(%x2)  #1722 pc 19876
	sw	%x17, 12(%x2)  #1722 pc 19880
	sw	%x10, 16(%x2)  #1722 pc 19884
	sw	%x9, 20(%x2)  #1722 pc 19888
	sw	%x12, 24(%x2)  #1722 pc 19892
	sw	%x29, 28(%x2)  #1722 pc 19896
	sw	%x13, 32(%x2)  #1722 pc 19900
	sw	%x8, 36(%x2)  #1722 pc 19904
	sw	%x11, 40(%x2)  #1722 pc 19908
	sw	%x7, 44(%x2)  #1722 pc 19912
	sw	%x6, 48(%x2)  #1722 pc 19916
	addi	%x6, %x8, 0  #0 pc 19920
	sw	%x1, 52(%x2)  #1722 pc 19924
	addi	%x2, %x2, 56  #1722 pc 19928
	jal	%x1, d_vec.2720  #1722 pc 19932
	addi	%x2, %x2, -56  #1722 pc 19936
	lw	%x1, 52(%x2) #1722 pc 19940
	lw	%x7, 48(%x2)  #1723 pc 19944
	slli	%x8, %x7, 2  #1723 pc 19948
	lw	%x9, 44(%x2)  #1723 pc 19952
	add	%x31, %x8, %x9  #1723 pc 19956
	lw	%x8, 0(%x31)  #1723 pc 19960
	addi	%x31, %x0, -1  #pc 19964
	beq	%x8, %x31, 12  #1724 pc 19968
	j	be_else.9366 #pc 19972
	nop #pc 19976
	ret #pc 19980
	nop #pc 19984
be_else.9366: #pc 19988
	lw	%x10, 36(%x2)  #1726 pc 19988
	lw	%x29, 40(%x2)  #1726 pc 19992
	sw	%x6, 52(%x2)  #1726 pc 19996
	sw	%x8, 56(%x2)  #1726 pc 20000
	addi	%x7, %x10, 0  #0 pc 20004
	addi	%x6, %x8, 0  #0 pc 20008
	sw	%x1, 60(%x2)  #1726 pc 20012
	lw	%x30, 0(%x29)  #1726 pc 20016
	addi	%x2, %x2, 64  #1726 pc 20020
	jalr	%x1, %x30, 0  #1726 pc 20024
	addi	%x2, %x2, -64  #1726 pc 20028
	lw	%x1, 60(%x2)  #1726 pc 20032
	beq	%x6, %x0, 12  #1727 pc 20036
	j	be_else.9368 #pc 20040
	nop #pc 20044
	lw	%x6, 56(%x2)  #1755 pc 20048
	slli	%x6, %x6, 2  #1755 pc 20052
	lw	%x7, 32(%x2)  #1755 pc 20056
	add	%x31, %x6, %x7  #1755 pc 20060
	lw	%x6, 0(%x31)  #1755 pc 20064
	sw	%x1, 60(%x2)  #1755 pc 20068
	addi	%x2, %x2, 64  #1755 pc 20072
	jal	%x1, o_isinvert.2665  #1755 pc 20076
	addi	%x2, %x2, -64  #1755 pc 20080
	lw	%x1, 60(%x2) #1755 pc 20084
	beq	%x6, %x0, 12  #1755 pc 20088
	j	be_else.9369 #pc 20092
	nop #pc 20096
	ret #pc 20100
	nop #pc 20104
be_else.9369: #pc 20108
	lw	%x6, 48(%x2)  #1756 pc 20108
	addi	%x6, %x6, 1  #1756 pc 20112
	lw	%x7, 44(%x2)  #1756 pc 20116
	lw	%x8, 36(%x2)  #1756 pc 20120
	lw	%x29, 28(%x2)  #1756 pc 20124
	lw	%x30, 0(%x29)  #1756 pc 20128
	jalr	%x0, %x30, 0  #1756 pc 20132
	nop #pc 20136
be_else.9368: #pc 20140
	lw	%x7, 24(%x2)  #1731 pc 20140
	flw	%f1, 0(%x7)  #1731 pc 20144
	fmv	%f0, l.6244  #0 pc 20148
	sw	%x6, 60(%x2)  #1733 pc 20152
	fsw	%f1, 64(%x2)  #1733 pc 20156
	sw	%x1, 72(%x2)  #1733 pc 20160
	addi	%x2, %x2, 76  #1733 pc 20164
	jal	%x1, fless.2521  #1733 pc 20168
	addi	%x2, %x2, -76  #1733 pc 20172
	lw	%x1, 72(%x2) #1733 pc 20176
	beq	%x6, %x0, 12  #1733 pc 20180
	j	be_else.9371 #pc 20184
	nop #pc 20188
	j	be_cont.9372 #pc 20192
	nop #pc 20196
be_else.9371: #pc 20200
	lw	%x6, 20(%x2)  #1734 pc 20200
	flw	%f1, 0(%x6)  #1734 pc 20204
	flw	%f0, 64(%x2)  #1734 pc 20208
	sw	%x1, 72(%x2)  #1734 pc 20212
	addi	%x2, %x2, 76  #1734 pc 20216
	jal	%x1, fless.2521  #1734 pc 20220
	addi	%x2, %x2, -76  #1734 pc 20224
	lw	%x1, 72(%x2) #1734 pc 20228
	beq	%x6, %x0, 12  #1734 pc 20232
	j	be_else.9373 #pc 20236
	nop #pc 20240
	j	be_cont.9374 #pc 20244
	nop #pc 20248
be_else.9373: #pc 20252
	fmv	%f0, l.6646  #0 pc 20252
	flw	%f1, 64(%x2)  #1736 pc 20256
	fadd	%f0, %f1, %f0  #1736 pc 20260
	lw	%x6, 52(%x2)  #1737 pc 20264
	flw	%f1, 0(%x6)  #1737 pc 20268
	fmul	%f1, %f1, %f0  #1737 pc 20272
	lw	%x7, 16(%x2)  #1737 pc 20276
	flw	%f2, 0(%x7)  #1737 pc 20280
	fadd	%f1, %f1, %f2  #1737 pc 20284
	flw	%f2, 4(%x6)  #1738 pc 20288
	fmul	%f2, %f2, %f0  #1738 pc 20292
	flw	%f3, 4(%x7)  #1738 pc 20296
	fadd	%f2, %f2, %f3  #1738 pc 20300
	flw	%f3, 8(%x6)  #1739 pc 20304
	fmul	%f3, %f3, %f0  #1739 pc 20308
	flw	%f4, 8(%x7)  #1739 pc 20312
	fadd	%f3, %f3, %f4  #1739 pc 20316
	addi	%x6, %x0, 0  #0 pc 20320
	lw	%x7, 44(%x2)  #1740 pc 20324
	lw	%x29, 12(%x2)  #1740 pc 20328
	fsw	%f3, 72(%x2)  #1740 pc 20332
	fsw	%f2, 80(%x2)  #1740 pc 20336
	fsw	%f1, 88(%x2)  #1740 pc 20340
	fsw	%f0, 96(%x2)  #1740 pc 20344
	fadd	%f0, %f1, %f30  #0 pc 20348
	fadd	%f1, %f2, %f30  #0 pc 20352
	fadd	%f2, %f3, %f30  #0 pc 20356
	sw	%x1, 104(%x2)  #1740 pc 20360
	lw	%x30, 0(%x29)  #1740 pc 20364
	addi	%x2, %x2, 108  #1740 pc 20368
	jalr	%x1, %x30, 0  #1740 pc 20372
	addi	%x2, %x2, -108  #1740 pc 20376
	lw	%x1, 104(%x2)  #1740 pc 20380
	beq	%x6, %x0, 12  #1740 pc 20384
	j	be_else.9375 #pc 20388
	nop #pc 20392
	j	be_cont.9376 #pc 20396
	nop #pc 20400
be_else.9375: #pc 20404
	lw	%x6, 20(%x2)  #1742 pc 20404
	flw	%f0, 96(%x2)  #1742 pc 20408
	fsw	%f0, 0(%x6)  #1742 pc 20412
	flw	%f0, 88(%x2)  #1743 pc 20416
	flw	%f1, 80(%x2)  #1743 pc 20420
	flw	%f2, 72(%x2)  #1743 pc 20424
	lw	%x6, 8(%x2)  #1743 pc 20428
	sw	%x1, 104(%x2)  #1743 pc 20432
	addi	%x2, %x2, 108  #1743 pc 20436
	jal	%x1, vecset.2621  #1743 pc 20440
	addi	%x2, %x2, -108  #1743 pc 20444
	lw	%x1, 104(%x2) #1743 pc 20448
	lw	%x6, 4(%x2)  #1744 pc 20452
	lw	%x7, 56(%x2)  #1744 pc 20456
	sw	%x7, 0(%x6)  #1744 pc 20460
	lw	%x6, 0(%x2)  #1745 pc 20464
	lw	%x7, 60(%x2)  #1745 pc 20468
	sw	%x7, 0(%x6)  #1745 pc 20472
be_cont.9376: #pc 20476
be_cont.9374: #pc 20476
be_cont.9372: #pc 20476
	lw	%x6, 48(%x2)  #1751 pc 20476
	addi	%x6, %x6, 1  #1751 pc 20480
	lw	%x7, 44(%x2)  #1751 pc 20484
	lw	%x8, 36(%x2)  #1751 pc 20488
	lw	%x29, 28(%x2)  #1751 pc 20492
	lw	%x30, 0(%x29)  #1751 pc 20496
	jalr	%x0, %x30, 0  #1751 pc 20500
	nop #pc 20504
solve_one_or_network_fast.2909:  #pc 20508
	lw	%x9, 8(%x29)  #1763 pc 20508
	lw	%x10, 4(%x29)  #1763 pc 20512
	slli	%x11, %x6, 2  #1763 pc 20516
	add	%x31, %x11, %x7  #1763 pc 20520
	lw	%x11, 0(%x31)  #1763 pc 20524
	addi	%x31, %x0, -1  #pc 20528
	beq	%x11, %x31, 12  #1764 pc 20532
	j	be_else.9377 #pc 20536
	nop #pc 20540
	ret #pc 20544
	nop #pc 20548
be_else.9377: #pc 20552
	slli	%x11, %x11, 2  #1765 pc 20552
	add	%x31, %x11, %x10  #1765 pc 20556
	lw	%x10, 0(%x31)  #1765 pc 20560
	addi	%x11, %x0, 0  #0 pc 20564
	sw	%x8, 0(%x2)  #1766 pc 20568
	sw	%x7, 4(%x2)  #1766 pc 20572
	sw	%x29, 8(%x2)  #1766 pc 20576
	sw	%x6, 12(%x2)  #1766 pc 20580
	addi	%x7, %x10, 0  #0 pc 20584
	addi	%x6, %x11, 0  #0 pc 20588
	addi	%x29, %x9, 0  #0 pc 20592
	sw	%x1, 16(%x2)  #1766 pc 20596
	lw	%x30, 0(%x29)  #1766 pc 20600
	addi	%x2, %x2, 20  #1766 pc 20604
	jalr	%x1, %x30, 0  #1766 pc 20608
	addi	%x2, %x2, -20  #1766 pc 20612
	lw	%x1, 16(%x2)  #1766 pc 20616
	lw	%x6, 12(%x2)  #1767 pc 20620
	addi	%x6, %x6, 1  #1767 pc 20624
	lw	%x7, 4(%x2)  #1767 pc 20628
	lw	%x8, 0(%x2)  #1767 pc 20632
	lw	%x29, 8(%x2)  #1767 pc 20636
	lw	%x30, 0(%x29)  #1767 pc 20640
	jalr	%x0, %x30, 0  #1767 pc 20644
	nop #pc 20648
trace_or_matrix_fast.2913:  #pc 20652
	lw	%x9, 16(%x29)  #1773 pc 20652
	lw	%x10, 12(%x29)  #1773 pc 20656
	lw	%x11, 8(%x29)  #1773 pc 20660
	lw	%x12, 4(%x29)  #1773 pc 20664
	slli	%x13, %x6, 2  #1773 pc 20668
	add	%x31, %x13, %x7  #1773 pc 20672
	lw	%x13, 0(%x31)  #1773 pc 20676
	lw	%x14, 0(%x13)  #1774 pc 20680
	addi	%x31, %x0, -1  #pc 20684
	beq	%x14, %x31, 12  #1775 pc 20688
	j	be_else.9379 #pc 20692
	nop #pc 20696
	ret #pc 20700
	nop #pc 20704
be_else.9379: #pc 20708
	sw	%x8, 0(%x2)  #1778 pc 20708
	sw	%x7, 4(%x2)  #1778 pc 20712
	sw	%x29, 8(%x2)  #1778 pc 20716
	sw	%x6, 12(%x2)  #1778 pc 20720
	addi	%x31, %x0, 99  #pc 20724
	beq	%x14, %x31, 12  #1778 pc 20728
	j	be_else.9381 #pc 20732
	nop #pc 20736
	addi	%x9, %x0, 1  #0 pc 20740
	addi	%x7, %x13, 0  #0 pc 20744
	addi	%x6, %x9, 0  #0 pc 20748
	addi	%x29, %x12, 0  #0 pc 20752
	sw	%x1, 16(%x2)  #1779 pc 20756
	lw	%x30, 0(%x29)  #1779 pc 20760
	addi	%x2, %x2, 20  #1779 pc 20764
	jalr	%x1, %x30, 0  #1779 pc 20768
	addi	%x2, %x2, -20  #1779 pc 20772
	lw	%x1, 16(%x2)  #1779 pc 20776
	j	be_cont.9382 #pc 20780
	nop #pc 20784
be_else.9381: #pc 20788
	sw	%x13, 16(%x2)  #1783 pc 20788
	sw	%x12, 20(%x2)  #1783 pc 20792
	sw	%x9, 24(%x2)  #1783 pc 20796
	sw	%x11, 28(%x2)  #1783 pc 20800
	addi	%x7, %x8, 0  #0 pc 20804
	addi	%x6, %x14, 0  #0 pc 20808
	addi	%x29, %x10, 0  #0 pc 20812
	sw	%x1, 32(%x2)  #1783 pc 20816
	lw	%x30, 0(%x29)  #1783 pc 20820
	addi	%x2, %x2, 36  #1783 pc 20824
	jalr	%x1, %x30, 0  #1783 pc 20828
	addi	%x2, %x2, -36  #1783 pc 20832
	lw	%x1, 32(%x2)  #1783 pc 20836
	beq	%x6, %x0, 12  #1784 pc 20840
	j	be_else.9383 #pc 20844
	nop #pc 20848
	j	be_cont.9384 #pc 20852
	nop #pc 20856
be_else.9383: #pc 20860
	lw	%x6, 28(%x2)  #1785 pc 20860
	flw	%f0, 0(%x6)  #1785 pc 20864
	lw	%x6, 24(%x2)  #1786 pc 20868
	flw	%f1, 0(%x6)  #1786 pc 20872
	sw	%x1, 32(%x2)  #1786 pc 20876
	addi	%x2, %x2, 36  #1786 pc 20880
	jal	%x1, fless.2521  #1786 pc 20884
	addi	%x2, %x2, -36  #1786 pc 20888
	lw	%x1, 32(%x2) #1786 pc 20892
	beq	%x6, %x0, 12  #1786 pc 20896
	j	be_else.9385 #pc 20900
	nop #pc 20904
	j	be_cont.9386 #pc 20908
	nop #pc 20912
be_else.9385: #pc 20916
	addi	%x6, %x0, 1  #0 pc 20916
	lw	%x7, 16(%x2)  #1787 pc 20920
	lw	%x8, 0(%x2)  #1787 pc 20924
	lw	%x29, 20(%x2)  #1787 pc 20928
	sw	%x1, 32(%x2)  #1787 pc 20932
	lw	%x30, 0(%x29)  #1787 pc 20936
	addi	%x2, %x2, 36  #1787 pc 20940
	jalr	%x1, %x30, 0  #1787 pc 20944
	addi	%x2, %x2, -36  #1787 pc 20948
	lw	%x1, 32(%x2)  #1787 pc 20952
be_cont.9386: #pc 20956
be_cont.9384: #pc 20956
be_cont.9382: #pc 20956
	lw	%x6, 12(%x2)  #1791 pc 20956
	addi	%x6, %x6, 1  #1791 pc 20960
	lw	%x7, 4(%x2)  #1791 pc 20964
	lw	%x8, 0(%x2)  #1791 pc 20968
	lw	%x29, 8(%x2)  #1791 pc 20972
	lw	%x30, 0(%x29)  #1791 pc 20976
	jalr	%x0, %x30, 0  #1791 pc 20980
	nop #pc 20984
judge_intersection_fast.2917:  #pc 20988
	lw	%x7, 12(%x29)  #0 pc 20988
	lw	%x8, 8(%x29)  #0 pc 20992
	lw	%x9, 4(%x29)  #0 pc 20996
	fmv	%f0, l.6683  #0 pc 21000
	fsw	%f0, 0(%x8)  #1798 pc 21004
	addi	%x10, %x0, 0  #0 pc 21008
	lw	%x9, 0(%x9)  #1799 pc 21012
	sw	%x8, 0(%x2)  #1799 pc 21016
	addi	%x8, %x6, 0  #0 pc 21020
	addi	%x29, %x7, 0  #0 pc 21024
	addi	%x7, %x9, 0  #0 pc 21028
	addi	%x6, %x10, 0  #0 pc 21032
	sw	%x1, 4(%x2)  #1799 pc 21036
	lw	%x30, 0(%x29)  #1799 pc 21040
	addi	%x2, %x2, 8  #1799 pc 21044
	jalr	%x1, %x30, 0  #1799 pc 21048
	addi	%x2, %x2, -8  #1799 pc 21052
	lw	%x1, 4(%x2)  #1799 pc 21056
	lw	%x6, 0(%x2)  #1800 pc 21060
	flw	%f1, 0(%x6)  #1800 pc 21064
	fmv	%f0, l.6660  #0 pc 21068
	fsw	%f1, 8(%x2)  #1802 pc 21072
	sw	%x1, 16(%x2)  #1802 pc 21076
	addi	%x2, %x2, 20  #1802 pc 21080
	jal	%x1, fless.2521  #1802 pc 21084
	addi	%x2, %x2, -20  #1802 pc 21088
	lw	%x1, 16(%x2) #1802 pc 21092
	beq	%x6, %x0, 12  #1802 pc 21096
	j	be_else.9388 #pc 21100
	nop #pc 21104
	addi	%x6, %x0, 0  #0 pc 21108
	ret #pc 21112
	nop #pc 21116
be_else.9388: #pc 21120
	fmv	%f1, l.6689  #0 pc 21120
	flw	%f0, 8(%x2)  #1803 pc 21124
	j	fless.2521  #1803 pc 21128
	nop #pc 21132
get_nvector_rect.2919:  #pc 21136
	lw	%x7, 8(%x29)  #0 pc 21136
	lw	%x8, 4(%x29)  #0 pc 21140
	lw	%x8, 0(%x8)  #1818 pc 21144
	sw	%x7, 0(%x2)  #1820 pc 21148
	sw	%x6, 4(%x2)  #1820 pc 21152
	sw	%x8, 8(%x2)  #1820 pc 21156
	addi	%x6, %x7, 0  #0 pc 21160
	sw	%x1, 12(%x2)  #1820 pc 21164
	addi	%x2, %x2, 16  #1820 pc 21168
	jal	%x1, vecbzero.2629  #1820 pc 21172
	addi	%x2, %x2, -16  #1820 pc 21176
	lw	%x1, 12(%x2) #1820 pc 21180
	lw	%x6, 8(%x2)  #1821 pc 21184
	addi	%x7, %x6, -1  #1821 pc 21188
	addi	%x6, %x6, -1  #1821 pc 21192
	slli	%x6, %x6, 2  #1821 pc 21196
	lw	%x8, 4(%x2)  #1821 pc 21200
	add	%x31, %x6, %x8  #1821 pc 21204
	flw	%f0, 0(%x31)  #1821 pc 21208
	sw	%x7, 12(%x2)  #1821 pc 21212
	sw	%x1, 16(%x2)  #1821 pc 21216
	addi	%x2, %x2, 20  #1821 pc 21220
	jal	%x1, sgn.2613  #1821 pc 21224
	addi	%x2, %x2, -20  #1821 pc 21228
	lw	%x1, 16(%x2) #1821 pc 21232
	sw	%x1, 16(%x2)  #1821 pc 21236
	addi	%x2, %x2, 20  #1821 pc 21240
	jal	%x1, fneg.2515  #1821 pc 21244
	addi	%x2, %x2, -20  #1821 pc 21248
	lw	%x1, 16(%x2) #1821 pc 21252
	lw	%x6, 12(%x2)  #1821 pc 21256
	slli	%x6, %x6, 2  #1821 pc 21260
	lw	%x7, 0(%x2)  #1821 pc 21264
	add	%x31, %x6, %x7  #1821 pc 21268
	fsw	%f0, 0(%x31) #1821 pc 21272
	ret #pc 21276
	nop #pc 21280
get_nvector_plane.2921:  #pc 21284
	lw	%x7, 4(%x29)  #0 pc 21284
	sw	%x6, 0(%x2)  #1827 pc 21288
	sw	%x7, 4(%x2)  #1827 pc 21292
	sw	%x1, 8(%x2)  #1827 pc 21296
	addi	%x2, %x2, 12  #1827 pc 21300
	jal	%x1, o_param_a.2669  #1827 pc 21304
	addi	%x2, %x2, -12  #1827 pc 21308
	lw	%x1, 8(%x2) #1827 pc 21312
	sw	%x1, 8(%x2)  #1827 pc 21316
	addi	%x2, %x2, 12  #1827 pc 21320
	jal	%x1, fneg.2515  #1827 pc 21324
	addi	%x2, %x2, -12  #1827 pc 21328
	lw	%x1, 8(%x2) #1827 pc 21332
	lw	%x6, 4(%x2)  #1827 pc 21336
	fsw	%f0, 0(%x6)  #1827 pc 21340
	lw	%x7, 0(%x2)  #1828 pc 21344
	addi	%x6, %x7, 0  #0 pc 21348
	sw	%x1, 8(%x2)  #1828 pc 21352
	addi	%x2, %x2, 12  #1828 pc 21356
	jal	%x1, o_param_b.2671  #1828 pc 21360
	addi	%x2, %x2, -12  #1828 pc 21364
	lw	%x1, 8(%x2) #1828 pc 21368
	sw	%x1, 8(%x2)  #1828 pc 21372
	addi	%x2, %x2, 12  #1828 pc 21376
	jal	%x1, fneg.2515  #1828 pc 21380
	addi	%x2, %x2, -12  #1828 pc 21384
	lw	%x1, 8(%x2) #1828 pc 21388
	lw	%x6, 4(%x2)  #1828 pc 21392
	fsw	%f0, 4(%x6)  #1828 pc 21396
	lw	%x7, 0(%x2)  #1829 pc 21400
	addi	%x6, %x7, 0  #0 pc 21404
	sw	%x1, 8(%x2)  #1829 pc 21408
	addi	%x2, %x2, 12  #1829 pc 21412
	jal	%x1, o_param_c.2673  #1829 pc 21416
	addi	%x2, %x2, -12  #1829 pc 21420
	lw	%x1, 8(%x2) #1829 pc 21424
	sw	%x1, 8(%x2)  #1829 pc 21428
	addi	%x2, %x2, 12  #1829 pc 21432
	jal	%x1, fneg.2515  #1829 pc 21436
	addi	%x2, %x2, -12  #1829 pc 21440
	lw	%x1, 8(%x2) #1829 pc 21444
	lw	%x6, 4(%x2)  #1829 pc 21448
	fsw	%f0, 8(%x6)  #1829 pc 21452
	ret #pc 21456
	nop #pc 21460
get_nvector_second.2923:  #pc 21464
	lw	%x7, 8(%x29)  #0 pc 21464
	lw	%x8, 4(%x29)  #0 pc 21468
	flw	%f0, 0(%x8)  #1834 pc 21472
	sw	%x7, 0(%x2)  #1834 pc 21476
	sw	%x6, 4(%x2)  #1834 pc 21480
	sw	%x8, 8(%x2)  #1834 pc 21484
	fsw	%f0, 16(%x2)  #1834 pc 21488
	sw	%x1, 24(%x2)  #1834 pc 21492
	addi	%x2, %x2, 28  #1834 pc 21496
	jal	%x1, o_param_x.2677  #1834 pc 21500
	addi	%x2, %x2, -28  #1834 pc 21504
	lw	%x1, 24(%x2) #1834 pc 21508
	flw	%f1, 16(%x2)  #1834 pc 21512
	fsub	%f0, %f1, %f0  #1834 pc 21516
	lw	%x6, 8(%x2)  #1835 pc 21520
	flw	%f1, 4(%x6)  #1835 pc 21524
	lw	%x7, 4(%x2)  #1835 pc 21528
	fsw	%f0, 24(%x2)  #1835 pc 21532
	fsw	%f1, 32(%x2)  #1835 pc 21536
	addi	%x6, %x7, 0  #0 pc 21540
	sw	%x1, 40(%x2)  #1835 pc 21544
	addi	%x2, %x2, 44  #1835 pc 21548
	jal	%x1, o_param_y.2679  #1835 pc 21552
	addi	%x2, %x2, -44  #1835 pc 21556
	lw	%x1, 40(%x2) #1835 pc 21560
	flw	%f1, 32(%x2)  #1835 pc 21564
	fsub	%f0, %f1, %f0  #1835 pc 21568
	lw	%x6, 8(%x2)  #1836 pc 21572
	flw	%f1, 8(%x6)  #1836 pc 21576
	lw	%x6, 4(%x2)  #1836 pc 21580
	fsw	%f0, 40(%x2)  #1836 pc 21584
	fsw	%f1, 48(%x2)  #1836 pc 21588
	sw	%x1, 56(%x2)  #1836 pc 21592
	addi	%x2, %x2, 60  #1836 pc 21596
	jal	%x1, o_param_z.2681  #1836 pc 21600
	addi	%x2, %x2, -60  #1836 pc 21604
	lw	%x1, 56(%x2) #1836 pc 21608
	flw	%f1, 48(%x2)  #1836 pc 21612
	fsub	%f0, %f1, %f0  #1836 pc 21616
	lw	%x6, 4(%x2)  #1838 pc 21620
	fsw	%f0, 56(%x2)  #1838 pc 21624
	sw	%x1, 64(%x2)  #1838 pc 21628
	addi	%x2, %x2, 68  #1838 pc 21632
	jal	%x1, o_param_a.2669  #1838 pc 21636
	addi	%x2, %x2, -68  #1838 pc 21640
	lw	%x1, 64(%x2) #1838 pc 21644
	flw	%f1, 24(%x2)  #1838 pc 21648
	fmul	%f0, %f1, %f0  #1838 pc 21652
	lw	%x6, 4(%x2)  #1839 pc 21656
	fsw	%f0, 64(%x2)  #1839 pc 21660
	sw	%x1, 72(%x2)  #1839 pc 21664
	addi	%x2, %x2, 76  #1839 pc 21668
	jal	%x1, o_param_b.2671  #1839 pc 21672
	addi	%x2, %x2, -76  #1839 pc 21676
	lw	%x1, 72(%x2) #1839 pc 21680
	flw	%f1, 40(%x2)  #1839 pc 21684
	fmul	%f0, %f1, %f0  #1839 pc 21688
	lw	%x6, 4(%x2)  #1840 pc 21692
	fsw	%f0, 72(%x2)  #1840 pc 21696
	sw	%x1, 80(%x2)  #1840 pc 21700
	addi	%x2, %x2, 84  #1840 pc 21704
	jal	%x1, o_param_c.2673  #1840 pc 21708
	addi	%x2, %x2, -84  #1840 pc 21712
	lw	%x1, 80(%x2) #1840 pc 21716
	flw	%f1, 56(%x2)  #1840 pc 21720
	fmul	%f0, %f1, %f0  #1840 pc 21724
	lw	%x6, 4(%x2)  #1842 pc 21728
	fsw	%f0, 80(%x2)  #1842 pc 21732
	sw	%x1, 88(%x2)  #1842 pc 21736
	addi	%x2, %x2, 92  #1842 pc 21740
	jal	%x1, o_isrot.2667  #1842 pc 21744
	addi	%x2, %x2, -92  #1842 pc 21748
	lw	%x1, 88(%x2) #1842 pc 21752
	beq	%x6, %x0, 12  #1842 pc 21756
	j	be_else.9392 #pc 21760
	nop #pc 21764
	lw	%x6, 0(%x2)  #1843 pc 21768
	flw	%f0, 64(%x2)  #1843 pc 21772
	fsw	%f0, 0(%x6)  #1843 pc 21776
	flw	%f0, 72(%x2)  #1844 pc 21780
	fsw	%f0, 4(%x6)  #1844 pc 21784
	flw	%f0, 80(%x2)  #1845 pc 21788
	fsw	%f0, 8(%x6)  #1845 pc 21792
	j	be_cont.9393 #pc 21796
	nop #pc 21800
be_else.9392: #pc 21804
	lw	%x6, 4(%x2)  #1847 pc 21804
	sw	%x1, 88(%x2)  #1847 pc 21808
	addi	%x2, %x2, 92  #1847 pc 21812
	jal	%x1, o_param_r3.2697  #1847 pc 21816
	addi	%x2, %x2, -92  #1847 pc 21820
	lw	%x1, 88(%x2) #1847 pc 21824
	flw	%f1, 40(%x2)  #1847 pc 21828
	fmul	%f0, %f1, %f0  #1847 pc 21832
	lw	%x6, 4(%x2)  #1847 pc 21836
	fsw	%f0, 88(%x2)  #1847 pc 21840
	sw	%x1, 96(%x2)  #1847 pc 21844
	addi	%x2, %x2, 100  #1847 pc 21848
	jal	%x1, o_param_r2.2695  #1847 pc 21852
	addi	%x2, %x2, -100  #1847 pc 21856
	lw	%x1, 96(%x2) #1847 pc 21860
	flw	%f1, 56(%x2)  #1847 pc 21864
	fmul	%f0, %f1, %f0  #1847 pc 21868
	flw	%f2, 88(%x2)  #1847 pc 21872
	fadd	%f0, %f2, %f0  #1847 pc 21876
	sw	%x1, 96(%x2)  #1847 pc 21880
	addi	%x2, %x2, 100  #1847 pc 21884
	jal	%x1, fhalf.2519  #1847 pc 21888
	addi	%x2, %x2, -100  #1847 pc 21892
	lw	%x1, 96(%x2) #1847 pc 21896
	flw	%f1, 64(%x2)  #1847 pc 21900
	fadd	%f0, %f1, %f0  #1847 pc 21904
	lw	%x6, 0(%x2)  #1847 pc 21908
	fsw	%f0, 0(%x6)  #1847 pc 21912
	lw	%x7, 4(%x2)  #1848 pc 21916
	addi	%x6, %x7, 0  #0 pc 21920
	sw	%x1, 96(%x2)  #1848 pc 21924
	addi	%x2, %x2, 100  #1848 pc 21928
	jal	%x1, o_param_r3.2697  #1848 pc 21932
	addi	%x2, %x2, -100  #1848 pc 21936
	lw	%x1, 96(%x2) #1848 pc 21940
	flw	%f1, 24(%x2)  #1848 pc 21944
	fmul	%f0, %f1, %f0  #1848 pc 21948
	lw	%x6, 4(%x2)  #1848 pc 21952
	fsw	%f0, 96(%x2)  #1848 pc 21956
	sw	%x1, 104(%x2)  #1848 pc 21960
	addi	%x2, %x2, 108  #1848 pc 21964
	jal	%x1, o_param_r1.2693  #1848 pc 21968
	addi	%x2, %x2, -108  #1848 pc 21972
	lw	%x1, 104(%x2) #1848 pc 21976
	flw	%f1, 56(%x2)  #1848 pc 21980
	fmul	%f0, %f1, %f0  #1848 pc 21984
	flw	%f1, 96(%x2)  #1848 pc 21988
	fadd	%f0, %f1, %f0  #1848 pc 21992
	sw	%x1, 104(%x2)  #1848 pc 21996
	addi	%x2, %x2, 108  #1848 pc 22000
	jal	%x1, fhalf.2519  #1848 pc 22004
	addi	%x2, %x2, -108  #1848 pc 22008
	lw	%x1, 104(%x2) #1848 pc 22012
	flw	%f1, 72(%x2)  #1848 pc 22016
	fadd	%f0, %f1, %f0  #1848 pc 22020
	lw	%x6, 0(%x2)  #1848 pc 22024
	fsw	%f0, 4(%x6)  #1848 pc 22028
	lw	%x7, 4(%x2)  #1849 pc 22032
	addi	%x6, %x7, 0  #0 pc 22036
	sw	%x1, 104(%x2)  #1849 pc 22040
	addi	%x2, %x2, 108  #1849 pc 22044
	jal	%x1, o_param_r2.2695  #1849 pc 22048
	addi	%x2, %x2, -108  #1849 pc 22052
	lw	%x1, 104(%x2) #1849 pc 22056
	flw	%f1, 24(%x2)  #1849 pc 22060
	fmul	%f0, %f1, %f0  #1849 pc 22064
	lw	%x6, 4(%x2)  #1849 pc 22068
	fsw	%f0, 104(%x2)  #1849 pc 22072
	sw	%x1, 112(%x2)  #1849 pc 22076
	addi	%x2, %x2, 116  #1849 pc 22080
	jal	%x1, o_param_r1.2693  #1849 pc 22084
	addi	%x2, %x2, -116  #1849 pc 22088
	lw	%x1, 112(%x2) #1849 pc 22092
	flw	%f1, 40(%x2)  #1849 pc 22096
	fmul	%f0, %f1, %f0  #1849 pc 22100
	flw	%f1, 104(%x2)  #1849 pc 22104
	fadd	%f0, %f1, %f0  #1849 pc 22108
	sw	%x1, 112(%x2)  #1849 pc 22112
	addi	%x2, %x2, 116  #1849 pc 22116
	jal	%x1, fhalf.2519  #1849 pc 22120
	addi	%x2, %x2, -116  #1849 pc 22124
	lw	%x1, 112(%x2) #1849 pc 22128
	flw	%f1, 80(%x2)  #1849 pc 22132
	fadd	%f0, %f1, %f0  #1849 pc 22136
	lw	%x6, 0(%x2)  #1849 pc 22140
	fsw	%f0, 8(%x6)  #1849 pc 22144
be_cont.9393: #pc 22148
	lw	%x7, 4(%x2)  #1851 pc 22148
	addi	%x6, %x7, 0  #0 pc 22152
	sw	%x1, 112(%x2)  #1851 pc 22156
	addi	%x2, %x2, 116  #1851 pc 22160
	jal	%x1, o_isinvert.2665  #1851 pc 22164
	addi	%x2, %x2, -116  #1851 pc 22168
	lw	%x1, 112(%x2) #1851 pc 22172
	addi	%x7, %x6, 0  #1851 pc 22176
	lw	%x6, 0(%x2)  #1851 pc 22180
	j	vecunit_sgn.2634  #1851 pc 22184
	nop #pc 22188
get_nvector.2925:  #pc 22192
	lw	%x8, 12(%x29)  #1856 pc 22192
	lw	%x9, 8(%x29)  #1856 pc 22196
	lw	%x10, 4(%x29)  #1856 pc 22200
	sw	%x8, 0(%x2)  #1856 pc 22204
	sw	%x6, 4(%x2)  #1856 pc 22208
	sw	%x10, 8(%x2)  #1856 pc 22212
	sw	%x7, 12(%x2)  #1856 pc 22216
	sw	%x9, 16(%x2)  #1856 pc 22220
	sw	%x1, 20(%x2)  #1856 pc 22224
	addi	%x2, %x2, 24  #1856 pc 22228
	jal	%x1, o_form.2661  #1856 pc 22232
	addi	%x2, %x2, -24  #1856 pc 22236
	lw	%x1, 20(%x2) #1856 pc 22240
	addi	%x31, %x0, 1  #pc 22244
	beq	%x6, %x31, 12  #1857 pc 22248
	j	be_else.9394 #pc 22252
	nop #pc 22256
	lw	%x6, 12(%x2)  #1858 pc 22260
	lw	%x29, 16(%x2)  #1858 pc 22264
	lw	%x30, 0(%x29)  #1858 pc 22268
	jalr	%x0, %x30, 0  #1858 pc 22272
	nop #pc 22276
be_else.9394: #pc 22280
	addi	%x31, %x0, 2  #pc 22280
	beq	%x6, %x31, 12  #1859 pc 22284
	j	be_else.9395 #pc 22288
	nop #pc 22292
	lw	%x6, 4(%x2)  #1860 pc 22296
	lw	%x29, 8(%x2)  #1860 pc 22300
	lw	%x30, 0(%x29)  #1860 pc 22304
	jalr	%x0, %x30, 0  #1860 pc 22308
	nop #pc 22312
be_else.9395: #pc 22316
	lw	%x6, 4(%x2)  #1862 pc 22316
	lw	%x29, 0(%x2)  #1862 pc 22320
	lw	%x30, 0(%x29)  #1862 pc 22324
	jalr	%x0, %x30, 0  #1862 pc 22328
	nop #pc 22332
utexture.2928:  #pc 22336
	lw	%x8, 4(%x29)  #1872 pc 22336
	sw	%x7, 0(%x2)  #1872 pc 22340
	sw	%x8, 4(%x2)  #1872 pc 22344
	sw	%x6, 8(%x2)  #1872 pc 22348
	sw	%x1, 12(%x2)  #1872 pc 22352
	addi	%x2, %x2, 16  #1872 pc 22356
	jal	%x1, o_texturetype.2659  #1872 pc 22360
	addi	%x2, %x2, -16  #1872 pc 22364 # ok
	lw	%x1, 12(%x2) #1872 pc 22368
	lw	%x7, 8(%x2)  #1874 pc 22372
	sw	%x6, 12(%x2)  #1874 pc 22376
	addi	%x6, %x7, 0  #0 pc 22380
	sw	%x1, 16(%x2)  #1874 pc 22384
	addi	%x2, %x2, 20  #1874 pc 22388
	jal	%x1, o_color_red.2687  #1874 pc 22392
	addi	%x2, %x2, -20  #1874 pc 22396
	lw	%x1, 16(%x2) #1874 pc 22400
	lw	%x6, 4(%x2)  #1874 pc 22404
	fsw	%f0, 0(%x6)  #1874 pc 22408
	lw	%x7, 8(%x2)  #1875 pc 22412
	addi	%x6, %x7, 0  #0 pc 22416
	sw	%x1, 16(%x2)  #1875 pc 22420
	addi	%x2, %x2, 20  #1875 pc 22424
	jal	%x1, o_color_green.2689  #1875 pc 22428
	addi	%x2, %x2, -20  #1875 pc 22432
	lw	%x1, 16(%x2) #1875 pc 22436
	lw	%x6, 4(%x2)  #1875 pc 22440
	fsw	%f0, 4(%x6)  #1875 pc 22444
	lw	%x7, 8(%x2)  #1876 pc 22448
	addi	%x6, %x7, 0  #0 pc 22452
	sw	%x1, 16(%x2)  #1876 pc 22456
	addi	%x2, %x2, 20  #1876 pc 22460
	jal	%x1, o_color_blue.2691  #1876 pc 22464
	addi	%x2, %x2, -20  #1876 pc 22468 #ok
	lw	%x1, 16(%x2) #1876 pc 22472
	lw	%x6, 4(%x2)  #1876 pc 22476
	fsw	%f0, 8(%x6)  #1876 pc 22480
	lw	%x7, 12(%x2)  #1877 pc 22484
	addi	%x31, %x0, 1  #pc 22488
	beq	%x7, %x31, 12  #1877 pc 22492
	j	be_else.9396 #pc 22496
	nop #pc 22500
	lw	%x7, 0(%x2)  #1880 pc 22504
	flw	%f0, 0(%x7)  #1880 pc 22508
	lw	%x8, 8(%x2)  #1880 pc 22512
	fsw	%f0, 16(%x2)  #1880 pc 22516
	addi	%x6, %x8, 0  #0 pc 22520
	sw	%x1, 24(%x2)  #1880 pc 22524
	addi	%x2, %x2, 28  #1880 pc 22528
	jal	%x1, o_param_x.2677  #1880 pc 22532
	addi	%x2, %x2, -28  #1880 pc 22536
	lw	%x1, 24(%x2) #1880 pc 22540
	flw	%f1, 16(%x2)  #1880 pc 22544
	fsub	%f0, %f1, %f0  #1880 pc 22548
	fmv	%f1, l.6780  #0 pc 22552
	fmul	%f1, %f0, %f1  #1882 pc 22556
	fsw	%f0, 24(%x2)  #1882 pc 22560
	fadd	%f0, %f1, %f30  #0 pc 22564
	sw	%x1, 32(%x2)  #1882 pc 22568
	addi	%x2, %x2, 36  #1882 pc 22572
	jal	%x1, floor.2534  #1882 pc 22576 #ok
	addi	%x2, %x2, -36  #1882 pc 22580
	lw	%x1, 32(%x2) #1882 pc 22584
	fmv	%f1, l.6782  #0 pc 22588
	fmul	%f0, %f0, %f1  #1882 pc 22592
	flw	%f1, 24(%x2)  #1883 pc 22596
	fsub	%f0, %f1, %f0  #1883 pc 22600
	fmv	%f1, l.6763  #0 pc 22604
	sw	%x1, 32(%x2)  #1883 pc 22608
	addi	%x2, %x2, 36  #1883 pc 22612
	jal	%x1, fless.2521  #1883 pc 22616
	addi	%x2, %x2, -36  #1883 pc 22620
	lw	%x1, 32(%x2) #1883 pc 22624
	lw	%x7, 0(%x2)  #1885 pc 22628
	flw	%f0, 8(%x7)  #1885 pc 22632
	lw	%x7, 8(%x2)  #1885 pc 22636
	sw	%x6, 32(%x2)  #1885 pc 22640
	fsw	%f0, 40(%x2)  #1885 pc 22644
	addi	%x6, %x7, 0  #0 pc 22648
	sw	%x1, 48(%x2)  #1885 pc 22652
	addi	%x2, %x2, 52  #1885 pc 22656
	jal	%x1, o_param_z.2681  #1885 pc 22660
	addi	%x2, %x2, -52  #1885 pc 22664
	lw	%x1, 48(%x2) #1885 pc 22668
	flw	%f1, 40(%x2)  #1885 pc 22672
	fsub	%f0, %f1, %f0  #1885 pc 22676
	fmv	%f1, l.6780  #0 pc 22680
	fmul	%f1, %f0, %f1  #1887 pc 22684
	fsw	%f0, 48(%x2)  #1887 pc 22688
	fadd	%f0, %f1, %f30  #0 pc 22692
	sw	%x1, 56(%x2)  #1887 pc 22696
	addi	%x2, %x2, 60  #1887 pc 22700
	jal	%x1, floor.2534  #1887 pc 22704
	addi	%x2, %x2, -60  #1887 pc 22708
	lw	%x1, 56(%x2) #1887 pc 22712
	fmv	%f1, l.6782  #0 pc 22716
	fmul	%f0, %f0, %f1  #1887 pc 22720
	flw	%f1, 48(%x2)  #1888 pc 22724
	fsub	%f0, %f1, %f0  #1888 pc 22728
	fmv	%f1, l.6763  #0 pc 22732
	sw	%x1, 56(%x2)  #1888 pc 22736
	addi	%x2, %x2, 60  #1888 pc 22740
	jal	%x1, fless.2521  #1888 pc 22744
	addi	%x2, %x2, -60  #1888 pc 22748
	lw	%x1, 56(%x2) #1888 pc 22752
	lw	%x7, 32(%x2)  #1891 pc 22756
	beq	%x7, %x0, 12  #1891 pc 22760
	j	be_else.9398 #pc 22764
	nop #pc 22768
	beq	%x6, %x0, 12  #1893 pc 22772
	j	be_else.9400 #pc 22776
	nop #pc 22780
	fmv	%f0, l.6756  #0 pc 22784
	j	be_cont.9401 #pc 22788
	nop #pc 22792
be_else.9400: #pc 22796
	fmv	%f0, l.6244  #0 pc 22796
be_cont.9401: #pc 22800
	j	be_cont.9399 #pc 22800
	nop #pc 22804
be_else.9398: #pc 22808
	beq	%x6, %x0, 12  #1892 pc 22808
	j	be_else.9402 #pc 22812
	nop #pc 22816
	fmv	%f0, l.6244  #0 pc 22820
	j	be_cont.9403 #pc 22824
	nop #pc 22828
be_else.9402: #pc 22832
	fmv	%f0, l.6756  #0 pc 22832
be_cont.9403: #pc 22836
be_cont.9399: #pc 22836
	lw	%x6, 4(%x2)  #1890 pc 22836
	fsw	%f0, 4(%x6)  #1890 pc 22840
	ret #pc 22844
	nop #pc 22848
be_else.9396: #pc 22852
	addi	%x31, %x0, 2  #pc 22852
	beq	%x7, %x31, 12  #1895 pc 22856
	j	be_else.9405 #pc 22860
	nop #pc 22864
	lw	%x7, 0(%x2)  #1898 pc 22868
	flw	%f0, 4(%x7)  #1898 pc 22872
	fmv	%f1, l.6772  #0 pc 22876
	fmul	%f0, %f0, %f1  #1898 pc 22880
	sw	%x1, 56(%x2)  #1898 pc 22884
	addi	%x2, %x2, 60  #1898 pc 22888
	jal	%x1, sin.2526  #1898 pc 22892
	addi	%x2, %x2, -60  #1898 pc 22896
	lw	%x1, 56(%x2) #1898 pc 22900
	sw	%x1, 56(%x2)  #1898 pc 22904
	addi	%x2, %x2, 60  #1898 pc 22908
	jal	%x1, fsqr.2517  #1898 pc 22912
	addi	%x2, %x2, -60  #1898 pc 22916
	lw	%x1, 56(%x2) #1898 pc 22920
	fmv	%f1, l.6756  #0 pc 22924
	fmul	%f1, %f1, %f0  #1899 pc 22928
	lw	%x6, 4(%x2)  #1899 pc 22932
	fsw	%f1, 0(%x6)  #1899 pc 22936
	fmv	%f1, l.6756  #0 pc 22940
	fmv	%f2, l.6263  #0 pc 22944
	fsub	%f0, %f2, %f0  #1900 pc 22948
	fmul	%f0, %f1, %f0  #1900 pc 22952
	fsw	%f0, 4(%x6)  #1900 pc 22956
	ret #pc 22960
	nop #pc 22964
be_else.9405: #pc 22968
	addi	%x31, %x0, 3  #pc 22968
	beq	%x7, %x31, 12  #1902 pc 22972
	j	be_else.9407 #pc 22976
	nop #pc 22980
	lw	%x7, 0(%x2)  #1905 pc 22984
	flw	%f0, 0(%x7)  #1905 pc 22988
	lw	%x8, 8(%x2)  #1905 pc 22992
	fsw	%f0, 56(%x2)  #1905 pc 22996
	addi	%x6, %x8, 0  #0 pc 23000
	sw	%x1, 64(%x2)  #1905 pc 23004
	addi	%x2, %x2, 68  #1905 pc 23008
	jal	%x1, o_param_x.2677  #1905 pc 23012
	addi	%x2, %x2, -68  #1905 pc 23016
	lw	%x1, 64(%x2) #1905 pc 23020
	flw	%f1, 56(%x2)  #1905 pc 23024
	fsub	%f0, %f1, %f0  #1905 pc 23028
	lw	%x6, 0(%x2)  #1906 pc 23032
	flw	%f1, 8(%x6)  #1906 pc 23036
	lw	%x6, 8(%x2)  #1906 pc 23040
	fsw	%f0, 64(%x2)  #1906 pc 23044
	fsw	%f1, 72(%x2)  #1906 pc 23048
	sw	%x1, 80(%x2)  #1906 pc 23052
	addi	%x2, %x2, 84  #1906 pc 23056
	jal	%x1, o_param_z.2681  #1906 pc 23060
	addi	%x2, %x2, -84  #1906 pc 23064
	lw	%x1, 80(%x2) #1906 pc 23068
	flw	%f1, 72(%x2)  #1906 pc 23072
	fsub	%f0, %f1, %f0  #1906 pc 23076
	flw	%f1, 64(%x2)  #1907 pc 23080
	fsw	%f0, 80(%x2)  #1907 pc 23084
	fadd	%f0, %f1, %f30  #0 pc 23088
	sw	%x1, 88(%x2)  #1907 pc 23092
	addi	%x2, %x2, 92  #1907 pc 23096
	jal	%x1, fsqr.2517  #1907 pc 23100
	addi	%x2, %x2, -92  #1907 pc 23104
	lw	%x1, 88(%x2) #1907 pc 23108
	flw	%f1, 80(%x2)  #1907 pc 23112
	fsw	%f0, 88(%x2)  #1907 pc 23116
	fadd	%f0, %f1, %f30  #0 pc 23120
	sw	%x1, 96(%x2)  #1907 pc 23124
	addi	%x2, %x2, 100  #1907 pc 23128
	jal	%x1, fsqr.2517  #1907 pc 23132
	addi	%x2, %x2, -100  #1907 pc 23136
	lw	%x1, 96(%x2) #1907 pc 23140
	flw	%f1, 88(%x2)  #1907 pc 23144
	fadd	%f0, %f1, %f0  #1907 pc 23148
	fmv	%f1, l.6763  #0 pc 23152
	fdiv	%f0, %f0, %f1  #1907 pc 23156
	fsqrt	%f0, %f0  #1907 pc 23160
	fsw	%f0, 96(%x2)  #1908 pc 23164
	sw	%x1, 104(%x2)  #1908 pc 23168
	addi	%x2, %x2, 108  #1908 pc 23172
	jal	%x1, floor.2534  #1908 pc 23176
	addi	%x2, %x2, -108  #1908 pc 23180
	lw	%x1, 104(%x2) #1908 pc 23184
	flw	%f1, 96(%x2)  #1908 pc 23188
	fsub	%f0, %f1, %f0  #1908 pc 23192
	fmv	%f1, l.6744  #0 pc 23196
	fmul	%f0, %f0, %f1  #1908 pc 23200
	sw	%x1, 104(%x2)  #1909 pc 23204
	addi	%x2, %x2, 108  #1909 pc 23208
	jal	%x1, cos.2530  #1909 pc 23212
	addi	%x2, %x2, -108  #1909 pc 23216
	lw	%x1, 104(%x2) #1909 pc 23220
	sw	%x1, 104(%x2)  #1909 pc 23224
	addi	%x2, %x2, 108  #1909 pc 23228
	jal	%x1, fsqr.2517  #1909 pc 23232
	addi	%x2, %x2, -108  #1909 pc 23236
	lw	%x1, 104(%x2) #1909 pc 23240
	fmv	%f1, l.6756  #0 pc 23244
	fmul	%f1, %f0, %f1  #1910 pc 23248
	lw	%x6, 4(%x2)  #1910 pc 23252
	fsw	%f1, 4(%x6)  #1910 pc 23256
	fmv	%f1, l.6263  #0 pc 23260
	fsub	%f0, %f1, %f0  #1911 pc 23264
	fmv	%f1, l.6756  #0 pc 23268
	fmul	%f0, %f0, %f1  #1911 pc 23272
	fsw	%f0, 8(%x6)  #1911 pc 23276
	ret #pc 23280
	nop #pc 23284
be_else.9407: #pc 23288
	addi	%x31, %x0, 4  #pc 23288
	beq	%x7, %x31, 12  #1913 pc 23292
	j	be_else.9409 #pc 23296
	nop #pc 23300
	lw	%x7, 0(%x2)  #1915 pc 23304
	flw	%f0, 0(%x7)  #1915 pc 23308
	lw	%x8, 8(%x2)  #1915 pc 23312
	fsw	%f0, 104(%x2)  #1915 pc 23316
	addi	%x6, %x8, 0  #0 pc 23320
	sw	%x1, 112(%x2)  #1915 pc 23324
	addi	%x2, %x2, 116  #1915 pc 23328
	jal	%x1, o_param_x.2677  #1915 pc 23332
	addi	%x2, %x2, -116  #1915 pc 23336
	lw	%x1, 112(%x2) #1915 pc 23340
	flw	%f1, 104(%x2)  #1915 pc 23344
	fsub	%f0, %f1, %f0  #1915 pc 23348
	lw	%x6, 8(%x2)  #1915 pc 23352
	fsw	%f0, 112(%x2)  #1915 pc 23356
	sw	%x1, 120(%x2)  #1915 pc 23360
	addi	%x2, %x2, 124  #1915 pc 23364
	jal	%x1, o_param_a.2669  #1915 pc 23368
	addi	%x2, %x2, -124  #1915 pc 23372
	lw	%x1, 120(%x2) #1915 pc 23376
	fsqrt	%f0, %f0  #1915 pc 23380
	flw	%f1, 112(%x2)  #1915 pc 23384
	fmul	%f0, %f1, %f0  #1915 pc 23388
	lw	%x6, 0(%x2)  #1916 pc 23392
	flw	%f1, 8(%x6)  #1916 pc 23396
	lw	%x7, 8(%x2)  #1916 pc 23400
	fsw	%f0, 120(%x2)  #1916 pc 23404
	fsw	%f1, 128(%x2)  #1916 pc 23408
	addi	%x6, %x7, 0  #0 pc 23412
	sw	%x1, 136(%x2)  #1916 pc 23416
	addi	%x2, %x2, 140  #1916 pc 23420
	jal	%x1, o_param_z.2681  #1916 pc 23424
	addi	%x2, %x2, -140  #1916 pc 23428
	lw	%x1, 136(%x2) #1916 pc 23432
	flw	%f1, 128(%x2)  #1916 pc 23436
	fsub	%f0, %f1, %f0  #1916 pc 23440
	lw	%x6, 8(%x2)  #1916 pc 23444
	fsw	%f0, 136(%x2)  #1916 pc 23448
	sw	%x1, 144(%x2)  #1916 pc 23452
	addi	%x2, %x2, 148  #1916 pc 23456
	jal	%x1, o_param_c.2673  #1916 pc 23460
	addi	%x2, %x2, -148  #1916 pc 23464
	lw	%x1, 144(%x2) #1916 pc 23468
	fsqrt	%f0, %f0  #1916 pc 23472
	flw	%f1, 136(%x2)  #1916 pc 23476
	fmul	%f0, %f1, %f0  #1916 pc 23480
	flw	%f1, 120(%x2)  #1917 pc 23484
	fsw	%f0, 144(%x2)  #1917 pc 23488
	fadd	%f0, %f1, %f30  #0 pc 23492
	sw	%x1, 152(%x2)  #1917 pc 23496
	addi	%x2, %x2, 156  #1917 pc 23500
	jal	%x1, fsqr.2517  #1917 pc 23504
	addi	%x2, %x2, -156  #1917 pc 23508
	lw	%x1, 152(%x2) #1917 pc 23512
	flw	%f1, 144(%x2)  #1917 pc 23516
	fsw	%f0, 152(%x2)  #1917 pc 23520
	fadd	%f0, %f1, %f30  #0 pc 23524
	sw	%x1, 160(%x2)  #1917 pc 23528
	addi	%x2, %x2, 164  #1917 pc 23532
	jal	%x1, fsqr.2517  #1917 pc 23536
	addi	%x2, %x2, -164  #1917 pc 23540
	lw	%x1, 160(%x2) #1917 pc 23544
	flw	%f1, 152(%x2)  #1917 pc 23548
	fadd	%f0, %f1, %f0  #1917 pc 23552
	flw	%f1, 120(%x2)  #1919 pc 23556
	fabs	%f2, %f1  #1919 pc 23560
	fmv	%f3, l.6738  #0 pc 23564
	fsw	%f0, 160(%x2)  #1919 pc 23568
	fadd	%f1, %f3, %f30  #0 pc 23572
	fadd	%f0, %f2, %f30  #0 pc 23576
	sw	%x1, 168(%x2)  #1919 pc 23580
	addi	%x2, %x2, 172  #1919 pc 23584
	jal	%x1, fless.2521  #1919 pc 23588
	addi	%x2, %x2, -172  #1919 pc 23592
	lw	%x1, 168(%x2) #1919 pc 23596
	beq	%x6, %x0, 12  #1919 pc 23600
	j	be_else.9410 #pc 23604
	nop #pc 23608
	flw	%f0, 120(%x2)  #1922 pc 23612
	flw	%f1, 144(%x2)  #1922 pc 23616
	fdiv	%f0, %f1, %f0  #1922 pc 23620
	fabs	%f0, %f0  #1922 pc 23624
	sw	%x1, 168(%x2)  #1924 pc 23628
	addi	%x2, %x2, 172  #1924 pc 23632
	jal	%x1, atan.2532  #1924 pc 23636
	addi	%x2, %x2, -172  #1924 pc 23640
	lw	%x1, 168(%x2) #1924 pc 23644
	fmv	%f1, l.6742  #0 pc 23648
	fmul	%f0, %f0, %f1  #1924 pc 23652
	fmv	%f1, l.6744  #0 pc 23656
	fdiv	%f0, %f0, %f1  #1924 pc 23660
	j	be_cont.9411 #pc 23664
	nop #pc 23668
be_else.9410: #pc 23672
	fmv	%f0, l.6740  #0 pc 23672
be_cont.9411: #pc 23676
	fsw	%f0, 168(%x2)  #1926 pc 23676
	sw	%x1, 176(%x2)  #1926 pc 23680
	addi	%x2, %x2, 180  #1926 pc 23684
	jal	%x1, floor.2534  #1926 pc 23688
	addi	%x2, %x2, -180  #1926 pc 23692
	lw	%x1, 176(%x2) #1926 pc 23696
	flw	%f1, 168(%x2)  #1926 pc 23700
	fsub	%f0, %f1, %f0  #1926 pc 23704
	lw	%x6, 0(%x2)  #1928 pc 23708
	flw	%f1, 4(%x6)  #1928 pc 23712
	lw	%x6, 8(%x2)  #1928 pc 23716
	fsw	%f0, 176(%x2)  #1928 pc 23720
	fsw	%f1, 184(%x2)  #1928 pc 23724
	sw	%x1, 192(%x2)  #1928 pc 23728
	addi	%x2, %x2, 196  #1928 pc 23732
	jal	%x1, o_param_y.2679  #1928 pc 23736
	addi	%x2, %x2, -196  #1928 pc 23740
	lw	%x1, 192(%x2) #1928 pc 23744
	flw	%f1, 184(%x2)  #1928 pc 23748
	fsub	%f0, %f1, %f0  #1928 pc 23752
	lw	%x6, 8(%x2)  #1928 pc 23756
	fsw	%f0, 192(%x2)  #1928 pc 23760
	sw	%x1, 200(%x2)  #1928 pc 23764
	addi	%x2, %x2, 204  #1928 pc 23768
	jal	%x1, o_param_b.2671  #1928 pc 23772
	addi	%x2, %x2, -204  #1928 pc 23776
	lw	%x1, 200(%x2) #1928 pc 23780
	fsqrt	%f0, %f0  #1928 pc 23784
	flw	%f1, 192(%x2)  #1928 pc 23788
	fmul	%f0, %f1, %f0  #1928 pc 23792
	flw	%f1, 160(%x2)  #1930 pc 23796
	fabs	%f2, %f1  #1930 pc 23800
	fmv	%f3, l.6738  #0 pc 23804
	fsw	%f0, 200(%x2)  #1930 pc 23808
	fadd	%f1, %f3, %f30  #0 pc 23812
	fadd	%f0, %f2, %f30  #0 pc 23816
	sw	%x1, 208(%x2)  #1930 pc 23820
	addi	%x2, %x2, 212  #1930 pc 23824
	jal	%x1, fless.2521  #1930 pc 23828
	addi	%x2, %x2, -212  #1930 pc 23832
	lw	%x1, 208(%x2) #1930 pc 23836
	beq	%x6, %x0, 12  #1930 pc 23840
	j	be_else.9412 #pc 23844
	nop #pc 23848
	flw	%f0, 160(%x2)  #1933 pc 23852
	flw	%f1, 200(%x2)  #1933 pc 23856
	fdiv	%f0, %f1, %f0  #1933 pc 23860
	fabs	%f0, %f0  #1933 pc 23864
	sw	%x1, 208(%x2)  #1934 pc 23868
	addi	%x2, %x2, 212  #1934 pc 23872
	jal	%x1, atan.2532  #1934 pc 23876
	addi	%x2, %x2, -212  #1934 pc 23880
	lw	%x1, 208(%x2) #1934 pc 23884
	fmv	%f1, l.6742  #0 pc 23888
	fmul	%f0, %f0, %f1  #1934 pc 23892
	fmv	%f1, l.6744  #0 pc 23896
	fdiv	%f0, %f0, %f1  #1934 pc 23900
	j	be_cont.9413 #pc 23904
	nop #pc 23908
be_else.9412: #pc 23912
	fmv	%f0, l.6740  #0 pc 23912
be_cont.9413: #pc 23916
	fsw	%f0, 208(%x2)  #1936 pc 23916
	sw	%x1, 216(%x2)  #1936 pc 23920
	addi	%x2, %x2, 220  #1936 pc 23924
	jal	%x1, floor.2534  #1936 pc 23928
	addi	%x2, %x2, -220  #1936 pc 23932
	lw	%x1, 216(%x2) #1936 pc 23936
	flw	%f1, 208(%x2)  #1936 pc 23940
	fsub	%f0, %f1, %f0  #1936 pc 23944
	fmv	%f1, l.6751  #0 pc 23948
	fmv	%f2, l.6248  #0 pc 23952
	flw	%f3, 176(%x2)  #1937 pc 23956
	fsub	%f2, %f2, %f3  #1937 pc 23960
	fsw	%f0, 216(%x2)  #1937 pc 23964
	fsw	%f1, 224(%x2)  #1937 pc 23968
	fadd	%f0, %f2, %f30  #0 pc 23972
	sw	%x1, 232(%x2)  #1937 pc 23976
	addi	%x2, %x2, 236  #1937 pc 23980
	jal	%x1, fsqr.2517  #1937 pc 23984
	addi	%x2, %x2, -236  #1937 pc 23988
	lw	%x1, 232(%x2) #1937 pc 23992
	flw	%f1, 224(%x2)  #1937 pc 23996
	fsub	%f0, %f1, %f0  #1937 pc 24000
	fmv	%f1, l.6248  #0 pc 24004
	flw	%f2, 216(%x2)  #1937 pc 24008
	fsub	%f1, %f1, %f2  #1937 pc 24012
	fsw	%f0, 232(%x2)  #1937 pc 24016
	fadd	%f0, %f1, %f30  #0 pc 24020
	sw	%x1, 240(%x2)  #1937 pc 24024
	addi	%x2, %x2, 244  #1937 pc 24028
	jal	%x1, fsqr.2517  #1937 pc 24032
	addi	%x2, %x2, -244  #1937 pc 24036
	lw	%x1, 240(%x2) #1937 pc 24040
	flw	%f1, 232(%x2)  #1937 pc 24044
	fsub	%f0, %f1, %f0  #1937 pc 24048
	fsw	%f0, 240(%x2)  #1938 pc 24052
	sw	%x1, 248(%x2)  #1938 pc 24056
	addi	%x2, %x2, 252  #1938 pc 24060
	jal	%x1, fisneg.2513  #1938 pc 24064
	addi	%x2, %x2, -252  #1938 pc 24068
	lw	%x1, 248(%x2) #1938 pc 24072
	beq	%x6, %x0, 12  #1938 pc 24076
	j	be_else.9414 #pc 24080
	nop #pc 24084
	flw	%f0, 240(%x2)  #1938 pc 24088
	j	be_cont.9415 #pc 24092
	nop #pc 24096
be_else.9414: #pc 24100
	fmv	%f0, l.6244  #0 pc 24100
be_cont.9415: #pc 24104
	fmv	%f1, l.6756  #0 pc 24104
	fmul	%f0, %f1, %f0  #1939 pc 24108
	fmv	%f1, l.6758  #0 pc 24112
	fdiv	%f0, %f0, %f1  #1939 pc 24116
	lw	%x6, 4(%x2)  #1939 pc 24120
	fsw	%f0, 8(%x6)  #1939 pc 24124
	ret #pc 24128
	nop #pc 24132
be_else.9409: #pc 24136
	ret #pc 24136
	nop #pc 24140
add_light.2931:  #pc 24144
	lw	%x6, 8(%x29)  #0 pc 24144
	lw	%x7, 4(%x29)  #0 pc 24148
	fsw	%f2, 0(%x2)  #1952 pc 24152
	fsw	%f1, 8(%x2)  #1952 pc 24156
	fsw	%f0, 16(%x2)  #1952 pc 24160
	sw	%x6, 24(%x2)  #1952 pc 24164
	sw	%x7, 28(%x2)  #1952 pc 24168
	sw	%x1, 32(%x2)  #1952 pc 24172
	addi	%x2, %x2, 36  #1952 pc 24176
	jal	%x1, fispos.2511  #1952 pc 24180
	addi	%x2, %x2, -36  #1952 pc 24184
	lw	%x1, 32(%x2) #1952 pc 24188
	beq	%x6, %x0, 12  #1952 pc 24192
	j	be_else.9418 #pc 24196
	nop #pc 24200
	j	be_cont.9419 #pc 24204
	nop #pc 24208
be_else.9418: #pc 24212
	flw	%f0, 16(%x2)  #1953 pc 24212
	lw	%x6, 28(%x2)  #1953 pc 24216
	lw	%x7, 24(%x2)  #1953 pc 24220
	sw	%x1, 32(%x2)  #1953 pc 24224
	addi	%x2, %x2, 36  #1953 pc 24228
	jal	%x1, vecaccum.2645  #1953 pc 24232
	addi	%x2, %x2, -36  #1953 pc 24236
	lw	%x1, 32(%x2) #1953 pc 24240
be_cont.9419: #pc 24244
	flw	%f0, 8(%x2)  #1957 pc 24244
	sw	%x1, 32(%x2)  #1957 pc 24248
	addi	%x2, %x2, 36  #1957 pc 24252
	jal	%x1, fispos.2511  #1957 pc 24256
	addi	%x2, %x2, -36  #1957 pc 24260
	lw	%x1, 32(%x2) #1957 pc 24264
	beq	%x6, %x0, 12  #1957 pc 24268
	j	be_else.9420 #pc 24272
	nop #pc 24276
	ret #pc 24280
	nop #pc 24284
be_else.9420: #pc 24288
	flw	%f0, 8(%x2)  #1958 pc 24288
	sw	%x1, 32(%x2)  #1958 pc 24292
	addi	%x2, %x2, 36  #1958 pc 24296
	jal	%x1, fsqr.2517  #1958 pc 24300
	addi	%x2, %x2, -36  #1958 pc 24304
	lw	%x1, 32(%x2) #1958 pc 24308
	sw	%x1, 32(%x2)  #1958 pc 24312
	addi	%x2, %x2, 36  #1958 pc 24316
	jal	%x1, fsqr.2517  #1958 pc 24320
	addi	%x2, %x2, -36  #1958 pc 24324
	lw	%x1, 32(%x2) #1958 pc 24328
	flw	%f1, 0(%x2)  #1958 pc 24332
	fmul	%f0, %f0, %f1  #1958 pc 24336
	lw	%x6, 28(%x2)  #1959 pc 24340
	flw	%f1, 0(%x6)  #1959 pc 24344
	fadd	%f1, %f1, %f0  #1959 pc 24348
	fsw	%f1, 0(%x6)  #1959 pc 24352
	flw	%f1, 4(%x6)  #1960 pc 24356
	fadd	%f1, %f1, %f0  #1960 pc 24360
	fsw	%f1, 4(%x6)  #1960 pc 24364
	flw	%f1, 8(%x6)  #1961 pc 24368
	fadd	%f0, %f1, %f0  #1961 pc 24372
	fsw	%f0, 8(%x6)  #1961 pc 24376
	ret #pc 24380
	nop #pc 24384
trace_reflections.2935:  #pc 24388
	lw	%x8, 32(%x29)  #0 pc 24388
	lw	%x9, 28(%x29)  #0 pc 24392
	lw	%x10, 24(%x29)  #0 pc 24396
	lw	%x11, 20(%x29)  #0 pc 24400
	lw	%x12, 16(%x29)  #0 pc 24404
	lw	%x13, 12(%x29)  #0 pc 24408
	lw	%x14, 8(%x29)  #0 pc 24412
	lw	%x15, 4(%x29)  #0 pc 24416
	bge	%x6, %x0, 12  #1968 pc 24420
	j	bge_else.9423 #pc 24424
	nop #pc 24428
	slli	%x16, %x6, 2  #1969 pc 24432
	add	%x31, %x16, %x9  #1969 pc 24436
	lw	%x9, 0(%x31)  #1969 pc 24440
	sw	%x29, 0(%x2)  #1970 pc 24444
	sw	%x6, 4(%x2)  #1970 pc 24448
	fsw	%f1, 8(%x2)  #1970 pc 24452
	sw	%x15, 16(%x2)  #1970 pc 24456
	sw	%x7, 20(%x2)  #1970 pc 24460
	fsw	%f0, 24(%x2)  #1970 pc 24464
	sw	%x11, 32(%x2)  #1970 pc 24468
	sw	%x8, 36(%x2)  #1970 pc 24472
	sw	%x10, 40(%x2)  #1970 pc 24476
	sw	%x9, 44(%x2)  #1970 pc 24480
	sw	%x13, 48(%x2)  #1970 pc 24484
	sw	%x14, 52(%x2)  #1970 pc 24488
	sw	%x12, 56(%x2)  #1970 pc 24492
	addi	%x6, %x9, 0  #0 pc 24496
	sw	%x1, 60(%x2)  #1970 pc 24500
	addi	%x2, %x2, 64  #1970 pc 24504
	jal	%x1, r_dvec.2726  #1970 pc 24508
	addi	%x2, %x2, -64  #1970 pc 24512
	lw	%x1, 60(%x2) #1970 pc 24516
	lw	%x29, 56(%x2)  #1973 pc 24520
	sw	%x6, 60(%x2)  #1973 pc 24524
	sw	%x1, 64(%x2)  #1973 pc 24528
	lw	%x30, 0(%x29)  #1973 pc 24532
	addi	%x2, %x2, 68  #1973 pc 24536
	jalr	%x1, %x30, 0  #1973 pc 24540
	addi	%x2, %x2, -68  #1973 pc 24544
	lw	%x1, 64(%x2)  #1973 pc 24548
	beq	%x6, %x0, 12  #1973 pc 24552
	j	be_else.9424 #pc 24556
	nop #pc 24560
	j	be_cont.9425 #pc 24564
	nop #pc 24568
be_else.9424: #pc 24572
	lw	%x6, 52(%x2)  #1974 pc 24572
	lw	%x6, 0(%x6)  #1974 pc 24576
	addi	%x7, %x0, 4  #0 pc 24580
	sw	%x1, 64(%x2)  #1974 pc 24584
	addi	%x2, %x2, 68  #1974 pc 24588
	jal	%x1, mul.2547  #1974 pc 24592
	addi	%x2, %x2, -68  #1974 pc 24596
	lw	%x1, 64(%x2) #1974 pc 24600
	lw	%x7, 48(%x2)  #1974 pc 24604
	lw	%x7, 0(%x7)  #1974 pc 24608
	add	%x6, %x6, %x7  #1974 pc 24612
	lw	%x7, 44(%x2)  #1975 pc 24616
	sw	%x6, 64(%x2)  #1975 pc 24620
	addi	%x6, %x7, 0  #0 pc 24624
	sw	%x1, 68(%x2)  #1975 pc 24628
	addi	%x2, %x2, 72  #1975 pc 24632
	jal	%x1, r_surface_id.2724  #1975 pc 24636
	addi	%x2, %x2, -72  #1975 pc 24640
	lw	%x1, 68(%x2) #1975 pc 24644
	lw	%x7, 64(%x2)  #1975 pc 24648
	beq	%x7, %x6, 12  #1975 pc 24652
	j	be_else.9426 #pc 24656
	nop #pc 24660
	addi	%x6, %x0, 0  #0 pc 24664
	lw	%x7, 40(%x2)  #1977 pc 24668
	lw	%x7, 0(%x7)  #1977 pc 24672
	lw	%x29, 36(%x2)  #1977 pc 24676
	sw	%x1, 68(%x2)  #1977 pc 24680
	lw	%x30, 0(%x29)  #1977 pc 24684
	addi	%x2, %x2, 72  #1977 pc 24688
	jalr	%x1, %x30, 0  #1977 pc 24692
	addi	%x2, %x2, -72  #1977 pc 24696
	lw	%x1, 68(%x2)  #1977 pc 24700
	beq	%x6, %x0, 12  #1977 pc 24704
	j	be_else.9428 #pc 24708
	nop #pc 24712
	lw	%x6, 60(%x2)  #1979 pc 24716
	sw	%x1, 68(%x2)  #1979 pc 24720
	addi	%x2, %x2, 72  #1979 pc 24724
	jal	%x1, d_vec.2720  #1979 pc 24728
	addi	%x2, %x2, -72  #1979 pc 24732
	lw	%x1, 68(%x2) #1979 pc 24736
	addi	%x7, %x6, 0  #1979 pc 24740
	lw	%x6, 32(%x2)  #1979 pc 24744
	sw	%x1, 68(%x2)  #1979 pc 24748
	addi	%x2, %x2, 72  #1979 pc 24752
	jal	%x1, veciprod.2637  #1979 pc 24756
	addi	%x2, %x2, -72  #1979 pc 24760
	lw	%x1, 68(%x2) #1979 pc 24764
	lw	%x6, 44(%x2)  #1980 pc 24768
	fsw	%f0, 72(%x2)  #1980 pc 24772
	sw	%x1, 80(%x2)  #1980 pc 24776
	addi	%x2, %x2, 84  #1980 pc 24780
	jal	%x1, r_bright.2728  #1980 pc 24784
	addi	%x2, %x2, -84  #1980 pc 24788
	lw	%x1, 80(%x2) #1980 pc 24792
	flw	%f1, 24(%x2)  #1981 pc 24796
	fmul	%f2, %f0, %f1  #1981 pc 24800
	flw	%f3, 72(%x2)  #1981 pc 24804
	fmul	%f2, %f2, %f3  #1981 pc 24808
	lw	%x6, 60(%x2)  #1982 pc 24812
	fsw	%f2, 80(%x2)  #1982 pc 24816
	fsw	%f0, 88(%x2)  #1982 pc 24820
	sw	%x1, 96(%x2)  #1982 pc 24824
	addi	%x2, %x2, 100  #1982 pc 24828
	jal	%x1, d_vec.2720  #1982 pc 24832
	addi	%x2, %x2, -100  #1982 pc 24836
	lw	%x1, 96(%x2) #1982 pc 24840
	addi	%x7, %x6, 0  #1982 pc 24844
	lw	%x6, 20(%x2)  #1982 pc 24848
	sw	%x1, 96(%x2)  #1982 pc 24852
	addi	%x2, %x2, 100  #1982 pc 24856
	jal	%x1, veciprod.2637  #1982 pc 24860
	addi	%x2, %x2, -100  #1982 pc 24864
	lw	%x1, 96(%x2) #1982 pc 24868
	flw	%f1, 88(%x2)  #1982 pc 24872
	fmul	%f1, %f1, %f0  #1982 pc 24876
	flw	%f0, 80(%x2)  #1983 pc 24880
	flw	%f2, 8(%x2)  #1983 pc 24884
	lw	%x29, 16(%x2)  #1983 pc 24888
	sw	%x1, 96(%x2)  #1983 pc 24892
	lw	%x30, 0(%x29)  #1983 pc 24896
	addi	%x2, %x2, 100  #1983 pc 24900
	jalr	%x1, %x30, 0  #1983 pc 24904
	addi	%x2, %x2, -100  #1983 pc 24908
	lw	%x1, 96(%x2)  #1983 pc 24912
	j	be_cont.9429 #pc 24916
	nop #pc 24920
be_else.9428: #pc 24924
be_cont.9429: #pc 24924
	j	be_cont.9427 #pc 24924
	nop #pc 24928
be_else.9426: #pc 24932
be_cont.9427: #pc 24932
be_cont.9425: #pc 24932
	lw	%x6, 4(%x2)  #1987 pc 24932
	addi	%x6, %x6, -1  #1987 pc 24936
	flw	%f0, 24(%x2)  #1987 pc 24940
	flw	%f1, 8(%x2)  #1987 pc 24944
	lw	%x7, 20(%x2)  #1987 pc 24948
	lw	%x29, 0(%x2)  #1987 pc 24952
	lw	%x30, 0(%x29)  #1987 pc 24956
	jalr	%x0, %x30, 0  #1987 pc 24960
	nop #pc 24964
bge_else.9423: #pc 24968
	ret #pc 24968
	nop #pc 24972
trace_ray.2940:  #pc 24976
	lw	%x9, 80(%x29)  #0 pc 24976
	lw	%x10, 76(%x29)  #0 pc 24980
	lw	%x11, 72(%x29)  #0 pc 24984
	lw	%x12, 68(%x29)  #0 pc 24988
	lw	%x13, 64(%x29)  #0 pc 24992
	lw	%x14, 60(%x29)  #0 pc 24996
	lw	%x15, 56(%x29)  #0 pc 25000
	lw	%x16, 52(%x29)  #0 pc 25004
	lw	%x17, 48(%x29)  #0 pc 25008
	lw	%x18, 44(%x29)  #0 pc 25012
	lw	%x19, 40(%x29)  #0 pc 25016
	lw	%x20, 36(%x29)  #0 pc 25020
	lw	%x21, 32(%x29)  #0 pc 25024
	lw	%x22, 28(%x29)  #0 pc 25028
	lw	%x23, 24(%x29)  #0 pc 25032
	lw	%x24, 20(%x29)  #0 pc 25036
	lw	%x25, 16(%x29)  #0 pc 25040
	lw	%x26, 12(%x29)  #0 pc 25044
	lw	%x27, 8(%x29)  #0 pc 25048
	lw	%x28, 4(%x29)  #0 pc 25052
	addi	%x31, %x0, 4  #pc 25056
	bge	%x31, %x6, 12  #1996 pc 25060
	j	ble_else.9432 #pc 25064
	nop #pc 25068
	sw	%x29, 0(%x2)  #1997 pc 25072
	fsw	%f1, 8(%x2)  #1997 pc 25076
	sw	%x11, 16(%x2)  #1997 pc 25080
	sw	%x10, 20(%x2)  #1997 pc 25084
	sw	%x20, 24(%x2)  #1997 pc 25088
	sw	%x15, 28(%x2)  #1997 pc 25092
	sw	%x28, 32(%x2)  #1997 pc 25096
	sw	%x14, 36(%x2)  #1997 pc 25100
	sw	%x17, 40(%x2)  #1997 pc 25104
	sw	%x19, 44(%x2)  #1997 pc 25108
	sw	%x12, 48(%x2)  #1997 pc 25112
	sw	%x8, 52(%x2)  #1997 pc 25116
	sw	%x23, 56(%x2)  #1997 pc 25120
	sw	%x9, 60(%x2)  #1997 pc 25124
	sw	%x24, 64(%x2)  #1997 pc 25128
	sw	%x13, 68(%x2)  #1997 pc 25132
	sw	%x26, 72(%x2)  #1997 pc 25136
	sw	%x18, 76(%x2)  #1997 pc 25140
	sw	%x25, 80(%x2)  #1997 pc 25144
	sw	%x16, 84(%x2)  #1997 pc 25148
	sw	%x27, 88(%x2)  #1997 pc 25152
	fsw	%f0, 96(%x2)  #1997 pc 25156
	sw	%x21, 104(%x2)  #1997 pc 25160
	sw	%x6, 108(%x2)  #1997 pc 25164
	sw	%x7, 112(%x2)  #1997 pc 25168
	sw	%x22, 116(%x2)  #1997 pc 25172
	addi	%x6, %x8, 0  #0 pc 25176
	sw	%x1, 120(%x2)  #1997 pc 25180
	addi	%x2, %x2, 124  #1997 pc 25184
	jal	%x1, p_surface_ids.2705  #1997 pc 25188
	addi	%x2, %x2, -124  #1997 pc 25192
	lw	%x1, 120(%x2) #1997 pc 25196
	lw	%x7, 112(%x2)  #1998 pc 25200
	lw	%x29, 116(%x2)  #1998 pc 25204
	sw	%x6, 120(%x2)  #1998 pc 25208
	addi	%x6, %x7, 0  #0 pc 25212
	sw	%x1, 124(%x2)  #1998 pc 25216
	lw	%x30, 0(%x29)  #1998 pc 25220
	addi	%x2, %x2, 128  #1998 pc 25224
	jalr	%x1, %x30, 0  #1998 pc 25228
	addi	%x2, %x2, -128  #1998 pc 25232
	lw	%x1, 124(%x2)  #1998 pc 25236
	beq	%x6, %x0, 12  #1998 pc 25240
	j	be_else.9435 #pc 25244
	nop #pc 25248
	addi	%x6, %x0, -1  #0 pc 25252
	lw	%x7, 108(%x2)  #2061 pc 25256
	slli	%x8, %x7, 2  #2061 pc 25260
	lw	%x9, 120(%x2)  #2061 pc 25264
	add	%x31, %x8, %x9  #2061 pc 25268
	sw	%x6, 0(%x31)  #2061 pc 25272
	beq	%x7, %x0, 12  #2063 pc 25276
	j	be_else.9436 #pc 25280
	nop #pc 25284
	ret #pc 25288
	nop #pc 25292
be_else.9436: #pc 25296
	lw	%x6, 112(%x2)  #2064 pc 25296
	lw	%x7, 104(%x2)  #2064 pc 25300
	sw	%x1, 124(%x2)  #2064 pc 25304
	addi	%x2, %x2, 128  #2064 pc 25308
	jal	%x1, veciprod.2637  #2064 pc 25312
	addi	%x2, %x2, -128  #2064 pc 25316
	lw	%x1, 124(%x2) #2064 pc 25320
	sw	%x1, 124(%x2)  #2064 pc 25324
	addi	%x2, %x2, 128  #2064 pc 25328
	jal	%x1, fneg.2515  #2064 pc 25332
	addi	%x2, %x2, -128  #2064 pc 25336
	lw	%x1, 124(%x2) #2064 pc 25340
	fsw	%f0, 128(%x2)  #2066 pc 25344
	sw	%x1, 136(%x2)  #2066 pc 25348
	addi	%x2, %x2, 140  #2066 pc 25352
	jal	%x1, fispos.2511  #2066 pc 25356
	addi	%x2, %x2, -140  #2066 pc 25360
	lw	%x1, 136(%x2) #2066 pc 25364
	beq	%x6, %x0, 12  #2066 pc 25368
	j	be_else.9439 #pc 25372
	nop #pc 25376
	ret #pc 25380
	nop #pc 25384
be_else.9439: #pc 25388
	flw	%f0, 128(%x2)  #2069 pc 25388
	sw	%x1, 136(%x2)  #2069 pc 25392
	addi	%x2, %x2, 140  #2069 pc 25396
	jal	%x1, fsqr.2517  #2069 pc 25400
	addi	%x2, %x2, -140  #2069 pc 25404
	lw	%x1, 136(%x2) #2069 pc 25408
	flw	%f1, 128(%x2)  #2069 pc 25412
	fmul	%f0, %f0, %f1  #2069 pc 25416
	flw	%f1, 96(%x2)  #2069 pc 25420
	fmul	%f0, %f0, %f1  #2069 pc 25424
	lw	%x6, 88(%x2)  #2069 pc 25428
	flw	%f1, 0(%x6)  #2069 pc 25432
	fmul	%f0, %f0, %f1  #2069 pc 25436
	lw	%x6, 84(%x2)  #2070 pc 25440
	flw	%f1, 0(%x6)  #2070 pc 25444
	fadd	%f1, %f1, %f0  #2070 pc 25448
	fsw	%f1, 0(%x6)  #2070 pc 25452
	flw	%f1, 4(%x6)  #2071 pc 25456
	fadd	%f1, %f1, %f0  #2071 pc 25460
	fsw	%f1, 4(%x6)  #2071 pc 25464
	flw	%f1, 8(%x6)  #2072 pc 25468
	fadd	%f0, %f1, %f0  #2072 pc 25472
	fsw	%f0, 8(%x6)  #2072 pc 25476
	ret #pc 25480
	nop #pc 25484
be_else.9435: #pc 25488
	lw	%x6, 80(%x2)  #2000 pc 25488
	lw	%x6, 0(%x6)  #2000 pc 25492
	slli	%x7, %x6, 2  #2001 pc 25496
	lw	%x8, 76(%x2)  #2001 pc 25500
	add	%x31, %x7, %x8  #2001 pc 25504
	lw	%x7, 0(%x31)  #2001 pc 25508
	sw	%x6, 136(%x2)  #2002 pc 25512
	sw	%x7, 140(%x2)  #2002 pc 25516
	addi	%x6, %x7, 0  #0 pc 25520
	sw	%x1, 144(%x2)  #2002 pc 25524
	addi	%x2, %x2, 148  #2002 pc 25528
	jal	%x1, o_reflectiontype.2663  #2002 pc 25532
	addi	%x2, %x2, -148  #2002 pc 25536
	lw	%x1, 144(%x2) #2002 pc 25540
	lw	%x7, 140(%x2)  #2003 pc 25544
	sw	%x6, 144(%x2)  #2003 pc 25548
	addi	%x6, %x7, 0  #0 pc 25552
	sw	%x1, 148(%x2)  #2003 pc 25556
	addi	%x2, %x2, 152  #2003 pc 25560
	jal	%x1, o_diffuse.2683  #2003 pc 25564
	addi	%x2, %x2, -152  #2003 pc 25568
	lw	%x1, 148(%x2) #2003 pc 25572
	flw	%f1, 96(%x2)  #2003 pc 25576
	fmul	%f0, %f0, %f1  #2003 pc 25580
	lw	%x6, 140(%x2)  #2005 pc 25584
	lw	%x7, 112(%x2)  #2005 pc 25588
	lw	%x29, 72(%x2)  #2005 pc 25592
	fsw	%f0, 152(%x2)  #2005 pc 25596
	sw	%x1, 160(%x2)  #2005 pc 25600
	lw	%x30, 0(%x29)  #2005 pc 25604
	addi	%x2, %x2, 164  #2005 pc 25608
	jalr	%x1, %x30, 0  #2005 pc 25612
	addi	%x2, %x2, -164  #2005 pc 25616
	lw	%x1, 160(%x2)  #2005 pc 25620
	lw	%x6, 68(%x2)  #2006 pc 25624
	lw	%x7, 64(%x2)  #2006 pc 25628
	sw	%x1, 160(%x2)  #2006 pc 25632
	addi	%x2, %x2, 164  #2006 pc 25636
	jal	%x1, veccpy.2631  #2006 pc 25640
	addi	%x2, %x2, -164  #2006 pc 25644
	lw	%x1, 160(%x2) #2006 pc 25648
	lw	%x6, 140(%x2)  #2007 pc 25652
	lw	%x7, 64(%x2)  #2007 pc 25656
	lw	%x29, 60(%x2)  #2007 pc 25660
	sw	%x1, 160(%x2)  #2007 pc 25664
	lw	%x30, 0(%x29)  #2007 pc 25668
	addi	%x2, %x2, 164  #2007 pc 25672
	jalr	%x1, %x30, 0  #2007 pc 25676 #utextureへ
	addi	%x2, %x2, -164  #2007 pc 25680
	lw	%x1, 160(%x2)  #2007 pc 25684
	addi	%x7, %x0, 4  #0 pc 25688
	lw	%x6, 136(%x2)  #2010 pc 25692
	sw	%x1, 160(%x2)  #2010 pc 25696
	addi	%x2, %x2, 164  #2010 pc 25700
	jal	%x1, mul.2547  #2010 pc 25704
	addi	%x2, %x2, -164  #2010 pc 25708
	lw	%x1, 160(%x2) #2010 pc 25712
	lw	%x7, 56(%x2)  #2010 pc 25716
	lw	%x7, 0(%x7)  #2010 pc 25720
	add	%x6, %x6, %x7  #2010 pc 25724
	lw	%x7, 108(%x2)  #2010 pc 25728
	slli	%x8, %x7, 2  #2010 pc 25732
	lw	%x9, 120(%x2)  #2010 pc 25736
	add	%x31, %x8, %x9  #2010 pc 25740
	sw	%x6, 0(%x31)  #2010 pc 25744
	lw	%x6, 52(%x2)  #2011 pc 25748
	sw	%x1, 160(%x2)  #2011 pc 25752
	addi	%x2, %x2, 164  #2011 pc 25756
	jal	%x1, p_intersection_points.2703  #2011 pc 25760
	addi	%x2, %x2, -164  #2011 pc 25764
	lw	%x1, 160(%x2) #2011 pc 25768
	lw	%x7, 108(%x2)  #2012 pc 25772
	slli	%x8, %x7, 2  #2012 pc 25776
	add	%x31, %x8, %x6  #2012 pc 25780
	lw	%x6, 0(%x31)  #2012 pc 25784
	lw	%x8, 64(%x2)  #2012 pc 25788
	addi	%x7, %x8, 0  #0 pc 25792
	sw	%x1, 160(%x2)  #2012 pc 25796
	addi	%x2, %x2, 164  #2012 pc 25800
	jal	%x1, veccpy.2631  #2012 pc 25804
	addi	%x2, %x2, -164  #2012 pc 25808
	lw	%x1, 160(%x2) #2012 pc 25812
	lw	%x6, 52(%x2)  #2015 pc 25816
	sw	%x1, 160(%x2)  #2015 pc 25820
	addi	%x2, %x2, 164  #2015 pc 25824
	jal	%x1, p_calc_diffuse.2707  #2015 pc 25828
	addi	%x2, %x2, -164  #2015 pc 25832
	lw	%x1, 160(%x2) #2015 pc 25836
	lw	%x7, 140(%x2)  #2016 pc 25840
	sw	%x6, 160(%x2)  #2016 pc 25844
	addi	%x6, %x7, 0  #0 pc 25848
	sw	%x1, 164(%x2)  #2016 pc 25852
	addi	%x2, %x2, 168  #2016 pc 25856
	jal	%x1, o_diffuse.2683  #2016 pc 25860
	addi	%x2, %x2, -168  #2016 pc 25864
	lw	%x1, 164(%x2) #2016 pc 25868
	fmv	%f1, l.6248  #0 pc 25872
	sw	%x1, 164(%x2)  #2016 pc 25876
	addi	%x2, %x2, 168  #2016 pc 25880
	jal	%x1, fless.2521  #2016 pc 25884
	addi	%x2, %x2, -168  #2016 pc 25888
	lw	%x1, 164(%x2) #2016 pc 25892
	beq	%x6, %x0, 12  #2016 pc 25896
	j	be_else.9443 #pc 25900
	nop #pc 25904
	addi	%x6, %x0, 1  #0 pc 25908
	lw	%x7, 108(%x2)  #2019 pc 25912
	slli	%x8, %x7, 2  #2019 pc 25916
	lw	%x9, 160(%x2)  #2019 pc 25920
	add	%x31, %x8, %x9  #2019 pc 25924
	sw	%x6, 0(%x31)  #2019 pc 25928
	lw	%x6, 52(%x2)  #2020 pc 25932
	sw	%x1, 164(%x2)  #2020 pc 25936
	addi	%x2, %x2, 168  #2020 pc 25940
	jal	%x1, p_energy.2709  #2020 pc 25944
	addi	%x2, %x2, -168  #2020 pc 25948
	lw	%x1, 164(%x2) #2020 pc 25952
	lw	%x7, 108(%x2)  #2021 pc 25956
	slli	%x8, %x7, 2  #2021 pc 25960
	add	%x31, %x8, %x6  #2021 pc 25964
	lw	%x8, 0(%x31)  #2021 pc 25968
	lw	%x9, 48(%x2)  #2021 pc 25972
	sw	%x6, 164(%x2)  #2021 pc 25976
	addi	%x7, %x9, 0  #0 pc 25980
	addi	%x6, %x8, 0  #0 pc 25984
	sw	%x1, 168(%x2)  #2021 pc 25988
	addi	%x2, %x2, 172  #2021 pc 25992
	jal	%x1, veccpy.2631  #2021 pc 25996
	addi	%x2, %x2, -172  #2021 pc 26000
	lw	%x1, 168(%x2) #2021 pc 26004
	lw	%x6, 108(%x2)  #2022 pc 26008
	slli	%x7, %x6, 2  #2022 pc 26012
	lw	%x8, 164(%x2)  #2022 pc 26016
	add	%x31, %x7, %x8  #2022 pc 26020
	lw	%x7, 0(%x31)  #2022 pc 26024
	fmv	%f0, l.6814  #0 pc 26028
	flw	%f1, 152(%x2)  #2022 pc 26032
	fmul	%f0, %f0, %f1  #2022 pc 26036
	addi	%x6, %x7, 0  #0 pc 26040
	sw	%x1, 168(%x2)  #2022 pc 26044
	addi	%x2, %x2, 172  #2022 pc 26048
	jal	%x1, vecscale.2652  #2022 pc 26052
	addi	%x2, %x2, -172  #2022 pc 26056
	lw	%x1, 168(%x2) #2022 pc 26060
	lw	%x6, 52(%x2)  #2023 pc 26064
	sw	%x1, 168(%x2)  #2023 pc 26068
	addi	%x2, %x2, 172  #2023 pc 26072
	jal	%x1, p_nvectors.2718  #2023 pc 26076
	addi	%x2, %x2, -172  #2023 pc 26080
	lw	%x1, 168(%x2) #2023 pc 26084
	lw	%x7, 108(%x2)  #2024 pc 26088
	slli	%x8, %x7, 2  #2024 pc 26092
	add	%x31, %x8, %x6  #2024 pc 26096
	lw	%x6, 0(%x31)  #2024 pc 26100
	lw	%x8, 44(%x2)  #2024 pc 26104
	addi	%x7, %x8, 0  #0 pc 26108
	sw	%x1, 168(%x2)  #2024 pc 26112
	addi	%x2, %x2, 172  #2024 pc 26116
	jal	%x1, veccpy.2631  #2024 pc 26120
	addi	%x2, %x2, -172  #2024 pc 26124
	lw	%x1, 168(%x2) #2024 pc 26128
	j	be_cont.9444 #pc 26132
	nop #pc 26136
be_else.9443: #pc 26140
	addi	%x6, %x0, 0  #0 pc 26140
	lw	%x7, 108(%x2)  #2017 pc 26144
	slli	%x8, %x7, 2  #2017 pc 26148
	lw	%x9, 160(%x2)  #2017 pc 26152
	add	%x31, %x8, %x9  #2017 pc 26156
	sw	%x6, 0(%x31)  #2017 pc 26160
be_cont.9444: #pc 26164
	fmv	%f0, l.6817  #0 pc 26164
	lw	%x6, 112(%x2)  #2027 pc 26168
	lw	%x7, 44(%x2)  #2027 pc 26172
	fsw	%f0, 168(%x2)  #2027 pc 26176
	sw	%x1, 176(%x2)  #2027 pc 26180
	addi	%x2, %x2, 180  #2027 pc 26184
	jal	%x1, veciprod.2637  #2027 pc 26188
	addi	%x2, %x2, -180  #2027 pc 26192
	lw	%x1, 176(%x2) #2027 pc 26196
	flw	%f1, 168(%x2)  #2027 pc 26200
	fmul	%f0, %f1, %f0  #2027 pc 26204
	lw	%x6, 112(%x2)  #2029 pc 26208
	lw	%x7, 44(%x2)  #2029 pc 26212
	sw	%x1, 176(%x2)  #2029 pc 26216
	addi	%x2, %x2, 180  #2029 pc 26220
	jal	%x1, vecaccum.2645  #2029 pc 26224
	addi	%x2, %x2, -180  #2029 pc 26228
	lw	%x1, 176(%x2) #2029 pc 26232
	lw	%x6, 140(%x2)  #2031 pc 26236
	sw	%x1, 176(%x2)  #2031 pc 26240
	addi	%x2, %x2, 180  #2031 pc 26244
	jal	%x1, o_hilight.2685  #2031 pc 26248
	addi	%x2, %x2, -180  #2031 pc 26252
	lw	%x1, 176(%x2) #2031 pc 26256
	flw	%f1, 96(%x2)  #2031 pc 26260
	fmul	%f0, %f1, %f0  #2031 pc 26264
	addi	%x6, %x0, 0  #0 pc 26268
	lw	%x7, 40(%x2)  #2034 pc 26272
	lw	%x7, 0(%x7)  #2034 pc 26276
	lw	%x29, 36(%x2)  #2034 pc 26280
	fsw	%f0, 176(%x2)  #2034 pc 26284
	sw	%x1, 184(%x2)  #2034 pc 26288
	lw	%x30, 0(%x29)  #2034 pc 26292
	addi	%x2, %x2, 188  #2034 pc 26296
	jalr	%x1, %x30, 0  #2034 pc 26300
	addi	%x2, %x2, -188  #2034 pc 26304
	lw	%x1, 184(%x2)  #2034 pc 26308
	beq	%x6, %x0, 12  #2034 pc 26312
	j	be_else.9445 #pc 26316
	nop #pc 26320
	lw	%x6, 44(%x2)  #2035 pc 26324
	lw	%x7, 104(%x2)  #2035 pc 26328
	sw	%x1, 184(%x2)  #2035 pc 26332
	addi	%x2, %x2, 188  #2035 pc 26336
	jal	%x1, veciprod.2637  #2035 pc 26340
	addi	%x2, %x2, -188  #2035 pc 26344
	lw	%x1, 184(%x2) #2035 pc 26348
	sw	%x1, 184(%x2)  #2035 pc 26352
	addi	%x2, %x2, 188  #2035 pc 26356
	jal	%x1, fneg.2515  #2035 pc 26360
	addi	%x2, %x2, -188  #2035 pc 26364
	lw	%x1, 184(%x2) #2035 pc 26368
	flw	%f1, 152(%x2)  #2035 pc 26372
	fmul	%f0, %f0, %f1  #2035 pc 26376
	lw	%x6, 112(%x2)  #2036 pc 26380
	lw	%x7, 104(%x2)  #2036 pc 26384
	fsw	%f0, 184(%x2)  #2036 pc 26388
	sw	%x1, 192(%x2)  #2036 pc 26392
	addi	%x2, %x2, 196  #2036 pc 26396
	jal	%x1, veciprod.2637  #2036 pc 26400
	addi	%x2, %x2, -196  #2036 pc 26404
	lw	%x1, 192(%x2) #2036 pc 26408
	sw	%x1, 192(%x2)  #2036 pc 26412
	addi	%x2, %x2, 196  #2036 pc 26416
	jal	%x1, fneg.2515  #2036 pc 26420
	addi	%x2, %x2, -196  #2036 pc 26424
	lw	%x1, 192(%x2) #2036 pc 26428
	fadd	%f1, %f0, %f30  #2036 pc 26432
	flw	%f0, 184(%x2)  #2037 pc 26436
	flw	%f2, 176(%x2)  #2037 pc 26440
	lw	%x29, 32(%x2)  #2037 pc 26444
	sw	%x1, 192(%x2)  #2037 pc 26448
	lw	%x30, 0(%x29)  #2037 pc 26452
	addi	%x2, %x2, 196  #2037 pc 26456
	jalr	%x1, %x30, 0  #2037 pc 26460
	addi	%x2, %x2, -196  #2037 pc 26464
	lw	%x1, 192(%x2)  #2037 pc 26468
	j	be_cont.9446 #pc 26472
	nop #pc 26476
be_else.9445: #pc 26480
be_cont.9446: #pc 26480
	lw	%x6, 64(%x2)  #2041 pc 26480
	lw	%x29, 28(%x2)  #2041 pc 26484
	sw	%x1, 192(%x2)  #2041 pc 26488
	lw	%x30, 0(%x29)  #2041 pc 26492
	addi	%x2, %x2, 196  #2041 pc 26496
	jalr	%x1, %x30, 0  #2041 pc 26500
	addi	%x2, %x2, -196  #2041 pc 26504
	lw	%x1, 192(%x2)  #2041 pc 26508
	lw	%x6, 24(%x2)  #2042 pc 26512
	lw	%x6, 0(%x6)  #2042 pc 26516
	addi	%x6, %x6, -1  #2042 pc 26520
	flw	%f0, 152(%x2)  #2042 pc 26524
	flw	%f1, 176(%x2)  #2042 pc 26528
	lw	%x7, 112(%x2)  #2042 pc 26532
	lw	%x29, 20(%x2)  #2042 pc 26536
	sw	%x1, 192(%x2)  #2042 pc 26540
	lw	%x30, 0(%x29)  #2042 pc 26544
	addi	%x2, %x2, 196  #2042 pc 26548
	jalr	%x1, %x30, 0  #2042 pc 26552
	addi	%x2, %x2, -196  #2042 pc 26556
	lw	%x1, 192(%x2)  #2042 pc 26560
	fmv	%f0, l.6821  #0 pc 26564
	flw	%f1, 96(%x2)  #2045 pc 26568
	sw	%x1, 192(%x2)  #2045 pc 26572
	addi	%x2, %x2, 196  #2045 pc 26576
	jal	%x1, fless.2521  #2045 pc 26580
	addi	%x2, %x2, -196  #2045 pc 26584
	lw	%x1, 192(%x2) #2045 pc 26588
	beq	%x6, %x0, 12  #2045 pc 26592
	j	be_else.9447 #pc 26596
	nop #pc 26600
	ret #pc 26604
	nop #pc 26608
be_else.9447: #pc 26612
	lw	%x6, 108(%x2)  #2047 pc 26612
	addi	%x31, %x0, 4  #pc 26616
	bge	%x6, %x31, 12  #2047 pc 26620
	j	bge_else.9449 #pc 26624
	nop #pc 26628
	j	bge_cont.9450 #pc 26632
	nop #pc 26636
bge_else.9449: #pc 26640
	addi	%x7, %x6, 1  #2048 pc 26640
	addi	%x8, %x0, -1  #0 pc 26644
	slli	%x7, %x7, 2  #2048 pc 26648
	lw	%x9, 120(%x2)  #2048 pc 26652
	add	%x31, %x7, %x9  #2048 pc 26656
	sw	%x8, 0(%x31)  #2048 pc 26660
bge_cont.9450: #pc 26664
	lw	%x7, 144(%x2)  #2051 pc 26664
	addi	%x31, %x0, 2  #pc 26668
	beq	%x7, %x31, 12  #2051 pc 26672
	j	be_else.9451 #pc 26676
	nop #pc 26680
	fmv	%f0, l.6263  #0 pc 26684
	lw	%x7, 140(%x2)  #2052 pc 26688
	fsw	%f0, 192(%x2)  #2052 pc 26692
	addi	%x6, %x7, 0  #0 pc 26696
	sw	%x1, 200(%x2)  #2052 pc 26700
	addi	%x2, %x2, 204  #2052 pc 26704
	jal	%x1, o_diffuse.2683  #2052 pc 26708
	addi	%x2, %x2, -204  #2052 pc 26712
	lw	%x1, 200(%x2) #2052 pc 26716
	flw	%f1, 192(%x2)  #2052 pc 26720
	fsub	%f0, %f1, %f0  #2052 pc 26724
	flw	%f1, 96(%x2)  #2052 pc 26728
	fmul	%f0, %f1, %f0  #2052 pc 26732
	lw	%x6, 108(%x2)  #2053 pc 26736
	addi	%x6, %x6, 1  #2053 pc 26740
	lw	%x7, 16(%x2)  #2053 pc 26744
	flw	%f1, 0(%x7)  #2053 pc 26748
	flw	%f2, 8(%x2)  #2053 pc 26752
	fadd	%f1, %f2, %f1  #2053 pc 26756
	lw	%x7, 112(%x2)  #2053 pc 26760
	lw	%x8, 52(%x2)  #2053 pc 26764
	lw	%x29, 0(%x2)  #2053 pc 26768
	lw	%x30, 0(%x29)  #2053 pc 26772
	jalr	%x0, %x30, 0  #2053 pc 26776
	nop #pc 26780
be_else.9451: #pc 26784
	ret #pc 26784
	nop #pc 26788
ble_else.9432: #pc 26792
	ret #pc 26792
	nop #pc 26796
trace_diffuse_ray.2946:  #pc 26800
	lw	%x7, 48(%x29)  #0 pc 26800
	lw	%x8, 44(%x29)  #0 pc 26804
	lw	%x9, 40(%x29)  #0 pc 26808
	lw	%x10, 36(%x29)  #0 pc 26812
	lw	%x11, 32(%x29)  #0 pc 26816
	lw	%x12, 28(%x29)  #0 pc 26820
	lw	%x13, 24(%x29)  #0 pc 26824
	lw	%x14, 20(%x29)  #0 pc 26828
	lw	%x15, 16(%x29)  #0 pc 26832
	lw	%x16, 12(%x29)  #0 pc 26836
	lw	%x17, 8(%x29)  #0 pc 26840
	lw	%x18, 4(%x29)  #0 pc 26844
	sw	%x8, 0(%x2)  #2091 pc 26848
	sw	%x18, 4(%x2)  #2091 pc 26852
	fsw	%f0, 8(%x2)  #2091 pc 26856
	sw	%x13, 16(%x2)  #2091 pc 26860
	sw	%x12, 20(%x2)  #2091 pc 26864
	sw	%x9, 24(%x2)  #2091 pc 26868
	sw	%x10, 28(%x2)  #2091 pc 26872
	sw	%x15, 32(%x2)  #2091 pc 26876
	sw	%x7, 36(%x2)  #2091 pc 26880
	sw	%x17, 40(%x2)  #2091 pc 26884
	sw	%x6, 44(%x2)  #2091 pc 26888
	sw	%x11, 48(%x2)  #2091 pc 26892
	sw	%x16, 52(%x2)  #2091 pc 26896
	addi	%x29, %x14, 0  #0 pc 26900
	sw	%x1, 56(%x2)  #2091 pc 26904
	lw	%x30, 0(%x29)  #2091 pc 26908
	addi	%x2, %x2, 60  #2091 pc 26912
	jalr	%x1, %x30, 0  #2091 pc 26916
	addi	%x2, %x2, -60  #2091 pc 26920
	lw	%x1, 56(%x2)  #2091 pc 26924
	beq	%x6, %x0, 12  #2091 pc 26928
	j	be_else.9454 #pc 26932
	nop #pc 26936
	ret #pc 26940
	nop #pc 26944
be_else.9454: #pc 26948
	lw	%x6, 52(%x2)  #2092 pc 26948
	lw	%x6, 0(%x6)  #2092 pc 26952
	slli	%x6, %x6, 2  #2092 pc 26956
	lw	%x7, 48(%x2)  #2092 pc 26960
	add	%x31, %x6, %x7  #2092 pc 26964
	lw	%x6, 0(%x31)  #2092 pc 26968
	lw	%x7, 44(%x2)  #2093 pc 26972
	sw	%x6, 56(%x2)  #2093 pc 26976
	addi	%x6, %x7, 0  #0 pc 26980
	sw	%x1, 60(%x2)  #2093 pc 26984
	addi	%x2, %x2, 64  #2093 pc 26988
	jal	%x1, d_vec.2720  #2093 pc 26992
	addi	%x2, %x2, -64  #2093 pc 26996
	lw	%x1, 60(%x2) #2093 pc 27000
	addi	%x7, %x6, 0  #2093 pc 27004
	lw	%x6, 56(%x2)  #2093 pc 27008
	lw	%x29, 40(%x2)  #2093 pc 27012
	sw	%x1, 60(%x2)  #2093 pc 27016
	lw	%x30, 0(%x29)  #2093 pc 27020
	addi	%x2, %x2, 64  #2093 pc 27024
	jalr	%x1, %x30, 0  #2093 pc 27028
	addi	%x2, %x2, -64  #2093 pc 27032
	lw	%x1, 60(%x2)  #2093 pc 27036
	lw	%x6, 56(%x2)  #2094 pc 27040
	lw	%x7, 32(%x2)  #2094 pc 27044
	lw	%x29, 36(%x2)  #2094 pc 27048
	sw	%x1, 60(%x2)  #2094 pc 27052
	lw	%x30, 0(%x29)  #2094 pc 27056
	addi	%x2, %x2, 64  #2094 pc 27060
	jalr	%x1, %x30, 0  #2094 pc 27064
	addi	%x2, %x2, -64  #2094 pc 27068
	lw	%x1, 60(%x2)  #2094 pc 27072
	addi	%x6, %x0, 0  #0 pc 27076
	lw	%x7, 28(%x2)  #2097 pc 27080
	lw	%x7, 0(%x7)  #2097 pc 27084
	lw	%x29, 24(%x2)  #2097 pc 27088
	sw	%x1, 60(%x2)  #2097 pc 27092
	lw	%x30, 0(%x29)  #2097 pc 27096
	addi	%x2, %x2, 64  #2097 pc 27100
	jalr	%x1, %x30, 0  #2097 pc 27104
	addi	%x2, %x2, -64  #2097 pc 27108
	lw	%x1, 60(%x2)  #2097 pc 27112
	beq	%x6, %x0, 12  #2097 pc 27116
	j	be_else.9456 #pc 27120
	nop #pc 27124
	lw	%x6, 20(%x2)  #2098 pc 27128
	lw	%x7, 16(%x2)  #2098 pc 27132
	sw	%x1, 60(%x2)  #2098 pc 27136
	addi	%x2, %x2, 64  #2098 pc 27140
	jal	%x1, veciprod.2637  #2098 pc 27144
	addi	%x2, %x2, -64  #2098 pc 27148
	lw	%x1, 60(%x2) #2098 pc 27152
	sw	%x1, 60(%x2)  #2098 pc 27156
	addi	%x2, %x2, 64  #2098 pc 27160
	jal	%x1, fneg.2515  #2098 pc 27164
	addi	%x2, %x2, -64  #2098 pc 27168
	lw	%x1, 60(%x2) #2098 pc 27172
	fsw	%f0, 64(%x2)  #2099 pc 27176
	sw	%x1, 72(%x2)  #2099 pc 27180
	addi	%x2, %x2, 76  #2099 pc 27184
	jal	%x1, fispos.2511  #2099 pc 27188
	addi	%x2, %x2, -76  #2099 pc 27192
	lw	%x1, 72(%x2) #2099 pc 27196
	beq	%x6, %x0, 12  #2099 pc 27200
	j	be_else.9458 #pc 27204
	nop #pc 27208
	fmv	%f0, l.6244  #0 pc 27212
	j	be_cont.9459 #pc 27216
	nop #pc 27220
be_else.9458: #pc 27224
	flw	%f0, 64(%x2)  #2099 pc 27224
be_cont.9459: #pc 27228
	flw	%f1, 8(%x2)  #2100 pc 27228
	fmul	%f0, %f1, %f0  #2100 pc 27232
	lw	%x6, 56(%x2)  #2100 pc 27236
	fsw	%f0, 72(%x2)  #2100 pc 27240
	sw	%x1, 80(%x2)  #2100 pc 27244
	addi	%x2, %x2, 84  #2100 pc 27248
	jal	%x1, o_diffuse.2683  #2100 pc 27252
	addi	%x2, %x2, -84  #2100 pc 27256
	lw	%x1, 80(%x2) #2100 pc 27260
	flw	%f1, 72(%x2)  #2100 pc 27264
	fmul	%f0, %f1, %f0  #2100 pc 27268
	lw	%x6, 4(%x2)  #2100 pc 27272
	lw	%x7, 0(%x2)  #2100 pc 27276
	j	vecaccum.2645  #2100 pc 27280
	nop #pc 27284
be_else.9456: #pc 27288
	ret #pc 27288
	nop #pc 27292
iter_trace_diffuse_rays.2949:  #pc 27296
	lw	%x10, 4(%x29)  #0 pc 27296
	bge	%x9, %x0, 12  #2108 pc 27300
	j	bge_else.9461 #pc 27304
	nop #pc 27308
	slli	%x11, %x9, 2  #2109 pc 27312
	add	%x31, %x11, %x6  #2109 pc 27316
	lw	%x11, 0(%x31)  #2109 pc 27320
	sw	%x8, 0(%x2)  #2109 pc 27324
	sw	%x29, 4(%x2)  #2109 pc 27328
	sw	%x10, 8(%x2)  #2109 pc 27332
	sw	%x6, 12(%x2)  #2109 pc 27336
	sw	%x9, 16(%x2)  #2109 pc 27340
	sw	%x7, 20(%x2)  #2109 pc 27344
	addi	%x6, %x11, 0  #0 pc 27348
	sw	%x1, 24(%x2)  #2109 pc 27352
	addi	%x2, %x2, 28  #2109 pc 27356
	jal	%x1, d_vec.2720  #2109 pc 27360
	addi	%x2, %x2, -28  #2109 pc 27364
	lw	%x1, 24(%x2) #2109 pc 27368
	lw	%x7, 20(%x2)  #2109 pc 27372
	sw	%x1, 24(%x2)  #2109 pc 27376
	addi	%x2, %x2, 28  #2109 pc 27380
	jal	%x1, veciprod.2637  #2109 pc 27384
	addi	%x2, %x2, -28  #2109 pc 27388
	lw	%x1, 24(%x2) #2109 pc 27392
	fsw	%f0, 24(%x2)  #2113 pc 27396
	sw	%x1, 32(%x2)  #2113 pc 27400
	addi	%x2, %x2, 36  #2113 pc 27404
	jal	%x1, fisneg.2513  #2113 pc 27408
	addi	%x2, %x2, -36  #2113 pc 27412
	lw	%x1, 32(%x2) #2113 pc 27416
	beq	%x6, %x0, 12  #2113 pc 27420
	j	be_else.9462 #pc 27424
	nop #pc 27428
	lw	%x6, 16(%x2)  #2116 pc 27432
	slli	%x7, %x6, 2  #2116 pc 27436
	lw	%x8, 12(%x2)  #2116 pc 27440
	add	%x31, %x7, %x8  #2116 pc 27444
	lw	%x7, 0(%x31)  #2116 pc 27448
	fmv	%f0, l.6843  #0 pc 27452
	flw	%f1, 24(%x2)  #2116 pc 27456
	fdiv	%f0, %f1, %f0  #2116 pc 27460
	lw	%x29, 8(%x2)  #2116 pc 27464
	addi	%x6, %x7, 0  #0 pc 27468
	sw	%x1, 32(%x2)  #2116 pc 27472
	lw	%x30, 0(%x29)  #2116 pc 27476
	addi	%x2, %x2, 36  #2116 pc 27480
	jalr	%x1, %x30, 0  #2116 pc 27484
	addi	%x2, %x2, -36  #2116 pc 27488
	lw	%x1, 32(%x2)  #2116 pc 27492
	j	be_cont.9463 #pc 27496
	nop #pc 27500
be_else.9462: #pc 27504
	lw	%x6, 16(%x2)  #2114 pc 27504
	addi	%x7, %x6, 1  #2114 pc 27508
	slli	%x7, %x7, 2  #2114 pc 27512
	lw	%x8, 12(%x2)  #2114 pc 27516
	add	%x31, %x7, %x8  #2114 pc 27520
	lw	%x7, 0(%x31)  #2114 pc 27524
	fmv	%f0, l.6840  #0 pc 27528
	flw	%f1, 24(%x2)  #2114 pc 27532
	fdiv	%f0, %f1, %f0  #2114 pc 27536
	lw	%x29, 8(%x2)  #2114 pc 27540
	addi	%x6, %x7, 0  #0 pc 27544
	sw	%x1, 32(%x2)  #2114 pc 27548
	lw	%x30, 0(%x29)  #2114 pc 27552
	addi	%x2, %x2, 36  #2114 pc 27556
	jalr	%x1, %x30, 0  #2114 pc 27560
	addi	%x2, %x2, -36  #2114 pc 27564
	lw	%x1, 32(%x2)  #2114 pc 27568
be_cont.9463: #pc 27572
	lw	%x6, 16(%x2)  #2118 pc 27572
	addi	%x9, %x6, -2  #2118 pc 27576
	lw	%x6, 12(%x2)  #2118 pc 27580
	lw	%x7, 20(%x2)  #2118 pc 27584
	lw	%x8, 0(%x2)  #2118 pc 27588
	lw	%x29, 4(%x2)  #2118 pc 27592
	lw	%x30, 0(%x29)  #2118 pc 27596
	jalr	%x0, %x30, 0  #2118 pc 27600
	nop #pc 27604
bge_else.9461: #pc 27608
	ret #pc 27608
	nop #pc 27612
trace_diffuse_rays.2954:  #pc 27616
	lw	%x9, 8(%x29)  #2124 pc 27616
	lw	%x10, 4(%x29)  #2124 pc 27620
	sw	%x8, 0(%x2)  #2124 pc 27624
	sw	%x7, 4(%x2)  #2124 pc 27628
	sw	%x6, 8(%x2)  #2124 pc 27632
	sw	%x10, 12(%x2)  #2124 pc 27636
	addi	%x6, %x8, 0  #0 pc 27640
	addi	%x29, %x9, 0  #0 pc 27644
	sw	%x1, 16(%x2)  #2124 pc 27648
	lw	%x30, 0(%x29)  #2124 pc 27652
	addi	%x2, %x2, 20  #2124 pc 27656
	jalr	%x1, %x30, 0  #2124 pc 27660
	addi	%x2, %x2, -20  #2124 pc 27664
	lw	%x1, 16(%x2)  #2124 pc 27668
	addi	%x9, %x0, 118  #0 pc 27672
	lw	%x6, 8(%x2)  #2128 pc 27676
	lw	%x7, 4(%x2)  #2128 pc 27680
	lw	%x8, 0(%x2)  #2128 pc 27684
	lw	%x29, 12(%x2)  #2128 pc 27688
	lw	%x30, 0(%x29)  #2128 pc 27692
	jalr	%x0, %x30, 0  #2128 pc 27696
	nop #pc 27700
trace_diffuse_ray_80percent.2958:  #pc 27704
	lw	%x9, 8(%x29)  #0 pc 27704
	lw	%x10, 4(%x29)  #0 pc 27708
	sw	%x8, 0(%x2)  #2135 pc 27712
	sw	%x7, 4(%x2)  #2135 pc 27716
	sw	%x9, 8(%x2)  #2135 pc 27720
	sw	%x10, 12(%x2)  #2135 pc 27724
	sw	%x6, 16(%x2)  #2135 pc 27728
	beq	%x6, %x0, 12  #2135 pc 27732
	j	be_else.9465 #pc 27736
	nop #pc 27740
	j	be_cont.9466 #pc 27744
	nop #pc 27748
be_else.9465: #pc 27752
	lw	%x11, 0(%x10)  #2136 pc 27752
	addi	%x6, %x11, 0  #0 pc 27756
	addi	%x29, %x9, 0  #0 pc 27760
	sw	%x1, 20(%x2)  #2136 pc 27764
	lw	%x30, 0(%x29)  #2136 pc 27768
	addi	%x2, %x2, 24  #2136 pc 27772
	jalr	%x1, %x30, 0  #2136 pc 27776
	addi	%x2, %x2, -24  #2136 pc 27780
	lw	%x1, 20(%x2)  #2136 pc 27784
be_cont.9466: #pc 27788
	lw	%x6, 16(%x2)  #2139 pc 27788
	addi	%x31, %x0, 1  #pc 27792
	beq	%x6, %x31, 12  #2139 pc 27796
	j	be_else.9467 #pc 27800
	nop #pc 27804
	j	be_cont.9468 #pc 27808
	nop #pc 27812
be_else.9467: #pc 27816
	lw	%x7, 12(%x2)  #2140 pc 27816
	lw	%x8, 4(%x7)  #2140 pc 27820
	lw	%x9, 4(%x2)  #2140 pc 27824
	lw	%x10, 0(%x2)  #2140 pc 27828
	lw	%x29, 8(%x2)  #2140 pc 27832
	addi	%x7, %x9, 0  #0 pc 27836
	addi	%x6, %x8, 0  #0 pc 27840
	addi	%x8, %x10, 0  #0 pc 27844
	sw	%x1, 20(%x2)  #2140 pc 27848
	lw	%x30, 0(%x29)  #2140 pc 27852
	addi	%x2, %x2, 24  #2140 pc 27856
	jalr	%x1, %x30, 0  #2140 pc 27860
	addi	%x2, %x2, -24  #2140 pc 27864
	lw	%x1, 20(%x2)  #2140 pc 27868
be_cont.9468: #pc 27872
	lw	%x6, 16(%x2)  #2143 pc 27872
	addi	%x31, %x0, 2  #pc 27876
	beq	%x6, %x31, 12  #2143 pc 27880
	j	be_else.9469 #pc 27884
	nop #pc 27888
	j	be_cont.9470 #pc 27892
	nop #pc 27896
be_else.9469: #pc 27900
	lw	%x7, 12(%x2)  #2144 pc 27900
	lw	%x8, 8(%x7)  #2144 pc 27904
	lw	%x9, 4(%x2)  #2144 pc 27908
	lw	%x10, 0(%x2)  #2144 pc 27912
	lw	%x29, 8(%x2)  #2144 pc 27916
	addi	%x7, %x9, 0  #0 pc 27920
	addi	%x6, %x8, 0  #0 pc 27924
	addi	%x8, %x10, 0  #0 pc 27928
	sw	%x1, 20(%x2)  #2144 pc 27932
	lw	%x30, 0(%x29)  #2144 pc 27936
	addi	%x2, %x2, 24  #2144 pc 27940
	jalr	%x1, %x30, 0  #2144 pc 27944
	addi	%x2, %x2, -24  #2144 pc 27948
	lw	%x1, 20(%x2)  #2144 pc 27952
be_cont.9470: #pc 27956
	lw	%x6, 16(%x2)  #2147 pc 27956
	addi	%x31, %x0, 3  #pc 27960
	beq	%x6, %x31, 12  #2147 pc 27964
	j	be_else.9471 #pc 27968
	nop #pc 27972
	j	be_cont.9472 #pc 27976
	nop #pc 27980
be_else.9471: #pc 27984
	lw	%x7, 12(%x2)  #2148 pc 27984
	lw	%x8, 12(%x7)  #2148 pc 27988
	lw	%x9, 4(%x2)  #2148 pc 27992
	lw	%x10, 0(%x2)  #2148 pc 27996
	lw	%x29, 8(%x2)  #2148 pc 28000
	addi	%x7, %x9, 0  #0 pc 28004
	addi	%x6, %x8, 0  #0 pc 28008
	addi	%x8, %x10, 0  #0 pc 28012
	sw	%x1, 20(%x2)  #2148 pc 28016
	lw	%x30, 0(%x29)  #2148 pc 28020
	addi	%x2, %x2, 24  #2148 pc 28024
	jalr	%x1, %x30, 0  #2148 pc 28028
	addi	%x2, %x2, -24  #2148 pc 28032
	lw	%x1, 20(%x2)  #2148 pc 28036
be_cont.9472: #pc 28040
	lw	%x6, 16(%x2)  #2151 pc 28040
	addi	%x31, %x0, 4  #pc 28044
	beq	%x6, %x31, 12  #2151 pc 28048
	j	be_else.9473 #pc 28052
	nop #pc 28056
	ret #pc 28060
	nop #pc 28064
be_else.9473: #pc 28068
	lw	%x6, 12(%x2)  #2152 pc 28068
	lw	%x6, 16(%x6)  #2152 pc 28072
	lw	%x7, 4(%x2)  #2152 pc 28076
	lw	%x8, 0(%x2)  #2152 pc 28080
	lw	%x29, 8(%x2)  #2152 pc 28084
	lw	%x30, 0(%x29)  #2152 pc 28088
	jalr	%x0, %x30, 0  #2152 pc 28092
	nop #pc 28096
calc_diffuse_using_1point.2962:  #pc 28100
	lw	%x8, 12(%x29)  #2161 pc 28100
	lw	%x9, 8(%x29)  #2161 pc 28104
	lw	%x10, 4(%x29)  #2161 pc 28108
	sw	%x9, 0(%x2)  #2161 pc 28112
	sw	%x8, 4(%x2)  #2161 pc 28116
	sw	%x10, 8(%x2)  #2161 pc 28120
	sw	%x7, 12(%x2)  #2161 pc 28124
	sw	%x6, 16(%x2)  #2161 pc 28128
	sw	%x1, 20(%x2)  #2161 pc 28132
	addi	%x2, %x2, 24  #2161 pc 28136
	jal	%x1, p_received_ray_20percent.2711  #2161 pc 28140
	addi	%x2, %x2, -24  #2161 pc 28144
	lw	%x1, 20(%x2) #2161 pc 28148
	lw	%x7, 16(%x2)  #2162 pc 28152
	sw	%x6, 20(%x2)  #2162 pc 28156
	addi	%x6, %x7, 0  #0 pc 28160
	sw	%x1, 24(%x2)  #2162 pc 28164
	addi	%x2, %x2, 28  #2162 pc 28168
	jal	%x1, p_nvectors.2718  #2162 pc 28172
	addi	%x2, %x2, -28  #2162 pc 28176
	lw	%x1, 24(%x2) #2162 pc 28180
	lw	%x7, 16(%x2)  #2163 pc 28184
	sw	%x6, 24(%x2)  #2163 pc 28188
	addi	%x6, %x7, 0  #0 pc 28192
	sw	%x1, 28(%x2)  #2163 pc 28196
	addi	%x2, %x2, 32  #2163 pc 28200
	jal	%x1, p_intersection_points.2703  #2163 pc 28204
	addi	%x2, %x2, -32  #2163 pc 28208
	lw	%x1, 28(%x2) #2163 pc 28212
	lw	%x7, 16(%x2)  #2164 pc 28216
	sw	%x6, 28(%x2)  #2164 pc 28220
	addi	%x6, %x7, 0  #0 pc 28224
	sw	%x1, 32(%x2)  #2164 pc 28228
	addi	%x2, %x2, 36  #2164 pc 28232
	jal	%x1, p_energy.2709  #2164 pc 28236
	addi	%x2, %x2, -36  #2164 pc 28240
	lw	%x1, 32(%x2) #2164 pc 28244
	lw	%x7, 12(%x2)  #2166 pc 28248
	slli	%x8, %x7, 2  #2166 pc 28252
	lw	%x9, 20(%x2)  #2166 pc 28256
	add	%x31, %x8, %x9  #2166 pc 28260
	lw	%x8, 0(%x31)  #2166 pc 28264
	lw	%x9, 8(%x2)  #2166 pc 28268
	sw	%x6, 32(%x2)  #2166 pc 28272
	addi	%x7, %x8, 0  #0 pc 28276
	addi	%x6, %x9, 0  #0 pc 28280
	sw	%x1, 36(%x2)  #2166 pc 28284
	addi	%x2, %x2, 40  #2166 pc 28288
	jal	%x1, veccpy.2631  #2166 pc 28292
	addi	%x2, %x2, -40  #2166 pc 28296
	lw	%x1, 36(%x2) #2166 pc 28300
	lw	%x6, 16(%x2)  #2168 pc 28304
	sw	%x1, 36(%x2)  #2168 pc 28308
	addi	%x2, %x2, 40  #2168 pc 28312
	jal	%x1, p_group_id.2713  #2168 pc 28316
	addi	%x2, %x2, -40  #2168 pc 28320
	lw	%x1, 36(%x2) #2168 pc 28324
	lw	%x7, 12(%x2)  #2169 pc 28328
	slli	%x8, %x7, 2  #2169 pc 28332
	lw	%x9, 24(%x2)  #2169 pc 28336
	add	%x31, %x8, %x9  #2169 pc 28340
	lw	%x8, 0(%x31)  #2169 pc 28344
	slli	%x9, %x7, 2  #2170 pc 28348
	lw	%x10, 28(%x2)  #2170 pc 28352
	add	%x31, %x9, %x10  #2170 pc 28356
	lw	%x9, 0(%x31)  #2170 pc 28360
	lw	%x29, 4(%x2)  #2167 pc 28364
	addi	%x7, %x8, 0  #0 pc 28368
	addi	%x8, %x9, 0  #0 pc 28372
	sw	%x1, 36(%x2)  #2167 pc 28376
	lw	%x30, 0(%x29)  #2167 pc 28380
	addi	%x2, %x2, 40  #2167 pc 28384
	jalr	%x1, %x30, 0  #2167 pc 28388
	addi	%x2, %x2, -40  #2167 pc 28392
	lw	%x1, 36(%x2)  #2167 pc 28396
	lw	%x6, 12(%x2)  #2171 pc 28400
	slli	%x6, %x6, 2  #2171 pc 28404
	lw	%x7, 32(%x2)  #2171 pc 28408
	add	%x31, %x6, %x7  #2171 pc 28412
	lw	%x7, 0(%x31)  #2171 pc 28416
	lw	%x6, 0(%x2)  #2171 pc 28420
	lw	%x8, 8(%x2)  #2171 pc 28424
	j	vecaccumv.2655  #2171 pc 28428
	nop #pc 28432
calc_diffuse_using_5points.2965:  #pc 28436
	lw	%x11, 8(%x29)  #0 pc 28436
	lw	%x12, 4(%x29)  #0 pc 28440
	slli	%x13, %x6, 2  #2180 pc 28444
	add	%x31, %x13, %x7  #2180 pc 28448
	lw	%x7, 0(%x31)  #2180 pc 28452
	sw	%x11, 0(%x2)  #2180 pc 28456
	sw	%x12, 4(%x2)  #2180 pc 28460
	sw	%x10, 8(%x2)  #2180 pc 28464
	sw	%x9, 12(%x2)  #2180 pc 28468
	sw	%x8, 16(%x2)  #2180 pc 28472
	sw	%x6, 20(%x2)  #2180 pc 28476
	addi	%x6, %x7, 0  #0 pc 28480
	sw	%x1, 24(%x2)  #2180 pc 28484
	addi	%x2, %x2, 28  #2180 pc 28488
	jal	%x1, p_received_ray_20percent.2711  #2180 pc 28492
	addi	%x2, %x2, -28  #2180 pc 28496
	lw	%x1, 24(%x2) #2180 pc 28500
	lw	%x7, 20(%x2)  #2181 pc 28504
	addi	%x8, %x7, -1  #2181 pc 28508
	slli	%x8, %x8, 2  #2181 pc 28512
	lw	%x9, 16(%x2)  #2181 pc 28516
	add	%x31, %x8, %x9  #2181 pc 28520
	lw	%x8, 0(%x31)  #2181 pc 28524
	sw	%x6, 24(%x2)  #2181 pc 28528
	addi	%x6, %x8, 0  #0 pc 28532
	sw	%x1, 28(%x2)  #2181 pc 28536
	addi	%x2, %x2, 32  #2181 pc 28540
	jal	%x1, p_received_ray_20percent.2711  #2181 pc 28544
	addi	%x2, %x2, -32  #2181 pc 28548
	lw	%x1, 28(%x2) #2181 pc 28552
	lw	%x7, 20(%x2)  #2182 pc 28556
	slli	%x8, %x7, 2  #2182 pc 28560
	lw	%x9, 16(%x2)  #2182 pc 28564
	add	%x31, %x8, %x9  #2182 pc 28568
	lw	%x8, 0(%x31)  #2182 pc 28572
	sw	%x6, 28(%x2)  #2182 pc 28576
	addi	%x6, %x8, 0  #0 pc 28580
	sw	%x1, 32(%x2)  #2182 pc 28584
	addi	%x2, %x2, 36  #2182 pc 28588
	jal	%x1, p_received_ray_20percent.2711  #2182 pc 28592
	addi	%x2, %x2, -36  #2182 pc 28596
	lw	%x1, 32(%x2) #2182 pc 28600
	lw	%x7, 20(%x2)  #2183 pc 28604
	addi	%x8, %x7, 1  #2183 pc 28608
	slli	%x8, %x8, 2  #2183 pc 28612
	lw	%x9, 16(%x2)  #2183 pc 28616
	add	%x31, %x8, %x9  #2183 pc 28620
	lw	%x8, 0(%x31)  #2183 pc 28624
	sw	%x6, 32(%x2)  #2183 pc 28628
	addi	%x6, %x8, 0  #0 pc 28632
	sw	%x1, 36(%x2)  #2183 pc 28636
	addi	%x2, %x2, 40  #2183 pc 28640
	jal	%x1, p_received_ray_20percent.2711  #2183 pc 28644
	addi	%x2, %x2, -40  #2183 pc 28648
	lw	%x1, 36(%x2) #2183 pc 28652
	lw	%x7, 20(%x2)  #2184 pc 28656
	slli	%x8, %x7, 2  #2184 pc 28660
	lw	%x9, 12(%x2)  #2184 pc 28664
	add	%x31, %x8, %x9  #2184 pc 28668
	lw	%x8, 0(%x31)  #2184 pc 28672
	sw	%x6, 36(%x2)  #2184 pc 28676
	addi	%x6, %x8, 0  #0 pc 28680
	sw	%x1, 40(%x2)  #2184 pc 28684
	addi	%x2, %x2, 44  #2184 pc 28688
	jal	%x1, p_received_ray_20percent.2711  #2184 pc 28692
	addi	%x2, %x2, -44  #2184 pc 28696
	lw	%x1, 40(%x2) #2184 pc 28700
	lw	%x7, 8(%x2)  #2186 pc 28704
	slli	%x8, %x7, 2  #2186 pc 28708
	lw	%x9, 24(%x2)  #2186 pc 28712
	add	%x31, %x8, %x9  #2186 pc 28716
	lw	%x8, 0(%x31)  #2186 pc 28720
	lw	%x9, 4(%x2)  #2186 pc 28724
	sw	%x6, 40(%x2)  #2186 pc 28728
	addi	%x7, %x8, 0  #0 pc 28732
	addi	%x6, %x9, 0  #0 pc 28736
	sw	%x1, 44(%x2)  #2186 pc 28740
	addi	%x2, %x2, 48  #2186 pc 28744
	jal	%x1, veccpy.2631  #2186 pc 28748
	addi	%x2, %x2, -48  #2186 pc 28752
	lw	%x1, 44(%x2) #2186 pc 28756
	lw	%x6, 8(%x2)  #2187 pc 28760
	slli	%x7, %x6, 2  #2187 pc 28764
	lw	%x8, 28(%x2)  #2187 pc 28768
	add	%x31, %x7, %x8  #2187 pc 28772
	lw	%x7, 0(%x31)  #2187 pc 28776
	lw	%x8, 4(%x2)  #2187 pc 28780
	addi	%x6, %x8, 0  #0 pc 28784
	sw	%x1, 44(%x2)  #2187 pc 28788
	addi	%x2, %x2, 48  #2187 pc 28792
	jal	%x1, vecadd.2649  #2187 pc 28796
	addi	%x2, %x2, -48  #2187 pc 28800
	lw	%x1, 44(%x2) #2187 pc 28804
	lw	%x6, 8(%x2)  #2188 pc 28808
	slli	%x7, %x6, 2  #2188 pc 28812
	lw	%x8, 32(%x2)  #2188 pc 28816
	add	%x31, %x7, %x8  #2188 pc 28820
	lw	%x7, 0(%x31)  #2188 pc 28824
	lw	%x8, 4(%x2)  #2188 pc 28828
	addi	%x6, %x8, 0  #0 pc 28832
	sw	%x1, 44(%x2)  #2188 pc 28836
	addi	%x2, %x2, 48  #2188 pc 28840
	jal	%x1, vecadd.2649  #2188 pc 28844
	addi	%x2, %x2, -48  #2188 pc 28848
	lw	%x1, 44(%x2) #2188 pc 28852
	lw	%x6, 8(%x2)  #2189 pc 28856
	slli	%x7, %x6, 2  #2189 pc 28860
	lw	%x8, 36(%x2)  #2189 pc 28864
	add	%x31, %x7, %x8  #2189 pc 28868
	lw	%x7, 0(%x31)  #2189 pc 28872
	lw	%x8, 4(%x2)  #2189 pc 28876
	addi	%x6, %x8, 0  #0 pc 28880
	sw	%x1, 44(%x2)  #2189 pc 28884
	addi	%x2, %x2, 48  #2189 pc 28888
	jal	%x1, vecadd.2649  #2189 pc 28892
	addi	%x2, %x2, -48  #2189 pc 28896
	lw	%x1, 44(%x2) #2189 pc 28900
	lw	%x6, 8(%x2)  #2190 pc 28904
	slli	%x7, %x6, 2  #2190 pc 28908
	lw	%x8, 40(%x2)  #2190 pc 28912
	add	%x31, %x7, %x8  #2190 pc 28916
	lw	%x7, 0(%x31)  #2190 pc 28920
	lw	%x8, 4(%x2)  #2190 pc 28924
	addi	%x6, %x8, 0  #0 pc 28928
	sw	%x1, 44(%x2)  #2190 pc 28932
	addi	%x2, %x2, 48  #2190 pc 28936
	jal	%x1, vecadd.2649  #2190 pc 28940
	addi	%x2, %x2, -48  #2190 pc 28944
	lw	%x1, 44(%x2) #2190 pc 28948
	lw	%x6, 20(%x2)  #2192 pc 28952
	slli	%x6, %x6, 2  #2192 pc 28956
	lw	%x7, 16(%x2)  #2192 pc 28960
	add	%x31, %x6, %x7  #2192 pc 28964
	lw	%x6, 0(%x31)  #2192 pc 28968
	sw	%x1, 44(%x2)  #2192 pc 28972
	addi	%x2, %x2, 48  #2192 pc 28976
	jal	%x1, p_energy.2709  #2192 pc 28980
	addi	%x2, %x2, -48  #2192 pc 28984
	lw	%x1, 44(%x2) #2192 pc 28988
	lw	%x7, 8(%x2)  #2193 pc 28992
	slli	%x7, %x7, 2  #2193 pc 28996
	add	%x31, %x7, %x6  #2193 pc 29000
	lw	%x7, 0(%x31)  #2193 pc 29004
	lw	%x6, 0(%x2)  #2193 pc 29008
	lw	%x8, 4(%x2)  #2193 pc 29012
	j	vecaccumv.2655  #2193 pc 29016
	nop #pc 29020
do_without_neighbors.2971:  #pc 29024
	lw	%x8, 4(%x29)  #0 pc 29024
	addi	%x31, %x0, 4  #pc 29028
	bge	%x31, %x7, 12  #2199 pc 29032
	j	ble_else.9475 #pc 29036
	nop #pc 29040
	sw	%x29, 0(%x2)  #2201 pc 29044
	sw	%x8, 4(%x2)  #2201 pc 29048
	sw	%x6, 8(%x2)  #2201 pc 29052
	sw	%x7, 12(%x2)  #2201 pc 29056
	sw	%x1, 16(%x2)  #2201 pc 29060
	addi	%x2, %x2, 20  #2201 pc 29064
	jal	%x1, p_surface_ids.2705  #2201 pc 29068
	addi	%x2, %x2, -20  #2201 pc 29072
	lw	%x1, 16(%x2) #2201 pc 29076
	lw	%x7, 12(%x2)  #2202 pc 29080
	slli	%x8, %x7, 2  #2202 pc 29084
	add	%x31, %x8, %x6  #2202 pc 29088
	lw	%x6, 0(%x31)  #2202 pc 29092
	bge	%x6, %x0, 12  #2202 pc 29096
	j	bge_else.9476 #pc 29100
	nop #pc 29104
	lw	%x6, 8(%x2)  #2203 pc 29108
	sw	%x1, 16(%x2)  #2203 pc 29112
	addi	%x2, %x2, 20  #2203 pc 29116
	jal	%x1, p_calc_diffuse.2707  #2203 pc 29120
	addi	%x2, %x2, -20  #2203 pc 29124
	lw	%x1, 16(%x2) #2203 pc 29128
	lw	%x7, 12(%x2)  #2204 pc 29132
	slli	%x8, %x7, 2  #2204 pc 29136
	add	%x31, %x8, %x6  #2204 pc 29140
	lw	%x6, 0(%x31)  #2204 pc 29144
	beq	%x6, %x0, 12  #2204 pc 29148
	j	be_else.9477 #pc 29152
	nop #pc 29156
	j	be_cont.9478 #pc 29160
	nop #pc 29164
be_else.9477: #pc 29168
	lw	%x6, 8(%x2)  #2205 pc 29168
	lw	%x29, 4(%x2)  #2205 pc 29172
	sw	%x1, 16(%x2)  #2205 pc 29176
	lw	%x30, 0(%x29)  #2205 pc 29180
	addi	%x2, %x2, 20  #2205 pc 29184
	jalr	%x1, %x30, 0  #2205 pc 29188
	addi	%x2, %x2, -20  #2205 pc 29192
	lw	%x1, 16(%x2)  #2205 pc 29196
be_cont.9478: #pc 29200
	lw	%x6, 12(%x2)  #2207 pc 29200
	addi	%x7, %x6, 1  #2207 pc 29204
	lw	%x6, 8(%x2)  #2207 pc 29208
	lw	%x29, 0(%x2)  #2207 pc 29212
	lw	%x30, 0(%x29)  #2207 pc 29216
	jalr	%x0, %x30, 0  #2207 pc 29220
	nop #pc 29224
bge_else.9476: #pc 29228
	ret #pc 29228
	nop #pc 29232
ble_else.9475: #pc 29236
	ret #pc 29236
	nop #pc 29240
neighbors_exist.2974:  #pc 29244
	lw	%x8, 4(%x29)  #0 pc 29244
	lw	%x9, 4(%x8)  #2214 pc 29248
	addi	%x10, %x7, 1  #2214 pc 29252
	bge	%x10, %x9, 12  #2214 pc 29256
	j	ble_else.9481 #pc 29260
	nop #pc 29264
	addi	%x6, %x0, 0  #0 pc 29268
	ret #pc 29272
	nop #pc 29276
ble_else.9481: #pc 29280
	bge	%x0, %x7, 12  #2215 pc 29280
	j	ble_else.9482 #pc 29284
	nop #pc 29288
	addi	%x6, %x0, 0  #0 pc 29292
	ret #pc 29296
	nop #pc 29300
ble_else.9482: #pc 29304
	lw	%x7, 0(%x8)  #2216 pc 29304
	addi	%x8, %x6, 1  #2216 pc 29308
	bge	%x8, %x7, 12  #2216 pc 29312
	j	ble_else.9483 #pc 29316
	nop #pc 29320
	addi	%x6, %x0, 0  #0 pc 29324
	ret #pc 29328
	nop #pc 29332
ble_else.9483: #pc 29336
	bge	%x0, %x6, 12  #2217 pc 29336
	j	ble_else.9484 #pc 29340
	nop #pc 29344
	addi	%x6, %x0, 0  #0 pc 29348
	ret #pc 29352
	nop #pc 29356
ble_else.9484: #pc 29360
	addi	%x6, %x0, 1  #0 pc 29360
	ret #pc 29364
	nop #pc 29368
get_surface_id.2978:  #pc 29372
	sw	%x7, 0(%x2)  #2226 pc 29372
	sw	%x1, 4(%x2)  #2226 pc 29376
	addi	%x2, %x2, 8  #2226 pc 29380
	jal	%x1, p_surface_ids.2705  #2226 pc 29384
	addi	%x2, %x2, -8  #2226 pc 29388
	lw	%x1, 4(%x2) #2226 pc 29392
	lw	%x7, 0(%x2)  #2227 pc 29396
	slli	%x7, %x7, 2  #2227 pc 29400
	add	%x31, %x7, %x6  #2227 pc 29404
	lw	%x6, 0(%x31)  #2227 pc 29408
	ret #pc 29412
	nop #pc 29416
neighbors_are_available.2981:  #pc 29420
	slli	%x11, %x6, 2  #2233 pc 29420
	add	%x31, %x11, %x8  #2233 pc 29424
	lw	%x11, 0(%x31)  #2233 pc 29428
	sw	%x8, 0(%x2)  #2233 pc 29432
	sw	%x9, 4(%x2)  #2233 pc 29436
	sw	%x10, 8(%x2)  #2233 pc 29440
	sw	%x7, 12(%x2)  #2233 pc 29444
	sw	%x6, 16(%x2)  #2233 pc 29448
	addi	%x7, %x10, 0  #0 pc 29452
	addi	%x6, %x11, 0  #0 pc 29456
	sw	%x1, 20(%x2)  #2233 pc 29460
	addi	%x2, %x2, 24  #2233 pc 29464
	jal	%x1, get_surface_id.2978  #2233 pc 29468
	addi	%x2, %x2, -24  #2233 pc 29472
	lw	%x1, 20(%x2) #2233 pc 29476
	lw	%x7, 16(%x2)  #2235 pc 29480
	slli	%x8, %x7, 2  #2235 pc 29484
	lw	%x9, 12(%x2)  #2235 pc 29488
	add	%x31, %x8, %x9  #2235 pc 29492
	lw	%x8, 0(%x31)  #2235 pc 29496
	lw	%x9, 8(%x2)  #2235 pc 29500
	sw	%x6, 20(%x2)  #2235 pc 29504
	addi	%x7, %x9, 0  #0 pc 29508
	addi	%x6, %x8, 0  #0 pc 29512
	sw	%x1, 24(%x2)  #2235 pc 29516
	addi	%x2, %x2, 28  #2235 pc 29520
	jal	%x1, get_surface_id.2978  #2235 pc 29524
	addi	%x2, %x2, -28  #2235 pc 29528
	lw	%x1, 24(%x2) #2235 pc 29532
	lw	%x7, 20(%x2)  #2235 pc 29536
	beq	%x6, %x7, 12  #2235 pc 29540
	j	be_else.9485 #pc 29544
	nop #pc 29548
	lw	%x6, 16(%x2)  #2236 pc 29552
	slli	%x8, %x6, 2  #2236 pc 29556
	lw	%x9, 4(%x2)  #2236 pc 29560
	add	%x31, %x8, %x9  #2236 pc 29564
	lw	%x8, 0(%x31)  #2236 pc 29568
	lw	%x9, 8(%x2)  #2236 pc 29572
	addi	%x7, %x9, 0  #0 pc 29576
	addi	%x6, %x8, 0  #0 pc 29580
	sw	%x1, 24(%x2)  #2236 pc 29584
	addi	%x2, %x2, 28  #2236 pc 29588
	jal	%x1, get_surface_id.2978  #2236 pc 29592
	addi	%x2, %x2, -28  #2236 pc 29596
	lw	%x1, 24(%x2) #2236 pc 29600
	lw	%x7, 20(%x2)  #2236 pc 29604
	beq	%x6, %x7, 12  #2236 pc 29608
	j	be_else.9486 #pc 29612
	nop #pc 29616
	lw	%x6, 16(%x2)  #2237 pc 29620
	addi	%x8, %x6, -1  #2237 pc 29624
	slli	%x8, %x8, 2  #2237 pc 29628
	lw	%x9, 0(%x2)  #2237 pc 29632
	add	%x31, %x8, %x9  #2237 pc 29636
	lw	%x8, 0(%x31)  #2237 pc 29640
	lw	%x10, 8(%x2)  #2237 pc 29644
	addi	%x7, %x10, 0  #0 pc 29648
	addi	%x6, %x8, 0  #0 pc 29652
	sw	%x1, 24(%x2)  #2237 pc 29656
	addi	%x2, %x2, 28  #2237 pc 29660
	jal	%x1, get_surface_id.2978  #2237 pc 29664
	addi	%x2, %x2, -28  #2237 pc 29668
	lw	%x1, 24(%x2) #2237 pc 29672
	lw	%x7, 20(%x2)  #2237 pc 29676
	beq	%x6, %x7, 12  #2237 pc 29680
	j	be_else.9487 #pc 29684
	nop #pc 29688
	lw	%x6, 16(%x2)  #2238 pc 29692
	addi	%x6, %x6, 1  #2238 pc 29696
	slli	%x6, %x6, 2  #2238 pc 29700
	lw	%x8, 0(%x2)  #2238 pc 29704
	add	%x31, %x6, %x8  #2238 pc 29708
	lw	%x6, 0(%x31)  #2238 pc 29712
	lw	%x8, 8(%x2)  #2238 pc 29716
	addi	%x7, %x8, 0  #0 pc 29720
	sw	%x1, 24(%x2)  #2238 pc 29724
	addi	%x2, %x2, 28  #2238 pc 29728
	jal	%x1, get_surface_id.2978  #2238 pc 29732
	addi	%x2, %x2, -28  #2238 pc 29736
	lw	%x1, 24(%x2) #2238 pc 29740
	lw	%x7, 20(%x2)  #2238 pc 29744
	beq	%x6, %x7, 12  #2238 pc 29748
	j	be_else.9488 #pc 29752
	nop #pc 29756
	addi	%x6, %x0, 1  #0 pc 29760
	ret #pc 29764
	nop #pc 29768
be_else.9488: #pc 29772
	addi	%x6, %x0, 0  #0 pc 29772
	ret #pc 29776
	nop #pc 29780
be_else.9487: #pc 29784
	addi	%x6, %x0, 0  #0 pc 29784
	ret #pc 29788
	nop #pc 29792
be_else.9486: #pc 29796
	addi	%x6, %x0, 0  #0 pc 29796
	ret #pc 29800
	nop #pc 29804
be_else.9485: #pc 29808
	addi	%x6, %x0, 0  #0 pc 29808
	ret #pc 29812
	nop #pc 29816
try_exploit_neighbors.2987:  #pc 29820
	lw	%x12, 8(%x29)  #2251 pc 29820
	lw	%x13, 4(%x29)  #2251 pc 29824
	slli	%x14, %x6, 2  #2251 pc 29828
	add	%x31, %x14, %x9  #2251 pc 29832
	lw	%x14, 0(%x31)  #2251 pc 29836
	addi	%x31, %x0, 4  #pc 29840
	bge	%x31, %x11, 12  #2252 pc 29844
	j	ble_else.9489 #pc 29848
	nop #pc 29852
	sw	%x7, 0(%x2)  #2255 pc 29856
	sw	%x29, 4(%x2)  #2255 pc 29860
	sw	%x13, 8(%x2)  #2255 pc 29864
	sw	%x14, 12(%x2)  #2255 pc 29868
	sw	%x12, 16(%x2)  #2255 pc 29872
	sw	%x11, 20(%x2)  #2255 pc 29876
	sw	%x10, 24(%x2)  #2255 pc 29880
	sw	%x9, 28(%x2)  #2255 pc 29884
	sw	%x8, 32(%x2)  #2255 pc 29888
	sw	%x6, 36(%x2)  #2255 pc 29892
	addi	%x7, %x11, 0  #0 pc 29896
	addi	%x6, %x14, 0  #0 pc 29900
	sw	%x1, 40(%x2)  #2255 pc 29904
	addi	%x2, %x2, 44  #2255 pc 29908
	jal	%x1, get_surface_id.2978  #2255 pc 29912
	addi	%x2, %x2, -44  #2255 pc 29916
	lw	%x1, 40(%x2) #2255 pc 29920
	bge	%x6, %x0, 12  #2255 pc 29924
	j	bge_else.9490 #pc 29928
	nop #pc 29932
	lw	%x6, 36(%x2)  #2257 pc 29936
	lw	%x7, 32(%x2)  #2257 pc 29940
	lw	%x8, 28(%x2)  #2257 pc 29944
	lw	%x9, 24(%x2)  #2257 pc 29948
	lw	%x10, 20(%x2)  #2257 pc 29952
	sw	%x1, 40(%x2)  #2257 pc 29956
	addi	%x2, %x2, 44  #2257 pc 29960
	jal	%x1, neighbors_are_available.2981  #2257 pc 29964
	addi	%x2, %x2, -44  #2257 pc 29968
	lw	%x1, 40(%x2) #2257 pc 29972
	beq	%x6, %x0, 12  #2257 pc 29976
	j	be_else.9491 #pc 29980
	nop #pc 29984
	lw	%x6, 36(%x2)  #2269 pc 29988
	slli	%x6, %x6, 2  #2269 pc 29992
	lw	%x7, 28(%x2)  #2269 pc 29996
	add	%x31, %x6, %x7  #2269 pc 30000
	lw	%x6, 0(%x31)  #2269 pc 30004
	lw	%x7, 20(%x2)  #2269 pc 30008
	lw	%x29, 16(%x2)  #2269 pc 30012
	lw	%x30, 0(%x29)  #2269 pc 30016
	jalr	%x0, %x30, 0  #2269 pc 30020
	nop #pc 30024
be_else.9491: #pc 30028
	lw	%x6, 12(%x2)  #2260 pc 30028
	sw	%x1, 40(%x2)  #2260 pc 30032
	addi	%x2, %x2, 44  #2260 pc 30036
	jal	%x1, p_calc_diffuse.2707  #2260 pc 30040
	addi	%x2, %x2, -44  #2260 pc 30044
	lw	%x1, 40(%x2) #2260 pc 30048
	lw	%x10, 20(%x2)  #2261 pc 30052
	slli	%x7, %x10, 2  #2261 pc 30056
	add	%x31, %x7, %x6  #2261 pc 30060
	lw	%x6, 0(%x31)  #2261 pc 30064
	beq	%x6, %x0, 12  #2261 pc 30068
	j	be_else.9492 #pc 30072
	nop #pc 30076
	j	be_cont.9493 #pc 30080
	nop #pc 30084
be_else.9492: #pc 30088
	lw	%x6, 36(%x2)  #2262 pc 30088
	lw	%x7, 32(%x2)  #2262 pc 30092
	lw	%x8, 28(%x2)  #2262 pc 30096
	lw	%x9, 24(%x2)  #2262 pc 30100
	lw	%x29, 8(%x2)  #2262 pc 30104
	sw	%x1, 40(%x2)  #2262 pc 30108
	lw	%x30, 0(%x29)  #2262 pc 30112
	addi	%x2, %x2, 44  #2262 pc 30116
	jalr	%x1, %x30, 0  #2262 pc 30120
	addi	%x2, %x2, -44  #2262 pc 30124
	lw	%x1, 40(%x2)  #2262 pc 30128
be_cont.9493: #pc 30132
	lw	%x6, 20(%x2)  #2266 pc 30132
	addi	%x11, %x6, 1  #2266 pc 30136
	lw	%x6, 36(%x2)  #2266 pc 30140
	lw	%x7, 0(%x2)  #2266 pc 30144
	lw	%x8, 32(%x2)  #2266 pc 30148
	lw	%x9, 28(%x2)  #2266 pc 30152
	lw	%x10, 24(%x2)  #2266 pc 30156
	lw	%x29, 4(%x2)  #2266 pc 30160
	lw	%x30, 0(%x29)  #2266 pc 30164
	jalr	%x0, %x30, 0  #2266 pc 30168
	nop #pc 30172
bge_else.9490: #pc 30176
	ret #pc 30176
	nop #pc 30180
ble_else.9489: #pc 30184
	ret #pc 30184
	nop #pc 30188
write_ppm_header.2994:  #pc 30192
	lw	%x7, 4(%x29)  #0 pc 30192
	addi	%x8, %x0, 80  #0 pc 30196
	sw	%x7, 0(%x2)  #2279 pc 30200
	sw	%x6, 4(%x2)  #2279 pc 30204
	addi	%x6, %x8, 0  #0 pc 30208
	sw	%x1, 8(%x2)  #2279 pc 30212
	addi	%x2, %x2, 12  #2279 pc 30216
	jal	%x1, print_char.2558  #2279 pc 30220
	addi	%x2, %x2, -12  #2279 pc 30224
	lw	%x1, 8(%x2) #2279 pc 30228
	lw	%x6, 4(%x2)  #2280 pc 30232
	addi	%x6, %x6, 48  #2280 pc 30236
	sw	%x1, 8(%x2)  #2280 pc 30240
	addi	%x2, %x2, 12  #2280 pc 30244
	jal	%x1, print_char.2558  #2280 pc 30248
	addi	%x2, %x2, -12  #2280 pc 30252
	lw	%x1, 8(%x2) #2280 pc 30256
	addi	%x6, %x0, 10  #0 pc 30260
	sw	%x1, 8(%x2)  #2281 pc 30264
	addi	%x2, %x2, 12  #2281 pc 30268
	jal	%x1, print_char.2558  #2281 pc 30272
	addi	%x2, %x2, -12  #2281 pc 30276
	lw	%x1, 8(%x2) #2281 pc 30280
	lw	%x6, 0(%x2)  #2282 pc 30284
	lw	%x7, 0(%x6)  #2282 pc 30288
	addi	%x6, %x7, 0  #0 pc 30292
	sw	%x1, 8(%x2)  #2282 pc 30296
	addi	%x2, %x2, 12  #2282 pc 30300
	jal	%x1, print_int.2560  #2282 pc 30304
	addi	%x2, %x2, -12  #2282 pc 30308
	lw	%x1, 8(%x2) #2282 pc 30312
	addi	%x6, %x0, 32  #0 pc 30316
	sw	%x1, 8(%x2)  #2283 pc 30320
	addi	%x2, %x2, 12  #2283 pc 30324
	jal	%x1, print_char.2558  #2283 pc 30328
	addi	%x2, %x2, -12  #2283 pc 30332
	lw	%x1, 8(%x2) #2283 pc 30336
	lw	%x6, 0(%x2)  #2284 pc 30340
	lw	%x6, 4(%x6)  #2284 pc 30344
	sw	%x1, 8(%x2)  #2284 pc 30348
	addi	%x2, %x2, 12  #2284 pc 30352
	jal	%x1, print_int.2560  #2284 pc 30356
	addi	%x2, %x2, -12  #2284 pc 30360
	lw	%x1, 8(%x2) #2284 pc 30364
	addi	%x6, %x0, 32  #0 pc 30368
	sw	%x1, 8(%x2)  #2285 pc 30372
	addi	%x2, %x2, 12  #2285 pc 30376
	jal	%x1, print_char.2558  #2285 pc 30380
	addi	%x2, %x2, -12  #2285 pc 30384
	lw	%x1, 8(%x2) #2285 pc 30388
	addi	%x6, %x0, 255  #0 pc 30392
	sw	%x1, 8(%x2)  #2286 pc 30396
	addi	%x2, %x2, 12  #2286 pc 30400
	jal	%x1, print_int.2560  #2286 pc 30404
	addi	%x2, %x2, -12  #2286 pc 30408
	lw	%x1, 8(%x2) #2286 pc 30412
	addi	%x6, %x0, 10  #0 pc 30416
	j	print_char.2558  #2287 pc 30420
	nop #pc 30424
write_rgb_element_int.2996:  #pc 30428
	sw	%x1, 0(%x2)  #2292 pc 30428
	addi	%x2, %x2, 4  #2292 pc 30432
	jal	%x1, int_of_float.2540  #2292 pc 30436
	addi	%x2, %x2, -4  #2292 pc 30440
	lw	%x1, 0(%x2) #2292 pc 30444
	addi	%x31, %x0, 255  #pc 30448
	bge	%x31, %x6, 12  #2293 pc 30452
	j	ble_else.9496 #pc 30456
	nop #pc 30460
	bge	%x6, %x0, 12  #2293 pc 30464
	j	bge_else.9498 #pc 30468
	nop #pc 30472
	j	bge_cont.9499 #pc 30476
	nop #pc 30480
bge_else.9498: #pc 30484
	addi	%x6, %x0, 0  #0 pc 30484
bge_cont.9499: #pc 30488
	j	ble_cont.9497 #pc 30488
	nop #pc 30492
ble_else.9496: #pc 30496
	addi	%x6, %x0, 255  #0 pc 30496
ble_cont.9497: #pc 30500
	j	print_int.2560  #2294 pc 30500
	nop #pc 30504
write_rgb_element_char.2998:  #pc 30508
	sw	%x1, 0(%x2)  #2298 pc 30508
	addi	%x2, %x2, 4  #2298 pc 30512
	jal	%x1, int_of_float.2540  #2298 pc 30516
	addi	%x2, %x2, -4  #2298 pc 30520
	lw	%x1, 0(%x2) #2298 pc 30524
	addi	%x31, %x0, 255  #pc 30528
	bge	%x31, %x6, 12  #2299 pc 30532
	j	ble_else.9500 #pc 30536
	nop #pc 30540
	bge	%x6, %x0, 12  #2299 pc 30544
	j	bge_else.9502 #pc 30548
	nop #pc 30552
	j	bge_cont.9503 #pc 30556
	nop #pc 30560
bge_else.9502: #pc 30564
	addi	%x6, %x0, 0  #0 pc 30564
bge_cont.9503: #pc 30568
	j	ble_cont.9501 #pc 30568
	nop #pc 30572
ble_else.9500: #pc 30576
	addi	%x6, %x0, 255  #0 pc 30576
ble_cont.9501: #pc 30580
	j	print_char.2558  #2300 pc 30580
	nop #pc 30584
write_rgb.3000:  #pc 30588
	lw	%x7, 4(%x29)  #0 pc 30588
	addi	%x31, %x0, 3  #pc 30592
	beq	%x6, %x31, 12  #2304 pc 30596
	j	be_else.9504 #pc 30600
	nop #pc 30604
	flw	%f0, 0(%x7)  #2305 pc 30608
	sw	%x7, 0(%x2)  #2305 pc 30612
	sw	%x1, 4(%x2)  #2305 pc 30616
	addi	%x2, %x2, 8  #2305 pc 30620
	jal	%x1, write_rgb_element_int.2996  #2305 pc 30624
	addi	%x2, %x2, -8  #2305 pc 30628
	lw	%x1, 4(%x2) #2305 pc 30632
	addi	%x6, %x0, 32  #0 pc 30636
	sw	%x1, 4(%x2)  #2306 pc 30640
	addi	%x2, %x2, 8  #2306 pc 30644
	jal	%x1, print_char.2558  #2306 pc 30648
	addi	%x2, %x2, -8  #2306 pc 30652
	lw	%x1, 4(%x2) #2306 pc 30656
	lw	%x6, 0(%x2)  #2307 pc 30660
	flw	%f0, 4(%x6)  #2307 pc 30664
	sw	%x1, 4(%x2)  #2307 pc 30668
	addi	%x2, %x2, 8  #2307 pc 30672
	jal	%x1, write_rgb_element_int.2996  #2307 pc 30676
	addi	%x2, %x2, -8  #2307 pc 30680
	lw	%x1, 4(%x2) #2307 pc 30684
	addi	%x6, %x0, 32  #0 pc 30688
	sw	%x1, 4(%x2)  #2308 pc 30692
	addi	%x2, %x2, 8  #2308 pc 30696
	jal	%x1, print_char.2558  #2308 pc 30700
	addi	%x2, %x2, -8  #2308 pc 30704
	lw	%x1, 4(%x2) #2308 pc 30708
	lw	%x6, 0(%x2)  #2309 pc 30712
	flw	%f0, 8(%x6)  #2309 pc 30716
	sw	%x1, 4(%x2)  #2309 pc 30720
	addi	%x2, %x2, 8  #2309 pc 30724
	jal	%x1, write_rgb_element_int.2996  #2309 pc 30728
	addi	%x2, %x2, -8  #2309 pc 30732
	lw	%x1, 4(%x2) #2309 pc 30736
	addi	%x6, %x0, 10  #0 pc 30740
	j	print_char.2558  #2310 pc 30744
	nop #pc 30748
be_else.9504: #pc 30752
	flw	%f0, 0(%x7)  #2312 pc 30752
	sw	%x7, 0(%x2)  #2312 pc 30756
	sw	%x1, 4(%x2)  #2312 pc 30760
	addi	%x2, %x2, 8  #2312 pc 30764
	jal	%x1, write_rgb_element_char.2998  #2312 pc 30768
	addi	%x2, %x2, -8  #2312 pc 30772
	lw	%x1, 4(%x2) #2312 pc 30776
	lw	%x6, 0(%x2)  #2313 pc 30780
	flw	%f0, 4(%x6)  #2313 pc 30784
	sw	%x1, 4(%x2)  #2313 pc 30788
	addi	%x2, %x2, 8  #2313 pc 30792
	jal	%x1, write_rgb_element_char.2998  #2313 pc 30796
	addi	%x2, %x2, -8  #2313 pc 30800
	lw	%x1, 4(%x2) #2313 pc 30804
	lw	%x6, 0(%x2)  #2314 pc 30808
	flw	%f0, 8(%x6)  #2314 pc 30812
	j	write_rgb_element_char.2998  #2314 pc 30816
	nop #pc 30820
pretrace_diffuse_rays.3002:  #pc 30824
	lw	%x8, 12(%x29)  #0 pc 30824
	lw	%x9, 8(%x29)  #0 pc 30828
	lw	%x10, 4(%x29)  #0 pc 30832
	addi	%x31, %x0, 4  #pc 30836
	bge	%x31, %x7, 12  #2327 pc 30840
	j	ble_else.9505 #pc 30844
	nop #pc 30848
	sw	%x29, 0(%x2)  #2330 pc 30852
	sw	%x8, 4(%x2)  #2330 pc 30856
	sw	%x9, 8(%x2)  #2330 pc 30860
	sw	%x10, 12(%x2)  #2330 pc 30864
	sw	%x7, 16(%x2)  #2330 pc 30868
	sw	%x6, 20(%x2)  #2330 pc 30872
	sw	%x1, 24(%x2)  #2330 pc 30876
	addi	%x2, %x2, 28  #2330 pc 30880
	jal	%x1, get_surface_id.2978  #2330 pc 30884
	addi	%x2, %x2, -28  #2330 pc 30888
	lw	%x1, 24(%x2) #2330 pc 30892
	bge	%x6, %x0, 12  #2331 pc 30896
	j	bge_else.9506 #pc 30900
	nop #pc 30904
	lw	%x6, 20(%x2)  #2333 pc 30908
	sw	%x1, 24(%x2)  #2333 pc 30912
	addi	%x2, %x2, 28  #2333 pc 30916
	jal	%x1, p_calc_diffuse.2707  #2333 pc 30920
	addi	%x2, %x2, -28  #2333 pc 30924
	lw	%x1, 24(%x2) #2333 pc 30928
	lw	%x7, 16(%x2)  #2334 pc 30932
	slli	%x8, %x7, 2  #2334 pc 30936
	add	%x31, %x8, %x6  #2334 pc 30940
	lw	%x6, 0(%x31)  #2334 pc 30944
	beq	%x6, %x0, 12  #2334 pc 30948
	j	be_else.9507 #pc 30952
	nop #pc 30956
	j	be_cont.9508 #pc 30960
	nop #pc 30964
be_else.9507: #pc 30968
	lw	%x6, 20(%x2)  #2335 pc 30968
	sw	%x1, 24(%x2)  #2335 pc 30972
	addi	%x2, %x2, 28  #2335 pc 30976
	jal	%x1, p_group_id.2713  #2335 pc 30980
	addi	%x2, %x2, -28  #2335 pc 30984
	lw	%x1, 24(%x2) #2335 pc 30988
	lw	%x7, 12(%x2)  #2336 pc 30992
	sw	%x6, 24(%x2)  #2336 pc 30996
	addi	%x6, %x7, 0  #0 pc 31000
	sw	%x1, 28(%x2)  #2336 pc 31004
	addi	%x2, %x2, 32  #2336 pc 31008
	jal	%x1, vecbzero.2629  #2336 pc 31012
	addi	%x2, %x2, -32  #2336 pc 31016
	lw	%x1, 28(%x2) #2336 pc 31020
	lw	%x6, 20(%x2)  #2340 pc 31024
	sw	%x1, 28(%x2)  #2340 pc 31028
	addi	%x2, %x2, 32  #2340 pc 31032
	jal	%x1, p_nvectors.2718  #2340 pc 31036
	addi	%x2, %x2, -32  #2340 pc 31040
	lw	%x1, 28(%x2) #2340 pc 31044
	lw	%x7, 20(%x2)  #2341 pc 31048
	sw	%x6, 28(%x2)  #2341 pc 31052
	addi	%x6, %x7, 0  #0 pc 31056
	sw	%x1, 32(%x2)  #2341 pc 31060
	addi	%x2, %x2, 36  #2341 pc 31064
	jal	%x1, p_intersection_points.2703  #2341 pc 31068
	addi	%x2, %x2, -36  #2341 pc 31072
	lw	%x1, 32(%x2) #2341 pc 31076
	lw	%x7, 24(%x2)  #2343 pc 31080
	slli	%x7, %x7, 2  #2343 pc 31084
	lw	%x8, 8(%x2)  #2343 pc 31088
	add	%x31, %x7, %x8  #2343 pc 31092
	lw	%x7, 0(%x31)  #2343 pc 31096
	lw	%x8, 16(%x2)  #2344 pc 31100
	slli	%x9, %x8, 2  #2344 pc 31104
	lw	%x10, 28(%x2)  #2344 pc 31108
	add	%x31, %x9, %x10  #2344 pc 31112
	lw	%x9, 0(%x31)  #2344 pc 31116
	slli	%x10, %x8, 2  #2345 pc 31120
	add	%x31, %x10, %x6  #2345 pc 31124
	lw	%x6, 0(%x31)  #2345 pc 31128
	lw	%x29, 4(%x2)  #2342 pc 31132
	addi	%x8, %x6, 0  #0 pc 31136
	addi	%x6, %x7, 0  #0 pc 31140
	addi	%x7, %x9, 0  #0 pc 31144
	sw	%x1, 32(%x2)  #2342 pc 31148
	lw	%x30, 0(%x29)  #2342 pc 31152
	addi	%x2, %x2, 36  #2342 pc 31156
	jalr	%x1, %x30, 0  #2342 pc 31160
	addi	%x2, %x2, -36  #2342 pc 31164
	lw	%x1, 32(%x2)  #2342 pc 31168
	lw	%x6, 20(%x2)  #2346 pc 31172
	sw	%x1, 32(%x2)  #2346 pc 31176
	addi	%x2, %x2, 36  #2346 pc 31180
	jal	%x1, p_received_ray_20percent.2711  #2346 pc 31184
	addi	%x2, %x2, -36  #2346 pc 31188
	lw	%x1, 32(%x2) #2346 pc 31192
	lw	%x7, 16(%x2)  #2347 pc 31196
	slli	%x8, %x7, 2  #2347 pc 31200
	add	%x31, %x8, %x6  #2347 pc 31204
	lw	%x6, 0(%x31)  #2347 pc 31208
	lw	%x8, 12(%x2)  #2347 pc 31212
	addi	%x7, %x8, 0  #0 pc 31216
	sw	%x1, 32(%x2)  #2347 pc 31220
	addi	%x2, %x2, 36  #2347 pc 31224
	jal	%x1, veccpy.2631  #2347 pc 31228
	addi	%x2, %x2, -36  #2347 pc 31232
	lw	%x1, 32(%x2) #2347 pc 31236
be_cont.9508: #pc 31240
	lw	%x6, 16(%x2)  #2349 pc 31240
	addi	%x7, %x6, 1  #2349 pc 31244
	lw	%x6, 20(%x2)  #2349 pc 31248
	lw	%x29, 0(%x2)  #2349 pc 31252
	lw	%x30, 0(%x29)  #2349 pc 31256
	jalr	%x0, %x30, 0  #2349 pc 31260
	nop #pc 31264
bge_else.9506: #pc 31268
	ret #pc 31268
	nop #pc 31272
ble_else.9505: #pc 31276
	ret #pc 31276
	nop #pc 31280
pretrace_pixels.3005:  #pc 31284
	lw	%x9, 36(%x29)  #0 pc 31284
	lw	%x10, 32(%x29)  #0 pc 31288
	lw	%x11, 28(%x29)  #0 pc 31292
	lw	%x12, 24(%x29)  #0 pc 31296
	lw	%x13, 20(%x29)  #0 pc 31300
	lw	%x14, 16(%x29)  #0 pc 31304
	lw	%x15, 12(%x29)  #0 pc 31308
	lw	%x16, 8(%x29)  #0 pc 31312
	lw	%x17, 4(%x29)  #0 pc 31316
	bge	%x7, %x0, 12  #2357 pc 31320
	j	bge_else.9511 #pc 31324
	nop #pc 31328
	flw	%f3, 0(%x13)  #2359 pc 31332
	lw	%x13, 0(%x17)  #2359 pc 31336
	sub	%x13, %x7, %x13  #2359 pc 31340
	sw	%x29, 0(%x2)  #2359 pc 31344
	sw	%x16, 4(%x2)  #2359 pc 31348
	sw	%x8, 8(%x2)  #2359 pc 31352
	sw	%x10, 12(%x2)  #2359 pc 31356
	sw	%x6, 16(%x2)  #2359 pc 31360
	sw	%x7, 20(%x2)  #2359 pc 31364
	sw	%x9, 24(%x2)  #2359 pc 31368
	sw	%x11, 28(%x2)  #2359 pc 31372
	sw	%x14, 32(%x2)  #2359 pc 31376
	fsw	%f2, 40(%x2)  #2359 pc 31380
	fsw	%f1, 48(%x2)  #2359 pc 31384
	sw	%x15, 56(%x2)  #2359 pc 31388
	fsw	%f0, 64(%x2)  #2359 pc 31392
	sw	%x12, 72(%x2)  #2359 pc 31396
	fsw	%f3, 80(%x2)  #2359 pc 31400
	addi	%x6, %x13, 0  #0 pc 31404
	sw	%x1, 88(%x2)  #2359 pc 31408
	addi	%x2, %x2, 92  #2359 pc 31412
	jal	%x1, float_of_int.2538  #2359 pc 31416
	addi	%x2, %x2, -92  #2359 pc 31420
	lw	%x1, 88(%x2) #2359 pc 31424
	flw	%f1, 80(%x2)  #2359 pc 31428
	fmul	%f0, %f1, %f0  #2359 pc 31432
	lw	%x6, 72(%x2)  #2360 pc 31436
	flw	%f1, 0(%x6)  #2360 pc 31440
	fmul	%f1, %f0, %f1  #2360 pc 31444
	flw	%f2, 64(%x2)  #2360 pc 31448
	fadd	%f1, %f1, %f2  #2360 pc 31452
	lw	%x7, 56(%x2)  #2360 pc 31456
	fsw	%f1, 0(%x7)  #2360 pc 31460
	flw	%f1, 4(%x6)  #2361 pc 31464
	fmul	%f1, %f0, %f1  #2361 pc 31468
	flw	%f3, 48(%x2)  #2361 pc 31472
	fadd	%f1, %f1, %f3  #2361 pc 31476
	fsw	%f1, 4(%x7)  #2361 pc 31480
	flw	%f1, 8(%x6)  #2362 pc 31484
	fmul	%f0, %f0, %f1  #2362 pc 31488
	flw	%f1, 40(%x2)  #2362 pc 31492
	fadd	%f0, %f0, %f1  #2362 pc 31496
	fsw	%f0, 8(%x7)  #2362 pc 31500
	addi	%x6, %x0, 0  #0 pc 31504
	addi	%x30, %x7, 0  #0 pc 31508
	addi	%x7, %x6, 0  #0 pc 31512
	addi	%x6, %x30, 0  #0 pc 31516
	sw	%x1, 88(%x2)  #2363 pc 31520
	addi	%x2, %x2, 92  #2363 pc 31524
	jal	%x1, vecunit_sgn.2634  #2363 pc 31528
	addi	%x2, %x2, -92  #2363 pc 31532
	lw	%x1, 88(%x2) #2363 pc 31536
	lw	%x6, 32(%x2)  #2364 pc 31540
	sw	%x1, 88(%x2)  #2364 pc 31544
	addi	%x2, %x2, 92  #2364 pc 31548
	jal	%x1, vecbzero.2629  #2364 pc 31552
	addi	%x2, %x2, -92  #2364 pc 31556
	lw	%x1, 88(%x2) #2364 pc 31560
	lw	%x6, 28(%x2)  #2365 pc 31564
	lw	%x7, 24(%x2)  #2365 pc 31568
	sw	%x1, 88(%x2)  #2365 pc 31572
	addi	%x2, %x2, 92  #2365 pc 31576
	jal	%x1, veccpy.2631  #2365 pc 31580
	addi	%x2, %x2, -92  #2365 pc 31584
	lw	%x1, 88(%x2) #2365 pc 31588
	addi	%x6, %x0, 0  #0 pc 31592
	fmv	%f0, l.6263  #0 pc 31596
	lw	%x7, 20(%x2)  #2368 pc 31600
	slli	%x8, %x7, 2  #2368 pc 31604
	lw	%x9, 16(%x2)  #2368 pc 31608
	add	%x31, %x8, %x9  #2368 pc 31612
	lw	%x8, 0(%x31)  #2368 pc 31616
	fmv	%f1, l.6244  #0 pc 31620
	lw	%x10, 56(%x2)  #2368 pc 31624
	lw	%x29, 12(%x2)  #2368 pc 31628
	addi	%x7, %x10, 0  #0 pc 31632
	sw	%x1, 88(%x2)  #2368 pc 31636
	lw	%x30, 0(%x29)  #2368 pc 31640
	addi	%x2, %x2, 92  #2368 pc 31644
	jalr	%x1, %x30, 0  #2368 pc 31648 #[trace_ray.2940] (24976)
	addi	%x2, %x2, -92  #2368 pc 31652
	lw	%x1, 88(%x2)  #2368 pc 31656
	lw	%x6, 20(%x2)  #2369 pc 31660
	slli	%x7, %x6, 2  #2369 pc 31664
	lw	%x8, 16(%x2)  #2369 pc 31668
	add	%x31, %x7, %x8  #2369 pc 31672
	lw	%x7, 0(%x31)  #2369 pc 31676
	addi	%x6, %x7, 0  #0 pc 31680
	sw	%x1, 88(%x2)  #2369 pc 31684
	addi	%x2, %x2, 92  #2369 pc 31688
	jal	%x1, p_rgb.2701  #2369 pc 31692
	addi	%x2, %x2, -92  #2369 pc 31696
	lw	%x1, 88(%x2) #2369 pc 31700
	lw	%x7, 32(%x2)  #2369 pc 31704
	sw	%x1, 88(%x2)  #2369 pc 31708
	addi	%x2, %x2, 92  #2369 pc 31712
	jal	%x1, veccpy.2631  #2369 pc 31716
	addi	%x2, %x2, -92  #2369 pc 31720
	lw	%x1, 88(%x2) #2369 pc 31724
	lw	%x6, 20(%x2)  #2370 pc 31728
	slli	%x7, %x6, 2  #2370 pc 31732
	lw	%x8, 16(%x2)  #2370 pc 31736
	add	%x31, %x7, %x8  #2370 pc 31740
	lw	%x7, 0(%x31)  #2370 pc 31744
	lw	%x9, 8(%x2)  #2370 pc 31748
	addi	%x6, %x7, 0  #0 pc 31752
	addi	%x7, %x9, 0  #0 pc 31756
	sw	%x1, 88(%x2)  #2370 pc 31760
	addi	%x2, %x2, 92  #2370 pc 31764
	jal	%x1, p_set_group_id.2715  #2370 pc 31768
	addi	%x2, %x2, -92  #2370 pc 31772
	lw	%x1, 88(%x2) #2370 pc 31776
	lw	%x6, 20(%x2)  #2373 pc 31780
	slli	%x7, %x6, 2  #2373 pc 31784
	lw	%x8, 16(%x2)  #2373 pc 31788
	add	%x31, %x7, %x8  #2373 pc 31792
	lw	%x7, 0(%x31)  #2373 pc 31796
	addi	%x9, %x0, 0  #0 pc 31800
	lw	%x29, 4(%x2)  #2373 pc 31804
	addi	%x6, %x7, 0  #0 pc 31808
	addi	%x7, %x9, 0  #0 pc 31812
	sw	%x1, 88(%x2)  #2373 pc 31816
	lw	%x30, 0(%x29)  #2373 pc 31820
	addi	%x2, %x2, 92  #2373 pc 31824
	jalr	%x1, %x30, 0  #2373 pc 31828
	addi	%x2, %x2, -92  #2373 pc 31832
	lw	%x1, 88(%x2)  #2373 pc 31836
	lw	%x6, 20(%x2)  #2375 pc 31840
	addi	%x6, %x6, -1  #2375 pc 31844
	addi	%x7, %x0, 1  #0 pc 31848
	lw	%x8, 8(%x2)  #2375 pc 31852
	sw	%x6, 88(%x2)  #2375 pc 31856
	addi	%x6, %x8, 0  #0 pc 31860
	sw	%x1, 92(%x2)  #2375 pc 31864
	addi	%x2, %x2, 96  #2375 pc 31868
	jal	%x1, add_mod5.2618  #2375 pc 31872
	addi	%x2, %x2, -96  #2375 pc 31876
	lw	%x1, 92(%x2) #2375 pc 31880
	addi	%x8, %x6, 0  #2375 pc 31884
	flw	%f0, 64(%x2)  #2375 pc 31888
	flw	%f1, 48(%x2)  #2375 pc 31892
	flw	%f2, 40(%x2)  #2375 pc 31896
	lw	%x6, 16(%x2)  #2375 pc 31900
	lw	%x7, 88(%x2)  #2375 pc 31904
	lw	%x29, 0(%x2)  #2375 pc 31908
	lw	%x30, 0(%x29)  #2375 pc 31912
	jalr	%x0, %x30, 0  #2375 pc 31916
	nop #pc 31920
bge_else.9511: #pc 31924
	ret #pc 31924
	nop #pc 31928
pretrace_line.3012:  #pc 31932
	lw	%x9, 24(%x29)  #0 pc 31932
	lw	%x10, 20(%x29)  #0 pc 31936
	lw	%x11, 16(%x29)  #0 pc 31940
	lw	%x12, 12(%x29)  #0 pc 31944
	lw	%x13, 8(%x29)  #0 pc 31948
	lw	%x14, 4(%x29)  #0 pc 31952
	flw	%f0, 0(%x11)  #2382 pc 31956
	lw	%x11, 4(%x14)  #2382 pc 31960
	sub	%x7, %x7, %x11  #2382 pc 31964
	sw	%x8, 0(%x2)  #2382 pc 31968
	sw	%x6, 4(%x2)  #2382 pc 31972
	sw	%x12, 8(%x2)  #2382 pc 31976
	sw	%x13, 12(%x2)  #2382 pc 31980
	sw	%x9, 16(%x2)  #2382 pc 31984
	sw	%x10, 20(%x2)  #2382 pc 31988
	fsw	%f0, 24(%x2)  #2382 pc 31992
	addi	%x6, %x7, 0  #0 pc 31996
	sw	%x1, 32(%x2)  #2382 pc 32000
	addi	%x2, %x2, 36  #2382 pc 32004
	jal	%x1, float_of_int.2538  #2382 pc 32008
	addi	%x2, %x2, -36  #2382 pc 32012
	lw	%x1, 32(%x2) #2382 pc 32016
	flw	%f1, 24(%x2)  #2382 pc 32020
	fmul	%f0, %f1, %f0  #2382 pc 32024
	lw	%x6, 20(%x2)  #2385 pc 32028
	flw	%f1, 0(%x6)  #2385 pc 32032
	fmul	%f1, %f0, %f1  #2385 pc 32036
	lw	%x7, 16(%x2)  #2385 pc 32040
	flw	%f2, 0(%x7)  #2385 pc 32044
	fadd	%f1, %f1, %f2  #2385 pc 32048
	flw	%f2, 4(%x6)  #2386 pc 32052
	fmul	%f2, %f0, %f2  #2386 pc 32056
	flw	%f3, 4(%x7)  #2386 pc 32060
	fadd	%f2, %f2, %f3  #2386 pc 32064
	flw	%f3, 8(%x6)  #2387 pc 32068
	fmul	%f0, %f0, %f3  #2387 pc 32072
	flw	%f3, 8(%x7)  #2387 pc 32076
	fadd	%f0, %f0, %f3  #2387 pc 32080
	lw	%x6, 12(%x2)  #2388 pc 32084
	lw	%x6, 0(%x6)  #2388 pc 32088
	addi	%x7, %x6, -1  #2388 pc 32092
	lw	%x6, 4(%x2)  #2388 pc 32096
	lw	%x8, 0(%x2)  #2388 pc 32100
	lw	%x29, 8(%x2)  #2388 pc 32104
	fadd	%f29, %f2, %f30  #0 pc 32108
	fadd	%f2, %f0, %f30  #0 pc 32112
	fadd	%f0, %f1, %f30  #0 pc 32116
	fadd	%f1, %f29, %f30  #0 pc 32120
	lw	%x30, 0(%x29)  #2388 pc 32124
	jalr	%x0, %x30, 0  #2388 pc 32128
	nop #pc 32132
scan_pixel.3016:  #pc 32136
	lw	%x12, 24(%x29)  #0 pc 32136
	lw	%x13, 20(%x29)  #0 pc 32140
	lw	%x14, 16(%x29)  #0 pc 32144
	lw	%x15, 12(%x29)  #0 pc 32148
	lw	%x16, 8(%x29)  #0 pc 32152
	lw	%x17, 4(%x29)  #0 pc 32156
	lw	%x16, 0(%x16)  #2398 pc 32160
	bge	%x6, %x16, 12  #2398 pc 32164
	j	ble_else.9516 #pc 32168
	nop #pc 32172
	ret #pc 32176
	nop #pc 32180
ble_else.9516: #pc 32184
	slli	%x16, %x6, 2  #2401 pc 32184
	add	%x31, %x16, %x9  #2401 pc 32188
	lw	%x16, 0(%x31)  #2401 pc 32192
	sw	%x29, 0(%x2)  #2401 pc 32196
	sw	%x11, 4(%x2)  #2401 pc 32200
	sw	%x12, 8(%x2)  #2401 pc 32204
	sw	%x8, 12(%x2)  #2401 pc 32208
	sw	%x13, 16(%x2)  #2401 pc 32212
	sw	%x17, 20(%x2)  #2401 pc 32216
	sw	%x9, 24(%x2)  #2401 pc 32220
	sw	%x10, 28(%x2)  #2401 pc 32224
	sw	%x7, 32(%x2)  #2401 pc 32228
	sw	%x6, 36(%x2)  #2401 pc 32232
	sw	%x15, 40(%x2)  #2401 pc 32236
	sw	%x14, 44(%x2)  #2401 pc 32240
	addi	%x6, %x16, 0  #0 pc 32244
	sw	%x1, 48(%x2)  #2401 pc 32248
	addi	%x2, %x2, 52  #2401 pc 32252
	jal	%x1, p_rgb.2701  #2401 pc 32256
	addi	%x2, %x2, -52  #2401 pc 32260
	lw	%x1, 48(%x2) #2401 pc 32264
	addi	%x7, %x6, 0  #2401 pc 32268
	lw	%x6, 44(%x2)  #2401 pc 32272
	sw	%x1, 48(%x2)  #2401 pc 32276
	addi	%x2, %x2, 52  #2401 pc 32280
	jal	%x1, veccpy.2631  #2401 pc 32284
	addi	%x2, %x2, -52  #2401 pc 32288
	lw	%x1, 48(%x2) #2401 pc 32292
	lw	%x6, 36(%x2)  #2404 pc 32296
	lw	%x7, 32(%x2)  #2404 pc 32300
	lw	%x8, 28(%x2)  #2404 pc 32304
	lw	%x29, 40(%x2)  #2404 pc 32308
	sw	%x1, 48(%x2)  #2404 pc 32312
	lw	%x30, 0(%x29)  #2404 pc 32316
	addi	%x2, %x2, 52  #2404 pc 32320
	jalr	%x1, %x30, 0  #2404 pc 32324
	addi	%x2, %x2, -52  #2404 pc 32328
	lw	%x1, 48(%x2)  #2404 pc 32332
	beq	%x6, %x0, 12  #2404 pc 32336
	j	be_else.9518 #pc 32340
	nop #pc 32344
	lw	%x6, 36(%x2)  #2407 pc 32348
	slli	%x7, %x6, 2  #2407 pc 32352
	lw	%x8, 24(%x2)  #2407 pc 32356
	add	%x31, %x7, %x8  #2407 pc 32360
	lw	%x7, 0(%x31)  #2407 pc 32364
	addi	%x9, %x0, 0  #0 pc 32368
	lw	%x29, 20(%x2)  #2407 pc 32372
	addi	%x6, %x7, 0  #0 pc 32376
	addi	%x7, %x9, 0  #0 pc 32380
	sw	%x1, 48(%x2)  #2407 pc 32384
	lw	%x30, 0(%x29)  #2407 pc 32388
	addi	%x2, %x2, 52  #2407 pc 32392
	jalr	%x1, %x30, 0  #2407 pc 32396
	addi	%x2, %x2, -52  #2407 pc 32400
	lw	%x1, 48(%x2)  #2407 pc 32404
	j	be_cont.9519 #pc 32408
	nop #pc 32412
be_else.9518: #pc 32416
	addi	%x11, %x0, 0  #0 pc 32416
	lw	%x6, 36(%x2)  #2405 pc 32420
	lw	%x7, 32(%x2)  #2405 pc 32424
	lw	%x8, 12(%x2)  #2405 pc 32428
	lw	%x9, 24(%x2)  #2405 pc 32432
	lw	%x10, 28(%x2)  #2405 pc 32436
	lw	%x29, 16(%x2)  #2405 pc 32440
	sw	%x1, 48(%x2)  #2405 pc 32444
	lw	%x30, 0(%x29)  #2405 pc 32448
	addi	%x2, %x2, 52  #2405 pc 32452
	jalr	%x1, %x30, 0  #2405 pc 32456
	addi	%x2, %x2, -52  #2405 pc 32460
	lw	%x1, 48(%x2)  #2405 pc 32464
be_cont.9519: #pc 32468
	lw	%x6, 4(%x2)  #2410 pc 32468
	lw	%x29, 8(%x2)  #2410 pc 32472
	sw	%x1, 48(%x2)  #2410 pc 32476
	lw	%x30, 0(%x29)  #2410 pc 32480
	addi	%x2, %x2, 52  #2410 pc 32484
	jalr	%x1, %x30, 0  #2410 pc 32488
	addi	%x2, %x2, -52  #2410 pc 32492
	lw	%x1, 48(%x2)  #2410 pc 32496
	lw	%x6, 36(%x2)  #2412 pc 32500
	addi	%x6, %x6, 1  #2412 pc 32504
	lw	%x7, 32(%x2)  #2412 pc 32508
	lw	%x8, 12(%x2)  #2412 pc 32512
	lw	%x9, 24(%x2)  #2412 pc 32516
	lw	%x10, 28(%x2)  #2412 pc 32520
	lw	%x11, 4(%x2)  #2412 pc 32524
	lw	%x29, 0(%x2)  #2412 pc 32528
	lw	%x30, 0(%x29)  #2412 pc 32532
	jalr	%x0, %x30, 0  #2412 pc 32536
	nop #pc 32540
scan_line.3023:  #pc 32544
	lw	%x12, 12(%x29)  #0 pc 32544
	lw	%x13, 8(%x29)  #0 pc 32548
	lw	%x14, 4(%x29)  #0 pc 32552
	lw	%x15, 4(%x14)  #2419 pc 32556
	bge	%x6, %x15, 12  #2419 pc 32560
	j	ble_else.9520 #pc 32564
	nop #pc 32568
	ret #pc 32572
	nop #pc 32576
ble_else.9520: #pc 32580
	lw	%x14, 4(%x14)  #2421 pc 32580
	addi	%x14, %x14, -1  #2421 pc 32584
	sw	%x29, 0(%x2)  #2421 pc 32588
	sw	%x10, 4(%x2)  #2421 pc 32592
	sw	%x11, 8(%x2)  #2421 pc 32596
	sw	%x9, 12(%x2)  #2421 pc 32600
	sw	%x8, 16(%x2)  #2421 pc 32604
	sw	%x7, 20(%x2)  #2421 pc 32608
	sw	%x6, 24(%x2)  #2421 pc 32612
	sw	%x12, 28(%x2)  #2421 pc 32616
	bge	%x6, %x14, 12  #2421 pc 32620
	j	ble_else.9522 #pc 32624
	nop #pc 32628
	j	ble_cont.9523 #pc 32632
	nop #pc 32636
ble_else.9522: #pc 32640
	addi	%x14, %x6, 1  #2422 pc 32640
	addi	%x8, %x10, 0  #0 pc 32644
	addi	%x7, %x14, 0  #0 pc 32648
	addi	%x6, %x9, 0  #0 pc 32652
	addi	%x29, %x13, 0  #0 pc 32656
	sw	%x1, 32(%x2)  #2422 pc 32660
	lw	%x30, 0(%x29)  #2422 pc 32664
	addi	%x2, %x2, 36  #2422 pc 32668
	jalr	%x1, %x30, 0  #2422 pc 32672
	addi	%x2, %x2, -36  #2422 pc 32676
	lw	%x1, 32(%x2)  #2422 pc 32680
ble_cont.9523: #pc 32684
	addi	%x6, %x0, 0  #0 pc 32684
	lw	%x7, 24(%x2)  #2424 pc 32688
	lw	%x8, 20(%x2)  #2424 pc 32692
	lw	%x9, 16(%x2)  #2424 pc 32696
	lw	%x10, 12(%x2)  #2424 pc 32700
	lw	%x11, 8(%x2)  #2424 pc 32704
	lw	%x29, 28(%x2)  #2424 pc 32708
	sw	%x1, 32(%x2)  #2424 pc 32712
	lw	%x30, 0(%x29)  #2424 pc 32716
	addi	%x2, %x2, 36  #2424 pc 32720
	jalr	%x1, %x30, 0  #2424 pc 32724
	addi	%x2, %x2, -36  #2424 pc 32728
	lw	%x1, 32(%x2)  #2424 pc 32732
	lw	%x6, 24(%x2)  #2425 pc 32736
	addi	%x6, %x6, 1  #2425 pc 32740
	addi	%x7, %x0, 2  #0 pc 32744
	lw	%x8, 4(%x2)  #2425 pc 32748
	sw	%x6, 32(%x2)  #2425 pc 32752
	addi	%x6, %x8, 0  #0 pc 32756
	sw	%x1, 36(%x2)  #2425 pc 32760
	addi	%x2, %x2, 40  #2425 pc 32764
	jal	%x1, add_mod5.2618  #2425 pc 32768
	addi	%x2, %x2, -40  #2425 pc 32772
	lw	%x1, 36(%x2) #2425 pc 32776
	addi	%x10, %x6, 0  #2425 pc 32780
	lw	%x6, 32(%x2)  #2425 pc 32784
	lw	%x7, 16(%x2)  #2425 pc 32788
	lw	%x8, 12(%x2)  #2425 pc 32792
	lw	%x9, 20(%x2)  #2425 pc 32796
	lw	%x11, 8(%x2)  #2425 pc 32800
	lw	%x29, 0(%x2)  #2425 pc 32804
	lw	%x30, 0(%x29)  #2425 pc 32808
	jalr	%x0, %x30, 0  #2425 pc 32812
	nop #pc 32816
create_float5x3array.3030:  #pc 32820
	addi	%x6, %x0, 3  #0 pc 32820
	fmv	%f0, l.6244  #0 pc 32824
	sw	%x1, 0(%x2)  #2436 pc 32828
	addi	%x2, %x2, 4  #2436 pc 32832
	jal	%x1, create_float_array.2577  #2436 pc 32836
	addi	%x2, %x2, -4  #2436 pc 32840
	lw	%x1, 0(%x2) #2436 pc 32844
	addi	%x7, %x6, 0  #2436 pc 32848
	addi	%x6, %x0, 5  #0 pc 32852
	sw	%x1, 0(%x2)  #2437 pc 32856
	addi	%x2, %x2, 4  #2437 pc 32860
	jal	%x1, create_array.2570  #2437 pc 32864
	addi	%x2, %x2, -4  #2437 pc 32868
	lw	%x1, 0(%x2) #2437 pc 32872
	addi	%x7, %x0, 3  #0 pc 32876
	fmv	%f0, l.6244  #0 pc 32880
	sw	%x6, 0(%x2)  #2438 pc 32884
	addi	%x6, %x7, 0  #0 pc 32888
	sw	%x1, 4(%x2)  #2438 pc 32892
	addi	%x2, %x2, 8  #2438 pc 32896
	jal	%x1, create_float_array.2577  #2438 pc 32900
	addi	%x2, %x2, -8  #2438 pc 32904
	lw	%x1, 4(%x2) #2438 pc 32908
	lw	%x7, 0(%x2)  #2438 pc 32912
	sw	%x6, 4(%x7)  #2438 pc 32916
	addi	%x6, %x0, 3  #0 pc 32920
	fmv	%f0, l.6244  #0 pc 32924
	sw	%x1, 4(%x2)  #2439 pc 32928
	addi	%x2, %x2, 8  #2439 pc 32932
	jal	%x1, create_float_array.2577  #2439 pc 32936
	addi	%x2, %x2, -8  #2439 pc 32940
	lw	%x1, 4(%x2) #2439 pc 32944
	lw	%x7, 0(%x2)  #2439 pc 32948
	sw	%x6, 8(%x7)  #2439 pc 32952
	addi	%x6, %x0, 3  #0 pc 32956
	fmv	%f0, l.6244  #0 pc 32960
	sw	%x1, 4(%x2)  #2440 pc 32964
	addi	%x2, %x2, 8  #2440 pc 32968
	jal	%x1, create_float_array.2577  #2440 pc 32972
	addi	%x2, %x2, -8  #2440 pc 32976
	lw	%x1, 4(%x2) #2440 pc 32980
	lw	%x7, 0(%x2)  #2440 pc 32984
	sw	%x6, 12(%x7)  #2440 pc 32988
	addi	%x6, %x0, 3  #0 pc 32992
	fmv	%f0, l.6244  #0 pc 32996
	sw	%x1, 4(%x2)  #2441 pc 33000
	addi	%x2, %x2, 8  #2441 pc 33004
	jal	%x1, create_float_array.2577  #2441 pc 33008
	addi	%x2, %x2, -8  #2441 pc 33012
	lw	%x1, 4(%x2) #2441 pc 33016
	lw	%x7, 0(%x2)  #2441 pc 33020
	sw	%x6, 16(%x7)  #2441 pc 33024
	addi	%x6, %x7, 0  #2442 pc 33028
	ret #pc 33032
	nop #pc 33036
create_pixel.3032:  #pc 33040
	addi	%x6, %x0, 3  #0 pc 33040
	fmv	%f0, l.6244  #0 pc 33044
	sw	%x1, 0(%x2)  #2448 pc 33048
	addi	%x2, %x2, 4  #2448 pc 33052
	jal	%x1, create_float_array.2577  #2448 pc 33056
	addi	%x2, %x2, -4  #2448 pc 33060
	lw	%x1, 0(%x2) #2448 pc 33064
	sw	%x6, 0(%x2)  #2449 pc 33068
	sw	%x1, 4(%x2)  #2449 pc 33072
	addi	%x2, %x2, 8  #2449 pc 33076
	jal	%x1, create_float5x3array.3030  #2449 pc 33080
	addi	%x2, %x2, -8  #2449 pc 33084
	lw	%x1, 4(%x2) #2449 pc 33088
	addi	%x7, %x0, 5  #0 pc 33092
	addi	%x8, %x0, 0  #0 pc 33096
	sw	%x6, 4(%x2)  #2450 pc 33100
	addi	%x6, %x7, 0  #0 pc 33104
	addi	%x7, %x8, 0  #0 pc 33108
	sw	%x1, 8(%x2)  #2450 pc 33112
	addi	%x2, %x2, 12  #2450 pc 33116
	jal	%x1, create_array.2570  #2450 pc 33120
	addi	%x2, %x2, -12  #2450 pc 33124
	lw	%x1, 8(%x2) #2450 pc 33128
	addi	%x7, %x0, 5  #0 pc 33132
	addi	%x8, %x0, 0  #0 pc 33136
	sw	%x6, 8(%x2)  #2451 pc 33140
	addi	%x6, %x7, 0  #0 pc 33144
	addi	%x7, %x8, 0  #0 pc 33148
	sw	%x1, 12(%x2)  #2451 pc 33152
	addi	%x2, %x2, 16  #2451 pc 33156
	jal	%x1, create_array.2570  #2451 pc 33160
	addi	%x2, %x2, -16  #2451 pc 33164
	lw	%x1, 12(%x2) #2451 pc 33168
	sw	%x6, 12(%x2)  #2452 pc 33172
	sw	%x1, 16(%x2)  #2452 pc 33176
	addi	%x2, %x2, 20  #2452 pc 33180
	jal	%x1, create_float5x3array.3030  #2452 pc 33184
	addi	%x2, %x2, -20  #2452 pc 33188
	lw	%x1, 16(%x2) #2452 pc 33192
	sw	%x6, 16(%x2)  #2453 pc 33196
	sw	%x1, 20(%x2)  #2453 pc 33200
	addi	%x2, %x2, 24  #2453 pc 33204
	jal	%x1, create_float5x3array.3030  #2453 pc 33208
	addi	%x2, %x2, -24  #2453 pc 33212
	lw	%x1, 20(%x2) #2453 pc 33216
	addi	%x7, %x0, 1  #0 pc 33220
	addi	%x8, %x0, 0  #0 pc 33224
	sw	%x6, 20(%x2)  #2454 pc 33228
	addi	%x6, %x7, 0  #0 pc 33232
	addi	%x7, %x8, 0  #0 pc 33236
	sw	%x1, 24(%x2)  #2454 pc 33240
	addi	%x2, %x2, 28  #2454 pc 33244
	jal	%x1, create_array.2570  #2454 pc 33248
	addi	%x2, %x2, -28  #2454 pc 33252
	lw	%x1, 24(%x2) #2454 pc 33256
	sw	%x6, 24(%x2)  #2455 pc 33260
	sw	%x1, 28(%x2)  #2455 pc 33264
	addi	%x2, %x2, 32  #2455 pc 33268
	jal	%x1, create_float5x3array.3030  #2455 pc 33272
	addi	%x2, %x2, -32  #2455 pc 33276
	lw	%x1, 28(%x2) #2455 pc 33280
	addi	%x7, %x3, 0  #2456 pc 33284
	addi	%x3, %x3, 32  #2456 pc 33288
	sw	%x6, 28(%x7)  #2456 pc 33292
	lw	%x6, 24(%x2)  #2456 pc 33296
	sw	%x6, 24(%x7)  #2456 pc 33300
	lw	%x6, 20(%x2)  #2456 pc 33304
	sw	%x6, 20(%x7)  #2456 pc 33308
	lw	%x6, 16(%x2)  #2456 pc 33312
	sw	%x6, 16(%x7)  #2456 pc 33316
	lw	%x6, 12(%x2)  #2456 pc 33320
	sw	%x6, 12(%x7)  #2456 pc 33324
	lw	%x6, 8(%x2)  #2456 pc 33328
	sw	%x6, 8(%x7)  #2456 pc 33332
	lw	%x6, 4(%x2)  #2456 pc 33336
	sw	%x6, 4(%x7)  #2456 pc 33340
	lw	%x6, 0(%x2)  #2456 pc 33344
	sw	%x6, 0(%x7)  #2456 pc 33348
	addi	%x6, %x7, 0  #2456 pc 33352
	ret #pc 33356
	nop #pc 33360
init_line_elements.3034:  #pc 33364
	bge	%x7, %x0, 12  #2461 pc 33364
	j	bge_else.9524 #pc 33368
	nop #pc 33372
	sw	%x6, 0(%x2)  #2462 pc 33376
	sw	%x7, 4(%x2)  #2462 pc 33380
	sw	%x1, 8(%x2)  #2462 pc 33384
	addi	%x2, %x2, 12  #2462 pc 33388
	jal	%x1, create_pixel.3032  #2462 pc 33392
	addi	%x2, %x2, -12  #2462 pc 33396
	lw	%x1, 8(%x2) #2462 pc 33400
	lw	%x7, 4(%x2)  #2462 pc 33404
	slli	%x8, %x7, 2  #2462 pc 33408
	lw	%x9, 0(%x2)  #2462 pc 33412
	add	%x31, %x8, %x9  #2462 pc 33416
	sw	%x6, 0(%x31)  #2462 pc 33420
	addi	%x7, %x7, -1  #2463 pc 33424
	addi	%x6, %x9, 0  #0 pc 33428
	j	init_line_elements.3034  #2463 pc 33432
	nop #pc 33436
bge_else.9524: #pc 33440
	ret #pc 33440
	nop #pc 33444
create_pixelline.3037:  #pc 33448
	lw	%x6, 4(%x29)  #0 pc 33448
	lw	%x7, 0(%x6)  #2470 pc 33452
	sw	%x6, 0(%x2)  #2470 pc 33456
	sw	%x7, 4(%x2)  #2470 pc 33460
	sw	%x1, 8(%x2)  #2470 pc 33464
	addi	%x2, %x2, 12  #2470 pc 33468
	jal	%x1, create_pixel.3032  #2470 pc 33472
	addi	%x2, %x2, -12  #2470 pc 33476
	lw	%x1, 8(%x2) #2470 pc 33480
	addi	%x7, %x6, 0  #2470 pc 33484
	lw	%x6, 4(%x2)  #2470 pc 33488
	sw	%x1, 8(%x2)  #2470 pc 33492
	addi	%x2, %x2, 12  #2470 pc 33496
	jal	%x1, create_array.2570  #2470 pc 33500
	addi	%x2, %x2, -12  #2470 pc 33504
	lw	%x1, 8(%x2) #2470 pc 33508
	lw	%x7, 0(%x2)  #2471 pc 33512
	lw	%x7, 0(%x7)  #2471 pc 33516
	addi	%x7, %x7, -2  #2471 pc 33520
	j	init_line_elements.3034  #2471 pc 33524
	nop #pc 33528
tan.3039:  #pc 33532
	fsw	%f0, 0(%x2)  #2484 pc 33532
	sw	%x1, 8(%x2)  #2484 pc 33536
	addi	%x2, %x2, 12  #2484 pc 33540
	jal	%x1, sin.2526  #2484 pc 33544
	addi	%x2, %x2, -12  #2484 pc 33548
	lw	%x1, 8(%x2) #2484 pc 33552
	flw	%f1, 0(%x2)  #2484 pc 33556
	fsw	%f0, 8(%x2)  #2484 pc 33560
	fadd	%f0, %f1, %f30  #0 pc 33564
	sw	%x1, 16(%x2)  #2484 pc 33568
	addi	%x2, %x2, 20  #2484 pc 33572
	jal	%x1, cos.2530  #2484 pc 33576
	addi	%x2, %x2, -20  #2484 pc 33580 #ok
	lw	%x1, 16(%x2) #2484 pc 33584
	flw	%f1, 8(%x2)  #2484 pc 33588
	fdiv	%f0, %f1, %f0  #2484 pc 33592
	ret #pc 33596
	nop #pc 33600
adjust_position.3041:  #pc 33604
	fmul	%f0, %f0, %f0  #2489 pc 33604
	fmv	%f2, l.6821  #0 pc 33608
	fadd	%f0, %f0, %f2  #2489 pc 33612
	fsqrt	%f0, %f0  #2489 pc 33616
	fmv	%f2, l.6263  #0 pc 33620
	fdiv	%f2, %f2, %f0  #2490 pc 33624
	fsw	%f0, 0(%x2)  #2491 pc 33628
	fsw	%f1, 8(%x2)  #2491 pc 33632
	fadd	%f0, %f2, %f30  #0 pc 33636
	sw	%x1, 16(%x2)  #2491 pc 33640
	addi	%x2, %x2, 20  #2491 pc 33644
	jal	%x1, atan.2532  #2491 pc 33648
	addi	%x2, %x2, -20  #2491 pc 33652
	lw	%x1, 16(%x2) #2491 pc 33656
	flw	%f1, 8(%x2)  #2492 pc 33660
	fmul	%f0, %f0, %f1  #2492 pc 33664
	sw	%x1, 16(%x2)  #2492 pc 33668
	addi	%x2, %x2, 20  #2492 pc 33672
	jal	%x1, tan.3039  #2492 pc 33676
	addi	%x2, %x2, -20  #2492 pc 33680
	lw	%x1, 16(%x2) #2492 pc 33684
	flw	%f1, 0(%x2)  #2493 pc 33688
	fmul	%f0, %f0, %f1  #2493 pc 33692
	ret #pc 33696
	nop #pc 33700
calc_dirvec.3044:  #pc 33704
	lw	%x9, 4(%x29)  #0 pc 33704
	addi	%x31, %x0, 5  #pc 33708
	bge	%x6, %x31, 12  #2498 pc 33712
	j	bge_else.9525 #pc 33716
	nop #pc 33720
	sw	%x8, 0(%x2)  #2499 pc 33724
	sw	%x9, 4(%x2)  #2499 pc 33728
	sw	%x7, 8(%x2)  #2499 pc 33732
	fsw	%f0, 16(%x2)  #2499 pc 33736
	fsw	%f1, 24(%x2)  #2499 pc 33740
	sw	%x1, 32(%x2)  #2499 pc 33744
	addi	%x2, %x2, 36  #2499 pc 33748
	jal	%x1, fsqr.2517  #2499 pc 33752
	addi	%x2, %x2, -36  #2499 pc 33756
	lw	%x1, 32(%x2) #2499 pc 33760
	flw	%f1, 24(%x2)  #2499 pc 33764
	fsw	%f0, 32(%x2)  #2499 pc 33768
	fadd	%f0, %f1, %f30  #0 pc 33772
	sw	%x1, 40(%x2)  #2499 pc 33776
	addi	%x2, %x2, 44  #2499 pc 33780
	jal	%x1, fsqr.2517  #2499 pc 33784
	addi	%x2, %x2, -44  #2499 pc 33788
	lw	%x1, 40(%x2) #2499 pc 33792
	flw	%f1, 32(%x2)  #2499 pc 33796
	fadd	%f0, %f1, %f0  #2499 pc 33800
	fmv	%f1, l.6263  #0 pc 33804
	fadd	%f0, %f0, %f1  #2499 pc 33808
	fsqrt	%f0, %f0  #2499 pc 33812
	flw	%f1, 16(%x2)  #2500 pc 33816
	fdiv	%f1, %f1, %f0  #2500 pc 33820
	flw	%f2, 24(%x2)  #2501 pc 33824
	fdiv	%f2, %f2, %f0  #2501 pc 33828
	fmv	%f3, l.6263  #0 pc 33832
	fdiv	%f0, %f3, %f0  #2502 pc 33836
	lw	%x6, 8(%x2)  #2505 pc 33840
	slli	%x6, %x6, 2  #2505 pc 33844
	lw	%x7, 4(%x2)  #2505 pc 33848
	add	%x31, %x6, %x7  #2505 pc 33852
	lw	%x6, 0(%x31)  #2505 pc 33856
	lw	%x7, 0(%x2)  #2506 pc 33860
	slli	%x8, %x7, 2  #2506 pc 33864
	add	%x31, %x8, %x6  #2506 pc 33868
	lw	%x8, 0(%x31)  #2506 pc 33872
	sw	%x6, 40(%x2)  #2506 pc 33876
	fsw	%f0, 48(%x2)  #2506 pc 33880
	fsw	%f2, 56(%x2)  #2506 pc 33884
	fsw	%f1, 64(%x2)  #2506 pc 33888
	addi	%x6, %x8, 0  #0 pc 33892
	sw	%x1, 72(%x2)  #2506 pc 33896
	addi	%x2, %x2, 76  #2506 pc 33900
	jal	%x1, d_vec.2720  #2506 pc 33904
	addi	%x2, %x2, -76  #2506 pc 33908
	lw	%x1, 72(%x2) #2506 pc 33912
	flw	%f0, 64(%x2)  #2506 pc 33916
	flw	%f1, 56(%x2)  #2506 pc 33920
	flw	%f2, 48(%x2)  #2506 pc 33924
	sw	%x1, 72(%x2)  #2506 pc 33928
	addi	%x2, %x2, 76  #2506 pc 33932
	jal	%x1, vecset.2621  #2506 pc 33936
	addi	%x2, %x2, -76  #2506 pc 33940
	lw	%x1, 72(%x2) #2506 pc 33944
	lw	%x6, 0(%x2)  #2507 pc 33948
	addi	%x7, %x6, 40  #2507 pc 33952
	slli	%x7, %x7, 2  #2507 pc 33956
	lw	%x8, 40(%x2)  #2507 pc 33960
	add	%x31, %x7, %x8  #2507 pc 33964
	lw	%x7, 0(%x31)  #2507 pc 33968
	addi	%x6, %x7, 0  #0 pc 33972
	sw	%x1, 72(%x2)  #2507 pc 33976
	addi	%x2, %x2, 76  #2507 pc 33980
	jal	%x1, d_vec.2720  #2507 pc 33984
	addi	%x2, %x2, -76  #2507 pc 33988
	lw	%x1, 72(%x2) #2507 pc 33992
	flw	%f0, 56(%x2)  #2507 pc 33996
	sw	%x6, 72(%x2)  #2507 pc 34000
	sw	%x1, 76(%x2)  #2507 pc 34004
	addi	%x2, %x2, 80  #2507 pc 34008
	jal	%x1, fneg.2515  #2507 pc 34012
	addi	%x2, %x2, -80  #2507 pc 34016
	lw	%x1, 76(%x2) #2507 pc 34020
	fadd	%f2, %f0, %f30  #2507 pc 34024
	flw	%f0, 64(%x2)  #2507 pc 34028
	flw	%f1, 48(%x2)  #2507 pc 34032
	lw	%x6, 72(%x2)  #2507 pc 34036
	sw	%x1, 76(%x2)  #2507 pc 34040
	addi	%x2, %x2, 80  #2507 pc 34044
	jal	%x1, vecset.2621  #2507 pc 34048
	addi	%x2, %x2, -80  #2507 pc 34052
	lw	%x1, 76(%x2) #2507 pc 34056
	lw	%x6, 0(%x2)  #2508 pc 34060
	addi	%x7, %x6, 80  #2508 pc 34064
	slli	%x7, %x7, 2  #2508 pc 34068
	lw	%x8, 40(%x2)  #2508 pc 34072
	add	%x31, %x7, %x8  #2508 pc 34076
	lw	%x7, 0(%x31)  #2508 pc 34080
	addi	%x6, %x7, 0  #0 pc 34084
	sw	%x1, 76(%x2)  #2508 pc 34088
	addi	%x2, %x2, 80  #2508 pc 34092
	jal	%x1, d_vec.2720  #2508 pc 34096
	addi	%x2, %x2, -80  #2508 pc 34100
	lw	%x1, 76(%x2) #2508 pc 34104
	flw	%f0, 64(%x2)  #2508 pc 34108
	sw	%x6, 76(%x2)  #2508 pc 34112
	sw	%x1, 80(%x2)  #2508 pc 34116
	addi	%x2, %x2, 84  #2508 pc 34120
	jal	%x1, fneg.2515  #2508 pc 34124
	addi	%x2, %x2, -84  #2508 pc 34128
	lw	%x1, 80(%x2) #2508 pc 34132
	flw	%f1, 56(%x2)  #2508 pc 34136
	fsw	%f0, 80(%x2)  #2508 pc 34140
	fadd	%f0, %f1, %f30  #0 pc 34144
	sw	%x1, 88(%x2)  #2508 pc 34148
	addi	%x2, %x2, 92  #2508 pc 34152
	jal	%x1, fneg.2515  #2508 pc 34156
	addi	%x2, %x2, -92  #2508 pc 34160
	lw	%x1, 88(%x2) #2508 pc 34164
	fadd	%f2, %f0, %f30  #2508 pc 34168
	flw	%f0, 48(%x2)  #2508 pc 34172
	flw	%f1, 80(%x2)  #2508 pc 34176
	lw	%x6, 76(%x2)  #2508 pc 34180
	sw	%x1, 88(%x2)  #2508 pc 34184
	addi	%x2, %x2, 92  #2508 pc 34188
	jal	%x1, vecset.2621  #2508 pc 34192
	addi	%x2, %x2, -92  #2508 pc 34196
	lw	%x1, 88(%x2) #2508 pc 34200
	lw	%x6, 0(%x2)  #2509 pc 34204
	addi	%x7, %x6, 1  #2509 pc 34208
	slli	%x7, %x7, 2  #2509 pc 34212
	lw	%x8, 40(%x2)  #2509 pc 34216
	add	%x31, %x7, %x8  #2509 pc 34220
	lw	%x7, 0(%x31)  #2509 pc 34224
	addi	%x6, %x7, 0  #0 pc 34228
	sw	%x1, 88(%x2)  #2509 pc 34232
	addi	%x2, %x2, 92  #2509 pc 34236
	jal	%x1, d_vec.2720  #2509 pc 34240
	addi	%x2, %x2, -92  #2509 pc 34244
	lw	%x1, 88(%x2) #2509 pc 34248
	flw	%f0, 64(%x2)  #2509 pc 34252
	sw	%x6, 88(%x2)  #2509 pc 34256
	sw	%x1, 92(%x2)  #2509 pc 34260
	addi	%x2, %x2, 96  #2509 pc 34264
	jal	%x1, fneg.2515  #2509 pc 34268
	addi	%x2, %x2, -96  #2509 pc 34272
	lw	%x1, 92(%x2) #2509 pc 34276
	flw	%f1, 56(%x2)  #2509 pc 34280
	fsw	%f0, 96(%x2)  #2509 pc 34284
	fadd	%f0, %f1, %f30  #0 pc 34288
	sw	%x1, 104(%x2)  #2509 pc 34292
	addi	%x2, %x2, 108  #2509 pc 34296
	jal	%x1, fneg.2515  #2509 pc 34300
	addi	%x2, %x2, -108  #2509 pc 34304
	lw	%x1, 104(%x2) #2509 pc 34308
	flw	%f1, 48(%x2)  #2509 pc 34312
	fsw	%f0, 104(%x2)  #2509 pc 34316
	fadd	%f0, %f1, %f30  #0 pc 34320
	sw	%x1, 112(%x2)  #2509 pc 34324
	addi	%x2, %x2, 116  #2509 pc 34328
	jal	%x1, fneg.2515  #2509 pc 34332
	addi	%x2, %x2, -116  #2509 pc 34336
	lw	%x1, 112(%x2) #2509 pc 34340
	fadd	%f2, %f0, %f30  #2509 pc 34344
	flw	%f0, 96(%x2)  #2509 pc 34348
	flw	%f1, 104(%x2)  #2509 pc 34352
	lw	%x6, 88(%x2)  #2509 pc 34356
	sw	%x1, 112(%x2)  #2509 pc 34360
	addi	%x2, %x2, 116  #2509 pc 34364
	jal	%x1, vecset.2621  #2509 pc 34368
	addi	%x2, %x2, -116  #2509 pc 34372
	lw	%x1, 112(%x2) #2509 pc 34376
	lw	%x6, 0(%x2)  #2510 pc 34380
	addi	%x7, %x6, 41  #2510 pc 34384
	slli	%x7, %x7, 2  #2510 pc 34388
	lw	%x8, 40(%x2)  #2510 pc 34392
	add	%x31, %x7, %x8  #2510 pc 34396
	lw	%x7, 0(%x31)  #2510 pc 34400
	addi	%x6, %x7, 0  #0 pc 34404
	sw	%x1, 112(%x2)  #2510 pc 34408
	addi	%x2, %x2, 116  #2510 pc 34412
	jal	%x1, d_vec.2720  #2510 pc 34416
	addi	%x2, %x2, -116  #2510 pc 34420
	lw	%x1, 112(%x2) #2510 pc 34424
	flw	%f0, 64(%x2)  #2510 pc 34428
	sw	%x6, 112(%x2)  #2510 pc 34432
	sw	%x1, 116(%x2)  #2510 pc 34436
	addi	%x2, %x2, 120  #2510 pc 34440
	jal	%x1, fneg.2515  #2510 pc 34444
	addi	%x2, %x2, -120  #2510 pc 34448
	lw	%x1, 116(%x2) #2510 pc 34452
	flw	%f1, 48(%x2)  #2510 pc 34456
	fsw	%f0, 120(%x2)  #2510 pc 34460
	fadd	%f0, %f1, %f30  #0 pc 34464
	sw	%x1, 128(%x2)  #2510 pc 34468
	addi	%x2, %x2, 132  #2510 pc 34472
	jal	%x1, fneg.2515  #2510 pc 34476
	addi	%x2, %x2, -132  #2510 pc 34480
	lw	%x1, 128(%x2) #2510 pc 34484
	fadd	%f1, %f0, %f30  #2510 pc 34488
	flw	%f0, 120(%x2)  #2510 pc 34492
	flw	%f2, 56(%x2)  #2510 pc 34496
	lw	%x6, 112(%x2)  #2510 pc 34500
	sw	%x1, 128(%x2)  #2510 pc 34504
	addi	%x2, %x2, 132  #2510 pc 34508
	jal	%x1, vecset.2621  #2510 pc 34512
	addi	%x2, %x2, -132  #2510 pc 34516
	lw	%x1, 128(%x2) #2510 pc 34520
	lw	%x6, 0(%x2)  #2511 pc 34524
	addi	%x6, %x6, 81  #2511 pc 34528
	slli	%x6, %x6, 2  #2511 pc 34532
	lw	%x7, 40(%x2)  #2511 pc 34536
	add	%x31, %x6, %x7  #2511 pc 34540
	lw	%x6, 0(%x31)  #2511 pc 34544
	sw	%x1, 128(%x2)  #2511 pc 34548
	addi	%x2, %x2, 132  #2511 pc 34552
	jal	%x1, d_vec.2720  #2511 pc 34556
	addi	%x2, %x2, -132  #2511 pc 34560
	lw	%x1, 128(%x2) #2511 pc 34564
	flw	%f0, 48(%x2)  #2511 pc 34568
	sw	%x6, 128(%x2)  #2511 pc 34572
	sw	%x1, 132(%x2)  #2511 pc 34576
	addi	%x2, %x2, 136  #2511 pc 34580
	jal	%x1, fneg.2515  #2511 pc 34584
	addi	%x2, %x2, -136  #2511 pc 34588
	lw	%x1, 132(%x2) #2511 pc 34592
	flw	%f1, 64(%x2)  #2511 pc 34596
	flw	%f2, 56(%x2)  #2511 pc 34600
	lw	%x6, 128(%x2)  #2511 pc 34604
	j	vecset.2621  #2511 pc 34608
	nop #pc 34612
bge_else.9525: #pc 34616
	fsw	%f2, 136(%x2)  #2513 pc 34616
	sw	%x8, 0(%x2)  #2513 pc 34620
	sw	%x7, 8(%x2)  #2513 pc 34624
	sw	%x29, 144(%x2)  #2513 pc 34628
	fsw	%f3, 152(%x2)  #2513 pc 34632
	sw	%x6, 160(%x2)  #2513 pc 34636
	fadd	%f0, %f1, %f30  #0 pc 34640
	fadd	%f1, %f2, %f30  #0 pc 34644
	sw	%x1, 164(%x2)  #2513 pc 34648
	addi	%x2, %x2, 168  #2513 pc 34652
	jal	%x1, adjust_position.3041  #2513 pc 34656
	addi	%x2, %x2, -168  #2513 pc 34660 # ok
	lw	%x1, 164(%x2) #2513 pc 34664
	lw	%x6, 160(%x2)  #2514 pc 34668
	addi	%x6, %x6, 1  #2514 pc 34672
	flw	%f1, 152(%x2)  #2514 pc 34676
	fsw	%f0, 168(%x2)  #2514 pc 34680
	sw	%x6, 176(%x2)  #2514 pc 34684
	sw	%x1, 180(%x2)  #2514 pc 34688
	addi	%x2, %x2, 184  #2514 pc 34692
	jal	%x1, adjust_position.3041  #2514 pc 34696
	addi	%x2, %x2, -184  #2514 pc 34700
	lw	%x1, 180(%x2) #2514 pc 34704
	fadd	%f1, %f0, %f30  #2514 pc 34708
	flw	%f0, 168(%x2)  #2514 pc 34712
	flw	%f2, 136(%x2)  #2514 pc 34716
	flw	%f3, 152(%x2)  #2514 pc 34720
	lw	%x6, 176(%x2)  #2514 pc 34724
	lw	%x7, 8(%x2)  #2514 pc 34728
	lw	%x8, 0(%x2)  #2514 pc 34732
	lw	%x29, 144(%x2)  #2514 pc 34736
	lw	%x30, 0(%x29)  #2514 pc 34740
	jalr	%x0, %x30, 0  #2514 pc 34744 #ok [calc_dirvec.3044] (33704)
	nop #pc 34748
calc_dirvecs.3052:  #pc 34752
	lw	%x9, 4(%x29)  #0 pc 34752
	bge	%x6, %x0, 12  #2519 pc 34756
	j	bge_else.9533 #pc 34760
	nop #pc 34764
	sw	%x29, 0(%x2)  #2521 pc 34768
	sw	%x6, 4(%x2)  #2521 pc 34772
	fsw	%f0, 8(%x2)  #2521 pc 34776
	sw	%x8, 16(%x2)  #2521 pc 34780
	sw	%x7, 20(%x2)  #2521 pc 34784
	sw	%x9, 24(%x2)  #2521 pc 34788
	sw	%x1, 28(%x2)  #2521 pc 34792
	addi	%x2, %x2, 32  #2521 pc 34796
	jal	%x1, float_of_int.2538  #2521 pc 34800
	addi	%x2, %x2, -32  #2521 pc 34804
	lw	%x1, 28(%x2) #2521 pc 34808
	fmv	%f1, l.6277  #0 pc 34812
	fmul	%f0, %f0, %f1  #2521 pc 34816
	fmv	%f1, l.6954  #0 pc 34820
	fsub	%f2, %f0, %f1  #2521 pc 34824
	addi	%x6, %x0, 0  #0 pc 34828
	fmv	%f0, l.6244  #0 pc 34832
	fmv	%f1, l.6244  #0 pc 34836
	flw	%f3, 8(%x2)  #2522 pc 34840
	lw	%x7, 20(%x2)  #2522 pc 34844
	lw	%x8, 16(%x2)  #2522 pc 34848
	lw	%x29, 24(%x2)  #2522 pc 34852
	sw	%x1, 28(%x2)  #2522 pc 34856
	lw	%x30, 0(%x29)  #2522 pc 34860
	addi	%x2, %x2, 32  #2522 pc 34864
	jalr	%x1, %x30, 0  #2522 pc 34868
	addi	%x2, %x2, -32  #2522 pc 34872
	lw	%x1, 28(%x2)  #2522 pc 34876
	lw	%x6, 4(%x2)  #2524 pc 34880
	sw	%x1, 28(%x2)  #2524 pc 34884
	addi	%x2, %x2, 32  #2524 pc 34888
	jal	%x1, float_of_int.2538  #2524 pc 34892
	addi	%x2, %x2, -32  #2524 pc 34896
	lw	%x1, 28(%x2) #2524 pc 34900
	fmv	%f1, l.6277  #0 pc 34904
	fmul	%f0, %f0, %f1  #2524 pc 34908
	fmv	%f1, l.6821  #0 pc 34912
	fadd	%f2, %f0, %f1  #2524 pc 34916
	addi	%x6, %x0, 0  #0 pc 34920
	fmv	%f0, l.6244  #0 pc 34924
	fmv	%f1, l.6244  #0 pc 34928
	lw	%x7, 16(%x2)  #2525 pc 34932
	addi	%x8, %x7, 2  #2525 pc 34936
	flw	%f3, 8(%x2)  #2525 pc 34940
	lw	%x9, 20(%x2)  #2525 pc 34944
	lw	%x29, 24(%x2)  #2525 pc 34948
	addi	%x7, %x9, 0  #0 pc 34952
	sw	%x1, 28(%x2)  #2525 pc 34956
	lw	%x30, 0(%x29)  #2525 pc 34960
	addi	%x2, %x2, 32  #2525 pc 34964
	jalr	%x1, %x30, 0  #2525 pc 34968
	addi	%x2, %x2, -32  #2525 pc 34972
	lw	%x1, 28(%x2)  #2525 pc 34976
	lw	%x6, 4(%x2)  #2527 pc 34980
	addi	%x6, %x6, -1  #2527 pc 34984
	addi	%x7, %x0, 1  #0 pc 34988
	lw	%x8, 20(%x2)  #2527 pc 34992
	sw	%x6, 28(%x2)  #2527 pc 34996
	addi	%x6, %x8, 0  #0 pc 35000
	sw	%x1, 32(%x2)  #2527 pc 35004
	addi	%x2, %x2, 36  #2527 pc 35008
	jal	%x1, add_mod5.2618  #2527 pc 35012
	addi	%x2, %x2, -36  #2527 pc 35016
	lw	%x1, 32(%x2) #2527 pc 35020
	addi	%x7, %x6, 0  #2527 pc 35024
	flw	%f0, 8(%x2)  #2527 pc 35028
	lw	%x6, 28(%x2)  #2527 pc 35032
	lw	%x8, 16(%x2)  #2527 pc 35036
	lw	%x29, 0(%x2)  #2527 pc 35040
	lw	%x30, 0(%x29)  #2527 pc 35044
	jalr	%x0, %x30, 0  #2527 pc 35048
	nop #pc 35052
bge_else.9533: #pc 35056
	ret #pc 35056
	nop #pc 35060
calc_dirvec_rows.3057:  #pc 35064
	lw	%x9, 4(%x29)  #0 pc 35064
	bge	%x6, %x0, 12  #2533 pc 35068
	j	bge_else.9535 #pc 35072
	nop #pc 35076
	sw	%x29, 0(%x2)  #2534 pc 35080
	sw	%x6, 4(%x2)  #2534 pc 35084
	sw	%x8, 8(%x2)  #2534 pc 35088
	sw	%x7, 12(%x2)  #2534 pc 35092
	sw	%x9, 16(%x2)  #2534 pc 35096
	sw	%x1, 20(%x2)  #2534 pc 35100
	addi	%x2, %x2, 24  #2534 pc 35104
	jal	%x1, float_of_int.2538  #2534 pc 35108
	addi	%x2, %x2, -24  #2534 pc 35112
	lw	%x1, 20(%x2) #2534 pc 35116
	fmv	%f1, l.6277  #0 pc 35120
	fmul	%f0, %f0, %f1  #2534 pc 35124
	fmv	%f1, l.6954  #0 pc 35128
	fsub	%f0, %f0, %f1  #2534 pc 35132
	addi	%x6, %x0, 4  #0 pc 35136
	lw	%x7, 12(%x2)  #2535 pc 35140
	lw	%x8, 8(%x2)  #2535 pc 35144
	lw	%x29, 16(%x2)  #2535 pc 35148
	sw	%x1, 20(%x2)  #2535 pc 35152
	lw	%x30, 0(%x29)  #2535 pc 35156
	addi	%x2, %x2, 24  #2535 pc 35160
	jalr	%x1, %x30, 0  #2535 pc 35164
	addi	%x2, %x2, -24  #2535 pc 35168
	lw	%x1, 20(%x2)  #2535 pc 35172
	lw	%x6, 4(%x2)  #2536 pc 35176
	addi	%x6, %x6, -1  #2536 pc 35180
	addi	%x7, %x0, 2  #0 pc 35184
	lw	%x8, 12(%x2)  #2536 pc 35188
	sw	%x6, 20(%x2)  #2536 pc 35192
	addi	%x6, %x8, 0  #0 pc 35196
	sw	%x1, 24(%x2)  #2536 pc 35200
	addi	%x2, %x2, 28  #2536 pc 35204
	jal	%x1, add_mod5.2618  #2536 pc 35208
	addi	%x2, %x2, -28  #2536 pc 35212
	lw	%x1, 24(%x2) #2536 pc 35216
	addi	%x7, %x6, 0  #2536 pc 35220
	lw	%x6, 8(%x2)  #2536 pc 35224
	addi	%x8, %x6, 4  #2536 pc 35228
	lw	%x6, 20(%x2)  #2536 pc 35232
	lw	%x29, 0(%x2)  #2536 pc 35236
	lw	%x30, 0(%x29)  #2536 pc 35240
	jalr	%x0, %x30, 0  #2536 pc 35244
	nop #pc 35248
bge_else.9535: #pc 35252
	ret #pc 35252
	nop #pc 35256
create_dirvec.3061:  #pc 35260
	lw	%x6, 4(%x29)  #0 pc 35260
	addi	%x7, %x0, 3  #0 pc 35264
	fmv	%f0, l.6244  #0 pc 35268
	sw	%x6, 0(%x2)  #2546 pc 35272
	addi	%x6, %x7, 0  #0 pc 35276
	sw	%x1, 4(%x2)  #2546 pc 35280
	addi	%x2, %x2, 8  #2546 pc 35284
	jal	%x1, create_float_array.2577  #2546 pc 35288
	addi	%x2, %x2, -8  #2546 pc 35292
	lw	%x1, 4(%x2) #2546 pc 35296
	addi	%x7, %x6, 0  #2546 pc 35300
	lw	%x6, 0(%x2)  #2547 pc 35304
	lw	%x6, 0(%x6)  #2547 pc 35308
	sw	%x7, 4(%x2)  #2547 pc 35312
	sw	%x1, 8(%x2)  #2547 pc 35316
	addi	%x2, %x2, 12  #2547 pc 35320
	jal	%x1, create_array.2570  #2547 pc 35324
	addi	%x2, %x2, -12  #2547 pc 35328
	lw	%x1, 8(%x2) #2547 pc 35332
	addi	%x7, %x3, 0  #2548 pc 35336
	addi	%x3, %x3, 8  #2548 pc 35340
	sw	%x6, 4(%x7)  #2548 pc 35344
	lw	%x6, 4(%x2)  #2548 pc 35348
	sw	%x6, 0(%x7)  #2548 pc 35352
	addi	%x6, %x7, 0  #2548 pc 35356
	ret #pc 35360
	nop #pc 35364
create_dirvec_elements.3063:  #pc 35368
	lw	%x8, 4(%x29)  #0 pc 35368
	bge	%x7, %x0, 12  #2552 pc 35372
	j	bge_else.9537 #pc 35376
	nop #pc 35380
	sw	%x29, 0(%x2)  #2553 pc 35384
	sw	%x6, 4(%x2)  #2553 pc 35388
	sw	%x7, 8(%x2)  #2553 pc 35392
	addi	%x29, %x8, 0  #0 pc 35396
	sw	%x1, 12(%x2)  #2553 pc 35400
	lw	%x30, 0(%x29)  #2553 pc 35404
	addi	%x2, %x2, 16  #2553 pc 35408
	jalr	%x1, %x30, 0  #2553 pc 35412
	addi	%x2, %x2, -16  #2553 pc 35416
	lw	%x1, 12(%x2)  #2553 pc 35420
	lw	%x7, 8(%x2)  #2553 pc 35424
	slli	%x8, %x7, 2  #2553 pc 35428
	lw	%x9, 4(%x2)  #2553 pc 35432
	add	%x31, %x8, %x9  #2553 pc 35436
	sw	%x6, 0(%x31)  #2553 pc 35440
	addi	%x7, %x7, -1  #2554 pc 35444
	lw	%x29, 0(%x2)  #2554 pc 35448
	addi	%x6, %x9, 0  #0 pc 35452
	lw	%x30, 0(%x29)  #2554 pc 35456
	jalr	%x0, %x30, 0  #2554 pc 35460
	nop #pc 35464
bge_else.9537: #pc 35468
	ret #pc 35468
	nop #pc 35472
create_dirvecs.3066:  #pc 35476
	lw	%x7, 12(%x29)  #0 pc 35476
	lw	%x8, 8(%x29)  #0 pc 35480
	lw	%x9, 4(%x29)  #0 pc 35484
	bge	%x6, %x0, 12  #2559 pc 35488
	j	bge_else.9539 #pc 35492
	nop #pc 35496
	addi	%x10, %x0, 120  #0 pc 35500
	sw	%x29, 0(%x2)  #2560 pc 35504
	sw	%x8, 4(%x2)  #2560 pc 35508
	sw	%x7, 8(%x2)  #2560 pc 35512
	sw	%x6, 12(%x2)  #2560 pc 35516
	sw	%x10, 16(%x2)  #2560 pc 35520
	addi	%x29, %x9, 0  #0 pc 35524
	sw	%x1, 20(%x2)  #2560 pc 35528
	lw	%x30, 0(%x29)  #2560 pc 35532
	addi	%x2, %x2, 24  #2560 pc 35536
	jalr	%x1, %x30, 0  #2560 pc 35540
	addi	%x2, %x2, -24  #2560 pc 35544
	lw	%x1, 20(%x2)  #2560 pc 35548
	addi	%x7, %x6, 0  #2560 pc 35552
	lw	%x6, 16(%x2)  #2560 pc 35556
	sw	%x1, 20(%x2)  #2560 pc 35560
	addi	%x2, %x2, 24  #2560 pc 35564
	jal	%x1, create_array.2570  #2560 pc 35568
	addi	%x2, %x2, -24  #2560 pc 35572
	lw	%x1, 20(%x2) #2560 pc 35576
	lw	%x7, 12(%x2)  #2560 pc 35580
	slli	%x8, %x7, 2  #2560 pc 35584
	lw	%x9, 8(%x2)  #2560 pc 35588
	add	%x31, %x8, %x9  #2560 pc 35592
	sw	%x6, 0(%x31)  #2560 pc 35596
	slli	%x6, %x7, 2  #2561 pc 35600
	add	%x31, %x6, %x9  #2561 pc 35604
	lw	%x6, 0(%x31)  #2561 pc 35608
	addi	%x8, %x0, 118  #0 pc 35612
	lw	%x29, 4(%x2)  #2561 pc 35616
	addi	%x7, %x8, 0  #0 pc 35620
	sw	%x1, 20(%x2)  #2561 pc 35624
	lw	%x30, 0(%x29)  #2561 pc 35628
	addi	%x2, %x2, 24  #2561 pc 35632
	jalr	%x1, %x30, 0  #2561 pc 35636
	addi	%x2, %x2, -24  #2561 pc 35640
	lw	%x1, 20(%x2)  #2561 pc 35644
	lw	%x6, 12(%x2)  #2562 pc 35648
	addi	%x6, %x6, -1  #2562 pc 35652
	lw	%x29, 0(%x2)  #2562 pc 35656
	lw	%x30, 0(%x29)  #2562 pc 35660
	jalr	%x0, %x30, 0  #2562 pc 35664
	nop #pc 35668
bge_else.9539: #pc 35672
	ret #pc 35672
	nop #pc 35676
init_dirvec_constants.3068:  #pc 35680
	lw	%x8, 4(%x29)  #0 pc 35680
	bge	%x7, %x0, 12  #2571 pc 35684
	j	bge_else.9541 #pc 35688
	nop #pc 35692
	slli	%x9, %x7, 2  #2572 pc 35696
	add	%x31, %x9, %x6  #2572 pc 35700
	lw	%x9, 0(%x31)  #2572 pc 35704
	sw	%x6, 0(%x2)  #2572 pc 35708
	sw	%x29, 4(%x2)  #2572 pc 35712
	sw	%x7, 8(%x2)  #2572 pc 35716
	addi	%x6, %x9, 0  #0 pc 35720
	addi	%x29, %x8, 0  #0 pc 35724
	sw	%x1, 12(%x2)  #2572 pc 35728
	lw	%x30, 0(%x29)  #2572 pc 35732
	addi	%x2, %x2, 16  #2572 pc 35736
	jalr	%x1, %x30, 0  #2572 pc 35740
	addi	%x2, %x2, -16  #2572 pc 35744
	lw	%x1, 12(%x2)  #2572 pc 35748
	lw	%x6, 8(%x2)  #2573 pc 35752
	addi	%x7, %x6, -1  #2573 pc 35756
	lw	%x6, 0(%x2)  #2573 pc 35760
	lw	%x29, 4(%x2)  #2573 pc 35764
	lw	%x30, 0(%x29)  #2573 pc 35768
	jalr	%x0, %x30, 0  #2573 pc 35772
	nop #pc 35776
bge_else.9541: #pc 35780
	ret #pc 35780
	nop #pc 35784
init_vecset_constants.3071:  #pc 35788
	lw	%x7, 8(%x29)  #0 pc 35788
	lw	%x8, 4(%x29)  #0 pc 35792
	bge	%x6, %x0, 12  #2578 pc 35796
	j	bge_else.9543 #pc 35800
	nop #pc 35804
	slli	%x9, %x6, 2  #2579 pc 35808
	add	%x31, %x9, %x8  #2579 pc 35812
	lw	%x8, 0(%x31)  #2579 pc 35816
	addi	%x9, %x0, 119  #0 pc 35820
	sw	%x29, 0(%x2)  #2579 pc 35824
	sw	%x6, 4(%x2)  #2579 pc 35828
	addi	%x6, %x8, 0  #0 pc 35832
	addi	%x29, %x7, 0  #0 pc 35836
	addi	%x7, %x9, 0  #0 pc 35840
	sw	%x1, 8(%x2)  #2579 pc 35844
	lw	%x30, 0(%x29)  #2579 pc 35848
	addi	%x2, %x2, 12  #2579 pc 35852
	jalr	%x1, %x30, 0  #2579 pc 35856
	addi	%x2, %x2, -12  #2579 pc 35860
	lw	%x1, 8(%x2)  #2579 pc 35864
	lw	%x6, 4(%x2)  #2580 pc 35868
	addi	%x6, %x6, -1  #2580 pc 35872
	lw	%x29, 0(%x2)  #2580 pc 35876
	lw	%x30, 0(%x29)  #2580 pc 35880
	jalr	%x0, %x30, 0  #2580 pc 35884
	nop #pc 35888
bge_else.9543: #pc 35892
	ret #pc 35892
	nop #pc 35896
init_dirvecs.3073:  #pc 35900
	lw	%x6, 12(%x29)  #0 pc 35900
	lw	%x7, 8(%x29)  #0 pc 35904
	lw	%x8, 4(%x29)  #0 pc 35908
	addi	%x9, %x0, 4  #0 pc 35912
	sw	%x6, 0(%x2)  #2585 pc 35916
	sw	%x8, 4(%x2)  #2585 pc 35920
	addi	%x6, %x9, 0  #0 pc 35924
	addi	%x29, %x7, 0  #0 pc 35928
	sw	%x1, 8(%x2)  #2585 pc 35932
	lw	%x30, 0(%x29)  #2585 pc 35936
	addi	%x2, %x2, 12  #2585 pc 35940
	jalr	%x1, %x30, 0  #2585 pc 35944
	addi	%x2, %x2, -12  #2585 pc 35948
	lw	%x1, 8(%x2)  #2585 pc 35952
	addi	%x6, %x0, 9  #0 pc 35956
	addi	%x7, %x0, 0  #0 pc 35960
	addi	%x8, %x0, 0  #0 pc 35964
	lw	%x29, 4(%x2)  #2586 pc 35968
	sw	%x1, 8(%x2)  #2586 pc 35972
	lw	%x30, 0(%x29)  #2586 pc 35976
	addi	%x2, %x2, 12  #2586 pc 35980
	jalr	%x1, %x30, 0  #2586 pc 35984
	addi	%x2, %x2, -12  #2586 pc 35988
	lw	%x1, 8(%x2)  #2586 pc 35992
	addi	%x6, %x0, 4  #0 pc 35996
	lw	%x29, 0(%x2)  #2587 pc 36000
	lw	%x30, 0(%x29)  #2587 pc 36004
	jalr	%x0, %x30, 0  #2587 pc 36008
	nop #pc 36012
add_reflection.3075:  #pc 36016
	lw	%x8, 12(%x29)  #0 pc 36016
	lw	%x9, 8(%x29)  #0 pc 36020
	lw	%x29, 4(%x29)  #0 pc 36024
	sw	%x9, 0(%x2)  #2596 pc 36028
	sw	%x6, 4(%x2)  #2596 pc 36032
	sw	%x7, 8(%x2)  #2596 pc 36036
	fsw	%f0, 16(%x2)  #2596 pc 36040
	sw	%x8, 24(%x2)  #2596 pc 36044
	fsw	%f3, 32(%x2)  #2596 pc 36048
	fsw	%f2, 40(%x2)  #2596 pc 36052
	fsw	%f1, 48(%x2)  #2596 pc 36056
	sw	%x1, 56(%x2)  #2596 pc 36060
	lw	%x30, 0(%x29)  #2596 pc 36064
	addi	%x2, %x2, 60  #2596 pc 36068
	jalr	%x1, %x30, 0  #2596 pc 36072
	addi	%x2, %x2, -60  #2596 pc 36076
	lw	%x1, 56(%x2)  #2596 pc 36080
	sw	%x6, 56(%x2)  #2597 pc 36084
	sw	%x1, 60(%x2)  #2597 pc 36088
	addi	%x2, %x2, 64  #2597 pc 36092
	jal	%x1, d_vec.2720  #2597 pc 36096
	addi	%x2, %x2, -64  #2597 pc 36100
	lw	%x1, 60(%x2) #2597 pc 36104
	flw	%f0, 48(%x2)  #2597 pc 36108
	flw	%f1, 40(%x2)  #2597 pc 36112
	flw	%f2, 32(%x2)  #2597 pc 36116
	sw	%x1, 60(%x2)  #2597 pc 36120
	addi	%x2, %x2, 64  #2597 pc 36124
	jal	%x1, vecset.2621  #2597 pc 36128
	addi	%x2, %x2, -64  #2597 pc 36132
	lw	%x1, 60(%x2) #2597 pc 36136
	lw	%x6, 56(%x2)  #2598 pc 36140
	lw	%x29, 24(%x2)  #2598 pc 36144
	sw	%x1, 60(%x2)  #2598 pc 36148
	lw	%x30, 0(%x29)  #2598 pc 36152
	addi	%x2, %x2, 64  #2598 pc 36156
	jalr	%x1, %x30, 0  #2598 pc 36160
	addi	%x2, %x2, -64  #2598 pc 36164
	lw	%x1, 60(%x2)  #2598 pc 36168
	addi	%x6, %x3, 0  #2600 pc 36172
	addi	%x3, %x3, 12  #2600 pc 36176
	flw	%f0, 16(%x2)  #2600 pc 36180
	fsw	%f0, 8(%x6)  #2600 pc 36184
	lw	%x7, 56(%x2)  #2600 pc 36188
	sw	%x7, 4(%x6)  #2600 pc 36192
	lw	%x7, 8(%x2)  #2600 pc 36196
	sw	%x7, 0(%x6)  #2600 pc 36200
	lw	%x7, 4(%x2)  #2600 pc 36204
	slli	%x7, %x7, 2  #2600 pc 36208
	lw	%x8, 0(%x2)  #2600 pc 36212
	add	%x31, %x7, %x8  #2600 pc 36216
	sw	%x6, 0(%x31)  #2600 pc 36220
	ret #pc 36224
	nop #pc 36228
setup_rect_reflection.3082:  #pc 36232
	lw	%x8, 12(%x29)  #0 pc 36232
	lw	%x9, 8(%x29)  #0 pc 36236
	lw	%x10, 4(%x29)  #0 pc 36240
	addi	%x11, %x0, 4  #0 pc 36244
	sw	%x10, 0(%x2)  #2605 pc 36248
	sw	%x9, 4(%x2)  #2605 pc 36252
	sw	%x7, 8(%x2)  #2605 pc 36256
	sw	%x8, 12(%x2)  #2605 pc 36260
	addi	%x7, %x11, 0  #0 pc 36264
	sw	%x1, 16(%x2)  #2605 pc 36268
	addi	%x2, %x2, 20  #2605 pc 36272
	jal	%x1, mul.2547  #2605 pc 36276
	addi	%x2, %x2, -20  #2605 pc 36280
	lw	%x1, 16(%x2) #2605 pc 36284
	lw	%x7, 12(%x2)  #2606 pc 36288
	lw	%x8, 0(%x7)  #2606 pc 36292
	fmv	%f0, l.6263  #0 pc 36296
	lw	%x9, 8(%x2)  #2607 pc 36300
	sw	%x8, 16(%x2)  #2607 pc 36304
	sw	%x6, 20(%x2)  #2607 pc 36308
	fsw	%f0, 24(%x2)  #2607 pc 36312
	addi	%x6, %x9, 0  #0 pc 36316
	sw	%x1, 32(%x2)  #2607 pc 36320
	addi	%x2, %x2, 36  #2607 pc 36324
	jal	%x1, o_diffuse.2683  #2607 pc 36328
	addi	%x2, %x2, -36  #2607 pc 36332
	lw	%x1, 32(%x2) #2607 pc 36336
	flw	%f1, 24(%x2)  #2607 pc 36340
	fsub	%f0, %f1, %f0  #2607 pc 36344
	lw	%x6, 4(%x2)  #2608 pc 36348
	flw	%f1, 0(%x6)  #2608 pc 36352
	fsw	%f0, 32(%x2)  #2608 pc 36356
	fadd	%f0, %f1, %f30  #0 pc 36360
	sw	%x1, 40(%x2)  #2608 pc 36364
	addi	%x2, %x2, 44  #2608 pc 36368
	jal	%x1, fneg.2515  #2608 pc 36372
	addi	%x2, %x2, -44  #2608 pc 36376
	lw	%x1, 40(%x2) #2608 pc 36380
	lw	%x6, 4(%x2)  #2609 pc 36384
	flw	%f1, 4(%x6)  #2609 pc 36388
	fsw	%f0, 40(%x2)  #2609 pc 36392
	fadd	%f0, %f1, %f30  #0 pc 36396
	sw	%x1, 48(%x2)  #2609 pc 36400
	addi	%x2, %x2, 52  #2609 pc 36404
	jal	%x1, fneg.2515  #2609 pc 36408
	addi	%x2, %x2, -52  #2609 pc 36412
	lw	%x1, 48(%x2) #2609 pc 36416
	lw	%x6, 4(%x2)  #2610 pc 36420
	flw	%f1, 8(%x6)  #2610 pc 36424
	fsw	%f0, 48(%x2)  #2610 pc 36428
	fadd	%f0, %f1, %f30  #0 pc 36432
	sw	%x1, 56(%x2)  #2610 pc 36436
	addi	%x2, %x2, 60  #2610 pc 36440
	jal	%x1, fneg.2515  #2610 pc 36444
	addi	%x2, %x2, -60  #2610 pc 36448
	lw	%x1, 56(%x2) #2610 pc 36452
	fadd	%f3, %f0, %f30  #2610 pc 36456
	lw	%x6, 20(%x2)  #2611 pc 36460
	addi	%x7, %x6, 1  #2611 pc 36464
	lw	%x8, 4(%x2)  #2611 pc 36468
	flw	%f1, 0(%x8)  #2611 pc 36472
	flw	%f0, 32(%x2)  #2611 pc 36476
	flw	%f2, 48(%x2)  #2611 pc 36480
	lw	%x9, 16(%x2)  #2611 pc 36484
	lw	%x29, 0(%x2)  #2611 pc 36488
	fsw	%f3, 56(%x2)  #2611 pc 36492
	addi	%x6, %x9, 0  #0 pc 36496
	sw	%x1, 64(%x2)  #2611 pc 36500
	lw	%x30, 0(%x29)  #2611 pc 36504
	addi	%x2, %x2, 68  #2611 pc 36508
	jalr	%x1, %x30, 0  #2611 pc 36512
	addi	%x2, %x2, -68  #2611 pc 36516
	lw	%x1, 64(%x2)  #2611 pc 36520
	lw	%x6, 16(%x2)  #2612 pc 36524
	addi	%x7, %x6, 1  #2612 pc 36528
	lw	%x8, 20(%x2)  #2612 pc 36532
	addi	%x9, %x8, 2  #2612 pc 36536
	lw	%x10, 4(%x2)  #2612 pc 36540
	flw	%f2, 4(%x10)  #2612 pc 36544
	flw	%f0, 32(%x2)  #2612 pc 36548
	flw	%f1, 40(%x2)  #2612 pc 36552
	flw	%f3, 56(%x2)  #2612 pc 36556
	lw	%x29, 0(%x2)  #2612 pc 36560
	addi	%x6, %x7, 0  #0 pc 36564
	addi	%x7, %x9, 0  #0 pc 36568
	sw	%x1, 64(%x2)  #2612 pc 36572
	lw	%x30, 0(%x29)  #2612 pc 36576
	addi	%x2, %x2, 68  #2612 pc 36580
	jalr	%x1, %x30, 0  #2612 pc 36584
	addi	%x2, %x2, -68  #2612 pc 36588
	lw	%x1, 64(%x2)  #2612 pc 36592
	lw	%x6, 16(%x2)  #2613 pc 36596
	addi	%x7, %x6, 2  #2613 pc 36600
	lw	%x8, 20(%x2)  #2613 pc 36604
	addi	%x8, %x8, 3  #2613 pc 36608
	lw	%x9, 4(%x2)  #2613 pc 36612
	flw	%f3, 8(%x9)  #2613 pc 36616
	flw	%f0, 32(%x2)  #2613 pc 36620
	flw	%f1, 40(%x2)  #2613 pc 36624
	flw	%f2, 48(%x2)  #2613 pc 36628
	lw	%x29, 0(%x2)  #2613 pc 36632
	addi	%x6, %x7, 0  #0 pc 36636
	addi	%x7, %x8, 0  #0 pc 36640
	sw	%x1, 64(%x2)  #2613 pc 36644
	lw	%x30, 0(%x29)  #2613 pc 36648
	addi	%x2, %x2, 68  #2613 pc 36652
	jalr	%x1, %x30, 0  #2613 pc 36656
	addi	%x2, %x2, -68  #2613 pc 36660
	lw	%x1, 64(%x2)  #2613 pc 36664
	lw	%x6, 16(%x2)  #2614 pc 36668
	addi	%x6, %x6, 3  #2614 pc 36672
	lw	%x7, 12(%x2)  #2614 pc 36676
	sw	%x6, 0(%x7)  #2614 pc 36680
	ret #pc 36684
	nop #pc 36688
setup_surface_reflection.3085:  #pc 36692
	lw	%x8, 12(%x29)  #0 pc 36692
	lw	%x9, 8(%x29)  #0 pc 36696
	lw	%x10, 4(%x29)  #0 pc 36700
	addi	%x11, %x0, 4  #0 pc 36704
	sw	%x10, 0(%x2)  #2619 pc 36708
	sw	%x9, 4(%x2)  #2619 pc 36712
	sw	%x7, 8(%x2)  #2619 pc 36716
	sw	%x8, 12(%x2)  #2619 pc 36720
	addi	%x7, %x11, 0  #0 pc 36724
	sw	%x1, 16(%x2)  #2619 pc 36728
	addi	%x2, %x2, 20  #2619 pc 36732
	jal	%x1, mul.2547  #2619 pc 36736
	addi	%x2, %x2, -20  #2619 pc 36740
	lw	%x1, 16(%x2) #2619 pc 36744
	addi	%x6, %x6, 1  #2619 pc 36748
	lw	%x7, 12(%x2)  #2620 pc 36752
	lw	%x8, 0(%x7)  #2620 pc 36756
	fmv	%f0, l.6263  #0 pc 36760
	lw	%x9, 8(%x2)  #2621 pc 36764
	sw	%x6, 16(%x2)  #2621 pc 36768
	sw	%x8, 20(%x2)  #2621 pc 36772
	fsw	%f0, 24(%x2)  #2621 pc 36776
	addi	%x6, %x9, 0  #0 pc 36780
	sw	%x1, 32(%x2)  #2621 pc 36784
	addi	%x2, %x2, 36  #2621 pc 36788
	jal	%x1, o_diffuse.2683  #2621 pc 36792
	addi	%x2, %x2, -36  #2621 pc 36796
	lw	%x1, 32(%x2) #2621 pc 36800
	flw	%f1, 24(%x2)  #2621 pc 36804
	fsub	%f0, %f1, %f0  #2621 pc 36808
	lw	%x6, 8(%x2)  #2622 pc 36812
	fsw	%f0, 32(%x2)  #2622 pc 36816
	sw	%x1, 40(%x2)  #2622 pc 36820
	addi	%x2, %x2, 44  #2622 pc 36824
	jal	%x1, o_param_abc.2675  #2622 pc 36828
	addi	%x2, %x2, -44  #2622 pc 36832
	lw	%x1, 40(%x2) #2622 pc 36836
	addi	%x7, %x6, 0  #2622 pc 36840
	lw	%x6, 4(%x2)  #2622 pc 36844
	sw	%x1, 40(%x2)  #2622 pc 36848
	addi	%x2, %x2, 44  #2622 pc 36852
	jal	%x1, veciprod.2637  #2622 pc 36856
	addi	%x2, %x2, -44  #2622 pc 36860
	lw	%x1, 40(%x2) #2622 pc 36864
	fmv	%f1, l.6425  #0 pc 36868
	lw	%x6, 8(%x2)  #2625 pc 36872
	fsw	%f0, 40(%x2)  #2625 pc 36876
	fsw	%f1, 48(%x2)  #2625 pc 36880
	sw	%x1, 56(%x2)  #2625 pc 36884
	addi	%x2, %x2, 60  #2625 pc 36888
	jal	%x1, o_param_a.2669  #2625 pc 36892
	addi	%x2, %x2, -60  #2625 pc 36896
	lw	%x1, 56(%x2) #2625 pc 36900
	flw	%f1, 48(%x2)  #2625 pc 36904
	fmul	%f0, %f1, %f0  #2625 pc 36908
	flw	%f1, 40(%x2)  #2625 pc 36912
	fmul	%f0, %f0, %f1  #2625 pc 36916
	lw	%x6, 4(%x2)  #2625 pc 36920
	flw	%f2, 0(%x6)  #2625 pc 36924
	fsub	%f0, %f0, %f2  #2625 pc 36928
	fmv	%f2, l.6425  #0 pc 36932
	lw	%x7, 8(%x2)  #2626 pc 36936
	fsw	%f0, 56(%x2)  #2626 pc 36940
	fsw	%f2, 64(%x2)  #2626 pc 36944
	addi	%x6, %x7, 0  #0 pc 36948
	sw	%x1, 72(%x2)  #2626 pc 36952
	addi	%x2, %x2, 76  #2626 pc 36956
	jal	%x1, o_param_b.2671  #2626 pc 36960
	addi	%x2, %x2, -76  #2626 pc 36964
	lw	%x1, 72(%x2) #2626 pc 36968
	flw	%f1, 64(%x2)  #2626 pc 36972
	fmul	%f0, %f1, %f0  #2626 pc 36976
	flw	%f1, 40(%x2)  #2626 pc 36980
	fmul	%f0, %f0, %f1  #2626 pc 36984
	lw	%x6, 4(%x2)  #2626 pc 36988
	flw	%f2, 4(%x6)  #2626 pc 36992
	fsub	%f0, %f0, %f2  #2626 pc 36996
	fmv	%f2, l.6425  #0 pc 37000
	lw	%x7, 8(%x2)  #2627 pc 37004
	fsw	%f0, 72(%x2)  #2627 pc 37008
	fsw	%f2, 80(%x2)  #2627 pc 37012
	addi	%x6, %x7, 0  #0 pc 37016
	sw	%x1, 88(%x2)  #2627 pc 37020
	addi	%x2, %x2, 92  #2627 pc 37024
	jal	%x1, o_param_c.2673  #2627 pc 37028
	addi	%x2, %x2, -92  #2627 pc 37032
	lw	%x1, 88(%x2) #2627 pc 37036
	flw	%f1, 80(%x2)  #2627 pc 37040
	fmul	%f0, %f1, %f0  #2627 pc 37044
	flw	%f1, 40(%x2)  #2627 pc 37048
	fmul	%f0, %f0, %f1  #2627 pc 37052
	lw	%x6, 4(%x2)  #2627 pc 37056
	flw	%f1, 8(%x6)  #2627 pc 37060
	fsub	%f3, %f0, %f1  #2627 pc 37064
	flw	%f0, 32(%x2)  #2624 pc 37068
	flw	%f1, 56(%x2)  #2624 pc 37072
	flw	%f2, 72(%x2)  #2624 pc 37076
	lw	%x6, 20(%x2)  #2624 pc 37080
	lw	%x7, 16(%x2)  #2624 pc 37084
	lw	%x29, 0(%x2)  #2624 pc 37088
	sw	%x1, 88(%x2)  #2624 pc 37092
	lw	%x30, 0(%x29)  #2624 pc 37096
	addi	%x2, %x2, 92  #2624 pc 37100
	jalr	%x1, %x30, 0  #2624 pc 37104
	addi	%x2, %x2, -92  #2624 pc 37108
	lw	%x1, 88(%x2)  #2624 pc 37112
	lw	%x6, 20(%x2)  #2628 pc 37116
	addi	%x6, %x6, 1  #2628 pc 37120
	lw	%x7, 12(%x2)  #2628 pc 37124
	sw	%x6, 0(%x7)  #2628 pc 37128
	ret #pc 37132
	nop #pc 37136
setup_reflections.3088:  #pc 37140
	lw	%x7, 12(%x29)  #0 pc 37140
	lw	%x8, 8(%x29)  #0 pc 37144
	lw	%x9, 4(%x29)  #0 pc 37148
	bge	%x6, %x0, 12  #2634 pc 37152
	j	bge_else.9550 #pc 37156
	nop #pc 37160
	slli	%x10, %x6, 2  #2635 pc 37164
	add	%x31, %x10, %x9  #2635 pc 37168
	lw	%x9, 0(%x31)  #2635 pc 37172
	sw	%x7, 0(%x2)  #2636 pc 37176
	sw	%x6, 4(%x2)  #2636 pc 37180
	sw	%x8, 8(%x2)  #2636 pc 37184
	sw	%x9, 12(%x2)  #2636 pc 37188
	addi	%x6, %x9, 0  #0 pc 37192
	sw	%x1, 16(%x2)  #2636 pc 37196
	addi	%x2, %x2, 20  #2636 pc 37200
	jal	%x1, o_reflectiontype.2663  #2636 pc 37204
	addi	%x2, %x2, -20  #2636 pc 37208
	lw	%x1, 16(%x2) #2636 pc 37212
	addi	%x31, %x0, 2  #pc 37216
	beq	%x6, %x31, 12  #2636 pc 37220
	j	be_else.9551 #pc 37224
	nop #pc 37228
	lw	%x6, 12(%x2)  #2637 pc 37232
	sw	%x1, 16(%x2)  #2637 pc 37236
	addi	%x2, %x2, 20  #2637 pc 37240
	jal	%x1, o_diffuse.2683  #2637 pc 37244
	addi	%x2, %x2, -20  #2637 pc 37248
	lw	%x1, 16(%x2) #2637 pc 37252
	fmv	%f1, l.6263  #0 pc 37256
	sw	%x1, 16(%x2)  #2637 pc 37260
	addi	%x2, %x2, 20  #2637 pc 37264
	jal	%x1, fless.2521  #2637 pc 37268
	addi	%x2, %x2, -20  #2637 pc 37272
	lw	%x1, 16(%x2) #2637 pc 37276
	beq	%x6, %x0, 12  #2637 pc 37280
	j	be_else.9552 #pc 37284
	nop #pc 37288
	ret #pc 37292
	nop #pc 37296
be_else.9552: #pc 37300
	lw	%x6, 12(%x2)  #2638 pc 37300
	sw	%x1, 16(%x2)  #2638 pc 37304
	addi	%x2, %x2, 20  #2638 pc 37308
	jal	%x1, o_form.2661  #2638 pc 37312
	addi	%x2, %x2, -20  #2638 pc 37316
	lw	%x1, 16(%x2) #2638 pc 37320
	addi	%x31, %x0, 1  #pc 37324
	beq	%x6, %x31, 12  #2640 pc 37328
	j	be_else.9554 #pc 37332
	nop #pc 37336
	lw	%x6, 4(%x2)  #2641 pc 37340
	lw	%x7, 12(%x2)  #2641 pc 37344
	lw	%x29, 8(%x2)  #2641 pc 37348
	lw	%x30, 0(%x29)  #2641 pc 37352
	jalr	%x0, %x30, 0  #2641 pc 37356
	nop #pc 37360
be_else.9554: #pc 37364
	addi	%x31, %x0, 2  #pc 37364
	beq	%x6, %x31, 12  #2642 pc 37368
	j	be_else.9555 #pc 37372
	nop #pc 37376
	lw	%x6, 4(%x2)  #2643 pc 37380
	lw	%x7, 12(%x2)  #2643 pc 37384
	lw	%x29, 0(%x2)  #2643 pc 37388
	lw	%x30, 0(%x29)  #2643 pc 37392
	jalr	%x0, %x30, 0  #2643 pc 37396
	nop #pc 37400
be_else.9555: #pc 37404
	ret #pc 37404
	nop #pc 37408
be_else.9551: #pc 37412
	ret #pc 37412
	nop #pc 37416
bge_else.9550: #pc 37420
	ret #pc 37420
	nop #pc 37424
rt.3090:  #pc 37428
	lw	%x9, 56(%x29)  #0 pc 37428
	lw	%x10, 52(%x29)  #0 pc 37432
	lw	%x11, 48(%x29)  #0 pc 37436
	lw	%x12, 44(%x29)  #0 pc 37440
	lw	%x13, 40(%x29)  #0 pc 37444
	lw	%x14, 36(%x29)  #0 pc 37448
	lw	%x15, 32(%x29)  #0 pc 37452
	lw	%x16, 28(%x29)  #0 pc 37456
	lw	%x17, 24(%x29)  #0 pc 37460
	lw	%x18, 20(%x29)  #0 pc 37464
	lw	%x19, 16(%x29)  #0 pc 37468
	lw	%x20, 12(%x29)  #0 pc 37472
	lw	%x21, 8(%x29)  #0 pc 37476
	lw	%x22, 4(%x29)  #0 pc 37480
	sw	%x6, 0(%x20)  #2656 pc 37484
	sw	%x7, 4(%x20)  #2657 pc 37488
	addi	%x20, %x0, 2  #0 pc 37492
	sw	%x13, 0(%x2)  #2658 pc 37496
	sw	%x15, 4(%x2)  #2658 pc 37500
	sw	%x10, 8(%x2)  #2658 pc 37504
	sw	%x16, 12(%x2)  #2658 pc 37508
	sw	%x11, 16(%x2)  #2658 pc 37512
	sw	%x18, 20(%x2)  #2658 pc 37516
	sw	%x17, 24(%x2)  #2658 pc 37520
	sw	%x19, 28(%x2)  #2658 pc 37524
	sw	%x8, 32(%x2)  #2658 pc 37528
	sw	%x9, 36(%x2)  #2658 pc 37532
	sw	%x14, 40(%x2)  #2658 pc 37536
	sw	%x22, 44(%x2)  #2658 pc 37540
	sw	%x12, 48(%x2)  #2658 pc 37544
	sw	%x6, 52(%x2)  #2658 pc 37548
	sw	%x7, 56(%x2)  #2658 pc 37552
	sw	%x21, 60(%x2)  #2658 pc 37556
	addi	%x7, %x20, 0  #0 pc 37560
	sw	%x1, 64(%x2)  #2658 pc 37564
	addi	%x2, %x2, 68  #2658 pc 37568
	jal	%x1, div.2555  #2658 pc 37572
	addi	%x2, %x2, -68  #2658 pc 37576
	lw	%x1, 64(%x2) #2658 pc 37580
	lw	%x7, 60(%x2)  #2658 pc 37584
	sw	%x6, 0(%x7)  #2658 pc 37588
	addi	%x6, %x0, 2  #0 pc 37592
	lw	%x8, 56(%x2)  #2659 pc 37596
	addi	%x7, %x6, 0  #0 pc 37600
	addi	%x6, %x8, 0  #0 pc 37604
	sw	%x1, 64(%x2)  #2659 pc 37608
	addi	%x2, %x2, 68  #2659 pc 37612
	jal	%x1, div.2555  #2659 pc 37616
	addi	%x2, %x2, -68  #2659 pc 37620
	lw	%x1, 64(%x2) #2659 pc 37624
	lw	%x7, 60(%x2)  #2659 pc 37628
	sw	%x6, 4(%x7)  #2659 pc 37632
	fmv	%f0, l.7003  #0 pc 37636
	lw	%x6, 52(%x2)  #2660 pc 37640
	fsw	%f0, 64(%x2)  #2660 pc 37644
	sw	%x1, 72(%x2)  #2660 pc 37648
	addi	%x2, %x2, 76  #2660 pc 37652
	jal	%x1, float_of_int.2538  #2660 pc 37656
	addi	%x2, %x2, -76  #2660 pc 37660
	lw	%x1, 72(%x2) #2660 pc 37664
	flw	%f1, 64(%x2)  #2660 pc 37668
	fdiv	%f0, %f1, %f0  #2660 pc 37672
	lw	%x6, 48(%x2)  #2660 pc 37676
	fsw	%f0, 0(%x6)  #2660 pc 37680
	lw	%x29, 44(%x2)  #2661 pc 37684
	sw	%x1, 72(%x2)  #2661 pc 37688
	lw	%x30, 0(%x29)  #2661 pc 37692
	addi	%x2, %x2, 76  #2661 pc 37696
	jalr	%x1, %x30, 0  #2661 pc 37700 #[create_pixelline.3037] 
	addi	%x2, %x2, -76  #2661 pc 37704
	lw	%x1, 72(%x2)  #2661 pc 37708
	lw	%x29, 44(%x2)  #2662 pc 37712
	sw	%x6, 72(%x2)  #2662 pc 37716
	sw	%x1, 76(%x2)  #2662 pc 37720
	lw	%x30, 0(%x29)  #2662 pc 37724
	addi	%x2, %x2, 80  #2662 pc 37728
	jalr	%x1, %x30, 0  #2662 pc 37732
	addi	%x2, %x2, -80  #2662 pc 37736
	lw	%x1, 76(%x2)  #2662 pc 37740
	lw	%x29, 44(%x2)  #2663 pc 37744
	sw	%x6, 76(%x2)  #2663 pc 37748
	sw	%x1, 80(%x2)  #2663 pc 37752
	lw	%x30, 0(%x29)  #2663 pc 37756
	addi	%x2, %x2, 84  #2663 pc 37760
	jalr	%x1, %x30, 0  #2663 pc 37764
	addi	%x2, %x2, -84  #2663 pc 37768
	lw	%x1, 80(%x2)  #2663 pc 37772
	lw	%x29, 40(%x2)  #2664 pc 37776
	sw	%x6, 80(%x2)  #2664 pc 37780
	sw	%x1, 84(%x2)  #2664 pc 37784
	lw	%x30, 0(%x29)  #2664 pc 37788
	addi	%x2, %x2, 88  #2664 pc 37792
	jalr	%x1, %x30, 0  #2664 pc 37796
	addi	%x2, %x2, -88  #2664 pc 37800
	lw	%x1, 84(%x2)  #2664 pc 37804
	lw	%x6, 32(%x2)  #2665 pc 37808
	lw	%x29, 36(%x2)  #2665 pc 37812
	sw	%x1, 84(%x2)  #2665 pc 37816
	lw	%x30, 0(%x29)  #2665 pc 37820
	addi	%x2, %x2, 88  #2665 pc 37824
	jalr	%x1, %x30, 0  #2665 pc 37828
	addi	%x2, %x2, -88  #2665 pc 37832
	lw	%x1, 84(%x2)  #2665 pc 37836
	lw	%x29, 28(%x2)  #2666 pc 37840
	sw	%x1, 84(%x2)  #2666 pc 37844
	lw	%x30, 0(%x29)  #2666 pc 37848
	addi	%x2, %x2, 88  #2666 pc 37852
	jalr	%x1, %x30, 0  #2666 pc 37856
	addi	%x2, %x2, -88  #2666 pc 37860
	lw	%x1, 84(%x2)  #2666 pc 37864
	lw	%x6, 24(%x2)  #2667 pc 37868
	sw	%x1, 84(%x2)  #2667 pc 37872
	addi	%x2, %x2, 88  #2667 pc 37876
	jal	%x1, d_vec.2720  #2667 pc 37880
	addi	%x2, %x2, -88  #2667 pc 37884
	lw	%x1, 84(%x2) #2667 pc 37888
	lw	%x7, 20(%x2)  #2667 pc 37892
	sw	%x1, 84(%x2)  #2667 pc 37896
	addi	%x2, %x2, 88  #2667 pc 37900
	jal	%x1, veccpy.2631  #2667 pc 37904
	addi	%x2, %x2, -88  #2667 pc 37908
	lw	%x1, 84(%x2) #2667 pc 37912
	lw	%x6, 24(%x2)  #2668 pc 37916
	lw	%x29, 16(%x2)  #2668 pc 37920
	sw	%x1, 84(%x2)  #2668 pc 37924
	lw	%x30, 0(%x29)  #2668 pc 37928
	addi	%x2, %x2, 88  #2668 pc 37932
	jalr	%x1, %x30, 0  #2668 pc 37936 #ok [setup_dirvec_constants.2849] 
	addi	%x2, %x2, -88  #2668 pc 37940
	lw	%x1, 84(%x2)  #2668 pc 37944
	lw	%x6, 12(%x2)  #2669 pc 37948
	lw	%x6, 0(%x6)  #2669 pc 37952
	addi	%x6, %x6, -1  #2669 pc 37956
	lw	%x29, 8(%x2)  #2669 pc 37960
	sw	%x1, 84(%x2)  #2669 pc 37964
	lw	%x30, 0(%x29)  #2669 pc 37968
	addi	%x2, %x2, 88  #2669 pc 37972
	jalr	%x1, %x30, 0  #2669 pc 37976
	addi	%x2, %x2, -88  #2669 pc 37980
	lw	%x1, 84(%x2)  #2669 pc 37984
	addi	%x7, %x0, 0  #0 pc 37988
	addi	%x8, %x0, 0  #0 pc 37992
	lw	%x6, 76(%x2)  #2670 pc 37996
	lw	%x29, 4(%x2)  #2670 pc 38000
	sw	%x1, 84(%x2)  #2670 pc 38004
	lw	%x30, 0(%x29)  #2670 pc 38008
	addi	%x2, %x2, 88  #2670 pc 38012
	jalr	%x1, %x30, 0  #2670 pc 38016
	addi	%x2, %x2, -88  #2670 pc 38020
	lw	%x1, 84(%x2)  #2670 pc 38024
	addi	%x6, %x0, 0  #0 pc 38028
	addi	%x10, %x0, 2  #0 pc 38032
	lw	%x7, 72(%x2)  #2671 pc 38036
	lw	%x8, 76(%x2)  #2671 pc 38040
	lw	%x9, 80(%x2)  #2671 pc 38044
	lw	%x11, 32(%x2)  #2671 pc 38048
	lw	%x29, 0(%x2)  #2671 pc 38052
	lw	%x30, 0(%x29)  #2671 pc 38056
	jalr	%x0, %x30, 0  #2671 pc 38060
	nop #pc 38064
.global	min_caml_start
min_caml_start:
	addi	%x2, %x0, 10000000
	addi	%x3, %x0, 10002000
	addi	%x4, %x0, 8192
	addi	%x5, %x0, 65536
	addi	%x6, %x0, 1  #0 pc 38084
	addi	%x7, %x0, 0  #0 pc 38088
	sw	%x1, 0(%x2)  #250 pc 38092
	addi	%x2, %x2, 4  #250 pc 38096
	jal	%x1, create_array.2570  #250 pc 38100
	addi	%x2, %x2, -4  #250 pc 38104
	lw	%x1, 0(%x2) #250 pc 38108
	addi	%x7, %x0, 0  #0 pc 38112
	fmv	%f0, l.6244  #0 pc 38116
	sw	%x6, 0(%x2)  #255 pc 38120
	addi	%x6, %x7, 0  #0 pc 38124
	sw	%x1, 4(%x2)  #255 pc 38128
	addi	%x2, %x2, 8  #255 pc 38132
	jal	%x1, create_float_array.2577  #255 pc 38136
	addi	%x2, %x2, -8  #255 pc 38140
	lw	%x1, 4(%x2) #255 pc 38144
	addi	%x7, %x0, 60  #0 pc 38148
	addi	%x8, %x0, 0  #0 pc 38152
	addi	%x9, %x3, 0  #256 pc 38156
	addi	%x3, %x3, 44  #256 pc 38160
	sw	%x6, 40(%x9)  #256 pc 38164
	sw	%x6, 36(%x9)  #256 pc 38168
	sw	%x6, 32(%x9)  #256 pc 38172
	sw	%x6, 28(%x9)  #256 pc 38176
	sw	%x8, 24(%x9)  #256 pc 38180
	sw	%x6, 20(%x9)  #256 pc 38184
	sw	%x6, 16(%x9)  #256 pc 38188
	sw	%x8, 12(%x9)  #256 pc 38192
	sw	%x8, 8(%x9)  #256 pc 38196
	sw	%x8, 4(%x9)  #256 pc 38200
	sw	%x8, 0(%x9)  #256 pc 38204
	addi	%x6, %x9, 0  #256 pc 38208
	addi	%x30, %x7, 0  #0 pc 38212
	addi	%x7, %x6, 0  #0 pc 38216
	addi	%x6, %x30, 0  #0 pc 38220
	sw	%x1, 4(%x2)  #256 pc 38224
	addi	%x2, %x2, 8  #256 pc 38228
	jal	%x1, create_array.2570  #256 pc 38232
	addi	%x2, %x2, -8  #256 pc 38236
	lw	%x1, 4(%x2) #256 pc 38240
	addi	%x7, %x0, 3  #0 pc 38244
	fmv	%f0, l.6244  #0 pc 38248
	sw	%x6, 4(%x2)  #260 pc 38252
	addi	%x6, %x7, 0  #0 pc 38256
	sw	%x1, 8(%x2)  #260 pc 38260
	addi	%x2, %x2, 12  #260 pc 38264
	jal	%x1, create_float_array.2577  #260 pc 38268
	addi	%x2, %x2, -12  #260 pc 38272
	lw	%x1, 8(%x2) #260 pc 38276
	addi	%x7, %x0, 3  #0 pc 38280
	fmv	%f0, l.6244  #0 pc 38284
	sw	%x6, 8(%x2)  #263 pc 38288
	addi	%x6, %x7, 0  #0 pc 38292
	sw	%x1, 12(%x2)  #263 pc 38296
	addi	%x2, %x2, 16  #263 pc 38300
	jal	%x1, create_float_array.2577  #263 pc 38304
	addi	%x2, %x2, -16  #263 pc 38308
	lw	%x1, 12(%x2) #263 pc 38312
	addi	%x7, %x0, 3  #0 pc 38316
	fmv	%f0, l.6244  #0 pc 38320
	sw	%x6, 12(%x2)  #266 pc 38324
	addi	%x6, %x7, 0  #0 pc 38328
	sw	%x1, 16(%x2)  #266 pc 38332
	addi	%x2, %x2, 20  #266 pc 38336
	jal	%x1, create_float_array.2577  #266 pc 38340
	addi	%x2, %x2, -20  #266 pc 38344
	lw	%x1, 16(%x2) #266 pc 38348
	addi	%x7, %x0, 1  #0 pc 38352
	fmv	%f0, l.6756  #0 pc 38356
	sw	%x6, 16(%x2)  #269 pc 38360
	addi	%x6, %x7, 0  #0 pc 38364
	sw	%x1, 20(%x2)  #269 pc 38368
	addi	%x2, %x2, 24  #269 pc 38372
	jal	%x1, create_float_array.2577  #269 pc 38376
	addi	%x2, %x2, -24  #269 pc 38380
	lw	%x1, 20(%x2) #269 pc 38384
	addi	%x7, %x0, 50  #0 pc 38388
	addi	%x8, %x0, 1  #0 pc 38392
	addi	%x9, %x0, -1  #0 pc 38396
	sw	%x6, 20(%x2)  #272 pc 38400
	sw	%x7, 24(%x2)  #272 pc 38404
	addi	%x7, %x9, 0  #0 pc 38408
	addi	%x6, %x8, 0  #0 pc 38412
	sw	%x1, 28(%x2)  #272 pc 38416
	addi	%x2, %x2, 32  #272 pc 38420
	jal	%x1, create_array.2570  #272 pc 38424
	addi	%x2, %x2, -32  #272 pc 38428
	lw	%x1, 28(%x2) #272 pc 38432
	addi	%x7, %x6, 0  #272 pc 38436
	lw	%x6, 24(%x2)  #272 pc 38440
	sw	%x1, 28(%x2)  #272 pc 38444
	addi	%x2, %x2, 32  #272 pc 38448
	jal	%x1, create_array.2570  #272 pc 38452
	addi	%x2, %x2, -32  #272 pc 38456
	lw	%x1, 28(%x2) #272 pc 38460
	addi	%x7, %x0, 1  #0 pc 38464
	lw	%x8, 0(%x6)  #275 pc 38468
	sw	%x6, 28(%x2)  #275 pc 38472
	sw	%x7, 32(%x2)  #275 pc 38476
	addi	%x6, %x7, 0  #0 pc 38480
	addi	%x7, %x8, 0  #0 pc 38484
	sw	%x1, 36(%x2)  #275 pc 38488
	addi	%x2, %x2, 40  #275 pc 38492
	jal	%x1, create_array.2570  #275 pc 38496
	addi	%x2, %x2, -40  #275 pc 38500
	lw	%x1, 36(%x2) #275 pc 38504
	addi	%x7, %x6, 0  #275 pc 38508
	lw	%x6, 32(%x2)  #275 pc 38512
	sw	%x1, 36(%x2)  #275 pc 38516
	addi	%x2, %x2, 40  #275 pc 38520
	jal	%x1, create_array.2570  #275 pc 38524
	addi	%x2, %x2, -40  #275 pc 38528
	lw	%x1, 36(%x2) #275 pc 38532
	addi	%x7, %x0, 1  #0 pc 38536
	fmv	%f0, l.6244  #0 pc 38540
	sw	%x6, 36(%x2)  #280 pc 38544
	addi	%x6, %x7, 0  #0 pc 38548
	sw	%x1, 40(%x2)  #280 pc 38552
	addi	%x2, %x2, 44  #280 pc 38556
	jal	%x1, create_float_array.2577  #280 pc 38560
	addi	%x2, %x2, -44  #280 pc 38564
	lw	%x1, 40(%x2) #280 pc 38568
	addi	%x7, %x0, 1  #0 pc 38572
	addi	%x8, %x0, 0  #0 pc 38576
	sw	%x6, 40(%x2)  #283 pc 38580
	addi	%x6, %x7, 0  #0 pc 38584
	addi	%x7, %x8, 0  #0 pc 38588
	sw	%x1, 44(%x2)  #283 pc 38592
	addi	%x2, %x2, 48  #283 pc 38596
	jal	%x1, create_array.2570  #283 pc 38600
	addi	%x2, %x2, -48  #283 pc 38604
	lw	%x1, 44(%x2) #283 pc 38608
	addi	%x7, %x0, 1  #0 pc 38612
	fmv	%f0, l.6683  #0 pc 38616
	sw	%x6, 44(%x2)  #286 pc 38620
	addi	%x6, %x7, 0  #0 pc 38624
	sw	%x1, 48(%x2)  #286 pc 38628
	addi	%x2, %x2, 52  #286 pc 38632
	jal	%x1, create_float_array.2577  #286 pc 38636
	addi	%x2, %x2, -52  #286 pc 38640
	lw	%x1, 48(%x2) #286 pc 38644
	addi	%x7, %x0, 3  #0 pc 38648
	fmv	%f0, l.6244  #0 pc 38652
	sw	%x6, 48(%x2)  #289 pc 38656
	addi	%x6, %x7, 0  #0 pc 38660
	sw	%x1, 52(%x2)  #289 pc 38664
	addi	%x2, %x2, 56  #289 pc 38668
	jal	%x1, create_float_array.2577  #289 pc 38672
	addi	%x2, %x2, -56  #289 pc 38676
	lw	%x1, 52(%x2) #289 pc 38680
	addi	%x7, %x0, 1  #0 pc 38684
	addi	%x8, %x0, 0  #0 pc 38688
	sw	%x6, 52(%x2)  #292 pc 38692
	addi	%x6, %x7, 0  #0 pc 38696
	addi	%x7, %x8, 0  #0 pc 38700
	sw	%x1, 56(%x2)  #292 pc 38704
	addi	%x2, %x2, 60  #292 pc 38708
	jal	%x1, create_array.2570  #292 pc 38712
	addi	%x2, %x2, -60  #292 pc 38716
	lw	%x1, 56(%x2) #292 pc 38720
	addi	%x7, %x0, 3  #0 pc 38724
	fmv	%f0, l.6244  #0 pc 38728
	sw	%x6, 56(%x2)  #295 pc 38732
	addi	%x6, %x7, 0  #0 pc 38736
	sw	%x1, 60(%x2)  #295 pc 38740
	addi	%x2, %x2, 64  #295 pc 38744
	jal	%x1, create_float_array.2577  #295 pc 38748
	addi	%x2, %x2, -64  #295 pc 38752
	lw	%x1, 60(%x2) #295 pc 38756
	addi	%x7, %x0, 3  #0 pc 38760
	fmv	%f0, l.6244  #0 pc 38764
	sw	%x6, 60(%x2)  #298 pc 38768
	addi	%x6, %x7, 0  #0 pc 38772
	sw	%x1, 64(%x2)  #298 pc 38776
	addi	%x2, %x2, 68  #298 pc 38780
	jal	%x1, create_float_array.2577  #298 pc 38784
	addi	%x2, %x2, -68  #298 pc 38788
	lw	%x1, 64(%x2) #298 pc 38792
	addi	%x7, %x0, 3  #0 pc 38796
	fmv	%f0, l.6244  #0 pc 38800
	sw	%x6, 64(%x2)  #302 pc 38804
	addi	%x6, %x7, 0  #0 pc 38808
	sw	%x1, 68(%x2)  #302 pc 38812
	addi	%x2, %x2, 72  #302 pc 38816
	jal	%x1, create_float_array.2577  #302 pc 38820
	addi	%x2, %x2, -72  #302 pc 38824
	lw	%x1, 68(%x2) #302 pc 38828
	addi	%x7, %x0, 3  #0 pc 38832
	fmv	%f0, l.6244  #0 pc 38836
	sw	%x6, 68(%x2)  #305 pc 38840
	addi	%x6, %x7, 0  #0 pc 38844
	sw	%x1, 72(%x2)  #305 pc 38848
	addi	%x2, %x2, 76  #305 pc 38852
	jal	%x1, create_float_array.2577  #305 pc 38856
	addi	%x2, %x2, -76  #305 pc 38860
	lw	%x1, 72(%x2) #305 pc 38864
	addi	%x7, %x0, 2  #0 pc 38868
	addi	%x8, %x0, 0  #0 pc 38872
	sw	%x6, 72(%x2)  #309 pc 38876
	addi	%x6, %x7, 0  #0 pc 38880
	addi	%x7, %x8, 0  #0 pc 38884
	sw	%x1, 76(%x2)  #309 pc 38888
	addi	%x2, %x2, 80  #309 pc 38892
	jal	%x1, create_array.2570  #309 pc 38896
	addi	%x2, %x2, -80  #309 pc 38900
	lw	%x1, 76(%x2) #309 pc 38904
	addi	%x7, %x0, 2  #0 pc 38908
	addi	%x8, %x0, 0  #0 pc 38912
	sw	%x6, 76(%x2)  #312 pc 38916
	addi	%x6, %x7, 0  #0 pc 38920
	addi	%x7, %x8, 0  #0 pc 38924
	sw	%x1, 80(%x2)  #312 pc 38928
	addi	%x2, %x2, 84  #312 pc 38932
	jal	%x1, create_array.2570  #312 pc 38936
	addi	%x2, %x2, -84  #312 pc 38940
	lw	%x1, 80(%x2) #312 pc 38944
	addi	%x7, %x0, 1  #0 pc 38948
	fmv	%f0, l.6244  #0 pc 38952
	sw	%x6, 80(%x2)  #315 pc 38956
	addi	%x6, %x7, 0  #0 pc 38960
	sw	%x1, 84(%x2)  #315 pc 38964
	addi	%x2, %x2, 88  #315 pc 38968
	jal	%x1, create_float_array.2577  #315 pc 38972
	addi	%x2, %x2, -88  #315 pc 38976
	lw	%x1, 84(%x2) #315 pc 38980
	addi	%x7, %x0, 3  #0 pc 38984
	fmv	%f0, l.6244  #0 pc 38988
	sw	%x6, 84(%x2)  #319 pc 38992
	addi	%x6, %x7, 0  #0 pc 38996
	sw	%x1, 88(%x2)  #319 pc 39000
	addi	%x2, %x2, 92  #319 pc 39004
	jal	%x1, create_float_array.2577  #319 pc 39008
	addi	%x2, %x2, -92  #319 pc 39012
	lw	%x1, 88(%x2) #319 pc 39016
	addi	%x7, %x0, 3  #0 pc 39020
	fmv	%f0, l.6244  #0 pc 39024
	sw	%x6, 88(%x2)  #322 pc 39028
	addi	%x6, %x7, 0  #0 pc 39032
	sw	%x1, 92(%x2)  #322 pc 39036
	addi	%x2, %x2, 96  #322 pc 39040
	jal	%x1, create_float_array.2577  #322 pc 39044
	addi	%x2, %x2, -96  #322 pc 39048
	lw	%x1, 92(%x2) #322 pc 39052
	addi	%x7, %x0, 3  #0 pc 39056
	fmv	%f0, l.6244  #0 pc 39060
	sw	%x6, 92(%x2)  #326 pc 39064
	addi	%x6, %x7, 0  #0 pc 39068
	sw	%x1, 96(%x2)  #326 pc 39072
	addi	%x2, %x2, 100  #326 pc 39076
	jal	%x1, create_float_array.2577  #326 pc 39080
	addi	%x2, %x2, -100  #326 pc 39084
	lw	%x1, 96(%x2) #326 pc 39088
	addi	%x7, %x0, 3  #0 pc 39092
	fmv	%f0, l.6244  #0 pc 39096
	sw	%x6, 96(%x2)  #328 pc 39100
	addi	%x6, %x7, 0  #0 pc 39104
	sw	%x1, 100(%x2)  #328 pc 39108
	addi	%x2, %x2, 104  #328 pc 39112
	jal	%x1, create_float_array.2577  #328 pc 39116
	addi	%x2, %x2, -104  #328 pc 39120
	lw	%x1, 100(%x2) #328 pc 39124
	addi	%x7, %x0, 3  #0 pc 39128
	fmv	%f0, l.6244  #0 pc 39132
	sw	%x6, 100(%x2)  #330 pc 39136
	addi	%x6, %x7, 0  #0 pc 39140
	sw	%x1, 104(%x2)  #330 pc 39144
	addi	%x2, %x2, 108  #330 pc 39148
	jal	%x1, create_float_array.2577  #330 pc 39152
	addi	%x2, %x2, -108  #330 pc 39156
	lw	%x1, 104(%x2) #330 pc 39160
	addi	%x7, %x0, 3  #0 pc 39164
	fmv	%f0, l.6244  #0 pc 39168
	sw	%x6, 104(%x2)  #334 pc 39172
	addi	%x6, %x7, 0  #0 pc 39176
	sw	%x1, 108(%x2)  #334 pc 39180
	addi	%x2, %x2, 112  #334 pc 39184
	jal	%x1, create_float_array.2577  #334 pc 39188
	addi	%x2, %x2, -112  #334 pc 39192
	lw	%x1, 108(%x2) #334 pc 39196
	addi	%x7, %x0, 0  #0 pc 39200
	fmv	%f0, l.6244  #0 pc 39204
	sw	%x6, 108(%x2)  #339 pc 39208
	addi	%x6, %x7, 0  #0 pc 39212
	sw	%x1, 112(%x2)  #339 pc 39216
	addi	%x2, %x2, 116  #339 pc 39220
	jal	%x1, create_float_array.2577  #339 pc 39224
	addi	%x2, %x2, -116  #339 pc 39228
	lw	%x1, 112(%x2) #339 pc 39232
	addi	%x7, %x6, 0  #339 pc 39236
	addi	%x6, %x0, 0  #0 pc 39240
	sw	%x7, 112(%x2)  #340 pc 39244
	sw	%x1, 116(%x2)  #340 pc 39248
	addi	%x2, %x2, 120  #340 pc 39252
	jal	%x1, create_array.2570  #340 pc 39256
	addi	%x2, %x2, -120  #340 pc 39260
	lw	%x1, 116(%x2) #340 pc 39264
	addi	%x7, %x0, 0  #0 pc 39268
	addi	%x8, %x3, 0  #341 pc 39272
	addi	%x3, %x3, 8  #341 pc 39276
	sw	%x6, 4(%x8)  #341 pc 39280
	lw	%x6, 112(%x2)  #341 pc 39284
	sw	%x6, 0(%x8)  #341 pc 39288
	addi	%x6, %x8, 0  #341 pc 39292
	addi	%x30, %x7, 0  #0 pc 39296
	addi	%x7, %x6, 0  #0 pc 39300
	addi	%x6, %x30, 0  #0 pc 39304
	sw	%x1, 116(%x2)  #341 pc 39308
	addi	%x2, %x2, 120  #341 pc 39312
	jal	%x1, create_array.2570  #341 pc 39316
	addi	%x2, %x2, -120  #341 pc 39320
	lw	%x1, 116(%x2) #341 pc 39324
	addi	%x7, %x6, 0  #341 pc 39328
	addi	%x6, %x0, 5  #0 pc 39332
	sw	%x1, 116(%x2)  #342 pc 39336
	addi	%x2, %x2, 120  #342 pc 39340
	jal	%x1, create_array.2570  #342 pc 39344
	addi	%x2, %x2, -120  #342 pc 39348
	lw	%x1, 116(%x2) #342 pc 39352
	addi	%x7, %x0, 0  #0 pc 39356
	fmv	%f0, l.6244  #0 pc 39360
	sw	%x6, 116(%x2)  #347 pc 39364
	addi	%x6, %x7, 0  #0 pc 39368
	sw	%x1, 120(%x2)  #347 pc 39372
	addi	%x2, %x2, 124  #347 pc 39376
	jal	%x1, create_float_array.2577  #347 pc 39380
	addi	%x2, %x2, -124  #347 pc 39384
	lw	%x1, 120(%x2) #347 pc 39388
	addi	%x7, %x0, 3  #0 pc 39392
	fmv	%f0, l.6244  #0 pc 39396
	sw	%x6, 120(%x2)  #348 pc 39400
	addi	%x6, %x7, 0  #0 pc 39404
	sw	%x1, 124(%x2)  #348 pc 39408
	addi	%x2, %x2, 128  #348 pc 39412
	jal	%x1, create_float_array.2577  #348 pc 39416
	addi	%x2, %x2, -128  #348 pc 39420
	lw	%x1, 124(%x2) #348 pc 39424
	addi	%x7, %x0, 60  #0 pc 39428
	lw	%x8, 120(%x2)  #349 pc 39432
	sw	%x6, 124(%x2)  #349 pc 39436
	addi	%x6, %x7, 0  #0 pc 39440
	addi	%x7, %x8, 0  #0 pc 39444
	sw	%x1, 128(%x2)  #349 pc 39448
	addi	%x2, %x2, 132  #349 pc 39452
	jal	%x1, create_array.2570  #349 pc 39456
	addi	%x2, %x2, -132  #349 pc 39460
	lw	%x1, 128(%x2) #349 pc 39464
	addi	%x7, %x3, 0  #350 pc 39468
	addi	%x3, %x3, 8  #350 pc 39472
	sw	%x6, 4(%x7)  #350 pc 39476
	lw	%x6, 124(%x2)  #350 pc 39480
	sw	%x6, 0(%x7)  #350 pc 39484
	addi	%x6, %x7, 0  #350 pc 39488
	addi	%x7, %x0, 0  #0 pc 39492
	fmv	%f0, l.6244  #0 pc 39496
	sw	%x6, 128(%x2)  #355 pc 39500
	addi	%x6, %x7, 0  #0 pc 39504
	sw	%x1, 132(%x2)  #355 pc 39508
	addi	%x2, %x2, 136  #355 pc 39512
	jal	%x1, create_float_array.2577  #355 pc 39516
	addi	%x2, %x2, -136  #355 pc 39520
	lw	%x1, 132(%x2) #355 pc 39524
	addi	%x7, %x6, 0  #355 pc 39528
	addi	%x6, %x0, 0  #0 pc 39532
	sw	%x7, 132(%x2)  #356 pc 39536
	sw	%x1, 136(%x2)  #356 pc 39540
	addi	%x2, %x2, 140  #356 pc 39544
	jal	%x1, create_array.2570  #356 pc 39548
	addi	%x2, %x2, -140  #356 pc 39552
	lw	%x1, 136(%x2) #356 pc 39556
	addi	%x7, %x3, 0  #357 pc 39560
	addi	%x3, %x3, 8  #357 pc 39564
	sw	%x6, 4(%x7)  #357 pc 39568
	lw	%x6, 132(%x2)  #357 pc 39572
	sw	%x6, 0(%x7)  #357 pc 39576
	addi	%x6, %x7, 0  #357 pc 39580
	addi	%x7, %x0, 180  #0 pc 39584
	addi	%x8, %x0, 0  #0 pc 39588
	fmv	%f0, l.6244  #0 pc 39592
	addi	%x9, %x3, 0  #358 pc 39596
	addi	%x3, %x3, 12  #358 pc 39600
	fsw	%f0, 8(%x9)  #358 pc 39604
	sw	%x6, 4(%x9)  #358 pc 39608
	sw	%x8, 0(%x9)  #358 pc 39612
	addi	%x6, %x9, 0  #358 pc 39616
	addi	%x30, %x7, 0  #0 pc 39620
	addi	%x7, %x6, 0  #0 pc 39624
	addi	%x6, %x30, 0  #0 pc 39628
	sw	%x1, 136(%x2)  #358 pc 39632
	addi	%x2, %x2, 140  #358 pc 39636
	jal	%x1, create_array.2570  #358 pc 39640
	addi	%x2, %x2, -140  #358 pc 39644
	lw	%x1, 136(%x2) #358 pc 39648
	addi	%x7, %x0, 1  #0 pc 39652
	addi	%x8, %x0, 0  #0 pc 39656
	sw	%x6, 136(%x2)  #362 pc 39660
	addi	%x6, %x7, 0  #0 pc 39664
	addi	%x7, %x8, 0  #0 pc 39668
	sw	%x1, 140(%x2)  #362 pc 39672
	addi	%x2, %x2, 144  #362 pc 39676
	jal	%x1, create_array.2570  #362 pc 39680
	addi	%x2, %x2, -144  #362 pc 39684
	lw	%x1, 140(%x2) #362 pc 39688
	addi	%x7, %x3, 0  #845 pc 39692
	addi	%x3, %x3, 24  #845 pc 39696
	addi	%x8, %x0, 3268  #845 read_screen_settings.2732 pc 39700
	sw	%x8, 0(%x7)  #845 pc 39704
	lw	%x8, 12(%x2)  #845 pc 39708
	sw	%x8, 20(%x7)  #845 pc 39712
	lw	%x9, 104(%x2)  #845 pc 39716
	sw	%x9, 16(%x7)  #845 pc 39720
	lw	%x10, 100(%x2)  #845 pc 39724
	sw	%x10, 12(%x7)  #845 pc 39728
	lw	%x11, 96(%x2)  #845 pc 39732
	sw	%x11, 8(%x7)  #845 pc 39736
	lw	%x12, 8(%x2)  #845 pc 39740
	sw	%x12, 4(%x7)  #845 pc 39744
	addi	%x12, %x3, 0  #878 pc 39748
	addi	%x3, %x3, 12  #878 pc 39752
	addi	%x13, %x0, 3876  #878 read_light.2734 pc 39756
	sw	%x13, 0(%x12)  #878 pc 39760
	lw	%x13, 16(%x2)  #878 pc 39764
	sw	%x13, 8(%x12)  #878 pc 39768
	lw	%x14, 20(%x2)  #878 pc 39772
	sw	%x14, 4(%x12)  #878 pc 39776
	addi	%x15, %x3, 0  #941 pc 39780
	addi	%x3, %x3, 8  #941 pc 39784
	addi	%x16, %x0, 5212  #941 read_nth_object.2739 pc 39788
	sw	%x16, 0(%x15)  #941 pc 39792
	lw	%x16, 4(%x2)  #941 pc 39796
	sw	%x16, 4(%x15)  #941 pc 39800
	addi	%x17, %x3, 0  #1024 pc 39804
	addi	%x3, %x3, 12  #1024 pc 39808
	addi	%x18, %x0, 6776  #1024 read_object.2741 pc 39812
	sw	%x18, 0(%x17)  #1024 pc 39816
	sw	%x15, 8(%x17)  #1024 pc 39820
	lw	%x15, 0(%x2)  #1024 pc 39824
	sw	%x15, 4(%x17)  #1024 pc 39828
	addi	%x18, %x3, 0  #1033 pc 39832
	addi	%x3, %x3, 8  #1033 pc 39836
	addi	%x19, %x0, 6904  #1033 read_all_object.2743 pc 39840
	sw	%x19, 0(%x18)  #1033 pc 39844
	sw	%x17, 4(%x18)  #1033 pc 39848
	addi	%x17, %x3, 0  #1057 pc 39852
	addi	%x3, %x3, 8  #1057 pc 39856
	addi	%x19, %x0, 7184  #1057 read_and_network.2749 pc 39860
	sw	%x19, 0(%x17)  #1057 pc 39864
	lw	%x19, 28(%x2)  #1057 pc 39868
	sw	%x19, 4(%x17)  #1057 pc 39872
	addi	%x20, %x3, 0  #1066 pc 39876
	addi	%x3, %x3, 24  #1066 pc 39880
	addi	%x21, %x0, 7296  #1066 read_parameter.2751 pc 39884
	sw	%x21, 0(%x20)  #1066 pc 39888
	sw	%x7, 20(%x20)  #1066 pc 39892
	sw	%x12, 16(%x20)  #1066 pc 39896
	sw	%x17, 12(%x20)  #1066 pc 39900
	sw	%x18, 8(%x20)  #1066 pc 39904
	lw	%x7, 36(%x2)  #1066 pc 39908
	sw	%x7, 4(%x20)  #1066 pc 39912
	addi	%x12, %x3, 0  #1091 pc 39916
	addi	%x3, %x3, 8  #1091 pc 39920
	addi	%x17, %x0, 7488  #1091 solver_rect_surface.2753 pc 39924
	sw	%x17, 0(%x12)  #1091 pc 39928
	lw	%x17, 40(%x2)  #1091 pc 39932
	sw	%x17, 4(%x12)  #1091 pc 39936
	addi	%x18, %x3, 0  #1106 pc 39940
	addi	%x3, %x3, 8  #1106 pc 39944
	addi	%x21, %x0, 8020  #1106 solver_rect.2762 pc 39948
	sw	%x21, 0(%x18)  #1106 pc 39952
	sw	%x12, 4(%x18)  #1106 pc 39956
	addi	%x12, %x3, 0  #1115 pc 39960
	addi	%x3, %x3, 8  #1115 pc 39964
	addi	%x21, %x0, 8288  #1115 solver_surface.2768 pc 39968
	sw	%x21, 0(%x12)  #1115 pc 39972
	sw	%x17, 4(%x12)  #1115 pc 39976
	addi	%x21, %x3, 0  #1166 pc 39980
	addi	%x3, %x3, 8  #1166 pc 39984
	addi	%x22, %x0, 9444  #1166 solver_second.2787 pc 39988
	sw	%x22, 0(%x21)  #1166 pc 39992
	sw	%x17, 4(%x21)  #1166 pc 39996
	addi	%x22, %x3, 0  #1195 pc 40000
	addi	%x3, %x3, 20  #1195 pc 40004
	addi	%x23, %x0, 9952  #1195 solver.2793 pc 40008
	sw	%x23, 0(%x22)  #1195 pc 40012
	sw	%x12, 16(%x22)  #1195 pc 40016
	sw	%x21, 12(%x22)  #1195 pc 40020
	sw	%x18, 8(%x22)  #1195 pc 40024
	sw	%x16, 4(%x22)  #1195 pc 40028
	addi	%x12, %x3, 0  #1227 pc 40032
	addi	%x3, %x3, 8  #1227 pc 40036
	addi	%x18, %x0, 10308  #1227 solver_rect_fast.2797 pc 40040
	sw	%x18, 0(%x12)  #1227 pc 40044
	sw	%x17, 4(%x12)  #1227 pc 40048
	addi	%x18, %x3, 0  #1260 pc 40052
	addi	%x3, %x3, 8  #1260 pc 40056
	addi	%x21, %x0, 11344  #1260 solver_surface_fast.2804 pc 40060
	sw	%x21, 0(%x18)  #1260 pc 40064
	sw	%x17, 4(%x18)  #1260 pc 40068
	addi	%x21, %x3, 0  #1269 pc 40072
	addi	%x3, %x3, 8  #1269 pc 40076
	addi	%x23, %x0, 11488  #1269 solver_second_fast.2810 pc 40080
	sw	%x23, 0(%x21)  #1269 pc 40084
	sw	%x17, 4(%x21)  #1269 pc 40088
	addi	%x23, %x3, 0  #1289 pc 40092
	addi	%x3, %x3, 20  #1289 pc 40096
	addi	%x24, %x0, 11956  #1289 solver_fast.2816 pc 40100
	sw	%x24, 0(%x23)  #1289 pc 40104
	sw	%x18, 16(%x23)  #1289 pc 40108
	sw	%x21, 12(%x23)  #1289 pc 40112
	sw	%x12, 8(%x23)  #1289 pc 40116
	sw	%x16, 4(%x23)  #1289 pc 40120
	addi	%x18, %x3, 0  #1309 pc 40124
	addi	%x3, %x3, 8  #1309 pc 40128
	addi	%x21, %x0, 12396  #1309 solver_surface_fast2.2820 pc 40132
	sw	%x21, 0(%x18)  #1309 pc 40136
	sw	%x17, 4(%x18)  #1309 pc 40140
	addi	%x21, %x3, 0  #1317 pc 40144
	addi	%x3, %x3, 8  #1317 pc 40148
	addi	%x24, %x0, 12500  #1317 solver_second_fast2.2827 pc 40152
	sw	%x24, 0(%x21)  #1317 pc 40156
	sw	%x17, 4(%x21)  #1317 pc 40160
	addi	%x24, %x3, 0  #1336 pc 40164
	addi	%x3, %x3, 20  #1336 pc 40168
	addi	%x25, %x0, 12864  #1336 solver_fast2.2834 pc 40172
	sw	%x25, 0(%x24)  #1336 pc 40176
	sw	%x18, 16(%x24)  #1336 pc 40180
	sw	%x21, 12(%x24)  #1336 pc 40184
	sw	%x12, 8(%x24)  #1336 pc 40188
	sw	%x16, 4(%x24)  #1336 pc 40192
	addi	%x12, %x3, 0  #1433 pc 40196
	addi	%x3, %x3, 8  #1433 pc 40200
	addi	%x18, %x0, 15340  #1433 iter_setup_dirvec_constants.2846 pc 40204
	sw	%x18, 0(%x12)  #1433 pc 40208
	sw	%x16, 4(%x12)  #1433 pc 40212
	addi	%x18, %x3, 0  #1450 pc 40216
	addi	%x3, %x3, 12  #1450 pc 40220
	addi	%x21, %x0, 15692  #1450 setup_dirvec_constants.2849 pc 40224
	sw	%x21, 0(%x18)  #1450 pc 40228
	sw	%x15, 8(%x18)  #1450 pc 40232
	sw	%x12, 4(%x18)  #1450 pc 40236
	addi	%x12, %x3, 0  #1458 pc 40240
	addi	%x3, %x3, 8  #1458 pc 40244
	addi	%x21, %x0, 15720  #1458 setup_startp_constants.2851 pc 40248
	sw	%x21, 0(%x12)  #1458 pc 40252
	sw	%x16, 4(%x12)  #1458 pc 40256
	addi	%x21, %x3, 0  #1477 pc 40260
	addi	%x3, %x3, 16  #1477 pc 40264
	addi	%x25, %x0, 16236  #1477 setup_startp.2854 pc 40268
	sw	%x25, 0(%x21)  #1477 pc 40272
	lw	%x25, 92(%x2)  #1477 pc 40276
	sw	%x25, 12(%x21)  #1477 pc 40280
	sw	%x12, 8(%x21)  #1477 pc 40284
	sw	%x15, 4(%x21)  #1477 pc 40288
	addi	%x12, %x3, 0  #1527 pc 40292
	addi	%x3, %x3, 8  #1527 pc 40296
	addi	%x26, %x0, 17300  #1527 check_all_inside.2876 pc 40300
	sw	%x26, 0(%x12)  #1527 pc 40304
	sw	%x16, 4(%x12)  #1527 pc 40308
	addi	%x26, %x3, 0  #1547 pc 40312
	addi	%x3, %x3, 32  #1547 pc 40316
	addi	%x27, %x0, 17468  #1547 shadow_check_and_group.2882 pc 40320
	sw	%x27, 0(%x26)  #1547 pc 40324
	sw	%x23, 28(%x26)  #1547 pc 40328
	sw	%x17, 24(%x26)  #1547 pc 40332
	sw	%x16, 20(%x26)  #1547 pc 40336
	lw	%x27, 128(%x2)  #1547 pc 40340
	sw	%x27, 16(%x26)  #1547 pc 40344
	sw	%x13, 12(%x26)  #1547 pc 40348
	lw	%x28, 52(%x2)  #1547 pc 40352
	sw	%x28, 8(%x26)  #1547 pc 40356
	sw	%x12, 4(%x26)  #1547 pc 40360
	addi	%x29, %x3, 0  #1577 pc 40364
	addi	%x3, %x3, 12  #1577 pc 40368
	addi	%x30, %x0, 17960  #1577 shadow_check_one_or_group.2885 pc 40372
	sw	%x30, 0(%x29)  #1577 pc 40376
	sw	%x26, 8(%x29)  #1577 pc 40380
	sw	%x19, 4(%x29)  #1577 pc 40384
	addi	%x26, %x3, 0  #1592 pc 40388
	addi	%x3, %x3, 24  #1592 pc 40392
	addi	%x30, %x0, 18124  #1592 shadow_check_one_or_matrix.2888 pc 40396
	sw	%x30, 0(%x26)  #1592 pc 40400
	sw	%x23, 20(%x26)  #1592 pc 40404
	sw	%x17, 16(%x26)  #1592 pc 40408
	sw	%x29, 12(%x26)  #1592 pc 40412
	sw	%x27, 8(%x26)  #1592 pc 40416
	sw	%x28, 4(%x26)  #1592 pc 40420
	addi	%x23, %x3, 0  #1628 pc 40424
	addi	%x3, %x3, 40  #1628 pc 40428
	addi	%x29, %x0, 18552  #1628 solve_each_element.2891 pc 40432
	sw	%x29, 0(%x23)  #1628 pc 40436
	lw	%x29, 48(%x2)  #1628 pc 40440
	sw	%x29, 36(%x23)  #1628 pc 40444
	lw	%x30, 88(%x2)  #1628 pc 40448
	sw	%x30, 32(%x23)  #1628 pc 40452
	sw	%x17, 28(%x23)  #1628 pc 40456
	sw	%x22, 24(%x23)  #1628 pc 40460
	sw	%x16, 20(%x23)  #1628 pc 40464
	lw	%x27, 44(%x2)  #1628 pc 40468
	sw	%x27, 16(%x23)  #1628 pc 40472
	sw	%x28, 12(%x23)  #1628 pc 40476
	sw	%x20, 140(%x2)  #1628 pc 40480
	lw	%x20, 56(%x2)  #1628 pc 40484
	sw	%x20, 8(%x23)  #1628 pc 40488
	sw	%x12, 4(%x23)  #1628 pc 40492
	sw	%x18, 144(%x2)  #1669 pc 40496
	addi	%x18, %x3, 0  #1669 pc 40500
	addi	%x3, %x3, 12  #1669 pc 40504
	addi	%x15, %x0, 19196  #1669 solve_one_or_network.2895 pc 40508
	sw	%x15, 0(%x18)  #1669 pc 40512
	sw	%x23, 8(%x18)  #1669 pc 40516
	sw	%x19, 4(%x18)  #1669 pc 40520
	addi	%x15, %x3, 0  #1679 pc 40524
	addi	%x3, %x3, 24  #1679 pc 40528
	addi	%x23, %x0, 19340  #1679 trace_or_matrix.2899 pc 40532
	sw	%x23, 0(%x15)  #1679 pc 40536
	sw	%x29, 20(%x15)  #1679 pc 40540
	sw	%x30, 16(%x15)  #1679 pc 40544
	sw	%x17, 12(%x15)  #1679 pc 40548
	sw	%x22, 8(%x15)  #1679 pc 40552
	sw	%x18, 4(%x15)  #1679 pc 40556
	addi	%x18, %x3, 0  #1706 pc 40560
	addi	%x3, %x3, 16  #1706 pc 40564
	addi	%x22, %x0, 19684  #1706 judge_intersection.2903 pc 40568
	sw	%x22, 0(%x18)  #1706 pc 40572
	sw	%x15, 12(%x18)  #1706 pc 40576
	sw	%x29, 8(%x18)  #1706 pc 40580
	sw	%x7, 4(%x18)  #1706 pc 40584
	addi	%x15, %x3, 0  #1721 pc 40588
	addi	%x3, %x3, 40  #1721 pc 40592
	addi	%x22, %x0, 19832  #1721 solve_each_element_fast.2905 pc 40596
	sw	%x22, 0(%x15)  #1721 pc 40600
	sw	%x29, 36(%x15)  #1721 pc 40604
	sw	%x25, 32(%x15)  #1721 pc 40608
	sw	%x24, 28(%x15)  #1721 pc 40612
	sw	%x17, 24(%x15)  #1721 pc 40616
	sw	%x16, 20(%x15)  #1721 pc 40620
	sw	%x27, 16(%x15)  #1721 pc 40624
	sw	%x28, 12(%x15)  #1721 pc 40628
	sw	%x20, 8(%x15)  #1721 pc 40632
	sw	%x12, 4(%x15)  #1721 pc 40636
	addi	%x12, %x3, 0  #1762 pc 40640
	addi	%x3, %x3, 12  #1762 pc 40644
	addi	%x22, %x0, 20508  #1762 solve_one_or_network_fast.2909 pc 40648
	sw	%x22, 0(%x12)  #1762 pc 40652
	sw	%x15, 8(%x12)  #1762 pc 40656
	sw	%x19, 4(%x12)  #1762 pc 40660
	addi	%x15, %x3, 0  #1772 pc 40664
	addi	%x3, %x3, 20  #1772 pc 40668
	addi	%x19, %x0, 20652  #1772 trace_or_matrix_fast.2913 pc 40672
	sw	%x19, 0(%x15)  #1772 pc 40676
	sw	%x29, 16(%x15)  #1772 pc 40680
	sw	%x24, 12(%x15)  #1772 pc 40684
	sw	%x17, 8(%x15)  #1772 pc 40688
	sw	%x12, 4(%x15)  #1772 pc 40692
	addi	%x12, %x3, 0  #1796 pc 40696
	addi	%x3, %x3, 16  #1796 pc 40700
	addi	%x17, %x0, 20988  #1796 judge_intersection_fast.2917 pc 40704
	sw	%x17, 0(%x12)  #1796 pc 40708
	sw	%x15, 12(%x12)  #1796 pc 40712
	sw	%x29, 8(%x12)  #1796 pc 40716
	sw	%x7, 4(%x12)  #1796 pc 40720
	addi	%x15, %x3, 0  #1817 pc 40724
	addi	%x3, %x3, 12  #1817 pc 40728
	addi	%x17, %x0, 21136  #1817 get_nvector_rect.2919 pc 40732
	sw	%x17, 0(%x15)  #1817 pc 40736
	lw	%x17, 60(%x2)  #1817 pc 40740
	sw	%x17, 8(%x15)  #1817 pc 40744
	sw	%x27, 4(%x15)  #1817 pc 40748
	addi	%x19, %x3, 0  #1825 pc 40752
	addi	%x3, %x3, 8  #1825 pc 40756
	addi	%x22, %x0, 21284  #1825 get_nvector_plane.2921 pc 40760
	sw	%x22, 0(%x19)  #1825 pc 40764
	sw	%x17, 4(%x19)  #1825 pc 40768
	addi	%x22, %x3, 0  #1833 pc 40772
	addi	%x3, %x3, 12  #1833 pc 40776
	addi	%x23, %x0, 21464  #1833 get_nvector_second.2923 pc 40780
	sw	%x23, 0(%x22)  #1833 pc 40784
	sw	%x17, 8(%x22)  #1833 pc 40788
	sw	%x28, 4(%x22)  #1833 pc 40792
	addi	%x23, %x3, 0  #1855 pc 40796
	addi	%x3, %x3, 16  #1855 pc 40800
	addi	%x24, %x0, 22192  #1855 get_nvector.2925 pc 40804
	sw	%x24, 0(%x23)  #1855 pc 40808
	sw	%x22, 12(%x23)  #1855 pc 40812
	sw	%x15, 8(%x23)  #1855 pc 40816
	sw	%x19, 4(%x23)  #1855 pc 40820
	addi	%x15, %x3, 0  #1871 pc 40824
	addi	%x3, %x3, 8  #1871 pc 40828
	addi	%x19, %x0, 22336  #1871 utexture.2928 pc 40832
	sw	%x19, 0(%x15)  #1871 pc 40836
	lw	%x19, 64(%x2)  #1871 pc 40840
	sw	%x19, 4(%x15)  #1871 pc 40844
	addi	%x22, %x3, 0  #1949 pc 40848
	addi	%x3, %x3, 12  #1949 pc 40852
	addi	%x24, %x0, 24144  #1949 add_light.2931 pc 40856
	sw	%x24, 0(%x22)  #1949 pc 40860
	sw	%x19, 8(%x22)  #1949 pc 40864
	lw	%x24, 72(%x2)  #1949 pc 40868
	sw	%x24, 4(%x22)  #1949 pc 40872
	addi	%x25, %x3, 0  #1966 pc 40876
	addi	%x3, %x3, 36  #1966 pc 40880
	addi	%x10, %x0, 24388  #1966 trace_reflections.2935 pc 40884
	sw	%x10, 0(%x25)  #1966 pc 40888
	sw	%x26, 32(%x25)  #1966 pc 40892
	lw	%x10, 136(%x2)  #1966 pc 40896
	sw	%x10, 28(%x25)  #1966 pc 40900
	sw	%x7, 24(%x25)  #1966 pc 40904
	sw	%x17, 20(%x25)  #1966 pc 40908
	sw	%x12, 16(%x25)  #1966 pc 40912
	sw	%x27, 12(%x25)  #1966 pc 40916
	sw	%x20, 8(%x25)  #1966 pc 40920
	sw	%x22, 4(%x25)  #1966 pc 40924
	addi	%x10, %x3, 0  #1995 pc 40928
	addi	%x3, %x3, 84  #1995 pc 40932
	addi	%x9, %x0, 24976  #1995 trace_ray.2940 pc 40936
	sw	%x9, 0(%x10)  #1995 pc 40940
	sw	%x15, 80(%x10)  #1995 pc 40944
	sw	%x25, 76(%x10)  #1995 pc 40948
	sw	%x29, 72(%x10)  #1995 pc 40952
	sw	%x19, 68(%x10)  #1995 pc 40956
	sw	%x30, 64(%x10)  #1995 pc 40960
	sw	%x26, 60(%x10)  #1995 pc 40964
	sw	%x21, 56(%x10)  #1995 pc 40968
	sw	%x24, 52(%x10)  #1995 pc 40972
	sw	%x7, 48(%x10)  #1995 pc 40976
	sw	%x16, 44(%x10)  #1995 pc 40980
	sw	%x17, 40(%x10)  #1995 pc 40984
	sw	%x6, 36(%x10)  #1995 pc 40988
	sw	%x13, 32(%x10)  #1995 pc 40992
	sw	%x18, 28(%x10)  #1995 pc 40996
	sw	%x27, 24(%x10)  #1995 pc 41000
	sw	%x28, 20(%x10)  #1995 pc 41004
	sw	%x20, 16(%x10)  #1995 pc 41008
	sw	%x23, 12(%x10)  #1995 pc 41012
	sw	%x14, 8(%x10)  #1995 pc 41016
	sw	%x22, 4(%x10)  #1995 pc 41020
	addi	%x9, %x3, 0  #2088 pc 41024
	addi	%x3, %x3, 52  #2088 pc 41028
	addi	%x14, %x0, 26800  #2088 trace_diffuse_ray.2946 pc 41032
	sw	%x14, 0(%x9)  #2088 pc 41036
	sw	%x15, 48(%x9)  #2088 pc 41040
	sw	%x19, 44(%x9)  #2088 pc 41044
	sw	%x26, 40(%x9)  #2088 pc 41048
	sw	%x7, 36(%x9)  #2088 pc 41052
	sw	%x16, 32(%x9)  #2088 pc 41056
	sw	%x17, 28(%x9)  #2088 pc 41060
	sw	%x13, 24(%x9)  #2088 pc 41064
	sw	%x12, 20(%x9)  #2088 pc 41068
	sw	%x28, 16(%x9)  #2088 pc 41072
	sw	%x20, 12(%x9)  #2088 pc 41076
	sw	%x23, 8(%x9)  #2088 pc 41080
	lw	%x7, 68(%x2)  #2088 pc 41084
	sw	%x7, 4(%x9)  #2088 pc 41088
	addi	%x12, %x3, 0  #2107 pc 41092
	addi	%x3, %x3, 8  #2107 pc 41096
	addi	%x14, %x0, 27296  #2107 iter_trace_diffuse_rays.2949 pc 41100
	sw	%x14, 0(%x12)  #2107 pc 41104
	sw	%x9, 4(%x12)  #2107 pc 41108
	addi	%x9, %x3, 0  #2123 pc 41112
	addi	%x3, %x3, 12  #2123 pc 41116
	addi	%x14, %x0, 27616  #2123 trace_diffuse_rays.2954 pc 41120
	sw	%x14, 0(%x9)  #2123 pc 41124
	sw	%x21, 8(%x9)  #2123 pc 41128
	sw	%x12, 4(%x9)  #2123 pc 41132
	addi	%x12, %x3, 0  #2133 pc 41136
	addi	%x3, %x3, 12  #2133 pc 41140
	addi	%x14, %x0, 27704  #2133 trace_diffuse_ray_80percent.2958 pc 41144
	sw	%x14, 0(%x12)  #2133 pc 41148
	sw	%x9, 8(%x12)  #2133 pc 41152
	lw	%x14, 116(%x2)  #2133 pc 41156
	sw	%x14, 4(%x12)  #2133 pc 41160
	addi	%x15, %x3, 0  #2159 pc 41164
	addi	%x3, %x3, 16  #2159 pc 41168
	addi	%x17, %x0, 28100  #2159 calc_diffuse_using_1point.2962 pc 41172
	sw	%x17, 0(%x15)  #2159 pc 41176
	sw	%x12, 12(%x15)  #2159 pc 41180
	sw	%x24, 8(%x15)  #2159 pc 41184
	sw	%x7, 4(%x15)  #2159 pc 41188
	addi	%x12, %x3, 0  #2178 pc 41192
	addi	%x3, %x3, 12  #2178 pc 41196
	addi	%x17, %x0, 28436  #2178 calc_diffuse_using_5points.2965 pc 41200
	sw	%x17, 0(%x12)  #2178 pc 41204
	sw	%x24, 8(%x12)  #2178 pc 41208
	sw	%x7, 4(%x12)  #2178 pc 41212
	addi	%x17, %x3, 0  #2198 pc 41216
	addi	%x3, %x3, 8  #2198 pc 41220
	addi	%x18, %x0, 29024  #2198 do_without_neighbors.2971 pc 41224
	sw	%x18, 0(%x17)  #2198 pc 41228
	sw	%x15, 4(%x17)  #2198 pc 41232
	addi	%x15, %x3, 0  #2213 pc 41236
	addi	%x3, %x3, 8  #2213 pc 41240
	addi	%x18, %x0, 29244  #2213 neighbors_exist.2974 pc 41244
	sw	%x18, 0(%x15)  #2213 pc 41248
	lw	%x18, 76(%x2)  #2213 pc 41252
	sw	%x18, 4(%x15)  #2213 pc 41256
	addi	%x19, %x3, 0  #2250 pc 41260
	addi	%x3, %x3, 12  #2250 pc 41264
	addi	%x20, %x0, 29820  #2250 try_exploit_neighbors.2987 pc 41268
	sw	%x20, 0(%x19)  #2250 pc 41272
	sw	%x17, 8(%x19)  #2250 pc 41276
	sw	%x12, 4(%x19)  #2250 pc 41280
	addi	%x12, %x3, 0  #2277 pc 41284
	addi	%x3, %x3, 8  #2277 pc 41288
	addi	%x20, %x0, 30192  #2277 write_ppm_header.2994 pc 41292
	sw	%x20, 0(%x12)  #2277 pc 41296
	sw	%x18, 4(%x12)  #2277 pc 41300
	addi	%x20, %x3, 0  #2303 pc 41304
	addi	%x3, %x3, 8  #2303 pc 41308
	addi	%x21, %x0, 30588  #2303 write_rgb.3000 pc 41312
	sw	%x21, 0(%x20)  #2303 pc 41316
	sw	%x24, 4(%x20)  #2303 pc 41320
	addi	%x21, %x3, 0  #2326 pc 41324
	addi	%x3, %x3, 16  #2326 pc 41328
	addi	%x22, %x0, 30824  #2326 pretrace_diffuse_rays.3002 pc 41332
	sw	%x22, 0(%x21)  #2326 pc 41336
	sw	%x9, 12(%x21)  #2326 pc 41340
	sw	%x14, 8(%x21)  #2326 pc 41344
	sw	%x7, 4(%x21)  #2326 pc 41348
	addi	%x7, %x3, 0  #2356 pc 41352
	addi	%x3, %x3, 40  #2356 pc 41356
	addi	%x9, %x0, 31284  #2356 pretrace_pixels.3005 pc 41360
	sw	%x9, 0(%x7)  #2356 pc 41364
	sw	%x8, 36(%x7)  #2356 pc 41368
	sw	%x10, 32(%x7)  #2356 pc 41372
	sw	%x30, 28(%x7)  #2356 pc 41376
	sw	%x11, 24(%x7)  #2356 pc 41380
	lw	%x8, 84(%x2)  #2356 pc 41384
	sw	%x8, 20(%x7)  #2356 pc 41388
	sw	%x24, 16(%x7)  #2356 pc 41392
	lw	%x9, 108(%x2)  #2356 pc 41396
	sw	%x9, 12(%x7)  #2356 pc 41400
	sw	%x21, 8(%x7)  #2356 pc 41404
	lw	%x9, 80(%x2)  #2356 pc 41408
	sw	%x9, 4(%x7)  #2356 pc 41412
	addi	%x10, %x3, 0  #2381 pc 41416
	addi	%x3, %x3, 28  #2381 pc 41420
	addi	%x11, %x0, 31932  #2381 pretrace_line.3012 pc 41424
	sw	%x11, 0(%x10)  #2381 pc 41428
	lw	%x11, 104(%x2)  #2381 pc 41432
	sw	%x11, 24(%x10)  #2381 pc 41436
	lw	%x11, 100(%x2)  #2381 pc 41440
	sw	%x11, 20(%x10)  #2381 pc 41444
	sw	%x8, 16(%x10)  #2381 pc 41448
	sw	%x7, 12(%x10)  #2381 pc 41452
	sw	%x18, 8(%x10)  #2381 pc 41456
	sw	%x9, 4(%x10)  #2381 pc 41460
	addi	%x7, %x3, 0  #2397 pc 41464
	addi	%x3, %x3, 28  #2397 pc 41468
	addi	%x11, %x0, 32136  #2397 scan_pixel.3016 pc 41472
	sw	%x11, 0(%x7)  #2397 pc 41476
	sw	%x20, 24(%x7)  #2397 pc 41480
	sw	%x19, 20(%x7)  #2397 pc 41484
	sw	%x24, 16(%x7)  #2397 pc 41488
	sw	%x15, 12(%x7)  #2397 pc 41492
	sw	%x18, 8(%x7)  #2397 pc 41496
	sw	%x17, 4(%x7)  #2397 pc 41500
	addi	%x11, %x3, 0  #2417 pc 41504
	addi	%x3, %x3, 16  #2417 pc 41508
	addi	%x15, %x0, 32544  #2417 scan_line.3023 pc 41512
	sw	%x15, 0(%x11)  #2417 pc 41516
	sw	%x7, 12(%x11)  #2417 pc 41520
	sw	%x10, 8(%x11)  #2417 pc 41524
	sw	%x18, 4(%x11)  #2417 pc 41528
	addi	%x7, %x3, 0  #2469 pc 41532
	addi	%x3, %x3, 8  #2469 pc 41536
	addi	%x15, %x0, 33448  #2469 create_pixelline.3037 pc 41540
	sw	%x15, 0(%x7)  #2469 pc 41544
	sw	%x18, 4(%x7)  #2469 pc 41548
	addi	%x15, %x3, 0  #2497 pc 41552
	addi	%x3, %x3, 8  #2497 pc 41556
	addi	%x17, %x0, 33704  #2497 calc_dirvec.3044 pc 41560
	sw	%x17, 0(%x15)  #2497 pc 41564
	sw	%x14, 4(%x15)  #2497 pc 41568
	addi	%x17, %x3, 0  #2518 pc 41572
	addi	%x3, %x3, 8  #2518 pc 41576
	addi	%x19, %x0, 34752  #2518 calc_dirvecs.3052 pc 41580
	sw	%x19, 0(%x17)  #2518 pc 41584
	sw	%x15, 4(%x17)  #2518 pc 41588
	addi	%x15, %x3, 0  #2532 pc 41592
	addi	%x3, %x3, 8  #2532 pc 41596
	addi	%x19, %x0, 35064  #2532 calc_dirvec_rows.3057 pc 41600
	sw	%x19, 0(%x15)  #2532 pc 41604
	sw	%x17, 4(%x15)  #2532 pc 41608
	addi	%x17, %x3, 0  #2545 pc 41612
	addi	%x3, %x3, 8  #2545 pc 41616
	addi	%x19, %x0, 35260  #2545 create_dirvec.3061 pc 41620
	sw	%x19, 0(%x17)  #2545 pc 41624
	lw	%x19, 0(%x2)  #2545 pc 41628
	sw	%x19, 4(%x17)  #2545 pc 41632
	addi	%x20, %x3, 0  #2551 pc 41636
	addi	%x3, %x3, 8  #2551 pc 41640
	addi	%x21, %x0, 35368  #2551 create_dirvec_elements.3063 pc 41644
	sw	%x21, 0(%x20)  #2551 pc 41648
	sw	%x17, 4(%x20)  #2551 pc 41652
	addi	%x21, %x3, 0  #2558 pc 41656
	addi	%x3, %x3, 16  #2558 pc 41660
	addi	%x22, %x0, 35476  #2558 create_dirvecs.3066 pc 41664
	sw	%x22, 0(%x21)  #2558 pc 41668
	sw	%x14, 12(%x21)  #2558 pc 41672
	sw	%x20, 8(%x21)  #2558 pc 41676
	sw	%x17, 4(%x21)  #2558 pc 41680
	addi	%x20, %x3, 0  #2570 pc 41684
	addi	%x3, %x3, 8  #2570 pc 41688
	addi	%x22, %x0, 35680  #2570 init_dirvec_constants.3068 pc 41692
	sw	%x22, 0(%x20)  #2570 pc 41696
	lw	%x22, 144(%x2)  #2570 pc 41700
	sw	%x22, 4(%x20)  #2570 pc 41704
	addi	%x23, %x3, 0  #2577 pc 41708
	addi	%x3, %x3, 12  #2577 pc 41712
	addi	%x24, %x0, 35788  #2577 init_vecset_constants.3071 pc 41716
	sw	%x24, 0(%x23)  #2577 pc 41720
	sw	%x20, 8(%x23)  #2577 pc 41724
	sw	%x14, 4(%x23)  #2577 pc 41728
	addi	%x14, %x3, 0  #2584 pc 41732
	addi	%x3, %x3, 16  #2584 pc 41736
	addi	%x20, %x0, 35900  #2584 init_dirvecs.3073 pc 41740
	sw	%x20, 0(%x14)  #2584 pc 41744
	sw	%x23, 12(%x14)  #2584 pc 41748
	sw	%x21, 8(%x14)  #2584 pc 41752
	sw	%x15, 4(%x14)  #2584 pc 41756
	addi	%x15, %x3, 0  #2595 pc 41760
	addi	%x3, %x3, 16  #2595 pc 41764
	addi	%x20, %x0, 36016  #2595 add_reflection.3075 pc 41768
	sw	%x20, 0(%x15)  #2595 pc 41772
	sw	%x22, 12(%x15)  #2595 pc 41776
	lw	%x20, 136(%x2)  #2595 pc 41780
	sw	%x20, 8(%x15)  #2595 pc 41784
	sw	%x17, 4(%x15)  #2595 pc 41788
	addi	%x17, %x3, 0  #2604 pc 41792
	addi	%x3, %x3, 16  #2604 pc 41796
	addi	%x20, %x0, 36232  #2604 setup_rect_reflection.3082 pc 41800
	sw	%x20, 0(%x17)  #2604 pc 41804
	sw	%x6, 12(%x17)  #2604 pc 41808
	sw	%x13, 8(%x17)  #2604 pc 41812
	sw	%x15, 4(%x17)  #2604 pc 41816
	addi	%x20, %x3, 0  #2618 pc 41820
	addi	%x3, %x3, 16  #2618 pc 41824
	addi	%x21, %x0, 36692  #2618 setup_surface_reflection.3085 pc 41828
	sw	%x21, 0(%x20)  #2618 pc 41832
	sw	%x6, 12(%x20)  #2618 pc 41836
	sw	%x13, 8(%x20)  #2618 pc 41840
	sw	%x15, 4(%x20)  #2618 pc 41844
	addi	%x6, %x3, 0  #2633 pc 41848
	addi	%x3, %x3, 16  #2633 pc 41852
	addi	%x15, %x0, 37140  #2633 setup_reflections.3088 pc 41856
	sw	%x15, 0(%x6)  #2633 pc 41860
	sw	%x20, 12(%x6)  #2633 pc 41864
	sw	%x17, 8(%x6)  #2633 pc 41868
	sw	%x16, 4(%x6)  #2633 pc 41872
	addi	%x29, %x3, 0  #2655 pc 41876
	addi	%x3, %x3, 60  #2655 pc 41880
	addi	%x15, %x0, 37428  #2655 rt.3090 pc 41884
	sw	%x15, 0(%x29)  #2655 pc 41888
	sw	%x12, 56(%x29)  #2655 pc 41892
	sw	%x6, 52(%x29)  #2655 pc 41896
	sw	%x22, 48(%x29)  #2655 pc 41900
	sw	%x8, 44(%x29)  #2655 pc 41904
	sw	%x11, 40(%x29)  #2655 pc 41908
	lw	%x6, 140(%x2)  #2655 pc 41912
	sw	%x6, 36(%x29)  #2655 pc 41916
	sw	%x10, 32(%x29)  #2655 pc 41920
	sw	%x19, 28(%x29)  #2655 pc 41924
	lw	%x6, 128(%x2)  #2655 pc 41928
	sw	%x6, 24(%x29)  #2655 pc 41932
	sw	%x13, 20(%x29)  #2655 pc 41936
	sw	%x14, 16(%x29)  #2655 pc 41940
	sw	%x18, 12(%x29)  #2655 pc 41944
	sw	%x9, 8(%x29)  #2655 pc 41948
	sw	%x7, 4(%x29)  #2655 pc 41952
	addi	%x6, %x0, 8 #64でok #256  #0 pc 41956
	addi	%x8, %x0, 3  #0 pc 41960
	addi	%x7, %x6, 0  #0 pc 41964
	sw	%x1, 148(%x2)  #2676 pc 41968
	lw	%x30, 0(%x29)  #2676 pc 41972
	addi	%x2, %x2, 152  #2676 pc 41976
*	jalr	%x1, %x30, 0  #2676 pc 41980
	addi	%x2, %x2, -152  #2676 pc 41984
	lw	%x1, 148(%x2)  #2676 pc 41988