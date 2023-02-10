.section	".rodata"
.align	8
.section	".text"
sum.8:  #pc 0
	bge	%x0, %x6, 12  #2 pc 4
	j	ble_else.19 #pc 8
	nop #pc 12
	ret #pc 16
	nop #pc 20
ble_else.19: #pc 20
	add	%x5, %x5, %x6  #3 pc 24
	addi	%x6, %x6, -1  #3 pc 28
	j	sum.8  #3 pc 32
	nop #pc 36
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 0  #0 pc 40
	addi	%x6, %x0, 10000  #0 pc 44
	sw	%x1, 12(%x2)  #4 pc 48
	addi	%x2, %x2, 16  #4 pc 52
	jal	%x1, sum.8  #4 pc 56
	addi	%x2, %x2, -16  #4 pc 60
	lw	%x1, 12(%x2) #4 pc 64
	sw	%x1, 12(%x2)  #4 pc 68
	addi	%x2, %x2, 16  #4 pc 72
	jal	%x1, min_caml_print_int  #4 pc 76
	addi	%x2, %x2, -16  #4 pc 80
	lw	%x1, 12(%x2) #4 pc 84
	addi	%x2, %x2, 112
