.section	".rodata"
.align	8
.section	".text"
sum.7:  #16
	bge	%x0, %x5, 12  #2
	j	ble_else.17
	nop
	addi	%x5, %x0, 0  #0
	ret
	nop
ble_else.17:
	addi	%x6, %x5, -1  #3
	sw	%x5, 0(%x2)  #3
	mv	%x5, %x6
	sw	%x1, 4(%x2)  #3
	addi	%x2, %x2, 8  #3
	jal	%x1, sum.7  #3
	addi	%x2, %x2, -8  #3
	lw	%x1, 4(%x2) #3
	lw	%x6, 0(%x2)  #3
	add	%x5, %x5, %x6  #3
	ret
	nop
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 10000  #0
	sw	%x1, 12(%x2)  #4
	addi	%x2, %x2, 16  #4
	jal	%x1, sum.7  #4
	addi	%x2, %x2, -16  #4
	lw	%x1, 12(%x2) #4
	sw	%x1, 12(%x2)  #4
	addi	%x2, %x2, 16  #4
	jal	%x1, min_caml_print_int  #4
	addi	%x2, %x2, -16  #4
	lw	%x1, 12(%x2) #4
	addi	%x2, %x2, 112
