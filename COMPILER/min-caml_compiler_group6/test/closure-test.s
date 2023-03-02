.section	".rodata"
.align	8
.section	".text"
	nop
	j min_caml_start
f.211:  #pc 8
	addi	%x6, %x6, -1  #214 pc 8
	ret #pc 12
	nop #pc 16
i.232:  #pc 20
	lw	%x29, 4(%x29)  #218 pc 20
	lw	%x30, 0(%x29)  #218 pc 24
	jalr	%x0, %x30, 0  #218 pc 28
	nop #pc 32
g.215:  #pc 36
	addi	%x7, %x3, 0  #218 pc 36
	addi	%x3, %x3, 8  #218 pc 40
	addi	%x8, %x0, 20  #218 i.232 pc 44
	sw	%x8, 0(%x7)  #218 pc 48
	sw	%x6, 4(%x7)  #218 pc 52
	addi	%x6, %x7, 0  #219 pc 56
	ret #pc 60
	nop #pc 64
i.219:  #pc 68
	ret #pc 68
	nop #pc 72
.global	min_caml_start
min_caml_start:
	addi	%x31, %x0, 1
	slli	%x4, %x31, 13
	slli	%x5, %x31, 16
	slli	%x2, %x31, 24
	add	%x3, %x2, %x4
	addi	%x6, %x0, 4  #0 pc 96
	sw	%x1, 0(%x2)  #210 pc 100
	addi	%x2, %x2, 4  #210 pc 104
	jal	%x1, min_caml_print_var  #210 pc 108
	addi	%x2, %x2, -4  #210 pc 112
	lw	%x1, 0(%x2) #210 pc 116
	addi	%x6, %x0, 4  #0 pc 120
	sw	%x1, 0(%x2)  #213 pc 124
	addi	%x2, %x2, 4  #213 pc 128
	jal	%x1, min_caml_print_var2  #213 pc 132
	addi	%x2, %x2, -4  #213 pc 136
	lw	%x1, 0(%x2) #213 pc 140
	addi	%x6, %x3, 0  #214 pc 144
	addi	%x3, %x3, 4  #214 pc 148
	addi	%x7, %x0, 8  #214 f.211 pc 152
	sw	%x7, 0(%x6)  #214 pc 156
	sw	%x1, 0(%x2)  #216 pc 160
	addi	%x2, %x2, 4  #216 pc 164
	jal	%x1, min_caml_print_var3  #216 pc 168
	addi	%x2, %x2, -4  #216 pc 172
	lw	%x1, 0(%x2) #216 pc 176
	addi	%x6, %x3, 0  #217 pc 180
	addi	%x3, %x3, 4  #217 pc 184
	addi	%x7, %x0, 36  #217 g.215 pc 188
	sw	%x7, 0(%x6)  #217 pc 192
	sw	%x1, 0(%x2)  #221 pc 196
	addi	%x2, %x2, 4  #221 pc 200
	jal	%x1, min_caml_print_var4  #221 pc 204
	addi	%x2, %x2, -4  #221 pc 208
	lw	%x1, 0(%x2) #221 pc 212
	addi	%x6, %x3, 0  #222 pc 216
	addi	%x3, %x3, 4  #222 pc 220
	addi	%x7, %x0, 68  #222 i.219 pc 224
	sw	%x7, 0(%x6)  #222 pc 228
	addi	%x7, %x0, -1  #0 pc 232
	addi	%x8, %x3, 0  #226 pc 236
	addi	%x3, %x3, 8  #226 pc 240
	sw	%x7, 4(%x8)  #226 pc 244
	sw	%x6, 0(%x8)  #226 pc 248
	addi	%x6, %x8, 0  #226 pc 252
	sw	%x1, 0(%x2)  #226 pc 256
	addi	%x2, %x2, 4  #226 pc 260
	jal	%x1, min_caml_print_var5  #226 pc 264
	addi	%x2, %x2, -4  #226 pc 268
	lw	%x1, 0(%x2) #226 pc 272
