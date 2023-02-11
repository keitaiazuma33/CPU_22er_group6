.section	".rodata"
.align	8
.section	".text"
f.9:  #pc 0
	addi	%x5, %x0, 123  #0 pc 0
	ret #pc 4
	nop #pc 8
g.11:  #pc 12
	addi	%x5, %x0, 456  #0 pc 12
	ret #pc 16
	nop #pc 20
.global	min_caml_start
min_caml_start:
	addi	%x2, %x0, 0
	addi	%x3, %x0, 1024
	sw	%x1, 0(%x2)  #4 pc 32
	addi	%x2, %x2, 4  #4 pc 36
	jal	%x1, f.9  #4 pc 40
	addi	%x2, %x2, -4  #4 pc 44
	lw	%x1, 0(%x2) #4 pc 48
	sw	%x5, 0(%x2)  #5 pc 52
	bge	%x0, %x5, 12  #5 pc 56
	j	ble_else.23 #pc 60
	nop #pc 64
	sw	%x1, 4(%x2)  #5 pc 68
	addi	%x2, %x2, 8  #5 pc 72
	jal	%x1, g.11  #5 pc 76
	addi	%x2, %x2, -8  #5 pc 80
	lw	%x1, 4(%x2) #5 pc 84
	lw	%x6, 0(%x2)  #5 pc 88
	add	%x5, %x5, %x6  #5 pc 92
	j	ble_cont.24 #pc 96
	nop #pc 100
ble_else.23: #pc 104
ble_cont.24: #pc 104
	lw	%x6, 0(%x2)  #5 pc 104
	add	%x5, %x5, %x6  #5 pc 108
	sw	%x1, 4(%x2)  #5 pc 112
	addi	%x2, %x2, 8  #5 pc 116
	jal	%x1, min_caml_print_int  #5 pc 120
	addi	%x2, %x2, -8  #5 pc 124
	lw	%x1, 4(%x2) #5 pc 128
	addi	%x2, %x2, 112
