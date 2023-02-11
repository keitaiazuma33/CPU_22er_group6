.section	".rodata"
.align	8
.section	".text"
composed.22:  #pc 0
	lw	%x6, 8(%x29)  #0 pc 0
	lw	%x29, 4(%x29)  #0 pc 4
	sw	%x6, 0(%x2)  #2 pc 8
	sw	%x1, 4(%x2)  #2 pc 12
	lw	%x30, 0(%x29)  #2 pc 16
	addi	%x2, %x2, 8  #2 pc 20
	jalr	%x1, %x30, 0  #2 pc 24
	addi	%x2, %x2, -8  #2 pc 28
	lw	%x1, 4(%x2)  #2 pc 32
	lw	%x29, 0(%x2)  #2 pc 36
	lw	%x30, 0(%x29)  #2 pc 40
	jalr	%x0, %x30, 0  #2 pc 44
	nop #pc 48
compose.7:  #pc 52
	addi	%x7, %x3, 0  #2 pc 52
	addi	%x3, %x3, 12  #2 pc 56
	addi	%x31, %x0, 0  #2 composed.22 pc 60
	addi	%x8, %x31, 0  #2 pc 64
	sw	%x8, 0(%x7)  #2 pc 68
	sw	%x6, 8(%x7)  #2 pc 72
	sw	%x5, 4(%x7)  #2 pc 76
	addi	%x5, %x7, 0  #3 pc 80
	ret #pc 84
	nop #pc 88
dbl.10:  #pc 92
	add	%x5, %x5, %x5  #4 pc 92
	ret #pc 96
	nop #pc 100
inc.12:  #pc 104
	addi	%x5, %x5, 1  #5 pc 104
	ret #pc 108
	nop #pc 112
dec.14:  #pc 116
	addi	%x5, %x5, -1  #6 pc 116
	ret #pc 120
	nop #pc 124
.global	min_caml_start
min_caml_start:
	addi	%x2, %x0, 0
	addi	%x3, %x0, 1024
	addi	%x5, %x3, 0  #4 pc 136
	addi	%x3, %x3, 4  #4 pc 140
	addi	%x31, %x0, 92  #4 dbl.10 pc 144
	addi	%x6, %x31, 0  #4 pc 148
	sw	%x6, 0(%x5)  #4 pc 152
	addi	%x6, %x3, 0  #5 pc 156
	addi	%x3, %x3, 4  #5 pc 160
	addi	%x31, %x0, 104  #5 inc.12 pc 164
	addi	%x7, %x31, 0  #5 pc 168
	sw	%x7, 0(%x6)  #5 pc 172
	addi	%x7, %x3, 0  #6 pc 176
	addi	%x3, %x3, 4  #6 pc 180
	addi	%x31, %x0, 116  #6 dec.14 pc 184
	addi	%x8, %x31, 0  #6 pc 188
	sw	%x8, 0(%x7)  #6 pc 192
	sw	%x6, 0(%x2)  #7 pc 196
	addi	%x6, %x7, 0  #0 pc 200
	sw	%x1, 4(%x2)  #7 pc 204
	addi	%x2, %x2, 8  #7 pc 208
	jal	%x1, compose.7  #7 pc 212
	addi	%x2, %x2, -8  #7 pc 216
	lw	%x1, 4(%x2) #7 pc 220
	addi	%x6, %x5, 0  #7 pc 224
	lw	%x5, 0(%x2)  #7 pc 228
	sw	%x1, 4(%x2)  #7 pc 232
	addi	%x2, %x2, 8  #7 pc 236
	jal	%x1, compose.7  #7 pc 240
	addi	%x2, %x2, -8  #7 pc 244
	lw	%x1, 4(%x2) #7 pc 248
	addi	%x29, %x5, 0  #7 pc 252
	addi	%x5, %x0, 123  #0 pc 256
	sw	%x1, 4(%x2)  #8 pc 260
	lw	%x30, 0(%x29)  #8 pc 264
	addi	%x2, %x2, 8  #8 pc 268
	jalr	%x1, %x30, 0  #8 pc 272
	addi	%x2, %x2, -8  #8 pc 276
	lw	%x1, 4(%x2)  #8 pc 280
	sw	%x1, 4(%x2)  #8 pc 284
	addi	%x2, %x2, 8  #8 pc 288
	jal	%x1, min_caml_print_int  #8 pc 292
	addi	%x2, %x2, -8  #8 pc 296
	lw	%x1, 4(%x2) #8 pc 300
	addi	%x2, %x2, 112
