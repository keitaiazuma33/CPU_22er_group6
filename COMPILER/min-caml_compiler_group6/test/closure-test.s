.section	".rodata"
.align	8
.section	".text"
	nop
	j min_caml_start
f.203:  #pc 8
	lw	%x7, 4(%x29)  #208 pc 8
	sub	%x6, %x6, %x7  #208 pc 12
	ret #pc 16
	nop #pc 20
g.207:  #pc 24
	addi	%x6, %x6, -2  #211 pc 24
	ret #pc 28
	nop #pc 32
f.211:  #pc 36
	addi	%x6, %x6, -1  #214 pc 36
	ret #pc 40
	nop #pc 44
i.232:  #pc 48
	lw	%x29, 4(%x29)  #218 pc 48
	lw	%x30, 0(%x29)  #218 pc 52
	jalr	%x0, %x30, 0  #218 pc 56
	nop #pc 60
g.215:  #pc 64
	addi	%x7, %x3, 0  #218 pc 64
	addi	%x3, %x3, 8  #218 pc 68
	addi	%x8, %x0, 48  #218 i.232 pc 72
	sw	%x8, 0(%x7)  #218 pc 76
	sw	%x6, 4(%x7)  #218 pc 80
	addi	%x6, %x7, 0  #219 pc 84
	ret #pc 88
	nop #pc 92
i.219:  #pc 96
	ret #pc 96
	nop #pc 100
f.222:  #pc 104
	addi	%x6, %x0, -1  #0 pc 104
	j	i.219  #224 pc 108
	nop #pc 112
.global	min_caml_start
min_caml_start:
	addi	%x31, %x0, 1
	slli	%x4, %x31, 13
	slli	%x5, %x31, 16
	slli	%x2, %x31, 24
	add	%x3, %x2, %x4
	addi	%x6, %x0, 4  #0 pc 136
	addi	%x29, %x3, 0  #208 pc 140
	addi	%x3, %x3, 8  #208 pc 144
	addi	%x7, %x0, 8  #208 f.203 pc 148
	sw	%x7, 0(%x29)  #208 pc 152
	sw	%x6, 4(%x29)  #208 pc 156
	addi	%x6, %x0, 8  #0 pc 160
	sw	%x1, 0(%x2)  #209 pc 164
	lw	%x30, 0(%x29)  #209 pc 168
	addi	%x2, %x2, 4  #209 pc 172
	jalr	%x1, %x30, 0  #209 pc 176
	addi	%x2, %x2, -4  #209 pc 180
	lw	%x1, 0(%x2)  #209 pc 184
	sw	%x1, 0(%x2)  #210 pc 188
	addi	%x2, %x2, 4  #210 pc 192
	jal	%x1, min_caml_print_var  #210 pc 196
	addi	%x2, %x2, -4  #210 pc 200
	lw	%x1, 0(%x2) #210 pc 204
	addi	%x6, %x0, 6  #0 pc 208
	sw	%x1, 0(%x2)  #212 pc 212
	addi	%x2, %x2, 4  #212 pc 216
	jal	%x1, g.207  #212 pc 220
	addi	%x2, %x2, -4  #212 pc 224
	lw	%x1, 0(%x2) #212 pc 228
	sw	%x1, 0(%x2)  #213 pc 232
	addi	%x2, %x2, 4  #213 pc 236
	jal	%x1, min_caml_print_var2  #213 pc 240
	addi	%x2, %x2, -4  #213 pc 244
	lw	%x1, 0(%x2) #213 pc 248
	addi	%x6, %x3, 0  #214 pc 252
	addi	%x3, %x3, 4  #214 pc 256
	addi	%x7, %x0, 36  #214 f.211 pc 260
	sw	%x7, 0(%x6)  #214 pc 264
	sw	%x1, 0(%x2)  #216 pc 268
	addi	%x2, %x2, 4  #216 pc 272
	jal	%x1, min_caml_print_var3  #216 pc 276
	addi	%x2, %x2, -4  #216 pc 280
	lw	%x1, 0(%x2) #216 pc 284
	addi	%x6, %x3, 0  #217 pc 288
	addi	%x3, %x3, 4  #217 pc 292
	addi	%x7, %x0, 64  #217 g.215 pc 296
	sw	%x7, 0(%x6)  #217 pc 300
	sw	%x1, 0(%x2)  #221 pc 304
	addi	%x2, %x2, 4  #221 pc 308
	jal	%x1, min_caml_print_var4  #221 pc 312
	addi	%x2, %x2, -4  #221 pc 316
	lw	%x1, 0(%x2) #221 pc 320
	addi	%x6, %x3, 0  #222 pc 324
	addi	%x3, %x3, 4  #222 pc 328
	addi	%x7, %x0, 96  #222 i.219 pc 332
	sw	%x7, 0(%x6)  #222 pc 336
	addi	%x7, %x0, 7  #0 pc 340
	sw	%x6, 0(%x2)  #226 pc 344
	addi	%x6, %x7, 0  #0 pc 348
	sw	%x1, 4(%x2)  #226 pc 352
	addi	%x2, %x2, 8  #226 pc 356
	jal	%x1, f.222  #226 pc 360
	addi	%x2, %x2, -8  #226 pc 364
	lw	%x1, 4(%x2) #226 pc 368
	addi	%x7, %x3, 0  #226 pc 372
	addi	%x3, %x3, 8  #226 pc 376
	sw	%x6, 4(%x7)  #226 pc 380
	lw	%x6, 0(%x2)  #226 pc 384
	sw	%x6, 0(%x7)  #226 pc 388
	addi	%x6, %x7, 0  #226 pc 392
	sw	%x1, 4(%x2)  #226 pc 396
	addi	%x2, %x2, 8  #226 pc 400
	jal	%x1, min_caml_print_var5  #226 pc 404
	addi	%x2, %x2, -8  #226 pc 408
	lw	%x1, 4(%x2) #226 pc 412
