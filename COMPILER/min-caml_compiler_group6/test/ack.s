.section	".rodata"
.align	8
.section	".text"
ack.15:  #pc 0
	bge	%x0, %x5, 12  #2 pc 0
	j	ble_else.34 #pc 4
	nop #pc 8
	addi	%x5, %x6, 1  #2 pc 12
	ret #pc 16
	nop #pc 20
ble_else.34: #pc 24
	bge	%x0, %x6, 12  #3 pc 24
	j	ble_else.35 #pc 28
	nop #pc 32
	addi	%x5, %x5, -1  #3 pc 36
	addi	%x6, %x0, 1  #0 pc 40
	j	ack.15  #3 pc 44
	nop #pc 48
ble_else.35: #pc 52
	addi	%x7, %x5, -1  #4 pc 52
	addi	%x6, %x6, -1  #4 pc 56
	sw	%x7, 0(%x2)  #4 pc 60
	sw	%x1, 4(%x2)  #4 pc 64
	addi	%x2, %x2, 8  #4 pc 68
	jal	%x1, ack.15  #4 pc 72
	addi	%x2, %x2, -8  #4 pc 76
	lw	%x1, 4(%x2) #4 pc 80
	addi	%x6, %x5, 0  #4 pc 84
	lw	%x5, 0(%x2)  #4 pc 88
	j	ack.15  #4 pc 92
	nop #pc 96
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 3  #0 pc 100
	addi	%x6, %x0, 10  #0 pc 104
	sw	%x1, 12(%x2)  #5 pc 108
	addi	%x2, %x2, 16  #5 pc 112
	jal	%x1, ack.15  #5 pc 116
	addi	%x2, %x2, -16  #5 pc 120
	lw	%x1, 12(%x2) #5 pc 124
	sw	%x1, 12(%x2)  #5 pc 128
	addi	%x2, %x2, 16  #5 pc 132
	jal	%x1, min_caml_print_int  #5 pc 136
	addi	%x2, %x2, -16  #5 pc 140
	lw	%x1, 12(%x2) #5 pc 144
	addi	%x2, %x2, 112
