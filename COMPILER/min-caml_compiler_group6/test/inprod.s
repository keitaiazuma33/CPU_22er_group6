.section	".rodata"
.align	8
l.79:	! 6.000000
l.77:	! 5.000000
l.75:	! 4.000000
l.69:	! 3.000000
l.67:	! 2.000000
l.65:	! 1.000000
l.63:	! 1000000.000000
.section	".text"
getx.23:
	flw	%f0, 0(%x5)  #1
	ret
	nop
gety.25:
	flw	%f0, 8(%x5)  #2
	ret
	nop
getz.27:
	flw	%f0, 16(%x5)  #3
	ret
	nop
inprod.29:
	sw	%x5, 0(%x2)  #5
	sw	%x6, 4(%x2)  #5
	sw	%x1, 12(%x2)  #5
	addi	%x2, %x2, 16  #5
	jal	%x1, getx.23  #5
	addi	%x2, %x2, -16  #5
	lw	%x1, 12(%x2) #5
	lw	%x5, 4(%x2)  #5
	fsw	%f0, 8(%x2)  #5
	sw	%x1, 20(%x2)  #5
	addi	%x2, %x2, 24  #5
	jal	%x1, getx.23  #5
	addi	%x2, %x2, -24  #5
	lw	%x1, 20(%x2) #5
	flw	%f2, 8(%x2)  #5
	fmul	%f0, %f2, %f0  #5
	lw	%x5, 0(%x2)  #5
	fsw	%f0, 16(%x2)  #5
	sw	%x1, 28(%x2)  #5
	addi	%x2, %x2, 32  #5
	jal	%x1, gety.25  #5
	addi	%x2, %x2, -32  #5
	lw	%x1, 28(%x2) #5
	lw	%x5, 4(%x2)  #5
	fsw	%f0, 24(%x2)  #5
	sw	%x1, 36(%x2)  #5
	addi	%x2, %x2, 40  #5
	jal	%x1, gety.25  #5
	addi	%x2, %x2, -40  #5
	lw	%x1, 36(%x2) #5
	flw	%f2, 24(%x2)  #5
	fmul	%f0, %f2, %f0  #5
	flw	%f2, 16(%x2)  #5
	fadd	%f0, %f2, %f0  #5
	lw	%x5, 0(%x2)  #5
	fsw	%f0, 32(%x2)  #5
	sw	%x1, 44(%x2)  #5
	addi	%x2, %x2, 48  #5
	jal	%x1, getz.27  #5
	addi	%x2, %x2, -48  #5
	lw	%x1, 44(%x2) #5
	lw	%x5, 4(%x2)  #5
	fsw	%f0, 40(%x2)  #5
	sw	%x1, 52(%x2)  #5
	addi	%x2, %x2, 56  #5
	jal	%x1, getz.27  #5
	addi	%x2, %x2, -56  #5
	lw	%x1, 52(%x2) #5
	flw	%f2, 40(%x2)  #5
	fmul	%f0, %f2, %f0  #5
	flw	%f2, 32(%x2)  #5
	fadd	%f0, %f2, %f0  #5
	ret
	nop
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	mv	%f0, l.63  #0
	mv	%f2, l.65  #0
	mv	%f4, l.67  #0
	mv	%f6, l.69  #0
	mv	%x5, %x3  #6
	addi	%x3, %x3, 24  #6
	fsw	%f6, 16(%x5) #6
	fsw	%f4, 8(%x5) #6
	fsw	%f2, 0(%x5) #6
	mv	%f2, l.75  #0
	mv	%f4, l.77  #0
	mv	%f6, l.79  #0
	mv	%x6, %x3  #6
	addi	%x3, %x3, 24  #6
	fsw	%f6, 16(%x6) #6
	fsw	%f4, 8(%x6) #6
	fsw	%f2, 0(%x6) #6
	fsw	%f0, 8(%x2)  #6
	sw	%x1, 20(%x2)  #6
	addi	%x2, %x2, 24  #6
	jal	%x1, inprod.29  #6
	addi	%x2, %x2, -24  #6
	lw	%x1, 20(%x2) #6
	flw	%f2, 8(%x2)  #6
	fmul	%f0, %f2, %f0  #6
	sw	%x1, 20(%x2)  #6
	addi	%x2, %x2, 24  #6
	jal	%x1, min_caml_truncate  #6
	addi	%x2, %x2, -24  #6
	lw	%x1, 20(%x2) #6
	sw	%x1, 20(%x2)  #6
	addi	%x2, %x2, 24  #6
	jal	%x1, min_caml_print_int  #6
	addi	%x2, %x2, -24  #6
	lw	%x1, 20(%x2) #6
	addi	%x2, %x2, 112
