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
	mv	%x5, %x9  #58 pc 20
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
	mv	%x7, %x10 #pc 80
	j	mul_abs.324  #63 pc 84
	nop #pc 88
mul.329:  #pc 88
	bge	%x5, %x0, 12  #67 pc 92
	j	bge_else.856 #pc 96
	nop #pc 100
	mv	%x7, %x5  #67 pc 104
	j	bge_cont.857 #pc 108
	nop #pc 112
bge_else.856: #pc 112
	sub	%x7, %x0, %x5  #67 pc 116
bge_cont.857: #pc 116
	bge	%x6, %x0, 12  #68 pc 120
	j	bge_else.858 #pc 124
	nop #pc 128
	mv	%x9, %x6  #68 pc 132
	j	bge_cont.859 #pc 136
	nop #pc 140
bge_else.858: #pc 140
	sub	%x9, %x0, %x6  #68 pc 144
bge_cont.859: #pc 144
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
	j	be_else.860 #pc 220
	nop #pc 224
	ret #pc 228
	nop #pc 232
be_else.860: #pc 232
	sub	%x5, %x0, %x5  #73 pc 236
	ret #pc 240
	nop #pc 244
div_abs.332:  #pc 244
	addi	%x24, %x0, -1  #pc 248
	beq	%x7, %x24, 12  #77 pc 252
	j	be_else.861 #pc 256
	nop #pc 260
	mv	%x5, %x9  #78 pc 264
	ret #pc 268
	nop #pc 272
be_else.861: #pc 272
	srl	%x10, %x5, %x7  #80 pc 276
	bge	%x10, %x6, 12  #80 pc 280
	j	ble_else.862 #pc 284
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
ble_else.862: #pc 324
	addi	%x7, %x7, -1  #83 pc 328
	j	div_abs.332  #83 pc 332
	nop #pc 336
div.337:  #pc 336
	bge	%x5, %x0, 12  #87 pc 340
	j	bge_else.863 #pc 344
	nop #pc 348
	mv	%x7, %x5  #87 pc 352
	j	bge_cont.864 #pc 356
	nop #pc 360
bge_else.863: #pc 360
	sub	%x7, %x0, %x5  #87 pc 364
bge_cont.864: #pc 364
	bge	%x6, %x0, 12  #88 pc 368
	j	bge_else.865 #pc 372
	nop #pc 376
	mv	%x9, %x6  #88 pc 380
	j	bge_cont.866 #pc 384
	nop #pc 388
bge_else.865: #pc 388
	sub	%x9, %x0, %x6  #88 pc 392
bge_cont.866: #pc 392
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
	j	be_else.867 #pc 468
	nop #pc 472
	ret #pc 476
	nop #pc 480
be_else.867: #pc 480
	sub	%x5, %x0, %x5  #93 pc 484
	ret #pc 488
	nop #pc 492
print_int.342:  #pc 492
	bge	%x5, %x0, 12  #100 pc 496
	j	bge_else.868 #pc 500
	nop #pc 504
	addi	%x24, %x0, 10  #pc 508
	bge	%x5, %x24, 12  #104 pc 512
	j	bge_else.869 #pc 516
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
bge_else.869: #pc 624
	addi	%x5, %x5, 48  #105 pc 628
	out	%x5  #105 pc 632
	ret #pc 636
	nop #pc 640
bge_else.868: #pc 640
	sub	%x5, %x0, %x5  #102 pc 644
	j	print_int.342  #102 pc 648
	nop #pc 652
assign_array.356:  #pc 652
	beq	%x7, %x0, 12  #160 pc 656
	j	be_else.872 #pc 660
	nop #pc 664
	slli	%x7, %x7, 2  #161 pc 668
	add	%x24, %x7, %x5  #161 pc 672
	sw	%x6, 0(%x24)  #161 pc 676
	ret #pc 680
	nop #pc 684
be_else.872: #pc 684
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
	j	be_else.874 #pc 768
	nop #pc 772
	slli	%x6, %x6, 3  #177 pc 776
	add	%x24, %x6, %x5  #177 pc 780
	fsw	%f0, 0(%x24) #177 pc 784
	ret #pc 788
	nop #pc 792
be_else.874: #pc 792
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
loop3.512:  #pc 868
	addi	%x24, %x0, 20  #pc 872
	add	%x24, %x24, %x22  #0 pc 876
	lw	%x6, 0(%x24)  #0 pc 880
	addi	%x24, %x0, 16  #pc 884
	add	%x24, %x24, %x22  #0 pc 888
	lw	%x7, 0(%x24)  #0 pc 892
	addi	%x24, %x0, 12  #pc 896
	add	%x24, %x24, %x22  #0 pc 900
	lw	%x9, 0(%x24)  #0 pc 904
	addi	%x24, %x0, 8  #pc 908
	add	%x24, %x24, %x22  #0 pc 912
	lw	%x10, 0(%x24)  #0 pc 916
	addi	%x24, %x0, 4  #pc 920
	add	%x24, %x24, %x22  #0 pc 924
	lw	%x11, 0(%x24)  #0 pc 928
	bge	%x5, %x0, 12  #197 pc 932
	j	bge_else.876 #pc 936
	nop #pc 940
	slli	%x12, %x7, 2  #198 pc 944
	add	%x24, %x12, %x9  #198 pc 948
	lw	%x12, 0(%x24)  #198 pc 952
	slli	%x13, %x7, 2  #198 pc 956
	add	%x24, %x13, %x9  #198 pc 960
	lw	%x9, 0(%x24)  #198 pc 964
	slli	%x13, %x6, 3  #198 pc 968
	add	%x24, %x13, %x9  #198 pc 972
	flw	%f0, 0(%x24)  #198 pc 976
	slli	%x7, %x7, 2  #198 pc 980
	add	%x24, %x7, %x11  #198 pc 984
	lw	%x7, 0(%x24)  #198 pc 988
	slli	%x9, %x5, 3  #198 pc 992
	add	%x24, %x9, %x7  #198 pc 996
	flw	%f2, 0(%x24)  #198 pc 1000
	slli	%x7, %x5, 2  #198 pc 1004
	add	%x24, %x7, %x10  #198 pc 1008
	lw	%x7, 0(%x24)  #198 pc 1012
	slli	%x9, %x6, 3  #198 pc 1016
	add	%x24, %x9, %x7  #198 pc 1020
	flw	%f4, 0(%x24)  #198 pc 1024
	fmul	%f2, %f2, %f4  #198 pc 1028
	fadd	%f0, %f0, %f2  #198 pc 1032
	slli	%x6, %x6, 3  #198 pc 1036
	add	%x24, %x6, %x12  #198 pc 1040
	fsw	%f0, 0(%x24) #198 pc 1044
	addi	%x5, %x5, -1  #199 pc 1048
	lw	%x23, 0(%x22)  #199 pc 1052
	jalr	%x0, %x23, 0  #199 pc 1056
	nop #pc 1060
bge_else.876: #pc 1060
	ret #pc 1064
	nop #pc 1068
loop2.504:  #pc 1068
	addi	%x24, %x0, 20  #pc 1072
	add	%x24, %x24, %x22  #0 pc 1076
	lw	%x6, 0(%x24)  #0 pc 1080
	addi	%x24, %x0, 16  #pc 1084
	add	%x24, %x24, %x22  #0 pc 1088
	lw	%x7, 0(%x24)  #0 pc 1092
	addi	%x24, %x0, 12  #pc 1096
	add	%x24, %x24, %x22  #0 pc 1100
	lw	%x9, 0(%x24)  #0 pc 1104
	addi	%x24, %x0, 8  #pc 1108
	add	%x24, %x24, %x22  #0 pc 1112
	lw	%x10, 0(%x24)  #0 pc 1116
	addi	%x24, %x0, 4  #pc 1120
	add	%x24, %x24, %x22  #0 pc 1124
	lw	%x11, 0(%x24)  #0 pc 1128
	bge	%x5, %x0, 12  #195 pc 1132
	j	bge_else.878 #pc 1136
	nop #pc 1140
	mv	%x12, %x3  #196 pc 1144
	addi	%x3, %x3, 24  #196 pc 1148
	addi	%x24, %x0, 868  #196 loop3.512 pc 1152
	mv	%x13, %x24  #196 pc 1156
	add	%x24, %x0, %x12  #196 pc 1160
	sw	%x13, 0(%x24)  #196 pc 1164
	addi	%x24, %x0, 20  #pc 1168
	add	%x24, %x24, %x12  #196 pc 1172
	sw	%x5, 0(%x24)  #196 pc 1176
	addi	%x24, %x0, 16  #pc 1180
	add	%x24, %x24, %x12  #196 pc 1184
	sw	%x7, 0(%x24)  #196 pc 1188
	addi	%x24, %x0, 12  #pc 1192
	add	%x24, %x24, %x12  #196 pc 1196
	sw	%x9, 0(%x24)  #196 pc 1200
	addi	%x24, %x0, 8  #pc 1204
	add	%x24, %x24, %x12  #196 pc 1208
	sw	%x10, 0(%x24)  #196 pc 1212
	addi	%x24, %x0, 4  #pc 1216
	add	%x24, %x24, %x12  #196 pc 1220
	sw	%x11, 0(%x24)  #196 pc 1224
	addi	%x6, %x6, -1  #200 pc 1228
	sw	%x22, 0(%x2)  #200 pc 1232
	sw	%x5, 4(%x2)  #200 pc 1236
	mv	%x5, %x6 #pc 1240
	mv	%x22, %x12 #pc 1244
	sw	%x1, 12(%x2)  #200 pc 1248
	lw	%x23, 0(%x22)  #200 pc 1252
	addi	%x2, %x2, 16  #200 pc 1256
	jalr	%x1, %x23, 0  #200 pc 1260
	addi	%x2, %x2, -16  #200 pc 1264
	lw	%x1, 12(%x2)  #200 pc 1268
	lw	%x5, 4(%x2)  #201 pc 1272
	addi	%x5, %x5, -1  #201 pc 1276
	lw	%x22, 0(%x2)  #201 pc 1280
	lw	%x23, 0(%x22)  #201 pc 1284
	jalr	%x0, %x23, 0  #201 pc 1288
	nop #pc 1292
bge_else.878: #pc 1292
	ret #pc 1296
	nop #pc 1300
loop1.499:  #pc 1300
	addi	%x24, %x0, 20  #pc 1304
	add	%x24, %x24, %x22  #0 pc 1308
	lw	%x6, 0(%x24)  #0 pc 1312
	addi	%x24, %x0, 16  #pc 1316
	add	%x24, %x24, %x22  #0 pc 1320
	lw	%x7, 0(%x24)  #0 pc 1324
	addi	%x24, %x0, 12  #pc 1328
	add	%x24, %x24, %x22  #0 pc 1332
	lw	%x9, 0(%x24)  #0 pc 1336
	addi	%x24, %x0, 8  #pc 1340
	add	%x24, %x24, %x22  #0 pc 1344
	lw	%x10, 0(%x24)  #0 pc 1348
	addi	%x24, %x0, 4  #pc 1352
	add	%x24, %x24, %x22  #0 pc 1356
	lw	%x11, 0(%x24)  #0 pc 1360
	bge	%x5, %x0, 12  #193 pc 1364
	j	bge_else.880 #pc 1368
	nop #pc 1372
	mv	%x12, %x3  #194 pc 1376
	addi	%x3, %x3, 24  #194 pc 1380
	addi	%x24, %x0, 1068  #194 loop2.504 pc 1384
	mv	%x13, %x24  #194 pc 1388
	add	%x24, %x0, %x12  #194 pc 1392
	sw	%x13, 0(%x24)  #194 pc 1396
	addi	%x24, %x0, 20  #pc 1400
	add	%x24, %x24, %x12  #194 pc 1404
	sw	%x7, 0(%x24)  #194 pc 1408
	addi	%x24, %x0, 16  #pc 1412
	add	%x24, %x24, %x12  #194 pc 1416
	sw	%x5, 0(%x24)  #194 pc 1420
	addi	%x24, %x0, 12  #pc 1424
	add	%x24, %x24, %x12  #194 pc 1428
	sw	%x9, 0(%x24)  #194 pc 1432
	addi	%x24, %x0, 8  #pc 1436
	add	%x24, %x24, %x12  #194 pc 1440
	sw	%x10, 0(%x24)  #194 pc 1444
	addi	%x24, %x0, 4  #pc 1448
	add	%x24, %x24, %x12  #194 pc 1452
	sw	%x11, 0(%x24)  #194 pc 1456
	addi	%x6, %x6, -1  #202 pc 1460
	sw	%x22, 0(%x2)  #202 pc 1464
	sw	%x5, 4(%x2)  #202 pc 1468
	mv	%x5, %x6 #pc 1472
	mv	%x22, %x12 #pc 1476
	sw	%x1, 12(%x2)  #202 pc 1480
	lw	%x23, 0(%x22)  #202 pc 1484
	addi	%x2, %x2, 16  #202 pc 1488
	jalr	%x1, %x23, 0  #202 pc 1492
	addi	%x2, %x2, -16  #202 pc 1496
	lw	%x1, 12(%x2)  #202 pc 1500
	lw	%x5, 4(%x2)  #203 pc 1504
	addi	%x5, %x5, -1  #203 pc 1508
	lw	%x22, 0(%x2)  #203 pc 1512
	lw	%x23, 0(%x22)  #203 pc 1516
	jalr	%x0, %x23, 0  #203 pc 1520
	nop #pc 1524
bge_else.880: #pc 1524
	ret #pc 1528
	nop #pc 1532
mul.370:  #pc 1532
	mv	%x22, %x3  #192 pc 1536
	addi	%x3, %x3, 24  #192 pc 1540
	addi	%x24, %x0, 1300  #192 loop1.499 pc 1544
	mv	%x12, %x24  #192 pc 1548
	add	%x24, %x0, %x22  #192 pc 1552
	sw	%x12, 0(%x24)  #192 pc 1556
	addi	%x24, %x0, 20  #pc 1560
	add	%x24, %x24, %x22  #192 pc 1564
	sw	%x7, 0(%x24)  #192 pc 1568
	addi	%x24, %x0, 16  #pc 1572
	add	%x24, %x24, %x22  #192 pc 1576
	sw	%x6, 0(%x24)  #192 pc 1580
	addi	%x24, %x0, 12  #pc 1584
	add	%x24, %x24, %x22  #192 pc 1588
	sw	%x11, 0(%x24)  #192 pc 1592
	addi	%x24, %x0, 8  #pc 1596
	add	%x24, %x24, %x22  #192 pc 1600
	sw	%x10, 0(%x24)  #192 pc 1604
	addi	%x24, %x0, 4  #pc 1608
	add	%x24, %x24, %x22  #192 pc 1612
	sw	%x9, 0(%x24)  #192 pc 1616
	addi	%x5, %x5, -1  #204 pc 1620
	lw	%x23, 0(%x22)  #204 pc 1624
	jalr	%x0, %x23, 0  #204 pc 1628
	nop #pc 1632
init.486:  #pc 1632
	addi	%x24, %x0, 8  #pc 1636
	add	%x24, %x24, %x22  #0 pc 1640
	lw	%x6, 0(%x24)  #0 pc 1644
	addi	%x24, %x0, 4  #pc 1648
	add	%x24, %x24, %x22  #0 pc 1652
	lw	%x7, 0(%x24)  #0 pc 1656
	bge	%x5, %x0, 12  #209 pc 1660
	j	bge_else.882 #pc 1664
	nop #pc 1668
	mv	%f0, l.752  #0 pc 1672
	sw	%x22, 0(%x2)  #210 pc 1676
	sw	%x7, 4(%x2)  #210 pc 1680
	sw	%x5, 8(%x2)  #210 pc 1684
	mv	%x5, %x6 #pc 1688
	sw	%x1, 12(%x2)  #210 pc 1692
	addi	%x2, %x2, 16  #210 pc 1696
	jal	%x1, create_float_array.367  #210 pc 1700
	addi	%x2, %x2, -16  #210 pc 1704
	lw	%x1, 12(%x2) #210 pc 1708
	lw	%x6, 8(%x2)  #210 pc 1712
	slli	%x7, %x6, 2  #210 pc 1716
	lw	%x9, 4(%x2)  #210 pc 1720
	add	%x24, %x7, %x9  #210 pc 1724
	sw	%x5, 0(%x24)  #210 pc 1728
	addi	%x5, %x6, -1  #211 pc 1732
	lw	%x22, 0(%x2)  #211 pc 1736
	lw	%x23, 0(%x22)  #211 pc 1740
	jalr	%x0, %x23, 0  #211 pc 1744
	nop #pc 1748
bge_else.882: #pc 1748
	ret #pc 1752
	nop #pc 1756
make.378:  #pc 1756
	addi	%x24, %x0, 4  #pc 1760
	add	%x24, %x24, %x22  #207 pc 1764
	lw	%x7, 0(%x24)  #207 pc 1768
	sw	%x5, 0(%x2)  #207 pc 1772
	sw	%x6, 4(%x2)  #207 pc 1776
	mv	%x6, %x7 #pc 1780
	sw	%x1, 12(%x2)  #207 pc 1784
	addi	%x2, %x2, 16  #207 pc 1788
	jal	%x1, create_array.360  #207 pc 1792
	addi	%x2, %x2, -16  #207 pc 1796
	lw	%x1, 12(%x2) #207 pc 1800
	mv	%x22, %x3  #208 pc 1804
	addi	%x3, %x3, 16  #208 pc 1808
	addi	%x24, %x0, 1632  #208 init.486 pc 1812
	mv	%x6, %x24  #208 pc 1816
	add	%x24, %x0, %x22  #208 pc 1820
	sw	%x6, 0(%x24)  #208 pc 1824
	lw	%x6, 4(%x2)  #208 pc 1828
	addi	%x24, %x0, 8  #pc 1832
	add	%x24, %x24, %x22  #208 pc 1836
	sw	%x6, 0(%x24)  #208 pc 1840
	addi	%x24, %x0, 4  #pc 1844
	add	%x24, %x24, %x22  #208 pc 1848
	sw	%x5, 0(%x24)  #208 pc 1852
	lw	%x6, 0(%x2)  #212 pc 1856
	addi	%x6, %x6, -1  #212 pc 1860
	sw	%x5, 8(%x2)  #212 pc 1864
	mv	%x5, %x6 #pc 1868
	sw	%x1, 12(%x2)  #212 pc 1872
	lw	%x23, 0(%x22)  #212 pc 1876
	addi	%x2, %x2, 16  #212 pc 1880
	jalr	%x1, %x23, 0  #212 pc 1884
	addi	%x2, %x2, -16  #212 pc 1888
	lw	%x1, 12(%x2)  #212 pc 1892
	lw	%x5, 8(%x2)  #213 pc 1896
	ret #pc 1900
	nop #pc 1904
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 0  #0 pc 1908
	mv	%f0, l.752  #0 pc 1912
	sw	%x1, 12(%x2)  #205 pc 1916
	addi	%x2, %x2, 16  #205 pc 1920
	jal	%x1, create_float_array.367  #205 pc 1924
	addi	%x2, %x2, -16  #205 pc 1928
	lw	%x1, 12(%x2) #205 pc 1932
	mv	%x22, %x3  #206 pc 1936
	addi	%x3, %x3, 8  #206 pc 1940
	addi	%x24, %x0, 1756  #206 make.378 pc 1944
	mv	%x6, %x24  #206 pc 1948
	add	%x24, %x0, %x22  #206 pc 1952
	sw	%x6, 0(%x24)  #206 pc 1956
	addi	%x24, %x0, 4  #pc 1960
	add	%x24, %x24, %x22  #206 pc 1964
	sw	%x5, 0(%x24)  #206 pc 1968
	addi	%x5, %x0, 2  #0 pc 1972
	addi	%x6, %x0, 3  #0 pc 1976
	sw	%x22, 8(%x2)  #214 pc 1980
	sw	%x1, 12(%x2)  #214 pc 1984
	lw	%x23, 0(%x22)  #214 pc 1988
	addi	%x2, %x2, 16  #214 pc 1992
	jalr	%x1, %x23, 0  #214 pc 1996
	addi	%x2, %x2, -16  #214 pc 2000
	lw	%x1, 12(%x2)  #214 pc 2004
	addi	%x6, %x0, 3  #0 pc 2008
	addi	%x7, %x0, 2  #0 pc 2012
	lw	%x22, 8(%x2)  #215 pc 2016
	sw	%x5, 12(%x2)  #215 pc 2020
	mv	%x5, %x6 #pc 2024
	mv	%x6, %x7 #pc 2028
	sw	%x1, 20(%x2)  #215 pc 2032
	lw	%x23, 0(%x22)  #215 pc 2036
	addi	%x2, %x2, 24  #215 pc 2040
	jalr	%x1, %x23, 0  #215 pc 2044
	addi	%x2, %x2, -24  #215 pc 2048
	lw	%x1, 20(%x2)  #215 pc 2052
	addi	%x6, %x0, 2  #0 pc 2056
	lw	%x22, 8(%x2)  #216 pc 2060
	sw	%x5, 16(%x2)  #216 pc 2064
	mv	%x5, %x6 #pc 2068
	sw	%x1, 20(%x2)  #216 pc 2072
	lw	%x23, 0(%x22)  #216 pc 2076
	addi	%x2, %x2, 24  #216 pc 2080
	jalr	%x1, %x23, 0  #216 pc 2084
	addi	%x2, %x2, -24  #216 pc 2088
	lw	%x1, 20(%x2)  #216 pc 2092
	mv	%x11, %x5  #216 pc 2096
	lw	%x9, 12(%x2)  #217 pc 2100
	add	%x24, %x0, %x9  #217 pc 2104
	lw	%x5, 0(%x24)  #217 pc 2108
	mv	%f0, l.761  #0 pc 2112
	add	%x24, %x0, %x5  #217 pc 2116
	fsw	%f0, 0(%x24) #217 pc 2120
	add	%x24, %x0, %x9  #217 pc 2124
	lw	%x5, 0(%x24)  #217 pc 2128
	mv	%f0, l.765  #0 pc 2132
	addi	%x24, %x0, 8  #pc 2136
	add	%x24, %x24, %x5  #217 pc 2140
	fsw	%f0, 0(%x24) #217 pc 2144
	add	%x24, %x0, %x9  #217 pc 2148
	lw	%x5, 0(%x24)  #217 pc 2152
	mv	%f0, l.769  #0 pc 2156
	addi	%x24, %x0, 16  #pc 2160
	add	%x24, %x24, %x5  #217 pc 2164
	fsw	%f0, 0(%x24) #217 pc 2168
	addi	%x24, %x0, 4  #pc 2172
	add	%x24, %x24, %x9  #218 pc 2176
	lw	%x5, 0(%x24)  #218 pc 2180
	mv	%f0, l.773  #0 pc 2184
	add	%x24, %x0, %x5  #218 pc 2188
	fsw	%f0, 0(%x24) #218 pc 2192
	addi	%x24, %x0, 4  #pc 2196
	add	%x24, %x24, %x9  #218 pc 2200
	lw	%x5, 0(%x24)  #218 pc 2204
	mv	%f0, l.777  #0 pc 2208
	addi	%x24, %x0, 8  #pc 2212
	add	%x24, %x24, %x5  #218 pc 2216
	fsw	%f0, 0(%x24) #218 pc 2220
	addi	%x24, %x0, 4  #pc 2224
	add	%x24, %x24, %x9  #218 pc 2228
	lw	%x5, 0(%x24)  #218 pc 2232
	mv	%f0, l.781  #0 pc 2236
	addi	%x24, %x0, 16  #pc 2240
	add	%x24, %x24, %x5  #218 pc 2244
	fsw	%f0, 0(%x24) #218 pc 2248
	lw	%x10, 16(%x2)  #219 pc 2252
	add	%x24, %x0, %x10  #219 pc 2256
	lw	%x5, 0(%x24)  #219 pc 2260
	mv	%f0, l.785  #0 pc 2264
	add	%x24, %x0, %x5  #219 pc 2268
	fsw	%f0, 0(%x24) #219 pc 2272
	add	%x24, %x0, %x10  #219 pc 2276
	lw	%x5, 0(%x24)  #219 pc 2280
	mv	%f0, l.789  #0 pc 2284
	addi	%x24, %x0, 8  #pc 2288
	add	%x24, %x24, %x5  #219 pc 2292
	fsw	%f0, 0(%x24) #219 pc 2296
	addi	%x24, %x0, 4  #pc 2300
	add	%x24, %x24, %x10  #220 pc 2304
	lw	%x5, 0(%x24)  #220 pc 2308
	mv	%f0, l.793  #0 pc 2312
	add	%x24, %x0, %x5  #220 pc 2316
	fsw	%f0, 0(%x24) #220 pc 2320
	addi	%x24, %x0, 4  #pc 2324
	add	%x24, %x24, %x10  #220 pc 2328
	lw	%x5, 0(%x24)  #220 pc 2332
	mv	%f0, l.797  #0 pc 2336
	addi	%x24, %x0, 8  #pc 2340
	add	%x24, %x24, %x5  #220 pc 2344
	fsw	%f0, 0(%x24) #220 pc 2348
	addi	%x24, %x0, 8  #pc 2352
	add	%x24, %x24, %x10  #221 pc 2356
	lw	%x5, 0(%x24)  #221 pc 2360
	mv	%f0, l.801  #0 pc 2364
	add	%x24, %x0, %x5  #221 pc 2368
	fsw	%f0, 0(%x24) #221 pc 2372
	addi	%x24, %x0, 8  #pc 2376
	add	%x24, %x24, %x10  #221 pc 2380
	lw	%x5, 0(%x24)  #221 pc 2384
	mv	%f0, l.805  #0 pc 2388
	addi	%x24, %x0, 8  #pc 2392
	add	%x24, %x24, %x5  #221 pc 2396
	fsw	%f0, 0(%x24) #221 pc 2400
	addi	%x5, %x0, 2  #0 pc 2404
	addi	%x6, %x0, 3  #0 pc 2408
	sw	%x11, 20(%x2)  #222 pc 2412
	mv	%x7, %x5 #pc 2416
	sw	%x1, 28(%x2)  #222 pc 2420
	addi	%x2, %x2, 32  #222 pc 2424
	jal	%x1, mul.370  #222 pc 2428
	addi	%x2, %x2, -32  #222 pc 2432
	lw	%x1, 28(%x2) #222 pc 2436
	lw	%x5, 20(%x2)  #223 pc 2440
	add	%x24, %x0, %x5  #223 pc 2444
	lw	%x6, 0(%x24)  #223 pc 2448
	add	%x24, %x0, %x6  #223 pc 2452
	flw	%f0, 0(%x24)  #223 pc 2456
	sw	%x1, 28(%x2)  #223 pc 2460
	addi	%x2, %x2, 32  #223 pc 2464
	jal	%x1, min_caml_truncate  #223 pc 2468
	addi	%x2, %x2, -32  #223 pc 2472
	lw	%x1, 28(%x2) #223 pc 2476
	sw	%x1, 28(%x2)  #223 pc 2480
	addi	%x2, %x2, 32  #223 pc 2484
	jal	%x1, print_int.342  #223 pc 2488
	addi	%x2, %x2, -32  #223 pc 2492
	lw	%x1, 28(%x2) #223 pc 2496
	mv	%x5, %x0 #pc 2500
	sw	%x1, 28(%x2)  #224 pc 2504
	addi	%x2, %x2, 32  #224 pc 2508
	jal	%x1, min_caml_print_newline  #224 pc 2512
	addi	%x2, %x2, -32  #224 pc 2516
	lw	%x1, 28(%x2) #224 pc 2520
	lw	%x5, 20(%x2)  #225 pc 2524
	add	%x24, %x0, %x5  #225 pc 2528
	lw	%x6, 0(%x24)  #225 pc 2532
	addi	%x24, %x0, 8  #pc 2536
	add	%x24, %x24, %x6  #225 pc 2540
	flw	%f0, 0(%x24)  #225 pc 2544
	sw	%x1, 28(%x2)  #225 pc 2548
	addi	%x2, %x2, 32  #225 pc 2552
	jal	%x1, min_caml_truncate  #225 pc 2556
	addi	%x2, %x2, -32  #225 pc 2560
	lw	%x1, 28(%x2) #225 pc 2564
	sw	%x1, 28(%x2)  #225 pc 2568
	addi	%x2, %x2, 32  #225 pc 2572
	jal	%x1, print_int.342  #225 pc 2576
	addi	%x2, %x2, -32  #225 pc 2580
	lw	%x1, 28(%x2) #225 pc 2584
	mv	%x5, %x0 #pc 2588
	sw	%x1, 28(%x2)  #226 pc 2592
	addi	%x2, %x2, 32  #226 pc 2596
	jal	%x1, min_caml_print_newline  #226 pc 2600
	addi	%x2, %x2, -32  #226 pc 2604
	lw	%x1, 28(%x2) #226 pc 2608
	lw	%x5, 20(%x2)  #227 pc 2612
	addi	%x24, %x0, 4  #pc 2616
	add	%x24, %x24, %x5  #227 pc 2620
	lw	%x6, 0(%x24)  #227 pc 2624
	add	%x24, %x0, %x6  #227 pc 2628
	flw	%f0, 0(%x24)  #227 pc 2632
	sw	%x1, 28(%x2)  #227 pc 2636
	addi	%x2, %x2, 32  #227 pc 2640
	jal	%x1, min_caml_truncate  #227 pc 2644
	addi	%x2, %x2, -32  #227 pc 2648
	lw	%x1, 28(%x2) #227 pc 2652
	sw	%x1, 28(%x2)  #227 pc 2656
	addi	%x2, %x2, 32  #227 pc 2660
	jal	%x1, print_int.342  #227 pc 2664
	addi	%x2, %x2, -32  #227 pc 2668
	lw	%x1, 28(%x2) #227 pc 2672
	mv	%x5, %x0 #pc 2676
	sw	%x1, 28(%x2)  #228 pc 2680
	addi	%x2, %x2, 32  #228 pc 2684
	jal	%x1, min_caml_print_newline  #228 pc 2688
	addi	%x2, %x2, -32  #228 pc 2692
	lw	%x1, 28(%x2) #228 pc 2696
	lw	%x5, 20(%x2)  #229 pc 2700
	addi	%x24, %x0, 4  #pc 2704
	add	%x24, %x24, %x5  #229 pc 2708
	lw	%x5, 0(%x24)  #229 pc 2712
	addi	%x24, %x0, 8  #pc 2716
	add	%x24, %x24, %x5  #229 pc 2720
	flw	%f0, 0(%x24)  #229 pc 2724
	sw	%x1, 28(%x2)  #229 pc 2728
	addi	%x2, %x2, 32  #229 pc 2732
	jal	%x1, min_caml_truncate  #229 pc 2736
	addi	%x2, %x2, -32  #229 pc 2740
	lw	%x1, 28(%x2) #229 pc 2744
	sw	%x1, 28(%x2)  #229 pc 2748
	addi	%x2, %x2, 32  #229 pc 2752
	jal	%x1, print_int.342  #229 pc 2756
	addi	%x2, %x2, -32  #229 pc 2760
	lw	%x1, 28(%x2) #229 pc 2764
	mv	%x5, %x0 #pc 2768
	sw	%x1, 28(%x2)  #230 pc 2772
	addi	%x2, %x2, 32  #230 pc 2776
	jal	%x1, min_caml_print_newline  #230 pc 2780
	addi	%x2, %x2, -32  #230 pc 2784
	lw	%x1, 28(%x2) #230 pc 2788
	addi	%x2, %x2, 112
