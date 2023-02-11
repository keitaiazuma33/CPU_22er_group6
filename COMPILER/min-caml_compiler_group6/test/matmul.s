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
	addi	%x24, %x0, -1  #pc 0
	beq	%x7, %x24, 12  #57 pc 4
	j	be_else.854 #pc 8
	nop #pc 12
	addi	%x5, %x9, 0  #58 pc 16
	ret #pc 20
	nop #pc 24
be_else.854: #pc 24
	addi	%x10, %x0, 1  #0 pc 28
	sll	%x10, %x10, %x7  #60 pc 32
	and	%x10, %x6, %x10  #60 pc 36
	beq	%x10, %x0, 12  #60 pc 40
	j	be_else.855 #pc 44
	nop #pc 48
	addi	%x7, %x7, -1  #61 pc 52
	j	mul_abs.324  #61 pc 56
	nop #pc 60
be_else.855: #pc 60
	addi	%x10, %x7, -1  #63 pc 64
	sll	%x7, %x5, %x7  #63 pc 68
	add	%x9, %x9, %x7  #63 pc 72
	addi	%x7, %x10, 0  #0 pc 76
	j	mul_abs.324  #63 pc 80
	nop #pc 84
mul.329:  #pc 88
	bge	%x5, %x0, 12  #67 pc 88
	j	bge_else.856 #pc 92
	nop #pc 96
	addi	%x7, %x5, 0  #67 pc 100
	j	bge_cont.857 #pc 104
	nop #pc 108
bge_else.856: #pc 108
	sub	%x7, %x0, %x5  #67 pc 112
bge_cont.857: #pc 112
	bge	%x6, %x0, 12  #68 pc 116
	j	bge_else.858 #pc 120
	nop #pc 124
	addi	%x9, %x6, 0  #68 pc 128
	j	bge_cont.859 #pc 132
	nop #pc 136
bge_else.858: #pc 136
	sub	%x9, %x0, %x6  #68 pc 140
bge_cont.859: #pc 140
	addi	%x10, %x0, 30  #0 pc 144
	addi	%x11, %x0, 0  #0 pc 148
	sw	%x6, 0(%x2)  #69 pc 152
	sw	%x5, 4(%x2)  #69 pc 156
	addi	%x6, %x9, 0  #0 pc 160
	addi	%x5, %x7, 0  #0 pc 164
	addi	%x9, %x11, 0  #0 pc 168
	addi	%x7, %x10, 0  #0 pc 172
	sw	%x1, 12(%x2)  #69 pc 176
	addi	%x2, %x2, 16  #69 pc 180
	jal	%x1, mul_abs.324  #69 pc 184
	addi	%x2, %x2, -16  #69 pc 188
	lw	%x1, 12(%x2) #69 pc 192
	lw	%x6, 4(%x2)  #70 pc 196
	srli	%x6, %x6, 31  #70 pc 200
	lw	%x7, 0(%x2)  #70 pc 204
	srli	%x7, %x7, 31  #70 pc 208
	beq	%x6, %x7, 12  #70 pc 212
	j	be_else.860 #pc 216
	nop #pc 220
	ret #pc 224
	nop #pc 228
be_else.860: #pc 228
	sub	%x5, %x0, %x5  #73 pc 232
	ret #pc 236
	nop #pc 240
div_abs.332:  #pc 244
	addi	%x24, %x0, -1  #pc 244
	beq	%x7, %x24, 12  #77 pc 248
	j	be_else.861 #pc 252
	nop #pc 256
	addi	%x5, %x9, 0  #78 pc 260
	ret #pc 264
	nop #pc 268
be_else.861: #pc 268
	srl	%x10, %x5, %x7  #80 pc 272
	bge	%x10, %x6, 12  #80 pc 276
	j	ble_else.862 #pc 280
	nop #pc 284
	sll	%x10, %x6, %x7  #81 pc 288
	sub	%x5, %x5, %x10  #81 pc 292
	addi	%x10, %x7, -1  #81 pc 296
	addi	%x11, %x0, 1  #0 pc 300
	sll	%x7, %x11, %x7  #81 pc 304
	add	%x9, %x9, %x7  #81 pc 308
	addi	%x7, %x10, 0  #0 pc 312
	j	div_abs.332  #81 pc 316
	nop #pc 320
ble_else.862: #pc 320
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
bge_else.863: #pc 356
	sub	%x7, %x0, %x5  #87 pc 360
bge_cont.864: #pc 360
	bge	%x6, %x0, 12  #88 pc 364
	j	bge_else.865 #pc 368
	nop #pc 372
	addi	%x9, %x6, 0  #88 pc 376
	j	bge_cont.866 #pc 380
	nop #pc 384
bge_else.865: #pc 384
	sub	%x9, %x0, %x6  #88 pc 388
bge_cont.866: #pc 388
	addi	%x10, %x0, 30  #0 pc 392
	addi	%x11, %x0, 0  #0 pc 396
	sw	%x6, 0(%x2)  #89 pc 400
	sw	%x5, 4(%x2)  #89 pc 404
	addi	%x6, %x9, 0  #0 pc 408
	addi	%x5, %x7, 0  #0 pc 412
	addi	%x9, %x11, 0  #0 pc 416
	addi	%x7, %x10, 0  #0 pc 420
	sw	%x1, 12(%x2)  #89 pc 424
	addi	%x2, %x2, 16  #89 pc 428
	jal	%x1, div_abs.332  #89 pc 432
	addi	%x2, %x2, -16  #89 pc 436
	lw	%x1, 12(%x2) #89 pc 440
	lw	%x6, 4(%x2)  #90 pc 444
	srli	%x6, %x6, 31  #90 pc 448
	lw	%x7, 0(%x2)  #90 pc 452
	srli	%x7, %x7, 31  #90 pc 456
	beq	%x6, %x7, 12  #90 pc 460
	j	be_else.867 #pc 464
	nop #pc 468
	ret #pc 472
	nop #pc 476
be_else.867: #pc 476
	sub	%x5, %x0, %x5  #93 pc 480
	ret #pc 484
	nop #pc 488
print_int.342:  #pc 492
	bge	%x5, %x0, 12  #100 pc 492
	j	bge_else.868 #pc 496
	nop #pc 500
	addi	%x24, %x0, 10  #pc 504
	bge	%x5, %x24, 12  #104 pc 508
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
	sw	%x1, 12(%x2)  #108 pc 552
	addi	%x2, %x2, 16  #108 pc 556
	jal	%x1, print_int.342  #108 pc 560
	addi	%x2, %x2, -16  #108 pc 564
	lw	%x1, 12(%x2) #108 pc 568
	addi	%x6, %x0, 10  #0 pc 572
	lw	%x5, 4(%x2)  #109 pc 576
	sw	%x1, 12(%x2)  #109 pc 580
	addi	%x2, %x2, 16  #109 pc 584
	jal	%x1, mul.329  #109 pc 588
	addi	%x2, %x2, -16  #109 pc 592
	lw	%x1, 12(%x2) #109 pc 596
	lw	%x6, 0(%x2)  #109 pc 600
	sub	%x5, %x6, %x5  #109 pc 604
	addi	%x5, %x5, 48  #109 pc 608
	out	%x5  #109 pc 612
	ret #pc 616
	nop #pc 620
bge_else.869: #pc 620
	addi	%x5, %x5, 48  #105 pc 624
	out	%x5  #105 pc 628
	ret #pc 632
	nop #pc 636
bge_else.868: #pc 636
	sub	%x5, %x0, %x5  #102 pc 640
	j	print_int.342  #102 pc 644
	nop #pc 648
assign_array.356:  #pc 652
	beq	%x7, %x0, 12  #160 pc 652
	j	be_else.872 #pc 656
	nop #pc 660
	slli	%x7, %x7, 2  #161 pc 664
	add	%x24, %x7, %x5  #161 pc 668
	sw	%x6, 0(%x24)  #161 pc 672
	ret #pc 676
	nop #pc 680
be_else.872: #pc 680
	slli	%x9, %x7, 2  #163 pc 684
	add	%x24, %x9, %x5  #163 pc 688
	sw	%x6, 0(%x24)  #163 pc 692
	addi	%x7, %x7, -1  #164 pc 696
	j	assign_array.356  #164 pc 700
	nop #pc 704
create_array.360:  #pc 708
	addi	%x7, %x3, 0  #168 pc 708
	sw	%x7, 0(%x2)  #171 pc 712
	addi	%x23, %x7, 0  #0 pc 716
	addi	%x7, %x5, 0  #0 pc 720
	addi	%x5, %x23, 0  #0 pc 724
	sw	%x1, 4(%x2)  #171 pc 728
	addi	%x2, %x2, 8  #171 pc 732
	jal	%x1, assign_array.356  #171 pc 736
	addi	%x2, %x2, -8  #171 pc 740
	lw	%x1, 4(%x2) #171 pc 744
	lw	%x5, 0(%x2)  #172 pc 748
	ret #pc 752
	nop #pc 756
assign_farray.363:  #pc 760
	beq	%x6, %x0, 12  #176 pc 760
	j	be_else.874 #pc 764
	nop #pc 768
	slli	%x6, %x6, 2  #177 pc 772
	add	%x24, %x6, %x5  #177 pc 776
	fsw	%f0, 0(%x24) #177 pc 780
	ret #pc 784
	nop #pc 788
be_else.874: #pc 788
	slli	%x7, %x6, 2  #179 pc 792
	add	%x24, %x7, %x5  #179 pc 796
	fsw	%f0, 0(%x24) #179 pc 800
	addi	%x6, %x6, -1  #180 pc 804
	j	assign_farray.363  #180 pc 808
	nop #pc 812
create_float_array.367:  #pc 816
	addi	%x6, %x3, 0  #184 pc 816
	sw	%x6, 0(%x2)  #187 pc 820
	addi	%x23, %x6, 0  #0 pc 824
	addi	%x6, %x5, 0  #0 pc 828
	addi	%x5, %x23, 0  #0 pc 832
	sw	%x1, 4(%x2)  #187 pc 836
	addi	%x2, %x2, 8  #187 pc 840
	jal	%x1, assign_farray.363  #187 pc 844
	addi	%x2, %x2, -8  #187 pc 848
	lw	%x1, 4(%x2) #187 pc 852
	lw	%x5, 0(%x2)  #188 pc 856
	ret #pc 860
	nop #pc 864
loop3.512:  #pc 868
	addi	%x24, %x0, 20  #pc 868
	add	%x24, %x24, %x22  #0 pc 872
	lw	%x6, 0(%x24)  #0 pc 876
	addi	%x24, %x0, 16  #pc 880
	add	%x24, %x24, %x22  #0 pc 884
	lw	%x7, 0(%x24)  #0 pc 888
	addi	%x24, %x0, 12  #pc 892
	add	%x24, %x24, %x22  #0 pc 896
	lw	%x9, 0(%x24)  #0 pc 900
	addi	%x24, %x0, 8  #pc 904
	add	%x24, %x24, %x22  #0 pc 908
	lw	%x10, 0(%x24)  #0 pc 912
	addi	%x24, %x0, 4  #pc 916
	add	%x24, %x24, %x22  #0 pc 920
	lw	%x11, 0(%x24)  #0 pc 924
	bge	%x5, %x0, 12  #197 pc 928
	j	bge_else.876 #pc 932
	nop #pc 936
	slli	%x12, %x7, 2  #198 pc 940
	add	%x24, %x12, %x9  #198 pc 944
	lw	%x12, 0(%x24)  #198 pc 948
	slli	%x13, %x7, 2  #198 pc 952
	add	%x24, %x13, %x9  #198 pc 956
	lw	%x9, 0(%x24)  #198 pc 960
	slli	%x13, %x6, 2  #198 pc 964
	add	%x24, %x13, %x9  #198 pc 968
	flw	%f0, 0(%x24)  #198 pc 972
	slli	%x7, %x7, 2  #198 pc 976
	add	%x24, %x7, %x11  #198 pc 980
	lw	%x7, 0(%x24)  #198 pc 984
	slli	%x9, %x5, 2  #198 pc 988
	add	%x24, %x9, %x7  #198 pc 992
	flw	%f1, 0(%x24)  #198 pc 996
	slli	%x7, %x5, 2  #198 pc 1000
	add	%x24, %x7, %x10  #198 pc 1004
	lw	%x7, 0(%x24)  #198 pc 1008
	slli	%x9, %x6, 2  #198 pc 1012
	add	%x24, %x9, %x7  #198 pc 1016
	flw	%f2, 0(%x24)  #198 pc 1020
	fmul	%f1, %f1, %f2  #198 pc 1024
	fadd	%f0, %f0, %f1  #198 pc 1028
	slli	%x6, %x6, 2  #198 pc 1032
	add	%x24, %x6, %x12  #198 pc 1036
	fsw	%f0, 0(%x24) #198 pc 1040
	addi	%x5, %x5, -1  #199 pc 1044
	lw	%x23, 0(%x22)  #199 pc 1048
	jalr	%x0, %x23, 0  #199 pc 1052
	nop #pc 1056
bge_else.876: #pc 1056
	ret #pc 1060
	nop #pc 1064
loop2.504:  #pc 1068
	addi	%x24, %x0, 20  #pc 1068
	add	%x24, %x24, %x22  #0 pc 1072
	lw	%x6, 0(%x24)  #0 pc 1076
	addi	%x24, %x0, 16  #pc 1080
	add	%x24, %x24, %x22  #0 pc 1084
	lw	%x7, 0(%x24)  #0 pc 1088
	addi	%x24, %x0, 12  #pc 1092
	add	%x24, %x24, %x22  #0 pc 1096
	lw	%x9, 0(%x24)  #0 pc 1100
	addi	%x24, %x0, 8  #pc 1104
	add	%x24, %x24, %x22  #0 pc 1108
	lw	%x10, 0(%x24)  #0 pc 1112
	addi	%x24, %x0, 4  #pc 1116
	add	%x24, %x24, %x22  #0 pc 1120
	lw	%x11, 0(%x24)  #0 pc 1124
	bge	%x5, %x0, 12  #195 pc 1128
	j	bge_else.878 #pc 1132
	nop #pc 1136
	addi	%x12, %x3, 0  #196 pc 1140
	addi	%x3, %x3, 24  #196 pc 1144
	addi	%x24, %x0, 868  #196 loop3.512 pc 1148
	addi	%x13, %x24, 0  #196 pc 1152
	add	%x24, %x0, %x12  #196 pc 1156
	sw	%x13, 0(%x24)  #196 pc 1160
	addi	%x24, %x0, 20  #pc 1164
	add	%x24, %x24, %x12  #196 pc 1168
	sw	%x5, 0(%x24)  #196 pc 1172
	addi	%x24, %x0, 16  #pc 1176
	add	%x24, %x24, %x12  #196 pc 1180
	sw	%x7, 0(%x24)  #196 pc 1184
	addi	%x24, %x0, 12  #pc 1188
	add	%x24, %x24, %x12  #196 pc 1192
	sw	%x9, 0(%x24)  #196 pc 1196
	addi	%x24, %x0, 8  #pc 1200
	add	%x24, %x24, %x12  #196 pc 1204
	sw	%x10, 0(%x24)  #196 pc 1208
	addi	%x24, %x0, 4  #pc 1212
	add	%x24, %x24, %x12  #196 pc 1216
	sw	%x11, 0(%x24)  #196 pc 1220
	addi	%x6, %x6, -1  #200 pc 1224
	sw	%x22, 0(%x2)  #200 pc 1228
	sw	%x5, 4(%x2)  #200 pc 1232
	addi	%x5, %x6, 0  #0 pc 1236
	addi	%x22, %x12, 0  #0 pc 1240
	sw	%x1, 12(%x2)  #200 pc 1244
	lw	%x23, 0(%x22)  #200 pc 1248
	addi	%x2, %x2, 16  #200 pc 1252
	jalr	%x1, %x23, 0  #200 pc 1256
	addi	%x2, %x2, -16  #200 pc 1260
	lw	%x1, 12(%x2)  #200 pc 1264
	lw	%x5, 4(%x2)  #201 pc 1268
	addi	%x5, %x5, -1  #201 pc 1272
	lw	%x22, 0(%x2)  #201 pc 1276
	lw	%x23, 0(%x22)  #201 pc 1280
	jalr	%x0, %x23, 0  #201 pc 1284
	nop #pc 1288
bge_else.878: #pc 1288
	ret #pc 1292
	nop #pc 1296
loop1.499:  #pc 1300
	addi	%x24, %x0, 20  #pc 1300
	add	%x24, %x24, %x22  #0 pc 1304
	lw	%x6, 0(%x24)  #0 pc 1308
	addi	%x24, %x0, 16  #pc 1312
	add	%x24, %x24, %x22  #0 pc 1316
	lw	%x7, 0(%x24)  #0 pc 1320
	addi	%x24, %x0, 12  #pc 1324
	add	%x24, %x24, %x22  #0 pc 1328
	lw	%x9, 0(%x24)  #0 pc 1332
	addi	%x24, %x0, 8  #pc 1336
	add	%x24, %x24, %x22  #0 pc 1340
	lw	%x10, 0(%x24)  #0 pc 1344
	addi	%x24, %x0, 4  #pc 1348
	add	%x24, %x24, %x22  #0 pc 1352
	lw	%x11, 0(%x24)  #0 pc 1356
	bge	%x5, %x0, 12  #193 pc 1360
	j	bge_else.880 #pc 1364
	nop #pc 1368
	addi	%x12, %x3, 0  #194 pc 1372
	addi	%x3, %x3, 24  #194 pc 1376
	addi	%x24, %x0, 1068  #194 loop2.504 pc 1380
	addi	%x13, %x24, 0  #194 pc 1384
	add	%x24, %x0, %x12  #194 pc 1388
	sw	%x13, 0(%x24)  #194 pc 1392
	addi	%x24, %x0, 20  #pc 1396
	add	%x24, %x24, %x12  #194 pc 1400
	sw	%x7, 0(%x24)  #194 pc 1404
	addi	%x24, %x0, 16  #pc 1408
	add	%x24, %x24, %x12  #194 pc 1412
	sw	%x5, 0(%x24)  #194 pc 1416
	addi	%x24, %x0, 12  #pc 1420
	add	%x24, %x24, %x12  #194 pc 1424
	sw	%x9, 0(%x24)  #194 pc 1428
	addi	%x24, %x0, 8  #pc 1432
	add	%x24, %x24, %x12  #194 pc 1436
	sw	%x10, 0(%x24)  #194 pc 1440
	addi	%x24, %x0, 4  #pc 1444
	add	%x24, %x24, %x12  #194 pc 1448
	sw	%x11, 0(%x24)  #194 pc 1452
	addi	%x6, %x6, -1  #202 pc 1456
	sw	%x22, 0(%x2)  #202 pc 1460
	sw	%x5, 4(%x2)  #202 pc 1464
	addi	%x5, %x6, 0  #0 pc 1468
	addi	%x22, %x12, 0  #0 pc 1472
	sw	%x1, 12(%x2)  #202 pc 1476
	lw	%x23, 0(%x22)  #202 pc 1480
	addi	%x2, %x2, 16  #202 pc 1484
	jalr	%x1, %x23, 0  #202 pc 1488
	addi	%x2, %x2, -16  #202 pc 1492
	lw	%x1, 12(%x2)  #202 pc 1496
	lw	%x5, 4(%x2)  #203 pc 1500
	addi	%x5, %x5, -1  #203 pc 1504
	lw	%x22, 0(%x2)  #203 pc 1508
	lw	%x23, 0(%x22)  #203 pc 1512
	jalr	%x0, %x23, 0  #203 pc 1516
	nop #pc 1520
bge_else.880: #pc 1520
	ret #pc 1524
	nop #pc 1528
mul.370:  #pc 1532
	addi	%x22, %x3, 0  #192 pc 1532
	addi	%x3, %x3, 24  #192 pc 1536
	addi	%x24, %x0, 1300  #192 loop1.499 pc 1540
	addi	%x12, %x24, 0  #192 pc 1544
	add	%x24, %x0, %x22  #192 pc 1548
	sw	%x12, 0(%x24)  #192 pc 1552
	addi	%x24, %x0, 20  #pc 1556
	add	%x24, %x24, %x22  #192 pc 1560
	sw	%x7, 0(%x24)  #192 pc 1564
	addi	%x24, %x0, 16  #pc 1568
	add	%x24, %x24, %x22  #192 pc 1572
	sw	%x6, 0(%x24)  #192 pc 1576
	addi	%x24, %x0, 12  #pc 1580
	add	%x24, %x24, %x22  #192 pc 1584
	sw	%x11, 0(%x24)  #192 pc 1588
	addi	%x24, %x0, 8  #pc 1592
	add	%x24, %x24, %x22  #192 pc 1596
	sw	%x10, 0(%x24)  #192 pc 1600
	addi	%x24, %x0, 4  #pc 1604
	add	%x24, %x24, %x22  #192 pc 1608
	sw	%x9, 0(%x24)  #192 pc 1612
	addi	%x5, %x5, -1  #204 pc 1616
	lw	%x23, 0(%x22)  #204 pc 1620
	jalr	%x0, %x23, 0  #204 pc 1624
	nop #pc 1628
init.486:  #pc 1632
	addi	%x24, %x0, 8  #pc 1632
	add	%x24, %x24, %x22  #0 pc 1636
	lw	%x6, 0(%x24)  #0 pc 1640
	addi	%x24, %x0, 4  #pc 1644
	add	%x24, %x24, %x22  #0 pc 1648
	lw	%x7, 0(%x24)  #0 pc 1652
	bge	%x5, %x0, 12  #209 pc 1656
	j	bge_else.882 #pc 1660
	nop #pc 1664
	fmv	%f0, l.752  #0 pc 1668
	sw	%x22, 0(%x2)  #210 pc 1672
	sw	%x7, 4(%x2)  #210 pc 1676
	sw	%x5, 8(%x2)  #210 pc 1680
	addi	%x5, %x6, 0  #0 pc 1684
	sw	%x1, 12(%x2)  #210 pc 1688
	addi	%x2, %x2, 16  #210 pc 1692
	jal	%x1, create_float_array.367  #210 pc 1696
	addi	%x2, %x2, -16  #210 pc 1700
	lw	%x1, 12(%x2) #210 pc 1704
	lw	%x6, 8(%x2)  #210 pc 1708
	slli	%x7, %x6, 2  #210 pc 1712
	lw	%x9, 4(%x2)  #210 pc 1716
	add	%x24, %x7, %x9  #210 pc 1720
	sw	%x5, 0(%x24)  #210 pc 1724
	addi	%x5, %x6, -1  #211 pc 1728
	lw	%x22, 0(%x2)  #211 pc 1732
	lw	%x23, 0(%x22)  #211 pc 1736
	jalr	%x0, %x23, 0  #211 pc 1740
	nop #pc 1744
bge_else.882: #pc 1744
	ret #pc 1748
	nop #pc 1752
make.378:  #pc 1756
	addi	%x24, %x0, 4  #pc 1756
	add	%x24, %x24, %x22  #207 pc 1760
	lw	%x7, 0(%x24)  #207 pc 1764
	sw	%x5, 0(%x2)  #207 pc 1768
	sw	%x6, 4(%x2)  #207 pc 1772
	addi	%x6, %x7, 0  #0 pc 1776
	sw	%x1, 12(%x2)  #207 pc 1780
	addi	%x2, %x2, 16  #207 pc 1784
	jal	%x1, create_array.360  #207 pc 1788
	addi	%x2, %x2, -16  #207 pc 1792
	lw	%x1, 12(%x2) #207 pc 1796
	addi	%x22, %x3, 0  #208 pc 1800
	addi	%x3, %x3, 16  #208 pc 1804
	addi	%x24, %x0, 1632  #208 init.486 pc 1808
	addi	%x6, %x24, 0  #208 pc 1812
	add	%x24, %x0, %x22  #208 pc 1816
	sw	%x6, 0(%x24)  #208 pc 1820
	lw	%x6, 4(%x2)  #208 pc 1824
	addi	%x24, %x0, 8  #pc 1828
	add	%x24, %x24, %x22  #208 pc 1832
	sw	%x6, 0(%x24)  #208 pc 1836
	addi	%x24, %x0, 4  #pc 1840
	add	%x24, %x24, %x22  #208 pc 1844
	sw	%x5, 0(%x24)  #208 pc 1848
	lw	%x6, 0(%x2)  #212 pc 1852
	addi	%x6, %x6, -1  #212 pc 1856
	sw	%x5, 8(%x2)  #212 pc 1860
	addi	%x5, %x6, 0  #0 pc 1864
	sw	%x1, 12(%x2)  #212 pc 1868
	lw	%x23, 0(%x22)  #212 pc 1872
	addi	%x2, %x2, 16  #212 pc 1876
	jalr	%x1, %x23, 0  #212 pc 1880
	addi	%x2, %x2, -16  #212 pc 1884
	lw	%x1, 12(%x2)  #212 pc 1888
	lw	%x5, 8(%x2)  #213 pc 1892
	ret #pc 1896
	nop #pc 1900
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 0  #0 pc 1904
	fmv	%f0, l.752  #0 pc 1908
	sw	%x1, 12(%x2)  #205 pc 1912
	addi	%x2, %x2, 16  #205 pc 1916
	jal	%x1, create_float_array.367  #205 pc 1920
	addi	%x2, %x2, -16  #205 pc 1924
	lw	%x1, 12(%x2) #205 pc 1928
	addi	%x22, %x3, 0  #206 pc 1932
	addi	%x3, %x3, 8  #206 pc 1936
	addi	%x24, %x0, 1756  #206 make.378 pc 1940
	addi	%x6, %x24, 0  #206 pc 1944
	add	%x24, %x0, %x22  #206 pc 1948
	sw	%x6, 0(%x24)  #206 pc 1952
	addi	%x24, %x0, 4  #pc 1956
	add	%x24, %x24, %x22  #206 pc 1960
	sw	%x5, 0(%x24)  #206 pc 1964
	addi	%x5, %x0, 2  #0 pc 1968
	addi	%x6, %x0, 3  #0 pc 1972
	sw	%x22, 8(%x2)  #214 pc 1976
	sw	%x1, 12(%x2)  #214 pc 1980
	lw	%x23, 0(%x22)  #214 pc 1984
	addi	%x2, %x2, 16  #214 pc 1988
	jalr	%x1, %x23, 0  #214 pc 1992
	addi	%x2, %x2, -16  #214 pc 1996
	lw	%x1, 12(%x2)  #214 pc 2000
	addi	%x6, %x0, 3  #0 pc 2004
	addi	%x7, %x0, 2  #0 pc 2008
	lw	%x22, 8(%x2)  #215 pc 2012
	sw	%x5, 12(%x2)  #215 pc 2016
	addi	%x5, %x6, 0  #0 pc 2020
	addi	%x6, %x7, 0  #0 pc 2024
	sw	%x1, 20(%x2)  #215 pc 2028
	lw	%x23, 0(%x22)  #215 pc 2032
	addi	%x2, %x2, 24  #215 pc 2036
	jalr	%x1, %x23, 0  #215 pc 2040
	addi	%x2, %x2, -24  #215 pc 2044
	lw	%x1, 20(%x2)  #215 pc 2048
	addi	%x6, %x0, 2  #0 pc 2052
	lw	%x22, 8(%x2)  #216 pc 2056
	sw	%x5, 16(%x2)  #216 pc 2060
	addi	%x5, %x6, 0  #0 pc 2064
	sw	%x1, 20(%x2)  #216 pc 2068
	lw	%x23, 0(%x22)  #216 pc 2072
	addi	%x2, %x2, 24  #216 pc 2076
	jalr	%x1, %x23, 0  #216 pc 2080
	addi	%x2, %x2, -24  #216 pc 2084
	lw	%x1, 20(%x2)  #216 pc 2088
	addi	%x11, %x5, 0  #216 pc 2092
	lw	%x9, 12(%x2)  #217 pc 2096
	add	%x24, %x0, %x9  #217 pc 2100
	lw	%x5, 0(%x24)  #217 pc 2104
	fmv	%f0, l.761  #0 pc 2108
	add	%x24, %x0, %x5  #217 pc 2112
	fsw	%f0, 0(%x24) #217 pc 2116
	add	%x24, %x0, %x9  #217 pc 2120
	lw	%x5, 0(%x24)  #217 pc 2124
	fmv	%f0, l.765  #0 pc 2128
	addi	%x24, %x0, 4  #pc 2132
	add	%x24, %x24, %x5  #217 pc 2136
	fsw	%f0, 0(%x24) #217 pc 2140
	add	%x24, %x0, %x9  #217 pc 2144
	lw	%x5, 0(%x24)  #217 pc 2148
	fmv	%f0, l.769  #0 pc 2152
	addi	%x24, %x0, 8  #pc 2156
	add	%x24, %x24, %x5  #217 pc 2160
	fsw	%f0, 0(%x24) #217 pc 2164
	addi	%x24, %x0, 4  #pc 2168
	add	%x24, %x24, %x9  #218 pc 2172
	lw	%x5, 0(%x24)  #218 pc 2176
	fmv	%f0, l.773  #0 pc 2180
	add	%x24, %x0, %x5  #218 pc 2184
	fsw	%f0, 0(%x24) #218 pc 2188
	addi	%x24, %x0, 4  #pc 2192
	add	%x24, %x24, %x9  #218 pc 2196
	lw	%x5, 0(%x24)  #218 pc 2200
	fmv	%f0, l.777  #0 pc 2204
	addi	%x24, %x0, 4  #pc 2208
	add	%x24, %x24, %x5  #218 pc 2212
	fsw	%f0, 0(%x24) #218 pc 2216
	addi	%x24, %x0, 4  #pc 2220
	add	%x24, %x24, %x9  #218 pc 2224
	lw	%x5, 0(%x24)  #218 pc 2228
	fmv	%f0, l.781  #0 pc 2232
	addi	%x24, %x0, 8  #pc 2236
	add	%x24, %x24, %x5  #218 pc 2240
	fsw	%f0, 0(%x24) #218 pc 2244
	lw	%x10, 16(%x2)  #219 pc 2248
	add	%x24, %x0, %x10  #219 pc 2252
	lw	%x5, 0(%x24)  #219 pc 2256
	fmv	%f0, l.785  #0 pc 2260
	add	%x24, %x0, %x5  #219 pc 2264
	fsw	%f0, 0(%x24) #219 pc 2268
	add	%x24, %x0, %x10  #219 pc 2272
	lw	%x5, 0(%x24)  #219 pc 2276
	fmv	%f0, l.789  #0 pc 2280
	addi	%x24, %x0, 4  #pc 2284
	add	%x24, %x24, %x5  #219 pc 2288
	fsw	%f0, 0(%x24) #219 pc 2292
	addi	%x24, %x0, 4  #pc 2296
	add	%x24, %x24, %x10  #220 pc 2300
	lw	%x5, 0(%x24)  #220 pc 2304
	fmv	%f0, l.793  #0 pc 2308
	add	%x24, %x0, %x5  #220 pc 2312
	fsw	%f0, 0(%x24) #220 pc 2316
	addi	%x24, %x0, 4  #pc 2320
	add	%x24, %x24, %x10  #220 pc 2324
	lw	%x5, 0(%x24)  #220 pc 2328
	fmv	%f0, l.797  #0 pc 2332
	addi	%x24, %x0, 4  #pc 2336
	add	%x24, %x24, %x5  #220 pc 2340
	fsw	%f0, 0(%x24) #220 pc 2344
	addi	%x24, %x0, 8  #pc 2348
	add	%x24, %x24, %x10  #221 pc 2352
	lw	%x5, 0(%x24)  #221 pc 2356
	fmv	%f0, l.801  #0 pc 2360
	add	%x24, %x0, %x5  #221 pc 2364
	fsw	%f0, 0(%x24) #221 pc 2368
	addi	%x24, %x0, 8  #pc 2372
	add	%x24, %x24, %x10  #221 pc 2376
	lw	%x5, 0(%x24)  #221 pc 2380
	fmv	%f0, l.805  #0 pc 2384
	addi	%x24, %x0, 4  #pc 2388
	add	%x24, %x24, %x5  #221 pc 2392
	fsw	%f0, 0(%x24) #221 pc 2396
	addi	%x5, %x0, 2  #0 pc 2400
	addi	%x6, %x0, 3  #0 pc 2404
	sw	%x11, 20(%x2)  #222 pc 2408
	addi	%x7, %x5, 0  #0 pc 2412
	sw	%x1, 28(%x2)  #222 pc 2416
	addi	%x2, %x2, 32  #222 pc 2420
	jal	%x1, mul.370  #222 pc 2424
	addi	%x2, %x2, -32  #222 pc 2428
	lw	%x1, 28(%x2) #222 pc 2432
	lw	%x5, 20(%x2)  #223 pc 2436
	add	%x24, %x0, %x5  #223 pc 2440
	lw	%x6, 0(%x24)  #223 pc 2444
	add	%x24, %x0, %x6  #223 pc 2448
	flw	%f0, 0(%x24)  #223 pc 2452
	sw	%x1, 28(%x2)  #223 pc 2456
	addi	%x2, %x2, 32  #223 pc 2460
	jal	%x1, min_caml_truncate  #223 pc 2464
	addi	%x2, %x2, -32  #223 pc 2468
	lw	%x1, 28(%x2) #223 pc 2472
	sw	%x1, 28(%x2)  #223 pc 2476
	addi	%x2, %x2, 32  #223 pc 2480
	jal	%x1, print_int.342  #223 pc 2484
	addi	%x2, %x2, -32  #223 pc 2488
	lw	%x1, 28(%x2) #223 pc 2492
	addi	%x5, %x0, 0  #0 pc 2496
	sw	%x1, 28(%x2)  #224 pc 2500
	addi	%x2, %x2, 32  #224 pc 2504
	jal	%x1, min_caml_print_newline  #224 pc 2508
	addi	%x2, %x2, -32  #224 pc 2512
	lw	%x1, 28(%x2) #224 pc 2516
	lw	%x5, 20(%x2)  #225 pc 2520
	add	%x24, %x0, %x5  #225 pc 2524
	lw	%x6, 0(%x24)  #225 pc 2528
	addi	%x24, %x0, 4  #pc 2532
	add	%x24, %x24, %x6  #225 pc 2536
	flw	%f0, 0(%x24)  #225 pc 2540
	sw	%x1, 28(%x2)  #225 pc 2544
	addi	%x2, %x2, 32  #225 pc 2548
	jal	%x1, min_caml_truncate  #225 pc 2552
	addi	%x2, %x2, -32  #225 pc 2556
	lw	%x1, 28(%x2) #225 pc 2560
	sw	%x1, 28(%x2)  #225 pc 2564
	addi	%x2, %x2, 32  #225 pc 2568
	jal	%x1, print_int.342  #225 pc 2572
	addi	%x2, %x2, -32  #225 pc 2576
	lw	%x1, 28(%x2) #225 pc 2580
	addi	%x5, %x0, 0  #0 pc 2584
	sw	%x1, 28(%x2)  #226 pc 2588
	addi	%x2, %x2, 32  #226 pc 2592
	jal	%x1, min_caml_print_newline  #226 pc 2596
	addi	%x2, %x2, -32  #226 pc 2600
	lw	%x1, 28(%x2) #226 pc 2604
	lw	%x5, 20(%x2)  #227 pc 2608
	addi	%x24, %x0, 4  #pc 2612
	add	%x24, %x24, %x5  #227 pc 2616
	lw	%x6, 0(%x24)  #227 pc 2620
	add	%x24, %x0, %x6  #227 pc 2624
	flw	%f0, 0(%x24)  #227 pc 2628
	sw	%x1, 28(%x2)  #227 pc 2632
	addi	%x2, %x2, 32  #227 pc 2636
	jal	%x1, min_caml_truncate  #227 pc 2640
	addi	%x2, %x2, -32  #227 pc 2644
	lw	%x1, 28(%x2) #227 pc 2648
	sw	%x1, 28(%x2)  #227 pc 2652
	addi	%x2, %x2, 32  #227 pc 2656
	jal	%x1, print_int.342  #227 pc 2660
	addi	%x2, %x2, -32  #227 pc 2664
	lw	%x1, 28(%x2) #227 pc 2668
	addi	%x5, %x0, 0  #0 pc 2672
	sw	%x1, 28(%x2)  #228 pc 2676
	addi	%x2, %x2, 32  #228 pc 2680
	jal	%x1, min_caml_print_newline  #228 pc 2684
	addi	%x2, %x2, -32  #228 pc 2688
	lw	%x1, 28(%x2) #228 pc 2692
	lw	%x5, 20(%x2)  #229 pc 2696
	addi	%x24, %x0, 4  #pc 2700
	add	%x24, %x24, %x5  #229 pc 2704
	lw	%x5, 0(%x24)  #229 pc 2708
	addi	%x24, %x0, 4  #pc 2712
	add	%x24, %x24, %x5  #229 pc 2716
	flw	%f0, 0(%x24)  #229 pc 2720
	sw	%x1, 28(%x2)  #229 pc 2724
	addi	%x2, %x2, 32  #229 pc 2728
	jal	%x1, min_caml_truncate  #229 pc 2732
	addi	%x2, %x2, -32  #229 pc 2736
	lw	%x1, 28(%x2) #229 pc 2740
	sw	%x1, 28(%x2)  #229 pc 2744
	addi	%x2, %x2, 32  #229 pc 2748
	jal	%x1, print_int.342  #229 pc 2752
	addi	%x2, %x2, -32  #229 pc 2756
	lw	%x1, 28(%x2) #229 pc 2760
	addi	%x5, %x0, 0  #0 pc 2764
	sw	%x1, 28(%x2)  #230 pc 2768
	addi	%x2, %x2, 32  #230 pc 2772
	jal	%x1, min_caml_print_newline  #230 pc 2776
	addi	%x2, %x2, -32  #230 pc 2780
	lw	%x1, 28(%x2) #230 pc 2784
	addi	%x2, %x2, 112
