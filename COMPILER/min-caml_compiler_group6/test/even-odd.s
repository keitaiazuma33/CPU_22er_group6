.section	".rodata"
.align	8
.section	".text"
odd.21:  #pc 0
	bge	%x0, %x5, 12  #5 pc 0
	j	ble_else.36 #pc 4
	nop #pc 8
	bge	%x5, %x0, 12  #6 pc 12
	j	bge_else.37 #pc 16
	nop #pc 20
	addi	%x5, %x0, 456  #0 pc 24
	ret #pc 28
	nop #pc 32
bge_else.37: #pc 36
	addi	%x5, %x5, 1  #6 pc 36
	j	even.17  #6 pc 40
	nop #pc 44
ble_else.36: #pc 48
	addi	%x5, %x5, -1  #5 pc 48
	j	even.17  #5 pc 52
	nop #pc 56
even.17:  #pc 60
	bge	%x0, %x5, 12  #8 pc 60
	j	ble_else.38 #pc 64
	nop #pc 68
	bge	%x5, %x0, 12  #9 pc 72
	j	bge_else.39 #pc 76
	nop #pc 80
	addi	%x5, %x0, 123  #0 pc 84
	ret #pc 88
	nop #pc 92
bge_else.39: #pc 96
	addi	%x5, %x5, 1  #9 pc 96
	j	odd.21  #9 pc 100
	nop #pc 104
ble_else.38: #pc 108
	addi	%x5, %x5, -1  #8 pc 108
	j	odd.21  #8 pc 112
	nop #pc 116
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 789  #0 pc 120
	sw	%x1, 12(%x2)  #11 pc 124
	addi	%x2, %x2, 16  #11 pc 128
	jal	%x1, even.17  #11 pc 132
	addi	%x2, %x2, -16  #11 pc 136
	lw	%x1, 12(%x2) #11 pc 140
	sw	%x1, 12(%x2)  #11 pc 144
	addi	%x2, %x2, 16  #11 pc 148
	jal	%x1, min_caml_print_int  #11 pc 152
	addi	%x2, %x2, -16  #11 pc 156
	lw	%x1, 12(%x2) #11 pc 160
	addi	%x2, %x2, 112
