.section	".rodata"
.align	8
.section	".text"
.global	min_caml_start
min_caml_start:
	addi	%x2, %x0, 0
	addi	%x3, %x0, 1024
	addi	%x5, %x0, 123  #0 pc 8
	sw	%x1, 0(%x2)  #1 pc 12
	addi	%x2, %x2, 4  #1 pc 16
	jal	%x1, min_caml_print_int  #1 pc 20
	addi	%x2, %x2, -4  #1 pc 24
	lw	%x1, 0(%x2) #1 pc 28
	addi	%x5, %x0, -456  #0 pc 32
	sw	%x1, 0(%x2)  #2 pc 36
	addi	%x2, %x2, 4  #2 pc 40
	jal	%x1, min_caml_print_int  #2 pc 44
	addi	%x2, %x2, -4  #2 pc 48
	lw	%x1, 0(%x2) #2 pc 52
	addi	%x5, %x0, 789  #0 pc 56
	sw	%x1, 0(%x2)  #3 pc 60
	addi	%x2, %x2, 4  #3 pc 64
	jal	%x1, min_caml_print_int  #3 pc 68
	addi	%x2, %x2, -4  #3 pc 72
	lw	%x1, 0(%x2) #3 pc 76
	addi	%x2, %x2, 112
