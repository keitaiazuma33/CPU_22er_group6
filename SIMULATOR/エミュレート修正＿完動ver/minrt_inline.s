.section	".rodata"
.align	8
l.23657:	! -200.000000
l.23654:	! 200.000000
l.23502:	! 128.000000
l.23422:	! 0.900000
l.22930:	! 150.000000
l.22766:	! -150.000000
l.22736:	! 0.100000
l.22680:	! -2.000000
l.22665:	! 0.003906
l.22630:	! 20.000000
l.22627:	! 0.050000
l.22618:	! 0.250000
l.22608:	! 10.000000
l.22601:	! 0.300000
l.22599:	! 255.000000
l.22593:	! 0.150000
l.22577:	! 3.141593
l.22575:	! 30.000000
l.22573:	! 0.090909
l.22571:	! 0.111111
l.22569:	! 0.142857
l.22567:	! 0.200000
l.22565:	! 0.333333
l.22563:	! 15.000000
l.22561:	! 0.000100
l.22445:	! 100000000.000000
l.22439:	! 1000000000.000000
l.22132:	! -0.100000
l.22060:	! 0.010000
l.22058:	! -0.200000
l.21839:	! 2.000000
l.21791:	! -1.000000
l.21765:	! 0.017453
l.21737:	! 0.001389
l.21735:	! 0.041667
l.21733:	! 0.500000
l.21731:	! 1.000000
l.21722:	! 0.000000
l.21720:	! 0.000198
l.21718:	! 0.008333
l.21716:	! 0.166667
l.21713:	! 3.141593
l.21710:	! 6.283185
.section	".text"
	nop
	j min_caml_start
sin.2526:  #pc 8
	fmv	%f1, l.21710  #0 pc 8
	fle	%x31, %f0, %f1  #24 pc 12
	blt	%x0, %x31, 12  #24 pc 16
	j	fble_else.24944 #pc 20
	nop #pc 24
	fmv	%f1, l.21713  #0 pc 28
	fle	%x31, %f0, %f1  #27 pc 32
	blt	%x0, %x31, 12  #27 pc 36
	j	fble_else.24945 #pc 40
	nop #pc 44
	fmv	%f1, l.21722  #0 pc 48
	fle	%x31, %f1, %f0  #30 pc 52
	blt	%x0, %x31, 12  #30 pc 56
	j	fble_else.24946 #pc 60
	nop #pc 64
	fmul	%f1, %f0, %f0  #33 pc 68
	fmul	%f2, %f0, %f1  #33 pc 72
	fmul	%f3, %f2, %f1  #33 pc 76
	fmul	%f1, %f3, %f1  #33 pc 80
	fmv	%f4, l.21716  #0 pc 84
	fmul	%f2, %f4, %f2  #33 pc 88
	fsub	%f0, %f0, %f2  #33 pc 92
	fmv	%f2, l.21718  #0 pc 96
	fmul	%f2, %f2, %f3  #33 pc 100
	fadd	%f0, %f0, %f2  #33 pc 104
	fmv	%f2, l.21720  #0 pc 108
	fmul	%f1, %f2, %f1  #33 pc 112
	fsub	%f0, %f0, %f1  #33 pc 116
	ret #pc 120
	nop #pc 124
fble_else.24946: #pc 128
	fsub	%f0, %f30, %f0  #31 pc 128
	sw	%x1, 0(%x2)  #31 pc 132
	addi	%x2, %x2, 4  #31 pc 136
	jal	%x1, sin.2526  #31 pc 140
	addi	%x2, %x2, -4  #31 pc 144
	lw	%x1, 0(%x2) #31 pc 148
	fsub	%f0, %f30, %f0  #31 pc 152
	ret #pc 156
	nop #pc 160
fble_else.24945: #pc 164
	fmv	%f1, l.21713  #0 pc 164
	fsub	%f0, %f0, %f1  #28 pc 168
	fmul	%f1, %f0, %f0  #28 pc 172
	fmul	%f2, %f0, %f1  #28 pc 176
	fmul	%f3, %f2, %f1  #28 pc 180
	fmul	%f1, %f3, %f1  #28 pc 184
	fmv	%f4, l.21716  #0 pc 188
	fmul	%f2, %f4, %f2  #28 pc 192
	fsub	%f0, %f0, %f2  #28 pc 196
	fmv	%f2, l.21718  #0 pc 200
	fmul	%f2, %f2, %f3  #28 pc 204
	fadd	%f0, %f0, %f2  #28 pc 208
	fmv	%f2, l.21720  #0 pc 212
	fmul	%f1, %f2, %f1  #28 pc 216
	fsub	%f0, %f0, %f1  #28 pc 220
	fsub	%f0, %f30, %f0  #28 pc 224
	ret #pc 228
	nop #pc 232
fble_else.24944: #pc 236
	fmv	%f1, l.21710  #0 pc 236
	fsub	%f0, %f0, %f1  #25 pc 240
	j	sin.2526  #25 pc 244
	nop #pc 248
cos.2530:  #pc 252
	fmv	%f1, l.21710  #0 pc 252
	fle	%x31, %f0, %f1  #44 pc 256
	blt	%x0, %x31, 12  #44 pc 260
	j	fble_else.24947 #pc 264
	nop #pc 268
	fmv	%f1, l.21713  #0 pc 272
	fle	%x31, %f0, %f1  #47 pc 276
	blt	%x0, %x31, 12  #47 pc 280
	j	fble_else.24948 #pc 284
	nop #pc 288
	fmv	%f1, l.21722  #0 pc 292
	fle	%x31, %f1, %f0  #50 pc 296
	blt	%x0, %x31, 12  #50 pc 300
	j	fble_else.24949 #pc 304
	nop #pc 308
	fmul	%f0, %f0, %f0  #53 pc 312
	fmul	%f1, %f0, %f0  #53 pc 316
	fmul	%f2, %f1, %f0  #53 pc 320
	fmv	%f3, l.21731  #0 pc 324
	fmv	%f4, l.21733  #0 pc 328
	fmul	%f0, %f4, %f0  #53 pc 332
	fsub	%f0, %f3, %f0  #53 pc 336
	fmv	%f3, l.21735  #0 pc 340
	fmul	%f1, %f3, %f1  #53 pc 344
	fadd	%f0, %f0, %f1  #53 pc 348
	fmv	%f1, l.21737  #0 pc 352
	fmul	%f1, %f1, %f2  #53 pc 356
	fsub	%f0, %f0, %f1  #53 pc 360
	ret #pc 364
	nop #pc 368
fble_else.24949: #pc 372
	fsub	%f0, %f30, %f0  #51 pc 372
	j	cos.2530  #51 pc 376
	nop #pc 380
fble_else.24948: #pc 384
	fmv	%f1, l.21713  #0 pc 384
	fsub	%f0, %f0, %f1  #48 pc 388
	fmul	%f0, %f0, %f0  #48 pc 392
	fmul	%f1, %f0, %f0  #48 pc 396
	fmul	%f2, %f1, %f0  #48 pc 400
	fmv	%f3, l.21731  #0 pc 404
	fmv	%f4, l.21733  #0 pc 408
	fmul	%f0, %f4, %f0  #48 pc 412
	fsub	%f0, %f3, %f0  #48 pc 416
	fmv	%f3, l.21735  #0 pc 420
	fmul	%f1, %f3, %f1  #48 pc 424
	fadd	%f0, %f0, %f1  #48 pc 428
	fmv	%f1, l.21737  #0 pc 432
	fmul	%f1, %f1, %f2  #48 pc 436
	fsub	%f0, %f0, %f1  #48 pc 440
	fsub	%f0, %f30, %f0  #48 pc 444
	ret #pc 448
	nop #pc 452
fble_else.24947: #pc 456
	fmv	%f1, l.21710  #0 pc 456
	fsub	%f0, %f0, %f1  #45 pc 460
	j	cos.2530  #45 pc 464
	nop #pc 468
mul_abs.2542:  #pc 472
	addi	%x31, %x0, -1  #pc 472
	beq	%x8, %x31, 12  #84 pc 476
	j	be_else.24950 #pc 480
	nop #pc 484
	addi	%x6, %x9, 0  #85 pc 488
	ret #pc 492
	nop #pc 496
be_else.24950: #pc 500
	addi	%x10, %x0, 1  #0 pc 500
	sll	%x10, %x10, %x8  #87 pc 504
	and	%x10, %x7, %x10  #87 pc 508
	beq	%x10, %x0, 12  #87 pc 512
	j	be_else.24951 #pc 516
	nop #pc 520
	addi	%x8, %x8, -1  #88 pc 524
	j	mul_abs.2542  #88 pc 528
	nop #pc 532
be_else.24951: #pc 536
	addi	%x10, %x8, -1  #90 pc 536
	sll	%x8, %x6, %x8  #90 pc 540
	add	%x9, %x9, %x8  #90 pc 544
	addi	%x8, %x10, 0  #0 pc 548
	j	mul_abs.2542  #90 pc 552
	nop #pc 556
div_abs.2550:  #pc 560
	addi	%x31, %x0, -1  #pc 560
	beq	%x8, %x31, 12  #104 pc 564
	j	be_else.24952 #pc 568
	nop #pc 572
	addi	%x6, %x9, 0  #105 pc 576
	ret #pc 580
	nop #pc 584
be_else.24952: #pc 588
	srl	%x10, %x6, %x8  #107 pc 588
	bge	%x10, %x7, 12  #107 pc 592
	j	ble_else.24953 #pc 596
	nop #pc 600
	sll	%x10, %x7, %x8  #108 pc 604
	sub	%x6, %x6, %x10  #108 pc 608
	addi	%x10, %x8, -1  #108 pc 612
	addi	%x11, %x0, 1  #0 pc 616
	sll	%x8, %x11, %x8  #108 pc 620
	add	%x9, %x9, %x8  #108 pc 624
	addi	%x8, %x10, 0  #0 pc 628
	j	div_abs.2550  #108 pc 632
	nop #pc 636
ble_else.24953: #pc 640
	addi	%x8, %x8, -1  #110 pc 640
	j	div_abs.2550  #110 pc 644
	nop #pc 648
print_int.2560:  #pc 652
	bge	%x6, %x0, 12  #127 pc 652
	j	bge_else.24954 #pc 656
	nop #pc 660
	addi	%x31, %x0, 10  #pc 664
	bge	%x6, %x31, 12  #131 pc 668
	j	bge_else.24955 #pc 672
	nop #pc 676
	bge	%x6, %x0, 12  #134 pc 680
	j	bge_else.24956 #pc 684
	nop #pc 688
	addi	%x7, %x6, 0  #134 pc 692
	j	bge_cont.24957 #pc 696
	nop #pc 700
bge_else.24956: #pc 704
	sub	%x7, %x0, %x6  #134 pc 704
bge_cont.24957: #pc 708
	addi	%x8, %x0, 10  #0 pc 708
	addi	%x9, %x0, 30  #0 pc 712
	addi	%x10, %x0, 0  #0 pc 716
	sw	%x6, 0(%x2)  #134 pc 720
	addi	%x6, %x7, 0  #0 pc 724
	addi	%x7, %x8, 0  #0 pc 728
	addi	%x8, %x9, 0  #0 pc 732
	addi	%x9, %x10, 0  #0 pc 736
	sw	%x1, 4(%x2)  #134 pc 740
	addi	%x2, %x2, 8  #134 pc 744
	jal	%x1, div_abs.2550  #134 pc 748
	addi	%x2, %x2, -8  #134 pc 752
	lw	%x1, 4(%x2) #134 pc 756
	lw	%x7, 0(%x2)  #134 pc 760
	srli	%x8, %x7, 31  #134 pc 764
	beq	%x8, %x0, 12  #134 pc 768
	j	be_else.24958 #pc 772
	nop #pc 776
	j	be_cont.24959 #pc 780
	nop #pc 784
be_else.24958: #pc 788
	sub	%x6, %x0, %x6  #134 pc 788
be_cont.24959: #pc 792
	sw	%x6, 4(%x2)  #135 pc 792
	sw	%x1, 8(%x2)  #135 pc 796
	addi	%x2, %x2, 12  #135 pc 800
	jal	%x1, print_int.2560  #135 pc 804
	addi	%x2, %x2, -12  #135 pc 808
	lw	%x1, 8(%x2) #135 pc 812
	lw	%x6, 4(%x2)  #136 pc 816
	bge	%x6, %x0, 12  #136 pc 820
	j	bge_else.24960 #pc 824
	nop #pc 828
	addi	%x7, %x6, 0  #136 pc 832
	j	bge_cont.24961 #pc 836
	nop #pc 840
bge_else.24960: #pc 844
	sub	%x7, %x0, %x6  #136 pc 844
bge_cont.24961: #pc 848
	addi	%x8, %x0, 10  #0 pc 848
	addi	%x9, %x0, 30  #0 pc 852
	addi	%x10, %x0, 0  #0 pc 856
	addi	%x6, %x7, 0  #0 pc 860
	addi	%x7, %x8, 0  #0 pc 864
	addi	%x8, %x9, 0  #0 pc 868
	addi	%x9, %x10, 0  #0 pc 872
	sw	%x1, 8(%x2)  #136 pc 876
	addi	%x2, %x2, 12  #136 pc 880
	jal	%x1, mul_abs.2542  #136 pc 884
	addi	%x2, %x2, -12  #136 pc 888
	lw	%x1, 8(%x2) #136 pc 892
	lw	%x7, 4(%x2)  #136 pc 896
	srli	%x7, %x7, 31  #136 pc 900
	beq	%x7, %x0, 12  #136 pc 904
	j	be_else.24962 #pc 908
	nop #pc 912
	j	be_cont.24963 #pc 916
	nop #pc 920
be_else.24962: #pc 924
	sub	%x6, %x0, %x6  #136 pc 924
be_cont.24963: #pc 928
	lw	%x7, 0(%x2)  #136 pc 928
	sub	%x6, %x7, %x6  #136 pc 932
	addi	%x6, %x6, 48  #136 pc 936
	sw	%x6, 0(%x5)  #136 pc 940
	addi	%x5, %x5, 4  #136 pc 944
	ret #pc 948
	nop #pc 952
bge_else.24955: #pc 956
	addi	%x6, %x6, 48  #132 pc 956
	sw	%x6, 0(%x5)  #132 pc 960
	addi	%x5, %x5, 4  #132 pc 964
	ret #pc 968
	nop #pc 972
bge_else.24954: #pc 976
	addi	%x7, %x0, 45  #0 pc 976
	sw	%x7, 0(%x5)  #128 pc 980
	addi	%x5, %x5, 4  #128 pc 984
	sub	%x6, %x0, %x6  #129 pc 988
	j	print_int.2560  #129 pc 992
	nop #pc 996
assign_array.2566:  #pc 1000
	bge	%x8, %x0, 12  #196 pc 1000
	j	bge_else.24966 #pc 1004
	nop #pc 1008
	beq	%x8, %x0, 12  #199 pc 1012
	j	be_else.24967 #pc 1016
	nop #pc 1020
	slli	%x8, %x8, 2  #200 pc 1024
	add	%x31, %x8, %x6  #200 pc 1028
	sw	%x7, 0(%x31)  #200 pc 1032
	ret #pc 1036
	nop #pc 1040
be_else.24967: #pc 1044
	slli	%x9, %x8, 2  #202 pc 1044
	add	%x31, %x9, %x6  #202 pc 1048
	sw	%x7, 0(%x31)  #202 pc 1052
	addi	%x8, %x8, -1  #203 pc 1056
	j	assign_array.2566  #203 pc 1060
	nop #pc 1064
bge_else.24966: #pc 1068
	ret #pc 1068
	nop #pc 1072
assign_farray.2573:  #pc 1076
	bge	%x7, %x0, 12  #215 pc 1076
	j	bge_else.24970 #pc 1080
	nop #pc 1084
	beq	%x7, %x0, 12  #218 pc 1088
	j	be_else.24971 #pc 1092
	nop #pc 1096
	slli	%x7, %x7, 2  #219 pc 1100
	add	%x31, %x7, %x6  #219 pc 1104
	fsw	%f0, 0(%x31) #219 pc 1108
	ret #pc 1112
	nop #pc 1116
be_else.24971: #pc 1120
	slli	%x8, %x7, 2  #221 pc 1120
	add	%x31, %x8, %x6  #221 pc 1124
	fsw	%f0, 0(%x31) #221 pc 1128
	addi	%x7, %x7, -1  #222 pc 1132
	j	assign_farray.2573  #222 pc 1136
	nop #pc 1140
bge_else.24970: #pc 1144
	ret #pc 1144
	nop #pc 1148
read_object.2741:  #pc 1152
	lw	%x7, 8(%x29)  #0 pc 1152
	lw	%x8, 4(%x29)  #0 pc 1156
	addi	%x31, %x0, 60  #pc 1160
	bge	%x6, %x31, 12  #1025 pc 1164
	j	bge_else.24974 #pc 1168
	nop #pc 1172
	ret #pc 1176
	nop #pc 1180
bge_else.24974: #pc 1184
	lw	%x9, 0(%x4)  #1026 pc 1184
	addi	%x4, %x4, 4  #1026 pc 1188
	sw	%x29, 0(%x2)  #1026 pc 1192
	sw	%x7, 4(%x2)  #1026 pc 1196
	sw	%x6, 8(%x2)  #1026 pc 1200
	addi	%x31, %x0, -1  #pc 1204
	beq	%x9, %x31, 12  #1026 pc 1208
	j	be_else.24976 #pc 1212
	nop #pc 1216
	addi	%x6, %x0, 0  #0 pc 1220
	j	be_cont.24977 #pc 1224
	nop #pc 1228
be_else.24976: #pc 1232
	lw	%x10, 0(%x4)  #1026 pc 1232
	addi	%x4, %x4, 4  #1026 pc 1236
	lw	%x11, 0(%x4)  #1026 pc 1240
	addi	%x4, %x4, 4  #1026 pc 1244
	lw	%x12, 0(%x4)  #1026 pc 1248
	addi	%x4, %x4, 4  #1026 pc 1252
	fmv	%f0, l.21722  #0 pc 1256
	addi	%x13, %x3, 0  #1026 pc 1260
	addi	%x14, %x13, 0  #1026 pc 1264
	addi	%x13, %x13, 12  #1026 pc 1268
	addi	%x3, %x13, 0  #1026 pc 1272
	addi	%x13, %x0, 2  #0 pc 1276
	sw	%x8, 12(%x2)  #1026 pc 1280
	sw	%x9, 16(%x2)  #1026 pc 1284
	sw	%x11, 20(%x2)  #1026 pc 1288
	sw	%x10, 24(%x2)  #1026 pc 1292
	sw	%x12, 28(%x2)  #1026 pc 1296
	sw	%x14, 32(%x2)  #1026 pc 1300
	addi	%x7, %x13, 0  #0 pc 1304
	addi	%x6, %x14, 0  #0 pc 1308
	sw	%x1, 36(%x2)  #1026 pc 1312
	addi	%x2, %x2, 40  #1026 pc 1316
	jal	%x1, assign_farray.2573  #1026 pc 1320
	addi	%x2, %x2, -40  #1026 pc 1324
	lw	%x1, 36(%x2) #1026 pc 1328
	flw	%f0, 0(%x4)  #1026 pc 1332
	addi	%x4, %x4, 4  #1026 pc 1336
	lw	%x6, 32(%x2)  #1026 pc 1340
	fsw	%f0, 0(%x6)  #1026 pc 1344
	flw	%f0, 0(%x4)  #1026 pc 1348
	addi	%x4, %x4, 4  #1026 pc 1352
	fsw	%f0, 4(%x6)  #1026 pc 1356
	flw	%f0, 0(%x4)  #1026 pc 1360
	addi	%x4, %x4, 4  #1026 pc 1364
	fsw	%f0, 8(%x6)  #1026 pc 1368
	fmv	%f0, l.21722  #0 pc 1372
	addi	%x7, %x3, 0  #1026 pc 1376
	addi	%x8, %x7, 0  #1026 pc 1380
	addi	%x7, %x7, 12  #1026 pc 1384
	addi	%x3, %x7, 0  #1026 pc 1388
	addi	%x7, %x0, 2  #0 pc 1392
	sw	%x8, 36(%x2)  #1026 pc 1396
	addi	%x6, %x8, 0  #0 pc 1400
	sw	%x1, 40(%x2)  #1026 pc 1404
	addi	%x2, %x2, 44  #1026 pc 1408
	jal	%x1, assign_farray.2573  #1026 pc 1412
	addi	%x2, %x2, -44  #1026 pc 1416
	lw	%x1, 40(%x2) #1026 pc 1420
	flw	%f0, 0(%x4)  #1026 pc 1424
	addi	%x4, %x4, 4  #1026 pc 1428
	lw	%x6, 36(%x2)  #1026 pc 1432
	fsw	%f0, 0(%x6)  #1026 pc 1436
	flw	%f0, 0(%x4)  #1026 pc 1440
	addi	%x4, %x4, 4  #1026 pc 1444
	fsw	%f0, 4(%x6)  #1026 pc 1448
	flw	%f0, 0(%x4)  #1026 pc 1452
	addi	%x4, %x4, 4  #1026 pc 1456
	fsw	%f0, 8(%x6)  #1026 pc 1460
	flw	%f0, 0(%x4)  #1026 pc 1464
	addi	%x4, %x4, 4  #1026 pc 1468
	fmv	%f1, l.21722  #0 pc 1472
	fle	%x31, %f1, %f0  #1026 pc 1476
	blt	%x0, %x31, 12  #1026 pc 1480
	j	fble_else.24978 #pc 1484
	nop #pc 1488
	addi	%x7, %x0, 0  #0 pc 1492
	j	fble_cont.24979 #pc 1496
	nop #pc 1500
fble_else.24978: #pc 1504
	addi	%x7, %x0, 1  #0 pc 1504
fble_cont.24979: #pc 1508
	fmv	%f0, l.21722  #0 pc 1508
	addi	%x8, %x3, 0  #1026 pc 1512
	addi	%x9, %x8, 0  #1026 pc 1516
	addi	%x8, %x8, 8  #1026 pc 1520
	addi	%x3, %x8, 0  #1026 pc 1524
	addi	%x8, %x0, 1  #0 pc 1528
	sw	%x7, 40(%x2)  #1026 pc 1532
	sw	%x9, 44(%x2)  #1026 pc 1536
	addi	%x7, %x8, 0  #0 pc 1540
	addi	%x6, %x9, 0  #0 pc 1544
	sw	%x1, 48(%x2)  #1026 pc 1548
	addi	%x2, %x2, 52  #1026 pc 1552
	jal	%x1, assign_farray.2573  #1026 pc 1556
	addi	%x2, %x2, -52  #1026 pc 1560
	lw	%x1, 48(%x2) #1026 pc 1564
	flw	%f0, 0(%x4)  #1026 pc 1568
	addi	%x4, %x4, 4  #1026 pc 1572
	lw	%x6, 44(%x2)  #1026 pc 1576
	fsw	%f0, 0(%x6)  #1026 pc 1580
	flw	%f0, 0(%x4)  #1026 pc 1584
	addi	%x4, %x4, 4  #1026 pc 1588
	fsw	%f0, 4(%x6)  #1026 pc 1592
	fmv	%f0, l.21722  #0 pc 1596
	addi	%x7, %x3, 0  #1026 pc 1600
	addi	%x8, %x7, 0  #1026 pc 1604
	addi	%x7, %x7, 12  #1026 pc 1608
	addi	%x3, %x7, 0  #1026 pc 1612
	addi	%x7, %x0, 2  #0 pc 1616
	sw	%x8, 48(%x2)  #1026 pc 1620
	addi	%x6, %x8, 0  #0 pc 1624
	sw	%x1, 52(%x2)  #1026 pc 1628
	addi	%x2, %x2, 56  #1026 pc 1632
	jal	%x1, assign_farray.2573  #1026 pc 1636
	addi	%x2, %x2, -56  #1026 pc 1640
	lw	%x1, 52(%x2) #1026 pc 1644
	flw	%f0, 0(%x4)  #1026 pc 1648
	addi	%x4, %x4, 4  #1026 pc 1652
	lw	%x6, 48(%x2)  #1026 pc 1656
	fsw	%f0, 0(%x6)  #1026 pc 1660
	flw	%f0, 0(%x4)  #1026 pc 1664
	addi	%x4, %x4, 4  #1026 pc 1668
	fsw	%f0, 4(%x6)  #1026 pc 1672
	flw	%f0, 0(%x4)  #1026 pc 1676
	addi	%x4, %x4, 4  #1026 pc 1680
	fsw	%f0, 8(%x6)  #1026 pc 1684
	fmv	%f0, l.21722  #0 pc 1688
	addi	%x7, %x3, 0  #1026 pc 1692
	addi	%x8, %x7, 0  #1026 pc 1696
	addi	%x7, %x7, 12  #1026 pc 1700
	addi	%x3, %x7, 0  #1026 pc 1704
	addi	%x7, %x0, 2  #0 pc 1708
	sw	%x8, 52(%x2)  #1026 pc 1712
	addi	%x6, %x8, 0  #0 pc 1716
	sw	%x1, 56(%x2)  #1026 pc 1720
	addi	%x2, %x2, 60  #1026 pc 1724
	jal	%x1, assign_farray.2573  #1026 pc 1728
	addi	%x2, %x2, -60  #1026 pc 1732
	lw	%x1, 56(%x2) #1026 pc 1736
	lw	%x6, 28(%x2)  #1026 pc 1740
	beq	%x6, %x0, 12  #1026 pc 1744
	j	be_else.24980 #pc 1748
	nop #pc 1752
	j	be_cont.24981 #pc 1756
	nop #pc 1760
be_else.24980: #pc 1764
	flw	%f0, 0(%x4)  #1026 pc 1764
	addi	%x4, %x4, 4  #1026 pc 1768
	fmv	%f1, l.21765  #0 pc 1772
	fmul	%f0, %f0, %f1  #1026 pc 1776
	lw	%x7, 52(%x2)  #1026 pc 1780
	fsw	%f0, 0(%x7)  #1026 pc 1784
	flw	%f0, 0(%x4)  #1026 pc 1788
	addi	%x4, %x4, 4  #1026 pc 1792
	fmv	%f1, l.21765  #0 pc 1796
	fmul	%f0, %f0, %f1  #1026 pc 1800
	fsw	%f0, 4(%x7)  #1026 pc 1804
	flw	%f0, 0(%x4)  #1026 pc 1808
	addi	%x4, %x4, 4  #1026 pc 1812
	fmv	%f1, l.21765  #0 pc 1816
	fmul	%f0, %f0, %f1  #1026 pc 1820
	fsw	%f0, 8(%x7)  #1026 pc 1824
be_cont.24981: #pc 1828
	lw	%x7, 24(%x2)  #1026 pc 1828
	addi	%x31, %x0, 2  #pc 1832
	beq	%x7, %x31, 12  #1026 pc 1836
	j	be_else.24982 #pc 1840
	nop #pc 1844
	addi	%x8, %x0, 1  #0 pc 1848
	j	be_cont.24983 #pc 1852
	nop #pc 1856
be_else.24982: #pc 1860
	lw	%x8, 40(%x2)  #1026 pc 1860
be_cont.24983: #pc 1864
	fmv	%f0, l.21722  #0 pc 1864
	addi	%x9, %x3, 0  #1026 pc 1868
	addi	%x10, %x9, 0  #1026 pc 1872
	addi	%x9, %x9, 16  #1026 pc 1876
	addi	%x3, %x9, 0  #1026 pc 1880
	addi	%x9, %x0, 3  #0 pc 1884
	sw	%x8, 56(%x2)  #1026 pc 1888
	sw	%x10, 60(%x2)  #1026 pc 1892
	addi	%x7, %x9, 0  #0 pc 1896
	addi	%x6, %x10, 0  #0 pc 1900
	sw	%x1, 64(%x2)  #1026 pc 1904
	addi	%x2, %x2, 68  #1026 pc 1908
	jal	%x1, assign_farray.2573  #1026 pc 1912
	addi	%x2, %x2, -68  #1026 pc 1916
	lw	%x1, 64(%x2) #1026 pc 1920
	addi	%x6, %x3, 0  #1026 pc 1924
	addi	%x3, %x3, 44  #1026 pc 1928
	lw	%x7, 60(%x2)  #1026 pc 1932
	sw	%x7, 40(%x6)  #1026 pc 1936
	lw	%x7, 52(%x2)  #1026 pc 1940
	sw	%x7, 36(%x6)  #1026 pc 1944
	lw	%x8, 48(%x2)  #1026 pc 1948
	sw	%x8, 32(%x6)  #1026 pc 1952
	lw	%x8, 44(%x2)  #1026 pc 1956
	sw	%x8, 28(%x6)  #1026 pc 1960
	lw	%x8, 56(%x2)  #1026 pc 1964
	sw	%x8, 24(%x6)  #1026 pc 1968
	lw	%x8, 36(%x2)  #1026 pc 1972
	sw	%x8, 20(%x6)  #1026 pc 1976
	lw	%x8, 32(%x2)  #1026 pc 1980
	sw	%x8, 16(%x6)  #1026 pc 1984
	lw	%x9, 28(%x2)  #1026 pc 1988
	sw	%x9, 12(%x6)  #1026 pc 1992
	lw	%x10, 20(%x2)  #1026 pc 1996
	sw	%x10, 8(%x6)  #1026 pc 2000
	lw	%x10, 24(%x2)  #1026 pc 2004
	sw	%x10, 4(%x6)  #1026 pc 2008
	lw	%x11, 16(%x2)  #1026 pc 2012
	sw	%x11, 0(%x6)  #1026 pc 2016
	lw	%x11, 8(%x2)  #1026 pc 2020
	slli	%x12, %x11, 2  #1026 pc 2024
	lw	%x13, 12(%x2)  #1026 pc 2028
	add	%x31, %x12, %x13  #1026 pc 2032
	sw	%x6, 0(%x31)  #1026 pc 2036
	addi	%x31, %x0, 3  #pc 2040
	beq	%x10, %x31, 12  #1026 pc 2044
	j	be_else.24984 #pc 2048
	nop #pc 2052
	flw	%f0, 0(%x8)  #1026 pc 2056
	fmv	%f1, l.21722  #0 pc 2060
	feq	%x31, %f0, %f1  #1026 pc 2064
	blt	%x0, %x31, 12  #1026 pc 2068
	j	fbe_else.24986 #pc 2072
	nop #pc 2076
	addi	%x6, %x0, 1  #0 pc 2080
	j	fbe_cont.24987 #pc 2084
	nop #pc 2088
fbe_else.24986: #pc 2092
	addi	%x6, %x0, 0  #0 pc 2092
fbe_cont.24987: #pc 2096
	beq	%x6, %x0, 12  #1026 pc 2096
	j	be_else.24988 #pc 2100
	nop #pc 2104
	fmv	%f1, l.21722  #0 pc 2108
	feq	%x31, %f0, %f1  #1026 pc 2112
	blt	%x0, %x31, 12  #1026 pc 2116
	j	fbe_else.24990 #pc 2120
	nop #pc 2124
	addi	%x6, %x0, 1  #0 pc 2128
	j	fbe_cont.24991 #pc 2132
	nop #pc 2136
fbe_else.24990: #pc 2140
	addi	%x6, %x0, 0  #0 pc 2140
fbe_cont.24991: #pc 2144
	beq	%x6, %x0, 12  #1026 pc 2144
	j	be_else.24992 #pc 2148
	nop #pc 2152
	fmv	%f1, l.21722  #0 pc 2156
	fle	%x31, %f0, %f1  #1026 pc 2160
	blt	%x0, %x31, 12  #1026 pc 2164
	j	fble_else.24994 #pc 2168
	nop #pc 2172
	addi	%x6, %x0, 0  #0 pc 2176
	j	fble_cont.24995 #pc 2180
	nop #pc 2184
fble_else.24994: #pc 2188
	addi	%x6, %x0, 1  #0 pc 2188
fble_cont.24995: #pc 2192
	beq	%x6, %x0, 12  #1026 pc 2192
	j	be_else.24996 #pc 2196
	nop #pc 2200
	fmv	%f1, l.21791  #0 pc 2204
	j	be_cont.24997 #pc 2208
	nop #pc 2212
be_else.24996: #pc 2216
	fmv	%f1, l.21731  #0 pc 2216
be_cont.24997: #pc 2220
	j	be_cont.24993 #pc 2220
	nop #pc 2224
be_else.24992: #pc 2228
	fmv	%f1, l.21722  #0 pc 2228
be_cont.24993: #pc 2232
	fmul	%f0, %f0, %f0  #1026 pc 2232
	fdiv	%f0, %f1, %f0  #1026 pc 2236
	j	be_cont.24989 #pc 2240
	nop #pc 2244
be_else.24988: #pc 2248
	fmv	%f0, l.21722  #0 pc 2248
be_cont.24989: #pc 2252
	fsw	%f0, 0(%x8)  #1026 pc 2252
	flw	%f0, 4(%x8)  #1026 pc 2256
	fmv	%f1, l.21722  #0 pc 2260
	feq	%x31, %f0, %f1  #1026 pc 2264
	blt	%x0, %x31, 12  #1026 pc 2268
	j	fbe_else.24998 #pc 2272
	nop #pc 2276
	addi	%x6, %x0, 1  #0 pc 2280
	j	fbe_cont.24999 #pc 2284
	nop #pc 2288
fbe_else.24998: #pc 2292
	addi	%x6, %x0, 0  #0 pc 2292
fbe_cont.24999: #pc 2296
	beq	%x6, %x0, 12  #1026 pc 2296
	j	be_else.25000 #pc 2300
	nop #pc 2304
	fmv	%f1, l.21722  #0 pc 2308
	feq	%x31, %f0, %f1  #1026 pc 2312
	blt	%x0, %x31, 12  #1026 pc 2316
	j	fbe_else.25002 #pc 2320
	nop #pc 2324
	addi	%x6, %x0, 1  #0 pc 2328
	j	fbe_cont.25003 #pc 2332
	nop #pc 2336
fbe_else.25002: #pc 2340
	addi	%x6, %x0, 0  #0 pc 2340
fbe_cont.25003: #pc 2344
	beq	%x6, %x0, 12  #1026 pc 2344
	j	be_else.25004 #pc 2348
	nop #pc 2352
	fmv	%f1, l.21722  #0 pc 2356
	fle	%x31, %f0, %f1  #1026 pc 2360
	blt	%x0, %x31, 12  #1026 pc 2364
	j	fble_else.25006 #pc 2368
	nop #pc 2372
	addi	%x6, %x0, 0  #0 pc 2376
	j	fble_cont.25007 #pc 2380
	nop #pc 2384
fble_else.25006: #pc 2388
	addi	%x6, %x0, 1  #0 pc 2388
fble_cont.25007: #pc 2392
	beq	%x6, %x0, 12  #1026 pc 2392
	j	be_else.25008 #pc 2396
	nop #pc 2400
	fmv	%f1, l.21791  #0 pc 2404
	j	be_cont.25009 #pc 2408
	nop #pc 2412
be_else.25008: #pc 2416
	fmv	%f1, l.21731  #0 pc 2416
be_cont.25009: #pc 2420
	j	be_cont.25005 #pc 2420
	nop #pc 2424
be_else.25004: #pc 2428
	fmv	%f1, l.21722  #0 pc 2428
be_cont.25005: #pc 2432
	fmul	%f0, %f0, %f0  #1026 pc 2432
	fdiv	%f0, %f1, %f0  #1026 pc 2436
	j	be_cont.25001 #pc 2440
	nop #pc 2444
be_else.25000: #pc 2448
	fmv	%f0, l.21722  #0 pc 2448
be_cont.25001: #pc 2452
	fsw	%f0, 4(%x8)  #1026 pc 2452
	flw	%f0, 8(%x8)  #1026 pc 2456
	fmv	%f1, l.21722  #0 pc 2460
	feq	%x31, %f0, %f1  #1026 pc 2464
	blt	%x0, %x31, 12  #1026 pc 2468
	j	fbe_else.25010 #pc 2472
	nop #pc 2476
	addi	%x6, %x0, 1  #0 pc 2480
	j	fbe_cont.25011 #pc 2484
	nop #pc 2488
fbe_else.25010: #pc 2492
	addi	%x6, %x0, 0  #0 pc 2492
fbe_cont.25011: #pc 2496
	beq	%x6, %x0, 12  #1026 pc 2496
	j	be_else.25012 #pc 2500
	nop #pc 2504
	fmv	%f1, l.21722  #0 pc 2508
	feq	%x31, %f0, %f1  #1026 pc 2512
	blt	%x0, %x31, 12  #1026 pc 2516
	j	fbe_else.25014 #pc 2520
	nop #pc 2524
	addi	%x6, %x0, 1  #0 pc 2528
	j	fbe_cont.25015 #pc 2532
	nop #pc 2536
fbe_else.25014: #pc 2540
	addi	%x6, %x0, 0  #0 pc 2540
fbe_cont.25015: #pc 2544
	beq	%x6, %x0, 12  #1026 pc 2544
	j	be_else.25016 #pc 2548
	nop #pc 2552
	fmv	%f1, l.21722  #0 pc 2556
	fle	%x31, %f0, %f1  #1026 pc 2560
	blt	%x0, %x31, 12  #1026 pc 2564
	j	fble_else.25018 #pc 2568
	nop #pc 2572
	addi	%x6, %x0, 0  #0 pc 2576
	j	fble_cont.25019 #pc 2580
	nop #pc 2584
fble_else.25018: #pc 2588
	addi	%x6, %x0, 1  #0 pc 2588
fble_cont.25019: #pc 2592
	beq	%x6, %x0, 12  #1026 pc 2592
	j	be_else.25020 #pc 2596
	nop #pc 2600
	fmv	%f1, l.21791  #0 pc 2604
	j	be_cont.25021 #pc 2608
	nop #pc 2612
be_else.25020: #pc 2616
	fmv	%f1, l.21731  #0 pc 2616
be_cont.25021: #pc 2620
	j	be_cont.25017 #pc 2620
	nop #pc 2624
be_else.25016: #pc 2628
	fmv	%f1, l.21722  #0 pc 2628
be_cont.25017: #pc 2632
	fmul	%f0, %f0, %f0  #1026 pc 2632
	fdiv	%f0, %f1, %f0  #1026 pc 2636
	j	be_cont.25013 #pc 2640
	nop #pc 2644
be_else.25012: #pc 2648
	fmv	%f0, l.21722  #0 pc 2648
be_cont.25013: #pc 2652
	fsw	%f0, 8(%x8)  #1026 pc 2652
	j	be_cont.24985 #pc 2656
	nop #pc 2660
be_else.24984: #pc 2664
	addi	%x31, %x0, 2  #pc 2664
	beq	%x10, %x31, 12  #1026 pc 2668
	j	be_else.25022 #pc 2672
	nop #pc 2676
	lw	%x6, 40(%x2)  #1026 pc 2680
	beq	%x6, %x0, 12  #1026 pc 2684
	j	be_else.25024 #pc 2688
	nop #pc 2692
	addi	%x6, %x0, 1  #0 pc 2696
	j	be_cont.25025 #pc 2700
	nop #pc 2704
be_else.25024: #pc 2708
	addi	%x6, %x0, 0  #0 pc 2708
be_cont.25025: #pc 2712
	flw	%f0, 0(%x8)  #1026 pc 2712
	fmul	%f0, %f0, %f0  #1026 pc 2716
	flw	%f1, 4(%x8)  #1026 pc 2720
	fmul	%f1, %f1, %f1  #1026 pc 2724
	fadd	%f0, %f0, %f1  #1026 pc 2728
	flw	%f1, 8(%x8)  #1026 pc 2732
	fmul	%f1, %f1, %f1  #1026 pc 2736
	fadd	%f0, %f0, %f1  #1026 pc 2740
	fsqrt	%f0, %f0  #1026 pc 2744
	fmv	%f1, l.21722  #0 pc 2748
	feq	%x31, %f0, %f1  #1026 pc 2752
	blt	%x0, %x31, 12  #1026 pc 2756
	j	fbe_else.25026 #pc 2760
	nop #pc 2764
	addi	%x10, %x0, 1  #0 pc 2768
	j	fbe_cont.25027 #pc 2772
	nop #pc 2776
fbe_else.25026: #pc 2780
	addi	%x10, %x0, 0  #0 pc 2780
fbe_cont.25027: #pc 2784
	beq	%x10, %x0, 12  #1026 pc 2784
	j	be_else.25028 #pc 2788
	nop #pc 2792
	beq	%x6, %x0, 12  #1026 pc 2796
	j	be_else.25030 #pc 2800
	nop #pc 2804
	fmv	%f1, l.21731  #0 pc 2808
	fdiv	%f0, %f1, %f0  #1026 pc 2812
	j	be_cont.25031 #pc 2816
	nop #pc 2820
be_else.25030: #pc 2824
	fmv	%f1, l.21791  #0 pc 2824
	fdiv	%f0, %f1, %f0  #1026 pc 2828
be_cont.25031: #pc 2832
	j	be_cont.25029 #pc 2832
	nop #pc 2836
be_else.25028: #pc 2840
	fmv	%f0, l.21731  #0 pc 2840
be_cont.25029: #pc 2844
	flw	%f1, 0(%x8)  #1026 pc 2844
	fmul	%f1, %f1, %f0  #1026 pc 2848
	fsw	%f1, 0(%x8)  #1026 pc 2852
	flw	%f1, 4(%x8)  #1026 pc 2856
	fmul	%f1, %f1, %f0  #1026 pc 2860
	fsw	%f1, 4(%x8)  #1026 pc 2864
	flw	%f1, 8(%x8)  #1026 pc 2868
	fmul	%f0, %f1, %f0  #1026 pc 2872
	fsw	%f0, 8(%x8)  #1026 pc 2876
	j	be_cont.25023 #pc 2880
	nop #pc 2884
be_else.25022: #pc 2888
be_cont.25023: #pc 2888
be_cont.24985: #pc 2888
	beq	%x9, %x0, 12  #1026 pc 2888
	j	be_else.25032 #pc 2892
	nop #pc 2896
	j	be_cont.25033 #pc 2900
	nop #pc 2904
be_else.25032: #pc 2908
	flw	%f0, 0(%x7)  #1026 pc 2908
	sw	%x1, 64(%x2)  #1026 pc 2912
	addi	%x2, %x2, 68  #1026 pc 2916
	jal	%x1, cos.2530  #1026 pc 2920
	addi	%x2, %x2, -68  #1026 pc 2924
	lw	%x1, 64(%x2) #1026 pc 2928
	lw	%x6, 52(%x2)  #1026 pc 2932
	flw	%f1, 0(%x6)  #1026 pc 2936
	fsw	%f0, 64(%x2)  #1026 pc 2940
	fadd	%f0, %f1, %f30  #0 pc 2944
	sw	%x1, 72(%x2)  #1026 pc 2948
	addi	%x2, %x2, 76  #1026 pc 2952
	jal	%x1, sin.2526  #1026 pc 2956
	addi	%x2, %x2, -76  #1026 pc 2960
	lw	%x1, 72(%x2) #1026 pc 2964
	lw	%x6, 52(%x2)  #1026 pc 2968
	flw	%f1, 4(%x6)  #1026 pc 2972
	fsw	%f0, 72(%x2)  #1026 pc 2976
	fadd	%f0, %f1, %f30  #0 pc 2980
	sw	%x1, 80(%x2)  #1026 pc 2984
	addi	%x2, %x2, 84  #1026 pc 2988
	jal	%x1, cos.2530  #1026 pc 2992
	addi	%x2, %x2, -84  #1026 pc 2996
	lw	%x1, 80(%x2) #1026 pc 3000
	lw	%x6, 52(%x2)  #1026 pc 3004
	flw	%f1, 4(%x6)  #1026 pc 3008
	fsw	%f0, 80(%x2)  #1026 pc 3012
	fadd	%f0, %f1, %f30  #0 pc 3016
	sw	%x1, 88(%x2)  #1026 pc 3020
	addi	%x2, %x2, 92  #1026 pc 3024
	jal	%x1, sin.2526  #1026 pc 3028
	addi	%x2, %x2, -92  #1026 pc 3032
	lw	%x1, 88(%x2) #1026 pc 3036
	lw	%x6, 52(%x2)  #1026 pc 3040
	flw	%f1, 8(%x6)  #1026 pc 3044
	fsw	%f0, 88(%x2)  #1026 pc 3048
	fadd	%f0, %f1, %f30  #0 pc 3052
	sw	%x1, 96(%x2)  #1026 pc 3056
	addi	%x2, %x2, 100  #1026 pc 3060
	jal	%x1, cos.2530  #1026 pc 3064
	addi	%x2, %x2, -100  #1026 pc 3068
	lw	%x1, 96(%x2) #1026 pc 3072
	lw	%x6, 52(%x2)  #1026 pc 3076
	flw	%f1, 8(%x6)  #1026 pc 3080
	fsw	%f0, 96(%x2)  #1026 pc 3084
	fadd	%f0, %f1, %f30  #0 pc 3088
	sw	%x1, 104(%x2)  #1026 pc 3092
	addi	%x2, %x2, 108  #1026 pc 3096
	jal	%x1, sin.2526  #1026 pc 3100
	addi	%x2, %x2, -108  #1026 pc 3104
	lw	%x1, 104(%x2) #1026 pc 3108
	flw	%f1, 96(%x2)  #1026 pc 3112
	flw	%f2, 80(%x2)  #1026 pc 3116
	fmul	%f3, %f2, %f1  #1026 pc 3120
	flw	%f4, 88(%x2)  #1026 pc 3124
	flw	%f5, 72(%x2)  #1026 pc 3128
	fmul	%f6, %f5, %f4  #1026 pc 3132
	fmul	%f6, %f6, %f1  #1026 pc 3136
	flw	%f7, 64(%x2)  #1026 pc 3140
	fmul	%f8, %f7, %f0  #1026 pc 3144
	fsub	%f6, %f6, %f8  #1026 pc 3148
	fmul	%f8, %f7, %f4  #1026 pc 3152
	fmul	%f8, %f8, %f1  #1026 pc 3156
	fmul	%f9, %f5, %f0  #1026 pc 3160
	fadd	%f8, %f8, %f9  #1026 pc 3164
	fmul	%f9, %f2, %f0  #1026 pc 3168
	fmul	%f10, %f5, %f4  #1026 pc 3172
	fmul	%f10, %f10, %f0  #1026 pc 3176
	fmul	%f11, %f7, %f1  #1026 pc 3180
	fadd	%f10, %f10, %f11  #1026 pc 3184
	fmul	%f11, %f7, %f4  #1026 pc 3188
	fmul	%f0, %f11, %f0  #1026 pc 3192
	fmul	%f1, %f5, %f1  #1026 pc 3196
	fsub	%f0, %f0, %f1  #1026 pc 3200
	fsub	%f1, %f30, %f4  #1026 pc 3204
	fmul	%f4, %f5, %f2  #1026 pc 3208
	fmul	%f2, %f7, %f2  #1026 pc 3212
	lw	%x6, 32(%x2)  #1026 pc 3216
	flw	%f5, 0(%x6)  #1026 pc 3220
	flw	%f7, 4(%x6)  #1026 pc 3224
	flw	%f11, 8(%x6)  #1026 pc 3228
	fmul	%f12, %f3, %f3  #1026 pc 3232
	fmul	%f12, %f5, %f12  #1026 pc 3236
	fmul	%f13, %f9, %f9  #1026 pc 3240
	fmul	%f13, %f7, %f13  #1026 pc 3244
	fadd	%f12, %f12, %f13  #1026 pc 3248
	fmul	%f13, %f1, %f1  #1026 pc 3252
	fmul	%f13, %f11, %f13  #1026 pc 3256
	fadd	%f12, %f12, %f13  #1026 pc 3260
	fsw	%f12, 0(%x6)  #1026 pc 3264
	fmul	%f12, %f6, %f6  #1026 pc 3268
	fmul	%f12, %f5, %f12  #1026 pc 3272
	fmul	%f13, %f10, %f10  #1026 pc 3276
	fmul	%f13, %f7, %f13  #1026 pc 3280
	fadd	%f12, %f12, %f13  #1026 pc 3284
	fmul	%f13, %f4, %f4  #1026 pc 3288
	fmul	%f13, %f11, %f13  #1026 pc 3292
	fadd	%f12, %f12, %f13  #1026 pc 3296
	fsw	%f12, 4(%x6)  #1026 pc 3300
	fmul	%f12, %f8, %f8  #1026 pc 3304
	fmul	%f12, %f5, %f12  #1026 pc 3308
	fmul	%f13, %f0, %f0  #1026 pc 3312
	fmul	%f13, %f7, %f13  #1026 pc 3316
	fadd	%f12, %f12, %f13  #1026 pc 3320
	fmul	%f13, %f2, %f2  #1026 pc 3324
	fmul	%f13, %f11, %f13  #1026 pc 3328
	fadd	%f12, %f12, %f13  #1026 pc 3332
	fsw	%f12, 8(%x6)  #1026 pc 3336
	fmv	%f12, l.21839  #0 pc 3340
	fmul	%f13, %f5, %f6  #1026 pc 3344
	fmul	%f13, %f13, %f8  #1026 pc 3348
	fmul	%f14, %f7, %f10  #1026 pc 3352
	fmul	%f14, %f14, %f0  #1026 pc 3356
	fadd	%f13, %f13, %f14  #1026 pc 3360
	fmul	%f14, %f11, %f4  #1026 pc 3364
	fmul	%f14, %f14, %f2  #1026 pc 3368
	fadd	%f13, %f13, %f14  #1026 pc 3372
	fmul	%f12, %f12, %f13  #1026 pc 3376
	lw	%x6, 52(%x2)  #1026 pc 3380
	fsw	%f12, 0(%x6)  #1026 pc 3384
	fmv	%f12, l.21839  #0 pc 3388
	fmul	%f13, %f5, %f3  #1026 pc 3392
	fmul	%f8, %f13, %f8  #1026 pc 3396
	fmul	%f13, %f7, %f9  #1026 pc 3400
	fmul	%f0, %f13, %f0  #1026 pc 3404
	fadd	%f0, %f8, %f0  #1026 pc 3408
	fmul	%f8, %f11, %f1  #1026 pc 3412
	fmul	%f2, %f8, %f2  #1026 pc 3416
	fadd	%f0, %f0, %f2  #1026 pc 3420
	fmul	%f0, %f12, %f0  #1026 pc 3424
	fsw	%f0, 4(%x6)  #1026 pc 3428
	fmv	%f0, l.21839  #0 pc 3432
	fmul	%f2, %f5, %f3  #1026 pc 3436
	fmul	%f2, %f2, %f6  #1026 pc 3440
	fmul	%f3, %f7, %f9  #1026 pc 3444
	fmul	%f3, %f3, %f10  #1026 pc 3448
	fadd	%f2, %f2, %f3  #1026 pc 3452
	fmul	%f1, %f11, %f1  #1026 pc 3456
	fmul	%f1, %f1, %f4  #1026 pc 3460
	fadd	%f1, %f2, %f1  #1026 pc 3464
	fmul	%f0, %f0, %f1  #1026 pc 3468
	fsw	%f0, 8(%x6)  #1026 pc 3472
be_cont.25033: #pc 3476
	addi	%x6, %x0, 1  #0 pc 3476
be_cont.24977: #pc 3480
	beq	%x6, %x0, 12  #1026 pc 3480
	j	be_else.25034 #pc 3484
	nop #pc 3488
	lw	%x6, 4(%x2)  #1029 pc 3492
	lw	%x7, 8(%x2)  #1029 pc 3496
	sw	%x7, 0(%x6)  #1029 pc 3500
	ret #pc 3504
	nop #pc 3508
be_else.25034: #pc 3512
	lw	%x6, 8(%x2)  #1027 pc 3512
	addi	%x6, %x6, 1  #1027 pc 3516
	lw	%x29, 0(%x2)  #1027 pc 3520
	lw	%x30, 0(%x29)  #1027 pc 3524
	jalr	%x0, %x30, 0  #1027 pc 3528
	nop #pc 3532
read_net_item.2745:  #pc 3536
	lw	%x7, 0(%x4)  #1041 pc 3536
	addi	%x4, %x4, 4  #1041 pc 3540
	addi	%x31, %x0, -1  #pc 3544
	beq	%x7, %x31, 12  #1042 pc 3548
	j	be_else.25036 #pc 3552
	nop #pc 3556
	addi	%x6, %x6, 1  #1042 pc 3560
	addi	%x7, %x0, -1  #0 pc 3564
	addi	%x8, %x3, 0  #1042 pc 3568
	addi	%x9, %x8, 0  #1042 pc 3572
	slli	%x10, %x6, 2  #1042 pc 3576
	add	%x8, %x8, %x10  #1042 pc 3580
	addi	%x3, %x8, 0  #1042 pc 3584
	addi	%x8, %x6, -1  #1042 pc 3588
	sw	%x9, 0(%x2)  #1042 pc 3592
	addi	%x6, %x9, 0  #0 pc 3596
	sw	%x1, 4(%x2)  #1042 pc 3600
	addi	%x2, %x2, 8  #1042 pc 3604
	jal	%x1, assign_array.2566  #1042 pc 3608
	addi	%x2, %x2, -8  #1042 pc 3612
	lw	%x1, 4(%x2) #1042 pc 3616
	lw	%x6, 0(%x2)  #1042 pc 3620
	ret #pc 3624
	nop #pc 3628
be_else.25036: #pc 3632
	addi	%x8, %x6, 1  #1044 pc 3632
	sw	%x7, 4(%x2)  #1044 pc 3636
	sw	%x6, 8(%x2)  #1044 pc 3640
	addi	%x6, %x8, 0  #0 pc 3644
	sw	%x1, 12(%x2)  #1044 pc 3648
	addi	%x2, %x2, 16  #1044 pc 3652
	jal	%x1, read_net_item.2745  #1044 pc 3656
	addi	%x2, %x2, -16  #1044 pc 3660
	lw	%x1, 12(%x2) #1044 pc 3664
	lw	%x7, 8(%x2)  #1045 pc 3668
	slli	%x7, %x7, 2  #1045 pc 3672
	lw	%x8, 4(%x2)  #1045 pc 3676
	add	%x31, %x7, %x6  #1045 pc 3680
	sw	%x8, 0(%x31)  #1045 pc 3684
	ret #pc 3688
	nop #pc 3692
read_or_network.2747:  #pc 3696
	addi	%x7, %x0, 0  #0 pc 3696
	sw	%x6, 0(%x2)  #1049 pc 3700
	addi	%x6, %x7, 0  #0 pc 3704
	sw	%x1, 4(%x2)  #1049 pc 3708
	addi	%x2, %x2, 8  #1049 pc 3712
	jal	%x1, read_net_item.2745  #1049 pc 3716
	addi	%x2, %x2, -8  #1049 pc 3720
	lw	%x1, 4(%x2) #1049 pc 3724
	addi	%x7, %x6, 0  #1049 pc 3728
	lw	%x6, 0(%x7)  #1050 pc 3732
	addi	%x31, %x0, -1  #pc 3736
	beq	%x6, %x31, 12  #1050 pc 3740
	j	be_else.25037 #pc 3744
	nop #pc 3748
	lw	%x6, 0(%x2)  #1051 pc 3752
	addi	%x6, %x6, 1  #1051 pc 3756
	addi	%x8, %x3, 0  #1051 pc 3760
	addi	%x9, %x8, 0  #1051 pc 3764
	slli	%x10, %x6, 2  #1051 pc 3768
	add	%x8, %x8, %x10  #1051 pc 3772
	addi	%x3, %x8, 0  #1051 pc 3776
	addi	%x8, %x6, -1  #1051 pc 3780
	sw	%x9, 4(%x2)  #1051 pc 3784
	addi	%x6, %x9, 0  #0 pc 3788
	sw	%x1, 8(%x2)  #1051 pc 3792
	addi	%x2, %x2, 12  #1051 pc 3796
	jal	%x1, assign_array.2566  #1051 pc 3800
	addi	%x2, %x2, -12  #1051 pc 3804
	lw	%x1, 8(%x2) #1051 pc 3808
	lw	%x6, 4(%x2)  #1051 pc 3812
	ret #pc 3816
	nop #pc 3820
be_else.25037: #pc 3824
	lw	%x6, 0(%x2)  #1053 pc 3824
	addi	%x8, %x6, 1  #1053 pc 3828
	sw	%x7, 8(%x2)  #1053 pc 3832
	addi	%x6, %x8, 0  #0 pc 3836
	sw	%x1, 12(%x2)  #1053 pc 3840
	addi	%x2, %x2, 16  #1053 pc 3844
	jal	%x1, read_or_network.2747  #1053 pc 3848
	addi	%x2, %x2, -16  #1053 pc 3852
	lw	%x1, 12(%x2) #1053 pc 3856
	lw	%x7, 0(%x2)  #1054 pc 3860
	slli	%x7, %x7, 2  #1054 pc 3864
	lw	%x8, 8(%x2)  #1054 pc 3868
	add	%x31, %x7, %x6  #1054 pc 3872
	sw	%x8, 0(%x31)  #1054 pc 3876
	ret #pc 3880
	nop #pc 3884
read_and_network.2749:  #pc 3888
	lw	%x7, 4(%x29)  #0 pc 3888
	addi	%x8, %x0, 0  #0 pc 3892
	sw	%x29, 0(%x2)  #1058 pc 3896
	sw	%x7, 4(%x2)  #1058 pc 3900
	sw	%x6, 8(%x2)  #1058 pc 3904
	addi	%x6, %x8, 0  #0 pc 3908
	sw	%x1, 12(%x2)  #1058 pc 3912
	addi	%x2, %x2, 16  #1058 pc 3916
	jal	%x1, read_net_item.2745  #1058 pc 3920
	addi	%x2, %x2, -16  #1058 pc 3924
	lw	%x1, 12(%x2) #1058 pc 3928
	lw	%x7, 0(%x6)  #1059 pc 3932
	addi	%x31, %x0, -1  #pc 3936
	beq	%x7, %x31, 12  #1059 pc 3940
	j	be_else.25038 #pc 3944
	nop #pc 3948
	ret #pc 3952
	nop #pc 3956
be_else.25038: #pc 3960
	lw	%x7, 8(%x2)  #1061 pc 3960
	slli	%x8, %x7, 2  #1061 pc 3964
	lw	%x9, 4(%x2)  #1061 pc 3968
	add	%x31, %x8, %x9  #1061 pc 3972
	sw	%x6, 0(%x31)  #1061 pc 3976
	addi	%x6, %x7, 1  #1062 pc 3980
	lw	%x29, 0(%x2)  #1062 pc 3984
	lw	%x30, 0(%x29)  #1062 pc 3988
	jalr	%x0, %x30, 0  #1062 pc 3992
	nop #pc 3996
iter_setup_dirvec_constants.2846:  #pc 4000
	lw	%x8, 4(%x29)  #0 pc 4000
	bge	%x7, %x0, 12  #1434 pc 4004
	j	bge_else.25040 #pc 4008
	nop #pc 4012
	slli	%x9, %x7, 2  #1435 pc 4016
	add	%x31, %x9, %x8  #1435 pc 4020
	lw	%x8, 0(%x31)  #1435 pc 4024
	lw	%x9, 4(%x6)  #1436 pc 4028
	lw	%x10, 0(%x6)  #1437 pc 4032
	lw	%x11, 4(%x8)  #1438 pc 4036
	sw	%x6, 0(%x2)  #1439 pc 4040
	sw	%x29, 4(%x2)  #1439 pc 4044
	sw	%x7, 8(%x2)  #1439 pc 4048
	addi	%x31, %x0, 1  #pc 4052
	beq	%x11, %x31, 12  #1439 pc 4056
	j	be_else.25041 #pc 4060
	nop #pc 4064
	fmv	%f0, l.21722  #0 pc 4068
	addi	%x11, %x3, 0  #1440 pc 4072
	addi	%x12, %x11, 0  #1440 pc 4076
	addi	%x11, %x11, 24  #1440 pc 4080
	addi	%x3, %x11, 0  #1440 pc 4084
	addi	%x11, %x0, 5  #0 pc 4088
	sw	%x9, 12(%x2)  #1440 pc 4092
	sw	%x12, 16(%x2)  #1440 pc 4096
	sw	%x8, 20(%x2)  #1440 pc 4100
	sw	%x10, 24(%x2)  #1440 pc 4104
	addi	%x7, %x11, 0  #0 pc 4108
	addi	%x6, %x12, 0  #0 pc 4112
	sw	%x1, 28(%x2)  #1440 pc 4116
	addi	%x2, %x2, 32  #1440 pc 4120
	jal	%x1, assign_farray.2573  #1440 pc 4124
	addi	%x2, %x2, -32  #1440 pc 4128
	lw	%x1, 28(%x2) #1440 pc 4132
	lw	%x6, 24(%x2)  #1440 pc 4136
	flw	%f0, 0(%x6)  #1440 pc 4140
	fmv	%f1, l.21722  #0 pc 4144
	feq	%x31, %f0, %f1  #1440 pc 4148
	blt	%x0, %x31, 12  #1440 pc 4152
	j	fbe_else.25043 #pc 4156
	nop #pc 4160
	addi	%x7, %x0, 1  #0 pc 4164
	j	fbe_cont.25044 #pc 4168
	nop #pc 4172
fbe_else.25043: #pc 4176
	addi	%x7, %x0, 0  #0 pc 4176
fbe_cont.25044: #pc 4180
	beq	%x7, %x0, 12  #1440 pc 4180
	j	be_else.25045 #pc 4184
	nop #pc 4188
	lw	%x7, 20(%x2)  #1440 pc 4192
	lw	%x8, 24(%x7)  #1440 pc 4196
	flw	%f0, 0(%x6)  #1440 pc 4200
	fmv	%f1, l.21722  #0 pc 4204
	fle	%x31, %f1, %f0  #1440 pc 4208
	blt	%x0, %x31, 12  #1440 pc 4212
	j	fble_else.25047 #pc 4216
	nop #pc 4220
	addi	%x9, %x0, 0  #0 pc 4224
	j	fble_cont.25048 #pc 4228
	nop #pc 4232
fble_else.25047: #pc 4236
	addi	%x9, %x0, 1  #0 pc 4236
fble_cont.25048: #pc 4240
	beq	%x8, %x0, 12  #1440 pc 4240
	j	be_else.25049 #pc 4244
	nop #pc 4248
	addi	%x8, %x9, 0  #1440 pc 4252
	j	be_cont.25050 #pc 4256
	nop #pc 4260
be_else.25049: #pc 4264
	beq	%x9, %x0, 12  #1440 pc 4264
	j	be_else.25051 #pc 4268
	nop #pc 4272
	addi	%x8, %x0, 1  #0 pc 4276
	j	be_cont.25052 #pc 4280
	nop #pc 4284
be_else.25051: #pc 4288
	addi	%x8, %x0, 0  #0 pc 4288
be_cont.25052: #pc 4292
be_cont.25050: #pc 4292
	lw	%x9, 16(%x7)  #1440 pc 4292
	flw	%f0, 0(%x9)  #1440 pc 4296
	beq	%x8, %x0, 12  #1440 pc 4300
	j	be_else.25053 #pc 4304
	nop #pc 4308
	fsub	%f0, %f30, %f0  #1440 pc 4312
	j	be_cont.25054 #pc 4316
	nop #pc 4320
be_else.25053: #pc 4324
be_cont.25054: #pc 4324
	lw	%x8, 16(%x2)  #1440 pc 4324
	fsw	%f0, 0(%x8)  #1440 pc 4328
	fmv	%f0, l.21731  #0 pc 4332
	flw	%f1, 0(%x6)  #1440 pc 4336
	fdiv	%f0, %f0, %f1  #1440 pc 4340
	fsw	%f0, 4(%x8)  #1440 pc 4344
	j	be_cont.25046 #pc 4348
	nop #pc 4352
be_else.25045: #pc 4356
	fmv	%f0, l.21722  #0 pc 4356
	lw	%x7, 16(%x2)  #1440 pc 4360
	fsw	%f0, 4(%x7)  #1440 pc 4364
be_cont.25046: #pc 4368
	flw	%f0, 4(%x6)  #1440 pc 4368
	fmv	%f1, l.21722  #0 pc 4372
	feq	%x31, %f0, %f1  #1440 pc 4376
	blt	%x0, %x31, 12  #1440 pc 4380
	j	fbe_else.25055 #pc 4384
	nop #pc 4388
	addi	%x7, %x0, 1  #0 pc 4392
	j	fbe_cont.25056 #pc 4396
	nop #pc 4400
fbe_else.25055: #pc 4404
	addi	%x7, %x0, 0  #0 pc 4404
fbe_cont.25056: #pc 4408
	beq	%x7, %x0, 12  #1440 pc 4408
	j	be_else.25057 #pc 4412
	nop #pc 4416
	lw	%x7, 20(%x2)  #1440 pc 4420
	lw	%x8, 24(%x7)  #1440 pc 4424
	flw	%f0, 4(%x6)  #1440 pc 4428
	fmv	%f1, l.21722  #0 pc 4432
	fle	%x31, %f1, %f0  #1440 pc 4436
	blt	%x0, %x31, 12  #1440 pc 4440
	j	fble_else.25059 #pc 4444
	nop #pc 4448
	addi	%x9, %x0, 0  #0 pc 4452
	j	fble_cont.25060 #pc 4456
	nop #pc 4460
fble_else.25059: #pc 4464
	addi	%x9, %x0, 1  #0 pc 4464
fble_cont.25060: #pc 4468
	beq	%x8, %x0, 12  #1440 pc 4468
	j	be_else.25061 #pc 4472
	nop #pc 4476
	addi	%x8, %x9, 0  #1440 pc 4480
	j	be_cont.25062 #pc 4484
	nop #pc 4488
be_else.25061: #pc 4492
	beq	%x9, %x0, 12  #1440 pc 4492
	j	be_else.25063 #pc 4496
	nop #pc 4500
	addi	%x8, %x0, 1  #0 pc 4504
	j	be_cont.25064 #pc 4508
	nop #pc 4512
be_else.25063: #pc 4516
	addi	%x8, %x0, 0  #0 pc 4516
be_cont.25064: #pc 4520
be_cont.25062: #pc 4520
	lw	%x9, 16(%x7)  #1440 pc 4520
	flw	%f0, 4(%x9)  #1440 pc 4524
	beq	%x8, %x0, 12  #1440 pc 4528
	j	be_else.25065 #pc 4532
	nop #pc 4536
	fsub	%f0, %f30, %f0  #1440 pc 4540
	j	be_cont.25066 #pc 4544
	nop #pc 4548
be_else.25065: #pc 4552
be_cont.25066: #pc 4552
	lw	%x8, 16(%x2)  #1440 pc 4552
	fsw	%f0, 8(%x8)  #1440 pc 4556
	fmv	%f0, l.21731  #0 pc 4560
	flw	%f1, 4(%x6)  #1440 pc 4564
	fdiv	%f0, %f0, %f1  #1440 pc 4568
	fsw	%f0, 12(%x8)  #1440 pc 4572
	j	be_cont.25058 #pc 4576
	nop #pc 4580
be_else.25057: #pc 4584
	fmv	%f0, l.21722  #0 pc 4584
	lw	%x7, 16(%x2)  #1440 pc 4588
	fsw	%f0, 12(%x7)  #1440 pc 4592
be_cont.25058: #pc 4596
	flw	%f0, 8(%x6)  #1440 pc 4596
	fmv	%f1, l.21722  #0 pc 4600
	feq	%x31, %f0, %f1  #1440 pc 4604
	blt	%x0, %x31, 12  #1440 pc 4608
	j	fbe_else.25067 #pc 4612
	nop #pc 4616
	addi	%x7, %x0, 1  #0 pc 4620
	j	fbe_cont.25068 #pc 4624
	nop #pc 4628
fbe_else.25067: #pc 4632
	addi	%x7, %x0, 0  #0 pc 4632
fbe_cont.25068: #pc 4636
	beq	%x7, %x0, 12  #1440 pc 4636
	j	be_else.25069 #pc 4640
	nop #pc 4644
	lw	%x7, 20(%x2)  #1440 pc 4648
	lw	%x8, 24(%x7)  #1440 pc 4652
	flw	%f0, 8(%x6)  #1440 pc 4656
	fmv	%f1, l.21722  #0 pc 4660
	fle	%x31, %f1, %f0  #1440 pc 4664
	blt	%x0, %x31, 12  #1440 pc 4668
	j	fble_else.25071 #pc 4672
	nop #pc 4676
	addi	%x9, %x0, 0  #0 pc 4680
	j	fble_cont.25072 #pc 4684
	nop #pc 4688
fble_else.25071: #pc 4692
	addi	%x9, %x0, 1  #0 pc 4692
fble_cont.25072: #pc 4696
	beq	%x8, %x0, 12  #1440 pc 4696
	j	be_else.25073 #pc 4700
	nop #pc 4704
	addi	%x8, %x9, 0  #1440 pc 4708
	j	be_cont.25074 #pc 4712
	nop #pc 4716
be_else.25073: #pc 4720
	beq	%x9, %x0, 12  #1440 pc 4720
	j	be_else.25075 #pc 4724
	nop #pc 4728
	addi	%x8, %x0, 1  #0 pc 4732
	j	be_cont.25076 #pc 4736
	nop #pc 4740
be_else.25075: #pc 4744
	addi	%x8, %x0, 0  #0 pc 4744
be_cont.25076: #pc 4748
be_cont.25074: #pc 4748
	lw	%x7, 16(%x7)  #1440 pc 4748
	flw	%f0, 8(%x7)  #1440 pc 4752
	beq	%x8, %x0, 12  #1440 pc 4756
	j	be_else.25077 #pc 4760
	nop #pc 4764
	fsub	%f0, %f30, %f0  #1440 pc 4768
	j	be_cont.25078 #pc 4772
	nop #pc 4776
be_else.25077: #pc 4780
be_cont.25078: #pc 4780
	lw	%x7, 16(%x2)  #1440 pc 4780
	fsw	%f0, 16(%x7)  #1440 pc 4784
	fmv	%f0, l.21731  #0 pc 4788
	flw	%f1, 8(%x6)  #1440 pc 4792
	fdiv	%f0, %f0, %f1  #1440 pc 4796
	fsw	%f0, 20(%x7)  #1440 pc 4800
	j	be_cont.25070 #pc 4804
	nop #pc 4808
be_else.25069: #pc 4812
	fmv	%f0, l.21722  #0 pc 4812
	lw	%x6, 16(%x2)  #1440 pc 4816
	fsw	%f0, 20(%x6)  #1440 pc 4820
be_cont.25070: #pc 4824
	lw	%x6, 8(%x2)  #1440 pc 4824
	slli	%x7, %x6, 2  #1440 pc 4828
	lw	%x8, 12(%x2)  #1440 pc 4832
	lw	%x9, 16(%x2)  #1440 pc 4836
	add	%x31, %x7, %x8  #1440 pc 4840
	sw	%x9, 0(%x31)  #1440 pc 4844
	j	be_cont.25042 #pc 4848
	nop #pc 4852
be_else.25041: #pc 4856
	addi	%x31, %x0, 2  #pc 4856
	beq	%x11, %x31, 12  #1441 pc 4860
	j	be_else.25079 #pc 4864
	nop #pc 4868
	fmv	%f0, l.21722  #0 pc 4872
	addi	%x11, %x3, 0  #1442 pc 4876
	addi	%x12, %x11, 0  #1442 pc 4880
	addi	%x11, %x11, 16  #1442 pc 4884
	addi	%x3, %x11, 0  #1442 pc 4888
	addi	%x11, %x0, 3  #0 pc 4892
	sw	%x9, 12(%x2)  #1442 pc 4896
	sw	%x12, 28(%x2)  #1442 pc 4900
	sw	%x8, 20(%x2)  #1442 pc 4904
	sw	%x10, 24(%x2)  #1442 pc 4908
	addi	%x7, %x11, 0  #0 pc 4912
	addi	%x6, %x12, 0  #0 pc 4916
	sw	%x1, 32(%x2)  #1442 pc 4920
	addi	%x2, %x2, 36  #1442 pc 4924
	jal	%x1, assign_farray.2573  #1442 pc 4928
	addi	%x2, %x2, -36  #1442 pc 4932
	lw	%x1, 32(%x2) #1442 pc 4936
	lw	%x6, 24(%x2)  #1442 pc 4940
	flw	%f0, 0(%x6)  #1442 pc 4944
	lw	%x7, 20(%x2)  #1442 pc 4948
	lw	%x8, 16(%x7)  #1442 pc 4952
	flw	%f1, 0(%x8)  #1442 pc 4956
	fmul	%f0, %f0, %f1  #1442 pc 4960
	flw	%f1, 4(%x6)  #1442 pc 4964
	lw	%x8, 16(%x7)  #1442 pc 4968
	flw	%f2, 4(%x8)  #1442 pc 4972
	fmul	%f1, %f1, %f2  #1442 pc 4976
	fadd	%f0, %f0, %f1  #1442 pc 4980
	flw	%f1, 8(%x6)  #1442 pc 4984
	lw	%x6, 16(%x7)  #1442 pc 4988
	flw	%f2, 8(%x6)  #1442 pc 4992
	fmul	%f1, %f1, %f2  #1442 pc 4996
	fadd	%f0, %f0, %f1  #1442 pc 5000
	fmv	%f1, l.21722  #0 pc 5004
	fle	%x31, %f0, %f1  #1442 pc 5008
	blt	%x0, %x31, 12  #1442 pc 5012
	j	fble_else.25081 #pc 5016
	nop #pc 5020
	addi	%x6, %x0, 0  #0 pc 5024
	j	fble_cont.25082 #pc 5028
	nop #pc 5032
fble_else.25081: #pc 5036
	addi	%x6, %x0, 1  #0 pc 5036
fble_cont.25082: #pc 5040
	beq	%x6, %x0, 12  #1442 pc 5040
	j	be_else.25083 #pc 5044
	nop #pc 5048
	fmv	%f0, l.21722  #0 pc 5052
	lw	%x6, 28(%x2)  #1442 pc 5056
	fsw	%f0, 0(%x6)  #1442 pc 5060
	j	be_cont.25084 #pc 5064
	nop #pc 5068
be_else.25083: #pc 5072
	fmv	%f1, l.21791  #0 pc 5072
	fdiv	%f1, %f1, %f0  #1442 pc 5076
	lw	%x6, 28(%x2)  #1442 pc 5080
	fsw	%f1, 0(%x6)  #1442 pc 5084
	lw	%x8, 16(%x7)  #1442 pc 5088
	flw	%f1, 0(%x8)  #1442 pc 5092
	fdiv	%f1, %f1, %f0  #1442 pc 5096
	fsub	%f1, %f30, %f1  #1442 pc 5100
	fsw	%f1, 4(%x6)  #1442 pc 5104
	lw	%x8, 16(%x7)  #1442 pc 5108
	flw	%f1, 4(%x8)  #1442 pc 5112
	fdiv	%f1, %f1, %f0  #1442 pc 5116
	fsub	%f1, %f30, %f1  #1442 pc 5120
	fsw	%f1, 8(%x6)  #1442 pc 5124
	lw	%x7, 16(%x7)  #1442 pc 5128
	flw	%f1, 8(%x7)  #1442 pc 5132
	fdiv	%f0, %f1, %f0  #1442 pc 5136
	fsub	%f0, %f30, %f0  #1442 pc 5140
	fsw	%f0, 12(%x6)  #1442 pc 5144
be_cont.25084: #pc 5148
	lw	%x7, 8(%x2)  #1442 pc 5148
	slli	%x8, %x7, 2  #1442 pc 5152
	lw	%x9, 12(%x2)  #1442 pc 5156
	add	%x31, %x8, %x9  #1442 pc 5160
	sw	%x6, 0(%x31)  #1442 pc 5164
	j	be_cont.25080 #pc 5168
	nop #pc 5172
be_else.25079: #pc 5176
	fmv	%f0, l.21722  #0 pc 5176
	addi	%x11, %x3, 0  #1444 pc 5180
	addi	%x12, %x11, 0  #1444 pc 5184
	addi	%x11, %x11, 20  #1444 pc 5188
	addi	%x3, %x11, 0  #1444 pc 5192
	addi	%x11, %x0, 4  #0 pc 5196
	sw	%x9, 12(%x2)  #1444 pc 5200
	sw	%x12, 32(%x2)  #1444 pc 5204
	sw	%x8, 20(%x2)  #1444 pc 5208
	sw	%x10, 24(%x2)  #1444 pc 5212
	addi	%x7, %x11, 0  #0 pc 5216
	addi	%x6, %x12, 0  #0 pc 5220
	sw	%x1, 36(%x2)  #1444 pc 5224
	addi	%x2, %x2, 40  #1444 pc 5228
	jal	%x1, assign_farray.2573  #1444 pc 5232
	addi	%x2, %x2, -40  #1444 pc 5236
	lw	%x1, 36(%x2) #1444 pc 5240
	lw	%x6, 24(%x2)  #1444 pc 5244
	flw	%f0, 0(%x6)  #1444 pc 5248
	flw	%f1, 4(%x6)  #1444 pc 5252
	flw	%f2, 8(%x6)  #1444 pc 5256
	fmul	%f3, %f0, %f0  #1444 pc 5260
	lw	%x7, 20(%x2)  #1444 pc 5264
	lw	%x8, 16(%x7)  #1444 pc 5268
	flw	%f4, 0(%x8)  #1444 pc 5272
	fmul	%f3, %f3, %f4  #1444 pc 5276
	fmul	%f4, %f1, %f1  #1444 pc 5280
	lw	%x8, 16(%x7)  #1444 pc 5284
	flw	%f5, 4(%x8)  #1444 pc 5288
	fmul	%f4, %f4, %f5  #1444 pc 5292
	fadd	%f3, %f3, %f4  #1444 pc 5296
	fmul	%f4, %f2, %f2  #1444 pc 5300
	lw	%x8, 16(%x7)  #1444 pc 5304
	flw	%f5, 8(%x8)  #1444 pc 5308
	fmul	%f4, %f4, %f5  #1444 pc 5312
	fadd	%f3, %f3, %f4  #1444 pc 5316
	lw	%x8, 12(%x7)  #1444 pc 5320
	beq	%x8, %x0, 12  #1444 pc 5324
	j	be_else.25085 #pc 5328
	nop #pc 5332
	fadd	%f0, %f3, %f30  #1444 pc 5336
	j	be_cont.25086 #pc 5340
	nop #pc 5344
be_else.25085: #pc 5348
	fmul	%f4, %f1, %f2  #1444 pc 5348
	lw	%x8, 36(%x7)  #1444 pc 5352
	flw	%f5, 0(%x8)  #1444 pc 5356
	fmul	%f4, %f4, %f5  #1444 pc 5360
	fadd	%f3, %f3, %f4  #1444 pc 5364
	fmul	%f2, %f2, %f0  #1444 pc 5368
	lw	%x8, 36(%x7)  #1444 pc 5372
	flw	%f4, 4(%x8)  #1444 pc 5376
	fmul	%f2, %f2, %f4  #1444 pc 5380
	fadd	%f2, %f3, %f2  #1444 pc 5384
	fmul	%f0, %f0, %f1  #1444 pc 5388
	lw	%x8, 36(%x7)  #1444 pc 5392
	flw	%f1, 8(%x8)  #1444 pc 5396
	fmul	%f0, %f0, %f1  #1444 pc 5400
	fadd	%f0, %f2, %f0  #1444 pc 5404
be_cont.25086: #pc 5408
	flw	%f1, 0(%x6)  #1444 pc 5408
	lw	%x8, 16(%x7)  #1444 pc 5412
	flw	%f2, 0(%x8)  #1444 pc 5416
	fmul	%f1, %f1, %f2  #1444 pc 5420
	fsub	%f1, %f30, %f1  #1444 pc 5424
	flw	%f2, 4(%x6)  #1444 pc 5428
	lw	%x8, 16(%x7)  #1444 pc 5432
	flw	%f3, 4(%x8)  #1444 pc 5436
	fmul	%f2, %f2, %f3  #1444 pc 5440
	fsub	%f2, %f30, %f2  #1444 pc 5444
	flw	%f3, 8(%x6)  #1444 pc 5448
	lw	%x8, 16(%x7)  #1444 pc 5452
	flw	%f4, 8(%x8)  #1444 pc 5456
	fmul	%f3, %f3, %f4  #1444 pc 5460
	fsub	%f3, %f30, %f3  #1444 pc 5464
	lw	%x8, 32(%x2)  #1444 pc 5468
	fsw	%f0, 0(%x8)  #1444 pc 5472
	lw	%x9, 12(%x7)  #1444 pc 5476
	beq	%x9, %x0, 12  #1444 pc 5480
	j	be_else.25087 #pc 5484
	nop #pc 5488
	fsw	%f1, 4(%x8)  #1444 pc 5492
	fsw	%f2, 8(%x8)  #1444 pc 5496
	fsw	%f3, 12(%x8)  #1444 pc 5500
	j	be_cont.25088 #pc 5504
	nop #pc 5508
be_else.25087: #pc 5512
	flw	%f4, 8(%x6)  #1444 pc 5512
	lw	%x9, 36(%x7)  #1444 pc 5516
	flw	%f5, 4(%x9)  #1444 pc 5520
	fmul	%f4, %f4, %f5  #1444 pc 5524
	flw	%f5, 4(%x6)  #1444 pc 5528
	lw	%x9, 36(%x7)  #1444 pc 5532
	flw	%f6, 8(%x9)  #1444 pc 5536
	fmul	%f5, %f5, %f6  #1444 pc 5540
	fadd	%f4, %f4, %f5  #1444 pc 5544
	fmv	%f5, l.21733  #0 pc 5548
	fmul	%f4, %f5, %f4  #1444 pc 5552
	fsub	%f1, %f1, %f4  #1444 pc 5556
	fsw	%f1, 4(%x8)  #1444 pc 5560
	flw	%f1, 8(%x6)  #1444 pc 5564
	lw	%x9, 36(%x7)  #1444 pc 5568
	flw	%f4, 0(%x9)  #1444 pc 5572
	fmul	%f1, %f1, %f4  #1444 pc 5576
	flw	%f4, 0(%x6)  #1444 pc 5580
	lw	%x9, 36(%x7)  #1444 pc 5584
	flw	%f5, 8(%x9)  #1444 pc 5588
	fmul	%f4, %f4, %f5  #1444 pc 5592
	fadd	%f1, %f1, %f4  #1444 pc 5596
	fmv	%f4, l.21733  #0 pc 5600
	fmul	%f1, %f4, %f1  #1444 pc 5604
	fsub	%f1, %f2, %f1  #1444 pc 5608
	fsw	%f1, 8(%x8)  #1444 pc 5612
	flw	%f1, 4(%x6)  #1444 pc 5616
	lw	%x9, 36(%x7)  #1444 pc 5620
	flw	%f2, 0(%x9)  #1444 pc 5624
	fmul	%f1, %f1, %f2  #1444 pc 5628
	flw	%f2, 0(%x6)  #1444 pc 5632
	lw	%x6, 36(%x7)  #1444 pc 5636
	flw	%f4, 4(%x6)  #1444 pc 5640
	fmul	%f2, %f2, %f4  #1444 pc 5644
	fadd	%f1, %f1, %f2  #1444 pc 5648
	fmv	%f2, l.21733  #0 pc 5652
	fmul	%f1, %f2, %f1  #1444 pc 5656
	fsub	%f1, %f3, %f1  #1444 pc 5660
	fsw	%f1, 12(%x8)  #1444 pc 5664
be_cont.25088: #pc 5668
	fmv	%f1, l.21722  #0 pc 5668
	feq	%x31, %f0, %f1  #1444 pc 5672
	blt	%x0, %x31, 12  #1444 pc 5676
	j	fbe_else.25089 #pc 5680
	nop #pc 5684
	addi	%x6, %x0, 1  #0 pc 5688
	j	fbe_cont.25090 #pc 5692
	nop #pc 5696
fbe_else.25089: #pc 5700
	addi	%x6, %x0, 0  #0 pc 5700
fbe_cont.25090: #pc 5704
	beq	%x6, %x0, 12  #1444 pc 5704
	j	be_else.25091 #pc 5708
	nop #pc 5712
	fmv	%f1, l.21731  #0 pc 5716
	fdiv	%f0, %f1, %f0  #1444 pc 5720
	fsw	%f0, 16(%x8)  #1444 pc 5724
	j	be_cont.25092 #pc 5728
	nop #pc 5732
be_else.25091: #pc 5736
be_cont.25092: #pc 5736
	lw	%x6, 8(%x2)  #1444 pc 5736
	slli	%x7, %x6, 2  #1444 pc 5740
	lw	%x9, 12(%x2)  #1444 pc 5744
	add	%x31, %x7, %x9  #1444 pc 5748
	sw	%x8, 0(%x31)  #1444 pc 5752
be_cont.25080: #pc 5756
be_cont.25042: #pc 5756
	lw	%x6, 8(%x2)  #1446 pc 5756
	addi	%x7, %x6, -1  #1446 pc 5760
	lw	%x6, 0(%x2)  #1446 pc 5764
	lw	%x29, 4(%x2)  #1446 pc 5768
	lw	%x30, 0(%x29)  #1446 pc 5772
	jalr	%x0, %x30, 0  #1446 pc 5776
	nop #pc 5780
bge_else.25040: #pc 5784
	ret #pc 5784
	nop #pc 5788
setup_startp_constants.2851:  #pc 5792
	lw	%x8, 4(%x29)  #0 pc 5792
	bge	%x7, %x0, 12  #1459 pc 5796
	j	bge_else.25094 #pc 5800
	nop #pc 5804
	slli	%x9, %x7, 2  #1460 pc 5808
	add	%x31, %x9, %x8  #1460 pc 5812
	lw	%x8, 0(%x31)  #1460 pc 5816
	lw	%x9, 40(%x8)  #1461 pc 5820
	lw	%x10, 4(%x8)  #1462 pc 5824
	flw	%f0, 0(%x6)  #1463 pc 5828
	lw	%x11, 20(%x8)  #1463 pc 5832
	flw	%f1, 0(%x11)  #1463 pc 5836
	fsub	%f0, %f0, %f1  #1463 pc 5840
	fsw	%f0, 0(%x9)  #1463 pc 5844
	flw	%f0, 4(%x6)  #1464 pc 5848
	lw	%x11, 20(%x8)  #1464 pc 5852
	flw	%f1, 4(%x11)  #1464 pc 5856
	fsub	%f0, %f0, %f1  #1464 pc 5860
	fsw	%f0, 4(%x9)  #1464 pc 5864
	flw	%f0, 8(%x6)  #1465 pc 5868
	lw	%x11, 20(%x8)  #1465 pc 5872
	flw	%f1, 8(%x11)  #1465 pc 5876
	fsub	%f0, %f0, %f1  #1465 pc 5880
	fsw	%f0, 8(%x9)  #1465 pc 5884
	addi	%x31, %x0, 2  #pc 5888
	beq	%x10, %x31, 12  #1466 pc 5892
	j	be_else.25095 #pc 5896
	nop #pc 5900
	lw	%x8, 16(%x8)  #1468 pc 5904
	flw	%f0, 0(%x9)  #1468 pc 5908
	flw	%f1, 4(%x9)  #1468 pc 5912
	flw	%f2, 8(%x9)  #1468 pc 5916
	flw	%f3, 0(%x8)  #1468 pc 5920
	fmul	%f0, %f3, %f0  #1468 pc 5924
	flw	%f3, 4(%x8)  #1468 pc 5928
	fmul	%f1, %f3, %f1  #1468 pc 5932
	fadd	%f0, %f0, %f1  #1468 pc 5936
	flw	%f1, 8(%x8)  #1468 pc 5940
	fmul	%f1, %f1, %f2  #1468 pc 5944
	fadd	%f0, %f0, %f1  #1468 pc 5948
	fsw	%f0, 12(%x9)  #1467 pc 5952
	j	be_cont.25096 #pc 5956
	nop #pc 5960
be_else.25095: #pc 5964
	addi	%x31, %x0, 2  #pc 5964
	bge	%x31, %x10, 12  #1469 pc 5968
	j	ble_else.25097 #pc 5972
	nop #pc 5976
	j	ble_cont.25098 #pc 5980
	nop #pc 5984
ble_else.25097: #pc 5988
	flw	%f0, 0(%x9)  #1470 pc 5988
	flw	%f1, 4(%x9)  #1470 pc 5992
	flw	%f2, 8(%x9)  #1470 pc 5996
	fmul	%f3, %f0, %f0  #1470 pc 6000
	lw	%x11, 16(%x8)  #1470 pc 6004
	flw	%f4, 0(%x11)  #1470 pc 6008
	fmul	%f3, %f3, %f4  #1470 pc 6012
	fmul	%f4, %f1, %f1  #1470 pc 6016
	lw	%x11, 16(%x8)  #1470 pc 6020
	flw	%f5, 4(%x11)  #1470 pc 6024
	fmul	%f4, %f4, %f5  #1470 pc 6028
	fadd	%f3, %f3, %f4  #1470 pc 6032
	fmul	%f4, %f2, %f2  #1470 pc 6036
	lw	%x11, 16(%x8)  #1470 pc 6040
	flw	%f5, 8(%x11)  #1470 pc 6044
	fmul	%f4, %f4, %f5  #1470 pc 6048
	fadd	%f3, %f3, %f4  #1470 pc 6052
	lw	%x11, 12(%x8)  #1470 pc 6056
	beq	%x11, %x0, 12  #1470 pc 6060
	j	be_else.25099 #pc 6064
	nop #pc 6068
	fadd	%f0, %f3, %f30  #1470 pc 6072
	j	be_cont.25100 #pc 6076
	nop #pc 6080
be_else.25099: #pc 6084
	fmul	%f4, %f1, %f2  #1470 pc 6084
	lw	%x11, 36(%x8)  #1470 pc 6088
	flw	%f5, 0(%x11)  #1470 pc 6092
	fmul	%f4, %f4, %f5  #1470 pc 6096
	fadd	%f3, %f3, %f4  #1470 pc 6100
	fmul	%f2, %f2, %f0  #1470 pc 6104
	lw	%x11, 36(%x8)  #1470 pc 6108
	flw	%f4, 4(%x11)  #1470 pc 6112
	fmul	%f2, %f2, %f4  #1470 pc 6116
	fadd	%f2, %f3, %f2  #1470 pc 6120
	fmul	%f0, %f0, %f1  #1470 pc 6124
	lw	%x8, 36(%x8)  #1470 pc 6128
	flw	%f1, 8(%x8)  #1470 pc 6132
	fmul	%f0, %f0, %f1  #1470 pc 6136
	fadd	%f0, %f2, %f0  #1470 pc 6140
be_cont.25100: #pc 6144
	addi	%x31, %x0, 3  #pc 6144
	beq	%x10, %x31, 12  #1471 pc 6148
	j	be_else.25101 #pc 6152
	nop #pc 6156
	fmv	%f1, l.21731  #0 pc 6160
	fsub	%f0, %f0, %f1  #1471 pc 6164
	j	be_cont.25102 #pc 6168
	nop #pc 6172
be_else.25101: #pc 6176
be_cont.25102: #pc 6176
	fsw	%f0, 12(%x9)  #1471 pc 6176
ble_cont.25098: #pc 6180
be_cont.25096: #pc 6180
	addi	%x7, %x7, -1  #1473 pc 6180
	lw	%x30, 0(%x29)  #1473 pc 6184
	jalr	%x0, %x30, 0  #1473 pc 6188
	nop #pc 6192
bge_else.25094: #pc 6196
	ret #pc 6196
	nop #pc 6200
check_all_inside.2876:  #pc 6204
	lw	%x8, 4(%x29)  #1528 pc 6204
	slli	%x9, %x6, 2  #1528 pc 6208
	add	%x31, %x9, %x7  #1528 pc 6212
	lw	%x9, 0(%x31)  #1528 pc 6216
	addi	%x31, %x0, -1  #pc 6220
	beq	%x9, %x31, 12  #1529 pc 6224
	j	be_else.25104 #pc 6228
	nop #pc 6232
	addi	%x6, %x0, 1  #0 pc 6236
	ret #pc 6240
	nop #pc 6244
be_else.25104: #pc 6248
	slli	%x9, %x9, 2  #1532 pc 6248
	add	%x31, %x9, %x8  #1532 pc 6252
	lw	%x8, 0(%x31)  #1532 pc 6256
	lw	%x9, 20(%x8)  #1532 pc 6260
	flw	%f3, 0(%x9)  #1532 pc 6264
	fsub	%f3, %f0, %f3  #1532 pc 6268
	lw	%x9, 20(%x8)  #1532 pc 6272
	flw	%f4, 4(%x9)  #1532 pc 6276
	fsub	%f4, %f1, %f4  #1532 pc 6280
	lw	%x9, 20(%x8)  #1532 pc 6284
	flw	%f5, 8(%x9)  #1532 pc 6288
	fsub	%f5, %f2, %f5  #1532 pc 6292
	lw	%x9, 4(%x8)  #1532 pc 6296
	addi	%x31, %x0, 1  #pc 6300
	beq	%x9, %x31, 12  #1532 pc 6304
	j	be_else.25105 #pc 6308
	nop #pc 6312
	fabs	%f3, %f3  #1532 pc 6316
	lw	%x9, 16(%x8)  #1532 pc 6320
	flw	%f6, 0(%x9)  #1532 pc 6324
	fle	%x31, %f6, %f3  #1532 pc 6328
	blt	%x0, %x31, 12  #1532 pc 6332
	j	fble_else.25107 #pc 6336
	nop #pc 6340
	addi	%x9, %x0, 0  #0 pc 6344
	j	fble_cont.25108 #pc 6348
	nop #pc 6352
fble_else.25107: #pc 6356
	addi	%x9, %x0, 1  #0 pc 6356
fble_cont.25108: #pc 6360
	beq	%x9, %x0, 12  #1532 pc 6360
	j	be_else.25109 #pc 6364
	nop #pc 6368
	addi	%x9, %x0, 0  #0 pc 6372
	j	be_cont.25110 #pc 6376
	nop #pc 6380
be_else.25109: #pc 6384
	fabs	%f3, %f4  #1532 pc 6384
	lw	%x9, 16(%x8)  #1532 pc 6388
	flw	%f4, 4(%x9)  #1532 pc 6392
	fle	%x31, %f4, %f3  #1532 pc 6396
	blt	%x0, %x31, 12  #1532 pc 6400
	j	fble_else.25111 #pc 6404
	nop #pc 6408
	addi	%x9, %x0, 0  #0 pc 6412
	j	fble_cont.25112 #pc 6416
	nop #pc 6420
fble_else.25111: #pc 6424
	addi	%x9, %x0, 1  #0 pc 6424
fble_cont.25112: #pc 6428
	beq	%x9, %x0, 12  #1532 pc 6428
	j	be_else.25113 #pc 6432
	nop #pc 6436
	addi	%x9, %x0, 0  #0 pc 6440
	j	be_cont.25114 #pc 6444
	nop #pc 6448
be_else.25113: #pc 6452
	fabs	%f3, %f5  #1532 pc 6452
	lw	%x9, 16(%x8)  #1532 pc 6456
	flw	%f4, 8(%x9)  #1532 pc 6460
	fle	%x31, %f4, %f3  #1532 pc 6464
	blt	%x0, %x31, 12  #1532 pc 6468
	j	fble_else.25115 #pc 6472
	nop #pc 6476
	addi	%x9, %x0, 0  #0 pc 6480
	j	fble_cont.25116 #pc 6484
	nop #pc 6488
fble_else.25115: #pc 6492
	addi	%x9, %x0, 1  #0 pc 6492
fble_cont.25116: #pc 6496
be_cont.25114: #pc 6496
be_cont.25110: #pc 6496
	beq	%x9, %x0, 12  #1532 pc 6496
	j	be_else.25117 #pc 6500
	nop #pc 6504
	lw	%x8, 24(%x8)  #1532 pc 6508
	beq	%x8, %x0, 12  #1532 pc 6512
	j	be_else.25119 #pc 6516
	nop #pc 6520
	addi	%x8, %x0, 1  #0 pc 6524
	j	be_cont.25120 #pc 6528
	nop #pc 6532
be_else.25119: #pc 6536
	addi	%x8, %x0, 0  #0 pc 6536
be_cont.25120: #pc 6540
	j	be_cont.25118 #pc 6540
	nop #pc 6544
be_else.25117: #pc 6548
	lw	%x8, 24(%x8)  #1532 pc 6548
be_cont.25118: #pc 6552
	j	be_cont.25106 #pc 6552
	nop #pc 6556
be_else.25105: #pc 6560
	addi	%x31, %x0, 2  #pc 6560
	beq	%x9, %x31, 12  #1532 pc 6564
	j	be_else.25121 #pc 6568
	nop #pc 6572
	lw	%x9, 16(%x8)  #1532 pc 6576
	flw	%f6, 0(%x9)  #1532 pc 6580
	fmul	%f3, %f6, %f3  #1532 pc 6584
	flw	%f6, 4(%x9)  #1532 pc 6588
	fmul	%f4, %f6, %f4  #1532 pc 6592
	fadd	%f3, %f3, %f4  #1532 pc 6596
	flw	%f4, 8(%x9)  #1532 pc 6600
	fmul	%f4, %f4, %f5  #1532 pc 6604
	fadd	%f3, %f3, %f4  #1532 pc 6608
	lw	%x8, 24(%x8)  #1532 pc 6612
	fmv	%f4, l.21722  #0 pc 6616
	fle	%x31, %f4, %f3  #1532 pc 6620
	blt	%x0, %x31, 12  #1532 pc 6624
	j	fble_else.25123 #pc 6628
	nop #pc 6632
	addi	%x9, %x0, 0  #0 pc 6636
	j	fble_cont.25124 #pc 6640
	nop #pc 6644
fble_else.25123: #pc 6648
	addi	%x9, %x0, 1  #0 pc 6648
fble_cont.25124: #pc 6652
	beq	%x8, %x0, 12  #1532 pc 6652
	j	be_else.25125 #pc 6656
	nop #pc 6660
	addi	%x8, %x9, 0  #1532 pc 6664
	j	be_cont.25126 #pc 6668
	nop #pc 6672
be_else.25125: #pc 6676
	beq	%x9, %x0, 12  #1532 pc 6676
	j	be_else.25127 #pc 6680
	nop #pc 6684
	addi	%x8, %x0, 1  #0 pc 6688
	j	be_cont.25128 #pc 6692
	nop #pc 6696
be_else.25127: #pc 6700
	addi	%x8, %x0, 0  #0 pc 6700
be_cont.25128: #pc 6704
be_cont.25126: #pc 6704
	beq	%x8, %x0, 12  #1532 pc 6704
	j	be_else.25129 #pc 6708
	nop #pc 6712
	addi	%x8, %x0, 1  #0 pc 6716
	j	be_cont.25130 #pc 6720
	nop #pc 6724
be_else.25129: #pc 6728
	addi	%x8, %x0, 0  #0 pc 6728
be_cont.25130: #pc 6732
	j	be_cont.25122 #pc 6732
	nop #pc 6736
be_else.25121: #pc 6740
	fmul	%f6, %f3, %f3  #1532 pc 6740
	lw	%x9, 16(%x8)  #1532 pc 6744
	flw	%f7, 0(%x9)  #1532 pc 6748
	fmul	%f6, %f6, %f7  #1532 pc 6752
	fmul	%f7, %f4, %f4  #1532 pc 6756
	lw	%x9, 16(%x8)  #1532 pc 6760
	flw	%f8, 4(%x9)  #1532 pc 6764
	fmul	%f7, %f7, %f8  #1532 pc 6768
	fadd	%f6, %f6, %f7  #1532 pc 6772
	fmul	%f7, %f5, %f5  #1532 pc 6776
	lw	%x9, 16(%x8)  #1532 pc 6780
	flw	%f8, 8(%x9)  #1532 pc 6784
	fmul	%f7, %f7, %f8  #1532 pc 6788
	fadd	%f6, %f6, %f7  #1532 pc 6792
	lw	%x9, 12(%x8)  #1532 pc 6796
	beq	%x9, %x0, 12  #1532 pc 6800
	j	be_else.25131 #pc 6804
	nop #pc 6808
	fadd	%f3, %f6, %f30  #1532 pc 6812
	j	be_cont.25132 #pc 6816
	nop #pc 6820
be_else.25131: #pc 6824
	fmul	%f7, %f4, %f5  #1532 pc 6824
	lw	%x9, 36(%x8)  #1532 pc 6828
	flw	%f8, 0(%x9)  #1532 pc 6832
	fmul	%f7, %f7, %f8  #1532 pc 6836
	fadd	%f6, %f6, %f7  #1532 pc 6840
	fmul	%f5, %f5, %f3  #1532 pc 6844
	lw	%x9, 36(%x8)  #1532 pc 6848
	flw	%f7, 4(%x9)  #1532 pc 6852
	fmul	%f5, %f5, %f7  #1532 pc 6856
	fadd	%f5, %f6, %f5  #1532 pc 6860
	fmul	%f3, %f3, %f4  #1532 pc 6864
	lw	%x9, 36(%x8)  #1532 pc 6868
	flw	%f4, 8(%x9)  #1532 pc 6872
	fmul	%f3, %f3, %f4  #1532 pc 6876
	fadd	%f3, %f5, %f3  #1532 pc 6880
be_cont.25132: #pc 6884
	lw	%x9, 4(%x8)  #1532 pc 6884
	addi	%x31, %x0, 3  #pc 6888
	beq	%x9, %x31, 12  #1532 pc 6892
	j	be_else.25133 #pc 6896
	nop #pc 6900
	fmv	%f4, l.21731  #0 pc 6904
	fsub	%f3, %f3, %f4  #1532 pc 6908
	j	be_cont.25134 #pc 6912
	nop #pc 6916
be_else.25133: #pc 6920
be_cont.25134: #pc 6920
	lw	%x8, 24(%x8)  #1532 pc 6920
	fmv	%f4, l.21722  #0 pc 6924
	fle	%x31, %f4, %f3  #1532 pc 6928
	blt	%x0, %x31, 12  #1532 pc 6932
	j	fble_else.25135 #pc 6936
	nop #pc 6940
	addi	%x9, %x0, 0  #0 pc 6944
	j	fble_cont.25136 #pc 6948
	nop #pc 6952
fble_else.25135: #pc 6956
	addi	%x9, %x0, 1  #0 pc 6956
fble_cont.25136: #pc 6960
	beq	%x8, %x0, 12  #1532 pc 6960
	j	be_else.25137 #pc 6964
	nop #pc 6968
	addi	%x8, %x9, 0  #1532 pc 6972
	j	be_cont.25138 #pc 6976
	nop #pc 6980
be_else.25137: #pc 6984
	beq	%x9, %x0, 12  #1532 pc 6984
	j	be_else.25139 #pc 6988
	nop #pc 6992
	addi	%x8, %x0, 1  #0 pc 6996
	j	be_cont.25140 #pc 7000
	nop #pc 7004
be_else.25139: #pc 7008
	addi	%x8, %x0, 0  #0 pc 7008
be_cont.25140: #pc 7012
be_cont.25138: #pc 7012
	beq	%x8, %x0, 12  #1532 pc 7012
	j	be_else.25141 #pc 7016
	nop #pc 7020
	addi	%x8, %x0, 1  #0 pc 7024
	j	be_cont.25142 #pc 7028
	nop #pc 7032
be_else.25141: #pc 7036
	addi	%x8, %x0, 0  #0 pc 7036
be_cont.25142: #pc 7040
be_cont.25122: #pc 7040
be_cont.25106: #pc 7040
	beq	%x8, %x0, 12  #1532 pc 7040
	j	be_else.25143 #pc 7044
	nop #pc 7048
	addi	%x6, %x6, 1  #1535 pc 7052
	lw	%x30, 0(%x29)  #1535 pc 7056
	jalr	%x0, %x30, 0  #1535 pc 7060
	nop #pc 7064
be_else.25143: #pc 7068
	addi	%x6, %x0, 0  #0 pc 7068
	ret #pc 7072
	nop #pc 7076
shadow_check_and_group.2882:  #pc 7080
	lw	%x8, 28(%x29)  #0 pc 7080
	lw	%x9, 24(%x29)  #0 pc 7084
	lw	%x10, 20(%x29)  #0 pc 7088
	lw	%x11, 16(%x29)  #0 pc 7092
	lw	%x12, 12(%x29)  #0 pc 7096
	lw	%x13, 8(%x29)  #0 pc 7100
	lw	%x14, 4(%x29)  #0 pc 7104
	slli	%x15, %x6, 2  #1548 pc 7108
	add	%x31, %x15, %x7  #1548 pc 7112
	lw	%x15, 0(%x31)  #1548 pc 7116
	addi	%x31, %x0, -1  #pc 7120
	beq	%x15, %x31, 12  #1548 pc 7124
	j	be_else.25144 #pc 7128
	nop #pc 7132
	addi	%x6, %x0, 0  #0 pc 7136
	ret #pc 7140
	nop #pc 7144
be_else.25144: #pc 7148
	slli	%x15, %x6, 2  #1551 pc 7148
	add	%x31, %x15, %x7  #1551 pc 7152
	lw	%x15, 0(%x31)  #1551 pc 7156
	slli	%x16, %x15, 2  #1552 pc 7160
	add	%x31, %x16, %x8  #1552 pc 7164
	lw	%x16, 0(%x31)  #1552 pc 7168
	flw	%f0, 0(%x12)  #1552 pc 7172
	lw	%x17, 20(%x16)  #1552 pc 7176
	flw	%f1, 0(%x17)  #1552 pc 7180
	fsub	%f0, %f0, %f1  #1552 pc 7184
	flw	%f1, 4(%x12)  #1552 pc 7188
	lw	%x17, 20(%x16)  #1552 pc 7192
	flw	%f2, 4(%x17)  #1552 pc 7196
	fsub	%f1, %f1, %f2  #1552 pc 7200
	flw	%f2, 8(%x12)  #1552 pc 7204
	lw	%x17, 20(%x16)  #1552 pc 7208
	flw	%f3, 8(%x17)  #1552 pc 7212
	fsub	%f2, %f2, %f3  #1552 pc 7216
	slli	%x17, %x15, 2  #1552 pc 7220
	add	%x31, %x17, %x9  #1552 pc 7224
	lw	%x9, 0(%x31)  #1552 pc 7228
	lw	%x17, 4(%x16)  #1552 pc 7232
	addi	%x31, %x0, 1  #pc 7236
	beq	%x17, %x31, 12  #1552 pc 7240
	j	be_else.25145 #pc 7244
	nop #pc 7248
	flw	%f3, 0(%x9)  #1552 pc 7252
	fsub	%f3, %f3, %f0  #1552 pc 7256
	flw	%f4, 4(%x9)  #1552 pc 7260
	fmul	%f3, %f3, %f4  #1552 pc 7264
	flw	%f4, 4(%x13)  #1552 pc 7268
	fmul	%f4, %f3, %f4  #1552 pc 7272
	fadd	%f4, %f4, %f1  #1552 pc 7276
	fabs	%f4, %f4  #1552 pc 7280
	lw	%x17, 16(%x16)  #1552 pc 7284
	flw	%f5, 4(%x17)  #1552 pc 7288
	fle	%x31, %f5, %f4  #1552 pc 7292
	blt	%x0, %x31, 12  #1552 pc 7296
	j	fble_else.25147 #pc 7300
	nop #pc 7304
	addi	%x17, %x0, 0  #0 pc 7308
	j	fble_cont.25148 #pc 7312
	nop #pc 7316
fble_else.25147: #pc 7320
	addi	%x17, %x0, 1  #0 pc 7320
fble_cont.25148: #pc 7324
	beq	%x17, %x0, 12  #1552 pc 7324
	j	be_else.25149 #pc 7328
	nop #pc 7332
	addi	%x17, %x0, 0  #0 pc 7336
	j	be_cont.25150 #pc 7340
	nop #pc 7344
be_else.25149: #pc 7348
	flw	%f4, 8(%x13)  #1552 pc 7348
	fmul	%f4, %f3, %f4  #1552 pc 7352
	fadd	%f4, %f4, %f2  #1552 pc 7356
	fabs	%f4, %f4  #1552 pc 7360
	lw	%x17, 16(%x16)  #1552 pc 7364
	flw	%f5, 8(%x17)  #1552 pc 7368
	fle	%x31, %f5, %f4  #1552 pc 7372
	blt	%x0, %x31, 12  #1552 pc 7376
	j	fble_else.25151 #pc 7380
	nop #pc 7384
	addi	%x17, %x0, 0  #0 pc 7388
	j	fble_cont.25152 #pc 7392
	nop #pc 7396
fble_else.25151: #pc 7400
	addi	%x17, %x0, 1  #0 pc 7400
fble_cont.25152: #pc 7404
	beq	%x17, %x0, 12  #1552 pc 7404
	j	be_else.25153 #pc 7408
	nop #pc 7412
	addi	%x17, %x0, 0  #0 pc 7416
	j	be_cont.25154 #pc 7420
	nop #pc 7424
be_else.25153: #pc 7428
	flw	%f4, 4(%x9)  #1552 pc 7428
	fmv	%f5, l.21722  #0 pc 7432
	feq	%x31, %f4, %f5  #1552 pc 7436
	blt	%x0, %x31, 12  #1552 pc 7440
	j	fbe_else.25155 #pc 7444
	nop #pc 7448
	addi	%x17, %x0, 1  #0 pc 7452
	j	fbe_cont.25156 #pc 7456
	nop #pc 7460
fbe_else.25155: #pc 7464
	addi	%x17, %x0, 0  #0 pc 7464
fbe_cont.25156: #pc 7468
	beq	%x17, %x0, 12  #1552 pc 7468
	j	be_else.25157 #pc 7472
	nop #pc 7476
	addi	%x17, %x0, 1  #0 pc 7480
	j	be_cont.25158 #pc 7484
	nop #pc 7488
be_else.25157: #pc 7492
	addi	%x17, %x0, 0  #0 pc 7492
be_cont.25158: #pc 7496
be_cont.25154: #pc 7496
be_cont.25150: #pc 7496
	beq	%x17, %x0, 12  #1552 pc 7496
	j	be_else.25159 #pc 7500
	nop #pc 7504
	flw	%f3, 8(%x9)  #1552 pc 7508
	fsub	%f3, %f3, %f1  #1552 pc 7512
	flw	%f4, 12(%x9)  #1552 pc 7516
	fmul	%f3, %f3, %f4  #1552 pc 7520
	flw	%f4, 0(%x13)  #1552 pc 7524
	fmul	%f4, %f3, %f4  #1552 pc 7528
	fadd	%f4, %f4, %f0  #1552 pc 7532
	fabs	%f4, %f4  #1552 pc 7536
	lw	%x17, 16(%x16)  #1552 pc 7540
	flw	%f5, 0(%x17)  #1552 pc 7544
	fle	%x31, %f5, %f4  #1552 pc 7548
	blt	%x0, %x31, 12  #1552 pc 7552
	j	fble_else.25161 #pc 7556
	nop #pc 7560
	addi	%x17, %x0, 0  #0 pc 7564
	j	fble_cont.25162 #pc 7568
	nop #pc 7572
fble_else.25161: #pc 7576
	addi	%x17, %x0, 1  #0 pc 7576
fble_cont.25162: #pc 7580
	beq	%x17, %x0, 12  #1552 pc 7580
	j	be_else.25163 #pc 7584
	nop #pc 7588
	addi	%x17, %x0, 0  #0 pc 7592
	j	be_cont.25164 #pc 7596
	nop #pc 7600
be_else.25163: #pc 7604
	flw	%f4, 8(%x13)  #1552 pc 7604
	fmul	%f4, %f3, %f4  #1552 pc 7608
	fadd	%f4, %f4, %f2  #1552 pc 7612
	fabs	%f4, %f4  #1552 pc 7616
	lw	%x17, 16(%x16)  #1552 pc 7620
	flw	%f5, 8(%x17)  #1552 pc 7624
	fle	%x31, %f5, %f4  #1552 pc 7628
	blt	%x0, %x31, 12  #1552 pc 7632
	j	fble_else.25165 #pc 7636
	nop #pc 7640
	addi	%x17, %x0, 0  #0 pc 7644
	j	fble_cont.25166 #pc 7648
	nop #pc 7652
fble_else.25165: #pc 7656
	addi	%x17, %x0, 1  #0 pc 7656
fble_cont.25166: #pc 7660
	beq	%x17, %x0, 12  #1552 pc 7660
	j	be_else.25167 #pc 7664
	nop #pc 7668
	addi	%x17, %x0, 0  #0 pc 7672
	j	be_cont.25168 #pc 7676
	nop #pc 7680
be_else.25167: #pc 7684
	flw	%f4, 12(%x9)  #1552 pc 7684
	fmv	%f5, l.21722  #0 pc 7688
	feq	%x31, %f4, %f5  #1552 pc 7692
	blt	%x0, %x31, 12  #1552 pc 7696
	j	fbe_else.25169 #pc 7700
	nop #pc 7704
	addi	%x17, %x0, 1  #0 pc 7708
	j	fbe_cont.25170 #pc 7712
	nop #pc 7716
fbe_else.25169: #pc 7720
	addi	%x17, %x0, 0  #0 pc 7720
fbe_cont.25170: #pc 7724
	beq	%x17, %x0, 12  #1552 pc 7724
	j	be_else.25171 #pc 7728
	nop #pc 7732
	addi	%x17, %x0, 1  #0 pc 7736
	j	be_cont.25172 #pc 7740
	nop #pc 7744
be_else.25171: #pc 7748
	addi	%x17, %x0, 0  #0 pc 7748
be_cont.25172: #pc 7752
be_cont.25168: #pc 7752
be_cont.25164: #pc 7752
	beq	%x17, %x0, 12  #1552 pc 7752
	j	be_else.25173 #pc 7756
	nop #pc 7760
	flw	%f3, 16(%x9)  #1552 pc 7764
	fsub	%f2, %f3, %f2  #1552 pc 7768
	flw	%f3, 20(%x9)  #1552 pc 7772
	fmul	%f2, %f2, %f3  #1552 pc 7776
	flw	%f3, 0(%x13)  #1552 pc 7780
	fmul	%f3, %f2, %f3  #1552 pc 7784
	fadd	%f0, %f3, %f0  #1552 pc 7788
	fabs	%f0, %f0  #1552 pc 7792
	lw	%x17, 16(%x16)  #1552 pc 7796
	flw	%f3, 0(%x17)  #1552 pc 7800
	fle	%x31, %f3, %f0  #1552 pc 7804
	blt	%x0, %x31, 12  #1552 pc 7808
	j	fble_else.25175 #pc 7812
	nop #pc 7816
	addi	%x17, %x0, 0  #0 pc 7820
	j	fble_cont.25176 #pc 7824
	nop #pc 7828
fble_else.25175: #pc 7832
	addi	%x17, %x0, 1  #0 pc 7832
fble_cont.25176: #pc 7836
	beq	%x17, %x0, 12  #1552 pc 7836
	j	be_else.25177 #pc 7840
	nop #pc 7844
	addi	%x9, %x0, 0  #0 pc 7848
	j	be_cont.25178 #pc 7852
	nop #pc 7856
be_else.25177: #pc 7860
	flw	%f0, 4(%x13)  #1552 pc 7860
	fmul	%f0, %f2, %f0  #1552 pc 7864
	fadd	%f0, %f0, %f1  #1552 pc 7868
	fabs	%f0, %f0  #1552 pc 7872
	lw	%x13, 16(%x16)  #1552 pc 7876
	flw	%f1, 4(%x13)  #1552 pc 7880
	fle	%x31, %f1, %f0  #1552 pc 7884
	blt	%x0, %x31, 12  #1552 pc 7888
	j	fble_else.25179 #pc 7892
	nop #pc 7896
	addi	%x13, %x0, 0  #0 pc 7900
	j	fble_cont.25180 #pc 7904
	nop #pc 7908
fble_else.25179: #pc 7912
	addi	%x13, %x0, 1  #0 pc 7912
fble_cont.25180: #pc 7916
	beq	%x13, %x0, 12  #1552 pc 7916
	j	be_else.25181 #pc 7920
	nop #pc 7924
	addi	%x9, %x0, 0  #0 pc 7928
	j	be_cont.25182 #pc 7932
	nop #pc 7936
be_else.25181: #pc 7940
	flw	%f0, 20(%x9)  #1552 pc 7940
	fmv	%f1, l.21722  #0 pc 7944
	feq	%x31, %f0, %f1  #1552 pc 7948
	blt	%x0, %x31, 12  #1552 pc 7952
	j	fbe_else.25183 #pc 7956
	nop #pc 7960
	addi	%x9, %x0, 1  #0 pc 7964
	j	fbe_cont.25184 #pc 7968
	nop #pc 7972
fbe_else.25183: #pc 7976
	addi	%x9, %x0, 0  #0 pc 7976
fbe_cont.25184: #pc 7980
	beq	%x9, %x0, 12  #1552 pc 7980
	j	be_else.25185 #pc 7984
	nop #pc 7988
	addi	%x9, %x0, 1  #0 pc 7992
	j	be_cont.25186 #pc 7996
	nop #pc 8000
be_else.25185: #pc 8004
	addi	%x9, %x0, 0  #0 pc 8004
be_cont.25186: #pc 8008
be_cont.25182: #pc 8008
be_cont.25178: #pc 8008
	beq	%x9, %x0, 12  #1552 pc 8008
	j	be_else.25187 #pc 8012
	nop #pc 8016
	addi	%x9, %x0, 0  #0 pc 8020
	j	be_cont.25188 #pc 8024
	nop #pc 8028
be_else.25187: #pc 8032
	fsw	%f2, 0(%x11)  #1552 pc 8032
	addi	%x9, %x0, 3  #0 pc 8036
be_cont.25188: #pc 8040
	j	be_cont.25174 #pc 8040
	nop #pc 8044
be_else.25173: #pc 8048
	fsw	%f3, 0(%x11)  #1552 pc 8048
	addi	%x9, %x0, 2  #0 pc 8052
be_cont.25174: #pc 8056
	j	be_cont.25160 #pc 8056
	nop #pc 8060
be_else.25159: #pc 8064
	fsw	%f3, 0(%x11)  #1552 pc 8064
	addi	%x9, %x0, 1  #0 pc 8068
be_cont.25160: #pc 8072
	j	be_cont.25146 #pc 8072
	nop #pc 8076
be_else.25145: #pc 8080
	addi	%x31, %x0, 2  #pc 8080
	beq	%x17, %x31, 12  #1552 pc 8084
	j	be_else.25189 #pc 8088
	nop #pc 8092
	flw	%f3, 0(%x9)  #1552 pc 8096
	fmv	%f4, l.21722  #0 pc 8100
	fle	%x31, %f4, %f3  #1552 pc 8104
	blt	%x0, %x31, 12  #1552 pc 8108
	j	fble_else.25191 #pc 8112
	nop #pc 8116
	addi	%x13, %x0, 0  #0 pc 8120
	j	fble_cont.25192 #pc 8124
	nop #pc 8128
fble_else.25191: #pc 8132
	addi	%x13, %x0, 1  #0 pc 8132
fble_cont.25192: #pc 8136
	beq	%x13, %x0, 12  #1552 pc 8136
	j	be_else.25193 #pc 8140
	nop #pc 8144
	addi	%x9, %x0, 0  #0 pc 8148
	j	be_cont.25194 #pc 8152
	nop #pc 8156
be_else.25193: #pc 8160
	flw	%f3, 4(%x9)  #1552 pc 8160
	fmul	%f0, %f3, %f0  #1552 pc 8164
	flw	%f3, 8(%x9)  #1552 pc 8168
	fmul	%f1, %f3, %f1  #1552 pc 8172
	fadd	%f0, %f0, %f1  #1552 pc 8176
	flw	%f1, 12(%x9)  #1552 pc 8180
	fmul	%f1, %f1, %f2  #1552 pc 8184
	fadd	%f0, %f0, %f1  #1552 pc 8188
	fsw	%f0, 0(%x11)  #1552 pc 8192
	addi	%x9, %x0, 1  #0 pc 8196
be_cont.25194: #pc 8200
	j	be_cont.25190 #pc 8200
	nop #pc 8204
be_else.25189: #pc 8208
	flw	%f3, 0(%x9)  #1552 pc 8208
	fmv	%f4, l.21722  #0 pc 8212
	feq	%x31, %f3, %f4  #1552 pc 8216
	blt	%x0, %x31, 12  #1552 pc 8220
	j	fbe_else.25195 #pc 8224
	nop #pc 8228
	addi	%x13, %x0, 1  #0 pc 8232
	j	fbe_cont.25196 #pc 8236
	nop #pc 8240
fbe_else.25195: #pc 8244
	addi	%x13, %x0, 0  #0 pc 8244
fbe_cont.25196: #pc 8248
	beq	%x13, %x0, 12  #1552 pc 8248
	j	be_else.25197 #pc 8252
	nop #pc 8256
	flw	%f4, 4(%x9)  #1552 pc 8260
	fmul	%f4, %f4, %f0  #1552 pc 8264
	flw	%f5, 8(%x9)  #1552 pc 8268
	fmul	%f5, %f5, %f1  #1552 pc 8272
	fadd	%f4, %f4, %f5  #1552 pc 8276
	flw	%f5, 12(%x9)  #1552 pc 8280
	fmul	%f5, %f5, %f2  #1552 pc 8284
	fadd	%f4, %f4, %f5  #1552 pc 8288
	fmul	%f5, %f0, %f0  #1552 pc 8292
	lw	%x13, 16(%x16)  #1552 pc 8296
	flw	%f6, 0(%x13)  #1552 pc 8300
	fmul	%f5, %f5, %f6  #1552 pc 8304
	fmul	%f6, %f1, %f1  #1552 pc 8308
	lw	%x13, 16(%x16)  #1552 pc 8312
	flw	%f7, 4(%x13)  #1552 pc 8316
	fmul	%f6, %f6, %f7  #1552 pc 8320
	fadd	%f5, %f5, %f6  #1552 pc 8324
	fmul	%f6, %f2, %f2  #1552 pc 8328
	lw	%x13, 16(%x16)  #1552 pc 8332
	flw	%f7, 8(%x13)  #1552 pc 8336
	fmul	%f6, %f6, %f7  #1552 pc 8340
	fadd	%f5, %f5, %f6  #1552 pc 8344
	lw	%x13, 12(%x16)  #1552 pc 8348
	beq	%x13, %x0, 12  #1552 pc 8352
	j	be_else.25199 #pc 8356
	nop #pc 8360
	fadd	%f0, %f5, %f30  #1552 pc 8364
	j	be_cont.25200 #pc 8368
	nop #pc 8372
be_else.25199: #pc 8376
	fmul	%f6, %f1, %f2  #1552 pc 8376
	lw	%x13, 36(%x16)  #1552 pc 8380
	flw	%f7, 0(%x13)  #1552 pc 8384
	fmul	%f6, %f6, %f7  #1552 pc 8388
	fadd	%f5, %f5, %f6  #1552 pc 8392
	fmul	%f2, %f2, %f0  #1552 pc 8396
	lw	%x13, 36(%x16)  #1552 pc 8400
	flw	%f6, 4(%x13)  #1552 pc 8404
	fmul	%f2, %f2, %f6  #1552 pc 8408
	fadd	%f2, %f5, %f2  #1552 pc 8412
	fmul	%f0, %f0, %f1  #1552 pc 8416
	lw	%x13, 36(%x16)  #1552 pc 8420
	flw	%f1, 8(%x13)  #1552 pc 8424
	fmul	%f0, %f0, %f1  #1552 pc 8428
	fadd	%f0, %f2, %f0  #1552 pc 8432
be_cont.25200: #pc 8436
	lw	%x13, 4(%x16)  #1552 pc 8436
	addi	%x31, %x0, 3  #pc 8440
	beq	%x13, %x31, 12  #1552 pc 8444
	j	be_else.25201 #pc 8448
	nop #pc 8452
	fmv	%f1, l.21731  #0 pc 8456
	fsub	%f0, %f0, %f1  #1552 pc 8460
	j	be_cont.25202 #pc 8464
	nop #pc 8468
be_else.25201: #pc 8472
be_cont.25202: #pc 8472
	fmul	%f1, %f4, %f4  #1552 pc 8472
	fmul	%f0, %f3, %f0  #1552 pc 8476
	fsub	%f0, %f1, %f0  #1552 pc 8480
	fmv	%f1, l.21722  #0 pc 8484
	fle	%x31, %f0, %f1  #1552 pc 8488
	blt	%x0, %x31, 12  #1552 pc 8492
	j	fble_else.25203 #pc 8496
	nop #pc 8500
	addi	%x13, %x0, 0  #0 pc 8504
	j	fble_cont.25204 #pc 8508
	nop #pc 8512
fble_else.25203: #pc 8516
	addi	%x13, %x0, 1  #0 pc 8516
fble_cont.25204: #pc 8520
	beq	%x13, %x0, 12  #1552 pc 8520
	j	be_else.25205 #pc 8524
	nop #pc 8528
	addi	%x9, %x0, 0  #0 pc 8532
	j	be_cont.25206 #pc 8536
	nop #pc 8540
be_else.25205: #pc 8544
	lw	%x13, 24(%x16)  #1552 pc 8544
	beq	%x13, %x0, 12  #1552 pc 8548
	j	be_else.25207 #pc 8552
	nop #pc 8556
	fsqrt	%f0, %f0  #1552 pc 8560
	fsub	%f0, %f4, %f0  #1552 pc 8564
	flw	%f1, 16(%x9)  #1552 pc 8568
	fmul	%f0, %f0, %f1  #1552 pc 8572
	fsw	%f0, 0(%x11)  #1552 pc 8576
	j	be_cont.25208 #pc 8580
	nop #pc 8584
be_else.25207: #pc 8588
	fsqrt	%f0, %f0  #1552 pc 8588
	fadd	%f0, %f4, %f0  #1552 pc 8592
	flw	%f1, 16(%x9)  #1552 pc 8596
	fmul	%f0, %f0, %f1  #1552 pc 8600
	fsw	%f0, 0(%x11)  #1552 pc 8604
be_cont.25208: #pc 8608
	addi	%x9, %x0, 1  #0 pc 8608
be_cont.25206: #pc 8612
	j	be_cont.25198 #pc 8612
	nop #pc 8616
be_else.25197: #pc 8620
	addi	%x9, %x0, 0  #0 pc 8620
be_cont.25198: #pc 8624
be_cont.25190: #pc 8624
be_cont.25146: #pc 8624
	flw	%f0, 0(%x11)  #1553 pc 8624
	beq	%x9, %x0, 12  #1554 pc 8628
	j	be_else.25209 #pc 8632
	nop #pc 8636
	addi	%x9, %x0, 0  #0 pc 8640
	j	be_cont.25210 #pc 8644
	nop #pc 8648
be_else.25209: #pc 8652
	fmv	%f1, l.22058  #0 pc 8652
	fle	%x31, %f1, %f0  #1554 pc 8656
	blt	%x0, %x31, 12  #1554 pc 8660
	j	fble_else.25211 #pc 8664
	nop #pc 8668
	addi	%x9, %x0, 0  #0 pc 8672
	j	fble_cont.25212 #pc 8676
	nop #pc 8680
fble_else.25211: #pc 8684
	addi	%x9, %x0, 1  #0 pc 8684
fble_cont.25212: #pc 8688
be_cont.25210: #pc 8688
	beq	%x9, %x0, 12  #1554 pc 8688
	j	be_else.25213 #pc 8692
	nop #pc 8696
	slli	%x9, %x15, 2  #1570 pc 8700
	add	%x31, %x9, %x8  #1570 pc 8704
	lw	%x8, 0(%x31)  #1570 pc 8708
	lw	%x8, 24(%x8)  #1570 pc 8712
	beq	%x8, %x0, 12  #1570 pc 8716
	j	be_else.25214 #pc 8720
	nop #pc 8724
	addi	%x6, %x0, 0  #0 pc 8728
	ret #pc 8732
	nop #pc 8736
be_else.25214: #pc 8740
	addi	%x6, %x6, 1  #1571 pc 8740
	lw	%x30, 0(%x29)  #1571 pc 8744
	jalr	%x0, %x30, 0  #1571 pc 8748
	nop #pc 8752
be_else.25213: #pc 8756
	fmv	%f1, l.22060  #0 pc 8756
	fadd	%f0, %f0, %f1  #1557 pc 8760
	flw	%f1, 0(%x10)  #1558 pc 8764
	fmul	%f1, %f1, %f0  #1558 pc 8768
	flw	%f2, 0(%x12)  #1558 pc 8772
	fadd	%f1, %f1, %f2  #1558 pc 8776
	flw	%f2, 4(%x10)  #1559 pc 8780
	fmul	%f2, %f2, %f0  #1559 pc 8784
	flw	%f3, 4(%x12)  #1559 pc 8788
	fadd	%f2, %f2, %f3  #1559 pc 8792
	flw	%f3, 8(%x10)  #1560 pc 8796
	fmul	%f0, %f3, %f0  #1560 pc 8800
	flw	%f3, 8(%x12)  #1560 pc 8804
	fadd	%f0, %f0, %f3  #1560 pc 8808
	addi	%x8, %x0, 0  #0 pc 8812
	sw	%x7, 0(%x2)  #1561 pc 8816
	sw	%x29, 4(%x2)  #1561 pc 8820
	sw	%x6, 8(%x2)  #1561 pc 8824
	addi	%x6, %x8, 0  #0 pc 8828
	addi	%x29, %x14, 0  #0 pc 8832
	fadd	%f29, %f2, %f30  #0 pc 8836
	fadd	%f2, %f0, %f30  #0 pc 8840
	fadd	%f0, %f1, %f30  #0 pc 8844
	fadd	%f1, %f29, %f30  #0 pc 8848
	sw	%x1, 12(%x2)  #1561 pc 8852
	lw	%x30, 0(%x29)  #1561 pc 8856
	addi	%x2, %x2, 16  #1561 pc 8860
	jalr	%x1, %x30, 0  #1561 pc 8864
	addi	%x2, %x2, -16  #1561 pc 8868
	lw	%x1, 12(%x2)  #1561 pc 8872
	beq	%x6, %x0, 12  #1561 pc 8876
	j	be_else.25215 #pc 8880
	nop #pc 8884
	lw	%x6, 8(%x2)  #1564 pc 8888
	addi	%x6, %x6, 1  #1564 pc 8892
	lw	%x7, 0(%x2)  #1564 pc 8896
	lw	%x29, 4(%x2)  #1564 pc 8900
	lw	%x30, 0(%x29)  #1564 pc 8904
	jalr	%x0, %x30, 0  #1564 pc 8908
	nop #pc 8912
be_else.25215: #pc 8916
	addi	%x6, %x0, 1  #0 pc 8916
	ret #pc 8920
	nop #pc 8924
shadow_check_one_or_group.2885:  #pc 8928
	lw	%x8, 8(%x29)  #1578 pc 8928
	lw	%x9, 4(%x29)  #1578 pc 8932
	slli	%x10, %x6, 2  #1578 pc 8936
	add	%x31, %x10, %x7  #1578 pc 8940
	lw	%x10, 0(%x31)  #1578 pc 8944
	addi	%x31, %x0, -1  #pc 8948
	beq	%x10, %x31, 12  #1579 pc 8952
	j	be_else.25216 #pc 8956
	nop #pc 8960
	addi	%x6, %x0, 0  #0 pc 8964
	ret #pc 8968
	nop #pc 8972
be_else.25216: #pc 8976
	slli	%x10, %x10, 2  #1582 pc 8976
	add	%x31, %x10, %x9  #1582 pc 8980
	lw	%x9, 0(%x31)  #1582 pc 8984
	addi	%x10, %x0, 0  #0 pc 8988
	sw	%x7, 0(%x2)  #1583 pc 8992
	sw	%x29, 4(%x2)  #1583 pc 8996
	sw	%x6, 8(%x2)  #1583 pc 9000
	addi	%x7, %x9, 0  #0 pc 9004
	addi	%x6, %x10, 0  #0 pc 9008
	addi	%x29, %x8, 0  #0 pc 9012
	sw	%x1, 12(%x2)  #1583 pc 9016
	lw	%x30, 0(%x29)  #1583 pc 9020
	addi	%x2, %x2, 16  #1583 pc 9024
	jalr	%x1, %x30, 0  #1583 pc 9028
	addi	%x2, %x2, -16  #1583 pc 9032
	lw	%x1, 12(%x2)  #1583 pc 9036
	beq	%x6, %x0, 12  #1584 pc 9040
	j	be_else.25217 #pc 9044
	nop #pc 9048
	lw	%x6, 8(%x2)  #1587 pc 9052
	addi	%x6, %x6, 1  #1587 pc 9056
	lw	%x7, 0(%x2)  #1587 pc 9060
	lw	%x29, 4(%x2)  #1587 pc 9064
	lw	%x30, 0(%x29)  #1587 pc 9068
	jalr	%x0, %x30, 0  #1587 pc 9072
	nop #pc 9076
be_else.25217: #pc 9080
	addi	%x6, %x0, 1  #0 pc 9080
	ret #pc 9084
	nop #pc 9088
shadow_check_one_or_matrix.2888:  #pc 9092
	lw	%x8, 24(%x29)  #1593 pc 9092
	lw	%x9, 20(%x29)  #1593 pc 9096
	lw	%x10, 16(%x29)  #1593 pc 9100
	lw	%x11, 12(%x29)  #1593 pc 9104
	lw	%x12, 8(%x29)  #1593 pc 9108
	lw	%x13, 4(%x29)  #1593 pc 9112
	slli	%x14, %x6, 2  #1593 pc 9116
	add	%x31, %x14, %x7  #1593 pc 9120
	lw	%x14, 0(%x31)  #1593 pc 9124
	lw	%x15, 0(%x14)  #1594 pc 9128
	addi	%x31, %x0, -1  #pc 9132
	beq	%x15, %x31, 12  #1595 pc 9136
	j	be_else.25218 #pc 9140
	nop #pc 9144
	addi	%x6, %x0, 0  #0 pc 9148
	ret #pc 9152
	nop #pc 9156
be_else.25218: #pc 9160
	sw	%x14, 0(%x2)  #1599 pc 9160
	sw	%x8, 4(%x2)  #1599 pc 9164
	sw	%x7, 8(%x2)  #1599 pc 9168
	sw	%x29, 12(%x2)  #1599 pc 9172
	sw	%x6, 16(%x2)  #1599 pc 9176
	addi	%x31, %x0, 99  #pc 9180
	beq	%x15, %x31, 12  #1599 pc 9184
	j	be_else.25219 #pc 9188
	nop #pc 9192
	addi	%x6, %x0, 1  #0 pc 9196
	j	be_cont.25220 #pc 9200
	nop #pc 9204
be_else.25219: #pc 9208
	slli	%x16, %x15, 2  #1602 pc 9208
	add	%x31, %x16, %x9  #1602 pc 9212
	lw	%x9, 0(%x31)  #1602 pc 9216
	flw	%f0, 0(%x12)  #1602 pc 9220
	lw	%x16, 20(%x9)  #1602 pc 9224
	flw	%f1, 0(%x16)  #1602 pc 9228
	fsub	%f0, %f0, %f1  #1602 pc 9232
	flw	%f1, 4(%x12)  #1602 pc 9236
	lw	%x16, 20(%x9)  #1602 pc 9240
	flw	%f2, 4(%x16)  #1602 pc 9244
	fsub	%f1, %f1, %f2  #1602 pc 9248
	flw	%f2, 8(%x12)  #1602 pc 9252
	lw	%x12, 20(%x9)  #1602 pc 9256
	flw	%f3, 8(%x12)  #1602 pc 9260
	fsub	%f2, %f2, %f3  #1602 pc 9264
	slli	%x12, %x15, 2  #1602 pc 9268
	add	%x31, %x12, %x10  #1602 pc 9272
	lw	%x10, 0(%x31)  #1602 pc 9276
	lw	%x12, 4(%x9)  #1602 pc 9280
	addi	%x31, %x0, 1  #pc 9284
	beq	%x12, %x31, 12  #1602 pc 9288
	j	be_else.25221 #pc 9292
	nop #pc 9296
	flw	%f3, 0(%x10)  #1602 pc 9300
	fsub	%f3, %f3, %f0  #1602 pc 9304
	flw	%f4, 4(%x10)  #1602 pc 9308
	fmul	%f3, %f3, %f4  #1602 pc 9312
	flw	%f4, 4(%x13)  #1602 pc 9316
	fmul	%f4, %f3, %f4  #1602 pc 9320
	fadd	%f4, %f4, %f1  #1602 pc 9324
	fabs	%f4, %f4  #1602 pc 9328
	lw	%x12, 16(%x9)  #1602 pc 9332
	flw	%f5, 4(%x12)  #1602 pc 9336
	fle	%x31, %f5, %f4  #1602 pc 9340
	blt	%x0, %x31, 12  #1602 pc 9344
	j	fble_else.25223 #pc 9348
	nop #pc 9352
	addi	%x12, %x0, 0  #0 pc 9356
	j	fble_cont.25224 #pc 9360
	nop #pc 9364
fble_else.25223: #pc 9368
	addi	%x12, %x0, 1  #0 pc 9368
fble_cont.25224: #pc 9372
	beq	%x12, %x0, 12  #1602 pc 9372
	j	be_else.25225 #pc 9376
	nop #pc 9380
	addi	%x12, %x0, 0  #0 pc 9384
	j	be_cont.25226 #pc 9388
	nop #pc 9392
be_else.25225: #pc 9396
	flw	%f4, 8(%x13)  #1602 pc 9396
	fmul	%f4, %f3, %f4  #1602 pc 9400
	fadd	%f4, %f4, %f2  #1602 pc 9404
	fabs	%f4, %f4  #1602 pc 9408
	lw	%x12, 16(%x9)  #1602 pc 9412
	flw	%f5, 8(%x12)  #1602 pc 9416
	fle	%x31, %f5, %f4  #1602 pc 9420
	blt	%x0, %x31, 12  #1602 pc 9424
	j	fble_else.25227 #pc 9428
	nop #pc 9432
	addi	%x12, %x0, 0  #0 pc 9436
	j	fble_cont.25228 #pc 9440
	nop #pc 9444
fble_else.25227: #pc 9448
	addi	%x12, %x0, 1  #0 pc 9448
fble_cont.25228: #pc 9452
	beq	%x12, %x0, 12  #1602 pc 9452
	j	be_else.25229 #pc 9456
	nop #pc 9460
	addi	%x12, %x0, 0  #0 pc 9464
	j	be_cont.25230 #pc 9468
	nop #pc 9472
be_else.25229: #pc 9476
	flw	%f4, 4(%x10)  #1602 pc 9476
	fmv	%f5, l.21722  #0 pc 9480
	feq	%x31, %f4, %f5  #1602 pc 9484
	blt	%x0, %x31, 12  #1602 pc 9488
	j	fbe_else.25231 #pc 9492
	nop #pc 9496
	addi	%x12, %x0, 1  #0 pc 9500
	j	fbe_cont.25232 #pc 9504
	nop #pc 9508
fbe_else.25231: #pc 9512
	addi	%x12, %x0, 0  #0 pc 9512
fbe_cont.25232: #pc 9516
	beq	%x12, %x0, 12  #1602 pc 9516
	j	be_else.25233 #pc 9520
	nop #pc 9524
	addi	%x12, %x0, 1  #0 pc 9528
	j	be_cont.25234 #pc 9532
	nop #pc 9536
be_else.25233: #pc 9540
	addi	%x12, %x0, 0  #0 pc 9540
be_cont.25234: #pc 9544
be_cont.25230: #pc 9544
be_cont.25226: #pc 9544
	beq	%x12, %x0, 12  #1602 pc 9544
	j	be_else.25235 #pc 9548
	nop #pc 9552
	flw	%f3, 8(%x10)  #1602 pc 9556
	fsub	%f3, %f3, %f1  #1602 pc 9560
	flw	%f4, 12(%x10)  #1602 pc 9564
	fmul	%f3, %f3, %f4  #1602 pc 9568
	flw	%f4, 0(%x13)  #1602 pc 9572
	fmul	%f4, %f3, %f4  #1602 pc 9576
	fadd	%f4, %f4, %f0  #1602 pc 9580
	fabs	%f4, %f4  #1602 pc 9584
	lw	%x12, 16(%x9)  #1602 pc 9588
	flw	%f5, 0(%x12)  #1602 pc 9592
	fle	%x31, %f5, %f4  #1602 pc 9596
	blt	%x0, %x31, 12  #1602 pc 9600
	j	fble_else.25237 #pc 9604
	nop #pc 9608
	addi	%x12, %x0, 0  #0 pc 9612
	j	fble_cont.25238 #pc 9616
	nop #pc 9620
fble_else.25237: #pc 9624
	addi	%x12, %x0, 1  #0 pc 9624
fble_cont.25238: #pc 9628
	beq	%x12, %x0, 12  #1602 pc 9628
	j	be_else.25239 #pc 9632
	nop #pc 9636
	addi	%x12, %x0, 0  #0 pc 9640
	j	be_cont.25240 #pc 9644
	nop #pc 9648
be_else.25239: #pc 9652
	flw	%f4, 8(%x13)  #1602 pc 9652
	fmul	%f4, %f3, %f4  #1602 pc 9656
	fadd	%f4, %f4, %f2  #1602 pc 9660
	fabs	%f4, %f4  #1602 pc 9664
	lw	%x12, 16(%x9)  #1602 pc 9668
	flw	%f5, 8(%x12)  #1602 pc 9672
	fle	%x31, %f5, %f4  #1602 pc 9676
	blt	%x0, %x31, 12  #1602 pc 9680
	j	fble_else.25241 #pc 9684
	nop #pc 9688
	addi	%x12, %x0, 0  #0 pc 9692
	j	fble_cont.25242 #pc 9696
	nop #pc 9700
fble_else.25241: #pc 9704
	addi	%x12, %x0, 1  #0 pc 9704
fble_cont.25242: #pc 9708
	beq	%x12, %x0, 12  #1602 pc 9708
	j	be_else.25243 #pc 9712
	nop #pc 9716
	addi	%x12, %x0, 0  #0 pc 9720
	j	be_cont.25244 #pc 9724
	nop #pc 9728
be_else.25243: #pc 9732
	flw	%f4, 12(%x10)  #1602 pc 9732
	fmv	%f5, l.21722  #0 pc 9736
	feq	%x31, %f4, %f5  #1602 pc 9740
	blt	%x0, %x31, 12  #1602 pc 9744
	j	fbe_else.25245 #pc 9748
	nop #pc 9752
	addi	%x12, %x0, 1  #0 pc 9756
	j	fbe_cont.25246 #pc 9760
	nop #pc 9764
fbe_else.25245: #pc 9768
	addi	%x12, %x0, 0  #0 pc 9768
fbe_cont.25246: #pc 9772
	beq	%x12, %x0, 12  #1602 pc 9772
	j	be_else.25247 #pc 9776
	nop #pc 9780
	addi	%x12, %x0, 1  #0 pc 9784
	j	be_cont.25248 #pc 9788
	nop #pc 9792
be_else.25247: #pc 9796
	addi	%x12, %x0, 0  #0 pc 9796
be_cont.25248: #pc 9800
be_cont.25244: #pc 9800
be_cont.25240: #pc 9800
	beq	%x12, %x0, 12  #1602 pc 9800
	j	be_else.25249 #pc 9804
	nop #pc 9808
	flw	%f3, 16(%x10)  #1602 pc 9812
	fsub	%f2, %f3, %f2  #1602 pc 9816
	flw	%f3, 20(%x10)  #1602 pc 9820
	fmul	%f2, %f2, %f3  #1602 pc 9824
	flw	%f3, 0(%x13)  #1602 pc 9828
	fmul	%f3, %f2, %f3  #1602 pc 9832
	fadd	%f0, %f3, %f0  #1602 pc 9836
	fabs	%f0, %f0  #1602 pc 9840
	lw	%x12, 16(%x9)  #1602 pc 9844
	flw	%f3, 0(%x12)  #1602 pc 9848
	fle	%x31, %f3, %f0  #1602 pc 9852
	blt	%x0, %x31, 12  #1602 pc 9856
	j	fble_else.25251 #pc 9860
	nop #pc 9864
	addi	%x12, %x0, 0  #0 pc 9868
	j	fble_cont.25252 #pc 9872
	nop #pc 9876
fble_else.25251: #pc 9880
	addi	%x12, %x0, 1  #0 pc 9880
fble_cont.25252: #pc 9884
	beq	%x12, %x0, 12  #1602 pc 9884
	j	be_else.25253 #pc 9888
	nop #pc 9892
	addi	%x9, %x0, 0  #0 pc 9896
	j	be_cont.25254 #pc 9900
	nop #pc 9904
be_else.25253: #pc 9908
	flw	%f0, 4(%x13)  #1602 pc 9908
	fmul	%f0, %f2, %f0  #1602 pc 9912
	fadd	%f0, %f0, %f1  #1602 pc 9916
	fabs	%f0, %f0  #1602 pc 9920
	lw	%x9, 16(%x9)  #1602 pc 9924
	flw	%f1, 4(%x9)  #1602 pc 9928
	fle	%x31, %f1, %f0  #1602 pc 9932
	blt	%x0, %x31, 12  #1602 pc 9936
	j	fble_else.25255 #pc 9940
	nop #pc 9944
	addi	%x9, %x0, 0  #0 pc 9948
	j	fble_cont.25256 #pc 9952
	nop #pc 9956
fble_else.25255: #pc 9960
	addi	%x9, %x0, 1  #0 pc 9960
fble_cont.25256: #pc 9964
	beq	%x9, %x0, 12  #1602 pc 9964
	j	be_else.25257 #pc 9968
	nop #pc 9972
	addi	%x9, %x0, 0  #0 pc 9976
	j	be_cont.25258 #pc 9980
	nop #pc 9984
be_else.25257: #pc 9988
	flw	%f0, 20(%x10)  #1602 pc 9988
	fmv	%f1, l.21722  #0 pc 9992
	feq	%x31, %f0, %f1  #1602 pc 9996
	blt	%x0, %x31, 12  #1602 pc 10000
	j	fbe_else.25259 #pc 10004
	nop #pc 10008
	addi	%x9, %x0, 1  #0 pc 10012
	j	fbe_cont.25260 #pc 10016
	nop #pc 10020
fbe_else.25259: #pc 10024
	addi	%x9, %x0, 0  #0 pc 10024
fbe_cont.25260: #pc 10028
	beq	%x9, %x0, 12  #1602 pc 10028
	j	be_else.25261 #pc 10032
	nop #pc 10036
	addi	%x9, %x0, 1  #0 pc 10040
	j	be_cont.25262 #pc 10044
	nop #pc 10048
be_else.25261: #pc 10052
	addi	%x9, %x0, 0  #0 pc 10052
be_cont.25262: #pc 10056
be_cont.25258: #pc 10056
be_cont.25254: #pc 10056
	beq	%x9, %x0, 12  #1602 pc 10056
	j	be_else.25263 #pc 10060
	nop #pc 10064
	addi	%x9, %x0, 0  #0 pc 10068
	j	be_cont.25264 #pc 10072
	nop #pc 10076
be_else.25263: #pc 10080
	fsw	%f2, 0(%x11)  #1602 pc 10080
	addi	%x9, %x0, 3  #0 pc 10084
be_cont.25264: #pc 10088
	j	be_cont.25250 #pc 10088
	nop #pc 10092
be_else.25249: #pc 10096
	fsw	%f3, 0(%x11)  #1602 pc 10096
	addi	%x9, %x0, 2  #0 pc 10100
be_cont.25250: #pc 10104
	j	be_cont.25236 #pc 10104
	nop #pc 10108
be_else.25235: #pc 10112
	fsw	%f3, 0(%x11)  #1602 pc 10112
	addi	%x9, %x0, 1  #0 pc 10116
be_cont.25236: #pc 10120
	j	be_cont.25222 #pc 10120
	nop #pc 10124
be_else.25221: #pc 10128
	addi	%x31, %x0, 2  #pc 10128
	beq	%x12, %x31, 12  #1602 pc 10132
	j	be_else.25265 #pc 10136
	nop #pc 10140
	flw	%f3, 0(%x10)  #1602 pc 10144
	fmv	%f4, l.21722  #0 pc 10148
	fle	%x31, %f4, %f3  #1602 pc 10152
	blt	%x0, %x31, 12  #1602 pc 10156
	j	fble_else.25267 #pc 10160
	nop #pc 10164
	addi	%x9, %x0, 0  #0 pc 10168
	j	fble_cont.25268 #pc 10172
	nop #pc 10176
fble_else.25267: #pc 10180
	addi	%x9, %x0, 1  #0 pc 10180
fble_cont.25268: #pc 10184
	beq	%x9, %x0, 12  #1602 pc 10184
	j	be_else.25269 #pc 10188
	nop #pc 10192
	addi	%x9, %x0, 0  #0 pc 10196
	j	be_cont.25270 #pc 10200
	nop #pc 10204
be_else.25269: #pc 10208
	flw	%f3, 4(%x10)  #1602 pc 10208
	fmul	%f0, %f3, %f0  #1602 pc 10212
	flw	%f3, 8(%x10)  #1602 pc 10216
	fmul	%f1, %f3, %f1  #1602 pc 10220
	fadd	%f0, %f0, %f1  #1602 pc 10224
	flw	%f1, 12(%x10)  #1602 pc 10228
	fmul	%f1, %f1, %f2  #1602 pc 10232
	fadd	%f0, %f0, %f1  #1602 pc 10236
	fsw	%f0, 0(%x11)  #1602 pc 10240
	addi	%x9, %x0, 1  #0 pc 10244
be_cont.25270: #pc 10248
	j	be_cont.25266 #pc 10248
	nop #pc 10252
be_else.25265: #pc 10256
	flw	%f3, 0(%x10)  #1602 pc 10256
	fmv	%f4, l.21722  #0 pc 10260
	feq	%x31, %f3, %f4  #1602 pc 10264
	blt	%x0, %x31, 12  #1602 pc 10268
	j	fbe_else.25271 #pc 10272
	nop #pc 10276
	addi	%x12, %x0, 1  #0 pc 10280
	j	fbe_cont.25272 #pc 10284
	nop #pc 10288
fbe_else.25271: #pc 10292
	addi	%x12, %x0, 0  #0 pc 10292
fbe_cont.25272: #pc 10296
	beq	%x12, %x0, 12  #1602 pc 10296
	j	be_else.25273 #pc 10300
	nop #pc 10304
	flw	%f4, 4(%x10)  #1602 pc 10308
	fmul	%f4, %f4, %f0  #1602 pc 10312
	flw	%f5, 8(%x10)  #1602 pc 10316
	fmul	%f5, %f5, %f1  #1602 pc 10320
	fadd	%f4, %f4, %f5  #1602 pc 10324
	flw	%f5, 12(%x10)  #1602 pc 10328
	fmul	%f5, %f5, %f2  #1602 pc 10332
	fadd	%f4, %f4, %f5  #1602 pc 10336
	fmul	%f5, %f0, %f0  #1602 pc 10340
	lw	%x12, 16(%x9)  #1602 pc 10344
	flw	%f6, 0(%x12)  #1602 pc 10348
	fmul	%f5, %f5, %f6  #1602 pc 10352
	fmul	%f6, %f1, %f1  #1602 pc 10356
	lw	%x12, 16(%x9)  #1602 pc 10360
	flw	%f7, 4(%x12)  #1602 pc 10364
	fmul	%f6, %f6, %f7  #1602 pc 10368
	fadd	%f5, %f5, %f6  #1602 pc 10372
	fmul	%f6, %f2, %f2  #1602 pc 10376
	lw	%x12, 16(%x9)  #1602 pc 10380
	flw	%f7, 8(%x12)  #1602 pc 10384
	fmul	%f6, %f6, %f7  #1602 pc 10388
	fadd	%f5, %f5, %f6  #1602 pc 10392
	lw	%x12, 12(%x9)  #1602 pc 10396
	beq	%x12, %x0, 12  #1602 pc 10400
	j	be_else.25275 #pc 10404
	nop #pc 10408
	fadd	%f0, %f5, %f30  #1602 pc 10412
	j	be_cont.25276 #pc 10416
	nop #pc 10420
be_else.25275: #pc 10424
	fmul	%f6, %f1, %f2  #1602 pc 10424
	lw	%x12, 36(%x9)  #1602 pc 10428
	flw	%f7, 0(%x12)  #1602 pc 10432
	fmul	%f6, %f6, %f7  #1602 pc 10436
	fadd	%f5, %f5, %f6  #1602 pc 10440
	fmul	%f2, %f2, %f0  #1602 pc 10444
	lw	%x12, 36(%x9)  #1602 pc 10448
	flw	%f6, 4(%x12)  #1602 pc 10452
	fmul	%f2, %f2, %f6  #1602 pc 10456
	fadd	%f2, %f5, %f2  #1602 pc 10460
	fmul	%f0, %f0, %f1  #1602 pc 10464
	lw	%x12, 36(%x9)  #1602 pc 10468
	flw	%f1, 8(%x12)  #1602 pc 10472
	fmul	%f0, %f0, %f1  #1602 pc 10476
	fadd	%f0, %f2, %f0  #1602 pc 10480
be_cont.25276: #pc 10484
	lw	%x12, 4(%x9)  #1602 pc 10484
	addi	%x31, %x0, 3  #pc 10488
	beq	%x12, %x31, 12  #1602 pc 10492
	j	be_else.25277 #pc 10496
	nop #pc 10500
	fmv	%f1, l.21731  #0 pc 10504
	fsub	%f0, %f0, %f1  #1602 pc 10508
	j	be_cont.25278 #pc 10512
	nop #pc 10516
be_else.25277: #pc 10520
be_cont.25278: #pc 10520
	fmul	%f1, %f4, %f4  #1602 pc 10520
	fmul	%f0, %f3, %f0  #1602 pc 10524
	fsub	%f0, %f1, %f0  #1602 pc 10528
	fmv	%f1, l.21722  #0 pc 10532
	fle	%x31, %f0, %f1  #1602 pc 10536
	blt	%x0, %x31, 12  #1602 pc 10540
	j	fble_else.25279 #pc 10544
	nop #pc 10548
	addi	%x12, %x0, 0  #0 pc 10552
	j	fble_cont.25280 #pc 10556
	nop #pc 10560
fble_else.25279: #pc 10564
	addi	%x12, %x0, 1  #0 pc 10564
fble_cont.25280: #pc 10568
	beq	%x12, %x0, 12  #1602 pc 10568
	j	be_else.25281 #pc 10572
	nop #pc 10576
	addi	%x9, %x0, 0  #0 pc 10580
	j	be_cont.25282 #pc 10584
	nop #pc 10588
be_else.25281: #pc 10592
	lw	%x9, 24(%x9)  #1602 pc 10592
	beq	%x9, %x0, 12  #1602 pc 10596
	j	be_else.25283 #pc 10600
	nop #pc 10604
	fsqrt	%f0, %f0  #1602 pc 10608
	fsub	%f0, %f4, %f0  #1602 pc 10612
	flw	%f1, 16(%x10)  #1602 pc 10616
	fmul	%f0, %f0, %f1  #1602 pc 10620
	fsw	%f0, 0(%x11)  #1602 pc 10624
	j	be_cont.25284 #pc 10628
	nop #pc 10632
be_else.25283: #pc 10636
	fsqrt	%f0, %f0  #1602 pc 10636
	fadd	%f0, %f4, %f0  #1602 pc 10640
	flw	%f1, 16(%x10)  #1602 pc 10644
	fmul	%f0, %f0, %f1  #1602 pc 10648
	fsw	%f0, 0(%x11)  #1602 pc 10652
be_cont.25284: #pc 10656
	addi	%x9, %x0, 1  #0 pc 10656
be_cont.25282: #pc 10660
	j	be_cont.25274 #pc 10660
	nop #pc 10664
be_else.25273: #pc 10668
	addi	%x9, %x0, 0  #0 pc 10668
be_cont.25274: #pc 10672
be_cont.25266: #pc 10672
be_cont.25222: #pc 10672
	beq	%x9, %x0, 12  #1605 pc 10672
	j	be_else.25285 #pc 10676
	nop #pc 10680
	addi	%x6, %x0, 0  #0 pc 10684
	j	be_cont.25286 #pc 10688
	nop #pc 10692
be_else.25285: #pc 10696
	flw	%f0, 0(%x11)  #1606 pc 10696
	fmv	%f1, l.22132  #0 pc 10700
	fle	%x31, %f1, %f0  #1606 pc 10704
	blt	%x0, %x31, 12  #1606 pc 10708
	j	fble_else.25287 #pc 10712
	nop #pc 10716
	addi	%x9, %x0, 0  #0 pc 10720
	j	fble_cont.25288 #pc 10724
	nop #pc 10728
fble_else.25287: #pc 10732
	addi	%x9, %x0, 1  #0 pc 10732
fble_cont.25288: #pc 10736
	beq	%x9, %x0, 12  #1606 pc 10736
	j	be_else.25289 #pc 10740
	nop #pc 10744
	addi	%x6, %x0, 0  #0 pc 10748
	j	be_cont.25290 #pc 10752
	nop #pc 10756
be_else.25289: #pc 10760
	addi	%x9, %x0, 1  #0 pc 10760
	addi	%x7, %x14, 0  #0 pc 10764
	addi	%x6, %x9, 0  #0 pc 10768
	addi	%x29, %x8, 0  #0 pc 10772
	sw	%x1, 20(%x2)  #1607 pc 10776
	lw	%x30, 0(%x29)  #1607 pc 10780
	addi	%x2, %x2, 24  #1607 pc 10784
	jalr	%x1, %x30, 0  #1607 pc 10788
	addi	%x2, %x2, -24  #1607 pc 10792
	lw	%x1, 20(%x2)  #1607 pc 10796
	beq	%x6, %x0, 12  #1607 pc 10800
	j	be_else.25291 #pc 10804
	nop #pc 10808
	addi	%x6, %x0, 0  #0 pc 10812
	j	be_cont.25292 #pc 10816
	nop #pc 10820
be_else.25291: #pc 10824
	addi	%x6, %x0, 1  #0 pc 10824
be_cont.25292: #pc 10828
be_cont.25290: #pc 10828
be_cont.25286: #pc 10828
be_cont.25220: #pc 10828
	beq	%x6, %x0, 12  #1598 pc 10828
	j	be_else.25293 #pc 10832
	nop #pc 10836
	lw	%x6, 16(%x2)  #1618 pc 10840
	addi	%x6, %x6, 1  #1618 pc 10844
	lw	%x7, 8(%x2)  #1618 pc 10848
	lw	%x29, 12(%x2)  #1618 pc 10852
	lw	%x30, 0(%x29)  #1618 pc 10856
	jalr	%x0, %x30, 0  #1618 pc 10860
	nop #pc 10864
be_else.25293: #pc 10868
	addi	%x6, %x0, 1  #0 pc 10868
	lw	%x7, 0(%x2)  #1613 pc 10872
	lw	%x29, 4(%x2)  #1613 pc 10876
	sw	%x1, 20(%x2)  #1613 pc 10880
	lw	%x30, 0(%x29)  #1613 pc 10884
	addi	%x2, %x2, 24  #1613 pc 10888
	jalr	%x1, %x30, 0  #1613 pc 10892
	addi	%x2, %x2, -24  #1613 pc 10896
	lw	%x1, 20(%x2)  #1613 pc 10900
	beq	%x6, %x0, 12  #1613 pc 10904
	j	be_else.25294 #pc 10908
	nop #pc 10912
	lw	%x6, 16(%x2)  #1616 pc 10916
	addi	%x6, %x6, 1  #1616 pc 10920
	lw	%x7, 8(%x2)  #1616 pc 10924
	lw	%x29, 12(%x2)  #1616 pc 10928
	lw	%x30, 0(%x29)  #1616 pc 10932
	jalr	%x0, %x30, 0  #1616 pc 10936
	nop #pc 10940
be_else.25294: #pc 10944
	addi	%x6, %x0, 1  #0 pc 10944
	ret #pc 10948
	nop #pc 10952
solve_each_element.2891:  #pc 10956
	lw	%x9, 32(%x29)  #1629 pc 10956
	lw	%x10, 28(%x29)  #1629 pc 10960
	lw	%x11, 24(%x29)  #1629 pc 10964
	lw	%x12, 20(%x29)  #1629 pc 10968
	lw	%x13, 16(%x29)  #1629 pc 10972
	lw	%x14, 12(%x29)  #1629 pc 10976
	lw	%x15, 8(%x29)  #1629 pc 10980
	lw	%x16, 4(%x29)  #1629 pc 10984
	slli	%x17, %x6, 2  #1629 pc 10988
	add	%x31, %x17, %x7  #1629 pc 10992
	lw	%x17, 0(%x31)  #1629 pc 10996
	addi	%x31, %x0, -1  #pc 11000
	beq	%x17, %x31, 12  #1630 pc 11004
	j	be_else.25295 #pc 11008
	nop #pc 11012
	ret #pc 11016
	nop #pc 11020
be_else.25295: #pc 11024
	slli	%x18, %x17, 2  #1632 pc 11024
	add	%x31, %x18, %x9  #1632 pc 11028
	lw	%x18, 0(%x31)  #1632 pc 11032
	flw	%f0, 0(%x15)  #1632 pc 11036
	lw	%x19, 20(%x18)  #1632 pc 11040
	flw	%f1, 0(%x19)  #1632 pc 11044
	fsub	%f0, %f0, %f1  #1632 pc 11048
	flw	%f1, 4(%x15)  #1632 pc 11052
	lw	%x19, 20(%x18)  #1632 pc 11056
	flw	%f2, 4(%x19)  #1632 pc 11060
	fsub	%f1, %f1, %f2  #1632 pc 11064
	flw	%f2, 8(%x15)  #1632 pc 11068
	lw	%x19, 20(%x18)  #1632 pc 11072
	flw	%f3, 8(%x19)  #1632 pc 11076
	fsub	%f2, %f2, %f3  #1632 pc 11080
	lw	%x19, 4(%x18)  #1632 pc 11084
	addi	%x31, %x0, 1  #pc 11088
	beq	%x19, %x31, 12  #1632 pc 11092
	j	be_else.25297 #pc 11096
	nop #pc 11100
	flw	%f3, 0(%x8)  #1632 pc 11104
	fmv	%f4, l.21722  #0 pc 11108
	feq	%x31, %f3, %f4  #1632 pc 11112
	blt	%x0, %x31, 12  #1632 pc 11116
	j	fbe_else.25299 #pc 11120
	nop #pc 11124
	addi	%x19, %x0, 1  #0 pc 11128
	j	fbe_cont.25300 #pc 11132
	nop #pc 11136
fbe_else.25299: #pc 11140
	addi	%x19, %x0, 0  #0 pc 11140
fbe_cont.25300: #pc 11144
	beq	%x19, %x0, 12  #1632 pc 11144
	j	be_else.25301 #pc 11148
	nop #pc 11152
	lw	%x19, 16(%x18)  #1632 pc 11156
	lw	%x20, 24(%x18)  #1632 pc 11160
	flw	%f3, 0(%x8)  #1632 pc 11164
	fmv	%f4, l.21722  #0 pc 11168
	fle	%x31, %f4, %f3  #1632 pc 11172
	blt	%x0, %x31, 12  #1632 pc 11176
	j	fble_else.25303 #pc 11180
	nop #pc 11184
	addi	%x21, %x0, 0  #0 pc 11188
	j	fble_cont.25304 #pc 11192
	nop #pc 11196
fble_else.25303: #pc 11200
	addi	%x21, %x0, 1  #0 pc 11200
fble_cont.25304: #pc 11204
	beq	%x20, %x0, 12  #1632 pc 11204
	j	be_else.25305 #pc 11208
	nop #pc 11212
	addi	%x20, %x21, 0  #1632 pc 11216
	j	be_cont.25306 #pc 11220
	nop #pc 11224
be_else.25305: #pc 11228
	beq	%x21, %x0, 12  #1632 pc 11228
	j	be_else.25307 #pc 11232
	nop #pc 11236
	addi	%x20, %x0, 1  #0 pc 11240
	j	be_cont.25308 #pc 11244
	nop #pc 11248
be_else.25307: #pc 11252
	addi	%x20, %x0, 0  #0 pc 11252
be_cont.25308: #pc 11256
be_cont.25306: #pc 11256
	flw	%f3, 0(%x19)  #1632 pc 11256
	beq	%x20, %x0, 12  #1632 pc 11260
	j	be_else.25309 #pc 11264
	nop #pc 11268
	fsub	%f3, %f30, %f3  #1632 pc 11272
	j	be_cont.25310 #pc 11276
	nop #pc 11280
be_else.25309: #pc 11284
be_cont.25310: #pc 11284
	fsub	%f3, %f3, %f0  #1632 pc 11284
	flw	%f4, 0(%x8)  #1632 pc 11288
	fdiv	%f3, %f3, %f4  #1632 pc 11292
	flw	%f4, 4(%x8)  #1632 pc 11296
	fmul	%f4, %f3, %f4  #1632 pc 11300
	fadd	%f4, %f4, %f1  #1632 pc 11304
	fabs	%f4, %f4  #1632 pc 11308
	flw	%f5, 4(%x19)  #1632 pc 11312
	fle	%x31, %f5, %f4  #1632 pc 11316
	blt	%x0, %x31, 12  #1632 pc 11320
	j	fble_else.25311 #pc 11324
	nop #pc 11328
	addi	%x20, %x0, 0  #0 pc 11332
	j	fble_cont.25312 #pc 11336
	nop #pc 11340
fble_else.25311: #pc 11344
	addi	%x20, %x0, 1  #0 pc 11344
fble_cont.25312: #pc 11348
	beq	%x20, %x0, 12  #1632 pc 11348
	j	be_else.25313 #pc 11352
	nop #pc 11356
	addi	%x19, %x0, 0  #0 pc 11360
	j	be_cont.25314 #pc 11364
	nop #pc 11368
be_else.25313: #pc 11372
	flw	%f4, 8(%x8)  #1632 pc 11372
	fmul	%f4, %f3, %f4  #1632 pc 11376
	fadd	%f4, %f4, %f2  #1632 pc 11380
	fabs	%f4, %f4  #1632 pc 11384
	flw	%f5, 8(%x19)  #1632 pc 11388
	fle	%x31, %f5, %f4  #1632 pc 11392
	blt	%x0, %x31, 12  #1632 pc 11396
	j	fble_else.25315 #pc 11400
	nop #pc 11404
	addi	%x19, %x0, 0  #0 pc 11408
	j	fble_cont.25316 #pc 11412
	nop #pc 11416
fble_else.25315: #pc 11420
	addi	%x19, %x0, 1  #0 pc 11420
fble_cont.25316: #pc 11424
	beq	%x19, %x0, 12  #1632 pc 11424
	j	be_else.25317 #pc 11428
	nop #pc 11432
	addi	%x19, %x0, 0  #0 pc 11436
	j	be_cont.25318 #pc 11440
	nop #pc 11444
be_else.25317: #pc 11448
	fsw	%f3, 0(%x12)  #1632 pc 11448
	addi	%x19, %x0, 1  #0 pc 11452
be_cont.25318: #pc 11456
be_cont.25314: #pc 11456
	j	be_cont.25302 #pc 11456
	nop #pc 11460
be_else.25301: #pc 11464
	addi	%x19, %x0, 0  #0 pc 11464
be_cont.25302: #pc 11468
	beq	%x19, %x0, 12  #1632 pc 11468
	j	be_else.25319 #pc 11472
	nop #pc 11476
	flw	%f3, 4(%x8)  #1632 pc 11480
	fmv	%f4, l.21722  #0 pc 11484
	feq	%x31, %f3, %f4  #1632 pc 11488
	blt	%x0, %x31, 12  #1632 pc 11492
	j	fbe_else.25321 #pc 11496
	nop #pc 11500
	addi	%x19, %x0, 1  #0 pc 11504
	j	fbe_cont.25322 #pc 11508
	nop #pc 11512
fbe_else.25321: #pc 11516
	addi	%x19, %x0, 0  #0 pc 11516
fbe_cont.25322: #pc 11520
	beq	%x19, %x0, 12  #1632 pc 11520
	j	be_else.25323 #pc 11524
	nop #pc 11528
	lw	%x19, 16(%x18)  #1632 pc 11532
	lw	%x20, 24(%x18)  #1632 pc 11536
	flw	%f3, 4(%x8)  #1632 pc 11540
	fmv	%f4, l.21722  #0 pc 11544
	fle	%x31, %f4, %f3  #1632 pc 11548
	blt	%x0, %x31, 12  #1632 pc 11552
	j	fble_else.25325 #pc 11556
	nop #pc 11560
	addi	%x21, %x0, 0  #0 pc 11564
	j	fble_cont.25326 #pc 11568
	nop #pc 11572
fble_else.25325: #pc 11576
	addi	%x21, %x0, 1  #0 pc 11576
fble_cont.25326: #pc 11580
	beq	%x20, %x0, 12  #1632 pc 11580
	j	be_else.25327 #pc 11584
	nop #pc 11588
	addi	%x20, %x21, 0  #1632 pc 11592
	j	be_cont.25328 #pc 11596
	nop #pc 11600
be_else.25327: #pc 11604
	beq	%x21, %x0, 12  #1632 pc 11604
	j	be_else.25329 #pc 11608
	nop #pc 11612
	addi	%x20, %x0, 1  #0 pc 11616
	j	be_cont.25330 #pc 11620
	nop #pc 11624
be_else.25329: #pc 11628
	addi	%x20, %x0, 0  #0 pc 11628
be_cont.25330: #pc 11632
be_cont.25328: #pc 11632
	flw	%f3, 4(%x19)  #1632 pc 11632
	beq	%x20, %x0, 12  #1632 pc 11636
	j	be_else.25331 #pc 11640
	nop #pc 11644
	fsub	%f3, %f30, %f3  #1632 pc 11648
	j	be_cont.25332 #pc 11652
	nop #pc 11656
be_else.25331: #pc 11660
be_cont.25332: #pc 11660
	fsub	%f3, %f3, %f1  #1632 pc 11660
	flw	%f4, 4(%x8)  #1632 pc 11664
	fdiv	%f3, %f3, %f4  #1632 pc 11668
	flw	%f4, 8(%x8)  #1632 pc 11672
	fmul	%f4, %f3, %f4  #1632 pc 11676
	fadd	%f4, %f4, %f2  #1632 pc 11680
	fabs	%f4, %f4  #1632 pc 11684
	flw	%f5, 8(%x19)  #1632 pc 11688
	fle	%x31, %f5, %f4  #1632 pc 11692
	blt	%x0, %x31, 12  #1632 pc 11696
	j	fble_else.25333 #pc 11700
	nop #pc 11704
	addi	%x20, %x0, 0  #0 pc 11708
	j	fble_cont.25334 #pc 11712
	nop #pc 11716
fble_else.25333: #pc 11720
	addi	%x20, %x0, 1  #0 pc 11720
fble_cont.25334: #pc 11724
	beq	%x20, %x0, 12  #1632 pc 11724
	j	be_else.25335 #pc 11728
	nop #pc 11732
	addi	%x19, %x0, 0  #0 pc 11736
	j	be_cont.25336 #pc 11740
	nop #pc 11744
be_else.25335: #pc 11748
	flw	%f4, 0(%x8)  #1632 pc 11748
	fmul	%f4, %f3, %f4  #1632 pc 11752
	fadd	%f4, %f4, %f0  #1632 pc 11756
	fabs	%f4, %f4  #1632 pc 11760
	flw	%f5, 0(%x19)  #1632 pc 11764
	fle	%x31, %f5, %f4  #1632 pc 11768
	blt	%x0, %x31, 12  #1632 pc 11772
	j	fble_else.25337 #pc 11776
	nop #pc 11780
	addi	%x19, %x0, 0  #0 pc 11784
	j	fble_cont.25338 #pc 11788
	nop #pc 11792
fble_else.25337: #pc 11796
	addi	%x19, %x0, 1  #0 pc 11796
fble_cont.25338: #pc 11800
	beq	%x19, %x0, 12  #1632 pc 11800
	j	be_else.25339 #pc 11804
	nop #pc 11808
	addi	%x19, %x0, 0  #0 pc 11812
	j	be_cont.25340 #pc 11816
	nop #pc 11820
be_else.25339: #pc 11824
	fsw	%f3, 0(%x12)  #1632 pc 11824
	addi	%x19, %x0, 1  #0 pc 11828
be_cont.25340: #pc 11832
be_cont.25336: #pc 11832
	j	be_cont.25324 #pc 11832
	nop #pc 11836
be_else.25323: #pc 11840
	addi	%x19, %x0, 0  #0 pc 11840
be_cont.25324: #pc 11844
	beq	%x19, %x0, 12  #1632 pc 11844
	j	be_else.25341 #pc 11848
	nop #pc 11852
	flw	%f3, 8(%x8)  #1632 pc 11856
	fmv	%f4, l.21722  #0 pc 11860
	feq	%x31, %f3, %f4  #1632 pc 11864
	blt	%x0, %x31, 12  #1632 pc 11868
	j	fbe_else.25343 #pc 11872
	nop #pc 11876
	addi	%x19, %x0, 1  #0 pc 11880
	j	fbe_cont.25344 #pc 11884
	nop #pc 11888
fbe_else.25343: #pc 11892
	addi	%x19, %x0, 0  #0 pc 11892
fbe_cont.25344: #pc 11896
	beq	%x19, %x0, 12  #1632 pc 11896
	j	be_else.25345 #pc 11900
	nop #pc 11904
	lw	%x19, 16(%x18)  #1632 pc 11908
	lw	%x18, 24(%x18)  #1632 pc 11912
	flw	%f3, 8(%x8)  #1632 pc 11916
	fmv	%f4, l.21722  #0 pc 11920
	fle	%x31, %f4, %f3  #1632 pc 11924
	blt	%x0, %x31, 12  #1632 pc 11928
	j	fble_else.25347 #pc 11932
	nop #pc 11936
	addi	%x20, %x0, 0  #0 pc 11940
	j	fble_cont.25348 #pc 11944
	nop #pc 11948
fble_else.25347: #pc 11952
	addi	%x20, %x0, 1  #0 pc 11952
fble_cont.25348: #pc 11956
	beq	%x18, %x0, 12  #1632 pc 11956
	j	be_else.25349 #pc 11960
	nop #pc 11964
	addi	%x18, %x20, 0  #1632 pc 11968
	j	be_cont.25350 #pc 11972
	nop #pc 11976
be_else.25349: #pc 11980
	beq	%x20, %x0, 12  #1632 pc 11980
	j	be_else.25351 #pc 11984
	nop #pc 11988
	addi	%x18, %x0, 1  #0 pc 11992
	j	be_cont.25352 #pc 11996
	nop #pc 12000
be_else.25351: #pc 12004
	addi	%x18, %x0, 0  #0 pc 12004
be_cont.25352: #pc 12008
be_cont.25350: #pc 12008
	flw	%f3, 8(%x19)  #1632 pc 12008
	beq	%x18, %x0, 12  #1632 pc 12012
	j	be_else.25353 #pc 12016
	nop #pc 12020
	fsub	%f3, %f30, %f3  #1632 pc 12024
	j	be_cont.25354 #pc 12028
	nop #pc 12032
be_else.25353: #pc 12036
be_cont.25354: #pc 12036
	fsub	%f2, %f3, %f2  #1632 pc 12036
	flw	%f3, 8(%x8)  #1632 pc 12040
	fdiv	%f2, %f2, %f3  #1632 pc 12044
	flw	%f3, 0(%x8)  #1632 pc 12048
	fmul	%f3, %f2, %f3  #1632 pc 12052
	fadd	%f0, %f3, %f0  #1632 pc 12056
	fabs	%f0, %f0  #1632 pc 12060
	flw	%f3, 0(%x19)  #1632 pc 12064
	fle	%x31, %f3, %f0  #1632 pc 12068
	blt	%x0, %x31, 12  #1632 pc 12072
	j	fble_else.25355 #pc 12076
	nop #pc 12080
	addi	%x18, %x0, 0  #0 pc 12084
	j	fble_cont.25356 #pc 12088
	nop #pc 12092
fble_else.25355: #pc 12096
	addi	%x18, %x0, 1  #0 pc 12096
fble_cont.25356: #pc 12100
	beq	%x18, %x0, 12  #1632 pc 12100
	j	be_else.25357 #pc 12104
	nop #pc 12108
	addi	%x18, %x0, 0  #0 pc 12112
	j	be_cont.25358 #pc 12116
	nop #pc 12120
be_else.25357: #pc 12124
	flw	%f0, 4(%x8)  #1632 pc 12124
	fmul	%f0, %f2, %f0  #1632 pc 12128
	fadd	%f0, %f0, %f1  #1632 pc 12132
	fabs	%f0, %f0  #1632 pc 12136
	flw	%f1, 4(%x19)  #1632 pc 12140
	fle	%x31, %f1, %f0  #1632 pc 12144
	blt	%x0, %x31, 12  #1632 pc 12148
	j	fble_else.25359 #pc 12152
	nop #pc 12156
	addi	%x18, %x0, 0  #0 pc 12160
	j	fble_cont.25360 #pc 12164
	nop #pc 12168
fble_else.25359: #pc 12172
	addi	%x18, %x0, 1  #0 pc 12172
fble_cont.25360: #pc 12176
	beq	%x18, %x0, 12  #1632 pc 12176
	j	be_else.25361 #pc 12180
	nop #pc 12184
	addi	%x18, %x0, 0  #0 pc 12188
	j	be_cont.25362 #pc 12192
	nop #pc 12196
be_else.25361: #pc 12200
	fsw	%f2, 0(%x12)  #1632 pc 12200
	addi	%x18, %x0, 1  #0 pc 12204
be_cont.25362: #pc 12208
be_cont.25358: #pc 12208
	j	be_cont.25346 #pc 12208
	nop #pc 12212
be_else.25345: #pc 12216
	addi	%x18, %x0, 0  #0 pc 12216
be_cont.25346: #pc 12220
	beq	%x18, %x0, 12  #1632 pc 12220
	j	be_else.25363 #pc 12224
	nop #pc 12228
	addi	%x18, %x0, 0  #0 pc 12232
	j	be_cont.25364 #pc 12236
	nop #pc 12240
be_else.25363: #pc 12244
	addi	%x18, %x0, 3  #0 pc 12244
be_cont.25364: #pc 12248
	j	be_cont.25342 #pc 12248
	nop #pc 12252
be_else.25341: #pc 12256
	addi	%x18, %x0, 2  #0 pc 12256
be_cont.25342: #pc 12260
	j	be_cont.25320 #pc 12260
	nop #pc 12264
be_else.25319: #pc 12268
	addi	%x18, %x0, 1  #0 pc 12268
be_cont.25320: #pc 12272
	j	be_cont.25298 #pc 12272
	nop #pc 12276
be_else.25297: #pc 12280
	addi	%x31, %x0, 2  #pc 12280
	beq	%x19, %x31, 12  #1632 pc 12284
	j	be_else.25365 #pc 12288
	nop #pc 12292
	lw	%x18, 16(%x18)  #1632 pc 12296
	flw	%f3, 0(%x8)  #1632 pc 12300
	flw	%f4, 0(%x18)  #1632 pc 12304
	fmul	%f3, %f3, %f4  #1632 pc 12308
	flw	%f4, 4(%x8)  #1632 pc 12312
	flw	%f5, 4(%x18)  #1632 pc 12316
	fmul	%f4, %f4, %f5  #1632 pc 12320
	fadd	%f3, %f3, %f4  #1632 pc 12324
	flw	%f4, 8(%x8)  #1632 pc 12328
	flw	%f5, 8(%x18)  #1632 pc 12332
	fmul	%f4, %f4, %f5  #1632 pc 12336
	fadd	%f3, %f3, %f4  #1632 pc 12340
	fmv	%f4, l.21722  #0 pc 12344
	fle	%x31, %f3, %f4  #1632 pc 12348
	blt	%x0, %x31, 12  #1632 pc 12352
	j	fble_else.25367 #pc 12356
	nop #pc 12360
	addi	%x19, %x0, 0  #0 pc 12364
	j	fble_cont.25368 #pc 12368
	nop #pc 12372
fble_else.25367: #pc 12376
	addi	%x19, %x0, 1  #0 pc 12376
fble_cont.25368: #pc 12380
	beq	%x19, %x0, 12  #1632 pc 12380
	j	be_else.25369 #pc 12384
	nop #pc 12388
	addi	%x18, %x0, 0  #0 pc 12392
	j	be_cont.25370 #pc 12396
	nop #pc 12400
be_else.25369: #pc 12404
	flw	%f4, 0(%x18)  #1632 pc 12404
	fmul	%f0, %f4, %f0  #1632 pc 12408
	flw	%f4, 4(%x18)  #1632 pc 12412
	fmul	%f1, %f4, %f1  #1632 pc 12416
	fadd	%f0, %f0, %f1  #1632 pc 12420
	flw	%f1, 8(%x18)  #1632 pc 12424
	fmul	%f1, %f1, %f2  #1632 pc 12428
	fadd	%f0, %f0, %f1  #1632 pc 12432
	fsub	%f0, %f30, %f0  #1632 pc 12436
	fdiv	%f0, %f0, %f3  #1632 pc 12440
	fsw	%f0, 0(%x12)  #1632 pc 12444
	addi	%x18, %x0, 1  #0 pc 12448
be_cont.25370: #pc 12452
	j	be_cont.25366 #pc 12452
	nop #pc 12456
be_else.25365: #pc 12460
	flw	%f3, 0(%x8)  #1632 pc 12460
	flw	%f4, 4(%x8)  #1632 pc 12464
	flw	%f5, 8(%x8)  #1632 pc 12468
	fmul	%f6, %f3, %f3  #1632 pc 12472
	lw	%x19, 16(%x18)  #1632 pc 12476
	flw	%f7, 0(%x19)  #1632 pc 12480
	fmul	%f6, %f6, %f7  #1632 pc 12484
	fmul	%f7, %f4, %f4  #1632 pc 12488
	lw	%x19, 16(%x18)  #1632 pc 12492
	flw	%f8, 4(%x19)  #1632 pc 12496
	fmul	%f7, %f7, %f8  #1632 pc 12500
	fadd	%f6, %f6, %f7  #1632 pc 12504
	fmul	%f7, %f5, %f5  #1632 pc 12508
	lw	%x19, 16(%x18)  #1632 pc 12512
	flw	%f8, 8(%x19)  #1632 pc 12516
	fmul	%f7, %f7, %f8  #1632 pc 12520
	fadd	%f6, %f6, %f7  #1632 pc 12524
	lw	%x19, 12(%x18)  #1632 pc 12528
	beq	%x19, %x0, 12  #1632 pc 12532
	j	be_else.25371 #pc 12536
	nop #pc 12540
	fadd	%f3, %f6, %f30  #1632 pc 12544
	j	be_cont.25372 #pc 12548
	nop #pc 12552
be_else.25371: #pc 12556
	fmul	%f7, %f4, %f5  #1632 pc 12556
	lw	%x19, 36(%x18)  #1632 pc 12560
	flw	%f8, 0(%x19)  #1632 pc 12564
	fmul	%f7, %f7, %f8  #1632 pc 12568
	fadd	%f6, %f6, %f7  #1632 pc 12572
	fmul	%f5, %f5, %f3  #1632 pc 12576
	lw	%x19, 36(%x18)  #1632 pc 12580
	flw	%f7, 4(%x19)  #1632 pc 12584
	fmul	%f5, %f5, %f7  #1632 pc 12588
	fadd	%f5, %f6, %f5  #1632 pc 12592
	fmul	%f3, %f3, %f4  #1632 pc 12596
	lw	%x19, 36(%x18)  #1632 pc 12600
	flw	%f4, 8(%x19)  #1632 pc 12604
	fmul	%f3, %f3, %f4  #1632 pc 12608
	fadd	%f3, %f5, %f3  #1632 pc 12612
be_cont.25372: #pc 12616
	fmv	%f4, l.21722  #0 pc 12616
	feq	%x31, %f3, %f4  #1632 pc 12620
	blt	%x0, %x31, 12  #1632 pc 12624
	j	fbe_else.25373 #pc 12628
	nop #pc 12632
	addi	%x19, %x0, 1  #0 pc 12636
	j	fbe_cont.25374 #pc 12640
	nop #pc 12644
fbe_else.25373: #pc 12648
	addi	%x19, %x0, 0  #0 pc 12648
fbe_cont.25374: #pc 12652
	beq	%x19, %x0, 12  #1632 pc 12652
	j	be_else.25375 #pc 12656
	nop #pc 12660
	flw	%f4, 0(%x8)  #1632 pc 12664
	flw	%f5, 4(%x8)  #1632 pc 12668
	flw	%f6, 8(%x8)  #1632 pc 12672
	fmul	%f7, %f4, %f0  #1632 pc 12676
	lw	%x19, 16(%x18)  #1632 pc 12680
	flw	%f8, 0(%x19)  #1632 pc 12684
	fmul	%f7, %f7, %f8  #1632 pc 12688
	fmul	%f8, %f5, %f1  #1632 pc 12692
	lw	%x19, 16(%x18)  #1632 pc 12696
	flw	%f9, 4(%x19)  #1632 pc 12700
	fmul	%f8, %f8, %f9  #1632 pc 12704
	fadd	%f7, %f7, %f8  #1632 pc 12708
	fmul	%f8, %f6, %f2  #1632 pc 12712
	lw	%x19, 16(%x18)  #1632 pc 12716
	flw	%f9, 8(%x19)  #1632 pc 12720
	fmul	%f8, %f8, %f9  #1632 pc 12724
	fadd	%f7, %f7, %f8  #1632 pc 12728
	lw	%x19, 12(%x18)  #1632 pc 12732
	beq	%x19, %x0, 12  #1632 pc 12736
	j	be_else.25377 #pc 12740
	nop #pc 12744
	fadd	%f4, %f7, %f30  #1632 pc 12748
	j	be_cont.25378 #pc 12752
	nop #pc 12756
be_else.25377: #pc 12760
	fmul	%f8, %f6, %f1  #1632 pc 12760
	fmul	%f9, %f5, %f2  #1632 pc 12764
	fadd	%f8, %f8, %f9  #1632 pc 12768
	lw	%x19, 36(%x18)  #1632 pc 12772
	flw	%f9, 0(%x19)  #1632 pc 12776
	fmul	%f8, %f8, %f9  #1632 pc 12780
	fmul	%f9, %f4, %f2  #1632 pc 12784
	fmul	%f6, %f6, %f0  #1632 pc 12788
	fadd	%f6, %f9, %f6  #1632 pc 12792
	lw	%x19, 36(%x18)  #1632 pc 12796
	flw	%f9, 4(%x19)  #1632 pc 12800
	fmul	%f6, %f6, %f9  #1632 pc 12804
	fadd	%f6, %f8, %f6  #1632 pc 12808
	fmul	%f4, %f4, %f1  #1632 pc 12812
	fmul	%f5, %f5, %f0  #1632 pc 12816
	fadd	%f4, %f4, %f5  #1632 pc 12820
	lw	%x19, 36(%x18)  #1632 pc 12824
	flw	%f5, 8(%x19)  #1632 pc 12828
	fmul	%f4, %f4, %f5  #1632 pc 12832
	fadd	%f4, %f6, %f4  #1632 pc 12836
	fmv	%f5, l.21733  #0 pc 12840
	fmul	%f4, %f5, %f4  #1632 pc 12844
	fadd	%f4, %f7, %f4  #1632 pc 12848
be_cont.25378: #pc 12852
	fmul	%f5, %f0, %f0  #1632 pc 12852
	lw	%x19, 16(%x18)  #1632 pc 12856
	flw	%f6, 0(%x19)  #1632 pc 12860
	fmul	%f5, %f5, %f6  #1632 pc 12864
	fmul	%f6, %f1, %f1  #1632 pc 12868
	lw	%x19, 16(%x18)  #1632 pc 12872
	flw	%f7, 4(%x19)  #1632 pc 12876
	fmul	%f6, %f6, %f7  #1632 pc 12880
	fadd	%f5, %f5, %f6  #1632 pc 12884
	fmul	%f6, %f2, %f2  #1632 pc 12888
	lw	%x19, 16(%x18)  #1632 pc 12892
	flw	%f7, 8(%x19)  #1632 pc 12896
	fmul	%f6, %f6, %f7  #1632 pc 12900
	fadd	%f5, %f5, %f6  #1632 pc 12904
	lw	%x19, 12(%x18)  #1632 pc 12908
	beq	%x19, %x0, 12  #1632 pc 12912
	j	be_else.25379 #pc 12916
	nop #pc 12920
	fadd	%f0, %f5, %f30  #1632 pc 12924
	j	be_cont.25380 #pc 12928
	nop #pc 12932
be_else.25379: #pc 12936
	fmul	%f6, %f1, %f2  #1632 pc 12936
	lw	%x19, 36(%x18)  #1632 pc 12940
	flw	%f7, 0(%x19)  #1632 pc 12944
	fmul	%f6, %f6, %f7  #1632 pc 12948
	fadd	%f5, %f5, %f6  #1632 pc 12952
	fmul	%f2, %f2, %f0  #1632 pc 12956
	lw	%x19, 36(%x18)  #1632 pc 12960
	flw	%f6, 4(%x19)  #1632 pc 12964
	fmul	%f2, %f2, %f6  #1632 pc 12968
	fadd	%f2, %f5, %f2  #1632 pc 12972
	fmul	%f0, %f0, %f1  #1632 pc 12976
	lw	%x19, 36(%x18)  #1632 pc 12980
	flw	%f1, 8(%x19)  #1632 pc 12984
	fmul	%f0, %f0, %f1  #1632 pc 12988
	fadd	%f0, %f2, %f0  #1632 pc 12992
be_cont.25380: #pc 12996
	lw	%x19, 4(%x18)  #1632 pc 12996
	addi	%x31, %x0, 3  #pc 13000
	beq	%x19, %x31, 12  #1632 pc 13004
	j	be_else.25381 #pc 13008
	nop #pc 13012
	fmv	%f1, l.21731  #0 pc 13016
	fsub	%f0, %f0, %f1  #1632 pc 13020
	j	be_cont.25382 #pc 13024
	nop #pc 13028
be_else.25381: #pc 13032
be_cont.25382: #pc 13032
	fmul	%f1, %f4, %f4  #1632 pc 13032
	fmul	%f0, %f3, %f0  #1632 pc 13036
	fsub	%f0, %f1, %f0  #1632 pc 13040
	fmv	%f1, l.21722  #0 pc 13044
	fle	%x31, %f0, %f1  #1632 pc 13048
	blt	%x0, %x31, 12  #1632 pc 13052
	j	fble_else.25383 #pc 13056
	nop #pc 13060
	addi	%x19, %x0, 0  #0 pc 13064
	j	fble_cont.25384 #pc 13068
	nop #pc 13072
fble_else.25383: #pc 13076
	addi	%x19, %x0, 1  #0 pc 13076
fble_cont.25384: #pc 13080
	beq	%x19, %x0, 12  #1632 pc 13080
	j	be_else.25385 #pc 13084
	nop #pc 13088
	addi	%x18, %x0, 0  #0 pc 13092
	j	be_cont.25386 #pc 13096
	nop #pc 13100
be_else.25385: #pc 13104
	fsqrt	%f0, %f0  #1632 pc 13104
	lw	%x18, 24(%x18)  #1632 pc 13108
	beq	%x18, %x0, 12  #1632 pc 13112
	j	be_else.25387 #pc 13116
	nop #pc 13120
	fsub	%f0, %f30, %f0  #1632 pc 13124
	j	be_cont.25388 #pc 13128
	nop #pc 13132
be_else.25387: #pc 13136
be_cont.25388: #pc 13136
	fsub	%f0, %f0, %f4  #1632 pc 13136
	fdiv	%f0, %f0, %f3  #1632 pc 13140
	fsw	%f0, 0(%x12)  #1632 pc 13144
	addi	%x18, %x0, 1  #0 pc 13148
be_cont.25386: #pc 13152
	j	be_cont.25376 #pc 13152
	nop #pc 13156
be_else.25375: #pc 13160
	addi	%x18, %x0, 0  #0 pc 13160
be_cont.25376: #pc 13164
be_cont.25366: #pc 13164
be_cont.25298: #pc 13164
	beq	%x18, %x0, 12  #1633 pc 13164
	j	be_else.25389 #pc 13168
	nop #pc 13172
	slli	%x10, %x17, 2  #1661 pc 13176
	add	%x31, %x10, %x9  #1661 pc 13180
	lw	%x9, 0(%x31)  #1661 pc 13184
	lw	%x9, 24(%x9)  #1661 pc 13188
	beq	%x9, %x0, 12  #1661 pc 13192
	j	be_else.25390 #pc 13196
	nop #pc 13200
	ret #pc 13204
	nop #pc 13208
be_else.25390: #pc 13212
	addi	%x6, %x6, 1  #1662 pc 13212
	lw	%x30, 0(%x29)  #1662 pc 13216
	jalr	%x0, %x30, 0  #1662 pc 13220
	nop #pc 13224
be_else.25389: #pc 13228
	flw	%f0, 0(%x12)  #1637 pc 13228
	fmv	%f1, l.21722  #0 pc 13232
	fle	%x31, %f0, %f1  #1639 pc 13236
	blt	%x0, %x31, 12  #1639 pc 13240
	j	fble_else.25392 #pc 13244
	nop #pc 13248
	addi	%x9, %x0, 0  #0 pc 13252
	j	fble_cont.25393 #pc 13256
	nop #pc 13260
fble_else.25392: #pc 13264
	addi	%x9, %x0, 1  #0 pc 13264
fble_cont.25393: #pc 13268
	sw	%x8, 0(%x2)  #1639 pc 13268
	sw	%x7, 4(%x2)  #1639 pc 13272
	sw	%x29, 8(%x2)  #1639 pc 13276
	sw	%x6, 12(%x2)  #1639 pc 13280
	beq	%x9, %x0, 12  #1639 pc 13284
	j	be_else.25394 #pc 13288
	nop #pc 13292
	j	be_cont.25395 #pc 13296
	nop #pc 13300
be_else.25394: #pc 13304
	flw	%f1, 0(%x13)  #1640 pc 13304
	fle	%x31, %f1, %f0  #1640 pc 13308
	blt	%x0, %x31, 12  #1640 pc 13312
	j	fble_else.25396 #pc 13316
	nop #pc 13320
	addi	%x9, %x0, 0  #0 pc 13324
	j	fble_cont.25397 #pc 13328
	nop #pc 13332
fble_else.25396: #pc 13336
	addi	%x9, %x0, 1  #0 pc 13336
fble_cont.25397: #pc 13340
	beq	%x9, %x0, 12  #1640 pc 13340
	j	be_else.25398 #pc 13344
	nop #pc 13348
	j	be_cont.25399 #pc 13352
	nop #pc 13356
be_else.25398: #pc 13360
	fmv	%f1, l.22060  #0 pc 13360
	fadd	%f0, %f0, %f1  #1642 pc 13364
	flw	%f1, 0(%x8)  #1643 pc 13368
	fmul	%f1, %f1, %f0  #1643 pc 13372
	flw	%f2, 0(%x15)  #1643 pc 13376
	fadd	%f1, %f1, %f2  #1643 pc 13380
	flw	%f2, 4(%x8)  #1644 pc 13384
	fmul	%f2, %f2, %f0  #1644 pc 13388
	flw	%f3, 4(%x15)  #1644 pc 13392
	fadd	%f2, %f2, %f3  #1644 pc 13396
	flw	%f3, 8(%x8)  #1645 pc 13400
	fmul	%f3, %f3, %f0  #1645 pc 13404
	flw	%f4, 8(%x15)  #1645 pc 13408
	fadd	%f3, %f3, %f4  #1645 pc 13412
	addi	%x9, %x0, 0  #0 pc 13416
	sw	%x10, 16(%x2)  #1646 pc 13420
	sw	%x18, 20(%x2)  #1646 pc 13424
	sw	%x11, 24(%x2)  #1646 pc 13428
	sw	%x17, 28(%x2)  #1646 pc 13432
	fsw	%f3, 32(%x2)  #1646 pc 13436
	fsw	%f2, 40(%x2)  #1646 pc 13440
	sw	%x14, 48(%x2)  #1646 pc 13444
	fsw	%f1, 56(%x2)  #1646 pc 13448
	sw	%x13, 64(%x2)  #1646 pc 13452
	fsw	%f0, 72(%x2)  #1646 pc 13456
	addi	%x6, %x9, 0  #0 pc 13460
	addi	%x29, %x16, 0  #0 pc 13464
	fadd	%f0, %f1, %f30  #0 pc 13468
	fadd	%f1, %f2, %f30  #0 pc 13472
	fadd	%f2, %f3, %f30  #0 pc 13476
	sw	%x1, 80(%x2)  #1646 pc 13480
	lw	%x30, 0(%x29)  #1646 pc 13484
	addi	%x2, %x2, 84  #1646 pc 13488
	jalr	%x1, %x30, 0  #1646 pc 13492
	addi	%x2, %x2, -84  #1646 pc 13496
	lw	%x1, 80(%x2)  #1646 pc 13500
	beq	%x6, %x0, 12  #1646 pc 13504
	j	be_else.25402 #pc 13508
	nop #pc 13512
	j	be_cont.25403 #pc 13516
	nop #pc 13520
be_else.25402: #pc 13524
	lw	%x6, 64(%x2)  #1648 pc 13524
	flw	%f0, 72(%x2)  #1648 pc 13528
	fsw	%f0, 0(%x6)  #1648 pc 13532
	lw	%x6, 48(%x2)  #1649 pc 13536
	flw	%f0, 56(%x2)  #1649 pc 13540
	fsw	%f0, 0(%x6)  #1649 pc 13544
	flw	%f0, 40(%x2)  #1649 pc 13548
	fsw	%f0, 4(%x6)  #1649 pc 13552
	flw	%f0, 32(%x2)  #1649 pc 13556
	fsw	%f0, 8(%x6)  #1649 pc 13560
	lw	%x6, 24(%x2)  #1650 pc 13564
	lw	%x7, 28(%x2)  #1650 pc 13568
	sw	%x7, 0(%x6)  #1650 pc 13572
	lw	%x6, 16(%x2)  #1651 pc 13576
	lw	%x7, 20(%x2)  #1651 pc 13580
	sw	%x7, 0(%x6)  #1651 pc 13584
be_cont.25403: #pc 13588
be_cont.25399: #pc 13588
be_cont.25395: #pc 13588
	lw	%x6, 12(%x2)  #1657 pc 13588
	addi	%x6, %x6, 1  #1657 pc 13592
	lw	%x7, 4(%x2)  #1657 pc 13596
	lw	%x8, 0(%x2)  #1657 pc 13600
	lw	%x29, 8(%x2)  #1657 pc 13604
	lw	%x30, 0(%x29)  #1657 pc 13608
	jalr	%x0, %x30, 0  #1657 pc 13612
	nop #pc 13616
solve_one_or_network.2895:  #pc 13620
	lw	%x9, 8(%x29)  #1670 pc 13620
	lw	%x10, 4(%x29)  #1670 pc 13624
	slli	%x11, %x6, 2  #1670 pc 13628
	add	%x31, %x11, %x7  #1670 pc 13632
	lw	%x11, 0(%x31)  #1670 pc 13636
	addi	%x31, %x0, -1  #pc 13640
	beq	%x11, %x31, 12  #1671 pc 13644
	j	be_else.25404 #pc 13648
	nop #pc 13652
	ret #pc 13656
	nop #pc 13660
be_else.25404: #pc 13664
	slli	%x11, %x11, 2  #1672 pc 13664
	add	%x31, %x11, %x10  #1672 pc 13668
	lw	%x10, 0(%x31)  #1672 pc 13672
	addi	%x11, %x0, 0  #0 pc 13676
	sw	%x8, 0(%x2)  #1673 pc 13680
	sw	%x7, 4(%x2)  #1673 pc 13684
	sw	%x29, 8(%x2)  #1673 pc 13688
	sw	%x6, 12(%x2)  #1673 pc 13692
	addi	%x7, %x10, 0  #0 pc 13696
	addi	%x6, %x11, 0  #0 pc 13700
	addi	%x29, %x9, 0  #0 pc 13704
	sw	%x1, 16(%x2)  #1673 pc 13708
	lw	%x30, 0(%x29)  #1673 pc 13712
	addi	%x2, %x2, 20  #1673 pc 13716
	jalr	%x1, %x30, 0  #1673 pc 13720
	addi	%x2, %x2, -20  #1673 pc 13724
	lw	%x1, 16(%x2)  #1673 pc 13728
	lw	%x6, 12(%x2)  #1674 pc 13732
	addi	%x6, %x6, 1  #1674 pc 13736
	lw	%x7, 4(%x2)  #1674 pc 13740
	lw	%x8, 0(%x2)  #1674 pc 13744
	lw	%x29, 8(%x2)  #1674 pc 13748
	lw	%x30, 0(%x29)  #1674 pc 13752
	jalr	%x0, %x30, 0  #1674 pc 13756
	nop #pc 13760
trace_or_matrix.2899:  #pc 13764
	lw	%x9, 20(%x29)  #1680 pc 13764
	lw	%x10, 16(%x29)  #1680 pc 13768
	lw	%x11, 12(%x29)  #1680 pc 13772
	lw	%x12, 8(%x29)  #1680 pc 13776
	lw	%x13, 4(%x29)  #1680 pc 13780
	slli	%x14, %x6, 2  #1680 pc 13784
	add	%x31, %x14, %x7  #1680 pc 13788
	lw	%x14, 0(%x31)  #1680 pc 13792
	lw	%x15, 0(%x14)  #1681 pc 13796
	addi	%x31, %x0, -1  #pc 13800
	beq	%x15, %x31, 12  #1682 pc 13804
	j	be_else.25406 #pc 13808
	nop #pc 13812
	ret #pc 13816
	nop #pc 13820
be_else.25406: #pc 13824
	sw	%x8, 0(%x2)  #1685 pc 13824
	sw	%x7, 4(%x2)  #1685 pc 13828
	sw	%x29, 8(%x2)  #1685 pc 13832
	sw	%x6, 12(%x2)  #1685 pc 13836
	addi	%x31, %x0, 99  #pc 13840
	beq	%x15, %x31, 12  #1685 pc 13844
	j	be_else.25408 #pc 13848
	nop #pc 13852
	addi	%x10, %x0, 1  #0 pc 13856
	addi	%x7, %x14, 0  #0 pc 13860
	addi	%x6, %x10, 0  #0 pc 13864
	addi	%x29, %x9, 0  #0 pc 13868
	sw	%x1, 16(%x2)  #1686 pc 13872
	lw	%x30, 0(%x29)  #1686 pc 13876
	addi	%x2, %x2, 20  #1686 pc 13880
	jalr	%x1, %x30, 0  #1686 pc 13884
	addi	%x2, %x2, -20  #1686 pc 13888
	lw	%x1, 16(%x2)  #1686 pc 13892
	j	be_cont.25409 #pc 13896
	nop #pc 13900
be_else.25408: #pc 13904
	slli	%x15, %x15, 2  #1690 pc 13904
	add	%x31, %x15, %x10  #1690 pc 13908
	lw	%x10, 0(%x31)  #1690 pc 13912
	flw	%f0, 0(%x13)  #1690 pc 13916
	lw	%x15, 20(%x10)  #1690 pc 13920
	flw	%f1, 0(%x15)  #1690 pc 13924
	fsub	%f0, %f0, %f1  #1690 pc 13928
	flw	%f1, 4(%x13)  #1690 pc 13932
	lw	%x15, 20(%x10)  #1690 pc 13936
	flw	%f2, 4(%x15)  #1690 pc 13940
	fsub	%f1, %f1, %f2  #1690 pc 13944
	flw	%f2, 8(%x13)  #1690 pc 13948
	lw	%x13, 20(%x10)  #1690 pc 13952
	flw	%f3, 8(%x13)  #1690 pc 13956
	fsub	%f2, %f2, %f3  #1690 pc 13960
	lw	%x13, 4(%x10)  #1690 pc 13964
	addi	%x31, %x0, 1  #pc 13968
	beq	%x13, %x31, 12  #1690 pc 13972
	j	be_else.25410 #pc 13976
	nop #pc 13980
	flw	%f3, 0(%x8)  #1690 pc 13984
	fmv	%f4, l.21722  #0 pc 13988
	feq	%x31, %f3, %f4  #1690 pc 13992
	blt	%x0, %x31, 12  #1690 pc 13996
	j	fbe_else.25412 #pc 14000
	nop #pc 14004
	addi	%x13, %x0, 1  #0 pc 14008
	j	fbe_cont.25413 #pc 14012
	nop #pc 14016
fbe_else.25412: #pc 14020
	addi	%x13, %x0, 0  #0 pc 14020
fbe_cont.25413: #pc 14024
	beq	%x13, %x0, 12  #1690 pc 14024
	j	be_else.25414 #pc 14028
	nop #pc 14032
	lw	%x13, 16(%x10)  #1690 pc 14036
	lw	%x15, 24(%x10)  #1690 pc 14040
	flw	%f3, 0(%x8)  #1690 pc 14044
	fmv	%f4, l.21722  #0 pc 14048
	fle	%x31, %f4, %f3  #1690 pc 14052
	blt	%x0, %x31, 12  #1690 pc 14056
	j	fble_else.25416 #pc 14060
	nop #pc 14064
	addi	%x16, %x0, 0  #0 pc 14068
	j	fble_cont.25417 #pc 14072
	nop #pc 14076
fble_else.25416: #pc 14080
	addi	%x16, %x0, 1  #0 pc 14080
fble_cont.25417: #pc 14084
	beq	%x15, %x0, 12  #1690 pc 14084
	j	be_else.25418 #pc 14088
	nop #pc 14092
	addi	%x15, %x16, 0  #1690 pc 14096
	j	be_cont.25419 #pc 14100
	nop #pc 14104
be_else.25418: #pc 14108
	beq	%x16, %x0, 12  #1690 pc 14108
	j	be_else.25420 #pc 14112
	nop #pc 14116
	addi	%x15, %x0, 1  #0 pc 14120
	j	be_cont.25421 #pc 14124
	nop #pc 14128
be_else.25420: #pc 14132
	addi	%x15, %x0, 0  #0 pc 14132
be_cont.25421: #pc 14136
be_cont.25419: #pc 14136
	flw	%f3, 0(%x13)  #1690 pc 14136
	beq	%x15, %x0, 12  #1690 pc 14140
	j	be_else.25422 #pc 14144
	nop #pc 14148
	fsub	%f3, %f30, %f3  #1690 pc 14152
	j	be_cont.25423 #pc 14156
	nop #pc 14160
be_else.25422: #pc 14164
be_cont.25423: #pc 14164
	fsub	%f3, %f3, %f0  #1690 pc 14164
	flw	%f4, 0(%x8)  #1690 pc 14168
	fdiv	%f3, %f3, %f4  #1690 pc 14172
	flw	%f4, 4(%x8)  #1690 pc 14176
	fmul	%f4, %f3, %f4  #1690 pc 14180
	fadd	%f4, %f4, %f1  #1690 pc 14184
	fabs	%f4, %f4  #1690 pc 14188
	flw	%f5, 4(%x13)  #1690 pc 14192
	fle	%x31, %f5, %f4  #1690 pc 14196
	blt	%x0, %x31, 12  #1690 pc 14200
	j	fble_else.25424 #pc 14204
	nop #pc 14208
	addi	%x15, %x0, 0  #0 pc 14212
	j	fble_cont.25425 #pc 14216
	nop #pc 14220
fble_else.25424: #pc 14224
	addi	%x15, %x0, 1  #0 pc 14224
fble_cont.25425: #pc 14228
	beq	%x15, %x0, 12  #1690 pc 14228
	j	be_else.25426 #pc 14232
	nop #pc 14236
	addi	%x13, %x0, 0  #0 pc 14240
	j	be_cont.25427 #pc 14244
	nop #pc 14248
be_else.25426: #pc 14252
	flw	%f4, 8(%x8)  #1690 pc 14252
	fmul	%f4, %f3, %f4  #1690 pc 14256
	fadd	%f4, %f4, %f2  #1690 pc 14260
	fabs	%f4, %f4  #1690 pc 14264
	flw	%f5, 8(%x13)  #1690 pc 14268
	fle	%x31, %f5, %f4  #1690 pc 14272
	blt	%x0, %x31, 12  #1690 pc 14276
	j	fble_else.25428 #pc 14280
	nop #pc 14284
	addi	%x13, %x0, 0  #0 pc 14288
	j	fble_cont.25429 #pc 14292
	nop #pc 14296
fble_else.25428: #pc 14300
	addi	%x13, %x0, 1  #0 pc 14300
fble_cont.25429: #pc 14304
	beq	%x13, %x0, 12  #1690 pc 14304
	j	be_else.25430 #pc 14308
	nop #pc 14312
	addi	%x13, %x0, 0  #0 pc 14316
	j	be_cont.25431 #pc 14320
	nop #pc 14324
be_else.25430: #pc 14328
	fsw	%f3, 0(%x11)  #1690 pc 14328
	addi	%x13, %x0, 1  #0 pc 14332
be_cont.25431: #pc 14336
be_cont.25427: #pc 14336
	j	be_cont.25415 #pc 14336
	nop #pc 14340
be_else.25414: #pc 14344
	addi	%x13, %x0, 0  #0 pc 14344
be_cont.25415: #pc 14348
	beq	%x13, %x0, 12  #1690 pc 14348
	j	be_else.25432 #pc 14352
	nop #pc 14356
	flw	%f3, 4(%x8)  #1690 pc 14360
	fmv	%f4, l.21722  #0 pc 14364
	feq	%x31, %f3, %f4  #1690 pc 14368
	blt	%x0, %x31, 12  #1690 pc 14372
	j	fbe_else.25434 #pc 14376
	nop #pc 14380
	addi	%x13, %x0, 1  #0 pc 14384
	j	fbe_cont.25435 #pc 14388
	nop #pc 14392
fbe_else.25434: #pc 14396
	addi	%x13, %x0, 0  #0 pc 14396
fbe_cont.25435: #pc 14400
	beq	%x13, %x0, 12  #1690 pc 14400
	j	be_else.25436 #pc 14404
	nop #pc 14408
	lw	%x13, 16(%x10)  #1690 pc 14412
	lw	%x15, 24(%x10)  #1690 pc 14416
	flw	%f3, 4(%x8)  #1690 pc 14420
	fmv	%f4, l.21722  #0 pc 14424
	fle	%x31, %f4, %f3  #1690 pc 14428
	blt	%x0, %x31, 12  #1690 pc 14432
	j	fble_else.25438 #pc 14436
	nop #pc 14440
	addi	%x16, %x0, 0  #0 pc 14444
	j	fble_cont.25439 #pc 14448
	nop #pc 14452
fble_else.25438: #pc 14456
	addi	%x16, %x0, 1  #0 pc 14456
fble_cont.25439: #pc 14460
	beq	%x15, %x0, 12  #1690 pc 14460
	j	be_else.25440 #pc 14464
	nop #pc 14468
	addi	%x15, %x16, 0  #1690 pc 14472
	j	be_cont.25441 #pc 14476
	nop #pc 14480
be_else.25440: #pc 14484
	beq	%x16, %x0, 12  #1690 pc 14484
	j	be_else.25442 #pc 14488
	nop #pc 14492
	addi	%x15, %x0, 1  #0 pc 14496
	j	be_cont.25443 #pc 14500
	nop #pc 14504
be_else.25442: #pc 14508
	addi	%x15, %x0, 0  #0 pc 14508
be_cont.25443: #pc 14512
be_cont.25441: #pc 14512
	flw	%f3, 4(%x13)  #1690 pc 14512
	beq	%x15, %x0, 12  #1690 pc 14516
	j	be_else.25444 #pc 14520
	nop #pc 14524
	fsub	%f3, %f30, %f3  #1690 pc 14528
	j	be_cont.25445 #pc 14532
	nop #pc 14536
be_else.25444: #pc 14540
be_cont.25445: #pc 14540
	fsub	%f3, %f3, %f1  #1690 pc 14540
	flw	%f4, 4(%x8)  #1690 pc 14544
	fdiv	%f3, %f3, %f4  #1690 pc 14548
	flw	%f4, 8(%x8)  #1690 pc 14552
	fmul	%f4, %f3, %f4  #1690 pc 14556
	fadd	%f4, %f4, %f2  #1690 pc 14560
	fabs	%f4, %f4  #1690 pc 14564
	flw	%f5, 8(%x13)  #1690 pc 14568
	fle	%x31, %f5, %f4  #1690 pc 14572
	blt	%x0, %x31, 12  #1690 pc 14576
	j	fble_else.25446 #pc 14580
	nop #pc 14584
	addi	%x15, %x0, 0  #0 pc 14588
	j	fble_cont.25447 #pc 14592
	nop #pc 14596
fble_else.25446: #pc 14600
	addi	%x15, %x0, 1  #0 pc 14600
fble_cont.25447: #pc 14604
	beq	%x15, %x0, 12  #1690 pc 14604
	j	be_else.25448 #pc 14608
	nop #pc 14612
	addi	%x13, %x0, 0  #0 pc 14616
	j	be_cont.25449 #pc 14620
	nop #pc 14624
be_else.25448: #pc 14628
	flw	%f4, 0(%x8)  #1690 pc 14628
	fmul	%f4, %f3, %f4  #1690 pc 14632
	fadd	%f4, %f4, %f0  #1690 pc 14636
	fabs	%f4, %f4  #1690 pc 14640
	flw	%f5, 0(%x13)  #1690 pc 14644
	fle	%x31, %f5, %f4  #1690 pc 14648
	blt	%x0, %x31, 12  #1690 pc 14652
	j	fble_else.25450 #pc 14656
	nop #pc 14660
	addi	%x13, %x0, 0  #0 pc 14664
	j	fble_cont.25451 #pc 14668
	nop #pc 14672
fble_else.25450: #pc 14676
	addi	%x13, %x0, 1  #0 pc 14676
fble_cont.25451: #pc 14680
	beq	%x13, %x0, 12  #1690 pc 14680
	j	be_else.25452 #pc 14684
	nop #pc 14688
	addi	%x13, %x0, 0  #0 pc 14692
	j	be_cont.25453 #pc 14696
	nop #pc 14700
be_else.25452: #pc 14704
	fsw	%f3, 0(%x11)  #1690 pc 14704
	addi	%x13, %x0, 1  #0 pc 14708
be_cont.25453: #pc 14712
be_cont.25449: #pc 14712
	j	be_cont.25437 #pc 14712
	nop #pc 14716
be_else.25436: #pc 14720
	addi	%x13, %x0, 0  #0 pc 14720
be_cont.25437: #pc 14724
	beq	%x13, %x0, 12  #1690 pc 14724
	j	be_else.25454 #pc 14728
	nop #pc 14732
	flw	%f3, 8(%x8)  #1690 pc 14736
	fmv	%f4, l.21722  #0 pc 14740
	feq	%x31, %f3, %f4  #1690 pc 14744
	blt	%x0, %x31, 12  #1690 pc 14748
	j	fbe_else.25456 #pc 14752
	nop #pc 14756
	addi	%x13, %x0, 1  #0 pc 14760
	j	fbe_cont.25457 #pc 14764
	nop #pc 14768
fbe_else.25456: #pc 14772
	addi	%x13, %x0, 0  #0 pc 14772
fbe_cont.25457: #pc 14776
	beq	%x13, %x0, 12  #1690 pc 14776
	j	be_else.25458 #pc 14780
	nop #pc 14784
	lw	%x13, 16(%x10)  #1690 pc 14788
	lw	%x10, 24(%x10)  #1690 pc 14792
	flw	%f3, 8(%x8)  #1690 pc 14796
	fmv	%f4, l.21722  #0 pc 14800
	fle	%x31, %f4, %f3  #1690 pc 14804
	blt	%x0, %x31, 12  #1690 pc 14808
	j	fble_else.25460 #pc 14812
	nop #pc 14816
	addi	%x15, %x0, 0  #0 pc 14820
	j	fble_cont.25461 #pc 14824
	nop #pc 14828
fble_else.25460: #pc 14832
	addi	%x15, %x0, 1  #0 pc 14832
fble_cont.25461: #pc 14836
	beq	%x10, %x0, 12  #1690 pc 14836
	j	be_else.25462 #pc 14840
	nop #pc 14844
	addi	%x10, %x15, 0  #1690 pc 14848
	j	be_cont.25463 #pc 14852
	nop #pc 14856
be_else.25462: #pc 14860
	beq	%x15, %x0, 12  #1690 pc 14860
	j	be_else.25464 #pc 14864
	nop #pc 14868
	addi	%x10, %x0, 1  #0 pc 14872
	j	be_cont.25465 #pc 14876
	nop #pc 14880
be_else.25464: #pc 14884
	addi	%x10, %x0, 0  #0 pc 14884
be_cont.25465: #pc 14888
be_cont.25463: #pc 14888
	flw	%f3, 8(%x13)  #1690 pc 14888
	beq	%x10, %x0, 12  #1690 pc 14892
	j	be_else.25466 #pc 14896
	nop #pc 14900
	fsub	%f3, %f30, %f3  #1690 pc 14904
	j	be_cont.25467 #pc 14908
	nop #pc 14912
be_else.25466: #pc 14916
be_cont.25467: #pc 14916
	fsub	%f2, %f3, %f2  #1690 pc 14916
	flw	%f3, 8(%x8)  #1690 pc 14920
	fdiv	%f2, %f2, %f3  #1690 pc 14924
	flw	%f3, 0(%x8)  #1690 pc 14928
	fmul	%f3, %f2, %f3  #1690 pc 14932
	fadd	%f0, %f3, %f0  #1690 pc 14936
	fabs	%f0, %f0  #1690 pc 14940
	flw	%f3, 0(%x13)  #1690 pc 14944
	fle	%x31, %f3, %f0  #1690 pc 14948
	blt	%x0, %x31, 12  #1690 pc 14952
	j	fble_else.25468 #pc 14956
	nop #pc 14960
	addi	%x10, %x0, 0  #0 pc 14964
	j	fble_cont.25469 #pc 14968
	nop #pc 14972
fble_else.25468: #pc 14976
	addi	%x10, %x0, 1  #0 pc 14976
fble_cont.25469: #pc 14980
	beq	%x10, %x0, 12  #1690 pc 14980
	j	be_else.25470 #pc 14984
	nop #pc 14988
	addi	%x10, %x0, 0  #0 pc 14992
	j	be_cont.25471 #pc 14996
	nop #pc 15000
be_else.25470: #pc 15004
	flw	%f0, 4(%x8)  #1690 pc 15004
	fmul	%f0, %f2, %f0  #1690 pc 15008
	fadd	%f0, %f0, %f1  #1690 pc 15012
	fabs	%f0, %f0  #1690 pc 15016
	flw	%f1, 4(%x13)  #1690 pc 15020
	fle	%x31, %f1, %f0  #1690 pc 15024
	blt	%x0, %x31, 12  #1690 pc 15028
	j	fble_else.25472 #pc 15032
	nop #pc 15036
	addi	%x10, %x0, 0  #0 pc 15040
	j	fble_cont.25473 #pc 15044
	nop #pc 15048
fble_else.25472: #pc 15052
	addi	%x10, %x0, 1  #0 pc 15052
fble_cont.25473: #pc 15056
	beq	%x10, %x0, 12  #1690 pc 15056
	j	be_else.25474 #pc 15060
	nop #pc 15064
	addi	%x10, %x0, 0  #0 pc 15068
	j	be_cont.25475 #pc 15072
	nop #pc 15076
be_else.25474: #pc 15080
	fsw	%f2, 0(%x11)  #1690 pc 15080
	addi	%x10, %x0, 1  #0 pc 15084
be_cont.25475: #pc 15088
be_cont.25471: #pc 15088
	j	be_cont.25459 #pc 15088
	nop #pc 15092
be_else.25458: #pc 15096
	addi	%x10, %x0, 0  #0 pc 15096
be_cont.25459: #pc 15100
	beq	%x10, %x0, 12  #1690 pc 15100
	j	be_else.25476 #pc 15104
	nop #pc 15108
	addi	%x10, %x0, 0  #0 pc 15112
	j	be_cont.25477 #pc 15116
	nop #pc 15120
be_else.25476: #pc 15124
	addi	%x10, %x0, 3  #0 pc 15124
be_cont.25477: #pc 15128
	j	be_cont.25455 #pc 15128
	nop #pc 15132
be_else.25454: #pc 15136
	addi	%x10, %x0, 2  #0 pc 15136
be_cont.25455: #pc 15140
	j	be_cont.25433 #pc 15140
	nop #pc 15144
be_else.25432: #pc 15148
	addi	%x10, %x0, 1  #0 pc 15148
be_cont.25433: #pc 15152
	j	be_cont.25411 #pc 15152
	nop #pc 15156
be_else.25410: #pc 15160
	addi	%x31, %x0, 2  #pc 15160
	beq	%x13, %x31, 12  #1690 pc 15164
	j	be_else.25478 #pc 15168
	nop #pc 15172
	lw	%x10, 16(%x10)  #1690 pc 15176
	flw	%f3, 0(%x8)  #1690 pc 15180
	flw	%f4, 0(%x10)  #1690 pc 15184
	fmul	%f3, %f3, %f4  #1690 pc 15188
	flw	%f4, 4(%x8)  #1690 pc 15192
	flw	%f5, 4(%x10)  #1690 pc 15196
	fmul	%f4, %f4, %f5  #1690 pc 15200
	fadd	%f3, %f3, %f4  #1690 pc 15204
	flw	%f4, 8(%x8)  #1690 pc 15208
	flw	%f5, 8(%x10)  #1690 pc 15212
	fmul	%f4, %f4, %f5  #1690 pc 15216
	fadd	%f3, %f3, %f4  #1690 pc 15220
	fmv	%f4, l.21722  #0 pc 15224
	fle	%x31, %f3, %f4  #1690 pc 15228
	blt	%x0, %x31, 12  #1690 pc 15232
	j	fble_else.25480 #pc 15236
	nop #pc 15240
	addi	%x13, %x0, 0  #0 pc 15244
	j	fble_cont.25481 #pc 15248
	nop #pc 15252
fble_else.25480: #pc 15256
	addi	%x13, %x0, 1  #0 pc 15256
fble_cont.25481: #pc 15260
	beq	%x13, %x0, 12  #1690 pc 15260
	j	be_else.25482 #pc 15264
	nop #pc 15268
	addi	%x10, %x0, 0  #0 pc 15272
	j	be_cont.25483 #pc 15276
	nop #pc 15280
be_else.25482: #pc 15284
	flw	%f4, 0(%x10)  #1690 pc 15284
	fmul	%f0, %f4, %f0  #1690 pc 15288
	flw	%f4, 4(%x10)  #1690 pc 15292
	fmul	%f1, %f4, %f1  #1690 pc 15296
	fadd	%f0, %f0, %f1  #1690 pc 15300
	flw	%f1, 8(%x10)  #1690 pc 15304
	fmul	%f1, %f1, %f2  #1690 pc 15308
	fadd	%f0, %f0, %f1  #1690 pc 15312
	fsub	%f0, %f30, %f0  #1690 pc 15316
	fdiv	%f0, %f0, %f3  #1690 pc 15320
	fsw	%f0, 0(%x11)  #1690 pc 15324
	addi	%x10, %x0, 1  #0 pc 15328
be_cont.25483: #pc 15332
	j	be_cont.25479 #pc 15332
	nop #pc 15336
be_else.25478: #pc 15340
	flw	%f3, 0(%x8)  #1690 pc 15340
	flw	%f4, 4(%x8)  #1690 pc 15344
	flw	%f5, 8(%x8)  #1690 pc 15348
	fmul	%f6, %f3, %f3  #1690 pc 15352
	lw	%x13, 16(%x10)  #1690 pc 15356
	flw	%f7, 0(%x13)  #1690 pc 15360
	fmul	%f6, %f6, %f7  #1690 pc 15364
	fmul	%f7, %f4, %f4  #1690 pc 15368
	lw	%x13, 16(%x10)  #1690 pc 15372
	flw	%f8, 4(%x13)  #1690 pc 15376
	fmul	%f7, %f7, %f8  #1690 pc 15380
	fadd	%f6, %f6, %f7  #1690 pc 15384
	fmul	%f7, %f5, %f5  #1690 pc 15388
	lw	%x13, 16(%x10)  #1690 pc 15392
	flw	%f8, 8(%x13)  #1690 pc 15396
	fmul	%f7, %f7, %f8  #1690 pc 15400
	fadd	%f6, %f6, %f7  #1690 pc 15404
	lw	%x13, 12(%x10)  #1690 pc 15408
	beq	%x13, %x0, 12  #1690 pc 15412
	j	be_else.25484 #pc 15416
	nop #pc 15420
	fadd	%f3, %f6, %f30  #1690 pc 15424
	j	be_cont.25485 #pc 15428
	nop #pc 15432
be_else.25484: #pc 15436
	fmul	%f7, %f4, %f5  #1690 pc 15436
	lw	%x13, 36(%x10)  #1690 pc 15440
	flw	%f8, 0(%x13)  #1690 pc 15444
	fmul	%f7, %f7, %f8  #1690 pc 15448
	fadd	%f6, %f6, %f7  #1690 pc 15452
	fmul	%f5, %f5, %f3  #1690 pc 15456
	lw	%x13, 36(%x10)  #1690 pc 15460
	flw	%f7, 4(%x13)  #1690 pc 15464
	fmul	%f5, %f5, %f7  #1690 pc 15468
	fadd	%f5, %f6, %f5  #1690 pc 15472
	fmul	%f3, %f3, %f4  #1690 pc 15476
	lw	%x13, 36(%x10)  #1690 pc 15480
	flw	%f4, 8(%x13)  #1690 pc 15484
	fmul	%f3, %f3, %f4  #1690 pc 15488
	fadd	%f3, %f5, %f3  #1690 pc 15492
be_cont.25485: #pc 15496
	fmv	%f4, l.21722  #0 pc 15496
	feq	%x31, %f3, %f4  #1690 pc 15500
	blt	%x0, %x31, 12  #1690 pc 15504
	j	fbe_else.25486 #pc 15508
	nop #pc 15512
	addi	%x13, %x0, 1  #0 pc 15516
	j	fbe_cont.25487 #pc 15520
	nop #pc 15524
fbe_else.25486: #pc 15528
	addi	%x13, %x0, 0  #0 pc 15528
fbe_cont.25487: #pc 15532
	beq	%x13, %x0, 12  #1690 pc 15532
	j	be_else.25488 #pc 15536
	nop #pc 15540
	flw	%f4, 0(%x8)  #1690 pc 15544
	flw	%f5, 4(%x8)  #1690 pc 15548
	flw	%f6, 8(%x8)  #1690 pc 15552
	fmul	%f7, %f4, %f0  #1690 pc 15556
	lw	%x13, 16(%x10)  #1690 pc 15560
	flw	%f8, 0(%x13)  #1690 pc 15564
	fmul	%f7, %f7, %f8  #1690 pc 15568
	fmul	%f8, %f5, %f1  #1690 pc 15572
	lw	%x13, 16(%x10)  #1690 pc 15576
	flw	%f9, 4(%x13)  #1690 pc 15580
	fmul	%f8, %f8, %f9  #1690 pc 15584
	fadd	%f7, %f7, %f8  #1690 pc 15588
	fmul	%f8, %f6, %f2  #1690 pc 15592
	lw	%x13, 16(%x10)  #1690 pc 15596
	flw	%f9, 8(%x13)  #1690 pc 15600
	fmul	%f8, %f8, %f9  #1690 pc 15604
	fadd	%f7, %f7, %f8  #1690 pc 15608
	lw	%x13, 12(%x10)  #1690 pc 15612
	beq	%x13, %x0, 12  #1690 pc 15616
	j	be_else.25490 #pc 15620
	nop #pc 15624
	fadd	%f4, %f7, %f30  #1690 pc 15628
	j	be_cont.25491 #pc 15632
	nop #pc 15636
be_else.25490: #pc 15640
	fmul	%f8, %f6, %f1  #1690 pc 15640
	fmul	%f9, %f5, %f2  #1690 pc 15644
	fadd	%f8, %f8, %f9  #1690 pc 15648
	lw	%x13, 36(%x10)  #1690 pc 15652
	flw	%f9, 0(%x13)  #1690 pc 15656
	fmul	%f8, %f8, %f9  #1690 pc 15660
	fmul	%f9, %f4, %f2  #1690 pc 15664
	fmul	%f6, %f6, %f0  #1690 pc 15668
	fadd	%f6, %f9, %f6  #1690 pc 15672
	lw	%x13, 36(%x10)  #1690 pc 15676
	flw	%f9, 4(%x13)  #1690 pc 15680
	fmul	%f6, %f6, %f9  #1690 pc 15684
	fadd	%f6, %f8, %f6  #1690 pc 15688
	fmul	%f4, %f4, %f1  #1690 pc 15692
	fmul	%f5, %f5, %f0  #1690 pc 15696
	fadd	%f4, %f4, %f5  #1690 pc 15700
	lw	%x13, 36(%x10)  #1690 pc 15704
	flw	%f5, 8(%x13)  #1690 pc 15708
	fmul	%f4, %f4, %f5  #1690 pc 15712
	fadd	%f4, %f6, %f4  #1690 pc 15716
	fmv	%f5, l.21733  #0 pc 15720
	fmul	%f4, %f5, %f4  #1690 pc 15724
	fadd	%f4, %f7, %f4  #1690 pc 15728
be_cont.25491: #pc 15732
	fmul	%f5, %f0, %f0  #1690 pc 15732
	lw	%x13, 16(%x10)  #1690 pc 15736
	flw	%f6, 0(%x13)  #1690 pc 15740
	fmul	%f5, %f5, %f6  #1690 pc 15744
	fmul	%f6, %f1, %f1  #1690 pc 15748
	lw	%x13, 16(%x10)  #1690 pc 15752
	flw	%f7, 4(%x13)  #1690 pc 15756
	fmul	%f6, %f6, %f7  #1690 pc 15760
	fadd	%f5, %f5, %f6  #1690 pc 15764
	fmul	%f6, %f2, %f2  #1690 pc 15768
	lw	%x13, 16(%x10)  #1690 pc 15772
	flw	%f7, 8(%x13)  #1690 pc 15776
	fmul	%f6, %f6, %f7  #1690 pc 15780
	fadd	%f5, %f5, %f6  #1690 pc 15784
	lw	%x13, 12(%x10)  #1690 pc 15788
	beq	%x13, %x0, 12  #1690 pc 15792
	j	be_else.25492 #pc 15796
	nop #pc 15800
	fadd	%f0, %f5, %f30  #1690 pc 15804
	j	be_cont.25493 #pc 15808
	nop #pc 15812
be_else.25492: #pc 15816
	fmul	%f6, %f1, %f2  #1690 pc 15816
	lw	%x13, 36(%x10)  #1690 pc 15820
	flw	%f7, 0(%x13)  #1690 pc 15824
	fmul	%f6, %f6, %f7  #1690 pc 15828
	fadd	%f5, %f5, %f6  #1690 pc 15832
	fmul	%f2, %f2, %f0  #1690 pc 15836
	lw	%x13, 36(%x10)  #1690 pc 15840
	flw	%f6, 4(%x13)  #1690 pc 15844
	fmul	%f2, %f2, %f6  #1690 pc 15848
	fadd	%f2, %f5, %f2  #1690 pc 15852
	fmul	%f0, %f0, %f1  #1690 pc 15856
	lw	%x13, 36(%x10)  #1690 pc 15860
	flw	%f1, 8(%x13)  #1690 pc 15864
	fmul	%f0, %f0, %f1  #1690 pc 15868
	fadd	%f0, %f2, %f0  #1690 pc 15872
be_cont.25493: #pc 15876
	lw	%x13, 4(%x10)  #1690 pc 15876
	addi	%x31, %x0, 3  #pc 15880
	beq	%x13, %x31, 12  #1690 pc 15884
	j	be_else.25494 #pc 15888
	nop #pc 15892
	fmv	%f1, l.21731  #0 pc 15896
	fsub	%f0, %f0, %f1  #1690 pc 15900
	j	be_cont.25495 #pc 15904
	nop #pc 15908
be_else.25494: #pc 15912
be_cont.25495: #pc 15912
	fmul	%f1, %f4, %f4  #1690 pc 15912
	fmul	%f0, %f3, %f0  #1690 pc 15916
	fsub	%f0, %f1, %f0  #1690 pc 15920
	fmv	%f1, l.21722  #0 pc 15924
	fle	%x31, %f0, %f1  #1690 pc 15928
	blt	%x0, %x31, 12  #1690 pc 15932
	j	fble_else.25496 #pc 15936
	nop #pc 15940
	addi	%x13, %x0, 0  #0 pc 15944
	j	fble_cont.25497 #pc 15948
	nop #pc 15952
fble_else.25496: #pc 15956
	addi	%x13, %x0, 1  #0 pc 15956
fble_cont.25497: #pc 15960
	beq	%x13, %x0, 12  #1690 pc 15960
	j	be_else.25498 #pc 15964
	nop #pc 15968
	addi	%x10, %x0, 0  #0 pc 15972
	j	be_cont.25499 #pc 15976
	nop #pc 15980
be_else.25498: #pc 15984
	fsqrt	%f0, %f0  #1690 pc 15984
	lw	%x10, 24(%x10)  #1690 pc 15988
	beq	%x10, %x0, 12  #1690 pc 15992
	j	be_else.25500 #pc 15996
	nop #pc 16000
	fsub	%f0, %f30, %f0  #1690 pc 16004
	j	be_cont.25501 #pc 16008
	nop #pc 16012
be_else.25500: #pc 16016
be_cont.25501: #pc 16016
	fsub	%f0, %f0, %f4  #1690 pc 16016
	fdiv	%f0, %f0, %f3  #1690 pc 16020
	fsw	%f0, 0(%x11)  #1690 pc 16024
	addi	%x10, %x0, 1  #0 pc 16028
be_cont.25499: #pc 16032
	j	be_cont.25489 #pc 16032
	nop #pc 16036
be_else.25488: #pc 16040
	addi	%x10, %x0, 0  #0 pc 16040
be_cont.25489: #pc 16044
be_cont.25479: #pc 16044
be_cont.25411: #pc 16044
	beq	%x10, %x0, 12  #1691 pc 16044
	j	be_else.25502 #pc 16048
	nop #pc 16052
	j	be_cont.25503 #pc 16056
	nop #pc 16060
be_else.25502: #pc 16064
	flw	%f0, 0(%x11)  #1692 pc 16064
	flw	%f1, 0(%x12)  #1693 pc 16068
	fle	%x31, %f1, %f0  #1693 pc 16072
	blt	%x0, %x31, 12  #1693 pc 16076
	j	fble_else.25504 #pc 16080
	nop #pc 16084
	addi	%x10, %x0, 0  #0 pc 16088
	j	fble_cont.25505 #pc 16092
	nop #pc 16096
fble_else.25504: #pc 16100
	addi	%x10, %x0, 1  #0 pc 16100
fble_cont.25505: #pc 16104
	beq	%x10, %x0, 12  #1693 pc 16104
	j	be_else.25506 #pc 16108
	nop #pc 16112
	j	be_cont.25507 #pc 16116
	nop #pc 16120
be_else.25506: #pc 16124
	addi	%x10, %x0, 1  #0 pc 16124
	addi	%x7, %x14, 0  #0 pc 16128
	addi	%x6, %x10, 0  #0 pc 16132
	addi	%x29, %x9, 0  #0 pc 16136
	sw	%x1, 16(%x2)  #1694 pc 16140
	lw	%x30, 0(%x29)  #1694 pc 16144
	addi	%x2, %x2, 20  #1694 pc 16148
	jalr	%x1, %x30, 0  #1694 pc 16152
	addi	%x2, %x2, -20  #1694 pc 16156
	lw	%x1, 16(%x2)  #1694 pc 16160
be_cont.25507: #pc 16164
be_cont.25503: #pc 16164
be_cont.25409: #pc 16164
	lw	%x6, 12(%x2)  #1698 pc 16164
	addi	%x6, %x6, 1  #1698 pc 16168
	lw	%x7, 4(%x2)  #1698 pc 16172
	lw	%x8, 0(%x2)  #1698 pc 16176
	lw	%x29, 8(%x2)  #1698 pc 16180
	lw	%x30, 0(%x29)  #1698 pc 16184
	jalr	%x0, %x30, 0  #1698 pc 16188
	nop #pc 16192
solve_each_element_fast.2905:  #pc 16196
	lw	%x9, 32(%x29)  #1722 pc 16196
	lw	%x10, 28(%x29)  #1722 pc 16200
	lw	%x11, 24(%x29)  #1722 pc 16204
	lw	%x12, 20(%x29)  #1722 pc 16208
	lw	%x13, 16(%x29)  #1722 pc 16212
	lw	%x14, 12(%x29)  #1722 pc 16216
	lw	%x15, 8(%x29)  #1722 pc 16220
	lw	%x16, 4(%x29)  #1722 pc 16224
	lw	%x17, 0(%x8)  #1722 pc 16228
	slli	%x18, %x6, 2  #1723 pc 16232
	add	%x31, %x18, %x7  #1723 pc 16236
	lw	%x18, 0(%x31)  #1723 pc 16240
	addi	%x31, %x0, -1  #pc 16244
	beq	%x18, %x31, 12  #1724 pc 16248
	j	be_else.25508 #pc 16252
	nop #pc 16256
	ret #pc 16260
	nop #pc 16264
be_else.25508: #pc 16268
	slli	%x19, %x18, 2  #1726 pc 16268
	add	%x31, %x19, %x9  #1726 pc 16272
	lw	%x19, 0(%x31)  #1726 pc 16276
	lw	%x20, 40(%x19)  #1726 pc 16280
	flw	%f0, 0(%x20)  #1726 pc 16284
	flw	%f1, 4(%x20)  #1726 pc 16288
	flw	%f2, 8(%x20)  #1726 pc 16292
	lw	%x21, 4(%x8)  #1726 pc 16296
	slli	%x22, %x18, 2  #1726 pc 16300
	add	%x31, %x22, %x21  #1726 pc 16304
	lw	%x21, 0(%x31)  #1726 pc 16308
	lw	%x22, 4(%x19)  #1726 pc 16312
	addi	%x31, %x0, 1  #pc 16316
	beq	%x22, %x31, 12  #1726 pc 16320
	j	be_else.25510 #pc 16324
	nop #pc 16328
	lw	%x20, 0(%x8)  #1726 pc 16332
	flw	%f3, 0(%x21)  #1726 pc 16336
	fsub	%f3, %f3, %f0  #1726 pc 16340
	flw	%f4, 4(%x21)  #1726 pc 16344
	fmul	%f3, %f3, %f4  #1726 pc 16348
	flw	%f4, 4(%x20)  #1726 pc 16352
	fmul	%f4, %f3, %f4  #1726 pc 16356
	fadd	%f4, %f4, %f1  #1726 pc 16360
	fabs	%f4, %f4  #1726 pc 16364
	lw	%x22, 16(%x19)  #1726 pc 16368
	flw	%f5, 4(%x22)  #1726 pc 16372
	fle	%x31, %f5, %f4  #1726 pc 16376
	blt	%x0, %x31, 12  #1726 pc 16380
	j	fble_else.25512 #pc 16384
	nop #pc 16388
	addi	%x22, %x0, 0  #0 pc 16392
	j	fble_cont.25513 #pc 16396
	nop #pc 16400
fble_else.25512: #pc 16404
	addi	%x22, %x0, 1  #0 pc 16404
fble_cont.25513: #pc 16408
	beq	%x22, %x0, 12  #1726 pc 16408
	j	be_else.25514 #pc 16412
	nop #pc 16416
	addi	%x22, %x0, 0  #0 pc 16420
	j	be_cont.25515 #pc 16424
	nop #pc 16428
be_else.25514: #pc 16432
	flw	%f4, 8(%x20)  #1726 pc 16432
	fmul	%f4, %f3, %f4  #1726 pc 16436
	fadd	%f4, %f4, %f2  #1726 pc 16440
	fabs	%f4, %f4  #1726 pc 16444
	lw	%x22, 16(%x19)  #1726 pc 16448
	flw	%f5, 8(%x22)  #1726 pc 16452
	fle	%x31, %f5, %f4  #1726 pc 16456
	blt	%x0, %x31, 12  #1726 pc 16460
	j	fble_else.25516 #pc 16464
	nop #pc 16468
	addi	%x22, %x0, 0  #0 pc 16472
	j	fble_cont.25517 #pc 16476
	nop #pc 16480
fble_else.25516: #pc 16484
	addi	%x22, %x0, 1  #0 pc 16484
fble_cont.25517: #pc 16488
	beq	%x22, %x0, 12  #1726 pc 16488
	j	be_else.25518 #pc 16492
	nop #pc 16496
	addi	%x22, %x0, 0  #0 pc 16500
	j	be_cont.25519 #pc 16504
	nop #pc 16508
be_else.25518: #pc 16512
	flw	%f4, 4(%x21)  #1726 pc 16512
	fmv	%f5, l.21722  #0 pc 16516
	feq	%x31, %f4, %f5  #1726 pc 16520
	blt	%x0, %x31, 12  #1726 pc 16524
	j	fbe_else.25520 #pc 16528
	nop #pc 16532
	addi	%x22, %x0, 1  #0 pc 16536
	j	fbe_cont.25521 #pc 16540
	nop #pc 16544
fbe_else.25520: #pc 16548
	addi	%x22, %x0, 0  #0 pc 16548
fbe_cont.25521: #pc 16552
	beq	%x22, %x0, 12  #1726 pc 16552
	j	be_else.25522 #pc 16556
	nop #pc 16560
	addi	%x22, %x0, 1  #0 pc 16564
	j	be_cont.25523 #pc 16568
	nop #pc 16572
be_else.25522: #pc 16576
	addi	%x22, %x0, 0  #0 pc 16576
be_cont.25523: #pc 16580
be_cont.25519: #pc 16580
be_cont.25515: #pc 16580
	beq	%x22, %x0, 12  #1726 pc 16580
	j	be_else.25524 #pc 16584
	nop #pc 16588
	flw	%f3, 8(%x21)  #1726 pc 16592
	fsub	%f3, %f3, %f1  #1726 pc 16596
	flw	%f4, 12(%x21)  #1726 pc 16600
	fmul	%f3, %f3, %f4  #1726 pc 16604
	flw	%f4, 0(%x20)  #1726 pc 16608
	fmul	%f4, %f3, %f4  #1726 pc 16612
	fadd	%f4, %f4, %f0  #1726 pc 16616
	fabs	%f4, %f4  #1726 pc 16620
	lw	%x22, 16(%x19)  #1726 pc 16624
	flw	%f5, 0(%x22)  #1726 pc 16628
	fle	%x31, %f5, %f4  #1726 pc 16632
	blt	%x0, %x31, 12  #1726 pc 16636
	j	fble_else.25526 #pc 16640
	nop #pc 16644
	addi	%x22, %x0, 0  #0 pc 16648
	j	fble_cont.25527 #pc 16652
	nop #pc 16656
fble_else.25526: #pc 16660
	addi	%x22, %x0, 1  #0 pc 16660
fble_cont.25527: #pc 16664
	beq	%x22, %x0, 12  #1726 pc 16664
	j	be_else.25528 #pc 16668
	nop #pc 16672
	addi	%x22, %x0, 0  #0 pc 16676
	j	be_cont.25529 #pc 16680
	nop #pc 16684
be_else.25528: #pc 16688
	flw	%f4, 8(%x20)  #1726 pc 16688
	fmul	%f4, %f3, %f4  #1726 pc 16692
	fadd	%f4, %f4, %f2  #1726 pc 16696
	fabs	%f4, %f4  #1726 pc 16700
	lw	%x22, 16(%x19)  #1726 pc 16704
	flw	%f5, 8(%x22)  #1726 pc 16708
	fle	%x31, %f5, %f4  #1726 pc 16712
	blt	%x0, %x31, 12  #1726 pc 16716
	j	fble_else.25530 #pc 16720
	nop #pc 16724
	addi	%x22, %x0, 0  #0 pc 16728
	j	fble_cont.25531 #pc 16732
	nop #pc 16736
fble_else.25530: #pc 16740
	addi	%x22, %x0, 1  #0 pc 16740
fble_cont.25531: #pc 16744
	beq	%x22, %x0, 12  #1726 pc 16744
	j	be_else.25532 #pc 16748
	nop #pc 16752
	addi	%x22, %x0, 0  #0 pc 16756
	j	be_cont.25533 #pc 16760
	nop #pc 16764
be_else.25532: #pc 16768
	flw	%f4, 12(%x21)  #1726 pc 16768
	fmv	%f5, l.21722  #0 pc 16772
	feq	%x31, %f4, %f5  #1726 pc 16776
	blt	%x0, %x31, 12  #1726 pc 16780
	j	fbe_else.25534 #pc 16784
	nop #pc 16788
	addi	%x22, %x0, 1  #0 pc 16792
	j	fbe_cont.25535 #pc 16796
	nop #pc 16800
fbe_else.25534: #pc 16804
	addi	%x22, %x0, 0  #0 pc 16804
fbe_cont.25535: #pc 16808
	beq	%x22, %x0, 12  #1726 pc 16808
	j	be_else.25536 #pc 16812
	nop #pc 16816
	addi	%x22, %x0, 1  #0 pc 16820
	j	be_cont.25537 #pc 16824
	nop #pc 16828
be_else.25536: #pc 16832
	addi	%x22, %x0, 0  #0 pc 16832
be_cont.25537: #pc 16836
be_cont.25533: #pc 16836
be_cont.25529: #pc 16836
	beq	%x22, %x0, 12  #1726 pc 16836
	j	be_else.25538 #pc 16840
	nop #pc 16844
	flw	%f3, 16(%x21)  #1726 pc 16848
	fsub	%f2, %f3, %f2  #1726 pc 16852
	flw	%f3, 20(%x21)  #1726 pc 16856
	fmul	%f2, %f2, %f3  #1726 pc 16860
	flw	%f3, 0(%x20)  #1726 pc 16864
	fmul	%f3, %f2, %f3  #1726 pc 16868
	fadd	%f0, %f3, %f0  #1726 pc 16872
	fabs	%f0, %f0  #1726 pc 16876
	lw	%x22, 16(%x19)  #1726 pc 16880
	flw	%f3, 0(%x22)  #1726 pc 16884
	fle	%x31, %f3, %f0  #1726 pc 16888
	blt	%x0, %x31, 12  #1726 pc 16892
	j	fble_else.25540 #pc 16896
	nop #pc 16900
	addi	%x22, %x0, 0  #0 pc 16904
	j	fble_cont.25541 #pc 16908
	nop #pc 16912
fble_else.25540: #pc 16916
	addi	%x22, %x0, 1  #0 pc 16916
fble_cont.25541: #pc 16920
	beq	%x22, %x0, 12  #1726 pc 16920
	j	be_else.25542 #pc 16924
	nop #pc 16928
	addi	%x19, %x0, 0  #0 pc 16932
	j	be_cont.25543 #pc 16936
	nop #pc 16940
be_else.25542: #pc 16944
	flw	%f0, 4(%x20)  #1726 pc 16944
	fmul	%f0, %f2, %f0  #1726 pc 16948
	fadd	%f0, %f0, %f1  #1726 pc 16952
	fabs	%f0, %f0  #1726 pc 16956
	lw	%x19, 16(%x19)  #1726 pc 16960
	flw	%f1, 4(%x19)  #1726 pc 16964
	fle	%x31, %f1, %f0  #1726 pc 16968
	blt	%x0, %x31, 12  #1726 pc 16972
	j	fble_else.25544 #pc 16976
	nop #pc 16980
	addi	%x19, %x0, 0  #0 pc 16984
	j	fble_cont.25545 #pc 16988
	nop #pc 16992
fble_else.25544: #pc 16996
	addi	%x19, %x0, 1  #0 pc 16996
fble_cont.25545: #pc 17000
	beq	%x19, %x0, 12  #1726 pc 17000
	j	be_else.25546 #pc 17004
	nop #pc 17008
	addi	%x19, %x0, 0  #0 pc 17012
	j	be_cont.25547 #pc 17016
	nop #pc 17020
be_else.25546: #pc 17024
	flw	%f0, 20(%x21)  #1726 pc 17024
	fmv	%f1, l.21722  #0 pc 17028
	feq	%x31, %f0, %f1  #1726 pc 17032
	blt	%x0, %x31, 12  #1726 pc 17036
	j	fbe_else.25548 #pc 17040
	nop #pc 17044
	addi	%x19, %x0, 1  #0 pc 17048
	j	fbe_cont.25549 #pc 17052
	nop #pc 17056
fbe_else.25548: #pc 17060
	addi	%x19, %x0, 0  #0 pc 17060
fbe_cont.25549: #pc 17064
	beq	%x19, %x0, 12  #1726 pc 17064
	j	be_else.25550 #pc 17068
	nop #pc 17072
	addi	%x19, %x0, 1  #0 pc 17076
	j	be_cont.25551 #pc 17080
	nop #pc 17084
be_else.25550: #pc 17088
	addi	%x19, %x0, 0  #0 pc 17088
be_cont.25551: #pc 17092
be_cont.25547: #pc 17092
be_cont.25543: #pc 17092
	beq	%x19, %x0, 12  #1726 pc 17092
	j	be_else.25552 #pc 17096
	nop #pc 17100
	addi	%x19, %x0, 0  #0 pc 17104
	j	be_cont.25553 #pc 17108
	nop #pc 17112
be_else.25552: #pc 17116
	fsw	%f2, 0(%x12)  #1726 pc 17116
	addi	%x19, %x0, 3  #0 pc 17120
be_cont.25553: #pc 17124
	j	be_cont.25539 #pc 17124
	nop #pc 17128
be_else.25538: #pc 17132
	fsw	%f3, 0(%x12)  #1726 pc 17132
	addi	%x19, %x0, 2  #0 pc 17136
be_cont.25539: #pc 17140
	j	be_cont.25525 #pc 17140
	nop #pc 17144
be_else.25524: #pc 17148
	fsw	%f3, 0(%x12)  #1726 pc 17148
	addi	%x19, %x0, 1  #0 pc 17152
be_cont.25525: #pc 17156
	j	be_cont.25511 #pc 17156
	nop #pc 17160
be_else.25510: #pc 17164
	addi	%x31, %x0, 2  #pc 17164
	beq	%x22, %x31, 12  #1726 pc 17168
	j	be_else.25554 #pc 17172
	nop #pc 17176
	flw	%f0, 0(%x21)  #1726 pc 17180
	fmv	%f1, l.21722  #0 pc 17184
	fle	%x31, %f1, %f0  #1726 pc 17188
	blt	%x0, %x31, 12  #1726 pc 17192
	j	fble_else.25556 #pc 17196
	nop #pc 17200
	addi	%x19, %x0, 0  #0 pc 17204
	j	fble_cont.25557 #pc 17208
	nop #pc 17212
fble_else.25556: #pc 17216
	addi	%x19, %x0, 1  #0 pc 17216
fble_cont.25557: #pc 17220
	beq	%x19, %x0, 12  #1726 pc 17220
	j	be_else.25558 #pc 17224
	nop #pc 17228
	addi	%x19, %x0, 0  #0 pc 17232
	j	be_cont.25559 #pc 17236
	nop #pc 17240
be_else.25558: #pc 17244
	flw	%f0, 0(%x21)  #1726 pc 17244
	flw	%f1, 12(%x20)  #1726 pc 17248
	fmul	%f0, %f0, %f1  #1726 pc 17252
	fsw	%f0, 0(%x12)  #1726 pc 17256
	addi	%x19, %x0, 1  #0 pc 17260
be_cont.25559: #pc 17264
	j	be_cont.25555 #pc 17264
	nop #pc 17268
be_else.25554: #pc 17272
	flw	%f3, 0(%x21)  #1726 pc 17272
	fmv	%f4, l.21722  #0 pc 17276
	feq	%x31, %f3, %f4  #1726 pc 17280
	blt	%x0, %x31, 12  #1726 pc 17284
	j	fbe_else.25560 #pc 17288
	nop #pc 17292
	addi	%x22, %x0, 1  #0 pc 17296
	j	fbe_cont.25561 #pc 17300
	nop #pc 17304
fbe_else.25560: #pc 17308
	addi	%x22, %x0, 0  #0 pc 17308
fbe_cont.25561: #pc 17312
	beq	%x22, %x0, 12  #1726 pc 17312
	j	be_else.25562 #pc 17316
	nop #pc 17320
	flw	%f4, 4(%x21)  #1726 pc 17324
	fmul	%f0, %f4, %f0  #1726 pc 17328
	flw	%f4, 8(%x21)  #1726 pc 17332
	fmul	%f1, %f4, %f1  #1726 pc 17336
	fadd	%f0, %f0, %f1  #1726 pc 17340
	flw	%f1, 12(%x21)  #1726 pc 17344
	fmul	%f1, %f1, %f2  #1726 pc 17348
	fadd	%f0, %f0, %f1  #1726 pc 17352
	flw	%f1, 12(%x20)  #1726 pc 17356
	fmul	%f2, %f0, %f0  #1726 pc 17360
	fmul	%f1, %f3, %f1  #1726 pc 17364
	fsub	%f1, %f2, %f1  #1726 pc 17368
	fmv	%f2, l.21722  #0 pc 17372
	fle	%x31, %f1, %f2  #1726 pc 17376
	blt	%x0, %x31, 12  #1726 pc 17380
	j	fble_else.25564 #pc 17384
	nop #pc 17388
	addi	%x20, %x0, 0  #0 pc 17392
	j	fble_cont.25565 #pc 17396
	nop #pc 17400
fble_else.25564: #pc 17404
	addi	%x20, %x0, 1  #0 pc 17404
fble_cont.25565: #pc 17408
	beq	%x20, %x0, 12  #1726 pc 17408
	j	be_else.25566 #pc 17412
	nop #pc 17416
	addi	%x19, %x0, 0  #0 pc 17420
	j	be_cont.25567 #pc 17424
	nop #pc 17428
be_else.25566: #pc 17432
	lw	%x19, 24(%x19)  #1726 pc 17432
	beq	%x19, %x0, 12  #1726 pc 17436
	j	be_else.25568 #pc 17440
	nop #pc 17444
	fsqrt	%f1, %f1  #1726 pc 17448
	fsub	%f0, %f0, %f1  #1726 pc 17452
	flw	%f1, 16(%x21)  #1726 pc 17456
	fmul	%f0, %f0, %f1  #1726 pc 17460
	fsw	%f0, 0(%x12)  #1726 pc 17464
	j	be_cont.25569 #pc 17468
	nop #pc 17472
be_else.25568: #pc 17476
	fsqrt	%f1, %f1  #1726 pc 17476
	fadd	%f0, %f0, %f1  #1726 pc 17480
	flw	%f1, 16(%x21)  #1726 pc 17484
	fmul	%f0, %f0, %f1  #1726 pc 17488
	fsw	%f0, 0(%x12)  #1726 pc 17492
be_cont.25569: #pc 17496
	addi	%x19, %x0, 1  #0 pc 17496
be_cont.25567: #pc 17500
	j	be_cont.25563 #pc 17500
	nop #pc 17504
be_else.25562: #pc 17508
	addi	%x19, %x0, 0  #0 pc 17508
be_cont.25563: #pc 17512
be_cont.25555: #pc 17512
be_cont.25511: #pc 17512
	beq	%x19, %x0, 12  #1727 pc 17512
	j	be_else.25570 #pc 17516
	nop #pc 17520
	slli	%x10, %x18, 2  #1755 pc 17524
	add	%x31, %x10, %x9  #1755 pc 17528
	lw	%x9, 0(%x31)  #1755 pc 17532
	lw	%x9, 24(%x9)  #1755 pc 17536
	beq	%x9, %x0, 12  #1755 pc 17540
	j	be_else.25571 #pc 17544
	nop #pc 17548
	ret #pc 17552
	nop #pc 17556
be_else.25571: #pc 17560
	addi	%x6, %x6, 1  #1756 pc 17560
	lw	%x30, 0(%x29)  #1756 pc 17564
	jalr	%x0, %x30, 0  #1756 pc 17568
	nop #pc 17572
be_else.25570: #pc 17576
	flw	%f0, 0(%x12)  #1731 pc 17576
	fmv	%f1, l.21722  #0 pc 17580
	fle	%x31, %f0, %f1  #1733 pc 17584
	blt	%x0, %x31, 12  #1733 pc 17588
	j	fble_else.25573 #pc 17592
	nop #pc 17596
	addi	%x9, %x0, 0  #0 pc 17600
	j	fble_cont.25574 #pc 17604
	nop #pc 17608
fble_else.25573: #pc 17612
	addi	%x9, %x0, 1  #0 pc 17612
fble_cont.25574: #pc 17616
	sw	%x8, 0(%x2)  #1733 pc 17616
	sw	%x7, 4(%x2)  #1733 pc 17620
	sw	%x29, 8(%x2)  #1733 pc 17624
	sw	%x6, 12(%x2)  #1733 pc 17628
	beq	%x9, %x0, 12  #1733 pc 17632
	j	be_else.25575 #pc 17636
	nop #pc 17640
	j	be_cont.25576 #pc 17644
	nop #pc 17648
be_else.25575: #pc 17652
	flw	%f1, 0(%x13)  #1734 pc 17652
	fle	%x31, %f1, %f0  #1734 pc 17656
	blt	%x0, %x31, 12  #1734 pc 17660
	j	fble_else.25577 #pc 17664
	nop #pc 17668
	addi	%x9, %x0, 0  #0 pc 17672
	j	fble_cont.25578 #pc 17676
	nop #pc 17680
fble_else.25577: #pc 17684
	addi	%x9, %x0, 1  #0 pc 17684
fble_cont.25578: #pc 17688
	beq	%x9, %x0, 12  #1734 pc 17688
	j	be_else.25579 #pc 17692
	nop #pc 17696
	j	be_cont.25580 #pc 17700
	nop #pc 17704
be_else.25579: #pc 17708
	fmv	%f1, l.22060  #0 pc 17708
	fadd	%f0, %f0, %f1  #1736 pc 17712
	flw	%f1, 0(%x17)  #1737 pc 17716
	fmul	%f1, %f1, %f0  #1737 pc 17720
	flw	%f2, 0(%x15)  #1737 pc 17724
	fadd	%f1, %f1, %f2  #1737 pc 17728
	flw	%f2, 4(%x17)  #1738 pc 17732
	fmul	%f2, %f2, %f0  #1738 pc 17736
	flw	%f3, 4(%x15)  #1738 pc 17740
	fadd	%f2, %f2, %f3  #1738 pc 17744
	flw	%f3, 8(%x17)  #1739 pc 17748
	fmul	%f3, %f3, %f0  #1739 pc 17752
	flw	%f4, 8(%x15)  #1739 pc 17756
	fadd	%f3, %f3, %f4  #1739 pc 17760
	addi	%x9, %x0, 0  #0 pc 17764
	sw	%x10, 16(%x2)  #1740 pc 17768
	sw	%x19, 20(%x2)  #1740 pc 17772
	sw	%x11, 24(%x2)  #1740 pc 17776
	sw	%x18, 28(%x2)  #1740 pc 17780
	fsw	%f3, 32(%x2)  #1740 pc 17784
	fsw	%f2, 40(%x2)  #1740 pc 17788
	sw	%x14, 48(%x2)  #1740 pc 17792
	fsw	%f1, 56(%x2)  #1740 pc 17796
	sw	%x13, 64(%x2)  #1740 pc 17800
	fsw	%f0, 72(%x2)  #1740 pc 17804
	addi	%x6, %x9, 0  #0 pc 17808
	addi	%x29, %x16, 0  #0 pc 17812
	fadd	%f0, %f1, %f30  #0 pc 17816
	fadd	%f1, %f2, %f30  #0 pc 17820
	fadd	%f2, %f3, %f30  #0 pc 17824
	sw	%x1, 80(%x2)  #1740 pc 17828
	lw	%x30, 0(%x29)  #1740 pc 17832
	addi	%x2, %x2, 84  #1740 pc 17836
	jalr	%x1, %x30, 0  #1740 pc 17840
	addi	%x2, %x2, -84  #1740 pc 17844
	lw	%x1, 80(%x2)  #1740 pc 17848
	beq	%x6, %x0, 12  #1740 pc 17852
	j	be_else.25583 #pc 17856
	nop #pc 17860
	j	be_cont.25584 #pc 17864
	nop #pc 17868
be_else.25583: #pc 17872
	lw	%x6, 64(%x2)  #1742 pc 17872
	flw	%f0, 72(%x2)  #1742 pc 17876
	fsw	%f0, 0(%x6)  #1742 pc 17880
	lw	%x6, 48(%x2)  #1743 pc 17884
	flw	%f0, 56(%x2)  #1743 pc 17888
	fsw	%f0, 0(%x6)  #1743 pc 17892
	flw	%f0, 40(%x2)  #1743 pc 17896
	fsw	%f0, 4(%x6)  #1743 pc 17900
	flw	%f0, 32(%x2)  #1743 pc 17904
	fsw	%f0, 8(%x6)  #1743 pc 17908
	lw	%x6, 24(%x2)  #1744 pc 17912
	lw	%x7, 28(%x2)  #1744 pc 17916
	sw	%x7, 0(%x6)  #1744 pc 17920
	lw	%x6, 16(%x2)  #1745 pc 17924
	lw	%x7, 20(%x2)  #1745 pc 17928
	sw	%x7, 0(%x6)  #1745 pc 17932
be_cont.25584: #pc 17936
be_cont.25580: #pc 17936
be_cont.25576: #pc 17936
	lw	%x6, 12(%x2)  #1751 pc 17936
	addi	%x6, %x6, 1  #1751 pc 17940
	lw	%x7, 4(%x2)  #1751 pc 17944
	lw	%x8, 0(%x2)  #1751 pc 17948
	lw	%x29, 8(%x2)  #1751 pc 17952
	lw	%x30, 0(%x29)  #1751 pc 17956
	jalr	%x0, %x30, 0  #1751 pc 17960
	nop #pc 17964
solve_one_or_network_fast.2909:  #pc 17968
	lw	%x9, 8(%x29)  #1763 pc 17968
	lw	%x10, 4(%x29)  #1763 pc 17972
	slli	%x11, %x6, 2  #1763 pc 17976
	add	%x31, %x11, %x7  #1763 pc 17980
	lw	%x11, 0(%x31)  #1763 pc 17984
	addi	%x31, %x0, -1  #pc 17988
	beq	%x11, %x31, 12  #1764 pc 17992
	j	be_else.25585 #pc 17996
	nop #pc 18000
	ret #pc 18004
	nop #pc 18008
be_else.25585: #pc 18012
	slli	%x11, %x11, 2  #1765 pc 18012
	add	%x31, %x11, %x10  #1765 pc 18016
	lw	%x10, 0(%x31)  #1765 pc 18020
	addi	%x11, %x0, 0  #0 pc 18024
	sw	%x8, 0(%x2)  #1766 pc 18028
	sw	%x7, 4(%x2)  #1766 pc 18032
	sw	%x29, 8(%x2)  #1766 pc 18036
	sw	%x6, 12(%x2)  #1766 pc 18040
	addi	%x7, %x10, 0  #0 pc 18044
	addi	%x6, %x11, 0  #0 pc 18048
	addi	%x29, %x9, 0  #0 pc 18052
	sw	%x1, 16(%x2)  #1766 pc 18056
	lw	%x30, 0(%x29)  #1766 pc 18060
	addi	%x2, %x2, 20  #1766 pc 18064
	jalr	%x1, %x30, 0  #1766 pc 18068
	addi	%x2, %x2, -20  #1766 pc 18072
	lw	%x1, 16(%x2)  #1766 pc 18076
	lw	%x6, 12(%x2)  #1767 pc 18080
	addi	%x6, %x6, 1  #1767 pc 18084
	lw	%x7, 4(%x2)  #1767 pc 18088
	lw	%x8, 0(%x2)  #1767 pc 18092
	lw	%x29, 8(%x2)  #1767 pc 18096
	lw	%x30, 0(%x29)  #1767 pc 18100
	jalr	%x0, %x30, 0  #1767 pc 18104
	nop #pc 18108
trace_or_matrix_fast.2913:  #pc 18112
	lw	%x9, 16(%x29)  #1773 pc 18112
	lw	%x10, 12(%x29)  #1773 pc 18116
	lw	%x11, 8(%x29)  #1773 pc 18120
	lw	%x12, 4(%x29)  #1773 pc 18124
	slli	%x13, %x6, 2  #1773 pc 18128
	add	%x31, %x13, %x7  #1773 pc 18132
	lw	%x13, 0(%x31)  #1773 pc 18136
	lw	%x14, 0(%x13)  #1774 pc 18140
	addi	%x31, %x0, -1  #pc 18144
	beq	%x14, %x31, 12  #1775 pc 18148
	j	be_else.25587 #pc 18152
	nop #pc 18156
	ret #pc 18160
	nop #pc 18164
be_else.25587: #pc 18168
	sw	%x8, 0(%x2)  #1778 pc 18168
	sw	%x7, 4(%x2)  #1778 pc 18172
	sw	%x29, 8(%x2)  #1778 pc 18176
	sw	%x6, 12(%x2)  #1778 pc 18180
	addi	%x31, %x0, 99  #pc 18184
	beq	%x14, %x31, 12  #1778 pc 18188
	j	be_else.25589 #pc 18192
	nop #pc 18196
	addi	%x10, %x0, 1  #0 pc 18200
	addi	%x7, %x13, 0  #0 pc 18204
	addi	%x6, %x10, 0  #0 pc 18208
	addi	%x29, %x9, 0  #0 pc 18212
	sw	%x1, 16(%x2)  #1779 pc 18216
	lw	%x30, 0(%x29)  #1779 pc 18220
	addi	%x2, %x2, 20  #1779 pc 18224
	jalr	%x1, %x30, 0  #1779 pc 18228
	addi	%x2, %x2, -20  #1779 pc 18232
	lw	%x1, 16(%x2)  #1779 pc 18236
	j	be_cont.25590 #pc 18240
	nop #pc 18244
be_else.25589: #pc 18248
	slli	%x15, %x14, 2  #1783 pc 18248
	add	%x31, %x15, %x10  #1783 pc 18252
	lw	%x10, 0(%x31)  #1783 pc 18256
	lw	%x15, 40(%x10)  #1783 pc 18260
	flw	%f0, 0(%x15)  #1783 pc 18264
	flw	%f1, 4(%x15)  #1783 pc 18268
	flw	%f2, 8(%x15)  #1783 pc 18272
	lw	%x16, 4(%x8)  #1783 pc 18276
	slli	%x14, %x14, 2  #1783 pc 18280
	add	%x31, %x14, %x16  #1783 pc 18284
	lw	%x14, 0(%x31)  #1783 pc 18288
	lw	%x16, 4(%x10)  #1783 pc 18292
	addi	%x31, %x0, 1  #pc 18296
	beq	%x16, %x31, 12  #1783 pc 18300
	j	be_else.25591 #pc 18304
	nop #pc 18308
	lw	%x15, 0(%x8)  #1783 pc 18312
	flw	%f3, 0(%x14)  #1783 pc 18316
	fsub	%f3, %f3, %f0  #1783 pc 18320
	flw	%f4, 4(%x14)  #1783 pc 18324
	fmul	%f3, %f3, %f4  #1783 pc 18328
	flw	%f4, 4(%x15)  #1783 pc 18332
	fmul	%f4, %f3, %f4  #1783 pc 18336
	fadd	%f4, %f4, %f1  #1783 pc 18340
	fabs	%f4, %f4  #1783 pc 18344
	lw	%x16, 16(%x10)  #1783 pc 18348
	flw	%f5, 4(%x16)  #1783 pc 18352
	fle	%x31, %f5, %f4  #1783 pc 18356
	blt	%x0, %x31, 12  #1783 pc 18360
	j	fble_else.25593 #pc 18364
	nop #pc 18368
	addi	%x16, %x0, 0  #0 pc 18372
	j	fble_cont.25594 #pc 18376
	nop #pc 18380
fble_else.25593: #pc 18384
	addi	%x16, %x0, 1  #0 pc 18384
fble_cont.25594: #pc 18388
	beq	%x16, %x0, 12  #1783 pc 18388
	j	be_else.25595 #pc 18392
	nop #pc 18396
	addi	%x16, %x0, 0  #0 pc 18400
	j	be_cont.25596 #pc 18404
	nop #pc 18408
be_else.25595: #pc 18412
	flw	%f4, 8(%x15)  #1783 pc 18412
	fmul	%f4, %f3, %f4  #1783 pc 18416
	fadd	%f4, %f4, %f2  #1783 pc 18420
	fabs	%f4, %f4  #1783 pc 18424
	lw	%x16, 16(%x10)  #1783 pc 18428
	flw	%f5, 8(%x16)  #1783 pc 18432
	fle	%x31, %f5, %f4  #1783 pc 18436
	blt	%x0, %x31, 12  #1783 pc 18440
	j	fble_else.25597 #pc 18444
	nop #pc 18448
	addi	%x16, %x0, 0  #0 pc 18452
	j	fble_cont.25598 #pc 18456
	nop #pc 18460
fble_else.25597: #pc 18464
	addi	%x16, %x0, 1  #0 pc 18464
fble_cont.25598: #pc 18468
	beq	%x16, %x0, 12  #1783 pc 18468
	j	be_else.25599 #pc 18472
	nop #pc 18476
	addi	%x16, %x0, 0  #0 pc 18480
	j	be_cont.25600 #pc 18484
	nop #pc 18488
be_else.25599: #pc 18492
	flw	%f4, 4(%x14)  #1783 pc 18492
	fmv	%f5, l.21722  #0 pc 18496
	feq	%x31, %f4, %f5  #1783 pc 18500
	blt	%x0, %x31, 12  #1783 pc 18504
	j	fbe_else.25601 #pc 18508
	nop #pc 18512
	addi	%x16, %x0, 1  #0 pc 18516
	j	fbe_cont.25602 #pc 18520
	nop #pc 18524
fbe_else.25601: #pc 18528
	addi	%x16, %x0, 0  #0 pc 18528
fbe_cont.25602: #pc 18532
	beq	%x16, %x0, 12  #1783 pc 18532
	j	be_else.25603 #pc 18536
	nop #pc 18540
	addi	%x16, %x0, 1  #0 pc 18544
	j	be_cont.25604 #pc 18548
	nop #pc 18552
be_else.25603: #pc 18556
	addi	%x16, %x0, 0  #0 pc 18556
be_cont.25604: #pc 18560
be_cont.25600: #pc 18560
be_cont.25596: #pc 18560
	beq	%x16, %x0, 12  #1783 pc 18560
	j	be_else.25605 #pc 18564
	nop #pc 18568
	flw	%f3, 8(%x14)  #1783 pc 18572
	fsub	%f3, %f3, %f1  #1783 pc 18576
	flw	%f4, 12(%x14)  #1783 pc 18580
	fmul	%f3, %f3, %f4  #1783 pc 18584
	flw	%f4, 0(%x15)  #1783 pc 18588
	fmul	%f4, %f3, %f4  #1783 pc 18592
	fadd	%f4, %f4, %f0  #1783 pc 18596
	fabs	%f4, %f4  #1783 pc 18600
	lw	%x16, 16(%x10)  #1783 pc 18604
	flw	%f5, 0(%x16)  #1783 pc 18608
	fle	%x31, %f5, %f4  #1783 pc 18612
	blt	%x0, %x31, 12  #1783 pc 18616
	j	fble_else.25607 #pc 18620
	nop #pc 18624
	addi	%x16, %x0, 0  #0 pc 18628
	j	fble_cont.25608 #pc 18632
	nop #pc 18636
fble_else.25607: #pc 18640
	addi	%x16, %x0, 1  #0 pc 18640
fble_cont.25608: #pc 18644
	beq	%x16, %x0, 12  #1783 pc 18644
	j	be_else.25609 #pc 18648
	nop #pc 18652
	addi	%x16, %x0, 0  #0 pc 18656
	j	be_cont.25610 #pc 18660
	nop #pc 18664
be_else.25609: #pc 18668
	flw	%f4, 8(%x15)  #1783 pc 18668
	fmul	%f4, %f3, %f4  #1783 pc 18672
	fadd	%f4, %f4, %f2  #1783 pc 18676
	fabs	%f4, %f4  #1783 pc 18680
	lw	%x16, 16(%x10)  #1783 pc 18684
	flw	%f5, 8(%x16)  #1783 pc 18688
	fle	%x31, %f5, %f4  #1783 pc 18692
	blt	%x0, %x31, 12  #1783 pc 18696
	j	fble_else.25611 #pc 18700
	nop #pc 18704
	addi	%x16, %x0, 0  #0 pc 18708
	j	fble_cont.25612 #pc 18712
	nop #pc 18716
fble_else.25611: #pc 18720
	addi	%x16, %x0, 1  #0 pc 18720
fble_cont.25612: #pc 18724
	beq	%x16, %x0, 12  #1783 pc 18724
	j	be_else.25613 #pc 18728
	nop #pc 18732
	addi	%x16, %x0, 0  #0 pc 18736
	j	be_cont.25614 #pc 18740
	nop #pc 18744
be_else.25613: #pc 18748
	flw	%f4, 12(%x14)  #1783 pc 18748
	fmv	%f5, l.21722  #0 pc 18752
	feq	%x31, %f4, %f5  #1783 pc 18756
	blt	%x0, %x31, 12  #1783 pc 18760
	j	fbe_else.25615 #pc 18764
	nop #pc 18768
	addi	%x16, %x0, 1  #0 pc 18772
	j	fbe_cont.25616 #pc 18776
	nop #pc 18780
fbe_else.25615: #pc 18784
	addi	%x16, %x0, 0  #0 pc 18784
fbe_cont.25616: #pc 18788
	beq	%x16, %x0, 12  #1783 pc 18788
	j	be_else.25617 #pc 18792
	nop #pc 18796
	addi	%x16, %x0, 1  #0 pc 18800
	j	be_cont.25618 #pc 18804
	nop #pc 18808
be_else.25617: #pc 18812
	addi	%x16, %x0, 0  #0 pc 18812
be_cont.25618: #pc 18816
be_cont.25614: #pc 18816
be_cont.25610: #pc 18816
	beq	%x16, %x0, 12  #1783 pc 18816
	j	be_else.25619 #pc 18820
	nop #pc 18824
	flw	%f3, 16(%x14)  #1783 pc 18828
	fsub	%f2, %f3, %f2  #1783 pc 18832
	flw	%f3, 20(%x14)  #1783 pc 18836
	fmul	%f2, %f2, %f3  #1783 pc 18840
	flw	%f3, 0(%x15)  #1783 pc 18844
	fmul	%f3, %f2, %f3  #1783 pc 18848
	fadd	%f0, %f3, %f0  #1783 pc 18852
	fabs	%f0, %f0  #1783 pc 18856
	lw	%x16, 16(%x10)  #1783 pc 18860
	flw	%f3, 0(%x16)  #1783 pc 18864
	fle	%x31, %f3, %f0  #1783 pc 18868
	blt	%x0, %x31, 12  #1783 pc 18872
	j	fble_else.25621 #pc 18876
	nop #pc 18880
	addi	%x16, %x0, 0  #0 pc 18884
	j	fble_cont.25622 #pc 18888
	nop #pc 18892
fble_else.25621: #pc 18896
	addi	%x16, %x0, 1  #0 pc 18896
fble_cont.25622: #pc 18900
	beq	%x16, %x0, 12  #1783 pc 18900
	j	be_else.25623 #pc 18904
	nop #pc 18908
	addi	%x10, %x0, 0  #0 pc 18912
	j	be_cont.25624 #pc 18916
	nop #pc 18920
be_else.25623: #pc 18924
	flw	%f0, 4(%x15)  #1783 pc 18924
	fmul	%f0, %f2, %f0  #1783 pc 18928
	fadd	%f0, %f0, %f1  #1783 pc 18932
	fabs	%f0, %f0  #1783 pc 18936
	lw	%x10, 16(%x10)  #1783 pc 18940
	flw	%f1, 4(%x10)  #1783 pc 18944
	fle	%x31, %f1, %f0  #1783 pc 18948
	blt	%x0, %x31, 12  #1783 pc 18952
	j	fble_else.25625 #pc 18956
	nop #pc 18960
	addi	%x10, %x0, 0  #0 pc 18964
	j	fble_cont.25626 #pc 18968
	nop #pc 18972
fble_else.25625: #pc 18976
	addi	%x10, %x0, 1  #0 pc 18976
fble_cont.25626: #pc 18980
	beq	%x10, %x0, 12  #1783 pc 18980
	j	be_else.25627 #pc 18984
	nop #pc 18988
	addi	%x10, %x0, 0  #0 pc 18992
	j	be_cont.25628 #pc 18996
	nop #pc 19000
be_else.25627: #pc 19004
	flw	%f0, 20(%x14)  #1783 pc 19004
	fmv	%f1, l.21722  #0 pc 19008
	feq	%x31, %f0, %f1  #1783 pc 19012
	blt	%x0, %x31, 12  #1783 pc 19016
	j	fbe_else.25629 #pc 19020
	nop #pc 19024
	addi	%x10, %x0, 1  #0 pc 19028
	j	fbe_cont.25630 #pc 19032
	nop #pc 19036
fbe_else.25629: #pc 19040
	addi	%x10, %x0, 0  #0 pc 19040
fbe_cont.25630: #pc 19044
	beq	%x10, %x0, 12  #1783 pc 19044
	j	be_else.25631 #pc 19048
	nop #pc 19052
	addi	%x10, %x0, 1  #0 pc 19056
	j	be_cont.25632 #pc 19060
	nop #pc 19064
be_else.25631: #pc 19068
	addi	%x10, %x0, 0  #0 pc 19068
be_cont.25632: #pc 19072
be_cont.25628: #pc 19072
be_cont.25624: #pc 19072
	beq	%x10, %x0, 12  #1783 pc 19072
	j	be_else.25633 #pc 19076
	nop #pc 19080
	addi	%x10, %x0, 0  #0 pc 19084
	j	be_cont.25634 #pc 19088
	nop #pc 19092
be_else.25633: #pc 19096
	fsw	%f2, 0(%x11)  #1783 pc 19096
	addi	%x10, %x0, 3  #0 pc 19100
be_cont.25634: #pc 19104
	j	be_cont.25620 #pc 19104
	nop #pc 19108
be_else.25619: #pc 19112
	fsw	%f3, 0(%x11)  #1783 pc 19112
	addi	%x10, %x0, 2  #0 pc 19116
be_cont.25620: #pc 19120
	j	be_cont.25606 #pc 19120
	nop #pc 19124
be_else.25605: #pc 19128
	fsw	%f3, 0(%x11)  #1783 pc 19128
	addi	%x10, %x0, 1  #0 pc 19132
be_cont.25606: #pc 19136
	j	be_cont.25592 #pc 19136
	nop #pc 19140
be_else.25591: #pc 19144
	addi	%x31, %x0, 2  #pc 19144
	beq	%x16, %x31, 12  #1783 pc 19148
	j	be_else.25635 #pc 19152
	nop #pc 19156
	flw	%f0, 0(%x14)  #1783 pc 19160
	fmv	%f1, l.21722  #0 pc 19164
	fle	%x31, %f1, %f0  #1783 pc 19168
	blt	%x0, %x31, 12  #1783 pc 19172
	j	fble_else.25637 #pc 19176
	nop #pc 19180
	addi	%x10, %x0, 0  #0 pc 19184
	j	fble_cont.25638 #pc 19188
	nop #pc 19192
fble_else.25637: #pc 19196
	addi	%x10, %x0, 1  #0 pc 19196
fble_cont.25638: #pc 19200
	beq	%x10, %x0, 12  #1783 pc 19200
	j	be_else.25639 #pc 19204
	nop #pc 19208
	addi	%x10, %x0, 0  #0 pc 19212
	j	be_cont.25640 #pc 19216
	nop #pc 19220
be_else.25639: #pc 19224
	flw	%f0, 0(%x14)  #1783 pc 19224
	flw	%f1, 12(%x15)  #1783 pc 19228
	fmul	%f0, %f0, %f1  #1783 pc 19232
	fsw	%f0, 0(%x11)  #1783 pc 19236
	addi	%x10, %x0, 1  #0 pc 19240
be_cont.25640: #pc 19244
	j	be_cont.25636 #pc 19244
	nop #pc 19248
be_else.25635: #pc 19252
	flw	%f3, 0(%x14)  #1783 pc 19252
	fmv	%f4, l.21722  #0 pc 19256
	feq	%x31, %f3, %f4  #1783 pc 19260
	blt	%x0, %x31, 12  #1783 pc 19264
	j	fbe_else.25641 #pc 19268
	nop #pc 19272
	addi	%x16, %x0, 1  #0 pc 19276
	j	fbe_cont.25642 #pc 19280
	nop #pc 19284
fbe_else.25641: #pc 19288
	addi	%x16, %x0, 0  #0 pc 19288
fbe_cont.25642: #pc 19292
	beq	%x16, %x0, 12  #1783 pc 19292
	j	be_else.25643 #pc 19296
	nop #pc 19300
	flw	%f4, 4(%x14)  #1783 pc 19304
	fmul	%f0, %f4, %f0  #1783 pc 19308
	flw	%f4, 8(%x14)  #1783 pc 19312
	fmul	%f1, %f4, %f1  #1783 pc 19316
	fadd	%f0, %f0, %f1  #1783 pc 19320
	flw	%f1, 12(%x14)  #1783 pc 19324
	fmul	%f1, %f1, %f2  #1783 pc 19328
	fadd	%f0, %f0, %f1  #1783 pc 19332
	flw	%f1, 12(%x15)  #1783 pc 19336
	fmul	%f2, %f0, %f0  #1783 pc 19340
	fmul	%f1, %f3, %f1  #1783 pc 19344
	fsub	%f1, %f2, %f1  #1783 pc 19348
	fmv	%f2, l.21722  #0 pc 19352
	fle	%x31, %f1, %f2  #1783 pc 19356
	blt	%x0, %x31, 12  #1783 pc 19360
	j	fble_else.25645 #pc 19364
	nop #pc 19368
	addi	%x15, %x0, 0  #0 pc 19372
	j	fble_cont.25646 #pc 19376
	nop #pc 19380
fble_else.25645: #pc 19384
	addi	%x15, %x0, 1  #0 pc 19384
fble_cont.25646: #pc 19388
	beq	%x15, %x0, 12  #1783 pc 19388
	j	be_else.25647 #pc 19392
	nop #pc 19396
	addi	%x10, %x0, 0  #0 pc 19400
	j	be_cont.25648 #pc 19404
	nop #pc 19408
be_else.25647: #pc 19412
	lw	%x10, 24(%x10)  #1783 pc 19412
	beq	%x10, %x0, 12  #1783 pc 19416
	j	be_else.25649 #pc 19420
	nop #pc 19424
	fsqrt	%f1, %f1  #1783 pc 19428
	fsub	%f0, %f0, %f1  #1783 pc 19432
	flw	%f1, 16(%x14)  #1783 pc 19436
	fmul	%f0, %f0, %f1  #1783 pc 19440
	fsw	%f0, 0(%x11)  #1783 pc 19444
	j	be_cont.25650 #pc 19448
	nop #pc 19452
be_else.25649: #pc 19456
	fsqrt	%f1, %f1  #1783 pc 19456
	fadd	%f0, %f0, %f1  #1783 pc 19460
	flw	%f1, 16(%x14)  #1783 pc 19464
	fmul	%f0, %f0, %f1  #1783 pc 19468
	fsw	%f0, 0(%x11)  #1783 pc 19472
be_cont.25650: #pc 19476
	addi	%x10, %x0, 1  #0 pc 19476
be_cont.25648: #pc 19480
	j	be_cont.25644 #pc 19480
	nop #pc 19484
be_else.25643: #pc 19488
	addi	%x10, %x0, 0  #0 pc 19488
be_cont.25644: #pc 19492
be_cont.25636: #pc 19492
be_cont.25592: #pc 19492
	beq	%x10, %x0, 12  #1784 pc 19492
	j	be_else.25651 #pc 19496
	nop #pc 19500
	j	be_cont.25652 #pc 19504
	nop #pc 19508
be_else.25651: #pc 19512
	flw	%f0, 0(%x11)  #1785 pc 19512
	flw	%f1, 0(%x12)  #1786 pc 19516
	fle	%x31, %f1, %f0  #1786 pc 19520
	blt	%x0, %x31, 12  #1786 pc 19524
	j	fble_else.25653 #pc 19528
	nop #pc 19532
	addi	%x10, %x0, 0  #0 pc 19536
	j	fble_cont.25654 #pc 19540
	nop #pc 19544
fble_else.25653: #pc 19548
	addi	%x10, %x0, 1  #0 pc 19548
fble_cont.25654: #pc 19552
	beq	%x10, %x0, 12  #1786 pc 19552
	j	be_else.25655 #pc 19556
	nop #pc 19560
	j	be_cont.25656 #pc 19564
	nop #pc 19568
be_else.25655: #pc 19572
	addi	%x10, %x0, 1  #0 pc 19572
	addi	%x7, %x13, 0  #0 pc 19576
	addi	%x6, %x10, 0  #0 pc 19580
	addi	%x29, %x9, 0  #0 pc 19584
	sw	%x1, 16(%x2)  #1787 pc 19588
	lw	%x30, 0(%x29)  #1787 pc 19592
	addi	%x2, %x2, 20  #1787 pc 19596
	jalr	%x1, %x30, 0  #1787 pc 19600
	addi	%x2, %x2, -20  #1787 pc 19604
	lw	%x1, 16(%x2)  #1787 pc 19608
be_cont.25656: #pc 19612
be_cont.25652: #pc 19612
be_cont.25590: #pc 19612
	lw	%x6, 12(%x2)  #1791 pc 19612
	addi	%x6, %x6, 1  #1791 pc 19616
	lw	%x7, 4(%x2)  #1791 pc 19620
	lw	%x8, 0(%x2)  #1791 pc 19624
	lw	%x29, 8(%x2)  #1791 pc 19628
	lw	%x30, 0(%x29)  #1791 pc 19632
	jalr	%x0, %x30, 0  #1791 pc 19636
	nop #pc 19640
trace_reflections.2935:  #pc 19644
	lw	%x8, 40(%x29)  #0 pc 19644
	lw	%x9, 36(%x29)  #0 pc 19648
	lw	%x10, 32(%x29)  #0 pc 19652
	lw	%x11, 28(%x29)  #0 pc 19656
	lw	%x12, 24(%x29)  #0 pc 19660
	lw	%x13, 20(%x29)  #0 pc 19664
	lw	%x14, 16(%x29)  #0 pc 19668
	lw	%x15, 12(%x29)  #0 pc 19672
	lw	%x16, 8(%x29)  #0 pc 19676
	lw	%x17, 4(%x29)  #0 pc 19680
	bge	%x6, %x0, 12  #1968 pc 19684
	j	bge_else.25657 #pc 19688
	nop #pc 19692
	slli	%x18, %x6, 2  #1969 pc 19696
	add	%x31, %x18, %x13  #1969 pc 19700
	lw	%x13, 0(%x31)  #1969 pc 19704
	lw	%x18, 4(%x13)  #1970 pc 19708
	fmv	%f2, l.22439  #0 pc 19712
	fsw	%f2, 0(%x14)  #1973 pc 19716
	addi	%x19, %x0, 0  #0 pc 19720
	lw	%x20, 0(%x10)  #1973 pc 19724
	sw	%x29, 0(%x2)  #1973 pc 19728
	sw	%x6, 4(%x2)  #1973 pc 19732
	fsw	%f1, 8(%x2)  #1973 pc 19736
	sw	%x16, 16(%x2)  #1973 pc 19740
	sw	%x17, 20(%x2)  #1973 pc 19744
	sw	%x7, 24(%x2)  #1973 pc 19748
	fsw	%f0, 32(%x2)  #1973 pc 19752
	sw	%x15, 40(%x2)  #1973 pc 19756
	sw	%x18, 44(%x2)  #1973 pc 19760
	sw	%x9, 48(%x2)  #1973 pc 19764
	sw	%x10, 52(%x2)  #1973 pc 19768
	sw	%x13, 56(%x2)  #1973 pc 19772
	sw	%x11, 60(%x2)  #1973 pc 19776
	sw	%x12, 64(%x2)  #1973 pc 19780
	sw	%x14, 68(%x2)  #1973 pc 19784
	addi	%x7, %x20, 0  #0 pc 19788
	addi	%x6, %x19, 0  #0 pc 19792
	addi	%x29, %x8, 0  #0 pc 19796
	addi	%x8, %x18, 0  #0 pc 19800
	sw	%x1, 72(%x2)  #1973 pc 19804
	lw	%x30, 0(%x29)  #1973 pc 19808
	addi	%x2, %x2, 76  #1973 pc 19812
	jalr	%x1, %x30, 0  #1973 pc 19816
	addi	%x2, %x2, -76  #1973 pc 19820
	lw	%x1, 72(%x2)  #1973 pc 19824
	lw	%x6, 68(%x2)  #1973 pc 19828
	flw	%f0, 0(%x6)  #1973 pc 19832
	fmv	%f1, l.22132  #0 pc 19836
	fle	%x31, %f0, %f1  #1973 pc 19840
	blt	%x0, %x31, 12  #1973 pc 19844
	j	fble_else.25659 #pc 19848
	nop #pc 19852
	addi	%x6, %x0, 0  #0 pc 19856
	j	fble_cont.25660 #pc 19860
	nop #pc 19864
fble_else.25659: #pc 19868
	addi	%x6, %x0, 1  #0 pc 19868
fble_cont.25660: #pc 19872
	beq	%x6, %x0, 12  #1973 pc 19872
	j	be_else.25661 #pc 19876
	nop #pc 19880
	addi	%x6, %x0, 0  #0 pc 19884
	j	be_cont.25662 #pc 19888
	nop #pc 19892
be_else.25661: #pc 19896
	fmv	%f1, l.22445  #0 pc 19896
	fle	%x31, %f1, %f0  #1973 pc 19900
	blt	%x0, %x31, 12  #1973 pc 19904
	j	fble_else.25663 #pc 19908
	nop #pc 19912
	addi	%x6, %x0, 0  #0 pc 19916
	j	fble_cont.25664 #pc 19920
	nop #pc 19924
fble_else.25663: #pc 19928
	addi	%x6, %x0, 1  #0 pc 19928
fble_cont.25664: #pc 19932
be_cont.25662: #pc 19932
	beq	%x6, %x0, 12  #1973 pc 19932
	j	be_else.25665 #pc 19936
	nop #pc 19940
	j	be_cont.25666 #pc 19944
	nop #pc 19948
be_else.25665: #pc 19952
	lw	%x6, 64(%x2)  #1974 pc 19952
	lw	%x6, 0(%x6)  #1974 pc 19956
	bge	%x6, %x0, 12  #1974 pc 19960
	j	bge_else.25667 #pc 19964
	nop #pc 19968
	addi	%x7, %x6, 0  #1974 pc 19972
	j	bge_cont.25668 #pc 19976
	nop #pc 19980
bge_else.25667: #pc 19984
	sub	%x7, %x0, %x6  #1974 pc 19984
bge_cont.25668: #pc 19988
	addi	%x8, %x0, 4  #0 pc 19988
	addi	%x9, %x0, 30  #0 pc 19992
	addi	%x10, %x0, 0  #0 pc 19996
	sw	%x6, 72(%x2)  #1974 pc 20000
	addi	%x6, %x7, 0  #0 pc 20004
	addi	%x7, %x8, 0  #0 pc 20008
	addi	%x8, %x9, 0  #0 pc 20012
	addi	%x9, %x10, 0  #0 pc 20016
	sw	%x1, 76(%x2)  #1974 pc 20020
	addi	%x2, %x2, 80  #1974 pc 20024
	jal	%x1, mul_abs.2542  #1974 pc 20028
	addi	%x2, %x2, -80  #1974 pc 20032
	lw	%x1, 76(%x2) #1974 pc 20036
	lw	%x7, 72(%x2)  #1974 pc 20040
	srli	%x7, %x7, 31  #1974 pc 20044
	beq	%x7, %x0, 12  #1974 pc 20048
	j	be_else.25669 #pc 20052
	nop #pc 20056
	j	be_cont.25670 #pc 20060
	nop #pc 20064
be_else.25669: #pc 20068
	sub	%x6, %x0, %x6  #1974 pc 20068
be_cont.25670: #pc 20072
	lw	%x7, 60(%x2)  #1974 pc 20072
	lw	%x7, 0(%x7)  #1974 pc 20076
	add	%x6, %x6, %x7  #1974 pc 20080
	lw	%x7, 56(%x2)  #1975 pc 20084
	lw	%x8, 0(%x7)  #1975 pc 20088
	beq	%x6, %x8, 12  #1975 pc 20092
	j	be_else.25671 #pc 20096
	nop #pc 20100
	addi	%x6, %x0, 0  #0 pc 20104
	lw	%x8, 52(%x2)  #1977 pc 20108
	lw	%x8, 0(%x8)  #1977 pc 20112
	lw	%x29, 48(%x2)  #1977 pc 20116
	addi	%x7, %x8, 0  #0 pc 20120
	sw	%x1, 76(%x2)  #1977 pc 20124
	lw	%x30, 0(%x29)  #1977 pc 20128
	addi	%x2, %x2, 80  #1977 pc 20132
	jalr	%x1, %x30, 0  #1977 pc 20136
	addi	%x2, %x2, -80  #1977 pc 20140
	lw	%x1, 76(%x2)  #1977 pc 20144
	beq	%x6, %x0, 12  #1977 pc 20148
	j	be_else.25673 #pc 20152
	nop #pc 20156
	lw	%x6, 44(%x2)  #1979 pc 20160
	lw	%x7, 0(%x6)  #1979 pc 20164
	lw	%x8, 40(%x2)  #1979 pc 20168
	flw	%f0, 0(%x8)  #1979 pc 20172
	flw	%f1, 0(%x7)  #1979 pc 20176
	fmul	%f0, %f0, %f1  #1979 pc 20180
	flw	%f1, 4(%x8)  #1979 pc 20184
	flw	%f2, 4(%x7)  #1979 pc 20188
	fmul	%f1, %f1, %f2  #1979 pc 20192
	fadd	%f0, %f0, %f1  #1979 pc 20196
	flw	%f1, 8(%x8)  #1979 pc 20200
	flw	%f2, 8(%x7)  #1979 pc 20204
	fmul	%f1, %f1, %f2  #1979 pc 20208
	fadd	%f0, %f0, %f1  #1979 pc 20212
	lw	%x7, 56(%x2)  #1980 pc 20216
	flw	%f1, 8(%x7)  #1980 pc 20220
	flw	%f2, 32(%x2)  #1981 pc 20224
	fmul	%f3, %f1, %f2  #1981 pc 20228
	fmul	%f0, %f3, %f0  #1981 pc 20232
	lw	%x6, 0(%x6)  #1982 pc 20236
	lw	%x7, 24(%x2)  #1982 pc 20240
	flw	%f3, 0(%x7)  #1982 pc 20244
	flw	%f4, 0(%x6)  #1982 pc 20248
	fmul	%f3, %f3, %f4  #1982 pc 20252
	flw	%f4, 4(%x7)  #1982 pc 20256
	flw	%f5, 4(%x6)  #1982 pc 20260
	fmul	%f4, %f4, %f5  #1982 pc 20264
	fadd	%f3, %f3, %f4  #1982 pc 20268
	flw	%f4, 8(%x7)  #1982 pc 20272
	flw	%f5, 8(%x6)  #1982 pc 20276
	fmul	%f4, %f4, %f5  #1982 pc 20280
	fadd	%f3, %f3, %f4  #1982 pc 20284
	fmul	%f1, %f1, %f3  #1982 pc 20288
	fmv	%f3, l.21722  #0 pc 20292
	fle	%x31, %f0, %f3  #1983 pc 20296
	blt	%x0, %x31, 12  #1983 pc 20300
	j	fble_else.25675 #pc 20304
	nop #pc 20308
	addi	%x6, %x0, 0  #0 pc 20312
	j	fble_cont.25676 #pc 20316
	nop #pc 20320
fble_else.25675: #pc 20324
	addi	%x6, %x0, 1  #0 pc 20324
fble_cont.25676: #pc 20328
	beq	%x6, %x0, 12  #1983 pc 20328
	j	be_else.25677 #pc 20332
	nop #pc 20336
	j	be_cont.25678 #pc 20340
	nop #pc 20344
be_else.25677: #pc 20348
	lw	%x6, 20(%x2)  #1983 pc 20348
	flw	%f3, 0(%x6)  #1983 pc 20352
	lw	%x8, 16(%x2)  #1983 pc 20356
	flw	%f4, 0(%x8)  #1983 pc 20360
	fmul	%f4, %f0, %f4  #1983 pc 20364
	fadd	%f3, %f3, %f4  #1983 pc 20368
	fsw	%f3, 0(%x6)  #1983 pc 20372
	flw	%f3, 4(%x6)  #1983 pc 20376
	flw	%f4, 4(%x8)  #1983 pc 20380
	fmul	%f4, %f0, %f4  #1983 pc 20384
	fadd	%f3, %f3, %f4  #1983 pc 20388
	fsw	%f3, 4(%x6)  #1983 pc 20392
	flw	%f3, 8(%x6)  #1983 pc 20396
	flw	%f4, 8(%x8)  #1983 pc 20400
	fmul	%f0, %f0, %f4  #1983 pc 20404
	fadd	%f0, %f3, %f0  #1983 pc 20408
	fsw	%f0, 8(%x6)  #1983 pc 20412
be_cont.25678: #pc 20416
	fmv	%f0, l.21722  #0 pc 20416
	fle	%x31, %f1, %f0  #1983 pc 20420
	blt	%x0, %x31, 12  #1983 pc 20424
	j	fble_else.25679 #pc 20428
	nop #pc 20432
	addi	%x6, %x0, 0  #0 pc 20436
	j	fble_cont.25680 #pc 20440
	nop #pc 20444
fble_else.25679: #pc 20448
	addi	%x6, %x0, 1  #0 pc 20448
fble_cont.25680: #pc 20452
	beq	%x6, %x0, 12  #1983 pc 20452
	j	be_else.25681 #pc 20456
	nop #pc 20460
	j	be_cont.25682 #pc 20464
	nop #pc 20468
be_else.25681: #pc 20472
	fmul	%f0, %f1, %f1  #1983 pc 20472
	fmul	%f0, %f0, %f0  #1983 pc 20476
	flw	%f1, 8(%x2)  #1983 pc 20480
	fmul	%f0, %f0, %f1  #1983 pc 20484
	lw	%x6, 20(%x2)  #1983 pc 20488
	flw	%f3, 0(%x6)  #1983 pc 20492
	fadd	%f3, %f3, %f0  #1983 pc 20496
	fsw	%f3, 0(%x6)  #1983 pc 20500
	flw	%f3, 4(%x6)  #1983 pc 20504
	fadd	%f3, %f3, %f0  #1983 pc 20508
	fsw	%f3, 4(%x6)  #1983 pc 20512
	flw	%f3, 8(%x6)  #1983 pc 20516
	fadd	%f0, %f3, %f0  #1983 pc 20520
	fsw	%f0, 8(%x6)  #1983 pc 20524
be_cont.25682: #pc 20528
	j	be_cont.25674 #pc 20528
	nop #pc 20532
be_else.25673: #pc 20536
be_cont.25674: #pc 20536
	j	be_cont.25672 #pc 20536
	nop #pc 20540
be_else.25671: #pc 20544
be_cont.25672: #pc 20544
be_cont.25666: #pc 20544
	lw	%x6, 4(%x2)  #1987 pc 20544
	addi	%x6, %x6, -1  #1987 pc 20548
	flw	%f0, 32(%x2)  #1987 pc 20552
	flw	%f1, 8(%x2)  #1987 pc 20556
	lw	%x7, 24(%x2)  #1987 pc 20560
	lw	%x29, 0(%x2)  #1987 pc 20564
	lw	%x30, 0(%x29)  #1987 pc 20568
	jalr	%x0, %x30, 0  #1987 pc 20572
	nop #pc 20576
bge_else.25657: #pc 20580
	ret #pc 20580
	nop #pc 20584
trace_ray.2940:  #pc 20588
	lw	%x9, 76(%x29)  #0 pc 20588
	lw	%x10, 72(%x29)  #0 pc 20592
	lw	%x11, 68(%x29)  #0 pc 20596
	lw	%x12, 64(%x29)  #0 pc 20600
	lw	%x13, 60(%x29)  #0 pc 20604
	lw	%x14, 56(%x29)  #0 pc 20608
	lw	%x15, 52(%x29)  #0 pc 20612
	lw	%x16, 48(%x29)  #0 pc 20616
	lw	%x17, 44(%x29)  #0 pc 20620
	lw	%x18, 40(%x29)  #0 pc 20624
	lw	%x19, 36(%x29)  #0 pc 20628
	lw	%x20, 32(%x29)  #0 pc 20632
	lw	%x21, 28(%x29)  #0 pc 20636
	lw	%x22, 24(%x29)  #0 pc 20640
	lw	%x23, 20(%x29)  #0 pc 20644
	lw	%x24, 16(%x29)  #0 pc 20648
	lw	%x25, 12(%x29)  #0 pc 20652
	lw	%x26, 8(%x29)  #0 pc 20656
	lw	%x27, 4(%x29)  #0 pc 20660
	addi	%x31, %x0, 4  #pc 20664
	bge	%x31, %x6, 12  #1996 pc 20668
	j	ble_else.25684 #pc 20672
	nop #pc 20676
	lw	%x28, 8(%x8)  #1997 pc 20680
	fmv	%f2, l.22439  #0 pc 20684
	fsw	%f2, 0(%x21)  #1998 pc 20688
	addi	%x30, %x0, 0  #0 pc 20692
	sw	%x29, 0(%x2)  #1998 pc 20696
	lw	%x29, 0(%x15)  #1998 pc 20700
	fsw	%f1, 8(%x2)  #1998 pc 20704
	sw	%x9, 16(%x2)  #1998 pc 20708
	sw	%x18, 20(%x2)  #1998 pc 20712
	sw	%x12, 24(%x2)  #1998 pc 20716
	sw	%x13, 28(%x2)  #1998 pc 20720
	sw	%x27, 32(%x2)  #1998 pc 20724
	sw	%x11, 36(%x2)  #1998 pc 20728
	sw	%x15, 40(%x2)  #1998 pc 20732
	sw	%x8, 44(%x2)  #1998 pc 20736
	sw	%x24, 48(%x2)  #1998 pc 20740
	sw	%x26, 52(%x2)  #1998 pc 20744
	sw	%x22, 56(%x2)  #1998 pc 20748
	sw	%x23, 60(%x2)  #1998 pc 20752
	sw	%x16, 64(%x2)  #1998 pc 20756
	sw	%x14, 68(%x2)  #1998 pc 20760
	sw	%x17, 72(%x2)  #1998 pc 20764
	sw	%x25, 76(%x2)  #1998 pc 20768
	sw	%x20, 80(%x2)  #1998 pc 20772
	fsw	%f0, 88(%x2)  #1998 pc 20776
	sw	%x19, 96(%x2)  #1998 pc 20780
	sw	%x7, 100(%x2)  #1998 pc 20784
	sw	%x28, 104(%x2)  #1998 pc 20788
	sw	%x6, 108(%x2)  #1998 pc 20792
	sw	%x21, 112(%x2)  #1998 pc 20796
	addi	%x8, %x7, 0  #0 pc 20800
	addi	%x6, %x30, 0  #0 pc 20804
	addi	%x7, %x29, 0  #0 pc 20808
	addi	%x29, %x10, 0  #0 pc 20812
	sw	%x1, 116(%x2)  #1998 pc 20816
	lw	%x30, 0(%x29)  #1998 pc 20820
	addi	%x2, %x2, 120  #1998 pc 20824
	jalr	%x1, %x30, 0  #1998 pc 20828
	addi	%x2, %x2, -120  #1998 pc 20832
	lw	%x1, 116(%x2)  #1998 pc 20836
	lw	%x6, 112(%x2)  #1998 pc 20840
	flw	%f0, 0(%x6)  #1998 pc 20844
	fmv	%f1, l.22132  #0 pc 20848
	fle	%x31, %f0, %f1  #1998 pc 20852
	blt	%x0, %x31, 12  #1998 pc 20856
	j	fble_else.25687 #pc 20860
	nop #pc 20864
	addi	%x7, %x0, 0  #0 pc 20868
	j	fble_cont.25688 #pc 20872
	nop #pc 20876
fble_else.25687: #pc 20880
	addi	%x7, %x0, 1  #0 pc 20880
fble_cont.25688: #pc 20884
	beq	%x7, %x0, 12  #1998 pc 20884
	j	be_else.25689 #pc 20888
	nop #pc 20892
	addi	%x7, %x0, 0  #0 pc 20896
	j	be_cont.25690 #pc 20900
	nop #pc 20904
be_else.25689: #pc 20908
	fmv	%f1, l.22445  #0 pc 20908
	fle	%x31, %f1, %f0  #1998 pc 20912
	blt	%x0, %x31, 12  #1998 pc 20916
	j	fble_else.25691 #pc 20920
	nop #pc 20924
	addi	%x7, %x0, 0  #0 pc 20928
	j	fble_cont.25692 #pc 20932
	nop #pc 20936
fble_else.25691: #pc 20940
	addi	%x7, %x0, 1  #0 pc 20940
fble_cont.25692: #pc 20944
be_cont.25690: #pc 20944
	beq	%x7, %x0, 12  #1998 pc 20944
	j	be_else.25693 #pc 20948
	nop #pc 20952
	addi	%x6, %x0, -1  #0 pc 20956
	lw	%x7, 108(%x2)  #2061 pc 20960
	slli	%x8, %x7, 2  #2061 pc 20964
	lw	%x9, 104(%x2)  #2061 pc 20968
	add	%x31, %x8, %x9  #2061 pc 20972
	sw	%x6, 0(%x31)  #2061 pc 20976
	beq	%x7, %x0, 12  #2063 pc 20980
	j	be_else.25694 #pc 20984
	nop #pc 20988
	ret #pc 20992
	nop #pc 20996
be_else.25694: #pc 21000
	lw	%x6, 100(%x2)  #2064 pc 21000
	flw	%f0, 0(%x6)  #2064 pc 21004
	lw	%x7, 96(%x2)  #2064 pc 21008
	flw	%f1, 0(%x7)  #2064 pc 21012
	fmul	%f0, %f0, %f1  #2064 pc 21016
	flw	%f1, 4(%x6)  #2064 pc 21020
	flw	%f2, 4(%x7)  #2064 pc 21024
	fmul	%f1, %f1, %f2  #2064 pc 21028
	fadd	%f0, %f0, %f1  #2064 pc 21032
	flw	%f1, 8(%x6)  #2064 pc 21036
	flw	%f2, 8(%x7)  #2064 pc 21040
	fmul	%f1, %f1, %f2  #2064 pc 21044
	fadd	%f0, %f0, %f1  #2064 pc 21048
	fsub	%f0, %f30, %f0  #2064 pc 21052
	fmv	%f1, l.21722  #0 pc 21056
	fle	%x31, %f0, %f1  #2066 pc 21060
	blt	%x0, %x31, 12  #2066 pc 21064
	j	fble_else.25696 #pc 21068
	nop #pc 21072
	addi	%x6, %x0, 0  #0 pc 21076
	j	fble_cont.25697 #pc 21080
	nop #pc 21084
fble_else.25696: #pc 21088
	addi	%x6, %x0, 1  #0 pc 21088
fble_cont.25697: #pc 21092
	beq	%x6, %x0, 12  #2066 pc 21092
	j	be_else.25698 #pc 21096
	nop #pc 21100
	ret #pc 21104
	nop #pc 21108
be_else.25698: #pc 21112
	fmul	%f1, %f0, %f0  #2069 pc 21112
	fmul	%f0, %f1, %f0  #2069 pc 21116
	flw	%f1, 88(%x2)  #2069 pc 21120
	fmul	%f0, %f0, %f1  #2069 pc 21124
	lw	%x6, 80(%x2)  #2069 pc 21128
	flw	%f1, 0(%x6)  #2069 pc 21132
	fmul	%f0, %f0, %f1  #2069 pc 21136
	lw	%x6, 76(%x2)  #2070 pc 21140
	flw	%f1, 0(%x6)  #2070 pc 21144
	fadd	%f1, %f1, %f0  #2070 pc 21148
	fsw	%f1, 0(%x6)  #2070 pc 21152
	flw	%f1, 4(%x6)  #2071 pc 21156
	fadd	%f1, %f1, %f0  #2071 pc 21160
	fsw	%f1, 4(%x6)  #2071 pc 21164
	flw	%f1, 8(%x6)  #2072 pc 21168
	fadd	%f0, %f1, %f0  #2072 pc 21172
	fsw	%f0, 8(%x6)  #2072 pc 21176
	ret #pc 21180
	nop #pc 21184
be_else.25693: #pc 21188
	lw	%x7, 72(%x2)  #2000 pc 21188
	lw	%x7, 0(%x7)  #2000 pc 21192
	slli	%x8, %x7, 2  #2001 pc 21196
	lw	%x9, 68(%x2)  #2001 pc 21200
	add	%x31, %x8, %x9  #2001 pc 21204
	lw	%x8, 0(%x31)  #2001 pc 21208
	lw	%x9, 8(%x8)  #2002 pc 21212
	lw	%x10, 28(%x8)  #2003 pc 21216
	flw	%f0, 0(%x10)  #2003 pc 21220
	flw	%f1, 88(%x2)  #2003 pc 21224
	fmul	%f0, %f0, %f1  #2003 pc 21228
	lw	%x10, 4(%x8)  #2005 pc 21232
	addi	%x31, %x0, 1  #pc 21236
	beq	%x10, %x31, 12  #2005 pc 21240
	j	be_else.25701 #pc 21244
	nop #pc 21248
	lw	%x10, 64(%x2)  #2005 pc 21252
	lw	%x11, 0(%x10)  #2005 pc 21256
	fmv	%f2, l.21722  #0 pc 21260
	lw	%x12, 60(%x2)  #2005 pc 21264
	fsw	%f2, 0(%x12)  #2005 pc 21268
	fsw	%f2, 4(%x12)  #2005 pc 21272
	fsw	%f2, 8(%x12)  #2005 pc 21276
	addi	%x13, %x11, -1  #2005 pc 21280
	addi	%x11, %x11, -1  #2005 pc 21284
	slli	%x11, %x11, 2  #2005 pc 21288
	lw	%x14, 100(%x2)  #2005 pc 21292
	add	%x31, %x11, %x14  #2005 pc 21296
	flw	%f2, 0(%x31)  #2005 pc 21300
	fmv	%f3, l.21722  #0 pc 21304
	feq	%x31, %f2, %f3  #2005 pc 21308
	blt	%x0, %x31, 12  #2005 pc 21312
	j	fbe_else.25703 #pc 21316
	nop #pc 21320
	addi	%x11, %x0, 1  #0 pc 21324
	j	fbe_cont.25704 #pc 21328
	nop #pc 21332
fbe_else.25703: #pc 21336
	addi	%x11, %x0, 0  #0 pc 21336
fbe_cont.25704: #pc 21340
	beq	%x11, %x0, 12  #2005 pc 21340
	j	be_else.25705 #pc 21344
	nop #pc 21348
	fmv	%f3, l.21722  #0 pc 21352
	fle	%x31, %f2, %f3  #2005 pc 21356
	blt	%x0, %x31, 12  #2005 pc 21360
	j	fble_else.25707 #pc 21364
	nop #pc 21368
	addi	%x11, %x0, 0  #0 pc 21372
	j	fble_cont.25708 #pc 21376
	nop #pc 21380
fble_else.25707: #pc 21384
	addi	%x11, %x0, 1  #0 pc 21384
fble_cont.25708: #pc 21388
	beq	%x11, %x0, 12  #2005 pc 21388
	j	be_else.25709 #pc 21392
	nop #pc 21396
	fmv	%f2, l.21791  #0 pc 21400
	j	be_cont.25710 #pc 21404
	nop #pc 21408
be_else.25709: #pc 21412
	fmv	%f2, l.21731  #0 pc 21412
be_cont.25710: #pc 21416
	j	be_cont.25706 #pc 21416
	nop #pc 21420
be_else.25705: #pc 21424
	fmv	%f2, l.21722  #0 pc 21424
be_cont.25706: #pc 21428
	fsub	%f2, %f30, %f2  #2005 pc 21428
	slli	%x11, %x13, 2  #2005 pc 21432
	add	%x31, %x11, %x12  #2005 pc 21436
	fsw	%f2, 0(%x31) #2005 pc 21440
	j	be_cont.25702 #pc 21444
	nop #pc 21448
be_else.25701: #pc 21452
	addi	%x31, %x0, 2  #pc 21452
	beq	%x10, %x31, 12  #2005 pc 21456
	j	be_else.25711 #pc 21460
	nop #pc 21464
	lw	%x10, 16(%x8)  #2005 pc 21468
	flw	%f2, 0(%x10)  #2005 pc 21472
	fsub	%f2, %f30, %f2  #2005 pc 21476
	lw	%x10, 60(%x2)  #2005 pc 21480
	fsw	%f2, 0(%x10)  #2005 pc 21484
	lw	%x11, 16(%x8)  #2005 pc 21488
	flw	%f2, 4(%x11)  #2005 pc 21492
	fsub	%f2, %f30, %f2  #2005 pc 21496
	fsw	%f2, 4(%x10)  #2005 pc 21500
	lw	%x11, 16(%x8)  #2005 pc 21504
	flw	%f2, 8(%x11)  #2005 pc 21508
	fsub	%f2, %f30, %f2  #2005 pc 21512
	fsw	%f2, 8(%x10)  #2005 pc 21516
	j	be_cont.25712 #pc 21520
	nop #pc 21524
be_else.25711: #pc 21528
	lw	%x10, 56(%x2)  #2005 pc 21528
	flw	%f2, 0(%x10)  #2005 pc 21532
	lw	%x11, 20(%x8)  #2005 pc 21536
	flw	%f3, 0(%x11)  #2005 pc 21540
	fsub	%f2, %f2, %f3  #2005 pc 21544
	flw	%f3, 4(%x10)  #2005 pc 21548
	lw	%x11, 20(%x8)  #2005 pc 21552
	flw	%f4, 4(%x11)  #2005 pc 21556
	fsub	%f3, %f3, %f4  #2005 pc 21560
	flw	%f4, 8(%x10)  #2005 pc 21564
	lw	%x11, 20(%x8)  #2005 pc 21568
	flw	%f5, 8(%x11)  #2005 pc 21572
	fsub	%f4, %f4, %f5  #2005 pc 21576
	lw	%x11, 16(%x8)  #2005 pc 21580
	flw	%f5, 0(%x11)  #2005 pc 21584
	fmul	%f5, %f2, %f5  #2005 pc 21588
	lw	%x11, 16(%x8)  #2005 pc 21592
	flw	%f6, 4(%x11)  #2005 pc 21596
	fmul	%f6, %f3, %f6  #2005 pc 21600
	lw	%x11, 16(%x8)  #2005 pc 21604
	flw	%f7, 8(%x11)  #2005 pc 21608
	fmul	%f7, %f4, %f7  #2005 pc 21612
	lw	%x11, 12(%x8)  #2005 pc 21616
	beq	%x11, %x0, 12  #2005 pc 21620
	j	be_else.25713 #pc 21624
	nop #pc 21628
	lw	%x11, 60(%x2)  #2005 pc 21632
	fsw	%f5, 0(%x11)  #2005 pc 21636
	fsw	%f6, 4(%x11)  #2005 pc 21640
	fsw	%f7, 8(%x11)  #2005 pc 21644
	j	be_cont.25714 #pc 21648
	nop #pc 21652
be_else.25713: #pc 21656
	lw	%x11, 36(%x8)  #2005 pc 21656
	flw	%f8, 8(%x11)  #2005 pc 21660
	fmul	%f8, %f3, %f8  #2005 pc 21664
	lw	%x11, 36(%x8)  #2005 pc 21668
	flw	%f9, 4(%x11)  #2005 pc 21672
	fmul	%f9, %f4, %f9  #2005 pc 21676
	fadd	%f8, %f8, %f9  #2005 pc 21680
	fmv	%f9, l.21733  #0 pc 21684
	fmul	%f8, %f9, %f8  #2005 pc 21688
	fadd	%f5, %f5, %f8  #2005 pc 21692
	lw	%x11, 60(%x2)  #2005 pc 21696
	fsw	%f5, 0(%x11)  #2005 pc 21700
	lw	%x12, 36(%x8)  #2005 pc 21704
	flw	%f5, 8(%x12)  #2005 pc 21708
	fmul	%f5, %f2, %f5  #2005 pc 21712
	lw	%x12, 36(%x8)  #2005 pc 21716
	flw	%f8, 0(%x12)  #2005 pc 21720
	fmul	%f4, %f4, %f8  #2005 pc 21724
	fadd	%f4, %f5, %f4  #2005 pc 21728
	fmv	%f5, l.21733  #0 pc 21732
	fmul	%f4, %f5, %f4  #2005 pc 21736
	fadd	%f4, %f6, %f4  #2005 pc 21740
	fsw	%f4, 4(%x11)  #2005 pc 21744
	lw	%x12, 36(%x8)  #2005 pc 21748
	flw	%f4, 4(%x12)  #2005 pc 21752
	fmul	%f2, %f2, %f4  #2005 pc 21756
	lw	%x12, 36(%x8)  #2005 pc 21760
	flw	%f4, 0(%x12)  #2005 pc 21764
	fmul	%f3, %f3, %f4  #2005 pc 21768
	fadd	%f2, %f2, %f3  #2005 pc 21772
	fmv	%f3, l.21733  #0 pc 21776
	fmul	%f2, %f3, %f2  #2005 pc 21780
	fadd	%f2, %f7, %f2  #2005 pc 21784
	fsw	%f2, 8(%x11)  #2005 pc 21788
be_cont.25714: #pc 21792
	lw	%x12, 24(%x8)  #2005 pc 21792
	flw	%f2, 0(%x11)  #2005 pc 21796
	fmul	%f2, %f2, %f2  #2005 pc 21800
	flw	%f3, 4(%x11)  #2005 pc 21804
	fmul	%f3, %f3, %f3  #2005 pc 21808
	fadd	%f2, %f2, %f3  #2005 pc 21812
	flw	%f3, 8(%x11)  #2005 pc 21816
	fmul	%f3, %f3, %f3  #2005 pc 21820
	fadd	%f2, %f2, %f3  #2005 pc 21824
	fsqrt	%f2, %f2  #2005 pc 21828
	fmv	%f3, l.21722  #0 pc 21832
	feq	%x31, %f2, %f3  #2005 pc 21836
	blt	%x0, %x31, 12  #2005 pc 21840
	j	fbe_else.25715 #pc 21844
	nop #pc 21848
	addi	%x13, %x0, 1  #0 pc 21852
	j	fbe_cont.25716 #pc 21856
	nop #pc 21860
fbe_else.25715: #pc 21864
	addi	%x13, %x0, 0  #0 pc 21864
fbe_cont.25716: #pc 21868
	beq	%x13, %x0, 12  #2005 pc 21868
	j	be_else.25717 #pc 21872
	nop #pc 21876
	beq	%x12, %x0, 12  #2005 pc 21880
	j	be_else.25719 #pc 21884
	nop #pc 21888
	fmv	%f3, l.21731  #0 pc 21892
	fdiv	%f2, %f3, %f2  #2005 pc 21896
	j	be_cont.25720 #pc 21900
	nop #pc 21904
be_else.25719: #pc 21908
	fmv	%f3, l.21791  #0 pc 21908
	fdiv	%f2, %f3, %f2  #2005 pc 21912
be_cont.25720: #pc 21916
	j	be_cont.25718 #pc 21916
	nop #pc 21920
be_else.25717: #pc 21924
	fmv	%f2, l.21731  #0 pc 21924
be_cont.25718: #pc 21928
	flw	%f3, 0(%x11)  #2005 pc 21928
	fmul	%f3, %f3, %f2  #2005 pc 21932
	fsw	%f3, 0(%x11)  #2005 pc 21936
	flw	%f3, 4(%x11)  #2005 pc 21940
	fmul	%f3, %f3, %f2  #2005 pc 21944
	fsw	%f3, 4(%x11)  #2005 pc 21948
	flw	%f3, 8(%x11)  #2005 pc 21952
	fmul	%f2, %f3, %f2  #2005 pc 21956
	fsw	%f2, 8(%x11)  #2005 pc 21960
be_cont.25712: #pc 21964
be_cont.25702: #pc 21964
	lw	%x10, 56(%x2)  #2006 pc 21964
	flw	%f2, 0(%x10)  #2006 pc 21968
	lw	%x11, 52(%x2)  #2006 pc 21972
	fsw	%f2, 0(%x11)  #2006 pc 21976
	flw	%f2, 4(%x10)  #2006 pc 21980
	fsw	%f2, 4(%x11)  #2006 pc 21984
	flw	%f2, 8(%x10)  #2006 pc 21988
	fsw	%f2, 8(%x11)  #2006 pc 21992
	lw	%x11, 0(%x8)  #2007 pc 21996
	lw	%x12, 32(%x8)  #2007 pc 22000
	flw	%f2, 0(%x12)  #2007 pc 22004
	lw	%x12, 48(%x2)  #2007 pc 22008
	fsw	%f2, 0(%x12)  #2007 pc 22012
	lw	%x13, 32(%x8)  #2007 pc 22016
	flw	%f2, 4(%x13)  #2007 pc 22020
	fsw	%f2, 4(%x12)  #2007 pc 22024
	lw	%x13, 32(%x8)  #2007 pc 22028
	flw	%f2, 8(%x13)  #2007 pc 22032
	fsw	%f2, 8(%x12)  #2007 pc 22036
	sw	%x9, 116(%x2)  #2007 pc 22040
	fsw	%f0, 120(%x2)  #2007 pc 22044
	sw	%x8, 128(%x2)  #2007 pc 22048
	sw	%x7, 132(%x2)  #2007 pc 22052
	addi	%x31, %x0, 1  #pc 22056
	beq	%x11, %x31, 12  #2007 pc 22060
	j	be_else.25721 #pc 22064
	nop #pc 22068
	flw	%f2, 0(%x10)  #2007 pc 22072
	lw	%x11, 20(%x8)  #2007 pc 22076
	flw	%f3, 0(%x11)  #2007 pc 22080
	fsub	%f2, %f2, %f3  #2007 pc 22084
	fmv	%f3, l.22627  #0 pc 22088
	fmul	%f3, %f2, %f3  #2007 pc 22092
	ftoi	%x11, %f3  #2007 pc 22096
	itof	%f4, %x11  #2007 pc 22100
	fle	%x31, %f4, %f3  #2007 pc 22104
	blt	%x0, %x31, 12  #2007 pc 22108
	j	fble_else.25723 #pc 22112
	nop #pc 22116
	fadd	%f3, %f4, %f30  #2007 pc 22120
	j	fble_cont.25724 #pc 22124
	nop #pc 22128
fble_else.25723: #pc 22132
	fmv	%f3, l.21731  #0 pc 22132
	fsub	%f3, %f4, %f3  #2007 pc 22136
fble_cont.25724: #pc 22140
	fmv	%f4, l.22630  #0 pc 22140
	fmul	%f3, %f3, %f4  #2007 pc 22144
	fsub	%f2, %f2, %f3  #2007 pc 22148
	fmv	%f3, l.22608  #0 pc 22152
	fle	%x31, %f3, %f2  #2007 pc 22156
	blt	%x0, %x31, 12  #2007 pc 22160
	j	fble_else.25725 #pc 22164
	nop #pc 22168
	addi	%x11, %x0, 0  #0 pc 22172
	j	fble_cont.25726 #pc 22176
	nop #pc 22180
fble_else.25725: #pc 22184
	addi	%x11, %x0, 1  #0 pc 22184
fble_cont.25726: #pc 22188
	flw	%f2, 8(%x10)  #2007 pc 22188
	lw	%x13, 20(%x8)  #2007 pc 22192
	flw	%f3, 8(%x13)  #2007 pc 22196
	fsub	%f2, %f2, %f3  #2007 pc 22200
	fmv	%f3, l.22627  #0 pc 22204
	fmul	%f3, %f2, %f3  #2007 pc 22208
	ftoi	%x13, %f3  #2007 pc 22212
	itof	%f4, %x13  #2007 pc 22216
	fle	%x31, %f4, %f3  #2007 pc 22220
	blt	%x0, %x31, 12  #2007 pc 22224
	j	fble_else.25727 #pc 22228
	nop #pc 22232
	fadd	%f3, %f4, %f30  #2007 pc 22236
	j	fble_cont.25728 #pc 22240
	nop #pc 22244
fble_else.25727: #pc 22248
	fmv	%f3, l.21731  #0 pc 22248
	fsub	%f3, %f4, %f3  #2007 pc 22252
fble_cont.25728: #pc 22256
	fmv	%f4, l.22630  #0 pc 22256
	fmul	%f3, %f3, %f4  #2007 pc 22260
	fsub	%f2, %f2, %f3  #2007 pc 22264
	fmv	%f3, l.22608  #0 pc 22268
	fle	%x31, %f3, %f2  #2007 pc 22272
	blt	%x0, %x31, 12  #2007 pc 22276
	j	fble_else.25729 #pc 22280
	nop #pc 22284
	addi	%x13, %x0, 0  #0 pc 22288
	j	fble_cont.25730 #pc 22292
	nop #pc 22296
fble_else.25729: #pc 22300
	addi	%x13, %x0, 1  #0 pc 22300
fble_cont.25730: #pc 22304
	beq	%x11, %x0, 12  #2007 pc 22304
	j	be_else.25731 #pc 22308
	nop #pc 22312
	beq	%x13, %x0, 12  #2007 pc 22316
	j	be_else.25733 #pc 22320
	nop #pc 22324
	fmv	%f2, l.22599  #0 pc 22328
	j	be_cont.25734 #pc 22332
	nop #pc 22336
be_else.25733: #pc 22340
	fmv	%f2, l.21722  #0 pc 22340
be_cont.25734: #pc 22344
	j	be_cont.25732 #pc 22344
	nop #pc 22348
be_else.25731: #pc 22352
	beq	%x13, %x0, 12  #2007 pc 22352
	j	be_else.25735 #pc 22356
	nop #pc 22360
	fmv	%f2, l.21722  #0 pc 22364
	j	be_cont.25736 #pc 22368
	nop #pc 22372
be_else.25735: #pc 22376
	fmv	%f2, l.22599  #0 pc 22376
be_cont.25736: #pc 22380
be_cont.25732: #pc 22380
	fsw	%f2, 4(%x12)  #2007 pc 22380
	j	be_cont.25722 #pc 22384
	nop #pc 22388
be_else.25721: #pc 22392
	addi	%x31, %x0, 2  #pc 22392
	beq	%x11, %x31, 12  #2007 pc 22396
	j	be_else.25737 #pc 22400
	nop #pc 22404
	flw	%f2, 4(%x10)  #2007 pc 22408
	fmv	%f3, l.22618  #0 pc 22412
	fmul	%f2, %f2, %f3  #2007 pc 22416
	fadd	%f0, %f2, %f30  #0 pc 22420
	sw	%x1, 136(%x2)  #2007 pc 22424
	addi	%x2, %x2, 140  #2007 pc 22428
	jal	%x1, sin.2526  #2007 pc 22432
	addi	%x2, %x2, -140  #2007 pc 22436
	lw	%x1, 136(%x2) #2007 pc 22440
	fmul	%f0, %f0, %f0  #2007 pc 22444
	fmv	%f1, l.22599  #0 pc 22448
	fmul	%f1, %f1, %f0  #2007 pc 22452
	lw	%x6, 48(%x2)  #2007 pc 22456
	fsw	%f1, 0(%x6)  #2007 pc 22460
	fmv	%f1, l.22599  #0 pc 22464
	fmv	%f2, l.21731  #0 pc 22468
	fsub	%f0, %f2, %f0  #2007 pc 22472
	fmul	%f0, %f1, %f0  #2007 pc 22476
	fsw	%f0, 4(%x6)  #2007 pc 22480
	j	be_cont.25738 #pc 22484
	nop #pc 22488
be_else.25737: #pc 22492
	addi	%x31, %x0, 3  #pc 22492
	beq	%x11, %x31, 12  #2007 pc 22496
	j	be_else.25739 #pc 22500
	nop #pc 22504
	flw	%f2, 0(%x10)  #2007 pc 22508
	lw	%x11, 20(%x8)  #2007 pc 22512
	flw	%f3, 0(%x11)  #2007 pc 22516
	fsub	%f2, %f2, %f3  #2007 pc 22520
	flw	%f3, 8(%x10)  #2007 pc 22524
	lw	%x11, 20(%x8)  #2007 pc 22528
	flw	%f4, 8(%x11)  #2007 pc 22532
	fsub	%f3, %f3, %f4  #2007 pc 22536
	fmul	%f2, %f2, %f2  #2007 pc 22540
	fmul	%f3, %f3, %f3  #2007 pc 22544
	fadd	%f2, %f2, %f3  #2007 pc 22548
	fmv	%f3, l.22608  #0 pc 22552
	fdiv	%f2, %f2, %f3  #2007 pc 22556
	fsqrt	%f2, %f2  #2007 pc 22560
	ftoi	%x11, %f2  #2007 pc 22564
	itof	%f3, %x11  #2007 pc 22568
	fle	%x31, %f3, %f2  #2007 pc 22572
	blt	%x0, %x31, 12  #2007 pc 22576
	j	fble_else.25741 #pc 22580
	nop #pc 22584
	j	fble_cont.25742 #pc 22588
	nop #pc 22592
fble_else.25741: #pc 22596
	fmv	%f4, l.21731  #0 pc 22596
	fsub	%f3, %f3, %f4  #2007 pc 22600
fble_cont.25742: #pc 22604
	fsub	%f2, %f2, %f3  #2007 pc 22604
	fmv	%f3, l.22577  #0 pc 22608
	fmul	%f2, %f2, %f3  #2007 pc 22612
	fadd	%f0, %f2, %f30  #0 pc 22616
	sw	%x1, 136(%x2)  #2007 pc 22620
	addi	%x2, %x2, 140  #2007 pc 22624
	jal	%x1, cos.2530  #2007 pc 22628
	addi	%x2, %x2, -140  #2007 pc 22632
	lw	%x1, 136(%x2) #2007 pc 22636
	fmul	%f0, %f0, %f0  #2007 pc 22640
	fmv	%f1, l.22599  #0 pc 22644
	fmul	%f1, %f0, %f1  #2007 pc 22648
	lw	%x6, 48(%x2)  #2007 pc 22652
	fsw	%f1, 4(%x6)  #2007 pc 22656
	fmv	%f1, l.21731  #0 pc 22660
	fsub	%f0, %f1, %f0  #2007 pc 22664
	fmv	%f1, l.22599  #0 pc 22668
	fmul	%f0, %f0, %f1  #2007 pc 22672
	fsw	%f0, 8(%x6)  #2007 pc 22676
	j	be_cont.25740 #pc 22680
	nop #pc 22684
be_else.25739: #pc 22688
	addi	%x31, %x0, 4  #pc 22688
	beq	%x11, %x31, 12  #2007 pc 22692
	j	be_else.25743 #pc 22696
	nop #pc 22700
	flw	%f2, 0(%x10)  #2007 pc 22704
	lw	%x11, 20(%x8)  #2007 pc 22708
	flw	%f3, 0(%x11)  #2007 pc 22712
	fsub	%f2, %f2, %f3  #2007 pc 22716
	lw	%x11, 16(%x8)  #2007 pc 22720
	flw	%f3, 0(%x11)  #2007 pc 22724
	fsqrt	%f3, %f3  #2007 pc 22728
	fmul	%f2, %f2, %f3  #2007 pc 22732
	flw	%f3, 8(%x10)  #2007 pc 22736
	lw	%x11, 20(%x8)  #2007 pc 22740
	flw	%f4, 8(%x11)  #2007 pc 22744
	fsub	%f3, %f3, %f4  #2007 pc 22748
	lw	%x11, 16(%x8)  #2007 pc 22752
	flw	%f4, 8(%x11)  #2007 pc 22756
	fsqrt	%f4, %f4  #2007 pc 22760
	fmul	%f3, %f3, %f4  #2007 pc 22764
	fmul	%f4, %f2, %f2  #2007 pc 22768
	fmul	%f5, %f3, %f3  #2007 pc 22772
	fadd	%f4, %f4, %f5  #2007 pc 22776
	fabs	%f5, %f2  #2007 pc 22780
	fmv	%f6, l.22561  #0 pc 22784
	fle	%x31, %f6, %f5  #2007 pc 22788
	blt	%x0, %x31, 12  #2007 pc 22792
	j	fble_else.25745 #pc 22796
	nop #pc 22800
	addi	%x11, %x0, 0  #0 pc 22804
	j	fble_cont.25746 #pc 22808
	nop #pc 22812
fble_else.25745: #pc 22816
	addi	%x11, %x0, 1  #0 pc 22816
fble_cont.25746: #pc 22820
	beq	%x11, %x0, 12  #2007 pc 22820
	j	be_else.25747 #pc 22824
	nop #pc 22828
	fdiv	%f2, %f3, %f2  #2007 pc 22832
	fabs	%f2, %f2  #2007 pc 22836
	fmul	%f3, %f2, %f2  #2007 pc 22840
	fmul	%f5, %f2, %f3  #2007 pc 22844
	fmul	%f6, %f5, %f3  #2007 pc 22848
	fmul	%f7, %f6, %f3  #2007 pc 22852
	fmul	%f8, %f7, %f3  #2007 pc 22856
	fmul	%f3, %f8, %f3  #2007 pc 22860
	fmv	%f9, l.22565  #0 pc 22864
	fmul	%f5, %f9, %f5  #2007 pc 22868
	fsub	%f2, %f2, %f5  #2007 pc 22872
	fmv	%f5, l.22567  #0 pc 22876
	fmul	%f5, %f5, %f6  #2007 pc 22880
	fadd	%f2, %f2, %f5  #2007 pc 22884
	fmv	%f5, l.22569  #0 pc 22888
	fmul	%f5, %f5, %f7  #2007 pc 22892
	fsub	%f2, %f2, %f5  #2007 pc 22896
	fmv	%f5, l.22571  #0 pc 22900
	fmul	%f5, %f5, %f8  #2007 pc 22904
	fadd	%f2, %f2, %f5  #2007 pc 22908
	fmv	%f5, l.22573  #0 pc 22912
	fmul	%f3, %f5, %f3  #2007 pc 22916
	fsub	%f2, %f2, %f3  #2007 pc 22920
	fmv	%f3, l.22575  #0 pc 22924
	fmul	%f2, %f2, %f3  #2007 pc 22928
	fmv	%f3, l.22577  #0 pc 22932
	fdiv	%f2, %f2, %f3  #2007 pc 22936
	j	be_cont.25748 #pc 22940
	nop #pc 22944
be_else.25747: #pc 22948
	fmv	%f2, l.22563  #0 pc 22948
be_cont.25748: #pc 22952
	ftoi	%x11, %f2  #2007 pc 22952
	itof	%f3, %x11  #2007 pc 22956
	fle	%x31, %f3, %f2  #2007 pc 22960
	blt	%x0, %x31, 12  #2007 pc 22964
	j	fble_else.25749 #pc 22968
	nop #pc 22972
	j	fble_cont.25750 #pc 22976
	nop #pc 22980
fble_else.25749: #pc 22984
	fmv	%f5, l.21731  #0 pc 22984
	fsub	%f3, %f3, %f5  #2007 pc 22988
fble_cont.25750: #pc 22992
	fsub	%f2, %f2, %f3  #2007 pc 22992
	flw	%f3, 4(%x10)  #2007 pc 22996
	lw	%x11, 20(%x8)  #2007 pc 23000
	flw	%f5, 4(%x11)  #2007 pc 23004
	fsub	%f3, %f3, %f5  #2007 pc 23008
	lw	%x11, 16(%x8)  #2007 pc 23012
	flw	%f5, 4(%x11)  #2007 pc 23016
	fsqrt	%f5, %f5  #2007 pc 23020
	fmul	%f3, %f3, %f5  #2007 pc 23024
	fabs	%f5, %f4  #2007 pc 23028
	fmv	%f6, l.22561  #0 pc 23032
	fle	%x31, %f6, %f5  #2007 pc 23036
	blt	%x0, %x31, 12  #2007 pc 23040
	j	fble_else.25751 #pc 23044
	nop #pc 23048
	addi	%x11, %x0, 0  #0 pc 23052
	j	fble_cont.25752 #pc 23056
	nop #pc 23060
fble_else.25751: #pc 23064
	addi	%x11, %x0, 1  #0 pc 23064
fble_cont.25752: #pc 23068
	beq	%x11, %x0, 12  #2007 pc 23068
	j	be_else.25753 #pc 23072
	nop #pc 23076
	fdiv	%f3, %f3, %f4  #2007 pc 23080
	fabs	%f3, %f3  #2007 pc 23084
	fmul	%f4, %f3, %f3  #2007 pc 23088
	fmul	%f5, %f3, %f4  #2007 pc 23092
	fmul	%f6, %f5, %f4  #2007 pc 23096
	fmul	%f7, %f6, %f4  #2007 pc 23100
	fmul	%f8, %f7, %f4  #2007 pc 23104
	fmul	%f4, %f8, %f4  #2007 pc 23108
	fmv	%f9, l.22565  #0 pc 23112
	fmul	%f5, %f9, %f5  #2007 pc 23116
	fsub	%f3, %f3, %f5  #2007 pc 23120
	fmv	%f5, l.22567  #0 pc 23124
	fmul	%f5, %f5, %f6  #2007 pc 23128
	fadd	%f3, %f3, %f5  #2007 pc 23132
	fmv	%f5, l.22569  #0 pc 23136
	fmul	%f5, %f5, %f7  #2007 pc 23140
	fsub	%f3, %f3, %f5  #2007 pc 23144
	fmv	%f5, l.22571  #0 pc 23148
	fmul	%f5, %f5, %f8  #2007 pc 23152
	fadd	%f3, %f3, %f5  #2007 pc 23156
	fmv	%f5, l.22573  #0 pc 23160
	fmul	%f4, %f5, %f4  #2007 pc 23164
	fsub	%f3, %f3, %f4  #2007 pc 23168
	fmv	%f4, l.22575  #0 pc 23172
	fmul	%f3, %f3, %f4  #2007 pc 23176
	fmv	%f4, l.22577  #0 pc 23180
	fdiv	%f3, %f3, %f4  #2007 pc 23184
	j	be_cont.25754 #pc 23188
	nop #pc 23192
be_else.25753: #pc 23196
	fmv	%f3, l.22563  #0 pc 23196
be_cont.25754: #pc 23200
	ftoi	%x11, %f3  #2007 pc 23200
	itof	%f4, %x11  #2007 pc 23204
	fle	%x31, %f4, %f3  #2007 pc 23208
	blt	%x0, %x31, 12  #2007 pc 23212
	j	fble_else.25755 #pc 23216
	nop #pc 23220
	j	fble_cont.25756 #pc 23224
	nop #pc 23228
fble_else.25755: #pc 23232
	fmv	%f5, l.21731  #0 pc 23232
	fsub	%f4, %f4, %f5  #2007 pc 23236
fble_cont.25756: #pc 23240
	fsub	%f3, %f3, %f4  #2007 pc 23240
	fmv	%f4, l.22593  #0 pc 23244
	fmv	%f5, l.21733  #0 pc 23248
	fsub	%f2, %f5, %f2  #2007 pc 23252
	fmul	%f2, %f2, %f2  #2007 pc 23256
	fsub	%f2, %f4, %f2  #2007 pc 23260
	fmv	%f4, l.21733  #0 pc 23264
	fsub	%f3, %f4, %f3  #2007 pc 23268
	fmul	%f3, %f3, %f3  #2007 pc 23272
	fsub	%f2, %f2, %f3  #2007 pc 23276
	fmv	%f3, l.21722  #0 pc 23280
	fle	%x31, %f3, %f2  #2007 pc 23284
	blt	%x0, %x31, 12  #2007 pc 23288
	j	fble_else.25757 #pc 23292
	nop #pc 23296
	addi	%x11, %x0, 0  #0 pc 23300
	j	fble_cont.25758 #pc 23304
	nop #pc 23308
fble_else.25757: #pc 23312
	addi	%x11, %x0, 1  #0 pc 23312
fble_cont.25758: #pc 23316
	beq	%x11, %x0, 12  #2007 pc 23316
	j	be_else.25759 #pc 23320
	nop #pc 23324
	j	be_cont.25760 #pc 23328
	nop #pc 23332
be_else.25759: #pc 23336
	fmv	%f2, l.21722  #0 pc 23336
be_cont.25760: #pc 23340
	fmv	%f3, l.22599  #0 pc 23340
	fmul	%f2, %f3, %f2  #2007 pc 23344
	fmv	%f3, l.22601  #0 pc 23348
	fdiv	%f2, %f2, %f3  #2007 pc 23352
	fsw	%f2, 8(%x12)  #2007 pc 23356
	j	be_cont.25744 #pc 23360
	nop #pc 23364
be_else.25743: #pc 23368
be_cont.25744: #pc 23368
be_cont.25740: #pc 23368
be_cont.25738: #pc 23368
be_cont.25722: #pc 23368
	lw	%x6, 132(%x2)  #2010 pc 23368
	bge	%x6, %x0, 12  #2010 pc 23372
	j	bge_else.25761 #pc 23376
	nop #pc 23380
	addi	%x7, %x6, 0  #2010 pc 23384
	j	bge_cont.25762 #pc 23388
	nop #pc 23392
bge_else.25761: #pc 23396
	sub	%x7, %x0, %x6  #2010 pc 23396
bge_cont.25762: #pc 23400
	addi	%x8, %x0, 4  #0 pc 23400
	addi	%x9, %x0, 30  #0 pc 23404
	addi	%x10, %x0, 0  #0 pc 23408
	addi	%x6, %x7, 0  #0 pc 23412
	addi	%x7, %x8, 0  #0 pc 23416
	addi	%x8, %x9, 0  #0 pc 23420
	addi	%x9, %x10, 0  #0 pc 23424
	sw	%x1, 136(%x2)  #2010 pc 23428
	addi	%x2, %x2, 140  #2010 pc 23432
	jal	%x1, mul_abs.2542  #2010 pc 23436
	addi	%x2, %x2, -140  #2010 pc 23440
	lw	%x1, 136(%x2) #2010 pc 23444
	lw	%x7, 132(%x2)  #2010 pc 23448
	srli	%x7, %x7, 31  #2010 pc 23452
	beq	%x7, %x0, 12  #2010 pc 23456
	j	be_else.25763 #pc 23460
	nop #pc 23464
	j	be_cont.25764 #pc 23468
	nop #pc 23472
be_else.25763: #pc 23476
	sub	%x6, %x0, %x6  #2010 pc 23476
be_cont.25764: #pc 23480
	lw	%x7, 64(%x2)  #2010 pc 23480
	lw	%x7, 0(%x7)  #2010 pc 23484
	add	%x6, %x6, %x7  #2010 pc 23488
	lw	%x7, 108(%x2)  #2010 pc 23492
	slli	%x8, %x7, 2  #2010 pc 23496
	lw	%x9, 104(%x2)  #2010 pc 23500
	add	%x31, %x8, %x9  #2010 pc 23504
	sw	%x6, 0(%x31)  #2010 pc 23508
	lw	%x6, 44(%x2)  #2011 pc 23512
	lw	%x8, 4(%x6)  #2011 pc 23516
	slli	%x10, %x7, 2  #2012 pc 23520
	add	%x31, %x10, %x8  #2012 pc 23524
	lw	%x8, 0(%x31)  #2012 pc 23528
	lw	%x10, 56(%x2)  #2012 pc 23532
	flw	%f0, 0(%x10)  #2012 pc 23536
	fsw	%f0, 0(%x8)  #2012 pc 23540
	flw	%f0, 4(%x10)  #2012 pc 23544
	fsw	%f0, 4(%x8)  #2012 pc 23548
	flw	%f0, 8(%x10)  #2012 pc 23552
	fsw	%f0, 8(%x8)  #2012 pc 23556
	lw	%x8, 12(%x6)  #2015 pc 23560
	lw	%x11, 128(%x2)  #2016 pc 23564
	lw	%x12, 28(%x11)  #2016 pc 23568
	flw	%f0, 0(%x12)  #2016 pc 23572
	fmv	%f1, l.21733  #0 pc 23576
	fle	%x31, %f1, %f0  #2016 pc 23580
	blt	%x0, %x31, 12  #2016 pc 23584
	j	fble_else.25765 #pc 23588
	nop #pc 23592
	addi	%x12, %x0, 0  #0 pc 23596
	j	fble_cont.25766 #pc 23600
	nop #pc 23604
fble_else.25765: #pc 23608
	addi	%x12, %x0, 1  #0 pc 23608
fble_cont.25766: #pc 23612
	beq	%x12, %x0, 12  #2016 pc 23612
	j	be_else.25767 #pc 23616
	nop #pc 23620
	addi	%x12, %x0, 1  #0 pc 23624
	slli	%x13, %x7, 2  #2019 pc 23628
	add	%x31, %x13, %x8  #2019 pc 23632
	sw	%x12, 0(%x31)  #2019 pc 23636
	lw	%x8, 16(%x6)  #2020 pc 23640
	slli	%x12, %x7, 2  #2021 pc 23644
	add	%x31, %x12, %x8  #2021 pc 23648
	lw	%x12, 0(%x31)  #2021 pc 23652
	lw	%x13, 48(%x2)  #2021 pc 23656
	flw	%f0, 0(%x13)  #2021 pc 23660
	fsw	%f0, 0(%x12)  #2021 pc 23664
	flw	%f0, 4(%x13)  #2021 pc 23668
	fsw	%f0, 4(%x12)  #2021 pc 23672
	flw	%f0, 8(%x13)  #2021 pc 23676
	fsw	%f0, 8(%x12)  #2021 pc 23680
	slli	%x12, %x7, 2  #2022 pc 23684
	add	%x31, %x12, %x8  #2022 pc 23688
	lw	%x8, 0(%x31)  #2022 pc 23692
	fmv	%f0, l.22665  #0 pc 23696
	flw	%f1, 120(%x2)  #2022 pc 23700
	fmul	%f0, %f0, %f1  #2022 pc 23704
	flw	%f2, 0(%x8)  #2022 pc 23708
	fmul	%f2, %f2, %f0  #2022 pc 23712
	fsw	%f2, 0(%x8)  #2022 pc 23716
	flw	%f2, 4(%x8)  #2022 pc 23720
	fmul	%f2, %f2, %f0  #2022 pc 23724
	fsw	%f2, 4(%x8)  #2022 pc 23728
	flw	%f2, 8(%x8)  #2022 pc 23732
	fmul	%f0, %f2, %f0  #2022 pc 23736
	fsw	%f0, 8(%x8)  #2022 pc 23740
	lw	%x8, 28(%x6)  #2023 pc 23744
	slli	%x12, %x7, 2  #2024 pc 23748
	add	%x31, %x12, %x8  #2024 pc 23752
	lw	%x8, 0(%x31)  #2024 pc 23756
	lw	%x12, 60(%x2)  #2024 pc 23760
	flw	%f0, 0(%x12)  #2024 pc 23764
	fsw	%f0, 0(%x8)  #2024 pc 23768
	flw	%f0, 4(%x12)  #2024 pc 23772
	fsw	%f0, 4(%x8)  #2024 pc 23776
	flw	%f0, 8(%x12)  #2024 pc 23780
	fsw	%f0, 8(%x8)  #2024 pc 23784
	j	be_cont.25768 #pc 23788
	nop #pc 23792
be_else.25767: #pc 23796
	addi	%x12, %x0, 0  #0 pc 23796
	slli	%x13, %x7, 2  #2017 pc 23800
	add	%x31, %x13, %x8  #2017 pc 23804
	sw	%x12, 0(%x31)  #2017 pc 23808
be_cont.25768: #pc 23812
	fmv	%f0, l.22680  #0 pc 23812
	lw	%x8, 100(%x2)  #2027 pc 23816
	flw	%f1, 0(%x8)  #2027 pc 23820
	lw	%x12, 60(%x2)  #2027 pc 23824
	flw	%f2, 0(%x12)  #2027 pc 23828
	fmul	%f1, %f1, %f2  #2027 pc 23832
	flw	%f2, 4(%x8)  #2027 pc 23836
	flw	%f3, 4(%x12)  #2027 pc 23840
	fmul	%f2, %f2, %f3  #2027 pc 23844
	fadd	%f1, %f1, %f2  #2027 pc 23848
	flw	%f2, 8(%x8)  #2027 pc 23852
	flw	%f3, 8(%x12)  #2027 pc 23856
	fmul	%f2, %f2, %f3  #2027 pc 23860
	fadd	%f1, %f1, %f2  #2027 pc 23864
	fmul	%f0, %f0, %f1  #2027 pc 23868
	flw	%f1, 0(%x8)  #2029 pc 23872
	flw	%f2, 0(%x12)  #2029 pc 23876
	fmul	%f2, %f0, %f2  #2029 pc 23880
	fadd	%f1, %f1, %f2  #2029 pc 23884
	fsw	%f1, 0(%x8)  #2029 pc 23888
	flw	%f1, 4(%x8)  #2029 pc 23892
	flw	%f2, 4(%x12)  #2029 pc 23896
	fmul	%f2, %f0, %f2  #2029 pc 23900
	fadd	%f1, %f1, %f2  #2029 pc 23904
	fsw	%f1, 4(%x8)  #2029 pc 23908
	flw	%f1, 8(%x8)  #2029 pc 23912
	flw	%f2, 8(%x12)  #2029 pc 23916
	fmul	%f0, %f0, %f2  #2029 pc 23920
	fadd	%f0, %f1, %f0  #2029 pc 23924
	fsw	%f0, 8(%x8)  #2029 pc 23928
	lw	%x13, 28(%x11)  #2031 pc 23932
	flw	%f0, 4(%x13)  #2031 pc 23936
	flw	%f1, 88(%x2)  #2031 pc 23940
	fmul	%f0, %f1, %f0  #2031 pc 23944
	addi	%x13, %x0, 0  #0 pc 23948
	lw	%x14, 40(%x2)  #2034 pc 23952
	lw	%x14, 0(%x14)  #2034 pc 23956
	lw	%x29, 36(%x2)  #2034 pc 23960
	fsw	%f0, 136(%x2)  #2034 pc 23964
	addi	%x7, %x14, 0  #0 pc 23968
	addi	%x6, %x13, 0  #0 pc 23972
	sw	%x1, 144(%x2)  #2034 pc 23976
	lw	%x30, 0(%x29)  #2034 pc 23980
	addi	%x2, %x2, 148  #2034 pc 23984
	jalr	%x1, %x30, 0  #2034 pc 23988
	addi	%x2, %x2, -148  #2034 pc 23992
	lw	%x1, 144(%x2)  #2034 pc 23996
	beq	%x6, %x0, 12  #2034 pc 24000
	j	be_else.25769 #pc 24004
	nop #pc 24008
	lw	%x6, 60(%x2)  #2035 pc 24012
	flw	%f0, 0(%x6)  #2035 pc 24016
	lw	%x7, 96(%x2)  #2035 pc 24020
	flw	%f1, 0(%x7)  #2035 pc 24024
	fmul	%f0, %f0, %f1  #2035 pc 24028
	flw	%f1, 4(%x6)  #2035 pc 24032
	flw	%f2, 4(%x7)  #2035 pc 24036
	fmul	%f1, %f1, %f2  #2035 pc 24040
	fadd	%f0, %f0, %f1  #2035 pc 24044
	flw	%f1, 8(%x6)  #2035 pc 24048
	flw	%f2, 8(%x7)  #2035 pc 24052
	fmul	%f1, %f1, %f2  #2035 pc 24056
	fadd	%f0, %f0, %f1  #2035 pc 24060
	fsub	%f0, %f30, %f0  #2035 pc 24064
	flw	%f1, 120(%x2)  #2035 pc 24068
	fmul	%f0, %f0, %f1  #2035 pc 24072
	lw	%x6, 100(%x2)  #2036 pc 24076
	flw	%f2, 0(%x6)  #2036 pc 24080
	flw	%f3, 0(%x7)  #2036 pc 24084
	fmul	%f2, %f2, %f3  #2036 pc 24088
	flw	%f3, 4(%x6)  #2036 pc 24092
	flw	%f4, 4(%x7)  #2036 pc 24096
	fmul	%f3, %f3, %f4  #2036 pc 24100
	fadd	%f2, %f2, %f3  #2036 pc 24104
	flw	%f3, 8(%x6)  #2036 pc 24108
	flw	%f4, 8(%x7)  #2036 pc 24112
	fmul	%f3, %f3, %f4  #2036 pc 24116
	fadd	%f2, %f2, %f3  #2036 pc 24120
	fsub	%f2, %f30, %f2  #2036 pc 24124
	fmv	%f3, l.21722  #0 pc 24128
	fle	%x31, %f0, %f3  #2037 pc 24132
	blt	%x0, %x31, 12  #2037 pc 24136
	j	fble_else.25771 #pc 24140
	nop #pc 24144
	addi	%x7, %x0, 0  #0 pc 24148
	j	fble_cont.25772 #pc 24152
	nop #pc 24156
fble_else.25771: #pc 24160
	addi	%x7, %x0, 1  #0 pc 24160
fble_cont.25772: #pc 24164
	beq	%x7, %x0, 12  #2037 pc 24164
	j	be_else.25773 #pc 24168
	nop #pc 24172
	j	be_cont.25774 #pc 24176
	nop #pc 24180
be_else.25773: #pc 24184
	lw	%x7, 76(%x2)  #2037 pc 24184
	flw	%f3, 0(%x7)  #2037 pc 24188
	lw	%x8, 48(%x2)  #2037 pc 24192
	flw	%f4, 0(%x8)  #2037 pc 24196
	fmul	%f4, %f0, %f4  #2037 pc 24200
	fadd	%f3, %f3, %f4  #2037 pc 24204
	fsw	%f3, 0(%x7)  #2037 pc 24208
	flw	%f3, 4(%x7)  #2037 pc 24212
	flw	%f4, 4(%x8)  #2037 pc 24216
	fmul	%f4, %f0, %f4  #2037 pc 24220
	fadd	%f3, %f3, %f4  #2037 pc 24224
	fsw	%f3, 4(%x7)  #2037 pc 24228
	flw	%f3, 8(%x7)  #2037 pc 24232
	flw	%f4, 8(%x8)  #2037 pc 24236
	fmul	%f0, %f0, %f4  #2037 pc 24240
	fadd	%f0, %f3, %f0  #2037 pc 24244
	fsw	%f0, 8(%x7)  #2037 pc 24248
be_cont.25774: #pc 24252
	fmv	%f0, l.21722  #0 pc 24252
	fle	%x31, %f2, %f0  #2037 pc 24256
	blt	%x0, %x31, 12  #2037 pc 24260
	j	fble_else.25775 #pc 24264
	nop #pc 24268
	addi	%x7, %x0, 0  #0 pc 24272
	j	fble_cont.25776 #pc 24276
	nop #pc 24280
fble_else.25775: #pc 24284
	addi	%x7, %x0, 1  #0 pc 24284
fble_cont.25776: #pc 24288
	beq	%x7, %x0, 12  #2037 pc 24288
	j	be_else.25777 #pc 24292
	nop #pc 24296
	j	be_cont.25778 #pc 24300
	nop #pc 24304
be_else.25777: #pc 24308
	fmul	%f0, %f2, %f2  #2037 pc 24308
	fmul	%f0, %f0, %f0  #2037 pc 24312
	flw	%f2, 136(%x2)  #2037 pc 24316
	fmul	%f0, %f0, %f2  #2037 pc 24320
	lw	%x7, 76(%x2)  #2037 pc 24324
	flw	%f3, 0(%x7)  #2037 pc 24328
	fadd	%f3, %f3, %f0  #2037 pc 24332
	fsw	%f3, 0(%x7)  #2037 pc 24336
	flw	%f3, 4(%x7)  #2037 pc 24340
	fadd	%f3, %f3, %f0  #2037 pc 24344
	fsw	%f3, 4(%x7)  #2037 pc 24348
	flw	%f3, 8(%x7)  #2037 pc 24352
	fadd	%f0, %f3, %f0  #2037 pc 24356
	fsw	%f0, 8(%x7)  #2037 pc 24360
be_cont.25778: #pc 24364
	j	be_cont.25770 #pc 24364
	nop #pc 24368
be_else.25769: #pc 24372
be_cont.25770: #pc 24372
	lw	%x6, 56(%x2)  #2041 pc 24372
	flw	%f0, 0(%x6)  #2041 pc 24376
	lw	%x7, 32(%x2)  #2041 pc 24380
	fsw	%f0, 0(%x7)  #2041 pc 24384
	flw	%f0, 4(%x6)  #2041 pc 24388
	fsw	%f0, 4(%x7)  #2041 pc 24392
	flw	%f0, 8(%x6)  #2041 pc 24396
	fsw	%f0, 8(%x7)  #2041 pc 24400
	lw	%x7, 28(%x2)  #2041 pc 24404
	lw	%x7, 0(%x7)  #2041 pc 24408
	addi	%x7, %x7, -1  #2041 pc 24412
	lw	%x29, 24(%x2)  #2041 pc 24416
	sw	%x1, 144(%x2)  #2041 pc 24420
	lw	%x30, 0(%x29)  #2041 pc 24424
	addi	%x2, %x2, 148  #2041 pc 24428
	jalr	%x1, %x30, 0  #2041 pc 24432
	addi	%x2, %x2, -148  #2041 pc 24436
	lw	%x1, 144(%x2)  #2041 pc 24440
	lw	%x6, 20(%x2)  #2042 pc 24444
	lw	%x6, 0(%x6)  #2042 pc 24448
	addi	%x6, %x6, -1  #2042 pc 24452
	flw	%f0, 120(%x2)  #2042 pc 24456
	flw	%f1, 136(%x2)  #2042 pc 24460
	lw	%x7, 100(%x2)  #2042 pc 24464
	lw	%x29, 16(%x2)  #2042 pc 24468
	sw	%x1, 144(%x2)  #2042 pc 24472
	lw	%x30, 0(%x29)  #2042 pc 24476
	addi	%x2, %x2, 148  #2042 pc 24480
	jalr	%x1, %x30, 0  #2042 pc 24484
	addi	%x2, %x2, -148  #2042 pc 24488
	lw	%x1, 144(%x2)  #2042 pc 24492
	fmv	%f0, l.22736  #0 pc 24496
	flw	%f1, 88(%x2)  #2045 pc 24500
	fle	%x31, %f1, %f0  #2045 pc 24504
	blt	%x0, %x31, 12  #2045 pc 24508
	j	fble_else.25779 #pc 24512
	nop #pc 24516
	addi	%x6, %x0, 0  #0 pc 24520
	j	fble_cont.25780 #pc 24524
	nop #pc 24528
fble_else.25779: #pc 24532
	addi	%x6, %x0, 1  #0 pc 24532
fble_cont.25780: #pc 24536
	beq	%x6, %x0, 12  #2045 pc 24536
	j	be_else.25781 #pc 24540
	nop #pc 24544
	ret #pc 24548
	nop #pc 24552
be_else.25781: #pc 24556
	lw	%x6, 108(%x2)  #2047 pc 24556
	addi	%x31, %x0, 4  #pc 24560
	bge	%x6, %x31, 12  #2047 pc 24564
	j	bge_else.25783 #pc 24568
	nop #pc 24572
	j	bge_cont.25784 #pc 24576
	nop #pc 24580
bge_else.25783: #pc 24584
	addi	%x7, %x6, 1  #2048 pc 24584
	addi	%x8, %x0, -1  #0 pc 24588
	slli	%x7, %x7, 2  #2048 pc 24592
	lw	%x9, 104(%x2)  #2048 pc 24596
	add	%x31, %x7, %x9  #2048 pc 24600
	sw	%x8, 0(%x31)  #2048 pc 24604
bge_cont.25784: #pc 24608
	lw	%x7, 116(%x2)  #2051 pc 24608
	addi	%x31, %x0, 2  #pc 24612
	beq	%x7, %x31, 12  #2051 pc 24616
	j	be_else.25785 #pc 24620
	nop #pc 24624
	fmv	%f0, l.21731  #0 pc 24628
	lw	%x7, 128(%x2)  #2052 pc 24632
	lw	%x7, 28(%x7)  #2052 pc 24636
	flw	%f2, 0(%x7)  #2052 pc 24640
	fsub	%f0, %f0, %f2  #2052 pc 24644
	fmul	%f0, %f1, %f0  #2052 pc 24648
	addi	%x6, %x6, 1  #2053 pc 24652
	lw	%x7, 112(%x2)  #2053 pc 24656
	flw	%f1, 0(%x7)  #2053 pc 24660
	flw	%f2, 8(%x2)  #2053 pc 24664
	fadd	%f1, %f2, %f1  #2053 pc 24668
	lw	%x7, 100(%x2)  #2053 pc 24672
	lw	%x8, 44(%x2)  #2053 pc 24676
	lw	%x29, 0(%x2)  #2053 pc 24680
	lw	%x30, 0(%x29)  #2053 pc 24684
	jalr	%x0, %x30, 0  #2053 pc 24688
	nop #pc 24692
be_else.25785: #pc 24696
	ret #pc 24696
	nop #pc 24700
ble_else.25684: #pc 24704
	ret #pc 24704
	nop #pc 24708
iter_trace_diffuse_rays.2949:  #pc 24712
	lw	%x10, 48(%x29)  #0 pc 24712
	lw	%x11, 44(%x29)  #0 pc 24716
	lw	%x12, 40(%x29)  #0 pc 24720
	lw	%x13, 36(%x29)  #0 pc 24724
	lw	%x14, 32(%x29)  #0 pc 24728
	lw	%x15, 28(%x29)  #0 pc 24732
	lw	%x16, 24(%x29)  #0 pc 24736
	lw	%x17, 20(%x29)  #0 pc 24740
	lw	%x18, 16(%x29)  #0 pc 24744
	lw	%x19, 12(%x29)  #0 pc 24748
	lw	%x20, 8(%x29)  #0 pc 24752
	lw	%x21, 4(%x29)  #0 pc 24756
	bge	%x9, %x0, 12  #2108 pc 24760
	j	bge_else.25788 #pc 24764
	nop #pc 24768
	slli	%x22, %x9, 2  #2109 pc 24772
	add	%x31, %x22, %x6  #2109 pc 24776
	lw	%x22, 0(%x31)  #2109 pc 24780
	lw	%x22, 0(%x22)  #2109 pc 24784
	flw	%f0, 0(%x22)  #2109 pc 24788
	flw	%f1, 0(%x7)  #2109 pc 24792
	fmul	%f0, %f0, %f1  #2109 pc 24796
	flw	%f1, 4(%x22)  #2109 pc 24800
	flw	%f2, 4(%x7)  #2109 pc 24804
	fmul	%f1, %f1, %f2  #2109 pc 24808
	fadd	%f0, %f0, %f1  #2109 pc 24812
	flw	%f1, 8(%x22)  #2109 pc 24816
	flw	%f2, 8(%x7)  #2109 pc 24820
	fmul	%f1, %f1, %f2  #2109 pc 24824
	fadd	%f0, %f0, %f1  #2109 pc 24828
	fmv	%f1, l.21722  #0 pc 24832
	fle	%x31, %f1, %f0  #2113 pc 24836
	blt	%x0, %x31, 12  #2113 pc 24840
	j	fble_else.25789 #pc 24844
	nop #pc 24848
	addi	%x22, %x0, 0  #0 pc 24852
	j	fble_cont.25790 #pc 24856
	nop #pc 24860
fble_else.25789: #pc 24864
	addi	%x22, %x0, 1  #0 pc 24864
fble_cont.25790: #pc 24868
	sw	%x8, 0(%x2)  #2113 pc 24868
	sw	%x7, 4(%x2)  #2113 pc 24872
	sw	%x6, 8(%x2)  #2113 pc 24876
	sw	%x29, 12(%x2)  #2113 pc 24880
	sw	%x9, 16(%x2)  #2113 pc 24884
	beq	%x22, %x0, 12  #2113 pc 24888
	j	be_else.25791 #pc 24892
	nop #pc 24896
	slli	%x22, %x9, 2  #2116 pc 24900
	add	%x31, %x22, %x6  #2116 pc 24904
	lw	%x22, 0(%x31)  #2116 pc 24908
	fmv	%f1, l.22930  #0 pc 24912
	fdiv	%f0, %f0, %f1  #2116 pc 24916
	fmv	%f1, l.22439  #0 pc 24920
	fsw	%f1, 0(%x17)  #2116 pc 24924
	addi	%x23, %x0, 0  #0 pc 24928
	lw	%x24, 0(%x13)  #2116 pc 24932
	sw	%x21, 20(%x2)  #2116 pc 24936
	fsw	%f0, 24(%x2)  #2116 pc 24940
	sw	%x16, 32(%x2)  #2116 pc 24944
	sw	%x11, 36(%x2)  #2116 pc 24948
	sw	%x13, 40(%x2)  #2116 pc 24952
	sw	%x20, 44(%x2)  #2116 pc 24956
	sw	%x18, 48(%x2)  #2116 pc 24960
	sw	%x19, 52(%x2)  #2116 pc 24964
	sw	%x14, 56(%x2)  #2116 pc 24968
	sw	%x22, 60(%x2)  #2116 pc 24972
	sw	%x12, 64(%x2)  #2116 pc 24976
	sw	%x15, 68(%x2)  #2116 pc 24980
	sw	%x17, 72(%x2)  #2116 pc 24984
	addi	%x8, %x22, 0  #0 pc 24988
	addi	%x7, %x24, 0  #0 pc 24992
	addi	%x6, %x23, 0  #0 pc 24996
	addi	%x29, %x10, 0  #0 pc 25000
	sw	%x1, 76(%x2)  #2116 pc 25004
	lw	%x30, 0(%x29)  #2116 pc 25008
	addi	%x2, %x2, 80  #2116 pc 25012
	jalr	%x1, %x30, 0  #2116 pc 25016
	addi	%x2, %x2, -80  #2116 pc 25020
	lw	%x1, 76(%x2)  #2116 pc 25024
	lw	%x6, 72(%x2)  #2116 pc 25028
	flw	%f0, 0(%x6)  #2116 pc 25032
	fmv	%f1, l.22132  #0 pc 25036
	fle	%x31, %f0, %f1  #2116 pc 25040
	blt	%x0, %x31, 12  #2116 pc 25044
	j	fble_else.25793 #pc 25048
	nop #pc 25052
	addi	%x6, %x0, 0  #0 pc 25056
	j	fble_cont.25794 #pc 25060
	nop #pc 25064
fble_else.25793: #pc 25068
	addi	%x6, %x0, 1  #0 pc 25068
fble_cont.25794: #pc 25072
	beq	%x6, %x0, 12  #2116 pc 25072
	j	be_else.25795 #pc 25076
	nop #pc 25080
	addi	%x6, %x0, 0  #0 pc 25084
	j	be_cont.25796 #pc 25088
	nop #pc 25092
be_else.25795: #pc 25096
	fmv	%f1, l.22445  #0 pc 25096
	fle	%x31, %f1, %f0  #2116 pc 25100
	blt	%x0, %x31, 12  #2116 pc 25104
	j	fble_else.25797 #pc 25108
	nop #pc 25112
	addi	%x6, %x0, 0  #0 pc 25116
	j	fble_cont.25798 #pc 25120
	nop #pc 25124
fble_else.25797: #pc 25128
	addi	%x6, %x0, 1  #0 pc 25128
fble_cont.25798: #pc 25132
be_cont.25796: #pc 25132
	beq	%x6, %x0, 12  #2116 pc 25132
	j	be_else.25799 #pc 25136
	nop #pc 25140
	j	be_cont.25800 #pc 25144
	nop #pc 25148
be_else.25799: #pc 25152
	lw	%x6, 68(%x2)  #2116 pc 25152
	lw	%x6, 0(%x6)  #2116 pc 25156
	slli	%x6, %x6, 2  #2116 pc 25160
	lw	%x7, 64(%x2)  #2116 pc 25164
	add	%x31, %x6, %x7  #2116 pc 25168
	lw	%x6, 0(%x31)  #2116 pc 25172
	lw	%x7, 60(%x2)  #2116 pc 25176
	lw	%x7, 0(%x7)  #2116 pc 25180
	lw	%x8, 4(%x6)  #2116 pc 25184
	addi	%x31, %x0, 1  #pc 25188
	beq	%x8, %x31, 12  #2116 pc 25192
	j	be_else.25801 #pc 25196
	nop #pc 25200
	lw	%x8, 56(%x2)  #2116 pc 25204
	lw	%x8, 0(%x8)  #2116 pc 25208
	fmv	%f0, l.21722  #0 pc 25212
	lw	%x9, 52(%x2)  #2116 pc 25216
	fsw	%f0, 0(%x9)  #2116 pc 25220
	fsw	%f0, 4(%x9)  #2116 pc 25224
	fsw	%f0, 8(%x9)  #2116 pc 25228
	addi	%x10, %x8, -1  #2116 pc 25232
	addi	%x8, %x8, -1  #2116 pc 25236
	slli	%x8, %x8, 2  #2116 pc 25240
	add	%x31, %x8, %x7  #2116 pc 25244
	flw	%f0, 0(%x31)  #2116 pc 25248
	fmv	%f1, l.21722  #0 pc 25252
	feq	%x31, %f0, %f1  #2116 pc 25256
	blt	%x0, %x31, 12  #2116 pc 25260
	j	fbe_else.25803 #pc 25264
	nop #pc 25268
	addi	%x7, %x0, 1  #0 pc 25272
	j	fbe_cont.25804 #pc 25276
	nop #pc 25280
fbe_else.25803: #pc 25284
	addi	%x7, %x0, 0  #0 pc 25284
fbe_cont.25804: #pc 25288
	beq	%x7, %x0, 12  #2116 pc 25288
	j	be_else.25805 #pc 25292
	nop #pc 25296
	fmv	%f1, l.21722  #0 pc 25300
	fle	%x31, %f0, %f1  #2116 pc 25304
	blt	%x0, %x31, 12  #2116 pc 25308
	j	fble_else.25807 #pc 25312
	nop #pc 25316
	addi	%x7, %x0, 0  #0 pc 25320
	j	fble_cont.25808 #pc 25324
	nop #pc 25328
fble_else.25807: #pc 25332
	addi	%x7, %x0, 1  #0 pc 25332
fble_cont.25808: #pc 25336
	beq	%x7, %x0, 12  #2116 pc 25336
	j	be_else.25809 #pc 25340
	nop #pc 25344
	fmv	%f0, l.21791  #0 pc 25348
	j	be_cont.25810 #pc 25352
	nop #pc 25356
be_else.25809: #pc 25360
	fmv	%f0, l.21731  #0 pc 25360
be_cont.25810: #pc 25364
	j	be_cont.25806 #pc 25364
	nop #pc 25368
be_else.25805: #pc 25372
	fmv	%f0, l.21722  #0 pc 25372
be_cont.25806: #pc 25376
	fsub	%f0, %f30, %f0  #2116 pc 25376
	slli	%x7, %x10, 2  #2116 pc 25380
	add	%x31, %x7, %x9  #2116 pc 25384
	fsw	%f0, 0(%x31) #2116 pc 25388
	j	be_cont.25802 #pc 25392
	nop #pc 25396
be_else.25801: #pc 25400
	addi	%x31, %x0, 2  #pc 25400
	beq	%x8, %x31, 12  #2116 pc 25404
	j	be_else.25811 #pc 25408
	nop #pc 25412
	lw	%x7, 16(%x6)  #2116 pc 25416
	flw	%f0, 0(%x7)  #2116 pc 25420
	fsub	%f0, %f30, %f0  #2116 pc 25424
	lw	%x7, 52(%x2)  #2116 pc 25428
	fsw	%f0, 0(%x7)  #2116 pc 25432
	lw	%x8, 16(%x6)  #2116 pc 25436
	flw	%f0, 4(%x8)  #2116 pc 25440
	fsub	%f0, %f30, %f0  #2116 pc 25444
	fsw	%f0, 4(%x7)  #2116 pc 25448
	lw	%x8, 16(%x6)  #2116 pc 25452
	flw	%f0, 8(%x8)  #2116 pc 25456
	fsub	%f0, %f30, %f0  #2116 pc 25460
	fsw	%f0, 8(%x7)  #2116 pc 25464
	j	be_cont.25812 #pc 25468
	nop #pc 25472
be_else.25811: #pc 25476
	lw	%x7, 48(%x2)  #2116 pc 25476
	flw	%f0, 0(%x7)  #2116 pc 25480
	lw	%x8, 20(%x6)  #2116 pc 25484
	flw	%f1, 0(%x8)  #2116 pc 25488
	fsub	%f0, %f0, %f1  #2116 pc 25492
	flw	%f1, 4(%x7)  #2116 pc 25496
	lw	%x8, 20(%x6)  #2116 pc 25500
	flw	%f2, 4(%x8)  #2116 pc 25504
	fsub	%f1, %f1, %f2  #2116 pc 25508
	flw	%f2, 8(%x7)  #2116 pc 25512
	lw	%x8, 20(%x6)  #2116 pc 25516
	flw	%f3, 8(%x8)  #2116 pc 25520
	fsub	%f2, %f2, %f3  #2116 pc 25524
	lw	%x8, 16(%x6)  #2116 pc 25528
	flw	%f3, 0(%x8)  #2116 pc 25532
	fmul	%f3, %f0, %f3  #2116 pc 25536
	lw	%x8, 16(%x6)  #2116 pc 25540
	flw	%f4, 4(%x8)  #2116 pc 25544
	fmul	%f4, %f1, %f4  #2116 pc 25548
	lw	%x8, 16(%x6)  #2116 pc 25552
	flw	%f5, 8(%x8)  #2116 pc 25556
	fmul	%f5, %f2, %f5  #2116 pc 25560
	lw	%x8, 12(%x6)  #2116 pc 25564
	beq	%x8, %x0, 12  #2116 pc 25568
	j	be_else.25813 #pc 25572
	nop #pc 25576
	lw	%x8, 52(%x2)  #2116 pc 25580
	fsw	%f3, 0(%x8)  #2116 pc 25584
	fsw	%f4, 4(%x8)  #2116 pc 25588
	fsw	%f5, 8(%x8)  #2116 pc 25592
	j	be_cont.25814 #pc 25596
	nop #pc 25600
be_else.25813: #pc 25604
	lw	%x8, 36(%x6)  #2116 pc 25604
	flw	%f6, 8(%x8)  #2116 pc 25608
	fmul	%f6, %f1, %f6  #2116 pc 25612
	lw	%x8, 36(%x6)  #2116 pc 25616
	flw	%f7, 4(%x8)  #2116 pc 25620
	fmul	%f7, %f2, %f7  #2116 pc 25624
	fadd	%f6, %f6, %f7  #2116 pc 25628
	fmv	%f7, l.21733  #0 pc 25632
	fmul	%f6, %f7, %f6  #2116 pc 25636
	fadd	%f3, %f3, %f6  #2116 pc 25640
	lw	%x8, 52(%x2)  #2116 pc 25644
	fsw	%f3, 0(%x8)  #2116 pc 25648
	lw	%x9, 36(%x6)  #2116 pc 25652
	flw	%f3, 8(%x9)  #2116 pc 25656
	fmul	%f3, %f0, %f3  #2116 pc 25660
	lw	%x9, 36(%x6)  #2116 pc 25664
	flw	%f6, 0(%x9)  #2116 pc 25668
	fmul	%f2, %f2, %f6  #2116 pc 25672
	fadd	%f2, %f3, %f2  #2116 pc 25676
	fmv	%f3, l.21733  #0 pc 25680
	fmul	%f2, %f3, %f2  #2116 pc 25684
	fadd	%f2, %f4, %f2  #2116 pc 25688
	fsw	%f2, 4(%x8)  #2116 pc 25692
	lw	%x9, 36(%x6)  #2116 pc 25696
	flw	%f2, 4(%x9)  #2116 pc 25700
	fmul	%f0, %f0, %f2  #2116 pc 25704
	lw	%x9, 36(%x6)  #2116 pc 25708
	flw	%f2, 0(%x9)  #2116 pc 25712
	fmul	%f1, %f1, %f2  #2116 pc 25716
	fadd	%f0, %f0, %f1  #2116 pc 25720
	fmv	%f1, l.21733  #0 pc 25724
	fmul	%f0, %f1, %f0  #2116 pc 25728
	fadd	%f0, %f5, %f0  #2116 pc 25732
	fsw	%f0, 8(%x8)  #2116 pc 25736
be_cont.25814: #pc 25740
	lw	%x9, 24(%x6)  #2116 pc 25740
	flw	%f0, 0(%x8)  #2116 pc 25744
	fmul	%f0, %f0, %f0  #2116 pc 25748
	flw	%f1, 4(%x8)  #2116 pc 25752
	fmul	%f1, %f1, %f1  #2116 pc 25756
	fadd	%f0, %f0, %f1  #2116 pc 25760
	flw	%f1, 8(%x8)  #2116 pc 25764
	fmul	%f1, %f1, %f1  #2116 pc 25768
	fadd	%f0, %f0, %f1  #2116 pc 25772
	fsqrt	%f0, %f0  #2116 pc 25776
	fmv	%f1, l.21722  #0 pc 25780
	feq	%x31, %f0, %f1  #2116 pc 25784
	blt	%x0, %x31, 12  #2116 pc 25788
	j	fbe_else.25815 #pc 25792
	nop #pc 25796
	addi	%x10, %x0, 1  #0 pc 25800
	j	fbe_cont.25816 #pc 25804
	nop #pc 25808
fbe_else.25815: #pc 25812
	addi	%x10, %x0, 0  #0 pc 25812
fbe_cont.25816: #pc 25816
	beq	%x10, %x0, 12  #2116 pc 25816
	j	be_else.25817 #pc 25820
	nop #pc 25824
	beq	%x9, %x0, 12  #2116 pc 25828
	j	be_else.25819 #pc 25832
	nop #pc 25836
	fmv	%f1, l.21731  #0 pc 25840
	fdiv	%f0, %f1, %f0  #2116 pc 25844
	j	be_cont.25820 #pc 25848
	nop #pc 25852
be_else.25819: #pc 25856
	fmv	%f1, l.21791  #0 pc 25856
	fdiv	%f0, %f1, %f0  #2116 pc 25860
be_cont.25820: #pc 25864
	j	be_cont.25818 #pc 25864
	nop #pc 25868
be_else.25817: #pc 25872
	fmv	%f0, l.21731  #0 pc 25872
be_cont.25818: #pc 25876
	flw	%f1, 0(%x8)  #2116 pc 25876
	fmul	%f1, %f1, %f0  #2116 pc 25880
	fsw	%f1, 0(%x8)  #2116 pc 25884
	flw	%f1, 4(%x8)  #2116 pc 25888
	fmul	%f1, %f1, %f0  #2116 pc 25892
	fsw	%f1, 4(%x8)  #2116 pc 25896
	flw	%f1, 8(%x8)  #2116 pc 25900
	fmul	%f0, %f1, %f0  #2116 pc 25904
	fsw	%f0, 8(%x8)  #2116 pc 25908
be_cont.25812: #pc 25912
be_cont.25802: #pc 25912
	lw	%x7, 0(%x6)  #2116 pc 25912
	lw	%x8, 32(%x6)  #2116 pc 25916
	flw	%f0, 0(%x8)  #2116 pc 25920
	lw	%x8, 44(%x2)  #2116 pc 25924
	fsw	%f0, 0(%x8)  #2116 pc 25928
	lw	%x9, 32(%x6)  #2116 pc 25932
	flw	%f0, 4(%x9)  #2116 pc 25936
	fsw	%f0, 4(%x8)  #2116 pc 25940
	lw	%x9, 32(%x6)  #2116 pc 25944
	flw	%f0, 8(%x9)  #2116 pc 25948
	fsw	%f0, 8(%x8)  #2116 pc 25952
	sw	%x6, 76(%x2)  #2116 pc 25956
	addi	%x31, %x0, 1  #pc 25960
	beq	%x7, %x31, 12  #2116 pc 25964
	j	be_else.25821 #pc 25968
	nop #pc 25972
	lw	%x7, 48(%x2)  #2116 pc 25976
	flw	%f0, 0(%x7)  #2116 pc 25980
	lw	%x9, 20(%x6)  #2116 pc 25984
	flw	%f1, 0(%x9)  #2116 pc 25988
	fsub	%f0, %f0, %f1  #2116 pc 25992
	fmv	%f1, l.22627  #0 pc 25996
	fmul	%f1, %f0, %f1  #2116 pc 26000
	ftoi	%x9, %f1  #2116 pc 26004
	itof	%f2, %x9  #2116 pc 26008
	fle	%x31, %f2, %f1  #2116 pc 26012
	blt	%x0, %x31, 12  #2116 pc 26016
	j	fble_else.25823 #pc 26020
	nop #pc 26024
	fadd	%f1, %f2, %f30  #2116 pc 26028
	j	fble_cont.25824 #pc 26032
	nop #pc 26036
fble_else.25823: #pc 26040
	fmv	%f1, l.21731  #0 pc 26040
	fsub	%f1, %f2, %f1  #2116 pc 26044
fble_cont.25824: #pc 26048
	fmv	%f2, l.22630  #0 pc 26048
	fmul	%f1, %f1, %f2  #2116 pc 26052
	fsub	%f0, %f0, %f1  #2116 pc 26056
	fmv	%f1, l.22608  #0 pc 26060
	fle	%x31, %f1, %f0  #2116 pc 26064
	blt	%x0, %x31, 12  #2116 pc 26068
	j	fble_else.25825 #pc 26072
	nop #pc 26076
	addi	%x9, %x0, 0  #0 pc 26080
	j	fble_cont.25826 #pc 26084
	nop #pc 26088
fble_else.25825: #pc 26092
	addi	%x9, %x0, 1  #0 pc 26092
fble_cont.25826: #pc 26096
	flw	%f0, 8(%x7)  #2116 pc 26096
	lw	%x7, 20(%x6)  #2116 pc 26100
	flw	%f1, 8(%x7)  #2116 pc 26104
	fsub	%f0, %f0, %f1  #2116 pc 26108
	fmv	%f1, l.22627  #0 pc 26112
	fmul	%f1, %f0, %f1  #2116 pc 26116
	ftoi	%x7, %f1  #2116 pc 26120
	itof	%f2, %x7  #2116 pc 26124
	fle	%x31, %f2, %f1  #2116 pc 26128
	blt	%x0, %x31, 12  #2116 pc 26132
	j	fble_else.25827 #pc 26136
	nop #pc 26140
	fadd	%f1, %f2, %f30  #2116 pc 26144
	j	fble_cont.25828 #pc 26148
	nop #pc 26152
fble_else.25827: #pc 26156
	fmv	%f1, l.21731  #0 pc 26156
	fsub	%f1, %f2, %f1  #2116 pc 26160
fble_cont.25828: #pc 26164
	fmv	%f2, l.22630  #0 pc 26164
	fmul	%f1, %f1, %f2  #2116 pc 26168
	fsub	%f0, %f0, %f1  #2116 pc 26172
	fmv	%f1, l.22608  #0 pc 26176
	fle	%x31, %f1, %f0  #2116 pc 26180
	blt	%x0, %x31, 12  #2116 pc 26184
	j	fble_else.25829 #pc 26188
	nop #pc 26192
	addi	%x7, %x0, 0  #0 pc 26196
	j	fble_cont.25830 #pc 26200
	nop #pc 26204
fble_else.25829: #pc 26208
	addi	%x7, %x0, 1  #0 pc 26208
fble_cont.25830: #pc 26212
	beq	%x9, %x0, 12  #2116 pc 26212
	j	be_else.25831 #pc 26216
	nop #pc 26220
	beq	%x7, %x0, 12  #2116 pc 26224
	j	be_else.25833 #pc 26228
	nop #pc 26232
	fmv	%f0, l.22599  #0 pc 26236
	j	be_cont.25834 #pc 26240
	nop #pc 26244
be_else.25833: #pc 26248
	fmv	%f0, l.21722  #0 pc 26248
be_cont.25834: #pc 26252
	j	be_cont.25832 #pc 26252
	nop #pc 26256
be_else.25831: #pc 26260
	beq	%x7, %x0, 12  #2116 pc 26260
	j	be_else.25835 #pc 26264
	nop #pc 26268
	fmv	%f0, l.21722  #0 pc 26272
	j	be_cont.25836 #pc 26276
	nop #pc 26280
be_else.25835: #pc 26284
	fmv	%f0, l.22599  #0 pc 26284
be_cont.25836: #pc 26288
be_cont.25832: #pc 26288
	fsw	%f0, 4(%x8)  #2116 pc 26288
	j	be_cont.25822 #pc 26292
	nop #pc 26296
be_else.25821: #pc 26300
	addi	%x31, %x0, 2  #pc 26300
	beq	%x7, %x31, 12  #2116 pc 26304
	j	be_else.25837 #pc 26308
	nop #pc 26312
	lw	%x7, 48(%x2)  #2116 pc 26316
	flw	%f0, 4(%x7)  #2116 pc 26320
	fmv	%f1, l.22618  #0 pc 26324
	fmul	%f0, %f0, %f1  #2116 pc 26328
	sw	%x1, 80(%x2)  #2116 pc 26332
	addi	%x2, %x2, 84  #2116 pc 26336
	jal	%x1, sin.2526  #2116 pc 26340
	addi	%x2, %x2, -84  #2116 pc 26344
	lw	%x1, 80(%x2) #2116 pc 26348
	fmul	%f0, %f0, %f0  #2116 pc 26352
	fmv	%f1, l.22599  #0 pc 26356
	fmul	%f1, %f1, %f0  #2116 pc 26360
	lw	%x6, 44(%x2)  #2116 pc 26364
	fsw	%f1, 0(%x6)  #2116 pc 26368
	fmv	%f1, l.22599  #0 pc 26372
	fmv	%f2, l.21731  #0 pc 26376
	fsub	%f0, %f2, %f0  #2116 pc 26380
	fmul	%f0, %f1, %f0  #2116 pc 26384
	fsw	%f0, 4(%x6)  #2116 pc 26388
	j	be_cont.25838 #pc 26392
	nop #pc 26396
be_else.25837: #pc 26400
	addi	%x31, %x0, 3  #pc 26400
	beq	%x7, %x31, 12  #2116 pc 26404
	j	be_else.25839 #pc 26408
	nop #pc 26412
	lw	%x7, 48(%x2)  #2116 pc 26416
	flw	%f0, 0(%x7)  #2116 pc 26420
	lw	%x9, 20(%x6)  #2116 pc 26424
	flw	%f1, 0(%x9)  #2116 pc 26428
	fsub	%f0, %f0, %f1  #2116 pc 26432
	flw	%f1, 8(%x7)  #2116 pc 26436
	lw	%x7, 20(%x6)  #2116 pc 26440
	flw	%f2, 8(%x7)  #2116 pc 26444
	fsub	%f1, %f1, %f2  #2116 pc 26448
	fmul	%f0, %f0, %f0  #2116 pc 26452
	fmul	%f1, %f1, %f1  #2116 pc 26456
	fadd	%f0, %f0, %f1  #2116 pc 26460
	fmv	%f1, l.22608  #0 pc 26464
	fdiv	%f0, %f0, %f1  #2116 pc 26468
	fsqrt	%f0, %f0  #2116 pc 26472
	ftoi	%x7, %f0  #2116 pc 26476
	itof	%f1, %x7  #2116 pc 26480
	fle	%x31, %f1, %f0  #2116 pc 26484
	blt	%x0, %x31, 12  #2116 pc 26488
	j	fble_else.25841 #pc 26492
	nop #pc 26496
	j	fble_cont.25842 #pc 26500
	nop #pc 26504
fble_else.25841: #pc 26508
	fmv	%f2, l.21731  #0 pc 26508
	fsub	%f1, %f1, %f2  #2116 pc 26512
fble_cont.25842: #pc 26516
	fsub	%f0, %f0, %f1  #2116 pc 26516
	fmv	%f1, l.22577  #0 pc 26520
	fmul	%f0, %f0, %f1  #2116 pc 26524
	sw	%x1, 80(%x2)  #2116 pc 26528
	addi	%x2, %x2, 84  #2116 pc 26532
	jal	%x1, cos.2530  #2116 pc 26536
	addi	%x2, %x2, -84  #2116 pc 26540
	lw	%x1, 80(%x2) #2116 pc 26544
	fmul	%f0, %f0, %f0  #2116 pc 26548
	fmv	%f1, l.22599  #0 pc 26552
	fmul	%f1, %f0, %f1  #2116 pc 26556
	lw	%x6, 44(%x2)  #2116 pc 26560
	fsw	%f1, 4(%x6)  #2116 pc 26564
	fmv	%f1, l.21731  #0 pc 26568
	fsub	%f0, %f1, %f0  #2116 pc 26572
	fmv	%f1, l.22599  #0 pc 26576
	fmul	%f0, %f0, %f1  #2116 pc 26580
	fsw	%f0, 8(%x6)  #2116 pc 26584
	j	be_cont.25840 #pc 26588
	nop #pc 26592
be_else.25839: #pc 26596
	addi	%x31, %x0, 4  #pc 26596
	beq	%x7, %x31, 12  #2116 pc 26600
	j	be_else.25843 #pc 26604
	nop #pc 26608
	lw	%x7, 48(%x2)  #2116 pc 26612
	flw	%f0, 0(%x7)  #2116 pc 26616
	lw	%x9, 20(%x6)  #2116 pc 26620
	flw	%f1, 0(%x9)  #2116 pc 26624
	fsub	%f0, %f0, %f1  #2116 pc 26628
	lw	%x9, 16(%x6)  #2116 pc 26632
	flw	%f1, 0(%x9)  #2116 pc 26636
	fsqrt	%f1, %f1  #2116 pc 26640
	fmul	%f0, %f0, %f1  #2116 pc 26644
	flw	%f1, 8(%x7)  #2116 pc 26648
	lw	%x9, 20(%x6)  #2116 pc 26652
	flw	%f2, 8(%x9)  #2116 pc 26656
	fsub	%f1, %f1, %f2  #2116 pc 26660
	lw	%x9, 16(%x6)  #2116 pc 26664
	flw	%f2, 8(%x9)  #2116 pc 26668
	fsqrt	%f2, %f2  #2116 pc 26672
	fmul	%f1, %f1, %f2  #2116 pc 26676
	fmul	%f2, %f0, %f0  #2116 pc 26680
	fmul	%f3, %f1, %f1  #2116 pc 26684
	fadd	%f2, %f2, %f3  #2116 pc 26688
	fabs	%f3, %f0  #2116 pc 26692
	fmv	%f4, l.22561  #0 pc 26696
	fle	%x31, %f4, %f3  #2116 pc 26700
	blt	%x0, %x31, 12  #2116 pc 26704
	j	fble_else.25845 #pc 26708
	nop #pc 26712
	addi	%x9, %x0, 0  #0 pc 26716
	j	fble_cont.25846 #pc 26720
	nop #pc 26724
fble_else.25845: #pc 26728
	addi	%x9, %x0, 1  #0 pc 26728
fble_cont.25846: #pc 26732
	beq	%x9, %x0, 12  #2116 pc 26732
	j	be_else.25847 #pc 26736
	nop #pc 26740
	fdiv	%f0, %f1, %f0  #2116 pc 26744
	fabs	%f0, %f0  #2116 pc 26748
	fmul	%f1, %f0, %f0  #2116 pc 26752
	fmul	%f3, %f0, %f1  #2116 pc 26756
	fmul	%f4, %f3, %f1  #2116 pc 26760
	fmul	%f5, %f4, %f1  #2116 pc 26764
	fmul	%f6, %f5, %f1  #2116 pc 26768
	fmul	%f1, %f6, %f1  #2116 pc 26772
	fmv	%f7, l.22565  #0 pc 26776
	fmul	%f3, %f7, %f3  #2116 pc 26780
	fsub	%f0, %f0, %f3  #2116 pc 26784
	fmv	%f3, l.22567  #0 pc 26788
	fmul	%f3, %f3, %f4  #2116 pc 26792
	fadd	%f0, %f0, %f3  #2116 pc 26796
	fmv	%f3, l.22569  #0 pc 26800
	fmul	%f3, %f3, %f5  #2116 pc 26804
	fsub	%f0, %f0, %f3  #2116 pc 26808
	fmv	%f3, l.22571  #0 pc 26812
	fmul	%f3, %f3, %f6  #2116 pc 26816
	fadd	%f0, %f0, %f3  #2116 pc 26820
	fmv	%f3, l.22573  #0 pc 26824
	fmul	%f1, %f3, %f1  #2116 pc 26828
	fsub	%f0, %f0, %f1  #2116 pc 26832
	fmv	%f1, l.22575  #0 pc 26836
	fmul	%f0, %f0, %f1  #2116 pc 26840
	fmv	%f1, l.22577  #0 pc 26844
	fdiv	%f0, %f0, %f1  #2116 pc 26848
	j	be_cont.25848 #pc 26852
	nop #pc 26856
be_else.25847: #pc 26860
	fmv	%f0, l.22563  #0 pc 26860
be_cont.25848: #pc 26864
	ftoi	%x9, %f0  #2116 pc 26864
	itof	%f1, %x9  #2116 pc 26868
	fle	%x31, %f1, %f0  #2116 pc 26872
	blt	%x0, %x31, 12  #2116 pc 26876
	j	fble_else.25849 #pc 26880
	nop #pc 26884
	j	fble_cont.25850 #pc 26888
	nop #pc 26892
fble_else.25849: #pc 26896
	fmv	%f3, l.21731  #0 pc 26896
	fsub	%f1, %f1, %f3  #2116 pc 26900
fble_cont.25850: #pc 26904
	fsub	%f0, %f0, %f1  #2116 pc 26904
	flw	%f1, 4(%x7)  #2116 pc 26908
	lw	%x7, 20(%x6)  #2116 pc 26912
	flw	%f3, 4(%x7)  #2116 pc 26916
	fsub	%f1, %f1, %f3  #2116 pc 26920
	lw	%x7, 16(%x6)  #2116 pc 26924
	flw	%f3, 4(%x7)  #2116 pc 26928
	fsqrt	%f3, %f3  #2116 pc 26932
	fmul	%f1, %f1, %f3  #2116 pc 26936
	fabs	%f3, %f2  #2116 pc 26940
	fmv	%f4, l.22561  #0 pc 26944
	fle	%x31, %f4, %f3  #2116 pc 26948
	blt	%x0, %x31, 12  #2116 pc 26952
	j	fble_else.25851 #pc 26956
	nop #pc 26960
	addi	%x7, %x0, 0  #0 pc 26964
	j	fble_cont.25852 #pc 26968
	nop #pc 26972
fble_else.25851: #pc 26976
	addi	%x7, %x0, 1  #0 pc 26976
fble_cont.25852: #pc 26980
	beq	%x7, %x0, 12  #2116 pc 26980
	j	be_else.25853 #pc 26984
	nop #pc 26988
	fdiv	%f1, %f1, %f2  #2116 pc 26992
	fabs	%f1, %f1  #2116 pc 26996
	fmul	%f2, %f1, %f1  #2116 pc 27000
	fmul	%f3, %f1, %f2  #2116 pc 27004
	fmul	%f4, %f3, %f2  #2116 pc 27008
	fmul	%f5, %f4, %f2  #2116 pc 27012
	fmul	%f6, %f5, %f2  #2116 pc 27016
	fmul	%f2, %f6, %f2  #2116 pc 27020
	fmv	%f7, l.22565  #0 pc 27024
	fmul	%f3, %f7, %f3  #2116 pc 27028
	fsub	%f1, %f1, %f3  #2116 pc 27032
	fmv	%f3, l.22567  #0 pc 27036
	fmul	%f3, %f3, %f4  #2116 pc 27040
	fadd	%f1, %f1, %f3  #2116 pc 27044
	fmv	%f3, l.22569  #0 pc 27048
	fmul	%f3, %f3, %f5  #2116 pc 27052
	fsub	%f1, %f1, %f3  #2116 pc 27056
	fmv	%f3, l.22571  #0 pc 27060
	fmul	%f3, %f3, %f6  #2116 pc 27064
	fadd	%f1, %f1, %f3  #2116 pc 27068
	fmv	%f3, l.22573  #0 pc 27072
	fmul	%f2, %f3, %f2  #2116 pc 27076
	fsub	%f1, %f1, %f2  #2116 pc 27080
	fmv	%f2, l.22575  #0 pc 27084
	fmul	%f1, %f1, %f2  #2116 pc 27088
	fmv	%f2, l.22577  #0 pc 27092
	fdiv	%f1, %f1, %f2  #2116 pc 27096
	j	be_cont.25854 #pc 27100
	nop #pc 27104
be_else.25853: #pc 27108
	fmv	%f1, l.22563  #0 pc 27108
be_cont.25854: #pc 27112
	ftoi	%x7, %f1  #2116 pc 27112
	itof	%f2, %x7  #2116 pc 27116
	fle	%x31, %f2, %f1  #2116 pc 27120
	blt	%x0, %x31, 12  #2116 pc 27124
	j	fble_else.25855 #pc 27128
	nop #pc 27132
	j	fble_cont.25856 #pc 27136
	nop #pc 27140
fble_else.25855: #pc 27144
	fmv	%f3, l.21731  #0 pc 27144
	fsub	%f2, %f2, %f3  #2116 pc 27148
fble_cont.25856: #pc 27152
	fsub	%f1, %f1, %f2  #2116 pc 27152
	fmv	%f2, l.22593  #0 pc 27156
	fmv	%f3, l.21733  #0 pc 27160
	fsub	%f0, %f3, %f0  #2116 pc 27164
	fmul	%f0, %f0, %f0  #2116 pc 27168
	fsub	%f0, %f2, %f0  #2116 pc 27172
	fmv	%f2, l.21733  #0 pc 27176
	fsub	%f1, %f2, %f1  #2116 pc 27180
	fmul	%f1, %f1, %f1  #2116 pc 27184
	fsub	%f0, %f0, %f1  #2116 pc 27188
	fmv	%f1, l.21722  #0 pc 27192
	fle	%x31, %f1, %f0  #2116 pc 27196
	blt	%x0, %x31, 12  #2116 pc 27200
	j	fble_else.25857 #pc 27204
	nop #pc 27208
	addi	%x7, %x0, 0  #0 pc 27212
	j	fble_cont.25858 #pc 27216
	nop #pc 27220
fble_else.25857: #pc 27224
	addi	%x7, %x0, 1  #0 pc 27224
fble_cont.25858: #pc 27228
	beq	%x7, %x0, 12  #2116 pc 27228
	j	be_else.25859 #pc 27232
	nop #pc 27236
	j	be_cont.25860 #pc 27240
	nop #pc 27244
be_else.25859: #pc 27248
	fmv	%f0, l.21722  #0 pc 27248
be_cont.25860: #pc 27252
	fmv	%f1, l.22599  #0 pc 27252
	fmul	%f0, %f1, %f0  #2116 pc 27256
	fmv	%f1, l.22601  #0 pc 27260
	fdiv	%f0, %f0, %f1  #2116 pc 27264
	fsw	%f0, 8(%x8)  #2116 pc 27268
	j	be_cont.25844 #pc 27272
	nop #pc 27276
be_else.25843: #pc 27280
be_cont.25844: #pc 27280
be_cont.25840: #pc 27280
be_cont.25838: #pc 27280
be_cont.25822: #pc 27280
	addi	%x6, %x0, 0  #0 pc 27280
	lw	%x7, 40(%x2)  #2116 pc 27284
	lw	%x7, 0(%x7)  #2116 pc 27288
	lw	%x29, 36(%x2)  #2116 pc 27292
	sw	%x1, 80(%x2)  #2116 pc 27296
	lw	%x30, 0(%x29)  #2116 pc 27300
	addi	%x2, %x2, 84  #2116 pc 27304
	jalr	%x1, %x30, 0  #2116 pc 27308
	addi	%x2, %x2, -84  #2116 pc 27312
	lw	%x1, 80(%x2)  #2116 pc 27316
	beq	%x6, %x0, 12  #2116 pc 27320
	j	be_else.25861 #pc 27324
	nop #pc 27328
	lw	%x6, 52(%x2)  #2116 pc 27332
	flw	%f0, 0(%x6)  #2116 pc 27336
	lw	%x7, 32(%x2)  #2116 pc 27340
	flw	%f1, 0(%x7)  #2116 pc 27344
	fmul	%f0, %f0, %f1  #2116 pc 27348
	flw	%f1, 4(%x6)  #2116 pc 27352
	flw	%f2, 4(%x7)  #2116 pc 27356
	fmul	%f1, %f1, %f2  #2116 pc 27360
	fadd	%f0, %f0, %f1  #2116 pc 27364
	flw	%f1, 8(%x6)  #2116 pc 27368
	flw	%f2, 8(%x7)  #2116 pc 27372
	fmul	%f1, %f1, %f2  #2116 pc 27376
	fadd	%f0, %f0, %f1  #2116 pc 27380
	fsub	%f0, %f30, %f0  #2116 pc 27384
	fmv	%f1, l.21722  #0 pc 27388
	fle	%x31, %f0, %f1  #2116 pc 27392
	blt	%x0, %x31, 12  #2116 pc 27396
	j	fble_else.25863 #pc 27400
	nop #pc 27404
	addi	%x6, %x0, 0  #0 pc 27408
	j	fble_cont.25864 #pc 27412
	nop #pc 27416
fble_else.25863: #pc 27420
	addi	%x6, %x0, 1  #0 pc 27420
fble_cont.25864: #pc 27424
	beq	%x6, %x0, 12  #2116 pc 27424
	j	be_else.25865 #pc 27428
	nop #pc 27432
	fmv	%f0, l.21722  #0 pc 27436
	j	be_cont.25866 #pc 27440
	nop #pc 27444
be_else.25865: #pc 27448
be_cont.25866: #pc 27448
	flw	%f1, 24(%x2)  #2116 pc 27448
	fmul	%f0, %f1, %f0  #2116 pc 27452
	lw	%x6, 76(%x2)  #2116 pc 27456
	lw	%x6, 28(%x6)  #2116 pc 27460
	flw	%f1, 0(%x6)  #2116 pc 27464
	fmul	%f0, %f0, %f1  #2116 pc 27468
	lw	%x6, 20(%x2)  #2116 pc 27472
	flw	%f1, 0(%x6)  #2116 pc 27476
	lw	%x7, 44(%x2)  #2116 pc 27480
	flw	%f2, 0(%x7)  #2116 pc 27484
	fmul	%f2, %f0, %f2  #2116 pc 27488
	fadd	%f1, %f1, %f2  #2116 pc 27492
	fsw	%f1, 0(%x6)  #2116 pc 27496
	flw	%f1, 4(%x6)  #2116 pc 27500
	flw	%f2, 4(%x7)  #2116 pc 27504
	fmul	%f2, %f0, %f2  #2116 pc 27508
	fadd	%f1, %f1, %f2  #2116 pc 27512
	fsw	%f1, 4(%x6)  #2116 pc 27516
	flw	%f1, 8(%x6)  #2116 pc 27520
	flw	%f2, 8(%x7)  #2116 pc 27524
	fmul	%f0, %f0, %f2  #2116 pc 27528
	fadd	%f0, %f1, %f0  #2116 pc 27532
	fsw	%f0, 8(%x6)  #2116 pc 27536
	j	be_cont.25862 #pc 27540
	nop #pc 27544
be_else.25861: #pc 27548
be_cont.25862: #pc 27548
be_cont.25800: #pc 27548
	j	be_cont.25792 #pc 27548
	nop #pc 27552
be_else.25791: #pc 27556
	addi	%x22, %x9, 1  #2114 pc 27556
	slli	%x22, %x22, 2  #2114 pc 27560
	add	%x31, %x22, %x6  #2114 pc 27564
	lw	%x22, 0(%x31)  #2114 pc 27568
	fmv	%f1, l.22766  #0 pc 27572
	fdiv	%f0, %f0, %f1  #2114 pc 27576
	fmv	%f1, l.22439  #0 pc 27580
	fsw	%f1, 0(%x17)  #2114 pc 27584
	addi	%x23, %x0, 0  #0 pc 27588
	lw	%x24, 0(%x13)  #2114 pc 27592
	sw	%x21, 20(%x2)  #2114 pc 27596
	fsw	%f0, 80(%x2)  #2114 pc 27600
	sw	%x16, 32(%x2)  #2114 pc 27604
	sw	%x11, 36(%x2)  #2114 pc 27608
	sw	%x13, 40(%x2)  #2114 pc 27612
	sw	%x20, 44(%x2)  #2114 pc 27616
	sw	%x18, 48(%x2)  #2114 pc 27620
	sw	%x19, 52(%x2)  #2114 pc 27624
	sw	%x14, 56(%x2)  #2114 pc 27628
	sw	%x22, 88(%x2)  #2114 pc 27632
	sw	%x12, 64(%x2)  #2114 pc 27636
	sw	%x15, 68(%x2)  #2114 pc 27640
	sw	%x17, 72(%x2)  #2114 pc 27644
	addi	%x8, %x22, 0  #0 pc 27648
	addi	%x7, %x24, 0  #0 pc 27652
	addi	%x6, %x23, 0  #0 pc 27656
	addi	%x29, %x10, 0  #0 pc 27660
	sw	%x1, 92(%x2)  #2114 pc 27664
	lw	%x30, 0(%x29)  #2114 pc 27668
	addi	%x2, %x2, 96  #2114 pc 27672
	jalr	%x1, %x30, 0  #2114 pc 27676
	addi	%x2, %x2, -96  #2114 pc 27680
	lw	%x1, 92(%x2)  #2114 pc 27684
	lw	%x6, 72(%x2)  #2114 pc 27688
	flw	%f0, 0(%x6)  #2114 pc 27692
	fmv	%f1, l.22132  #0 pc 27696
	fle	%x31, %f0, %f1  #2114 pc 27700
	blt	%x0, %x31, 12  #2114 pc 27704
	j	fble_else.25867 #pc 27708
	nop #pc 27712
	addi	%x6, %x0, 0  #0 pc 27716
	j	fble_cont.25868 #pc 27720
	nop #pc 27724
fble_else.25867: #pc 27728
	addi	%x6, %x0, 1  #0 pc 27728
fble_cont.25868: #pc 27732
	beq	%x6, %x0, 12  #2114 pc 27732
	j	be_else.25869 #pc 27736
	nop #pc 27740
	addi	%x6, %x0, 0  #0 pc 27744
	j	be_cont.25870 #pc 27748
	nop #pc 27752
be_else.25869: #pc 27756
	fmv	%f1, l.22445  #0 pc 27756
	fle	%x31, %f1, %f0  #2114 pc 27760
	blt	%x0, %x31, 12  #2114 pc 27764
	j	fble_else.25871 #pc 27768
	nop #pc 27772
	addi	%x6, %x0, 0  #0 pc 27776
	j	fble_cont.25872 #pc 27780
	nop #pc 27784
fble_else.25871: #pc 27788
	addi	%x6, %x0, 1  #0 pc 27788
fble_cont.25872: #pc 27792
be_cont.25870: #pc 27792
	beq	%x6, %x0, 12  #2114 pc 27792
	j	be_else.25873 #pc 27796
	nop #pc 27800
	j	be_cont.25874 #pc 27804
	nop #pc 27808
be_else.25873: #pc 27812
	lw	%x6, 68(%x2)  #2114 pc 27812
	lw	%x6, 0(%x6)  #2114 pc 27816
	slli	%x6, %x6, 2  #2114 pc 27820
	lw	%x7, 64(%x2)  #2114 pc 27824
	add	%x31, %x6, %x7  #2114 pc 27828
	lw	%x6, 0(%x31)  #2114 pc 27832
	lw	%x7, 88(%x2)  #2114 pc 27836
	lw	%x7, 0(%x7)  #2114 pc 27840
	lw	%x8, 4(%x6)  #2114 pc 27844
	addi	%x31, %x0, 1  #pc 27848
	beq	%x8, %x31, 12  #2114 pc 27852
	j	be_else.25875 #pc 27856
	nop #pc 27860
	lw	%x8, 56(%x2)  #2114 pc 27864
	lw	%x8, 0(%x8)  #2114 pc 27868
	fmv	%f0, l.21722  #0 pc 27872
	lw	%x9, 52(%x2)  #2114 pc 27876
	fsw	%f0, 0(%x9)  #2114 pc 27880
	fsw	%f0, 4(%x9)  #2114 pc 27884
	fsw	%f0, 8(%x9)  #2114 pc 27888
	addi	%x10, %x8, -1  #2114 pc 27892
	addi	%x8, %x8, -1  #2114 pc 27896
	slli	%x8, %x8, 2  #2114 pc 27900
	add	%x31, %x8, %x7  #2114 pc 27904
	flw	%f0, 0(%x31)  #2114 pc 27908
	fmv	%f1, l.21722  #0 pc 27912
	feq	%x31, %f0, %f1  #2114 pc 27916
	blt	%x0, %x31, 12  #2114 pc 27920
	j	fbe_else.25877 #pc 27924
	nop #pc 27928
	addi	%x7, %x0, 1  #0 pc 27932
	j	fbe_cont.25878 #pc 27936
	nop #pc 27940
fbe_else.25877: #pc 27944
	addi	%x7, %x0, 0  #0 pc 27944
fbe_cont.25878: #pc 27948
	beq	%x7, %x0, 12  #2114 pc 27948
	j	be_else.25879 #pc 27952
	nop #pc 27956
	fmv	%f1, l.21722  #0 pc 27960
	fle	%x31, %f0, %f1  #2114 pc 27964
	blt	%x0, %x31, 12  #2114 pc 27968
	j	fble_else.25881 #pc 27972
	nop #pc 27976
	addi	%x7, %x0, 0  #0 pc 27980
	j	fble_cont.25882 #pc 27984
	nop #pc 27988
fble_else.25881: #pc 27992
	addi	%x7, %x0, 1  #0 pc 27992
fble_cont.25882: #pc 27996
	beq	%x7, %x0, 12  #2114 pc 27996
	j	be_else.25883 #pc 28000
	nop #pc 28004
	fmv	%f0, l.21791  #0 pc 28008
	j	be_cont.25884 #pc 28012
	nop #pc 28016
be_else.25883: #pc 28020
	fmv	%f0, l.21731  #0 pc 28020
be_cont.25884: #pc 28024
	j	be_cont.25880 #pc 28024
	nop #pc 28028
be_else.25879: #pc 28032
	fmv	%f0, l.21722  #0 pc 28032
be_cont.25880: #pc 28036
	fsub	%f0, %f30, %f0  #2114 pc 28036
	slli	%x7, %x10, 2  #2114 pc 28040
	add	%x31, %x7, %x9  #2114 pc 28044
	fsw	%f0, 0(%x31) #2114 pc 28048
	j	be_cont.25876 #pc 28052
	nop #pc 28056
be_else.25875: #pc 28060
	addi	%x31, %x0, 2  #pc 28060
	beq	%x8, %x31, 12  #2114 pc 28064
	j	be_else.25885 #pc 28068
	nop #pc 28072
	lw	%x7, 16(%x6)  #2114 pc 28076
	flw	%f0, 0(%x7)  #2114 pc 28080
	fsub	%f0, %f30, %f0  #2114 pc 28084
	lw	%x7, 52(%x2)  #2114 pc 28088
	fsw	%f0, 0(%x7)  #2114 pc 28092
	lw	%x8, 16(%x6)  #2114 pc 28096
	flw	%f0, 4(%x8)  #2114 pc 28100
	fsub	%f0, %f30, %f0  #2114 pc 28104
	fsw	%f0, 4(%x7)  #2114 pc 28108
	lw	%x8, 16(%x6)  #2114 pc 28112
	flw	%f0, 8(%x8)  #2114 pc 28116
	fsub	%f0, %f30, %f0  #2114 pc 28120
	fsw	%f0, 8(%x7)  #2114 pc 28124
	j	be_cont.25886 #pc 28128
	nop #pc 28132
be_else.25885: #pc 28136
	lw	%x7, 48(%x2)  #2114 pc 28136
	flw	%f0, 0(%x7)  #2114 pc 28140
	lw	%x8, 20(%x6)  #2114 pc 28144
	flw	%f1, 0(%x8)  #2114 pc 28148
	fsub	%f0, %f0, %f1  #2114 pc 28152
	flw	%f1, 4(%x7)  #2114 pc 28156
	lw	%x8, 20(%x6)  #2114 pc 28160
	flw	%f2, 4(%x8)  #2114 pc 28164
	fsub	%f1, %f1, %f2  #2114 pc 28168
	flw	%f2, 8(%x7)  #2114 pc 28172
	lw	%x8, 20(%x6)  #2114 pc 28176
	flw	%f3, 8(%x8)  #2114 pc 28180
	fsub	%f2, %f2, %f3  #2114 pc 28184
	lw	%x8, 16(%x6)  #2114 pc 28188
	flw	%f3, 0(%x8)  #2114 pc 28192
	fmul	%f3, %f0, %f3  #2114 pc 28196
	lw	%x8, 16(%x6)  #2114 pc 28200
	flw	%f4, 4(%x8)  #2114 pc 28204
	fmul	%f4, %f1, %f4  #2114 pc 28208
	lw	%x8, 16(%x6)  #2114 pc 28212
	flw	%f5, 8(%x8)  #2114 pc 28216
	fmul	%f5, %f2, %f5  #2114 pc 28220
	lw	%x8, 12(%x6)  #2114 pc 28224
	beq	%x8, %x0, 12  #2114 pc 28228
	j	be_else.25887 #pc 28232
	nop #pc 28236
	lw	%x8, 52(%x2)  #2114 pc 28240
	fsw	%f3, 0(%x8)  #2114 pc 28244
	fsw	%f4, 4(%x8)  #2114 pc 28248
	fsw	%f5, 8(%x8)  #2114 pc 28252
	j	be_cont.25888 #pc 28256
	nop #pc 28260
be_else.25887: #pc 28264
	lw	%x8, 36(%x6)  #2114 pc 28264
	flw	%f6, 8(%x8)  #2114 pc 28268
	fmul	%f6, %f1, %f6  #2114 pc 28272
	lw	%x8, 36(%x6)  #2114 pc 28276
	flw	%f7, 4(%x8)  #2114 pc 28280
	fmul	%f7, %f2, %f7  #2114 pc 28284
	fadd	%f6, %f6, %f7  #2114 pc 28288
	fmv	%f7, l.21733  #0 pc 28292
	fmul	%f6, %f7, %f6  #2114 pc 28296
	fadd	%f3, %f3, %f6  #2114 pc 28300
	lw	%x8, 52(%x2)  #2114 pc 28304
	fsw	%f3, 0(%x8)  #2114 pc 28308
	lw	%x9, 36(%x6)  #2114 pc 28312
	flw	%f3, 8(%x9)  #2114 pc 28316
	fmul	%f3, %f0, %f3  #2114 pc 28320
	lw	%x9, 36(%x6)  #2114 pc 28324
	flw	%f6, 0(%x9)  #2114 pc 28328
	fmul	%f2, %f2, %f6  #2114 pc 28332
	fadd	%f2, %f3, %f2  #2114 pc 28336
	fmv	%f3, l.21733  #0 pc 28340
	fmul	%f2, %f3, %f2  #2114 pc 28344
	fadd	%f2, %f4, %f2  #2114 pc 28348
	fsw	%f2, 4(%x8)  #2114 pc 28352
	lw	%x9, 36(%x6)  #2114 pc 28356
	flw	%f2, 4(%x9)  #2114 pc 28360
	fmul	%f0, %f0, %f2  #2114 pc 28364
	lw	%x9, 36(%x6)  #2114 pc 28368
	flw	%f2, 0(%x9)  #2114 pc 28372
	fmul	%f1, %f1, %f2  #2114 pc 28376
	fadd	%f0, %f0, %f1  #2114 pc 28380
	fmv	%f1, l.21733  #0 pc 28384
	fmul	%f0, %f1, %f0  #2114 pc 28388
	fadd	%f0, %f5, %f0  #2114 pc 28392
	fsw	%f0, 8(%x8)  #2114 pc 28396
be_cont.25888: #pc 28400
	lw	%x9, 24(%x6)  #2114 pc 28400
	flw	%f0, 0(%x8)  #2114 pc 28404
	fmul	%f0, %f0, %f0  #2114 pc 28408
	flw	%f1, 4(%x8)  #2114 pc 28412
	fmul	%f1, %f1, %f1  #2114 pc 28416
	fadd	%f0, %f0, %f1  #2114 pc 28420
	flw	%f1, 8(%x8)  #2114 pc 28424
	fmul	%f1, %f1, %f1  #2114 pc 28428
	fadd	%f0, %f0, %f1  #2114 pc 28432
	fsqrt	%f0, %f0  #2114 pc 28436
	fmv	%f1, l.21722  #0 pc 28440
	feq	%x31, %f0, %f1  #2114 pc 28444
	blt	%x0, %x31, 12  #2114 pc 28448
	j	fbe_else.25889 #pc 28452
	nop #pc 28456
	addi	%x10, %x0, 1  #0 pc 28460
	j	fbe_cont.25890 #pc 28464
	nop #pc 28468
fbe_else.25889: #pc 28472
	addi	%x10, %x0, 0  #0 pc 28472
fbe_cont.25890: #pc 28476
	beq	%x10, %x0, 12  #2114 pc 28476
	j	be_else.25891 #pc 28480
	nop #pc 28484
	beq	%x9, %x0, 12  #2114 pc 28488
	j	be_else.25893 #pc 28492
	nop #pc 28496
	fmv	%f1, l.21731  #0 pc 28500
	fdiv	%f0, %f1, %f0  #2114 pc 28504
	j	be_cont.25894 #pc 28508
	nop #pc 28512
be_else.25893: #pc 28516
	fmv	%f1, l.21791  #0 pc 28516
	fdiv	%f0, %f1, %f0  #2114 pc 28520
be_cont.25894: #pc 28524
	j	be_cont.25892 #pc 28524
	nop #pc 28528
be_else.25891: #pc 28532
	fmv	%f0, l.21731  #0 pc 28532
be_cont.25892: #pc 28536
	flw	%f1, 0(%x8)  #2114 pc 28536
	fmul	%f1, %f1, %f0  #2114 pc 28540
	fsw	%f1, 0(%x8)  #2114 pc 28544
	flw	%f1, 4(%x8)  #2114 pc 28548
	fmul	%f1, %f1, %f0  #2114 pc 28552
	fsw	%f1, 4(%x8)  #2114 pc 28556
	flw	%f1, 8(%x8)  #2114 pc 28560
	fmul	%f0, %f1, %f0  #2114 pc 28564
	fsw	%f0, 8(%x8)  #2114 pc 28568
be_cont.25886: #pc 28572
be_cont.25876: #pc 28572
	lw	%x7, 0(%x6)  #2114 pc 28572
	lw	%x8, 32(%x6)  #2114 pc 28576
	flw	%f0, 0(%x8)  #2114 pc 28580
	lw	%x8, 44(%x2)  #2114 pc 28584
	fsw	%f0, 0(%x8)  #2114 pc 28588
	lw	%x9, 32(%x6)  #2114 pc 28592
	flw	%f0, 4(%x9)  #2114 pc 28596
	fsw	%f0, 4(%x8)  #2114 pc 28600
	lw	%x9, 32(%x6)  #2114 pc 28604
	flw	%f0, 8(%x9)  #2114 pc 28608
	fsw	%f0, 8(%x8)  #2114 pc 28612
	sw	%x6, 92(%x2)  #2114 pc 28616
	addi	%x31, %x0, 1  #pc 28620
	beq	%x7, %x31, 12  #2114 pc 28624
	j	be_else.25895 #pc 28628
	nop #pc 28632
	lw	%x7, 48(%x2)  #2114 pc 28636
	flw	%f0, 0(%x7)  #2114 pc 28640
	lw	%x9, 20(%x6)  #2114 pc 28644
	flw	%f1, 0(%x9)  #2114 pc 28648
	fsub	%f0, %f0, %f1  #2114 pc 28652
	fmv	%f1, l.22627  #0 pc 28656
	fmul	%f1, %f0, %f1  #2114 pc 28660
	ftoi	%x9, %f1  #2114 pc 28664
	itof	%f2, %x9  #2114 pc 28668
	fle	%x31, %f2, %f1  #2114 pc 28672
	blt	%x0, %x31, 12  #2114 pc 28676
	j	fble_else.25897 #pc 28680
	nop #pc 28684
	fadd	%f1, %f2, %f30  #2114 pc 28688
	j	fble_cont.25898 #pc 28692
	nop #pc 28696
fble_else.25897: #pc 28700
	fmv	%f1, l.21731  #0 pc 28700
	fsub	%f1, %f2, %f1  #2114 pc 28704
fble_cont.25898: #pc 28708
	fmv	%f2, l.22630  #0 pc 28708
	fmul	%f1, %f1, %f2  #2114 pc 28712
	fsub	%f0, %f0, %f1  #2114 pc 28716
	fmv	%f1, l.22608  #0 pc 28720
	fle	%x31, %f1, %f0  #2114 pc 28724
	blt	%x0, %x31, 12  #2114 pc 28728
	j	fble_else.25899 #pc 28732
	nop #pc 28736
	addi	%x9, %x0, 0  #0 pc 28740
	j	fble_cont.25900 #pc 28744
	nop #pc 28748
fble_else.25899: #pc 28752
	addi	%x9, %x0, 1  #0 pc 28752
fble_cont.25900: #pc 28756
	flw	%f0, 8(%x7)  #2114 pc 28756
	lw	%x7, 20(%x6)  #2114 pc 28760
	flw	%f1, 8(%x7)  #2114 pc 28764
	fsub	%f0, %f0, %f1  #2114 pc 28768
	fmv	%f1, l.22627  #0 pc 28772
	fmul	%f1, %f0, %f1  #2114 pc 28776
	ftoi	%x7, %f1  #2114 pc 28780
	itof	%f2, %x7  #2114 pc 28784
	fle	%x31, %f2, %f1  #2114 pc 28788
	blt	%x0, %x31, 12  #2114 pc 28792
	j	fble_else.25901 #pc 28796
	nop #pc 28800
	fadd	%f1, %f2, %f30  #2114 pc 28804
	j	fble_cont.25902 #pc 28808
	nop #pc 28812
fble_else.25901: #pc 28816
	fmv	%f1, l.21731  #0 pc 28816
	fsub	%f1, %f2, %f1  #2114 pc 28820
fble_cont.25902: #pc 28824
	fmv	%f2, l.22630  #0 pc 28824
	fmul	%f1, %f1, %f2  #2114 pc 28828
	fsub	%f0, %f0, %f1  #2114 pc 28832
	fmv	%f1, l.22608  #0 pc 28836
	fle	%x31, %f1, %f0  #2114 pc 28840
	blt	%x0, %x31, 12  #2114 pc 28844
	j	fble_else.25903 #pc 28848
	nop #pc 28852
	addi	%x7, %x0, 0  #0 pc 28856
	j	fble_cont.25904 #pc 28860
	nop #pc 28864
fble_else.25903: #pc 28868
	addi	%x7, %x0, 1  #0 pc 28868
fble_cont.25904: #pc 28872
	beq	%x9, %x0, 12  #2114 pc 28872
	j	be_else.25905 #pc 28876
	nop #pc 28880
	beq	%x7, %x0, 12  #2114 pc 28884
	j	be_else.25907 #pc 28888
	nop #pc 28892
	fmv	%f0, l.22599  #0 pc 28896
	j	be_cont.25908 #pc 28900
	nop #pc 28904
be_else.25907: #pc 28908
	fmv	%f0, l.21722  #0 pc 28908
be_cont.25908: #pc 28912
	j	be_cont.25906 #pc 28912
	nop #pc 28916
be_else.25905: #pc 28920
	beq	%x7, %x0, 12  #2114 pc 28920
	j	be_else.25909 #pc 28924
	nop #pc 28928
	fmv	%f0, l.21722  #0 pc 28932
	j	be_cont.25910 #pc 28936
	nop #pc 28940
be_else.25909: #pc 28944
	fmv	%f0, l.22599  #0 pc 28944
be_cont.25910: #pc 28948
be_cont.25906: #pc 28948
	fsw	%f0, 4(%x8)  #2114 pc 28948
	j	be_cont.25896 #pc 28952
	nop #pc 28956
be_else.25895: #pc 28960
	addi	%x31, %x0, 2  #pc 28960
	beq	%x7, %x31, 12  #2114 pc 28964
	j	be_else.25911 #pc 28968
	nop #pc 28972
	lw	%x7, 48(%x2)  #2114 pc 28976
	flw	%f0, 4(%x7)  #2114 pc 28980
	fmv	%f1, l.22618  #0 pc 28984
	fmul	%f0, %f0, %f1  #2114 pc 28988
	sw	%x1, 96(%x2)  #2114 pc 28992
	addi	%x2, %x2, 100  #2114 pc 28996
	jal	%x1, sin.2526  #2114 pc 29000
	addi	%x2, %x2, -100  #2114 pc 29004
	lw	%x1, 96(%x2) #2114 pc 29008
	fmul	%f0, %f0, %f0  #2114 pc 29012
	fmv	%f1, l.22599  #0 pc 29016
	fmul	%f1, %f1, %f0  #2114 pc 29020
	lw	%x6, 44(%x2)  #2114 pc 29024
	fsw	%f1, 0(%x6)  #2114 pc 29028
	fmv	%f1, l.22599  #0 pc 29032
	fmv	%f2, l.21731  #0 pc 29036
	fsub	%f0, %f2, %f0  #2114 pc 29040
	fmul	%f0, %f1, %f0  #2114 pc 29044
	fsw	%f0, 4(%x6)  #2114 pc 29048
	j	be_cont.25912 #pc 29052
	nop #pc 29056
be_else.25911: #pc 29060
	addi	%x31, %x0, 3  #pc 29060
	beq	%x7, %x31, 12  #2114 pc 29064
	j	be_else.25913 #pc 29068
	nop #pc 29072
	lw	%x7, 48(%x2)  #2114 pc 29076
	flw	%f0, 0(%x7)  #2114 pc 29080
	lw	%x9, 20(%x6)  #2114 pc 29084
	flw	%f1, 0(%x9)  #2114 pc 29088
	fsub	%f0, %f0, %f1  #2114 pc 29092
	flw	%f1, 8(%x7)  #2114 pc 29096
	lw	%x7, 20(%x6)  #2114 pc 29100
	flw	%f2, 8(%x7)  #2114 pc 29104
	fsub	%f1, %f1, %f2  #2114 pc 29108
	fmul	%f0, %f0, %f0  #2114 pc 29112
	fmul	%f1, %f1, %f1  #2114 pc 29116
	fadd	%f0, %f0, %f1  #2114 pc 29120
	fmv	%f1, l.22608  #0 pc 29124
	fdiv	%f0, %f0, %f1  #2114 pc 29128
	fsqrt	%f0, %f0  #2114 pc 29132
	ftoi	%x7, %f0  #2114 pc 29136
	itof	%f1, %x7  #2114 pc 29140
	fle	%x31, %f1, %f0  #2114 pc 29144
	blt	%x0, %x31, 12  #2114 pc 29148
	j	fble_else.25915 #pc 29152
	nop #pc 29156
	j	fble_cont.25916 #pc 29160
	nop #pc 29164
fble_else.25915: #pc 29168
	fmv	%f2, l.21731  #0 pc 29168
	fsub	%f1, %f1, %f2  #2114 pc 29172
fble_cont.25916: #pc 29176
	fsub	%f0, %f0, %f1  #2114 pc 29176
	fmv	%f1, l.22577  #0 pc 29180
	fmul	%f0, %f0, %f1  #2114 pc 29184
	sw	%x1, 96(%x2)  #2114 pc 29188
	addi	%x2, %x2, 100  #2114 pc 29192
	jal	%x1, cos.2530  #2114 pc 29196
	addi	%x2, %x2, -100  #2114 pc 29200
	lw	%x1, 96(%x2) #2114 pc 29204
	fmul	%f0, %f0, %f0  #2114 pc 29208
	fmv	%f1, l.22599  #0 pc 29212
	fmul	%f1, %f0, %f1  #2114 pc 29216
	lw	%x6, 44(%x2)  #2114 pc 29220
	fsw	%f1, 4(%x6)  #2114 pc 29224
	fmv	%f1, l.21731  #0 pc 29228
	fsub	%f0, %f1, %f0  #2114 pc 29232
	fmv	%f1, l.22599  #0 pc 29236
	fmul	%f0, %f0, %f1  #2114 pc 29240
	fsw	%f0, 8(%x6)  #2114 pc 29244
	j	be_cont.25914 #pc 29248
	nop #pc 29252
be_else.25913: #pc 29256
	addi	%x31, %x0, 4  #pc 29256
	beq	%x7, %x31, 12  #2114 pc 29260
	j	be_else.25917 #pc 29264
	nop #pc 29268
	lw	%x7, 48(%x2)  #2114 pc 29272
	flw	%f0, 0(%x7)  #2114 pc 29276
	lw	%x9, 20(%x6)  #2114 pc 29280
	flw	%f1, 0(%x9)  #2114 pc 29284
	fsub	%f0, %f0, %f1  #2114 pc 29288
	lw	%x9, 16(%x6)  #2114 pc 29292
	flw	%f1, 0(%x9)  #2114 pc 29296
	fsqrt	%f1, %f1  #2114 pc 29300
	fmul	%f0, %f0, %f1  #2114 pc 29304
	flw	%f1, 8(%x7)  #2114 pc 29308
	lw	%x9, 20(%x6)  #2114 pc 29312
	flw	%f2, 8(%x9)  #2114 pc 29316
	fsub	%f1, %f1, %f2  #2114 pc 29320
	lw	%x9, 16(%x6)  #2114 pc 29324
	flw	%f2, 8(%x9)  #2114 pc 29328
	fsqrt	%f2, %f2  #2114 pc 29332
	fmul	%f1, %f1, %f2  #2114 pc 29336
	fmul	%f2, %f0, %f0  #2114 pc 29340
	fmul	%f3, %f1, %f1  #2114 pc 29344
	fadd	%f2, %f2, %f3  #2114 pc 29348
	fabs	%f3, %f0  #2114 pc 29352
	fmv	%f4, l.22561  #0 pc 29356
	fle	%x31, %f4, %f3  #2114 pc 29360
	blt	%x0, %x31, 12  #2114 pc 29364
	j	fble_else.25919 #pc 29368
	nop #pc 29372
	addi	%x9, %x0, 0  #0 pc 29376
	j	fble_cont.25920 #pc 29380
	nop #pc 29384
fble_else.25919: #pc 29388
	addi	%x9, %x0, 1  #0 pc 29388
fble_cont.25920: #pc 29392
	beq	%x9, %x0, 12  #2114 pc 29392
	j	be_else.25921 #pc 29396
	nop #pc 29400
	fdiv	%f0, %f1, %f0  #2114 pc 29404
	fabs	%f0, %f0  #2114 pc 29408
	fmul	%f1, %f0, %f0  #2114 pc 29412
	fmul	%f3, %f0, %f1  #2114 pc 29416
	fmul	%f4, %f3, %f1  #2114 pc 29420
	fmul	%f5, %f4, %f1  #2114 pc 29424
	fmul	%f6, %f5, %f1  #2114 pc 29428
	fmul	%f1, %f6, %f1  #2114 pc 29432
	fmv	%f7, l.22565  #0 pc 29436
	fmul	%f3, %f7, %f3  #2114 pc 29440
	fsub	%f0, %f0, %f3  #2114 pc 29444
	fmv	%f3, l.22567  #0 pc 29448
	fmul	%f3, %f3, %f4  #2114 pc 29452
	fadd	%f0, %f0, %f3  #2114 pc 29456
	fmv	%f3, l.22569  #0 pc 29460
	fmul	%f3, %f3, %f5  #2114 pc 29464
	fsub	%f0, %f0, %f3  #2114 pc 29468
	fmv	%f3, l.22571  #0 pc 29472
	fmul	%f3, %f3, %f6  #2114 pc 29476
	fadd	%f0, %f0, %f3  #2114 pc 29480
	fmv	%f3, l.22573  #0 pc 29484
	fmul	%f1, %f3, %f1  #2114 pc 29488
	fsub	%f0, %f0, %f1  #2114 pc 29492
	fmv	%f1, l.22575  #0 pc 29496
	fmul	%f0, %f0, %f1  #2114 pc 29500
	fmv	%f1, l.22577  #0 pc 29504
	fdiv	%f0, %f0, %f1  #2114 pc 29508
	j	be_cont.25922 #pc 29512
	nop #pc 29516
be_else.25921: #pc 29520
	fmv	%f0, l.22563  #0 pc 29520
be_cont.25922: #pc 29524
	ftoi	%x9, %f0  #2114 pc 29524
	itof	%f1, %x9  #2114 pc 29528
	fle	%x31, %f1, %f0  #2114 pc 29532
	blt	%x0, %x31, 12  #2114 pc 29536
	j	fble_else.25923 #pc 29540
	nop #pc 29544
	j	fble_cont.25924 #pc 29548
	nop #pc 29552
fble_else.25923: #pc 29556
	fmv	%f3, l.21731  #0 pc 29556
	fsub	%f1, %f1, %f3  #2114 pc 29560
fble_cont.25924: #pc 29564
	fsub	%f0, %f0, %f1  #2114 pc 29564
	flw	%f1, 4(%x7)  #2114 pc 29568
	lw	%x7, 20(%x6)  #2114 pc 29572
	flw	%f3, 4(%x7)  #2114 pc 29576
	fsub	%f1, %f1, %f3  #2114 pc 29580
	lw	%x7, 16(%x6)  #2114 pc 29584
	flw	%f3, 4(%x7)  #2114 pc 29588
	fsqrt	%f3, %f3  #2114 pc 29592
	fmul	%f1, %f1, %f3  #2114 pc 29596
	fabs	%f3, %f2  #2114 pc 29600
	fmv	%f4, l.22561  #0 pc 29604
	fle	%x31, %f4, %f3  #2114 pc 29608
	blt	%x0, %x31, 12  #2114 pc 29612
	j	fble_else.25925 #pc 29616
	nop #pc 29620
	addi	%x7, %x0, 0  #0 pc 29624
	j	fble_cont.25926 #pc 29628
	nop #pc 29632
fble_else.25925: #pc 29636
	addi	%x7, %x0, 1  #0 pc 29636
fble_cont.25926: #pc 29640
	beq	%x7, %x0, 12  #2114 pc 29640
	j	be_else.25927 #pc 29644
	nop #pc 29648
	fdiv	%f1, %f1, %f2  #2114 pc 29652
	fabs	%f1, %f1  #2114 pc 29656
	fmul	%f2, %f1, %f1  #2114 pc 29660
	fmul	%f3, %f1, %f2  #2114 pc 29664
	fmul	%f4, %f3, %f2  #2114 pc 29668
	fmul	%f5, %f4, %f2  #2114 pc 29672
	fmul	%f6, %f5, %f2  #2114 pc 29676
	fmul	%f2, %f6, %f2  #2114 pc 29680
	fmv	%f7, l.22565  #0 pc 29684
	fmul	%f3, %f7, %f3  #2114 pc 29688
	fsub	%f1, %f1, %f3  #2114 pc 29692
	fmv	%f3, l.22567  #0 pc 29696
	fmul	%f3, %f3, %f4  #2114 pc 29700
	fadd	%f1, %f1, %f3  #2114 pc 29704
	fmv	%f3, l.22569  #0 pc 29708
	fmul	%f3, %f3, %f5  #2114 pc 29712
	fsub	%f1, %f1, %f3  #2114 pc 29716
	fmv	%f3, l.22571  #0 pc 29720
	fmul	%f3, %f3, %f6  #2114 pc 29724
	fadd	%f1, %f1, %f3  #2114 pc 29728
	fmv	%f3, l.22573  #0 pc 29732
	fmul	%f2, %f3, %f2  #2114 pc 29736
	fsub	%f1, %f1, %f2  #2114 pc 29740
	fmv	%f2, l.22575  #0 pc 29744
	fmul	%f1, %f1, %f2  #2114 pc 29748
	fmv	%f2, l.22577  #0 pc 29752
	fdiv	%f1, %f1, %f2  #2114 pc 29756
	j	be_cont.25928 #pc 29760
	nop #pc 29764
be_else.25927: #pc 29768
	fmv	%f1, l.22563  #0 pc 29768
be_cont.25928: #pc 29772
	ftoi	%x7, %f1  #2114 pc 29772
	itof	%f2, %x7  #2114 pc 29776
	fle	%x31, %f2, %f1  #2114 pc 29780
	blt	%x0, %x31, 12  #2114 pc 29784
	j	fble_else.25929 #pc 29788
	nop #pc 29792
	j	fble_cont.25930 #pc 29796
	nop #pc 29800
fble_else.25929: #pc 29804
	fmv	%f3, l.21731  #0 pc 29804
	fsub	%f2, %f2, %f3  #2114 pc 29808
fble_cont.25930: #pc 29812
	fsub	%f1, %f1, %f2  #2114 pc 29812
	fmv	%f2, l.22593  #0 pc 29816
	fmv	%f3, l.21733  #0 pc 29820
	fsub	%f0, %f3, %f0  #2114 pc 29824
	fmul	%f0, %f0, %f0  #2114 pc 29828
	fsub	%f0, %f2, %f0  #2114 pc 29832
	fmv	%f2, l.21733  #0 pc 29836
	fsub	%f1, %f2, %f1  #2114 pc 29840
	fmul	%f1, %f1, %f1  #2114 pc 29844
	fsub	%f0, %f0, %f1  #2114 pc 29848
	fmv	%f1, l.21722  #0 pc 29852
	fle	%x31, %f1, %f0  #2114 pc 29856
	blt	%x0, %x31, 12  #2114 pc 29860
	j	fble_else.25931 #pc 29864
	nop #pc 29868
	addi	%x7, %x0, 0  #0 pc 29872
	j	fble_cont.25932 #pc 29876
	nop #pc 29880
fble_else.25931: #pc 29884
	addi	%x7, %x0, 1  #0 pc 29884
fble_cont.25932: #pc 29888
	beq	%x7, %x0, 12  #2114 pc 29888
	j	be_else.25933 #pc 29892
	nop #pc 29896
	j	be_cont.25934 #pc 29900
	nop #pc 29904
be_else.25933: #pc 29908
	fmv	%f0, l.21722  #0 pc 29908
be_cont.25934: #pc 29912
	fmv	%f1, l.22599  #0 pc 29912
	fmul	%f0, %f1, %f0  #2114 pc 29916
	fmv	%f1, l.22601  #0 pc 29920
	fdiv	%f0, %f0, %f1  #2114 pc 29924
	fsw	%f0, 8(%x8)  #2114 pc 29928
	j	be_cont.25918 #pc 29932
	nop #pc 29936
be_else.25917: #pc 29940
be_cont.25918: #pc 29940
be_cont.25914: #pc 29940
be_cont.25912: #pc 29940
be_cont.25896: #pc 29940
	addi	%x6, %x0, 0  #0 pc 29940
	lw	%x7, 40(%x2)  #2114 pc 29944
	lw	%x7, 0(%x7)  #2114 pc 29948
	lw	%x29, 36(%x2)  #2114 pc 29952
	sw	%x1, 96(%x2)  #2114 pc 29956
	lw	%x30, 0(%x29)  #2114 pc 29960
	addi	%x2, %x2, 100  #2114 pc 29964
	jalr	%x1, %x30, 0  #2114 pc 29968
	addi	%x2, %x2, -100  #2114 pc 29972
	lw	%x1, 96(%x2)  #2114 pc 29976
	beq	%x6, %x0, 12  #2114 pc 29980
	j	be_else.25935 #pc 29984
	nop #pc 29988
	lw	%x6, 52(%x2)  #2114 pc 29992
	flw	%f0, 0(%x6)  #2114 pc 29996
	lw	%x7, 32(%x2)  #2114 pc 30000
	flw	%f1, 0(%x7)  #2114 pc 30004
	fmul	%f0, %f0, %f1  #2114 pc 30008
	flw	%f1, 4(%x6)  #2114 pc 30012
	flw	%f2, 4(%x7)  #2114 pc 30016
	fmul	%f1, %f1, %f2  #2114 pc 30020
	fadd	%f0, %f0, %f1  #2114 pc 30024
	flw	%f1, 8(%x6)  #2114 pc 30028
	flw	%f2, 8(%x7)  #2114 pc 30032
	fmul	%f1, %f1, %f2  #2114 pc 30036
	fadd	%f0, %f0, %f1  #2114 pc 30040
	fsub	%f0, %f30, %f0  #2114 pc 30044
	fmv	%f1, l.21722  #0 pc 30048
	fle	%x31, %f0, %f1  #2114 pc 30052
	blt	%x0, %x31, 12  #2114 pc 30056
	j	fble_else.25937 #pc 30060
	nop #pc 30064
	addi	%x6, %x0, 0  #0 pc 30068
	j	fble_cont.25938 #pc 30072
	nop #pc 30076
fble_else.25937: #pc 30080
	addi	%x6, %x0, 1  #0 pc 30080
fble_cont.25938: #pc 30084
	beq	%x6, %x0, 12  #2114 pc 30084
	j	be_else.25939 #pc 30088
	nop #pc 30092
	fmv	%f0, l.21722  #0 pc 30096
	j	be_cont.25940 #pc 30100
	nop #pc 30104
be_else.25939: #pc 30108
be_cont.25940: #pc 30108
	flw	%f1, 80(%x2)  #2114 pc 30108
	fmul	%f0, %f1, %f0  #2114 pc 30112
	lw	%x6, 92(%x2)  #2114 pc 30116
	lw	%x6, 28(%x6)  #2114 pc 30120
	flw	%f1, 0(%x6)  #2114 pc 30124
	fmul	%f0, %f0, %f1  #2114 pc 30128
	lw	%x6, 20(%x2)  #2114 pc 30132
	flw	%f1, 0(%x6)  #2114 pc 30136
	lw	%x7, 44(%x2)  #2114 pc 30140
	flw	%f2, 0(%x7)  #2114 pc 30144
	fmul	%f2, %f0, %f2  #2114 pc 30148
	fadd	%f1, %f1, %f2  #2114 pc 30152
	fsw	%f1, 0(%x6)  #2114 pc 30156
	flw	%f1, 4(%x6)  #2114 pc 30160
	flw	%f2, 4(%x7)  #2114 pc 30164
	fmul	%f2, %f0, %f2  #2114 pc 30168
	fadd	%f1, %f1, %f2  #2114 pc 30172
	fsw	%f1, 4(%x6)  #2114 pc 30176
	flw	%f1, 8(%x6)  #2114 pc 30180
	flw	%f2, 8(%x7)  #2114 pc 30184
	fmul	%f0, %f0, %f2  #2114 pc 30188
	fadd	%f0, %f1, %f0  #2114 pc 30192
	fsw	%f0, 8(%x6)  #2114 pc 30196
	j	be_cont.25936 #pc 30200
	nop #pc 30204
be_else.25935: #pc 30208
be_cont.25936: #pc 30208
be_cont.25874: #pc 30208
be_cont.25792: #pc 30208
	lw	%x6, 16(%x2)  #2118 pc 30208
	addi	%x9, %x6, -2  #2118 pc 30212
	lw	%x6, 8(%x2)  #2118 pc 30216
	lw	%x7, 4(%x2)  #2118 pc 30220
	lw	%x8, 0(%x2)  #2118 pc 30224
	lw	%x29, 12(%x2)  #2118 pc 30228
	lw	%x30, 0(%x29)  #2118 pc 30232
	jalr	%x0, %x30, 0  #2118 pc 30236
	nop #pc 30240
bge_else.25788: #pc 30244
	ret #pc 30244
	nop #pc 30248
do_without_neighbors.2971:  #pc 30252
	lw	%x8, 28(%x29)  #0 pc 30252
	lw	%x9, 24(%x29)  #0 pc 30256
	lw	%x10, 20(%x29)  #0 pc 30260
	lw	%x11, 16(%x29)  #0 pc 30264
	lw	%x12, 12(%x29)  #0 pc 30268
	lw	%x13, 8(%x29)  #0 pc 30272
	lw	%x14, 4(%x29)  #0 pc 30276
	addi	%x31, %x0, 4  #pc 30280
	bge	%x31, %x7, 12  #2199 pc 30284
	j	ble_else.25942 #pc 30288
	nop #pc 30292
	lw	%x15, 8(%x6)  #2201 pc 30296
	slli	%x16, %x7, 2  #2202 pc 30300
	add	%x31, %x16, %x15  #2202 pc 30304
	lw	%x15, 0(%x31)  #2202 pc 30308
	bge	%x15, %x0, 12  #2202 pc 30312
	j	bge_else.25943 #pc 30316
	nop #pc 30320
	lw	%x15, 12(%x6)  #2203 pc 30324
	slli	%x16, %x7, 2  #2204 pc 30328
	add	%x31, %x16, %x15  #2204 pc 30332
	lw	%x15, 0(%x31)  #2204 pc 30336
	sw	%x6, 0(%x2)  #2204 pc 30340
	sw	%x29, 4(%x2)  #2204 pc 30344
	sw	%x7, 8(%x2)  #2204 pc 30348
	beq	%x15, %x0, 12  #2204 pc 30352
	j	be_else.25944 #pc 30356
	nop #pc 30360
	j	be_cont.25945 #pc 30364
	nop #pc 30368
be_else.25944: #pc 30372
	lw	%x15, 20(%x6)  #2205 pc 30372
	lw	%x16, 28(%x6)  #2205 pc 30376
	lw	%x17, 4(%x6)  #2205 pc 30380
	lw	%x18, 16(%x6)  #2205 pc 30384
	slli	%x19, %x7, 2  #2205 pc 30388
	add	%x31, %x19, %x15  #2205 pc 30392
	lw	%x15, 0(%x31)  #2205 pc 30396
	flw	%f0, 0(%x15)  #2205 pc 30400
	fsw	%f0, 0(%x12)  #2205 pc 30404
	flw	%f0, 4(%x15)  #2205 pc 30408
	fsw	%f0, 4(%x12)  #2205 pc 30412
	flw	%f0, 8(%x15)  #2205 pc 30416
	fsw	%f0, 8(%x12)  #2205 pc 30420
	lw	%x15, 24(%x6)  #2205 pc 30424
	lw	%x15, 0(%x15)  #2205 pc 30428
	slli	%x19, %x7, 2  #2205 pc 30432
	add	%x31, %x19, %x16  #2205 pc 30436
	lw	%x16, 0(%x31)  #2205 pc 30440
	slli	%x19, %x7, 2  #2205 pc 30444
	add	%x31, %x19, %x17  #2205 pc 30448
	lw	%x17, 0(%x31)  #2205 pc 30452
	sw	%x12, 12(%x2)  #2205 pc 30456
	sw	%x13, 16(%x2)  #2205 pc 30460
	sw	%x18, 20(%x2)  #2205 pc 30464
	sw	%x16, 24(%x2)  #2205 pc 30468
	sw	%x9, 28(%x2)  #2205 pc 30472
	sw	%x8, 32(%x2)  #2205 pc 30476
	sw	%x10, 36(%x2)  #2205 pc 30480
	sw	%x14, 40(%x2)  #2205 pc 30484
	sw	%x17, 44(%x2)  #2205 pc 30488
	sw	%x11, 48(%x2)  #2205 pc 30492
	sw	%x15, 52(%x2)  #2205 pc 30496
	beq	%x15, %x0, 12  #2205 pc 30500
	j	be_else.25946 #pc 30504
	nop #pc 30508
	j	be_cont.25947 #pc 30512
	nop #pc 30516
be_else.25946: #pc 30520
	lw	%x19, 0(%x11)  #2205 pc 30520
	flw	%f0, 0(%x17)  #2205 pc 30524
	fsw	%f0, 0(%x14)  #2205 pc 30528
	flw	%f0, 4(%x17)  #2205 pc 30532
	fsw	%f0, 4(%x14)  #2205 pc 30536
	flw	%f0, 8(%x17)  #2205 pc 30540
	fsw	%f0, 8(%x14)  #2205 pc 30544
	lw	%x20, 0(%x10)  #2205 pc 30548
	addi	%x20, %x20, -1  #2205 pc 30552
	sw	%x19, 56(%x2)  #2205 pc 30556
	addi	%x7, %x20, 0  #0 pc 30560
	addi	%x6, %x17, 0  #0 pc 30564
	addi	%x29, %x8, 0  #0 pc 30568
	sw	%x1, 60(%x2)  #2205 pc 30572
	lw	%x30, 0(%x29)  #2205 pc 30576
	addi	%x2, %x2, 64  #2205 pc 30580
	jalr	%x1, %x30, 0  #2205 pc 30584
	addi	%x2, %x2, -64  #2205 pc 30588
	lw	%x1, 60(%x2)  #2205 pc 30592
	addi	%x9, %x0, 118  #0 pc 30596
	lw	%x6, 56(%x2)  #2205 pc 30600
	lw	%x7, 24(%x2)  #2205 pc 30604
	lw	%x8, 44(%x2)  #2205 pc 30608
	lw	%x29, 28(%x2)  #2205 pc 30612
	sw	%x1, 60(%x2)  #2205 pc 30616
	lw	%x30, 0(%x29)  #2205 pc 30620
	addi	%x2, %x2, 64  #2205 pc 30624
	jalr	%x1, %x30, 0  #2205 pc 30628
	addi	%x2, %x2, -64  #2205 pc 30632
	lw	%x1, 60(%x2)  #2205 pc 30636
be_cont.25947: #pc 30640
	lw	%x6, 52(%x2)  #2205 pc 30640
	addi	%x31, %x0, 1  #pc 30644
	beq	%x6, %x31, 12  #2205 pc 30648
	j	be_else.25948 #pc 30652
	nop #pc 30656
	j	be_cont.25949 #pc 30660
	nop #pc 30664
be_else.25948: #pc 30668
	lw	%x7, 48(%x2)  #2205 pc 30668
	lw	%x8, 4(%x7)  #2205 pc 30672
	lw	%x9, 44(%x2)  #2205 pc 30676
	flw	%f0, 0(%x9)  #2205 pc 30680
	lw	%x10, 40(%x2)  #2205 pc 30684
	fsw	%f0, 0(%x10)  #2205 pc 30688
	flw	%f0, 4(%x9)  #2205 pc 30692
	fsw	%f0, 4(%x10)  #2205 pc 30696
	flw	%f0, 8(%x9)  #2205 pc 30700
	fsw	%f0, 8(%x10)  #2205 pc 30704
	lw	%x11, 36(%x2)  #2205 pc 30708
	lw	%x12, 0(%x11)  #2205 pc 30712
	addi	%x12, %x12, -1  #2205 pc 30716
	lw	%x29, 32(%x2)  #2205 pc 30720
	sw	%x8, 60(%x2)  #2205 pc 30724
	addi	%x7, %x12, 0  #0 pc 30728
	addi	%x6, %x9, 0  #0 pc 30732
	sw	%x1, 64(%x2)  #2205 pc 30736
	lw	%x30, 0(%x29)  #2205 pc 30740
	addi	%x2, %x2, 68  #2205 pc 30744
	jalr	%x1, %x30, 0  #2205 pc 30748
	addi	%x2, %x2, -68  #2205 pc 30752
	lw	%x1, 64(%x2)  #2205 pc 30756
	addi	%x9, %x0, 118  #0 pc 30760
	lw	%x6, 60(%x2)  #2205 pc 30764
	lw	%x7, 24(%x2)  #2205 pc 30768
	lw	%x8, 44(%x2)  #2205 pc 30772
	lw	%x29, 28(%x2)  #2205 pc 30776
	sw	%x1, 64(%x2)  #2205 pc 30780
	lw	%x30, 0(%x29)  #2205 pc 30784
	addi	%x2, %x2, 68  #2205 pc 30788
	jalr	%x1, %x30, 0  #2205 pc 30792
	addi	%x2, %x2, -68  #2205 pc 30796
	lw	%x1, 64(%x2)  #2205 pc 30800
be_cont.25949: #pc 30804
	lw	%x6, 52(%x2)  #2205 pc 30804
	addi	%x31, %x0, 2  #pc 30808
	beq	%x6, %x31, 12  #2205 pc 30812
	j	be_else.25950 #pc 30816
	nop #pc 30820
	j	be_cont.25951 #pc 30824
	nop #pc 30828
be_else.25950: #pc 30832
	lw	%x7, 48(%x2)  #2205 pc 30832
	lw	%x8, 8(%x7)  #2205 pc 30836
	lw	%x9, 44(%x2)  #2205 pc 30840
	flw	%f0, 0(%x9)  #2205 pc 30844
	lw	%x10, 40(%x2)  #2205 pc 30848
	fsw	%f0, 0(%x10)  #2205 pc 30852
	flw	%f0, 4(%x9)  #2205 pc 30856
	fsw	%f0, 4(%x10)  #2205 pc 30860
	flw	%f0, 8(%x9)  #2205 pc 30864
	fsw	%f0, 8(%x10)  #2205 pc 30868
	lw	%x11, 36(%x2)  #2205 pc 30872
	lw	%x12, 0(%x11)  #2205 pc 30876
	addi	%x12, %x12, -1  #2205 pc 30880
	lw	%x29, 32(%x2)  #2205 pc 30884
	sw	%x8, 64(%x2)  #2205 pc 30888
	addi	%x7, %x12, 0  #0 pc 30892
	addi	%x6, %x9, 0  #0 pc 30896
	sw	%x1, 68(%x2)  #2205 pc 30900
	lw	%x30, 0(%x29)  #2205 pc 30904
	addi	%x2, %x2, 72  #2205 pc 30908
	jalr	%x1, %x30, 0  #2205 pc 30912
	addi	%x2, %x2, -72  #2205 pc 30916
	lw	%x1, 68(%x2)  #2205 pc 30920
	addi	%x9, %x0, 118  #0 pc 30924
	lw	%x6, 64(%x2)  #2205 pc 30928
	lw	%x7, 24(%x2)  #2205 pc 30932
	lw	%x8, 44(%x2)  #2205 pc 30936
	lw	%x29, 28(%x2)  #2205 pc 30940
	sw	%x1, 68(%x2)  #2205 pc 30944
	lw	%x30, 0(%x29)  #2205 pc 30948
	addi	%x2, %x2, 72  #2205 pc 30952
	jalr	%x1, %x30, 0  #2205 pc 30956
	addi	%x2, %x2, -72  #2205 pc 30960
	lw	%x1, 68(%x2)  #2205 pc 30964
be_cont.25951: #pc 30968
	lw	%x6, 52(%x2)  #2205 pc 30968
	addi	%x31, %x0, 3  #pc 30972
	beq	%x6, %x31, 12  #2205 pc 30976
	j	be_else.25952 #pc 30980
	nop #pc 30984
	j	be_cont.25953 #pc 30988
	nop #pc 30992
be_else.25952: #pc 30996
	lw	%x7, 48(%x2)  #2205 pc 30996
	lw	%x8, 12(%x7)  #2205 pc 31000
	lw	%x9, 44(%x2)  #2205 pc 31004
	flw	%f0, 0(%x9)  #2205 pc 31008
	lw	%x10, 40(%x2)  #2205 pc 31012
	fsw	%f0, 0(%x10)  #2205 pc 31016
	flw	%f0, 4(%x9)  #2205 pc 31020
	fsw	%f0, 4(%x10)  #2205 pc 31024
	flw	%f0, 8(%x9)  #2205 pc 31028
	fsw	%f0, 8(%x10)  #2205 pc 31032
	lw	%x11, 36(%x2)  #2205 pc 31036
	lw	%x12, 0(%x11)  #2205 pc 31040
	addi	%x12, %x12, -1  #2205 pc 31044
	lw	%x29, 32(%x2)  #2205 pc 31048
	sw	%x8, 68(%x2)  #2205 pc 31052
	addi	%x7, %x12, 0  #0 pc 31056
	addi	%x6, %x9, 0  #0 pc 31060
	sw	%x1, 72(%x2)  #2205 pc 31064
	lw	%x30, 0(%x29)  #2205 pc 31068
	addi	%x2, %x2, 76  #2205 pc 31072
	jalr	%x1, %x30, 0  #2205 pc 31076
	addi	%x2, %x2, -76  #2205 pc 31080
	lw	%x1, 72(%x2)  #2205 pc 31084
	addi	%x9, %x0, 118  #0 pc 31088
	lw	%x6, 68(%x2)  #2205 pc 31092
	lw	%x7, 24(%x2)  #2205 pc 31096
	lw	%x8, 44(%x2)  #2205 pc 31100
	lw	%x29, 28(%x2)  #2205 pc 31104
	sw	%x1, 72(%x2)  #2205 pc 31108
	lw	%x30, 0(%x29)  #2205 pc 31112
	addi	%x2, %x2, 76  #2205 pc 31116
	jalr	%x1, %x30, 0  #2205 pc 31120
	addi	%x2, %x2, -76  #2205 pc 31124
	lw	%x1, 72(%x2)  #2205 pc 31128
be_cont.25953: #pc 31132
	lw	%x6, 52(%x2)  #2205 pc 31132
	addi	%x31, %x0, 4  #pc 31136
	beq	%x6, %x31, 12  #2205 pc 31140
	j	be_else.25954 #pc 31144
	nop #pc 31148
	j	be_cont.25955 #pc 31152
	nop #pc 31156
be_else.25954: #pc 31160
	lw	%x6, 48(%x2)  #2205 pc 31160
	lw	%x6, 16(%x6)  #2205 pc 31164
	lw	%x7, 44(%x2)  #2205 pc 31168
	flw	%f0, 0(%x7)  #2205 pc 31172
	lw	%x8, 40(%x2)  #2205 pc 31176
	fsw	%f0, 0(%x8)  #2205 pc 31180
	flw	%f0, 4(%x7)  #2205 pc 31184
	fsw	%f0, 4(%x8)  #2205 pc 31188
	flw	%f0, 8(%x7)  #2205 pc 31192
	fsw	%f0, 8(%x8)  #2205 pc 31196
	lw	%x8, 36(%x2)  #2205 pc 31200
	lw	%x8, 0(%x8)  #2205 pc 31204
	addi	%x8, %x8, -1  #2205 pc 31208
	lw	%x29, 32(%x2)  #2205 pc 31212
	sw	%x6, 72(%x2)  #2205 pc 31216
	addi	%x6, %x7, 0  #0 pc 31220
	addi	%x7, %x8, 0  #0 pc 31224
	sw	%x1, 76(%x2)  #2205 pc 31228
	lw	%x30, 0(%x29)  #2205 pc 31232
	addi	%x2, %x2, 80  #2205 pc 31236
	jalr	%x1, %x30, 0  #2205 pc 31240
	addi	%x2, %x2, -80  #2205 pc 31244
	lw	%x1, 76(%x2)  #2205 pc 31248
	addi	%x9, %x0, 118  #0 pc 31252
	lw	%x6, 72(%x2)  #2205 pc 31256
	lw	%x7, 24(%x2)  #2205 pc 31260
	lw	%x8, 44(%x2)  #2205 pc 31264
	lw	%x29, 28(%x2)  #2205 pc 31268
	sw	%x1, 76(%x2)  #2205 pc 31272
	lw	%x30, 0(%x29)  #2205 pc 31276
	addi	%x2, %x2, 80  #2205 pc 31280
	jalr	%x1, %x30, 0  #2205 pc 31284
	addi	%x2, %x2, -80  #2205 pc 31288
	lw	%x1, 76(%x2)  #2205 pc 31292
be_cont.25955: #pc 31296
	lw	%x6, 8(%x2)  #2205 pc 31296
	slli	%x7, %x6, 2  #2205 pc 31300
	lw	%x8, 20(%x2)  #2205 pc 31304
	add	%x31, %x7, %x8  #2205 pc 31308
	lw	%x7, 0(%x31)  #2205 pc 31312
	lw	%x8, 16(%x2)  #2205 pc 31316
	flw	%f0, 0(%x8)  #2205 pc 31320
	flw	%f1, 0(%x7)  #2205 pc 31324
	lw	%x9, 12(%x2)  #2205 pc 31328
	flw	%f2, 0(%x9)  #2205 pc 31332
	fmul	%f1, %f1, %f2  #2205 pc 31336
	fadd	%f0, %f0, %f1  #2205 pc 31340
	fsw	%f0, 0(%x8)  #2205 pc 31344
	flw	%f0, 4(%x8)  #2205 pc 31348
	flw	%f1, 4(%x7)  #2205 pc 31352
	flw	%f2, 4(%x9)  #2205 pc 31356
	fmul	%f1, %f1, %f2  #2205 pc 31360
	fadd	%f0, %f0, %f1  #2205 pc 31364
	fsw	%f0, 4(%x8)  #2205 pc 31368
	flw	%f0, 8(%x8)  #2205 pc 31372
	flw	%f1, 8(%x7)  #2205 pc 31376
	flw	%f2, 8(%x9)  #2205 pc 31380
	fmul	%f1, %f1, %f2  #2205 pc 31384
	fadd	%f0, %f0, %f1  #2205 pc 31388
	fsw	%f0, 8(%x8)  #2205 pc 31392
be_cont.25945: #pc 31396
	lw	%x6, 8(%x2)  #2207 pc 31396
	addi	%x7, %x6, 1  #2207 pc 31400
	lw	%x6, 0(%x2)  #2207 pc 31404
	lw	%x29, 4(%x2)  #2207 pc 31408
	lw	%x30, 0(%x29)  #2207 pc 31412
	jalr	%x0, %x30, 0  #2207 pc 31416
	nop #pc 31420
bge_else.25943: #pc 31424
	ret #pc 31424
	nop #pc 31428
ble_else.25942: #pc 31432
	ret #pc 31432
	nop #pc 31436
try_exploit_neighbors.2987:  #pc 31440
	lw	%x12, 12(%x29)  #2251 pc 31440
	lw	%x13, 8(%x29)  #2251 pc 31444
	lw	%x14, 4(%x29)  #2251 pc 31448
	slli	%x15, %x6, 2  #2251 pc 31452
	add	%x31, %x15, %x9  #2251 pc 31456
	lw	%x15, 0(%x31)  #2251 pc 31460
	addi	%x31, %x0, 4  #pc 31464
	bge	%x31, %x11, 12  #2252 pc 31468
	j	ble_else.25958 #pc 31472
	nop #pc 31476
	lw	%x16, 8(%x15)  #2255 pc 31480
	slli	%x17, %x11, 2  #2255 pc 31484
	add	%x31, %x17, %x16  #2255 pc 31488
	lw	%x16, 0(%x31)  #2255 pc 31492
	bge	%x16, %x0, 12  #2255 pc 31496
	j	bge_else.25959 #pc 31500
	nop #pc 31504
	slli	%x16, %x6, 2  #2257 pc 31508
	add	%x31, %x16, %x9  #2257 pc 31512
	lw	%x16, 0(%x31)  #2257 pc 31516
	lw	%x16, 8(%x16)  #2257 pc 31520
	slli	%x17, %x11, 2  #2257 pc 31524
	add	%x31, %x17, %x16  #2257 pc 31528
	lw	%x16, 0(%x31)  #2257 pc 31532
	slli	%x17, %x6, 2  #2257 pc 31536
	add	%x31, %x17, %x8  #2257 pc 31540
	lw	%x17, 0(%x31)  #2257 pc 31544
	lw	%x17, 8(%x17)  #2257 pc 31548
	slli	%x18, %x11, 2  #2257 pc 31552
	add	%x31, %x18, %x17  #2257 pc 31556
	lw	%x17, 0(%x31)  #2257 pc 31560
	beq	%x17, %x16, 12  #2257 pc 31564
	j	be_else.25960 #pc 31568
	nop #pc 31572
	slli	%x17, %x6, 2  #2257 pc 31576
	add	%x31, %x17, %x10  #2257 pc 31580
	lw	%x17, 0(%x31)  #2257 pc 31584
	lw	%x17, 8(%x17)  #2257 pc 31588
	slli	%x18, %x11, 2  #2257 pc 31592
	add	%x31, %x18, %x17  #2257 pc 31596
	lw	%x17, 0(%x31)  #2257 pc 31600
	beq	%x17, %x16, 12  #2257 pc 31604
	j	be_else.25962 #pc 31608
	nop #pc 31612
	addi	%x17, %x6, -1  #2257 pc 31616
	slli	%x17, %x17, 2  #2257 pc 31620
	add	%x31, %x17, %x9  #2257 pc 31624
	lw	%x17, 0(%x31)  #2257 pc 31628
	lw	%x17, 8(%x17)  #2257 pc 31632
	slli	%x18, %x11, 2  #2257 pc 31636
	add	%x31, %x18, %x17  #2257 pc 31640
	lw	%x17, 0(%x31)  #2257 pc 31644
	beq	%x17, %x16, 12  #2257 pc 31648
	j	be_else.25964 #pc 31652
	nop #pc 31656
	addi	%x17, %x6, 1  #2257 pc 31660
	slli	%x17, %x17, 2  #2257 pc 31664
	add	%x31, %x17, %x9  #2257 pc 31668
	lw	%x17, 0(%x31)  #2257 pc 31672
	lw	%x17, 8(%x17)  #2257 pc 31676
	slli	%x18, %x11, 2  #2257 pc 31680
	add	%x31, %x18, %x17  #2257 pc 31684
	lw	%x17, 0(%x31)  #2257 pc 31688
	beq	%x17, %x16, 12  #2257 pc 31692
	j	be_else.25966 #pc 31696
	nop #pc 31700
	addi	%x16, %x0, 1  #0 pc 31704
	j	be_cont.25967 #pc 31708
	nop #pc 31712
be_else.25966: #pc 31716
	addi	%x16, %x0, 0  #0 pc 31716
be_cont.25967: #pc 31720
	j	be_cont.25965 #pc 31720
	nop #pc 31724
be_else.25964: #pc 31728
	addi	%x16, %x0, 0  #0 pc 31728
be_cont.25965: #pc 31732
	j	be_cont.25963 #pc 31732
	nop #pc 31736
be_else.25962: #pc 31740
	addi	%x16, %x0, 0  #0 pc 31740
be_cont.25963: #pc 31744
	j	be_cont.25961 #pc 31744
	nop #pc 31748
be_else.25960: #pc 31752
	addi	%x16, %x0, 0  #0 pc 31752
be_cont.25961: #pc 31756
	beq	%x16, %x0, 12  #2257 pc 31756
	j	be_else.25968 #pc 31760
	nop #pc 31764
	slli	%x6, %x6, 2  #2269 pc 31768
	add	%x31, %x6, %x9  #2269 pc 31772
	lw	%x6, 0(%x31)  #2269 pc 31776
	addi	%x7, %x11, 0  #0 pc 31780
	addi	%x29, %x14, 0  #0 pc 31784
	lw	%x30, 0(%x29)  #2269 pc 31788
	jalr	%x0, %x30, 0  #2269 pc 31792
	nop #pc 31796
be_else.25968: #pc 31800
	lw	%x14, 12(%x15)  #2260 pc 31800
	slli	%x15, %x11, 2  #2261 pc 31804
	add	%x31, %x15, %x14  #2261 pc 31808
	lw	%x14, 0(%x31)  #2261 pc 31812
	beq	%x14, %x0, 12  #2261 pc 31816
	j	be_else.25969 #pc 31820
	nop #pc 31824
	j	be_cont.25970 #pc 31828
	nop #pc 31832
be_else.25969: #pc 31836
	slli	%x14, %x6, 2  #2262 pc 31836
	add	%x31, %x14, %x8  #2262 pc 31840
	lw	%x14, 0(%x31)  #2262 pc 31844
	lw	%x14, 20(%x14)  #2262 pc 31848
	addi	%x15, %x6, -1  #2262 pc 31852
	slli	%x15, %x15, 2  #2262 pc 31856
	add	%x31, %x15, %x9  #2262 pc 31860
	lw	%x15, 0(%x31)  #2262 pc 31864
	lw	%x15, 20(%x15)  #2262 pc 31868
	slli	%x16, %x6, 2  #2262 pc 31872
	add	%x31, %x16, %x9  #2262 pc 31876
	lw	%x16, 0(%x31)  #2262 pc 31880
	lw	%x16, 20(%x16)  #2262 pc 31884
	addi	%x17, %x6, 1  #2262 pc 31888
	slli	%x17, %x17, 2  #2262 pc 31892
	add	%x31, %x17, %x9  #2262 pc 31896
	lw	%x17, 0(%x31)  #2262 pc 31900
	lw	%x17, 20(%x17)  #2262 pc 31904
	slli	%x18, %x6, 2  #2262 pc 31908
	add	%x31, %x18, %x10  #2262 pc 31912
	lw	%x18, 0(%x31)  #2262 pc 31916
	lw	%x18, 20(%x18)  #2262 pc 31920
	slli	%x19, %x11, 2  #2262 pc 31924
	add	%x31, %x19, %x14  #2262 pc 31928
	lw	%x14, 0(%x31)  #2262 pc 31932
	flw	%f0, 0(%x14)  #2262 pc 31936
	fsw	%f0, 0(%x12)  #2262 pc 31940
	flw	%f0, 4(%x14)  #2262 pc 31944
	fsw	%f0, 4(%x12)  #2262 pc 31948
	flw	%f0, 8(%x14)  #2262 pc 31952
	fsw	%f0, 8(%x12)  #2262 pc 31956
	slli	%x14, %x11, 2  #2262 pc 31960
	add	%x31, %x14, %x15  #2262 pc 31964
	lw	%x14, 0(%x31)  #2262 pc 31968
	flw	%f0, 0(%x12)  #2262 pc 31972
	flw	%f1, 0(%x14)  #2262 pc 31976
	fadd	%f0, %f0, %f1  #2262 pc 31980
	fsw	%f0, 0(%x12)  #2262 pc 31984
	flw	%f0, 4(%x12)  #2262 pc 31988
	flw	%f1, 4(%x14)  #2262 pc 31992
	fadd	%f0, %f0, %f1  #2262 pc 31996
	fsw	%f0, 4(%x12)  #2262 pc 32000
	flw	%f0, 8(%x12)  #2262 pc 32004
	flw	%f1, 8(%x14)  #2262 pc 32008
	fadd	%f0, %f0, %f1  #2262 pc 32012
	fsw	%f0, 8(%x12)  #2262 pc 32016
	slli	%x14, %x11, 2  #2262 pc 32020
	add	%x31, %x14, %x16  #2262 pc 32024
	lw	%x14, 0(%x31)  #2262 pc 32028
	flw	%f0, 0(%x12)  #2262 pc 32032
	flw	%f1, 0(%x14)  #2262 pc 32036
	fadd	%f0, %f0, %f1  #2262 pc 32040
	fsw	%f0, 0(%x12)  #2262 pc 32044
	flw	%f0, 4(%x12)  #2262 pc 32048
	flw	%f1, 4(%x14)  #2262 pc 32052
	fadd	%f0, %f0, %f1  #2262 pc 32056
	fsw	%f0, 4(%x12)  #2262 pc 32060
	flw	%f0, 8(%x12)  #2262 pc 32064
	flw	%f1, 8(%x14)  #2262 pc 32068
	fadd	%f0, %f0, %f1  #2262 pc 32072
	fsw	%f0, 8(%x12)  #2262 pc 32076
	slli	%x14, %x11, 2  #2262 pc 32080
	add	%x31, %x14, %x17  #2262 pc 32084
	lw	%x14, 0(%x31)  #2262 pc 32088
	flw	%f0, 0(%x12)  #2262 pc 32092
	flw	%f1, 0(%x14)  #2262 pc 32096
	fadd	%f0, %f0, %f1  #2262 pc 32100
	fsw	%f0, 0(%x12)  #2262 pc 32104
	flw	%f0, 4(%x12)  #2262 pc 32108
	flw	%f1, 4(%x14)  #2262 pc 32112
	fadd	%f0, %f0, %f1  #2262 pc 32116
	fsw	%f0, 4(%x12)  #2262 pc 32120
	flw	%f0, 8(%x12)  #2262 pc 32124
	flw	%f1, 8(%x14)  #2262 pc 32128
	fadd	%f0, %f0, %f1  #2262 pc 32132
	fsw	%f0, 8(%x12)  #2262 pc 32136
	slli	%x14, %x11, 2  #2262 pc 32140
	add	%x31, %x14, %x18  #2262 pc 32144
	lw	%x14, 0(%x31)  #2262 pc 32148
	flw	%f0, 0(%x12)  #2262 pc 32152
	flw	%f1, 0(%x14)  #2262 pc 32156
	fadd	%f0, %f0, %f1  #2262 pc 32160
	fsw	%f0, 0(%x12)  #2262 pc 32164
	flw	%f0, 4(%x12)  #2262 pc 32168
	flw	%f1, 4(%x14)  #2262 pc 32172
	fadd	%f0, %f0, %f1  #2262 pc 32176
	fsw	%f0, 4(%x12)  #2262 pc 32180
	flw	%f0, 8(%x12)  #2262 pc 32184
	flw	%f1, 8(%x14)  #2262 pc 32188
	fadd	%f0, %f0, %f1  #2262 pc 32192
	fsw	%f0, 8(%x12)  #2262 pc 32196
	slli	%x14, %x6, 2  #2262 pc 32200
	add	%x31, %x14, %x9  #2262 pc 32204
	lw	%x14, 0(%x31)  #2262 pc 32208
	lw	%x14, 16(%x14)  #2262 pc 32212
	slli	%x15, %x11, 2  #2262 pc 32216
	add	%x31, %x15, %x14  #2262 pc 32220
	lw	%x14, 0(%x31)  #2262 pc 32224
	flw	%f0, 0(%x13)  #2262 pc 32228
	flw	%f1, 0(%x14)  #2262 pc 32232
	flw	%f2, 0(%x12)  #2262 pc 32236
	fmul	%f1, %f1, %f2  #2262 pc 32240
	fadd	%f0, %f0, %f1  #2262 pc 32244
	fsw	%f0, 0(%x13)  #2262 pc 32248
	flw	%f0, 4(%x13)  #2262 pc 32252
	flw	%f1, 4(%x14)  #2262 pc 32256
	flw	%f2, 4(%x12)  #2262 pc 32260
	fmul	%f1, %f1, %f2  #2262 pc 32264
	fadd	%f0, %f0, %f1  #2262 pc 32268
	fsw	%f0, 4(%x13)  #2262 pc 32272
	flw	%f0, 8(%x13)  #2262 pc 32276
	flw	%f1, 8(%x14)  #2262 pc 32280
	flw	%f2, 8(%x12)  #2262 pc 32284
	fmul	%f1, %f1, %f2  #2262 pc 32288
	fadd	%f0, %f0, %f1  #2262 pc 32292
	fsw	%f0, 8(%x13)  #2262 pc 32296
be_cont.25970: #pc 32300
	addi	%x11, %x11, 1  #2266 pc 32300
	lw	%x30, 0(%x29)  #2266 pc 32304
	jalr	%x0, %x30, 0  #2266 pc 32308
	nop #pc 32312
bge_else.25959: #pc 32316
	ret #pc 32316
	nop #pc 32320
ble_else.25958: #pc 32324
	ret #pc 32324
	nop #pc 32328
pretrace_diffuse_rays.3002:  #pc 32332
	lw	%x8, 24(%x29)  #0 pc 32332
	lw	%x9, 20(%x29)  #0 pc 32336
	lw	%x10, 16(%x29)  #0 pc 32340
	lw	%x11, 12(%x29)  #0 pc 32344
	lw	%x12, 8(%x29)  #0 pc 32348
	lw	%x13, 4(%x29)  #0 pc 32352
	addi	%x31, %x0, 4  #pc 32356
	bge	%x31, %x7, 12  #2327 pc 32360
	j	ble_else.25973 #pc 32364
	nop #pc 32368
	lw	%x14, 8(%x6)  #2330 pc 32372
	slli	%x15, %x7, 2  #2330 pc 32376
	add	%x31, %x15, %x14  #2330 pc 32380
	lw	%x14, 0(%x31)  #2330 pc 32384
	bge	%x14, %x0, 12  #2331 pc 32388
	j	bge_else.25974 #pc 32392
	nop #pc 32396
	lw	%x14, 12(%x6)  #2333 pc 32400
	slli	%x15, %x7, 2  #2334 pc 32404
	add	%x31, %x15, %x14  #2334 pc 32408
	lw	%x14, 0(%x31)  #2334 pc 32412
	sw	%x29, 0(%x2)  #2334 pc 32416
	sw	%x7, 4(%x2)  #2334 pc 32420
	beq	%x14, %x0, 12  #2334 pc 32424
	j	be_else.25975 #pc 32428
	nop #pc 32432
	j	be_cont.25976 #pc 32436
	nop #pc 32440
be_else.25975: #pc 32444
	lw	%x14, 24(%x6)  #2335 pc 32444
	lw	%x14, 0(%x14)  #2335 pc 32448
	fmv	%f0, l.21722  #0 pc 32452
	fsw	%f0, 0(%x12)  #2336 pc 32456
	fsw	%f0, 4(%x12)  #2336 pc 32460
	fsw	%f0, 8(%x12)  #2336 pc 32464
	lw	%x15, 28(%x6)  #2340 pc 32468
	lw	%x16, 4(%x6)  #2341 pc 32472
	slli	%x14, %x14, 2  #2343 pc 32476
	add	%x31, %x14, %x11  #2343 pc 32480
	lw	%x11, 0(%x31)  #2343 pc 32484
	slli	%x14, %x7, 2  #2344 pc 32488
	add	%x31, %x14, %x15  #2344 pc 32492
	lw	%x14, 0(%x31)  #2344 pc 32496
	slli	%x15, %x7, 2  #2345 pc 32500
	add	%x31, %x15, %x16  #2345 pc 32504
	lw	%x15, 0(%x31)  #2345 pc 32508
	flw	%f0, 0(%x15)  #2342 pc 32512
	fsw	%f0, 0(%x13)  #2342 pc 32516
	flw	%f0, 4(%x15)  #2342 pc 32520
	fsw	%f0, 4(%x13)  #2342 pc 32524
	flw	%f0, 8(%x15)  #2342 pc 32528
	fsw	%f0, 8(%x13)  #2342 pc 32532
	lw	%x10, 0(%x10)  #2342 pc 32536
	addi	%x10, %x10, -1  #2342 pc 32540
	sw	%x12, 8(%x2)  #2342 pc 32544
	sw	%x6, 12(%x2)  #2342 pc 32548
	sw	%x15, 16(%x2)  #2342 pc 32552
	sw	%x14, 20(%x2)  #2342 pc 32556
	sw	%x11, 24(%x2)  #2342 pc 32560
	sw	%x9, 28(%x2)  #2342 pc 32564
	addi	%x7, %x10, 0  #0 pc 32568
	addi	%x6, %x15, 0  #0 pc 32572
	addi	%x29, %x8, 0  #0 pc 32576
	sw	%x1, 32(%x2)  #2342 pc 32580
	lw	%x30, 0(%x29)  #2342 pc 32584
	addi	%x2, %x2, 36  #2342 pc 32588
	jalr	%x1, %x30, 0  #2342 pc 32592
	addi	%x2, %x2, -36  #2342 pc 32596
	lw	%x1, 32(%x2)  #2342 pc 32600
	addi	%x9, %x0, 118  #0 pc 32604
	lw	%x6, 24(%x2)  #2342 pc 32608
	lw	%x7, 20(%x2)  #2342 pc 32612
	lw	%x8, 16(%x2)  #2342 pc 32616
	lw	%x29, 28(%x2)  #2342 pc 32620
	sw	%x1, 32(%x2)  #2342 pc 32624
	lw	%x30, 0(%x29)  #2342 pc 32628
	addi	%x2, %x2, 36  #2342 pc 32632
	jalr	%x1, %x30, 0  #2342 pc 32636
	addi	%x2, %x2, -36  #2342 pc 32640
	lw	%x1, 32(%x2)  #2342 pc 32644
	lw	%x6, 12(%x2)  #2346 pc 32648
	lw	%x7, 20(%x6)  #2346 pc 32652
	lw	%x8, 4(%x2)  #2347 pc 32656
	slli	%x9, %x8, 2  #2347 pc 32660
	add	%x31, %x9, %x7  #2347 pc 32664
	lw	%x7, 0(%x31)  #2347 pc 32668
	lw	%x9, 8(%x2)  #2347 pc 32672
	flw	%f0, 0(%x9)  #2347 pc 32676
	fsw	%f0, 0(%x7)  #2347 pc 32680
	flw	%f0, 4(%x9)  #2347 pc 32684
	fsw	%f0, 4(%x7)  #2347 pc 32688
	flw	%f0, 8(%x9)  #2347 pc 32692
	fsw	%f0, 8(%x7)  #2347 pc 32696
be_cont.25976: #pc 32700
	lw	%x7, 4(%x2)  #2349 pc 32700
	addi	%x7, %x7, 1  #2349 pc 32704
	lw	%x29, 0(%x2)  #2349 pc 32708
	lw	%x30, 0(%x29)  #2349 pc 32712
	jalr	%x0, %x30, 0  #2349 pc 32716
	nop #pc 32720
bge_else.25974: #pc 32724
	ret #pc 32724
	nop #pc 32728
ble_else.25973: #pc 32732
	ret #pc 32732
	nop #pc 32736
pretrace_pixels.3005:  #pc 32740
	lw	%x9, 36(%x29)  #0 pc 32740
	lw	%x10, 32(%x29)  #0 pc 32744
	lw	%x11, 28(%x29)  #0 pc 32748
	lw	%x12, 24(%x29)  #0 pc 32752
	lw	%x13, 20(%x29)  #0 pc 32756
	lw	%x14, 16(%x29)  #0 pc 32760
	lw	%x15, 12(%x29)  #0 pc 32764
	lw	%x16, 8(%x29)  #0 pc 32768
	lw	%x17, 4(%x29)  #0 pc 32772
	bge	%x7, %x0, 12  #2357 pc 32776
	j	bge_else.25979 #pc 32780
	nop #pc 32784
	flw	%f3, 0(%x14)  #2359 pc 32788
	lw	%x11, 0(%x11)  #2359 pc 32792
	sub	%x11, %x7, %x11  #2359 pc 32796
	itof	%f4, %x11  #2359 pc 32800
	fmul	%f3, %f3, %f4  #2359 pc 32804
	flw	%f4, 0(%x16)  #2360 pc 32808
	fmul	%f4, %f3, %f4  #2360 pc 32812
	fadd	%f4, %f4, %f0  #2360 pc 32816
	fsw	%f4, 0(%x17)  #2360 pc 32820
	flw	%f4, 4(%x16)  #2361 pc 32824
	fmul	%f4, %f3, %f4  #2361 pc 32828
	fadd	%f4, %f4, %f1  #2361 pc 32832
	fsw	%f4, 4(%x17)  #2361 pc 32836
	flw	%f4, 8(%x16)  #2362 pc 32840
	fmul	%f3, %f3, %f4  #2362 pc 32844
	fadd	%f3, %f3, %f2  #2362 pc 32848
	fsw	%f3, 8(%x17)  #2362 pc 32852
	flw	%f3, 0(%x17)  #2363 pc 32856
	fmul	%f3, %f3, %f3  #2363 pc 32860
	flw	%f4, 4(%x17)  #2363 pc 32864
	fmul	%f4, %f4, %f4  #2363 pc 32868
	fadd	%f3, %f3, %f4  #2363 pc 32872
	flw	%f4, 8(%x17)  #2363 pc 32876
	fmul	%f4, %f4, %f4  #2363 pc 32880
	fadd	%f3, %f3, %f4  #2363 pc 32884
	fsqrt	%f3, %f3  #2363 pc 32888
	fmv	%f4, l.21722  #0 pc 32892
	feq	%x31, %f3, %f4  #2363 pc 32896
	blt	%x0, %x31, 12  #2363 pc 32900
	j	fbe_else.25980 #pc 32904
	nop #pc 32908
	addi	%x11, %x0, 1  #0 pc 32912
	j	fbe_cont.25981 #pc 32916
	nop #pc 32920
fbe_else.25980: #pc 32924
	addi	%x11, %x0, 0  #0 pc 32924
fbe_cont.25981: #pc 32928
	beq	%x11, %x0, 12  #2363 pc 32928
	j	be_else.25982 #pc 32932
	nop #pc 32936
	fmv	%f4, l.21731  #0 pc 32940
	fdiv	%f3, %f4, %f3  #2363 pc 32944
	j	be_cont.25983 #pc 32948
	nop #pc 32952
be_else.25982: #pc 32956
	fmv	%f3, l.21731  #0 pc 32956
be_cont.25983: #pc 32960
	flw	%f4, 0(%x17)  #2363 pc 32960
	fmul	%f4, %f4, %f3  #2363 pc 32964
	fsw	%f4, 0(%x17)  #2363 pc 32968
	flw	%f4, 4(%x17)  #2363 pc 32972
	fmul	%f4, %f4, %f3  #2363 pc 32976
	fsw	%f4, 4(%x17)  #2363 pc 32980
	flw	%f4, 8(%x17)  #2363 pc 32984
	fmul	%f3, %f4, %f3  #2363 pc 32988
	fsw	%f3, 8(%x17)  #2363 pc 32992
	fmv	%f3, l.21722  #0 pc 32996
	fsw	%f3, 0(%x13)  #2364 pc 33000
	fsw	%f3, 4(%x13)  #2364 pc 33004
	fsw	%f3, 8(%x13)  #2364 pc 33008
	flw	%f3, 0(%x12)  #2365 pc 33012
	fsw	%f3, 0(%x15)  #2365 pc 33016
	flw	%f3, 4(%x12)  #2365 pc 33020
	fsw	%f3, 4(%x15)  #2365 pc 33024
	flw	%f3, 8(%x12)  #2365 pc 33028
	fsw	%f3, 8(%x15)  #2365 pc 33032
	addi	%x11, %x0, 0  #0 pc 33036
	fmv	%f3, l.21731  #0 pc 33040
	slli	%x12, %x7, 2  #2368 pc 33044
	add	%x31, %x12, %x6  #2368 pc 33048
	lw	%x12, 0(%x31)  #2368 pc 33052
	fmv	%f4, l.21722  #0 pc 33056
	fsw	%f2, 0(%x2)  #2368 pc 33060
	fsw	%f1, 8(%x2)  #2368 pc 33064
	fsw	%f0, 16(%x2)  #2368 pc 33068
	sw	%x29, 24(%x2)  #2368 pc 33072
	sw	%x10, 28(%x2)  #2368 pc 33076
	sw	%x8, 32(%x2)  #2368 pc 33080
	sw	%x13, 36(%x2)  #2368 pc 33084
	sw	%x6, 40(%x2)  #2368 pc 33088
	sw	%x7, 44(%x2)  #2368 pc 33092
	addi	%x8, %x12, 0  #0 pc 33096
	addi	%x7, %x17, 0  #0 pc 33100
	addi	%x6, %x11, 0  #0 pc 33104
	addi	%x29, %x9, 0  #0 pc 33108
	fadd	%f1, %f4, %f30  #0 pc 33112
	fadd	%f0, %f3, %f30  #0 pc 33116
	sw	%x1, 48(%x2)  #2368 pc 33120
	lw	%x30, 0(%x29)  #2368 pc 33124
	addi	%x2, %x2, 52  #2368 pc 33128
	jalr	%x1, %x30, 0  #2368 pc 33132
	addi	%x2, %x2, -52  #2368 pc 33136
	lw	%x1, 48(%x2)  #2368 pc 33140
	lw	%x6, 44(%x2)  #2369 pc 33144
	slli	%x7, %x6, 2  #2369 pc 33148
	lw	%x8, 40(%x2)  #2369 pc 33152
	add	%x31, %x7, %x8  #2369 pc 33156
	lw	%x7, 0(%x31)  #2369 pc 33160
	lw	%x7, 0(%x7)  #2369 pc 33164
	lw	%x9, 36(%x2)  #2369 pc 33168
	flw	%f0, 0(%x9)  #2369 pc 33172
	fsw	%f0, 0(%x7)  #2369 pc 33176
	flw	%f0, 4(%x9)  #2369 pc 33180
	fsw	%f0, 4(%x7)  #2369 pc 33184
	flw	%f0, 8(%x9)  #2369 pc 33188
	fsw	%f0, 8(%x7)  #2369 pc 33192
	slli	%x7, %x6, 2  #2370 pc 33196
	add	%x31, %x7, %x8  #2370 pc 33200
	lw	%x7, 0(%x31)  #2370 pc 33204
	lw	%x7, 24(%x7)  #2370 pc 33208
	lw	%x9, 32(%x2)  #2370 pc 33212
	sw	%x9, 0(%x7)  #2370 pc 33216
	slli	%x7, %x6, 2  #2373 pc 33220
	add	%x31, %x7, %x8  #2373 pc 33224
	lw	%x7, 0(%x31)  #2373 pc 33228
	addi	%x10, %x0, 0  #0 pc 33232
	lw	%x29, 28(%x2)  #2373 pc 33236
	addi	%x6, %x7, 0  #0 pc 33240
	addi	%x7, %x10, 0  #0 pc 33244
	sw	%x1, 48(%x2)  #2373 pc 33248
	lw	%x30, 0(%x29)  #2373 pc 33252
	addi	%x2, %x2, 52  #2373 pc 33256
	jalr	%x1, %x30, 0  #2373 pc 33260
	addi	%x2, %x2, -52  #2373 pc 33264
	lw	%x1, 48(%x2)  #2373 pc 33268
	lw	%x6, 44(%x2)  #2375 pc 33272
	addi	%x7, %x6, -1  #2375 pc 33276
	lw	%x6, 32(%x2)  #2375 pc 33280
	addi	%x6, %x6, 1  #2375 pc 33284
	addi	%x31, %x0, 5  #pc 33288
	bge	%x6, %x31, 12  #2375 pc 33292
	j	bge_else.25984 #pc 33296
	nop #pc 33300
	addi	%x8, %x6, -5  #2375 pc 33304
	j	bge_cont.25985 #pc 33308
	nop #pc 33312
bge_else.25984: #pc 33316
	addi	%x8, %x6, 0  #2375 pc 33316
bge_cont.25985: #pc 33320
	flw	%f0, 16(%x2)  #2375 pc 33320
	flw	%f1, 8(%x2)  #2375 pc 33324
	flw	%f2, 0(%x2)  #2375 pc 33328
	lw	%x6, 40(%x2)  #2375 pc 33332
	lw	%x29, 24(%x2)  #2375 pc 33336
	lw	%x30, 0(%x29)  #2375 pc 33340
	jalr	%x0, %x30, 0  #2375 pc 33344
	nop #pc 33348
bge_else.25979: #pc 33352
	ret #pc 33352
	nop #pc 33356
scan_pixel.3016:  #pc 33360
	lw	%x12, 16(%x29)  #0 pc 33360
	lw	%x13, 12(%x29)  #0 pc 33364
	lw	%x14, 8(%x29)  #0 pc 33368
	lw	%x15, 4(%x29)  #0 pc 33372
	lw	%x16, 0(%x13)  #2398 pc 33376
	bge	%x6, %x16, 12  #2398 pc 33380
	j	ble_else.25987 #pc 33384
	nop #pc 33388
	ret #pc 33392
	nop #pc 33396
ble_else.25987: #pc 33400
	slli	%x16, %x6, 2  #2401 pc 33400
	add	%x31, %x16, %x9  #2401 pc 33404
	lw	%x16, 0(%x31)  #2401 pc 33408
	lw	%x16, 0(%x16)  #2401 pc 33412
	flw	%f0, 0(%x16)  #2401 pc 33416
	fsw	%f0, 0(%x14)  #2401 pc 33420
	flw	%f0, 4(%x16)  #2401 pc 33424
	fsw	%f0, 4(%x14)  #2401 pc 33428
	flw	%f0, 8(%x16)  #2401 pc 33432
	fsw	%f0, 8(%x14)  #2401 pc 33436
	lw	%x16, 4(%x13)  #2404 pc 33440
	addi	%x17, %x7, 1  #2404 pc 33444
	bge	%x17, %x16, 12  #2404 pc 33448
	j	ble_else.25989 #pc 33452
	nop #pc 33456
	addi	%x13, %x0, 0  #0 pc 33460
	j	ble_cont.25990 #pc 33464
	nop #pc 33468
ble_else.25989: #pc 33472
	bge	%x0, %x7, 12  #2404 pc 33472
	j	ble_else.25991 #pc 33476
	nop #pc 33480
	addi	%x13, %x0, 0  #0 pc 33484
	j	ble_cont.25992 #pc 33488
	nop #pc 33492
ble_else.25991: #pc 33496
	lw	%x13, 0(%x13)  #2404 pc 33496
	addi	%x16, %x6, 1  #2404 pc 33500
	bge	%x16, %x13, 12  #2404 pc 33504
	j	ble_else.25993 #pc 33508
	nop #pc 33512
	addi	%x13, %x0, 0  #0 pc 33516
	j	ble_cont.25994 #pc 33520
	nop #pc 33524
ble_else.25993: #pc 33528
	bge	%x0, %x6, 12  #2404 pc 33528
	j	ble_else.25995 #pc 33532
	nop #pc 33536
	addi	%x13, %x0, 0  #0 pc 33540
	j	ble_cont.25996 #pc 33544
	nop #pc 33548
ble_else.25995: #pc 33552
	addi	%x13, %x0, 1  #0 pc 33552
ble_cont.25996: #pc 33556
ble_cont.25994: #pc 33556
ble_cont.25992: #pc 33556
ble_cont.25990: #pc 33556
	sw	%x10, 0(%x2)  #2404 pc 33556
	sw	%x9, 4(%x2)  #2404 pc 33560
	sw	%x8, 8(%x2)  #2404 pc 33564
	sw	%x7, 12(%x2)  #2404 pc 33568
	sw	%x29, 16(%x2)  #2404 pc 33572
	sw	%x6, 20(%x2)  #2404 pc 33576
	sw	%x14, 24(%x2)  #2404 pc 33580
	sw	%x11, 28(%x2)  #2404 pc 33584
	beq	%x13, %x0, 12  #2404 pc 33588
	j	be_else.25997 #pc 33592
	nop #pc 33596
	slli	%x12, %x6, 2  #2407 pc 33600
	add	%x31, %x12, %x9  #2407 pc 33604
	lw	%x12, 0(%x31)  #2407 pc 33608
	addi	%x13, %x0, 0  #0 pc 33612
	addi	%x7, %x13, 0  #0 pc 33616
	addi	%x6, %x12, 0  #0 pc 33620
	addi	%x29, %x15, 0  #0 pc 33624
	sw	%x1, 32(%x2)  #2407 pc 33628
	lw	%x30, 0(%x29)  #2407 pc 33632
	addi	%x2, %x2, 36  #2407 pc 33636
	jalr	%x1, %x30, 0  #2407 pc 33640
	addi	%x2, %x2, -36  #2407 pc 33644
	lw	%x1, 32(%x2)  #2407 pc 33648
	j	be_cont.25998 #pc 33652
	nop #pc 33656
be_else.25997: #pc 33660
	addi	%x13, %x0, 0  #0 pc 33660
	addi	%x11, %x13, 0  #0 pc 33664
	addi	%x29, %x12, 0  #0 pc 33668
	sw	%x1, 32(%x2)  #2405 pc 33672
	lw	%x30, 0(%x29)  #2405 pc 33676
	addi	%x2, %x2, 36  #2405 pc 33680
	jalr	%x1, %x30, 0  #2405 pc 33684
	addi	%x2, %x2, -36  #2405 pc 33688
	lw	%x1, 32(%x2)  #2405 pc 33692
be_cont.25998: #pc 33696
	lw	%x11, 28(%x2)  #2410 pc 33696
	addi	%x31, %x0, 3  #pc 33700
	beq	%x11, %x31, 12  #2410 pc 33704
	j	be_else.25999 #pc 33708
	nop #pc 33712
	lw	%x6, 24(%x2)  #2410 pc 33716
	flw	%f0, 0(%x6)  #2410 pc 33720
	ftoi	%x7, %f0  #2410 pc 33724
	addi	%x31, %x0, 255  #pc 33728
	bge	%x31, %x7, 12  #2410 pc 33732
	j	ble_else.26001 #pc 33736
	nop #pc 33740
	bge	%x7, %x0, 12  #2410 pc 33744
	j	bge_else.26003 #pc 33748
	nop #pc 33752
	j	bge_cont.26004 #pc 33756
	nop #pc 33760
bge_else.26003: #pc 33764
	addi	%x7, %x0, 0  #0 pc 33764
bge_cont.26004: #pc 33768
	j	ble_cont.26002 #pc 33768
	nop #pc 33772
ble_else.26001: #pc 33776
	addi	%x7, %x0, 255  #0 pc 33776
ble_cont.26002: #pc 33780
	addi	%x6, %x7, 0  #0 pc 33780
	sw	%x1, 32(%x2)  #2410 pc 33784
	addi	%x2, %x2, 36  #2410 pc 33788
	jal	%x1, print_int.2560  #2410 pc 33792
	addi	%x2, %x2, -36  #2410 pc 33796
	lw	%x1, 32(%x2) #2410 pc 33800
	addi	%x6, %x0, 32  #0 pc 33804
	sw	%x6, 0(%x5)  #2410 pc 33808
	addi	%x5, %x5, 4  #2410 pc 33812
	lw	%x6, 24(%x2)  #2410 pc 33816
	flw	%f0, 4(%x6)  #2410 pc 33820
	ftoi	%x7, %f0  #2410 pc 33824
	addi	%x31, %x0, 255  #pc 33828
	bge	%x31, %x7, 12  #2410 pc 33832
	j	ble_else.26005 #pc 33836
	nop #pc 33840
	bge	%x7, %x0, 12  #2410 pc 33844
	j	bge_else.26007 #pc 33848
	nop #pc 33852
	j	bge_cont.26008 #pc 33856
	nop #pc 33860
bge_else.26007: #pc 33864
	addi	%x7, %x0, 0  #0 pc 33864
bge_cont.26008: #pc 33868
	j	ble_cont.26006 #pc 33868
	nop #pc 33872
ble_else.26005: #pc 33876
	addi	%x7, %x0, 255  #0 pc 33876
ble_cont.26006: #pc 33880
	addi	%x6, %x7, 0  #0 pc 33880
	sw	%x1, 32(%x2)  #2410 pc 33884
	addi	%x2, %x2, 36  #2410 pc 33888
	jal	%x1, print_int.2560  #2410 pc 33892
	addi	%x2, %x2, -36  #2410 pc 33896
	lw	%x1, 32(%x2) #2410 pc 33900
	addi	%x6, %x0, 32  #0 pc 33904
	sw	%x6, 0(%x5)  #2410 pc 33908
	addi	%x5, %x5, 4  #2410 pc 33912
	lw	%x6, 24(%x2)  #2410 pc 33916
	flw	%f0, 8(%x6)  #2410 pc 33920
	ftoi	%x6, %f0  #2410 pc 33924
	addi	%x31, %x0, 255  #pc 33928
	bge	%x31, %x6, 12  #2410 pc 33932
	j	ble_else.26009 #pc 33936
	nop #pc 33940
	bge	%x6, %x0, 12  #2410 pc 33944
	j	bge_else.26011 #pc 33948
	nop #pc 33952
	j	bge_cont.26012 #pc 33956
	nop #pc 33960
bge_else.26011: #pc 33964
	addi	%x6, %x0, 0  #0 pc 33964
bge_cont.26012: #pc 33968
	j	ble_cont.26010 #pc 33968
	nop #pc 33972
ble_else.26009: #pc 33976
	addi	%x6, %x0, 255  #0 pc 33976
ble_cont.26010: #pc 33980
	sw	%x1, 32(%x2)  #2410 pc 33980
	addi	%x2, %x2, 36  #2410 pc 33984
	jal	%x1, print_int.2560  #2410 pc 33988
	addi	%x2, %x2, -36  #2410 pc 33992
	lw	%x1, 32(%x2) #2410 pc 33996
	addi	%x6, %x0, 10  #0 pc 34000
	sw	%x6, 0(%x5)  #2410 pc 34004
	addi	%x5, %x5, 4  #2410 pc 34008
	j	be_cont.26000 #pc 34012
	nop #pc 34016
be_else.25999: #pc 34020
	lw	%x6, 24(%x2)  #2410 pc 34020
	flw	%f0, 0(%x6)  #2410 pc 34024
	ftoi	%x7, %f0  #2410 pc 34028
	addi	%x31, %x0, 255  #pc 34032
	bge	%x31, %x7, 12  #2410 pc 34036
	j	ble_else.26013 #pc 34040
	nop #pc 34044
	bge	%x7, %x0, 12  #2410 pc 34048
	j	bge_else.26015 #pc 34052
	nop #pc 34056
	j	bge_cont.26016 #pc 34060
	nop #pc 34064
bge_else.26015: #pc 34068
	addi	%x7, %x0, 0  #0 pc 34068
bge_cont.26016: #pc 34072
	j	ble_cont.26014 #pc 34072
	nop #pc 34076
ble_else.26013: #pc 34080
	addi	%x7, %x0, 255  #0 pc 34080
ble_cont.26014: #pc 34084
	sw	%x7, 0(%x5)  #2410 pc 34084
	addi	%x5, %x5, 4  #2410 pc 34088
	flw	%f0, 4(%x6)  #2410 pc 34092
	ftoi	%x7, %f0  #2410 pc 34096
	addi	%x31, %x0, 255  #pc 34100
	bge	%x31, %x7, 12  #2410 pc 34104
	j	ble_else.26017 #pc 34108
	nop #pc 34112
	bge	%x7, %x0, 12  #2410 pc 34116
	j	bge_else.26019 #pc 34120
	nop #pc 34124
	j	bge_cont.26020 #pc 34128
	nop #pc 34132
bge_else.26019: #pc 34136
	addi	%x7, %x0, 0  #0 pc 34136
bge_cont.26020: #pc 34140
	j	ble_cont.26018 #pc 34140
	nop #pc 34144
ble_else.26017: #pc 34148
	addi	%x7, %x0, 255  #0 pc 34148
ble_cont.26018: #pc 34152
	sw	%x7, 0(%x5)  #2410 pc 34152
	addi	%x5, %x5, 4  #2410 pc 34156
	flw	%f0, 8(%x6)  #2410 pc 34160
	ftoi	%x6, %f0  #2410 pc 34164
	addi	%x31, %x0, 255  #pc 34168
	bge	%x31, %x6, 12  #2410 pc 34172
	j	ble_else.26021 #pc 34176
	nop #pc 34180
	bge	%x6, %x0, 12  #2410 pc 34184
	j	bge_else.26023 #pc 34188
	nop #pc 34192
	j	bge_cont.26024 #pc 34196
	nop #pc 34200
bge_else.26023: #pc 34204
	addi	%x6, %x0, 0  #0 pc 34204
bge_cont.26024: #pc 34208
	j	ble_cont.26022 #pc 34208
	nop #pc 34212
ble_else.26021: #pc 34216
	addi	%x6, %x0, 255  #0 pc 34216
ble_cont.26022: #pc 34220
	sw	%x6, 0(%x5)  #2410 pc 34220
	addi	%x5, %x5, 4  #2410 pc 34224
be_cont.26000: #pc 34228
	lw	%x6, 20(%x2)  #2412 pc 34228
	addi	%x6, %x6, 1  #2412 pc 34232
	lw	%x7, 12(%x2)  #2412 pc 34236
	lw	%x8, 8(%x2)  #2412 pc 34240
	lw	%x9, 4(%x2)  #2412 pc 34244
	lw	%x10, 0(%x2)  #2412 pc 34248
	lw	%x11, 28(%x2)  #2412 pc 34252
	lw	%x29, 16(%x2)  #2412 pc 34256
	lw	%x30, 0(%x29)  #2412 pc 34260
	jalr	%x0, %x30, 0  #2412 pc 34264
	nop #pc 34268
scan_line.3023:  #pc 34272
	lw	%x12, 28(%x29)  #0 pc 34272
	lw	%x13, 24(%x29)  #0 pc 34276
	lw	%x14, 20(%x29)  #0 pc 34280
	lw	%x15, 16(%x29)  #0 pc 34284
	lw	%x16, 12(%x29)  #0 pc 34288
	lw	%x17, 8(%x29)  #0 pc 34292
	lw	%x18, 4(%x29)  #0 pc 34296
	lw	%x19, 4(%x14)  #2419 pc 34300
	bge	%x6, %x19, 12  #2419 pc 34304
	j	ble_else.26025 #pc 34308
	nop #pc 34312
	ret #pc 34316
	nop #pc 34320
ble_else.26025: #pc 34324
	lw	%x19, 4(%x14)  #2421 pc 34324
	addi	%x19, %x19, -1  #2421 pc 34328
	sw	%x29, 0(%x2)  #2421 pc 34332
	sw	%x10, 4(%x2)  #2421 pc 34336
	sw	%x11, 8(%x2)  #2421 pc 34340
	sw	%x9, 12(%x2)  #2421 pc 34344
	sw	%x8, 16(%x2)  #2421 pc 34348
	sw	%x7, 20(%x2)  #2421 pc 34352
	sw	%x6, 24(%x2)  #2421 pc 34356
	sw	%x12, 28(%x2)  #2421 pc 34360
	bge	%x6, %x19, 12  #2421 pc 34364
	j	ble_else.26027 #pc 34368
	nop #pc 34372
	j	ble_cont.26028 #pc 34376
	nop #pc 34380
ble_else.26027: #pc 34384
	addi	%x19, %x6, 1  #2422 pc 34384
	flw	%f0, 0(%x16)  #2422 pc 34388
	lw	%x15, 4(%x15)  #2422 pc 34392
	sub	%x15, %x19, %x15  #2422 pc 34396
	itof	%f1, %x15  #2422 pc 34400
	fmul	%f0, %f0, %f1  #2422 pc 34404
	flw	%f1, 0(%x17)  #2422 pc 34408
	fmul	%f1, %f0, %f1  #2422 pc 34412
	flw	%f2, 0(%x18)  #2422 pc 34416
	fadd	%f1, %f1, %f2  #2422 pc 34420
	flw	%f2, 4(%x17)  #2422 pc 34424
	fmul	%f2, %f0, %f2  #2422 pc 34428
	flw	%f3, 4(%x18)  #2422 pc 34432
	fadd	%f2, %f2, %f3  #2422 pc 34436
	flw	%f3, 8(%x17)  #2422 pc 34440
	fmul	%f0, %f0, %f3  #2422 pc 34444
	flw	%f3, 8(%x18)  #2422 pc 34448
	fadd	%f0, %f0, %f3  #2422 pc 34452
	lw	%x14, 0(%x14)  #2422 pc 34456
	addi	%x14, %x14, -1  #2422 pc 34460
	addi	%x8, %x10, 0  #0 pc 34464
	addi	%x7, %x14, 0  #0 pc 34468
	addi	%x6, %x9, 0  #0 pc 34472
	addi	%x29, %x13, 0  #0 pc 34476
	fadd	%f29, %f2, %f30  #0 pc 34480
	fadd	%f2, %f0, %f30  #0 pc 34484
	fadd	%f0, %f1, %f30  #0 pc 34488
	fadd	%f1, %f29, %f30  #0 pc 34492
	sw	%x1, 32(%x2)  #2422 pc 34496
	lw	%x30, 0(%x29)  #2422 pc 34500
	addi	%x2, %x2, 36  #2422 pc 34504
	jalr	%x1, %x30, 0  #2422 pc 34508
	addi	%x2, %x2, -36  #2422 pc 34512
	lw	%x1, 32(%x2)  #2422 pc 34516
ble_cont.26028: #pc 34520
	addi	%x6, %x0, 0  #0 pc 34520
	lw	%x7, 24(%x2)  #2424 pc 34524
	lw	%x8, 20(%x2)  #2424 pc 34528
	lw	%x9, 16(%x2)  #2424 pc 34532
	lw	%x10, 12(%x2)  #2424 pc 34536
	lw	%x11, 8(%x2)  #2424 pc 34540
	lw	%x29, 28(%x2)  #2424 pc 34544
	sw	%x1, 32(%x2)  #2424 pc 34548
	lw	%x30, 0(%x29)  #2424 pc 34552
	addi	%x2, %x2, 36  #2424 pc 34556
	jalr	%x1, %x30, 0  #2424 pc 34560
	addi	%x2, %x2, -36  #2424 pc 34564
	lw	%x1, 32(%x2)  #2424 pc 34568
	lw	%x6, 24(%x2)  #2425 pc 34572
	addi	%x6, %x6, 1  #2425 pc 34576
	lw	%x7, 4(%x2)  #2425 pc 34580
	addi	%x7, %x7, 2  #2425 pc 34584
	addi	%x31, %x0, 5  #pc 34588
	bge	%x7, %x31, 12  #2425 pc 34592
	j	bge_else.26029 #pc 34596
	nop #pc 34600
	addi	%x10, %x7, -5  #2425 pc 34604
	j	bge_cont.26030 #pc 34608
	nop #pc 34612
bge_else.26029: #pc 34616
	addi	%x10, %x7, 0  #2425 pc 34616
bge_cont.26030: #pc 34620
	lw	%x7, 16(%x2)  #2425 pc 34620
	lw	%x8, 12(%x2)  #2425 pc 34624
	lw	%x9, 20(%x2)  #2425 pc 34628
	lw	%x11, 8(%x2)  #2425 pc 34632
	lw	%x29, 0(%x2)  #2425 pc 34636
	lw	%x30, 0(%x29)  #2425 pc 34640
	jalr	%x0, %x30, 0  #2425 pc 34644
	nop #pc 34648
init_line_elements.3034:  #pc 34652
	bge	%x7, %x0, 12  #2461 pc 34652
	j	bge_else.26031 #pc 34656
	nop #pc 34660
	fmv	%f0, l.21722  #0 pc 34664
	addi	%x8, %x3, 0  #2462 pc 34668
	addi	%x9, %x8, 0  #2462 pc 34672
	addi	%x8, %x8, 12  #2462 pc 34676
	addi	%x3, %x8, 0  #2462 pc 34680
	addi	%x8, %x0, 2  #0 pc 34684
	sw	%x6, 0(%x2)  #2462 pc 34688
	sw	%x7, 4(%x2)  #2462 pc 34692
	sw	%x9, 8(%x2)  #2462 pc 34696
	addi	%x7, %x8, 0  #0 pc 34700
	addi	%x6, %x9, 0  #0 pc 34704
	sw	%x1, 12(%x2)  #2462 pc 34708
	addi	%x2, %x2, 16  #2462 pc 34712
	jal	%x1, assign_farray.2573  #2462 pc 34716
	addi	%x2, %x2, -16  #2462 pc 34720
	lw	%x1, 12(%x2) #2462 pc 34724
	fmv	%f0, l.21722  #0 pc 34728
	addi	%x6, %x3, 0  #2462 pc 34732
	addi	%x7, %x6, 0  #2462 pc 34736
	addi	%x6, %x6, 12  #2462 pc 34740
	addi	%x3, %x6, 0  #2462 pc 34744
	addi	%x6, %x0, 2  #0 pc 34748
	sw	%x7, 12(%x2)  #2462 pc 34752
	addi	%x30, %x7, 0  #0 pc 34756
	addi	%x7, %x6, 0  #0 pc 34760
	addi	%x6, %x30, 0  #0 pc 34764
	sw	%x1, 16(%x2)  #2462 pc 34768
	addi	%x2, %x2, 20  #2462 pc 34772
	jal	%x1, assign_farray.2573  #2462 pc 34776
	addi	%x2, %x2, -20  #2462 pc 34780
	lw	%x1, 16(%x2) #2462 pc 34784
	addi	%x6, %x3, 0  #2462 pc 34788
	addi	%x7, %x6, 0  #2462 pc 34792
	addi	%x6, %x6, 20  #2462 pc 34796
	addi	%x3, %x6, 0  #2462 pc 34800
	addi	%x8, %x0, 4  #0 pc 34804
	lw	%x6, 12(%x2)  #2462 pc 34808
	sw	%x7, 16(%x2)  #2462 pc 34812
	addi	%x30, %x7, 0  #0 pc 34816
	addi	%x7, %x6, 0  #0 pc 34820
	addi	%x6, %x30, 0  #0 pc 34824
	sw	%x1, 20(%x2)  #2462 pc 34828
	addi	%x2, %x2, 24  #2462 pc 34832
	jal	%x1, assign_array.2566  #2462 pc 34836
	addi	%x2, %x2, -24  #2462 pc 34840
	lw	%x1, 20(%x2) #2462 pc 34844
	fmv	%f0, l.21722  #0 pc 34848
	addi	%x6, %x3, 0  #2462 pc 34852
	addi	%x7, %x6, 0  #2462 pc 34856
	addi	%x6, %x6, 12  #2462 pc 34860
	addi	%x3, %x6, 0  #2462 pc 34864
	addi	%x6, %x0, 2  #0 pc 34868
	sw	%x7, 20(%x2)  #2462 pc 34872
	addi	%x30, %x7, 0  #0 pc 34876
	addi	%x7, %x6, 0  #0 pc 34880
	addi	%x6, %x30, 0  #0 pc 34884
	sw	%x1, 24(%x2)  #2462 pc 34888
	addi	%x2, %x2, 28  #2462 pc 34892
	jal	%x1, assign_farray.2573  #2462 pc 34896
	addi	%x2, %x2, -28  #2462 pc 34900
	lw	%x1, 24(%x2) #2462 pc 34904
	lw	%x6, 16(%x2)  #2462 pc 34908
	lw	%x7, 20(%x2)  #2462 pc 34912
	sw	%x7, 4(%x6)  #2462 pc 34916
	fmv	%f0, l.21722  #0 pc 34920
	addi	%x7, %x3, 0  #2462 pc 34924
	addi	%x8, %x7, 0  #2462 pc 34928
	addi	%x7, %x7, 12  #2462 pc 34932
	addi	%x3, %x7, 0  #2462 pc 34936
	addi	%x7, %x0, 2  #0 pc 34940
	sw	%x8, 24(%x2)  #2462 pc 34944
	addi	%x6, %x8, 0  #0 pc 34948
	sw	%x1, 28(%x2)  #2462 pc 34952
	addi	%x2, %x2, 32  #2462 pc 34956
	jal	%x1, assign_farray.2573  #2462 pc 34960
	addi	%x2, %x2, -32  #2462 pc 34964
	lw	%x1, 28(%x2) #2462 pc 34968
	lw	%x6, 16(%x2)  #2462 pc 34972
	lw	%x7, 24(%x2)  #2462 pc 34976
	sw	%x7, 8(%x6)  #2462 pc 34980
	fmv	%f0, l.21722  #0 pc 34984
	addi	%x7, %x3, 0  #2462 pc 34988
	addi	%x8, %x7, 0  #2462 pc 34992
	addi	%x7, %x7, 12  #2462 pc 34996
	addi	%x3, %x7, 0  #2462 pc 35000
	addi	%x7, %x0, 2  #0 pc 35004
	sw	%x8, 28(%x2)  #2462 pc 35008
	addi	%x6, %x8, 0  #0 pc 35012
	sw	%x1, 32(%x2)  #2462 pc 35016
	addi	%x2, %x2, 36  #2462 pc 35020
	jal	%x1, assign_farray.2573  #2462 pc 35024
	addi	%x2, %x2, -36  #2462 pc 35028
	lw	%x1, 32(%x2) #2462 pc 35032
	lw	%x6, 16(%x2)  #2462 pc 35036
	lw	%x7, 28(%x2)  #2462 pc 35040
	sw	%x7, 12(%x6)  #2462 pc 35044
	fmv	%f0, l.21722  #0 pc 35048
	addi	%x7, %x3, 0  #2462 pc 35052
	addi	%x8, %x7, 0  #2462 pc 35056
	addi	%x7, %x7, 12  #2462 pc 35060
	addi	%x3, %x7, 0  #2462 pc 35064
	addi	%x7, %x0, 2  #0 pc 35068
	sw	%x8, 32(%x2)  #2462 pc 35072
	addi	%x6, %x8, 0  #0 pc 35076
	sw	%x1, 36(%x2)  #2462 pc 35080
	addi	%x2, %x2, 40  #2462 pc 35084
	jal	%x1, assign_farray.2573  #2462 pc 35088
	addi	%x2, %x2, -40  #2462 pc 35092
	lw	%x1, 36(%x2) #2462 pc 35096
	lw	%x6, 16(%x2)  #2462 pc 35100
	lw	%x7, 32(%x2)  #2462 pc 35104
	sw	%x7, 16(%x6)  #2462 pc 35108
	addi	%x7, %x0, 0  #0 pc 35112
	addi	%x8, %x3, 0  #2462 pc 35116
	addi	%x9, %x8, 0  #2462 pc 35120
	addi	%x8, %x8, 20  #2462 pc 35124
	addi	%x3, %x8, 0  #2462 pc 35128
	addi	%x8, %x0, 4  #0 pc 35132
	sw	%x9, 36(%x2)  #2462 pc 35136
	addi	%x6, %x9, 0  #0 pc 35140
	sw	%x1, 40(%x2)  #2462 pc 35144
	addi	%x2, %x2, 44  #2462 pc 35148
	jal	%x1, assign_array.2566  #2462 pc 35152
	addi	%x2, %x2, -44  #2462 pc 35156
	lw	%x1, 40(%x2) #2462 pc 35160
	addi	%x7, %x0, 0  #0 pc 35164
	addi	%x6, %x3, 0  #2462 pc 35168
	addi	%x8, %x6, 0  #2462 pc 35172
	addi	%x6, %x6, 20  #2462 pc 35176
	addi	%x3, %x6, 0  #2462 pc 35180
	addi	%x6, %x0, 4  #0 pc 35184
	sw	%x8, 40(%x2)  #2462 pc 35188
	addi	%x30, %x8, 0  #0 pc 35192
	addi	%x8, %x6, 0  #0 pc 35196
	addi	%x6, %x30, 0  #0 pc 35200
	sw	%x1, 44(%x2)  #2462 pc 35204
	addi	%x2, %x2, 48  #2462 pc 35208
	jal	%x1, assign_array.2566  #2462 pc 35212
	addi	%x2, %x2, -48  #2462 pc 35216
	lw	%x1, 44(%x2) #2462 pc 35220
	fmv	%f0, l.21722  #0 pc 35224
	addi	%x6, %x3, 0  #2462 pc 35228
	addi	%x7, %x6, 0  #2462 pc 35232
	addi	%x6, %x6, 12  #2462 pc 35236
	addi	%x3, %x6, 0  #2462 pc 35240
	addi	%x6, %x0, 2  #0 pc 35244
	sw	%x7, 44(%x2)  #2462 pc 35248
	addi	%x30, %x7, 0  #0 pc 35252
	addi	%x7, %x6, 0  #0 pc 35256
	addi	%x6, %x30, 0  #0 pc 35260
	sw	%x1, 48(%x2)  #2462 pc 35264
	addi	%x2, %x2, 52  #2462 pc 35268
	jal	%x1, assign_farray.2573  #2462 pc 35272
	addi	%x2, %x2, -52  #2462 pc 35276
	lw	%x1, 48(%x2) #2462 pc 35280
	addi	%x6, %x3, 0  #2462 pc 35284
	addi	%x7, %x6, 0  #2462 pc 35288
	addi	%x6, %x6, 20  #2462 pc 35292
	addi	%x3, %x6, 0  #2462 pc 35296
	addi	%x8, %x0, 4  #0 pc 35300
	lw	%x6, 44(%x2)  #2462 pc 35304
	sw	%x7, 48(%x2)  #2462 pc 35308
	addi	%x30, %x7, 0  #0 pc 35312
	addi	%x7, %x6, 0  #0 pc 35316
	addi	%x6, %x30, 0  #0 pc 35320
	sw	%x1, 52(%x2)  #2462 pc 35324
	addi	%x2, %x2, 56  #2462 pc 35328
	jal	%x1, assign_array.2566  #2462 pc 35332
	addi	%x2, %x2, -56  #2462 pc 35336
	lw	%x1, 52(%x2) #2462 pc 35340
	fmv	%f0, l.21722  #0 pc 35344
	addi	%x6, %x3, 0  #2462 pc 35348
	addi	%x7, %x6, 0  #2462 pc 35352
	addi	%x6, %x6, 12  #2462 pc 35356
	addi	%x3, %x6, 0  #2462 pc 35360
	addi	%x6, %x0, 2  #0 pc 35364
	sw	%x7, 52(%x2)  #2462 pc 35368
	addi	%x30, %x7, 0  #0 pc 35372
	addi	%x7, %x6, 0  #0 pc 35376
	addi	%x6, %x30, 0  #0 pc 35380
	sw	%x1, 56(%x2)  #2462 pc 35384
	addi	%x2, %x2, 60  #2462 pc 35388
	jal	%x1, assign_farray.2573  #2462 pc 35392
	addi	%x2, %x2, -60  #2462 pc 35396
	lw	%x1, 56(%x2) #2462 pc 35400
	lw	%x6, 48(%x2)  #2462 pc 35404
	lw	%x7, 52(%x2)  #2462 pc 35408
	sw	%x7, 4(%x6)  #2462 pc 35412
	fmv	%f0, l.21722  #0 pc 35416
	addi	%x7, %x3, 0  #2462 pc 35420
	addi	%x8, %x7, 0  #2462 pc 35424
	addi	%x7, %x7, 12  #2462 pc 35428
	addi	%x3, %x7, 0  #2462 pc 35432
	addi	%x7, %x0, 2  #0 pc 35436
	sw	%x8, 56(%x2)  #2462 pc 35440
	addi	%x6, %x8, 0  #0 pc 35444
	sw	%x1, 60(%x2)  #2462 pc 35448
	addi	%x2, %x2, 64  #2462 pc 35452
	jal	%x1, assign_farray.2573  #2462 pc 35456
	addi	%x2, %x2, -64  #2462 pc 35460
	lw	%x1, 60(%x2) #2462 pc 35464
	lw	%x6, 48(%x2)  #2462 pc 35468
	lw	%x7, 56(%x2)  #2462 pc 35472
	sw	%x7, 8(%x6)  #2462 pc 35476
	fmv	%f0, l.21722  #0 pc 35480
	addi	%x7, %x3, 0  #2462 pc 35484
	addi	%x8, %x7, 0  #2462 pc 35488
	addi	%x7, %x7, 12  #2462 pc 35492
	addi	%x3, %x7, 0  #2462 pc 35496
	addi	%x7, %x0, 2  #0 pc 35500
	sw	%x8, 60(%x2)  #2462 pc 35504
	addi	%x6, %x8, 0  #0 pc 35508
	sw	%x1, 64(%x2)  #2462 pc 35512
	addi	%x2, %x2, 68  #2462 pc 35516
	jal	%x1, assign_farray.2573  #2462 pc 35520
	addi	%x2, %x2, -68  #2462 pc 35524
	lw	%x1, 64(%x2) #2462 pc 35528
	lw	%x6, 48(%x2)  #2462 pc 35532
	lw	%x7, 60(%x2)  #2462 pc 35536
	sw	%x7, 12(%x6)  #2462 pc 35540
	fmv	%f0, l.21722  #0 pc 35544
	addi	%x7, %x3, 0  #2462 pc 35548
	addi	%x8, %x7, 0  #2462 pc 35552
	addi	%x7, %x7, 12  #2462 pc 35556
	addi	%x3, %x7, 0  #2462 pc 35560
	addi	%x7, %x0, 2  #0 pc 35564
	sw	%x8, 64(%x2)  #2462 pc 35568
	addi	%x6, %x8, 0  #0 pc 35572
	sw	%x1, 68(%x2)  #2462 pc 35576
	addi	%x2, %x2, 72  #2462 pc 35580
	jal	%x1, assign_farray.2573  #2462 pc 35584
	addi	%x2, %x2, -72  #2462 pc 35588
	lw	%x1, 68(%x2) #2462 pc 35592
	lw	%x6, 48(%x2)  #2462 pc 35596
	lw	%x7, 64(%x2)  #2462 pc 35600
	sw	%x7, 16(%x6)  #2462 pc 35604
	fmv	%f0, l.21722  #0 pc 35608
	addi	%x7, %x3, 0  #2462 pc 35612
	addi	%x8, %x7, 0  #2462 pc 35616
	addi	%x7, %x7, 12  #2462 pc 35620
	addi	%x3, %x7, 0  #2462 pc 35624
	addi	%x7, %x0, 2  #0 pc 35628
	sw	%x8, 68(%x2)  #2462 pc 35632
	addi	%x6, %x8, 0  #0 pc 35636
	sw	%x1, 72(%x2)  #2462 pc 35640
	addi	%x2, %x2, 76  #2462 pc 35644
	jal	%x1, assign_farray.2573  #2462 pc 35648
	addi	%x2, %x2, -76  #2462 pc 35652
	lw	%x1, 72(%x2) #2462 pc 35656
	addi	%x6, %x3, 0  #2462 pc 35660
	addi	%x7, %x6, 0  #2462 pc 35664
	addi	%x6, %x6, 20  #2462 pc 35668
	addi	%x3, %x6, 0  #2462 pc 35672
	addi	%x8, %x0, 4  #0 pc 35676
	lw	%x6, 68(%x2)  #2462 pc 35680
	sw	%x7, 72(%x2)  #2462 pc 35684
	addi	%x30, %x7, 0  #0 pc 35688
	addi	%x7, %x6, 0  #0 pc 35692
	addi	%x6, %x30, 0  #0 pc 35696
	sw	%x1, 76(%x2)  #2462 pc 35700
	addi	%x2, %x2, 80  #2462 pc 35704
	jal	%x1, assign_array.2566  #2462 pc 35708
	addi	%x2, %x2, -80  #2462 pc 35712
	lw	%x1, 76(%x2) #2462 pc 35716
	fmv	%f0, l.21722  #0 pc 35720
	addi	%x6, %x3, 0  #2462 pc 35724
	addi	%x7, %x6, 0  #2462 pc 35728
	addi	%x6, %x6, 12  #2462 pc 35732
	addi	%x3, %x6, 0  #2462 pc 35736
	addi	%x6, %x0, 2  #0 pc 35740
	sw	%x7, 76(%x2)  #2462 pc 35744
	addi	%x30, %x7, 0  #0 pc 35748
	addi	%x7, %x6, 0  #0 pc 35752
	addi	%x6, %x30, 0  #0 pc 35756
	sw	%x1, 80(%x2)  #2462 pc 35760
	addi	%x2, %x2, 84  #2462 pc 35764
	jal	%x1, assign_farray.2573  #2462 pc 35768
	addi	%x2, %x2, -84  #2462 pc 35772
	lw	%x1, 80(%x2) #2462 pc 35776
	lw	%x6, 72(%x2)  #2462 pc 35780
	lw	%x7, 76(%x2)  #2462 pc 35784
	sw	%x7, 4(%x6)  #2462 pc 35788
	fmv	%f0, l.21722  #0 pc 35792
	addi	%x7, %x3, 0  #2462 pc 35796
	addi	%x8, %x7, 0  #2462 pc 35800
	addi	%x7, %x7, 12  #2462 pc 35804
	addi	%x3, %x7, 0  #2462 pc 35808
	addi	%x7, %x0, 2  #0 pc 35812
	sw	%x8, 80(%x2)  #2462 pc 35816
	addi	%x6, %x8, 0  #0 pc 35820
	sw	%x1, 84(%x2)  #2462 pc 35824
	addi	%x2, %x2, 88  #2462 pc 35828
	jal	%x1, assign_farray.2573  #2462 pc 35832
	addi	%x2, %x2, -88  #2462 pc 35836
	lw	%x1, 84(%x2) #2462 pc 35840
	lw	%x6, 72(%x2)  #2462 pc 35844
	lw	%x7, 80(%x2)  #2462 pc 35848
	sw	%x7, 8(%x6)  #2462 pc 35852
	fmv	%f0, l.21722  #0 pc 35856
	addi	%x7, %x3, 0  #2462 pc 35860
	addi	%x8, %x7, 0  #2462 pc 35864
	addi	%x7, %x7, 12  #2462 pc 35868
	addi	%x3, %x7, 0  #2462 pc 35872
	addi	%x7, %x0, 2  #0 pc 35876
	sw	%x8, 84(%x2)  #2462 pc 35880
	addi	%x6, %x8, 0  #0 pc 35884
	sw	%x1, 88(%x2)  #2462 pc 35888
	addi	%x2, %x2, 92  #2462 pc 35892
	jal	%x1, assign_farray.2573  #2462 pc 35896
	addi	%x2, %x2, -92  #2462 pc 35900
	lw	%x1, 88(%x2) #2462 pc 35904
	lw	%x6, 72(%x2)  #2462 pc 35908
	lw	%x7, 84(%x2)  #2462 pc 35912
	sw	%x7, 12(%x6)  #2462 pc 35916
	fmv	%f0, l.21722  #0 pc 35920
	addi	%x7, %x3, 0  #2462 pc 35924
	addi	%x8, %x7, 0  #2462 pc 35928
	addi	%x7, %x7, 12  #2462 pc 35932
	addi	%x3, %x7, 0  #2462 pc 35936
	addi	%x7, %x0, 2  #0 pc 35940
	sw	%x8, 88(%x2)  #2462 pc 35944
	addi	%x6, %x8, 0  #0 pc 35948
	sw	%x1, 92(%x2)  #2462 pc 35952
	addi	%x2, %x2, 96  #2462 pc 35956
	jal	%x1, assign_farray.2573  #2462 pc 35960
	addi	%x2, %x2, -96  #2462 pc 35964
	lw	%x1, 92(%x2) #2462 pc 35968
	lw	%x6, 72(%x2)  #2462 pc 35972
	lw	%x7, 88(%x2)  #2462 pc 35976
	sw	%x7, 16(%x6)  #2462 pc 35980
	addi	%x7, %x0, 0  #0 pc 35984
	addi	%x8, %x3, 0  #2462 pc 35988
	addi	%x9, %x8, 0  #2462 pc 35992
	addi	%x8, %x8, 4  #2462 pc 35996
	addi	%x3, %x8, 0  #2462 pc 36000
	addi	%x8, %x0, 0  #0 pc 36004
	sw	%x9, 92(%x2)  #2462 pc 36008
	addi	%x6, %x9, 0  #0 pc 36012
	sw	%x1, 96(%x2)  #2462 pc 36016
	addi	%x2, %x2, 100  #2462 pc 36020
	jal	%x1, assign_array.2566  #2462 pc 36024
	addi	%x2, %x2, -100  #2462 pc 36028
	lw	%x1, 96(%x2) #2462 pc 36032
	fmv	%f0, l.21722  #0 pc 36036
	addi	%x6, %x3, 0  #2462 pc 36040
	addi	%x7, %x6, 0  #2462 pc 36044
	addi	%x6, %x6, 12  #2462 pc 36048
	addi	%x3, %x6, 0  #2462 pc 36052
	addi	%x6, %x0, 2  #0 pc 36056
	sw	%x7, 96(%x2)  #2462 pc 36060
	addi	%x30, %x7, 0  #0 pc 36064
	addi	%x7, %x6, 0  #0 pc 36068
	addi	%x6, %x30, 0  #0 pc 36072
	sw	%x1, 100(%x2)  #2462 pc 36076
	addi	%x2, %x2, 104  #2462 pc 36080
	jal	%x1, assign_farray.2573  #2462 pc 36084
	addi	%x2, %x2, -104  #2462 pc 36088
	lw	%x1, 100(%x2) #2462 pc 36092
	addi	%x6, %x3, 0  #2462 pc 36096
	addi	%x7, %x6, 0  #2462 pc 36100
	addi	%x6, %x6, 20  #2462 pc 36104
	addi	%x3, %x6, 0  #2462 pc 36108
	addi	%x8, %x0, 4  #0 pc 36112
	lw	%x6, 96(%x2)  #2462 pc 36116
	sw	%x7, 100(%x2)  #2462 pc 36120
	addi	%x30, %x7, 0  #0 pc 36124
	addi	%x7, %x6, 0  #0 pc 36128
	addi	%x6, %x30, 0  #0 pc 36132
	sw	%x1, 104(%x2)  #2462 pc 36136
	addi	%x2, %x2, 108  #2462 pc 36140
	jal	%x1, assign_array.2566  #2462 pc 36144
	addi	%x2, %x2, -108  #2462 pc 36148
	lw	%x1, 104(%x2) #2462 pc 36152
	fmv	%f0, l.21722  #0 pc 36156
	addi	%x6, %x3, 0  #2462 pc 36160
	addi	%x7, %x6, 0  #2462 pc 36164
	addi	%x6, %x6, 12  #2462 pc 36168
	addi	%x3, %x6, 0  #2462 pc 36172
	addi	%x6, %x0, 2  #0 pc 36176
	sw	%x7, 104(%x2)  #2462 pc 36180
	addi	%x30, %x7, 0  #0 pc 36184
	addi	%x7, %x6, 0  #0 pc 36188
	addi	%x6, %x30, 0  #0 pc 36192
	sw	%x1, 108(%x2)  #2462 pc 36196
	addi	%x2, %x2, 112  #2462 pc 36200
	jal	%x1, assign_farray.2573  #2462 pc 36204
	addi	%x2, %x2, -112  #2462 pc 36208
	lw	%x1, 108(%x2) #2462 pc 36212
	lw	%x6, 100(%x2)  #2462 pc 36216
	lw	%x7, 104(%x2)  #2462 pc 36220
	sw	%x7, 4(%x6)  #2462 pc 36224
	fmv	%f0, l.21722  #0 pc 36228
	addi	%x7, %x3, 0  #2462 pc 36232
	addi	%x8, %x7, 0  #2462 pc 36236
	addi	%x7, %x7, 12  #2462 pc 36240
	addi	%x3, %x7, 0  #2462 pc 36244
	addi	%x7, %x0, 2  #0 pc 36248
	sw	%x8, 108(%x2)  #2462 pc 36252
	addi	%x6, %x8, 0  #0 pc 36256
	sw	%x1, 112(%x2)  #2462 pc 36260
	addi	%x2, %x2, 116  #2462 pc 36264
	jal	%x1, assign_farray.2573  #2462 pc 36268
	addi	%x2, %x2, -116  #2462 pc 36272
	lw	%x1, 112(%x2) #2462 pc 36276
	lw	%x6, 100(%x2)  #2462 pc 36280
	lw	%x7, 108(%x2)  #2462 pc 36284
	sw	%x7, 8(%x6)  #2462 pc 36288
	fmv	%f0, l.21722  #0 pc 36292
	addi	%x7, %x3, 0  #2462 pc 36296
	addi	%x8, %x7, 0  #2462 pc 36300
	addi	%x7, %x7, 12  #2462 pc 36304
	addi	%x3, %x7, 0  #2462 pc 36308
	addi	%x7, %x0, 2  #0 pc 36312
	sw	%x8, 112(%x2)  #2462 pc 36316
	addi	%x6, %x8, 0  #0 pc 36320
	sw	%x1, 116(%x2)  #2462 pc 36324
	addi	%x2, %x2, 120  #2462 pc 36328
	jal	%x1, assign_farray.2573  #2462 pc 36332
	addi	%x2, %x2, -120  #2462 pc 36336
	lw	%x1, 116(%x2) #2462 pc 36340
	lw	%x6, 100(%x2)  #2462 pc 36344
	lw	%x7, 112(%x2)  #2462 pc 36348
	sw	%x7, 12(%x6)  #2462 pc 36352
	fmv	%f0, l.21722  #0 pc 36356
	addi	%x7, %x3, 0  #2462 pc 36360
	addi	%x8, %x7, 0  #2462 pc 36364
	addi	%x7, %x7, 12  #2462 pc 36368
	addi	%x3, %x7, 0  #2462 pc 36372
	addi	%x7, %x0, 2  #0 pc 36376
	sw	%x8, 116(%x2)  #2462 pc 36380
	addi	%x6, %x8, 0  #0 pc 36384
	sw	%x1, 120(%x2)  #2462 pc 36388
	addi	%x2, %x2, 124  #2462 pc 36392
	jal	%x1, assign_farray.2573  #2462 pc 36396
	addi	%x2, %x2, -124  #2462 pc 36400
	lw	%x1, 120(%x2) #2462 pc 36404
	lw	%x6, 100(%x2)  #2462 pc 36408
	lw	%x7, 116(%x2)  #2462 pc 36412
	sw	%x7, 16(%x6)  #2462 pc 36416
	addi	%x7, %x3, 0  #2462 pc 36420
	addi	%x3, %x3, 32  #2462 pc 36424
	sw	%x6, 28(%x7)  #2462 pc 36428
	lw	%x6, 92(%x2)  #2462 pc 36432
	sw	%x6, 24(%x7)  #2462 pc 36436
	lw	%x6, 72(%x2)  #2462 pc 36440
	sw	%x6, 20(%x7)  #2462 pc 36444
	lw	%x6, 48(%x2)  #2462 pc 36448
	sw	%x6, 16(%x7)  #2462 pc 36452
	lw	%x6, 40(%x2)  #2462 pc 36456
	sw	%x6, 12(%x7)  #2462 pc 36460
	lw	%x6, 36(%x2)  #2462 pc 36464
	sw	%x6, 8(%x7)  #2462 pc 36468
	lw	%x6, 16(%x2)  #2462 pc 36472
	sw	%x6, 4(%x7)  #2462 pc 36476
	lw	%x6, 8(%x2)  #2462 pc 36480
	sw	%x6, 0(%x7)  #2462 pc 36484
	addi	%x6, %x7, 0  #2462 pc 36488
	lw	%x7, 4(%x2)  #2462 pc 36492
	slli	%x8, %x7, 2  #2462 pc 36496
	lw	%x9, 0(%x2)  #2462 pc 36500
	add	%x31, %x8, %x9  #2462 pc 36504
	sw	%x6, 0(%x31)  #2462 pc 36508
	addi	%x7, %x7, -1  #2463 pc 36512
	addi	%x6, %x9, 0  #0 pc 36516
	j	init_line_elements.3034  #2463 pc 36520
	nop #pc 36524
bge_else.26031: #pc 36528
	ret #pc 36528
	nop #pc 36532
calc_dirvec.3044:  #pc 36536
	lw	%x9, 4(%x29)  #0 pc 36536
	addi	%x31, %x0, 5  #pc 36540
	bge	%x6, %x31, 12  #2498 pc 36544
	j	bge_else.26032 #pc 36548
	nop #pc 36552
	fmul	%f2, %f0, %f0  #2499 pc 36556
	fmul	%f3, %f1, %f1  #2499 pc 36560
	fadd	%f2, %f2, %f3  #2499 pc 36564
	fmv	%f3, l.21731  #0 pc 36568
	fadd	%f2, %f2, %f3  #2499 pc 36572
	fsqrt	%f2, %f2  #2499 pc 36576
	fdiv	%f0, %f0, %f2  #2500 pc 36580
	fdiv	%f1, %f1, %f2  #2501 pc 36584
	fmv	%f3, l.21731  #0 pc 36588
	fdiv	%f2, %f3, %f2  #2502 pc 36592
	slli	%x6, %x7, 2  #2505 pc 36596
	add	%x31, %x6, %x9  #2505 pc 36600
	lw	%x6, 0(%x31)  #2505 pc 36604
	slli	%x7, %x8, 2  #2506 pc 36608
	add	%x31, %x7, %x6  #2506 pc 36612
	lw	%x7, 0(%x31)  #2506 pc 36616
	lw	%x7, 0(%x7)  #2506 pc 36620
	fsw	%f0, 0(%x7)  #2506 pc 36624
	fsw	%f1, 4(%x7)  #2506 pc 36628
	fsw	%f2, 8(%x7)  #2506 pc 36632
	addi	%x7, %x8, 40  #2507 pc 36636
	slli	%x7, %x7, 2  #2507 pc 36640
	add	%x31, %x7, %x6  #2507 pc 36644
	lw	%x7, 0(%x31)  #2507 pc 36648
	lw	%x7, 0(%x7)  #2507 pc 36652
	fsub	%f3, %f30, %f1  #2507 pc 36656
	fsw	%f0, 0(%x7)  #2507 pc 36660
	fsw	%f2, 4(%x7)  #2507 pc 36664
	fsw	%f3, 8(%x7)  #2507 pc 36668
	addi	%x7, %x8, 80  #2508 pc 36672
	slli	%x7, %x7, 2  #2508 pc 36676
	add	%x31, %x7, %x6  #2508 pc 36680
	lw	%x7, 0(%x31)  #2508 pc 36684
	lw	%x7, 0(%x7)  #2508 pc 36688
	fsub	%f3, %f30, %f0  #2508 pc 36692
	fsub	%f4, %f30, %f1  #2508 pc 36696
	fsw	%f2, 0(%x7)  #2508 pc 36700
	fsw	%f3, 4(%x7)  #2508 pc 36704
	fsw	%f4, 8(%x7)  #2508 pc 36708
	addi	%x7, %x8, 1  #2509 pc 36712
	slli	%x7, %x7, 2  #2509 pc 36716
	add	%x31, %x7, %x6  #2509 pc 36720
	lw	%x7, 0(%x31)  #2509 pc 36724
	lw	%x7, 0(%x7)  #2509 pc 36728
	fsub	%f3, %f30, %f0  #2509 pc 36732
	fsub	%f4, %f30, %f1  #2509 pc 36736
	fsub	%f5, %f30, %f2  #2509 pc 36740
	fsw	%f3, 0(%x7)  #2509 pc 36744
	fsw	%f4, 4(%x7)  #2509 pc 36748
	fsw	%f5, 8(%x7)  #2509 pc 36752
	addi	%x7, %x8, 41  #2510 pc 36756
	slli	%x7, %x7, 2  #2510 pc 36760
	add	%x31, %x7, %x6  #2510 pc 36764
	lw	%x7, 0(%x31)  #2510 pc 36768
	lw	%x7, 0(%x7)  #2510 pc 36772
	fsub	%f3, %f30, %f0  #2510 pc 36776
	fsub	%f4, %f30, %f2  #2510 pc 36780
	fsw	%f3, 0(%x7)  #2510 pc 36784
	fsw	%f4, 4(%x7)  #2510 pc 36788
	fsw	%f1, 8(%x7)  #2510 pc 36792
	addi	%x7, %x8, 81  #2511 pc 36796
	slli	%x7, %x7, 2  #2511 pc 36800
	add	%x31, %x7, %x6  #2511 pc 36804
	lw	%x6, 0(%x31)  #2511 pc 36808
	lw	%x6, 0(%x6)  #2511 pc 36812
	fsub	%f2, %f30, %f2  #2511 pc 36816
	fsw	%f2, 0(%x6)  #2511 pc 36820
	fsw	%f0, 4(%x6)  #2511 pc 36824
	fsw	%f1, 8(%x6)  #2511 pc 36828
	ret #pc 36832
	nop #pc 36836
bge_else.26032: #pc 36840
	fmul	%f0, %f1, %f1  #2513 pc 36840
	fmv	%f1, l.22736  #0 pc 36844
	fadd	%f0, %f0, %f1  #2513 pc 36848
	fsqrt	%f0, %f0  #2513 pc 36852
	fmv	%f1, l.21731  #0 pc 36856
	fdiv	%f1, %f1, %f0  #2513 pc 36860
	fmul	%f4, %f1, %f1  #2513 pc 36864
	fmul	%f5, %f1, %f4  #2513 pc 36868
	fmul	%f6, %f5, %f4  #2513 pc 36872
	fmul	%f7, %f6, %f4  #2513 pc 36876
	fmul	%f8, %f7, %f4  #2513 pc 36880
	fmul	%f4, %f8, %f4  #2513 pc 36884
	fmv	%f9, l.22565  #0 pc 36888
	fmul	%f5, %f9, %f5  #2513 pc 36892
	fsub	%f1, %f1, %f5  #2513 pc 36896
	fmv	%f5, l.22567  #0 pc 36900
	fmul	%f5, %f5, %f6  #2513 pc 36904
	fadd	%f1, %f1, %f5  #2513 pc 36908
	fmv	%f5, l.22569  #0 pc 36912
	fmul	%f5, %f5, %f7  #2513 pc 36916
	fsub	%f1, %f1, %f5  #2513 pc 36920
	fmv	%f5, l.22571  #0 pc 36924
	fmul	%f5, %f5, %f8  #2513 pc 36928
	fadd	%f1, %f1, %f5  #2513 pc 36932
	fmv	%f5, l.22573  #0 pc 36936
	fmul	%f4, %f5, %f4  #2513 pc 36940
	fsub	%f1, %f1, %f4  #2513 pc 36944
	fmul	%f1, %f1, %f2  #2513 pc 36948
	fsw	%f2, 0(%x2)  #2513 pc 36952
	sw	%x8, 8(%x2)  #2513 pc 36956
	sw	%x7, 12(%x2)  #2513 pc 36960
	sw	%x29, 16(%x2)  #2513 pc 36964
	fsw	%f3, 24(%x2)  #2513 pc 36968
	sw	%x6, 32(%x2)  #2513 pc 36972
	fsw	%f0, 40(%x2)  #2513 pc 36976
	fsw	%f1, 48(%x2)  #2513 pc 36980
	fadd	%f0, %f1, %f30  #0 pc 36984
	sw	%x1, 56(%x2)  #2513 pc 36988
	addi	%x2, %x2, 60  #2513 pc 36992
	jal	%x1, sin.2526  #2513 pc 36996
	addi	%x2, %x2, -60  #2513 pc 37000
	lw	%x1, 56(%x2) #2513 pc 37004
	flw	%f1, 48(%x2)  #2513 pc 37008
	fsw	%f0, 56(%x2)  #2513 pc 37012
	fadd	%f0, %f1, %f30  #0 pc 37016
	sw	%x1, 64(%x2)  #2513 pc 37020
	addi	%x2, %x2, 68  #2513 pc 37024
	jal	%x1, cos.2530  #2513 pc 37028
	addi	%x2, %x2, -68  #2513 pc 37032
	lw	%x1, 64(%x2) #2513 pc 37036
	flw	%f1, 56(%x2)  #2513 pc 37040
	fdiv	%f0, %f1, %f0  #2513 pc 37044
	flw	%f1, 40(%x2)  #2513 pc 37048
	fmul	%f0, %f0, %f1  #2513 pc 37052
	lw	%x6, 32(%x2)  #2514 pc 37056
	addi	%x6, %x6, 1  #2514 pc 37060
	fmul	%f1, %f0, %f0  #2514 pc 37064
	fmv	%f2, l.22736  #0 pc 37068
	fadd	%f1, %f1, %f2  #2514 pc 37072
	fsqrt	%f1, %f1  #2514 pc 37076
	fmv	%f2, l.21731  #0 pc 37080
	fdiv	%f2, %f2, %f1  #2514 pc 37084
	fmul	%f3, %f2, %f2  #2514 pc 37088
	fmul	%f4, %f2, %f3  #2514 pc 37092
	fmul	%f5, %f4, %f3  #2514 pc 37096
	fmul	%f6, %f5, %f3  #2514 pc 37100
	fmul	%f7, %f6, %f3  #2514 pc 37104
	fmul	%f3, %f7, %f3  #2514 pc 37108
	fmv	%f8, l.22565  #0 pc 37112
	fmul	%f4, %f8, %f4  #2514 pc 37116
	fsub	%f2, %f2, %f4  #2514 pc 37120
	fmv	%f4, l.22567  #0 pc 37124
	fmul	%f4, %f4, %f5  #2514 pc 37128
	fadd	%f2, %f2, %f4  #2514 pc 37132
	fmv	%f4, l.22569  #0 pc 37136
	fmul	%f4, %f4, %f6  #2514 pc 37140
	fsub	%f2, %f2, %f4  #2514 pc 37144
	fmv	%f4, l.22571  #0 pc 37148
	fmul	%f4, %f4, %f7  #2514 pc 37152
	fadd	%f2, %f2, %f4  #2514 pc 37156
	fmv	%f4, l.22573  #0 pc 37160
	fmul	%f3, %f4, %f3  #2514 pc 37164
	fsub	%f2, %f2, %f3  #2514 pc 37168
	flw	%f3, 24(%x2)  #2514 pc 37172
	fmul	%f2, %f2, %f3  #2514 pc 37176
	fsw	%f0, 64(%x2)  #2514 pc 37180
	sw	%x6, 72(%x2)  #2514 pc 37184
	fsw	%f1, 80(%x2)  #2514 pc 37188
	fsw	%f2, 88(%x2)  #2514 pc 37192
	fadd	%f0, %f2, %f30  #0 pc 37196
	sw	%x1, 96(%x2)  #2514 pc 37200
	addi	%x2, %x2, 100  #2514 pc 37204
	jal	%x1, sin.2526  #2514 pc 37208
	addi	%x2, %x2, -100  #2514 pc 37212
	lw	%x1, 96(%x2) #2514 pc 37216
	flw	%f1, 88(%x2)  #2514 pc 37220
	fsw	%f0, 96(%x2)  #2514 pc 37224
	fadd	%f0, %f1, %f30  #0 pc 37228
	sw	%x1, 104(%x2)  #2514 pc 37232
	addi	%x2, %x2, 108  #2514 pc 37236
	jal	%x1, cos.2530  #2514 pc 37240
	addi	%x2, %x2, -108  #2514 pc 37244
	lw	%x1, 104(%x2) #2514 pc 37248
	flw	%f1, 96(%x2)  #2514 pc 37252
	fdiv	%f0, %f1, %f0  #2514 pc 37256
	flw	%f1, 80(%x2)  #2514 pc 37260
	fmul	%f1, %f0, %f1  #2514 pc 37264
	flw	%f0, 64(%x2)  #2514 pc 37268
	flw	%f2, 0(%x2)  #2514 pc 37272
	flw	%f3, 24(%x2)  #2514 pc 37276
	lw	%x6, 72(%x2)  #2514 pc 37280
	lw	%x7, 12(%x2)  #2514 pc 37284
	lw	%x8, 8(%x2)  #2514 pc 37288
	lw	%x29, 16(%x2)  #2514 pc 37292
	lw	%x30, 0(%x29)  #2514 pc 37296
	jalr	%x0, %x30, 0  #2514 pc 37300
	nop #pc 37304
calc_dirvecs.3052:  #pc 37308
	lw	%x9, 4(%x29)  #0 pc 37308
	bge	%x6, %x0, 12  #2519 pc 37312
	j	bge_else.26037 #pc 37316
	nop #pc 37320
	itof	%f1, %x6  #2521 pc 37324
	fmv	%f2, l.22567  #0 pc 37328
	fmul	%f1, %f1, %f2  #2521 pc 37332
	fmv	%f2, l.23422  #0 pc 37336
	fsub	%f2, %f1, %f2  #2521 pc 37340
	addi	%x10, %x0, 0  #0 pc 37344
	fmv	%f1, l.21722  #0 pc 37348
	fmv	%f3, l.21722  #0 pc 37352
	sw	%x29, 0(%x2)  #2522 pc 37356
	fsw	%f0, 8(%x2)  #2522 pc 37360
	sw	%x7, 16(%x2)  #2522 pc 37364
	sw	%x9, 20(%x2)  #2522 pc 37368
	sw	%x8, 24(%x2)  #2522 pc 37372
	sw	%x6, 28(%x2)  #2522 pc 37376
	addi	%x6, %x10, 0  #0 pc 37380
	addi	%x29, %x9, 0  #0 pc 37384
	fadd	%f29, %f3, %f30  #0 pc 37388
	fadd	%f3, %f0, %f30  #0 pc 37392
	fadd	%f0, %f1, %f30  #0 pc 37396
	fadd	%f1, %f29, %f30  #0 pc 37400
	sw	%x1, 32(%x2)  #2522 pc 37404
	lw	%x30, 0(%x29)  #2522 pc 37408
	addi	%x2, %x2, 36  #2522 pc 37412
	jalr	%x1, %x30, 0  #2522 pc 37416
	addi	%x2, %x2, -36  #2522 pc 37420
	lw	%x1, 32(%x2)  #2522 pc 37424
	lw	%x6, 28(%x2)  #2524 pc 37428
	itof	%f0, %x6  #2524 pc 37432
	fmv	%f1, l.22567  #0 pc 37436
	fmul	%f0, %f0, %f1  #2524 pc 37440
	fmv	%f1, l.22736  #0 pc 37444
	fadd	%f2, %f0, %f1  #2524 pc 37448
	addi	%x7, %x0, 0  #0 pc 37452
	fmv	%f0, l.21722  #0 pc 37456
	fmv	%f1, l.21722  #0 pc 37460
	lw	%x8, 24(%x2)  #2525 pc 37464
	addi	%x9, %x8, 2  #2525 pc 37468
	flw	%f3, 8(%x2)  #2525 pc 37472
	lw	%x10, 16(%x2)  #2525 pc 37476
	lw	%x29, 20(%x2)  #2525 pc 37480
	addi	%x8, %x9, 0  #0 pc 37484
	addi	%x6, %x7, 0  #0 pc 37488
	addi	%x7, %x10, 0  #0 pc 37492
	sw	%x1, 32(%x2)  #2525 pc 37496
	lw	%x30, 0(%x29)  #2525 pc 37500
	addi	%x2, %x2, 36  #2525 pc 37504
	jalr	%x1, %x30, 0  #2525 pc 37508
	addi	%x2, %x2, -36  #2525 pc 37512
	lw	%x1, 32(%x2)  #2525 pc 37516
	lw	%x6, 28(%x2)  #2527 pc 37520
	addi	%x6, %x6, -1  #2527 pc 37524
	lw	%x7, 16(%x2)  #2527 pc 37528
	addi	%x7, %x7, 1  #2527 pc 37532
	addi	%x31, %x0, 5  #pc 37536
	bge	%x7, %x31, 12  #2527 pc 37540
	j	bge_else.26039 #pc 37544
	nop #pc 37548
	addi	%x7, %x7, -5  #2527 pc 37552
	j	bge_cont.26040 #pc 37556
	nop #pc 37560
bge_else.26039: #pc 37564
bge_cont.26040: #pc 37564
	flw	%f0, 8(%x2)  #2527 pc 37564
	lw	%x8, 24(%x2)  #2527 pc 37568
	lw	%x29, 0(%x2)  #2527 pc 37572
	lw	%x30, 0(%x29)  #2527 pc 37576
	jalr	%x0, %x30, 0  #2527 pc 37580
	nop #pc 37584
bge_else.26037: #pc 37588
	ret #pc 37588
	nop #pc 37592
calc_dirvec_rows.3057:  #pc 37596
	lw	%x9, 4(%x29)  #0 pc 37596
	bge	%x6, %x0, 12  #2533 pc 37600
	j	bge_else.26042 #pc 37604
	nop #pc 37608
	itof	%f0, %x6  #2534 pc 37612
	fmv	%f1, l.22567  #0 pc 37616
	fmul	%f0, %f0, %f1  #2534 pc 37620
	fmv	%f1, l.23422  #0 pc 37624
	fsub	%f0, %f0, %f1  #2534 pc 37628
	addi	%x10, %x0, 4  #0 pc 37632
	sw	%x29, 0(%x2)  #2535 pc 37636
	sw	%x8, 4(%x2)  #2535 pc 37640
	sw	%x7, 8(%x2)  #2535 pc 37644
	sw	%x6, 12(%x2)  #2535 pc 37648
	addi	%x6, %x10, 0  #0 pc 37652
	addi	%x29, %x9, 0  #0 pc 37656
	sw	%x1, 16(%x2)  #2535 pc 37660
	lw	%x30, 0(%x29)  #2535 pc 37664
	addi	%x2, %x2, 20  #2535 pc 37668
	jalr	%x1, %x30, 0  #2535 pc 37672
	addi	%x2, %x2, -20  #2535 pc 37676
	lw	%x1, 16(%x2)  #2535 pc 37680
	lw	%x6, 12(%x2)  #2536 pc 37684
	addi	%x6, %x6, -1  #2536 pc 37688
	lw	%x7, 8(%x2)  #2536 pc 37692
	addi	%x7, %x7, 2  #2536 pc 37696
	addi	%x31, %x0, 5  #pc 37700
	bge	%x7, %x31, 12  #2536 pc 37704
	j	bge_else.26043 #pc 37708
	nop #pc 37712
	addi	%x7, %x7, -5  #2536 pc 37716
	j	bge_cont.26044 #pc 37720
	nop #pc 37724
bge_else.26043: #pc 37728
bge_cont.26044: #pc 37728
	lw	%x8, 4(%x2)  #2536 pc 37728
	addi	%x8, %x8, 4  #2536 pc 37732
	lw	%x29, 0(%x2)  #2536 pc 37736
	lw	%x30, 0(%x29)  #2536 pc 37740
	jalr	%x0, %x30, 0  #2536 pc 37744
	nop #pc 37748
bge_else.26042: #pc 37752
	ret #pc 37752
	nop #pc 37756
create_dirvec_elements.3063:  #pc 37760
	lw	%x8, 4(%x29)  #0 pc 37760
	bge	%x7, %x0, 12  #2552 pc 37764
	j	bge_else.26046 #pc 37768
	nop #pc 37772
	fmv	%f0, l.21722  #0 pc 37776
	addi	%x9, %x3, 0  #2553 pc 37780
	addi	%x10, %x9, 0  #2553 pc 37784
	addi	%x9, %x9, 12  #2553 pc 37788
	addi	%x3, %x9, 0  #2553 pc 37792
	addi	%x9, %x0, 2  #0 pc 37796
	sw	%x29, 0(%x2)  #2553 pc 37800
	sw	%x6, 4(%x2)  #2553 pc 37804
	sw	%x7, 8(%x2)  #2553 pc 37808
	sw	%x10, 12(%x2)  #2553 pc 37812
	sw	%x8, 16(%x2)  #2553 pc 37816
	addi	%x7, %x9, 0  #0 pc 37820
	addi	%x6, %x10, 0  #0 pc 37824
	sw	%x1, 20(%x2)  #2553 pc 37828
	addi	%x2, %x2, 24  #2553 pc 37832
	jal	%x1, assign_farray.2573  #2553 pc 37836
	addi	%x2, %x2, -24  #2553 pc 37840
	lw	%x1, 20(%x2) #2553 pc 37844
	lw	%x6, 16(%x2)  #2553 pc 37848
	lw	%x6, 0(%x6)  #2553 pc 37852
	addi	%x7, %x3, 0  #2553 pc 37856
	addi	%x8, %x7, 0  #2553 pc 37860
	slli	%x9, %x6, 2  #2553 pc 37864
	add	%x7, %x7, %x9  #2553 pc 37868
	addi	%x3, %x7, 0  #2553 pc 37872
	addi	%x6, %x6, -1  #2553 pc 37876
	lw	%x7, 12(%x2)  #2553 pc 37880
	sw	%x8, 20(%x2)  #2553 pc 37884
	addi	%x30, %x8, 0  #0 pc 37888
	addi	%x8, %x6, 0  #0 pc 37892
	addi	%x6, %x30, 0  #0 pc 37896
	sw	%x1, 24(%x2)  #2553 pc 37900
	addi	%x2, %x2, 28  #2553 pc 37904
	jal	%x1, assign_array.2566  #2553 pc 37908
	addi	%x2, %x2, -28  #2553 pc 37912
	lw	%x1, 24(%x2) #2553 pc 37916
	addi	%x6, %x3, 0  #2553 pc 37920
	addi	%x3, %x3, 8  #2553 pc 37924
	lw	%x7, 20(%x2)  #2553 pc 37928
	sw	%x7, 4(%x6)  #2553 pc 37932
	lw	%x7, 12(%x2)  #2553 pc 37936
	sw	%x7, 0(%x6)  #2553 pc 37940
	lw	%x7, 8(%x2)  #2553 pc 37944
	slli	%x8, %x7, 2  #2553 pc 37948
	lw	%x9, 4(%x2)  #2553 pc 37952
	add	%x31, %x8, %x9  #2553 pc 37956
	sw	%x6, 0(%x31)  #2553 pc 37960
	addi	%x7, %x7, -1  #2554 pc 37964
	lw	%x29, 0(%x2)  #2554 pc 37968
	addi	%x6, %x9, 0  #0 pc 37972
	lw	%x30, 0(%x29)  #2554 pc 37976
	jalr	%x0, %x30, 0  #2554 pc 37980
	nop #pc 37984
bge_else.26046: #pc 37988
	ret #pc 37988
	nop #pc 37992
create_dirvecs.3066:  #pc 37996
	lw	%x7, 12(%x29)  #0 pc 37996
	lw	%x8, 8(%x29)  #0 pc 38000
	lw	%x9, 4(%x29)  #0 pc 38004
	bge	%x6, %x0, 12  #2559 pc 38008
	j	bge_else.26048 #pc 38012
	nop #pc 38016
	fmv	%f0, l.21722  #0 pc 38020
	addi	%x10, %x3, 0  #2560 pc 38024
	addi	%x11, %x10, 0  #2560 pc 38028
	addi	%x10, %x10, 12  #2560 pc 38032
	addi	%x3, %x10, 0  #2560 pc 38036
	addi	%x10, %x0, 2  #0 pc 38040
	sw	%x29, 0(%x2)  #2560 pc 38044
	sw	%x9, 4(%x2)  #2560 pc 38048
	sw	%x8, 8(%x2)  #2560 pc 38052
	sw	%x6, 12(%x2)  #2560 pc 38056
	sw	%x11, 16(%x2)  #2560 pc 38060
	sw	%x7, 20(%x2)  #2560 pc 38064
	addi	%x7, %x10, 0  #0 pc 38068
	addi	%x6, %x11, 0  #0 pc 38072
	sw	%x1, 24(%x2)  #2560 pc 38076
	addi	%x2, %x2, 28  #2560 pc 38080
	jal	%x1, assign_farray.2573  #2560 pc 38084
	addi	%x2, %x2, -28  #2560 pc 38088
	lw	%x1, 24(%x2) #2560 pc 38092
	lw	%x6, 20(%x2)  #2560 pc 38096
	lw	%x6, 0(%x6)  #2560 pc 38100
	addi	%x7, %x3, 0  #2560 pc 38104
	addi	%x8, %x7, 0  #2560 pc 38108
	slli	%x9, %x6, 2  #2560 pc 38112
	add	%x7, %x7, %x9  #2560 pc 38116
	addi	%x3, %x7, 0  #2560 pc 38120
	addi	%x6, %x6, -1  #2560 pc 38124
	lw	%x7, 16(%x2)  #2560 pc 38128
	sw	%x8, 24(%x2)  #2560 pc 38132
	addi	%x30, %x8, 0  #0 pc 38136
	addi	%x8, %x6, 0  #0 pc 38140
	addi	%x6, %x30, 0  #0 pc 38144
	sw	%x1, 28(%x2)  #2560 pc 38148
	addi	%x2, %x2, 32  #2560 pc 38152
	jal	%x1, assign_array.2566  #2560 pc 38156
	addi	%x2, %x2, -32  #2560 pc 38160
	lw	%x1, 28(%x2) #2560 pc 38164
	addi	%x6, %x3, 0  #2560 pc 38168
	addi	%x3, %x3, 8  #2560 pc 38172
	lw	%x7, 24(%x2)  #2560 pc 38176
	sw	%x7, 4(%x6)  #2560 pc 38180
	lw	%x7, 16(%x2)  #2560 pc 38184
	sw	%x7, 0(%x6)  #2560 pc 38188
	addi	%x7, %x6, 0  #2560 pc 38192
	addi	%x6, %x3, 0  #2560 pc 38196
	addi	%x8, %x6, 0  #2560 pc 38200
	addi	%x6, %x6, 480  #2560 pc 38204
	addi	%x3, %x6, 0  #2560 pc 38208
	addi	%x6, %x0, 119  #0 pc 38212
	sw	%x8, 28(%x2)  #2560 pc 38216
	addi	%x30, %x8, 0  #0 pc 38220
	addi	%x8, %x6, 0  #0 pc 38224
	addi	%x6, %x30, 0  #0 pc 38228
	sw	%x1, 32(%x2)  #2560 pc 38232
	addi	%x2, %x2, 36  #2560 pc 38236
	jal	%x1, assign_array.2566  #2560 pc 38240
	addi	%x2, %x2, -36  #2560 pc 38244
	lw	%x1, 32(%x2) #2560 pc 38248
	lw	%x6, 12(%x2)  #2560 pc 38252
	slli	%x7, %x6, 2  #2560 pc 38256
	lw	%x8, 8(%x2)  #2560 pc 38260
	lw	%x9, 28(%x2)  #2560 pc 38264
	add	%x31, %x7, %x8  #2560 pc 38268
	sw	%x9, 0(%x31)  #2560 pc 38272
	slli	%x7, %x6, 2  #2561 pc 38276
	add	%x31, %x7, %x8  #2561 pc 38280
	lw	%x7, 0(%x31)  #2561 pc 38284
	addi	%x8, %x0, 118  #0 pc 38288
	lw	%x29, 4(%x2)  #2561 pc 38292
	addi	%x6, %x7, 0  #0 pc 38296
	addi	%x7, %x8, 0  #0 pc 38300
	sw	%x1, 32(%x2)  #2561 pc 38304
	lw	%x30, 0(%x29)  #2561 pc 38308
	addi	%x2, %x2, 36  #2561 pc 38312
	jalr	%x1, %x30, 0  #2561 pc 38316
	addi	%x2, %x2, -36  #2561 pc 38320
	lw	%x1, 32(%x2)  #2561 pc 38324
	lw	%x6, 12(%x2)  #2562 pc 38328
	addi	%x6, %x6, -1  #2562 pc 38332
	lw	%x29, 0(%x2)  #2562 pc 38336
	lw	%x30, 0(%x29)  #2562 pc 38340
	jalr	%x0, %x30, 0  #2562 pc 38344
	nop #pc 38348
bge_else.26048: #pc 38352
	ret #pc 38352
	nop #pc 38356
init_dirvec_constants.3068:  #pc 38360
	lw	%x8, 8(%x29)  #0 pc 38360
	lw	%x9, 4(%x29)  #0 pc 38364
	bge	%x7, %x0, 12  #2571 pc 38368
	j	bge_else.26050 #pc 38372
	nop #pc 38376
	slli	%x10, %x7, 2  #2572 pc 38380
	add	%x31, %x10, %x6  #2572 pc 38384
	lw	%x10, 0(%x31)  #2572 pc 38388
	lw	%x9, 0(%x9)  #2572 pc 38392
	addi	%x9, %x9, -1  #2572 pc 38396
	sw	%x6, 0(%x2)  #2572 pc 38400
	sw	%x29, 4(%x2)  #2572 pc 38404
	sw	%x7, 8(%x2)  #2572 pc 38408
	addi	%x7, %x9, 0  #0 pc 38412
	addi	%x6, %x10, 0  #0 pc 38416
	addi	%x29, %x8, 0  #0 pc 38420
	sw	%x1, 12(%x2)  #2572 pc 38424
	lw	%x30, 0(%x29)  #2572 pc 38428
	addi	%x2, %x2, 16  #2572 pc 38432
	jalr	%x1, %x30, 0  #2572 pc 38436
	addi	%x2, %x2, -16  #2572 pc 38440
	lw	%x1, 12(%x2)  #2572 pc 38444
	lw	%x6, 8(%x2)  #2573 pc 38448
	addi	%x7, %x6, -1  #2573 pc 38452
	lw	%x6, 0(%x2)  #2573 pc 38456
	lw	%x29, 4(%x2)  #2573 pc 38460
	lw	%x30, 0(%x29)  #2573 pc 38464
	jalr	%x0, %x30, 0  #2573 pc 38468
	nop #pc 38472
bge_else.26050: #pc 38476
	ret #pc 38476
	nop #pc 38480
init_vecset_constants.3071:  #pc 38484
	lw	%x7, 8(%x29)  #0 pc 38484
	lw	%x8, 4(%x29)  #0 pc 38488
	bge	%x6, %x0, 12  #2578 pc 38492
	j	bge_else.26052 #pc 38496
	nop #pc 38500
	slli	%x9, %x6, 2  #2579 pc 38504
	add	%x31, %x9, %x8  #2579 pc 38508
	lw	%x8, 0(%x31)  #2579 pc 38512
	addi	%x9, %x0, 119  #0 pc 38516
	sw	%x29, 0(%x2)  #2579 pc 38520
	sw	%x6, 4(%x2)  #2579 pc 38524
	addi	%x6, %x8, 0  #0 pc 38528
	addi	%x29, %x7, 0  #0 pc 38532
	addi	%x7, %x9, 0  #0 pc 38536
	sw	%x1, 8(%x2)  #2579 pc 38540
	lw	%x30, 0(%x29)  #2579 pc 38544
	addi	%x2, %x2, 12  #2579 pc 38548
	jalr	%x1, %x30, 0  #2579 pc 38552
	addi	%x2, %x2, -12  #2579 pc 38556
	lw	%x1, 8(%x2)  #2579 pc 38560
	lw	%x6, 4(%x2)  #2580 pc 38564
	addi	%x6, %x6, -1  #2580 pc 38568
	lw	%x29, 0(%x2)  #2580 pc 38572
	lw	%x30, 0(%x29)  #2580 pc 38576
	jalr	%x0, %x30, 0  #2580 pc 38580
	nop #pc 38584
bge_else.26052: #pc 38588
	ret #pc 38588
	nop #pc 38592
.global	min_caml_start
min_caml_start:
	addi	%x31, %x0, 1
	slli	%x4, %x31, 13
	slli	%x5, %x31, 16
	slli	%x2, %x31, 24
	add	%x3, %x2, %x4
	addi	%x7, %x0, 0  #0 pc 38616
	addi	%x6, %x3, 0  #250 pc 38620
	addi	%x8, %x6, 0  #250 pc 38624
	addi	%x6, %x6, 4  #250 pc 38628
	addi	%x3, %x6, 0  #250 pc 38632
	addi	%x6, %x0, 0  #0 pc 38636
	sw	%x8, 0(%x2)  #250 pc 38640
	addi	%x30, %x8, 0  #0 pc 38644
	addi	%x8, %x6, 0  #0 pc 38648
	addi	%x6, %x30, 0  #0 pc 38652
	sw	%x1, 4(%x2)  #250 pc 38656
	addi	%x2, %x2, 8  #250 pc 38660
	jal	%x1, assign_array.2566  #250 pc 38664
	addi	%x2, %x2, -8  #250 pc 38668
	lw	%x1, 4(%x2) #250 pc 38672
	fmv	%f0, l.21722  #0 pc 38676
	addi	%x6, %x3, 0  #255 pc 38680
	addi	%x7, %x6, 0  #255 pc 38684
	addi	%x6, %x6, 0  #255 pc 38688
	addi	%x3, %x6, 0  #255 pc 38692
	addi	%x6, %x0, -1  #0 pc 38696
	sw	%x7, 4(%x2)  #255 pc 38700
	addi	%x30, %x7, 0  #0 pc 38704
	addi	%x7, %x6, 0  #0 pc 38708
	addi	%x6, %x30, 0  #0 pc 38712
	sw	%x1, 8(%x2)  #255 pc 38716
	addi	%x2, %x2, 12  #255 pc 38720
	jal	%x1, assign_farray.2573  #255 pc 38724
	addi	%x2, %x2, -12  #255 pc 38728
	lw	%x1, 8(%x2) #255 pc 38732
	addi	%x6, %x0, 0  #0 pc 38736
	addi	%x7, %x3, 0  #256 pc 38740
	addi	%x3, %x3, 44  #256 pc 38744
	lw	%x8, 4(%x2)  #256 pc 38748
	sw	%x8, 40(%x7)  #256 pc 38752
	sw	%x8, 36(%x7)  #256 pc 38756
	sw	%x8, 32(%x7)  #256 pc 38760
	sw	%x8, 28(%x7)  #256 pc 38764
	sw	%x6, 24(%x7)  #256 pc 38768
	sw	%x8, 20(%x7)  #256 pc 38772
	sw	%x8, 16(%x7)  #256 pc 38776
	sw	%x6, 12(%x7)  #256 pc 38780
	sw	%x6, 8(%x7)  #256 pc 38784
	sw	%x6, 4(%x7)  #256 pc 38788
	sw	%x6, 0(%x7)  #256 pc 38792
	addi	%x6, %x3, 0  #256 pc 38796
	addi	%x8, %x6, 0  #256 pc 38800
	addi	%x6, %x6, 240  #256 pc 38804
	addi	%x3, %x6, 0  #256 pc 38808
	addi	%x6, %x0, 59  #0 pc 38812
	sw	%x8, 8(%x2)  #256 pc 38816
	addi	%x30, %x8, 0  #0 pc 38820
	addi	%x8, %x6, 0  #0 pc 38824
	addi	%x6, %x30, 0  #0 pc 38828
	sw	%x1, 12(%x2)  #256 pc 38832
	addi	%x2, %x2, 16  #256 pc 38836
	jal	%x1, assign_array.2566  #256 pc 38840
	addi	%x2, %x2, -16  #256 pc 38844
	lw	%x1, 12(%x2) #256 pc 38848
	fmv	%f0, l.21722  #0 pc 38852
	addi	%x6, %x3, 0  #260 pc 38856
	addi	%x7, %x6, 0  #260 pc 38860
	addi	%x6, %x6, 12  #260 pc 38864
	addi	%x3, %x6, 0  #260 pc 38868
	addi	%x6, %x0, 2  #0 pc 38872
	sw	%x7, 12(%x2)  #260 pc 38876
	addi	%x30, %x7, 0  #0 pc 38880
	addi	%x7, %x6, 0  #0 pc 38884
	addi	%x6, %x30, 0  #0 pc 38888
	sw	%x1, 16(%x2)  #260 pc 38892
	addi	%x2, %x2, 20  #260 pc 38896
	jal	%x1, assign_farray.2573  #260 pc 38900
	addi	%x2, %x2, -20  #260 pc 38904
	lw	%x1, 16(%x2) #260 pc 38908
	fmv	%f0, l.21722  #0 pc 38912
	addi	%x6, %x3, 0  #263 pc 38916
	addi	%x7, %x6, 0  #263 pc 38920
	addi	%x6, %x6, 12  #263 pc 38924
	addi	%x3, %x6, 0  #263 pc 38928
	addi	%x6, %x0, 2  #0 pc 38932
	sw	%x7, 16(%x2)  #263 pc 38936
	addi	%x30, %x7, 0  #0 pc 38940
	addi	%x7, %x6, 0  #0 pc 38944
	addi	%x6, %x30, 0  #0 pc 38948
	sw	%x1, 20(%x2)  #263 pc 38952
	addi	%x2, %x2, 24  #263 pc 38956
	jal	%x1, assign_farray.2573  #263 pc 38960
	addi	%x2, %x2, -24  #263 pc 38964
	lw	%x1, 20(%x2) #263 pc 38968
	fmv	%f0, l.21722  #0 pc 38972
	addi	%x6, %x3, 0  #266 pc 38976
	addi	%x7, %x6, 0  #266 pc 38980
	addi	%x6, %x6, 12  #266 pc 38984
	addi	%x3, %x6, 0  #266 pc 38988
	addi	%x6, %x0, 2  #0 pc 38992
	sw	%x7, 20(%x2)  #266 pc 38996
	addi	%x30, %x7, 0  #0 pc 39000
	addi	%x7, %x6, 0  #0 pc 39004
	addi	%x6, %x30, 0  #0 pc 39008
	sw	%x1, 24(%x2)  #266 pc 39012
	addi	%x2, %x2, 28  #266 pc 39016
	jal	%x1, assign_farray.2573  #266 pc 39020
	addi	%x2, %x2, -28  #266 pc 39024
	lw	%x1, 24(%x2) #266 pc 39028
	fmv	%f0, l.22599  #0 pc 39032
	addi	%x6, %x3, 0  #269 pc 39036
	addi	%x7, %x6, 0  #269 pc 39040
	addi	%x6, %x6, 4  #269 pc 39044
	addi	%x3, %x6, 0  #269 pc 39048
	addi	%x6, %x0, 0  #0 pc 39052
	sw	%x7, 24(%x2)  #269 pc 39056
	addi	%x30, %x7, 0  #0 pc 39060
	addi	%x7, %x6, 0  #0 pc 39064
	addi	%x6, %x30, 0  #0 pc 39068
	sw	%x1, 28(%x2)  #269 pc 39072
	addi	%x2, %x2, 32  #269 pc 39076
	jal	%x1, assign_farray.2573  #269 pc 39080
	addi	%x2, %x2, -32  #269 pc 39084
	lw	%x1, 28(%x2) #269 pc 39088
	addi	%x7, %x0, -1  #0 pc 39092
	addi	%x6, %x3, 0  #272 pc 39096
	addi	%x8, %x6, 0  #272 pc 39100
	addi	%x6, %x6, 4  #272 pc 39104
	addi	%x3, %x6, 0  #272 pc 39108
	addi	%x6, %x0, 0  #0 pc 39112
	sw	%x8, 28(%x2)  #272 pc 39116
	addi	%x30, %x8, 0  #0 pc 39120
	addi	%x8, %x6, 0  #0 pc 39124
	addi	%x6, %x30, 0  #0 pc 39128
	sw	%x1, 32(%x2)  #272 pc 39132
	addi	%x2, %x2, 36  #272 pc 39136
	jal	%x1, assign_array.2566  #272 pc 39140
	addi	%x2, %x2, -36  #272 pc 39144
	lw	%x1, 32(%x2) #272 pc 39148
	addi	%x6, %x3, 0  #272 pc 39152
	addi	%x7, %x6, 0  #272 pc 39156
	addi	%x6, %x6, 200  #272 pc 39160
	addi	%x3, %x6, 0  #272 pc 39164
	addi	%x8, %x0, 49  #0 pc 39168
	lw	%x6, 28(%x2)  #272 pc 39172
	sw	%x7, 32(%x2)  #272 pc 39176
	addi	%x30, %x7, 0  #0 pc 39180
	addi	%x7, %x6, 0  #0 pc 39184
	addi	%x6, %x30, 0  #0 pc 39188
	sw	%x1, 36(%x2)  #272 pc 39192
	addi	%x2, %x2, 40  #272 pc 39196
	jal	%x1, assign_array.2566  #272 pc 39200
	addi	%x2, %x2, -40  #272 pc 39204
	lw	%x1, 36(%x2) #272 pc 39208
	lw	%x6, 32(%x2)  #275 pc 39212
	lw	%x7, 0(%x6)  #275 pc 39216
	addi	%x8, %x3, 0  #275 pc 39220
	addi	%x9, %x8, 0  #275 pc 39224
	addi	%x8, %x8, 4  #275 pc 39228
	addi	%x3, %x8, 0  #275 pc 39232
	addi	%x8, %x0, 0  #0 pc 39236
	sw	%x9, 36(%x2)  #275 pc 39240
	addi	%x6, %x9, 0  #0 pc 39244
	sw	%x1, 40(%x2)  #275 pc 39248
	addi	%x2, %x2, 44  #275 pc 39252
	jal	%x1, assign_array.2566  #275 pc 39256
	addi	%x2, %x2, -44  #275 pc 39260
	lw	%x1, 40(%x2) #275 pc 39264
	addi	%x6, %x3, 0  #275 pc 39268
	addi	%x7, %x6, 0  #275 pc 39272
	addi	%x6, %x6, 4  #275 pc 39276
	addi	%x3, %x6, 0  #275 pc 39280
	addi	%x8, %x0, 0  #0 pc 39284
	lw	%x6, 36(%x2)  #275 pc 39288
	sw	%x7, 40(%x2)  #275 pc 39292
	addi	%x30, %x7, 0  #0 pc 39296
	addi	%x7, %x6, 0  #0 pc 39300
	addi	%x6, %x30, 0  #0 pc 39304
	sw	%x1, 44(%x2)  #275 pc 39308
	addi	%x2, %x2, 48  #275 pc 39312
	jal	%x1, assign_array.2566  #275 pc 39316
	addi	%x2, %x2, -48  #275 pc 39320
	lw	%x1, 44(%x2) #275 pc 39324
	fmv	%f0, l.21722  #0 pc 39328
	addi	%x6, %x3, 0  #280 pc 39332
	addi	%x7, %x6, 0  #280 pc 39336
	addi	%x6, %x6, 4  #280 pc 39340
	addi	%x3, %x6, 0  #280 pc 39344
	addi	%x6, %x0, 0  #0 pc 39348
	sw	%x7, 44(%x2)  #280 pc 39352
	addi	%x30, %x7, 0  #0 pc 39356
	addi	%x7, %x6, 0  #0 pc 39360
	addi	%x6, %x30, 0  #0 pc 39364
	sw	%x1, 48(%x2)  #280 pc 39368
	addi	%x2, %x2, 52  #280 pc 39372
	jal	%x1, assign_farray.2573  #280 pc 39376
	addi	%x2, %x2, -52  #280 pc 39380
	lw	%x1, 48(%x2) #280 pc 39384
	addi	%x7, %x0, 0  #0 pc 39388
	addi	%x6, %x3, 0  #283 pc 39392
	addi	%x8, %x6, 0  #283 pc 39396
	addi	%x6, %x6, 4  #283 pc 39400
	addi	%x3, %x6, 0  #283 pc 39404
	addi	%x6, %x0, 0  #0 pc 39408
	sw	%x8, 48(%x2)  #283 pc 39412
	addi	%x30, %x8, 0  #0 pc 39416
	addi	%x8, %x6, 0  #0 pc 39420
	addi	%x6, %x30, 0  #0 pc 39424
	sw	%x1, 52(%x2)  #283 pc 39428
	addi	%x2, %x2, 56  #283 pc 39432
	jal	%x1, assign_array.2566  #283 pc 39436
	addi	%x2, %x2, -56  #283 pc 39440
	lw	%x1, 52(%x2) #283 pc 39444
	fmv	%f0, l.22439  #0 pc 39448
	addi	%x6, %x3, 0  #286 pc 39452
	addi	%x7, %x6, 0  #286 pc 39456
	addi	%x6, %x6, 4  #286 pc 39460
	addi	%x3, %x6, 0  #286 pc 39464
	addi	%x6, %x0, 0  #0 pc 39468
	sw	%x7, 52(%x2)  #286 pc 39472
	addi	%x30, %x7, 0  #0 pc 39476
	addi	%x7, %x6, 0  #0 pc 39480
	addi	%x6, %x30, 0  #0 pc 39484
	sw	%x1, 56(%x2)  #286 pc 39488
	addi	%x2, %x2, 60  #286 pc 39492
	jal	%x1, assign_farray.2573  #286 pc 39496
	addi	%x2, %x2, -60  #286 pc 39500
	lw	%x1, 56(%x2) #286 pc 39504
	fmv	%f0, l.21722  #0 pc 39508
	addi	%x6, %x3, 0  #289 pc 39512
	addi	%x7, %x6, 0  #289 pc 39516
	addi	%x6, %x6, 12  #289 pc 39520
	addi	%x3, %x6, 0  #289 pc 39524
	addi	%x6, %x0, 2  #0 pc 39528
	sw	%x7, 56(%x2)  #289 pc 39532
	addi	%x30, %x7, 0  #0 pc 39536
	addi	%x7, %x6, 0  #0 pc 39540
	addi	%x6, %x30, 0  #0 pc 39544
	sw	%x1, 60(%x2)  #289 pc 39548
	addi	%x2, %x2, 64  #289 pc 39552
	jal	%x1, assign_farray.2573  #289 pc 39556
	addi	%x2, %x2, -64  #289 pc 39560
	lw	%x1, 60(%x2) #289 pc 39564
	addi	%x7, %x0, 0  #0 pc 39568
	addi	%x6, %x3, 0  #292 pc 39572
	addi	%x8, %x6, 0  #292 pc 39576
	addi	%x6, %x6, 4  #292 pc 39580
	addi	%x3, %x6, 0  #292 pc 39584
	addi	%x6, %x0, 0  #0 pc 39588
	sw	%x8, 60(%x2)  #292 pc 39592
	addi	%x30, %x8, 0  #0 pc 39596
	addi	%x8, %x6, 0  #0 pc 39600
	addi	%x6, %x30, 0  #0 pc 39604
	sw	%x1, 64(%x2)  #292 pc 39608
	addi	%x2, %x2, 68  #292 pc 39612
	jal	%x1, assign_array.2566  #292 pc 39616
	addi	%x2, %x2, -68  #292 pc 39620
	lw	%x1, 64(%x2) #292 pc 39624
	fmv	%f0, l.21722  #0 pc 39628
	addi	%x6, %x3, 0  #295 pc 39632
	addi	%x7, %x6, 0  #295 pc 39636
	addi	%x6, %x6, 12  #295 pc 39640
	addi	%x3, %x6, 0  #295 pc 39644
	addi	%x6, %x0, 2  #0 pc 39648
	sw	%x7, 64(%x2)  #295 pc 39652
	addi	%x30, %x7, 0  #0 pc 39656
	addi	%x7, %x6, 0  #0 pc 39660
	addi	%x6, %x30, 0  #0 pc 39664
	sw	%x1, 68(%x2)  #295 pc 39668
	addi	%x2, %x2, 72  #295 pc 39672
	jal	%x1, assign_farray.2573  #295 pc 39676
	addi	%x2, %x2, -72  #295 pc 39680
	lw	%x1, 68(%x2) #295 pc 39684
	fmv	%f0, l.21722  #0 pc 39688
	addi	%x6, %x3, 0  #298 pc 39692
	addi	%x7, %x6, 0  #298 pc 39696
	addi	%x6, %x6, 12  #298 pc 39700
	addi	%x3, %x6, 0  #298 pc 39704
	addi	%x6, %x0, 2  #0 pc 39708
	sw	%x7, 68(%x2)  #298 pc 39712
	addi	%x30, %x7, 0  #0 pc 39716
	addi	%x7, %x6, 0  #0 pc 39720
	addi	%x6, %x30, 0  #0 pc 39724
	sw	%x1, 72(%x2)  #298 pc 39728
	addi	%x2, %x2, 76  #298 pc 39732
	jal	%x1, assign_farray.2573  #298 pc 39736
	addi	%x2, %x2, -76  #298 pc 39740
	lw	%x1, 72(%x2) #298 pc 39744
	fmv	%f0, l.21722  #0 pc 39748
	addi	%x6, %x3, 0  #302 pc 39752
	addi	%x7, %x6, 0  #302 pc 39756
	addi	%x6, %x6, 12  #302 pc 39760
	addi	%x3, %x6, 0  #302 pc 39764
	addi	%x6, %x0, 2  #0 pc 39768
	sw	%x7, 72(%x2)  #302 pc 39772
	addi	%x30, %x7, 0  #0 pc 39776
	addi	%x7, %x6, 0  #0 pc 39780
	addi	%x6, %x30, 0  #0 pc 39784
	sw	%x1, 76(%x2)  #302 pc 39788
	addi	%x2, %x2, 80  #302 pc 39792
	jal	%x1, assign_farray.2573  #302 pc 39796
	addi	%x2, %x2, -80  #302 pc 39800
	lw	%x1, 76(%x2) #302 pc 39804
	fmv	%f0, l.21722  #0 pc 39808
	addi	%x6, %x3, 0  #305 pc 39812
	addi	%x7, %x6, 0  #305 pc 39816
	addi	%x6, %x6, 12  #305 pc 39820
	addi	%x3, %x6, 0  #305 pc 39824
	addi	%x6, %x0, 2  #0 pc 39828
	sw	%x7, 76(%x2)  #305 pc 39832
	addi	%x30, %x7, 0  #0 pc 39836
	addi	%x7, %x6, 0  #0 pc 39840
	addi	%x6, %x30, 0  #0 pc 39844
	sw	%x1, 80(%x2)  #305 pc 39848
	addi	%x2, %x2, 84  #305 pc 39852
	jal	%x1, assign_farray.2573  #305 pc 39856
	addi	%x2, %x2, -84  #305 pc 39860
	lw	%x1, 80(%x2) #305 pc 39864
	addi	%x7, %x0, 0  #0 pc 39868
	addi	%x6, %x3, 0  #309 pc 39872
	addi	%x8, %x6, 0  #309 pc 39876
	addi	%x6, %x6, 8  #309 pc 39880
	addi	%x3, %x6, 0  #309 pc 39884
	addi	%x6, %x0, 1  #0 pc 39888
	sw	%x8, 80(%x2)  #309 pc 39892
	addi	%x30, %x8, 0  #0 pc 39896
	addi	%x8, %x6, 0  #0 pc 39900
	addi	%x6, %x30, 0  #0 pc 39904
	sw	%x1, 84(%x2)  #309 pc 39908
	addi	%x2, %x2, 88  #309 pc 39912
	jal	%x1, assign_array.2566  #309 pc 39916
	addi	%x2, %x2, -88  #309 pc 39920
	lw	%x1, 84(%x2) #309 pc 39924
	addi	%x7, %x0, 0  #0 pc 39928
	addi	%x6, %x3, 0  #312 pc 39932
	addi	%x8, %x6, 0  #312 pc 39936
	addi	%x6, %x6, 8  #312 pc 39940
	addi	%x3, %x6, 0  #312 pc 39944
	addi	%x6, %x0, 1  #0 pc 39948
	sw	%x8, 84(%x2)  #312 pc 39952
	addi	%x30, %x8, 0  #0 pc 39956
	addi	%x8, %x6, 0  #0 pc 39960
	addi	%x6, %x30, 0  #0 pc 39964
	sw	%x1, 88(%x2)  #312 pc 39968
	addi	%x2, %x2, 92  #312 pc 39972
	jal	%x1, assign_array.2566  #312 pc 39976
	addi	%x2, %x2, -92  #312 pc 39980
	lw	%x1, 88(%x2) #312 pc 39984
	fmv	%f0, l.21722  #0 pc 39988
	addi	%x6, %x3, 0  #315 pc 39992
	addi	%x7, %x6, 0  #315 pc 39996
	addi	%x6, %x6, 4  #315 pc 40000
	addi	%x3, %x6, 0  #315 pc 40004
	addi	%x6, %x0, 0  #0 pc 40008
	sw	%x7, 88(%x2)  #315 pc 40012
	addi	%x30, %x7, 0  #0 pc 40016
	addi	%x7, %x6, 0  #0 pc 40020
	addi	%x6, %x30, 0  #0 pc 40024
	sw	%x1, 92(%x2)  #315 pc 40028
	addi	%x2, %x2, 96  #315 pc 40032
	jal	%x1, assign_farray.2573  #315 pc 40036
	addi	%x2, %x2, -96  #315 pc 40040
	lw	%x1, 92(%x2) #315 pc 40044
	fmv	%f0, l.21722  #0 pc 40048
	addi	%x6, %x3, 0  #319 pc 40052
	addi	%x7, %x6, 0  #319 pc 40056
	addi	%x6, %x6, 12  #319 pc 40060
	addi	%x3, %x6, 0  #319 pc 40064
	addi	%x6, %x0, 2  #0 pc 40068
	sw	%x7, 92(%x2)  #319 pc 40072
	addi	%x30, %x7, 0  #0 pc 40076
	addi	%x7, %x6, 0  #0 pc 40080
	addi	%x6, %x30, 0  #0 pc 40084
	sw	%x1, 96(%x2)  #319 pc 40088
	addi	%x2, %x2, 100  #319 pc 40092
	jal	%x1, assign_farray.2573  #319 pc 40096
	addi	%x2, %x2, -100  #319 pc 40100
	lw	%x1, 96(%x2) #319 pc 40104
	fmv	%f0, l.21722  #0 pc 40108
	addi	%x6, %x3, 0  #322 pc 40112
	addi	%x7, %x6, 0  #322 pc 40116
	addi	%x6, %x6, 12  #322 pc 40120
	addi	%x3, %x6, 0  #322 pc 40124
	addi	%x6, %x0, 2  #0 pc 40128
	sw	%x7, 96(%x2)  #322 pc 40132
	addi	%x30, %x7, 0  #0 pc 40136
	addi	%x7, %x6, 0  #0 pc 40140
	addi	%x6, %x30, 0  #0 pc 40144
	sw	%x1, 100(%x2)  #322 pc 40148
	addi	%x2, %x2, 104  #322 pc 40152
	jal	%x1, assign_farray.2573  #322 pc 40156
	addi	%x2, %x2, -104  #322 pc 40160
	lw	%x1, 100(%x2) #322 pc 40164
	fmv	%f0, l.21722  #0 pc 40168
	addi	%x6, %x3, 0  #326 pc 40172
	addi	%x7, %x6, 0  #326 pc 40176
	addi	%x6, %x6, 12  #326 pc 40180
	addi	%x3, %x6, 0  #326 pc 40184
	addi	%x6, %x0, 2  #0 pc 40188
	sw	%x7, 100(%x2)  #326 pc 40192
	addi	%x30, %x7, 0  #0 pc 40196
	addi	%x7, %x6, 0  #0 pc 40200
	addi	%x6, %x30, 0  #0 pc 40204
	sw	%x1, 104(%x2)  #326 pc 40208
	addi	%x2, %x2, 108  #326 pc 40212
	jal	%x1, assign_farray.2573  #326 pc 40216
	addi	%x2, %x2, -108  #326 pc 40220
	lw	%x1, 104(%x2) #326 pc 40224
	fmv	%f0, l.21722  #0 pc 40228
	addi	%x6, %x3, 0  #328 pc 40232
	addi	%x7, %x6, 0  #328 pc 40236
	addi	%x6, %x6, 12  #328 pc 40240
	addi	%x3, %x6, 0  #328 pc 40244
	addi	%x6, %x0, 2  #0 pc 40248
	sw	%x7, 104(%x2)  #328 pc 40252
	addi	%x30, %x7, 0  #0 pc 40256
	addi	%x7, %x6, 0  #0 pc 40260
	addi	%x6, %x30, 0  #0 pc 40264
	sw	%x1, 108(%x2)  #328 pc 40268
	addi	%x2, %x2, 112  #328 pc 40272
	jal	%x1, assign_farray.2573  #328 pc 40276
	addi	%x2, %x2, -112  #328 pc 40280
	lw	%x1, 108(%x2) #328 pc 40284
	fmv	%f0, l.21722  #0 pc 40288
	addi	%x6, %x3, 0  #330 pc 40292
	addi	%x7, %x6, 0  #330 pc 40296
	addi	%x6, %x6, 12  #330 pc 40300
	addi	%x3, %x6, 0  #330 pc 40304
	addi	%x6, %x0, 2  #0 pc 40308
	sw	%x7, 108(%x2)  #330 pc 40312
	addi	%x30, %x7, 0  #0 pc 40316
	addi	%x7, %x6, 0  #0 pc 40320
	addi	%x6, %x30, 0  #0 pc 40324
	sw	%x1, 112(%x2)  #330 pc 40328
	addi	%x2, %x2, 116  #330 pc 40332
	jal	%x1, assign_farray.2573  #330 pc 40336
	addi	%x2, %x2, -116  #330 pc 40340
	lw	%x1, 112(%x2) #330 pc 40344
	fmv	%f0, l.21722  #0 pc 40348
	addi	%x6, %x3, 0  #334 pc 40352
	addi	%x7, %x6, 0  #334 pc 40356
	addi	%x6, %x6, 12  #334 pc 40360
	addi	%x3, %x6, 0  #334 pc 40364
	addi	%x6, %x0, 2  #0 pc 40368
	sw	%x7, 112(%x2)  #334 pc 40372
	addi	%x30, %x7, 0  #0 pc 40376
	addi	%x7, %x6, 0  #0 pc 40380
	addi	%x6, %x30, 0  #0 pc 40384
	sw	%x1, 116(%x2)  #334 pc 40388
	addi	%x2, %x2, 120  #334 pc 40392
	jal	%x1, assign_farray.2573  #334 pc 40396
	addi	%x2, %x2, -120  #334 pc 40400
	lw	%x1, 116(%x2) #334 pc 40404
	fmv	%f0, l.21722  #0 pc 40408
	addi	%x6, %x3, 0  #339 pc 40412
	addi	%x7, %x6, 0  #339 pc 40416
	addi	%x6, %x6, 0  #339 pc 40420
	addi	%x3, %x6, 0  #339 pc 40424
	addi	%x6, %x0, -1  #0 pc 40428
	sw	%x7, 116(%x2)  #339 pc 40432
	addi	%x30, %x7, 0  #0 pc 40436
	addi	%x7, %x6, 0  #0 pc 40440
	addi	%x6, %x30, 0  #0 pc 40444
	sw	%x1, 120(%x2)  #339 pc 40448
	addi	%x2, %x2, 124  #339 pc 40452
	jal	%x1, assign_farray.2573  #339 pc 40456
	addi	%x2, %x2, -124  #339 pc 40460
	lw	%x1, 120(%x2) #339 pc 40464
	addi	%x6, %x3, 0  #340 pc 40468
	addi	%x7, %x6, 0  #340 pc 40472
	addi	%x6, %x6, 0  #340 pc 40476
	addi	%x3, %x6, 0  #340 pc 40480
	addi	%x8, %x0, -1  #0 pc 40484
	lw	%x6, 116(%x2)  #340 pc 40488
	sw	%x7, 120(%x2)  #340 pc 40492
	addi	%x30, %x7, 0  #0 pc 40496
	addi	%x7, %x6, 0  #0 pc 40500
	addi	%x6, %x30, 0  #0 pc 40504
	sw	%x1, 124(%x2)  #340 pc 40508
	addi	%x2, %x2, 128  #340 pc 40512
	jal	%x1, assign_array.2566  #340 pc 40516
	addi	%x2, %x2, -128  #340 pc 40520
	lw	%x1, 124(%x2) #340 pc 40524
	addi	%x6, %x3, 0  #341 pc 40528
	addi	%x3, %x3, 8  #341 pc 40532
	lw	%x7, 120(%x2)  #341 pc 40536
	sw	%x7, 4(%x6)  #341 pc 40540
	lw	%x7, 116(%x2)  #341 pc 40544
	sw	%x7, 0(%x6)  #341 pc 40548
	addi	%x7, %x6, 0  #341 pc 40552
	addi	%x6, %x3, 0  #341 pc 40556
	addi	%x8, %x6, 0  #341 pc 40560
	addi	%x6, %x6, 0  #341 pc 40564
	addi	%x3, %x6, 0  #341 pc 40568
	addi	%x6, %x0, -1  #0 pc 40572
	sw	%x8, 124(%x2)  #341 pc 40576
	addi	%x30, %x8, 0  #0 pc 40580
	addi	%x8, %x6, 0  #0 pc 40584
	addi	%x6, %x30, 0  #0 pc 40588
	sw	%x1, 128(%x2)  #341 pc 40592
	addi	%x2, %x2, 132  #341 pc 40596
	jal	%x1, assign_array.2566  #341 pc 40600
	addi	%x2, %x2, -132  #341 pc 40604
	lw	%x1, 128(%x2) #341 pc 40608
	addi	%x6, %x3, 0  #342 pc 40612
	addi	%x7, %x6, 0  #342 pc 40616
	addi	%x6, %x6, 20  #342 pc 40620
	addi	%x3, %x6, 0  #342 pc 40624
	addi	%x8, %x0, 4  #0 pc 40628
	lw	%x6, 124(%x2)  #342 pc 40632
	sw	%x7, 128(%x2)  #342 pc 40636
	addi	%x30, %x7, 0  #0 pc 40640
	addi	%x7, %x6, 0  #0 pc 40644
	addi	%x6, %x30, 0  #0 pc 40648
	sw	%x1, 132(%x2)  #342 pc 40652
	addi	%x2, %x2, 136  #342 pc 40656
	jal	%x1, assign_array.2566  #342 pc 40660
	addi	%x2, %x2, -136  #342 pc 40664
	lw	%x1, 132(%x2) #342 pc 40668
	fmv	%f0, l.21722  #0 pc 40672
	addi	%x6, %x3, 0  #347 pc 40676
	addi	%x7, %x6, 0  #347 pc 40680
	addi	%x6, %x6, 0  #347 pc 40684
	addi	%x3, %x6, 0  #347 pc 40688
	addi	%x6, %x0, -1  #0 pc 40692
	sw	%x7, 132(%x2)  #347 pc 40696
	addi	%x30, %x7, 0  #0 pc 40700
	addi	%x7, %x6, 0  #0 pc 40704
	addi	%x6, %x30, 0  #0 pc 40708
	sw	%x1, 136(%x2)  #347 pc 40712
	addi	%x2, %x2, 140  #347 pc 40716
	jal	%x1, assign_farray.2573  #347 pc 40720
	addi	%x2, %x2, -140  #347 pc 40724
	lw	%x1, 136(%x2) #347 pc 40728
	fmv	%f0, l.21722  #0 pc 40732
	addi	%x6, %x3, 0  #348 pc 40736
	addi	%x7, %x6, 0  #348 pc 40740
	addi	%x6, %x6, 12  #348 pc 40744
	addi	%x3, %x6, 0  #348 pc 40748
	addi	%x6, %x0, 2  #0 pc 40752
	sw	%x7, 136(%x2)  #348 pc 40756
	addi	%x30, %x7, 0  #0 pc 40760
	addi	%x7, %x6, 0  #0 pc 40764
	addi	%x6, %x30, 0  #0 pc 40768
	sw	%x1, 140(%x2)  #348 pc 40772
	addi	%x2, %x2, 144  #348 pc 40776
	jal	%x1, assign_farray.2573  #348 pc 40780
	addi	%x2, %x2, -144  #348 pc 40784
	lw	%x1, 140(%x2) #348 pc 40788
	addi	%x6, %x3, 0  #349 pc 40792
	addi	%x7, %x6, 0  #349 pc 40796
	addi	%x6, %x6, 240  #349 pc 40800
	addi	%x3, %x6, 0  #349 pc 40804
	addi	%x8, %x0, 59  #0 pc 40808
	lw	%x6, 132(%x2)  #349 pc 40812
	sw	%x7, 140(%x2)  #349 pc 40816
	addi	%x30, %x7, 0  #0 pc 40820
	addi	%x7, %x6, 0  #0 pc 40824
	addi	%x6, %x30, 0  #0 pc 40828
	sw	%x1, 144(%x2)  #349 pc 40832
	addi	%x2, %x2, 148  #349 pc 40836
	jal	%x1, assign_array.2566  #349 pc 40840
	addi	%x2, %x2, -148  #349 pc 40844
	lw	%x1, 144(%x2) #349 pc 40848
	addi	%x6, %x3, 0  #350 pc 40852
	addi	%x3, %x3, 8  #350 pc 40856
	lw	%x7, 140(%x2)  #350 pc 40860
	sw	%x7, 4(%x6)  #350 pc 40864
	lw	%x8, 136(%x2)  #350 pc 40868
	sw	%x8, 0(%x6)  #350 pc 40872
	fmv	%f0, l.21722  #0 pc 40876
	addi	%x9, %x3, 0  #355 pc 40880
	addi	%x10, %x9, 0  #355 pc 40884
	addi	%x9, %x9, 0  #355 pc 40888
	addi	%x3, %x9, 0  #355 pc 40892
	addi	%x9, %x0, -1  #0 pc 40896
	sw	%x6, 144(%x2)  #355 pc 40900
	sw	%x10, 148(%x2)  #355 pc 40904
	addi	%x7, %x9, 0  #0 pc 40908
	addi	%x6, %x10, 0  #0 pc 40912
	sw	%x1, 152(%x2)  #355 pc 40916
	addi	%x2, %x2, 156  #355 pc 40920
	jal	%x1, assign_farray.2573  #355 pc 40924
	addi	%x2, %x2, -156  #355 pc 40928
	lw	%x1, 152(%x2) #355 pc 40932
	addi	%x6, %x3, 0  #356 pc 40936
	addi	%x7, %x6, 0  #356 pc 40940
	addi	%x6, %x6, 0  #356 pc 40944
	addi	%x3, %x6, 0  #356 pc 40948
	addi	%x8, %x0, -1  #0 pc 40952
	lw	%x6, 148(%x2)  #356 pc 40956
	sw	%x7, 152(%x2)  #356 pc 40960
	addi	%x30, %x7, 0  #0 pc 40964
	addi	%x7, %x6, 0  #0 pc 40968
	addi	%x6, %x30, 0  #0 pc 40972
	sw	%x1, 156(%x2)  #356 pc 40976
	addi	%x2, %x2, 160  #356 pc 40980
	jal	%x1, assign_array.2566  #356 pc 40984
	addi	%x2, %x2, -160  #356 pc 40988
	lw	%x1, 156(%x2) #356 pc 40992
	addi	%x6, %x3, 0  #357 pc 40996
	addi	%x3, %x3, 8  #357 pc 41000
	lw	%x7, 152(%x2)  #357 pc 41004
	sw	%x7, 4(%x6)  #357 pc 41008
	lw	%x7, 148(%x2)  #357 pc 41012
	sw	%x7, 0(%x6)  #357 pc 41016
	addi	%x7, %x0, 0  #0 pc 41020
	fmv	%f0, l.21722  #0 pc 41024
	addi	%x8, %x3, 0  #358 pc 41028
	addi	%x3, %x3, 12  #358 pc 41032
	fsw	%f0, 8(%x8)  #358 pc 41036
	sw	%x6, 4(%x8)  #358 pc 41040
	sw	%x7, 0(%x8)  #358 pc 41044
	addi	%x7, %x8, 0  #358 pc 41048
	addi	%x6, %x3, 0  #358 pc 41052
	addi	%x8, %x6, 0  #358 pc 41056
	addi	%x6, %x6, 720  #358 pc 41060
	addi	%x3, %x6, 0  #358 pc 41064
	addi	%x6, %x0, 179  #0 pc 41068
	sw	%x8, 156(%x2)  #358 pc 41072
	addi	%x30, %x8, 0  #0 pc 41076
	addi	%x8, %x6, 0  #0 pc 41080
	addi	%x6, %x30, 0  #0 pc 41084
	sw	%x1, 160(%x2)  #358 pc 41088
	addi	%x2, %x2, 164  #358 pc 41092
	jal	%x1, assign_array.2566  #358 pc 41096
	addi	%x2, %x2, -164  #358 pc 41100
	lw	%x1, 160(%x2) #358 pc 41104
	addi	%x7, %x0, 0  #0 pc 41108
	addi	%x6, %x3, 0  #362 pc 41112
	addi	%x8, %x6, 0  #362 pc 41116
	addi	%x6, %x6, 4  #362 pc 41120
	addi	%x3, %x6, 0  #362 pc 41124
	addi	%x6, %x0, 0  #0 pc 41128
	sw	%x8, 160(%x2)  #362 pc 41132
	addi	%x30, %x8, 0  #0 pc 41136
	addi	%x8, %x6, 0  #0 pc 41140
	addi	%x6, %x30, 0  #0 pc 41144
	sw	%x1, 164(%x2)  #362 pc 41148
	addi	%x2, %x2, 168  #362 pc 41152
	jal	%x1, assign_array.2566  #362 pc 41156
	addi	%x2, %x2, -168  #362 pc 41160
	lw	%x1, 164(%x2) #362 pc 41164
	addi	%x6, %x3, 0  #1024 pc 41168
	addi	%x3, %x3, 12  #1024 pc 41172
	addi	%x7, %x0, 1152  #1024 read_object.2741 pc 41176
	sw	%x7, 0(%x6)  #1024 pc 41180
	lw	%x7, 0(%x2)  #1024 pc 41184
	sw	%x7, 8(%x6)  #1024 pc 41188
	lw	%x8, 8(%x2)  #1024 pc 41192
	sw	%x8, 4(%x6)  #1024 pc 41196
	addi	%x9, %x3, 0  #1057 pc 41200
	addi	%x3, %x3, 8  #1057 pc 41204
	addj	%x10, 3888  #1057 read_and_network.2749 pc 41208
	sw	%x10, 0(%x9)  #1057 pc 41212
	lw	%x10, 32(%x2)  #1057 pc 41216
	sw	%x10, 4(%x9)  #1057 pc 41220
	addi	%x11, %x3, 0  #1433 pc 41224
	addi	%x3, %x3, 8  #1433 pc 41228
	addj	%x12, 4000  #1433 iter_setup_dirvec_constants.2846 pc 41232
	sw	%x12, 0(%x11)  #1433 pc 41236
	sw	%x8, 4(%x11)  #1433 pc 41240
	addi	%x12, %x3, 0  #1458 pc 41244
	addi	%x3, %x3, 8  #1458 pc 41248
	addj	%x13, 5792  #1458 setup_startp_constants.2851 pc 41252
	sw	%x13, 0(%x12)  #1458 pc 41256
	sw	%x8, 4(%x12)  #1458 pc 41260
	addi	%x13, %x3, 0  #1527 pc 41264
	addi	%x3, %x3, 8  #1527 pc 41268
	addj	%x14, 6204  #1527 check_all_inside.2876 pc 41272
	sw	%x14, 0(%x13)  #1527 pc 41276
	sw	%x8, 4(%x13)  #1527 pc 41280
	addi	%x14, %x3, 0  #1547 pc 41284
	addi	%x3, %x3, 32  #1547 pc 41288
	addj	%x15, 7080  #1547 shadow_check_and_group.2882 pc 41292
	sw	%x15, 0(%x14)  #1547 pc 41296
	sw	%x8, 28(%x14)  #1547 pc 41300
	lw	%x15, 140(%x2)  #1547 pc 41304
	sw	%x15, 24(%x14)  #1547 pc 41308
	lw	%x16, 20(%x2)  #1547 pc 41312
	sw	%x16, 20(%x14)  #1547 pc 41316
	lw	%x17, 44(%x2)  #1547 pc 41320
	sw	%x17, 16(%x14)  #1547 pc 41324
	lw	%x18, 56(%x2)  #1547 pc 41328
	sw	%x18, 12(%x14)  #1547 pc 41332
	lw	%x19, 136(%x2)  #1547 pc 41336
	sw	%x19, 8(%x14)  #1547 pc 41340
	sw	%x13, 4(%x14)  #1547 pc 41344
	addi	%x20, %x3, 0  #1577 pc 41348
	addi	%x3, %x3, 12  #1577 pc 41352
	addj	%x21, 8928  #1577 shadow_check_one_or_group.2885 pc 41356
	sw	%x21, 0(%x20)  #1577 pc 41360
	sw	%x14, 8(%x20)  #1577 pc 41364
	sw	%x10, 4(%x20)  #1577 pc 41368
	addi	%x14, %x3, 0  #1592 pc 41372
	addi	%x3, %x3, 28  #1592 pc 41376
	addj	%x21, 9092  #1592 shadow_check_one_or_matrix.2888 pc 41380
	sw	%x21, 0(%x14)  #1592 pc 41384
	sw	%x20, 24(%x14)  #1592 pc 41388
	sw	%x8, 20(%x14)  #1592 pc 41392
	sw	%x15, 16(%x14)  #1592 pc 41396
	sw	%x17, 12(%x14)  #1592 pc 41400
	sw	%x18, 8(%x14)  #1592 pc 41404
	sw	%x19, 4(%x14)  #1592 pc 41408
	addi	%x15, %x3, 0  #1628 pc 41412
	addi	%x3, %x3, 36  #1628 pc 41416
	addj	%x20, 10956  #1628 solve_each_element.2891 pc 41420
	sw	%x20, 0(%x15)  #1628 pc 41424
	sw	%x8, 32(%x15)  #1628 pc 41428
	lw	%x20, 48(%x2)  #1628 pc 41432
	sw	%x20, 28(%x15)  #1628 pc 41436
	lw	%x21, 60(%x2)  #1628 pc 41440
	sw	%x21, 24(%x15)  #1628 pc 41444
	sw	%x17, 20(%x15)  #1628 pc 41448
	lw	%x22, 52(%x2)  #1628 pc 41452
	sw	%x22, 16(%x15)  #1628 pc 41456
	sw	%x18, 12(%x15)  #1628 pc 41460
	lw	%x23, 92(%x2)  #1628 pc 41464
	sw	%x23, 8(%x15)  #1628 pc 41468
	sw	%x13, 4(%x15)  #1628 pc 41472
	addi	%x24, %x3, 0  #1669 pc 41476
	addi	%x3, %x3, 12  #1669 pc 41480
	addj	%x25, 13620  #1669 solve_one_or_network.2895 pc 41484
	sw	%x25, 0(%x24)  #1669 pc 41488
	sw	%x15, 8(%x24)  #1669 pc 41492
	sw	%x10, 4(%x24)  #1669 pc 41496
	addi	%x15, %x3, 0  #1679 pc 41500
	addi	%x3, %x3, 24  #1679 pc 41504
	addj	%x25, 13764  #1679 trace_or_matrix.2899 pc 41508
	sw	%x25, 0(%x15)  #1679 pc 41512
	sw	%x24, 20(%x15)  #1679 pc 41516
	sw	%x8, 16(%x15)  #1679 pc 41520
	sw	%x17, 12(%x15)  #1679 pc 41524
	sw	%x22, 8(%x15)  #1679 pc 41528
	sw	%x23, 4(%x15)  #1679 pc 41532
	addi	%x24, %x3, 0  #1721 pc 41536
	addi	%x3, %x3, 36  #1721 pc 41540
	addj	%x25, 16196  #1721 solve_each_element_fast.2905 pc 41544
	sw	%x25, 0(%x24)  #1721 pc 41548
	sw	%x8, 32(%x24)  #1721 pc 41552
	sw	%x20, 28(%x24)  #1721 pc 41556
	sw	%x21, 24(%x24)  #1721 pc 41560
	sw	%x17, 20(%x24)  #1721 pc 41564
	sw	%x22, 16(%x24)  #1721 pc 41568
	sw	%x18, 12(%x24)  #1721 pc 41572
	lw	%x25, 96(%x2)  #1721 pc 41576
	sw	%x25, 8(%x24)  #1721 pc 41580
	sw	%x13, 4(%x24)  #1721 pc 41584
	addi	%x13, %x3, 0  #1762 pc 41588
	addi	%x3, %x3, 12  #1762 pc 41592
	addj	%x26, 17968  #1762 solve_one_or_network_fast.2909 pc 41596
	sw	%x26, 0(%x13)  #1762 pc 41600
	sw	%x24, 8(%x13)  #1762 pc 41604
	sw	%x10, 4(%x13)  #1762 pc 41608
	addi	%x10, %x3, 0  #1772 pc 41612
	addi	%x3, %x3, 20  #1772 pc 41616
	addj	%x24, 18112  #1772 trace_or_matrix_fast.2913 pc 41620
	sw	%x24, 0(%x10)  #1772 pc 41624
	sw	%x13, 16(%x10)  #1772 pc 41628
	sw	%x8, 12(%x10)  #1772 pc 41632
	sw	%x17, 8(%x10)  #1772 pc 41636
	sw	%x22, 4(%x10)  #1772 pc 41640
	addi	%x13, %x3, 0  #1966 pc 41644
	addi	%x3, %x3, 44  #1966 pc 41648
	addj	%x17, 19644  #1966 trace_reflections.2935 pc 41652
	sw	%x17, 0(%x13)  #1966 pc 41656
	sw	%x10, 40(%x13)  #1966 pc 41660
	sw	%x14, 36(%x13)  #1966 pc 41664
	lw	%x17, 40(%x2)  #1966 pc 41668
	sw	%x17, 32(%x13)  #1966 pc 41672
	sw	%x20, 28(%x13)  #1966 pc 41676
	sw	%x21, 24(%x13)  #1966 pc 41680
	lw	%x24, 156(%x2)  #1966 pc 41684
	sw	%x24, 20(%x13)  #1966 pc 41688
	sw	%x22, 16(%x13)  #1966 pc 41692
	lw	%x26, 64(%x2)  #1966 pc 41696
	sw	%x26, 12(%x13)  #1966 pc 41700
	lw	%x27, 68(%x2)  #1966 pc 41704
	sw	%x27, 8(%x13)  #1966 pc 41708
	lw	%x28, 76(%x2)  #1966 pc 41712
	sw	%x28, 4(%x13)  #1966 pc 41716
	addi	%x29, %x3, 0  #1995 pc 41720
	addi	%x3, %x3, 80  #1995 pc 41724
	addj	%x30, 20588  #1995 trace_ray.2940 pc 41728
	sw	%x30, 0(%x29)  #1995 pc 41732
	sw	%x13, 76(%x29)  #1995 pc 41736
	sw	%x15, 72(%x29)  #1995 pc 41740
	sw	%x14, 68(%x29)  #1995 pc 41744
	sw	%x12, 64(%x29)  #1995 pc 41748
	sw	%x7, 60(%x29)  #1995 pc 41752
	sw	%x8, 56(%x29)  #1995 pc 41756
	sw	%x17, 52(%x29)  #1995 pc 41760
	sw	%x20, 48(%x29)  #1995 pc 41764
	sw	%x21, 44(%x29)  #1995 pc 41768
	lw	%x13, 160(%x2)  #1995 pc 41772
	sw	%x13, 40(%x29)  #1995 pc 41776
	sw	%x16, 36(%x29)  #1995 pc 41780
	lw	%x15, 24(%x2)  #1995 pc 41784
	sw	%x15, 32(%x29)  #1995 pc 41788
	sw	%x22, 28(%x29)  #1995 pc 41792
	sw	%x18, 24(%x29)  #1995 pc 41796
	sw	%x26, 20(%x29)  #1995 pc 41800
	sw	%x27, 16(%x29)  #1995 pc 41804
	sw	%x28, 12(%x29)  #1995 pc 41808
	sw	%x23, 8(%x29)  #1995 pc 41812
	sw	%x25, 4(%x29)  #1995 pc 41816
	addi	%x30, %x3, 0  #2107 pc 41820
	addi	%x3, %x3, 52  #2107 pc 41824
	addj	%x24, 24712  #2107 iter_trace_diffuse_rays.2949 pc 41828
	sw	%x24, 0(%x30)  #2107 pc 41832
	sw	%x10, 48(%x30)  #2107 pc 41836
	sw	%x14, 44(%x30)  #2107 pc 41840
	sw	%x8, 40(%x30)  #2107 pc 41844
	sw	%x17, 36(%x30)  #2107 pc 41848
	sw	%x20, 32(%x30)  #2107 pc 41852
	sw	%x21, 28(%x30)  #2107 pc 41856
	sw	%x16, 24(%x30)  #2107 pc 41860
	sw	%x22, 20(%x30)  #2107 pc 41864
	sw	%x18, 16(%x30)  #2107 pc 41868
	sw	%x26, 12(%x30)  #2107 pc 41872
	sw	%x27, 8(%x30)  #2107 pc 41876
	lw	%x10, 72(%x2)  #2107 pc 41880
	sw	%x10, 4(%x30)  #2107 pc 41884
	addi	%x14, %x3, 0  #2198 pc 41888
	addi	%x3, %x3, 32  #2198 pc 41892
	addj	%x18, 30252  #2198 do_without_neighbors.2971 pc 41896
	sw	%x18, 0(%x14)  #2198 pc 41900
	sw	%x12, 28(%x14)  #2198 pc 41904
	sw	%x30, 24(%x14)  #2198 pc 41908
	sw	%x7, 20(%x14)  #2198 pc 41912
	lw	%x18, 128(%x2)  #2198 pc 41916
	sw	%x18, 16(%x14)  #2198 pc 41920
	sw	%x10, 12(%x14)  #2198 pc 41924
	sw	%x28, 8(%x14)  #2198 pc 41928
	sw	%x25, 4(%x14)  #2198 pc 41932
	addi	%x20, %x3, 0  #2250 pc 41936
	addi	%x3, %x3, 16  #2250 pc 41940
	addj	%x21, 31440  #2250 try_exploit_neighbors.2987 pc 41944
	sw	%x21, 0(%x20)  #2250 pc 41948
	sw	%x10, 12(%x20)  #2250 pc 41952
	sw	%x28, 8(%x20)  #2250 pc 41956
	sw	%x14, 4(%x20)  #2250 pc 41960
	addi	%x21, %x3, 0  #2326 pc 41964
	addi	%x3, %x3, 28  #2326 pc 41968
	addj	%x22, 32332  #2326 pretrace_diffuse_rays.3002 pc 41972
	sw	%x22, 0(%x21)  #2326 pc 41976
	sw	%x12, 24(%x21)  #2326 pc 41980
	sw	%x30, 20(%x21)  #2326 pc 41984
	sw	%x7, 16(%x21)  #2326 pc 41988
	sw	%x18, 12(%x21)  #2326 pc 41992
	sw	%x10, 8(%x21)  #2326 pc 41996
	sw	%x25, 4(%x21)  #2326 pc 42000
	addi	%x10, %x3, 0  #2356 pc 42004
	addi	%x3, %x3, 40  #2356 pc 42008
	addj	%x12, 32740  #2356 pretrace_pixels.3005 pc 42012
	sw	%x12, 0(%x10)  #2356 pc 42016
	sw	%x29, 36(%x10)  #2356 pc 42020
	sw	%x21, 32(%x10)  #2356 pc 42024
	lw	%x12, 84(%x2)  #2356 pc 42028
	sw	%x12, 28(%x10)  #2356 pc 42032
	lw	%x21, 16(%x2)  #2356 pc 42036
	sw	%x21, 24(%x10)  #2356 pc 42040
	sw	%x28, 20(%x10)  #2356 pc 42044
	lw	%x22, 88(%x2)  #2356 pc 42048
	sw	%x22, 16(%x10)  #2356 pc 42052
	sw	%x23, 12(%x10)  #2356 pc 42056
	lw	%x23, 100(%x2)  #2356 pc 42060
	sw	%x23, 8(%x10)  #2356 pc 42064
	lw	%x24, 112(%x2)  #2356 pc 42068
	sw	%x24, 4(%x10)  #2356 pc 42072
	addi	%x24, %x3, 0  #2397 pc 42076
	addi	%x3, %x3, 20  #2397 pc 42080
	addj	%x25, 33360  #2397 scan_pixel.3016 pc 42084
	sw	%x25, 0(%x24)  #2397 pc 42088
	sw	%x20, 16(%x24)  #2397 pc 42092
	lw	%x20, 80(%x2)  #2397 pc 42096
	sw	%x20, 12(%x24)  #2397 pc 42100
	sw	%x28, 8(%x24)  #2397 pc 42104
	sw	%x14, 4(%x24)  #2397 pc 42108
	addi	%x14, %x3, 0  #2417 pc 42112
	addi	%x3, %x3, 32  #2417 pc 42116
	addj	%x25, 34272  #2417 scan_line.3023 pc 42120
	sw	%x25, 0(%x14)  #2417 pc 42124
	sw	%x24, 28(%x14)  #2417 pc 42128
	sw	%x10, 24(%x14)  #2417 pc 42132
	sw	%x20, 20(%x14)  #2417 pc 42136
	sw	%x12, 16(%x14)  #2417 pc 42140
	sw	%x22, 12(%x14)  #2417 pc 42144
	lw	%x24, 104(%x2)  #2417 pc 42148
	sw	%x24, 8(%x14)  #2417 pc 42152
	lw	%x25, 108(%x2)  #2417 pc 42156
	sw	%x25, 4(%x14)  #2417 pc 42160
	addi	%x26, %x3, 0  #2497 pc 42164
	addi	%x3, %x3, 8  #2497 pc 42168
	addj	%x27, 36536  #2497 calc_dirvec.3044 pc 42172
	sw	%x27, 0(%x26)  #2497 pc 42176
	sw	%x18, 4(%x26)  #2497 pc 42180
	addi	%x27, %x3, 0  #2518 pc 42184
	addi	%x3, %x3, 8  #2518 pc 42188
	addj	%x28, 37308  #2518 calc_dirvecs.3052 pc 42192
	sw	%x28, 0(%x27)  #2518 pc 42196
	sw	%x26, 4(%x27)  #2518 pc 42200
	addi	%x26, %x3, 0  #2532 pc 42204
	addi	%x3, %x3, 8  #2532 pc 42208
	addj	%x28, 37596  #2532 calc_dirvec_rows.3057 pc 42212
	sw	%x28, 0(%x26)  #2532 pc 42216
	sw	%x27, 4(%x26)  #2532 pc 42220
	addi	%x27, %x3, 0  #2551 pc 42224
	addi	%x3, %x3, 8  #2551 pc 42228
	addj	%x28, 37760  #2551 create_dirvec_elements.3063 pc 42232
	sw	%x28, 0(%x27)  #2551 pc 42236
	sw	%x7, 4(%x27)  #2551 pc 42240
	addi	%x28, %x3, 0  #2558 pc 42244
	addi	%x3, %x3, 16  #2558 pc 42248
	addj	%x29, 37996  #2558 create_dirvecs.3066 pc 42252
	sw	%x29, 0(%x28)  #2558 pc 42256
	sw	%x7, 12(%x28)  #2558 pc 42260
	sw	%x18, 8(%x28)  #2558 pc 42264
	sw	%x27, 4(%x28)  #2558 pc 42268
	addi	%x27, %x3, 0  #2570 pc 42272
	addi	%x3, %x3, 12  #2570 pc 42276
	addj	%x29, 38360  #2570 init_dirvec_constants.3068 pc 42280
	sw	%x29, 0(%x27)  #2570 pc 42284
	sw	%x11, 8(%x27)  #2570 pc 42288
	sw	%x7, 4(%x27)  #2570 pc 42292
	addi	%x29, %x3, 0  #2577 pc 42296
	addi	%x3, %x3, 12  #2577 pc 42300
	addj	%x30, 38484  #2577 init_vecset_constants.3071 pc 42304
	sw	%x30, 0(%x29)  #2577 pc 42308
	sw	%x27, 8(%x29)  #2577 pc 42312
	sw	%x18, 4(%x29)  #2577 pc 42316
	addi	%x18, %x0, 256  #0 pc 42320
	addi	%x27, %x0, 3  #0 pc 42324
	sw	%x18, 0(%x20)  #2676 pc 42328
	sw	%x18, 4(%x20)  #2676 pc 42332
	addi	%x30, %x0, 256  #0 pc 42336
	sw	%x27, 164(%x2)  #0 pc 42340
	addi	%x27, %x0, 2  #0 pc 42344
	sw	%x14, 168(%x2)  #0 pc 42348
	addi	%x14, %x0, 30  #0 pc 42352
	sw	%x10, 172(%x2)  #0 pc 42356
	addi	%x10, %x0, 0  #0 pc 42360
	sw	%x11, 176(%x2)  #2676 pc 42364
	sw	%x29, 180(%x2)  #2676 pc 42368
	sw	%x26, 184(%x2)  #2676 pc 42372
	sw	%x28, 188(%x2)  #2676 pc 42376
	sw	%x9, 192(%x2)  #2676 pc 42380
	sw	%x6, 196(%x2)  #2676 pc 42384
	sw	%x18, 200(%x2)  #2676 pc 42388
	addi	%x9, %x10, 0  #0 pc 42392
	addi	%x8, %x14, 0  #0 pc 42396
	addi	%x7, %x27, 0  #0 pc 42400
	addi	%x6, %x30, 0  #0 pc 42404
	sw	%x1, 204(%x2)  #2676 pc 42408
	addi	%x2, %x2, 208  #2676 pc 42412
	jal	%x1, div_abs.2550  #2676 pc 42416
	addi	%x2, %x2, -208  #2676 pc 42420
	lw	%x1, 204(%x2) #2676 pc 42424
	lw	%x7, 84(%x2)  #2676 pc 42428
	sw	%x6, 0(%x7)  #2676 pc 42432
	addi	%x6, %x0, 256  #0 pc 42436
	addi	%x8, %x0, 2  #0 pc 42440
	addi	%x9, %x0, 30  #0 pc 42444
	addi	%x10, %x0, 0  #0 pc 42448
	addi	%x7, %x8, 0  #0 pc 42452
	addi	%x8, %x9, 0  #0 pc 42456
	addi	%x9, %x10, 0  #0 pc 42460
	sw	%x1, 204(%x2)  #2676 pc 42464
	addi	%x2, %x2, 208  #2676 pc 42468
	jal	%x1, div_abs.2550  #2676 pc 42472
	addi	%x2, %x2, -208  #2676 pc 42476
	lw	%x1, 204(%x2) #2676 pc 42480
	lw	%x7, 84(%x2)  #2676 pc 42484
	sw	%x6, 4(%x7)  #2676 pc 42488
	fmv	%f0, l.23502  #0 pc 42492
	lw	%x6, 200(%x2)  #2676 pc 42496
	itof	%f1, %x6  #2676 pc 42500
	fdiv	%f0, %f0, %f1  #2676 pc 42504
	lw	%x6, 88(%x2)  #2676 pc 42508
	fsw	%f0, 0(%x6)  #2676 pc 42512
	lw	%x8, 80(%x2)  #2676 pc 42516
	lw	%x9, 0(%x8)  #2676 pc 42520
	fmv	%f0, l.21722  #0 pc 42524
	addi	%x10, %x3, 0  #2676 pc 42528
	addi	%x11, %x10, 0  #2676 pc 42532
	addi	%x10, %x10, 12  #2676 pc 42536
	addi	%x3, %x10, 0  #2676 pc 42540
	addi	%x10, %x0, 2  #0 pc 42544
	sw	%x9, 204(%x2)  #2676 pc 42548
	sw	%x11, 208(%x2)  #2676 pc 42552
	addi	%x7, %x10, 0  #0 pc 42556
	addi	%x6, %x11, 0  #0 pc 42560
	sw	%x1, 212(%x2)  #2676 pc 42564
	addi	%x2, %x2, 216  #2676 pc 42568
	jal	%x1, assign_farray.2573  #2676 pc 42572
	addi	%x2, %x2, -216  #2676 pc 42576
	lw	%x1, 212(%x2) #2676 pc 42580
	fmv	%f0, l.21722  #0 pc 42584
	addi	%x6, %x3, 0  #2676 pc 42588
	addi	%x7, %x6, 0  #2676 pc 42592
	addi	%x6, %x6, 12  #2676 pc 42596
	addi	%x3, %x6, 0  #2676 pc 42600
	addi	%x6, %x0, 2  #0 pc 42604
	sw	%x7, 212(%x2)  #2676 pc 42608
	addi	%x30, %x7, 0  #0 pc 42612
	addi	%x7, %x6, 0  #0 pc 42616
	addi	%x6, %x30, 0  #0 pc 42620
	sw	%x1, 216(%x2)  #2676 pc 42624
	addi	%x2, %x2, 220  #2676 pc 42628
	jal	%x1, assign_farray.2573  #2676 pc 42632
	addi	%x2, %x2, -220  #2676 pc 42636
	lw	%x1, 216(%x2) #2676 pc 42640
	addi	%x6, %x3, 0  #2676 pc 42644
	addi	%x7, %x6, 0  #2676 pc 42648
	addi	%x6, %x6, 20  #2676 pc 42652
	addi	%x3, %x6, 0  #2676 pc 42656
	addi	%x8, %x0, 4  #0 pc 42660
	lw	%x6, 212(%x2)  #2676 pc 42664
	sw	%x7, 216(%x2)  #2676 pc 42668
	addi	%x30, %x7, 0  #0 pc 42672
	addi	%x7, %x6, 0  #0 pc 42676
	addi	%x6, %x30, 0  #0 pc 42680
	sw	%x1, 220(%x2)  #2676 pc 42684
	addi	%x2, %x2, 224  #2676 pc 42688
	jal	%x1, assign_array.2566  #2676 pc 42692
	addi	%x2, %x2, -224  #2676 pc 42696
	lw	%x1, 220(%x2) #2676 pc 42700
	fmv	%f0, l.21722  #0 pc 42704
	addi	%x6, %x3, 0  #2676 pc 42708
	addi	%x7, %x6, 0  #2676 pc 42712
	addi	%x6, %x6, 12  #2676 pc 42716
	addi	%x3, %x6, 0  #2676 pc 42720
	addi	%x6, %x0, 2  #0 pc 42724
	sw	%x7, 220(%x2)  #2676 pc 42728
	addi	%x30, %x7, 0  #0 pc 42732
	addi	%x7, %x6, 0  #0 pc 42736
	addi	%x6, %x30, 0  #0 pc 42740
	sw	%x1, 224(%x2)  #2676 pc 42744
	addi	%x2, %x2, 228  #2676 pc 42748
	jal	%x1, assign_farray.2573  #2676 pc 42752
	addi	%x2, %x2, -228  #2676 pc 42756
	lw	%x1, 224(%x2) #2676 pc 42760
	lw	%x6, 216(%x2)  #2676 pc 42764
	lw	%x7, 220(%x2)  #2676 pc 42768
	sw	%x7, 4(%x6)  #2676 pc 42772
	fmv	%f0, l.21722  #0 pc 42776
	addi	%x7, %x3, 0  #2676 pc 42780
	addi	%x8, %x7, 0  #2676 pc 42784
	addi	%x7, %x7, 12  #2676 pc 42788
	addi	%x3, %x7, 0  #2676 pc 42792
	addi	%x7, %x0, 2  #0 pc 42796
	sw	%x8, 224(%x2)  #2676 pc 42800
	addi	%x6, %x8, 0  #0 pc 42804
	sw	%x1, 228(%x2)  #2676 pc 42808
	addi	%x2, %x2, 232  #2676 pc 42812
	jal	%x1, assign_farray.2573  #2676 pc 42816
	addi	%x2, %x2, -232  #2676 pc 42820
	lw	%x1, 228(%x2) #2676 pc 42824
	lw	%x6, 216(%x2)  #2676 pc 42828
	lw	%x7, 224(%x2)  #2676 pc 42832
	sw	%x7, 8(%x6)  #2676 pc 42836
	fmv	%f0, l.21722  #0 pc 42840
	addi	%x7, %x3, 0  #2676 pc 42844
	addi	%x8, %x7, 0  #2676 pc 42848
	addi	%x7, %x7, 12  #2676 pc 42852
	addi	%x3, %x7, 0  #2676 pc 42856
	addi	%x7, %x0, 2  #0 pc 42860
	sw	%x8, 228(%x2)  #2676 pc 42864
	addi	%x6, %x8, 0  #0 pc 42868
	sw	%x1, 232(%x2)  #2676 pc 42872
	addi	%x2, %x2, 236  #2676 pc 42876
	jal	%x1, assign_farray.2573  #2676 pc 42880
	addi	%x2, %x2, -236  #2676 pc 42884
	lw	%x1, 232(%x2) #2676 pc 42888
	lw	%x6, 216(%x2)  #2676 pc 42892
	lw	%x7, 228(%x2)  #2676 pc 42896
	sw	%x7, 12(%x6)  #2676 pc 42900
	fmv	%f0, l.21722  #0 pc 42904
	addi	%x7, %x3, 0  #2676 pc 42908
	addi	%x8, %x7, 0  #2676 pc 42912
	addi	%x7, %x7, 12  #2676 pc 42916
	addi	%x3, %x7, 0  #2676 pc 42920
	addi	%x7, %x0, 2  #0 pc 42924
	sw	%x8, 232(%x2)  #2676 pc 42928
	addi	%x6, %x8, 0  #0 pc 42932
	sw	%x1, 236(%x2)  #2676 pc 42936
	addi	%x2, %x2, 240  #2676 pc 42940
	jal	%x1, assign_farray.2573  #2676 pc 42944
	addi	%x2, %x2, -240  #2676 pc 42948
	lw	%x1, 236(%x2) #2676 pc 42952
	lw	%x6, 216(%x2)  #2676 pc 42956
	lw	%x7, 232(%x2)  #2676 pc 42960
	sw	%x7, 16(%x6)  #2676 pc 42964
	addi	%x7, %x0, 0  #0 pc 42968
	addi	%x8, %x3, 0  #2676 pc 42972
	addi	%x9, %x8, 0  #2676 pc 42976
	addi	%x8, %x8, 20  #2676 pc 42980
	addi	%x3, %x8, 0  #2676 pc 42984
	addi	%x8, %x0, 4  #0 pc 42988
	sw	%x9, 236(%x2)  #2676 pc 42992
	addi	%x6, %x9, 0  #0 pc 42996
	sw	%x1, 240(%x2)  #2676 pc 43000
	addi	%x2, %x2, 244  #2676 pc 43004
	jal	%x1, assign_array.2566  #2676 pc 43008
	addi	%x2, %x2, -244  #2676 pc 43012
	lw	%x1, 240(%x2) #2676 pc 43016
	addi	%x7, %x0, 0  #0 pc 43020
	addi	%x6, %x3, 0  #2676 pc 43024
	addi	%x8, %x6, 0  #2676 pc 43028
	addi	%x6, %x6, 20  #2676 pc 43032
	addi	%x3, %x6, 0  #2676 pc 43036
	addi	%x6, %x0, 4  #0 pc 43040
	sw	%x8, 240(%x2)  #2676 pc 43044
	addi	%x30, %x8, 0  #0 pc 43048
	addi	%x8, %x6, 0  #0 pc 43052
	addi	%x6, %x30, 0  #0 pc 43056
	sw	%x1, 244(%x2)  #2676 pc 43060
	addi	%x2, %x2, 248  #2676 pc 43064
	jal	%x1, assign_array.2566  #2676 pc 43068
	addi	%x2, %x2, -248  #2676 pc 43072
	lw	%x1, 244(%x2) #2676 pc 43076
	fmv	%f0, l.21722  #0 pc 43080
	addi	%x6, %x3, 0  #2676 pc 43084
	addi	%x7, %x6, 0  #2676 pc 43088
	addi	%x6, %x6, 12  #2676 pc 43092
	addi	%x3, %x6, 0  #2676 pc 43096
	addi	%x6, %x0, 2  #0 pc 43100
	sw	%x7, 244(%x2)  #2676 pc 43104
	addi	%x30, %x7, 0  #0 pc 43108
	addi	%x7, %x6, 0  #0 pc 43112
	addi	%x6, %x30, 0  #0 pc 43116
	sw	%x1, 248(%x2)  #2676 pc 43120
	addi	%x2, %x2, 252  #2676 pc 43124
	jal	%x1, assign_farray.2573  #2676 pc 43128
	addi	%x2, %x2, -252  #2676 pc 43132
	lw	%x1, 248(%x2) #2676 pc 43136
	addi	%x6, %x3, 0  #2676 pc 43140
	addi	%x7, %x6, 0  #2676 pc 43144
	addi	%x6, %x6, 20  #2676 pc 43148
	addi	%x3, %x6, 0  #2676 pc 43152
	addi	%x8, %x0, 4  #0 pc 43156
	lw	%x6, 244(%x2)  #2676 pc 43160
	sw	%x7, 248(%x2)  #2676 pc 43164
	addi	%x30, %x7, 0  #0 pc 43168
	addi	%x7, %x6, 0  #0 pc 43172
	addi	%x6, %x30, 0  #0 pc 43176
	sw	%x1, 252(%x2)  #2676 pc 43180
	addi	%x2, %x2, 256  #2676 pc 43184
	jal	%x1, assign_array.2566  #2676 pc 43188
	addi	%x2, %x2, -256  #2676 pc 43192
	lw	%x1, 252(%x2) #2676 pc 43196
	fmv	%f0, l.21722  #0 pc 43200
	addi	%x6, %x3, 0  #2676 pc 43204
	addi	%x7, %x6, 0  #2676 pc 43208
	addi	%x6, %x6, 12  #2676 pc 43212
	addi	%x3, %x6, 0  #2676 pc 43216
	addi	%x6, %x0, 2  #0 pc 43220
	sw	%x7, 252(%x2)  #2676 pc 43224
	addi	%x30, %x7, 0  #0 pc 43228
	addi	%x7, %x6, 0  #0 pc 43232
	addi	%x6, %x30, 0  #0 pc 43236
	sw	%x1, 256(%x2)  #2676 pc 43240
	addi	%x2, %x2, 260  #2676 pc 43244
	jal	%x1, assign_farray.2573  #2676 pc 43248
	addi	%x2, %x2, -260  #2676 pc 43252
	lw	%x1, 256(%x2) #2676 pc 43256
	lw	%x6, 248(%x2)  #2676 pc 43260
	lw	%x7, 252(%x2)  #2676 pc 43264
	sw	%x7, 4(%x6)  #2676 pc 43268
	fmv	%f0, l.21722  #0 pc 43272
	addi	%x7, %x3, 0  #2676 pc 43276
	addi	%x8, %x7, 0  #2676 pc 43280
	addi	%x7, %x7, 12  #2676 pc 43284
	addi	%x3, %x7, 0  #2676 pc 43288
	addi	%x7, %x0, 2  #0 pc 43292
	sw	%x8, 256(%x2)  #2676 pc 43296
	addi	%x6, %x8, 0  #0 pc 43300
	sw	%x1, 260(%x2)  #2676 pc 43304
	addi	%x2, %x2, 264  #2676 pc 43308
	jal	%x1, assign_farray.2573  #2676 pc 43312
	addi	%x2, %x2, -264  #2676 pc 43316
	lw	%x1, 260(%x2) #2676 pc 43320
	lw	%x6, 248(%x2)  #2676 pc 43324
	lw	%x7, 256(%x2)  #2676 pc 43328
	sw	%x7, 8(%x6)  #2676 pc 43332
	fmv	%f0, l.21722  #0 pc 43336
	addi	%x7, %x3, 0  #2676 pc 43340
	addi	%x8, %x7, 0  #2676 pc 43344
	addi	%x7, %x7, 12  #2676 pc 43348
	addi	%x3, %x7, 0  #2676 pc 43352
	addi	%x7, %x0, 2  #0 pc 43356
	sw	%x8, 260(%x2)  #2676 pc 43360
	addi	%x6, %x8, 0  #0 pc 43364
	sw	%x1, 264(%x2)  #2676 pc 43368
	addi	%x2, %x2, 268  #2676 pc 43372
	jal	%x1, assign_farray.2573  #2676 pc 43376
	addi	%x2, %x2, -268  #2676 pc 43380
	lw	%x1, 264(%x2) #2676 pc 43384
	lw	%x6, 248(%x2)  #2676 pc 43388
	lw	%x7, 260(%x2)  #2676 pc 43392
	sw	%x7, 12(%x6)  #2676 pc 43396
	fmv	%f0, l.21722  #0 pc 43400
	addi	%x7, %x3, 0  #2676 pc 43404
	addi	%x8, %x7, 0  #2676 pc 43408
	addi	%x7, %x7, 12  #2676 pc 43412
	addi	%x3, %x7, 0  #2676 pc 43416
	addi	%x7, %x0, 2  #0 pc 43420
	sw	%x8, 264(%x2)  #2676 pc 43424
	addi	%x6, %x8, 0  #0 pc 43428
	sw	%x1, 268(%x2)  #2676 pc 43432
	addi	%x2, %x2, 272  #2676 pc 43436
	jal	%x1, assign_farray.2573  #2676 pc 43440
	addi	%x2, %x2, -272  #2676 pc 43444
	lw	%x1, 268(%x2) #2676 pc 43448
	lw	%x6, 248(%x2)  #2676 pc 43452
	lw	%x7, 264(%x2)  #2676 pc 43456
	sw	%x7, 16(%x6)  #2676 pc 43460
	fmv	%f0, l.21722  #0 pc 43464
	addi	%x7, %x3, 0  #2676 pc 43468
	addi	%x8, %x7, 0  #2676 pc 43472
	addi	%x7, %x7, 12  #2676 pc 43476
	addi	%x3, %x7, 0  #2676 pc 43480
	addi	%x7, %x0, 2  #0 pc 43484
	sw	%x8, 268(%x2)  #2676 pc 43488
	addi	%x6, %x8, 0  #0 pc 43492
	sw	%x1, 272(%x2)  #2676 pc 43496
	addi	%x2, %x2, 276  #2676 pc 43500
	jal	%x1, assign_farray.2573  #2676 pc 43504
	addi	%x2, %x2, -276  #2676 pc 43508
	lw	%x1, 272(%x2) #2676 pc 43512
	addi	%x6, %x3, 0  #2676 pc 43516
	addi	%x7, %x6, 0  #2676 pc 43520
	addi	%x6, %x6, 20  #2676 pc 43524
	addi	%x3, %x6, 0  #2676 pc 43528
	addi	%x8, %x0, 4  #0 pc 43532
	lw	%x6, 268(%x2)  #2676 pc 43536
	sw	%x7, 272(%x2)  #2676 pc 43540
	addi	%x30, %x7, 0  #0 pc 43544
	addi	%x7, %x6, 0  #0 pc 43548
	addi	%x6, %x30, 0  #0 pc 43552
	sw	%x1, 276(%x2)  #2676 pc 43556
	addi	%x2, %x2, 280  #2676 pc 43560
	jal	%x1, assign_array.2566  #2676 pc 43564
	addi	%x2, %x2, -280  #2676 pc 43568
	lw	%x1, 276(%x2) #2676 pc 43572
	fmv	%f0, l.21722  #0 pc 43576
	addi	%x6, %x3, 0  #2676 pc 43580
	addi	%x7, %x6, 0  #2676 pc 43584
	addi	%x6, %x6, 12  #2676 pc 43588
	addi	%x3, %x6, 0  #2676 pc 43592
	addi	%x6, %x0, 2  #0 pc 43596
	sw	%x7, 276(%x2)  #2676 pc 43600
	addi	%x30, %x7, 0  #0 pc 43604
	addi	%x7, %x6, 0  #0 pc 43608
	addi	%x6, %x30, 0  #0 pc 43612
	sw	%x1, 280(%x2)  #2676 pc 43616
	addi	%x2, %x2, 284  #2676 pc 43620
	jal	%x1, assign_farray.2573  #2676 pc 43624
	addi	%x2, %x2, -284  #2676 pc 43628
	lw	%x1, 280(%x2) #2676 pc 43632
	lw	%x6, 272(%x2)  #2676 pc 43636
	lw	%x7, 276(%x2)  #2676 pc 43640
	sw	%x7, 4(%x6)  #2676 pc 43644
	fmv	%f0, l.21722  #0 pc 43648
	addi	%x7, %x3, 0  #2676 pc 43652
	addi	%x8, %x7, 0  #2676 pc 43656
	addi	%x7, %x7, 12  #2676 pc 43660
	addi	%x3, %x7, 0  #2676 pc 43664
	addi	%x7, %x0, 2  #0 pc 43668
	sw	%x8, 280(%x2)  #2676 pc 43672
	addi	%x6, %x8, 0  #0 pc 43676
	sw	%x1, 284(%x2)  #2676 pc 43680
	addi	%x2, %x2, 288  #2676 pc 43684
	jal	%x1, assign_farray.2573  #2676 pc 43688
	addi	%x2, %x2, -288  #2676 pc 43692
	lw	%x1, 284(%x2) #2676 pc 43696
	lw	%x6, 272(%x2)  #2676 pc 43700
	lw	%x7, 280(%x2)  #2676 pc 43704
	sw	%x7, 8(%x6)  #2676 pc 43708
	fmv	%f0, l.21722  #0 pc 43712
	addi	%x7, %x3, 0  #2676 pc 43716
	addi	%x8, %x7, 0  #2676 pc 43720
	addi	%x7, %x7, 12  #2676 pc 43724
	addi	%x3, %x7, 0  #2676 pc 43728
	addi	%x7, %x0, 2  #0 pc 43732
	sw	%x8, 284(%x2)  #2676 pc 43736
	addi	%x6, %x8, 0  #0 pc 43740
	sw	%x1, 288(%x2)  #2676 pc 43744
	addi	%x2, %x2, 292  #2676 pc 43748
	jal	%x1, assign_farray.2573  #2676 pc 43752
	addi	%x2, %x2, -292  #2676 pc 43756
	lw	%x1, 288(%x2) #2676 pc 43760
	lw	%x6, 272(%x2)  #2676 pc 43764
	lw	%x7, 284(%x2)  #2676 pc 43768
	sw	%x7, 12(%x6)  #2676 pc 43772
	fmv	%f0, l.21722  #0 pc 43776
	addi	%x7, %x3, 0  #2676 pc 43780
	addi	%x8, %x7, 0  #2676 pc 43784
	addi	%x7, %x7, 12  #2676 pc 43788
	addi	%x3, %x7, 0  #2676 pc 43792
	addi	%x7, %x0, 2  #0 pc 43796
	sw	%x8, 288(%x2)  #2676 pc 43800
	addi	%x6, %x8, 0  #0 pc 43804
	sw	%x1, 292(%x2)  #2676 pc 43808
	addi	%x2, %x2, 296  #2676 pc 43812
	jal	%x1, assign_farray.2573  #2676 pc 43816
	addi	%x2, %x2, -296  #2676 pc 43820
	lw	%x1, 292(%x2) #2676 pc 43824
	lw	%x6, 272(%x2)  #2676 pc 43828
	lw	%x7, 288(%x2)  #2676 pc 43832
	sw	%x7, 16(%x6)  #2676 pc 43836
	addi	%x7, %x0, 0  #0 pc 43840
	addi	%x8, %x3, 0  #2676 pc 43844
	addi	%x9, %x8, 0  #2676 pc 43848
	addi	%x8, %x8, 4  #2676 pc 43852
	addi	%x3, %x8, 0  #2676 pc 43856
	addi	%x8, %x0, 0  #0 pc 43860
	sw	%x9, 292(%x2)  #2676 pc 43864
	addi	%x6, %x9, 0  #0 pc 43868
	sw	%x1, 296(%x2)  #2676 pc 43872
	addi	%x2, %x2, 300  #2676 pc 43876
	jal	%x1, assign_array.2566  #2676 pc 43880
	addi	%x2, %x2, -300  #2676 pc 43884
	lw	%x1, 296(%x2) #2676 pc 43888
	fmv	%f0, l.21722  #0 pc 43892
	addi	%x6, %x3, 0  #2676 pc 43896
	addi	%x7, %x6, 0  #2676 pc 43900
	addi	%x6, %x6, 12  #2676 pc 43904
	addi	%x3, %x6, 0  #2676 pc 43908
	addi	%x6, %x0, 2  #0 pc 43912
	sw	%x7, 296(%x2)  #2676 pc 43916
	addi	%x30, %x7, 0  #0 pc 43920
	addi	%x7, %x6, 0  #0 pc 43924
	addi	%x6, %x30, 0  #0 pc 43928
	sw	%x1, 300(%x2)  #2676 pc 43932
	addi	%x2, %x2, 304  #2676 pc 43936
	jal	%x1, assign_farray.2573  #2676 pc 43940
	addi	%x2, %x2, -304  #2676 pc 43944
	lw	%x1, 300(%x2) #2676 pc 43948
	addi	%x6, %x3, 0  #2676 pc 43952
	addi	%x7, %x6, 0  #2676 pc 43956
	addi	%x6, %x6, 20  #2676 pc 43960
	addi	%x3, %x6, 0  #2676 pc 43964
	addi	%x8, %x0, 4  #0 pc 43968
	lw	%x6, 296(%x2)  #2676 pc 43972
	sw	%x7, 300(%x2)  #2676 pc 43976
	addi	%x30, %x7, 0  #0 pc 43980
	addi	%x7, %x6, 0  #0 pc 43984
	addi	%x6, %x30, 0  #0 pc 43988
	sw	%x1, 304(%x2)  #2676 pc 43992
	addi	%x2, %x2, 308  #2676 pc 43996
	jal	%x1, assign_array.2566  #2676 pc 44000
	addi	%x2, %x2, -308  #2676 pc 44004
	lw	%x1, 304(%x2) #2676 pc 44008
	fmv	%f0, l.21722  #0 pc 44012
	addi	%x6, %x3, 0  #2676 pc 44016
	addi	%x7, %x6, 0  #2676 pc 44020
	addi	%x6, %x6, 12  #2676 pc 44024
	addi	%x3, %x6, 0  #2676 pc 44028
	addi	%x6, %x0, 2  #0 pc 44032
	sw	%x7, 304(%x2)  #2676 pc 44036
	addi	%x30, %x7, 0  #0 pc 44040
	addi	%x7, %x6, 0  #0 pc 44044
	addi	%x6, %x30, 0  #0 pc 44048
	sw	%x1, 308(%x2)  #2676 pc 44052
	addi	%x2, %x2, 312  #2676 pc 44056
	jal	%x1, assign_farray.2573  #2676 pc 44060
	addi	%x2, %x2, -312  #2676 pc 44064
	lw	%x1, 308(%x2) #2676 pc 44068
	lw	%x6, 300(%x2)  #2676 pc 44072
	lw	%x7, 304(%x2)  #2676 pc 44076
	sw	%x7, 4(%x6)  #2676 pc 44080
	fmv	%f0, l.21722  #0 pc 44084
	addi	%x7, %x3, 0  #2676 pc 44088
	addi	%x8, %x7, 0  #2676 pc 44092
	addi	%x7, %x7, 12  #2676 pc 44096
	addi	%x3, %x7, 0  #2676 pc 44100
	addi	%x7, %x0, 2  #0 pc 44104
	sw	%x8, 308(%x2)  #2676 pc 44108
	addi	%x6, %x8, 0  #0 pc 44112
	sw	%x1, 312(%x2)  #2676 pc 44116
	addi	%x2, %x2, 316  #2676 pc 44120
	jal	%x1, assign_farray.2573  #2676 pc 44124
	addi	%x2, %x2, -316  #2676 pc 44128
	lw	%x1, 312(%x2) #2676 pc 44132
	lw	%x6, 300(%x2)  #2676 pc 44136
	lw	%x7, 308(%x2)  #2676 pc 44140
	sw	%x7, 8(%x6)  #2676 pc 44144
	fmv	%f0, l.21722  #0 pc 44148
	addi	%x7, %x3, 0  #2676 pc 44152
	addi	%x8, %x7, 0  #2676 pc 44156
	addi	%x7, %x7, 12  #2676 pc 44160
	addi	%x3, %x7, 0  #2676 pc 44164
	addi	%x7, %x0, 2  #0 pc 44168
	sw	%x8, 312(%x2)  #2676 pc 44172
	addi	%x6, %x8, 0  #0 pc 44176
	sw	%x1, 316(%x2)  #2676 pc 44180
	addi	%x2, %x2, 320  #2676 pc 44184
	jal	%x1, assign_farray.2573  #2676 pc 44188
	addi	%x2, %x2, -320  #2676 pc 44192
	lw	%x1, 316(%x2) #2676 pc 44196
	lw	%x6, 300(%x2)  #2676 pc 44200
	lw	%x7, 312(%x2)  #2676 pc 44204
	sw	%x7, 12(%x6)  #2676 pc 44208
	fmv	%f0, l.21722  #0 pc 44212
	addi	%x7, %x3, 0  #2676 pc 44216
	addi	%x8, %x7, 0  #2676 pc 44220
	addi	%x7, %x7, 12  #2676 pc 44224
	addi	%x3, %x7, 0  #2676 pc 44228
	addi	%x7, %x0, 2  #0 pc 44232
	sw	%x8, 316(%x2)  #2676 pc 44236
	addi	%x6, %x8, 0  #0 pc 44240
	sw	%x1, 320(%x2)  #2676 pc 44244
	addi	%x2, %x2, 324  #2676 pc 44248
	jal	%x1, assign_farray.2573  #2676 pc 44252
	addi	%x2, %x2, -324  #2676 pc 44256
	lw	%x1, 320(%x2) #2676 pc 44260
	lw	%x6, 300(%x2)  #2676 pc 44264
	lw	%x7, 316(%x2)  #2676 pc 44268
	sw	%x7, 16(%x6)  #2676 pc 44272
	addi	%x7, %x3, 0  #2676 pc 44276
	addi	%x3, %x3, 32  #2676 pc 44280
	sw	%x6, 28(%x7)  #2676 pc 44284
	lw	%x6, 292(%x2)  #2676 pc 44288
	sw	%x6, 24(%x7)  #2676 pc 44292
	lw	%x6, 272(%x2)  #2676 pc 44296
	sw	%x6, 20(%x7)  #2676 pc 44300
	lw	%x6, 248(%x2)  #2676 pc 44304
	sw	%x6, 16(%x7)  #2676 pc 44308
	lw	%x6, 240(%x2)  #2676 pc 44312
	sw	%x6, 12(%x7)  #2676 pc 44316
	lw	%x6, 236(%x2)  #2676 pc 44320
	sw	%x6, 8(%x7)  #2676 pc 44324
	lw	%x6, 216(%x2)  #2676 pc 44328
	sw	%x6, 4(%x7)  #2676 pc 44332
	lw	%x6, 208(%x2)  #2676 pc 44336
	sw	%x6, 0(%x7)  #2676 pc 44340
	addi	%x6, %x3, 0  #2676 pc 44344
	addi	%x8, %x6, 0  #2676 pc 44348
	lw	%x9, 204(%x2)  #2676 pc 44352
	slli	%x10, %x9, 2  #2676 pc 44356
	add	%x6, %x6, %x10  #2676 pc 44360
	addi	%x3, %x6, 0  #2676 pc 44364
	addi	%x6, %x9, -1  #2676 pc 44368
	sw	%x8, 320(%x2)  #2676 pc 44372
	addi	%x30, %x8, 0  #0 pc 44376
	addi	%x8, %x6, 0  #0 pc 44380
	addi	%x6, %x30, 0  #0 pc 44384
	sw	%x1, 324(%x2)  #2676 pc 44388
	addi	%x2, %x2, 328  #2676 pc 44392
	jal	%x1, assign_array.2566  #2676 pc 44396
	addi	%x2, %x2, -328  #2676 pc 44400
	lw	%x1, 324(%x2) #2676 pc 44404
	lw	%x6, 80(%x2)  #2676 pc 44408
	lw	%x7, 0(%x6)  #2676 pc 44412
	addi	%x7, %x7, -2  #2676 pc 44416
	lw	%x8, 320(%x2)  #2676 pc 44420
	addi	%x6, %x8, 0  #0 pc 44424
	sw	%x1, 324(%x2)  #2676 pc 44428
	addi	%x2, %x2, 328  #2676 pc 44432
	jal	%x1, init_line_elements.3034  #2676 pc 44436
	addi	%x2, %x2, -328  #2676 pc 44440
	lw	%x1, 324(%x2) #2676 pc 44444
	lw	%x7, 80(%x2)  #2676 pc 44448
	lw	%x8, 0(%x7)  #2676 pc 44452
	fmv	%f0, l.21722  #0 pc 44456
	addi	%x9, %x3, 0  #2676 pc 44460
	addi	%x10, %x9, 0  #2676 pc 44464
	addi	%x9, %x9, 12  #2676 pc 44468
	addi	%x3, %x9, 0  #2676 pc 44472
	addi	%x9, %x0, 2  #0 pc 44476
	sw	%x6, 324(%x2)  #2676 pc 44480
	sw	%x8, 328(%x2)  #2676 pc 44484
	sw	%x10, 332(%x2)  #2676 pc 44488
	addi	%x7, %x9, 0  #0 pc 44492
	addi	%x6, %x10, 0  #0 pc 44496
	sw	%x1, 336(%x2)  #2676 pc 44500
	addi	%x2, %x2, 340  #2676 pc 44504
	jal	%x1, assign_farray.2573  #2676 pc 44508
	addi	%x2, %x2, -340  #2676 pc 44512
	lw	%x1, 336(%x2) #2676 pc 44516
	fmv	%f0, l.21722  #0 pc 44520
	addi	%x6, %x3, 0  #2676 pc 44524
	addi	%x7, %x6, 0  #2676 pc 44528
	addi	%x6, %x6, 12  #2676 pc 44532
	addi	%x3, %x6, 0  #2676 pc 44536
	addi	%x6, %x0, 2  #0 pc 44540
	sw	%x7, 336(%x2)  #2676 pc 44544
	addi	%x30, %x7, 0  #0 pc 44548
	addi	%x7, %x6, 0  #0 pc 44552
	addi	%x6, %x30, 0  #0 pc 44556
	sw	%x1, 340(%x2)  #2676 pc 44560
	addi	%x2, %x2, 344  #2676 pc 44564
	jal	%x1, assign_farray.2573  #2676 pc 44568
	addi	%x2, %x2, -344  #2676 pc 44572
	lw	%x1, 340(%x2) #2676 pc 44576
	addi	%x6, %x3, 0  #2676 pc 44580
	addi	%x7, %x6, 0  #2676 pc 44584
	addi	%x6, %x6, 20  #2676 pc 44588
	addi	%x3, %x6, 0  #2676 pc 44592
	addi	%x8, %x0, 4  #0 pc 44596
	lw	%x6, 336(%x2)  #2676 pc 44600
	sw	%x7, 340(%x2)  #2676 pc 44604
	addi	%x30, %x7, 0  #0 pc 44608
	addi	%x7, %x6, 0  #0 pc 44612
	addi	%x6, %x30, 0  #0 pc 44616
	sw	%x1, 344(%x2)  #2676 pc 44620
	addi	%x2, %x2, 348  #2676 pc 44624
	jal	%x1, assign_array.2566  #2676 pc 44628
	addi	%x2, %x2, -348  #2676 pc 44632
	lw	%x1, 344(%x2) #2676 pc 44636
	fmv	%f0, l.21722  #0 pc 44640
	addi	%x6, %x3, 0  #2676 pc 44644
	addi	%x7, %x6, 0  #2676 pc 44648
	addi	%x6, %x6, 12  #2676 pc 44652
	addi	%x3, %x6, 0  #2676 pc 44656
	addi	%x6, %x0, 2  #0 pc 44660
	sw	%x7, 344(%x2)  #2676 pc 44664
	addi	%x30, %x7, 0  #0 pc 44668
	addi	%x7, %x6, 0  #0 pc 44672
	addi	%x6, %x30, 0  #0 pc 44676
	sw	%x1, 348(%x2)  #2676 pc 44680
	addi	%x2, %x2, 352  #2676 pc 44684
	jal	%x1, assign_farray.2573  #2676 pc 44688
	addi	%x2, %x2, -352  #2676 pc 44692
	lw	%x1, 348(%x2) #2676 pc 44696
	lw	%x6, 340(%x2)  #2676 pc 44700
	lw	%x7, 344(%x2)  #2676 pc 44704
	sw	%x7, 4(%x6)  #2676 pc 44708
	fmv	%f0, l.21722  #0 pc 44712
	addi	%x7, %x3, 0  #2676 pc 44716
	addi	%x8, %x7, 0  #2676 pc 44720
	addi	%x7, %x7, 12  #2676 pc 44724
	addi	%x3, %x7, 0  #2676 pc 44728
	addi	%x7, %x0, 2  #0 pc 44732
	sw	%x8, 348(%x2)  #2676 pc 44736
	addi	%x6, %x8, 0  #0 pc 44740
	sw	%x1, 352(%x2)  #2676 pc 44744
	addi	%x2, %x2, 356  #2676 pc 44748
	jal	%x1, assign_farray.2573  #2676 pc 44752
	addi	%x2, %x2, -356  #2676 pc 44756
	lw	%x1, 352(%x2) #2676 pc 44760
	lw	%x6, 340(%x2)  #2676 pc 44764
	lw	%x7, 348(%x2)  #2676 pc 44768
	sw	%x7, 8(%x6)  #2676 pc 44772
	fmv	%f0, l.21722  #0 pc 44776
	addi	%x7, %x3, 0  #2676 pc 44780
	addi	%x8, %x7, 0  #2676 pc 44784
	addi	%x7, %x7, 12  #2676 pc 44788
	addi	%x3, %x7, 0  #2676 pc 44792
	addi	%x7, %x0, 2  #0 pc 44796
	sw	%x8, 352(%x2)  #2676 pc 44800
	addi	%x6, %x8, 0  #0 pc 44804
	sw	%x1, 356(%x2)  #2676 pc 44808
	addi	%x2, %x2, 360  #2676 pc 44812
	jal	%x1, assign_farray.2573  #2676 pc 44816
	addi	%x2, %x2, -360  #2676 pc 44820
	lw	%x1, 356(%x2) #2676 pc 44824
	lw	%x6, 340(%x2)  #2676 pc 44828
	lw	%x7, 352(%x2)  #2676 pc 44832
	sw	%x7, 12(%x6)  #2676 pc 44836
	fmv	%f0, l.21722  #0 pc 44840
	addi	%x7, %x3, 0  #2676 pc 44844
	addi	%x8, %x7, 0  #2676 pc 44848
	addi	%x7, %x7, 12  #2676 pc 44852
	addi	%x3, %x7, 0  #2676 pc 44856
	addi	%x7, %x0, 2  #0 pc 44860
	sw	%x8, 356(%x2)  #2676 pc 44864
	addi	%x6, %x8, 0  #0 pc 44868
	sw	%x1, 360(%x2)  #2676 pc 44872
	addi	%x2, %x2, 364  #2676 pc 44876
	jal	%x1, assign_farray.2573  #2676 pc 44880
	addi	%x2, %x2, -364  #2676 pc 44884
	lw	%x1, 360(%x2) #2676 pc 44888
	lw	%x6, 340(%x2)  #2676 pc 44892
	lw	%x7, 356(%x2)  #2676 pc 44896
	sw	%x7, 16(%x6)  #2676 pc 44900
	addi	%x7, %x0, 0  #0 pc 44904
	addi	%x8, %x3, 0  #2676 pc 44908
	addi	%x9, %x8, 0  #2676 pc 44912
	addi	%x8, %x8, 20  #2676 pc 44916
	addi	%x3, %x8, 0  #2676 pc 44920
	addi	%x8, %x0, 4  #0 pc 44924
	sw	%x9, 360(%x2)  #2676 pc 44928
	addi	%x6, %x9, 0  #0 pc 44932
	sw	%x1, 364(%x2)  #2676 pc 44936
	addi	%x2, %x2, 368  #2676 pc 44940
	jal	%x1, assign_array.2566  #2676 pc 44944
	addi	%x2, %x2, -368  #2676 pc 44948
	lw	%x1, 364(%x2) #2676 pc 44952
	addi	%x7, %x0, 0  #0 pc 44956
	addi	%x6, %x3, 0  #2676 pc 44960
	addi	%x8, %x6, 0  #2676 pc 44964
	addi	%x6, %x6, 20  #2676 pc 44968
	addi	%x3, %x6, 0  #2676 pc 44972
	addi	%x6, %x0, 4  #0 pc 44976
	sw	%x8, 364(%x2)  #2676 pc 44980
	addi	%x30, %x8, 0  #0 pc 44984
	addi	%x8, %x6, 0  #0 pc 44988
	addi	%x6, %x30, 0  #0 pc 44992
	sw	%x1, 368(%x2)  #2676 pc 44996
	addi	%x2, %x2, 372  #2676 pc 45000
	jal	%x1, assign_array.2566  #2676 pc 45004
	addi	%x2, %x2, -372  #2676 pc 45008
	lw	%x1, 368(%x2) #2676 pc 45012
	fmv	%f0, l.21722  #0 pc 45016
	addi	%x6, %x3, 0  #2676 pc 45020
	addi	%x7, %x6, 0  #2676 pc 45024
	addi	%x6, %x6, 12  #2676 pc 45028
	addi	%x3, %x6, 0  #2676 pc 45032
	addi	%x6, %x0, 2  #0 pc 45036
	sw	%x7, 368(%x2)  #2676 pc 45040
	addi	%x30, %x7, 0  #0 pc 45044
	addi	%x7, %x6, 0  #0 pc 45048
	addi	%x6, %x30, 0  #0 pc 45052
	sw	%x1, 372(%x2)  #2676 pc 45056
	addi	%x2, %x2, 376  #2676 pc 45060
	jal	%x1, assign_farray.2573  #2676 pc 45064
	addi	%x2, %x2, -376  #2676 pc 45068
	lw	%x1, 372(%x2) #2676 pc 45072
	addi	%x6, %x3, 0  #2676 pc 45076
	addi	%x7, %x6, 0  #2676 pc 45080
	addi	%x6, %x6, 20  #2676 pc 45084
	addi	%x3, %x6, 0  #2676 pc 45088
	addi	%x8, %x0, 4  #0 pc 45092
	lw	%x6, 368(%x2)  #2676 pc 45096
	sw	%x7, 372(%x2)  #2676 pc 45100
	addi	%x30, %x7, 0  #0 pc 45104
	addi	%x7, %x6, 0  #0 pc 45108
	addi	%x6, %x30, 0  #0 pc 45112
	sw	%x1, 376(%x2)  #2676 pc 45116
	addi	%x2, %x2, 380  #2676 pc 45120
	jal	%x1, assign_array.2566  #2676 pc 45124
	addi	%x2, %x2, -380  #2676 pc 45128
	lw	%x1, 376(%x2) #2676 pc 45132
	fmv	%f0, l.21722  #0 pc 45136
	addi	%x6, %x3, 0  #2676 pc 45140
	addi	%x7, %x6, 0  #2676 pc 45144
	addi	%x6, %x6, 12  #2676 pc 45148
	addi	%x3, %x6, 0  #2676 pc 45152
	addi	%x6, %x0, 2  #0 pc 45156
	sw	%x7, 376(%x2)  #2676 pc 45160
	addi	%x30, %x7, 0  #0 pc 45164
	addi	%x7, %x6, 0  #0 pc 45168
	addi	%x6, %x30, 0  #0 pc 45172
	sw	%x1, 380(%x2)  #2676 pc 45176
	addi	%x2, %x2, 384  #2676 pc 45180
	jal	%x1, assign_farray.2573  #2676 pc 45184
	addi	%x2, %x2, -384  #2676 pc 45188
	lw	%x1, 380(%x2) #2676 pc 45192
	lw	%x6, 372(%x2)  #2676 pc 45196
	lw	%x7, 376(%x2)  #2676 pc 45200
	sw	%x7, 4(%x6)  #2676 pc 45204
	fmv	%f0, l.21722  #0 pc 45208
	addi	%x7, %x3, 0  #2676 pc 45212
	addi	%x8, %x7, 0  #2676 pc 45216
	addi	%x7, %x7, 12  #2676 pc 45220
	addi	%x3, %x7, 0  #2676 pc 45224
	addi	%x7, %x0, 2  #0 pc 45228
	sw	%x8, 380(%x2)  #2676 pc 45232
	addi	%x6, %x8, 0  #0 pc 45236
	sw	%x1, 384(%x2)  #2676 pc 45240
	addi	%x2, %x2, 388  #2676 pc 45244
	jal	%x1, assign_farray.2573  #2676 pc 45248
	addi	%x2, %x2, -388  #2676 pc 45252
	lw	%x1, 384(%x2) #2676 pc 45256
	lw	%x6, 372(%x2)  #2676 pc 45260
	lw	%x7, 380(%x2)  #2676 pc 45264
	sw	%x7, 8(%x6)  #2676 pc 45268
	fmv	%f0, l.21722  #0 pc 45272
	addi	%x7, %x3, 0  #2676 pc 45276
	addi	%x8, %x7, 0  #2676 pc 45280
	addi	%x7, %x7, 12  #2676 pc 45284
	addi	%x3, %x7, 0  #2676 pc 45288
	addi	%x7, %x0, 2  #0 pc 45292
	sw	%x8, 384(%x2)  #2676 pc 45296
	addi	%x6, %x8, 0  #0 pc 45300
	sw	%x1, 388(%x2)  #2676 pc 45304
	addi	%x2, %x2, 392  #2676 pc 45308
	jal	%x1, assign_farray.2573  #2676 pc 45312
	addi	%x2, %x2, -392  #2676 pc 45316
	lw	%x1, 388(%x2) #2676 pc 45320
	lw	%x6, 372(%x2)  #2676 pc 45324
	lw	%x7, 384(%x2)  #2676 pc 45328
	sw	%x7, 12(%x6)  #2676 pc 45332
	fmv	%f0, l.21722  #0 pc 45336
	addi	%x7, %x3, 0  #2676 pc 45340
	addi	%x8, %x7, 0  #2676 pc 45344
	addi	%x7, %x7, 12  #2676 pc 45348
	addi	%x3, %x7, 0  #2676 pc 45352
	addi	%x7, %x0, 2  #0 pc 45356
	sw	%x8, 388(%x2)  #2676 pc 45360
	addi	%x6, %x8, 0  #0 pc 45364
	sw	%x1, 392(%x2)  #2676 pc 45368
	addi	%x2, %x2, 396  #2676 pc 45372
	jal	%x1, assign_farray.2573  #2676 pc 45376
	addi	%x2, %x2, -396  #2676 pc 45380
	lw	%x1, 392(%x2) #2676 pc 45384
	lw	%x6, 372(%x2)  #2676 pc 45388
	lw	%x7, 388(%x2)  #2676 pc 45392
	sw	%x7, 16(%x6)  #2676 pc 45396
	fmv	%f0, l.21722  #0 pc 45400
	addi	%x7, %x3, 0  #2676 pc 45404
	addi	%x8, %x7, 0  #2676 pc 45408
	addi	%x7, %x7, 12  #2676 pc 45412
	addi	%x3, %x7, 0  #2676 pc 45416
	addi	%x7, %x0, 2  #0 pc 45420
	sw	%x8, 392(%x2)  #2676 pc 45424
	addi	%x6, %x8, 0  #0 pc 45428
	sw	%x1, 396(%x2)  #2676 pc 45432
	addi	%x2, %x2, 400  #2676 pc 45436
	jal	%x1, assign_farray.2573  #2676 pc 45440
	addi	%x2, %x2, -400  #2676 pc 45444
	lw	%x1, 396(%x2) #2676 pc 45448
	addi	%x6, %x3, 0  #2676 pc 45452
	addi	%x7, %x6, 0  #2676 pc 45456
	addi	%x6, %x6, 20  #2676 pc 45460
	addi	%x3, %x6, 0  #2676 pc 45464
	addi	%x8, %x0, 4  #0 pc 45468
	lw	%x6, 392(%x2)  #2676 pc 45472
	sw	%x7, 396(%x2)  #2676 pc 45476
	addi	%x30, %x7, 0  #0 pc 45480
	addi	%x7, %x6, 0  #0 pc 45484
	addi	%x6, %x30, 0  #0 pc 45488
	sw	%x1, 400(%x2)  #2676 pc 45492
	addi	%x2, %x2, 404  #2676 pc 45496
	jal	%x1, assign_array.2566  #2676 pc 45500
	addi	%x2, %x2, -404  #2676 pc 45504
	lw	%x1, 400(%x2) #2676 pc 45508
	fmv	%f0, l.21722  #0 pc 45512
	addi	%x6, %x3, 0  #2676 pc 45516
	addi	%x7, %x6, 0  #2676 pc 45520
	addi	%x6, %x6, 12  #2676 pc 45524
	addi	%x3, %x6, 0  #2676 pc 45528
	addi	%x6, %x0, 2  #0 pc 45532
	sw	%x7, 400(%x2)  #2676 pc 45536
	addi	%x30, %x7, 0  #0 pc 45540
	addi	%x7, %x6, 0  #0 pc 45544
	addi	%x6, %x30, 0  #0 pc 45548
	sw	%x1, 404(%x2)  #2676 pc 45552
	addi	%x2, %x2, 408  #2676 pc 45556
	jal	%x1, assign_farray.2573  #2676 pc 45560
	addi	%x2, %x2, -408  #2676 pc 45564
	lw	%x1, 404(%x2) #2676 pc 45568
	lw	%x6, 396(%x2)  #2676 pc 45572
	lw	%x7, 400(%x2)  #2676 pc 45576
	sw	%x7, 4(%x6)  #2676 pc 45580
	fmv	%f0, l.21722  #0 pc 45584
	addi	%x7, %x3, 0  #2676 pc 45588
	addi	%x8, %x7, 0  #2676 pc 45592
	addi	%x7, %x7, 12  #2676 pc 45596
	addi	%x3, %x7, 0  #2676 pc 45600
	addi	%x7, %x0, 2  #0 pc 45604
	sw	%x8, 404(%x2)  #2676 pc 45608
	addi	%x6, %x8, 0  #0 pc 45612
	sw	%x1, 408(%x2)  #2676 pc 45616
	addi	%x2, %x2, 412  #2676 pc 45620
	jal	%x1, assign_farray.2573  #2676 pc 45624
	addi	%x2, %x2, -412  #2676 pc 45628
	lw	%x1, 408(%x2) #2676 pc 45632
	lw	%x6, 396(%x2)  #2676 pc 45636
	lw	%x7, 404(%x2)  #2676 pc 45640
	sw	%x7, 8(%x6)  #2676 pc 45644
	fmv	%f0, l.21722  #0 pc 45648
	addi	%x7, %x3, 0  #2676 pc 45652
	addi	%x8, %x7, 0  #2676 pc 45656
	addi	%x7, %x7, 12  #2676 pc 45660
	addi	%x3, %x7, 0  #2676 pc 45664
	addi	%x7, %x0, 2  #0 pc 45668
	sw	%x8, 408(%x2)  #2676 pc 45672
	addi	%x6, %x8, 0  #0 pc 45676
	sw	%x1, 412(%x2)  #2676 pc 45680
	addi	%x2, %x2, 416  #2676 pc 45684
	jal	%x1, assign_farray.2573  #2676 pc 45688
	addi	%x2, %x2, -416  #2676 pc 45692
	lw	%x1, 412(%x2) #2676 pc 45696
	lw	%x6, 396(%x2)  #2676 pc 45700
	lw	%x7, 408(%x2)  #2676 pc 45704
	sw	%x7, 12(%x6)  #2676 pc 45708
	fmv	%f0, l.21722  #0 pc 45712
	addi	%x7, %x3, 0  #2676 pc 45716
	addi	%x8, %x7, 0  #2676 pc 45720
	addi	%x7, %x7, 12  #2676 pc 45724
	addi	%x3, %x7, 0  #2676 pc 45728
	addi	%x7, %x0, 2  #0 pc 45732
	sw	%x8, 412(%x2)  #2676 pc 45736
	addi	%x6, %x8, 0  #0 pc 45740
	sw	%x1, 416(%x2)  #2676 pc 45744
	addi	%x2, %x2, 420  #2676 pc 45748
	jal	%x1, assign_farray.2573  #2676 pc 45752
	addi	%x2, %x2, -420  #2676 pc 45756
	lw	%x1, 416(%x2) #2676 pc 45760
	lw	%x6, 396(%x2)  #2676 pc 45764
	lw	%x7, 412(%x2)  #2676 pc 45768
	sw	%x7, 16(%x6)  #2676 pc 45772
	addi	%x7, %x0, 0  #0 pc 45776
	addi	%x8, %x3, 0  #2676 pc 45780
	addi	%x9, %x8, 0  #2676 pc 45784
	addi	%x8, %x8, 4  #2676 pc 45788
	addi	%x3, %x8, 0  #2676 pc 45792
	addi	%x8, %x0, 0  #0 pc 45796
	sw	%x9, 416(%x2)  #2676 pc 45800
	addi	%x6, %x9, 0  #0 pc 45804
	sw	%x1, 420(%x2)  #2676 pc 45808
	addi	%x2, %x2, 424  #2676 pc 45812
	jal	%x1, assign_array.2566  #2676 pc 45816
	addi	%x2, %x2, -424  #2676 pc 45820
	lw	%x1, 420(%x2) #2676 pc 45824
	fmv	%f0, l.21722  #0 pc 45828
	addi	%x6, %x3, 0  #2676 pc 45832
	addi	%x7, %x6, 0  #2676 pc 45836
	addi	%x6, %x6, 12  #2676 pc 45840
	addi	%x3, %x6, 0  #2676 pc 45844
	addi	%x6, %x0, 2  #0 pc 45848
	sw	%x7, 420(%x2)  #2676 pc 45852
	addi	%x30, %x7, 0  #0 pc 45856
	addi	%x7, %x6, 0  #0 pc 45860
	addi	%x6, %x30, 0  #0 pc 45864
	sw	%x1, 424(%x2)  #2676 pc 45868
	addi	%x2, %x2, 428  #2676 pc 45872
	jal	%x1, assign_farray.2573  #2676 pc 45876
	addi	%x2, %x2, -428  #2676 pc 45880
	lw	%x1, 424(%x2) #2676 pc 45884
	addi	%x6, %x3, 0  #2676 pc 45888
	addi	%x7, %x6, 0  #2676 pc 45892
	addi	%x6, %x6, 20  #2676 pc 45896
	addi	%x3, %x6, 0  #2676 pc 45900
	addi	%x8, %x0, 4  #0 pc 45904
	lw	%x6, 420(%x2)  #2676 pc 45908
	sw	%x7, 424(%x2)  #2676 pc 45912
	addi	%x30, %x7, 0  #0 pc 45916
	addi	%x7, %x6, 0  #0 pc 45920
	addi	%x6, %x30, 0  #0 pc 45924
	sw	%x1, 428(%x2)  #2676 pc 45928
	addi	%x2, %x2, 432  #2676 pc 45932
	jal	%x1, assign_array.2566  #2676 pc 45936
	addi	%x2, %x2, -432  #2676 pc 45940
	lw	%x1, 428(%x2) #2676 pc 45944
	fmv	%f0, l.21722  #0 pc 45948
	addi	%x6, %x3, 0  #2676 pc 45952
	addi	%x7, %x6, 0  #2676 pc 45956
	addi	%x6, %x6, 12  #2676 pc 45960
	addi	%x3, %x6, 0  #2676 pc 45964
	addi	%x6, %x0, 2  #0 pc 45968
	sw	%x7, 428(%x2)  #2676 pc 45972
	addi	%x30, %x7, 0  #0 pc 45976
	addi	%x7, %x6, 0  #0 pc 45980
	addi	%x6, %x30, 0  #0 pc 45984
	sw	%x1, 432(%x2)  #2676 pc 45988
	addi	%x2, %x2, 436  #2676 pc 45992
	jal	%x1, assign_farray.2573  #2676 pc 45996
	addi	%x2, %x2, -436  #2676 pc 46000
	lw	%x1, 432(%x2) #2676 pc 46004
	lw	%x6, 424(%x2)  #2676 pc 46008
	lw	%x7, 428(%x2)  #2676 pc 46012
	sw	%x7, 4(%x6)  #2676 pc 46016
	fmv	%f0, l.21722  #0 pc 46020
	addi	%x7, %x3, 0  #2676 pc 46024
	addi	%x8, %x7, 0  #2676 pc 46028
	addi	%x7, %x7, 12  #2676 pc 46032
	addi	%x3, %x7, 0  #2676 pc 46036
	addi	%x7, %x0, 2  #0 pc 46040
	sw	%x8, 432(%x2)  #2676 pc 46044
	addi	%x6, %x8, 0  #0 pc 46048
	sw	%x1, 436(%x2)  #2676 pc 46052
	addi	%x2, %x2, 440  #2676 pc 46056
	jal	%x1, assign_farray.2573  #2676 pc 46060
	addi	%x2, %x2, -440  #2676 pc 46064
	lw	%x1, 436(%x2) #2676 pc 46068
	lw	%x6, 424(%x2)  #2676 pc 46072
	lw	%x7, 432(%x2)  #2676 pc 46076
	sw	%x7, 8(%x6)  #2676 pc 46080
	fmv	%f0, l.21722  #0 pc 46084
	addi	%x7, %x3, 0  #2676 pc 46088
	addi	%x8, %x7, 0  #2676 pc 46092
	addi	%x7, %x7, 12  #2676 pc 46096
	addi	%x3, %x7, 0  #2676 pc 46100
	addi	%x7, %x0, 2  #0 pc 46104
	sw	%x8, 436(%x2)  #2676 pc 46108
	addi	%x6, %x8, 0  #0 pc 46112
	sw	%x1, 440(%x2)  #2676 pc 46116
	addi	%x2, %x2, 444  #2676 pc 46120
	jal	%x1, assign_farray.2573  #2676 pc 46124
	addi	%x2, %x2, -444  #2676 pc 46128
	lw	%x1, 440(%x2) #2676 pc 46132
	lw	%x6, 424(%x2)  #2676 pc 46136
	lw	%x7, 436(%x2)  #2676 pc 46140
	sw	%x7, 12(%x6)  #2676 pc 46144
	fmv	%f0, l.21722  #0 pc 46148
	addi	%x7, %x3, 0  #2676 pc 46152
	addi	%x8, %x7, 0  #2676 pc 46156
	addi	%x7, %x7, 12  #2676 pc 46160
	addi	%x3, %x7, 0  #2676 pc 46164
	addi	%x7, %x0, 2  #0 pc 46168
	sw	%x8, 440(%x2)  #2676 pc 46172
	addi	%x6, %x8, 0  #0 pc 46176
	sw	%x1, 444(%x2)  #2676 pc 46180
	addi	%x2, %x2, 448  #2676 pc 46184
	jal	%x1, assign_farray.2573  #2676 pc 46188
	addi	%x2, %x2, -448  #2676 pc 46192
	lw	%x1, 444(%x2) #2676 pc 46196
	lw	%x6, 424(%x2)  #2676 pc 46200
	lw	%x7, 440(%x2)  #2676 pc 46204
	sw	%x7, 16(%x6)  #2676 pc 46208
	addi	%x7, %x3, 0  #2676 pc 46212
	addi	%x3, %x3, 32  #2676 pc 46216
	sw	%x6, 28(%x7)  #2676 pc 46220
	lw	%x6, 416(%x2)  #2676 pc 46224
	sw	%x6, 24(%x7)  #2676 pc 46228
	lw	%x6, 396(%x2)  #2676 pc 46232
	sw	%x6, 20(%x7)  #2676 pc 46236
	lw	%x6, 372(%x2)  #2676 pc 46240
	sw	%x6, 16(%x7)  #2676 pc 46244
	lw	%x6, 364(%x2)  #2676 pc 46248
	sw	%x6, 12(%x7)  #2676 pc 46252
	lw	%x6, 360(%x2)  #2676 pc 46256
	sw	%x6, 8(%x7)  #2676 pc 46260
	lw	%x6, 340(%x2)  #2676 pc 46264
	sw	%x6, 4(%x7)  #2676 pc 46268
	lw	%x6, 332(%x2)  #2676 pc 46272
	sw	%x6, 0(%x7)  #2676 pc 46276
	addi	%x6, %x3, 0  #2676 pc 46280
	addi	%x8, %x6, 0  #2676 pc 46284
	lw	%x9, 328(%x2)  #2676 pc 46288
	slli	%x10, %x9, 2  #2676 pc 46292
	add	%x6, %x6, %x10  #2676 pc 46296
	addi	%x3, %x6, 0  #2676 pc 46300
	addi	%x6, %x9, -1  #2676 pc 46304
	sw	%x8, 444(%x2)  #2676 pc 46308
	addi	%x30, %x8, 0  #0 pc 46312
	addi	%x8, %x6, 0  #0 pc 46316
	addi	%x6, %x30, 0  #0 pc 46320
	sw	%x1, 448(%x2)  #2676 pc 46324
	addi	%x2, %x2, 452  #2676 pc 46328
	jal	%x1, assign_array.2566  #2676 pc 46332
	addi	%x2, %x2, -452  #2676 pc 46336
	lw	%x1, 448(%x2) #2676 pc 46340
	lw	%x6, 80(%x2)  #2676 pc 46344
	lw	%x7, 0(%x6)  #2676 pc 46348
	addi	%x7, %x7, -2  #2676 pc 46352
	lw	%x8, 444(%x2)  #2676 pc 46356
	addi	%x6, %x8, 0  #0 pc 46360
	sw	%x1, 448(%x2)  #2676 pc 46364
	addi	%x2, %x2, 452  #2676 pc 46368
	jal	%x1, init_line_elements.3034  #2676 pc 46372
	addi	%x2, %x2, -452  #2676 pc 46376
	lw	%x1, 448(%x2) #2676 pc 46380
	lw	%x7, 80(%x2)  #2676 pc 46384
	lw	%x8, 0(%x7)  #2676 pc 46388
	fmv	%f0, l.21722  #0 pc 46392
	addi	%x9, %x3, 0  #2676 pc 46396
	addi	%x10, %x9, 0  #2676 pc 46400
	addi	%x9, %x9, 12  #2676 pc 46404
	addi	%x3, %x9, 0  #2676 pc 46408
	addi	%x9, %x0, 2  #0 pc 46412
	sw	%x6, 448(%x2)  #2676 pc 46416
	sw	%x8, 452(%x2)  #2676 pc 46420
	sw	%x10, 456(%x2)  #2676 pc 46424
	addi	%x7, %x9, 0  #0 pc 46428
	addi	%x6, %x10, 0  #0 pc 46432
	sw	%x1, 460(%x2)  #2676 pc 46436
	addi	%x2, %x2, 464  #2676 pc 46440
	jal	%x1, assign_farray.2573  #2676 pc 46444
	addi	%x2, %x2, -464  #2676 pc 46448
	lw	%x1, 460(%x2) #2676 pc 46452
	fmv	%f0, l.21722  #0 pc 46456
	addi	%x6, %x3, 0  #2676 pc 46460
	addi	%x7, %x6, 0  #2676 pc 46464
	addi	%x6, %x6, 12  #2676 pc 46468
	addi	%x3, %x6, 0  #2676 pc 46472
	addi	%x6, %x0, 2  #0 pc 46476
	sw	%x7, 460(%x2)  #2676 pc 46480
	addi	%x30, %x7, 0  #0 pc 46484
	addi	%x7, %x6, 0  #0 pc 46488
	addi	%x6, %x30, 0  #0 pc 46492
	sw	%x1, 464(%x2)  #2676 pc 46496
	addi	%x2, %x2, 468  #2676 pc 46500
	jal	%x1, assign_farray.2573  #2676 pc 46504
	addi	%x2, %x2, -468  #2676 pc 46508
	lw	%x1, 464(%x2) #2676 pc 46512
	addi	%x6, %x3, 0  #2676 pc 46516
	addi	%x7, %x6, 0  #2676 pc 46520
	addi	%x6, %x6, 20  #2676 pc 46524
	addi	%x3, %x6, 0  #2676 pc 46528
	addi	%x8, %x0, 4  #0 pc 46532
	lw	%x6, 460(%x2)  #2676 pc 46536
	sw	%x7, 464(%x2)  #2676 pc 46540
	addi	%x30, %x7, 0  #0 pc 46544
	addi	%x7, %x6, 0  #0 pc 46548
	addi	%x6, %x30, 0  #0 pc 46552
	sw	%x1, 468(%x2)  #2676 pc 46556
	addi	%x2, %x2, 472  #2676 pc 46560
	jal	%x1, assign_array.2566  #2676 pc 46564
	addi	%x2, %x2, -472  #2676 pc 46568
	lw	%x1, 468(%x2) #2676 pc 46572
	fmv	%f0, l.21722  #0 pc 46576
	addi	%x6, %x3, 0  #2676 pc 46580
	addi	%x7, %x6, 0  #2676 pc 46584
	addi	%x6, %x6, 12  #2676 pc 46588
	addi	%x3, %x6, 0  #2676 pc 46592
	addi	%x6, %x0, 2  #0 pc 46596
	sw	%x7, 468(%x2)  #2676 pc 46600
	addi	%x30, %x7, 0  #0 pc 46604
	addi	%x7, %x6, 0  #0 pc 46608
	addi	%x6, %x30, 0  #0 pc 46612
	sw	%x1, 472(%x2)  #2676 pc 46616
	addi	%x2, %x2, 476  #2676 pc 46620
	jal	%x1, assign_farray.2573  #2676 pc 46624
	addi	%x2, %x2, -476  #2676 pc 46628
	lw	%x1, 472(%x2) #2676 pc 46632
	lw	%x6, 464(%x2)  #2676 pc 46636
	lw	%x7, 468(%x2)  #2676 pc 46640
	sw	%x7, 4(%x6)  #2676 pc 46644
	fmv	%f0, l.21722  #0 pc 46648
	addi	%x7, %x3, 0  #2676 pc 46652
	addi	%x8, %x7, 0  #2676 pc 46656
	addi	%x7, %x7, 12  #2676 pc 46660
	addi	%x3, %x7, 0  #2676 pc 46664
	addi	%x7, %x0, 2  #0 pc 46668
	sw	%x8, 472(%x2)  #2676 pc 46672
	addi	%x6, %x8, 0  #0 pc 46676
	sw	%x1, 476(%x2)  #2676 pc 46680
	addi	%x2, %x2, 480  #2676 pc 46684
	jal	%x1, assign_farray.2573  #2676 pc 46688
	addi	%x2, %x2, -480  #2676 pc 46692
	lw	%x1, 476(%x2) #2676 pc 46696
	lw	%x6, 464(%x2)  #2676 pc 46700
	lw	%x7, 472(%x2)  #2676 pc 46704
	sw	%x7, 8(%x6)  #2676 pc 46708
	fmv	%f0, l.21722  #0 pc 46712
	addi	%x7, %x3, 0  #2676 pc 46716
	addi	%x8, %x7, 0  #2676 pc 46720
	addi	%x7, %x7, 12  #2676 pc 46724
	addi	%x3, %x7, 0  #2676 pc 46728
	addi	%x7, %x0, 2  #0 pc 46732
	sw	%x8, 476(%x2)  #2676 pc 46736
	addi	%x6, %x8, 0  #0 pc 46740
	sw	%x1, 480(%x2)  #2676 pc 46744
	addi	%x2, %x2, 484  #2676 pc 46748
	jal	%x1, assign_farray.2573  #2676 pc 46752
	addi	%x2, %x2, -484  #2676 pc 46756
	lw	%x1, 480(%x2) #2676 pc 46760
	lw	%x6, 464(%x2)  #2676 pc 46764
	lw	%x7, 476(%x2)  #2676 pc 46768
	sw	%x7, 12(%x6)  #2676 pc 46772
	fmv	%f0, l.21722  #0 pc 46776
	addi	%x7, %x3, 0  #2676 pc 46780
	addi	%x8, %x7, 0  #2676 pc 46784
	addi	%x7, %x7, 12  #2676 pc 46788
	addi	%x3, %x7, 0  #2676 pc 46792
	addi	%x7, %x0, 2  #0 pc 46796
	sw	%x8, 480(%x2)  #2676 pc 46800
	addi	%x6, %x8, 0  #0 pc 46804
	sw	%x1, 484(%x2)  #2676 pc 46808
	addi	%x2, %x2, 488  #2676 pc 46812
	jal	%x1, assign_farray.2573  #2676 pc 46816
	addi	%x2, %x2, -488  #2676 pc 46820
	lw	%x1, 484(%x2) #2676 pc 46824
	lw	%x6, 464(%x2)  #2676 pc 46828
	lw	%x7, 480(%x2)  #2676 pc 46832
	sw	%x7, 16(%x6)  #2676 pc 46836
	addi	%x7, %x0, 0  #0 pc 46840
	addi	%x8, %x3, 0  #2676 pc 46844
	addi	%x9, %x8, 0  #2676 pc 46848
	addi	%x8, %x8, 20  #2676 pc 46852
	addi	%x3, %x8, 0  #2676 pc 46856
	addi	%x8, %x0, 4  #0 pc 46860
	sw	%x9, 484(%x2)  #2676 pc 46864
	addi	%x6, %x9, 0  #0 pc 46868
	sw	%x1, 488(%x2)  #2676 pc 46872
	addi	%x2, %x2, 492  #2676 pc 46876
	jal	%x1, assign_array.2566  #2676 pc 46880
	addi	%x2, %x2, -492  #2676 pc 46884
	lw	%x1, 488(%x2) #2676 pc 46888
	addi	%x7, %x0, 0  #0 pc 46892
	addi	%x6, %x3, 0  #2676 pc 46896
	addi	%x8, %x6, 0  #2676 pc 46900
	addi	%x6, %x6, 20  #2676 pc 46904
	addi	%x3, %x6, 0  #2676 pc 46908
	addi	%x6, %x0, 4  #0 pc 46912
	sw	%x8, 488(%x2)  #2676 pc 46916
	addi	%x30, %x8, 0  #0 pc 46920
	addi	%x8, %x6, 0  #0 pc 46924
	addi	%x6, %x30, 0  #0 pc 46928
	sw	%x1, 492(%x2)  #2676 pc 46932
	addi	%x2, %x2, 496  #2676 pc 46936
	jal	%x1, assign_array.2566  #2676 pc 46940
	addi	%x2, %x2, -496  #2676 pc 46944
	lw	%x1, 492(%x2) #2676 pc 46948
	fmv	%f0, l.21722  #0 pc 46952
	addi	%x6, %x3, 0  #2676 pc 46956
	addi	%x7, %x6, 0  #2676 pc 46960
	addi	%x6, %x6, 12  #2676 pc 46964
	addi	%x3, %x6, 0  #2676 pc 46968
	addi	%x6, %x0, 2  #0 pc 46972
	sw	%x7, 492(%x2)  #2676 pc 46976
	addi	%x30, %x7, 0  #0 pc 46980
	addi	%x7, %x6, 0  #0 pc 46984
	addi	%x6, %x30, 0  #0 pc 46988
	sw	%x1, 496(%x2)  #2676 pc 46992
	addi	%x2, %x2, 500  #2676 pc 46996
	jal	%x1, assign_farray.2573  #2676 pc 47000
	addi	%x2, %x2, -500  #2676 pc 47004
	lw	%x1, 496(%x2) #2676 pc 47008
	addi	%x6, %x3, 0  #2676 pc 47012
	addi	%x7, %x6, 0  #2676 pc 47016
	addi	%x6, %x6, 20  #2676 pc 47020
	addi	%x3, %x6, 0  #2676 pc 47024
	addi	%x8, %x0, 4  #0 pc 47028
	lw	%x6, 492(%x2)  #2676 pc 47032
	sw	%x7, 496(%x2)  #2676 pc 47036
	addi	%x30, %x7, 0  #0 pc 47040
	addi	%x7, %x6, 0  #0 pc 47044
	addi	%x6, %x30, 0  #0 pc 47048
	sw	%x1, 500(%x2)  #2676 pc 47052
	addi	%x2, %x2, 504  #2676 pc 47056
	jal	%x1, assign_array.2566  #2676 pc 47060
	addi	%x2, %x2, -504  #2676 pc 47064
	lw	%x1, 500(%x2) #2676 pc 47068
	fmv	%f0, l.21722  #0 pc 47072
	addi	%x6, %x3, 0  #2676 pc 47076
	addi	%x7, %x6, 0  #2676 pc 47080
	addi	%x6, %x6, 12  #2676 pc 47084
	addi	%x3, %x6, 0  #2676 pc 47088
	addi	%x6, %x0, 2  #0 pc 47092
	sw	%x7, 500(%x2)  #2676 pc 47096
	addi	%x30, %x7, 0  #0 pc 47100
	addi	%x7, %x6, 0  #0 pc 47104
	addi	%x6, %x30, 0  #0 pc 47108
	sw	%x1, 504(%x2)  #2676 pc 47112
	addi	%x2, %x2, 508  #2676 pc 47116
	jal	%x1, assign_farray.2573  #2676 pc 47120
	addi	%x2, %x2, -508  #2676 pc 47124
	lw	%x1, 504(%x2) #2676 pc 47128
	lw	%x6, 496(%x2)  #2676 pc 47132
	lw	%x7, 500(%x2)  #2676 pc 47136
	sw	%x7, 4(%x6)  #2676 pc 47140
	fmv	%f0, l.21722  #0 pc 47144
	addi	%x7, %x3, 0  #2676 pc 47148
	addi	%x8, %x7, 0  #2676 pc 47152
	addi	%x7, %x7, 12  #2676 pc 47156
	addi	%x3, %x7, 0  #2676 pc 47160
	addi	%x7, %x0, 2  #0 pc 47164
	sw	%x8, 504(%x2)  #2676 pc 47168
	addi	%x6, %x8, 0  #0 pc 47172
	sw	%x1, 508(%x2)  #2676 pc 47176
	addi	%x2, %x2, 512  #2676 pc 47180
	jal	%x1, assign_farray.2573  #2676 pc 47184
	addi	%x2, %x2, -512  #2676 pc 47188
	lw	%x1, 508(%x2) #2676 pc 47192
	lw	%x6, 496(%x2)  #2676 pc 47196
	lw	%x7, 504(%x2)  #2676 pc 47200
	sw	%x7, 8(%x6)  #2676 pc 47204
	fmv	%f0, l.21722  #0 pc 47208
	addi	%x7, %x3, 0  #2676 pc 47212
	addi	%x8, %x7, 0  #2676 pc 47216
	addi	%x7, %x7, 12  #2676 pc 47220
	addi	%x3, %x7, 0  #2676 pc 47224
	addi	%x7, %x0, 2  #0 pc 47228
	sw	%x8, 508(%x2)  #2676 pc 47232
	addi	%x6, %x8, 0  #0 pc 47236
	sw	%x1, 512(%x2)  #2676 pc 47240
	addi	%x2, %x2, 516  #2676 pc 47244
	jal	%x1, assign_farray.2573  #2676 pc 47248
	addi	%x2, %x2, -516  #2676 pc 47252
	lw	%x1, 512(%x2) #2676 pc 47256
	lw	%x6, 496(%x2)  #2676 pc 47260
	lw	%x7, 508(%x2)  #2676 pc 47264
	sw	%x7, 12(%x6)  #2676 pc 47268
	fmv	%f0, l.21722  #0 pc 47272
	addi	%x7, %x3, 0  #2676 pc 47276
	addi	%x8, %x7, 0  #2676 pc 47280
	addi	%x7, %x7, 12  #2676 pc 47284
	addi	%x3, %x7, 0  #2676 pc 47288
	addi	%x7, %x0, 2  #0 pc 47292
	sw	%x8, 512(%x2)  #2676 pc 47296
	addi	%x6, %x8, 0  #0 pc 47300
	sw	%x1, 516(%x2)  #2676 pc 47304
	addi	%x2, %x2, 520  #2676 pc 47308
	jal	%x1, assign_farray.2573  #2676 pc 47312
	addi	%x2, %x2, -520  #2676 pc 47316
	lw	%x1, 516(%x2) #2676 pc 47320
	lw	%x6, 496(%x2)  #2676 pc 47324
	lw	%x7, 512(%x2)  #2676 pc 47328
	sw	%x7, 16(%x6)  #2676 pc 47332
	fmv	%f0, l.21722  #0 pc 47336
	addi	%x7, %x3, 0  #2676 pc 47340
	addi	%x8, %x7, 0  #2676 pc 47344
	addi	%x7, %x7, 12  #2676 pc 47348
	addi	%x3, %x7, 0  #2676 pc 47352
	addi	%x7, %x0, 2  #0 pc 47356
	sw	%x8, 516(%x2)  #2676 pc 47360
	addi	%x6, %x8, 0  #0 pc 47364
	sw	%x1, 520(%x2)  #2676 pc 47368
	addi	%x2, %x2, 524  #2676 pc 47372
	jal	%x1, assign_farray.2573  #2676 pc 47376
	addi	%x2, %x2, -524  #2676 pc 47380
	lw	%x1, 520(%x2) #2676 pc 47384
	addi	%x6, %x3, 0  #2676 pc 47388
	addi	%x7, %x6, 0  #2676 pc 47392
	addi	%x6, %x6, 20  #2676 pc 47396
	addi	%x3, %x6, 0  #2676 pc 47400
	addi	%x8, %x0, 4  #0 pc 47404
	lw	%x6, 516(%x2)  #2676 pc 47408
	sw	%x7, 520(%x2)  #2676 pc 47412
	addi	%x30, %x7, 0  #0 pc 47416
	addi	%x7, %x6, 0  #0 pc 47420
	addi	%x6, %x30, 0  #0 pc 47424
	sw	%x1, 524(%x2)  #2676 pc 47428
	addi	%x2, %x2, 528  #2676 pc 47432
	jal	%x1, assign_array.2566  #2676 pc 47436
	addi	%x2, %x2, -528  #2676 pc 47440
	lw	%x1, 524(%x2) #2676 pc 47444
	fmv	%f0, l.21722  #0 pc 47448
	addi	%x6, %x3, 0  #2676 pc 47452
	addi	%x7, %x6, 0  #2676 pc 47456
	addi	%x6, %x6, 12  #2676 pc 47460
	addi	%x3, %x6, 0  #2676 pc 47464
	addi	%x6, %x0, 2  #0 pc 47468
	sw	%x7, 524(%x2)  #2676 pc 47472
	addi	%x30, %x7, 0  #0 pc 47476
	addi	%x7, %x6, 0  #0 pc 47480
	addi	%x6, %x30, 0  #0 pc 47484
	sw	%x1, 528(%x2)  #2676 pc 47488
	addi	%x2, %x2, 532  #2676 pc 47492
	jal	%x1, assign_farray.2573  #2676 pc 47496
	addi	%x2, %x2, -532  #2676 pc 47500
	lw	%x1, 528(%x2) #2676 pc 47504
	lw	%x6, 520(%x2)  #2676 pc 47508
	lw	%x7, 524(%x2)  #2676 pc 47512
	sw	%x7, 4(%x6)  #2676 pc 47516
	fmv	%f0, l.21722  #0 pc 47520
	addi	%x7, %x3, 0  #2676 pc 47524
	addi	%x8, %x7, 0  #2676 pc 47528
	addi	%x7, %x7, 12  #2676 pc 47532
	addi	%x3, %x7, 0  #2676 pc 47536
	addi	%x7, %x0, 2  #0 pc 47540
	sw	%x8, 528(%x2)  #2676 pc 47544
	addi	%x6, %x8, 0  #0 pc 47548
	sw	%x1, 532(%x2)  #2676 pc 47552
	addi	%x2, %x2, 536  #2676 pc 47556
	jal	%x1, assign_farray.2573  #2676 pc 47560
	addi	%x2, %x2, -536  #2676 pc 47564
	lw	%x1, 532(%x2) #2676 pc 47568
	lw	%x6, 520(%x2)  #2676 pc 47572
	lw	%x7, 528(%x2)  #2676 pc 47576
	sw	%x7, 8(%x6)  #2676 pc 47580
	fmv	%f0, l.21722  #0 pc 47584
	addi	%x7, %x3, 0  #2676 pc 47588
	addi	%x8, %x7, 0  #2676 pc 47592
	addi	%x7, %x7, 12  #2676 pc 47596
	addi	%x3, %x7, 0  #2676 pc 47600
	addi	%x7, %x0, 2  #0 pc 47604
	sw	%x8, 532(%x2)  #2676 pc 47608
	addi	%x6, %x8, 0  #0 pc 47612
	sw	%x1, 536(%x2)  #2676 pc 47616
	addi	%x2, %x2, 540  #2676 pc 47620
	jal	%x1, assign_farray.2573  #2676 pc 47624
	addi	%x2, %x2, -540  #2676 pc 47628
	lw	%x1, 536(%x2) #2676 pc 47632
	lw	%x6, 520(%x2)  #2676 pc 47636
	lw	%x7, 532(%x2)  #2676 pc 47640
	sw	%x7, 12(%x6)  #2676 pc 47644
	fmv	%f0, l.21722  #0 pc 47648
	addi	%x7, %x3, 0  #2676 pc 47652
	addi	%x8, %x7, 0  #2676 pc 47656
	addi	%x7, %x7, 12  #2676 pc 47660
	addi	%x3, %x7, 0  #2676 pc 47664
	addi	%x7, %x0, 2  #0 pc 47668
	sw	%x8, 536(%x2)  #2676 pc 47672
	addi	%x6, %x8, 0  #0 pc 47676
	sw	%x1, 540(%x2)  #2676 pc 47680
	addi	%x2, %x2, 544  #2676 pc 47684
	jal	%x1, assign_farray.2573  #2676 pc 47688
	addi	%x2, %x2, -544  #2676 pc 47692
	lw	%x1, 540(%x2) #2676 pc 47696
	lw	%x6, 520(%x2)  #2676 pc 47700
	lw	%x7, 536(%x2)  #2676 pc 47704
	sw	%x7, 16(%x6)  #2676 pc 47708
	addi	%x7, %x0, 0  #0 pc 47712
	addi	%x8, %x3, 0  #2676 pc 47716
	addi	%x9, %x8, 0  #2676 pc 47720
	addi	%x8, %x8, 4  #2676 pc 47724
	addi	%x3, %x8, 0  #2676 pc 47728
	addi	%x8, %x0, 0  #0 pc 47732
	sw	%x9, 540(%x2)  #2676 pc 47736
	addi	%x6, %x9, 0  #0 pc 47740
	sw	%x1, 544(%x2)  #2676 pc 47744
	addi	%x2, %x2, 548  #2676 pc 47748
	jal	%x1, assign_array.2566  #2676 pc 47752
	addi	%x2, %x2, -548  #2676 pc 47756
	lw	%x1, 544(%x2) #2676 pc 47760
	fmv	%f0, l.21722  #0 pc 47764
	addi	%x6, %x3, 0  #2676 pc 47768
	addi	%x7, %x6, 0  #2676 pc 47772
	addi	%x6, %x6, 12  #2676 pc 47776
	addi	%x3, %x6, 0  #2676 pc 47780
	addi	%x6, %x0, 2  #0 pc 47784
	sw	%x7, 544(%x2)  #2676 pc 47788
	addi	%x30, %x7, 0  #0 pc 47792
	addi	%x7, %x6, 0  #0 pc 47796
	addi	%x6, %x30, 0  #0 pc 47800
	sw	%x1, 548(%x2)  #2676 pc 47804
	addi	%x2, %x2, 552  #2676 pc 47808
	jal	%x1, assign_farray.2573  #2676 pc 47812
	addi	%x2, %x2, -552  #2676 pc 47816
	lw	%x1, 548(%x2) #2676 pc 47820
	addi	%x6, %x3, 0  #2676 pc 47824
	addi	%x7, %x6, 0  #2676 pc 47828
	addi	%x6, %x6, 20  #2676 pc 47832
	addi	%x3, %x6, 0  #2676 pc 47836
	addi	%x8, %x0, 4  #0 pc 47840
	lw	%x6, 544(%x2)  #2676 pc 47844
	sw	%x7, 548(%x2)  #2676 pc 47848
	addi	%x30, %x7, 0  #0 pc 47852
	addi	%x7, %x6, 0  #0 pc 47856
	addi	%x6, %x30, 0  #0 pc 47860
	sw	%x1, 552(%x2)  #2676 pc 47864
	addi	%x2, %x2, 556  #2676 pc 47868
	jal	%x1, assign_array.2566  #2676 pc 47872
	addi	%x2, %x2, -556  #2676 pc 47876
	lw	%x1, 552(%x2) #2676 pc 47880
	fmv	%f0, l.21722  #0 pc 47884
	addi	%x6, %x3, 0  #2676 pc 47888
	addi	%x7, %x6, 0  #2676 pc 47892
	addi	%x6, %x6, 12  #2676 pc 47896
	addi	%x3, %x6, 0  #2676 pc 47900
	addi	%x6, %x0, 2  #0 pc 47904
	sw	%x7, 552(%x2)  #2676 pc 47908
	addi	%x30, %x7, 0  #0 pc 47912
	addi	%x7, %x6, 0  #0 pc 47916
	addi	%x6, %x30, 0  #0 pc 47920
	sw	%x1, 556(%x2)  #2676 pc 47924
	addi	%x2, %x2, 560  #2676 pc 47928
	jal	%x1, assign_farray.2573  #2676 pc 47932
	addi	%x2, %x2, -560  #2676 pc 47936
	lw	%x1, 556(%x2) #2676 pc 47940
	lw	%x6, 548(%x2)  #2676 pc 47944
	lw	%x7, 552(%x2)  #2676 pc 47948
	sw	%x7, 4(%x6)  #2676 pc 47952
	fmv	%f0, l.21722  #0 pc 47956
	addi	%x7, %x3, 0  #2676 pc 47960
	addi	%x8, %x7, 0  #2676 pc 47964
	addi	%x7, %x7, 12  #2676 pc 47968
	addi	%x3, %x7, 0  #2676 pc 47972
	addi	%x7, %x0, 2  #0 pc 47976
	sw	%x8, 556(%x2)  #2676 pc 47980
	addi	%x6, %x8, 0  #0 pc 47984
	sw	%x1, 560(%x2)  #2676 pc 47988
	addi	%x2, %x2, 564  #2676 pc 47992
	jal	%x1, assign_farray.2573  #2676 pc 47996
	addi	%x2, %x2, -564  #2676 pc 48000
	lw	%x1, 560(%x2) #2676 pc 48004
	lw	%x6, 548(%x2)  #2676 pc 48008
	lw	%x7, 556(%x2)  #2676 pc 48012
	sw	%x7, 8(%x6)  #2676 pc 48016
	fmv	%f0, l.21722  #0 pc 48020
	addi	%x7, %x3, 0  #2676 pc 48024
	addi	%x8, %x7, 0  #2676 pc 48028
	addi	%x7, %x7, 12  #2676 pc 48032
	addi	%x3, %x7, 0  #2676 pc 48036
	addi	%x7, %x0, 2  #0 pc 48040
	sw	%x8, 560(%x2)  #2676 pc 48044
	addi	%x6, %x8, 0  #0 pc 48048
	sw	%x1, 564(%x2)  #2676 pc 48052
	addi	%x2, %x2, 568  #2676 pc 48056
	jal	%x1, assign_farray.2573  #2676 pc 48060
	addi	%x2, %x2, -568  #2676 pc 48064
	lw	%x1, 564(%x2) #2676 pc 48068
	lw	%x6, 548(%x2)  #2676 pc 48072
	lw	%x7, 560(%x2)  #2676 pc 48076
	sw	%x7, 12(%x6)  #2676 pc 48080
	fmv	%f0, l.21722  #0 pc 48084
	addi	%x7, %x3, 0  #2676 pc 48088
	addi	%x8, %x7, 0  #2676 pc 48092
	addi	%x7, %x7, 12  #2676 pc 48096
	addi	%x3, %x7, 0  #2676 pc 48100
	addi	%x7, %x0, 2  #0 pc 48104
	sw	%x8, 564(%x2)  #2676 pc 48108
	addi	%x6, %x8, 0  #0 pc 48112
	sw	%x1, 568(%x2)  #2676 pc 48116
	addi	%x2, %x2, 572  #2676 pc 48120
	jal	%x1, assign_farray.2573  #2676 pc 48124
	addi	%x2, %x2, -572  #2676 pc 48128
	lw	%x1, 568(%x2) #2676 pc 48132
	lw	%x6, 548(%x2)  #2676 pc 48136
	lw	%x7, 564(%x2)  #2676 pc 48140
	sw	%x7, 16(%x6)  #2676 pc 48144
	addi	%x7, %x3, 0  #2676 pc 48148
	addi	%x3, %x3, 32  #2676 pc 48152
	sw	%x6, 28(%x7)  #2676 pc 48156
	lw	%x6, 540(%x2)  #2676 pc 48160
	sw	%x6, 24(%x7)  #2676 pc 48164
	lw	%x6, 520(%x2)  #2676 pc 48168
	sw	%x6, 20(%x7)  #2676 pc 48172
	lw	%x6, 496(%x2)  #2676 pc 48176
	sw	%x6, 16(%x7)  #2676 pc 48180
	lw	%x6, 488(%x2)  #2676 pc 48184
	sw	%x6, 12(%x7)  #2676 pc 48188
	lw	%x6, 484(%x2)  #2676 pc 48192
	sw	%x6, 8(%x7)  #2676 pc 48196
	lw	%x6, 464(%x2)  #2676 pc 48200
	sw	%x6, 4(%x7)  #2676 pc 48204
	lw	%x6, 456(%x2)  #2676 pc 48208
	sw	%x6, 0(%x7)  #2676 pc 48212
	addi	%x6, %x3, 0  #2676 pc 48216
	addi	%x8, %x6, 0  #2676 pc 48220
	lw	%x9, 452(%x2)  #2676 pc 48224
	slli	%x10, %x9, 2  #2676 pc 48228
	add	%x6, %x6, %x10  #2676 pc 48232
	addi	%x3, %x6, 0  #2676 pc 48236
	addi	%x6, %x9, -1  #2676 pc 48240
	sw	%x8, 568(%x2)  #2676 pc 48244
	addi	%x30, %x8, 0  #0 pc 48248
	addi	%x8, %x6, 0  #0 pc 48252
	addi	%x6, %x30, 0  #0 pc 48256
	sw	%x1, 572(%x2)  #2676 pc 48260
	addi	%x2, %x2, 576  #2676 pc 48264
	jal	%x1, assign_array.2566  #2676 pc 48268
	addi	%x2, %x2, -576  #2676 pc 48272
	lw	%x1, 572(%x2) #2676 pc 48276
	lw	%x6, 80(%x2)  #2676 pc 48280
	lw	%x7, 0(%x6)  #2676 pc 48284
	addi	%x7, %x7, -2  #2676 pc 48288
	lw	%x8, 568(%x2)  #2676 pc 48292
	addi	%x6, %x8, 0  #0 pc 48296
	sw	%x1, 572(%x2)  #2676 pc 48300
	addi	%x2, %x2, 576  #2676 pc 48304
	jal	%x1, init_line_elements.3034  #2676 pc 48308
	addi	%x2, %x2, -576  #2676 pc 48312
	lw	%x1, 572(%x2) #2676 pc 48316
	flw	%f0, 0(%x4)  #2676 pc 48320
	addi	%x4, %x4, 4  #2676 pc 48324
	lw	%x7, 12(%x2)  #2676 pc 48328
	fsw	%f0, 0(%x7)  #2676 pc 48332
	flw	%f0, 0(%x4)  #2676 pc 48336
	addi	%x4, %x4, 4  #2676 pc 48340
	fsw	%f0, 4(%x7)  #2676 pc 48344
	flw	%f0, 0(%x4)  #2676 pc 48348
	addi	%x4, %x4, 4  #2676 pc 48352
	fsw	%f0, 8(%x7)  #2676 pc 48356
	flw	%f0, 0(%x4)  #2676 pc 48360
	addi	%x4, %x4, 4  #2676 pc 48364
	fmv	%f1, l.21765  #0 pc 48368
	fmul	%f0, %f0, %f1  #2676 pc 48372
	sw	%x6, 572(%x2)  #2676 pc 48376
	fsw	%f0, 576(%x2)  #2676 pc 48380
	sw	%x1, 584(%x2)  #2676 pc 48384
	addi	%x2, %x2, 588  #2676 pc 48388
	jal	%x1, cos.2530  #2676 pc 48392
	addi	%x2, %x2, -588  #2676 pc 48396
	lw	%x1, 584(%x2) #2676 pc 48400
	flw	%f1, 576(%x2)  #2676 pc 48404
	fsw	%f0, 584(%x2)  #2676 pc 48408
	fadd	%f0, %f1, %f30  #0 pc 48412
	sw	%x1, 592(%x2)  #2676 pc 48416
	addi	%x2, %x2, 596  #2676 pc 48420
	jal	%x1, sin.2526  #2676 pc 48424
	addi	%x2, %x2, -596  #2676 pc 48428
	lw	%x1, 592(%x2) #2676 pc 48432
	flw	%f1, 0(%x4)  #2676 pc 48436
	addi	%x4, %x4, 4  #2676 pc 48440
	fmv	%f2, l.21765  #0 pc 48444
	fmul	%f1, %f1, %f2  #2676 pc 48448
	fsw	%f0, 592(%x2)  #2676 pc 48452
	fsw	%f1, 600(%x2)  #2676 pc 48456
	fadd	%f0, %f1, %f30  #0 pc 48460
	sw	%x1, 608(%x2)  #2676 pc 48464
	addi	%x2, %x2, 612  #2676 pc 48468
	jal	%x1, cos.2530  #2676 pc 48472
	addi	%x2, %x2, -612  #2676 pc 48476
	lw	%x1, 608(%x2) #2676 pc 48480
	flw	%f1, 600(%x2)  #2676 pc 48484
	fsw	%f0, 608(%x2)  #2676 pc 48488
	fadd	%f0, %f1, %f30  #0 pc 48492
	sw	%x1, 616(%x2)  #2676 pc 48496
	addi	%x2, %x2, 620  #2676 pc 48500
	jal	%x1, sin.2526  #2676 pc 48504
	addi	%x2, %x2, -620  #2676 pc 48508
	lw	%x1, 616(%x2) #2676 pc 48512
	flw	%f1, 584(%x2)  #2676 pc 48516
	fmul	%f2, %f1, %f0  #2676 pc 48520
	fmv	%f3, l.23654  #0 pc 48524
	fmul	%f2, %f2, %f3  #2676 pc 48528
	lw	%x6, 108(%x2)  #2676 pc 48532
	fsw	%f2, 0(%x6)  #2676 pc 48536
	fmv	%f2, l.23657  #0 pc 48540
	flw	%f3, 592(%x2)  #2676 pc 48544
	fmul	%f2, %f3, %f2  #2676 pc 48548
	fsw	%f2, 4(%x6)  #2676 pc 48552
	flw	%f2, 608(%x2)  #2676 pc 48556
	fmul	%f4, %f1, %f2  #2676 pc 48560
	fmv	%f5, l.23654  #0 pc 48564
	fmul	%f4, %f4, %f5  #2676 pc 48568
	fsw	%f4, 8(%x6)  #2676 pc 48572
	lw	%x7, 100(%x2)  #2676 pc 48576
	fsw	%f2, 0(%x7)  #2676 pc 48580
	fmv	%f4, l.21722  #0 pc 48584
	fsw	%f4, 4(%x7)  #2676 pc 48588
	fsub	%f4, %f30, %f0  #2676 pc 48592
	fsw	%f4, 8(%x7)  #2676 pc 48596
	fsub	%f4, %f30, %f3  #2676 pc 48600
	fmul	%f0, %f4, %f0  #2676 pc 48604
	lw	%x7, 104(%x2)  #2676 pc 48608
	fsw	%f0, 0(%x7)  #2676 pc 48612
	fsub	%f0, %f30, %f1  #2676 pc 48616
	fsw	%f0, 4(%x7)  #2676 pc 48620
	fsub	%f0, %f30, %f3  #2676 pc 48624
	fmul	%f0, %f0, %f2  #2676 pc 48628
	fsw	%f0, 8(%x7)  #2676 pc 48632
	lw	%x8, 12(%x2)  #2676 pc 48636
	flw	%f0, 0(%x8)  #2676 pc 48640
	flw	%f1, 0(%x6)  #2676 pc 48644
	fsub	%f0, %f0, %f1  #2676 pc 48648
	lw	%x9, 16(%x2)  #2676 pc 48652
	fsw	%f0, 0(%x9)  #2676 pc 48656
	flw	%f0, 4(%x8)  #2676 pc 48660
	flw	%f1, 4(%x6)  #2676 pc 48664
	fsub	%f0, %f0, %f1  #2676 pc 48668
	fsw	%f0, 4(%x9)  #2676 pc 48672
	flw	%f0, 8(%x8)  #2676 pc 48676
	flw	%f1, 8(%x6)  #2676 pc 48680
	fsub	%f0, %f0, %f1  #2676 pc 48684
	fsw	%f0, 8(%x9)  #2676 pc 48688
	lw	%x8, 0(%x4)  #2676 pc 48692
	addi	%x4, %x4, 4  #2676 pc 48696
	flw	%f0, 0(%x4)  #2676 pc 48700
	addi	%x4, %x4, 4  #2676 pc 48704
	fmv	%f1, l.21765  #0 pc 48708
	fmul	%f0, %f0, %f1  #2676 pc 48712
	fsw	%f0, 616(%x2)  #2676 pc 48716
	sw	%x1, 624(%x2)  #2676 pc 48720
	addi	%x2, %x2, 628  #2676 pc 48724
	jal	%x1, sin.2526  #2676 pc 48728
	addi	%x2, %x2, -628  #2676 pc 48732
	lw	%x1, 624(%x2) #2676 pc 48736
	fsub	%f0, %f30, %f0  #2676 pc 48740
	lw	%x6, 20(%x2)  #2676 pc 48744
	fsw	%f0, 4(%x6)  #2676 pc 48748
	flw	%f0, 0(%x4)  #2676 pc 48752
	addi	%x4, %x4, 4  #2676 pc 48756
	fmv	%f1, l.21765  #0 pc 48760
	fmul	%f0, %f0, %f1  #2676 pc 48764
	flw	%f1, 616(%x2)  #2676 pc 48768
	fsw	%f0, 624(%x2)  #2676 pc 48772
	fadd	%f0, %f1, %f30  #0 pc 48776
	sw	%x1, 632(%x2)  #2676 pc 48780
	addi	%x2, %x2, 636  #2676 pc 48784
	jal	%x1, cos.2530  #2676 pc 48788
	addi	%x2, %x2, -636  #2676 pc 48792
	lw	%x1, 632(%x2) #2676 pc 48796
	flw	%f1, 624(%x2)  #2676 pc 48800
	fsw	%f0, 632(%x2)  #2676 pc 48804
	fadd	%f0, %f1, %f30  #0 pc 48808
	sw	%x1, 640(%x2)  #2676 pc 48812
	addi	%x2, %x2, 644  #2676 pc 48816
	jal	%x1, sin.2526  #2676 pc 48820
	addi	%x2, %x2, -644  #2676 pc 48824
	lw	%x1, 640(%x2) #2676 pc 48828
	flw	%f1, 632(%x2)  #2676 pc 48832
	fmul	%f0, %f1, %f0  #2676 pc 48836
	lw	%x6, 20(%x2)  #2676 pc 48840
	fsw	%f0, 0(%x6)  #2676 pc 48844
	flw	%f0, 624(%x2)  #2676 pc 48848
	sw	%x1, 640(%x2)  #2676 pc 48852
	addi	%x2, %x2, 644  #2676 pc 48856
	jal	%x1, cos.2530  #2676 pc 48860
	addi	%x2, %x2, -644  #2676 pc 48864
	lw	%x1, 640(%x2) #2676 pc 48868
	flw	%f1, 632(%x2)  #2676 pc 48872
	fmul	%f0, %f1, %f0  #2676 pc 48876
	lw	%x6, 20(%x2)  #2676 pc 48880
	fsw	%f0, 8(%x6)  #2676 pc 48884
	flw	%f0, 0(%x4)  #2676 pc 48888
	addi	%x4, %x4, 4  #2676 pc 48892
	lw	%x7, 24(%x2)  #2676 pc 48896
	fsw	%f0, 0(%x7)  #2676 pc 48900
	addi	%x7, %x0, 0  #0 pc 48904
	lw	%x29, 196(%x2)  #2676 pc 48908
	addi	%x6, %x7, 0  #0 pc 48912
	sw	%x1, 640(%x2)  #2676 pc 48916
	lw	%x30, 0(%x29)  #2676 pc 48920
	addi	%x2, %x2, 644  #2676 pc 48924
	jalr	%x1, %x30, 0  #2676 pc 48928
	addi	%x2, %x2, -644  #2676 pc 48932
	lw	%x1, 640(%x2)  #2676 pc 48936
	addi	%x6, %x0, 0  #0 pc 48940
	lw	%x29, 192(%x2)  #2676 pc 48944
	sw	%x1, 640(%x2)  #2676 pc 48948
	lw	%x30, 0(%x29)  #2676 pc 48952
	addi	%x2, %x2, 644  #2676 pc 48956
	jalr	%x1, %x30, 0  #2676 pc 48960
	addi	%x2, %x2, -644  #2676 pc 48964
	lw	%x1, 640(%x2)  #2676 pc 48968
	addi	%x6, %x0, 0  #0 pc 48972
	sw	%x1, 640(%x2)  #2676 pc 48976
	addi	%x2, %x2, 644  #2676 pc 48980
	jal	%x1, read_or_network.2747  #2676 pc 48984
	addi	%x2, %x2, -644  #2676 pc 48988
	lw	%x1, 640(%x2) #2676 pc 48992
	lw	%x7, 40(%x2)  #2676 pc 48996
	sw	%x6, 0(%x7)  #2676 pc 49000
	addi	%x6, %x0, 80  #0 pc 49004
	sw	%x6, 0(%x5)  #2676 pc 49008
	addi	%x5, %x5, 4  #2676 pc 49012
	addi	%x6, %x0, 51  #0 pc 49016
	sw	%x6, 0(%x5)  #2676 pc 49020
	addi	%x5, %x5, 4  #2676 pc 49024
	addi	%x6, %x0, 10  #0 pc 49028
	sw	%x6, 0(%x5)  #2676 pc 49032
	addi	%x5, %x5, 4  #2676 pc 49036
	lw	%x6, 80(%x2)  #2676 pc 49040
	lw	%x7, 0(%x6)  #2676 pc 49044
	addi	%x6, %x7, 0  #0 pc 49048
	sw	%x1, 640(%x2)  #2676 pc 49052
	addi	%x2, %x2, 644  #2676 pc 49056
	jal	%x1, print_int.2560  #2676 pc 49060
	addi	%x2, %x2, -644  #2676 pc 49064
	lw	%x1, 640(%x2) #2676 pc 49068
	addi	%x6, %x0, 32  #0 pc 49072
	sw	%x6, 0(%x5)  #2676 pc 49076
	addi	%x5, %x5, 4  #2676 pc 49080
	lw	%x6, 80(%x2)  #2676 pc 49084
	lw	%x7, 4(%x6)  #2676 pc 49088
	addi	%x6, %x7, 0  #0 pc 49092
	sw	%x1, 640(%x2)  #2676 pc 49096
	addi	%x2, %x2, 644  #2676 pc 49100
	jal	%x1, print_int.2560  #2676 pc 49104
	addi	%x2, %x2, -644  #2676 pc 49108
	lw	%x1, 640(%x2) #2676 pc 49112
	addi	%x6, %x0, 32  #0 pc 49116
	sw	%x6, 0(%x5)  #2676 pc 49120
	addi	%x5, %x5, 4  #2676 pc 49124
	addi	%x6, %x0, 255  #0 pc 49128
	sw	%x1, 640(%x2)  #2676 pc 49132
	addi	%x2, %x2, 644  #2676 pc 49136
	jal	%x1, print_int.2560  #2676 pc 49140
	addi	%x2, %x2, -644  #2676 pc 49144
	lw	%x1, 640(%x2) #2676 pc 49148
	addi	%x6, %x0, 10  #0 pc 49152
	sw	%x6, 0(%x5)  #2676 pc 49156
	addi	%x5, %x5, 4  #2676 pc 49160
	addi	%x6, %x0, 4  #0 pc 49164
	lw	%x29, 188(%x2)  #2676 pc 49168
	sw	%x1, 640(%x2)  #2676 pc 49172
	lw	%x30, 0(%x29)  #2676 pc 49176
	addi	%x2, %x2, 644  #2676 pc 49180
	jalr	%x1, %x30, 0  #2676 pc 49184
	addi	%x2, %x2, -644  #2676 pc 49188
	lw	%x1, 640(%x2)  #2676 pc 49192
	addi	%x6, %x0, 9  #0 pc 49196
	addi	%x7, %x0, 0  #0 pc 49200
	addi	%x8, %x0, 0  #0 pc 49204
	lw	%x29, 184(%x2)  #2676 pc 49208
	sw	%x1, 640(%x2)  #2676 pc 49212
	lw	%x30, 0(%x29)  #2676 pc 49216
	addi	%x2, %x2, 644  #2676 pc 49220
	jalr	%x1, %x30, 0  #2676 pc 49224
	addi	%x2, %x2, -644  #2676 pc 49228
	lw	%x1, 640(%x2)  #2676 pc 49232
	addi	%x6, %x0, 4  #0 pc 49236
	lw	%x29, 180(%x2)  #2676 pc 49240
	sw	%x1, 640(%x2)  #2676 pc 49244
	lw	%x30, 0(%x29)  #2676 pc 49248
	addi	%x2, %x2, 644  #2676 pc 49252
	jalr	%x1, %x30, 0  #2676 pc 49256
	addi	%x2, %x2, -644  #2676 pc 49260
	lw	%x1, 640(%x2)  #2676 pc 49264
	lw	%x6, 20(%x2)  #2676 pc 49268
	flw	%f0, 0(%x6)  #2676 pc 49272
	lw	%x7, 136(%x2)  #2676 pc 49276
	fsw	%f0, 0(%x7)  #2676 pc 49280
	flw	%f0, 4(%x6)  #2676 pc 49284
	fsw	%f0, 4(%x7)  #2676 pc 49288
	flw	%f0, 8(%x6)  #2676 pc 49292
	fsw	%f0, 8(%x7)  #2676 pc 49296
	lw	%x7, 0(%x2)  #2676 pc 49300
	lw	%x8, 0(%x7)  #2676 pc 49304
	addi	%x8, %x8, -1  #2676 pc 49308
	lw	%x9, 144(%x2)  #2676 pc 49312
	lw	%x29, 176(%x2)  #2676 pc 49316
	addi	%x7, %x8, 0  #0 pc 49320
	addi	%x6, %x9, 0  #0 pc 49324
	sw	%x1, 640(%x2)  #2676 pc 49328
	lw	%x30, 0(%x29)  #2676 pc 49332
	addi	%x2, %x2, 644  #2676 pc 49336
	jalr	%x1, %x30, 0  #2676 pc 49340
	addi	%x2, %x2, -644  #2676 pc 49344
	lw	%x1, 640(%x2)  #2676 pc 49348
	lw	%x6, 0(%x2)  #2676 pc 49352
	lw	%x7, 0(%x6)  #2676 pc 49356
	addi	%x7, %x7, -1  #2676 pc 49360
	bge	%x7, %x0, 12  #2676 pc 49364
	j	bge_else.26054 #pc 49368
	nop #pc 49372
	slli	%x8, %x7, 2  #2676 pc 49376
	lw	%x9, 8(%x2)  #2676 pc 49380
	add	%x31, %x8, %x9  #2676 pc 49384
	lw	%x8, 0(%x31)  #2676 pc 49388
	lw	%x9, 8(%x8)  #2676 pc 49392
	addi	%x31, %x0, 2  #pc 49396
	beq	%x9, %x31, 12  #2676 pc 49400
	j	be_else.26056 #pc 49404
	nop #pc 49408
	lw	%x9, 28(%x8)  #2676 pc 49412
	flw	%f0, 0(%x9)  #2676 pc 49416
	fmv	%f1, l.21731  #0 pc 49420
	fle	%x31, %f1, %f0  #2676 pc 49424
	blt	%x0, %x31, 12  #2676 pc 49428
	j	fble_else.26058 #pc 49432
	nop #pc 49436
	addi	%x9, %x0, 0  #0 pc 49440
	j	fble_cont.26059 #pc 49444
	nop #pc 49448
fble_else.26058: #pc 49452
	addi	%x9, %x0, 1  #0 pc 49452
fble_cont.26059: #pc 49456
	beq	%x9, %x0, 12  #2676 pc 49456
	j	be_else.26060 #pc 49460
	nop #pc 49464
	j	be_cont.26061 #pc 49468
	nop #pc 49472
be_else.26060: #pc 49476
	lw	%x9, 4(%x8)  #2676 pc 49476
	addi	%x31, %x0, 1  #pc 49480
	beq	%x9, %x31, 12  #2676 pc 49484
	j	be_else.26062 #pc 49488
	nop #pc 49492
	bge	%x7, %x0, 12  #2676 pc 49496
	j	bge_else.26064 #pc 49500
	nop #pc 49504
	addi	%x9, %x7, 0  #2676 pc 49508
	j	bge_cont.26065 #pc 49512
	nop #pc 49516
bge_else.26064: #pc 49520
	sub	%x9, %x0, %x7  #2676 pc 49520
bge_cont.26065: #pc 49524
	addi	%x10, %x0, 4  #0 pc 49524
	addi	%x11, %x0, 30  #0 pc 49528
	addi	%x12, %x0, 0  #0 pc 49532
	sw	%x8, 640(%x2)  #2676 pc 49536
	sw	%x7, 644(%x2)  #2676 pc 49540
	addi	%x8, %x11, 0  #0 pc 49544
	addi	%x7, %x10, 0  #0 pc 49548
	addi	%x6, %x9, 0  #0 pc 49552
	addi	%x9, %x12, 0  #0 pc 49556
	sw	%x1, 648(%x2)  #2676 pc 49560
	addi	%x2, %x2, 652  #2676 pc 49564
	jal	%x1, mul_abs.2542  #2676 pc 49568
	addi	%x2, %x2, -652  #2676 pc 49572
	lw	%x1, 648(%x2) #2676 pc 49576
	lw	%x7, 644(%x2)  #2676 pc 49580
	srli	%x7, %x7, 31  #2676 pc 49584
	beq	%x7, %x0, 12  #2676 pc 49588
	j	be_else.26066 #pc 49592
	nop #pc 49596
	j	be_cont.26067 #pc 49600
	nop #pc 49604
be_else.26066: #pc 49608
	sub	%x6, %x0, %x6  #2676 pc 49608
be_cont.26067: #pc 49612
	lw	%x7, 160(%x2)  #2676 pc 49612
	lw	%x8, 0(%x7)  #2676 pc 49616
	fmv	%f0, l.21731  #0 pc 49620
	lw	%x9, 640(%x2)  #2676 pc 49624
	lw	%x9, 28(%x9)  #2676 pc 49628
	flw	%f1, 0(%x9)  #2676 pc 49632
	fsub	%f0, %f0, %f1  #2676 pc 49636
	lw	%x9, 20(%x2)  #2676 pc 49640
	flw	%f1, 0(%x9)  #2676 pc 49644
	fsub	%f1, %f30, %f1  #2676 pc 49648
	flw	%f2, 4(%x9)  #2676 pc 49652
	fsub	%f2, %f30, %f2  #2676 pc 49656
	flw	%f3, 8(%x9)  #2676 pc 49660
	fsub	%f3, %f30, %f3  #2676 pc 49664
	addi	%x10, %x6, 1  #2676 pc 49668
	flw	%f4, 0(%x9)  #2676 pc 49672
	fmv	%f5, l.21722  #0 pc 49676
	addi	%x11, %x3, 0  #2676 pc 49680
	addi	%x12, %x11, 0  #2676 pc 49684
	addi	%x11, %x11, 12  #2676 pc 49688
	addi	%x3, %x11, 0  #2676 pc 49692
	addi	%x11, %x0, 2  #0 pc 49696
	fsw	%f1, 648(%x2)  #2676 pc 49700
	sw	%x6, 656(%x2)  #2676 pc 49704
	sw	%x8, 660(%x2)  #2676 pc 49708
	sw	%x10, 664(%x2)  #2676 pc 49712
	fsw	%f0, 672(%x2)  #2676 pc 49716
	fsw	%f3, 680(%x2)  #2676 pc 49720
	fsw	%f2, 688(%x2)  #2676 pc 49724
	fsw	%f4, 696(%x2)  #2676 pc 49728
	sw	%x12, 704(%x2)  #2676 pc 49732
	addi	%x7, %x11, 0  #0 pc 49736
	addi	%x6, %x12, 0  #0 pc 49740
	fadd	%f0, %f5, %f30  #0 pc 49744
	sw	%x1, 708(%x2)  #2676 pc 49748
	addi	%x2, %x2, 712  #2676 pc 49752
	jal	%x1, assign_farray.2573  #2676 pc 49756
	addi	%x2, %x2, -712  #2676 pc 49760
	lw	%x1, 708(%x2) #2676 pc 49764
	lw	%x6, 0(%x2)  #2676 pc 49768
	lw	%x7, 0(%x6)  #2676 pc 49772
	addi	%x8, %x3, 0  #2676 pc 49776
	addi	%x9, %x8, 0  #2676 pc 49780
	slli	%x10, %x7, 2  #2676 pc 49784
	add	%x8, %x8, %x10  #2676 pc 49788
	addi	%x3, %x8, 0  #2676 pc 49792
	addi	%x8, %x7, -1  #2676 pc 49796
	lw	%x7, 704(%x2)  #2676 pc 49800
	sw	%x9, 708(%x2)  #2676 pc 49804
	addi	%x6, %x9, 0  #0 pc 49808
	sw	%x1, 712(%x2)  #2676 pc 49812
	addi	%x2, %x2, 716  #2676 pc 49816
	jal	%x1, assign_array.2566  #2676 pc 49820
	addi	%x2, %x2, -716  #2676 pc 49824
	lw	%x1, 712(%x2) #2676 pc 49828
	addi	%x6, %x3, 0  #2676 pc 49832
	addi	%x3, %x3, 8  #2676 pc 49836
	lw	%x7, 708(%x2)  #2676 pc 49840
	sw	%x7, 4(%x6)  #2676 pc 49844
	lw	%x7, 704(%x2)  #2676 pc 49848
	sw	%x7, 0(%x6)  #2676 pc 49852
	flw	%f0, 696(%x2)  #2676 pc 49856
	fsw	%f0, 0(%x7)  #2676 pc 49860
	flw	%f0, 688(%x2)  #2676 pc 49864
	fsw	%f0, 4(%x7)  #2676 pc 49868
	flw	%f1, 680(%x2)  #2676 pc 49872
	fsw	%f1, 8(%x7)  #2676 pc 49876
	lw	%x7, 0(%x2)  #2676 pc 49880
	lw	%x8, 0(%x7)  #2676 pc 49884
	addi	%x8, %x8, -1  #2676 pc 49888
	lw	%x29, 176(%x2)  #2676 pc 49892
	sw	%x6, 712(%x2)  #2676 pc 49896
	addi	%x7, %x8, 0  #0 pc 49900
	sw	%x1, 716(%x2)  #2676 pc 49904
	lw	%x30, 0(%x29)  #2676 pc 49908
	addi	%x2, %x2, 720  #2676 pc 49912
	jalr	%x1, %x30, 0  #2676 pc 49916
	addi	%x2, %x2, -720  #2676 pc 49920
	lw	%x1, 716(%x2)  #2676 pc 49924
	addi	%x6, %x3, 0  #2676 pc 49928
	addi	%x3, %x3, 12  #2676 pc 49932
	flw	%f0, 672(%x2)  #2676 pc 49936
	fsw	%f0, 8(%x6)  #2676 pc 49940
	lw	%x7, 712(%x2)  #2676 pc 49944
	sw	%x7, 4(%x6)  #2676 pc 49948
	lw	%x7, 664(%x2)  #2676 pc 49952
	sw	%x7, 0(%x6)  #2676 pc 49956
	lw	%x7, 660(%x2)  #2676 pc 49960
	slli	%x8, %x7, 2  #2676 pc 49964
	lw	%x9, 156(%x2)  #2676 pc 49968
	add	%x31, %x8, %x9  #2676 pc 49972
	sw	%x6, 0(%x31)  #2676 pc 49976
	addi	%x6, %x7, 1  #2676 pc 49980
	lw	%x8, 656(%x2)  #2676 pc 49984
	addi	%x10, %x8, 2  #2676 pc 49988
	lw	%x11, 20(%x2)  #2676 pc 49992
	flw	%f1, 4(%x11)  #2676 pc 49996
	fmv	%f2, l.21722  #0 pc 50000
	addi	%x12, %x3, 0  #2676 pc 50004
	addi	%x13, %x12, 0  #2676 pc 50008
	addi	%x12, %x12, 12  #2676 pc 50012
	addi	%x3, %x12, 0  #2676 pc 50016
	addi	%x12, %x0, 2  #0 pc 50020
	sw	%x6, 716(%x2)  #2676 pc 50024
	sw	%x10, 720(%x2)  #2676 pc 50028
	fsw	%f1, 728(%x2)  #2676 pc 50032
	sw	%x13, 736(%x2)  #2676 pc 50036
	addi	%x7, %x12, 0  #0 pc 50040
	addi	%x6, %x13, 0  #0 pc 50044
	fadd	%f0, %f2, %f30  #0 pc 50048
	sw	%x1, 740(%x2)  #2676 pc 50052
	addi	%x2, %x2, 744  #2676 pc 50056
	jal	%x1, assign_farray.2573  #2676 pc 50060
	addi	%x2, %x2, -744  #2676 pc 50064
	lw	%x1, 740(%x2) #2676 pc 50068
	lw	%x6, 0(%x2)  #2676 pc 50072
	lw	%x7, 0(%x6)  #2676 pc 50076
	addi	%x8, %x3, 0  #2676 pc 50080
	addi	%x9, %x8, 0  #2676 pc 50084
	slli	%x10, %x7, 2  #2676 pc 50088
	add	%x8, %x8, %x10  #2676 pc 50092
	addi	%x3, %x8, 0  #2676 pc 50096
	addi	%x8, %x7, -1  #2676 pc 50100
	lw	%x7, 736(%x2)  #2676 pc 50104
	sw	%x9, 740(%x2)  #2676 pc 50108
	addi	%x6, %x9, 0  #0 pc 50112
	sw	%x1, 744(%x2)  #2676 pc 50116
	addi	%x2, %x2, 748  #2676 pc 50120
	jal	%x1, assign_array.2566  #2676 pc 50124
	addi	%x2, %x2, -748  #2676 pc 50128
	lw	%x1, 744(%x2) #2676 pc 50132
	addi	%x6, %x3, 0  #2676 pc 50136
	addi	%x3, %x3, 8  #2676 pc 50140
	lw	%x7, 740(%x2)  #2676 pc 50144
	sw	%x7, 4(%x6)  #2676 pc 50148
	lw	%x7, 736(%x2)  #2676 pc 50152
	sw	%x7, 0(%x6)  #2676 pc 50156
	flw	%f0, 648(%x2)  #2676 pc 50160
	fsw	%f0, 0(%x7)  #2676 pc 50164
	flw	%f1, 728(%x2)  #2676 pc 50168
	fsw	%f1, 4(%x7)  #2676 pc 50172
	flw	%f1, 680(%x2)  #2676 pc 50176
	fsw	%f1, 8(%x7)  #2676 pc 50180
	lw	%x7, 0(%x2)  #2676 pc 50184
	lw	%x8, 0(%x7)  #2676 pc 50188
	addi	%x8, %x8, -1  #2676 pc 50192
	lw	%x29, 176(%x2)  #2676 pc 50196
	sw	%x6, 744(%x2)  #2676 pc 50200
	addi	%x7, %x8, 0  #0 pc 50204
	sw	%x1, 748(%x2)  #2676 pc 50208
	lw	%x30, 0(%x29)  #2676 pc 50212
	addi	%x2, %x2, 752  #2676 pc 50216
	jalr	%x1, %x30, 0  #2676 pc 50220
	addi	%x2, %x2, -752  #2676 pc 50224
	lw	%x1, 748(%x2)  #2676 pc 50228
	addi	%x6, %x3, 0  #2676 pc 50232
	addi	%x3, %x3, 12  #2676 pc 50236
	flw	%f0, 672(%x2)  #2676 pc 50240
	fsw	%f0, 8(%x6)  #2676 pc 50244
	lw	%x7, 744(%x2)  #2676 pc 50248
	sw	%x7, 4(%x6)  #2676 pc 50252
	lw	%x7, 720(%x2)  #2676 pc 50256
	sw	%x7, 0(%x6)  #2676 pc 50260
	lw	%x7, 716(%x2)  #2676 pc 50264
	slli	%x7, %x7, 2  #2676 pc 50268
	lw	%x8, 156(%x2)  #2676 pc 50272
	add	%x31, %x7, %x8  #2676 pc 50276
	sw	%x6, 0(%x31)  #2676 pc 50280
	lw	%x6, 660(%x2)  #2676 pc 50284
	addi	%x7, %x6, 2  #2676 pc 50288
	lw	%x9, 656(%x2)  #2676 pc 50292
	addi	%x9, %x9, 3  #2676 pc 50296
	lw	%x10, 20(%x2)  #2676 pc 50300
	flw	%f1, 8(%x10)  #2676 pc 50304
	fmv	%f2, l.21722  #0 pc 50308
	addi	%x10, %x3, 0  #2676 pc 50312
	addi	%x11, %x10, 0  #2676 pc 50316
	addi	%x10, %x10, 12  #2676 pc 50320
	addi	%x3, %x10, 0  #2676 pc 50324
	addi	%x10, %x0, 2  #0 pc 50328
	sw	%x7, 748(%x2)  #2676 pc 50332
	sw	%x9, 752(%x2)  #2676 pc 50336
	fsw	%f1, 760(%x2)  #2676 pc 50340
	sw	%x11, 768(%x2)  #2676 pc 50344
	addi	%x7, %x10, 0  #0 pc 50348
	addi	%x6, %x11, 0  #0 pc 50352
	fadd	%f0, %f2, %f30  #0 pc 50356
	sw	%x1, 772(%x2)  #2676 pc 50360
	addi	%x2, %x2, 776  #2676 pc 50364
	jal	%x1, assign_farray.2573  #2676 pc 50368
	addi	%x2, %x2, -776  #2676 pc 50372
	lw	%x1, 772(%x2) #2676 pc 50376
	lw	%x6, 0(%x2)  #2676 pc 50380
	lw	%x7, 0(%x6)  #2676 pc 50384
	addi	%x8, %x3, 0  #2676 pc 50388
	addi	%x9, %x8, 0  #2676 pc 50392
	slli	%x10, %x7, 2  #2676 pc 50396
	add	%x8, %x8, %x10  #2676 pc 50400
	addi	%x3, %x8, 0  #2676 pc 50404
	addi	%x8, %x7, -1  #2676 pc 50408
	lw	%x7, 768(%x2)  #2676 pc 50412
	sw	%x9, 772(%x2)  #2676 pc 50416
	addi	%x6, %x9, 0  #0 pc 50420
	sw	%x1, 776(%x2)  #2676 pc 50424
	addi	%x2, %x2, 780  #2676 pc 50428
	jal	%x1, assign_array.2566  #2676 pc 50432
	addi	%x2, %x2, -780  #2676 pc 50436
	lw	%x1, 776(%x2) #2676 pc 50440
	addi	%x6, %x3, 0  #2676 pc 50444
	addi	%x3, %x3, 8  #2676 pc 50448
	lw	%x7, 772(%x2)  #2676 pc 50452
	sw	%x7, 4(%x6)  #2676 pc 50456
	lw	%x7, 768(%x2)  #2676 pc 50460
	sw	%x7, 0(%x6)  #2676 pc 50464
	flw	%f0, 648(%x2)  #2676 pc 50468
	fsw	%f0, 0(%x7)  #2676 pc 50472
	flw	%f0, 688(%x2)  #2676 pc 50476
	fsw	%f0, 4(%x7)  #2676 pc 50480
	flw	%f0, 760(%x2)  #2676 pc 50484
	fsw	%f0, 8(%x7)  #2676 pc 50488
	lw	%x7, 0(%x2)  #2676 pc 50492
	lw	%x7, 0(%x7)  #2676 pc 50496
	addi	%x7, %x7, -1  #2676 pc 50500
	lw	%x29, 176(%x2)  #2676 pc 50504
	sw	%x6, 776(%x2)  #2676 pc 50508
	sw	%x1, 780(%x2)  #2676 pc 50512
	lw	%x30, 0(%x29)  #2676 pc 50516
	addi	%x2, %x2, 784  #2676 pc 50520
	jalr	%x1, %x30, 0  #2676 pc 50524
	addi	%x2, %x2, -784  #2676 pc 50528
	lw	%x1, 780(%x2)  #2676 pc 50532
	addi	%x6, %x3, 0  #2676 pc 50536
	addi	%x3, %x3, 12  #2676 pc 50540
	flw	%f0, 672(%x2)  #2676 pc 50544
	fsw	%f0, 8(%x6)  #2676 pc 50548
	lw	%x7, 776(%x2)  #2676 pc 50552
	sw	%x7, 4(%x6)  #2676 pc 50556
	lw	%x7, 752(%x2)  #2676 pc 50560
	sw	%x7, 0(%x6)  #2676 pc 50564
	lw	%x7, 748(%x2)  #2676 pc 50568
	slli	%x7, %x7, 2  #2676 pc 50572
	lw	%x8, 156(%x2)  #2676 pc 50576
	add	%x31, %x7, %x8  #2676 pc 50580
	sw	%x6, 0(%x31)  #2676 pc 50584
	lw	%x6, 660(%x2)  #2676 pc 50588
	addi	%x6, %x6, 3  #2676 pc 50592
	lw	%x7, 160(%x2)  #2676 pc 50596
	sw	%x6, 0(%x7)  #2676 pc 50600
	j	be_cont.26063 #pc 50604
	nop #pc 50608
be_else.26062: #pc 50612
	addi	%x31, %x0, 2  #pc 50612
	beq	%x9, %x31, 12  #2676 pc 50616
	j	be_else.26071 #pc 50620
	nop #pc 50624
	bge	%x7, %x0, 12  #2676 pc 50628
	j	bge_else.26073 #pc 50632
	nop #pc 50636
	addi	%x9, %x7, 0  #2676 pc 50640
	j	bge_cont.26074 #pc 50644
	nop #pc 50648
bge_else.26073: #pc 50652
	sub	%x9, %x0, %x7  #2676 pc 50652
bge_cont.26074: #pc 50656
	addi	%x10, %x0, 4  #0 pc 50656
	addi	%x11, %x0, 30  #0 pc 50660
	addi	%x12, %x0, 0  #0 pc 50664
	sw	%x8, 640(%x2)  #2676 pc 50668
	sw	%x7, 644(%x2)  #2676 pc 50672
	addi	%x8, %x11, 0  #0 pc 50676
	addi	%x7, %x10, 0  #0 pc 50680
	addi	%x6, %x9, 0  #0 pc 50684
	addi	%x9, %x12, 0  #0 pc 50688
	sw	%x1, 780(%x2)  #2676 pc 50692
	addi	%x2, %x2, 784  #2676 pc 50696
	jal	%x1, mul_abs.2542  #2676 pc 50700
	addi	%x2, %x2, -784  #2676 pc 50704
	lw	%x1, 780(%x2) #2676 pc 50708
	lw	%x7, 644(%x2)  #2676 pc 50712
	srli	%x7, %x7, 31  #2676 pc 50716
	beq	%x7, %x0, 12  #2676 pc 50720
	j	be_else.26075 #pc 50724
	nop #pc 50728
	j	be_cont.26076 #pc 50732
	nop #pc 50736
be_else.26075: #pc 50740
	sub	%x6, %x0, %x6  #2676 pc 50740
be_cont.26076: #pc 50744
	addi	%x6, %x6, 1  #2676 pc 50744
	lw	%x7, 160(%x2)  #2676 pc 50748
	lw	%x8, 0(%x7)  #2676 pc 50752
	fmv	%f0, l.21731  #0 pc 50756
	lw	%x9, 640(%x2)  #2676 pc 50760
	lw	%x10, 28(%x9)  #2676 pc 50764
	flw	%f1, 0(%x10)  #2676 pc 50768
	fsub	%f0, %f0, %f1  #2676 pc 50772
	lw	%x10, 16(%x9)  #2676 pc 50776
	lw	%x11, 20(%x2)  #2676 pc 50780
	flw	%f1, 0(%x11)  #2676 pc 50784
	flw	%f2, 0(%x10)  #2676 pc 50788
	fmul	%f1, %f1, %f2  #2676 pc 50792
	flw	%f2, 4(%x11)  #2676 pc 50796
	flw	%f3, 4(%x10)  #2676 pc 50800
	fmul	%f2, %f2, %f3  #2676 pc 50804
	fadd	%f1, %f1, %f2  #2676 pc 50808
	flw	%f2, 8(%x11)  #2676 pc 50812
	flw	%f3, 8(%x10)  #2676 pc 50816
	fmul	%f2, %f2, %f3  #2676 pc 50820
	fadd	%f1, %f1, %f2  #2676 pc 50824
	fmv	%f2, l.21839  #0 pc 50828
	lw	%x10, 16(%x9)  #2676 pc 50832
	flw	%f3, 0(%x10)  #2676 pc 50836
	fmul	%f2, %f2, %f3  #2676 pc 50840
	fmul	%f2, %f2, %f1  #2676 pc 50844
	flw	%f3, 0(%x11)  #2676 pc 50848
	fsub	%f2, %f2, %f3  #2676 pc 50852
	fmv	%f3, l.21839  #0 pc 50856
	lw	%x10, 16(%x9)  #2676 pc 50860
	flw	%f4, 4(%x10)  #2676 pc 50864
	fmul	%f3, %f3, %f4  #2676 pc 50868
	fmul	%f3, %f3, %f1  #2676 pc 50872
	flw	%f4, 4(%x11)  #2676 pc 50876
	fsub	%f3, %f3, %f4  #2676 pc 50880
	fmv	%f4, l.21839  #0 pc 50884
	lw	%x9, 16(%x9)  #2676 pc 50888
	flw	%f5, 8(%x9)  #2676 pc 50892
	fmul	%f4, %f4, %f5  #2676 pc 50896
	fmul	%f1, %f4, %f1  #2676 pc 50900
	flw	%f4, 8(%x11)  #2676 pc 50904
	fsub	%f1, %f1, %f4  #2676 pc 50908
	fmv	%f4, l.21722  #0 pc 50912
	addi	%x9, %x3, 0  #2676 pc 50916
	addi	%x10, %x9, 0  #2676 pc 50920
	addi	%x9, %x9, 12  #2676 pc 50924
	addi	%x3, %x9, 0  #2676 pc 50928
	addi	%x9, %x0, 2  #0 pc 50932
	sw	%x8, 780(%x2)  #2676 pc 50936
	sw	%x6, 784(%x2)  #2676 pc 50940
	fsw	%f0, 792(%x2)  #2676 pc 50944
	fsw	%f1, 800(%x2)  #2676 pc 50948
	fsw	%f3, 808(%x2)  #2676 pc 50952
	fsw	%f2, 816(%x2)  #2676 pc 50956
	sw	%x10, 824(%x2)  #2676 pc 50960
	addi	%x7, %x9, 0  #0 pc 50964
	addi	%x6, %x10, 0  #0 pc 50968
	fadd	%f0, %f4, %f30  #0 pc 50972
	sw	%x1, 828(%x2)  #2676 pc 50976
	addi	%x2, %x2, 832  #2676 pc 50980
	jal	%x1, assign_farray.2573  #2676 pc 50984
	addi	%x2, %x2, -832  #2676 pc 50988
	lw	%x1, 828(%x2) #2676 pc 50992
	lw	%x6, 0(%x2)  #2676 pc 50996
	lw	%x7, 0(%x6)  #2676 pc 51000
	addi	%x8, %x3, 0  #2676 pc 51004
	addi	%x9, %x8, 0  #2676 pc 51008
	slli	%x10, %x7, 2  #2676 pc 51012
	add	%x8, %x8, %x10  #2676 pc 51016
	addi	%x3, %x8, 0  #2676 pc 51020
	addi	%x8, %x7, -1  #2676 pc 51024
	lw	%x7, 824(%x2)  #2676 pc 51028
	sw	%x9, 828(%x2)  #2676 pc 51032
	addi	%x6, %x9, 0  #0 pc 51036
	sw	%x1, 832(%x2)  #2676 pc 51040
	addi	%x2, %x2, 836  #2676 pc 51044
	jal	%x1, assign_array.2566  #2676 pc 51048
	addi	%x2, %x2, -836  #2676 pc 51052
	lw	%x1, 832(%x2) #2676 pc 51056
	addi	%x6, %x3, 0  #2676 pc 51060
	addi	%x3, %x3, 8  #2676 pc 51064
	lw	%x7, 828(%x2)  #2676 pc 51068
	sw	%x7, 4(%x6)  #2676 pc 51072
	lw	%x7, 824(%x2)  #2676 pc 51076
	sw	%x7, 0(%x6)  #2676 pc 51080
	flw	%f0, 816(%x2)  #2676 pc 51084
	fsw	%f0, 0(%x7)  #2676 pc 51088
	flw	%f0, 808(%x2)  #2676 pc 51092
	fsw	%f0, 4(%x7)  #2676 pc 51096
	flw	%f0, 800(%x2)  #2676 pc 51100
	fsw	%f0, 8(%x7)  #2676 pc 51104
	lw	%x7, 0(%x2)  #2676 pc 51108
	lw	%x7, 0(%x7)  #2676 pc 51112
	addi	%x7, %x7, -1  #2676 pc 51116
	lw	%x29, 176(%x2)  #2676 pc 51120
	sw	%x6, 832(%x2)  #2676 pc 51124
	sw	%x1, 836(%x2)  #2676 pc 51128
	lw	%x30, 0(%x29)  #2676 pc 51132
	addi	%x2, %x2, 840  #2676 pc 51136
	jalr	%x1, %x30, 0  #2676 pc 51140
	addi	%x2, %x2, -840  #2676 pc 51144
	lw	%x1, 836(%x2)  #2676 pc 51148
	addi	%x6, %x3, 0  #2676 pc 51152
	addi	%x3, %x3, 12  #2676 pc 51156
	flw	%f0, 792(%x2)  #2676 pc 51160
	fsw	%f0, 8(%x6)  #2676 pc 51164
	lw	%x7, 832(%x2)  #2676 pc 51168
	sw	%x7, 4(%x6)  #2676 pc 51172
	lw	%x7, 784(%x2)  #2676 pc 51176
	sw	%x7, 0(%x6)  #2676 pc 51180
	lw	%x7, 780(%x2)  #2676 pc 51184
	slli	%x8, %x7, 2  #2676 pc 51188
	lw	%x9, 156(%x2)  #2676 pc 51192
	add	%x31, %x8, %x9  #2676 pc 51196
	sw	%x6, 0(%x31)  #2676 pc 51200
	addi	%x6, %x7, 1  #2676 pc 51204
	lw	%x7, 160(%x2)  #2676 pc 51208
	sw	%x6, 0(%x7)  #2676 pc 51212
	j	be_cont.26072 #pc 51216
	nop #pc 51220
be_else.26071: #pc 51224
be_cont.26072: #pc 51224
be_cont.26063: #pc 51224
be_cont.26061: #pc 51224
	j	be_cont.26057 #pc 51224
	nop #pc 51228
be_else.26056: #pc 51232
be_cont.26057: #pc 51232
	j	bge_cont.26055 #pc 51232
	nop #pc 51236
bge_else.26054: #pc 51240
bge_cont.26055: #pc 51240
	addi	%x6, %x0, 0  #0 pc 51240
	addi	%x8, %x0, 0  #0 pc 51244
	lw	%x7, 88(%x2)  #2676 pc 51248
	flw	%f0, 0(%x7)  #2676 pc 51252
	lw	%x7, 84(%x2)  #2676 pc 51256
	lw	%x7, 4(%x7)  #2676 pc 51260
	sub	%x6, %x6, %x7  #2676 pc 51264
	itof	%f1, %x6  #2676 pc 51268
	fmul	%f0, %f0, %f1  #2676 pc 51272
	lw	%x6, 104(%x2)  #2676 pc 51276
	flw	%f1, 0(%x6)  #2676 pc 51280
	fmul	%f1, %f0, %f1  #2676 pc 51284
	lw	%x7, 108(%x2)  #2676 pc 51288
	flw	%f2, 0(%x7)  #2676 pc 51292
	fadd	%f1, %f1, %f2  #2676 pc 51296
	flw	%f2, 4(%x6)  #2676 pc 51300
	fmul	%f2, %f0, %f2  #2676 pc 51304
	flw	%f3, 4(%x7)  #2676 pc 51308
	fadd	%f2, %f2, %f3  #2676 pc 51312
	flw	%f3, 8(%x6)  #2676 pc 51316
	fmul	%f0, %f0, %f3  #2676 pc 51320
	flw	%f3, 8(%x7)  #2676 pc 51324
	fadd	%f0, %f0, %f3  #2676 pc 51328
	lw	%x6, 80(%x2)  #2676 pc 51332
	lw	%x6, 0(%x6)  #2676 pc 51336
	addi	%x7, %x6, -1  #2676 pc 51340
	lw	%x6, 448(%x2)  #2676 pc 51344
	lw	%x29, 172(%x2)  #2676 pc 51348
	fadd	%f29, %f2, %f30  #0 pc 51352
	fadd	%f2, %f0, %f30  #0 pc 51356
	fadd	%f0, %f1, %f30  #0 pc 51360
	fadd	%f1, %f29, %f30  #0 pc 51364
	sw	%x1, 836(%x2)  #2676 pc 51368
	lw	%x30, 0(%x29)  #2676 pc 51372
	addi	%x2, %x2, 840  #2676 pc 51376
	jalr	%x1, %x30, 0  #2676 pc 51380
	addi	%x2, %x2, -840  #2676 pc 51384
	lw	%x1, 836(%x2)  #2676 pc 51388
	addi	%x6, %x0, 0  #0 pc 51392
	addi	%x10, %x0, 2  #0 pc 51396
	lw	%x7, 324(%x2)  #2676 pc 51400
	lw	%x8, 448(%x2)  #2676 pc 51404
	lw	%x9, 572(%x2)  #2676 pc 51408
	lw	%x11, 164(%x2)  #2676 pc 51412
	lw	%x29, 168(%x2)  #2676 pc 51416
	sw	%x1, 836(%x2)  #2676 pc 51420
	lw	%x30, 0(%x29)  #2676 pc 51424
	addi	%x2, %x2, 840  #2676 pc 51428
*	jalr	%x1, %x30, 0  #2676 pc 51432
	addi	%x2, %x2, -840  #2676 pc 51436
	lw	%x1, 836(%x2)  #2676 pc 51440