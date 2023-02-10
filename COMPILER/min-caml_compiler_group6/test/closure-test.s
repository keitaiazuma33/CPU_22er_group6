.section	".rodata"
.align	8
.section	".text"
f.16:  #pc 0
	addi	%x24, %x0, 4  #pc 4
	add	%x24, %x24, %x22  #2 pc 8
	lw	%x6, 0(%x24)  #2 pc 12
	sub	%x5, %x5, %x6  #2 pc 16
	ret #pc 20
	nop #pc 24
g.20:  #pc 24
	addi	%x5, %x5, -2  #5 pc 28
	ret #pc 32
	nop #pc 36
f.24:  #pc 36
	addi	%x5, %x5, -1  #8 pc 40
	ret #pc 44
	nop #pc 48
i.45:  #pc 48
	addi	%x24, %x0, 4  #pc 52
	add	%x24, %x24, %x22  #12 pc 56
	lw	%x22, 0(%x24)  #12 pc 60
	lw	%x23, 0(%x22)  #12 pc 64
	jalr	%x0, %x23, 0  #12 pc 68
	nop #pc 72
g.28:  #pc 72
	mv	%x6, %x3  #12 pc 76
	addi	%x3, %x3, 8  #12 pc 80
	addi	%x24, %x0, 48  #12 i.45 pc 84
	mv	%x7, %x24  #12 pc 88
	add	%x24, %x0, %x6  #12 pc 92
	sw	%x7, 0(%x24)  #12 pc 96
	addi	%x24, %x0, 4  #pc 100
	add	%x24, %x24, %x6  #12 pc 104
	sw	%x5, 0(%x24)  #12 pc 108
	mv	%x5, %x6  #13 pc 112
	ret #pc 116
	nop #pc 120
i.32:  #pc 120
	ret #pc 124
	nop #pc 128
f.35:  #pc 128
	addi	%x5, %x0, -1  #0 pc 132
	j	i.32  #18 pc 136
	nop #pc 140
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 4  #0 pc 144
	mv	%x22, %x3  #2 pc 148
	addi	%x3, %x3, 8  #2 pc 152
	addi	%x24, %x0, 0  #2 f.16 pc 156
	mv	%x6, %x24  #2 pc 160
	add	%x24, %x0, %x22  #2 pc 164
	sw	%x6, 0(%x24)  #2 pc 168
	addi	%x24, %x0, 4  #pc 172
	add	%x24, %x24, %x22  #2 pc 176
	sw	%x5, 0(%x24)  #2 pc 180
	addi	%x5, %x0, 8  #0 pc 184
	sw	%x1, 12(%x2)  #3 pc 188
	lw	%x23, 0(%x22)  #3 pc 192
	addi	%x2, %x2, 16  #3 pc 196
	jalr	%x1, %x23, 0  #3 pc 200
	addi	%x2, %x2, -16  #3 pc 204
	lw	%x1, 12(%x2)  #3 pc 208
	sw	%x1, 12(%x2)  #4 pc 212
	addi	%x2, %x2, 16  #4 pc 216
	jal	%x1, min_caml_print_var  #4 pc 220
	addi	%x2, %x2, -16  #4 pc 224
	lw	%x1, 12(%x2) #4 pc 228
	addi	%x5, %x0, 6  #0 pc 232
	sw	%x1, 12(%x2)  #6 pc 236
	addi	%x2, %x2, 16  #6 pc 240
	jal	%x1, g.20  #6 pc 244
	addi	%x2, %x2, -16  #6 pc 248
	lw	%x1, 12(%x2) #6 pc 252
	sw	%x1, 12(%x2)  #7 pc 256
	addi	%x2, %x2, 16  #7 pc 260
	jal	%x1, min_caml_print_var2  #7 pc 264
	addi	%x2, %x2, -16  #7 pc 268
	lw	%x1, 12(%x2) #7 pc 272
	mv	%x5, %x3  #8 pc 276
	addi	%x3, %x3, 8  #8 pc 280
	addi	%x24, %x0, 36  #8 f.24 pc 284
	mv	%x6, %x24  #8 pc 288
	add	%x24, %x0, %x5  #8 pc 292
	sw	%x6, 0(%x24)  #8 pc 296
	sw	%x1, 12(%x2)  #10 pc 300
	addi	%x2, %x2, 16  #10 pc 304
	jal	%x1, min_caml_print_var3  #10 pc 308
	addi	%x2, %x2, -16  #10 pc 312
	lw	%x1, 12(%x2) #10 pc 316
	mv	%x5, %x3  #11 pc 320
	addi	%x3, %x3, 8  #11 pc 324
	addi	%x24, %x0, 72  #11 g.28 pc 328
	mv	%x6, %x24  #11 pc 332
	add	%x24, %x0, %x5  #11 pc 336
	sw	%x6, 0(%x24)  #11 pc 340
	sw	%x1, 12(%x2)  #15 pc 344
	addi	%x2, %x2, 16  #15 pc 348
	jal	%x1, min_caml_print_var4  #15 pc 352
	addi	%x2, %x2, -16  #15 pc 356
	lw	%x1, 12(%x2) #15 pc 360
	mv	%x5, %x3  #16 pc 364
	addi	%x3, %x3, 8  #16 pc 368
	addi	%x24, %x0, 120  #16 i.32 pc 372
	mv	%x6, %x24  #16 pc 376
	add	%x24, %x0, %x5  #16 pc 380
	sw	%x6, 0(%x24)  #16 pc 384
	addi	%x6, %x0, 7  #0 pc 388
	sw	%x5, 8(%x2)  #20 pc 392
	mv	%x5, %x6 #pc 396
	sw	%x1, 12(%x2)  #20 pc 400
	addi	%x2, %x2, 16  #20 pc 404
	jal	%x1, f.35  #20 pc 408
	addi	%x2, %x2, -16  #20 pc 412
	lw	%x1, 12(%x2) #20 pc 416
	mv	%x6, %x3  #20 pc 420
	addi	%x3, %x3, 8  #20 pc 424
	addi	%x24, %x0, 4  #pc 428
	add	%x24, %x24, %x6  #20 pc 432
	sw	%x5, 0(%x24)  #20 pc 436
	lw	%x5, 8(%x2)  #20 pc 440
	add	%x24, %x0, %x6  #20 pc 444
	sw	%x5, 0(%x24)  #20 pc 448
	mv	%x5, %x6  #20 pc 452
	sw	%x1, 12(%x2)  #20 pc 456
	addi	%x2, %x2, 16  #20 pc 460
	jal	%x1, min_caml_print_var5  #20 pc 464
	addi	%x2, %x2, -16  #20 pc 468
	lw	%x1, 12(%x2) #20 pc 472
	addi	%x2, %x2, 112
