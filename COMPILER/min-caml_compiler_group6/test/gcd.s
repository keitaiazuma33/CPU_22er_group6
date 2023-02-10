.section	".rodata"
.align	8
.section	".text"
gcd.7:  #16
	beq	%x5, %x0, 12  #2
	j	be_else.17
	nop
	mv	%x5, %x6  #2
	ret
	nop
be_else.17:
	bge	%x6, %x5, 12  #3
	j	ble_else.18
	nop
	sub	%x6, %x6, %x5  #3
	j	gcd.7  #3
	nop
ble_else.18:
	sub	%x5, %x5, %x6  #4
	mv	%x23, %x6
	mv	%x6, %x5
	mv	%x5, %x23
	j	gcd.7  #4
	nop
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 21600  #0
	addi	%x6, %x0, 337500  #0
	sw	%x1, 12(%x2)  #5
	addi	%x2, %x2, 16  #5
	jal	%x1, gcd.7  #5
	addi	%x2, %x2, -16  #5
	lw	%x1, 12(%x2) #5
	sw	%x1, 12(%x2)  #5
	addi	%x2, %x2, 16  #5
	jal	%x1, min_caml_print_int  #5
	addi	%x2, %x2, -16  #5
	lw	%x1, 12(%x2) #5
	addi	%x2, %x2, 112
