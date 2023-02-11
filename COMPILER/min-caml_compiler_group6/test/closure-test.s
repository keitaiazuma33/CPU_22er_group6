.section	".rodata"
.align	8
.section	".text"
f.16:  #pc 0
	addi	%x24, %x0, 4  #pc 0
	add	%x24, %x24, %x22  #2 pc 4
	lw	%x6, 0(%x24)  #2 pc 8
	sub	%x5, %x5, %x6  #2 pc 12
	ret #pc 16
	nop #pc 20
g.20:  #pc 24
	addi	%x5, %x5, -2  #5 pc 24
	ret #pc 28
	nop #pc 32
f.24:  #pc 36
	addi	%x5, %x5, -1  #8 pc 36
	ret #pc 40
	nop #pc 44
i.45:  #pc 48
	addi	%x24, %x0, 4  #pc 48
	add	%x24, %x24, %x22  #12 pc 52
	lw	%x22, 0(%x24)  #12 pc 56
	lw	%x23, 0(%x22)  #12 pc 60
	jalr	%x0, %x23, 0  #12 pc 64
	nop #pc 68
g.28:  #pc 72
	addi	%x6, %x3, 0  #12 pc 72
	addi	%x3, %x3, 8  #12 pc 76
	addi	%x24, %x0, 48  #12 i.45 pc 80
	addi	%x7, %x24, 0  #12 pc 84
	add	%x24, %x0, %x6  #12 pc 88
	sw	%x7, 0(%x24)  #12 pc 92
	addi	%x24, %x0, 4  #pc 96
	add	%x24, %x24, %x6  #12 pc 100
	sw	%x5, 0(%x24)  #12 pc 104
	addi	%x5, %x6, 0  #13 pc 108
	ret #pc 112
	nop #pc 116
i.32:  #pc 120
	ret #pc 120
	nop #pc 124
f.35:  #pc 128
	addi	%x5, %x0, -1  #0 pc 128
	j	i.32  #18 pc 132
	nop #pc 136
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 4  #0 pc 140
	addi	%x22, %x3, 0  #2 pc 144
	addi	%x3, %x3, 8  #2 pc 148
	addi	%x24, %x0, 0  #2 f.16 pc 152
	addi	%x6, %x24, 0  #2 pc 156
	add	%x24, %x0, %x22  #2 pc 160
	sw	%x6, 0(%x24)  #2 pc 164
	addi	%x24, %x0, 4  #pc 168
	add	%x24, %x24, %x22  #2 pc 172
	sw	%x5, 0(%x24)  #2 pc 176
	addi	%x5, %x0, 8  #0 pc 180
	sw	%x1, 12(%x2)  #3 pc 184
	lw	%x23, 0(%x22)  #3 pc 188
	addi	%x2, %x2, 16  #3 pc 192
	jalr	%x1, %x23, 0  #3 pc 196
	addi	%x2, %x2, -16  #3 pc 200
	lw	%x1, 12(%x2)  #3 pc 204
	sw	%x1, 12(%x2)  #4 pc 208
	addi	%x2, %x2, 16  #4 pc 212
	jal	%x1, min_caml_print_var  #4 pc 216
	addi	%x2, %x2, -16  #4 pc 220
	lw	%x1, 12(%x2) #4 pc 224
	addi	%x5, %x0, 6  #0 pc 228
	sw	%x1, 12(%x2)  #6 pc 232
	addi	%x2, %x2, 16  #6 pc 236
	jal	%x1, g.20  #6 pc 240
	addi	%x2, %x2, -16  #6 pc 244
	lw	%x1, 12(%x2) #6 pc 248
	sw	%x1, 12(%x2)  #7 pc 252
	addi	%x2, %x2, 16  #7 pc 256
	jal	%x1, min_caml_print_var2  #7 pc 260
	addi	%x2, %x2, -16  #7 pc 264
	lw	%x1, 12(%x2) #7 pc 268
	addi	%x5, %x3, 0  #8 pc 272
	addi	%x3, %x3, 8  #8 pc 276
	addi	%x24, %x0, 36  #8 f.24 pc 280
	addi	%x6, %x24, 0  #8 pc 284
	add	%x24, %x0, %x5  #8 pc 288
	sw	%x6, 0(%x24)  #8 pc 292
	sw	%x1, 12(%x2)  #10 pc 296
	addi	%x2, %x2, 16  #10 pc 300
	jal	%x1, min_caml_print_var3  #10 pc 304
	addi	%x2, %x2, -16  #10 pc 308
	lw	%x1, 12(%x2) #10 pc 312
	addi	%x5, %x3, 0  #11 pc 316
	addi	%x3, %x3, 8  #11 pc 320
	addi	%x24, %x0, 72  #11 g.28 pc 324
	addi	%x6, %x24, 0  #11 pc 328
	add	%x24, %x0, %x5  #11 pc 332
	sw	%x6, 0(%x24)  #11 pc 336
	sw	%x1, 12(%x2)  #15 pc 340
	addi	%x2, %x2, 16  #15 pc 344
	jal	%x1, min_caml_print_var4  #15 pc 348
	addi	%x2, %x2, -16  #15 pc 352
	lw	%x1, 12(%x2) #15 pc 356
	addi	%x5, %x3, 0  #16 pc 360
	addi	%x3, %x3, 8  #16 pc 364
	addi	%x24, %x0, 120  #16 i.32 pc 368
	addi	%x6, %x24, 0  #16 pc 372
	add	%x24, %x0, %x5  #16 pc 376
	sw	%x6, 0(%x24)  #16 pc 380
	addi	%x6, %x0, 7  #0 pc 384
	sw	%x5, 8(%x2)  #20 pc 388
	addi	%x5, %x6, 0  #0 pc 392
	sw	%x1, 12(%x2)  #20 pc 396
	addi	%x2, %x2, 16  #20 pc 400
	jal	%x1, f.35  #20 pc 404
	addi	%x2, %x2, -16  #20 pc 408
	lw	%x1, 12(%x2) #20 pc 412
	addi	%x6, %x3, 0  #20 pc 416
	addi	%x3, %x3, 8  #20 pc 420
	addi	%x24, %x0, 4  #pc 424
	add	%x24, %x24, %x6  #20 pc 428
	sw	%x5, 0(%x24)  #20 pc 432
	lw	%x5, 8(%x2)  #20 pc 436
	add	%x24, %x0, %x6  #20 pc 440
	sw	%x5, 0(%x24)  #20 pc 444
	addi	%x5, %x6, 0  #20 pc 448
	sw	%x1, 12(%x2)  #20 pc 452
	addi	%x2, %x2, 16  #20 pc 456
	jal	%x1, min_caml_print_var5  #20 pc 460
	addi	%x2, %x2, -16  #20 pc 464
	lw	%x1, 12(%x2) #20 pc 468
	addi	%x2, %x2, 112
