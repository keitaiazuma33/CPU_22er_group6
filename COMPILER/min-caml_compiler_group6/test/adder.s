.section	".rodata"
.align	8
.section	".text"
adder.11:
	lw	%x6, 4(%x22)  #2
	add	%x5, %x6, %x5  #2
	ret
	nop
make_adder.5:
	mv	%x6, %x3  #2
	addi	%x3, %x3, 8  #2
	addi	%x24, %x0, 16  #2 adder.11
	mv	%x7, %x24  #2
	sw	%x7, 0(%x6)  #2
	sw	%x5, 4(%x6)  #2
	mv	%x5, %x6  #3
	ret
	nop
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 3  #0
	sw	%x1, 12(%x2)  #4
	addi	%x2, %x2, 16  #4
	jal	%x1, make_adder.5  #4
	addi	%x2, %x2, -16  #4
	lw	%x1, 12(%x2) #4
	mv	%x22, %x5  #4
	addi	%x5, %x0, 7  #0
	sw	%x1, 12(%x2)  #4
	lw	%x23, 0(%x22)  #4
	addi	%x2, %x2, 16  #4
	jal	%x1, %x23  #4
	addi	%x2, %x2, -16  #4
	lw	%x1, 12(%x2)  #4
	sw	%x1, 12(%x2)  #4
	addi	%x2, %x2, 16  #4
	jal	%x1, min_caml_print_int  #4
	addi	%x2, %x2, -16  #4
	lw	%x1, 12(%x2) #4
	addi	%x2, %x2, 112
