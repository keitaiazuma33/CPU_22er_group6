.section	".rodata"
.align	8
.section	".text"
composed.22:
	lw	%x6, 8(%x22)  #0
	lw	%x22, 4(%x22)  #0
	sw	%x6, 0(%x2)  #2
	sw	%x1, 4(%x2)  #2
	lw	%x23, 0(%x22)  #2
	addi	%x2, %x2, 8  #2
	jal	%x1, %x23  #2
	addi	%x2, %x2, -8  #2
	lw	%x1, 4(%x2)  #2
	lw	%x22, 0(%x2)  #2
	lw	0(%x23), %x22  #2
	j	%x23  #2
	nop
compose.7:
	mv	%x7, %x3  #2
	addi	%x3, %x3, 16  #2
	mv	%x9, composed.22  #2
	sw	%x9, 0(%x7)  #2
	sw	%x6, 8(%x7)  #2
	sw	%x5, 4(%x7)  #2
	mv	%x5, %x7  #3
	ret
	nop
dbl.10:
	add	%x5, %x5, %x5  #4
	ret
	nop
inc.12:
	addi	%x5, %x5, 1  #5
	ret
	nop
dec.14:
	addi	%x5, %x5, -1  #6
	ret
	nop
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	mv	%x5, %x3  #4
	addi	%x3, %x3, 8  #4
	mv	%x6, dbl.10  #4
	sw	%x6, 0(%x5)  #4
	mv	%x6, %x3  #5
	addi	%x3, %x3, 8  #5
	mv	%x7, inc.12  #5
	sw	%x7, 0(%x6)  #5
	mv	%x7, %x3  #6
	addi	%x3, %x3, 8  #6
	mv	%x9, dec.14  #6
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
	jal	%x1, %x23  #8
	addi	%x2, %x2, -16  #8
	lw	%x1, 12(%x2)  #8
	sw	%x1, 12(%x2)  #8
	addi	%x2, %x2, 16  #8
	jal	%x1, min_caml_print_int  #8
	addi	%x2, %x2, -16  #8
	lw	%x1, 12(%x2) #8
	addi	%x2, %x2, 112
