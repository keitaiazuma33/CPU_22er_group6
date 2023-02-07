.section	".rodata"
.align	8
l.32:	! -7.890000
l.30:	! 4.560000
l.28:	! 1.230000
.section	".text"
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	mv	%f0, l.28  #0
	sw	%x1, 12(%x2)  #1
	addi	%x2, %x2, 16  #1
	jal	%x1, min_caml_truncate  #1
	addi	%x2, %x2, -16  #1
	lw	%x1, 12(%x2) #1
	mv	%f0, l.30  #0
	sw	%x5, 8(%x2)  #2
	sw	%x1, 12(%x2)  #2
	addi	%x2, %x2, 16  #2
	jal	%x1, min_caml_truncate  #2
	addi	%x2, %x2, -16  #2
	lw	%x1, 12(%x2) #2
	mv	%f0, l.32  #0
	sw	%x5, 12(%x2)  #3
	sw	%x1, 20(%x2)  #3
	addi	%x2, %x2, 24  #3
	jal	%x1, min_caml_truncate  #3
	addi	%x2, %x2, -24  #3
	lw	%x1, 20(%x2) #3
	bge	%x5, %x0, 12  #5
	j	bge_else.37
	nop
	lw	%x6, 8(%x2)  #5
	j	bge_cont.38
	nop
bge_else.37:
	lw	%x6, 12(%x2)  #5
bge_cont.38:
	lw	%x7, 8(%x2)  #6
	bge	%x0, %x7, 12  #6
	j	ble_else.39
	nop
	lw	%x9, 12(%x2)  #6
	j	ble_cont.40
	nop
ble_else.39:
	mv	%x9, %x5  #6
ble_cont.40:
	add	%x6, %x6, %x9  #5
	lw	%x9, 12(%x2)  #7
	bge	%x9, %x0, 12  #7
	j	bge_else.41
	nop
	j	bge_cont.42
	nop
bge_else.41:
	mv	%x5, %x7  #7
bge_cont.42:
	add	%x5, %x6, %x5  #5
	sw	%x1, 20(%x2)  #4
	addi	%x2, %x2, 24  #4
	jal	%x1, min_caml_print_int  #4
	addi	%x2, %x2, -24  #4
	lw	%x1, 20(%x2) #4
	addi	%x2, %x2, 112
