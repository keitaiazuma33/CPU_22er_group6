.section	".rodata"
.align	8
.section	".text"
foo.12:  #0
	sw	%x11, 0(%x2)  #2
	sw	%x10, 4(%x2)  #2
	sw	%x9, 8(%x2)  #2
	sw	%x7, 12(%x2)  #2
	sw	%x6, 16(%x2)  #2
	sw	%x1, 20(%x2)  #2
	addi	%x2, %x2, 24  #2
	jal	%x1, min_caml_print_int  #2
	addi	%x2, %x2, -24  #2
	lw	%x1, 20(%x2) #2
	lw	%x5, 16(%x2)  #3
	sw	%x1, 20(%x2)  #3
	addi	%x2, %x2, 24  #3
	jal	%x1, min_caml_print_int  #3
	addi	%x2, %x2, -24  #3
	lw	%x1, 20(%x2) #3
	lw	%x5, 12(%x2)  #4
	sw	%x1, 20(%x2)  #4
	addi	%x2, %x2, 24  #4
	jal	%x1, min_caml_print_int  #4
	addi	%x2, %x2, -24  #4
	lw	%x1, 20(%x2) #4
	lw	%x5, 8(%x2)  #5
	sw	%x1, 20(%x2)  #5
	addi	%x2, %x2, 24  #5
	jal	%x1, min_caml_print_int  #5
	addi	%x2, %x2, -24  #5
	lw	%x1, 20(%x2) #5
	lw	%x5, 4(%x2)  #6
	sw	%x1, 20(%x2)  #6
	addi	%x2, %x2, 24  #6
	jal	%x1, min_caml_print_int  #6
	addi	%x2, %x2, -24  #6
	lw	%x1, 20(%x2) #6
	lw	%x5, 0(%x2)  #7
	j	min_caml_print_int  #7
	nop
bar.19:  #148
	mv	%x23, %x11
	mv	%x11, %x7
	mv	%x7, %x9
	mv	%x9, %x10
	mv	%x10, %x23
	mv	%x23, %x6
	mv	%x6, %x5
	mv	%x5, %x23
	j	foo.12  #9
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
	sw	%x1, 12(%x2)  #10
	addi	%x2, %x2, 16  #10
	jal	%x1, bar.19  #10
	addi	%x2, %x2, -16  #10
	lw	%x1, 12(%x2) #10
	addi	%x2, %x2, 112
