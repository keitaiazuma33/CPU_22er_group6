.section	".rodata"
.align	8
.section	".text"
odd.21:  #pc 0
	bge	%x0, %x5, 12  #5 pc 4
	j	ble_else.36 #pc 8
	nop #pc 12
	bge	%x5, %x0, 12  #6 pc 16
	j	bge_else.37 #pc 20
	nop #pc 24
	addi	%x5, %x0, 456  #0 pc 28
	ret #pc 32
	nop #pc 36
bge_else.37: #pc 36
	addi	%x5, %x5, 1  #6 pc 40
	j	even.17  #6 pc 44
	nop #pc 48
ble_else.36: #pc 48
	addi	%x5, %x5, -1  #5 pc 52
	j	even.17  #5 pc 56
	nop #pc 60
even.17:  #pc 60
	bge	%x0, %x5, 12  #8 pc 64
	j	ble_else.38 #pc 68
	nop #pc 72
	bge	%x5, %x0, 12  #9 pc 76
	j	bge_else.39 #pc 80
	nop #pc 84
	addi	%x5, %x0, 123  #0 pc 88
	ret #pc 92
	nop #pc 96
bge_else.39: #pc 96
	addi	%x5, %x5, 1  #9 pc 100
	j	odd.21  #9 pc 104
	nop #pc 108
ble_else.38: #pc 108
	addi	%x5, %x5, -1  #8 pc 112
	j	odd.21  #8 pc 116
	nop #pc 120
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 789  #0 pc 124
	sw	%x1, 12(%x2)  #11 pc 128
	addi	%x2, %x2, 16  #11 pc 132
	jal	%x1, even.17  #11 pc 136
	addi	%x2, %x2, -16  #11 pc 140
	lw	%x1, 12(%x2) #11 pc 144
	sw	%x1, 12(%x2)  #11 pc 148
	addi	%x2, %x2, 16  #11 pc 152
	jal	%x1, min_caml_print_int  #11 pc 156
	addi	%x2, %x2, -16  #11 pc 160
	lw	%x1, 12(%x2) #11 pc 164
	addi	%x2, %x2, 112
