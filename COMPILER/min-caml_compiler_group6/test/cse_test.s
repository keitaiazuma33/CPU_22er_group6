.section	".rodata"
.align	8
.section	".text"
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 6  #0
	sw	%x1, 12(%x2)  #6
	addi	%x2, %x2, 16  #6
	jal	%x1, min_caml_print_int  #6
	addi	%x2, %x2, -16  #6
	lw	%x1, 12(%x2) #6
	addi	%x2, %x2, 112
