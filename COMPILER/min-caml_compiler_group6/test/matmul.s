.section	".rodata"
.align	8
l.805:	! 12.000000
l.801:	! 11.000000
l.797:	! 10.000000
l.793:	! 9.000000
l.789:	! 8.000000
l.785:	! 7.000000
l.781:	! 6.000000
l.777:	! 5.000000
l.773:	! 4.000000
l.769:	! 3.000000
l.765:	! 2.000000
l.761:	! 1.000000
l.752:	! 0.000000
.section	".text"
mul_abs.324:  #pc 0
	addi	%x24, %x0, -1  #pc 4
	beq	%x7, %x24, 12  #57 pc 8
	j	be_else.854 #pc 12
	nop #pc 16
	addi	%x5, %x9, 0  #58 pc 20
	ret #pc 24
	nop #pc 28
be_else.854: #pc 28
	addi	%x10, %x0, 1  #0 pc 32
	sll	%x10, %x10, %x7  #60 pc 36
	and	%x10, %x6, %x10  #60 pc 40
	beq	%x10, %x0, 12  #60 pc 44
	j	be_else.855 #pc 48
	nop #pc 52
	addi	%x7, %x7, -1  #61 pc 56
	j	mul_abs.324  #61 pc 60
	nop #pc 64
be_else.855: #pc 64
	addi	%x10, %x7, -1  #63 pc 68
	sll	%x7, %x5, %x7  #63 pc 72
	add	%x9, %x9, %x7  #63 pc 76
	addi	%x7, %x10, 0  #0 pc 84
	j	mul_abs.324  #63 pc 88
	nop #pc 92
mul.329:  #pc 92
	bge	%x5, %x0, 12  #67 pc 96
	j	bge_else.856 #pc 100
	nop #pc 104
	addi	%x7, %x5, 0  #67 pc 108
	j	bge_cont.857 #pc 112
	nop #pc 116
bge_else.856: #pc 116
	sub	%x7, %x0, %x5  #67 pc 120
bge_cont.857: #pc 120
	bge	%x6, %x0, 12  #68 pc 124
	j	bge_else.858 #pc 128
	nop #pc 132
	addi	%x9, %x6, 0  #68 pc 136
	j	bge_cont.859 #pc 140
	nop #pc 144
bge_else.858: #pc 144
	sub	%x9, %x0, %x6  #68 pc 148
bge_cont.859: #pc 148
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
	j	be_else.860 #pc 240
	nop #pc 244
	ret #pc 248
	nop #pc 252
be_else.860: #pc 252
	sub	%x5, %x0, %x5  #73 pc 256
	ret #pc 260
	nop #pc 264
div_abs.332:  #pc 264
	addi	%x24, %x0, -1  #pc 268
	beq	%x7, %x24, 12  #77 pc 272
	j	be_else.861 #pc 276
	nop #pc 280
	addi	%x5, %x9, 0  #78 pc 284
	ret #pc 288
	nop #pc 292
be_else.861: #pc 292
	srl	%x10, %x5, %x7  #80 pc 296
	bge	%x10, %x6, 12  #80 pc 300
	j	ble_else.862 #pc 304
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
ble_else.862: #pc 348
	addi	%x7, %x7, -1  #83 pc 352
	j	div_abs.332  #83 pc 356
	nop #pc 360
div.337:  #pc 360
	bge	%x5, %x0, 12  #87 pc 364
	j	bge_else.863 #pc 368
	nop #pc 372
	addi	%x7, %x5, 0  #87 pc 376
	j	bge_cont.864 #pc 380
	nop #pc 384
bge_else.863: #pc 384
	sub	%x7, %x0, %x5  #87 pc 388
bge_cont.864: #pc 388
	bge	%x6, %x0, 12  #88 pc 392
	j	bge_else.865 #pc 396
	nop #pc 400
	addi	%x9, %x6, 0  #88 pc 404
	j	bge_cont.866 #pc 408
	nop #pc 412
bge_else.865: #pc 412
	sub	%x9, %x0, %x6  #88 pc 416
bge_cont.866: #pc 416
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
	j	be_else.867 #pc 508
	nop #pc 512
	ret #pc 516
	nop #pc 520
be_else.867: #pc 520
	sub	%x5, %x0, %x5  #93 pc 524
	ret #pc 528
	nop #pc 532
print_int.342:  #pc 532
	bge	%x5, %x0, 12  #100 pc 536
	j	bge_else.868 #pc 540
	nop #pc 544
	addi	%x24, %x0, 10  #pc 548
	bge	%x5, %x24, 12  #104 pc 552
	j	bge_else.869 #pc 556
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
bge_else.869: #pc 664
	addi	%x5, %x5, 48  #105 pc 668
	out	%x5  #105 pc 672
	ret #pc 676
	nop #pc 680
bge_else.868: #pc 680
	sub	%x5, %x0, %x5  #102 pc 684
	j	print_int.342  #102 pc 688
	nop #pc 692
assign_array.356:  #pc 692
	beq	%x7, %x0, 12  #160 pc 696
	j	be_else.872 #pc 700
	nop #pc 704
	slli	%x7, %x7, 2  #161 pc 708
	add	%x24, %x7, %x5  #161 pc 712
	sw	%x6, 0(%x24)  #161 pc 716
	ret #pc 720
	nop #pc 724
be_else.872: #pc 724
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
	j	be_else.874 #pc 820
	nop #pc 824
	slli	%x6, %x6, 2  #177 pc 828
	add	%x24, %x6, %x5  #177 pc 832
	fsw	%f0, 0(%x24) #177 pc 836
	ret #pc 840
	nop #pc 844
be_else.874: #pc 844
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
loop3.512:  #pc 932
	addi	%x24, %x0, 20  #pc 936
	add	%x24, %x24, %x22  #0 pc 940
	lw	%x6, 0(%x24)  #0 pc 944
	addi	%x24, %x0, 16  #pc 948
	add	%x24, %x24, %x22  #0 pc 952
	lw	%x7, 0(%x24)  #0 pc 956
	addi	%x24, %x0, 12  #pc 960
	add	%x24, %x24, %x22  #0 pc 964
	lw	%x9, 0(%x24)  #0 pc 968
	addi	%x24, %x0, 8  #pc 972
	add	%x24, %x24, %x22  #0 pc 976
	lw	%x10, 0(%x24)  #0 pc 980
	addi	%x24, %x0, 4  #pc 984
	add	%x24, %x24, %x22  #0 pc 988
	lw	%x11, 0(%x24)  #0 pc 992
	bge	%x5, %x0, 12  #197 pc 996
	j	bge_else.876 #pc 1000
	nop #pc 1004
	slli	%x12, %x7, 2  #198 pc 1008
	add	%x24, %x12, %x9  #198 pc 1012
	lw	%x12, 0(%x24)  #198 pc 1016
	slli	%x13, %x7, 2  #198 pc 1020
	add	%x24, %x13, %x9  #198 pc 1024
	lw	%x9, 0(%x24)  #198 pc 1028
	slli	%x13, %x6, 2  #198 pc 1032
	add	%x24, %x13, %x9  #198 pc 1036
	flw	%f0, 0(%x24)  #198 pc 1040
	slli	%x7, %x7, 2  #198 pc 1044
	add	%x24, %x7, %x11  #198 pc 1048
	lw	%x7, 0(%x24)  #198 pc 1052
	slli	%x9, %x5, 2  #198 pc 1056
	add	%x24, %x9, %x7  #198 pc 1060
	flw	%f1, 0(%x24)  #198 pc 1064
	slli	%x7, %x5, 2  #198 pc 1068
	add	%x24, %x7, %x10  #198 pc 1072
	lw	%x7, 0(%x24)  #198 pc 1076
	slli	%x9, %x6, 2  #198 pc 1080
	add	%x24, %x9, %x7  #198 pc 1084
	flw	%f2, 0(%x24)  #198 pc 1088
	fmul	%f1, %f1, %f2  #198 pc 1092
	fadd	%f0, %f0, %f1  #198 pc 1096
	slli	%x6, %x6, 2  #198 pc 1100
	add	%x24, %x6, %x12  #198 pc 1104
	fsw	%f0, 0(%x24) #198 pc 1108
	addi	%x5, %x5, -1  #199 pc 1112
	lw	%x23, 0(%x22)  #199 pc 1116
	jalr	%x0, %x23, 0  #199 pc 1120
	nop #pc 1124
bge_else.876: #pc 1124
	ret #pc 1128
	nop #pc 1132
loop2.504:  #pc 1132
	addi	%x24, %x0, 20  #pc 1136
	add	%x24, %x24, %x22  #0 pc 1140
	lw	%x6, 0(%x24)  #0 pc 1144
	addi	%x24, %x0, 16  #pc 1148
	add	%x24, %x24, %x22  #0 pc 1152
	lw	%x7, 0(%x24)  #0 pc 1156
	addi	%x24, %x0, 12  #pc 1160
	add	%x24, %x24, %x22  #0 pc 1164
	lw	%x9, 0(%x24)  #0 pc 1168
	addi	%x24, %x0, 8  #pc 1172
	add	%x24, %x24, %x22  #0 pc 1176
	lw	%x10, 0(%x24)  #0 pc 1180
	addi	%x24, %x0, 4  #pc 1184
	add	%x24, %x24, %x22  #0 pc 1188
	lw	%x11, 0(%x24)  #0 pc 1192
	bge	%x5, %x0, 12  #195 pc 1196
	j	bge_else.878 #pc 1200
	nop #pc 1204
	addi	%x12, %x3, 0  #196 pc 1208
	addi	%x3, %x3, 24  #196 pc 1212
	addi	%x24, %x0, 932  #196 loop3.512 pc 1216
	addi	%x13, %x24, 0  #196 pc 1220
	add	%x24, %x0, %x12  #196 pc 1224
	sw	%x13, 0(%x24)  #196 pc 1228
	addi	%x24, %x0, 20  #pc 1232
	add	%x24, %x24, %x12  #196 pc 1236
	sw	%x5, 0(%x24)  #196 pc 1240
	addi	%x24, %x0, 16  #pc 1244
	add	%x24, %x24, %x12  #196 pc 1248
	sw	%x7, 0(%x24)  #196 pc 1252
	addi	%x24, %x0, 12  #pc 1256
	add	%x24, %x24, %x12  #196 pc 1260
	sw	%x9, 0(%x24)  #196 pc 1264
	addi	%x24, %x0, 8  #pc 1268
	add	%x24, %x24, %x12  #196 pc 1272
	sw	%x10, 0(%x24)  #196 pc 1276
	addi	%x24, %x0, 4  #pc 1280
	add	%x24, %x24, %x12  #196 pc 1284
	sw	%x11, 0(%x24)  #196 pc 1288
	addi	%x6, %x6, -1  #200 pc 1292
	sw	%x22, 0(%x2)  #200 pc 1296
	sw	%x5, 4(%x2)  #200 pc 1300
	addi	%x5, %x6, 0  #0 pc 1308
	addi	%x22, %x12, 0  #0 pc 1316
	sw	%x1, 12(%x2)  #200 pc 1320
	lw	%x23, 0(%x22)  #200 pc 1324
	addi	%x2, %x2, 16  #200 pc 1328
	jalr	%x1, %x23, 0  #200 pc 1332
	addi	%x2, %x2, -16  #200 pc 1336
	lw	%x1, 12(%x2)  #200 pc 1340
	lw	%x5, 4(%x2)  #201 pc 1344
	addi	%x5, %x5, -1  #201 pc 1348
	lw	%x22, 0(%x2)  #201 pc 1352
	lw	%x23, 0(%x22)  #201 pc 1356
	jalr	%x0, %x23, 0  #201 pc 1360
	nop #pc 1364
bge_else.878: #pc 1364
	ret #pc 1368
	nop #pc 1372
loop1.499:  #pc 1372
	addi	%x24, %x0, 20  #pc 1376
	add	%x24, %x24, %x22  #0 pc 1380
	lw	%x6, 0(%x24)  #0 pc 1384
	addi	%x24, %x0, 16  #pc 1388
	add	%x24, %x24, %x22  #0 pc 1392
	lw	%x7, 0(%x24)  #0 pc 1396
	addi	%x24, %x0, 12  #pc 1400
	add	%x24, %x24, %x22  #0 pc 1404
	lw	%x9, 0(%x24)  #0 pc 1408
	addi	%x24, %x0, 8  #pc 1412
	add	%x24, %x24, %x22  #0 pc 1416
	lw	%x10, 0(%x24)  #0 pc 1420
	addi	%x24, %x0, 4  #pc 1424
	add	%x24, %x24, %x22  #0 pc 1428
	lw	%x11, 0(%x24)  #0 pc 1432
	bge	%x5, %x0, 12  #193 pc 1436
	j	bge_else.880 #pc 1440
	nop #pc 1444
	addi	%x12, %x3, 0  #194 pc 1448
	addi	%x3, %x3, 24  #194 pc 1452
	addi	%x24, %x0, 1132  #194 loop2.504 pc 1456
	addi	%x13, %x24, 0  #194 pc 1460
	add	%x24, %x0, %x12  #194 pc 1464
	sw	%x13, 0(%x24)  #194 pc 1468
	addi	%x24, %x0, 20  #pc 1472
	add	%x24, %x24, %x12  #194 pc 1476
	sw	%x7, 0(%x24)  #194 pc 1480
	addi	%x24, %x0, 16  #pc 1484
	add	%x24, %x24, %x12  #194 pc 1488
	sw	%x5, 0(%x24)  #194 pc 1492
	addi	%x24, %x0, 12  #pc 1496
	add	%x24, %x24, %x12  #194 pc 1500
	sw	%x9, 0(%x24)  #194 pc 1504
	addi	%x24, %x0, 8  #pc 1508
	add	%x24, %x24, %x12  #194 pc 1512
	sw	%x10, 0(%x24)  #194 pc 1516
	addi	%x24, %x0, 4  #pc 1520
	add	%x24, %x24, %x12  #194 pc 1524
	sw	%x11, 0(%x24)  #194 pc 1528
	addi	%x6, %x6, -1  #202 pc 1532
	sw	%x22, 0(%x2)  #202 pc 1536
	sw	%x5, 4(%x2)  #202 pc 1540
	addi	%x5, %x6, 0  #0 pc 1548
	addi	%x22, %x12, 0  #0 pc 1556
	sw	%x1, 12(%x2)  #202 pc 1560
	lw	%x23, 0(%x22)  #202 pc 1564
	addi	%x2, %x2, 16  #202 pc 1568
	jalr	%x1, %x23, 0  #202 pc 1572
	addi	%x2, %x2, -16  #202 pc 1576
	lw	%x1, 12(%x2)  #202 pc 1580
	lw	%x5, 4(%x2)  #203 pc 1584
	addi	%x5, %x5, -1  #203 pc 1588
	lw	%x22, 0(%x2)  #203 pc 1592
	lw	%x23, 0(%x22)  #203 pc 1596
	jalr	%x0, %x23, 0  #203 pc 1600
	nop #pc 1604
bge_else.880: #pc 1604
	ret #pc 1608
	nop #pc 1612
mul.370:  #pc 1612
	addi	%x22, %x3, 0  #192 pc 1616
	addi	%x3, %x3, 24  #192 pc 1620
	addi	%x24, %x0, 1372  #192 loop1.499 pc 1624
	addi	%x12, %x24, 0  #192 pc 1628
	add	%x24, %x0, %x22  #192 pc 1632
	sw	%x12, 0(%x24)  #192 pc 1636
	addi	%x24, %x0, 20  #pc 1640
	add	%x24, %x24, %x22  #192 pc 1644
	sw	%x7, 0(%x24)  #192 pc 1648
	addi	%x24, %x0, 16  #pc 1652
	add	%x24, %x24, %x22  #192 pc 1656
	sw	%x6, 0(%x24)  #192 pc 1660
	addi	%x24, %x0, 12  #pc 1664
	add	%x24, %x24, %x22  #192 pc 1668
	sw	%x11, 0(%x24)  #192 pc 1672
	addi	%x24, %x0, 8  #pc 1676
	add	%x24, %x24, %x22  #192 pc 1680
	sw	%x10, 0(%x24)  #192 pc 1684
	addi	%x24, %x0, 4  #pc 1688
	add	%x24, %x24, %x22  #192 pc 1692
	sw	%x9, 0(%x24)  #192 pc 1696
	addi	%x5, %x5, -1  #204 pc 1700
	lw	%x23, 0(%x22)  #204 pc 1704
	jalr	%x0, %x23, 0  #204 pc 1708
	nop #pc 1712
init.486:  #pc 1712
	addi	%x24, %x0, 8  #pc 1716
	add	%x24, %x24, %x22  #0 pc 1720
	lw	%x6, 0(%x24)  #0 pc 1724
	addi	%x24, %x0, 4  #pc 1728
	add	%x24, %x24, %x22  #0 pc 1732
	lw	%x7, 0(%x24)  #0 pc 1736
	bge	%x5, %x0, 12  #209 pc 1740
	j	bge_else.882 #pc 1744
	nop #pc 1748
	fmv	%f0, l.752  #0 pc 1752
	sw	%x22, 0(%x2)  #210 pc 1756
	sw	%x7, 4(%x2)  #210 pc 1760
	sw	%x5, 8(%x2)  #210 pc 1764
	addi	%x5, %x6, 0  #0 pc 1772
	sw	%x1, 12(%x2)  #210 pc 1776
	addi	%x2, %x2, 16  #210 pc 1780
	jal	%x1, create_float_array.367  #210 pc 1784
	addi	%x2, %x2, -16  #210 pc 1788
	lw	%x1, 12(%x2) #210 pc 1792
	lw	%x6, 8(%x2)  #210 pc 1796
	slli	%x7, %x6, 2  #210 pc 1800
	lw	%x9, 4(%x2)  #210 pc 1804
	add	%x24, %x7, %x9  #210 pc 1808
	sw	%x5, 0(%x24)  #210 pc 1812
	addi	%x5, %x6, -1  #211 pc 1816
	lw	%x22, 0(%x2)  #211 pc 1820
	lw	%x23, 0(%x22)  #211 pc 1824
	jalr	%x0, %x23, 0  #211 pc 1828
	nop #pc 1832
bge_else.882: #pc 1832
	ret #pc 1836
	nop #pc 1840
make.378:  #pc 1840
	addi	%x24, %x0, 4  #pc 1844
	add	%x24, %x24, %x22  #207 pc 1848
	lw	%x7, 0(%x24)  #207 pc 1852
	sw	%x5, 0(%x2)  #207 pc 1856
	sw	%x6, 4(%x2)  #207 pc 1860
	addi	%x6, %x7, 0  #0 pc 1868
	sw	%x1, 12(%x2)  #207 pc 1872
	addi	%x2, %x2, 16  #207 pc 1876
	jal	%x1, create_array.360  #207 pc 1880
	addi	%x2, %x2, -16  #207 pc 1884
	lw	%x1, 12(%x2) #207 pc 1888
	addi	%x22, %x3, 0  #208 pc 1892
	addi	%x3, %x3, 16  #208 pc 1896
	addi	%x24, %x0, 1712  #208 init.486 pc 1900
	addi	%x6, %x24, 0  #208 pc 1904
	add	%x24, %x0, %x22  #208 pc 1908
	sw	%x6, 0(%x24)  #208 pc 1912
	lw	%x6, 4(%x2)  #208 pc 1916
	addi	%x24, %x0, 8  #pc 1920
	add	%x24, %x24, %x22  #208 pc 1924
	sw	%x6, 0(%x24)  #208 pc 1928
	addi	%x24, %x0, 4  #pc 1932
	add	%x24, %x24, %x22  #208 pc 1936
	sw	%x5, 0(%x24)  #208 pc 1940
	lw	%x6, 0(%x2)  #212 pc 1944
	addi	%x6, %x6, -1  #212 pc 1948
	sw	%x5, 8(%x2)  #212 pc 1952
	addi	%x5, %x6, 0  #0 pc 1960
	sw	%x1, 12(%x2)  #212 pc 1964
	lw	%x23, 0(%x22)  #212 pc 1968
	addi	%x2, %x2, 16  #212 pc 1972
	jalr	%x1, %x23, 0  #212 pc 1976
	addi	%x2, %x2, -16  #212 pc 1980
	lw	%x1, 12(%x2)  #212 pc 1984
	lw	%x5, 8(%x2)  #213 pc 1988
	ret #pc 1992
	nop #pc 1996
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 0  #0 pc 2000
	fmv	%f0, l.752  #0 pc 2004
	sw	%x1, 12(%x2)  #205 pc 2008
	addi	%x2, %x2, 16  #205 pc 2012
	jal	%x1, create_float_array.367  #205 pc 2016
	addi	%x2, %x2, -16  #205 pc 2020
	lw	%x1, 12(%x2) #205 pc 2024
	addi	%x22, %x3, 0  #206 pc 2028
	addi	%x3, %x3, 8  #206 pc 2032
	addi	%x24, %x0, 1840  #206 make.378 pc 2036
	addi	%x6, %x24, 0  #206 pc 2040
	add	%x24, %x0, %x22  #206 pc 2044
	sw	%x6, 0(%x24)  #206 pc 2048
	addi	%x24, %x0, 4  #pc 2052
	add	%x24, %x24, %x22  #206 pc 2056
	sw	%x5, 0(%x24)  #206 pc 2060
	addi	%x5, %x0, 2  #0 pc 2064
	addi	%x6, %x0, 3  #0 pc 2068
	sw	%x22, 8(%x2)  #214 pc 2072
	sw	%x1, 12(%x2)  #214 pc 2076
	lw	%x23, 0(%x22)  #214 pc 2080
	addi	%x2, %x2, 16  #214 pc 2084
	jalr	%x1, %x23, 0  #214 pc 2088
	addi	%x2, %x2, -16  #214 pc 2092
	lw	%x1, 12(%x2)  #214 pc 2096
	addi	%x6, %x0, 3  #0 pc 2100
	addi	%x7, %x0, 2  #0 pc 2104
	lw	%x22, 8(%x2)  #215 pc 2108
	sw	%x5, 12(%x2)  #215 pc 2112
	addi	%x5, %x6, 0  #0 pc 2120
	addi	%x6, %x7, 0  #0 pc 2128
	sw	%x1, 20(%x2)  #215 pc 2132
	lw	%x23, 0(%x22)  #215 pc 2136
	addi	%x2, %x2, 24  #215 pc 2140
	jalr	%x1, %x23, 0  #215 pc 2144
	addi	%x2, %x2, -24  #215 pc 2148
	lw	%x1, 20(%x2)  #215 pc 2152
	addi	%x6, %x0, 2  #0 pc 2156
	lw	%x22, 8(%x2)  #216 pc 2160
	sw	%x5, 16(%x2)  #216 pc 2164
	addi	%x5, %x6, 0  #0 pc 2172
	sw	%x1, 20(%x2)  #216 pc 2176
	lw	%x23, 0(%x22)  #216 pc 2180
	addi	%x2, %x2, 24  #216 pc 2184
	jalr	%x1, %x23, 0  #216 pc 2188
	addi	%x2, %x2, -24  #216 pc 2192
	lw	%x1, 20(%x2)  #216 pc 2196
	addi	%x11, %x5, 0  #216 pc 2200
	lw	%x9, 12(%x2)  #217 pc 2204
	add	%x24, %x0, %x9  #217 pc 2208
	lw	%x5, 0(%x24)  #217 pc 2212
	fmv	%f0, l.761  #0 pc 2216
	add	%x24, %x0, %x5  #217 pc 2220
	fsw	%f0, 0(%x24) #217 pc 2224
	add	%x24, %x0, %x9  #217 pc 2228
	lw	%x5, 0(%x24)  #217 pc 2232
	fmv	%f0, l.765  #0 pc 2236
	addi	%x24, %x0, 4  #pc 2240
	add	%x24, %x24, %x5  #217 pc 2244
	fsw	%f0, 0(%x24) #217 pc 2248
	add	%x24, %x0, %x9  #217 pc 2252
	lw	%x5, 0(%x24)  #217 pc 2256
	fmv	%f0, l.769  #0 pc 2260
	addi	%x24, %x0, 8  #pc 2264
	add	%x24, %x24, %x5  #217 pc 2268
	fsw	%f0, 0(%x24) #217 pc 2272
	addi	%x24, %x0, 4  #pc 2276
	add	%x24, %x24, %x9  #218 pc 2280
	lw	%x5, 0(%x24)  #218 pc 2284
	fmv	%f0, l.773  #0 pc 2288
	add	%x24, %x0, %x5  #218 pc 2292
	fsw	%f0, 0(%x24) #218 pc 2296
	addi	%x24, %x0, 4  #pc 2300
	add	%x24, %x24, %x9  #218 pc 2304
	lw	%x5, 0(%x24)  #218 pc 2308
	fmv	%f0, l.777  #0 pc 2312
	addi	%x24, %x0, 4  #pc 2316
	add	%x24, %x24, %x5  #218 pc 2320
	fsw	%f0, 0(%x24) #218 pc 2324
	addi	%x24, %x0, 4  #pc 2328
	add	%x24, %x24, %x9  #218 pc 2332
	lw	%x5, 0(%x24)  #218 pc 2336
	fmv	%f0, l.781  #0 pc 2340
	addi	%x24, %x0, 8  #pc 2344
	add	%x24, %x24, %x5  #218 pc 2348
	fsw	%f0, 0(%x24) #218 pc 2352
	lw	%x10, 16(%x2)  #219 pc 2356
	add	%x24, %x0, %x10  #219 pc 2360
	lw	%x5, 0(%x24)  #219 pc 2364
	fmv	%f0, l.785  #0 pc 2368
	add	%x24, %x0, %x5  #219 pc 2372
	fsw	%f0, 0(%x24) #219 pc 2376
	add	%x24, %x0, %x10  #219 pc 2380
	lw	%x5, 0(%x24)  #219 pc 2384
	fmv	%f0, l.789  #0 pc 2388
	addi	%x24, %x0, 4  #pc 2392
	add	%x24, %x24, %x5  #219 pc 2396
	fsw	%f0, 0(%x24) #219 pc 2400
	addi	%x24, %x0, 4  #pc 2404
	add	%x24, %x24, %x10  #220 pc 2408
	lw	%x5, 0(%x24)  #220 pc 2412
	fmv	%f0, l.793  #0 pc 2416
	add	%x24, %x0, %x5  #220 pc 2420
	fsw	%f0, 0(%x24) #220 pc 2424
	addi	%x24, %x0, 4  #pc 2428
	add	%x24, %x24, %x10  #220 pc 2432
	lw	%x5, 0(%x24)  #220 pc 2436
	fmv	%f0, l.797  #0 pc 2440
	addi	%x24, %x0, 4  #pc 2444
	add	%x24, %x24, %x5  #220 pc 2448
	fsw	%f0, 0(%x24) #220 pc 2452
	addi	%x24, %x0, 8  #pc 2456
	add	%x24, %x24, %x10  #221 pc 2460
	lw	%x5, 0(%x24)  #221 pc 2464
	fmv	%f0, l.801  #0 pc 2468
	add	%x24, %x0, %x5  #221 pc 2472
	fsw	%f0, 0(%x24) #221 pc 2476
	addi	%x24, %x0, 8  #pc 2480
	add	%x24, %x24, %x10  #221 pc 2484
	lw	%x5, 0(%x24)  #221 pc 2488
	fmv	%f0, l.805  #0 pc 2492
	addi	%x24, %x0, 4  #pc 2496
	add	%x24, %x24, %x5  #221 pc 2500
	fsw	%f0, 0(%x24) #221 pc 2504
	addi	%x5, %x0, 2  #0 pc 2508
	addi	%x6, %x0, 3  #0 pc 2512
	sw	%x11, 20(%x2)  #222 pc 2516
	addi	%x7, %x5, 0  #0 pc 2524
	sw	%x1, 28(%x2)  #222 pc 2528
	addi	%x2, %x2, 32  #222 pc 2532
	jal	%x1, mul.370  #222 pc 2536
	addi	%x2, %x2, -32  #222 pc 2540
	lw	%x1, 28(%x2) #222 pc 2544
	lw	%x5, 20(%x2)  #223 pc 2548
	add	%x24, %x0, %x5  #223 pc 2552
	lw	%x6, 0(%x24)  #223 pc 2556
	add	%x24, %x0, %x6  #223 pc 2560
	flw	%f0, 0(%x24)  #223 pc 2564
	sw	%x1, 28(%x2)  #223 pc 2568
	addi	%x2, %x2, 32  #223 pc 2572
	jal	%x1, min_caml_truncate  #223 pc 2576
	addi	%x2, %x2, -32  #223 pc 2580
	lw	%x1, 28(%x2) #223 pc 2584
	sw	%x1, 28(%x2)  #223 pc 2588
	addi	%x2, %x2, 32  #223 pc 2592
	jal	%x1, print_int.342  #223 pc 2596
	addi	%x2, %x2, -32  #223 pc 2600
	lw	%x1, 28(%x2) #223 pc 2604
	addi	%x5, %x0, 0  #0 pc 2612
	sw	%x1, 28(%x2)  #224 pc 2616
	addi	%x2, %x2, 32  #224 pc 2620
	jal	%x1, min_caml_print_newline  #224 pc 2624
	addi	%x2, %x2, -32  #224 pc 2628
	lw	%x1, 28(%x2) #224 pc 2632
	lw	%x5, 20(%x2)  #225 pc 2636
	add	%x24, %x0, %x5  #225 pc 2640
	lw	%x6, 0(%x24)  #225 pc 2644
	addi	%x24, %x0, 4  #pc 2648
	add	%x24, %x24, %x6  #225 pc 2652
	flw	%f0, 0(%x24)  #225 pc 2656
	sw	%x1, 28(%x2)  #225 pc 2660
	addi	%x2, %x2, 32  #225 pc 2664
	jal	%x1, min_caml_truncate  #225 pc 2668
	addi	%x2, %x2, -32  #225 pc 2672
	lw	%x1, 28(%x2) #225 pc 2676
	sw	%x1, 28(%x2)  #225 pc 2680
	addi	%x2, %x2, 32  #225 pc 2684
	jal	%x1, print_int.342  #225 pc 2688
	addi	%x2, %x2, -32  #225 pc 2692
	lw	%x1, 28(%x2) #225 pc 2696
	addi	%x5, %x0, 0  #0 pc 2704
	sw	%x1, 28(%x2)  #226 pc 2708
	addi	%x2, %x2, 32  #226 pc 2712
	jal	%x1, min_caml_print_newline  #226 pc 2716
	addi	%x2, %x2, -32  #226 pc 2720
	lw	%x1, 28(%x2) #226 pc 2724
	lw	%x5, 20(%x2)  #227 pc 2728
	addi	%x24, %x0, 4  #pc 2732
	add	%x24, %x24, %x5  #227 pc 2736
	lw	%x6, 0(%x24)  #227 pc 2740
	add	%x24, %x0, %x6  #227 pc 2744
	flw	%f0, 0(%x24)  #227 pc 2748
	sw	%x1, 28(%x2)  #227 pc 2752
	addi	%x2, %x2, 32  #227 pc 2756
	jal	%x1, min_caml_truncate  #227 pc 2760
	addi	%x2, %x2, -32  #227 pc 2764
	lw	%x1, 28(%x2) #227 pc 2768
	sw	%x1, 28(%x2)  #227 pc 2772
	addi	%x2, %x2, 32  #227 pc 2776
	jal	%x1, print_int.342  #227 pc 2780
	addi	%x2, %x2, -32  #227 pc 2784
	lw	%x1, 28(%x2) #227 pc 2788
	addi	%x5, %x0, 0  #0 pc 2796
	sw	%x1, 28(%x2)  #228 pc 2800
	addi	%x2, %x2, 32  #228 pc 2804
	jal	%x1, min_caml_print_newline  #228 pc 2808
	addi	%x2, %x2, -32  #228 pc 2812
	lw	%x1, 28(%x2) #228 pc 2816
	lw	%x5, 20(%x2)  #229 pc 2820
	addi	%x24, %x0, 4  #pc 2824
	add	%x24, %x24, %x5  #229 pc 2828
	lw	%x5, 0(%x24)  #229 pc 2832
	addi	%x24, %x0, 4  #pc 2836
	add	%x24, %x24, %x5  #229 pc 2840
	flw	%f0, 0(%x24)  #229 pc 2844
	sw	%x1, 28(%x2)  #229 pc 2848
	addi	%x2, %x2, 32  #229 pc 2852
	jal	%x1, min_caml_truncate  #229 pc 2856
	addi	%x2, %x2, -32  #229 pc 2860
	lw	%x1, 28(%x2) #229 pc 2864
	sw	%x1, 28(%x2)  #229 pc 2868
	addi	%x2, %x2, 32  #229 pc 2872
	jal	%x1, print_int.342  #229 pc 2876
	addi	%x2, %x2, -32  #229 pc 2880
	lw	%x1, 28(%x2) #229 pc 2884
	addi	%x5, %x0, 0  #0 pc 2892
	sw	%x1, 28(%x2)  #230 pc 2896
	addi	%x2, %x2, 32  #230 pc 2900
	jal	%x1, min_caml_print_newline  #230 pc 2904
	addi	%x2, %x2, -32  #230 pc 2908
	lw	%x1, 28(%x2) #230 pc 2912
	addi	%x2, %x2, 112
