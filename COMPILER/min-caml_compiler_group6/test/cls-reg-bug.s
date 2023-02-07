.section	".rodata"
.align	8
.section	".text"
g.52:
	lw	%x6, 40(%x22)  #0
	lw	%x7, 36(%x22)  #0
	lw	%x9, 32(%x22)  #0
	lw	%x10, 28(%x22)  #0
	lw	%x11, 24(%x22)  #0
	lw	%x12, 20(%x22)  #0
	lw	%x13, 16(%x22)  #0
	lw	%x14, 12(%x22)  #0
	lw	%x15, 8(%x22)  #0
	lw	%x16, 4(%x22)  #0
	add	%x14, %x16, %x14  #5
	add	%x13, %x14, %x13  #5
	add	%x12, %x13, %x12  #5
	add	%x11, %x12, %x11  #5
	add	%x10, %x11, %x10  #5
	add	%x9, %x10, %x9  #5
	add	%x7, %x9, %x7  #5
	add	%x6, %x7, %x6  #5
	add	%x6, %x6, %x15  #5
	bge	%x0, %x5, 12  #6
	j	ble_else.90
	nop
	sub	%x5, %x0, %x5  #6
	lw	0(%x23), %x22  #6
	j	%x23  #6
	nop
ble_else.90:
	mv	%x5, %x6  #6
	ret
	nop
h.26:
	lw	%x6, 36(%x5)  #3
	lw	%x7, 32(%x5)  #3
	lw	%x9, 28(%x5)  #3
	lw	%x10, 24(%x5)  #3
	lw	%x11, 20(%x5)  #3
	lw	%x12, 16(%x5)  #3
	lw	%x13, 12(%x5)  #3
	lw	%x14, 8(%x5)  #3
	lw	%x15, 4(%x5)  #3
	lw	%x5, 0(%x5)  #3
	mv	%x22, %x3  #4
	addi	%x3, %x3, 48  #4
	mv	%x16, g.52  #4
	sw	%x16, 0(%x22)  #4
	sw	%x7, 40(%x22)  #4
	sw	%x9, 36(%x22)  #4
	sw	%x10, 32(%x22)  #4
	sw	%x11, 28(%x22)  #4
	sw	%x12, 24(%x22)  #4
	sw	%x13, 20(%x22)  #4
	sw	%x14, 16(%x22)  #4
	sw	%x15, 12(%x22)  #4
	sw	%x6, 8(%x22)  #4
	sw	%x5, 4(%x22)  #4
	addi	%x5, %x0, 1  #0
	lw	0(%x23), %x22  #7
	j	%x23  #7
	nop
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 1  #0
	addi	%x6, %x0, 2  #0
	addi	%x7, %x0, 3  #0
	addi	%x9, %x0, 4  #0
	addi	%x10, %x0, 5  #0
	addi	%x11, %x0, 6  #0
	addi	%x12, %x0, 7  #0
	addi	%x13, %x0, 8  #0
	addi	%x14, %x0, 9  #0
	addi	%x15, %x0, 10  #0
	mv	%x16, %x3  #8
	addi	%x3, %x3, 40  #8
	sw	%x15, 36(%x16)  #8
	sw	%x14, 32(%x16)  #8
	sw	%x13, 28(%x16)  #8
	sw	%x12, 24(%x16)  #8
	sw	%x11, 20(%x16)  #8
	sw	%x10, 16(%x16)  #8
	sw	%x9, 12(%x16)  #8
	sw	%x7, 8(%x16)  #8
	sw	%x6, 4(%x16)  #8
	sw	%x5, 0(%x16)  #8
	mv	%x5, %x16  #8
	sw	%x1, 12(%x2)  #8
	addi	%x2, %x2, 16  #8
	jal	%x1, h.26  #8
	addi	%x2, %x2, -16  #8
	lw	%x1, 12(%x2) #8
	sw	%x1, 12(%x2)  #8
	addi	%x2, %x2, 16  #8
	jal	%x1, min_caml_print_int  #8
	addi	%x2, %x2, -16  #8
	lw	%x1, 12(%x2) #8
	sw	%x1, 12(%x2)  #9
	addi	%x2, %x2, 16  #9
	jal	%x1, min_caml_print_newline  #9
	addi	%x2, %x2, -16  #9
	lw	%x1, 12(%x2) #9
	addi	%x2, %x2, 112
