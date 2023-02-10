.section	".rodata"
.align	8
.section	".text"
f.16:  #pc 0
	lw	%x6, 4(%x22)  #2 pc 4
	sub	%x5, %x5, %x6  #2 pc 8
	ret #pc 12
	nop #pc 16
g.20:  #pc 16
	addi	%x5, %x5, -2  #5 pc 20
	ret #pc 24
	nop #pc 28
f.24:  #pc 28
	addi	%x5, %x5, -1  #8 pc 32
	ret #pc 36
	nop #pc 40
i.45:  #pc 40
	lw	%x22, 4(%x22)  #12 pc 44
	lw	0(%x23), %x22  #12 pc 48
	jalr	%x0, %x23, 0  #12 pc 52
	nop #pc 56
g.28:  #pc 56
	mv	%x6, %x3  #12 pc 60
	addi	%x3, %x3, 8  #12 pc 64
	addi	%x24, %x0, 40  #12 i.45 pc 68
	mv	%x7, %x24  #12 pc 72
	sw	%x7, 0(%x6)  #12 pc 76
	sw	%x5, 4(%x6)  #12 pc 80
	mv	%x5, %x6  #13 pc 84
	ret #pc 88
	nop #pc 92
i.32:  #pc 92
	ret #pc 96
	nop #pc 100
f.35:  #pc 100
	addi	%x5, %x0, -1  #0 pc 104
	j	i.32  #18 pc 108
	nop #pc 112
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 4  #0 pc 116
	mv	%x22, %x3  #2 pc 120
	addi	%x3, %x3, 8  #2 pc 124
	addi	%x24, %x0, 0  #2 f.16 pc 128
	mv	%x6, %x24  #2 pc 132
	sw	%x6, 0(%x22)  #2 pc 136
	sw	%x5, 4(%x22)  #2 pc 140
	addi	%x5, %x0, 8  #0 pc 144
	sw	%x1, 12(%x2)  #3 pc 148
	lw	%x23, 0(%x22)  #3 pc 152
	addi	%x2, %x2, 16  #3 pc 156
	jalr	%x1, %x23, 0  #3 pc 160
	addi	%x2, %x2, -16  #3 pc 164
	lw	%x1, 12(%x2)  #3 pc 168
	sw	%x1, 12(%x2)  #4 pc 172
	addi	%x2, %x2, 16  #4 pc 176
	jal	%x1, min_caml_print_var  #4 pc 180
	addi	%x2, %x2, -16  #4 pc 184
	lw	%x1, 12(%x2) #4 pc 188
	addi	%x5, %x0, 6  #0 pc 192
	sw	%x1, 12(%x2)  #6 pc 196
	addi	%x2, %x2, 16  #6 pc 200
	jal	%x1, g.20  #6 pc 204
	addi	%x2, %x2, -16  #6 pc 208
	lw	%x1, 12(%x2) #6 pc 212
	sw	%x1, 12(%x2)  #7 pc 216
	addi	%x2, %x2, 16  #7 pc 220
	jal	%x1, min_caml_print_var2  #7 pc 224
	addi	%x2, %x2, -16  #7 pc 228
	lw	%x1, 12(%x2) #7 pc 232
	mv	%x5, %x3  #8 pc 236
	addi	%x3, %x3, 8  #8 pc 240
	addi	%x24, %x0, 28  #8 f.24 pc 244
	mv	%x6, %x24  #8 pc 248
	sw	%x6, 0(%x5)  #8 pc 252
	sw	%x1, 12(%x2)  #10 pc 256
	addi	%x2, %x2, 16  #10 pc 260
	jal	%x1, min_caml_print_var3  #10 pc 264
	addi	%x2, %x2, -16  #10 pc 268
	lw	%x1, 12(%x2) #10 pc 272
	mv	%x5, %x3  #11 pc 276
	addi	%x3, %x3, 8  #11 pc 280
	addi	%x24, %x0, 56  #11 g.28 pc 284
	mv	%x6, %x24  #11 pc 288
	sw	%x6, 0(%x5)  #11 pc 292
	sw	%x1, 12(%x2)  #15 pc 296
	addi	%x2, %x2, 16  #15 pc 300
	jal	%x1, min_caml_print_var4  #15 pc 304
	addi	%x2, %x2, -16  #15 pc 308
	lw	%x1, 12(%x2) #15 pc 312
	mv	%x5, %x3  #16 pc 316
	addi	%x3, %x3, 8  #16 pc 320
	addi	%x24, %x0, 92  #16 i.32 pc 324
	mv	%x6, %x24  #16 pc 328
	sw	%x6, 0(%x5)  #16 pc 332
	addi	%x6, %x0, 7  #0 pc 336
	sw	%x5, 8(%x2)  #20 pc 340
	mv	%x5, %x6 #pc 344
	sw	%x1, 12(%x2)  #20 pc 348
	addi	%x2, %x2, 16  #20 pc 352
	jal	%x1, f.35  #20 pc 356
	addi	%x2, %x2, -16  #20 pc 360
	lw	%x1, 12(%x2) #20 pc 364
	mv	%x6, %x3  #20 pc 368
	addi	%x3, %x3, 8  #20 pc 372
	sw	%x5, 4(%x6)  #20 pc 376
	lw	%x5, 8(%x2)  #20 pc 380
	sw	%x5, 0(%x6)  #20 pc 384
	mv	%x5, %x6  #20 pc 388
	sw	%x1, 12(%x2)  #20 pc 392
	addi	%x2, %x2, 16  #20 pc 396
	jal	%x1, min_caml_print_var5  #20 pc 400
	addi	%x2, %x2, -16  #20 pc 404
	lw	%x1, 12(%x2) #20 pc 408
	addi	%x2, %x2, 112
