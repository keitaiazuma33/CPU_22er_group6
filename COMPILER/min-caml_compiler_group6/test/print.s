.section	".rodata"
.align	8
.section	".text"
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 123  #0 pc:4
	sw	%x1, 12(%x2)  #1 pc:8
	addi	%x2, %x2, 16  #1 pc:12
	jal	%x1, min_caml_print_int  #1 pc:16
	addi	%x2, %x2, -16  #1 pc:20
	lw	%x1, 12(%x2) #1 pc:24
	addi	%x5, %x0, -456  #0 pc:28
	sw	%x1, 12(%x2)  #2 pc:32
	addi	%x2, %x2, 16  #2 pc:36
	jal	%x1, min_caml_print_int  #2 pc:40
	addi	%x2, %x2, -16  #2 pc:44
	lw	%x1, 12(%x2) #2 pc:48
	addi	%x5, %x0, 789  #0 pc:52
	sw	%x1, 12(%x2)  #3 pc:56
	addi	%x2, %x2, 16  #3 pc:60
	jal	%x1, min_caml_print_int  #3 pc:64
	addi	%x2, %x2, -16  #3 pc:68
	lw	%x1, 12(%x2) #3 pc:72
	addi	%x2, %x2, 112
