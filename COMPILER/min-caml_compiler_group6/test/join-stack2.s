.section	".rodata"
.align	8
.section	".text"
f.9:  #pc 0
	addi	%x5, %x0, 123  #0 pc 4
	ret #pc 8
	nop #pc 12
g.11:  #pc 12
	addi	%x5, %x0, 456  #0 pc 16
	ret #pc 20
	nop #pc 24
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 0  #0 pc 32
	sw	%x1, 12(%x2)  #4 pc 36
	addi	%x2, %x2, 16  #4 pc 40
	jal	%x1, f.9  #4 pc 44
	addi	%x2, %x2, -16  #4 pc 48
	lw	%x1, 12(%x2) #4 pc 52
	sw	%x5, 8(%x2)  #5 pc 56
	bge	%x0, %x5, 12  #5 pc 60
	j	ble_else.23 #pc 64
	nop #pc 68
	addi	%x5, %x0, 0  #0 pc 76
	sw	%x1, 12(%x2)  #5 pc 80
	addi	%x2, %x2, 16  #5 pc 84
	jal	%x1, g.11  #5 pc 88
	addi	%x2, %x2, -16  #5 pc 92
	lw	%x1, 12(%x2) #5 pc 96
	lw	%x6, 8(%x2)  #5 pc 100
	add	%x5, %x5, %x6  #5 pc 104
	j	ble_cont.24 #pc 108
	nop #pc 112
ble_else.23: #pc 112
ble_cont.24: #pc 112
	lw	%x6, 8(%x2)  #5 pc 116
	add	%x5, %x5, %x6  #5 pc 120
	sw	%x1, 12(%x2)  #5 pc 124
	addi	%x2, %x2, 16  #5 pc 128
	jal	%x1, min_caml_print_int  #5 pc 132
	addi	%x2, %x2, -16  #5 pc 136
	lw	%x1, 12(%x2) #5 pc 140
	addi	%x2, %x2, 112
