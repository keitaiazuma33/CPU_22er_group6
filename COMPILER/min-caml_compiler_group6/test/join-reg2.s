.section	".rodata"
.align	8
.section	".text"
f.12:  #pc 0
	addi	%x5, %x0, 123  #0 pc 0
	ret #pc 4
	nop #pc 8
g.14:  #pc 12
	addi	%x5, %x0, 456  #0 pc 12
	ret #pc 16
	nop #pc 20
h.16:  #pc 24
	addi	%x5, %x0, 789  #0 pc 24
	ret #pc 28
	nop #pc 32
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 0  #0 pc 36
	sw	%x1, 12(%x2)  #5 pc 40
	addi	%x2, %x2, 16  #5 pc 44
	jal	%x1, f.12  #5 pc 48
	addi	%x2, %x2, -16  #5 pc 52
	lw	%x1, 12(%x2) #5 pc 56
	bge	%x0, %x5, 12  #6 pc 60
	j	ble_else.30 #pc 64
	nop #pc 68
	sw	%x5, 8(%x2)  #6 pc 72
	addi	%x5, %x0, 0  #0 pc 76
	sw	%x1, 12(%x2)  #6 pc 80
	addi	%x2, %x2, 16  #6 pc 84
	jal	%x1, g.14  #6 pc 88
	addi	%x2, %x2, -16  #6 pc 92
	lw	%x1, 12(%x2) #6 pc 96
	lw	%x6, 8(%x2)  #6 pc 100
	add	%x5, %x5, %x6  #6 pc 104
	j	ble_cont.31 #pc 108
	nop #pc 112
ble_else.30: #pc 116
	sw	%x5, 8(%x2)  #6 pc 116
	addi	%x5, %x0, 0  #0 pc 120
	sw	%x1, 12(%x2)  #6 pc 124
	addi	%x2, %x2, 16  #6 pc 128
	jal	%x1, h.16  #6 pc 132
	addi	%x2, %x2, -16  #6 pc 136
	lw	%x1, 12(%x2) #6 pc 140
	lw	%x6, 8(%x2)  #6 pc 144
	sub	%x5, %x5, %x6  #6 pc 148
ble_cont.31: #pc 152
	add	%x5, %x5, %x6  #6 pc 152
	sw	%x1, 12(%x2)  #6 pc 156
	addi	%x2, %x2, 16  #6 pc 160
	jal	%x1, min_caml_print_int  #6 pc 164
	addi	%x2, %x2, -16  #6 pc 168
	lw	%x1, 12(%x2) #6 pc 172
	addi	%x2, %x2, 112
