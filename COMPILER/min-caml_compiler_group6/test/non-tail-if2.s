.section	".rodata"
.align	8
.section	".text"
print_int.164:  #pc 0
	sw	%x5, 0(%x6)  #112 pc 0
	addi	%x5, %x5, 4  #112 pc 4
	ret #pc 8
	nop #pc 12
assign_array.170:  #pc 16
	bge	%x8, %x0, 12  #169 pc 16
	j	bge_else.339 #pc 20
	nop #pc 24
	beq	%x8, %x0, 12  #172 pc 28
	j	be_else.340 #pc 32
	nop #pc 36
	slli	%x8, %x8, 2  #173 pc 40
	add	%x31, %x8, %x6  #173 pc 44
	sw	%x7, 0(%x31)  #173 pc 48
	ret #pc 52
	nop #pc 56
be_else.340: #pc 60
	slli	%x9, %x8, 2  #175 pc 60
	add	%x31, %x9, %x6  #175 pc 64
	sw	%x7, 0(%x31)  #175 pc 68
	addi	%x8, %x8, -1  #176 pc 72
	j	assign_array.170  #176 pc 76
	nop #pc 80
bge_else.339: #pc 84
	ret #pc 84
	nop #pc 88
create_array.174:  #pc 92
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
	jal	%x1, assign_array.170  #183 pc 132
	addi	%x2, %x2, -8  #183 pc 136
	lw	%x1, 4(%x2) #183 pc 140
	lw	%x6, 0(%x2)  #184 pc 144
	ret #pc 148
	nop #pc 152
f.184:  #pc 156
	addi	%x6, %x0, 12345  #0 pc 156
	ret #pc 160
	nop #pc 164
.global	min_caml_start
min_caml_start:
	addi	%x2, %x0, 0
	addi	%x3, %x0, 1024
	addi	%x6, %x0, 10  #0 pc 176
	addi	%x7, %x0, 3  #0 pc 180
	sw	%x1, 0(%x2)  #208 pc 184
	addi	%x2, %x2, 4  #208 pc 188
	jal	%x1, create_array.174  #208 pc 192
	addi	%x2, %x2, -4  #208 pc 196
	lw	%x1, 0(%x2) #208 pc 200
	addi	%x7, %x0, 67890  #0 pc 204
	lw	%x8, 0(%x6)  #210 pc 208
	addi	%x31, %x0, 3  #pc 212
	beq	%x8, %x31, 12  #210 pc 216
	j	be_else.343 #pc 220
	nop #pc 224
	sw	%x7, 0(%x2)  #210 pc 228
	sw	%x6, 4(%x2)  #210 pc 232
	sw	%x1, 8(%x2)  #210 pc 236
	addi	%x2, %x2, 12  #210 pc 240
	jal	%x1, f.184  #210 pc 244
	addi	%x2, %x2, -12  #210 pc 248
	lw	%x1, 8(%x2) #210 pc 252
	lw	%x7, 4(%x2)  #210 pc 256
	lw	%x7, 4(%x7)  #210 pc 260
	add	%x6, %x6, %x7  #210 pc 264
	lw	%x7, 0(%x2)  #210 pc 268
	add	%x6, %x6, %x7  #210 pc 272
	j	be_cont.344 #pc 276
	nop #pc 280
be_else.343: #pc 284
	addi	%x6, %x0, 7  #0 pc 284
be_cont.344: #pc 288
	sw	%x1, 8(%x2)  #210 pc 288
	addi	%x2, %x2, 12  #210 pc 292
	jal	%x1, print_int.164  #210 pc 296
	addi	%x2, %x2, -12  #210 pc 300
	lw	%x1, 8(%x2) #210 pc 304
	addi	%x2, %x2, 112
