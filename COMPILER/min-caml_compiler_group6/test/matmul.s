.section	".rodata"
.align	8
l.688:	! 12.000000
l.684:	! 11.000000
l.680:	! 10.000000
l.676:	! 9.000000
l.672:	! 8.000000
l.668:	! 7.000000
l.664:	! 6.000000
l.660:	! 5.000000
l.656:	! 4.000000
l.652:	! 3.000000
l.648:	! 2.000000
l.644:	! 1.000000
l.635:	! 0.000000
.section	".text"
print_int.291:  #pc 0
	sw	%x5, 0(%x6)  #112 pc 0
	addi	%x5, %x5, 4  #112 pc 4
	ret #pc 8
	nop #pc 12
assign_array.297:  #pc 16
	bge	%x8, %x0, 12  #169 pc 16
	j	bge_else.732 #pc 20
	nop #pc 24
	beq	%x8, %x0, 12  #172 pc 28
	j	be_else.733 #pc 32
	nop #pc 36
	slli	%x8, %x8, 2  #173 pc 40
	add	%x31, %x8, %x6  #173 pc 44
	sw	%x7, 0(%x31)  #173 pc 48
	ret #pc 52
	nop #pc 56
be_else.733: #pc 60
	slli	%x9, %x8, 2  #175 pc 60
	add	%x31, %x9, %x6  #175 pc 64
	sw	%x7, 0(%x31)  #175 pc 68
	addi	%x8, %x8, -1  #176 pc 72
	j	assign_array.297  #176 pc 76
	nop #pc 80
bge_else.732: #pc 84
	ret #pc 84
	nop #pc 88
create_array.301:  #pc 92
	addi	%x8, %x3, 0  #180 pc 92
	addi	%x9, %x8, 0  #181 pc 96
	slli	%x10, %x6, 2  #182 pc 100
	add	%x8, %x8, %x10  #182 pc 104
	addi	%x3, %x8, 0  #182 pc 108
	addi	%x8, %x6, -1  #183 pc 112
	sw	%x9, 0(%x2)  #183 pc 116
	addi	%x6, %x9, 0  #0 pc 120
	sw	%x1, 4(%x2)  #183 pc 124
	addi	%x2, %x2, 8  #183 pc 128
	jal	%x1, assign_array.297  #183 pc 132
	addi	%x2, %x2, -8  #183 pc 136
	lw	%x1, 4(%x2) #183 pc 140
	lw	%x6, 0(%x2)  #184 pc 144
	ret #pc 148
	nop #pc 152
assign_farray.304:  #pc 156
	bge	%x7, %x0, 12  #188 pc 156
	j	bge_else.736 #pc 160
	nop #pc 164
	beq	%x7, %x0, 12  #191 pc 168
	j	be_else.737 #pc 172
	nop #pc 176
	slli	%x7, %x7, 2  #192 pc 180
	add	%x31, %x7, %x6  #192 pc 184
	fsw	%f0, 0(%x31) #192 pc 188
	ret #pc 192
	nop #pc 196
be_else.737: #pc 200
	slli	%x8, %x7, 2  #194 pc 200
	add	%x31, %x8, %x6  #194 pc 204
	fsw	%f0, 0(%x31) #194 pc 208
	addi	%x7, %x7, -1  #195 pc 212
	j	assign_farray.304  #195 pc 216
	nop #pc 220
bge_else.736: #pc 224
	ret #pc 224
	nop #pc 228
create_float_array.308:  #pc 232
	addi	%x7, %x3, 0  #199 pc 232
	addi	%x8, %x7, 0  #200 pc 236
	slli	%x9, %x6, 2  #201 pc 240
	add	%x7, %x7, %x9  #201 pc 244
	addi	%x3, %x7, 0  #201 pc 248
	addi	%x7, %x6, -1  #202 pc 252
	sw	%x8, 0(%x2)  #202 pc 256
	addi	%x6, %x8, 0  #0 pc 260
	sw	%x1, 4(%x2)  #202 pc 264
	addi	%x2, %x2, 8  #202 pc 268
	jal	%x1, assign_farray.304  #202 pc 272
	addi	%x2, %x2, -8  #202 pc 276
	lw	%x1, 4(%x2) #202 pc 280
	lw	%x6, 0(%x2)  #203 pc 284
	ret #pc 288
	nop #pc 292
loop3.453:  #pc 296
	lw	%x7, 20(%x29)  #0 pc 296
	lw	%x8, 16(%x29)  #0 pc 300
	lw	%x9, 12(%x29)  #0 pc 304
	lw	%x10, 8(%x29)  #0 pc 308
	lw	%x11, 4(%x29)  #0 pc 312
	bge	%x6, %x0, 12  #213 pc 316
	j	bge_else.740 #pc 320
	nop #pc 324
	slli	%x12, %x8, 2  #214 pc 328
	add	%x31, %x12, %x9  #214 pc 332
	lw	%x12, 0(%x31)  #214 pc 336
	slli	%x13, %x8, 2  #214 pc 340
	add	%x31, %x13, %x9  #214 pc 344
	lw	%x9, 0(%x31)  #214 pc 348
	slli	%x13, %x7, 2  #214 pc 352
	add	%x31, %x13, %x9  #214 pc 356
	flw	%f0, 0(%x31)  #214 pc 360
	slli	%x8, %x8, 2  #214 pc 364
	add	%x31, %x8, %x11  #214 pc 368
	lw	%x8, 0(%x31)  #214 pc 372
	slli	%x9, %x6, 2  #214 pc 376
	add	%x31, %x9, %x8  #214 pc 380
	flw	%f1, 0(%x31)  #214 pc 384
	slli	%x8, %x6, 2  #214 pc 388
	add	%x31, %x8, %x10  #214 pc 392
	lw	%x8, 0(%x31)  #214 pc 396
	slli	%x9, %x7, 2  #214 pc 400
	add	%x31, %x9, %x8  #214 pc 404
	flw	%f2, 0(%x31)  #214 pc 408
	fmul	%f1, %f1, %f2  #214 pc 412
	fadd	%f0, %f0, %f1  #214 pc 416
	slli	%x7, %x7, 2  #214 pc 420
	add	%x31, %x7, %x12  #214 pc 424
	fsw	%f0, 0(%x31) #214 pc 428
	addi	%x6, %x6, -1  #215 pc 432
	lw	%x30, 0(%x29)  #215 pc 436
	jalr	%x0, %x30, 0  #215 pc 440
	nop #pc 444
bge_else.740: #pc 448
	ret #pc 448
	nop #pc 452
loop2.445:  #pc 456
	lw	%x7, 20(%x29)  #0 pc 456
	lw	%x8, 16(%x29)  #0 pc 460
	lw	%x9, 12(%x29)  #0 pc 464
	lw	%x10, 8(%x29)  #0 pc 468
	lw	%x11, 4(%x29)  #0 pc 472
	bge	%x6, %x0, 12  #211 pc 476
	j	bge_else.742 #pc 480
	nop #pc 484
	addi	%x12, %x3, 0  #212 pc 488
	addi	%x3, %x3, 24  #212 pc 492
	addi	%x31, %x0, 296  #212 loop3.453 pc 496
	addi	%x13, %x31, 0  #212 pc 500
	sw	%x13, 0(%x12)  #212 pc 504
	sw	%x6, 20(%x12)  #212 pc 508
	sw	%x8, 16(%x12)  #212 pc 512
	sw	%x9, 12(%x12)  #212 pc 516
	sw	%x10, 8(%x12)  #212 pc 520
	sw	%x11, 4(%x12)  #212 pc 524
	addi	%x7, %x7, -1  #216 pc 528
	sw	%x29, 0(%x2)  #216 pc 532
	sw	%x6, 4(%x2)  #216 pc 536
	addi	%x6, %x7, 0  #0 pc 540
	addi	%x29, %x12, 0  #0 pc 544
	sw	%x1, 8(%x2)  #216 pc 548
	lw	%x30, 0(%x29)  #216 pc 552
	addi	%x2, %x2, 12  #216 pc 556
	jalr	%x1, %x30, 0  #216 pc 560
	addi	%x2, %x2, -12  #216 pc 564
	lw	%x1, 8(%x2)  #216 pc 568
	lw	%x6, 4(%x2)  #217 pc 572
	addi	%x6, %x6, -1  #217 pc 576
	lw	%x29, 0(%x2)  #217 pc 580
	lw	%x30, 0(%x29)  #217 pc 584
	jalr	%x0, %x30, 0  #217 pc 588
	nop #pc 592
bge_else.742: #pc 596
	ret #pc 596
	nop #pc 600
loop1.440:  #pc 604
	lw	%x7, 20(%x29)  #0 pc 604
	lw	%x8, 16(%x29)  #0 pc 608
	lw	%x9, 12(%x29)  #0 pc 612
	lw	%x10, 8(%x29)  #0 pc 616
	lw	%x11, 4(%x29)  #0 pc 620
	bge	%x6, %x0, 12  #209 pc 624
	j	bge_else.744 #pc 628
	nop #pc 632
	addi	%x12, %x3, 0  #210 pc 636
	addi	%x3, %x3, 24  #210 pc 640
	addi	%x31, %x0, 456  #210 loop2.445 pc 644
	addi	%x13, %x31, 0  #210 pc 648
	sw	%x13, 0(%x12)  #210 pc 652
	sw	%x8, 20(%x12)  #210 pc 656
	sw	%x6, 16(%x12)  #210 pc 660
	sw	%x9, 12(%x12)  #210 pc 664
	sw	%x10, 8(%x12)  #210 pc 668
	sw	%x11, 4(%x12)  #210 pc 672
	addi	%x7, %x7, -1  #218 pc 676
	sw	%x29, 0(%x2)  #218 pc 680
	sw	%x6, 4(%x2)  #218 pc 684
	addi	%x6, %x7, 0  #0 pc 688
	addi	%x29, %x12, 0  #0 pc 692
	sw	%x1, 8(%x2)  #218 pc 696
	lw	%x30, 0(%x29)  #218 pc 700
	addi	%x2, %x2, 12  #218 pc 704
	jalr	%x1, %x30, 0  #218 pc 708
	addi	%x2, %x2, -12  #218 pc 712
	lw	%x1, 8(%x2)  #218 pc 716
	lw	%x6, 4(%x2)  #219 pc 720
	addi	%x6, %x6, -1  #219 pc 724
	lw	%x29, 0(%x2)  #219 pc 728
	lw	%x30, 0(%x29)  #219 pc 732
	jalr	%x0, %x30, 0  #219 pc 736
	nop #pc 740
bge_else.744: #pc 744
	ret #pc 744
	nop #pc 748
mul.311:  #pc 752
	addi	%x29, %x3, 0  #208 pc 752
	addi	%x3, %x3, 24  #208 pc 756
	addi	%x31, %x0, 604  #208 loop1.440 pc 760
	addi	%x12, %x31, 0  #208 pc 764
	sw	%x12, 0(%x29)  #208 pc 768
	sw	%x8, 20(%x29)  #208 pc 772
	sw	%x7, 16(%x29)  #208 pc 776
	sw	%x11, 12(%x29)  #208 pc 780
	sw	%x10, 8(%x29)  #208 pc 784
	sw	%x9, 4(%x29)  #208 pc 788
	addi	%x6, %x6, -1  #220 pc 792
	lw	%x30, 0(%x29)  #220 pc 796
	jalr	%x0, %x30, 0  #220 pc 800
	nop #pc 804
init.427:  #pc 808
	lw	%x7, 8(%x29)  #0 pc 808
	lw	%x8, 4(%x29)  #0 pc 812
	bge	%x6, %x0, 12  #225 pc 816
	j	bge_else.746 #pc 820
	nop #pc 824
	fmv	%f0, l.635  #0 pc 828
	sw	%x29, 0(%x2)  #226 pc 832
	sw	%x8, 4(%x2)  #226 pc 836
	sw	%x6, 8(%x2)  #226 pc 840
	addi	%x6, %x7, 0  #0 pc 844
	sw	%x1, 12(%x2)  #226 pc 848
	addi	%x2, %x2, 16  #226 pc 852
	jal	%x1, create_float_array.308  #226 pc 856
	addi	%x2, %x2, -16  #226 pc 860
	lw	%x1, 12(%x2) #226 pc 864
	lw	%x7, 8(%x2)  #226 pc 868
	slli	%x8, %x7, 2  #226 pc 872
	lw	%x9, 4(%x2)  #226 pc 876
	add	%x31, %x8, %x9  #226 pc 880
	sw	%x6, 0(%x31)  #226 pc 884
	addi	%x6, %x7, -1  #227 pc 888
	lw	%x29, 0(%x2)  #227 pc 892
	lw	%x30, 0(%x29)  #227 pc 896
	jalr	%x0, %x30, 0  #227 pc 900
	nop #pc 904
bge_else.746: #pc 908
	ret #pc 908
	nop #pc 912
make.319:  #pc 916
	lw	%x8, 4(%x29)  #223 pc 916
	sw	%x6, 0(%x2)  #223 pc 920
	sw	%x7, 4(%x2)  #223 pc 924
	addi	%x7, %x8, 0  #0 pc 928
	sw	%x1, 8(%x2)  #223 pc 932
	addi	%x2, %x2, 12  #223 pc 936
	jal	%x1, create_array.301  #223 pc 940
	addi	%x2, %x2, -12  #223 pc 944
	lw	%x1, 8(%x2) #223 pc 948
	addi	%x29, %x3, 0  #224 pc 952
	addi	%x3, %x3, 12  #224 pc 956
	addi	%x31, %x0, 808  #224 init.427 pc 960
	addi	%x7, %x31, 0  #224 pc 964
	sw	%x7, 0(%x29)  #224 pc 968
	lw	%x7, 4(%x2)  #224 pc 972
	sw	%x7, 8(%x29)  #224 pc 976
	sw	%x6, 4(%x29)  #224 pc 980
	lw	%x7, 0(%x2)  #228 pc 984
	addi	%x7, %x7, -1  #228 pc 988
	sw	%x6, 8(%x2)  #228 pc 992
	addi	%x6, %x7, 0  #0 pc 996
	sw	%x1, 12(%x2)  #228 pc 1000
	lw	%x30, 0(%x29)  #228 pc 1004
	addi	%x2, %x2, 16  #228 pc 1008
	jalr	%x1, %x30, 0  #228 pc 1012
	addi	%x2, %x2, -16  #228 pc 1016
	lw	%x1, 12(%x2)  #228 pc 1020
	lw	%x6, 8(%x2)  #229 pc 1024
	ret #pc 1028
	nop #pc 1032
.global	min_caml_start
min_caml_start:
	addi	%x2, %x0, 0
	addi	%x3, %x0, 1024
	addi	%x6, %x0, 0  #0 pc 1044
	fmv	%f0, l.635  #0 pc 1048
	sw	%x1, 0(%x2)  #221 pc 1052
	addi	%x2, %x2, 4  #221 pc 1056
	jal	%x1, create_float_array.308  #221 pc 1060
	addi	%x2, %x2, -4  #221 pc 1064
	lw	%x1, 0(%x2) #221 pc 1068
	addi	%x29, %x3, 0  #222 pc 1072
	addi	%x3, %x3, 8  #222 pc 1076
	addi	%x31, %x0, 916  #222 make.319 pc 1080
	addi	%x7, %x31, 0  #222 pc 1084
	sw	%x7, 0(%x29)  #222 pc 1088
	sw	%x6, 4(%x29)  #222 pc 1092
	addi	%x6, %x0, 2  #0 pc 1096
	addi	%x7, %x0, 3  #0 pc 1100
	sw	%x29, 0(%x2)  #230 pc 1104
	sw	%x1, 4(%x2)  #230 pc 1108
	lw	%x30, 0(%x29)  #230 pc 1112
	addi	%x2, %x2, 8  #230 pc 1116
	jalr	%x1, %x30, 0  #230 pc 1120
	addi	%x2, %x2, -8  #230 pc 1124
	lw	%x1, 4(%x2)  #230 pc 1128
	addi	%x7, %x0, 3  #0 pc 1132
	addi	%x8, %x0, 2  #0 pc 1136
	lw	%x29, 0(%x2)  #231 pc 1140
	sw	%x6, 4(%x2)  #231 pc 1144
	addi	%x6, %x7, 0  #0 pc 1148
	addi	%x7, %x8, 0  #0 pc 1152
	sw	%x1, 8(%x2)  #231 pc 1156
	lw	%x30, 0(%x29)  #231 pc 1160
	addi	%x2, %x2, 12  #231 pc 1164
	jalr	%x1, %x30, 0  #231 pc 1168
	addi	%x2, %x2, -12  #231 pc 1172
	lw	%x1, 8(%x2)  #231 pc 1176
	addi	%x7, %x0, 2  #0 pc 1180
	lw	%x29, 0(%x2)  #232 pc 1184
	sw	%x6, 8(%x2)  #232 pc 1188
	addi	%x6, %x7, 0  #0 pc 1192
	sw	%x1, 12(%x2)  #232 pc 1196
	lw	%x30, 0(%x29)  #232 pc 1200
	addi	%x2, %x2, 16  #232 pc 1204
	jalr	%x1, %x30, 0  #232 pc 1208
	addi	%x2, %x2, -16  #232 pc 1212
	lw	%x1, 12(%x2)  #232 pc 1216
	addi	%x11, %x6, 0  #232 pc 1220
	lw	%x9, 4(%x2)  #233 pc 1224
	lw	%x6, 0(%x9)  #233 pc 1228
	fmv	%f0, l.644  #0 pc 1232
	fsw	%f0, 0(%x6)  #233 pc 1236
	lw	%x6, 0(%x9)  #233 pc 1240
	fmv	%f0, l.648  #0 pc 1244
	fsw	%f0, 4(%x6)  #233 pc 1248
	lw	%x6, 0(%x9)  #233 pc 1252
	fmv	%f0, l.652  #0 pc 1256
	fsw	%f0, 8(%x6)  #233 pc 1260
	lw	%x6, 4(%x9)  #234 pc 1264
	fmv	%f0, l.656  #0 pc 1268
	fsw	%f0, 0(%x6)  #234 pc 1272
	lw	%x6, 4(%x9)  #234 pc 1276
	fmv	%f0, l.660  #0 pc 1280
	fsw	%f0, 4(%x6)  #234 pc 1284
	lw	%x6, 4(%x9)  #234 pc 1288
	fmv	%f0, l.664  #0 pc 1292
	fsw	%f0, 8(%x6)  #234 pc 1296
	lw	%x10, 8(%x2)  #235 pc 1300
	lw	%x6, 0(%x10)  #235 pc 1304
	fmv	%f0, l.668  #0 pc 1308
	fsw	%f0, 0(%x6)  #235 pc 1312
	lw	%x6, 0(%x10)  #235 pc 1316
	fmv	%f0, l.672  #0 pc 1320
	fsw	%f0, 4(%x6)  #235 pc 1324
	lw	%x6, 4(%x10)  #236 pc 1328
	fmv	%f0, l.676  #0 pc 1332
	fsw	%f0, 0(%x6)  #236 pc 1336
	lw	%x6, 4(%x10)  #236 pc 1340
	fmv	%f0, l.680  #0 pc 1344
	fsw	%f0, 4(%x6)  #236 pc 1348
	lw	%x6, 8(%x10)  #237 pc 1352
	fmv	%f0, l.684  #0 pc 1356
	fsw	%f0, 0(%x6)  #237 pc 1360
	lw	%x6, 8(%x10)  #237 pc 1364
	fmv	%f0, l.688  #0 pc 1368
	fsw	%f0, 4(%x6)  #237 pc 1372
	addi	%x6, %x0, 2  #0 pc 1376
	addi	%x7, %x0, 3  #0 pc 1380
	sw	%x11, 12(%x2)  #238 pc 1384
	addi	%x8, %x6, 0  #0 pc 1388
	sw	%x1, 16(%x2)  #238 pc 1392
	addi	%x2, %x2, 20  #238 pc 1396
	jal	%x1, mul.311  #238 pc 1400
	addi	%x2, %x2, -20  #238 pc 1404
	lw	%x1, 16(%x2) #238 pc 1408
	lw	%x6, 12(%x2)  #239 pc 1412
	lw	%x7, 0(%x6)  #239 pc 1416
	flw	%f0, 0(%x7)  #239 pc 1420
	sw	%x1, 16(%x2)  #239 pc 1424
	addi	%x2, %x2, 20  #239 pc 1428
	jal	%x1, min_caml_truncate  #239 pc 1432
	addi	%x2, %x2, -20  #239 pc 1436
	lw	%x1, 16(%x2) #239 pc 1440
	sw	%x1, 16(%x2)  #239 pc 1444
	addi	%x2, %x2, 20  #239 pc 1448
	jal	%x1, print_int.291  #239 pc 1452
	addi	%x2, %x2, -20  #239 pc 1456
	lw	%x1, 16(%x2) #239 pc 1460
	sw	%x1, 16(%x2)  #240 pc 1464
	addi	%x2, %x2, 20  #240 pc 1468
	jal	%x1, min_caml_print_newline  #240 pc 1472
	addi	%x2, %x2, -20  #240 pc 1476
	lw	%x1, 16(%x2) #240 pc 1480
	lw	%x6, 12(%x2)  #241 pc 1484
	lw	%x7, 0(%x6)  #241 pc 1488
	flw	%f0, 4(%x7)  #241 pc 1492
	sw	%x1, 16(%x2)  #241 pc 1496
	addi	%x2, %x2, 20  #241 pc 1500
	jal	%x1, min_caml_truncate  #241 pc 1504
	addi	%x2, %x2, -20  #241 pc 1508
	lw	%x1, 16(%x2) #241 pc 1512
	sw	%x1, 16(%x2)  #241 pc 1516
	addi	%x2, %x2, 20  #241 pc 1520
	jal	%x1, print_int.291  #241 pc 1524
	addi	%x2, %x2, -20  #241 pc 1528
	lw	%x1, 16(%x2) #241 pc 1532
	sw	%x1, 16(%x2)  #242 pc 1536
	addi	%x2, %x2, 20  #242 pc 1540
	jal	%x1, min_caml_print_newline  #242 pc 1544
	addi	%x2, %x2, -20  #242 pc 1548
	lw	%x1, 16(%x2) #242 pc 1552
	lw	%x6, 12(%x2)  #243 pc 1556
	lw	%x7, 4(%x6)  #243 pc 1560
	flw	%f0, 0(%x7)  #243 pc 1564
	sw	%x1, 16(%x2)  #243 pc 1568
	addi	%x2, %x2, 20  #243 pc 1572
	jal	%x1, min_caml_truncate  #243 pc 1576
	addi	%x2, %x2, -20  #243 pc 1580
	lw	%x1, 16(%x2) #243 pc 1584
	sw	%x1, 16(%x2)  #243 pc 1588
	addi	%x2, %x2, 20  #243 pc 1592
	jal	%x1, print_int.291  #243 pc 1596
	addi	%x2, %x2, -20  #243 pc 1600
	lw	%x1, 16(%x2) #243 pc 1604
	sw	%x1, 16(%x2)  #244 pc 1608
	addi	%x2, %x2, 20  #244 pc 1612
	jal	%x1, min_caml_print_newline  #244 pc 1616
	addi	%x2, %x2, -20  #244 pc 1620
	lw	%x1, 16(%x2) #244 pc 1624
	lw	%x6, 12(%x2)  #245 pc 1628
	lw	%x6, 4(%x6)  #245 pc 1632
	flw	%f0, 4(%x6)  #245 pc 1636
	sw	%x1, 16(%x2)  #245 pc 1640
	addi	%x2, %x2, 20  #245 pc 1644
	jal	%x1, min_caml_truncate  #245 pc 1648
	addi	%x2, %x2, -20  #245 pc 1652
	lw	%x1, 16(%x2) #245 pc 1656
	sw	%x1, 16(%x2)  #245 pc 1660
	addi	%x2, %x2, 20  #245 pc 1664
	jal	%x1, print_int.291  #245 pc 1668
	addi	%x2, %x2, -20  #245 pc 1672
	lw	%x1, 16(%x2) #245 pc 1676
	sw	%x1, 16(%x2)  #246 pc 1680
	addi	%x2, %x2, 20  #246 pc 1684
	jal	%x1, min_caml_print_newline  #246 pc 1688
	addi	%x2, %x2, -20  #246 pc 1692
	lw	%x1, 16(%x2) #246 pc 1696
	addi	%x2, %x2, 112
