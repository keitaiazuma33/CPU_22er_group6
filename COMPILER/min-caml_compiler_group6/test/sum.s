.section	".rodata"
.align	8
.section	".text"
sum.7:  #pc 0
	bge	%x0, %x5, 12  #2 pc 0
	j	ble_else.17 #pc 4
	nop #pc 8
	addi	%x5, %x0, 0  #0 pc 12
	ret #pc 16
	nop #pc 20
ble_else.17: #pc 24
	addi	%x6, %x5, -1  #3 pc 24
	sw	%x5, 0(%x2)  #3 pc 28
	addi	%x5, %x6, 0  #0 pc 32
	sw	%x1, 4(%x2)  #3 pc 36
	addi	%x2, %x2, 8  #3 pc 40
	jal	%x1, sum.7  #3 pc 44
	addi	%x2, %x2, -8  #3 pc 48
	lw	%x1, 4(%x2) #3 pc 52
	lw	%x6, 0(%x2)  #3 pc 56
	add	%x5, %x5, %x6  #3 pc 60
	ret #pc 64
	nop #pc 68
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 10000  #0 pc 72
	sw	%x1, 12(%x2)  #4 pc 76
	addi	%x2, %x2, 16  #4 pc 80
	jal	%x1, sum.7  #4 pc 84
	addi	%x2, %x2, -16  #4 pc 88
	lw	%x1, 12(%x2) #4 pc 92
	sw	%x1, 12(%x2)  #4 pc 96
	addi	%x2, %x2, 16  #4 pc 100
	jal	%x1, min_caml_print_int  #4 pc 104
	addi	%x2, %x2, -16  #4 pc 108
	lw	%x1, 12(%x2) #4 pc 112
	addi	%x2, %x2, 112
