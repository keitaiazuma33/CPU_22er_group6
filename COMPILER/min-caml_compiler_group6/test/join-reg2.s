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
	mv	%x5, %x0 #pc 40
	sw	%x1, 12(%x2)  #5 pc 44
	addi	%x2, %x2, 16  #5 pc 48
	jal	%x1, f.12  #5 pc 52
	addi	%x2, %x2, -16  #5 pc 56
	lw	%x1, 12(%x2) #5 pc 60
	bge	%x0, %x5, 12  #6 pc 64
	j	ble_else.30 #pc 68
	nop #pc 72
	sw	%x5, 8(%x2)  #6 pc 76
	mv	%x5, %x0 #pc 80
	sw	%x1, 12(%x2)  #6 pc 84
	addi	%x2, %x2, 16  #6 pc 88
	jal	%x1, g.14  #6 pc 92
	addi	%x2, %x2, -16  #6 pc 96
	lw	%x1, 12(%x2) #6 pc 100
	lw	%x6, 8(%x2)  #6 pc 104
	add	%x5, %x5, %x6  #6 pc 108
	j	ble_cont.31 #pc 112
	nop #pc 116
ble_else.30: #pc 116
	sw	%x5, 8(%x2)  #6 pc 120
	mv	%x5, %x0 #pc 124
	sw	%x1, 12(%x2)  #6 pc 128
	addi	%x2, %x2, 16  #6 pc 132
	jal	%x1, h.16  #6 pc 136
	addi	%x2, %x2, -16  #6 pc 140
	lw	%x1, 12(%x2) #6 pc 144
	lw	%x6, 8(%x2)  #6 pc 148
	sub	%x5, %x5, %x6  #6 pc 152
ble_cont.31: #pc 152
	add	%x5, %x5, %x6  #6 pc 156
	sw	%x1, 12(%x2)  #6 pc 160
	addi	%x2, %x2, 16  #6 pc 164
	jal	%x1, min_caml_print_int  #6 pc 168
	addi	%x2, %x2, -16  #6 pc 172
	lw	%x1, 12(%x2) #6 pc 176
	addi	%x2, %x2, 112
