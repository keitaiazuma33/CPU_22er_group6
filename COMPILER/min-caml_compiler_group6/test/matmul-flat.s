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
mul_abs.324:  #pc:0
	addi	%x24, %x0, -1  #pc:4
	beq	%x7, %x24, 12  #57 pc:8
	j	be_else.852 #pc:12
	nop #pc:16
	mv	%x5, %x9  #58 pc:20
	ret #pc:24
	nop #pc:28
be_else.852: #pc:28
	addi	%x10, %x0, 1  #0 pc:32
	sll	%x10, %x10, %x7  #60 pc:36
	and	%x10, %x6, %x10  #60 pc:40
	beq	%x10, %x0, 12  #60 pc:44
	j	be_else.853 #pc:48
	nop #pc:52
	addi	%x7, %x7, -1  #61 pc:56
	j	mul_abs.324  #61 pc:60
	nop #pc:64
be_else.853: #pc:64
	addi	%x10, %x7, -1  #63 pc:68
	sll	%x7, %x5, %x7  #63 pc:72
	add	%x9, %x9, %x7  #63 pc:76
	mv	%x7, %x10 #pc:80
	j	mul_abs.324  #63 pc:84
	nop #pc:88
mul.329:  #pc:88
	bge	%x5, %x0, 12  #67 pc:92
	j	bge_else.854 #pc:96
	nop #pc:100
	mv	%x7, %x5  #67 pc:104
	j	bge_cont.855 #pc:108
	nop #pc:112
bge_else.854: #pc:112
	sub	%x7, %x0, %x5  #67 pc:116
bge_cont.855: #pc:116
	bge	%x6, %x0, 12  #68 pc:120
	j	bge_else.856 #pc:124
	nop #pc:128
	mv	%x9, %x6  #68 pc:132
	j	bge_cont.857 #pc:136
	nop #pc:140
bge_else.856: #pc:140
	sub	%x9, %x0, %x6  #68 pc:144
bge_cont.857: #pc:144
	addi	%x10, %x0, 30  #0 pc:148
	addi	%x11, %x0, 0  #0 pc:152
	sw	%x6, 0(%x2)  #69 pc:156
	sw	%x5, 4(%x2)  #69 pc:160
	mv	%x6, %x9 #pc:164
	mv	%x5, %x7 #pc:168
	mv	%x9, %x11 #pc:172
	mv	%x7, %x10 #pc:176
	sw	%x1, 12(%x2)  #69 pc:180
	addi	%x2, %x2, 16  #69 pc:184
	jal	%x1, mul_abs.324  #69 pc:188
	addi	%x2, %x2, -16  #69 pc:192
	lw	%x1, 12(%x2) #69 pc:196
	lw	%x6, 4(%x2)  #70 pc:200
	srli	%x6, %x6, 31  #70 pc:204
	lw	%x7, 0(%x2)  #70 pc:208
	srli	%x7, %x7, 31  #70 pc:212
	beq	%x6, %x7, 12  #70 pc:216
	j	be_else.858 #pc:220
	nop #pc:224
	ret #pc:228
	nop #pc:232
be_else.858: #pc:232
	sub	%x5, %x0, %x5  #73 pc:236
	ret #pc:240
	nop #pc:244
div_abs.332:  #pc:244
	addi	%x24, %x0, -1  #pc:248
	beq	%x7, %x24, 12  #77 pc:252
	j	be_else.859 #pc:256
	nop #pc:260
	mv	%x5, %x9  #78 pc:264
	ret #pc:268
	nop #pc:272
be_else.859: #pc:272
	srl	%x10, %x5, %x7  #80 pc:276
	bge	%x10, %x6, 12  #80 pc:280
	j	ble_else.860 #pc:284
	nop #pc:288
	sll	%x10, %x6, %x7  #81 pc:292
	sub	%x5, %x5, %x10  #81 pc:296
	addi	%x10, %x7, -1  #81 pc:300
	addi	%x11, %x0, 1  #0 pc:304
	sll	%x7, %x11, %x7  #81 pc:308
	add	%x9, %x9, %x7  #81 pc:312
	mv	%x7, %x10 #pc:316
	j	div_abs.332  #81 pc:320
	nop #pc:324
ble_else.860: #pc:324
	addi	%x7, %x7, -1  #83 pc:328
	j	div_abs.332  #83 pc:332
	nop #pc:336
div.337:  #pc:336
	bge	%x5, %x0, 12  #87 pc:340
	j	bge_else.861 #pc:344
	nop #pc:348
	mv	%x7, %x5  #87 pc:352
	j	bge_cont.862 #pc:356
	nop #pc:360
bge_else.861: #pc:360
	sub	%x7, %x0, %x5  #87 pc:364
bge_cont.862: #pc:364
	bge	%x6, %x0, 12  #88 pc:368
	j	bge_else.863 #pc:372
	nop #pc:376
	mv	%x9, %x6  #88 pc:380
	j	bge_cont.864 #pc:384
	nop #pc:388
bge_else.863: #pc:388
	sub	%x9, %x0, %x6  #88 pc:392
bge_cont.864: #pc:392
	addi	%x10, %x0, 30  #0 pc:396
	addi	%x11, %x0, 0  #0 pc:400
	sw	%x6, 0(%x2)  #89 pc:404
	sw	%x5, 4(%x2)  #89 pc:408
	mv	%x6, %x9 #pc:412
	mv	%x5, %x7 #pc:416
	mv	%x9, %x11 #pc:420
	mv	%x7, %x10 #pc:424
	sw	%x1, 12(%x2)  #89 pc:428
	addi	%x2, %x2, 16  #89 pc:432
	jal	%x1, div_abs.332  #89 pc:436
	addi	%x2, %x2, -16  #89 pc:440
	lw	%x1, 12(%x2) #89 pc:444
	lw	%x6, 4(%x2)  #90 pc:448
	srli	%x6, %x6, 31  #90 pc:452
	lw	%x7, 0(%x2)  #90 pc:456
	srli	%x7, %x7, 31  #90 pc:460
	beq	%x6, %x7, 12  #90 pc:464
	j	be_else.865 #pc:468
	nop #pc:472
	ret #pc:476
	nop #pc:480
be_else.865: #pc:480
	sub	%x5, %x0, %x5  #93 pc:484
	ret #pc:488
	nop #pc:492
print_int.342:  #pc:492
	bge	%x5, %x0, 12  #100 pc:496
	j	bge_else.866 #pc:500
	nop #pc:504
	addi	%x24, %x0, 10  #pc:508
	bge	%x5, %x24, 12  #104 pc:512
	j	bge_else.867 #pc:516
	nop #pc:520
	addi	%x6, %x0, 10  #0 pc:524
	sw	%x5, 0(%x2)  #107 pc:528
	sw	%x1, 4(%x2)  #107 pc:532
	addi	%x2, %x2, 8  #107 pc:536
	jal	%x1, div.337  #107 pc:540
	addi	%x2, %x2, -8  #107 pc:544
	lw	%x1, 4(%x2) #107 pc:548
	sw	%x5, 4(%x2)  #108 pc:552
	sw	%x1, 12(%x2)  #108 pc:556
	addi	%x2, %x2, 16  #108 pc:560
	jal	%x1, print_int.342  #108 pc:564
	addi	%x2, %x2, -16  #108 pc:568
	lw	%x1, 12(%x2) #108 pc:572
	addi	%x6, %x0, 10  #0 pc:576
	lw	%x5, 4(%x2)  #109 pc:580
	sw	%x1, 12(%x2)  #109 pc:584
	addi	%x2, %x2, 16  #109 pc:588
	jal	%x1, mul.329  #109 pc:592
	addi	%x2, %x2, -16  #109 pc:596
	lw	%x1, 12(%x2) #109 pc:600
	lw	%x6, 0(%x2)  #109 pc:604
	sub	%x5, %x6, %x5  #109 pc:608
	addi	%x5, %x5, 48  #109 pc:612
	out	%x5  #109 pc:616
	ret #pc:620
	nop #pc:624
bge_else.867: #pc:624
	addi	%x5, %x5, 48  #105 pc:628
	out	%x5  #105 pc:632
	ret #pc:636
	nop #pc:640
bge_else.866: #pc:640
	sub	%x5, %x0, %x5  #102 pc:644
	j	print_int.342  #102 pc:648
	nop #pc:652
assign_array.356:  #pc:652
	beq	%x7, %x0, 12  #160 pc:656
	j	be_else.870 #pc:660
	nop #pc:664
	slli	%x7, %x7, 2  #161 pc:668
	sw	%x6, %x7(%x5)  #161 pc:672
	ret #pc:676
	nop #pc:680
be_else.870: #pc:680
	slli	%x9, %x7, 2  #163 pc:684
	sw	%x6, %x9(%x5)  #163 pc:688
	addi	%x7, %x7, -1  #164 pc:692
	j	assign_array.356  #164 pc:696
	nop #pc:700
create_array.360:  #pc:700
	mv	%x7, %x3  #168 pc:704
	sw	%x7, 0(%x2)  #171 pc:708
	mv	%x23, %x7 #pc:712
	mv	%x7, %x5 #pc:716
	mv	%x5, %x23 #pc:720
	sw	%x1, 4(%x2)  #171 pc:724
	addi	%x2, %x2, 8  #171 pc:728
	jal	%x1, assign_array.356  #171 pc:732
	addi	%x2, %x2, -8  #171 pc:736
	lw	%x1, 4(%x2) #171 pc:740
	lw	%x5, 0(%x2)  #172 pc:744
	ret #pc:748
	nop #pc:752
assign_farray.363:  #pc:752
	beq	%x6, %x0, 12  #176 pc:756
	j	be_else.872 #pc:760
	nop #pc:764
	slli	%x6, %x6, 3  #177 pc:768
	fsw	%f0, %x6(%x5) #177 pc:772
	ret #pc:776
	nop #pc:780
be_else.872: #pc:780
	slli	%x7, %x6, 3  #179 pc:784
	fsw	%f0, %x7(%x5) #179 pc:788
	addi	%x6, %x6, -1  #180 pc:792
	j	assign_farray.363  #180 pc:796
	nop #pc:800
create_float_array.367:  #pc:800
	mv	%x6, %x3  #184 pc:804
	sw	%x6, 0(%x2)  #187 pc:808
	mv	%x23, %x6 #pc:812
	mv	%x6, %x5 #pc:816
	mv	%x5, %x23 #pc:820
	sw	%x1, 4(%x2)  #187 pc:824
	addi	%x2, %x2, 8  #187 pc:828
	jal	%x1, assign_farray.363  #187 pc:832
	addi	%x2, %x2, -8  #187 pc:836
	lw	%x1, 4(%x2) #187 pc:840
	lw	%x5, 0(%x2)  #188 pc:844
	ret #pc:848
	nop #pc:852
loop3.370:  #pc:852
	bge	%x6, %x0, 12  #192 pc:856
	j	bge_else.874 #pc:860
	nop #pc:864
	slli	%x12, %x5, 2  #193 pc:868
	lw	%x12, %x12(%x11)  #193 pc:872
	slli	%x13, %x5, 2  #193 pc:876
	lw	%x13, %x13(%x11)  #193 pc:880
	slli	%x14, %x7, 3  #193 pc:884
	flw	%f0, %x14(%x13)  #193 pc:888
	slli	%x13, %x5, 2  #193 pc:892
	lw	%x13, %x13(%x9)  #193 pc:896
	slli	%x14, %x6, 3  #193 pc:900
	flw	%f2, %x14(%x13)  #193 pc:904
	slli	%x13, %x6, 2  #193 pc:908
	lw	%x13, %x13(%x10)  #193 pc:912
	slli	%x14, %x7, 3  #193 pc:916
	flw	%f4, %x14(%x13)  #193 pc:920
	fmul	%f2, %f2, %f4  #193 pc:924
	fadd	%f0, %f0, %f2  #193 pc:928
	slli	%x13, %x7, 3  #193 pc:932
	fsw	%f0, %x13(%x12) #193 pc:936
	addi	%x6, %x6, -1  #194 pc:940
	j	loop3.370  #194 pc:944
	nop #pc:948
bge_else.874: #pc:948
	ret #pc:952
	nop #pc:956
loop2.377:  #pc:956
	bge	%x7, %x0, 12  #196 pc:960
	j	bge_else.876 #pc:964
	nop #pc:968
	addi	%x12, %x6, -1  #197 pc:972
	sw	%x11, 0(%x2)  #197 pc:976
	sw	%x10, 4(%x2)  #197 pc:980
	sw	%x9, 8(%x2)  #197 pc:984
	sw	%x6, 12(%x2)  #197 pc:988
	sw	%x5, 16(%x2)  #197 pc:992
	sw	%x7, 20(%x2)  #197 pc:996
	mv	%x6, %x12 #pc:1000
	sw	%x1, 28(%x2)  #197 pc:1004
	addi	%x2, %x2, 32  #197 pc:1008
	jal	%x1, loop3.370  #197 pc:1012
	addi	%x2, %x2, -32  #197 pc:1016
	lw	%x1, 28(%x2) #197 pc:1020
	lw	%x5, 20(%x2)  #198 pc:1024
	addi	%x7, %x5, -1  #198 pc:1028
	lw	%x5, 16(%x2)  #198 pc:1032
	lw	%x6, 12(%x2)  #198 pc:1036
	lw	%x9, 8(%x2)  #198 pc:1040
	lw	%x10, 4(%x2)  #198 pc:1044
	lw	%x11, 0(%x2)  #198 pc:1048
	j	loop2.377  #198 pc:1052
	nop #pc:1056
bge_else.876: #pc:1056
	ret #pc:1060
	nop #pc:1064
loop1.384:  #pc:1064
	bge	%x5, %x0, 12  #200 pc:1068
	j	bge_else.878 #pc:1072
	nop #pc:1076
	addi	%x12, %x7, -1  #201 pc:1080
	sw	%x11, 0(%x2)  #201 pc:1084
	sw	%x10, 4(%x2)  #201 pc:1088
	sw	%x9, 8(%x2)  #201 pc:1092
	sw	%x7, 12(%x2)  #201 pc:1096
	sw	%x6, 16(%x2)  #201 pc:1100
	sw	%x5, 20(%x2)  #201 pc:1104
	mv	%x7, %x12 #pc:1108
	sw	%x1, 28(%x2)  #201 pc:1112
	addi	%x2, %x2, 32  #201 pc:1116
	jal	%x1, loop2.377  #201 pc:1120
	addi	%x2, %x2, -32  #201 pc:1124
	lw	%x1, 28(%x2) #201 pc:1128
	lw	%x5, 20(%x2)  #202 pc:1132
	addi	%x5, %x5, -1  #202 pc:1136
	lw	%x6, 16(%x2)  #202 pc:1140
	lw	%x7, 12(%x2)  #202 pc:1144
	lw	%x9, 8(%x2)  #202 pc:1148
	lw	%x10, 4(%x2)  #202 pc:1152
	lw	%x11, 0(%x2)  #202 pc:1156
	j	loop1.384  #202 pc:1160
	nop #pc:1164
bge_else.878: #pc:1164
	ret #pc:1168
	nop #pc:1172
mul.391:  #pc:1172
	addi	%x5, %x5, -1  #204 pc:1176
	j	loop1.384  #204 pc:1180
	nop #pc:1184
init.399:  #pc:1184
	bge	%x5, %x0, 12  #207 pc:1188
	j	bge_else.880 #pc:1192
	nop #pc:1196
	mv	%f0, l.749  #0 pc:1200
	sw	%x6, 0(%x2)  #208 pc:1204
	sw	%x7, 4(%x2)  #208 pc:1208
	sw	%x5, 8(%x2)  #208 pc:1212
	mv	%x5, %x6 #pc:1216
	sw	%x1, 12(%x2)  #208 pc:1220
	addi	%x2, %x2, 16  #208 pc:1224
	jal	%x1, create_float_array.367  #208 pc:1228
	addi	%x2, %x2, -16  #208 pc:1232
	lw	%x1, 12(%x2) #208 pc:1236
	lw	%x6, 8(%x2)  #208 pc:1240
	slli	%x7, %x6, 2  #208 pc:1244
	lw	%x9, 4(%x2)  #208 pc:1248
	sw	%x5, %x7(%x9)  #208 pc:1252
	addi	%x5, %x6, -1  #209 pc:1256
	lw	%x6, 0(%x2)  #209 pc:1260
	mv	%x7, %x9 #pc:1264
	j	init.399  #209 pc:1268
	nop #pc:1272
bge_else.880: #pc:1272
	ret #pc:1276
	nop #pc:1280
make.403:  #pc:1280
	sw	%x6, 0(%x2)  #211 pc:1284
	sw	%x5, 4(%x2)  #211 pc:1288
	mv	%x6, %x7 #pc:1292
	sw	%x1, 12(%x2)  #211 pc:1296
	addi	%x2, %x2, 16  #211 pc:1300
	jal	%x1, create_array.360  #211 pc:1304
	addi	%x2, %x2, -16  #211 pc:1308
	lw	%x1, 12(%x2) #211 pc:1312
	mv	%x7, %x5  #211 pc:1316
	lw	%x5, 4(%x2)  #212 pc:1320
	addi	%x5, %x5, -1  #212 pc:1324
	lw	%x6, 0(%x2)  #212 pc:1328
	sw	%x7, 8(%x2)  #212 pc:1332
	sw	%x1, 12(%x2)  #212 pc:1336
	addi	%x2, %x2, 16  #212 pc:1340
	jal	%x1, init.399  #212 pc:1344
	addi	%x2, %x2, -16  #212 pc:1348
	lw	%x1, 12(%x2) #212 pc:1352
	lw	%x5, 8(%x2)  #213 pc:1356
	ret #pc:1360
	nop #pc:1364
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 0  #0 pc:1368
	mv	%f0, l.749  #0 pc:1372
	sw	%x1, 12(%x2)  #205 pc:1376
	addi	%x2, %x2, 16  #205 pc:1380
	jal	%x1, create_float_array.367  #205 pc:1384
	addi	%x2, %x2, -16  #205 pc:1388
	lw	%x1, 12(%x2) #205 pc:1392
	mv	%x7, %x5  #205 pc:1396
	addi	%x5, %x0, 2  #0 pc:1400
	addi	%x6, %x0, 3  #0 pc:1404
	sw	%x7, 8(%x2)  #214 pc:1408
	sw	%x1, 12(%x2)  #214 pc:1412
	addi	%x2, %x2, 16  #214 pc:1416
	jal	%x1, make.403  #214 pc:1420
	addi	%x2, %x2, -16  #214 pc:1424
	lw	%x1, 12(%x2) #214 pc:1428
	addi	%x6, %x0, 3  #0 pc:1432
	addi	%x7, %x0, 2  #0 pc:1436
	lw	%x9, 8(%x2)  #215 pc:1440
	sw	%x5, 12(%x2)  #215 pc:1444
	mv	%x5, %x6 #pc:1448
	mv	%x6, %x7 #pc:1452
	mv	%x7, %x9 #pc:1456
	sw	%x1, 20(%x2)  #215 pc:1460
	addi	%x2, %x2, 24  #215 pc:1464
	jal	%x1, make.403  #215 pc:1468
	addi	%x2, %x2, -24  #215 pc:1472
	lw	%x1, 20(%x2) #215 pc:1476
	addi	%x6, %x0, 2  #0 pc:1480
	lw	%x7, 8(%x2)  #216 pc:1484
	sw	%x5, 16(%x2)  #216 pc:1488
	mv	%x5, %x6 #pc:1492
	sw	%x1, 20(%x2)  #216 pc:1496
	addi	%x2, %x2, 24  #216 pc:1500
	jal	%x1, make.403  #216 pc:1504
	addi	%x2, %x2, -24  #216 pc:1508
	lw	%x1, 20(%x2) #216 pc:1512
	mv	%x11, %x5  #216 pc:1516
	lw	%x9, 12(%x2)  #217 pc:1520
	lw	%x5, 0(%x9)  #217 pc:1524
	mv	%f0, l.754  #0 pc:1528
	fsw	%f0, 0(%x5) #217 pc:1532
	lw	%x5, 0(%x9)  #217 pc:1536
	mv	%f0, l.758  #0 pc:1540
	fsw	%f0, 8(%x5) #217 pc:1544
	lw	%x5, 0(%x9)  #217 pc:1548
	mv	%f0, l.762  #0 pc:1552
	fsw	%f0, 16(%x5) #217 pc:1556
	lw	%x5, 4(%x9)  #218 pc:1560
	mv	%f0, l.766  #0 pc:1564
	fsw	%f0, 0(%x5) #218 pc:1568
	lw	%x5, 4(%x9)  #218 pc:1572
	mv	%f0, l.770  #0 pc:1576
	fsw	%f0, 8(%x5) #218 pc:1580
	lw	%x5, 4(%x9)  #218 pc:1584
	mv	%f0, l.774  #0 pc:1588
	fsw	%f0, 16(%x5) #218 pc:1592
	lw	%x10, 16(%x2)  #219 pc:1596
	lw	%x5, 0(%x10)  #219 pc:1600
	mv	%f0, l.778  #0 pc:1604
	fsw	%f0, 0(%x5) #219 pc:1608
	lw	%x5, 0(%x10)  #219 pc:1612
	mv	%f0, l.782  #0 pc:1616
	fsw	%f0, 8(%x5) #219 pc:1620
	lw	%x5, 4(%x10)  #220 pc:1624
	mv	%f0, l.786  #0 pc:1628
	fsw	%f0, 0(%x5) #220 pc:1632
	lw	%x5, 4(%x10)  #220 pc:1636
	mv	%f0, l.790  #0 pc:1640
	fsw	%f0, 8(%x5) #220 pc:1644
	lw	%x5, 8(%x10)  #221 pc:1648
	mv	%f0, l.794  #0 pc:1652
	fsw	%f0, 0(%x5) #221 pc:1656
	lw	%x5, 8(%x10)  #221 pc:1660
	mv	%f0, l.798  #0 pc:1664
	fsw	%f0, 8(%x5) #221 pc:1668
	addi	%x5, %x0, 2  #0 pc:1672
	addi	%x6, %x0, 3  #0 pc:1676
	sw	%x11, 20(%x2)  #222 pc:1680
	mv	%x7, %x5 #pc:1684
	sw	%x1, 28(%x2)  #222 pc:1688
	addi	%x2, %x2, 32  #222 pc:1692
	jal	%x1, mul.391  #222 pc:1696
	addi	%x2, %x2, -32  #222 pc:1700
	lw	%x1, 28(%x2) #222 pc:1704
	lw	%x5, 20(%x2)  #223 pc:1708
	lw	%x6, 0(%x5)  #223 pc:1712
	flw	%f0, 0(%x6)  #223 pc:1716
	sw	%x1, 28(%x2)  #223 pc:1720
	addi	%x2, %x2, 32  #223 pc:1724
	jal	%x1, min_caml_truncate  #223 pc:1728
	addi	%x2, %x2, -32  #223 pc:1732
	lw	%x1, 28(%x2) #223 pc:1736
	sw	%x1, 28(%x2)  #223 pc:1740
	addi	%x2, %x2, 32  #223 pc:1744
	jal	%x1, print_int.342  #223 pc:1748
	addi	%x2, %x2, -32  #223 pc:1752
	lw	%x1, 28(%x2) #223 pc:1756
	mv	%x5, %g0 #pc:1760
	sw	%x1, 28(%x2)  #224 pc:1764
	addi	%x2, %x2, 32  #224 pc:1768
	jal	%x1, min_caml_print_newline  #224 pc:1772
	addi	%x2, %x2, -32  #224 pc:1776
	lw	%x1, 28(%x2) #224 pc:1780
	lw	%x5, 20(%x2)  #225 pc:1784
	lw	%x6, 0(%x5)  #225 pc:1788
	flw	%f0, 8(%x6)  #225 pc:1792
	sw	%x1, 28(%x2)  #225 pc:1796
	addi	%x2, %x2, 32  #225 pc:1800
	jal	%x1, min_caml_truncate  #225 pc:1804
	addi	%x2, %x2, -32  #225 pc:1808
	lw	%x1, 28(%x2) #225 pc:1812
	sw	%x1, 28(%x2)  #225 pc:1816
	addi	%x2, %x2, 32  #225 pc:1820
	jal	%x1, print_int.342  #225 pc:1824
	addi	%x2, %x2, -32  #225 pc:1828
	lw	%x1, 28(%x2) #225 pc:1832
	mv	%x5, %g0 #pc:1836
	sw	%x1, 28(%x2)  #226 pc:1840
	addi	%x2, %x2, 32  #226 pc:1844
	jal	%x1, min_caml_print_newline  #226 pc:1848
	addi	%x2, %x2, -32  #226 pc:1852
	lw	%x1, 28(%x2) #226 pc:1856
	lw	%x5, 20(%x2)  #227 pc:1860
	lw	%x6, 4(%x5)  #227 pc:1864
	flw	%f0, 0(%x6)  #227 pc:1868
	sw	%x1, 28(%x2)  #227 pc:1872
	addi	%x2, %x2, 32  #227 pc:1876
	jal	%x1, min_caml_truncate  #227 pc:1880
	addi	%x2, %x2, -32  #227 pc:1884
	lw	%x1, 28(%x2) #227 pc:1888
	sw	%x1, 28(%x2)  #227 pc:1892
	addi	%x2, %x2, 32  #227 pc:1896
	jal	%x1, print_int.342  #227 pc:1900
	addi	%x2, %x2, -32  #227 pc:1904
	lw	%x1, 28(%x2) #227 pc:1908
	mv	%x5, %g0 #pc:1912
	sw	%x1, 28(%x2)  #228 pc:1916
	addi	%x2, %x2, 32  #228 pc:1920
	jal	%x1, min_caml_print_newline  #228 pc:1924
	addi	%x2, %x2, -32  #228 pc:1928
	lw	%x1, 28(%x2) #228 pc:1932
	lw	%x5, 20(%x2)  #229 pc:1936
	lw	%x5, 4(%x5)  #229 pc:1940
	flw	%f0, 8(%x5)  #229 pc:1944
	sw	%x1, 28(%x2)  #229 pc:1948
	addi	%x2, %x2, 32  #229 pc:1952
	jal	%x1, min_caml_truncate  #229 pc:1956
	addi	%x2, %x2, -32  #229 pc:1960
	lw	%x1, 28(%x2) #229 pc:1964
	sw	%x1, 28(%x2)  #229 pc:1968
	addi	%x2, %x2, 32  #229 pc:1972
	jal	%x1, print_int.342  #229 pc:1976
	addi	%x2, %x2, -32  #229 pc:1980
	lw	%x1, 28(%x2) #229 pc:1984
	mv	%x5, %g0 #pc:1988
	sw	%x1, 28(%x2)  #230 pc:1992
	addi	%x2, %x2, 32  #230 pc:1996
	jal	%x1, min_caml_print_newline  #230 pc:2000
	addi	%x2, %x2, -32  #230 pc:2004
	lw	%x1, 28(%x2) #230 pc:2008
	addi	%x2, %x2, 112
