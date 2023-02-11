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
	addi	%x2, %x0, 0
	addi	%x3, %x0, 1024
	sw	%x1, 0(%x2)  #5 pc 44
	addi	%x2, %x2, 4  #5 pc 48
	jal	%x1, f.12  #5 pc 52
	addi	%x2, %x2, -4  #5 pc 56
	lw	%x1, 0(%x2) #5 pc 60
	bge	%x0, %x5, 12  #6 pc 64
	j	ble_else.30 #pc 68
	nop #pc 72
	sw	%x5, 0(%x2)  #6 pc 76
	sw	%x1, 4(%x2)  #6 pc 80
	addi	%x2, %x2, 8  #6 pc 84
	jal	%x1, g.14  #6 pc 88
	addi	%x2, %x2, -8  #6 pc 92
	lw	%x1, 4(%x2) #6 pc 96
	lw	%x6, 0(%x2)  #6 pc 100
	add	%x5, %x5, %x6  #6 pc 104
	j	ble_cont.31 #pc 108
	nop #pc 112
ble_else.30: #pc 116
	sw	%x5, 0(%x2)  #6 pc 116
	sw	%x1, 4(%x2)  #6 pc 120
	addi	%x2, %x2, 8  #6 pc 124
	jal	%x1, h.16  #6 pc 128
	addi	%x2, %x2, -8  #6 pc 132
	lw	%x1, 4(%x2) #6 pc 136
	lw	%x6, 0(%x2)  #6 pc 140
	sub	%x5, %x5, %x6  #6 pc 144
ble_cont.31: #pc 148
	add	%x5, %x5, %x6  #6 pc 148
	sw	%x1, 4(%x2)  #6 pc 152
	addi	%x2, %x2, 8  #6 pc 156
	jal	%x1, min_caml_print_int  #6 pc 160
	addi	%x2, %x2, -8  #6 pc 164
	lw	%x1, 4(%x2) #6 pc 168
	addi	%x2, %x2, 112
