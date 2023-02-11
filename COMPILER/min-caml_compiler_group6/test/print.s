.section	".rodata"
.align	8
.section	".text"
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 123  #0 pc 0
	sw	%x1, 12(%x2)  #1 pc 4
	addi	%x2, %x2, 16  #1 pc 8
	jal	%x1, min_caml_print_int  #1 pc 12
	addi	%x2, %x2, -16  #1 pc 16
	lw	%x1, 12(%x2) #1 pc 20
	addi	%x5, %x0, -456  #0 pc 24
	sw	%x1, 12(%x2)  #2 pc 28
	addi	%x2, %x2, 16  #2 pc 32
	jal	%x1, min_caml_print_int  #2 pc 36
	addi	%x2, %x2, -16  #2 pc 40
	lw	%x1, 12(%x2) #2 pc 44
	addi	%x5, %x0, 789  #0 pc 48
	sw	%x1, 12(%x2)  #3 pc 52
	addi	%x2, %x2, 16  #3 pc 56
	jal	%x1, min_caml_print_int  #3 pc 60
	addi	%x2, %x2, -16  #3 pc 64
	lw	%x1, 12(%x2) #3 pc 68
	addi	%x2, %x2, 112
