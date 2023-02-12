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
	addi	%x2, %x0, 0
	addi	%x3, %x0, 1024
	fmv	%f0, l.328  #0 pc 24
	sw	%x1, 0(%x2)  #207 pc 28
	addi	%x2, %x2, 4  #207 pc 32
	jal	%x1, min_caml_truncate  #207 pc 36
	addi	%x2, %x2, -4  #207 pc 40
	lw	%x1, 0(%x2) #207 pc 44
	fmv	%f0, l.330  #0 pc 48
	sw	%x6, 0(%x2)  #208 pc 52
	sw	%x1, 4(%x2)  #208 pc 56
	addi	%x2, %x2, 8  #208 pc 60
	jal	%x1, min_caml_truncate  #208 pc 64
	addi	%x2, %x2, -8  #208 pc 68
	lw	%x1, 4(%x2) #208 pc 72
	fmv	%f0, l.332  #0 pc 76
	sw	%x6, 4(%x2)  #209 pc 80
	sw	%x1, 8(%x2)  #209 pc 84
	addi	%x2, %x2, 12  #209 pc 88
	jal	%x1, min_caml_truncate  #209 pc 92
	addi	%x2, %x2, -12  #209 pc 96
	lw	%x1, 8(%x2) #209 pc 100
	bge	%x6, %x0, 12  #211 pc 104
	j	bge_else.339 #pc 108
	nop #pc 112
	lw	%x7, 0(%x2)  #211 pc 116
	j	bge_cont.340 #pc 120
	nop #pc 124
bge_else.339: #pc 128
	lw	%x7, 4(%x2)  #211 pc 128
bge_cont.340: #pc 132
	lw	%x8, 0(%x2)  #212 pc 132
	bge	%x0, %x8, 12  #212 pc 136
	j	ble_else.341 #pc 140
	nop #pc 144
	lw	%x9, 4(%x2)  #212 pc 148
	j	ble_cont.342 #pc 152
	nop #pc 156
ble_else.341: #pc 160
	addi	%x9, %x6, 0  #212 pc 160
ble_cont.342: #pc 164
	add	%x7, %x7, %x9  #211 pc 164
	lw	%x9, 4(%x2)  #213 pc 168
	bge	%x9, %x0, 12  #213 pc 172
	j	bge_else.343 #pc 176
	nop #pc 180
	j	bge_cont.344 #pc 184
	nop #pc 188
bge_else.343: #pc 192
	addi	%x6, %x8, 0  #213 pc 192
bge_cont.344: #pc 196
	add	%x6, %x7, %x6  #211 pc 196
	sw	%x1, 8(%x2)  #210 pc 200
	addi	%x2, %x2, 12  #210 pc 204
	jal	%x1, print_int.164  #210 pc 208
	addi	%x2, %x2, -12  #210 pc 212
	lw	%x1, 8(%x2) #210 pc 216
	addi	%x2, %x2, 112
