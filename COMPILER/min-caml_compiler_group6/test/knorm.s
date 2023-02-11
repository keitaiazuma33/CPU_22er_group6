.section	".rodata"
.align	8
.section	".text"
x.8:  #pc 0
	sub	%x6, %x0, %x5  #2 pc 0
	sub	%x5, %x5, %x6  #2 pc 4
	sub	%x6, %x0, %x5  #3 pc 8
	sub	%x7, %x0, %x6  #3 pc 12
	sub	%x6, %x6, %x7  #3 pc 16
	sub	%x5, %x5, %x6  #3 pc 20
	sub	%x6, %x0, %x5  #4 pc 24
	sub	%x5, %x5, %x6  #4 pc 28
	ret #pc 32
	nop #pc 36
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 125  #0 pc 40
	sw	%x1, 12(%x2)  #5 pc 44
	addi	%x2, %x2, 16  #5 pc 48
	jal	%x1, x.8  #5 pc 52
	addi	%x2, %x2, -16  #5 pc 56
	lw	%x1, 12(%x2) #5 pc 60
	sub	%x6, %x0, %x5  #5 pc 64
	sub	%x5, %x5, %x6  #5 pc 68
	sw	%x1, 12(%x2)  #5 pc 72
	addi	%x2, %x2, 16  #5 pc 76
	jal	%x1, min_caml_print_int  #5 pc 80
	addi	%x2, %x2, -16  #5 pc 84
	lw	%x1, 12(%x2) #5 pc 88
	addi	%x2, %x2, 112
