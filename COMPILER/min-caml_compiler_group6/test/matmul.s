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
mul_abs.324:  #pc:0
	addi	%x24, %x0, -1  #pc:4
	beq	%x7, %x24, 12  #57 pc:8
	j	be_else.854 #pc:12
	nop #pc:16
	mv	%x5, %x9  #58 pc:20
	ret #pc:24
	nop #pc:28
be_else.854: #pc:28
	addi	%x10, %x0, 1  #0 pc:32
	sll	%x10, %x10, %x7  #60 pc:36
	and	%x10, %x6, %x10  #60 pc:40
	beq	%x10, %x0, 12  #60 pc:44
	j	be_else.855 #pc:48
	nop #pc:52
	addi	%x7, %x7, -1  #61 pc:56
	j	mul_abs.324  #61 pc:60
	nop #pc:64
be_else.855: #pc:64
	addi	%x10, %x7, -1  #63 pc:68
	sll	%x7, %x5, %x7  #63 pc:72
	add	%x9, %x9, %x7  #63 pc:76
	mv	%x7, %x10 #pc:80
	j	mul_abs.324  #63 pc:84
	nop #pc:88
mul.329:  #pc:88
	bge	%x5, %x0, 12  #67 pc:92
	j	bge_else.856 #pc:96
	nop #pc:100
	mv	%x7, %x5  #67 pc:104
	j	bge_cont.857 #pc:108
	nop #pc:112
bge_else.856: #pc:112
	sub	%x7, %x0, %x5  #67 pc:116
bge_cont.857: #pc:116
	bge	%x6, %x0, 12  #68 pc:120
	j	bge_else.858 #pc:124
	nop #pc:128
	mv	%x9, %x6  #68 pc:132
	j	bge_cont.859 #pc:136
	nop #pc:140
bge_else.858: #pc:140
	sub	%x9, %x0, %x6  #68 pc:144
bge_cont.859: #pc:144
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
	j	be_else.860 #pc:220
	nop #pc:224
	ret #pc:228
	nop #pc:232
be_else.860: #pc:232
	sub	%x5, %x0, %x5  #73 pc:236
	ret #pc:240
	nop #pc:244
div_abs.332:  #pc:244
	addi	%x24, %x0, -1  #pc:248
	beq	%x7, %x24, 12  #77 pc:252
	j	be_else.861 #pc:256
	nop #pc:260
	mv	%x5, %x9  #78 pc:264
	ret #pc:268
	nop #pc:272
be_else.861: #pc:272
	srl	%x10, %x5, %x7  #80 pc:276
	bge	%x10, %x6, 12  #80 pc:280
	j	ble_else.862 #pc:284
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
ble_else.862: #pc:324
	addi	%x7, %x7, -1  #83 pc:328
	j	div_abs.332  #83 pc:332
	nop #pc:336
div.337:  #pc:336
	bge	%x5, %x0, 12  #87 pc:340
	j	bge_else.863 #pc:344
	nop #pc:348
	mv	%x7, %x5  #87 pc:352
	j	bge_cont.864 #pc:356
	nop #pc:360
bge_else.863: #pc:360
	sub	%x7, %x0, %x5  #87 pc:364
bge_cont.864: #pc:364
	bge	%x6, %x0, 12  #88 pc:368
	j	bge_else.865 #pc:372
	nop #pc:376
	mv	%x9, %x6  #88 pc:380
	j	bge_cont.866 #pc:384
	nop #pc:388
bge_else.865: #pc:388
	sub	%x9, %x0, %x6  #88 pc:392
bge_cont.866: #pc:392
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
	j	be_else.867 #pc:468
	nop #pc:472
	ret #pc:476
	nop #pc:480
be_else.867: #pc:480
	sub	%x5, %x0, %x5  #93 pc:484
	ret #pc:488
	nop #pc:492
print_int.342:  #pc:492
	bge	%x5, %x0, 12  #100 pc:496
	j	bge_else.868 #pc:500
	nop #pc:504
	addi	%x24, %x0, 10  #pc:508
	bge	%x5, %x24, 12  #104 pc:512
	j	bge_else.869 #pc:516
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
bge_else.869: #pc:624
	addi	%x5, %x5, 48  #105 pc:628
	out	%x5  #105 pc:632
	ret #pc:636
	nop #pc:640
bge_else.868: #pc:640
	sub	%x5, %x0, %x5  #102 pc:644
	j	print_int.342  #102 pc:648
	nop #pc:652
assign_array.356:  #pc:652
	beq	%x7, %x0, 12  #160 pc:656
	j	be_else.872 #pc:660
	nop #pc:664
	slli	%x7, %x7, 2  #161 pc:668
	sw	%x6, %x7(%x5)  #161 pc:672
	ret #pc:676
	nop #pc:680
be_else.872: #pc:680
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
	j	be_else.874 #pc:760
	nop #pc:764
	slli	%x6, %x6, 3  #177 pc:768
	fsw	%f0, %x6(%x5) #177 pc:772
	ret #pc:776
	nop #pc:780
be_else.874: #pc:780
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
loop3.512:  #pc:852
	lw	%x6, 20(%x22)  #0 pc:856
	lw	%x7, 16(%x22)  #0 pc:860
	lw	%x9, 12(%x22)  #0 pc:864
	lw	%x10, 8(%x22)  #0 pc:868
	lw	%x11, 4(%x22)  #0 pc:872
	bge	%x5, %x0, 12  #197 pc:876
	j	bge_else.876 #pc:880
	nop #pc:884
	slli	%x12, %x7, 2  #198 pc:888
	lw	%x12, %x12(%x9)  #198 pc:892
	slli	%x13, %x7, 2  #198 pc:896
	lw	%x9, %x13(%x9)  #198 pc:900
	slli	%x13, %x6, 3  #198 pc:904
	flw	%f0, %x13(%x9)  #198 pc:908
	slli	%x7, %x7, 2  #198 pc:912
	lw	%x7, %x7(%x11)  #198 pc:916
	slli	%x9, %x5, 3  #198 pc:920
	flw	%f2, %x9(%x7)  #198 pc:924
	slli	%x7, %x5, 2  #198 pc:928
	lw	%x7, %x7(%x10)  #198 pc:932
	slli	%x9, %x6, 3  #198 pc:936
	flw	%f4, %x9(%x7)  #198 pc:940
	fmul	%f2, %f2, %f4  #198 pc:944
	fadd	%f0, %f0, %f2  #198 pc:948
	slli	%x6, %x6, 3  #198 pc:952
	fsw	%f0, %x6(%x12) #198 pc:956
	addi	%x5, %x5, -1  #199 pc:960
	lw	0(%x23), %x22  #199 pc:964
	jalr	%x0, %x23, 0  #199 pc:968
	nop #pc:972
bge_else.876: #pc:972
	ret #pc:976
	nop #pc:980
loop2.504:  #pc:980
	lw	%x6, 20(%x22)  #0 pc:984
	lw	%x7, 16(%x22)  #0 pc:988
	lw	%x9, 12(%x22)  #0 pc:992
	lw	%x10, 8(%x22)  #0 pc:996
	lw	%x11, 4(%x22)  #0 pc:1000
	bge	%x5, %x0, 12  #195 pc:1004
	j	bge_else.878 #pc:1008
	nop #pc:1012
	mv	%x12, %x3  #196 pc:1016
	addi	%x3, %x3, 24  #196 pc:1020
	addi	%x24, %x0, 852  #196 loop3.512 pc:1024
	mv	%x13, %x24  #196 pc:1028
	sw	%x13, 0(%x12)  #196 pc:1032
	sw	%x5, 20(%x12)  #196 pc:1036
	sw	%x7, 16(%x12)  #196 pc:1040
	sw	%x9, 12(%x12)  #196 pc:1044
	sw	%x10, 8(%x12)  #196 pc:1048
	sw	%x11, 4(%x12)  #196 pc:1052
	addi	%x6, %x6, -1  #200 pc:1056
	sw	%x22, 0(%x2)  #200 pc:1060
	sw	%x5, 4(%x2)  #200 pc:1064
	mv	%x5, %x6 #pc:1068
	mv	%x22, %x12 #pc:1072
	sw	%x1, 12(%x2)  #200 pc:1076
	lw	%x23, 0(%x22)  #200 pc:1080
	addi	%x2, %x2, 16  #200 pc:1084
	jalr	%x1, %x23, 0  #200 pc:1088
	addi	%x2, %x2, -16  #200 pc:1092
	lw	%x1, 12(%x2)  #200 pc:1096
	lw	%x5, 4(%x2)  #201 pc:1100
	addi	%x5, %x5, -1  #201 pc:1104
	lw	%x22, 0(%x2)  #201 pc:1108
	lw	0(%x23), %x22  #201 pc:1112
	jalr	%x0, %x23, 0  #201 pc:1116
	nop #pc:1120
bge_else.878: #pc:1120
	ret #pc:1124
	nop #pc:1128
loop1.499:  #pc:1128
	lw	%x6, 20(%x22)  #0 pc:1132
	lw	%x7, 16(%x22)  #0 pc:1136
	lw	%x9, 12(%x22)  #0 pc:1140
	lw	%x10, 8(%x22)  #0 pc:1144
	lw	%x11, 4(%x22)  #0 pc:1148
	bge	%x5, %x0, 12  #193 pc:1152
	j	bge_else.880 #pc:1156
	nop #pc:1160
	mv	%x12, %x3  #194 pc:1164
	addi	%x3, %x3, 24  #194 pc:1168
	addi	%x24, %x0, 980  #194 loop2.504 pc:1172
	mv	%x13, %x24  #194 pc:1176
	sw	%x13, 0(%x12)  #194 pc:1180
	sw	%x7, 20(%x12)  #194 pc:1184
	sw	%x5, 16(%x12)  #194 pc:1188
	sw	%x9, 12(%x12)  #194 pc:1192
	sw	%x10, 8(%x12)  #194 pc:1196
	sw	%x11, 4(%x12)  #194 pc:1200
	addi	%x6, %x6, -1  #202 pc:1204
	sw	%x22, 0(%x2)  #202 pc:1208
	sw	%x5, 4(%x2)  #202 pc:1212
	mv	%x5, %x6 #pc:1216
	mv	%x22, %x12 #pc:1220
	sw	%x1, 12(%x2)  #202 pc:1224
	lw	%x23, 0(%x22)  #202 pc:1228
	addi	%x2, %x2, 16  #202 pc:1232
	jalr	%x1, %x23, 0  #202 pc:1236
	addi	%x2, %x2, -16  #202 pc:1240
	lw	%x1, 12(%x2)  #202 pc:1244
	lw	%x5, 4(%x2)  #203 pc:1248
	addi	%x5, %x5, -1  #203 pc:1252
	lw	%x22, 0(%x2)  #203 pc:1256
	lw	0(%x23), %x22  #203 pc:1260
	jalr	%x0, %x23, 0  #203 pc:1264
	nop #pc:1268
bge_else.880: #pc:1268
	ret #pc:1272
	nop #pc:1276
mul.370:  #pc:1276
	mv	%x22, %x3  #192 pc:1280
	addi	%x3, %x3, 24  #192 pc:1284
	addi	%x24, %x0, 1128  #192 loop1.499 pc:1288
	mv	%x12, %x24  #192 pc:1292
	sw	%x12, 0(%x22)  #192 pc:1296
	sw	%x7, 20(%x22)  #192 pc:1300
	sw	%x6, 16(%x22)  #192 pc:1304
	sw	%x11, 12(%x22)  #192 pc:1308
	sw	%x10, 8(%x22)  #192 pc:1312
	sw	%x9, 4(%x22)  #192 pc:1316
	addi	%x5, %x5, -1  #204 pc:1320
	lw	0(%x23), %x22  #204 pc:1324
	jalr	%x0, %x23, 0  #204 pc:1328
	nop #pc:1332
init.486:  #pc:1332
	lw	%x6, 8(%x22)  #0 pc:1336
	lw	%x7, 4(%x22)  #0 pc:1340
	bge	%x5, %x0, 12  #209 pc:1344
	j	bge_else.882 #pc:1348
	nop #pc:1352
	mv	%f0, l.752  #0 pc:1356
	sw	%x22, 0(%x2)  #210 pc:1360
	sw	%x7, 4(%x2)  #210 pc:1364
	sw	%x5, 8(%x2)  #210 pc:1368
	mv	%x5, %x6 #pc:1372
	sw	%x1, 12(%x2)  #210 pc:1376
	addi	%x2, %x2, 16  #210 pc:1380
	jal	%x1, create_float_array.367  #210 pc:1384
	addi	%x2, %x2, -16  #210 pc:1388
	lw	%x1, 12(%x2) #210 pc:1392
	lw	%x6, 8(%x2)  #210 pc:1396
	slli	%x7, %x6, 2  #210 pc:1400
	lw	%x9, 4(%x2)  #210 pc:1404
	sw	%x5, %x7(%x9)  #210 pc:1408
	addi	%x5, %x6, -1  #211 pc:1412
	lw	%x22, 0(%x2)  #211 pc:1416
	lw	0(%x23), %x22  #211 pc:1420
	jalr	%x0, %x23, 0  #211 pc:1424
	nop #pc:1428
bge_else.882: #pc:1428
	ret #pc:1432
	nop #pc:1436
make.378:  #pc:1436
	lw	%x7, 4(%x22)  #207 pc:1440
	sw	%x5, 0(%x2)  #207 pc:1444
	sw	%x6, 4(%x2)  #207 pc:1448
	mv	%x6, %x7 #pc:1452
	sw	%x1, 12(%x2)  #207 pc:1456
	addi	%x2, %x2, 16  #207 pc:1460
	jal	%x1, create_array.360  #207 pc:1464
	addi	%x2, %x2, -16  #207 pc:1468
	lw	%x1, 12(%x2) #207 pc:1472
	mv	%x22, %x3  #208 pc:1476
	addi	%x3, %x3, 16  #208 pc:1480
	addi	%x24, %x0, 1332  #208 init.486 pc:1484
	mv	%x6, %x24  #208 pc:1488
	sw	%x6, 0(%x22)  #208 pc:1492
	lw	%x6, 4(%x2)  #208 pc:1496
	sw	%x6, 8(%x22)  #208 pc:1500
	sw	%x5, 4(%x22)  #208 pc:1504
	lw	%x6, 0(%x2)  #212 pc:1508
	addi	%x6, %x6, -1  #212 pc:1512
	sw	%x5, 8(%x2)  #212 pc:1516
	mv	%x5, %x6 #pc:1520
	sw	%x1, 12(%x2)  #212 pc:1524
	lw	%x23, 0(%x22)  #212 pc:1528
	addi	%x2, %x2, 16  #212 pc:1532
	jalr	%x1, %x23, 0  #212 pc:1536
	addi	%x2, %x2, -16  #212 pc:1540
	lw	%x1, 12(%x2)  #212 pc:1544
	lw	%x5, 8(%x2)  #213 pc:1548
	ret #pc:1552
	nop #pc:1556
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 0  #0 pc:1560
	mv	%f0, l.752  #0 pc:1564
	sw	%x1, 12(%x2)  #205 pc:1568
	addi	%x2, %x2, 16  #205 pc:1572
	jal	%x1, create_float_array.367  #205 pc:1576
	addi	%x2, %x2, -16  #205 pc:1580
	lw	%x1, 12(%x2) #205 pc:1584
	mv	%x22, %x3  #206 pc:1588
	addi	%x3, %x3, 8  #206 pc:1592
	addi	%x24, %x0, 1436  #206 make.378 pc:1596
	mv	%x6, %x24  #206 pc:1600
	sw	%x6, 0(%x22)  #206 pc:1604
	sw	%x5, 4(%x22)  #206 pc:1608
	addi	%x5, %x0, 2  #0 pc:1612
	addi	%x6, %x0, 3  #0 pc:1616
	sw	%x22, 8(%x2)  #214 pc:1620
	sw	%x1, 12(%x2)  #214 pc:1624
	lw	%x23, 0(%x22)  #214 pc:1628
	addi	%x2, %x2, 16  #214 pc:1632
	jalr	%x1, %x23, 0  #214 pc:1636
	addi	%x2, %x2, -16  #214 pc:1640
	lw	%x1, 12(%x2)  #214 pc:1644
	addi	%x6, %x0, 3  #0 pc:1648
	addi	%x7, %x0, 2  #0 pc:1652
	lw	%x22, 8(%x2)  #215 pc:1656
	sw	%x5, 12(%x2)  #215 pc:1660
	mv	%x5, %x6 #pc:1664
	mv	%x6, %x7 #pc:1668
	sw	%x1, 20(%x2)  #215 pc:1672
	lw	%x23, 0(%x22)  #215 pc:1676
	addi	%x2, %x2, 24  #215 pc:1680
	jalr	%x1, %x23, 0  #215 pc:1684
	addi	%x2, %x2, -24  #215 pc:1688
	lw	%x1, 20(%x2)  #215 pc:1692
	addi	%x6, %x0, 2  #0 pc:1696
	lw	%x22, 8(%x2)  #216 pc:1700
	sw	%x5, 16(%x2)  #216 pc:1704
	mv	%x5, %x6 #pc:1708
	sw	%x1, 20(%x2)  #216 pc:1712
	lw	%x23, 0(%x22)  #216 pc:1716
	addi	%x2, %x2, 24  #216 pc:1720
	jalr	%x1, %x23, 0  #216 pc:1724
	addi	%x2, %x2, -24  #216 pc:1728
	lw	%x1, 20(%x2)  #216 pc:1732
	mv	%x11, %x5  #216 pc:1736
	lw	%x9, 12(%x2)  #217 pc:1740
	lw	%x5, 0(%x9)  #217 pc:1744
	mv	%f0, l.761  #0 pc:1748
	fsw	%f0, 0(%x5) #217 pc:1752
	lw	%x5, 0(%x9)  #217 pc:1756
	mv	%f0, l.765  #0 pc:1760
	fsw	%f0, 8(%x5) #217 pc:1764
	lw	%x5, 0(%x9)  #217 pc:1768
	mv	%f0, l.769  #0 pc:1772
	fsw	%f0, 16(%x5) #217 pc:1776
	lw	%x5, 4(%x9)  #218 pc:1780
	mv	%f0, l.773  #0 pc:1784
	fsw	%f0, 0(%x5) #218 pc:1788
	lw	%x5, 4(%x9)  #218 pc:1792
	mv	%f0, l.777  #0 pc:1796
	fsw	%f0, 8(%x5) #218 pc:1800
	lw	%x5, 4(%x9)  #218 pc:1804
	mv	%f0, l.781  #0 pc:1808
	fsw	%f0, 16(%x5) #218 pc:1812
	lw	%x10, 16(%x2)  #219 pc:1816
	lw	%x5, 0(%x10)  #219 pc:1820
	mv	%f0, l.785  #0 pc:1824
	fsw	%f0, 0(%x5) #219 pc:1828
	lw	%x5, 0(%x10)  #219 pc:1832
	mv	%f0, l.789  #0 pc:1836
	fsw	%f0, 8(%x5) #219 pc:1840
	lw	%x5, 4(%x10)  #220 pc:1844
	mv	%f0, l.793  #0 pc:1848
	fsw	%f0, 0(%x5) #220 pc:1852
	lw	%x5, 4(%x10)  #220 pc:1856
	mv	%f0, l.797  #0 pc:1860
	fsw	%f0, 8(%x5) #220 pc:1864
	lw	%x5, 8(%x10)  #221 pc:1868
	mv	%f0, l.801  #0 pc:1872
	fsw	%f0, 0(%x5) #221 pc:1876
	lw	%x5, 8(%x10)  #221 pc:1880
	mv	%f0, l.805  #0 pc:1884
	fsw	%f0, 8(%x5) #221 pc:1888
	addi	%x5, %x0, 2  #0 pc:1892
	addi	%x6, %x0, 3  #0 pc:1896
	sw	%x11, 20(%x2)  #222 pc:1900
	mv	%x7, %x5 #pc:1904
	sw	%x1, 28(%x2)  #222 pc:1908
	addi	%x2, %x2, 32  #222 pc:1912
	jal	%x1, mul.370  #222 pc:1916
	addi	%x2, %x2, -32  #222 pc:1920
	lw	%x1, 28(%x2) #222 pc:1924
	lw	%x5, 20(%x2)  #223 pc:1928
	lw	%x6, 0(%x5)  #223 pc:1932
	flw	%f0, 0(%x6)  #223 pc:1936
	sw	%x1, 28(%x2)  #223 pc:1940
	addi	%x2, %x2, 32  #223 pc:1944
	jal	%x1, min_caml_truncate  #223 pc:1948
	addi	%x2, %x2, -32  #223 pc:1952
	lw	%x1, 28(%x2) #223 pc:1956
	sw	%x1, 28(%x2)  #223 pc:1960
	addi	%x2, %x2, 32  #223 pc:1964
	jal	%x1, print_int.342  #223 pc:1968
	addi	%x2, %x2, -32  #223 pc:1972
	lw	%x1, 28(%x2) #223 pc:1976
	mv	%x5, %g0 #pc:1980
	sw	%x1, 28(%x2)  #224 pc:1984
	addi	%x2, %x2, 32  #224 pc:1988
	jal	%x1, min_caml_print_newline  #224 pc:1992
	addi	%x2, %x2, -32  #224 pc:1996
	lw	%x1, 28(%x2) #224 pc:2000
	lw	%x5, 20(%x2)  #225 pc:2004
	lw	%x6, 0(%x5)  #225 pc:2008
	flw	%f0, 8(%x6)  #225 pc:2012
	sw	%x1, 28(%x2)  #225 pc:2016
	addi	%x2, %x2, 32  #225 pc:2020
	jal	%x1, min_caml_truncate  #225 pc:2024
	addi	%x2, %x2, -32  #225 pc:2028
	lw	%x1, 28(%x2) #225 pc:2032
	sw	%x1, 28(%x2)  #225 pc:2036
	addi	%x2, %x2, 32  #225 pc:2040
	jal	%x1, print_int.342  #225 pc:2044
	addi	%x2, %x2, -32  #225 pc:2048
	lw	%x1, 28(%x2) #225 pc:2052
	mv	%x5, %g0 #pc:2056
	sw	%x1, 28(%x2)  #226 pc:2060
	addi	%x2, %x2, 32  #226 pc:2064
	jal	%x1, min_caml_print_newline  #226 pc:2068
	addi	%x2, %x2, -32  #226 pc:2072
	lw	%x1, 28(%x2) #226 pc:2076
	lw	%x5, 20(%x2)  #227 pc:2080
	lw	%x6, 4(%x5)  #227 pc:2084
	flw	%f0, 0(%x6)  #227 pc:2088
	sw	%x1, 28(%x2)  #227 pc:2092
	addi	%x2, %x2, 32  #227 pc:2096
	jal	%x1, min_caml_truncate  #227 pc:2100
	addi	%x2, %x2, -32  #227 pc:2104
	lw	%x1, 28(%x2) #227 pc:2108
	sw	%x1, 28(%x2)  #227 pc:2112
	addi	%x2, %x2, 32  #227 pc:2116
	jal	%x1, print_int.342  #227 pc:2120
	addi	%x2, %x2, -32  #227 pc:2124
	lw	%x1, 28(%x2) #227 pc:2128
	mv	%x5, %g0 #pc:2132
	sw	%x1, 28(%x2)  #228 pc:2136
	addi	%x2, %x2, 32  #228 pc:2140
	jal	%x1, min_caml_print_newline  #228 pc:2144
	addi	%x2, %x2, -32  #228 pc:2148
	lw	%x1, 28(%x2) #228 pc:2152
	lw	%x5, 20(%x2)  #229 pc:2156
	lw	%x5, 4(%x5)  #229 pc:2160
	flw	%f0, 8(%x5)  #229 pc:2164
	sw	%x1, 28(%x2)  #229 pc:2168
	addi	%x2, %x2, 32  #229 pc:2172
	jal	%x1, min_caml_truncate  #229 pc:2176
	addi	%x2, %x2, -32  #229 pc:2180
	lw	%x1, 28(%x2) #229 pc:2184
	sw	%x1, 28(%x2)  #229 pc:2188
	addi	%x2, %x2, 32  #229 pc:2192
	jal	%x1, print_int.342  #229 pc:2196
	addi	%x2, %x2, -32  #229 pc:2200
	lw	%x1, 28(%x2) #229 pc:2204
	mv	%x5, %g0 #pc:2208
	sw	%x1, 28(%x2)  #230 pc:2212
	addi	%x2, %x2, 32  #230 pc:2216
	jal	%x1, min_caml_print_newline  #230 pc:2220
	addi	%x2, %x2, -32  #230 pc:2224
	lw	%x1, 28(%x2) #230 pc:2228
	addi	%x2, %x2, 112
