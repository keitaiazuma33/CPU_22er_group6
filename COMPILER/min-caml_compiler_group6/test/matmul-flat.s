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
	addi	%x24, %x0, -1  #pc 0
	beq	%x7, %x24, 12  #57 pc 4
	j	be_else.852 #pc 8
	nop #pc 12
	addi	%x5, %x9, 0  #58 pc 16
	ret #pc 20
	nop #pc 24
be_else.852: #pc 28
	addi	%x10, %x0, 1  #0 pc 28
	sll	%x10, %x10, %x7  #60 pc 32
	and	%x10, %x6, %x10  #60 pc 36
	beq	%x10, %x0, 12  #60 pc 40
	j	be_else.853 #pc 44
	nop #pc 48
	addi	%x7, %x7, -1  #61 pc 52
	j	mul_abs.324  #61 pc 56
	nop #pc 60
be_else.853: #pc 64
	addi	%x10, %x7, -1  #63 pc 64
	sll	%x7, %x5, %x7  #63 pc 68
	add	%x9, %x9, %x7  #63 pc 72
	addi	%x7, %x10, 0  #0 pc 76
	j	mul_abs.324  #63 pc 80
	nop #pc 84
mul.329:  #pc 88
	bge	%x5, %x0, 12  #67 pc 88
	j	bge_else.854 #pc 92
	nop #pc 96
	addi	%x7, %x5, 0  #67 pc 100
	j	bge_cont.855 #pc 104
	nop #pc 108
bge_else.854: #pc 112
	sub	%x7, %x0, %x5  #67 pc 112
bge_cont.855: #pc 116
	bge	%x6, %x0, 12  #68 pc 116
	j	bge_else.856 #pc 120
	nop #pc 124
	addi	%x9, %x6, 0  #68 pc 128
	j	bge_cont.857 #pc 132
	nop #pc 136
bge_else.856: #pc 140
	sub	%x9, %x0, %x6  #68 pc 140
bge_cont.857: #pc 144
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
	j	be_else.858 #pc 216
	nop #pc 220
	ret #pc 224
	nop #pc 228
be_else.858: #pc 232
	sub	%x5, %x0, %x5  #73 pc 232
	ret #pc 236
	nop #pc 240
div_abs.332:  #pc 244
	addi	%x24, %x0, -1  #pc 244
	beq	%x7, %x24, 12  #77 pc 248
	j	be_else.859 #pc 252
	nop #pc 256
	addi	%x5, %x9, 0  #78 pc 260
	ret #pc 264
	nop #pc 268
be_else.859: #pc 272
	srl	%x10, %x5, %x7  #80 pc 272
	bge	%x10, %x6, 12  #80 pc 276
	j	ble_else.860 #pc 280
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
ble_else.860: #pc 324
	addi	%x7, %x7, -1  #83 pc 324
	j	div_abs.332  #83 pc 328
	nop #pc 332
div.337:  #pc 336
	bge	%x5, %x0, 12  #87 pc 336
	j	bge_else.861 #pc 340
	nop #pc 344
	addi	%x7, %x5, 0  #87 pc 348
	j	bge_cont.862 #pc 352
	nop #pc 356
bge_else.861: #pc 360
	sub	%x7, %x0, %x5  #87 pc 360
bge_cont.862: #pc 364
	bge	%x6, %x0, 12  #88 pc 364
	j	bge_else.863 #pc 368
	nop #pc 372
	addi	%x9, %x6, 0  #88 pc 376
	j	bge_cont.864 #pc 380
	nop #pc 384
bge_else.863: #pc 388
	sub	%x9, %x0, %x6  #88 pc 388
bge_cont.864: #pc 392
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
	j	be_else.865 #pc 464
	nop #pc 468
	ret #pc 472
	nop #pc 476
be_else.865: #pc 480
	sub	%x5, %x0, %x5  #93 pc 480
	ret #pc 484
	nop #pc 488
print_int.342:  #pc 492
	bge	%x5, %x0, 12  #100 pc 492
	j	bge_else.866 #pc 496
	nop #pc 500
	addi	%x24, %x0, 10  #pc 504
	bge	%x5, %x24, 12  #104 pc 508
	j	bge_else.867 #pc 512
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
bge_else.867: #pc 624
	addi	%x5, %x5, 48  #105 pc 624
	out	%x5  #105 pc 628
	ret #pc 632
	nop #pc 636
bge_else.866: #pc 640
	sub	%x5, %x0, %x5  #102 pc 640
	j	print_int.342  #102 pc 644
	nop #pc 648
assign_array.356:  #pc 652
	beq	%x7, %x0, 12  #160 pc 652
	j	be_else.870 #pc 656
	nop #pc 660
	slli	%x7, %x7, 2  #161 pc 664
	add	%x24, %x7, %x5  #161 pc 668
	sw	%x6, 0(%x24)  #161 pc 672
	ret #pc 676
	nop #pc 680
be_else.870: #pc 684
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
	j	be_else.872 #pc 764
	nop #pc 768
	slli	%x6, %x6, 2  #177 pc 772
	add	%x24, %x6, %x5  #177 pc 776
	fsw	%f0, 0(%x24) #177 pc 780
	ret #pc 784
	nop #pc 788
be_else.872: #pc 792
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
loop3.370:  #pc 868
	bge	%x6, %x0, 12  #192 pc 868
	j	bge_else.874 #pc 872
	nop #pc 876
	slli	%x12, %x5, 2  #193 pc 880
	add	%x24, %x12, %x11  #193 pc 884
	lw	%x12, 0(%x24)  #193 pc 888
	slli	%x13, %x5, 2  #193 pc 892
	add	%x24, %x13, %x11  #193 pc 896
	lw	%x13, 0(%x24)  #193 pc 900
	slli	%x14, %x7, 2  #193 pc 904
	add	%x24, %x14, %x13  #193 pc 908
	flw	%f0, 0(%x24)  #193 pc 912
	slli	%x13, %x5, 2  #193 pc 916
	add	%x24, %x13, %x9  #193 pc 920
	lw	%x13, 0(%x24)  #193 pc 924
	slli	%x14, %x6, 2  #193 pc 928
	add	%x24, %x14, %x13  #193 pc 932
	flw	%f1, 0(%x24)  #193 pc 936
	slli	%x13, %x6, 2  #193 pc 940
	add	%x24, %x13, %x10  #193 pc 944
	lw	%x13, 0(%x24)  #193 pc 948
	slli	%x14, %x7, 2  #193 pc 952
	add	%x24, %x14, %x13  #193 pc 956
	flw	%f2, 0(%x24)  #193 pc 960
	fmul	%f1, %f1, %f2  #193 pc 964
	fadd	%f0, %f0, %f1  #193 pc 968
	slli	%x13, %x7, 2  #193 pc 972
	add	%x24, %x13, %x12  #193 pc 976
	fsw	%f0, 0(%x24) #193 pc 980
	addi	%x6, %x6, -1  #194 pc 984
	j	loop3.370  #194 pc 988
	nop #pc 992
bge_else.874: #pc 996
	ret #pc 996
	nop #pc 1000
loop2.377:  #pc 1004
	bge	%x7, %x0, 12  #196 pc 1004
	j	bge_else.876 #pc 1008
	nop #pc 1012
	addi	%x12, %x6, -1  #197 pc 1016
	sw	%x11, 0(%x2)  #197 pc 1020
	sw	%x10, 4(%x2)  #197 pc 1024
	sw	%x9, 8(%x2)  #197 pc 1028
	sw	%x6, 12(%x2)  #197 pc 1032
	sw	%x5, 16(%x2)  #197 pc 1036
	sw	%x7, 20(%x2)  #197 pc 1040
	addi	%x6, %x12, 0  #0 pc 1044
	sw	%x1, 28(%x2)  #197 pc 1048
	addi	%x2, %x2, 32  #197 pc 1052
	jal	%x1, loop3.370  #197 pc 1056
	addi	%x2, %x2, -32  #197 pc 1060
	lw	%x1, 28(%x2) #197 pc 1064
	lw	%x5, 20(%x2)  #198 pc 1068
	addi	%x7, %x5, -1  #198 pc 1072
	lw	%x5, 16(%x2)  #198 pc 1076
	lw	%x6, 12(%x2)  #198 pc 1080
	lw	%x9, 8(%x2)  #198 pc 1084
	lw	%x10, 4(%x2)  #198 pc 1088
	lw	%x11, 0(%x2)  #198 pc 1092
	j	loop2.377  #198 pc 1096
	nop #pc 1100
bge_else.876: #pc 1104
	ret #pc 1104
	nop #pc 1108
loop1.384:  #pc 1112
	bge	%x5, %x0, 12  #200 pc 1112
	j	bge_else.878 #pc 1116
	nop #pc 1120
	addi	%x12, %x7, -1  #201 pc 1124
	sw	%x11, 0(%x2)  #201 pc 1128
	sw	%x10, 4(%x2)  #201 pc 1132
	sw	%x9, 8(%x2)  #201 pc 1136
	sw	%x7, 12(%x2)  #201 pc 1140
	sw	%x6, 16(%x2)  #201 pc 1144
	sw	%x5, 20(%x2)  #201 pc 1148
	addi	%x7, %x12, 0  #0 pc 1152
	sw	%x1, 28(%x2)  #201 pc 1156
	addi	%x2, %x2, 32  #201 pc 1160
	jal	%x1, loop2.377  #201 pc 1164
	addi	%x2, %x2, -32  #201 pc 1168
	lw	%x1, 28(%x2) #201 pc 1172
	lw	%x5, 20(%x2)  #202 pc 1176
	addi	%x5, %x5, -1  #202 pc 1180
	lw	%x6, 16(%x2)  #202 pc 1184
	lw	%x7, 12(%x2)  #202 pc 1188
	lw	%x9, 8(%x2)  #202 pc 1192
	lw	%x10, 4(%x2)  #202 pc 1196
	lw	%x11, 0(%x2)  #202 pc 1200
	j	loop1.384  #202 pc 1204
	nop #pc 1208
bge_else.878: #pc 1212
	ret #pc 1212
	nop #pc 1216
mul.391:  #pc 1220
	addi	%x5, %x5, -1  #204 pc 1220
	j	loop1.384  #204 pc 1224
	nop #pc 1228
init.399:  #pc 1232
	bge	%x5, %x0, 12  #207 pc 1232
	j	bge_else.880 #pc 1236
	nop #pc 1240
	fmv	%f0, l.749  #0 pc 1244
	sw	%x6, 0(%x2)  #208 pc 1248
	sw	%x7, 4(%x2)  #208 pc 1252
	sw	%x5, 8(%x2)  #208 pc 1256
	addi	%x5, %x6, 0  #0 pc 1260
	sw	%x1, 12(%x2)  #208 pc 1264
	addi	%x2, %x2, 16  #208 pc 1268
	jal	%x1, create_float_array.367  #208 pc 1272
	addi	%x2, %x2, -16  #208 pc 1276
	lw	%x1, 12(%x2) #208 pc 1280
	lw	%x6, 8(%x2)  #208 pc 1284
	slli	%x7, %x6, 2  #208 pc 1288
	lw	%x9, 4(%x2)  #208 pc 1292
	add	%x24, %x7, %x9  #208 pc 1296
	sw	%x5, 0(%x24)  #208 pc 1300
	addi	%x5, %x6, -1  #209 pc 1304
	lw	%x6, 0(%x2)  #209 pc 1308
	addi	%x7, %x9, 0  #0 pc 1312
	j	init.399  #209 pc 1316
	nop #pc 1320
bge_else.880: #pc 1324
	ret #pc 1324
	nop #pc 1328
make.403:  #pc 1332
	sw	%x6, 0(%x2)  #211 pc 1332
	sw	%x5, 4(%x2)  #211 pc 1336
	addi	%x6, %x7, 0  #0 pc 1340
	sw	%x1, 12(%x2)  #211 pc 1344
	addi	%x2, %x2, 16  #211 pc 1348
	jal	%x1, create_array.360  #211 pc 1352
	addi	%x2, %x2, -16  #211 pc 1356
	lw	%x1, 12(%x2) #211 pc 1360
	addi	%x7, %x5, 0  #211 pc 1364
	lw	%x5, 4(%x2)  #212 pc 1368
	addi	%x5, %x5, -1  #212 pc 1372
	lw	%x6, 0(%x2)  #212 pc 1376
	sw	%x7, 8(%x2)  #212 pc 1380
	sw	%x1, 12(%x2)  #212 pc 1384
	addi	%x2, %x2, 16  #212 pc 1388
	jal	%x1, init.399  #212 pc 1392
	addi	%x2, %x2, -16  #212 pc 1396
	lw	%x1, 12(%x2) #212 pc 1400
	lw	%x5, 8(%x2)  #213 pc 1404
	ret #pc 1408
	nop #pc 1412
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 0  #0 pc 1416
	fmv	%f0, l.749  #0 pc 1420
	sw	%x1, 12(%x2)  #205 pc 1424
	addi	%x2, %x2, 16  #205 pc 1428
	jal	%x1, create_float_array.367  #205 pc 1432
	addi	%x2, %x2, -16  #205 pc 1436
	lw	%x1, 12(%x2) #205 pc 1440
	addi	%x7, %x5, 0  #205 pc 1444
	addi	%x5, %x0, 2  #0 pc 1448
	addi	%x6, %x0, 3  #0 pc 1452
	sw	%x7, 8(%x2)  #214 pc 1456
	sw	%x1, 12(%x2)  #214 pc 1460
	addi	%x2, %x2, 16  #214 pc 1464
	jal	%x1, make.403  #214 pc 1468
	addi	%x2, %x2, -16  #214 pc 1472
	lw	%x1, 12(%x2) #214 pc 1476
	addi	%x6, %x0, 3  #0 pc 1480
	addi	%x7, %x0, 2  #0 pc 1484
	lw	%x9, 8(%x2)  #215 pc 1488
	sw	%x5, 12(%x2)  #215 pc 1492
	addi	%x5, %x6, 0  #0 pc 1496
	addi	%x6, %x7, 0  #0 pc 1500
	addi	%x7, %x9, 0  #0 pc 1504
	sw	%x1, 20(%x2)  #215 pc 1508
	addi	%x2, %x2, 24  #215 pc 1512
	jal	%x1, make.403  #215 pc 1516
	addi	%x2, %x2, -24  #215 pc 1520
	lw	%x1, 20(%x2) #215 pc 1524
	addi	%x6, %x0, 2  #0 pc 1528
	lw	%x7, 8(%x2)  #216 pc 1532
	sw	%x5, 16(%x2)  #216 pc 1536
	addi	%x5, %x6, 0  #0 pc 1540
	sw	%x1, 20(%x2)  #216 pc 1544
	addi	%x2, %x2, 24  #216 pc 1548
	jal	%x1, make.403  #216 pc 1552
	addi	%x2, %x2, -24  #216 pc 1556
	lw	%x1, 20(%x2) #216 pc 1560
	addi	%x11, %x5, 0  #216 pc 1564
	lw	%x9, 12(%x2)  #217 pc 1568
	add	%x24, %x0, %x9  #217 pc 1572
	lw	%x5, 0(%x24)  #217 pc 1576
	fmv	%f0, l.754  #0 pc 1580
	add	%x24, %x0, %x5  #217 pc 1584
	fsw	%f0, 0(%x24) #217 pc 1588
	add	%x24, %x0, %x9  #217 pc 1592
	lw	%x5, 0(%x24)  #217 pc 1596
	fmv	%f0, l.758  #0 pc 1600
	addi	%x24, %x0, 4  #pc 1604
	add	%x24, %x24, %x5  #217 pc 1608
	fsw	%f0, 0(%x24) #217 pc 1612
	add	%x24, %x0, %x9  #217 pc 1616
	lw	%x5, 0(%x24)  #217 pc 1620
	fmv	%f0, l.762  #0 pc 1624
	addi	%x24, %x0, 8  #pc 1628
	add	%x24, %x24, %x5  #217 pc 1632
	fsw	%f0, 0(%x24) #217 pc 1636
	addi	%x24, %x0, 4  #pc 1640
	add	%x24, %x24, %x9  #218 pc 1644
	lw	%x5, 0(%x24)  #218 pc 1648
	fmv	%f0, l.766  #0 pc 1652
	add	%x24, %x0, %x5  #218 pc 1656
	fsw	%f0, 0(%x24) #218 pc 1660
	addi	%x24, %x0, 4  #pc 1664
	add	%x24, %x24, %x9  #218 pc 1668
	lw	%x5, 0(%x24)  #218 pc 1672
	fmv	%f0, l.770  #0 pc 1676
	addi	%x24, %x0, 4  #pc 1680
	add	%x24, %x24, %x5  #218 pc 1684
	fsw	%f0, 0(%x24) #218 pc 1688
	addi	%x24, %x0, 4  #pc 1692
	add	%x24, %x24, %x9  #218 pc 1696
	lw	%x5, 0(%x24)  #218 pc 1700
	fmv	%f0, l.774  #0 pc 1704
	addi	%x24, %x0, 8  #pc 1708
	add	%x24, %x24, %x5  #218 pc 1712
	fsw	%f0, 0(%x24) #218 pc 1716
	lw	%x10, 16(%x2)  #219 pc 1720
	add	%x24, %x0, %x10  #219 pc 1724
	lw	%x5, 0(%x24)  #219 pc 1728
	fmv	%f0, l.778  #0 pc 1732
	add	%x24, %x0, %x5  #219 pc 1736
	fsw	%f0, 0(%x24) #219 pc 1740
	add	%x24, %x0, %x10  #219 pc 1744
	lw	%x5, 0(%x24)  #219 pc 1748
	fmv	%f0, l.782  #0 pc 1752
	addi	%x24, %x0, 4  #pc 1756
	add	%x24, %x24, %x5  #219 pc 1760
	fsw	%f0, 0(%x24) #219 pc 1764
	addi	%x24, %x0, 4  #pc 1768
	add	%x24, %x24, %x10  #220 pc 1772
	lw	%x5, 0(%x24)  #220 pc 1776
	fmv	%f0, l.786  #0 pc 1780
	add	%x24, %x0, %x5  #220 pc 1784
	fsw	%f0, 0(%x24) #220 pc 1788
	addi	%x24, %x0, 4  #pc 1792
	add	%x24, %x24, %x10  #220 pc 1796
	lw	%x5, 0(%x24)  #220 pc 1800
	fmv	%f0, l.790  #0 pc 1804
	addi	%x24, %x0, 4  #pc 1808
	add	%x24, %x24, %x5  #220 pc 1812
	fsw	%f0, 0(%x24) #220 pc 1816
	addi	%x24, %x0, 8  #pc 1820
	add	%x24, %x24, %x10  #221 pc 1824
	lw	%x5, 0(%x24)  #221 pc 1828
	fmv	%f0, l.794  #0 pc 1832
	add	%x24, %x0, %x5  #221 pc 1836
	fsw	%f0, 0(%x24) #221 pc 1840
	addi	%x24, %x0, 8  #pc 1844
	add	%x24, %x24, %x10  #221 pc 1848
	lw	%x5, 0(%x24)  #221 pc 1852
	fmv	%f0, l.798  #0 pc 1856
	addi	%x24, %x0, 4  #pc 1860
	add	%x24, %x24, %x5  #221 pc 1864
	fsw	%f0, 0(%x24) #221 pc 1868
	addi	%x5, %x0, 2  #0 pc 1872
	addi	%x6, %x0, 3  #0 pc 1876
	sw	%x11, 20(%x2)  #222 pc 1880
	addi	%x7, %x5, 0  #0 pc 1884
	sw	%x1, 28(%x2)  #222 pc 1888
	addi	%x2, %x2, 32  #222 pc 1892
	jal	%x1, mul.391  #222 pc 1896
	addi	%x2, %x2, -32  #222 pc 1900
	lw	%x1, 28(%x2) #222 pc 1904
	lw	%x5, 20(%x2)  #223 pc 1908
	add	%x24, %x0, %x5  #223 pc 1912
	lw	%x6, 0(%x24)  #223 pc 1916
	add	%x24, %x0, %x6  #223 pc 1920
	flw	%f0, 0(%x24)  #223 pc 1924
	sw	%x1, 28(%x2)  #223 pc 1928
	addi	%x2, %x2, 32  #223 pc 1932
	jal	%x1, min_caml_truncate  #223 pc 1936
	addi	%x2, %x2, -32  #223 pc 1940
	lw	%x1, 28(%x2) #223 pc 1944
	sw	%x1, 28(%x2)  #223 pc 1948
	addi	%x2, %x2, 32  #223 pc 1952
	jal	%x1, print_int.342  #223 pc 1956
	addi	%x2, %x2, -32  #223 pc 1960
	lw	%x1, 28(%x2) #223 pc 1964
	addi	%x5, %x0, 0  #0 pc 1968
	sw	%x1, 28(%x2)  #224 pc 1972
	addi	%x2, %x2, 32  #224 pc 1976
	jal	%x1, min_caml_print_newline  #224 pc 1980
	addi	%x2, %x2, -32  #224 pc 1984
	lw	%x1, 28(%x2) #224 pc 1988
	lw	%x5, 20(%x2)  #225 pc 1992
	add	%x24, %x0, %x5  #225 pc 1996
	lw	%x6, 0(%x24)  #225 pc 2000
	addi	%x24, %x0, 4  #pc 2004
	add	%x24, %x24, %x6  #225 pc 2008
	flw	%f0, 0(%x24)  #225 pc 2012
	sw	%x1, 28(%x2)  #225 pc 2016
	addi	%x2, %x2, 32  #225 pc 2020
	jal	%x1, min_caml_truncate  #225 pc 2024
	addi	%x2, %x2, -32  #225 pc 2028
	lw	%x1, 28(%x2) #225 pc 2032
	sw	%x1, 28(%x2)  #225 pc 2036
	addi	%x2, %x2, 32  #225 pc 2040
	jal	%x1, print_int.342  #225 pc 2044
	addi	%x2, %x2, -32  #225 pc 2048
	lw	%x1, 28(%x2) #225 pc 2052
	addi	%x5, %x0, 0  #0 pc 2056
	sw	%x1, 28(%x2)  #226 pc 2060
	addi	%x2, %x2, 32  #226 pc 2064
	jal	%x1, min_caml_print_newline  #226 pc 2068
	addi	%x2, %x2, -32  #226 pc 2072
	lw	%x1, 28(%x2) #226 pc 2076
	lw	%x5, 20(%x2)  #227 pc 2080
	addi	%x24, %x0, 4  #pc 2084
	add	%x24, %x24, %x5  #227 pc 2088
	lw	%x6, 0(%x24)  #227 pc 2092
	add	%x24, %x0, %x6  #227 pc 2096
	flw	%f0, 0(%x24)  #227 pc 2100
	sw	%x1, 28(%x2)  #227 pc 2104
	addi	%x2, %x2, 32  #227 pc 2108
	jal	%x1, min_caml_truncate  #227 pc 2112
	addi	%x2, %x2, -32  #227 pc 2116
	lw	%x1, 28(%x2) #227 pc 2120
	sw	%x1, 28(%x2)  #227 pc 2124
	addi	%x2, %x2, 32  #227 pc 2128
	jal	%x1, print_int.342  #227 pc 2132
	addi	%x2, %x2, -32  #227 pc 2136
	lw	%x1, 28(%x2) #227 pc 2140
	addi	%x5, %x0, 0  #0 pc 2144
	sw	%x1, 28(%x2)  #228 pc 2148
	addi	%x2, %x2, 32  #228 pc 2152
	jal	%x1, min_caml_print_newline  #228 pc 2156
	addi	%x2, %x2, -32  #228 pc 2160
	lw	%x1, 28(%x2) #228 pc 2164
	lw	%x5, 20(%x2)  #229 pc 2168
	addi	%x24, %x0, 4  #pc 2172
	add	%x24, %x24, %x5  #229 pc 2176
	lw	%x5, 0(%x24)  #229 pc 2180
	addi	%x24, %x0, 4  #pc 2184
	add	%x24, %x24, %x5  #229 pc 2188
	flw	%f0, 0(%x24)  #229 pc 2192
	sw	%x1, 28(%x2)  #229 pc 2196
	addi	%x2, %x2, 32  #229 pc 2200
	jal	%x1, min_caml_truncate  #229 pc 2204
	addi	%x2, %x2, -32  #229 pc 2208
	lw	%x1, 28(%x2) #229 pc 2212
	sw	%x1, 28(%x2)  #229 pc 2216
	addi	%x2, %x2, 32  #229 pc 2220
	jal	%x1, print_int.342  #229 pc 2224
	addi	%x2, %x2, -32  #229 pc 2228
	lw	%x1, 28(%x2) #229 pc 2232
	addi	%x5, %x0, 0  #0 pc 2236
	sw	%x1, 28(%x2)  #230 pc 2240
	addi	%x2, %x2, 32  #230 pc 2244
	jal	%x1, min_caml_print_newline  #230 pc 2248
	addi	%x2, %x2, -32  #230 pc 2252
	lw	%x1, 28(%x2) #230 pc 2256
	addi	%x2, %x2, 112
