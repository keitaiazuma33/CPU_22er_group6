.section	".rodata"
.align	8
.section	".text"
gcd.7:  #pc 0
	beq	%x5, %x0, 12  #2 pc 4
	j	be_else.17 #pc 8
	nop #pc 12
	mv	%x5, %x6  #2 pc 16
	ret #pc 20
	nop #pc 24
be_else.17: #pc 24
	bge	%x6, %x5, 12  #3 pc 28
	j	ble_else.18 #pc 32
	nop #pc 36
	sub	%x6, %x6, %x5  #3 pc 40
	j	gcd.7  #3 pc 44
	nop #pc 48
ble_else.18: #pc 48
	sub	%x5, %x5, %x6  #4 pc 52
	mv	%x23, %x6 #pc 56
	mv	%x6, %x5 #pc 60
	mv	%x5, %x23 #pc 64
	j	gcd.7  #4 pc 68
	nop #pc 72
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 21600  #0 pc 76
	addi	%x6, %x0, 337500  #0 pc 80
	sw	%x1, 12(%x2)  #5 pc 84
	addi	%x2, %x2, 16  #5 pc 88
	jal	%x1, gcd.7  #5 pc 92
	addi	%x2, %x2, -16  #5 pc 96
	lw	%x1, 12(%x2) #5 pc 100
	sw	%x1, 12(%x2)  #5 pc 104
	addi	%x2, %x2, 16  #5 pc 108
	jal	%x1, min_caml_print_int  #5 pc 112
	addi	%x2, %x2, -16  #5 pc 116
	lw	%x1, 12(%x2) #5 pc 120
	addi	%x2, %x2, 112
