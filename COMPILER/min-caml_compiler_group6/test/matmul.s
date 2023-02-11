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
	addi	%x31, %x0, -1  #pc 0
	beq	%x7, %x31, 12  #57 pc 4
	j	be_else.854 #pc 8
	nop #pc 12
	addi	%x5, %x8, 0  #58 pc 16
	ret #pc 20
	nop #pc 24
be_else.854: #pc 28
	addi	%x9, %x0, 1  #0 pc 28
	sll	%x9, %x9, %x7  #60 pc 32
	and	%x9, %x6, %x9  #60 pc 36
	beq	%x9, %x0, 12  #60 pc 40
	j	be_else.855 #pc 44
	nop #pc 48
	addi	%x7, %x7, -1  #61 pc 52
	j	mul_abs.324  #61 pc 56
	nop #pc 60
be_else.855: #pc 64
	addi	%x9, %x7, -1  #63 pc 64
	sll	%x7, %x5, %x7  #63 pc 68
	add	%x8, %x8, %x7  #63 pc 72
	addi	%x7, %x9, 0  #0 pc 76
	j	mul_abs.324  #63 pc 80
	nop #pc 84
mul.329:  #pc 88
	bge	%x5, %x0, 12  #67 pc 88
	j	bge_else.856 #pc 92
	nop #pc 96
	addi	%x7, %x5, 0  #67 pc 100
	j	bge_cont.857 #pc 104
	nop #pc 108
bge_else.856: #pc 112
	sub	%x7, %x0, %x5  #67 pc 112
bge_cont.857: #pc 116
	bge	%x6, %x0, 12  #68 pc 116
	j	bge_else.858 #pc 120
	nop #pc 124
	addi	%x8, %x6, 0  #68 pc 128
	j	bge_cont.859 #pc 132
	nop #pc 136
bge_else.858: #pc 140
	sub	%x8, %x0, %x6  #68 pc 140
bge_cont.859: #pc 144
	addi	%x9, %x0, 30  #0 pc 144
	addi	%x10, %x0, 0  #0 pc 148
	sw	%x6, 0(%x2)  #69 pc 152
	sw	%x5, 4(%x2)  #69 pc 156
	addi	%x6, %x8, 0  #0 pc 160
	addi	%x5, %x7, 0  #0 pc 164
	addi	%x8, %x10, 0  #0 pc 168
	addi	%x7, %x9, 0  #0 pc 172
	sw	%x1, 8(%x2)  #69 pc 176
	addi	%x2, %x2, 12  #69 pc 180
	jal	%x1, mul_abs.324  #69 pc 184
	addi	%x2, %x2, -12  #69 pc 188
	lw	%x1, 8(%x2) #69 pc 192
	lw	%x6, 4(%x2)  #70 pc 196
	srli	%x6, %x6, 31  #70 pc 200
	lw	%x7, 0(%x2)  #70 pc 204
	srli	%x7, %x7, 31  #70 pc 208
	beq	%x6, %x7, 12  #70 pc 212
	j	be_else.860 #pc 216
	nop #pc 220
	ret #pc 224
	nop #pc 228
be_else.860: #pc 232
	sub	%x5, %x0, %x5  #73 pc 232
	ret #pc 236
	nop #pc 240
div_abs.332:  #pc 244
	addi	%x31, %x0, -1  #pc 244
	beq	%x7, %x31, 12  #77 pc 248
	j	be_else.861 #pc 252
	nop #pc 256
	addi	%x5, %x8, 0  #78 pc 260
	ret #pc 264
	nop #pc 268
be_else.861: #pc 272
	srl	%x9, %x5, %x7  #80 pc 272
	bge	%x9, %x6, 12  #80 pc 276
	j	ble_else.862 #pc 280
	nop #pc 284
	sll	%x9, %x6, %x7  #81 pc 288
	sub	%x5, %x5, %x9  #81 pc 292
	addi	%x9, %x7, -1  #81 pc 296
	addi	%x10, %x0, 1  #0 pc 300
	sll	%x7, %x10, %x7  #81 pc 304
	add	%x8, %x8, %x7  #81 pc 308
	addi	%x7, %x9, 0  #0 pc 312
	j	div_abs.332  #81 pc 316
	nop #pc 320
ble_else.862: #pc 324
	addi	%x7, %x7, -1  #83 pc 324
	j	div_abs.332  #83 pc 328
	nop #pc 332
div.337:  #pc 336
	bge	%x5, %x0, 12  #87 pc 336
	j	bge_else.863 #pc 340
	nop #pc 344
	addi	%x7, %x5, 0  #87 pc 348
	j	bge_cont.864 #pc 352
	nop #pc 356
bge_else.863: #pc 360
	sub	%x7, %x0, %x5  #87 pc 360
bge_cont.864: #pc 364
	bge	%x6, %x0, 12  #88 pc 364
	j	bge_else.865 #pc 368
	nop #pc 372
	addi	%x8, %x6, 0  #88 pc 376
	j	bge_cont.866 #pc 380
	nop #pc 384
bge_else.865: #pc 388
	sub	%x8, %x0, %x6  #88 pc 388
bge_cont.866: #pc 392
	addi	%x9, %x0, 30  #0 pc 392
	addi	%x10, %x0, 0  #0 pc 396
	sw	%x6, 0(%x2)  #89 pc 400
	sw	%x5, 4(%x2)  #89 pc 404
	addi	%x6, %x8, 0  #0 pc 408
	addi	%x5, %x7, 0  #0 pc 412
	addi	%x8, %x10, 0  #0 pc 416
	addi	%x7, %x9, 0  #0 pc 420
	sw	%x1, 8(%x2)  #89 pc 424
	addi	%x2, %x2, 12  #89 pc 428
	jal	%x1, div_abs.332  #89 pc 432
	addi	%x2, %x2, -12  #89 pc 436
	lw	%x1, 8(%x2) #89 pc 440
	lw	%x6, 4(%x2)  #90 pc 444
	srli	%x6, %x6, 31  #90 pc 448
	lw	%x7, 0(%x2)  #90 pc 452
	srli	%x7, %x7, 31  #90 pc 456
	beq	%x6, %x7, 12  #90 pc 460
	j	be_else.867 #pc 464
	nop #pc 468
	ret #pc 472
	nop #pc 476
be_else.867: #pc 480
	sub	%x5, %x0, %x5  #93 pc 480
	ret #pc 484
	nop #pc 488
print_int.342:  #pc 492
	bge	%x5, %x0, 12  #100 pc 492
	j	bge_else.868 #pc 496
	nop #pc 500
	addi	%x31, %x0, 10  #pc 504
	bge	%x5, %x31, 12  #104 pc 508
	j	bge_else.869 #pc 512
	nop #pc 516
	addi	%x6, %x0, 10  #0 pc 520
	sw	%x5, 0(%x2)  #107 pc 524
	sw	%x1, 4(%x2)  #107 pc 528
	addi	%x2, %x2, 8  #107 pc 532
	jal	%x1, div.337  #107 pc 536
	addi	%x2, %x2, -8  #107 pc 540
	lw	%x1, 4(%x2) #107 pc 544
	sw	%x5, 4(%x2)  #108 pc 548
	sw	%x1, 8(%x2)  #108 pc 552
	addi	%x2, %x2, 12  #108 pc 556
	jal	%x1, print_int.342  #108 pc 560
	addi	%x2, %x2, -12  #108 pc 564
	lw	%x1, 8(%x2) #108 pc 568
	addi	%x6, %x0, 10  #0 pc 572
	lw	%x5, 4(%x2)  #109 pc 576
	sw	%x1, 8(%x2)  #109 pc 580
	addi	%x2, %x2, 12  #109 pc 584
	jal	%x1, mul.329  #109 pc 588
	addi	%x2, %x2, -12  #109 pc 592
	lw	%x1, 8(%x2) #109 pc 596
	lw	%x6, 0(%x2)  #109 pc 600
	sub	%x5, %x6, %x5  #109 pc 604
	addi	%x5, %x5, 48  #109 pc 608
	out	%x5  #109 pc 612
	ret #pc 616
	nop #pc 620
bge_else.869: #pc 624
	addi	%x5, %x5, 48  #105 pc 624
	out	%x5  #105 pc 628
	ret #pc 632
	nop #pc 636
bge_else.868: #pc 640
	addi	%x6, %x0, 45  #0 pc 640
	out	%x6  #101 pc 644
	sub	%x5, %x0, %x5  #102 pc 648
	j	print_int.342  #102 pc 652
	nop #pc 656
assign_array.356:  #pc 660
	beq	%x7, %x0, 12  #160 pc 660
	j	be_else.872 #pc 664
	nop #pc 668
	slli	%x7, %x7, 2  #161 pc 672
	add	%x31, %x7, %x5  #161 pc 676
	sw	%x6, 0(%x31)  #161 pc 680
	ret #pc 684
	nop #pc 688
be_else.872: #pc 692
	slli	%x8, %x7, 2  #163 pc 692
	add	%x31, %x8, %x5  #163 pc 696
	sw	%x6, 0(%x31)  #163 pc 700
	addi	%x7, %x7, -1  #164 pc 704
	j	assign_array.356  #164 pc 708
	nop #pc 712
create_array.360:  #pc 716
	addi	%x7, %x3, 0  #168 pc 716
	addi	%x8, %x7, 0  #169 pc 720
	slli	%x9, %x5, 2  #170 pc 724
	add	%x7, %x7, %x9  #170 pc 728
	addi	%x3, %x7, 0  #170 pc 732
	sw	%x8, 0(%x2)  #171 pc 736
	addi	%x7, %x5, 0  #0 pc 740
	addi	%x5, %x8, 0  #0 pc 744
	sw	%x1, 4(%x2)  #171 pc 748
	addi	%x2, %x2, 8  #171 pc 752
	jal	%x1, assign_array.356  #171 pc 756
	addi	%x2, %x2, -8  #171 pc 760
	lw	%x1, 4(%x2) #171 pc 764
	lw	%x5, 0(%x2)  #172 pc 768
	ret #pc 772
	nop #pc 776
assign_farray.363:  #pc 780
	beq	%x6, %x0, 12  #176 pc 780
	j	be_else.874 #pc 784
	nop #pc 788
	slli	%x6, %x6, 2  #177 pc 792
	add	%x31, %x6, %x5  #177 pc 796
	fsw	%f0, 0(%x31) #177 pc 800
	ret #pc 804
	nop #pc 808
be_else.874: #pc 812
	slli	%x7, %x6, 2  #179 pc 812
	add	%x31, %x7, %x5  #179 pc 816
	fsw	%f0, 0(%x31) #179 pc 820
	addi	%x6, %x6, -1  #180 pc 824
	j	assign_farray.363  #180 pc 828
	nop #pc 832
create_float_array.367:  #pc 836
	addi	%x6, %x3, 0  #184 pc 836
	addi	%x7, %x6, 0  #185 pc 840
	slli	%x8, %x5, 3  #186 pc 844
	add	%x6, %x6, %x8  #186 pc 848
	addi	%x3, %x6, 0  #186 pc 852
	sw	%x7, 0(%x2)  #187 pc 856
	addi	%x6, %x5, 0  #0 pc 860
	addi	%x5, %x7, 0  #0 pc 864
	sw	%x1, 4(%x2)  #187 pc 868
	addi	%x2, %x2, 8  #187 pc 872
	jal	%x1, assign_farray.363  #187 pc 876
	addi	%x2, %x2, -8  #187 pc 880
	lw	%x1, 4(%x2) #187 pc 884
	lw	%x5, 0(%x2)  #188 pc 888
	ret #pc 892
	nop #pc 896
loop3.512:  #pc 900
	lw	%x6, 20(%x29)  #0 pc 900
	lw	%x7, 16(%x29)  #0 pc 904
	lw	%x8, 12(%x29)  #0 pc 908
	lw	%x9, 8(%x29)  #0 pc 912
	lw	%x10, 4(%x29)  #0 pc 916
	bge	%x5, %x0, 12  #197 pc 920
	j	bge_else.876 #pc 924
	nop #pc 928
	slli	%x11, %x7, 2  #198 pc 932
	add	%x31, %x11, %x8  #198 pc 936
	lw	%x11, 0(%x31)  #198 pc 940
	slli	%x12, %x7, 2  #198 pc 944
	add	%x31, %x12, %x8  #198 pc 948
	lw	%x8, 0(%x31)  #198 pc 952
	slli	%x12, %x6, 2  #198 pc 956
	add	%x31, %x12, %x8  #198 pc 960
	flw	%f0, 0(%x31)  #198 pc 964
	slli	%x7, %x7, 2  #198 pc 968
	add	%x31, %x7, %x10  #198 pc 972
	lw	%x7, 0(%x31)  #198 pc 976
	slli	%x8, %x5, 2  #198 pc 980
	add	%x31, %x8, %x7  #198 pc 984
	flw	%f1, 0(%x31)  #198 pc 988
	slli	%x7, %x5, 2  #198 pc 992
	add	%x31, %x7, %x9  #198 pc 996
	lw	%x7, 0(%x31)  #198 pc 1000
	slli	%x8, %x6, 2  #198 pc 1004
	add	%x31, %x8, %x7  #198 pc 1008
	flw	%f2, 0(%x31)  #198 pc 1012
	fmul	%f1, %f1, %f2  #198 pc 1016
	fadd	%f0, %f0, %f1  #198 pc 1020
	slli	%x6, %x6, 2  #198 pc 1024
	add	%x31, %x6, %x11  #198 pc 1028
	fsw	%f0, 0(%x31) #198 pc 1032
	addi	%x5, %x5, -1  #199 pc 1036
	lw	%x30, 0(%x29)  #199 pc 1040
	jalr	%x0, %x30, 0  #199 pc 1044
	nop #pc 1048
bge_else.876: #pc 1052
	ret #pc 1052
	nop #pc 1056
loop2.504:  #pc 1060
	lw	%x6, 20(%x29)  #0 pc 1060
	lw	%x7, 16(%x29)  #0 pc 1064
	lw	%x8, 12(%x29)  #0 pc 1068
	lw	%x9, 8(%x29)  #0 pc 1072
	lw	%x10, 4(%x29)  #0 pc 1076
	bge	%x5, %x0, 12  #195 pc 1080
	j	bge_else.878 #pc 1084
	nop #pc 1088
	addi	%x11, %x3, 0  #196 pc 1092
	addi	%x3, %x3, 24  #196 pc 1096
	addi	%x31, %x0, 900  #196 loop3.512 pc 1100
	addi	%x12, %x31, 0  #196 pc 1104
	sw	%x12, 0(%x11)  #196 pc 1108
	sw	%x5, 20(%x11)  #196 pc 1112
	sw	%x7, 16(%x11)  #196 pc 1116
	sw	%x8, 12(%x11)  #196 pc 1120
	sw	%x9, 8(%x11)  #196 pc 1124
	sw	%x10, 4(%x11)  #196 pc 1128
	addi	%x6, %x6, -1  #200 pc 1132
	sw	%x29, 0(%x2)  #200 pc 1136
	sw	%x5, 4(%x2)  #200 pc 1140
	addi	%x5, %x6, 0  #0 pc 1144
	addi	%x29, %x11, 0  #0 pc 1148
	sw	%x1, 8(%x2)  #200 pc 1152
	lw	%x30, 0(%x29)  #200 pc 1156
	addi	%x2, %x2, 12  #200 pc 1160
	jalr	%x1, %x30, 0  #200 pc 1164
	addi	%x2, %x2, -12  #200 pc 1168
	lw	%x1, 8(%x2)  #200 pc 1172
	lw	%x5, 4(%x2)  #201 pc 1176
	addi	%x5, %x5, -1  #201 pc 1180
	lw	%x29, 0(%x2)  #201 pc 1184
	lw	%x30, 0(%x29)  #201 pc 1188
	jalr	%x0, %x30, 0  #201 pc 1192
	nop #pc 1196
bge_else.878: #pc 1200
	ret #pc 1200
	nop #pc 1204
loop1.499:  #pc 1208
	lw	%x6, 20(%x29)  #0 pc 1208
	lw	%x7, 16(%x29)  #0 pc 1212
	lw	%x8, 12(%x29)  #0 pc 1216
	lw	%x9, 8(%x29)  #0 pc 1220
	lw	%x10, 4(%x29)  #0 pc 1224
	bge	%x5, %x0, 12  #193 pc 1228
	j	bge_else.880 #pc 1232
	nop #pc 1236
	addi	%x11, %x3, 0  #194 pc 1240
	addi	%x3, %x3, 24  #194 pc 1244
	addi	%x31, %x0, 1060  #194 loop2.504 pc 1248
	addi	%x12, %x31, 0  #194 pc 1252
	sw	%x12, 0(%x11)  #194 pc 1256
	sw	%x7, 20(%x11)  #194 pc 1260
	sw	%x5, 16(%x11)  #194 pc 1264
	sw	%x8, 12(%x11)  #194 pc 1268
	sw	%x9, 8(%x11)  #194 pc 1272
	sw	%x10, 4(%x11)  #194 pc 1276
	addi	%x6, %x6, -1  #202 pc 1280
	sw	%x29, 0(%x2)  #202 pc 1284
	sw	%x5, 4(%x2)  #202 pc 1288
	addi	%x5, %x6, 0  #0 pc 1292
	addi	%x29, %x11, 0  #0 pc 1296
	sw	%x1, 8(%x2)  #202 pc 1300
	lw	%x30, 0(%x29)  #202 pc 1304
	addi	%x2, %x2, 12  #202 pc 1308
	jalr	%x1, %x30, 0  #202 pc 1312
	addi	%x2, %x2, -12  #202 pc 1316
	lw	%x1, 8(%x2)  #202 pc 1320
	lw	%x5, 4(%x2)  #203 pc 1324
	addi	%x5, %x5, -1  #203 pc 1328
	lw	%x29, 0(%x2)  #203 pc 1332
	lw	%x30, 0(%x29)  #203 pc 1336
	jalr	%x0, %x30, 0  #203 pc 1340
	nop #pc 1344
bge_else.880: #pc 1348
	ret #pc 1348
	nop #pc 1352
mul.370:  #pc 1356
	addi	%x29, %x3, 0  #192 pc 1356
	addi	%x3, %x3, 24  #192 pc 1360
	addi	%x31, %x0, 1208  #192 loop1.499 pc 1364
	addi	%x11, %x31, 0  #192 pc 1368
	sw	%x11, 0(%x29)  #192 pc 1372
	sw	%x7, 20(%x29)  #192 pc 1376
	sw	%x6, 16(%x29)  #192 pc 1380
	sw	%x10, 12(%x29)  #192 pc 1384
	sw	%x9, 8(%x29)  #192 pc 1388
	sw	%x8, 4(%x29)  #192 pc 1392
	addi	%x5, %x5, -1  #204 pc 1396
	lw	%x30, 0(%x29)  #204 pc 1400
	jalr	%x0, %x30, 0  #204 pc 1404
	nop #pc 1408
init.486:  #pc 1412
	lw	%x6, 8(%x29)  #0 pc 1412
	lw	%x7, 4(%x29)  #0 pc 1416
	bge	%x5, %x0, 12  #209 pc 1420
	j	bge_else.882 #pc 1424
	nop #pc 1428
	fmv	%f0, l.752  #0 pc 1432
	sw	%x29, 0(%x2)  #210 pc 1436
	sw	%x7, 4(%x2)  #210 pc 1440
	sw	%x5, 8(%x2)  #210 pc 1444
	addi	%x5, %x6, 0  #0 pc 1448
	sw	%x1, 12(%x2)  #210 pc 1452
	addi	%x2, %x2, 16  #210 pc 1456
	jal	%x1, create_float_array.367  #210 pc 1460
	addi	%x2, %x2, -16  #210 pc 1464
	lw	%x1, 12(%x2) #210 pc 1468
	lw	%x6, 8(%x2)  #210 pc 1472
	slli	%x7, %x6, 2  #210 pc 1476
	lw	%x8, 4(%x2)  #210 pc 1480
	add	%x31, %x7, %x8  #210 pc 1484
	sw	%x5, 0(%x31)  #210 pc 1488
	addi	%x5, %x6, -1  #211 pc 1492
	lw	%x29, 0(%x2)  #211 pc 1496
	lw	%x30, 0(%x29)  #211 pc 1500
	jalr	%x0, %x30, 0  #211 pc 1504
	nop #pc 1508
bge_else.882: #pc 1512
	ret #pc 1512
	nop #pc 1516
make.378:  #pc 1520
	lw	%x7, 4(%x29)  #207 pc 1520
	sw	%x5, 0(%x2)  #207 pc 1524
	sw	%x6, 4(%x2)  #207 pc 1528
	addi	%x6, %x7, 0  #0 pc 1532
	sw	%x1, 8(%x2)  #207 pc 1536
	addi	%x2, %x2, 12  #207 pc 1540
	jal	%x1, create_array.360  #207 pc 1544
	addi	%x2, %x2, -12  #207 pc 1548
	lw	%x1, 8(%x2) #207 pc 1552
	addi	%x29, %x3, 0  #208 pc 1556
	addi	%x3, %x3, 12  #208 pc 1560
	addi	%x31, %x0, 1412  #208 init.486 pc 1564
	addi	%x6, %x31, 0  #208 pc 1568
	sw	%x6, 0(%x29)  #208 pc 1572
	lw	%x6, 4(%x2)  #208 pc 1576
	sw	%x6, 8(%x29)  #208 pc 1580
	sw	%x5, 4(%x29)  #208 pc 1584
	lw	%x6, 0(%x2)  #212 pc 1588
	addi	%x6, %x6, -1  #212 pc 1592
	sw	%x5, 8(%x2)  #212 pc 1596
	addi	%x5, %x6, 0  #0 pc 1600
	sw	%x1, 12(%x2)  #212 pc 1604
	lw	%x30, 0(%x29)  #212 pc 1608
	addi	%x2, %x2, 16  #212 pc 1612
	jalr	%x1, %x30, 0  #212 pc 1616
	addi	%x2, %x2, -16  #212 pc 1620
	lw	%x1, 12(%x2)  #212 pc 1624
	lw	%x5, 8(%x2)  #213 pc 1628
	ret #pc 1632
	nop #pc 1636
.global	min_caml_start
min_caml_start:
	addi	%x2, %x0, 0
	addi	%x3, %x0, 1024
	addi	%x5, %x0, 0  #0 pc 1648
	fmv	%f0, l.752  #0 pc 1652
	sw	%x1, 0(%x2)  #205 pc 1656
	addi	%x2, %x2, 4  #205 pc 1660
	jal	%x1, create_float_array.367  #205 pc 1664
	addi	%x2, %x2, -4  #205 pc 1668
	lw	%x1, 0(%x2) #205 pc 1672
	addi	%x29, %x3, 0  #206 pc 1676
	addi	%x3, %x3, 8  #206 pc 1680
	addi	%x31, %x0, 1520  #206 make.378 pc 1684
	addi	%x6, %x31, 0  #206 pc 1688
	sw	%x6, 0(%x29)  #206 pc 1692
	sw	%x5, 4(%x29)  #206 pc 1696
	addi	%x5, %x0, 2  #0 pc 1700
	addi	%x6, %x0, 3  #0 pc 1704
	sw	%x29, 0(%x2)  #214 pc 1708
	sw	%x1, 4(%x2)  #214 pc 1712
	lw	%x30, 0(%x29)  #214 pc 1716
	addi	%x2, %x2, 8  #214 pc 1720
	jalr	%x1, %x30, 0  #214 pc 1724
	addi	%x2, %x2, -8  #214 pc 1728
	lw	%x1, 4(%x2)  #214 pc 1732
	addi	%x6, %x0, 3  #0 pc 1736
	addi	%x7, %x0, 2  #0 pc 1740
	lw	%x29, 0(%x2)  #215 pc 1744
	sw	%x5, 4(%x2)  #215 pc 1748
	addi	%x5, %x6, 0  #0 pc 1752
	addi	%x6, %x7, 0  #0 pc 1756
	sw	%x1, 8(%x2)  #215 pc 1760
	lw	%x30, 0(%x29)  #215 pc 1764
	addi	%x2, %x2, 12  #215 pc 1768
	jalr	%x1, %x30, 0  #215 pc 1772
	addi	%x2, %x2, -12  #215 pc 1776
	lw	%x1, 8(%x2)  #215 pc 1780
	addi	%x6, %x0, 2  #0 pc 1784
	lw	%x29, 0(%x2)  #216 pc 1788
	sw	%x5, 8(%x2)  #216 pc 1792
	addi	%x5, %x6, 0  #0 pc 1796
	sw	%x1, 12(%x2)  #216 pc 1800
	lw	%x30, 0(%x29)  #216 pc 1804
	addi	%x2, %x2, 16  #216 pc 1808
	jalr	%x1, %x30, 0  #216 pc 1812
	addi	%x2, %x2, -16  #216 pc 1816
	lw	%x1, 12(%x2)  #216 pc 1820
	addi	%x10, %x5, 0  #216 pc 1824
	lw	%x8, 4(%x2)  #217 pc 1828
	lw	%x5, 0(%x8)  #217 pc 1832
	fmv	%f0, l.761  #0 pc 1836
	fsw	%f0, 0(%x5)  #217 pc 1840
	lw	%x5, 0(%x8)  #217 pc 1844
	fmv	%f0, l.765  #0 pc 1848
	fsw	%f0, 4(%x5)  #217 pc 1852
	lw	%x5, 0(%x8)  #217 pc 1856
	fmv	%f0, l.769  #0 pc 1860
	fsw	%f0, 8(%x5)  #217 pc 1864
	lw	%x5, 4(%x8)  #218 pc 1868
	fmv	%f0, l.773  #0 pc 1872
	fsw	%f0, 0(%x5)  #218 pc 1876
	lw	%x5, 4(%x8)  #218 pc 1880
	fmv	%f0, l.777  #0 pc 1884
	fsw	%f0, 4(%x5)  #218 pc 1888
	lw	%x5, 4(%x8)  #218 pc 1892
	fmv	%f0, l.781  #0 pc 1896
	fsw	%f0, 8(%x5)  #218 pc 1900
	lw	%x9, 8(%x2)  #219 pc 1904
	lw	%x5, 0(%x9)  #219 pc 1908
	fmv	%f0, l.785  #0 pc 1912
	fsw	%f0, 0(%x5)  #219 pc 1916
	lw	%x5, 0(%x9)  #219 pc 1920
	fmv	%f0, l.789  #0 pc 1924
	fsw	%f0, 4(%x5)  #219 pc 1928
	lw	%x5, 4(%x9)  #220 pc 1932
	fmv	%f0, l.793  #0 pc 1936
	fsw	%f0, 0(%x5)  #220 pc 1940
	lw	%x5, 4(%x9)  #220 pc 1944
	fmv	%f0, l.797  #0 pc 1948
	fsw	%f0, 4(%x5)  #220 pc 1952
	lw	%x5, 8(%x9)  #221 pc 1956
	fmv	%f0, l.801  #0 pc 1960
	fsw	%f0, 0(%x5)  #221 pc 1964
	lw	%x5, 8(%x9)  #221 pc 1968
	fmv	%f0, l.805  #0 pc 1972
	fsw	%f0, 4(%x5)  #221 pc 1976
	addi	%x5, %x0, 2  #0 pc 1980
	addi	%x6, %x0, 3  #0 pc 1984
	sw	%x10, 12(%x2)  #222 pc 1988
	addi	%x7, %x5, 0  #0 pc 1992
	sw	%x1, 16(%x2)  #222 pc 1996
	addi	%x2, %x2, 20  #222 pc 2000
	jal	%x1, mul.370  #222 pc 2004
	addi	%x2, %x2, -20  #222 pc 2008
	lw	%x1, 16(%x2) #222 pc 2012
	lw	%x5, 12(%x2)  #223 pc 2016
	lw	%x6, 0(%x5)  #223 pc 2020
	flw	%f0, 0(%x6)  #223 pc 2024
	sw	%x1, 16(%x2)  #223 pc 2028
	addi	%x2, %x2, 20  #223 pc 2032
	jal	%x1, min_caml_truncate  #223 pc 2036
	addi	%x2, %x2, -20  #223 pc 2040
	lw	%x1, 16(%x2) #223 pc 2044
	sw	%x1, 16(%x2)  #223 pc 2048
	addi	%x2, %x2, 20  #223 pc 2052
	jal	%x1, print_int.342  #223 pc 2056
	addi	%x2, %x2, -20  #223 pc 2060
	lw	%x1, 16(%x2) #223 pc 2064
	sw	%x1, 16(%x2)  #224 pc 2068
	addi	%x2, %x2, 20  #224 pc 2072
	jal	%x1, min_caml_print_newline  #224 pc 2076
	addi	%x2, %x2, -20  #224 pc 2080
	lw	%x1, 16(%x2) #224 pc 2084
	lw	%x5, 12(%x2)  #225 pc 2088
	lw	%x6, 0(%x5)  #225 pc 2092
	flw	%f0, 4(%x6)  #225 pc 2096
	sw	%x1, 16(%x2)  #225 pc 2100
	addi	%x2, %x2, 20  #225 pc 2104
	jal	%x1, min_caml_truncate  #225 pc 2108
	addi	%x2, %x2, -20  #225 pc 2112
	lw	%x1, 16(%x2) #225 pc 2116
	sw	%x1, 16(%x2)  #225 pc 2120
	addi	%x2, %x2, 20  #225 pc 2124
	jal	%x1, print_int.342  #225 pc 2128
	addi	%x2, %x2, -20  #225 pc 2132
	lw	%x1, 16(%x2) #225 pc 2136
	sw	%x1, 16(%x2)  #226 pc 2140
	addi	%x2, %x2, 20  #226 pc 2144
	jal	%x1, min_caml_print_newline  #226 pc 2148
	addi	%x2, %x2, -20  #226 pc 2152
	lw	%x1, 16(%x2) #226 pc 2156
	lw	%x5, 12(%x2)  #227 pc 2160
	lw	%x6, 4(%x5)  #227 pc 2164
	flw	%f0, 0(%x6)  #227 pc 2168
	sw	%x1, 16(%x2)  #227 pc 2172
	addi	%x2, %x2, 20  #227 pc 2176
	jal	%x1, min_caml_truncate  #227 pc 2180
	addi	%x2, %x2, -20  #227 pc 2184
	lw	%x1, 16(%x2) #227 pc 2188
	sw	%x1, 16(%x2)  #227 pc 2192
	addi	%x2, %x2, 20  #227 pc 2196
	jal	%x1, print_int.342  #227 pc 2200
	addi	%x2, %x2, -20  #227 pc 2204
	lw	%x1, 16(%x2) #227 pc 2208
	sw	%x1, 16(%x2)  #228 pc 2212
	addi	%x2, %x2, 20  #228 pc 2216
	jal	%x1, min_caml_print_newline  #228 pc 2220
	addi	%x2, %x2, -20  #228 pc 2224
	lw	%x1, 16(%x2) #228 pc 2228
	lw	%x5, 12(%x2)  #229 pc 2232
	lw	%x5, 4(%x5)  #229 pc 2236
	flw	%f0, 4(%x5)  #229 pc 2240
	sw	%x1, 16(%x2)  #229 pc 2244
	addi	%x2, %x2, 20  #229 pc 2248
	jal	%x1, min_caml_truncate  #229 pc 2252
	addi	%x2, %x2, -20  #229 pc 2256
	lw	%x1, 16(%x2) #229 pc 2260
	sw	%x1, 16(%x2)  #229 pc 2264
	addi	%x2, %x2, 20  #229 pc 2268
	jal	%x1, print_int.342  #229 pc 2272
	addi	%x2, %x2, -20  #229 pc 2276
	lw	%x1, 16(%x2) #229 pc 2280
	sw	%x1, 16(%x2)  #230 pc 2284
	addi	%x2, %x2, 20  #230 pc 2288
	jal	%x1, min_caml_print_newline  #230 pc 2292
	addi	%x2, %x2, -20  #230 pc 2296
	lw	%x1, 16(%x2) #230 pc 2300
	addi	%x2, %x2, 112
