.section	".rodata"
.align	8
l.32:	! -7.890000
l.30:	! 4.560000
l.28:	! 1.230000
.section	".text"
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	mv	%f0, l.28  #0 pc 4
	sw	%x1, 12(%x2)  #1 pc 8
	addi	%x2, %x2, 16  #1 pc 12
	jal	%x1, min_caml_truncate  #1 pc 16
	addi	%x2, %x2, -16  #1 pc 20
	lw	%x1, 12(%x2) #1 pc 24
	mv	%f0, l.30  #0 pc 28
	sw	%x5, 8(%x2)  #2 pc 32
	sw	%x1, 12(%x2)  #2 pc 36
	addi	%x2, %x2, 16  #2 pc 40
	jal	%x1, min_caml_truncate  #2 pc 44
	addi	%x2, %x2, -16  #2 pc 48
	lw	%x1, 12(%x2) #2 pc 52
	mv	%f0, l.32  #0 pc 56
	sw	%x5, 12(%x2)  #3 pc 60
	sw	%x1, 20(%x2)  #3 pc 64
	addi	%x2, %x2, 24  #3 pc 68
	jal	%x1, min_caml_truncate  #3 pc 72
	addi	%x2, %x2, -24  #3 pc 76
	lw	%x1, 20(%x2) #3 pc 80
	bge	%x5, %x0, 12  #5 pc 84
	j	bge_else.37 #pc 88
	nop #pc 92
	lw	%x6, 8(%x2)  #5 pc 96
	j	bge_cont.38 #pc 100
	nop #pc 104
bge_else.37: #pc 104
	lw	%x6, 12(%x2)  #5 pc 108
bge_cont.38: #pc 108
	lw	%x7, 8(%x2)  #6 pc 112
	bge	%x0, %x7, 12  #6 pc 116
	j	ble_else.39 #pc 120
	nop #pc 124
	lw	%x9, 12(%x2)  #6 pc 128
	j	ble_cont.40 #pc 132
	nop #pc 136
ble_else.39: #pc 136
	mv	%x9, %x5  #6 pc 140
ble_cont.40: #pc 140
	add	%x6, %x6, %x9  #5 pc 144
	lw	%x9, 12(%x2)  #7 pc 148
	bge	%x9, %x0, 12  #7 pc 152
	j	bge_else.41 #pc 156
	nop #pc 160
	j	bge_cont.42 #pc 164
	nop #pc 168
bge_else.41: #pc 168
	mv	%x5, %x7  #7 pc 172
bge_cont.42: #pc 172
	add	%x5, %x6, %x5  #5 pc 176
	sw	%x1, 20(%x2)  #4 pc 180
	addi	%x2, %x2, 24  #4 pc 184
	jal	%x1, min_caml_print_int  #4 pc 188
	addi	%x2, %x2, -24  #4 pc 192
	lw	%x1, 20(%x2) #4 pc 196
	addi	%x2, %x2, 112
