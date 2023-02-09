.section	".rodata"
.align	8
.section	".text"
f.10:
	addi	%x5, %x0, 123  #0
	ret
	nop
g.12:
	addi	%x5, %x0, 456  #0
	ret
	nop
h.14:
	addi	%x5, %x0, 789  #0
	ret
	nop
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	mv	%x5, %g0
	sw	%x1, 12(%x2)  #5
	addi	%x2, %x2, 16  #5
	jal	%x1, f.10  #5
	addi	%x2, %x2, -16  #5
	lw	%x1, 12(%x2) #5
	sw	%x5, 8(%x2)  #6
	bge	%x0, %x5, 12  #6
	j	ble_else.27
	nop
	mv	%x5, %g0
	sw	%x1, 12(%x2)  #6
	addi	%x2, %x2, 16  #6
	jal	%x1, g.12  #6
	addi	%x2, %x2, -16  #6
	lw	%x1, 12(%x2) #6
	j	ble_cont.28
	nop
ble_else.27:
	mv	%x5, %g0
	sw	%x1, 12(%x2)  #6
	addi	%x2, %x2, 16  #6
	jal	%x1, h.14  #6
	addi	%x2, %x2, -16  #6
	lw	%x1, 12(%x2) #6
ble_cont.28:
	lw	%x6, 8(%x2)  #6
	add	%x5, %x5, %x6  #6
	sw	%x1, 12(%x2)  #6
	addi	%x2, %x2, 16  #6
	jal	%x1, min_caml_print_int  #6
	addi	%x2, %x2, -16  #6
	lw	%x1, 12(%x2) #6
	addi	%x2, %x2, 112
