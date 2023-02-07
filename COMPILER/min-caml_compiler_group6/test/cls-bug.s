.section	".rodata"
.align	8
.section	".text"
f.6:
	addi	%x5, %x5, 123  #3
	ret
	nop
g.8:
	lw	%x5, 4(%x22)  #4
	ret
	nop
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	mv	%x5, %x3  #3
	addi	%x3, %x3, 8  #3
	mv	%x6, f.6  #3
	sw	%x6, 0(%x5)  #3
	mv	%x22, %x3  #4
	addi	%x3, %x3, 8  #4
	mv	%x6, g.8  #4
	sw	%x6, 0(%x22)  #4
	sw	%x5, 4(%x22)  #4
	addi	%x5, %x0, 456  #0
	sw	%x1, 12(%x2)  #5
	lw	%x23, 0(%x22)  #5
	addi	%x2, %x2, 16  #5
	jal	%x1, %x23  #5
	addi	%x2, %x2, -16  #5
	lw	%x1, 12(%x2)  #5
	mv	%x22, %x5  #5
	addi	%x5, %x0, 789  #0
	sw	%x1, 12(%x2)  #5
	lw	%x23, 0(%x22)  #5
	addi	%x2, %x2, 16  #5
	jal	%x1, %x23  #5
	addi	%x2, %x2, -16  #5
	lw	%x1, 12(%x2)  #5
	sw	%x1, 12(%x2)  #5
	addi	%x2, %x2, 16  #5
	jal	%x1, min_caml_print_int  #5
	addi	%x2, %x2, -16  #5
	lw	%x1, 12(%x2) #5
	addi	%x2, %x2, 112
