.section	".rodata"
.align	8
.section	".text"
f.16:  #pc 0
	lw	%x6, 4(%x29)  #2 pc 0
	sub	%x5, %x5, %x6  #2 pc 4
	ret #pc 8
	nop #pc 12
g.20:  #pc 16
	addi	%x5, %x5, -2  #5 pc 16
	ret #pc 20
	nop #pc 24
f.24:  #pc 28
	addi	%x5, %x5, -1  #8 pc 28
	ret #pc 32
	nop #pc 36
i.45:  #pc 40
	lw	%x29, 4(%x29)  #12 pc 40
	lw	%x30, 0(%x29)  #12 pc 44
	jalr	%x0, %x30, 0  #12 pc 48
	nop #pc 52
g.28:  #pc 56
	addi	%x6, %x3, 0  #12 pc 56
	addi	%x3, %x3, 8  #12 pc 60
	addi	%x31, %x0, 40  #12 i.45 pc 64
	addi	%x7, %x31, 0  #12 pc 68
	sw	%x7, 0(%x6)  #12 pc 72
	sw	%x5, 4(%x6)  #12 pc 76
	addi	%x5, %x6, 0  #13 pc 80
	ret #pc 84
	nop #pc 88
i.32:  #pc 92
	ret #pc 92
	nop #pc 96
f.35:  #pc 100
	addi	%x5, %x0, -1  #0 pc 100
	j	i.32  #18 pc 104
	nop #pc 108
.global	min_caml_start
min_caml_start:
	addi	%x2, %x0, 0
	addi	%x3, %x0, 1024
	addi	%x5, %x0, 4  #0 pc 120
	addi	%x29, %x3, 0  #2 pc 124
	addi	%x3, %x3, 8  #2 pc 128
	addi	%x31, %x0, 0  #2 f.16 pc 132
	addi	%x6, %x31, 0  #2 pc 136
	sw	%x6, 0(%x29)  #2 pc 140
	sw	%x5, 4(%x29)  #2 pc 144
	addi	%x5, %x0, 8  #0 pc 148
	sw	%x1, 0(%x2)  #3 pc 152
	lw	%x30, 0(%x29)  #3 pc 156
	addi	%x2, %x2, 4  #3 pc 160
	jalr	%x1, %x30, 0  #3 pc 164
	addi	%x2, %x2, -4  #3 pc 168
	lw	%x1, 0(%x2)  #3 pc 172
	sw	%x1, 0(%x2)  #4 pc 176
	addi	%x2, %x2, 4  #4 pc 180
	jal	%x1, min_caml_print_var  #4 pc 184
	addi	%x2, %x2, -4  #4 pc 188
	lw	%x1, 0(%x2) #4 pc 192
	addi	%x5, %x0, 6  #0 pc 196
	sw	%x1, 0(%x2)  #6 pc 200
	addi	%x2, %x2, 4  #6 pc 204
	jal	%x1, g.20  #6 pc 208
	addi	%x2, %x2, -4  #6 pc 212
	lw	%x1, 0(%x2) #6 pc 216
	sw	%x1, 0(%x2)  #7 pc 220
	addi	%x2, %x2, 4  #7 pc 224
	jal	%x1, min_caml_print_var2  #7 pc 228
	addi	%x2, %x2, -4  #7 pc 232
	lw	%x1, 0(%x2) #7 pc 236
	addi	%x5, %x3, 0  #8 pc 240
	addi	%x3, %x3, 4  #8 pc 244
	addi	%x31, %x0, 28  #8 f.24 pc 248
	addi	%x6, %x31, 0  #8 pc 252
	sw	%x6, 0(%x5)  #8 pc 256
	sw	%x1, 0(%x2)  #10 pc 260
	addi	%x2, %x2, 4  #10 pc 264
	jal	%x1, min_caml_print_var3  #10 pc 268
	addi	%x2, %x2, -4  #10 pc 272
	lw	%x1, 0(%x2) #10 pc 276
	addi	%x5, %x3, 0  #11 pc 280
	addi	%x3, %x3, 4  #11 pc 284
	addi	%x31, %x0, 56  #11 g.28 pc 288
	addi	%x6, %x31, 0  #11 pc 292
	sw	%x6, 0(%x5)  #11 pc 296
	sw	%x1, 0(%x2)  #15 pc 300
	addi	%x2, %x2, 4  #15 pc 304
	jal	%x1, min_caml_print_var4  #15 pc 308
	addi	%x2, %x2, -4  #15 pc 312
	lw	%x1, 0(%x2) #15 pc 316
	addi	%x5, %x3, 0  #16 pc 320
	addi	%x3, %x3, 4  #16 pc 324
	addi	%x31, %x0, 92  #16 i.32 pc 328
	addi	%x6, %x31, 0  #16 pc 332
	sw	%x6, 0(%x5)  #16 pc 336
	addi	%x6, %x0, 7  #0 pc 340
	sw	%x5, 0(%x2)  #20 pc 344
	addi	%x5, %x6, 0  #0 pc 348
	sw	%x1, 4(%x2)  #20 pc 352
	addi	%x2, %x2, 8  #20 pc 356
	jal	%x1, f.35  #20 pc 360
	addi	%x2, %x2, -8  #20 pc 364
	lw	%x1, 4(%x2) #20 pc 368
	addi	%x6, %x3, 0  #20 pc 372
	addi	%x3, %x3, 8  #20 pc 376
	sw	%x5, 4(%x6)  #20 pc 380
	lw	%x5, 0(%x2)  #20 pc 384
	sw	%x5, 0(%x6)  #20 pc 388
	addi	%x5, %x6, 0  #20 pc 392
	sw	%x1, 4(%x2)  #20 pc 396
	addi	%x2, %x2, 8  #20 pc 400
	jal	%x1, min_caml_print_var5  #20 pc 404
	addi	%x2, %x2, -8  #20 pc 408
	lw	%x1, 4(%x2) #20 pc 412
	addi	%x2, %x2, 112
