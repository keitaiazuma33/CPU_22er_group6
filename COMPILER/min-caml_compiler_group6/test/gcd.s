.section	".rodata"
.align	8
.section	".text"
gcd.7:  #pc 0
	beq	%x5, %x0, 12  #2 pc 0
	j	be_else.17 #pc 4
	nop #pc 8
	addi	%x5, %x6, 0  #2 pc 12
	ret #pc 16
	nop #pc 20
be_else.17: #pc 20
	bge	%x6, %x5, 12  #3 pc 24
	j	ble_else.18 #pc 28
	nop #pc 32
	sub	%x6, %x6, %x5  #3 pc 36
	j	gcd.7  #3 pc 40
	nop #pc 44
ble_else.18: #pc 44
	sub	%x5, %x5, %x6  #4 pc 48
	addi	%x23, %x6, 0  #0 pc 52
	addi	%x6, %x5, 0  #0 pc 56
	addi	%x5, %x23, 0  #0 pc 60
	j	gcd.7  #4 pc 64
	nop #pc 68
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 21600  #0 pc 72
	addi	%x6, %x0, 337500  #0 pc 76
	sw	%x1, 12(%x2)  #5 pc 80
	addi	%x2, %x2, 16  #5 pc 84
	jal	%x1, gcd.7  #5 pc 88
	addi	%x2, %x2, -16  #5 pc 92
	lw	%x1, 12(%x2) #5 pc 96
	sw	%x1, 12(%x2)  #5 pc 100
	addi	%x2, %x2, 16  #5 pc 104
	jal	%x1, min_caml_print_int  #5 pc 108
	addi	%x2, %x2, -16  #5 pc 112
	lw	%x1, 12(%x2) #5 pc 116
	addi	%x2, %x2, 112
