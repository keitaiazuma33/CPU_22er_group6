.section	".rodata"
.align	8
l.681:	! 12.000000
l.677:	! 11.000000
l.673:	! 10.000000
l.669:	! 9.000000
l.665:	! 8.000000
l.661:	! 7.000000
l.657:	! 6.000000
l.653:	! 5.000000
l.649:	! 4.000000
l.645:	! 3.000000
l.641:	! 2.000000
l.637:	! 1.000000
l.632:	! 0.000000
.section	".text"
print_int.291:  #pc 0
	sw	%x5, 0(%x6)  #112 pc 0
	addi	%x5, %x5, 4  #112 pc 4
	ret #pc 8
	nop #pc 12
assign_array.297:  #pc 16
	bge	%x8, %x0, 12  #169 pc 16
	j	bge_else.730 #pc 20
	nop #pc 24
	beq	%x8, %x0, 12  #172 pc 28
	j	be_else.731 #pc 32
	nop #pc 36
	slli	%x8, %x8, 2  #173 pc 40
	add	%x31, %x8, %x6  #173 pc 44
	sw	%x7, 0(%x31)  #173 pc 48
	ret #pc 52
	nop #pc 56
be_else.731: #pc 60
	slli	%x9, %x8, 2  #175 pc 60
	add	%x31, %x9, %x6  #175 pc 64
	sw	%x7, 0(%x31)  #175 pc 68
	addi	%x8, %x8, -1  #176 pc 72
	j	assign_array.297  #176 pc 76
	nop #pc 80
bge_else.730: #pc 84
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
	j	bge_else.734 #pc 160
	nop #pc 164
	beq	%x7, %x0, 12  #191 pc 168
	j	be_else.735 #pc 172
	nop #pc 176
	slli	%x7, %x7, 2  #192 pc 180
	add	%x31, %x7, %x6  #192 pc 184
	fsw	%f0, 0(%x31) #192 pc 188
	ret #pc 192
	nop #pc 196
be_else.735: #pc 200
	slli	%x8, %x7, 2  #194 pc 200
	add	%x31, %x8, %x6  #194 pc 204
	fsw	%f0, 0(%x31) #194 pc 208
	addi	%x7, %x7, -1  #195 pc 212
	j	assign_farray.304  #195 pc 216
	nop #pc 220
bge_else.734: #pc 224
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
loop3.311:  #pc 296
	bge	%x7, %x0, 12  #208 pc 296
	j	bge_else.738 #pc 300
	nop #pc 304
	slli	%x12, %x6, 2  #209 pc 308
	add	%x31, %x12, %x11  #209 pc 312
	lw	%x12, 0(%x31)  #209 pc 316
	slli	%x13, %x6, 2  #209 pc 320
	add	%x31, %x13, %x11  #209 pc 324
	lw	%x13, 0(%x31)  #209 pc 328
	slli	%x14, %x8, 2  #209 pc 332
	add	%x31, %x14, %x13  #209 pc 336
	flw	%f0, 0(%x31)  #209 pc 340
	slli	%x13, %x6, 2  #209 pc 344
	add	%x31, %x13, %x9  #209 pc 348
	lw	%x13, 0(%x31)  #209 pc 352
	slli	%x14, %x7, 2  #209 pc 356
	add	%x31, %x14, %x13  #209 pc 360
	flw	%f1, 0(%x31)  #209 pc 364
	slli	%x13, %x7, 2  #209 pc 368
	add	%x31, %x13, %x10  #209 pc 372
	lw	%x13, 0(%x31)  #209 pc 376
	slli	%x14, %x8, 2  #209 pc 380
	add	%x31, %x14, %x13  #209 pc 384
	flw	%f2, 0(%x31)  #209 pc 388
	fmul	%f1, %f1, %f2  #209 pc 392
	fadd	%f0, %f0, %f1  #209 pc 396
	slli	%x13, %x8, 2  #209 pc 400
	add	%x31, %x13, %x12  #209 pc 404
	fsw	%f0, 0(%x31) #209 pc 408
	addi	%x7, %x7, -1  #210 pc 412
	j	loop3.311  #210 pc 416
	nop #pc 420
bge_else.738: #pc 424
	ret #pc 424
	nop #pc 428
loop2.318:  #pc 432
	bge	%x8, %x0, 12  #212 pc 432
	j	bge_else.740 #pc 436
	nop #pc 440
	addi	%x12, %x7, -1  #213 pc 444
	sw	%x11, 0(%x2)  #213 pc 448
	sw	%x10, 4(%x2)  #213 pc 452
	sw	%x9, 8(%x2)  #213 pc 456
	sw	%x7, 12(%x2)  #213 pc 460
	sw	%x6, 16(%x2)  #213 pc 464
	sw	%x8, 20(%x2)  #213 pc 468
	addi	%x7, %x12, 0  #0 pc 472
	sw	%x1, 24(%x2)  #213 pc 476
	addi	%x2, %x2, 28  #213 pc 480
	jal	%x1, loop3.311  #213 pc 484
	addi	%x2, %x2, -28  #213 pc 488
	lw	%x1, 24(%x2) #213 pc 492
	lw	%x6, 20(%x2)  #214 pc 496
	addi	%x8, %x6, -1  #214 pc 500
	lw	%x6, 16(%x2)  #214 pc 504
	lw	%x7, 12(%x2)  #214 pc 508
	lw	%x9, 8(%x2)  #214 pc 512
	lw	%x10, 4(%x2)  #214 pc 516
	lw	%x11, 0(%x2)  #214 pc 520
	j	loop2.318  #214 pc 524
	nop #pc 528
bge_else.740: #pc 532
	ret #pc 532
	nop #pc 536
loop1.325:  #pc 540
	bge	%x6, %x0, 12  #216 pc 540
	j	bge_else.742 #pc 544
	nop #pc 548
	addi	%x12, %x8, -1  #217 pc 552
	sw	%x11, 0(%x2)  #217 pc 556
	sw	%x10, 4(%x2)  #217 pc 560
	sw	%x9, 8(%x2)  #217 pc 564
	sw	%x8, 12(%x2)  #217 pc 568
	sw	%x7, 16(%x2)  #217 pc 572
	sw	%x6, 20(%x2)  #217 pc 576
	addi	%x8, %x12, 0  #0 pc 580
	sw	%x1, 24(%x2)  #217 pc 584
	addi	%x2, %x2, 28  #217 pc 588
	jal	%x1, loop2.318  #217 pc 592
	addi	%x2, %x2, -28  #217 pc 596
	lw	%x1, 24(%x2) #217 pc 600
	lw	%x6, 20(%x2)  #218 pc 604
	addi	%x6, %x6, -1  #218 pc 608
	lw	%x7, 16(%x2)  #218 pc 612
	lw	%x8, 12(%x2)  #218 pc 616
	lw	%x9, 8(%x2)  #218 pc 620
	lw	%x10, 4(%x2)  #218 pc 624
	lw	%x11, 0(%x2)  #218 pc 628
	j	loop1.325  #218 pc 632
	nop #pc 636
bge_else.742: #pc 640
	ret #pc 640
	nop #pc 644
mul.332:  #pc 648
	addi	%x6, %x6, -1  #220 pc 648
	j	loop1.325  #220 pc 652
	nop #pc 656
init.340:  #pc 660
	bge	%x6, %x0, 12  #223 pc 660
	j	bge_else.744 #pc 664
	nop #pc 668
	fmv	%f0, l.632  #0 pc 672
	sw	%x7, 0(%x2)  #224 pc 676
	sw	%x8, 4(%x2)  #224 pc 680
	sw	%x6, 8(%x2)  #224 pc 684
	addi	%x6, %x7, 0  #0 pc 688
	sw	%x1, 12(%x2)  #224 pc 692
	addi	%x2, %x2, 16  #224 pc 696
	jal	%x1, create_float_array.308  #224 pc 700
	addi	%x2, %x2, -16  #224 pc 704
	lw	%x1, 12(%x2) #224 pc 708
	lw	%x7, 8(%x2)  #224 pc 712
	slli	%x8, %x7, 2  #224 pc 716
	lw	%x9, 4(%x2)  #224 pc 720
	add	%x31, %x8, %x9  #224 pc 724
	sw	%x6, 0(%x31)  #224 pc 728
	addi	%x6, %x7, -1  #225 pc 732
	lw	%x7, 0(%x2)  #225 pc 736
	addi	%x8, %x9, 0  #0 pc 740
	j	init.340  #225 pc 744
	nop #pc 748
bge_else.744: #pc 752
	ret #pc 752
	nop #pc 756
make.344:  #pc 760
	sw	%x7, 0(%x2)  #227 pc 760
	sw	%x6, 4(%x2)  #227 pc 764
	addi	%x7, %x8, 0  #0 pc 768
	sw	%x1, 8(%x2)  #227 pc 772
	addi	%x2, %x2, 12  #227 pc 776
	jal	%x1, create_array.301  #227 pc 780
	addi	%x2, %x2, -12  #227 pc 784
	lw	%x1, 8(%x2) #227 pc 788
	addi	%x8, %x6, 0  #227 pc 792
	lw	%x6, 4(%x2)  #228 pc 796
	addi	%x6, %x6, -1  #228 pc 800
	lw	%x7, 0(%x2)  #228 pc 804
	sw	%x8, 8(%x2)  #228 pc 808
	sw	%x1, 12(%x2)  #228 pc 812
	addi	%x2, %x2, 16  #228 pc 816
	jal	%x1, init.340  #228 pc 820
	addi	%x2, %x2, -16  #228 pc 824
	lw	%x1, 12(%x2) #228 pc 828
	lw	%x6, 8(%x2)  #229 pc 832
	ret #pc 836
	nop #pc 840
.global	min_caml_start
min_caml_start:
	addi	%x2, %x0, 1000000
	addi	%x3, %x0, 1002000
	addi	%x4, %x0, 8192
	addi	%x5, %x0, 65536
	addi	%x6, %x0, 0  #0 pc 860
	fmv	%f0, l.632  #0 pc 864
	sw	%x1, 0(%x2)  #221 pc 868
	addi	%x2, %x2, 4  #221 pc 872
	jal	%x1, create_float_array.308  #221 pc 876
	addi	%x2, %x2, -4  #221 pc 880
	lw	%x1, 0(%x2) #221 pc 884
	addi	%x8, %x6, 0  #221 pc 888
	addi	%x6, %x0, 2  #0 pc 892
	addi	%x7, %x0, 3  #0 pc 896
	sw	%x8, 0(%x2)  #230 pc 900
	sw	%x1, 4(%x2)  #230 pc 904
	addi	%x2, %x2, 8  #230 pc 908
	jal	%x1, make.344  #230 pc 912
	addi	%x2, %x2, -8  #230 pc 916
	lw	%x1, 4(%x2) #230 pc 920
	addi	%x7, %x0, 3  #0 pc 924
	addi	%x8, %x0, 2  #0 pc 928
	lw	%x9, 0(%x2)  #231 pc 932
	sw	%x6, 4(%x2)  #231 pc 936
	addi	%x6, %x7, 0  #0 pc 940
	addi	%x7, %x8, 0  #0 pc 944
	addi	%x8, %x9, 0  #0 pc 948
	sw	%x1, 8(%x2)  #231 pc 952
	addi	%x2, %x2, 12  #231 pc 956
	jal	%x1, make.344  #231 pc 960
	addi	%x2, %x2, -12  #231 pc 964
	lw	%x1, 8(%x2) #231 pc 968
	addi	%x7, %x0, 2  #0 pc 972
	lw	%x8, 0(%x2)  #232 pc 976
	sw	%x6, 8(%x2)  #232 pc 980
	addi	%x6, %x7, 0  #0 pc 984
	sw	%x1, 12(%x2)  #232 pc 988
	addi	%x2, %x2, 16  #232 pc 992
	jal	%x1, make.344  #232 pc 996
	addi	%x2, %x2, -16  #232 pc 1000
	lw	%x1, 12(%x2) #232 pc 1004
	addi	%x11, %x6, 0  #232 pc 1008
	lw	%x9, 4(%x2)  #233 pc 1012
	lw	%x6, 0(%x9)  #233 pc 1016
	fmv	%f0, l.637  #0 pc 1020
	fsw	%f0, 0(%x6)  #233 pc 1024
	lw	%x6, 0(%x9)  #233 pc 1028
	fmv	%f0, l.641  #0 pc 1032
	fsw	%f0, 4(%x6)  #233 pc 1036
	lw	%x6, 0(%x9)  #233 pc 1040
	fmv	%f0, l.645  #0 pc 1044
	fsw	%f0, 8(%x6)  #233 pc 1048
	lw	%x6, 4(%x9)  #234 pc 1052
	fmv	%f0, l.649  #0 pc 1056
	fsw	%f0, 0(%x6)  #234 pc 1060
	lw	%x6, 4(%x9)  #234 pc 1064
	fmv	%f0, l.653  #0 pc 1068
	fsw	%f0, 4(%x6)  #234 pc 1072
	lw	%x6, 4(%x9)  #234 pc 1076
	fmv	%f0, l.657  #0 pc 1080
	fsw	%f0, 8(%x6)  #234 pc 1084
	lw	%x10, 8(%x2)  #235 pc 1088
	lw	%x6, 0(%x10)  #235 pc 1092
	fmv	%f0, l.661  #0 pc 1096
	fsw	%f0, 0(%x6)  #235 pc 1100
	lw	%x6, 0(%x10)  #235 pc 1104
	fmv	%f0, l.665  #0 pc 1108
	fsw	%f0, 4(%x6)  #235 pc 1112
	lw	%x6, 4(%x10)  #236 pc 1116
	fmv	%f0, l.669  #0 pc 1120
	fsw	%f0, 0(%x6)  #236 pc 1124
	lw	%x6, 4(%x10)  #236 pc 1128
	fmv	%f0, l.673  #0 pc 1132
	fsw	%f0, 4(%x6)  #236 pc 1136
	lw	%x6, 8(%x10)  #237 pc 1140
	fmv	%f0, l.677  #0 pc 1144
	fsw	%f0, 0(%x6)  #237 pc 1148
	lw	%x6, 8(%x10)  #237 pc 1152
	fmv	%f0, l.681  #0 pc 1156
	fsw	%f0, 4(%x6)  #237 pc 1160
	addi	%x6, %x0, 2  #0 pc 1164
	addi	%x7, %x0, 3  #0 pc 1168
	sw	%x11, 12(%x2)  #238 pc 1172
	addi	%x8, %x6, 0  #0 pc 1176
	sw	%x1, 16(%x2)  #238 pc 1180
	addi	%x2, %x2, 20  #238 pc 1184
	jal	%x1, mul.332  #238 pc 1188
	addi	%x2, %x2, -20  #238 pc 1192
	lw	%x1, 16(%x2) #238 pc 1196
	lw	%x6, 12(%x2)  #239 pc 1200
	lw	%x7, 0(%x6)  #239 pc 1204
	flw	%f0, 0(%x7)  #239 pc 1208
	sw	%x1, 16(%x2)  #239 pc 1212
	addi	%x2, %x2, 20  #239 pc 1216
	jal	%x1, min_caml_truncate  #239 pc 1220
	addi	%x2, %x2, -20  #239 pc 1224
	lw	%x1, 16(%x2) #239 pc 1228
	sw	%x1, 16(%x2)  #239 pc 1232
	addi	%x2, %x2, 20  #239 pc 1236
	jal	%x1, print_int.291  #239 pc 1240
	addi	%x2, %x2, -20  #239 pc 1244
	lw	%x1, 16(%x2) #239 pc 1248
	sw	%x1, 16(%x2)  #240 pc 1252
	addi	%x2, %x2, 20  #240 pc 1256
	jal	%x1, min_caml_print_newline  #240 pc 1260
	addi	%x2, %x2, -20  #240 pc 1264
	lw	%x1, 16(%x2) #240 pc 1268
	lw	%x6, 12(%x2)  #241 pc 1272
	lw	%x7, 0(%x6)  #241 pc 1276
	flw	%f0, 4(%x7)  #241 pc 1280
	sw	%x1, 16(%x2)  #241 pc 1284
	addi	%x2, %x2, 20  #241 pc 1288
	jal	%x1, min_caml_truncate  #241 pc 1292
	addi	%x2, %x2, -20  #241 pc 1296
	lw	%x1, 16(%x2) #241 pc 1300
	sw	%x1, 16(%x2)  #241 pc 1304
	addi	%x2, %x2, 20  #241 pc 1308
	jal	%x1, print_int.291  #241 pc 1312
	addi	%x2, %x2, -20  #241 pc 1316
	lw	%x1, 16(%x2) #241 pc 1320
	sw	%x1, 16(%x2)  #242 pc 1324
	addi	%x2, %x2, 20  #242 pc 1328
	jal	%x1, min_caml_print_newline  #242 pc 1332
	addi	%x2, %x2, -20  #242 pc 1336
	lw	%x1, 16(%x2) #242 pc 1340
	lw	%x6, 12(%x2)  #243 pc 1344
	lw	%x7, 4(%x6)  #243 pc 1348
	flw	%f0, 0(%x7)  #243 pc 1352
	sw	%x1, 16(%x2)  #243 pc 1356
	addi	%x2, %x2, 20  #243 pc 1360
	jal	%x1, min_caml_truncate  #243 pc 1364
	addi	%x2, %x2, -20  #243 pc 1368
	lw	%x1, 16(%x2) #243 pc 1372
	sw	%x1, 16(%x2)  #243 pc 1376
	addi	%x2, %x2, 20  #243 pc 1380
	jal	%x1, print_int.291  #243 pc 1384
	addi	%x2, %x2, -20  #243 pc 1388
	lw	%x1, 16(%x2) #243 pc 1392
	sw	%x1, 16(%x2)  #244 pc 1396
	addi	%x2, %x2, 20  #244 pc 1400
	jal	%x1, min_caml_print_newline  #244 pc 1404
	addi	%x2, %x2, -20  #244 pc 1408
	lw	%x1, 16(%x2) #244 pc 1412
	lw	%x6, 12(%x2)  #245 pc 1416
	lw	%x6, 4(%x6)  #245 pc 1420
	flw	%f0, 4(%x6)  #245 pc 1424
	sw	%x1, 16(%x2)  #245 pc 1428
	addi	%x2, %x2, 20  #245 pc 1432
	jal	%x1, min_caml_truncate  #245 pc 1436
	addi	%x2, %x2, -20  #245 pc 1440
	lw	%x1, 16(%x2) #245 pc 1444
	sw	%x1, 16(%x2)  #245 pc 1448
	addi	%x2, %x2, 20  #245 pc 1452
	jal	%x1, print_int.291  #245 pc 1456
	addi	%x2, %x2, -20  #245 pc 1460
	lw	%x1, 16(%x2) #245 pc 1464
	sw	%x1, 16(%x2)  #246 pc 1468
	addi	%x2, %x2, 20  #246 pc 1472
	jal	%x1, min_caml_print_newline  #246 pc 1476
	addi	%x2, %x2, -20  #246 pc 1480
	lw	%x1, 16(%x2) #246 pc 1484
