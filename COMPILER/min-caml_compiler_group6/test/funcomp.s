.section	".rodata"
.align	8
.section	".text"
composed.22:  #16
	lw	%x6, 8(%x22)  #0
	lw	%x22, 4(%x22)  #0
	sw	%x6, 0(%x2)  #2
	sw	%x1, 4(%x2)  #2
	lw	%x23, 0(%x22)  #2
	addi	%x2, %x2, 8  #2
	jalr	%x1, %x23  #2
	addi	%x2, %x2, -8  #2
	lw	%x1, 4(%x2)  #2
	lw	%x22, 0(%x2)  #2
	lw	0(%x23), %x22  #2
	jalr	%x0, %x23  #2
	nop
compose.7:  #72
	mv	%x7, %x3  #2
	addi	%x3, %x3, 16  #2
	addi	%x24, %x0, 16  #2 composed.22
	mv	%x9, %x24  #2
	sw	%x9, 0(%x7)  #2
	sw	%x6, 8(%x7)  #2
	sw	%x5, 4(%x7)  #2
	mv	%x5, %x7  #3
	ret
	nop
dbl.10:  #116
	add	%x5, %x5, %x5  #4
	ret
	nop
inc.12:  #132
	addi	%x5, %x5, 1  #5
	ret
	nop
dec.14:  #148
	addi	%x5, %x5, -1  #6
	ret
	nop
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	mv	%x5, %x3  #4
	addi	%x3, %x3, 8  #4
	addi	%x24, %x0, 116  #4 dbl.10
	mv	%x6, %x24  #4
	sw	%x6, 0(%x5)  #4
	mv	%x6, %x3  #5
	addi	%x3, %x3, 8  #5
	addi	%x24, %x0, 132  #5 inc.12
	mv	%x7, %x24  #5
	sw	%x7, 0(%x6)  #5
	mv	%x7, %x3  #6
	addi	%x3, %x3, 8  #6
	addi	%x24, %x0, 148  #6 dec.14
	mv	%x9, %x24  #6
	sw	%x9, 0(%x7)  #6
	sw	%x6, 8(%x2)  #7
	mv	%x6, %x7
	sw	%x1, 12(%x2)  #7
	addi	%x2, %x2, 16  #7
	jal	%x1, compose.7  #7
	addi	%x2, %x2, -16  #7
	lw	%x1, 12(%x2) #7
	mv	%x6, %x5  #7
	lw	%x5, 8(%x2)  #7
	sw	%x1, 12(%x2)  #7
	addi	%x2, %x2, 16  #7
	jal	%x1, compose.7  #7
	addi	%x2, %x2, -16  #7
	lw	%x1, 12(%x2) #7
	mv	%x22, %x5  #7
	addi	%x5, %x0, 123  #0
	sw	%x1, 12(%x2)  #8
	lw	%x23, 0(%x22)  #8
	addi	%x2, %x2, 16  #8
	jalr	%x1, %x23  #8
	addi	%x2, %x2, -16  #8
	lw	%x1, 12(%x2)  #8
	sw	%x1, 12(%x2)  #8
	addi	%x2, %x2, 16  #8
	jal	%x1, min_caml_print_int  #8
	addi	%x2, %x2, -16  #8
	lw	%x1, 12(%x2) #8
	addi	%x2, %x2, 112
