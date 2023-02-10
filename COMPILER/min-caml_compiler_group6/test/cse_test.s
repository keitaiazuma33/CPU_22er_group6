.section	".rodata"
.align	8
.section	".text"
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 6  #0 pc 4
	sw	%x1, 12(%x2)  #6 pc 8
	addi	%x2, %x2, 16  #6 pc 12
	jal	%x1, min_caml_print_int  #6 pc 16
	addi	%x2, %x2, -16  #6 pc 20
	lw	%x1, 12(%x2) #6 pc 24
	addi	%x2, %x2, 112
