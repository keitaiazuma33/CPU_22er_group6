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
	addi	%x5, %x9, 0  #58 pc 20
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
	addi	%x7, %x10, 0  #0 pc 84
	j	mul_abs.324  #63 pc 88
	nop #pc 92
mul.329:  #pc 92
	bge	%x5, %x0, 12  #67 pc 96
	j	bge_else.854 #pc 100
	nop #pc 104
	addi	%x7, %x5, 0  #67 pc 108
	j	bge_cont.855 #pc 112
	nop #pc 116
bge_else.854: #pc 116
	sub	%x7, %x0, %x5  #67 pc 120
bge_cont.855: #pc 120
	bge	%x6, %x0, 12  #68 pc 124
	j	bge_else.856 #pc 128
	nop #pc 132
	addi	%x9, %x6, 0  #68 pc 136
	j	bge_cont.857 #pc 140
	nop #pc 144
bge_else.856: #pc 144
	sub	%x9, %x0, %x6  #68 pc 148
bge_cont.857: #pc 148
	addi	%x10, %x0, 30  #0 pc 152
	addi	%x11, %x0, 0  #0 pc 156
	sw	%x6, 0(%x2)  #69 pc 160
	sw	%x5, 4(%x2)  #69 pc 164
	addi	%x6, %x9, 0  #0 pc 172
	addi	%x5, %x7, 0  #0 pc 180
	addi	%x9, %x11, 0  #0 pc 188
	addi	%x7, %x10, 0  #0 pc 196
	sw	%x1, 12(%x2)  #69 pc 200
	addi	%x2, %x2, 16  #69 pc 204
	jal	%x1, mul_abs.324  #69 pc 208
	addi	%x2, %x2, -16  #69 pc 212
	lw	%x1, 12(%x2) #69 pc 216
	lw	%x6, 4(%x2)  #70 pc 220
	srli	%x6, %x6, 31  #70 pc 224
	lw	%x7, 0(%x2)  #70 pc 228
	srli	%x7, %x7, 31  #70 pc 232
	beq	%x6, %x7, 12  #70 pc 236
	j	be_else.858 #pc 240
	nop #pc 244
	ret #pc 248
	nop #pc 252
be_else.858: #pc 252
	sub	%x5, %x0, %x5  #73 pc 256
	ret #pc 260
	nop #pc 264
div_abs.332:  #pc 264
	addi	%x24, %x0, -1  #pc 268
	beq	%x7, %x24, 12  #77 pc 272
	j	be_else.859 #pc 276
	nop #pc 280
	addi	%x5, %x9, 0  #78 pc 284
	ret #pc 288
	nop #pc 292
be_else.859: #pc 292
	srl	%x10, %x5, %x7  #80 pc 296
	bge	%x10, %x6, 12  #80 pc 300
	j	ble_else.860 #pc 304
	nop #pc 308
	sll	%x10, %x6, %x7  #81 pc 312
	sub	%x5, %x5, %x10  #81 pc 316
	addi	%x10, %x7, -1  #81 pc 320
	addi	%x11, %x0, 1  #0 pc 324
	sll	%x7, %x11, %x7  #81 pc 328
	add	%x9, %x9, %x7  #81 pc 332
	addi	%x7, %x10, 0  #0 pc 340
	j	div_abs.332  #81 pc 344
	nop #pc 348
ble_else.860: #pc 348
	addi	%x7, %x7, -1  #83 pc 352
	j	div_abs.332  #83 pc 356
	nop #pc 360
div.337:  #pc 360
	bge	%x5, %x0, 12  #87 pc 364
	j	bge_else.861 #pc 368
	nop #pc 372
	addi	%x7, %x5, 0  #87 pc 376
	j	bge_cont.862 #pc 380
	nop #pc 384
bge_else.861: #pc 384
	sub	%x7, %x0, %x5  #87 pc 388
bge_cont.862: #pc 388
	bge	%x6, %x0, 12  #88 pc 392
	j	bge_else.863 #pc 396
	nop #pc 400
	addi	%x9, %x6, 0  #88 pc 404
	j	bge_cont.864 #pc 408
	nop #pc 412
bge_else.863: #pc 412
	sub	%x9, %x0, %x6  #88 pc 416
bge_cont.864: #pc 416
	addi	%x10, %x0, 30  #0 pc 420
	addi	%x11, %x0, 0  #0 pc 424
	sw	%x6, 0(%x2)  #89 pc 428
	sw	%x5, 4(%x2)  #89 pc 432
	addi	%x6, %x9, 0  #0 pc 440
	addi	%x5, %x7, 0  #0 pc 448
	addi	%x9, %x11, 0  #0 pc 456
	addi	%x7, %x10, 0  #0 pc 464
	sw	%x1, 12(%x2)  #89 pc 468
	addi	%x2, %x2, 16  #89 pc 472
	jal	%x1, div_abs.332  #89 pc 476
	addi	%x2, %x2, -16  #89 pc 480
	lw	%x1, 12(%x2) #89 pc 484
	lw	%x6, 4(%x2)  #90 pc 488
	srli	%x6, %x6, 31  #90 pc 492
	lw	%x7, 0(%x2)  #90 pc 496
	srli	%x7, %x7, 31  #90 pc 500
	beq	%x6, %x7, 12  #90 pc 504
	j	be_else.865 #pc 508
	nop #pc 512
	ret #pc 516
	nop #pc 520
be_else.865: #pc 520
	sub	%x5, %x0, %x5  #93 pc 524
	ret #pc 528
	nop #pc 532
print_int.342:  #pc 532
	bge	%x5, %x0, 12  #100 pc 536
	j	bge_else.866 #pc 540
	nop #pc 544
	addi	%x24, %x0, 10  #pc 548
	bge	%x5, %x24, 12  #104 pc 552
	j	bge_else.867 #pc 556
	nop #pc 560
	addi	%x6, %x0, 10  #0 pc 564
	sw	%x5, 0(%x2)  #107 pc 568
	sw	%x1, 4(%x2)  #107 pc 572
	addi	%x2, %x2, 8  #107 pc 576
	jal	%x1, div.337  #107 pc 580
	addi	%x2, %x2, -8  #107 pc 584
	lw	%x1, 4(%x2) #107 pc 588
	sw	%x5, 4(%x2)  #108 pc 592
	sw	%x1, 12(%x2)  #108 pc 596
	addi	%x2, %x2, 16  #108 pc 600
	jal	%x1, print_int.342  #108 pc 604
	addi	%x2, %x2, -16  #108 pc 608
	lw	%x1, 12(%x2) #108 pc 612
	addi	%x6, %x0, 10  #0 pc 616
	lw	%x5, 4(%x2)  #109 pc 620
	sw	%x1, 12(%x2)  #109 pc 624
	addi	%x2, %x2, 16  #109 pc 628
	jal	%x1, mul.329  #109 pc 632
	addi	%x2, %x2, -16  #109 pc 636
	lw	%x1, 12(%x2) #109 pc 640
	lw	%x6, 0(%x2)  #109 pc 644
	sub	%x5, %x6, %x5  #109 pc 648
	addi	%x5, %x5, 48  #109 pc 652
	out	%x5  #109 pc 656
	ret #pc 660
	nop #pc 664
bge_else.867: #pc 664
	addi	%x5, %x5, 48  #105 pc 668
	out	%x5  #105 pc 672
	ret #pc 676
	nop #pc 680
bge_else.866: #pc 680
	sub	%x5, %x0, %x5  #102 pc 684
	j	print_int.342  #102 pc 688
	nop #pc 692
assign_array.356:  #pc 692
	beq	%x7, %x0, 12  #160 pc 696
	j	be_else.870 #pc 700
	nop #pc 704
	slli	%x7, %x7, 2  #161 pc 708
	add	%x24, %x7, %x5  #161 pc 712
	sw	%x6, 0(%x24)  #161 pc 716
	ret #pc 720
	nop #pc 724
be_else.870: #pc 724
	slli	%x9, %x7, 2  #163 pc 728
	add	%x24, %x9, %x5  #163 pc 732
	sw	%x6, 0(%x24)  #163 pc 736
	addi	%x7, %x7, -1  #164 pc 740
	j	assign_array.356  #164 pc 744
	nop #pc 748
create_array.360:  #pc 748
	addi	%x7, %x3, 0  #168 pc 752
	sw	%x7, 0(%x2)  #171 pc 756
	addi	%x23, %x7, 0  #0 pc 764
	addi	%x7, %x5, 0  #0 pc 772
	addi	%x5, %x23, 0  #0 pc 780
	sw	%x1, 4(%x2)  #171 pc 784
	addi	%x2, %x2, 8  #171 pc 788
	jal	%x1, assign_array.356  #171 pc 792
	addi	%x2, %x2, -8  #171 pc 796
	lw	%x1, 4(%x2) #171 pc 800
	lw	%x5, 0(%x2)  #172 pc 804
	ret #pc 808
	nop #pc 812
assign_farray.363:  #pc 812
	beq	%x6, %x0, 12  #176 pc 816
	j	be_else.872 #pc 820
	nop #pc 824
	slli	%x6, %x6, 2  #177 pc 828
	add	%x24, %x6, %x5  #177 pc 832
	fsw	%f0, 0(%x24) #177 pc 836
	ret #pc 840
	nop #pc 844
be_else.872: #pc 844
	slli	%x7, %x6, 2  #179 pc 848
	add	%x24, %x7, %x5  #179 pc 852
	fsw	%f0, 0(%x24) #179 pc 856
	addi	%x6, %x6, -1  #180 pc 860
	j	assign_farray.363  #180 pc 864
	nop #pc 868
create_float_array.367:  #pc 868
	addi	%x6, %x3, 0  #184 pc 872
	sw	%x6, 0(%x2)  #187 pc 876
	addi	%x23, %x6, 0  #0 pc 884
	addi	%x6, %x5, 0  #0 pc 892
	addi	%x5, %x23, 0  #0 pc 900
	sw	%x1, 4(%x2)  #187 pc 904
	addi	%x2, %x2, 8  #187 pc 908
	jal	%x1, assign_farray.363  #187 pc 912
	addi	%x2, %x2, -8  #187 pc 916
	lw	%x1, 4(%x2) #187 pc 920
	lw	%x5, 0(%x2)  #188 pc 924
	ret #pc 928
	nop #pc 932
loop3.370:  #pc 932
	bge	%x6, %x0, 12  #192 pc 936
	j	bge_else.874 #pc 940
	nop #pc 944
	slli	%x12, %x5, 2  #193 pc 948
	add	%x24, %x12, %x11  #193 pc 952
	lw	%x12, 0(%x24)  #193 pc 956
	slli	%x13, %x5, 2  #193 pc 960
	add	%x24, %x13, %x11  #193 pc 964
	lw	%x13, 0(%x24)  #193 pc 968
	slli	%x14, %x7, 2  #193 pc 972
	add	%x24, %x14, %x13  #193 pc 976
	flw	%f0, 0(%x24)  #193 pc 980
	slli	%x13, %x5, 2  #193 pc 984
	add	%x24, %x13, %x9  #193 pc 988
	lw	%x13, 0(%x24)  #193 pc 992
	slli	%x14, %x6, 2  #193 pc 996
	add	%x24, %x14, %x13  #193 pc 1000
	flw	%f1, 0(%x24)  #193 pc 1004
	slli	%x13, %x6, 2  #193 pc 1008
	add	%x24, %x13, %x10  #193 pc 1012
	lw	%x13, 0(%x24)  #193 pc 1016
	slli	%x14, %x7, 2  #193 pc 1020
	add	%x24, %x14, %x13  #193 pc 1024
	flw	%f2, 0(%x24)  #193 pc 1028
	fmul	%f1, %f1, %f2  #193 pc 1032
	fadd	%f0, %f0, %f1  #193 pc 1036
	slli	%x13, %x7, 2  #193 pc 1040
	add	%x24, %x13, %x12  #193 pc 1044
	fsw	%f0, 0(%x24) #193 pc 1048
	addi	%x6, %x6, -1  #194 pc 1052
	j	loop3.370  #194 pc 1056
	nop #pc 1060
bge_else.874: #pc 1060
	ret #pc 1064
	nop #pc 1068
loop2.377:  #pc 1068
	bge	%x7, %x0, 12  #196 pc 1072
	j	bge_else.876 #pc 1076
	nop #pc 1080
	addi	%x12, %x6, -1  #197 pc 1084
	sw	%x11, 0(%x2)  #197 pc 1088
	sw	%x10, 4(%x2)  #197 pc 1092
	sw	%x9, 8(%x2)  #197 pc 1096
	sw	%x6, 12(%x2)  #197 pc 1100
	sw	%x5, 16(%x2)  #197 pc 1104
	sw	%x7, 20(%x2)  #197 pc 1108
	addi	%x6, %x12, 0  #0 pc 1116
	sw	%x1, 28(%x2)  #197 pc 1120
	addi	%x2, %x2, 32  #197 pc 1124
	jal	%x1, loop3.370  #197 pc 1128
	addi	%x2, %x2, -32  #197 pc 1132
	lw	%x1, 28(%x2) #197 pc 1136
	lw	%x5, 20(%x2)  #198 pc 1140
	addi	%x7, %x5, -1  #198 pc 1144
	lw	%x5, 16(%x2)  #198 pc 1148
	lw	%x6, 12(%x2)  #198 pc 1152
	lw	%x9, 8(%x2)  #198 pc 1156
	lw	%x10, 4(%x2)  #198 pc 1160
	lw	%x11, 0(%x2)  #198 pc 1164
	j	loop2.377  #198 pc 1168
	nop #pc 1172
bge_else.876: #pc 1172
	ret #pc 1176
	nop #pc 1180
loop1.384:  #pc 1180
	bge	%x5, %x0, 12  #200 pc 1184
	j	bge_else.878 #pc 1188
	nop #pc 1192
	addi	%x12, %x7, -1  #201 pc 1196
	sw	%x11, 0(%x2)  #201 pc 1200
	sw	%x10, 4(%x2)  #201 pc 1204
	sw	%x9, 8(%x2)  #201 pc 1208
	sw	%x7, 12(%x2)  #201 pc 1212
	sw	%x6, 16(%x2)  #201 pc 1216
	sw	%x5, 20(%x2)  #201 pc 1220
	addi	%x7, %x12, 0  #0 pc 1228
	sw	%x1, 28(%x2)  #201 pc 1232
	addi	%x2, %x2, 32  #201 pc 1236
	jal	%x1, loop2.377  #201 pc 1240
	addi	%x2, %x2, -32  #201 pc 1244
	lw	%x1, 28(%x2) #201 pc 1248
	lw	%x5, 20(%x2)  #202 pc 1252
	addi	%x5, %x5, -1  #202 pc 1256
	lw	%x6, 16(%x2)  #202 pc 1260
	lw	%x7, 12(%x2)  #202 pc 1264
	lw	%x9, 8(%x2)  #202 pc 1268
	lw	%x10, 4(%x2)  #202 pc 1272
	lw	%x11, 0(%x2)  #202 pc 1276
	j	loop1.384  #202 pc 1280
	nop #pc 1284
bge_else.878: #pc 1284
	ret #pc 1288
	nop #pc 1292
mul.391:  #pc 1292
	addi	%x5, %x5, -1  #204 pc 1296
	j	loop1.384  #204 pc 1300
	nop #pc 1304
init.399:  #pc 1304
	bge	%x5, %x0, 12  #207 pc 1308
	j	bge_else.880 #pc 1312
	nop #pc 1316
	fmv	%f0, l.749  #0 pc 1320
	sw	%x6, 0(%x2)  #208 pc 1324
	sw	%x7, 4(%x2)  #208 pc 1328
	sw	%x5, 8(%x2)  #208 pc 1332
	addi	%x5, %x6, 0  #0 pc 1340
	sw	%x1, 12(%x2)  #208 pc 1344
	addi	%x2, %x2, 16  #208 pc 1348
	jal	%x1, create_float_array.367  #208 pc 1352
	addi	%x2, %x2, -16  #208 pc 1356
	lw	%x1, 12(%x2) #208 pc 1360
	lw	%x6, 8(%x2)  #208 pc 1364
	slli	%x7, %x6, 2  #208 pc 1368
	lw	%x9, 4(%x2)  #208 pc 1372
	add	%x24, %x7, %x9  #208 pc 1376
	sw	%x5, 0(%x24)  #208 pc 1380
	addi	%x5, %x6, -1  #209 pc 1384
	lw	%x6, 0(%x2)  #209 pc 1388
	addi	%x7, %x9, 0  #0 pc 1396
	j	init.399  #209 pc 1400
	nop #pc 1404
bge_else.880: #pc 1404
	ret #pc 1408
	nop #pc 1412
make.403:  #pc 1412
	sw	%x6, 0(%x2)  #211 pc 1416
	sw	%x5, 4(%x2)  #211 pc 1420
	addi	%x6, %x7, 0  #0 pc 1428
	sw	%x1, 12(%x2)  #211 pc 1432
	addi	%x2, %x2, 16  #211 pc 1436
	jal	%x1, create_array.360  #211 pc 1440
	addi	%x2, %x2, -16  #211 pc 1444
	lw	%x1, 12(%x2) #211 pc 1448
	addi	%x7, %x5, 0  #211 pc 1452
	lw	%x5, 4(%x2)  #212 pc 1456
	addi	%x5, %x5, -1  #212 pc 1460
	lw	%x6, 0(%x2)  #212 pc 1464
	sw	%x7, 8(%x2)  #212 pc 1468
	sw	%x1, 12(%x2)  #212 pc 1472
	addi	%x2, %x2, 16  #212 pc 1476
	jal	%x1, init.399  #212 pc 1480
	addi	%x2, %x2, -16  #212 pc 1484
	lw	%x1, 12(%x2) #212 pc 1488
	lw	%x5, 8(%x2)  #213 pc 1492
	ret #pc 1496
	nop #pc 1500
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 0  #0 pc 1504
	fmv	%f0, l.749  #0 pc 1508
	sw	%x1, 12(%x2)  #205 pc 1512
	addi	%x2, %x2, 16  #205 pc 1516
	jal	%x1, create_float_array.367  #205 pc 1520
	addi	%x2, %x2, -16  #205 pc 1524
	lw	%x1, 12(%x2) #205 pc 1528
	addi	%x7, %x5, 0  #205 pc 1532
	addi	%x5, %x0, 2  #0 pc 1536
	addi	%x6, %x0, 3  #0 pc 1540
	sw	%x7, 8(%x2)  #214 pc 1544
	sw	%x1, 12(%x2)  #214 pc 1548
	addi	%x2, %x2, 16  #214 pc 1552
	jal	%x1, make.403  #214 pc 1556
	addi	%x2, %x2, -16  #214 pc 1560
	lw	%x1, 12(%x2) #214 pc 1564
	addi	%x6, %x0, 3  #0 pc 1568
	addi	%x7, %x0, 2  #0 pc 1572
	lw	%x9, 8(%x2)  #215 pc 1576
	sw	%x5, 12(%x2)  #215 pc 1580
	addi	%x5, %x6, 0  #0 pc 1588
	addi	%x6, %x7, 0  #0 pc 1596
	addi	%x7, %x9, 0  #0 pc 1604
	sw	%x1, 20(%x2)  #215 pc 1608
	addi	%x2, %x2, 24  #215 pc 1612
	jal	%x1, make.403  #215 pc 1616
	addi	%x2, %x2, -24  #215 pc 1620
	lw	%x1, 20(%x2) #215 pc 1624
	addi	%x6, %x0, 2  #0 pc 1628
	lw	%x7, 8(%x2)  #216 pc 1632
	sw	%x5, 16(%x2)  #216 pc 1636
	addi	%x5, %x6, 0  #0 pc 1644
	sw	%x1, 20(%x2)  #216 pc 1648
	addi	%x2, %x2, 24  #216 pc 1652
	jal	%x1, make.403  #216 pc 1656
	addi	%x2, %x2, -24  #216 pc 1660
	lw	%x1, 20(%x2) #216 pc 1664
	addi	%x11, %x5, 0  #216 pc 1668
	lw	%x9, 12(%x2)  #217 pc 1672
	add	%x24, %x0, %x9  #217 pc 1676
	lw	%x5, 0(%x24)  #217 pc 1680
	fmv	%f0, l.754  #0 pc 1684
	add	%x24, %x0, %x5  #217 pc 1688
	fsw	%f0, 0(%x24) #217 pc 1692
	add	%x24, %x0, %x9  #217 pc 1696
	lw	%x5, 0(%x24)  #217 pc 1700
	fmv	%f0, l.758  #0 pc 1704
	addi	%x24, %x0, 4  #pc 1708
	add	%x24, %x24, %x5  #217 pc 1712
	fsw	%f0, 0(%x24) #217 pc 1716
	add	%x24, %x0, %x9  #217 pc 1720
	lw	%x5, 0(%x24)  #217 pc 1724
	fmv	%f0, l.762  #0 pc 1728
	addi	%x24, %x0, 8  #pc 1732
	add	%x24, %x24, %x5  #217 pc 1736
	fsw	%f0, 0(%x24) #217 pc 1740
	addi	%x24, %x0, 4  #pc 1744
	add	%x24, %x24, %x9  #218 pc 1748
	lw	%x5, 0(%x24)  #218 pc 1752
	fmv	%f0, l.766  #0 pc 1756
	add	%x24, %x0, %x5  #218 pc 1760
	fsw	%f0, 0(%x24) #218 pc 1764
	addi	%x24, %x0, 4  #pc 1768
	add	%x24, %x24, %x9  #218 pc 1772
	lw	%x5, 0(%x24)  #218 pc 1776
	fmv	%f0, l.770  #0 pc 1780
	addi	%x24, %x0, 4  #pc 1784
	add	%x24, %x24, %x5  #218 pc 1788
	fsw	%f0, 0(%x24) #218 pc 1792
	addi	%x24, %x0, 4  #pc 1796
	add	%x24, %x24, %x9  #218 pc 1800
	lw	%x5, 0(%x24)  #218 pc 1804
	fmv	%f0, l.774  #0 pc 1808
	addi	%x24, %x0, 8  #pc 1812
	add	%x24, %x24, %x5  #218 pc 1816
	fsw	%f0, 0(%x24) #218 pc 1820
	lw	%x10, 16(%x2)  #219 pc 1824
	add	%x24, %x0, %x10  #219 pc 1828
	lw	%x5, 0(%x24)  #219 pc 1832
	fmv	%f0, l.778  #0 pc 1836
	add	%x24, %x0, %x5  #219 pc 1840
	fsw	%f0, 0(%x24) #219 pc 1844
	add	%x24, %x0, %x10  #219 pc 1848
	lw	%x5, 0(%x24)  #219 pc 1852
	fmv	%f0, l.782  #0 pc 1856
	addi	%x24, %x0, 4  #pc 1860
	add	%x24, %x24, %x5  #219 pc 1864
	fsw	%f0, 0(%x24) #219 pc 1868
	addi	%x24, %x0, 4  #pc 1872
	add	%x24, %x24, %x10  #220 pc 1876
	lw	%x5, 0(%x24)  #220 pc 1880
	fmv	%f0, l.786  #0 pc 1884
	add	%x24, %x0, %x5  #220 pc 1888
	fsw	%f0, 0(%x24) #220 pc 1892
	addi	%x24, %x0, 4  #pc 1896
	add	%x24, %x24, %x10  #220 pc 1900
	lw	%x5, 0(%x24)  #220 pc 1904
	fmv	%f0, l.790  #0 pc 1908
	addi	%x24, %x0, 4  #pc 1912
	add	%x24, %x24, %x5  #220 pc 1916
	fsw	%f0, 0(%x24) #220 pc 1920
	addi	%x24, %x0, 8  #pc 1924
	add	%x24, %x24, %x10  #221 pc 1928
	lw	%x5, 0(%x24)  #221 pc 1932
	fmv	%f0, l.794  #0 pc 1936
	add	%x24, %x0, %x5  #221 pc 1940
	fsw	%f0, 0(%x24) #221 pc 1944
	addi	%x24, %x0, 8  #pc 1948
	add	%x24, %x24, %x10  #221 pc 1952
	lw	%x5, 0(%x24)  #221 pc 1956
	fmv	%f0, l.798  #0 pc 1960
	addi	%x24, %x0, 4  #pc 1964
	add	%x24, %x24, %x5  #221 pc 1968
	fsw	%f0, 0(%x24) #221 pc 1972
	addi	%x5, %x0, 2  #0 pc 1976
	addi	%x6, %x0, 3  #0 pc 1980
	sw	%x11, 20(%x2)  #222 pc 1984
	addi	%x7, %x5, 0  #0 pc 1992
	sw	%x1, 28(%x2)  #222 pc 1996
	addi	%x2, %x2, 32  #222 pc 2000
	jal	%x1, mul.391  #222 pc 2004
	addi	%x2, %x2, -32  #222 pc 2008
	lw	%x1, 28(%x2) #222 pc 2012
	lw	%x5, 20(%x2)  #223 pc 2016
	add	%x24, %x0, %x5  #223 pc 2020
	lw	%x6, 0(%x24)  #223 pc 2024
	add	%x24, %x0, %x6  #223 pc 2028
	flw	%f0, 0(%x24)  #223 pc 2032
	sw	%x1, 28(%x2)  #223 pc 2036
	addi	%x2, %x2, 32  #223 pc 2040
	jal	%x1, min_caml_truncate  #223 pc 2044
	addi	%x2, %x2, -32  #223 pc 2048
	lw	%x1, 28(%x2) #223 pc 2052
	sw	%x1, 28(%x2)  #223 pc 2056
	addi	%x2, %x2, 32  #223 pc 2060
	jal	%x1, print_int.342  #223 pc 2064
	addi	%x2, %x2, -32  #223 pc 2068
	lw	%x1, 28(%x2) #223 pc 2072
	addi	%x5, %x0, 0  #0 pc 2080
	sw	%x1, 28(%x2)  #224 pc 2084
	addi	%x2, %x2, 32  #224 pc 2088
	jal	%x1, min_caml_print_newline  #224 pc 2092
	addi	%x2, %x2, -32  #224 pc 2096
	lw	%x1, 28(%x2) #224 pc 2100
	lw	%x5, 20(%x2)  #225 pc 2104
	add	%x24, %x0, %x5  #225 pc 2108
	lw	%x6, 0(%x24)  #225 pc 2112
	addi	%x24, %x0, 4  #pc 2116
	add	%x24, %x24, %x6  #225 pc 2120
	flw	%f0, 0(%x24)  #225 pc 2124
	sw	%x1, 28(%x2)  #225 pc 2128
	addi	%x2, %x2, 32  #225 pc 2132
	jal	%x1, min_caml_truncate  #225 pc 2136
	addi	%x2, %x2, -32  #225 pc 2140
	lw	%x1, 28(%x2) #225 pc 2144
	sw	%x1, 28(%x2)  #225 pc 2148
	addi	%x2, %x2, 32  #225 pc 2152
	jal	%x1, print_int.342  #225 pc 2156
	addi	%x2, %x2, -32  #225 pc 2160
	lw	%x1, 28(%x2) #225 pc 2164
	addi	%x5, %x0, 0  #0 pc 2172
	sw	%x1, 28(%x2)  #226 pc 2176
	addi	%x2, %x2, 32  #226 pc 2180
	jal	%x1, min_caml_print_newline  #226 pc 2184
	addi	%x2, %x2, -32  #226 pc 2188
	lw	%x1, 28(%x2) #226 pc 2192
	lw	%x5, 20(%x2)  #227 pc 2196
	addi	%x24, %x0, 4  #pc 2200
	add	%x24, %x24, %x5  #227 pc 2204
	lw	%x6, 0(%x24)  #227 pc 2208
	add	%x24, %x0, %x6  #227 pc 2212
	flw	%f0, 0(%x24)  #227 pc 2216
	sw	%x1, 28(%x2)  #227 pc 2220
	addi	%x2, %x2, 32  #227 pc 2224
	jal	%x1, min_caml_truncate  #227 pc 2228
	addi	%x2, %x2, -32  #227 pc 2232
	lw	%x1, 28(%x2) #227 pc 2236
	sw	%x1, 28(%x2)  #227 pc 2240
	addi	%x2, %x2, 32  #227 pc 2244
	jal	%x1, print_int.342  #227 pc 2248
	addi	%x2, %x2, -32  #227 pc 2252
	lw	%x1, 28(%x2) #227 pc 2256
	addi	%x5, %x0, 0  #0 pc 2264
	sw	%x1, 28(%x2)  #228 pc 2268
	addi	%x2, %x2, 32  #228 pc 2272
	jal	%x1, min_caml_print_newline  #228 pc 2276
	addi	%x2, %x2, -32  #228 pc 2280
	lw	%x1, 28(%x2) #228 pc 2284
	lw	%x5, 20(%x2)  #229 pc 2288
	addi	%x24, %x0, 4  #pc 2292
	add	%x24, %x24, %x5  #229 pc 2296
	lw	%x5, 0(%x24)  #229 pc 2300
	addi	%x24, %x0, 4  #pc 2304
	add	%x24, %x24, %x5  #229 pc 2308
	flw	%f0, 0(%x24)  #229 pc 2312
	sw	%x1, 28(%x2)  #229 pc 2316
	addi	%x2, %x2, 32  #229 pc 2320
	jal	%x1, min_caml_truncate  #229 pc 2324
	addi	%x2, %x2, -32  #229 pc 2328
	lw	%x1, 28(%x2) #229 pc 2332
	sw	%x1, 28(%x2)  #229 pc 2336
	addi	%x2, %x2, 32  #229 pc 2340
	jal	%x1, print_int.342  #229 pc 2344
	addi	%x2, %x2, -32  #229 pc 2348
	lw	%x1, 28(%x2) #229 pc 2352
	addi	%x5, %x0, 0  #0 pc 2360
	sw	%x1, 28(%x2)  #230 pc 2364
	addi	%x2, %x2, 32  #230 pc 2368
	jal	%x1, min_caml_print_newline  #230 pc 2372
	addi	%x2, %x2, -32  #230 pc 2376
	lw	%x1, 28(%x2) #230 pc 2380
	addi	%x2, %x2, 112
