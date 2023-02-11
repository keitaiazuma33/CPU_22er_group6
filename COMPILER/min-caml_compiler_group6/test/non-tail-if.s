.section	".rodata"
.align	8
l.32:	! -7.890000
l.30:	! 4.560000
l.28:	! 1.230000
.section	".text"
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	fmv	%f0, l.28  #0 pc 0
	sw	%x1, 12(%x2)  #1 pc 4
	addi	%x2, %x2, 16  #1 pc 8
	jal	%x1, min_caml_truncate  #1 pc 12
	addi	%x2, %x2, -16  #1 pc 16
	lw	%x1, 12(%x2) #1 pc 20
	fmv	%f0, l.30  #0 pc 24
	sw	%x5, 8(%x2)  #2 pc 28
	sw	%x1, 12(%x2)  #2 pc 32
	addi	%x2, %x2, 16  #2 pc 36
	jal	%x1, min_caml_truncate  #2 pc 40
	addi	%x2, %x2, -16  #2 pc 44
	lw	%x1, 12(%x2) #2 pc 48
	fmv	%f0, l.32  #0 pc 52
	sw	%x5, 12(%x2)  #3 pc 56
	sw	%x1, 20(%x2)  #3 pc 60
	addi	%x2, %x2, 24  #3 pc 64
	jal	%x1, min_caml_truncate  #3 pc 68
	addi	%x2, %x2, -24  #3 pc 72
	lw	%x1, 20(%x2) #3 pc 76
	bge	%x5, %x0, 12  #5 pc 80
	j	bge_else.37 #pc 84
	nop #pc 88
	lw	%x6, 8(%x2)  #5 pc 92
	j	bge_cont.38 #pc 96
	nop #pc 100
bge_else.37: #pc 100
	lw	%x6, 12(%x2)  #5 pc 104
bge_cont.38: #pc 104
	lw	%x7, 8(%x2)  #6 pc 108
	bge	%x0, %x7, 12  #6 pc 112
	j	ble_else.39 #pc 116
	nop #pc 120
	lw	%x9, 12(%x2)  #6 pc 124
	j	ble_cont.40 #pc 128
	nop #pc 132
ble_else.39: #pc 132
	addi	%x9, %x5, 0  #6 pc 136
ble_cont.40: #pc 136
	add	%x6, %x6, %x9  #5 pc 140
	lw	%x9, 12(%x2)  #7 pc 144
	bge	%x9, %x0, 12  #7 pc 148
	j	bge_else.41 #pc 152
	nop #pc 156
	j	bge_cont.42 #pc 160
	nop #pc 164
bge_else.41: #pc 164
	addi	%x5, %x7, 0  #7 pc 168
bge_cont.42: #pc 168
	add	%x5, %x6, %x5  #5 pc 172
	sw	%x1, 20(%x2)  #4 pc 176
	addi	%x2, %x2, 24  #4 pc 180
	jal	%x1, min_caml_print_int  #4 pc 184
	addi	%x2, %x2, -24  #4 pc 188
	lw	%x1, 20(%x2) #4 pc 192
	addi	%x2, %x2, 112
