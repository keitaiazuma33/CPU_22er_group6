.section	".rodata"
.align	8
.section	".text"
print_int.177:  #pc 0
	sw	%x5, 0(%x6)  #112 pc 0
	addi	%x5, %x5, 4  #112 pc 4
	ret #pc 8
	nop #pc 12
g.223:  #pc 16
	lw	%x7, 40(%x29)  #0 pc 16
	lw	%x8, 36(%x29)  #0 pc 20
	lw	%x9, 32(%x29)  #0 pc 24
	lw	%x10, 28(%x29)  #0 pc 28
	lw	%x11, 24(%x29)  #0 pc 32
	lw	%x12, 20(%x29)  #0 pc 36
	lw	%x13, 16(%x29)  #0 pc 40
	lw	%x14, 12(%x29)  #0 pc 44
	lw	%x15, 8(%x29)  #0 pc 48
	lw	%x16, 4(%x29)  #0 pc 52
	add	%x14, %x16, %x14  #211 pc 56
	add	%x13, %x14, %x13  #211 pc 60
	add	%x12, %x13, %x12  #211 pc 64
	add	%x11, %x12, %x11  #211 pc 68
	add	%x10, %x11, %x10  #211 pc 72
	add	%x9, %x10, %x9  #211 pc 76
	add	%x8, %x9, %x8  #211 pc 80
	add	%x7, %x8, %x7  #211 pc 84
	add	%x7, %x7, %x15  #211 pc 88
	bge	%x0, %x6, 12  #212 pc 92
	j	ble_else.392 #pc 96
	nop #pc 100
	sub	%x6, %x0, %x6  #212 pc 104
	lw	%x30, 0(%x29)  #212 pc 108
	jalr	%x0, %x30, 0  #212 pc 112
	nop #pc 116
ble_else.392: #pc 120
	addi	%x6, %x7, 0  #212 pc 120
	ret #pc 124
	nop #pc 128
h.197:  #pc 132
	lw	%x7, 36(%x6)  #209 pc 132
	lw	%x8, 32(%x6)  #209 pc 136
	lw	%x9, 28(%x6)  #209 pc 140
	lw	%x10, 24(%x6)  #209 pc 144
	lw	%x11, 20(%x6)  #209 pc 148
	lw	%x12, 16(%x6)  #209 pc 152
	lw	%x13, 12(%x6)  #209 pc 156
	lw	%x14, 8(%x6)  #209 pc 160
	lw	%x15, 4(%x6)  #209 pc 164
	lw	%x6, 0(%x6)  #209 pc 168
	addi	%x29, %x3, 0  #210 pc 172
	addi	%x3, %x3, 44  #210 pc 176
	addi	%x31, %x0, 16  #210 g.223 pc 180
	addi	%x16, %x31, 0  #210 pc 184
	sw	%x16, 0(%x29)  #210 pc 188
	sw	%x8, 40(%x29)  #210 pc 192
	sw	%x9, 36(%x29)  #210 pc 196
	sw	%x10, 32(%x29)  #210 pc 200
	sw	%x11, 28(%x29)  #210 pc 204
	sw	%x12, 24(%x29)  #210 pc 208
	sw	%x13, 20(%x29)  #210 pc 212
	sw	%x14, 16(%x29)  #210 pc 216
	sw	%x15, 12(%x29)  #210 pc 220
	sw	%x7, 8(%x29)  #210 pc 224
	sw	%x6, 4(%x29)  #210 pc 228
	addi	%x6, %x0, 1  #0 pc 232
	lw	%x30, 0(%x29)  #213 pc 236
	jalr	%x0, %x30, 0  #213 pc 240
	nop #pc 244
.global	min_caml_start
min_caml_start:
	addi	%x2, %x0, 0
	addi	%x3, %x0, 1024
	addi	%x6, %x0, 1  #0 pc 256
	addi	%x7, %x0, 2  #0 pc 260
	addi	%x8, %x0, 3  #0 pc 264
	addi	%x9, %x0, 4  #0 pc 268
	addi	%x10, %x0, 5  #0 pc 272
	addi	%x11, %x0, 6  #0 pc 276
	addi	%x12, %x0, 7  #0 pc 280
	addi	%x13, %x0, 8  #0 pc 284
	addi	%x14, %x0, 9  #0 pc 288
	addi	%x15, %x0, 10  #0 pc 292
	addi	%x16, %x3, 0  #214 pc 296
	addi	%x3, %x3, 40  #214 pc 300
	sw	%x15, 36(%x16)  #214 pc 304
	sw	%x14, 32(%x16)  #214 pc 308
	sw	%x13, 28(%x16)  #214 pc 312
	sw	%x12, 24(%x16)  #214 pc 316
	sw	%x11, 20(%x16)  #214 pc 320
	sw	%x10, 16(%x16)  #214 pc 324
	sw	%x9, 12(%x16)  #214 pc 328
	sw	%x8, 8(%x16)  #214 pc 332
	sw	%x7, 4(%x16)  #214 pc 336
	sw	%x6, 0(%x16)  #214 pc 340
	addi	%x6, %x16, 0  #214 pc 344
	sw	%x1, 0(%x2)  #214 pc 348
	addi	%x2, %x2, 4  #214 pc 352
	jal	%x1, h.197  #214 pc 356
	addi	%x2, %x2, -4  #214 pc 360
	lw	%x1, 0(%x2) #214 pc 364
	sw	%x1, 0(%x2)  #214 pc 368
	addi	%x2, %x2, 4  #214 pc 372
	jal	%x1, print_int.177  #214 pc 376
	addi	%x2, %x2, -4  #214 pc 380
	lw	%x1, 0(%x2) #214 pc 384
	sw	%x1, 0(%x2)  #215 pc 388
	addi	%x2, %x2, 4  #215 pc 392
	jal	%x1, min_caml_print_newline  #215 pc 396
	addi	%x2, %x2, -4  #215 pc 400
	lw	%x1, 0(%x2) #215 pc 404
	addi	%x2, %x2, 112
