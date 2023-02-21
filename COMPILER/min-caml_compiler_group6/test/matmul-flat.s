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
mul_abs.281:  #pc 0
	addi	%x31, %x0, -1  #pc 0
	beq	%x8, %x31, 12  #57 pc 4
	j	be_else.752 #pc 8
	nop #pc 12
	addi	%x6, %x9, 0  #58 pc 16
	ret #pc 20
	nop #pc 24
be_else.752: #pc 28
	addi	%x10, %x0, 1  #0 pc 28
	sll	%x10, %x10, %x8  #60 pc 32
	and	%x10, %x7, %x10  #60 pc 36
	beq	%x10, %x0, 12  #60 pc 40
	j	be_else.753 #pc 44
	nop #pc 48
	addi	%x8, %x8, -1  #61 pc 52
	j	mul_abs.281  #61 pc 56
	nop #pc 60
be_else.753: #pc 64
	addi	%x10, %x8, -1  #63 pc 64
	sll	%x8, %x6, %x8  #63 pc 68
	add	%x9, %x9, %x8  #63 pc 72
	addi	%x8, %x10, 0  #0 pc 76
	j	mul_abs.281  #63 pc 80
	nop #pc 84
mul.286:  #pc 88
	bge	%x6, %x0, 12  #67 pc 88
	j	bge_else.754 #pc 92
	nop #pc 96
	addi	%x8, %x6, 0  #67 pc 100
	j	bge_cont.755 #pc 104
	nop #pc 108
bge_else.754: #pc 112
	sub	%x8, %x0, %x6  #67 pc 112
bge_cont.755: #pc 116
	bge	%x7, %x0, 12  #68 pc 116
	j	bge_else.756 #pc 120
	nop #pc 124
	addi	%x9, %x7, 0  #68 pc 128
	j	bge_cont.757 #pc 132
	nop #pc 136
bge_else.756: #pc 140
	sub	%x9, %x0, %x7  #68 pc 140
bge_cont.757: #pc 144
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
	jal	%x1, mul_abs.281  #69 pc 184
	addi	%x2, %x2, -12  #69 pc 188
	lw	%x1, 8(%x2) #69 pc 192
	lw	%x7, 4(%x2)  #70 pc 196
	srli	%x7, %x7, 31  #70 pc 200
	lw	%x8, 0(%x2)  #70 pc 204
	srli	%x8, %x8, 31  #70 pc 208
	beq	%x7, %x8, 12  #70 pc 212
	j	be_else.758 #pc 216
	nop #pc 220
	ret #pc 224
	nop #pc 228
be_else.758: #pc 232
	sub	%x6, %x0, %x6  #73 pc 232
	ret #pc 236
	nop #pc 240
div_abs.289:  #pc 244
	addi	%x31, %x0, -1  #pc 244
	beq	%x8, %x31, 12  #77 pc 248
	j	be_else.759 #pc 252
	nop #pc 256
	addi	%x6, %x9, 0  #78 pc 260
	ret #pc 264
	nop #pc 268
be_else.759: #pc 272
	srl	%x10, %x6, %x8  #80 pc 272
	bge	%x10, %x7, 12  #80 pc 276
	j	ble_else.760 #pc 280
	nop #pc 284
	sll	%x10, %x7, %x8  #81 pc 288
	sub	%x6, %x6, %x10  #81 pc 292
	addi	%x10, %x8, -1  #81 pc 296
	addi	%x11, %x0, 1  #0 pc 300
	sll	%x8, %x11, %x8  #81 pc 304
	add	%x9, %x9, %x8  #81 pc 308
	addi	%x8, %x10, 0  #0 pc 312
	j	div_abs.289  #81 pc 316
	nop #pc 320
ble_else.760: #pc 324
	addi	%x8, %x8, -1  #83 pc 324
	j	div_abs.289  #83 pc 328
	nop #pc 332
div.294:  #pc 336
	bge	%x6, %x0, 12  #87 pc 336
	j	bge_else.761 #pc 340
	nop #pc 344
	addi	%x8, %x6, 0  #87 pc 348
	j	bge_cont.762 #pc 352
	nop #pc 356
bge_else.761: #pc 360
	sub	%x8, %x0, %x6  #87 pc 360
bge_cont.762: #pc 364
	bge	%x7, %x0, 12  #88 pc 364
	j	bge_else.763 #pc 368
	nop #pc 372
	addi	%x9, %x7, 0  #88 pc 376
	j	bge_cont.764 #pc 380
	nop #pc 384
bge_else.763: #pc 388
	sub	%x9, %x0, %x7  #88 pc 388
bge_cont.764: #pc 392
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
	jal	%x1, div_abs.289  #89 pc 432
	addi	%x2, %x2, -12  #89 pc 436
	lw	%x1, 8(%x2) #89 pc 440
	lw	%x7, 4(%x2)  #90 pc 444
	srli	%x7, %x7, 31  #90 pc 448
	lw	%x8, 0(%x2)  #90 pc 452
	srli	%x8, %x8, 31  #90 pc 456
	beq	%x7, %x8, 12  #90 pc 460
	j	be_else.765 #pc 464
	nop #pc 468
	ret #pc 472
	nop #pc 476
be_else.765: #pc 480
	sub	%x6, %x0, %x6  #93 pc 480
	ret #pc 484
	nop #pc 488
print_int.299:  #pc 492
	bge	%x6, %x0, 12  #100 pc 492
	j	bge_else.766 #pc 496
	nop #pc 500
	addi	%x31, %x0, 10  #pc 504
	bge	%x6, %x31, 12  #104 pc 508
	j	bge_else.767 #pc 512
	nop #pc 516
	addi	%x7, %x0, 10  #0 pc 520
	sw	%x6, 0(%x2)  #107 pc 524
	sw	%x1, 4(%x2)  #107 pc 528
	addi	%x2, %x2, 8  #107 pc 532
	jal	%x1, div.294  #107 pc 536
	addi	%x2, %x2, -8  #107 pc 540
	lw	%x1, 4(%x2) #107 pc 544
	sw	%x6, 4(%x2)  #108 pc 548
	sw	%x1, 8(%x2)  #108 pc 552
	addi	%x2, %x2, 12  #108 pc 556
	jal	%x1, print_int.299  #108 pc 560
	addi	%x2, %x2, -12  #108 pc 564
	lw	%x1, 8(%x2) #108 pc 568
	addi	%x7, %x0, 10  #0 pc 572
	lw	%x6, 4(%x2)  #109 pc 576
	sw	%x1, 8(%x2)  #109 pc 580
	addi	%x2, %x2, 12  #109 pc 584
	jal	%x1, mul.286  #109 pc 588
	addi	%x2, %x2, -12  #109 pc 592
	lw	%x1, 8(%x2) #109 pc 596
	lw	%x7, 0(%x2)  #109 pc 600
	sub	%x6, %x7, %x6  #109 pc 604
	addi	%x6, %x6, 48  #109 pc 608
	sw	%x6, 0(%x5)  #109 pc 612
	addi	%x5, %x5, 4  #109 pc 616
	ret #pc 620
	nop #pc 624
bge_else.767: #pc 628
	addi	%x6, %x6, 48  #105 pc 628
	sw	%x6, 0(%x5)  #105 pc 632
	addi	%x5, %x5, 4  #105 pc 636
	ret #pc 640
	nop #pc 644
bge_else.766: #pc 648
	addi	%x7, %x0, 45  #0 pc 648
	sw	%x7, 0(%x5)  #101 pc 652
	addi	%x5, %x5, 4  #101 pc 656
	sub	%x6, %x0, %x6  #102 pc 660
	j	print_int.299  #102 pc 664
	nop #pc 668
assign_array.305:  #pc 672
	bge	%x8, %x0, 12  #169 pc 672
	j	bge_else.770 #pc 676
	nop #pc 680
	beq	%x8, %x0, 12  #172 pc 684
	j	be_else.771 #pc 688
	nop #pc 692
	slli	%x8, %x8, 2  #173 pc 696
	add	%x31, %x8, %x6  #173 pc 700
	sw	%x7, 0(%x31)  #173 pc 704
	ret #pc 708
	nop #pc 712
be_else.771: #pc 716
	slli	%x9, %x8, 2  #175 pc 716
	add	%x31, %x9, %x6  #175 pc 720
	sw	%x7, 0(%x31)  #175 pc 724
	addi	%x8, %x8, -1  #176 pc 728
	j	assign_array.305  #176 pc 732
	nop #pc 736
bge_else.770: #pc 740
	ret #pc 740
	nop #pc 744
create_array.309:  #pc 748
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
	jal	%x1, assign_array.305  #183 pc 788
	addi	%x2, %x2, -8  #183 pc 792
	lw	%x1, 4(%x2) #183 pc 796
	lw	%x6, 0(%x2)  #184 pc 800
	ret #pc 804
	nop #pc 808
assign_farray.312:  #pc 812
	bge	%x7, %x0, 12  #188 pc 812
	j	bge_else.774 #pc 816
	nop #pc 820
	beq	%x7, %x0, 12  #191 pc 824
	j	be_else.775 #pc 828
	nop #pc 832
	slli	%x7, %x7, 2  #192 pc 836
	add	%x31, %x7, %x6  #192 pc 840
	fsw	%f0, 0(%x31) #192 pc 844
	ret #pc 848
	nop #pc 852
be_else.775: #pc 856
	slli	%x8, %x7, 2  #194 pc 856
	add	%x31, %x8, %x6  #194 pc 860
	fsw	%f0, 0(%x31) #194 pc 864
	addi	%x7, %x7, -1  #195 pc 868
	j	assign_farray.312  #195 pc 872
	nop #pc 876
bge_else.774: #pc 880
	ret #pc 880
	nop #pc 884
create_float_array.316:  #pc 888
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
	jal	%x1, assign_farray.312  #202 pc 928
	addi	%x2, %x2, -8  #202 pc 932
	lw	%x1, 4(%x2) #202 pc 936
	lw	%x6, 0(%x2)  #203 pc 940
	ret #pc 944
	nop #pc 948
truncate.319:  #pc 952
	ftoi	%x6, %f0  #207 pc 952
	ret #pc 956
	nop #pc 960
loop3.321:  #pc 964
	bge	%x7, %x0, 12  #212 pc 964
	j	bge_else.778 #pc 968
	nop #pc 972
	slli	%x12, %x6, 2  #213 pc 976
	add	%x31, %x12, %x11  #213 pc 980
	lw	%x12, 0(%x31)  #213 pc 984
	slli	%x13, %x6, 2  #213 pc 988
	add	%x31, %x13, %x11  #213 pc 992
	lw	%x13, 0(%x31)  #213 pc 996
	slli	%x14, %x8, 2  #213 pc 1000
	add	%x31, %x14, %x13  #213 pc 1004
	flw	%f0, 0(%x31)  #213 pc 1008
	slli	%x13, %x6, 2  #213 pc 1012
	add	%x31, %x13, %x9  #213 pc 1016
	lw	%x13, 0(%x31)  #213 pc 1020
	slli	%x14, %x7, 2  #213 pc 1024
	add	%x31, %x14, %x13  #213 pc 1028
	flw	%f1, 0(%x31)  #213 pc 1032
	slli	%x13, %x7, 2  #213 pc 1036
	add	%x31, %x13, %x10  #213 pc 1040
	lw	%x13, 0(%x31)  #213 pc 1044
	slli	%x14, %x8, 2  #213 pc 1048
	add	%x31, %x14, %x13  #213 pc 1052
	flw	%f2, 0(%x31)  #213 pc 1056
	fmul	%f1, %f1, %f2  #213 pc 1060
	fadd	%f0, %f0, %f1  #213 pc 1064
	slli	%x13, %x8, 2  #213 pc 1068
	add	%x31, %x13, %x12  #213 pc 1072
	fsw	%f0, 0(%x31) #213 pc 1076
	addi	%x7, %x7, -1  #214 pc 1080
	j	loop3.321  #214 pc 1084
	nop #pc 1088
bge_else.778: #pc 1092
	ret #pc 1092
	nop #pc 1096
loop2.328:  #pc 1100
	bge	%x8, %x0, 12  #216 pc 1100
	j	bge_else.780 #pc 1104
	nop #pc 1108
	addi	%x12, %x7, -1  #217 pc 1112
	sw	%x11, 0(%x2)  #217 pc 1116
	sw	%x10, 4(%x2)  #217 pc 1120
	sw	%x9, 8(%x2)  #217 pc 1124
	sw	%x7, 12(%x2)  #217 pc 1128
	sw	%x6, 16(%x2)  #217 pc 1132
	sw	%x8, 20(%x2)  #217 pc 1136
	addi	%x7, %x12, 0  #0 pc 1140
	sw	%x1, 24(%x2)  #217 pc 1144
	addi	%x2, %x2, 28  #217 pc 1148
	jal	%x1, loop3.321  #217 pc 1152
	addi	%x2, %x2, -28  #217 pc 1156
	lw	%x1, 24(%x2) #217 pc 1160
	lw	%x6, 20(%x2)  #218 pc 1164
	addi	%x8, %x6, -1  #218 pc 1168
	lw	%x6, 16(%x2)  #218 pc 1172
	lw	%x7, 12(%x2)  #218 pc 1176
	lw	%x9, 8(%x2)  #218 pc 1180
	lw	%x10, 4(%x2)  #218 pc 1184
	lw	%x11, 0(%x2)  #218 pc 1188
	j	loop2.328  #218 pc 1192
	nop #pc 1196
bge_else.780: #pc 1200
	ret #pc 1200
	nop #pc 1204
loop1.335:  #pc 1208
	bge	%x6, %x0, 12  #220 pc 1208
	j	bge_else.782 #pc 1212
	nop #pc 1216
	addi	%x12, %x8, -1  #221 pc 1220
	sw	%x11, 0(%x2)  #221 pc 1224
	sw	%x10, 4(%x2)  #221 pc 1228
	sw	%x9, 8(%x2)  #221 pc 1232
	sw	%x8, 12(%x2)  #221 pc 1236
	sw	%x7, 16(%x2)  #221 pc 1240
	sw	%x6, 20(%x2)  #221 pc 1244
	addi	%x8, %x12, 0  #0 pc 1248
	sw	%x1, 24(%x2)  #221 pc 1252
	addi	%x2, %x2, 28  #221 pc 1256
	jal	%x1, loop2.328  #221 pc 1260
	addi	%x2, %x2, -28  #221 pc 1264
	lw	%x1, 24(%x2) #221 pc 1268
	lw	%x6, 20(%x2)  #222 pc 1272
	addi	%x6, %x6, -1  #222 pc 1276
	lw	%x7, 16(%x2)  #222 pc 1280
	lw	%x8, 12(%x2)  #222 pc 1284
	lw	%x9, 8(%x2)  #222 pc 1288
	lw	%x10, 4(%x2)  #222 pc 1292
	lw	%x11, 0(%x2)  #222 pc 1296
	j	loop1.335  #222 pc 1300
	nop #pc 1304
bge_else.782: #pc 1308
	ret #pc 1308
	nop #pc 1312
mul.342:  #pc 1316
	addi	%x6, %x6, -1  #224 pc 1316
	j	loop1.335  #224 pc 1320
	nop #pc 1324
init.350:  #pc 1328
	bge	%x6, %x0, 12  #227 pc 1328
	j	bge_else.784 #pc 1332
	nop #pc 1336
	fmv	%f0, l.649  #0 pc 1340
	sw	%x7, 0(%x2)  #228 pc 1344
	sw	%x8, 4(%x2)  #228 pc 1348
	sw	%x6, 8(%x2)  #228 pc 1352
	addi	%x6, %x7, 0  #0 pc 1356
	sw	%x1, 12(%x2)  #228 pc 1360
	addi	%x2, %x2, 16  #228 pc 1364
	jal	%x1, create_float_array.316  #228 pc 1368
	addi	%x2, %x2, -16  #228 pc 1372
	lw	%x1, 12(%x2) #228 pc 1376
	lw	%x7, 8(%x2)  #228 pc 1380
	slli	%x8, %x7, 2  #228 pc 1384
	lw	%x9, 4(%x2)  #228 pc 1388
	add	%x31, %x8, %x9  #228 pc 1392
	sw	%x6, 0(%x31)  #228 pc 1396
	addi	%x6, %x7, -1  #229 pc 1400
	lw	%x7, 0(%x2)  #229 pc 1404
	addi	%x8, %x9, 0  #0 pc 1408
	j	init.350  #229 pc 1412
	nop #pc 1416
bge_else.784: #pc 1420
	ret #pc 1420
	nop #pc 1424
make.354:  #pc 1428
	sw	%x7, 0(%x2)  #231 pc 1428
	sw	%x6, 4(%x2)  #231 pc 1432
	addi	%x7, %x8, 0  #0 pc 1436
	sw	%x1, 8(%x2)  #231 pc 1440
	addi	%x2, %x2, 12  #231 pc 1444
	jal	%x1, create_array.309  #231 pc 1448
	addi	%x2, %x2, -12  #231 pc 1452
	lw	%x1, 8(%x2) #231 pc 1456
	addi	%x8, %x6, 0  #231 pc 1460
	lw	%x6, 4(%x2)  #232 pc 1464
	addi	%x6, %x6, -1  #232 pc 1468
	lw	%x7, 0(%x2)  #232 pc 1472
	sw	%x8, 8(%x2)  #232 pc 1476
	sw	%x1, 12(%x2)  #232 pc 1480
	addi	%x2, %x2, 16  #232 pc 1484
	jal	%x1, init.350  #232 pc 1488
	addi	%x2, %x2, -16  #232 pc 1492
	lw	%x1, 12(%x2) #232 pc 1496
	lw	%x6, 8(%x2)  #233 pc 1500
	ret #pc 1504
	nop #pc 1508
.global	min_caml_start
min_caml_start:
	addi	%x31, %x0, 1
	slli	%x4, %x31, 13
	slli	%x5, %x31, 16
	slli	%x2, %x31, 24
	add	%x3, %x2, %x4
	addi	%x6, %x0, 0  #0 pc 1532
	fmv	%f0, l.649  #0 pc 1536
	sw	%x1, 0(%x2)  #225 pc 1540
	addi	%x2, %x2, 4  #225 pc 1544
	jal	%x1, create_float_array.316  #225 pc 1548
	addi	%x2, %x2, -4  #225 pc 1552
	lw	%x1, 0(%x2) #225 pc 1556
	addi	%x8, %x6, 0  #225 pc 1560
	addi	%x6, %x0, 2  #0 pc 1564
	addi	%x7, %x0, 3  #0 pc 1568
	sw	%x8, 0(%x2)  #234 pc 1572
	sw	%x1, 4(%x2)  #234 pc 1576
	addi	%x2, %x2, 8  #234 pc 1580
	jal	%x1, make.354  #234 pc 1584
	addi	%x2, %x2, -8  #234 pc 1588
	lw	%x1, 4(%x2) #234 pc 1592
	addi	%x7, %x0, 3  #0 pc 1596
	addi	%x8, %x0, 2  #0 pc 1600
	lw	%x9, 0(%x2)  #235 pc 1604
	sw	%x6, 4(%x2)  #235 pc 1608
	addi	%x6, %x7, 0  #0 pc 1612
	addi	%x7, %x8, 0  #0 pc 1616
	addi	%x8, %x9, 0  #0 pc 1620
	sw	%x1, 8(%x2)  #235 pc 1624
	addi	%x2, %x2, 12  #235 pc 1628
	jal	%x1, make.354  #235 pc 1632
	addi	%x2, %x2, -12  #235 pc 1636
	lw	%x1, 8(%x2) #235 pc 1640
	addi	%x7, %x0, 2  #0 pc 1644
	lw	%x8, 0(%x2)  #236 pc 1648
	sw	%x6, 8(%x2)  #236 pc 1652
	addi	%x6, %x7, 0  #0 pc 1656
	sw	%x1, 12(%x2)  #236 pc 1660
	addi	%x2, %x2, 16  #236 pc 1664
	jal	%x1, make.354  #236 pc 1668
	addi	%x2, %x2, -16  #236 pc 1672
	lw	%x1, 12(%x2) #236 pc 1676
	addi	%x11, %x6, 0  #236 pc 1680
	lw	%x9, 4(%x2)  #237 pc 1684
	lw	%x6, 0(%x9)  #237 pc 1688
	fmv	%f0, l.654  #0 pc 1692
	fsw	%f0, 0(%x6)  #237 pc 1696
	lw	%x6, 0(%x9)  #237 pc 1700
	fmv	%f0, l.658  #0 pc 1704
	fsw	%f0, 4(%x6)  #237 pc 1708
	lw	%x6, 0(%x9)  #237 pc 1712
	fmv	%f0, l.662  #0 pc 1716
	fsw	%f0, 8(%x6)  #237 pc 1720
	lw	%x6, 4(%x9)  #238 pc 1724
	fmv	%f0, l.666  #0 pc 1728
	fsw	%f0, 0(%x6)  #238 pc 1732
	lw	%x6, 4(%x9)  #238 pc 1736
	fmv	%f0, l.670  #0 pc 1740
	fsw	%f0, 4(%x6)  #238 pc 1744
	lw	%x6, 4(%x9)  #238 pc 1748
	fmv	%f0, l.674  #0 pc 1752
	fsw	%f0, 8(%x6)  #238 pc 1756
	lw	%x10, 8(%x2)  #239 pc 1760
	lw	%x6, 0(%x10)  #239 pc 1764
	fmv	%f0, l.678  #0 pc 1768
	fsw	%f0, 0(%x6)  #239 pc 1772
	lw	%x6, 0(%x10)  #239 pc 1776
	fmv	%f0, l.682  #0 pc 1780
	fsw	%f0, 4(%x6)  #239 pc 1784
	lw	%x6, 4(%x10)  #240 pc 1788
	fmv	%f0, l.686  #0 pc 1792
	fsw	%f0, 0(%x6)  #240 pc 1796
	lw	%x6, 4(%x10)  #240 pc 1800
	fmv	%f0, l.690  #0 pc 1804
	fsw	%f0, 4(%x6)  #240 pc 1808
	lw	%x6, 8(%x10)  #241 pc 1812
	fmv	%f0, l.694  #0 pc 1816
	fsw	%f0, 0(%x6)  #241 pc 1820
	lw	%x6, 8(%x10)  #241 pc 1824
	fmv	%f0, l.698  #0 pc 1828
	fsw	%f0, 4(%x6)  #241 pc 1832
	addi	%x6, %x0, 2  #0 pc 1836
	addi	%x7, %x0, 3  #0 pc 1840
	sw	%x11, 12(%x2)  #242 pc 1844
	addi	%x8, %x6, 0  #0 pc 1848
	sw	%x1, 16(%x2)  #242 pc 1852
	addi	%x2, %x2, 20  #242 pc 1856
	jal	%x1, mul.342  #242 pc 1860
	addi	%x2, %x2, -20  #242 pc 1864
	lw	%x1, 16(%x2) #242 pc 1868
	lw	%x6, 12(%x2)  #243 pc 1872
	lw	%x7, 0(%x6)  #243 pc 1876
	flw	%f0, 0(%x7)  #243 pc 1880
	sw	%x1, 16(%x2)  #243 pc 1884
	addi	%x2, %x2, 20  #243 pc 1888
	jal	%x1, truncate.319  #243 pc 1892
	addi	%x2, %x2, -20  #243 pc 1896
	lw	%x1, 16(%x2) #243 pc 1900
	sw	%x1, 16(%x2)  #243 pc 1904
	addi	%x2, %x2, 20  #243 pc 1908
	jal	%x1, print_int.299  #243 pc 1912
	addi	%x2, %x2, -20  #243 pc 1916
	lw	%x1, 16(%x2) #243 pc 1920
	lw	%x6, 12(%x2)  #244 pc 1924
	lw	%x7, 0(%x6)  #244 pc 1928
	flw	%f0, 4(%x7)  #244 pc 1932
	sw	%x1, 16(%x2)  #244 pc 1936
	addi	%x2, %x2, 20  #244 pc 1940
	jal	%x1, truncate.319  #244 pc 1944
	addi	%x2, %x2, -20  #244 pc 1948
	lw	%x1, 16(%x2) #244 pc 1952
	sw	%x1, 16(%x2)  #244 pc 1956
	addi	%x2, %x2, 20  #244 pc 1960
	jal	%x1, print_int.299  #244 pc 1964
	addi	%x2, %x2, -20  #244 pc 1968
	lw	%x1, 16(%x2) #244 pc 1972
	lw	%x6, 12(%x2)  #245 pc 1976
	lw	%x7, 4(%x6)  #245 pc 1980
	flw	%f0, 0(%x7)  #245 pc 1984
	sw	%x1, 16(%x2)  #245 pc 1988
	addi	%x2, %x2, 20  #245 pc 1992
	jal	%x1, truncate.319  #245 pc 1996
	addi	%x2, %x2, -20  #245 pc 2000
	lw	%x1, 16(%x2) #245 pc 2004
	sw	%x1, 16(%x2)  #245 pc 2008
	addi	%x2, %x2, 20  #245 pc 2012
	jal	%x1, print_int.299  #245 pc 2016
	addi	%x2, %x2, -20  #245 pc 2020
	lw	%x1, 16(%x2) #245 pc 2024
	lw	%x6, 12(%x2)  #246 pc 2028
	lw	%x6, 4(%x6)  #246 pc 2032
	flw	%f0, 4(%x6)  #246 pc 2036
	sw	%x1, 16(%x2)  #246 pc 2040
	addi	%x2, %x2, 20  #246 pc 2044
	jal	%x1, truncate.319  #246 pc 2048
	addi	%x2, %x2, -20  #246 pc 2052
	lw	%x1, 16(%x2) #246 pc 2056
	sw	%x1, 16(%x2)  #246 pc 2060
	addi	%x2, %x2, 20  #246 pc 2064
	jal	%x1, print_int.299  #246 pc 2068
	addi	%x2, %x2, -20  #246 pc 2072
	lw	%x1, 16(%x2) #246 pc 2076
