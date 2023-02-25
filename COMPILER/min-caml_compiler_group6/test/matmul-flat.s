.section	".rodata"
.align	8
l.698:	! 12.000000
l.694:	! 11.000000
l.690:	! 10.000000
l.686:	! 9.000000
l.682:	! 8.000000
l.678:	! 7.000000
l.674:	! 6.000000
l.670:	! 5.000000
l.666:	! 4.000000
l.662:	! 3.000000
l.658:	! 2.000000
l.654:	! 1.000000
l.649:	! 0.000000
.section	".text"
	nop
	j min_caml_start
mul_abs.281:  #pc 8
	addi	%x31, %x0, -1  #pc 8
	beq	%x8, %x31, 12  #57 pc 12
	j	be_else.752 #pc 16
	nop #pc 20
	addi	%x6, %x9, 0  #58 pc 24
	ret #pc 28
	nop #pc 32
be_else.752: #pc 36
	addi	%x10, %x0, 1  #0 pc 36
	sll	%x10, %x10, %x8  #60 pc 40
	and	%x10, %x7, %x10  #60 pc 44
	beq	%x10, %x0, 12  #60 pc 48
	j	be_else.753 #pc 52
	nop #pc 56
	addi	%x8, %x8, -1  #61 pc 60
	j	mul_abs.281  #61 pc 64
	nop #pc 68
be_else.753: #pc 72
	addi	%x10, %x8, -1  #63 pc 72
	sll	%x8, %x6, %x8  #63 pc 76
	add	%x9, %x9, %x8  #63 pc 80
	addi	%x8, %x10, 0  #0 pc 84
	j	mul_abs.281  #63 pc 88
	nop #pc 92
mul.286:  #pc 96
	bge	%x6, %x0, 12  #67 pc 96
	j	bge_else.754 #pc 100
	nop #pc 104
	addi	%x8, %x6, 0  #67 pc 108
	j	bge_cont.755 #pc 112
	nop #pc 116
bge_else.754: #pc 120
	sub	%x8, %x0, %x6  #67 pc 120
bge_cont.755: #pc 124
	bge	%x7, %x0, 12  #68 pc 124
	j	bge_else.756 #pc 128
	nop #pc 132
	addi	%x9, %x7, 0  #68 pc 136
	j	bge_cont.757 #pc 140
	nop #pc 144
bge_else.756: #pc 148
	sub	%x9, %x0, %x7  #68 pc 148
bge_cont.757: #pc 152
	addi	%x10, %x0, 30  #0 pc 152
	addi	%x11, %x0, 0  #0 pc 156
	sw	%x7, 0(%x2)  #69 pc 160
	sw	%x6, 4(%x2)  #69 pc 164
	addi	%x7, %x9, 0  #0 pc 168
	addi	%x6, %x8, 0  #0 pc 172
	addi	%x9, %x11, 0  #0 pc 176
	addi	%x8, %x10, 0  #0 pc 180
	sw	%x1, 8(%x2)  #69 pc 184
	addi	%x2, %x2, 12  #69 pc 188
	jal	%x1, mul_abs.281  #69 pc 192
	addi	%x2, %x2, -12  #69 pc 196
	lw	%x1, 8(%x2) #69 pc 200
	lw	%x7, 4(%x2)  #70 pc 204
	srli	%x7, %x7, 31  #70 pc 208
	lw	%x8, 0(%x2)  #70 pc 212
	srli	%x8, %x8, 31  #70 pc 216
	beq	%x7, %x8, 12  #70 pc 220
	j	be_else.758 #pc 224
	nop #pc 228
	ret #pc 232
	nop #pc 236
be_else.758: #pc 240
	sub	%x6, %x0, %x6  #73 pc 240
	ret #pc 244
	nop #pc 248
div_abs.289:  #pc 252
	addi	%x31, %x0, -1  #pc 252
	beq	%x8, %x31, 12  #77 pc 256
	j	be_else.759 #pc 260
	nop #pc 264
	addi	%x6, %x9, 0  #78 pc 268
	ret #pc 272
	nop #pc 276
be_else.759: #pc 280
	srl	%x10, %x6, %x8  #80 pc 280
	bge	%x10, %x7, 12  #80 pc 284
	j	ble_else.760 #pc 288
	nop #pc 292
	sll	%x10, %x7, %x8  #81 pc 296
	sub	%x6, %x6, %x10  #81 pc 300
	addi	%x10, %x8, -1  #81 pc 304
	addi	%x11, %x0, 1  #0 pc 308
	sll	%x8, %x11, %x8  #81 pc 312
	add	%x9, %x9, %x8  #81 pc 316
	addi	%x8, %x10, 0  #0 pc 320
	j	div_abs.289  #81 pc 324
	nop #pc 328
ble_else.760: #pc 332
	addi	%x8, %x8, -1  #83 pc 332
	j	div_abs.289  #83 pc 336
	nop #pc 340
div.294:  #pc 344
	bge	%x6, %x0, 12  #87 pc 344
	j	bge_else.761 #pc 348
	nop #pc 352
	addi	%x8, %x6, 0  #87 pc 356
	j	bge_cont.762 #pc 360
	nop #pc 364
bge_else.761: #pc 368
	sub	%x8, %x0, %x6  #87 pc 368
bge_cont.762: #pc 372
	bge	%x7, %x0, 12  #88 pc 372
	j	bge_else.763 #pc 376
	nop #pc 380
	addi	%x9, %x7, 0  #88 pc 384
	j	bge_cont.764 #pc 388
	nop #pc 392
bge_else.763: #pc 396
	sub	%x9, %x0, %x7  #88 pc 396
bge_cont.764: #pc 400
	addi	%x10, %x0, 30  #0 pc 400
	addi	%x11, %x0, 0  #0 pc 404
	sw	%x7, 0(%x2)  #89 pc 408
	sw	%x6, 4(%x2)  #89 pc 412
	addi	%x7, %x9, 0  #0 pc 416
	addi	%x6, %x8, 0  #0 pc 420
	addi	%x9, %x11, 0  #0 pc 424
	addi	%x8, %x10, 0  #0 pc 428
	sw	%x1, 8(%x2)  #89 pc 432
	addi	%x2, %x2, 12  #89 pc 436
	jal	%x1, div_abs.289  #89 pc 440
	addi	%x2, %x2, -12  #89 pc 444
	lw	%x1, 8(%x2) #89 pc 448
	lw	%x7, 4(%x2)  #90 pc 452
	srli	%x7, %x7, 31  #90 pc 456
	lw	%x8, 0(%x2)  #90 pc 460
	srli	%x8, %x8, 31  #90 pc 464
	beq	%x7, %x8, 12  #90 pc 468
	j	be_else.765 #pc 472
	nop #pc 476
	ret #pc 480
	nop #pc 484
be_else.765: #pc 488
	sub	%x6, %x0, %x6  #93 pc 488
	ret #pc 492
	nop #pc 496
print_int.299:  #pc 500
	bge	%x6, %x0, 12  #100 pc 500
	j	bge_else.766 #pc 504
	nop #pc 508
	addi	%x31, %x0, 10  #pc 512
	bge	%x6, %x31, 12  #104 pc 516
	j	bge_else.767 #pc 520
	nop #pc 524
	addi	%x7, %x0, 10  #0 pc 528
	sw	%x6, 0(%x2)  #107 pc 532
	sw	%x1, 4(%x2)  #107 pc 536
	addi	%x2, %x2, 8  #107 pc 540
	jal	%x1, div.294  #107 pc 544
	addi	%x2, %x2, -8  #107 pc 548
	lw	%x1, 4(%x2) #107 pc 552
	sw	%x6, 4(%x2)  #108 pc 556
	sw	%x1, 8(%x2)  #108 pc 560
	addi	%x2, %x2, 12  #108 pc 564
	jal	%x1, print_int.299  #108 pc 568
	addi	%x2, %x2, -12  #108 pc 572
	lw	%x1, 8(%x2) #108 pc 576
	addi	%x7, %x0, 10  #0 pc 580
	lw	%x6, 4(%x2)  #109 pc 584
	sw	%x1, 8(%x2)  #109 pc 588
	addi	%x2, %x2, 12  #109 pc 592
	jal	%x1, mul.286  #109 pc 596
	addi	%x2, %x2, -12  #109 pc 600
	lw	%x1, 8(%x2) #109 pc 604
	lw	%x7, 0(%x2)  #109 pc 608
	sub	%x6, %x7, %x6  #109 pc 612
	addi	%x6, %x6, 48  #109 pc 616
	sw	%x6, 0(%x5)  #109 pc 620
	addi	%x5, %x5, 4  #109 pc 624
	ret #pc 628
	nop #pc 632
bge_else.767: #pc 636
	addi	%x6, %x6, 48  #105 pc 636
	sw	%x6, 0(%x5)  #105 pc 640
	addi	%x5, %x5, 4  #105 pc 644
	ret #pc 648
	nop #pc 652
bge_else.766: #pc 656
	addi	%x7, %x0, 45  #0 pc 656
	sw	%x7, 0(%x5)  #101 pc 660
	addi	%x5, %x5, 4  #101 pc 664
	sub	%x6, %x0, %x6  #102 pc 668
	j	print_int.299  #102 pc 672
	nop #pc 676
assign_array.305:  #pc 680
	bge	%x8, %x0, 12  #169 pc 680
	j	bge_else.770 #pc 684
	nop #pc 688
	beq	%x8, %x0, 12  #172 pc 692
	j	be_else.771 #pc 696
	nop #pc 700
	slli	%x8, %x8, 2  #173 pc 704
	add	%x31, %x8, %x6  #173 pc 708
	sw	%x7, 0(%x31)  #173 pc 712
	ret #pc 716
	nop #pc 720
be_else.771: #pc 724
	slli	%x9, %x8, 2  #175 pc 724
	add	%x31, %x9, %x6  #175 pc 728
	sw	%x7, 0(%x31)  #175 pc 732
	addi	%x8, %x8, -1  #176 pc 736
	j	assign_array.305  #176 pc 740
	nop #pc 744
bge_else.770: #pc 748
	ret #pc 748
	nop #pc 752
create_array.309:  #pc 756
	addi	%x8, %x3, 0  #180 pc 756
	addi	%x9, %x8, 0  #181 pc 760
	slli	%x10, %x6, 2  #182 pc 764
	add	%x8, %x8, %x10  #182 pc 768
	addi	%x3, %x8, 0  #182 pc 772
	addi	%x8, %x6, -1  #183 pc 776
	sw	%x9, 0(%x2)  #183 pc 780
	addi	%x6, %x9, 0  #0 pc 784
	sw	%x1, 4(%x2)  #183 pc 788
	addi	%x2, %x2, 8  #183 pc 792
	jal	%x1, assign_array.305  #183 pc 796
	addi	%x2, %x2, -8  #183 pc 800
	lw	%x1, 4(%x2) #183 pc 804
	lw	%x6, 0(%x2)  #184 pc 808
	ret #pc 812
	nop #pc 816
assign_farray.312:  #pc 820
	bge	%x7, %x0, 12  #188 pc 820
	j	bge_else.774 #pc 824
	nop #pc 828
	beq	%x7, %x0, 12  #191 pc 832
	j	be_else.775 #pc 836
	nop #pc 840
	slli	%x7, %x7, 2  #192 pc 844
	add	%x31, %x7, %x6  #192 pc 848
	fsw	%f0, 0(%x31) #192 pc 852
	ret #pc 856
	nop #pc 860
be_else.775: #pc 864
	slli	%x8, %x7, 2  #194 pc 864
	add	%x31, %x8, %x6  #194 pc 868
	fsw	%f0, 0(%x31) #194 pc 872
	addi	%x7, %x7, -1  #195 pc 876
	j	assign_farray.312  #195 pc 880
	nop #pc 884
bge_else.774: #pc 888
	ret #pc 888
	nop #pc 892
create_float_array.316:  #pc 896
	addi	%x7, %x3, 0  #199 pc 896
	addi	%x8, %x7, 0  #200 pc 900
	slli	%x9, %x6, 2  #201 pc 904
	add	%x7, %x7, %x9  #201 pc 908
	addi	%x3, %x7, 0  #201 pc 912
	addi	%x7, %x6, -1  #202 pc 916
	sw	%x8, 0(%x2)  #202 pc 920
	addi	%x6, %x8, 0  #0 pc 924
	sw	%x1, 4(%x2)  #202 pc 928
	addi	%x2, %x2, 8  #202 pc 932
	jal	%x1, assign_farray.312  #202 pc 936
	addi	%x2, %x2, -8  #202 pc 940
	lw	%x1, 4(%x2) #202 pc 944
	lw	%x6, 0(%x2)  #203 pc 948
	ret #pc 952
	nop #pc 956
truncate.319:  #pc 960
	ftoi	%x6, %f0  #207 pc 960
	ret #pc 964
	nop #pc 968
loop3.321:  #pc 972
	bge	%x7, %x0, 12  #212 pc 972
	j	bge_else.778 #pc 976
	nop #pc 980
	slli	%x12, %x6, 2  #213 pc 984
	add	%x31, %x12, %x11  #213 pc 988
	lw	%x12, 0(%x31)  #213 pc 992
	slli	%x13, %x6, 2  #213 pc 996
	add	%x31, %x13, %x11  #213 pc 1000
	lw	%x13, 0(%x31)  #213 pc 1004
	slli	%x14, %x8, 2  #213 pc 1008
	add	%x31, %x14, %x13  #213 pc 1012
	flw	%f0, 0(%x31)  #213 pc 1016
	slli	%x13, %x6, 2  #213 pc 1020
	add	%x31, %x13, %x9  #213 pc 1024
	lw	%x13, 0(%x31)  #213 pc 1028
	slli	%x14, %x7, 2  #213 pc 1032
	add	%x31, %x14, %x13  #213 pc 1036
	flw	%f1, 0(%x31)  #213 pc 1040
	slli	%x13, %x7, 2  #213 pc 1044
	add	%x31, %x13, %x10  #213 pc 1048
	lw	%x13, 0(%x31)  #213 pc 1052
	slli	%x14, %x8, 2  #213 pc 1056
	add	%x31, %x14, %x13  #213 pc 1060
	flw	%f2, 0(%x31)  #213 pc 1064
	fmul	%f1, %f1, %f2  #213 pc 1068
	fadd	%f0, %f0, %f1  #213 pc 1072
	slli	%x13, %x8, 2  #213 pc 1076
	add	%x31, %x13, %x12  #213 pc 1080
	fsw	%f0, 0(%x31) #213 pc 1084
	addi	%x7, %x7, -1  #214 pc 1088
	j	loop3.321  #214 pc 1092
	nop #pc 1096
bge_else.778: #pc 1100
	ret #pc 1100
	nop #pc 1104
loop2.328:  #pc 1108
	bge	%x8, %x0, 12  #216 pc 1108
	j	bge_else.780 #pc 1112
	nop #pc 1116
	addi	%x12, %x7, -1  #217 pc 1120
	sw	%x11, 0(%x2)  #217 pc 1124
	sw	%x10, 4(%x2)  #217 pc 1128
	sw	%x9, 8(%x2)  #217 pc 1132
	sw	%x7, 12(%x2)  #217 pc 1136
	sw	%x6, 16(%x2)  #217 pc 1140
	sw	%x8, 20(%x2)  #217 pc 1144
	addi	%x7, %x12, 0  #0 pc 1148
	sw	%x1, 24(%x2)  #217 pc 1152
	addi	%x2, %x2, 28  #217 pc 1156
	jal	%x1, loop3.321  #217 pc 1160
	addi	%x2, %x2, -28  #217 pc 1164
	lw	%x1, 24(%x2) #217 pc 1168
	lw	%x6, 20(%x2)  #218 pc 1172
	addi	%x8, %x6, -1  #218 pc 1176
	lw	%x6, 16(%x2)  #218 pc 1180
	lw	%x7, 12(%x2)  #218 pc 1184
	lw	%x9, 8(%x2)  #218 pc 1188
	lw	%x10, 4(%x2)  #218 pc 1192
	lw	%x11, 0(%x2)  #218 pc 1196
	j	loop2.328  #218 pc 1200
	nop #pc 1204
bge_else.780: #pc 1208
	ret #pc 1208
	nop #pc 1212
loop1.335:  #pc 1216
	bge	%x6, %x0, 12  #220 pc 1216
	j	bge_else.782 #pc 1220
	nop #pc 1224
	addi	%x12, %x8, -1  #221 pc 1228
	sw	%x11, 0(%x2)  #221 pc 1232
	sw	%x10, 4(%x2)  #221 pc 1236
	sw	%x9, 8(%x2)  #221 pc 1240
	sw	%x8, 12(%x2)  #221 pc 1244
	sw	%x7, 16(%x2)  #221 pc 1248
	sw	%x6, 20(%x2)  #221 pc 1252
	addi	%x8, %x12, 0  #0 pc 1256
	sw	%x1, 24(%x2)  #221 pc 1260
	addi	%x2, %x2, 28  #221 pc 1264
	jal	%x1, loop2.328  #221 pc 1268
	addi	%x2, %x2, -28  #221 pc 1272
	lw	%x1, 24(%x2) #221 pc 1276
	lw	%x6, 20(%x2)  #222 pc 1280
	addi	%x6, %x6, -1  #222 pc 1284
	lw	%x7, 16(%x2)  #222 pc 1288
	lw	%x8, 12(%x2)  #222 pc 1292
	lw	%x9, 8(%x2)  #222 pc 1296
	lw	%x10, 4(%x2)  #222 pc 1300
	lw	%x11, 0(%x2)  #222 pc 1304
	j	loop1.335  #222 pc 1308
	nop #pc 1312
bge_else.782: #pc 1316
	ret #pc 1316
	nop #pc 1320
mul.342:  #pc 1324
	addi	%x6, %x6, -1  #224 pc 1324
	j	loop1.335  #224 pc 1328
	nop #pc 1332
init.350:  #pc 1336
	bge	%x6, %x0, 12  #227 pc 1336
	j	bge_else.784 #pc 1340
	nop #pc 1344
	fmv	%f0, l.649  #0 pc 1348
	sw	%x7, 0(%x2)  #228 pc 1352
	sw	%x8, 4(%x2)  #228 pc 1356
	sw	%x6, 8(%x2)  #228 pc 1360
	addi	%x6, %x7, 0  #0 pc 1364
	sw	%x1, 12(%x2)  #228 pc 1368
	addi	%x2, %x2, 16  #228 pc 1372
	jal	%x1, create_float_array.316  #228 pc 1376
	addi	%x2, %x2, -16  #228 pc 1380
	lw	%x1, 12(%x2) #228 pc 1384
	lw	%x7, 8(%x2)  #228 pc 1388
	slli	%x8, %x7, 2  #228 pc 1392
	lw	%x9, 4(%x2)  #228 pc 1396
	add	%x31, %x8, %x9  #228 pc 1400
	sw	%x6, 0(%x31)  #228 pc 1404
	addi	%x6, %x7, -1  #229 pc 1408
	lw	%x7, 0(%x2)  #229 pc 1412
	addi	%x8, %x9, 0  #0 pc 1416
	j	init.350  #229 pc 1420
	nop #pc 1424
bge_else.784: #pc 1428
	ret #pc 1428
	nop #pc 1432
make.354:  #pc 1436
	sw	%x7, 0(%x2)  #231 pc 1436
	sw	%x6, 4(%x2)  #231 pc 1440
	addi	%x7, %x8, 0  #0 pc 1444
	sw	%x1, 8(%x2)  #231 pc 1448
	addi	%x2, %x2, 12  #231 pc 1452
	jal	%x1, create_array.309  #231 pc 1456
	addi	%x2, %x2, -12  #231 pc 1460
	lw	%x1, 8(%x2) #231 pc 1464
	addi	%x8, %x6, 0  #231 pc 1468
	lw	%x6, 4(%x2)  #232 pc 1472
	addi	%x6, %x6, -1  #232 pc 1476
	lw	%x7, 0(%x2)  #232 pc 1480
	sw	%x8, 8(%x2)  #232 pc 1484
	sw	%x1, 12(%x2)  #232 pc 1488
	addi	%x2, %x2, 16  #232 pc 1492
	jal	%x1, init.350  #232 pc 1496
	addi	%x2, %x2, -16  #232 pc 1500
	lw	%x1, 12(%x2) #232 pc 1504
	lw	%x6, 8(%x2)  #233 pc 1508
	ret #pc 1512
	nop #pc 1516
.global	min_caml_start
min_caml_start:
	addi	%x31, %x0, 1
	slli	%x4, %x31, 13
	slli	%x5, %x31, 16
	slli	%x2, %x31, 24
	add	%x3, %x2, %x4
	addi	%x6, %x0, 0  #0 pc 1540
	fmv	%f0, l.649  #0 pc 1544
	sw	%x1, 0(%x2)  #225 pc 1548
	addi	%x2, %x2, 4  #225 pc 1552
	jal	%x1, create_float_array.316  #225 pc 1556
	addi	%x2, %x2, -4  #225 pc 1560
	lw	%x1, 0(%x2) #225 pc 1564
	addi	%x8, %x6, 0  #225 pc 1568
	addi	%x6, %x0, 2  #0 pc 1572
	addi	%x7, %x0, 3  #0 pc 1576
	sw	%x8, 0(%x2)  #234 pc 1580
	sw	%x1, 4(%x2)  #234 pc 1584
	addi	%x2, %x2, 8  #234 pc 1588
	jal	%x1, make.354  #234 pc 1592
	addi	%x2, %x2, -8  #234 pc 1596
	lw	%x1, 4(%x2) #234 pc 1600
	addi	%x7, %x0, 3  #0 pc 1604
	addi	%x8, %x0, 2  #0 pc 1608
	lw	%x9, 0(%x2)  #235 pc 1612
	sw	%x6, 4(%x2)  #235 pc 1616
	addi	%x6, %x7, 0  #0 pc 1620
	addi	%x7, %x8, 0  #0 pc 1624
	addi	%x8, %x9, 0  #0 pc 1628
	sw	%x1, 8(%x2)  #235 pc 1632
	addi	%x2, %x2, 12  #235 pc 1636
	jal	%x1, make.354  #235 pc 1640
	addi	%x2, %x2, -12  #235 pc 1644
	lw	%x1, 8(%x2) #235 pc 1648
	addi	%x7, %x0, 2  #0 pc 1652
	lw	%x8, 0(%x2)  #236 pc 1656
	sw	%x6, 8(%x2)  #236 pc 1660
	addi	%x6, %x7, 0  #0 pc 1664
	sw	%x1, 12(%x2)  #236 pc 1668
	addi	%x2, %x2, 16  #236 pc 1672
	jal	%x1, make.354  #236 pc 1676
	addi	%x2, %x2, -16  #236 pc 1680
	lw	%x1, 12(%x2) #236 pc 1684
	addi	%x11, %x6, 0  #236 pc 1688
	lw	%x9, 4(%x2)  #237 pc 1692
	lw	%x6, 0(%x9)  #237 pc 1696
	fmv	%f0, l.654  #0 pc 1700
	fsw	%f0, 0(%x6)  #237 pc 1704
	lw	%x6, 0(%x9)  #237 pc 1708
	fmv	%f0, l.658  #0 pc 1712
	fsw	%f0, 4(%x6)  #237 pc 1716
	lw	%x6, 0(%x9)  #237 pc 1720
	fmv	%f0, l.662  #0 pc 1724
	fsw	%f0, 8(%x6)  #237 pc 1728
	lw	%x6, 4(%x9)  #238 pc 1732
	fmv	%f0, l.666  #0 pc 1736
	fsw	%f0, 0(%x6)  #238 pc 1740
	lw	%x6, 4(%x9)  #238 pc 1744
	fmv	%f0, l.670  #0 pc 1748
	fsw	%f0, 4(%x6)  #238 pc 1752
	lw	%x6, 4(%x9)  #238 pc 1756
	fmv	%f0, l.674  #0 pc 1760
	fsw	%f0, 8(%x6)  #238 pc 1764
	lw	%x10, 8(%x2)  #239 pc 1768
	lw	%x6, 0(%x10)  #239 pc 1772
	fmv	%f0, l.678  #0 pc 1776
	fsw	%f0, 0(%x6)  #239 pc 1780
	lw	%x6, 0(%x10)  #239 pc 1784
	fmv	%f0, l.682  #0 pc 1788
	fsw	%f0, 4(%x6)  #239 pc 1792
	lw	%x6, 4(%x10)  #240 pc 1796
	fmv	%f0, l.686  #0 pc 1800
	fsw	%f0, 0(%x6)  #240 pc 1804
	lw	%x6, 4(%x10)  #240 pc 1808
	fmv	%f0, l.690  #0 pc 1812
	fsw	%f0, 4(%x6)  #240 pc 1816
	lw	%x6, 8(%x10)  #241 pc 1820
	fmv	%f0, l.694  #0 pc 1824
	fsw	%f0, 0(%x6)  #241 pc 1828
	lw	%x6, 8(%x10)  #241 pc 1832
	fmv	%f0, l.698  #0 pc 1836
	fsw	%f0, 4(%x6)  #241 pc 1840
	addi	%x6, %x0, 2  #0 pc 1844
	addi	%x7, %x0, 3  #0 pc 1848
	sw	%x11, 12(%x2)  #242 pc 1852
	addi	%x8, %x6, 0  #0 pc 1856
	sw	%x1, 16(%x2)  #242 pc 1860
	addi	%x2, %x2, 20  #242 pc 1864
	jal	%x1, mul.342  #242 pc 1868
	addi	%x2, %x2, -20  #242 pc 1872
	lw	%x1, 16(%x2) #242 pc 1876
	lw	%x6, 12(%x2)  #243 pc 1880
	lw	%x7, 0(%x6)  #243 pc 1884
	flw	%f0, 0(%x7)  #243 pc 1888
	sw	%x1, 16(%x2)  #243 pc 1892
	addi	%x2, %x2, 20  #243 pc 1896
	jal	%x1, truncate.319  #243 pc 1900
	addi	%x2, %x2, -20  #243 pc 1904
	lw	%x1, 16(%x2) #243 pc 1908
	sw	%x1, 16(%x2)  #243 pc 1912
	addi	%x2, %x2, 20  #243 pc 1916
	jal	%x1, print_int.299  #243 pc 1920
	addi	%x2, %x2, -20  #243 pc 1924
	lw	%x1, 16(%x2) #243 pc 1928
	lw	%x6, 12(%x2)  #244 pc 1932
	lw	%x7, 0(%x6)  #244 pc 1936
	flw	%f0, 4(%x7)  #244 pc 1940
	sw	%x1, 16(%x2)  #244 pc 1944
	addi	%x2, %x2, 20  #244 pc 1948
	jal	%x1, truncate.319  #244 pc 1952
	addi	%x2, %x2, -20  #244 pc 1956
	lw	%x1, 16(%x2) #244 pc 1960
	sw	%x1, 16(%x2)  #244 pc 1964
	addi	%x2, %x2, 20  #244 pc 1968
	jal	%x1, print_int.299  #244 pc 1972
	addi	%x2, %x2, -20  #244 pc 1976
	lw	%x1, 16(%x2) #244 pc 1980
	lw	%x6, 12(%x2)  #245 pc 1984
	lw	%x7, 4(%x6)  #245 pc 1988
	flw	%f0, 0(%x7)  #245 pc 1992
	sw	%x1, 16(%x2)  #245 pc 1996
	addi	%x2, %x2, 20  #245 pc 2000
	jal	%x1, truncate.319  #245 pc 2004
	addi	%x2, %x2, -20  #245 pc 2008
	lw	%x1, 16(%x2) #245 pc 2012
	sw	%x1, 16(%x2)  #245 pc 2016
	addi	%x2, %x2, 20  #245 pc 2020
	jal	%x1, print_int.299  #245 pc 2024
	addi	%x2, %x2, -20  #245 pc 2028
	lw	%x1, 16(%x2) #245 pc 2032
	lw	%x6, 12(%x2)  #246 pc 2036
	lw	%x6, 4(%x6)  #246 pc 2040
	flw	%f0, 4(%x6)  #246 pc 2044
	sw	%x1, 16(%x2)  #246 pc 2048
	addi	%x2, %x2, 20  #246 pc 2052
	jal	%x1, truncate.319  #246 pc 2056
	addi	%x2, %x2, -20  #246 pc 2060
	lw	%x1, 16(%x2) #246 pc 2064
	sw	%x1, 16(%x2)  #246 pc 2068
	addi	%x2, %x2, 20  #246 pc 2072
	jal	%x1, print_int.299  #246 pc 2076
	addi	%x2, %x2, -20  #246 pc 2080
	lw	%x1, 16(%x2) #246 pc 2084
