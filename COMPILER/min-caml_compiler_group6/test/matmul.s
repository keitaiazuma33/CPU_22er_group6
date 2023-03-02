.section	".rodata"
.align	8
l.878:	! 12.000000
l.874:	! 11.000000
l.870:	! 10.000000
l.866:	! 9.000000
l.862:	! 8.000000
l.858:	! 7.000000
l.854:	! 6.000000
l.850:	! 5.000000
l.846:	! 4.000000
l.842:	! 3.000000
l.838:	! 2.000000
l.834:	! 1.000000
l.804:	! 0.000000
.section	".text"
	nop
	j min_caml_start
mul_abs.281:  #pc 8
	addi	%x31, %x0, -1  #pc 8
	beq	%x8, %x31, 12  #57 pc 12
	j	be_else.946 #pc 16
	nop #pc 20
	addi	%x6, %x9, 0  #58 pc 24
	ret #pc 28
	nop #pc 32
be_else.946: #pc 36
	addi	%x10, %x0, 1  #0 pc 36
	sll	%x10, %x10, %x8  #60 pc 40
	and	%x10, %x7, %x10  #60 pc 44
	beq	%x10, %x0, 12  #60 pc 48
	j	be_else.947 #pc 52
	nop #pc 56
	addi	%x8, %x8, -1  #61 pc 60
	j	mul_abs.281  #61 pc 64
	nop #pc 68
be_else.947: #pc 72
	addi	%x10, %x8, -1  #63 pc 72
	sll	%x8, %x6, %x8  #63 pc 76
	add	%x9, %x9, %x8  #63 pc 80
	addi	%x8, %x10, 0  #0 pc 84
	j	mul_abs.281  #63 pc 88
	nop #pc 92
div_abs.289:  #pc 96
	addi	%x31, %x0, -1  #pc 96
	beq	%x8, %x31, 12  #77 pc 100
	j	be_else.948 #pc 104
	nop #pc 108
	addi	%x6, %x9, 0  #78 pc 112
	ret #pc 116
	nop #pc 120
be_else.948: #pc 124
	srl	%x10, %x6, %x8  #80 pc 124
	bge	%x10, %x7, 12  #80 pc 128
	j	ble_else.949 #pc 132
	nop #pc 136
	sll	%x10, %x7, %x8  #81 pc 140
	sub	%x6, %x6, %x10  #81 pc 144
	addi	%x10, %x8, -1  #81 pc 148
	addi	%x11, %x0, 1  #0 pc 152
	sll	%x8, %x11, %x8  #81 pc 156
	add	%x9, %x9, %x8  #81 pc 160
	addi	%x8, %x10, 0  #0 pc 164
	j	div_abs.289  #81 pc 168
	nop #pc 172
ble_else.949: #pc 176
	addi	%x8, %x8, -1  #83 pc 176
	j	div_abs.289  #83 pc 180
	nop #pc 184
print_int.299:  #pc 188
	bge	%x6, %x0, 12  #100 pc 188
	j	bge_else.950 #pc 192
	nop #pc 196
	addi	%x31, %x0, 10  #pc 200
	bge	%x6, %x31, 12  #104 pc 204
	j	bge_else.951 #pc 208
	nop #pc 212
	bge	%x6, %x0, 12  #107 pc 216
	j	bge_else.952 #pc 220
	nop #pc 224
	addi	%x7, %x6, 0  #107 pc 228
	j	bge_cont.953 #pc 232
	nop #pc 236
bge_else.952: #pc 240
	sub	%x7, %x0, %x6  #107 pc 240
bge_cont.953: #pc 244
	addi	%x8, %x0, 10  #0 pc 244
	addi	%x9, %x0, 30  #0 pc 248
	addi	%x10, %x0, 0  #0 pc 252
	sw	%x6, 0(%x2)  #107 pc 256
	addi	%x6, %x7, 0  #0 pc 260
	addi	%x7, %x8, 0  #0 pc 264
	addi	%x8, %x9, 0  #0 pc 268
	addi	%x9, %x10, 0  #0 pc 272
	sw	%x1, 4(%x2)  #107 pc 276
	addi	%x2, %x2, 8  #107 pc 280
	jal	%x1, div_abs.289  #107 pc 284
	addi	%x2, %x2, -8  #107 pc 288
	lw	%x1, 4(%x2) #107 pc 292
	lw	%x7, 0(%x2)  #107 pc 296
	srli	%x8, %x7, 31  #107 pc 300
	beq	%x8, %x0, 12  #107 pc 304
	j	be_else.954 #pc 308
	nop #pc 312
	j	be_cont.955 #pc 316
	nop #pc 320
be_else.954: #pc 324
	sub	%x6, %x0, %x6  #107 pc 324
be_cont.955: #pc 328
	sw	%x6, 4(%x2)  #108 pc 328
	sw	%x1, 8(%x2)  #108 pc 332
	addi	%x2, %x2, 12  #108 pc 336
	jal	%x1, print_int.299  #108 pc 340
	addi	%x2, %x2, -12  #108 pc 344
	lw	%x1, 8(%x2) #108 pc 348
	lw	%x6, 4(%x2)  #109 pc 352
	bge	%x6, %x0, 12  #109 pc 356
	j	bge_else.956 #pc 360
	nop #pc 364
	addi	%x7, %x6, 0  #109 pc 368
	j	bge_cont.957 #pc 372
	nop #pc 376
bge_else.956: #pc 380
	sub	%x7, %x0, %x6  #109 pc 380
bge_cont.957: #pc 384
	addi	%x8, %x0, 10  #0 pc 384
	addi	%x9, %x0, 30  #0 pc 388
	addi	%x10, %x0, 0  #0 pc 392
	addi	%x6, %x7, 0  #0 pc 396
	addi	%x7, %x8, 0  #0 pc 400
	addi	%x8, %x9, 0  #0 pc 404
	addi	%x9, %x10, 0  #0 pc 408
	sw	%x1, 8(%x2)  #109 pc 412
	addi	%x2, %x2, 12  #109 pc 416
	jal	%x1, mul_abs.281  #109 pc 420
	addi	%x2, %x2, -12  #109 pc 424
	lw	%x1, 8(%x2) #109 pc 428
	lw	%x7, 4(%x2)  #109 pc 432
	srli	%x7, %x7, 31  #109 pc 436
	beq	%x7, %x0, 12  #109 pc 440
	j	be_else.958 #pc 444
	nop #pc 448
	j	be_cont.959 #pc 452
	nop #pc 456
be_else.958: #pc 460
	sub	%x6, %x0, %x6  #109 pc 460
be_cont.959: #pc 464
	lw	%x7, 0(%x2)  #109 pc 464
	sub	%x6, %x7, %x6  #109 pc 468
	addi	%x6, %x6, 48  #109 pc 472
	sw	%x6, 0(%x5)  #109 pc 476
	addi	%x5, %x5, 4  #109 pc 480
	ret #pc 484
	nop #pc 488
bge_else.951: #pc 492
	addi	%x6, %x6, 48  #105 pc 492
	sw	%x6, 0(%x5)  #105 pc 496
	addi	%x5, %x5, 4  #105 pc 500
	ret #pc 504
	nop #pc 508
bge_else.950: #pc 512
	addi	%x7, %x0, 45  #0 pc 512
	sw	%x7, 0(%x5)  #101 pc 516
	addi	%x5, %x5, 4  #101 pc 520
	sub	%x6, %x0, %x6  #102 pc 524
	j	print_int.299  #102 pc 528
	nop #pc 532
assign_array.305:  #pc 536
	bge	%x8, %x0, 12  #169 pc 536
	j	bge_else.962 #pc 540
	nop #pc 544
	beq	%x8, %x0, 12  #172 pc 548
	j	be_else.963 #pc 552
	nop #pc 556
	slli	%x8, %x8, 2  #173 pc 560
	add	%x31, %x8, %x6  #173 pc 564
	sw	%x7, 0(%x31)  #173 pc 568
	ret #pc 572
	nop #pc 576
be_else.963: #pc 580
	slli	%x9, %x8, 2  #175 pc 580
	add	%x31, %x9, %x6  #175 pc 584
	sw	%x7, 0(%x31)  #175 pc 588
	addi	%x8, %x8, -1  #176 pc 592
	j	assign_array.305  #176 pc 596
	nop #pc 600
bge_else.962: #pc 604
	ret #pc 604
	nop #pc 608
assign_farray.312:  #pc 612
	bge	%x7, %x0, 12  #188 pc 612
	j	bge_else.966 #pc 616
	nop #pc 620
	beq	%x7, %x0, 12  #191 pc 624
	j	be_else.967 #pc 628
	nop #pc 632
	slli	%x7, %x7, 2  #192 pc 636
	add	%x31, %x7, %x6  #192 pc 640
	fsw	%f0, 0(%x31) #192 pc 644
	ret #pc 648
	nop #pc 652
be_else.967: #pc 656
	slli	%x8, %x7, 2  #194 pc 656
	add	%x31, %x8, %x6  #194 pc 660
	fsw	%f0, 0(%x31) #194 pc 664
	addi	%x7, %x7, -1  #195 pc 668
	j	assign_farray.312  #195 pc 672
	nop #pc 676
bge_else.966: #pc 680
	ret #pc 680
	nop #pc 684
init.429.677:  #pc 688
	lw	%x7, 4(%x29)  #234 pc 688
	bge	%x6, %x0, 12  #234 pc 692
	j	bge_else.970 #pc 696
	nop #pc 700
	fmv	%f0, l.804  #0 pc 704
	addi	%x8, %x3, 0  #234 pc 708
	addi	%x9, %x8, 0  #234 pc 712
	addi	%x8, %x8, 12  #234 pc 716
	addi	%x3, %x8, 0  #234 pc 720
	addi	%x8, %x0, 2  #0 pc 724
	sw	%x29, 0(%x2)  #234 pc 728
	sw	%x7, 4(%x2)  #234 pc 732
	sw	%x9, 8(%x2)  #234 pc 736
	sw	%x6, 12(%x2)  #234 pc 740
	addi	%x7, %x8, 0  #0 pc 744
	addi	%x6, %x9, 0  #0 pc 748
	sw	%x1, 16(%x2)  #234 pc 752
	addi	%x2, %x2, 20  #234 pc 756
	jal	%x1, assign_farray.312  #234 pc 760
	addi	%x2, %x2, -20  #234 pc 764
	lw	%x1, 16(%x2) #234 pc 768
	lw	%x6, 12(%x2)  #234 pc 772
	slli	%x7, %x6, 2  #234 pc 776
	lw	%x8, 4(%x2)  #234 pc 780
	lw	%x9, 8(%x2)  #234 pc 784
	add	%x31, %x7, %x8  #234 pc 788
	sw	%x9, 0(%x31)  #234 pc 792
	addi	%x6, %x6, -1  #234 pc 796
	lw	%x29, 0(%x2)  #234 pc 800
	lw	%x30, 0(%x29)  #234 pc 804
	jalr	%x0, %x30, 0  #234 pc 808
	nop #pc 812
bge_else.970: #pc 816
	ret #pc 816
	nop #pc 820
init.429.665:  #pc 824
	lw	%x7, 4(%x29)  #235 pc 824
	bge	%x6, %x0, 12  #235 pc 828
	j	bge_else.972 #pc 832
	nop #pc 836
	fmv	%f0, l.804  #0 pc 840
	addi	%x8, %x3, 0  #235 pc 844
	addi	%x9, %x8, 0  #235 pc 848
	addi	%x8, %x8, 8  #235 pc 852
	addi	%x3, %x8, 0  #235 pc 856
	addi	%x8, %x0, 1  #0 pc 860
	sw	%x29, 0(%x2)  #235 pc 864
	sw	%x7, 4(%x2)  #235 pc 868
	sw	%x9, 8(%x2)  #235 pc 872
	sw	%x6, 12(%x2)  #235 pc 876
	addi	%x7, %x8, 0  #0 pc 880
	addi	%x6, %x9, 0  #0 pc 884
	sw	%x1, 16(%x2)  #235 pc 888
	addi	%x2, %x2, 20  #235 pc 892
	jal	%x1, assign_farray.312  #235 pc 896
	addi	%x2, %x2, -20  #235 pc 900
	lw	%x1, 16(%x2) #235 pc 904
	lw	%x6, 12(%x2)  #235 pc 908
	slli	%x7, %x6, 2  #235 pc 912
	lw	%x8, 4(%x2)  #235 pc 916
	lw	%x9, 8(%x2)  #235 pc 920
	add	%x31, %x7, %x8  #235 pc 924
	sw	%x9, 0(%x31)  #235 pc 928
	addi	%x6, %x6, -1  #235 pc 932
	lw	%x29, 0(%x2)  #235 pc 936
	lw	%x30, 0(%x29)  #235 pc 940
	jalr	%x0, %x30, 0  #235 pc 944
	nop #pc 948
bge_else.972: #pc 952
	ret #pc 952
	nop #pc 956
init.429.653:  #pc 960
	lw	%x7, 4(%x29)  #236 pc 960
	bge	%x6, %x0, 12  #236 pc 964
	j	bge_else.974 #pc 968
	nop #pc 972
	fmv	%f0, l.804  #0 pc 976
	addi	%x8, %x3, 0  #236 pc 980
	addi	%x9, %x8, 0  #236 pc 984
	addi	%x8, %x8, 8  #236 pc 988
	addi	%x3, %x8, 0  #236 pc 992
	addi	%x8, %x0, 1  #0 pc 996
	sw	%x29, 0(%x2)  #236 pc 1000
	sw	%x7, 4(%x2)  #236 pc 1004
	sw	%x9, 8(%x2)  #236 pc 1008
	sw	%x6, 12(%x2)  #236 pc 1012
	addi	%x7, %x8, 0  #0 pc 1016
	addi	%x6, %x9, 0  #0 pc 1020
	sw	%x1, 16(%x2)  #236 pc 1024
	addi	%x2, %x2, 20  #236 pc 1028
	jal	%x1, assign_farray.312  #236 pc 1032
	addi	%x2, %x2, -20  #236 pc 1036
	lw	%x1, 16(%x2) #236 pc 1040
	lw	%x6, 12(%x2)  #236 pc 1044
	slli	%x7, %x6, 2  #236 pc 1048
	lw	%x8, 4(%x2)  #236 pc 1052
	lw	%x9, 8(%x2)  #236 pc 1056
	add	%x31, %x7, %x8  #236 pc 1060
	sw	%x9, 0(%x31)  #236 pc 1064
	addi	%x6, %x6, -1  #236 pc 1068
	lw	%x29, 0(%x2)  #236 pc 1072
	lw	%x30, 0(%x29)  #236 pc 1076
	jalr	%x0, %x30, 0  #236 pc 1080
	nop #pc 1084
bge_else.974: #pc 1088
	ret #pc 1088
	nop #pc 1092
loop3.455.632:  #pc 1096
	lw	%x7, 20(%x29)  #242 pc 1096
	lw	%x8, 16(%x29)  #242 pc 1100
	lw	%x9, 12(%x29)  #242 pc 1104
	lw	%x10, 8(%x29)  #242 pc 1108
	lw	%x11, 4(%x29)  #242 pc 1112
	bge	%x6, %x0, 12  #242 pc 1116
	j	bge_else.976 #pc 1120
	nop #pc 1124
	slli	%x12, %x8, 2  #242 pc 1128
	add	%x31, %x12, %x11  #242 pc 1132
	lw	%x12, 0(%x31)  #242 pc 1136
	slli	%x13, %x8, 2  #242 pc 1140
	add	%x31, %x13, %x11  #242 pc 1144
	lw	%x11, 0(%x31)  #242 pc 1148
	slli	%x13, %x7, 2  #242 pc 1152
	add	%x31, %x13, %x11  #242 pc 1156
	flw	%f0, 0(%x31)  #242 pc 1160
	slli	%x8, %x8, 2  #242 pc 1164
	add	%x31, %x8, %x9  #242 pc 1168
	lw	%x8, 0(%x31)  #242 pc 1172
	slli	%x9, %x6, 2  #242 pc 1176
	add	%x31, %x9, %x8  #242 pc 1180
	flw	%f1, 0(%x31)  #242 pc 1184
	slli	%x8, %x6, 2  #242 pc 1188
	add	%x31, %x8, %x10  #242 pc 1192
	lw	%x8, 0(%x31)  #242 pc 1196
	slli	%x9, %x7, 2  #242 pc 1200
	add	%x31, %x9, %x8  #242 pc 1204
	flw	%f2, 0(%x31)  #242 pc 1208
	fmul	%f1, %f1, %f2  #242 pc 1212
	fadd	%f0, %f0, %f1  #242 pc 1216
	slli	%x7, %x7, 2  #242 pc 1220
	add	%x31, %x7, %x12  #242 pc 1224
	fsw	%f0, 0(%x31) #242 pc 1228
	addi	%x6, %x6, -1  #242 pc 1232
	lw	%x30, 0(%x29)  #242 pc 1236
	jalr	%x0, %x30, 0  #242 pc 1240
	nop #pc 1244
bge_else.976: #pc 1248
	ret #pc 1248
	nop #pc 1252
loop2.447.624:  #pc 1256
	lw	%x7, 16(%x29)  #242 pc 1256
	lw	%x8, 12(%x29)  #242 pc 1260
	lw	%x9, 8(%x29)  #242 pc 1264
	lw	%x10, 4(%x29)  #242 pc 1268
	bge	%x6, %x0, 12  #242 pc 1272
	j	bge_else.978 #pc 1276
	nop #pc 1280
	addi	%x11, %x3, 0  #242 pc 1284
	addi	%x3, %x3, 24  #242 pc 1288
	addi	%x12, %x0, 1096  #242 loop3.455.632 pc 1292
	sw	%x12, 0(%x11)  #242 pc 1296
	sw	%x6, 20(%x11)  #242 pc 1300
	sw	%x7, 16(%x11)  #242 pc 1304
	sw	%x8, 12(%x11)  #242 pc 1308
	sw	%x9, 8(%x11)  #242 pc 1312
	sw	%x10, 4(%x11)  #242 pc 1316
	addi	%x7, %x0, 2  #0 pc 1320
	sw	%x29, 0(%x2)  #242 pc 1324
	sw	%x6, 4(%x2)  #242 pc 1328
	addi	%x6, %x7, 0  #0 pc 1332
	addi	%x29, %x11, 0  #0 pc 1336
	sw	%x1, 8(%x2)  #242 pc 1340
	lw	%x30, 0(%x29)  #242 pc 1344
	addi	%x2, %x2, 12  #242 pc 1348
	jalr	%x1, %x30, 0  #242 pc 1352
	addi	%x2, %x2, -12  #242 pc 1356
	lw	%x1, 8(%x2)  #242 pc 1360
	lw	%x6, 4(%x2)  #242 pc 1364
	addi	%x6, %x6, -1  #242 pc 1368
	lw	%x29, 0(%x2)  #242 pc 1372
	lw	%x30, 0(%x29)  #242 pc 1376
	jalr	%x0, %x30, 0  #242 pc 1380
	nop #pc 1384
bge_else.978: #pc 1388
	ret #pc 1388
	nop #pc 1392
loop1.442.619:  #pc 1396
	lw	%x7, 12(%x29)  #242 pc 1396
	lw	%x8, 8(%x29)  #242 pc 1400
	lw	%x9, 4(%x29)  #242 pc 1404
	bge	%x6, %x0, 12  #242 pc 1408
	j	bge_else.980 #pc 1412
	nop #pc 1416
	addi	%x10, %x3, 0  #242 pc 1420
	addi	%x3, %x3, 20  #242 pc 1424
	addi	%x11, %x0, 1256  #242 loop2.447.624 pc 1428
	sw	%x11, 0(%x10)  #242 pc 1432
	sw	%x6, 16(%x10)  #242 pc 1436
	sw	%x7, 12(%x10)  #242 pc 1440
	sw	%x8, 8(%x10)  #242 pc 1444
	sw	%x9, 4(%x10)  #242 pc 1448
	addi	%x7, %x0, 1  #0 pc 1452
	sw	%x29, 0(%x2)  #242 pc 1456
	sw	%x6, 4(%x2)  #242 pc 1460
	addi	%x6, %x7, 0  #0 pc 1464
	addi	%x29, %x10, 0  #0 pc 1468
	sw	%x1, 8(%x2)  #242 pc 1472
	lw	%x30, 0(%x29)  #242 pc 1476
	addi	%x2, %x2, 12  #242 pc 1480
	jalr	%x1, %x30, 0  #242 pc 1484
	addi	%x2, %x2, -12  #242 pc 1488
	lw	%x1, 8(%x2)  #242 pc 1492
	lw	%x6, 4(%x2)  #242 pc 1496
	addi	%x6, %x6, -1  #242 pc 1500
	lw	%x29, 0(%x2)  #242 pc 1504
	lw	%x30, 0(%x29)  #242 pc 1508
	jalr	%x0, %x30, 0  #242 pc 1512
	nop #pc 1516
bge_else.980: #pc 1520
	ret #pc 1520
	nop #pc 1524
.global	min_caml_start
min_caml_start:
	addi	%x31, %x0, 1
	slli	%x4, %x31, 13
	slli	%x5, %x31, 16
	slli	%x2, %x31, 24
	add	%x3, %x2, %x4
	fmv	%f0, l.804  #0 pc 1548
	addi	%x6, %x3, 0  #225 pc 1552
	addi	%x7, %x6, 0  #225 pc 1556
	addi	%x6, %x6, 0  #225 pc 1560
	addi	%x3, %x6, 0  #225 pc 1564
	addi	%x6, %x0, -1  #0 pc 1568
	sw	%x7, 0(%x2)  #225 pc 1572
	addi	%x30, %x7, 0  #0 pc 1576
	addi	%x7, %x6, 0  #0 pc 1580
	addi	%x6, %x30, 0  #0 pc 1584
	sw	%x1, 4(%x2)  #225 pc 1588
	addi	%x2, %x2, 8  #225 pc 1592
	jal	%x1, assign_farray.312  #225 pc 1596
	addi	%x2, %x2, -8  #225 pc 1600
	lw	%x1, 4(%x2) #225 pc 1604
	addi	%x6, %x3, 0  #234 pc 1608
	addi	%x7, %x6, 0  #234 pc 1612
	addi	%x6, %x6, 8  #234 pc 1616
	addi	%x3, %x6, 0  #234 pc 1620
	addi	%x8, %x0, 1  #0 pc 1624
	lw	%x6, 0(%x2)  #234 pc 1628
	sw	%x7, 4(%x2)  #234 pc 1632
	addi	%x30, %x7, 0  #0 pc 1636
	addi	%x7, %x6, 0  #0 pc 1640
	addi	%x6, %x30, 0  #0 pc 1644
	sw	%x1, 8(%x2)  #234 pc 1648
	addi	%x2, %x2, 12  #234 pc 1652
	jal	%x1, assign_array.305  #234 pc 1656
	addi	%x2, %x2, -12  #234 pc 1660
	lw	%x1, 8(%x2) #234 pc 1664
	addi	%x29, %x3, 0  #234 pc 1668
	addi	%x3, %x3, 8  #234 pc 1672
	addi	%x6, %x0, 688  #234 init.429.677 pc 1676
	sw	%x6, 0(%x29)  #234 pc 1680
	lw	%x6, 4(%x2)  #234 pc 1684
	sw	%x6, 4(%x29)  #234 pc 1688
	addi	%x7, %x0, 1  #0 pc 1692
	addi	%x6, %x7, 0  #0 pc 1696
	sw	%x1, 8(%x2)  #234 pc 1700
	lw	%x30, 0(%x29)  #234 pc 1704
	addi	%x2, %x2, 12  #234 pc 1708
	jalr	%x1, %x30, 0  #234 pc 1712
	addi	%x2, %x2, -12  #234 pc 1716
	lw	%x1, 8(%x2)  #234 pc 1720
	addi	%x6, %x3, 0  #235 pc 1724
	addi	%x7, %x6, 0  #235 pc 1728
	addi	%x6, %x6, 12  #235 pc 1732
	addi	%x3, %x6, 0  #235 pc 1736
	addi	%x8, %x0, 2  #0 pc 1740
	lw	%x6, 0(%x2)  #235 pc 1744
	sw	%x7, 8(%x2)  #235 pc 1748
	addi	%x30, %x7, 0  #0 pc 1752
	addi	%x7, %x6, 0  #0 pc 1756
	addi	%x6, %x30, 0  #0 pc 1760
	sw	%x1, 12(%x2)  #235 pc 1764
	addi	%x2, %x2, 16  #235 pc 1768
	jal	%x1, assign_array.305  #235 pc 1772
	addi	%x2, %x2, -16  #235 pc 1776
	lw	%x1, 12(%x2) #235 pc 1780
	addi	%x29, %x3, 0  #235 pc 1784
	addi	%x3, %x3, 8  #235 pc 1788
	addi	%x6, %x0, 824  #235 init.429.665 pc 1792
	sw	%x6, 0(%x29)  #235 pc 1796
	lw	%x6, 8(%x2)  #235 pc 1800
	sw	%x6, 4(%x29)  #235 pc 1804
	addi	%x7, %x0, 2  #0 pc 1808
	addi	%x6, %x7, 0  #0 pc 1812
	sw	%x1, 12(%x2)  #235 pc 1816
	lw	%x30, 0(%x29)  #235 pc 1820
	addi	%x2, %x2, 16  #235 pc 1824
	jalr	%x1, %x30, 0  #235 pc 1828
	addi	%x2, %x2, -16  #235 pc 1832
	lw	%x1, 12(%x2)  #235 pc 1836
	addi	%x6, %x3, 0  #236 pc 1840
	addi	%x7, %x6, 0  #236 pc 1844
	addi	%x6, %x6, 8  #236 pc 1848
	addi	%x3, %x6, 0  #236 pc 1852
	addi	%x8, %x0, 1  #0 pc 1856
	lw	%x6, 0(%x2)  #236 pc 1860
	sw	%x7, 12(%x2)  #236 pc 1864
	addi	%x30, %x7, 0  #0 pc 1868
	addi	%x7, %x6, 0  #0 pc 1872
	addi	%x6, %x30, 0  #0 pc 1876
	sw	%x1, 16(%x2)  #236 pc 1880
	addi	%x2, %x2, 20  #236 pc 1884
	jal	%x1, assign_array.305  #236 pc 1888
	addi	%x2, %x2, -20  #236 pc 1892
	lw	%x1, 16(%x2) #236 pc 1896
	addi	%x29, %x3, 0  #236 pc 1900
	addi	%x3, %x3, 8  #236 pc 1904
	addi	%x6, %x0, 960  #236 init.429.653 pc 1908
	sw	%x6, 0(%x29)  #236 pc 1912
	lw	%x6, 12(%x2)  #236 pc 1916
	sw	%x6, 4(%x29)  #236 pc 1920
	addi	%x7, %x0, 1  #0 pc 1924
	addi	%x6, %x7, 0  #0 pc 1928
	sw	%x1, 16(%x2)  #236 pc 1932
	lw	%x30, 0(%x29)  #236 pc 1936
	addi	%x2, %x2, 20  #236 pc 1940
	jalr	%x1, %x30, 0  #236 pc 1944
	addi	%x2, %x2, -20  #236 pc 1948
	lw	%x1, 16(%x2)  #236 pc 1952
	lw	%x6, 4(%x2)  #237 pc 1956
	lw	%x7, 0(%x6)  #237 pc 1960
	fmv	%f0, l.834  #0 pc 1964
	fsw	%f0, 0(%x7)  #237 pc 1968
	lw	%x7, 0(%x6)  #237 pc 1972
	fmv	%f0, l.838  #0 pc 1976
	fsw	%f0, 4(%x7)  #237 pc 1980
	lw	%x7, 0(%x6)  #237 pc 1984
	fmv	%f0, l.842  #0 pc 1988
	fsw	%f0, 8(%x7)  #237 pc 1992
	lw	%x7, 4(%x6)  #238 pc 1996
	fmv	%f0, l.846  #0 pc 2000
	fsw	%f0, 0(%x7)  #238 pc 2004
	lw	%x7, 4(%x6)  #238 pc 2008
	fmv	%f0, l.850  #0 pc 2012
	fsw	%f0, 4(%x7)  #238 pc 2016
	lw	%x7, 4(%x6)  #238 pc 2020
	fmv	%f0, l.854  #0 pc 2024
	fsw	%f0, 8(%x7)  #238 pc 2028
	lw	%x7, 8(%x2)  #239 pc 2032
	lw	%x8, 0(%x7)  #239 pc 2036
	fmv	%f0, l.858  #0 pc 2040
	fsw	%f0, 0(%x8)  #239 pc 2044
	lw	%x8, 0(%x7)  #239 pc 2048
	fmv	%f0, l.862  #0 pc 2052
	fsw	%f0, 4(%x8)  #239 pc 2056
	lw	%x8, 4(%x7)  #240 pc 2060
	fmv	%f0, l.866  #0 pc 2064
	fsw	%f0, 0(%x8)  #240 pc 2068
	lw	%x8, 4(%x7)  #240 pc 2072
	fmv	%f0, l.870  #0 pc 2076
	fsw	%f0, 4(%x8)  #240 pc 2080
	lw	%x8, 8(%x7)  #241 pc 2084
	fmv	%f0, l.874  #0 pc 2088
	fsw	%f0, 0(%x8)  #241 pc 2092
	lw	%x8, 8(%x7)  #241 pc 2096
	fmv	%f0, l.878  #0 pc 2100
	fsw	%f0, 4(%x8)  #241 pc 2104
	addi	%x29, %x3, 0  #242 pc 2108
	addi	%x3, %x3, 16  #242 pc 2112
	addi	%x8, %x0, 1396  #242 loop1.442.619 pc 2116
	sw	%x8, 0(%x29)  #242 pc 2120
	sw	%x6, 12(%x29)  #242 pc 2124
	sw	%x7, 8(%x29)  #242 pc 2128
	lw	%x6, 12(%x2)  #242 pc 2132
	sw	%x6, 4(%x29)  #242 pc 2136
	addi	%x7, %x0, 1  #0 pc 2140
	addi	%x6, %x7, 0  #0 pc 2144
	sw	%x1, 16(%x2)  #242 pc 2148
	lw	%x30, 0(%x29)  #242 pc 2152
	addi	%x2, %x2, 20  #242 pc 2156
	jalr	%x1, %x30, 0  #242 pc 2160
	addi	%x2, %x2, -20  #242 pc 2164
	lw	%x1, 16(%x2)  #242 pc 2168
	lw	%x6, 12(%x2)  #243 pc 2172
	lw	%x7, 0(%x6)  #243 pc 2176
	flw	%f0, 0(%x7)  #243 pc 2180
	ftoi	%x7, %f0  #243 pc 2184
	addi	%x6, %x7, 0  #0 pc 2188
	sw	%x1, 16(%x2)  #243 pc 2192
	addi	%x2, %x2, 20  #243 pc 2196
	jal	%x1, print_int.299  #243 pc 2200
	addi	%x2, %x2, -20  #243 pc 2204
	lw	%x1, 16(%x2) #243 pc 2208
	lw	%x6, 12(%x2)  #244 pc 2212
	lw	%x7, 0(%x6)  #244 pc 2216
	flw	%f0, 4(%x7)  #244 pc 2220
	ftoi	%x7, %f0  #244 pc 2224
	addi	%x6, %x7, 0  #0 pc 2228
	sw	%x1, 16(%x2)  #244 pc 2232
	addi	%x2, %x2, 20  #244 pc 2236
	jal	%x1, print_int.299  #244 pc 2240
	addi	%x2, %x2, -20  #244 pc 2244
	lw	%x1, 16(%x2) #244 pc 2248
	lw	%x6, 12(%x2)  #245 pc 2252
	lw	%x7, 4(%x6)  #245 pc 2256
	flw	%f0, 0(%x7)  #245 pc 2260
	ftoi	%x7, %f0  #245 pc 2264
	addi	%x6, %x7, 0  #0 pc 2268
	sw	%x1, 16(%x2)  #245 pc 2272
	addi	%x2, %x2, 20  #245 pc 2276
	jal	%x1, print_int.299  #245 pc 2280
	addi	%x2, %x2, -20  #245 pc 2284
	lw	%x1, 16(%x2) #245 pc 2288
	lw	%x6, 12(%x2)  #246 pc 2292
	lw	%x6, 4(%x6)  #246 pc 2296
	flw	%f0, 4(%x6)  #246 pc 2300
	ftoi	%x6, %f0  #246 pc 2304
	sw	%x1, 16(%x2)  #246 pc 2308
	addi	%x2, %x2, 20  #246 pc 2312
	jal	%x1, print_int.299  #246 pc 2316
	addi	%x2, %x2, -20  #246 pc 2320
	lw	%x1, 16(%x2) #246 pc 2324
