.section	".rodata"
.align	8
.section	".text"
x.8:
	sub	%x6, %x0, %x5  #2
	sub	%x5, %x5, %x6  #2
	sub	%x6, %x0, %x5  #3
	sub	%x7, %x0, %x6  #3
	sub	%x6, %x6, %x7  #3
	sub	%x5, %x5, %x6  #3
	sub	%x6, %x0, %x5  #4
	sub	%x5, %x5, %x6  #4
	ret
	nop
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 125  #0
	sw	%x1, 12(%x2)  #5
	addi	%x2, %x2, 16  #5
	jal	%x1, x.8  #5
	addi	%x2, %x2, -16  #5
	lw	%x1, 12(%x2) #5
	sub	%x6, %x0, %x5  #5
	sub	%x5, %x5, %x6  #5
	sw	%x1, 12(%x2)  #5
	addi	%x2, %x2, 16  #5
	jal	%x1, min_caml_print_int  #5
	addi	%x2, %x2, -16  #5
	lw	%x1, 12(%x2) #5
	addi	%x2, %x2, 112
