.section	".rodata"
.align	8
.section	".text"
odd.21:  #0
	bge	%x0, %x5, 12  #5
	j	ble_else.36
	nop
	bge	%x5, %x0, 12  #6
	j	bge_else.37
	nop
	addi	%x5, %x0, 456  #0
	ret
	nop
bge_else.37:
	addi	%x5, %x5, 1  #6
	j	even.17  #6
	nop
ble_else.36:
	addi	%x5, %x5, -1  #5
	j	even.17  #5
	nop
even.17:  #68
	bge	%x0, %x5, 12  #8
	j	ble_else.38
	nop
	bge	%x5, %x0, 12  #9
	j	bge_else.39
	nop
	addi	%x5, %x0, 123  #0
	ret
	nop
bge_else.39:
	addi	%x5, %x5, 1  #9
	j	odd.21  #9
	nop
ble_else.38:
	addi	%x5, %x5, -1  #8
	j	odd.21  #8
	nop
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 789  #0
	sw	%x1, 12(%x2)  #11
	addi	%x2, %x2, 16  #11
	jal	%x1, even.17  #11
	addi	%x2, %x2, -16  #11
	lw	%x1, 12(%x2) #11
	sw	%x1, 12(%x2)  #11
	addi	%x2, %x2, 16  #11
	jal	%x1, min_caml_print_int  #11
	addi	%x2, %x2, -16  #11
	lw	%x1, 12(%x2) #11
	addi	%x2, %x2, 112
