.section	".rodata"
.align	8
l.719:	! 12.000000
l.715:	! 11.000000
l.711:	! 10.000000
l.707:	! 9.000000
l.703:	! 8.000000
l.699:	! 7.000000
l.695:	! 6.000000
l.691:	! 5.000000
l.687:	! 4.000000
l.683:	! 3.000000
l.679:	! 2.000000
l.675:	! 1.000000
l.666:	! 0.000000
.section	".text"
mul_abs.289:  #pc 0
	addi	%x31, %x0, -1  #pc 0
	beq	%x8, %x31, 12  #57 pc 4
	j	be_else.768 #pc 8
	nop #pc 12
	addi	%x6, %x9, 0  #58 pc 16
	ret #pc 20
	nop #pc 24
be_else.768: #pc 28
	addi	%x10, %x0, 1  #0 pc 28
	sll	%x10, %x10, %x8  #60 pc 32
	and	%x10, %x7, %x10  #60 pc 36
	beq	%x10, %x0, 12  #60 pc 40
	j	be_else.769 #pc 44
	nop #pc 48
	addi	%x8, %x8, -1  #61 pc 52
	j	mul_abs.289  #61 pc 56
	nop #pc 60
be_else.769: #pc 64
	addi	%x10, %x8, -1  #63 pc 64
	sll	%x8, %x6, %x8  #63 pc 68
	add	%x9, %x9, %x8  #63 pc 72
	addi	%x8, %x10, 0  #0 pc 76
	j	mul_abs.289  #63 pc 80
	nop #pc 84
mul.294:  #pc 88
	bge	%x6, %x0, 12  #67 pc 88
	j	bge_else.770 #pc 92
	nop #pc 96
	addi	%x8, %x6, 0  #67 pc 100
	j	bge_cont.771 #pc 104
	nop #pc 108
bge_else.770: #pc 112
	sub	%x8, %x0, %x6  #67 pc 112
bge_cont.771: #pc 116
	bge	%x7, %x0, 12  #68 pc 116
	j	bge_else.772 #pc 120
	nop #pc 124
	addi	%x9, %x7, 0  #68 pc 128
	j	bge_cont.773 #pc 132
	nop #pc 136
bge_else.772: #pc 140
	sub	%x9, %x0, %x7  #68 pc 140
bge_cont.773: #pc 144
	addi	%x10, %x0, 30  #0 pc 144
	addi	%x11, %x0, 0  #0 pc 148
	sw	%x7, 0(%x2)  #69 pc 152
	sw	%x6, 4(%x2)  #69 pc 156
	addi	%x7, %x9, 0  #0 pc 160
	addi	%x6, %x8, 0  #0 pc 164
	addi	%x9, %x11, 0  #0 pc 168
	addi	%x8, %x10, 0  #0 pc 172
	sw	%x1, 8(%x2)  #69 pc 176
	addi	%x2, %x2, 12  #69 pc 180
	jal	%x1, mul_abs.289  #69 pc 184
	addi	%x2, %x2, -12  #69 pc 188
	lw	%x1, 8(%x2) #69 pc 192
	lw	%x7, 4(%x2)  #70 pc 196
	srli	%x7, %x7, 31  #70 pc 200
	lw	%x8, 0(%x2)  #70 pc 204
	srli	%x8, %x8, 31  #70 pc 208
	beq	%x7, %x8, 12  #70 pc 212
	j	be_else.774 #pc 216
	nop #pc 220
	ret #pc 224
	nop #pc 228
be_else.774: #pc 232
	sub	%x6, %x0, %x6  #73 pc 232
	ret #pc 236
	nop #pc 240
div_abs.297:  #pc 244
	addi	%x31, %x0, -1  #pc 244
	beq	%x8, %x31, 12  #77 pc 248
	j	be_else.775 #pc 252
	nop #pc 256
	addi	%x6, %x9, 0  #78 pc 260
	ret #pc 264
	nop #pc 268
be_else.775: #pc 272
	srl	%x10, %x6, %x8  #80 pc 272
	bge	%x10, %x7, 12  #80 pc 276
	j	ble_else.776 #pc 280
	nop #pc 284
	sll	%x10, %x7, %x8  #81 pc 288
	sub	%x6, %x6, %x10  #81 pc 292
	addi	%x10, %x8, -1  #81 pc 296
	addi	%x11, %x0, 1  #0 pc 300
	sll	%x8, %x11, %x8  #81 pc 304
	add	%x9, %x9, %x8  #81 pc 308
	addi	%x8, %x10, 0  #0 pc 312
	j	div_abs.297  #81 pc 316
	nop #pc 320
ble_else.776: #pc 324
	addi	%x8, %x8, -1  #83 pc 324
	j	div_abs.297  #83 pc 328
	nop #pc 332
div.302:  #pc 336
	bge	%x6, %x0, 12  #87 pc 336
	j	bge_else.777 #pc 340
	nop #pc 344
	addi	%x8, %x6, 0  #87 pc 348
	j	bge_cont.778 #pc 352
	nop #pc 356
bge_else.777: #pc 360
	sub	%x8, %x0, %x6  #87 pc 360
bge_cont.778: #pc 364
	bge	%x7, %x0, 12  #88 pc 364
	j	bge_else.779 #pc 368
	nop #pc 372
	addi	%x9, %x7, 0  #88 pc 376
	j	bge_cont.780 #pc 380
	nop #pc 384
bge_else.779: #pc 388
	sub	%x9, %x0, %x7  #88 pc 388
bge_cont.780: #pc 392
	addi	%x10, %x0, 30  #0 pc 392
	addi	%x11, %x0, 0  #0 pc 396
	sw	%x7, 0(%x2)  #89 pc 400
	sw	%x6, 4(%x2)  #89 pc 404
	addi	%x7, %x9, 0  #0 pc 408
	addi	%x6, %x8, 0  #0 pc 412
	addi	%x9, %x11, 0  #0 pc 416
	addi	%x8, %x10, 0  #0 pc 420
	sw	%x1, 8(%x2)  #89 pc 424
	addi	%x2, %x2, 12  #89 pc 428
	jal	%x1, div_abs.297  #89 pc 432
	addi	%x2, %x2, -12  #89 pc 436
	lw	%x1, 8(%x2) #89 pc 440
	lw	%x7, 4(%x2)  #90 pc 444
	srli	%x7, %x7, 31  #90 pc 448
	lw	%x8, 0(%x2)  #90 pc 452
	srli	%x8, %x8, 31  #90 pc 456
	beq	%x7, %x8, 12  #90 pc 460
	j	be_else.781 #pc 464
	nop #pc 468
	ret #pc 472
	nop #pc 476
be_else.781: #pc 480
	sub	%x6, %x0, %x6  #93 pc 480
	ret #pc 484
	nop #pc 488
print_int.307:  #pc 492
	bge	%x6, %x0, 12  #100 pc 492
	j	bge_else.782 #pc 496
	nop #pc 500
	addi	%x31, %x0, 10  #pc 504
	bge	%x6, %x31, 12  #104 pc 508
	j	bge_else.783 #pc 512
	nop #pc 516
	addi	%x7, %x0, 10  #0 pc 520
	sw	%x6, 0(%x2)  #107 pc 524
	sw	%x1, 4(%x2)  #107 pc 528
	addi	%x2, %x2, 8  #107 pc 532
	jal	%x1, div.302  #107 pc 536
	addi	%x2, %x2, -8  #107 pc 540
	lw	%x1, 4(%x2) #107 pc 544
	sw	%x6, 4(%x2)  #108 pc 548
	sw	%x1, 8(%x2)  #108 pc 552
	addi	%x2, %x2, 12  #108 pc 556
	jal	%x1, print_int.307  #108 pc 560
	addi	%x2, %x2, -12  #108 pc 564
	lw	%x1, 8(%x2) #108 pc 568
	addi	%x7, %x0, 10  #0 pc 572
	lw	%x6, 4(%x2)  #109 pc 576
	sw	%x1, 8(%x2)  #109 pc 580
	addi	%x2, %x2, 12  #109 pc 584
	jal	%x1, mul.294  #109 pc 588
	addi	%x2, %x2, -12  #109 pc 592
	lw	%x1, 8(%x2) #109 pc 596
	lw	%x7, 0(%x2)  #109 pc 600
	sub	%x6, %x7, %x6  #109 pc 604
	addi	%x6, %x6, 48  #109 pc 608
	sw	%x6, 0(%x5)  #109 pc 612
	addi	%x5, %x5, 4  #109 pc 616
	ret #pc 620
	nop #pc 624
bge_else.783: #pc 628
	addi	%x6, %x6, 48  #105 pc 628
	sw	%x6, 0(%x5)  #105 pc 632
	addi	%x5, %x5, 4  #105 pc 636
	ret #pc 640
	nop #pc 644
bge_else.782: #pc 648
	addi	%x7, %x0, 45  #0 pc 648
	sw	%x7, 0(%x5)  #101 pc 652
	addi	%x5, %x5, 4  #101 pc 656
	sub	%x6, %x0, %x6  #102 pc 660
	j	print_int.307  #102 pc 664
	nop #pc 668
assign_array.313:  #pc 672
	bge	%x8, %x0, 12  #169 pc 672
	j	bge_else.786 #pc 676
	nop #pc 680
	beq	%x8, %x0, 12  #172 pc 684
	j	be_else.787 #pc 688
	nop #pc 692
	slli	%x8, %x8, 2  #173 pc 696
	add	%x31, %x8, %x6  #173 pc 700
	sw	%x7, 0(%x31)  #173 pc 704
	ret #pc 708
	nop #pc 712
be_else.787: #pc 716
	slli	%x9, %x8, 2  #175 pc 716
	add	%x31, %x9, %x6  #175 pc 720
	sw	%x7, 0(%x31)  #175 pc 724
	addi	%x8, %x8, -1  #176 pc 728
	j	assign_array.313  #176 pc 732
	nop #pc 736
bge_else.786: #pc 740
	ret #pc 740
	nop #pc 744
create_array.317:  #pc 748
	addi	%x8, %x3, 0  #180 pc 748
	addi	%x9, %x8, 0  #181 pc 752
	slli	%x10, %x6, 2  #182 pc 756
	add	%x8, %x8, %x10  #182 pc 760
	addi	%x3, %x8, 0  #182 pc 764
	addi	%x8, %x6, -1  #183 pc 768
	sw	%x9, 0(%x2)  #183 pc 772
	addi	%x6, %x9, 0  #0 pc 776
	sw	%x1, 4(%x2)  #183 pc 780
	addi	%x2, %x2, 8  #183 pc 784
	jal	%x1, assign_array.313  #183 pc 788
	addi	%x2, %x2, -8  #183 pc 792
	lw	%x1, 4(%x2) #183 pc 796
	lw	%x6, 0(%x2)  #184 pc 800
	ret #pc 804
	nop #pc 808
assign_farray.320:  #pc 812
	bge	%x7, %x0, 12  #188 pc 812
	j	bge_else.790 #pc 816
	nop #pc 820
	beq	%x7, %x0, 12  #191 pc 824
	j	be_else.791 #pc 828
	nop #pc 832
	slli	%x7, %x7, 2  #192 pc 836
	add	%x31, %x7, %x6  #192 pc 840
	fsw	%f0, 0(%x31) #192 pc 844
	ret #pc 848
	nop #pc 852
be_else.791: #pc 856
	slli	%x8, %x7, 2  #194 pc 856
	add	%x31, %x8, %x6  #194 pc 860
	fsw	%f0, 0(%x31) #194 pc 864
	addi	%x7, %x7, -1  #195 pc 868
	j	assign_farray.320  #195 pc 872
	nop #pc 876
bge_else.790: #pc 880
	ret #pc 880
	nop #pc 884
create_float_array.324:  #pc 888
	addi	%x7, %x3, 0  #199 pc 888
	addi	%x8, %x7, 0  #200 pc 892
	slli	%x9, %x6, 2  #201 pc 896
	add	%x7, %x7, %x9  #201 pc 900
	addi	%x3, %x7, 0  #201 pc 904
	addi	%x7, %x6, -1  #202 pc 908
	sw	%x8, 0(%x2)  #202 pc 912
	addi	%x6, %x8, 0  #0 pc 916
	sw	%x1, 4(%x2)  #202 pc 920
	addi	%x2, %x2, 8  #202 pc 924
	jal	%x1, assign_farray.320  #202 pc 928
	addi	%x2, %x2, -8  #202 pc 932
	lw	%x1, 4(%x2) #202 pc 936
	lw	%x6, 0(%x2)  #203 pc 940
	ret #pc 944
	nop #pc 948
loop3.469:  #pc 952
	lw	%x7, 20(%x29)  #0 pc 952
	lw	%x8, 16(%x29)  #0 pc 956
	lw	%x9, 12(%x29)  #0 pc 960
	lw	%x10, 8(%x29)  #0 pc 964
	lw	%x11, 4(%x29)  #0 pc 968
	bge	%x6, %x0, 12  #213 pc 972
	j	bge_else.794 #pc 976
	nop #pc 980
	slli	%x12, %x8, 2  #214 pc 984
	add	%x31, %x12, %x9  #214 pc 988
	lw	%x12, 0(%x31)  #214 pc 992
	slli	%x13, %x8, 2  #214 pc 996
	add	%x31, %x13, %x9  #214 pc 1000
	lw	%x9, 0(%x31)  #214 pc 1004
	slli	%x13, %x7, 2  #214 pc 1008
	add	%x31, %x13, %x9  #214 pc 1012
	flw	%f0, 0(%x31)  #214 pc 1016
	slli	%x8, %x8, 2  #214 pc 1020
	add	%x31, %x8, %x11  #214 pc 1024
	lw	%x8, 0(%x31)  #214 pc 1028
	slli	%x9, %x6, 2  #214 pc 1032
	add	%x31, %x9, %x8  #214 pc 1036
	flw	%f1, 0(%x31)  #214 pc 1040
	slli	%x8, %x6, 2  #214 pc 1044
	add	%x31, %x8, %x10  #214 pc 1048
	lw	%x8, 0(%x31)  #214 pc 1052
	slli	%x9, %x7, 2  #214 pc 1056
	add	%x31, %x9, %x8  #214 pc 1060
	flw	%f2, 0(%x31)  #214 pc 1064
	fmul	%f1, %f1, %f2  #214 pc 1068
	fadd	%f0, %f0, %f1  #214 pc 1072
	slli	%x7, %x7, 2  #214 pc 1076
	add	%x31, %x7, %x12  #214 pc 1080
	fsw	%f0, 0(%x31) #214 pc 1084
	addi	%x6, %x6, -1  #215 pc 1088
	lw	%x30, 0(%x29)  #215 pc 1092
	jalr	%x0, %x30, 0  #215 pc 1096
	nop #pc 1100
bge_else.794: #pc 1104
	ret #pc 1104
	nop #pc 1108
loop2.461:  #pc 1112
	lw	%x7, 20(%x29)  #0 pc 1112
	lw	%x8, 16(%x29)  #0 pc 1116
	lw	%x9, 12(%x29)  #0 pc 1120
	lw	%x10, 8(%x29)  #0 pc 1124
	lw	%x11, 4(%x29)  #0 pc 1128
	bge	%x6, %x0, 12  #211 pc 1132
	j	bge_else.796 #pc 1136
	nop #pc 1140
	addi	%x12, %x3, 0  #212 pc 1144
	addi	%x3, %x3, 24  #212 pc 1148
	addi	%x31, %x0, 952  #212 loop3.469 pc 1152
	addi	%x13, %x31, 0  #212 pc 1156
	sw	%x13, 0(%x12)  #212 pc 1160
	sw	%x6, 20(%x12)  #212 pc 1164
	sw	%x8, 16(%x12)  #212 pc 1168
	sw	%x9, 12(%x12)  #212 pc 1172
	sw	%x10, 8(%x12)  #212 pc 1176
	sw	%x11, 4(%x12)  #212 pc 1180
	addi	%x7, %x7, -1  #216 pc 1184
	sw	%x29, 0(%x2)  #216 pc 1188
	sw	%x6, 4(%x2)  #216 pc 1192
	addi	%x6, %x7, 0  #0 pc 1196
	addi	%x29, %x12, 0  #0 pc 1200
	sw	%x1, 8(%x2)  #216 pc 1204
	lw	%x30, 0(%x29)  #216 pc 1208
	addi	%x2, %x2, 12  #216 pc 1212
	jalr	%x1, %x30, 0  #216 pc 1216
	addi	%x2, %x2, -12  #216 pc 1220
	lw	%x1, 8(%x2)  #216 pc 1224
	lw	%x6, 4(%x2)  #217 pc 1228
	addi	%x6, %x6, -1  #217 pc 1232
	lw	%x29, 0(%x2)  #217 pc 1236
	lw	%x30, 0(%x29)  #217 pc 1240
	jalr	%x0, %x30, 0  #217 pc 1244
	nop #pc 1248
bge_else.796: #pc 1252
	ret #pc 1252
	nop #pc 1256
loop1.456:  #pc 1260
	lw	%x7, 20(%x29)  #0 pc 1260
	lw	%x8, 16(%x29)  #0 pc 1264
	lw	%x9, 12(%x29)  #0 pc 1268
	lw	%x10, 8(%x29)  #0 pc 1272
	lw	%x11, 4(%x29)  #0 pc 1276
	bge	%x6, %x0, 12  #209 pc 1280
	j	bge_else.798 #pc 1284
	nop #pc 1288
	addi	%x12, %x3, 0  #210 pc 1292
	addi	%x3, %x3, 24  #210 pc 1296
	addi	%x31, %x0, 1112  #210 loop2.461 pc 1300
	addi	%x13, %x31, 0  #210 pc 1304
	sw	%x13, 0(%x12)  #210 pc 1308
	sw	%x8, 20(%x12)  #210 pc 1312
	sw	%x6, 16(%x12)  #210 pc 1316
	sw	%x9, 12(%x12)  #210 pc 1320
	sw	%x10, 8(%x12)  #210 pc 1324
	sw	%x11, 4(%x12)  #210 pc 1328
	addi	%x7, %x7, -1  #218 pc 1332
	sw	%x29, 0(%x2)  #218 pc 1336
	sw	%x6, 4(%x2)  #218 pc 1340
	addi	%x6, %x7, 0  #0 pc 1344
	addi	%x29, %x12, 0  #0 pc 1348
	sw	%x1, 8(%x2)  #218 pc 1352
	lw	%x30, 0(%x29)  #218 pc 1356
	addi	%x2, %x2, 12  #218 pc 1360
	jalr	%x1, %x30, 0  #218 pc 1364
	addi	%x2, %x2, -12  #218 pc 1368
	lw	%x1, 8(%x2)  #218 pc 1372
	lw	%x6, 4(%x2)  #219 pc 1376
	addi	%x6, %x6, -1  #219 pc 1380
	lw	%x29, 0(%x2)  #219 pc 1384
	lw	%x30, 0(%x29)  #219 pc 1388
	jalr	%x0, %x30, 0  #219 pc 1392
	nop #pc 1396
bge_else.798: #pc 1400
	ret #pc 1400
	nop #pc 1404
mul.327:  #pc 1408
	addi	%x29, %x3, 0  #208 pc 1408
	addi	%x3, %x3, 24  #208 pc 1412
	addi	%x31, %x0, 1260  #208 loop1.456 pc 1416
	addi	%x12, %x31, 0  #208 pc 1420
	sw	%x12, 0(%x29)  #208 pc 1424
	sw	%x8, 20(%x29)  #208 pc 1428
	sw	%x7, 16(%x29)  #208 pc 1432
	sw	%x11, 12(%x29)  #208 pc 1436
	sw	%x10, 8(%x29)  #208 pc 1440
	sw	%x9, 4(%x29)  #208 pc 1444
	addi	%x6, %x6, -1  #220 pc 1448
	lw	%x30, 0(%x29)  #220 pc 1452
	jalr	%x0, %x30, 0  #220 pc 1456
	nop #pc 1460
init.443:  #pc 1464
	lw	%x7, 8(%x29)  #0 pc 1464
	lw	%x8, 4(%x29)  #0 pc 1468
	bge	%x6, %x0, 12  #225 pc 1472
	j	bge_else.800 #pc 1476
	nop #pc 1480
	fmv	%f0, l.666  #0 pc 1484
	sw	%x29, 0(%x2)  #226 pc 1488
	sw	%x8, 4(%x2)  #226 pc 1492
	sw	%x6, 8(%x2)  #226 pc 1496
	addi	%x6, %x7, 0  #0 pc 1500
	sw	%x1, 12(%x2)  #226 pc 1504
	addi	%x2, %x2, 16  #226 pc 1508
	jal	%x1, create_float_array.324  #226 pc 1512
	addi	%x2, %x2, -16  #226 pc 1516
	lw	%x1, 12(%x2) #226 pc 1520
	lw	%x7, 8(%x2)  #226 pc 1524
	slli	%x8, %x7, 2  #226 pc 1528
	lw	%x9, 4(%x2)  #226 pc 1532
	add	%x31, %x8, %x9  #226 pc 1536
	sw	%x6, 0(%x31)  #226 pc 1540
	addi	%x6, %x7, -1  #227 pc 1544
	lw	%x29, 0(%x2)  #227 pc 1548
	lw	%x30, 0(%x29)  #227 pc 1552
	jalr	%x0, %x30, 0  #227 pc 1556
	nop #pc 1560
bge_else.800: #pc 1564
	ret #pc 1564
	nop #pc 1568
make.335:  #pc 1572
	lw	%x8, 4(%x29)  #223 pc 1572
	sw	%x6, 0(%x2)  #223 pc 1576
	sw	%x7, 4(%x2)  #223 pc 1580
	addi	%x7, %x8, 0  #0 pc 1584
	sw	%x1, 8(%x2)  #223 pc 1588
	addi	%x2, %x2, 12  #223 pc 1592
	jal	%x1, create_array.317  #223 pc 1596
	addi	%x2, %x2, -12  #223 pc 1600
	lw	%x1, 8(%x2) #223 pc 1604
	addi	%x29, %x3, 0  #224 pc 1608
	addi	%x3, %x3, 12  #224 pc 1612
	addi	%x31, %x0, 1464  #224 init.443 pc 1616
	addi	%x7, %x31, 0  #224 pc 1620
	sw	%x7, 0(%x29)  #224 pc 1624
	lw	%x7, 4(%x2)  #224 pc 1628
	sw	%x7, 8(%x29)  #224 pc 1632
	sw	%x6, 4(%x29)  #224 pc 1636
	lw	%x7, 0(%x2)  #228 pc 1640
	addi	%x7, %x7, -1  #228 pc 1644
	sw	%x6, 8(%x2)  #228 pc 1648
	addi	%x6, %x7, 0  #0 pc 1652
	sw	%x1, 12(%x2)  #228 pc 1656
	lw	%x30, 0(%x29)  #228 pc 1660
	addi	%x2, %x2, 16  #228 pc 1664
	jalr	%x1, %x30, 0  #228 pc 1668
	addi	%x2, %x2, -16  #228 pc 1672
	lw	%x1, 12(%x2)  #228 pc 1676
	lw	%x6, 8(%x2)  #229 pc 1680
	ret #pc 1684
	nop #pc 1688
.global	min_caml_start
min_caml_start:
	addi	%x2, %x0, 1000000
	addi	%x3, %x0, 1002000
	addi	%x4, %x0, 8192
	addi	%x5, %x0, 65536
	addi	%x6, %x0, 0  #0 pc 1708
	fmv	%f0, l.666  #0 pc 1712
	sw	%x1, 0(%x2)  #221 pc 1716
	addi	%x2, %x2, 4  #221 pc 1720
	jal	%x1, create_float_array.324  #221 pc 1724
	addi	%x2, %x2, -4  #221 pc 1728
	lw	%x1, 0(%x2) #221 pc 1732
	addi	%x29, %x3, 0  #222 pc 1736
	addi	%x3, %x3, 8  #222 pc 1740
	addi	%x31, %x0, 1572  #222 make.335 pc 1744
	addi	%x7, %x31, 0  #222 pc 1748
	sw	%x7, 0(%x29)  #222 pc 1752
	sw	%x6, 4(%x29)  #222 pc 1756
	addi	%x6, %x0, 2  #0 pc 1760
	addi	%x7, %x0, 3  #0 pc 1764
	sw	%x29, 0(%x2)  #230 pc 1768
	sw	%x1, 4(%x2)  #230 pc 1772
	lw	%x30, 0(%x29)  #230 pc 1776
	addi	%x2, %x2, 8  #230 pc 1780
	jalr	%x1, %x30, 0  #230 pc 1784
	addi	%x2, %x2, -8  #230 pc 1788
	lw	%x1, 4(%x2)  #230 pc 1792
	addi	%x7, %x0, 3  #0 pc 1796
	addi	%x8, %x0, 2  #0 pc 1800
	lw	%x29, 0(%x2)  #231 pc 1804
	sw	%x6, 4(%x2)  #231 pc 1808
	addi	%x6, %x7, 0  #0 pc 1812
	addi	%x7, %x8, 0  #0 pc 1816
	sw	%x1, 8(%x2)  #231 pc 1820
	lw	%x30, 0(%x29)  #231 pc 1824
	addi	%x2, %x2, 12  #231 pc 1828
	jalr	%x1, %x30, 0  #231 pc 1832
	addi	%x2, %x2, -12  #231 pc 1836
	lw	%x1, 8(%x2)  #231 pc 1840
	addi	%x7, %x0, 2  #0 pc 1844
	lw	%x29, 0(%x2)  #232 pc 1848
	sw	%x6, 8(%x2)  #232 pc 1852
	addi	%x6, %x7, 0  #0 pc 1856
	sw	%x1, 12(%x2)  #232 pc 1860
	lw	%x30, 0(%x29)  #232 pc 1864
	addi	%x2, %x2, 16  #232 pc 1868
	jalr	%x1, %x30, 0  #232 pc 1872
	addi	%x2, %x2, -16  #232 pc 1876
	lw	%x1, 12(%x2)  #232 pc 1880
	addi	%x11, %x6, 0  #232 pc 1884
	lw	%x9, 4(%x2)  #233 pc 1888
	lw	%x6, 0(%x9)  #233 pc 1892
	fmv	%f0, l.675  #0 pc 1896
	fsw	%f0, 0(%x6)  #233 pc 1900
	lw	%x6, 0(%x9)  #233 pc 1904
	fmv	%f0, l.679  #0 pc 1908
	fsw	%f0, 4(%x6)  #233 pc 1912
	lw	%x6, 0(%x9)  #233 pc 1916
	fmv	%f0, l.683  #0 pc 1920
	fsw	%f0, 8(%x6)  #233 pc 1924
	lw	%x6, 4(%x9)  #234 pc 1928
	fmv	%f0, l.687  #0 pc 1932
	fsw	%f0, 0(%x6)  #234 pc 1936
	lw	%x6, 4(%x9)  #234 pc 1940
	fmv	%f0, l.691  #0 pc 1944
	fsw	%f0, 4(%x6)  #234 pc 1948
	lw	%x6, 4(%x9)  #234 pc 1952
	fmv	%f0, l.695  #0 pc 1956
	fsw	%f0, 8(%x6)  #234 pc 1960
	lw	%x10, 8(%x2)  #235 pc 1964
	lw	%x6, 0(%x10)  #235 pc 1968
	fmv	%f0, l.699  #0 pc 1972
	fsw	%f0, 0(%x6)  #235 pc 1976
	lw	%x6, 0(%x10)  #235 pc 1980
	fmv	%f0, l.703  #0 pc 1984
	fsw	%f0, 4(%x6)  #235 pc 1988
	lw	%x6, 4(%x10)  #236 pc 1992
	fmv	%f0, l.707  #0 pc 1996
	fsw	%f0, 0(%x6)  #236 pc 2000
	lw	%x6, 4(%x10)  #236 pc 2004
	fmv	%f0, l.711  #0 pc 2008
	fsw	%f0, 4(%x6)  #236 pc 2012
	lw	%x6, 8(%x10)  #237 pc 2016
	fmv	%f0, l.715  #0 pc 2020
	fsw	%f0, 0(%x6)  #237 pc 2024
	lw	%x6, 8(%x10)  #237 pc 2028
	fmv	%f0, l.719  #0 pc 2032
	fsw	%f0, 4(%x6)  #237 pc 2036
	addi	%x6, %x0, 2  #0 pc 2040
	addi	%x7, %x0, 3  #0 pc 2044
	sw	%x11, 12(%x2)  #238 pc 2048
	addi	%x8, %x6, 0  #0 pc 2052
	sw	%x1, 16(%x2)  #238 pc 2056
	addi	%x2, %x2, 20  #238 pc 2060
	jal	%x1, mul.327  #238 pc 2064
	addi	%x2, %x2, -20  #238 pc 2068
	lw	%x1, 16(%x2) #238 pc 2072
	lw	%x6, 12(%x2)  #239 pc 2076
	lw	%x7, 0(%x6)  #239 pc 2080
	flw	%f0, 0(%x7)  #239 pc 2084
	sw	%x1, 16(%x2)  #239 pc 2088
	addi	%x2, %x2, 20  #239 pc 2092
	jal	%x1, min_caml_truncate  #239 pc 2096
	addi	%x2, %x2, -20  #239 pc 2100
	lw	%x1, 16(%x2) #239 pc 2104
	sw	%x1, 16(%x2)  #239 pc 2108
	addi	%x2, %x2, 20  #239 pc 2112
	jal	%x1, print_int.307  #239 pc 2116
	addi	%x2, %x2, -20  #239 pc 2120
	lw	%x1, 16(%x2) #239 pc 2124
	sw	%x1, 16(%x2)  #240 pc 2128
	addi	%x2, %x2, 20  #240 pc 2132
	jal	%x1, min_caml_print_newline  #240 pc 2136
	addi	%x2, %x2, -20  #240 pc 2140
	lw	%x1, 16(%x2) #240 pc 2144
	lw	%x6, 12(%x2)  #241 pc 2148
	lw	%x7, 0(%x6)  #241 pc 2152
	flw	%f0, 4(%x7)  #241 pc 2156
	sw	%x1, 16(%x2)  #241 pc 2160
	addi	%x2, %x2, 20  #241 pc 2164
	jal	%x1, min_caml_truncate  #241 pc 2168
	addi	%x2, %x2, -20  #241 pc 2172
	lw	%x1, 16(%x2) #241 pc 2176
	sw	%x1, 16(%x2)  #241 pc 2180
	addi	%x2, %x2, 20  #241 pc 2184
	jal	%x1, print_int.307  #241 pc 2188
	addi	%x2, %x2, -20  #241 pc 2192
	lw	%x1, 16(%x2) #241 pc 2196
	sw	%x1, 16(%x2)  #242 pc 2200
	addi	%x2, %x2, 20  #242 pc 2204
	jal	%x1, min_caml_print_newline  #242 pc 2208
	addi	%x2, %x2, -20  #242 pc 2212
	lw	%x1, 16(%x2) #242 pc 2216
	lw	%x6, 12(%x2)  #243 pc 2220
	lw	%x7, 4(%x6)  #243 pc 2224
	flw	%f0, 0(%x7)  #243 pc 2228
	sw	%x1, 16(%x2)  #243 pc 2232
	addi	%x2, %x2, 20  #243 pc 2236
	jal	%x1, min_caml_truncate  #243 pc 2240
	addi	%x2, %x2, -20  #243 pc 2244
	lw	%x1, 16(%x2) #243 pc 2248
	sw	%x1, 16(%x2)  #243 pc 2252
	addi	%x2, %x2, 20  #243 pc 2256
	jal	%x1, print_int.307  #243 pc 2260
	addi	%x2, %x2, -20  #243 pc 2264
	lw	%x1, 16(%x2) #243 pc 2268
	sw	%x1, 16(%x2)  #244 pc 2272
	addi	%x2, %x2, 20  #244 pc 2276
	jal	%x1, min_caml_print_newline  #244 pc 2280
	addi	%x2, %x2, -20  #244 pc 2284
	lw	%x1, 16(%x2) #244 pc 2288
	lw	%x6, 12(%x2)  #245 pc 2292
	lw	%x6, 4(%x6)  #245 pc 2296
	flw	%f0, 4(%x6)  #245 pc 2300
	sw	%x1, 16(%x2)  #245 pc 2304
	addi	%x2, %x2, 20  #245 pc 2308
	jal	%x1, min_caml_truncate  #245 pc 2312
	addi	%x2, %x2, -20  #245 pc 2316
	lw	%x1, 16(%x2) #245 pc 2320
	sw	%x1, 16(%x2)  #245 pc 2324
	addi	%x2, %x2, 20  #245 pc 2328
	jal	%x1, print_int.307  #245 pc 2332
	addi	%x2, %x2, -20  #245 pc 2336
	lw	%x1, 16(%x2) #245 pc 2340
	sw	%x1, 16(%x2)  #246 pc 2344
	addi	%x2, %x2, 20  #246 pc 2348
	jal	%x1, min_caml_print_newline  #246 pc 2352
	addi	%x2, %x2, -20  #246 pc 2356
	lw	%x1, 16(%x2) #246 pc 2360
