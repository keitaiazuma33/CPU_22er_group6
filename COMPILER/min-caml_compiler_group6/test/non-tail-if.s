.section	".rodata"
.align	8
l.32:	! -7.890000
l.30:	! 4.560000
l.28:	! 1.230000
.section	".text"
.global	min_caml_start
min_caml_start:
	addi	%x2, %x0, 0
	addi	%x3, %x0, 1024
	fmv	%f0, l.28  #0 pc 8
	sw	%x1, 0(%x2)  #1 pc 12
	addi	%x2, %x2, 4  #1 pc 16
	jal	%x1, min_caml_truncate  #1 pc 20
	addi	%x2, %x2, -4  #1 pc 24
	lw	%x1, 0(%x2) #1 pc 28
	fmv	%f0, l.30  #0 pc 32
	sw	%x5, 0(%x2)  #2 pc 36
	sw	%x1, 4(%x2)  #2 pc 40
	addi	%x2, %x2, 8  #2 pc 44
	jal	%x1, min_caml_truncate  #2 pc 48
	addi	%x2, %x2, -8  #2 pc 52
	lw	%x1, 4(%x2) #2 pc 56
	fmv	%f0, l.32  #0 pc 60
	sw	%x5, 4(%x2)  #3 pc 64
	sw	%x1, 8(%x2)  #3 pc 68
	addi	%x2, %x2, 12  #3 pc 72
	jal	%x1, min_caml_truncate  #3 pc 76
	addi	%x2, %x2, -12  #3 pc 80
	lw	%x1, 8(%x2) #3 pc 84
	bge	%x5, %x0, 12  #5 pc 88
	j	bge_else.37 #pc 92
	nop #pc 96
	lw	%x6, 0(%x2)  #5 pc 100
	j	bge_cont.38 #pc 104
	nop #pc 108
bge_else.37: #pc 112
	lw	%x6, 4(%x2)  #5 pc 112
bge_cont.38: #pc 116
	lw	%x7, 0(%x2)  #6 pc 116
	bge	%x0, %x7, 12  #6 pc 120
	j	ble_else.39 #pc 124
	nop #pc 128
	lw	%x8, 4(%x2)  #6 pc 132
	j	ble_cont.40 #pc 136
	nop #pc 140
ble_else.39: #pc 144
	addi	%x8, %x5, 0  #6 pc 144
ble_cont.40: #pc 148
	add	%x6, %x6, %x8  #5 pc 148
	lw	%x8, 4(%x2)  #7 pc 152
	bge	%x8, %x0, 12  #7 pc 156
	j	bge_else.41 #pc 160
	nop #pc 164
	j	bge_cont.42 #pc 168
	nop #pc 172
bge_else.41: #pc 176
	addi	%x5, %x7, 0  #7 pc 176
bge_cont.42: #pc 180
	add	%x5, %x6, %x5  #5 pc 180
	sw	%x1, 8(%x2)  #4 pc 184
	addi	%x2, %x2, 12  #4 pc 188
	jal	%x1, min_caml_print_int  #4 pc 192
	addi	%x2, %x2, -12  #4 pc 196
	lw	%x1, 8(%x2) #4 pc 200
	addi	%x2, %x2, 112
