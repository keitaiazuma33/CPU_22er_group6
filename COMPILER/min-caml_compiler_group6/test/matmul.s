.section	".rodata"
.align	8
l.705:	! 12.000000
l.701:	! 11.000000
l.697:	! 10.000000
l.693:	! 9.000000
l.689:	! 8.000000
l.685:	! 7.000000
l.681:	! 6.000000
l.677:	! 5.000000
l.673:	! 4.000000
l.669:	! 3.000000
l.665:	! 2.000000
l.661:	! 1.000000
l.652:	! 0.000000
.section	".text"
	nop
	j min_caml_start
mul_abs.281:  #pc 8
	addi	%x31, %x0, -1  #pc 8
	beq	%x8, %x31, 12  #57 pc 12
	j	be_else.754 #pc 16
	nop #pc 20
	addi	%x6, %x9, 0  #58 pc 24
	ret #pc 28
	nop #pc 32
be_else.754: #pc 36
	addi	%x10, %x0, 1  #0 pc 36
	sll	%x10, %x10, %x8  #60 pc 40
	and	%x10, %x7, %x10  #60 pc 44
	beq	%x10, %x0, 12  #60 pc 48
	j	be_else.755 #pc 52
	nop #pc 56
	addi	%x8, %x8, -1  #61 pc 60
	j	mul_abs.281  #61 pc 64
	nop #pc 68
be_else.755: #pc 72
	addi	%x10, %x8, -1  #63 pc 72
	sll	%x8, %x6, %x8  #63 pc 76
	add	%x9, %x9, %x8  #63 pc 80
	addi	%x8, %x10, 0  #0 pc 84
	j	mul_abs.281  #63 pc 88
	nop #pc 92
mul.286:  #pc 96
	bge	%x6, %x0, 12  #67 pc 96
	j	bge_else.756 #pc 100
	nop #pc 104
	addi	%x8, %x6, 0  #67 pc 108
	j	bge_cont.757 #pc 112
	nop #pc 116
bge_else.756: #pc 120
	sub	%x8, %x0, %x6  #67 pc 120
bge_cont.757: #pc 124
	bge	%x7, %x0, 12  #68 pc 124
	j	bge_else.758 #pc 128
	nop #pc 132
	addi	%x9, %x7, 0  #68 pc 136
	j	bge_cont.759 #pc 140
	nop #pc 144
bge_else.758: #pc 148
	sub	%x9, %x0, %x7  #68 pc 148
bge_cont.759: #pc 152
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
	j	be_else.760 #pc 224
	nop #pc 228
	ret #pc 232
	nop #pc 236
be_else.760: #pc 240
	sub	%x6, %x0, %x6  #73 pc 240
	ret #pc 244
	nop #pc 248
div_abs.289:  #pc 252
	addi	%x31, %x0, -1  #pc 252
	beq	%x8, %x31, 12  #77 pc 256
	j	be_else.761 #pc 260
	nop #pc 264
	addi	%x6, %x9, 0  #78 pc 268
	ret #pc 272
	nop #pc 276
be_else.761: #pc 280
	srl	%x10, %x6, %x8  #80 pc 280
	bge	%x10, %x7, 12  #80 pc 284
	j	ble_else.762 #pc 288
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
ble_else.762: #pc 332
	addi	%x8, %x8, -1  #83 pc 332
	j	div_abs.289  #83 pc 336
	nop #pc 340
div.294:  #pc 344
	bge	%x6, %x0, 12  #87 pc 344
	j	bge_else.763 #pc 348
	nop #pc 352
	addi	%x8, %x6, 0  #87 pc 356
	j	bge_cont.764 #pc 360
	nop #pc 364
bge_else.763: #pc 368
	sub	%x8, %x0, %x6  #87 pc 368
bge_cont.764: #pc 372
	bge	%x7, %x0, 12  #88 pc 372
	j	bge_else.765 #pc 376
	nop #pc 380
	addi	%x9, %x7, 0  #88 pc 384
	j	bge_cont.766 #pc 388
	nop #pc 392
bge_else.765: #pc 396
	sub	%x9, %x0, %x7  #88 pc 396
bge_cont.766: #pc 400
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
	j	be_else.767 #pc 472
	nop #pc 476
	ret #pc 480
	nop #pc 484
be_else.767: #pc 488
	sub	%x6, %x0, %x6  #93 pc 488
	ret #pc 492
	nop #pc 496
print_int.299:  #pc 500
	bge	%x6, %x0, 12  #100 pc 500
	j	bge_else.768 #pc 504
	nop #pc 508
	addi	%x31, %x0, 10  #pc 512
	bge	%x6, %x31, 12  #104 pc 516
	j	bge_else.769 #pc 520
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
bge_else.769: #pc 636
	addi	%x6, %x6, 48  #105 pc 636
	sw	%x6, 0(%x5)  #105 pc 640
	addi	%x5, %x5, 4  #105 pc 644
	ret #pc 648
	nop #pc 652
bge_else.768: #pc 656
	addi	%x7, %x0, 45  #0 pc 656
	sw	%x7, 0(%x5)  #101 pc 660
	addi	%x5, %x5, 4  #101 pc 664
	sub	%x6, %x0, %x6  #102 pc 668
	j	print_int.299  #102 pc 672
	nop #pc 676
assign_array.305:  #pc 680
	bge	%x8, %x0, 12  #169 pc 680
	j	bge_else.772 #pc 684
	nop #pc 688
	beq	%x8, %x0, 12  #172 pc 692
	j	be_else.773 #pc 696
	nop #pc 700
	slli	%x8, %x8, 2  #173 pc 704
	add	%x31, %x8, %x6  #173 pc 708
	sw	%x7, 0(%x31)  #173 pc 712
	ret #pc 716
	nop #pc 720
be_else.773: #pc 724
	slli	%x9, %x8, 2  #175 pc 724
	add	%x31, %x9, %x6  #175 pc 728
	sw	%x7, 0(%x31)  #175 pc 732
	addi	%x8, %x8, -1  #176 pc 736
	j	assign_array.305  #176 pc 740
	nop #pc 744
bge_else.772: #pc 748
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
	j	bge_else.776 #pc 824
	nop #pc 828
	beq	%x7, %x0, 12  #191 pc 832
	j	be_else.777 #pc 836
	nop #pc 840
	slli	%x7, %x7, 2  #192 pc 844
	add	%x31, %x7, %x6  #192 pc 848
	fsw	%f0, 0(%x31) #192 pc 852
	ret #pc 856
	nop #pc 860
be_else.777: #pc 864
	slli	%x8, %x7, 2  #194 pc 864
	add	%x31, %x8, %x6  #194 pc 868
	fsw	%f0, 0(%x31) #194 pc 872
	addi	%x7, %x7, -1  #195 pc 876
	j	assign_farray.312  #195 pc 880
	nop #pc 884
bge_else.776: #pc 888
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
loop3.455:  #pc 972
	lw	%x7, 20(%x29)  #0 pc 972
	lw	%x8, 16(%x29)  #0 pc 976
	lw	%x9, 12(%x29)  #0 pc 980
	lw	%x10, 8(%x29)  #0 pc 984
	lw	%x11, 4(%x29)  #0 pc 988
	bge	%x6, %x0, 12  #217 pc 992
	j	bge_else.780 #pc 996
	nop #pc 1000
	slli	%x12, %x8, 2  #218 pc 1004
	add	%x31, %x12, %x9  #218 pc 1008
	lw	%x12, 0(%x31)  #218 pc 1012
	slli	%x13, %x8, 2  #218 pc 1016
	add	%x31, %x13, %x9  #218 pc 1020
	lw	%x9, 0(%x31)  #218 pc 1024
	slli	%x13, %x7, 2  #218 pc 1028
	add	%x31, %x13, %x9  #218 pc 1032
	flw	%f0, 0(%x31)  #218 pc 1036
	slli	%x8, %x8, 2  #218 pc 1040
	add	%x31, %x8, %x11  #218 pc 1044
	lw	%x8, 0(%x31)  #218 pc 1048
	slli	%x9, %x6, 2  #218 pc 1052
	add	%x31, %x9, %x8  #218 pc 1056
	flw	%f1, 0(%x31)  #218 pc 1060
	slli	%x8, %x6, 2  #218 pc 1064
	add	%x31, %x8, %x10  #218 pc 1068
	lw	%x8, 0(%x31)  #218 pc 1072
	slli	%x9, %x7, 2  #218 pc 1076
	add	%x31, %x9, %x8  #218 pc 1080
	flw	%f2, 0(%x31)  #218 pc 1084
	fmul	%f1, %f1, %f2  #218 pc 1088
	fadd	%f0, %f0, %f1  #218 pc 1092
	slli	%x7, %x7, 2  #218 pc 1096
	add	%x31, %x7, %x12  #218 pc 1100
	fsw	%f0, 0(%x31) #218 pc 1104
	addi	%x6, %x6, -1  #219 pc 1108
	lw	%x30, 0(%x29)  #219 pc 1112
	jalr	%x0, %x30, 0  #219 pc 1116
	nop #pc 1120
bge_else.780: #pc 1124
	ret #pc 1124
	nop #pc 1128
loop2.447:  #pc 1132
	lw	%x7, 20(%x29)  #0 pc 1132
	lw	%x8, 16(%x29)  #0 pc 1136
	lw	%x9, 12(%x29)  #0 pc 1140
	lw	%x10, 8(%x29)  #0 pc 1144
	lw	%x11, 4(%x29)  #0 pc 1148
	bge	%x6, %x0, 12  #215 pc 1152
	j	bge_else.782 #pc 1156
	nop #pc 1160
	addi	%x12, %x3, 0  #216 pc 1164
	addi	%x3, %x3, 24  #216 pc 1168
	addi	%x13, %x0, 972  #216 loop3.455 pc 1172
	sw	%x13, 0(%x12)  #216 pc 1176
	sw	%x6, 20(%x12)  #216 pc 1180
	sw	%x8, 16(%x12)  #216 pc 1184
	sw	%x9, 12(%x12)  #216 pc 1188
	sw	%x10, 8(%x12)  #216 pc 1192
	sw	%x11, 4(%x12)  #216 pc 1196
	addi	%x7, %x7, -1  #220 pc 1200
	sw	%x29, 0(%x2)  #220 pc 1204
	sw	%x6, 4(%x2)  #220 pc 1208
	addi	%x6, %x7, 0  #0 pc 1212
	addi	%x29, %x12, 0  #0 pc 1216
	sw	%x1, 8(%x2)  #220 pc 1220
	lw	%x30, 0(%x29)  #220 pc 1224
	addi	%x2, %x2, 12  #220 pc 1228
	jalr	%x1, %x30, 0  #220 pc 1232
	addi	%x2, %x2, -12  #220 pc 1236
	lw	%x1, 8(%x2)  #220 pc 1240
	lw	%x6, 4(%x2)  #221 pc 1244
	addi	%x6, %x6, -1  #221 pc 1248
	lw	%x29, 0(%x2)  #221 pc 1252
	lw	%x30, 0(%x29)  #221 pc 1256
	jalr	%x0, %x30, 0  #221 pc 1260
	nop #pc 1264
bge_else.782: #pc 1268
	ret #pc 1268
	nop #pc 1272
loop1.442:  #pc 1276
	lw	%x7, 20(%x29)  #0 pc 1276
	lw	%x8, 16(%x29)  #0 pc 1280
	lw	%x9, 12(%x29)  #0 pc 1284
	lw	%x10, 8(%x29)  #0 pc 1288
	lw	%x11, 4(%x29)  #0 pc 1292
	bge	%x6, %x0, 12  #213 pc 1296
	j	bge_else.784 #pc 1300
	nop #pc 1304
	addi	%x12, %x3, 0  #214 pc 1308
	addi	%x3, %x3, 24  #214 pc 1312
	addi	%x13, %x0, 1132  #214 loop2.447 pc 1316
	sw	%x13, 0(%x12)  #214 pc 1320
	sw	%x8, 20(%x12)  #214 pc 1324
	sw	%x6, 16(%x12)  #214 pc 1328
	sw	%x9, 12(%x12)  #214 pc 1332
	sw	%x10, 8(%x12)  #214 pc 1336
	sw	%x11, 4(%x12)  #214 pc 1340
	addi	%x7, %x7, -1  #222 pc 1344
	sw	%x29, 0(%x2)  #222 pc 1348
	sw	%x6, 4(%x2)  #222 pc 1352
	addi	%x6, %x7, 0  #0 pc 1356
	addi	%x29, %x12, 0  #0 pc 1360
	sw	%x1, 8(%x2)  #222 pc 1364
	lw	%x30, 0(%x29)  #222 pc 1368
	addi	%x2, %x2, 12  #222 pc 1372
	jalr	%x1, %x30, 0  #222 pc 1376
	addi	%x2, %x2, -12  #222 pc 1380
	lw	%x1, 8(%x2)  #222 pc 1384
	lw	%x6, 4(%x2)  #223 pc 1388
	addi	%x6, %x6, -1  #223 pc 1392
	lw	%x29, 0(%x2)  #223 pc 1396
	lw	%x30, 0(%x29)  #223 pc 1400
	jalr	%x0, %x30, 0  #223 pc 1404
	nop #pc 1408
bge_else.784: #pc 1412
	ret #pc 1412
	nop #pc 1416
mul.321:  #pc 1420
	addi	%x29, %x3, 0  #212 pc 1420
	addi	%x3, %x3, 24  #212 pc 1424
	addi	%x12, %x0, 1276  #212 loop1.442 pc 1428
	sw	%x12, 0(%x29)  #212 pc 1432
	sw	%x8, 20(%x29)  #212 pc 1436
	sw	%x7, 16(%x29)  #212 pc 1440
	sw	%x11, 12(%x29)  #212 pc 1444
	sw	%x10, 8(%x29)  #212 pc 1448
	sw	%x9, 4(%x29)  #212 pc 1452
	addi	%x6, %x6, -1  #224 pc 1456
	lw	%x30, 0(%x29)  #224 pc 1460
	jalr	%x0, %x30, 0  #224 pc 1464
	nop #pc 1468
init.429:  #pc 1472
	lw	%x7, 8(%x29)  #0 pc 1472
	lw	%x8, 4(%x29)  #0 pc 1476
	bge	%x6, %x0, 12  #229 pc 1480
	j	bge_else.786 #pc 1484
	nop #pc 1488
	fmv	%f0, l.652  #0 pc 1492
	sw	%x29, 0(%x2)  #230 pc 1496
	sw	%x8, 4(%x2)  #230 pc 1500
	sw	%x6, 8(%x2)  #230 pc 1504
	addi	%x6, %x7, 0  #0 pc 1508
	sw	%x1, 12(%x2)  #230 pc 1512
	addi	%x2, %x2, 16  #230 pc 1516
	jal	%x1, create_float_array.316  #230 pc 1520
	addi	%x2, %x2, -16  #230 pc 1524
	lw	%x1, 12(%x2) #230 pc 1528
	lw	%x7, 8(%x2)  #230 pc 1532
	slli	%x8, %x7, 2  #230 pc 1536
	lw	%x9, 4(%x2)  #230 pc 1540
	add	%x31, %x8, %x9  #230 pc 1544
	sw	%x6, 0(%x31)  #230 pc 1548
	addi	%x6, %x7, -1  #231 pc 1552
	lw	%x29, 0(%x2)  #231 pc 1556
	lw	%x30, 0(%x29)  #231 pc 1560
	jalr	%x0, %x30, 0  #231 pc 1564
	nop #pc 1568
bge_else.786: #pc 1572
	ret #pc 1572
	nop #pc 1576
make.329:  #pc 1580
	lw	%x8, 4(%x29)  #227 pc 1580
	sw	%x6, 0(%x2)  #227 pc 1584
	sw	%x7, 4(%x2)  #227 pc 1588
	addi	%x7, %x8, 0  #0 pc 1592
	sw	%x1, 8(%x2)  #227 pc 1596
	addi	%x2, %x2, 12  #227 pc 1600
	jal	%x1, create_array.309  #227 pc 1604
	addi	%x2, %x2, -12  #227 pc 1608
	lw	%x1, 8(%x2) #227 pc 1612
	addi	%x29, %x3, 0  #228 pc 1616
	addi	%x3, %x3, 12  #228 pc 1620
	addi	%x7, %x0, 1472  #228 init.429 pc 1624
	sw	%x7, 0(%x29)  #228 pc 1628
	lw	%x7, 4(%x2)  #228 pc 1632
	sw	%x7, 8(%x29)  #228 pc 1636
	sw	%x6, 4(%x29)  #228 pc 1640
	lw	%x7, 0(%x2)  #232 pc 1644
	addi	%x7, %x7, -1  #232 pc 1648
	sw	%x6, 8(%x2)  #232 pc 1652
	addi	%x6, %x7, 0  #0 pc 1656
	sw	%x1, 12(%x2)  #232 pc 1660
	lw	%x30, 0(%x29)  #232 pc 1664
	addi	%x2, %x2, 16  #232 pc 1668
	jalr	%x1, %x30, 0  #232 pc 1672
	addi	%x2, %x2, -16  #232 pc 1676
	lw	%x1, 12(%x2)  #232 pc 1680
	lw	%x6, 8(%x2)  #233 pc 1684
	ret #pc 1688
	nop #pc 1692
.global	min_caml_start
min_caml_start:
	addi	%x31, %x0, 1
	slli	%x4, %x31, 13
	slli	%x5, %x31, 16
	slli	%x2, %x31, 24
	add	%x3, %x2, %x4
	addi	%x6, %x0, 0  #0 pc 1716
	fmv	%f0, l.652  #0 pc 1720
	sw	%x1, 0(%x2)  #225 pc 1724
	addi	%x2, %x2, 4  #225 pc 1728
	jal	%x1, create_float_array.316  #225 pc 1732
	addi	%x2, %x2, -4  #225 pc 1736
	lw	%x1, 0(%x2) #225 pc 1740
	addi	%x29, %x3, 0  #226 pc 1744
	addi	%x3, %x3, 8  #226 pc 1748
	addi	%x7, %x0, 1580  #226 make.329 pc 1752
	sw	%x7, 0(%x29)  #226 pc 1756
	sw	%x6, 4(%x29)  #226 pc 1760
	addi	%x6, %x0, 2  #0 pc 1764
	addi	%x7, %x0, 3  #0 pc 1768
	sw	%x29, 0(%x2)  #234 pc 1772
	sw	%x1, 4(%x2)  #234 pc 1776
	lw	%x30, 0(%x29)  #234 pc 1780
	addi	%x2, %x2, 8  #234 pc 1784
	jalr	%x1, %x30, 0  #234 pc 1788
	addi	%x2, %x2, -8  #234 pc 1792
	lw	%x1, 4(%x2)  #234 pc 1796
	addi	%x7, %x0, 3  #0 pc 1800
	addi	%x8, %x0, 2  #0 pc 1804
	lw	%x29, 0(%x2)  #235 pc 1808
	sw	%x6, 4(%x2)  #235 pc 1812
	addi	%x6, %x7, 0  #0 pc 1816
	addi	%x7, %x8, 0  #0 pc 1820
	sw	%x1, 8(%x2)  #235 pc 1824
	lw	%x30, 0(%x29)  #235 pc 1828
	addi	%x2, %x2, 12  #235 pc 1832
	jalr	%x1, %x30, 0  #235 pc 1836
	addi	%x2, %x2, -12  #235 pc 1840
	lw	%x1, 8(%x2)  #235 pc 1844
	addi	%x7, %x0, 2  #0 pc 1848
	lw	%x29, 0(%x2)  #236 pc 1852
	sw	%x6, 8(%x2)  #236 pc 1856
	addi	%x6, %x7, 0  #0 pc 1860
	sw	%x1, 12(%x2)  #236 pc 1864
	lw	%x30, 0(%x29)  #236 pc 1868
	addi	%x2, %x2, 16  #236 pc 1872
	jalr	%x1, %x30, 0  #236 pc 1876
	addi	%x2, %x2, -16  #236 pc 1880
	lw	%x1, 12(%x2)  #236 pc 1884
	addi	%x11, %x6, 0  #236 pc 1888
	lw	%x9, 4(%x2)  #237 pc 1892
	lw	%x6, 0(%x9)  #237 pc 1896
	fmv	%f0, l.661  #0 pc 1900
	fsw	%f0, 0(%x6)  #237 pc 1904
	lw	%x6, 0(%x9)  #237 pc 1908
	fmv	%f0, l.665  #0 pc 1912
	fsw	%f0, 4(%x6)  #237 pc 1916
	lw	%x6, 0(%x9)  #237 pc 1920
	fmv	%f0, l.669  #0 pc 1924
	fsw	%f0, 8(%x6)  #237 pc 1928
	lw	%x6, 4(%x9)  #238 pc 1932
	fmv	%f0, l.673  #0 pc 1936
	fsw	%f0, 0(%x6)  #238 pc 1940
	lw	%x6, 4(%x9)  #238 pc 1944
	fmv	%f0, l.677  #0 pc 1948
	fsw	%f0, 4(%x6)  #238 pc 1952
	lw	%x6, 4(%x9)  #238 pc 1956
	fmv	%f0, l.681  #0 pc 1960
	fsw	%f0, 8(%x6)  #238 pc 1964
	lw	%x10, 8(%x2)  #239 pc 1968
	lw	%x6, 0(%x10)  #239 pc 1972
	fmv	%f0, l.685  #0 pc 1976
	fsw	%f0, 0(%x6)  #239 pc 1980
	lw	%x6, 0(%x10)  #239 pc 1984
	fmv	%f0, l.689  #0 pc 1988
	fsw	%f0, 4(%x6)  #239 pc 1992
	lw	%x6, 4(%x10)  #240 pc 1996
	fmv	%f0, l.693  #0 pc 2000
	fsw	%f0, 0(%x6)  #240 pc 2004
	lw	%x6, 4(%x10)  #240 pc 2008
	fmv	%f0, l.697  #0 pc 2012
	fsw	%f0, 4(%x6)  #240 pc 2016
	lw	%x6, 8(%x10)  #241 pc 2020
	fmv	%f0, l.701  #0 pc 2024
	fsw	%f0, 0(%x6)  #241 pc 2028
	lw	%x6, 8(%x10)  #241 pc 2032
	fmv	%f0, l.705  #0 pc 2036
	fsw	%f0, 4(%x6)  #241 pc 2040
	addi	%x6, %x0, 2  #0 pc 2044
	addi	%x7, %x0, 3  #0 pc 2048
	sw	%x11, 12(%x2)  #242 pc 2052
	addi	%x8, %x6, 0  #0 pc 2056
	sw	%x1, 16(%x2)  #242 pc 2060
	addi	%x2, %x2, 20  #242 pc 2064
	jal	%x1, mul.321  #242 pc 2068
	addi	%x2, %x2, -20  #242 pc 2072
	lw	%x1, 16(%x2) #242 pc 2076
	lw	%x6, 12(%x2)  #243 pc 2080
	lw	%x7, 0(%x6)  #243 pc 2084
	flw	%f0, 0(%x7)  #243 pc 2088
	sw	%x1, 16(%x2)  #243 pc 2092
	addi	%x2, %x2, 20  #243 pc 2096
	jal	%x1, truncate.319  #243 pc 2100
	addi	%x2, %x2, -20  #243 pc 2104
	lw	%x1, 16(%x2) #243 pc 2108
	sw	%x1, 16(%x2)  #243 pc 2112
	addi	%x2, %x2, 20  #243 pc 2116
	jal	%x1, print_int.299  #243 pc 2120
	addi	%x2, %x2, -20  #243 pc 2124
	lw	%x1, 16(%x2) #243 pc 2128
	lw	%x6, 12(%x2)  #244 pc 2132
	lw	%x7, 0(%x6)  #244 pc 2136
	flw	%f0, 4(%x7)  #244 pc 2140
	sw	%x1, 16(%x2)  #244 pc 2144
	addi	%x2, %x2, 20  #244 pc 2148
	jal	%x1, truncate.319  #244 pc 2152
	addi	%x2, %x2, -20  #244 pc 2156
	lw	%x1, 16(%x2) #244 pc 2160
	sw	%x1, 16(%x2)  #244 pc 2164
	addi	%x2, %x2, 20  #244 pc 2168
	jal	%x1, print_int.299  #244 pc 2172
	addi	%x2, %x2, -20  #244 pc 2176
	lw	%x1, 16(%x2) #244 pc 2180
	lw	%x6, 12(%x2)  #245 pc 2184
	lw	%x7, 4(%x6)  #245 pc 2188
	flw	%f0, 0(%x7)  #245 pc 2192
	sw	%x1, 16(%x2)  #245 pc 2196
	addi	%x2, %x2, 20  #245 pc 2200
	jal	%x1, truncate.319  #245 pc 2204
	addi	%x2, %x2, -20  #245 pc 2208
	lw	%x1, 16(%x2) #245 pc 2212
	sw	%x1, 16(%x2)  #245 pc 2216
	addi	%x2, %x2, 20  #245 pc 2220
	jal	%x1, print_int.299  #245 pc 2224
	addi	%x2, %x2, -20  #245 pc 2228
	lw	%x1, 16(%x2) #245 pc 2232
	lw	%x6, 12(%x2)  #246 pc 2236
	lw	%x6, 4(%x6)  #246 pc 2240
	flw	%f0, 4(%x6)  #246 pc 2244
	sw	%x1, 16(%x2)  #246 pc 2248
	addi	%x2, %x2, 20  #246 pc 2252
	jal	%x1, truncate.319  #246 pc 2256
	addi	%x2, %x2, -20  #246 pc 2260
	lw	%x1, 16(%x2) #246 pc 2264
	sw	%x1, 16(%x2)  #246 pc 2268
	addi	%x2, %x2, 20  #246 pc 2272
	jal	%x1, print_int.299  #246 pc 2276
	addi	%x2, %x2, -20  #246 pc 2280
	lw	%x1, 16(%x2) #246 pc 2284
