.section	".rodata"
.align	8
.section	".text"
.global	min_caml_start
min_caml_start:
	addi	%x2, %x0, 0
	addi	%x3, %x0, 1024
	addi	%x5, %x0, 6  #0 pc 8
	sw	%x1, 0(%x2)  #6 pc 12
	addi	%x2, %x2, 4  #6 pc 16
	jal	%x1, min_caml_print_int  #6 pc 20
	addi	%x2, %x2, -4  #6 pc 24
	lw	%x1, 0(%x2) #6 pc 28
	addi	%x2, %x2, 112
