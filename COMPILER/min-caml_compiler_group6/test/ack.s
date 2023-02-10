.section	".rodata"
.align	8
.section	".text"
ack.15:  #0
	bge	%x0, %x5, 12  #2
	j	ble_else.34
	nop
	addi	%x5, %x6, 1  #2
	ret
	nop
ble_else.34:
	bge	%x0, %x6, 12  #3
	j	ble_else.35
	nop
	addi	%x5, %x5, -1  #3
	addi	%x6, %x0, 1  #0
	j	ack.15  #3
	nop
ble_else.35:
	addi	%x7, %x5, -1  #4
	addi	%x6, %x6, -1  #4
	sw	%x7, 0(%x2)  #4
	sw	%x1, 4(%x2)  #4
	addi	%x2, %x2, 8  #4
	jal	%x1, ack.15  #4
	addi	%x2, %x2, -8  #4
	lw	%x1, 4(%x2) #4
	mv	%x6, %x5  #4
	lw	%x5, 0(%x2)  #4
	j	ack.15  #4
	nop
.global	min_caml_start
min_caml_start:
	addi	%x2, %x2, -112
	addi	%x5, %x0, 3  #0
	addi	%x6, %x0, 10  #0
	sw	%x1, 12(%x2)  #5
	addi	%x2, %x2, 16  #5
	jal	%x1, ack.15  #5
	addi	%x2, %x2, -16  #5
	lw	%x1, 12(%x2) #5
	sw	%x1, 12(%x2)  #5
	addi	%x2, %x2, 16  #5
	jal	%x1, min_caml_print_int  #5
	addi	%x2, %x2, -16  #5
	lw	%x1, 12(%x2) #5
	addi	%x2, %x2, 112
