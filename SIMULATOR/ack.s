ack.15:
	bge	0, %x5, 12  #2
	j	ble_else.34
	nop
	addi	%x5, %x6, 1  #2
	ret
	nop
ble_else.34:
	bge	0, %x6, 12  #3
	j	ble_else.35
	nop
	addi	%x5, %x5, -1  #3
	addi	%x6, %x0, 1  #0
	j	ack.15  #j #3
	nop
ble_else.35:
	addi	%x7, %x5, -1  #4
	addi	%x6, %x6, -1  #4
	sw	%x7, 0(%x2)  #4
	sw	%x1, 4(%x2)  #4
	j	ack.15  #j #4
	addi	%x2, %x2, 8	! delay slot  4
	addi	%x2, %x2, -8  #4
	lw	%x1, 4(%x2) #4
	mv	%x6, %x5  #4
	lw	%x5, 0(%x2)  #4
	j	ack.15  #j #4
	nop
min_caml_start:
	addi sp, sp, -112 #save	%sp, -112, %sp
	addi	%x5, %x0, 3  #0
	addi	%x6, %x0, 10  #0
	sw	%x1, 4(%x2)  #5
	jal	ack.15  #j #5
	addi	%x2, %x2, 8	! delay slot  5
*	addi	%x2, %x2, -8  #5
*	lw	%x1, 4(%x2) #5
*	sw	%x1, 4(%x2)  #5　# j	min_caml_print_int  #5
	addi	%x2, %x2, 8	! delay slot  5
	addi	%x2, %x2, -8  #5
	lw	%x1, 4(%x2) #5 #ret
	addi sp, sp, 112 #restore
