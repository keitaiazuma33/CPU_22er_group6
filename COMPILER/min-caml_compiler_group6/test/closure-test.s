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
	addi	%x8, %x0, 40  #218 i.232 pc 64
	sw	%x8, 0(%x7)  #218 pc 68
	sw	%x6, 4(%x7)  #218 pc 72
	addi	%x6, %x7, 0  #219 pc 76
	ret #pc 80
	nop #pc 84
i.219:  #pc 88
	ret #pc 88
	nop #pc 92
f.222:  #pc 96
	addi	%x6, %x0, -1  #0 pc 96
	j	i.219  #224 pc 100
	nop #pc 104
.global	min_caml_start
min_caml_start:
	addi	%x2, %x0, 10000000
	addi	%x3, %x0, 10002000
	addi	%x4, %x0, 8192
	addi	%x5, %x0, 65536
	addi	%x6, %x0, 4  #0 pc 124
	addi	%x29, %x3, 0  #208 pc 128
	addi	%x3, %x3, 8  #208 pc 132
	addi	%x7, %x0, 0  #208 f.203 pc 136
	sw	%x7, 0(%x29)  #208 pc 140
	sw	%x6, 4(%x29)  #208 pc 144
	addi	%x6, %x0, 8  #0 pc 148
	sw	%x1, 0(%x2)  #209 pc 152
	lw	%x30, 0(%x29)  #209 pc 156
	addi	%x2, %x2, 4  #209 pc 160
	jalr	%x1, %x30, 0  #209 pc 164
	addi	%x2, %x2, -4  #209 pc 168
	lw	%x1, 0(%x2)  #209 pc 172
	sw	%x1, 0(%x2)  #210 pc 176
	addi	%x2, %x2, 4  #210 pc 180
	jal	%x1, min_caml_print_var  #210 pc 184
	addi	%x2, %x2, -4  #210 pc 188
	lw	%x1, 0(%x2) #210 pc 192
	addi	%x6, %x0, 6  #0 pc 196
	sw	%x1, 0(%x2)  #212 pc 200
	addi	%x2, %x2, 4  #212 pc 204
	jal	%x1, g.207  #212 pc 208
	addi	%x2, %x2, -4  #212 pc 212
	lw	%x1, 0(%x2) #212 pc 216
	sw	%x1, 0(%x2)  #213 pc 220
	addi	%x2, %x2, 4  #213 pc 224
	jal	%x1, min_caml_print_var2  #213 pc 228
	addi	%x2, %x2, -4  #213 pc 232
	lw	%x1, 0(%x2) #213 pc 236
	addi	%x6, %x3, 0  #214 pc 240
	addi	%x3, %x3, 4  #214 pc 244
	addi	%x7, %x0, 28  #214 f.211 pc 248
	sw	%x7, 0(%x6)  #214 pc 252
	sw	%x1, 0(%x2)  #216 pc 256
	addi	%x2, %x2, 4  #216 pc 260
	jal	%x1, min_caml_print_var3  #216 pc 264
	addi	%x2, %x2, -4  #216 pc 268
	lw	%x1, 0(%x2) #216 pc 272
	addi	%x6, %x3, 0  #217 pc 276
	addi	%x3, %x3, 4  #217 pc 280
	addi	%x7, %x0, 56  #217 g.215 pc 284
	sw	%x7, 0(%x6)  #217 pc 288
	sw	%x1, 0(%x2)  #221 pc 292
	addi	%x2, %x2, 4  #221 pc 296
	jal	%x1, min_caml_print_var4  #221 pc 300
	addi	%x2, %x2, -4  #221 pc 304
	lw	%x1, 0(%x2) #221 pc 308
	addi	%x6, %x3, 0  #222 pc 312
	addi	%x3, %x3, 4  #222 pc 316
	addi	%x7, %x0, 88  #222 i.219 pc 320
	sw	%x7, 0(%x6)  #222 pc 324
	addi	%x7, %x0, 7  #0 pc 328
	sw	%x6, 0(%x2)  #226 pc 332
	addi	%x6, %x7, 0  #0 pc 336
	sw	%x1, 4(%x2)  #226 pc 340
	addi	%x2, %x2, 8  #226 pc 344
	jal	%x1, f.222  #226 pc 348
	addi	%x2, %x2, -8  #226 pc 352
	lw	%x1, 4(%x2) #226 pc 356
	addi	%x7, %x3, 0  #226 pc 360
	addi	%x3, %x3, 8  #226 pc 364
	sw	%x6, 4(%x7)  #226 pc 368
	lw	%x6, 0(%x2)  #226 pc 372
	sw	%x6, 0(%x7)  #226 pc 376
	addi	%x6, %x7, 0  #226 pc 380
	sw	%x1, 4(%x2)  #226 pc 384
	addi	%x2, %x2, 8  #226 pc 388
	jal	%x1, min_caml_print_var5  #226 pc 392
	addi	%x2, %x2, -8  #226 pc 396
	lw	%x1, 4(%x2) #226 pc 400
