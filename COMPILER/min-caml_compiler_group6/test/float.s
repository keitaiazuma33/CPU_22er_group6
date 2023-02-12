.section	".rodata"
.align	8
l.353:	! 48.300300
l.351:	! 4.500000
l.349:	! -12.300000
l.347:	! 0.001389
l.345:	! 0.041667
l.343:	! 0.500000
l.341:	! 1.000000
l.339:	! 0.000198
l.337:	! 0.008333
l.335:	! 0.166667
.section	".text"
sin.139:  #pc 0
	fmul	%f1, %f0, %f0  #16 pc 0
	fmul	%f2, %f0, %f1  #17 pc 4
	fmul	%f3, %f2, %f1  #18 pc 8
	fmul	%f1, %f3, %f1  #19 pc 12
	fmv	%f4, l.335  #0 pc 16
	fmul	%f2, %f4, %f2  #20 pc 20
	fsub	%f0, %f0, %f2  #20 pc 24
	fmv	%f2, l.337  #0 pc 28
	fmul	%f2, %f2, %f3  #20 pc 32
	fadd	%f0, %f0, %f2  #20 pc 36
	fmv	%f2, l.339  #0 pc 40
	fmul	%f1, %f2, %f1  #20 pc 44
	fsub	%f0, %f0, %f1  #20 pc 48
	ret #pc 52
	nop #pc 56
cos.141:  #pc 60
	fmul	%f0, %f0, %f0  #24 pc 60
	fmul	%f1, %f0, %f0  #25 pc 64
	fmul	%f2, %f1, %f0  #26 pc 68
	fmv	%f3, l.341  #0 pc 72
	fmv	%f4, l.343  #0 pc 76
	fmul	%f0, %f4, %f0  #27 pc 80
	fsub	%f0, %f3, %f0  #27 pc 84
	fmv	%f3, l.345  #0 pc 88
	fmul	%f1, %f3, %f1  #27 pc 92
	fadd	%f0, %f0, %f1  #27 pc 96
	fmv	%f1, l.347  #0 pc 100
	fmul	%f1, %f1, %f2  #27 pc 104
	fsub	%f0, %f0, %f1  #27 pc 108
	ret #pc 112
	nop #pc 116
abs_float.147:  #pc 120
	fabs	%f0, %f0  #47 pc 120
	ret #pc 124
	nop #pc 128
float_of_int.149:  #pc 132
	itof	%f0, %x6  #50 pc 132
	ret #pc 136
	nop #pc 140
int_of_float.151:  #pc 144
	ftoi	%x6, %f0  #53 pc 144
	ret #pc 148
	nop #pc 152
print_int.169:  #pc 156
	sw	%x5, 0(%x6)  #112 pc 156
	addi	%x5, %x5, 4  #112 pc 160
	ret #pc 164
	nop #pc 168
.global	min_caml_start
min_caml_start:
	addi	%x2, %x0, 0
	addi	%x3, %x0, 1024
	fmv	%f0, l.349  #0 pc 180
	sw	%x1, 0(%x2)  #213 pc 184
	addi	%x2, %x2, 4  #213 pc 188
	jal	%x1, abs_float.147  #213 pc 192
	addi	%x2, %x2, -4  #213 pc 196
	lw	%x1, 0(%x2) #213 pc 200
	fsqrt	%f0, %f0  #213 pc 204
	sw	%x1, 0(%x2)  #213 pc 208
	addi	%x2, %x2, 4  #213 pc 212
	jal	%x1, cos.141  #213 pc 216
	addi	%x2, %x2, -4  #213 pc 220
	lw	%x1, 0(%x2) #213 pc 224
	sw	%x1, 0(%x2)  #213 pc 228
	addi	%x2, %x2, 4  #213 pc 232
	jal	%x1, sin.139  #213 pc 236
	addi	%x2, %x2, -4  #213 pc 240
	lw	%x1, 0(%x2) #213 pc 244
	fmv	%f1, l.351  #0 pc 248
	fadd	%f0, %f0, %f1  #213 pc 252
	fmv	%f1, l.353  #0 pc 256
	fsub	%f0, %f0, %f1  #213 pc 260
	addi	%x6, %x0, 1000000  #0 pc 264
	fsw	%f0, 0(%x2)  #215 pc 268
	sw	%x1, 8(%x2)  #215 pc 272
	addi	%x2, %x2, 12  #215 pc 276
	jal	%x1, float_of_int.149  #215 pc 280
	addi	%x2, %x2, -12  #215 pc 284
	lw	%x1, 8(%x2) #215 pc 288
	flw	%f1, 0(%x2)  #213 pc 292
	fmul	%f0, %f1, %f0  #213 pc 296
	sw	%x1, 8(%x2)  #212 pc 300
	addi	%x2, %x2, 12  #212 pc 304
	jal	%x1, int_of_float.151  #212 pc 308
	addi	%x2, %x2, -12  #212 pc 312
	lw	%x1, 8(%x2) #212 pc 316
	sw	%x1, 8(%x2)  #211 pc 320
	addi	%x2, %x2, 12  #211 pc 324
	jal	%x1, print_int.169  #211 pc 328
	addi	%x2, %x2, -12  #211 pc 332
	lw	%x1, 8(%x2) #211 pc 336
	addi	%x2, %x2, 112
