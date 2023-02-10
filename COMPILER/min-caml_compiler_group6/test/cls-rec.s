.section	".rodata"
.align	8
.section	".text"
f.8:  #16
	lw	%x6, 4(%x22)  #0
	beq	%x5, %x0, 12  #4
	j	be_else.21
	nop
	addi	%x5, %x0, 0  #0
	ret
	nop
be_else.21:
	addi	%x5, %x5, -1  #5
	sw	%x6, 0(%x2)  #5
	sw	%x1, 4(%x2)  #5
	lw	%x23, 0(%x22)  #5
	addi	%x2, %x2, 8  #5
	jalr	%x1, %x23  #5
	addi	%x2, %x2, -8  #5
	lw	%x1, 4(%x2)  #5
	lw	%x6, 0(%x2)  #5
	add	%x5, %x6, %x5  #5
	ret
	nop
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 10  #0
	mv	%x22, %x3  #3
	addi	%x3, %x3, 8  #3
	addi	%x24, %x0, 16  #3 f.8
	mv	%x6, %x24  #3
	sw	%x6, 0(%x22)  #3
	sw	%x5, 4(%x22)  #3
	addi	%x5, %x0, 123  #0
	sw	%x1, 12(%x2)  #6
	lw	%x23, 0(%x22)  #6
	addi	%x2, %x2, 16  #6
	jalr	%x1, %x23  #6
	addi	%x2, %x2, -16  #6
	lw	%x1, 12(%x2)  #6
	sw	%x1, 12(%x2)  #6
	addi	%x2, %x2, 16  #6
	jal	%x1, min_caml_print_int  #6
	addi	%x2, %x2, -16  #6
	lw	%x1, 12(%x2) #6
	addi	%x2, %x2, 112
