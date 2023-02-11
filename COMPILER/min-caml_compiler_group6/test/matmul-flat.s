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
	addi	%x31, %x0, -1  #pc 0
	beq	%x7, %x31, 12  #57 pc 4
	j	be_else.852 #pc 8
	nop #pc 12
	addi	%x5, %x8, 0  #58 pc 16
	ret #pc 20
	nop #pc 24
be_else.852: #pc 28
	addi	%x9, %x0, 1  #0 pc 28
	sll	%x9, %x9, %x7  #60 pc 32
	and	%x9, %x6, %x9  #60 pc 36
	beq	%x9, %x0, 12  #60 pc 40
	j	be_else.853 #pc 44
	nop #pc 48
	addi	%x7, %x7, -1  #61 pc 52
	j	mul_abs.324  #61 pc 56
	nop #pc 60
be_else.853: #pc 64
	addi	%x9, %x7, -1  #63 pc 64
	sll	%x7, %x5, %x7  #63 pc 68
	add	%x8, %x8, %x7  #63 pc 72
	addi	%x7, %x9, 0  #0 pc 76
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
	addi	%x8, %x6, 0  #68 pc 128
	j	bge_cont.857 #pc 132
	nop #pc 136
bge_else.856: #pc 140
	sub	%x8, %x0, %x6  #68 pc 140
bge_cont.857: #pc 144
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
	j	be_else.858 #pc 216
	nop #pc 220
	ret #pc 224
	nop #pc 228
be_else.858: #pc 232
	sub	%x5, %x0, %x5  #73 pc 232
	ret #pc 236
	nop #pc 240
div_abs.332:  #pc 244
	addi	%x31, %x0, -1  #pc 244
	beq	%x7, %x31, 12  #77 pc 248
	j	be_else.859 #pc 252
	nop #pc 256
	addi	%x5, %x8, 0  #78 pc 260
	ret #pc 264
	nop #pc 268
be_else.859: #pc 272
	srl	%x9, %x5, %x7  #80 pc 272
	bge	%x9, %x6, 12  #80 pc 276
	j	ble_else.860 #pc 280
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
	addi	%x8, %x6, 0  #88 pc 376
	j	bge_cont.864 #pc 380
	nop #pc 384
bge_else.863: #pc 388
	sub	%x8, %x0, %x6  #88 pc 388
bge_cont.864: #pc 392
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
	addi	%x31, %x0, 10  #pc 504
	bge	%x5, %x31, 12  #104 pc 508
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
bge_else.867: #pc 624
	addi	%x5, %x5, 48  #105 pc 624
	out	%x5  #105 pc 628
	ret #pc 632
	nop #pc 636
bge_else.866: #pc 640
	addi	%x6, %x0, 45  #0 pc 640
	out	%x6  #101 pc 644
	sub	%x5, %x0, %x5  #102 pc 648
	j	print_int.342  #102 pc 652
	nop #pc 656
assign_array.356:  #pc 660
	beq	%x7, %x0, 12  #160 pc 660
	j	be_else.870 #pc 664
	nop #pc 668
	slli	%x7, %x7, 2  #161 pc 672
	add	%x31, %x7, %x5  #161 pc 676
	sw	%x6, 0(%x31)  #161 pc 680
	ret #pc 684
	nop #pc 688
be_else.870: #pc 692
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
	j	be_else.872 #pc 784
	nop #pc 788
	slli	%x6, %x6, 2  #177 pc 792
	add	%x31, %x6, %x5  #177 pc 796
	fsw	%f0, 0(%x31) #177 pc 800
	ret #pc 804
	nop #pc 808
be_else.872: #pc 812
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
loop3.370:  #pc 900
	bge	%x6, %x0, 12  #192 pc 900
	j	bge_else.874 #pc 904
	nop #pc 908
	slli	%x11, %x5, 2  #193 pc 912
	add	%x31, %x11, %x10  #193 pc 916
	lw	%x11, 0(%x31)  #193 pc 920
	slli	%x12, %x5, 2  #193 pc 924
	add	%x31, %x12, %x10  #193 pc 928
	lw	%x12, 0(%x31)  #193 pc 932
	slli	%x13, %x7, 2  #193 pc 936
	add	%x31, %x13, %x12  #193 pc 940
	flw	%f0, 0(%x31)  #193 pc 944
	slli	%x12, %x5, 2  #193 pc 948
	add	%x31, %x12, %x8  #193 pc 952
	lw	%x12, 0(%x31)  #193 pc 956
	slli	%x13, %x6, 2  #193 pc 960
	add	%x31, %x13, %x12  #193 pc 964
	flw	%f1, 0(%x31)  #193 pc 968
	slli	%x12, %x6, 2  #193 pc 972
	add	%x31, %x12, %x9  #193 pc 976
	lw	%x12, 0(%x31)  #193 pc 980
	slli	%x13, %x7, 2  #193 pc 984
	add	%x31, %x13, %x12  #193 pc 988
	flw	%f2, 0(%x31)  #193 pc 992
	fmul	%f1, %f1, %f2  #193 pc 996
	fadd	%f0, %f0, %f1  #193 pc 1000
	slli	%x12, %x7, 2  #193 pc 1004
	add	%x31, %x12, %x11  #193 pc 1008
	fsw	%f0, 0(%x31) #193 pc 1012
	addi	%x6, %x6, -1  #194 pc 1016
	j	loop3.370  #194 pc 1020
	nop #pc 1024
bge_else.874: #pc 1028
	ret #pc 1028
	nop #pc 1032
loop2.377:  #pc 1036
	bge	%x7, %x0, 12  #196 pc 1036
	j	bge_else.876 #pc 1040
	nop #pc 1044
	addi	%x11, %x6, -1  #197 pc 1048
	sw	%x10, 0(%x2)  #197 pc 1052
	sw	%x9, 4(%x2)  #197 pc 1056
	sw	%x8, 8(%x2)  #197 pc 1060
	sw	%x6, 12(%x2)  #197 pc 1064
	sw	%x5, 16(%x2)  #197 pc 1068
	sw	%x7, 20(%x2)  #197 pc 1072
	addi	%x6, %x11, 0  #0 pc 1076
	sw	%x1, 24(%x2)  #197 pc 1080
	addi	%x2, %x2, 28  #197 pc 1084
	jal	%x1, loop3.370  #197 pc 1088
	addi	%x2, %x2, -28  #197 pc 1092
	lw	%x1, 24(%x2) #197 pc 1096
	lw	%x5, 20(%x2)  #198 pc 1100
	addi	%x7, %x5, -1  #198 pc 1104
	lw	%x5, 16(%x2)  #198 pc 1108
	lw	%x6, 12(%x2)  #198 pc 1112
	lw	%x8, 8(%x2)  #198 pc 1116
	lw	%x9, 4(%x2)  #198 pc 1120
	lw	%x10, 0(%x2)  #198 pc 1124
	j	loop2.377  #198 pc 1128
	nop #pc 1132
bge_else.876: #pc 1136
	ret #pc 1136
	nop #pc 1140
loop1.384:  #pc 1144
	bge	%x5, %x0, 12  #200 pc 1144
	j	bge_else.878 #pc 1148
	nop #pc 1152
	addi	%x11, %x7, -1  #201 pc 1156
	sw	%x10, 0(%x2)  #201 pc 1160
	sw	%x9, 4(%x2)  #201 pc 1164
	sw	%x8, 8(%x2)  #201 pc 1168
	sw	%x7, 12(%x2)  #201 pc 1172
	sw	%x6, 16(%x2)  #201 pc 1176
	sw	%x5, 20(%x2)  #201 pc 1180
	addi	%x7, %x11, 0  #0 pc 1184
	sw	%x1, 24(%x2)  #201 pc 1188
	addi	%x2, %x2, 28  #201 pc 1192
	jal	%x1, loop2.377  #201 pc 1196
	addi	%x2, %x2, -28  #201 pc 1200
	lw	%x1, 24(%x2) #201 pc 1204
	lw	%x5, 20(%x2)  #202 pc 1208
	addi	%x5, %x5, -1  #202 pc 1212
	lw	%x6, 16(%x2)  #202 pc 1216
	lw	%x7, 12(%x2)  #202 pc 1220
	lw	%x8, 8(%x2)  #202 pc 1224
	lw	%x9, 4(%x2)  #202 pc 1228
	lw	%x10, 0(%x2)  #202 pc 1232
	j	loop1.384  #202 pc 1236
	nop #pc 1240
bge_else.878: #pc 1244
	ret #pc 1244
	nop #pc 1248
mul.391:  #pc 1252
	addi	%x5, %x5, -1  #204 pc 1252
	j	loop1.384  #204 pc 1256
	nop #pc 1260
init.399:  #pc 1264
	bge	%x5, %x0, 12  #207 pc 1264
	j	bge_else.880 #pc 1268
	nop #pc 1272
	fmv	%f0, l.749  #0 pc 1276
	sw	%x6, 0(%x2)  #208 pc 1280
	sw	%x7, 4(%x2)  #208 pc 1284
	sw	%x5, 8(%x2)  #208 pc 1288
	addi	%x5, %x6, 0  #0 pc 1292
	sw	%x1, 12(%x2)  #208 pc 1296
	addi	%x2, %x2, 16  #208 pc 1300
	jal	%x1, create_float_array.367  #208 pc 1304
	addi	%x2, %x2, -16  #208 pc 1308
	lw	%x1, 12(%x2) #208 pc 1312
	lw	%x6, 8(%x2)  #208 pc 1316
	slli	%x7, %x6, 2  #208 pc 1320
	lw	%x8, 4(%x2)  #208 pc 1324
	add	%x31, %x7, %x8  #208 pc 1328
	sw	%x5, 0(%x31)  #208 pc 1332
	addi	%x5, %x6, -1  #209 pc 1336
	lw	%x6, 0(%x2)  #209 pc 1340
	addi	%x7, %x8, 0  #0 pc 1344
	j	init.399  #209 pc 1348
	nop #pc 1352
bge_else.880: #pc 1356
	ret #pc 1356
	nop #pc 1360
make.403:  #pc 1364
	sw	%x6, 0(%x2)  #211 pc 1364
	sw	%x5, 4(%x2)  #211 pc 1368
	addi	%x6, %x7, 0  #0 pc 1372
	sw	%x1, 8(%x2)  #211 pc 1376
	addi	%x2, %x2, 12  #211 pc 1380
	jal	%x1, create_array.360  #211 pc 1384
	addi	%x2, %x2, -12  #211 pc 1388
	lw	%x1, 8(%x2) #211 pc 1392
	addi	%x7, %x5, 0  #211 pc 1396
	lw	%x5, 4(%x2)  #212 pc 1400
	addi	%x5, %x5, -1  #212 pc 1404
	lw	%x6, 0(%x2)  #212 pc 1408
	sw	%x7, 8(%x2)  #212 pc 1412
	sw	%x1, 12(%x2)  #212 pc 1416
	addi	%x2, %x2, 16  #212 pc 1420
	jal	%x1, init.399  #212 pc 1424
	addi	%x2, %x2, -16  #212 pc 1428
	lw	%x1, 12(%x2) #212 pc 1432
	lw	%x5, 8(%x2)  #213 pc 1436
	ret #pc 1440
	nop #pc 1444
.global	min_caml_start
min_caml_start:
	addi	%x2, %x0, 0
	addi	%x3, %x0, 1024
	addi	%x5, %x0, 0  #0 pc 1456
	fmv	%f0, l.749  #0 pc 1460
	sw	%x1, 0(%x2)  #205 pc 1464
	addi	%x2, %x2, 4  #205 pc 1468
	jal	%x1, create_float_array.367  #205 pc 1472
	addi	%x2, %x2, -4  #205 pc 1476
	lw	%x1, 0(%x2) #205 pc 1480
	addi	%x7, %x5, 0  #205 pc 1484
	addi	%x5, %x0, 2  #0 pc 1488
	addi	%x6, %x0, 3  #0 pc 1492
	sw	%x7, 0(%x2)  #214 pc 1496
	sw	%x1, 4(%x2)  #214 pc 1500
	addi	%x2, %x2, 8  #214 pc 1504
	jal	%x1, make.403  #214 pc 1508
	addi	%x2, %x2, -8  #214 pc 1512
	lw	%x1, 4(%x2) #214 pc 1516
	addi	%x6, %x0, 3  #0 pc 1520
	addi	%x7, %x0, 2  #0 pc 1524
	lw	%x8, 0(%x2)  #215 pc 1528
	sw	%x5, 4(%x2)  #215 pc 1532
	addi	%x5, %x6, 0  #0 pc 1536
	addi	%x6, %x7, 0  #0 pc 1540
	addi	%x7, %x8, 0  #0 pc 1544
	sw	%x1, 8(%x2)  #215 pc 1548
	addi	%x2, %x2, 12  #215 pc 1552
	jal	%x1, make.403  #215 pc 1556
	addi	%x2, %x2, -12  #215 pc 1560
	lw	%x1, 8(%x2) #215 pc 1564
	addi	%x6, %x0, 2  #0 pc 1568
	lw	%x7, 0(%x2)  #216 pc 1572
	sw	%x5, 8(%x2)  #216 pc 1576
	addi	%x5, %x6, 0  #0 pc 1580
	sw	%x1, 12(%x2)  #216 pc 1584
	addi	%x2, %x2, 16  #216 pc 1588
	jal	%x1, make.403  #216 pc 1592
	addi	%x2, %x2, -16  #216 pc 1596
	lw	%x1, 12(%x2) #216 pc 1600
	addi	%x10, %x5, 0  #216 pc 1604
	lw	%x8, 4(%x2)  #217 pc 1608
	lw	%x5, 0(%x8)  #217 pc 1612
	fmv	%f0, l.754  #0 pc 1616
	fsw	%f0, 0(%x5)  #217 pc 1620
	lw	%x5, 0(%x8)  #217 pc 1624
	fmv	%f0, l.758  #0 pc 1628
	fsw	%f0, 4(%x5)  #217 pc 1632
	lw	%x5, 0(%x8)  #217 pc 1636
	fmv	%f0, l.762  #0 pc 1640
	fsw	%f0, 8(%x5)  #217 pc 1644
	lw	%x5, 4(%x8)  #218 pc 1648
	fmv	%f0, l.766  #0 pc 1652
	fsw	%f0, 0(%x5)  #218 pc 1656
	lw	%x5, 4(%x8)  #218 pc 1660
	fmv	%f0, l.770  #0 pc 1664
	fsw	%f0, 4(%x5)  #218 pc 1668
	lw	%x5, 4(%x8)  #218 pc 1672
	fmv	%f0, l.774  #0 pc 1676
	fsw	%f0, 8(%x5)  #218 pc 1680
	lw	%x9, 8(%x2)  #219 pc 1684
	lw	%x5, 0(%x9)  #219 pc 1688
	fmv	%f0, l.778  #0 pc 1692
	fsw	%f0, 0(%x5)  #219 pc 1696
	lw	%x5, 0(%x9)  #219 pc 1700
	fmv	%f0, l.782  #0 pc 1704
	fsw	%f0, 4(%x5)  #219 pc 1708
	lw	%x5, 4(%x9)  #220 pc 1712
	fmv	%f0, l.786  #0 pc 1716
	fsw	%f0, 0(%x5)  #220 pc 1720
	lw	%x5, 4(%x9)  #220 pc 1724
	fmv	%f0, l.790  #0 pc 1728
	fsw	%f0, 4(%x5)  #220 pc 1732
	lw	%x5, 8(%x9)  #221 pc 1736
	fmv	%f0, l.794  #0 pc 1740
	fsw	%f0, 0(%x5)  #221 pc 1744
	lw	%x5, 8(%x9)  #221 pc 1748
	fmv	%f0, l.798  #0 pc 1752
	fsw	%f0, 4(%x5)  #221 pc 1756
	addi	%x5, %x0, 2  #0 pc 1760
	addi	%x6, %x0, 3  #0 pc 1764
	sw	%x10, 12(%x2)  #222 pc 1768
	addi	%x7, %x5, 0  #0 pc 1772
	sw	%x1, 16(%x2)  #222 pc 1776
	addi	%x2, %x2, 20  #222 pc 1780
	jal	%x1, mul.391  #222 pc 1784
	addi	%x2, %x2, -20  #222 pc 1788
	lw	%x1, 16(%x2) #222 pc 1792
	lw	%x5, 12(%x2)  #223 pc 1796
	lw	%x6, 0(%x5)  #223 pc 1800
	flw	%f0, 0(%x6)  #223 pc 1804
	sw	%x1, 16(%x2)  #223 pc 1808
	addi	%x2, %x2, 20  #223 pc 1812
	jal	%x1, min_caml_truncate  #223 pc 1816
	addi	%x2, %x2, -20  #223 pc 1820
	lw	%x1, 16(%x2) #223 pc 1824
	sw	%x1, 16(%x2)  #223 pc 1828
	addi	%x2, %x2, 20  #223 pc 1832
	jal	%x1, print_int.342  #223 pc 1836
	addi	%x2, %x2, -20  #223 pc 1840
	lw	%x1, 16(%x2) #223 pc 1844
	sw	%x1, 16(%x2)  #224 pc 1848
	addi	%x2, %x2, 20  #224 pc 1852
	jal	%x1, min_caml_print_newline  #224 pc 1856
	addi	%x2, %x2, -20  #224 pc 1860
	lw	%x1, 16(%x2) #224 pc 1864
	lw	%x5, 12(%x2)  #225 pc 1868
	lw	%x6, 0(%x5)  #225 pc 1872
	flw	%f0, 4(%x6)  #225 pc 1876
	sw	%x1, 16(%x2)  #225 pc 1880
	addi	%x2, %x2, 20  #225 pc 1884
	jal	%x1, min_caml_truncate  #225 pc 1888
	addi	%x2, %x2, -20  #225 pc 1892
	lw	%x1, 16(%x2) #225 pc 1896
	sw	%x1, 16(%x2)  #225 pc 1900
	addi	%x2, %x2, 20  #225 pc 1904
	jal	%x1, print_int.342  #225 pc 1908
	addi	%x2, %x2, -20  #225 pc 1912
	lw	%x1, 16(%x2) #225 pc 1916
	sw	%x1, 16(%x2)  #226 pc 1920
	addi	%x2, %x2, 20  #226 pc 1924
	jal	%x1, min_caml_print_newline  #226 pc 1928
	addi	%x2, %x2, -20  #226 pc 1932
	lw	%x1, 16(%x2) #226 pc 1936
	lw	%x5, 12(%x2)  #227 pc 1940
	lw	%x6, 4(%x5)  #227 pc 1944
	flw	%f0, 0(%x6)  #227 pc 1948
	sw	%x1, 16(%x2)  #227 pc 1952
	addi	%x2, %x2, 20  #227 pc 1956
	jal	%x1, min_caml_truncate  #227 pc 1960
	addi	%x2, %x2, -20  #227 pc 1964
	lw	%x1, 16(%x2) #227 pc 1968
	sw	%x1, 16(%x2)  #227 pc 1972
	addi	%x2, %x2, 20  #227 pc 1976
	jal	%x1, print_int.342  #227 pc 1980
	addi	%x2, %x2, -20  #227 pc 1984
	lw	%x1, 16(%x2) #227 pc 1988
	sw	%x1, 16(%x2)  #228 pc 1992
	addi	%x2, %x2, 20  #228 pc 1996
	jal	%x1, min_caml_print_newline  #228 pc 2000
	addi	%x2, %x2, -20  #228 pc 2004
	lw	%x1, 16(%x2) #228 pc 2008
	lw	%x5, 12(%x2)  #229 pc 2012
	lw	%x5, 4(%x5)  #229 pc 2016
	flw	%f0, 4(%x5)  #229 pc 2020
	sw	%x1, 16(%x2)  #229 pc 2024
	addi	%x2, %x2, 20  #229 pc 2028
	jal	%x1, min_caml_truncate  #229 pc 2032
	addi	%x2, %x2, -20  #229 pc 2036
	lw	%x1, 16(%x2) #229 pc 2040
	sw	%x1, 16(%x2)  #229 pc 2044
	addi	%x2, %x2, 20  #229 pc 2048
	jal	%x1, print_int.342  #229 pc 2052
	addi	%x2, %x2, -20  #229 pc 2056
	lw	%x1, 16(%x2) #229 pc 2060
	sw	%x1, 16(%x2)  #230 pc 2064
	addi	%x2, %x2, 20  #230 pc 2068
	jal	%x1, min_caml_print_newline  #230 pc 2072
	addi	%x2, %x2, -20  #230 pc 2076
	lw	%x1, 16(%x2) #230 pc 2080
	addi	%x2, %x2, 112
