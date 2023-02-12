.section	".rodata"
.align	8
.section	".text"
print_int.160:  #pc 0
	sw	%x5, 0(%x6)  #112 pc 0
	addi	%x5, %x5, 4  #112 pc 4
	ret #pc 8
	nop #pc 12
assign_array.166:  #pc 16
	bge	%x8, %x0, 12  #169 pc 16
	j	bge_else.333 #pc 20
	nop #pc 24
	beq	%x8, %x0, 12  #172 pc 28
	j	be_else.334 #pc 32
	nop #pc 36
	slli	%x8, %x8, 2  #173 pc 40
	add	%x31, %x8, %x6  #173 pc 44
	sw	%x7, 0(%x31)  #173 pc 48
	ret #pc 52
	nop #pc 56
be_else.334: #pc 60
	slli	%x9, %x8, 2  #175 pc 60
	add	%x31, %x9, %x6  #175 pc 64
	sw	%x7, 0(%x31)  #175 pc 68
	addi	%x8, %x8, -1  #176 pc 72
	j	assign_array.166  #176 pc 76
	nop #pc 80
bge_else.333: #pc 84
	ret #pc 84
	nop #pc 88
create_array.170:  #pc 92
	addi	%x8, %x3, 0  #180 pc 92
	addi	%x9, %x8, 0  #181 pc 96
	slli	%x10, %x6, 2  #182 pc 100
	add	%x8, %x8, %x10  #182 pc 104
	addi	%x3, %x8, 0  #182 pc 108
	addi	%x8, %x6, -1  #183 pc 112
	sw	%x9, 0(%x2)  #183 pc 116
	addi	%x6, %x9, 0  #0 pc 120
	sw	%x1, 4(%x2)  #183 pc 124
	addi	%x2, %x2, 8  #183 pc 128
	jal	%x1, assign_array.166  #183 pc 132
	addi	%x2, %x2, -8  #183 pc 136
	lw	%x1, 4(%x2) #183 pc 140
	lw	%x6, 0(%x2)  #184 pc 144
	ret #pc 148
	nop #pc 152
f.180:  #pc 156
	bge	%x6, %x0, 12  #210 pc 156
	j	bge_else.337 #pc 160
	nop #pc 164
	sw	%x6, 0(%x2)  #211 pc 168
	sw	%x29, 4(%x2)  #211 pc 172
	sw	%x1, 8(%x2)  #211 pc 176
	addi	%x2, %x2, 12  #211 pc 180
	jal	%x1, print_int.160  #211 pc 184
	addi	%x2, %x2, -12  #211 pc 188
	lw	%x1, 8(%x2) #211 pc 192
	addi	%x6, %x0, 1  #0 pc 196
	lw	%x7, 4(%x2)  #212 pc 200
	sw	%x1, 8(%x2)  #212 pc 204
	addi	%x2, %x2, 12  #212 pc 208
	jal	%x1, create_array.170  #212 pc 212
	addi	%x2, %x2, -12  #212 pc 216
	lw	%x1, 8(%x2) #212 pc 220
	lw	%x29, 0(%x6)  #213 pc 224
	lw	%x6, 0(%x2)  #213 pc 228
	addi	%x6, %x6, -1  #213 pc 232
	lw	%x30, 0(%x29)  #213 pc 236
	jalr	%x0, %x30, 0  #213 pc 240
	nop #pc 244
bge_else.337: #pc 248
	ret #pc 248
	nop #pc 252
.global	min_caml_start
min_caml_start:
	addi	%x2, %x0, 1000000
	addi	%x3, %x0, 1002000
	addi	%x4, %x0, 8192
	addi	%x5, %x0, 65536
	addi	%x29, %x3, 0  #209 pc 272
	addi	%x3, %x3, 4  #209 pc 276
	addi	%x31, %x0, 156  #209 f.180 pc 280
	addi	%x6, %x31, 0  #209 pc 284
	sw	%x6, 0(%x29)  #209 pc 288
	addi	%x6, %x0, 9  #0 pc 292
	sw	%x1, 0(%x2)  #214 pc 296
	lw	%x30, 0(%x29)  #214 pc 300
	addi	%x2, %x2, 4  #214 pc 304
	jalr	%x1, %x30, 0  #214 pc 308
	addi	%x2, %x2, -4  #214 pc 312
	lw	%x1, 0(%x2)  #214 pc 316
