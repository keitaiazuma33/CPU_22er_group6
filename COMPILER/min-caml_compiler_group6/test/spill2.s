.section	".rodata"
.align	8
.section	".text"
print_int.177:  #pc 0
	sw	%x5, 0(%x6)  #112 pc 0
	addi	%x5, %x5, 4  #112 pc 4
	ret #pc 8
	nop #pc 12
assign_array.183:  #pc 16
	bge	%x8, %x0, 12  #169 pc 16
	j	bge_else.383 #pc 20
	nop #pc 24
	beq	%x8, %x0, 12  #172 pc 28
	j	be_else.384 #pc 32
	nop #pc 36
	slli	%x8, %x8, 2  #173 pc 40
	add	%x31, %x8, %x6  #173 pc 44
	sw	%x7, 0(%x31)  #173 pc 48
	ret #pc 52
	nop #pc 56
be_else.384: #pc 60
	slli	%x9, %x8, 2  #175 pc 60
	add	%x31, %x9, %x6  #175 pc 64
	sw	%x7, 0(%x31)  #175 pc 68
	addi	%x8, %x8, -1  #176 pc 72
	j	assign_array.183  #176 pc 76
	nop #pc 80
bge_else.383: #pc 84
	ret #pc 84
	nop #pc 88
create_array.187:  #pc 92
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
	jal	%x1, assign_array.183  #183 pc 132
	addi	%x2, %x2, -8  #183 pc 136
	lw	%x1, 4(%x2) #183 pc 140
	lw	%x6, 0(%x2)  #184 pc 144
	ret #pc 148
	nop #pc 152
f.197:  #pc 156
	addi	%x6, %x0, 12345  #0 pc 156
	ret #pc 160
	nop #pc 164
g.199:  #pc 168
	addi	%x6, %x6, 1  #209 pc 168
	ret #pc 172
	nop #pc 176
.global	min_caml_start
min_caml_start:
	addi	%x2, %x0, 1000000
	addi	%x3, %x0, 1002000
	addi	%x4, %x0, 8192
	addi	%x5, %x0, 65536
	addi	%x6, %x0, 10  #0 pc 196
	addi	%x7, %x0, 1  #0 pc 200
	sw	%x1, 0(%x2)  #210 pc 204
	addi	%x2, %x2, 4  #210 pc 208
	jal	%x1, create_array.187  #210 pc 212
	addi	%x2, %x2, -4  #210 pc 216
	lw	%x1, 0(%x2) #210 pc 220
	sw	%x6, 0(%x2)  #211 pc 224
	sw	%x1, 4(%x2)  #211 pc 228
	addi	%x2, %x2, 8  #211 pc 232
	jal	%x1, f.197  #211 pc 236
	addi	%x2, %x2, -8  #211 pc 240
	lw	%x1, 4(%x2) #211 pc 244
	addi	%x7, %x0, 67890  #0 pc 248
	lw	%x8, 0(%x2)  #213 pc 252
	lw	%x9, 0(%x8)  #213 pc 256
	add	%x10, %x9, %x9  #214 pc 260
	add	%x11, %x10, %x10  #215 pc 264
	add	%x12, %x11, %x11  #216 pc 268
	add	%x13, %x12, %x12  #217 pc 272
	add	%x14, %x13, %x13  #218 pc 276
	add	%x15, %x14, %x14  #219 pc 280
	add	%x16, %x15, %x15  #220 pc 284
	add	%x17, %x16, %x16  #221 pc 288
	add	%x18, %x17, %x17  #222 pc 292
	add	%x19, %x18, %x18  #223 pc 296
	add	%x20, %x19, %x19  #224 pc 300
	add	%x21, %x20, %x20  #225 pc 304
	add	%x22, %x21, %x21  #226 pc 308
	add	%x23, %x22, %x22  #227 pc 312
	add	%x24, %x23, %x23  #228 pc 316
	lw	%x8, 4(%x8)  #230 pc 320
	beq	%x8, %x0, 12  #230 pc 324
	j	be_else.387 #pc 328
	nop #pc 332
	addi	%x6, %x7, 0  #0 pc 336
	sw	%x1, 4(%x2)  #230 pc 340
	addi	%x2, %x2, 8  #230 pc 344
	jal	%x1, g.199  #230 pc 348
	addi	%x2, %x2, -8  #230 pc 352
	lw	%x1, 4(%x2) #230 pc 356
	j	be_cont.388 #pc 360
	nop #pc 364
be_else.387: #pc 368
	add	%x7, %x9, %x10  #231 pc 368
	add	%x7, %x7, %x11  #231 pc 372
	add	%x7, %x7, %x12  #231 pc 376
	add	%x7, %x7, %x13  #231 pc 380
	add	%x7, %x7, %x14  #231 pc 384
	add	%x7, %x7, %x15  #231 pc 388
	add	%x7, %x7, %x16  #231 pc 392
	add	%x7, %x7, %x17  #231 pc 396
	add	%x7, %x7, %x18  #231 pc 400
	add	%x7, %x7, %x19  #231 pc 404
	add	%x7, %x7, %x20  #231 pc 408
	add	%x7, %x7, %x21  #231 pc 412
	add	%x7, %x7, %x22  #231 pc 416
	add	%x7, %x7, %x23  #231 pc 420
	add	%x7, %x7, %x24  #231 pc 424
	add	%x6, %x7, %x6  #231 pc 428
be_cont.388: #pc 432
	sw	%x1, 4(%x2)  #229 pc 432
	addi	%x2, %x2, 8  #229 pc 436
	jal	%x1, print_int.177  #229 pc 440
	addi	%x2, %x2, -8  #229 pc 444
	lw	%x1, 4(%x2) #229 pc 448
