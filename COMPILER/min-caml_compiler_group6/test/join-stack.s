.section	".rodata"
.align	8
.section	".text"
f.14:
	addi	%x5, %x0, 123  #0
	ret
	nop
g.16:
	addi	%x5, %x0, 456  #0
	ret
	nop
h.18:
	addi	%x5, %x0, 789  #0
	ret
	nop
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	mv	%x5, %g0
	sw	%x1, 12(%x2)  #5
	addi	%x2, %x2, 16  #5
	jal	%x1, f.14  #5
	addi	%x2, %x2, -16  #5
	lw	%x1, 12(%x2) #5
	sw	%x5, 8(%x2)  #6
	mv	%x5, %g0
	sw	%x1, 12(%x2)  #6
	addi	%x2, %x2, 16  #6
	jal	%x1, g.16  #6
	addi	%x2, %x2, -16  #6
	lw	%x1, 12(%x2) #6
	sw	%x5, 12(%x2)  #7
	mv	%x5, %g0
	sw	%x1, 20(%x2)  #7
	addi	%x2, %x2, 24  #7
	jal	%x1, h.18  #7
	addi	%x2, %x2, -24  #7
	lw	%x1, 20(%x2) #7
	beq	%x5, %x0, 12  #7
	j	be_else.35
	nop
	lw	%x5, 8(%x2)  #7
	addi	%x5, %x5, 1  #7
	j	be_cont.36
	nop
be_else.35:
	lw	%x5, 12(%x2)  #7
	addi	%x5, %x5, 2  #7
be_cont.36:
	lw	%x6, 8(%x2)  #7
	add	%x5, %x5, %x6  #7
	lw	%x6, 12(%x2)  #7
	add	%x5, %x5, %x6  #7
	sw	%x1, 20(%x2)  #7
	addi	%x2, %x2, 24  #7
	jal	%x1, min_caml_print_int  #7
	addi	%x2, %x2, -24  #7
	lw	%x1, 20(%x2) #7
	addi	%x2, %x2, 112
