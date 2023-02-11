.section	".rodata"
.align	8
.section	".text"
composed.22:  #pc 0
	addi	%x24, %x0, 8  #pc 4
	add	%x24, %x24, %x22  #0 pc 8
	lw	%x6, 0(%x24)  #0 pc 12
	addi	%x24, %x0, 4  #pc 16
	add	%x24, %x24, %x22  #0 pc 20
	lw	%x22, 0(%x24)  #0 pc 24
	sw	%x6, 0(%x2)  #2 pc 28
	sw	%x1, 4(%x2)  #2 pc 32
	lw	%x23, 0(%x22)  #2 pc 36
	addi	%x2, %x2, 8  #2 pc 40
	jalr	%x1, %x23, 0  #2 pc 44
	addi	%x2, %x2, -8  #2 pc 48
	lw	%x1, 4(%x2)  #2 pc 52
	lw	%x22, 0(%x2)  #2 pc 56
	lw	%x23, 0(%x22)  #2 pc 60
	jalr	%x0, %x23, 0  #2 pc 64
	nop #pc 68
compose.7:  #pc 68
	addi	%x7, %x3, 0  #2 pc 72
	addi	%x3, %x3, 16  #2 pc 76
	addi	%x24, %x0, 0  #2 composed.22 pc 80
	addi	%x9, %x24, 0  #2 pc 84
	add	%x24, %x0, %x7  #2 pc 88
	sw	%x9, 0(%x24)  #2 pc 92
	addi	%x24, %x0, 8  #pc 96
	add	%x24, %x24, %x7  #2 pc 100
	sw	%x6, 0(%x24)  #2 pc 104
	addi	%x24, %x0, 4  #pc 108
	add	%x24, %x24, %x7  #2 pc 112
	sw	%x5, 0(%x24)  #2 pc 116
	addi	%x5, %x7, 0  #3 pc 120
	ret #pc 124
	nop #pc 128
dbl.10:  #pc 128
	add	%x5, %x5, %x5  #4 pc 132
	ret #pc 136
	nop #pc 140
inc.12:  #pc 140
	addi	%x5, %x5, 1  #5 pc 144
	ret #pc 148
	nop #pc 152
dec.14:  #pc 152
	addi	%x5, %x5, -1  #6 pc 156
	ret #pc 160
	nop #pc 164
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x3, 0  #4 pc 168
	addi	%x3, %x3, 8  #4 pc 172
	addi	%x24, %x0, 128  #4 dbl.10 pc 176
	addi	%x6, %x24, 0  #4 pc 180
	add	%x24, %x0, %x5  #4 pc 184
	sw	%x6, 0(%x24)  #4 pc 188
	addi	%x6, %x3, 0  #5 pc 192
	addi	%x3, %x3, 8  #5 pc 196
	addi	%x24, %x0, 140  #5 inc.12 pc 200
	addi	%x7, %x24, 0  #5 pc 204
	add	%x24, %x0, %x6  #5 pc 208
	sw	%x7, 0(%x24)  #5 pc 212
	addi	%x7, %x3, 0  #6 pc 216
	addi	%x3, %x3, 8  #6 pc 220
	addi	%x24, %x0, 152  #6 dec.14 pc 224
	addi	%x9, %x24, 0  #6 pc 228
	add	%x24, %x0, %x7  #6 pc 232
	sw	%x9, 0(%x24)  #6 pc 236
	sw	%x6, 8(%x2)  #7 pc 240
	addi	%x6, %x7, 0  #0 pc 248
	sw	%x1, 12(%x2)  #7 pc 252
	addi	%x2, %x2, 16  #7 pc 256
	jal	%x1, compose.7  #7 pc 260
	addi	%x2, %x2, -16  #7 pc 264
	lw	%x1, 12(%x2) #7 pc 268
	addi	%x6, %x5, 0  #7 pc 272
	lw	%x5, 8(%x2)  #7 pc 276
	sw	%x1, 12(%x2)  #7 pc 280
	addi	%x2, %x2, 16  #7 pc 284
	jal	%x1, compose.7  #7 pc 288
	addi	%x2, %x2, -16  #7 pc 292
	lw	%x1, 12(%x2) #7 pc 296
	addi	%x22, %x5, 0  #7 pc 300
	addi	%x5, %x0, 123  #0 pc 304
	sw	%x1, 12(%x2)  #8 pc 308
	lw	%x23, 0(%x22)  #8 pc 312
	addi	%x2, %x2, 16  #8 pc 316
	jalr	%x1, %x23, 0  #8 pc 320
	addi	%x2, %x2, -16  #8 pc 324
	lw	%x1, 12(%x2)  #8 pc 328
	sw	%x1, 12(%x2)  #8 pc 332
	addi	%x2, %x2, 16  #8 pc 336
	jal	%x1, min_caml_print_int  #8 pc 340
	addi	%x2, %x2, -16  #8 pc 344
	lw	%x1, 12(%x2) #8 pc 348
	addi	%x2, %x2, 112
