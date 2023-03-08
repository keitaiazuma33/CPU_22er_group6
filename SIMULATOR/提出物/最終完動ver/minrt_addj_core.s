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
	nop
	j min_caml_start
fiszero.2509:  #pc 8
	fmv	%f1, l.6244  #0 pc 8
	feq	%f31, %f0, %f1  #1 pc 12
	ftoi	%x31, %f31  #1 pc 16
	blt	%x0, %x31, 12  #1 pc 20
	j	fbe_else.9115 #pc 24
	nop #pc 28
	addi	%x6, %x0, 1  #0 pc 32
	ret #pc 36
	nop #pc 40
fbe_else.9115: #pc 44
	addi	%x6, %x0, 0  #0 pc 44
	ret #pc 48
	nop #pc 52
fispos.2511:  #pc 56
	fmv	%f1, l.6244  #0 pc 56
	fle	%f31, %f0, %f1  #3 pc 60
	ftoi	%x31, %f31  #3 pc 64
	blt	%x0, %x31, 12  #3 pc 68
	j	fble_else.9116 #pc 72
	nop #pc 76
	addi	%x6, %x0, 0  #0 pc 80
	ret #pc 84
	nop #pc 88
fble_else.9116: #pc 92
	addi	%x6, %x0, 1  #0 pc 92
	ret #pc 96
	nop #pc 100
fisneg.2513:  #pc 104
	fmv	%f1, l.6244  #0 pc 104
	fle	%f31, %f1, %f0  #5 pc 108
	ftoi	%x31, %f31  #5 pc 112
	blt	%x0, %x31, 12  #5 pc 116
	j	fble_else.9117 #pc 120
	nop #pc 124
	addi	%x6, %x0, 0  #0 pc 128
	ret #pc 132
	nop #pc 136
fble_else.9117: #pc 140
	addi	%x6, %x0, 1  #0 pc 140
	ret #pc 144
	nop #pc 148
fneg.2515:  #pc 152
	fsub	%f0, %f30, %f0  #7 pc 152
	ret #pc 156
	nop #pc 160
fsqr.2517:  #pc 164
	fmul	%f0, %f0, %f0  #9 pc 164
	ret #pc 168
	nop #pc 172
fhalf.2519:  #pc 176
	fmv	%f1, l.6248  #0 pc 176
	fmul	%f0, %f1, %f0  #11 pc 180
	ret #pc 184
	nop #pc 188
fless.2521:  #pc 192
	fle	%f31, %f1, %f0  #13 pc 192
	ftoi	%x31, %f31  #13 pc 196
	blt	%x0, %x31, 12  #13 pc 200
	j	fble_else.9118 #pc 204
	nop #pc 208
	addi	%x6, %x0, 0  #0 pc 212
	ret #pc 216
	nop #pc 220
fble_else.9118: #pc 224
	addi	%x6, %x0, 1  #0 pc 224
	ret #pc 228
	nop #pc 232
sin_sub.2524:  #pc 236
	fmul	%f1, %f0, %f0  #16 pc 236
	fmul	%f2, %f0, %f1  #17 pc 240
	fmul	%f3, %f2, %f1  #18 pc 244
	fmul	%f1, %f3, %f1  #19 pc 248
	fmv	%f4, l.6250  #0 pc 252
	fmul	%f2, %f4, %f2  #20 pc 256
	fsub	%f0, %f0, %f2  #20 pc 260
	fmv	%f2, l.6252  #0 pc 264
	fmul	%f2, %f2, %f3  #20 pc 268
	fadd	%f0, %f0, %f2  #20 pc 272
	fmv	%f2, l.6254  #0 pc 276
	fmul	%f1, %f2, %f1  #20 pc 280
	fsub	%f0, %f0, %f1  #20 pc 284
	ret #pc 288
	nop #pc 292
sin.2526:  #pc 296
	fmv	%f1, l.6256  #0 pc 296
	fle	%f31, %f0, %f1  #24 pc 300
	ftoi	%x31, %f31  #24 pc 304
	blt	%x0, %x31, 12  #24 pc 308
	j	fble_else.9119 #pc 312
	nop #pc 316
	fmv	%f1, l.6259  #0 pc 320
	fle	%f31, %f0, %f1  #27 pc 324
	ftoi	%x31, %f31  #27 pc 328
	blt	%x0, %x31, 12  #27 pc 332
	j	fble_else.9120 #pc 336
	nop #pc 340
	fmv	%f1, l.6244  #0 pc 344
	fle	%f31, %f1, %f0  #30 pc 348
	ftoi	%x31, %f31  #30 pc 352
	blt	%x0, %x31, 12  #30 pc 356
	j	fble_else.9121 #pc 360
	nop #pc 364
	j	sin_sub.2524  #33 pc 368
	nop #pc 372
fble_else.9121: #pc 376
	fsub	%f0, %f30, %f0  #31 pc 376
	sw	%x1, 0(%x2)  #31 pc 380
	addi	%x2, %x2, 4  #31 pc 384
	jal	%x1, sin.2526  #31 pc 388
	addi	%x2, %x2, -4  #31 pc 392
	lw	%x1, 0(%x2) #31 pc 396
	fsub	%f0, %f30, %f0  #31 pc 400
	ret #pc 404
	nop #pc 408
fble_else.9120: #pc 412
	fmv	%f1, l.6259  #0 pc 412
	fsub	%f0, %f0, %f1  #28 pc 416
	sw	%x1, 0(%x2)  #28 pc 420
	addi	%x2, %x2, 4  #28 pc 424
	jal	%x1, sin_sub.2524  #28 pc 428
	addi	%x2, %x2, -4  #28 pc 432
	lw	%x1, 0(%x2) #28 pc 436
	fsub	%f0, %f30, %f0  #28 pc 440
	ret #pc 444
	nop #pc 448
fble_else.9119: #pc 452
	fmv	%f1, l.6256  #0 pc 452
	fsub	%f0, %f0, %f1  #25 pc 456
	j	sin.2526  #25 pc 460
	nop #pc 464
cos_sub.2528:  #pc 468
	fmul	%f0, %f0, %f0  #37 pc 468
	fmul	%f1, %f0, %f0  #38 pc 472
	fmul	%f2, %f1, %f0  #39 pc 476
	fmv	%f3, l.6263  #0 pc 480
	fmv	%f4, l.6248  #0 pc 484
	fmul	%f0, %f4, %f0  #40 pc 488
	fsub	%f0, %f3, %f0  #40 pc 492
	fmv	%f3, l.6266  #0 pc 496
	fmul	%f1, %f3, %f1  #40 pc 500
	fadd	%f0, %f0, %f1  #40 pc 504
	fmv	%f1, l.6268  #0 pc 508
	fmul	%f1, %f1, %f2  #40 pc 512
	fsub	%f0, %f0, %f1  #40 pc 516
	ret #pc 520
	nop #pc 524
cos.2530:  #pc 528
	fmv	%f1, l.6256  #0 pc 528
	fle	%f31, %f0, %f1  #44 pc 532
	ftoi	%x31, %f31  #44 pc 536
	blt	%x0, %x31, 12  #44 pc 540
	j	fble_else.9122 #pc 544
	nop #pc 548
	fmv	%f1, l.6259  #0 pc 552
	fle	%f31, %f0, %f1  #47 pc 556
	ftoi	%x31, %f31  #47 pc 560
	blt	%x0, %x31, 12  #47 pc 564
	j	fble_else.9123 #pc 568
	nop #pc 572
	fmv	%f1, l.6244  #0 pc 576
	fle	%f31, %f1, %f0  #50 pc 580
	ftoi	%x31, %f31  #50 pc 584
	blt	%x0, %x31, 12  #50 pc 588
	j	fble_else.9124 #pc 592
	nop #pc 596
	j	cos_sub.2528  #53 pc 600
	nop #pc 604
fble_else.9124: #pc 608
	fsub	%f0, %f30, %f0  #51 pc 608
	j	cos.2530  #51 pc 612
	nop #pc 616
fble_else.9123: #pc 620
	fmv	%f1, l.6259  #0 pc 620
	fsub	%f0, %f0, %f1  #48 pc 624
	sw	%x1, 0(%x2)  #48 pc 628
	addi	%x2, %x2, 4  #48 pc 632
	jal	%x1, cos_sub.2528  #48 pc 636
	addi	%x2, %x2, -4  #48 pc 640
	lw	%x1, 0(%x2) #48 pc 644
	fsub	%f0, %f30, %f0  #48 pc 648
	ret #pc 652
	nop #pc 656
fble_else.9122: #pc 660
	fmv	%f1, l.6256  #0 pc 660
	fsub	%f0, %f0, %f1  #45 pc 664
	j	cos.2530  #45 pc 668
	nop #pc 672
atan.2532:  #pc 676
	fmul	%f1, %f0, %f0  #57 pc 676
	fmul	%f2, %f0, %f1  #58 pc 680
	fmul	%f3, %f2, %f1  #59 pc 684
	fmul	%f4, %f3, %f1  #60 pc 688
	fmul	%f5, %f4, %f1  #61 pc 692
	fmul	%f1, %f5, %f1  #62 pc 696
	fmv	%f6, l.6275  #0 pc 700
	fmul	%f2, %f6, %f2  #63 pc 704
	fsub	%f0, %f0, %f2  #63 pc 708
	fmv	%f2, l.6277  #0 pc 712
	fmul	%f2, %f2, %f3  #63 pc 716
	fadd	%f0, %f0, %f2  #63 pc 720
	fmv	%f2, l.6279  #0 pc 724
	fmul	%f2, %f2, %f4  #63 pc 728
	fsub	%f0, %f0, %f2  #63 pc 732
	fmv	%f2, l.6281  #0 pc 736
	fmul	%f2, %f2, %f5  #63 pc 740
	fadd	%f0, %f0, %f2  #63 pc 744
	fmv	%f2, l.6283  #0 pc 748
	fmul	%f1, %f2, %f1  #63 pc 752
	fsub	%f0, %f0, %f1  #63 pc 756
	ret #pc 760
	nop #pc 764
floor.2534:  #pc 768
	ftoi	%x6, %f0  #67 pc 768
	itof	%f1, %x6  #67 pc 772
	fle	%f31, %f1, %f0  #68 pc 776
	ftoi	%x31, %f31  #68 pc 780
	blt	%x0, %x31, 12  #68 pc 784
	j	fble_else.9125 #pc 788
	nop #pc 792
	fadd	%f0, %f1, %f30  #71 pc 796
	ret #pc 800
	nop #pc 804
fble_else.9125: #pc 808
	fmv	%f0, l.6263  #0 pc 808
	fsub	%f0, %f1, %f0  #69 pc 812
	ret #pc 816
	nop #pc 820
float_of_int.2538:  #pc 824
	itof	%f0, %x6  #77 pc 824
	ret #pc 828
	nop #pc 832
int_of_float.2540:  #pc 836
	ftoi	%x6, %f0  #80 pc 836
	ret #pc 840
	nop #pc 844
mul_abs.2542:  #pc 848
	addi	%x31, %x0, -1  #pc 848
	beq	%x8, %x31, 12  #84 pc 852
	j	be_else.9126 #pc 856
	nop #pc 860
	addi	%x6, %x9, 0  #85 pc 864
	ret #pc 868
	nop #pc 872
be_else.9126: #pc 876
	addi	%x10, %x0, 1  #0 pc 876
	sll	%x10, %x10, %x8  #87 pc 880
	and	%x10, %x7, %x10  #87 pc 884
	beq	%x10, %x0, 12  #87 pc 888
	j	be_else.9127 #pc 892
	nop #pc 896
	addi	%x8, %x8, -1  #88 pc 900
	j	mul_abs.2542  #88 pc 904
	nop #pc 908
be_else.9127: #pc 912
	addi	%x10, %x8, -1  #90 pc 912
	sll	%x8, %x6, %x8  #90 pc 916
	add	%x9, %x9, %x8  #90 pc 920
	addi	%x8, %x10, 0  #0 pc 924
	j	mul_abs.2542  #90 pc 928
	nop #pc 932
mul.2547:  #pc 936
	bge	%x6, %x0, 12  #94 pc 936
	j	bge_else.9128 #pc 940
	nop #pc 944
	addi	%x8, %x6, 0  #94 pc 948
	j	bge_cont.9129 #pc 952
	nop #pc 956
bge_else.9128: #pc 960
	sub	%x8, %x0, %x6  #94 pc 960
bge_cont.9129: #pc 964
	bge	%x7, %x0, 12  #95 pc 964
	j	bge_else.9130 #pc 968
	nop #pc 972
	addi	%x9, %x7, 0  #95 pc 976
	j	bge_cont.9131 #pc 980
	nop #pc 984
bge_else.9130: #pc 988
	sub	%x9, %x0, %x7  #95 pc 988
bge_cont.9131: #pc 992
	addi	%x10, %x0, 30  #0 pc 992
	addi	%x11, %x0, 0  #0 pc 996
	sw	%x7, 0(%x2)  #96 pc 1000
	sw	%x6, 4(%x2)  #96 pc 1004
	addi	%x7, %x9, 0  #0 pc 1008
	addi	%x6, %x8, 0  #0 pc 1012
	addi	%x9, %x11, 0  #0 pc 1016
	addi	%x8, %x10, 0  #0 pc 1020
	sw	%x1, 8(%x2)  #96 pc 1024
	addi	%x2, %x2, 12  #96 pc 1028
	jal	%x1, mul_abs.2542  #96 pc 1032
	addi	%x2, %x2, -12  #96 pc 1036
	lw	%x1, 8(%x2) #96 pc 1040
	lw	%x7, 4(%x2)  #97 pc 1044
	srli	%x7, %x7, 31  #97 pc 1048
	lw	%x8, 0(%x2)  #97 pc 1052
	srli	%x8, %x8, 31  #97 pc 1056
	beq	%x7, %x8, 12  #97 pc 1060
	j	be_else.9132 #pc 1064
	nop #pc 1068
	ret #pc 1072
	nop #pc 1076
be_else.9132: #pc 1080
	sub	%x6, %x0, %x6  #100 pc 1080
	ret #pc 1084
	nop #pc 1088
div_abs.2550:  #pc 1092
	addi	%x31, %x0, -1  #pc 1092
	beq	%x8, %x31, 12  #104 pc 1096
	j	be_else.9133 #pc 1100
	nop #pc 1104
	addi	%x6, %x9, 0  #105 pc 1108
	ret #pc 1112
	nop #pc 1116
be_else.9133: #pc 1120
	srl	%x10, %x6, %x8  #107 pc 1120
	bge	%x10, %x7, 12  #107 pc 1124
	j	ble_else.9134 #pc 1128
	nop #pc 1132
	sll	%x10, %x7, %x8  #108 pc 1136
	sub	%x6, %x6, %x10  #108 pc 1140
	addi	%x10, %x8, -1  #108 pc 1144
	addi	%x11, %x0, 1  #0 pc 1148
	sll	%x8, %x11, %x8  #108 pc 1152
	add	%x9, %x9, %x8  #108 pc 1156
	addi	%x8, %x10, 0  #0 pc 1160
	j	div_abs.2550  #108 pc 1164
	nop #pc 1168
ble_else.9134: #pc 1172
	addi	%x8, %x8, -1  #110 pc 1172
	j	div_abs.2550  #110 pc 1176
	nop #pc 1180
div.2555:  #pc 1184
	bge	%x6, %x0, 12  #114 pc 1184
	j	bge_else.9135 #pc 1188
	nop #pc 1192
	addi	%x8, %x6, 0  #114 pc 1196
	j	bge_cont.9136 #pc 1200
	nop #pc 1204
bge_else.9135: #pc 1208
	sub	%x8, %x0, %x6  #114 pc 1208
bge_cont.9136: #pc 1212
	bge	%x7, %x0, 12  #115 pc 1212
	j	bge_else.9137 #pc 1216
	nop #pc 1220
	addi	%x9, %x7, 0  #115 pc 1224
	j	bge_cont.9138 #pc 1228
	nop #pc 1232
bge_else.9137: #pc 1236
	sub	%x9, %x0, %x7  #115 pc 1236
bge_cont.9138: #pc 1240
	addi	%x10, %x0, 30  #0 pc 1240
	addi	%x11, %x0, 0  #0 pc 1244
	sw	%x7, 0(%x2)  #116 pc 1248
	sw	%x6, 4(%x2)  #116 pc 1252
	addi	%x7, %x9, 0  #0 pc 1256
	addi	%x6, %x8, 0  #0 pc 1260
	addi	%x9, %x11, 0  #0 pc 1264
	addi	%x8, %x10, 0  #0 pc 1268
	sw	%x1, 8(%x2)  #116 pc 1272
	addi	%x2, %x2, 12  #116 pc 1276
	jal	%x1, div_abs.2550  #116 pc 1280
	addi	%x2, %x2, -12  #116 pc 1284
	lw	%x1, 8(%x2) #116 pc 1288
	lw	%x7, 4(%x2)  #117 pc 1292
	srli	%x7, %x7, 31  #117 pc 1296
	lw	%x8, 0(%x2)  #117 pc 1300
	srli	%x8, %x8, 31  #117 pc 1304
	beq	%x7, %x8, 12  #117 pc 1308
	j	be_else.9139 #pc 1312
	nop #pc 1316
	ret #pc 1320
	nop #pc 1324
be_else.9139: #pc 1328
	sub	%x6, %x0, %x6  #120 pc 1328
	ret #pc 1332
	nop #pc 1336
print_char.2558:  #pc 1340
	sw	%x6, 0(%x5)  #123 pc 1340
	addi	%x5, %x5, 4  #123 pc 1344
	ret #pc 1348
	nop #pc 1352
print_int.2560:  #pc 1356
	bge	%x6, %x0, 12  #127 pc 1356
	j	bge_else.9141 #pc 1360
	nop #pc 1364
	addi	%x31, %x0, 10  #pc 1368
	bge	%x6, %x31, 12  #131 pc 1372
	j	bge_else.9142 #pc 1376
	nop #pc 1380
	addi	%x7, %x0, 10  #0 pc 1384
	sw	%x6, 0(%x2)  #134 pc 1388
	sw	%x1, 4(%x2)  #134 pc 1392
	addi	%x2, %x2, 8  #134 pc 1396
	jal	%x1, div.2555  #134 pc 1400
	addi	%x2, %x2, -8  #134 pc 1404
	lw	%x1, 4(%x2) #134 pc 1408
	sw	%x6, 4(%x2)  #135 pc 1412
	sw	%x1, 8(%x2)  #135 pc 1416
	addi	%x2, %x2, 12  #135 pc 1420
	jal	%x1, print_int.2560  #135 pc 1424
	addi	%x2, %x2, -12  #135 pc 1428
	lw	%x1, 8(%x2) #135 pc 1432
	addi	%x7, %x0, 10  #0 pc 1436
	lw	%x6, 4(%x2)  #136 pc 1440
	sw	%x1, 8(%x2)  #136 pc 1444
	addi	%x2, %x2, 12  #136 pc 1448
	jal	%x1, mul.2547  #136 pc 1452
	addi	%x2, %x2, -12  #136 pc 1456
	lw	%x1, 8(%x2) #136 pc 1460
	lw	%x7, 0(%x2)  #136 pc 1464
	sub	%x6, %x7, %x6  #136 pc 1468
	addi	%x6, %x6, 48  #136 pc 1472
	sw	%x6, 0(%x5)  #136 pc 1476
	addi	%x5, %x5, 4  #136 pc 1480
	ret #pc 1484
	nop #pc 1488
bge_else.9142: #pc 1492
	addi	%x6, %x6, 48  #132 pc 1492
	sw	%x6, 0(%x5)  #132 pc 1496
	addi	%x5, %x5, 4  #132 pc 1500
	ret #pc 1504
	nop #pc 1508
bge_else.9141: #pc 1512
	addi	%x7, %x0, 45  #0 pc 1512
	sw	%x7, 0(%x5)  #128 pc 1516
	addi	%x5, %x5, 4  #128 pc 1520
	sub	%x6, %x0, %x6  #129 pc 1524
	j	print_int.2560  #129 pc 1528
	nop #pc 1532
read_int.2562:  #pc 1536
	lw	%x6, 0(%x4)  #142 pc 1536
	addi	%x4, %x4, 4  #142 pc 1540
	ret #pc 1544
	nop #pc 1548
read_float.2564:  #pc 1552
	flw	%f0, 0(%x4)  #145 pc 1552
	addi	%x4, %x4, 4  #145 pc 1556
	ret #pc 1560
	nop #pc 1564
assign_array.2566:  #pc 1568
	bge	%x8, %x0, 12  #196 pc 1568
	j	bge_else.9145 #pc 1572
	nop #pc 1576
	beq	%x8, %x0, 12  #199 pc 1580
	j	be_else.9146 #pc 1584
	nop #pc 1588
	slli	%x8, %x8, 2  #200 pc 1592
	add	%x31, %x8, %x6  #200 pc 1596
	sw	%x7, 0(%x31)  #200 pc 1600
	ret #pc 1604
	nop #pc 1608
be_else.9146: #pc 1612
	slli	%x9, %x8, 2  #202 pc 1612
	add	%x31, %x9, %x6  #202 pc 1616
	sw	%x7, 0(%x31)  #202 pc 1620
	addi	%x8, %x8, -1  #203 pc 1624
	j	assign_array.2566  #203 pc 1628
	nop #pc 1632
bge_else.9145: #pc 1636
	ret #pc 1636
	nop #pc 1640
create_array.2570:  #pc 1644
	addi	%x8, %x3, 0  #207 pc 1644
	addi	%x9, %x8, 0  #208 pc 1648
	slli	%x10, %x6, 2  #209 pc 1652
	add	%x8, %x8, %x10  #209 pc 1656
	addi	%x3, %x8, 0  #209 pc 1660
	addi	%x8, %x6, -1  #210 pc 1664
	sw	%x9, 0(%x2)  #210 pc 1668
	addi	%x6, %x9, 0  #0 pc 1672
	sw	%x1, 4(%x2)  #210 pc 1676
	addi	%x2, %x2, 8  #210 pc 1680
	jal	%x1, assign_array.2566  #210 pc 1684
	addi	%x2, %x2, -8  #210 pc 1688
	lw	%x1, 4(%x2) #210 pc 1692
	lw	%x6, 0(%x2)  #211 pc 1696
	ret #pc 1700
	nop #pc 1704
assign_farray.2573:  #pc 1708
	bge	%x7, %x0, 12  #215 pc 1708
	j	bge_else.9149 #pc 1712
	nop #pc 1716
	beq	%x7, %x0, 12  #218 pc 1720
	j	be_else.9150 #pc 1724
	nop #pc 1728
	slli	%x7, %x7, 2  #219 pc 1732
	add	%x31, %x7, %x6  #219 pc 1736
	fsw	%f0, 0(%x31) #219 pc 1740
	ret #pc 1744
	nop #pc 1748
be_else.9150: #pc 1752
	slli	%x8, %x7, 2  #221 pc 1752
	add	%x31, %x8, %x6  #221 pc 1756
	fsw	%f0, 0(%x31) #221 pc 1760
	addi	%x7, %x7, -1  #222 pc 1764
	j	assign_farray.2573  #222 pc 1768
	nop #pc 1772
bge_else.9149: #pc 1776
	ret #pc 1776
	nop #pc 1780
create_float_array.2577:  #pc 1784
	addi	%x7, %x3, 0  #226 pc 1784
	addi	%x8, %x7, 0  #227 pc 1788
	slli	%x9, %x6, 2  #228 pc 1792
	add	%x7, %x7, %x9  #228 pc 1796
	addi	%x3, %x7, 0  #228 pc 1800
	addi	%x7, %x6, -1  #229 pc 1804
	sw	%x8, 0(%x2)  #229 pc 1808
	addi	%x6, %x8, 0  #0 pc 1812
	sw	%x1, 4(%x2)  #229 pc 1816
	addi	%x2, %x2, 8  #229 pc 1820
	jal	%x1, assign_farray.2573  #229 pc 1824
	addi	%x2, %x2, -8  #229 pc 1828
	lw	%x1, 4(%x2) #229 pc 1832
	lw	%x6, 0(%x2)  #230 pc 1836
	ret #pc 1840
	nop #pc 1844
xor.2610:  #pc 1848
	beq	%x6, %x0, 12  #368 pc 1848
	j	be_else.9153 #pc 1852
	nop #pc 1856
	addi	%x6, %x7, 0  #368 pc 1860
	ret #pc 1864
	nop #pc 1868
be_else.9153: #pc 1872
	beq	%x7, %x0, 12  #368 pc 1872
	j	be_else.9154 #pc 1876
	nop #pc 1880
	addi	%x6, %x0, 1  #0 pc 1884
	ret #pc 1888
	nop #pc 1892
be_else.9154: #pc 1896
	addi	%x6, %x0, 0  #0 pc 1896
	ret #pc 1900
	nop #pc 1904
sgn.2613:  #pc 1908
	fsw	%f0, 0(%x2)  #376 pc 1908
	sw	%x1, 8(%x2)  #376 pc 1912
	addi	%x2, %x2, 12  #376 pc 1916
	jal	%x1, fiszero.2509  #376 pc 1920
	addi	%x2, %x2, -12  #376 pc 1924
	lw	%x1, 8(%x2) #376 pc 1928
	beq	%x6, %x0, 12  #376 pc 1932
	j	be_else.9155 #pc 1936
	nop #pc 1940
	flw	%f0, 0(%x2)  #377 pc 1944
	sw	%x1, 8(%x2)  #377 pc 1948
	addi	%x2, %x2, 12  #377 pc 1952
	jal	%x1, fispos.2511  #377 pc 1956
	addi	%x2, %x2, -12  #377 pc 1960
	lw	%x1, 8(%x2) #377 pc 1964
	beq	%x6, %x0, 12  #377 pc 1968
	j	be_else.9156 #pc 1972
	nop #pc 1976
	fmv	%f0, l.6292  #0 pc 1980
	ret #pc 1984
	nop #pc 1988
be_else.9156: #pc 1992
	fmv	%f0, l.6263  #0 pc 1992
	ret #pc 1996
	nop #pc 2000
be_else.9155: #pc 2004
	fmv	%f0, l.6244  #0 pc 2004
	ret #pc 2008
	nop #pc 2012
fneg_cond.2615:  #pc 2016
	beq	%x6, %x0, 12  #383 pc 2016
	j	be_else.9157 #pc 2020
	nop #pc 2024
	j	fneg.2515  #383 pc 2028
	nop #pc 2032
be_else.9157: #pc 2036
	ret #pc 2036
	nop #pc 2040
add_mod5.2618:  #pc 2044
	add	%x6, %x6, %x7  #388 pc 2044
	addi	%x31, %x0, 5  #pc 2048
	bge	%x6, %x31, 12  #389 pc 2052
	j	bge_else.9158 #pc 2056
	nop #pc 2060
	addi	%x6, %x6, -5  #389 pc 2064
	ret #pc 2068
	nop #pc 2072
bge_else.9158: #pc 2076
	ret #pc 2076
	nop #pc 2080
vecset.2621:  #pc 2084
	fsw	%f0, 0(%x6)  #404 pc 2084
	fsw	%f1, 4(%x6)  #405 pc 2088
	fsw	%f2, 8(%x6)  #406 pc 2092
	ret #pc 2096
	nop #pc 2100
vecfill.2626:  #pc 2104
	fsw	%f0, 0(%x6)  #411 pc 2104
	fsw	%f0, 4(%x6)  #412 pc 2108
	fsw	%f0, 8(%x6)  #413 pc 2112
	ret #pc 2116
	nop #pc 2120
vecbzero.2629:  #pc 2124
	fmv	%f0, l.6244  #0 pc 2124
	j	vecfill.2626  #418 pc 2128
	nop #pc 2132
veccpy.2631:  #pc 2136
	flw	%f0, 0(%x7)  #423 pc 2136
	fsw	%f0, 0(%x6)  #423 pc 2140
	flw	%f0, 4(%x7)  #424 pc 2144
	fsw	%f0, 4(%x6)  #424 pc 2148
	flw	%f0, 8(%x7)  #425 pc 2152
	fsw	%f0, 8(%x6)  #425 pc 2156
	ret #pc 2160
	nop #pc 2164
vecunit_sgn.2634:  #pc 2168
	flw	%f0, 0(%x6)  #447 pc 2168
	sw	%x7, 0(%x2)  #447 pc 2172
	sw	%x6, 4(%x2)  #447 pc 2176
	sw	%x1, 8(%x2)  #447 pc 2180
	addi	%x2, %x2, 12  #447 pc 2184
	jal	%x1, fsqr.2517  #447 pc 2188
	addi	%x2, %x2, -12  #447 pc 2192
	lw	%x1, 8(%x2) #447 pc 2196
	lw	%x6, 4(%x2)  #447 pc 2200
	flw	%f1, 4(%x6)  #447 pc 2204
	fsw	%f0, 8(%x2)  #447 pc 2208
	fadd	%f0, %f1, %f30  #0 pc 2212
	sw	%x1, 16(%x2)  #447 pc 2216
	addi	%x2, %x2, 20  #447 pc 2220
	jal	%x1, fsqr.2517  #447 pc 2224
	addi	%x2, %x2, -20  #447 pc 2228
	lw	%x1, 16(%x2) #447 pc 2232
	flw	%f1, 8(%x2)  #447 pc 2236
	fadd	%f0, %f1, %f0  #447 pc 2240
	lw	%x6, 4(%x2)  #447 pc 2244
	flw	%f1, 8(%x6)  #447 pc 2248
	fsw	%f0, 16(%x2)  #447 pc 2252
	fadd	%f0, %f1, %f30  #0 pc 2256
	sw	%x1, 24(%x2)  #447 pc 2260
	addi	%x2, %x2, 28  #447 pc 2264
	jal	%x1, fsqr.2517  #447 pc 2268
	addi	%x2, %x2, -28  #447 pc 2272
	lw	%x1, 24(%x2) #447 pc 2276
	flw	%f1, 16(%x2)  #447 pc 2280
	fadd	%f0, %f1, %f0  #447 pc 2284
	fsqrt	%f0, %f0  #447 pc 2288
	fsw	%f0, 24(%x2)  #448 pc 2292
	sw	%x1, 32(%x2)  #448 pc 2296
	addi	%x2, %x2, 36  #448 pc 2300
	jal	%x1, fiszero.2509  #448 pc 2304
	addi	%x2, %x2, -36  #448 pc 2308
	lw	%x1, 32(%x2) #448 pc 2312
	beq	%x6, %x0, 12  #448 pc 2316
	j	be_else.9162 #pc 2320
	nop #pc 2324
	lw	%x6, 0(%x2)  #448 pc 2328
	beq	%x6, %x0, 12  #448 pc 2332
	j	be_else.9164 #pc 2336
	nop #pc 2340
	fmv	%f0, l.6263  #0 pc 2344
	flw	%f1, 24(%x2)  #448 pc 2348
	fdiv	%f0, %f0, %f1  #448 pc 2352
	j	be_cont.9165 #pc 2356
	nop #pc 2360
be_else.9164: #pc 2364
	fmv	%f0, l.6292  #0 pc 2364
	flw	%f1, 24(%x2)  #448 pc 2368
	fdiv	%f0, %f0, %f1  #448 pc 2372
be_cont.9165: #pc 2376
	j	be_cont.9163 #pc 2376
	nop #pc 2380
be_else.9162: #pc 2384
	fmv	%f0, l.6263  #0 pc 2384
be_cont.9163: #pc 2388
	lw	%x6, 4(%x2)  #449 pc 2388
	flw	%f1, 0(%x6)  #449 pc 2392
	fmul	%f1, %f1, %f0  #449 pc 2396
	fsw	%f1, 0(%x6)  #449 pc 2400
	flw	%f1, 4(%x6)  #450 pc 2404
	fmul	%f1, %f1, %f0  #450 pc 2408
	fsw	%f1, 4(%x6)  #450 pc 2412
	flw	%f1, 8(%x6)  #451 pc 2416
	fmul	%f0, %f1, %f0  #451 pc 2420
	fsw	%f0, 8(%x6)  #451 pc 2424
	ret #pc 2428
	nop #pc 2432
veciprod.2637:  #pc 2436
	flw	%f0, 0(%x6)  #456 pc 2436
	flw	%f1, 0(%x7)  #456 pc 2440
	fmul	%f0, %f0, %f1  #456 pc 2444
	flw	%f1, 4(%x6)  #456 pc 2448
	flw	%f2, 4(%x7)  #456 pc 2452
	fmul	%f1, %f1, %f2  #456 pc 2456
	fadd	%f0, %f0, %f1  #456 pc 2460
	flw	%f1, 8(%x6)  #456 pc 2464
	flw	%f2, 8(%x7)  #456 pc 2468
	fmul	%f1, %f1, %f2  #456 pc 2472
	fadd	%f0, %f0, %f1  #456 pc 2476
	ret #pc 2480
	nop #pc 2484
veciprod2.2640:  #pc 2488
	flw	%f3, 0(%x6)  #461 pc 2488
	fmul	%f0, %f3, %f0  #461 pc 2492
	flw	%f3, 4(%x6)  #461 pc 2496
	fmul	%f1, %f3, %f1  #461 pc 2500
	fadd	%f0, %f0, %f1  #461 pc 2504
	flw	%f1, 8(%x6)  #461 pc 2508
	fmul	%f1, %f1, %f2  #461 pc 2512
	fadd	%f0, %f0, %f1  #461 pc 2516
	ret #pc 2520
	nop #pc 2524
vecaccum.2645:  #pc 2528
	flw	%f1, 0(%x6)  #466 pc 2528
	flw	%f2, 0(%x7)  #466 pc 2532
	fmul	%f2, %f0, %f2  #466 pc 2536
	fadd	%f1, %f1, %f2  #466 pc 2540
	fsw	%f1, 0(%x6)  #466 pc 2544
	flw	%f1, 4(%x6)  #467 pc 2548
	flw	%f2, 4(%x7)  #467 pc 2552
	fmul	%f2, %f0, %f2  #467 pc 2556
	fadd	%f1, %f1, %f2  #467 pc 2560
	fsw	%f1, 4(%x6)  #467 pc 2564
	flw	%f1, 8(%x6)  #468 pc 2568
	flw	%f2, 8(%x7)  #468 pc 2572
	fmul	%f0, %f0, %f2  #468 pc 2576
	fadd	%f0, %f1, %f0  #468 pc 2580
	fsw	%f0, 8(%x6)  #468 pc 2584
	ret #pc 2588
	nop #pc 2592
vecadd.2649:  #pc 2596
	flw	%f0, 0(%x6)  #473 pc 2596
	flw	%f1, 0(%x7)  #473 pc 2600
	fadd	%f0, %f0, %f1  #473 pc 2604
	fsw	%f0, 0(%x6)  #473 pc 2608
	flw	%f0, 4(%x6)  #474 pc 2612
	flw	%f1, 4(%x7)  #474 pc 2616
	fadd	%f0, %f0, %f1  #474 pc 2620
	fsw	%f0, 4(%x6)  #474 pc 2624
	flw	%f0, 8(%x6)  #475 pc 2628
	flw	%f1, 8(%x7)  #475 pc 2632
	fadd	%f0, %f0, %f1  #475 pc 2636
	fsw	%f0, 8(%x6)  #475 pc 2640
	ret #pc 2644
	nop #pc 2648
vecscale.2652:  #pc 2652
	flw	%f1, 0(%x6)  #489 pc 2652
	fmul	%f1, %f1, %f0  #489 pc 2656
	fsw	%f1, 0(%x6)  #489 pc 2660
	flw	%f1, 4(%x6)  #490 pc 2664
	fmul	%f1, %f1, %f0  #490 pc 2668
	fsw	%f1, 4(%x6)  #490 pc 2672
	flw	%f1, 8(%x6)  #491 pc 2676
	fmul	%f0, %f1, %f0  #491 pc 2680
	fsw	%f0, 8(%x6)  #491 pc 2684
	ret #pc 2688
	nop #pc 2692
vecaccumv.2655:  #pc 2696
	flw	%f0, 0(%x6)  #496 pc 2696
	flw	%f1, 0(%x7)  #496 pc 2700
	flw	%f2, 0(%x8)  #496 pc 2704
	fmul	%f1, %f1, %f2  #496 pc 2708
	fadd	%f0, %f0, %f1  #496 pc 2712
	fsw	%f0, 0(%x6)  #496 pc 2716
	flw	%f0, 4(%x6)  #497 pc 2720
	flw	%f1, 4(%x7)  #497 pc 2724
	flw	%f2, 4(%x8)  #497 pc 2728
	fmul	%f1, %f1, %f2  #497 pc 2732
	fadd	%f0, %f0, %f1  #497 pc 2736
	fsw	%f0, 4(%x6)  #497 pc 2740
	flw	%f0, 8(%x6)  #498 pc 2744
	flw	%f1, 8(%x7)  #498 pc 2748
	flw	%f2, 8(%x8)  #498 pc 2752
	fmul	%f1, %f1, %f2  #498 pc 2756
	fadd	%f0, %f0, %f1  #498 pc 2760
	fsw	%f0, 8(%x6)  #498 pc 2764
	ret #pc 2768
	nop #pc 2772
o_texturetype.2659:  #pc 2776
	lw	%x6, 0(%x6)  #507 pc 2776
	ret #pc 2780
	nop #pc 2784
o_form.2661:  #pc 2788
	lw	%x6, 4(%x6)  #517 pc 2788
	ret #pc 2792
	nop #pc 2796
o_reflectiontype.2663:  #pc 2800
	lw	%x6, 8(%x6)  #527 pc 2800
	ret #pc 2804
	nop #pc 2808
o_isinvert.2665:  #pc 2812
	lw	%x6, 24(%x6)  #537 pc 2812
	ret #pc 2816
	nop #pc 2820
o_isrot.2667:  #pc 2824
	lw	%x6, 12(%x6)  #546 pc 2824
	ret #pc 2828
	nop #pc 2832
o_param_a.2669:  #pc 2836
	lw	%x6, 16(%x6)  #555 pc 2836
	flw	%f0, 0(%x6)  #560 pc 2840
	ret #pc 2844
	nop #pc 2848
o_param_b.2671:  #pc 2852
	lw	%x6, 16(%x6)  #565 pc 2852
	flw	%f0, 4(%x6)  #570 pc 2856
	ret #pc 2860
	nop #pc 2864
o_param_c.2673:  #pc 2868
	lw	%x6, 16(%x6)  #575 pc 2868
	flw	%f0, 8(%x6)  #580 pc 2872
	ret #pc 2876
	nop #pc 2880
o_param_abc.2675:  #pc 2884
	lw	%x6, 16(%x6)  #585 pc 2884
	ret #pc 2888
	nop #pc 2892
o_param_x.2677:  #pc 2896
	lw	%x6, 20(%x6)  #595 pc 2896
	flw	%f0, 0(%x6)  #600 pc 2900
	ret #pc 2904
	nop #pc 2908
o_param_y.2679:  #pc 2912
	lw	%x6, 20(%x6)  #605 pc 2912
	flw	%f0, 4(%x6)  #610 pc 2916
	ret #pc 2920
	nop #pc 2924
o_param_z.2681:  #pc 2928
	lw	%x6, 20(%x6)  #615 pc 2928
	flw	%f0, 8(%x6)  #620 pc 2932
	ret #pc 2936
	nop #pc 2940
o_diffuse.2683:  #pc 2944
	lw	%x6, 28(%x6)  #625 pc 2944
	flw	%f0, 0(%x6)  #630 pc 2948
	ret #pc 2952
	nop #pc 2956
o_hilight.2685:  #pc 2960
	lw	%x6, 28(%x6)  #635 pc 2960
	flw	%f0, 4(%x6)  #640 pc 2964
	ret #pc 2968
	nop #pc 2972
o_color_red.2687:  #pc 2976
	lw	%x6, 32(%x6)  #645 pc 2976
	flw	%f0, 0(%x6)  #650 pc 2980
	ret #pc 2984
	nop #pc 2988
o_color_green.2689:  #pc 2992
	lw	%x6, 32(%x6)  #655 pc 2992
	flw	%f0, 4(%x6)  #660 pc 2996
	ret #pc 3000
	nop #pc 3004
o_color_blue.2691:  #pc 3008
	lw	%x6, 32(%x6)  #665 pc 3008
	flw	%f0, 8(%x6)  #670 pc 3012
	ret #pc 3016
	nop #pc 3020
o_param_r1.2693:  #pc 3024
	lw	%x6, 36(%x6)  #675 pc 3024
	flw	%f0, 0(%x6)  #680 pc 3028
	ret #pc 3032
	nop #pc 3036
o_param_r2.2695:  #pc 3040
	lw	%x6, 36(%x6)  #685 pc 3040
	flw	%f0, 4(%x6)  #690 pc 3044
	ret #pc 3048
	nop #pc 3052
o_param_r3.2697:  #pc 3056
	lw	%x6, 36(%x6)  #695 pc 3056
	flw	%f0, 8(%x6)  #700 pc 3060
	ret #pc 3064
	nop #pc 3068
o_param_ctbl.2699:  #pc 3072
	lw	%x6, 40(%x6)  #712 pc 3072
	ret #pc 3076
	nop #pc 3080
p_rgb.2701:  #pc 3084
	lw	%x6, 0(%x6)  #726 pc 3084
	ret #pc 3088
	nop #pc 3092
p_intersection_points.2703:  #pc 3096
	lw	%x6, 4(%x6)  #733 pc 3096
	ret #pc 3100
	nop #pc 3104
p_surface_ids.2705:  #pc 3108
	lw	%x6, 8(%x6)  #741 pc 3108
	ret #pc 3112
	nop #pc 3116
p_calc_diffuse.2707:  #pc 3120
	lw	%x6, 12(%x6)  #748 pc 3120
	ret #pc 3124
	nop #pc 3128
p_energy.2709:  #pc 3132
	lw	%x6, 16(%x6)  #755 pc 3132
	ret #pc 3136
	nop #pc 3140
p_received_ray_20percent.2711:  #pc 3144
	lw	%x6, 20(%x6)  #762 pc 3144
	ret #pc 3148
	nop #pc 3152
p_group_id.2713:  #pc 3156
	lw	%x6, 24(%x6)  #778 pc 3156
	lw	%x6, 0(%x6)  #780 pc 3160
	ret #pc 3164
	nop #pc 3168
p_set_group_id.2715:  #pc 3172
	lw	%x6, 24(%x6)  #785 pc 3172
	sw	%x7, 0(%x6)  #787 pc 3176
	ret #pc 3180
	nop #pc 3184
p_nvectors.2718:  #pc 3188
	lw	%x6, 28(%x6)  #792 pc 3188
	ret #pc 3192
	nop #pc 3196
d_vec.2720:  #pc 3200
	lw	%x6, 0(%x6)  #803 pc 3200
	ret #pc 3204
	nop #pc 3208
d_const.2722:  #pc 3212
	lw	%x6, 4(%x6)  #809 pc 3212
	ret #pc 3216
	nop #pc 3220
r_surface_id.2724:  #pc 3224
	lw	%x6, 0(%x6)  #819 pc 3224
	ret #pc 3228
	nop #pc 3232
r_dvec.2726:  #pc 3236
	lw	%x6, 4(%x6)  #825 pc 3236
	ret #pc 3240
	nop #pc 3244
r_bright.2728:  #pc 3248
	flw	%f0, 8(%x6)  #831 pc 3248
	ret #pc 3252
	nop #pc 3256
rad.2730:  #pc 3260
	fmv	%f1, l.6380  #0 pc 3260
	fmul	%f0, %f0, %f1  #841 pc 3264
	ret #pc 3268
	nop #pc 3272
read_screen_settings.2732:  #pc 3276
	lw	%x6, 20(%x29)  #0 pc 3276
	lw	%x7, 16(%x29)  #0 pc 3280
	lw	%x8, 12(%x29)  #0 pc 3284
	lw	%x9, 8(%x29)  #0 pc 3288
	lw	%x10, 4(%x29)  #0 pc 3292
	sw	%x6, 0(%x2)  #848 pc 3296
	sw	%x8, 4(%x2)  #848 pc 3300
	sw	%x9, 8(%x2)  #848 pc 3304
	sw	%x7, 12(%x2)  #848 pc 3308
	sw	%x10, 16(%x2)  #848 pc 3312
	sw	%x1, 20(%x2)  #848 pc 3316
	addi	%x2, %x2, 24  #848 pc 3320
	jal	%x1, read_float.2564  #848 pc 3324
	addi	%x2, %x2, -24  #848 pc 3328
	lw	%x1, 20(%x2) #848 pc 3332
	lw	%x6, 16(%x2)  #848 pc 3336
	fsw	%f0, 0(%x6)  #848 pc 3340
	sw	%x1, 20(%x2)  #849 pc 3344
	addi	%x2, %x2, 24  #849 pc 3348
	jal	%x1, read_float.2564  #849 pc 3352
	addi	%x2, %x2, -24  #849 pc 3356
	lw	%x1, 20(%x2) #849 pc 3360
	lw	%x6, 16(%x2)  #849 pc 3364
	fsw	%f0, 4(%x6)  #849 pc 3368
	sw	%x1, 20(%x2)  #850 pc 3372
	addi	%x2, %x2, 24  #850 pc 3376
	jal	%x1, read_float.2564  #850 pc 3380
	addi	%x2, %x2, -24  #850 pc 3384
	lw	%x1, 20(%x2) #850 pc 3388
	lw	%x6, 16(%x2)  #850 pc 3392
	fsw	%f0, 8(%x6)  #850 pc 3396
	sw	%x1, 20(%x2)  #852 pc 3400
	addi	%x2, %x2, 24  #852 pc 3404
	jal	%x1, read_float.2564  #852 pc 3408
	addi	%x2, %x2, -24  #852 pc 3412
	lw	%x1, 20(%x2) #852 pc 3416
	sw	%x1, 20(%x2)  #852 pc 3420
	addi	%x2, %x2, 24  #852 pc 3424
	jal	%x1, rad.2730  #852 pc 3428
	addi	%x2, %x2, -24  #852 pc 3432
	lw	%x1, 20(%x2) #852 pc 3436
	fsw	%f0, 24(%x2)  #853 pc 3440
	sw	%x1, 32(%x2)  #853 pc 3444
	addi	%x2, %x2, 36  #853 pc 3448
	jal	%x1, cos.2530  #853 pc 3452
	addi	%x2, %x2, -36  #853 pc 3456
	lw	%x1, 32(%x2) #853 pc 3460
	flw	%f1, 24(%x2)  #854 pc 3464
	fsw	%f0, 32(%x2)  #854 pc 3468
	fadd	%f0, %f1, %f30  #0 pc 3472
	sw	%x1, 40(%x2)  #854 pc 3476
	addi	%x2, %x2, 44  #854 pc 3480
	jal	%x1, sin.2526  #854 pc 3484
	addi	%x2, %x2, -44  #854 pc 3488
	lw	%x1, 40(%x2) #854 pc 3492
	fsw	%f0, 40(%x2)  #855 pc 3496
	sw	%x1, 48(%x2)  #855 pc 3500
	addi	%x2, %x2, 52  #855 pc 3504
	jal	%x1, read_float.2564  #855 pc 3508
	addi	%x2, %x2, -52  #855 pc 3512
	lw	%x1, 48(%x2) #855 pc 3516
	sw	%x1, 48(%x2)  #855 pc 3520
	addi	%x2, %x2, 52  #855 pc 3524
	jal	%x1, rad.2730  #855 pc 3528
	addi	%x2, %x2, -52  #855 pc 3532
	lw	%x1, 48(%x2) #855 pc 3536
	fsw	%f0, 48(%x2)  #856 pc 3540
	sw	%x1, 56(%x2)  #856 pc 3544
	addi	%x2, %x2, 60  #856 pc 3548
	jal	%x1, cos.2530  #856 pc 3552
	addi	%x2, %x2, -60  #856 pc 3556
	lw	%x1, 56(%x2) #856 pc 3560
	flw	%f1, 48(%x2)  #857 pc 3564
	fsw	%f0, 56(%x2)  #857 pc 3568
	fadd	%f0, %f1, %f30  #0 pc 3572
	sw	%x1, 64(%x2)  #857 pc 3576
	addi	%x2, %x2, 68  #857 pc 3580
	jal	%x1, sin.2526  #857 pc 3584
	addi	%x2, %x2, -68  #857 pc 3588
	lw	%x1, 64(%x2) #857 pc 3592
	flw	%f1, 32(%x2)  #859 pc 3596
	fmul	%f2, %f1, %f0  #859 pc 3600
	fmv	%f3, l.6385  #0 pc 3604
	fmul	%f2, %f2, %f3  #859 pc 3608
	lw	%x6, 12(%x2)  #859 pc 3612
	fsw	%f2, 0(%x6)  #859 pc 3616
	fmv	%f2, l.6388  #0 pc 3620
	flw	%f3, 40(%x2)  #860 pc 3624
	fmul	%f2, %f3, %f2  #860 pc 3628
	fsw	%f2, 4(%x6)  #860 pc 3632
	flw	%f2, 56(%x2)  #861 pc 3636
	fmul	%f4, %f1, %f2  #861 pc 3640
	fmv	%f5, l.6385  #0 pc 3644
	fmul	%f4, %f4, %f5  #861 pc 3648
	fsw	%f4, 8(%x6)  #861 pc 3652
	lw	%x7, 8(%x2)  #863 pc 3656
	fsw	%f2, 0(%x7)  #863 pc 3660
	fmv	%f4, l.6244  #0 pc 3664
	fsw	%f4, 4(%x7)  #864 pc 3668
	fsw	%f0, 64(%x2)  #865 pc 3672
	sw	%x1, 72(%x2)  #865 pc 3676
	addi	%x2, %x2, 76  #865 pc 3680
	jal	%x1, fneg.2515  #865 pc 3684
	addi	%x2, %x2, -76  #865 pc 3688
	lw	%x1, 72(%x2) #865 pc 3692
	lw	%x6, 8(%x2)  #865 pc 3696
	fsw	%f0, 8(%x6)  #865 pc 3700
	flw	%f0, 40(%x2)  #867 pc 3704
	sw	%x1, 72(%x2)  #867 pc 3708
	addi	%x2, %x2, 76  #867 pc 3712
	jal	%x1, fneg.2515  #867 pc 3716
	addi	%x2, %x2, -76  #867 pc 3720
	lw	%x1, 72(%x2) #867 pc 3724
	flw	%f1, 64(%x2)  #867 pc 3728
	fmul	%f0, %f0, %f1  #867 pc 3732
	lw	%x6, 4(%x2)  #867 pc 3736
	fsw	%f0, 0(%x6)  #867 pc 3740
	flw	%f0, 32(%x2)  #868 pc 3744
	sw	%x1, 72(%x2)  #868 pc 3748
	addi	%x2, %x2, 76  #868 pc 3752
	jal	%x1, fneg.2515  #868 pc 3756
	addi	%x2, %x2, -76  #868 pc 3760
	lw	%x1, 72(%x2) #868 pc 3764
	lw	%x6, 4(%x2)  #868 pc 3768
	fsw	%f0, 4(%x6)  #868 pc 3772
	flw	%f0, 40(%x2)  #869 pc 3776
	sw	%x1, 72(%x2)  #869 pc 3780
	addi	%x2, %x2, 76  #869 pc 3784
	jal	%x1, fneg.2515  #869 pc 3788
	addi	%x2, %x2, -76  #869 pc 3792
	lw	%x1, 72(%x2) #869 pc 3796
	flw	%f1, 56(%x2)  #869 pc 3800
	fmul	%f0, %f0, %f1  #869 pc 3804
	lw	%x6, 4(%x2)  #869 pc 3808
	fsw	%f0, 8(%x6)  #869 pc 3812
	lw	%x6, 16(%x2)  #871 pc 3816
	flw	%f0, 0(%x6)  #871 pc 3820
	lw	%x7, 12(%x2)  #871 pc 3824
	flw	%f1, 0(%x7)  #871 pc 3828
	fsub	%f0, %f0, %f1  #871 pc 3832
	lw	%x8, 0(%x2)  #871 pc 3836
	fsw	%f0, 0(%x8)  #871 pc 3840
	flw	%f0, 4(%x6)  #872 pc 3844
	flw	%f1, 4(%x7)  #872 pc 3848
	fsub	%f0, %f0, %f1  #872 pc 3852
	fsw	%f0, 4(%x8)  #872 pc 3856
	flw	%f0, 8(%x6)  #873 pc 3860
	flw	%f1, 8(%x7)  #873 pc 3864
	fsub	%f0, %f0, %f1  #873 pc 3868
	fsw	%f0, 8(%x8)  #873 pc 3872
	ret #pc 3876
	nop #pc 3880
read_light.2734:  #pc 3884
	lw	%x6, 8(%x29)  #0 pc 3884
	lw	%x7, 4(%x29)  #0 pc 3888
	sw	%x7, 0(%x2)  #880 pc 3892
	sw	%x6, 4(%x2)  #880 pc 3896
	sw	%x1, 8(%x2)  #880 pc 3900
	addi	%x2, %x2, 12  #880 pc 3904
	jal	%x1, read_int.2562  #880 pc 3908
	addi	%x2, %x2, -12  #880 pc 3912
	lw	%x1, 8(%x2) #880 pc 3916
	sw	%x1, 8(%x2)  #883 pc 3920
	addi	%x2, %x2, 12  #883 pc 3924
	jal	%x1, read_float.2564  #883 pc 3928
	addi	%x2, %x2, -12  #883 pc 3932
	lw	%x1, 8(%x2) #883 pc 3936
	sw	%x1, 8(%x2)  #883 pc 3940
	addi	%x2, %x2, 12  #883 pc 3944
	jal	%x1, rad.2730  #883 pc 3948
	addi	%x2, %x2, -12  #883 pc 3952
	lw	%x1, 8(%x2) #883 pc 3956
	fsw	%f0, 8(%x2)  #884 pc 3960
	sw	%x1, 16(%x2)  #884 pc 3964
	addi	%x2, %x2, 20  #884 pc 3968
	jal	%x1, sin.2526  #884 pc 3972
	addi	%x2, %x2, -20  #884 pc 3976
	lw	%x1, 16(%x2) #884 pc 3980
	sw	%x1, 16(%x2)  #885 pc 3984
	addi	%x2, %x2, 20  #885 pc 3988
	jal	%x1, fneg.2515  #885 pc 3992
	addi	%x2, %x2, -20  #885 pc 3996
	lw	%x1, 16(%x2) #885 pc 4000
	lw	%x6, 4(%x2)  #885 pc 4004
	fsw	%f0, 4(%x6)  #885 pc 4008
	sw	%x1, 16(%x2)  #886 pc 4012
	addi	%x2, %x2, 20  #886 pc 4016
	jal	%x1, read_float.2564  #886 pc 4020
	addi	%x2, %x2, -20  #886 pc 4024
	lw	%x1, 16(%x2) #886 pc 4028
	sw	%x1, 16(%x2)  #886 pc 4032
	addi	%x2, %x2, 20  #886 pc 4036
	jal	%x1, rad.2730  #886 pc 4040
	addi	%x2, %x2, -20  #886 pc 4044
	lw	%x1, 16(%x2) #886 pc 4048
	flw	%f1, 8(%x2)  #887 pc 4052
	fsw	%f0, 16(%x2)  #887 pc 4056
	fadd	%f0, %f1, %f30  #0 pc 4060
	sw	%x1, 24(%x2)  #887 pc 4064
	addi	%x2, %x2, 28  #887 pc 4068
	jal	%x1, cos.2530  #887 pc 4072
	addi	%x2, %x2, -28  #887 pc 4076
	lw	%x1, 24(%x2) #887 pc 4080
	flw	%f1, 16(%x2)  #888 pc 4084
	fsw	%f0, 24(%x2)  #888 pc 4088
	fadd	%f0, %f1, %f30  #0 pc 4092
	sw	%x1, 32(%x2)  #888 pc 4096
	addi	%x2, %x2, 36  #888 pc 4100
	jal	%x1, sin.2526  #888 pc 4104
	addi	%x2, %x2, -36  #888 pc 4108
	lw	%x1, 32(%x2) #888 pc 4112
	flw	%f1, 24(%x2)  #889 pc 4116
	fmul	%f0, %f1, %f0  #889 pc 4120
	lw	%x6, 4(%x2)  #889 pc 4124
	fsw	%f0, 0(%x6)  #889 pc 4128
	flw	%f0, 16(%x2)  #890 pc 4132
	sw	%x1, 32(%x2)  #890 pc 4136
	addi	%x2, %x2, 36  #890 pc 4140
	jal	%x1, cos.2530  #890 pc 4144
	addi	%x2, %x2, -36  #890 pc 4148
	lw	%x1, 32(%x2) #890 pc 4152
	flw	%f1, 24(%x2)  #891 pc 4156
	fmul	%f0, %f1, %f0  #891 pc 4160
	lw	%x6, 4(%x2)  #891 pc 4164
	fsw	%f0, 8(%x6)  #891 pc 4168
	sw	%x1, 32(%x2)  #892 pc 4172
	addi	%x2, %x2, 36  #892 pc 4176
	jal	%x1, read_float.2564  #892 pc 4180
	addi	%x2, %x2, -36  #892 pc 4184
	lw	%x1, 32(%x2) #892 pc 4188
	lw	%x6, 0(%x2)  #892 pc 4192
	fsw	%f0, 0(%x6)  #892 pc 4196
	ret #pc 4200
	nop #pc 4204
rotate_quadratic_matrix.2736:  #pc 4208
	flw	%f0, 0(%x7)  #902 pc 4208
	sw	%x6, 0(%x2)  #902 pc 4212
	sw	%x7, 4(%x2)  #902 pc 4216
	sw	%x1, 8(%x2)  #902 pc 4220
	addi	%x2, %x2, 12  #902 pc 4224
	jal	%x1, cos.2530  #902 pc 4228
	addi	%x2, %x2, -12  #902 pc 4232
	lw	%x1, 8(%x2) #902 pc 4236
	lw	%x6, 4(%x2)  #903 pc 4240
	flw	%f1, 0(%x6)  #903 pc 4244
	fsw	%f0, 8(%x2)  #903 pc 4248
	fadd	%f0, %f1, %f30  #0 pc 4252
	sw	%x1, 16(%x2)  #903 pc 4256
	addi	%x2, %x2, 20  #903 pc 4260
	jal	%x1, sin.2526  #903 pc 4264
	addi	%x2, %x2, -20  #903 pc 4268
	lw	%x1, 16(%x2) #903 pc 4272
	lw	%x6, 4(%x2)  #904 pc 4276
	flw	%f1, 4(%x6)  #904 pc 4280
	fsw	%f0, 16(%x2)  #904 pc 4284
	fadd	%f0, %f1, %f30  #0 pc 4288
	sw	%x1, 24(%x2)  #904 pc 4292
	addi	%x2, %x2, 28  #904 pc 4296
	jal	%x1, cos.2530  #904 pc 4300
	addi	%x2, %x2, -28  #904 pc 4304
	lw	%x1, 24(%x2) #904 pc 4308
	lw	%x6, 4(%x2)  #905 pc 4312
	flw	%f1, 4(%x6)  #905 pc 4316
	fsw	%f0, 24(%x2)  #905 pc 4320
	fadd	%f0, %f1, %f30  #0 pc 4324
	sw	%x1, 32(%x2)  #905 pc 4328
	addi	%x2, %x2, 36  #905 pc 4332
	jal	%x1, sin.2526  #905 pc 4336
	addi	%x2, %x2, -36  #905 pc 4340
	lw	%x1, 32(%x2) #905 pc 4344
	lw	%x6, 4(%x2)  #906 pc 4348
	flw	%f1, 8(%x6)  #906 pc 4352
	fsw	%f0, 32(%x2)  #906 pc 4356
	fadd	%f0, %f1, %f30  #0 pc 4360
	sw	%x1, 40(%x2)  #906 pc 4364
	addi	%x2, %x2, 44  #906 pc 4368
	jal	%x1, cos.2530  #906 pc 4372
	addi	%x2, %x2, -44  #906 pc 4376
	lw	%x1, 40(%x2) #906 pc 4380
	lw	%x6, 4(%x2)  #907 pc 4384
	flw	%f1, 8(%x6)  #907 pc 4388
	fsw	%f0, 40(%x2)  #907 pc 4392
	fadd	%f0, %f1, %f30  #0 pc 4396
	sw	%x1, 48(%x2)  #907 pc 4400
	addi	%x2, %x2, 52  #907 pc 4404
	jal	%x1, sin.2526  #907 pc 4408
	addi	%x2, %x2, -52  #907 pc 4412
	lw	%x1, 48(%x2) #907 pc 4416
	flw	%f1, 40(%x2)  #909 pc 4420
	flw	%f2, 24(%x2)  #909 pc 4424
	fmul	%f3, %f2, %f1  #909 pc 4428
	flw	%f4, 32(%x2)  #910 pc 4432
	flw	%f5, 16(%x2)  #910 pc 4436
	fmul	%f6, %f5, %f4  #910 pc 4440
	fmul	%f6, %f6, %f1  #910 pc 4444
	flw	%f7, 8(%x2)  #910 pc 4448
	fmul	%f8, %f7, %f0  #910 pc 4452
	fsub	%f6, %f6, %f8  #910 pc 4456
	fmul	%f8, %f7, %f4  #911 pc 4460
	fmul	%f8, %f8, %f1  #911 pc 4464
	fmul	%f9, %f5, %f0  #911 pc 4468
	fadd	%f8, %f8, %f9  #911 pc 4472
	fmul	%f9, %f2, %f0  #913 pc 4476
	fmul	%f10, %f5, %f4  #914 pc 4480
	fmul	%f10, %f10, %f0  #914 pc 4484
	fmul	%f11, %f7, %f1  #914 pc 4488
	fadd	%f10, %f10, %f11  #914 pc 4492
	fmul	%f11, %f7, %f4  #915 pc 4496
	fmul	%f0, %f11, %f0  #915 pc 4500
	fmul	%f1, %f5, %f1  #915 pc 4504
	fsub	%f0, %f0, %f1  #915 pc 4508
	fsw	%f0, 48(%x2)  #917 pc 4512
	fsw	%f8, 56(%x2)  #917 pc 4516
	fsw	%f10, 64(%x2)  #917 pc 4520
	fsw	%f6, 72(%x2)  #917 pc 4524
	fsw	%f9, 80(%x2)  #917 pc 4528
	fsw	%f3, 88(%x2)  #917 pc 4532
	fadd	%f0, %f4, %f30  #0 pc 4536
	sw	%x1, 96(%x2)  #917 pc 4540
	addi	%x2, %x2, 100  #917 pc 4544
	jal	%x1, fneg.2515  #917 pc 4548
	addi	%x2, %x2, -100  #917 pc 4552
	lw	%x1, 96(%x2) #917 pc 4556
	flw	%f1, 24(%x2)  #918 pc 4560
	flw	%f2, 16(%x2)  #918 pc 4564
	fmul	%f2, %f2, %f1  #918 pc 4568
	flw	%f3, 8(%x2)  #919 pc 4572
	fmul	%f1, %f3, %f1  #919 pc 4576
	lw	%x6, 0(%x2)  #922 pc 4580
	flw	%f3, 0(%x6)  #922 pc 4584
	flw	%f4, 4(%x6)  #923 pc 4588
	flw	%f5, 8(%x6)  #924 pc 4592
	flw	%f6, 88(%x2)  #929 pc 4596
	fsw	%f1, 96(%x2)  #929 pc 4600
	fsw	%f2, 104(%x2)  #929 pc 4604
	fsw	%f5, 112(%x2)  #929 pc 4608
	fsw	%f0, 120(%x2)  #929 pc 4612
	fsw	%f4, 128(%x2)  #929 pc 4616
	fsw	%f3, 136(%x2)  #929 pc 4620
	fadd	%f0, %f6, %f30  #0 pc 4624
	sw	%x1, 144(%x2)  #929 pc 4628
	addi	%x2, %x2, 148  #929 pc 4632
	jal	%x1, fsqr.2517  #929 pc 4636
	addi	%x2, %x2, -148  #929 pc 4640
	lw	%x1, 144(%x2) #929 pc 4644
	flw	%f1, 136(%x2)  #929 pc 4648
	fmul	%f0, %f1, %f0  #929 pc 4652
	flw	%f2, 80(%x2)  #929 pc 4656
	fsw	%f0, 144(%x2)  #929 pc 4660
	fadd	%f0, %f2, %f30  #0 pc 4664
	sw	%x1, 152(%x2)  #929 pc 4668
	addi	%x2, %x2, 156  #929 pc 4672
	jal	%x1, fsqr.2517  #929 pc 4676
	addi	%x2, %x2, -156  #929 pc 4680
	lw	%x1, 152(%x2) #929 pc 4684
	flw	%f1, 128(%x2)  #929 pc 4688
	fmul	%f0, %f1, %f0  #929 pc 4692
	flw	%f2, 144(%x2)  #929 pc 4696
	fadd	%f0, %f2, %f0  #929 pc 4700
	flw	%f2, 120(%x2)  #929 pc 4704
	fsw	%f0, 152(%x2)  #929 pc 4708
	fadd	%f0, %f2, %f30  #0 pc 4712
	sw	%x1, 160(%x2)  #929 pc 4716
	addi	%x2, %x2, 164  #929 pc 4720
	jal	%x1, fsqr.2517  #929 pc 4724
	addi	%x2, %x2, -164  #929 pc 4728
	lw	%x1, 160(%x2) #929 pc 4732
	flw	%f1, 112(%x2)  #929 pc 4736
	fmul	%f0, %f1, %f0  #929 pc 4740
	flw	%f2, 152(%x2)  #929 pc 4744
	fadd	%f0, %f2, %f0  #929 pc 4748
	lw	%x6, 0(%x2)  #929 pc 4752
	fsw	%f0, 0(%x6)  #929 pc 4756
	flw	%f0, 72(%x2)  #930 pc 4760
	sw	%x1, 160(%x2)  #930 pc 4764
	addi	%x2, %x2, 164  #930 pc 4768
	jal	%x1, fsqr.2517  #930 pc 4772
	addi	%x2, %x2, -164  #930 pc 4776
	lw	%x1, 160(%x2) #930 pc 4780
	flw	%f1, 136(%x2)  #930 pc 4784
	fmul	%f0, %f1, %f0  #930 pc 4788
	flw	%f2, 64(%x2)  #930 pc 4792
	fsw	%f0, 160(%x2)  #930 pc 4796
	fadd	%f0, %f2, %f30  #0 pc 4800
	sw	%x1, 168(%x2)  #930 pc 4804
	addi	%x2, %x2, 172  #930 pc 4808
	jal	%x1, fsqr.2517  #930 pc 4812
	addi	%x2, %x2, -172  #930 pc 4816
	lw	%x1, 168(%x2) #930 pc 4820
	flw	%f1, 128(%x2)  #930 pc 4824
	fmul	%f0, %f1, %f0  #930 pc 4828
	flw	%f2, 160(%x2)  #930 pc 4832
	fadd	%f0, %f2, %f0  #930 pc 4836
	flw	%f2, 104(%x2)  #930 pc 4840
	fsw	%f0, 168(%x2)  #930 pc 4844
	fadd	%f0, %f2, %f30  #0 pc 4848
	sw	%x1, 176(%x2)  #930 pc 4852
	addi	%x2, %x2, 180  #930 pc 4856
	jal	%x1, fsqr.2517  #930 pc 4860
	addi	%x2, %x2, -180  #930 pc 4864
	lw	%x1, 176(%x2) #930 pc 4868
	flw	%f1, 112(%x2)  #930 pc 4872
	fmul	%f0, %f1, %f0  #930 pc 4876
	flw	%f2, 168(%x2)  #930 pc 4880
	fadd	%f0, %f2, %f0  #930 pc 4884
	lw	%x6, 0(%x2)  #930 pc 4888
	fsw	%f0, 4(%x6)  #930 pc 4892
	flw	%f0, 56(%x2)  #931 pc 4896
	sw	%x1, 176(%x2)  #931 pc 4900
	addi	%x2, %x2, 180  #931 pc 4904
	jal	%x1, fsqr.2517  #931 pc 4908
	addi	%x2, %x2, -180  #931 pc 4912
	lw	%x1, 176(%x2) #931 pc 4916
	flw	%f1, 136(%x2)  #931 pc 4920
	fmul	%f0, %f1, %f0  #931 pc 4924
	flw	%f2, 48(%x2)  #931 pc 4928
	fsw	%f0, 176(%x2)  #931 pc 4932
	fadd	%f0, %f2, %f30  #0 pc 4936
	sw	%x1, 184(%x2)  #931 pc 4940
	addi	%x2, %x2, 188  #931 pc 4944
	jal	%x1, fsqr.2517  #931 pc 4948
	addi	%x2, %x2, -188  #931 pc 4952
	lw	%x1, 184(%x2) #931 pc 4956
	flw	%f1, 128(%x2)  #931 pc 4960
	fmul	%f0, %f1, %f0  #931 pc 4964
	flw	%f2, 176(%x2)  #931 pc 4968
	fadd	%f0, %f2, %f0  #931 pc 4972
	flw	%f2, 96(%x2)  #931 pc 4976
	fsw	%f0, 184(%x2)  #931 pc 4980
	fadd	%f0, %f2, %f30  #0 pc 4984
	sw	%x1, 192(%x2)  #931 pc 4988
	addi	%x2, %x2, 196  #931 pc 4992
	jal	%x1, fsqr.2517  #931 pc 4996
	addi	%x2, %x2, -196  #931 pc 5000
	lw	%x1, 192(%x2) #931 pc 5004
	flw	%f1, 112(%x2)  #931 pc 5008
	fmul	%f0, %f1, %f0  #931 pc 5012
	flw	%f2, 184(%x2)  #931 pc 5016
	fadd	%f0, %f2, %f0  #931 pc 5020
	lw	%x6, 0(%x2)  #931 pc 5024
	fsw	%f0, 8(%x6)  #931 pc 5028
	fmv	%f0, l.6425  #0 pc 5032
	flw	%f2, 72(%x2)  #934 pc 5036
	flw	%f3, 136(%x2)  #934 pc 5040
	fmul	%f4, %f3, %f2  #934 pc 5044
	flw	%f5, 56(%x2)  #934 pc 5048
	fmul	%f4, %f4, %f5  #934 pc 5052
	flw	%f6, 64(%x2)  #934 pc 5056
	flw	%f7, 128(%x2)  #934 pc 5060
	fmul	%f8, %f7, %f6  #934 pc 5064
	flw	%f9, 48(%x2)  #934 pc 5068
	fmul	%f8, %f8, %f9  #934 pc 5072
	fadd	%f4, %f4, %f8  #934 pc 5076
	flw	%f8, 104(%x2)  #934 pc 5080
	fmul	%f10, %f1, %f8  #934 pc 5084
	flw	%f11, 96(%x2)  #934 pc 5088
	fmul	%f10, %f10, %f11  #934 pc 5092
	fadd	%f4, %f4, %f10  #934 pc 5096
	fmul	%f0, %f0, %f4  #934 pc 5100
	lw	%x6, 4(%x2)  #934 pc 5104
	fsw	%f0, 0(%x6)  #934 pc 5108
	fmv	%f0, l.6425  #0 pc 5112
	flw	%f4, 88(%x2)  #935 pc 5116
	fmul	%f10, %f3, %f4  #935 pc 5120
	fmul	%f5, %f10, %f5  #935 pc 5124
	flw	%f10, 80(%x2)  #935 pc 5128
	fmul	%f12, %f7, %f10  #935 pc 5132
	fmul	%f9, %f12, %f9  #935 pc 5136
	fadd	%f5, %f5, %f9  #935 pc 5140
	flw	%f9, 120(%x2)  #935 pc 5144
	fmul	%f12, %f1, %f9  #935 pc 5148
	fmul	%f11, %f12, %f11  #935 pc 5152
	fadd	%f5, %f5, %f11  #935 pc 5156
	fmul	%f0, %f0, %f5  #935 pc 5160
	fsw	%f0, 4(%x6)  #935 pc 5164
	fmv	%f0, l.6425  #0 pc 5168
	fmul	%f3, %f3, %f4  #936 pc 5172
	fmul	%f2, %f3, %f2  #936 pc 5176
	fmul	%f3, %f7, %f10  #936 pc 5180
	fmul	%f3, %f3, %f6  #936 pc 5184
	fadd	%f2, %f2, %f3  #936 pc 5188
	fmul	%f1, %f1, %f9  #936 pc 5192
	fmul	%f1, %f1, %f8  #936 pc 5196
	fadd	%f1, %f2, %f1  #936 pc 5200
	fmul	%f0, %f0, %f1  #936 pc 5204
	fsw	%f0, 8(%x6)  #936 pc 5208
	ret #pc 5212
	nop #pc 5216
read_nth_object.2739:  #pc 5220
	lw	%x7, 4(%x29)  #0 pc 5220
	sw	%x7, 0(%x2)  #943 pc 5224
	sw	%x6, 4(%x2)  #943 pc 5228
	sw	%x1, 8(%x2)  #943 pc 5232
	addi	%x2, %x2, 12  #943 pc 5236
	jal	%x1, read_int.2562  #943 pc 5240
	addi	%x2, %x2, -12  #943 pc 5244
	lw	%x1, 8(%x2) #943 pc 5248
	addi	%x31, %x0, -1  #pc 5252
	beq	%x6, %x31, 12  #944 pc 5256
	j	be_else.9176 #pc 5260
	nop #pc 5264
	addi	%x6, %x0, 0  #0 pc 5268
	ret #pc 5272
	nop #pc 5276
be_else.9176: #pc 5280
	sw	%x6, 8(%x2)  #946 pc 5280
	sw	%x1, 12(%x2)  #946 pc 5284
	addi	%x2, %x2, 16  #946 pc 5288
	jal	%x1, read_int.2562  #946 pc 5292
	addi	%x2, %x2, -16  #946 pc 5296
	lw	%x1, 12(%x2) #946 pc 5300
	sw	%x6, 12(%x2)  #947 pc 5304
	sw	%x1, 16(%x2)  #947 pc 5308
	addi	%x2, %x2, 20  #947 pc 5312
	jal	%x1, read_int.2562  #947 pc 5316
	addi	%x2, %x2, -20  #947 pc 5320
	lw	%x1, 16(%x2) #947 pc 5324
	sw	%x6, 16(%x2)  #948 pc 5328
	sw	%x1, 20(%x2)  #948 pc 5332
	addi	%x2, %x2, 24  #948 pc 5336
	jal	%x1, read_int.2562  #948 pc 5340
	addi	%x2, %x2, -24  #948 pc 5344
	lw	%x1, 20(%x2) #948 pc 5348
	addi	%x7, %x0, 3  #0 pc 5352
	fmv	%f0, l.6244  #0 pc 5356
	sw	%x6, 20(%x2)  #950 pc 5360
	addi	%x6, %x7, 0  #0 pc 5364
	sw	%x1, 24(%x2)  #950 pc 5368
	addi	%x2, %x2, 28  #950 pc 5372
	jal	%x1, create_float_array.2577  #950 pc 5376
	addi	%x2, %x2, -28  #950 pc 5380
	lw	%x1, 24(%x2) #950 pc 5384
	sw	%x6, 24(%x2)  #951 pc 5388
	sw	%x1, 28(%x2)  #951 pc 5392
	addi	%x2, %x2, 32  #951 pc 5396
	jal	%x1, read_float.2564  #951 pc 5400
	addi	%x2, %x2, -32  #951 pc 5404
	lw	%x1, 28(%x2) #951 pc 5408
	lw	%x6, 24(%x2)  #951 pc 5412
	fsw	%f0, 0(%x6)  #951 pc 5416
	sw	%x1, 28(%x2)  #952 pc 5420
	addi	%x2, %x2, 32  #952 pc 5424
	jal	%x1, read_float.2564  #952 pc 5428
	addi	%x2, %x2, -32  #952 pc 5432
	lw	%x1, 28(%x2) #952 pc 5436
	lw	%x6, 24(%x2)  #952 pc 5440
	fsw	%f0, 4(%x6)  #952 pc 5444
	sw	%x1, 28(%x2)  #953 pc 5448
	addi	%x2, %x2, 32  #953 pc 5452
	jal	%x1, read_float.2564  #953 pc 5456
	addi	%x2, %x2, -32  #953 pc 5460
	lw	%x1, 28(%x2) #953 pc 5464
	lw	%x6, 24(%x2)  #953 pc 5468
	fsw	%f0, 8(%x6)  #953 pc 5472
	addi	%x7, %x0, 3  #0 pc 5476
	fmv	%f0, l.6244  #0 pc 5480
	addi	%x6, %x7, 0  #0 pc 5484
	sw	%x1, 28(%x2)  #955 pc 5488
	addi	%x2, %x2, 32  #955 pc 5492
	jal	%x1, create_float_array.2577  #955 pc 5496
	addi	%x2, %x2, -32  #955 pc 5500
	lw	%x1, 28(%x2) #955 pc 5504
	sw	%x6, 28(%x2)  #956 pc 5508
	sw	%x1, 32(%x2)  #956 pc 5512
	addi	%x2, %x2, 36  #956 pc 5516
	jal	%x1, read_float.2564  #956 pc 5520
	addi	%x2, %x2, -36  #956 pc 5524
	lw	%x1, 32(%x2) #956 pc 5528
	lw	%x6, 28(%x2)  #956 pc 5532
	fsw	%f0, 0(%x6)  #956 pc 5536
	sw	%x1, 32(%x2)  #957 pc 5540
	addi	%x2, %x2, 36  #957 pc 5544
	jal	%x1, read_float.2564  #957 pc 5548
	addi	%x2, %x2, -36  #957 pc 5552
	lw	%x1, 32(%x2) #957 pc 5556
	lw	%x6, 28(%x2)  #957 pc 5560
	fsw	%f0, 4(%x6)  #957 pc 5564
	sw	%x1, 32(%x2)  #958 pc 5568
	addi	%x2, %x2, 36  #958 pc 5572
	jal	%x1, read_float.2564  #958 pc 5576
	addi	%x2, %x2, -36  #958 pc 5580
	lw	%x1, 32(%x2) #958 pc 5584
	lw	%x6, 28(%x2)  #958 pc 5588
	fsw	%f0, 8(%x6)  #958 pc 5592
	sw	%x1, 32(%x2)  #960 pc 5596
	addi	%x2, %x2, 36  #960 pc 5600
	jal	%x1, read_float.2564  #960 pc 5604
	addi	%x2, %x2, -36  #960 pc 5608
	lw	%x1, 32(%x2) #960 pc 5612
	sw	%x1, 32(%x2)  #960 pc 5616
	addi	%x2, %x2, 36  #960 pc 5620
	jal	%x1, fisneg.2513  #960 pc 5624
	addi	%x2, %x2, -36  #960 pc 5628
	lw	%x1, 32(%x2) #960 pc 5632
	addi	%x7, %x0, 2  #0 pc 5636
	fmv	%f0, l.6244  #0 pc 5640
	sw	%x6, 32(%x2)  #962 pc 5644
	addi	%x6, %x7, 0  #0 pc 5648
	sw	%x1, 36(%x2)  #962 pc 5652
	addi	%x2, %x2, 40  #962 pc 5656
	jal	%x1, create_float_array.2577  #962 pc 5660
	addi	%x2, %x2, -40  #962 pc 5664
	lw	%x1, 36(%x2) #962 pc 5668
	sw	%x6, 36(%x2)  #963 pc 5672
	sw	%x1, 40(%x2)  #963 pc 5676
	addi	%x2, %x2, 44  #963 pc 5680
	jal	%x1, read_float.2564  #963 pc 5684
	addi	%x2, %x2, -44  #963 pc 5688
	lw	%x1, 40(%x2) #963 pc 5692
	lw	%x6, 36(%x2)  #963 pc 5696
	fsw	%f0, 0(%x6)  #963 pc 5700
	sw	%x1, 40(%x2)  #964 pc 5704
	addi	%x2, %x2, 44  #964 pc 5708
	jal	%x1, read_float.2564  #964 pc 5712
	addi	%x2, %x2, -44  #964 pc 5716
	lw	%x1, 40(%x2) #964 pc 5720
	lw	%x6, 36(%x2)  #964 pc 5724
	fsw	%f0, 4(%x6)  #964 pc 5728
	addi	%x7, %x0, 3  #0 pc 5732
	fmv	%f0, l.6244  #0 pc 5736
	addi	%x6, %x7, 0  #0 pc 5740
	sw	%x1, 40(%x2)  #966 pc 5744
	addi	%x2, %x2, 44  #966 pc 5748
	jal	%x1, create_float_array.2577  #966 pc 5752
	addi	%x2, %x2, -44  #966 pc 5756
	lw	%x1, 40(%x2) #966 pc 5760
	sw	%x6, 40(%x2)  #967 pc 5764
	sw	%x1, 44(%x2)  #967 pc 5768
	addi	%x2, %x2, 48  #967 pc 5772
	jal	%x1, read_float.2564  #967 pc 5776
	addi	%x2, %x2, -48  #967 pc 5780
	lw	%x1, 44(%x2) #967 pc 5784
	lw	%x6, 40(%x2)  #967 pc 5788
	fsw	%f0, 0(%x6)  #967 pc 5792
	sw	%x1, 44(%x2)  #968 pc 5796
	addi	%x2, %x2, 48  #968 pc 5800
	jal	%x1, read_float.2564  #968 pc 5804
	addi	%x2, %x2, -48  #968 pc 5808
	lw	%x1, 44(%x2) #968 pc 5812
	lw	%x6, 40(%x2)  #968 pc 5816
	fsw	%f0, 4(%x6)  #968 pc 5820
	sw	%x1, 44(%x2)  #969 pc 5824
	addi	%x2, %x2, 48  #969 pc 5828
	jal	%x1, read_float.2564  #969 pc 5832
	addi	%x2, %x2, -48  #969 pc 5836
	lw	%x1, 44(%x2) #969 pc 5840
	lw	%x6, 40(%x2)  #969 pc 5844
	fsw	%f0, 8(%x6)  #969 pc 5848
	addi	%x7, %x0, 3  #0 pc 5852
	fmv	%f0, l.6244  #0 pc 5856
	addi	%x6, %x7, 0  #0 pc 5860
	sw	%x1, 44(%x2)  #971 pc 5864
	addi	%x2, %x2, 48  #971 pc 5868
	jal	%x1, create_float_array.2577  #971 pc 5872
	addi	%x2, %x2, -48  #971 pc 5876
	lw	%x1, 44(%x2) #971 pc 5880
	lw	%x7, 20(%x2)  #972 pc 5884
	beq	%x7, %x0, 12  #972 pc 5888
	j	be_else.9177 #pc 5892
	nop #pc 5896
	j	be_cont.9178 #pc 5900
	nop #pc 5904
be_else.9177: #pc 5908
	sw	%x6, 44(%x2)  #974 pc 5908
	sw	%x1, 48(%x2)  #974 pc 5912
	addi	%x2, %x2, 52  #974 pc 5916
	jal	%x1, read_float.2564  #974 pc 5920
	addi	%x2, %x2, -52  #974 pc 5924
	lw	%x1, 48(%x2) #974 pc 5928
	sw	%x1, 48(%x2)  #974 pc 5932
	addi	%x2, %x2, 52  #974 pc 5936
	jal	%x1, rad.2730  #974 pc 5940
	addi	%x2, %x2, -52  #974 pc 5944
	lw	%x1, 48(%x2) #974 pc 5948
	lw	%x6, 44(%x2)  #974 pc 5952
	fsw	%f0, 0(%x6)  #974 pc 5956
	sw	%x1, 48(%x2)  #975 pc 5960
	addi	%x2, %x2, 52  #975 pc 5964
	jal	%x1, read_float.2564  #975 pc 5968
	addi	%x2, %x2, -52  #975 pc 5972
	lw	%x1, 48(%x2) #975 pc 5976
	sw	%x1, 48(%x2)  #975 pc 5980
	addi	%x2, %x2, 52  #975 pc 5984
	jal	%x1, rad.2730  #975 pc 5988
	addi	%x2, %x2, -52  #975 pc 5992
	lw	%x1, 48(%x2) #975 pc 5996
	lw	%x6, 44(%x2)  #975 pc 6000
	fsw	%f0, 4(%x6)  #975 pc 6004
	sw	%x1, 48(%x2)  #976 pc 6008
	addi	%x2, %x2, 52  #976 pc 6012
	jal	%x1, read_float.2564  #976 pc 6016
	addi	%x2, %x2, -52  #976 pc 6020
	lw	%x1, 48(%x2) #976 pc 6024
	sw	%x1, 48(%x2)  #976 pc 6028
	addi	%x2, %x2, 52  #976 pc 6032
	jal	%x1, rad.2730  #976 pc 6036
	addi	%x2, %x2, -52  #976 pc 6040
	lw	%x1, 48(%x2) #976 pc 6044
	lw	%x6, 44(%x2)  #976 pc 6048
	fsw	%f0, 8(%x6)  #976 pc 6052
be_cont.9178: #pc 6056
	lw	%x7, 12(%x2)  #983 pc 6056
	addi	%x31, %x0, 2  #pc 6060
	beq	%x7, %x31, 12  #983 pc 6064
	j	be_else.9179 #pc 6068
	nop #pc 6072
	addi	%x8, %x0, 1  #0 pc 6076
	j	be_cont.9180 #pc 6080
	nop #pc 6084
be_else.9179: #pc 6088
	lw	%x8, 32(%x2)  #983 pc 6088
be_cont.9180: #pc 6092
	addi	%x9, %x0, 4  #0 pc 6092
	fmv	%f0, l.6244  #0 pc 6096
	sw	%x8, 48(%x2)  #984 pc 6100
	sw	%x6, 44(%x2)  #984 pc 6104
	addi	%x6, %x9, 0  #0 pc 6108
	sw	%x1, 52(%x2)  #984 pc 6112
	addi	%x2, %x2, 56  #984 pc 6116
	jal	%x1, create_float_array.2577  #984 pc 6120
	addi	%x2, %x2, -56  #984 pc 6124
	lw	%x1, 52(%x2) #984 pc 6128
	addi	%x7, %x3, 0  #987 pc 6132
	addi	%x3, %x3, 44  #987 pc 6136
	sw	%x6, 40(%x7)  #987 pc 6140
	lw	%x6, 44(%x2)  #987 pc 6144
	sw	%x6, 36(%x7)  #987 pc 6148
	lw	%x8, 40(%x2)  #987 pc 6152
	sw	%x8, 32(%x7)  #987 pc 6156
	lw	%x8, 36(%x2)  #987 pc 6160
	sw	%x8, 28(%x7)  #987 pc 6164
	lw	%x8, 48(%x2)  #987 pc 6168
	sw	%x8, 24(%x7)  #987 pc 6172
	lw	%x8, 28(%x2)  #987 pc 6176
	sw	%x8, 20(%x7)  #987 pc 6180
	lw	%x8, 24(%x2)  #987 pc 6184
	sw	%x8, 16(%x7)  #987 pc 6188
	lw	%x9, 20(%x2)  #987 pc 6192
	sw	%x9, 12(%x7)  #987 pc 6196
	lw	%x10, 16(%x2)  #987 pc 6200
	sw	%x10, 8(%x7)  #987 pc 6204
	lw	%x10, 12(%x2)  #987 pc 6208
	sw	%x10, 4(%x7)  #987 pc 6212
	lw	%x11, 8(%x2)  #987 pc 6216
	sw	%x11, 0(%x7)  #987 pc 6220
	lw	%x11, 4(%x2)  #995 pc 6224
	slli	%x11, %x11, 2  #995 pc 6228
	lw	%x12, 0(%x2)  #995 pc 6232
	add	%x31, %x11, %x12  #995 pc 6236
	sw	%x7, 0(%x31)  #995 pc 6240
	addi	%x31, %x0, 3  #pc 6244
	beq	%x10, %x31, 12  #997 pc 6248
	j	be_else.9181 #pc 6252
	nop #pc 6256
	flw	%f0, 0(%x8)  #1000 pc 6260
	fsw	%f0, 56(%x2)  #1001 pc 6264
	sw	%x1, 64(%x2)  #1001 pc 6268
	addi	%x2, %x2, 68  #1001 pc 6272
	jal	%x1, fiszero.2509  #1001 pc 6276
	addi	%x2, %x2, -68  #1001 pc 6280
	lw	%x1, 64(%x2) #1001 pc 6284
	beq	%x6, %x0, 12  #1001 pc 6288
	j	be_else.9184 #pc 6292
	nop #pc 6296
	flw	%f0, 56(%x2)  #1001 pc 6300
	sw	%x1, 64(%x2)  #1001 pc 6304
	addi	%x2, %x2, 68  #1001 pc 6308
	jal	%x1, sgn.2613  #1001 pc 6312
	addi	%x2, %x2, -68  #1001 pc 6316
	lw	%x1, 64(%x2) #1001 pc 6320
	flw	%f1, 56(%x2)  #1001 pc 6324
	fsw	%f0, 64(%x2)  #1001 pc 6328
	fadd	%f0, %f1, %f30  #0 pc 6332
	sw	%x1, 72(%x2)  #1001 pc 6336
	addi	%x2, %x2, 76  #1001 pc 6340
	jal	%x1, fsqr.2517  #1001 pc 6344
	addi	%x2, %x2, -76  #1001 pc 6348
	lw	%x1, 72(%x2) #1001 pc 6352
	flw	%f1, 64(%x2)  #1001 pc 6356
	fdiv	%f0, %f1, %f0  #1001 pc 6360
	j	be_cont.9185 #pc 6364
	nop #pc 6368
be_else.9184: #pc 6372
	fmv	%f0, l.6244  #0 pc 6372
be_cont.9185: #pc 6376
	lw	%x6, 24(%x2)  #1001 pc 6376
	fsw	%f0, 0(%x6)  #1001 pc 6380
	flw	%f0, 4(%x6)  #1002 pc 6384
	fsw	%f0, 72(%x2)  #1003 pc 6388
	sw	%x1, 80(%x2)  #1003 pc 6392
	addi	%x2, %x2, 84  #1003 pc 6396
	jal	%x1, fiszero.2509  #1003 pc 6400
	addi	%x2, %x2, -84  #1003 pc 6404
	lw	%x1, 80(%x2) #1003 pc 6408
	beq	%x6, %x0, 12  #1003 pc 6412
	j	be_else.9186 #pc 6416
	nop #pc 6420
	flw	%f0, 72(%x2)  #1003 pc 6424
	sw	%x1, 80(%x2)  #1003 pc 6428
	addi	%x2, %x2, 84  #1003 pc 6432
	jal	%x1, sgn.2613  #1003 pc 6436
	addi	%x2, %x2, -84  #1003 pc 6440
	lw	%x1, 80(%x2) #1003 pc 6444
	flw	%f1, 72(%x2)  #1003 pc 6448
	fsw	%f0, 80(%x2)  #1003 pc 6452
	fadd	%f0, %f1, %f30  #0 pc 6456
	sw	%x1, 88(%x2)  #1003 pc 6460
	addi	%x2, %x2, 92  #1003 pc 6464
	jal	%x1, fsqr.2517  #1003 pc 6468
	addi	%x2, %x2, -92  #1003 pc 6472
	lw	%x1, 88(%x2) #1003 pc 6476
	flw	%f1, 80(%x2)  #1003 pc 6480
	fdiv	%f0, %f1, %f0  #1003 pc 6484
	j	be_cont.9187 #pc 6488
	nop #pc 6492
be_else.9186: #pc 6496
	fmv	%f0, l.6244  #0 pc 6496
be_cont.9187: #pc 6500
	lw	%x6, 24(%x2)  #1003 pc 6500
	fsw	%f0, 4(%x6)  #1003 pc 6504
	flw	%f0, 8(%x6)  #1004 pc 6508
	fsw	%f0, 88(%x2)  #1005 pc 6512
	sw	%x1, 96(%x2)  #1005 pc 6516
	addi	%x2, %x2, 100  #1005 pc 6520
	jal	%x1, fiszero.2509  #1005 pc 6524
	addi	%x2, %x2, -100  #1005 pc 6528
	lw	%x1, 96(%x2) #1005 pc 6532
	beq	%x6, %x0, 12  #1005 pc 6536
	j	be_else.9188 #pc 6540
	nop #pc 6544
	flw	%f0, 88(%x2)  #1005 pc 6548
	sw	%x1, 96(%x2)  #1005 pc 6552
	addi	%x2, %x2, 100  #1005 pc 6556
	jal	%x1, sgn.2613  #1005 pc 6560
	addi	%x2, %x2, -100  #1005 pc 6564
	lw	%x1, 96(%x2) #1005 pc 6568
	flw	%f1, 88(%x2)  #1005 pc 6572
	fsw	%f0, 96(%x2)  #1005 pc 6576
	fadd	%f0, %f1, %f30  #0 pc 6580
	sw	%x1, 104(%x2)  #1005 pc 6584
	addi	%x2, %x2, 108  #1005 pc 6588
	jal	%x1, fsqr.2517  #1005 pc 6592
	addi	%x2, %x2, -108  #1005 pc 6596
	lw	%x1, 104(%x2) #1005 pc 6600
	flw	%f1, 96(%x2)  #1005 pc 6604
	fdiv	%f0, %f1, %f0  #1005 pc 6608
	j	be_cont.9189 #pc 6612
	nop #pc 6616
be_else.9188: #pc 6620
	fmv	%f0, l.6244  #0 pc 6620
be_cont.9189: #pc 6624
	lw	%x6, 24(%x2)  #1005 pc 6624
	fsw	%f0, 8(%x6)  #1005 pc 6628
	j	be_cont.9182 #pc 6632
	nop #pc 6636
be_else.9181: #pc 6640
	addi	%x31, %x0, 2  #pc 6640
	beq	%x10, %x31, 12  #1007 pc 6644
	j	be_else.9190 #pc 6648
	nop #pc 6652
	lw	%x7, 32(%x2)  #1009 pc 6656
	beq	%x7, %x0, 12  #1009 pc 6660
	j	be_else.9192 #pc 6664
	nop #pc 6668
	addi	%x7, %x0, 1  #0 pc 6672
	j	be_cont.9193 #pc 6676
	nop #pc 6680
be_else.9192: #pc 6684
	addi	%x7, %x0, 0  #0 pc 6684
be_cont.9193: #pc 6688
	addi	%x6, %x8, 0  #0 pc 6688
	sw	%x1, 104(%x2)  #1009 pc 6692
	addi	%x2, %x2, 108  #1009 pc 6696
	jal	%x1, vecunit_sgn.2634  #1009 pc 6700
	addi	%x2, %x2, -108  #1009 pc 6704
	lw	%x1, 104(%x2) #1009 pc 6708
	j	be_cont.9191 #pc 6712
	nop #pc 6716
be_else.9190: #pc 6720
be_cont.9191: #pc 6720
be_cont.9182: #pc 6720
	lw	%x6, 20(%x2)  #1013 pc 6720
	beq	%x6, %x0, 12  #1013 pc 6724
	j	be_else.9194 #pc 6728
	nop #pc 6732
	j	be_cont.9195 #pc 6736
	nop #pc 6740
be_else.9194: #pc 6744
	lw	%x6, 24(%x2)  #1014 pc 6744
	lw	%x7, 44(%x2)  #1014 pc 6748
	sw	%x1, 104(%x2)  #1014 pc 6752
	addi	%x2, %x2, 108  #1014 pc 6756
	jal	%x1, rotate_quadratic_matrix.2736  #1014 pc 6760
	addi	%x2, %x2, -108  #1014 pc 6764
	lw	%x1, 104(%x2) #1014 pc 6768
be_cont.9195: #pc 6772
	addi	%x6, %x0, 1  #0 pc 6772
	ret #pc 6776
	nop #pc 6780
read_object.2741:  #pc 6784
	lw	%x7, 8(%x29)  #0 pc 6784
	lw	%x8, 4(%x29)  #0 pc 6788
	addi	%x31, %x0, 60  #pc 6792
	bge	%x6, %x31, 12  #1025 pc 6796
	j	bge_else.9196 #pc 6800
	nop #pc 6804
	ret #pc 6808
	nop #pc 6812
bge_else.9196: #pc 6816
	sw	%x29, 0(%x2)  #1026 pc 6816
	sw	%x8, 4(%x2)  #1026 pc 6820
	sw	%x6, 8(%x2)  #1026 pc 6824
	addi	%x29, %x7, 0  #0 pc 6828
	sw	%x1, 12(%x2)  #1026 pc 6832
	lw	%x30, 0(%x29)  #1026 pc 6836
	addi	%x2, %x2, 16  #1026 pc 6840
	jalr	%x1, %x30, 0  #1026 pc 6844
	addi	%x2, %x2, -16  #1026 pc 6848
	lw	%x1, 12(%x2)  #1026 pc 6852
	beq	%x6, %x0, 12  #1026 pc 6856
	j	be_else.9198 #pc 6860
	nop #pc 6864
	lw	%x6, 4(%x2)  #1029 pc 6868
	lw	%x7, 8(%x2)  #1029 pc 6872
	sw	%x7, 0(%x6)  #1029 pc 6876
	ret #pc 6880
	nop #pc 6884
be_else.9198: #pc 6888
	lw	%x6, 8(%x2)  #1027 pc 6888
	addi	%x6, %x6, 1  #1027 pc 6892
	lw	%x29, 0(%x2)  #1027 pc 6896
	lw	%x30, 0(%x29)  #1027 pc 6900
	jalr	%x0, %x30, 0  #1027 pc 6904
	nop #pc 6908
read_all_object.2743:  #pc 6912
	lw	%x29, 4(%x29)  #0 pc 6912
	addi	%x6, %x0, 0  #0 pc 6916
	lw	%x30, 0(%x29)  #1034 pc 6920
	jalr	%x0, %x30, 0  #1034 pc 6924
	nop #pc 6928
read_net_item.2745:  #pc 6932
	sw	%x6, 0(%x2)  #1041 pc 6932
	sw	%x1, 4(%x2)  #1041 pc 6936
	addi	%x2, %x2, 8  #1041 pc 6940
	jal	%x1, read_int.2562  #1041 pc 6944
	addi	%x2, %x2, -8  #1041 pc 6948
	lw	%x1, 4(%x2) #1041 pc 6952
	addi	%x31, %x0, -1  #pc 6956
	beq	%x6, %x31, 12  #1042 pc 6960
	j	be_else.9200 #pc 6964
	nop #pc 6968
	lw	%x6, 0(%x2)  #1042 pc 6972
	addi	%x6, %x6, 1  #1042 pc 6976
	addi	%x7, %x0, -1  #0 pc 6980
	j	create_array.2570  #1042 pc 6984
	nop #pc 6988
be_else.9200: #pc 6992
	lw	%x7, 0(%x2)  #1044 pc 6992
	addi	%x8, %x7, 1  #1044 pc 6996
	sw	%x6, 4(%x2)  #1044 pc 7000
	addi	%x6, %x8, 0  #0 pc 7004
	sw	%x1, 8(%x2)  #1044 pc 7008
	addi	%x2, %x2, 12  #1044 pc 7012
	jal	%x1, read_net_item.2745  #1044 pc 7016
	addi	%x2, %x2, -12  #1044 pc 7020
	lw	%x1, 8(%x2) #1044 pc 7024
	lw	%x7, 0(%x2)  #1045 pc 7028
	slli	%x7, %x7, 2  #1045 pc 7032
	lw	%x8, 4(%x2)  #1045 pc 7036
	add	%x31, %x7, %x6  #1045 pc 7040
	sw	%x8, 0(%x31)  #1045 pc 7044
	ret #pc 7048
	nop #pc 7052
read_or_network.2747:  #pc 7056
	addi	%x7, %x0, 0  #0 pc 7056
	sw	%x6, 0(%x2)  #1049 pc 7060
	addi	%x6, %x7, 0  #0 pc 7064
	sw	%x1, 4(%x2)  #1049 pc 7068
	addi	%x2, %x2, 8  #1049 pc 7072
	jal	%x1, read_net_item.2745  #1049 pc 7076
	addi	%x2, %x2, -8  #1049 pc 7080
	lw	%x1, 4(%x2) #1049 pc 7084
	addi	%x7, %x6, 0  #1049 pc 7088
	lw	%x6, 0(%x7)  #1050 pc 7092
	addi	%x31, %x0, -1  #pc 7096
	beq	%x6, %x31, 12  #1050 pc 7100
	j	be_else.9201 #pc 7104
	nop #pc 7108
	lw	%x6, 0(%x2)  #1051 pc 7112
	addi	%x6, %x6, 1  #1051 pc 7116
	j	create_array.2570  #1051 pc 7120
	nop #pc 7124
be_else.9201: #pc 7128
	lw	%x6, 0(%x2)  #1053 pc 7128
	addi	%x8, %x6, 1  #1053 pc 7132
	sw	%x7, 4(%x2)  #1053 pc 7136
	addi	%x6, %x8, 0  #0 pc 7140
	sw	%x1, 8(%x2)  #1053 pc 7144
	addi	%x2, %x2, 12  #1053 pc 7148
	jal	%x1, read_or_network.2747  #1053 pc 7152
	addi	%x2, %x2, -12  #1053 pc 7156
	lw	%x1, 8(%x2) #1053 pc 7160
	lw	%x7, 0(%x2)  #1054 pc 7164
	slli	%x7, %x7, 2  #1054 pc 7168
	lw	%x8, 4(%x2)  #1054 pc 7172
	add	%x31, %x7, %x6  #1054 pc 7176
	sw	%x8, 0(%x31)  #1054 pc 7180
	ret #pc 7184
	nop #pc 7188
read_and_network.2749:  #pc 7192
	lw	%x7, 4(%x29)  #0 pc 7192
	addi	%x8, %x0, 0  #0 pc 7196
	sw	%x29, 0(%x2)  #1058 pc 7200
	sw	%x7, 4(%x2)  #1058 pc 7204
	sw	%x6, 8(%x2)  #1058 pc 7208
	addi	%x6, %x8, 0  #0 pc 7212
	sw	%x1, 12(%x2)  #1058 pc 7216
	addi	%x2, %x2, 16  #1058 pc 7220
	jal	%x1, read_net_item.2745  #1058 pc 7224
	addi	%x2, %x2, -16  #1058 pc 7228
	lw	%x1, 12(%x2) #1058 pc 7232
	lw	%x7, 0(%x6)  #1059 pc 7236
	addi	%x31, %x0, -1  #pc 7240
	beq	%x7, %x31, 12  #1059 pc 7244
	j	be_else.9202 #pc 7248
	nop #pc 7252
	ret #pc 7256
	nop #pc 7260
be_else.9202: #pc 7264
	lw	%x7, 8(%x2)  #1061 pc 7264
	slli	%x8, %x7, 2  #1061 pc 7268
	lw	%x9, 4(%x2)  #1061 pc 7272
	add	%x31, %x8, %x9  #1061 pc 7276
	sw	%x6, 0(%x31)  #1061 pc 7280
	addi	%x6, %x7, 1  #1062 pc 7284
	lw	%x29, 0(%x2)  #1062 pc 7288
	lw	%x30, 0(%x29)  #1062 pc 7292
	jalr	%x0, %x30, 0  #1062 pc 7296
	nop #pc 7300
read_parameter.2751:  #pc 7304
	lw	%x6, 20(%x29)  #0 pc 7304
	lw	%x7, 16(%x29)  #0 pc 7308
	lw	%x8, 12(%x29)  #0 pc 7312
	lw	%x9, 8(%x29)  #0 pc 7316
	lw	%x10, 4(%x29)  #0 pc 7320
	sw	%x10, 0(%x2)  #1068 pc 7324
	sw	%x8, 4(%x2)  #1068 pc 7328
	sw	%x9, 8(%x2)  #1068 pc 7332
	sw	%x7, 12(%x2)  #1068 pc 7336
	addi	%x29, %x6, 0  #0 pc 7340
	sw	%x1, 16(%x2)  #1068 pc 7344
	lw	%x30, 0(%x29)  #1068 pc 7348
	addi	%x2, %x2, 20  #1068 pc 7352
	jalr	%x1, %x30, 0  #1068 pc 7356
	addi	%x2, %x2, -20  #1068 pc 7360
	lw	%x1, 16(%x2)  #1068 pc 7364
	lw	%x29, 12(%x2)  #1069 pc 7368
	sw	%x1, 16(%x2)  #1069 pc 7372
	lw	%x30, 0(%x29)  #1069 pc 7376
	addi	%x2, %x2, 20  #1069 pc 7380
	jalr	%x1, %x30, 0  #1069 pc 7384
	addi	%x2, %x2, -20  #1069 pc 7388
	lw	%x1, 16(%x2)  #1069 pc 7392
	lw	%x29, 8(%x2)  #1070 pc 7396
	sw	%x1, 16(%x2)  #1070 pc 7400
	lw	%x30, 0(%x29)  #1070 pc 7404
	addi	%x2, %x2, 20  #1070 pc 7408
	jalr	%x1, %x30, 0  #1070 pc 7412
	addi	%x2, %x2, -20  #1070 pc 7416
	lw	%x1, 16(%x2)  #1070 pc 7420
	addi	%x6, %x0, 0  #0 pc 7424
	lw	%x29, 4(%x2)  #1071 pc 7428
	sw	%x1, 16(%x2)  #1071 pc 7432
	lw	%x30, 0(%x29)  #1071 pc 7436
	addi	%x2, %x2, 20  #1071 pc 7440
	jalr	%x1, %x30, 0  #1071 pc 7444
	addi	%x2, %x2, -20  #1071 pc 7448
	lw	%x1, 16(%x2)  #1071 pc 7452
	addi	%x6, %x0, 0  #0 pc 7456
	sw	%x1, 16(%x2)  #1072 pc 7460
	addi	%x2, %x2, 20  #1072 pc 7464
	jal	%x1, read_or_network.2747  #1072 pc 7468
	addi	%x2, %x2, -20  #1072 pc 7472
	lw	%x1, 16(%x2) #1072 pc 7476
	lw	%x7, 0(%x2)  #1072 pc 7480
	sw	%x6, 0(%x7)  #1072 pc 7484
	ret #pc 7488
	nop #pc 7492
solver_rect_surface.2753:  #pc 7496
	lw	%x11, 4(%x29)  #0 pc 7496
	slli	%x12, %x8, 2  #1092 pc 7500
	add	%x31, %x12, %x7  #1092 pc 7504
	flw	%f3, 0(%x31)  #1092 pc 7508
	sw	%x11, 0(%x2)  #1092 pc 7512
	fsw	%f2, 8(%x2)  #1092 pc 7516
	sw	%x10, 16(%x2)  #1092 pc 7520
	fsw	%f1, 24(%x2)  #1092 pc 7524
	sw	%x9, 32(%x2)  #1092 pc 7528
	fsw	%f0, 40(%x2)  #1092 pc 7532
	sw	%x7, 48(%x2)  #1092 pc 7536
	sw	%x8, 52(%x2)  #1092 pc 7540
	sw	%x6, 56(%x2)  #1092 pc 7544
	fadd	%f0, %f3, %f30  #0 pc 7548
	sw	%x1, 60(%x2)  #1092 pc 7552
	addi	%x2, %x2, 64  #1092 pc 7556
	jal	%x1, fiszero.2509  #1092 pc 7560
	addi	%x2, %x2, -64  #1092 pc 7564
	lw	%x1, 60(%x2) #1092 pc 7568
	beq	%x6, %x0, 12  #1092 pc 7572
	j	be_else.9208 #pc 7576
	nop #pc 7580
	lw	%x6, 56(%x2)  #1093 pc 7584
	sw	%x1, 60(%x2)  #1093 pc 7588
	addi	%x2, %x2, 64  #1093 pc 7592
	jal	%x1, o_param_abc.2675  #1093 pc 7596
	addi	%x2, %x2, -64  #1093 pc 7600
	lw	%x1, 60(%x2) #1093 pc 7604
	lw	%x7, 56(%x2)  #1094 pc 7608
	sw	%x6, 60(%x2)  #1094 pc 7612
	addi	%x6, %x7, 0  #0 pc 7616
	sw	%x1, 64(%x2)  #1094 pc 7620
	addi	%x2, %x2, 68  #1094 pc 7624
	jal	%x1, o_isinvert.2665  #1094 pc 7628
	addi	%x2, %x2, -68  #1094 pc 7632
	lw	%x1, 64(%x2) #1094 pc 7636
	lw	%x7, 52(%x2)  #1094 pc 7640
	slli	%x8, %x7, 2  #1094 pc 7644
	lw	%x9, 48(%x2)  #1094 pc 7648
	add	%x31, %x8, %x9  #1094 pc 7652
	flw	%f0, 0(%x31)  #1094 pc 7656
	sw	%x6, 64(%x2)  #1094 pc 7660
	sw	%x1, 68(%x2)  #1094 pc 7664
	addi	%x2, %x2, 72  #1094 pc 7668
	jal	%x1, fisneg.2513  #1094 pc 7672
	addi	%x2, %x2, -72  #1094 pc 7676
	lw	%x1, 68(%x2) #1094 pc 7680
	addi	%x7, %x6, 0  #1094 pc 7684
	lw	%x6, 64(%x2)  #1094 pc 7688
	sw	%x1, 68(%x2)  #1094 pc 7692
	addi	%x2, %x2, 72  #1094 pc 7696
	jal	%x1, xor.2610  #1094 pc 7700
	addi	%x2, %x2, -72  #1094 pc 7704
	lw	%x1, 68(%x2) #1094 pc 7708
	lw	%x7, 52(%x2)  #1094 pc 7712
	slli	%x8, %x7, 2  #1094 pc 7716
	lw	%x9, 60(%x2)  #1094 pc 7720
	add	%x31, %x8, %x9  #1094 pc 7724
	flw	%f0, 0(%x31)  #1094 pc 7728
	sw	%x1, 68(%x2)  #1094 pc 7732
	addi	%x2, %x2, 72  #1094 pc 7736
	jal	%x1, fneg_cond.2615  #1094 pc 7740
	addi	%x2, %x2, -72  #1094 pc 7744
	lw	%x1, 68(%x2) #1094 pc 7748
	flw	%f1, 40(%x2)  #1096 pc 7752
	fsub	%f0, %f0, %f1  #1096 pc 7756
	lw	%x6, 52(%x2)  #1096 pc 7760
	slli	%x6, %x6, 2  #1096 pc 7764
	lw	%x7, 48(%x2)  #1096 pc 7768
	add	%x31, %x6, %x7  #1096 pc 7772
	flw	%f1, 0(%x31)  #1096 pc 7776
	fdiv	%f0, %f0, %f1  #1096 pc 7780
	lw	%x6, 32(%x2)  #1097 pc 7784
	slli	%x8, %x6, 2  #1097 pc 7788
	add	%x31, %x8, %x7  #1097 pc 7792
	flw	%f1, 0(%x31)  #1097 pc 7796
	fmul	%f1, %f0, %f1  #1097 pc 7800
	flw	%f2, 24(%x2)  #1097 pc 7804
	fadd	%f1, %f1, %f2  #1097 pc 7808
	fabs	%f1, %f1  #1097 pc 7812
	slli	%x6, %x6, 2  #1097 pc 7816
	lw	%x8, 60(%x2)  #1097 pc 7820
	add	%x31, %x6, %x8  #1097 pc 7824
	flw	%f2, 0(%x31)  #1097 pc 7828
	fsw	%f0, 72(%x2)  #1097 pc 7832
	fadd	%f0, %f1, %f30  #0 pc 7836
	fadd	%f1, %f2, %f30  #0 pc 7840
	sw	%x1, 80(%x2)  #1097 pc 7844
	addi	%x2, %x2, 84  #1097 pc 7848
	jal	%x1, fless.2521  #1097 pc 7852
	addi	%x2, %x2, -84  #1097 pc 7856
	lw	%x1, 80(%x2) #1097 pc 7860
	beq	%x6, %x0, 12  #1097 pc 7864
	j	be_else.9210 #pc 7868
	nop #pc 7872
	addi	%x6, %x0, 0  #0 pc 7876
	ret #pc 7880
	nop #pc 7884
be_else.9210: #pc 7888
	lw	%x6, 16(%x2)  #1098 pc 7888
	slli	%x7, %x6, 2  #1098 pc 7892
	lw	%x8, 48(%x2)  #1098 pc 7896
	add	%x31, %x7, %x8  #1098 pc 7900
	flw	%f0, 0(%x31)  #1098 pc 7904
	flw	%f1, 72(%x2)  #1098 pc 7908
	fmul	%f0, %f1, %f0  #1098 pc 7912
	flw	%f2, 8(%x2)  #1098 pc 7916
	fadd	%f0, %f0, %f2  #1098 pc 7920
	fabs	%f0, %f0  #1098 pc 7924
	slli	%x6, %x6, 2  #1098 pc 7928
	lw	%x7, 60(%x2)  #1098 pc 7932
	add	%x31, %x6, %x7  #1098 pc 7936
	flw	%f2, 0(%x31)  #1098 pc 7940
	fadd	%f1, %f2, %f30  #0 pc 7944
	sw	%x1, 80(%x2)  #1098 pc 7948
	addi	%x2, %x2, 84  #1098 pc 7952
	jal	%x1, fless.2521  #1098 pc 7956
	addi	%x2, %x2, -84  #1098 pc 7960
	lw	%x1, 80(%x2) #1098 pc 7964
	beq	%x6, %x0, 12  #1098 pc 7968
	j	be_else.9211 #pc 7972
	nop #pc 7976
	addi	%x6, %x0, 0  #0 pc 7980
	ret #pc 7984
	nop #pc 7988
be_else.9211: #pc 7992
	lw	%x6, 0(%x2)  #1099 pc 7992
	flw	%f0, 72(%x2)  #1099 pc 7996
	fsw	%f0, 0(%x6)  #1099 pc 8000
	addi	%x6, %x0, 1  #0 pc 8004
	ret #pc 8008
	nop #pc 8012
be_else.9208: #pc 8016
	addi	%x6, %x0, 0  #0 pc 8016
	ret #pc 8020
	nop #pc 8024
solver_rect.2762:  #pc 8028
	lw	%x29, 4(%x29)  #0 pc 8028
	addi	%x8, %x0, 0  #0 pc 8032
	addi	%x9, %x0, 1  #0 pc 8036
	addi	%x10, %x0, 2  #0 pc 8040
	fsw	%f0, 0(%x2)  #1107 pc 8044
	fsw	%f2, 8(%x2)  #1107 pc 8048
	fsw	%f1, 16(%x2)  #1107 pc 8052
	sw	%x7, 24(%x2)  #1107 pc 8056
	sw	%x6, 28(%x2)  #1107 pc 8060
	sw	%x29, 32(%x2)  #1107 pc 8064
	sw	%x1, 36(%x2)  #1107 pc 8068
	lw	%x30, 0(%x29)  #1107 pc 8072
	addi	%x2, %x2, 40  #1107 pc 8076
	jalr	%x1, %x30, 0  #1107 pc 8080
	addi	%x2, %x2, -40  #1107 pc 8084
	lw	%x1, 36(%x2)  #1107 pc 8088
	beq	%x6, %x0, 12  #1107 pc 8092
	j	be_else.9212 #pc 8096
	nop #pc 8100
	addi	%x8, %x0, 1  #0 pc 8104
	addi	%x9, %x0, 2  #0 pc 8108
	addi	%x10, %x0, 0  #0 pc 8112
	flw	%f0, 16(%x2)  #1108 pc 8116
	flw	%f1, 8(%x2)  #1108 pc 8120
	flw	%f2, 0(%x2)  #1108 pc 8124
	lw	%x6, 28(%x2)  #1108 pc 8128
	lw	%x7, 24(%x2)  #1108 pc 8132
	lw	%x29, 32(%x2)  #1108 pc 8136
	sw	%x1, 36(%x2)  #1108 pc 8140
	lw	%x30, 0(%x29)  #1108 pc 8144
	addi	%x2, %x2, 40  #1108 pc 8148
	jalr	%x1, %x30, 0  #1108 pc 8152
	addi	%x2, %x2, -40  #1108 pc 8156
	lw	%x1, 36(%x2)  #1108 pc 8160
	beq	%x6, %x0, 12  #1108 pc 8164
	j	be_else.9213 #pc 8168
	nop #pc 8172
	addi	%x8, %x0, 2  #0 pc 8176
	addi	%x9, %x0, 0  #0 pc 8180
	addi	%x10, %x0, 1  #0 pc 8184
	flw	%f0, 8(%x2)  #1109 pc 8188
	flw	%f1, 0(%x2)  #1109 pc 8192
	flw	%f2, 16(%x2)  #1109 pc 8196
	lw	%x6, 28(%x2)  #1109 pc 8200
	lw	%x7, 24(%x2)  #1109 pc 8204
	lw	%x29, 32(%x2)  #1109 pc 8208
	sw	%x1, 36(%x2)  #1109 pc 8212
	lw	%x30, 0(%x29)  #1109 pc 8216
	addi	%x2, %x2, 40  #1109 pc 8220
	jalr	%x1, %x30, 0  #1109 pc 8224
	addi	%x2, %x2, -40  #1109 pc 8228
	lw	%x1, 36(%x2)  #1109 pc 8232
	beq	%x6, %x0, 12  #1109 pc 8236
	j	be_else.9214 #pc 8240
	nop #pc 8244
	addi	%x6, %x0, 0  #0 pc 8248
	ret #pc 8252
	nop #pc 8256
be_else.9214: #pc 8260
	addi	%x6, %x0, 3  #0 pc 8260
	ret #pc 8264
	nop #pc 8268
be_else.9213: #pc 8272
	addi	%x6, %x0, 2  #0 pc 8272
	ret #pc 8276
	nop #pc 8280
be_else.9212: #pc 8284
	addi	%x6, %x0, 1  #0 pc 8284
	ret #pc 8288
	nop #pc 8292
solver_surface.2768:  #pc 8296
	lw	%x8, 4(%x29)  #1118 pc 8296
	sw	%x8, 0(%x2)  #1118 pc 8300
	fsw	%f2, 8(%x2)  #1118 pc 8304
	fsw	%f1, 16(%x2)  #1118 pc 8308
	fsw	%f0, 24(%x2)  #1118 pc 8312
	sw	%x7, 32(%x2)  #1118 pc 8316
	sw	%x1, 36(%x2)  #1118 pc 8320
	addi	%x2, %x2, 40  #1118 pc 8324
	jal	%x1, o_param_abc.2675  #1118 pc 8328
	addi	%x2, %x2, -40  #1118 pc 8332
	lw	%x1, 36(%x2) #1118 pc 8336
	addi	%x7, %x6, 0  #1118 pc 8340
	lw	%x6, 32(%x2)  #1119 pc 8344
	sw	%x7, 36(%x2)  #1119 pc 8348
	sw	%x1, 40(%x2)  #1119 pc 8352
	addi	%x2, %x2, 44  #1119 pc 8356
	jal	%x1, veciprod.2637  #1119 pc 8360
	addi	%x2, %x2, -44  #1119 pc 8364
	lw	%x1, 40(%x2) #1119 pc 8368
	fsw	%f0, 40(%x2)  #1120 pc 8372
	sw	%x1, 48(%x2)  #1120 pc 8376
	addi	%x2, %x2, 52  #1120 pc 8380
	jal	%x1, fispos.2511  #1120 pc 8384
	addi	%x2, %x2, -52  #1120 pc 8388
	lw	%x1, 48(%x2) #1120 pc 8392
	beq	%x6, %x0, 12  #1120 pc 8396
	j	be_else.9216 #pc 8400
	nop #pc 8404
	addi	%x6, %x0, 0  #0 pc 8408
	ret #pc 8412
	nop #pc 8416
be_else.9216: #pc 8420
	flw	%f0, 24(%x2)  #1121 pc 8420
	flw	%f1, 16(%x2)  #1121 pc 8424
	flw	%f2, 8(%x2)  #1121 pc 8428
	lw	%x6, 36(%x2)  #1121 pc 8432
	sw	%x1, 48(%x2)  #1121 pc 8436
	addi	%x2, %x2, 52  #1121 pc 8440
	jal	%x1, veciprod2.2640  #1121 pc 8444
	addi	%x2, %x2, -52  #1121 pc 8448
	lw	%x1, 48(%x2) #1121 pc 8452
	sw	%x1, 48(%x2)  #1121 pc 8456
	addi	%x2, %x2, 52  #1121 pc 8460
	jal	%x1, fneg.2515  #1121 pc 8464
	addi	%x2, %x2, -52  #1121 pc 8468
	lw	%x1, 48(%x2) #1121 pc 8472
	flw	%f1, 40(%x2)  #1121 pc 8476
	fdiv	%f0, %f0, %f1  #1121 pc 8480
	lw	%x6, 0(%x2)  #1121 pc 8484
	fsw	%f0, 0(%x6)  #1121 pc 8488
	addi	%x6, %x0, 1  #0 pc 8492
	ret #pc 8496
	nop #pc 8500
quadratic.2774:  #pc 8504
	fsw	%f0, 0(%x2)  #1131 pc 8504
	fsw	%f2, 8(%x2)  #1131 pc 8508
	fsw	%f1, 16(%x2)  #1131 pc 8512
	sw	%x6, 24(%x2)  #1131 pc 8516
	sw	%x1, 28(%x2)  #1131 pc 8520
	addi	%x2, %x2, 32  #1131 pc 8524
	jal	%x1, fsqr.2517  #1131 pc 8528
	addi	%x2, %x2, -32  #1131 pc 8532
	lw	%x1, 28(%x2) #1131 pc 8536
	lw	%x6, 24(%x2)  #1131 pc 8540
	fsw	%f0, 32(%x2)  #1131 pc 8544
	sw	%x1, 40(%x2)  #1131 pc 8548
	addi	%x2, %x2, 44  #1131 pc 8552
	jal	%x1, o_param_a.2669  #1131 pc 8556
	addi	%x2, %x2, -44  #1131 pc 8560
	lw	%x1, 40(%x2) #1131 pc 8564
	flw	%f1, 32(%x2)  #1131 pc 8568
	fmul	%f0, %f1, %f0  #1131 pc 8572
	flw	%f1, 16(%x2)  #1131 pc 8576
	fsw	%f0, 40(%x2)  #1131 pc 8580
	fadd	%f0, %f1, %f30  #0 pc 8584
	sw	%x1, 48(%x2)  #1131 pc 8588
	addi	%x2, %x2, 52  #1131 pc 8592
	jal	%x1, fsqr.2517  #1131 pc 8596
	addi	%x2, %x2, -52  #1131 pc 8600
	lw	%x1, 48(%x2) #1131 pc 8604
	lw	%x6, 24(%x2)  #1131 pc 8608
	fsw	%f0, 48(%x2)  #1131 pc 8612
	sw	%x1, 56(%x2)  #1131 pc 8616
	addi	%x2, %x2, 60  #1131 pc 8620
	jal	%x1, o_param_b.2671  #1131 pc 8624
	addi	%x2, %x2, -60  #1131 pc 8628
	lw	%x1, 56(%x2) #1131 pc 8632
	flw	%f1, 48(%x2)  #1131 pc 8636
	fmul	%f0, %f1, %f0  #1131 pc 8640
	flw	%f1, 40(%x2)  #1131 pc 8644
	fadd	%f0, %f1, %f0  #1131 pc 8648
	flw	%f1, 8(%x2)  #1131 pc 8652
	fsw	%f0, 56(%x2)  #1131 pc 8656
	fadd	%f0, %f1, %f30  #0 pc 8660
	sw	%x1, 64(%x2)  #1131 pc 8664
	addi	%x2, %x2, 68  #1131 pc 8668
	jal	%x1, fsqr.2517  #1131 pc 8672
	addi	%x2, %x2, -68  #1131 pc 8676
	lw	%x1, 64(%x2) #1131 pc 8680
	lw	%x6, 24(%x2)  #1131 pc 8684
	fsw	%f0, 64(%x2)  #1131 pc 8688
	sw	%x1, 72(%x2)  #1131 pc 8692
	addi	%x2, %x2, 76  #1131 pc 8696
	jal	%x1, o_param_c.2673  #1131 pc 8700
	addi	%x2, %x2, -76  #1131 pc 8704
	lw	%x1, 72(%x2) #1131 pc 8708
	flw	%f1, 64(%x2)  #1131 pc 8712
	fmul	%f0, %f1, %f0  #1131 pc 8716
	flw	%f1, 56(%x2)  #1131 pc 8720
	fadd	%f0, %f1, %f0  #1131 pc 8724
	lw	%x6, 24(%x2)  #1133 pc 8728
	fsw	%f0, 72(%x2)  #1133 pc 8732
	sw	%x1, 80(%x2)  #1133 pc 8736
	addi	%x2, %x2, 84  #1133 pc 8740
	jal	%x1, o_isrot.2667  #1133 pc 8744
	addi	%x2, %x2, -84  #1133 pc 8748
	lw	%x1, 80(%x2) #1133 pc 8752
	beq	%x6, %x0, 12  #1133 pc 8756
	j	be_else.9218 #pc 8760
	nop #pc 8764
	flw	%f0, 72(%x2)  #1134 pc 8768
	ret #pc 8772
	nop #pc 8776
be_else.9218: #pc 8780
	flw	%f0, 8(%x2)  #1137 pc 8780
	flw	%f1, 16(%x2)  #1137 pc 8784
	fmul	%f2, %f1, %f0  #1137 pc 8788
	lw	%x6, 24(%x2)  #1137 pc 8792
	fsw	%f2, 80(%x2)  #1137 pc 8796
	sw	%x1, 88(%x2)  #1137 pc 8800
	addi	%x2, %x2, 92  #1137 pc 8804
	jal	%x1, o_param_r1.2693  #1137 pc 8808
	addi	%x2, %x2, -92  #1137 pc 8812
	lw	%x1, 88(%x2) #1137 pc 8816
	flw	%f1, 80(%x2)  #1137 pc 8820
	fmul	%f0, %f1, %f0  #1137 pc 8824
	flw	%f1, 72(%x2)  #1136 pc 8828
	fadd	%f0, %f1, %f0  #1136 pc 8832
	flw	%f1, 0(%x2)  #1138 pc 8836
	flw	%f2, 8(%x2)  #1138 pc 8840
	fmul	%f2, %f2, %f1  #1138 pc 8844
	lw	%x6, 24(%x2)  #1138 pc 8848
	fsw	%f0, 88(%x2)  #1138 pc 8852
	fsw	%f2, 96(%x2)  #1138 pc 8856
	sw	%x1, 104(%x2)  #1138 pc 8860
	addi	%x2, %x2, 108  #1138 pc 8864
	jal	%x1, o_param_r2.2695  #1138 pc 8868
	addi	%x2, %x2, -108  #1138 pc 8872
	lw	%x1, 104(%x2) #1138 pc 8876
	flw	%f1, 96(%x2)  #1138 pc 8880
	fmul	%f0, %f1, %f0  #1138 pc 8884
	flw	%f1, 88(%x2)  #1136 pc 8888
	fadd	%f0, %f1, %f0  #1136 pc 8892
	flw	%f1, 16(%x2)  #1139 pc 8896
	flw	%f2, 0(%x2)  #1139 pc 8900
	fmul	%f1, %f2, %f1  #1139 pc 8904
	lw	%x6, 24(%x2)  #1139 pc 8908
	fsw	%f0, 104(%x2)  #1139 pc 8912
	fsw	%f1, 112(%x2)  #1139 pc 8916
	sw	%x1, 120(%x2)  #1139 pc 8920
	addi	%x2, %x2, 124  #1139 pc 8924
	jal	%x1, o_param_r3.2697  #1139 pc 8928
	addi	%x2, %x2, -124  #1139 pc 8932
	lw	%x1, 120(%x2) #1139 pc 8936
	flw	%f1, 112(%x2)  #1139 pc 8940
	fmul	%f0, %f1, %f0  #1139 pc 8944
	flw	%f1, 104(%x2)  #1136 pc 8948
	fadd	%f0, %f1, %f0  #1136 pc 8952
	ret #pc 8956
	nop #pc 8960
bilinear.2779:  #pc 8964
	fmul	%f6, %f0, %f3  #1145 pc 8964
	fsw	%f3, 0(%x2)  #1145 pc 8968
	fsw	%f0, 8(%x2)  #1145 pc 8972
	fsw	%f5, 16(%x2)  #1145 pc 8976
	fsw	%f2, 24(%x2)  #1145 pc 8980
	sw	%x6, 32(%x2)  #1145 pc 8984
	fsw	%f4, 40(%x2)  #1145 pc 8988
	fsw	%f1, 48(%x2)  #1145 pc 8992
	fsw	%f6, 56(%x2)  #1145 pc 8996
	sw	%x1, 64(%x2)  #1145 pc 9000
	addi	%x2, %x2, 68  #1145 pc 9004
	jal	%x1, o_param_a.2669  #1145 pc 9008
	addi	%x2, %x2, -68  #1145 pc 9012
	lw	%x1, 64(%x2) #1145 pc 9016
	flw	%f1, 56(%x2)  #1145 pc 9020
	fmul	%f0, %f1, %f0  #1145 pc 9024
	flw	%f1, 40(%x2)  #1146 pc 9028
	flw	%f2, 48(%x2)  #1146 pc 9032
	fmul	%f3, %f2, %f1  #1146 pc 9036
	lw	%x6, 32(%x2)  #1146 pc 9040
	fsw	%f0, 64(%x2)  #1146 pc 9044
	fsw	%f3, 72(%x2)  #1146 pc 9048
	sw	%x1, 80(%x2)  #1146 pc 9052
	addi	%x2, %x2, 84  #1146 pc 9056
	jal	%x1, o_param_b.2671  #1146 pc 9060
	addi	%x2, %x2, -84  #1146 pc 9064
	lw	%x1, 80(%x2) #1146 pc 9068
	flw	%f1, 72(%x2)  #1146 pc 9072
	fmul	%f0, %f1, %f0  #1146 pc 9076
	flw	%f1, 64(%x2)  #1145 pc 9080
	fadd	%f0, %f1, %f0  #1145 pc 9084
	flw	%f1, 16(%x2)  #1147 pc 9088
	flw	%f2, 24(%x2)  #1147 pc 9092
	fmul	%f3, %f2, %f1  #1147 pc 9096
	lw	%x6, 32(%x2)  #1147 pc 9100
	fsw	%f0, 80(%x2)  #1147 pc 9104
	fsw	%f3, 88(%x2)  #1147 pc 9108
	sw	%x1, 96(%x2)  #1147 pc 9112
	addi	%x2, %x2, 100  #1147 pc 9116
	jal	%x1, o_param_c.2673  #1147 pc 9120
	addi	%x2, %x2, -100  #1147 pc 9124
	lw	%x1, 96(%x2) #1147 pc 9128
	flw	%f1, 88(%x2)  #1147 pc 9132
	fmul	%f0, %f1, %f0  #1147 pc 9136
	flw	%f1, 80(%x2)  #1145 pc 9140
	fadd	%f0, %f1, %f0  #1145 pc 9144
	lw	%x6, 32(%x2)  #1149 pc 9148
	fsw	%f0, 96(%x2)  #1149 pc 9152
	sw	%x1, 104(%x2)  #1149 pc 9156
	addi	%x2, %x2, 108  #1149 pc 9160
	jal	%x1, o_isrot.2667  #1149 pc 9164
	addi	%x2, %x2, -108  #1149 pc 9168
	lw	%x1, 104(%x2) #1149 pc 9172
	beq	%x6, %x0, 12  #1149 pc 9176
	j	be_else.9220 #pc 9180
	nop #pc 9184
	flw	%f0, 96(%x2)  #1150 pc 9188
	ret #pc 9192
	nop #pc 9196
be_else.9220: #pc 9200
	flw	%f0, 40(%x2)  #1153 pc 9200
	flw	%f1, 24(%x2)  #1153 pc 9204
	fmul	%f2, %f1, %f0  #1153 pc 9208
	flw	%f3, 16(%x2)  #1153 pc 9212
	flw	%f4, 48(%x2)  #1153 pc 9216
	fmul	%f5, %f4, %f3  #1153 pc 9220
	fadd	%f2, %f2, %f5  #1153 pc 9224
	lw	%x6, 32(%x2)  #1153 pc 9228
	fsw	%f2, 104(%x2)  #1153 pc 9232
	sw	%x1, 112(%x2)  #1153 pc 9236
	addi	%x2, %x2, 116  #1153 pc 9240
	jal	%x1, o_param_r1.2693  #1153 pc 9244
	addi	%x2, %x2, -116  #1153 pc 9248
	lw	%x1, 112(%x2) #1153 pc 9252
	flw	%f1, 104(%x2)  #1153 pc 9256
	fmul	%f0, %f1, %f0  #1153 pc 9260
	flw	%f1, 16(%x2)  #1154 pc 9264
	flw	%f2, 8(%x2)  #1154 pc 9268
	fmul	%f1, %f2, %f1  #1154 pc 9272
	flw	%f3, 0(%x2)  #1154 pc 9276
	flw	%f4, 24(%x2)  #1154 pc 9280
	fmul	%f4, %f4, %f3  #1154 pc 9284
	fadd	%f1, %f1, %f4  #1154 pc 9288
	lw	%x6, 32(%x2)  #1154 pc 9292
	fsw	%f0, 112(%x2)  #1154 pc 9296
	fsw	%f1, 120(%x2)  #1154 pc 9300
	sw	%x1, 128(%x2)  #1154 pc 9304
	addi	%x2, %x2, 132  #1154 pc 9308
	jal	%x1, o_param_r2.2695  #1154 pc 9312
	addi	%x2, %x2, -132  #1154 pc 9316
	lw	%x1, 128(%x2) #1154 pc 9320
	flw	%f1, 120(%x2)  #1154 pc 9324
	fmul	%f0, %f1, %f0  #1154 pc 9328
	flw	%f1, 112(%x2)  #1153 pc 9332
	fadd	%f0, %f1, %f0  #1153 pc 9336
	flw	%f1, 40(%x2)  #1155 pc 9340
	flw	%f2, 8(%x2)  #1155 pc 9344
	fmul	%f1, %f2, %f1  #1155 pc 9348
	flw	%f2, 0(%x2)  #1155 pc 9352
	flw	%f3, 48(%x2)  #1155 pc 9356
	fmul	%f2, %f3, %f2  #1155 pc 9360
	fadd	%f1, %f1, %f2  #1155 pc 9364
	lw	%x6, 32(%x2)  #1155 pc 9368
	fsw	%f0, 128(%x2)  #1155 pc 9372
	fsw	%f1, 136(%x2)  #1155 pc 9376
	sw	%x1, 144(%x2)  #1155 pc 9380
	addi	%x2, %x2, 148  #1155 pc 9384
	jal	%x1, o_param_r3.2697  #1155 pc 9388
	addi	%x2, %x2, -148  #1155 pc 9392
	lw	%x1, 144(%x2) #1155 pc 9396
	flw	%f1, 136(%x2)  #1155 pc 9400
	fmul	%f0, %f1, %f0  #1155 pc 9404
	flw	%f1, 128(%x2)  #1153 pc 9408
	fadd	%f0, %f1, %f0  #1153 pc 9412
	sw	%x1, 144(%x2)  #1152 pc 9416
	addi	%x2, %x2, 148  #1152 pc 9420
	jal	%x1, fhalf.2519  #1152 pc 9424
	addi	%x2, %x2, -148  #1152 pc 9428
	lw	%x1, 144(%x2) #1152 pc 9432
	flw	%f1, 96(%x2)  #1152 pc 9436
	fadd	%f0, %f1, %f0  #1152 pc 9440
	ret #pc 9444
	nop #pc 9448
solver_second.2787:  #pc 9452
	lw	%x8, 4(%x29)  #0 pc 9452
	flw	%f3, 0(%x7)  #1170 pc 9456
	flw	%f4, 4(%x7)  #1170 pc 9460
	flw	%f5, 8(%x7)  #1170 pc 9464
	sw	%x8, 0(%x2)  #1170 pc 9468
	fsw	%f2, 8(%x2)  #1170 pc 9472
	fsw	%f1, 16(%x2)  #1170 pc 9476
	fsw	%f0, 24(%x2)  #1170 pc 9480
	sw	%x6, 32(%x2)  #1170 pc 9484
	sw	%x7, 36(%x2)  #1170 pc 9488
	fadd	%f2, %f5, %f30  #0 pc 9492
	fadd	%f1, %f4, %f30  #0 pc 9496
	fadd	%f0, %f3, %f30  #0 pc 9500
	sw	%x1, 40(%x2)  #1170 pc 9504
	addi	%x2, %x2, 44  #1170 pc 9508
	jal	%x1, quadratic.2774  #1170 pc 9512
	addi	%x2, %x2, -44  #1170 pc 9516
	lw	%x1, 40(%x2) #1170 pc 9520
	fsw	%f0, 40(%x2)  #1172 pc 9524
	sw	%x1, 48(%x2)  #1172 pc 9528
	addi	%x2, %x2, 52  #1172 pc 9532
	jal	%x1, fiszero.2509  #1172 pc 9536
	addi	%x2, %x2, -52  #1172 pc 9540
	lw	%x1, 48(%x2) #1172 pc 9544
	beq	%x6, %x0, 12  #1172 pc 9548
	j	be_else.9222 #pc 9552
	nop #pc 9556
	lw	%x6, 36(%x2)  #1177 pc 9560
	flw	%f0, 0(%x6)  #1177 pc 9564
	flw	%f1, 4(%x6)  #1177 pc 9568
	flw	%f2, 8(%x6)  #1177 pc 9572
	flw	%f3, 24(%x2)  #1177 pc 9576
	flw	%f4, 16(%x2)  #1177 pc 9580
	flw	%f5, 8(%x2)  #1177 pc 9584
	lw	%x6, 32(%x2)  #1177 pc 9588
	sw	%x1, 48(%x2)  #1177 pc 9592
	addi	%x2, %x2, 52  #1177 pc 9596
	jal	%x1, bilinear.2779  #1177 pc 9600
	addi	%x2, %x2, -52  #1177 pc 9604
	lw	%x1, 48(%x2) #1177 pc 9608
	flw	%f1, 24(%x2)  #1179 pc 9612
	flw	%f2, 16(%x2)  #1179 pc 9616
	flw	%f3, 8(%x2)  #1179 pc 9620
	lw	%x6, 32(%x2)  #1179 pc 9624
	fsw	%f0, 48(%x2)  #1179 pc 9628
	fadd	%f0, %f1, %f30  #0 pc 9632
	fadd	%f1, %f2, %f30  #0 pc 9636
	fadd	%f2, %f3, %f30  #0 pc 9640
	sw	%x1, 56(%x2)  #1179 pc 9644
	addi	%x2, %x2, 60  #1179 pc 9648
	jal	%x1, quadratic.2774  #1179 pc 9652
	addi	%x2, %x2, -60  #1179 pc 9656
	lw	%x1, 56(%x2) #1179 pc 9660
	lw	%x6, 32(%x2)  #1180 pc 9664
	fsw	%f0, 56(%x2)  #1180 pc 9668
	sw	%x1, 64(%x2)  #1180 pc 9672
	addi	%x2, %x2, 68  #1180 pc 9676
	jal	%x1, o_form.2661  #1180 pc 9680
	addi	%x2, %x2, -68  #1180 pc 9684
	lw	%x1, 64(%x2) #1180 pc 9688
	addi	%x31, %x0, 3  #pc 9692
	beq	%x6, %x31, 12  #1180 pc 9696
	j	be_else.9223 #pc 9700
	nop #pc 9704
	fmv	%f0, l.6263  #0 pc 9708
	flw	%f1, 56(%x2)  #1180 pc 9712
	fsub	%f0, %f1, %f0  #1180 pc 9716
	j	be_cont.9224 #pc 9720
	nop #pc 9724
be_else.9223: #pc 9728
	flw	%f0, 56(%x2)  #1180 pc 9728
be_cont.9224: #pc 9732
	flw	%f1, 48(%x2)  #1182 pc 9732
	fsw	%f0, 64(%x2)  #1182 pc 9736
	fadd	%f0, %f1, %f30  #0 pc 9740
	sw	%x1, 72(%x2)  #1182 pc 9744
	addi	%x2, %x2, 76  #1182 pc 9748
	jal	%x1, fsqr.2517  #1182 pc 9752
	addi	%x2, %x2, -76  #1182 pc 9756
	lw	%x1, 72(%x2) #1182 pc 9760
	flw	%f1, 64(%x2)  #1182 pc 9764
	flw	%f2, 40(%x2)  #1182 pc 9768
	fmul	%f1, %f2, %f1  #1182 pc 9772
	fsub	%f0, %f0, %f1  #1182 pc 9776
	fsw	%f0, 72(%x2)  #1184 pc 9780
	sw	%x1, 80(%x2)  #1184 pc 9784
	addi	%x2, %x2, 84  #1184 pc 9788
	jal	%x1, fispos.2511  #1184 pc 9792
	addi	%x2, %x2, -84  #1184 pc 9796
	lw	%x1, 80(%x2) #1184 pc 9800
	beq	%x6, %x0, 12  #1184 pc 9804
	j	be_else.9225 #pc 9808
	nop #pc 9812
	addi	%x6, %x0, 0  #0 pc 9816
	ret #pc 9820
	nop #pc 9824
be_else.9225: #pc 9828
	flw	%f0, 72(%x2)  #1185 pc 9828
	fsqrt	%f0, %f0  #1185 pc 9832
	lw	%x6, 32(%x2)  #1186 pc 9836
	fsw	%f0, 80(%x2)  #1186 pc 9840
	sw	%x1, 88(%x2)  #1186 pc 9844
	addi	%x2, %x2, 92  #1186 pc 9848
	jal	%x1, o_isinvert.2665  #1186 pc 9852
	addi	%x2, %x2, -92  #1186 pc 9856
	lw	%x1, 88(%x2) #1186 pc 9860
	beq	%x6, %x0, 12  #1186 pc 9864
	j	be_else.9226 #pc 9868
	nop #pc 9872
	flw	%f0, 80(%x2)  #1186 pc 9876
	sw	%x1, 88(%x2)  #1186 pc 9880
	addi	%x2, %x2, 92  #1186 pc 9884
	jal	%x1, fneg.2515  #1186 pc 9888
	addi	%x2, %x2, -92  #1186 pc 9892
	lw	%x1, 88(%x2) #1186 pc 9896
	j	be_cont.9227 #pc 9900
	nop #pc 9904
be_else.9226: #pc 9908
	flw	%f0, 80(%x2)  #1186 pc 9908
be_cont.9227: #pc 9912
	flw	%f1, 48(%x2)  #1187 pc 9912
	fsub	%f0, %f0, %f1  #1187 pc 9916
	flw	%f1, 40(%x2)  #1187 pc 9920
	fdiv	%f0, %f0, %f1  #1187 pc 9924
	lw	%x6, 0(%x2)  #1187 pc 9928
	fsw	%f0, 0(%x6)  #1187 pc 9932
	addi	%x6, %x0, 1  #0 pc 9936
	ret #pc 9940
	nop #pc 9944
be_else.9222: #pc 9948
	addi	%x6, %x0, 0  #0 pc 9948
	ret #pc 9952
	nop #pc 9956
solver.2793:  #pc 9960
	lw	%x9, 16(%x29)  #1196 pc 9960
	lw	%x10, 12(%x29)  #1196 pc 9964
	lw	%x11, 8(%x29)  #1196 pc 9968
	lw	%x12, 4(%x29)  #1196 pc 9972
	slli	%x6, %x6, 2  #1196 pc 9976
	add	%x31, %x6, %x12  #1196 pc 9980
	lw	%x6, 0(%x31)  #1196 pc 9984
	flw	%f0, 0(%x8)  #1198 pc 9988
	sw	%x10, 0(%x2)  #1198 pc 9992
	sw	%x9, 4(%x2)  #1198 pc 9996
	sw	%x7, 8(%x2)  #1198 pc 10000
	sw	%x11, 12(%x2)  #1198 pc 10004
	sw	%x6, 16(%x2)  #1198 pc 10008
	sw	%x8, 20(%x2)  #1198 pc 10012
	fsw	%f0, 24(%x2)  #1198 pc 10016
	sw	%x1, 32(%x2)  #1198 pc 10020
	addi	%x2, %x2, 36  #1198 pc 10024
	jal	%x1, o_param_x.2677  #1198 pc 10028
	addi	%x2, %x2, -36  #1198 pc 10032
	lw	%x1, 32(%x2) #1198 pc 10036
	flw	%f1, 24(%x2)  #1198 pc 10040
	fsub	%f0, %f1, %f0  #1198 pc 10044
	lw	%x6, 20(%x2)  #1199 pc 10048
	flw	%f1, 4(%x6)  #1199 pc 10052
	lw	%x7, 16(%x2)  #1199 pc 10056
	fsw	%f0, 32(%x2)  #1199 pc 10060
	fsw	%f1, 40(%x2)  #1199 pc 10064
	addi	%x6, %x7, 0  #0 pc 10068
	sw	%x1, 48(%x2)  #1199 pc 10072
	addi	%x2, %x2, 52  #1199 pc 10076
	jal	%x1, o_param_y.2679  #1199 pc 10080
	addi	%x2, %x2, -52  #1199 pc 10084
	lw	%x1, 48(%x2) #1199 pc 10088
	flw	%f1, 40(%x2)  #1199 pc 10092
	fsub	%f0, %f1, %f0  #1199 pc 10096
	lw	%x6, 20(%x2)  #1200 pc 10100
	flw	%f1, 8(%x6)  #1200 pc 10104
	lw	%x6, 16(%x2)  #1200 pc 10108
	fsw	%f0, 48(%x2)  #1200 pc 10112
	fsw	%f1, 56(%x2)  #1200 pc 10116
	sw	%x1, 64(%x2)  #1200 pc 10120
	addi	%x2, %x2, 68  #1200 pc 10124
	jal	%x1, o_param_z.2681  #1200 pc 10128
	addi	%x2, %x2, -68  #1200 pc 10132
	lw	%x1, 64(%x2) #1200 pc 10136
	flw	%f1, 56(%x2)  #1200 pc 10140
	fsub	%f0, %f1, %f0  #1200 pc 10144
	lw	%x6, 16(%x2)  #1201 pc 10148
	fsw	%f0, 64(%x2)  #1201 pc 10152
	sw	%x1, 72(%x2)  #1201 pc 10156
	addi	%x2, %x2, 76  #1201 pc 10160
	jal	%x1, o_form.2661  #1201 pc 10164
	addi	%x2, %x2, -76  #1201 pc 10168
	lw	%x1, 72(%x2) #1201 pc 10172
	addi	%x31, %x0, 1  #pc 10176
	beq	%x6, %x31, 12  #1203 pc 10180
	j	be_else.9228 #pc 10184
	nop #pc 10188
	flw	%f0, 32(%x2)  #1203 pc 10192
	flw	%f1, 48(%x2)  #1203 pc 10196
	flw	%f2, 64(%x2)  #1203 pc 10200
	lw	%x6, 16(%x2)  #1203 pc 10204
	lw	%x7, 8(%x2)  #1203 pc 10208
	lw	%x29, 12(%x2)  #1203 pc 10212
	lw	%x30, 0(%x29)  #1203 pc 10216
	jalr	%x0, %x30, 0  #1203 pc 10220
	nop #pc 10224
be_else.9228: #pc 10228
	addi	%x31, %x0, 2  #pc 10228
	beq	%x6, %x31, 12  #1204 pc 10232
	j	be_else.9229 #pc 10236
	nop #pc 10240
	flw	%f0, 32(%x2)  #1204 pc 10244
	flw	%f1, 48(%x2)  #1204 pc 10248
	flw	%f2, 64(%x2)  #1204 pc 10252
	lw	%x6, 16(%x2)  #1204 pc 10256
	lw	%x7, 8(%x2)  #1204 pc 10260
	lw	%x29, 4(%x2)  #1204 pc 10264
	lw	%x30, 0(%x29)  #1204 pc 10268
	jalr	%x0, %x30, 0  #1204 pc 10272
	nop #pc 10276
be_else.9229: #pc 10280
	flw	%f0, 32(%x2)  #1205 pc 10280
	flw	%f1, 48(%x2)  #1205 pc 10284
	flw	%f2, 64(%x2)  #1205 pc 10288
	lw	%x6, 16(%x2)  #1205 pc 10292
	lw	%x7, 8(%x2)  #1205 pc 10296
	lw	%x29, 0(%x2)  #1205 pc 10300
	lw	%x30, 0(%x29)  #1205 pc 10304
	jalr	%x0, %x30, 0  #1205 pc 10308
	nop #pc 10312
solver_rect_fast.2797:  #pc 10316
	lw	%x9, 4(%x29)  #0 pc 10316
	flw	%f3, 0(%x8)  #1228 pc 10320
	fsub	%f3, %f3, %f0  #1228 pc 10324
	flw	%f4, 4(%x8)  #1228 pc 10328
	fmul	%f3, %f3, %f4  #1228 pc 10332
	flw	%f4, 4(%x7)  #1230 pc 10336
	fmul	%f4, %f3, %f4  #1230 pc 10340
	fadd	%f4, %f4, %f1  #1230 pc 10344
	fabs	%f4, %f4  #1230 pc 10348
	sw	%x9, 0(%x2)  #1230 pc 10352
	fsw	%f0, 8(%x2)  #1230 pc 10356
	fsw	%f1, 16(%x2)  #1230 pc 10360
	sw	%x8, 24(%x2)  #1230 pc 10364
	sw	%x6, 28(%x2)  #1230 pc 10368
	fsw	%f2, 32(%x2)  #1230 pc 10372
	fsw	%f3, 40(%x2)  #1230 pc 10376
	sw	%x7, 48(%x2)  #1230 pc 10380
	fsw	%f4, 56(%x2)  #1230 pc 10384
	sw	%x1, 64(%x2)  #1230 pc 10388
	addi	%x2, %x2, 68  #1230 pc 10392
	jal	%x1, o_param_b.2671  #1230 pc 10396
	addi	%x2, %x2, -68  #1230 pc 10400
	lw	%x1, 64(%x2) #1230 pc 10404
	fadd	%f1, %f0, %f30  #1230 pc 10408
	flw	%f0, 56(%x2)  #1230 pc 10412
	sw	%x1, 64(%x2)  #1230 pc 10416
	addi	%x2, %x2, 68  #1230 pc 10420
	jal	%x1, fless.2521  #1230 pc 10424
	addi	%x2, %x2, -68  #1230 pc 10428
	lw	%x1, 64(%x2) #1230 pc 10432
	beq	%x6, %x0, 12  #1230 pc 10436
	j	be_else.9232 #pc 10440
	nop #pc 10444
	addi	%x6, %x0, 0  #0 pc 10448
	j	be_cont.9233 #pc 10452
	nop #pc 10456
be_else.9232: #pc 10460
	lw	%x6, 48(%x2)  #1231 pc 10460
	flw	%f0, 8(%x6)  #1231 pc 10464
	flw	%f1, 40(%x2)  #1231 pc 10468
	fmul	%f0, %f1, %f0  #1231 pc 10472
	flw	%f2, 32(%x2)  #1231 pc 10476
	fadd	%f0, %f0, %f2  #1231 pc 10480
	fabs	%f0, %f0  #1231 pc 10484
	lw	%x7, 28(%x2)  #1231 pc 10488
	fsw	%f0, 64(%x2)  #1231 pc 10492
	addi	%x6, %x7, 0  #0 pc 10496
	sw	%x1, 72(%x2)  #1231 pc 10500
	addi	%x2, %x2, 76  #1231 pc 10504
	jal	%x1, o_param_c.2673  #1231 pc 10508
	addi	%x2, %x2, -76  #1231 pc 10512
	lw	%x1, 72(%x2) #1231 pc 10516
	fadd	%f1, %f0, %f30  #1231 pc 10520
	flw	%f0, 64(%x2)  #1231 pc 10524
	sw	%x1, 72(%x2)  #1231 pc 10528
	addi	%x2, %x2, 76  #1231 pc 10532
	jal	%x1, fless.2521  #1231 pc 10536
	addi	%x2, %x2, -76  #1231 pc 10540
	lw	%x1, 72(%x2) #1231 pc 10544
	beq	%x6, %x0, 12  #1231 pc 10548
	j	be_else.9234 #pc 10552
	nop #pc 10556
	addi	%x6, %x0, 0  #0 pc 10560
	j	be_cont.9235 #pc 10564
	nop #pc 10568
be_else.9234: #pc 10572
	lw	%x6, 24(%x2)  #1232 pc 10572
	flw	%f0, 4(%x6)  #1232 pc 10576
	sw	%x1, 72(%x2)  #1232 pc 10580
	addi	%x2, %x2, 76  #1232 pc 10584
	jal	%x1, fiszero.2509  #1232 pc 10588
	addi	%x2, %x2, -76  #1232 pc 10592
	lw	%x1, 72(%x2) #1232 pc 10596
	beq	%x6, %x0, 12  #1232 pc 10600
	j	be_else.9236 #pc 10604
	nop #pc 10608
	addi	%x6, %x0, 1  #0 pc 10612
	j	be_cont.9237 #pc 10616
	nop #pc 10620
be_else.9236: #pc 10624
	addi	%x6, %x0, 0  #0 pc 10624
be_cont.9237: #pc 10628
be_cont.9235: #pc 10628
be_cont.9233: #pc 10628
	beq	%x6, %x0, 12  #1229 pc 10628
	j	be_else.9238 #pc 10632
	nop #pc 10636
	lw	%x6, 24(%x2)  #1237 pc 10640
	flw	%f0, 8(%x6)  #1237 pc 10644
	flw	%f1, 16(%x2)  #1237 pc 10648
	fsub	%f0, %f0, %f1  #1237 pc 10652
	flw	%f2, 12(%x6)  #1237 pc 10656
	fmul	%f0, %f0, %f2  #1237 pc 10660
	lw	%x7, 48(%x2)  #1239 pc 10664
	flw	%f2, 0(%x7)  #1239 pc 10668
	fmul	%f2, %f0, %f2  #1239 pc 10672
	flw	%f3, 8(%x2)  #1239 pc 10676
	fadd	%f2, %f2, %f3  #1239 pc 10680
	fabs	%f2, %f2  #1239 pc 10684
	lw	%x8, 28(%x2)  #1239 pc 10688
	fsw	%f0, 72(%x2)  #1239 pc 10692
	fsw	%f2, 80(%x2)  #1239 pc 10696
	addi	%x6, %x8, 0  #0 pc 10700
	sw	%x1, 88(%x2)  #1239 pc 10704
	addi	%x2, %x2, 92  #1239 pc 10708
	jal	%x1, o_param_a.2669  #1239 pc 10712
	addi	%x2, %x2, -92  #1239 pc 10716
	lw	%x1, 88(%x2) #1239 pc 10720
	fadd	%f1, %f0, %f30  #1239 pc 10724
	flw	%f0, 80(%x2)  #1239 pc 10728
	sw	%x1, 88(%x2)  #1239 pc 10732
	addi	%x2, %x2, 92  #1239 pc 10736
	jal	%x1, fless.2521  #1239 pc 10740
	addi	%x2, %x2, -92  #1239 pc 10744
	lw	%x1, 88(%x2) #1239 pc 10748
	beq	%x6, %x0, 12  #1239 pc 10752
	j	be_else.9239 #pc 10756
	nop #pc 10760
	addi	%x6, %x0, 0  #0 pc 10764
	j	be_cont.9240 #pc 10768
	nop #pc 10772
be_else.9239: #pc 10776
	lw	%x6, 48(%x2)  #1240 pc 10776
	flw	%f0, 8(%x6)  #1240 pc 10780
	flw	%f1, 72(%x2)  #1240 pc 10784
	fmul	%f0, %f1, %f0  #1240 pc 10788
	flw	%f2, 32(%x2)  #1240 pc 10792
	fadd	%f0, %f0, %f2  #1240 pc 10796
	fabs	%f0, %f0  #1240 pc 10800
	lw	%x7, 28(%x2)  #1240 pc 10804
	fsw	%f0, 88(%x2)  #1240 pc 10808
	addi	%x6, %x7, 0  #0 pc 10812
	sw	%x1, 96(%x2)  #1240 pc 10816
	addi	%x2, %x2, 100  #1240 pc 10820
	jal	%x1, o_param_c.2673  #1240 pc 10824
	addi	%x2, %x2, -100  #1240 pc 10828
	lw	%x1, 96(%x2) #1240 pc 10832
	fadd	%f1, %f0, %f30  #1240 pc 10836
	flw	%f0, 88(%x2)  #1240 pc 10840
	sw	%x1, 96(%x2)  #1240 pc 10844
	addi	%x2, %x2, 100  #1240 pc 10848
	jal	%x1, fless.2521  #1240 pc 10852
	addi	%x2, %x2, -100  #1240 pc 10856
	lw	%x1, 96(%x2) #1240 pc 10860
	beq	%x6, %x0, 12  #1240 pc 10864
	j	be_else.9241 #pc 10868
	nop #pc 10872
	addi	%x6, %x0, 0  #0 pc 10876
	j	be_cont.9242 #pc 10880
	nop #pc 10884
be_else.9241: #pc 10888
	lw	%x6, 24(%x2)  #1241 pc 10888
	flw	%f0, 12(%x6)  #1241 pc 10892
	sw	%x1, 96(%x2)  #1241 pc 10896
	addi	%x2, %x2, 100  #1241 pc 10900
	jal	%x1, fiszero.2509  #1241 pc 10904
	addi	%x2, %x2, -100  #1241 pc 10908
	lw	%x1, 96(%x2) #1241 pc 10912
	beq	%x6, %x0, 12  #1241 pc 10916
	j	be_else.9243 #pc 10920
	nop #pc 10924
	addi	%x6, %x0, 1  #0 pc 10928
	j	be_cont.9244 #pc 10932
	nop #pc 10936
be_else.9243: #pc 10940
	addi	%x6, %x0, 0  #0 pc 10940
be_cont.9244: #pc 10944
be_cont.9242: #pc 10944
be_cont.9240: #pc 10944
	beq	%x6, %x0, 12  #1238 pc 10944
	j	be_else.9245 #pc 10948
	nop #pc 10952
	lw	%x6, 24(%x2)  #1246 pc 10956
	flw	%f0, 16(%x6)  #1246 pc 10960
	flw	%f1, 32(%x2)  #1246 pc 10964
	fsub	%f0, %f0, %f1  #1246 pc 10968
	flw	%f1, 20(%x6)  #1246 pc 10972
	fmul	%f0, %f0, %f1  #1246 pc 10976
	lw	%x7, 48(%x2)  #1248 pc 10980
	flw	%f1, 0(%x7)  #1248 pc 10984
	fmul	%f1, %f0, %f1  #1248 pc 10988
	flw	%f2, 8(%x2)  #1248 pc 10992
	fadd	%f1, %f1, %f2  #1248 pc 10996
	fabs	%f1, %f1  #1248 pc 11000
	lw	%x8, 28(%x2)  #1248 pc 11004
	fsw	%f0, 96(%x2)  #1248 pc 11008
	fsw	%f1, 104(%x2)  #1248 pc 11012
	addi	%x6, %x8, 0  #0 pc 11016
	sw	%x1, 112(%x2)  #1248 pc 11020
	addi	%x2, %x2, 116  #1248 pc 11024
	jal	%x1, o_param_a.2669  #1248 pc 11028
	addi	%x2, %x2, -116  #1248 pc 11032
	lw	%x1, 112(%x2) #1248 pc 11036
	fadd	%f1, %f0, %f30  #1248 pc 11040
	flw	%f0, 104(%x2)  #1248 pc 11044
	sw	%x1, 112(%x2)  #1248 pc 11048
	addi	%x2, %x2, 116  #1248 pc 11052
	jal	%x1, fless.2521  #1248 pc 11056
	addi	%x2, %x2, -116  #1248 pc 11060
	lw	%x1, 112(%x2) #1248 pc 11064
	beq	%x6, %x0, 12  #1248 pc 11068
	j	be_else.9246 #pc 11072
	nop #pc 11076
	addi	%x6, %x0, 0  #0 pc 11080
	j	be_cont.9247 #pc 11084
	nop #pc 11088
be_else.9246: #pc 11092
	lw	%x6, 48(%x2)  #1249 pc 11092
	flw	%f0, 4(%x6)  #1249 pc 11096
	flw	%f1, 96(%x2)  #1249 pc 11100
	fmul	%f0, %f1, %f0  #1249 pc 11104
	flw	%f2, 16(%x2)  #1249 pc 11108
	fadd	%f0, %f0, %f2  #1249 pc 11112
	fabs	%f0, %f0  #1249 pc 11116
	lw	%x6, 28(%x2)  #1249 pc 11120
	fsw	%f0, 112(%x2)  #1249 pc 11124
	sw	%x1, 120(%x2)  #1249 pc 11128
	addi	%x2, %x2, 124  #1249 pc 11132
	jal	%x1, o_param_b.2671  #1249 pc 11136
	addi	%x2, %x2, -124  #1249 pc 11140
	lw	%x1, 120(%x2) #1249 pc 11144
	fadd	%f1, %f0, %f30  #1249 pc 11148
	flw	%f0, 112(%x2)  #1249 pc 11152
	sw	%x1, 120(%x2)  #1249 pc 11156
	addi	%x2, %x2, 124  #1249 pc 11160
	jal	%x1, fless.2521  #1249 pc 11164
	addi	%x2, %x2, -124  #1249 pc 11168
	lw	%x1, 120(%x2) #1249 pc 11172
	beq	%x6, %x0, 12  #1249 pc 11176
	j	be_else.9248 #pc 11180
	nop #pc 11184
	addi	%x6, %x0, 0  #0 pc 11188
	j	be_cont.9249 #pc 11192
	nop #pc 11196
be_else.9248: #pc 11200
	lw	%x6, 24(%x2)  #1250 pc 11200
	flw	%f0, 20(%x6)  #1250 pc 11204
	sw	%x1, 120(%x2)  #1250 pc 11208
	addi	%x2, %x2, 124  #1250 pc 11212
	jal	%x1, fiszero.2509  #1250 pc 11216
	addi	%x2, %x2, -124  #1250 pc 11220
	lw	%x1, 120(%x2) #1250 pc 11224
	beq	%x6, %x0, 12  #1250 pc 11228
	j	be_else.9250 #pc 11232
	nop #pc 11236
	addi	%x6, %x0, 1  #0 pc 11240
	j	be_cont.9251 #pc 11244
	nop #pc 11248
be_else.9250: #pc 11252
	addi	%x6, %x0, 0  #0 pc 11252
be_cont.9251: #pc 11256
be_cont.9249: #pc 11256
be_cont.9247: #pc 11256
	beq	%x6, %x0, 12  #1247 pc 11256
	j	be_else.9252 #pc 11260
	nop #pc 11264
	addi	%x6, %x0, 0  #0 pc 11268
	ret #pc 11272
	nop #pc 11276
be_else.9252: #pc 11280
	lw	%x6, 0(%x2)  #1254 pc 11280
	flw	%f0, 96(%x2)  #1254 pc 11284
	fsw	%f0, 0(%x6)  #1254 pc 11288
	addi	%x6, %x0, 3  #0 pc 11292
	ret #pc 11296
	nop #pc 11300
be_else.9245: #pc 11304
	lw	%x6, 0(%x2)  #1245 pc 11304
	flw	%f0, 72(%x2)  #1245 pc 11308
	fsw	%f0, 0(%x6)  #1245 pc 11312
	addi	%x6, %x0, 2  #0 pc 11316
	ret #pc 11320
	nop #pc 11324
be_else.9238: #pc 11328
	lw	%x6, 0(%x2)  #1236 pc 11328
	flw	%f0, 40(%x2)  #1236 pc 11332
	fsw	%f0, 0(%x6)  #1236 pc 11336
	addi	%x6, %x0, 1  #0 pc 11340
	ret #pc 11344
	nop #pc 11348
solver_surface_fast.2804:  #pc 11352
	lw	%x6, 4(%x29)  #0 pc 11352
	flw	%f3, 0(%x7)  #1261 pc 11356
	sw	%x6, 0(%x2)  #1261 pc 11360
	fsw	%f2, 8(%x2)  #1261 pc 11364
	fsw	%f1, 16(%x2)  #1261 pc 11368
	fsw	%f0, 24(%x2)  #1261 pc 11372
	sw	%x7, 32(%x2)  #1261 pc 11376
	fadd	%f0, %f3, %f30  #0 pc 11380
	sw	%x1, 36(%x2)  #1261 pc 11384
	addi	%x2, %x2, 40  #1261 pc 11388
	jal	%x1, fisneg.2513  #1261 pc 11392
	addi	%x2, %x2, -40  #1261 pc 11396
	lw	%x1, 36(%x2) #1261 pc 11400
	beq	%x6, %x0, 12  #1261 pc 11404
	j	be_else.9254 #pc 11408
	nop #pc 11412
	addi	%x6, %x0, 0  #0 pc 11416
	ret #pc 11420
	nop #pc 11424
be_else.9254: #pc 11428
	lw	%x6, 32(%x2)  #1263 pc 11428
	flw	%f0, 4(%x6)  #1263 pc 11432
	flw	%f1, 24(%x2)  #1263 pc 11436
	fmul	%f0, %f0, %f1  #1263 pc 11440
	flw	%f1, 8(%x6)  #1263 pc 11444
	flw	%f2, 16(%x2)  #1263 pc 11448
	fmul	%f1, %f1, %f2  #1263 pc 11452
	fadd	%f0, %f0, %f1  #1263 pc 11456
	flw	%f1, 12(%x6)  #1263 pc 11460
	flw	%f2, 8(%x2)  #1263 pc 11464
	fmul	%f1, %f1, %f2  #1263 pc 11468
	fadd	%f0, %f0, %f1  #1263 pc 11472
	lw	%x6, 0(%x2)  #1262 pc 11476
	fsw	%f0, 0(%x6)  #1262 pc 11480
	addi	%x6, %x0, 1  #0 pc 11484
	ret #pc 11488
	nop #pc 11492
solver_second_fast.2810:  #pc 11496
	lw	%x8, 4(%x29)  #0 pc 11496
	flw	%f3, 0(%x7)  #1271 pc 11500
	sw	%x8, 0(%x2)  #1272 pc 11504
	fsw	%f3, 8(%x2)  #1272 pc 11508
	sw	%x6, 16(%x2)  #1272 pc 11512
	fsw	%f2, 24(%x2)  #1272 pc 11516
	fsw	%f1, 32(%x2)  #1272 pc 11520
	fsw	%f0, 40(%x2)  #1272 pc 11524
	sw	%x7, 48(%x2)  #1272 pc 11528
	fadd	%f0, %f3, %f30  #0 pc 11532
	sw	%x1, 52(%x2)  #1272 pc 11536
	addi	%x2, %x2, 56  #1272 pc 11540
	jal	%x1, fiszero.2509  #1272 pc 11544
	addi	%x2, %x2, -56  #1272 pc 11548
	lw	%x1, 52(%x2) #1272 pc 11552
	beq	%x6, %x0, 12  #1272 pc 11556
	j	be_else.9257 #pc 11560
	nop #pc 11564
	lw	%x6, 48(%x2)  #1275 pc 11568
	flw	%f0, 4(%x6)  #1275 pc 11572
	flw	%f1, 40(%x2)  #1275 pc 11576
	fmul	%f0, %f0, %f1  #1275 pc 11580
	flw	%f2, 8(%x6)  #1275 pc 11584
	flw	%f3, 32(%x2)  #1275 pc 11588
	fmul	%f2, %f2, %f3  #1275 pc 11592
	fadd	%f0, %f0, %f2  #1275 pc 11596
	flw	%f2, 12(%x6)  #1275 pc 11600
	flw	%f4, 24(%x2)  #1275 pc 11604
	fmul	%f2, %f2, %f4  #1275 pc 11608
	fadd	%f0, %f0, %f2  #1275 pc 11612
	lw	%x7, 16(%x2)  #1276 pc 11616
	fsw	%f0, 56(%x2)  #1276 pc 11620
	addi	%x6, %x7, 0  #0 pc 11624
	fadd	%f2, %f4, %f30  #0 pc 11628
	fadd	%f0, %f1, %f30  #0 pc 11632
	fadd	%f1, %f3, %f30  #0 pc 11636
	sw	%x1, 64(%x2)  #1276 pc 11640
	addi	%x2, %x2, 68  #1276 pc 11644
	jal	%x1, quadratic.2774  #1276 pc 11648
	addi	%x2, %x2, -68  #1276 pc 11652
	lw	%x1, 64(%x2) #1276 pc 11656
	lw	%x6, 16(%x2)  #1277 pc 11660
	fsw	%f0, 64(%x2)  #1277 pc 11664
	sw	%x1, 72(%x2)  #1277 pc 11668
	addi	%x2, %x2, 76  #1277 pc 11672
	jal	%x1, o_form.2661  #1277 pc 11676
	addi	%x2, %x2, -76  #1277 pc 11680
	lw	%x1, 72(%x2) #1277 pc 11684
	addi	%x31, %x0, 3  #pc 11688
	beq	%x6, %x31, 12  #1277 pc 11692
	j	be_else.9259 #pc 11696
	nop #pc 11700
	fmv	%f0, l.6263  #0 pc 11704
	flw	%f1, 64(%x2)  #1277 pc 11708
	fsub	%f0, %f1, %f0  #1277 pc 11712
	j	be_cont.9260 #pc 11716
	nop #pc 11720
be_else.9259: #pc 11724
	flw	%f0, 64(%x2)  #1277 pc 11724
be_cont.9260: #pc 11728
	flw	%f1, 56(%x2)  #1278 pc 11728
	fsw	%f0, 72(%x2)  #1278 pc 11732
	fadd	%f0, %f1, %f30  #0 pc 11736
	sw	%x1, 80(%x2)  #1278 pc 11740
	addi	%x2, %x2, 84  #1278 pc 11744
	jal	%x1, fsqr.2517  #1278 pc 11748
	addi	%x2, %x2, -84  #1278 pc 11752
	lw	%x1, 80(%x2) #1278 pc 11756
	flw	%f1, 72(%x2)  #1278 pc 11760
	flw	%f2, 8(%x2)  #1278 pc 11764
	fmul	%f1, %f2, %f1  #1278 pc 11768
	fsub	%f0, %f0, %f1  #1278 pc 11772
	fsw	%f0, 80(%x2)  #1279 pc 11776
	sw	%x1, 88(%x2)  #1279 pc 11780
	addi	%x2, %x2, 92  #1279 pc 11784
	jal	%x1, fispos.2511  #1279 pc 11788
	addi	%x2, %x2, -92  #1279 pc 11792
	lw	%x1, 88(%x2) #1279 pc 11796
	beq	%x6, %x0, 12  #1279 pc 11800
	j	be_else.9261 #pc 11804
	nop #pc 11808
	addi	%x6, %x0, 0  #0 pc 11812
	ret #pc 11816
	nop #pc 11820
be_else.9261: #pc 11824
	lw	%x6, 16(%x2)  #1280 pc 11824
	sw	%x1, 88(%x2)  #1280 pc 11828
	addi	%x2, %x2, 92  #1280 pc 11832
	jal	%x1, o_isinvert.2665  #1280 pc 11836
	addi	%x2, %x2, -92  #1280 pc 11840
	lw	%x1, 88(%x2) #1280 pc 11844
	beq	%x6, %x0, 12  #1280 pc 11848
	j	be_else.9262 #pc 11852
	nop #pc 11856
	flw	%f0, 80(%x2)  #1283 pc 11860
	fsqrt	%f0, %f0  #1283 pc 11864
	flw	%f1, 56(%x2)  #1283 pc 11868
	fsub	%f0, %f1, %f0  #1283 pc 11872
	lw	%x6, 48(%x2)  #1283 pc 11876
	flw	%f1, 16(%x6)  #1283 pc 11880
	fmul	%f0, %f0, %f1  #1283 pc 11884
	lw	%x6, 0(%x2)  #1283 pc 11888
	fsw	%f0, 0(%x6)  #1283 pc 11892
	j	be_cont.9263 #pc 11896
	nop #pc 11900
be_else.9262: #pc 11904
	flw	%f0, 80(%x2)  #1281 pc 11904
	fsqrt	%f0, %f0  #1281 pc 11908
	flw	%f1, 56(%x2)  #1281 pc 11912
	fadd	%f0, %f1, %f0  #1281 pc 11916
	lw	%x6, 48(%x2)  #1281 pc 11920
	flw	%f1, 16(%x6)  #1281 pc 11924
	fmul	%f0, %f0, %f1  #1281 pc 11928
	lw	%x6, 0(%x2)  #1281 pc 11932
	fsw	%f0, 0(%x6)  #1281 pc 11936
be_cont.9263: #pc 11940
	addi	%x6, %x0, 1  #0 pc 11940
	ret #pc 11944
	nop #pc 11948
be_else.9257: #pc 11952
	addi	%x6, %x0, 0  #0 pc 11952
	ret #pc 11956
	nop #pc 11960
solver_fast.2816:  #pc 11964
	lw	%x9, 16(%x29)  #1290 pc 11964
	lw	%x10, 12(%x29)  #1290 pc 11968
	lw	%x11, 8(%x29)  #1290 pc 11972
	lw	%x12, 4(%x29)  #1290 pc 11976
	slli	%x13, %x6, 2  #1290 pc 11980
	add	%x31, %x13, %x12  #1290 pc 11984
	lw	%x12, 0(%x31)  #1290 pc 11988
	flw	%f0, 0(%x8)  #1291 pc 11992
	sw	%x10, 0(%x2)  #1291 pc 11996
	sw	%x9, 4(%x2)  #1291 pc 12000
	sw	%x11, 8(%x2)  #1291 pc 12004
	sw	%x6, 12(%x2)  #1291 pc 12008
	sw	%x7, 16(%x2)  #1291 pc 12012
	sw	%x12, 20(%x2)  #1291 pc 12016
	sw	%x8, 24(%x2)  #1291 pc 12020
	fsw	%f0, 32(%x2)  #1291 pc 12024
	addi	%x6, %x12, 0  #0 pc 12028
	sw	%x1, 40(%x2)  #1291 pc 12032
	addi	%x2, %x2, 44  #1291 pc 12036
	jal	%x1, o_param_x.2677  #1291 pc 12040
	addi	%x2, %x2, -44  #1291 pc 12044
	lw	%x1, 40(%x2) #1291 pc 12048
	flw	%f1, 32(%x2)  #1291 pc 12052
	fsub	%f0, %f1, %f0  #1291 pc 12056
	lw	%x6, 24(%x2)  #1292 pc 12060
	flw	%f1, 4(%x6)  #1292 pc 12064
	lw	%x7, 20(%x2)  #1292 pc 12068
	fsw	%f0, 40(%x2)  #1292 pc 12072
	fsw	%f1, 48(%x2)  #1292 pc 12076
	addi	%x6, %x7, 0  #0 pc 12080
	sw	%x1, 56(%x2)  #1292 pc 12084
	addi	%x2, %x2, 60  #1292 pc 12088
	jal	%x1, o_param_y.2679  #1292 pc 12092
	addi	%x2, %x2, -60  #1292 pc 12096
	lw	%x1, 56(%x2) #1292 pc 12100
	flw	%f1, 48(%x2)  #1292 pc 12104
	fsub	%f0, %f1, %f0  #1292 pc 12108
	lw	%x6, 24(%x2)  #1293 pc 12112
	flw	%f1, 8(%x6)  #1293 pc 12116
	lw	%x6, 20(%x2)  #1293 pc 12120
	fsw	%f0, 56(%x2)  #1293 pc 12124
	fsw	%f1, 64(%x2)  #1293 pc 12128
	sw	%x1, 72(%x2)  #1293 pc 12132
	addi	%x2, %x2, 76  #1293 pc 12136
	jal	%x1, o_param_z.2681  #1293 pc 12140
	addi	%x2, %x2, -76  #1293 pc 12144
	lw	%x1, 72(%x2) #1293 pc 12148
	flw	%f1, 64(%x2)  #1293 pc 12152
	fsub	%f0, %f1, %f0  #1293 pc 12156
	lw	%x6, 16(%x2)  #1294 pc 12160
	fsw	%f0, 72(%x2)  #1294 pc 12164
	sw	%x1, 80(%x2)  #1294 pc 12168
	addi	%x2, %x2, 84  #1294 pc 12172
	jal	%x1, d_const.2722  #1294 pc 12176
	addi	%x2, %x2, -84  #1294 pc 12180
	lw	%x1, 80(%x2) #1294 pc 12184
	lw	%x7, 12(%x2)  #1295 pc 12188
	slli	%x7, %x7, 2  #1295 pc 12192
	add	%x31, %x7, %x6  #1295 pc 12196
	lw	%x6, 0(%x31)  #1295 pc 12200
	lw	%x7, 20(%x2)  #1296 pc 12204
	sw	%x6, 80(%x2)  #1296 pc 12208
	addi	%x6, %x7, 0  #0 pc 12212
	sw	%x1, 84(%x2)  #1296 pc 12216
	addi	%x2, %x2, 88  #1296 pc 12220
	jal	%x1, o_form.2661  #1296 pc 12224
	addi	%x2, %x2, -88  #1296 pc 12228
	lw	%x1, 84(%x2) #1296 pc 12232
	addi	%x31, %x0, 1  #pc 12236
	beq	%x6, %x31, 12  #1297 pc 12240
	j	be_else.9265 #pc 12244
	nop #pc 12248
	lw	%x6, 16(%x2)  #1298 pc 12252
	sw	%x1, 84(%x2)  #1298 pc 12256
	addi	%x2, %x2, 88  #1298 pc 12260
	jal	%x1, d_vec.2720  #1298 pc 12264
	addi	%x2, %x2, -88  #1298 pc 12268
	lw	%x1, 84(%x2) #1298 pc 12272
	addi	%x7, %x6, 0  #1298 pc 12276
	flw	%f0, 40(%x2)  #1298 pc 12280
	flw	%f1, 56(%x2)  #1298 pc 12284
	flw	%f2, 72(%x2)  #1298 pc 12288
	lw	%x6, 20(%x2)  #1298 pc 12292
	lw	%x8, 80(%x2)  #1298 pc 12296
	lw	%x29, 8(%x2)  #1298 pc 12300
	lw	%x30, 0(%x29)  #1298 pc 12304
	jalr	%x0, %x30, 0  #1298 pc 12308
	nop #pc 12312
be_else.9265: #pc 12316
	addi	%x31, %x0, 2  #pc 12316
	beq	%x6, %x31, 12  #1299 pc 12320
	j	be_else.9266 #pc 12324
	nop #pc 12328
	flw	%f0, 40(%x2)  #1300 pc 12332
	flw	%f1, 56(%x2)  #1300 pc 12336
	flw	%f2, 72(%x2)  #1300 pc 12340
	lw	%x6, 20(%x2)  #1300 pc 12344
	lw	%x7, 80(%x2)  #1300 pc 12348
	lw	%x29, 4(%x2)  #1300 pc 12352
	lw	%x30, 0(%x29)  #1300 pc 12356
	jalr	%x0, %x30, 0  #1300 pc 12360
	nop #pc 12364
be_else.9266: #pc 12368
	flw	%f0, 40(%x2)  #1302 pc 12368
	flw	%f1, 56(%x2)  #1302 pc 12372
	flw	%f2, 72(%x2)  #1302 pc 12376
	lw	%x6, 20(%x2)  #1302 pc 12380
	lw	%x7, 80(%x2)  #1302 pc 12384
	lw	%x29, 0(%x2)  #1302 pc 12388
	lw	%x30, 0(%x29)  #1302 pc 12392
	jalr	%x0, %x30, 0  #1302 pc 12396
	nop #pc 12400
solver_surface_fast2.2820:  #pc 12404
	lw	%x6, 4(%x29)  #0 pc 12404
	flw	%f0, 0(%x7)  #1310 pc 12408
	sw	%x6, 0(%x2)  #1310 pc 12412
	sw	%x8, 4(%x2)  #1310 pc 12416
	sw	%x7, 8(%x2)  #1310 pc 12420
	sw	%x1, 12(%x2)  #1310 pc 12424
	addi	%x2, %x2, 16  #1310 pc 12428
	jal	%x1, fisneg.2513  #1310 pc 12432
	addi	%x2, %x2, -16  #1310 pc 12436
	lw	%x1, 12(%x2) #1310 pc 12440
	beq	%x6, %x0, 12  #1310 pc 12444
	j	be_else.9267 #pc 12448
	nop #pc 12452
	addi	%x6, %x0, 0  #0 pc 12456
	ret #pc 12460
	nop #pc 12464
be_else.9267: #pc 12468
	lw	%x6, 8(%x2)  #1311 pc 12468
	flw	%f0, 0(%x6)  #1311 pc 12472
	lw	%x6, 4(%x2)  #1311 pc 12476
	flw	%f1, 12(%x6)  #1311 pc 12480
	fmul	%f0, %f0, %f1  #1311 pc 12484
	lw	%x6, 0(%x2)  #1311 pc 12488
	fsw	%f0, 0(%x6)  #1311 pc 12492
	addi	%x6, %x0, 1  #0 pc 12496
	ret #pc 12500
	nop #pc 12504
solver_second_fast2.2827:  #pc 12508
	lw	%x9, 4(%x29)  #0 pc 12508
	flw	%f3, 0(%x7)  #1319 pc 12512
	sw	%x9, 0(%x2)  #1320 pc 12516
	sw	%x6, 4(%x2)  #1320 pc 12520
	fsw	%f3, 8(%x2)  #1320 pc 12524
	sw	%x8, 16(%x2)  #1320 pc 12528
	fsw	%f2, 24(%x2)  #1320 pc 12532
	fsw	%f1, 32(%x2)  #1320 pc 12536
	fsw	%f0, 40(%x2)  #1320 pc 12540
	sw	%x7, 48(%x2)  #1320 pc 12544
	fadd	%f0, %f3, %f30  #0 pc 12548
	sw	%x1, 52(%x2)  #1320 pc 12552
	addi	%x2, %x2, 56  #1320 pc 12556
	jal	%x1, fiszero.2509  #1320 pc 12560
	addi	%x2, %x2, -56  #1320 pc 12564
	lw	%x1, 52(%x2) #1320 pc 12568
	beq	%x6, %x0, 12  #1320 pc 12572
	j	be_else.9269 #pc 12576
	nop #pc 12580
	lw	%x6, 48(%x2)  #1323 pc 12584
	flw	%f0, 4(%x6)  #1323 pc 12588
	flw	%f1, 40(%x2)  #1323 pc 12592
	fmul	%f0, %f0, %f1  #1323 pc 12596
	flw	%f1, 8(%x6)  #1323 pc 12600
	flw	%f2, 32(%x2)  #1323 pc 12604
	fmul	%f1, %f1, %f2  #1323 pc 12608
	fadd	%f0, %f0, %f1  #1323 pc 12612
	flw	%f1, 12(%x6)  #1323 pc 12616
	flw	%f2, 24(%x2)  #1323 pc 12620
	fmul	%f1, %f1, %f2  #1323 pc 12624
	fadd	%f0, %f0, %f1  #1323 pc 12628
	lw	%x7, 16(%x2)  #1324 pc 12632
	flw	%f1, 12(%x7)  #1324 pc 12636
	fsw	%f0, 56(%x2)  #1325 pc 12640
	fsw	%f1, 64(%x2)  #1325 pc 12644
	sw	%x1, 72(%x2)  #1325 pc 12648
	addi	%x2, %x2, 76  #1325 pc 12652
	jal	%x1, fsqr.2517  #1325 pc 12656
	addi	%x2, %x2, -76  #1325 pc 12660
	lw	%x1, 72(%x2) #1325 pc 12664
	flw	%f1, 64(%x2)  #1325 pc 12668
	flw	%f2, 8(%x2)  #1325 pc 12672
	fmul	%f1, %f2, %f1  #1325 pc 12676
	fsub	%f0, %f0, %f1  #1325 pc 12680
	fsw	%f0, 72(%x2)  #1326 pc 12684
	sw	%x1, 80(%x2)  #1326 pc 12688
	addi	%x2, %x2, 84  #1326 pc 12692
	jal	%x1, fispos.2511  #1326 pc 12696
	addi	%x2, %x2, -84  #1326 pc 12700
	lw	%x1, 80(%x2) #1326 pc 12704
	beq	%x6, %x0, 12  #1326 pc 12708
	j	be_else.9271 #pc 12712
	nop #pc 12716
	addi	%x6, %x0, 0  #0 pc 12720
	ret #pc 12724
	nop #pc 12728
be_else.9271: #pc 12732
	lw	%x6, 4(%x2)  #1327 pc 12732
	sw	%x1, 80(%x2)  #1327 pc 12736
	addi	%x2, %x2, 84  #1327 pc 12740
	jal	%x1, o_isinvert.2665  #1327 pc 12744
	addi	%x2, %x2, -84  #1327 pc 12748
	lw	%x1, 80(%x2) #1327 pc 12752
	beq	%x6, %x0, 12  #1327 pc 12756
	j	be_else.9272 #pc 12760
	nop #pc 12764
	flw	%f0, 72(%x2)  #1330 pc 12768
	fsqrt	%f0, %f0  #1330 pc 12772
	flw	%f1, 56(%x2)  #1330 pc 12776
	fsub	%f0, %f1, %f0  #1330 pc 12780
	lw	%x6, 48(%x2)  #1330 pc 12784
	flw	%f1, 16(%x6)  #1330 pc 12788
	fmul	%f0, %f0, %f1  #1330 pc 12792
	lw	%x6, 0(%x2)  #1330 pc 12796
	fsw	%f0, 0(%x6)  #1330 pc 12800
	j	be_cont.9273 #pc 12804
	nop #pc 12808
be_else.9272: #pc 12812
	flw	%f0, 72(%x2)  #1328 pc 12812
	fsqrt	%f0, %f0  #1328 pc 12816
	flw	%f1, 56(%x2)  #1328 pc 12820
	fadd	%f0, %f1, %f0  #1328 pc 12824
	lw	%x6, 48(%x2)  #1328 pc 12828
	flw	%f1, 16(%x6)  #1328 pc 12832
	fmul	%f0, %f0, %f1  #1328 pc 12836
	lw	%x6, 0(%x2)  #1328 pc 12840
	fsw	%f0, 0(%x6)  #1328 pc 12844
be_cont.9273: #pc 12848
	addi	%x6, %x0, 1  #0 pc 12848
	ret #pc 12852
	nop #pc 12856
be_else.9269: #pc 12860
	addi	%x6, %x0, 0  #0 pc 12860
	ret #pc 12864
	nop #pc 12868
solver_fast2.2834:  #pc 12872
	lw	%x8, 16(%x29)  #1337 pc 12872
	lw	%x9, 12(%x29)  #1337 pc 12876
	lw	%x10, 8(%x29)  #1337 pc 12880
	lw	%x11, 4(%x29)  #1337 pc 12884
	slli	%x12, %x6, 2  #1337 pc 12888
	add	%x31, %x12, %x11  #1337 pc 12892
	lw	%x11, 0(%x31)  #1337 pc 12896
	sw	%x9, 0(%x2)  #1338 pc 12900
	sw	%x8, 4(%x2)  #1338 pc 12904
	sw	%x10, 8(%x2)  #1338 pc 12908
	sw	%x11, 12(%x2)  #1338 pc 12912
	sw	%x6, 16(%x2)  #1338 pc 12916
	sw	%x7, 20(%x2)  #1338 pc 12920
	addi	%x6, %x11, 0  #0 pc 12924
	sw	%x1, 24(%x2)  #1338 pc 12928
	addi	%x2, %x2, 28  #1338 pc 12932
	jal	%x1, o_param_ctbl.2699  #1338 pc 12936
	addi	%x2, %x2, -28  #1338 pc 12940
	lw	%x1, 24(%x2) #1338 pc 12944
	flw	%f0, 0(%x6)  #1339 pc 12948
	flw	%f1, 4(%x6)  #1340 pc 12952
	flw	%f2, 8(%x6)  #1341 pc 12956
	lw	%x7, 20(%x2)  #1342 pc 12960
	sw	%x6, 24(%x2)  #1342 pc 12964
	fsw	%f2, 32(%x2)  #1342 pc 12968
	fsw	%f1, 40(%x2)  #1342 pc 12972
	fsw	%f0, 48(%x2)  #1342 pc 12976
	addi	%x6, %x7, 0  #0 pc 12980
	sw	%x1, 56(%x2)  #1342 pc 12984
	addi	%x2, %x2, 60  #1342 pc 12988
	jal	%x1, d_const.2722  #1342 pc 12992
	addi	%x2, %x2, -60  #1342 pc 12996
	lw	%x1, 56(%x2) #1342 pc 13000
	lw	%x7, 16(%x2)  #1343 pc 13004
	slli	%x7, %x7, 2  #1343 pc 13008
	add	%x31, %x7, %x6  #1343 pc 13012
	lw	%x6, 0(%x31)  #1343 pc 13016
	lw	%x7, 12(%x2)  #1344 pc 13020
	sw	%x6, 56(%x2)  #1344 pc 13024
	addi	%x6, %x7, 0  #0 pc 13028
	sw	%x1, 60(%x2)  #1344 pc 13032
	addi	%x2, %x2, 64  #1344 pc 13036
	jal	%x1, o_form.2661  #1344 pc 13040
	addi	%x2, %x2, -64  #1344 pc 13044
	lw	%x1, 60(%x2) #1344 pc 13048
	addi	%x31, %x0, 1  #pc 13052
	beq	%x6, %x31, 12  #1345 pc 13056
	j	be_else.9275 #pc 13060
	nop #pc 13064
	lw	%x6, 20(%x2)  #1346 pc 13068
	sw	%x1, 60(%x2)  #1346 pc 13072
	addi	%x2, %x2, 64  #1346 pc 13076
	jal	%x1, d_vec.2720  #1346 pc 13080
	addi	%x2, %x2, -64  #1346 pc 13084
	lw	%x1, 60(%x2) #1346 pc 13088
	addi	%x7, %x6, 0  #1346 pc 13092
	flw	%f0, 48(%x2)  #1346 pc 13096
	flw	%f1, 40(%x2)  #1346 pc 13100
	flw	%f2, 32(%x2)  #1346 pc 13104
	lw	%x6, 12(%x2)  #1346 pc 13108
	lw	%x8, 56(%x2)  #1346 pc 13112
	lw	%x29, 8(%x2)  #1346 pc 13116
	lw	%x30, 0(%x29)  #1346 pc 13120
	jalr	%x0, %x30, 0  #1346 pc 13124
	nop #pc 13128
be_else.9275: #pc 13132
	addi	%x31, %x0, 2  #pc 13132
	beq	%x6, %x31, 12  #1347 pc 13136
	j	be_else.9276 #pc 13140
	nop #pc 13144
	flw	%f0, 48(%x2)  #1348 pc 13148
	flw	%f1, 40(%x2)  #1348 pc 13152
	flw	%f2, 32(%x2)  #1348 pc 13156
	lw	%x6, 12(%x2)  #1348 pc 13160
	lw	%x7, 56(%x2)  #1348 pc 13164
	lw	%x8, 24(%x2)  #1348 pc 13168
	lw	%x29, 4(%x2)  #1348 pc 13172
	lw	%x30, 0(%x29)  #1348 pc 13176
	jalr	%x0, %x30, 0  #1348 pc 13180
	nop #pc 13184
be_else.9276: #pc 13188
	flw	%f0, 48(%x2)  #1350 pc 13188
	flw	%f1, 40(%x2)  #1350 pc 13192
	flw	%f2, 32(%x2)  #1350 pc 13196
	lw	%x6, 12(%x2)  #1350 pc 13200
	lw	%x7, 56(%x2)  #1350 pc 13204
	lw	%x8, 24(%x2)  #1350 pc 13208
	lw	%x29, 0(%x2)  #1350 pc 13212
	lw	%x30, 0(%x29)  #1350 pc 13216
	jalr	%x0, %x30, 0  #1350 pc 13220
	nop #pc 13224
setup_rect_table.2837:  #pc 13228
	addi	%x8, %x0, 6  #0 pc 13228
	fmv	%f0, l.6244  #0 pc 13232
	sw	%x7, 0(%x2)  #1359 pc 13236
	sw	%x6, 4(%x2)  #1359 pc 13240
	addi	%x6, %x8, 0  #0 pc 13244
	sw	%x1, 8(%x2)  #1359 pc 13248
	addi	%x2, %x2, 12  #1359 pc 13252
	jal	%x1, create_float_array.2577  #1359 pc 13256
	addi	%x2, %x2, -12  #1359 pc 13260
	lw	%x1, 8(%x2) #1359 pc 13264
	lw	%x7, 4(%x2)  #1361 pc 13268
	flw	%f0, 0(%x7)  #1361 pc 13272
	sw	%x6, 8(%x2)  #1361 pc 13276
	sw	%x1, 12(%x2)  #1361 pc 13280
	addi	%x2, %x2, 16  #1361 pc 13284
	jal	%x1, fiszero.2509  #1361 pc 13288
	addi	%x2, %x2, -16  #1361 pc 13292
	lw	%x1, 12(%x2) #1361 pc 13296
	beq	%x6, %x0, 12  #1361 pc 13300
	j	be_else.9277 #pc 13304
	nop #pc 13308
	lw	%x6, 0(%x2)  #1365 pc 13312
	sw	%x1, 12(%x2)  #1365 pc 13316
	addi	%x2, %x2, 16  #1365 pc 13320
	jal	%x1, o_isinvert.2665  #1365 pc 13324
	addi	%x2, %x2, -16  #1365 pc 13328
	lw	%x1, 12(%x2) #1365 pc 13332
	lw	%x7, 4(%x2)  #1365 pc 13336
	flw	%f0, 0(%x7)  #1365 pc 13340
	sw	%x6, 12(%x2)  #1365 pc 13344
	sw	%x1, 16(%x2)  #1365 pc 13348
	addi	%x2, %x2, 20  #1365 pc 13352
	jal	%x1, fisneg.2513  #1365 pc 13356
	addi	%x2, %x2, -20  #1365 pc 13360
	lw	%x1, 16(%x2) #1365 pc 13364
	addi	%x7, %x6, 0  #1365 pc 13368
	lw	%x6, 12(%x2)  #1365 pc 13372
	sw	%x1, 16(%x2)  #1365 pc 13376
	addi	%x2, %x2, 20  #1365 pc 13380
	jal	%x1, xor.2610  #1365 pc 13384
	addi	%x2, %x2, -20  #1365 pc 13388
	lw	%x1, 16(%x2) #1365 pc 13392
	lw	%x7, 0(%x2)  #1365 pc 13396
	sw	%x6, 16(%x2)  #1365 pc 13400
	addi	%x6, %x7, 0  #0 pc 13404
	sw	%x1, 20(%x2)  #1365 pc 13408
	addi	%x2, %x2, 24  #1365 pc 13412
	jal	%x1, o_param_a.2669  #1365 pc 13416
	addi	%x2, %x2, -24  #1365 pc 13420
	lw	%x1, 20(%x2) #1365 pc 13424
	lw	%x6, 16(%x2)  #1365 pc 13428
	sw	%x1, 20(%x2)  #1365 pc 13432
	addi	%x2, %x2, 24  #1365 pc 13436
	jal	%x1, fneg_cond.2615  #1365 pc 13440
	addi	%x2, %x2, -24  #1365 pc 13444
	lw	%x1, 20(%x2) #1365 pc 13448
	lw	%x6, 8(%x2)  #1365 pc 13452
	fsw	%f0, 0(%x6)  #1365 pc 13456
	fmv	%f0, l.6263  #0 pc 13460
	lw	%x7, 4(%x2)  #1367 pc 13464
	flw	%f1, 0(%x7)  #1367 pc 13468
	fdiv	%f0, %f0, %f1  #1367 pc 13472
	fsw	%f0, 4(%x6)  #1367 pc 13476
	j	be_cont.9278 #pc 13480
	nop #pc 13484
be_else.9277: #pc 13488
	fmv	%f0, l.6244  #0 pc 13488
	lw	%x6, 8(%x2)  #1362 pc 13492
	fsw	%f0, 4(%x6)  #1362 pc 13496
be_cont.9278: #pc 13500
	lw	%x7, 4(%x2)  #1369 pc 13500
	flw	%f0, 4(%x7)  #1369 pc 13504
	sw	%x1, 20(%x2)  #1369 pc 13508
	addi	%x2, %x2, 24  #1369 pc 13512
	jal	%x1, fiszero.2509  #1369 pc 13516
	addi	%x2, %x2, -24  #1369 pc 13520
	lw	%x1, 20(%x2) #1369 pc 13524
	beq	%x6, %x0, 12  #1369 pc 13528
	j	be_else.9279 #pc 13532
	nop #pc 13536
	lw	%x6, 0(%x2)  #1372 pc 13540
	sw	%x1, 20(%x2)  #1372 pc 13544
	addi	%x2, %x2, 24  #1372 pc 13548
	jal	%x1, o_isinvert.2665  #1372 pc 13552
	addi	%x2, %x2, -24  #1372 pc 13556
	lw	%x1, 20(%x2) #1372 pc 13560
	lw	%x7, 4(%x2)  #1372 pc 13564
	flw	%f0, 4(%x7)  #1372 pc 13568
	sw	%x6, 20(%x2)  #1372 pc 13572
	sw	%x1, 24(%x2)  #1372 pc 13576
	addi	%x2, %x2, 28  #1372 pc 13580
	jal	%x1, fisneg.2513  #1372 pc 13584
	addi	%x2, %x2, -28  #1372 pc 13588
	lw	%x1, 24(%x2) #1372 pc 13592
	addi	%x7, %x6, 0  #1372 pc 13596
	lw	%x6, 20(%x2)  #1372 pc 13600
	sw	%x1, 24(%x2)  #1372 pc 13604
	addi	%x2, %x2, 28  #1372 pc 13608
	jal	%x1, xor.2610  #1372 pc 13612
	addi	%x2, %x2, -28  #1372 pc 13616
	lw	%x1, 24(%x2) #1372 pc 13620
	lw	%x7, 0(%x2)  #1372 pc 13624
	sw	%x6, 24(%x2)  #1372 pc 13628
	addi	%x6, %x7, 0  #0 pc 13632
	sw	%x1, 28(%x2)  #1372 pc 13636
	addi	%x2, %x2, 32  #1372 pc 13640
	jal	%x1, o_param_b.2671  #1372 pc 13644
	addi	%x2, %x2, -32  #1372 pc 13648
	lw	%x1, 28(%x2) #1372 pc 13652
	lw	%x6, 24(%x2)  #1372 pc 13656
	sw	%x1, 28(%x2)  #1372 pc 13660
	addi	%x2, %x2, 32  #1372 pc 13664
	jal	%x1, fneg_cond.2615  #1372 pc 13668
	addi	%x2, %x2, -32  #1372 pc 13672
	lw	%x1, 28(%x2) #1372 pc 13676
	lw	%x6, 8(%x2)  #1372 pc 13680
	fsw	%f0, 8(%x6)  #1372 pc 13684
	fmv	%f0, l.6263  #0 pc 13688
	lw	%x7, 4(%x2)  #1373 pc 13692
	flw	%f1, 4(%x7)  #1373 pc 13696
	fdiv	%f0, %f0, %f1  #1373 pc 13700
	fsw	%f0, 12(%x6)  #1373 pc 13704
	j	be_cont.9280 #pc 13708
	nop #pc 13712
be_else.9279: #pc 13716
	fmv	%f0, l.6244  #0 pc 13716
	lw	%x6, 8(%x2)  #1370 pc 13720
	fsw	%f0, 12(%x6)  #1370 pc 13724
be_cont.9280: #pc 13728
	lw	%x7, 4(%x2)  #1375 pc 13728
	flw	%f0, 8(%x7)  #1375 pc 13732
	sw	%x1, 28(%x2)  #1375 pc 13736
	addi	%x2, %x2, 32  #1375 pc 13740
	jal	%x1, fiszero.2509  #1375 pc 13744
	addi	%x2, %x2, -32  #1375 pc 13748
	lw	%x1, 28(%x2) #1375 pc 13752
	beq	%x6, %x0, 12  #1375 pc 13756
	j	be_else.9281 #pc 13760
	nop #pc 13764
	lw	%x6, 0(%x2)  #1378 pc 13768
	sw	%x1, 28(%x2)  #1378 pc 13772
	addi	%x2, %x2, 32  #1378 pc 13776
	jal	%x1, o_isinvert.2665  #1378 pc 13780
	addi	%x2, %x2, -32  #1378 pc 13784
	lw	%x1, 28(%x2) #1378 pc 13788
	lw	%x7, 4(%x2)  #1378 pc 13792
	flw	%f0, 8(%x7)  #1378 pc 13796
	sw	%x6, 28(%x2)  #1378 pc 13800
	sw	%x1, 32(%x2)  #1378 pc 13804
	addi	%x2, %x2, 36  #1378 pc 13808
	jal	%x1, fisneg.2513  #1378 pc 13812
	addi	%x2, %x2, -36  #1378 pc 13816
	lw	%x1, 32(%x2) #1378 pc 13820
	addi	%x7, %x6, 0  #1378 pc 13824
	lw	%x6, 28(%x2)  #1378 pc 13828
	sw	%x1, 32(%x2)  #1378 pc 13832
	addi	%x2, %x2, 36  #1378 pc 13836
	jal	%x1, xor.2610  #1378 pc 13840
	addi	%x2, %x2, -36  #1378 pc 13844
	lw	%x1, 32(%x2) #1378 pc 13848
	lw	%x7, 0(%x2)  #1378 pc 13852
	sw	%x6, 32(%x2)  #1378 pc 13856
	addi	%x6, %x7, 0  #0 pc 13860
	sw	%x1, 36(%x2)  #1378 pc 13864
	addi	%x2, %x2, 40  #1378 pc 13868
	jal	%x1, o_param_c.2673  #1378 pc 13872
	addi	%x2, %x2, -40  #1378 pc 13876
	lw	%x1, 36(%x2) #1378 pc 13880
	lw	%x6, 32(%x2)  #1378 pc 13884
	sw	%x1, 36(%x2)  #1378 pc 13888
	addi	%x2, %x2, 40  #1378 pc 13892
	jal	%x1, fneg_cond.2615  #1378 pc 13896
	addi	%x2, %x2, -40  #1378 pc 13900
	lw	%x1, 36(%x2) #1378 pc 13904
	lw	%x6, 8(%x2)  #1378 pc 13908
	fsw	%f0, 16(%x6)  #1378 pc 13912
	fmv	%f0, l.6263  #0 pc 13916
	lw	%x7, 4(%x2)  #1379 pc 13920
	flw	%f1, 8(%x7)  #1379 pc 13924
	fdiv	%f0, %f0, %f1  #1379 pc 13928
	fsw	%f0, 20(%x6)  #1379 pc 13932
	j	be_cont.9282 #pc 13936
	nop #pc 13940
be_else.9281: #pc 13944
	fmv	%f0, l.6244  #0 pc 13944
	lw	%x6, 8(%x2)  #1376 pc 13948
	fsw	%f0, 20(%x6)  #1376 pc 13952
be_cont.9282: #pc 13956
	ret #pc 13956
	nop #pc 13960
setup_surface_table.2840:  #pc 13964
	addi	%x8, %x0, 4  #0 pc 13964
	fmv	%f0, l.6244  #0 pc 13968
	sw	%x7, 0(%x2)  #1386 pc 13972
	sw	%x6, 4(%x2)  #1386 pc 13976
	addi	%x6, %x8, 0  #0 pc 13980
	sw	%x1, 8(%x2)  #1386 pc 13984
	addi	%x2, %x2, 12  #1386 pc 13988
	jal	%x1, create_float_array.2577  #1386 pc 13992
	addi	%x2, %x2, -12  #1386 pc 13996
	lw	%x1, 8(%x2) #1386 pc 14000
	lw	%x7, 4(%x2)  #1388 pc 14004
	flw	%f0, 0(%x7)  #1388 pc 14008
	lw	%x8, 0(%x2)  #1388 pc 14012
	sw	%x6, 8(%x2)  #1388 pc 14016
	fsw	%f0, 16(%x2)  #1388 pc 14020
	addi	%x6, %x8, 0  #0 pc 14024
	sw	%x1, 24(%x2)  #1388 pc 14028
	addi	%x2, %x2, 28  #1388 pc 14032
	jal	%x1, o_param_a.2669  #1388 pc 14036
	addi	%x2, %x2, -28  #1388 pc 14040
	lw	%x1, 24(%x2) #1388 pc 14044
	flw	%f1, 16(%x2)  #1388 pc 14048
	fmul	%f0, %f1, %f0  #1388 pc 14052
	lw	%x6, 4(%x2)  #1388 pc 14056
	flw	%f1, 4(%x6)  #1388 pc 14060
	lw	%x7, 0(%x2)  #1388 pc 14064
	fsw	%f0, 24(%x2)  #1388 pc 14068
	fsw	%f1, 32(%x2)  #1388 pc 14072
	addi	%x6, %x7, 0  #0 pc 14076
	sw	%x1, 40(%x2)  #1388 pc 14080
	addi	%x2, %x2, 44  #1388 pc 14084
	jal	%x1, o_param_b.2671  #1388 pc 14088
	addi	%x2, %x2, -44  #1388 pc 14092
	lw	%x1, 40(%x2) #1388 pc 14096
	flw	%f1, 32(%x2)  #1388 pc 14100
	fmul	%f0, %f1, %f0  #1388 pc 14104
	flw	%f1, 24(%x2)  #1388 pc 14108
	fadd	%f0, %f1, %f0  #1388 pc 14112
	lw	%x6, 4(%x2)  #1388 pc 14116
	flw	%f1, 8(%x6)  #1388 pc 14120
	lw	%x6, 0(%x2)  #1388 pc 14124
	fsw	%f0, 40(%x2)  #1388 pc 14128
	fsw	%f1, 48(%x2)  #1388 pc 14132
	sw	%x1, 56(%x2)  #1388 pc 14136
	addi	%x2, %x2, 60  #1388 pc 14140
	jal	%x1, o_param_c.2673  #1388 pc 14144
	addi	%x2, %x2, -60  #1388 pc 14148
	lw	%x1, 56(%x2) #1388 pc 14152
	flw	%f1, 48(%x2)  #1388 pc 14156
	fmul	%f0, %f1, %f0  #1388 pc 14160
	flw	%f1, 40(%x2)  #1388 pc 14164
	fadd	%f0, %f1, %f0  #1388 pc 14168
	fsw	%f0, 56(%x2)  #1390 pc 14172
	sw	%x1, 64(%x2)  #1390 pc 14176
	addi	%x2, %x2, 68  #1390 pc 14180
	jal	%x1, fispos.2511  #1390 pc 14184
	addi	%x2, %x2, -68  #1390 pc 14188
	lw	%x1, 64(%x2) #1390 pc 14192
	beq	%x6, %x0, 12  #1390 pc 14196
	j	be_else.9284 #pc 14200
	nop #pc 14204
	fmv	%f0, l.6244  #0 pc 14208
	lw	%x6, 8(%x2)  #1398 pc 14212
	fsw	%f0, 0(%x6)  #1398 pc 14216
	j	be_cont.9285 #pc 14220
	nop #pc 14224
be_else.9284: #pc 14228
	fmv	%f0, l.6292  #0 pc 14228
	flw	%f1, 56(%x2)  #1392 pc 14232
	fdiv	%f0, %f0, %f1  #1392 pc 14236
	lw	%x6, 8(%x2)  #1392 pc 14240
	fsw	%f0, 0(%x6)  #1392 pc 14244
	lw	%x7, 0(%x2)  #1394 pc 14248
	addi	%x6, %x7, 0  #0 pc 14252
	sw	%x1, 64(%x2)  #1394 pc 14256
	addi	%x2, %x2, 68  #1394 pc 14260
	jal	%x1, o_param_a.2669  #1394 pc 14264
	addi	%x2, %x2, -68  #1394 pc 14268
	lw	%x1, 64(%x2) #1394 pc 14272
	flw	%f1, 56(%x2)  #1394 pc 14276
	fdiv	%f0, %f0, %f1  #1394 pc 14280
	sw	%x1, 64(%x2)  #1394 pc 14284
	addi	%x2, %x2, 68  #1394 pc 14288
	jal	%x1, fneg.2515  #1394 pc 14292
	addi	%x2, %x2, -68  #1394 pc 14296
	lw	%x1, 64(%x2) #1394 pc 14300
	lw	%x6, 8(%x2)  #1394 pc 14304
	fsw	%f0, 4(%x6)  #1394 pc 14308
	lw	%x7, 0(%x2)  #1395 pc 14312
	addi	%x6, %x7, 0  #0 pc 14316
	sw	%x1, 64(%x2)  #1395 pc 14320
	addi	%x2, %x2, 68  #1395 pc 14324
	jal	%x1, o_param_b.2671  #1395 pc 14328
	addi	%x2, %x2, -68  #1395 pc 14332
	lw	%x1, 64(%x2) #1395 pc 14336
	flw	%f1, 56(%x2)  #1395 pc 14340
	fdiv	%f0, %f0, %f1  #1395 pc 14344
	sw	%x1, 64(%x2)  #1395 pc 14348
	addi	%x2, %x2, 68  #1395 pc 14352
	jal	%x1, fneg.2515  #1395 pc 14356
	addi	%x2, %x2, -68  #1395 pc 14360
	lw	%x1, 64(%x2) #1395 pc 14364
	lw	%x6, 8(%x2)  #1395 pc 14368
	fsw	%f0, 8(%x6)  #1395 pc 14372
	lw	%x7, 0(%x2)  #1396 pc 14376
	addi	%x6, %x7, 0  #0 pc 14380
	sw	%x1, 64(%x2)  #1396 pc 14384
	addi	%x2, %x2, 68  #1396 pc 14388
	jal	%x1, o_param_c.2673  #1396 pc 14392
	addi	%x2, %x2, -68  #1396 pc 14396
	lw	%x1, 64(%x2) #1396 pc 14400
	flw	%f1, 56(%x2)  #1396 pc 14404
	fdiv	%f0, %f0, %f1  #1396 pc 14408
	sw	%x1, 64(%x2)  #1396 pc 14412
	addi	%x2, %x2, 68  #1396 pc 14416
	jal	%x1, fneg.2515  #1396 pc 14420
	addi	%x2, %x2, -68  #1396 pc 14424
	lw	%x1, 64(%x2) #1396 pc 14428
	lw	%x6, 8(%x2)  #1396 pc 14432
	fsw	%f0, 12(%x6)  #1396 pc 14436
be_cont.9285: #pc 14440
	ret #pc 14440
	nop #pc 14444
setup_second_table.2843:  #pc 14448
	addi	%x8, %x0, 5  #0 pc 14448
	fmv	%f0, l.6244  #0 pc 14452
	sw	%x7, 0(%x2)  #1405 pc 14456
	sw	%x6, 4(%x2)  #1405 pc 14460
	addi	%x6, %x8, 0  #0 pc 14464
	sw	%x1, 8(%x2)  #1405 pc 14468
	addi	%x2, %x2, 12  #1405 pc 14472
	jal	%x1, create_float_array.2577  #1405 pc 14476
	addi	%x2, %x2, -12  #1405 pc 14480
	lw	%x1, 8(%x2) #1405 pc 14484
	lw	%x7, 4(%x2)  #1407 pc 14488
	flw	%f0, 0(%x7)  #1407 pc 14492
	flw	%f1, 4(%x7)  #1407 pc 14496
	flw	%f2, 8(%x7)  #1407 pc 14500
	lw	%x8, 0(%x2)  #1407 pc 14504
	sw	%x6, 8(%x2)  #1407 pc 14508
	addi	%x6, %x8, 0  #0 pc 14512
	sw	%x1, 12(%x2)  #1407 pc 14516
	addi	%x2, %x2, 16  #1407 pc 14520
	jal	%x1, quadratic.2774  #1407 pc 14524
	addi	%x2, %x2, -16  #1407 pc 14528
	lw	%x1, 12(%x2) #1407 pc 14532
	lw	%x6, 4(%x2)  #1408 pc 14536
	flw	%f1, 0(%x6)  #1408 pc 14540
	lw	%x7, 0(%x2)  #1408 pc 14544
	fsw	%f0, 16(%x2)  #1408 pc 14548
	fsw	%f1, 24(%x2)  #1408 pc 14552
	addi	%x6, %x7, 0  #0 pc 14556
	sw	%x1, 32(%x2)  #1408 pc 14560
	addi	%x2, %x2, 36  #1408 pc 14564
	jal	%x1, o_param_a.2669  #1408 pc 14568
	addi	%x2, %x2, -36  #1408 pc 14572
	lw	%x1, 32(%x2) #1408 pc 14576
	flw	%f1, 24(%x2)  #1408 pc 14580
	fmul	%f0, %f1, %f0  #1408 pc 14584
	sw	%x1, 32(%x2)  #1408 pc 14588
	addi	%x2, %x2, 36  #1408 pc 14592
	jal	%x1, fneg.2515  #1408 pc 14596
	addi	%x2, %x2, -36  #1408 pc 14600
	lw	%x1, 32(%x2) #1408 pc 14604
	lw	%x6, 4(%x2)  #1409 pc 14608
	flw	%f1, 4(%x6)  #1409 pc 14612
	lw	%x7, 0(%x2)  #1409 pc 14616
	fsw	%f0, 32(%x2)  #1409 pc 14620
	fsw	%f1, 40(%x2)  #1409 pc 14624
	addi	%x6, %x7, 0  #0 pc 14628
	sw	%x1, 48(%x2)  #1409 pc 14632
	addi	%x2, %x2, 52  #1409 pc 14636
	jal	%x1, o_param_b.2671  #1409 pc 14640
	addi	%x2, %x2, -52  #1409 pc 14644
	lw	%x1, 48(%x2) #1409 pc 14648
	flw	%f1, 40(%x2)  #1409 pc 14652
	fmul	%f0, %f1, %f0  #1409 pc 14656
	sw	%x1, 48(%x2)  #1409 pc 14660
	addi	%x2, %x2, 52  #1409 pc 14664
	jal	%x1, fneg.2515  #1409 pc 14668
	addi	%x2, %x2, -52  #1409 pc 14672
	lw	%x1, 48(%x2) #1409 pc 14676
	lw	%x6, 4(%x2)  #1410 pc 14680
	flw	%f1, 8(%x6)  #1410 pc 14684
	lw	%x7, 0(%x2)  #1410 pc 14688
	fsw	%f0, 48(%x2)  #1410 pc 14692
	fsw	%f1, 56(%x2)  #1410 pc 14696
	addi	%x6, %x7, 0  #0 pc 14700
	sw	%x1, 64(%x2)  #1410 pc 14704
	addi	%x2, %x2, 68  #1410 pc 14708
	jal	%x1, o_param_c.2673  #1410 pc 14712
	addi	%x2, %x2, -68  #1410 pc 14716
	lw	%x1, 64(%x2) #1410 pc 14720
	flw	%f1, 56(%x2)  #1410 pc 14724
	fmul	%f0, %f1, %f0  #1410 pc 14728
	sw	%x1, 64(%x2)  #1410 pc 14732
	addi	%x2, %x2, 68  #1410 pc 14736
	jal	%x1, fneg.2515  #1410 pc 14740
	addi	%x2, %x2, -68  #1410 pc 14744
	lw	%x1, 64(%x2) #1410 pc 14748
	lw	%x6, 8(%x2)  #1412 pc 14752
	flw	%f1, 16(%x2)  #1412 pc 14756
	fsw	%f1, 0(%x6)  #1412 pc 14760
	lw	%x7, 0(%x2)  #1416 pc 14764
	fsw	%f0, 64(%x2)  #1416 pc 14768
	addi	%x6, %x7, 0  #0 pc 14772
	sw	%x1, 72(%x2)  #1416 pc 14776
	addi	%x2, %x2, 76  #1416 pc 14780
	jal	%x1, o_isrot.2667  #1416 pc 14784
	addi	%x2, %x2, -76  #1416 pc 14788
	lw	%x1, 72(%x2) #1416 pc 14792
	beq	%x6, %x0, 12  #1416 pc 14796
	j	be_else.9287 #pc 14800
	nop #pc 14804
	lw	%x6, 8(%x2)  #1421 pc 14808
	flw	%f0, 32(%x2)  #1421 pc 14812
	fsw	%f0, 4(%x6)  #1421 pc 14816
	flw	%f0, 48(%x2)  #1422 pc 14820
	fsw	%f0, 8(%x6)  #1422 pc 14824
	flw	%f0, 64(%x2)  #1423 pc 14828
	fsw	%f0, 12(%x6)  #1423 pc 14832
	j	be_cont.9288 #pc 14836
	nop #pc 14840
be_else.9287: #pc 14844
	lw	%x6, 4(%x2)  #1417 pc 14844
	flw	%f0, 8(%x6)  #1417 pc 14848
	lw	%x7, 0(%x2)  #1417 pc 14852
	fsw	%f0, 72(%x2)  #1417 pc 14856
	addi	%x6, %x7, 0  #0 pc 14860
	sw	%x1, 80(%x2)  #1417 pc 14864
	addi	%x2, %x2, 84  #1417 pc 14868
	jal	%x1, o_param_r2.2695  #1417 pc 14872
	addi	%x2, %x2, -84  #1417 pc 14876
	lw	%x1, 80(%x2) #1417 pc 14880
	flw	%f1, 72(%x2)  #1417 pc 14884
	fmul	%f0, %f1, %f0  #1417 pc 14888
	lw	%x6, 4(%x2)  #1417 pc 14892
	flw	%f1, 4(%x6)  #1417 pc 14896
	lw	%x7, 0(%x2)  #1417 pc 14900
	fsw	%f0, 80(%x2)  #1417 pc 14904
	fsw	%f1, 88(%x2)  #1417 pc 14908
	addi	%x6, %x7, 0  #0 pc 14912
	sw	%x1, 96(%x2)  #1417 pc 14916
	addi	%x2, %x2, 100  #1417 pc 14920
	jal	%x1, o_param_r3.2697  #1417 pc 14924
	addi	%x2, %x2, -100  #1417 pc 14928
	lw	%x1, 96(%x2) #1417 pc 14932
	flw	%f1, 88(%x2)  #1417 pc 14936
	fmul	%f0, %f1, %f0  #1417 pc 14940
	flw	%f1, 80(%x2)  #1417 pc 14944
	fadd	%f0, %f1, %f0  #1417 pc 14948
	sw	%x1, 96(%x2)  #1417 pc 14952
	addi	%x2, %x2, 100  #1417 pc 14956
	jal	%x1, fhalf.2519  #1417 pc 14960
	addi	%x2, %x2, -100  #1417 pc 14964
	lw	%x1, 96(%x2) #1417 pc 14968
	flw	%f1, 32(%x2)  #1417 pc 14972
	fsub	%f0, %f1, %f0  #1417 pc 14976
	lw	%x6, 8(%x2)  #1417 pc 14980
	fsw	%f0, 4(%x6)  #1417 pc 14984
	lw	%x7, 4(%x2)  #1418 pc 14988
	flw	%f0, 8(%x7)  #1418 pc 14992
	lw	%x8, 0(%x2)  #1418 pc 14996
	fsw	%f0, 96(%x2)  #1418 pc 15000
	addi	%x6, %x8, 0  #0 pc 15004
	sw	%x1, 104(%x2)  #1418 pc 15008
	addi	%x2, %x2, 108  #1418 pc 15012
	jal	%x1, o_param_r1.2693  #1418 pc 15016
	addi	%x2, %x2, -108  #1418 pc 15020
	lw	%x1, 104(%x2) #1418 pc 15024
	flw	%f1, 96(%x2)  #1418 pc 15028
	fmul	%f0, %f1, %f0  #1418 pc 15032
	lw	%x6, 4(%x2)  #1418 pc 15036
	flw	%f1, 0(%x6)  #1418 pc 15040
	lw	%x7, 0(%x2)  #1418 pc 15044
	fsw	%f0, 104(%x2)  #1418 pc 15048
	fsw	%f1, 112(%x2)  #1418 pc 15052
	addi	%x6, %x7, 0  #0 pc 15056
	sw	%x1, 120(%x2)  #1418 pc 15060
	addi	%x2, %x2, 124  #1418 pc 15064
	jal	%x1, o_param_r3.2697  #1418 pc 15068
	addi	%x2, %x2, -124  #1418 pc 15072
	lw	%x1, 120(%x2) #1418 pc 15076
	flw	%f1, 112(%x2)  #1418 pc 15080
	fmul	%f0, %f1, %f0  #1418 pc 15084
	flw	%f1, 104(%x2)  #1418 pc 15088
	fadd	%f0, %f1, %f0  #1418 pc 15092
	sw	%x1, 120(%x2)  #1418 pc 15096
	addi	%x2, %x2, 124  #1418 pc 15100
	jal	%x1, fhalf.2519  #1418 pc 15104
	addi	%x2, %x2, -124  #1418 pc 15108
	lw	%x1, 120(%x2) #1418 pc 15112
	flw	%f1, 48(%x2)  #1418 pc 15116
	fsub	%f0, %f1, %f0  #1418 pc 15120
	lw	%x6, 8(%x2)  #1418 pc 15124
	fsw	%f0, 8(%x6)  #1418 pc 15128
	lw	%x7, 4(%x2)  #1419 pc 15132
	flw	%f0, 4(%x7)  #1419 pc 15136
	lw	%x8, 0(%x2)  #1419 pc 15140
	fsw	%f0, 120(%x2)  #1419 pc 15144
	addi	%x6, %x8, 0  #0 pc 15148
	sw	%x1, 128(%x2)  #1419 pc 15152
	addi	%x2, %x2, 132  #1419 pc 15156
	jal	%x1, o_param_r1.2693  #1419 pc 15160
	addi	%x2, %x2, -132  #1419 pc 15164
	lw	%x1, 128(%x2) #1419 pc 15168
	flw	%f1, 120(%x2)  #1419 pc 15172
	fmul	%f0, %f1, %f0  #1419 pc 15176
	lw	%x6, 4(%x2)  #1419 pc 15180
	flw	%f1, 0(%x6)  #1419 pc 15184
	lw	%x6, 0(%x2)  #1419 pc 15188
	fsw	%f0, 128(%x2)  #1419 pc 15192
	fsw	%f1, 136(%x2)  #1419 pc 15196
	sw	%x1, 144(%x2)  #1419 pc 15200
	addi	%x2, %x2, 148  #1419 pc 15204
	jal	%x1, o_param_r2.2695  #1419 pc 15208
	addi	%x2, %x2, -148  #1419 pc 15212
	lw	%x1, 144(%x2) #1419 pc 15216
	flw	%f1, 136(%x2)  #1419 pc 15220
	fmul	%f0, %f1, %f0  #1419 pc 15224
	flw	%f1, 128(%x2)  #1419 pc 15228
	fadd	%f0, %f1, %f0  #1419 pc 15232
	sw	%x1, 144(%x2)  #1419 pc 15236
	addi	%x2, %x2, 148  #1419 pc 15240
	jal	%x1, fhalf.2519  #1419 pc 15244
	addi	%x2, %x2, -148  #1419 pc 15248
	lw	%x1, 144(%x2) #1419 pc 15252
	flw	%f1, 64(%x2)  #1419 pc 15256
	fsub	%f0, %f1, %f0  #1419 pc 15260
	lw	%x6, 8(%x2)  #1419 pc 15264
	fsw	%f0, 12(%x6)  #1419 pc 15268
be_cont.9288: #pc 15272
	flw	%f0, 16(%x2)  #1425 pc 15272
	sw	%x1, 144(%x2)  #1425 pc 15276
	addi	%x2, %x2, 148  #1425 pc 15280
	jal	%x1, fiszero.2509  #1425 pc 15284
	addi	%x2, %x2, -148  #1425 pc 15288
	lw	%x1, 144(%x2) #1425 pc 15292
	beq	%x6, %x0, 12  #1425 pc 15296
	j	be_else.9289 #pc 15300
	nop #pc 15304
	fmv	%f0, l.6263  #0 pc 15308
	flw	%f1, 16(%x2)  #1426 pc 15312
	fdiv	%f0, %f0, %f1  #1426 pc 15316
	lw	%x6, 8(%x2)  #1426 pc 15320
	fsw	%f0, 16(%x6)  #1426 pc 15324
	j	be_cont.9290 #pc 15328
	nop #pc 15332
be_else.9289: #pc 15336
be_cont.9290: #pc 15336
	lw	%x6, 8(%x2)  #1428 pc 15336
	ret #pc 15340
	nop #pc 15344
iter_setup_dirvec_constants.2846:  #pc 15348
	lw	%x8, 4(%x29)  #0 pc 15348
	bge	%x7, %x0, 12  #1434 pc 15352
	j	bge_else.9291 #pc 15356
	nop #pc 15360
	slli	%x9, %x7, 2  #1435 pc 15364
	add	%x31, %x9, %x8  #1435 pc 15368
	lw	%x8, 0(%x31)  #1435 pc 15372
	sw	%x29, 0(%x2)  #1436 pc 15376
	sw	%x7, 4(%x2)  #1436 pc 15380
	sw	%x8, 8(%x2)  #1436 pc 15384
	sw	%x6, 12(%x2)  #1436 pc 15388
	sw	%x1, 16(%x2)  #1436 pc 15392
	addi	%x2, %x2, 20  #1436 pc 15396
	jal	%x1, d_const.2722  #1436 pc 15400
	addi	%x2, %x2, -20  #1436 pc 15404
	lw	%x1, 16(%x2) #1436 pc 15408
	lw	%x7, 12(%x2)  #1437 pc 15412
	sw	%x6, 16(%x2)  #1437 pc 15416
	addi	%x6, %x7, 0  #0 pc 15420
	sw	%x1, 20(%x2)  #1437 pc 15424
	addi	%x2, %x2, 24  #1437 pc 15428
	jal	%x1, d_vec.2720  #1437 pc 15432
	addi	%x2, %x2, -24  #1437 pc 15436
	lw	%x1, 20(%x2) #1437 pc 15440
	lw	%x7, 8(%x2)  #1438 pc 15444
	sw	%x6, 20(%x2)  #1438 pc 15448
	addi	%x6, %x7, 0  #0 pc 15452
	sw	%x1, 24(%x2)  #1438 pc 15456
	addi	%x2, %x2, 28  #1438 pc 15460
	jal	%x1, o_form.2661  #1438 pc 15464
	addi	%x2, %x2, -28  #1438 pc 15468
	lw	%x1, 24(%x2) #1438 pc 15472
	addi	%x31, %x0, 1  #pc 15476
	beq	%x6, %x31, 12  #1439 pc 15480
	j	be_else.9292 #pc 15484
	nop #pc 15488
	lw	%x6, 20(%x2)  #1440 pc 15492
	lw	%x7, 8(%x2)  #1440 pc 15496
	sw	%x1, 24(%x2)  #1440 pc 15500
	addi	%x2, %x2, 28  #1440 pc 15504
	jal	%x1, setup_rect_table.2837  #1440 pc 15508
	addi	%x2, %x2, -28  #1440 pc 15512
	lw	%x1, 24(%x2) #1440 pc 15516
	lw	%x7, 4(%x2)  #1440 pc 15520
	slli	%x8, %x7, 2  #1440 pc 15524
	lw	%x9, 16(%x2)  #1440 pc 15528
	add	%x31, %x8, %x9  #1440 pc 15532
	sw	%x6, 0(%x31)  #1440 pc 15536
	j	be_cont.9293 #pc 15540
	nop #pc 15544
be_else.9292: #pc 15548
	addi	%x31, %x0, 2  #pc 15548
	beq	%x6, %x31, 12  #1441 pc 15552
	j	be_else.9294 #pc 15556
	nop #pc 15560
	lw	%x6, 20(%x2)  #1442 pc 15564
	lw	%x7, 8(%x2)  #1442 pc 15568
	sw	%x1, 24(%x2)  #1442 pc 15572
	addi	%x2, %x2, 28  #1442 pc 15576
	jal	%x1, setup_surface_table.2840  #1442 pc 15580
	addi	%x2, %x2, -28  #1442 pc 15584
	lw	%x1, 24(%x2) #1442 pc 15588
	lw	%x7, 4(%x2)  #1442 pc 15592
	slli	%x8, %x7, 2  #1442 pc 15596
	lw	%x9, 16(%x2)  #1442 pc 15600
	add	%x31, %x8, %x9  #1442 pc 15604
	sw	%x6, 0(%x31)  #1442 pc 15608
	j	be_cont.9295 #pc 15612
	nop #pc 15616
be_else.9294: #pc 15620
	lw	%x6, 20(%x2)  #1444 pc 15620
	lw	%x7, 8(%x2)  #1444 pc 15624
	sw	%x1, 24(%x2)  #1444 pc 15628
	addi	%x2, %x2, 28  #1444 pc 15632
	jal	%x1, setup_second_table.2843  #1444 pc 15636
	addi	%x2, %x2, -28  #1444 pc 15640
	lw	%x1, 24(%x2) #1444 pc 15644
	lw	%x7, 4(%x2)  #1444 pc 15648
	slli	%x8, %x7, 2  #1444 pc 15652
	lw	%x9, 16(%x2)  #1444 pc 15656
	add	%x31, %x8, %x9  #1444 pc 15660
	sw	%x6, 0(%x31)  #1444 pc 15664
be_cont.9295: #pc 15668
be_cont.9293: #pc 15668
	addi	%x7, %x7, -1  #1446 pc 15668
	lw	%x6, 12(%x2)  #1446 pc 15672
	lw	%x29, 0(%x2)  #1446 pc 15676
	lw	%x30, 0(%x29)  #1446 pc 15680
	jalr	%x0, %x30, 0  #1446 pc 15684
	nop #pc 15688
bge_else.9291: #pc 15692
	ret #pc 15692
	nop #pc 15696
setup_dirvec_constants.2849:  #pc 15700
	lw	%x7, 8(%x29)  #0 pc 15700
	lw	%x29, 4(%x29)  #0 pc 15704
	lw	%x7, 0(%x7)  #1451 pc 15708
	addi	%x7, %x7, -1  #1451 pc 15712
	lw	%x30, 0(%x29)  #1451 pc 15716
	jalr	%x0, %x30, 0  #1451 pc 15720
	nop #pc 15724
setup_startp_constants.2851:  #pc 15728
	lw	%x8, 4(%x29)  #0 pc 15728
	bge	%x7, %x0, 12  #1459 pc 15732
	j	bge_else.9297 #pc 15736
	nop #pc 15740
	slli	%x9, %x7, 2  #1460 pc 15744
	add	%x31, %x9, %x8  #1460 pc 15748
	lw	%x8, 0(%x31)  #1460 pc 15752
	sw	%x29, 0(%x2)  #1461 pc 15756
	sw	%x7, 4(%x2)  #1461 pc 15760
	sw	%x6, 8(%x2)  #1461 pc 15764
	sw	%x8, 12(%x2)  #1461 pc 15768
	addi	%x6, %x8, 0  #0 pc 15772
	sw	%x1, 16(%x2)  #1461 pc 15776
	addi	%x2, %x2, 20  #1461 pc 15780
	jal	%x1, o_param_ctbl.2699  #1461 pc 15784
	addi	%x2, %x2, -20  #1461 pc 15788
	lw	%x1, 16(%x2) #1461 pc 15792
	lw	%x7, 12(%x2)  #1462 pc 15796
	sw	%x6, 16(%x2)  #1462 pc 15800
	addi	%x6, %x7, 0  #0 pc 15804
	sw	%x1, 20(%x2)  #1462 pc 15808
	addi	%x2, %x2, 24  #1462 pc 15812
	jal	%x1, o_form.2661  #1462 pc 15816
	addi	%x2, %x2, -24  #1462 pc 15820
	lw	%x1, 20(%x2) #1462 pc 15824
	lw	%x7, 8(%x2)  #1463 pc 15828
	flw	%f0, 0(%x7)  #1463 pc 15832
	lw	%x8, 12(%x2)  #1463 pc 15836
	sw	%x6, 20(%x2)  #1463 pc 15840
	fsw	%f0, 24(%x2)  #1463 pc 15844
	addi	%x6, %x8, 0  #0 pc 15848
	sw	%x1, 32(%x2)  #1463 pc 15852
	addi	%x2, %x2, 36  #1463 pc 15856
	jal	%x1, o_param_x.2677  #1463 pc 15860
	addi	%x2, %x2, -36  #1463 pc 15864
	lw	%x1, 32(%x2) #1463 pc 15868
	flw	%f1, 24(%x2)  #1463 pc 15872
	fsub	%f0, %f1, %f0  #1463 pc 15876
	lw	%x6, 16(%x2)  #1463 pc 15880
	fsw	%f0, 0(%x6)  #1463 pc 15884
	lw	%x7, 8(%x2)  #1464 pc 15888
	flw	%f0, 4(%x7)  #1464 pc 15892
	lw	%x8, 12(%x2)  #1464 pc 15896
	fsw	%f0, 32(%x2)  #1464 pc 15900
	addi	%x6, %x8, 0  #0 pc 15904
	sw	%x1, 40(%x2)  #1464 pc 15908
	addi	%x2, %x2, 44  #1464 pc 15912
	jal	%x1, o_param_y.2679  #1464 pc 15916
	addi	%x2, %x2, -44  #1464 pc 15920
	lw	%x1, 40(%x2) #1464 pc 15924
	flw	%f1, 32(%x2)  #1464 pc 15928
	fsub	%f0, %f1, %f0  #1464 pc 15932
	lw	%x6, 16(%x2)  #1464 pc 15936
	fsw	%f0, 4(%x6)  #1464 pc 15940
	lw	%x7, 8(%x2)  #1465 pc 15944
	flw	%f0, 8(%x7)  #1465 pc 15948
	lw	%x8, 12(%x2)  #1465 pc 15952
	fsw	%f0, 40(%x2)  #1465 pc 15956
	addi	%x6, %x8, 0  #0 pc 15960
	sw	%x1, 48(%x2)  #1465 pc 15964
	addi	%x2, %x2, 52  #1465 pc 15968
	jal	%x1, o_param_z.2681  #1465 pc 15972
	addi	%x2, %x2, -52  #1465 pc 15976
	lw	%x1, 48(%x2) #1465 pc 15980
	flw	%f1, 40(%x2)  #1465 pc 15984
	fsub	%f0, %f1, %f0  #1465 pc 15988
	lw	%x6, 16(%x2)  #1465 pc 15992
	fsw	%f0, 8(%x6)  #1465 pc 15996
	lw	%x7, 20(%x2)  #1466 pc 16000
	addi	%x31, %x0, 2  #pc 16004
	beq	%x7, %x31, 12  #1466 pc 16008
	j	be_else.9298 #pc 16012
	nop #pc 16016
	lw	%x7, 12(%x2)  #1468 pc 16020
	addi	%x6, %x7, 0  #0 pc 16024
	sw	%x1, 48(%x2)  #1468 pc 16028
	addi	%x2, %x2, 52  #1468 pc 16032
	jal	%x1, o_param_abc.2675  #1468 pc 16036
	addi	%x2, %x2, -52  #1468 pc 16040
	lw	%x1, 48(%x2) #1468 pc 16044
	lw	%x7, 16(%x2)  #1468 pc 16048
	flw	%f0, 0(%x7)  #1468 pc 16052
	flw	%f1, 4(%x7)  #1468 pc 16056
	flw	%f2, 8(%x7)  #1468 pc 16060
	sw	%x1, 48(%x2)  #1468 pc 16064
	addi	%x2, %x2, 52  #1468 pc 16068
	jal	%x1, veciprod2.2640  #1468 pc 16072
	addi	%x2, %x2, -52  #1468 pc 16076
	lw	%x1, 48(%x2) #1468 pc 16080
	lw	%x6, 16(%x2)  #1467 pc 16084
	fsw	%f0, 12(%x6)  #1467 pc 16088
	j	be_cont.9299 #pc 16092
	nop #pc 16096
be_else.9298: #pc 16100
	addi	%x31, %x0, 2  #pc 16100
	bge	%x31, %x7, 12  #1469 pc 16104
	j	ble_else.9300 #pc 16108
	nop #pc 16112
	j	ble_cont.9301 #pc 16116
	nop #pc 16120
ble_else.9300: #pc 16124
	flw	%f0, 0(%x6)  #1470 pc 16124
	flw	%f1, 4(%x6)  #1470 pc 16128
	flw	%f2, 8(%x6)  #1470 pc 16132
	lw	%x8, 12(%x2)  #1470 pc 16136
	addi	%x6, %x8, 0  #0 pc 16140
	sw	%x1, 48(%x2)  #1470 pc 16144
	addi	%x2, %x2, 52  #1470 pc 16148
	jal	%x1, quadratic.2774  #1470 pc 16152
	addi	%x2, %x2, -52  #1470 pc 16156
	lw	%x1, 48(%x2) #1470 pc 16160
	lw	%x6, 20(%x2)  #1471 pc 16164
	addi	%x31, %x0, 3  #pc 16168
	beq	%x6, %x31, 12  #1471 pc 16172
	j	be_else.9302 #pc 16176
	nop #pc 16180
	fmv	%f1, l.6263  #0 pc 16184
	fsub	%f0, %f0, %f1  #1471 pc 16188
	j	be_cont.9303 #pc 16192
	nop #pc 16196
be_else.9302: #pc 16200
be_cont.9303: #pc 16200
	lw	%x6, 16(%x2)  #1471 pc 16200
	fsw	%f0, 12(%x6)  #1471 pc 16204
ble_cont.9301: #pc 16208
be_cont.9299: #pc 16208
	lw	%x6, 4(%x2)  #1473 pc 16208
	addi	%x7, %x6, -1  #1473 pc 16212
	lw	%x6, 8(%x2)  #1473 pc 16216
	lw	%x29, 0(%x2)  #1473 pc 16220
	lw	%x30, 0(%x29)  #1473 pc 16224
	jalr	%x0, %x30, 0  #1473 pc 16228
	nop #pc 16232
bge_else.9297: #pc 16236
	ret #pc 16236
	nop #pc 16240
setup_startp.2854:  #pc 16244
	lw	%x7, 12(%x29)  #1478 pc 16244
	lw	%x8, 8(%x29)  #1478 pc 16248
	lw	%x9, 4(%x29)  #1478 pc 16252
	sw	%x6, 0(%x2)  #1478 pc 16256
	sw	%x8, 4(%x2)  #1478 pc 16260
	sw	%x9, 8(%x2)  #1478 pc 16264
	addi	%x30, %x7, 0  #0 pc 16268
	addi	%x7, %x6, 0  #0 pc 16272
	addi	%x6, %x30, 0  #0 pc 16276
	sw	%x1, 12(%x2)  #1478 pc 16280
	addi	%x2, %x2, 16  #1478 pc 16284
	jal	%x1, veccpy.2631  #1478 pc 16288
	addi	%x2, %x2, -16  #1478 pc 16292
	lw	%x1, 12(%x2) #1478 pc 16296
	lw	%x6, 8(%x2)  #1479 pc 16300
	lw	%x6, 0(%x6)  #1479 pc 16304
	addi	%x7, %x6, -1  #1479 pc 16308
	lw	%x6, 0(%x2)  #1479 pc 16312
	lw	%x29, 4(%x2)  #1479 pc 16316
	lw	%x30, 0(%x29)  #1479 pc 16320
	jalr	%x0, %x30, 0  #1479 pc 16324
	nop #pc 16328
is_rect_outside.2856:  #pc 16332
	fabs	%f0, %f0  #1491 pc 16332
	fsw	%f2, 0(%x2)  #1491 pc 16336
	sw	%x6, 8(%x2)  #1491 pc 16340
	fsw	%f1, 16(%x2)  #1491 pc 16344
	fsw	%f0, 24(%x2)  #1491 pc 16348
	sw	%x1, 32(%x2)  #1491 pc 16352
	addi	%x2, %x2, 36  #1491 pc 16356
	jal	%x1, o_param_a.2669  #1491 pc 16360
	addi	%x2, %x2, -36  #1491 pc 16364
	lw	%x1, 32(%x2) #1491 pc 16368
	fadd	%f1, %f0, %f30  #1491 pc 16372
	flw	%f0, 24(%x2)  #1491 pc 16376
	sw	%x1, 32(%x2)  #1491 pc 16380
	addi	%x2, %x2, 36  #1491 pc 16384
	jal	%x1, fless.2521  #1491 pc 16388
	addi	%x2, %x2, -36  #1491 pc 16392
	lw	%x1, 32(%x2) #1491 pc 16396
	beq	%x6, %x0, 12  #1491 pc 16400
	j	be_else.9306 #pc 16404
	nop #pc 16408
	addi	%x6, %x0, 0  #0 pc 16412
	j	be_cont.9307 #pc 16416
	nop #pc 16420
be_else.9306: #pc 16424
	flw	%f0, 16(%x2)  #1492 pc 16424
	fabs	%f0, %f0  #1492 pc 16428
	lw	%x6, 8(%x2)  #1492 pc 16432
	fsw	%f0, 32(%x2)  #1492 pc 16436
	sw	%x1, 40(%x2)  #1492 pc 16440
	addi	%x2, %x2, 44  #1492 pc 16444
	jal	%x1, o_param_b.2671  #1492 pc 16448
	addi	%x2, %x2, -44  #1492 pc 16452
	lw	%x1, 40(%x2) #1492 pc 16456
	fadd	%f1, %f0, %f30  #1492 pc 16460
	flw	%f0, 32(%x2)  #1492 pc 16464
	sw	%x1, 40(%x2)  #1492 pc 16468
	addi	%x2, %x2, 44  #1492 pc 16472
	jal	%x1, fless.2521  #1492 pc 16476
	addi	%x2, %x2, -44  #1492 pc 16480
	lw	%x1, 40(%x2) #1492 pc 16484
	beq	%x6, %x0, 12  #1492 pc 16488
	j	be_else.9308 #pc 16492
	nop #pc 16496
	addi	%x6, %x0, 0  #0 pc 16500
	j	be_cont.9309 #pc 16504
	nop #pc 16508
be_else.9308: #pc 16512
	flw	%f0, 0(%x2)  #1493 pc 16512
	fabs	%f0, %f0  #1493 pc 16516
	lw	%x6, 8(%x2)  #1493 pc 16520
	fsw	%f0, 40(%x2)  #1493 pc 16524
	sw	%x1, 48(%x2)  #1493 pc 16528
	addi	%x2, %x2, 52  #1493 pc 16532
	jal	%x1, o_param_c.2673  #1493 pc 16536
	addi	%x2, %x2, -52  #1493 pc 16540
	lw	%x1, 48(%x2) #1493 pc 16544
	fadd	%f1, %f0, %f30  #1493 pc 16548
	flw	%f0, 40(%x2)  #1493 pc 16552
	sw	%x1, 48(%x2)  #1493 pc 16556
	addi	%x2, %x2, 52  #1493 pc 16560
	jal	%x1, fless.2521  #1493 pc 16564
	addi	%x2, %x2, -52  #1493 pc 16568
	lw	%x1, 48(%x2) #1493 pc 16572
be_cont.9309: #pc 16576
be_cont.9307: #pc 16576
	beq	%x6, %x0, 12  #1490 pc 16576
	j	be_else.9310 #pc 16580
	nop #pc 16584
	lw	%x6, 8(%x2)  #1496 pc 16588
	sw	%x1, 48(%x2)  #1496 pc 16592
	addi	%x2, %x2, 52  #1496 pc 16596
	jal	%x1, o_isinvert.2665  #1496 pc 16600
	addi	%x2, %x2, -52  #1496 pc 16604
	lw	%x1, 48(%x2) #1496 pc 16608
	beq	%x6, %x0, 12  #1496 pc 16612
	j	be_else.9311 #pc 16616
	nop #pc 16620
	addi	%x6, %x0, 1  #0 pc 16624
	ret #pc 16628
	nop #pc 16632
be_else.9311: #pc 16636
	addi	%x6, %x0, 0  #0 pc 16636
	ret #pc 16640
	nop #pc 16644
be_else.9310: #pc 16648
	lw	%x6, 8(%x2)  #1496 pc 16648
	j	o_isinvert.2665  #1496 pc 16652
	nop #pc 16656
is_plane_outside.2861:  #pc 16660
	sw	%x6, 0(%x2)  #1501 pc 16660
	fsw	%f2, 8(%x2)  #1501 pc 16664
	fsw	%f1, 16(%x2)  #1501 pc 16668
	fsw	%f0, 24(%x2)  #1501 pc 16672
	sw	%x1, 32(%x2)  #1501 pc 16676
	addi	%x2, %x2, 36  #1501 pc 16680
	jal	%x1, o_param_abc.2675  #1501 pc 16684
	addi	%x2, %x2, -36  #1501 pc 16688
	lw	%x1, 32(%x2) #1501 pc 16692
	flw	%f0, 24(%x2)  #1501 pc 16696
	flw	%f1, 16(%x2)  #1501 pc 16700
	flw	%f2, 8(%x2)  #1501 pc 16704
	sw	%x1, 32(%x2)  #1501 pc 16708
	addi	%x2, %x2, 36  #1501 pc 16712
	jal	%x1, veciprod2.2640  #1501 pc 16716
	addi	%x2, %x2, -36  #1501 pc 16720
	lw	%x1, 32(%x2) #1501 pc 16724
	lw	%x6, 0(%x2)  #1502 pc 16728
	fsw	%f0, 32(%x2)  #1502 pc 16732
	sw	%x1, 40(%x2)  #1502 pc 16736
	addi	%x2, %x2, 44  #1502 pc 16740
	jal	%x1, o_isinvert.2665  #1502 pc 16744
	addi	%x2, %x2, -44  #1502 pc 16748
	lw	%x1, 40(%x2) #1502 pc 16752
	flw	%f0, 32(%x2)  #1502 pc 16756
	sw	%x6, 40(%x2)  #1502 pc 16760
	sw	%x1, 44(%x2)  #1502 pc 16764
	addi	%x2, %x2, 48  #1502 pc 16768
	jal	%x1, fisneg.2513  #1502 pc 16772
	addi	%x2, %x2, -48  #1502 pc 16776
	lw	%x1, 44(%x2) #1502 pc 16780
	addi	%x7, %x6, 0  #1502 pc 16784
	lw	%x6, 40(%x2)  #1502 pc 16788
	sw	%x1, 44(%x2)  #1502 pc 16792
	addi	%x2, %x2, 48  #1502 pc 16796
	jal	%x1, xor.2610  #1502 pc 16800
	addi	%x2, %x2, -48  #1502 pc 16804
	lw	%x1, 44(%x2) #1502 pc 16808
	beq	%x6, %x0, 12  #1502 pc 16812
	j	be_else.9313 #pc 16816
	nop #pc 16820
	addi	%x6, %x0, 1  #0 pc 16824
	ret #pc 16828
	nop #pc 16832
be_else.9313: #pc 16836
	addi	%x6, %x0, 0  #0 pc 16836
	ret #pc 16840
	nop #pc 16844
is_second_outside.2866:  #pc 16848
	sw	%x6, 0(%x2)  #1507 pc 16848
	sw	%x1, 4(%x2)  #1507 pc 16852
	addi	%x2, %x2, 8  #1507 pc 16856
	jal	%x1, quadratic.2774  #1507 pc 16860
	addi	%x2, %x2, -8  #1507 pc 16864
	lw	%x1, 4(%x2) #1507 pc 16868
	lw	%x6, 0(%x2)  #1508 pc 16872
	fsw	%f0, 8(%x2)  #1508 pc 16876
	sw	%x1, 16(%x2)  #1508 pc 16880
	addi	%x2, %x2, 20  #1508 pc 16884
	jal	%x1, o_form.2661  #1508 pc 16888
	addi	%x2, %x2, -20  #1508 pc 16892
	lw	%x1, 16(%x2) #1508 pc 16896
	addi	%x31, %x0, 3  #pc 16900
	beq	%x6, %x31, 12  #1508 pc 16904
	j	be_else.9315 #pc 16908
	nop #pc 16912
	fmv	%f0, l.6263  #0 pc 16916
	flw	%f1, 8(%x2)  #1508 pc 16920
	fsub	%f0, %f1, %f0  #1508 pc 16924
	j	be_cont.9316 #pc 16928
	nop #pc 16932
be_else.9315: #pc 16936
	flw	%f0, 8(%x2)  #1508 pc 16936
be_cont.9316: #pc 16940
	lw	%x6, 0(%x2)  #1509 pc 16940
	fsw	%f0, 16(%x2)  #1509 pc 16944
	sw	%x1, 24(%x2)  #1509 pc 16948
	addi	%x2, %x2, 28  #1509 pc 16952
	jal	%x1, o_isinvert.2665  #1509 pc 16956
	addi	%x2, %x2, -28  #1509 pc 16960
	lw	%x1, 24(%x2) #1509 pc 16964
	flw	%f0, 16(%x2)  #1509 pc 16968
	sw	%x6, 24(%x2)  #1509 pc 16972
	sw	%x1, 28(%x2)  #1509 pc 16976
	addi	%x2, %x2, 32  #1509 pc 16980
	jal	%x1, fisneg.2513  #1509 pc 16984
	addi	%x2, %x2, -32  #1509 pc 16988
	lw	%x1, 28(%x2) #1509 pc 16992
	addi	%x7, %x6, 0  #1509 pc 16996
	lw	%x6, 24(%x2)  #1509 pc 17000
	sw	%x1, 28(%x2)  #1509 pc 17004
	addi	%x2, %x2, 32  #1509 pc 17008
	jal	%x1, xor.2610  #1509 pc 17012
	addi	%x2, %x2, -32  #1509 pc 17016
	lw	%x1, 28(%x2) #1509 pc 17020
	beq	%x6, %x0, 12  #1509 pc 17024
	j	be_else.9317 #pc 17028
	nop #pc 17032
	addi	%x6, %x0, 1  #0 pc 17036
	ret #pc 17040
	nop #pc 17044
be_else.9317: #pc 17048
	addi	%x6, %x0, 0  #0 pc 17048
	ret #pc 17052
	nop #pc 17056
is_outside.2871:  #pc 17060
	fsw	%f2, 0(%x2)  #1514 pc 17060
	fsw	%f1, 8(%x2)  #1514 pc 17064
	sw	%x6, 16(%x2)  #1514 pc 17068
	fsw	%f0, 24(%x2)  #1514 pc 17072
	sw	%x1, 32(%x2)  #1514 pc 17076
	addi	%x2, %x2, 36  #1514 pc 17080
	jal	%x1, o_param_x.2677  #1514 pc 17084
	addi	%x2, %x2, -36  #1514 pc 17088
	lw	%x1, 32(%x2) #1514 pc 17092
	flw	%f1, 24(%x2)  #1514 pc 17096
	fsub	%f0, %f1, %f0  #1514 pc 17100
	lw	%x6, 16(%x2)  #1515 pc 17104
	fsw	%f0, 32(%x2)  #1515 pc 17108
	sw	%x1, 40(%x2)  #1515 pc 17112
	addi	%x2, %x2, 44  #1515 pc 17116
	jal	%x1, o_param_y.2679  #1515 pc 17120
	addi	%x2, %x2, -44  #1515 pc 17124
	lw	%x1, 40(%x2) #1515 pc 17128
	flw	%f1, 8(%x2)  #1515 pc 17132
	fsub	%f0, %f1, %f0  #1515 pc 17136
	lw	%x6, 16(%x2)  #1516 pc 17140
	fsw	%f0, 40(%x2)  #1516 pc 17144
	sw	%x1, 48(%x2)  #1516 pc 17148
	addi	%x2, %x2, 52  #1516 pc 17152
	jal	%x1, o_param_z.2681  #1516 pc 17156
	addi	%x2, %x2, -52  #1516 pc 17160
	lw	%x1, 48(%x2) #1516 pc 17164
	flw	%f1, 0(%x2)  #1516 pc 17168
	fsub	%f0, %f1, %f0  #1516 pc 17172
	lw	%x6, 16(%x2)  #1517 pc 17176
	fsw	%f0, 48(%x2)  #1517 pc 17180
	sw	%x1, 56(%x2)  #1517 pc 17184
	addi	%x2, %x2, 60  #1517 pc 17188
	jal	%x1, o_form.2661  #1517 pc 17192
	addi	%x2, %x2, -60  #1517 pc 17196
	lw	%x1, 56(%x2) #1517 pc 17200
	addi	%x31, %x0, 1  #pc 17204
	beq	%x6, %x31, 12  #1518 pc 17208
	j	be_else.9319 #pc 17212
	nop #pc 17216
	flw	%f0, 32(%x2)  #1519 pc 17220
	flw	%f1, 40(%x2)  #1519 pc 17224
	flw	%f2, 48(%x2)  #1519 pc 17228
	lw	%x6, 16(%x2)  #1519 pc 17232
	j	is_rect_outside.2856  #1519 pc 17236
	nop #pc 17240
be_else.9319: #pc 17244
	addi	%x31, %x0, 2  #pc 17244
	beq	%x6, %x31, 12  #1520 pc 17248
	j	be_else.9320 #pc 17252
	nop #pc 17256
	flw	%f0, 32(%x2)  #1521 pc 17260
	flw	%f1, 40(%x2)  #1521 pc 17264
	flw	%f2, 48(%x2)  #1521 pc 17268
	lw	%x6, 16(%x2)  #1521 pc 17272
	j	is_plane_outside.2861  #1521 pc 17276
	nop #pc 17280
be_else.9320: #pc 17284
	flw	%f0, 32(%x2)  #1523 pc 17284
	flw	%f1, 40(%x2)  #1523 pc 17288
	flw	%f2, 48(%x2)  #1523 pc 17292
	lw	%x6, 16(%x2)  #1523 pc 17296
	j	is_second_outside.2866  #1523 pc 17300
	nop #pc 17304
check_all_inside.2876:  #pc 17308
	lw	%x8, 4(%x29)  #1528 pc 17308
	slli	%x9, %x6, 2  #1528 pc 17312
	add	%x31, %x9, %x7  #1528 pc 17316
	lw	%x9, 0(%x31)  #1528 pc 17320
	addi	%x31, %x0, -1  #pc 17324
	beq	%x9, %x31, 12  #1529 pc 17328
	j	be_else.9321 #pc 17332
	nop #pc 17336
	addi	%x6, %x0, 1  #0 pc 17340
	ret #pc 17344
	nop #pc 17348
be_else.9321: #pc 17352
	slli	%x9, %x9, 2  #1532 pc 17352
	add	%x31, %x9, %x8  #1532 pc 17356
	lw	%x8, 0(%x31)  #1532 pc 17360
	fsw	%f2, 0(%x2)  #1532 pc 17364
	fsw	%f1, 8(%x2)  #1532 pc 17368
	fsw	%f0, 16(%x2)  #1532 pc 17372
	sw	%x7, 24(%x2)  #1532 pc 17376
	sw	%x29, 28(%x2)  #1532 pc 17380
	sw	%x6, 32(%x2)  #1532 pc 17384
	addi	%x6, %x8, 0  #0 pc 17388
	sw	%x1, 36(%x2)  #1532 pc 17392
	addi	%x2, %x2, 40  #1532 pc 17396
	jal	%x1, is_outside.2871  #1532 pc 17400
	addi	%x2, %x2, -40  #1532 pc 17404
	lw	%x1, 36(%x2) #1532 pc 17408
	beq	%x6, %x0, 12  #1532 pc 17412
	j	be_else.9322 #pc 17416
	nop #pc 17420
	lw	%x6, 32(%x2)  #1535 pc 17424
	addi	%x6, %x6, 1  #1535 pc 17428
	flw	%f0, 16(%x2)  #1535 pc 17432
	flw	%f1, 8(%x2)  #1535 pc 17436
	flw	%f2, 0(%x2)  #1535 pc 17440
	lw	%x7, 24(%x2)  #1535 pc 17444
	lw	%x29, 28(%x2)  #1535 pc 17448
	lw	%x30, 0(%x29)  #1535 pc 17452
	jalr	%x0, %x30, 0  #1535 pc 17456
	nop #pc 17460
be_else.9322: #pc 17464
	addi	%x6, %x0, 0  #0 pc 17464
	ret #pc 17468
	nop #pc 17472
shadow_check_and_group.2882:  #pc 17476
	lw	%x8, 28(%x29)  #0 pc 17476
	lw	%x9, 24(%x29)  #0 pc 17480
	lw	%x10, 20(%x29)  #0 pc 17484
	lw	%x11, 16(%x29)  #0 pc 17488
	lw	%x12, 12(%x29)  #0 pc 17492
	lw	%x13, 8(%x29)  #0 pc 17496
	lw	%x14, 4(%x29)  #0 pc 17500
	slli	%x15, %x6, 2  #1548 pc 17504
	add	%x31, %x15, %x7  #1548 pc 17508
	lw	%x15, 0(%x31)  #1548 pc 17512
	addi	%x31, %x0, -1  #pc 17516
	beq	%x15, %x31, 12  #1548 pc 17520
	j	be_else.9323 #pc 17524
	nop #pc 17528
	addi	%x6, %x0, 0  #0 pc 17532
	ret #pc 17536
	nop #pc 17540
be_else.9323: #pc 17544
	slli	%x15, %x6, 2  #1551 pc 17544
	add	%x31, %x15, %x7  #1551 pc 17548
	lw	%x15, 0(%x31)  #1551 pc 17552
	sw	%x14, 0(%x2)  #1552 pc 17556
	sw	%x13, 4(%x2)  #1552 pc 17560
	sw	%x12, 8(%x2)  #1552 pc 17564
	sw	%x7, 12(%x2)  #1552 pc 17568
	sw	%x29, 16(%x2)  #1552 pc 17572
	sw	%x6, 20(%x2)  #1552 pc 17576
	sw	%x10, 24(%x2)  #1552 pc 17580
	sw	%x15, 28(%x2)  #1552 pc 17584
	sw	%x9, 32(%x2)  #1552 pc 17588
	addi	%x7, %x11, 0  #0 pc 17592
	addi	%x6, %x15, 0  #0 pc 17596
	addi	%x29, %x8, 0  #0 pc 17600
	addi	%x8, %x13, 0  #0 pc 17604
	sw	%x1, 36(%x2)  #1552 pc 17608
	lw	%x30, 0(%x29)  #1552 pc 17612
	addi	%x2, %x2, 40  #1552 pc 17616
	jalr	%x1, %x30, 0  #1552 pc 17620
	addi	%x2, %x2, -40  #1552 pc 17624
	lw	%x1, 36(%x2)  #1552 pc 17628
	lw	%x7, 32(%x2)  #1553 pc 17632
	flw	%f0, 0(%x7)  #1553 pc 17636
	fsw	%f0, 40(%x2)  #1554 pc 17640
	beq	%x6, %x0, 12  #1554 pc 17644
	j	be_else.9325 #pc 17648
	nop #pc 17652
	addi	%x6, %x0, 0  #0 pc 17656
	j	be_cont.9326 #pc 17660
	nop #pc 17664
be_else.9325: #pc 17668
	fmv	%f1, l.6644  #0 pc 17668
	sw	%x1, 48(%x2)  #1554 pc 17672
	addi	%x2, %x2, 52  #1554 pc 17676
	jal	%x1, fless.2521  #1554 pc 17680
	addi	%x2, %x2, -52  #1554 pc 17684
	lw	%x1, 48(%x2) #1554 pc 17688
be_cont.9326: #pc 17692
	beq	%x6, %x0, 12  #1554 pc 17692
	j	be_else.9327 #pc 17696
	nop #pc 17700
	lw	%x6, 28(%x2)  #1570 pc 17704
	slli	%x6, %x6, 2  #1570 pc 17708
	lw	%x7, 24(%x2)  #1570 pc 17712
	add	%x31, %x6, %x7  #1570 pc 17716
	lw	%x6, 0(%x31)  #1570 pc 17720
	sw	%x1, 48(%x2)  #1570 pc 17724
	addi	%x2, %x2, 52  #1570 pc 17728
	jal	%x1, o_isinvert.2665  #1570 pc 17732
	addi	%x2, %x2, -52  #1570 pc 17736
	lw	%x1, 48(%x2) #1570 pc 17740
	beq	%x6, %x0, 12  #1570 pc 17744
	j	be_else.9328 #pc 17748
	nop #pc 17752
	addi	%x6, %x0, 0  #0 pc 17756
	ret #pc 17760
	nop #pc 17764
be_else.9328: #pc 17768
	lw	%x6, 20(%x2)  #1571 pc 17768
	addi	%x6, %x6, 1  #1571 pc 17772
	lw	%x7, 12(%x2)  #1571 pc 17776
	lw	%x29, 16(%x2)  #1571 pc 17780
	lw	%x30, 0(%x29)  #1571 pc 17784
	jalr	%x0, %x30, 0  #1571 pc 17788
	nop #pc 17792
be_else.9327: #pc 17796
	fmv	%f0, l.6646  #0 pc 17796
	flw	%f1, 40(%x2)  #1557 pc 17800
	fadd	%f0, %f1, %f0  #1557 pc 17804
	lw	%x6, 8(%x2)  #1558 pc 17808
	flw	%f1, 0(%x6)  #1558 pc 17812
	fmul	%f1, %f1, %f0  #1558 pc 17816
	lw	%x7, 4(%x2)  #1558 pc 17820
	flw	%f2, 0(%x7)  #1558 pc 17824
	fadd	%f1, %f1, %f2  #1558 pc 17828
	flw	%f2, 4(%x6)  #1559 pc 17832
	fmul	%f2, %f2, %f0  #1559 pc 17836
	flw	%f3, 4(%x7)  #1559 pc 17840
	fadd	%f2, %f2, %f3  #1559 pc 17844
	flw	%f3, 8(%x6)  #1560 pc 17848
	fmul	%f0, %f3, %f0  #1560 pc 17852
	flw	%f3, 8(%x7)  #1560 pc 17856
	fadd	%f0, %f0, %f3  #1560 pc 17860
	addi	%x6, %x0, 0  #0 pc 17864
	lw	%x7, 12(%x2)  #1561 pc 17868
	lw	%x29, 0(%x2)  #1561 pc 17872
	fadd	%f29, %f2, %f30  #0 pc 17876
	fadd	%f2, %f0, %f30  #0 pc 17880
	fadd	%f0, %f1, %f30  #0 pc 17884
	fadd	%f1, %f29, %f30  #0 pc 17888
	sw	%x1, 48(%x2)  #1561 pc 17892
	lw	%x30, 0(%x29)  #1561 pc 17896
	addi	%x2, %x2, 52  #1561 pc 17900
	jalr	%x1, %x30, 0  #1561 pc 17904
	addi	%x2, %x2, -52  #1561 pc 17908
	lw	%x1, 48(%x2)  #1561 pc 17912
	beq	%x6, %x0, 12  #1561 pc 17916
	j	be_else.9329 #pc 17920
	nop #pc 17924
	lw	%x6, 20(%x2)  #1564 pc 17928
	addi	%x6, %x6, 1  #1564 pc 17932
	lw	%x7, 12(%x2)  #1564 pc 17936
	lw	%x29, 16(%x2)  #1564 pc 17940
	lw	%x30, 0(%x29)  #1564 pc 17944
	jalr	%x0, %x30, 0  #1564 pc 17948
	nop #pc 17952
be_else.9329: #pc 17956
	addi	%x6, %x0, 1  #0 pc 17956
	ret #pc 17960
	nop #pc 17964
shadow_check_one_or_group.2885:  #pc 17968
	lw	%x8, 8(%x29)  #1578 pc 17968
	lw	%x9, 4(%x29)  #1578 pc 17972
	slli	%x10, %x6, 2  #1578 pc 17976
	add	%x31, %x10, %x7  #1578 pc 17980
	lw	%x10, 0(%x31)  #1578 pc 17984
	addi	%x31, %x0, -1  #pc 17988
	beq	%x10, %x31, 12  #1579 pc 17992
	j	be_else.9330 #pc 17996
	nop #pc 18000
	addi	%x6, %x0, 0  #0 pc 18004
	ret #pc 18008
	nop #pc 18012
be_else.9330: #pc 18016
	slli	%x10, %x10, 2  #1582 pc 18016
	add	%x31, %x10, %x9  #1582 pc 18020
	lw	%x9, 0(%x31)  #1582 pc 18024
	addi	%x10, %x0, 0  #0 pc 18028
	sw	%x7, 0(%x2)  #1583 pc 18032
	sw	%x29, 4(%x2)  #1583 pc 18036
	sw	%x6, 8(%x2)  #1583 pc 18040
	addi	%x7, %x9, 0  #0 pc 18044
	addi	%x6, %x10, 0  #0 pc 18048
	addi	%x29, %x8, 0  #0 pc 18052
	sw	%x1, 12(%x2)  #1583 pc 18056
	lw	%x30, 0(%x29)  #1583 pc 18060
	addi	%x2, %x2, 16  #1583 pc 18064
	jalr	%x1, %x30, 0  #1583 pc 18068
	addi	%x2, %x2, -16  #1583 pc 18072
	lw	%x1, 12(%x2)  #1583 pc 18076
	beq	%x6, %x0, 12  #1584 pc 18080
	j	be_else.9331 #pc 18084
	nop #pc 18088
	lw	%x6, 8(%x2)  #1587 pc 18092
	addi	%x6, %x6, 1  #1587 pc 18096
	lw	%x7, 0(%x2)  #1587 pc 18100
	lw	%x29, 4(%x2)  #1587 pc 18104
	lw	%x30, 0(%x29)  #1587 pc 18108
	jalr	%x0, %x30, 0  #1587 pc 18112
	nop #pc 18116
be_else.9331: #pc 18120
	addi	%x6, %x0, 1  #0 pc 18120
	ret #pc 18124
	nop #pc 18128
shadow_check_one_or_matrix.2888:  #pc 18132
	lw	%x8, 20(%x29)  #1593 pc 18132
	lw	%x9, 16(%x29)  #1593 pc 18136
	lw	%x10, 12(%x29)  #1593 pc 18140
	lw	%x11, 8(%x29)  #1593 pc 18144
	lw	%x12, 4(%x29)  #1593 pc 18148
	slli	%x13, %x6, 2  #1593 pc 18152
	add	%x31, %x13, %x7  #1593 pc 18156
	lw	%x13, 0(%x31)  #1593 pc 18160
	lw	%x14, 0(%x13)  #1594 pc 18164
	addi	%x31, %x0, -1  #pc 18168
	beq	%x14, %x31, 12  #1595 pc 18172
	j	be_else.9332 #pc 18176
	nop #pc 18180
	addi	%x6, %x0, 0  #0 pc 18184
	ret #pc 18188
	nop #pc 18192
be_else.9332: #pc 18196
	sw	%x13, 0(%x2)  #1599 pc 18196
	sw	%x10, 4(%x2)  #1599 pc 18200
	sw	%x7, 8(%x2)  #1599 pc 18204
	sw	%x29, 12(%x2)  #1599 pc 18208
	sw	%x6, 16(%x2)  #1599 pc 18212
	addi	%x31, %x0, 99  #pc 18216
	beq	%x14, %x31, 12  #1599 pc 18220
	j	be_else.9333 #pc 18224
	nop #pc 18228
	addi	%x6, %x0, 1  #0 pc 18232
	j	be_cont.9334 #pc 18236
	nop #pc 18240
be_else.9333: #pc 18244
	sw	%x9, 20(%x2)  #1602 pc 18244
	addi	%x7, %x11, 0  #0 pc 18248
	addi	%x6, %x14, 0  #0 pc 18252
	addi	%x29, %x8, 0  #0 pc 18256
	addi	%x8, %x12, 0  #0 pc 18260
	sw	%x1, 24(%x2)  #1602 pc 18264
	lw	%x30, 0(%x29)  #1602 pc 18268
	addi	%x2, %x2, 28  #1602 pc 18272
	jalr	%x1, %x30, 0  #1602 pc 18276
	addi	%x2, %x2, -28  #1602 pc 18280
	lw	%x1, 24(%x2)  #1602 pc 18284
	beq	%x6, %x0, 12  #1605 pc 18288
	j	be_else.9335 #pc 18292
	nop #pc 18296
	addi	%x6, %x0, 0  #0 pc 18300
	j	be_cont.9336 #pc 18304
	nop #pc 18308
be_else.9335: #pc 18312
	lw	%x6, 20(%x2)  #1606 pc 18312
	flw	%f0, 0(%x6)  #1606 pc 18316
	fmv	%f1, l.6660  #0 pc 18320
	sw	%x1, 24(%x2)  #1606 pc 18324
	addi	%x2, %x2, 28  #1606 pc 18328
	jal	%x1, fless.2521  #1606 pc 18332
	addi	%x2, %x2, -28  #1606 pc 18336
	lw	%x1, 24(%x2) #1606 pc 18340
	beq	%x6, %x0, 12  #1606 pc 18344
	j	be_else.9337 #pc 18348
	nop #pc 18352
	addi	%x6, %x0, 0  #0 pc 18356
	j	be_cont.9338 #pc 18360
	nop #pc 18364
be_else.9337: #pc 18368
	addi	%x6, %x0, 1  #0 pc 18368
	lw	%x7, 0(%x2)  #1607 pc 18372
	lw	%x29, 4(%x2)  #1607 pc 18376
	sw	%x1, 24(%x2)  #1607 pc 18380
	lw	%x30, 0(%x29)  #1607 pc 18384
	addi	%x2, %x2, 28  #1607 pc 18388
	jalr	%x1, %x30, 0  #1607 pc 18392
	addi	%x2, %x2, -28  #1607 pc 18396
	lw	%x1, 24(%x2)  #1607 pc 18400
	beq	%x6, %x0, 12  #1607 pc 18404
	j	be_else.9339 #pc 18408
	nop #pc 18412
	addi	%x6, %x0, 0  #0 pc 18416
	j	be_cont.9340 #pc 18420
	nop #pc 18424
be_else.9339: #pc 18428
	addi	%x6, %x0, 1  #0 pc 18428
be_cont.9340: #pc 18432
be_cont.9338: #pc 18432
be_cont.9336: #pc 18432
be_cont.9334: #pc 18432
	beq	%x6, %x0, 12  #1598 pc 18432
	j	be_else.9341 #pc 18436
	nop #pc 18440
	lw	%x6, 16(%x2)  #1618 pc 18444
	addi	%x6, %x6, 1  #1618 pc 18448
	lw	%x7, 8(%x2)  #1618 pc 18452
	lw	%x29, 12(%x2)  #1618 pc 18456
	lw	%x30, 0(%x29)  #1618 pc 18460
	jalr	%x0, %x30, 0  #1618 pc 18464
	nop #pc 18468
be_else.9341: #pc 18472
	addi	%x6, %x0, 1  #0 pc 18472
	lw	%x7, 0(%x2)  #1613 pc 18476
	lw	%x29, 4(%x2)  #1613 pc 18480
	sw	%x1, 24(%x2)  #1613 pc 18484
	lw	%x30, 0(%x29)  #1613 pc 18488
	addi	%x2, %x2, 28  #1613 pc 18492
	jalr	%x1, %x30, 0  #1613 pc 18496
	addi	%x2, %x2, -28  #1613 pc 18500
	lw	%x1, 24(%x2)  #1613 pc 18504
	beq	%x6, %x0, 12  #1613 pc 18508
	j	be_else.9342 #pc 18512
	nop #pc 18516
	lw	%x6, 16(%x2)  #1616 pc 18520
	addi	%x6, %x6, 1  #1616 pc 18524
	lw	%x7, 8(%x2)  #1616 pc 18528
	lw	%x29, 12(%x2)  #1616 pc 18532
	lw	%x30, 0(%x29)  #1616 pc 18536
	jalr	%x0, %x30, 0  #1616 pc 18540
	nop #pc 18544
be_else.9342: #pc 18548
	addi	%x6, %x0, 1  #0 pc 18548
	ret #pc 18552
	nop #pc 18556
solve_each_element.2891:  #pc 18560
	lw	%x9, 36(%x29)  #1629 pc 18560
	lw	%x10, 32(%x29)  #1629 pc 18564
	lw	%x11, 28(%x29)  #1629 pc 18568
	lw	%x12, 24(%x29)  #1629 pc 18572
	lw	%x13, 20(%x29)  #1629 pc 18576
	lw	%x14, 16(%x29)  #1629 pc 18580
	lw	%x15, 12(%x29)  #1629 pc 18584
	lw	%x16, 8(%x29)  #1629 pc 18588
	lw	%x17, 4(%x29)  #1629 pc 18592
	slli	%x18, %x6, 2  #1629 pc 18596
	add	%x31, %x18, %x7  #1629 pc 18600
	lw	%x18, 0(%x31)  #1629 pc 18604
	addi	%x31, %x0, -1  #pc 18608
	beq	%x18, %x31, 12  #1630 pc 18612
	j	be_else.9343 #pc 18616
	nop #pc 18620
	ret #pc 18624
	nop #pc 18628
be_else.9343: #pc 18632
	sw	%x14, 0(%x2)  #1632 pc 18632
	sw	%x16, 4(%x2)  #1632 pc 18636
	sw	%x15, 8(%x2)  #1632 pc 18640
	sw	%x17, 12(%x2)  #1632 pc 18644
	sw	%x10, 16(%x2)  #1632 pc 18648
	sw	%x9, 20(%x2)  #1632 pc 18652
	sw	%x11, 24(%x2)  #1632 pc 18656
	sw	%x8, 28(%x2)  #1632 pc 18660
	sw	%x7, 32(%x2)  #1632 pc 18664
	sw	%x29, 36(%x2)  #1632 pc 18668
	sw	%x6, 40(%x2)  #1632 pc 18672
	sw	%x13, 44(%x2)  #1632 pc 18676
	sw	%x18, 48(%x2)  #1632 pc 18680
	addi	%x7, %x8, 0  #0 pc 18684
	addi	%x6, %x18, 0  #0 pc 18688
	addi	%x29, %x12, 0  #0 pc 18692
	addi	%x8, %x10, 0  #0 pc 18696
	sw	%x1, 52(%x2)  #1632 pc 18700
	lw	%x30, 0(%x29)  #1632 pc 18704
	addi	%x2, %x2, 56  #1632 pc 18708
	jalr	%x1, %x30, 0  #1632 pc 18712
	addi	%x2, %x2, -56  #1632 pc 18716
	lw	%x1, 52(%x2)  #1632 pc 18720
	beq	%x6, %x0, 12  #1633 pc 18724
	j	be_else.9345 #pc 18728
	nop #pc 18732
	lw	%x6, 48(%x2)  #1661 pc 18736
	slli	%x6, %x6, 2  #1661 pc 18740
	lw	%x7, 44(%x2)  #1661 pc 18744
	add	%x31, %x6, %x7  #1661 pc 18748
	lw	%x6, 0(%x31)  #1661 pc 18752
	sw	%x1, 52(%x2)  #1661 pc 18756
	addi	%x2, %x2, 56  #1661 pc 18760
	jal	%x1, o_isinvert.2665  #1661 pc 18764
	addi	%x2, %x2, -56  #1661 pc 18768
	lw	%x1, 52(%x2) #1661 pc 18772
	beq	%x6, %x0, 12  #1661 pc 18776
	j	be_else.9346 #pc 18780
	nop #pc 18784
	ret #pc 18788
	nop #pc 18792
be_else.9346: #pc 18796
	lw	%x6, 40(%x2)  #1662 pc 18796
	addi	%x6, %x6, 1  #1662 pc 18800
	lw	%x7, 32(%x2)  #1662 pc 18804
	lw	%x8, 28(%x2)  #1662 pc 18808
	lw	%x29, 36(%x2)  #1662 pc 18812
	lw	%x30, 0(%x29)  #1662 pc 18816
	jalr	%x0, %x30, 0  #1662 pc 18820
	nop #pc 18824
be_else.9345: #pc 18828
	lw	%x7, 24(%x2)  #1637 pc 18828
	flw	%f1, 0(%x7)  #1637 pc 18832
	fmv	%f0, l.6244  #0 pc 18836
	sw	%x6, 52(%x2)  #1639 pc 18840
	fsw	%f1, 56(%x2)  #1639 pc 18844
	sw	%x1, 64(%x2)  #1639 pc 18848
	addi	%x2, %x2, 68  #1639 pc 18852
	jal	%x1, fless.2521  #1639 pc 18856
	addi	%x2, %x2, -68  #1639 pc 18860
	lw	%x1, 64(%x2) #1639 pc 18864
	beq	%x6, %x0, 12  #1639 pc 18868
	j	be_else.9348 #pc 18872
	nop #pc 18876
	j	be_cont.9349 #pc 18880
	nop #pc 18884
be_else.9348: #pc 18888
	lw	%x6, 20(%x2)  #1640 pc 18888
	flw	%f1, 0(%x6)  #1640 pc 18892
	flw	%f0, 56(%x2)  #1640 pc 18896
	sw	%x1, 64(%x2)  #1640 pc 18900
	addi	%x2, %x2, 68  #1640 pc 18904
	jal	%x1, fless.2521  #1640 pc 18908
	addi	%x2, %x2, -68  #1640 pc 18912
	lw	%x1, 64(%x2) #1640 pc 18916
	beq	%x6, %x0, 12  #1640 pc 18920
	j	be_else.9350 #pc 18924
	nop #pc 18928
	j	be_cont.9351 #pc 18932
	nop #pc 18936
be_else.9350: #pc 18940
	fmv	%f0, l.6646  #0 pc 18940
	flw	%f1, 56(%x2)  #1642 pc 18944
	fadd	%f0, %f1, %f0  #1642 pc 18948
	lw	%x6, 28(%x2)  #1643 pc 18952
	flw	%f1, 0(%x6)  #1643 pc 18956
	fmul	%f1, %f1, %f0  #1643 pc 18960
	lw	%x7, 16(%x2)  #1643 pc 18964
	flw	%f2, 0(%x7)  #1643 pc 18968
	fadd	%f1, %f1, %f2  #1643 pc 18972
	flw	%f2, 4(%x6)  #1644 pc 18976
	fmul	%f2, %f2, %f0  #1644 pc 18980
	flw	%f3, 4(%x7)  #1644 pc 18984
	fadd	%f2, %f2, %f3  #1644 pc 18988
	flw	%f3, 8(%x6)  #1645 pc 18992
	fmul	%f3, %f3, %f0  #1645 pc 18996
	flw	%f4, 8(%x7)  #1645 pc 19000
	fadd	%f3, %f3, %f4  #1645 pc 19004
	addi	%x7, %x0, 0  #0 pc 19008
	lw	%x8, 32(%x2)  #1646 pc 19012
	lw	%x29, 12(%x2)  #1646 pc 19016
	fsw	%f3, 64(%x2)  #1646 pc 19020
	fsw	%f2, 72(%x2)  #1646 pc 19024
	fsw	%f1, 80(%x2)  #1646 pc 19028
	fsw	%f0, 88(%x2)  #1646 pc 19032
	addi	%x6, %x7, 0  #0 pc 19036
	addi	%x7, %x8, 0  #0 pc 19040
	fadd	%f0, %f1, %f30  #0 pc 19044
	fadd	%f1, %f2, %f30  #0 pc 19048
	fadd	%f2, %f3, %f30  #0 pc 19052
	sw	%x1, 96(%x2)  #1646 pc 19056
	lw	%x30, 0(%x29)  #1646 pc 19060
	addi	%x2, %x2, 100  #1646 pc 19064
	jalr	%x1, %x30, 0  #1646 pc 19068
	addi	%x2, %x2, -100  #1646 pc 19072
	lw	%x1, 96(%x2)  #1646 pc 19076
	beq	%x6, %x0, 12  #1646 pc 19080
	j	be_else.9352 #pc 19084
	nop #pc 19088
	j	be_cont.9353 #pc 19092
	nop #pc 19096
be_else.9352: #pc 19100
	lw	%x6, 20(%x2)  #1648 pc 19100
	flw	%f0, 88(%x2)  #1648 pc 19104
	fsw	%f0, 0(%x6)  #1648 pc 19108
	flw	%f0, 80(%x2)  #1649 pc 19112
	flw	%f1, 72(%x2)  #1649 pc 19116
	flw	%f2, 64(%x2)  #1649 pc 19120
	lw	%x6, 8(%x2)  #1649 pc 19124
	sw	%x1, 96(%x2)  #1649 pc 19128
	addi	%x2, %x2, 100  #1649 pc 19132
	jal	%x1, vecset.2621  #1649 pc 19136
	addi	%x2, %x2, -100  #1649 pc 19140
	lw	%x1, 96(%x2) #1649 pc 19144
	lw	%x6, 4(%x2)  #1650 pc 19148
	lw	%x7, 48(%x2)  #1650 pc 19152
	sw	%x7, 0(%x6)  #1650 pc 19156
	lw	%x6, 0(%x2)  #1651 pc 19160
	lw	%x7, 52(%x2)  #1651 pc 19164
	sw	%x7, 0(%x6)  #1651 pc 19168
be_cont.9353: #pc 19172
be_cont.9351: #pc 19172
be_cont.9349: #pc 19172
	lw	%x6, 40(%x2)  #1657 pc 19172
	addi	%x6, %x6, 1  #1657 pc 19176
	lw	%x7, 32(%x2)  #1657 pc 19180
	lw	%x8, 28(%x2)  #1657 pc 19184
	lw	%x29, 36(%x2)  #1657 pc 19188
	lw	%x30, 0(%x29)  #1657 pc 19192
	jalr	%x0, %x30, 0  #1657 pc 19196
	nop #pc 19200
solve_one_or_network.2895:  #pc 19204
	lw	%x9, 8(%x29)  #1670 pc 19204
	lw	%x10, 4(%x29)  #1670 pc 19208
	slli	%x11, %x6, 2  #1670 pc 19212
	add	%x31, %x11, %x7  #1670 pc 19216
	lw	%x11, 0(%x31)  #1670 pc 19220
	addi	%x31, %x0, -1  #pc 19224
	beq	%x11, %x31, 12  #1671 pc 19228
	j	be_else.9354 #pc 19232
	nop #pc 19236
	ret #pc 19240
	nop #pc 19244
be_else.9354: #pc 19248
	slli	%x11, %x11, 2  #1672 pc 19248
	add	%x31, %x11, %x10  #1672 pc 19252
	lw	%x10, 0(%x31)  #1672 pc 19256
	addi	%x11, %x0, 0  #0 pc 19260
	sw	%x8, 0(%x2)  #1673 pc 19264
	sw	%x7, 4(%x2)  #1673 pc 19268
	sw	%x29, 8(%x2)  #1673 pc 19272
	sw	%x6, 12(%x2)  #1673 pc 19276
	addi	%x7, %x10, 0  #0 pc 19280
	addi	%x6, %x11, 0  #0 pc 19284
	addi	%x29, %x9, 0  #0 pc 19288
	sw	%x1, 16(%x2)  #1673 pc 19292
	lw	%x30, 0(%x29)  #1673 pc 19296
	addi	%x2, %x2, 20  #1673 pc 19300
	jalr	%x1, %x30, 0  #1673 pc 19304
	addi	%x2, %x2, -20  #1673 pc 19308
	lw	%x1, 16(%x2)  #1673 pc 19312
	lw	%x6, 12(%x2)  #1674 pc 19316
	addi	%x6, %x6, 1  #1674 pc 19320
	lw	%x7, 4(%x2)  #1674 pc 19324
	lw	%x8, 0(%x2)  #1674 pc 19328
	lw	%x29, 8(%x2)  #1674 pc 19332
	lw	%x30, 0(%x29)  #1674 pc 19336
	jalr	%x0, %x30, 0  #1674 pc 19340
	nop #pc 19344
trace_or_matrix.2899:  #pc 19348
	lw	%x9, 20(%x29)  #1680 pc 19348
	lw	%x10, 16(%x29)  #1680 pc 19352
	lw	%x11, 12(%x29)  #1680 pc 19356
	lw	%x12, 8(%x29)  #1680 pc 19360
	lw	%x13, 4(%x29)  #1680 pc 19364
	slli	%x14, %x6, 2  #1680 pc 19368
	add	%x31, %x14, %x7  #1680 pc 19372
	lw	%x14, 0(%x31)  #1680 pc 19376
	lw	%x15, 0(%x14)  #1681 pc 19380
	addi	%x31, %x0, -1  #pc 19384
	beq	%x15, %x31, 12  #1682 pc 19388
	j	be_else.9356 #pc 19392
	nop #pc 19396
	ret #pc 19400
	nop #pc 19404
be_else.9356: #pc 19408
	sw	%x8, 0(%x2)  #1685 pc 19408
	sw	%x7, 4(%x2)  #1685 pc 19412
	sw	%x29, 8(%x2)  #1685 pc 19416
	sw	%x6, 12(%x2)  #1685 pc 19420
	addi	%x31, %x0, 99  #pc 19424
	beq	%x15, %x31, 12  #1685 pc 19428
	j	be_else.9358 #pc 19432
	nop #pc 19436
	addi	%x9, %x0, 1  #0 pc 19440
	addi	%x7, %x14, 0  #0 pc 19444
	addi	%x6, %x9, 0  #0 pc 19448
	addi	%x29, %x13, 0  #0 pc 19452
	sw	%x1, 16(%x2)  #1686 pc 19456
	lw	%x30, 0(%x29)  #1686 pc 19460
	addi	%x2, %x2, 20  #1686 pc 19464
	jalr	%x1, %x30, 0  #1686 pc 19468
	addi	%x2, %x2, -20  #1686 pc 19472
	lw	%x1, 16(%x2)  #1686 pc 19476
	j	be_cont.9359 #pc 19480
	nop #pc 19484
be_else.9358: #pc 19488
	sw	%x14, 16(%x2)  #1690 pc 19488
	sw	%x13, 20(%x2)  #1690 pc 19492
	sw	%x9, 24(%x2)  #1690 pc 19496
	sw	%x11, 28(%x2)  #1690 pc 19500
	addi	%x7, %x8, 0  #0 pc 19504
	addi	%x6, %x15, 0  #0 pc 19508
	addi	%x29, %x12, 0  #0 pc 19512
	addi	%x8, %x10, 0  #0 pc 19516
	sw	%x1, 32(%x2)  #1690 pc 19520
	lw	%x30, 0(%x29)  #1690 pc 19524
	addi	%x2, %x2, 36  #1690 pc 19528
	jalr	%x1, %x30, 0  #1690 pc 19532
	addi	%x2, %x2, -36  #1690 pc 19536
	lw	%x1, 32(%x2)  #1690 pc 19540
	beq	%x6, %x0, 12  #1691 pc 19544
	j	be_else.9360 #pc 19548
	nop #pc 19552
	j	be_cont.9361 #pc 19556
	nop #pc 19560
be_else.9360: #pc 19564
	lw	%x6, 28(%x2)  #1692 pc 19564
	flw	%f0, 0(%x6)  #1692 pc 19568
	lw	%x6, 24(%x2)  #1693 pc 19572
	flw	%f1, 0(%x6)  #1693 pc 19576
	sw	%x1, 32(%x2)  #1693 pc 19580
	addi	%x2, %x2, 36  #1693 pc 19584
	jal	%x1, fless.2521  #1693 pc 19588
	addi	%x2, %x2, -36  #1693 pc 19592
	lw	%x1, 32(%x2) #1693 pc 19596
	beq	%x6, %x0, 12  #1693 pc 19600
	j	be_else.9362 #pc 19604
	nop #pc 19608
	j	be_cont.9363 #pc 19612
	nop #pc 19616
be_else.9362: #pc 19620
	addi	%x6, %x0, 1  #0 pc 19620
	lw	%x7, 16(%x2)  #1694 pc 19624
	lw	%x8, 0(%x2)  #1694 pc 19628
	lw	%x29, 20(%x2)  #1694 pc 19632
	sw	%x1, 32(%x2)  #1694 pc 19636
	lw	%x30, 0(%x29)  #1694 pc 19640
	addi	%x2, %x2, 36  #1694 pc 19644
	jalr	%x1, %x30, 0  #1694 pc 19648
	addi	%x2, %x2, -36  #1694 pc 19652
	lw	%x1, 32(%x2)  #1694 pc 19656
be_cont.9363: #pc 19660
be_cont.9361: #pc 19660
be_cont.9359: #pc 19660
	lw	%x6, 12(%x2)  #1698 pc 19660
	addi	%x6, %x6, 1  #1698 pc 19664
	lw	%x7, 4(%x2)  #1698 pc 19668
	lw	%x8, 0(%x2)  #1698 pc 19672
	lw	%x29, 8(%x2)  #1698 pc 19676
	lw	%x30, 0(%x29)  #1698 pc 19680
	jalr	%x0, %x30, 0  #1698 pc 19684
	nop #pc 19688
judge_intersection.2903:  #pc 19692
	lw	%x7, 12(%x29)  #0 pc 19692
	lw	%x8, 8(%x29)  #0 pc 19696
	lw	%x9, 4(%x29)  #0 pc 19700
	fmv	%f0, l.6683  #0 pc 19704
	fsw	%f0, 0(%x8)  #1707 pc 19708
	addi	%x10, %x0, 0  #0 pc 19712
	lw	%x9, 0(%x9)  #1708 pc 19716
	sw	%x8, 0(%x2)  #1708 pc 19720
	addi	%x8, %x6, 0  #0 pc 19724
	addi	%x29, %x7, 0  #0 pc 19728
	addi	%x7, %x9, 0  #0 pc 19732
	addi	%x6, %x10, 0  #0 pc 19736
	sw	%x1, 4(%x2)  #1708 pc 19740
	lw	%x30, 0(%x29)  #1708 pc 19744
	addi	%x2, %x2, 8  #1708 pc 19748
	jalr	%x1, %x30, 0  #1708 pc 19752
	addi	%x2, %x2, -8  #1708 pc 19756
	lw	%x1, 4(%x2)  #1708 pc 19760
	lw	%x6, 0(%x2)  #1709 pc 19764
	flw	%f1, 0(%x6)  #1709 pc 19768
	fmv	%f0, l.6660  #0 pc 19772
	fsw	%f1, 8(%x2)  #1711 pc 19776
	sw	%x1, 16(%x2)  #1711 pc 19780
	addi	%x2, %x2, 20  #1711 pc 19784
	jal	%x1, fless.2521  #1711 pc 19788
	addi	%x2, %x2, -20  #1711 pc 19792
	lw	%x1, 16(%x2) #1711 pc 19796
	beq	%x6, %x0, 12  #1711 pc 19800
	j	be_else.9365 #pc 19804
	nop #pc 19808
	addi	%x6, %x0, 0  #0 pc 19812
	ret #pc 19816
	nop #pc 19820
be_else.9365: #pc 19824
	fmv	%f1, l.6689  #0 pc 19824
	flw	%f0, 8(%x2)  #1712 pc 19828
	j	fless.2521  #1712 pc 19832
	nop #pc 19836
solve_each_element_fast.2905:  #pc 19840
	lw	%x9, 36(%x29)  #1722 pc 19840
	lw	%x10, 32(%x29)  #1722 pc 19844
	lw	%x11, 28(%x29)  #1722 pc 19848
	lw	%x12, 24(%x29)  #1722 pc 19852
	lw	%x13, 20(%x29)  #1722 pc 19856
	lw	%x14, 16(%x29)  #1722 pc 19860
	lw	%x15, 12(%x29)  #1722 pc 19864
	lw	%x16, 8(%x29)  #1722 pc 19868
	lw	%x17, 4(%x29)  #1722 pc 19872
	sw	%x14, 0(%x2)  #1722 pc 19876
	sw	%x16, 4(%x2)  #1722 pc 19880
	sw	%x15, 8(%x2)  #1722 pc 19884
	sw	%x17, 12(%x2)  #1722 pc 19888
	sw	%x10, 16(%x2)  #1722 pc 19892
	sw	%x9, 20(%x2)  #1722 pc 19896
	sw	%x12, 24(%x2)  #1722 pc 19900
	sw	%x29, 28(%x2)  #1722 pc 19904
	sw	%x13, 32(%x2)  #1722 pc 19908
	sw	%x8, 36(%x2)  #1722 pc 19912
	sw	%x11, 40(%x2)  #1722 pc 19916
	sw	%x7, 44(%x2)  #1722 pc 19920
	sw	%x6, 48(%x2)  #1722 pc 19924
	addi	%x6, %x8, 0  #0 pc 19928
	sw	%x1, 52(%x2)  #1722 pc 19932
	addi	%x2, %x2, 56  #1722 pc 19936
	jal	%x1, d_vec.2720  #1722 pc 19940
	addi	%x2, %x2, -56  #1722 pc 19944
	lw	%x1, 52(%x2) #1722 pc 19948
	lw	%x7, 48(%x2)  #1723 pc 19952
	slli	%x8, %x7, 2  #1723 pc 19956
	lw	%x9, 44(%x2)  #1723 pc 19960
	add	%x31, %x8, %x9  #1723 pc 19964
	lw	%x8, 0(%x31)  #1723 pc 19968
	addi	%x31, %x0, -1  #pc 19972
	beq	%x8, %x31, 12  #1724 pc 19976
	j	be_else.9366 #pc 19980
	nop #pc 19984
	ret #pc 19988
	nop #pc 19992
be_else.9366: #pc 19996
	lw	%x10, 36(%x2)  #1726 pc 19996
	lw	%x29, 40(%x2)  #1726 pc 20000
	sw	%x6, 52(%x2)  #1726 pc 20004
	sw	%x8, 56(%x2)  #1726 pc 20008
	addi	%x7, %x10, 0  #0 pc 20012
	addi	%x6, %x8, 0  #0 pc 20016
	sw	%x1, 60(%x2)  #1726 pc 20020
	lw	%x30, 0(%x29)  #1726 pc 20024
	addi	%x2, %x2, 64  #1726 pc 20028
	jalr	%x1, %x30, 0  #1726 pc 20032
	addi	%x2, %x2, -64  #1726 pc 20036
	lw	%x1, 60(%x2)  #1726 pc 20040
	beq	%x6, %x0, 12  #1727 pc 20044
	j	be_else.9368 #pc 20048
	nop #pc 20052
	lw	%x6, 56(%x2)  #1755 pc 20056
	slli	%x6, %x6, 2  #1755 pc 20060
	lw	%x7, 32(%x2)  #1755 pc 20064
	add	%x31, %x6, %x7  #1755 pc 20068
	lw	%x6, 0(%x31)  #1755 pc 20072
	sw	%x1, 60(%x2)  #1755 pc 20076
	addi	%x2, %x2, 64  #1755 pc 20080
	jal	%x1, o_isinvert.2665  #1755 pc 20084
	addi	%x2, %x2, -64  #1755 pc 20088
	lw	%x1, 60(%x2) #1755 pc 20092
	beq	%x6, %x0, 12  #1755 pc 20096
	j	be_else.9369 #pc 20100
	nop #pc 20104
	ret #pc 20108
	nop #pc 20112
be_else.9369: #pc 20116
	lw	%x6, 48(%x2)  #1756 pc 20116
	addi	%x6, %x6, 1  #1756 pc 20120
	lw	%x7, 44(%x2)  #1756 pc 20124
	lw	%x8, 36(%x2)  #1756 pc 20128
	lw	%x29, 28(%x2)  #1756 pc 20132
	lw	%x30, 0(%x29)  #1756 pc 20136
	jalr	%x0, %x30, 0  #1756 pc 20140
	nop #pc 20144
be_else.9368: #pc 20148
	lw	%x7, 24(%x2)  #1731 pc 20148
	flw	%f1, 0(%x7)  #1731 pc 20152
	fmv	%f0, l.6244  #0 pc 20156
	sw	%x6, 60(%x2)  #1733 pc 20160
	fsw	%f1, 64(%x2)  #1733 pc 20164
	sw	%x1, 72(%x2)  #1733 pc 20168
	addi	%x2, %x2, 76  #1733 pc 20172
	jal	%x1, fless.2521  #1733 pc 20176
	addi	%x2, %x2, -76  #1733 pc 20180
	lw	%x1, 72(%x2) #1733 pc 20184
	beq	%x6, %x0, 12  #1733 pc 20188
	j	be_else.9371 #pc 20192
	nop #pc 20196
	j	be_cont.9372 #pc 20200
	nop #pc 20204
be_else.9371: #pc 20208
	lw	%x6, 20(%x2)  #1734 pc 20208
	flw	%f1, 0(%x6)  #1734 pc 20212
	flw	%f0, 64(%x2)  #1734 pc 20216
	sw	%x1, 72(%x2)  #1734 pc 20220
	addi	%x2, %x2, 76  #1734 pc 20224
	jal	%x1, fless.2521  #1734 pc 20228
	addi	%x2, %x2, -76  #1734 pc 20232
	lw	%x1, 72(%x2) #1734 pc 20236
	beq	%x6, %x0, 12  #1734 pc 20240
	j	be_else.9373 #pc 20244
	nop #pc 20248
	j	be_cont.9374 #pc 20252
	nop #pc 20256
be_else.9373: #pc 20260
	fmv	%f0, l.6646  #0 pc 20260
	flw	%f1, 64(%x2)  #1736 pc 20264
	fadd	%f0, %f1, %f0  #1736 pc 20268
	lw	%x6, 52(%x2)  #1737 pc 20272
	flw	%f1, 0(%x6)  #1737 pc 20276
	fmul	%f1, %f1, %f0  #1737 pc 20280
	lw	%x7, 16(%x2)  #1737 pc 20284
	flw	%f2, 0(%x7)  #1737 pc 20288
	fadd	%f1, %f1, %f2  #1737 pc 20292
	flw	%f2, 4(%x6)  #1738 pc 20296
	fmul	%f2, %f2, %f0  #1738 pc 20300
	flw	%f3, 4(%x7)  #1738 pc 20304
	fadd	%f2, %f2, %f3  #1738 pc 20308
	flw	%f3, 8(%x6)  #1739 pc 20312
	fmul	%f3, %f3, %f0  #1739 pc 20316
	flw	%f4, 8(%x7)  #1739 pc 20320
	fadd	%f3, %f3, %f4  #1739 pc 20324
	addi	%x6, %x0, 0  #0 pc 20328
	lw	%x7, 44(%x2)  #1740 pc 20332
	lw	%x29, 12(%x2)  #1740 pc 20336
	fsw	%f3, 72(%x2)  #1740 pc 20340
	fsw	%f2, 80(%x2)  #1740 pc 20344
	fsw	%f1, 88(%x2)  #1740 pc 20348
	fsw	%f0, 96(%x2)  #1740 pc 20352
	fadd	%f0, %f1, %f30  #0 pc 20356
	fadd	%f1, %f2, %f30  #0 pc 20360
	fadd	%f2, %f3, %f30  #0 pc 20364
	sw	%x1, 104(%x2)  #1740 pc 20368
	lw	%x30, 0(%x29)  #1740 pc 20372
	addi	%x2, %x2, 108  #1740 pc 20376
	jalr	%x1, %x30, 0  #1740 pc 20380
	addi	%x2, %x2, -108  #1740 pc 20384
	lw	%x1, 104(%x2)  #1740 pc 20388
	beq	%x6, %x0, 12  #1740 pc 20392
	j	be_else.9375 #pc 20396
	nop #pc 20400
	j	be_cont.9376 #pc 20404
	nop #pc 20408
be_else.9375: #pc 20412
	lw	%x6, 20(%x2)  #1742 pc 20412
	flw	%f0, 96(%x2)  #1742 pc 20416
	fsw	%f0, 0(%x6)  #1742 pc 20420
	flw	%f0, 88(%x2)  #1743 pc 20424
	flw	%f1, 80(%x2)  #1743 pc 20428
	flw	%f2, 72(%x2)  #1743 pc 20432
	lw	%x6, 8(%x2)  #1743 pc 20436
	sw	%x1, 104(%x2)  #1743 pc 20440
	addi	%x2, %x2, 108  #1743 pc 20444
	jal	%x1, vecset.2621  #1743 pc 20448
	addi	%x2, %x2, -108  #1743 pc 20452
	lw	%x1, 104(%x2) #1743 pc 20456
	lw	%x6, 4(%x2)  #1744 pc 20460
	lw	%x7, 56(%x2)  #1744 pc 20464
	sw	%x7, 0(%x6)  #1744 pc 20468
	lw	%x6, 0(%x2)  #1745 pc 20472
	lw	%x7, 60(%x2)  #1745 pc 20476
	sw	%x7, 0(%x6)  #1745 pc 20480
be_cont.9376: #pc 20484
be_cont.9374: #pc 20484
be_cont.9372: #pc 20484
	lw	%x6, 48(%x2)  #1751 pc 20484
	addi	%x6, %x6, 1  #1751 pc 20488
	lw	%x7, 44(%x2)  #1751 pc 20492
	lw	%x8, 36(%x2)  #1751 pc 20496
	lw	%x29, 28(%x2)  #1751 pc 20500
	lw	%x30, 0(%x29)  #1751 pc 20504
	jalr	%x0, %x30, 0  #1751 pc 20508
	nop #pc 20512
solve_one_or_network_fast.2909:  #pc 20516
	lw	%x9, 8(%x29)  #1763 pc 20516
	lw	%x10, 4(%x29)  #1763 pc 20520
	slli	%x11, %x6, 2  #1763 pc 20524
	add	%x31, %x11, %x7  #1763 pc 20528
	lw	%x11, 0(%x31)  #1763 pc 20532
	addi	%x31, %x0, -1  #pc 20536
	beq	%x11, %x31, 12  #1764 pc 20540
	j	be_else.9377 #pc 20544
	nop #pc 20548
	ret #pc 20552
	nop #pc 20556
be_else.9377: #pc 20560
	slli	%x11, %x11, 2  #1765 pc 20560
	add	%x31, %x11, %x10  #1765 pc 20564
	lw	%x10, 0(%x31)  #1765 pc 20568
	addi	%x11, %x0, 0  #0 pc 20572
	sw	%x8, 0(%x2)  #1766 pc 20576
	sw	%x7, 4(%x2)  #1766 pc 20580
	sw	%x29, 8(%x2)  #1766 pc 20584
	sw	%x6, 12(%x2)  #1766 pc 20588
	addi	%x7, %x10, 0  #0 pc 20592
	addi	%x6, %x11, 0  #0 pc 20596
	addi	%x29, %x9, 0  #0 pc 20600
	sw	%x1, 16(%x2)  #1766 pc 20604
	lw	%x30, 0(%x29)  #1766 pc 20608
	addi	%x2, %x2, 20  #1766 pc 20612
	jalr	%x1, %x30, 0  #1766 pc 20616
	addi	%x2, %x2, -20  #1766 pc 20620
	lw	%x1, 16(%x2)  #1766 pc 20624
	lw	%x6, 12(%x2)  #1767 pc 20628
	addi	%x6, %x6, 1  #1767 pc 20632
	lw	%x7, 4(%x2)  #1767 pc 20636
	lw	%x8, 0(%x2)  #1767 pc 20640
	lw	%x29, 8(%x2)  #1767 pc 20644
	lw	%x30, 0(%x29)  #1767 pc 20648
	jalr	%x0, %x30, 0  #1767 pc 20652
	nop #pc 20656
trace_or_matrix_fast.2913:  #pc 20660
	lw	%x9, 16(%x29)  #1773 pc 20660
	lw	%x10, 12(%x29)  #1773 pc 20664
	lw	%x11, 8(%x29)  #1773 pc 20668
	lw	%x12, 4(%x29)  #1773 pc 20672
	slli	%x13, %x6, 2  #1773 pc 20676
	add	%x31, %x13, %x7  #1773 pc 20680
	lw	%x13, 0(%x31)  #1773 pc 20684
	lw	%x14, 0(%x13)  #1774 pc 20688
	addi	%x31, %x0, -1  #pc 20692
	beq	%x14, %x31, 12  #1775 pc 20696
	j	be_else.9379 #pc 20700
	nop #pc 20704
	ret #pc 20708
	nop #pc 20712
be_else.9379: #pc 20716
	sw	%x8, 0(%x2)  #1778 pc 20716
	sw	%x7, 4(%x2)  #1778 pc 20720
	sw	%x29, 8(%x2)  #1778 pc 20724
	sw	%x6, 12(%x2)  #1778 pc 20728
	addi	%x31, %x0, 99  #pc 20732
	beq	%x14, %x31, 12  #1778 pc 20736
	j	be_else.9381 #pc 20740
	nop #pc 20744
	addi	%x9, %x0, 1  #0 pc 20748
	addi	%x7, %x13, 0  #0 pc 20752
	addi	%x6, %x9, 0  #0 pc 20756
	addi	%x29, %x12, 0  #0 pc 20760
	sw	%x1, 16(%x2)  #1779 pc 20764
	lw	%x30, 0(%x29)  #1779 pc 20768
	addi	%x2, %x2, 20  #1779 pc 20772
	jalr	%x1, %x30, 0  #1779 pc 20776
	addi	%x2, %x2, -20  #1779 pc 20780
	lw	%x1, 16(%x2)  #1779 pc 20784
	j	be_cont.9382 #pc 20788
	nop #pc 20792
be_else.9381: #pc 20796
	sw	%x13, 16(%x2)  #1783 pc 20796
	sw	%x12, 20(%x2)  #1783 pc 20800
	sw	%x9, 24(%x2)  #1783 pc 20804
	sw	%x11, 28(%x2)  #1783 pc 20808
	addi	%x7, %x8, 0  #0 pc 20812
	addi	%x6, %x14, 0  #0 pc 20816
	addi	%x29, %x10, 0  #0 pc 20820
	sw	%x1, 32(%x2)  #1783 pc 20824
	lw	%x30, 0(%x29)  #1783 pc 20828
	addi	%x2, %x2, 36  #1783 pc 20832
	jalr	%x1, %x30, 0  #1783 pc 20836
	addi	%x2, %x2, -36  #1783 pc 20840
	lw	%x1, 32(%x2)  #1783 pc 20844
	beq	%x6, %x0, 12  #1784 pc 20848
	j	be_else.9383 #pc 20852
	nop #pc 20856
	j	be_cont.9384 #pc 20860
	nop #pc 20864
be_else.9383: #pc 20868
	lw	%x6, 28(%x2)  #1785 pc 20868
	flw	%f0, 0(%x6)  #1785 pc 20872
	lw	%x6, 24(%x2)  #1786 pc 20876
	flw	%f1, 0(%x6)  #1786 pc 20880
	sw	%x1, 32(%x2)  #1786 pc 20884
	addi	%x2, %x2, 36  #1786 pc 20888
	jal	%x1, fless.2521  #1786 pc 20892
	addi	%x2, %x2, -36  #1786 pc 20896
	lw	%x1, 32(%x2) #1786 pc 20900
	beq	%x6, %x0, 12  #1786 pc 20904
	j	be_else.9385 #pc 20908
	nop #pc 20912
	j	be_cont.9386 #pc 20916
	nop #pc 20920
be_else.9385: #pc 20924
	addi	%x6, %x0, 1  #0 pc 20924
	lw	%x7, 16(%x2)  #1787 pc 20928
	lw	%x8, 0(%x2)  #1787 pc 20932
	lw	%x29, 20(%x2)  #1787 pc 20936
	sw	%x1, 32(%x2)  #1787 pc 20940
	lw	%x30, 0(%x29)  #1787 pc 20944
	addi	%x2, %x2, 36  #1787 pc 20948
	jalr	%x1, %x30, 0  #1787 pc 20952
	addi	%x2, %x2, -36  #1787 pc 20956
	lw	%x1, 32(%x2)  #1787 pc 20960
be_cont.9386: #pc 20964
be_cont.9384: #pc 20964
be_cont.9382: #pc 20964
	lw	%x6, 12(%x2)  #1791 pc 20964
	addi	%x6, %x6, 1  #1791 pc 20968
	lw	%x7, 4(%x2)  #1791 pc 20972
	lw	%x8, 0(%x2)  #1791 pc 20976
	lw	%x29, 8(%x2)  #1791 pc 20980
	lw	%x30, 0(%x29)  #1791 pc 20984
	jalr	%x0, %x30, 0  #1791 pc 20988
	nop #pc 20992
judge_intersection_fast.2917:  #pc 20996
	lw	%x7, 12(%x29)  #0 pc 20996
	lw	%x8, 8(%x29)  #0 pc 21000
	lw	%x9, 4(%x29)  #0 pc 21004
	fmv	%f0, l.6683  #0 pc 21008
	fsw	%f0, 0(%x8)  #1798 pc 21012
	addi	%x10, %x0, 0  #0 pc 21016
	lw	%x9, 0(%x9)  #1799 pc 21020
	sw	%x8, 0(%x2)  #1799 pc 21024
	addi	%x8, %x6, 0  #0 pc 21028
	addi	%x29, %x7, 0  #0 pc 21032
	addi	%x7, %x9, 0  #0 pc 21036
	addi	%x6, %x10, 0  #0 pc 21040
	sw	%x1, 4(%x2)  #1799 pc 21044
	lw	%x30, 0(%x29)  #1799 pc 21048
	addi	%x2, %x2, 8  #1799 pc 21052
	jalr	%x1, %x30, 0  #1799 pc 21056
	addi	%x2, %x2, -8  #1799 pc 21060
	lw	%x1, 4(%x2)  #1799 pc 21064
	lw	%x6, 0(%x2)  #1800 pc 21068
	flw	%f1, 0(%x6)  #1800 pc 21072
	fmv	%f0, l.6660  #0 pc 21076
	fsw	%f1, 8(%x2)  #1802 pc 21080
	sw	%x1, 16(%x2)  #1802 pc 21084
	addi	%x2, %x2, 20  #1802 pc 21088
	jal	%x1, fless.2521  #1802 pc 21092
	addi	%x2, %x2, -20  #1802 pc 21096
	lw	%x1, 16(%x2) #1802 pc 21100
	beq	%x6, %x0, 12  #1802 pc 21104
	j	be_else.9388 #pc 21108
	nop #pc 21112
	addi	%x6, %x0, 0  #0 pc 21116
	ret #pc 21120
	nop #pc 21124
be_else.9388: #pc 21128
	fmv	%f1, l.6689  #0 pc 21128
	flw	%f0, 8(%x2)  #1803 pc 21132
	j	fless.2521  #1803 pc 21136
	nop #pc 21140
get_nvector_rect.2919:  #pc 21144
	lw	%x7, 8(%x29)  #0 pc 21144
	lw	%x8, 4(%x29)  #0 pc 21148
	lw	%x8, 0(%x8)  #1818 pc 21152
	sw	%x7, 0(%x2)  #1820 pc 21156
	sw	%x6, 4(%x2)  #1820 pc 21160
	sw	%x8, 8(%x2)  #1820 pc 21164
	addi	%x6, %x7, 0  #0 pc 21168
	sw	%x1, 12(%x2)  #1820 pc 21172
	addi	%x2, %x2, 16  #1820 pc 21176
	jal	%x1, vecbzero.2629  #1820 pc 21180
	addi	%x2, %x2, -16  #1820 pc 21184
	lw	%x1, 12(%x2) #1820 pc 21188
	lw	%x6, 8(%x2)  #1821 pc 21192
	addi	%x7, %x6, -1  #1821 pc 21196
	addi	%x6, %x6, -1  #1821 pc 21200
	slli	%x6, %x6, 2  #1821 pc 21204
	lw	%x8, 4(%x2)  #1821 pc 21208
	add	%x31, %x6, %x8  #1821 pc 21212
	flw	%f0, 0(%x31)  #1821 pc 21216
	sw	%x7, 12(%x2)  #1821 pc 21220
	sw	%x1, 16(%x2)  #1821 pc 21224
	addi	%x2, %x2, 20  #1821 pc 21228
	jal	%x1, sgn.2613  #1821 pc 21232
	addi	%x2, %x2, -20  #1821 pc 21236
	lw	%x1, 16(%x2) #1821 pc 21240
	sw	%x1, 16(%x2)  #1821 pc 21244
	addi	%x2, %x2, 20  #1821 pc 21248
	jal	%x1, fneg.2515  #1821 pc 21252
	addi	%x2, %x2, -20  #1821 pc 21256
	lw	%x1, 16(%x2) #1821 pc 21260
	lw	%x6, 12(%x2)  #1821 pc 21264
	slli	%x6, %x6, 2  #1821 pc 21268
	lw	%x7, 0(%x2)  #1821 pc 21272
	add	%x31, %x6, %x7  #1821 pc 21276
	fsw	%f0, 0(%x31) #1821 pc 21280
	ret #pc 21284
	nop #pc 21288
get_nvector_plane.2921:  #pc 21292
	lw	%x7, 4(%x29)  #0 pc 21292
	sw	%x6, 0(%x2)  #1827 pc 21296
	sw	%x7, 4(%x2)  #1827 pc 21300
	sw	%x1, 8(%x2)  #1827 pc 21304
	addi	%x2, %x2, 12  #1827 pc 21308
	jal	%x1, o_param_a.2669  #1827 pc 21312
	addi	%x2, %x2, -12  #1827 pc 21316
	lw	%x1, 8(%x2) #1827 pc 21320
	sw	%x1, 8(%x2)  #1827 pc 21324
	addi	%x2, %x2, 12  #1827 pc 21328
	jal	%x1, fneg.2515  #1827 pc 21332
	addi	%x2, %x2, -12  #1827 pc 21336
	lw	%x1, 8(%x2) #1827 pc 21340
	lw	%x6, 4(%x2)  #1827 pc 21344
	fsw	%f0, 0(%x6)  #1827 pc 21348
	lw	%x7, 0(%x2)  #1828 pc 21352
	addi	%x6, %x7, 0  #0 pc 21356
	sw	%x1, 8(%x2)  #1828 pc 21360
	addi	%x2, %x2, 12  #1828 pc 21364
	jal	%x1, o_param_b.2671  #1828 pc 21368
	addi	%x2, %x2, -12  #1828 pc 21372
	lw	%x1, 8(%x2) #1828 pc 21376
	sw	%x1, 8(%x2)  #1828 pc 21380
	addi	%x2, %x2, 12  #1828 pc 21384
	jal	%x1, fneg.2515  #1828 pc 21388
	addi	%x2, %x2, -12  #1828 pc 21392
	lw	%x1, 8(%x2) #1828 pc 21396
	lw	%x6, 4(%x2)  #1828 pc 21400
	fsw	%f0, 4(%x6)  #1828 pc 21404
	lw	%x7, 0(%x2)  #1829 pc 21408
	addi	%x6, %x7, 0  #0 pc 21412
	sw	%x1, 8(%x2)  #1829 pc 21416
	addi	%x2, %x2, 12  #1829 pc 21420
	jal	%x1, o_param_c.2673  #1829 pc 21424
	addi	%x2, %x2, -12  #1829 pc 21428
	lw	%x1, 8(%x2) #1829 pc 21432
	sw	%x1, 8(%x2)  #1829 pc 21436
	addi	%x2, %x2, 12  #1829 pc 21440
	jal	%x1, fneg.2515  #1829 pc 21444
	addi	%x2, %x2, -12  #1829 pc 21448
	lw	%x1, 8(%x2) #1829 pc 21452
	lw	%x6, 4(%x2)  #1829 pc 21456
	fsw	%f0, 8(%x6)  #1829 pc 21460
	ret #pc 21464
	nop #pc 21468
get_nvector_second.2923:  #pc 21472
	lw	%x7, 8(%x29)  #0 pc 21472
	lw	%x8, 4(%x29)  #0 pc 21476
	flw	%f0, 0(%x8)  #1834 pc 21480
	sw	%x7, 0(%x2)  #1834 pc 21484
	sw	%x6, 4(%x2)  #1834 pc 21488
	sw	%x8, 8(%x2)  #1834 pc 21492
	fsw	%f0, 16(%x2)  #1834 pc 21496
	sw	%x1, 24(%x2)  #1834 pc 21500
	addi	%x2, %x2, 28  #1834 pc 21504
	jal	%x1, o_param_x.2677  #1834 pc 21508
	addi	%x2, %x2, -28  #1834 pc 21512
	lw	%x1, 24(%x2) #1834 pc 21516
	flw	%f1, 16(%x2)  #1834 pc 21520
	fsub	%f0, %f1, %f0  #1834 pc 21524
	lw	%x6, 8(%x2)  #1835 pc 21528
	flw	%f1, 4(%x6)  #1835 pc 21532
	lw	%x7, 4(%x2)  #1835 pc 21536
	fsw	%f0, 24(%x2)  #1835 pc 21540
	fsw	%f1, 32(%x2)  #1835 pc 21544
	addi	%x6, %x7, 0  #0 pc 21548
	sw	%x1, 40(%x2)  #1835 pc 21552
	addi	%x2, %x2, 44  #1835 pc 21556
	jal	%x1, o_param_y.2679  #1835 pc 21560
	addi	%x2, %x2, -44  #1835 pc 21564
	lw	%x1, 40(%x2) #1835 pc 21568
	flw	%f1, 32(%x2)  #1835 pc 21572
	fsub	%f0, %f1, %f0  #1835 pc 21576
	lw	%x6, 8(%x2)  #1836 pc 21580
	flw	%f1, 8(%x6)  #1836 pc 21584
	lw	%x6, 4(%x2)  #1836 pc 21588
	fsw	%f0, 40(%x2)  #1836 pc 21592
	fsw	%f1, 48(%x2)  #1836 pc 21596
	sw	%x1, 56(%x2)  #1836 pc 21600
	addi	%x2, %x2, 60  #1836 pc 21604
	jal	%x1, o_param_z.2681  #1836 pc 21608
	addi	%x2, %x2, -60  #1836 pc 21612
	lw	%x1, 56(%x2) #1836 pc 21616
	flw	%f1, 48(%x2)  #1836 pc 21620
	fsub	%f0, %f1, %f0  #1836 pc 21624
	lw	%x6, 4(%x2)  #1838 pc 21628
	fsw	%f0, 56(%x2)  #1838 pc 21632
	sw	%x1, 64(%x2)  #1838 pc 21636
	addi	%x2, %x2, 68  #1838 pc 21640
	jal	%x1, o_param_a.2669  #1838 pc 21644
	addi	%x2, %x2, -68  #1838 pc 21648
	lw	%x1, 64(%x2) #1838 pc 21652
	flw	%f1, 24(%x2)  #1838 pc 21656
	fmul	%f0, %f1, %f0  #1838 pc 21660
	lw	%x6, 4(%x2)  #1839 pc 21664
	fsw	%f0, 64(%x2)  #1839 pc 21668
	sw	%x1, 72(%x2)  #1839 pc 21672
	addi	%x2, %x2, 76  #1839 pc 21676
	jal	%x1, o_param_b.2671  #1839 pc 21680
	addi	%x2, %x2, -76  #1839 pc 21684
	lw	%x1, 72(%x2) #1839 pc 21688
	flw	%f1, 40(%x2)  #1839 pc 21692
	fmul	%f0, %f1, %f0  #1839 pc 21696
	lw	%x6, 4(%x2)  #1840 pc 21700
	fsw	%f0, 72(%x2)  #1840 pc 21704
	sw	%x1, 80(%x2)  #1840 pc 21708
	addi	%x2, %x2, 84  #1840 pc 21712
	jal	%x1, o_param_c.2673  #1840 pc 21716
	addi	%x2, %x2, -84  #1840 pc 21720
	lw	%x1, 80(%x2) #1840 pc 21724
	flw	%f1, 56(%x2)  #1840 pc 21728
	fmul	%f0, %f1, %f0  #1840 pc 21732
	lw	%x6, 4(%x2)  #1842 pc 21736
	fsw	%f0, 80(%x2)  #1842 pc 21740
	sw	%x1, 88(%x2)  #1842 pc 21744
	addi	%x2, %x2, 92  #1842 pc 21748
	jal	%x1, o_isrot.2667  #1842 pc 21752
	addi	%x2, %x2, -92  #1842 pc 21756
	lw	%x1, 88(%x2) #1842 pc 21760
	beq	%x6, %x0, 12  #1842 pc 21764
	j	be_else.9392 #pc 21768
	nop #pc 21772
	lw	%x6, 0(%x2)  #1843 pc 21776
	flw	%f0, 64(%x2)  #1843 pc 21780
	fsw	%f0, 0(%x6)  #1843 pc 21784
	flw	%f0, 72(%x2)  #1844 pc 21788
	fsw	%f0, 4(%x6)  #1844 pc 21792
	flw	%f0, 80(%x2)  #1845 pc 21796
	fsw	%f0, 8(%x6)  #1845 pc 21800
	j	be_cont.9393 #pc 21804
	nop #pc 21808
be_else.9392: #pc 21812
	lw	%x6, 4(%x2)  #1847 pc 21812
	sw	%x1, 88(%x2)  #1847 pc 21816
	addi	%x2, %x2, 92  #1847 pc 21820
	jal	%x1, o_param_r3.2697  #1847 pc 21824
	addi	%x2, %x2, -92  #1847 pc 21828
	lw	%x1, 88(%x2) #1847 pc 21832
	flw	%f1, 40(%x2)  #1847 pc 21836
	fmul	%f0, %f1, %f0  #1847 pc 21840
	lw	%x6, 4(%x2)  #1847 pc 21844
	fsw	%f0, 88(%x2)  #1847 pc 21848
	sw	%x1, 96(%x2)  #1847 pc 21852
	addi	%x2, %x2, 100  #1847 pc 21856
	jal	%x1, o_param_r2.2695  #1847 pc 21860
	addi	%x2, %x2, -100  #1847 pc 21864
	lw	%x1, 96(%x2) #1847 pc 21868
	flw	%f1, 56(%x2)  #1847 pc 21872
	fmul	%f0, %f1, %f0  #1847 pc 21876
	flw	%f2, 88(%x2)  #1847 pc 21880
	fadd	%f0, %f2, %f0  #1847 pc 21884
	sw	%x1, 96(%x2)  #1847 pc 21888
	addi	%x2, %x2, 100  #1847 pc 21892
	jal	%x1, fhalf.2519  #1847 pc 21896
	addi	%x2, %x2, -100  #1847 pc 21900
	lw	%x1, 96(%x2) #1847 pc 21904
	flw	%f1, 64(%x2)  #1847 pc 21908
	fadd	%f0, %f1, %f0  #1847 pc 21912
	lw	%x6, 0(%x2)  #1847 pc 21916
	fsw	%f0, 0(%x6)  #1847 pc 21920
	lw	%x7, 4(%x2)  #1848 pc 21924
	addi	%x6, %x7, 0  #0 pc 21928
	sw	%x1, 96(%x2)  #1848 pc 21932
	addi	%x2, %x2, 100  #1848 pc 21936
	jal	%x1, o_param_r3.2697  #1848 pc 21940
	addi	%x2, %x2, -100  #1848 pc 21944
	lw	%x1, 96(%x2) #1848 pc 21948
	flw	%f1, 24(%x2)  #1848 pc 21952
	fmul	%f0, %f1, %f0  #1848 pc 21956
	lw	%x6, 4(%x2)  #1848 pc 21960
	fsw	%f0, 96(%x2)  #1848 pc 21964
	sw	%x1, 104(%x2)  #1848 pc 21968
	addi	%x2, %x2, 108  #1848 pc 21972
	jal	%x1, o_param_r1.2693  #1848 pc 21976
	addi	%x2, %x2, -108  #1848 pc 21980
	lw	%x1, 104(%x2) #1848 pc 21984
	flw	%f1, 56(%x2)  #1848 pc 21988
	fmul	%f0, %f1, %f0  #1848 pc 21992
	flw	%f1, 96(%x2)  #1848 pc 21996
	fadd	%f0, %f1, %f0  #1848 pc 22000
	sw	%x1, 104(%x2)  #1848 pc 22004
	addi	%x2, %x2, 108  #1848 pc 22008
	jal	%x1, fhalf.2519  #1848 pc 22012
	addi	%x2, %x2, -108  #1848 pc 22016
	lw	%x1, 104(%x2) #1848 pc 22020
	flw	%f1, 72(%x2)  #1848 pc 22024
	fadd	%f0, %f1, %f0  #1848 pc 22028
	lw	%x6, 0(%x2)  #1848 pc 22032
	fsw	%f0, 4(%x6)  #1848 pc 22036
	lw	%x7, 4(%x2)  #1849 pc 22040
	addi	%x6, %x7, 0  #0 pc 22044
	sw	%x1, 104(%x2)  #1849 pc 22048
	addi	%x2, %x2, 108  #1849 pc 22052
	jal	%x1, o_param_r2.2695  #1849 pc 22056
	addi	%x2, %x2, -108  #1849 pc 22060
	lw	%x1, 104(%x2) #1849 pc 22064
	flw	%f1, 24(%x2)  #1849 pc 22068
	fmul	%f0, %f1, %f0  #1849 pc 22072
	lw	%x6, 4(%x2)  #1849 pc 22076
	fsw	%f0, 104(%x2)  #1849 pc 22080
	sw	%x1, 112(%x2)  #1849 pc 22084
	addi	%x2, %x2, 116  #1849 pc 22088
	jal	%x1, o_param_r1.2693  #1849 pc 22092
	addi	%x2, %x2, -116  #1849 pc 22096
	lw	%x1, 112(%x2) #1849 pc 22100
	flw	%f1, 40(%x2)  #1849 pc 22104
	fmul	%f0, %f1, %f0  #1849 pc 22108
	flw	%f1, 104(%x2)  #1849 pc 22112
	fadd	%f0, %f1, %f0  #1849 pc 22116
	sw	%x1, 112(%x2)  #1849 pc 22120
	addi	%x2, %x2, 116  #1849 pc 22124
	jal	%x1, fhalf.2519  #1849 pc 22128
	addi	%x2, %x2, -116  #1849 pc 22132
	lw	%x1, 112(%x2) #1849 pc 22136
	flw	%f1, 80(%x2)  #1849 pc 22140
	fadd	%f0, %f1, %f0  #1849 pc 22144
	lw	%x6, 0(%x2)  #1849 pc 22148
	fsw	%f0, 8(%x6)  #1849 pc 22152
be_cont.9393: #pc 22156
	lw	%x7, 4(%x2)  #1851 pc 22156
	addi	%x6, %x7, 0  #0 pc 22160
	sw	%x1, 112(%x2)  #1851 pc 22164
	addi	%x2, %x2, 116  #1851 pc 22168
	jal	%x1, o_isinvert.2665  #1851 pc 22172
	addi	%x2, %x2, -116  #1851 pc 22176
	lw	%x1, 112(%x2) #1851 pc 22180
	addi	%x7, %x6, 0  #1851 pc 22184
	lw	%x6, 0(%x2)  #1851 pc 22188
	j	vecunit_sgn.2634  #1851 pc 22192
	nop #pc 22196
get_nvector.2925:  #pc 22200
	lw	%x8, 12(%x29)  #1856 pc 22200
	lw	%x9, 8(%x29)  #1856 pc 22204
	lw	%x10, 4(%x29)  #1856 pc 22208
	sw	%x8, 0(%x2)  #1856 pc 22212
	sw	%x6, 4(%x2)  #1856 pc 22216
	sw	%x10, 8(%x2)  #1856 pc 22220
	sw	%x7, 12(%x2)  #1856 pc 22224
	sw	%x9, 16(%x2)  #1856 pc 22228
	sw	%x1, 20(%x2)  #1856 pc 22232
	addi	%x2, %x2, 24  #1856 pc 22236
	jal	%x1, o_form.2661  #1856 pc 22240
	addi	%x2, %x2, -24  #1856 pc 22244
	lw	%x1, 20(%x2) #1856 pc 22248
	addi	%x31, %x0, 1  #pc 22252
	beq	%x6, %x31, 12  #1857 pc 22256
	j	be_else.9394 #pc 22260
	nop #pc 22264
	lw	%x6, 12(%x2)  #1858 pc 22268
	lw	%x29, 16(%x2)  #1858 pc 22272
	lw	%x30, 0(%x29)  #1858 pc 22276
	jalr	%x0, %x30, 0  #1858 pc 22280
	nop #pc 22284
be_else.9394: #pc 22288
	addi	%x31, %x0, 2  #pc 22288
	beq	%x6, %x31, 12  #1859 pc 22292
	j	be_else.9395 #pc 22296
	nop #pc 22300
	lw	%x6, 4(%x2)  #1860 pc 22304
	lw	%x29, 8(%x2)  #1860 pc 22308
	lw	%x30, 0(%x29)  #1860 pc 22312
	jalr	%x0, %x30, 0  #1860 pc 22316
	nop #pc 22320
be_else.9395: #pc 22324
	lw	%x6, 4(%x2)  #1862 pc 22324
	lw	%x29, 0(%x2)  #1862 pc 22328
	lw	%x30, 0(%x29)  #1862 pc 22332
	jalr	%x0, %x30, 0  #1862 pc 22336
	nop #pc 22340
utexture.2928:  #pc 22344
	lw	%x8, 4(%x29)  #1872 pc 22344
	sw	%x7, 0(%x2)  #1872 pc 22348
	sw	%x8, 4(%x2)  #1872 pc 22352
	sw	%x6, 8(%x2)  #1872 pc 22356
	sw	%x1, 12(%x2)  #1872 pc 22360
	addi	%x2, %x2, 16  #1872 pc 22364
	jal	%x1, o_texturetype.2659  #1872 pc 22368
	addi	%x2, %x2, -16  #1872 pc 22372
	lw	%x1, 12(%x2) #1872 pc 22376
	lw	%x7, 8(%x2)  #1874 pc 22380
	sw	%x6, 12(%x2)  #1874 pc 22384
	addi	%x6, %x7, 0  #0 pc 22388
	sw	%x1, 16(%x2)  #1874 pc 22392
	addi	%x2, %x2, 20  #1874 pc 22396
	jal	%x1, o_color_red.2687  #1874 pc 22400
	addi	%x2, %x2, -20  #1874 pc 22404
	lw	%x1, 16(%x2) #1874 pc 22408
	lw	%x6, 4(%x2)  #1874 pc 22412
	fsw	%f0, 0(%x6)  #1874 pc 22416
	lw	%x7, 8(%x2)  #1875 pc 22420
	addi	%x6, %x7, 0  #0 pc 22424
	sw	%x1, 16(%x2)  #1875 pc 22428
	addi	%x2, %x2, 20  #1875 pc 22432
	jal	%x1, o_color_green.2689  #1875 pc 22436
	addi	%x2, %x2, -20  #1875 pc 22440
	lw	%x1, 16(%x2) #1875 pc 22444
	lw	%x6, 4(%x2)  #1875 pc 22448
	fsw	%f0, 4(%x6)  #1875 pc 22452
	lw	%x7, 8(%x2)  #1876 pc 22456
	addi	%x6, %x7, 0  #0 pc 22460
	sw	%x1, 16(%x2)  #1876 pc 22464
	addi	%x2, %x2, 20  #1876 pc 22468
	jal	%x1, o_color_blue.2691  #1876 pc 22472
	addi	%x2, %x2, -20  #1876 pc 22476
	lw	%x1, 16(%x2) #1876 pc 22480
	lw	%x6, 4(%x2)  #1876 pc 22484
	fsw	%f0, 8(%x6)  #1876 pc 22488
	lw	%x7, 12(%x2)  #1877 pc 22492
	addi	%x31, %x0, 1  #pc 22496
	beq	%x7, %x31, 12  #1877 pc 22500
	j	be_else.9396 #pc 22504
	nop #pc 22508
	lw	%x7, 0(%x2)  #1880 pc 22512
	flw	%f0, 0(%x7)  #1880 pc 22516
	lw	%x8, 8(%x2)  #1880 pc 22520
	fsw	%f0, 16(%x2)  #1880 pc 22524
	addi	%x6, %x8, 0  #0 pc 22528
	sw	%x1, 24(%x2)  #1880 pc 22532
	addi	%x2, %x2, 28  #1880 pc 22536
	jal	%x1, o_param_x.2677  #1880 pc 22540
	addi	%x2, %x2, -28  #1880 pc 22544
	lw	%x1, 24(%x2) #1880 pc 22548
	flw	%f1, 16(%x2)  #1880 pc 22552
	fsub	%f0, %f1, %f0  #1880 pc 22556
	fmv	%f1, l.6780  #0 pc 22560
	fmul	%f1, %f0, %f1  #1882 pc 22564
	fsw	%f0, 24(%x2)  #1882 pc 22568
	fadd	%f0, %f1, %f30  #0 pc 22572
	sw	%x1, 32(%x2)  #1882 pc 22576
	addi	%x2, %x2, 36  #1882 pc 22580
	jal	%x1, floor.2534  #1882 pc 22584
	addi	%x2, %x2, -36  #1882 pc 22588
	lw	%x1, 32(%x2) #1882 pc 22592
	fmv	%f1, l.6782  #0 pc 22596
	fmul	%f0, %f0, %f1  #1882 pc 22600
	flw	%f1, 24(%x2)  #1883 pc 22604
	fsub	%f0, %f1, %f0  #1883 pc 22608
	fmv	%f1, l.6763  #0 pc 22612
	sw	%x1, 32(%x2)  #1883 pc 22616
	addi	%x2, %x2, 36  #1883 pc 22620
	jal	%x1, fless.2521  #1883 pc 22624
	addi	%x2, %x2, -36  #1883 pc 22628
	lw	%x1, 32(%x2) #1883 pc 22632
	lw	%x7, 0(%x2)  #1885 pc 22636
	flw	%f0, 8(%x7)  #1885 pc 22640
	lw	%x7, 8(%x2)  #1885 pc 22644
	sw	%x6, 32(%x2)  #1885 pc 22648
	fsw	%f0, 40(%x2)  #1885 pc 22652
	addi	%x6, %x7, 0  #0 pc 22656
	sw	%x1, 48(%x2)  #1885 pc 22660
	addi	%x2, %x2, 52  #1885 pc 22664
	jal	%x1, o_param_z.2681  #1885 pc 22668
	addi	%x2, %x2, -52  #1885 pc 22672
	lw	%x1, 48(%x2) #1885 pc 22676
	flw	%f1, 40(%x2)  #1885 pc 22680
	fsub	%f0, %f1, %f0  #1885 pc 22684
	fmv	%f1, l.6780  #0 pc 22688
	fmul	%f1, %f0, %f1  #1887 pc 22692
	fsw	%f0, 48(%x2)  #1887 pc 22696
	fadd	%f0, %f1, %f30  #0 pc 22700
	sw	%x1, 56(%x2)  #1887 pc 22704
	addi	%x2, %x2, 60  #1887 pc 22708
	jal	%x1, floor.2534  #1887 pc 22712
	addi	%x2, %x2, -60  #1887 pc 22716
	lw	%x1, 56(%x2) #1887 pc 22720
	fmv	%f1, l.6782  #0 pc 22724
	fmul	%f0, %f0, %f1  #1887 pc 22728
	flw	%f1, 48(%x2)  #1888 pc 22732
	fsub	%f0, %f1, %f0  #1888 pc 22736
	fmv	%f1, l.6763  #0 pc 22740
	sw	%x1, 56(%x2)  #1888 pc 22744
	addi	%x2, %x2, 60  #1888 pc 22748
	jal	%x1, fless.2521  #1888 pc 22752
	addi	%x2, %x2, -60  #1888 pc 22756
	lw	%x1, 56(%x2) #1888 pc 22760
	lw	%x7, 32(%x2)  #1891 pc 22764
	beq	%x7, %x0, 12  #1891 pc 22768
	j	be_else.9398 #pc 22772
	nop #pc 22776
	beq	%x6, %x0, 12  #1893 pc 22780
	j	be_else.9400 #pc 22784
	nop #pc 22788
	fmv	%f0, l.6756  #0 pc 22792
	j	be_cont.9401 #pc 22796
	nop #pc 22800
be_else.9400: #pc 22804
	fmv	%f0, l.6244  #0 pc 22804
be_cont.9401: #pc 22808
	j	be_cont.9399 #pc 22808
	nop #pc 22812
be_else.9398: #pc 22816
	beq	%x6, %x0, 12  #1892 pc 22816
	j	be_else.9402 #pc 22820
	nop #pc 22824
	fmv	%f0, l.6244  #0 pc 22828
	j	be_cont.9403 #pc 22832
	nop #pc 22836
be_else.9402: #pc 22840
	fmv	%f0, l.6756  #0 pc 22840
be_cont.9403: #pc 22844
be_cont.9399: #pc 22844
	lw	%x6, 4(%x2)  #1890 pc 22844
	fsw	%f0, 4(%x6)  #1890 pc 22848
	ret #pc 22852
	nop #pc 22856
be_else.9396: #pc 22860
	addi	%x31, %x0, 2  #pc 22860
	beq	%x7, %x31, 12  #1895 pc 22864
	j	be_else.9405 #pc 22868
	nop #pc 22872
	lw	%x7, 0(%x2)  #1898 pc 22876
	flw	%f0, 4(%x7)  #1898 pc 22880
	fmv	%f1, l.6772  #0 pc 22884
	fmul	%f0, %f0, %f1  #1898 pc 22888
	sw	%x1, 56(%x2)  #1898 pc 22892
	addi	%x2, %x2, 60  #1898 pc 22896
	jal	%x1, sin.2526  #1898 pc 22900
	addi	%x2, %x2, -60  #1898 pc 22904
	lw	%x1, 56(%x2) #1898 pc 22908
	sw	%x1, 56(%x2)  #1898 pc 22912
	addi	%x2, %x2, 60  #1898 pc 22916
	jal	%x1, fsqr.2517  #1898 pc 22920
	addi	%x2, %x2, -60  #1898 pc 22924
	lw	%x1, 56(%x2) #1898 pc 22928
	fmv	%f1, l.6756  #0 pc 22932
	fmul	%f1, %f1, %f0  #1899 pc 22936
	lw	%x6, 4(%x2)  #1899 pc 22940
	fsw	%f1, 0(%x6)  #1899 pc 22944
	fmv	%f1, l.6756  #0 pc 22948
	fmv	%f2, l.6263  #0 pc 22952
	fsub	%f0, %f2, %f0  #1900 pc 22956
	fmul	%f0, %f1, %f0  #1900 pc 22960
	fsw	%f0, 4(%x6)  #1900 pc 22964
	ret #pc 22968
	nop #pc 22972
be_else.9405: #pc 22976
	addi	%x31, %x0, 3  #pc 22976
	beq	%x7, %x31, 12  #1902 pc 22980
	j	be_else.9407 #pc 22984
	nop #pc 22988
	lw	%x7, 0(%x2)  #1905 pc 22992
	flw	%f0, 0(%x7)  #1905 pc 22996
	lw	%x8, 8(%x2)  #1905 pc 23000
	fsw	%f0, 56(%x2)  #1905 pc 23004
	addi	%x6, %x8, 0  #0 pc 23008
	sw	%x1, 64(%x2)  #1905 pc 23012
	addi	%x2, %x2, 68  #1905 pc 23016
	jal	%x1, o_param_x.2677  #1905 pc 23020
	addi	%x2, %x2, -68  #1905 pc 23024
	lw	%x1, 64(%x2) #1905 pc 23028
	flw	%f1, 56(%x2)  #1905 pc 23032
	fsub	%f0, %f1, %f0  #1905 pc 23036
	lw	%x6, 0(%x2)  #1906 pc 23040
	flw	%f1, 8(%x6)  #1906 pc 23044
	lw	%x6, 8(%x2)  #1906 pc 23048
	fsw	%f0, 64(%x2)  #1906 pc 23052
	fsw	%f1, 72(%x2)  #1906 pc 23056
	sw	%x1, 80(%x2)  #1906 pc 23060
	addi	%x2, %x2, 84  #1906 pc 23064
	jal	%x1, o_param_z.2681  #1906 pc 23068
	addi	%x2, %x2, -84  #1906 pc 23072
	lw	%x1, 80(%x2) #1906 pc 23076
	flw	%f1, 72(%x2)  #1906 pc 23080
	fsub	%f0, %f1, %f0  #1906 pc 23084
	flw	%f1, 64(%x2)  #1907 pc 23088
	fsw	%f0, 80(%x2)  #1907 pc 23092
	fadd	%f0, %f1, %f30  #0 pc 23096
	sw	%x1, 88(%x2)  #1907 pc 23100
	addi	%x2, %x2, 92  #1907 pc 23104
	jal	%x1, fsqr.2517  #1907 pc 23108
	addi	%x2, %x2, -92  #1907 pc 23112
	lw	%x1, 88(%x2) #1907 pc 23116
	flw	%f1, 80(%x2)  #1907 pc 23120
	fsw	%f0, 88(%x2)  #1907 pc 23124
	fadd	%f0, %f1, %f30  #0 pc 23128
	sw	%x1, 96(%x2)  #1907 pc 23132
	addi	%x2, %x2, 100  #1907 pc 23136
	jal	%x1, fsqr.2517  #1907 pc 23140
	addi	%x2, %x2, -100  #1907 pc 23144
	lw	%x1, 96(%x2) #1907 pc 23148
	flw	%f1, 88(%x2)  #1907 pc 23152
	fadd	%f0, %f1, %f0  #1907 pc 23156
	fmv	%f1, l.6763  #0 pc 23160
	fdiv	%f0, %f0, %f1  #1907 pc 23164
	fsqrt	%f0, %f0  #1907 pc 23168
	fsw	%f0, 96(%x2)  #1908 pc 23172
	sw	%x1, 104(%x2)  #1908 pc 23176
	addi	%x2, %x2, 108  #1908 pc 23180
	jal	%x1, floor.2534  #1908 pc 23184
	addi	%x2, %x2, -108  #1908 pc 23188
	lw	%x1, 104(%x2) #1908 pc 23192
	flw	%f1, 96(%x2)  #1908 pc 23196
	fsub	%f0, %f1, %f0  #1908 pc 23200
	fmv	%f1, l.6744  #0 pc 23204
	fmul	%f0, %f0, %f1  #1908 pc 23208
	sw	%x1, 104(%x2)  #1909 pc 23212
	addi	%x2, %x2, 108  #1909 pc 23216
	jal	%x1, cos.2530  #1909 pc 23220
	addi	%x2, %x2, -108  #1909 pc 23224
	lw	%x1, 104(%x2) #1909 pc 23228
	sw	%x1, 104(%x2)  #1909 pc 23232
	addi	%x2, %x2, 108  #1909 pc 23236
	jal	%x1, fsqr.2517  #1909 pc 23240
	addi	%x2, %x2, -108  #1909 pc 23244
	lw	%x1, 104(%x2) #1909 pc 23248
	fmv	%f1, l.6756  #0 pc 23252
	fmul	%f1, %f0, %f1  #1910 pc 23256
	lw	%x6, 4(%x2)  #1910 pc 23260
	fsw	%f1, 4(%x6)  #1910 pc 23264
	fmv	%f1, l.6263  #0 pc 23268
	fsub	%f0, %f1, %f0  #1911 pc 23272
	fmv	%f1, l.6756  #0 pc 23276
	fmul	%f0, %f0, %f1  #1911 pc 23280
	fsw	%f0, 8(%x6)  #1911 pc 23284
	ret #pc 23288
	nop #pc 23292
be_else.9407: #pc 23296
	addi	%x31, %x0, 4  #pc 23296
	beq	%x7, %x31, 12  #1913 pc 23300
	j	be_else.9409 #pc 23304
	nop #pc 23308
	lw	%x7, 0(%x2)  #1915 pc 23312
	flw	%f0, 0(%x7)  #1915 pc 23316
	lw	%x8, 8(%x2)  #1915 pc 23320
	fsw	%f0, 104(%x2)  #1915 pc 23324
	addi	%x6, %x8, 0  #0 pc 23328
	sw	%x1, 112(%x2)  #1915 pc 23332
	addi	%x2, %x2, 116  #1915 pc 23336
	jal	%x1, o_param_x.2677  #1915 pc 23340
	addi	%x2, %x2, -116  #1915 pc 23344
	lw	%x1, 112(%x2) #1915 pc 23348
	flw	%f1, 104(%x2)  #1915 pc 23352
	fsub	%f0, %f1, %f0  #1915 pc 23356
	lw	%x6, 8(%x2)  #1915 pc 23360
	fsw	%f0, 112(%x2)  #1915 pc 23364
	sw	%x1, 120(%x2)  #1915 pc 23368
	addi	%x2, %x2, 124  #1915 pc 23372
	jal	%x1, o_param_a.2669  #1915 pc 23376
	addi	%x2, %x2, -124  #1915 pc 23380
	lw	%x1, 120(%x2) #1915 pc 23384
	fsqrt	%f0, %f0  #1915 pc 23388
	flw	%f1, 112(%x2)  #1915 pc 23392
	fmul	%f0, %f1, %f0  #1915 pc 23396
	lw	%x6, 0(%x2)  #1916 pc 23400
	flw	%f1, 8(%x6)  #1916 pc 23404
	lw	%x7, 8(%x2)  #1916 pc 23408
	fsw	%f0, 120(%x2)  #1916 pc 23412
	fsw	%f1, 128(%x2)  #1916 pc 23416
	addi	%x6, %x7, 0  #0 pc 23420
	sw	%x1, 136(%x2)  #1916 pc 23424
	addi	%x2, %x2, 140  #1916 pc 23428
	jal	%x1, o_param_z.2681  #1916 pc 23432
	addi	%x2, %x2, -140  #1916 pc 23436
	lw	%x1, 136(%x2) #1916 pc 23440
	flw	%f1, 128(%x2)  #1916 pc 23444
	fsub	%f0, %f1, %f0  #1916 pc 23448
	lw	%x6, 8(%x2)  #1916 pc 23452
	fsw	%f0, 136(%x2)  #1916 pc 23456
	sw	%x1, 144(%x2)  #1916 pc 23460
	addi	%x2, %x2, 148  #1916 pc 23464
	jal	%x1, o_param_c.2673  #1916 pc 23468
	addi	%x2, %x2, -148  #1916 pc 23472
	lw	%x1, 144(%x2) #1916 pc 23476
	fsqrt	%f0, %f0  #1916 pc 23480
	flw	%f1, 136(%x2)  #1916 pc 23484
	fmul	%f0, %f1, %f0  #1916 pc 23488
	flw	%f1, 120(%x2)  #1917 pc 23492
	fsw	%f0, 144(%x2)  #1917 pc 23496
	fadd	%f0, %f1, %f30  #0 pc 23500
	sw	%x1, 152(%x2)  #1917 pc 23504
	addi	%x2, %x2, 156  #1917 pc 23508
	jal	%x1, fsqr.2517  #1917 pc 23512
	addi	%x2, %x2, -156  #1917 pc 23516
	lw	%x1, 152(%x2) #1917 pc 23520
	flw	%f1, 144(%x2)  #1917 pc 23524
	fsw	%f0, 152(%x2)  #1917 pc 23528
	fadd	%f0, %f1, %f30  #0 pc 23532
	sw	%x1, 160(%x2)  #1917 pc 23536
	addi	%x2, %x2, 164  #1917 pc 23540
	jal	%x1, fsqr.2517  #1917 pc 23544
	addi	%x2, %x2, -164  #1917 pc 23548
	lw	%x1, 160(%x2) #1917 pc 23552
	flw	%f1, 152(%x2)  #1917 pc 23556
	fadd	%f0, %f1, %f0  #1917 pc 23560
	flw	%f1, 120(%x2)  #1919 pc 23564
	fabs	%f2, %f1  #1919 pc 23568
	fmv	%f3, l.6738  #0 pc 23572
	fsw	%f0, 160(%x2)  #1919 pc 23576
	fadd	%f1, %f3, %f30  #0 pc 23580
	fadd	%f0, %f2, %f30  #0 pc 23584
	sw	%x1, 168(%x2)  #1919 pc 23588
	addi	%x2, %x2, 172  #1919 pc 23592
	jal	%x1, fless.2521  #1919 pc 23596
	addi	%x2, %x2, -172  #1919 pc 23600
	lw	%x1, 168(%x2) #1919 pc 23604
	beq	%x6, %x0, 12  #1919 pc 23608
	j	be_else.9410 #pc 23612
	nop #pc 23616
	flw	%f0, 120(%x2)  #1922 pc 23620
	flw	%f1, 144(%x2)  #1922 pc 23624
	fdiv	%f0, %f1, %f0  #1922 pc 23628
	fabs	%f0, %f0  #1922 pc 23632
	sw	%x1, 168(%x2)  #1924 pc 23636
	addi	%x2, %x2, 172  #1924 pc 23640
	jal	%x1, atan.2532  #1924 pc 23644
	addi	%x2, %x2, -172  #1924 pc 23648
	lw	%x1, 168(%x2) #1924 pc 23652
	fmv	%f1, l.6742  #0 pc 23656
	fmul	%f0, %f0, %f1  #1924 pc 23660
	fmv	%f1, l.6744  #0 pc 23664
	fdiv	%f0, %f0, %f1  #1924 pc 23668
	j	be_cont.9411 #pc 23672
	nop #pc 23676
be_else.9410: #pc 23680
	fmv	%f0, l.6740  #0 pc 23680
be_cont.9411: #pc 23684
	fsw	%f0, 168(%x2)  #1926 pc 23684
	sw	%x1, 176(%x2)  #1926 pc 23688
	addi	%x2, %x2, 180  #1926 pc 23692
	jal	%x1, floor.2534  #1926 pc 23696
	addi	%x2, %x2, -180  #1926 pc 23700
	lw	%x1, 176(%x2) #1926 pc 23704
	flw	%f1, 168(%x2)  #1926 pc 23708
	fsub	%f0, %f1, %f0  #1926 pc 23712
	lw	%x6, 0(%x2)  #1928 pc 23716
	flw	%f1, 4(%x6)  #1928 pc 23720
	lw	%x6, 8(%x2)  #1928 pc 23724
	fsw	%f0, 176(%x2)  #1928 pc 23728
	fsw	%f1, 184(%x2)  #1928 pc 23732
	sw	%x1, 192(%x2)  #1928 pc 23736
	addi	%x2, %x2, 196  #1928 pc 23740
	jal	%x1, o_param_y.2679  #1928 pc 23744
	addi	%x2, %x2, -196  #1928 pc 23748
	lw	%x1, 192(%x2) #1928 pc 23752
	flw	%f1, 184(%x2)  #1928 pc 23756
	fsub	%f0, %f1, %f0  #1928 pc 23760
	lw	%x6, 8(%x2)  #1928 pc 23764
	fsw	%f0, 192(%x2)  #1928 pc 23768
	sw	%x1, 200(%x2)  #1928 pc 23772
	addi	%x2, %x2, 204  #1928 pc 23776
	jal	%x1, o_param_b.2671  #1928 pc 23780
	addi	%x2, %x2, -204  #1928 pc 23784
	lw	%x1, 200(%x2) #1928 pc 23788
	fsqrt	%f0, %f0  #1928 pc 23792
	flw	%f1, 192(%x2)  #1928 pc 23796
	fmul	%f0, %f1, %f0  #1928 pc 23800
	flw	%f1, 160(%x2)  #1930 pc 23804
	fabs	%f2, %f1  #1930 pc 23808
	fmv	%f3, l.6738  #0 pc 23812
	fsw	%f0, 200(%x2)  #1930 pc 23816
	fadd	%f1, %f3, %f30  #0 pc 23820
	fadd	%f0, %f2, %f30  #0 pc 23824
	sw	%x1, 208(%x2)  #1930 pc 23828
	addi	%x2, %x2, 212  #1930 pc 23832
	jal	%x1, fless.2521  #1930 pc 23836
	addi	%x2, %x2, -212  #1930 pc 23840
	lw	%x1, 208(%x2) #1930 pc 23844
	beq	%x6, %x0, 12  #1930 pc 23848
	j	be_else.9412 #pc 23852
	nop #pc 23856
	flw	%f0, 160(%x2)  #1933 pc 23860
	flw	%f1, 200(%x2)  #1933 pc 23864
	fdiv	%f0, %f1, %f0  #1933 pc 23868
	fabs	%f0, %f0  #1933 pc 23872
	sw	%x1, 208(%x2)  #1934 pc 23876
	addi	%x2, %x2, 212  #1934 pc 23880
	jal	%x1, atan.2532  #1934 pc 23884
	addi	%x2, %x2, -212  #1934 pc 23888
	lw	%x1, 208(%x2) #1934 pc 23892
	fmv	%f1, l.6742  #0 pc 23896
	fmul	%f0, %f0, %f1  #1934 pc 23900
	fmv	%f1, l.6744  #0 pc 23904
	fdiv	%f0, %f0, %f1  #1934 pc 23908
	j	be_cont.9413 #pc 23912
	nop #pc 23916
be_else.9412: #pc 23920
	fmv	%f0, l.6740  #0 pc 23920
be_cont.9413: #pc 23924
	fsw	%f0, 208(%x2)  #1936 pc 23924
	sw	%x1, 216(%x2)  #1936 pc 23928
	addi	%x2, %x2, 220  #1936 pc 23932
	jal	%x1, floor.2534  #1936 pc 23936
	addi	%x2, %x2, -220  #1936 pc 23940
	lw	%x1, 216(%x2) #1936 pc 23944
	flw	%f1, 208(%x2)  #1936 pc 23948
	fsub	%f0, %f1, %f0  #1936 pc 23952
	fmv	%f1, l.6751  #0 pc 23956
	fmv	%f2, l.6248  #0 pc 23960
	flw	%f3, 176(%x2)  #1937 pc 23964
	fsub	%f2, %f2, %f3  #1937 pc 23968
	fsw	%f0, 216(%x2)  #1937 pc 23972
	fsw	%f1, 224(%x2)  #1937 pc 23976
	fadd	%f0, %f2, %f30  #0 pc 23980
	sw	%x1, 232(%x2)  #1937 pc 23984
	addi	%x2, %x2, 236  #1937 pc 23988
	jal	%x1, fsqr.2517  #1937 pc 23992
	addi	%x2, %x2, -236  #1937 pc 23996
	lw	%x1, 232(%x2) #1937 pc 24000
	flw	%f1, 224(%x2)  #1937 pc 24004
	fsub	%f0, %f1, %f0  #1937 pc 24008
	fmv	%f1, l.6248  #0 pc 24012
	flw	%f2, 216(%x2)  #1937 pc 24016
	fsub	%f1, %f1, %f2  #1937 pc 24020
	fsw	%f0, 232(%x2)  #1937 pc 24024
	fadd	%f0, %f1, %f30  #0 pc 24028
	sw	%x1, 240(%x2)  #1937 pc 24032
	addi	%x2, %x2, 244  #1937 pc 24036
	jal	%x1, fsqr.2517  #1937 pc 24040
	addi	%x2, %x2, -244  #1937 pc 24044
	lw	%x1, 240(%x2) #1937 pc 24048
	flw	%f1, 232(%x2)  #1937 pc 24052
	fsub	%f0, %f1, %f0  #1937 pc 24056
	fsw	%f0, 240(%x2)  #1938 pc 24060
	sw	%x1, 248(%x2)  #1938 pc 24064
	addi	%x2, %x2, 252  #1938 pc 24068
	jal	%x1, fisneg.2513  #1938 pc 24072
	addi	%x2, %x2, -252  #1938 pc 24076
	lw	%x1, 248(%x2) #1938 pc 24080
	beq	%x6, %x0, 12  #1938 pc 24084
	j	be_else.9414 #pc 24088
	nop #pc 24092
	flw	%f0, 240(%x2)  #1938 pc 24096
	j	be_cont.9415 #pc 24100
	nop #pc 24104
be_else.9414: #pc 24108
	fmv	%f0, l.6244  #0 pc 24108
be_cont.9415: #pc 24112
	fmv	%f1, l.6756  #0 pc 24112
	fmul	%f0, %f1, %f0  #1939 pc 24116
	fmv	%f1, l.6758  #0 pc 24120
	fdiv	%f0, %f0, %f1  #1939 pc 24124
	lw	%x6, 4(%x2)  #1939 pc 24128
	fsw	%f0, 8(%x6)  #1939 pc 24132
	ret #pc 24136
	nop #pc 24140
be_else.9409: #pc 24144
	ret #pc 24144
	nop #pc 24148
add_light.2931:  #pc 24152
	lw	%x6, 8(%x29)  #0 pc 24152
	lw	%x7, 4(%x29)  #0 pc 24156
	fsw	%f2, 0(%x2)  #1952 pc 24160
	fsw	%f1, 8(%x2)  #1952 pc 24164
	fsw	%f0, 16(%x2)  #1952 pc 24168
	sw	%x6, 24(%x2)  #1952 pc 24172
	sw	%x7, 28(%x2)  #1952 pc 24176
	sw	%x1, 32(%x2)  #1952 pc 24180
	addi	%x2, %x2, 36  #1952 pc 24184
	jal	%x1, fispos.2511  #1952 pc 24188
	addi	%x2, %x2, -36  #1952 pc 24192
	lw	%x1, 32(%x2) #1952 pc 24196
	beq	%x6, %x0, 12  #1952 pc 24200
	j	be_else.9418 #pc 24204
	nop #pc 24208
	j	be_cont.9419 #pc 24212
	nop #pc 24216
be_else.9418: #pc 24220
	flw	%f0, 16(%x2)  #1953 pc 24220
	lw	%x6, 28(%x2)  #1953 pc 24224
	lw	%x7, 24(%x2)  #1953 pc 24228
	sw	%x1, 32(%x2)  #1953 pc 24232
	addi	%x2, %x2, 36  #1953 pc 24236
	jal	%x1, vecaccum.2645  #1953 pc 24240
	addi	%x2, %x2, -36  #1953 pc 24244
	lw	%x1, 32(%x2) #1953 pc 24248
be_cont.9419: #pc 24252
	flw	%f0, 8(%x2)  #1957 pc 24252
	sw	%x1, 32(%x2)  #1957 pc 24256
	addi	%x2, %x2, 36  #1957 pc 24260
	jal	%x1, fispos.2511  #1957 pc 24264
	addi	%x2, %x2, -36  #1957 pc 24268
	lw	%x1, 32(%x2) #1957 pc 24272
	beq	%x6, %x0, 12  #1957 pc 24276
	j	be_else.9420 #pc 24280
	nop #pc 24284
	ret #pc 24288
	nop #pc 24292
be_else.9420: #pc 24296
	flw	%f0, 8(%x2)  #1958 pc 24296
	sw	%x1, 32(%x2)  #1958 pc 24300
	addi	%x2, %x2, 36  #1958 pc 24304
	jal	%x1, fsqr.2517  #1958 pc 24308
	addi	%x2, %x2, -36  #1958 pc 24312
	lw	%x1, 32(%x2) #1958 pc 24316
	sw	%x1, 32(%x2)  #1958 pc 24320
	addi	%x2, %x2, 36  #1958 pc 24324
	jal	%x1, fsqr.2517  #1958 pc 24328
	addi	%x2, %x2, -36  #1958 pc 24332
	lw	%x1, 32(%x2) #1958 pc 24336
	flw	%f1, 0(%x2)  #1958 pc 24340
	fmul	%f0, %f0, %f1  #1958 pc 24344
	lw	%x6, 28(%x2)  #1959 pc 24348
	flw	%f1, 0(%x6)  #1959 pc 24352
	fadd	%f1, %f1, %f0  #1959 pc 24356
	fsw	%f1, 0(%x6)  #1959 pc 24360
	flw	%f1, 4(%x6)  #1960 pc 24364
	fadd	%f1, %f1, %f0  #1960 pc 24368
	fsw	%f1, 4(%x6)  #1960 pc 24372
	flw	%f1, 8(%x6)  #1961 pc 24376
	fadd	%f0, %f1, %f0  #1961 pc 24380
	fsw	%f0, 8(%x6)  #1961 pc 24384
	ret #pc 24388
	nop #pc 24392
trace_reflections.2935:  #pc 24396
	lw	%x8, 32(%x29)  #0 pc 24396
	lw	%x9, 28(%x29)  #0 pc 24400
	lw	%x10, 24(%x29)  #0 pc 24404
	lw	%x11, 20(%x29)  #0 pc 24408
	lw	%x12, 16(%x29)  #0 pc 24412
	lw	%x13, 12(%x29)  #0 pc 24416
	lw	%x14, 8(%x29)  #0 pc 24420
	lw	%x15, 4(%x29)  #0 pc 24424
	bge	%x6, %x0, 12  #1968 pc 24428
	j	bge_else.9423 #pc 24432
	nop #pc 24436
	slli	%x16, %x6, 2  #1969 pc 24440
	add	%x31, %x16, %x9  #1969 pc 24444
	lw	%x9, 0(%x31)  #1969 pc 24448
	sw	%x29, 0(%x2)  #1970 pc 24452
	sw	%x6, 4(%x2)  #1970 pc 24456
	fsw	%f1, 8(%x2)  #1970 pc 24460
	sw	%x15, 16(%x2)  #1970 pc 24464
	sw	%x7, 20(%x2)  #1970 pc 24468
	fsw	%f0, 24(%x2)  #1970 pc 24472
	sw	%x11, 32(%x2)  #1970 pc 24476
	sw	%x8, 36(%x2)  #1970 pc 24480
	sw	%x10, 40(%x2)  #1970 pc 24484
	sw	%x9, 44(%x2)  #1970 pc 24488
	sw	%x13, 48(%x2)  #1970 pc 24492
	sw	%x14, 52(%x2)  #1970 pc 24496
	sw	%x12, 56(%x2)  #1970 pc 24500
	addi	%x6, %x9, 0  #0 pc 24504
	sw	%x1, 60(%x2)  #1970 pc 24508
	addi	%x2, %x2, 64  #1970 pc 24512
	jal	%x1, r_dvec.2726  #1970 pc 24516
	addi	%x2, %x2, -64  #1970 pc 24520
	lw	%x1, 60(%x2) #1970 pc 24524
	lw	%x29, 56(%x2)  #1973 pc 24528
	sw	%x6, 60(%x2)  #1973 pc 24532
	sw	%x1, 64(%x2)  #1973 pc 24536
	lw	%x30, 0(%x29)  #1973 pc 24540
	addi	%x2, %x2, 68  #1973 pc 24544
	jalr	%x1, %x30, 0  #1973 pc 24548
	addi	%x2, %x2, -68  #1973 pc 24552
	lw	%x1, 64(%x2)  #1973 pc 24556
	beq	%x6, %x0, 12  #1973 pc 24560
	j	be_else.9424 #pc 24564
	nop #pc 24568
	j	be_cont.9425 #pc 24572
	nop #pc 24576
be_else.9424: #pc 24580
	lw	%x6, 52(%x2)  #1974 pc 24580
	lw	%x6, 0(%x6)  #1974 pc 24584
	addi	%x7, %x0, 4  #0 pc 24588
	sw	%x1, 64(%x2)  #1974 pc 24592
	addi	%x2, %x2, 68  #1974 pc 24596
	jal	%x1, mul.2547  #1974 pc 24600
	addi	%x2, %x2, -68  #1974 pc 24604
	lw	%x1, 64(%x2) #1974 pc 24608
	lw	%x7, 48(%x2)  #1974 pc 24612
	lw	%x7, 0(%x7)  #1974 pc 24616
	add	%x6, %x6, %x7  #1974 pc 24620
	lw	%x7, 44(%x2)  #1975 pc 24624
	sw	%x6, 64(%x2)  #1975 pc 24628
	addi	%x6, %x7, 0  #0 pc 24632
	sw	%x1, 68(%x2)  #1975 pc 24636
	addi	%x2, %x2, 72  #1975 pc 24640
	jal	%x1, r_surface_id.2724  #1975 pc 24644
	addi	%x2, %x2, -72  #1975 pc 24648
	lw	%x1, 68(%x2) #1975 pc 24652
	lw	%x7, 64(%x2)  #1975 pc 24656
	beq	%x7, %x6, 12  #1975 pc 24660
	j	be_else.9426 #pc 24664
	nop #pc 24668
	addi	%x6, %x0, 0  #0 pc 24672
	lw	%x7, 40(%x2)  #1977 pc 24676
	lw	%x7, 0(%x7)  #1977 pc 24680
	lw	%x29, 36(%x2)  #1977 pc 24684
	sw	%x1, 68(%x2)  #1977 pc 24688
	lw	%x30, 0(%x29)  #1977 pc 24692
	addi	%x2, %x2, 72  #1977 pc 24696
	jalr	%x1, %x30, 0  #1977 pc 24700
	addi	%x2, %x2, -72  #1977 pc 24704
	lw	%x1, 68(%x2)  #1977 pc 24708
	beq	%x6, %x0, 12  #1977 pc 24712
	j	be_else.9428 #pc 24716
	nop #pc 24720
	lw	%x6, 60(%x2)  #1979 pc 24724
	sw	%x1, 68(%x2)  #1979 pc 24728
	addi	%x2, %x2, 72  #1979 pc 24732
	jal	%x1, d_vec.2720  #1979 pc 24736
	addi	%x2, %x2, -72  #1979 pc 24740
	lw	%x1, 68(%x2) #1979 pc 24744
	addi	%x7, %x6, 0  #1979 pc 24748
	lw	%x6, 32(%x2)  #1979 pc 24752
	sw	%x1, 68(%x2)  #1979 pc 24756
	addi	%x2, %x2, 72  #1979 pc 24760
	jal	%x1, veciprod.2637  #1979 pc 24764
	addi	%x2, %x2, -72  #1979 pc 24768
	lw	%x1, 68(%x2) #1979 pc 24772
	lw	%x6, 44(%x2)  #1980 pc 24776
	fsw	%f0, 72(%x2)  #1980 pc 24780
	sw	%x1, 80(%x2)  #1980 pc 24784
	addi	%x2, %x2, 84  #1980 pc 24788
	jal	%x1, r_bright.2728  #1980 pc 24792
	addi	%x2, %x2, -84  #1980 pc 24796
	lw	%x1, 80(%x2) #1980 pc 24800
	flw	%f1, 24(%x2)  #1981 pc 24804
	fmul	%f2, %f0, %f1  #1981 pc 24808
	flw	%f3, 72(%x2)  #1981 pc 24812
	fmul	%f2, %f2, %f3  #1981 pc 24816
	lw	%x6, 60(%x2)  #1982 pc 24820
	fsw	%f2, 80(%x2)  #1982 pc 24824
	fsw	%f0, 88(%x2)  #1982 pc 24828
	sw	%x1, 96(%x2)  #1982 pc 24832
	addi	%x2, %x2, 100  #1982 pc 24836
	jal	%x1, d_vec.2720  #1982 pc 24840
	addi	%x2, %x2, -100  #1982 pc 24844
	lw	%x1, 96(%x2) #1982 pc 24848
	addi	%x7, %x6, 0  #1982 pc 24852
	lw	%x6, 20(%x2)  #1982 pc 24856
	sw	%x1, 96(%x2)  #1982 pc 24860
	addi	%x2, %x2, 100  #1982 pc 24864
	jal	%x1, veciprod.2637  #1982 pc 24868
	addi	%x2, %x2, -100  #1982 pc 24872
	lw	%x1, 96(%x2) #1982 pc 24876
	flw	%f1, 88(%x2)  #1982 pc 24880
	fmul	%f1, %f1, %f0  #1982 pc 24884
	flw	%f0, 80(%x2)  #1983 pc 24888
	flw	%f2, 8(%x2)  #1983 pc 24892
	lw	%x29, 16(%x2)  #1983 pc 24896
	sw	%x1, 96(%x2)  #1983 pc 24900
	lw	%x30, 0(%x29)  #1983 pc 24904
	addi	%x2, %x2, 100  #1983 pc 24908
	jalr	%x1, %x30, 0  #1983 pc 24912
	addi	%x2, %x2, -100  #1983 pc 24916
	lw	%x1, 96(%x2)  #1983 pc 24920
	j	be_cont.9429 #pc 24924
	nop #pc 24928
be_else.9428: #pc 24932
be_cont.9429: #pc 24932
	j	be_cont.9427 #pc 24932
	nop #pc 24936
be_else.9426: #pc 24940
be_cont.9427: #pc 24940
be_cont.9425: #pc 24940
	lw	%x6, 4(%x2)  #1987 pc 24940
	addi	%x6, %x6, -1  #1987 pc 24944
	flw	%f0, 24(%x2)  #1987 pc 24948
	flw	%f1, 8(%x2)  #1987 pc 24952
	lw	%x7, 20(%x2)  #1987 pc 24956
	lw	%x29, 0(%x2)  #1987 pc 24960
	lw	%x30, 0(%x29)  #1987 pc 24964
	jalr	%x0, %x30, 0  #1987 pc 24968
	nop #pc 24972
bge_else.9423: #pc 24976
	ret #pc 24976
	nop #pc 24980
trace_ray.2940:  #pc 24984
	lw	%x9, 80(%x29)  #0 pc 24984
	lw	%x10, 76(%x29)  #0 pc 24988
	lw	%x11, 72(%x29)  #0 pc 24992
	lw	%x12, 68(%x29)  #0 pc 24996
	lw	%x13, 64(%x29)  #0 pc 25000
	lw	%x14, 60(%x29)  #0 pc 25004
	lw	%x15, 56(%x29)  #0 pc 25008
	lw	%x16, 52(%x29)  #0 pc 25012
	lw	%x17, 48(%x29)  #0 pc 25016
	lw	%x18, 44(%x29)  #0 pc 25020
	lw	%x19, 40(%x29)  #0 pc 25024
	lw	%x20, 36(%x29)  #0 pc 25028
	lw	%x21, 32(%x29)  #0 pc 25032
	lw	%x22, 28(%x29)  #0 pc 25036
	lw	%x23, 24(%x29)  #0 pc 25040
	lw	%x24, 20(%x29)  #0 pc 25044
	lw	%x25, 16(%x29)  #0 pc 25048
	lw	%x26, 12(%x29)  #0 pc 25052
	lw	%x27, 8(%x29)  #0 pc 25056
	lw	%x28, 4(%x29)  #0 pc 25060
	addi	%x31, %x0, 4  #pc 25064
	bge	%x31, %x6, 12  #1996 pc 25068
	j	ble_else.9432 #pc 25072
	nop #pc 25076
	sw	%x29, 0(%x2)  #1997 pc 25080
	fsw	%f1, 8(%x2)  #1997 pc 25084
	sw	%x11, 16(%x2)  #1997 pc 25088
	sw	%x10, 20(%x2)  #1997 pc 25092
	sw	%x20, 24(%x2)  #1997 pc 25096
	sw	%x15, 28(%x2)  #1997 pc 25100
	sw	%x28, 32(%x2)  #1997 pc 25104
	sw	%x14, 36(%x2)  #1997 pc 25108
	sw	%x17, 40(%x2)  #1997 pc 25112
	sw	%x19, 44(%x2)  #1997 pc 25116
	sw	%x12, 48(%x2)  #1997 pc 25120
	sw	%x8, 52(%x2)  #1997 pc 25124
	sw	%x23, 56(%x2)  #1997 pc 25128
	sw	%x9, 60(%x2)  #1997 pc 25132
	sw	%x24, 64(%x2)  #1997 pc 25136
	sw	%x13, 68(%x2)  #1997 pc 25140
	sw	%x26, 72(%x2)  #1997 pc 25144
	sw	%x18, 76(%x2)  #1997 pc 25148
	sw	%x25, 80(%x2)  #1997 pc 25152
	sw	%x16, 84(%x2)  #1997 pc 25156
	sw	%x27, 88(%x2)  #1997 pc 25160
	fsw	%f0, 96(%x2)  #1997 pc 25164
	sw	%x21, 104(%x2)  #1997 pc 25168
	sw	%x6, 108(%x2)  #1997 pc 25172
	sw	%x7, 112(%x2)  #1997 pc 25176
	sw	%x22, 116(%x2)  #1997 pc 25180
	addi	%x6, %x8, 0  #0 pc 25184
	sw	%x1, 120(%x2)  #1997 pc 25188
	addi	%x2, %x2, 124  #1997 pc 25192
	jal	%x1, p_surface_ids.2705  #1997 pc 25196
	addi	%x2, %x2, -124  #1997 pc 25200
	lw	%x1, 120(%x2) #1997 pc 25204
	lw	%x7, 112(%x2)  #1998 pc 25208
	lw	%x29, 116(%x2)  #1998 pc 25212
	sw	%x6, 120(%x2)  #1998 pc 25216
	addi	%x6, %x7, 0  #0 pc 25220
	sw	%x1, 124(%x2)  #1998 pc 25224
	lw	%x30, 0(%x29)  #1998 pc 25228
	addi	%x2, %x2, 128  #1998 pc 25232
	jalr	%x1, %x30, 0  #1998 pc 25236
	addi	%x2, %x2, -128  #1998 pc 25240
	lw	%x1, 124(%x2)  #1998 pc 25244
	beq	%x6, %x0, 12  #1998 pc 25248
	j	be_else.9435 #pc 25252
	nop #pc 25256
	addi	%x6, %x0, -1  #0 pc 25260
	lw	%x7, 108(%x2)  #2061 pc 25264
	slli	%x8, %x7, 2  #2061 pc 25268
	lw	%x9, 120(%x2)  #2061 pc 25272
	add	%x31, %x8, %x9  #2061 pc 25276
	sw	%x6, 0(%x31)  #2061 pc 25280
	beq	%x7, %x0, 12  #2063 pc 25284
	j	be_else.9436 #pc 25288
	nop #pc 25292
	ret #pc 25296
	nop #pc 25300
be_else.9436: #pc 25304
	lw	%x6, 112(%x2)  #2064 pc 25304
	lw	%x7, 104(%x2)  #2064 pc 25308
	sw	%x1, 124(%x2)  #2064 pc 25312
	addi	%x2, %x2, 128  #2064 pc 25316
	jal	%x1, veciprod.2637  #2064 pc 25320
	addi	%x2, %x2, -128  #2064 pc 25324
	lw	%x1, 124(%x2) #2064 pc 25328
	sw	%x1, 124(%x2)  #2064 pc 25332
	addi	%x2, %x2, 128  #2064 pc 25336
	jal	%x1, fneg.2515  #2064 pc 25340
	addi	%x2, %x2, -128  #2064 pc 25344
	lw	%x1, 124(%x2) #2064 pc 25348
	fsw	%f0, 128(%x2)  #2066 pc 25352
	sw	%x1, 136(%x2)  #2066 pc 25356
	addi	%x2, %x2, 140  #2066 pc 25360
	jal	%x1, fispos.2511  #2066 pc 25364
	addi	%x2, %x2, -140  #2066 pc 25368
	lw	%x1, 136(%x2) #2066 pc 25372
	beq	%x6, %x0, 12  #2066 pc 25376
	j	be_else.9439 #pc 25380
	nop #pc 25384
	ret #pc 25388
	nop #pc 25392
be_else.9439: #pc 25396
	flw	%f0, 128(%x2)  #2069 pc 25396
	sw	%x1, 136(%x2)  #2069 pc 25400
	addi	%x2, %x2, 140  #2069 pc 25404
	jal	%x1, fsqr.2517  #2069 pc 25408
	addi	%x2, %x2, -140  #2069 pc 25412
	lw	%x1, 136(%x2) #2069 pc 25416
	flw	%f1, 128(%x2)  #2069 pc 25420
	fmul	%f0, %f0, %f1  #2069 pc 25424
	flw	%f1, 96(%x2)  #2069 pc 25428
	fmul	%f0, %f0, %f1  #2069 pc 25432
	lw	%x6, 88(%x2)  #2069 pc 25436
	flw	%f1, 0(%x6)  #2069 pc 25440
	fmul	%f0, %f0, %f1  #2069 pc 25444
	lw	%x6, 84(%x2)  #2070 pc 25448
	flw	%f1, 0(%x6)  #2070 pc 25452
	fadd	%f1, %f1, %f0  #2070 pc 25456
	fsw	%f1, 0(%x6)  #2070 pc 25460
	flw	%f1, 4(%x6)  #2071 pc 25464
	fadd	%f1, %f1, %f0  #2071 pc 25468
	fsw	%f1, 4(%x6)  #2071 pc 25472
	flw	%f1, 8(%x6)  #2072 pc 25476
	fadd	%f0, %f1, %f0  #2072 pc 25480
	fsw	%f0, 8(%x6)  #2072 pc 25484
	ret #pc 25488
	nop #pc 25492
be_else.9435: #pc 25496
	lw	%x6, 80(%x2)  #2000 pc 25496
	lw	%x6, 0(%x6)  #2000 pc 25500
	slli	%x7, %x6, 2  #2001 pc 25504
	lw	%x8, 76(%x2)  #2001 pc 25508
	add	%x31, %x7, %x8  #2001 pc 25512
	lw	%x7, 0(%x31)  #2001 pc 25516
	sw	%x6, 136(%x2)  #2002 pc 25520
	sw	%x7, 140(%x2)  #2002 pc 25524
	addi	%x6, %x7, 0  #0 pc 25528
	sw	%x1, 144(%x2)  #2002 pc 25532
	addi	%x2, %x2, 148  #2002 pc 25536
	jal	%x1, o_reflectiontype.2663  #2002 pc 25540
	addi	%x2, %x2, -148  #2002 pc 25544
	lw	%x1, 144(%x2) #2002 pc 25548
	lw	%x7, 140(%x2)  #2003 pc 25552
	sw	%x6, 144(%x2)  #2003 pc 25556
	addi	%x6, %x7, 0  #0 pc 25560
	sw	%x1, 148(%x2)  #2003 pc 25564
	addi	%x2, %x2, 152  #2003 pc 25568
	jal	%x1, o_diffuse.2683  #2003 pc 25572
	addi	%x2, %x2, -152  #2003 pc 25576
	lw	%x1, 148(%x2) #2003 pc 25580
	flw	%f1, 96(%x2)  #2003 pc 25584
	fmul	%f0, %f0, %f1  #2003 pc 25588
	lw	%x6, 140(%x2)  #2005 pc 25592
	lw	%x7, 112(%x2)  #2005 pc 25596
	lw	%x29, 72(%x2)  #2005 pc 25600
	fsw	%f0, 152(%x2)  #2005 pc 25604
	sw	%x1, 160(%x2)  #2005 pc 25608
	lw	%x30, 0(%x29)  #2005 pc 25612
	addi	%x2, %x2, 164  #2005 pc 25616
	jalr	%x1, %x30, 0  #2005 pc 25620
	addi	%x2, %x2, -164  #2005 pc 25624
	lw	%x1, 160(%x2)  #2005 pc 25628
	lw	%x6, 68(%x2)  #2006 pc 25632
	lw	%x7, 64(%x2)  #2006 pc 25636
	sw	%x1, 160(%x2)  #2006 pc 25640
	addi	%x2, %x2, 164  #2006 pc 25644
	jal	%x1, veccpy.2631  #2006 pc 25648
	addi	%x2, %x2, -164  #2006 pc 25652
	lw	%x1, 160(%x2) #2006 pc 25656
	lw	%x6, 140(%x2)  #2007 pc 25660
	lw	%x7, 64(%x2)  #2007 pc 25664
	lw	%x29, 60(%x2)  #2007 pc 25668
	sw	%x1, 160(%x2)  #2007 pc 25672
	lw	%x30, 0(%x29)  #2007 pc 25676
	addi	%x2, %x2, 164  #2007 pc 25680
	jalr	%x1, %x30, 0  #2007 pc 25684
	addi	%x2, %x2, -164  #2007 pc 25688
	lw	%x1, 160(%x2)  #2007 pc 25692
	addi	%x7, %x0, 4  #0 pc 25696
	lw	%x6, 136(%x2)  #2010 pc 25700
	sw	%x1, 160(%x2)  #2010 pc 25704
	addi	%x2, %x2, 164  #2010 pc 25708
	jal	%x1, mul.2547  #2010 pc 25712
	addi	%x2, %x2, -164  #2010 pc 25716
	lw	%x1, 160(%x2) #2010 pc 25720
	lw	%x7, 56(%x2)  #2010 pc 25724
	lw	%x7, 0(%x7)  #2010 pc 25728
	add	%x6, %x6, %x7  #2010 pc 25732
	lw	%x7, 108(%x2)  #2010 pc 25736
	slli	%x8, %x7, 2  #2010 pc 25740
	lw	%x9, 120(%x2)  #2010 pc 25744
	add	%x31, %x8, %x9  #2010 pc 25748
	sw	%x6, 0(%x31)  #2010 pc 25752
	lw	%x6, 52(%x2)  #2011 pc 25756
	sw	%x1, 160(%x2)  #2011 pc 25760
	addi	%x2, %x2, 164  #2011 pc 25764
	jal	%x1, p_intersection_points.2703  #2011 pc 25768
	addi	%x2, %x2, -164  #2011 pc 25772
	lw	%x1, 160(%x2) #2011 pc 25776
	lw	%x7, 108(%x2)  #2012 pc 25780
	slli	%x8, %x7, 2  #2012 pc 25784
	add	%x31, %x8, %x6  #2012 pc 25788
	lw	%x6, 0(%x31)  #2012 pc 25792
	lw	%x8, 64(%x2)  #2012 pc 25796
	addi	%x7, %x8, 0  #0 pc 25800
	sw	%x1, 160(%x2)  #2012 pc 25804
	addi	%x2, %x2, 164  #2012 pc 25808
	jal	%x1, veccpy.2631  #2012 pc 25812
	addi	%x2, %x2, -164  #2012 pc 25816
	lw	%x1, 160(%x2) #2012 pc 25820
	lw	%x6, 52(%x2)  #2015 pc 25824
	sw	%x1, 160(%x2)  #2015 pc 25828
	addi	%x2, %x2, 164  #2015 pc 25832
	jal	%x1, p_calc_diffuse.2707  #2015 pc 25836
	addi	%x2, %x2, -164  #2015 pc 25840
	lw	%x1, 160(%x2) #2015 pc 25844
	lw	%x7, 140(%x2)  #2016 pc 25848
	sw	%x6, 160(%x2)  #2016 pc 25852
	addi	%x6, %x7, 0  #0 pc 25856
	sw	%x1, 164(%x2)  #2016 pc 25860
	addi	%x2, %x2, 168  #2016 pc 25864
	jal	%x1, o_diffuse.2683  #2016 pc 25868
	addi	%x2, %x2, -168  #2016 pc 25872
	lw	%x1, 164(%x2) #2016 pc 25876
	fmv	%f1, l.6248  #0 pc 25880
	sw	%x1, 164(%x2)  #2016 pc 25884
	addi	%x2, %x2, 168  #2016 pc 25888
	jal	%x1, fless.2521  #2016 pc 25892
	addi	%x2, %x2, -168  #2016 pc 25896
	lw	%x1, 164(%x2) #2016 pc 25900
	beq	%x6, %x0, 12  #2016 pc 25904
	j	be_else.9443 #pc 25908
	nop #pc 25912
	addi	%x6, %x0, 1  #0 pc 25916
	lw	%x7, 108(%x2)  #2019 pc 25920
	slli	%x8, %x7, 2  #2019 pc 25924
	lw	%x9, 160(%x2)  #2019 pc 25928
	add	%x31, %x8, %x9  #2019 pc 25932
	sw	%x6, 0(%x31)  #2019 pc 25936
	lw	%x6, 52(%x2)  #2020 pc 25940
	sw	%x1, 164(%x2)  #2020 pc 25944
	addi	%x2, %x2, 168  #2020 pc 25948
	jal	%x1, p_energy.2709  #2020 pc 25952
	addi	%x2, %x2, -168  #2020 pc 25956
	lw	%x1, 164(%x2) #2020 pc 25960
	lw	%x7, 108(%x2)  #2021 pc 25964
	slli	%x8, %x7, 2  #2021 pc 25968
	add	%x31, %x8, %x6  #2021 pc 25972
	lw	%x8, 0(%x31)  #2021 pc 25976
	lw	%x9, 48(%x2)  #2021 pc 25980
	sw	%x6, 164(%x2)  #2021 pc 25984
	addi	%x7, %x9, 0  #0 pc 25988
	addi	%x6, %x8, 0  #0 pc 25992
	sw	%x1, 168(%x2)  #2021 pc 25996
	addi	%x2, %x2, 172  #2021 pc 26000
	jal	%x1, veccpy.2631  #2021 pc 26004
	addi	%x2, %x2, -172  #2021 pc 26008
	lw	%x1, 168(%x2) #2021 pc 26012
	lw	%x6, 108(%x2)  #2022 pc 26016
	slli	%x7, %x6, 2  #2022 pc 26020
	lw	%x8, 164(%x2)  #2022 pc 26024
	add	%x31, %x7, %x8  #2022 pc 26028
	lw	%x7, 0(%x31)  #2022 pc 26032
	fmv	%f0, l.6814  #0 pc 26036
	flw	%f1, 152(%x2)  #2022 pc 26040
	fmul	%f0, %f0, %f1  #2022 pc 26044
	addi	%x6, %x7, 0  #0 pc 26048
	sw	%x1, 168(%x2)  #2022 pc 26052
	addi	%x2, %x2, 172  #2022 pc 26056
	jal	%x1, vecscale.2652  #2022 pc 26060
	addi	%x2, %x2, -172  #2022 pc 26064
	lw	%x1, 168(%x2) #2022 pc 26068
	lw	%x6, 52(%x2)  #2023 pc 26072
	sw	%x1, 168(%x2)  #2023 pc 26076
	addi	%x2, %x2, 172  #2023 pc 26080
	jal	%x1, p_nvectors.2718  #2023 pc 26084
	addi	%x2, %x2, -172  #2023 pc 26088
	lw	%x1, 168(%x2) #2023 pc 26092
	lw	%x7, 108(%x2)  #2024 pc 26096
	slli	%x8, %x7, 2  #2024 pc 26100
	add	%x31, %x8, %x6  #2024 pc 26104
	lw	%x6, 0(%x31)  #2024 pc 26108
	lw	%x8, 44(%x2)  #2024 pc 26112
	addi	%x7, %x8, 0  #0 pc 26116
	sw	%x1, 168(%x2)  #2024 pc 26120
	addi	%x2, %x2, 172  #2024 pc 26124
	jal	%x1, veccpy.2631  #2024 pc 26128
	addi	%x2, %x2, -172  #2024 pc 26132
	lw	%x1, 168(%x2) #2024 pc 26136
	j	be_cont.9444 #pc 26140
	nop #pc 26144
be_else.9443: #pc 26148
	addi	%x6, %x0, 0  #0 pc 26148
	lw	%x7, 108(%x2)  #2017 pc 26152
	slli	%x8, %x7, 2  #2017 pc 26156
	lw	%x9, 160(%x2)  #2017 pc 26160
	add	%x31, %x8, %x9  #2017 pc 26164
	sw	%x6, 0(%x31)  #2017 pc 26168
be_cont.9444: #pc 26172
	fmv	%f0, l.6817  #0 pc 26172
	lw	%x6, 112(%x2)  #2027 pc 26176
	lw	%x7, 44(%x2)  #2027 pc 26180
	fsw	%f0, 168(%x2)  #2027 pc 26184
	sw	%x1, 176(%x2)  #2027 pc 26188
	addi	%x2, %x2, 180  #2027 pc 26192
	jal	%x1, veciprod.2637  #2027 pc 26196
	addi	%x2, %x2, -180  #2027 pc 26200
	lw	%x1, 176(%x2) #2027 pc 26204
	flw	%f1, 168(%x2)  #2027 pc 26208
	fmul	%f0, %f1, %f0  #2027 pc 26212
	lw	%x6, 112(%x2)  #2029 pc 26216
	lw	%x7, 44(%x2)  #2029 pc 26220
	sw	%x1, 176(%x2)  #2029 pc 26224
	addi	%x2, %x2, 180  #2029 pc 26228
	jal	%x1, vecaccum.2645  #2029 pc 26232
	addi	%x2, %x2, -180  #2029 pc 26236
	lw	%x1, 176(%x2) #2029 pc 26240
	lw	%x6, 140(%x2)  #2031 pc 26244
	sw	%x1, 176(%x2)  #2031 pc 26248
	addi	%x2, %x2, 180  #2031 pc 26252
	jal	%x1, o_hilight.2685  #2031 pc 26256
	addi	%x2, %x2, -180  #2031 pc 26260
	lw	%x1, 176(%x2) #2031 pc 26264
	flw	%f1, 96(%x2)  #2031 pc 26268
	fmul	%f0, %f1, %f0  #2031 pc 26272
	addi	%x6, %x0, 0  #0 pc 26276
	lw	%x7, 40(%x2)  #2034 pc 26280
	lw	%x7, 0(%x7)  #2034 pc 26284
	lw	%x29, 36(%x2)  #2034 pc 26288
	fsw	%f0, 176(%x2)  #2034 pc 26292
	sw	%x1, 184(%x2)  #2034 pc 26296
	lw	%x30, 0(%x29)  #2034 pc 26300
	addi	%x2, %x2, 188  #2034 pc 26304
	jalr	%x1, %x30, 0  #2034 pc 26308
	addi	%x2, %x2, -188  #2034 pc 26312
	lw	%x1, 184(%x2)  #2034 pc 26316
	beq	%x6, %x0, 12  #2034 pc 26320
	j	be_else.9445 #pc 26324
	nop #pc 26328
	lw	%x6, 44(%x2)  #2035 pc 26332
	lw	%x7, 104(%x2)  #2035 pc 26336
	sw	%x1, 184(%x2)  #2035 pc 26340
	addi	%x2, %x2, 188  #2035 pc 26344
	jal	%x1, veciprod.2637  #2035 pc 26348
	addi	%x2, %x2, -188  #2035 pc 26352
	lw	%x1, 184(%x2) #2035 pc 26356
	sw	%x1, 184(%x2)  #2035 pc 26360
	addi	%x2, %x2, 188  #2035 pc 26364
	jal	%x1, fneg.2515  #2035 pc 26368
	addi	%x2, %x2, -188  #2035 pc 26372
	lw	%x1, 184(%x2) #2035 pc 26376
	flw	%f1, 152(%x2)  #2035 pc 26380
	fmul	%f0, %f0, %f1  #2035 pc 26384
	lw	%x6, 112(%x2)  #2036 pc 26388
	lw	%x7, 104(%x2)  #2036 pc 26392
	fsw	%f0, 184(%x2)  #2036 pc 26396
	sw	%x1, 192(%x2)  #2036 pc 26400
	addi	%x2, %x2, 196  #2036 pc 26404
	jal	%x1, veciprod.2637  #2036 pc 26408
	addi	%x2, %x2, -196  #2036 pc 26412
	lw	%x1, 192(%x2) #2036 pc 26416
	sw	%x1, 192(%x2)  #2036 pc 26420
	addi	%x2, %x2, 196  #2036 pc 26424
	jal	%x1, fneg.2515  #2036 pc 26428
	addi	%x2, %x2, -196  #2036 pc 26432
	lw	%x1, 192(%x2) #2036 pc 26436
	fadd	%f1, %f0, %f30  #2036 pc 26440
	flw	%f0, 184(%x2)  #2037 pc 26444
	flw	%f2, 176(%x2)  #2037 pc 26448
	lw	%x29, 32(%x2)  #2037 pc 26452
	sw	%x1, 192(%x2)  #2037 pc 26456
	lw	%x30, 0(%x29)  #2037 pc 26460
	addi	%x2, %x2, 196  #2037 pc 26464
	jalr	%x1, %x30, 0  #2037 pc 26468
	addi	%x2, %x2, -196  #2037 pc 26472
	lw	%x1, 192(%x2)  #2037 pc 26476
	j	be_cont.9446 #pc 26480
	nop #pc 26484
be_else.9445: #pc 26488
be_cont.9446: #pc 26488
	lw	%x6, 64(%x2)  #2041 pc 26488
	lw	%x29, 28(%x2)  #2041 pc 26492
	sw	%x1, 192(%x2)  #2041 pc 26496
	lw	%x30, 0(%x29)  #2041 pc 26500
	addi	%x2, %x2, 196  #2041 pc 26504
	jalr	%x1, %x30, 0  #2041 pc 26508
	addi	%x2, %x2, -196  #2041 pc 26512
	lw	%x1, 192(%x2)  #2041 pc 26516
	lw	%x6, 24(%x2)  #2042 pc 26520
	lw	%x6, 0(%x6)  #2042 pc 26524
	addi	%x6, %x6, -1  #2042 pc 26528
	flw	%f0, 152(%x2)  #2042 pc 26532
	flw	%f1, 176(%x2)  #2042 pc 26536
	lw	%x7, 112(%x2)  #2042 pc 26540
	lw	%x29, 20(%x2)  #2042 pc 26544
	sw	%x1, 192(%x2)  #2042 pc 26548
	lw	%x30, 0(%x29)  #2042 pc 26552
	addi	%x2, %x2, 196  #2042 pc 26556
	jalr	%x1, %x30, 0  #2042 pc 26560
	addi	%x2, %x2, -196  #2042 pc 26564
	lw	%x1, 192(%x2)  #2042 pc 26568
	fmv	%f0, l.6821  #0 pc 26572
	flw	%f1, 96(%x2)  #2045 pc 26576
	sw	%x1, 192(%x2)  #2045 pc 26580
	addi	%x2, %x2, 196  #2045 pc 26584
	jal	%x1, fless.2521  #2045 pc 26588
	addi	%x2, %x2, -196  #2045 pc 26592
	lw	%x1, 192(%x2) #2045 pc 26596
	beq	%x6, %x0, 12  #2045 pc 26600
	j	be_else.9447 #pc 26604
	nop #pc 26608
	ret #pc 26612
	nop #pc 26616
be_else.9447: #pc 26620
	lw	%x6, 108(%x2)  #2047 pc 26620
	addi	%x31, %x0, 4  #pc 26624
	bge	%x6, %x31, 12  #2047 pc 26628
	j	bge_else.9449 #pc 26632
	nop #pc 26636
	j	bge_cont.9450 #pc 26640
	nop #pc 26644
bge_else.9449: #pc 26648
	addi	%x7, %x6, 1  #2048 pc 26648
	addi	%x8, %x0, -1  #0 pc 26652
	slli	%x7, %x7, 2  #2048 pc 26656
	lw	%x9, 120(%x2)  #2048 pc 26660
	add	%x31, %x7, %x9  #2048 pc 26664
	sw	%x8, 0(%x31)  #2048 pc 26668
bge_cont.9450: #pc 26672
	lw	%x7, 144(%x2)  #2051 pc 26672
	addi	%x31, %x0, 2  #pc 26676
	beq	%x7, %x31, 12  #2051 pc 26680
	j	be_else.9451 #pc 26684
	nop #pc 26688
	fmv	%f0, l.6263  #0 pc 26692
	lw	%x7, 140(%x2)  #2052 pc 26696
	fsw	%f0, 192(%x2)  #2052 pc 26700
	addi	%x6, %x7, 0  #0 pc 26704
	sw	%x1, 200(%x2)  #2052 pc 26708
	addi	%x2, %x2, 204  #2052 pc 26712
	jal	%x1, o_diffuse.2683  #2052 pc 26716
	addi	%x2, %x2, -204  #2052 pc 26720
	lw	%x1, 200(%x2) #2052 pc 26724
	flw	%f1, 192(%x2)  #2052 pc 26728
	fsub	%f0, %f1, %f0  #2052 pc 26732
	flw	%f1, 96(%x2)  #2052 pc 26736
	fmul	%f0, %f1, %f0  #2052 pc 26740
	lw	%x6, 108(%x2)  #2053 pc 26744
	addi	%x6, %x6, 1  #2053 pc 26748
	lw	%x7, 16(%x2)  #2053 pc 26752
	flw	%f1, 0(%x7)  #2053 pc 26756
	flw	%f2, 8(%x2)  #2053 pc 26760
	fadd	%f1, %f2, %f1  #2053 pc 26764
	lw	%x7, 112(%x2)  #2053 pc 26768
	lw	%x8, 52(%x2)  #2053 pc 26772
	lw	%x29, 0(%x2)  #2053 pc 26776
	lw	%x30, 0(%x29)  #2053 pc 26780
	jalr	%x0, %x30, 0  #2053 pc 26784
	nop #pc 26788
be_else.9451: #pc 26792
	ret #pc 26792
	nop #pc 26796
ble_else.9432: #pc 26800
	ret #pc 26800
	nop #pc 26804
trace_diffuse_ray.2946:  #pc 26808
	lw	%x7, 48(%x29)  #0 pc 26808
	lw	%x8, 44(%x29)  #0 pc 26812
	lw	%x9, 40(%x29)  #0 pc 26816
	lw	%x10, 36(%x29)  #0 pc 26820
	lw	%x11, 32(%x29)  #0 pc 26824
	lw	%x12, 28(%x29)  #0 pc 26828
	lw	%x13, 24(%x29)  #0 pc 26832
	lw	%x14, 20(%x29)  #0 pc 26836
	lw	%x15, 16(%x29)  #0 pc 26840
	lw	%x16, 12(%x29)  #0 pc 26844
	lw	%x17, 8(%x29)  #0 pc 26848
	lw	%x18, 4(%x29)  #0 pc 26852
	sw	%x8, 0(%x2)  #2091 pc 26856
	sw	%x18, 4(%x2)  #2091 pc 26860
	fsw	%f0, 8(%x2)  #2091 pc 26864
	sw	%x13, 16(%x2)  #2091 pc 26868
	sw	%x12, 20(%x2)  #2091 pc 26872
	sw	%x9, 24(%x2)  #2091 pc 26876
	sw	%x10, 28(%x2)  #2091 pc 26880
	sw	%x15, 32(%x2)  #2091 pc 26884
	sw	%x7, 36(%x2)  #2091 pc 26888
	sw	%x17, 40(%x2)  #2091 pc 26892
	sw	%x6, 44(%x2)  #2091 pc 26896
	sw	%x11, 48(%x2)  #2091 pc 26900
	sw	%x16, 52(%x2)  #2091 pc 26904
	addi	%x29, %x14, 0  #0 pc 26908
	sw	%x1, 56(%x2)  #2091 pc 26912
	lw	%x30, 0(%x29)  #2091 pc 26916
	addi	%x2, %x2, 60  #2091 pc 26920
	jalr	%x1, %x30, 0  #2091 pc 26924
	addi	%x2, %x2, -60  #2091 pc 26928
	lw	%x1, 56(%x2)  #2091 pc 26932
	beq	%x6, %x0, 12  #2091 pc 26936
	j	be_else.9454 #pc 26940
	nop #pc 26944
	ret #pc 26948
	nop #pc 26952
be_else.9454: #pc 26956
	lw	%x6, 52(%x2)  #2092 pc 26956
	lw	%x6, 0(%x6)  #2092 pc 26960
	slli	%x6, %x6, 2  #2092 pc 26964
	lw	%x7, 48(%x2)  #2092 pc 26968
	add	%x31, %x6, %x7  #2092 pc 26972
	lw	%x6, 0(%x31)  #2092 pc 26976
	lw	%x7, 44(%x2)  #2093 pc 26980
	sw	%x6, 56(%x2)  #2093 pc 26984
	addi	%x6, %x7, 0  #0 pc 26988
	sw	%x1, 60(%x2)  #2093 pc 26992
	addi	%x2, %x2, 64  #2093 pc 26996
	jal	%x1, d_vec.2720  #2093 pc 27000
	addi	%x2, %x2, -64  #2093 pc 27004
	lw	%x1, 60(%x2) #2093 pc 27008
	addi	%x7, %x6, 0  #2093 pc 27012
	lw	%x6, 56(%x2)  #2093 pc 27016
	lw	%x29, 40(%x2)  #2093 pc 27020
	sw	%x1, 60(%x2)  #2093 pc 27024
	lw	%x30, 0(%x29)  #2093 pc 27028
	addi	%x2, %x2, 64  #2093 pc 27032
	jalr	%x1, %x30, 0  #2093 pc 27036
	addi	%x2, %x2, -64  #2093 pc 27040
	lw	%x1, 60(%x2)  #2093 pc 27044
	lw	%x6, 56(%x2)  #2094 pc 27048
	lw	%x7, 32(%x2)  #2094 pc 27052
	lw	%x29, 36(%x2)  #2094 pc 27056
	sw	%x1, 60(%x2)  #2094 pc 27060
	lw	%x30, 0(%x29)  #2094 pc 27064
	addi	%x2, %x2, 64  #2094 pc 27068
	jalr	%x1, %x30, 0  #2094 pc 27072
	addi	%x2, %x2, -64  #2094 pc 27076
	lw	%x1, 60(%x2)  #2094 pc 27080
	addi	%x6, %x0, 0  #0 pc 27084
	lw	%x7, 28(%x2)  #2097 pc 27088
	lw	%x7, 0(%x7)  #2097 pc 27092
	lw	%x29, 24(%x2)  #2097 pc 27096
	sw	%x1, 60(%x2)  #2097 pc 27100
	lw	%x30, 0(%x29)  #2097 pc 27104
	addi	%x2, %x2, 64  #2097 pc 27108
	jalr	%x1, %x30, 0  #2097 pc 27112
	addi	%x2, %x2, -64  #2097 pc 27116
	lw	%x1, 60(%x2)  #2097 pc 27120
	beq	%x6, %x0, 12  #2097 pc 27124
	j	be_else.9456 #pc 27128
	nop #pc 27132
	lw	%x6, 20(%x2)  #2098 pc 27136
	lw	%x7, 16(%x2)  #2098 pc 27140
	sw	%x1, 60(%x2)  #2098 pc 27144
	addi	%x2, %x2, 64  #2098 pc 27148
	jal	%x1, veciprod.2637  #2098 pc 27152
	addi	%x2, %x2, -64  #2098 pc 27156
	lw	%x1, 60(%x2) #2098 pc 27160
	sw	%x1, 60(%x2)  #2098 pc 27164
	addi	%x2, %x2, 64  #2098 pc 27168
	jal	%x1, fneg.2515  #2098 pc 27172
	addi	%x2, %x2, -64  #2098 pc 27176
	lw	%x1, 60(%x2) #2098 pc 27180
	fsw	%f0, 64(%x2)  #2099 pc 27184
	sw	%x1, 72(%x2)  #2099 pc 27188
	addi	%x2, %x2, 76  #2099 pc 27192
	jal	%x1, fispos.2511  #2099 pc 27196
	addi	%x2, %x2, -76  #2099 pc 27200
	lw	%x1, 72(%x2) #2099 pc 27204
	beq	%x6, %x0, 12  #2099 pc 27208
	j	be_else.9458 #pc 27212
	nop #pc 27216
	fmv	%f0, l.6244  #0 pc 27220
	j	be_cont.9459 #pc 27224
	nop #pc 27228
be_else.9458: #pc 27232
	flw	%f0, 64(%x2)  #2099 pc 27232
be_cont.9459: #pc 27236
	flw	%f1, 8(%x2)  #2100 pc 27236
	fmul	%f0, %f1, %f0  #2100 pc 27240
	lw	%x6, 56(%x2)  #2100 pc 27244
	fsw	%f0, 72(%x2)  #2100 pc 27248
	sw	%x1, 80(%x2)  #2100 pc 27252
	addi	%x2, %x2, 84  #2100 pc 27256
	jal	%x1, o_diffuse.2683  #2100 pc 27260
	addi	%x2, %x2, -84  #2100 pc 27264
	lw	%x1, 80(%x2) #2100 pc 27268
	flw	%f1, 72(%x2)  #2100 pc 27272
	fmul	%f0, %f1, %f0  #2100 pc 27276
	lw	%x6, 4(%x2)  #2100 pc 27280
	lw	%x7, 0(%x2)  #2100 pc 27284
	j	vecaccum.2645  #2100 pc 27288
	nop #pc 27292
be_else.9456: #pc 27296
	ret #pc 27296
	nop #pc 27300
iter_trace_diffuse_rays.2949:  #pc 27304
	lw	%x10, 4(%x29)  #0 pc 27304
	bge	%x9, %x0, 12  #2108 pc 27308
	j	bge_else.9461 #pc 27312
	nop #pc 27316
	slli	%x11, %x9, 2  #2109 pc 27320
	add	%x31, %x11, %x6  #2109 pc 27324
	lw	%x11, 0(%x31)  #2109 pc 27328
	sw	%x8, 0(%x2)  #2109 pc 27332
	sw	%x29, 4(%x2)  #2109 pc 27336
	sw	%x10, 8(%x2)  #2109 pc 27340
	sw	%x6, 12(%x2)  #2109 pc 27344
	sw	%x9, 16(%x2)  #2109 pc 27348
	sw	%x7, 20(%x2)  #2109 pc 27352
	addi	%x6, %x11, 0  #0 pc 27356
	sw	%x1, 24(%x2)  #2109 pc 27360
	addi	%x2, %x2, 28  #2109 pc 27364
	jal	%x1, d_vec.2720  #2109 pc 27368
	addi	%x2, %x2, -28  #2109 pc 27372
	lw	%x1, 24(%x2) #2109 pc 27376
	lw	%x7, 20(%x2)  #2109 pc 27380
	sw	%x1, 24(%x2)  #2109 pc 27384
	addi	%x2, %x2, 28  #2109 pc 27388
	jal	%x1, veciprod.2637  #2109 pc 27392
	addi	%x2, %x2, -28  #2109 pc 27396
	lw	%x1, 24(%x2) #2109 pc 27400
	fsw	%f0, 24(%x2)  #2113 pc 27404
	sw	%x1, 32(%x2)  #2113 pc 27408
	addi	%x2, %x2, 36  #2113 pc 27412
	jal	%x1, fisneg.2513  #2113 pc 27416
	addi	%x2, %x2, -36  #2113 pc 27420
	lw	%x1, 32(%x2) #2113 pc 27424
	beq	%x6, %x0, 12  #2113 pc 27428
	j	be_else.9462 #pc 27432
	nop #pc 27436
	lw	%x6, 16(%x2)  #2116 pc 27440
	slli	%x7, %x6, 2  #2116 pc 27444
	lw	%x8, 12(%x2)  #2116 pc 27448
	add	%x31, %x7, %x8  #2116 pc 27452
	lw	%x7, 0(%x31)  #2116 pc 27456
	fmv	%f0, l.6843  #0 pc 27460
	flw	%f1, 24(%x2)  #2116 pc 27464
	fdiv	%f0, %f1, %f0  #2116 pc 27468
	lw	%x29, 8(%x2)  #2116 pc 27472
	addi	%x6, %x7, 0  #0 pc 27476
	sw	%x1, 32(%x2)  #2116 pc 27480
	lw	%x30, 0(%x29)  #2116 pc 27484
	addi	%x2, %x2, 36  #2116 pc 27488
	jalr	%x1, %x30, 0  #2116 pc 27492
	addi	%x2, %x2, -36  #2116 pc 27496
	lw	%x1, 32(%x2)  #2116 pc 27500
	j	be_cont.9463 #pc 27504
	nop #pc 27508
be_else.9462: #pc 27512
	lw	%x6, 16(%x2)  #2114 pc 27512
	addi	%x7, %x6, 1  #2114 pc 27516
	slli	%x7, %x7, 2  #2114 pc 27520
	lw	%x8, 12(%x2)  #2114 pc 27524
	add	%x31, %x7, %x8  #2114 pc 27528
	lw	%x7, 0(%x31)  #2114 pc 27532
	fmv	%f0, l.6840  #0 pc 27536
	flw	%f1, 24(%x2)  #2114 pc 27540
	fdiv	%f0, %f1, %f0  #2114 pc 27544
	lw	%x29, 8(%x2)  #2114 pc 27548
	addi	%x6, %x7, 0  #0 pc 27552
	sw	%x1, 32(%x2)  #2114 pc 27556
	lw	%x30, 0(%x29)  #2114 pc 27560
	addi	%x2, %x2, 36  #2114 pc 27564
	jalr	%x1, %x30, 0  #2114 pc 27568
	addi	%x2, %x2, -36  #2114 pc 27572
	lw	%x1, 32(%x2)  #2114 pc 27576
be_cont.9463: #pc 27580
	lw	%x6, 16(%x2)  #2118 pc 27580
	addi	%x9, %x6, -2  #2118 pc 27584
	lw	%x6, 12(%x2)  #2118 pc 27588
	lw	%x7, 20(%x2)  #2118 pc 27592
	lw	%x8, 0(%x2)  #2118 pc 27596
	lw	%x29, 4(%x2)  #2118 pc 27600
	lw	%x30, 0(%x29)  #2118 pc 27604
	jalr	%x0, %x30, 0  #2118 pc 27608
	nop #pc 27612
bge_else.9461: #pc 27616
	ret #pc 27616
	nop #pc 27620
trace_diffuse_rays.2954:  #pc 27624
	lw	%x9, 8(%x29)  #2124 pc 27624
	lw	%x10, 4(%x29)  #2124 pc 27628
	sw	%x8, 0(%x2)  #2124 pc 27632
	sw	%x7, 4(%x2)  #2124 pc 27636
	sw	%x6, 8(%x2)  #2124 pc 27640
	sw	%x10, 12(%x2)  #2124 pc 27644
	addi	%x6, %x8, 0  #0 pc 27648
	addi	%x29, %x9, 0  #0 pc 27652
	sw	%x1, 16(%x2)  #2124 pc 27656
	lw	%x30, 0(%x29)  #2124 pc 27660
	addi	%x2, %x2, 20  #2124 pc 27664
	jalr	%x1, %x30, 0  #2124 pc 27668
	addi	%x2, %x2, -20  #2124 pc 27672
	lw	%x1, 16(%x2)  #2124 pc 27676
	addi	%x9, %x0, 118  #0 pc 27680
	lw	%x6, 8(%x2)  #2128 pc 27684
	lw	%x7, 4(%x2)  #2128 pc 27688
	lw	%x8, 0(%x2)  #2128 pc 27692
	lw	%x29, 12(%x2)  #2128 pc 27696
	lw	%x30, 0(%x29)  #2128 pc 27700
	jalr	%x0, %x30, 0  #2128 pc 27704
	nop #pc 27708
trace_diffuse_ray_80percent.2958:  #pc 27712
	lw	%x9, 8(%x29)  #0 pc 27712
	lw	%x10, 4(%x29)  #0 pc 27716
	sw	%x8, 0(%x2)  #2135 pc 27720
	sw	%x7, 4(%x2)  #2135 pc 27724
	sw	%x9, 8(%x2)  #2135 pc 27728
	sw	%x10, 12(%x2)  #2135 pc 27732
	sw	%x6, 16(%x2)  #2135 pc 27736
	beq	%x6, %x0, 12  #2135 pc 27740
	j	be_else.9465 #pc 27744
	nop #pc 27748
	j	be_cont.9466 #pc 27752
	nop #pc 27756
be_else.9465: #pc 27760
	lw	%x11, 0(%x10)  #2136 pc 27760
	addi	%x6, %x11, 0  #0 pc 27764
	addi	%x29, %x9, 0  #0 pc 27768
	sw	%x1, 20(%x2)  #2136 pc 27772
	lw	%x30, 0(%x29)  #2136 pc 27776
	addi	%x2, %x2, 24  #2136 pc 27780
	jalr	%x1, %x30, 0  #2136 pc 27784
	addi	%x2, %x2, -24  #2136 pc 27788
	lw	%x1, 20(%x2)  #2136 pc 27792
be_cont.9466: #pc 27796
	lw	%x6, 16(%x2)  #2139 pc 27796
	addi	%x31, %x0, 1  #pc 27800
	beq	%x6, %x31, 12  #2139 pc 27804
	j	be_else.9467 #pc 27808
	nop #pc 27812
	j	be_cont.9468 #pc 27816
	nop #pc 27820
be_else.9467: #pc 27824
	lw	%x7, 12(%x2)  #2140 pc 27824
	lw	%x8, 4(%x7)  #2140 pc 27828
	lw	%x9, 4(%x2)  #2140 pc 27832
	lw	%x10, 0(%x2)  #2140 pc 27836
	lw	%x29, 8(%x2)  #2140 pc 27840
	addi	%x7, %x9, 0  #0 pc 27844
	addi	%x6, %x8, 0  #0 pc 27848
	addi	%x8, %x10, 0  #0 pc 27852
	sw	%x1, 20(%x2)  #2140 pc 27856
	lw	%x30, 0(%x29)  #2140 pc 27860
	addi	%x2, %x2, 24  #2140 pc 27864
	jalr	%x1, %x30, 0  #2140 pc 27868
	addi	%x2, %x2, -24  #2140 pc 27872
	lw	%x1, 20(%x2)  #2140 pc 27876
be_cont.9468: #pc 27880
	lw	%x6, 16(%x2)  #2143 pc 27880
	addi	%x31, %x0, 2  #pc 27884
	beq	%x6, %x31, 12  #2143 pc 27888
	j	be_else.9469 #pc 27892
	nop #pc 27896
	j	be_cont.9470 #pc 27900
	nop #pc 27904
be_else.9469: #pc 27908
	lw	%x7, 12(%x2)  #2144 pc 27908
	lw	%x8, 8(%x7)  #2144 pc 27912
	lw	%x9, 4(%x2)  #2144 pc 27916
	lw	%x10, 0(%x2)  #2144 pc 27920
	lw	%x29, 8(%x2)  #2144 pc 27924
	addi	%x7, %x9, 0  #0 pc 27928
	addi	%x6, %x8, 0  #0 pc 27932
	addi	%x8, %x10, 0  #0 pc 27936
	sw	%x1, 20(%x2)  #2144 pc 27940
	lw	%x30, 0(%x29)  #2144 pc 27944
	addi	%x2, %x2, 24  #2144 pc 27948
	jalr	%x1, %x30, 0  #2144 pc 27952
	addi	%x2, %x2, -24  #2144 pc 27956
	lw	%x1, 20(%x2)  #2144 pc 27960
be_cont.9470: #pc 27964
	lw	%x6, 16(%x2)  #2147 pc 27964
	addi	%x31, %x0, 3  #pc 27968
	beq	%x6, %x31, 12  #2147 pc 27972
	j	be_else.9471 #pc 27976
	nop #pc 27980
	j	be_cont.9472 #pc 27984
	nop #pc 27988
be_else.9471: #pc 27992
	lw	%x7, 12(%x2)  #2148 pc 27992
	lw	%x8, 12(%x7)  #2148 pc 27996
	lw	%x9, 4(%x2)  #2148 pc 28000
	lw	%x10, 0(%x2)  #2148 pc 28004
	lw	%x29, 8(%x2)  #2148 pc 28008
	addi	%x7, %x9, 0  #0 pc 28012
	addi	%x6, %x8, 0  #0 pc 28016
	addi	%x8, %x10, 0  #0 pc 28020
	sw	%x1, 20(%x2)  #2148 pc 28024
	lw	%x30, 0(%x29)  #2148 pc 28028
	addi	%x2, %x2, 24  #2148 pc 28032
	jalr	%x1, %x30, 0  #2148 pc 28036
	addi	%x2, %x2, -24  #2148 pc 28040
	lw	%x1, 20(%x2)  #2148 pc 28044
be_cont.9472: #pc 28048
	lw	%x6, 16(%x2)  #2151 pc 28048
	addi	%x31, %x0, 4  #pc 28052
	beq	%x6, %x31, 12  #2151 pc 28056
	j	be_else.9473 #pc 28060
	nop #pc 28064
	ret #pc 28068
	nop #pc 28072
be_else.9473: #pc 28076
	lw	%x6, 12(%x2)  #2152 pc 28076
	lw	%x6, 16(%x6)  #2152 pc 28080
	lw	%x7, 4(%x2)  #2152 pc 28084
	lw	%x8, 0(%x2)  #2152 pc 28088
	lw	%x29, 8(%x2)  #2152 pc 28092
	lw	%x30, 0(%x29)  #2152 pc 28096
	jalr	%x0, %x30, 0  #2152 pc 28100
	nop #pc 28104
calc_diffuse_using_1point.2962:  #pc 28108
	lw	%x8, 12(%x29)  #2161 pc 28108
	lw	%x9, 8(%x29)  #2161 pc 28112
	lw	%x10, 4(%x29)  #2161 pc 28116
	sw	%x9, 0(%x2)  #2161 pc 28120
	sw	%x8, 4(%x2)  #2161 pc 28124
	sw	%x10, 8(%x2)  #2161 pc 28128
	sw	%x7, 12(%x2)  #2161 pc 28132
	sw	%x6, 16(%x2)  #2161 pc 28136
	sw	%x1, 20(%x2)  #2161 pc 28140
	addi	%x2, %x2, 24  #2161 pc 28144
	jal	%x1, p_received_ray_20percent.2711  #2161 pc 28148
	addi	%x2, %x2, -24  #2161 pc 28152
	lw	%x1, 20(%x2) #2161 pc 28156
	lw	%x7, 16(%x2)  #2162 pc 28160
	sw	%x6, 20(%x2)  #2162 pc 28164
	addi	%x6, %x7, 0  #0 pc 28168
	sw	%x1, 24(%x2)  #2162 pc 28172
	addi	%x2, %x2, 28  #2162 pc 28176
	jal	%x1, p_nvectors.2718  #2162 pc 28180
	addi	%x2, %x2, -28  #2162 pc 28184
	lw	%x1, 24(%x2) #2162 pc 28188
	lw	%x7, 16(%x2)  #2163 pc 28192
	sw	%x6, 24(%x2)  #2163 pc 28196
	addi	%x6, %x7, 0  #0 pc 28200
	sw	%x1, 28(%x2)  #2163 pc 28204
	addi	%x2, %x2, 32  #2163 pc 28208
	jal	%x1, p_intersection_points.2703  #2163 pc 28212
	addi	%x2, %x2, -32  #2163 pc 28216
	lw	%x1, 28(%x2) #2163 pc 28220
	lw	%x7, 16(%x2)  #2164 pc 28224
	sw	%x6, 28(%x2)  #2164 pc 28228
	addi	%x6, %x7, 0  #0 pc 28232
	sw	%x1, 32(%x2)  #2164 pc 28236
	addi	%x2, %x2, 36  #2164 pc 28240
	jal	%x1, p_energy.2709  #2164 pc 28244
	addi	%x2, %x2, -36  #2164 pc 28248
	lw	%x1, 32(%x2) #2164 pc 28252
	lw	%x7, 12(%x2)  #2166 pc 28256
	slli	%x8, %x7, 2  #2166 pc 28260
	lw	%x9, 20(%x2)  #2166 pc 28264
	add	%x31, %x8, %x9  #2166 pc 28268
	lw	%x8, 0(%x31)  #2166 pc 28272
	lw	%x9, 8(%x2)  #2166 pc 28276
	sw	%x6, 32(%x2)  #2166 pc 28280
	addi	%x7, %x8, 0  #0 pc 28284
	addi	%x6, %x9, 0  #0 pc 28288
	sw	%x1, 36(%x2)  #2166 pc 28292
	addi	%x2, %x2, 40  #2166 pc 28296
	jal	%x1, veccpy.2631  #2166 pc 28300
	addi	%x2, %x2, -40  #2166 pc 28304
	lw	%x1, 36(%x2) #2166 pc 28308
	lw	%x6, 16(%x2)  #2168 pc 28312
	sw	%x1, 36(%x2)  #2168 pc 28316
	addi	%x2, %x2, 40  #2168 pc 28320
	jal	%x1, p_group_id.2713  #2168 pc 28324
	addi	%x2, %x2, -40  #2168 pc 28328
	lw	%x1, 36(%x2) #2168 pc 28332
	lw	%x7, 12(%x2)  #2169 pc 28336
	slli	%x8, %x7, 2  #2169 pc 28340
	lw	%x9, 24(%x2)  #2169 pc 28344
	add	%x31, %x8, %x9  #2169 pc 28348
	lw	%x8, 0(%x31)  #2169 pc 28352
	slli	%x9, %x7, 2  #2170 pc 28356
	lw	%x10, 28(%x2)  #2170 pc 28360
	add	%x31, %x9, %x10  #2170 pc 28364
	lw	%x9, 0(%x31)  #2170 pc 28368
	lw	%x29, 4(%x2)  #2167 pc 28372
	addi	%x7, %x8, 0  #0 pc 28376
	addi	%x8, %x9, 0  #0 pc 28380
	sw	%x1, 36(%x2)  #2167 pc 28384
	lw	%x30, 0(%x29)  #2167 pc 28388
	addi	%x2, %x2, 40  #2167 pc 28392
	jalr	%x1, %x30, 0  #2167 pc 28396
	addi	%x2, %x2, -40  #2167 pc 28400
	lw	%x1, 36(%x2)  #2167 pc 28404
	lw	%x6, 12(%x2)  #2171 pc 28408
	slli	%x6, %x6, 2  #2171 pc 28412
	lw	%x7, 32(%x2)  #2171 pc 28416
	add	%x31, %x6, %x7  #2171 pc 28420
	lw	%x7, 0(%x31)  #2171 pc 28424
	lw	%x6, 0(%x2)  #2171 pc 28428
	lw	%x8, 8(%x2)  #2171 pc 28432
	j	vecaccumv.2655  #2171 pc 28436
	nop #pc 28440
calc_diffuse_using_5points.2965:  #pc 28444
	lw	%x11, 8(%x29)  #0 pc 28444
	lw	%x12, 4(%x29)  #0 pc 28448
	slli	%x13, %x6, 2  #2180 pc 28452
	add	%x31, %x13, %x7  #2180 pc 28456
	lw	%x7, 0(%x31)  #2180 pc 28460
	sw	%x11, 0(%x2)  #2180 pc 28464
	sw	%x12, 4(%x2)  #2180 pc 28468
	sw	%x10, 8(%x2)  #2180 pc 28472
	sw	%x9, 12(%x2)  #2180 pc 28476
	sw	%x8, 16(%x2)  #2180 pc 28480
	sw	%x6, 20(%x2)  #2180 pc 28484
	addi	%x6, %x7, 0  #0 pc 28488
	sw	%x1, 24(%x2)  #2180 pc 28492
	addi	%x2, %x2, 28  #2180 pc 28496
	jal	%x1, p_received_ray_20percent.2711  #2180 pc 28500
	addi	%x2, %x2, -28  #2180 pc 28504
	lw	%x1, 24(%x2) #2180 pc 28508
	lw	%x7, 20(%x2)  #2181 pc 28512
	addi	%x8, %x7, -1  #2181 pc 28516
	slli	%x8, %x8, 2  #2181 pc 28520
	lw	%x9, 16(%x2)  #2181 pc 28524
	add	%x31, %x8, %x9  #2181 pc 28528
	lw	%x8, 0(%x31)  #2181 pc 28532
	sw	%x6, 24(%x2)  #2181 pc 28536
	addi	%x6, %x8, 0  #0 pc 28540
	sw	%x1, 28(%x2)  #2181 pc 28544
	addi	%x2, %x2, 32  #2181 pc 28548
	jal	%x1, p_received_ray_20percent.2711  #2181 pc 28552
	addi	%x2, %x2, -32  #2181 pc 28556
	lw	%x1, 28(%x2) #2181 pc 28560
	lw	%x7, 20(%x2)  #2182 pc 28564
	slli	%x8, %x7, 2  #2182 pc 28568
	lw	%x9, 16(%x2)  #2182 pc 28572
	add	%x31, %x8, %x9  #2182 pc 28576
	lw	%x8, 0(%x31)  #2182 pc 28580
	sw	%x6, 28(%x2)  #2182 pc 28584
	addi	%x6, %x8, 0  #0 pc 28588
	sw	%x1, 32(%x2)  #2182 pc 28592
	addi	%x2, %x2, 36  #2182 pc 28596
	jal	%x1, p_received_ray_20percent.2711  #2182 pc 28600
	addi	%x2, %x2, -36  #2182 pc 28604
	lw	%x1, 32(%x2) #2182 pc 28608
	lw	%x7, 20(%x2)  #2183 pc 28612
	addi	%x8, %x7, 1  #2183 pc 28616
	slli	%x8, %x8, 2  #2183 pc 28620
	lw	%x9, 16(%x2)  #2183 pc 28624
	add	%x31, %x8, %x9  #2183 pc 28628
	lw	%x8, 0(%x31)  #2183 pc 28632
	sw	%x6, 32(%x2)  #2183 pc 28636
	addi	%x6, %x8, 0  #0 pc 28640
	sw	%x1, 36(%x2)  #2183 pc 28644
	addi	%x2, %x2, 40  #2183 pc 28648
	jal	%x1, p_received_ray_20percent.2711  #2183 pc 28652
	addi	%x2, %x2, -40  #2183 pc 28656
	lw	%x1, 36(%x2) #2183 pc 28660
	lw	%x7, 20(%x2)  #2184 pc 28664
	slli	%x8, %x7, 2  #2184 pc 28668
	lw	%x9, 12(%x2)  #2184 pc 28672
	add	%x31, %x8, %x9  #2184 pc 28676
	lw	%x8, 0(%x31)  #2184 pc 28680
	sw	%x6, 36(%x2)  #2184 pc 28684
	addi	%x6, %x8, 0  #0 pc 28688
	sw	%x1, 40(%x2)  #2184 pc 28692
	addi	%x2, %x2, 44  #2184 pc 28696
	jal	%x1, p_received_ray_20percent.2711  #2184 pc 28700
	addi	%x2, %x2, -44  #2184 pc 28704
	lw	%x1, 40(%x2) #2184 pc 28708
	lw	%x7, 8(%x2)  #2186 pc 28712
	slli	%x8, %x7, 2  #2186 pc 28716
	lw	%x9, 24(%x2)  #2186 pc 28720
	add	%x31, %x8, %x9  #2186 pc 28724
	lw	%x8, 0(%x31)  #2186 pc 28728
	lw	%x9, 4(%x2)  #2186 pc 28732
	sw	%x6, 40(%x2)  #2186 pc 28736
	addi	%x7, %x8, 0  #0 pc 28740
	addi	%x6, %x9, 0  #0 pc 28744
	sw	%x1, 44(%x2)  #2186 pc 28748
	addi	%x2, %x2, 48  #2186 pc 28752
	jal	%x1, veccpy.2631  #2186 pc 28756
	addi	%x2, %x2, -48  #2186 pc 28760
	lw	%x1, 44(%x2) #2186 pc 28764
	lw	%x6, 8(%x2)  #2187 pc 28768
	slli	%x7, %x6, 2  #2187 pc 28772
	lw	%x8, 28(%x2)  #2187 pc 28776
	add	%x31, %x7, %x8  #2187 pc 28780
	lw	%x7, 0(%x31)  #2187 pc 28784
	lw	%x8, 4(%x2)  #2187 pc 28788
	addi	%x6, %x8, 0  #0 pc 28792
	sw	%x1, 44(%x2)  #2187 pc 28796
	addi	%x2, %x2, 48  #2187 pc 28800
	jal	%x1, vecadd.2649  #2187 pc 28804
	addi	%x2, %x2, -48  #2187 pc 28808
	lw	%x1, 44(%x2) #2187 pc 28812
	lw	%x6, 8(%x2)  #2188 pc 28816
	slli	%x7, %x6, 2  #2188 pc 28820
	lw	%x8, 32(%x2)  #2188 pc 28824
	add	%x31, %x7, %x8  #2188 pc 28828
	lw	%x7, 0(%x31)  #2188 pc 28832
	lw	%x8, 4(%x2)  #2188 pc 28836
	addi	%x6, %x8, 0  #0 pc 28840
	sw	%x1, 44(%x2)  #2188 pc 28844
	addi	%x2, %x2, 48  #2188 pc 28848
	jal	%x1, vecadd.2649  #2188 pc 28852
	addi	%x2, %x2, -48  #2188 pc 28856
	lw	%x1, 44(%x2) #2188 pc 28860
	lw	%x6, 8(%x2)  #2189 pc 28864
	slli	%x7, %x6, 2  #2189 pc 28868
	lw	%x8, 36(%x2)  #2189 pc 28872
	add	%x31, %x7, %x8  #2189 pc 28876
	lw	%x7, 0(%x31)  #2189 pc 28880
	lw	%x8, 4(%x2)  #2189 pc 28884
	addi	%x6, %x8, 0  #0 pc 28888
	sw	%x1, 44(%x2)  #2189 pc 28892
	addi	%x2, %x2, 48  #2189 pc 28896
	jal	%x1, vecadd.2649  #2189 pc 28900
	addi	%x2, %x2, -48  #2189 pc 28904
	lw	%x1, 44(%x2) #2189 pc 28908
	lw	%x6, 8(%x2)  #2190 pc 28912
	slli	%x7, %x6, 2  #2190 pc 28916
	lw	%x8, 40(%x2)  #2190 pc 28920
	add	%x31, %x7, %x8  #2190 pc 28924
	lw	%x7, 0(%x31)  #2190 pc 28928
	lw	%x8, 4(%x2)  #2190 pc 28932
	addi	%x6, %x8, 0  #0 pc 28936
	sw	%x1, 44(%x2)  #2190 pc 28940
	addi	%x2, %x2, 48  #2190 pc 28944
	jal	%x1, vecadd.2649  #2190 pc 28948
	addi	%x2, %x2, -48  #2190 pc 28952
	lw	%x1, 44(%x2) #2190 pc 28956
	lw	%x6, 20(%x2)  #2192 pc 28960
	slli	%x6, %x6, 2  #2192 pc 28964
	lw	%x7, 16(%x2)  #2192 pc 28968
	add	%x31, %x6, %x7  #2192 pc 28972
	lw	%x6, 0(%x31)  #2192 pc 28976
	sw	%x1, 44(%x2)  #2192 pc 28980
	addi	%x2, %x2, 48  #2192 pc 28984
	jal	%x1, p_energy.2709  #2192 pc 28988
	addi	%x2, %x2, -48  #2192 pc 28992
	lw	%x1, 44(%x2) #2192 pc 28996
	lw	%x7, 8(%x2)  #2193 pc 29000
	slli	%x7, %x7, 2  #2193 pc 29004
	add	%x31, %x7, %x6  #2193 pc 29008
	lw	%x7, 0(%x31)  #2193 pc 29012
	lw	%x6, 0(%x2)  #2193 pc 29016
	lw	%x8, 4(%x2)  #2193 pc 29020
	j	vecaccumv.2655  #2193 pc 29024
	nop #pc 29028
do_without_neighbors.2971:  #pc 29032
	lw	%x8, 4(%x29)  #0 pc 29032
	addi	%x31, %x0, 4  #pc 29036
	bge	%x31, %x7, 12  #2199 pc 29040
	j	ble_else.9475 #pc 29044
	nop #pc 29048
	sw	%x29, 0(%x2)  #2201 pc 29052
	sw	%x8, 4(%x2)  #2201 pc 29056
	sw	%x6, 8(%x2)  #2201 pc 29060
	sw	%x7, 12(%x2)  #2201 pc 29064
	sw	%x1, 16(%x2)  #2201 pc 29068
	addi	%x2, %x2, 20  #2201 pc 29072
	jal	%x1, p_surface_ids.2705  #2201 pc 29076
	addi	%x2, %x2, -20  #2201 pc 29080
	lw	%x1, 16(%x2) #2201 pc 29084
	lw	%x7, 12(%x2)  #2202 pc 29088
	slli	%x8, %x7, 2  #2202 pc 29092
	add	%x31, %x8, %x6  #2202 pc 29096
	lw	%x6, 0(%x31)  #2202 pc 29100
	bge	%x6, %x0, 12  #2202 pc 29104
	j	bge_else.9476 #pc 29108
	nop #pc 29112
	lw	%x6, 8(%x2)  #2203 pc 29116
	sw	%x1, 16(%x2)  #2203 pc 29120
	addi	%x2, %x2, 20  #2203 pc 29124
	jal	%x1, p_calc_diffuse.2707  #2203 pc 29128
	addi	%x2, %x2, -20  #2203 pc 29132
	lw	%x1, 16(%x2) #2203 pc 29136
	lw	%x7, 12(%x2)  #2204 pc 29140
	slli	%x8, %x7, 2  #2204 pc 29144
	add	%x31, %x8, %x6  #2204 pc 29148
	lw	%x6, 0(%x31)  #2204 pc 29152
	beq	%x6, %x0, 12  #2204 pc 29156
	j	be_else.9477 #pc 29160
	nop #pc 29164
	j	be_cont.9478 #pc 29168
	nop #pc 29172
be_else.9477: #pc 29176
	lw	%x6, 8(%x2)  #2205 pc 29176
	lw	%x29, 4(%x2)  #2205 pc 29180
	sw	%x1, 16(%x2)  #2205 pc 29184
	lw	%x30, 0(%x29)  #2205 pc 29188
	addi	%x2, %x2, 20  #2205 pc 29192
	jalr	%x1, %x30, 0  #2205 pc 29196
	addi	%x2, %x2, -20  #2205 pc 29200
	lw	%x1, 16(%x2)  #2205 pc 29204
be_cont.9478: #pc 29208
	lw	%x6, 12(%x2)  #2207 pc 29208
	addi	%x7, %x6, 1  #2207 pc 29212
	lw	%x6, 8(%x2)  #2207 pc 29216
	lw	%x29, 0(%x2)  #2207 pc 29220
	lw	%x30, 0(%x29)  #2207 pc 29224
	jalr	%x0, %x30, 0  #2207 pc 29228
	nop #pc 29232
bge_else.9476: #pc 29236
	ret #pc 29236
	nop #pc 29240
ble_else.9475: #pc 29244
	ret #pc 29244
	nop #pc 29248
neighbors_exist.2974:  #pc 29252
	lw	%x8, 4(%x29)  #0 pc 29252
	lw	%x9, 4(%x8)  #2214 pc 29256
	addi	%x10, %x7, 1  #2214 pc 29260
	bge	%x10, %x9, 12  #2214 pc 29264
	j	ble_else.9481 #pc 29268
	nop #pc 29272
	addi	%x6, %x0, 0  #0 pc 29276
	ret #pc 29280
	nop #pc 29284
ble_else.9481: #pc 29288
	bge	%x0, %x7, 12  #2215 pc 29288
	j	ble_else.9482 #pc 29292
	nop #pc 29296
	addi	%x6, %x0, 0  #0 pc 29300
	ret #pc 29304
	nop #pc 29308
ble_else.9482: #pc 29312
	lw	%x7, 0(%x8)  #2216 pc 29312
	addi	%x8, %x6, 1  #2216 pc 29316
	bge	%x8, %x7, 12  #2216 pc 29320
	j	ble_else.9483 #pc 29324
	nop #pc 29328
	addi	%x6, %x0, 0  #0 pc 29332
	ret #pc 29336
	nop #pc 29340
ble_else.9483: #pc 29344
	bge	%x0, %x6, 12  #2217 pc 29344
	j	ble_else.9484 #pc 29348
	nop #pc 29352
	addi	%x6, %x0, 0  #0 pc 29356
	ret #pc 29360
	nop #pc 29364
ble_else.9484: #pc 29368
	addi	%x6, %x0, 1  #0 pc 29368
	ret #pc 29372
	nop #pc 29376
get_surface_id.2978:  #pc 29380
	sw	%x7, 0(%x2)  #2226 pc 29380
	sw	%x1, 4(%x2)  #2226 pc 29384
	addi	%x2, %x2, 8  #2226 pc 29388
	jal	%x1, p_surface_ids.2705  #2226 pc 29392
	addi	%x2, %x2, -8  #2226 pc 29396
	lw	%x1, 4(%x2) #2226 pc 29400
	lw	%x7, 0(%x2)  #2227 pc 29404
	slli	%x7, %x7, 2  #2227 pc 29408
	add	%x31, %x7, %x6  #2227 pc 29412
	lw	%x6, 0(%x31)  #2227 pc 29416
	ret #pc 29420
	nop #pc 29424
neighbors_are_available.2981:  #pc 29428
	slli	%x11, %x6, 2  #2233 pc 29428
	add	%x31, %x11, %x8  #2233 pc 29432
	lw	%x11, 0(%x31)  #2233 pc 29436
	sw	%x8, 0(%x2)  #2233 pc 29440
	sw	%x9, 4(%x2)  #2233 pc 29444
	sw	%x10, 8(%x2)  #2233 pc 29448
	sw	%x7, 12(%x2)  #2233 pc 29452
	sw	%x6, 16(%x2)  #2233 pc 29456
	addi	%x7, %x10, 0  #0 pc 29460
	addi	%x6, %x11, 0  #0 pc 29464
	sw	%x1, 20(%x2)  #2233 pc 29468
	addi	%x2, %x2, 24  #2233 pc 29472
	jal	%x1, get_surface_id.2978  #2233 pc 29476
	addi	%x2, %x2, -24  #2233 pc 29480
	lw	%x1, 20(%x2) #2233 pc 29484
	lw	%x7, 16(%x2)  #2235 pc 29488
	slli	%x8, %x7, 2  #2235 pc 29492
	lw	%x9, 12(%x2)  #2235 pc 29496
	add	%x31, %x8, %x9  #2235 pc 29500
	lw	%x8, 0(%x31)  #2235 pc 29504
	lw	%x9, 8(%x2)  #2235 pc 29508
	sw	%x6, 20(%x2)  #2235 pc 29512
	addi	%x7, %x9, 0  #0 pc 29516
	addi	%x6, %x8, 0  #0 pc 29520
	sw	%x1, 24(%x2)  #2235 pc 29524
	addi	%x2, %x2, 28  #2235 pc 29528
	jal	%x1, get_surface_id.2978  #2235 pc 29532
	addi	%x2, %x2, -28  #2235 pc 29536
	lw	%x1, 24(%x2) #2235 pc 29540
	lw	%x7, 20(%x2)  #2235 pc 29544
	beq	%x6, %x7, 12  #2235 pc 29548
	j	be_else.9485 #pc 29552
	nop #pc 29556
	lw	%x6, 16(%x2)  #2236 pc 29560
	slli	%x8, %x6, 2  #2236 pc 29564
	lw	%x9, 4(%x2)  #2236 pc 29568
	add	%x31, %x8, %x9  #2236 pc 29572
	lw	%x8, 0(%x31)  #2236 pc 29576
	lw	%x9, 8(%x2)  #2236 pc 29580
	addi	%x7, %x9, 0  #0 pc 29584
	addi	%x6, %x8, 0  #0 pc 29588
	sw	%x1, 24(%x2)  #2236 pc 29592
	addi	%x2, %x2, 28  #2236 pc 29596
	jal	%x1, get_surface_id.2978  #2236 pc 29600
	addi	%x2, %x2, -28  #2236 pc 29604
	lw	%x1, 24(%x2) #2236 pc 29608
	lw	%x7, 20(%x2)  #2236 pc 29612
	beq	%x6, %x7, 12  #2236 pc 29616
	j	be_else.9486 #pc 29620
	nop #pc 29624
	lw	%x6, 16(%x2)  #2237 pc 29628
	addi	%x8, %x6, -1  #2237 pc 29632
	slli	%x8, %x8, 2  #2237 pc 29636
	lw	%x9, 0(%x2)  #2237 pc 29640
	add	%x31, %x8, %x9  #2237 pc 29644
	lw	%x8, 0(%x31)  #2237 pc 29648
	lw	%x10, 8(%x2)  #2237 pc 29652
	addi	%x7, %x10, 0  #0 pc 29656
	addi	%x6, %x8, 0  #0 pc 29660
	sw	%x1, 24(%x2)  #2237 pc 29664
	addi	%x2, %x2, 28  #2237 pc 29668
	jal	%x1, get_surface_id.2978  #2237 pc 29672
	addi	%x2, %x2, -28  #2237 pc 29676
	lw	%x1, 24(%x2) #2237 pc 29680
	lw	%x7, 20(%x2)  #2237 pc 29684
	beq	%x6, %x7, 12  #2237 pc 29688
	j	be_else.9487 #pc 29692
	nop #pc 29696
	lw	%x6, 16(%x2)  #2238 pc 29700
	addi	%x6, %x6, 1  #2238 pc 29704
	slli	%x6, %x6, 2  #2238 pc 29708
	lw	%x8, 0(%x2)  #2238 pc 29712
	add	%x31, %x6, %x8  #2238 pc 29716
	lw	%x6, 0(%x31)  #2238 pc 29720
	lw	%x8, 8(%x2)  #2238 pc 29724
	addi	%x7, %x8, 0  #0 pc 29728
	sw	%x1, 24(%x2)  #2238 pc 29732
	addi	%x2, %x2, 28  #2238 pc 29736
	jal	%x1, get_surface_id.2978  #2238 pc 29740
	addi	%x2, %x2, -28  #2238 pc 29744
	lw	%x1, 24(%x2) #2238 pc 29748
	lw	%x7, 20(%x2)  #2238 pc 29752
	beq	%x6, %x7, 12  #2238 pc 29756
	j	be_else.9488 #pc 29760
	nop #pc 29764
	addi	%x6, %x0, 1  #0 pc 29768
	ret #pc 29772
	nop #pc 29776
be_else.9488: #pc 29780
	addi	%x6, %x0, 0  #0 pc 29780
	ret #pc 29784
	nop #pc 29788
be_else.9487: #pc 29792
	addi	%x6, %x0, 0  #0 pc 29792
	ret #pc 29796
	nop #pc 29800
be_else.9486: #pc 29804
	addi	%x6, %x0, 0  #0 pc 29804
	ret #pc 29808
	nop #pc 29812
be_else.9485: #pc 29816
	addi	%x6, %x0, 0  #0 pc 29816
	ret #pc 29820
	nop #pc 29824
try_exploit_neighbors.2987:  #pc 29828
	lw	%x12, 8(%x29)  #2251 pc 29828
	lw	%x13, 4(%x29)  #2251 pc 29832
	slli	%x14, %x6, 2  #2251 pc 29836
	add	%x31, %x14, %x9  #2251 pc 29840
	lw	%x14, 0(%x31)  #2251 pc 29844
	addi	%x31, %x0, 4  #pc 29848
	bge	%x31, %x11, 12  #2252 pc 29852
	j	ble_else.9489 #pc 29856
	nop #pc 29860
	sw	%x7, 0(%x2)  #2255 pc 29864
	sw	%x29, 4(%x2)  #2255 pc 29868
	sw	%x13, 8(%x2)  #2255 pc 29872
	sw	%x14, 12(%x2)  #2255 pc 29876
	sw	%x12, 16(%x2)  #2255 pc 29880
	sw	%x11, 20(%x2)  #2255 pc 29884
	sw	%x10, 24(%x2)  #2255 pc 29888
	sw	%x9, 28(%x2)  #2255 pc 29892
	sw	%x8, 32(%x2)  #2255 pc 29896
	sw	%x6, 36(%x2)  #2255 pc 29900
	addi	%x7, %x11, 0  #0 pc 29904
	addi	%x6, %x14, 0  #0 pc 29908
	sw	%x1, 40(%x2)  #2255 pc 29912
	addi	%x2, %x2, 44  #2255 pc 29916
	jal	%x1, get_surface_id.2978  #2255 pc 29920
	addi	%x2, %x2, -44  #2255 pc 29924
	lw	%x1, 40(%x2) #2255 pc 29928
	bge	%x6, %x0, 12  #2255 pc 29932
	j	bge_else.9490 #pc 29936
	nop #pc 29940
	lw	%x6, 36(%x2)  #2257 pc 29944
	lw	%x7, 32(%x2)  #2257 pc 29948
	lw	%x8, 28(%x2)  #2257 pc 29952
	lw	%x9, 24(%x2)  #2257 pc 29956
	lw	%x10, 20(%x2)  #2257 pc 29960
	sw	%x1, 40(%x2)  #2257 pc 29964
	addi	%x2, %x2, 44  #2257 pc 29968
	jal	%x1, neighbors_are_available.2981  #2257 pc 29972
	addi	%x2, %x2, -44  #2257 pc 29976
	lw	%x1, 40(%x2) #2257 pc 29980
	beq	%x6, %x0, 12  #2257 pc 29984
	j	be_else.9491 #pc 29988
	nop #pc 29992
	lw	%x6, 36(%x2)  #2269 pc 29996
	slli	%x6, %x6, 2  #2269 pc 30000
	lw	%x7, 28(%x2)  #2269 pc 30004
	add	%x31, %x6, %x7  #2269 pc 30008
	lw	%x6, 0(%x31)  #2269 pc 30012
	lw	%x7, 20(%x2)  #2269 pc 30016
	lw	%x29, 16(%x2)  #2269 pc 30020
	lw	%x30, 0(%x29)  #2269 pc 30024
	jalr	%x0, %x30, 0  #2269 pc 30028
	nop #pc 30032
be_else.9491: #pc 30036
	lw	%x6, 12(%x2)  #2260 pc 30036
	sw	%x1, 40(%x2)  #2260 pc 30040
	addi	%x2, %x2, 44  #2260 pc 30044
	jal	%x1, p_calc_diffuse.2707  #2260 pc 30048
	addi	%x2, %x2, -44  #2260 pc 30052
	lw	%x1, 40(%x2) #2260 pc 30056
	lw	%x10, 20(%x2)  #2261 pc 30060
	slli	%x7, %x10, 2  #2261 pc 30064
	add	%x31, %x7, %x6  #2261 pc 30068
	lw	%x6, 0(%x31)  #2261 pc 30072
	beq	%x6, %x0, 12  #2261 pc 30076
	j	be_else.9492 #pc 30080
	nop #pc 30084
	j	be_cont.9493 #pc 30088
	nop #pc 30092
be_else.9492: #pc 30096
	lw	%x6, 36(%x2)  #2262 pc 30096
	lw	%x7, 32(%x2)  #2262 pc 30100
	lw	%x8, 28(%x2)  #2262 pc 30104
	lw	%x9, 24(%x2)  #2262 pc 30108
	lw	%x29, 8(%x2)  #2262 pc 30112
	sw	%x1, 40(%x2)  #2262 pc 30116
	lw	%x30, 0(%x29)  #2262 pc 30120
	addi	%x2, %x2, 44  #2262 pc 30124
	jalr	%x1, %x30, 0  #2262 pc 30128
	addi	%x2, %x2, -44  #2262 pc 30132
	lw	%x1, 40(%x2)  #2262 pc 30136
be_cont.9493: #pc 30140
	lw	%x6, 20(%x2)  #2266 pc 30140
	addi	%x11, %x6, 1  #2266 pc 30144
	lw	%x6, 36(%x2)  #2266 pc 30148
	lw	%x7, 0(%x2)  #2266 pc 30152
	lw	%x8, 32(%x2)  #2266 pc 30156
	lw	%x9, 28(%x2)  #2266 pc 30160
	lw	%x10, 24(%x2)  #2266 pc 30164
	lw	%x29, 4(%x2)  #2266 pc 30168
	lw	%x30, 0(%x29)  #2266 pc 30172
	jalr	%x0, %x30, 0  #2266 pc 30176
	nop #pc 30180
bge_else.9490: #pc 30184
	ret #pc 30184
	nop #pc 30188
ble_else.9489: #pc 30192
	ret #pc 30192
	nop #pc 30196
write_ppm_header.2994:  #pc 30200
	lw	%x7, 4(%x29)  #0 pc 30200
	addi	%x8, %x0, 80  #0 pc 30204
	sw	%x7, 0(%x2)  #2279 pc 30208
	sw	%x6, 4(%x2)  #2279 pc 30212
	addi	%x6, %x8, 0  #0 pc 30216
	sw	%x1, 8(%x2)  #2279 pc 30220
	addi	%x2, %x2, 12  #2279 pc 30224
	jal	%x1, print_char.2558  #2279 pc 30228
	addi	%x2, %x2, -12  #2279 pc 30232
	lw	%x1, 8(%x2) #2279 pc 30236
	lw	%x6, 4(%x2)  #2280 pc 30240
	addi	%x6, %x6, 48  #2280 pc 30244
	sw	%x1, 8(%x2)  #2280 pc 30248
	addi	%x2, %x2, 12  #2280 pc 30252
	jal	%x1, print_char.2558  #2280 pc 30256
	addi	%x2, %x2, -12  #2280 pc 30260
	lw	%x1, 8(%x2) #2280 pc 30264
	addi	%x6, %x0, 10  #0 pc 30268
	sw	%x1, 8(%x2)  #2281 pc 30272
	addi	%x2, %x2, 12  #2281 pc 30276
	jal	%x1, print_char.2558  #2281 pc 30280
	addi	%x2, %x2, -12  #2281 pc 30284
	lw	%x1, 8(%x2) #2281 pc 30288
	lw	%x6, 0(%x2)  #2282 pc 30292
	lw	%x7, 0(%x6)  #2282 pc 30296
	addi	%x6, %x7, 0  #0 pc 30300
	sw	%x1, 8(%x2)  #2282 pc 30304
	addi	%x2, %x2, 12  #2282 pc 30308
	jal	%x1, print_int.2560  #2282 pc 30312
	addi	%x2, %x2, -12  #2282 pc 30316
	lw	%x1, 8(%x2) #2282 pc 30320
	addi	%x6, %x0, 32  #0 pc 30324
	sw	%x1, 8(%x2)  #2283 pc 30328
	addi	%x2, %x2, 12  #2283 pc 30332
	jal	%x1, print_char.2558  #2283 pc 30336
	addi	%x2, %x2, -12  #2283 pc 30340
	lw	%x1, 8(%x2) #2283 pc 30344
	lw	%x6, 0(%x2)  #2284 pc 30348
	lw	%x6, 4(%x6)  #2284 pc 30352
	sw	%x1, 8(%x2)  #2284 pc 30356
	addi	%x2, %x2, 12  #2284 pc 30360
	jal	%x1, print_int.2560  #2284 pc 30364
	addi	%x2, %x2, -12  #2284 pc 30368
	lw	%x1, 8(%x2) #2284 pc 30372
	addi	%x6, %x0, 32  #0 pc 30376
	sw	%x1, 8(%x2)  #2285 pc 30380
	addi	%x2, %x2, 12  #2285 pc 30384
	jal	%x1, print_char.2558  #2285 pc 30388
	addi	%x2, %x2, -12  #2285 pc 30392
	lw	%x1, 8(%x2) #2285 pc 30396
	addi	%x6, %x0, 255  #0 pc 30400
	sw	%x1, 8(%x2)  #2286 pc 30404
	addi	%x2, %x2, 12  #2286 pc 30408
	jal	%x1, print_int.2560  #2286 pc 30412
	addi	%x2, %x2, -12  #2286 pc 30416
	lw	%x1, 8(%x2) #2286 pc 30420
	addi	%x6, %x0, 10  #0 pc 30424
	j	print_char.2558  #2287 pc 30428
	nop #pc 30432
write_rgb_element_int.2996:  #pc 30436
	sw	%x1, 0(%x2)  #2292 pc 30436
	addi	%x2, %x2, 4  #2292 pc 30440
	jal	%x1, int_of_float.2540  #2292 pc 30444
	addi	%x2, %x2, -4  #2292 pc 30448
	lw	%x1, 0(%x2) #2292 pc 30452
	addi	%x31, %x0, 255  #pc 30456
	bge	%x31, %x6, 12  #2293 pc 30460
	j	ble_else.9496 #pc 30464
	nop #pc 30468
	bge	%x6, %x0, 12  #2293 pc 30472
	j	bge_else.9498 #pc 30476
	nop #pc 30480
	j	bge_cont.9499 #pc 30484
	nop #pc 30488
bge_else.9498: #pc 30492
	addi	%x6, %x0, 0  #0 pc 30492
bge_cont.9499: #pc 30496
	j	ble_cont.9497 #pc 30496
	nop #pc 30500
ble_else.9496: #pc 30504
	addi	%x6, %x0, 255  #0 pc 30504
ble_cont.9497: #pc 30508
	j	print_int.2560  #2294 pc 30508
	nop #pc 30512
write_rgb_element_char.2998:  #pc 30516
	sw	%x1, 0(%x2)  #2298 pc 30516
	addi	%x2, %x2, 4  #2298 pc 30520
	jal	%x1, int_of_float.2540  #2298 pc 30524
	addi	%x2, %x2, -4  #2298 pc 30528
	lw	%x1, 0(%x2) #2298 pc 30532
	addi	%x31, %x0, 255  #pc 30536
	bge	%x31, %x6, 12  #2299 pc 30540
	j	ble_else.9500 #pc 30544
	nop #pc 30548
	bge	%x6, %x0, 12  #2299 pc 30552
	j	bge_else.9502 #pc 30556
	nop #pc 30560
	j	bge_cont.9503 #pc 30564
	nop #pc 30568
bge_else.9502: #pc 30572
	addi	%x6, %x0, 0  #0 pc 30572
bge_cont.9503: #pc 30576
	j	ble_cont.9501 #pc 30576
	nop #pc 30580
ble_else.9500: #pc 30584
	addi	%x6, %x0, 255  #0 pc 30584
ble_cont.9501: #pc 30588
	j	print_char.2558  #2300 pc 30588
	nop #pc 30592
write_rgb.3000:  #pc 30596
	lw	%x7, 4(%x29)  #0 pc 30596
	addi	%x31, %x0, 3  #pc 30600
	beq	%x6, %x31, 12  #2304 pc 30604
	j	be_else.9504 #pc 30608
	nop #pc 30612
	flw	%f0, 0(%x7)  #2305 pc 30616
	sw	%x7, 0(%x2)  #2305 pc 30620
	sw	%x1, 4(%x2)  #2305 pc 30624
	addi	%x2, %x2, 8  #2305 pc 30628
	jal	%x1, write_rgb_element_int.2996  #2305 pc 30632
	addi	%x2, %x2, -8  #2305 pc 30636
	lw	%x1, 4(%x2) #2305 pc 30640
	addi	%x6, %x0, 32  #0 pc 30644
	sw	%x1, 4(%x2)  #2306 pc 30648
	addi	%x2, %x2, 8  #2306 pc 30652
	jal	%x1, print_char.2558  #2306 pc 30656
	addi	%x2, %x2, -8  #2306 pc 30660
	lw	%x1, 4(%x2) #2306 pc 30664
	lw	%x6, 0(%x2)  #2307 pc 30668
	flw	%f0, 4(%x6)  #2307 pc 30672
	sw	%x1, 4(%x2)  #2307 pc 30676
	addi	%x2, %x2, 8  #2307 pc 30680
	jal	%x1, write_rgb_element_int.2996  #2307 pc 30684
	addi	%x2, %x2, -8  #2307 pc 30688
	lw	%x1, 4(%x2) #2307 pc 30692
	addi	%x6, %x0, 32  #0 pc 30696
	sw	%x1, 4(%x2)  #2308 pc 30700
	addi	%x2, %x2, 8  #2308 pc 30704
	jal	%x1, print_char.2558  #2308 pc 30708
	addi	%x2, %x2, -8  #2308 pc 30712
	lw	%x1, 4(%x2) #2308 pc 30716
	lw	%x6, 0(%x2)  #2309 pc 30720
	flw	%f0, 8(%x6)  #2309 pc 30724
	sw	%x1, 4(%x2)  #2309 pc 30728
	addi	%x2, %x2, 8  #2309 pc 30732
	jal	%x1, write_rgb_element_int.2996  #2309 pc 30736
	addi	%x2, %x2, -8  #2309 pc 30740
	lw	%x1, 4(%x2) #2309 pc 30744
	addi	%x6, %x0, 10  #0 pc 30748
	j	print_char.2558  #2310 pc 30752
	nop #pc 30756
be_else.9504: #pc 30760
	flw	%f0, 0(%x7)  #2312 pc 30760
	sw	%x7, 0(%x2)  #2312 pc 30764
	sw	%x1, 4(%x2)  #2312 pc 30768
	addi	%x2, %x2, 8  #2312 pc 30772
	jal	%x1, write_rgb_element_char.2998  #2312 pc 30776
	addi	%x2, %x2, -8  #2312 pc 30780
	lw	%x1, 4(%x2) #2312 pc 30784
	lw	%x6, 0(%x2)  #2313 pc 30788
	flw	%f0, 4(%x6)  #2313 pc 30792
	sw	%x1, 4(%x2)  #2313 pc 30796
	addi	%x2, %x2, 8  #2313 pc 30800
	jal	%x1, write_rgb_element_char.2998  #2313 pc 30804
	addi	%x2, %x2, -8  #2313 pc 30808
	lw	%x1, 4(%x2) #2313 pc 30812
	lw	%x6, 0(%x2)  #2314 pc 30816
	flw	%f0, 8(%x6)  #2314 pc 30820
	j	write_rgb_element_char.2998  #2314 pc 30824
	nop #pc 30828
pretrace_diffuse_rays.3002:  #pc 30832
	lw	%x8, 12(%x29)  #0 pc 30832
	lw	%x9, 8(%x29)  #0 pc 30836
	lw	%x10, 4(%x29)  #0 pc 30840
	addi	%x31, %x0, 4  #pc 30844
	bge	%x31, %x7, 12  #2327 pc 30848
	j	ble_else.9505 #pc 30852
	nop #pc 30856
	sw	%x29, 0(%x2)  #2330 pc 30860
	sw	%x8, 4(%x2)  #2330 pc 30864
	sw	%x9, 8(%x2)  #2330 pc 30868
	sw	%x10, 12(%x2)  #2330 pc 30872
	sw	%x7, 16(%x2)  #2330 pc 30876
	sw	%x6, 20(%x2)  #2330 pc 30880
	sw	%x1, 24(%x2)  #2330 pc 30884
	addi	%x2, %x2, 28  #2330 pc 30888
	jal	%x1, get_surface_id.2978  #2330 pc 30892
	addi	%x2, %x2, -28  #2330 pc 30896
	lw	%x1, 24(%x2) #2330 pc 30900
	bge	%x6, %x0, 12  #2331 pc 30904
	j	bge_else.9506 #pc 30908
	nop #pc 30912
	lw	%x6, 20(%x2)  #2333 pc 30916
	sw	%x1, 24(%x2)  #2333 pc 30920
	addi	%x2, %x2, 28  #2333 pc 30924
	jal	%x1, p_calc_diffuse.2707  #2333 pc 30928
	addi	%x2, %x2, -28  #2333 pc 30932
	lw	%x1, 24(%x2) #2333 pc 30936
	lw	%x7, 16(%x2)  #2334 pc 30940
	slli	%x8, %x7, 2  #2334 pc 30944
	add	%x31, %x8, %x6  #2334 pc 30948
	lw	%x6, 0(%x31)  #2334 pc 30952
	beq	%x6, %x0, 12  #2334 pc 30956
	j	be_else.9507 #pc 30960
	nop #pc 30964
	j	be_cont.9508 #pc 30968
	nop #pc 30972
be_else.9507: #pc 30976
	lw	%x6, 20(%x2)  #2335 pc 30976
	sw	%x1, 24(%x2)  #2335 pc 30980
	addi	%x2, %x2, 28  #2335 pc 30984
	jal	%x1, p_group_id.2713  #2335 pc 30988
	addi	%x2, %x2, -28  #2335 pc 30992
	lw	%x1, 24(%x2) #2335 pc 30996
	lw	%x7, 12(%x2)  #2336 pc 31000
	sw	%x6, 24(%x2)  #2336 pc 31004
	addi	%x6, %x7, 0  #0 pc 31008
	sw	%x1, 28(%x2)  #2336 pc 31012
	addi	%x2, %x2, 32  #2336 pc 31016
	jal	%x1, vecbzero.2629  #2336 pc 31020
	addi	%x2, %x2, -32  #2336 pc 31024
	lw	%x1, 28(%x2) #2336 pc 31028
	lw	%x6, 20(%x2)  #2340 pc 31032
	sw	%x1, 28(%x2)  #2340 pc 31036
	addi	%x2, %x2, 32  #2340 pc 31040
	jal	%x1, p_nvectors.2718  #2340 pc 31044
	addi	%x2, %x2, -32  #2340 pc 31048
	lw	%x1, 28(%x2) #2340 pc 31052
	lw	%x7, 20(%x2)  #2341 pc 31056
	sw	%x6, 28(%x2)  #2341 pc 31060
	addi	%x6, %x7, 0  #0 pc 31064
	sw	%x1, 32(%x2)  #2341 pc 31068
	addi	%x2, %x2, 36  #2341 pc 31072
	jal	%x1, p_intersection_points.2703  #2341 pc 31076
	addi	%x2, %x2, -36  #2341 pc 31080
	lw	%x1, 32(%x2) #2341 pc 31084
	lw	%x7, 24(%x2)  #2343 pc 31088
	slli	%x7, %x7, 2  #2343 pc 31092
	lw	%x8, 8(%x2)  #2343 pc 31096
	add	%x31, %x7, %x8  #2343 pc 31100
	lw	%x7, 0(%x31)  #2343 pc 31104
	lw	%x8, 16(%x2)  #2344 pc 31108
	slli	%x9, %x8, 2  #2344 pc 31112
	lw	%x10, 28(%x2)  #2344 pc 31116
	add	%x31, %x9, %x10  #2344 pc 31120
	lw	%x9, 0(%x31)  #2344 pc 31124
	slli	%x10, %x8, 2  #2345 pc 31128
	add	%x31, %x10, %x6  #2345 pc 31132
	lw	%x6, 0(%x31)  #2345 pc 31136
	lw	%x29, 4(%x2)  #2342 pc 31140
	addi	%x8, %x6, 0  #0 pc 31144
	addi	%x6, %x7, 0  #0 pc 31148
	addi	%x7, %x9, 0  #0 pc 31152
	sw	%x1, 32(%x2)  #2342 pc 31156
	lw	%x30, 0(%x29)  #2342 pc 31160
	addi	%x2, %x2, 36  #2342 pc 31164
	jalr	%x1, %x30, 0  #2342 pc 31168
	addi	%x2, %x2, -36  #2342 pc 31172
	lw	%x1, 32(%x2)  #2342 pc 31176
	lw	%x6, 20(%x2)  #2346 pc 31180
	sw	%x1, 32(%x2)  #2346 pc 31184
	addi	%x2, %x2, 36  #2346 pc 31188
	jal	%x1, p_received_ray_20percent.2711  #2346 pc 31192
	addi	%x2, %x2, -36  #2346 pc 31196
	lw	%x1, 32(%x2) #2346 pc 31200
	lw	%x7, 16(%x2)  #2347 pc 31204
	slli	%x8, %x7, 2  #2347 pc 31208
	add	%x31, %x8, %x6  #2347 pc 31212
	lw	%x6, 0(%x31)  #2347 pc 31216
	lw	%x8, 12(%x2)  #2347 pc 31220
	addi	%x7, %x8, 0  #0 pc 31224
	sw	%x1, 32(%x2)  #2347 pc 31228
	addi	%x2, %x2, 36  #2347 pc 31232
	jal	%x1, veccpy.2631  #2347 pc 31236
	addi	%x2, %x2, -36  #2347 pc 31240
	lw	%x1, 32(%x2) #2347 pc 31244
be_cont.9508: #pc 31248
	lw	%x6, 16(%x2)  #2349 pc 31248
	addi	%x7, %x6, 1  #2349 pc 31252
	lw	%x6, 20(%x2)  #2349 pc 31256
	lw	%x29, 0(%x2)  #2349 pc 31260
	lw	%x30, 0(%x29)  #2349 pc 31264
	jalr	%x0, %x30, 0  #2349 pc 31268
	nop #pc 31272
bge_else.9506: #pc 31276
	ret #pc 31276
	nop #pc 31280
ble_else.9505: #pc 31284
	ret #pc 31284
	nop #pc 31288
pretrace_pixels.3005:  #pc 31292
	lw	%x9, 36(%x29)  #0 pc 31292
	lw	%x10, 32(%x29)  #0 pc 31296
	lw	%x11, 28(%x29)  #0 pc 31300
	lw	%x12, 24(%x29)  #0 pc 31304
	lw	%x13, 20(%x29)  #0 pc 31308
	lw	%x14, 16(%x29)  #0 pc 31312
	lw	%x15, 12(%x29)  #0 pc 31316
	lw	%x16, 8(%x29)  #0 pc 31320
	lw	%x17, 4(%x29)  #0 pc 31324
	bge	%x7, %x0, 12  #2357 pc 31328
	j	bge_else.9511 #pc 31332
	nop #pc 31336
	flw	%f3, 0(%x13)  #2359 pc 31340
	lw	%x13, 0(%x17)  #2359 pc 31344
	sub	%x13, %x7, %x13  #2359 pc 31348
	sw	%x29, 0(%x2)  #2359 pc 31352
	sw	%x16, 4(%x2)  #2359 pc 31356
	sw	%x8, 8(%x2)  #2359 pc 31360
	sw	%x10, 12(%x2)  #2359 pc 31364
	sw	%x6, 16(%x2)  #2359 pc 31368
	sw	%x7, 20(%x2)  #2359 pc 31372
	sw	%x9, 24(%x2)  #2359 pc 31376
	sw	%x11, 28(%x2)  #2359 pc 31380
	sw	%x14, 32(%x2)  #2359 pc 31384
	fsw	%f2, 40(%x2)  #2359 pc 31388
	fsw	%f1, 48(%x2)  #2359 pc 31392
	sw	%x15, 56(%x2)  #2359 pc 31396
	fsw	%f0, 64(%x2)  #2359 pc 31400
	sw	%x12, 72(%x2)  #2359 pc 31404
	fsw	%f3, 80(%x2)  #2359 pc 31408
	addi	%x6, %x13, 0  #0 pc 31412
	sw	%x1, 88(%x2)  #2359 pc 31416
	addi	%x2, %x2, 92  #2359 pc 31420
	jal	%x1, float_of_int.2538  #2359 pc 31424
	addi	%x2, %x2, -92  #2359 pc 31428
	lw	%x1, 88(%x2) #2359 pc 31432
	flw	%f1, 80(%x2)  #2359 pc 31436
	fmul	%f0, %f1, %f0  #2359 pc 31440
	lw	%x6, 72(%x2)  #2360 pc 31444
	flw	%f1, 0(%x6)  #2360 pc 31448
	fmul	%f1, %f0, %f1  #2360 pc 31452
	flw	%f2, 64(%x2)  #2360 pc 31456
	fadd	%f1, %f1, %f2  #2360 pc 31460
	lw	%x7, 56(%x2)  #2360 pc 31464
	fsw	%f1, 0(%x7)  #2360 pc 31468
	flw	%f1, 4(%x6)  #2361 pc 31472
	fmul	%f1, %f0, %f1  #2361 pc 31476
	flw	%f3, 48(%x2)  #2361 pc 31480
	fadd	%f1, %f1, %f3  #2361 pc 31484
	fsw	%f1, 4(%x7)  #2361 pc 31488
	flw	%f1, 8(%x6)  #2362 pc 31492
	fmul	%f0, %f0, %f1  #2362 pc 31496
	flw	%f1, 40(%x2)  #2362 pc 31500
	fadd	%f0, %f0, %f1  #2362 pc 31504
	fsw	%f0, 8(%x7)  #2362 pc 31508
	addi	%x6, %x0, 0  #0 pc 31512
	addi	%x30, %x7, 0  #0 pc 31516
	addi	%x7, %x6, 0  #0 pc 31520
	addi	%x6, %x30, 0  #0 pc 31524
	sw	%x1, 88(%x2)  #2363 pc 31528
	addi	%x2, %x2, 92  #2363 pc 31532
	jal	%x1, vecunit_sgn.2634  #2363 pc 31536
	addi	%x2, %x2, -92  #2363 pc 31540
	lw	%x1, 88(%x2) #2363 pc 31544
	lw	%x6, 32(%x2)  #2364 pc 31548
	sw	%x1, 88(%x2)  #2364 pc 31552
	addi	%x2, %x2, 92  #2364 pc 31556
	jal	%x1, vecbzero.2629  #2364 pc 31560
	addi	%x2, %x2, -92  #2364 pc 31564
	lw	%x1, 88(%x2) #2364 pc 31568
	lw	%x6, 28(%x2)  #2365 pc 31572
	lw	%x7, 24(%x2)  #2365 pc 31576
	sw	%x1, 88(%x2)  #2365 pc 31580
	addi	%x2, %x2, 92  #2365 pc 31584
	jal	%x1, veccpy.2631  #2365 pc 31588
	addi	%x2, %x2, -92  #2365 pc 31592
	lw	%x1, 88(%x2) #2365 pc 31596
	addi	%x6, %x0, 0  #0 pc 31600
	fmv	%f0, l.6263  #0 pc 31604
	lw	%x7, 20(%x2)  #2368 pc 31608
	slli	%x8, %x7, 2  #2368 pc 31612
	lw	%x9, 16(%x2)  #2368 pc 31616
	add	%x31, %x8, %x9  #2368 pc 31620
	lw	%x8, 0(%x31)  #2368 pc 31624
	fmv	%f1, l.6244  #0 pc 31628
	lw	%x10, 56(%x2)  #2368 pc 31632
	lw	%x29, 12(%x2)  #2368 pc 31636
	addi	%x7, %x10, 0  #0 pc 31640
	sw	%x1, 88(%x2)  #2368 pc 31644
	lw	%x30, 0(%x29)  #2368 pc 31648
	addi	%x2, %x2, 92  #2368 pc 31652
	jalr	%x1, %x30, 0  #2368 pc 31656
	addi	%x2, %x2, -92  #2368 pc 31660
	lw	%x1, 88(%x2)  #2368 pc 31664
	lw	%x6, 20(%x2)  #2369 pc 31668
	slli	%x7, %x6, 2  #2369 pc 31672
	lw	%x8, 16(%x2)  #2369 pc 31676
	add	%x31, %x7, %x8  #2369 pc 31680
	lw	%x7, 0(%x31)  #2369 pc 31684
	addi	%x6, %x7, 0  #0 pc 31688
	sw	%x1, 88(%x2)  #2369 pc 31692
	addi	%x2, %x2, 92  #2369 pc 31696
	jal	%x1, p_rgb.2701  #2369 pc 31700
	addi	%x2, %x2, -92  #2369 pc 31704
	lw	%x1, 88(%x2) #2369 pc 31708
	lw	%x7, 32(%x2)  #2369 pc 31712
	sw	%x1, 88(%x2)  #2369 pc 31716
	addi	%x2, %x2, 92  #2369 pc 31720
	jal	%x1, veccpy.2631  #2369 pc 31724
	addi	%x2, %x2, -92  #2369 pc 31728
	lw	%x1, 88(%x2) #2369 pc 31732
	lw	%x6, 20(%x2)  #2370 pc 31736
	slli	%x7, %x6, 2  #2370 pc 31740
	lw	%x8, 16(%x2)  #2370 pc 31744
	add	%x31, %x7, %x8  #2370 pc 31748
	lw	%x7, 0(%x31)  #2370 pc 31752
	lw	%x9, 8(%x2)  #2370 pc 31756
	addi	%x6, %x7, 0  #0 pc 31760
	addi	%x7, %x9, 0  #0 pc 31764
	sw	%x1, 88(%x2)  #2370 pc 31768
	addi	%x2, %x2, 92  #2370 pc 31772
	jal	%x1, p_set_group_id.2715  #2370 pc 31776
	addi	%x2, %x2, -92  #2370 pc 31780
	lw	%x1, 88(%x2) #2370 pc 31784
	lw	%x6, 20(%x2)  #2373 pc 31788
	slli	%x7, %x6, 2  #2373 pc 31792
	lw	%x8, 16(%x2)  #2373 pc 31796
	add	%x31, %x7, %x8  #2373 pc 31800
	lw	%x7, 0(%x31)  #2373 pc 31804
	addi	%x9, %x0, 0  #0 pc 31808
	lw	%x29, 4(%x2)  #2373 pc 31812
	addi	%x6, %x7, 0  #0 pc 31816
	addi	%x7, %x9, 0  #0 pc 31820
	sw	%x1, 88(%x2)  #2373 pc 31824
	lw	%x30, 0(%x29)  #2373 pc 31828
	addi	%x2, %x2, 92  #2373 pc 31832
	jalr	%x1, %x30, 0  #2373 pc 31836
	addi	%x2, %x2, -92  #2373 pc 31840
	lw	%x1, 88(%x2)  #2373 pc 31844
	lw	%x6, 20(%x2)  #2375 pc 31848
	addi	%x6, %x6, -1  #2375 pc 31852
	addi	%x7, %x0, 1  #0 pc 31856
	lw	%x8, 8(%x2)  #2375 pc 31860
	sw	%x6, 88(%x2)  #2375 pc 31864
	addi	%x6, %x8, 0  #0 pc 31868
	sw	%x1, 92(%x2)  #2375 pc 31872
	addi	%x2, %x2, 96  #2375 pc 31876
	jal	%x1, add_mod5.2618  #2375 pc 31880
	addi	%x2, %x2, -96  #2375 pc 31884
	lw	%x1, 92(%x2) #2375 pc 31888
	addi	%x8, %x6, 0  #2375 pc 31892
	flw	%f0, 64(%x2)  #2375 pc 31896
	flw	%f1, 48(%x2)  #2375 pc 31900
	flw	%f2, 40(%x2)  #2375 pc 31904
	lw	%x6, 16(%x2)  #2375 pc 31908
	lw	%x7, 88(%x2)  #2375 pc 31912
	lw	%x29, 0(%x2)  #2375 pc 31916
	lw	%x30, 0(%x29)  #2375 pc 31920
	jalr	%x0, %x30, 0  #2375 pc 31924
	nop #pc 31928
bge_else.9511: #pc 31932
	ret #pc 31932
	nop #pc 31936
pretrace_line.3012:  #pc 31940
	lw	%x9, 24(%x29)  #0 pc 31940
	lw	%x10, 20(%x29)  #0 pc 31944
	lw	%x11, 16(%x29)  #0 pc 31948
	lw	%x12, 12(%x29)  #0 pc 31952
	lw	%x13, 8(%x29)  #0 pc 31956
	lw	%x14, 4(%x29)  #0 pc 31960
	flw	%f0, 0(%x11)  #2382 pc 31964
	lw	%x11, 4(%x14)  #2382 pc 31968
	sub	%x7, %x7, %x11  #2382 pc 31972
	sw	%x8, 0(%x2)  #2382 pc 31976
	sw	%x6, 4(%x2)  #2382 pc 31980
	sw	%x12, 8(%x2)  #2382 pc 31984
	sw	%x13, 12(%x2)  #2382 pc 31988
	sw	%x9, 16(%x2)  #2382 pc 31992
	sw	%x10, 20(%x2)  #2382 pc 31996
	fsw	%f0, 24(%x2)  #2382 pc 32000
	addi	%x6, %x7, 0  #0 pc 32004
	sw	%x1, 32(%x2)  #2382 pc 32008
	addi	%x2, %x2, 36  #2382 pc 32012
	jal	%x1, float_of_int.2538  #2382 pc 32016
	addi	%x2, %x2, -36  #2382 pc 32020
	lw	%x1, 32(%x2) #2382 pc 32024
	flw	%f1, 24(%x2)  #2382 pc 32028
	fmul	%f0, %f1, %f0  #2382 pc 32032
	lw	%x6, 20(%x2)  #2385 pc 32036
	flw	%f1, 0(%x6)  #2385 pc 32040
	fmul	%f1, %f0, %f1  #2385 pc 32044
	lw	%x7, 16(%x2)  #2385 pc 32048
	flw	%f2, 0(%x7)  #2385 pc 32052
	fadd	%f1, %f1, %f2  #2385 pc 32056
	flw	%f2, 4(%x6)  #2386 pc 32060
	fmul	%f2, %f0, %f2  #2386 pc 32064
	flw	%f3, 4(%x7)  #2386 pc 32068
	fadd	%f2, %f2, %f3  #2386 pc 32072
	flw	%f3, 8(%x6)  #2387 pc 32076
	fmul	%f0, %f0, %f3  #2387 pc 32080
	flw	%f3, 8(%x7)  #2387 pc 32084
	fadd	%f0, %f0, %f3  #2387 pc 32088
	lw	%x6, 12(%x2)  #2388 pc 32092
	lw	%x6, 0(%x6)  #2388 pc 32096
	addi	%x7, %x6, -1  #2388 pc 32100
	lw	%x6, 4(%x2)  #2388 pc 32104
	lw	%x8, 0(%x2)  #2388 pc 32108
	lw	%x29, 8(%x2)  #2388 pc 32112
	fadd	%f29, %f2, %f30  #0 pc 32116
	fadd	%f2, %f0, %f30  #0 pc 32120
	fadd	%f0, %f1, %f30  #0 pc 32124
	fadd	%f1, %f29, %f30  #0 pc 32128
	lw	%x30, 0(%x29)  #2388 pc 32132
	jalr	%x0, %x30, 0  #2388 pc 32136
	nop #pc 32140
scan_pixel.3016:  #pc 32144
	lw	%x12, 24(%x29)  #0 pc 32144
	lw	%x13, 20(%x29)  #0 pc 32148
	lw	%x14, 16(%x29)  #0 pc 32152
	lw	%x15, 12(%x29)  #0 pc 32156
	lw	%x16, 8(%x29)  #0 pc 32160
	lw	%x17, 4(%x29)  #0 pc 32164
	lw	%x16, 0(%x16)  #2398 pc 32168
	bge	%x6, %x16, 12  #2398 pc 32172
	j	ble_else.9516 #pc 32176
	nop #pc 32180
	ret #pc 32184
	nop #pc 32188
ble_else.9516: #pc 32192
	slli	%x16, %x6, 2  #2401 pc 32192
	add	%x31, %x16, %x9  #2401 pc 32196
	lw	%x16, 0(%x31)  #2401 pc 32200
	sw	%x29, 0(%x2)  #2401 pc 32204
	sw	%x11, 4(%x2)  #2401 pc 32208
	sw	%x12, 8(%x2)  #2401 pc 32212
	sw	%x8, 12(%x2)  #2401 pc 32216
	sw	%x13, 16(%x2)  #2401 pc 32220
	sw	%x17, 20(%x2)  #2401 pc 32224
	sw	%x9, 24(%x2)  #2401 pc 32228
	sw	%x10, 28(%x2)  #2401 pc 32232
	sw	%x7, 32(%x2)  #2401 pc 32236
	sw	%x6, 36(%x2)  #2401 pc 32240
	sw	%x15, 40(%x2)  #2401 pc 32244
	sw	%x14, 44(%x2)  #2401 pc 32248
	addi	%x6, %x16, 0  #0 pc 32252
	sw	%x1, 48(%x2)  #2401 pc 32256
	addi	%x2, %x2, 52  #2401 pc 32260
	jal	%x1, p_rgb.2701  #2401 pc 32264
	addi	%x2, %x2, -52  #2401 pc 32268
	lw	%x1, 48(%x2) #2401 pc 32272
	addi	%x7, %x6, 0  #2401 pc 32276
	lw	%x6, 44(%x2)  #2401 pc 32280
	sw	%x1, 48(%x2)  #2401 pc 32284
	addi	%x2, %x2, 52  #2401 pc 32288
	jal	%x1, veccpy.2631  #2401 pc 32292
	addi	%x2, %x2, -52  #2401 pc 32296
	lw	%x1, 48(%x2) #2401 pc 32300
	lw	%x6, 36(%x2)  #2404 pc 32304
	lw	%x7, 32(%x2)  #2404 pc 32308
	lw	%x8, 28(%x2)  #2404 pc 32312
	lw	%x29, 40(%x2)  #2404 pc 32316
	sw	%x1, 48(%x2)  #2404 pc 32320
	lw	%x30, 0(%x29)  #2404 pc 32324
	addi	%x2, %x2, 52  #2404 pc 32328
	jalr	%x1, %x30, 0  #2404 pc 32332
	addi	%x2, %x2, -52  #2404 pc 32336
	lw	%x1, 48(%x2)  #2404 pc 32340
	beq	%x6, %x0, 12  #2404 pc 32344
	j	be_else.9518 #pc 32348
	nop #pc 32352
	lw	%x6, 36(%x2)  #2407 pc 32356
	slli	%x7, %x6, 2  #2407 pc 32360
	lw	%x8, 24(%x2)  #2407 pc 32364
	add	%x31, %x7, %x8  #2407 pc 32368
	lw	%x7, 0(%x31)  #2407 pc 32372
	addi	%x9, %x0, 0  #0 pc 32376
	lw	%x29, 20(%x2)  #2407 pc 32380
	addi	%x6, %x7, 0  #0 pc 32384
	addi	%x7, %x9, 0  #0 pc 32388
	sw	%x1, 48(%x2)  #2407 pc 32392
	lw	%x30, 0(%x29)  #2407 pc 32396
	addi	%x2, %x2, 52  #2407 pc 32400
	jalr	%x1, %x30, 0  #2407 pc 32404
	addi	%x2, %x2, -52  #2407 pc 32408
	lw	%x1, 48(%x2)  #2407 pc 32412
	j	be_cont.9519 #pc 32416
	nop #pc 32420
be_else.9518: #pc 32424
	addi	%x11, %x0, 0  #0 pc 32424
	lw	%x6, 36(%x2)  #2405 pc 32428
	lw	%x7, 32(%x2)  #2405 pc 32432
	lw	%x8, 12(%x2)  #2405 pc 32436
	lw	%x9, 24(%x2)  #2405 pc 32440
	lw	%x10, 28(%x2)  #2405 pc 32444
	lw	%x29, 16(%x2)  #2405 pc 32448
	sw	%x1, 48(%x2)  #2405 pc 32452
	lw	%x30, 0(%x29)  #2405 pc 32456
	addi	%x2, %x2, 52  #2405 pc 32460
	jalr	%x1, %x30, 0  #2405 pc 32464
	addi	%x2, %x2, -52  #2405 pc 32468
	lw	%x1, 48(%x2)  #2405 pc 32472
be_cont.9519: #pc 32476
	lw	%x6, 4(%x2)  #2410 pc 32476
	lw	%x29, 8(%x2)  #2410 pc 32480
	sw	%x1, 48(%x2)  #2410 pc 32484
	lw	%x30, 0(%x29)  #2410 pc 32488
	addi	%x2, %x2, 52  #2410 pc 32492
	jalr	%x1, %x30, 0  #2410 pc 32496
	addi	%x2, %x2, -52  #2410 pc 32500
	lw	%x1, 48(%x2)  #2410 pc 32504
	lw	%x6, 36(%x2)  #2412 pc 32508
	addi	%x6, %x6, 1  #2412 pc 32512
	lw	%x7, 32(%x2)  #2412 pc 32516
	lw	%x8, 12(%x2)  #2412 pc 32520
	lw	%x9, 24(%x2)  #2412 pc 32524
	lw	%x10, 28(%x2)  #2412 pc 32528
	lw	%x11, 4(%x2)  #2412 pc 32532
	lw	%x29, 0(%x2)  #2412 pc 32536
	lw	%x30, 0(%x29)  #2412 pc 32540
	jalr	%x0, %x30, 0  #2412 pc 32544
	nop #pc 32548
scan_line.3023:  #pc 32552
	lw	%x12, 12(%x29)  #0 pc 32552
	lw	%x13, 8(%x29)  #0 pc 32556
	lw	%x14, 4(%x29)  #0 pc 32560
	lw	%x15, 4(%x14)  #2419 pc 32564
	bge	%x6, %x15, 12  #2419 pc 32568
	j	ble_else.9520 #pc 32572
	nop #pc 32576
	ret #pc 32580
	nop #pc 32584
ble_else.9520: #pc 32588
	lw	%x14, 4(%x14)  #2421 pc 32588
	addi	%x14, %x14, -1  #2421 pc 32592
	sw	%x29, 0(%x2)  #2421 pc 32596
	sw	%x10, 4(%x2)  #2421 pc 32600
	sw	%x11, 8(%x2)  #2421 pc 32604
	sw	%x9, 12(%x2)  #2421 pc 32608
	sw	%x8, 16(%x2)  #2421 pc 32612
	sw	%x7, 20(%x2)  #2421 pc 32616
	sw	%x6, 24(%x2)  #2421 pc 32620
	sw	%x12, 28(%x2)  #2421 pc 32624
	bge	%x6, %x14, 12  #2421 pc 32628
	j	ble_else.9522 #pc 32632
	nop #pc 32636
	j	ble_cont.9523 #pc 32640
	nop #pc 32644
ble_else.9522: #pc 32648
	addi	%x14, %x6, 1  #2422 pc 32648
	addi	%x8, %x10, 0  #0 pc 32652
	addi	%x7, %x14, 0  #0 pc 32656
	addi	%x6, %x9, 0  #0 pc 32660
	addi	%x29, %x13, 0  #0 pc 32664
	sw	%x1, 32(%x2)  #2422 pc 32668
	lw	%x30, 0(%x29)  #2422 pc 32672
	addi	%x2, %x2, 36  #2422 pc 32676
	jalr	%x1, %x30, 0  #2422 pc 32680
	addi	%x2, %x2, -36  #2422 pc 32684
	lw	%x1, 32(%x2)  #2422 pc 32688
ble_cont.9523: #pc 32692
	addi	%x6, %x0, 0  #0 pc 32692
	lw	%x7, 24(%x2)  #2424 pc 32696
	lw	%x8, 20(%x2)  #2424 pc 32700
	lw	%x9, 16(%x2)  #2424 pc 32704
	lw	%x10, 12(%x2)  #2424 pc 32708
	lw	%x11, 8(%x2)  #2424 pc 32712
	lw	%x29, 28(%x2)  #2424 pc 32716
	sw	%x1, 32(%x2)  #2424 pc 32720
	lw	%x30, 0(%x29)  #2424 pc 32724
	addi	%x2, %x2, 36  #2424 pc 32728
	jalr	%x1, %x30, 0  #2424 pc 32732
	addi	%x2, %x2, -36  #2424 pc 32736
	lw	%x1, 32(%x2)  #2424 pc 32740
	lw	%x6, 24(%x2)  #2425 pc 32744
	addi	%x6, %x6, 1  #2425 pc 32748
	addi	%x7, %x0, 2  #0 pc 32752
	lw	%x8, 4(%x2)  #2425 pc 32756
	sw	%x6, 32(%x2)  #2425 pc 32760
	addi	%x6, %x8, 0  #0 pc 32764
	sw	%x1, 36(%x2)  #2425 pc 32768
	addi	%x2, %x2, 40  #2425 pc 32772
	jal	%x1, add_mod5.2618  #2425 pc 32776
	addi	%x2, %x2, -40  #2425 pc 32780
	lw	%x1, 36(%x2) #2425 pc 32784
	addi	%x10, %x6, 0  #2425 pc 32788
	lw	%x6, 32(%x2)  #2425 pc 32792
	lw	%x7, 16(%x2)  #2425 pc 32796
	lw	%x8, 12(%x2)  #2425 pc 32800
	lw	%x9, 20(%x2)  #2425 pc 32804
	lw	%x11, 8(%x2)  #2425 pc 32808
	lw	%x29, 0(%x2)  #2425 pc 32812
	lw	%x30, 0(%x29)  #2425 pc 32816
	jalr	%x0, %x30, 0  #2425 pc 32820
	nop #pc 32824
create_float5x3array.3030:  #pc 32828
	addi	%x6, %x0, 3  #0 pc 32828
	fmv	%f0, l.6244  #0 pc 32832
	sw	%x1, 0(%x2)  #2436 pc 32836
	addi	%x2, %x2, 4  #2436 pc 32840
	jal	%x1, create_float_array.2577  #2436 pc 32844
	addi	%x2, %x2, -4  #2436 pc 32848
	lw	%x1, 0(%x2) #2436 pc 32852
	addi	%x7, %x6, 0  #2436 pc 32856
	addi	%x6, %x0, 5  #0 pc 32860
	sw	%x1, 0(%x2)  #2437 pc 32864
	addi	%x2, %x2, 4  #2437 pc 32868
	jal	%x1, create_array.2570  #2437 pc 32872
	addi	%x2, %x2, -4  #2437 pc 32876
	lw	%x1, 0(%x2) #2437 pc 32880
	addi	%x7, %x0, 3  #0 pc 32884
	fmv	%f0, l.6244  #0 pc 32888
	sw	%x6, 0(%x2)  #2438 pc 32892
	addi	%x6, %x7, 0  #0 pc 32896
	sw	%x1, 4(%x2)  #2438 pc 32900
	addi	%x2, %x2, 8  #2438 pc 32904
	jal	%x1, create_float_array.2577  #2438 pc 32908
	addi	%x2, %x2, -8  #2438 pc 32912
	lw	%x1, 4(%x2) #2438 pc 32916
	lw	%x7, 0(%x2)  #2438 pc 32920
	sw	%x6, 4(%x7)  #2438 pc 32924
	addi	%x6, %x0, 3  #0 pc 32928
	fmv	%f0, l.6244  #0 pc 32932
	sw	%x1, 4(%x2)  #2439 pc 32936
	addi	%x2, %x2, 8  #2439 pc 32940
	jal	%x1, create_float_array.2577  #2439 pc 32944
	addi	%x2, %x2, -8  #2439 pc 32948
	lw	%x1, 4(%x2) #2439 pc 32952
	lw	%x7, 0(%x2)  #2439 pc 32956
	sw	%x6, 8(%x7)  #2439 pc 32960
	addi	%x6, %x0, 3  #0 pc 32964
	fmv	%f0, l.6244  #0 pc 32968
	sw	%x1, 4(%x2)  #2440 pc 32972
	addi	%x2, %x2, 8  #2440 pc 32976
	jal	%x1, create_float_array.2577  #2440 pc 32980
	addi	%x2, %x2, -8  #2440 pc 32984
	lw	%x1, 4(%x2) #2440 pc 32988
	lw	%x7, 0(%x2)  #2440 pc 32992
	sw	%x6, 12(%x7)  #2440 pc 32996
	addi	%x6, %x0, 3  #0 pc 33000
	fmv	%f0, l.6244  #0 pc 33004
	sw	%x1, 4(%x2)  #2441 pc 33008
	addi	%x2, %x2, 8  #2441 pc 33012
	jal	%x1, create_float_array.2577  #2441 pc 33016
	addi	%x2, %x2, -8  #2441 pc 33020
	lw	%x1, 4(%x2) #2441 pc 33024
	lw	%x7, 0(%x2)  #2441 pc 33028
	sw	%x6, 16(%x7)  #2441 pc 33032
	addi	%x6, %x7, 0  #2442 pc 33036
	ret #pc 33040
	nop #pc 33044
create_pixel.3032:  #pc 33048
	addi	%x6, %x0, 3  #0 pc 33048
	fmv	%f0, l.6244  #0 pc 33052
	sw	%x1, 0(%x2)  #2448 pc 33056
	addi	%x2, %x2, 4  #2448 pc 33060
	jal	%x1, create_float_array.2577  #2448 pc 33064
	addi	%x2, %x2, -4  #2448 pc 33068
	lw	%x1, 0(%x2) #2448 pc 33072
	sw	%x6, 0(%x2)  #2449 pc 33076
	sw	%x1, 4(%x2)  #2449 pc 33080
	addi	%x2, %x2, 8  #2449 pc 33084
	jal	%x1, create_float5x3array.3030  #2449 pc 33088
	addi	%x2, %x2, -8  #2449 pc 33092
	lw	%x1, 4(%x2) #2449 pc 33096
	addi	%x7, %x0, 5  #0 pc 33100
	addi	%x8, %x0, 0  #0 pc 33104
	sw	%x6, 4(%x2)  #2450 pc 33108
	addi	%x6, %x7, 0  #0 pc 33112
	addi	%x7, %x8, 0  #0 pc 33116
	sw	%x1, 8(%x2)  #2450 pc 33120
	addi	%x2, %x2, 12  #2450 pc 33124
	jal	%x1, create_array.2570  #2450 pc 33128
	addi	%x2, %x2, -12  #2450 pc 33132
	lw	%x1, 8(%x2) #2450 pc 33136
	addi	%x7, %x0, 5  #0 pc 33140
	addi	%x8, %x0, 0  #0 pc 33144
	sw	%x6, 8(%x2)  #2451 pc 33148
	addi	%x6, %x7, 0  #0 pc 33152
	addi	%x7, %x8, 0  #0 pc 33156
	sw	%x1, 12(%x2)  #2451 pc 33160
	addi	%x2, %x2, 16  #2451 pc 33164
	jal	%x1, create_array.2570  #2451 pc 33168
	addi	%x2, %x2, -16  #2451 pc 33172
	lw	%x1, 12(%x2) #2451 pc 33176
	sw	%x6, 12(%x2)  #2452 pc 33180
	sw	%x1, 16(%x2)  #2452 pc 33184
	addi	%x2, %x2, 20  #2452 pc 33188
	jal	%x1, create_float5x3array.3030  #2452 pc 33192
	addi	%x2, %x2, -20  #2452 pc 33196
	lw	%x1, 16(%x2) #2452 pc 33200
	sw	%x6, 16(%x2)  #2453 pc 33204
	sw	%x1, 20(%x2)  #2453 pc 33208
	addi	%x2, %x2, 24  #2453 pc 33212
	jal	%x1, create_float5x3array.3030  #2453 pc 33216
	addi	%x2, %x2, -24  #2453 pc 33220
	lw	%x1, 20(%x2) #2453 pc 33224
	addi	%x7, %x0, 1  #0 pc 33228
	addi	%x8, %x0, 0  #0 pc 33232
	sw	%x6, 20(%x2)  #2454 pc 33236
	addi	%x6, %x7, 0  #0 pc 33240
	addi	%x7, %x8, 0  #0 pc 33244
	sw	%x1, 24(%x2)  #2454 pc 33248
	addi	%x2, %x2, 28  #2454 pc 33252
	jal	%x1, create_array.2570  #2454 pc 33256
	addi	%x2, %x2, -28  #2454 pc 33260
	lw	%x1, 24(%x2) #2454 pc 33264
	sw	%x6, 24(%x2)  #2455 pc 33268
	sw	%x1, 28(%x2)  #2455 pc 33272
	addi	%x2, %x2, 32  #2455 pc 33276
	jal	%x1, create_float5x3array.3030  #2455 pc 33280
	addi	%x2, %x2, -32  #2455 pc 33284
	lw	%x1, 28(%x2) #2455 pc 33288
	addi	%x7, %x3, 0  #2456 pc 33292
	addi	%x3, %x3, 32  #2456 pc 33296
	sw	%x6, 28(%x7)  #2456 pc 33300
	lw	%x6, 24(%x2)  #2456 pc 33304
	sw	%x6, 24(%x7)  #2456 pc 33308
	lw	%x6, 20(%x2)  #2456 pc 33312
	sw	%x6, 20(%x7)  #2456 pc 33316
	lw	%x6, 16(%x2)  #2456 pc 33320
	sw	%x6, 16(%x7)  #2456 pc 33324
	lw	%x6, 12(%x2)  #2456 pc 33328
	sw	%x6, 12(%x7)  #2456 pc 33332
	lw	%x6, 8(%x2)  #2456 pc 33336
	sw	%x6, 8(%x7)  #2456 pc 33340
	lw	%x6, 4(%x2)  #2456 pc 33344
	sw	%x6, 4(%x7)  #2456 pc 33348
	lw	%x6, 0(%x2)  #2456 pc 33352
	sw	%x6, 0(%x7)  #2456 pc 33356
	addi	%x6, %x7, 0  #2456 pc 33360
	ret #pc 33364
	nop #pc 33368
init_line_elements.3034:  #pc 33372
	bge	%x7, %x0, 12  #2461 pc 33372
	j	bge_else.9524 #pc 33376
	nop #pc 33380
	sw	%x6, 0(%x2)  #2462 pc 33384
	sw	%x7, 4(%x2)  #2462 pc 33388
	sw	%x1, 8(%x2)  #2462 pc 33392
	addi	%x2, %x2, 12  #2462 pc 33396
	jal	%x1, create_pixel.3032  #2462 pc 33400
	addi	%x2, %x2, -12  #2462 pc 33404
	lw	%x1, 8(%x2) #2462 pc 33408
	lw	%x7, 4(%x2)  #2462 pc 33412
	slli	%x8, %x7, 2  #2462 pc 33416
	lw	%x9, 0(%x2)  #2462 pc 33420
	add	%x31, %x8, %x9  #2462 pc 33424
	sw	%x6, 0(%x31)  #2462 pc 33428
	addi	%x7, %x7, -1  #2463 pc 33432
	addi	%x6, %x9, 0  #0 pc 33436
	j	init_line_elements.3034  #2463 pc 33440
	nop #pc 33444
bge_else.9524: #pc 33448
	ret #pc 33448
	nop #pc 33452
create_pixelline.3037:  #pc 33456
	lw	%x6, 4(%x29)  #0 pc 33456
	lw	%x7, 0(%x6)  #2470 pc 33460
	sw	%x6, 0(%x2)  #2470 pc 33464
	sw	%x7, 4(%x2)  #2470 pc 33468
	sw	%x1, 8(%x2)  #2470 pc 33472
	addi	%x2, %x2, 12  #2470 pc 33476
	jal	%x1, create_pixel.3032  #2470 pc 33480
	addi	%x2, %x2, -12  #2470 pc 33484
	lw	%x1, 8(%x2) #2470 pc 33488
	addi	%x7, %x6, 0  #2470 pc 33492
	lw	%x6, 4(%x2)  #2470 pc 33496
	sw	%x1, 8(%x2)  #2470 pc 33500
	addi	%x2, %x2, 12  #2470 pc 33504
	jal	%x1, create_array.2570  #2470 pc 33508
	addi	%x2, %x2, -12  #2470 pc 33512
	lw	%x1, 8(%x2) #2470 pc 33516
	lw	%x7, 0(%x2)  #2471 pc 33520
	lw	%x7, 0(%x7)  #2471 pc 33524
	addi	%x7, %x7, -2  #2471 pc 33528
	j	init_line_elements.3034  #2471 pc 33532
	nop #pc 33536
tan.3039:  #pc 33540
	fsw	%f0, 0(%x2)  #2484 pc 33540
	sw	%x1, 8(%x2)  #2484 pc 33544
	addi	%x2, %x2, 12  #2484 pc 33548
	jal	%x1, sin.2526  #2484 pc 33552
	addi	%x2, %x2, -12  #2484 pc 33556
	lw	%x1, 8(%x2) #2484 pc 33560
	flw	%f1, 0(%x2)  #2484 pc 33564
	fsw	%f0, 8(%x2)  #2484 pc 33568
	fadd	%f0, %f1, %f30  #0 pc 33572
	sw	%x1, 16(%x2)  #2484 pc 33576
	addi	%x2, %x2, 20  #2484 pc 33580
	jal	%x1, cos.2530  #2484 pc 33584
	addi	%x2, %x2, -20  #2484 pc 33588
	lw	%x1, 16(%x2) #2484 pc 33592
	flw	%f1, 8(%x2)  #2484 pc 33596
	fdiv	%f0, %f1, %f0  #2484 pc 33600
	ret #pc 33604
	nop #pc 33608
adjust_position.3041:  #pc 33612
	fmul	%f0, %f0, %f0  #2489 pc 33612
	fmv	%f2, l.6821  #0 pc 33616
	fadd	%f0, %f0, %f2  #2489 pc 33620
	fsqrt	%f0, %f0  #2489 pc 33624
	fmv	%f2, l.6263  #0 pc 33628
	fdiv	%f2, %f2, %f0  #2490 pc 33632
	fsw	%f0, 0(%x2)  #2491 pc 33636
	fsw	%f1, 8(%x2)  #2491 pc 33640
	fadd	%f0, %f2, %f30  #0 pc 33644
	sw	%x1, 16(%x2)  #2491 pc 33648
	addi	%x2, %x2, 20  #2491 pc 33652
	jal	%x1, atan.2532  #2491 pc 33656
	addi	%x2, %x2, -20  #2491 pc 33660
	lw	%x1, 16(%x2) #2491 pc 33664
	flw	%f1, 8(%x2)  #2492 pc 33668
	fmul	%f0, %f0, %f1  #2492 pc 33672
	sw	%x1, 16(%x2)  #2492 pc 33676
	addi	%x2, %x2, 20  #2492 pc 33680
	jal	%x1, tan.3039  #2492 pc 33684
	addi	%x2, %x2, -20  #2492 pc 33688
	lw	%x1, 16(%x2) #2492 pc 33692
	flw	%f1, 0(%x2)  #2493 pc 33696
	fmul	%f0, %f0, %f1  #2493 pc 33700
	ret #pc 33704
	nop #pc 33708
calc_dirvec.3044:  #pc 33712
	lw	%x9, 4(%x29)  #0 pc 33712
	addi	%x31, %x0, 5  #pc 33716
	bge	%x6, %x31, 12  #2498 pc 33720
	j	bge_else.9525 #pc 33724
	nop #pc 33728
	sw	%x8, 0(%x2)  #2499 pc 33732
	sw	%x9, 4(%x2)  #2499 pc 33736
	sw	%x7, 8(%x2)  #2499 pc 33740
	fsw	%f0, 16(%x2)  #2499 pc 33744
	fsw	%f1, 24(%x2)  #2499 pc 33748
	sw	%x1, 32(%x2)  #2499 pc 33752
	addi	%x2, %x2, 36  #2499 pc 33756
	jal	%x1, fsqr.2517  #2499 pc 33760
	addi	%x2, %x2, -36  #2499 pc 33764
	lw	%x1, 32(%x2) #2499 pc 33768
	flw	%f1, 24(%x2)  #2499 pc 33772
	fsw	%f0, 32(%x2)  #2499 pc 33776
	fadd	%f0, %f1, %f30  #0 pc 33780
	sw	%x1, 40(%x2)  #2499 pc 33784
	addi	%x2, %x2, 44  #2499 pc 33788
	jal	%x1, fsqr.2517  #2499 pc 33792
	addi	%x2, %x2, -44  #2499 pc 33796
	lw	%x1, 40(%x2) #2499 pc 33800
	flw	%f1, 32(%x2)  #2499 pc 33804
	fadd	%f0, %f1, %f0  #2499 pc 33808
	fmv	%f1, l.6263  #0 pc 33812
	fadd	%f0, %f0, %f1  #2499 pc 33816
	fsqrt	%f0, %f0  #2499 pc 33820
	flw	%f1, 16(%x2)  #2500 pc 33824
	fdiv	%f1, %f1, %f0  #2500 pc 33828
	flw	%f2, 24(%x2)  #2501 pc 33832
	fdiv	%f2, %f2, %f0  #2501 pc 33836
	fmv	%f3, l.6263  #0 pc 33840
	fdiv	%f0, %f3, %f0  #2502 pc 33844
	lw	%x6, 8(%x2)  #2505 pc 33848
	slli	%x6, %x6, 2  #2505 pc 33852
	lw	%x7, 4(%x2)  #2505 pc 33856
	add	%x31, %x6, %x7  #2505 pc 33860
	lw	%x6, 0(%x31)  #2505 pc 33864
	lw	%x7, 0(%x2)  #2506 pc 33868
	slli	%x8, %x7, 2  #2506 pc 33872
	add	%x31, %x8, %x6  #2506 pc 33876
	lw	%x8, 0(%x31)  #2506 pc 33880
	sw	%x6, 40(%x2)  #2506 pc 33884
	fsw	%f0, 48(%x2)  #2506 pc 33888
	fsw	%f2, 56(%x2)  #2506 pc 33892
	fsw	%f1, 64(%x2)  #2506 pc 33896
	addi	%x6, %x8, 0  #0 pc 33900
	sw	%x1, 72(%x2)  #2506 pc 33904
	addi	%x2, %x2, 76  #2506 pc 33908
	jal	%x1, d_vec.2720  #2506 pc 33912
	addi	%x2, %x2, -76  #2506 pc 33916
	lw	%x1, 72(%x2) #2506 pc 33920
	flw	%f0, 64(%x2)  #2506 pc 33924
	flw	%f1, 56(%x2)  #2506 pc 33928
	flw	%f2, 48(%x2)  #2506 pc 33932
	sw	%x1, 72(%x2)  #2506 pc 33936
	addi	%x2, %x2, 76  #2506 pc 33940
	jal	%x1, vecset.2621  #2506 pc 33944
	addi	%x2, %x2, -76  #2506 pc 33948
	lw	%x1, 72(%x2) #2506 pc 33952
	lw	%x6, 0(%x2)  #2507 pc 33956
	addi	%x7, %x6, 40  #2507 pc 33960
	slli	%x7, %x7, 2  #2507 pc 33964
	lw	%x8, 40(%x2)  #2507 pc 33968
	add	%x31, %x7, %x8  #2507 pc 33972
	lw	%x7, 0(%x31)  #2507 pc 33976
	addi	%x6, %x7, 0  #0 pc 33980
	sw	%x1, 72(%x2)  #2507 pc 33984
	addi	%x2, %x2, 76  #2507 pc 33988
	jal	%x1, d_vec.2720  #2507 pc 33992
	addi	%x2, %x2, -76  #2507 pc 33996
	lw	%x1, 72(%x2) #2507 pc 34000
	flw	%f0, 56(%x2)  #2507 pc 34004
	sw	%x6, 72(%x2)  #2507 pc 34008
	sw	%x1, 76(%x2)  #2507 pc 34012
	addi	%x2, %x2, 80  #2507 pc 34016
	jal	%x1, fneg.2515  #2507 pc 34020
	addi	%x2, %x2, -80  #2507 pc 34024
	lw	%x1, 76(%x2) #2507 pc 34028
	fadd	%f2, %f0, %f30  #2507 pc 34032
	flw	%f0, 64(%x2)  #2507 pc 34036
	flw	%f1, 48(%x2)  #2507 pc 34040
	lw	%x6, 72(%x2)  #2507 pc 34044
	sw	%x1, 76(%x2)  #2507 pc 34048
	addi	%x2, %x2, 80  #2507 pc 34052
	jal	%x1, vecset.2621  #2507 pc 34056
	addi	%x2, %x2, -80  #2507 pc 34060
	lw	%x1, 76(%x2) #2507 pc 34064
	lw	%x6, 0(%x2)  #2508 pc 34068
	addi	%x7, %x6, 80  #2508 pc 34072
	slli	%x7, %x7, 2  #2508 pc 34076
	lw	%x8, 40(%x2)  #2508 pc 34080
	add	%x31, %x7, %x8  #2508 pc 34084
	lw	%x7, 0(%x31)  #2508 pc 34088
	addi	%x6, %x7, 0  #0 pc 34092
	sw	%x1, 76(%x2)  #2508 pc 34096
	addi	%x2, %x2, 80  #2508 pc 34100
	jal	%x1, d_vec.2720  #2508 pc 34104
	addi	%x2, %x2, -80  #2508 pc 34108
	lw	%x1, 76(%x2) #2508 pc 34112
	flw	%f0, 64(%x2)  #2508 pc 34116
	sw	%x6, 76(%x2)  #2508 pc 34120
	sw	%x1, 80(%x2)  #2508 pc 34124
	addi	%x2, %x2, 84  #2508 pc 34128
	jal	%x1, fneg.2515  #2508 pc 34132
	addi	%x2, %x2, -84  #2508 pc 34136
	lw	%x1, 80(%x2) #2508 pc 34140
	flw	%f1, 56(%x2)  #2508 pc 34144
	fsw	%f0, 80(%x2)  #2508 pc 34148
	fadd	%f0, %f1, %f30  #0 pc 34152
	sw	%x1, 88(%x2)  #2508 pc 34156
	addi	%x2, %x2, 92  #2508 pc 34160
	jal	%x1, fneg.2515  #2508 pc 34164
	addi	%x2, %x2, -92  #2508 pc 34168
	lw	%x1, 88(%x2) #2508 pc 34172
	fadd	%f2, %f0, %f30  #2508 pc 34176
	flw	%f0, 48(%x2)  #2508 pc 34180
	flw	%f1, 80(%x2)  #2508 pc 34184
	lw	%x6, 76(%x2)  #2508 pc 34188
	sw	%x1, 88(%x2)  #2508 pc 34192
	addi	%x2, %x2, 92  #2508 pc 34196
	jal	%x1, vecset.2621  #2508 pc 34200
	addi	%x2, %x2, -92  #2508 pc 34204
	lw	%x1, 88(%x2) #2508 pc 34208
	lw	%x6, 0(%x2)  #2509 pc 34212
	addi	%x7, %x6, 1  #2509 pc 34216
	slli	%x7, %x7, 2  #2509 pc 34220
	lw	%x8, 40(%x2)  #2509 pc 34224
	add	%x31, %x7, %x8  #2509 pc 34228
	lw	%x7, 0(%x31)  #2509 pc 34232
	addi	%x6, %x7, 0  #0 pc 34236
	sw	%x1, 88(%x2)  #2509 pc 34240
	addi	%x2, %x2, 92  #2509 pc 34244
	jal	%x1, d_vec.2720  #2509 pc 34248
	addi	%x2, %x2, -92  #2509 pc 34252
	lw	%x1, 88(%x2) #2509 pc 34256
	flw	%f0, 64(%x2)  #2509 pc 34260
	sw	%x6, 88(%x2)  #2509 pc 34264
	sw	%x1, 92(%x2)  #2509 pc 34268
	addi	%x2, %x2, 96  #2509 pc 34272
	jal	%x1, fneg.2515  #2509 pc 34276
	addi	%x2, %x2, -96  #2509 pc 34280
	lw	%x1, 92(%x2) #2509 pc 34284
	flw	%f1, 56(%x2)  #2509 pc 34288
	fsw	%f0, 96(%x2)  #2509 pc 34292
	fadd	%f0, %f1, %f30  #0 pc 34296
	sw	%x1, 104(%x2)  #2509 pc 34300
	addi	%x2, %x2, 108  #2509 pc 34304
	jal	%x1, fneg.2515  #2509 pc 34308
	addi	%x2, %x2, -108  #2509 pc 34312
	lw	%x1, 104(%x2) #2509 pc 34316
	flw	%f1, 48(%x2)  #2509 pc 34320
	fsw	%f0, 104(%x2)  #2509 pc 34324
	fadd	%f0, %f1, %f30  #0 pc 34328
	sw	%x1, 112(%x2)  #2509 pc 34332
	addi	%x2, %x2, 116  #2509 pc 34336
	jal	%x1, fneg.2515  #2509 pc 34340
	addi	%x2, %x2, -116  #2509 pc 34344
	lw	%x1, 112(%x2) #2509 pc 34348
	fadd	%f2, %f0, %f30  #2509 pc 34352
	flw	%f0, 96(%x2)  #2509 pc 34356
	flw	%f1, 104(%x2)  #2509 pc 34360
	lw	%x6, 88(%x2)  #2509 pc 34364
	sw	%x1, 112(%x2)  #2509 pc 34368
	addi	%x2, %x2, 116  #2509 pc 34372
	jal	%x1, vecset.2621  #2509 pc 34376
	addi	%x2, %x2, -116  #2509 pc 34380
	lw	%x1, 112(%x2) #2509 pc 34384
	lw	%x6, 0(%x2)  #2510 pc 34388
	addi	%x7, %x6, 41  #2510 pc 34392
	slli	%x7, %x7, 2  #2510 pc 34396
	lw	%x8, 40(%x2)  #2510 pc 34400
	add	%x31, %x7, %x8  #2510 pc 34404
	lw	%x7, 0(%x31)  #2510 pc 34408
	addi	%x6, %x7, 0  #0 pc 34412
	sw	%x1, 112(%x2)  #2510 pc 34416
	addi	%x2, %x2, 116  #2510 pc 34420
	jal	%x1, d_vec.2720  #2510 pc 34424
	addi	%x2, %x2, -116  #2510 pc 34428
	lw	%x1, 112(%x2) #2510 pc 34432
	flw	%f0, 64(%x2)  #2510 pc 34436
	sw	%x6, 112(%x2)  #2510 pc 34440
	sw	%x1, 116(%x2)  #2510 pc 34444
	addi	%x2, %x2, 120  #2510 pc 34448
	jal	%x1, fneg.2515  #2510 pc 34452
	addi	%x2, %x2, -120  #2510 pc 34456
	lw	%x1, 116(%x2) #2510 pc 34460
	flw	%f1, 48(%x2)  #2510 pc 34464
	fsw	%f0, 120(%x2)  #2510 pc 34468
	fadd	%f0, %f1, %f30  #0 pc 34472
	sw	%x1, 128(%x2)  #2510 pc 34476
	addi	%x2, %x2, 132  #2510 pc 34480
	jal	%x1, fneg.2515  #2510 pc 34484
	addi	%x2, %x2, -132  #2510 pc 34488
	lw	%x1, 128(%x2) #2510 pc 34492
	fadd	%f1, %f0, %f30  #2510 pc 34496
	flw	%f0, 120(%x2)  #2510 pc 34500
	flw	%f2, 56(%x2)  #2510 pc 34504
	lw	%x6, 112(%x2)  #2510 pc 34508
	sw	%x1, 128(%x2)  #2510 pc 34512
	addi	%x2, %x2, 132  #2510 pc 34516
	jal	%x1, vecset.2621  #2510 pc 34520
	addi	%x2, %x2, -132  #2510 pc 34524
	lw	%x1, 128(%x2) #2510 pc 34528
	lw	%x6, 0(%x2)  #2511 pc 34532
	addi	%x6, %x6, 81  #2511 pc 34536
	slli	%x6, %x6, 2  #2511 pc 34540
	lw	%x7, 40(%x2)  #2511 pc 34544
	add	%x31, %x6, %x7  #2511 pc 34548
	lw	%x6, 0(%x31)  #2511 pc 34552
	sw	%x1, 128(%x2)  #2511 pc 34556
	addi	%x2, %x2, 132  #2511 pc 34560
	jal	%x1, d_vec.2720  #2511 pc 34564
	addi	%x2, %x2, -132  #2511 pc 34568
	lw	%x1, 128(%x2) #2511 pc 34572
	flw	%f0, 48(%x2)  #2511 pc 34576
	sw	%x6, 128(%x2)  #2511 pc 34580
	sw	%x1, 132(%x2)  #2511 pc 34584
	addi	%x2, %x2, 136  #2511 pc 34588
	jal	%x1, fneg.2515  #2511 pc 34592
	addi	%x2, %x2, -136  #2511 pc 34596
	lw	%x1, 132(%x2) #2511 pc 34600
	flw	%f1, 64(%x2)  #2511 pc 34604
	flw	%f2, 56(%x2)  #2511 pc 34608
	lw	%x6, 128(%x2)  #2511 pc 34612
	j	vecset.2621  #2511 pc 34616
	nop #pc 34620
bge_else.9525: #pc 34624
	fsw	%f2, 136(%x2)  #2513 pc 34624
	sw	%x8, 0(%x2)  #2513 pc 34628
	sw	%x7, 8(%x2)  #2513 pc 34632
	sw	%x29, 144(%x2)  #2513 pc 34636
	fsw	%f3, 152(%x2)  #2513 pc 34640
	sw	%x6, 160(%x2)  #2513 pc 34644
	fadd	%f0, %f1, %f30  #0 pc 34648
	fadd	%f1, %f2, %f30  #0 pc 34652
	sw	%x1, 164(%x2)  #2513 pc 34656
	addi	%x2, %x2, 168  #2513 pc 34660
	jal	%x1, adjust_position.3041  #2513 pc 34664
	addi	%x2, %x2, -168  #2513 pc 34668
	lw	%x1, 164(%x2) #2513 pc 34672
	lw	%x6, 160(%x2)  #2514 pc 34676
	addi	%x6, %x6, 1  #2514 pc 34680
	flw	%f1, 152(%x2)  #2514 pc 34684
	fsw	%f0, 168(%x2)  #2514 pc 34688
	sw	%x6, 176(%x2)  #2514 pc 34692
	sw	%x1, 180(%x2)  #2514 pc 34696
	addi	%x2, %x2, 184  #2514 pc 34700
	jal	%x1, adjust_position.3041  #2514 pc 34704
	addi	%x2, %x2, -184  #2514 pc 34708
	lw	%x1, 180(%x2) #2514 pc 34712
	fadd	%f1, %f0, %f30  #2514 pc 34716
	flw	%f0, 168(%x2)  #2514 pc 34720
	flw	%f2, 136(%x2)  #2514 pc 34724
	flw	%f3, 152(%x2)  #2514 pc 34728
	lw	%x6, 176(%x2)  #2514 pc 34732
	lw	%x7, 8(%x2)  #2514 pc 34736
	lw	%x8, 0(%x2)  #2514 pc 34740
	lw	%x29, 144(%x2)  #2514 pc 34744
	lw	%x30, 0(%x29)  #2514 pc 34748
	jalr	%x0, %x30, 0  #2514 pc 34752
	nop #pc 34756
calc_dirvecs.3052:  #pc 34760
	lw	%x9, 4(%x29)  #0 pc 34760
	bge	%x6, %x0, 12  #2519 pc 34764
	j	bge_else.9533 #pc 34768
	nop #pc 34772
	sw	%x29, 0(%x2)  #2521 pc 34776
	sw	%x6, 4(%x2)  #2521 pc 34780
	fsw	%f0, 8(%x2)  #2521 pc 34784
	sw	%x8, 16(%x2)  #2521 pc 34788
	sw	%x7, 20(%x2)  #2521 pc 34792
	sw	%x9, 24(%x2)  #2521 pc 34796
	sw	%x1, 28(%x2)  #2521 pc 34800
	addi	%x2, %x2, 32  #2521 pc 34804
	jal	%x1, float_of_int.2538  #2521 pc 34808
	addi	%x2, %x2, -32  #2521 pc 34812
	lw	%x1, 28(%x2) #2521 pc 34816
	fmv	%f1, l.6277  #0 pc 34820
	fmul	%f0, %f0, %f1  #2521 pc 34824
	fmv	%f1, l.6954  #0 pc 34828
	fsub	%f2, %f0, %f1  #2521 pc 34832
	addi	%x6, %x0, 0  #0 pc 34836
	fmv	%f0, l.6244  #0 pc 34840
	fmv	%f1, l.6244  #0 pc 34844
	flw	%f3, 8(%x2)  #2522 pc 34848
	lw	%x7, 20(%x2)  #2522 pc 34852
	lw	%x8, 16(%x2)  #2522 pc 34856
	lw	%x29, 24(%x2)  #2522 pc 34860
	sw	%x1, 28(%x2)  #2522 pc 34864
	lw	%x30, 0(%x29)  #2522 pc 34868
	addi	%x2, %x2, 32  #2522 pc 34872
	jalr	%x1, %x30, 0  #2522 pc 34876
	addi	%x2, %x2, -32  #2522 pc 34880
	lw	%x1, 28(%x2)  #2522 pc 34884
	lw	%x6, 4(%x2)  #2524 pc 34888
	sw	%x1, 28(%x2)  #2524 pc 34892
	addi	%x2, %x2, 32  #2524 pc 34896
	jal	%x1, float_of_int.2538  #2524 pc 34900
	addi	%x2, %x2, -32  #2524 pc 34904
	lw	%x1, 28(%x2) #2524 pc 34908
	fmv	%f1, l.6277  #0 pc 34912
	fmul	%f0, %f0, %f1  #2524 pc 34916
	fmv	%f1, l.6821  #0 pc 34920
	fadd	%f2, %f0, %f1  #2524 pc 34924
	addi	%x6, %x0, 0  #0 pc 34928
	fmv	%f0, l.6244  #0 pc 34932
	fmv	%f1, l.6244  #0 pc 34936
	lw	%x7, 16(%x2)  #2525 pc 34940
	addi	%x8, %x7, 2  #2525 pc 34944
	flw	%f3, 8(%x2)  #2525 pc 34948
	lw	%x9, 20(%x2)  #2525 pc 34952
	lw	%x29, 24(%x2)  #2525 pc 34956
	addi	%x7, %x9, 0  #0 pc 34960
	sw	%x1, 28(%x2)  #2525 pc 34964
	lw	%x30, 0(%x29)  #2525 pc 34968
	addi	%x2, %x2, 32  #2525 pc 34972
	jalr	%x1, %x30, 0  #2525 pc 34976
	addi	%x2, %x2, -32  #2525 pc 34980
	lw	%x1, 28(%x2)  #2525 pc 34984
	lw	%x6, 4(%x2)  #2527 pc 34988
	addi	%x6, %x6, -1  #2527 pc 34992
	addi	%x7, %x0, 1  #0 pc 34996
	lw	%x8, 20(%x2)  #2527 pc 35000
	sw	%x6, 28(%x2)  #2527 pc 35004
	addi	%x6, %x8, 0  #0 pc 35008
	sw	%x1, 32(%x2)  #2527 pc 35012
	addi	%x2, %x2, 36  #2527 pc 35016
	jal	%x1, add_mod5.2618  #2527 pc 35020
	addi	%x2, %x2, -36  #2527 pc 35024
	lw	%x1, 32(%x2) #2527 pc 35028
	addi	%x7, %x6, 0  #2527 pc 35032
	flw	%f0, 8(%x2)  #2527 pc 35036
	lw	%x6, 28(%x2)  #2527 pc 35040
	lw	%x8, 16(%x2)  #2527 pc 35044
	lw	%x29, 0(%x2)  #2527 pc 35048
	lw	%x30, 0(%x29)  #2527 pc 35052
	jalr	%x0, %x30, 0  #2527 pc 35056
	nop #pc 35060
bge_else.9533: #pc 35064
	ret #pc 35064
	nop #pc 35068
calc_dirvec_rows.3057:  #pc 35072
	lw	%x9, 4(%x29)  #0 pc 35072
	bge	%x6, %x0, 12  #2533 pc 35076
	j	bge_else.9535 #pc 35080
	nop #pc 35084
	sw	%x29, 0(%x2)  #2534 pc 35088
	sw	%x6, 4(%x2)  #2534 pc 35092
	sw	%x8, 8(%x2)  #2534 pc 35096
	sw	%x7, 12(%x2)  #2534 pc 35100
	sw	%x9, 16(%x2)  #2534 pc 35104
	sw	%x1, 20(%x2)  #2534 pc 35108
	addi	%x2, %x2, 24  #2534 pc 35112
	jal	%x1, float_of_int.2538  #2534 pc 35116
	addi	%x2, %x2, -24  #2534 pc 35120
	lw	%x1, 20(%x2) #2534 pc 35124
	fmv	%f1, l.6277  #0 pc 35128
	fmul	%f0, %f0, %f1  #2534 pc 35132
	fmv	%f1, l.6954  #0 pc 35136
	fsub	%f0, %f0, %f1  #2534 pc 35140
	addi	%x6, %x0, 4  #0 pc 35144
	lw	%x7, 12(%x2)  #2535 pc 35148
	lw	%x8, 8(%x2)  #2535 pc 35152
	lw	%x29, 16(%x2)  #2535 pc 35156
	sw	%x1, 20(%x2)  #2535 pc 35160
	lw	%x30, 0(%x29)  #2535 pc 35164
	addi	%x2, %x2, 24  #2535 pc 35168
	jalr	%x1, %x30, 0  #2535 pc 35172
	addi	%x2, %x2, -24  #2535 pc 35176
	lw	%x1, 20(%x2)  #2535 pc 35180
	lw	%x6, 4(%x2)  #2536 pc 35184
	addi	%x6, %x6, -1  #2536 pc 35188
	addi	%x7, %x0, 2  #0 pc 35192
	lw	%x8, 12(%x2)  #2536 pc 35196
	sw	%x6, 20(%x2)  #2536 pc 35200
	addi	%x6, %x8, 0  #0 pc 35204
	sw	%x1, 24(%x2)  #2536 pc 35208
	addi	%x2, %x2, 28  #2536 pc 35212
	jal	%x1, add_mod5.2618  #2536 pc 35216
	addi	%x2, %x2, -28  #2536 pc 35220
	lw	%x1, 24(%x2) #2536 pc 35224
	addi	%x7, %x6, 0  #2536 pc 35228
	lw	%x6, 8(%x2)  #2536 pc 35232
	addi	%x8, %x6, 4  #2536 pc 35236
	lw	%x6, 20(%x2)  #2536 pc 35240
	lw	%x29, 0(%x2)  #2536 pc 35244
	lw	%x30, 0(%x29)  #2536 pc 35248
	jalr	%x0, %x30, 0  #2536 pc 35252
	nop #pc 35256
bge_else.9535: #pc 35260
	ret #pc 35260
	nop #pc 35264
create_dirvec.3061:  #pc 35268
	lw	%x6, 4(%x29)  #0 pc 35268
	addi	%x7, %x0, 3  #0 pc 35272
	fmv	%f0, l.6244  #0 pc 35276
	sw	%x6, 0(%x2)  #2546 pc 35280
	addi	%x6, %x7, 0  #0 pc 35284
	sw	%x1, 4(%x2)  #2546 pc 35288
	addi	%x2, %x2, 8  #2546 pc 35292
	jal	%x1, create_float_array.2577  #2546 pc 35296
	addi	%x2, %x2, -8  #2546 pc 35300
	lw	%x1, 4(%x2) #2546 pc 35304
	addi	%x7, %x6, 0  #2546 pc 35308
	lw	%x6, 0(%x2)  #2547 pc 35312
	lw	%x6, 0(%x6)  #2547 pc 35316
	sw	%x7, 4(%x2)  #2547 pc 35320
	sw	%x1, 8(%x2)  #2547 pc 35324
	addi	%x2, %x2, 12  #2547 pc 35328
	jal	%x1, create_array.2570  #2547 pc 35332
	addi	%x2, %x2, -12  #2547 pc 35336
	lw	%x1, 8(%x2) #2547 pc 35340
	addi	%x7, %x3, 0  #2548 pc 35344
	addi	%x3, %x3, 8  #2548 pc 35348
	sw	%x6, 4(%x7)  #2548 pc 35352
	lw	%x6, 4(%x2)  #2548 pc 35356
	sw	%x6, 0(%x7)  #2548 pc 35360
	addi	%x6, %x7, 0  #2548 pc 35364
	ret #pc 35368
	nop #pc 35372
create_dirvec_elements.3063:  #pc 35376
	lw	%x8, 4(%x29)  #0 pc 35376
	bge	%x7, %x0, 12  #2552 pc 35380
	j	bge_else.9537 #pc 35384
	nop #pc 35388
	sw	%x29, 0(%x2)  #2553 pc 35392
	sw	%x6, 4(%x2)  #2553 pc 35396
	sw	%x7, 8(%x2)  #2553 pc 35400
	addi	%x29, %x8, 0  #0 pc 35404
	sw	%x1, 12(%x2)  #2553 pc 35408
	lw	%x30, 0(%x29)  #2553 pc 35412
	addi	%x2, %x2, 16  #2553 pc 35416
	jalr	%x1, %x30, 0  #2553 pc 35420
	addi	%x2, %x2, -16  #2553 pc 35424
	lw	%x1, 12(%x2)  #2553 pc 35428
	lw	%x7, 8(%x2)  #2553 pc 35432
	slli	%x8, %x7, 2  #2553 pc 35436
	lw	%x9, 4(%x2)  #2553 pc 35440
	add	%x31, %x8, %x9  #2553 pc 35444
	sw	%x6, 0(%x31)  #2553 pc 35448
	addi	%x7, %x7, -1  #2554 pc 35452
	lw	%x29, 0(%x2)  #2554 pc 35456
	addi	%x6, %x9, 0  #0 pc 35460
	lw	%x30, 0(%x29)  #2554 pc 35464
	jalr	%x0, %x30, 0  #2554 pc 35468
	nop #pc 35472
bge_else.9537: #pc 35476
	ret #pc 35476
	nop #pc 35480
create_dirvecs.3066:  #pc 35484
	lw	%x7, 12(%x29)  #0 pc 35484
	lw	%x8, 8(%x29)  #0 pc 35488
	lw	%x9, 4(%x29)  #0 pc 35492
	bge	%x6, %x0, 12  #2559 pc 35496
	j	bge_else.9539 #pc 35500
	nop #pc 35504
	addi	%x10, %x0, 120  #0 pc 35508
	sw	%x29, 0(%x2)  #2560 pc 35512
	sw	%x8, 4(%x2)  #2560 pc 35516
	sw	%x7, 8(%x2)  #2560 pc 35520
	sw	%x6, 12(%x2)  #2560 pc 35524
	sw	%x10, 16(%x2)  #2560 pc 35528
	addi	%x29, %x9, 0  #0 pc 35532
	sw	%x1, 20(%x2)  #2560 pc 35536
	lw	%x30, 0(%x29)  #2560 pc 35540
	addi	%x2, %x2, 24  #2560 pc 35544
	jalr	%x1, %x30, 0  #2560 pc 35548
	addi	%x2, %x2, -24  #2560 pc 35552
	lw	%x1, 20(%x2)  #2560 pc 35556
	addi	%x7, %x6, 0  #2560 pc 35560
	lw	%x6, 16(%x2)  #2560 pc 35564
	sw	%x1, 20(%x2)  #2560 pc 35568
	addi	%x2, %x2, 24  #2560 pc 35572
	jal	%x1, create_array.2570  #2560 pc 35576
	addi	%x2, %x2, -24  #2560 pc 35580
	lw	%x1, 20(%x2) #2560 pc 35584
	lw	%x7, 12(%x2)  #2560 pc 35588
	slli	%x8, %x7, 2  #2560 pc 35592
	lw	%x9, 8(%x2)  #2560 pc 35596
	add	%x31, %x8, %x9  #2560 pc 35600
	sw	%x6, 0(%x31)  #2560 pc 35604
	slli	%x6, %x7, 2  #2561 pc 35608
	add	%x31, %x6, %x9  #2561 pc 35612
	lw	%x6, 0(%x31)  #2561 pc 35616
	addi	%x8, %x0, 118  #0 pc 35620
	lw	%x29, 4(%x2)  #2561 pc 35624
	addi	%x7, %x8, 0  #0 pc 35628
	sw	%x1, 20(%x2)  #2561 pc 35632
	lw	%x30, 0(%x29)  #2561 pc 35636
	addi	%x2, %x2, 24  #2561 pc 35640
	jalr	%x1, %x30, 0  #2561 pc 35644
	addi	%x2, %x2, -24  #2561 pc 35648
	lw	%x1, 20(%x2)  #2561 pc 35652
	lw	%x6, 12(%x2)  #2562 pc 35656
	addi	%x6, %x6, -1  #2562 pc 35660
	lw	%x29, 0(%x2)  #2562 pc 35664
	lw	%x30, 0(%x29)  #2562 pc 35668
	jalr	%x0, %x30, 0  #2562 pc 35672
	nop #pc 35676
bge_else.9539: #pc 35680
	ret #pc 35680
	nop #pc 35684
init_dirvec_constants.3068:  #pc 35688
	lw	%x8, 4(%x29)  #0 pc 35688
	bge	%x7, %x0, 12  #2571 pc 35692
	j	bge_else.9541 #pc 35696
	nop #pc 35700
	slli	%x9, %x7, 2  #2572 pc 35704
	add	%x31, %x9, %x6  #2572 pc 35708
	lw	%x9, 0(%x31)  #2572 pc 35712
	sw	%x6, 0(%x2)  #2572 pc 35716
	sw	%x29, 4(%x2)  #2572 pc 35720
	sw	%x7, 8(%x2)  #2572 pc 35724
	addi	%x6, %x9, 0  #0 pc 35728
	addi	%x29, %x8, 0  #0 pc 35732
	sw	%x1, 12(%x2)  #2572 pc 35736
	lw	%x30, 0(%x29)  #2572 pc 35740
	addi	%x2, %x2, 16  #2572 pc 35744
	jalr	%x1, %x30, 0  #2572 pc 35748
	addi	%x2, %x2, -16  #2572 pc 35752
	lw	%x1, 12(%x2)  #2572 pc 35756
	lw	%x6, 8(%x2)  #2573 pc 35760
	addi	%x7, %x6, -1  #2573 pc 35764
	lw	%x6, 0(%x2)  #2573 pc 35768
	lw	%x29, 4(%x2)  #2573 pc 35772
	lw	%x30, 0(%x29)  #2573 pc 35776
	jalr	%x0, %x30, 0  #2573 pc 35780
	nop #pc 35784
bge_else.9541: #pc 35788
	ret #pc 35788
	nop #pc 35792
init_vecset_constants.3071:  #pc 35796
	lw	%x7, 8(%x29)  #0 pc 35796
	lw	%x8, 4(%x29)  #0 pc 35800
	bge	%x6, %x0, 12  #2578 pc 35804
	j	bge_else.9543 #pc 35808
	nop #pc 35812
	slli	%x9, %x6, 2  #2579 pc 35816
	add	%x31, %x9, %x8  #2579 pc 35820
	lw	%x8, 0(%x31)  #2579 pc 35824
	addi	%x9, %x0, 119  #0 pc 35828
	sw	%x29, 0(%x2)  #2579 pc 35832
	sw	%x6, 4(%x2)  #2579 pc 35836
	addi	%x6, %x8, 0  #0 pc 35840
	addi	%x29, %x7, 0  #0 pc 35844
	addi	%x7, %x9, 0  #0 pc 35848
	sw	%x1, 8(%x2)  #2579 pc 35852
	lw	%x30, 0(%x29)  #2579 pc 35856
	addi	%x2, %x2, 12  #2579 pc 35860
	jalr	%x1, %x30, 0  #2579 pc 35864
	addi	%x2, %x2, -12  #2579 pc 35868
	lw	%x1, 8(%x2)  #2579 pc 35872
	lw	%x6, 4(%x2)  #2580 pc 35876
	addi	%x6, %x6, -1  #2580 pc 35880
	lw	%x29, 0(%x2)  #2580 pc 35884
	lw	%x30, 0(%x29)  #2580 pc 35888
	jalr	%x0, %x30, 0  #2580 pc 35892
	nop #pc 35896
bge_else.9543: #pc 35900
	ret #pc 35900
	nop #pc 35904
init_dirvecs.3073:  #pc 35908
	lw	%x6, 12(%x29)  #0 pc 35908
	lw	%x7, 8(%x29)  #0 pc 35912
	lw	%x8, 4(%x29)  #0 pc 35916
	addi	%x9, %x0, 4  #0 pc 35920
	sw	%x6, 0(%x2)  #2585 pc 35924
	sw	%x8, 4(%x2)  #2585 pc 35928
	addi	%x6, %x9, 0  #0 pc 35932
	addi	%x29, %x7, 0  #0 pc 35936
	sw	%x1, 8(%x2)  #2585 pc 35940
	lw	%x30, 0(%x29)  #2585 pc 35944
	addi	%x2, %x2, 12  #2585 pc 35948
	jalr	%x1, %x30, 0  #2585 pc 35952
	addi	%x2, %x2, -12  #2585 pc 35956
	lw	%x1, 8(%x2)  #2585 pc 35960
	addi	%x6, %x0, 9  #0 pc 35964
	addi	%x7, %x0, 0  #0 pc 35968
	addi	%x8, %x0, 0  #0 pc 35972
	lw	%x29, 4(%x2)  #2586 pc 35976
	sw	%x1, 8(%x2)  #2586 pc 35980
	lw	%x30, 0(%x29)  #2586 pc 35984
	addi	%x2, %x2, 12  #2586 pc 35988
	jalr	%x1, %x30, 0  #2586 pc 35992
	addi	%x2, %x2, -12  #2586 pc 35996
	lw	%x1, 8(%x2)  #2586 pc 36000
	addi	%x6, %x0, 4  #0 pc 36004
	lw	%x29, 0(%x2)  #2587 pc 36008
	lw	%x30, 0(%x29)  #2587 pc 36012
	jalr	%x0, %x30, 0  #2587 pc 36016
	nop #pc 36020
add_reflection.3075:  #pc 36024
	lw	%x8, 12(%x29)  #0 pc 36024
	lw	%x9, 8(%x29)  #0 pc 36028
	lw	%x29, 4(%x29)  #0 pc 36032
	sw	%x9, 0(%x2)  #2596 pc 36036
	sw	%x6, 4(%x2)  #2596 pc 36040
	sw	%x7, 8(%x2)  #2596 pc 36044
	fsw	%f0, 16(%x2)  #2596 pc 36048
	sw	%x8, 24(%x2)  #2596 pc 36052
	fsw	%f3, 32(%x2)  #2596 pc 36056
	fsw	%f2, 40(%x2)  #2596 pc 36060
	fsw	%f1, 48(%x2)  #2596 pc 36064
	sw	%x1, 56(%x2)  #2596 pc 36068
	lw	%x30, 0(%x29)  #2596 pc 36072
	addi	%x2, %x2, 60  #2596 pc 36076
	jalr	%x1, %x30, 0  #2596 pc 36080
	addi	%x2, %x2, -60  #2596 pc 36084
	lw	%x1, 56(%x2)  #2596 pc 36088
	sw	%x6, 56(%x2)  #2597 pc 36092
	sw	%x1, 60(%x2)  #2597 pc 36096
	addi	%x2, %x2, 64  #2597 pc 36100
	jal	%x1, d_vec.2720  #2597 pc 36104
	addi	%x2, %x2, -64  #2597 pc 36108
	lw	%x1, 60(%x2) #2597 pc 36112
	flw	%f0, 48(%x2)  #2597 pc 36116
	flw	%f1, 40(%x2)  #2597 pc 36120
	flw	%f2, 32(%x2)  #2597 pc 36124
	sw	%x1, 60(%x2)  #2597 pc 36128
	addi	%x2, %x2, 64  #2597 pc 36132
	jal	%x1, vecset.2621  #2597 pc 36136
	addi	%x2, %x2, -64  #2597 pc 36140
	lw	%x1, 60(%x2) #2597 pc 36144
	lw	%x6, 56(%x2)  #2598 pc 36148
	lw	%x29, 24(%x2)  #2598 pc 36152
	sw	%x1, 60(%x2)  #2598 pc 36156
	lw	%x30, 0(%x29)  #2598 pc 36160
	addi	%x2, %x2, 64  #2598 pc 36164
	jalr	%x1, %x30, 0  #2598 pc 36168
	addi	%x2, %x2, -64  #2598 pc 36172
	lw	%x1, 60(%x2)  #2598 pc 36176
	addi	%x6, %x3, 0  #2600 pc 36180
	addi	%x3, %x3, 12  #2600 pc 36184
	flw	%f0, 16(%x2)  #2600 pc 36188
	fsw	%f0, 8(%x6)  #2600 pc 36192
	lw	%x7, 56(%x2)  #2600 pc 36196
	sw	%x7, 4(%x6)  #2600 pc 36200
	lw	%x7, 8(%x2)  #2600 pc 36204
	sw	%x7, 0(%x6)  #2600 pc 36208
	lw	%x7, 4(%x2)  #2600 pc 36212
	slli	%x7, %x7, 2  #2600 pc 36216
	lw	%x8, 0(%x2)  #2600 pc 36220
	add	%x31, %x7, %x8  #2600 pc 36224
	sw	%x6, 0(%x31)  #2600 pc 36228
	ret #pc 36232
	nop #pc 36236
setup_rect_reflection.3082:  #pc 36240
	lw	%x8, 12(%x29)  #0 pc 36240
	lw	%x9, 8(%x29)  #0 pc 36244
	lw	%x10, 4(%x29)  #0 pc 36248
	addi	%x11, %x0, 4  #0 pc 36252
	sw	%x10, 0(%x2)  #2605 pc 36256
	sw	%x9, 4(%x2)  #2605 pc 36260
	sw	%x7, 8(%x2)  #2605 pc 36264
	sw	%x8, 12(%x2)  #2605 pc 36268
	addi	%x7, %x11, 0  #0 pc 36272
	sw	%x1, 16(%x2)  #2605 pc 36276
	addi	%x2, %x2, 20  #2605 pc 36280
	jal	%x1, mul.2547  #2605 pc 36284
	addi	%x2, %x2, -20  #2605 pc 36288
	lw	%x1, 16(%x2) #2605 pc 36292
	lw	%x7, 12(%x2)  #2606 pc 36296
	lw	%x8, 0(%x7)  #2606 pc 36300
	fmv	%f0, l.6263  #0 pc 36304
	lw	%x9, 8(%x2)  #2607 pc 36308
	sw	%x8, 16(%x2)  #2607 pc 36312
	sw	%x6, 20(%x2)  #2607 pc 36316
	fsw	%f0, 24(%x2)  #2607 pc 36320
	addi	%x6, %x9, 0  #0 pc 36324
	sw	%x1, 32(%x2)  #2607 pc 36328
	addi	%x2, %x2, 36  #2607 pc 36332
	jal	%x1, o_diffuse.2683  #2607 pc 36336
	addi	%x2, %x2, -36  #2607 pc 36340
	lw	%x1, 32(%x2) #2607 pc 36344
	flw	%f1, 24(%x2)  #2607 pc 36348
	fsub	%f0, %f1, %f0  #2607 pc 36352
	lw	%x6, 4(%x2)  #2608 pc 36356
	flw	%f1, 0(%x6)  #2608 pc 36360
	fsw	%f0, 32(%x2)  #2608 pc 36364
	fadd	%f0, %f1, %f30  #0 pc 36368
	sw	%x1, 40(%x2)  #2608 pc 36372
	addi	%x2, %x2, 44  #2608 pc 36376
	jal	%x1, fneg.2515  #2608 pc 36380
	addi	%x2, %x2, -44  #2608 pc 36384
	lw	%x1, 40(%x2) #2608 pc 36388
	lw	%x6, 4(%x2)  #2609 pc 36392
	flw	%f1, 4(%x6)  #2609 pc 36396
	fsw	%f0, 40(%x2)  #2609 pc 36400
	fadd	%f0, %f1, %f30  #0 pc 36404
	sw	%x1, 48(%x2)  #2609 pc 36408
	addi	%x2, %x2, 52  #2609 pc 36412
	jal	%x1, fneg.2515  #2609 pc 36416
	addi	%x2, %x2, -52  #2609 pc 36420
	lw	%x1, 48(%x2) #2609 pc 36424
	lw	%x6, 4(%x2)  #2610 pc 36428
	flw	%f1, 8(%x6)  #2610 pc 36432
	fsw	%f0, 48(%x2)  #2610 pc 36436
	fadd	%f0, %f1, %f30  #0 pc 36440
	sw	%x1, 56(%x2)  #2610 pc 36444
	addi	%x2, %x2, 60  #2610 pc 36448
	jal	%x1, fneg.2515  #2610 pc 36452
	addi	%x2, %x2, -60  #2610 pc 36456
	lw	%x1, 56(%x2) #2610 pc 36460
	fadd	%f3, %f0, %f30  #2610 pc 36464
	lw	%x6, 20(%x2)  #2611 pc 36468
	addi	%x7, %x6, 1  #2611 pc 36472
	lw	%x8, 4(%x2)  #2611 pc 36476
	flw	%f1, 0(%x8)  #2611 pc 36480
	flw	%f0, 32(%x2)  #2611 pc 36484
	flw	%f2, 48(%x2)  #2611 pc 36488
	lw	%x9, 16(%x2)  #2611 pc 36492
	lw	%x29, 0(%x2)  #2611 pc 36496
	fsw	%f3, 56(%x2)  #2611 pc 36500
	addi	%x6, %x9, 0  #0 pc 36504
	sw	%x1, 64(%x2)  #2611 pc 36508
	lw	%x30, 0(%x29)  #2611 pc 36512
	addi	%x2, %x2, 68  #2611 pc 36516
	jalr	%x1, %x30, 0  #2611 pc 36520
	addi	%x2, %x2, -68  #2611 pc 36524
	lw	%x1, 64(%x2)  #2611 pc 36528
	lw	%x6, 16(%x2)  #2612 pc 36532
	addi	%x7, %x6, 1  #2612 pc 36536
	lw	%x8, 20(%x2)  #2612 pc 36540
	addi	%x9, %x8, 2  #2612 pc 36544
	lw	%x10, 4(%x2)  #2612 pc 36548
	flw	%f2, 4(%x10)  #2612 pc 36552
	flw	%f0, 32(%x2)  #2612 pc 36556
	flw	%f1, 40(%x2)  #2612 pc 36560
	flw	%f3, 56(%x2)  #2612 pc 36564
	lw	%x29, 0(%x2)  #2612 pc 36568
	addi	%x6, %x7, 0  #0 pc 36572
	addi	%x7, %x9, 0  #0 pc 36576
	sw	%x1, 64(%x2)  #2612 pc 36580
	lw	%x30, 0(%x29)  #2612 pc 36584
	addi	%x2, %x2, 68  #2612 pc 36588
	jalr	%x1, %x30, 0  #2612 pc 36592
	addi	%x2, %x2, -68  #2612 pc 36596
	lw	%x1, 64(%x2)  #2612 pc 36600
	lw	%x6, 16(%x2)  #2613 pc 36604
	addi	%x7, %x6, 2  #2613 pc 36608
	lw	%x8, 20(%x2)  #2613 pc 36612
	addi	%x8, %x8, 3  #2613 pc 36616
	lw	%x9, 4(%x2)  #2613 pc 36620
	flw	%f3, 8(%x9)  #2613 pc 36624
	flw	%f0, 32(%x2)  #2613 pc 36628
	flw	%f1, 40(%x2)  #2613 pc 36632
	flw	%f2, 48(%x2)  #2613 pc 36636
	lw	%x29, 0(%x2)  #2613 pc 36640
	addi	%x6, %x7, 0  #0 pc 36644
	addi	%x7, %x8, 0  #0 pc 36648
	sw	%x1, 64(%x2)  #2613 pc 36652
	lw	%x30, 0(%x29)  #2613 pc 36656
	addi	%x2, %x2, 68  #2613 pc 36660
	jalr	%x1, %x30, 0  #2613 pc 36664
	addi	%x2, %x2, -68  #2613 pc 36668
	lw	%x1, 64(%x2)  #2613 pc 36672
	lw	%x6, 16(%x2)  #2614 pc 36676
	addi	%x6, %x6, 3  #2614 pc 36680
	lw	%x7, 12(%x2)  #2614 pc 36684
	sw	%x6, 0(%x7)  #2614 pc 36688
	ret #pc 36692
	nop #pc 36696
setup_surface_reflection.3085:  #pc 36700
	lw	%x8, 12(%x29)  #0 pc 36700
	lw	%x9, 8(%x29)  #0 pc 36704
	lw	%x10, 4(%x29)  #0 pc 36708
	addi	%x11, %x0, 4  #0 pc 36712
	sw	%x10, 0(%x2)  #2619 pc 36716
	sw	%x9, 4(%x2)  #2619 pc 36720
	sw	%x7, 8(%x2)  #2619 pc 36724
	sw	%x8, 12(%x2)  #2619 pc 36728
	addi	%x7, %x11, 0  #0 pc 36732
	sw	%x1, 16(%x2)  #2619 pc 36736
	addi	%x2, %x2, 20  #2619 pc 36740
	jal	%x1, mul.2547  #2619 pc 36744
	addi	%x2, %x2, -20  #2619 pc 36748
	lw	%x1, 16(%x2) #2619 pc 36752
	addi	%x6, %x6, 1  #2619 pc 36756
	lw	%x7, 12(%x2)  #2620 pc 36760
	lw	%x8, 0(%x7)  #2620 pc 36764
	fmv	%f0, l.6263  #0 pc 36768
	lw	%x9, 8(%x2)  #2621 pc 36772
	sw	%x6, 16(%x2)  #2621 pc 36776
	sw	%x8, 20(%x2)  #2621 pc 36780
	fsw	%f0, 24(%x2)  #2621 pc 36784
	addi	%x6, %x9, 0  #0 pc 36788
	sw	%x1, 32(%x2)  #2621 pc 36792
	addi	%x2, %x2, 36  #2621 pc 36796
	jal	%x1, o_diffuse.2683  #2621 pc 36800
	addi	%x2, %x2, -36  #2621 pc 36804
	lw	%x1, 32(%x2) #2621 pc 36808
	flw	%f1, 24(%x2)  #2621 pc 36812
	fsub	%f0, %f1, %f0  #2621 pc 36816
	lw	%x6, 8(%x2)  #2622 pc 36820
	fsw	%f0, 32(%x2)  #2622 pc 36824
	sw	%x1, 40(%x2)  #2622 pc 36828
	addi	%x2, %x2, 44  #2622 pc 36832
	jal	%x1, o_param_abc.2675  #2622 pc 36836
	addi	%x2, %x2, -44  #2622 pc 36840
	lw	%x1, 40(%x2) #2622 pc 36844
	addi	%x7, %x6, 0  #2622 pc 36848
	lw	%x6, 4(%x2)  #2622 pc 36852
	sw	%x1, 40(%x2)  #2622 pc 36856
	addi	%x2, %x2, 44  #2622 pc 36860
	jal	%x1, veciprod.2637  #2622 pc 36864
	addi	%x2, %x2, -44  #2622 pc 36868
	lw	%x1, 40(%x2) #2622 pc 36872
	fmv	%f1, l.6425  #0 pc 36876
	lw	%x6, 8(%x2)  #2625 pc 36880
	fsw	%f0, 40(%x2)  #2625 pc 36884
	fsw	%f1, 48(%x2)  #2625 pc 36888
	sw	%x1, 56(%x2)  #2625 pc 36892
	addi	%x2, %x2, 60  #2625 pc 36896
	jal	%x1, o_param_a.2669  #2625 pc 36900
	addi	%x2, %x2, -60  #2625 pc 36904
	lw	%x1, 56(%x2) #2625 pc 36908
	flw	%f1, 48(%x2)  #2625 pc 36912
	fmul	%f0, %f1, %f0  #2625 pc 36916
	flw	%f1, 40(%x2)  #2625 pc 36920
	fmul	%f0, %f0, %f1  #2625 pc 36924
	lw	%x6, 4(%x2)  #2625 pc 36928
	flw	%f2, 0(%x6)  #2625 pc 36932
	fsub	%f0, %f0, %f2  #2625 pc 36936
	fmv	%f2, l.6425  #0 pc 36940
	lw	%x7, 8(%x2)  #2626 pc 36944
	fsw	%f0, 56(%x2)  #2626 pc 36948
	fsw	%f2, 64(%x2)  #2626 pc 36952
	addi	%x6, %x7, 0  #0 pc 36956
	sw	%x1, 72(%x2)  #2626 pc 36960
	addi	%x2, %x2, 76  #2626 pc 36964
	jal	%x1, o_param_b.2671  #2626 pc 36968
	addi	%x2, %x2, -76  #2626 pc 36972
	lw	%x1, 72(%x2) #2626 pc 36976
	flw	%f1, 64(%x2)  #2626 pc 36980
	fmul	%f0, %f1, %f0  #2626 pc 36984
	flw	%f1, 40(%x2)  #2626 pc 36988
	fmul	%f0, %f0, %f1  #2626 pc 36992
	lw	%x6, 4(%x2)  #2626 pc 36996
	flw	%f2, 4(%x6)  #2626 pc 37000
	fsub	%f0, %f0, %f2  #2626 pc 37004
	fmv	%f2, l.6425  #0 pc 37008
	lw	%x7, 8(%x2)  #2627 pc 37012
	fsw	%f0, 72(%x2)  #2627 pc 37016
	fsw	%f2, 80(%x2)  #2627 pc 37020
	addi	%x6, %x7, 0  #0 pc 37024
	sw	%x1, 88(%x2)  #2627 pc 37028
	addi	%x2, %x2, 92  #2627 pc 37032
	jal	%x1, o_param_c.2673  #2627 pc 37036
	addi	%x2, %x2, -92  #2627 pc 37040
	lw	%x1, 88(%x2) #2627 pc 37044
	flw	%f1, 80(%x2)  #2627 pc 37048
	fmul	%f0, %f1, %f0  #2627 pc 37052
	flw	%f1, 40(%x2)  #2627 pc 37056
	fmul	%f0, %f0, %f1  #2627 pc 37060
	lw	%x6, 4(%x2)  #2627 pc 37064
	flw	%f1, 8(%x6)  #2627 pc 37068
	fsub	%f3, %f0, %f1  #2627 pc 37072
	flw	%f0, 32(%x2)  #2624 pc 37076
	flw	%f1, 56(%x2)  #2624 pc 37080
	flw	%f2, 72(%x2)  #2624 pc 37084
	lw	%x6, 20(%x2)  #2624 pc 37088
	lw	%x7, 16(%x2)  #2624 pc 37092
	lw	%x29, 0(%x2)  #2624 pc 37096
	sw	%x1, 88(%x2)  #2624 pc 37100
	lw	%x30, 0(%x29)  #2624 pc 37104
	addi	%x2, %x2, 92  #2624 pc 37108
	jalr	%x1, %x30, 0  #2624 pc 37112
	addi	%x2, %x2, -92  #2624 pc 37116
	lw	%x1, 88(%x2)  #2624 pc 37120
	lw	%x6, 20(%x2)  #2628 pc 37124
	addi	%x6, %x6, 1  #2628 pc 37128
	lw	%x7, 12(%x2)  #2628 pc 37132
	sw	%x6, 0(%x7)  #2628 pc 37136
	ret #pc 37140
	nop #pc 37144
setup_reflections.3088:  #pc 37148
	lw	%x7, 12(%x29)  #0 pc 37148
	lw	%x8, 8(%x29)  #0 pc 37152
	lw	%x9, 4(%x29)  #0 pc 37156
	bge	%x6, %x0, 12  #2634 pc 37160
	j	bge_else.9550 #pc 37164
	nop #pc 37168
	slli	%x10, %x6, 2  #2635 pc 37172
	add	%x31, %x10, %x9  #2635 pc 37176
	lw	%x9, 0(%x31)  #2635 pc 37180
	sw	%x7, 0(%x2)  #2636 pc 37184
	sw	%x6, 4(%x2)  #2636 pc 37188
	sw	%x8, 8(%x2)  #2636 pc 37192
	sw	%x9, 12(%x2)  #2636 pc 37196
	addi	%x6, %x9, 0  #0 pc 37200
	sw	%x1, 16(%x2)  #2636 pc 37204
	addi	%x2, %x2, 20  #2636 pc 37208
	jal	%x1, o_reflectiontype.2663  #2636 pc 37212
	addi	%x2, %x2, -20  #2636 pc 37216
	lw	%x1, 16(%x2) #2636 pc 37220
	addi	%x31, %x0, 2  #pc 37224
	beq	%x6, %x31, 12  #2636 pc 37228
	j	be_else.9551 #pc 37232
	nop #pc 37236
	lw	%x6, 12(%x2)  #2637 pc 37240
	sw	%x1, 16(%x2)  #2637 pc 37244
	addi	%x2, %x2, 20  #2637 pc 37248
	jal	%x1, o_diffuse.2683  #2637 pc 37252
	addi	%x2, %x2, -20  #2637 pc 37256
	lw	%x1, 16(%x2) #2637 pc 37260
	fmv	%f1, l.6263  #0 pc 37264
	sw	%x1, 16(%x2)  #2637 pc 37268
	addi	%x2, %x2, 20  #2637 pc 37272
	jal	%x1, fless.2521  #2637 pc 37276
	addi	%x2, %x2, -20  #2637 pc 37280
	lw	%x1, 16(%x2) #2637 pc 37284
	beq	%x6, %x0, 12  #2637 pc 37288
	j	be_else.9552 #pc 37292
	nop #pc 37296
	ret #pc 37300
	nop #pc 37304
be_else.9552: #pc 37308
	lw	%x6, 12(%x2)  #2638 pc 37308
	sw	%x1, 16(%x2)  #2638 pc 37312
	addi	%x2, %x2, 20  #2638 pc 37316
	jal	%x1, o_form.2661  #2638 pc 37320
	addi	%x2, %x2, -20  #2638 pc 37324
	lw	%x1, 16(%x2) #2638 pc 37328
	addi	%x31, %x0, 1  #pc 37332
	beq	%x6, %x31, 12  #2640 pc 37336
	j	be_else.9554 #pc 37340
	nop #pc 37344
	lw	%x6, 4(%x2)  #2641 pc 37348
	lw	%x7, 12(%x2)  #2641 pc 37352
	lw	%x29, 8(%x2)  #2641 pc 37356
	lw	%x30, 0(%x29)  #2641 pc 37360
	jalr	%x0, %x30, 0  #2641 pc 37364
	nop #pc 37368
be_else.9554: #pc 37372
	addi	%x31, %x0, 2  #pc 37372
	beq	%x6, %x31, 12  #2642 pc 37376
	j	be_else.9555 #pc 37380
	nop #pc 37384
	lw	%x6, 4(%x2)  #2643 pc 37388
	lw	%x7, 12(%x2)  #2643 pc 37392
	lw	%x29, 0(%x2)  #2643 pc 37396
	lw	%x30, 0(%x29)  #2643 pc 37400
	jalr	%x0, %x30, 0  #2643 pc 37404
	nop #pc 37408
be_else.9555: #pc 37412
	ret #pc 37412
	nop #pc 37416
be_else.9551: #pc 37420
	ret #pc 37420
	nop #pc 37424
bge_else.9550: #pc 37428
	ret #pc 37428
	nop #pc 37432
rt.3090:  #pc 37436
	lw	%x9, 56(%x29)  #0 pc 37436
	lw	%x10, 52(%x29)  #0 pc 37440
	lw	%x11, 48(%x29)  #0 pc 37444
	lw	%x12, 44(%x29)  #0 pc 37448
	lw	%x13, 40(%x29)  #0 pc 37452
	lw	%x14, 36(%x29)  #0 pc 37456
	lw	%x15, 32(%x29)  #0 pc 37460
	lw	%x16, 28(%x29)  #0 pc 37464
	lw	%x17, 24(%x29)  #0 pc 37468
	lw	%x18, 20(%x29)  #0 pc 37472
	lw	%x19, 16(%x29)  #0 pc 37476
	lw	%x20, 12(%x29)  #0 pc 37480
	lw	%x21, 8(%x29)  #0 pc 37484
	lw	%x22, 4(%x29)  #0 pc 37488
	sw	%x6, 0(%x20)  #2656 pc 37492
	sw	%x7, 4(%x20)  #2657 pc 37496
	addi	%x20, %x0, 2  #0 pc 37500
	sw	%x13, 0(%x2)  #2658 pc 37504
	sw	%x15, 4(%x2)  #2658 pc 37508
	sw	%x10, 8(%x2)  #2658 pc 37512
	sw	%x16, 12(%x2)  #2658 pc 37516
	sw	%x11, 16(%x2)  #2658 pc 37520
	sw	%x18, 20(%x2)  #2658 pc 37524
	sw	%x17, 24(%x2)  #2658 pc 37528
	sw	%x19, 28(%x2)  #2658 pc 37532
	sw	%x8, 32(%x2)  #2658 pc 37536
	sw	%x9, 36(%x2)  #2658 pc 37540
	sw	%x14, 40(%x2)  #2658 pc 37544
	sw	%x22, 44(%x2)  #2658 pc 37548
	sw	%x12, 48(%x2)  #2658 pc 37552
	sw	%x6, 52(%x2)  #2658 pc 37556
	sw	%x7, 56(%x2)  #2658 pc 37560
	sw	%x21, 60(%x2)  #2658 pc 37564
	addi	%x7, %x20, 0  #0 pc 37568
	sw	%x1, 64(%x2)  #2658 pc 37572
	addi	%x2, %x2, 68  #2658 pc 37576
	jal	%x1, div.2555  #2658 pc 37580
	addi	%x2, %x2, -68  #2658 pc 37584
	lw	%x1, 64(%x2) #2658 pc 37588
	lw	%x7, 60(%x2)  #2658 pc 37592
	sw	%x6, 0(%x7)  #2658 pc 37596
	addi	%x6, %x0, 2  #0 pc 37600
	lw	%x8, 56(%x2)  #2659 pc 37604
	addi	%x7, %x6, 0  #0 pc 37608
	addi	%x6, %x8, 0  #0 pc 37612
	sw	%x1, 64(%x2)  #2659 pc 37616
	addi	%x2, %x2, 68  #2659 pc 37620
	jal	%x1, div.2555  #2659 pc 37624
	addi	%x2, %x2, -68  #2659 pc 37628
	lw	%x1, 64(%x2) #2659 pc 37632
	lw	%x7, 60(%x2)  #2659 pc 37636
	sw	%x6, 4(%x7)  #2659 pc 37640
	fmv	%f0, l.7003  #0 pc 37644
	lw	%x6, 52(%x2)  #2660 pc 37648
	fsw	%f0, 64(%x2)  #2660 pc 37652
	sw	%x1, 72(%x2)  #2660 pc 37656
	addi	%x2, %x2, 76  #2660 pc 37660
	jal	%x1, float_of_int.2538  #2660 pc 37664
	addi	%x2, %x2, -76  #2660 pc 37668
	lw	%x1, 72(%x2) #2660 pc 37672
	flw	%f1, 64(%x2)  #2660 pc 37676
	fdiv	%f0, %f1, %f0  #2660 pc 37680
	lw	%x6, 48(%x2)  #2660 pc 37684
	fsw	%f0, 0(%x6)  #2660 pc 37688
	lw	%x29, 44(%x2)  #2661 pc 37692
	sw	%x1, 72(%x2)  #2661 pc 37696
	lw	%x30, 0(%x29)  #2661 pc 37700
	addi	%x2, %x2, 76  #2661 pc 37704
	jalr	%x1, %x30, 0  #2661 pc 37708
	addi	%x2, %x2, -76  #2661 pc 37712
	lw	%x1, 72(%x2)  #2661 pc 37716
	lw	%x29, 44(%x2)  #2662 pc 37720
	sw	%x6, 72(%x2)  #2662 pc 37724
	sw	%x1, 76(%x2)  #2662 pc 37728
	lw	%x30, 0(%x29)  #2662 pc 37732
	addi	%x2, %x2, 80  #2662 pc 37736
	jalr	%x1, %x30, 0  #2662 pc 37740
	addi	%x2, %x2, -80  #2662 pc 37744
	lw	%x1, 76(%x2)  #2662 pc 37748
	lw	%x29, 44(%x2)  #2663 pc 37752
	sw	%x6, 76(%x2)  #2663 pc 37756
	sw	%x1, 80(%x2)  #2663 pc 37760
	lw	%x30, 0(%x29)  #2663 pc 37764
	addi	%x2, %x2, 84  #2663 pc 37768
	jalr	%x1, %x30, 0  #2663 pc 37772
	addi	%x2, %x2, -84  #2663 pc 37776
	lw	%x1, 80(%x2)  #2663 pc 37780
	lw	%x29, 40(%x2)  #2664 pc 37784
	sw	%x6, 80(%x2)  #2664 pc 37788
	sw	%x1, 84(%x2)  #2664 pc 37792
	lw	%x30, 0(%x29)  #2664 pc 37796
	addi	%x2, %x2, 88  #2664 pc 37800
	jalr	%x1, %x30, 0  #2664 pc 37804
	addi	%x2, %x2, -88  #2664 pc 37808
	lw	%x1, 84(%x2)  #2664 pc 37812
	lw	%x6, 32(%x2)  #2665 pc 37816
	lw	%x29, 36(%x2)  #2665 pc 37820
	sw	%x1, 84(%x2)  #2665 pc 37824
	lw	%x30, 0(%x29)  #2665 pc 37828
	addi	%x2, %x2, 88  #2665 pc 37832
	jalr	%x1, %x30, 0  #2665 pc 37836
	addi	%x2, %x2, -88  #2665 pc 37840
	lw	%x1, 84(%x2)  #2665 pc 37844
	lw	%x29, 28(%x2)  #2666 pc 37848
	sw	%x1, 84(%x2)  #2666 pc 37852
	lw	%x30, 0(%x29)  #2666 pc 37856
	addi	%x2, %x2, 88  #2666 pc 37860
	jalr	%x1, %x30, 0  #2666 pc 37864
	addi	%x2, %x2, -88  #2666 pc 37868
	lw	%x1, 84(%x2)  #2666 pc 37872
	lw	%x6, 24(%x2)  #2667 pc 37876
	sw	%x1, 84(%x2)  #2667 pc 37880
	addi	%x2, %x2, 88  #2667 pc 37884
	jal	%x1, d_vec.2720  #2667 pc 37888
	addi	%x2, %x2, -88  #2667 pc 37892
	lw	%x1, 84(%x2) #2667 pc 37896
	lw	%x7, 20(%x2)  #2667 pc 37900
	sw	%x1, 84(%x2)  #2667 pc 37904
	addi	%x2, %x2, 88  #2667 pc 37908
	jal	%x1, veccpy.2631  #2667 pc 37912
	addi	%x2, %x2, -88  #2667 pc 37916
	lw	%x1, 84(%x2) #2667 pc 37920
	lw	%x6, 24(%x2)  #2668 pc 37924
	lw	%x29, 16(%x2)  #2668 pc 37928
	sw	%x1, 84(%x2)  #2668 pc 37932
	lw	%x30, 0(%x29)  #2668 pc 37936
	addi	%x2, %x2, 88  #2668 pc 37940
	jalr	%x1, %x30, 0  #2668 pc 37944
	addi	%x2, %x2, -88  #2668 pc 37948
	lw	%x1, 84(%x2)  #2668 pc 37952
	lw	%x6, 12(%x2)  #2669 pc 37956
	lw	%x6, 0(%x6)  #2669 pc 37960
	addi	%x6, %x6, -1  #2669 pc 37964
	lw	%x29, 8(%x2)  #2669 pc 37968
	sw	%x1, 84(%x2)  #2669 pc 37972
	lw	%x30, 0(%x29)  #2669 pc 37976
	addi	%x2, %x2, 88  #2669 pc 37980
	jalr	%x1, %x30, 0  #2669 pc 37984
	addi	%x2, %x2, -88  #2669 pc 37988
	lw	%x1, 84(%x2)  #2669 pc 37992
	addi	%x7, %x0, 0  #0 pc 37996
	addi	%x8, %x0, 0  #0 pc 38000
	lw	%x6, 76(%x2)  #2670 pc 38004
	lw	%x29, 4(%x2)  #2670 pc 38008
	sw	%x1, 84(%x2)  #2670 pc 38012
	lw	%x30, 0(%x29)  #2670 pc 38016
	addi	%x2, %x2, 88  #2670 pc 38020
	jalr	%x1, %x30, 0  #2670 pc 38024
	addi	%x2, %x2, -88  #2670 pc 38028
	lw	%x1, 84(%x2)  #2670 pc 38032
	addi	%x6, %x0, 0  #0 pc 38036
	addi	%x10, %x0, 2  #0 pc 38040
	lw	%x7, 72(%x2)  #2671 pc 38044
	lw	%x8, 76(%x2)  #2671 pc 38048
	lw	%x9, 80(%x2)  #2671 pc 38052
	lw	%x11, 32(%x2)  #2671 pc 38056
	lw	%x29, 0(%x2)  #2671 pc 38060
	lw	%x30, 0(%x29)  #2671 pc 38064
	jalr	%x0, %x30, 0  #2671 pc 38068
	nop #pc 38072
.global	min_caml_start
min_caml_start:
	addi	%x31, %x0, 1
	slli	%x4, %x31, 13
	slli	%x5, %x31, 14
	slli	%x2, %x31, 16
	add	%x3, %x2, %x4
	addi	%x6, %x0, 1  #0 pc 38096
	addi	%x7, %x0, 0  #0 pc 38100
	sw	%x1, 0(%x2)  #250 pc 38104
	addi	%x2, %x2, 4  #250 pc 38108
	jal	%x1, create_array.2570  #250 pc 38112
	addi	%x2, %x2, -4  #250 pc 38116
	lw	%x1, 0(%x2) #250 pc 38120
	addi	%x7, %x0, 0  #0 pc 38124
	fmv	%f0, l.6244  #0 pc 38128
	sw	%x6, 0(%x2)  #255 pc 38132
	addi	%x6, %x7, 0  #0 pc 38136
	sw	%x1, 4(%x2)  #255 pc 38140
	addi	%x2, %x2, 8  #255 pc 38144
	jal	%x1, create_float_array.2577  #255 pc 38148
	addi	%x2, %x2, -8  #255 pc 38152
	lw	%x1, 4(%x2) #255 pc 38156
	addi	%x7, %x0, 60  #0 pc 38160
	addi	%x8, %x0, 0  #0 pc 38164
	addi	%x9, %x3, 0  #256 pc 38168
	addi	%x3, %x3, 44  #256 pc 38172
	sw	%x6, 40(%x9)  #256 pc 38176
	sw	%x6, 36(%x9)  #256 pc 38180
	sw	%x6, 32(%x9)  #256 pc 38184
	sw	%x6, 28(%x9)  #256 pc 38188
	sw	%x8, 24(%x9)  #256 pc 38192
	sw	%x6, 20(%x9)  #256 pc 38196
	sw	%x6, 16(%x9)  #256 pc 38200
	sw	%x8, 12(%x9)  #256 pc 38204
	sw	%x8, 8(%x9)  #256 pc 38208
	sw	%x8, 4(%x9)  #256 pc 38212
	sw	%x8, 0(%x9)  #256 pc 38216
	addi	%x6, %x9, 0  #256 pc 38220
	addi	%x30, %x7, 0  #0 pc 38224
	addi	%x7, %x6, 0  #0 pc 38228
	addi	%x6, %x30, 0  #0 pc 38232
	sw	%x1, 4(%x2)  #256 pc 38236
	addi	%x2, %x2, 8  #256 pc 38240
	jal	%x1, create_array.2570  #256 pc 38244
	addi	%x2, %x2, -8  #256 pc 38248
	lw	%x1, 4(%x2) #256 pc 38252
	addi	%x7, %x0, 3  #0 pc 38256
	fmv	%f0, l.6244  #0 pc 38260
	sw	%x6, 4(%x2)  #260 pc 38264
	addi	%x6, %x7, 0  #0 pc 38268
	sw	%x1, 8(%x2)  #260 pc 38272
	addi	%x2, %x2, 12  #260 pc 38276
	jal	%x1, create_float_array.2577  #260 pc 38280
	addi	%x2, %x2, -12  #260 pc 38284
	lw	%x1, 8(%x2) #260 pc 38288
	addi	%x7, %x0, 3  #0 pc 38292
	fmv	%f0, l.6244  #0 pc 38296
	sw	%x6, 8(%x2)  #263 pc 38300
	addi	%x6, %x7, 0  #0 pc 38304
	sw	%x1, 12(%x2)  #263 pc 38308
	addi	%x2, %x2, 16  #263 pc 38312
	jal	%x1, create_float_array.2577  #263 pc 38316
	addi	%x2, %x2, -16  #263 pc 38320
	lw	%x1, 12(%x2) #263 pc 38324
	addi	%x7, %x0, 3  #0 pc 38328
	fmv	%f0, l.6244  #0 pc 38332
	sw	%x6, 12(%x2)  #266 pc 38336
	addi	%x6, %x7, 0  #0 pc 38340
	sw	%x1, 16(%x2)  #266 pc 38344
	addi	%x2, %x2, 20  #266 pc 38348
	jal	%x1, create_float_array.2577  #266 pc 38352
	addi	%x2, %x2, -20  #266 pc 38356
	lw	%x1, 16(%x2) #266 pc 38360
	addi	%x7, %x0, 1  #0 pc 38364
	fmv	%f0, l.6756  #0 pc 38368
	sw	%x6, 16(%x2)  #269 pc 38372
	addi	%x6, %x7, 0  #0 pc 38376
	sw	%x1, 20(%x2)  #269 pc 38380
	addi	%x2, %x2, 24  #269 pc 38384
	jal	%x1, create_float_array.2577  #269 pc 38388
	addi	%x2, %x2, -24  #269 pc 38392
	lw	%x1, 20(%x2) #269 pc 38396
	addi	%x7, %x0, 50  #0 pc 38400
	addi	%x8, %x0, 1  #0 pc 38404
	addi	%x9, %x0, -1  #0 pc 38408
	sw	%x6, 20(%x2)  #272 pc 38412
	sw	%x7, 24(%x2)  #272 pc 38416
	addi	%x7, %x9, 0  #0 pc 38420
	addi	%x6, %x8, 0  #0 pc 38424
	sw	%x1, 28(%x2)  #272 pc 38428
	addi	%x2, %x2, 32  #272 pc 38432
	jal	%x1, create_array.2570  #272 pc 38436
	addi	%x2, %x2, -32  #272 pc 38440
	lw	%x1, 28(%x2) #272 pc 38444
	addi	%x7, %x6, 0  #272 pc 38448
	lw	%x6, 24(%x2)  #272 pc 38452
	sw	%x1, 28(%x2)  #272 pc 38456
	addi	%x2, %x2, 32  #272 pc 38460
	jal	%x1, create_array.2570  #272 pc 38464
	addi	%x2, %x2, -32  #272 pc 38468
	lw	%x1, 28(%x2) #272 pc 38472
	addi	%x7, %x0, 1  #0 pc 38476
	lw	%x8, 0(%x6)  #275 pc 38480
	sw	%x6, 28(%x2)  #275 pc 38484
	sw	%x7, 32(%x2)  #275 pc 38488
	addi	%x6, %x7, 0  #0 pc 38492
	addi	%x7, %x8, 0  #0 pc 38496
	sw	%x1, 36(%x2)  #275 pc 38500
	addi	%x2, %x2, 40  #275 pc 38504
	jal	%x1, create_array.2570  #275 pc 38508
	addi	%x2, %x2, -40  #275 pc 38512
	lw	%x1, 36(%x2) #275 pc 38516
	addi	%x7, %x6, 0  #275 pc 38520
	lw	%x6, 32(%x2)  #275 pc 38524
	sw	%x1, 36(%x2)  #275 pc 38528
	addi	%x2, %x2, 40  #275 pc 38532
	jal	%x1, create_array.2570  #275 pc 38536
	addi	%x2, %x2, -40  #275 pc 38540
	lw	%x1, 36(%x2) #275 pc 38544
	addi	%x7, %x0, 1  #0 pc 38548
	fmv	%f0, l.6244  #0 pc 38552
	sw	%x6, 36(%x2)  #280 pc 38556
	addi	%x6, %x7, 0  #0 pc 38560
	sw	%x1, 40(%x2)  #280 pc 38564
	addi	%x2, %x2, 44  #280 pc 38568
	jal	%x1, create_float_array.2577  #280 pc 38572
	addi	%x2, %x2, -44  #280 pc 38576
	lw	%x1, 40(%x2) #280 pc 38580
	addi	%x7, %x0, 1  #0 pc 38584
	addi	%x8, %x0, 0  #0 pc 38588
	sw	%x6, 40(%x2)  #283 pc 38592
	addi	%x6, %x7, 0  #0 pc 38596
	addi	%x7, %x8, 0  #0 pc 38600
	sw	%x1, 44(%x2)  #283 pc 38604
	addi	%x2, %x2, 48  #283 pc 38608
	jal	%x1, create_array.2570  #283 pc 38612
	addi	%x2, %x2, -48  #283 pc 38616
	lw	%x1, 44(%x2) #283 pc 38620
	addi	%x7, %x0, 1  #0 pc 38624
	fmv	%f0, l.6683  #0 pc 38628
	sw	%x6, 44(%x2)  #286 pc 38632
	addi	%x6, %x7, 0  #0 pc 38636
	sw	%x1, 48(%x2)  #286 pc 38640
	addi	%x2, %x2, 52  #286 pc 38644
	jal	%x1, create_float_array.2577  #286 pc 38648
	addi	%x2, %x2, -52  #286 pc 38652
	lw	%x1, 48(%x2) #286 pc 38656
	addi	%x7, %x0, 3  #0 pc 38660
	fmv	%f0, l.6244  #0 pc 38664
	sw	%x6, 48(%x2)  #289 pc 38668
	addi	%x6, %x7, 0  #0 pc 38672
	sw	%x1, 52(%x2)  #289 pc 38676
	addi	%x2, %x2, 56  #289 pc 38680
	jal	%x1, create_float_array.2577  #289 pc 38684
	addi	%x2, %x2, -56  #289 pc 38688
	lw	%x1, 52(%x2) #289 pc 38692
	addi	%x7, %x0, 1  #0 pc 38696
	addi	%x8, %x0, 0  #0 pc 38700
	sw	%x6, 52(%x2)  #292 pc 38704
	addi	%x6, %x7, 0  #0 pc 38708
	addi	%x7, %x8, 0  #0 pc 38712
	sw	%x1, 56(%x2)  #292 pc 38716
	addi	%x2, %x2, 60  #292 pc 38720
	jal	%x1, create_array.2570  #292 pc 38724
	addi	%x2, %x2, -60  #292 pc 38728
	lw	%x1, 56(%x2) #292 pc 38732
	addi	%x7, %x0, 3  #0 pc 38736
	fmv	%f0, l.6244  #0 pc 38740
	sw	%x6, 56(%x2)  #295 pc 38744
	addi	%x6, %x7, 0  #0 pc 38748
	sw	%x1, 60(%x2)  #295 pc 38752
	addi	%x2, %x2, 64  #295 pc 38756
	jal	%x1, create_float_array.2577  #295 pc 38760
	addi	%x2, %x2, -64  #295 pc 38764
	lw	%x1, 60(%x2) #295 pc 38768
	addi	%x7, %x0, 3  #0 pc 38772
	fmv	%f0, l.6244  #0 pc 38776
	sw	%x6, 60(%x2)  #298 pc 38780
	addi	%x6, %x7, 0  #0 pc 38784
	sw	%x1, 64(%x2)  #298 pc 38788
	addi	%x2, %x2, 68  #298 pc 38792
	jal	%x1, create_float_array.2577  #298 pc 38796
	addi	%x2, %x2, -68  #298 pc 38800
	lw	%x1, 64(%x2) #298 pc 38804
	addi	%x7, %x0, 3  #0 pc 38808
	fmv	%f0, l.6244  #0 pc 38812
	sw	%x6, 64(%x2)  #302 pc 38816
	addi	%x6, %x7, 0  #0 pc 38820
	sw	%x1, 68(%x2)  #302 pc 38824
	addi	%x2, %x2, 72  #302 pc 38828
	jal	%x1, create_float_array.2577  #302 pc 38832
	addi	%x2, %x2, -72  #302 pc 38836
	lw	%x1, 68(%x2) #302 pc 38840
	addi	%x7, %x0, 3  #0 pc 38844
	fmv	%f0, l.6244  #0 pc 38848
	sw	%x6, 68(%x2)  #305 pc 38852
	addi	%x6, %x7, 0  #0 pc 38856
	sw	%x1, 72(%x2)  #305 pc 38860
	addi	%x2, %x2, 76  #305 pc 38864
	jal	%x1, create_float_array.2577  #305 pc 38868
	addi	%x2, %x2, -76  #305 pc 38872
	lw	%x1, 72(%x2) #305 pc 38876
	addi	%x7, %x0, 2  #0 pc 38880
	addi	%x8, %x0, 0  #0 pc 38884
	sw	%x6, 72(%x2)  #309 pc 38888
	addi	%x6, %x7, 0  #0 pc 38892
	addi	%x7, %x8, 0  #0 pc 38896
	sw	%x1, 76(%x2)  #309 pc 38900
	addi	%x2, %x2, 80  #309 pc 38904
	jal	%x1, create_array.2570  #309 pc 38908
	addi	%x2, %x2, -80  #309 pc 38912
	lw	%x1, 76(%x2) #309 pc 38916
	addi	%x7, %x0, 2  #0 pc 38920
	addi	%x8, %x0, 0  #0 pc 38924
	sw	%x6, 76(%x2)  #312 pc 38928
	addi	%x6, %x7, 0  #0 pc 38932
	addi	%x7, %x8, 0  #0 pc 38936
	sw	%x1, 80(%x2)  #312 pc 38940
	addi	%x2, %x2, 84  #312 pc 38944
	jal	%x1, create_array.2570  #312 pc 38948
	addi	%x2, %x2, -84  #312 pc 38952
	lw	%x1, 80(%x2) #312 pc 38956
	addi	%x7, %x0, 1  #0 pc 38960
	fmv	%f0, l.6244  #0 pc 38964
	sw	%x6, 80(%x2)  #315 pc 38968
	addi	%x6, %x7, 0  #0 pc 38972
	sw	%x1, 84(%x2)  #315 pc 38976
	addi	%x2, %x2, 88  #315 pc 38980
	jal	%x1, create_float_array.2577  #315 pc 38984
	addi	%x2, %x2, -88  #315 pc 38988
	lw	%x1, 84(%x2) #315 pc 38992
	addi	%x7, %x0, 3  #0 pc 38996
	fmv	%f0, l.6244  #0 pc 39000
	sw	%x6, 84(%x2)  #319 pc 39004
	addi	%x6, %x7, 0  #0 pc 39008
	sw	%x1, 88(%x2)  #319 pc 39012
	addi	%x2, %x2, 92  #319 pc 39016
	jal	%x1, create_float_array.2577  #319 pc 39020
	addi	%x2, %x2, -92  #319 pc 39024
	lw	%x1, 88(%x2) #319 pc 39028
	addi	%x7, %x0, 3  #0 pc 39032
	fmv	%f0, l.6244  #0 pc 39036
	sw	%x6, 88(%x2)  #322 pc 39040
	addi	%x6, %x7, 0  #0 pc 39044
	sw	%x1, 92(%x2)  #322 pc 39048
	addi	%x2, %x2, 96  #322 pc 39052
	jal	%x1, create_float_array.2577  #322 pc 39056
	addi	%x2, %x2, -96  #322 pc 39060
	lw	%x1, 92(%x2) #322 pc 39064
	addi	%x7, %x0, 3  #0 pc 39068
	fmv	%f0, l.6244  #0 pc 39072
	sw	%x6, 92(%x2)  #326 pc 39076
	addi	%x6, %x7, 0  #0 pc 39080
	sw	%x1, 96(%x2)  #326 pc 39084
	addi	%x2, %x2, 100  #326 pc 39088
	jal	%x1, create_float_array.2577  #326 pc 39092
	addi	%x2, %x2, -100  #326 pc 39096
	lw	%x1, 96(%x2) #326 pc 39100
	addi	%x7, %x0, 3  #0 pc 39104
	fmv	%f0, l.6244  #0 pc 39108
	sw	%x6, 96(%x2)  #328 pc 39112
	addi	%x6, %x7, 0  #0 pc 39116
	sw	%x1, 100(%x2)  #328 pc 39120
	addi	%x2, %x2, 104  #328 pc 39124
	jal	%x1, create_float_array.2577  #328 pc 39128
	addi	%x2, %x2, -104  #328 pc 39132
	lw	%x1, 100(%x2) #328 pc 39136
	addi	%x7, %x0, 3  #0 pc 39140
	fmv	%f0, l.6244  #0 pc 39144
	sw	%x6, 100(%x2)  #330 pc 39148
	addi	%x6, %x7, 0  #0 pc 39152
	sw	%x1, 104(%x2)  #330 pc 39156
	addi	%x2, %x2, 108  #330 pc 39160
	jal	%x1, create_float_array.2577  #330 pc 39164
	addi	%x2, %x2, -108  #330 pc 39168
	lw	%x1, 104(%x2) #330 pc 39172
	addi	%x7, %x0, 3  #0 pc 39176
	fmv	%f0, l.6244  #0 pc 39180
	sw	%x6, 104(%x2)  #334 pc 39184
	addi	%x6, %x7, 0  #0 pc 39188
	sw	%x1, 108(%x2)  #334 pc 39192
	addi	%x2, %x2, 112  #334 pc 39196
	jal	%x1, create_float_array.2577  #334 pc 39200
	addi	%x2, %x2, -112  #334 pc 39204
	lw	%x1, 108(%x2) #334 pc 39208
	addi	%x7, %x0, 0  #0 pc 39212
	fmv	%f0, l.6244  #0 pc 39216
	sw	%x6, 108(%x2)  #339 pc 39220
	addi	%x6, %x7, 0  #0 pc 39224
	sw	%x1, 112(%x2)  #339 pc 39228
	addi	%x2, %x2, 116  #339 pc 39232
	jal	%x1, create_float_array.2577  #339 pc 39236
	addi	%x2, %x2, -116  #339 pc 39240
	lw	%x1, 112(%x2) #339 pc 39244
	addi	%x7, %x6, 0  #339 pc 39248
	addi	%x6, %x0, 0  #0 pc 39252
	sw	%x7, 112(%x2)  #340 pc 39256
	sw	%x1, 116(%x2)  #340 pc 39260
	addi	%x2, %x2, 120  #340 pc 39264
	jal	%x1, create_array.2570  #340 pc 39268
	addi	%x2, %x2, -120  #340 pc 39272
	lw	%x1, 116(%x2) #340 pc 39276
	addi	%x7, %x0, 0  #0 pc 39280
	addi	%x8, %x3, 0  #341 pc 39284
	addi	%x3, %x3, 8  #341 pc 39288
	sw	%x6, 4(%x8)  #341 pc 39292
	lw	%x6, 112(%x2)  #341 pc 39296
	sw	%x6, 0(%x8)  #341 pc 39300
	addi	%x6, %x8, 0  #341 pc 39304
	addi	%x30, %x7, 0  #0 pc 39308
	addi	%x7, %x6, 0  #0 pc 39312
	addi	%x6, %x30, 0  #0 pc 39316
	sw	%x1, 116(%x2)  #341 pc 39320
	addi	%x2, %x2, 120  #341 pc 39324
	jal	%x1, create_array.2570  #341 pc 39328
	addi	%x2, %x2, -120  #341 pc 39332
	lw	%x1, 116(%x2) #341 pc 39336
	addi	%x7, %x6, 0  #341 pc 39340
	addi	%x6, %x0, 5  #0 pc 39344
	sw	%x1, 116(%x2)  #342 pc 39348
	addi	%x2, %x2, 120  #342 pc 39352
	jal	%x1, create_array.2570  #342 pc 39356
	addi	%x2, %x2, -120  #342 pc 39360
	lw	%x1, 116(%x2) #342 pc 39364
	addi	%x7, %x0, 0  #0 pc 39368
	fmv	%f0, l.6244  #0 pc 39372
	sw	%x6, 116(%x2)  #347 pc 39376
	addi	%x6, %x7, 0  #0 pc 39380
	sw	%x1, 120(%x2)  #347 pc 39384
	addi	%x2, %x2, 124  #347 pc 39388
	jal	%x1, create_float_array.2577  #347 pc 39392
	addi	%x2, %x2, -124  #347 pc 39396
	lw	%x1, 120(%x2) #347 pc 39400
	addi	%x7, %x0, 3  #0 pc 39404
	fmv	%f0, l.6244  #0 pc 39408
	sw	%x6, 120(%x2)  #348 pc 39412
	addi	%x6, %x7, 0  #0 pc 39416
	sw	%x1, 124(%x2)  #348 pc 39420
	addi	%x2, %x2, 128  #348 pc 39424
	jal	%x1, create_float_array.2577  #348 pc 39428
	addi	%x2, %x2, -128  #348 pc 39432
	lw	%x1, 124(%x2) #348 pc 39436
	addi	%x7, %x0, 60  #0 pc 39440
	lw	%x8, 120(%x2)  #349 pc 39444
	sw	%x6, 124(%x2)  #349 pc 39448
	addi	%x6, %x7, 0  #0 pc 39452
	addi	%x7, %x8, 0  #0 pc 39456
	sw	%x1, 128(%x2)  #349 pc 39460
	addi	%x2, %x2, 132  #349 pc 39464
	jal	%x1, create_array.2570  #349 pc 39468
	addi	%x2, %x2, -132  #349 pc 39472
	lw	%x1, 128(%x2) #349 pc 39476
	addi	%x7, %x3, 0  #350 pc 39480
	addi	%x3, %x3, 8  #350 pc 39484
	sw	%x6, 4(%x7)  #350 pc 39488
	lw	%x6, 124(%x2)  #350 pc 39492
	sw	%x6, 0(%x7)  #350 pc 39496
	addi	%x6, %x7, 0  #350 pc 39500
	addi	%x7, %x0, 0  #0 pc 39504
	fmv	%f0, l.6244  #0 pc 39508
	sw	%x6, 128(%x2)  #355 pc 39512
	addi	%x6, %x7, 0  #0 pc 39516
	sw	%x1, 132(%x2)  #355 pc 39520
	addi	%x2, %x2, 136  #355 pc 39524
	jal	%x1, create_float_array.2577  #355 pc 39528
	addi	%x2, %x2, -136  #355 pc 39532
	lw	%x1, 132(%x2) #355 pc 39536
	addi	%x7, %x6, 0  #355 pc 39540
	addi	%x6, %x0, 0  #0 pc 39544
	sw	%x7, 132(%x2)  #356 pc 39548
	sw	%x1, 136(%x2)  #356 pc 39552
	addi	%x2, %x2, 140  #356 pc 39556
	jal	%x1, create_array.2570  #356 pc 39560
	addi	%x2, %x2, -140  #356 pc 39564
	lw	%x1, 136(%x2) #356 pc 39568
	addi	%x7, %x3, 0  #357 pc 39572
	addi	%x3, %x3, 8  #357 pc 39576
	sw	%x6, 4(%x7)  #357 pc 39580
	lw	%x6, 132(%x2)  #357 pc 39584
	sw	%x6, 0(%x7)  #357 pc 39588
	addi	%x6, %x7, 0  #357 pc 39592
	addi	%x7, %x0, 180  #0 pc 39596
	addi	%x8, %x0, 0  #0 pc 39600
	fmv	%f0, l.6244  #0 pc 39604
	addi	%x9, %x3, 0  #358 pc 39608
	addi	%x3, %x3, 12  #358 pc 39612
	fsw	%f0, 8(%x9)  #358 pc 39616
	sw	%x6, 4(%x9)  #358 pc 39620
	sw	%x8, 0(%x9)  #358 pc 39624
	addi	%x6, %x9, 0  #358 pc 39628
	addi	%x30, %x7, 0  #0 pc 39632
	addi	%x7, %x6, 0  #0 pc 39636
	addi	%x6, %x30, 0  #0 pc 39640
	sw	%x1, 136(%x2)  #358 pc 39644
	addi	%x2, %x2, 140  #358 pc 39648
	jal	%x1, create_array.2570  #358 pc 39652
	addi	%x2, %x2, -140  #358 pc 39656
	lw	%x1, 136(%x2) #358 pc 39660
	addi	%x7, %x0, 1  #0 pc 39664
	addi	%x8, %x0, 0  #0 pc 39668
	sw	%x6, 136(%x2)  #362 pc 39672
	addi	%x6, %x7, 0  #0 pc 39676
	addi	%x7, %x8, 0  #0 pc 39680
	sw	%x1, 140(%x2)  #362 pc 39684
	addi	%x2, %x2, 144  #362 pc 39688
	jal	%x1, create_array.2570  #362 pc 39692
	addi	%x2, %x2, -144  #362 pc 39696
	lw	%x1, 140(%x2) #362 pc 39700
	addi	%x7, %x3, 0  #845 pc 39704
	addi	%x3, %x3, 24  #845 pc 39708
 	addj	%x8, 3276  #845 read_screen_settings.2732 pc 39712
	sw	%x8, 0(%x7)  #845 pc 39716
	lw	%x8, 12(%x2)  #845 pc 39720
	sw	%x8, 20(%x7)  #845 pc 39724
	lw	%x9, 104(%x2)  #845 pc 39728
	sw	%x9, 16(%x7)  #845 pc 39732
	lw	%x10, 100(%x2)  #845 pc 39736
	sw	%x10, 12(%x7)  #845 pc 39740
	lw	%x11, 96(%x2)  #845 pc 39744
	sw	%x11, 8(%x7)  #845 pc 39748
	lw	%x12, 8(%x2)  #845 pc 39752
	sw	%x12, 4(%x7)  #845 pc 39756
	addi	%x12, %x3, 0  #878 pc 39760
	addi	%x3, %x3, 12  #878 pc 39764
	addj	%x13, 3884  #878 read_light.2734 pc 39768
	sw	%x13, 0(%x12)  #878 pc 39772
	lw	%x13, 16(%x2)  #878 pc 39776
	sw	%x13, 8(%x12)  #878 pc 39780
	lw	%x14, 20(%x2)  #878 pc 39784
	sw	%x14, 4(%x12)  #878 pc 39788
	addi	%x15, %x3, 0  #941 pc 39792
	addi	%x3, %x3, 8  #941 pc 39796
	addj	%x16, 5220  #941 read_nth_object.2739 pc 39800
	sw	%x16, 0(%x15)  #941 pc 39804
	lw	%x16, 4(%x2)  #941 pc 39808
	sw	%x16, 4(%x15)  #941 pc 39812
	addi	%x17, %x3, 0  #1024 pc 39816
	addi	%x3, %x3, 12  #1024 pc 39820
	addj	%x18, 6784  #1024 read_object.2741 pc 39824
	sw	%x18, 0(%x17)  #1024 pc 39828
	sw	%x15, 8(%x17)  #1024 pc 39832
	lw	%x15, 0(%x2)  #1024 pc 39836
	sw	%x15, 4(%x17)  #1024 pc 39840
	addi	%x18, %x3, 0  #1033 pc 39844
	addi	%x3, %x3, 8  #1033 pc 39848
	addj	%x19, 6912  #1033 read_all_object.2743 pc 39852
	sw	%x19, 0(%x18)  #1033 pc 39856
	sw	%x17, 4(%x18)  #1033 pc 39860
	addi	%x17, %x3, 0  #1057 pc 39864
	addi	%x3, %x3, 8  #1057 pc 39868
	addj	%x19, 7192  #1057 read_and_network.2749 pc 39872
	sw	%x19, 0(%x17)  #1057 pc 39876
	lw	%x19, 28(%x2)  #1057 pc 39880
	sw	%x19, 4(%x17)  #1057 pc 39884
	addi	%x20, %x3, 0  #1066 pc 39888
	addi	%x3, %x3, 24  #1066 pc 39892
	addj	%x21, 7304  #1066 read_parameter.2751 pc 39896
	sw	%x21, 0(%x20)  #1066 pc 39900
	sw	%x7, 20(%x20)  #1066 pc 39904
	sw	%x12, 16(%x20)  #1066 pc 39908
	sw	%x17, 12(%x20)  #1066 pc 39912
	sw	%x18, 8(%x20)  #1066 pc 39916
	lw	%x7, 36(%x2)  #1066 pc 39920
	sw	%x7, 4(%x20)  #1066 pc 39924
	addi	%x12, %x3, 0  #1091 pc 39928
	addi	%x3, %x3, 8  #1091 pc 39932
	addj	%x17, 7496  #1091 solver_rect_surface.2753 pc 39936
	sw	%x17, 0(%x12)  #1091 pc 39940
	lw	%x17, 40(%x2)  #1091 pc 39944
	sw	%x17, 4(%x12)  #1091 pc 39948
	addi	%x18, %x3, 0  #1106 pc 39952
	addi	%x3, %x3, 8  #1106 pc 39956
	addj	%x21, 8028  #1106 solver_rect.2762 pc 39960
	sw	%x21, 0(%x18)  #1106 pc 39964
	sw	%x12, 4(%x18)  #1106 pc 39968
	addi	%x12, %x3, 0  #1115 pc 39972
	addi	%x3, %x3, 8  #1115 pc 39976
	addj	%x21, 8296  #1115 solver_surface.2768 pc 39980
	sw	%x21, 0(%x12)  #1115 pc 39984
	sw	%x17, 4(%x12)  #1115 pc 39988
	addi	%x21, %x3, 0  #1166 pc 39992
	addi	%x3, %x3, 8  #1166 pc 39996
	addj	%x22, 9452  #1166 solver_second.2787 pc 40000
	sw	%x22, 0(%x21)  #1166 pc 40004
	sw	%x17, 4(%x21)  #1166 pc 40008
	addi	%x22, %x3, 0  #1195 pc 40012
	addi	%x3, %x3, 20  #1195 pc 40016
	addj	%x23, 9960  #1195 solver.2793 pc 40020
	sw	%x23, 0(%x22)  #1195 pc 40024
	sw	%x12, 16(%x22)  #1195 pc 40028
	sw	%x21, 12(%x22)  #1195 pc 40032
	sw	%x18, 8(%x22)  #1195 pc 40036
	sw	%x16, 4(%x22)  #1195 pc 40040
	addi	%x12, %x3, 0  #1227 pc 40044
	addi	%x3, %x3, 8  #1227 pc 40048
	addj	%x18, 10316  #1227 solver_rect_fast.2797 pc 40052
	sw	%x18, 0(%x12)  #1227 pc 40056
	sw	%x17, 4(%x12)  #1227 pc 40060
	addi	%x18, %x3, 0  #1260 pc 40064
	addi	%x3, %x3, 8  #1260 pc 40068
	addj	%x21, 11352  #1260 solver_surface_fast.2804 pc 40072
	sw	%x21, 0(%x18)  #1260 pc 40076
	sw	%x17, 4(%x18)  #1260 pc 40080
	addi	%x21, %x3, 0  #1269 pc 40084
	addi	%x3, %x3, 8  #1269 pc 40088
	addj	%x23, 11496  #1269 solver_second_fast.2810 pc 40092
	sw	%x23, 0(%x21)  #1269 pc 40096
	sw	%x17, 4(%x21)  #1269 pc 40100
	addi	%x23, %x3, 0  #1289 pc 40104
	addi	%x3, %x3, 20  #1289 pc 40108
	addj	%x24, 11964  #1289 solver_fast.2816 pc 40112
	sw	%x24, 0(%x23)  #1289 pc 40116
	sw	%x18, 16(%x23)  #1289 pc 40120
	sw	%x21, 12(%x23)  #1289 pc 40124
	sw	%x12, 8(%x23)  #1289 pc 40128
	sw	%x16, 4(%x23)  #1289 pc 40132
	addi	%x18, %x3, 0  #1309 pc 40136
	addi	%x3, %x3, 8  #1309 pc 40140
	addj	%x21, 12404  #1309 solver_surface_fast2.2820 pc 40144
	sw	%x21, 0(%x18)  #1309 pc 40148
	sw	%x17, 4(%x18)  #1309 pc 40152
	addi	%x21, %x3, 0  #1317 pc 40156
	addi	%x3, %x3, 8  #1317 pc 40160
	addj	%x24, 12508  #1317 solver_second_fast2.2827 pc 40164
	sw	%x24, 0(%x21)  #1317 pc 40168
	sw	%x17, 4(%x21)  #1317 pc 40172
	addi	%x24, %x3, 0  #1336 pc 40176
	addi	%x3, %x3, 20  #1336 pc 40180
	addj	%x25, 12872  #1336 solver_fast2.2834 pc 40184
	sw	%x25, 0(%x24)  #1336 pc 40188
	sw	%x18, 16(%x24)  #1336 pc 40192
	sw	%x21, 12(%x24)  #1336 pc 40196
	sw	%x12, 8(%x24)  #1336 pc 40200
	sw	%x16, 4(%x24)  #1336 pc 40204
	addi	%x12, %x3, 0  #1433 pc 40208
	addi	%x3, %x3, 8  #1433 pc 40212
	addj	%x18, 15348  #1433 iter_setup_dirvec_constants.2846 pc 40216
	sw	%x18, 0(%x12)  #1433 pc 40220
	sw	%x16, 4(%x12)  #1433 pc 40224
	addi	%x18, %x3, 0  #1450 pc 40228
	addi	%x3, %x3, 12  #1450 pc 40232
	addj	%x21, 15700  #1450 setup_dirvec_constants.2849 pc 40236
	sw	%x21, 0(%x18)  #1450 pc 40240
	sw	%x15, 8(%x18)  #1450 pc 40244
	sw	%x12, 4(%x18)  #1450 pc 40248
	addi	%x12, %x3, 0  #1458 pc 40252
	addi	%x3, %x3, 8  #1458 pc 40256
	addj	%x21, 15728  #1458 setup_startp_constants.2851 pc 40260
	sw	%x21, 0(%x12)  #1458 pc 40264
	sw	%x16, 4(%x12)  #1458 pc 40268
	addi	%x21, %x3, 0  #1477 pc 40272
	addi	%x3, %x3, 16  #1477 pc 40276
	addj	%x25, 16244  #1477 setup_startp.2854 pc 40280
	sw	%x25, 0(%x21)  #1477 pc 40284
	lw	%x25, 92(%x2)  #1477 pc 40288
	sw	%x25, 12(%x21)  #1477 pc 40292
	sw	%x12, 8(%x21)  #1477 pc 40296
	sw	%x15, 4(%x21)  #1477 pc 40300
	addi	%x12, %x3, 0  #1527 pc 40304
	addi	%x3, %x3, 8  #1527 pc 40308
	addj	%x26, 17308  #1527 check_all_inside.2876 pc 40312
	sw	%x26, 0(%x12)  #1527 pc 40316
	sw	%x16, 4(%x12)  #1527 pc 40320
	addi	%x26, %x3, 0  #1547 pc 40324
	addi	%x3, %x3, 32  #1547 pc 40328
	addj	%x27, 17476  #1547 shadow_check_and_group.2882 pc 40332
	sw	%x27, 0(%x26)  #1547 pc 40336
	sw	%x23, 28(%x26)  #1547 pc 40340
	sw	%x17, 24(%x26)  #1547 pc 40344
	sw	%x16, 20(%x26)  #1547 pc 40348
	lw	%x27, 128(%x2)  #1547 pc 40352
	sw	%x27, 16(%x26)  #1547 pc 40356
	sw	%x13, 12(%x26)  #1547 pc 40360
	lw	%x28, 52(%x2)  #1547 pc 40364
	sw	%x28, 8(%x26)  #1547 pc 40368
	sw	%x12, 4(%x26)  #1547 pc 40372
	addi	%x29, %x3, 0  #1577 pc 40376
	addi	%x3, %x3, 12  #1577 pc 40380
	addj	%x30, 17968  #1577 shadow_check_one_or_group.2885 pc 40384
	sw	%x30, 0(%x29)  #1577 pc 40388
	sw	%x26, 8(%x29)  #1577 pc 40392
	sw	%x19, 4(%x29)  #1577 pc 40396
	addi	%x26, %x3, 0  #1592 pc 40400
	addi	%x3, %x3, 24  #1592 pc 40404
	addj	%x30, 18132  #1592 shadow_check_one_or_matrix.2888 pc 40408
	sw	%x30, 0(%x26)  #1592 pc 40412
	sw	%x23, 20(%x26)  #1592 pc 40416
	sw	%x17, 16(%x26)  #1592 pc 40420
	sw	%x29, 12(%x26)  #1592 pc 40424
	sw	%x27, 8(%x26)  #1592 pc 40428
	sw	%x28, 4(%x26)  #1592 pc 40432
	addi	%x23, %x3, 0  #1628 pc 40436
	addi	%x3, %x3, 40  #1628 pc 40440
	addj	%x29, 18560  #1628 solve_each_element.2891 pc 40444
	sw	%x29, 0(%x23)  #1628 pc 40448
	lw	%x29, 48(%x2)  #1628 pc 40452
	sw	%x29, 36(%x23)  #1628 pc 40456
	lw	%x30, 88(%x2)  #1628 pc 40460
	sw	%x30, 32(%x23)  #1628 pc 40464
	sw	%x17, 28(%x23)  #1628 pc 40468
	sw	%x22, 24(%x23)  #1628 pc 40472
	sw	%x16, 20(%x23)  #1628 pc 40476
	lw	%x27, 44(%x2)  #1628 pc 40480
	sw	%x27, 16(%x23)  #1628 pc 40484
	sw	%x28, 12(%x23)  #1628 pc 40488
	sw	%x20, 140(%x2)  #1628 pc 40492
	lw	%x20, 56(%x2)  #1628 pc 40496
	sw	%x20, 8(%x23)  #1628 pc 40500
	sw	%x12, 4(%x23)  #1628 pc 40504
	sw	%x18, 144(%x2)  #1669 pc 40508
	addi	%x18, %x3, 0  #1669 pc 40512
	addi	%x3, %x3, 12  #1669 pc 40516
	addj	%x15, 19204  #1669 solve_one_or_network.2895 pc 40520
	sw	%x15, 0(%x18)  #1669 pc 40524
	sw	%x23, 8(%x18)  #1669 pc 40528
	sw	%x19, 4(%x18)  #1669 pc 40532
	addi	%x15, %x3, 0  #1679 pc 40536
	addi	%x3, %x3, 24  #1679 pc 40540
	addj	%x23, 19348  #1679 trace_or_matrix.2899 pc 40544
	sw	%x23, 0(%x15)  #1679 pc 40548
	sw	%x29, 20(%x15)  #1679 pc 40552
	sw	%x30, 16(%x15)  #1679 pc 40556
	sw	%x17, 12(%x15)  #1679 pc 40560
	sw	%x22, 8(%x15)  #1679 pc 40564
	sw	%x18, 4(%x15)  #1679 pc 40568
	addi	%x18, %x3, 0  #1706 pc 40572
	addi	%x3, %x3, 16  #1706 pc 40576
	addj	%x22, 19692  #1706 judge_intersection.2903 pc 40580
	sw	%x22, 0(%x18)  #1706 pc 40584
	sw	%x15, 12(%x18)  #1706 pc 40588
	sw	%x29, 8(%x18)  #1706 pc 40592
	sw	%x7, 4(%x18)  #1706 pc 40596
	addi	%x15, %x3, 0  #1721 pc 40600
	addi	%x3, %x3, 40  #1721 pc 40604
	addj	%x22, 19840  #1721 solve_each_element_fast.2905 pc 40608
	sw	%x22, 0(%x15)  #1721 pc 40612
	sw	%x29, 36(%x15)  #1721 pc 40616
	sw	%x25, 32(%x15)  #1721 pc 40620
	sw	%x24, 28(%x15)  #1721 pc 40624
	sw	%x17, 24(%x15)  #1721 pc 40628
	sw	%x16, 20(%x15)  #1721 pc 40632
	sw	%x27, 16(%x15)  #1721 pc 40636
	sw	%x28, 12(%x15)  #1721 pc 40640
	sw	%x20, 8(%x15)  #1721 pc 40644
	sw	%x12, 4(%x15)  #1721 pc 40648
	addi	%x12, %x3, 0  #1762 pc 40652
	addi	%x3, %x3, 12  #1762 pc 40656
	addj	%x22, 20516  #1762 solve_one_or_network_fast.2909 pc 40660
	sw	%x22, 0(%x12)  #1762 pc 40664
	sw	%x15, 8(%x12)  #1762 pc 40668
	sw	%x19, 4(%x12)  #1762 pc 40672
	addi	%x15, %x3, 0  #1772 pc 40676
	addi	%x3, %x3, 20  #1772 pc 40680
	addj	%x19, 20660  #1772 trace_or_matrix_fast.2913 pc 40684
	sw	%x19, 0(%x15)  #1772 pc 40688
	sw	%x29, 16(%x15)  #1772 pc 40692
	sw	%x24, 12(%x15)  #1772 pc 40696
	sw	%x17, 8(%x15)  #1772 pc 40700
	sw	%x12, 4(%x15)  #1772 pc 40704
	addi	%x12, %x3, 0  #1796 pc 40708
	addi	%x3, %x3, 16  #1796 pc 40712
	addj	%x17, 20996  #1796 judge_intersection_fast.2917 pc 40716
	sw	%x17, 0(%x12)  #1796 pc 40720
	sw	%x15, 12(%x12)  #1796 pc 40724
	sw	%x29, 8(%x12)  #1796 pc 40728
	sw	%x7, 4(%x12)  #1796 pc 40732
	addi	%x15, %x3, 0  #1817 pc 40736
	addi	%x3, %x3, 12  #1817 pc 40740
	addj	%x17, 21144  #1817 get_nvector_rect.2919 pc 40744
	sw	%x17, 0(%x15)  #1817 pc 40748
	lw	%x17, 60(%x2)  #1817 pc 40752
	sw	%x17, 8(%x15)  #1817 pc 40756
	sw	%x27, 4(%x15)  #1817 pc 40760
	addi	%x19, %x3, 0  #1825 pc 40764
	addi	%x3, %x3, 8  #1825 pc 40768
	addj	%x22, 21292  #1825 get_nvector_plane.2921 pc 40772
	sw	%x22, 0(%x19)  #1825 pc 40776
	sw	%x17, 4(%x19)  #1825 pc 40780
	addi	%x22, %x3, 0  #1833 pc 40784
	addi	%x3, %x3, 12  #1833 pc 40788
	addj	%x23, 21472  #1833 get_nvector_second.2923 pc 40792
	sw	%x23, 0(%x22)  #1833 pc 40796
	sw	%x17, 8(%x22)  #1833 pc 40800
	sw	%x28, 4(%x22)  #1833 pc 40804
	addi	%x23, %x3, 0  #1855 pc 40808
	addi	%x3, %x3, 16  #1855 pc 40812
	addj	%x24, 22200  #1855 get_nvector.2925 pc 40816
	sw	%x24, 0(%x23)  #1855 pc 40820
	sw	%x22, 12(%x23)  #1855 pc 40824
	sw	%x15, 8(%x23)  #1855 pc 40828
	sw	%x19, 4(%x23)  #1855 pc 40832
	addi	%x15, %x3, 0  #1871 pc 40836
	addi	%x3, %x3, 8  #1871 pc 40840
	addj	%x19, 22344  #1871 utexture.2928 pc 40844
	sw	%x19, 0(%x15)  #1871 pc 40848
	lw	%x19, 64(%x2)  #1871 pc 40852
	sw	%x19, 4(%x15)  #1871 pc 40856
	addi	%x22, %x3, 0  #1949 pc 40860
	addi	%x3, %x3, 12  #1949 pc 40864
	addj	%x24, 24152  #1949 add_light.2931 pc 40868
	sw	%x24, 0(%x22)  #1949 pc 40872
	sw	%x19, 8(%x22)  #1949 pc 40876
	lw	%x24, 72(%x2)  #1949 pc 40880
	sw	%x24, 4(%x22)  #1949 pc 40884
	addi	%x25, %x3, 0  #1966 pc 40888
	addi	%x3, %x3, 36  #1966 pc 40892
	addj	%x10, 24396  #1966 trace_reflections.2935 pc 40896
	sw	%x10, 0(%x25)  #1966 pc 40900
	sw	%x26, 32(%x25)  #1966 pc 40904
	lw	%x10, 136(%x2)  #1966 pc 40908
	sw	%x10, 28(%x25)  #1966 pc 40912
	sw	%x7, 24(%x25)  #1966 pc 40916
	sw	%x17, 20(%x25)  #1966 pc 40920
	sw	%x12, 16(%x25)  #1966 pc 40924
	sw	%x27, 12(%x25)  #1966 pc 40928
	sw	%x20, 8(%x25)  #1966 pc 40932
	sw	%x22, 4(%x25)  #1966 pc 40936
	addi	%x10, %x3, 0  #1995 pc 40940
	addi	%x3, %x3, 84  #1995 pc 40944
	addj	%x9, 24984  #1995 trace_ray.2940 pc 40948
	sw	%x9, 0(%x10)  #1995 pc 40952
	sw	%x15, 80(%x10)  #1995 pc 40956
	sw	%x25, 76(%x10)  #1995 pc 40960
	sw	%x29, 72(%x10)  #1995 pc 40964
	sw	%x19, 68(%x10)  #1995 pc 40968
	sw	%x30, 64(%x10)  #1995 pc 40972
	sw	%x26, 60(%x10)  #1995 pc 40976
	sw	%x21, 56(%x10)  #1995 pc 40980
	sw	%x24, 52(%x10)  #1995 pc 40984
	sw	%x7, 48(%x10)  #1995 pc 40988
	sw	%x16, 44(%x10)  #1995 pc 40992
	sw	%x17, 40(%x10)  #1995 pc 40996
	sw	%x6, 36(%x10)  #1995 pc 41000
	sw	%x13, 32(%x10)  #1995 pc 41004
	sw	%x18, 28(%x10)  #1995 pc 41008
	sw	%x27, 24(%x10)  #1995 pc 41012
	sw	%x28, 20(%x10)  #1995 pc 41016
	sw	%x20, 16(%x10)  #1995 pc 41020
	sw	%x23, 12(%x10)  #1995 pc 41024
	sw	%x14, 8(%x10)  #1995 pc 41028
	sw	%x22, 4(%x10)  #1995 pc 41032
	addi	%x9, %x3, 0  #2088 pc 41036
	addi	%x3, %x3, 52  #2088 pc 41040
	addj	%x14, 26808  #2088 trace_diffuse_ray.2946 pc 41044
	sw	%x14, 0(%x9)  #2088 pc 41048
	sw	%x15, 48(%x9)  #2088 pc 41052
	sw	%x19, 44(%x9)  #2088 pc 41056
	sw	%x26, 40(%x9)  #2088 pc 41060
	sw	%x7, 36(%x9)  #2088 pc 41064
	sw	%x16, 32(%x9)  #2088 pc 41068
	sw	%x17, 28(%x9)  #2088 pc 41072
	sw	%x13, 24(%x9)  #2088 pc 41076
	sw	%x12, 20(%x9)  #2088 pc 41080
	sw	%x28, 16(%x9)  #2088 pc 41084
	sw	%x20, 12(%x9)  #2088 pc 41088
	sw	%x23, 8(%x9)  #2088 pc 41092
	lw	%x7, 68(%x2)  #2088 pc 41096
	sw	%x7, 4(%x9)  #2088 pc 41100
	addi	%x12, %x3, 0  #2107 pc 41104
	addi	%x3, %x3, 8  #2107 pc 41108
	addj	%x14, 27304  #2107 iter_trace_diffuse_rays.2949 pc 41112
	sw	%x14, 0(%x12)  #2107 pc 41116
	sw	%x9, 4(%x12)  #2107 pc 41120
	addi	%x9, %x3, 0  #2123 pc 41124
	addi	%x3, %x3, 12  #2123 pc 41128
	addj	%x14, 27624  #2123 trace_diffuse_rays.2954 pc 41132
	sw	%x14, 0(%x9)  #2123 pc 41136
	sw	%x21, 8(%x9)  #2123 pc 41140
	sw	%x12, 4(%x9)  #2123 pc 41144
	addi	%x12, %x3, 0  #2133 pc 41148
	addi	%x3, %x3, 12  #2133 pc 41152
	addj	%x14, 27712  #2133 trace_diffuse_ray_80percent.2958 pc 41156
	sw	%x14, 0(%x12)  #2133 pc 41160
	sw	%x9, 8(%x12)  #2133 pc 41164
	lw	%x14, 116(%x2)  #2133 pc 41168
	sw	%x14, 4(%x12)  #2133 pc 41172
	addi	%x15, %x3, 0  #2159 pc 41176
	addi	%x3, %x3, 16  #2159 pc 41180
	addj	%x17, 28108  #2159 calc_diffuse_using_1point.2962 pc 41184
	sw	%x17, 0(%x15)  #2159 pc 41188
	sw	%x12, 12(%x15)  #2159 pc 41192
	sw	%x24, 8(%x15)  #2159 pc 41196
	sw	%x7, 4(%x15)  #2159 pc 41200
	addi	%x12, %x3, 0  #2178 pc 41204
	addi	%x3, %x3, 12  #2178 pc 41208
	addj	%x17, 28444  #2178 calc_diffuse_using_5points.2965 pc 41212
	sw	%x17, 0(%x12)  #2178 pc 41216
	sw	%x24, 8(%x12)  #2178 pc 41220
	sw	%x7, 4(%x12)  #2178 pc 41224
	addi	%x17, %x3, 0  #2198 pc 41228
	addi	%x3, %x3, 8  #2198 pc 41232
	addj	%x18, 29032  #2198 do_without_neighbors.2971 pc 41236
	sw	%x18, 0(%x17)  #2198 pc 41240
	sw	%x15, 4(%x17)  #2198 pc 41244
	addi	%x15, %x3, 0  #2213 pc 41248
	addi	%x3, %x3, 8  #2213 pc 41252
	addj	%x18, 29252  #2213 neighbors_exist.2974 pc 41256
	sw	%x18, 0(%x15)  #2213 pc 41260
	lw	%x18, 76(%x2)  #2213 pc 41264
	sw	%x18, 4(%x15)  #2213 pc 41268
	addi	%x19, %x3, 0  #2250 pc 41272
	addi	%x3, %x3, 12  #2250 pc 41276
	addj	%x20, 29828  #2250 try_exploit_neighbors.2987 pc 41280
	sw	%x20, 0(%x19)  #2250 pc 41284
	sw	%x17, 8(%x19)  #2250 pc 41288
	sw	%x12, 4(%x19)  #2250 pc 41292
	addi	%x12, %x3, 0  #2277 pc 41296
	addi	%x3, %x3, 8  #2277 pc 41300
	addj	%x20, 30200  #2277 write_ppm_header.2994 pc 41304
	sw	%x20, 0(%x12)  #2277 pc 41308
	sw	%x18, 4(%x12)  #2277 pc 41312
	addi	%x20, %x3, 0  #2303 pc 41316
	addi	%x3, %x3, 8  #2303 pc 41320
	addj	%x21, 30596  #2303 write_rgb.3000 pc 41324
	sw	%x21, 0(%x20)  #2303 pc 41328
	sw	%x24, 4(%x20)  #2303 pc 41332
	addi	%x21, %x3, 0  #2326 pc 41336
	addi	%x3, %x3, 16  #2326 pc 41340
	addj	%x22, 30832  #2326 pretrace_diffuse_rays.3002 pc 41344
	sw	%x22, 0(%x21)  #2326 pc 41348
	sw	%x9, 12(%x21)  #2326 pc 41352
	sw	%x14, 8(%x21)  #2326 pc 41356
	sw	%x7, 4(%x21)  #2326 pc 41360
	addi	%x7, %x3, 0  #2356 pc 41364
	addi	%x3, %x3, 40  #2356 pc 41368
	addj	%x9, 31292  #2356 pretrace_pixels.3005 pc 41372
	sw	%x9, 0(%x7)  #2356 pc 41376
	sw	%x8, 36(%x7)  #2356 pc 41380
	sw	%x10, 32(%x7)  #2356 pc 41384
	sw	%x30, 28(%x7)  #2356 pc 41388
	sw	%x11, 24(%x7)  #2356 pc 41392
	lw	%x8, 84(%x2)  #2356 pc 41396
	sw	%x8, 20(%x7)  #2356 pc 41400
	sw	%x24, 16(%x7)  #2356 pc 41404
	lw	%x9, 108(%x2)  #2356 pc 41408
	sw	%x9, 12(%x7)  #2356 pc 41412
	sw	%x21, 8(%x7)  #2356 pc 41416
	lw	%x9, 80(%x2)  #2356 pc 41420
	sw	%x9, 4(%x7)  #2356 pc 41424
	addi	%x10, %x3, 0  #2381 pc 41428
	addi	%x3, %x3, 28  #2381 pc 41432
	addj	%x11, 31940  #2381 pretrace_line.3012 pc 41436
	sw	%x11, 0(%x10)  #2381 pc 41440
	lw	%x11, 104(%x2)  #2381 pc 41444
	sw	%x11, 24(%x10)  #2381 pc 41448
	lw	%x11, 100(%x2)  #2381 pc 41452
	sw	%x11, 20(%x10)  #2381 pc 41456
	sw	%x8, 16(%x10)  #2381 pc 41460
	sw	%x7, 12(%x10)  #2381 pc 41464
	sw	%x18, 8(%x10)  #2381 pc 41468
	sw	%x9, 4(%x10)  #2381 pc 41472
	addi	%x7, %x3, 0  #2397 pc 41476
	addi	%x3, %x3, 28  #2397 pc 41480
	addj	%x11, 32144  #2397 scan_pixel.3016 pc 41484
	sw	%x11, 0(%x7)  #2397 pc 41488
	sw	%x20, 24(%x7)  #2397 pc 41492
	sw	%x19, 20(%x7)  #2397 pc 41496
	sw	%x24, 16(%x7)  #2397 pc 41500
	sw	%x15, 12(%x7)  #2397 pc 41504
	sw	%x18, 8(%x7)  #2397 pc 41508
	sw	%x17, 4(%x7)  #2397 pc 41512
	addi	%x11, %x3, 0  #2417 pc 41516
	addi	%x3, %x3, 16  #2417 pc 41520
	addj	%x15, 32552  #2417 scan_line.3023 pc 41524
	sw	%x15, 0(%x11)  #2417 pc 41528
	sw	%x7, 12(%x11)  #2417 pc 41532
	sw	%x10, 8(%x11)  #2417 pc 41536
	sw	%x18, 4(%x11)  #2417 pc 41540
	addi	%x7, %x3, 0  #2469 pc 41544
	addi	%x3, %x3, 8  #2469 pc 41548
	addj	%x15, 33456  #2469 create_pixelline.3037 pc 41552
	sw	%x15, 0(%x7)  #2469 pc 41556
	sw	%x18, 4(%x7)  #2469 pc 41560
	addi	%x15, %x3, 0  #2497 pc 41564
	addi	%x3, %x3, 8  #2497 pc 41568
	addj	%x17, 33712  #2497 calc_dirvec.3044 pc 41572
	sw	%x17, 0(%x15)  #2497 pc 41576
	sw	%x14, 4(%x15)  #2497 pc 41580
	addi	%x17, %x3, 0  #2518 pc 41584
	addi	%x3, %x3, 8  #2518 pc 41588
	addj	%x19, 34760  #2518 calc_dirvecs.3052 pc 41592
	sw	%x19, 0(%x17)  #2518 pc 41596
	sw	%x15, 4(%x17)  #2518 pc 41600
	addi	%x15, %x3, 0  #2532 pc 41604
	addi	%x3, %x3, 8  #2532 pc 41608
	addj	%x19, 35072  #2532 calc_dirvec_rows.3057 pc 41612
	sw	%x19, 0(%x15)  #2532 pc 41616
	sw	%x17, 4(%x15)  #2532 pc 41620
	addi	%x17, %x3, 0  #2545 pc 41624
	addi	%x3, %x3, 8  #2545 pc 41628
	addj	%x19, 35268  #2545 create_dirvec.3061 pc 41632
	sw	%x19, 0(%x17)  #2545 pc 41636
	lw	%x19, 0(%x2)  #2545 pc 41640
	sw	%x19, 4(%x17)  #2545 pc 41644
	addi	%x20, %x3, 0  #2551 pc 41648
	addi	%x3, %x3, 8  #2551 pc 41652
	addj	%x21, 35376  #2551 create_dirvec_elements.3063 pc 41656
	sw	%x21, 0(%x20)  #2551 pc 41660
	sw	%x17, 4(%x20)  #2551 pc 41664
	addi	%x21, %x3, 0  #2558 pc 41668
	addi	%x3, %x3, 16  #2558 pc 41672
	addj	%x22, 35484  #2558 create_dirvecs.3066 pc 41676
	sw	%x22, 0(%x21)  #2558 pc 41680
	sw	%x14, 12(%x21)  #2558 pc 41684
	sw	%x20, 8(%x21)  #2558 pc 41688
	sw	%x17, 4(%x21)  #2558 pc 41692
	addi	%x20, %x3, 0  #2570 pc 41696
	addi	%x3, %x3, 8  #2570 pc 41700
	addj	%x22, 35688  #2570 init_dirvec_constants.3068 pc 41704
	sw	%x22, 0(%x20)  #2570 pc 41708
	lw	%x22, 144(%x2)  #2570 pc 41712
	sw	%x22, 4(%x20)  #2570 pc 41716
	addi	%x23, %x3, 0  #2577 pc 41720
	addi	%x3, %x3, 12  #2577 pc 41724
	addj	%x24, 35796  #2577 init_vecset_constants.3071 pc 41728
	sw	%x24, 0(%x23)  #2577 pc 41732
	sw	%x20, 8(%x23)  #2577 pc 41736
	sw	%x14, 4(%x23)  #2577 pc 41740
	addi	%x14, %x3, 0  #2584 pc 41744
	addi	%x3, %x3, 16  #2584 pc 41748
	addj	%x20, 35908  #2584 init_dirvecs.3073 pc 41752
	sw	%x20, 0(%x14)  #2584 pc 41756
	sw	%x23, 12(%x14)  #2584 pc 41760
	sw	%x21, 8(%x14)  #2584 pc 41764
	sw	%x15, 4(%x14)  #2584 pc 41768
	addi	%x15, %x3, 0  #2595 pc 41772
	addi	%x3, %x3, 16  #2595 pc 41776
	addj	%x20, 36024  #2595 add_reflection.3075 pc 41780
	sw	%x20, 0(%x15)  #2595 pc 41784
	sw	%x22, 12(%x15)  #2595 pc 41788
	lw	%x20, 136(%x2)  #2595 pc 41792
	sw	%x20, 8(%x15)  #2595 pc 41796
	sw	%x17, 4(%x15)  #2595 pc 41800
	addi	%x17, %x3, 0  #2604 pc 41804
	addi	%x3, %x3, 16  #2604 pc 41808
	addj	%x20, 36240  #2604 setup_rect_reflection.3082 pc 41812
	sw	%x20, 0(%x17)  #2604 pc 41816
	sw	%x6, 12(%x17)  #2604 pc 41820
	sw	%x13, 8(%x17)  #2604 pc 41824
	sw	%x15, 4(%x17)  #2604 pc 41828
	addi	%x20, %x3, 0  #2618 pc 41832
	addi	%x3, %x3, 16  #2618 pc 41836
	addj	%x21, 36700  #2618 setup_surface_reflection.3085 pc 41840
	sw	%x21, 0(%x20)  #2618 pc 41844
	sw	%x6, 12(%x20)  #2618 pc 41848
	sw	%x13, 8(%x20)  #2618 pc 41852
	sw	%x15, 4(%x20)  #2618 pc 41856
	addi	%x6, %x3, 0  #2633 pc 41860
	addi	%x3, %x3, 16  #2633 pc 41864
	addj	%x15, 37148  #2633 setup_reflections.3088 pc 41868
	sw	%x15, 0(%x6)  #2633 pc 41872
	sw	%x20, 12(%x6)  #2633 pc 41876
	sw	%x17, 8(%x6)  #2633 pc 41880
	sw	%x16, 4(%x6)  #2633 pc 41884
	addi	%x29, %x3, 0  #2655 pc 41888
	addi	%x3, %x3, 60  #2655 pc 41892
	addj	%x15, 37436  #2655 rt.3090 pc 41896
	sw	%x15, 0(%x29)  #2655 pc 41900
	sw	%x12, 56(%x29)  #2655 pc 41904
	sw	%x6, 52(%x29)  #2655 pc 41908
	sw	%x22, 48(%x29)  #2655 pc 41912
	sw	%x8, 44(%x29)  #2655 pc 41916
	sw	%x11, 40(%x29)  #2655 pc 41920
	lw	%x6, 140(%x2)  #2655 pc 41924
	sw	%x6, 36(%x29)  #2655 pc 41928
	sw	%x10, 32(%x29)  #2655 pc 41932
	sw	%x19, 28(%x29)  #2655 pc 41936
	lw	%x6, 128(%x2)  #2655 pc 41940
	sw	%x6, 24(%x29)  #2655 pc 41944
	sw	%x13, 20(%x29)  #2655 pc 41948
	sw	%x14, 16(%x29)  #2655 pc 41952
	sw	%x18, 12(%x29)  #2655 pc 41956
	sw	%x9, 8(%x29)  #2655 pc 41960
	sw	%x7, 4(%x29)  #2655 pc 41964
	addi	%x6, %x0, 32 #256  #0 pc 41968
	addi	%x8, %x0, 3  #0 pc 41972
	addi	%x7, %x6, 0  #0 pc 41976
	sw	%x1, 148(%x2)  #2676 pc 41980
	lw	%x30, 0(%x29)  #2676 pc 41984
	addi	%x2, %x2, 152  #2676 pc 41988
 	jalr	%x1, %x30, 0  #2676 pc 41992
	addi	%x2, %x2, -152  #2676 pc 41996
	lw	%x1, 148(%x2)  #2676 pc 42000