.section	".rodata"
.align	8
.section	".text"
f.10:  #pc 0
	addi	%x5, %x0, 123  #0 pc 0
	ret #pc 4
	nop #pc 8
g.12:  #pc 12
	addi	%x5, %x0, 456  #0 pc 12
	ret #pc 16
	nop #pc 20
h.14:  #pc 24
	addi	%x5, %x0, 789  #0 pc 24
	ret #pc 28
	nop #pc 32
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 0  #0 pc 36
	sw	%x1, 12(%x2)  #5 pc 40
	addi	%x2, %x2, 16  #5 pc 44
	jal	%x1, f.10  #5 pc 48
	addi	%x2, %x2, -16  #5 pc 52
	lw	%x1, 12(%x2) #5 pc 56
	sw	%x5, 8(%x2)  #6 pc 60
	bge	%x0, %x5, 12  #6 pc 64
	j	ble_else.27 #pc 68
	nop #pc 72
	addi	%x5, %x0, 0  #0 pc 76
	sw	%x1, 12(%x2)  #6 pc 80
	addi	%x2, %x2, 16  #6 pc 84
	jal	%x1, g.12  #6 pc 88
	addi	%x2, %x2, -16  #6 pc 92
	lw	%x1, 12(%x2) #6 pc 96
	j	ble_cont.28 #pc 100
	nop #pc 104
ble_else.27: #pc 108
	addi	%x5, %x0, 0  #0 pc 108
	sw	%x1, 12(%x2)  #6 pc 112
	addi	%x2, %x2, 16  #6 pc 116
	jal	%x1, h.14  #6 pc 120
	addi	%x2, %x2, -16  #6 pc 124
	lw	%x1, 12(%x2) #6 pc 128
ble_cont.28: #pc 132
	lw	%x6, 8(%x2)  #6 pc 132
	add	%x5, %x5, %x6  #6 pc 136
	sw	%x1, 12(%x2)  #6 pc 140
	addi	%x2, %x2, 16  #6 pc 144
	jal	%x1, min_caml_print_int  #6 pc 148
	addi	%x2, %x2, -16  #6 pc 152
	lw	%x1, 12(%x2) #6 pc 156
	addi	%x2, %x2, 112
