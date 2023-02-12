.section	".rodata"
.align	8
.section	".text"
print_int.158:  #pc 0
	sw	%x5, 0(%x6)  #112 pc 0
	addi	%x5, %x5, 4  #112 pc 4
	ret #pc 8
	nop #pc 12
composed.193:  #pc 16
	lw	%x7, 8(%x29)  #0 pc 16
	lw	%x29, 4(%x29)  #0 pc 20
	sw	%x7, 0(%x2)  #208 pc 24
	sw	%x1, 4(%x2)  #208 pc 28
	lw	%x30, 0(%x29)  #208 pc 32
	addi	%x2, %x2, 8  #208 pc 36
	jalr	%x1, %x30, 0  #208 pc 40
	addi	%x2, %x2, -8  #208 pc 44
	lw	%x1, 4(%x2)  #208 pc 48
	lw	%x29, 0(%x2)  #208 pc 52
	lw	%x30, 0(%x29)  #208 pc 56
	jalr	%x0, %x30, 0  #208 pc 60
	nop #pc 64
compose.178:  #pc 68
	addi	%x8, %x3, 0  #208 pc 68
	addi	%x3, %x3, 12  #208 pc 72
	addi	%x31, %x0, 16  #208 composed.193 pc 76
	addi	%x9, %x31, 0  #208 pc 80
	sw	%x9, 0(%x8)  #208 pc 84
	sw	%x7, 8(%x8)  #208 pc 88
	sw	%x6, 4(%x8)  #208 pc 92
	addi	%x6, %x8, 0  #209 pc 96
	ret #pc 100
	nop #pc 104
dbl.181:  #pc 108
	add	%x6, %x6, %x6  #210 pc 108
	ret #pc 112
	nop #pc 116
inc.183:  #pc 120
	addi	%x6, %x6, 1  #211 pc 120
	ret #pc 124
	nop #pc 128
dec.185:  #pc 132
	addi	%x6, %x6, -1  #212 pc 132
	ret #pc 136
	nop #pc 140
.global	min_caml_start
min_caml_start:
	addi	%x2, %x0, 1000000
	addi	%x3, %x0, 1002000
	addi	%x4, %x0, 8192
	addi	%x5, %x0, 65536
	addi	%x6, %x3, 0  #210 pc 160
	addi	%x3, %x3, 4  #210 pc 164
	addi	%x31, %x0, 108  #210 dbl.181 pc 168
	addi	%x7, %x31, 0  #210 pc 172
	sw	%x7, 0(%x6)  #210 pc 176
	addi	%x7, %x3, 0  #211 pc 180
	addi	%x3, %x3, 4  #211 pc 184
	addi	%x31, %x0, 120  #211 inc.183 pc 188
	addi	%x8, %x31, 0  #211 pc 192
	sw	%x8, 0(%x7)  #211 pc 196
	addi	%x8, %x3, 0  #212 pc 200
	addi	%x3, %x3, 4  #212 pc 204
	addi	%x31, %x0, 132  #212 dec.185 pc 208
	addi	%x9, %x31, 0  #212 pc 212
	sw	%x9, 0(%x8)  #212 pc 216
	sw	%x7, 0(%x2)  #213 pc 220
	addi	%x7, %x8, 0  #0 pc 224
	sw	%x1, 4(%x2)  #213 pc 228
	addi	%x2, %x2, 8  #213 pc 232
	jal	%x1, compose.178  #213 pc 236
	addi	%x2, %x2, -8  #213 pc 240
	lw	%x1, 4(%x2) #213 pc 244
	addi	%x7, %x6, 0  #213 pc 248
	lw	%x6, 0(%x2)  #213 pc 252
	sw	%x1, 4(%x2)  #213 pc 256
	addi	%x2, %x2, 8  #213 pc 260
	jal	%x1, compose.178  #213 pc 264
	addi	%x2, %x2, -8  #213 pc 268
	lw	%x1, 4(%x2) #213 pc 272
	addi	%x29, %x6, 0  #213 pc 276
	addi	%x6, %x0, 123  #0 pc 280
	sw	%x1, 4(%x2)  #214 pc 284
	lw	%x30, 0(%x29)  #214 pc 288
	addi	%x2, %x2, 8  #214 pc 292
	jalr	%x1, %x30, 0  #214 pc 296
	addi	%x2, %x2, -8  #214 pc 300
	lw	%x1, 4(%x2)  #214 pc 304
	sw	%x1, 4(%x2)  #214 pc 308
	addi	%x2, %x2, 8  #214 pc 312
	jal	%x1, print_int.158  #214 pc 316
	addi	%x2, %x2, -8  #214 pc 320
	lw	%x1, 4(%x2) #214 pc 324
