.section	".rodata"
.align	8
l.332:	! -7.890000
l.330:	! 4.560000
l.328:	! 1.230000
.section	".text"
print_int.164:  #pc 0
	sw	%x5, 0(%x6)  #112 pc 0
	addi	%x5, %x5, 4  #112 pc 4
	ret #pc 8
	nop #pc 12
.global	min_caml_start
min_caml_start:
	addi	%x2, %x0, 1000000
	addi	%x3, %x0, 1002000
	addi	%x4, %x0, 8192
	addi	%x5, %x0, 65536
	fmv	%f0, l.328  #0 pc 32
	sw	%x1, 0(%x2)  #207 pc 36
	addi	%x2, %x2, 4  #207 pc 40
	jal	%x1, min_caml_truncate  #207 pc 44
	addi	%x2, %x2, -4  #207 pc 48
	lw	%x1, 0(%x2) #207 pc 52
	fmv	%f0, l.330  #0 pc 56
	sw	%x6, 0(%x2)  #208 pc 60
	sw	%x1, 4(%x2)  #208 pc 64
	addi	%x2, %x2, 8  #208 pc 68
	jal	%x1, min_caml_truncate  #208 pc 72
	addi	%x2, %x2, -8  #208 pc 76
	lw	%x1, 4(%x2) #208 pc 80
	fmv	%f0, l.332  #0 pc 84
	sw	%x6, 4(%x2)  #209 pc 88
	sw	%x1, 8(%x2)  #209 pc 92
	addi	%x2, %x2, 12  #209 pc 96
	jal	%x1, min_caml_truncate  #209 pc 100
	addi	%x2, %x2, -12  #209 pc 104
	lw	%x1, 8(%x2) #209 pc 108
	bge	%x6, %x0, 12  #211 pc 112
	j	bge_else.339 #pc 116
	nop #pc 120
	lw	%x7, 0(%x2)  #211 pc 124
	j	bge_cont.340 #pc 128
	nop #pc 132
bge_else.339: #pc 136
	lw	%x7, 4(%x2)  #211 pc 136
bge_cont.340: #pc 140
	lw	%x8, 0(%x2)  #212 pc 140
	bge	%x0, %x8, 12  #212 pc 144
	j	ble_else.341 #pc 148
	nop #pc 152
	lw	%x9, 4(%x2)  #212 pc 156
	j	ble_cont.342 #pc 160
	nop #pc 164
ble_else.341: #pc 168
	addi	%x9, %x6, 0  #212 pc 168
ble_cont.342: #pc 172
	add	%x7, %x7, %x9  #211 pc 172
	lw	%x9, 4(%x2)  #213 pc 176
	bge	%x9, %x0, 12  #213 pc 180
	j	bge_else.343 #pc 184
	nop #pc 188
	j	bge_cont.344 #pc 192
	nop #pc 196
bge_else.343: #pc 200
	addi	%x6, %x8, 0  #213 pc 200
bge_cont.344: #pc 204
	add	%x6, %x7, %x6  #211 pc 204
	sw	%x1, 8(%x2)  #210 pc 208
	addi	%x2, %x2, 12  #210 pc 212
	jal	%x1, print_int.164  #210 pc 216
	addi	%x2, %x2, -12  #210 pc 220
	lw	%x1, 8(%x2) #210 pc 224
