.section	".rodata"
.align	8
.section	".text"
f.12:
	addi	%x5, %x0, 123  #0
	ret
	nop
g.14:
	addi	%x5, %x0, 456  #0
	ret
	nop
h.16:
	addi	%x5, %x0, 789  #0
	ret
	nop
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	sw	%x1, 12(%x2)  #5
	addi	%x2, %x2, 16  #5
	jal	%x1, f.12  #5
	addi	%x2, %x2, -16  #5
	lw	%x1, 12(%x2) #5
	bge	%x0, %x5, 12  #6
	j	ble_else.30
	nop
	sw	%x5, 8(%x2)  #6
	sw	%x1, 12(%x2)  #6
	addi	%x2, %x2, 16  #6
	jal	%x1, g.14  #6
	addi	%x2, %x2, -16  #6
	lw	%x1, 12(%x2) #6
	lw	%x6, 8(%x2)  #6
	add	%x5, %x5, %x6  #6
	j	ble_cont.31
	nop
ble_else.30:
	sw	%x5, 8(%x2)  #6
	sw	%x1, 12(%x2)  #6
	addi	%x2, %x2, 16  #6
	jal	%x1, h.16  #6
	addi	%x2, %x2, -16  #6
	lw	%x1, 12(%x2) #6
	lw	%x6, 8(%x2)  #6
	sub	%x5, %x5, %x6  #6
ble_cont.31:
	add	%x5, %x5, %x6  #6
	sw	%x1, 12(%x2)  #6
	addi	%x2, %x2, 16  #6
	jal	%x1, min_caml_print_int  #6
	addi	%x2, %x2, -16  #6
	lw	%x1, 12(%x2) #6
	addi	%x2, %x2, 112
