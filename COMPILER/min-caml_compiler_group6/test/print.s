.section	".rodata"
.align	8
.section	".text"
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 123  #0
	sw	%x1, 12(%x2)  #1
	addi	%x2, %x2, 16  #1
	jal	%x1, min_caml_print_int  #1
	addi	%x2, %x2, -16  #1
	lw	%x1, 12(%x2) #1
	addi	%x5, %x0, -456  #0
	sw	%x1, 12(%x2)  #2
	addi	%x2, %x2, 16  #2
	jal	%x1, min_caml_print_int  #2
	addi	%x2, %x2, -16  #2
	lw	%x1, 12(%x2) #2
	addi	%x5, %x0, 789  #0
	sw	%x1, 12(%x2)  #3
	addi	%x2, %x2, 16  #3
	jal	%x1, min_caml_print_int  #3
	addi	%x2, %x2, -16  #3
	lw	%x1, 12(%x2) #3
	addi	%x2, %x2, 112
