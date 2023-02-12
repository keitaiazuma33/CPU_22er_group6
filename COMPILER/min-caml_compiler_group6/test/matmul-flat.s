.section	".rodata"
.align	8
l.712:	! 12.000000
l.708:	! 11.000000
l.704:	! 10.000000
l.700:	! 9.000000
l.696:	! 8.000000
l.692:	! 7.000000
l.688:	! 6.000000
l.684:	! 5.000000
l.680:	! 4.000000
l.676:	! 3.000000
l.672:	! 2.000000
l.668:	! 1.000000
l.663:	! 0.000000
.section	".text"
mul_abs.289:  #pc 0
	addi	%x31, %x0, -1  #pc 0
	beq	%x8, %x31, 12  #57 pc 4
	j	be_else.766 #pc 8
	nop #pc 12
	addi	%x6, %x9, 0  #58 pc 16
	ret #pc 20
	nop #pc 24
be_else.766: #pc 28
	addi	%x10, %x0, 1  #0 pc 28
	sll	%x10, %x10, %x8  #60 pc 32
	and	%x10, %x7, %x10  #60 pc 36
	beq	%x10, %x0, 12  #60 pc 40
	j	be_else.767 #pc 44
	nop #pc 48
	addi	%x8, %x8, -1  #61 pc 52
	j	mul_abs.289  #61 pc 56
	nop #pc 60
be_else.767: #pc 64
	addi	%x10, %x8, -1  #63 pc 64
	sll	%x8, %x6, %x8  #63 pc 68
	add	%x9, %x9, %x8  #63 pc 72
	addi	%x8, %x10, 0  #0 pc 76
	j	mul_abs.289  #63 pc 80
	nop #pc 84
mul.294:  #pc 88
	bge	%x6, %x0, 12  #67 pc 88
	j	bge_else.768 #pc 92
	nop #pc 96
	addi	%x8, %x6, 0  #67 pc 100
	j	bge_cont.769 #pc 104
	nop #pc 108
bge_else.768: #pc 112
	sub	%x8, %x0, %x6  #67 pc 112
bge_cont.769: #pc 116
	bge	%x7, %x0, 12  #68 pc 116
	j	bge_else.770 #pc 120
	nop #pc 124
	addi	%x9, %x7, 0  #68 pc 128
	j	bge_cont.771 #pc 132
	nop #pc 136
bge_else.770: #pc 140
	sub	%x9, %x0, %x7  #68 pc 140
bge_cont.771: #pc 144
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
	j	be_else.772 #pc 216
	nop #pc 220
	ret #pc 224
	nop #pc 228
be_else.772: #pc 232
	sub	%x6, %x0, %x6  #73 pc 232
	ret #pc 236
	nop #pc 240
div_abs.297:  #pc 244
	addi	%x31, %x0, -1  #pc 244
	beq	%x8, %x31, 12  #77 pc 248
	j	be_else.773 #pc 252
	nop #pc 256
	addi	%x6, %x9, 0  #78 pc 260
	ret #pc 264
	nop #pc 268
be_else.773: #pc 272
	srl	%x10, %x6, %x8  #80 pc 272
	bge	%x10, %x7, 12  #80 pc 276
	j	ble_else.774 #pc 280
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
ble_else.774: #pc 324
	addi	%x8, %x8, -1  #83 pc 324
	j	div_abs.297  #83 pc 328
	nop #pc 332
div.302:  #pc 336
	bge	%x6, %x0, 12  #87 pc 336
	j	bge_else.775 #pc 340
	nop #pc 344
	addi	%x8, %x6, 0  #87 pc 348
	j	bge_cont.776 #pc 352
	nop #pc 356
bge_else.775: #pc 360
	sub	%x8, %x0, %x6  #87 pc 360
bge_cont.776: #pc 364
	bge	%x7, %x0, 12  #88 pc 364
	j	bge_else.777 #pc 368
	nop #pc 372
	addi	%x9, %x7, 0  #88 pc 376
	j	bge_cont.778 #pc 380
	nop #pc 384
bge_else.777: #pc 388
	sub	%x9, %x0, %x7  #88 pc 388
bge_cont.778: #pc 392
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
	j	be_else.779 #pc 464
	nop #pc 468
	ret #pc 472
	nop #pc 476
be_else.779: #pc 480
	sub	%x6, %x0, %x6  #93 pc 480
	ret #pc 484
	nop #pc 488
print_int.307:  #pc 492
	bge	%x6, %x0, 12  #100 pc 492
	j	bge_else.780 #pc 496
	nop #pc 500
	addi	%x31, %x0, 10  #pc 504
	bge	%x6, %x31, 12  #104 pc 508
	j	bge_else.781 #pc 512
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
bge_else.781: #pc 628
	addi	%x6, %x6, 48  #105 pc 628
	sw	%x6, 0(%x5)  #105 pc 632
	addi	%x5, %x5, 4  #105 pc 636
	ret #pc 640
	nop #pc 644
bge_else.780: #pc 648
	addi	%x7, %x0, 45  #0 pc 648
	sw	%x7, 0(%x5)  #101 pc 652
	addi	%x5, %x5, 4  #101 pc 656
	sub	%x6, %x0, %x6  #102 pc 660
	j	print_int.307  #102 pc 664
	nop #pc 668
assign_array.313:  #pc 672
	bge	%x8, %x0, 12  #169 pc 672
	j	bge_else.784 #pc 676
	nop #pc 680
	beq	%x8, %x0, 12  #172 pc 684
	j	be_else.785 #pc 688
	nop #pc 692
	slli	%x8, %x8, 2  #173 pc 696
	add	%x31, %x8, %x6  #173 pc 700
	sw	%x7, 0(%x31)  #173 pc 704
	ret #pc 708
	nop #pc 712
be_else.785: #pc 716
	slli	%x9, %x8, 2  #175 pc 716
	add	%x31, %x9, %x6  #175 pc 720
	sw	%x7, 0(%x31)  #175 pc 724
	addi	%x8, %x8, -1  #176 pc 728
	j	assign_array.313  #176 pc 732
	nop #pc 736
bge_else.784: #pc 740
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
	j	bge_else.788 #pc 816
	nop #pc 820
	beq	%x7, %x0, 12  #191 pc 824
	j	be_else.789 #pc 828
	nop #pc 832
	slli	%x7, %x7, 2  #192 pc 836
	add	%x31, %x7, %x6  #192 pc 840
	fsw	%f0, 0(%x31) #192 pc 844
	ret #pc 848
	nop #pc 852
be_else.789: #pc 856
	slli	%x8, %x7, 2  #194 pc 856
	add	%x31, %x8, %x6  #194 pc 860
	fsw	%f0, 0(%x31) #194 pc 864
	addi	%x7, %x7, -1  #195 pc 868
	j	assign_farray.320  #195 pc 872
	nop #pc 876
bge_else.788: #pc 880
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
loop3.327:  #pc 952
	bge	%x7, %x0, 12  #208 pc 952
	j	bge_else.792 #pc 956
	nop #pc 960
	slli	%x12, %x6, 2  #209 pc 964
	add	%x31, %x12, %x11  #209 pc 968
	lw	%x12, 0(%x31)  #209 pc 972
	slli	%x13, %x6, 2  #209 pc 976
	add	%x31, %x13, %x11  #209 pc 980
	lw	%x13, 0(%x31)  #209 pc 984
	slli	%x14, %x8, 2  #209 pc 988
	add	%x31, %x14, %x13  #209 pc 992
	flw	%f0, 0(%x31)  #209 pc 996
	slli	%x13, %x6, 2  #209 pc 1000
	add	%x31, %x13, %x9  #209 pc 1004
	lw	%x13, 0(%x31)  #209 pc 1008
	slli	%x14, %x7, 2  #209 pc 1012
	add	%x31, %x14, %x13  #209 pc 1016
	flw	%f1, 0(%x31)  #209 pc 1020
	slli	%x13, %x7, 2  #209 pc 1024
	add	%x31, %x13, %x10  #209 pc 1028
	lw	%x13, 0(%x31)  #209 pc 1032
	slli	%x14, %x8, 2  #209 pc 1036
	add	%x31, %x14, %x13  #209 pc 1040
	flw	%f2, 0(%x31)  #209 pc 1044
	fmul	%f1, %f1, %f2  #209 pc 1048
	fadd	%f0, %f0, %f1  #209 pc 1052
	slli	%x13, %x8, 2  #209 pc 1056
	add	%x31, %x13, %x12  #209 pc 1060
	fsw	%f0, 0(%x31) #209 pc 1064
	addi	%x7, %x7, -1  #210 pc 1068
	j	loop3.327  #210 pc 1072
	nop #pc 1076
bge_else.792: #pc 1080
	ret #pc 1080
	nop #pc 1084
loop2.334:  #pc 1088
	bge	%x8, %x0, 12  #212 pc 1088
	j	bge_else.794 #pc 1092
	nop #pc 1096
	addi	%x12, %x7, -1  #213 pc 1100
	sw	%x11, 0(%x2)  #213 pc 1104
	sw	%x10, 4(%x2)  #213 pc 1108
	sw	%x9, 8(%x2)  #213 pc 1112
	sw	%x7, 12(%x2)  #213 pc 1116
	sw	%x6, 16(%x2)  #213 pc 1120
	sw	%x8, 20(%x2)  #213 pc 1124
	addi	%x7, %x12, 0  #0 pc 1128
	sw	%x1, 24(%x2)  #213 pc 1132
	addi	%x2, %x2, 28  #213 pc 1136
	jal	%x1, loop3.327  #213 pc 1140
	addi	%x2, %x2, -28  #213 pc 1144
	lw	%x1, 24(%x2) #213 pc 1148
	lw	%x6, 20(%x2)  #214 pc 1152
	addi	%x8, %x6, -1  #214 pc 1156
	lw	%x6, 16(%x2)  #214 pc 1160
	lw	%x7, 12(%x2)  #214 pc 1164
	lw	%x9, 8(%x2)  #214 pc 1168
	lw	%x10, 4(%x2)  #214 pc 1172
	lw	%x11, 0(%x2)  #214 pc 1176
	j	loop2.334  #214 pc 1180
	nop #pc 1184
bge_else.794: #pc 1188
	ret #pc 1188
	nop #pc 1192
loop1.341:  #pc 1196
	bge	%x6, %x0, 12  #216 pc 1196
	j	bge_else.796 #pc 1200
	nop #pc 1204
	addi	%x12, %x8, -1  #217 pc 1208
	sw	%x11, 0(%x2)  #217 pc 1212
	sw	%x10, 4(%x2)  #217 pc 1216
	sw	%x9, 8(%x2)  #217 pc 1220
	sw	%x8, 12(%x2)  #217 pc 1224
	sw	%x7, 16(%x2)  #217 pc 1228
	sw	%x6, 20(%x2)  #217 pc 1232
	addi	%x8, %x12, 0  #0 pc 1236
	sw	%x1, 24(%x2)  #217 pc 1240
	addi	%x2, %x2, 28  #217 pc 1244
	jal	%x1, loop2.334  #217 pc 1248
	addi	%x2, %x2, -28  #217 pc 1252
	lw	%x1, 24(%x2) #217 pc 1256
	lw	%x6, 20(%x2)  #218 pc 1260
	addi	%x6, %x6, -1  #218 pc 1264
	lw	%x7, 16(%x2)  #218 pc 1268
	lw	%x8, 12(%x2)  #218 pc 1272
	lw	%x9, 8(%x2)  #218 pc 1276
	lw	%x10, 4(%x2)  #218 pc 1280
	lw	%x11, 0(%x2)  #218 pc 1284
	j	loop1.341  #218 pc 1288
	nop #pc 1292
bge_else.796: #pc 1296
	ret #pc 1296
	nop #pc 1300
mul.348:  #pc 1304
	addi	%x6, %x6, -1  #220 pc 1304
	j	loop1.341  #220 pc 1308
	nop #pc 1312
init.356:  #pc 1316
	bge	%x6, %x0, 12  #223 pc 1316
	j	bge_else.798 #pc 1320
	nop #pc 1324
	fmv	%f0, l.663  #0 pc 1328
	sw	%x7, 0(%x2)  #224 pc 1332
	sw	%x8, 4(%x2)  #224 pc 1336
	sw	%x6, 8(%x2)  #224 pc 1340
	addi	%x6, %x7, 0  #0 pc 1344
	sw	%x1, 12(%x2)  #224 pc 1348
	addi	%x2, %x2, 16  #224 pc 1352
	jal	%x1, create_float_array.324  #224 pc 1356
	addi	%x2, %x2, -16  #224 pc 1360
	lw	%x1, 12(%x2) #224 pc 1364
	lw	%x7, 8(%x2)  #224 pc 1368
	slli	%x8, %x7, 2  #224 pc 1372
	lw	%x9, 4(%x2)  #224 pc 1376
	add	%x31, %x8, %x9  #224 pc 1380
	sw	%x6, 0(%x31)  #224 pc 1384
	addi	%x6, %x7, -1  #225 pc 1388
	lw	%x7, 0(%x2)  #225 pc 1392
	addi	%x8, %x9, 0  #0 pc 1396
	j	init.356  #225 pc 1400
	nop #pc 1404
bge_else.798: #pc 1408
	ret #pc 1408
	nop #pc 1412
make.360:  #pc 1416
	sw	%x7, 0(%x2)  #227 pc 1416
	sw	%x6, 4(%x2)  #227 pc 1420
	addi	%x7, %x8, 0  #0 pc 1424
	sw	%x1, 8(%x2)  #227 pc 1428
	addi	%x2, %x2, 12  #227 pc 1432
	jal	%x1, create_array.317  #227 pc 1436
	addi	%x2, %x2, -12  #227 pc 1440
	lw	%x1, 8(%x2) #227 pc 1444
	addi	%x8, %x6, 0  #227 pc 1448
	lw	%x6, 4(%x2)  #228 pc 1452
	addi	%x6, %x6, -1  #228 pc 1456
	lw	%x7, 0(%x2)  #228 pc 1460
	sw	%x8, 8(%x2)  #228 pc 1464
	sw	%x1, 12(%x2)  #228 pc 1468
	addi	%x2, %x2, 16  #228 pc 1472
	jal	%x1, init.356  #228 pc 1476
	addi	%x2, %x2, -16  #228 pc 1480
	lw	%x1, 12(%x2) #228 pc 1484
	lw	%x6, 8(%x2)  #229 pc 1488
	ret #pc 1492
	nop #pc 1496
.global	min_caml_start
min_caml_start:
	addi	%x2, %x0, 1000000
	addi	%x3, %x0, 1002000
	addi	%x4, %x0, 8192
	addi	%x5, %x0, 65536
	addi	%x6, %x0, 0  #0 pc 1516
	fmv	%f0, l.663  #0 pc 1520
	sw	%x1, 0(%x2)  #221 pc 1524
	addi	%x2, %x2, 4  #221 pc 1528
	jal	%x1, create_float_array.324  #221 pc 1532
	addi	%x2, %x2, -4  #221 pc 1536
	lw	%x1, 0(%x2) #221 pc 1540
	addi	%x8, %x6, 0  #221 pc 1544
	addi	%x6, %x0, 2  #0 pc 1548
	addi	%x7, %x0, 3  #0 pc 1552
	sw	%x8, 0(%x2)  #230 pc 1556
	sw	%x1, 4(%x2)  #230 pc 1560
	addi	%x2, %x2, 8  #230 pc 1564
	jal	%x1, make.360  #230 pc 1568
	addi	%x2, %x2, -8  #230 pc 1572
	lw	%x1, 4(%x2) #230 pc 1576
	addi	%x7, %x0, 3  #0 pc 1580
	addi	%x8, %x0, 2  #0 pc 1584
	lw	%x9, 0(%x2)  #231 pc 1588
	sw	%x6, 4(%x2)  #231 pc 1592
	addi	%x6, %x7, 0  #0 pc 1596
	addi	%x7, %x8, 0  #0 pc 1600
	addi	%x8, %x9, 0  #0 pc 1604
	sw	%x1, 8(%x2)  #231 pc 1608
	addi	%x2, %x2, 12  #231 pc 1612
	jal	%x1, make.360  #231 pc 1616
	addi	%x2, %x2, -12  #231 pc 1620
	lw	%x1, 8(%x2) #231 pc 1624
	addi	%x7, %x0, 2  #0 pc 1628
	lw	%x8, 0(%x2)  #232 pc 1632
	sw	%x6, 8(%x2)  #232 pc 1636
	addi	%x6, %x7, 0  #0 pc 1640
	sw	%x1, 12(%x2)  #232 pc 1644
	addi	%x2, %x2, 16  #232 pc 1648
	jal	%x1, make.360  #232 pc 1652
	addi	%x2, %x2, -16  #232 pc 1656
	lw	%x1, 12(%x2) #232 pc 1660
	addi	%x11, %x6, 0  #232 pc 1664
	lw	%x9, 4(%x2)  #233 pc 1668
	lw	%x6, 0(%x9)  #233 pc 1672
	fmv	%f0, l.668  #0 pc 1676
	fsw	%f0, 0(%x6)  #233 pc 1680
	lw	%x6, 0(%x9)  #233 pc 1684
	fmv	%f0, l.672  #0 pc 1688
	fsw	%f0, 4(%x6)  #233 pc 1692
	lw	%x6, 0(%x9)  #233 pc 1696
	fmv	%f0, l.676  #0 pc 1700
	fsw	%f0, 8(%x6)  #233 pc 1704
	lw	%x6, 4(%x9)  #234 pc 1708
	fmv	%f0, l.680  #0 pc 1712
	fsw	%f0, 0(%x6)  #234 pc 1716
	lw	%x6, 4(%x9)  #234 pc 1720
	fmv	%f0, l.684  #0 pc 1724
	fsw	%f0, 4(%x6)  #234 pc 1728
	lw	%x6, 4(%x9)  #234 pc 1732
	fmv	%f0, l.688  #0 pc 1736
	fsw	%f0, 8(%x6)  #234 pc 1740
	lw	%x10, 8(%x2)  #235 pc 1744
	lw	%x6, 0(%x10)  #235 pc 1748
	fmv	%f0, l.692  #0 pc 1752
	fsw	%f0, 0(%x6)  #235 pc 1756
	lw	%x6, 0(%x10)  #235 pc 1760
	fmv	%f0, l.696  #0 pc 1764
	fsw	%f0, 4(%x6)  #235 pc 1768
	lw	%x6, 4(%x10)  #236 pc 1772
	fmv	%f0, l.700  #0 pc 1776
	fsw	%f0, 0(%x6)  #236 pc 1780
	lw	%x6, 4(%x10)  #236 pc 1784
	fmv	%f0, l.704  #0 pc 1788
	fsw	%f0, 4(%x6)  #236 pc 1792
	lw	%x6, 8(%x10)  #237 pc 1796
	fmv	%f0, l.708  #0 pc 1800
	fsw	%f0, 0(%x6)  #237 pc 1804
	lw	%x6, 8(%x10)  #237 pc 1808
	fmv	%f0, l.712  #0 pc 1812
	fsw	%f0, 4(%x6)  #237 pc 1816
	addi	%x6, %x0, 2  #0 pc 1820
	addi	%x7, %x0, 3  #0 pc 1824
	sw	%x11, 12(%x2)  #238 pc 1828
	addi	%x8, %x6, 0  #0 pc 1832
	sw	%x1, 16(%x2)  #238 pc 1836
	addi	%x2, %x2, 20  #238 pc 1840
	jal	%x1, mul.348  #238 pc 1844
	addi	%x2, %x2, -20  #238 pc 1848
	lw	%x1, 16(%x2) #238 pc 1852
	lw	%x6, 12(%x2)  #239 pc 1856
	lw	%x7, 0(%x6)  #239 pc 1860
	flw	%f0, 0(%x7)  #239 pc 1864
	sw	%x1, 16(%x2)  #239 pc 1868
	addi	%x2, %x2, 20  #239 pc 1872
	jal	%x1, min_caml_truncate  #239 pc 1876
	addi	%x2, %x2, -20  #239 pc 1880
	lw	%x1, 16(%x2) #239 pc 1884
	sw	%x1, 16(%x2)  #239 pc 1888
	addi	%x2, %x2, 20  #239 pc 1892
	jal	%x1, print_int.307  #239 pc 1896
	addi	%x2, %x2, -20  #239 pc 1900
	lw	%x1, 16(%x2) #239 pc 1904
	sw	%x1, 16(%x2)  #240 pc 1908
	addi	%x2, %x2, 20  #240 pc 1912
	jal	%x1, min_caml_print_newline  #240 pc 1916
	addi	%x2, %x2, -20  #240 pc 1920
	lw	%x1, 16(%x2) #240 pc 1924
	lw	%x6, 12(%x2)  #241 pc 1928
	lw	%x7, 0(%x6)  #241 pc 1932
	flw	%f0, 4(%x7)  #241 pc 1936
	sw	%x1, 16(%x2)  #241 pc 1940
	addi	%x2, %x2, 20  #241 pc 1944
	jal	%x1, min_caml_truncate  #241 pc 1948
	addi	%x2, %x2, -20  #241 pc 1952
	lw	%x1, 16(%x2) #241 pc 1956
	sw	%x1, 16(%x2)  #241 pc 1960
	addi	%x2, %x2, 20  #241 pc 1964
	jal	%x1, print_int.307  #241 pc 1968
	addi	%x2, %x2, -20  #241 pc 1972
	lw	%x1, 16(%x2) #241 pc 1976
	sw	%x1, 16(%x2)  #242 pc 1980
	addi	%x2, %x2, 20  #242 pc 1984
	jal	%x1, min_caml_print_newline  #242 pc 1988
	addi	%x2, %x2, -20  #242 pc 1992
	lw	%x1, 16(%x2) #242 pc 1996
	lw	%x6, 12(%x2)  #243 pc 2000
	lw	%x7, 4(%x6)  #243 pc 2004
	flw	%f0, 0(%x7)  #243 pc 2008
	sw	%x1, 16(%x2)  #243 pc 2012
	addi	%x2, %x2, 20  #243 pc 2016
	jal	%x1, min_caml_truncate  #243 pc 2020
	addi	%x2, %x2, -20  #243 pc 2024
	lw	%x1, 16(%x2) #243 pc 2028
	sw	%x1, 16(%x2)  #243 pc 2032
	addi	%x2, %x2, 20  #243 pc 2036
	jal	%x1, print_int.307  #243 pc 2040
	addi	%x2, %x2, -20  #243 pc 2044
	lw	%x1, 16(%x2) #243 pc 2048
	sw	%x1, 16(%x2)  #244 pc 2052
	addi	%x2, %x2, 20  #244 pc 2056
	jal	%x1, min_caml_print_newline  #244 pc 2060
	addi	%x2, %x2, -20  #244 pc 2064
	lw	%x1, 16(%x2) #244 pc 2068
	lw	%x6, 12(%x2)  #245 pc 2072
	lw	%x6, 4(%x6)  #245 pc 2076
	flw	%f0, 4(%x6)  #245 pc 2080
	sw	%x1, 16(%x2)  #245 pc 2084
	addi	%x2, %x2, 20  #245 pc 2088
	jal	%x1, min_caml_truncate  #245 pc 2092
	addi	%x2, %x2, -20  #245 pc 2096
	lw	%x1, 16(%x2) #245 pc 2100
	sw	%x1, 16(%x2)  #245 pc 2104
	addi	%x2, %x2, 20  #245 pc 2108
	jal	%x1, print_int.307  #245 pc 2112
	addi	%x2, %x2, -20  #245 pc 2116
	lw	%x1, 16(%x2) #245 pc 2120
	sw	%x1, 16(%x2)  #246 pc 2124
	addi	%x2, %x2, 20  #246 pc 2128
	jal	%x1, min_caml_print_newline  #246 pc 2132
	addi	%x2, %x2, -20  #246 pc 2136
	lw	%x1, 16(%x2) #246 pc 2140
