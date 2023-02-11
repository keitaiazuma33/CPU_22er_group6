.section	".rodata"
.align	8
.section	".text"
f.12:  #pc 0
	addi	%x5, %x0, 123  #0 pc 4
	ret #pc 8
	nop #pc 12
g.14:  #pc 12
	addi	%x5, %x0, 456  #0 pc 16
	ret #pc 20
	nop #pc 24
h.16:  #pc 24
	addi	%x5, %x0, 789  #0 pc 28
	ret #pc 32
	nop #pc 36
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 0  #0 pc 44
	sw	%x1, 12(%x2)  #5 pc 48
	addi	%x2, %x2, 16  #5 pc 52
	jal	%x1, f.12  #5 pc 56
	addi	%x2, %x2, -16  #5 pc 60
	lw	%x1, 12(%x2) #5 pc 64
	bge	%x0, %x5, 12  #6 pc 68
	j	ble_else.30 #pc 72
	nop #pc 76
	sw	%x5, 8(%x2)  #6 pc 80
	addi	%x5, %x0, 0  #0 pc 88
	sw	%x1, 12(%x2)  #6 pc 92
	addi	%x2, %x2, 16  #6 pc 96
	jal	%x1, g.14  #6 pc 100
	addi	%x2, %x2, -16  #6 pc 104
	lw	%x1, 12(%x2) #6 pc 108
	lw	%x6, 8(%x2)  #6 pc 112
	add	%x5, %x5, %x6  #6 pc 116
	j	ble_cont.31 #pc 120
	nop #pc 124
ble_else.30: #pc 124
	sw	%x5, 8(%x2)  #6 pc 128
	addi	%x5, %x0, 0  #0 pc 136
	sw	%x1, 12(%x2)  #6 pc 140
	addi	%x2, %x2, 16  #6 pc 144
	jal	%x1, h.16  #6 pc 148
	addi	%x2, %x2, -16  #6 pc 152
	lw	%x1, 12(%x2) #6 pc 156
	lw	%x6, 8(%x2)  #6 pc 160
	sub	%x5, %x5, %x6  #6 pc 164
ble_cont.31: #pc 164
	add	%x5, %x5, %x6  #6 pc 168
	sw	%x1, 12(%x2)  #6 pc 172
	addi	%x2, %x2, 16  #6 pc 176
	jal	%x1, min_caml_print_int  #6 pc 180
	addi	%x2, %x2, -16  #6 pc 184
	lw	%x1, 12(%x2) #6 pc 188
	addi	%x2, %x2, 112
