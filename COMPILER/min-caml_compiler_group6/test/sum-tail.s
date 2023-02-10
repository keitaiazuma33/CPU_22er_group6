.section	".rodata"
.align	8
.section	".text"
sum.8:  #0
	bge	%x0, %x6, 12  #2
	j	ble_else.19
	nop
	ret
	nop
ble_else.19:
	add	%x5, %x5, %x6  #3
	addi	%x6, %x6, -1  #3
	j	sum.8  #3
	nop
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 0  #0
	addi	%x6, %x0, 10000  #0
	sw	%x1, 12(%x2)  #4
	addi	%x2, %x2, 16  #4
	jal	%x1, sum.8  #4
	addi	%x2, %x2, -16  #4
	lw	%x1, 12(%x2) #4
	sw	%x1, 12(%x2)  #4
	addi	%x2, %x2, 16  #4
	jal	%x1, min_caml_print_int  #4
	addi	%x2, %x2, -16  #4
	lw	%x1, 12(%x2) #4
	addi	%x2, %x2, 112
