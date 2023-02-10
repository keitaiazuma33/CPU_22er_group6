.section	".rodata"
.align	8
.section	".text"
f.16:  #16
	lw	%x6, 4(%x22)  #2
	sub	%x5, %x5, %x6  #2
	ret
	nop
g.20:  #36
	addi	%x5, %x5, -2  #5
	ret
	nop
f.24:  #52
	addi	%x5, %x5, -1  #8
	ret
	nop
i.45:  #68
	lw	%x22, 4(%x22)  #12
	lw	0(%x23), %x22  #12
	jalr	%x0, %x23  #12
	nop
g.28:  #88
	mv	%x6, %x3  #12
	addi	%x3, %x3, 8  #12
	addi	%x24, %x0, 68  #12 i.45
	mv	%x7, %x24  #12
	sw	%x7, 0(%x6)  #12
	sw	%x5, 4(%x6)  #12
	mv	%x5, %x6  #13
	ret
	nop
i.32:  #128
	ret
	nop
f.35:  #140
	addi	%x5, %x0, -1  #0
	j	i.32  #18
	nop
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 4  #0
	mv	%x22, %x3  #2
	addi	%x3, %x3, 8  #2
	addi	%x24, %x0, 16  #2 f.16
	mv	%x6, %x24  #2
	sw	%x6, 0(%x22)  #2
	sw	%x5, 4(%x22)  #2
	addi	%x5, %x0, 8  #0
	sw	%x1, 12(%x2)  #3
	lw	%x23, 0(%x22)  #3
	addi	%x2, %x2, 16  #3
	jalr	%x1, %x23  #3
	addi	%x2, %x2, -16  #3
	lw	%x1, 12(%x2)  #3
	sw	%x1, 12(%x2)  #4
	addi	%x2, %x2, 16  #4
	jal	%x1, min_caml_print_var  #4
	addi	%x2, %x2, -16  #4
	lw	%x1, 12(%x2) #4
	addi	%x5, %x0, 6  #0
	sw	%x1, 12(%x2)  #6
	addi	%x2, %x2, 16  #6
	jal	%x1, g.20  #6
	addi	%x2, %x2, -16  #6
	lw	%x1, 12(%x2) #6
	sw	%x1, 12(%x2)  #7
	addi	%x2, %x2, 16  #7
	jal	%x1, min_caml_print_var2  #7
	addi	%x2, %x2, -16  #7
	lw	%x1, 12(%x2) #7
	mv	%x5, %x3  #8
	addi	%x3, %x3, 8  #8
	addi	%x24, %x0, 52  #8 f.24
	mv	%x6, %x24  #8
	sw	%x6, 0(%x5)  #8
	sw	%x1, 12(%x2)  #10
	addi	%x2, %x2, 16  #10
	jal	%x1, min_caml_print_var3  #10
	addi	%x2, %x2, -16  #10
	lw	%x1, 12(%x2) #10
	mv	%x5, %x3  #11
	addi	%x3, %x3, 8  #11
	addi	%x24, %x0, 88  #11 g.28
	mv	%x6, %x24  #11
	sw	%x6, 0(%x5)  #11
	sw	%x1, 12(%x2)  #15
	addi	%x2, %x2, 16  #15
	jal	%x1, min_caml_print_var4  #15
	addi	%x2, %x2, -16  #15
	lw	%x1, 12(%x2) #15
	mv	%x5, %x3  #16
	addi	%x3, %x3, 8  #16
	addi	%x24, %x0, 128  #16 i.32
	mv	%x6, %x24  #16
	sw	%x6, 0(%x5)  #16
	addi	%x6, %x0, 7  #0
	sw	%x5, 8(%x2)  #20
	mv	%x5, %x6
	sw	%x1, 12(%x2)  #20
	addi	%x2, %x2, 16  #20
	jal	%x1, f.35  #20
	addi	%x2, %x2, -16  #20
	lw	%x1, 12(%x2) #20
	mv	%x6, %x3  #20
	addi	%x3, %x3, 8  #20
	sw	%x5, 4(%x6)  #20
	lw	%x5, 8(%x2)  #20
	sw	%x5, 0(%x6)  #20
	mv	%x5, %x6  #20
	sw	%x1, 12(%x2)  #20
	addi	%x2, %x2, 16  #20
	jal	%x1, min_caml_print_var5  #20
	addi	%x2, %x2, -16  #20
	lw	%x1, 12(%x2) #20
	addi	%x2, %x2, 112
