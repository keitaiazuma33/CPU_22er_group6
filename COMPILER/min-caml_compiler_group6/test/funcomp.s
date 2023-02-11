.section	".rodata"
.align	8
.section	".text"
composed.22:  #pc 0
	addi	%x24, %x0, 8  #pc 0
	add	%x24, %x24, %x22  #0 pc 4
	lw	%x6, 0(%x24)  #0 pc 8
	addi	%x24, %x0, 4  #pc 12
	add	%x24, %x24, %x22  #0 pc 16
	lw	%x22, 0(%x24)  #0 pc 20
	sw	%x6, 0(%x2)  #2 pc 24
	sw	%x1, 4(%x2)  #2 pc 28
	lw	%x23, 0(%x22)  #2 pc 32
	addi	%x2, %x2, 8  #2 pc 36
	jalr	%x1, %x23, 0  #2 pc 40
	addi	%x2, %x2, -8  #2 pc 44
	lw	%x1, 4(%x2)  #2 pc 48
	lw	%x22, 0(%x2)  #2 pc 52
	lw	%x23, 0(%x22)  #2 pc 56
	jalr	%x0, %x23, 0  #2 pc 60
	nop #pc 64
compose.7:  #pc 68
	addi	%x7, %x3, 0  #2 pc 68
	addi	%x3, %x3, 16  #2 pc 72
	addi	%x24, %x0, 0  #2 composed.22 pc 76
	addi	%x9, %x24, 0  #2 pc 80
	add	%x24, %x0, %x7  #2 pc 84
	sw	%x9, 0(%x24)  #2 pc 88
	addi	%x24, %x0, 8  #pc 92
	add	%x24, %x24, %x7  #2 pc 96
	sw	%x6, 0(%x24)  #2 pc 100
	addi	%x24, %x0, 4  #pc 104
	add	%x24, %x24, %x7  #2 pc 108
	sw	%x5, 0(%x24)  #2 pc 112
	addi	%x5, %x7, 0  #3 pc 116
	ret #pc 120
	nop #pc 124
dbl.10:  #pc 128
	add	%x5, %x5, %x5  #4 pc 128
	ret #pc 132
	nop #pc 136
inc.12:  #pc 140
	addi	%x5, %x5, 1  #5 pc 140
	ret #pc 144
	nop #pc 148
dec.14:  #pc 152
	addi	%x5, %x5, -1  #6 pc 152
	ret #pc 156
	nop #pc 160
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x3, 0  #4 pc 164
	addi	%x3, %x3, 8  #4 pc 168
	addi	%x24, %x0, 128  #4 dbl.10 pc 172
	addi	%x6, %x24, 0  #4 pc 176
	add	%x24, %x0, %x5  #4 pc 180
	sw	%x6, 0(%x24)  #4 pc 184
	addi	%x6, %x3, 0  #5 pc 188
	addi	%x3, %x3, 8  #5 pc 192
	addi	%x24, %x0, 140  #5 inc.12 pc 196
	addi	%x7, %x24, 0  #5 pc 200
	add	%x24, %x0, %x6  #5 pc 204
	sw	%x7, 0(%x24)  #5 pc 208
	addi	%x7, %x3, 0  #6 pc 212
	addi	%x3, %x3, 8  #6 pc 216
	addi	%x24, %x0, 152  #6 dec.14 pc 220
	addi	%x9, %x24, 0  #6 pc 224
	add	%x24, %x0, %x7  #6 pc 228
	sw	%x9, 0(%x24)  #6 pc 232
	sw	%x6, 8(%x2)  #7 pc 236
	addi	%x6, %x7, 0  #0 pc 240
	sw	%x1, 12(%x2)  #7 pc 244
	addi	%x2, %x2, 16  #7 pc 248
	jal	%x1, compose.7  #7 pc 252
	addi	%x2, %x2, -16  #7 pc 256
	lw	%x1, 12(%x2) #7 pc 260
	addi	%x6, %x5, 0  #7 pc 264
	lw	%x5, 8(%x2)  #7 pc 268
	sw	%x1, 12(%x2)  #7 pc 272
	addi	%x2, %x2, 16  #7 pc 276
	jal	%x1, compose.7  #7 pc 280
	addi	%x2, %x2, -16  #7 pc 284
	lw	%x1, 12(%x2) #7 pc 288
	addi	%x22, %x5, 0  #7 pc 292
	addi	%x5, %x0, 123  #0 pc 296
	sw	%x1, 12(%x2)  #8 pc 300
	lw	%x23, 0(%x22)  #8 pc 304
	addi	%x2, %x2, 16  #8 pc 308
	jalr	%x1, %x23, 0  #8 pc 312
	addi	%x2, %x2, -16  #8 pc 316
	lw	%x1, 12(%x2)  #8 pc 320
	sw	%x1, 12(%x2)  #8 pc 324
	addi	%x2, %x2, 16  #8 pc 328
	jal	%x1, min_caml_print_int  #8 pc 332
	addi	%x2, %x2, -16  #8 pc 336
	lw	%x1, 12(%x2) #8 pc 340
	addi	%x2, %x2, 112
