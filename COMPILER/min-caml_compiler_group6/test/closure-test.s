.section	".rodata"
.align	8
.section	".text"
f.203:  #pc 0
	lw	%x7, 4(%x29)  #208 pc 0
	sub	%x6, %x6, %x7  #208 pc 4
	ret #pc 8
	nop #pc 12
g.207:  #pc 16
	addi	%x6, %x6, -2  #211 pc 16
	ret #pc 20
	nop #pc 24
f.211:  #pc 28
	addi	%x6, %x6, -1  #214 pc 28
	ret #pc 32
	nop #pc 36
i.232:  #pc 40
	lw	%x29, 4(%x29)  #218 pc 40
	lw	%x30, 0(%x29)  #218 pc 44
	jalr	%x0, %x30, 0  #218 pc 48
	nop #pc 52
g.215:  #pc 56
	addi	%x7, %x3, 0  #218 pc 56
	addi	%x3, %x3, 8  #218 pc 60
	addi	%x31, %x0, 40  #218 i.232 pc 64
	addi	%x8, %x31, 0  #218 pc 68
	sw	%x8, 0(%x7)  #218 pc 72
	sw	%x6, 4(%x7)  #218 pc 76
	addi	%x6, %x7, 0  #219 pc 80
	ret #pc 84
	nop #pc 88
i.219:  #pc 92
	ret #pc 92
	nop #pc 96
f.222:  #pc 100
	addi	%x6, %x0, -1  #0 pc 100
	j	i.219  #224 pc 104
	nop #pc 108
.global	min_caml_start
min_caml_start:
	addi	%x2, %x0, 1000000
	addi	%x3, %x0, 1002000
	addi	%x4, %x0, 8192
	addi	%x5, %x0, 65536
	addi	%x6, %x0, 4  #0 pc 128
	addi	%x29, %x3, 0  #208 pc 132
	addi	%x3, %x3, 8  #208 pc 136
	addi	%x31, %x0, 0  #208 f.203 pc 140
	addi	%x7, %x31, 0  #208 pc 144
	sw	%x7, 0(%x29)  #208 pc 148
	sw	%x6, 4(%x29)  #208 pc 152
	addi	%x6, %x0, 8  #0 pc 156
	sw	%x1, 0(%x2)  #209 pc 160
	lw	%x30, 0(%x29)  #209 pc 164
	addi	%x2, %x2, 4  #209 pc 168
	jalr	%x1, %x30, 0  #209 pc 172
	addi	%x2, %x2, -4  #209 pc 176
	lw	%x1, 0(%x2)  #209 pc 180
	sw	%x1, 0(%x2)  #210 pc 184
	addi	%x2, %x2, 4  #210 pc 188
	jal	%x1, min_caml_print_var  #210 pc 192
	addi	%x2, %x2, -4  #210 pc 196
	lw	%x1, 0(%x2) #210 pc 200
	addi	%x6, %x0, 6  #0 pc 204
	sw	%x1, 0(%x2)  #212 pc 208
	addi	%x2, %x2, 4  #212 pc 212
	jal	%x1, g.207  #212 pc 216
	addi	%x2, %x2, -4  #212 pc 220
	lw	%x1, 0(%x2) #212 pc 224
	sw	%x1, 0(%x2)  #213 pc 228
	addi	%x2, %x2, 4  #213 pc 232
	jal	%x1, min_caml_print_var2  #213 pc 236
	addi	%x2, %x2, -4  #213 pc 240
	lw	%x1, 0(%x2) #213 pc 244
	addi	%x6, %x3, 0  #214 pc 248
	addi	%x3, %x3, 4  #214 pc 252
	addi	%x31, %x0, 28  #214 f.211 pc 256
	addi	%x7, %x31, 0  #214 pc 260
	sw	%x7, 0(%x6)  #214 pc 264
	sw	%x1, 0(%x2)  #216 pc 268
	addi	%x2, %x2, 4  #216 pc 272
	jal	%x1, min_caml_print_var3  #216 pc 276
	addi	%x2, %x2, -4  #216 pc 280
	lw	%x1, 0(%x2) #216 pc 284
	addi	%x6, %x3, 0  #217 pc 288
	addi	%x3, %x3, 4  #217 pc 292
	addi	%x31, %x0, 56  #217 g.215 pc 296
	addi	%x7, %x31, 0  #217 pc 300
	sw	%x7, 0(%x6)  #217 pc 304
	sw	%x1, 0(%x2)  #221 pc 308
	addi	%x2, %x2, 4  #221 pc 312
	jal	%x1, min_caml_print_var4  #221 pc 316
	addi	%x2, %x2, -4  #221 pc 320
	lw	%x1, 0(%x2) #221 pc 324
	addi	%x6, %x3, 0  #222 pc 328
	addi	%x3, %x3, 4  #222 pc 332
	addi	%x31, %x0, 92  #222 i.219 pc 336
	addi	%x7, %x31, 0  #222 pc 340
	sw	%x7, 0(%x6)  #222 pc 344
	addi	%x7, %x0, 7  #0 pc 348
	sw	%x6, 0(%x2)  #226 pc 352
	addi	%x6, %x7, 0  #0 pc 356
	sw	%x1, 4(%x2)  #226 pc 360
	addi	%x2, %x2, 8  #226 pc 364
	jal	%x1, f.222  #226 pc 368
	addi	%x2, %x2, -8  #226 pc 372
	lw	%x1, 4(%x2) #226 pc 376
	addi	%x7, %x3, 0  #226 pc 380
	addi	%x3, %x3, 8  #226 pc 384
	sw	%x6, 4(%x7)  #226 pc 388
	lw	%x6, 0(%x2)  #226 pc 392
	sw	%x6, 0(%x7)  #226 pc 396
	addi	%x6, %x7, 0  #226 pc 400
	sw	%x1, 4(%x2)  #226 pc 404
	addi	%x2, %x2, 8  #226 pc 408
	jal	%x1, min_caml_print_var5  #226 pc 412
	addi	%x2, %x2, -8  #226 pc 416
	lw	%x1, 4(%x2) #226 pc 420
