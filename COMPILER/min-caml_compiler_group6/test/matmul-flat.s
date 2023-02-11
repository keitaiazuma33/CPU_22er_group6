.section	".rodata"
.align	8
l.798:	! 12.000000
l.794:	! 11.000000
l.790:	! 10.000000
l.786:	! 9.000000
l.782:	! 8.000000
l.778:	! 7.000000
l.774:	! 6.000000
l.770:	! 5.000000
l.766:	! 4.000000
l.762:	! 3.000000
l.758:	! 2.000000
l.754:	! 1.000000
l.749:	! 0.000000
.section	".text"
mul_abs.324:  #pc 0
	addi	%x24, %x0, -1  #pc 4
	beq	%x7, %x24, 12  #57 pc 8
	j	be_else.852 #pc 12
	nop #pc 16
	mv	%x5, %x9  #58 pc 20
	ret #pc 24
	nop #pc 28
be_else.852: #pc 28
	addi	%x10, %x0, 1  #0 pc 32
	sll	%x10, %x10, %x7  #60 pc 36
	and	%x10, %x6, %x10  #60 pc 40
	beq	%x10, %x0, 12  #60 pc 44
	j	be_else.853 #pc 48
	nop #pc 52
	addi	%x7, %x7, -1  #61 pc 56
	j	mul_abs.324  #61 pc 60
	nop #pc 64
be_else.853: #pc 64
	addi	%x10, %x7, -1  #63 pc 68
	sll	%x7, %x5, %x7  #63 pc 72
	add	%x9, %x9, %x7  #63 pc 76
	mv	%x7, %x10 #pc 80
	j	mul_abs.324  #63 pc 84
	nop #pc 88
mul.329:  #pc 88
	bge	%x5, %x0, 12  #67 pc 92
	j	bge_else.854 #pc 96
	nop #pc 100
	mv	%x7, %x5  #67 pc 104
	j	bge_cont.855 #pc 108
	nop #pc 112
bge_else.854: #pc 112
	sub	%x7, %x0, %x5  #67 pc 116
bge_cont.855: #pc 116
	bge	%x6, %x0, 12  #68 pc 120
	j	bge_else.856 #pc 124
	nop #pc 128
	mv	%x9, %x6  #68 pc 132
	j	bge_cont.857 #pc 136
	nop #pc 140
bge_else.856: #pc 140
	sub	%x9, %x0, %x6  #68 pc 144
bge_cont.857: #pc 144
	addi	%x10, %x0, 30  #0 pc 148
	addi	%x11, %x0, 0  #0 pc 152
	sw	%x6, 0(%x2)  #69 pc 156
	sw	%x5, 4(%x2)  #69 pc 160
	mv	%x6, %x9 #pc 164
	mv	%x5, %x7 #pc 168
	mv	%x9, %x11 #pc 172
	mv	%x7, %x10 #pc 176
	sw	%x1, 12(%x2)  #69 pc 180
	addi	%x2, %x2, 16  #69 pc 184
	jal	%x1, mul_abs.324  #69 pc 188
	addi	%x2, %x2, -16  #69 pc 192
	lw	%x1, 12(%x2) #69 pc 196
	lw	%x6, 4(%x2)  #70 pc 200
	srli	%x6, %x6, 31  #70 pc 204
	lw	%x7, 0(%x2)  #70 pc 208
	srli	%x7, %x7, 31  #70 pc 212
	beq	%x6, %x7, 12  #70 pc 216
	j	be_else.858 #pc 220
	nop #pc 224
	ret #pc 228
	nop #pc 232
be_else.858: #pc 232
	sub	%x5, %x0, %x5  #73 pc 236
	ret #pc 240
	nop #pc 244
div_abs.332:  #pc 244
	addi	%x24, %x0, -1  #pc 248
	beq	%x7, %x24, 12  #77 pc 252
	j	be_else.859 #pc 256
	nop #pc 260
	mv	%x5, %x9  #78 pc 264
	ret #pc 268
	nop #pc 272
be_else.859: #pc 272
	srl	%x10, %x5, %x7  #80 pc 276
	bge	%x10, %x6, 12  #80 pc 280
	j	ble_else.860 #pc 284
	nop #pc 288
	sll	%x10, %x6, %x7  #81 pc 292
	sub	%x5, %x5, %x10  #81 pc 296
	addi	%x10, %x7, -1  #81 pc 300
	addi	%x11, %x0, 1  #0 pc 304
	sll	%x7, %x11, %x7  #81 pc 308
	add	%x9, %x9, %x7  #81 pc 312
	mv	%x7, %x10 #pc 316
	j	div_abs.332  #81 pc 320
	nop #pc 324
ble_else.860: #pc 324
	addi	%x7, %x7, -1  #83 pc 328
	j	div_abs.332  #83 pc 332
	nop #pc 336
div.337:  #pc 336
	bge	%x5, %x0, 12  #87 pc 340
	j	bge_else.861 #pc 344
	nop #pc 348
	mv	%x7, %x5  #87 pc 352
	j	bge_cont.862 #pc 356
	nop #pc 360
bge_else.861: #pc 360
	sub	%x7, %x0, %x5  #87 pc 364
bge_cont.862: #pc 364
	bge	%x6, %x0, 12  #88 pc 368
	j	bge_else.863 #pc 372
	nop #pc 376
	mv	%x9, %x6  #88 pc 380
	j	bge_cont.864 #pc 384
	nop #pc 388
bge_else.863: #pc 388
	sub	%x9, %x0, %x6  #88 pc 392
bge_cont.864: #pc 392
	addi	%x10, %x0, 30  #0 pc 396
	addi	%x11, %x0, 0  #0 pc 400
	sw	%x6, 0(%x2)  #89 pc 404
	sw	%x5, 4(%x2)  #89 pc 408
	mv	%x6, %x9 #pc 412
	mv	%x5, %x7 #pc 416
	mv	%x9, %x11 #pc 420
	mv	%x7, %x10 #pc 424
	sw	%x1, 12(%x2)  #89 pc 428
	addi	%x2, %x2, 16  #89 pc 432
	jal	%x1, div_abs.332  #89 pc 436
	addi	%x2, %x2, -16  #89 pc 440
	lw	%x1, 12(%x2) #89 pc 444
	lw	%x6, 4(%x2)  #90 pc 448
	srli	%x6, %x6, 31  #90 pc 452
	lw	%x7, 0(%x2)  #90 pc 456
	srli	%x7, %x7, 31  #90 pc 460
	beq	%x6, %x7, 12  #90 pc 464
	j	be_else.865 #pc 468
	nop #pc 472
	ret #pc 476
	nop #pc 480
be_else.865: #pc 480
	sub	%x5, %x0, %x5  #93 pc 484
	ret #pc 488
	nop #pc 492
print_int.342:  #pc 492
	bge	%x5, %x0, 12  #100 pc 496
	j	bge_else.866 #pc 500
	nop #pc 504
	addi	%x24, %x0, 10  #pc 508
	bge	%x5, %x24, 12  #104 pc 512
	j	bge_else.867 #pc 516
	nop #pc 520
	addi	%x6, %x0, 10  #0 pc 524
	sw	%x5, 0(%x2)  #107 pc 528
	sw	%x1, 4(%x2)  #107 pc 532
	addi	%x2, %x2, 8  #107 pc 536
	jal	%x1, div.337  #107 pc 540
	addi	%x2, %x2, -8  #107 pc 544
	lw	%x1, 4(%x2) #107 pc 548
	sw	%x5, 4(%x2)  #108 pc 552
	sw	%x1, 12(%x2)  #108 pc 556
	addi	%x2, %x2, 16  #108 pc 560
	jal	%x1, print_int.342  #108 pc 564
	addi	%x2, %x2, -16  #108 pc 568
	lw	%x1, 12(%x2) #108 pc 572
	addi	%x6, %x0, 10  #0 pc 576
	lw	%x5, 4(%x2)  #109 pc 580
	sw	%x1, 12(%x2)  #109 pc 584
	addi	%x2, %x2, 16  #109 pc 588
	jal	%x1, mul.329  #109 pc 592
	addi	%x2, %x2, -16  #109 pc 596
	lw	%x1, 12(%x2) #109 pc 600
	lw	%x6, 0(%x2)  #109 pc 604
	sub	%x5, %x6, %x5  #109 pc 608
	addi	%x5, %x5, 48  #109 pc 612
	out	%x5  #109 pc 616
	ret #pc 620
	nop #pc 624
bge_else.867: #pc 624
	addi	%x5, %x5, 48  #105 pc 628
	out	%x5  #105 pc 632
	ret #pc 636
	nop #pc 640
bge_else.866: #pc 640
	sub	%x5, %x0, %x5  #102 pc 644
	j	print_int.342  #102 pc 648
	nop #pc 652
assign_array.356:  #pc 652
	beq	%x7, %x0, 12  #160 pc 656
	j	be_else.870 #pc 660
	nop #pc 664
	slli	%x7, %x7, 2  #161 pc 668
	add	%x24, %x7, %x5  #161 pc 672
	sw	%x6, 0(%x24)  #161 pc 676
	ret #pc 680
	nop #pc 684
be_else.870: #pc 684
	slli	%x9, %x7, 2  #163 pc 688
	add	%x24, %x9, %x5  #163 pc 692
	sw	%x6, 0(%x24)  #163 pc 696
	addi	%x7, %x7, -1  #164 pc 700
	j	assign_array.356  #164 pc 704
	nop #pc 708
create_array.360:  #pc 708
	mv	%x7, %x3  #168 pc 712
	sw	%x7, 0(%x2)  #171 pc 716
	mv	%x23, %x7 #pc 720
	mv	%x7, %x5 #pc 724
	mv	%x5, %x23 #pc 728
	sw	%x1, 4(%x2)  #171 pc 732
	addi	%x2, %x2, 8  #171 pc 736
	jal	%x1, assign_array.356  #171 pc 740
	addi	%x2, %x2, -8  #171 pc 744
	lw	%x1, 4(%x2) #171 pc 748
	lw	%x5, 0(%x2)  #172 pc 752
	ret #pc 756
	nop #pc 760
assign_farray.363:  #pc 760
	beq	%x6, %x0, 12  #176 pc 764
	j	be_else.872 #pc 768
	nop #pc 772
	slli	%x6, %x6, 3  #177 pc 776
	add	%x24, %x6, %x5  #177 pc 780
	fsw	%f0, 0(%x24) #177 pc 784
	ret #pc 788
	nop #pc 792
be_else.872: #pc 792
	slli	%x7, %x6, 3  #179 pc 796
	add	%x24, %x7, %x5  #179 pc 800
	fsw	%f0, 0(%x24) #179 pc 804
	addi	%x6, %x6, -1  #180 pc 808
	j	assign_farray.363  #180 pc 812
	nop #pc 816
create_float_array.367:  #pc 816
	mv	%x6, %x3  #184 pc 820
	sw	%x6, 0(%x2)  #187 pc 824
	mv	%x23, %x6 #pc 828
	mv	%x6, %x5 #pc 832
	mv	%x5, %x23 #pc 836
	sw	%x1, 4(%x2)  #187 pc 840
	addi	%x2, %x2, 8  #187 pc 844
	jal	%x1, assign_farray.363  #187 pc 848
	addi	%x2, %x2, -8  #187 pc 852
	lw	%x1, 4(%x2) #187 pc 856
	lw	%x5, 0(%x2)  #188 pc 860
	ret #pc 864
	nop #pc 868
loop3.370:  #pc 868
	bge	%x6, %x0, 12  #192 pc 872
	j	bge_else.874 #pc 876
	nop #pc 880
	slli	%x12, %x5, 2  #193 pc 884
	add	%x24, %x12, %x11  #193 pc 888
	lw	%x12, 0(%x24)  #193 pc 892
	slli	%x13, %x5, 2  #193 pc 896
	add	%x24, %x13, %x11  #193 pc 900
	lw	%x13, 0(%x24)  #193 pc 904
	slli	%x14, %x7, 3  #193 pc 908
	add	%x24, %x14, %x13  #193 pc 912
	flw	%f0, 0(%x24)  #193 pc 916
	slli	%x13, %x5, 2  #193 pc 920
	add	%x24, %x13, %x9  #193 pc 924
	lw	%x13, 0(%x24)  #193 pc 928
	slli	%x14, %x6, 3  #193 pc 932
	add	%x24, %x14, %x13  #193 pc 936
	flw	%f2, 0(%x24)  #193 pc 940
	slli	%x13, %x6, 2  #193 pc 944
	add	%x24, %x13, %x10  #193 pc 948
	lw	%x13, 0(%x24)  #193 pc 952
	slli	%x14, %x7, 3  #193 pc 956
	add	%x24, %x14, %x13  #193 pc 960
	flw	%f4, 0(%x24)  #193 pc 964
	fmul	%f2, %f2, %f4  #193 pc 968
	fadd	%f0, %f0, %f2  #193 pc 972
	slli	%x13, %x7, 3  #193 pc 976
	add	%x24, %x13, %x12  #193 pc 980
	fsw	%f0, 0(%x24) #193 pc 984
	addi	%x6, %x6, -1  #194 pc 988
	j	loop3.370  #194 pc 992
	nop #pc 996
bge_else.874: #pc 996
	ret #pc 1000
	nop #pc 1004
loop2.377:  #pc 1004
	bge	%x7, %x0, 12  #196 pc 1008
	j	bge_else.876 #pc 1012
	nop #pc 1016
	addi	%x12, %x6, -1  #197 pc 1020
	sw	%x11, 0(%x2)  #197 pc 1024
	sw	%x10, 4(%x2)  #197 pc 1028
	sw	%x9, 8(%x2)  #197 pc 1032
	sw	%x6, 12(%x2)  #197 pc 1036
	sw	%x5, 16(%x2)  #197 pc 1040
	sw	%x7, 20(%x2)  #197 pc 1044
	mv	%x6, %x12 #pc 1048
	sw	%x1, 28(%x2)  #197 pc 1052
	addi	%x2, %x2, 32  #197 pc 1056
	jal	%x1, loop3.370  #197 pc 1060
	addi	%x2, %x2, -32  #197 pc 1064
	lw	%x1, 28(%x2) #197 pc 1068
	lw	%x5, 20(%x2)  #198 pc 1072
	addi	%x7, %x5, -1  #198 pc 1076
	lw	%x5, 16(%x2)  #198 pc 1080
	lw	%x6, 12(%x2)  #198 pc 1084
	lw	%x9, 8(%x2)  #198 pc 1088
	lw	%x10, 4(%x2)  #198 pc 1092
	lw	%x11, 0(%x2)  #198 pc 1096
	j	loop2.377  #198 pc 1100
	nop #pc 1104
bge_else.876: #pc 1104
	ret #pc 1108
	nop #pc 1112
loop1.384:  #pc 1112
	bge	%x5, %x0, 12  #200 pc 1116
	j	bge_else.878 #pc 1120
	nop #pc 1124
	addi	%x12, %x7, -1  #201 pc 1128
	sw	%x11, 0(%x2)  #201 pc 1132
	sw	%x10, 4(%x2)  #201 pc 1136
	sw	%x9, 8(%x2)  #201 pc 1140
	sw	%x7, 12(%x2)  #201 pc 1144
	sw	%x6, 16(%x2)  #201 pc 1148
	sw	%x5, 20(%x2)  #201 pc 1152
	mv	%x7, %x12 #pc 1156
	sw	%x1, 28(%x2)  #201 pc 1160
	addi	%x2, %x2, 32  #201 pc 1164
	jal	%x1, loop2.377  #201 pc 1168
	addi	%x2, %x2, -32  #201 pc 1172
	lw	%x1, 28(%x2) #201 pc 1176
	lw	%x5, 20(%x2)  #202 pc 1180
	addi	%x5, %x5, -1  #202 pc 1184
	lw	%x6, 16(%x2)  #202 pc 1188
	lw	%x7, 12(%x2)  #202 pc 1192
	lw	%x9, 8(%x2)  #202 pc 1196
	lw	%x10, 4(%x2)  #202 pc 1200
	lw	%x11, 0(%x2)  #202 pc 1204
	j	loop1.384  #202 pc 1208
	nop #pc 1212
bge_else.878: #pc 1212
	ret #pc 1216
	nop #pc 1220
mul.391:  #pc 1220
	addi	%x5, %x5, -1  #204 pc 1224
	j	loop1.384  #204 pc 1228
	nop #pc 1232
init.399:  #pc 1232
	bge	%x5, %x0, 12  #207 pc 1236
	j	bge_else.880 #pc 1240
	nop #pc 1244
	mv	%f0, l.749  #0 pc 1248
	sw	%x6, 0(%x2)  #208 pc 1252
	sw	%x7, 4(%x2)  #208 pc 1256
	sw	%x5, 8(%x2)  #208 pc 1260
	mv	%x5, %x6 #pc 1264
	sw	%x1, 12(%x2)  #208 pc 1268
	addi	%x2, %x2, 16  #208 pc 1272
	jal	%x1, create_float_array.367  #208 pc 1276
	addi	%x2, %x2, -16  #208 pc 1280
	lw	%x1, 12(%x2) #208 pc 1284
	lw	%x6, 8(%x2)  #208 pc 1288
	slli	%x7, %x6, 2  #208 pc 1292
	lw	%x9, 4(%x2)  #208 pc 1296
	add	%x24, %x7, %x9  #208 pc 1300
	sw	%x5, 0(%x24)  #208 pc 1304
	addi	%x5, %x6, -1  #209 pc 1308
	lw	%x6, 0(%x2)  #209 pc 1312
	mv	%x7, %x9 #pc 1316
	j	init.399  #209 pc 1320
	nop #pc 1324
bge_else.880: #pc 1324
	ret #pc 1328
	nop #pc 1332
make.403:  #pc 1332
	sw	%x6, 0(%x2)  #211 pc 1336
	sw	%x5, 4(%x2)  #211 pc 1340
	mv	%x6, %x7 #pc 1344
	sw	%x1, 12(%x2)  #211 pc 1348
	addi	%x2, %x2, 16  #211 pc 1352
	jal	%x1, create_array.360  #211 pc 1356
	addi	%x2, %x2, -16  #211 pc 1360
	lw	%x1, 12(%x2) #211 pc 1364
	mv	%x7, %x5  #211 pc 1368
	lw	%x5, 4(%x2)  #212 pc 1372
	addi	%x5, %x5, -1  #212 pc 1376
	lw	%x6, 0(%x2)  #212 pc 1380
	sw	%x7, 8(%x2)  #212 pc 1384
	sw	%x1, 12(%x2)  #212 pc 1388
	addi	%x2, %x2, 16  #212 pc 1392
	jal	%x1, init.399  #212 pc 1396
	addi	%x2, %x2, -16  #212 pc 1400
	lw	%x1, 12(%x2) #212 pc 1404
	lw	%x5, 8(%x2)  #213 pc 1408
	ret #pc 1412
	nop #pc 1416
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 0  #0 pc 1420
	mv	%f0, l.749  #0 pc 1424
	sw	%x1, 12(%x2)  #205 pc 1428
	addi	%x2, %x2, 16  #205 pc 1432
	jal	%x1, create_float_array.367  #205 pc 1436
	addi	%x2, %x2, -16  #205 pc 1440
	lw	%x1, 12(%x2) #205 pc 1444
	mv	%x7, %x5  #205 pc 1448
	addi	%x5, %x0, 2  #0 pc 1452
	addi	%x6, %x0, 3  #0 pc 1456
	sw	%x7, 8(%x2)  #214 pc 1460
	sw	%x1, 12(%x2)  #214 pc 1464
	addi	%x2, %x2, 16  #214 pc 1468
	jal	%x1, make.403  #214 pc 1472
	addi	%x2, %x2, -16  #214 pc 1476
	lw	%x1, 12(%x2) #214 pc 1480
	addi	%x6, %x0, 3  #0 pc 1484
	addi	%x7, %x0, 2  #0 pc 1488
	lw	%x9, 8(%x2)  #215 pc 1492
	sw	%x5, 12(%x2)  #215 pc 1496
	mv	%x5, %x6 #pc 1500
	mv	%x6, %x7 #pc 1504
	mv	%x7, %x9 #pc 1508
	sw	%x1, 20(%x2)  #215 pc 1512
	addi	%x2, %x2, 24  #215 pc 1516
	jal	%x1, make.403  #215 pc 1520
	addi	%x2, %x2, -24  #215 pc 1524
	lw	%x1, 20(%x2) #215 pc 1528
	addi	%x6, %x0, 2  #0 pc 1532
	lw	%x7, 8(%x2)  #216 pc 1536
	sw	%x5, 16(%x2)  #216 pc 1540
	mv	%x5, %x6 #pc 1544
	sw	%x1, 20(%x2)  #216 pc 1548
	addi	%x2, %x2, 24  #216 pc 1552
	jal	%x1, make.403  #216 pc 1556
	addi	%x2, %x2, -24  #216 pc 1560
	lw	%x1, 20(%x2) #216 pc 1564
	mv	%x11, %x5  #216 pc 1568
	lw	%x9, 12(%x2)  #217 pc 1572
	add	%x24, %x0, %x9  #217 pc 1576
	lw	%x5, 0(%x24)  #217 pc 1580
	mv	%f0, l.754  #0 pc 1584
	add	%x24, %x0, %x5  #217 pc 1588
	fsw	%f0, 0(%x24) #217 pc 1592
	add	%x24, %x0, %x9  #217 pc 1596
	lw	%x5, 0(%x24)  #217 pc 1600
	mv	%f0, l.758  #0 pc 1604
	addi	%x24, %x0, 8  #pc 1608
	add	%x24, %x24, %x5  #217 pc 1612
	fsw	%f0, 0(%x24) #217 pc 1616
	add	%x24, %x0, %x9  #217 pc 1620
	lw	%x5, 0(%x24)  #217 pc 1624
	mv	%f0, l.762  #0 pc 1628
	addi	%x24, %x0, 16  #pc 1632
	add	%x24, %x24, %x5  #217 pc 1636
	fsw	%f0, 0(%x24) #217 pc 1640
	addi	%x24, %x0, 4  #pc 1644
	add	%x24, %x24, %x9  #218 pc 1648
	lw	%x5, 0(%x24)  #218 pc 1652
	mv	%f0, l.766  #0 pc 1656
	add	%x24, %x0, %x5  #218 pc 1660
	fsw	%f0, 0(%x24) #218 pc 1664
	addi	%x24, %x0, 4  #pc 1668
	add	%x24, %x24, %x9  #218 pc 1672
	lw	%x5, 0(%x24)  #218 pc 1676
	mv	%f0, l.770  #0 pc 1680
	addi	%x24, %x0, 8  #pc 1684
	add	%x24, %x24, %x5  #218 pc 1688
	fsw	%f0, 0(%x24) #218 pc 1692
	addi	%x24, %x0, 4  #pc 1696
	add	%x24, %x24, %x9  #218 pc 1700
	lw	%x5, 0(%x24)  #218 pc 1704
	mv	%f0, l.774  #0 pc 1708
	addi	%x24, %x0, 16  #pc 1712
	add	%x24, %x24, %x5  #218 pc 1716
	fsw	%f0, 0(%x24) #218 pc 1720
	lw	%x10, 16(%x2)  #219 pc 1724
	add	%x24, %x0, %x10  #219 pc 1728
	lw	%x5, 0(%x24)  #219 pc 1732
	mv	%f0, l.778  #0 pc 1736
	add	%x24, %x0, %x5  #219 pc 1740
	fsw	%f0, 0(%x24) #219 pc 1744
	add	%x24, %x0, %x10  #219 pc 1748
	lw	%x5, 0(%x24)  #219 pc 1752
	mv	%f0, l.782  #0 pc 1756
	addi	%x24, %x0, 8  #pc 1760
	add	%x24, %x24, %x5  #219 pc 1764
	fsw	%f0, 0(%x24) #219 pc 1768
	addi	%x24, %x0, 4  #pc 1772
	add	%x24, %x24, %x10  #220 pc 1776
	lw	%x5, 0(%x24)  #220 pc 1780
	mv	%f0, l.786  #0 pc 1784
	add	%x24, %x0, %x5  #220 pc 1788
	fsw	%f0, 0(%x24) #220 pc 1792
	addi	%x24, %x0, 4  #pc 1796
	add	%x24, %x24, %x10  #220 pc 1800
	lw	%x5, 0(%x24)  #220 pc 1804
	mv	%f0, l.790  #0 pc 1808
	addi	%x24, %x0, 8  #pc 1812
	add	%x24, %x24, %x5  #220 pc 1816
	fsw	%f0, 0(%x24) #220 pc 1820
	addi	%x24, %x0, 8  #pc 1824
	add	%x24, %x24, %x10  #221 pc 1828
	lw	%x5, 0(%x24)  #221 pc 1832
	mv	%f0, l.794  #0 pc 1836
	add	%x24, %x0, %x5  #221 pc 1840
	fsw	%f0, 0(%x24) #221 pc 1844
	addi	%x24, %x0, 8  #pc 1848
	add	%x24, %x24, %x10  #221 pc 1852
	lw	%x5, 0(%x24)  #221 pc 1856
	mv	%f0, l.798  #0 pc 1860
	addi	%x24, %x0, 8  #pc 1864
	add	%x24, %x24, %x5  #221 pc 1868
	fsw	%f0, 0(%x24) #221 pc 1872
	addi	%x5, %x0, 2  #0 pc 1876
	addi	%x6, %x0, 3  #0 pc 1880
	sw	%x11, 20(%x2)  #222 pc 1884
	mv	%x7, %x5 #pc 1888
	sw	%x1, 28(%x2)  #222 pc 1892
	addi	%x2, %x2, 32  #222 pc 1896
	jal	%x1, mul.391  #222 pc 1900
	addi	%x2, %x2, -32  #222 pc 1904
	lw	%x1, 28(%x2) #222 pc 1908
	lw	%x5, 20(%x2)  #223 pc 1912
	add	%x24, %x0, %x5  #223 pc 1916
	lw	%x6, 0(%x24)  #223 pc 1920
	add	%x24, %x0, %x6  #223 pc 1924
	flw	%f0, 0(%x24)  #223 pc 1928
	sw	%x1, 28(%x2)  #223 pc 1932
	addi	%x2, %x2, 32  #223 pc 1936
	jal	%x1, min_caml_truncate  #223 pc 1940
	addi	%x2, %x2, -32  #223 pc 1944
	lw	%x1, 28(%x2) #223 pc 1948
	sw	%x1, 28(%x2)  #223 pc 1952
	addi	%x2, %x2, 32  #223 pc 1956
	jal	%x1, print_int.342  #223 pc 1960
	addi	%x2, %x2, -32  #223 pc 1964
	lw	%x1, 28(%x2) #223 pc 1968
	mv	%x5, %x0 #pc 1972
	sw	%x1, 28(%x2)  #224 pc 1976
	addi	%x2, %x2, 32  #224 pc 1980
	jal	%x1, min_caml_print_newline  #224 pc 1984
	addi	%x2, %x2, -32  #224 pc 1988
	lw	%x1, 28(%x2) #224 pc 1992
	lw	%x5, 20(%x2)  #225 pc 1996
	add	%x24, %x0, %x5  #225 pc 2000
	lw	%x6, 0(%x24)  #225 pc 2004
	addi	%x24, %x0, 8  #pc 2008
	add	%x24, %x24, %x6  #225 pc 2012
	flw	%f0, 0(%x24)  #225 pc 2016
	sw	%x1, 28(%x2)  #225 pc 2020
	addi	%x2, %x2, 32  #225 pc 2024
	jal	%x1, min_caml_truncate  #225 pc 2028
	addi	%x2, %x2, -32  #225 pc 2032
	lw	%x1, 28(%x2) #225 pc 2036
	sw	%x1, 28(%x2)  #225 pc 2040
	addi	%x2, %x2, 32  #225 pc 2044
	jal	%x1, print_int.342  #225 pc 2048
	addi	%x2, %x2, -32  #225 pc 2052
	lw	%x1, 28(%x2) #225 pc 2056
	mv	%x5, %x0 #pc 2060
	sw	%x1, 28(%x2)  #226 pc 2064
	addi	%x2, %x2, 32  #226 pc 2068
	jal	%x1, min_caml_print_newline  #226 pc 2072
	addi	%x2, %x2, -32  #226 pc 2076
	lw	%x1, 28(%x2) #226 pc 2080
	lw	%x5, 20(%x2)  #227 pc 2084
	addi	%x24, %x0, 4  #pc 2088
	add	%x24, %x24, %x5  #227 pc 2092
	lw	%x6, 0(%x24)  #227 pc 2096
	add	%x24, %x0, %x6  #227 pc 2100
	flw	%f0, 0(%x24)  #227 pc 2104
	sw	%x1, 28(%x2)  #227 pc 2108
	addi	%x2, %x2, 32  #227 pc 2112
	jal	%x1, min_caml_truncate  #227 pc 2116
	addi	%x2, %x2, -32  #227 pc 2120
	lw	%x1, 28(%x2) #227 pc 2124
	sw	%x1, 28(%x2)  #227 pc 2128
	addi	%x2, %x2, 32  #227 pc 2132
	jal	%x1, print_int.342  #227 pc 2136
	addi	%x2, %x2, -32  #227 pc 2140
	lw	%x1, 28(%x2) #227 pc 2144
	mv	%x5, %x0 #pc 2148
	sw	%x1, 28(%x2)  #228 pc 2152
	addi	%x2, %x2, 32  #228 pc 2156
	jal	%x1, min_caml_print_newline  #228 pc 2160
	addi	%x2, %x2, -32  #228 pc 2164
	lw	%x1, 28(%x2) #228 pc 2168
	lw	%x5, 20(%x2)  #229 pc 2172
	addi	%x24, %x0, 4  #pc 2176
	add	%x24, %x24, %x5  #229 pc 2180
	lw	%x5, 0(%x24)  #229 pc 2184
	addi	%x24, %x0, 8  #pc 2188
	add	%x24, %x24, %x5  #229 pc 2192
	flw	%f0, 0(%x24)  #229 pc 2196
	sw	%x1, 28(%x2)  #229 pc 2200
	addi	%x2, %x2, 32  #229 pc 2204
	jal	%x1, min_caml_truncate  #229 pc 2208
	addi	%x2, %x2, -32  #229 pc 2212
	lw	%x1, 28(%x2) #229 pc 2216
	sw	%x1, 28(%x2)  #229 pc 2220
	addi	%x2, %x2, 32  #229 pc 2224
	jal	%x1, print_int.342  #229 pc 2228
	addi	%x2, %x2, -32  #229 pc 2232
	lw	%x1, 28(%x2) #229 pc 2236
	mv	%x5, %x0 #pc 2240
	sw	%x1, 28(%x2)  #230 pc 2244
	addi	%x2, %x2, 32  #230 pc 2248
	jal	%x1, min_caml_print_newline  #230 pc 2252
	addi	%x2, %x2, -32  #230 pc 2256
	lw	%x1, 28(%x2) #230 pc 2260
	addi	%x2, %x2, 112
