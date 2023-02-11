.section	".rodata"
.align	8
.section	".text"
sum.7:  #pc 0
	bge	%x0, %x5, 12  #2 pc 4
	j	ble_else.17 #pc 8
	nop #pc 12
	addi	%x5, %x0, 0  #0 pc 16
	ret #pc 20
	nop #pc 24
ble_else.17: #pc 24
	addi	%x6, %x5, -1  #3 pc 28
	sw	%x5, 0(%x2)  #3 pc 32
	addi	%x5, %x6, 0  #0 pc 40
	sw	%x1, 4(%x2)  #3 pc 44
	addi	%x2, %x2, 8  #3 pc 48
	jal	%x1, sum.7  #3 pc 52
	addi	%x2, %x2, -8  #3 pc 56
	lw	%x1, 4(%x2) #3 pc 60
	lw	%x6, 0(%x2)  #3 pc 64
	add	%x5, %x5, %x6  #3 pc 68
	ret #pc 72
	nop #pc 76
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 10000  #0 pc 80
	sw	%x1, 12(%x2)  #4 pc 84
	addi	%x2, %x2, 16  #4 pc 88
	jal	%x1, sum.7  #4 pc 92
	addi	%x2, %x2, -16  #4 pc 96
	lw	%x1, 12(%x2) #4 pc 100
	sw	%x1, 12(%x2)  #4 pc 104
	addi	%x2, %x2, 16  #4 pc 108
	jal	%x1, min_caml_print_int  #4 pc 112
	addi	%x2, %x2, -16  #4 pc 116
	lw	%x1, 12(%x2) #4 pc 120
	addi	%x2, %x2, 112
