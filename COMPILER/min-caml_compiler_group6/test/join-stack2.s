.section	".rodata"
.align	8
.section	".text"
f.9:
	addi	%x5, %x0, 123  #0
	ret
	nop
g.11:
	addi	%x5, %x0, 456  #0
	ret
	nop
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	sw	%x1, 12(%x2)  #4
	addi	%x2, %x2, 16  #4
	jal	%x1, f.9  #4
	addi	%x2, %x2, -16  #4
	lw	%x1, 12(%x2) #4
	sw	%x5, 8(%x2)  #5
	bge	%x0, %x5, 12  #5
	j	ble_else.23
	nop
	sw	%x1, 12(%x2)  #5
	addi	%x2, %x2, 16  #5
	jal	%x1, g.11  #5
	addi	%x2, %x2, -16  #5
	lw	%x1, 12(%x2) #5
	lw	%x6, 8(%x2)  #5
	add	%x5, %x5, %x6  #5
	j	ble_cont.24
	nop
ble_else.23:
ble_cont.24:
	lw	%x6, 8(%x2)  #5
	add	%x5, %x5, %x6  #5
	sw	%x1, 12(%x2)  #5
	addi	%x2, %x2, 16  #5
	jal	%x1, min_caml_print_int  #5
	addi	%x2, %x2, -16  #5
	lw	%x1, 12(%x2) #5
	addi	%x2, %x2, 112
