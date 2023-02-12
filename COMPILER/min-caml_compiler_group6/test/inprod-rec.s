.section	".rodata"
.align	8
l.349:	! 1000000.000000
l.347:	! 4.560000
l.345:	! 1.230000
l.341:	! 0.000000
.section	".text"
print_int.168:  #pc 0
	sw	%x5, 0(%x6)  #112 pc 0
	addi	%x5, %x5, 4  #112 pc 4
	ret #pc 8
	nop #pc 12
assign_farray.181:  #pc 16
	bge	%x7, %x0, 12  #188 pc 16
	j	bge_else.359 #pc 20
	nop #pc 24
	beq	%x7, %x0, 12  #191 pc 28
	j	be_else.360 #pc 32
	nop #pc 36
	slli	%x7, %x7, 2  #192 pc 40
	add	%x31, %x7, %x6  #192 pc 44
	fsw	%f0, 0(%x31) #192 pc 48
	ret #pc 52
	nop #pc 56
be_else.360: #pc 60
	slli	%x8, %x7, 2  #194 pc 60
	add	%x31, %x8, %x6  #194 pc 64
	fsw	%f0, 0(%x31) #194 pc 68
	addi	%x7, %x7, -1  #195 pc 72
	j	assign_farray.181  #195 pc 76
	nop #pc 80
bge_else.359: #pc 84
	ret #pc 84
	nop #pc 88
create_float_array.185:  #pc 92
	addi	%x7, %x3, 0  #199 pc 92
	addi	%x8, %x7, 0  #200 pc 96
	slli	%x9, %x6, 2  #201 pc 100
	add	%x7, %x7, %x9  #201 pc 104
	addi	%x3, %x7, 0  #201 pc 108
	addi	%x7, %x6, -1  #202 pc 112
	sw	%x8, 0(%x2)  #202 pc 116
	addi	%x6, %x8, 0  #0 pc 120
	sw	%x1, 4(%x2)  #202 pc 124
	addi	%x2, %x2, 8  #202 pc 128
	jal	%x1, assign_farray.181  #202 pc 132
	addi	%x2, %x2, -8  #202 pc 136
	lw	%x1, 4(%x2) #202 pc 140
	lw	%x6, 0(%x2)  #203 pc 144
	ret #pc 148
	nop #pc 152
inprod.188:  #pc 156
	bge	%x8, %x0, 12  #208 pc 156
	j	bge_else.363 #pc 160
	nop #pc 164
	slli	%x9, %x8, 2  #209 pc 168
	add	%x31, %x9, %x6  #209 pc 172
	flw	%f0, 0(%x31)  #209 pc 176
	slli	%x9, %x8, 2  #209 pc 180
	add	%x31, %x9, %x7  #209 pc 184
	flw	%f1, 0(%x31)  #209 pc 188
	fmul	%f0, %f0, %f1  #209 pc 192
	addi	%x8, %x8, -1  #209 pc 196
	fsw	%f0, 0(%x2)  #209 pc 200
	sw	%x1, 8(%x2)  #209 pc 204
	addi	%x2, %x2, 12  #209 pc 208
	jal	%x1, inprod.188  #209 pc 212
	addi	%x2, %x2, -12  #209 pc 216
	lw	%x1, 8(%x2) #209 pc 220
	flw	%f1, 0(%x2)  #209 pc 224
	fadd	%f0, %f1, %f0  #209 pc 228
	ret #pc 232
	nop #pc 236
bge_else.363: #pc 240
	addi	%x6, l.341, 0  #0 pc 240
	ret #pc 244
	nop #pc 248
.global	min_caml_start
min_caml_start:
	addi	%x2, %x0, 0
	addi	%x3, %x0, 1024
	addi	%x6, %x0, 3  #0 pc 260
	fmv	%f0, l.345  #0 pc 264
	sw	%x1, 0(%x2)  #210 pc 268
	addi	%x2, %x2, 4  #210 pc 272
	jal	%x1, create_float_array.185  #210 pc 276
	addi	%x2, %x2, -4  #210 pc 280
	lw	%x1, 0(%x2) #210 pc 284
	addi	%x7, %x0, 3  #0 pc 288
	fmv	%f0, l.347  #0 pc 292
	sw	%x6, 0(%x2)  #211 pc 296
	addi	%x6, %x7, 0  #0 pc 300
	sw	%x1, 4(%x2)  #211 pc 304
	addi	%x2, %x2, 8  #211 pc 308
	jal	%x1, create_float_array.185  #211 pc 312
	addi	%x2, %x2, -8  #211 pc 316
	lw	%x1, 4(%x2) #211 pc 320
	addi	%x7, %x6, 0  #211 pc 324
	fmv	%f0, l.349  #0 pc 328
	addi	%x8, %x0, 2  #0 pc 332
	lw	%x6, 0(%x2)  #212 pc 336
	fsw	%f0, 8(%x2)  #212 pc 340
	sw	%x1, 16(%x2)  #212 pc 344
	addi	%x2, %x2, 20  #212 pc 348
	jal	%x1, inprod.188  #212 pc 352
	addi	%x2, %x2, -20  #212 pc 356
	lw	%x1, 16(%x2) #212 pc 360
	flw	%f1, 8(%x2)  #212 pc 364
	fmul	%f0, %f1, %f0  #212 pc 368
	sw	%x1, 16(%x2)  #212 pc 372
	addi	%x2, %x2, 20  #212 pc 376
	jal	%x1, min_caml_truncate  #212 pc 380
	addi	%x2, %x2, -20  #212 pc 384
	lw	%x1, 16(%x2) #212 pc 388
	sw	%x1, 16(%x2)  #212 pc 392
	addi	%x2, %x2, 20  #212 pc 396
	jal	%x1, print_int.168  #212 pc 400
	addi	%x2, %x2, -20  #212 pc 404
	lw	%x1, 16(%x2) #212 pc 408
	addi	%x2, %x2, 112
